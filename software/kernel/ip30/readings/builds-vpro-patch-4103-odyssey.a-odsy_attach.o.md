# Readings: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`

One entry per routine, filed here from the reading batches by binary.

- `odsy_regmatch` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`.
  Range: 0x0-0x60 (96 bytes).
  It occupies 96 bytes.
  The `sd` at 0x24 stores 8 bytes to a0 (arg0 at entry) +0x48.
  The `ld` at 0x28 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `sd` at 0x40 stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `sd` at 0x50 stores 8 bytes to a2 (arg2 at entry) +0x28.
  The `jal` at 0x1c calls gf_OdsyUnMapGfx with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3c calls ddv_destroy_handle with a0=[a0+40]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0x8 targets 0x50, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x34 targets 0x50, is taken when a0(=[a0+40]:8) == 0, and falls through when a0(=[a0+40]:8) != 0.
  The return at 0x58 has v0 = one of ?, ret(gf_OdsyUnMapGfx), ret(ddv_destroy_handle).

- `gf_OdsyAttach` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)` at 0x60 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`.
  Range: 0x60-0x1a8 (328 bytes).
  It occupies 328 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x8c, `ld` at 0x11c, `ld` at 0x124.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x9c, `sd` at 0x12c, `sd` at 0x138.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0xe8, `lw` at 0x170.
  The `sw` at 0x180 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `jal` at 0xc8 calls gfxdd_recycle with a0=sym(odsy_regmatch), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3), a7=sym(.rodata).
  The `jal` at 0x15c calls gfxdd_mmap with a0=0x1, a1=?, a2=a1 at entry (arg1), a3=sym(gfx_fault), a4=a0 at entry (arg0), a5=sp-304, a6=one of 0x2, 0x8, a7=a0+40.
  The `jal` at 0x194 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bgtz` branch at 0x98 targets 0x84, is taken when a6(?) > 0 (signed), and falls through when a6(?) <= 0 (signed).
  The `beq` branch at 0xa4 targets 0xbc, is taken when (s0(=a1) & 0x3fff) == 0, and falls through when (s0(=a1) & 0x3fff) != 0.
  The `beq` branch at 0xd4 targets 0xe4, is taken when v0(=ret(gfxdd_recycle)) == 0, and falls through when v0(=ret(gfxdd_recycle)) != 0.
  The `beq` branch at 0xdc targets 0xb0 and is always taken.
  The `beq` branch at 0xf0 targets 0x184, is taken when (a3(=[a0+48]) & 0x24) == 0, and falls through when (a3(=[a0+48]) & 0x24) != 0.
  The `beq` branch at 0x100 targets 0x13c, is taken when a6(=one of 0x2, 0x8) == 0, and falls through when a6(=one of 0x2, 0x8) != 0.
  The `bne` branch at 0x134 targets 0x108, is taken when v0(?) < a6(=one of 0x2, 0x8) (unsigned), and falls through when v0(?) >= a6(=one of 0x2, 0x8) (unsigned).
  The `bne` branch at 0x164 targets 0x18c, is taken when v0(=ret(gfxdd_mmap)) != 0, and falls through when v0(=ret(gfxdd_mmap)) == 0.
  The `beq` branch at 0x17c targets 0xb0 and is always taken.
  The `beq` branch at 0x184 targets 0x100 and is always taken.
  The `beq` branch at 0x1a0 targets 0xb0 and is always taken.
  The return at 0xb4 has v0 = one of 0x0, 0xc, 0x16.

- `gf_OdsyDetach` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)` at 0x1a8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`.
  Range: 0x1a8-0x20c (100 bytes).
  It occupies 100 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x1a8, `lw` at 0x1d0.
  The `ld` at 0x1c4 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x1ec loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `sd` at 0x1f4 stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `jal` at 0x1c8 calls odsyDiagExit with a0=[a0+32]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e4 calls gf_OdsyUnMapGfx with a0=a0 at entry (arg0), a1=[a0+48], a2=?, a3=?.
  The `jal` at 0x1f0 calls gfxdd_munmap with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1b8 targets 0x1d8, is taken when (a1(=[a0+48]) & 0x4) == 0, and falls through when (a1(=[a0+48]) & 0x4) != 0.
  The `beq` branch at 0x1dc targets 0x1ec, is taken when (a1(=[a0+48]) & 0x1) == 0, and falls through when (a1(=[a0+48]) & 0x1) != 0.
  The return at 0x204 has v0 = 0x0.
