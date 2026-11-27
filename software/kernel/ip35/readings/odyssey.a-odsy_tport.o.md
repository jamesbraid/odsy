# Readings: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_tport.o)`

One entry per routine, filed here from the reading batches by binary.

- `ODSY_SET_GC` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_tport.o)` at 0x30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_tport.o)`.
  Range: 0x30-0x9b8 (2440 bytes).
  It occupies 2440 bytes.
  The `sw` at 0x54 stores 4 bytes to sym(.bss) +0x2b80.
  135 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x110000, including `sw` at 0x60, `sw` at 0x6c, `sw` at 0x78.
  The `lw` at 0x100 loads 4 bytes from sym(.bss) +0x2b80.
  5 such `lw` accesses load 4 bytes from sym(.bss) +0x9c, including `lw` at 0x16c, `lw` at 0x240, `lw` at 0x264.
  6 such `sw` accesses store 4 bytes to sym(.bss) +0x9c, including `sw` at 0x178, `sw` at 0x1dc, `sw` at 0x250.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0xd4, including `sw` at 0x1d0, `sw` at 0x74c.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0xd8, including `sw` at 0x1ec, `sw` at 0x75c.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0xdc, including `sw` at 0x1fc, `sw` at 0x754.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0xd4, including `lw` at 0x210, `lw` at 0x77c.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0xd8, including `lw` at 0x220, `lw` at 0x78c.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0xdc, including `lw` at 0x230, `lw` at 0x79c.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0x267c, including `sw` at 0x274, `sw` at 0x7e0.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0x2680, including `sw` at 0x27c, `sw` at 0x7e8.
  4 such `lw` accesses load 4 bytes from sym(.bss) +0x267c, including `lw` at 0x280, `lw` at 0x284, `lw` at 0x7ec.
  4 such `lw` accesses load 4 bytes from sym(.bss) +0x2680, including `lw` at 0x2b4, `lw` at 0x2bc, `lw` at 0x81c.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0x104, including `sw` at 0x334, `sw` at 0x88c.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0x100, including `sw` at 0x340, `sw` at 0x898.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x100, including `lw` at 0x354, `lw` at 0x8ac.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x104, including `lw` at 0x364, `lw` at 0x8bc.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x108, including `lw` at 0x378, `lw` at 0x8d0.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x10c, including `lw` at 0x398, `lw` at 0x8f0.
  2 such `lw` accesses load 4 bytes from table(sym(buzz_init)) +0x10, including `lw` at 0x3a8, `lw` at 0x904.
  2 such `lw` accesses load 4 bytes from table(sym(buzz_init)) +0x14, including `lw` at 0x3b0, `lw` at 0x914.
  2 such `lw` accesses load 4 bytes from table(sym(buzz_init)) +0x4, including `lw` at 0x3e0, `lw` at 0x900.
  2 such `lw` accesses load 4 bytes from table(sym(buzz_init)) +0x0, including `lw` at 0x3e8, `lw` at 0x944.
  2 such `lw` accesses load 4 bytes from table(sym(buzz_init)) +0x8, including `lw` at 0x408, `lw` at 0x958.
  2 such `lw` accesses load 4 bytes from table(sym(buzz_init)) +0xc, including `lw` at 0x420, `lw` at 0x974.
  The `sw` at 0x430 stores 4 bytes to sym(.bss) +0xe0.
  The `lw` at 0x444 loads 4 bytes from sym(.bss) +0xe0.
  The `sw` at 0x454 stores 4 bytes to sym(.bss) +0x1b48.
  The `sw` at 0x458 stores 4 bytes to sym(.bss) +0x1b44.
  The `sw` at 0x45c stores 4 bytes to sym(.bss) +0x1b3c.
  4 such `lw` accesses load 4 bytes from sym(.bss) +0x1b3c, including `lw` at 0x4fc, `lw` at 0x594, `lw` at 0x5d4.
  4 such `lw` accesses load 4 bytes from sym(.bss) +0x1b40, including `lw` at 0x50c, `lw` at 0x5a4, `lw` at 0x5e4.
  3 such `lw` accesses load 4 bytes from sym(.bss) +0x1b44, including `lw` at 0x51c, `lw` at 0x5f4, `lw` at 0x6bc.
  4 such `lw` accesses load 4 bytes from sym(.bss) +0x1b48, including `lw` at 0x52c, `lw` at 0x5bc, `lw` at 0x60c.
  The `beq` branch at 0x168 targets 0x980, is taken when a6 == 0, and falls through when a6 != 0.
  The `beq` branch at 0x180 targets 0x730, is taken when a4 == a5(=0x2), and falls through when a4 != a5(=0x2).
  The `beq` branch at 0x188 targets 0x734, is taken when a4 == 0, and falls through when a4 != 0.
  The `beq` branch at 0x190 targets 0x9a4, is taken when a6 == 0, and falls through when a6 != 0.
  The `beq` branch at 0x198 targets 0x240, is taken when a7 == 0, and falls through when a7 != 0.
  The `beq` branch at 0x734 targets 0x9b0, is taken when a6 == 0, and falls through when a6 != 0.
  The `beq` branch at 0x73c targets 0x7b0, is taken when a7 == 0, and falls through when a7 != 0.
  The `beq` branch at 0x978 targets 0x428 and is always taken.
  The `beq` branch at 0x99c targets 0x17c and is always taken.
  The `beq` branch at 0x9a8 targets 0x248 and is always taken.
  The `beq` branch at 0x9b0 targets 0x7b4 and is always taken.
  The return at 0x728 has v0 = 0x800000.
