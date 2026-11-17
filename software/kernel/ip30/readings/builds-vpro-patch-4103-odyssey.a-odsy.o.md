# Readings: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`

One entry per routine, filed here from the reading batches by binary.

- `gf_OdsyInfo` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  Range: 0x0-0x5c (92 bytes).
  It occupies 92 bytes.
  The `sw` at 0x58 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `jal` at 0x2c calls copyout with a0=a0+200, a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `beq` branch at 0x34 targets 0x48, is taken when v0(=ret(copyout)) == 0, and falls through when v0(=ret(copyout)) != 0.
  The `beq` branch at 0x54 targets 0x40 and is always taken.
  The return at 0x40 has v0 = one of 0x0, 0xe.

- `gfP_OdsyInvalidIoctl` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)` at 0x5c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  Range: 0x5c-0x80 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x68 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x78 has v0 = 0x16.

- `gf_OdsyPrivate` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)` at 0x80 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  Range: 0x80-0xfc (124 bytes).
  It occupies 124 bytes.
  The `ld` at 0xc0 loads 8 bytes from ?.
  The `jalr` at 0xc8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a4 at entry (arg4).
  The `jal` at 0xe8 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x98 targets 0xdc, is taken when at(?) != v1(=0x6f640000), and falls through when at(?) == v1(=0x6f640000).
  The `beq` branch at 0xa4 targets 0xdc, is taken when a7(?) >= 0x2f (signed), and falls through when a7(?) < 0x2f (signed).
  The `beq` branch at 0xf4 targets 0xd4 and is always taken.
  The return at 0xd4 has v0 = one of ret(?), 0x16.

- `odsyGctxFromRnid` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)` at 0xfc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`.
  Range: 0xfc-0x158 (92 bytes).
  It occupies 92 bytes.
  The `ld` at 0x12c loads 8 bytes from ?.
  The `jal` at 0x144 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0x100 targets 0x138, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `bne` branch at 0x10c targets 0x138, is taken when at(=[sym(rrm_maxrn)]) < a0 (signed), and falls through when at(=[sym(rrm_maxrn)]) >= a0 (signed).
  The `beq` branch at 0x150 targets 0x130 and is always taken.
  The return at 0x130 has v0 = one of ?, 0x0.
