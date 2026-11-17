# Readings: `usr/gfx/arch/IP30ODSY32/libGL.so`

One entry per routine, filed here from the reading batches by binary.

- `_init` in `usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8427a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8427a0-0xd8427d8 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd8427c0 calls __glXInit [0xd80dfd8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd8427d0 has v0 = ret(__glXInit).
