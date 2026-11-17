# Readings: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`

One entry per routine, filed here from the reading batches by binary.

## `odsyInitPfRgn` at `0x610`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
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

## `odsyDestroyPfRgn` at `0x6c8`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
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

## `gfP_OdsyPerfStat` at `0x738`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
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
