# Instruction readings for the first ODSY target queue

Each entry was read from the exact archive member named below. The local MIPS disassembler produced the instruction listing. These are software observations only. They do not establish board behaviour.

## `gf_OdsyPositionCursor` at `0x1008`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x1008-0x125c (596 bytes).
  It occupies 596 bytes.
  The `lhu` at 0x100c loads 2 bytes from a0 (arg0 at entry) +0x2ce.
  The `ld` at 0x101c loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x55f0, including `lw` at 0x1030, `lw` at 0x113c, `lw` at 0x1168.
  The `lhu` at 0x1034 loads 2 bytes from a0 (arg0 at entry) +0x55ee.
  The `lhu` at 0x1038 loads 2 bytes from a0 (arg0 at entry) +0x55ec.
  The `lhu` at 0x105c loads 2 bytes from a0 (arg0 at entry) +0x2830.
  The `sh` at 0x1068 stores 2 bytes to a0 (arg0 at entry) +0x55ea.
  The `sh` at 0x1080 stores 2 bytes to a0 (arg0 at entry) +0x55e8.
  3 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x2828, including `sd` at 0x10d0, `sd` at 0x1108, `sd` at 0x1244.
  3 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x2830, including `sh` at 0x10fc, `sh` at 0x1180, `sh` at 0x122c.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x55f0, including `sw` at 0x1154, `sw` at 0x1188, `sw` at 0x11cc.
  4 such `sd` accesses store 8 bytes to [a0+736]:8 +0x400000, including `sd` at 0x1160, `sd` at 0x119c, `sd` at 0x11b0.
  The `lhu` at 0x11f4 loads 2 bytes from a0 (arg0 at entry) +0x2ca.
  The `jal` at 0x10b0 calls mutex_spinlock with a0=a0+10272, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10c0 calls cpsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x10d8 calls mutex_spinunlock with a0=a0+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x10e8 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x110c calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1240 calls mutex_spinunlock with a0=a0+10272, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1020 targets 0x11f4, is taken when at(=[a0+718]:2) == v0(=0x2), and falls through when at(=[a0+718]:2) != v0(=0x2).
  The `beq` branch at 0x1090 targets 0x1210, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x10c8 targets 0x122c, is taken when v0(=ret(cpsema)) == 0, and falls through when v0(=ret(cpsema)) != 0.
  The `beq` branch at 0x10f0 targets 0x1124, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1130 targets 0x11a0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x11ac targets 0x110c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x11ec targets 0x110c and is always taken.
  The `bne` branch at 0x11fc targets 0x1028, is taken when a1 < v0(=[a0+714]:2) (signed), and falls through when a1 >= v0(=[a0+714]:2) (signed).
  The `beq` branch at 0x1208 targets 0x1030 and is always taken.
  The `beq` branch at 0x1224 targets 0x10ac and is always taken.
  The `beq` branch at 0x1254 targets 0x1118 and is always taken.
  The return at 0x111c has v0 = 0x0.
## `gfP_OdsyBRDMGRcursor` at `0x125c`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x125c-0x1f90 (3380 bytes).
  It occupies 3380 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x1288, `ld` at 0x12e4.
  26 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x129c, `ld` at 0x13c4, `ld` at 0x14c0.
  The `sh` at 0x12c4 stores 2 bytes to [a0+32]:8 +0x55ec.
  The `sh` at 0x12cc stores 2 bytes to [a0+32]:8 +0x55ee.
  6 such `lw` accesses load 4 bytes from [a0+32]:8 +0x5720, including `lw` at 0x12f4, `lw` at 0x1330, `lw` at 0x1384.
  21 such `sw` accesses store 4 bytes to [a0+32]:8 +0x55f0, including `sw` at 0x1318, `sw` at 0x14d4, `sw` at 0x1510.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x1350, `sw` at 0x1828, `sw` at 0x18ec.
  10 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2828, including `ld` at 0x13a0, `ld` at 0x1524, `ld` at 0x1598.
  7 such `sd` accesses store 8 bytes to table(0x400000) +0x0, including `sd` at 0x1404, `sd` at 0x1698, `sd` at 0x1a50.
  20 such `lw` accesses load 4 bytes from [a0+32]:8 +0x55f0, including `lw` at 0x148c, `lw` at 0x14e4, `lw` at 0x1534.
  10 such `lhu` accesses load 2 bytes from [a0+32]:8 +0x2830, including `lhu` at 0x1490, `lhu` at 0x14e0, `lhu` at 0x1700.
  20 such `sd` accesses store 8 bytes to [[a0+32]:8+736]:8 +0x400000, including `sd` at 0x14dc, `sd` at 0x1518, `sd` at 0x1530.
  5 such `sd` accesses store 8 bytes to [a0+32]:8 +0x2828, including `sd` at 0x1564, `sd` at 0x17d4, `sd` at 0x19f0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x16c8, `lw` at 0x1ae0, `lw` at 0x1db8.
  The `jal` at 0x12a4 calls copyin with a0=a2 at entry (arg2), a1=sp-1040, a2=0x28, a3=a3 at entry (arg3).
  The `jal` at 0x12ec calls gf_OdsyPositionCursor with a0=[a0+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1314 calls odsy_poll_dfifo_level with a0=?, a1=0xf, a2=?, a3=?.
  The `jal` at 0x1374 calls copyin with a0=?, a1=sp-1000, a2=0x3c, a3=?.
  The `jal` at 0x1398 calls mutex_spinlock with a0=[a0+32]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x13b4 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=[[a0+32]:8+10280]:8, a3=?, a5=[a0+32]:8+10256.
  The `jal` at 0x13c0 calls odsy_poll_dfifo_level with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x13d0 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1428 calls copyin with a0=?, a1=sp-928, a2=0x200, a3=?.
  The `jal` at 0x1450 calls psema with a0=[a0+32]:8+10256, a1=0x19, a2=[[a0+32]:8+22304], a3=?.
  The `jal` at 0x1468 calls vsema with a0=[a0+32]:8+10256, a1=?, a2=[[a0+32]:8+10280]:8, a3=?, a5=[a0+32]:8+10256.
  The `jal` at 0x1474 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1484 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x157c calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=0x400000, a6=-0x2.
  The `jal` at 0x1590 calls mutex_spinlock with a0=[a0+32]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x15b0 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+32]:8+10280]:8.
  The `jal` at 0x15bc calls odsy_poll_dfifo_level with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x15cc calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x15e0 calls odsy_poll_dfifo_level with a0=?, a1=0x7, a2=?, a3=?.
  The `jal` at 0x1624 calls odsy_poll_dfifo_level with a0=?, a1=0xf, a2=?, a3=?.
  The `jal` at 0x1654 calls copyin with a0=?, a1=sp-416, a2=0x100, a3=?.
  The `jal` at 0x16d8 calls vsema with a0=[a0+32]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+32]:8+10280]:8.
  The `jal` at 0x16e4 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x16f4 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17ec calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=-0x2.
  The `jal` at 0x180c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1830 calls mutex_spinlock with a0=[a0+32]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x1850 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x185c calls odsy_poll_dfifo_level with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x186c calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1880 calls odsy_poll_dfifo_level with a0=?, a1=0xf, a2=?, a3=?.
  The `jal` at 0x18b0 calls odsy_poll_dfifo_level with a0=?, a1=0xf, a2=?, a3=?.
  The `jal` at 0x18f4 calls vsema with a0=[a0+32]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x1900 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1910 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a08 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=-0x2.
  The `jal` at 0x1af4 calls mutex_spinlock with a0=[a0+32]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+32]:8+22304].
  The `jal` at 0x1b14 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1b20 calls odsy_poll_dfifo_level with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1b30 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b4c calls odsy_poll_dfifo_level with a0=?, a1=0x0, a2=?, a3=0xffffffff, a5=0xffffffff00000000, a7=sp-928.
  The `jal` at 0x1b8c calls vsema with a0=[a0+32]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x1b98 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ba8 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ca8 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=-0x2.
  The `jal` at 0x1dd4 calls odsy_poll_dfifo_level with a0=?, a1=0x0, a2=?, a3=?, a5=0xffffffff00000000, a6=0xffffffff, a7=0x400000.
  The `jal` at 0x1e04 calls mutex_spinlock with a0=[a0+32]:8+10272, a1=?, a2=a3 at entry (arg3), a3=?.
  The `jal` at 0x1e24 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1e30 calls odsy_poll_dfifo_level with a0=[[a0+32]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1e40 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1e64 calls vsema with a0=[a0+32]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x1e70 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1e80 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1f80 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a7=([[a0+32]:8+22000] | 0x2).
  The `bne` branch at 0x12ac targets 0x17fc, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x12b8 targets 0x12d4, is taken when (v0(?) & 0x1) == 0, and falls through when (v0(?) & 0x1) != 0.
  The `beq` branch at 0x12d8 targets 0x12f4, is taken when (v0(?) & 0x2) == 0, and falls through when (v0(?) & 0x2) != 0.
  The `beq` branch at 0x12f8 targets 0x144c, is taken when a2(=[[a0+32]:8+22304]) == 0, and falls through when a2(=[[a0+32]:8+22304]) != 0.
  The `beq` branch at 0x1304 targets 0x1324, is taken when (a4(?) & 0x4) == 0, and falls through when (a4(?) & 0x4) != 0.
  The `beq` branch at 0x131c targets 0x13e0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1328 targets 0x135c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1334 targets 0x1398, is taken when v1(=[[a0+32]:8+22304]) == 0, and falls through when v1(=[[a0+32]:8+22304]) != 0.
  The `beq` branch at 0x1364 targets 0x140c, is taken when (at(?) & 0x8) == 0, and falls through when (at(?) & 0x8) != 0.
  The `beq` branch at 0x137c targets 0x15dc, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x1388 targets 0x158c, is taken when v1(=[[a0+32]:8+22304]) == 0, and falls through when v1(=[[a0+32]:8+22304]) != 0.
  The `beq` branch at 0x1390 targets 0x1354 and is always taken.
  The `beq` branch at 0x13a4 targets 0x1460, is taken when a2(=[[a0+32]:8+10280]:8) == 0, and falls through when a2(=[[a0+32]:8+10280]:8) != 0.
  The `beq` branch at 0x13c8 targets 0x1484, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x13d8 targets 0x1340 and is always taken.
  The `beq` branch at 0x1400 targets 0x1324 and is always taken.
  The `bne` branch at 0x1410 targets 0x1330, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x141c targets 0x1638, is taken when (at(?) & 0x10) == 0, and falls through when (at(?) & 0x10) != 0.
  The `beq` branch at 0x1430 targets 0x1620, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x143c targets 0x182c, is taken when v1(=[[a0+32]:8+22304]) == 0, and falls through when v1(=[[a0+32]:8+22304]) != 0.
  The `beq` branch at 0x1444 targets 0x1354 and is always taken.
  The `beq` branch at 0x1458 targets 0x1300 and is always taken.
  The `beq` branch at 0x147c targets 0x1340 and is always taken.
  The `beq` branch at 0x14a8 targets 0x151c, is taken when 0 >= a7(?) (unsigned), and falls through when 0 < a7(?) (unsigned).
  The `beq` branch at 0x152c targets 0x1564, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1584 targets 0x13d0 and is always taken.
  The `beq` branch at 0x15a4 targets 0x16d4, is taken when a4(=[[a0+32]:8+10280]:8) == 0, and falls through when a4(=[[a0+32]:8+10280]:8) != 0.
  The `beq` branch at 0x15c4 targets 0x16f4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x15d4 targets 0x138c and is always taken.
  The `bne` branch at 0x15ec targets 0x140c, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x1618 targets 0x16b4 and is always taken.
  The `beq` branch at 0x1630 targets 0x1a18, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0x163c targets 0x1330, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x1648 targets 0x1894, is taken when (a2(?) & 0x20) == 0, and falls through when (a2(?) & 0x20) != 0.
  The `beq` branch at 0x165c targets 0x187c, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x1668 targets 0x1af0, is taken when a4(=[[a0+32]:8+22304]) == 0, and falls through when a4(=[[a0+32]:8+22304]) != 0.
  The `beq` branch at 0x1670 targets 0x1354 and is always taken.
  The `beq` branch at 0x16ac targets 0x1408, is taken when a1(?) >= 0xf (signed), and falls through when a1(?) < 0xf (signed).
  The `bne` branch at 0x16c4 targets 0x1678, is taken when (a4(?) & 0x1) != 0, and falls through when (a4(?) & 0x1) == 0.
  The `beq` branch at 0x16cc targets 0x169c and is always taken.
  The `beq` branch at 0x16ec targets 0x138c and is always taken.
  The `beq` branch at 0x1718 targets 0x178c, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x179c targets 0x17d4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x17f4 targets 0x15cc and is always taken.
  The `beq` branch at 0x1824 targets 0x1354 and is always taken.
  The `beq` branch at 0x1844 targets 0x18f0, is taken when at(=[[a0+32]:8+10280]:8) == 0, and falls through when at(=[[a0+32]:8+10280]:8) != 0.
  The `beq` branch at 0x1864 targets 0x1910, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1874 targets 0x1440 and is always taken.
  The `beq` branch at 0x188c targets 0x1ce8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0x1898 targets 0x1330, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x18a4 targets 0x18c8, is taken when (a4(?) & 0x1) == 0, and falls through when (a4(?) & 0x1) != 0.
  The `beq` branch at 0x18c0 targets 0x1cb8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0x18cc targets 0x1330, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x18d8 targets 0x1e00, is taken when v1(=[[a0+32]:8+22304]) == 0, and falls through when v1(=[[a0+32]:8+22304]) != 0.
  The `beq` branch at 0x18e8 targets 0x1354 and is always taken.
  The `beq` branch at 0x1908 targets 0x1440 and is always taken.
  The `beq` branch at 0x1934 targets 0x19a8, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x19b8 targets 0x19f0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1a10 targets 0x186c and is always taken.
  The `beq` branch at 0x1a30 targets 0x1b7c, is taken when (a4(?) & 0x1) == 0, and falls through when (a4(?) & 0x1) != 0.
  The `beq` branch at 0x1a68 targets 0x1aac and is always taken.
  The `beq` branch at 0x1aa4 targets 0x1638, is taken when a6(?) >= 0x80 (signed), and falls through when a6(?) < 0x80 (signed).
  The `beq` branch at 0x1ac8 targets 0x1b40, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x1adc targets 0x1a70, is taken when (a4(?) & 0x1) != 0, and falls through when (a4(?) & 0x1) == 0.
  The `beq` branch at 0x1ae8 targets 0x1a94 and is always taken.
  The `beq` branch at 0x1b08 targets 0x1b88, is taken when at(=[[a0+32]:8+10280]:8) == 0, and falls through when at(=[[a0+32]:8+10280]:8) != 0.
  The `beq` branch at 0x1b28 targets 0x1ba8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1b38 targets 0x166c and is always taken.
  The `bne` branch at 0x1b6c targets 0x1330, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x1b74 targets 0x1ad0 and is always taken.
  The `beq` branch at 0x1b80 targets 0x1a54 and is always taken.
  The `beq` branch at 0x1ba0 targets 0x166c and is always taken.
  The `beq` branch at 0x1bc8 targets 0x1c40, is taken when 0 >= a3(?) (unsigned), and falls through when 0 < a3(?) (unsigned).
  The `beq` branch at 0x1c54 targets 0x1c90, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1cb0 targets 0x1b30 and is always taken.
  The `beq` branch at 0x1ce0 targets 0x18c8 and is always taken.
  The `beq` branch at 0x1d00 targets 0x1e50, is taken when (at(?) & 0x1) == 0, and falls through when (at(?) & 0x1) != 0.
  The `beq` branch at 0x1d3c targets 0x1d84 and is always taken.
  The `beq` branch at 0x1d7c targets 0x1894, is taken when a3(?) >= 0x40 (signed), and falls through when a3(?) < 0x40 (signed).
  The `beq` branch at 0x1da0 targets 0x1dcc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x1db4 targets 0x1d44, is taken when (at(?) & 0x1) != 0, and falls through when (at(?) & 0x1) == 0.
  The `beq` branch at 0x1dc4 targets 0x1d6c and is always taken.
  The `bne` branch at 0x1df0 targets 0x1330, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x1df8 targets 0x1da8 and is always taken.
  The `beq` branch at 0x1e18 targets 0x1e60, is taken when at(=[[a0+32]:8+10280]:8) == 0, and falls through when at(=[[a0+32]:8+10280]:8) != 0.
  The `beq` branch at 0x1e38 targets 0x1e80, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1e48 targets 0x18dc and is always taken.
  The `beq` branch at 0x1e58 targets 0x1d28 and is always taken.
  The `beq` branch at 0x1e78 targets 0x18dc and is always taken.
  The `beq` branch at 0x1ea0 targets 0x1f18, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x1f2c targets 0x1f68, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1f88 targets 0x1e40 and is always taken.
  The return at 0x1354 has v0 = one of 0x0, 0x5, 0xe.
## `odsyBlankScreen` at `0x207c`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x207c-0x2d74 (3320 bytes).
  It occupies 3320 bytes.
  34 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x207c, `ld` at 0x2148, `ld` at 0x2278.
  3 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x12a, including `lhu` at 0x20b4, `lhu` at 0x2114, `lhu` at 0x2168.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5720, including `lw` at 0x20c0, `lw` at 0x20fc, `lw` at 0x2124.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5698, including `lw` at 0x20c4, `lw` at 0x2128, `lw` at 0x217c.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5698, including `sw` at 0x20d8, `sw` at 0x213c, `sw` at 0x2190.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5694, including `lw` at 0x2198, `lw` at 0x21fc, `lw` at 0x2330.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5694, including `sw` at 0x21ac, `sw` at 0x220c, `sw` at 0x233c.
  2 such `lw` accesses load 4 bytes from table(0x233604) +0x0, including `lw` at 0x21d8, `lw` at 0x2300.
  8 such `sd` accesses store 8 bytes to table(0x400000) +0x0, including `sd` at 0x21f8, `sd` at 0x221c, `sd` at 0x2230.
  3 such `lwu` accesses load 4 bytes from a0 (arg0 at entry) +0x5698, including `lwu` at 0x2204, `lwu` at 0x2334, `lwu` at 0x23c4.
  3 such `lwu` accesses load 4 bytes from a0 (arg0 at entry) +0x5694, including `lwu` at 0x2220, `lwu` at 0x2350, `lwu` at 0x23e4.
  12 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2828, including `ld` at 0x2254, `ld` at 0x237c, `ld` at 0x2410.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x56e8, including `sb` at 0x22ac, `sb` at 0x2578, `sb` at 0x26ec.
  24 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x55f0, including `lw` at 0x25c8, `lw` at 0x261c, `lw` at 0x2670.
  12 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x2830, including `lhu` at 0x25cc, `lhu` at 0x2628, `lhu` at 0x27a4.
  24 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x55f0, including `sw` at 0x25f8, `sw` at 0x2648, `sw` at 0x269c.
  24 such `sd` accesses store 8 bytes to [a0+736]:8 +0x400000, including `sd` at 0x2618, `sd` at 0x2654, `sd` at 0x266c.
  6 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x2828, including `sd` at 0x26ac, `sd` at 0x2884, `sd` at 0x2998.
  The `jal` at 0x20e0 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2144 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x21a8 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xe, a2=?, a3=?, a6=-0x21.
  The `jal` at 0x224c calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=?, a4=0xffffffff.
  The `jal` at 0x2268 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2274 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2284 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x22a8 calls odsy_i2cDDCRegRead with a0=a0+22216, a1=0x0, a2=sp-78, a3=0x17, a4=[a0+298]:2.
  The `jal` at 0x22c4 calls odsy_i2cPLLRegWrite with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x22e0 calls psema with a0=a0+10256, a1=0x19, a2=a1 at entry (arg1), a3=?, a4=-0x21.
  The `jal` at 0x2374 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=[a0+22304].
  The `jal` at 0x2394 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x23a0 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x23b0 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2408 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=table(0x400000), a4=0x3920c00100000000.
  The `jal` at 0x2428 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2434 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2444 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2458 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=[a0+22304].
  The `jal` at 0x2474 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=a0+10256.
  The `jal` at 0x2480 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2490 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x24a4 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x24c0 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+10280]:8.
  The `jal` at 0x24cc calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x24dc calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x24f4 calls vsema with a0=a0+10256, a1=a0+10256, a2=?, a3=?.
  The `jal` at 0x2500 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2514 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=0x3920c00100000000, a4=0xffffffff.
  The `jal` at 0x2534 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2540 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2550 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2574 calls odsy_i2cDDCRegRead with a0=a0+22216, a1=0x0, a2=sp-80, a3=0x17.
  The `jal` at 0x2590 calls odsy_i2cPLLRegWrite with a0=?, a1=0x0, a2=?, a3=-0xf.
  The `jal` at 0x25b0 calls psema with a0=a0+10256, a1=0x19, a2=?, a3=?, a4=[a0+22304].
  The `jal` at 0x25c0 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x26c4 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x26e8 calls odsy_i2cDDCRegRead with a0=a0+22216, a1=0x0, a2=sp-79, a3=0x17, a4=[a0+298]:2.
  The `jal` at 0x2704 calls odsy_i2cPLLRegWrite with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2720 calls psema with a0=a0+10256, a1=0x19, a2=a1 at entry (arg1), a3=?, a4=-0x21.
  The `jal` at 0x2738 calls vsema with a0=a0+10256, a1=?, a2=?, a3=a0+10256.
  The `jal` at 0x2744 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x275c calls vsema with a0=a0+10256, a1=?, a2=?, a3=?, a4=[a0+10280]:8.
  The `jal` at 0x2768 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x277c calls vsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2788 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2798 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x289c calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x28ac calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x29b0 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x29cc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a1 at entry (arg1), a3=0x2.
  The `jal` at 0x29e0 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2aec calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=[a0+22000], a3=?, a6=([a0+22000] | 0x2).
  The `jal` at 0x2b00 calls vsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2b0c calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2b20 calls vsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2b2c calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2b3c calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2c48 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=[a0+22000], a3=?, a6=([a0+22000] | 0x2).
  The `jal` at 0x2c58 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2d64 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=[a0+22000], a3=?, a6=([a0+22000] | 0x2).
  The `beq` branch at 0x209c targets 0x2114, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x20a4 targets 0x2168, is taken when a2(=a1) == v1(=0x1), and falls through when a2(=a1) != v1(=0x1).
  The `bne` branch at 0x20ac targets 0x29c0, is taken when a2(=a1) != a3(=0x2), and falls through when a2(=a1) == a3(=0x2).
  The `beq` branch at 0x20b8 targets 0x2294, is taken when a4(=[a0+298]:2) == at(=0x3), and falls through when a4(=[a0+298]:2) != at(=0x3).
  The `beq` branch at 0x20d4 targets 0x22dc, is taken when v1(=[a0+22304]) == 0, and falls through when v1(=[a0+22304]) != 0.
  The `beq` branch at 0x20f4 targets 0x21cc, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2100 targets 0x2248, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `beq` branch at 0x211c targets 0x2560, is taken when v1(=[a0+298]:2) == a3(=0x3), and falls through when v1(=[a0+298]:2) != a3(=0x3).
  The `beq` branch at 0x2138 targets 0x25ac, is taken when a4(=[a0+22304]) == 0, and falls through when a4(=[a0+22304]) != 0.
  The `beq` branch at 0x214c targets 0x22f0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2158 targets 0x2454, is taken when a3(=[a0+22304]) == 0, and falls through when a3(=[a0+22304]) != 0.
  The `beq` branch at 0x2160 targets 0x210c and is always taken.
  The `beq` branch at 0x2170 targets 0x26d4, is taken when a4(=[a0+298]:2) == at(=0x3), and falls through when a4(=[a0+298]:2) != at(=0x3).
  The `beq` branch at 0x218c targets 0x271c, is taken when v1(=[a0+22304]) == 0, and falls through when v1(=[a0+22304]) != 0.
  The `beq` branch at 0x21b0 targets 0x23c0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x21bc targets 0x24a0, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `beq` branch at 0x21c4 targets 0x210c and is always taken.
  The `beq` branch at 0x2238 targets 0x2510, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `beq` branch at 0x2240 targets 0x210c and is always taken.
  The `beq` branch at 0x2258 targets 0x24ec, is taken when v1(=[a0+10280]:8) == 0, and falls through when v1(=[a0+10280]:8) != 0.
  The `beq` branch at 0x227c targets 0x25c0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x228c targets 0x2104 and is always taken.
  The `beq` branch at 0x22cc targets 0x223c, is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `beq` branch at 0x22d4 targets 0x210c and is always taken.
  The `beq` branch at 0x22e8 targets 0x20dc and is always taken.
  The `bne` branch at 0x2368 targets 0x2240, is taken when a3(=[a0+22304]) != 0, and falls through when a3(=[a0+22304]) == 0.
  The `beq` branch at 0x2388 targets 0x2afc, is taken when at(=[a0+10280]:8) == 0, and falls through when at(=[a0+10280]:8) != 0.
  The `beq` branch at 0x23a8 targets 0x2b3c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x23b8 targets 0x223c and is always taken.
  The `bne` branch at 0x23fc targets 0x2240, is taken when at(=[a0+22304]) != 0, and falls through when at(=[a0+22304]) == 0.
  The `beq` branch at 0x241c targets 0x2b1c, is taken when at(=[a0+10280]:8) == 0, and falls through when at(=[a0+10280]:8) != 0.
  The `beq` branch at 0x243c targets 0x2c58, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x244c targets 0x223c and is always taken.
  The `beq` branch at 0x2468 targets 0x2730, is taken when v1(=[a0+10280]:8) == 0, and falls through when v1(=[a0+10280]:8) != 0.
  The `beq` branch at 0x2488 targets 0x2798, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2498 targets 0x215c and is always taken.
  The `beq` branch at 0x24b4 targets 0x2754, is taken when a4(=[a0+10280]:8) == 0, and falls through when a4(=[a0+10280]:8) != 0.
  The `beq` branch at 0x24d4 targets 0x28ac, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x24e4 targets 0x21c0 and is always taken.
  The `beq` branch at 0x2508 targets 0x2104 and is always taken.
  The `beq` branch at 0x2528 targets 0x2778, is taken when v0(=[a0+10280]:8) == 0, and falls through when v0(=[a0+10280]:8) != 0.
  The `beq` branch at 0x2548 targets 0x29e0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2558 targets 0x223c and is always taken.
  The `beq` branch at 0x2598 targets 0x2124, is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `beq` branch at 0x25a4 targets 0x210c and is always taken.
  The `beq` branch at 0x25b8 targets 0x2144 and is always taken.
  The `beq` branch at 0x25e0 targets 0x2658, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x2668 targets 0x26a8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x26cc targets 0x2284 and is always taken.
  The `beq` branch at 0x270c targets 0x223c, is taken when v0(=ret(odsy_i2cPLLRegWrite)) == 0, and falls through when v0(=ret(odsy_i2cPLLRegWrite)) != 0.
  The `beq` branch at 0x2714 targets 0x210c and is always taken.
  The `beq` branch at 0x2728 targets 0x2194 and is always taken.
  The `beq` branch at 0x274c targets 0x215c and is always taken.
  The `beq` branch at 0x2770 targets 0x21c0 and is always taken.
  The `beq` branch at 0x2790 targets 0x223c and is always taken.
  The `beq` branch at 0x27b8 targets 0x2830, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x2840 targets 0x2880, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x28a4 targets 0x2490 and is always taken.
  The `beq` branch at 0x28cc targets 0x2944, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x2954 targets 0x2994, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x29b8 targets 0x24dc and is always taken.
  The `beq` branch at 0x29d8 targets 0x210c and is always taken.
  The `beq` branch at 0x2a00 targets 0x2a80, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x2a90 targets 0x2ad0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2af4 targets 0x2550 and is always taken.
  The `beq` branch at 0x2b14 targets 0x223c and is always taken.
  The `beq` branch at 0x2b34 targets 0x223c and is always taken.
  The `beq` branch at 0x2b5c targets 0x2bdc, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x2bec targets 0x2c2c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2c50 targets 0x23b0 and is always taken.
  The `beq` branch at 0x2c78 targets 0x2cf8, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x2d08 targets 0x2d48, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2d6c targets 0x2444 and is always taken.
  The return at 0x210c has v0 = one of -0x1, 0x0.
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
## `odsyReset` at `0x1800`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x1800-0x1c44 (1092 bytes).
  It occupies 1092 bytes.
  75 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1828, `sw` at 0x1864, `sw` at 0x1868.
  3 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1830, `sh` at 0x187c, `sh` at 0x1884.
  37 such `ld` accesses load 8 bytes from ?, including `ld` at 0x183c, `ld` at 0x18a8, `ld` at 0x18c8.
  16 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1998, `lw` at 0x19e8, `lw` at 0x1a60.
  The `jal` at 0x1844 calls bzero with a0=?, a1=0x1f4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1858 calls strncpy with a0=?, a1=sym(.rodata), a2=0x10, a3=?.
  The `jal` at 0x188c calls odsyLowLevelReset with a0=?, a1=?, a2=0x500, a3=0x400, a4=0x1f4, a5=-0x1.
  The `jal` at 0x1898 calls odsyGatherInfo with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x18a4 calls odsyMMinit with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18b4 calls odsyInitDBE with a0=?, a1=sym(odsy_default_timing1), a2=0x1, a3=?.
  The `jal` at 0x18c0 calls odsyGatherInfo with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0x1a7c calls printf with a0=sym(.rodata), a1=?, a2=0x4, a3=?.
  The `jal` at 0x1aa4 calls printf with a0=sym(.rodata), a1=?, a2=0x2, a3=?.
  The `jal` at 0x1ad0 calls printf with a0=sym(.rodata), a1=?, a2=0x80, a3=?.
  The `jal` at 0x1adc calls odsy_usdelay with a0=?, a1=0x190, a2=?, a3=?.
  The `jal` at 0x1b00 calls odsy_usdelay with a0=?, a1=0x190, a2=?, a3=?.
  The `jal` at 0x1b20 calls odsy_usdelay with a0=?, a1=0x190, a2=?, a3=?.
  The `jal` at 0x1b4c calls odsy_usdelay with a0=?, a1=0x190, a2=?, a3=?.
  The `beq` branch at 0x1a6c targets 0x1bf4, is taken when a1(?) == at(=0x2), and falls through when a1(?) != at(=0x2).
  The `beq` branch at 0x1a74 targets 0x1bb8, is taken when a0(?) == a2(=0x4), and falls through when a0(?) != a2(=0x4).
  The `beq` branch at 0x1a94 targets 0x1c08, is taken when a1(?) == a2(=0x2), and falls through when a1(?) != a2(=0x2).
  The `beq` branch at 0x1a9c targets 0x1bc8, is taken when a0(?) == at(=0x3), and falls through when a0(?) != at(=0x3).
  The `beq` branch at 0x1ab8 targets 0x1c18, is taken when a1(?) == v0(=0x20), and falls through when a1(?) != v0(=0x20).
  The `beq` branch at 0x1ac0 targets 0x1c2c, is taken when a0(?) == v1(=0x40), and falls through when a0(?) != v1(=0x40).
  The `beq` branch at 0x1ac8 targets 0x1bdc, is taken when a0(?) == a2(=0x80), and falls through when a0(?) != a2(=0x80).
  The `beq` branch at 0x1bc0 targets 0x1a84 and is always taken.
  The `beq` branch at 0x1bd4 targets 0x1aac and is always taken.
  The `beq` branch at 0x1bec targets 0x1ad8 and is always taken.
  The `beq` branch at 0x1c00 targets 0x1a84 and is always taken.
  The `beq` branch at 0x1c10 targets 0x1aac and is always taken.
  The `beq` branch at 0x1c24 targets 0x1ad8 and is always taken.
  The `beq` branch at 0x1c3c targets 0x1ad8 and is always taken.
  The return at 0x1bb0 has v0 = ?.
## `gfP_OdsySaveHwShadow` at `0xc0`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0xc0-0x4cc (1036 bytes).
  It occupies 1036 bytes.
  9 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xcc, `sw` at 0x148, `sw` at 0x260.
  The `ld` at 0xd4 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0xdc loads 8 bytes from [a0+72]:8 +0x70.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0xf4, `ld` at 0x280, `ld` at 0x290.
  4 such `lw` accesses load 4 bytes from [a0+32]:8 +0x2d8, including `lw` at 0x108, `lw` at 0x1bc, `lw` at 0x2fc.
  The `ld` at 0x124 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0x12c loads 8 bytes from [a1+112]:8 +0x70.
  8 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2d0, including `ld` at 0x154, `ld` at 0x1f0, `ld` at 0x228.
  7 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x15c, `ld` at 0x20c, `ld` at 0x21c.
  The `sw` at 0x194 stores 4 bytes to ?.
  The `sd` at 0x1a0 stores 8 bytes to table(0x118000) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1a8, `lw` at 0x31c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x1e0, `lw` at 0x350, `lw` at 0x3d8.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x1ec, `sw` at 0x35c, `sw` at 0x3e0.
  3 such `sw` accesses store 4 bytes to [a0+32]:8 +0x28a8, including `sw` at 0x214, `sw` at 0x384, `sw` at 0x4c0.
  3 such `sw` accesses store 4 bytes to [[a0+32]:8+736]:8 +0x107c, including `sw` at 0x218, `sw` at 0x388, `sw` at 0x4c8.
  2 such `lw` accesses load 4 bytes from [[a0+32]:8+736]:8 +0x106c, including `lw` at 0x220, `lw` at 0x390.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x284, `lw` at 0x2bc.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x28c, `sw` at 0x2c8.
  The `ld` at 0x294 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x298 loads 8 bytes from [a0+32]:8 +0x8.
  The `ld` at 0x29c loads 8 bytes from [a0+24]:8 +0x78.
  The `lw` at 0x48c loads 4 bytes from [a0+32]:8 +0x28a4.
  The `sw` at 0x4b0 stores 4 bytes to [a0+32]:8 +0x28a4.
  The `sw` at 0x4b4 stores 4 bytes to [[a0+32]:8+736]:8 +0x1074.
  The `jal` at 0xf8 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x160 calls odsy_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a4=a2 at entry (arg2), a5=[[a0+32]:8+736]:8.
  The `jal` at 0x19c calls timeout with a0=sym(odsy_ctxsw_timeout), a1=[a0+32]:8, a2=0x5dc, a3=?.
  The `jal` at 0x1b4 calls untimeout with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d4 calls splhi with a0=?, a1=?, a2=?, a3=?, a5=[[a0+32]:8+728].
  The `jal` at 0x1fc calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?.
  The `jal` at 0x22c calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=0x1, a3=[[a0+32]:8+736]:8.
  The `jal` at 0x23c calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2ac calls (unknown callee) with a0=[a0+32]:8, a1=[[a0+32]:8+8]:8, a2=[[a0+32]:8+8]:8, a3=[[a0+32]:8+8]:8, a4=a2 at entry (arg2).
  The `jal` at 0x310 calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x348 calls splhi with a0=?, a1=?, a2=?, a3=?, a5=[[a0+32]:8+728].
  The `jal` at 0x36c calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?.
  The `jal` at 0x39c calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x3ac calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3d0 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3f4 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?, a5=([a0+48] | 0x2).
  The `jal` at 0x404 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x428 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x45c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?, a4=a2 at entry (arg2).
  The `jal` at 0x480 calls gfx_flow_attach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x490 calls gfx_flow_credit_tnum_get with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a6=[[a0+32]:8+10404].
  The `beq` branch at 0xf0 targets 0x414, is taken when at(=[[a0+72]:8+112]:8) == 0, and falls through when at(=[[a0+72]:8+112]:8) != 0.
  The `bltz` branch at 0x100 targets 0x2dc, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `bne` branch at 0x10c targets 0x448, is taken when v1(=[[a0+32]:8+728]) != 0, and falls through when v1(=[[a0+32]:8+728]) == 0.
  The `bne` branch at 0x114 targets 0x280, is taken when a4(=a2) != 0, and falls through when a4(=a2) == 0.
  The `beq` branch at 0x11c targets 0x264, is taken when s2(=a1) == 0, and falls through when s2(=a1) != 0.
  The `bne` branch at 0x130 targets 0x154, is taken when a5(=[a1+112]:8) != 0, and falls through when a5(=[a1+112]:8) == 0.
  The `beq` branch at 0x16c targets 0x3d0, is taken when v0(=ret(odsy_flow_am_i_attached)) == 0, and falls through when v0(=ret(odsy_flow_am_i_attached)) != 0.
  The `beq` branch at 0x1ac targets 0x2fc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1c4 targets 0x33c, is taken when a5(=[[a0+32]:8+728]) == 0, and falls through when a5(=[[a0+32]:8+728]) != 0.
  The `beq` branch at 0x1cc targets 0x248, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1f4 targets 0x238, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x204 targets 0x238, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x25c targets 0x14c and is always taken.
  The `beq` branch at 0x278 targets 0x14c and is always taken.
  The `beq` branch at 0x2d4 targets 0x14c and is always taken.
  The `beq` branch at 0x2f4 targets 0x14c and is always taken.
  The `bne` branch at 0x300 targets 0x1b4, is taken when a5(=[[a0+32]:8+728]) != 0, and falls through when a5(=[[a0+32]:8+728]) == 0.
  The `bne` branch at 0x320 targets 0x334, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x32c targets 0x30c, is taken when v1(=[[a0+32]:8+728]) == 0, and falls through when v1(=[[a0+32]:8+728]) != 0.
  The `beq` branch at 0x334 targets 0x1b4 and is always taken.
  The `beq` branch at 0x340 targets 0x3b8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x364 targets 0x3a4, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x374 targets 0x3a8, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x3c8 targets 0x14c and is always taken.
  The `beq` branch at 0x3e8 targets 0x404, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x3fc targets 0x47c, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x40c targets 0x178 and is always taken.
  The `beq` branch at 0x440 targets 0x14c and is always taken.
  The `beq` branch at 0x474 targets 0x14c and is always taken.
  The `beq` branch at 0x4c4 targets 0x404 and is always taken.
  The return at 0x14c has v0 = one of 0x0, 0x1, 0xe, 0x16.
## `gf_OdsyDestroyDDRN` at `0x3cc`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`.
  Range: 0x3cc-0x600 (564 bytes).
  It occupies 564 bytes.
  The `ld` at 0x3d4 loads 8 bytes from a2 (arg2 at entry) +0x70.
  The `ld` at 0x3dc loads 8 bytes from a1 (arg1 at entry) +0x20.
  The `ld` at 0x3e4 loads 8 bytes from [a1+32]:8 +0x8.
  The `lw` at 0x404 loads 4 bytes from a0 (arg0 at entry) +0x2d8.
  The `lw` at 0x418 loads 4 bytes from a0 (arg0 at entry) +0x28e8.
  2 such `ld` accesses load 8 bytes from [a2+112]:8 +0x70, including `ld` at 0x428, `ld` at 0x4b4.
  The `lw` at 0x438 loads 4 bytes from ?.
  The `sh` at 0x444 stores 2 bytes to a0 (arg0 at entry) +0x2c4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2dc, including `lw` at 0x448, `lw` at 0x5b4.
  The `lw` at 0x44c loads 4 bytes from [a2+112]:8 +0x0.
  The `sw` at 0x458 stores 4 bytes to a0 (arg0 at entry) +0x2dc.
  The `lw` at 0x45c loads 4 bytes from a2 (arg2 at entry) +0x1c.
  The `lw` at 0x4a0 loads 4 bytes from [a2+112]:8 +0x130.
  The `sd` at 0x4ac stores 8 bytes to [a2+112]:8 +0x90.
  The `sd` at 0x4b0 stores 8 bytes to a2 (arg2 at entry) +0x70.
  The `lw` at 0x4cc loads 4 bytes from [a2+112]:8 +0xa4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1220, including `lw` at 0x4e0, `lw` at 0x520.
  The `ld` at 0x4ec loads 8 bytes from a0 (arg0 at entry) +0x2d0.
  The `sd` at 0x500 stores 8 bytes to a0 (arg0 at entry) +0x2d0.
  The `ld` at 0x508 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `sw` at 0x50c stores 4 bytes to a0 (arg0 at entry) +0x28a4.
  The `sw` at 0x510 stores 4 bytes to [a0+736]:8 +0x1074.
  The `sw` at 0x518 stores 4 bytes to [a2+112]:8 +0x0.
  The `sw` at 0x52c stores 4 bytes to a0 (arg0 at entry) +0x1220.
  The `ld` at 0x53c loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x540 loads 8 bytes from [a1]:8 +0x8.
  The `ld` at 0x54c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x584 stores 4 bytes to [a2+112]:8 +0x130.
  The `ld` at 0x58c loads 8 bytes from a1 (arg1 at entry) +0x18.
  The `ld` at 0x590 loads 8 bytes from [a1+24]:8 +0x78.
  The `jal` at 0x46c calls gf_OdsyUnSchedSwapBuf with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=[a2+28], a3=?, a5=[[a2+112]:8].
  The `jal` at 0x478 calls gf_OdsyUnSchedRetraceEvent with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0x4c4 calls kmem_free with a0=[[a2+112]:8+112]:8, a1=0x4000, a2=?, a3=?.
  The `jal` at 0x4d0 calls OdsyFree32kSlot with a0=a0+6112, a1=[[a2+112]:8+164], a2=?, a3=?.
  The `jal` at 0x4f8 calls gfx_flow_dealloc with a0=[a0+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x560 calls odsyDMAFinish with a0=a0 at entry (arg0), a1=[a2+112]:8, a2=?, a3=?, a5=[[a2+112]:8+304].
  The `jal` at 0x56c calls odsyMMdetach with a0=a1 at entry (arg1), a1=[a2+112]:8, a2=?, a3=?.
  The `jal` at 0x574 calls odsyUnpinAndUnmapGctxRegions with a0=[a2+112]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x5a0 calls (unknown callee) with a0=[a1+32]:8, a1=a2 at entry (arg2), a2=0x0, a3=[[a1+32]:8+8]:8, a5=[[a1+24]:8+120]:8.
  The `jal` at 0x5cc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x5e8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x3fc targets 0x448, is taken when a3(=[[a1+32]:8+8]:8) != a2, and falls through when a3(=[[a1+32]:8+8]:8) == a2.
  The `beq` branch at 0x408 targets 0x53c, is taken when at(=[a0+728]) == 0, and falls through when at(=[a0+728]) != 0.
  The `beq` branch at 0x410 targets 0x58c, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x43c targets 0x58c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x450 targets 0x45c, is taken when a5(=[[a2+112]:8]) != at(=[a0+732]), and falls through when a5(=[[a2+112]:8]) == at(=[a0+732]).
  The `bltz` branch at 0x460 targets 0x474, is taken when a2(=[a2+28]) < 0 (signed), and falls through when a2(=[a2+28]) >= 0 (signed).
  The `bne` branch at 0x490 targets 0x5b8, is taken when s0(=[a2+112]:8) < v1(=sym(ODSYddrn)) (unsigned), and falls through when s0(=[a2+112]:8) >= v1(=sym(ODSYddrn)) (unsigned).
  The `bne` branch at 0x498 targets 0x5b8, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x4a4 targets 0x560, is taken when a5(=[[a2+112]:8+304]) == 0, and falls through when a5(=[[a2+112]:8+304]) != 0.
  The `beq` branch at 0x4b8 targets 0x4cc, is taken when a0(=[[a2+112]:8+112]:8) == 0, and falls through when a0(=[[a2+112]:8+112]:8) != 0.
  The `bne` branch at 0x4e4 targets 0x518, is taken when at(=[a0+4640]) != v1(=0x1), and falls through when at(=[a0+4640]) == v1(=0x1).
  The `beq` branch at 0x4f0 targets 0x508, is taken when a0(=[a0+720]:8) == 0, and falls through when a0(=[a0+720]:8) != 0.
  The `beq` branch at 0x544 targets 0x410, is taken when v1(=[[a1]:8+8]:8) == a4(=a1), and falls through when v1(=[[a1]:8+8]:8) != a4(=a1).
  The `beq` branch at 0x550 targets 0x410, is taken when a4(=[a0]:8) == 0, and falls through when a4(=[a0]:8) != 0.
  The `beq` branch at 0x558 targets 0x410 and is always taken.
  The `beq` branch at 0x580 targets 0x4ac and is always taken.
  The `bne` branch at 0x5a8 targets 0x5e0, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x5b0 targets 0x44c and is always taken.
  The `beq` branch at 0x5d8 targets 0x534 and is always taken.
  The `beq` branch at 0x5f8 targets 0x448 and is always taken.
  The return at 0x534 has v0 = one of ?, 0x1.
  The instructions from 0x588 to 0x588 are not reached by any path from the entry, and their branches are not listed.
## `gfP_OdsySetDrawBuffer` at `0x55c`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0x55c-0x790 (564 bytes).
  It occupies 564 bytes.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x56c, `sw` at 0x684, `sw` at 0x758.
  The `ld` at 0x574 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x578 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x57c loads 8 bytes from [a0+72]:8 +0x70.
  5 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x588, `ld` at 0x628, `ld` at 0x638.
  The `sw` at 0x5b8 stores 4 bytes to [[a0+72]:8+112]:8 +0x1c8.
  6 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2d0, including `ld` at 0x5c8, `ld` at 0x60c, `ld` at 0x640.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x5fc, `lw` at 0x6a0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x608, `sw` at 0x6a8.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x28a8, including `sw` at 0x630, `sw` at 0x71c.
  2 such `sw` accesses store 4 bytes to [[a0+32]:8+736]:8 +0x107c, including `sw` at 0x634, `sw` at 0x724.
  The `lw` at 0x63c loads 4 bytes from [[a0+32]:8+736]:8 +0x106c.
  The `lw` at 0x6e8 loads 4 bytes from [a0+32]:8 +0x28a4.
  The `sw` at 0x70c stores 4 bytes to [a0+32]:8 +0x28a4.
  The `sw` at 0x710 stores 4 bytes to [[a0+32]:8+736]:8 +0x1074.
  The `jal` at 0x5a0 calls copyin with a0=a2 at entry (arg2), a1=sp-128, a2=0x4, a3=a3 at entry (arg3).
  The `jal` at 0x5b4 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x5c4 calls odsy_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x5dc calls odsyPushBufferSelect with a0=[[a0+72]:8+112]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x5f4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x618 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a4=-0x3.
  The `jal` at 0x648 calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?, a5=[[[a0+32]:8+736]:8+4204], a6=0x1, a7=[[a0+32]:8+736]:8.
  The `jal` at 0x658 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x698 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6b8 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=ret(splhi), a3=?.
  The `jal` at 0x6c8 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6dc calls gfx_flow_attach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x6ec calls gfx_flow_credit_tnum_get with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x73c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x770 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x590 targets 0x728, is taken when s1(=[[a0+72]:8+112]:8) == 0, and falls through when s1(=[[a0+72]:8+112]:8) != 0.
  The `bne` branch at 0x5a8 targets 0x75c, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `bltz` branch at 0x5bc targets 0x678, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `beq` branch at 0x5d0 targets 0x698, is taken when v0(=ret(odsy_flow_am_i_attached)) == 0, and falls through when v0(=ret(odsy_flow_am_i_attached)) != 0.
  The `beq` branch at 0x5ec targets 0x664, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x610 targets 0x650, is taken when a0(=[[a0+32]:8+720]:8) == 0, and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x620 targets 0x654, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x690 targets 0x670 and is always taken.
  The `beq` branch at 0x6b0 targets 0x6c8, is taken when a0(=[[a0+32]:8+720]:8) == 0, and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x6c0 targets 0x6d8, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x6d0 targets 0x5dc and is always taken.
  The `beq` branch at 0x720 targets 0x6c8 and is always taken.
  The `beq` branch at 0x754 targets 0x670 and is always taken.
  The `beq` branch at 0x788 targets 0x670 and is always taken.
  The return at 0x670 has v0 = one of 0x0, 0x1, 0xe.
## `odsyInitInterrupts` at `0x2030`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x2030-0x2320 (752 bytes).
  It occupies 752 bytes.
  12 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2044, `ld` at 0x2048, `ld` at 0x2094.
  25 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2054, `sw` at 0x2058, `sw` at 0x20b0.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2060, `lw` at 0x20d0, `lw` at 0x20f8.
  5 such `lh` accesses load 2 bytes from ?, including `lh` at 0x206c, `lh` at 0x2100, `lh` at 0x210c.
  The return at 0x2318 has v0 = ?.
## `odsyFlagInterrupt` at `0x11c`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Range: 0x11c-0x534 (1048 bytes).
  It occupies 1048 bytes.
  The `ld` at 0x124 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `lh` at 0x138 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x13c loads 4 bytes from [a0+736]:8 +0x1014.
  The `lw` at 0x140 loads 4 bytes from [a0+736]:8 +0x1034.
  The `lw` at 0x158 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `sw` at 0x164 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `sw` at 0x294 stores 4 bytes to ?.
  The `lw` at 0x49c loads 4 bytes from a0 (arg0 at entry) +0x56fc.
  The `sw` at 0x4a8 stores 4 bytes to a0 (arg0 at entry) +0x56fc.
  The `jal` at 0x16c calls odsyLowaterInterrupt with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19c calls odsyGenlockInterrupt with a0=a0 at entry (arg0), a1=0x40000000, a2=?, a3=?.
  The `jal` at 0x2a8 calls odsy_teardown with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2c8 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2e4 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x300 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x31c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x338 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x354 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x370 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x38c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3a8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3c4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3e0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3fc calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x418 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x434 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x450 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x46c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x488 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x4c0 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+22268]+1.
  The `jal` at 0x4dc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x4f8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x514 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x160 targets 0x178, is taken when (s1(?) & 0x200) == 0, and falls through when (s1(?) & 0x200) != 0.
  The `bne` branch at 0x180 targets 0x2c0, is taken when (s1(?) & v0(=0x2000000)) != 0, and falls through when (s1(?) & v0(=0x2000000)) == 0.
  The `beq` branch at 0x190 targets 0x1ac, is taken when (s1(?) & v1(=0xffffffff80000000)) == 0, and falls through when (s1(?) & v1(=0xffffffff80000000)) != 0.
  The `bne` branch at 0x1b0 targets 0x2d8, is taken when (s1(?) & a1(=0x40000000)) != 0, and falls through when (s1(?) & a1(=0x40000000)) == 0.
  The `bne` branch at 0x1bc targets 0x2f4, is taken when (s1(?) & at(=0x20000000)) != 0, and falls through when (s1(?) & at(=0x20000000)) == 0.
  The `bne` branch at 0x1c8 targets 0x310, is taken when (s1(?) & v0(=0x10000000)) != 0, and falls through when (s1(?) & v0(=0x10000000)) == 0.
  The `bne` branch at 0x1d4 targets 0x32c, is taken when (s1(?) & v1(=0x8000000)) != 0, and falls through when (s1(?) & v1(=0x8000000)) == 0.
  The `bne` branch at 0x1e0 targets 0x348, is taken when (s1(?) & a1(=0x1000000)) != 0, and falls through when (s1(?) & a1(=0x1000000)) == 0.
  The `bne` branch at 0x1ec targets 0x364, is taken when (s1(?) & at(=0x800000)) != 0, and falls through when (s1(?) & at(=0x800000)) == 0.
  The `bne` branch at 0x1f8 targets 0x380, is taken when (s1(?) & v0(=0x400000)) != 0, and falls through when (s1(?) & v0(=0x400000)) == 0.
  The `bne` branch at 0x204 targets 0x39c, is taken when (s1(?) & v1(=0x200000)) != 0, and falls through when (s1(?) & v1(=0x200000)) == 0.
  The `bne` branch at 0x210 targets 0x3b8, is taken when (s1(?) & a1(=0x100000)) != 0, and falls through when (s1(?) & a1(=0x100000)) == 0.
  The `bne` branch at 0x21c targets 0x3d4, is taken when (s1(?) & at(=0x40000)) != 0, and falls through when (s1(?) & at(=0x40000)) == 0.
  The `bne` branch at 0x22c targets 0x3f0, is taken when (s1(?) & v0(=0x3c000)) != 0, and falls through when (s1(?) & v0(=0x3c000)) == 0.
  The `bne` branch at 0x234 targets 0x40c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x23c targets 0x428, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x244 targets 0x444, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x24c targets 0x460, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x254 targets 0x47c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x25c targets 0x498, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x264 targets 0x4d0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x26c targets 0x4ec, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x274 targets 0x508, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x288 targets 0x2a0, is taken when (a1(?) & at(=0x39f02587)) != 0, and falls through when (a1(?) & at(=0x39f02587)) == 0.
  The `beq` branch at 0x298 targets 0x2b8 and is always taken.
  The `beq` branch at 0x2d0 targets 0x188 and is always taken.
  The `beq` branch at 0x2ec targets 0x1b4 and is always taken.
  The `beq` branch at 0x308 targets 0x1c0 and is always taken.
  The `beq` branch at 0x324 targets 0x1cc and is always taken.
  The `beq` branch at 0x340 targets 0x1d8 and is always taken.
  The `beq` branch at 0x35c targets 0x1e4 and is always taken.
  The `beq` branch at 0x378 targets 0x1f0 and is always taken.
  The `beq` branch at 0x394 targets 0x1fc and is always taken.
  The `beq` branch at 0x3b0 targets 0x208 and is always taken.
  The `beq` branch at 0x3cc targets 0x214 and is always taken.
  The `beq` branch at 0x3e8 targets 0x220 and is always taken.
  The `beq` branch at 0x404 targets 0x230 and is always taken.
  The `beq` branch at 0x420 targets 0x238 and is always taken.
  The `beq` branch at 0x43c targets 0x240 and is always taken.
  The `beq` branch at 0x458 targets 0x248 and is always taken.
  The `beq` branch at 0x474 targets 0x250 and is always taken.
  The `beq` branch at 0x490 targets 0x258 and is always taken.
  The `beq` branch at 0x4a4 targets 0x524, is taken when (s1(?) & 0x8) == 0, and falls through when (s1(?) & 0x8) != 0.
  The `beq` branch at 0x4c8 targets 0x260 and is always taken.
  The `beq` branch at 0x4e4 targets 0x268 and is always taken.
  The `beq` branch at 0x500 targets 0x270 and is always taken.
  The `beq` branch at 0x51c targets 0x278 and is always taken.
  The `beq` branch at 0x52c targets 0x4b8 and is always taken.
  The return at 0x2b8 has v0 = one of ?, ret(odsy_teardown).
## `odsyLLPReset` at `0x149c`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x149c-0x151c (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x149c loads 4 bytes from a0 (arg0 at entry) +0x56f0.
  The `ld` at 0x14a4 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `lw` at 0x14ac loads 4 bytes from [a0+736]:8 +0x24.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x14d8, `sw` at 0x1510.
  The `lw` at 0x14dc loads 4 bytes from a0 (arg0 at entry) +0x2c0.
  The `lw` at 0x14f0 loads 4 bytes from table(0x900000001000010c) +0x0.
  The `sw` at 0x1504 stores 4 bytes to table(0x9000000010000134) +0x0.
  The `jal` at 0x14bc calls xwidget_reset with a0=[a0+22256], a1=a1 at entry (arg1), a2=[a0+22256], a3=a3 at entry (arg3).
  The `jal` at 0x1500 calls odsy_usdelay with a0=a0 at entry (arg0), a1=0x2710, a2=table(0x9000000010000000), a3=entry(0x900000001000010c).
  The `beq` branch at 0x14b4 targets 0x14dc, is taken when a2(=[a0+22256]) == 0, and falls through when a2(=[a0+22256]) != 0.
  The `beq` branch at 0x1514 targets 0x14c8 and is always taken.
  The return at 0x14d4 has v0 = ?.
## `odsySwapBuffer` at `0x104`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0x104-0x330 (556 bytes).
  It occupies 556 bytes.
  The `lw` at 0x10c loads 4 bytes from a0 (arg0 at entry) +0x1280.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1260, including `lw` at 0x114, `lw` at 0x1a8.
  The `lw` at 0x11c loads 4 bytes from a0 (arg0 at entry) +0x127c.
  The `lw` at 0x12c loads 4 bytes from a0 (arg0 at entry) +0x1250.
  The `lw` at 0x13c loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lw` at 0x144 loads 4 bytes from ((((a1 << 0x2) + a1) << 0x3) + a0) +0x1294.
  The `lw` at 0x150 loads 4 bytes from ((((a1 << 0x2) + a1) << 0x3) + a0) +0x1298.
  The `ld` at 0x160 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1274, including `lw` at 0x17c, `lw` at 0x1a4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1268, including `lw` at 0x180, `lw` at 0x314.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x126c, including `lw` at 0x184, `lw` at 0x1c0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1268, including `sw` at 0x18c, `sw` at 0x320.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x126c, including `sw` at 0x194, `sw` at 0x224.
  2 such `sw` accesses store 4 bytes to ((((a1 << 0x2) + a1) << 0x3) + a0) +0x1298, including `sw` at 0x1a0, `sw` at 0x200.
  The `sw` at 0x1bc stores 4 bytes to [a0+736]:8 +0x10bc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1260, including `sw` at 0x1d8, `sw` at 0x2d4.
  The `lw` at 0x1dc loads 4 bytes from ((((a1 << 0x2) + a1) << 0x3) + a0) +0x12ac.
  3 such `sw` accesses store 4 bytes to ((((a1 << 0x2) + a1) << 0x3) + a0) +0x12ac, including `sw` at 0x1fc, `sw` at 0x204, `sw` at 0x30c.
  The `sw` at 0x240 stores 4 bytes to [a0+736]:8 +0x10c4.
  The `sw` at 0x24c stores 4 bytes to [a0+736]:8 +0x10cc.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2b4, `sw` at 0x2d0.
  The `lw` at 0x2dc loads 4 bytes from a0 (arg0 at entry) +0x1270.
  The `sw` at 0x2ec stores 4 bytes to a0 (arg0 at entry) +0x1270.
  The `sw` at 0x2fc stores 4 bytes to a0 (arg0 at entry) +0x1250.
  The `jal` at 0x26c calls odsyValidateBuffer with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `beq` branch at 0x168 targets 0x17c, is taken when at(=[a0+128]) >= v0(=[((((a1 << 0x2) + a1) << 0x3) + a0)+4756]) (unsigned), and falls through when at(=[a0+128]) < v0(=[((((a1 << 0x2) + a1) << 0x3) + a0)+4756]) (unsigned).
  The `beq` branch at 0x174 targets 0x310, is taken when (a4(?) & s4(=[a0+4736])) == 0, and falls through when (a4(?) & s4(=[a0+4736])) != 0.
  The `beq` branch at 0x1b4 targets 0x1c0, is taken when v1(=[a0+4704]) == s0(?), and falls through when v1(=[a0+4704]) != s0(?).
  The `beq` branch at 0x1d4 targets 0x214, is taken when (v0(?) & s1(?)) == 0, and falls through when (v0(?) & s1(?)) != 0.
  The `bne` branch at 0x1f8 targets 0x208, is taken when a2(=[((((a1 << 0x2) + a1) << 0x3) + a0)+4780]+1) < 0x12d (unsigned), and falls through when a2(=[((((a1 << 0x2) + a1) << 0x3) + a0)+4780]+1) >= 0x12d (unsigned).
  The `beq` branch at 0x220 targets 0x284, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x248 targets 0x25c and is always taken.
  The `beq` branch at 0x258 targets 0x27c, is taken when s6(?) >= 0x28 (signed), and falls through when s6(?) < 0x28 (signed).
  The `beq` branch at 0x264 targets 0x250, is taken when (v0(?) & s4(?)) == 0, and falls through when (v0(?) & s4(?)) != 0.
  The `beq` branch at 0x274 targets 0x250 and is always taken.
  The `beq` branch at 0x2a8 targets 0x2bc, is taken when (a0(?) & a1(?)) == 0, and falls through when (a0(?) & a1(?)) != 0.
  The `beq` branch at 0x2c8 targets 0x2d8, is taken when (a3(?) & at(?)) == 0, and falls through when (a3(?) & at(?)) != 0.
  The `beq` branch at 0x308 targets 0x208 and is always taken.
  The `beq` branch at 0x328 targets 0x208 and is always taken.
  The return at 0x20c has v0 = ?.
## `odsyDisableInterrupts` at `0x2320`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x2320-0x2380 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x2320 loads 4 bytes from a0 (arg0 at entry) +0x2878.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x2328, `ld` at 0x2360, `ld` at 0x2370.
  The `sw` at 0x2334 stores 4 bytes to a0 (arg0 at entry) +0x2878.
  The `sw` at 0x2338 stores 4 bytes to [a0+736]:8 +0x34.
  The `lw` at 0x2340 loads 4 bytes from a0 (arg0 at entry) +0x2894.
  The `sw` at 0x2368 stores 4 bytes to a0 (arg0 at entry) +0x2894.
  The `sw` at 0x236c stores 4 bytes to [a0+736]:8 +0x1044.
  The `sw` at 0x237c stores 4 bytes to [a0+736]:8 +0x103c.
  The return at 0x2378 has v0 = [a0+736]:8.
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
## `gf_OdsyInitialize` at `0xf7c`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0xf7c-0x141c (1184 bytes).
  It occupies 1184 bytes.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0xf7c, `ld` at 0x12b0, `ld` at 0x130c.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x1220, including `lw` at 0xf84, `lw` at 0x13f4.
  The `ld` at 0xfa0 loads 8 bytes from [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0xfb4, `lw` at 0x12b4.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0xfc8, `sw` at 0x12c4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0xfcc, `lw` at 0xfe8, `lw` at 0x1204.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0xff4, `sw` at 0x120c, `sw` at 0x1258.
  10 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2d0, including `ld` at 0xff8, `ld` at 0x1034, `ld` at 0x1060.
  12 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x1020, `ld` at 0x102c, `ld` at 0x10c8.
  3 such `sw` accesses store 4 bytes to [a0+32]:8 +0x28a8, including `sw` at 0x1024, `sw` at 0x127c, `sw` at 0x1388.
  3 such `sw` accesses store 4 bytes to [[a0+32]:8+736]:8 +0x107c, including `sw` at 0x1028, `sw` at 0x1280, `sw` at 0x1390.
  3 such `lw` accesses load 4 bytes from [[a0+32]:8+736]:8 +0x106c, including `lw` at 0x1030, `lw` at 0x1158, `lw` at 0x1288.
  3 such `sw` accesses store 4 bytes to [[a0+32]:8+736]:8 +0x1084, including `sw` at 0x10c4, `sw` at 0x10cc, `sw` at 0x10d4.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x28a4, including `sw` at 0x10dc, `sw` at 0x1378.
  2 such `sw` accesses store 4 bytes to [[a0+32]:8+736]:8 +0x1074, including `sw` at 0x10e0, `sw` at 0x137c.
  4 such `lh` accesses load 2 bytes from [a0+32]:8 +0x2be, including `lh` at 0x10ec, `lh` at 0x1120, `lh` at 0x11dc.
  The `lw` at 0x1144 loads 4 bytes from [a0+32]:8 +0x56f0.
  The `sd` at 0x1154 stores 8 bytes to [a0+32]:8 +0x2d0.
  The `ld` at 0x11b8 loads 8 bytes from [a0+32]:8 +0x2f0.
  The `sw` at 0x11bc stores 4 bytes to [a0+32]:8 +0x5700.
  The `sd` at 0x11c8 stores 8 bytes to [a0+32]:8 +0x5708.
  The `sh` at 0x11d4 stores 2 bytes to ([[a0+32]:8+752]:8 + (ret(OdsyAlloc32kSlot) + ret(OdsyAlloc32kSlot))) +0x0.
  The `sh` at 0x11e0 stores 2 bytes to [a0+32]:8 +0x2c4.
  The `sd` at 0x11e4 stores 8 bytes to [a0+32]:8 +0x5640.
  The `sd` at 0x11e8 stores 8 bytes to [a0+32]:8 +0x5628.
  The `sw` at 0x12ac stores 4 bytes to [a0+32]:8 +0x5720.
  The `sd` at 0x1310 stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0x1318, `lw` at 0x1330.
  The `lw` at 0x1354 loads 4 bytes from [a0+32]:8 +0x28a4.
  The `jal` at 0xfc4 calls htp_register_board with a0=0x0, a1=0x0, a2=0x0, a3=0x0, a5=[a0+32]:8.
  The `jal` at 0xfdc calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100c calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?.
  The `jal` at 0x103c calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?, a4=[[[a0+32]:8+736]:8+4204], a5=[[a0+32]:8+736]:8.
  The `jal` at 0x1054 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1078 calls gfx_flow_dealloc with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?.
  The `jal` at 0x10e8 calls odsyInitCfifo with a0=[[a0+32]:8+702]:2, a1=0x1, a2=[[a0+32]:8+736]:8, a3=?.
  The `jal` at 0x10fc calls gfx_flow_dealloc with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x111c calls odsyReset with a0=[[a0+32]:8+702]:2, a1=?, a2=?, a3=?.
  The `jal` at 0x1148 calls gfx_flow_alloc with a0=[[a0+32]:8+22256], a1=([[a0+32]:8+736]:8 | 0x100000), a2=0x1ffff, a3=0x800, a4=0x2710, a5=sym(odsyHiwaterInterrupt), a6=[a0+32]:8, a7=0x1.
  The `jal` at 0x116c calls us_delay with a0=0x5, a1=?, a2=[[a0+32]:8+736]:8, a3=?.
  The `jal` at 0x118c calls OdsyInit32kSlotMask with a0=[a0+32]:8+6112, a1=0x0, a2=?, a3=?.
  The `jal` at 0x11a4 calls OdsyAlloc32kSlot with a0=[a0+32]:8+6112, a1=?, a2=?, a3=?.
  The `jal` at 0x11ac calls OdsyAlloc32kSlot with a0=[a0+32]:8+6112, a1=?, a2=?, a3=?.
  The `jal` at 0x11d0 calls odsyInitMM with a0=[a0+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x11d8 calls odsyInitDMA with a0=[[a0+32]:8+702]:2, a1=?, a2=?, a3=?.
  The `jal` at 0x11ec calls odsyInitRetrace with a0=[a0+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x11f4 calls odsyInitInterrupts with a0=[[a0+32]:8+702]:2, a1=?, a2=?, a3=?.
  The `jal` at 0x11fc calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1220 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?.
  The `jal` at 0x1230 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1238 calls odsyZeroOut with a0=[a0+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1240 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1268 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?.
  The `jal` at 0x1294 calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=[[a0+32]:8+736]:8, a3=?.
  The `jal` at 0x12a0 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1304 calls psema with a0=[a0+32]:8+56, a1=0x219, a2=[[a0+32]:8+4640], a3=?, a5=[a0+32]:8.
  The `jal` at 0x1324 calls us_delay with a0=0x2, a1=?, a2=?, a3=?, a5=[a0+32]:8.
  The `jal` at 0x1348 calls gfx_flow_attach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1358 calls gfx_flow_credit_tnum_get with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x13ac calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[[a0+32]:8+4640], a3=?.
  The `jal` at 0x13c0 calls init_sema with a0=?, a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x13d0 calls timeout with a0=sym(odsy_init_ddrncount_timeout), a1=?, a2=0x1f4, a3=?.
  The `jal` at 0x13dc calls psema with a0=?, a1=0x19, a2=?, a3=?.
  The `bne` branch at 0xf98 targets 0x1394, is taken when a2(=[[a0+32]:8+4640]) != 0, and falls through when a2(=[[a0+32]:8+4640]) == 0.
  The `bne` branch at 0xfa4 targets 0x1300, is taken when at(=[[a0+32]:8+72]:8) != s7(=a0), and falls through when at(=[[a0+32]:8+72]:8) == s7(=a0).
  The `beq` branch at 0xfd4 targets 0x1064, is taken when (v1(=[a0+48]) & 0x3) == 0, and falls through when (v1(=[a0+48]) & 0x3) != 0.
  The `beq` branch at 0xffc targets 0x104c, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x1018 targets 0x1054, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x1044 targets 0x1054 and is always taken.
  The `beq` branch at 0x105c targets 0x1070 and is always taken.
  The `beq` branch at 0x1070 targets 0x1090, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x10bc targets 0x1118 and is always taken.
  The `beq` branch at 0x10f0 targets 0x1114, is taken when v0(=ret(odsyInitCfifo)) == 0, and falls through when v0(=ret(odsyInitCfifo)) != 0.
  The `beq` branch at 0x110c targets 0x12d8, is taken when s5(?) >= 0x5 (signed), and falls through when s5(?) < 0x5 (signed).
  The `beq` branch at 0x1114 targets 0x1184, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1164 targets 0x10c4, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `bne` branch at 0x1174 targets 0x1158, is taken when s6(?) != 0, and falls through when s6(?) == 0.
  The `beq` branch at 0x117c targets 0x10c4 and is always taken.
  The `beq` branch at 0x1214 targets 0x1230, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x1228 targets 0x1344, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x1260 targets 0x12a0, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x1270 targets 0x12a0, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x12f8 targets 0x12c8 and is always taken.
  The `beq` branch at 0x131c targets 0xfb0, is taken when a4(=[[a0+32]:8+104]) == 0, and falls through when a4(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0x1334 targets 0x1324, is taken when at(=[[a0+32]:8+104]) != 0, and falls through when at(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0x133c targets 0xfb0 and is always taken.
  The `beq` branch at 0x138c targets 0x1230 and is always taken.
  The `beq` branch at 0x13ec targets 0x1410, is taken when v0(?) >= 0xb (signed), and falls through when v0(?) < 0xb (signed).
  The `bne` branch at 0x13fc targets 0x13a4, is taken when a2(=[[a0+32]:8+4640]) != 0, and falls through when a2(=[[a0+32]:8+4640]) == 0.
  The `beq` branch at 0x1408 targets 0xfa0 and is always taken.
  The `beq` branch at 0x1414 targets 0x12c8 and is always taken.
  The return at 0x12d0 has v0 = one of ret(odsyInitCfifo), -0x1.
## `odsyRetraceHandler` at `0x11ec`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0x11ec-0x149c (688 bytes).
  It occupies 688 bytes.
  The `ld` at 0x1210 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `lw` at 0x1214 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x1218 loads 4 bytes from a0 (arg0 at entry) +0x1260.
  The `lw` at 0x121c loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `sw` at 0x1224 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x122c stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `ld` at 0x123c loads 8 bytes from a0 (arg0 at entry) +0x1258.
  The `sw` at 0x1248 stores 4 bytes to [a0+736]:8 +0x10bc.
  The `sw` at 0x124c stores 4 bytes to a0 (arg0 at entry) +0x1260.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1278, including `lw` at 0x1250, `lw` at 0x12d8.
  The `lw` at 0x1264 loads 4 bytes from [a0+736]:8 +0x10d4.
  The `lw` at 0x126c loads 4 bytes from a0 (arg0 at entry) +0x1250.
  The `sw` at 0x128c stores 4 bytes to a0 (arg0 at entry) +0x1278.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1264, including `sw` at 0x1294, `sw` at 0x1474.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x126c, including `lw` at 0x1298, `lw` at 0x13f4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1268, including `lw` at 0x129c, `lw` at 0x13f8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1270, including `lw` at 0x12a0, `lw` at 0x1328, `lw` at 0x142c.
  The `sw` at 0x12ac stores 4 bytes to a0 (arg0 at entry) +0x1268.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1270, including `sw` at 0x12b4, `sw` at 0x1444.
  The `sw` at 0x12bc stores 4 bytes to a0 (arg0 at entry) +0x126c.
  The `lw` at 0x12ec loads 4 bytes from a0 (arg0 at entry) +0x1274.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1264, including `lw` at 0x12f8, `lw` at 0x1464.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1314, `lw` at 0x1354.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1324, `sw` at 0x1364, `sw` at 0x1368.
  The `sw` at 0x1370 stores 4 bytes to [a0+736]:8 +0x10b4.
  The `sw` at 0x1378 stores 4 bytes to a0 (arg0 at entry) +0x1274.
  The `ld` at 0x1388 loads 8 bytes from a0 (arg0 at entry) +0x1788.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x139c, `ld` at 0x141c.
  The `sd` at 0x13a8 stores 8 bytes to a0 (arg0 at entry) +0x1788.
  The `ld` at 0x13b8 loads 8 bytes from a0 (arg0 at entry) +0x88.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc3a0, including `lh` at 0x13c4, `lh` at 0x145c.
  The `lw` at 0x13dc loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `sw` at 0x13f0 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `jal` at 0x120c calls mutex_lock with a0=a0+4664, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x12c0 calls odsyValidateBuffer with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+4728].
  The `jal` at 0x1374 calls sv_broadcast with a0=a0+4680, a1=?, a2=?, a3=?.
  The `jal` at 0x1394 calls rrmValidateRetrace with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x13b0 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x140c calls odsySwapBuffer with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+4720].
  The `jal` at 0x1440 calls odsyValidateBuffer with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+4720].
  The `jal` at 0x1450 calls rrmValidateVideoSync with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1478 calls odsySwapBuffer with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+4728].
  The `jal` at 0x148c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x1234 targets 0x1250, is taken when at(=[a0+4704]) == 0, and falls through when at(=[a0+4704]) != 0.
  The `bne` branch at 0x1240 targets 0x1250, is taken when v1(=[a0+4696]:8) != 0, and falls through when v1(=[a0+4696]:8) == 0.
  The `beq` branch at 0x1254 targets 0x1388, is taken when a3(=[a0+4728]) == 0, and falls through when a3(=[a0+4728]) != 0.
  The `beq` branch at 0x127c targets 0x12d8 and is always taken.
  The `beq` branch at 0x12d0 targets 0x1374, is taken when s2(?) >= 0x20 (signed), and falls through when s2(?) < 0x20 (signed).
  The `beq` branch at 0x12e4 targets 0x12c8, is taken when (s1(?) & a4(=[a0+4728])) == 0, and falls through when (s1(?) & a4(=[a0+4728])) != 0.
  The `bne` branch at 0x12f4 targets 0x1284, is taken when (v1(=[a0+4724]) & s1(?)) != 0, and falls through when (v1(=[a0+4724]) & s1(?)) == 0.
  The `beq` branch at 0x1300 targets 0x1328, is taken when (s1(?) & a2(=[a0+4708])) == 0, and falls through when (s1(?) & a2(=[a0+4708])) != 0.
  The `beq` branch at 0x1320 targets 0x1460, is taken when at(?) >= 0x12d (unsigned), and falls through when at(?) < 0x12d (unsigned).
  The `beq` branch at 0x1340 targets 0x13f4, is taken when (s1(?) & a4(=[a0+4720])) == 0, and falls through when (s1(?) & a4(=[a0+4720])) != 0.
  The `beq` branch at 0x134c targets 0x141c, is taken when (s1(?) & s4(?)) == 0, and falls through when (s1(?) & s4(?)) != 0.
  The `bne` branch at 0x1360 targets 0x12c8, is taken when a3(?) < 0x2 (unsigned), and falls through when a3(?) >= 0x2 (unsigned).
  The `beq` branch at 0x136c targets 0x12c8 and is always taken.
  The `beq` branch at 0x138c targets 0x13a8, is taken when s1(=[a0+6024]:8) == 0, and falls through when s1(=[a0+6024]:8) != 0.
  The `bne` branch at 0x13a0 targets 0x1394, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `bne` branch at 0x13bc targets 0x1450, is taken when at(=[a0+136]:8) != 0, and falls through when at(=[a0+136]:8) == 0.
  The `beq` branch at 0x1404 targets 0x12c8, is taken when (a3(=([a0+4712] | [a0+4716])) & s1(?)) == 0, and falls through when (a3(=([a0+4712] | [a0+4716])) & s1(?)) != 0.
  The `beq` branch at 0x1414 targets 0x12cc and is always taken.
  The `beq` branch at 0x1420 targets 0x1434, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1448 targets 0x12cc and is always taken.
  The `beq` branch at 0x1458 targets 0x13c8 and is always taken.
  The `beq` branch at 0x1494 targets 0x132c and is always taken.
  The return at 0x13ec has v0 = [([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5))+16]+1.
## `gf_OdsySchedSwapBuf` at `0x330`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0x330-0x780 (1104 bytes).
  It occupies 1104 bytes.
  The `ld` at 0x330 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0x340 loads 8 bytes from a1 (arg1 at entry) +0x78.
  The `ld` at 0x35c loads 8 bytes from a1 (arg1 at entry) +0x40.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x36c, `ld` at 0x410, `ld` at 0x41c.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2d0, including `ld` at 0x3a0, `ld` at 0x3ec, `ld` at 0x424.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x3dc, `lw` at 0x548, `lw` at 0x604.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x3e8, `sw` at 0x4fc, `sw` at 0x570.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x28a8, including `sw` at 0x414, `sw` at 0x730.
  2 such `sw` accesses store 4 bytes to [a0+736]:8 +0x107c, including `sw` at 0x418, `sw` at 0x738.
  The `lw` at 0x420 loads 4 bytes from [a0+736]:8 +0x106c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1278, including `lw` at 0x480, `lw` at 0x4d0, `lw` at 0x508.
  The `ld` at 0x49c loads 8 bytes from ((((a2 << 0x2) + a2) << 0x3) + a0) +0x12a0.
  The `lw` at 0x4e4 loads 4 bytes from a0 (arg0 at entry) +0x1260.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x1258, including `ld` at 0x4f0, `ld` at 0x55c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1260, including `sw` at 0x504, `sw` at 0x574.
  The `sw` at 0x514 stores 4 bytes to a0 (arg0 at entry) +0x1278.
  The `ld` at 0x51c loads 8 bytes from [a1+120]:8 +0xa0.
  The `ld` at 0x528 loads 8 bytes from [a1+120]:8 +0xa8.
  The `lw` at 0x538 loads 4 bytes from [[a1+120]:8+168]:8 +0x14.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x53c, `ld` at 0x598.
  The `sd` at 0x590 stores 8 bytes to ((((a2 << 0x2) + a2) << 0x3) + a0) +0x1288.
  The `sd` at 0x594 stores 8 bytes to ((((a2 << 0x2) + a2) << 0x3) + a0) +0x12a0.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x59c, `lhu` at 0x62c.
  The `sh` at 0x5a0 stores 2 bytes to ((((a2 << 0x2) + a2) << 0x3) + a0) +0x1290.
  The `sw` at 0x5a4 stores 4 bytes to ((((a2 << 0x2) + a2) << 0x3) + a0) +0x1298.
  2 such `sw` accesses store 4 bytes to ((((a2 << 0x2) + a2) << 0x3) + a0) +0x12ac, including `sw` at 0x5a8, `sw` at 0x644.
  The `lw` at 0x5ac loads 4 bytes from [a1+120]:8 +0x1c.
  2 such `lw` accesses load 4 bytes from [a1+120]:8 +0x18, including `lw` at 0x5b0, `lw` at 0x5c0.
  2 such `sw` accesses store 4 bytes to ((((a2 << 0x2) + a2) << 0x3) + a0) +0x1294, including `sw` at 0x5b8, `sw` at 0x5dc.
  The `lw` at 0x5bc loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lw` at 0x5c4 loads 4 bytes from ((((a2 << 0x2) + a2) << 0x3) + a0) +0x1294.
  The `lw` at 0x5e4 loads 4 bytes from a0 (arg0 at entry) +0x127c.
  The `lh` at 0x5e8 loads 2 bytes from [a1+120]:8 +0x12.
  The `sw` at 0x5f8 stores 4 bytes to a0 (arg0 at entry) +0x127c.
  The `lw` at 0x600 loads 4 bytes from a0 (arg0 at entry) +0x1280.
  The `sw` at 0x614 stores 4 bytes to a0 (arg0 at entry) +0x1280.
  The `ld` at 0x61c loads 8 bytes from a0 (arg0 at entry) +0x2f0.
  The `lhu` at 0x628 loads 2 bytes from ((((a2 << 0x2) + a2) << 0x3) + a0) +0x1290.
  The `lw` at 0x638 loads 4 bytes from a0 (arg0 at entry) +0x1264.
  The `sw` at 0x640 stores 4 bytes to a0 (arg0 at entry) +0x1264.
  The `lw` at 0x6fc loads 4 bytes from a0 (arg0 at entry) +0x28a4.
  The `sw` at 0x720 stores 4 bytes to a0 (arg0 at entry) +0x28a4.
  The `sw` at 0x724 stores 4 bytes to [a0+736]:8 +0x1074.
  The `jal` at 0x39c calls odsy_flow_am_i_attached with a0=[a0+720]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3b4 calls odsyPushBufferSelect with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3cc calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3fc calls gfx_flow_am_i_attached with a0=[a0+720]:8, a1=?, a2=ret(splhi), a3=?.
  The `jal` at 0x42c calls gfx_flow_detach_me with a0=[a0+720]:8, a1=?, a2=[a0+736]:8, a3=?.
  The `jal` at 0x444 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x46c calls mutex_lock with a0=a0+4664, a1=0x19, a2=?, a3=?.
  The `jal` at 0x4bc calls sv_wait with a0=a0+4680, a1=0x19, a2=a0+4664, a3=0x0.
  The `jal` at 0x4c8 calls mutex_lock with a0=a0+4664, a1=0x19, a2=?, a3=?.
  The `jal` at 0x65c calls mutex_unlock with a0=a0+4664, a1=?, a2=?, a3=?.
  The `jal` at 0x67c calls odsySwapBuffer with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=[((((a2 << 0x2) + a2) << 0x3) + a0)+4752]:2.
  The `jal` at 0x68c calls rrmValidateBuffer with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=[[a1+120]:8+160]:8.
  The `jal` at 0x6a4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6cc calls gfx_flow_am_i_attached with a0=[a0+720]:8, a1=?, a2=ret(splhi), a3=?.
  The `jal` at 0x6dc calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6f0 calls gfx_flow_attach_me with a0=[a0+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x700 calls gfx_flow_credit_tnum_get with a0=[a0+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x75c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=?, a4=[((((a2 << 0x2) + a2) << 0x3) + a0)+4768]:8.
  The `jal` at 0x768 calls mutex_unlock with a0=a0+4664, a1=?, a2=?, a3=?.
  The `bne` branch at 0x374 targets 0x398, is taken when a2 < 0x20 (signed), and falls through when a2 >= 0x20 (signed).
  The `beq` branch at 0x3a8 targets 0x6a4, is taken when v0(=ret(odsy_flow_am_i_attached)) == 0, and falls through when v0(=ret(odsy_flow_am_i_attached)) != 0.
  The `beq` branch at 0x3c4 targets 0x454, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x3f0 targets 0x43c, is taken when a0(=[a0+720]:8) == 0, and falls through when a0(=[a0+720]:8) != 0.
  The `beq` branch at 0x408 targets 0x444, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x434 targets 0x444 and is always taken.
  The `beq` branch at 0x44c targets 0x460 and is always taken.
  The `bltz` branch at 0x478 targets 0x4e4, is taken when s5(=a2) < 0 (signed), and falls through when s5(=a2) >= 0 (signed).
  The `beq` branch at 0x488 targets 0x4e4, is taken when (a3(=[a0+4728]) & s4(?)) == 0, and falls through when (a3(=[a0+4728]) & s4(?)) != 0.
  The `bne` branch at 0x4a0 targets 0x73c, is taken when a4(=[((((a2 << 0x2) + a2) << 0x3) + a0)+4768]:8) != 0, and falls through when a4(=[((((a2 << 0x2) + a2) << 0x3) + a0)+4768]:8) == 0.
  The `bne` branch at 0x4d8 targets 0x4b4, is taken when (s4(?) & at(=[a0+4728])) != 0, and falls through when (s4(?) & at(=[a0+4728])) == 0.
  The `beq` branch at 0x4e8 targets 0x508, is taken when a6(=[a0+4704]) == 0, and falls through when a6(=[a0+4704]) != 0.
  The `bne` branch at 0x4f4 targets 0x508, is taken when v1(=[a0+4696]:8) != 0, and falls through when v1(=[a0+4696]:8) == 0.
  The `bltz` branch at 0x510 targets 0x51c, is taken when s5(=a2) < 0 (signed), and falls through when s5(=a2) >= 0 (signed).
  The `beq` branch at 0x520 targets 0x694, is taken when a5(=[[a1+120]:8+160]:8) == 0, and falls through when a5(=[[a1+120]:8+160]:8) != 0.
  The `beq` branch at 0x52c targets 0x55c, is taken when s3(=[a1+120]:8) == v0(=[[a1+120]:8+168]:8), and falls through when s3(=[a1+120]:8) != v0(=[[a1+120]:8+168]:8).
  The `beq` branch at 0x534 targets 0x54c and is always taken.
  The `beq` branch at 0x540 targets 0x55c, is taken when s3(=[a1+120]:8) == v0(?), and falls through when s3(=[a1+120]:8) != v0(?).
  The `bltz` branch at 0x54c targets 0x53c, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `beq` branch at 0x554 targets 0x53c and is always taken.
  The `bne` branch at 0x560 targets 0x578, is taken when v1(=[a0+4696]:8) != a5(=[[a1+120]:8+160]:8), and falls through when v1(=[a0+4696]:8) == a5(=[[a1+120]:8+160]:8).
  The `beq` branch at 0x568 targets 0x578, is taken when a6(?) == s1(?), and falls through when a6(?) != s1(?).
  The `bltz` branch at 0x578 targets 0x68c, is taken when s5(=a2) < 0 (signed), and falls through when s5(=a2) >= 0 (signed).
  The `beq` branch at 0x5d4 targets 0x5e4, is taken when a0(=([[a1+120]:8+24] + [a0+128])) >= a4(=[((((a2 << 0x2) + a2) << 0x3) + a0)+4756]) (unsigned), and falls through when a0(=([[a1+120]:8+24] + [a0+128])) < a4(=[((((a2 << 0x2) + a2) << 0x3) + a0)+4756]) (unsigned).
  The `beq` branch at 0x630 targets 0x674, is taken when v1(?) == a3(=[((((a2 << 0x2) + a2) << 0x3) + a0)+4752]:2), and falls through when v1(?) != a3(=[((((a2 << 0x2) + a2) << 0x3) + a0)+4752]:2).
  The `beq` branch at 0x66c targets 0x390 and is always taken.
  The `beq` branch at 0x684 targets 0x64c and is always taken.
  The `bltz` branch at 0x694 targets 0x648, is taken when s5(=a2) < 0 (signed), and falls through when s5(=a2) >= 0 (signed).
  The `beq` branch at 0x69c targets 0x580 and is always taken.
  The `beq` branch at 0x6c4 targets 0x6dc, is taken when a0(=[a0+720]:8) == 0, and falls through when a0(=[a0+720]:8) != 0.
  The `beq` branch at 0x6d4 targets 0x6ec, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x6e4 targets 0x3b4 and is always taken.
  The `beq` branch at 0x734 targets 0x6dc and is always taken.
  The `beq` branch at 0x778 targets 0x390 and is always taken.
  The return at 0x390 has v0 = one of 0x0, 0x10, 0x16.
## `gf_OdsyUnSchedSwapBuf` at `0x87c`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0x87c-0xa14 (408 bytes).
  It occupies 408 bytes.
  The `ld` at 0x888 loads 8 bytes from a0 (arg0 at entry) +0x20.
  3 such `lw` accesses load 4 bytes from [a0+32]:8 +0x1278, including `lw` at 0x8b0, `lw` at 0x978, `lw` at 0x9dc.
  The `lw` at 0x8d8 loads 4 bytes from [a0+32]:8 +0x1274.
  The `sw` at 0x8e0 stores 4 bytes to [a0+32]:8 +0x1274.
  2 such `lw` accesses load 4 bytes from ((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8) +0x1298, including `lw` at 0x8e4, `lw` at 0x92c.
  The `lw` at 0x8f0 loads 4 bytes from [a0+32]:8 +0x126c.
  The `sw` at 0x8f8 stores 4 bytes to [a0+32]:8 +0x126c.
  The `lw` at 0x910 loads 4 bytes from ?.
  The `sw` at 0x918 stores 4 bytes to ?.
  The `sw` at 0x948 stores 4 bytes to ((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8) +0x1298.
  The `lw` at 0x94c loads 4 bytes from [a0+32]:8 +0x1260.
  The `ld` at 0x960 loads 8 bytes from [a0+32]:8 +0x2e0.
  The `sw` at 0x964 stores 4 bytes to [a0+32]:8 +0x1260.
  The `sw` at 0x968 stores 4 bytes to [[a0+32]:8+736]:8 +0x10bc.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x2d8, including `lw` at 0x96c, `lw` at 0x9d0.
  The `ld` at 0x990 loads 8 bytes from sym(.data) +0x8.
  The `ld` at 0x99c loads 8 bytes from sym(.data) +0x0.
  The `jal` at 0x8a4 calls mutex_lock with a0=[a0+32]:8+4664, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x9bc calls sv_timedwait with a0=?, a1=0x19, a2=[a0+32]:8+4664, a3=0x0, a4=0x0, a5=sp-96, a6=0x0.
  The `jal` at 0x9c8 calls mutex_lock with a0=[a0+32]:8+4664, a1=0x19, a2=?, a3=?.
  The `jal` at 0x9f8 calls mutex_unlock with a0=[a0+32]:8+4664, a1=?, a2=?, a3=?.
  The `beq` branch at 0x8d0 targets 0x9ec, is taken when (at(=[[a0+32]:8+4728]) & s2(?)) == 0, and falls through when (at(=[[a0+32]:8+4728]) & s2(?)) != 0.
  The `beq` branch at 0x8e8 targets 0x94c, is taken when v0(=[((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8)+4760]) == s2(?), and falls through when v0(=[((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8)+4760]) != s2(?).
  The `beq` branch at 0x8fc targets 0x92c and is always taken.
  The `beq` branch at 0x924 targets 0x948, is taken when a0(?) >= 0x20 (signed), and falls through when a0(?) < 0x20 (signed).
  The `beq` branch at 0x938 targets 0x91c, is taken when (a1(=[((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8)+4760]) & at(?)) == 0, and falls through when (a1(=[((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8)+4760]) & at(?)) != 0.
  The `beq` branch at 0x940 targets 0x904 and is always taken.
  The `beq` branch at 0x958 targets 0x96c, is taken when (s2(?) & a0(=[[a0+32]:8+4704])) == 0, and falls through when (s2(?) & a0(=[[a0+32]:8+4704])) != 0.
  The `bne` branch at 0x970 targets 0x9ec, is taken when a1(=[[a0+32]:8+728]) != 0, and falls through when a1(=[[a0+32]:8+728]) == 0.
  The `beq` branch at 0x980 targets 0x9ec, is taken when (at(=[[a0+32]:8+4728]) & s2(?)) == 0, and falls through when (at(=[[a0+32]:8+4728]) & s2(?)) != 0.
  The `bne` branch at 0x9d4 targets 0x9ec, is taken when a1(=[[a0+32]:8+728]) != 0, and falls through when a1(=[[a0+32]:8+728]) == 0.
  The `bne` branch at 0x9e4 targets 0x990, is taken when (at(=[[a0+32]:8+4728]) & s2(?)) != 0, and falls through when (at(=[[a0+32]:8+4728]) & s2(?)) == 0.
  The return at 0xa0c has v0 = 0x0.
## `gf_OdsySchedMGRSwapBuf` at `0xfe0`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0xfe0-0x11dc (508 bytes).
  It occupies 508 bytes.
  The `ld` at 0xff0 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x1028 loads 4 bytes from [a0+32]:8 +0x1260.
  The `ld` at 0x1034 loads 8 bytes from [a0+32]:8 +0x1258.
  The `ld` at 0x1040 loads 8 bytes from [a0+32]:8 +0x2e0.
  The `sw` at 0x1048 stores 4 bytes to [[a0+32]:8+736]:8 +0x10bc.
  The `sw` at 0x104c stores 4 bytes to [a0+32]:8 +0x1260.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x1278, including `lw` at 0x1054, `lw` at 0x11c4.
  The `sw` at 0x106c stores 4 bytes to [a0+32]:8 +0x1278.
  The `ld` at 0x107c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x1088 loads 8 bytes from [a0+72]:8 +0x70.
  The `sd` at 0x108c stores 8 bytes to ((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8) +0x1288.
  The `sd` at 0x1090 stores 8 bytes to ((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8) +0x12a0.
  2 such `ld` accesses load 8 bytes from ((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8) +0x1288, including `ld` at 0x1094, `ld` at 0x10ec.
  The `ld` at 0x109c loads 8 bytes from [((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8)+4744]:8 +0x60.
  The `lhu` at 0x10a4 loads 2 bytes from [[((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8)+4744]:8+96]:8 +0x2b3c.
  The `sh` at 0x10a8 stores 2 bytes to ((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8) +0x1290.
  The `sw` at 0x10ac stores 4 bytes to ((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8) +0x12a8.
  The `sw` at 0x10b0 stores 4 bytes to ((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8) +0x1294.
  The `sw` at 0x10b4 stores 4 bytes to ((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8) +0x12ac.
  The `sw` at 0x10b8 stores 4 bytes to ((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8) +0x1298.
  The `lw` at 0x10c4 loads 4 bytes from [a0+32]:8 +0x1280.
  The `lw` at 0x10cc loads 4 bytes from [a0+32]:8 +0x127c.
  The `sw` at 0x10dc stores 4 bytes to [a0+32]:8 +0x1280.
  The `sw` at 0x10e8 stores 4 bytes to [a0+32]:8 +0x127c.
  The `lw` at 0x10f0 loads 4 bytes from [((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8)+4744]:8 +0xa4.
  The `ld` at 0x10f4 loads 8 bytes from [a0+32]:8 +0x2f0.
  The `lhu` at 0x10fc loads 2 bytes from ((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8) +0x1290.
  The `lhu` at 0x1104 loads 2 bytes from ([[a0+32]:8+752]:8 + ([[((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8)+4744]:8+164] + [[((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8)+4744]:8+164])) +0x0.
  The `lw` at 0x1110 loads 4 bytes from [a0+32]:8 +0x1264.
  The `sw` at 0x111c stores 4 bytes to [a0+32]:8 +0x1264.
  The `jal` at 0x1020 calls mutex_lock with a0=[a0+32]:8+4664, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1128 calls mutex_unlock with a0=[a0+32]:8+4664, a1=?, a2=?, a3=?.
  The `jal` at 0x1148 calls odsySwapBuffer with a0=[a0+32]:8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0x1170 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1194 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x11b0 calls sv_wait with a0=?, a1=0x19, a2=[a0+32]:8+4664, a3=0x0.
  The `jal` at 0x11bc calls mutex_lock with a0=[a0+32]:8+4664, a1=0x19, a2=?, a3=?.
  The `bltz` branch at 0xff4 targets 0x115c, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `beq` branch at 0x100c targets 0x115c, is taken when s1(=a2) >= 0x21 (signed), and falls through when s1(=a2) < 0x21 (signed).
  The `beq` branch at 0x102c targets 0x1050, is taken when v1(=[[a0+32]:8+4704]) == 0, and falls through when v1(=[[a0+32]:8+4704]) != 0.
  The `bne` branch at 0x1038 targets 0x1050, is taken when a3(=[[a0+32]:8+4696]:8) != 0, and falls through when a3(=[[a0+32]:8+4696]:8) == 0.
  The `bne` branch at 0x1064 targets 0x1188, is taken when (s4(?) & v0(=[[a0+32]:8+4728])) != 0, and falls through when (s4(?) & v0(=[[a0+32]:8+4728])) == 0.
  The `beq` branch at 0x1108 targets 0x1144, is taken when at(=[([[a0+32]:8+752]:8 + ([[((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8)+4744]:8+164] + [[((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8)+4744]:8+164]))]:2) == v1(=[((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8)+4752]:2), and falls through when at(=[([[a0+32]:8+752]:8 + ([[((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8)+4744]:8+164] + [[((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8)+4744]:8+164]))]:2) != v1(=[((((a2 << 0x2) + a2) << 0x3) + [a0+32]:8)+4752]:2).
  The `beq` branch at 0x1154 targets 0x1128 and is always taken.
  The `beq` branch at 0x1180 targets 0x113c and is always taken.
  The `bne` branch at 0x11cc targets 0x11a8, is taken when (s4(?) & v0(=[[a0+32]:8+4728])) != 0, and falls through when (s4(?) & v0(=[[a0+32]:8+4728])) == 0.
  The `beq` branch at 0x11d4 targets 0x106c and is always taken.
  The return at 0x113c has v0 = one of 0x0, 0x16.
## `gf_OdsySchedMGRSwapBuf` at `0x1124`
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_retrace.o)`.
  Range: 0x1124-0x130c (488 bytes).
  It occupies 488 bytes.
  The `ld` at 0x112c loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x1170 loads 4 bytes from [a0+40]:8 +0x6f80.
  The `ld` at 0x1180 loads 8 bytes from [a0+40]:8 +0x6f78.
  The `ld` at 0x118c loads 8 bytes from [a0+40]:8 +0x338.
  The `sw` at 0x1190 stores 4 bytes to [[a0+40]:8+824]:8 +0x10bc.
  The `sw` at 0x1198 stores 4 bytes to [a0+40]:8 +0x6f80.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x6f98, including `lw` at 0x119c, `lw` at 0x12f4.
  The `sw` at 0x11b0 stores 4 bytes to [a0+40]:8 +0x6f98.
  The `ld` at 0x11bc loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x11c8 loads 8 bytes from [a0+72]:8 +0x70.
  The `sd` at 0x11cc stores 8 bytes to ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fa8.
  The `sd` at 0x11d0 stores 8 bytes to ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fc0.
  2 such `ld` accesses load 8 bytes from ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fa8, including `ld` at 0x11d4, `ld` at 0x122c.
  The `ld` at 0x11dc loads 8 bytes from [([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8 +0xb0.
  The `lhu` at 0x11e4 loads 2 bytes from [[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8+176]:8 +0x2b3c.
  The `sh` at 0x11e8 stores 2 bytes to ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fb0.
  The `sw` at 0x11ec stores 4 bytes to ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fc8.
  The `sw` at 0x11f0 stores 4 bytes to ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fb4.
  The `sw` at 0x11f4 stores 4 bytes to ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fcc.
  The `sw` at 0x11fc stores 4 bytes to ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fb8.
  The `lw` at 0x1204 loads 4 bytes from [a0+40]:8 +0x6fa0.
  The `lw` at 0x120c loads 4 bytes from [a0+40]:8 +0x6f9c.
  The `sw` at 0x1220 stores 4 bytes to [a0+40]:8 +0x6fa0.
  The `sw` at 0x1228 stores 4 bytes to [a0+40]:8 +0x6f9c.
  The `lw` at 0x1230 loads 4 bytes from [([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8 +0xf4.
  The `ld` at 0x1234 loads 8 bytes from [a0+40]:8 +0x370.
  The `lhu` at 0x123c loads 2 bytes from ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fb0.
  The `lhu` at 0x1244 loads 2 bytes from ([[a0+40]:8+880]:8 + ([[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8+244] + [[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8+244])) +0x0.
  The `lw` at 0x1250 loads 4 bytes from [a0+40]:8 +0x6f84.
  The `sw` at 0x1258 stores 4 bytes to [a0+40]:8 +0x6f84.
  2 such `lh` accesses load 2 bytes from [a0+40]:8 +0x316, including `lh` at 0x12a0, `lh` at 0x12c0.
  The `jal` at 0x1168 calls mutex_lock with a0=[a0+40]:8+28504, a1=0x19, a2=a2 at entry (arg2), a3=a4 at entry (arg4).
  The `jal` at 0x125c calls mutex_unlock with a0=[a0+40]:8+28504, a1=?, a2=?, a3=?.
  The `jal` at 0x1284 calls odsySwapBuffer with a0=[a0+40]:8, a1=a2 at entry (arg2), a2=[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28592]:2, a3=([[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8+244] + [[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8+244]), a5=[[a0+40]:8+28576].
  The `jal` at 0x12a4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[[a0+40]:8+790]:2, a3=a2 at entry (arg2).
  The `jal` at 0x12c4 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=[[a0+40]:8+790]:2, a3=a2 at entry (arg2).
  The `jal` at 0x12e0 calls sv_wait with a0=?, a1=0x19, a2=[a0+40]:8+28504, a3=0x0.
  The `jal` at 0x12ec calls mutex_lock with a0=[a0+40]:8+28504, a1=0x19, a2=?, a3=?.
  The `bltz` branch at 0x1144 targets 0x1294, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `beq` branch at 0x1158 targets 0x1294, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1178 targets 0x119c, is taken when at(=[[a0+40]:8+28544]) == 0, and falls through when at(=[[a0+40]:8+28544]) != 0.
  The `bne` branch at 0x1184 targets 0x119c, is taken when v0(=[[a0+40]:8+28536]:8) != 0, and falls through when v0(=[[a0+40]:8+28536]:8) == 0.
  The `bne` branch at 0x11a4 targets 0x12b4, is taken when (s2(?) & v0(=[[a0+40]:8+28568])) != 0, and falls through when (s2(?) & v0(=[[a0+40]:8+28568])) == 0.
  The `beq` branch at 0x1248 targets 0x1284, is taken when a1(=[([[a0+40]:8+880]:8 + ([[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8+244] + [[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8+244]))]:2) == a2(=[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28592]:2), and falls through when a1(=[([[a0+40]:8+880]:8 + ([[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8+244] + [[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8+244]))]:2) != a2(=[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28592]:2).
  The `beq` branch at 0x128c targets 0x125c and is always taken.
  The `beq` branch at 0x12ac targets 0x126c and is always taken.
  The `bne` branch at 0x12fc targets 0x12d8, is taken when (s2(?) & v0(=[[a0+40]:8+28568])) != 0, and falls through when (s2(?) & v0(=[[a0+40]:8+28568])) == 0.
  The `beq` branch at 0x1304 targets 0x11ac and is always taken.
  The return at 0x127c has v0 = one of 0x0, 0x16.
## `gf_OdsyUnSchedSwapBuf` at `0x980`
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_retrace.o)`.
  Range: 0x980-0xb28 (424 bytes).
  It occupies 424 bytes.
  The `ld` at 0x988 loads 8 bytes from a0 (arg0 at entry) +0x28.
  3 such `lw` accesses load 4 bytes from [a0+40]:8 +0x6f98, including `lw` at 0x9bc, `lw` at 0xa78, `lw` at 0xa90.
  The `lw` at 0x9e4 loads 4 bytes from [a0+40]:8 +0x6f94.
  The `sw` at 0x9ec stores 4 bytes to [a0+40]:8 +0x6f94.
  2 such `lw` accesses load 4 bytes from ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fb8, including `lw` at 0x9f0, `lw` at 0xa10.
  The `lw` at 0xa00 loads 4 bytes from [a0+40]:8 +0x6f8c.
  The `sw` at 0xa08 stores 4 bytes to [a0+40]:8 +0x6f8c.
  The `lw` at 0xa34 loads 4 bytes from ?.
  The `sw` at 0xa3c stores 4 bytes to ?.
  The `sw` at 0xa48 stores 4 bytes to ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fb8.
  The `lw` at 0xa4c loads 4 bytes from [a0+40]:8 +0x6f80.
  The `ld` at 0xa5c loads 8 bytes from [a0+40]:8 +0x338.
  The `sw` at 0xa60 stores 4 bytes to [a0+40]:8 +0x6f80.
  The `sw` at 0xa64 stores 4 bytes to [[a0+40]:8+824]:8 +0x10bc.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x330, including `lw` at 0xa6c, `lw` at 0xadc.
  The `ld` at 0xaa8 loads 8 bytes from sym(.data) +0x0.
  The `ld` at 0xab4 loads 8 bytes from sym(.data) +0x8.
  The `jal` at 0x9b0 calls mutex_lock with a0=[a0+40]:8+28504, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xac8 calls sv_timedwait with a0=[a0+40]:8+28520, a1=0x19, a2=[a0+40]:8+28504, a3=0x0, a4=0x0, a5=sp-64, a6=0x0.
  The `jal` at 0xad4 calls mutex_lock with a0=[a0+40]:8+28504, a1=0x19, a2=?, a3=?.
  The `jal` at 0xaec calls mutex_unlock with a0=[a0+40]:8+28504, a1=?, a2=?, a3=?.
  The `jal` at 0xb18 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x99c targets 0xb10, is taken when a2 >= 0x20 (signed), and falls through when a2 < 0x20 (signed).
  The `beq` branch at 0x9dc targets 0xae8, is taken when (s1(?) & v1(=[[a0+40]:8+28568])) == 0, and falls through when (s1(?) & v1(=[[a0+40]:8+28568])) != 0.
  The `beq` branch at 0x9f8 targets 0xa4c, is taken when s1(?) == a1(=[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28600]), and falls through when s1(?) != a1(=[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28600]).
  The `beq` branch at 0xa2c targets 0xa40, is taken when (t1(=[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28600]) & t2(?)) == 0, and falls through when (t1(=[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28600]) & t2(?)) != 0.
  The `bne` branch at 0xa40 targets 0xa10, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0xa54 targets 0xa6c, is taken when (s1(?) & v0(=[[a0+40]:8+28544])) == 0, and falls through when (s1(?) & v0(=[[a0+40]:8+28544])) != 0.
  The `bne` branch at 0xa70 targets 0xae8, is taken when t9(=[[a0+40]:8+816]) != 0, and falls through when t9(=[[a0+40]:8+816]) == 0.
  The `beq` branch at 0xa80 targets 0xae8, is taken when (s1(?) & ra(=[[a0+40]:8+28568])) == 0, and falls through when (s1(?) & ra(=[[a0+40]:8+28568])) != 0.
  The `beq` branch at 0xa88 targets 0xaa0 and is always taken.
  The `beq` branch at 0xa98 targets 0xae8, is taken when (s1(?) & at(=[[a0+40]:8+28568])) == 0, and falls through when (s1(?) & at(=[[a0+40]:8+28568])) != 0.
  The `beq` branch at 0xae0 targets 0xa90, is taken when a0(=[[a0+40]:8+816]) == 0, and falls through when a0(=[[a0+40]:8+816]) != 0.
  The `beq` branch at 0xb20 targets 0xafc and is always taken.
  The return at 0xb08 has v0 = one of 0x0, 0x16.
## `odsyInitPfRgn` at `0x610`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x610-0x6c8 (184 bytes).
  It occupies 184 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2848, including `ld` at 0x610, `ld` at 0x670.
  The `sd` at 0x648 stores 8 bytes to a0 (arg0 at entry) +0x2848.
  The `sw` at 0x664 stores 4 bytes to a0 (arg0 at entry) +0x2840.
  The `sw` at 0x678 stores 4 bytes to a0 (arg0 at entry) +0x28c8.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x680, `ld` at 0x694.
  The `sw` at 0x688 stores 4 bytes to a0 (arg0 at entry) +0x28c4.
  The `sw` at 0x68c stores 4 bytes to [a0+736]:8 +0x401c.
  The `lw` at 0x698 loads 4 bytes from a0 (arg0 at entry) +0x28c8.
  The `sw` at 0x6a0 stores 4 bytes to [a0+736]:8 +0x4024.
  The `jal` at 0x638 calls kmem_zalloc with a0=0x4000, a1=0x8800, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x660 calls odsyPinAndMapPfStatRegions with a0=a0 at entry (arg0), a1=?, a2=?, a3=a1 at entry (arg1).
  The `jal` at 0x66c calls kvtophys with a0=[a0+10312]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x6a8 calls printf with a0=sym(.rodata), a1=?, a2=?, a3=?.
  The `jal` at 0x6b4 calls mutex_unlock with a0=a0+10336, a1=?, a2=?, a3=?.
  The `beq` branch at 0x61c targets 0x630, is taken when at(=[a0+10312]:8) == 0, and falls through when at(=[a0+10312]:8) != 0.
  The `beq` branch at 0x644 targets 0x6a4, is taken when v0(=ret(kmem_zalloc)) == 0, and falls through when v0(=ret(kmem_zalloc)) != 0.
  The `beq` branch at 0x69c targets 0x624 and is always taken.
  The `beq` branch at 0x6c0 targets 0x628 and is always taken.
  The return at 0x628 has v0 = one of 0x0, 0x1.
## `odsyDestroyPfRgn` at `0x6c8`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x6c8-0x738 (112 bytes).
  It occupies 112 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2848, including `ld` at 0x6c8, `ld` at 0x6fc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2840, including `lw` at 0x6dc, `lw` at 0x6f4.
  The `sw` at 0x700 stores 4 bytes to a0 (arg0 at entry) +0x28c8.
  The `sw` at 0x704 stores 4 bytes to a0 (arg0 at entry) +0x28c4.
  The `sd` at 0x708 stores 8 bytes to a0 (arg0 at entry) +0x2850.
  The `sd` at 0x70c stores 8 bytes to a0 (arg0 at entry) +0x2848.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x710, `ld` at 0x720.
  The `sw` at 0x714 stores 4 bytes to a0 (arg0 at entry) +0x2840.
  The `sw` at 0x718 stores 4 bytes to [a0+736]:8 +0x401c.
  The `lw` at 0x724 loads 4 bytes from a0 (arg0 at entry) +0x28c8.
  The `sw` at 0x728 stores 4 bytes to [a0+736]:8 +0x4024.
  The `jal` at 0x6ec calls odsyUnpinAndUnmapPfStatRegions with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6f8 calls kmem_free with a0=[a0+10312]:8, a1=[a0+10304], a2=?, a3=?.
  The `beq` branch at 0x6d4 targets 0x72c, is taken when at(=[a0+10312]:8) == 0, and falls through when at(=[a0+10312]:8) != 0.
  The `beq` branch at 0x6e0 targets 0x72c, is taken when v0(=[a0+10304]) == 0, and falls through when v0(=[a0+10304]) != 0.
  The return at 0x730 has v0 = one of ?, [a0+10304], ret(kmem_free).
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
## `odsyPrintRegs` at `0x3538`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x3538-0x358c (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x3548 loads 4 bytes from a0 (arg0 at entry) +0x1064.
  The `lw` at 0x354c loads 4 bytes from a0 (arg0 at entry) +0x1014.
  The `jal` at 0x3558 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=[a0+4116], a3=sym(flag_desc).
  The `jal` at 0x3574 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=[a0+4196], a3=sym(flag_desc).
  The return at 0x3584 has v0 = ret(cmn_err).
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
## `odsyConfigFb` at `0x6ec`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`.
  Range: 0x6ec-0xef4 (2056 bytes).
  It occupies 2056 bytes.
  10 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x6ec, `lw` at 0x794, `lw` at 0x7a8.
  8 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0x708, `lw` at 0x7a0, `lw` at 0x7c0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x734, `lw` at 0x78c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0x764, `lw` at 0xa08.
  The `sw` at 0x788 stores 4 bytes to a0 (arg0 at entry) +0x4d0.
  The `sb` at 0x790 stores 1 byte to a0 (arg0 at entry) +0x4a9.
  The `sw` at 0x798 stores 4 bytes to a0 (arg0 at entry) +0x4b8.
  The `sw` at 0x7a4 stores 4 bytes to a0 (arg0 at entry) +0x4bc.
  The `sw` at 0x7bc stores 4 bytes to a0 (arg0 at entry) +0x4c4.
  The `sw` at 0x7cc stores 4 bytes to a0 (arg0 at entry) +0x4b4.
  The `sw` at 0x7d8 stores 4 bytes to a0 (arg0 at entry) +0x4b0.
  The `sd` at 0x7e4 stores 8 bytes to a0 (arg0 at entry) +0x7d8.
  The `sw` at 0x7ec stores 4 bytes to a0 (arg0 at entry) +0x4ac.
  The `sw` at 0x7f4 stores 4 bytes to a0 (arg0 at entry) +0x4c0.
  The `sw` at 0x808 stores 4 bytes to a0 (arg0 at entry) +0x4c8.
  The `sw` at 0x81c stores 4 bytes to a0 (arg0 at entry) +0x558.
  The `sb` at 0x820 stores 1 byte to a0 (arg0 at entry) +0x531.
  The `sw` at 0x828 stores 4 bytes to a0 (arg0 at entry) +0x540.
  The `sw` at 0x830 stores 4 bytes to a0 (arg0 at entry) +0x544.
  The `sw` at 0x848 stores 4 bytes to a0 (arg0 at entry) +0x54c.
  The `sw` at 0x854 stores 4 bytes to a0 (arg0 at entry) +0x53c.
  The `sw` at 0x85c stores 4 bytes to a0 (arg0 at entry) +0x538.
  The `sd` at 0x86c stores 8 bytes to a0 (arg0 at entry) +0x7e0.
  The `sw` at 0x870 stores 4 bytes to a0 (arg0 at entry) +0x534.
  The `sw` at 0x87c stores 4 bytes to a0 (arg0 at entry) +0x548.
  The `sw` at 0x890 stores 4 bytes to a0 (arg0 at entry) +0x550.
  The `sd` at 0x8b0 stores 8 bytes to a0 (arg0 at entry) +0x7e8.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x8c0, `lw` at 0x9a8.
  10 such `sw` accesses store 4 bytes to ?, including `sw` at 0x8fc, `sw` at 0x940, `sw` at 0x954.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x904, `sd` at 0x948.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x94c, `sb` at 0x9b4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xfc, including `lw` at 0x9e0, `lw` at 0xa40.
  The `sw` at 0x9f0 stores 4 bytes to a0 (arg0 at entry) +0x3c0.
  The `sw` at 0xa0c stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `lw` at 0xa10 loads 4 bytes from a0 (arg0 at entry) +0x558.
  The `sw` at 0xa14 stores 4 bytes to a1 (arg1 at entry) +0x1c.
  The `sw` at 0xa20 stores 4 bytes to a1 (arg1 at entry) +0x20.
  The `sw` at 0xa28 stores 4 bytes to a1 (arg1 at entry) +0x28.
  The `sw` at 0xa2c stores 4 bytes to a1 (arg1 at entry) +0x14.
  The `sw` at 0xa30 stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `sw` at 0xa3c stores 4 bytes to a1 (arg1 at entry) +0x24.
  The `sw` at 0xa48 stores 4 bytes to a1 (arg1 at entry) +0x2c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5720, including `lw` at 0xa4c, `lw` at 0xa74, `lw` at 0xb28.
  11 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0xa5c, `ld` at 0xbcc, `ld` at 0xc68.
  The `lwu` at 0xabc loads 4 bytes from a0 (arg0 at entry) +0x558.
  14 such `sd` accesses store 8 bytes to [a0+736]:8 +0x400000, including `sd` at 0xad8, `sd` at 0xaf4, `sd` at 0xb00.
  The `lwu` at 0xae0 loads 4 bytes from a0 (arg0 at entry) +0x4d0.
  The `sh` at 0xb38 stores 2 bytes to a0 (arg0 at entry) +0xe8.
  The `sh` at 0xb44 stores 2 bytes to a0 (arg0 at entry) +0x2ce.
  The `sh` at 0xb50 stores 2 bytes to a0 (arg0 at entry) +0xea.
  The `sh` at 0xb54 stores 2 bytes to a0 (arg0 at entry) +0x2c8.
  The `sh` at 0xb58 stores 2 bytes to a0 (arg0 at entry) +0x2c6.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2828, including `ld` at 0xba8, `ld` at 0xc40, `ld` at 0xd24.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x55f0, including `lw` at 0xc8c, `lw` at 0xce0, `lw` at 0xd34.
  4 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x2830, including `lhu` at 0xc90, `lhu` at 0xcec, `lhu` at 0xdc0.
  8 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x55f0, including `sw` at 0xcbc, `sw` at 0xd0c, `sw` at 0xd60.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x2828, including `sd` at 0xd78, `sd` at 0xea8.
  The `jal` at 0xa64 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xa, a2=?, a3=?.
  The `jal` at 0xb4c calls bzero with a0=a0+710, a1=0x8, a2=[a1+4], a3=[a1].
  The `jal` at 0xba0 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=?.
  The `jal` at 0xbbc calls mutex_spinunlock with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8.
  The `jal` at 0xbc8 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0xbd8 calls vsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0xc08 calls psema with a0=a0+10256, a1=0x19, a2=([a0+252] << 0x14), a3=?, a4=-0x2.
  The `jal` at 0xc18 calls vsema with a0=a0+10256, a1=?, a2=?, a3=[a0+10280]:8.
  The `jal` at 0xc28 calls mutex_spinunlock with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xc38 calls mutex_spinlock with a0=a0+10272, a1=[a0+22304], a2=?, a3=[a0+736]:8+0x400000, a4=0x3a02400100000000.
  The `jal` at 0xc58 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8.
  The `jal` at 0xc64 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0xc74 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc84 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=?.
  The `jal` at 0xd88 calls mutex_spinunlock with a0=a0+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a5=([a0+22000] | 0x2).
  The `jal` at 0xd98 calls vsema with a0=a0+10256, a1=?, a2=?, a3=[a0+10280]:8.
  The `jal` at 0xda4 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xdb4 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xec0 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=([a0+22000] | 0x2).
  The `jal` at 0xee0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=-0x2.
  The `beq` branch at 0x74c targets 0xaa0, is taken when s3(=[a1+8]) == at(=0x20), and falls through when s3(=[a1+8]) != at(=0x20).
  The `beq` branch at 0x754 targets 0xb74, is taken when s3(=[a1+8]) == v1(=0x10), and falls through when s3(=[a1+8]) != v1(=0x10).
  The `beq` branch at 0x75c targets 0xbec, is taken when s3(=[a1+8]) == a2(=0x8), and falls through when s3(=[a1+8]) != a2(=0x8).
  The `beq` branch at 0x770 targets 0x784, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `beq` branch at 0x804 targets 0x818, is taken when (a1(?) & 0x3) == 0, and falls through when (a1(?) & 0x3) != 0.
  The `beq` branch at 0x88c targets 0x8a0, is taken when (a0(?) & 0x3) == 0, and falls through when (a0(?) & 0x3) != 0.
  The `beq` branch at 0x8ac targets 0x8c0, is taken when (t2(?) & 0x3) == 0, and falls through when (t2(?) & 0x3) != 0.
  The `beq` branch at 0x8c4 targets 0xa98, is taken when s3(=[a1+12]) == 0, and falls through when s3(=[a1+12]) != 0.
  The `beq` branch at 0x8cc targets 0xb6c, is taken when s2(=0x1) == s3(=[a1+12]), and falls through when s2(=0x1) != s3(=[a1+12]).
  The `beq` branch at 0x8d4 targets 0xb94, is taken when a7(=0x2) == s3(=[a1+12]), and falls through when a7(=0x2) != s3(=[a1+12]).
  The `bne` branch at 0x900 targets 0x8dc, is taken when a0(?) < 0x4 (signed), and falls through when a0(?) >= 0x4 (signed).
  The `beq` branch at 0x90c targets 0x9b8, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x9b0 targets 0x91c, is taken when a0(?) < a7(?) (unsigned), and falls through when a0(?) >= a7(?) (unsigned).
  The `beq` branch at 0x9c8 targets 0x9dc, is taken when (a1(?) & 0x3) == 0, and falls through when (a1(?) & 0x3) != 0.
  The `beq` branch at 0xa00 targets 0xed0, is taken when a3(?) >= at(=([a0+252] << 0x14)) (unsigned), and falls through when a3(?) < at(=([a0+252] << 0x14)) (unsigned).
  The `beq` branch at 0xa58 targets 0xc04, is taken when v1(=[a0+22304]) == 0, and falls through when v1(=[a0+22304]) != 0.
  The `beq` branch at 0xa6c targets 0xab4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xa78 targets 0xb9c, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `beq` branch at 0xa98 targets 0x8dc and is always taken.
  The `beq` branch at 0xaac targets 0x764 and is always taken.
  The `beq` branch at 0xb2c targets 0xc38, is taken when a1(=[a0+22304]) == 0, and falls through when a1(=[a0+22304]) != 0.
  The `beq` branch at 0xb64 targets 0xa84 and is always taken.
  The `beq` branch at 0xb6c targets 0x8dc and is always taken.
  The `beq` branch at 0xb8c targets 0x764 and is always taken.
  The `beq` branch at 0xb94 targets 0x8dc and is always taken.
  The `beq` branch at 0xbb0 targets 0xc18, is taken when a3(=[a0+10280]:8) == 0, and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` branch at 0xbd0 targets 0xc84, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xbe4 targets 0xa80 and is always taken.
  The `beq` branch at 0xbfc targets 0x764 and is always taken.
  The `beq` branch at 0xc10 targets 0xa64 and is always taken.
  The `beq` branch at 0xc30 targets 0xa80 and is always taken.
  The `beq` branch at 0xc48 targets 0xd98, is taken when a3(=[a0+10280]:8) == 0, and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` branch at 0xc6c targets 0xdb4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xc7c targets 0xb38 and is always taken.
  The `beq` branch at 0xca4 targets 0xd1c, is taken when 0 >= a0(?) (unsigned), and falls through when 0 < a0(?) (unsigned).
  The `beq` branch at 0xd2c targets 0xd6c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xd90 targets 0xbd8 and is always taken.
  The `beq` branch at 0xdac targets 0xb38 and is always taken.
  The `beq` branch at 0xdd4 targets 0xe54, is taken when 0 >= a4(?) (unsigned), and falls through when 0 < a4(?) (unsigned).
  The `beq` branch at 0xe64 targets 0xea4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xec8 targets 0xc74 and is always taken.
  The `beq` branch at 0xeec targets 0xa84 and is always taken.
  The return at 0xa90 has v0 = one of -0x1, 0x0.
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
## `gf_OdsyStart` at `0x141c`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x141c-0x149c (128 bytes).
  It occupies 128 bytes.
  The `ld` at 0x1424 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0x1430 stores 4 bytes to [a0+32]:8 +0x2dc.
  The `sh` at 0x1438 stores 2 bytes to [a0+32]:8 +0x2c4.
  The `sw` at 0x143c stores 4 bytes to [a0+32]:8 +0x2d8.
  The `sw` at 0x1440 stores 4 bytes to [a0+32]:8 +0x54.
  The `sw` at 0x1444 stores 4 bytes to [a0+32]:8 +0x78.
  The `sw` at 0x1448 stores 4 bytes to [a0+32]:8 +0x68.
  The `sw` at 0x144c stores 4 bytes to [a0+32]:8 +0x10.
  The `sd` at 0x1450 stores 8 bytes to [a0+32]:8 +0x8.
  The `ld` at 0x1460 loads 8 bytes from [a0+32]:8 +0x2f0.
  The `sw` at 0x1464 stores 4 bytes to [a0+32]:8 +0x28d4.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x1468, `ld` at 0x1484.
  The `sw` at 0x1474 stores 4 bytes to [a0+32]:8 +0x28d0.
  The `sw` at 0x1478 stores 4 bytes to [[a0+32]:8+736]:8 +0x4034.
  The `lw` at 0x1480 loads 4 bytes from [a0+32]:8 +0x28d4.
  The `sw` at 0x1498 stores 4 bytes to [[a0+32]:8+736]:8 +0x403c.
  The `jal` at 0x1454 calls odsyInitDrawables with a0=[a0+32]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x145c calls kvtophys with a0=[[a0+32]:8+752]:8, a1=?, a2=?, a3=?.
  The return at 0x1494 has v0 = 0x0.
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
## `gfP_OdsyPerfStat` at `0x738`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`.
  Range: 0x738-0x938 (512 bytes).
  It occupies 512 bytes.
  The `ld` at 0x744 loads 8 bytes from a0 (arg0 at entry) +0x20.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x75c, `sw` at 0x844, `sw` at 0x904.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2848, including `ld` at 0x7ac, `ld` at 0x7fc.
  The `ld` at 0x7d8 loads 8 bytes from [a0+32]:8 +0x2850.
  The `ld` at 0x8c4 loads 8 bytes from [a0+32]:8 +0x2e0.
  The `sw` at 0x8d0 stores 4 bytes to [a0+32]:8 +0x28cc.
  The `sw` at 0x8d8 stores 4 bytes to [[a0+32]:8+736]:8 +0x402c.
  The `jal` at 0x760 calls copyin with a0=a2 at entry (arg2), a1=sp-112, a2=0x18, a3=a3 at entry (arg3).
  The `jal` at 0x798 calls mutex_lock with a0=[a0+32]:8+10336, a1=0x19, a2=?, a3=?, a4=0x5.
  The `jal` at 0x7c8 calls odsyInitPfRgn with a0=[a0+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x7e0 calls copyout with a0=sp-112, a1=a2 at entry (arg2), a2=0x18, a3=[[a0+32]:8+10320]:8.
  The `jal` at 0x808 calls odsyDestroyPfRgn with a0=[a0+32]:8, a1=?, a2=?, a3=?, a5=[[a0+32]:8+10312]:8.
  The `jal` at 0x814 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x82c calls odsyDestroyPfRgn with a0=[a0+32]:8, a1=?, a2=?, a3=?, a5=[[a0+32]:8+10312]:8.
  The `jal` at 0x8e8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=0x5.
  The `jal` at 0x918 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x76c targets 0x8dc, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x788 targets 0x83c, is taken when v1(?) == a4(=0x5), and falls through when v1(?) != a4(=0x5).
  The `beq` branch at 0x7a4 targets 0x7f0, is taken when (s1(?) & 0x1) == 0, and falls through when (s1(?) & 0x1) != 0.
  The `bne` branch at 0x7b0 targets 0x82c, is taken when a5(=[[a0+32]:8+10312]:8) != 0, and falls through when a5(=[[a0+32]:8+10312]:8) == 0.
  The `bne` branch at 0x7e8 targets 0x908, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0x7f4 targets 0x854, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x800 targets 0x810, is taken when a5(=[[a0+32]:8+10312]:8) == 0, and falls through when a5(=[[a0+32]:8+10312]:8) != 0.
  The `beq` branch at 0x834 targets 0x7b8 and is always taken.
  The `beq` branch at 0x84c targets 0x824 and is always taken.
  The `beq` branch at 0x858 targets 0x810, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x8d4 targets 0x810 and is always taken.
  The `beq` branch at 0x900 targets 0x824 and is always taken.
  The `beq` branch at 0x930 targets 0x824 and is always taken.
  The return at 0x824 has v0 = one of -0x1, 0x0, 0xe.
## `odsyLowLevelReset` at `0x151c`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x151c-0x1800 (740 bytes).
  It occupies 740 bytes.
  The `lw` at 0x1528 loads 4 bytes from abs 0x9000000010000004.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2874, including `lw` at 0x153c, `lw` at 0x1768, `lw` at 0x1784.
  The `lw` at 0x156c loads 4 bytes from abs 0x900000001000007c.
  The `sw` at 0x1584 stores 4 bytes to abs 0x900000001000007c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1590, `lw` at 0x15c0, `lw` at 0x15d0.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1598, `sw` at 0x174c.
  The `lw` at 0x1600 loads 4 bytes from abs 0x9000000010000024.
  2 such `sw` accesses store 4 bytes to abs 0x9000000010000024, including `sw` at 0x164c, `sw` at 0x1754.
  The `lw` at 0x1650 loads 4 bytes from table(0x900000001000010c) +0x0.
  The `sw` at 0x1708 stores 4 bytes to table(0x900000001000010c) +0x0.
  6 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2888, including `sw` at 0x1710, `sw` at 0x1728, `sw` at 0x173c.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x171c, `ld` at 0x1758, `ld` at 0x1764.
  3 such `sw` accesses store 4 bytes to [a0+736]:8 +0x100c, including `sw` at 0x1734, `sw` at 0x17c4, `sw` at 0x17d8.
  The `lw` at 0x175c loads 4 bytes from a0 (arg0 at entry) +0x2884.
  2 such `sw` accesses store 4 bytes to [a0+736]:8 +0x1004, including `sw` at 0x1760, `sw` at 0x177c.
  2 such `sw` accesses store 4 bytes to [a0+736]:8 +0x24, including `sw` at 0x176c, `sw` at 0x1788.
  The `sw` at 0x1778 stores 4 bytes to a0 (arg0 at entry) +0x2884.
  The `jal` at 0x1730 calls odsy_usdelay with a0=a0 at entry (arg0), a1=0x30d40, a2=?, a3=0x9000000010000024, a4=table(0x9000000010000000), a5=0x200, a7=[a0+736]:8.
  The `jal` at 0x17c0 calls us_delay with a0=0x30d40, a1=0x30d40, a2=?, a3=0x9000000010000024, a4=table(0x9000000010000000), a5=0x9000000010000000, a7=[a0+736]:8.
  The `jal` at 0x17d4 calls odsyLLPReset with a0=a0 at entry (arg0), a1=[a0+736]:8, a2=?, a3=?.
  The `jal` at 0x17e0 calls odsy_usdelay with a0=a0 at entry (arg0), a1=0x3e8, a2=?, a3=?.
  The `beq` branch at 0x1564 targets 0x17f8, is taken when t0(=0x4) >= at(?) (unsigned), and falls through when t0(=0x4) < at(?) (unsigned).
  The `beq` branch at 0x1580 targets 0x15ac and is always taken.
  The `beq` branch at 0x15a4 targets 0x15fc, is taken when a0(?) >= 0x10 (signed), and falls through when a0(?) < 0x10 (signed).
  The `beq` branch at 0x15ac targets 0x159c, is taken when a6(?) == a0(?), and falls through when a6(?) != a0(?).
  The `beq` branch at 0x15c8 targets 0x159c, is taken when (a2(?) & a4(=0xffffffff80000000)) == 0, and falls through when (a2(?) & a4(=0xffffffff80000000)) != 0.
  The `beq` branch at 0x15d8 targets 0x159c, is taken when (at(?) & 0x20) == 0, and falls through when (at(?) & 0x20) != 0.
  The `bne` branch at 0x15e0 targets 0x1798, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x15ec targets 0x179c, is taken when a0(?) >= 0x10 (signed), and falls through when a0(?) < 0x10 (signed).
  The `beq` branch at 0x15f4 targets 0x1588 and is always taken.
  The `beq` branch at 0x1718 targets 0x17a4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x179c targets 0x1590 and is always taken.
  The `beq` branch at 0x17f0 targets 0x1748 and is always taken.
  The `beq` branch at 0x17f8 targets 0x15fc and is always taken.
  The return at 0x1790 has v0 = 0x400000.
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
## `gfP_OdsyHPqueryBestAttrib` at `0x1728`
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x1728-0x17f4 (204 bytes).
  It occupies 204 bytes.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x1768, `sw` at 0x1790, `sw` at 0x17d4.
  The `lw` at 0x17a0 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `jal` at 0x1740 calls copyin with a0=a2 at entry (arg2), a1=sp-64, a2=0x20, a3=a3 at entry (arg3).
  The `jal` at 0x1754 calls kmem_alloc with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x177c calls copyin with a0=?, a1=ret(kmem_alloc), a2=?, a3=?.
  The `jal` at 0x1798 calls kmem_free with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x17bc calls copyout with a0=?, a1=ret(kmem_alloc), a2=?, a3=?.
  The `jal` at 0x17e0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x1748 targets 0x17d8, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `bne` branch at 0x1760 targets 0x1774, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x176c targets 0x17a4 and is always taken.
  The `beq` branch at 0x1784 targets 0x17b8, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x17c4 targets 0x1798, is taken when v0(=ret(copyout)) == 0, and falls through when v0(=ret(copyout)) != 0.
  The `beq` branch at 0x17d0 targets 0x1794 and is always taken.
  The `beq` branch at 0x17ec targets 0x17a4 and is always taken.
  The return at 0x17b0 has v0 = one of 0xc, [a3], 0xe.
## `gfP_OdsyHPgetTopology` at `0x618`
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x618-0x6b0 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x644 loads 4 bytes from [sym(OdsyHpipeState)]:8 +0x0.
  The `sw` at 0x668 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0x680 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `jal` at 0x62c calls mutex_spinlock with a0=sym(odsy_hpipe_state_lock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x658 calls copyout with a0=[sym(OdsyHpipeState)]:8+4360, a1=a2 at entry (arg2), a2=0x184, a3=[sym(OdsyHpipeState)]:8.
  The `jal` at 0x670 calls mutex_spinunlock with a0=sym(odsy_hpipe_state_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x690 calls odsy_hpipe_discover with a0=?, a1=?, a2=?, a3=[sym(OdsyHpipeState)]:8.
  The `beq` branch at 0x63c targets 0x690, is taken when a3(=[sym(OdsyHpipeState)]:8) == 0, and falls through when a3(=[sym(OdsyHpipeState)]:8) != 0.
  The `beq` branch at 0x648 targets 0x690, is taken when at(=[[sym(OdsyHpipeState)]:8]) == 0, and falls through when at(=[[sym(OdsyHpipeState)]:8]) != 0.
  The `bne` branch at 0x6a0 targets 0x668, is taken when s0(=one of 0x0, 0x16) != 0, and falls through when s0(=one of 0x0, 0x16) == 0.
  The `beq` branch at 0x6a8 targets 0x654 and is always taken.
  The return at 0x688 has v0 = [a3].
## `odsyHashRemove` at `0xce0`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0xce0-0xd04 (36 bytes).
  It occupies 36 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0xce0, `ld` at 0xcf0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0xce4, `ld` at 0xcec.
  The `sd` at 0xce8 stores 8 bytes to [a0+8]:8 +0x0.
  The `sd` at 0xcf4 stores 8 bytes to [a0]:8 +0x8.
  The `sd` at 0xcf8 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `sd` at 0xd00 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The return at 0xcfc has v0 = [a0]:8.
## `gf_OdsyFrsInstall` at `0x11dc`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0x11dc-0x11e4 (8 bytes).
  It occupies 8 bytes.
  The return at 0x11dc has v0 = 0x0.
## `gf_OdsyFrsUninstall` at `0x11e4`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0x11e4-0x11ec (8 bytes).
  It occupies 8 bytes.
  The return at 0x11e4 has v0 = 0x0.
