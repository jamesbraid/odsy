# Readings: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`

One entry per routine, filed here from the reading batches by binary.

- `gfP_OdsyDIAGallocScanbuf` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x0-0x214 (532 bytes).
  It occupies 532 bytes.
  The `ld` at 0x2c loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x44 loads 8 bytes from [a0+32]:8 +0x5628.
  The `sd` at 0x78 stores 8 bytes to [a0+32]:8 +0x5608.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x5608, including `ld` at 0xa8, `ld` at 0xf4.
  The `sw` at 0xc4 stores 4 bytes to [a0+32]:8 +0x5620.
  The `sd` at 0xd4 stores 8 bytes to [a0+32]:8 +0x5628.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x5618, including `ld` at 0xdc, `ld` at 0xe0.
  The `sd` at 0xe8 stores 8 bytes to [a0+32]:8 +0x5610.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x114, `sw` at 0x1e4, `sw` at 0x210.
  3 such `lw` accesses load 4 bytes from [a0+32]:8 +0x5620, including `lw` at 0x118, `lw` at 0x174, `lw` at 0x188.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x160, `sw` at 0x170, `sw` at 0x184.
  The `jal` at 0x28 calls copyin with a0=a2 at entry (arg2), a1=sp-128, a2=0x18, a3=a3 at entry (arg3).
  The `jal` at 0x3c calls mutex_lock with a0=[a0+32]:8+22008, a1=0x19, a2=?, a3=?.
  The `jal` at 0x54 calls mutex_unlock with a0=?, a1=0x8100, a2=?, a3=?.
  The `jal` at 0x6c calls kmem_alloc with a0=?, a1=0x8100, a2=?, a3=?.
  The `jal` at 0x94 calls odsyMapPages with a0=0x0, a1=0x0, a2=ret(kmem_alloc), a3=?, a4=0x0, a5=0x0, a6=[a0+32]:8+22040.
  The `jal` at 0xa4 calls kmem_free with a0=[[a0+32]:8+22024]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb0 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd0 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd8 calls ddv_getaddr with a0=[[a0+32]:8+22040]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xe4 calls ddv_getaddr with a0=[[a0+32]:8+22040]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xf0 calls kvtophys with a0=[[a0+32]:8+22024]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x104 calls copyout with a0=sp-128, a1=a2 at entry (arg2), a2=0x18, a3=?.
  The `jal` at 0x140 calls printf with a0=sym(.rodata), a1=?, a2=[[a0+32]:8+22048], a3=?.
  The `jal` at 0x190 calls dki_dcache_wb with a0=?, a1=[[a0+32]:8+22048], a2=?, a3=?.
  The `jal` at 0x1ac calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1c8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1f4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x30 targets 0x1c0, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x48 targets 0x6c, is taken when at(=[[a0+32]:8+22056]:8) == 0, and falls through when at(=[[a0+32]:8+22056]:8) != 0.
  The `beq` branch at 0x74 targets 0x1a8, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x9c targets 0xc4, is taken when v0(=ret(odsyMapPages)) == 0, and falls through when v0(=ret(odsyMapPages)) != 0.
  The `beq` branch at 0xbc targets 0x64 and is always taken.
  The `bne` branch at 0x10c targets 0x1e8, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `blez` branch at 0x150 targets 0x16c, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `bne` branch at 0x164 targets 0x158, is taken when a0(?) < v0(?) (signed), and falls through when a0(?) >= v0(?) (signed).
  The `bne` branch at 0x17c targets 0x18c, is taken when a1(=[[a0+32]:8+22048]) < 0x4001 (signed), and falls through when a1(=[[a0+32]:8+22048]) >= 0x4001 (signed).
  The `beq` branch at 0x1a0 targets 0x64 and is always taken.
  The `beq` branch at 0x1b8 targets 0x64 and is always taken.
  The `beq` branch at 0x1e0 targets 0x64 and is always taken.
  The `beq` branch at 0x20c targets 0x64 and is always taken.
  The return at 0x64 has v0 = one of 0x10, 0xb, 0x0, 0xc, 0xe.

- `gfP_OdsyDIAGfreeScanbuf` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)` at 0x214 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x214-0x2a4 (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0x220 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x244 loads 8 bytes from [a0+32]:8 +0x5628.
  The `lw` at 0x260 loads 4 bytes from [a0+32]:8 +0x5620.
  The `ld` at 0x268 loads 8 bytes from [a0+32]:8 +0x5608.
  The `sd` at 0x26c stores 8 bytes to [a0+32]:8 +0x5628.
  The `sw` at 0x270 stores 4 bytes to [a0+32]:8 +0x5620.
  The `sd` at 0x274 stores 8 bytes to [a0+32]:8 +0x5618.
  The `sd` at 0x278 stores 8 bytes to [a0+32]:8 +0x5608.
  The `sw` at 0x2a0 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `jal` at 0x23c calls mutex_lock with a0=[a0+32]:8+22008, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x258 calls odsyUnmapPages with a0=[a0+32]:8+22040, a1=?, a2=?, a3=?.
  The `jal` at 0x264 calls kmem_free with a0=[[a0+32]:8+22024]:8, a1=[[a0+32]:8+22048], a2=?, a3=?.
  The `jal` at 0x280 calls mutex_unlock with a0=[a0+32]:8+22008, a1=?, a2=?, a3=?.
  The `bne` branch at 0x24c targets 0x27c, is taken when at(=[[a0+32]:8+22056]:8) != v0(=a0), and falls through when at(=[[a0+32]:8+22056]:8) == v0(=a0).
  The return at 0x29c has v0 = 0x0.

- `gfP_OdsyDIAGgetShadowPtrs` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)` at 0x2a4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x2a4-0x53c (664 bytes).
  It occupies 664 bytes.
  The `ld` at 0x2dc loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x2f4 loads 8 bytes from [a0+32]:8 +0x5640.
  6 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x314, `sw` at 0x350, `sw` at 0x410.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2f0, including `ld` at 0x32c, `ld` at 0x45c.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3a0, `ld` at 0x488, `ld` at 0x4ac.
  The `sw` at 0x3bc stores 4 bytes to ?.
  The `lw` at 0x3d4 loads 4 bytes from ?.
  The `sd` at 0x448 stores 8 bytes to [a0+32]:8 +0x5640.
  The `ld` at 0x450 loads 8 bytes from [a0+32]:8 +0x5688.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x498, `sd` at 0x4a0, `sd` at 0x4bc.
  The `jal` at 0x2d8 calls copyin with a0=a2 at entry (arg2), a1=sp-224, a2=0x50, a3=a3 at entry (arg3).
  The `jal` at 0x2ec calls mutex_lock with a0=[a0+32]:8+22064, a1=0x19, a2=?, a3=?.
  The `jal` at 0x308 calls mutex_unlock with a0=?, a1=?, a2=?, a3=0x10000.
  The `jal` at 0x33c calls odsyMapPages with a0=0x0, a1=0x0, a2=[[a0+32]:8+752]:8, a3=0x10000, a4=0x0, a5=0x0, a6=[a0+32]:8+22152.
  The `jal` at 0x39c calls odsyMapPages with a0=0x0, a1=0x0, a2=?, a3=0x4000, a4=0x0, a5=0x0.
  The `jal` at 0x3f0 calls odsyUnmapPages with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x404 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x424 calls odsyUnmapPages with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x444 calls mutex_unlock with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x44c calls ddv_getaddr with a0=[[a0+32]:8+22152]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x484 calls ddv_getaddr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4c8 calls copyout with a0=sp-224, a1=a2 at entry (arg2), a2=0x50, a3=?.
  The `jal` at 0x4fc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x520 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x2e0 targets 0x4ec, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x2f8 targets 0x324, is taken when at(=[[a0+32]:8+22080]:8) == 0, and falls through when at(=[[a0+32]:8+22080]:8) != 0.
  The `beq` branch at 0x31c targets 0x360 and is always taken.
  The `beq` branch at 0x348 targets 0x36c, is taken when v0(=ret(odsyMapPages)) == 0, and falls through when v0(=ret(odsyMapPages)) != 0.
  The `bne` branch at 0x3b8 targets 0x37c, is taken when s3(?) < 0x4 (unsigned), and falls through when s3(?) >= 0x4 (unsigned).
  The `beq` branch at 0x3c0 targets 0x434, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x3d8 targets 0x420, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x3e8 targets 0x3d0, is taken when s3(?) < 0x4 (unsigned), and falls through when s3(?) >= 0x4 (unsigned).
  The `beq` branch at 0x418 targets 0x360 and is always taken.
  The `beq` branch at 0x42c targets 0x3e4 and is always taken.
  The `bne` branch at 0x4b8 targets 0x470, is taken when s3(?) < 0x4 (unsigned), and falls through when s3(?) >= 0x4 (unsigned).
  The `bne` branch at 0x4d8 targets 0x518, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0x4e4 targets 0x360 and is always taken.
  The `beq` branch at 0x510 targets 0x360 and is always taken.
  The `beq` branch at 0x534 targets 0x360 and is always taken.
  The return at 0x364 has v0 = one of 0x10, 0xc, 0xb, 0x0, 0xe.

- `gfP_OdsyDIAGreleaseShadowPtrs` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)` at 0x53c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x53c-0x610 (212 bytes).
  It occupies 212 bytes.
  The `ld` at 0x54c loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x570 loads 8 bytes from [a0+32]:8 +0x5640.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x58c, `sw` at 0x600.
  The `sd` at 0x5d8 stores 8 bytes to ?.
  The `sd` at 0x5dc stores 8 bytes to [a0+32]:8 +0x5640.
  The `jal` at 0x568 calls mutex_lock with a0=[a0+32]:8+22064, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x580 calls mutex_unlock with a0=[a0+32]:8+22064, a1=?, a2=?, a3=?.
  The `jal` at 0x5ac calls odsyUnmapPages with a0=[a0+32]:8+22152, a1=?, a2=?, a3=?.
  The `jal` at 0x5c8 calls odsyUnmapPages with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5e0 calls mutex_unlock with a0=[a0+32]:8+22064, a1=?, a2=?, a3=?.
  The `beq` branch at 0x574 targets 0x5a4, is taken when at(=[[a0+32]:8+22080]:8) == s1(=a0), and falls through when at(=[[a0+32]:8+22080]:8) != s1(=a0).
  The `beq` branch at 0x59c targets 0x608 and is always taken.
  The `bne` branch at 0x5d4 targets 0x5bc, is taken when s5(?) < 0x4 (unsigned), and falls through when s5(?) >= 0x4 (unsigned).
  The return at 0x608 has v0 = one of 0x0, 0x1.

- `odsyInitPfRgn` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)` at 0x610 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x610-0x6c8 (184 bytes).
  It occupies 184 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2848, including `ld` at 0x610, `ld` at 0x670.
  The `sd` at 0x648 stores 8 bytes to a0 (arg0 at entry) +0x2848.
  The `sw` at 0x664 stores 4 bytes to a0 (arg0 at entry) +0x2840.
  The `sw` at 0x678 stores 4 bytes to a0 (arg0 at entry) +0x28c8.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x680, `ld` at 0x694.
  The `sw` at 0x688 stores 4 bytes to a0 (arg0 at entry) +0x28c4.
  The `sw` at 0x68c stores 4 bytes to [a0+736]:8 +0x401c.
  The `lw` at 0x698 loads 4 bytes from a0 (arg0 at entry) +0x28c8.
  The `sw` at 0x6a0 stores 4 bytes to [a0+736]:8 +0x4024.
  The `jal` at 0x638 calls kmem_zalloc with a0=0x4000, a1=0x8800, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x660 calls odsyPinAndMapPfStatRegions with a0=a0 at entry (arg0), a1=?, a2=?, a3=a1 at entry (arg1).
  The `jal` at 0x66c calls kvtophys with a0=[a0+10312]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x6a8 calls printf with a0=sym(.rodata), a1=?, a2=?, a3=?.
  The `jal` at 0x6b4 calls mutex_unlock with a0=a0+10336, a1=?, a2=?, a3=?.
  The `beq` branch at 0x61c targets 0x630, is taken when at(=[a0+10312]:8) == 0, and falls through when at(=[a0+10312]:8) != 0.
  The `beq` branch at 0x644 targets 0x6a4, is taken when v0(=ret(kmem_zalloc)) == 0, and falls through when v0(=ret(kmem_zalloc)) != 0.
  The `beq` branch at 0x69c targets 0x624 and is always taken.
  The `beq` branch at 0x6c0 targets 0x628 and is always taken.
  The return at 0x628 has v0 = one of 0x0, 0x1.

- `odsyDestroyPfRgn` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)` at 0x6c8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x6c8-0x738 (112 bytes).
  It occupies 112 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2848, including `ld` at 0x6c8, `ld` at 0x6fc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2840, including `lw` at 0x6dc, `lw` at 0x6f4.
  The `sw` at 0x700 stores 4 bytes to a0 (arg0 at entry) +0x28c8.
  The `sw` at 0x704 stores 4 bytes to a0 (arg0 at entry) +0x28c4.
  The `sd` at 0x708 stores 8 bytes to a0 (arg0 at entry) +0x2850.
  The `sd` at 0x70c stores 8 bytes to a0 (arg0 at entry) +0x2848.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x710, `ld` at 0x720.
  The `sw` at 0x714 stores 4 bytes to a0 (arg0 at entry) +0x2840.
  The `sw` at 0x718 stores 4 bytes to [a0+736]:8 +0x401c.
  The `lw` at 0x724 loads 4 bytes from a0 (arg0 at entry) +0x28c8.
  The `sw` at 0x728 stores 4 bytes to [a0+736]:8 +0x4024.
  The `jal` at 0x6ec calls odsyUnpinAndUnmapPfStatRegions with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6f8 calls kmem_free with a0=[a0+10312]:8, a1=[a0+10304], a2=?, a3=?.
  The `beq` branch at 0x6d4 targets 0x72c, is taken when at(=[a0+10312]:8) == 0, and falls through when at(=[a0+10312]:8) != 0.
  The `beq` branch at 0x6e0 targets 0x72c, is taken when v0(=[a0+10304]) == 0, and falls through when v0(=[a0+10304]) != 0.
  The return at 0x730 has v0 = one of ?, [a0+10304], ret(kmem_free).

- `gfP_OdsyPerfStat` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)` at 0x738 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x738-0x938 (512 bytes).
  It occupies 512 bytes.
  The `ld` at 0x744 loads 8 bytes from a0 (arg0 at entry) +0x20.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x75c, `sw` at 0x844, `sw` at 0x904.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2848, including `ld` at 0x7ac, `ld` at 0x7fc.
  The `ld` at 0x7d8 loads 8 bytes from [a0+32]:8 +0x2850.
  The `ld` at 0x8c4 loads 8 bytes from [a0+32]:8 +0x2e0.
  The `sw` at 0x8d0 stores 4 bytes to [a0+32]:8 +0x28cc.
  The `sw` at 0x8d8 stores 4 bytes to [[a0+32]:8+736]:8 +0x402c.
  The `jal` at 0x760 calls copyin with a0=a2 at entry (arg2), a1=sp-112, a2=0x18, a3=a3 at entry (arg3).
  The `jal` at 0x798 calls mutex_lock with a0=[a0+32]:8+10336, a1=0x19, a2=?, a3=?, a4=0x5.
  The `jal` at 0x7c8 calls odsyInitPfRgn with a0=[a0+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x7e0 calls copyout with a0=sp-112, a1=a2 at entry (arg2), a2=0x18, a3=[[a0+32]:8+10320]:8.
  The `jal` at 0x808 calls odsyDestroyPfRgn with a0=[a0+32]:8, a1=?, a2=?, a3=?, a5=[[a0+32]:8+10312]:8.
  The `jal` at 0x814 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x82c calls odsyDestroyPfRgn with a0=[a0+32]:8, a1=?, a2=?, a3=?, a5=[[a0+32]:8+10312]:8.
  The `jal` at 0x8e8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=0x5.
  The `jal` at 0x918 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x76c targets 0x8dc, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x788 targets 0x83c, is taken when v1(?) == a4(=0x5), and falls through when v1(?) != a4(=0x5).
  The `beq` branch at 0x7a4 targets 0x7f0, is taken when (s1(?) & 0x1) == 0, and falls through when (s1(?) & 0x1) != 0.
  The `bne` branch at 0x7b0 targets 0x82c, is taken when a5(=[[a0+32]:8+10312]:8) != 0, and falls through when a5(=[[a0+32]:8+10312]:8) == 0.
  The `bne` branch at 0x7e8 targets 0x908, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0x7f4 targets 0x854, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x800 targets 0x810, is taken when a5(=[[a0+32]:8+10312]:8) == 0, and falls through when a5(=[[a0+32]:8+10312]:8) != 0.
  The `beq` branch at 0x834 targets 0x7b8 and is always taken.
  The `beq` branch at 0x84c targets 0x824 and is always taken.
  The `beq` branch at 0x858 targets 0x810, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x8d4 targets 0x810 and is always taken.
  The `beq` branch at 0x900 targets 0x824 and is always taken.
  The `beq` branch at 0x930 targets 0x824 and is always taken.
  The return at 0x824 has v0 = one of -0x1, 0x0, 0xe.

- `gfP_OdsyDIAGreset` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)` at 0x938 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x938-0x980 (72 bytes).
  It occupies 72 bytes.
  The `ld` at 0x948 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0x97c stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `jal` at 0x94c calls odsyReset with a0=(a2 << 0x0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x95c calls odsyInitDBE with a0=[a0+32]:8, a1=[sym(default_timing)]:8, a2=0x0, a3=?.
  The return at 0x978 has v0 = 0x0.
