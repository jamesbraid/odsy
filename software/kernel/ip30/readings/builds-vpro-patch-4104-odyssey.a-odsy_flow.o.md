# Readings: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`

One entry per routine, filed here from the reading batches by binary.

## `odsyLowaterInterrupt` at `0x2ac`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`.
  Range: 0x2ac-0x32c (128 bytes).
  It occupies 128 bytes.
  The `ld` at 0x2c0 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `lw` at 0x2cc loads 4 bytes from a0 (arg0 at entry) +0x2890.
  The `sw` at 0x2d8 stores 4 bytes to a0 (arg0 at entry) +0x2890.
  The `sw` at 0x2e0 stores 4 bytes to [a0+736]:8 +0x103c.
  The `ld` at 0x2e4 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x2e8 loads 8 bytes from [a0+72]:8 +0x20.
  The `lw` at 0x2ec loads 4 bytes from [[a0+72]:8+32]:8 +0x50.
  The `sw` at 0x300 stores 4 bytes to [[a0+72]:8+32]:8 +0x50.
  The `sw` at 0x304 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `jal` at 0x2c4 calls odsyFifoTimer with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2fc calls mutex_spinlock with a0=a0+22260, a1=-0x201, a2=?, a3=?.
  The `jal` at 0x310 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x318 calls force_resched with a0=?, a1=?, a2=?, a3=?.
  The return at 0x324 has v0 = ret(force_resched).
