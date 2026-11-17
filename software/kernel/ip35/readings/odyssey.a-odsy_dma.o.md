# Readings: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dma.o)`

One entry per routine, filed here from the reading batches by binary.

## `gfP_OdsyDIAGdma` at `0x934`
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dma.o)`.
  Range: 0x934-0xb34 (512 bytes).
  It occupies 512 bytes.
  8 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x950, `ld` at 0x994, `ld` at 0x9dc.
  The `ld` at 0x968 loads 8 bytes from [a0+40]:8 +0x338.
  The `ld` at 0x998 loads 8 bytes from [a0+40]:8 +0x48.
  4 such `lw` accesses load 4 bytes from [a0+40]:8 +0x50, including `lw` at 0x9a4, `lw` at 0x9e0, `lw` at 0xa68.
  3 such `sw` accesses store 4 bytes to [a0+40]:8 +0x50, including `sw` at 0x9b8, `sw` at 0x9e8, `sw` at 0xa70.
  The `lw` at 0x9f0 loads 4 bytes from a3 (arg3 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[a0+40]:8+824]:8 +0x1014, including `lw` at 0x9f4, `lw` at 0xa30.
  The `sw` at 0xa00 stores 4 bytes to [[a0+40]:8+824]:8 +0x1014.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xa78, `sw` at 0xae0, `sw` at 0xaf8.
  The `sd` at 0xaa4 stores 8 bytes to [a0+40]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x68, including `lw` at 0xaac, `lw` at 0xac4.
  The `jal` at 0x96c calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=a2 at entry (arg2).
  The `jal` at 0x984 calls copyin with a0=a2 at entry (arg2), a1=sp-112, a2=0x30, a3=?, a6=a2 at entry (arg2).
  The `jal` at 0x9cc calls odsy_NewDmaRegion with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?, a4=-0x1, a5=0x1, a6=sp-100, a7=a3 at entry (arg3).
  The `jal` at 0xa10 calls odsy_DmaRegion_DoTransfer with a0=[a0+40]:8, a1=ret(odsy_NewDmaRegion), a2=?, a3=?.
  The `jal` at 0xa28 calls DmaFinishedPollDelay with a0=[[a0+40]:8+824]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xa5c calls odsy_DeleteDmaRegion with a0=ret(odsy_NewDmaRegion), a1=?, a2=?, a3=?.
  The `jal` at 0xa98 calls psema with a0=[a0+40]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0xab8 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0xae8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xb04 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xb1c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xb24 calls odsy_teardown with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x964 targets 0x97c, is taken when a1 == 0, and falls through when a1 != 0.
  The `bltz` branch at 0x974 targets 0xad8, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `bne` branch at 0x98c targets 0xae4, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `bne` branch at 0x99c targets 0xa98, is taken when t8(=[[a0+40]:8+72]:8) != s0(=a0), and falls through when t8(=[[a0+40]:8+72]:8) == s0(=a0).
  The `bne` branch at 0x9d4 targets 0x9f4, is taken when v0(=ret(odsy_NewDmaRegion)) != 0, and falls through when v0(=ret(odsy_NewDmaRegion)) == 0.
  The `beq` branch at 0x9ec targets 0xa7c and is always taken.
  The `bne` branch at 0xa18 targets 0xafc, is taken when v0(=ret(odsy_DmaRegion_DoTransfer)) != 0, and falls through when v0(=ret(odsy_DmaRegion_DoTransfer)) == 0.
  The `beq` branch at 0xa20 targets 0xa44 and is always taken.
  The `bne` branch at 0xa3c targets 0xa54, is taken when (v1(?) & 0x1) != 0, and falls through when (v1(?) & 0x1) == 0.
  The `bne` branch at 0xa4c targets 0xa28, is taken when s2(?) < 0x28 (signed), and falls through when s2(?) >= 0x28 (signed).
  The `beq` branch at 0xa54 targets 0xb14, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xab0 targets 0x9a4, is taken when a3(=[[a0+40]:8+104]) == 0, and falls through when a3(=[[a0+40]:8+104]) != 0.
  The `bne` branch at 0xac8 targets 0xab8, is taken when a5(=[[a0+40]:8+104]) != 0, and falls through when a5(=[[a0+40]:8+104]) == 0.
  The `beq` branch at 0xad0 targets 0x9a8 and is always taken.
  The `beq` branch at 0xadc targets 0xa7c and is always taken.
  The `beq` branch at 0xaf4 targets 0xa7c and is always taken.
  The `beq` branch at 0xb0c targets 0xa20 and is always taken.
  The `beq` branch at 0xb2c targets 0xa5c and is always taken.
  The return at 0xa90 has v0 = one of [a3], 0x0, 0xe.
