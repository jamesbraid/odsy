# Readings: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_diag.o)`

One entry per routine, filed here from the reading batches by binary.

## `odsyInitPfRgn` at `0x674`
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_diag.o)`.
  Range: 0x674-0x740 (204 bytes).
  It occupies 204 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8568, including `ld` at 0x684, `ld` at 0x6e4.
  The `sd` at 0x6c0 stores 8 bytes to a0 (arg0 at entry) +0x8568.
  The `sw` at 0x6dc stores 4 bytes to a0 (arg0 at entry) +0x8560.
  The `sw` at 0x6e8 stores 4 bytes to a0 (arg0 at entry) +0x85e8.
  The `sw` at 0x6f4 stores 4 bytes to a0 (arg0 at entry) +0x85e4.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x338, including `ld` at 0x6f8, `ld` at 0x704.
  The `sw` at 0x6fc stores 4 bytes to [a0+824]:8 +0x401c.
  The `lw` at 0x708 loads 4 bytes from a0 (arg0 at entry) +0x85e8.
  The `sw` at 0x70c stores 4 bytes to [a0+824]:8 +0x4024.
  The `jal` at 0x6b4 calls kmem_zalloc with a0=0x4000, a1=0x8800, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6d8 calls odsyPinAndMapPfStatRegions with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x6e0 calls kvtophys with a0=[a0+34152]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x720 calls printf with a0=sym(.rodata), a1=?, a2=?, a3=?.
  The `jal` at 0x72c calls mutex_unlock with a0=a0+34176, a1=?, a2=?, a3=?.
  The `beq` branch at 0x694 targets 0x6b0, is taken when at(=[a0+34152]:8) == 0, and falls through when at(=[a0+34152]:8) != 0.
  The `beq` branch at 0x6bc targets 0x71c, is taken when v0(=ret(kmem_zalloc)) == 0, and falls through when v0(=ret(kmem_zalloc)) != 0.
  The `beq` branch at 0x714 targets 0x69c and is always taken.
  The `beq` branch at 0x738 targets 0x6a0 and is always taken.
  The return at 0x6a8 has v0 = one of 0x0, 0x1.

## `odsyDestroyPfRgn` at `0x740`
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_diag.o)`.
  Range: 0x740-0x7c4 (132 bytes).
  It occupies 132 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8568, including `ld` at 0x750, `ld` at 0x77c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8560, including `lw` at 0x760, `lw` at 0x774.
  The `sw` at 0x780 stores 4 bytes to a0 (arg0 at entry) +0x85e8.
  The `sw` at 0x784 stores 4 bytes to a0 (arg0 at entry) +0x85e4.
  The `sd` at 0x788 stores 8 bytes to a0 (arg0 at entry) +0x8570.
  The `sd` at 0x78c stores 8 bytes to a0 (arg0 at entry) +0x8568.
  The `sw` at 0x790 stores 4 bytes to a0 (arg0 at entry) +0x8560.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x338, including `ld` at 0x794, `ld` at 0x7a4.
  The `sw` at 0x79c stores 4 bytes to [a0+824]:8 +0x401c.
  The `lw` at 0x7a8 loads 4 bytes from a0 (arg0 at entry) +0x85e8.
  The `sw` at 0x7ac stores 4 bytes to [a0+824]:8 +0x4024.
  The `jal` at 0x76c calls odsyUnpinAndUnmapPfStatRegions with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x778 calls kmem_free with a0=[a0+34152]:8, a1=[a0+34144], a2=?, a3=?.
  The `beq` branch at 0x758 targets 0x7b4, is taken when at(=[a0+34152]:8) == 0, and falls through when at(=[a0+34152]:8) != 0.
  The `beq` branch at 0x764 targets 0x7b4, is taken when t8(=[a0+34144]) == 0, and falls through when t8(=[a0+34144]) != 0.
  The return at 0x7bc has v0 = one of ?, [a0+824]:8.

## `gfP_OdsyPerfStat` at `0x7c4`
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_diag.o)`.
  Range: 0x7c4-0x9b0 (492 bytes).
  It occupies 492 bytes.
  The `ld` at 0x7cc loads 8 bytes from a0 (arg0 at entry) +0x28.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x7d8, `sw` at 0x8e0, `sw` at 0x994.
  2 such `ld` accesses load 8 bytes from [a0+40]:8 +0x8568, including `ld` at 0x838, `ld` at 0x88c.
  The `ld` at 0x864 loads 8 bytes from [a0+40]:8 +0x8570.
  The `sw` at 0x964 stores 4 bytes to [a0+40]:8 +0x85ec.
  The `ld` at 0x968 loads 8 bytes from [a0+40]:8 +0x338.
  The `sw` at 0x96c stores 4 bytes to [[a0+40]:8+824]:8 +0x402c.
  The `jal` at 0x7ec calls copyin with a0=a2 at entry (arg2), a1=sp-80, a2=0x18, a3=a3 at entry (arg3).
  The `jal` at 0x820 calls mutex_lock with a0=[a0+40]:8+34176, a1=0x19, a2=?, a3=?.
  The `jal` at 0x854 calls odsyInitPfRgn with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x86c calls copyout with a0=sp-80, a1=a2 at entry (arg2), a2=0x18, a3=[[a0+40]:8+34160]:8.
  The `jal` at 0x898 calls odsyDestroyPfRgn with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x8a0 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x8c8 calls odsyDestroyPfRgn with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x984 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x99c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x7f8 targets 0x97c, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x80c targets 0x8d8, is taken when v0(?) == v1(=0x5), and falls through when v0(?) != v1(=0x5).
  The `beq` branch at 0x830 targets 0x87c, is taken when (s1(?) & 0x1) == 0, and falls through when (s1(?) & 0x1) != 0.
  The `bne` branch at 0x83c targets 0x8c8, is taken when t9(=[[a0+40]:8+34152]:8) != 0, and falls through when t9(=[[a0+40]:8+34152]:8) == 0.
  The `bne` branch at 0x874 targets 0x998, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0x884 targets 0x8e4, is taken when (s1(?) & 0x4) == 0, and falls through when (s1(?) & 0x4) != 0.
  The `beq` branch at 0x890 targets 0x8a0, is taken when a0(=[[a0+40]:8+34152]:8) == 0, and falls through when a0(=[[a0+40]:8+34152]:8) != 0.
  The `beq` branch at 0x8d0 targets 0x844 and is always taken.
  The `beq` branch at 0x8dc targets 0x8ac and is always taken.
  The `beq` branch at 0x8fc targets 0x8a0, is taken when (s1(?) & 0x2) == 0, and falls through when (s1(?) & 0x2) != 0.
  The `beq` branch at 0x974 targets 0x8a0 and is always taken.
  The `beq` branch at 0x990 targets 0x8ac and is always taken.
  The `beq` branch at 0x9a8 targets 0x8ac and is always taken.
  The return at 0x8c0 has v0 = one of -0x1, 0x0, 0xe.
