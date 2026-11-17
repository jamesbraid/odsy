# Readings: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`

One entry per routine, filed here from the reading batches by binary.

- `odsyInitRetrace` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0x0-0x8c (140 bytes).
  It occupies 140 bytes.
  The `sw` at 0x24 stores 4 bytes to a0 (arg0 at entry) +0x1274.
  The `sd` at 0x28 stores 8 bytes to a0 (arg0 at entry) +0x1788.
  The `sw` at 0x38 stores 4 bytes to a0 (arg0 at entry) +0x127c.
  The `sw` at 0x44 stores 4 bytes to a0 (arg0 at entry) +0x1250.
  The `sd` at 0x68 stores 8 bytes to a0 (arg0 at entry) +0xb8.
  The `sw` at 0x70 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sd` at 0x78 stores 8 bytes to a0 (arg0 at entry) +0x1258.
  The `sw` at 0x7c stores 4 bytes to a0 (arg0 at entry) +0x1260.
  The `jal` at 0x1c calls bzero with a0=a0+4664, a1=0x558, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x40 calls init_mutex with a0=a0+4664, a1=0x0, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x5c calls init_sv with a0=a0+4680, a1=0x0, a2=sym(.rodata), a3=-0x1.
  The return at 0x84 has v0 = ret(init_sv).

- `odsyValidateBuffer` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)` at 0x8c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0x8c-0x104 (120 bytes).
  It occupies 120 bytes.
  The `ld` at 0xa0 loads 8 bytes from ((((a1 << 0x2) + a1) << 0x3) + a0) +0x12a0.
  The `ld` at 0xb8 loads 8 bytes from ((((a1 << 0x2) + a1) << 0x3) + a0) +0x1288.
  The `ld` at 0xc0 loads 8 bytes from [((((a1 << 0x2) + a1) << 0x3) + a0)+4744]:8 +0x90.
  The `lw` at 0xcc loads 4 bytes from ((((a1 << 0x2) + a1) << 0x3) + a0) +0x12a8.
  The `ld` at 0xd4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xe4 loads 4 bytes from a0 (arg0 at entry) +0x1278.
  The `sw` at 0xf4 stores 4 bytes to a0 (arg0 at entry) +0x1278.
  The `jal` at 0xbc calls rrmValidateBuffer with a0=[[((((a1 << 0x2) + a1) << 0x3) + a0)+4744]:8+144]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=((((a1 << 0x2) + a1) << 0x3) + a0).
  The `jal` at 0xd0 calls rrmValidateMGRSwapBuf with a0=[a0]:8, a1=[((((a1 << 0x2) + a1) << 0x3) + a0)+4776], a2=a2 at entry (arg2), a3=((((a1 << 0x2) + a1) << 0x3) + a0).
  The `beq` branch at 0xb0 targets 0xcc, is taken when at(=[((((a1 << 0x2) + a1) << 0x3) + a0)+4768]:8) == 0, and falls through when at(=[((((a1 << 0x2) + a1) << 0x3) + a0)+4768]:8) != 0.
  The `beq` branch at 0xc4 targets 0xdc and is always taken.
  The return at 0xfc has v0 = a1.

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

- `odsySwap_softsync_intr` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)` at 0x780 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0x780-0x87c (252 bytes).
  It occupies 252 bytes.
  The `sw` at 0x7d4 stores 4 bytes to a0 (arg0 at entry) +0x1264.
  The `lw` at 0x7e8 loads 4 bytes from a0 (arg0 at entry) +0x1278.
  The `lw` at 0x804 loads 4 bytes from a0 (arg0 at entry) +0x1264.
  The `ld` at 0x814 loads 8 bytes from ?.
  The `lw` at 0x818 loads 4 bytes from ?.
  The `ld` at 0x81c loads 8 bytes from a0 (arg0 at entry) +0x2f0.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x824, `lhu` at 0x82c.
  The `jal` at 0x7a8 calls mutex_lock with a0=a0+4664, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7d0 calls odsySwapBuffer with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+4708].
  The `jal` at 0x854 calls mutex_unlock with a0=a0+4664, a1=?, a2=?, a3=?.
  The `beq` branch at 0x7b8 targets 0x7e4 and is always taken.
  The `beq` branch at 0x7e0 targets 0x854, is taken when s0(?) >= 0x20 (signed), and falls through when s0(?) < 0x20 (signed).
  The `beq` branch at 0x7fc targets 0x7d8, is taken when (v1(=[a0+4728]) & a3(?)) == 0, and falls through when (v1(=[a0+4728]) & a3(?)) != 0.
  The `beq` branch at 0x80c targets 0x7d8, is taken when (a3(?) & a4(=[a0+4708])) == 0, and falls through when (a3(?) & a4(=[a0+4708])) != 0.
  The `beq` branch at 0x834 targets 0x7c0, is taken when a1(?) >= a0(?) (signed), and falls through when a1(?) < a0(?) (signed).
  The `beq` branch at 0x83c targets 0x7d8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x844 targets 0x7d8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x84c targets 0x7c4 and is always taken.
  The return at 0x874 has v0 = ret(mutex_unlock).

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

- `gf_OdsySchedRetraceEvent` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)` at 0xa14 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0xa14-0xab4 (160 bytes).
  It occupies 160 bytes.
  The `ld` at 0xa48 loads 8 bytes from a0 (arg0 at entry) +0x1788.
  The `ld` at 0xa5c loads 8 bytes from ?.
  The `sd` at 0xa80 stores 8 bytes to a1 (arg1 at entry) +0x28.
  The `sd` at 0xa88 stores 8 bytes to a0 (arg0 at entry) +0x1788.
  The `jal` at 0xa40 calls mutex_lock with a0=a0+4664, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa94 calls mutex_unlock with a0=a0+4664, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa4c targets 0xa78, is taken when a0(=[a0+6024]:8) == 0, and falls through when a0(=[a0+6024]:8) != 0.
  The `beq` branch at 0xa54 targets 0xa8c, is taken when s1(=a1) == v0(=[a0+6024]:8), and falls through when s1(=a1) != v0(=[a0+6024]:8).
  The `beq` branch at 0xa60 targets 0xa78, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xa68 targets 0xa5c, is taken when s1(=a1) != v0(?), and falls through when s1(=a1) == v0(?).
  The `beq` branch at 0xa70 targets 0xa90 and is always taken.
  The `beq` branch at 0xa78 targets 0xa8c, is taken when s1(=a1) == v0(?), and falls through when s1(=a1) != v0(?).
  The return at 0xaac has v0 = one of 0x0, 0x1.

- `gf_OdsyUnSchedRetraceEvent` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)` at 0xab4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0xab4-0xb68 (180 bytes).
  It occupies 180 bytes.
  The `ld` at 0xae8 loads 8 bytes from a0 (arg0 at entry) +0x1788.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xb00, `ld` at 0xb20.
  The `sd` at 0xb30 stores 8 bytes to ?.
  The `sd` at 0xb3c stores 8 bytes to a0 (arg0 at entry) +0x1788.
  The `jal` at 0xae0 calls mutex_lock with a0=a0+4664, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xb48 calls mutex_unlock with a0=a0+4664, a1=?, a2=?, a3=?.
  The `beq` branch at 0xaf0 targets 0xb18, is taken when v0(=[a0+6024]:8) == 0, and falls through when v0(=[a0+6024]:8) != 0.
  The `beq` branch at 0xaf8 targets 0xb20, is taken when s1(=a1) == v0(=[a0+6024]:8), and falls through when s1(=a1) != v0(=[a0+6024]:8).
  The `beq` branch at 0xb08 targets 0xb18, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xb10 targets 0xb00, is taken when a0(?) != s1(=a1), and falls through when a0(?) == s1(=a1).
  The `bne` branch at 0xb18 targets 0xb44, is taken when at(=a1) != v0(?), and falls through when at(=a1) == v0(?).
  The `beq` branch at 0xb28 targets 0xb3c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xb34 targets 0xb44 and is always taken.
  The return at 0xb60 has v0 = one of 0x0, 0x1.

- `gf_OdsySetDisplayMode` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)` at 0xb68
  **Inferred.** The rendered body is identical to the patch-4103 build at the same address (same facts line for line), so the reading in the entry above applies here. `odsyValidateBuffer` is called at 0xc98 only when the word at +0x1270 ANDed with the field at +4720 is nonzero, and `odsy_poll_dfifo_level` is polled at levels 0xf (0xb94) and 0xc (0xcec, 0xe84) with the same locks. The return values are 0x0 or 0x5 (return at 0xbc4).
  Reviewed: 2026-11-12

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
