# Readings: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`

One entry per routine, filed here from the reading batches by binary.

## `gfP_OdsyDIAGdma` at `0x8d0`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
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
