# Readings: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`

One entry per routine, filed here from the reading batches by binary.

## `gf_OdsyPositionCursor` at `0x118c`
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x118c-0x13d0 (580 bytes).
  It occupies 580 bytes.
  The `ld` at 0x1198 loads 8 bytes from a0 (arg0 at entry) +0x338.
  The `lhu` at 0x11b0 loads 2 bytes from a0 (arg0 at entry) +0x324.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb330, including `lw` at 0x11c0, `lw` at 0x12e8, `lw` at 0x130c.
  The `lhu` at 0x11cc loads 2 bytes from a0 (arg0 at entry) +0xb32c.
  The `lhu` at 0x11dc loads 2 bytes from a0 (arg0 at entry) +0xb32e.
  The `sh` at 0x11e8 stores 2 bytes to a0 (arg0 at entry) +0xb32a.
  The `lhu` at 0x11f4 loads 2 bytes from a0 (arg0 at entry) +0x8550.
  The `sh` at 0x1200 stores 2 bytes to a0 (arg0 at entry) +0xb328.
  3 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x8548, including `sd` at 0x1264, `sd` at 0x1288, `sd` at 0x13b4.
  3 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x8550, including `sh` at 0x1284, `sh` at 0x131c, `sh` at 0x13bc.
  5 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xb330, including `sw` at 0x12f8, `sw` at 0x1324, `sw` at 0x1364.
  4 such `sd` accesses store 8 bytes to [a0+824]:8 +0x400000, including `sd` at 0x1304, `sd` at 0x1330, `sd` at 0x1340.
  The `lhu` at 0x139c loads 2 bytes from a0 (arg0 at entry) +0x320.
  The `jal` at 0x1240 calls mutex_spinlock with a0=a0+34112, a1=?, a2=a2 at entry (arg2), a3=?, a4=0xffffffffffff0000, a5=[a0+45872], a6=[a0+45868]:2, a7=0x3960000100000000.
  The `jal` at 0x1254 calls cpsema with a0=a0+34096, a1=?, a2=?, a3=?.
  The `jal` at 0x1268 calls mutex_spinunlock with a0=a0+34112, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1274 calls odsy_poll_dfifo_level with a0=[a0+824]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x128c calls vsema with a0=?, a1=?, a2=?, a3=?, a7=-0x3.
  The `jal` at 0x13c0 calls mutex_spinunlock with a0=a0+34112, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x11c8 targets 0x139c, is taken when at(=[a0+804]:2) == v0(=0x2), and falls through when at(=[a0+804]:2) != v0(=0x2).
  The `bltz` branch at 0x1228 targets 0x1394, is taken when v1(=([a0+45872] << 0x1d)) < 0 (signed), and falls through when v1(=([a0+45872] << 0x1d)) >= 0 (signed).
  The `beq` branch at 0x125c targets 0x13b4, is taken when v0(=ret(cpsema)) == 0, and falls through when v0(=ret(cpsema)) != 0.
  The `beq` branch at 0x127c targets 0x12c0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x12dc targets 0x1338, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x134c targets 0x128c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x138c targets 0x128c and is always taken.
  The `beq` branch at 0x1394 targets 0x1234 and is always taken.
  The `bne` branch at 0x13a4 targets 0x11d0, is taken when a1 < v0(=[a0+800]:2) (signed), and falls through when a1 >= v0(=[a0+800]:2) (signed).
  The `beq` branch at 0x13ac targets 0x11d4 and is always taken.
  The `beq` branch at 0x13c8 targets 0x1298 and is always taken.
  The return at 0x12b8 has v0 = 0x0.
