# Readings: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`

One entry per routine, filed here from the reading batches by binary.

- `CreateContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8ae040 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8ae040-0xd8ae954 (2324 bytes).
  It occupies 2324 bytes.
  The `sw` at 0xd8ae0c4 stores 4 bytes to ret(calloc) +0x108.
  The `lw` at 0xd8ae0c8 loads 4 bytes from ret(__glXInitialize) +0x4.
  The `sw` at 0xd8ae0d0 stores 4 bytes to ret(calloc) +0x110.
  The `lw` at 0xd8ae0d4 loads 4 bytes from ret(__glXInitialize) +0x8.
  The `sw` at 0xd8ae0d8 stores 4 bytes to ret(calloc) +0x114.
  The `lw` at 0xd8ae0dc loads 4 bytes from ret(__glXInitialize) +0xc.
  The `sw` at 0xd8ae0e0 stores 4 bytes to ret(calloc) +0x118.
  The `lw` at 0xd8ae0e4 loads 4 bytes from ret(__glXInitialize) +0x10.
  The `sw` at 0xd8ae0e8 stores 4 bytes to ret(calloc) +0x11c.
  The `lw` at 0xd8ae0ec loads 4 bytes from ret(__glXInitialize) +0x14.
  The `sw` at 0xd8ae0f0 stores 4 bytes to ret(calloc) +0x120.
  The `sw` at 0xd8ae108 stores 4 bytes to ret(calloc) +0x38.
  The `lw` at 0xd8ae10c loads 4 bytes from a2 (arg2 at entry) +0x48.
  The `lw` at 0xd8ae110 loads 4 bytes from a2 (arg2 at entry) +0x24.
  The `sw` at 0xd8ae114 stores 4 bytes to ret(calloc) +0x34.
  2 such `sw` accesses store 4 bytes to ret(calloc) +0x30, including `sw` at 0xd8ae118, `sw` at 0xd8ae318.
  The `lw` at 0xd8ae11c loads 4 bytes from a2 (arg2 at entry) +0x20.
  2 such `sw` accesses store 4 bytes to ret(calloc) +0x2c, including `sw` at 0xd8ae120, `sw` at 0xd8ae140.
  The `lw` at 0xd8ae138 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xd8ae13c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0xd8ae154 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `sw` at 0xd8ae160 stores 4 bytes to ret(calloc) +0x20.
  2 such `lw` accesses load 4 bytes from ret(__glXInitialize) +0x20, including `lw` at 0xd8ae184, `lw` at 0xd8ae198.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8ae190, `lw` at 0xd8ae258, `lw` at 0xd8ae38c.
  The `sw` at 0xd8ae194 stores 4 bytes to ret(calloc) +0x24.
  The `lbu` at 0xd8ae1a0 loads 1 byte from ?.
  The `sb` at 0xd8ae1a4 stores 1 byte to ret(calloc) +0x1d.
  2 such `lbu` accesses load 1 byte from ret(getenv) +0x0, including `lbu` at 0xd8ae1c8, `lbu` at 0xd8ae3f8.
  The `lw` at 0xd8ae2b8 loads 4 bytes from a2 (arg2 at entry) +0x2c.
  5 such `lw` accesses load 4 bytes from ret(calloc) +0x20, including `lw` at 0xd8ae2f4, `lw` at 0xd8ae324, `lw` at 0xd8ae69c.
  3 such `lw` accesses load 4 bytes from ret(calloc) +0x2c, including `lw` at 0xd8ae300, `lw` at 0xd8ae32c, `lw` at 0xd8ae8ac.
  The `lw` at 0xd8ae310 loads 4 bytes from ret(__glXFindFBConfigFromVid) +0x48.
  The `lw` at 0xd8ae33c loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0xd8ae358 loads 4 bytes from table(0xd8dd4f0) +0x0.
  The `sw` at 0xd8ae3ac stores 4 bytes to ret(calloc) +0xc8.
  The `sw` at 0xd8ae3d0 stores 4 bytes to ret(calloc) +0xc4.
  The `sw` at 0xd8ae488 stores 4 bytes to ret(calloc) +0x0.
  The `lw` at 0xd8ae4a8 loads 4 bytes from ret(calloc) +0x0.
  The `sw` at 0xd8ae4b0 stores 4 bytes to ret(calloc) +0x10.
  The `sw` at 0xd8ae4b8 stores 4 bytes to ret(calloc) +0xc.
  The `sw` at 0xd8ae4bc stores 4 bytes to ret(calloc) +0x4.
  The `lw` at 0xd8ae4c0 loads 4 bytes from sym(__glx_debug) +0x0.
  2 such `sw` accesses store 4 bytes to ret(calloc) +0x8, including `sw` at 0xd8ae4d8, `sw` at 0xd8ae4e0.
  The `sw` at 0xd8ae508 stores 4 bytes to ret(calloc) +0x10c.
  The `sw` at 0xd8ae50c stores 4 bytes to ret(calloc) +0x40.
  The `sw` at 0xd8ae510 stores 4 bytes to ret(calloc) +0x6c.
  The `sw` at 0xd8ae514 stores 4 bytes to ret(calloc) +0x98.
  The `sw` at 0xd8ae518 stores 4 bytes to ret(calloc) +0x70.
  The `sw` at 0xd8ae51c stores 4 bytes to ret(calloc) +0x74.
  The `sw` at 0xd8ae520 stores 4 bytes to ret(calloc) +0x9c.
  The `sw` at 0xd8ae524 stores 4 bytes to ret(calloc) +0xa0.
  2 such `sw` accesses store 4 bytes to ret(calloc) +0x18, including `sw` at 0xd8ae530, `sw` at 0xd8ae53c.
  The `sw` at 0xd8ae55c stores 4 bytes to ret(calloc) +0xb8.
  The `sw` at 0xd8ae578 stores 4 bytes to ret(calloc) +0xbc.
  The `sw` at 0xd8ae57c stores 4 bytes to ret(calloc) +0xc0.
  The `sb` at 0xd8ae588 stores 1 byte to ret(calloc) +0xa4.
  The `sw` at 0xd8ae58c stores 4 bytes to ret(calloc) +0xa8.
  The `sw` at 0xd8ae590 stores 4 bytes to ret(calloc) +0xac.
  2 such `sw` accesses store 4 bytes to ret(calloc) +0x14, including `sw` at 0xd8ae5a4, `sw` at 0xd8ae5bc.
  The `lw` at 0xd8ae5a8 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8ae5dc, `lw` at 0xd8ae5e0, `lw` at 0xd8ae6bc.
  12 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8ae5e8, `lw` at 0xd8ae600, `lw` at 0xd8ae62c.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x0, including `lw` at 0xd8ae5ec, `lw` at 0xd8ae708, `lw` at 0xd8ae824.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xd8ae604, `lw` at 0xd8ae720, `lw` at 0xd8ae83c.
  6 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8ae614, `sw` at 0xd8ae630, `sw` at 0xd8ae730.
  3 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xd8ae63c, `sh` at 0xd8ae758, `sh` at 0xd8ae874.
  6 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8ae640, `sb` at 0xd8ae670, `sb` at 0xd8ae75c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xd8ae644, `lw` at 0xd8ae760, `lw` at 0xd8ae87c.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xd8ae658, `sw` at 0xd8ae770, `sw` at 0xd8ae88c.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xd8ae65c, `sw` at 0xd8ae774, `sw` at 0xd8ae890.
  3 such `lw` accesses load 4 bytes from ret(calloc) +0x110, including `lw` at 0xd8ae660, `lw` at 0xd8ae778, `lw` at 0xd8ae894.
  3 such `sb` accesses store 1 byte to [a0+108] +0x1, including `sb` at 0xd8ae668, `sb` at 0xd8ae77c, `sb` at 0xd8ae898.
  3 such `sw` accesses store 4 bytes to [a0+108] +0x4, including `sw` at 0xd8ae66c, `sw` at 0xd8ae788, `sw` at 0xd8ae8a4.
  3 such `lw` accesses load 4 bytes from ret(calloc) +0x14, including `lw` at 0xd8ae674, `lw` at 0xd8ae784, `lw` at 0xd8ae8a0.
  3 such `sw` accesses store 4 bytes to [a0+108] +0xc, including `sw` at 0xd8ae678, `sw` at 0xd8ae7b0, `sw` at 0xd8ae8cc.
  2 such `lw` accesses load 4 bytes from ret(calloc) +0x30, including `lw` at 0xd8ae680, `lw` at 0xd8ae790.
  3 such `sw` accesses store 4 bytes to [a0+108] +0x10, including `sw` at 0xd8ae698, `sw` at 0xd8ae7b8, `sw` at 0xd8ae8d4.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x14, including `sw` at 0xd8ae6a0, `sw` at 0xd8ae7c0.
  2 such `lw` accesses load 4 bytes from ret(calloc) +0x34, including `lw` at 0xd8ae6a4, `lw` at 0xd8ae7b4.
  The `sw` at 0xd8ae6a8 stores 4 bytes to [a0+108] +0x18.
  3 such `lw` accesses load 4 bytes from ret(calloc) +0x18, including `lw` at 0xd8ae6ac, `lw` at 0xd8ae7bc, `lw` at 0xd8ae8d0.
  The `sw` at 0xd8ae6b0 stores 4 bytes to [a0+108] +0x1c.
  The `sb` at 0xd8ae6b8 stores 1 byte to [a0+108] +0x20.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8ae6c4, `lw` at 0xd8ae6dc, `lw` at 0xd8ae7d4.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8ae6c8, `lw` at 0xd8ae7d8, `lw` at 0xd8ae8ec.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x8, including `sw` at 0xd8ae7a8, `sw` at 0xd8ae8c4.
  The `sb` at 0xd8ae7c8 stores 1 byte to [a0+108] +0x18.
  The `sb` at 0xd8ae8dc stores 1 byte to [a0+108] +0x14.
  2 such `sb` accesses store 1 byte to ret(calloc) +0x1c, including `sb` at 0xd8ae920, `sb` at 0xd8ae928.
  The `lw` at 0xd8ae934 loads 4 bytes from sym(__glx_contextList) +0x0.
  The `sw` at 0xd8ae938 stores 4 bytes to ret(calloc) +0x124.
  The `sw` at 0xd8ae93c stores 4 bytes to sym(__glx_contextList) +0x0.
  The `jalr` at 0xd8ae070 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8ae0a0 calls calloc with a0=0x1, a1=0x128, a2=ret(__glXInitialize), a3=a3 at entry (arg3).
  The `jalr` at 0xd8ae16c calls free with a0=ret(calloc), a1=a2 at entry (arg2), a2=ret(__glXInitialize), a3=a3 at entry (arg3).
  The `jalr` at 0xd8ae1b4 calls getenv with a0=0xd8dd460, a1=a2 at entry (arg2), a2=ret(__glXInitialize), a3=a3 at entry (arg3).
  The `jalr` at 0xd8ae228 calls isLocal [0xd8b1088] with a0=ret(calloc), a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd8ae2d0 calls free with a0=ret(calloc), a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd8ae2fc calls __glXFindFBConfigFromVid [0xd8d320c] with a0=a0 at entry (arg0), a1=[ret(calloc)+32], a2=[ret(calloc)+44], a3=a3 at entry (arg3).
  The `jalr` at 0xd8ae328 calls __glXFindVisualConfig with a0=a0 at entry (arg0), a1=[ret(calloc)+32], a2=[ret(calloc)+44], a3=?.
  The `jalr` at 0xd8ae39c calls __glXCreateDirectContext with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae3b8 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae3e8 calls getenv with a0=0xd8dd470, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae420 calls fprintf with a0=sym(__iob)+32, a1=0xd8dd480, a2=?, a3=?.
  The `jalr` at 0xd8ae434 calls exit with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae45c calls XMaxRequestSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae474 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae494 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae54c calls __glXInitVertexArrayState with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae56c calls calloc with a0=0x10, a1=0x4, a2=?, a3=?.
  The `jalr` at 0xd8ae5b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae5f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8ae620 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae688 calls __glXOverrideVisualsIdToXid with a0=[ret(calloc)+48], a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd8ae6d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8ae6ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae710 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8ae73c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae798 calls __glXOverrideVisualsIdToXid with a0=[ret(calloc)+48], a1=0x18, a2=?, a3=?.
  The `jalr` at 0xd8ae7e0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8ae7fc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae82c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8ae858 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae8b4 calls __glXOverrideVisualsIdToXid with a0=[ret(calloc)+44], a1=0x3, a2=?, a3=?.
  The `jalr` at 0xd8ae8f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8ae910 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8ae080 targets 0xd8ae090, is taken when v0(=ret(__glXInitialize)) != 0, and falls through when v0(=ret(__glXInitialize)) == 0.
  The `beq` branch at 0xd8ae088 targets 0xd8ae940 and is always taken.
  The `bne` branch at 0xd8ae0b4 targets 0xd8ae0c4, is taken when v0(=ret(calloc)) != 0, and falls through when v0(=ret(calloc)) == 0.
  The `beq` branch at 0xd8ae0bc targets 0xd8ae940 and is always taken.
  The `bne` branch at 0xd8ae0fc targets 0xd8ae1a8, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0xd8ae104 targets 0xd8ae12c, is taken when a1(=a2) == 0, and falls through when a1(=a2) != 0.
  The `beq` branch at 0xd8ae124 targets 0xd8ae148 and is always taken.
  The `beql` branch at 0xd8ae130 targets 0xd8ae14c, is taken when t5(=a1) == 0, and falls through when t5(=a1) != 0; its branch-likely delay slot `lw a0,88(sp)` at 0xd8ae134 runs only when taken and is annulled on fall-through.
  The `bltz` branch at 0xd8ae14c targets 0xd8ae164, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bnel` branch at 0xd8ae15c targets 0xd8ae184, is taken when a0(?) < t7(=[a0+136]) (signed), and falls through when a0(?) >= t7(=[a0+136]) (signed); its branch-likely delay slot `sw a0,32(v0)` at 0xd8ae160 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae178 targets 0xd8ae940 and is always taken.
  The `beq` branch at 0xd8ae1c0 targets 0xd8ae208, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `bnel` branch at 0xd8ae1d0 targets 0xd8ae1e8, is taken when v1(=[ret(getenv)]:1) != at(=0x79), and falls through when v1(=[ret(getenv)]:1) == at(=0x79); its branch-likely delay slot `addiu at,zero,110` at 0xd8ae1d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae1dc targets 0xd8ae208 and is always taken.
  The `bnel` branch at 0xd8ae1e8 targets 0xd8ae1fc, is taken when v1(=[ret(getenv)]:1) != at(=0x6e), and falls through when v1(=[ret(getenv)]:1) == at(=0x6e); its branch-likely delay slot `addiu at,zero,33` at 0xd8ae1ec runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae1f0 targets 0xd8ae208 and is always taken.
  The `bne` branch at 0xd8ae1fc targets 0xd8ae208, is taken when v1(=[ret(getenv)]:1) != at(=0x21), and falls through when v1(=[ret(getenv)]:1) == at(=0x21).
  The `bne` branch at 0xd8ae210 targets 0xd8ae244, is taken when v1(?) != at(=0x1), and falls through when v1(?) == at(=0x1).
  The `bne` branch at 0xd8ae238 targets 0xd8ae244, is taken when v0(=ret(isLocal)) != 0, and falls through when v0(=ret(isLocal)) == 0.
  The `beq` branch at 0xd8ae244 targets 0xd8ae268, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8ae250 targets 0xd8ae268, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `bne` branch at 0xd8ae25c targets 0xd8ae268, is taken when t5(?) != 0, and falls through when t5(?) == 0.
  The `beql` branch at 0xd8ae268 targets 0xd8ae278, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `sltu t7,zero,v1` at 0xd8ae26c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae278 targets 0xd8ae3cc, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xd8ae28c targets 0xd8ae2e4, is taken when t9(=a2) == 0, and falls through when t9(=a2) != 0.
  The `beq` branch at 0xd8ae294 targets 0xd8ae2b0, is taken when a3 == at(=0x8014), and falls through when a3 != at(=0x8014).
  The `beq` branch at 0xd8ae2a0 targets 0xd8ae2b8, is taken when a3 == at(=0x8015), and falls through when a3 != at(=0x8015).
  The `beq` branch at 0xd8ae2a8 targets 0xd8ae2b8 and is always taken.
  The `beq` branch at 0xd8ae2b0 targets 0xd8ae2b8 and is always taken.
  The `bnel` branch at 0xd8ae2c0 targets 0xd8ae378, is taken when (t1(=[a2+44]) & v0(=one of 0x0, 0x1, 0x2)) != 0, and falls through when (t1(=[a2+44]) & v0(=one of 0x0, 0x1, 0x2)) == 0; its branch-likely delay slot `lw t7,120(sp)` at 0xd8ae2c4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae2dc targets 0xd8ae940 and is always taken.
  The `beql` branch at 0xd8ae2e4 targets 0xd8ae378, is taken when t3(=a1) == 0, and falls through when t3(=a1) != 0; its branch-likely delay slot `lw t7,120(sp)` at 0xd8ae2e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae308 targets 0xd8ae31c, is taken when v0(=ret(__glXFindFBConfigFromVid)) == 0, and falls through when v0(=ret(__glXFindFBConfigFromVid)) != 0.
  The `beq` branch at 0xd8ae314 targets 0xd8ae338 and is always taken.
  The `beql` branch at 0xd8ae344 targets 0xd8ae374, is taken when t6(=[a1+16]) >= 0x6 (unsigned), and falls through when t6(=[a1+16]) < 0x6 (unsigned); its branch-likely delay slot `ori a3,zero,0x8014` at 0xd8ae348 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae368 targets 0xd8ae374 and is always taken.
  The `beq` branch at 0xd8ae380 targets 0xd8ae390, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xd8ae388 targets 0xd8ae390 and is always taken.
  The `bne` branch at 0xd8ae3a8 targets 0xd8ae3cc, is taken when v0(=ret(__glXCreateDirectContext)) != 0, and falls through when v0(=ret(__glXCreateDirectContext)) == 0.
  The `beq` branch at 0xd8ae3c4 targets 0xd8ae940 and is always taken.
  The `bnel` branch at 0xd8ae3d8 targets 0xd8ae444, is taken when t9(?) != 0, and falls through when t9(?) == 0; its branch-likely delay slot `lw t0,48(sp)` at 0xd8ae3dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae3f0 targets 0xd8ae440, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0xd8ae400 targets 0xd8ae410, is taken when v1(=[ret(getenv)]:1) == at(=0x6e), and falls through when v1(=[ret(getenv)]:1) != at(=0x6e).
  The `bnel` branch at 0xd8ae408 targets 0xd8ae444, is taken when v1(=[ret(getenv)]:1) != at(=0x4e), and falls through when v1(=[ret(getenv)]:1) == at(=0x4e); its branch-likely delay slot `lw t0,48(sp)` at 0xd8ae40c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae444 targets 0xd8ae454, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xd8ae44c targets 0xd8ae46c and is always taken.
  The `bne` branch at 0xd8ae484 targets 0xd8ae4a8, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd8ae4a0 targets 0xd8ae940 and is always taken.
  The `beq` branch at 0xd8ae4cc targets 0xd8ae4dc, is taken when t1(=[sym(__glx_debug)]) == 0, and falls through when t1(=[sym(__glx_debug)]) != 0.
  The `beq` branch at 0xd8ae4d4 targets 0xd8ae4e4 and is always taken.
  The `bne` branch at 0xd8ae4e4 targets 0xd8ae4f0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xd8ae4f8 targets 0xd8ae504, is taken when a0(?) < at(=0xfa01) (signed), and falls through when a0(?) >= at(=0xfa01) (signed).
  The `beql` branch at 0xd8ae52c targets 0xd8ae544, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `sw zero,24(s0)` at 0xd8ae530 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae538 targets 0xd8ae544 and is always taken.
  The `bnel` branch at 0xd8ae5a0 targets 0xd8ae928, is taken when t1(?) != 0, and falls through when t1(?) == 0; its branch-likely delay slot `sw t6,20(s0)` at 0xd8ae5a4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8ae5c8 targets 0xd8ae810, is taken when t2(?) == 0, and falls through when t2(?) != 0; its branch-likely delay slot `lw t3,108(sp)` at 0xd8ae5cc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8ae5d0 targets 0xd8ae80c, is taken when t3(=a1) != 0, and falls through when t3(=a1) == 0.
  The `beql` branch at 0xd8ae5d8 targets 0xd8ae700, is taken when t4(?) == 0, and falls through when t4(?) != 0; its branch-likely delay slot `lw a1,1232(s1)` at 0xd8ae5dc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8ae5e4 targets 0xd8ae604, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s1)` at 0xd8ae5e8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8ae610 targets 0xd8ae634, is taken when t5(=[a0+112]) >= t6(=[a0+108]+36) (unsigned), and falls through when t5(=[a0+112]) < t6(=[a0+108]+36) (unsigned); its branch-likely delay slot `sw v0,100(s1)` at 0xd8ae614 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8ae6c0 targets 0xd8ae6e0, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8ae6c4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae6e4 targets 0xd8ae91c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8ae6f4 targets 0xd8ae91c and is always taken.
  The `beql` branch at 0xd8ae700 targets 0xd8ae720, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s1)` at 0xd8ae704 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8ae72c targets 0xd8ae750, is taken when t0(=[a0+112]) >= t1(=[a0+108]+28) (unsigned), and falls through when t0(=[a0+112]) < t1(=[a0+108]+28) (unsigned); its branch-likely delay slot `sw v0,100(s1)` at 0xd8ae730 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8ae7d0 targets 0xd8ae7f0, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8ae7d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae7f4 targets 0xd8ae91c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8ae804 targets 0xd8ae91c and is always taken.
  The `beq` branch at 0xd8ae810 targets 0xd8ae91c, is taken when t3(=a1) == 0, and falls through when t3(=a1) != 0.
  The `beql` branch at 0xd8ae81c targets 0xd8ae83c, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s1)` at 0xd8ae820 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8ae848 targets 0xd8ae86c, is taken when t4(=[a0+112]) >= t5(=[a0+108]+24) (unsigned), and falls through when t4(=[a0+112]) < t5(=[a0+108]+24) (unsigned); its branch-likely delay slot `sw v0,100(s1)` at 0xd8ae84c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8ae8e4 targets 0xd8ae904, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8ae8e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae908 targets 0xd8ae91c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8ae91c targets 0xd8ae92c and is always taken.
  The return at 0xd8ae94c has v0 = one of 0x0, ret(calloc).
  The instructions from 0xd8ae180 to 0xd8ae180 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8ae1e4 to 0xd8ae1e4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8ae1f8 to 0xd8ae1f8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8ae540 to 0xd8ae540 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8ae6fc to 0xd8ae6fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8ae924 to 0xd8ae924 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd8ae360 uses the jump table at 0xd8dd4f0 with targets 0xd8ae368, 0xd8ae368, 0xd8ae368, 0xd8ae368, 0xd8ae370, 0xd8ae370.
  The indirect jump at 0xd8ae360 uses the jump table at 0xd8dd4f0 with targets 0xd8ae368, 0xd8ae368, 0xd8ae368, 0xd8ae368, 0xd8ae370, 0xd8ae370.

- `CreateContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8ae040 (2324 bytes).
  Evidence grade: inferred.
  It calls `__glXInitialize` at 0xd8ae070 and allocates a 0x128-byte record with `calloc` at 0xd8ae0a0, which it fills in field by field. It calls `getenv` at 0xd8ae1b4 early, before the lookups, and a second `getenv` at 0xd8ae3e8 after the `__glXCreateDirectContext` call at 0xd8ae39c. The lookups of visual and FBConfig records (`__glXFindFBConfigFromVid` at 0xd8ae2fc, `__glXFindVisualConfig` at 0xd8ae328) and the `__glXCreateDirectContext` call sit behind branches, so they run only on some paths. The `fprintf` and `exit` calls at 0xd8ae420 and 0xd8ae434 point to a fatal path, but the facts do not show which condition reaches it.
  Reviewed: 2026-11-12

- `__glXOpenGraphicsDevice` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8aeed8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8aeed8-0xd8af05c (388 bytes).
  It occupies 388 bytes.
  6 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd8aef18, `lw` at 0xd8aefa0, `lw` at 0xd8aeff8.
  The `lw` at 0xd8aef28 loads 4 bytes from ([0x1014] + (a0 << 0x2)) +0x4.
  2 such `lw` accesses load 4 bytes from [0x1014] +0x104, including `lw` at 0xd8aefa4, `lw` at 0xd8af00c.
  The `sw` at 0xd8af004 stores 4 bytes to [0x1014] +0x104.
  The `sw` at 0xd8af048 stores 4 bytes to ([0x1014] + (a0 << 0x2)) +0x4.
  The `jalr` at 0xd8aef08 calls __glXFatal with a0=0x0, a1=0xd8ddca0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8aef40 calls open with a0=0xd8ddcbc, a1=0x802, a2=?, a3=?.
  The `jalr` at 0xd8aef60 calls __glXFatal with a0=0x0, a1=0xd8ddcc8, a2=?, a3=?.
  The `jalr` at 0xd8aef78 calls fcntl with a0=ret(open), a1=0x2, a2=0x5, a3=?.
  The `jalr` at 0xd8aef94 calls __glXFatal with a0=0x0, a1=0xd8ddce8, a2=?, a3=?.
  The `jalr` at 0xd8aefbc calls ioctl with a0=ret(open), a1=0x65, a2=0x0, a3=?.
  The `jalr` at 0xd8aefe0 calls __glXFatal with a0=0x0, a1=0xd8ddcf8, a2=ret(ioctl), a3=?.
  The `jalr` at 0xd8af02c calls __glXFatal with a0=0x0, a1=0xd8ddd0c, a2=?, a3=?.
  The `bne` branch at 0xd8aeef4 targets 0xd8aef14, is taken when a0 < 0x41 (signed), and falls through when a0 >= 0x41 (signed).
  The `bgezl` branch at 0xd8aef2c targets 0xd8af050, is taken when t9(=[([0x1014] + (a0 << 0x2))+4]) >= 0 (signed), and falls through when t9(=[([0x1014] + (a0 << 0x2))+4]) < 0 (signed); its branch-likely delay slot `lw ra,28(sp)` at 0xd8aef30 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xd8aef4c targets 0xd8aef6c, is taken when v0(=ret(open)) >= 0 (signed), and falls through when v0(=ret(open)) < 0 (signed).
  The `bgez` branch at 0xd8aef80 targets 0xd8aefa0, is taken when v0(=ret(fcntl)) >= 0 (signed), and falls through when v0(=ret(fcntl)) < 0 (signed).
  The `bgezl` branch at 0xd8aefa8 targets 0xd8af014, is taken when v1(=[[0x1014]+260]) >= 0 (signed), and falls through when v1(=[[0x1014]+260]) < 0 (signed); its branch-likely delay slot `lw t1,48(sp)` at 0xd8aefac runs only when taken and is annulled on fall-through.
  The `bgtz` branch at 0xd8aefc8 targets 0xd8aeff0, is taken when v0(=ret(ioctl)) > 0 (signed), and falls through when v0(=ret(ioctl)) <= 0 (signed).
  The `bnel` branch at 0xd8aeff4 targets 0xd8af004, is taken when a2(=ret(ioctl)) < 0x41 (signed), and falls through when a2(=ret(ioctl)) >= 0x41 (signed); its branch-likely delay slot `lw t0,4116(zero)` at 0xd8aeff8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8af018 targets 0xd8af040, is taken when v1(=[[0x1014]+260]) >= t1(=a0) (signed), and falls through when v1(=[[0x1014]+260]) < t1(=a0) (signed); its branch-likely delay slot `lw t3,32(sp)` at 0xd8af01c runs only when taken and is annulled on fall-through.
  The return at 0xd8af054 has v0 = one of (a0 << 0x2), [0x1014].

- `__glXOpenGraphicsDevice` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8aeed8 (388 bytes).
  Evidence grade: inferred.
  It takes a screen index in a0 and calls `__glXFatal` at 0xd8aef08 when the index is 0x41 (65) or above. It looks up a per-index slot in the table at absolute 0x1014. Only when the word at +4 of that slot is negative does it call `open` at 0xd8aef40 (flags 0x802), then `fcntl` with arguments 2 and 5 at 0xd8aef78, and, only when the word at +0x104 of the table is negative, an `ioctl` with request 0x65 at 0xd8aefbc. Each failure path calls `__glXFatal` (0xd8aef60, 0xd8aef94, 0xd8aefe0, 0xd8af02c). The ioctl request is not named in the facts, and the device path string is not resolved.
  Reviewed: 2026-11-12

- `__glXBindHWContextToWindow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8af05c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8af05c-0xd8af348 (748 bytes).
  It occupies 748 bytes.
  The `lw` at 0xd8af078 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd8af090, `lw` at 0xd8af100.
  51 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8af098, `lw` at 0xd8af0b8, `lw` at 0xd8af0fc.
  The `lw` at 0xd8af09c loads 4 bytes from [0x1014] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0xd8af0e0, `lw` at 0xd8af1d8, `lw` at 0xd8af2cc.
  The `sw` at 0xd8af104 stores 4 bytes to [0x1014] +0x0.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8af110, `sb` at 0xd8af208, `sb` at 0xd8af2f8.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8af210, `sw` at 0xd8af21c, `sw` at 0xd8af224.
  The `jalr` at 0xd8af084 calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8af0c0 calls Ioctl [0xd8afdfc] with a0=?, a1=0x3ea, a2=sp-12, a3=?.
  The `jalr` at 0xd8af0e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8ddd64, a2=?, a3=?.
  The `jalr` at 0xd8af1b8 calls Ioctl [0xd8afdfc] with a0=?, a1=0x3eb, a2=sp-24, a3=?.
  The `jalr` at 0xd8af1e0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8ddd7c, a2=?, a3=?.
  The `jalr` at 0xd8af2a8 calls Ioctl [0xd8afdfc] with a0=?, a1=0x400, a2=sp-44, a3=?.
  The `jalr` at 0xd8af2d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8ddd94, a2=?, a3=?.
  The `beq` branch at 0xd8af0a8 targets 0xd8af10c, is taken when t7(=[[0x1014]]) == a3(?), and falls through when t7(=[[0x1014]]) != a3(?).
  The `bgez` branch at 0xd8af0cc targets 0xd8af0fc, is taken when v0(=ret(Ioctl)) >= 0 (signed), and falls through when v0(=ret(Ioctl)) < 0 (signed).
  The `beq` branch at 0xd8af0f4 targets 0xd8af108 and is always taken.
  The `bne` branch at 0xd8af10c targets 0xd8af134, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bnel` branch at 0xd8af11c targets 0xd8af138, is taken when t1(?) != t2(?), and falls through when t1(?) == t2(?); its branch-likely delay slot `lw t5,220(v1)` at 0xd8af120 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8af12c targets 0xd8af33c, is taken when t3(?) == t4(?), and falls through when t3(?) != t4(?); its branch-likely delay slot `lw ra,28(sp)` at 0xd8af130 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8af13c targets 0xd8af15c, is taken when t5(?) == t6(?), and falls through when t5(?) != t6(?); its branch-likely delay slot `lw t8,204(v1)` at 0xd8af140 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8af150 targets 0xd8af22c, is taken when t9(?) != at(=0x3), and falls through when t9(?) == at(=0x3); its branch-likely delay slot `lw t4,204(v1)` at 0xd8af154 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8af168 targets 0xd8af190, is taken when t0(?) >= 0x2 (signed), and falls through when t0(?) < 0x2 (signed); its branch-likely delay slot `lw t3,228(v1)` at 0xd8af16c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8af178 targets 0xd8af190, is taken when t1(?) >= 0x3 (signed), and falls through when t1(?) < 0x3 (signed); its branch-likely delay slot `lw t3,228(v1)` at 0xd8af17c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8af184 targets 0xd8af198 and is always taken.
  The `bne` branch at 0xd8af1c8 targets 0xd8af1f0, is taken when v0(=ret(Ioctl)) != at(=-0x1), and falls through when v0(=ret(Ioctl)) == at(=-0x1).
  The `beq` branch at 0xd8af1e8 targets 0xd8af338 and is always taken.
  The `beql` branch at 0xd8af200 targets 0xd8af218, is taken when t7(?) == t8(?), and falls through when t7(?) != t8(?); its branch-likely delay slot `lw t2,224(v1)` at 0xd8af204 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8af220 targets 0xd8af338 and is always taken.
  The `bnel` branch at 0xd8af238 targets 0xd8af268, is taken when t5(?) != at(=0x1), and falls through when t5(?) == at(=0x1); its branch-likely delay slot `lw t8,228(v1)` at 0xd8af23c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8af248 targets 0xd8af268, is taken when t6(?) >= 0x3 (signed), and falls through when t6(?) < 0x3 (signed); its branch-likely delay slot `lw t8,228(v1)` at 0xd8af24c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8af25c targets 0xd8af27c and is always taken.
  The `bne` branch at 0xd8af2b8 targets 0xd8af2e4, is taken when v0(=ret(Ioctl)) != at(=-0x1), and falls through when v0(=ret(Ioctl)) == at(=-0x1).
  The `beq` branch at 0xd8af2dc targets 0xd8af338 and is always taken.
  The `bnel` branch at 0xd8af2f4 targets 0xd8af314, is taken when t7(?) != t8(?), and falls through when t7(?) == t8(?); its branch-likely delay slot `sb t3,244(v1)` at 0xd8af2f8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8af308 targets 0xd8af32c, is taken when t0(?) == t2(?), and falls through when t0(?) != t2(?); its branch-likely delay slot `lw t9,224(v1)` at 0xd8af30c runs only when taken and is annulled on fall-through.
  The return at 0xd8af340 has v0 = ?.
  The instructions from 0xd8af18c to 0xd8af18c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8af228 to 0xd8af228 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8af264 to 0xd8af264 are not reached by any path from the entry, and their branches are not listed.

- `sampleBuffersScore` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8b1004 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8b1004-0xd8b100c (8 bytes).
  It occupies 8 bytes.
  The return at 0xd8b1004 has v0 = ?.

- `__glx_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8bcf3c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8bcf3c-0xd8bcfd8 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd8bcf4c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8bcf5c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8bcf68 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8bcf74 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8bcf78 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8bcf94 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8bcfa8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8bcf88 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x80, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8bcfb8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+132, a2=?, a3=[[[0x1014]+276]+4]+132.
  The `beq` branch at 0xd8bcfa4 targets 0xd8bcfc4, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+132) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+132) (unsigned).
  The return at 0xd8bcfd0 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_LoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8bcfd8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8bcfd8-0xd8bd074 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd8bcfe8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8bcff8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8bd004 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8bd010 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8bd014 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8bd030 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8bd044 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8bd024 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x40, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8bd054 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+68, a2=?, a3=[[[0x1014]+276]+4]+68.
  The `beq` branch at 0xd8bd040 targets 0xd8bd060, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+68) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+68) (unsigned).
  The return at 0xd8bd06c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `glXSelectEventSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8bf738 (o32).
  Inferred: it sends a fixed-size request block, with no reply read, since it only appends to the
  buffer through +0x6c, optionally flushes, and makes no call that waits for a reply.
  It acts on the context in arg0: once `__glXSetupForCommand` returns a nonzero value (the `jalr` at
  0xd8bf760), it writes fields through the pointer at +0x6c of that context and advances that pointer
  by 0x18 and adds one to the word at +0x60 (the `sw`s at 0xd8bf7ec and 0xd8bf7f0).
  A zero setup result returns at once with that zero (the `beq` at 0xd8bf76c).
  When the word at +0x4d0 is nonzero, the routine first calls through the word at +0 of that value
  (the `jalr` at 0xd8bf788).
  The flush `_XFlush` on the context (the `jalr` at 0xd8bf7b4) is made only on the path where the word
  at +0x70 is below the word at +0x6c plus 0x18 (unsigned, the `beql` at 0xd8bf7a4); the copy of the
  word at +0x6c into +0x64 happens on both paths, through the `sw` at 0xd8bf7a8 or 0xd8bf7c4.
  Bytes 0x10 at +0 and +1 come from the `sb`s at 0xd8bf7d4 and 0xd8bf7fc, the halfword 6 at +2 from the
  `sh` at 0xd8bf7d0, the word 0x10009 at +4 from the `sw` at 0xd8bf800, the word 0x801f at +0x10 from
  the `sw` at 0xd8bf810, and the second and third arguments at +0xc and +0x14 from the `sw`s at
  0xd8bf814 and 0xd8bf81c; the `sb` at 0xd8bf804 then writes the setup byte at +0 (the byte stored at
  entry -0x9 by the `sb` at 0xd8bf770).
  When the word at +0x4d0 is nonzero, the routine then calls through the word at +4 of that value with
  0x10 as its second argument (the `jalr` at 0xd8bf834); if the word at +0x7c is zero it returns that
  word (the `beql` at 0xd8bf848), and otherwise it calls through that word (the `jalr` at 0xd8bf850)
  and returns the v0 that call leaves.
  Unknown: the code behind the calls at 0xd8bf788, 0xd8bf834 and 0xd8bf850, which the bundle shows
  only as pointer loads; a trace of the words in +0x4d0 and +0x7c would settle it.
  Evidence grade: inferred.

- `glXSelectEventSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8bf738 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8bf738-0xd8bf870 (312 bytes).
  It occupies 312 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8bf774, `lw` at 0xd8bf820.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8bf77c, `lw` at 0xd8bf794, `lw` at 0xd8bf7c0.
  The `lw` at 0xd8bf780 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8bf798 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8bf7a8, `sw` at 0xd8bf7c4.
  The `sh` at 0xd8bf7d0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8bf7d4, `sb` at 0xd8bf804.
  The `lw` at 0xd8bf7d8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8bf7ec stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8bf7f0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8bf7fc stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8bf800 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8bf810 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8bf814 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8bf81c stores 4 bytes to [a0+108] +0x14.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8bf828, `lw` at 0xd8bf840.
  The `lw` at 0xd8bf82c loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8bf760 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8bf788 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bf7b4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bf834 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd8bf850 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8bf76c targets 0xd8bf85c, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` branch at 0xd8bf778 targets 0xd8bf798, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8bf77c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bf7a4 targets 0xd8bf7c8, is taken when t6(=[a0+112]) >= t7(=[a0+108]+24) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+24) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8bf7a8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bf824 targets 0xd8bf844, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8bf828 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bf848 targets 0xd8bf860, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8bf84c runs only when taken and is annulled on fall-through.
  The return at 0xd8bf868 has v0 = one of [a0+124], ?.

- `__glXGetDrawableAttributes` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8bf964 (o32).
  Sends one GLX-style request over the connection in `a0` and unpacks the reply into the 0x1c-byte caller
  record in `a2`. It returns 1 on success and 0 on every failure exit.
  It first calls `__glXSetupForCommand` with its four arguments unchanged (the `jalr` at 0xd8bf994) and
  keeps the returned byte on the stack (the `sb` at 0xd8bf9a4); a zero return leaves with 0.
  The low byte of `a3` (the `lbu` at 0xd8bf9b0) then picks the request shape: nonzero builds a 16-byte
  request, zero (the `beql` at 0xd8bf9b4) an 8-byte one. Either way, if the structure at `a0` +0x4d0 is
  present, its first word is called as a function with `a0`; then, when the limit at `a0` +0x70 is below
  the pointer at +0x6c plus the request size, `_XFlush` runs (the `jalr` at 0xd8bf9fc or 0xd8bfb0c) and
  the pointer is reread, and the pointer is copied to `a0` +0x64.
  The 16-byte request has the halfword 4 at +2, 0x11 at +1, the setup byte at +0 (after 0x10 was written
  there first), 0x1000a at +4 and the saved `a1` at +0xc (the `sw` at 0xd8bfa60). The 8-byte one has the
  halfword 2 at +2, 0x1d at +1, the setup byte at +0 and the saved `a1` at +4 (the `sw` at 0xd8bfb68).
  The pointer at +0x6c then advances by 0x10 or 8 and the count at +0x60 by one.
  `_XReply` is called with `a0`, a reply buffer on the stack, and zeros (the `jalr` at 0xd8bfa70 or
  0xd8bfb70). A zero return runs the same exit path as every other failure: the second word of the
  `a0` +0x4d0 structure is called when present, the function pointer at `a0` +0x7c is called when nonzero,
  and 0 is returned.
  On success the word at +8 of the reply buffer is a count (read at 0xd8bfbc8). A zero count takes the
  failure exit. Otherwise `malloc` is called with the count shifted left by 3 (the `jalr` at 0xd8bfc20);
  a null result takes the failure exit. `_XRead` then fills the block from the connection (the `jalr`
  at 0xd8bfc8c), and the call at 0xd8bfca8 clears 0x1c bytes of the record in `a2`.
  The loop runs once per count over 8-byte pairs in the block. It subtracts 0x800c from the first word of
  a pair; a result of 0x1a or more skips the pair (the branch-if-zero at 0xd8bfcdc) and the loop goes on to the next
  one. A smaller result indexes the jump table at 0xd8de3a0 (the `jr` at 0xd8bfcf8). Table slot 0 stores the
  pair's second word at +0 of the record and slot 7 at +4. Slots 15 and 16 store its low byte at +0x14 and
  +0x15. Slot 17 stores the word at +8 and the two slots after it +0xc and +0x10; the last slot, after five
  empty ones, stores +0x18. Every other slot stores nothing.
  After the loop it makes the same two exit calls, frees the block (the `jalr` at 0xd8bfd8c) and returns 1
  (0xd8bfd98).
  Inferred: the callees `_XFlush`, `_XReply`, `_XRead`, `malloc`, `memset` and `free` are known library
  names, and the committed note says `__glXSetupForCommand` selects the display's current context, so the
  routine is a request and reply exchange; no committed entry covers the library callees.
  Unknown: the field layout of the request bytes 0x10, 0x11 and 0x1d and the word 0x1000a, and of the
  reply keys; committed entries for the library callees and for the reader of the record would settle them.
  Evidence grade: inferred.

- `__glXGetDrawableAttributes` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8bf964 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8bf964-0xd8bfdb0 (1100 bytes).
  It occupies 1100 bytes.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8bf9b8, `lw` at 0xd8bf9bc, `lw` at 0xd8bfa80.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8bf9c4, `lw` at 0xd8bf9dc, `lw` at 0xd8bfa08.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x0, including `lw` at 0xd8bf9c8, `lw` at 0xd8bfad8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xd8bf9e0, `lw` at 0xd8bfaf0.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8bf9f0, `sw` at 0xd8bfa0c, `sw` at 0xd8bfb00.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xd8bfa18, `sh` at 0xd8bfb28.
  4 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8bfa1c, `sb` at 0xd8bfa50, `sb` at 0xd8bfb2c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xd8bfa20, `lw` at 0xd8bfb30.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xd8bfa34, `sw` at 0xd8bfb44.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xd8bfa38, `sw` at 0xd8bfb48.
  2 such `sb` accesses store 1 byte to [a0+108] +0x1, including `sb` at 0xd8bfa48, `sb` at 0xd8bfb50.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x4, including `sw` at 0xd8bfa4c, `sw` at 0xd8bfb68.
  The `sw` at 0xd8bfa60 stores 4 bytes to [a0+108] +0xc.
  10 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8bfa88, `lw` at 0xd8bfaa0, `lw` at 0xd8bfb88.
  5 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8bfa8c, `lw` at 0xd8bfb8c, `lw` at 0xd8bfbdc.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8bfcc4, `lw` at 0xd8bfcd8, `lw` at 0xd8bfd44.
  The `lw` at 0xd8bfcf0 loads 4 bytes from table(0xd8de3a0) +0x0.
  The `sw` at 0xd8bfd04 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `sw` at 0xd8bfd0c stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sb` at 0xd8bfd14 stores 1 byte to a2 (arg2 at entry) +0x14.
  The `sw` at 0xd8bfd1c stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `sw` at 0xd8bfd24 stores 4 bytes to a2 (arg2 at entry) +0xc.
  The `sw` at 0xd8bfd2c stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `sb` at 0xd8bfd34 stores 1 byte to a2 (arg2 at entry) +0x15.
  The `sw` at 0xd8bfd38 stores 4 bytes to a2 (arg2 at entry) +0x18.
  The `jalr` at 0xd8bf994 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8bf9d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bf9fc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfa70 calls _XReply with a0=a0 at entry (arg0), a1=sp-60, a2=0x0, a3=0x0.
  The `jalr` at 0xd8bfa94 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfab0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfae0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfb0c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfb70 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0.
  The `jalr` at 0xd8bfb94 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfbb0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfbe4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfc00 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfc20 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfc50 calls (unknown callee) with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd8bfc6c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfc8c calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd8bfca8 calls memset with a0=a2 at entry (arg2), a1=0x0, a2=0x1c, a3=?.
  The `jalr` at 0xd8bfd5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfd78 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfd8c calls free with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8bf9a0 targets 0xd8bf9b0, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd8bf9a8 targets 0xd8bfd9c and is always taken.
  The `beql` branch at 0xd8bf9b4 targets 0xd8bfad0, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `lw v0,1232(s1)` at 0xd8bf9b8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bf9c0 targets 0xd8bf9e0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s1)` at 0xd8bf9c4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bf9ec targets 0xd8bfa10, is taken when t7(=[a0+112]) >= t8(=[a0+108]+16) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s1)` at 0xd8bf9f0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8bfa78 targets 0xd8bfac4, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8bfa84 targets 0xd8bfaa4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8bfa88 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8bfaa8 targets 0xd8bfabc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8bfabc targets 0xd8bfd9c and is always taken.
  The `beq` branch at 0xd8bfac4 targets 0xd8bfbc8 and is always taken.
  The `beql` branch at 0xd8bfad0 targets 0xd8bfaf0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s1)` at 0xd8bfad4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bfafc targets 0xd8bfb20, is taken when t2(=[a0+112]) >= t3(=[a0+108]+8) (unsigned), and falls through when t2(=[a0+112]) < t3(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw v1,100(s1)` at 0xd8bfb00 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8bfb78 targets 0xd8bfbc4, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8bfb84 targets 0xd8bfba4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8bfb88 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8bfba8 targets 0xd8bfbbc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8bfbbc targets 0xd8bfd9c and is always taken.
  The `bne` branch at 0xd8bfbc8 targets 0xd8bfc14, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beql` branch at 0xd8bfbd4 targets 0xd8bfbf4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8bfbd8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8bfbf8 targets 0xd8bfc0c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8bfc0c targets 0xd8bfd9c and is always taken.
  The `bne` branch at 0xd8bfc34 targets 0xd8bfc80, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd8bfc40 targets 0xd8bfc60, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8bfc44 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8bfc64 targets 0xd8bfc78, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8bfc78 targets 0xd8bfd9c and is always taken.
  The `blez` branch at 0xd8bfcbc targets 0xd8bfd48, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0xd8bfcdc targets 0xd8bfd3c, is taken when t2(=table(-0x800c)) >= 0x1a (unsigned), and falls through when t2(=table(-0x800c)) < 0x1a (unsigned).
  The `beq` branch at 0xd8bfd00 targets 0xd8bfd3c and is always taken.
  The `beq` branch at 0xd8bfd08 targets 0xd8bfd3c and is always taken.
  The `beq` branch at 0xd8bfd10 targets 0xd8bfd3c and is always taken.
  The `beq` branch at 0xd8bfd18 targets 0xd8bfd3c and is always taken.
  The `beq` branch at 0xd8bfd20 targets 0xd8bfd3c and is always taken.
  The `beq` branch at 0xd8bfd28 targets 0xd8bfd3c and is always taken.
  The `beq` branch at 0xd8bfd30 targets 0xd8bfd3c and is always taken.
  The `bnel` branch at 0xd8bfd40 targets 0xd8bfcc8, is taken when a1(?) != a3(?), and falls through when a1(?) == a3(?); its branch-likely delay slot `lw v1,0(a0)` at 0xd8bfd44 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bfd4c targets 0xd8bfd6c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8bfd50 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8bfd70 targets 0xd8bfd84, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The return at 0xd8bfda8 has v0 = one of 0x0, 0x1.
  The instructions from 0xd8bfacc to 0xd8bfacc are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd8bfcf8 uses the jump table at 0xd8de3a0 with targets 0xd8bfd08, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd00, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd10, 0xd8bfd30, 0xd8bfd18, 0xd8bfd20, 0xd8bfd28, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd38.
  The indirect jump at 0xd8bfcf8 uses the jump table at 0xd8de3a0 with targets 0xd8bfd08, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd00, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd10, 0xd8bfd30, 0xd8bfd18, 0xd8bfd20, 0xd8bfd28, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd38.
  The indirect jump at 0xd8bfcf8 uses the jump table at 0xd8de3a0 with targets 0xd8bfd08, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd00, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd10, 0xd8bfd30, 0xd8bfd18, 0xd8bfd20, 0xd8bfd28, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd38.
  The indirect jump at 0xd8bfcf8 uses the jump table at 0xd8de3a0 with targets 0xd8bfd08, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd00, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd10, 0xd8bfd30, 0xd8bfd18, 0xd8bfd20, 0xd8bfd28, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd38.
  The indirect jump at 0xd8bfcf8 uses the jump table at 0xd8de3a0 with targets 0xd8bfd08, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd00, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd10, 0xd8bfd30, 0xd8bfd18, 0xd8bfd20, 0xd8bfd28, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd38.

- `glXDestroyGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8bfdb0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8bfdb0-0xd8bff28 (376 bytes).
  It occupies 376 bytes.
  The `lw` at 0xd8bfe18 loads 4 bytes from ret(__glXAddDrawableInterest) +0x14.
  The `sw` at 0xd8bfe24 stores 4 bytes to ret(__glXAddDrawableInterest) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8bfe38, `lw` at 0xd8bfed8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8bfe44, `lw` at 0xd8bfe5c, `lw` at 0xd8bfe88.
  The `lw` at 0xd8bfe48 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8bfe60 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8bfe70, `sw` at 0xd8bfe8c.
  The `sh` at 0xd8bfe98 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8bfe9c, `sb` at 0xd8bfecc.
  The `lw` at 0xd8bfea0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8bfeb4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8bfeb8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8bfec4 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8bfec8 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8bfed4 stores 4 bytes to [a0+108] +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8bfee0, `lw` at 0xd8bfef8.
  The `lw` at 0xd8bfee4 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8bfdd4 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8bfdf0 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfe08 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfe30 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=ret(__glXAddDrawableInterest), a2=?, a3=?.
  The `jalr` at 0xd8bfe50 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfe7c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfeec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd8bff08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8bfde0 targets 0xd8bff14, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `bne` branch at 0xd8bfe1c targets 0xd8bfe28, is taken when t6(=[ret(__glXAddDrawableInterest)+20]) != 0, and falls through when t6(=[ret(__glXAddDrawableInterest)+20]) == 0.
  The `beql` branch at 0xd8bfe40 targets 0xd8bfe60, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8bfe44 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bfe6c targets 0xd8bfe90, is taken when t7(=[a0+112]) >= t8(=[a0+108]+16) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8bfe70 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bfedc targets 0xd8bfefc, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8bfee0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bff00 targets 0xd8bff18, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8bff04 runs only when taken and is annulled on fall-through.
  The return at 0xd8bff20 has v0 = one of [a0+124], ?.

- `glXDestroyGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8bfdb0 (376 bytes).
  Evidence grade: inferred.
  It runs `__glXSetupForCommand` at 0xd8bfdd4 on the display. When that call returns nonzero, it adds a drawable interest (`__glXAddDrawableInterest`, 0xd8bfdf0), removes it with `__glXRemoveDrawableInterest` (0xd8bfe08), and frees the drawable private with `__glXFreeDrawablePrivate` (0xd8bfe30). A zero return branches at 0xd8bfde0 past those calls and the flush with `_XFlush` at 0xd8bfe7c. The name suggests it tears down a pbuffer, which fits the calls, but three callees are unnamed in the facts.
  Reviewed: 2026-11-12

- `glXCreateGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c24e0 (o32).
  Inferred: the routine builds a create request in the buffer whose cursor is the word at +0x6c of the context in `a0`, waits for a reply, and registers a drawable record first, since it stores through that cursor, advances it, calls `_XFlush` when the buffer limit at +0x70 would be passed, calls `_XReply`, and calls `__glXAddDrawableInterest`, which per its callee note finds or allocates a record in a linked drawable list and returns zero on failure.
  The `jalr` at 0xd8c2510 calls `__glXSetupForCommand` with the four entry arguments and saves its byte at entry sp -0x2d (the `sb` at 0xd8c2524); a zero return goes straight to a return of zero (`bne` at 0xd8c2520 falls through to the `beq` at 0xd8c2528).
  The routine calls the pointer at +0x2c of the context with the context as argument (`jalr` at 0xd8c253c) and passes that result to `__glXAddDrawableInterest` (`jalr` at 0xd8c2554); when the add returns zero, `__glXPostError` is called with 0xb, 0x10 and 0 (`jalr` at 0xd8c257c) and the routine returns zero.
  On success the record gets the constant 0x4 at +0x2c (`sw` at 0xd8c2598).
  The stack word at entry +0x10 (`lw` at 0xd8c2590) is a list pointer: when it and the first word it points at are nonzero, the loop at 0xd8c25b8 to 0xd8c25c0 adds one to a count (starting from the frame word at entry -0x3c, which holds zero) and steps the pointer by 8 each pass, until the word at the next pointer+0x8 is zero.
  When the word at +0x4d0 of the context is nonzero, the pointer at +0x0 of that table is called with the context (`jalr` at 0xd8c25e4).
  The request size is eight times the count plus 0x20 (shifts at 0xd8c25fc and 0xd8c2604, `addiu` at 0xd8c2608); if the limit at +0x70 is below the cursor plus that size (`beql` at 0xd8c2614), `_XFlush` runs (`jalr` at 0xd8c262c), and the cursor is saved at +0x64 either way (`sw` at 0xd8c264c).
  The request is written through the cursor: the halfword at +0x2 is the size shifted right by 2 arithmetically (`sh` at 0xd8c2658), the byte 0x10 at +0x0 and 0x11 at +0x1, the word 0x10007 at +0x4, the words at +0x24 and +0x48 of the entry a1 at +0xc and +0x10, the result of the +0x2c callback at +0x14, and the entry a2 and a3 at +0x18 and +0x1c; the saved setup byte overwrites +0x0 (`sb` at 0xd8c2690). The cursor at +0x6c then advances by the size and the counter at +0x60 by 1 (`sw` at 0xd8c2674 and 0xd8c2678).
  If the list pointer and the loop count are nonzero, the loop at 0xd8c26d8 to 0xd8c26fc copies the list into the request from the cursor+0x20 (`addiu` at 0xd8c269c), two words (8 bytes) per pass, once per counted entry.
  `_XReply` is then called with the context, a frame address at entry -0x28 and zeros (`jalr` at 0xd8c270c).
  If it returns zero (`bne` at 0xd8c2714 falls through), the routine calls the pointer at +0x4 of the +0x4d0 table when that table is set and the pointer at +0x7c of the context when set, posts hidden error 0x11 through `__glXPostHiddenError` (`jalr` at 0xd8c2768), calls `__glXRemoveDrawableInterest` on the record, stores zero at the record's +0x0 (`sw` at 0xd8c278c), calls `__glXFreeDrawablePrivate`, and returns zero.
  If it returns nonzero, the same two callbacks run, `__glXRemoveDrawableInterest` is called on the record (`jalr` at 0xd8c27f0), and the routine returns the result of the +0x2c callback saved at entry -0x2c (`lw` at 0xd8c27fc).
  Unknown: the content of the list entries and of the routines behind the callbacks at +0x2c and at +0x0 and +0x4 of the tables, which carry no callee notes; the code that fills the context's function table would settle it.
  Evidence grade: inferred.

- `glXCreateGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c24e0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8c24e0-0xd8c2814 (820 bytes).
  It occupies 820 bytes.
  The `lw` at 0xd8c2534 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd8c2598 stores 4 bytes to ret(__glXAddDrawableInterest) +0x2c.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8c25a0, `lw` at 0xd8c25b0, `lw` at 0xd8c25c8.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8c25a4, `lw` at 0xd8c25b4, `lw` at 0xd8c25c4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8c25d0, `lw` at 0xd8c25f8, `lw` at 0xd8c2644.
  The `lw` at 0xd8c25dc loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8c2600 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8c264c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8c2658 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8c265c, `sb` at 0xd8c2690.
  The `lw` at 0xd8c2660 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8c2674 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8c2678 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8c2688 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8c268c stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8c2694 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd8c26a0 stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd8c26a4 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd8c26b0 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8c26b8 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd8c26c0 stores 4 bytes to [a0+108] +0x18.
  The `sw` at 0xd8c26cc stores 4 bytes to [a0+108] +0x1c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8c26e4, `sw` at 0xd8c26fc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8c2724, `lw` at 0xd8c273c, `lw` at 0xd8c27b4.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8c2728, `lw` at 0xd8c27b8.
  The `sw` at 0xd8c278c stores 4 bytes to ret(__glXAddDrawableInterest) +0x0.
  The `jalr` at 0xd8c2510 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8c253c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2554 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c257c calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x10, a3=0x0.
  The `jalr` at 0xd8c25e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c262c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c270c calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xd8c2730 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c274c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2768 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=sp-40, a2=0x11, a3=0x0.
  The `jalr` at 0xd8c277c calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2798 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c27c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c27dc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c27f0 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8c2520 targets 0xd8c2530, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd8c2528 targets 0xd8c2800 and is always taken.
  The `bne` branch at 0xd8c2564 targets 0xd8c2590, is taken when v0(=ret(__glXAddDrawableInterest)) != 0, and falls through when v0(=ret(__glXAddDrawableInterest)) == 0.
  The `beq` branch at 0xd8c2588 targets 0xd8c2800 and is always taken.
  The `beql` branch at 0xd8c259c targets 0xd8c25cc, is taken when a1(?) == 0, and falls through when a1(?) != 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xd8c25a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c25ac targets 0xd8c25cc, is taken when t7(?) == 0, and falls through when t7(?) != 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xd8c25b0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8c25c0 targets 0xd8c25b8, is taken when t8(?) != 0, and falls through when t8(?) == 0; its branch-likely delay slot `lw t8,8(v0)` at 0xd8c25c4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c25cc targets 0xd8c25fc, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8c25d0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c2614 targets 0xd8c264c, is taken when t1(=[a0+112]) >= t2(?) (unsigned), and falls through when t1(=[a0+112]) < t2(?) (unsigned); its branch-likely delay slot `lw t0,124(sp)` at 0xd8c2618 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c26c8 targets 0xd8c2700, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xd8c26d0 targets 0xd8c2700, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xd8c26f8 targets 0xd8c26d8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xd8c2714 targets 0xd8c27ac, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8c2720 targets 0xd8c2740, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8c2724 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c2744 targets 0xd8c2758, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8c27a4 targets 0xd8c2800 and is always taken.
  The `beql` branch at 0xd8c27b0 targets 0xd8c27d0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8c27b4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c27d4 targets 0xd8c27e8, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The return at 0xd8c280c has v0 = one of 0x0, ret(?).

- `glXGetVideoSyncSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c2814 (o32).
  Inferred: it is a query helper that sends ioctl request 0x3fe on a device handle and passes one
  word back through the caller's pointer in `a0`, since that ioctl is its only call and the store to
  `a0` at 0xd8c2898 writes the result.
  The word at +0x114 of the pointer loaded from abs 0x1014 (`lw` at 0xd8c2838) must be nonzero
  (`beq` at 0xd8c283c), and so must the word at +0xc4 of that value (`lw` at 0xd8c2844, `bnel` at
  0xd8c2848); otherwise the routine returns 5 (`addiu` at 0xd8c2854).
  On the other path the word at +0xcc of that value is copied to sp-12 (`lw` at 0xd8c284c in the
  branch-likely delay slot, `sw` at 0xd8c2864), and ioctl is called with `a1` = 0x3fe, `a2` = sp-12
  and `a3` = 0x1000, with `a0` read from a four-byte table based at the pointer loaded from 0x1014:
  the index is the word at +0x108 of that pointer, and `a0` is the word at +0x4 of the selected
  entry (`lw` at 0xd8c286c and 0xd8c287c, `jalr` at 0xd8c2880).
  No branch tests the ioctl's return. The routine then loads the word at sp-0x8 (`lw` at 0xd8c2888),
  copies it to the caller's pointer (`sw` at 0xd8c2898) and sets `v0` to 0 (at 0xd8c2894).
  The word at sp-0x8 lies four bytes after sp-12, the start of the `a2` buffer passed to the ioctl
  (the routine filled that first word from +0xcc, `sw` at 0xd8c2864).
  Inferred: the value returned to the caller is the second word of that buffer as the ioctl left
  it, since nothing else in the routine stores to sp-0x8.
  Unknown: the device-side handling of ioctl 0x3fe, which the bundle does not contain; the
  resource-manager side would settle how it fills the second word.
  Unknown: the caller's handling of the value 5 returned on the early path at 0xd8c2854; the code of
  the callers would settle it.
  Evidence grade: inferred.

- `glXGetVideoSyncSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c2814 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8c2814-0xd8c28ac (152 bytes).
  It occupies 152 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd8c2834, `lw` at 0xd8c2868.
  The `lw` at 0xd8c2838 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8c2844 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd8c284c loads 4 bytes from [[0x1014]+276] +0xcc.
  The `lw` at 0xd8c286c loads 4 bytes from [0x1014] +0x108.
  The `lw` at 0xd8c287c loads 4 bytes from ([0x1014] + ([[0x1014]+264] << 0x2)) +0x4.
  The `sw` at 0xd8c2898 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jalr` at 0xd8c2880 calls ioctl with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3fe, a2=sp-12, a3=0x1000.
  The `beq` branch at 0xd8c283c targets 0xd8c2850, is taken when v1(=[[0x1014]+276]) == 0, and falls through when v1(=[[0x1014]+276]) != 0.
  The `bnel` branch at 0xd8c2848 targets 0xd8c285c, is taken when t7(=[[[0x1014]+276]+196]) != 0, and falls through when t7(=[[[0x1014]+276]+196]) == 0; its branch-likely delay slot `lw t8,204(v1)` at 0xd8c284c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c2850 targets 0xd8c289c and is always taken.
  The return at 0xd8c28a4 has v0 = one of 0x0, 0x5.
  The instructions from 0xd8c2858 to 0xd8c2858 are not reached by any path from the entry, and their branches are not listed.

- `__glXSendMakeCurrentRead` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c2d34 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8c2d34-0xd8c30f0 (956 bytes).
  It occupies 956 bytes.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8c2d6c, `lw` at 0xd8c2e68, `lw` at 0xd8c2f94.
  The `lw` at 0xd8c2d7c loads 4 bytes from [a0+1232] +0x0.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8c2d98, `lw` at 0xd8c2d9c, `lw` at 0xd8c2dc8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xd8c2da0, `lw` at 0xd8c2edc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8c2dd0, `sw` at 0xd8c2f0c.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xd8c2ddc, `sh` at 0xd8c2f18.
  4 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8c2de0, `sb` at 0xd8c2e14, `sb` at 0xd8c2f1c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xd8c2de4, `lw` at 0xd8c2f20.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xd8c2df8, `sw` at 0xd8c2f34.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xd8c2dfc, `sw` at 0xd8c2f38.
  2 such `sb` accesses store 1 byte to [a0+108] +0x1, including `sb` at 0xd8c2e0c, `sb` at 0xd8c2f40.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x4, including `sw` at 0xd8c2e10, `sw` at 0xd8c2f54.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x8, including `sw` at 0xd8c2e24, `sw` at 0xd8c2f5c.
  2 such `sw` accesses store 4 bytes to [a0+108] +0xc, including `sw` at 0xd8c2e30, `sw` at 0xd8c2f68.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x10, including `sw` at 0xd8c2e3c, `sw` at 0xd8c2f74.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0xd8c2e44, `lw` at 0xd8c2ebc, `lw` at 0xd8c2f70.
  The `sw` at 0xd8c2e48 stores 4 bytes to [a0+108] +0x14.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8c2e70, `lw` at 0xd8c2e88, `lw` at 0xd8c2f9c.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8c2e74, `lw` at 0xd8c2fa0, `lw` at 0xd8c30a8.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0xd8c2ed4, `lw` at 0xd8c2ffc.
  The `lw` at 0xd8c3044 loads 4 bytes from ret(malloc) +0x0.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8c3058, `sw` at 0xd8c306c, `sw` at 0xd8c3080.
  The `lw` at 0xd8c305c loads 4 bytes from ret(malloc) +0x4.
  The `lw` at 0xd8c3070 loads 4 bytes from ret(malloc) +0x8.
  The `lw` at 0xd8c3084 loads 4 bytes from ret(malloc) +0xc.
  The `jalr` at 0xd8c2d60 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8c2d84 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2dbc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2e58 calls _XReply with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x0, a3=0x0.
  The `jalr` at 0xd8c2e7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2e98 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2eb8 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x11, a3=[a1+20].
  The `jalr` at 0xd8c2ef8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2f84 calls _XReply with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x0, a3=0x0.
  The `jalr` at 0xd8c2fa8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2fc4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2fe4 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x1a, a3=[a1+20].
  The `jalr` at 0xd8c3010 calls malloc with a0=0x10, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3030 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=0x10, a3=?.
  The `jalr` at 0xd8c3090 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c30b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c30cc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8c2d74 targets 0xd8c2d94, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw t6,88(sp)` at 0xd8c2d78 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c2d94 targets 0xd8c2edc, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8c2d98 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c2dac targets 0xd8c2dd0, is taken when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned); its branch-likely delay slot `lw t1,60(sp)` at 0xd8c2db0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c2e38 targets 0xd8c2e48, is taken when t1(=a1) == 0, and falls through when t1(=a1) != 0.
  The `beq` branch at 0xd8c2e40 targets 0xd8c2e48 and is always taken.
  The `bne` branch at 0xd8c2e60 targets 0xd8c2ecc, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8c2e6c targets 0xd8c2e8c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8c2e70 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c2e90 targets 0xd8c2ea4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8c2ec4 targets 0xd8c30dc and is always taken.
  The `beq` branch at 0xd8c2ed0 targets 0xd8c3000 and is always taken.
  The `beql` branch at 0xd8c2ee8 targets 0xd8c2f0c, is taken when t8(=[a0+112]) >= t2(=[a0+108]+20) (unsigned), and falls through when t8(=[a0+112]) < t2(=[a0+108]+20) (unsigned); its branch-likely delay slot `lw t1,60(sp)` at 0xd8c2eec runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c2f64 targets 0xd8c2f74, is taken when t1(=a1) == 0, and falls through when t1(=a1) != 0.
  The `beq` branch at 0xd8c2f6c targets 0xd8c2f74 and is always taken.
  The `bne` branch at 0xd8c2f8c targets 0xd8c2ff8, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8c2f98 targets 0xd8c2fb8, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8c2f9c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c2fbc targets 0xd8c2fd0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8c2ff0 targets 0xd8c30dc and is always taken.
  The `beql` branch at 0xd8c3000 targets 0xd8c30a0, is taken when v0(=[a3+4]) == 0, and falls through when v0(=[a3+4]) != 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd8c3004 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c30a0 targets 0xd8c30c0, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8c30a4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c30c4 targets 0xd8c30dc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xd8c30c8 runs only when taken and is annulled on fall-through.
  The return at 0xd8c30e8 has v0 = one of 0x0, 0x1.
  The instructions from 0xd8c2ed8 to 0xd8c2ed8 are not reached by any path from the entry, and their branches are not listed.

- `__glXSendMakeCurrentRead` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c2d34 (2460 bytes).
  Evidence grade: inferred.
  It sets up a command with `__glXSetupForCommand` at 0xd8c2d60, then follows a request-and-reply pattern on the X connection: `_XFlush` (0xd8c2dbc, 0xd8c2ef8, each behind a buffer-space check), `_XReply` (0xd8c2e58, 0xd8c2f84), and `_XRead` (0xd8c3030). It calls `__glXPostHiddenError` (0xd8c2eb8, 0xd8c2fe4) when the matching `_XReply` returns zero. The 16-byte `malloc` at 0xd8c3010 and the `_XRead` into it run only when a word at +4 of the third-argument record is nonzero. The request opcode and the reply layout are not visible in the facts, so the exact protocol message stays open.
  Reviewed: 2026-11-12

- `glXWaitVideoSyncSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c30f0 (o32).
  Inferred: the linked ioctl row for number 1023 (0x3ff) names a video-sync wait, so this routine
  is the client side that issues that request through the pointer stored at absolute 0x1014.
  The `lw` at 0xd8c311c loads the word at +0x114 of that pointer, and the `lw` at 0xd8c3128 loads
  the word at +0xc4 of the address it holds.
  It returns 5 when that first word is zero (the `beq` at 0xd8c3120) or the second is zero (the
  `bne` at 0xd8c312c).
  It returns 6 when the first argument is not positive (the `blez` at 0xd8c313c), when the saved
  second argument is negative (the `bltz` at 0xd8c3144), or when that second argument is not below
  the first, signed (the `bnel` at 0xd8c314c).
  Otherwise the delay slot of that `bnel` loads the word at +0xcc of the same address (the `lw` at
  0xd8c3150), the `sw` at 0xd8c3168 stores it into a frame slot, and the `jalr` at 0xd8c318c calls
  ioctl with request 0x3ff, its first argument the word at +4 of the table entry at the pointer plus
  4 times the word at +0x108 (the `lw` at 0xd8c3190), and its third argument the address of a
  four-word frame buffer that starts at entry -0x14. The routine fills the first three words before
  the call: the word at +0xcc (the `sw` at 0xd8c3168), the first argument (the `sw` at 0xd8c3164) and
  the saved second argument (the `sw` at 0xd8c316c).
  After the call the `sw` at 0xd8c31a4 copies the frame word at entry -0x8 to the caller's pointer
  in a2, and the routine returns 0 whatever ioctl returned, since v0 is set to 0 at 0xd8c31a0.
  The frame word at entry -0x8 is the fourth word of that buffer, and no store in this routine
  writes it.
  Inferred: the value copied to the caller is the fourth word of the buffer as the ioctl left it,
  since the buffer is the third argument of the call.
  Unknown: the device-side result of request 0x3ff, which the handler for that request in the driver
  decides; the route is that handler's entry in the driver.
  Evidence grade: inferred.

- `glXWaitVideoSyncSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c30f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8c30f0-0xd8c31b8 (200 bytes).
  It occupies 200 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd8c3114, `lw` at 0xd8c3170.
  The `lw` at 0xd8c311c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8c3128 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd8c3150 loads 4 bytes from [[0x1014]+276] +0xcc.
  The `lw` at 0xd8c317c loads 4 bytes from [0x1014] +0x108.
  The `lw` at 0xd8c3190 loads 4 bytes from ([0x1014] + ([[0x1014]+264] << 0x2)) +0x4.
  The `sw` at 0xd8c31a4 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd8c318c calls ioctl with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3ff, a2=sp-20, a3=a0 at entry (arg0).
  The `beq` branch at 0xd8c3120 targets 0xd8c3134, is taken when v1(=[[0x1014]+276]) == 0, and falls through when v1(=[[0x1014]+276]) != 0.
  The `bne` branch at 0xd8c312c targets 0xd8c313c, is taken when t7(=[[[0x1014]+276]+196]) != 0, and falls through when t7(=[[[0x1014]+276]+196]) == 0.
  The `beq` branch at 0xd8c3134 targets 0xd8c31a8 and is always taken.
  The `blez` branch at 0xd8c313c targets 0xd8c3154, is taken when a3(=a0) <= 0 (signed), and falls through when a3(=a0) > 0 (signed).
  The `bltz` branch at 0xd8c3144 targets 0xd8c3154, is taken when t8(=a1) < 0 (signed), and falls through when t8(=a1) >= 0 (signed).
  The `bnel` branch at 0xd8c314c targets 0xd8c3160, is taken when at(?) != 0, and falls through when at(?) == 0; its branch-likely delay slot `lw t9,204(v1)` at 0xd8c3150 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c3154 targets 0xd8c31a8 and is always taken.
  The return at 0xd8c31b0 has v0 = one of 0x0, 0x5, 0x6.
  The instructions from 0xd8c315c to 0xd8c315c are not reached by any path from the entry, and their branches are not listed.

- `glXDestroyGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c31b8 (o32).
  Inferred: it tears down the interest record for the drawable in its second argument and writes fixed-size
  entries at the pointer the word at +0x6c of its first argument holds.
  Its memory writes land in its first argument's structure, the buffer entry, the record returned by
  `__glXAddDrawableInterest`, and its frame, and the body never names a fixed device location.
  The `jalr` at 0xd8c31dc calls `__glXSetupForCommand` with all four argument registers; a zero result
  sends the routine to the epilogue (the `beq` at 0xd8c31e8), and the byte it returns is saved at frame +0x27
  in the delay slot (the `sb` at 0xd8c31ec).
  With a zero second argument the epilogue hands back that nonzero result (the `beql` at 0xd8c31f4); with a
  nonzero one, the add, remove and free calls run in that order (the `jalr` at 0xd8c3200, 0xd8c3218 and
  0xd8c322c), the last two on the record the add call returned.
  Inferred: the committed note for the add call describes a lookup that bumps the count of an existing record
  for the supplied drawable or allocates one, which is why the second argument is treated as the drawable.
  A nonzero word at +0x4d0 gates a call through offset 0 of that word with the first argument (the `jalr` at
  0xd8c324c); a later call through offset 4, with 0x10 as second argument, needs the same word to stay nonzero
  (the `beql` at 0xd8c32dc and the `jalr` at 0xd8c32ec).
  A comparison of the word at +0x70 against the word at +0x6c plus 0x10, as unsigned values (the `beql` at
  0xd8c3268), picks the path: at or above the sum, the word at +0x6c is copied into +0x64 from the delay slot
  (the `sw` at 0xd8c326c); below it, `_XFlush` runs first (the `jalr` at 0xd8c3278) and the same copy follows
  (the `sw` at 0xd8c3288).
  Inferred: that comparison is a room check, because the entry written next moves the pointer by 0x10.
  The entry at the old pointer P has its setup byte at P+0 (the `sb` at 0xd8c32cc, which overwrites the 0x10
  that the `sb` at 0xd8c3298 placed there), 0x10 at P+1 (the `sb` at 0xd8c32c0), halfword 4 at P+2 (the `sh` at
  0xd8c3294), the word 0x10003 at P+4 (the `sw` at 0xd8c32c4), zero at P+8 (the `sw` at 0xd8c32c8) and the second
  argument at P+0xc (the `sw` at 0xd8c32d4).
  Last, the pointer at +0x6c is raised by 0x10 (the `sw` at 0xd8c32b0), the word at +0x60 by one (the `sw` at
  0xd8c32b4), and the word at +0x7c, when nonzero, is called with the first argument (the `beql` at 0xd8c3300
  and the `jalr` at 0xd8c3308).
  Unknown: how the consumer of the entry reads the word 0x10003 at P+4; the bundle has no linked entry for that word.
  What comes back: zero from the setup-zero exit (`beq` at 0xd8c31e8), the setup call's own nonzero result when the second
  argument is zero (`beql` at 0xd8c31f4), and the result of the callee behind the +0x7c word when that word is set (`jalr` at 0xd8c3308).
  Unknown: the routines reached through slots 0 and 4 of the +0x4d0 table and through the +0x7c word; no callee note covers
  them, and the code that fills the table would settle them.
  Evidence grade: inferred.

- `glXDestroyGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c31b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8c31b8-0xd8c3328 (368 bytes).
  It occupies 368 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8c3234, `lw` at 0xd8c32d8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8c3240, `lw` at 0xd8c3258, `lw` at 0xd8c3284.
  The `lw` at 0xd8c3244 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8c325c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8c326c, `sw` at 0xd8c3288.
  The `sh` at 0xd8c3294 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8c3298, `sb` at 0xd8c32cc.
  The `lw` at 0xd8c329c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8c32b0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8c32b4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8c32c0 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8c32c4 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8c32c8 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd8c32d4 stores 4 bytes to [a0+108] +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8c32e0, `lw` at 0xd8c32f8.
  The `lw` at 0xd8c32e4 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8c31dc calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8c3200 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3218 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c322c calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c324c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3278 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c32ec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd8c3308 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8c31e8 targets 0xd8c3314, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` branch at 0xd8c31f4 targets 0xd8c3318, is taken when a0(=a1) == 0, and falls through when a0(=a1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8c31f8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c323c targets 0xd8c325c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8c3240 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c3268 targets 0xd8c328c, is taken when t6(=[a0+112]) >= t7(=[a0+108]+16) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8c326c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c32dc targets 0xd8c32fc, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8c32e0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c3300 targets 0xd8c3318, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8c3304 runs only when taken and is annulled on fall-through.
  The return at 0xd8c3320 has v0 = one of ret(__glXSetupForCommand), [a0+124], ?.

- `glXCreateGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c3328 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8c3328-0xd8c36d0 (936 bytes).
  It occupies 936 bytes.
  The `lw` at 0xd8c33b0 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd8c33ec stores 4 bytes to ret(__glXAddDrawableInterest) +0xc.
  The `sw` at 0xd8c33f0 stores 4 bytes to ret(__glXAddDrawableInterest) +0x10.
  The `sb` at 0xd8c3400 stores 1 byte to ret(__glXAddDrawableInterest) +0x20.
  The `sw` at 0xd8c3404 stores 4 bytes to ret(__glXAddDrawableInterest) +0x2c.
  The `sw` at 0xd8c3408 stores 4 bytes to ret(__glXAddDrawableInterest) +0x30.
  The `sw` at 0xd8c340c stores 4 bytes to ret(__glXAddDrawableInterest) +0x8.
  The `sw` at 0xd8c3454 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0xd8f0d24, including `lw` at 0xd8c3458, `lw` at 0xd8c34bc, `lw` at 0xd8c3510.
  The `sw` at 0xd8c34ac stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x4.
  The `sw` at 0xd8c34b8 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x8.
  The `sw` at 0xd8c350c stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0xc.
  The `sw` at 0xd8c3560 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x10.
  The `sw` at 0xd8c357c stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x14.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8c3580, `lw` at 0xd8c3668.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8c3588, `lw` at 0xd8c35a8, `lw` at 0xd8c35dc.
  The `lw` at 0xd8c3590 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8c35ac loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8c35bc, `sw` at 0xd8c35e0.
  The `sh` at 0xd8c35ec stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8c35f0, `sb` at 0xd8c3624.
  The `lw` at 0xd8c35f4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8c3608 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8c360c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8c3618 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8c361c stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8c3620 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd8c362c stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8c3634 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8c363c stores 4 bytes to [a0+108] +0x14.
  The `lw` at 0xd8c3640 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x4.
  The `sw` at 0xd8c3644 stores 4 bytes to [a0+108] +0x18.
  The `lw` at 0xd8c3648 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x8.
  The `sw` at 0xd8c364c stores 4 bytes to [a0+108] +0x1c.
  The `lw` at 0xd8c3650 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0xc.
  The `sw` at 0xd8c3654 stores 4 bytes to [a0+108] +0x20.
  The `lw` at 0xd8c3658 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x10.
  The `sw` at 0xd8c365c stores 4 bytes to [a0+108] +0x24.
  The `lw` at 0xd8c3660 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x14.
  The `sw` at 0xd8c3664 stores 4 bytes to [a0+108] +0x28.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8c3670, `lw` at 0xd8c3688.
  The `lw` at 0xd8c3674 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8c3358 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8c3398 calls __glXInitializeVideoLibrary with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c33b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c33d0 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3418 calls __glXCreateVideoSourcePrivate with a0=ret(__glXAddDrawableInterest)+44, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3434 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3470 calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=0x4.
  The `jalr` at 0xd8c348c calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c34d0 calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=0x6.
  The `jalr` at 0xd8c34ec calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3528 calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=0x7.
  The `jalr` at 0xd8c3544 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c356c calls videoPackingToInternalFormat [0xd8c36d0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3598 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c35cc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c367c calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd8c3698 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c36ac calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8c3364 targets 0xd8c3374, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd8c336c targets 0xd8c36bc and is always taken.
  The `beq` branch at 0xd8c337c targets 0xd8c3394, is taken when v0(?) == at(=0x2), and falls through when v0(?) != at(=0x2).
  The `beq` branch at 0xd8c3384 targets 0xd8c3394, is taken when v0(?) == at(=0x5), and falls through when v0(?) != at(=0x5).
  The `beq` branch at 0xd8c338c targets 0xd8c36bc and is always taken.
  The `bne` branch at 0xd8c33a0 targets 0xd8c33b0, is taken when v0(=ret(__glXInitializeVideoLibrary)) != 0, and falls through when v0(=ret(__glXInitializeVideoLibrary)) == 0.
  The `beq` branch at 0xd8c33a8 targets 0xd8c36bc and is always taken.
  The `bne` branch at 0xd8c33dc targets 0xd8c33ec, is taken when v0(=ret(__glXAddDrawableInterest)) != 0, and falls through when v0(=ret(__glXAddDrawableInterest)) == 0.
  The `beq` branch at 0xd8c33e4 targets 0xd8c36bc and is always taken.
  The `bne` branch at 0xd8c3424 targets 0xd8c3448, is taken when v0(=ret(__glXCreateVideoSourcePrivate)) != 0, and falls through when v0(=ret(__glXCreateVideoSourcePrivate)) == 0.
  The `beq` branch at 0xd8c3440 targets 0xd8c36bc and is always taken.
  The `bgez` branch at 0xd8c347c targets 0xd8c34a0, is taken when v0(=ret(?)) >= 0 (signed), and falls through when v0(=ret(?)) < 0 (signed).
  The `beq` branch at 0xd8c3498 targets 0xd8c36bc and is always taken.
  The `bgez` branch at 0xd8c34dc targets 0xd8c3500, is taken when v0(=ret(?)) >= 0 (signed), and falls through when v0(=ret(?)) < 0 (signed).
  The `beq` branch at 0xd8c34f8 targets 0xd8c36bc and is always taken.
  The `bgez` branch at 0xd8c3534 targets 0xd8c3558, is taken when v0(=ret(?)) >= 0 (signed), and falls through when v0(=ret(?)) < 0 (signed).
  The `beq` branch at 0xd8c3550 targets 0xd8c36bc and is always taken.
  The `beql` branch at 0xd8c3584 targets 0xd8c35ac, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8c3588 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c35b8 targets 0xd8c35e4, is taken when t1(=[a0+112]) >= t2(=[a0+108]+44) (unsigned), and falls through when t1(=[a0+112]) < t2(=[a0+108]+44) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8c35bc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c366c targets 0xd8c368c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8c3670 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c3690 targets 0xd8c36a4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The return at 0xd8c36c8 has v0 = one of 0x0, ?.

- `glXCreateGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c3328 (936 bytes).
  Evidence grade: inferred.
  It calls `__glXSetupForCommand` at 0xd8c3358. It tests a value against 2 and 5, calls `__glXInitializeVideoLibrary` at 0xd8c3398, adds a drawable interest at 0xd8c33d0, and creates a video source private record with `__glXCreateVideoSourcePrivate` at 0xd8c3418. `__glXRemoveDrawableInterest` is called five times. Four calls (0xd8c3434, 0xd8c348c, 0xd8c34ec, 0xd8c3544) sit on paths after a failed result (a zero return from the create call, or a negative return from an unnamed call), so they look like failure cleanup. The fifth (0xd8c36ac) comes after the `_XFlush` at 0xd8c35cc. Role (from name): the call at 0xd8c356c goes through the pointer at 0xd8c36d0 and is named `videoPackingToInternalFormat`, which suggests a packing-mode conversion; the facts show only the call and its symbol name.
  Reviewed: 2026-11-12

- `glXSwapIntervalSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c38f8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8c38f8-0xd8c3acc (468 bytes).
  It occupies 468 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd8c391c, `lw` at 0xd8c3968.
  The `lw` at 0xd8c3924 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8c393c loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd8c3950 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8c3954 loads 4 bytes from [[0x1014]+276] +0xcc.
  The `lw` at 0xd8c3974 loads 4 bytes from [0x1014] +0x108.
  The `lw` at 0xd8c3984 loads 4 bytes from ([0x1014] + ([[0x1014]+264] << 0x2)) +0x4.
  The `lw` at 0xd8c39ac loads 4 bytes from [[0x1014]+276] +0x3c.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8c39c0, `lw` at 0xd8c3a64.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8c39cc, `lw` at 0xd8c39e4, `lw` at 0xd8c3a10.
  The `lw` at 0xd8c39d0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8c39e8 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8c39f8, `sw` at 0xd8c3a14.
  The `sh` at 0xd8c3a20 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8c3a24, `sb` at 0xd8c3a50.
  The `lw` at 0xd8c3a28 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8c3a3c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8c3a40 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sb` at 0xd8c3a48 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `sw` at 0xd8c3a4c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd8c3a58 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8c3a60 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8c3a6c, `lw` at 0xd8c3a84.
  The `lw` at 0xd8c3a70 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8c3980 calls ioctl with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3ee, a2=sp-32, a3=0x1000.
  The `jalr` at 0xd8c39b4 calls __glXSetupForCommand with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1000.
  The `jalr` at 0xd8c39d8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3a04 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3a78 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd8c3a94 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3aa8 calls XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8c3928 targets 0xd8c3938, is taken when v1(=[[0x1014]+276]) != 0, and falls through when v1(=[[0x1014]+276]) == 0.
  The `beq` branch at 0xd8c3930 targets 0xd8c3ab8 and is always taken.
  The `bgtzl` branch at 0xd8c3938 targets 0xd8c394c, is taken when t7(=a0) > 0 (signed), and falls through when t7(=a0) <= 0 (signed); its branch-likely delay slot `lw t8,196(v1)` at 0xd8c393c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c3940 targets 0xd8c3ab8 and is always taken.
  The `beql` branch at 0xd8c394c targets 0xd8c3998, is taken when t8(=[[[0x1014]+276]+196]) == 0, and falls through when t8(=[[[0x1014]+276]+196]) != 0; its branch-likely delay slot `lw s0,216(v1)` at 0xd8c3950 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c398c targets 0xd8c3ab8 and is always taken.
  The `bne` branch at 0xd8c3998 targets 0xd8c39a8, is taken when s0(=[[[0x1014]+276]+216]) != 0, and falls through when s0(=[[[0x1014]+276]+216]) == 0.
  The `beq` branch at 0xd8c39a0 targets 0xd8c3ab8 and is always taken.
  The `beql` branch at 0xd8c39c8 targets 0xd8c39e8, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8c39cc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c39f4 targets 0xd8c3a18, is taken when t5(=[[[[0x1014]+276]+216]+112]) >= t6(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t5(=[[[[0x1014]+276]+216]+112]) < t6(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8c39f8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c3a68 targets 0xd8c3a88, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8c3a6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c3a8c targets 0xd8c3aa0, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  The return at 0xd8c3ac4 has v0 = one of 0x0, 0x5, 0x6.
  The instructions from 0xd8c3948 to 0xd8c3948 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8c3994 to 0xd8c3994 are not reached by any path from the entry, and their branches are not listed.

- `glXSwapIntervalSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c38f8 (468 bytes).
  Evidence grade: inferred.
  It reads a per-screen record through the pointer at absolute 0x1014. The `ioctl` at 0xd8c3980 takes its file descriptor from that table and uses the constant request 0x3ee with a stack buffer and 0x1000; it runs only when a word at +0xc4 of the record at +0x114 is nonzero. It calls `__glXSetupForCommand` at 0xd8c39b4 on a display taken from that record (+0xd8) only when that display pointer is nonzero, then flushes with `_XFlush` (0xd8c3a04, behind a buffer-space check) and `XFlush` (0xd8c3aa8). The ioctl-based path is consistent with the name, which suggests a swap interval setting, but the facts do not name the request.
  Reviewed: 2026-11-12

- `glXCreateGLXPixmapWithConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c5ffc (o32).
  Inferred: the word at +0x6c of the context in `a0` locates a request buffer that the routine fills, since the stores land through that cursor, it advances by 0x1c (`sw` at 0xd8c60bc), and the cursor plus 0x1c is compared with the limit at +0x70 before `_XFlush` is called.
  A zero result from `__glXSetupForCommand` (the `jalr` at 0xd8c6024, whose byte the `sb` at 0xd8c6034 parks at entry sp -0xd) ends the routine at once with zero, through the `bne` at 0xd8c6030 and the `beq` at 0xd8c6038.
  Table slot +0x0 is used first when the table pointer at +0x4d0 is set (`jalr` at 0xd8c6054, with the context as the first argument); the unsigned test at `beql` 0xd8c6070 then compares the word at +0x70 with the cursor plus 0x1c, and below that bound `_XFlush` (`jalr` at 0xd8c6080) precedes the cursor's store at +0x64 (`sw` at 0xd8c6094).
  Fields then land at the cursor: halfword 0x7 at +0x2 (`sh` at 0xd8c60a0), byte 0x10 at +0x0 and +0x1 (`sb` at 0xd8c60a4 and 0xd8c60cc), word 0x10006 at +0x4 (`sw` at 0xd8c60d0), the parked byte over +0x0 (`sb` at 0xd8c60d4), words from entry a1 at +0x24 and +0x48 placed at +0xc and +0x10, and entry a2 at +0x14; the context's +0x6c word gains 0x1c (`sw` at 0xd8c60bc) and its +0x60 word gains 1 (`sw` at 0xd8c60c0).
  Two callbacks follow: `jalr` at 0xd8c60fc calls the pointer at +0x2c with the context as the first argument (a1 still holds 0x10 and a2 the entry a1 at that call), and its result lands at +0x18 of the cursor (`sw` at 0xd8c6110); `jalr` at 0xd8c6128 calls table slot +0x4 when set, and `jalr` at 0xd8c6144 calls the pointer at +0x7c when that word is set.
  The return is the +0x2c result read back from entry -0xc by the `lw` at 0xd8c6140 or 0xd8c6150, except zero on the setup-failure path.
  Unknown: the handlers behind table slots +0x0 and +0x4 and behind the pointers at +0x2c and +0x7c; no callee notes cover them, and a reader of the context-table setup would name them.
  Unknown: whether the bytes written at the cursor leave the client, since no linked register row covers this routine; a trace of the send path would decide it.
  Evidence grade: inferred.

- `glXCreateGLXPixmapWithConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c5ffc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8c5ffc-0xd8c6168 (364 bytes).
  It occupies 364 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8c6040, `lw` at 0xd8c6114.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8c6048, `lw` at 0xd8c6060, `lw` at 0xd8c608c.
  The `lw` at 0xd8c604c loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8c6064 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8c6094 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8c60a0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8c60a4, `sb` at 0xd8c60d4.
  The `lw` at 0xd8c60a8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8c60bc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8c60c0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8c60cc stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8c60d0 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8c60d8 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd8c60e0 stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd8c60e4 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd8c60e8 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8c60f0 stores 4 bytes to [a0+108] +0x14.
  The `lw` at 0xd8c60f8 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd8c6110 stores 4 bytes to [a0+108] +0x18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8c611c, `lw` at 0xd8c6134.
  The `lw` at 0xd8c6120 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8c6024 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8c6054 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8c6080 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c60fc calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xd8c6128 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8c6144 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8c6030 targets 0xd8c6040, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd8c6038 targets 0xd8c6154 and is always taken.
  The `beql` branch at 0xd8c6044 targets 0xd8c6064, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s0)` at 0xd8c6048 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c6070 targets 0xd8c6094, is taken when t6(=[a0+112]) >= t7(=[a0+108]+28) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+28) (unsigned); its branch-likely delay slot `lw a2,60(sp)` at 0xd8c6074 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c6118 targets 0xd8c6138, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8c611c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c613c targets 0xd8c6154, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,44(sp)` at 0xd8c6140 runs only when taken and is annulled on fall-through.
  The return at 0xd8c6160 has v0 = one of 0x0, ret(?).

- `__glx_SelectBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d001c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d001c-0xd8d0164 (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0xd8d002c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8d0048 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8d004c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8d005c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8d0070, `lw` at 0xd8d010c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8d007c, `lw` at 0xd8d0094, `lw` at 0xd8d00c0.
  The `lw` at 0xd8d0080 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8d0098 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8d00a8, `sw` at 0xd8d00c4.
  The `sh` at 0xd8d00cc stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8d00d0, `sb` at 0xd8d00f8.
  The `lw` at 0xd8d00d4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8d00e8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8d00ec stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd8d00f0 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd8d00f4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8d00fc loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8d0100 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd8d0108 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8d0114, `lw` at 0xd8d012c.
  The `lw` at 0xd8d0118 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `sw` at 0xd8d014c stores 4 bytes to [[0x1014]+276] +0x48.
  The `jalr` at 0xd8d0068 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d0088 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d00b4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d0120 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d013c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8d0050 targets 0xd8d0150, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8d0058 targets 0xd8d0148, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd8d0078 targets 0xd8d0098, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8d007c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d00a4 targets 0xd8d00c8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8d00a8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d0110 targets 0xd8d0130, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d0114 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d0134 targets 0xd8d014c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw t8,44(sp)` at 0xd8d0138 runs only when taken and is annulled on fall-through.
  The return at 0xd8d015c has v0 = one of [[[0x1014]+276]+216], ?.

- `__glx_FeedbackBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d0164 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d0164-0xd8d02b8 (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0xd8d0174 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8d0194 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8d0198 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8d01a8 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8d01bc, `lw` at 0xd8d0260.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8d01c8, `lw` at 0xd8d01e0, `lw` at 0xd8d020c.
  The `lw` at 0xd8d01cc loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8d01e4 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8d01f4, `sw` at 0xd8d0210.
  The `sh` at 0xd8d0218 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8d021c, `sb` at 0xd8d0244.
  The `lw` at 0xd8d0220 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8d0234 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8d0238 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd8d023c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd8d0240 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8d0248 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8d024c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd8d0254 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8d025c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8d0268, `lw` at 0xd8d0280.
  The `lw` at 0xd8d026c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `sw` at 0xd8d02a0 stores 4 bytes to [[0x1014]+276] +0x44.
  The `jalr` at 0xd8d01b4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d01d4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d0200 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d0274 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d0290 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8d019c targets 0xd8d02a4, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8d01a4 targets 0xd8d029c, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd8d01c4 targets 0xd8d01e4, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8d01c8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d01f0 targets 0xd8d0214, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8d01f4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d0264 targets 0xd8d0284, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d0268 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d0288 targets 0xd8d02a0, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw t0,48(sp)` at 0xd8d028c runs only when taken and is annulled on fall-through.
  The return at 0xd8d02b0 has v0 = one of [[[0x1014]+276]+216], ?.

- `__glx_ReadPixels` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d25dc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d25dc-0xd8d2868 (652 bytes).
  It occupies 652 bytes.
  The `lw` at 0xd8d25ec loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8d2610 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8d2614 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8d2624 loads 4 bytes from [[0x1014]+276] +0x4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8d2638, `lw` at 0xd8d2734, `lw` at 0xd8d2780.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8d2644, `lw` at 0xd8d265c, `lw` at 0xd8d2688.
  The `lw` at 0xd8d2648 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8d2660 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8d2670, `sw` at 0xd8d268c.
  The `sh` at 0xd8d2694 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8d2698, `sb` at 0xd8d26c4.
  The `lw` at 0xd8d269c loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8d26b0 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8d26b4 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd8d26b8 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd8d26bc stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8d26c8 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8d26d4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd8d26e0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8d26e8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd8d26f0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd8d26f8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x14.
  The `sw` at 0xd8d2700 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x18.
  The `sw` at 0xd8d2708 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x1c.
  The `lbu` at 0xd8d270c loads 1 byte from [[0x1014]+276] +0x4c.
  The `sb` at 0xd8d2710 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x21.
  The `sb` at 0xd8d2714 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x20.
  The `lw` at 0xd8d2770 loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd8d2788 stores 4 bytes to [[0x1014]+276] +0xb0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8d2820, `lw` at 0xd8d2838.
  The `lw` at 0xd8d2824 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8d2630 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d2650 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d267c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d271c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-48, a2=0x0, a3=0x0.
  The `jalr` at 0xd8d2744 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d2768 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d279c calls _XRead with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd8d27c4 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d27f8 calls __glXEmptyImage with a0=[[0x1014]+276], a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xd8d280c calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d282c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d2848 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8d2618 targets 0xd8d2858, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd8d261c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d2620 targets 0xd8d2854, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd8d2640 targets 0xd8d2660, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8d2644 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d266c targets 0xd8d2690, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+36) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+36) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd8d2670 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d2730 targets 0xd8d281c, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd8d2734 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d2754 targets 0xd8d278c, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd8d277c targets 0xd8d281c, is taken when t5(=[[[0x1014]+276]+176]) != 0, and falls through when t5(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd8d2780 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d2784 targets 0xd8d2818 and is always taken.
  The `beq` branch at 0xd8d27b4 targets 0xd8d27d0, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0.
  The `beql` branch at 0xd8d281c targets 0xd8d283c, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d2820 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d2840 targets 0xd8d2858, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd8d2844 runs only when taken and is annulled on fall-through.
  The return at 0xd8d2860 has v0 = one of ?, [[[[0x1014]+276]+216]+124].

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at `0xd8d2e68`

`isNotProxy` (932 bytes, o32, `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`) loads a0+0x108 and a0+0x24 (0xd8d2e80, 0xd8d2e90) and returns 0 at once unless the a0+0x24 field is below 0x40 (0xd8d2e98). It then makes a call at 0xd8d2eb4 with second argument 0x802 and a string address built from the global pointer, a call at 0xd8d2edc with second and third arguments 2 and 5, and a call at 0xd8d2f14 with second argument 0x65 and third 0, apparently `open`, `fcntl` and `ioctl` from their argument patterns. After each of these it returns 0 on a negative result (and, for the 0x65 request, on a result that is not above zero), closing the descriptor first where it is open. It also returns 0 after a close when the 0x65 result is not above the a0+0x24 field (compare at 0xd8d2f58). Otherwise it makes a second call at 0xd8d2f8c with second argument 0x66 and a stack buffer at sp+0x54, closes the descriptor, and calls at 0xd8d2fd8 with second argument 0x3a (':') on the pointer loaded from offset 0x80 of the word at a0+0x108, apparently `strchr`. A null result returns 0. Otherwise it compares the text from that hit with stack bytes at sp+0x3c, returning 1 on reaching '.' (0x2e, tested at 0xd8d301c) or a zero byte and 0 on a mismatch; it returns at 0xd8d3054. Role (from name): a check that a device is not a proxy; the callee names, the ioctl meanings and the exact predicate are not established, so the role stays partly open. Grade: inferred.

Reviewed: 2026-11-12

- `isNotProxy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d2e68 (o32).
  The routine reads a word at +0x24 of its first argument and compares it with 0x40 (branch at 0xd8d2e98). It then opens a device path (call at 0xd8d2eb4, path constant at 0xd8dd42c), runs fcntl (0xd8d2edc) and two ioctls with requests 0x65 and 0x66 (0xd8d2f14, 0xd8d2f8c), and calls close at five sites (0xd8d2ef4, 0xd8d2f2c, 0xd8d2f68, 0xd8d2fa4, 0xd8d2fbc). A strchr for ':' (0xd8d2fd8) is followed by a character scan, and the single return gives 0 or 1 (0xd8d3054). The name suggests a proxy test, but the ioctl meanings are not in the facts, so the purpose is partly open.
  Grade: inferred.
  Reviewed: 2026-11-12

- `isNotProxy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d2e68 (932 bytes).
  Evidence grade: inferred.
  It opens a fixed path string (0xd8dd42c) at 0xd8d2eb4, calls `fcntl` at 0xd8d2edc, and makes two `ioctl` calls (0xd8d2f14, 0xd8d2f8c). It closes the descriptor on several exits and calls `strchr` at 0xd8d2fd8. This looks like a probe of a device node, but the name's meaning (a proxy test of some kind) is not established by the facts.
  Reviewed: 2026-11-12

- `__glXFindFBConfigFromVid` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d320c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d320c-0xd8d32d4 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd8d3258 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd8d3264 loads 4 bytes from ret(__glXInitialize) +0x20.
  The `lw` at 0xd8d327c loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc.
  The `lw` at 0xd8d3284 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10.
  The `lw` at 0xd8d32a0 loads 4 bytes from ?.
  The `jalr` at 0xd8d3230 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd8d3240 targets 0xd8d3250, is taken when v0(=ret(__glXInitialize)) != 0, and falls through when v0(=ret(__glXInitialize)) == 0.
  The `beq` branch at 0xd8d3248 targets 0xd8d32c4 and is always taken.
  The `bltz` branch at 0xd8d3250 targets 0xd8d3268, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bnel` branch at 0xd8d3260 targets 0xd8d3274, is taken when a1 < t7(=[a0+136]) (signed), and falls through when a1 >= t7(=[a0+136]) (signed); its branch-likely delay slot `lw t8,32(v0)` at 0xd8d3264 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d3268 targets 0xd8d32c4 and is always taken.
  The `bnel` branch at 0xd8d3280 targets 0xd8d3294, is taken when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0, and falls through when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0; its branch-likely delay slot `lw v0,16(a0)` at 0xd8d3284 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d3288 targets 0xd8d32c4 and is always taken.
  The `bltzl` branch at 0xd8d3298 targets 0xd8d32c4, is taken when v0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]-1) < 0 (signed), and falls through when v0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]-1) >= 0 (signed); its branch-likely delay slot `or v0,zero,zero` at 0xd8d329c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d32a8 targets 0xd8d32b8, is taken when a2 != t0(?), and falls through when a2 == t0(?).
  The `beq` branch at 0xd8d32b0 targets 0xd8d32c4 and is always taken.
  The `bgez` branch at 0xd8d32b8 targets 0xd8d32a0, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The return at 0xd8d32cc has v0 = one of 0x0, ?.
  The instructions from 0xd8d3270 to 0xd8d3270 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d3290 to 0xd8d3290 are not reached by any path from the entry, and their branches are not listed.

- `__glXFindFBConfig` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d32d4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d32d4-0xd8d339c (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd8d3320 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd8d332c loads 4 bytes from ret(__glXInitialize) +0x20.
  The `lw` at 0xd8d3344 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc.
  The `lw` at 0xd8d334c loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10.
  The `lw` at 0xd8d3368 loads 4 bytes from ?.
  The `jalr` at 0xd8d32f8 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd8d3308 targets 0xd8d3318, is taken when v0(=ret(__glXInitialize)) != 0, and falls through when v0(=ret(__glXInitialize)) == 0.
  The `beq` branch at 0xd8d3310 targets 0xd8d338c and is always taken.
  The `bltz` branch at 0xd8d3318 targets 0xd8d3330, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bnel` branch at 0xd8d3328 targets 0xd8d333c, is taken when a1 < t7(=[a0+136]) (signed), and falls through when a1 >= t7(=[a0+136]) (signed); its branch-likely delay slot `lw t8,32(v0)` at 0xd8d332c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d3330 targets 0xd8d338c and is always taken.
  The `bnel` branch at 0xd8d3348 targets 0xd8d335c, is taken when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0, and falls through when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0; its branch-likely delay slot `lw v0,16(a0)` at 0xd8d334c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d3350 targets 0xd8d338c and is always taken.
  The `bltzl` branch at 0xd8d3360 targets 0xd8d338c, is taken when v0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]-1) < 0 (signed), and falls through when v0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]-1) >= 0 (signed); its branch-likely delay slot `or v0,zero,zero` at 0xd8d3364 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d3370 targets 0xd8d3380, is taken when a2 != t0(?), and falls through when a2 == t0(?).
  The `beq` branch at 0xd8d3378 targets 0xd8d338c and is always taken.
  The `bgez` branch at 0xd8d3380 targets 0xd8d3368, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The return at 0xd8d3394 has v0 = one of 0x0, ?.
  The instructions from 0xd8d3338 to 0xd8d3338 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d3358 to 0xd8d3358 are not reached by any path from the entry, and their branches are not listed.

- `GetBoardName` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d339c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d339c-0xd8d34b0 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0xd8d33b8 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0xd8d33c8 loads 4 bytes from ([a0+32] + (a1 << 0x5)) +0x0.
  The `jalr` at 0xd8d33ec calls open with a0=0xd8dd4bc, a1=0x802, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d342c calls ioctl with a0=ret(open), a1=0x66, a2=sp-20, a3=?.
  The `jalr` at 0xd8d3444 calls close with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d3460 calls strlen with a0=sp-60, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d347c calls strncpy with a0=a2 at entry (arg2), a1=sp-60, a2=ret(strlen), a3=?.
  The `jalr` at 0xd8d3490 calls close with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8d33d0 targets 0xd8d33e0, is taken when v1(=[([a0+32] + (a1 << 0x5))]) < 0x40 (signed), and falls through when v1(=[([a0+32] + (a1 << 0x5))]) >= 0x40 (signed).
  The `beq` branch at 0xd8d33d8 targets 0xd8d34a0 and is always taken.
  The `bgez` branch at 0xd8d33fc targets 0xd8d340c, is taken when v0(=ret(open)) >= 0 (signed), and falls through when v0(=ret(open)) < 0 (signed).
  The `beq` branch at 0xd8d3404 targets 0xd8d34a0 and is always taken.
  The `bgez` branch at 0xd8d3434 targets 0xd8d3458, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0xd8d3450 targets 0xd8d34a0 and is always taken.
  The return at 0xd8d34a8 has v0 = one of 0x0, 0x1.

- `GetBoardName` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d339c (1528 bytes).
  Evidence grade: inferred.
  It opens a fixed path string (0xd8dd4bc) at 0xd8d33ec, runs `ioctl` on the descriptor at 0xd8d342c, and closes it at 0xd8d3444 and 0xd8d3490. It calls `strlen` at 0xd8d3460 on a stack buffer at sp-60 and copies the result into the caller's buffer (argument 2) with `strncpy` at 0xd8d347c. The ioctl request and the exact string it returns are not named in the facts.
  Reviewed: 2026-11-12

- `glXGetCurrentDisplay` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d34b0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d34b0-0xd8d34d4 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0xd8d34b0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8d34b4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8d34bc loads 4 bytes from [[0x1014]+276] +0xd8.
  The `bnel` branch at 0xd8d34b8 targets 0xd8d34cc, is taken when v1(=[[0x1014]+276]) != 0, and falls through when v1(=[[0x1014]+276]) == 0; its branch-likely delay slot `lw v0,216(v1)` at 0xd8d34bc runs only when taken and is annulled on fall-through.
  The return at 0xd8d34c0 has v0 = 0x0.
  The return at 0xd8d34cc has v0 = [[[0x1014]+276]+216].
  The instructions from 0xd8d34c8 to 0xd8d34c8 are not reached by any path from the entry, and their branches are not listed.

- `glXGetFBConfigAttrib` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d34d4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d34d4-0xd8d3888 (948 bytes).
  It occupies 948 bytes.
  The `lw` at 0xd8d3508 loads 4 bytes from a1 (arg1 at entry) +0x94.
  The `lw` at 0xd8d3544 loads 4 bytes from table(0xd8dd678) +0x0.
  The `lw` at 0xd8d356c loads 4 bytes from table(0xd8dd710) +0x0.
  The `lw` at 0xd8d357c loads 4 bytes from a1 (arg1 at entry) +0x48.
  38 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xd8d3588, `sw` at 0xd8d3598, `sw` at 0xd8d35a8.
  The `lw` at 0xd8d358c loads 4 bytes from a1 (arg1 at entry) +0x6c.
  The `lw` at 0xd8d359c loads 4 bytes from a1 (arg1 at entry) +0x9c.
  The `lbu` at 0xd8d35ac loads 1 byte from a1 (arg1 at entry) +0x4e.
  The `lbu` at 0xd8d35bc loads 1 byte from a1 (arg1 at entry) +0x4f.
  The `lw` at 0xd8d35cc loads 4 bytes from a1 (arg1 at entry) +0x98.
  The `lw` at 0xd8d35dc loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `lw` at 0xd8d35ec loads 4 bytes from a1 (arg1 at entry) +0x74.
  The `lw` at 0xd8d35fc loads 4 bytes from a1 (arg1 at entry) +0x78.
  The `lw` at 0xd8d360c loads 4 bytes from a1 (arg1 at entry) +0x7c.
  The `lw` at 0xd8d361c loads 4 bytes from a1 (arg1 at entry) +0x64.
  The `lw` at 0xd8d362c loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lw` at 0xd8d363c loads 4 bytes from a1 (arg1 at entry) +0x54.
  The `lw` at 0xd8d364c loads 4 bytes from a1 (arg1 at entry) +0x58.
  The `lw` at 0xd8d365c loads 4 bytes from a1 (arg1 at entry) +0x5c.
  The `lw` at 0xd8d366c loads 4 bytes from a1 (arg1 at entry) +0x60.
  The `lw` at 0xd8d367c loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lw` at 0xd8d368c loads 4 bytes from a1 (arg1 at entry) +0x28.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x20, including `lw` at 0xd8d369c, `lw` at 0xd8d3774.
  The `lw` at 0xd8d36c4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xd8d36d4 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0xd8d36e4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xd8d36f4 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lw` at 0xd8d3704 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0xd8d3714 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xd8d3724 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0xd8d3734 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lw` at 0xd8d3744 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lw` at 0xd8d3754 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lw` at 0xd8d3764 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `lw` at 0xd8d3784 loads 4 bytes from a1 (arg1 at entry) +0x90.
  The `lw` at 0xd8d37a4 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0xd8d37b4 loads 4 bytes from a1 (arg1 at entry) +0x3c.
  The `lw` at 0xd8d37c4 loads 4 bytes from a1 (arg1 at entry) +0x40.
  The `lbu` at 0xd8d37d4 loads 1 byte from a1 (arg1 at entry) +0xa0.
  The `ldc1` at 0xd8d37dc loads 8 bytes from a1 (arg1 at entry) +0xa8.
  8 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `swc1` at 0xd8d37ec, `swc1` at 0xd8d3800, `swc1` at 0xd8d3814.
  The `ldc1` at 0xd8d37f0 loads 8 bytes from a1 (arg1 at entry) +0xb0.
  The `ldc1` at 0xd8d3804 loads 8 bytes from a1 (arg1 at entry) +0xb8.
  The `ldc1` at 0xd8d3818 loads 8 bytes from a1 (arg1 at entry) +0xc0.
  The `ldc1` at 0xd8d382c loads 8 bytes from a1 (arg1 at entry) +0xc8.
  The `ldc1` at 0xd8d3840 loads 8 bytes from a1 (arg1 at entry) +0xd0.
  The `ldc1` at 0xd8d3854 loads 8 bytes from a1 (arg1 at entry) +0xd8.
  The `ldc1` at 0xd8d3868 loads 8 bytes from a1 (arg1 at entry) +0xe0.
  The `bne` branch at 0xd8d34e8 targets 0xd8d3514, is taken when a2 < at(=0x8031) (signed), and falls through when a2 >= at(=0x8031) (signed).
  The `beq` branch at 0xd8d34f8 targets 0xd8d3784, is taken when a2 == at(=0x186a0), and falls through when a2 != at(=0x186a0).
  The `beql` branch at 0xd8d3504 targets 0xd8d3798, is taken when a2 == at(=0x186a1), and falls through when a2 != at(=0x186a1); its branch-likely delay slot `lw t1,148(a1)` at 0xd8d3508 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d350c targets 0xd8d3880 and is always taken.
  The `bne` branch at 0xd8d3518 targets 0xd8d3554, is taken when a2 < 0x29 (signed), and falls through when a2 >= 0x29 (signed).
  The `beql` branch at 0xd8d3530 targets 0xd8d3880, is taken when t6(=a2-32779) >= 0x26 (unsigned), and falls through when t6(=a2-32779) < 0x26 (unsigned); its branch-likely delay slot `addiu v0,zero,2` at 0xd8d3534 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d3558 targets 0xd8d3880, is taken when t7(=a2-2) >= 0x27 (unsigned), and falls through when t7(=a2-2) < 0x27 (unsigned); its branch-likely delay slot `addiu v0,zero,2` at 0xd8d355c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d36a8 targets 0xd8d36bc, is taken when t6(=[a1+32]) == 0, and falls through when t6(=[a1+32]) != 0; its branch-likely delay slot `sw zero,0(a3)` at 0xd8d36ac runs only when taken and is annulled on fall-through.
  The return at 0xd8d3584 has v0 = 0x0.
  The return at 0xd8d3594 has v0 = 0x0.
  The return at 0xd8d35a4 has v0 = 0x0.
  The return at 0xd8d35b4 has v0 = 0x0.
  The return at 0xd8d35c4 has v0 = 0x0.
  The return at 0xd8d35d4 has v0 = 0x0.
  The return at 0xd8d35e4 has v0 = 0x0.
  The return at 0xd8d35f4 has v0 = 0x0.
  The return at 0xd8d3604 has v0 = 0x0.
  The return at 0xd8d3614 has v0 = 0x0.
  The return at 0xd8d3624 has v0 = 0x0.
  The return at 0xd8d3634 has v0 = 0x0.
  The return at 0xd8d3644 has v0 = 0x0.
  The return at 0xd8d3654 has v0 = 0x0.
  The return at 0xd8d3664 has v0 = 0x0.
  The return at 0xd8d3674 has v0 = 0x0.
  The return at 0xd8d3684 has v0 = 0x0.
  The return at 0xd8d3694 has v0 = 0x0.
  The return at 0xd8d36b0 has v0 = 0x0.
  The return at 0xd8d36bc has v0 = 0x0.
  The return at 0xd8d36cc has v0 = 0x0.
  The return at 0xd8d36dc has v0 = 0x0.
  The return at 0xd8d36ec has v0 = 0x0.
  The return at 0xd8d36fc has v0 = 0x0.
  The return at 0xd8d370c has v0 = 0x0.
  The return at 0xd8d371c has v0 = 0x0.
  The return at 0xd8d372c has v0 = 0x0.
  The return at 0xd8d373c has v0 = 0x0.
  The return at 0xd8d374c has v0 = 0x0.
  The return at 0xd8d375c has v0 = 0x0.
  The return at 0xd8d376c has v0 = 0x0.
  The return at 0xd8d377c has v0 = 0x0.
  The return at 0xd8d378c has v0 = 0x0.
  The return at 0xd8d379c has v0 = 0x0.
  The return at 0xd8d37ac has v0 = 0x0.
  The return at 0xd8d37bc has v0 = 0x0.
  The return at 0xd8d37cc has v0 = 0x0.
  The return at 0xd8d37e8 has v0 = 0x0.
  The return at 0xd8d37fc has v0 = 0x0.
  The return at 0xd8d3810 has v0 = 0x0.
  The return at 0xd8d3824 has v0 = 0x0.
  The return at 0xd8d3838 has v0 = 0x0.
  The return at 0xd8d384c has v0 = 0x0.
  The return at 0xd8d3860 has v0 = 0x0.
  The return at 0xd8d3874 has v0 = 0x0.
  The return at 0xd8d3880 has v0 = 0x2.
  The instructions from 0xd8d36b8 to 0xd8d36b8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d3794 to 0xd8d3794 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd8d354c uses the jump table at 0xd8dd678 with targets 0xd8d3774, 0xd8d37a4, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d368c, 0xd8d367c, 0xd8d369c, 0xd8d357c, 0xd8d387c, 0xd8d387c, 0xd8d3744, 0xd8d3754, 0xd8d3764, 0xd8d37b4, 0xd8d37c4, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d37d4, 0xd8d37dc, 0xd8d37f0, 0xd8d3804, 0xd8d3818, 0xd8d382c, 0xd8d3840, 0xd8d3854, 0xd8d3868.
  The indirect jump at 0xd8d3574 uses the jump table at 0xd8dd710 with targets 0xd8d358c, 0xd8d359c, 0xd8d387c, 0xd8d35ac, 0xd8d35bc, 0xd8d35cc, 0xd8d35dc, 0xd8d35ec, 0xd8d35fc, 0xd8d360c, 0xd8d361c, 0xd8d362c, 0xd8d363c, 0xd8d364c, 0xd8d365c, 0xd8d366c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d387c, 0xd8d36d4, 0xd8d387c, 0xd8d36c4, 0xd8d36e4, 0xd8d36f4, 0xd8d3704, 0xd8d3714, 0xd8d3724, 0xd8d3734.

- `glXGetFBConfigFltAttribSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d3888 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d3888-0xd8d3994 (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0xd8d38c8 loads 4 bytes from table(0xd8dd7ac) +0x0.
  The `ldc1` at 0xd8d38d8 loads 8 bytes from a1 (arg1 at entry) +0xa8.
  9 such `sdc1` accesses store 8 bytes to a3 (arg3 at entry) +0x0, including `sdc1` at 0xd8d38e4, `sdc1` at 0xd8d38f4, `sdc1` at 0xd8d3904.
  The `ldc1` at 0xd8d38e8 loads 8 bytes from a1 (arg1 at entry) +0xb0.
  The `ldc1` at 0xd8d38f8 loads 8 bytes from a1 (arg1 at entry) +0xb8.
  The `ldc1` at 0xd8d3908 loads 8 bytes from a1 (arg1 at entry) +0xc0.
  The `ldc1` at 0xd8d3918 loads 8 bytes from a1 (arg1 at entry) +0xc8.
  The `ldc1` at 0xd8d3928 loads 8 bytes from a1 (arg1 at entry) +0xd0.
  The `ldc1` at 0xd8d3938 loads 8 bytes from a1 (arg1 at entry) +0xd8.
  The `ldc1` at 0xd8d3948 loads 8 bytes from a1 (arg1 at entry) +0xe0.
  The `jalr` at 0xd8d3960 calls glXGetFBConfigAttribSGIX with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-4.
  The `beq` branch at 0xd8d38b4 targets 0xd8d3958, is taken when t6(=a2-32809) >= 0x8 (unsigned), and falls through when t6(=a2-32809) < 0x8 (unsigned).
  The `beq` branch at 0xd8d38e0 targets 0xd8d3980 and is always taken.
  The `beq` branch at 0xd8d38f0 targets 0xd8d3980 and is always taken.
  The `beq` branch at 0xd8d3900 targets 0xd8d3980 and is always taken.
  The `beq` branch at 0xd8d3910 targets 0xd8d3980 and is always taken.
  The `beq` branch at 0xd8d3920 targets 0xd8d3980 and is always taken.
  The `beq` branch at 0xd8d3930 targets 0xd8d3980 and is always taken.
  The `beq` branch at 0xd8d3940 targets 0xd8d3980 and is always taken.
  The `beq` branch at 0xd8d3950 targets 0xd8d3980 and is always taken.
  The return at 0xd8d398c has v0 = one of 0x0, ret(glXGetFBConfigAttribSGIX).
  The indirect jump at 0xd8d38d0 uses the jump table at 0xd8dd7ac with targets 0xd8d38d8, 0xd8d38e8, 0xd8d38f8, 0xd8d3908, 0xd8d3918, 0xd8d3928, 0xd8d3938, 0xd8d3948.

- `orderFBConfigSGIXs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d3994 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d3994-0xd8d4d4c (5048 bytes).
  It occupies 5048 bytes.
  The `lw` at 0xd8d39c4 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0xd8d39cc loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xd8d39e4 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0xd8d39e8 loads 4 bytes from a1 (arg1 at entry) +0x78.
  The `lw` at 0xd8d3a00 loads 4 bytes from a1 (arg1 at entry) +0x74.
  The `lw` at 0xd8d3a08 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0xd8d3a20 loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `lw` at 0xd8d3a28 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xd8d3a40 loads 4 bytes from a1 (arg1 at entry) +0x7c.
  The `lw` at 0xd8d3a48 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0xd8d3a84 loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `lw` at 0xd8d3a88 loads 4 bytes from a1 (arg1 at entry) +0x6c.
  The `lbu` at 0xd8d3aac loads 1 byte from a0 (arg0 at entry) +0x4e.
  The `lbu` at 0xd8d3ab0 loads 1 byte from a1 (arg1 at entry) +0x4e.
  The `lw` at 0xd8d3ad4 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `lw` at 0xd8d3ad8 loads 4 bytes from a1 (arg1 at entry) +0x98.
  The `lw` at 0xd8d3afc loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `lw` at 0xd8d3b00 loads 4 bytes from a1 (arg1 at entry) +0x94.
  The `lw` at 0xd8d3b24 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0xd8d3b28 loads 4 bytes from a1 (arg1 at entry) +0x90.
  The `lbu` at 0xd8d3b48 loads 1 byte from a0 (arg0 at entry) +0xa0.
  The `lbu` at 0xd8d3b58 loads 1 byte from a1 (arg1 at entry) +0xa0.
  The `ldc1` at 0xd8d3b64 loads 8 bytes from a1 (arg1 at entry) +0xa8.
  The `ldc1` at 0xd8d3b68 loads 8 bytes from a0 (arg0 at entry) +0xa8.
  The `ldc1` at 0xd8d3b6c loads 8 bytes from a0 (arg0 at entry) +0xb0.
  The `ldc1` at 0xd8d3b70 loads 8 bytes from a1 (arg1 at entry) +0xb0.
  The `ldc1` at 0xd8d3b78 loads 8 bytes from a1 (arg1 at entry) +0xb8.
  The `ldc1` at 0xd8d3b84 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `ldc1` at 0xd8d3b90 loads 8 bytes from a0 (arg0 at entry) +0xc0.
  The `ldc1` at 0xd8d3b98 loads 8 bytes from a1 (arg1 at entry) +0xc0.
  The `ldc1` at 0xd8d3ba0 loads 8 bytes from a1 (arg1 at entry) +0xc8.
  The `ldc1` at 0xd8d3ba8 loads 8 bytes from a0 (arg0 at entry) +0xc8.
  The `ldc1` at 0xd8d3bb0 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `ldc1` at 0xd8d3bb8 loads 8 bytes from a1 (arg1 at entry) +0xd0.
  The `ldc1` at 0xd8d3bc0 loads 8 bytes from a1 (arg1 at entry) +0xd8.
  The `ldc1` at 0xd8d3bc8 loads 8 bytes from a0 (arg0 at entry) +0xd8.
  The `ldc1` at 0xd8d3bd0 loads 8 bytes from a0 (arg0 at entry) +0xe0.
  The `ldc1` at 0xd8d3bd8 loads 8 bytes from a1 (arg1 at entry) +0xe0.
  The `lw` at 0xd8d3c1c loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0xd8d3c20 loads 4 bytes from a1 (arg1 at entry) +0x64.
  The `lw` at 0xd8d3c44 loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `lw` at 0xd8d3c48 loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lw` at 0xd8d3c6c loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lw` at 0xd8d3c70 loads 4 bytes from a1 (arg1 at entry) +0x5c.
  The `lw` at 0xd8d3c88 loads 4 bytes from a1 (arg1 at entry) +0x58.
  The `lw` at 0xd8d3c90 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0xd8d3ca8 loads 4 bytes from a1 (arg1 at entry) +0x54.
  The `lw` at 0xd8d3cb0 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0xd8d3cc8 loads 4 bytes from a1 (arg1 at entry) +0x60.
  The `lw` at 0xd8d3cd0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0xd8d3d0c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xd8d3d10 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `jalr` at 0xd8d39c8 calls orderSmaller [0xd8c495c] with a0=[a0+28], a1=[a1+28], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d39f0 calls orderLarger [0xd8c4924] with a0=[a0+120], a1=[a1+120], a2=?, a3=?.
  The `jalr` at 0xd8d3a10 calls orderLarger [0xd8c4924] with a0=[a0+116], a1=[a1+116], a2=?, a3=?.
  The `jalr` at 0xd8d3a30 calls orderLarger [0xd8c4924] with a0=[a0+112], a1=[a1+112], a2=?, a3=?.
  The `jalr` at 0xd8d3a50 calls orderLarger [0xd8c4924] with a0=[a0+124], a1=[a1+124], a2=?, a3=?.
  The `jalr` at 0xd8d3a90 calls orderSmaller [0xd8c495c] with a0=[a0+108], a1=[a1+108], a2=?, a3=?.
  The `jalr` at 0xd8d3ab8 calls orderSmaller [0xd8c495c] with a0=[a0+78]:1, a1=[a1+78]:1, a2=?, a3=?.
  The `jalr` at 0xd8d3ae0 calls orderSmaller [0xd8c495c] with a0=[a0+152], a1=[a1+152], a2=?, a3=?.
  The `jalr` at 0xd8d3b08 calls orderSmaller [0xd8c495c] with a0=[a0+148], a1=[a1+148], a2=?, a3=?.
  The `jalr` at 0xd8d3b30 calls orderSmaller [0xd8c495c] with a0=[a0+144], a1=[a1+144], a2=?, a3=?.
  The `jalr` at 0xd8d3c28 calls orderLarger [0xd8c4924] with a0=[a0+100], a1=[a1+100], a2=?, a3=?.
  The `jalr` at 0xd8d3c50 calls orderSmaller [0xd8c495c] with a0=[a0+104], a1=[a1+104], a2=?, a3=?.
  The `jalr` at 0xd8d3c78 calls orderLarger [0xd8c4924] with a0=[a0+92], a1=[a1+92], a2=?, a3=?.
  The `jalr` at 0xd8d3c98 calls orderLarger [0xd8c4924] with a0=[a0+88], a1=[a1+88], a2=?, a3=?.
  The `jalr` at 0xd8d3cb8 calls orderLarger [0xd8c4924] with a0=[a0+84], a1=[a1+84], a2=?, a3=?.
  The `jalr` at 0xd8d3cd8 calls orderLarger [0xd8c4924] with a0=[a0+96], a1=[a1+96], a2=?, a3=?.
  The `jalr` at 0xd8d3d18 calls orderSmaller [0xd8c495c] with a0=[a0], a1=[a1], a2=?, a3=?.
  The `beq` branch at 0xd8d39d0 targets 0xd8d39e0, is taken when v0(=ret(orderSmaller)) == 0, and falls through when v0(=ret(orderSmaller)) != 0.
  The `beq` branch at 0xd8d39d8 targets 0xd8d3d38 and is always taken.
  The `beq` branch at 0xd8d3a70 targets 0xd8d3a80, is taken when a0(=(((ret(orderLarger) + ret(orderLarger)) + ret(orderLarger)) + ret(orderLarger))) == 0, and falls through when a0(=(((ret(orderLarger) + ret(orderLarger)) + ret(orderLarger)) + ret(orderLarger))) != 0.
  The `beq` branch at 0xd8d3a78 targets 0xd8d3d34 and is always taken.
  The `beq` branch at 0xd8d3a98 targets 0xd8d3aa8, is taken when v0(=ret(orderSmaller)) == 0, and falls through when v0(=ret(orderSmaller)) != 0.
  The `beq` branch at 0xd8d3aa0 targets 0xd8d3d38 and is always taken.
  The `beq` branch at 0xd8d3ac0 targets 0xd8d3ad0, is taken when v0(=ret(orderSmaller)) == 0, and falls through when v0(=ret(orderSmaller)) != 0.
  The `beq` branch at 0xd8d3ac8 targets 0xd8d3d38 and is always taken.
  The `beq` branch at 0xd8d3ae8 targets 0xd8d3af8, is taken when v0(=ret(orderSmaller)) == 0, and falls through when v0(=ret(orderSmaller)) != 0.
  The `beq` branch at 0xd8d3af0 targets 0xd8d3d38 and is always taken.
  The `beq` branch at 0xd8d3b10 targets 0xd8d3b20, is taken when v0(=ret(orderSmaller)) == 0, and falls through when v0(=ret(orderSmaller)) != 0.
  The `beq` branch at 0xd8d3b18 targets 0xd8d3d38 and is always taken.
  The `beq` branch at 0xd8d3b38 targets 0xd8d3b48, is taken when v0(=ret(orderSmaller)) == 0, and falls through when v0(=ret(orderSmaller)) != 0.
  The `beq` branch at 0xd8d3b40 targets 0xd8d3d38 and is always taken.
  The `bne` branch at 0xd8d3b50 targets 0xd8d3c18, is taken when v0(=0x1) != t1(=[a0+160]:1), and falls through when v0(=0x1) == t1(=[a0+160]:1).
  The `bne` branch at 0xd8d3b5c targets 0xd8d3c18, is taken when v0(=0x1) != t2(=[a1+160]:1), and falls through when v0(=0x1) == t2(=[a1+160]:1).
  The `bc1t` branch at 0xd8d3bf0 targets 0xd8d3c18, is taken when f0 == f2 (c.eq.d at 0xd8d3be8), and falls through when not (f0 == f2 (c.eq.d at 0xd8d3be8)).
  The `bc1f` branch at 0xd8d3c00 targets 0xd8d3c10, is taken when not (f0 < f2 (c.lt.d at 0xd8d3bf8)), and falls through when f0 < f2 (c.lt.d at 0xd8d3bf8).
  The `beq` branch at 0xd8d3c08 targets 0xd8d3d34 and is always taken.
  The `beq` branch at 0xd8d3c10 targets 0xd8d3d34 and is always taken.
  The `beq` branch at 0xd8d3c30 targets 0xd8d3c40, is taken when v0(=ret(orderLarger)) == 0, and falls through when v0(=ret(orderLarger)) != 0.
  The `beq` branch at 0xd8d3c38 targets 0xd8d3d38 and is always taken.
  The `beq` branch at 0xd8d3c58 targets 0xd8d3c68, is taken when v0(=ret(orderSmaller)) == 0, and falls through when v0(=ret(orderSmaller)) != 0.
  The `beq` branch at 0xd8d3c60 targets 0xd8d3d38 and is always taken.
  The `beq` branch at 0xd8d3cf8 targets 0xd8d3d08, is taken when a0(=(((ret(orderLarger) + ret(orderLarger)) + ret(orderLarger)) + ret(orderLarger))) == 0, and falls through when a0(=(((ret(orderLarger) + ret(orderLarger)) + ret(orderLarger)) + ret(orderLarger))) != 0.
  The `beq` branch at 0xd8d3d00 targets 0xd8d3d34 and is always taken.
  The `beq` branch at 0xd8d3d20 targets 0xd8d3d30, is taken when v0(=ret(orderSmaller)) == 0, and falls through when v0(=ret(orderSmaller)) != 0.
  The `beq` branch at 0xd8d3d28 targets 0xd8d3d38 and is always taken.
  The return at 0xd8d3d40 has v0 = one of ret(orderSmaller), ret(orderLarger), ?.
  The instructions from 0xd8d3d48 to 0xd8d4d48 are not reached by any path from the entry, and their branches are not listed.

- `glXGetVisualFromFBConfig` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d3d48 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d3d48-0xd8d3dac (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xd8d3d64 loads 4 bytes from a1 (arg1 at entry) +0x20.
  The `lw` at 0xd8d3d80 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `jalr` at 0xd8d3d88 calls __glXOverrideVisualGetVisualInfo with a0=a0 at entry (arg0), a1=0x3, a2=sp-44, a3=sp-48.
  The `beq` branch at 0xd8d3d70 targets 0xd8d3d98, is taken when v0(=[a1+32]) == 0, and falls through when v0(=[a1+32]) != 0.
  The return at 0xd8d3da4 has v0 = one of 0x0, ret(__glXOverrideVisualGetVisualInfo).

- `glXChooseFBConfigWithFltSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d3dac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d3dac-0xd8d4d4c (4000 bytes).
  It occupies 4000 bytes.
  The `lw` at 0xd8d3df4 loads 4 bytes from abs 0xd8ef000.
  The `lw` at 0xd8d3df8 loads 4 bytes from abs 0xd8ef004.
  The `lw` at 0xd8d3e08 loads 4 bytes from abs 0xd8ef00c.
  The `lw` at 0xd8d3e0c loads 4 bytes from abs 0xd8ef008.
  The `lw` at 0xd8d3f14 loads 4 bytes from a2 (arg2 at entry) +0x0.
  96 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8d3f48, `lw` at 0xd8d3f50, `lw` at 0xd8d3fc4.
  The `lw` at 0xd8d3f88 loads 4 bytes from table(0xd8dd7cc) +0x0.
  The `lw` at 0xd8d3fb4 loads 4 bytes from table(0xd8dd850) +0x0.
  45 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8d42f0, `sw` at 0xd8d43e4, `sw` at 0xd8d4440.
  The `ldc1` at 0xd8d4310 loads 8 bytes from a3 (arg3 at entry) +0x0.
  The `lw` at 0xd8d4348 loads 4 bytes from table(0xd8dd8ec) +0x0.
  17 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0xd8d4358, `ldc1` at 0xd8d4368, `ldc1` at 0xd8d4378.
  The `lw` at 0xd8d444c loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd8d4458 loads 4 bytes from ret(__glXInitialize) +0x20.
  The `lw` at 0xd8d4474 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc.
  The `lw` at 0xd8d4478 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10.
  The `sw` at 0xd8d4504 stores 4 bytes to ret(malloc) +0x0.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd8d46ec, `lbu` at 0xd8d46fc, `lbu` at 0xd8d494c.
  The `jalr` at 0xd8d4420 calls __glXInitialize with a0=a0 at entry (arg0), a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd8d44cc calls malloc with a0=0x4, a1=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16], a2=?, a3=?.
  The `jalr` at 0xd8d452c calls malloc with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16], a2=?, a3=?.
  The `jalr` at 0xd8d4564 calls GetBoardName [0xd8d339c] with a0=ret(__glXInitialize), a1=a1 at entry (arg1), a2=sp-284, a3=?.
  The `jalr` at 0xd8d4584 calls strncmp with a0=sp-284, a1=0xd8dd4e0, a2=0x7, a3=?.
  The `jalr` at 0xd8d4ab4 calls orderFBConfigSGIXs [0xd8d3994] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d4d08 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8d3f0c targets 0xd8d4308, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0xd8d3f18 targets 0xd8d4308, is taken when v1(=[a2]) == 0, and falls through when v1(=[a2]) != 0.
  The `bne` branch at 0xd8d3f3c targets 0xd8d3f5c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beql` branch at 0xd8d3f44 targets 0xd8d40bc, is taken when v1(?) == a1(=0x186a0), and falls through when v1(?) != a1(=0x186a0); its branch-likely delay slot `lw t5,0(s0)` at 0xd8d3f48 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d3f4c targets 0xd8d40cc, is taken when v1(?) == a2(=0x186a1), and falls through when v1(?) != a2(=0x186a1); its branch-likely delay slot `lw t6,0(s0)` at 0xd8d3f50 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d3f54 targets 0xd8d42e8 and is always taken.
  The `bne` branch at 0xd8d3f60 targets 0xd8d3f98, is taken when v0(?) < 0x29 (signed), and falls through when v0(?) >= 0x29 (signed).
  The `beql` branch at 0xd8d3f74 targets 0xd8d42e8, is taken when t8(=table(-0x8010)) >= 0x21 (unsigned), and falls through when t8(=table(-0x8010)) < 0x21 (unsigned); its branch-likely delay slot `lw t9,472(sp)` at 0xd8d3f78 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d3fa0 targets 0xd8d42e8, is taken when t9(?) >= 0x27 (unsigned), and falls through when t9(?) < 0x27 (unsigned); its branch-likely delay slot `lw t9,472(sp)` at 0xd8d3fa4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d3fcc targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d3fdc targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d3ff0 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4000 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4010 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4020 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4030 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4040 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4050 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4060 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4070 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4080 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4090 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d40a0 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d40b0 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d40c0 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d40d0 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d40e4 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d40f4 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4108 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d411c targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4134 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d414c targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4160 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4178 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4188 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4198 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d41a8 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d41bc targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d41cc targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d41dc targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d41ec targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d41fc targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4218 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4234 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4250 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d426c targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d4288 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d42a4 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d42c0 targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d42dc targets 0xd8d42f4 and is always taken.
  The `beq` branch at 0xd8d42ec targets 0xd8d4d20 and is always taken.
  The `beq` branch at 0xd8d42f4 targets 0xd8d4308, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bnel` branch at 0xd8d4300 targets 0xd8d3f38, is taken when v1(?) != 0, and falls through when v1(?) == 0; its branch-likely delay slot `slt at,v1,a0` at 0xd8d4304 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d4308 targets 0xd8d4408, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0xd8d4320 targets 0xd8d4408, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8d4334 targets 0xd8d43d8, is taken when t6(=table(-0x8029)) >= 0x8 (unsigned), and falls through when t6(=table(-0x8029)) < 0x8 (unsigned).
  The `beq` branch at 0xd8d4360 targets 0xd8d43e8 and is always taken.
  The `beq` branch at 0xd8d4370 targets 0xd8d43e8 and is always taken.
  The `beq` branch at 0xd8d4380 targets 0xd8d43e8 and is always taken.
  The `beq` branch at 0xd8d4390 targets 0xd8d43e8 and is always taken.
  The `beq` branch at 0xd8d43a0 targets 0xd8d43e8 and is always taken.
  The `beq` branch at 0xd8d43b0 targets 0xd8d43e8 and is always taken.
  The `beq` branch at 0xd8d43c0 targets 0xd8d43e8 and is always taken.
  The `beq` branch at 0xd8d43d0 targets 0xd8d43e8 and is always taken.
  The `beq` branch at 0xd8d43e0 targets 0xd8d4d20 and is always taken.
  The `beq` branch at 0xd8d43e8 targets 0xd8d4408, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bnel` branch at 0xd8d4400 targets 0xd8d4328, is taken when v1(?) != 0, and falls through when v1(?) == 0; its branch-likely delay slot `lui at,0xffff` at 0xd8d4404 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d442c targets 0xd8d4444, is taken when v0(=ret(__glXInitialize)) != 0, and falls through when v0(=ret(__glXInitialize)) == 0.
  The `beq` branch at 0xd8d443c targets 0xd8d4d20 and is always taken.
  The `bltz` branch at 0xd8d4444 targets 0xd8d445c, is taken when s5(=a1) < 0 (signed), and falls through when s5(=a1) >= 0 (signed).
  The `bnel` branch at 0xd8d4454 targets 0xd8d446c, is taken when s5(=a1) < t5(=[a0+136]) (signed), and falls through when s5(=a1) >= t5(=[a0+136]) (signed); its branch-likely delay slot `lw t7,32(v0)` at 0xd8d4458 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d4460 targets 0xd8d4d20 and is always taken.
  The `beql` branch at 0xd8d447c targets 0xd8d4490, is taken when s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0, and falls through when s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0; its branch-likely delay slot `lw t9,472(sp)` at 0xd8d4480 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d4484 targets 0xd8d449c, is taken when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) != 0, and falls through when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) == 0.
  The `beq` branch at 0xd8d4494 targets 0xd8d4d20 and is always taken.
  The `beq` branch at 0xd8d449c targets 0xd8d4520, is taken when s4(=one of 0x0, 0x1) == 0, and falls through when s4(=one of 0x0, 0x1) != 0.
  The `blez` branch at 0xd8d44a4 targets 0xd8d4510, is taken when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed), and falls through when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  The `bne` branch at 0xd8d44bc targets 0xd8d4508, is taken when t5(?) != t6(?), and falls through when t5(?) == t6(?).
  The `bne` branch at 0xd8d44d8 targets 0xd8d44f0, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd8d44e8 targets 0xd8d4d20 and is always taken.
  The `beq` branch at 0xd8d4500 targets 0xd8d4d20 and is always taken.
  The `bne` branch at 0xd8d4508 targets 0xd8d44b0, is taken when v1(?) != a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]), and falls through when v1(?) == a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]).
  The `beq` branch at 0xd8d4518 targets 0xd8d4d20 and is always taken.
  The `bne` branch at 0xd8d4538 targets 0xd8d4550, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd8d4548 targets 0xd8d4d20 and is always taken.
  The `beq` branch at 0xd8d456c targets 0xd8d45cc, is taken when v0(=ret(GetBoardName)) == 0, and falls through when v0(=ret(GetBoardName)) != 0.
  The `bne` branch at 0xd8d458c targets 0xd8d45cc, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `bne` branch at 0xd8d45a0 targets 0xd8d45cc, is taken when s5(=0xc) != t8(?), and falls through when s5(=0xc) == t8(?).
  The `bne` branch at 0xd8d45b0 targets 0xd8d45cc, is taken when s5(=0xc) != t9(?), and falls through when s5(=0xc) == t9(?).
  The `bne` branch at 0xd8d45b8 targets 0xd8d45cc, is taken when s5(=0xc) != t5(?), and falls through when s5(=0xc) == t5(?).
  The `blez` branch at 0xd8d45c0 targets 0xd8d45cc, is taken when t6(?) <= 0 (signed), and falls through when t6(?) > 0 (signed).
  The `bne` branch at 0xd8d45cc targets 0xd8d468c, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `bne` branch at 0xd8d45d4 targets 0xd8d468c, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `blez` branch at 0xd8d45dc targets 0xd8d467c, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0xd8d45e8 targets 0xd8d4624, is taken when (a3(?) & 0x3) == 0, and falls through when (a3(?) & 0x3) != 0.
  The `bne` branch at 0xd8d4618 targets 0xd8d460c, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0xd8d4620 targets 0xd8d467c, is taken when v1(?) == a3(?), and falls through when v1(?) != a3(?).
  The `bne` branch at 0xd8d4674 targets 0xd8d4650, is taken when v1(?) != a3(?), and falls through when v1(?) == a3(?).
  The `beq` branch at 0xd8d4684 targets 0xd8d4d20 and is always taken.
  The `blez` branch at 0xd8d4698 targets 0xd8d4c18, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `bnel` branch at 0xd8d46cc targets 0xd8d4c04, is taken when t9(?) < t5(?) (signed), and falls through when t9(?) >= t5(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d46d0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d46dc targets 0xd8d4c04, is taken when t6(?) != t7(?), and falls through when t6(?) == t7(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d46e0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d46e4 targets 0xd8d46f8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bnel` branch at 0xd8d46f0 targets 0xd8d4c04, is taken when t9(?) != t5(?), and falls through when t9(?) == t5(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d46f4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d4704 targets 0xd8d4c04, is taken when t6(?) != t7(?), and falls through when t6(?) == t7(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4708 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d4718 targets 0xd8d4c04, is taken when t8(?) < t9(?) (signed), and falls through when t8(?) >= t9(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d471c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d472c targets 0xd8d4c04, is taken when a2(?) < t5(?) (signed), and falls through when a2(?) >= t5(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4730 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d4740 targets 0xd8d4c04, is taken when a1(?) < t6(?) (signed), and falls through when a1(?) >= t6(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4744 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d4754 targets 0xd8d4c04, is taken when a0(?) < t7(?) (signed), and falls through when a0(?) >= t7(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4758 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d4768 targets 0xd8d4c04, is taken when v1(?) < t8(?) (signed), and falls through when v1(?) >= t8(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d476c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d477c targets 0xd8d4c04, is taken when v0(?) < t9(?) (signed), and falls through when v0(?) >= t9(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4780 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d4790 targets 0xd8d4c04, is taken when t5(?) < t6(?) (signed), and falls through when t5(?) >= t6(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4794 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d47a4 targets 0xd8d4c04, is taken when t7(?) < t8(?) (signed), and falls through when t7(?) >= t8(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d47a8 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d47b8 targets 0xd8d4c04, is taken when t9(?) < t5(?) (signed), and falls through when t9(?) >= t5(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d47bc runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d47cc targets 0xd8d4c04, is taken when t6(?) < t7(?) (signed), and falls through when t6(?) >= t7(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d47d0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d47e0 targets 0xd8d4c04, is taken when t8(?) < t9(?) (signed), and falls through when t8(?) >= t9(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d47e4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d47f4 targets 0xd8d4c04, is taken when t5(?) < t6(?) (unsigned), and falls through when t5(?) >= t6(?) (unsigned); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d47f8 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d4808 targets 0xd8d4c04, is taken when t7(?) < t8(?) (unsigned), and falls through when t7(?) >= t8(?) (unsigned); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d480c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d4810 targets 0xd8d4824, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bnel` branch at 0xd8d481c targets 0xd8d4c04, is taken when t5(?) != t6(?), and falls through when t5(?) == t6(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4820 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d4830 targets 0xd8d4c04, is taken when t7(?) != t8(?), and falls through when t7(?) == t8(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4834 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d4838 targets 0xd8d484c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bnel` branch at 0xd8d4844 targets 0xd8d4c04, is taken when t5(?) != t6(?), and falls through when t5(?) == t6(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4848 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d4858 targets 0xd8d486c, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `bnel` branch at 0xd8d4864 targets 0xd8d4c04, is taken when t8(?) != t9(?), and falls through when t8(?) == t9(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4868 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d486c targets 0xd8d4880, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `bnel` branch at 0xd8d4878 targets 0xd8d4c04, is taken when t6(?) != t7(?), and falls through when t6(?) == t7(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d487c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d488c targets 0xd8d48a0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bnel` branch at 0xd8d4898 targets 0xd8d4c04, is taken when t9(?) != t5(?), and falls through when t9(?) == t5(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d489c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d48a0 targets 0xd8d48b4, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `bnel` branch at 0xd8d48ac targets 0xd8d4c04, is taken when t7(?) != t8(?), and falls through when t7(?) == t8(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d48b0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d48c0 targets 0xd8d48d8, is taken when t9(?) == 0, and falls through when t9(?) != 0; its branch-likely delay slot `lw t8,40(s4)` at 0xd8d48c4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d48cc targets 0xd8d4c04, is taken when t5(?) != t6(?), and falls through when t5(?) == t6(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d48d0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d48e0 targets 0xd8d4c04, is taken when t7(?) != t9(?), and falls through when t7(?) == t9(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d48e4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d48f4 targets 0xd8d4c04, is taken when t5(?) != t8(?), and falls through when t5(?) == t8(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d48f8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d48fc targets 0xd8d4910, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beql` branch at 0xd8d4908 targets 0xd8d4c04, is taken when t9(?) == 0, and falls through when t9(?) != 0; its branch-likely delay slot `lw t9,96(sp)` at 0xd8d490c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d491c targets 0xd8d4c04, is taken when t6(?) < t5(?) (signed), and falls through when t6(?) >= t5(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4920 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d4930 targets 0xd8d4c04, is taken when t8(?) < t7(?) (signed), and falls through when t8(?) >= t7(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4934 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d4944 targets 0xd8d4c04, is taken when t9(?) < t6(?) (signed), and falls through when t9(?) >= t6(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4948 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d4954 targets 0xd8d4c04, is taken when t5(?) != t8(?), and falls through when t5(?) == t8(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4958 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d496c targets 0xd8d4c04, is taken when f16 < f18 (c.lt.d at 0xd8d4964), and falls through when not (f16 < f18 (c.lt.d at 0xd8d4964)); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4970 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d4984 targets 0xd8d4c04, is taken when f4 < f6 (c.lt.d at 0xd8d497c), and falls through when not (f4 < f6 (c.lt.d at 0xd8d497c)); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4988 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d499c targets 0xd8d4c04, is taken when f8 < f10 (c.lt.d at 0xd8d4994), and falls through when not (f8 < f10 (c.lt.d at 0xd8d4994)); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d49a0 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d49b4 targets 0xd8d4c04, is taken when f16 < f18 (c.lt.d at 0xd8d49ac), and falls through when not (f16 < f18 (c.lt.d at 0xd8d49ac)); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d49b8 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d49cc targets 0xd8d4c04, is taken when f4 < f6 (c.lt.d at 0xd8d49c4), and falls through when not (f4 < f6 (c.lt.d at 0xd8d49c4)); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d49d0 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d49e4 targets 0xd8d4c04, is taken when f8 < f10 (c.lt.d at 0xd8d49dc), and falls through when not (f8 < f10 (c.lt.d at 0xd8d49dc)); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d49e8 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d49fc targets 0xd8d4c04, is taken when f16 < f18 (c.lt.d at 0xd8d49f4), and falls through when not (f16 < f18 (c.lt.d at 0xd8d49f4)); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4a00 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d4a1c targets 0xd8d4c04, is taken when f4 < f6 (c.lt.d at 0xd8d4a10), and falls through when not (f4 < f6 (c.lt.d at 0xd8d4a10)); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4a20 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d4a30 targets 0xd8d4a8c, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `bne` branch at 0xd8d4a38 targets 0xd8d4a8c, is taken when s5(=0xc) != a1(?), and falls through when s5(=0xc) == a1(?).
  The `bne` branch at 0xd8d4a40 targets 0xd8d4a8c, is taken when s5(=0xc) != a0(?), and falls through when s5(=0xc) == a0(?).
  The `bne` branch at 0xd8d4a48 targets 0xd8d4a8c, is taken when s5(=0xc) != a2(?), and falls through when s5(=0xc) == a2(?).
  The `bne` branch at 0xd8d4a50 targets 0xd8d4a8c, is taken when s5(=0xc) != v1(?), and falls through when s5(=0xc) == v1(?).
  The `bne` branch at 0xd8d4a58 targets 0xd8d4a8c, is taken when v0(?) != at(=0x10), and falls through when v0(?) == at(=0x10).
  The `bne` branch at 0xd8d4a60 targets 0xd8d4a8c, is taken when t5(?) != 0, and falls through when t5(?) == 0.
  The `beql` branch at 0xd8d4a8c targets 0xd8d4adc, is taken when s3(?) == 0, and falls through when s3(?) != 0; its branch-likely delay slot `slt at,s1,s3` at 0xd8d4a90 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xd8d4abc targets 0xd8d4acc, is taken when v0(=ret(orderFBConfigSGIXs)) >= 0 (signed), and falls through when v0(=ret(orderFBConfigSGIXs)) < 0 (signed).
  The `beq` branch at 0xd8d4ac4 targets 0xd8d4ad0 and is always taken.
  The `bne` branch at 0xd8d4ad0 targets 0xd8d4a94, is taken when s1(?) != s2(?), and falls through when s1(?) == s2(?).
  The `beq` branch at 0xd8d4adc targets 0xd8d4b4c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd8d4af0 targets 0xd8d4b18, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xd8d4b0c targets 0xd8d4b00, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0xd8d4b14 targets 0xd8d4b4c, is taken when s1(?) == v1(?), and falls through when s1(?) != v1(?).
  The `bne` branch at 0xd8d4b44 targets 0xd8d4b20, is taken when s1(?) != v1(?), and falls through when s1(?) == v1(?).
  The `beq` branch at 0xd8d4b58 targets 0xd8d4bc8, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `bne` branch at 0xd8d4b60 targets 0xd8d4b74, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8d4b68 targets 0xd8d4b74, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd8d4b7c targets 0xd8d4b90, is taken when t9(?) < s1(?) (signed), and falls through when t9(?) >= s1(?) (signed).
  The `beq` branch at 0xd8d4b84 targets 0xd8d4b90, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd8d4b98 targets 0xd8d4bac, is taken when t5(?) < s1(?) (signed), and falls through when t5(?) >= s1(?) (signed).
  The `beq` branch at 0xd8d4ba0 targets 0xd8d4bac, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd8d4bb4 targets 0xd8d4bc8, is taken when t7(?) < s1(?) (signed), and falls through when t7(?) >= s1(?) (signed).
  The `beq` branch at 0xd8d4bbc targets 0xd8d4bc8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beql` branch at 0xd8d4bd4 targets 0xd8d4c00, is taken when t6(=one of 0x0, 0x1) == 0, and falls through when t6(=one of 0x0, 0x1) != 0; its branch-likely delay slot `sw s4,0(t7)` at 0xd8d4bd8 runs only when taken and is annulled on fall-through.
  The `bgezl` branch at 0xd8d4be0 targets 0xd8d4bf4, is taken when t5(?) >= 0 (signed), and falls through when t5(?) < 0 (signed); its branch-likely delay slot `addiu v0,v0,4` at 0xd8d4be4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d4be8 targets 0xd8d4bfc and is always taken.
  The `bnel` branch at 0xd8d4bf4 targets 0xd8d4be0, is taken when v0(?) != s7(=sp-292), and falls through when v0(?) == s7(=sp-292); its branch-likely delay slot `lw t5,0(v0)` at 0xd8d4bf8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d4c10 targets 0xd8d46bc, is taken when t6(?) != t5(?), and falls through when t6(?) == t5(?).
  The `blez` branch at 0xd8d4c20 targets 0xd8d4d00, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `beq` branch at 0xd8d4c28 targets 0xd8d4cec, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `bltz` branch at 0xd8d4c30 targets 0xd8d4c5c, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `bltz` branch at 0xd8d4c60 targets 0xd8d4c8c, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `bltz` branch at 0xd8d4c90 targets 0xd8d4cbc, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `bltz` branch at 0xd8d4cc0 targets 0xd8d4cec, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `beq` branch at 0xd8d4cf8 targets 0xd8d4d20 and is always taken.
  The return at 0xd8d4d44 has v0 = one of 0x0, ret(malloc).
  The instructions from 0xd8d40b8 to 0xd8d40b8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d40c8 to 0xd8d40c8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d4468 to 0xd8d4468 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d4bf0 to 0xd8d4bf0 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d3f90 uses the jump table at 0xd8dd7cc with targets 0xd8d4180, 0xd8d4190, 0xd8d41a0, 0xd8d41b0, 0xd8d42e4, 0xd8d42e4, 0xd8d41c4, 0xd8d41d4, 0xd8d41e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d41f4, 0xd8d4204, 0xd8d4220, 0xd8d423c, 0xd8d4258, 0xd8d4274, 0xd8d4290, 0xd8d42ac, 0xd8d42c8.
  The indirect jump at 0xd8d3fbc uses the jump table at 0xd8dd850 with targets 0xd8d3fc4, 0xd8d3fd4, 0xd8d42e4, 0xd8d3fe4, 0xd8d3ff8, 0xd8d4008, 0xd8d4018, 0xd8d4028, 0xd8d4038, 0xd8d4048, 0xd8d4058, 0xd8d4068, 0xd8d4078, 0xd8d4088, 0xd8d4098, 0xd8d40a8, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d42e4, 0xd8d4168, 0xd8d42e4, 0xd8d40d8, 0xd8d40ec, 0xd8d40fc, 0xd8d4110, 0xd8d4124, 0xd8d413c, 0xd8d4154.
  The indirect jump at 0xd8d4350 uses the jump table at 0xd8dd8ec with targets 0xd8d4358, 0xd8d4368, 0xd8d4378, 0xd8d4388, 0xd8d4398, 0xd8d43a8, 0xd8d43b8, 0xd8d43c8.
  The indirect jump at 0xd8d4350 uses the jump table at 0xd8dd8ec with targets 0xd8d4358, 0xd8d4368, 0xd8d4378, 0xd8d4388, 0xd8d4398, 0xd8d43a8, 0xd8d43b8, 0xd8d43c8.
  The indirect jump at 0xd8d4350 uses the jump table at 0xd8dd8ec with targets 0xd8d4358, 0xd8d4368, 0xd8d4378, 0xd8d4388, 0xd8d4398, 0xd8d43a8, 0xd8d43b8, 0xd8d43c8.

- `glXChooseFBConfig` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d4d54 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d4d54-0xd8d5fe4 (4752 bytes).
  It occupies 4752 bytes.
  The `lw` at 0xd8d4da8 loads 4 bytes from abs 0xd8ef010.
  The `lw` at 0xd8d4dac loads 4 bytes from abs 0xd8ef014.
  The `lw` at 0xd8d4dbc loads 4 bytes from abs 0xd8ef01c.
  The `lw` at 0xd8d4dc0 loads 4 bytes from abs 0xd8ef018.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0xd8d4ed0, `lw` at 0xd8d4f20.
  The `ldc1` at 0xd8d4f1c loads 8 bytes from abs 0xd8dd910.
  114 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8d4f38, `lw` at 0xd8d4f40, `lw` at 0xd8d4fb4.
  The `lw` at 0xd8d4f7c loads 4 bytes from table(0xd8dd918) +0x0.
  The `lw` at 0xd8d4fa4 loads 4 bytes from table(0xd8dd9b0) +0x0.
  11 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xd8d5464, `sw` at 0xd8d54e8, `sw` at 0xd8d5504.
  The `ldc1` at 0xd8d548c loads 8 bytes from abs 0xd8dda50.
  The `lw` at 0xd8d54f4 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd8d5500 loads 4 bytes from ret(__glXInitialize) +0x20.
  The `lw` at 0xd8d551c loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc.
  The `lw` at 0xd8d5520 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10.
  The `sw` at 0xd8d55ac stores 4 bytes to ret(malloc) +0x0.
  37 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8d56e0, `sw` at 0xd8d56e8, `sw` at 0xd8d56f4.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd8d58e0, `lbu` at 0xd8d5900, `lbu` at 0xd8d5b5c.
  8 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0xd8d5b7c, `ldc1` at 0xd8d5ba0, `ldc1` at 0xd8d5bc4.
  The `jalr` at 0xd8d54c8 calls __glXInitialize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d5574 calls malloc with a0=0x4, a1=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16], a2=?, a3=?.
  The `jalr` at 0xd8d55d4 calls malloc with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16], a2=?, a3=?.
  The `jalr` at 0xd8d560c calls GetBoardName [0xd8d339c] with a0=ret(__glXInitialize), a1=a1 at entry (arg1), a2=sp-292, a3=?.
  The `jalr` at 0xd8d562c calls strncmp with a0=sp-292, a1=0xd8dd4e8, a2=0x7, a3=?.
  The `jalr` at 0xd8d57a8 calls orderFBConfigs [0xd8c4368] with a0=sp-576, a1=?, a2=0x0, a3=?.
  The `jalr` at 0xd8d5d44 calls orderFBConfigs [0xd8c4368] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d5f98 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8d4ecc targets 0xd8d5478, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0xd8d4ed4 targets 0xd8d5478, is taken when s4(=[a2]) == 0, and falls through when s4(=[a2]) != 0.
  The `bnel` branch at 0xd8d4f2c targets 0xd8d4f50, is taken when v0(?) < v1(=0x8031) (signed), and falls through when v0(?) >= v1(=0x8031) (signed); its branch-likely delay slot `slti at,v0,41` at 0xd8d4f30 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d4f34 targets 0xd8d52b0, is taken when v0(?) == a0(=0x186a0), and falls through when v0(?) != a0(=0x186a0); its branch-likely delay slot `lw t6,0(s0)` at 0xd8d4f38 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d4f3c targets 0xd8d52c8, is taken when v0(?) == a1(=0x186a1), and falls through when v0(?) != a1(=0x186a1); its branch-likely delay slot `lw t9,0(s0)` at 0xd8d4f40 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d4f44 targets 0xd8d545c and is always taken.
  The `bne` branch at 0xd8d4f50 targets 0xd8d4f8c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beql` branch at 0xd8d4f68 targets 0xd8d545c, is taken when t6(=table(-0x800b)) >= 0x26 (unsigned), and falls through when t6(=table(-0x800b)) < 0x26 (unsigned); its branch-likely delay slot `lw t8,724(sp)` at 0xd8d4f6c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d4f90 targets 0xd8d545c, is taken when t7(?) >= 0x27 (unsigned), and falls through when t7(?) < 0x27 (unsigned); its branch-likely delay slot `lw t8,724(sp)` at 0xd8d4f94 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d4fbc targets 0xd8d5468, is taken when s6(=-0x1) == t9(?), and falls through when s6(=-0x1) != t9(?).
  The `beq` branch at 0xd8d4fc4 targets 0xd8d5468 and is always taken.
  The `bne` branch at 0xd8d4fd4 targets 0xd8d5468, is taken when s6(=-0x1) != t6(?), and falls through when s6(=-0x1) == t6(?).
  The `beq` branch at 0xd8d4fdc targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d4fec targets 0xd8d5468 and is always taken.
  The `beql` branch at 0xd8d4ff8 targets 0xd8d5018, is taken when s6(=-0x1) == v0(?), and falls through when s6(=-0x1) != v0(?); its branch-likely delay slot `ori s5,s5,0x400` at 0xd8d4ffc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d500c targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d5018 targets 0xd8d5468 and is always taken.
  The `bne` branch at 0xd8d5028 targets 0xd8d5034, is taken when s6(=-0x1) != v0(?), and falls through when s6(=-0x1) == v0(?).
  The `beq` branch at 0xd8d5034 targets 0xd8d5468 and is always taken.
  The `bne` branch at 0xd8d5044 targets 0xd8d5468, is taken when s6(=-0x1) != t6(?), and falls through when s6(=-0x1) == t6(?).
  The `beq` branch at 0xd8d504c targets 0xd8d5468 and is always taken.
  The `bne` branch at 0xd8d505c targets 0xd8d5468, is taken when s6(=-0x1) != t9(?), and falls through when s6(=-0x1) == t9(?).
  The `beq` branch at 0xd8d5064 targets 0xd8d5468 and is always taken.
  The `bne` branch at 0xd8d5074 targets 0xd8d5468, is taken when s6(=-0x1) != t6(?), and falls through when s6(=-0x1) == t6(?).
  The `beq` branch at 0xd8d507c targets 0xd8d5468 and is always taken.
  The `bne` branch at 0xd8d508c targets 0xd8d5468, is taken when s6(=-0x1) != t9(?), and falls through when s6(=-0x1) == t9(?).
  The `beq` branch at 0xd8d5094 targets 0xd8d5468 and is always taken.
  The `bne` branch at 0xd8d50a4 targets 0xd8d5468, is taken when s6(=-0x1) != t6(?), and falls through when s6(=-0x1) == t6(?).
  The `beq` branch at 0xd8d50ac targets 0xd8d5468 and is always taken.
  The `bne` branch at 0xd8d50bc targets 0xd8d5468, is taken when s6(=-0x1) != t9(?), and falls through when s6(=-0x1) == t9(?).
  The `beq` branch at 0xd8d50c4 targets 0xd8d5468 and is always taken.
  The `bne` branch at 0xd8d50d4 targets 0xd8d5468, is taken when s6(=-0x1) != t6(?), and falls through when s6(=-0x1) == t6(?).
  The `beq` branch at 0xd8d50dc targets 0xd8d5468 and is always taken.
  The `bne` branch at 0xd8d50ec targets 0xd8d5468, is taken when s6(=-0x1) != t9(?), and falls through when s6(=-0x1) == t9(?).
  The `beq` branch at 0xd8d50f4 targets 0xd8d5468 and is always taken.
  The `bne` branch at 0xd8d5104 targets 0xd8d5468, is taken when s6(=-0x1) != t6(?), and falls through when s6(=-0x1) == t6(?).
  The `beq` branch at 0xd8d510c targets 0xd8d5468 and is always taken.
  The `bne` branch at 0xd8d511c targets 0xd8d5468, is taken when s6(=-0x1) != t9(?), and falls through when s6(=-0x1) == t9(?).
  The `beq` branch at 0xd8d5124 targets 0xd8d5468 and is always taken.
  The `bne` branch at 0xd8d5134 targets 0xd8d5468, is taken when s6(=-0x1) != t6(?), and falls through when s6(=-0x1) == t6(?).
  The `beq` branch at 0xd8d513c targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d514c targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d515c targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d5178 targets 0xd8d5468, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned).
  The `beq` branch at 0xd8d5180 targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d5194 targets 0xd8d51a4, is taken when s6(=-0x1) == t9(?), and falls through when s6(=-0x1) != t9(?).
  The `beq` branch at 0xd8d519c targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d51a4 targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d51b4 targets 0xd8d51c8, is taken when s6(=-0x1) == t7(?), and falls through when s6(=-0x1) != t7(?).
  The `beq` branch at 0xd8d51c0 targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d51c8 targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d51d8 targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d51e8 targets 0xd8d5468, is taken when s6(=-0x1) == t7(?), and falls through when s6(=-0x1) != t7(?).
  The `beq` branch at 0xd8d51f4 targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d5208 targets 0xd8d5468, is taken when s6(=-0x1) == t6(?), and falls through when s6(=-0x1) != t6(?).
  The `beq` branch at 0xd8d5210 targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d5224 targets 0xd8d5468, is taken when s6(=-0x1) == t9(?), and falls through when s6(=-0x1) != t9(?).
  The `beq` branch at 0xd8d522c targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d5240 targets 0xd8d5468, is taken when s6(=-0x1) == t9(?), and falls through when s6(=-0x1) != t9(?).
  The `beq` branch at 0xd8d5248 targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d5258 targets 0xd8d5468, is taken when s6(=-0x1) == t7(?), and falls through when s6(=-0x1) != t7(?).
  The `beq` branch at 0xd8d5264 targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d5274 targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d5284 targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d5294 targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d52a4 targets 0xd8d5468 and is always taken.
  The `bne` branch at 0xd8d52b4 targets 0xd8d5468, is taken when s6(=-0x1) != t6(?), and falls through when s6(=-0x1) == t6(?).
  The `beq` branch at 0xd8d52bc targets 0xd8d5468 and is always taken.
  The `bne` branch at 0xd8d52cc targets 0xd8d5468, is taken when s6(=-0x1) != t9(?), and falls through when s6(=-0x1) == t9(?).
  The `beq` branch at 0xd8d52d4 targets 0xd8d5468 and is always taken.
  The `bne` branch at 0xd8d52e8 targets 0xd8d5468, is taken when s6(=-0x1) != t7(?), and falls through when s6(=-0x1) == t7(?).
  The `beq` branch at 0xd8d52f0 targets 0xd8d5468 and is always taken.
  The `bc1f` branch at 0xd8d5314 targets 0xd8d5468, is taken when not (f20 == f6 (c.eq.d at 0xd8d530c)), and falls through when f20 == f6 (c.eq.d at 0xd8d530c).
  The `beq` branch at 0xd8d531c targets 0xd8d5468 and is always taken.
  The `bc1f` branch at 0xd8d5340 targets 0xd8d5468, is taken when not (f20 == f16 (c.eq.d at 0xd8d5338)), and falls through when f20 == f16 (c.eq.d at 0xd8d5338).
  The `beq` branch at 0xd8d5348 targets 0xd8d5468 and is always taken.
  The `bc1f` branch at 0xd8d536c targets 0xd8d5468, is taken when not (f20 == f6 (c.eq.d at 0xd8d5364)), and falls through when f20 == f6 (c.eq.d at 0xd8d5364).
  The `beq` branch at 0xd8d5374 targets 0xd8d5468 and is always taken.
  The `bc1f` branch at 0xd8d5398 targets 0xd8d5468, is taken when not (f20 == f16 (c.eq.d at 0xd8d5390)), and falls through when f20 == f16 (c.eq.d at 0xd8d5390).
  The `beq` branch at 0xd8d53a0 targets 0xd8d5468 and is always taken.
  The `bc1f` branch at 0xd8d53c4 targets 0xd8d5468, is taken when not (f20 == f6 (c.eq.d at 0xd8d53bc)), and falls through when f20 == f6 (c.eq.d at 0xd8d53bc).
  The `beq` branch at 0xd8d53cc targets 0xd8d5468 and is always taken.
  The `bc1f` branch at 0xd8d53f0 targets 0xd8d5468, is taken when not (f20 == f16 (c.eq.d at 0xd8d53e8)), and falls through when f20 == f16 (c.eq.d at 0xd8d53e8).
  The `beq` branch at 0xd8d53f8 targets 0xd8d5468 and is always taken.
  The `bc1f` branch at 0xd8d541c targets 0xd8d5468, is taken when not (f20 == f6 (c.eq.d at 0xd8d5414)), and falls through when f20 == f6 (c.eq.d at 0xd8d5414).
  The `beq` branch at 0xd8d5424 targets 0xd8d5468 and is always taken.
  The `bc1f` branch at 0xd8d5448 targets 0xd8d5468, is taken when not (f20 == f16 (c.eq.d at 0xd8d5440)), and falls through when f20 == f16 (c.eq.d at 0xd8d5440).
  The `beq` branch at 0xd8d5450 targets 0xd8d5468 and is always taken.
  The `beq` branch at 0xd8d5460 targets 0xd8d5fb0 and is always taken.
  The `beql` branch at 0xd8d5468 targets 0xd8d547c, is taken when s0(?) == 0, and falls through when s0(?) != 0; its branch-likely delay slot `lw t9,512(sp)` at 0xd8d546c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d5470 targets 0xd8d4f24, is taken when s4(=[a2]) != 0, and falls through when s4(=[a2]) == 0; its branch-likely delay slot `lw v0,0(s0)` at 0xd8d5474 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d5488 targets 0xd8d5494, is taken when (t9(?) & 0x1) != 0, and falls through when (t9(?) & 0x1) == 0.
  The `beql` branch at 0xd8d549c targets 0xd8d54b0, is taken when t7(?) == at(=0x8000), and falls through when t7(?) != at(=0x8000); its branch-likely delay slot `sb zero,393(sp)` at 0xd8d54a0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d54a4 targets 0xd8d54c0, is taken when s6(=-0x1) != t7(?), and falls through when s6(=-0x1) == t7(?).
  The `bne` branch at 0xd8d54d4 targets 0xd8d54ec, is taken when v0(=ret(__glXInitialize)) != 0, and falls through when v0(=ret(__glXInitialize)) == 0.
  The `beq` branch at 0xd8d54e4 targets 0xd8d5fb0 and is always taken.
  The `bltz` branch at 0xd8d54ec targets 0xd8d5504, is taken when s8(=a1) < 0 (signed), and falls through when s8(=a1) >= 0 (signed).
  The `bnel` branch at 0xd8d54fc targets 0xd8d5514, is taken when s8(=a1) < t9(=[a0+136]) (signed), and falls through when s8(=a1) >= t9(=[a0+136]) (signed); its branch-likely delay slot `lw t7,32(v0)` at 0xd8d5500 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5508 targets 0xd8d5fb0 and is always taken.
  The `beql` branch at 0xd8d5524 targets 0xd8d5538, is taken when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0, and falls through when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0; its branch-likely delay slot `lw t9,724(sp)` at 0xd8d5528 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d552c targets 0xd8d5544, is taken when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) != 0, and falls through when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) == 0.
  The `beq` branch at 0xd8d553c targets 0xd8d5fb0 and is always taken.
  The `beq` branch at 0xd8d5544 targets 0xd8d55c8, is taken when s3(=one of 0x0, 0x1) == 0, and falls through when s3(=one of 0x0, 0x1) != 0.
  The `blez` branch at 0xd8d554c targets 0xd8d55b8, is taken when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed), and falls through when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  The `bne` branch at 0xd8d5564 targets 0xd8d55b0, is taken when t6(?) != t7(?), and falls through when t6(?) == t7(?).
  The `bne` branch at 0xd8d5580 targets 0xd8d5598, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd8d5590 targets 0xd8d5fb0 and is always taken.
  The `beq` branch at 0xd8d55a8 targets 0xd8d5fb0 and is always taken.
  The `bne` branch at 0xd8d55b0 targets 0xd8d5558, is taken when v0(?) != a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]), and falls through when v0(?) == a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]).
  The `beq` branch at 0xd8d55c0 targets 0xd8d5fb0 and is always taken.
  The `bne` branch at 0xd8d55e0 targets 0xd8d55f8, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd8d55f0 targets 0xd8d5fb0 and is always taken.
  The `beq` branch at 0xd8d5614 targets 0xd8d5674, is taken when v0(=ret(GetBoardName)) == 0, and falls through when v0(=ret(GetBoardName)) != 0.
  The `bne` branch at 0xd8d5634 targets 0xd8d5674, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `bne` branch at 0xd8d5648 targets 0xd8d5674, is taken when s8(=0xc) != t6(?), and falls through when s8(=0xc) == t6(?).
  The `bne` branch at 0xd8d5658 targets 0xd8d5674, is taken when s8(=0xc) != t7(?), and falls through when s8(=0xc) == t7(?).
  The `bne` branch at 0xd8d5660 targets 0xd8d5674, is taken when s8(=0xc) != t8(?), and falls through when s8(=0xc) == t8(?).
  The `blez` branch at 0xd8d5668 targets 0xd8d5674, is taken when t9(?) <= 0 (signed), and falls through when t9(?) > 0 (signed).
  The `beq` branch at 0xd8d5674 targets 0xd8d5684, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bnel` branch at 0xd8d567c targets 0xd8d5880, is taken when s4(=[a2]) != 0, and falls through when s4(=[a2]) == 0; its branch-likely delay slot `lw t6,448(sp)` at 0xd8d5680 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd8d5690 targets 0xd8d586c, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bne` branch at 0xd8d56f0 targets 0xd8d56d4, is taken when t6(?) != at(?), and falls through when t6(?) == at(?).
  The `beq` branch at 0xd8d5704 targets 0xd8d5774, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `bne` branch at 0xd8d5710 targets 0xd8d5774, is taken when s8(=0xc) != t7(?), and falls through when s8(=0xc) == t7(?).
  The `bne` branch at 0xd8d571c targets 0xd8d5774, is taken when s8(=0xc) != t8(?), and falls through when s8(=0xc) == t8(?).
  The `bne` branch at 0xd8d5728 targets 0xd8d5774, is taken when s8(=0xc) != t9(?), and falls through when s8(=0xc) == t9(?).
  The `bne` branch at 0xd8d5734 targets 0xd8d5774, is taken when s8(=0xc) != t6(?), and falls through when s8(=0xc) == t6(?).
  The `bne` branch at 0xd8d5748 targets 0xd8d5774, is taken when t7(?) != at(=0x10), and falls through when t7(?) == at(=0x10).
  The `bne` branch at 0xd8d5750 targets 0xd8d5774, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beql` branch at 0xd8d5774 targets 0xd8d57dc, is taken when s3(?) == 0, and falls through when s3(?) != 0; its branch-likely delay slot `slt at,s2,s3` at 0xd8d5778 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xd8d57b0 targets 0xd8d57c0, is taken when v0(=ret(orderFBConfigs)) >= 0 (signed), and falls through when v0(=ret(orderFBConfigs)) < 0 (signed).
  The `beq` branch at 0xd8d57b8 targets 0xd8d57c4 and is always taken.
  The `bnel` branch at 0xd8d57c4 targets 0xd8d5788, is taken when s2(?) != s1(?), and falls through when s2(?) == s1(?); its branch-likely delay slot `addu v0,s2,s1` at 0xd8d57c8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d57dc targets 0xd8d584c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd8d57f0 targets 0xd8d5818, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xd8d580c targets 0xd8d5800, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0xd8d5814 targets 0xd8d584c, is taken when s2(?) == v1(?), and falls through when s2(?) != v1(?).
  The `bne` branch at 0xd8d5844 targets 0xd8d5820, is taken when s2(?) != v1(?), and falls through when s2(?) == v1(?).
  The `bnel` branch at 0xd8d5864 targets 0xd8d56b8, is taken when a3(?) != t8(?), and falls through when a3(?) == t8(?); its branch-likely delay slot `addiu t0,t0,1` at 0xd8d5868 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5874 targets 0xd8d5fb0 and is always taken.
  The `blez` branch at 0xd8d5888 targets 0xd8d5ea8, is taken when t6(?) <= 0 (signed), and falls through when t6(?) > 0 (signed).
  The `beql` branch at 0xd8d58b0 targets 0xd8d58cc, is taken when s6(=-0x1) == t8(?), and falls through when s6(=-0x1) != t8(?); its branch-likely delay slot `lw t7,156(s4)` at 0xd8d58b4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d58c0 targets 0xd8d5e94, is taken when t9(?) < t8(?) (signed), and falls through when t9(?) >= t8(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d58c4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d58d0 targets 0xd8d5e94, is taken when t6(?) != t7(?), and falls through when t6(?) == t7(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d58d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d58d8 targets 0xd8d58ec, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bnel` branch at 0xd8d58e4 targets 0xd8d5e94, is taken when t8(?) != t6(?), and falls through when t8(?) == t6(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d58e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d58f8 targets 0xd8d590c, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `bnel` branch at 0xd8d5904 targets 0xd8d5e94, is taken when t9(?) != t8(?), and falls through when t9(?) == t8(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5908 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d590c targets 0xd8d5924, is taken when s6(=-0x1) == t6(?), and falls through when s6(=-0x1) != t6(?).
  The `bnel` branch at 0xd8d591c targets 0xd8d5e94, is taken when t7(?) < t6(?) (signed), and falls through when t7(?) >= t6(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5920 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5924 targets 0xd8d593c, is taken when s6(=-0x1) == t9(?), and falls through when s6(=-0x1) != t9(?).
  The `bnel` branch at 0xd8d5934 targets 0xd8d5e94, is taken when t8(?) < t9(?) (signed), and falls through when t8(?) >= t9(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5938 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d593c targets 0xd8d5954, is taken when s6(=-0x1) == t7(?), and falls through when s6(=-0x1) != t7(?).
  The `bnel` branch at 0xd8d594c targets 0xd8d5e94, is taken when t6(?) < t7(?) (signed), and falls through when t6(?) >= t7(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5950 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5954 targets 0xd8d596c, is taken when s6(=-0x1) == t8(?), and falls through when s6(=-0x1) != t8(?).
  The `bnel` branch at 0xd8d5964 targets 0xd8d5e94, is taken when t9(?) < t8(?) (signed), and falls through when t9(?) >= t8(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5968 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d596c targets 0xd8d5984, is taken when s6(=-0x1) == t6(?), and falls through when s6(=-0x1) != t6(?).
  The `bnel` branch at 0xd8d597c targets 0xd8d5e94, is taken when t7(?) < t6(?) (signed), and falls through when t7(?) >= t6(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5980 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5984 targets 0xd8d599c, is taken when s6(=-0x1) == t9(?), and falls through when s6(=-0x1) != t9(?).
  The `bnel` branch at 0xd8d5994 targets 0xd8d5e94, is taken when t8(?) < t9(?) (signed), and falls through when t8(?) >= t9(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5998 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d599c targets 0xd8d59b4, is taken when s6(=-0x1) == t7(?), and falls through when s6(=-0x1) != t7(?).
  The `bnel` branch at 0xd8d59ac targets 0xd8d5e94, is taken when t6(?) < t7(?) (signed), and falls through when t6(?) >= t7(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d59b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d59b4 targets 0xd8d59cc, is taken when s6(=-0x1) == t8(?), and falls through when s6(=-0x1) != t8(?).
  The `bnel` branch at 0xd8d59c4 targets 0xd8d5e94, is taken when t9(?) < t8(?) (signed), and falls through when t9(?) >= t8(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d59c8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d59cc targets 0xd8d59e4, is taken when s6(=-0x1) == t6(?), and falls through when s6(=-0x1) != t6(?).
  The `bnel` branch at 0xd8d59dc targets 0xd8d5e94, is taken when t7(?) < t6(?) (signed), and falls through when t7(?) >= t6(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d59e0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d59e4 targets 0xd8d59fc, is taken when s6(=-0x1) == t9(?), and falls through when s6(=-0x1) != t9(?).
  The `bnel` branch at 0xd8d59f4 targets 0xd8d5e94, is taken when t8(?) < t9(?) (signed), and falls through when t8(?) >= t9(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d59f8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d59fc targets 0xd8d5a14, is taken when s6(=-0x1) == t7(?), and falls through when s6(=-0x1) != t7(?).
  The `bnel` branch at 0xd8d5a0c targets 0xd8d5e94, is taken when t6(?) < t7(?) (signed), and falls through when t6(?) >= t7(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5a10 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5a14 targets 0xd8d5a28, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bnel` branch at 0xd8d5a20 targets 0xd8d5e94, is taken when t9(?) != t6(?), and falls through when t9(?) == t6(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5a24 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5a30 targets 0xd8d5a44, is taken when s6(=-0x1) == t7(?), and falls through when s6(=-0x1) != t7(?).
  The `bnel` branch at 0xd8d5a3c targets 0xd8d5e94, is taken when t7(?) != t8(?), and falls through when t7(?) == t8(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5a40 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5a44 targets 0xd8d5a58, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bnel` branch at 0xd8d5a50 targets 0xd8d5e94, is taken when t6(?) != t7(?), and falls through when t6(?) == t7(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5a54 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5a64 targets 0xd8d5a78, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bnel` branch at 0xd8d5a70 targets 0xd8d5e94, is taken when t9(?) != t6(?), and falls through when t9(?) == t6(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5a74 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5a78 targets 0xd8d5a8c, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `bnel` branch at 0xd8d5a84 targets 0xd8d5e94, is taken when t8(?) != t9(?), and falls through when t8(?) == t9(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5a88 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5a98 targets 0xd8d5aac, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `bnel` branch at 0xd8d5aa4 targets 0xd8d5e94, is taken when t7(?) != t8(?), and falls through when t7(?) == t8(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5aa8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5aac targets 0xd8d5ac0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bnel` branch at 0xd8d5ab8 targets 0xd8d5e94, is taken when t6(?) != t7(?), and falls through when t6(?) == t7(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5abc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5acc targets 0xd8d5ae0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bnel` branch at 0xd8d5ad8 targets 0xd8d5e94, is taken when t9(?) != t6(?), and falls through when t9(?) == t6(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5adc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5ae0 targets 0xd8d5af8, is taken when s6(=-0x1) == t7(?), and falls through when s6(=-0x1) != t7(?).
  The `bnel` branch at 0xd8d5af0 targets 0xd8d5e94, is taken when t7(?) != t9(?), and falls through when t7(?) == t9(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5af4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5af8 targets 0xd8d5b10, is taken when s6(=-0x1) == t6(?), and falls through when s6(=-0x1) != t6(?).
  The `bnel` branch at 0xd8d5b08 targets 0xd8d5e94, is taken when t6(?) != t7(?), and falls through when t6(?) == t7(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5b0c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5b10 targets 0xd8d5b24, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beql` branch at 0xd8d5b1c targets 0xd8d5e94, is taken when t8(?) == 0, and falls through when t8(?) != 0; its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5b20 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5b24 targets 0xd8d5b3c, is taken when s6(=-0x1) == t6(?), and falls through when s6(=-0x1) != t6(?).
  The `bnel` branch at 0xd8d5b34 targets 0xd8d5e94, is taken when t7(?) < t6(?) (unsigned), and falls through when t7(?) >= t6(?) (unsigned); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5b38 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5b3c targets 0xd8d5b54, is taken when s6(=-0x1) == t9(?), and falls through when s6(=-0x1) != t9(?).
  The `bnel` branch at 0xd8d5b4c targets 0xd8d5e94, is taken when t8(?) < t9(?) (unsigned), and falls through when t8(?) >= t9(?) (unsigned); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5b50 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5b54 targets 0xd8d5c8c, is taken when s6(=-0x1) == v0(?), and falls through when s6(=-0x1) != v0(?).
  The `bnel` branch at 0xd8d5b64 targets 0xd8d5e94, is taken when v0(?) != t7(?), and falls through when v0(?) == t7(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5b68 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d5b74 targets 0xd8d5b94, is taken when f20 == f4 (c.eq.d at 0xd8d5b6c), and falls through when not (f20 == f4 (c.eq.d at 0xd8d5b6c)); its branch-likely delay slot `c.eq.d $f20,$f8` at 0xd8d5b78 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d5b88 targets 0xd8d5e94, is taken when f4 < f6 (c.lt.d at 0xd8d5b80), and falls through when not (f4 < f6 (c.lt.d at 0xd8d5b80)); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5b8c runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d5b98 targets 0xd8d5bb8, is taken when f20 == f8 (c.eq.d at 0xd8d5b90), and falls through when not (f20 == f8 (c.eq.d at 0xd8d5b90)); its branch-likely delay slot `c.eq.d $f20,$f16` at 0xd8d5b9c runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d5bac targets 0xd8d5e94, is taken when f10 < f8 (c.lt.d at 0xd8d5ba4), and falls through when not (f10 < f8 (c.lt.d at 0xd8d5ba4)); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5bb0 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d5bbc targets 0xd8d5bdc, is taken when f20 == f16 (c.eq.d at 0xd8d5bb4), and falls through when not (f20 == f16 (c.eq.d at 0xd8d5bb4)); its branch-likely delay slot `c.eq.d $f20,$f4` at 0xd8d5bc0 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d5bd0 targets 0xd8d5e94, is taken when f16 < f18 (c.lt.d at 0xd8d5bc8), and falls through when not (f16 < f18 (c.lt.d at 0xd8d5bc8)); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5bd4 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d5be0 targets 0xd8d5c00, is taken when f20 == f4 (c.eq.d at 0xd8d5bd8), and falls through when not (f20 == f4 (c.eq.d at 0xd8d5bd8)); its branch-likely delay slot `c.eq.d $f20,$f10` at 0xd8d5be4 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d5bf4 targets 0xd8d5e94, is taken when f6 < f4 (c.lt.d at 0xd8d5bec), and falls through when not (f6 < f4 (c.lt.d at 0xd8d5bec)); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5bf8 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d5c04 targets 0xd8d5c24, is taken when f20 == f10 (c.eq.d at 0xd8d5bfc), and falls through when not (f20 == f10 (c.eq.d at 0xd8d5bfc)); its branch-likely delay slot `c.eq.d $f20,$f16` at 0xd8d5c08 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d5c18 targets 0xd8d5e94, is taken when f10 < f8 (c.lt.d at 0xd8d5c10), and falls through when not (f10 < f8 (c.lt.d at 0xd8d5c10)); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5c1c runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d5c28 targets 0xd8d5c48, is taken when f20 == f16 (c.eq.d at 0xd8d5c20), and falls through when not (f20 == f16 (c.eq.d at 0xd8d5c20)); its branch-likely delay slot `c.eq.d $f20,$f6` at 0xd8d5c2c runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d5c3c targets 0xd8d5e94, is taken when f18 < f16 (c.lt.d at 0xd8d5c34), and falls through when not (f18 < f16 (c.lt.d at 0xd8d5c34)); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5c40 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d5c4c targets 0xd8d5c6c, is taken when f20 == f6 (c.eq.d at 0xd8d5c44), and falls through when not (f20 == f6 (c.eq.d at 0xd8d5c44)); its branch-likely delay slot `c.eq.d $f20,$f10` at 0xd8d5c50 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d5c60 targets 0xd8d5e94, is taken when f6 < f4 (c.lt.d at 0xd8d5c58), and falls through when not (f6 < f4 (c.lt.d at 0xd8d5c58)); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5c64 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d5c70 targets 0xd8d5c90, is taken when f20 == f10 (c.eq.d at 0xd8d5c68), and falls through when not (f20 == f10 (c.eq.d at 0xd8d5c68)); its branch-likely delay slot `lw t9,416(sp)` at 0xd8d5c74 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xd8d5c84 targets 0xd8d5e94, is taken when f8 < f10 (c.lt.d at 0xd8d5c7c), and falls through when not (f8 < f10 (c.lt.d at 0xd8d5c7c)); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5c88 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5ca4 targets 0xd8d5d1c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0xd8d5cb0 targets 0xd8d5d1c, is taken when s8(=0xc) != t7(?), and falls through when s8(=0xc) == t7(?).
  The `bne` branch at 0xd8d5cbc targets 0xd8d5d1c, is taken when s8(=0xc) != t6(?), and falls through when s8(=0xc) == t6(?).
  The `bne` branch at 0xd8d5cc8 targets 0xd8d5d1c, is taken when s8(=0xc) != t8(?), and falls through when s8(=0xc) == t8(?).
  The `bne` branch at 0xd8d5cd4 targets 0xd8d5d1c, is taken when s8(=0xc) != t9(?), and falls through when s8(=0xc) == t9(?).
  The `bne` branch at 0xd8d5ce8 targets 0xd8d5d1c, is taken when t7(?) != at(=0x10), and falls through when t7(?) == at(=0x10).
  The `bne` branch at 0xd8d5cf0 targets 0xd8d5d1c, is taken when t6(?) != 0, and falls through when t6(?) == 0.
  The `beq` branch at 0xd8d5d1c targets 0xd8d5d68, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bgez` branch at 0xd8d5d4c targets 0xd8d5d5c, is taken when v0(=ret(orderFBConfigs)) >= 0 (signed), and falls through when v0(=ret(orderFBConfigs)) < 0 (signed).
  The `beq` branch at 0xd8d5d54 targets 0xd8d5d60 and is always taken.
  The `bnel` branch at 0xd8d5d60 targets 0xd8d5d24, is taken when s1(?) != s2(?), and falls through when s1(?) == s2(?); its branch-likely delay slot `addu v0,s1,s2` at 0xd8d5d64 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5d6c targets 0xd8d5ddc, is taken when s1(?) >= s3(?) (signed), and falls through when s1(?) < s3(?) (signed).
  The `beq` branch at 0xd8d5d80 targets 0xd8d5da8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xd8d5d9c targets 0xd8d5d90, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0xd8d5da4 targets 0xd8d5ddc, is taken when s1(?) == v1(?), and falls through when s1(?) != v1(?).
  The `bne` branch at 0xd8d5dd4 targets 0xd8d5db0, is taken when s1(?) != v1(?), and falls through when s1(?) == v1(?).
  The `beq` branch at 0xd8d5de8 targets 0xd8d5e58, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `bne` branch at 0xd8d5df0 targets 0xd8d5e04, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8d5df8 targets 0xd8d5e04, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd8d5e0c targets 0xd8d5e20, is taken when t9(?) < s1(?) (signed), and falls through when t9(?) >= s1(?) (signed).
  The `beq` branch at 0xd8d5e14 targets 0xd8d5e20, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd8d5e28 targets 0xd8d5e3c, is taken when t6(?) < s1(?) (signed), and falls through when t6(?) >= s1(?) (signed).
  The `beq` branch at 0xd8d5e30 targets 0xd8d5e3c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd8d5e44 targets 0xd8d5e58, is taken when t9(?) < s1(?) (signed), and falls through when t9(?) >= s1(?) (signed).
  The `beq` branch at 0xd8d5e4c targets 0xd8d5e58, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd8d5e64 targets 0xd8d5e8c, is taken when t6(=one of 0x0, 0x1) == 0, and falls through when t6(=one of 0x0, 0x1) != 0.
  The `bgezl` branch at 0xd8d5e70 targets 0xd8d5e84, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed); its branch-likely delay slot `addiu v0,v0,4` at 0xd8d5e74 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d5e78 targets 0xd8d5e8c and is always taken.
  The `bnel` branch at 0xd8d5e84 targets 0xd8d5e70, is taken when v0(?) != v1(=sp-300), and falls through when v0(?) == v1(=sp-300); its branch-likely delay slot `lw t8,0(v0)` at 0xd8d5e88 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d5ea0 targets 0xd8d58a8, is taken when t8(?) != t9(?), and falls through when t8(?) == t9(?).
  The `blez` branch at 0xd8d5eb0 targets 0xd8d5f90, is taken when t7(?) <= 0 (signed), and falls through when t7(?) > 0 (signed).
  The `beq` branch at 0xd8d5eb8 targets 0xd8d5f7c, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `bltz` branch at 0xd8d5ec0 targets 0xd8d5eec, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `bltz` branch at 0xd8d5ef0 targets 0xd8d5f1c, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `bltz` branch at 0xd8d5f20 targets 0xd8d5f4c, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `bltz` branch at 0xd8d5f50 targets 0xd8d5f7c, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `beq` branch at 0xd8d5f88 targets 0xd8d5fb0 and is always taken.
  The return at 0xd8d5fdc has v0 = one of 0x0, ret(malloc).
  The instructions from 0xd8d4f4c to 0xd8d4f4c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d5014 to 0xd8d5014 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d52ac to 0xd8d52ac are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d52c4 to 0xd8d52c4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d5510 to 0xd8d5510 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d587c to 0xd8d587c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d5e80 to 0xd8d5e80 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.
  The indirect jump at 0xd8d4f84 uses the jump table at 0xd8dd918 with targets 0xd8d529c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5154, 0xd8d5144, 0xd8d5164, 0xd8d4fb4, 0xd8d5458, 0xd8d5458, 0xd8d526c, 0xd8d527c, 0xd8d528c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d52dc, 0xd8d52f8, 0xd8d5324, 0xd8d5350, 0xd8d537c, 0xd8d53a8, 0xd8d53d4, 0xd8d5400, 0xd8d542c.
  The indirect jump at 0xd8d4fac uses the jump table at 0xd8dd9b0 with targets 0xd8d4fcc, 0xd8d4fe4, 0xd8d5458, 0xd8d4ff4, 0xd8d5020, 0xd8d503c, 0xd8d5054, 0xd8d506c, 0xd8d5084, 0xd8d509c, 0xd8d50b4, 0xd8d50cc, 0xd8d50e4, 0xd8d50fc, 0xd8d5114, 0xd8d512c, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d5458, 0xd8d51ac, 0xd8d5458, 0xd8d5188, 0xd8d51d0, 0xd8d51e0, 0xd8d51fc, 0xd8d5218, 0xd8d5234, 0xd8d5250.

- `glXGetFBConfigs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d5fe4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d5fe4-0xd8d6150 (364 bytes).
  It occupies 364 bytes.
  The `lw` at 0xd8d6030 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd8d603c loads 4 bytes from ret(__glXInitialize) +0x20.
  The `lw` at 0xd8d6054 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10.
  The `lw` at 0xd8d605c loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd8d6090, `sw` at 0xd8d613c.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8d60c4, `sw` at 0xd8d6108, `sw` at 0xd8d610c.
  The `jalr` at 0xd8d6008 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d6068 calls malloc with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0xd8d6018 targets 0xd8d6028, is taken when v0(=ret(__glXInitialize)) != 0, and falls through when v0(=ret(__glXInitialize)) == 0.
  The `beq` branch at 0xd8d6020 targets 0xd8d6140 and is always taken.
  The `bltz` branch at 0xd8d6028 targets 0xd8d6040, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bnel` branch at 0xd8d6038 targets 0xd8d604c, is taken when a1 < t7(=[a0+136]) (signed), and falls through when a1 >= t7(=[a0+136]) (signed); its branch-likely delay slot `lw t8,32(v1)` at 0xd8d603c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d6040 targets 0xd8d6140 and is always taken.
  The `bne` branch at 0xd8d607c targets 0xd8d6094, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd8d608c targets 0xd8d6140 and is always taken.
  The `blez` branch at 0xd8d6094 targets 0xd8d6134, is taken when t1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed), and falls through when t1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  The `beq` branch at 0xd8d60a0 targets 0xd8d60dc, is taken when (t1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) & 0x3) == 0, and falls through when (t1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) & 0x3) != 0.
  The `bne` branch at 0xd8d60d0 targets 0xd8d60c4, is taken when a2(?) != a1(?), and falls through when a2(?) == a1(?).
  The `beq` branch at 0xd8d60d8 targets 0xd8d6134, is taken when a1(?) == t1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]), and falls through when a1(?) != t1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]).
  The `bne` branch at 0xd8d612c targets 0xd8d6108, is taken when a1(?) != t1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]), and falls through when a1(?) == t1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]).
  The return at 0xd8d6148 has v0 = one of 0x0, ret(malloc).
  The instructions from 0xd8d6048 to 0xd8d6048 are not reached by any path from the entry, and their branches are not listed.

- `glXCreateNewContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d6400 (o32).
  Does not touch the device directly; its first argument goes on to `CreateContext` at 0xd8ae040 through
  the `jalr` at 0xd8d644c, with a zero in the second argument register and its own second and third
  arguments in a2 and a3.
  The fourth entry argument goes to the outgoing stack slot at +0x10 (`sw` at 0xd8d6448), the caller's
  stack word at entry +0x10 (`lw` at 0xd8d641c) goes to +0x14 in the delay slot of the call (`sw` at
  0xd8d6450), and the stores at 0xd8d6440 and 0xd8d6444 put zero in the slots at +0x18 and +0x1c.
  Its other stores save ra (`sw` at 0xd8d6428) and gp (`sw` at 0xd8d6438) in its 48-byte frame.
  There is no conditional branch; `v0` at the return (0xd8d6460) is whatever `CreateContext` handed back.
  Inferred: the committed note for a routine of the same name in another build describes it as the path
  that allocates a client context record and chooses direct or indirect creation, so this entry hands a
  context-creation request to it.
  Unknown: the parameter slots of `CreateContext` that receive the zero second argument and the two zero
  stack words; reading the routine at 0xd8ae040 would settle them.
  Evidence grade: inferred.

- `glXCreateNewContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d6400 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d6400-0xd8d6468 (104 bytes).
  It occupies 104 bytes.
  The `jalr` at 0xd8d644c calls CreateContext [0xd8ae040] with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The return at 0xd8d6460 has v0 = ret(CreateContext).

- `__glXQueryContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d6468 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d6468-0xd8d701c (2996 bytes).
  It occupies 2996 bytes.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d64c0, `lw` at 0xd8d657c, `lw` at 0xd8d65cc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d64c8, `lw` at 0xd8d64e0, `lw` at 0xd8d650c.
  The `lw` at 0xd8d64cc loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d64e4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d64f4, `sw` at 0xd8d6510.
  The `sh` at 0xd8d651c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d6520, `sb` at 0xd8d654c.
  The `lw` at 0xd8d6524 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d6538 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d653c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d6544 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8d6550 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `sw` at 0xd8d655c stores 4 bytes to [a0+108] +0x4.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d6584, `lw` at 0xd8d659c, `lw` at 0xd8d65d4.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8d6588, `lw` at 0xd8d65d8, `lw` at 0xd8d6644.
  The `lw` at 0xd8d66bc loads 4 bytes from ret(malloc) +0x0.
  21 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8d66cc, `lw` at 0xd8d66d4, `lw` at 0xd8d66dc.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x30, including `sw` at 0xd8d66f4, `sw` at 0xd8d6764, `sw` at 0xd8d67b8.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x34, including `sw` at 0xd8d6704, `sw` at 0xd8d6774, `sw` at 0xd8d67c8.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x20, including `sw` at 0xd8d6710, `sw` at 0xd8d6780, `sw` at 0xd8d67d4.
  The `jalr` at 0xd8d64a4 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d64d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d6500 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d6564 calls _XReply with a0=a0 at entry (arg0), a1=sp-36, a2=0x0, a3=0x0.
  The `jalr` at 0xd8d6590 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d65ac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d65e0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d65fc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d661c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d664c calls (unknown callee) with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd8d6668 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d6688 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd8d6890 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d68b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d68cc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8d648c targets 0xd8d649c, is taken when a1 != 0, and falls through when a1 == 0.
  The `beq` branch at 0xd8d6494 targets 0xd8d68dc and is always taken.
  The `bne` branch at 0xd8d64b0 targets 0xd8d64c0, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd8d64b8 targets 0xd8d68dc and is always taken.
  The `beql` branch at 0xd8d64c4 targets 0xd8d64e4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s1)` at 0xd8d64c8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d64f0 targets 0xd8d6514, is taken when t6(=[a0+112]) >= t7(=[a0+108]+8) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw v1,100(s1)` at 0xd8d64f4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d6574 targets 0xd8d65c0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beql` branch at 0xd8d6580 targets 0xd8d65a0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8d6584 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d65a4 targets 0xd8d65b8, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8d65b8 targets 0xd8d68dc and is always taken.
  The `bne` branch at 0xd8d65c4 targets 0xd8d6610, is taken when v1(?) < 0x4 (signed), and falls through when v1(?) >= 0x4 (signed).
  The `beql` branch at 0xd8d65d0 targets 0xd8d65f0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8d65d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d65f4 targets 0xd8d6608, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8d6608 targets 0xd8d68dc and is always taken.
  The `bne` branch at 0xd8d6630 targets 0xd8d667c, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd8d663c targets 0xd8d665c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8d6640 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d6660 targets 0xd8d6674, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8d6674 targets 0xd8d68dc and is always taken.
  The `blez` branch at 0xd8d669c targets 0xd8d6888, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `beq` branch at 0xd8d66a8 targets 0xd8d6720, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `beql` branch at 0xd8d66c8 targets 0xd8d670c, is taken when v0(?) == a1(=0x800c), and falls through when v0(?) != a1(=0x800c); its branch-likely delay slot `lw t2,0(v1)` at 0xd8d66cc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d66d0 targets 0xd8d66fc, is taken when v0(?) == a2(=0x8011), and falls through when v0(?) != a2(=0x8011); its branch-likely delay slot `lw t8,0(v1)` at 0xd8d66d4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d66d8 targets 0xd8d66ec, is taken when v0(?) == a3(=0x8013), and falls through when v0(?) != a3(=0x8013); its branch-likely delay slot `lw t7,0(v1)` at 0xd8d66dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d66e0 targets 0xd8d6714 and is always taken.
  The `beq` branch at 0xd8d66f0 targets 0xd8d6714 and is always taken.
  The `beq` branch at 0xd8d6700 targets 0xd8d6714 and is always taken.
  The `bnel` branch at 0xd8d6714 targets 0xd8d66c0, is taken when t0(?) != a0(?), and falls through when t0(?) == a0(?); its branch-likely delay slot `lw v0,0(v1)` at 0xd8d6718 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d671c targets 0xd8d6888, is taken when a0(?) == t1(?), and falls through when a0(?) != t1(?).
  The `beql` branch at 0xd8d6738 targets 0xd8d677c, is taken when v0(?) == a1(=0x800c), and falls through when v0(?) != a1(=0x800c); its branch-likely delay slot `lw t5,0(v1)` at 0xd8d673c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6740 targets 0xd8d676c, is taken when v0(?) == a2(=0x8011), and falls through when v0(?) != a2(=0x8011); its branch-likely delay slot `lw t4,0(v1)` at 0xd8d6744 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6748 targets 0xd8d675c, is taken when v0(?) == a3(=0x8013), and falls through when v0(?) != a3(=0x8013); its branch-likely delay slot `lw t3,0(v1)` at 0xd8d674c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d6750 targets 0xd8d6784 and is always taken.
  The `beq` branch at 0xd8d6760 targets 0xd8d6784 and is always taken.
  The `beq` branch at 0xd8d6770 targets 0xd8d6784 and is always taken.
  The `beql` branch at 0xd8d678c targets 0xd8d67d0, is taken when v0(?) == a1(=0x800c), and falls through when v0(?) != a1(=0x800c); its branch-likely delay slot `lw t7,0(v1)` at 0xd8d6790 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6794 targets 0xd8d67c0, is taken when v0(?) == a2(=0x8011), and falls through when v0(?) != a2(=0x8011); its branch-likely delay slot `lw t9,0(v1)` at 0xd8d6798 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d679c targets 0xd8d67b0, is taken when v0(?) == a3(=0x8013), and falls through when v0(?) != a3(=0x8013); its branch-likely delay slot `lw t6,0(v1)` at 0xd8d67a0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d67a4 targets 0xd8d67d8 and is always taken.
  The `beq` branch at 0xd8d67b4 targets 0xd8d67d8 and is always taken.
  The `beq` branch at 0xd8d67c4 targets 0xd8d67d8 and is always taken.
  The `beql` branch at 0xd8d67e0 targets 0xd8d6824, is taken when v0(?) == a1(=0x800c), and falls through when v0(?) != a1(=0x800c); its branch-likely delay slot `lw t3,0(v1)` at 0xd8d67e4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d67e8 targets 0xd8d6814, is taken when v0(?) == a2(=0x8011), and falls through when v0(?) != a2(=0x8011); its branch-likely delay slot `lw t2,0(v1)` at 0xd8d67ec runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d67f0 targets 0xd8d6804, is taken when v0(?) == a3(=0x8013), and falls through when v0(?) != a3(=0x8013); its branch-likely delay slot `lw t8,0(v1)` at 0xd8d67f4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d67f8 targets 0xd8d682c and is always taken.
  The `beq` branch at 0xd8d6808 targets 0xd8d682c and is always taken.
  The `beq` branch at 0xd8d6818 targets 0xd8d682c and is always taken.
  The `beql` branch at 0xd8d6834 targets 0xd8d6878, is taken when v0(?) == a1(=0x800c), and falls through when v0(?) != a1(=0x800c); its branch-likely delay slot `lw t6,0(v1)` at 0xd8d6838 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d683c targets 0xd8d6868, is taken when v0(?) == a2(=0x8011), and falls through when v0(?) != a2(=0x8011); its branch-likely delay slot `lw t5,0(v1)` at 0xd8d6840 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6844 targets 0xd8d6858, is taken when v0(?) == a3(=0x8013), and falls through when v0(?) != a3(=0x8013); its branch-likely delay slot `lw t4,0(v1)` at 0xd8d6848 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d684c targets 0xd8d6880 and is always taken.
  The `beq` branch at 0xd8d685c targets 0xd8d6880 and is always taken.
  The `beq` branch at 0xd8d686c targets 0xd8d6880 and is always taken.
  The `bnel` branch at 0xd8d6880 targets 0xd8d6730, is taken when a0(?) != t1(?), and falls through when a0(?) == t1(?); its branch-likely delay slot `lw v0,0(v1)` at 0xd8d6884 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d68a0 targets 0xd8d68c0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8d68a4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d68c4 targets 0xd8d68dc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `or v0,zero,zero` at 0xd8d68c8 runs only when taken and is annulled on fall-through.
  The return at 0xd8d68e8 has v0 = one of 0x0, 0x5.
  The instructions from 0xd8d66e8 to 0xd8d66e8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d66f8 to 0xd8d66f8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6708 to 0xd8d6708 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6758 to 0xd8d6758 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6768 to 0xd8d6768 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6778 to 0xd8d6778 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d67ac to 0xd8d67ac are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d67bc to 0xd8d67bc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d67cc to 0xd8d67cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6800 to 0xd8d6800 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6810 to 0xd8d6810 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6820 to 0xd8d6820 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6854 to 0xd8d6854 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6864 to 0xd8d6864 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6874 to 0xd8d6874 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d68f0 to 0xd8d7018 are not reached by any path from the entry, and their branches are not listed.

- `glXQueryContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d68f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d68f0-0xd8d69b0 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xd8d6908 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `lw` at 0xd8d6914 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lw` at 0xd8d6974 loads 4 bytes from a1 (arg1 at entry) +0x30.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xd8d697c, `sw` at 0xd8d6988, `sw` at 0xd8d6994.
  The `lw` at 0xd8d6980 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lw` at 0xd8d698c loads 4 bytes from a1 (arg1 at entry) +0x20.
  The `jalr` at 0xd8d6930 calls __glXQueryContext [0xd8d6468] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xd8d690c targets 0xd8d6958, is taken when t6(=[a1+196]) != 0, and falls through when t6(=[a1+196]) == 0; its branch-likely delay slot `ori at,zero,0x800c` at 0xd8d6910 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d6918 targets 0xd8d6958, is taken when t7(=[a1+44]) != 0, and falls through when t7(=[a1+44]) == 0; its branch-likely delay slot `ori at,zero,0x800c` at 0xd8d691c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d6944 targets 0xd8d6954, is taken when v0(=ret(__glXQueryContext)) == 0, and falls through when v0(=ret(__glXQueryContext)) != 0.
  The `beq` branch at 0xd8d694c targets 0xd8d69a4 and is always taken.
  The `beq` branch at 0xd8d6958 targets 0xd8d698c, is taken when a2 == at(=0x800c), and falls through when a2 != at(=0x800c).
  The `beq` branch at 0xd8d6964 targets 0xd8d6980, is taken when a2 == at(=0x8011), and falls through when a2 != at(=0x8011).
  The `bne` branch at 0xd8d696c targets 0xd8d6998, is taken when a2 != at(=0x8013), and falls through when a2 == at(=0x8013).
  The `beq` branch at 0xd8d6978 targets 0xd8d69a0 and is always taken.
  The `beq` branch at 0xd8d6984 targets 0xd8d69a0 and is always taken.
  The `beq` branch at 0xd8d6990 targets 0xd8d69a0 and is always taken.
  The `beq` branch at 0xd8d6998 targets 0xd8d69a0 and is always taken.
  The return at 0xd8d69a8 has v0 = one of ret(__glXQueryContext), 0x0, 0x2.

- `glXCreateWindow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d69b0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d69b0-0xd8d6b48 (408 bytes).
  It occupies 408 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d6a00, `lw` at 0xd8d6a0c, `lw` at 0xd8d6a28.
  The `lw` at 0xd8d6a04 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lw` at 0xd8d6a18 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `lw` at 0xd8d6a24 loads 4 bytes from ?.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d6a30, `lw` at 0xd8d6a48, `lw` at 0xd8d6a74.
  The `lw` at 0xd8d6a34 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d6a4c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8d6a7c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8d6a88 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d6a8c, `sb` at 0xd8d6ab4.
  The `lw` at 0xd8d6a90 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d6aa4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d6aa8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d6ab0 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8d6ab8 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd8d6abc stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8d6ac0 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd8d6ac4 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd8d6acc stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd8d6ad4 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd8d6aec stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8d6af0 stores 4 bytes to [a0+108] +0x14.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d6afc, `lw` at 0xd8d6b14.
  The `lw` at 0xd8d6b00 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8d69dc calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d6a3c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd8d6a68 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d6ad8 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x1f, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xd8d6b08 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8d6b24 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8d69ec targets 0xd8d69fc, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd8d69f4 targets 0xd8d6b34 and is always taken.
  The `beql` branch at 0xd8d69fc targets 0xd8d6a2c, is taken when a3 == 0, and falls through when a3 != 0; its branch-likely delay slot `lw a1,1232(s0)` at 0xd8d6a00 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6a08 targets 0xd8d6a2c, is taken when v1(=[a3]) == 0, and falls through when v1(=[a3]) != 0; its branch-likely delay slot `lw a1,1232(s0)` at 0xd8d6a0c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d6a10 targets 0xd8d6a28, is taken when v1(=[a3]) == 0, and falls through when v1(=[a3]) != 0.
  The `bnel` branch at 0xd8d6a20 targets 0xd8d6a1c, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `lw t6,8(v0)` at 0xd8d6a24 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6a2c targets 0xd8d6a4c, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s0)` at 0xd8d6a30 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6a58 targets 0xd8d6a7c, is taken when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned); its branch-likely delay slot `lw a2,60(sp)` at 0xd8d6a5c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6af8 targets 0xd8d6b18, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d6afc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6b1c targets 0xd8d6b34, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,48(sp)` at 0xd8d6b20 runs only when taken and is annulled on fall-through.
  The return at 0xd8d6b40 has v0 = one of 0x0, ret(?).

- `glXDestroyWindow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d6b48 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d6b48-0xd8d6c60 (280 bytes).
  It occupies 280 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d6b80, `lw` at 0xd8d6c10.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d6b88, `lw` at 0xd8d6ba0, `lw` at 0xd8d6bcc.
  The `lw` at 0xd8d6b8c loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d6ba4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d6bb4, `sw` at 0xd8d6bd0.
  The `sh` at 0xd8d6bdc stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d6be0, `sb` at 0xd8d6c04.
  The `lw` at 0xd8d6be4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d6bf4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d6bf8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d6c00 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8d6c0c stores 4 bytes to [a0+108] +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d6c18, `lw` at 0xd8d6c30.
  The `lw` at 0xd8d6c1c loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8d6b6c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d6b94 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d6bc0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d6c24 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x20, a2=?, a3=?.
  The `jalr` at 0xd8d6c40 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8d6b78 targets 0xd8d6c4c, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` branch at 0xd8d6b84 targets 0xd8d6ba4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8d6b88 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6bb0 targets 0xd8d6bd4, is taken when t6(=[a0+112]) >= t7(=[a0+108]+8) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8d6bb4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6c14 targets 0xd8d6c34, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d6c18 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6c38 targets 0xd8d6c50, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8d6c3c runs only when taken and is annulled on fall-through.
  The return at 0xd8d6c58 has v0 = one of [a0+124], ?.

- `__glXGetReadDrawableSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d6df0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d6df0-0xd8d6ee0 (240 bytes).
  It occupies 240 bytes.
  The `lw` at 0xd8d6e10 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0xd8d6e1c loads 4 bytes from [a0+76] +0x11c.
  The `lw` at 0xd8d6e2c loads 4 bytes from [a0+76] +0x120.
  2 such `lw` accesses load 4 bytes from [a0+76] +0xd8, including `lw` at 0xd8d6e40, `lw` at 0xd8d6e84.
  2 such `lw` accesses load 4 bytes from [a0+76] +0xdc, including `lw` at 0xd8d6e44, `lw` at 0xd8d6e88.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8d6e6c, `lw` at 0xd8d6e74, `lw` at 0xd8d6ea8.
  The `sw` at 0xd8d6ec0 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0xd8d6ecc stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd8d6e50 calls glXQueryGLXPbufferSGIX with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=0x801d, a3=sp-8.
  The `jalr` at 0xd8d6e70 calls glXQueryGLXPbufferSGIX with a0=?, a1=?, a2=0x801e, a3=sp-12.
  The `jalr` at 0xd8d6e8c calls glXQueryDrawable with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=0x801d, a3=sp-8.
  The `jalr` at 0xd8d6eac calls glXQueryDrawable with a0=?, a1=?, a2=0x801e, a3=sp-12.
  The `bne` branch at 0xd8d6e24 targets 0xd8d6e80, is taken when t6(=[[a0+76]+284]) != at(=0x1), and falls through when t6(=[[a0+76]+284]) == at(=0x1).
  The `beq` branch at 0xd8d6e34 targets 0xd8d6e80, is taken when t7(=[[a0+76]+288]) >= 0x3 (signed), and falls through when t7(=[[a0+76]+288]) < 0x3 (signed).
  The `beq` branch at 0xd8d6e78 targets 0xd8d6eb8 and is always taken.
  The return at 0xd8d6ed8 has v0 = one of ret(glXQueryGLXPbufferSGIX), ret(glXQueryDrawable).

- `GetFBConfigsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d701c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d701c-0xd8d7714 (1784 bytes).
  It occupies 1784 bytes.
  The `lw` at 0xd8d7044 loads 4 bytes from a1 (arg1 at entry) +0x20.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d7058, `lw` at 0xd8d711c, `lw` at 0xd8d7170.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d7064, `lw` at 0xd8d7078, `lw` at 0xd8d70a4.
  The `lw` at 0xd8d7068 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d707c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d708c, `sw` at 0xd8d70a8.
  The `sh` at 0xd8d70b4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d70b8, `sb` at 0xd8d70f0.
  The `lw` at 0xd8d70c0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d70cc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d70d4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0xd8d70d8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `sb` at 0xd8d70e8 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8d70ec stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8d7100 stores 4 bytes to [a0+108] +0xc.
  11 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d7124, `lw` at 0xd8d713c, `lw` at 0xd8d7178.
  6 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8d7128, `lw` at 0xd8d717c, `lw` at 0xd8d71c8.
  41 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8d7320, `sw` at 0xd8d7334, `sw` at 0xd8d7360.
  8 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0xd8d7368, `sdc1` at 0xd8d736c, `sdc1` at 0xd8d7370.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8d73e8, `lw` at 0xd8d73ec, `lw` at 0xd8d7594.
  The `lw` at 0xd8d7448 loads 4 bytes from table(0xd8de160) +0x0.
  The `lw` at 0xd8d7470 loads 4 bytes from table(0xd8de1a0) +0x0.
  7 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8d7494, `sb` at 0xd8d749c, `sb` at 0xd8d75ac.
  The `lw` at 0xd8d7688 loads 4 bytes from ret(__glXOverrideVisualGetVisualInfo) +0x14.
  The `lw` at 0xd8d7690 loads 4 bytes from ret(__glXOverrideVisualGetVisualInfo) +0x18.
  The `lw` at 0xd8d7698 loads 4 bytes from ret(__glXOverrideVisualGetVisualInfo) +0x1c.
  The `jalr` at 0xd8d706c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d7098 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d710c calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xd8d7130 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d714c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d7184 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d71a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d71d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d71ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d720c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d7238 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d7254 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d728c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d72ac calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d72cc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d72e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d730c calls memset with a0=ret(malloc), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd8d73a4 calls _XRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d7628 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d7674 calls __glXOverrideVisualGetVisualInfo with a0=a0 at entry (arg0), a1=0x3, a2=sp-124, a3=sp-128.
  The `jalr` at 0xd8d76a8 calls free with a0=ret(__glXOverrideVisualGetVisualInfo), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d76d0 calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d76ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8d7060 targets 0xd8d707c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s2)` at 0xd8d7064 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d7088 targets 0xd8d70ac, is taken when t5(=[a0+112]) >= t7(=[a0+108]+16) (unsigned), and falls through when t5(=[a0+112]) < t7(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s2)` at 0xd8d708c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d7114 targets 0xd8d7160, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8d7120 targets 0xd8d7140, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s2)` at 0xd8d7124 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d7144 targets 0xd8d7158, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd8d7158 targets 0xd8d76fc and is always taken.
  The `bne` branch at 0xd8d7168 targets 0xd8d71b4, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beql` branch at 0xd8d7174 targets 0xd8d7194, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s2)` at 0xd8d7178 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d7198 targets 0xd8d71ac, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd8d71ac targets 0xd8d76fc and is always taken.
  The `bne` branch at 0xd8d71b4 targets 0xd8d7200, is taken when t4(?) != 0, and falls through when t4(?) == 0.
  The `beql` branch at 0xd8d71c0 targets 0xd8d71e0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s2)` at 0xd8d71c4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d71e4 targets 0xd8d71f8, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd8d71f8 targets 0xd8d76fc and is always taken.
  The `bne` branch at 0xd8d721c targets 0xd8d7268, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd8d7228 targets 0xd8d7248, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s2)` at 0xd8d722c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d724c targets 0xd8d7260, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd8d7260 targets 0xd8d76fc and is always taken.
  The `bne` branch at 0xd8d729c targets 0xd8d72fc, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd8d72bc targets 0xd8d72dc, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s2)` at 0xd8d72c0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d72e0 targets 0xd8d72f4, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd8d72f4 targets 0xd8d76fc and is always taken.
  The `blezl` branch at 0xd8d733c targets 0xd8d7618, is taken when t7(?) <= 0 (signed), and falls through when t7(?) > 0 (signed); its branch-likely delay slot `lw v0,1232(s2)` at 0xd8d7340 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd8d73e0 targets 0xd8d7598, is taken when t4(?) <= 0 (signed), and falls through when t4(?) > 0 (signed).
  The `bnel` branch at 0xd8d73f8 targets 0xd8d741c, is taken when v1(?) < t1(=0x801b) (signed), and falls through when v1(?) >= t1(=0x801b) (signed); its branch-likely delay slot `slti at,v1,41` at 0xd8d73fc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d7400 targets 0xd8d74f8, is taken when v1(?) == t2(=0x186a0), and falls through when v1(?) != t2(=0x186a0).
  The `beq` branch at 0xd8d7408 targets 0xd8d7500, is taken when v1(?) == t3(=0x186a1), and falls through when v1(?) != t3(=0x186a1).
  The `beq` branch at 0xd8d7410 targets 0xd8d7590 and is always taken.
  The `bne` branch at 0xd8d741c targets 0xd8d7458, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beql` branch at 0xd8d7434 targets 0xd8d7590, is taken when t9(=table(-0x800b)) >= 0x10 (unsigned), and falls through when t9(=table(-0x800b)) < 0x10 (unsigned); its branch-likely delay slot `addiu t0,t0,1` at 0xd8d7438 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d745c targets 0xd8d7590, is taken when t6(?) >= 0x27 (unsigned), and falls through when t6(?) < 0x27 (unsigned); its branch-likely delay slot `addiu t0,t0,1` at 0xd8d7460 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d7480 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7488 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7490 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7498 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74a0 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74a8 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74b0 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74b8 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74c0 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74c8 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74d0 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74d8 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74e0 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74e8 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74f0 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74f8 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7500 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7508 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7510 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7518 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7520 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7528 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7530 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7538 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7540 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7548 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7550 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7558 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7560 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7568 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7570 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7578 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7580 targets 0xd8d758c and is always taken.
  The `bnel` branch at 0xd8d7590 targets 0xd8d73ec, is taken when t0(?) != t4(?), and falls through when t0(?) == t4(?); its branch-likely delay slot `lw v1,0(a3)` at 0xd8d7594 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d75c0 targets 0xd8d75e4, is taken when 0 < v0(?) (signed), and falls through when 0 >= v0(?) (signed); its branch-likely delay slot `lw t9,100(s0)` at 0xd8d75c4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d75d0 targets 0xd8d75e4, is taken when 0 < v0(?) (signed), and falls through when 0 >= v0(?) (signed); its branch-likely delay slot `lw t9,100(s0)` at 0xd8d75d4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d7608 targets 0xd8d735c, is taken when s1(?) != t7(?), and falls through when s1(?) == t7(?); its branch-likely delay slot `lw a1,116(sp)` at 0xd8d760c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d7618 targets 0xd8d7638, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw t8,124(sp)` at 0xd8d761c runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd8d763c targets 0xd8d76c8, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `beql` branch at 0xd8d764c targets 0xd8d76b8, is taken when t5(?) == 0, and falls through when t5(?) != 0; its branch-likely delay slot `lw t7,124(sp)` at 0xd8d7650 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d7680 targets 0xd8d76b4, is taken when v0(=ret(__glXOverrideVisualGetVisualInfo)) == 0, and falls through when v0(=ret(__glXOverrideVisualGetVisualInfo)) != 0.
  The `bnel` branch at 0xd8d76c0 targets 0xd8d7648, is taken when s1(?) != t7(?), and falls through when s1(?) == t7(?); its branch-likely delay slot `lw t5,32(s0)` at 0xd8d76c4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d76e4 targets 0xd8d76fc, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xd8d76e8 runs only when taken and is annulled on fall-through.
  The return at 0xd8d770c has v0 = one of 0x0, 0x1.
  The instructions from 0xd8d7418 to 0xd8d7418 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd8d7450 uses the jump table at 0xd8de160 with targets 0xd8d7558, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d7548, 0xd8d7550, 0xd8d758c, 0xd8d7560, 0xd8d758c, 0xd8d758c, 0xd8d7568, 0xd8d7570, 0xd8d7578, 0xd8d7580, 0xd8d7588.
  The indirect jump at 0xd8d7478 uses the jump table at 0xd8de1a0 with targets 0xd8d7480, 0xd8d7488, 0xd8d758c, 0xd8d7490, 0xd8d7498, 0xd8d74a0, 0xd8d74a8, 0xd8d74b0, 0xd8d74b8, 0xd8d74c0, 0xd8d74c8, 0xd8d74d0, 0xd8d74d8, 0xd8d74e0, 0xd8d74e8, 0xd8d74f0, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d7540, 0xd8d758c, 0xd8d7508, 0xd8d7510, 0xd8d7518, 0xd8d7520, 0xd8d7528, 0xd8d7530, 0xd8d7538.
  The indirect jump at 0xd8d7450 uses the jump table at 0xd8de160 with targets 0xd8d7558, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d7548, 0xd8d7550, 0xd8d758c, 0xd8d7560, 0xd8d758c, 0xd8d758c, 0xd8d7568, 0xd8d7570, 0xd8d7578, 0xd8d7580, 0xd8d7588.
  The indirect jump at 0xd8d7478 uses the jump table at 0xd8de1a0 with targets 0xd8d7480, 0xd8d7488, 0xd8d758c, 0xd8d7490, 0xd8d7498, 0xd8d74a0, 0xd8d74a8, 0xd8d74b0, 0xd8d74b8, 0xd8d74c0, 0xd8d74c8, 0xd8d74d0, 0xd8d74d8, 0xd8d74e0, 0xd8d74e8, 0xd8d74f0, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d7540, 0xd8d758c, 0xd8d7508, 0xd8d7510, 0xd8d7518, 0xd8d7520, 0xd8d7528, 0xd8d7530, 0xd8d7538.
  The indirect jump at 0xd8d7450 uses the jump table at 0xd8de160 with targets 0xd8d7558, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d7548, 0xd8d7550, 0xd8d758c, 0xd8d7560, 0xd8d758c, 0xd8d758c, 0xd8d7568, 0xd8d7570, 0xd8d7578, 0xd8d7580, 0xd8d7588.
  The indirect jump at 0xd8d7478 uses the jump table at 0xd8de1a0 with targets 0xd8d7480, 0xd8d7488, 0xd8d758c, 0xd8d7490, 0xd8d7498, 0xd8d74a0, 0xd8d74a8, 0xd8d74b0, 0xd8d74b8, 0xd8d74c0, 0xd8d74c8, 0xd8d74d0, 0xd8d74d8, 0xd8d74e0, 0xd8d74e8, 0xd8d74f0, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d7540, 0xd8d758c, 0xd8d7508, 0xd8d7510, 0xd8d7518, 0xd8d7520, 0xd8d7528, 0xd8d7530, 0xd8d7538.
  The indirect jump at 0xd8d7450 uses the jump table at 0xd8de160 with targets 0xd8d7558, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d7548, 0xd8d7550, 0xd8d758c, 0xd8d7560, 0xd8d758c, 0xd8d758c, 0xd8d7568, 0xd8d7570, 0xd8d7578, 0xd8d7580, 0xd8d7588.
  The indirect jump at 0xd8d7478 uses the jump table at 0xd8de1a0 with targets 0xd8d7480, 0xd8d7488, 0xd8d758c, 0xd8d7490, 0xd8d7498, 0xd8d74a0, 0xd8d74a8, 0xd8d74b0, 0xd8d74b8, 0xd8d74c0, 0xd8d74c8, 0xd8d74d0, 0xd8d74d8, 0xd8d74e0, 0xd8d74e8, 0xd8d74f0, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d7540, 0xd8d758c, 0xd8d7508, 0xd8d7510, 0xd8d7518, 0xd8d7520, 0xd8d7528, 0xd8d7530, 0xd8d7538.

- `GetFBConfigsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d701c (1784 bytes).
  Evidence grade: inferred.
  It takes the display in a0 and runs a request-and-reply exchange: `_XFlush` at 0xd8d7098 and `_XReply` at 0xd8d710c, with many calls on the display pointer whose targets are unnamed. It allocates storage with `malloc` at 0xd8d720c and 0xd8d728c and releases a block with `free` at 0xd8d72ac. The shape suggests it builds an array of FBConfig records for the caller, but the facts do not confirm the record count or layout.
  Reviewed: 2026-11-12

- `__glXMakeContextCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d789c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d789c-0xd8d8578 (3292 bytes).
  It occupies 3292 bytes.
  9 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd8d790c, `lw` at 0xd8d7948, `lw` at 0xd8d798c.
  7 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x14, including `lw` at 0xd8d7920, `lw` at 0xd8d7ac4, `lw` at 0xd8d7b68.
  The `lw` at 0xd8d7930 loads 4 bytes from a3 (arg3 at entry) +0xd0.
  2 such `lw` accesses load 4 bytes from [0x1014] +0x10c, including `lw` at 0xd8d794c, `lw` at 0xd8d7990.
  2 such `lw` accesses load 4 bytes from [0x1014] +0x110, including `lw` at 0xd8d7958, `lw` at 0xd8d799c.
  The `lw` at 0xd8d795c loads 4 bytes from a3 (arg3 at entry) +0xd4.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0xd0, including `sw` at 0xd8d7994, `sw` at 0xd8d7a30.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0xd4, including `sw` at 0xd8d79a0, `sw` at 0xd8d7a2c.
  The `lw` at 0xd8d79a8 loads 4 bytes from [0x1014] +0x114.
  3 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xc4, including `lw` at 0xd8d79ac, `lw` at 0xd8d7bc4, `lw` at 0xd8d7bcc.
  The `lw` at 0xd8d79bc loads 4 bytes from [[0x1014]+276] +0xc8.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xe0, including `lw` at 0xd8d79c0, `lw` at 0xd8d823c.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xdc, including `lw` at 0xd8d79cc, `lw` at 0xd8d8240.
  The `lw` at 0xd8d79e4 loads 4 bytes from [[[0x1014]+276]+200] +0x5c.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0x118, including `lw` at 0xd8d79fc, `lw` at 0xd8d84b8.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0x14, including `lw` at 0xd8d7a18, `lw` at 0xd8d84c0.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xe4, including `lw` at 0xd8d7a40, `lw` at 0xd8d7a54.
  The `lw` at 0xd8d7a5c loads 4 bytes from [[0x1014]+276] +0xe8.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0xc4, including `lw` at 0xd8d7a78, `lw` at 0xd8d7f38, `lw` at 0xd8d8248.
  6 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x20, including `lw` at 0xd8d7af8, `lw` at 0xd8d7b9c, `lw` at 0xd8d7f80.
  2 such `lw` accesses load 4 bytes from ret(__glXAddDrawableInterest) +0x8, including `lw` at 0xd8d7afc, `lw` at 0xd8d7ba0.
  6 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x30, including `lw` at 0xd8d7b0c, `lw` at 0xd8d7f98, `lw` at 0xd8d7fac.
  The `lw` at 0xd8d7b10 loads 4 bytes from ret(__glXAddDrawableInterest) +0xc.
  The `lw` at 0xd8d7b1c loads 4 bytes from ret(__glXAddDrawableInterest) +0x2c.
  The `lw` at 0xd8d7bac loads 4 bytes from ret(__glXAddDrawableInterest) +0x10.
  3 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xd8, including `lw` at 0xd8d7c20, `lw` at 0xd8d8238, `lw` at 0xd8d849c.
  3 such `lw` accesses load 4 bytes from [[0x1014]+276] +0x3c, including `lw` at 0xd8d7c34, `lw` at 0xd8d7dd8, `lw` at 0xd8d7e18.
  2 such `sw` accesses store 4 bytes to [[0x1014]+276] +0x3c, including `sw` at 0xd8d7c7c, `sw` at 0xd8d7f64.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd8d7c94, `lbu` at 0xd8d7ca0, `lbu` at 0xd8d7ccc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xd8d7ce0, `lw` at 0xd8d7d5c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c8, including `lw` at 0xd8d7d00, `lw` at 0xd8d7d7c, `lw` at 0xd8d7e5c.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c8, including `sw` at 0xd8d7d18, `sw` at 0xd8d7d94, `sw` at 0xd8d7e7c.
  36 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8d7d20, `lw` at 0xd8d7d9c, `lw` at 0xd8d7f70.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8d7d3c, `sb` at 0xd8d7db4, `sb` at 0xd8d7e60.
  2 such `lbu` accesses load 1 byte from a3 (arg3 at entry) +0x1d, including `lbu` at 0xd8d7dc0, `lbu` at 0xd8d7f8c.
  The `sw` at 0xd8d7f48 stores 4 bytes to a3 (arg3 at entry) +0x3c.
  21 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8d7f7c, `sw` at 0xd8d7f88, `sw` at 0xd8d7f9c.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x11c, including `lw` at 0xd8d7fe8, `lw` at 0xd8d8094.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x120, including `lw` at 0xd8d7ff8, `lw` at 0xd8d80a4.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0xc8, including `lw` at 0xd8d80f4, `lw` at 0xd8d8114, `lw` at 0xd8d8264.
  The `lw` at 0xd8d8118 loads 4 bytes from [a3+200] +0x68.
  2 such `sw` accesses store 4 bytes to [0x1014] +0x114, including `sw` at 0xd8d8244, `sw` at 0xd8d843c.
  The `sw` at 0xd8d824c stores 4 bytes to a3 (arg3 at entry) +0xd8.
  The `sw` at 0xd8d8250 stores 4 bytes to a3 (arg3 at entry) +0xe0.
  The `sw` at 0xd8d8254 stores 4 bytes to a3 (arg3 at entry) +0xe4.
  The `sw` at 0xd8d8258 stores 4 bytes to a3 (arg3 at entry) +0xdc.
  The `sw` at 0xd8d8260 stores 4 bytes to a3 (arg3 at entry) +0xe8.
  The `lw` at 0xd8d8270 loads 4 bytes from [a3+200] +0x64.
  4 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xd8, including `sw` at 0xd8d82a0, `sw` at 0xd8d8334, `sw` at 0xd8d83b8.
  4 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xe0, including `sw` at 0xd8d82a4, `sw` at 0xd8d8338, `sw` at 0xd8d83bc.
  4 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xdc, including `sw` at 0xd8d82ac, `sw` at 0xd8d8340, `sw` at 0xd8d83c8.
  4 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xe4, including `sw` at 0xd8d82b4, `sw` at 0xd8d8348, `sw` at 0xd8d83cc.
  4 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xe8, including `sw` at 0xd8d82c4, `sw` at 0xd8d8358, `sw` at 0xd8d83e0.
  The `lw` at 0xd8d8314 loads 4 bytes from [a3+200] +0x60.
  The `lbu` at 0xd8d839c loads 1 byte from a3 (arg3 at entry) +0xf4.
  2 such `lw` accesses load 4 bytes from abs 0x1048, including `lw` at 0xd8d83ec, `lw` at 0xd8d8440.
  The `sw` at 0xd8d84a4 stores 4 bytes to [0x1014] +0x118.
  The `lw` at 0xd8d84ac loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd8d84b0 stores 4 bytes to [0x1014] +0x11c.
  The `sw` at 0xd8d84bc stores 4 bytes to [0x1014] +0x120.
  The `sw` at 0xd8d84fc stores 4 bytes to [[0x1014]+276] +0xd4.
  The `sw` at 0xd8d8500 stores 4 bytes to [[0x1014]+276] +0xd0.
  The `jalr` at 0xd8d78f0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d7918 calls __glXInitThread [0xd8ae988] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d7974 calls __glXPostError with a0=a0 at entry (arg0), a1=0xa, a2=0x5, a3=[a3+20].
  The `jalr` at 0xd8d79e8 calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d7a14 calls __glXPostError with a0=a0 at entry (arg0), a1=?, a2=0x5, a3=[[[0x1014]+276]+20].
  The `jalr` at 0xd8d7a48 calls __glXUnbindHWContextFromThread with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d7a9c calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d7ac0 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20].
  The `jalr` at 0xd8d7ae4 calls __glXRestoreCurrent [0xd8c2a98] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=0x0, a3=0x0.
  The `jalr` at 0xd8d7b40 calls __glXAddDrawableInterest with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d7b64 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20].
  The `jalr` at 0xd8d7b88 calls __glXRestoreCurrent [0xd8c2a98] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=ret(__glXAddDrawableInterest), a3=0x0.
  The `jalr` at 0xd8d7c40 calls __glXSendMakeCurrent [0xd8af4fc] with a0=[[[0x1014]+276]+216], a1=0x0, a2=[[[0x1014]+276]+60], a3=sp-64.
  The `jalr` at 0xd8d7c64 calls __glXRestoreCurrent [0xd8c2a98] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=0x0.
  The `jalr` at 0xd8d7cb8 calls XSGIMiscQueryExtension with a0=a0 at entry (arg0), a1=sp-136, a2=sp-140, a3=?.
  The `jalr` at 0xd8d7d28 calls _XSGISetSpecialDestroyInterest with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d7da4 calls _XSGISetSpecialDestroyInterest with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d7e00 calls __glXSendMakeCurrentRead [0xd8c2d34] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1014]+276]+60], a3=sp-64.
  The `jalr` at 0xd8d7e28 calls __glXSendMakeCurrent [0xd8af4fc] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1014]+276]+60], a3=sp-64.
  The `jalr` at 0xd8d7e8c calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-76, a2=?, a3=?.
  The `jalr` at 0xd8d7ef0 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-88, a2=?, a3=?.
  The `jalr` at 0xd8d7f1c calls __glXRestoreCurrent [0xd8c2a98] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=?.
  The `jalr` at 0xd8d7fb0 calls __glXOverrideVisualsBogusChoose with a0=?, a1=[a3+48], a2=?, a3=?.
  The `jalr` at 0xd8d7fd8 calls __glXGetModes with a0=a0 at entry (arg0), a1=[a3+32], a2=?, a3=?.
  The `jalr` at 0xd8d8028 calls glXQueryDrawable with a0=a0 at entry (arg0), a1=?, a2=0x8025, a3=?.
  The `jalr` at 0xd8d8064 calls __glXOverrideVisualsBogusChoose with a0=?, a1=[a3+48], a2=?, a3=?.
  The `jalr` at 0xd8d8084 calls __glXGetModes with a0=a0 at entry (arg0), a1=[a3+32], a2=ret(__glXOverrideVisualsBogusChoose), a3=?.
  The `jalr` at 0xd8d80d4 calls glXQueryDrawable with a0=a0 at entry (arg0), a1=?, a2=0x8025, a3=?.
  The `jalr` at 0xd8d8138 calls (unknown callee) with a0=[a3+200], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d8158 calls __glXPostError with a0=a0 at entry (arg0), a1=0x8, a2=0x5, a3=[a3+20].
  The `jalr` at 0xd8d817c calls __glXRestoreCurrent [0xd8c2a98] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=?.
  The `jalr` at 0xd8d81f8 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20].
  The `jalr` at 0xd8d821c calls __glXRestoreCurrent [0xd8c2a98] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=?.
  The `jalr` at 0xd8d8284 calls (unknown callee) with a0=[a3+200], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d82d0 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20].
  The `jalr` at 0xd8d82f4 calls __glXRestoreCurrent [0xd8c2a98] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=?.
  The `jalr` at 0xd8d8318 calls (unknown callee) with a0=[a3+200], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d8364 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20].
  The `jalr` at 0xd8d8388 calls __glXRestoreCurrent [0xd8c2a98] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=?.
  The `jalr` at 0xd8d83dc calls __glXRestoreCurrent [0xd8c2a98] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=?.
  The `jalr` at 0xd8d84d8 calls __glXFreeContext with a0=[[0x1014]+276], a1=0x1, a2=?, a3=?.
  The `jalr` at 0xd8d8518 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d853c calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8d78f8 targets 0xd8d7908, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd8d7900 targets 0xd8d854c and is always taken.
  The `beql` branch at 0xd8d7908 targets 0xd8d79a8, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0; its branch-likely delay slot `lw t5,4116(zero)` at 0xd8d790c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d792c targets 0xd8d7940, is taken when a3(=[a3+20]) != 0, and falls through when a3(=[a3+20]) == 0; its branch-likely delay slot `lw v1,208(s0)` at 0xd8d7930 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d7934 targets 0xd8d854c and is always taken.
  The `beql` branch at 0xd8d7940 targets 0xd8d798c, is taken when v1(=[a3+208]) == 0, and falls through when v1(=[a3+208]) != 0; its branch-likely delay slot `addiu a0,zero,4096` at 0xd8d7944 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d7950 targets 0xd8d7968, is taken when t6(=[[0x1014]+268]) != v1(=[a3+208]), and falls through when t6(=[[0x1014]+268]) == v1(=[a3+208]).
  The `beql` branch at 0xd8d7960 targets 0xd8d798c, is taken when t7(=[[0x1014]+272]) == t8(=[a3+212]), and falls through when t7(=[[0x1014]+272]) != t8(=[a3+212]); its branch-likely delay slot `addiu a0,zero,4096` at 0xd8d7964 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d7980 targets 0xd8d854c and is always taken.
  The `beql` branch at 0xd8d79b0 targets 0xd8d7a6c, is taken when t6(=[[[0x1014]+276]+196]) == 0, and falls through when t6(=[[[0x1014]+276]+196]) != 0; its branch-likely delay slot `sw zero,240(sp)` at 0xd8d79b4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d79b8 targets 0xd8d79e0, is taken when s0(=a3) != s3(=[[0x1014]+276]), and falls through when s0(=a3) == s3(=[[0x1014]+276]).
  The `bnel` branch at 0xd8d79c4 targets 0xd8d79e4, is taken when s5(=a1) != t7(=[[[0x1014]+276]+224]), and falls through when s5(=a1) == t7(=[[[0x1014]+276]+224]); its branch-likely delay slot `sw a0,232(sp)` at 0xd8d79c8 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d79d0 targets 0xd8d79e4, is taken when s6(=a2) != t8(=[[[0x1014]+276]+220]), and falls through when s6(=a2) == t8(=[[[0x1014]+276]+220]); its branch-likely delay slot `sw a0,232(sp)` at 0xd8d79d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d79d8 targets 0xd8d854c and is always taken.
  The `bne` branch at 0xd8d79f4 targets 0xd8d7a3c, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0xd8d7a1c targets 0xd8d7a34, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xd8d7a24 targets 0xd8d7a34, is taken when s0(=a3) == s3(=[[0x1014]+276]), and falls through when s0(=a3) != s3(=[[0x1014]+276]).
  The `beq` branch at 0xd8d7a34 targets 0xd8d854c and is always taken.
  The `beql` branch at 0xd8d7a3c targets 0xd8d7a58, is taken when s0(=a3) == s3(=[[0x1014]+276]), and falls through when s0(=a3) != s3(=[[0x1014]+276]); its branch-likely delay slot `lw t2,228(s3)` at 0xd8d7a40 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d7a60 targets 0xd8d7a70 and is always taken.
  The `beq` branch at 0xd8d7a70 targets 0xd8d7bc8, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xd8d7a7c targets 0xd8d7bc8, is taken when t4(=[a3+196]) == 0, and falls through when t4(=[a3+196]) != 0.
  The `beq` branch at 0xd8d7a84 targets 0xd8d7bc8, is taken when s5(=a1) == 0, and falls through when s5(=a1) != 0.
  The `beq` branch at 0xd8d7a8c targets 0xd8d7bc8, is taken when s6(=a2) == 0, and falls through when s6(=a2) != 0.
  The `bne` branch at 0xd8d7aa8 targets 0xd8d7af8, is taken when v0(=ret(__glXAddDrawableInterest)) != 0, and falls through when v0(=ret(__glXAddDrawableInterest)) == 0.
  The `beq` branch at 0xd8d7af0 targets 0xd8d854c and is always taken.
  The `bnel` branch at 0xd8d7b04 targets 0xd8d7b30, is taken when t5(=[a3+32]) != t6(=[ret(__glXAddDrawableInterest)+8]), and falls through when t5(=[a3+32]) == t6(=[ret(__glXAddDrawableInterest)+8]); its branch-likely delay slot `addiu s7,zero,1` at 0xd8d7b08 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d7b14 targets 0xd8d7b30, is taken when t7(=[a3+48]) != t8(=[ret(__glXAddDrawableInterest)+12]), and falls through when t7(=[a3+48]) == t8(=[ret(__glXAddDrawableInterest)+12]); its branch-likely delay slot `addiu s7,zero,1` at 0xd8d7b18 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d7b24 targets 0xd8d7b30, is taken when t9(=[ret(__glXAddDrawableInterest)+44]) != at(=0x3), and falls through when t9(=[ret(__glXAddDrawableInterest)+44]) == at(=0x3).
  The `beq` branch at 0xd8d7b30 targets 0xd8d7bc0, is taken when s5(=a1) == s6(=a2), and falls through when s5(=a1) != s6(=a2).
  The `bne` branch at 0xd8d7b4c targets 0xd8d7b9c, is taken when v0(=ret(__glXAddDrawableInterest)) != 0, and falls through when v0(=ret(__glXAddDrawableInterest)) == 0.
  The `beq` branch at 0xd8d7b94 targets 0xd8d854c and is always taken.
  The `bne` branch at 0xd8d7ba4 targets 0xd8d7bb8, is taken when t2(=[a3+32]) != t3(=[ret(__glXAddDrawableInterest)+8]), and falls through when t2(=[a3+32]) == t3(=[ret(__glXAddDrawableInterest)+8]).
  The `bne` branch at 0xd8d7bb0 targets 0xd8d7bc0, is taken when t4(=[ret(__glXAddDrawableInterest)+16]) != 0, and falls through when t4(=[ret(__glXAddDrawableInterest)+16]) == 0.
  The `beq` branch at 0xd8d7bb8 targets 0xd8d7bc0 and is always taken.
  The `beq` branch at 0xd8d7bc0 targets 0xd8d7be4 and is always taken.
  The `bne` branch at 0xd8d7bc8 targets 0xd8d7be0, is taken when s0(=a3) != 0, and falls through when s0(=a3) == 0.
  The `bnel` branch at 0xd8d7bd0 targets 0xd8d7be4, is taken when s5(=a1) != 0, and falls through when s5(=a1) == 0; its branch-likely delay slot `addiu s7,zero,1` at 0xd8d7bd4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d7bd8 targets 0xd8d7be4, is taken when s6(=a2) == 0, and falls through when s6(=a2) != 0.
  The `bne` branch at 0xd8d7be4 targets 0xd8d7c00, is taken when v0(=[[[0x1014]+276]+196]) != 0, and falls through when v0(=[[[0x1014]+276]+196]) == 0.
  The `beq` branch at 0xd8d7bf4 targets 0xd8d7c00, is taken when s3(=[[0x1014]+276]) == t5(=0xd8f0be0), and falls through when s3(=[[0x1014]+276]) != t5(=0xd8f0be0).
  The `beq` branch at 0xd8d7c00 targets 0xd8d80e0, is taken when s7(=one of 0x0, 0x1) == 0, and falls through when s7(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0xd8d7c08 targets 0xd8d7c80, is taken when v0(=[[[0x1014]+276]+196]) != 0, and falls through when v0(=[[[0x1014]+276]+196]) == 0.
  The `beq` branch at 0xd8d7c18 targets 0xd8d7c80, is taken when s3(=[[0x1014]+276]) == t6(=0xd8f0be0), and falls through when s3(=[[0x1014]+276]) != t6(=0xd8f0be0).
  The `beq` branch at 0xd8d7c28 targets 0xd8d7c80, is taken when s4(=a0) == a0(=[[[0x1014]+276]+216]), and falls through when s4(=a0) != a0(=[[[0x1014]+276]+216]).
  The `bne` branch at 0xd8d7c48 targets 0xd8d7c78, is taken when v0(=ret(__glXSendMakeCurrent)) != 0, and falls through when v0(=ret(__glXSendMakeCurrent)) == 0.
  The `beq` branch at 0xd8d7c70 targets 0xd8d854c and is always taken.
  The `beq` branch at 0xd8d7c8c targets 0xd8d7db8, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0xd8d7c98 targets 0xd8d7cac, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0xd8d7ca4 targets 0xd8d7db8, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0xd8d7cc4 targets 0xd8d7d40, is taken when v0(=ret(XSGIMiscQueryExtension)) == 0, and falls through when v0(=ret(XSGIMiscQueryExtension)) != 0.
  The `bne` branch at 0xd8d7cd8 targets 0xd8d7d40, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0xd8d7d40 targets 0xd8d7db8, is taken when v1(=ret(XSGIMiscQueryExtension)) == 0, and falls through when v1(=ret(XSGIMiscQueryExtension)) != 0.
  The `bne` branch at 0xd8d7d54 targets 0xd8d7db8, is taken when t5(?) != 0, and falls through when t5(?) == 0.
  The `beq` branch at 0xd8d7db8 targets 0xd8d7dcc, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `bne` branch at 0xd8d7dc4 targets 0xd8d7dd4, is taken when t7(=[a3+29]:1) != 0, and falls through when t7(=[a3+29]:1) == 0.
  The `beq` branch at 0xd8d7dcc targets 0xd8d7e14, is taken when s5(=a1) == s6(=a2), and falls through when s5(=a1) != s6(=a2).
  The `beq` branch at 0xd8d7e0c targets 0xd8d7e38 and is always taken.
  The `bnel` branch at 0xd8d7e44 targets 0xd8d7ea0, is taken when t9(?) != t2(=sym(_XAsyncErrorHandler)), and falls through when t9(?) == t2(=sym(_XAsyncErrorHandler)); its branch-likely delay slot `lw t8,180(sp)` at 0xd8d7e48 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d7e4c targets 0xd8d7e64, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bnel` branch at 0xd8d7e58 targets 0xd8d7e68, is taken when t4(?) != at(=0x3), and falls through when t4(?) == at(=0x3); its branch-likely delay slot `lw t6,1224(s4)` at 0xd8d7e5c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d7e70 targets 0xd8d7e80, is taken when t5(=sp-76) != t6(=[a0+1224]), and falls through when t5(=sp-76) == t6(=[a0+1224]).
  The `beq` branch at 0xd8d7e78 targets 0xd8d7e9c and is always taken.
  The `bne` branch at 0xd8d7ea8 targets 0xd8d7f00, is taken when t8(?) != t9(=sym(_XAsyncErrorHandler)), and falls through when t8(?) == t9(=sym(_XAsyncErrorHandler)).
  The `beq` branch at 0xd8d7eb0 targets 0xd8d7ec8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bnel` branch at 0xd8d7ebc targets 0xd8d7ecc, is taken when t3(?) != at(=0x3), and falls through when t3(?) == at(=0x3); its branch-likely delay slot `lw t5,1224(s4)` at 0xd8d7ec0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d7ed4 targets 0xd8d7ee4, is taken when t4(=sp-88) != t5(=[a0+1224]), and falls through when t4(=sp-88) == t5(=[a0+1224]).
  The `beq` branch at 0xd8d7edc targets 0xd8d7f00 and is always taken.
  The `bne` branch at 0xd8d7f00 targets 0xd8d7f30, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xd8d7f28 targets 0xd8d854c and is always taken.
  The `beq` branch at 0xd8d7f30 targets 0xd8d7f4c, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `bne` branch at 0xd8d7f40 targets 0xd8d7f4c, is taken when t7(=[a3+196]) != 0, and falls through when t7(=[a3+196]) == 0.
  The `beq` branch at 0xd8d7f4c targets 0xd8d7f68, is taken when s0(=a3) == s3(=[[0x1014]+276]), and falls through when s0(=a3) != s3(=[[0x1014]+276]).
  The `beq` branch at 0xd8d7f5c targets 0xd8d7f68, is taken when s3(=[[0x1014]+276]) == t9(=0xd8f0be0), and falls through when s3(=[[0x1014]+276]) != t9(=0xd8f0be0).
  The `beq` branch at 0xd8d7f68 targets 0xd8d80e0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bnel` branch at 0xd8d7f74 targets 0xd8d8038, is taken when t2(?) != 0, and falls through when t2(?) == 0; its branch-likely delay slot `lw t3,16(s2)` at 0xd8d7f78 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d7f84 targets 0xd8d7fc4, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beql` branch at 0xd8d7f94 targets 0xd8d7fc8, is taken when t4(=[a3+29]:1) == 0, and falls through when t4(=[a3+29]:1) != 0; its branch-likely delay slot `lw t7,48(s0)` at 0xd8d7f98 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d7fbc targets 0xd8d7fcc and is always taken.
  The `beql` branch at 0xd8d7ff0 targets 0xd8d800c, is taken when t8(=[a3+284]) >= 0x2 (signed), and falls through when t8(=[a3+284]) < 0x2 (signed); its branch-likely delay slot `lw t2,44(s1)` at 0xd8d7ff4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d8000 targets 0xd8d8038, is taken when t9(=[a3+288]) < 0x3 (signed), and falls through when t9(=[a3+288]) >= 0x3 (signed); its branch-likely delay slot `lw t3,16(s2)` at 0xd8d8004 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d8014 targets 0xd8d8038, is taken when t2(?) != at(=0x6), and falls through when t2(?) == at(=0x6); its branch-likely delay slot `lw t3,16(s2)` at 0xd8d8018 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d8038 targets 0xd8d80e0, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beql` branch at 0xd8d809c targets 0xd8d80b8, is taken when t7(=[a3+284]) >= 0x2 (signed), and falls through when t7(=[a3+284]) < 0x2 (signed); its branch-likely delay slot `lw t9,44(s2)` at 0xd8d80a0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d80ac targets 0xd8d80e0, is taken when t8(=[a3+288]) < 0x3 (signed), and falls through when t8(=[a3+288]) >= 0x3 (signed).
  The `bne` branch at 0xd8d80c0 targets 0xd8d80e0, is taken when t9(?) != at(=0x6), and falls through when t9(?) == at(=0x6).
  The `beq` branch at 0xd8d80e0 targets 0xd8d8190, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bnel` branch at 0xd8d80f0 targets 0xd8d8118, is taken when t2(=[a3+48]) != v0(?), and falls through when t2(=[a3+48]) == v0(?); its branch-likely delay slot `lw a0,200(s0)` at 0xd8d80f4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d80fc targets 0xd8d8190, is taken when t3(?) == v0(?), and falls through when t3(?) != v0(?).
  The `beq` branch at 0xd8d810c targets 0xd8d8190, is taken when t4(?) == at(=0x3), and falls through when t4(?) != at(=0x3).
  The `beq` branch at 0xd8d811c targets 0xd8d8190, is taken when v0(=[[a3+200]+104]) == 0, and falls through when v0(=[[a3+200]+104]) != 0.
  The `bne` branch at 0xd8d8140 targets 0xd8d8190, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0xd8d8188 targets 0xd8d854c and is always taken.
  The `beq` branch at 0xd8d8190 targets 0xd8d8230, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0xd8d8198 targets 0xd8d8230, is taken when s1(?) == s2(?), and falls through when s1(?) != s2(?).
  The `beql` branch at 0xd8d81a8 targets 0xd8d81c4, is taken when t6(?) == at(=0x4), and falls through when t6(?) != at(=0x4); its branch-likely delay slot `lw t8,28(s1)` at 0xd8d81ac runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d81b8 targets 0xd8d8230, is taken when t7(?) != at(=0x4), and falls through when t7(?) == at(=0x4).
  The `bne` branch at 0xd8d81cc targets 0xd8d8230, is taken when t8(?) < t9(?) (signed), and falls through when t8(?) >= t9(?) (signed).
  The `bne` branch at 0xd8d81e0 targets 0xd8d8230, is taken when t2(?) < t3(?) (signed), and falls through when t2(?) >= t3(?) (signed).
  The `beq` branch at 0xd8d8228 targets 0xd8d854c and is always taken.
  The `beq` branch at 0xd8d8230 targets 0xd8d8434, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xd8d825c targets 0xd8d83ec, is taken when t4(=[a3+196]) == 0, and falls through when t4(=[a3+196]) != 0.
  The `beq` branch at 0xd8d8274 targets 0xd8d8308, is taken when v0(=[[a3+200]+100]) == 0, and falls through when v0(=[[a3+200]+100]) != 0.
  The `bne` branch at 0xd8d8298 targets 0xd8d839c, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0xd8d8300 targets 0xd8d854c and is always taken.
  The `bne` branch at 0xd8d832c targets 0xd8d839c, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0xd8d8394 targets 0xd8d854c and is always taken.
  The `beq` branch at 0xd8d83a8 targets 0xd8d8484, is taken when t2(=[a3+244]:1) == 0, and falls through when t2(=[a3+244]:1) != 0.
  The `bne` branch at 0xd8d83b0 targets 0xd8d8484, is taken when s7(=one of 0x0, 0x1) != 0, and falls through when s7(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8d83e4 targets 0xd8d7908 and is always taken.
  The `bne` branch at 0xd8d83f0 targets 0xd8d8484, is taken when t5(=[0x1048]) != 0, and falls through when t5(=[0x1048]) == 0.
  The `bne` branch at 0xd8d8420 targets 0xd8d8404, is taken when t9(?) != t2(=sym(__glx_dispatch)+1812), and falls through when t9(?) == t2(=sym(__glx_dispatch)+1812).
  The `beq` branch at 0xd8d842c targets 0xd8d8484 and is always taken.
  The `bne` branch at 0xd8d8444 targets 0xd8d8484, is taken when t4(=[0x1048]) != 0, and falls through when t4(=[0x1048]) == 0.
  The `bne` branch at 0xd8d8474 targets 0xd8d8458, is taken when t2(?) != t7(=sym(__glx_nopDispatch)+1812), and falls through when t2(?) == t7(=sym(__glx_nopDispatch)+1812).
  The `beql` branch at 0xd8d8484 targets 0xd8d8508, is taken when s0(=a3) == s3(=[[0x1014]+276]), and falls through when s0(=a3) != s3(=[[0x1014]+276]); its branch-likely delay slot `lw t8,244(sp)` at 0xd8d8488 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d8494 targets 0xd8d8508, is taken when s3(=[[0x1014]+276]) == t8(=0xd8f0be0), and falls through when s3(=[[0x1014]+276]) != t8(=0xd8f0be0); its branch-likely delay slot `lw t8,244(sp)` at 0xd8d8498 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d84c4 targets 0xd8d84ec, is taken when t6(=[[[0x1014]+276]+20]) != 0, and falls through when t6(=[[[0x1014]+276]+20]) == 0; its branch-likely delay slot `sw zero,216(s3)` at 0xd8d84c8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d84e0 targets 0xd8d8504 and is always taken.
  The `beql` branch at 0xd8d8508 targets 0xd8d854c, is taken when t8(?) == 0, and falls through when t8(?) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xd8d850c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d852c targets 0xd8d854c, is taken when t3(?) == t4(?), and falls through when t3(?) != t4(?); its branch-likely delay slot `addiu v0,zero,1` at 0xd8d8530 runs only when taken and is annulled on fall-through.
  The return at 0xd8d8570 has v0 = one of 0x0, 0x1.
  The instructions from 0xd8d793c to 0xd8d793c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d7988 to 0xd8d7988 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d7a68 to 0xd8d7a68 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d84e8 to 0xd8d84e8 are not reached by any path from the entry, and their branches are not listed.

- `glXMakeContextCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d8578 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d8578-0xd8d85b0 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd8d8594 calls __glXMakeContextCurrent with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd8d85a8 has v0 = ret(__glXMakeContextCurrent).

- `glXGetCurrentReadDrawable` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d85b0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d85b0-0xd8d85c0 (16 bytes).
  It occupies 16 bytes.
  The `lw` at 0xd8d85b0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8d85b4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8d85bc loads 4 bytes from [[0x1014]+276] +0xdc.
  The return at 0xd8d85b8 has v0 = [[[0x1014]+276]+220].

- `glXJoinSwapGroupSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d85c0 (o32).
  Inferred: it appends one 0x14-byte request block to the request buffer of the context at `a0`,
  flushing the buffer first when the block does not fit, since the block is written through the
  pointer loaded from +0x6c, the room test compares +0x70 with that pointer plus 0x14, and the
  routine calls `_XFlush`.
  It calls the entry at offset 0 of the table whose pointer is at +0x4d0 when that word is nonzero
  (`jalr` at 0xd8d860c), calls `_XFlush` (`jalr` at 0xd8d8638) only when the word at +0x70 is below
  the pointer at +0x6c plus 0x14 (`beql` at 0xd8d8628), and saves that pointer at +0x64 on both paths
  (`sw` at 0xd8d862c and 0xd8d8648).
  The block gets the halfword 0x5 at +0x2 (`sh` at 0xd8d8654), then 0x10 at +0x0 (`sb` at
  0xd8d8658), 0x10 at +0x1 (`sb` at 0xd8d8680), the word 0x1000b at +0x4 (`sw` at 0xd8d8684), the
  entry `a1` at +0xc (`sw` at 0xd8d8690) and the entry `a2` at +0x10 (`sw` at 0xd8d8698); the byte
  at +0x0 is then overwritten with the byte `__glXSetupForCommand` returned, saved at sp-0x9 (`sb`
  at 0xd8d8688).
  The pointer at +0x6c advances by 0x14 and the word at +0x60 goes up by one (`sw` at 0xd8d8670 and
  0xd8d8674, both read-modify-write).
  When the table pointer at +0x4d0 is nonzero it calls the entry at offset 4 with `a1` = 0x10 (`jalr`
  at 0xd8d86b0), and when the word at +0x7c is nonzero it calls the address stored there (`jalr` at
  0xd8d86cc); the return value is that call's result, or 0 when the word at +0x7c is zero (`beql` at
  0xd8d86c4).
  Unknown: the handling of the block by the routines reached through the table at +0x4d0 and through
  the pointer at +0x7c; the code at those callees would settle it.
  Evidence grade: inferred.

- `glXJoinSwapGroupSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d85c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d85c0-0xd8d86ec (300 bytes).
  It occupies 300 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d85f4, `lw` at 0xd8d869c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d8600, `lw` at 0xd8d8618, `lw` at 0xd8d8644.
  The `lw` at 0xd8d8604 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d861c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d862c, `sw` at 0xd8d8648.
  The `sh` at 0xd8d8654 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d8658, `sb` at 0xd8d8688.
  The `lw` at 0xd8d865c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d8670 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d8674 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d8680 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8d8684 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8d8690 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8d8698 stores 4 bytes to [a0+108] +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d86a4, `lw` at 0xd8d86bc.
  The `lw` at 0xd8d86a8 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8d85e8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d860c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d8638 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d86b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd8d86cc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8d85fc targets 0xd8d861c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8d8600 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d8628 targets 0xd8d864c, is taken when t6(=[a0+112]) >= t7(=[a0+108]+20) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+20) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8d862c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d86a0 targets 0xd8d86c0, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d86a4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d86c4 targets 0xd8d86dc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8d86c8 runs only when taken and is annulled on fall-through.
  The return at 0xd8d86e4 has v0 = one of [a0+124], ret(?).

- `glXBindSwapBarrierSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d86ec (o32).
  Inferred: the routine assembles a request at the pointer held at +0x6c of the context in `a0`, since the stores land through that pointer, it advances by 0x14, and it is compared with the word at +0x70 before `_XFlush` is called.
  A `jalr` at 0xd8d8714 hands the four entry arguments to `__glXSetupForCommand`, and the `sb` at 0xd8d871c keeps its returned byte in the frame at entry sp -0x9.
  Table gating comes first: a zero word at +0x4d0 skips the callback (`beql` at 0xd8d8728), and a nonzero one leads the `jalr` at 0xd8d8738 into slot +0x0 with the context as the only argument.
  An unsigned compare (`beql` at 0xd8d8754) sets the word at +0x70 against the pointer plus 0x14: below the bound, `_XFlush` (`jalr` at 0xd8d8764) runs before the pointer is stored at +0x64 (`sw` at 0xd8d8774); otherwise that store (`sw` at 0xd8d8758) comes first.
  Every path then reaches the same writes: the halfword 0x5 at +0x2 (`sh` at 0xd8d8780), the bytes 0x10 at +0x0 and +0x1 (`sb` at 0xd8d8784 and 0xd8d87ac), the word 0x1000c at +0x4 (`sw` at 0xd8d87b0), the parked byte over +0x0 (`sb` at 0xd8d87b4), and the entry a1 and a2 at +0xc and +0x10 (`sw` at 0xd8d87bc and 0xd8d87c4); the context's +0x6c pointer gains 0x14 (`sw` at 0xd8d879c) and its +0x60 counter gains 1 (`sw` at 0xd8d87a0).
  Last, slot +0x4 of the table is invoked with the context and 0x10 when the table is set (`jalr` at 0xd8d87dc), and the pointer at +0x7c is invoked (`jalr` at 0xd8d87f8) when its word is set; the result is that word itself when it is zero (`beql` at 0xd8d87f0).
  Unknown: the routines reached through table slots +0x0 and +0x4 and through the +0x7c pointer, for which the bundle includes no callee notes; whoever populates the table would name them.
  Unknown: the device-side fate of the request bytes at the cursor; no linked register row covers this routine, so the transport code past the cursor would settle it.
  Evidence grade: inferred.

- `glXBindSwapBarrierSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d86ec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d86ec-0xd8d8818 (300 bytes).
  It occupies 300 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d8720, `lw` at 0xd8d87c8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d872c, `lw` at 0xd8d8744, `lw` at 0xd8d8770.
  The `lw` at 0xd8d8730 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d8748 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d8758, `sw` at 0xd8d8774.
  The `sh` at 0xd8d8780 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d8784, `sb` at 0xd8d87b4.
  The `lw` at 0xd8d8788 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d879c stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d87a0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d87ac stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8d87b0 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8d87bc stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8d87c4 stores 4 bytes to [a0+108] +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d87d0, `lw` at 0xd8d87e8.
  The `lw` at 0xd8d87d4 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8d8714 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d8738 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d8764 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d87dc calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd8d87f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8d8728 targets 0xd8d8748, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8d872c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d8754 targets 0xd8d8778, is taken when t6(=[a0+112]) >= t7(=[a0+108]+20) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+20) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8d8758 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d87cc targets 0xd8d87ec, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d87d0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d87f0 targets 0xd8d8808, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8d87f4 runs only when taken and is annulled on fall-through.
  The return at 0xd8d8810 has v0 = one of [a0+124], ret(?).

- `glXQueryMaxSwapBarriersSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d8818 (o32).
  Inferred: it is a request-and-reply query that returns a flag and one reply word to the caller,
  since it appends a request block, calls `_XReply`, and stores a reply-buffer word through the
  pointer in `a2`.
  It acts on the context in arg0 and the caller's pointer in a2: after the setup call (the `jalr` at
  0xd8d8840), it writes fields through the pointer at +0x6c of the context, advances that pointer by
  0x10, and calls `_XReply` on the context with a frame buffer at (entry - 0x58) + 0x30 (the `jalr` at
  0xd8d8904).
  The `beql` at 0xd8d8880 compares the word at +0x70 with the word at +0x6c plus 0x10 (unsigned): when
  the first is at least the second it skips the flush and copies the word at +0x6c to +0x64 through its
  delay slot (the `sw` at 0xd8d8884); when it is below, `_XFlush` on the context (the `jalr` at
  0xd8d8890) runs before the same copy (the `sw` at 0xd8d88a0).
  The record's bytes are 0x10 and 0x11 at +0 and +1 (the `sb`s at 0xd8d88b0 and 0xd8d88dc), the
  halfword 4 at +2 (the `sh` at 0xd8d88ac), the word 0x1000d at +4 (the `sw` at 0xd8d88e0), the second
  argument at +0xc (the `sw` at 0xd8d88f4), and last the setup byte at +0 (the `sb` at 0xd8d88e4,
  copied from the byte stored at entry -0x29 by the `sb` at 0xd8d8848).
  A zero `_XReply` result (the `bne` at 0xd8d890c falls through) returns 0 without storing to the
  caller's pointer, after any indirect calls on the words at +0x4d0 and +0x7c; a nonzero result stores
  the frame word at entry -0x20 through the caller's pointer in a2 (the `sw` at 0xd8d89a0) and returns
  1 (the constant at 0xd8d899c).
  Nothing in this routine writes the frame word at entry -0x20, and it falls inside the buffer
  beginning at entry -0x28 that `_XReply` gets as `a1`.
  Inferred: the reply supplies that word, since it sits in that buffer.
  Unknown: the reply field behind that word; how a caller uses the stored value would settle it.
  Unknown: the destination of each call at 0xd8d8864, 0xd8d8928, 0xd8d8944, 0xd8d896c and 0xd8d8988,
  since the bundle gives only the pointer loads; reading the words at +0x4d0 and +0x7c in a run would
  resolve it.
  Evidence grade: inferred.

- `glXQueryMaxSwapBarriersSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d8818 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d8818-0xd8d89b8 (416 bytes).
  It occupies 416 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d884c, `lw` at 0xd8d8914, `lw` at 0xd8d8958.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d8858, `lw` at 0xd8d8870, `lw` at 0xd8d889c.
  The `lw` at 0xd8d885c loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d8874 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d8884, `sw` at 0xd8d88a0.
  The `sh` at 0xd8d88ac stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d88b0, `sb` at 0xd8d88e4.
  The `lw` at 0xd8d88b4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d88c8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d88cc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d88dc stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8d88e0 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8d88f4 stores 4 bytes to [a0+108] +0xc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d891c, `lw` at 0xd8d8934, `lw` at 0xd8d8960.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8d8920, `lw` at 0xd8d8964.
  The `sw` at 0xd8d89a0 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd8d8840 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d8864 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d8890 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d8904 calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xd8d8928 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d8944 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d896c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d8988 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8d8854 targets 0xd8d8874, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8d8858 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d8880 targets 0xd8d88a4, is taken when t6(=[a0+112]) >= t7(=[a0+108]+16) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd8d8884 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d890c targets 0xd8d8958, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8d8918 targets 0xd8d8938, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d891c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d893c targets 0xd8d8950, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8d8950 targets 0xd8d89a4 and is always taken.
  The `beql` branch at 0xd8d895c targets 0xd8d897c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d8960 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d8980 targets 0xd8d8998, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t8,56(sp)` at 0xd8d8984 runs only when taken and is annulled on fall-through.
  The return at 0xd8d89b0 has v0 = one of 0x0, 0x1.

- `glXBindChannelToWindowSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d8b50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d8b50-0xd8d8c8c (316 bytes).
  It occupies 316 bytes.
  The `lw` at 0xd8d8b60 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8d8b80 loads 4 bytes from [0x1014] +0x114.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8d8c34, `sb` at 0xd8d8c70.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8d8c3c, `lw` at 0xd8d8c44, `lw` at 0xd8d8c4c.
  The `jalr` at 0xd8d8b88 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d8bb0 calls __glXInitChannelRectState [0xd8d89b8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd8d8be8 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64.
  The `jalr` at 0xd8d8c00 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd8d8c50 calls (unknown callee) with a0=?, a1=0x1, a2=?, a3=?.
  The `beq` branch at 0xd8d8b94 targets 0xd8d8c78, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0xd8d8bb8 targets 0xd8d8c78, is taken when v0(=ret(__glXInitChannelRectState)) == 0, and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beq` branch at 0xd8d8c30 targets 0xd8d8c60, is taken when (t5(?) & 0xff) == 0, and falls through when (t5(?) & 0xff) != 0.
  The `bnel` branch at 0xd8d8c68 targets 0xd8d8c78, is taken when t0(=a3) != 0, and falls through when t0(=a3) == 0; its branch-likely delay slot `sw t2,48(sp)` at 0xd8d8c6c runs only when taken and is annulled on fall-through.
  The return at 0xd8d8c84 has v0 = one of 0x0, 0x1.

- `glXAssociateDMPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d916c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d916c-0xd8d91b8 (76 bytes).
  It occupies 76 bytes.
  The `jalr` at 0xd8d919c calls __glXPostError with a0=a0 at entry (arg0), a1=0x9, a2=0x10, a3=0x0.
  The return at 0xd8d91b0 has v0 = 0x0.

- `glXQueryHyperpipeNetworkSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d91b8 (o32).
  Inferred: the routine reads a reply word over the context at `a0` and, for a value above zero and
  below 0x21, calls `_XRead` with memory returned by `malloc`, since the calls run `_XReply`, then
  `malloc`, then `_XRead` on the returned pointer.
  Entry clears the word at `a1` (`sw` at 0xd8d91f0), calls table entry 0 through the pointer at +0x4d0
  when that pointer is nonzero (`jalr` at 0xd8d9208), and calls `_XFlush` (`jalr` at 0xd8d9234) unless
  the word at +0x70 is at least the pointer at +0x6c plus 0x10 (`beql` at 0xd8d9224).
  A 0x10 block goes at the pointer from +0x6c: halfword 0x4 at +0x2 (`sh` at 0xd8d9250), bytes 0x10 and
  0x11 at +0x0 and +0x1 (`sb` at 0xd8d9254 and 0xd8d9280), the word 0x1000e at +0x4 (`sw` at
  0xd8d9284), and +0xc takes the word at +0x84 of the context (`sw` at 0xd8d9298); the byte at +0x0 ends
  up as the byte `__glXSetupForCommand` returned, saved at sp-0x2d (`sb` at 0xd8d9288), and the pointer
  at +0x6c advances by 0x10 while the word at +0x60 goes up by one (`sw` at 0xd8d926c and 0xd8d9270).
  `_XReply` (`jalr` at 0xd8d92a8) receives the sp-44 buffer as `a1` and zeros as `a2` and `a3`; a zero
  result instead calls table entry 4 when the pointer at +0x4d0 is nonzero (`jalr` at 0xd8d92cc), calls
  the address at +0x7c when that is nonzero (`jalr` at 0xd8d92e8), clears the word at `a1` (`sw` at
  0xd8d9300), and returns 0.
  A nonzero result stores the word at sp-0x1c to the word at `a1` (`sw` at 0xd8d9314) and branches on
  that word: when it is zero or negative (`blez` at 0xd8d9310), or 0x21 or more (`bne` at 0xd8d931c),
  `_XEatData` is called first with the word at sp-0x20 as both length arguments (`jalr` at
  0xd8d9330), then the table calls run, the word at `a1` is zeroed (`sw` at 0xd8d9384) and the
  routine returns 0.
  Otherwise `malloc` is called with a size built from that word by shifts and adds (`jalr` at
  0xd8d93a4); a nonzero allocation (`bne` at 0xd8d93b4) calls `_XRead` with it and the word at sp-0x34
  as the length (`jalr` at 0xd8d942c), runs the table calls, and returns the pointer stored at sp-4
  (`sw` at 0xd8d9428).
  A zero allocation calls `_XEatData` with the same length (`jalr` at 0xd8d93c8),
  runs the table calls, zeroes the word at `a1` (`sw` at 0xd8d941c) and returns 0.
  Both words sit within the sp-44 buffer given to `_XReply` as `a1` (0xd8d92a8) and the routine
  never stores to them; sp-0x20 is saved at sp-0x34 in the delay slot of the `jalr` at 0xd8d93a4 and
  serves as the length in the later calls.
  Inferred: the two words come from the reply, since the buffer passed to `_XReply` contains them.
  Unknown: which reply fields these are; the layout is not in the bundle, and the code that calls
  this routine would settle it.
  Evidence grade: inferred.

- `glXQueryHyperpipeNetworkSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d91b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d91b8-0xd8d948c (724 bytes).
  It occupies 724 bytes.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xd8d91f0, `sw` at 0xd8d9300, `sw` at 0xd8d9314.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d91f4, `lw` at 0xd8d92b8, `lw` at 0xd8d9338.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d91fc, `lw` at 0xd8d9214, `lw` at 0xd8d9240.
  The `lw` at 0xd8d9200 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d9218 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d9228, `sw` at 0xd8d9244.
  The `sh` at 0xd8d9250 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d9254, `sb` at 0xd8d9288.
  The `lw` at 0xd8d9258 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d926c stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d9270 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d9280 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8d9284 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8d928c loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd8d9298 stores 4 bytes to [a0+108] +0xc.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d92c0, `lw` at 0xd8d92d8, `lw` at 0xd8d9344.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8d92c4, `lw` at 0xd8d9348, `lw` at 0xd8d93e0.
  The `jalr` at 0xd8d91dc calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d9208 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9234 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d92a8 calls _XReply with a0=a0 at entry (arg0), a1=sp-44, a2=0x0, a3=0x0.
  The `jalr` at 0xd8d92cc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d92e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9330 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9350 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d936c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d93a4 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d93c8 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d93e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9404 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d942c calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd8d944c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9468 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8d91f8 targets 0xd8d9218, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8d91fc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d9224 targets 0xd8d9248, is taken when t7(=[a0+112]) >= t8(=[a0+108]+16) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd8d9228 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d92b0 targets 0xd8d9304, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8d92bc targets 0xd8d92dc, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d92c0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d92e0 targets 0xd8d92f8, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t0,100(sp)` at 0xd8d92e4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d92fc targets 0xd8d9478 and is always taken.
  The `blez` branch at 0xd8d9310 targets 0xd8d9324, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `bne` branch at 0xd8d931c targets 0xd8d9388, is taken when t1(?) < 0x21 (signed), and falls through when t1(?) >= 0x21 (signed).
  The `beql` branch at 0xd8d9340 targets 0xd8d9360, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d9344 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d9364 targets 0xd8d937c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t2,100(sp)` at 0xd8d9368 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d9380 targets 0xd8d9478 and is always taken.
  The `bne` branch at 0xd8d93b4 targets 0xd8d9420, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd8d93d8 targets 0xd8d93f8, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d93dc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d93fc targets 0xd8d9414, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t3,100(sp)` at 0xd8d9400 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d9418 targets 0xd8d9478 and is always taken.
  The `beql` branch at 0xd8d943c targets 0xd8d945c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d9440 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d9460 targets 0xd8d9478, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,92(sp)` at 0xd8d9464 runs only when taken and is annulled on fall-through.
  The return at 0xd8d9484 has v0 = one of 0x0, ?.

- `glXHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d948c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d948c-0xd8d9774 (744 bytes).
  It occupies 744 bytes.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d9514, `lw` at 0xd8d9678, `lw` at 0xd8d96d0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d951c, `lw` at 0xd8d9540, `lw` at 0xd8d9578.
  The `lw` at 0xd8d9524 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d9544 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d9554, `sw` at 0xd8d957c.
  The `sh` at 0xd8d9588 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d958c, `sb` at 0xd8d95c0.
  The `lw` at 0xd8d9590 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d95a4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d95a8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d95b8 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8d95bc stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8d95c4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd8d95c8 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8d95d0 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8d95e0 stores 4 bytes to [a0+108] +0x14.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd8d95fc, `lbu` at 0xd8d9624, `lbu` at 0xd8d9634.
  5 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8d9610, `sb` at 0xd8d9630, `sb` at 0xd8d963c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d9680, `lw` at 0xd8d9698, `lw` at 0xd8d96e4.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8d9684, `lw` at 0xd8d96e8, `lw` at 0xd8d972c.
  The `sw` at 0xd8d96c4 stores 4 bytes to ?.
  The `jalr` at 0xd8d94b8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d952c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9564 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+108].
  The `jalr` at 0xd8d9664 calls _XReply with a0=a0 at entry (arg0), a1=sp-44, a2=0x0, a3=0x0.
  The `jalr` at 0xd8d968c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d96a8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d96f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d970c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9734 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9750 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0xd8d94cc targets 0xd8d94e4, is taken when t1(=a2) <= 0 (signed), and falls through when t1(=a2) > 0 (signed).
  The `beq` branch at 0xd8d94d4 targets 0xd8d94e4, is taken when t6(=a3) == 0, and falls through when t6(=a3) != 0.
  The `bne` branch at 0xd8d94dc targets 0xd8d94ec, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8d94e4 targets 0xd8d9760 and is always taken.
  The `bgez` branch at 0xd8d94ec targets 0xd8d94fc, is taken when t7(=a1) >= 0 (signed), and falls through when t7(=a1) < 0 (signed).
  The `beq` branch at 0xd8d94f4 targets 0xd8d9760 and is always taken.
  The `beql` branch at 0xd8d9518 targets 0xd8d9544, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw a3,108(s0)` at 0xd8d951c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d9550 targets 0xd8d9580, is taken when t8(=[a0+112]) >= t2(?) (unsigned), and falls through when t8(=[a0+112]) < t2(?) (unsigned); its branch-likely delay slot `sw a3,100(s0)` at 0xd8d9554 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd8d95e4 targets 0xd8d9654, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0xd8d95f4 targets 0xd8d961c, is taken when (a3(?) & 0x3) == 0, and falls through when (a3(?) & 0x3) != 0.
  The `bne` branch at 0xd8d960c targets 0xd8d95fc, is taken when a1(?) != a0(?), and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd8d9614 targets 0xd8d9654, is taken when a0(?) == t0(?), and falls through when a0(?) != t0(?).
  The `bne` branch at 0xd8d964c targets 0xd8d9624, is taken when a0(?) != a1(?), and falls through when a0(?) == a1(?).
  The `bne` branch at 0xd8d9670 targets 0xd8d96bc, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8d967c targets 0xd8d969c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d9680 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d96a0 targets 0xd8d96b4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8d96b4 targets 0xd8d9760 and is always taken.
  The `bnel` branch at 0xd8d96cc targets 0xd8d96e0, is taken when t1(=a2) != t4(?), and falls through when t1(=a2) == t4(?); its branch-likely delay slot `lw v0,1232(s0)` at 0xd8d96d0 runs only when taken and is annulled on fall-through.
  The `bgezl` branch at 0xd8d96d4 targets 0xd8d9724, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed); its branch-likely delay slot `lw v0,1232(s0)` at 0xd8d96d8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d96e0 targets 0xd8d9700, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d96e4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d9704 targets 0xd8d9718, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8d9718 targets 0xd8d9760 and is always taken.
  The `beql` branch at 0xd8d9724 targets 0xd8d9744, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d9728 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d9748 targets 0xd8d9760, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `or v0,zero,zero` at 0xd8d974c runs only when taken and is annulled on fall-through.
  The return at 0xd8d976c has v0 = one of 0x0, 0x5b.
  The instructions from 0xd8d9720 to 0xd8d9720 are not reached by any path from the entry, and their branches are not listed.

- `glXHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d948c (744 bytes).
  Evidence grade: inferred.
  It calls `__glXSetupForCommand` at 0xd8d94b8, then follows the same flush and reply pattern as its neighbors: `_XFlush` at 0xd8d9564 and `_XReply` at 0xd8d9664, with several unnamed calls on the display. Which request it sends, and what the reply holds, is left open. The name points to hyperpipe configuration, but the facts do not show that directly.
  Reviewed: 2026-11-12

- `glXDestroyHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d9774 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d9774-0xd8d9914 (416 bytes).
  It occupies 416 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d97a4, `lw` at 0xd8d9874, `lw` at 0xd8d98c0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d97b0, `lw` at 0xd8d97c8, `lw` at 0xd8d97f4.
  The `lw` at 0xd8d97b4 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d97cc loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d97dc, `sw` at 0xd8d97f8.
  The `sh` at 0xd8d9804 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d9808, `sb` at 0xd8d983c.
  The `lw` at 0xd8d980c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d9820 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d9824 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d9834 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8d9838 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8d9840 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd8d984c stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8d985c stores 4 bytes to [a0+108] +0x10.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d987c, `lw` at 0xd8d9894, `lw` at 0xd8d98c8.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8d9880, `lw` at 0xd8d98cc.
  The `jalr` at 0xd8d9798 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d97bc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d97e8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9864 calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xd8d9888 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d98a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d98d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d98f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8d97ac targets 0xd8d97cc, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8d97b0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d97d8 targets 0xd8d97fc, is taken when t6(=[a0+112]) >= t7(=[a0+108]+32) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+32) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd8d97dc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d986c targets 0xd8d98b8, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8d9878 targets 0xd8d9898, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d987c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d989c targets 0xd8d98b0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8d98b0 targets 0xd8d9900 and is always taken.
  The `beql` branch at 0xd8d98c4 targets 0xd8d98e4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d98c8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d98e8 targets 0xd8d9900, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,40(sp)` at 0xd8d98ec runs only when taken and is annulled on fall-through.
  The return at 0xd8d990c has v0 = one of 0x5c, ?.

- `glXDestroyHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d9774 (416 bytes).
  Evidence grade: inferred.
  It is smaller than `glXHyperpipeConfigSGIX` (416 against 744 bytes). It calls `__glXSetupForCommand` at 0xd8d9798, makes one unnamed call on the display before flushing with `_XFlush` at 0xd8d97e8 (behind a buffer-space check), and reads a reply with `_XReply` at 0xd8d9864, with more unnamed display calls after the reply. Its role as a teardown is inferred from the name and the reply shape alone.
  Reviewed: 2026-11-12

- `glXQueryHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d9914 (o32).
  Inferred: the routine runs a request-and-reply exchange over the context at `a0`; when `_XReply` returns
  nonzero it reads a payload into memory it allocates, because its calls are `_XReply`, `malloc`
  and `_XRead`, in that order.
  On entry, `a2` points at a word that is cleared (`sw` at 0xd8d9950); a nonzero word at +0x4d0 makes
  the routine call the entry at offset 0 of that table (`jalr` at 0xd8d9968), and `_XFlush` (`jalr` at
  0xd8d9994) runs unless the word at +0x70 is at least the pointer at +0x6c plus 0x20 (`beql` at
  0xd8d9984).
  The pointer loaded from +0x6c is where the block goes: 0x8 is a halfword at +0x2 (`sh` at 0xd8d99b0),
  0x10 and 0x11 are bytes at +0x0 and +0x1 (`sb` at 0xd8d99b4 and 0xd8d99e0), 0x1000f is a word at +0x4
  (`sw` at 0xd8d99e4), +0xc takes the word at +0x84 of the context (`sw` at 0xd8d99f8), and +0x10 takes
  `a1` (`sw` at 0xd8d9a08); the first byte is finally replaced by the result of `__glXSetupForCommand`, kept
  at sp-0x2d (`sb` at 0xd8d99e8), and the pointer at +0x6c advances by 0x20 while the word at +0x60
  goes up by one (`sw` at 0xd8d99cc and 0xd8d99d0).
  The reply is read by `_XReply` (`jalr` at 0xd8d9a10), handed `a1` = sp-44 and zeros in `a2` and `a3`;
  a zero result clears the word at `a2` (`sw` at 0xd8d9a24), calls the entry at offset 4 of the +0x4d0
  table if that pointer is nonzero (`jalr` at 0xd8d9a3c), calls the address at +0x7c if that is
  nonzero (`jalr` at 0xd8d9a58), and returns 0 (`or` at 0xd8d9a68).
  A nonzero result (`bne` at 0xd8d9a18) stores the word at sp-0x1c to the word at `a2` (`sw` at
  0xd8d9a7c); when that word is above zero (`bgtz` at 0xd8d9a78), a size built from it by shifts and
  subtractions goes to `malloc` (`jalr` at 0xd8d9ae8), and otherwise the word at `a2` is zeroed (`sw`
  at 0xd8d9a80) and the routine makes the same table calls as the zero result and returns 0.
  On a successful `malloc` (`bne` at 0xd8d9af8), `_XRead` is called with the malloc result and the
  length word at sp-0x34 (`jalr` at 0xd8d9b70), the table calls at 0xd8d9b90 and 0xd8d9bac run, each only when its
  pointer is nonzero, and the routine returns the pointer stored at sp-4 (`sw` at 0xd8d9b6c, reloaded
  at 0xd8d9ba8 and 0xd8d9bb8).
  On a zero `malloc` result, `_XEatData` is called with the same length word (`jalr` at
  0xd8d9b0c), the word at `a2` is zeroed (`sw` at 0xd8d9b1c), the table calls at 0xd8d9b34 and
  0xd8d9b50 run, and the routine returns 0 (`or` at 0xd8d9b60).
  No store in the routine writes the words at sp-0x1c and sp-0x20, and both fall within the buffer at
  sp-44 that `_XReply` receives as `a1` (0xd8d9a10); the word at sp-0x20 is copied to
  sp-0x34 (`sw` at 0xd8d9ad0) and used as the length by `_XRead` and `_XEatData`.
  Inferred: `_XReply` fills those two words, because they sit in the buffer handed to it.
  Unknown: the field names of the two reply words; the callers of this routine would settle them.
  Evidence grade: inferred.

- `glXQueryHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d9914 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d9914-0xd8d9bd0 (700 bytes).
  It occupies 700 bytes.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd8d9950, `sw` at 0xd8d9a24, `sw` at 0xd8d9a7c.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d9954, `lw` at 0xd8d9a28, `lw` at 0xd8d9a84.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d995c, `lw` at 0xd8d9974, `lw` at 0xd8d99a0.
  The `lw` at 0xd8d9960 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d9978 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d9988, `sw` at 0xd8d99a4.
  The `sh` at 0xd8d99b0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d99b4, `sb` at 0xd8d99e8.
  The `lw` at 0xd8d99b8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d99cc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d99d0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d99e0 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8d99e4 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8d99ec loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd8d99f8 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8d9a08 stores 4 bytes to [a0+108] +0x10.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d9a30, `lw` at 0xd8d9a48, `lw` at 0xd8d9a8c.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8d9a34, `lw` at 0xd8d9a90, `lw` at 0xd8d9b2c.
  The `jalr` at 0xd8d993c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d9968 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9994 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9a10 calls _XReply with a0=a0 at entry (arg0), a1=sp-44, a2=0x0, a3=0x0.
  The `jalr` at 0xd8d9a3c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9a58 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9a98 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9ab4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9ae8 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9b0c calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9b34 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9b50 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9b70 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd8d9b90 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9bac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8d9958 targets 0xd8d9978, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8d995c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d9984 targets 0xd8d99a8, is taken when t7(=[a0+112]) >= t8(=[a0+108]+32) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+32) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd8d9988 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d9a18 targets 0xd8d9a6c, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8d9a2c targets 0xd8d9a4c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d9a30 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d9a50 targets 0xd8d9a64, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8d9a64 targets 0xd8d9bbc and is always taken.
  The `bgtz` branch at 0xd8d9a78 targets 0xd8d9ac8, is taken when t2(?) > 0 (signed), and falls through when t2(?) <= 0 (signed).
  The `beql` branch at 0xd8d9a88 targets 0xd8d9aa8, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d9a8c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d9aac targets 0xd8d9ac0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8d9ac0 targets 0xd8d9bbc and is always taken.
  The `bne` branch at 0xd8d9af8 targets 0xd8d9b64, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd8d9b24 targets 0xd8d9b44, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d9b28 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d9b48 targets 0xd8d9b5c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8d9b5c targets 0xd8d9bbc and is always taken.
  The `beql` branch at 0xd8d9b80 targets 0xd8d9ba0, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d9b84 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d9ba4 targets 0xd8d9bbc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,92(sp)` at 0xd8d9ba8 runs only when taken and is annulled on fall-through.
  The return at 0xd8d9bc8 has v0 = one of 0x0, ?.

- `glXCreatePbuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d9e4c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d9e4c-0xd8da0b4 (616 bytes).
  It occupies 616 bytes.
  The `lw` at 0xd8d9ea4 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd8d9f0c stores 4 bytes to ret(__glXAddDrawableInterest) +0x2c.
  The `lw` at 0xd8d9f10 loads 4 bytes from a2 (arg2 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d9f1c, `lw` at 0xd8d9f34, `lw` at 0xd8da04c.
  The `lw` at 0xd8d9f20 loads 4 bytes from a2 (arg2 at entry) +0x8.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8d9f30, `lw` at 0xd8da024, `lw` at 0xd8da034.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d9f3c, `lw` at 0xd8d9f64, `lw` at 0xd8d9fa8.
  The `lw` at 0xd8d9f48 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d9f68 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8d9fb0 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d9fc0, `sb` at 0xd8d9ff4.
  The `sh` at 0xd8d9fc4 stores 2 bytes to [a0+108] +0x2.
  The `lw` at 0xd8d9fcc loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d9fe0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d9fe4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sb` at 0xd8d9fec stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8d9ff8 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd8da000 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8da004 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd8da008 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd8da010 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8da018 stores 4 bytes to [a0+108] +0xc.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8da030, `sw` at 0xd8da048.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8da054, `lw` at 0xd8da06c.
  The `lw` at 0xd8da058 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8d9e78 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d9eac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=0x0.
  The `jalr` at 0xd8d9ec4 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9ef0 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x1b, a3=0x0.
  The `jalr` at 0xd8d9f50 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd8d9f90 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd8da060 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8da07c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8da090 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8d9e8c targets 0xd8d9e9c, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd8d9e94 targets 0xd8da0a0 and is always taken.
  The `bne` branch at 0xd8d9ed8 targets 0xd8d9f04, is taken when v0(=ret(__glXAddDrawableInterest)) != 0, and falls through when v0(=ret(__glXAddDrawableInterest)) == 0.
  The `beq` branch at 0xd8d9efc targets 0xd8da0a0 and is always taken.
  The `beq` branch at 0xd8d9f08 targets 0xd8d9f34, is taken when a2 == 0, and falls through when a2 != 0.
  The `beql` branch at 0xd8d9f18 targets 0xd8d9f38, is taken when t7(=[a2]) == 0, and falls through when t7(=[a2]) != 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xd8d9f1c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d9f2c targets 0xd8d9f24, is taken when t8(?) != 0, and falls through when t8(?) == 0; its branch-likely delay slot `lw t8,8(v0)` at 0xd8d9f30 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d9f38 targets 0xd8d9f68, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s0)` at 0xd8d9f3c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d9f7c targets 0xd8d9fac, is taken when t3(=[a0+112]) >= t5(?) (unsigned), and falls through when t3(=[a0+112]) < t5(?) (unsigned).
  The `beq` branch at 0xd8da014 targets 0xd8da04c, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0xd8da01c targets 0xd8da04c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xd8da044 targets 0xd8da024, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beql` branch at 0xd8da050 targets 0xd8da070, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8da054 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8da074 targets 0xd8da088, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The return at 0xd8da0ac has v0 = one of 0x0, ret(?).

- `glXDestroyPbuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8da0b4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8da0b4-0xd8da220 (364 bytes).
  It occupies 364 bytes.
  The `lw` at 0xd8da11c loads 4 bytes from ret(__glXAddDrawableInterest) +0x14.
  The `sw` at 0xd8da128 stores 4 bytes to ret(__glXAddDrawableInterest) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8da13c, `lw` at 0xd8da1d0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8da148, `lw` at 0xd8da160, `lw` at 0xd8da18c.
  The `lw` at 0xd8da14c loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8da164 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8da174, `sw` at 0xd8da190.
  The `sh` at 0xd8da19c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8da1a0, `sb` at 0xd8da1c4.
  The `lw` at 0xd8da1a4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8da1b4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8da1b8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8da1c0 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8da1cc stores 4 bytes to [a0+108] +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8da1d8, `lw` at 0xd8da1f0.
  The `lw` at 0xd8da1dc loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8da0d8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8da0f4 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8da10c calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8da134 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=ret(__glXAddDrawableInterest), a2=?, a3=?.
  The `jalr` at 0xd8da154 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8da180 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8da1e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x1c, a2=?, a3=?.
  The `jalr` at 0xd8da200 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8da0e4 targets 0xd8da20c, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `bne` branch at 0xd8da120 targets 0xd8da12c, is taken when t6(=[ret(__glXAddDrawableInterest)+20]) != 0, and falls through when t6(=[ret(__glXAddDrawableInterest)+20]) == 0.
  The `beql` branch at 0xd8da144 targets 0xd8da164, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8da148 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8da170 targets 0xd8da194, is taken when t7(=[a0+112]) >= t8(=[a0+108]+8) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8da174 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8da1d4 targets 0xd8da1f4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8da1d8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8da1f8 targets 0xd8da210, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8da1fc runs only when taken and is annulled on fall-through.
  The return at 0xd8da218 has v0 = one of [a0+124], ?.

- `__glx_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8dc370 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8dc370-0xd8dc3e4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd8dc37c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8dc38c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8dc398 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8dc39c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8dc3a0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8dc3a4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd8dc3a8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8dc3b0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8dc3c8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd8dc3b8 targets 0xd8dc3d8, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8dc3bc runs only when taken and is annulled on fall-through.
  The return at 0xd8dc3dc has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8dc6cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8dc6cc-0xd8dc76c (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xd8dc6dc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8dc700 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8dc70c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8dc710 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8dc714 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sb` at 0xd8dc718 stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `sb` at 0xd8dc71c stores 1 byte to [[[0x1014]+276]+4] +0x5.
  The `sb` at 0xd8dc720 stores 1 byte to [[[0x1014]+276]+4] +0x6.
  The `sb` at 0xd8dc724 stores 1 byte to [[[0x1014]+276]+4] +0x7.
  The `lw` at 0xd8dc728 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8dc730 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8dc74c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd8dc738 targets 0xd8dc75c, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd8dc73c runs only when taken and is annulled on fall-through.
  The return at 0xd8dc764 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_InstrumentsBufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8dca94 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8dca94-0xd8dcc20 (396 bytes).
  It occupies 396 bytes.
  The `lw` at 0xd8dcaa4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8dcac0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8dcac4 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8dcac8 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8dcae8, `lw` at 0xd8dcbcc.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8dcaf4, `lw` at 0xd8dcb0c, `lw` at 0xd8dcb38.
  The `lw` at 0xd8dcaf8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8dcb10 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8dcb20, `sw` at 0xd8dcb3c.
  The `sh` at 0xd8dcb48 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8dcb4c, `sb` at 0xd8dcb7c.
  The `lw` at 0xd8dcb50 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8dcb64 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8dcb68 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd8dcb6c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd8dcb74 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd8dcb78 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8dcb80 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8dcb8c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8dcb9c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8dcbd8, `lw` at 0xd8dcbf0.
  The `lw` at 0xd8dcbdc loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8dcae0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd8dcb00 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8dcb2c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8dcba4 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-48, a2=0x0, a3=0x0.
  The `jalr` at 0xd8dcbc4 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0xd8dcbe4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8dcc00 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8dcacc targets 0xd8dcc10, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8dcad0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8dcaf0 targets 0xd8dcb10, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8dcaf4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8dcb1c targets 0xd8dcb40, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd8dcb20 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8dcbd4 targets 0xd8dcbf4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8dcbd8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8dcbf8 targets 0xd8dcc10, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8dcbfc runs only when taken and is annulled on fall-through.
  The return at 0xd8dcc18 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `glXCreateGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c3328
  **Inferred.** Creates a GLX video source in the o32 patch build. After `__glXSetupForCommand` at 0xd8c3358 and `__glXInitializeVideoLibrary` at 0xd8c3398 it registers the id with `__glXAddDrawableInterest` at 0xd8c33d0 and builds the private record with `__glXCreateVideoSourcePrivate` at 0xd8c3418. Three indirect queries with selectors 4, 6 and 7 follow at 0xd8c3470, 0xd8c34d0 and 0xd8c3528, each failure unwinding through `__glXRemoveDrawableInterest`, and `videoPackingToInternalFormat` at 0xd8c356c maps the packing before the request is flushed.

- `glXDestroyHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d9774
  **Inferred.** Removes a hyperpipe configuration through a reply-bearing request. `__glXSetupForCommand` at 0xd8d9798 supplies the opcode, `_XFlush` at 0xd8d97e8 makes room when the buffer is full and `_XReply` at 0xd8d9864 collects the answer, whose status becomes the return value at 0xd8d990c.
