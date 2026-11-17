# Readings: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`

One entry per routine, filed here from the reading batches by binary.

## `gf_OdsyStart` at `0x1c48`
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Range: 0x1c48-0x1cd8 (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0x1c50 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `sd` at 0x1c58 stores 8 bytes to [a0+40]:8 +0x8.
  The `sw` at 0x1c5c stores 4 bytes to [a0+40]:8 +0x10.
  The `sw` at 0x1c60 stores 4 bytes to [a0+40]:8 +0x68.
  The `sw` at 0x1c64 stores 4 bytes to [a0+40]:8 +0x78.
  The `sw` at 0x1c68 stores 4 bytes to [a0+40]:8 +0x54.
  The `sw` at 0x1c6c stores 4 bytes to [a0+40]:8 +0x330.
  The `sh` at 0x1c78 stores 2 bytes to [a0+40]:8 +0x31a.
  The `sw` at 0x1c7c stores 4 bytes to [a0+40]:8 +0x334.
  The `ld` at 0x1c8c loads 8 bytes from [a0+40]:8 +0x370.
  The `sw` at 0x1c9c stores 4 bytes to [a0+40]:8 +0x85f4.
  The `sw` at 0x1ca4 stores 4 bytes to [a0+40]:8 +0x85f0.
  2 such `ld` accesses load 8 bytes from [a0+40]:8 +0x338, including `ld` at 0x1ca8, `ld` at 0x1cb8.
  The `sw` at 0x1cb0 stores 4 bytes to [[a0+40]:8+824]:8 +0x4034.
  The `lw` at 0x1cbc loads 4 bytes from [a0+40]:8 +0x85f4.
  The `sw` at 0x1cc4 stores 4 bytes to [[a0+40]:8+824]:8 +0x403c.
  The `jal` at 0x1c80 calls odsyInitDrawables with a0=[a0+40]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1c88 calls kvtophys with a0=[[a0+40]:8+880]:8, a1=?, a2=?, a3=?.
  The return at 0x1cd0 has v0 = 0x0.

## `odsyDisableInterrupts` at `0x3508`
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`.
  Range: 0x3508-0x3588 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x3514 loads 4 bytes from a0 (arg0 at entry) +0x8598.
  The `sw` at 0x3520 stores 4 bytes to a0 (arg0 at entry) +0x8598.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x338, including `ld` at 0x3524, `ld` at 0x3564, `ld` at 0x3570.
  The `sw` at 0x352c stores 4 bytes to [a0+824]:8 +0x34.
  The `lw` at 0x3538 loads 4 bytes from a0 (arg0 at entry) +0x85b4.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x85b4, including `sw` at 0x354c, `sw` at 0x3558, `sw` at 0x3560.
  The `sw` at 0x3568 stores 4 bytes to [a0+824]:8 +0x1044.
  The `sw` at 0x3578 stores 4 bytes to [a0+824]:8 +0x103c.
  The return at 0x3580 has v0 = [a0+824]:8.
