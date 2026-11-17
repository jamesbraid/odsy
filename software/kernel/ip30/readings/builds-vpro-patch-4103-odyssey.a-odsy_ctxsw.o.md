# Readings: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`

One entry per routine, filed here from the reading batches by binary.

- `odsy_ctxsw_timeout` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x0-0x5c (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x18 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2c calls odsy_teardown with a0=a0 at entry (arg0), a1=?, a2=0x5dc, a3=?.
  The `jal` at 0x48 calls timeout with a0=sym(odsy_ctxsw_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=?.
  The `beq` branch at 0x24 targets 0x44, is taken when a2(=[sym(odsy_actually_timeout)]) == 0, and falls through when a2(=[sym(odsy_actually_timeout)]) != 0.
  The `beq` branch at 0x54 targets 0x3c and is always taken.
  The return at 0x3c has v0 = one of ret(odsy_teardown), ret(timeout).

- `odsy_glget_timeout` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x5c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x5c-0xb8 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x74 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x88 calls odsy_teardown with a0=a0 at entry (arg0), a1=?, a2=0x5dc, a3=?.
  The `jal` at 0xa4 calls timeout with a0=sym(odsy_glget_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=?.
  The `beq` branch at 0x80 targets 0xa0, is taken when a2(=[sym(odsy_actually_timeout)]) == 0, and falls through when a2(=[sym(odsy_actually_timeout)]) != 0.
  The `beq` branch at 0xb0 targets 0x98 and is always taken.
  The return at 0x98 has v0 = one of ret(odsy_teardown), ret(timeout).

- `gf_OdsyPcxSwitch` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0xb8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0xb8-0xc0 (8 bytes).
  It occupies 8 bytes.
  The return at 0xb8 has v0 = -0x1.

- `gfP_OdsySaveHwShadow` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0xc0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
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
  The `sw` at 0x194 stores 4 bytes to [[a1+112]:8+112]:8 +0x8fc.
  The `sd` at 0x1a0 stores 8 bytes to [[a0+32]:8+736]:8 +0x118000.
  2 such `lw` accesses load 4 bytes from [[a1+112]:8+112]:8 +0x8fc, including `lw` at 0x1a8, `lw` at 0x31c.
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
  The `jal` at 0x1b4 calls untimeout with a0=ret(timeout), a1=?, a2=?, a3=?.
  The `jal` at 0x1d4 calls splhi with a0=?, a1=?, a2=?, a3=?, a5=[[a0+32]:8+728].
  The `jal` at 0x1fc calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?.
  The `jal` at 0x22c calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=0x1, a3=[[a0+32]:8+736]:8.
  The `jal` at 0x23c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jalr` at 0x2ac calls (unknown callee) with a0=[a0+32]:8, a1=[[a0+32]:8+8]:8, a2=[[a0+32]:8+8]:8, a3=[[a0+32]:8+8]:8, a4=a2 at entry (arg2).
  The `jal` at 0x310 calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x348 calls splhi with a0=?, a1=?, a2=?, a3=?, a5=[[a0+32]:8+728].
  The `jal` at 0x36c calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?.
  The `jal` at 0x39c calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x3ac calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x3d0 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3f4 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?, a5=([a0+48] | 0x2).
  The `jal` at 0x404 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
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
  The `beq` branch at 0x1ac targets 0x2fc, is taken when a4(=[[[a1+112]:8+112]:8+2300]) == 0, and falls through when a4(=[[[a1+112]:8+112]:8+2300]) != 0.
  The `beq` branch at 0x1c4 targets 0x33c, is taken when a5(=[[a0+32]:8+728]) == 0, and falls through when a5(=[[a0+32]:8+728]) != 0.
  The `beq` branch at 0x1cc targets 0x248, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1f4 targets 0x238, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x204 targets 0x238, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x25c targets 0x14c and is always taken.
  The `beq` branch at 0x278 targets 0x14c and is always taken.
  The `beq` branch at 0x2d4 targets 0x14c and is always taken.
  The `beq` branch at 0x2f4 targets 0x14c and is always taken.
  The `bne` branch at 0x300 targets 0x1b4, is taken when a5(=[[a0+32]:8+728]) != 0, and falls through when a5(=[[a0+32]:8+728]) == 0.
  The `bne` branch at 0x320 targets 0x334, is taken when at(=[[[a1+112]:8+112]:8+2300]) != 0, and falls through when at(=[[[a1+112]:8+112]:8+2300]) == 0.
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

- `gf_OdsyPcxSwap` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x4cc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x4cc-0xa88 (1468 bytes).
  It occupies 1468 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2d8, including `lw` at 0x4f4, `lw` at 0x688, `lw` at 0x8b8.
  2 such `ld` accesses load 8 bytes from a2 (arg2 at entry) +0x40, including `ld` at 0x528, `ld` at 0x788.
  The `ld` at 0x534 loads 8 bytes from a2 (arg2 at entry) +0x70.
  The `lw` at 0x538 loads 4 bytes from [a2+112]:8 +0x0.
  The `ld` at 0x53c loads 8 bytes from [a2+112]:8 +0x70.
  The `ld` at 0x558 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0x55c loads 8 bytes from [a1+112]:8 +0x70.
  8 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2d0, including `ld` at 0x560, `ld` at 0x5c4, `ld` at 0x5f8.
  The `ld` at 0x564 loads 8 bytes from a0 (arg0 at entry) +0x48.
  9 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x568, `ld` at 0x5e0, `ld` at 0x5f0.
  3 such `lw` accesses load 4 bytes from [a0+72]:8 +0x30, including `lw` at 0x5b0, `lw` at 0x6b8, `lw` at 0x880.
  3 such `sw` accesses store 4 bytes to [a0+72]:8 +0x30, including `sw` at 0x5c0, `sw` at 0x6c4, `sw` at 0x888.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x28a8, including `sw` at 0x5e8, `sw` at 0x6ec, `sw` at 0xa44.
  3 such `sw` accesses store 4 bytes to [a0+736]:8 +0x107c, including `sw` at 0x5ec, `sw` at 0x6f0, `sw` at 0xa4c.
  2 such `lw` accesses load 4 bytes from [a0+736]:8 +0x106c, including `lw` at 0x5f4, `lw` at 0x6f8.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x65c, `sw` at 0x834, `sw` at 0x86c.
  The `sd` at 0x670 stores 8 bytes to [a0+736]:8 +0x118000.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x674, `lw` at 0x794, `lw` at 0x8d4.
  The `sw` at 0x73c stores 4 bytes to a0 (arg0 at entry) +0x28b0.
  The `sw` at 0x74c stores 4 bytes to a0 (arg0 at entry) +0x28ac.
  The `sw` at 0x750 stores 4 bytes to [a0+736]:8 +0x4004.
  The `lw` at 0x760 loads 4 bytes from a0 (arg0 at entry) +0x28b0.
  The `sw` at 0x76c stores 4 bytes to [a0+736]:8 +0x400c.
  The `lhu` at 0x770 loads 2 bytes from a2 (arg2 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2dc, including `lw` at 0x7a0, `lw` at 0x838.
  19 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0x7e8, `sw` at 0x7f0, `sw` at 0x7f8.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x860, `ld` at 0x96c.
  The `sw` at 0x874 stores 4 bytes to a0 (arg0 at entry) +0x2dc.
  The `lw` at 0xa10 loads 4 bytes from a0 (arg0 at entry) +0x28a4.
  The `sw` at 0xa34 stores 4 bytes to a0 (arg0 at entry) +0x28a4.
  The `sw` at 0xa38 stores 4 bytes to [a0+736]:8 +0x1074.
  The `jal` at 0x51c calls gfx_waitc_on with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x524 calls gfx_flow_clean_up_other_gfxp with a0=[a2+64]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x56c calls odsy_flow_am_i_attached with a0=[a0+720]:8, a1=[a0+736]:8, a2=?, a3=?.
  The `jal` at 0x5a8 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5d0 calls gfx_flow_am_i_attached with a0=[a0+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x600 calls gfx_flow_detach_me with a0=[a0+720]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x610 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x61c calls gfx_waitc_off with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x66c calls timeout with a0=sym(odsy_ctxsw_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=?, a4=[a0+736]:8+0x118000, a5=0x70000000000, a6=[a0+736]:8.
  The `jal` at 0x680 calls untimeout with a0=ret(timeout), a1=?, a2=?, a3=?.
  The `jal` at 0x6b0 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6d4 calls gfx_flow_am_i_attached with a0=[a0+720]:8, a1=?, a2=?, a3=-0x3.
  The `jal` at 0x704 calls gfx_flow_detach_me with a0=[a0+720]:8, a1=[a0+72]:8, a2=?, a3=?, a4=[[a0+736]:8+4204], a5=0x1, a6=[a0+736]:8.
  The `jal` at 0x714 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x720 calls gfx_waitc_off with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x734 calls kvtophys with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x768 calls odsyMMvalidatePcxSwap with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+10416].
  The `jal` at 0x78c calls gf_OdsyValidateClip with a0=[a2+64]:8, a1=a2 at entry (arg2), a2=0x0, a3=0x0.
  The `jal` at 0x878 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x898 calls gfx_flow_am_i_attached with a0=[a0+720]:8, a1=ret(splhi), a2=?, a3=([[a0+72]:8+48] | 0x2).
  The `jal` at 0x8a8 calls splx with a0=ret(splhi), a1=ret(splhi), a2=?, a3=?.
  The `jal` at 0x8cc calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x990 calls odsyDownloadUcode with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1, a4=[a0+72]:8, a5=0x10443.
  The `jal` at 0x9a4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x9ac calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9b8 calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0x9cc calls odsyRestoreXform with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9d8 calls odsyRestoreRaster with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9e4 calls odsyRestoreGfe with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9f0 calls odsyRestartContext with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa04 calls gfx_flow_attach_me with a0=[a0+720]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xa14 calls gfx_flow_credit_tnum_get with a0=[a0+720]:8, a1=?, a2=[a0+10404], a3=?.
  The `jal` at 0xa74 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x514 targets 0xa50, is taken when at(=[a0+728]) != 0, and falls through when at(=[a0+728]) == 0.
  The `beq` branch at 0x52c targets 0x550, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `beq` branch at 0x540 targets 0x560, is taken when s5(=a1) == 0, and falls through when s5(=a1) != 0.
  The `beq` branch at 0x548 targets 0x558 and is always taken.
  The `beq` branch at 0x550 targets 0x560, is taken when s5(=a1) == 0, and falls through when s5(=a1) != 0.
  The `beq` branch at 0x578 targets 0x878, is taken when v0(=ret(odsy_flow_am_i_attached)) == 0, and falls through when v0(=ret(odsy_flow_am_i_attached)) != 0.
  The `bne` branch at 0x580 targets 0x634, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `bne` branch at 0x588 targets 0x734, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x5a0 targets 0x618, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x5c8 targets 0x608, is taken when a0(=[a0+720]:8) == 0, and falls through when a0(=[a0+720]:8) != 0.
  The `beq` branch at 0x5d8 targets 0x60c, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x678 targets 0x8b8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x68c targets 0x8f4, is taken when at(=[a0+728]) == 0, and falls through when at(=[a0+728]) != 0.
  The `beq` branch at 0x6a8 targets 0x71c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x6cc targets 0x70c, is taken when a0(=[a0+720]:8) == 0, and falls through when a0(=[a0+720]:8) != 0.
  The `beq` branch at 0x6dc targets 0x710, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x72c targets 0x62c and is always taken.
  The `beq` branch at 0x778 targets 0x794, is taken when (at(=[a2+4]:2) & 0x2) == 0, and falls through when (at(=[a2+4]:2) & 0x2) != 0.
  The `beq` branch at 0x798 targets 0x9c8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x7a8 targets 0x9cc, is taken when v0(=[a0+732]) == a3(=0x7f), and falls through when v0(=[a0+732]) != a3(=0x7f).
  The `beq` branch at 0x7b0 targets 0x9c8, is taken when v0(=[a0+732]) == 0, and falls through when v0(=[a0+732]) != 0.
  The `beq` branch at 0x830 targets 0x590, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x83c targets 0x590, is taken when v0(=[a0+732]) == s4(?), and falls through when v0(=[a0+732]) != s4(?).
  The `beq` branch at 0x848 targets 0x870, is taken when v0(=[a0+732]) == a3(=0x7f), and falls through when v0(=[a0+732]) != a3(=0x7f).
  The `beq` branch at 0x864 targets 0x870, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x870 targets 0x590 and is always taken.
  The `beq` branch at 0x890 targets 0x8a8, is taken when a0(=[a0+720]:8) == 0, and falls through when a0(=[a0+720]:8) != 0.
  The `beq` branch at 0x8a0 targets 0xa00, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x8b0 targets 0x580 and is always taken.
  The `bne` branch at 0x8bc targets 0x680, is taken when a5(=[a0+728]) != 0, and falls through when a5(=[a0+728]) == 0.
  The `bne` branch at 0x8d8 targets 0x8ec, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x8e4 targets 0x8c8, is taken when v1(=[a0+728]) == 0, and falls through when v1(=[a0+728]) != 0.
  The `beq` branch at 0x8ec targets 0x680 and is always taken.
  The `beq` branch at 0x90c targets 0x928, is taken when a3(?) >= 0xb (unsigned), and falls through when a3(?) < 0xb (unsigned).
  The `beq` branch at 0x970 targets 0x588, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x97c targets 0x588, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x998 targets 0x588, is taken when v0(=ret(odsyDownloadUcode)) == 0, and falls through when v0(=ret(odsyDownloadUcode)) != 0.
  The `beq` branch at 0x9c0 targets 0x588 and is always taken.
  The `beq` branch at 0x9f8 targets 0x830 and is always taken.
  The `beq` branch at 0xa48 targets 0x8a8 and is always taken.
  The `beq` branch at 0xa80 targets 0x62c and is always taken.
  The return at 0x62c has v0 = one of -0x1, 0x0.

- `odsyRestoreRaster` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0xa88 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0xa88-0x1e0c (4996 bytes).
  It occupies 4996 bytes.
  The `lw` at 0xa90 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0xa98 loads 8 bytes from a1 (arg1 at entry) +0x60.
  The `lw` at 0xab8 loads 4 bytes from a0 (arg0 at entry) +0x2dc.
  The `ld` at 0xae4 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  582 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0xaf4, `sw` at 0xafc, `sw` at 0xb04.
  The `lw` at 0xb48 loads 4 bytes from [a1+96]:8 +0x1b24.
  The `lw` at 0xb50 loads 4 bytes from [a1+96]:8 +0x1b28.
  The `lw` at 0xb58 loads 4 bytes from [a1+96]:8 +0x1b2c.
  The `lw` at 0xb60 loads 4 bytes from [a1+96]:8 +0x1b30.
  The `lw` at 0xb94 loads 4 bytes from [a1+96]:8 +0xe8.
  The `lw` at 0xb9c loads 4 bytes from [a1+96]:8 +0xec.
  The `lw` at 0xba4 loads 4 bytes from [a1+96]:8 +0xf0.
  The `lw` at 0xbac loads 4 bytes from [a1+96]:8 +0xf4.
  The `lw` at 0xbd0 loads 4 bytes from [a1+96]:8 +0xe4.
  The `lw` at 0xbe4 loads 4 bytes from [a1+96]:8 +0xa8.
  The `lw` at 0xbec loads 4 bytes from [a1+96]:8 +0xac.
  The `lw` at 0xc0c loads 4 bytes from [a1+96]:8 +0x1b34.
  The `lw` at 0xc14 loads 4 bytes from [a1+96]:8 +0x1b38.
  The `lw` at 0xc1c loads 4 bytes from [a1+96]:8 +0x1b3c.
  The `lw` at 0xc24 loads 4 bytes from [a1+96]:8 +0x1b40.
  The `lw` at 0xc2c loads 4 bytes from [a1+96]:8 +0x1b44.
  The `lw` at 0xc50 loads 4 bytes from [a1+96]:8 +0x84.
  The `lw` at 0xc64 loads 4 bytes from [a1+96]:8 +0x88.
  The `lw` at 0xc78 loads 4 bytes from [a1+96]:8 +0xc8.
  The `lw` at 0xc8c loads 4 bytes from [a1+96]:8 +0x8c.
  The `lw` at 0xca0 loads 4 bytes from [a1+96]:8 +0x1cb0.
  The `lw` at 0xcb4 loads 4 bytes from [a1+96]:8 +0xcc.
  The `lw` at 0xcbc loads 4 bytes from [a1+96]:8 +0xd0.
  The `lw` at 0xcc4 loads 4 bytes from [a1+96]:8 +0xd4.
  The `lw` at 0xcd8 loads 4 bytes from [a1+96]:8 +0x80.
  The `lw` at 0xcec loads 4 bytes from [a1+96]:8 +0x0.
  The `lw` at 0xcf4 loads 4 bytes from [a1+96]:8 +0x4.
  The `lw` at 0xcfc loads 4 bytes from [a1+96]:8 +0x8.
  The `lw` at 0xd04 loads 4 bytes from [a1+96]:8 +0xc.
  The `lw` at 0xd0c loads 4 bytes from [a1+96]:8 +0x10.
  The `lw` at 0xd14 loads 4 bytes from [a1+96]:8 +0x14.
  The `lw` at 0xd1c loads 4 bytes from [a1+96]:8 +0x18.
  The `lw` at 0xd24 loads 4 bytes from [a1+96]:8 +0x1c.
  The `lw` at 0xd2c loads 4 bytes from [a1+96]:8 +0x20.
  The `lw` at 0xd34 loads 4 bytes from [a1+96]:8 +0x24.
  The `lw` at 0xd3c loads 4 bytes from [a1+96]:8 +0x28.
  The `lw` at 0xd44 loads 4 bytes from [a1+96]:8 +0x2c.
  The `lw` at 0xd4c loads 4 bytes from [a1+96]:8 +0x30.
  The `lw` at 0xd54 loads 4 bytes from [a1+96]:8 +0x34.
  The `lw` at 0xd5c loads 4 bytes from [a1+96]:8 +0x38.
  The `lw` at 0xd64 loads 4 bytes from [a1+96]:8 +0x3c.
  The `lw` at 0xd78 loads 4 bytes from [a1+96]:8 +0x40.
  The `lw` at 0xd80 loads 4 bytes from [a1+96]:8 +0x44.
  The `lw` at 0xd88 loads 4 bytes from [a1+96]:8 +0x48.
  The `lw` at 0xd90 loads 4 bytes from [a1+96]:8 +0x4c.
  The `lw` at 0xd98 loads 4 bytes from [a1+96]:8 +0x50.
  The `lw` at 0xda0 loads 4 bytes from [a1+96]:8 +0x54.
  The `lw` at 0xda8 loads 4 bytes from [a1+96]:8 +0x58.
  The `lw` at 0xdb0 loads 4 bytes from [a1+96]:8 +0x5c.
  The `lw` at 0xdb8 loads 4 bytes from [a1+96]:8 +0x60.
  The `lw` at 0xdc0 loads 4 bytes from [a1+96]:8 +0x64.
  The `lw` at 0xdc8 loads 4 bytes from [a1+96]:8 +0x68.
  The `lw` at 0xdd0 loads 4 bytes from [a1+96]:8 +0x6c.
  The `lw` at 0xdd8 loads 4 bytes from [a1+96]:8 +0x70.
  The `lw` at 0xde0 loads 4 bytes from [a1+96]:8 +0x74.
  The `lw` at 0xde8 loads 4 bytes from [a1+96]:8 +0x78.
  The `lw` at 0xdf0 loads 4 bytes from [a1+96]:8 +0x7c.
  The `lw` at 0xe04 loads 4 bytes from [a1+96]:8 +0xdc.
  The `lw` at 0xe0c loads 4 bytes from [a1+96]:8 +0xe0.
  The `lw` at 0xe20 loads 4 bytes from [a1+96]:8 +0x138.
  The `lw` at 0xe28 loads 4 bytes from [a1+96]:8 +0x13c.
  The `lw` at 0xe30 loads 4 bytes from [a1+96]:8 +0x140.
  The `lw` at 0xe38 loads 4 bytes from [a1+96]:8 +0x144.
  The `lw` at 0xe40 loads 4 bytes from [a1+96]:8 +0x148.
  The `lw` at 0xe54 loads 4 bytes from [a1+96]:8 +0x14c.
  The `lw` at 0xe5c loads 4 bytes from [a1+96]:8 +0x150.
  The `lw` at 0xe64 loads 4 bytes from [a1+96]:8 +0x154.
  The `lw` at 0xe6c loads 4 bytes from [a1+96]:8 +0x158.
  The `lw` at 0xe74 loads 4 bytes from [a1+96]:8 +0x15c.
  The `lw` at 0xe7c loads 4 bytes from [a1+96]:8 +0x160.
  The `lw` at 0xe84 loads 4 bytes from [a1+96]:8 +0x164.
  The `lw` at 0xe98 loads 4 bytes from [a1+96]:8 +0x1b20.
  The `lw` at 0xeac loads 4 bytes from [a1+96]:8 +0x1cac.
  The `lw` at 0xec0 loads 4 bytes from [a1+96]:8 +0xbc.
  The `lw` at 0xec8 loads 4 bytes from [a1+96]:8 +0xc0.
  The `lw` at 0xed0 loads 4 bytes from [a1+96]:8 +0xc4.
  The `lw` at 0xed8 loads 4 bytes from [a1+96]:8 +0x1170.
  4 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1174, including `lw` at 0xf00, `lw` at 0x1984, `lw` at 0x1cec.
  4 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1178, including `lw` at 0xf08, `lw` at 0x198c, `lw` at 0x1cf4.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x117c, including `lw` at 0xf10, `lw` at 0x1994, `lw` at 0x1d4c.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1180, including `lw` at 0xf18, `lw` at 0x199c, `lw` at 0x1d54.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1184, including `lw` at 0xf20, `lw` at 0x19a4, `lw` at 0x1d5c.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1188, including `lw` at 0xf28, `lw` at 0x19ac, `lw` at 0x1d64.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x118c, including `lw` at 0xf30, `lw` at 0x19b4, `lw` at 0x1d6c.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1190, including `lw` at 0xf38, `lw` at 0x19bc, `lw` at 0x1d74.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1194, including `lw` at 0xf4c, `lw` at 0x19d0.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1198, including `lw` at 0xf54, `lw` at 0x19d8.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x119c, including `lw` at 0xf5c, `lw` at 0x19e0.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11a0, including `lw` at 0xf64, `lw` at 0x19e8.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11a4, including `lw` at 0xf6c, `lw` at 0x19f0.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11a8, including `lw` at 0xf74, `lw` at 0x19f8.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11ac, including `lw` at 0xf7c, `lw` at 0x1a00.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11b0, including `lw` at 0xf84, `lw` at 0x1a08.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11b4, including `lw` at 0xf98, `lw` at 0x1a1c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11b8, including `lw` at 0xfa0, `lw` at 0x1a24.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11bc, including `lw` at 0xfa8, `lw` at 0x1a2c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11c0, including `lw` at 0xfb0, `lw` at 0x1a34.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11c4, including `lw` at 0xfb8, `lw` at 0x1a3c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11c8, including `lw` at 0xfc0, `lw` at 0x1a44.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11cc, including `lw` at 0xfc8, `lw` at 0x1a4c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11d0, including `lw` at 0xfd0, `lw` at 0x1a54.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11d4, including `lw` at 0xfe4, `lw` at 0x1a68.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11d8, including `lw` at 0xfec, `lw` at 0x1a70.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11dc, including `lw` at 0xff4, `lw` at 0x1a78.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11e0, including `lw` at 0xffc, `lw` at 0x1a80.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11e4, including `lw` at 0x1004, `lw` at 0x1a88.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11e8, including `lw` at 0x100c, `lw` at 0x1a90.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11ec, including `lw` at 0x1014, `lw` at 0x1a98.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x11f0, including `lw` at 0x101c, `lw` at 0x1aa0.
  The `lw` at 0x1024 loads 4 bytes from [a1+96]:8 +0x106c.
  4 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1070, including `lw` at 0x104c, `lw` at 0x1ab8, `lw` at 0x1d0c.
  4 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1074, including `lw` at 0x1054, `lw` at 0x1ac0, `lw` at 0x1d14.
  4 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1078, including `lw` at 0x105c, `lw` at 0x1ac8, `lw` at 0x1d1c.
  4 such `lw` accesses load 4 bytes from [a1+96]:8 +0x107c, including `lw` at 0x1064, `lw` at 0x1ad0, `lw` at 0x1d24.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1080, including `lw` at 0x106c, `lw` at 0x1ad8, `lw` at 0x1da8.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1084, including `lw` at 0x1074, `lw` at 0x1ae0, `lw` at 0x1db0.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1088, including `lw` at 0x107c, `lw` at 0x1ae8, `lw` at 0x1db8.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x108c, including `lw` at 0x1084, `lw` at 0x1af0, `lw` at 0x1dc0.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1090, including `lw` at 0x108c, `lw` at 0x1af8, `lw` at 0x1dc8.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1094, including `lw` at 0x1094, `lw` at 0x1b00, `lw` at 0x1dd0.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1098, including `lw` at 0x109c, `lw` at 0x1b08, `lw` at 0x1dd8.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x109c, including `lw` at 0x10a4, `lw` at 0x1b10, `lw` at 0x1de0.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10a0, including `lw` at 0x10ac, `lw` at 0x1b18, `lw` at 0x1de8.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10a4, including `lw` at 0x10b4, `lw` at 0x1b20, `lw` at 0x1df0.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10a8, including `lw` at 0x10bc, `lw` at 0x1b28, `lw` at 0x1df8.
  3 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10ac, including `lw` at 0x10c4, `lw` at 0x1b30, `lw` at 0x1e00.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10b0, including `lw` at 0x10d8, `lw` at 0x1b44.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10b4, including `lw` at 0x10e0, `lw` at 0x1b4c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10b8, including `lw` at 0x10e8, `lw` at 0x1b54.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10bc, including `lw` at 0x10f0, `lw` at 0x1b5c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10c0, including `lw` at 0x10f8, `lw` at 0x1b64.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10c4, including `lw` at 0x1100, `lw` at 0x1b6c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10c8, including `lw` at 0x1108, `lw` at 0x1b74.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10cc, including `lw` at 0x1110, `lw` at 0x1b7c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10d0, including `lw` at 0x1118, `lw` at 0x1b84.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10d4, including `lw` at 0x1120, `lw` at 0x1b8c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10d8, including `lw` at 0x1128, `lw` at 0x1b94.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10dc, including `lw` at 0x1130, `lw` at 0x1b9c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10e0, including `lw` at 0x1138, `lw` at 0x1ba4.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10e4, including `lw` at 0x1140, `lw` at 0x1bac.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10e8, including `lw` at 0x1148, `lw` at 0x1bb4.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10ec, including `lw` at 0x1150, `lw` at 0x1bbc.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10f0, including `lw` at 0x1164, `lw` at 0x1bd0.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10f4, including `lw` at 0x116c, `lw` at 0x1bd8.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10f8, including `lw` at 0x1174, `lw` at 0x1be0.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x10fc, including `lw` at 0x117c, `lw` at 0x1be8.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1100, including `lw` at 0x1184, `lw` at 0x1bf0.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1104, including `lw` at 0x118c, `lw` at 0x1bf8.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1108, including `lw` at 0x1194, `lw` at 0x1c00.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x110c, including `lw` at 0x119c, `lw` at 0x1c08.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1110, including `lw` at 0x11a4, `lw` at 0x1c10.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1114, including `lw` at 0x11ac, `lw` at 0x1c18.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1118, including `lw` at 0x11b4, `lw` at 0x1c20.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x111c, including `lw` at 0x11bc, `lw` at 0x1c28.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1120, including `lw` at 0x11c4, `lw` at 0x1c30.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1124, including `lw` at 0x11cc, `lw` at 0x1c38.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1128, including `lw` at 0x11d4, `lw` at 0x1c40.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x112c, including `lw` at 0x11dc, `lw` at 0x1c48.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1130, including `lw` at 0x11f0, `lw` at 0x1c5c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1134, including `lw` at 0x11f8, `lw` at 0x1c64.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1138, including `lw` at 0x1200, `lw` at 0x1c6c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x113c, including `lw` at 0x1208, `lw` at 0x1c74.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1140, including `lw` at 0x1210, `lw` at 0x1c7c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1144, including `lw` at 0x1218, `lw` at 0x1c84.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1148, including `lw` at 0x1220, `lw` at 0x1c8c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x114c, including `lw` at 0x1228, `lw` at 0x1c94.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1150, including `lw` at 0x1230, `lw` at 0x1c9c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1154, including `lw` at 0x1238, `lw` at 0x1ca4.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1158, including `lw` at 0x1240, `lw` at 0x1cac.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x115c, including `lw` at 0x1248, `lw` at 0x1cb4.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1160, including `lw` at 0x1250, `lw` at 0x1cbc.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1164, including `lw` at 0x1258, `lw` at 0x1cc4.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x1168, including `lw` at 0x1260, `lw` at 0x1ccc.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x116c, including `lw` at 0x1268, `lw` at 0x1cd4.
  The `lw` at 0x1288 loads 4 bytes from [a1+96]:8 +0xb0.
  The `lw` at 0x129c loads 4 bytes from [a1+96]:8 +0xb4.
  The `lw` at 0x12ac loads 4 bytes from [a1+96]:8 +0xb8.
  The `lw` at 0x12bc loads 4 bytes from [a1+96]:8 +0xd8.
  The `lw` at 0x12d0 loads 4 bytes from [a1+96]:8 +0x90.
  The `lw` at 0x12d8 loads 4 bytes from [a1+96]:8 +0x94.
  The `lw` at 0x12e0 loads 4 bytes from [a1+96]:8 +0x98.
  The `lw` at 0x12e8 loads 4 bytes from [a1+96]:8 +0x9c.
  The `lw` at 0x12f0 loads 4 bytes from [a1+96]:8 +0xa0.
  The `lw` at 0x12f8 loads 4 bytes from [a1+96]:8 +0xa4.
  The `lw` at 0x130c loads 4 bytes from [a1+96]:8 +0x1b94.
  The `lw` at 0x1314 loads 4 bytes from [a1+96]:8 +0x1b98.
  The `lw` at 0x131c loads 4 bytes from [a1+96]:8 +0x1b9c.
  The `lw` at 0x1324 loads 4 bytes from [a1+96]:8 +0x1ba0.
  The `lw` at 0x132c loads 4 bytes from [a1+96]:8 +0x1ba4.
  The `lw` at 0x1334 loads 4 bytes from [a1+96]:8 +0x1ba8.
  The `lw` at 0x1348 loads 4 bytes from [a1+96]:8 +0x1bac.
  The `lw` at 0x1350 loads 4 bytes from [a1+96]:8 +0x1bb0.
  The `lw` at 0x1358 loads 4 bytes from [a1+96]:8 +0x1bb4.
  The `lw` at 0x1360 loads 4 bytes from [a1+96]:8 +0x1bb8.
  The `lw` at 0x1374 loads 4 bytes from [a1+96]:8 +0x11f4.
  The `lw` at 0x137c loads 4 bytes from [a1+96]:8 +0x11f8.
  The `lw` at 0x138c loads 4 bytes from [a1+96]:8 +0x11fc.
  44 such `lw` accesses load 4 bytes from ?, including `lw` at 0x13bc, `lw` at 0x1408, `lw` at 0x1454.
  The `lw` at 0x160c loads 4 bytes from [a1+96]:8 +0x468.
  The `lw` at 0x164c loads 4 bytes from [a1+96]:8 +0x1a04.
  The `lw` at 0x1654 loads 4 bytes from [a1+96]:8 +0x1a08.
  The `lw` at 0x165c loads 4 bytes from [a1+96]:8 +0x1a0c.
  The `lw` at 0x1670 loads 4 bytes from [a1+96]:8 +0x1cb4.
  The `lw` at 0x1684 loads 4 bytes from [a1+96]:8 +0xf8.
  The `lw` at 0x168c loads 4 bytes from [a1+96]:8 +0xfc.
  The `lw` at 0x1694 loads 4 bytes from [a1+96]:8 +0x100.
  The `lw` at 0x169c loads 4 bytes from [a1+96]:8 +0x104.
  The `lw` at 0x16a4 loads 4 bytes from [a1+96]:8 +0x108.
  The `lw` at 0x16ac loads 4 bytes from [a1+96]:8 +0x10c.
  The `lw` at 0x16b4 loads 4 bytes from [a1+96]:8 +0x110.
  The `lw` at 0x16bc loads 4 bytes from [a1+96]:8 +0x114.
  The `lw` at 0x16c4 loads 4 bytes from [a1+96]:8 +0x118.
  The `lw` at 0x16cc loads 4 bytes from [a1+96]:8 +0x11c.
  The `lw` at 0x16d4 loads 4 bytes from [a1+96]:8 +0x120.
  The `lw` at 0x16dc loads 4 bytes from [a1+96]:8 +0x124.
  The `lw` at 0x16e4 loads 4 bytes from [a1+96]:8 +0x128.
  The `lw` at 0x16ec loads 4 bytes from [a1+96]:8 +0x12c.
  The `lw` at 0x16f4 loads 4 bytes from [a1+96]:8 +0x130.
  The `lw` at 0x16fc loads 4 bytes from [a1+96]:8 +0x134.
  The `lw` at 0x1720 loads 4 bytes from [a1+96]:8 +0x1ca4.
  The `lw` at 0x1728 loads 4 bytes from [a1+96]:8 +0x1ca8.
  The `lw` at 0x1800 loads 4 bytes from [a1+96]:8 +0x2b40.
  The `lw` at 0x1808 loads 4 bytes from [a1+96]:8 +0x2b44.
  The `lw` at 0x1810 loads 4 bytes from [a1+96]:8 +0x2b48.
  The `lw` at 0x1818 loads 4 bytes from [a1+96]:8 +0x2b4c.
  The `lw` at 0x1820 loads 4 bytes from [a1+96]:8 +0x2b50.
  The `lw` at 0x1828 loads 4 bytes from [a1+96]:8 +0x2b54.
  The `lw` at 0x1830 loads 4 bytes from [a1+96]:8 +0x2b58.
  The `lw` at 0x1838 loads 4 bytes from [a1+96]:8 +0x2b5c.
  The `lw` at 0x184c loads 4 bytes from [a1+96]:8 +0x2b60.
  The `lw` at 0x1854 loads 4 bytes from [a1+96]:8 +0x2b64.
  The `lw` at 0x18a4 loads 4 bytes from [a1+96]:8 +0x2b68.
  The `lw` at 0x191c loads 4 bytes from [a1+96]:8 +0x2b6c.
  The `lw` at 0x1924 loads 4 bytes from [a1+96]:8 +0x2b70.
  The `jal` at 0x17d8 calls odsyPushBufferSelect with a0=a1 at entry (arg1), a1=[a0+736]:8, a2=?, a3=0x96, a4=0x110000, a5=[a1+96]:8, a7=one of 0x0, 0x1, 0x10407.
  The `beq` branch at 0xab0 targets 0xad4, is taken when 0 >= a3(=[a1]) (unsigned), and falls through when 0 < a3(=[a1]) (unsigned).
  The `beq` branch at 0xabc targets 0xad4, is taken when at(=[a0+732]) == a3(=[a1]), and falls through when at(=[a0+732]) != a3(=[a1]).
  The `beq` branch at 0xacc targets 0xae4 and is always taken.
  The `beq` branch at 0xee0 targets 0x1978, is taken when a6(=[[a1+96]:8+4464]) == t8(=0x1), and falls through when a6(=[[a1+96]:8+4464]) != t8(=0x1).
  The `beq` branch at 0xee8 targets 0x1d30, is taken when a6(=[[a1+96]:8+4464]) == at(=0x2), and falls through when a6(=[[a1+96]:8+4464]) != at(=0x2).
  The `beq` branch at 0xef0 targets 0x1ce0, is taken when a6(=[[a1+96]:8+4464]) == v0(=0x3), and falls through when a6(=[[a1+96]:8+4464]) != v0(=0x3).
  The `beq` branch at 0x102c targets 0x1aac, is taken when a6(=[[a1+96]:8+4204]) == t8(=0x1), and falls through when a6(=[[a1+96]:8+4204]) != t8(=0x1).
  The `beq` branch at 0x1034 targets 0x1d80, is taken when a6(=[[a1+96]:8+4204]) == v1(=0x2), and falls through when a6(=[[a1+96]:8+4204]) != v1(=0x2).
  The `beq` branch at 0x103c targets 0x1d00, is taken when a6(=[[a1+96]:8+4204]) == a2(=0x3), and falls through when a6(=[[a1+96]:8+4204]) != a2(=0x3).
  The `beq` branch at 0x1274 targets 0x17cc, is taken when a7(=one of 0x0, 0x1) == 0, and falls through when a7(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x13c4 targets 0x13ac, is taken when a6(?) < 0x10 (signed), and falls through when a6(?) >= 0x10 (signed).
  The `bne` branch at 0x13d0 targets 0x13a0, is taken when a0(?) < 0x10 (signed), and falls through when a0(?) >= 0x10 (signed).
  The `bne` branch at 0x1410 targets 0x13f8, is taken when a6(?) < 0x10 (signed), and falls through when a6(?) >= 0x10 (signed).
  The `bne` branch at 0x141c targets 0x13ec, is taken when a0(?) < 0x10 (signed), and falls through when a0(?) >= 0x10 (signed).
  The `bne` branch at 0x145c targets 0x1444, is taken when a6(?) < 0x10 (signed), and falls through when a6(?) >= 0x10 (signed).
  The `bne` branch at 0x1468 targets 0x1438, is taken when a7(?) < 0x10 (signed), and falls through when a7(?) >= 0x10 (signed).
  The `bne` branch at 0x15a0 targets 0x1484, is taken when a0(?) < 0x10 (signed), and falls through when a0(?) >= 0x10 (signed).
  The `bne` branch at 0x15ec targets 0x15b8, is taken when a0(?) < 0x40 (signed), and falls through when a0(?) >= 0x40 (signed).
  The `bgez` branch at 0x17c4 targets 0x1770, is taken when a0(?) >= 0 (signed), and falls through when a0(?) < 0 (signed).
  The `beq` branch at 0x17cc targets 0x17f4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x17ec targets 0x192c and is always taken.
  The `beq` branch at 0x1aa4 targets 0x1024 and is always taken.
  The `beq` branch at 0x1cd8 targets 0x1270 and is always taken.
  The `beq` branch at 0x1cf8 targets 0x1024 and is always taken.
  The `beq` branch at 0x1d28 targets 0x1270 and is always taken.
  The `beq` branch at 0x1d78 targets 0x1024 and is always taken.
  The `beq` branch at 0x1e04 targets 0x1270 and is always taken.
  The return at 0x1970 has v0 = one of ret(odsyPushBufferSelect), [[a1+96]:8+11120].

- `odsyRestoreXform` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x1e0c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x1e0c-0x247c (1648 bytes).
  It occupies 1648 bytes.
  The `lw` at 0x1e0c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x1e10 loads 8 bytes from a1 (arg1 at entry) +0x60.
  The `ld` at 0x1e24 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `lw` at 0x1e28 loads 4 bytes from a0 (arg0 at entry) +0x2dc.
  The `lw` at 0x1e48 loads 4 bytes from [a1+96]:8 +0x2adc.
  The `lw` at 0x1e84 loads 4 bytes from [a1+96]:8 +0x26a0.
  117 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0x1eb4, `sw` at 0x1eb8, `sw` at 0x1ee0.
  16 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1ed4, `lw` at 0x1f7c, `lw` at 0x1f84.
  The `lw` at 0x1f28 loads 4 bytes from [a1+96]:8 +0x263c.
  The `lw` at 0x1f30 loads 4 bytes from [a1+96]:8 +0x2640.
  The `lw` at 0x1f38 loads 4 bytes from [a1+96]:8 +0x2644.
  The `lw` at 0x1f48 loads 4 bytes from [a1+96]:8 +0x2648.
  The `lw` at 0x2088 loads 4 bytes from [a1+96]:8 +0x26ac.
  10 such `sw` accesses store 4 bytes to [a1+96]:8 +0x26ac, including `sw` at 0x208c, `sw` at 0x2130, `sw` at 0x2180.
  The `lw` at 0x20a8 loads 4 bytes from [a1+96]:8 +0x1a10.
  The `lw` at 0x20b0 loads 4 bytes from [a1+96]:8 +0x1a14.
  The `lw` at 0x20b8 loads 4 bytes from [a1+96]:8 +0x1a18.
  The `lw` at 0x20c0 loads 4 bytes from [a1+96]:8 +0x1a1c.
  The `lw` at 0x20c8 loads 4 bytes from [a1+96]:8 +0x1a20.
  The `lw` at 0x20d0 loads 4 bytes from [a1+96]:8 +0x1a24.
  The `lw` at 0x20d8 loads 4 bytes from [a1+96]:8 +0x1a28.
  The `lw` at 0x20e0 loads 4 bytes from [a1+96]:8 +0x1a2c.
  The `lw` at 0x20e8 loads 4 bytes from [a1+96]:8 +0x1a30.
  The `lw` at 0x20f0 loads 4 bytes from [a1+96]:8 +0x1a34.
  The `lw` at 0x20f8 loads 4 bytes from [a1+96]:8 +0x1a38.
  The `lw` at 0x2100 loads 4 bytes from [a1+96]:8 +0x1a3c.
  The `lw` at 0x2108 loads 4 bytes from [a1+96]:8 +0x1a40.
  The `lw` at 0x2110 loads 4 bytes from [a1+96]:8 +0x1a44.
  The `lw` at 0x2118 loads 4 bytes from [a1+96]:8 +0x1a48.
  The `lw` at 0x2120 loads 4 bytes from [a1+96]:8 +0x1a4c.
  The `lw` at 0x2148 loads 4 bytes from [a1+96]:8 +0x1a50.
  The `lw` at 0x2150 loads 4 bytes from [a1+96]:8 +0x1a54.
  The `lw` at 0x2158 loads 4 bytes from [a1+96]:8 +0x1a58.
  The `lw` at 0x2168 loads 4 bytes from [a1+96]:8 +0x1a5c.
  The `lw` at 0x219c loads 4 bytes from [a1+96]:8 +0x1a60.
  The `lw` at 0x21a4 loads 4 bytes from [a1+96]:8 +0x1a64.
  The `lw` at 0x21ac loads 4 bytes from [a1+96]:8 +0x1a68.
  The `lw` at 0x21b4 loads 4 bytes from [a1+96]:8 +0x1a6c.
  The `lw` at 0x21bc loads 4 bytes from [a1+96]:8 +0x1a70.
  The `lw` at 0x21c4 loads 4 bytes from [a1+96]:8 +0x1a74.
  The `lw` at 0x21cc loads 4 bytes from [a1+96]:8 +0x1a78.
  The `lw` at 0x21d4 loads 4 bytes from [a1+96]:8 +0x1a7c.
  The `lw` at 0x21dc loads 4 bytes from [a1+96]:8 +0x1a80.
  The `lw` at 0x21e4 loads 4 bytes from [a1+96]:8 +0x1a84.
  The `lw` at 0x21ec loads 4 bytes from [a1+96]:8 +0x1a88.
  The `lw` at 0x21f4 loads 4 bytes from [a1+96]:8 +0x1a8c.
  The `lw` at 0x21fc loads 4 bytes from [a1+96]:8 +0x1a90.
  The `lw` at 0x2204 loads 4 bytes from [a1+96]:8 +0x1a94.
  The `lw` at 0x220c loads 4 bytes from [a1+96]:8 +0x1a98.
  The `lw` at 0x2214 loads 4 bytes from [a1+96]:8 +0x1a9c.
  The `lw` at 0x223c loads 4 bytes from [a1+96]:8 +0x1aa0.
  The `lw` at 0x2244 loads 4 bytes from [a1+96]:8 +0x1aa4.
  The `lw` at 0x224c loads 4 bytes from [a1+96]:8 +0x1aa8.
  The `lw` at 0x2254 loads 4 bytes from [a1+96]:8 +0x1aac.
  The `lw` at 0x225c loads 4 bytes from [a1+96]:8 +0x1ab0.
  The `lw` at 0x2264 loads 4 bytes from [a1+96]:8 +0x1ab4.
  The `lw` at 0x226c loads 4 bytes from [a1+96]:8 +0x1ab8.
  The `lw` at 0x2274 loads 4 bytes from [a1+96]:8 +0x1abc.
  The `lw` at 0x227c loads 4 bytes from [a1+96]:8 +0x1ac0.
  The `lw` at 0x2284 loads 4 bytes from [a1+96]:8 +0x1ac4.
  The `lw` at 0x228c loads 4 bytes from [a1+96]:8 +0x1ac8.
  The `lw` at 0x2294 loads 4 bytes from [a1+96]:8 +0x1acc.
  The `lw` at 0x229c loads 4 bytes from [a1+96]:8 +0x1ad0.
  The `lw` at 0x22a4 loads 4 bytes from [a1+96]:8 +0x1ad4.
  The `lw` at 0x22ac loads 4 bytes from [a1+96]:8 +0x1ad8.
  The `lw` at 0x22b4 loads 4 bytes from [a1+96]:8 +0x1adc.
  The `lw` at 0x22dc loads 4 bytes from [a1+96]:8 +0x1ae0.
  The `lw` at 0x22e4 loads 4 bytes from [a1+96]:8 +0x1ae4.
  The `lw` at 0x22ec loads 4 bytes from [a1+96]:8 +0x1ae8.
  The `lw` at 0x22f4 loads 4 bytes from [a1+96]:8 +0x1aec.
  The `lw` at 0x22fc loads 4 bytes from [a1+96]:8 +0x1af0.
  The `lw` at 0x2304 loads 4 bytes from [a1+96]:8 +0x1af4.
  The `lw` at 0x230c loads 4 bytes from [a1+96]:8 +0x1af8.
  The `lw` at 0x2314 loads 4 bytes from [a1+96]:8 +0x1afc.
  The `lw` at 0x231c loads 4 bytes from [a1+96]:8 +0x1b00.
  The `lw` at 0x2324 loads 4 bytes from [a1+96]:8 +0x1b04.
  The `lw` at 0x232c loads 4 bytes from [a1+96]:8 +0x1b08.
  The `lw` at 0x2334 loads 4 bytes from [a1+96]:8 +0x1b0c.
  The `lw` at 0x233c loads 4 bytes from [a1+96]:8 +0x1b10.
  The `lw` at 0x2344 loads 4 bytes from [a1+96]:8 +0x1b14.
  The `lw` at 0x234c loads 4 bytes from [a1+96]:8 +0x1b18.
  The `lw` at 0x2354 loads 4 bytes from [a1+96]:8 +0x1b1c.
  The `jal` at 0x2458 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[[a1+96]:8+10972], a3=[a0+736]:8+0x110000, a4=[a1+96]:8, a6=0xd, a7=0xb.
  The `jal` at 0x2460 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x246c calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `beq` branch at 0x1e20 targets 0x1e38, is taken when a2(=[a1]) == 0, and falls through when a2(=[a1]) != 0.
  The `beq` branch at 0x1e2c targets 0x1e38, is taken when at(=[a0+732]) == a2(=[a1]), and falls through when at(=[a0+732]) != a2(=[a1]).
  The `beq` branch at 0x1e4c targets 0x2440, is taken when t2(=one of 0x0, 0x1) == 0, and falls through when t2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1e60 targets 0x1e7c and is always taken.
  The `beq` branch at 0x1e68 targets 0x1e98 and is always taken.
  The `beq` branch at 0x1e78 targets 0x1ef8, is taken when a0(?) >= 0x200 (signed), and falls through when a0(?) < 0x200 (signed).
  The `beq` branch at 0x1e80 targets 0x1e90, is taken when a0(?) == t0(=0x1e0), and falls through when a0(?) != t0(=0x1e0).
  The `bne` branch at 0x1e88 targets 0x1e68, is taken when a0(?) != t1(=0x140), and falls through when a0(?) == t1(=0x140).
  The `beq` branch at 0x1e90 targets 0x1e70 and is always taken.
  The `beq` branch at 0x1eb0 targets 0x2430, is taken when a0(?) == t9(=0xa0), and falls through when a0(?) != t9(=0xa0).
  The `bne` branch at 0x1edc targets 0x1ec4, is taken when a5(?) < 0x10 (signed), and falls through when a5(?) >= 0x10 (signed).
  The `beq` branch at 0x1ef0 targets 0x1e70 and is always taken.
  The `beq` branch at 0x1f00 targets 0x202c, is taken when t2(=one of 0x0, 0x1) == 0, and falls through when t2(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x2024 targets 0x1f58, is taken when a7(?) < 0x8 (signed), and falls through when a7(?) >= 0x8 (signed).
  The `beq` branch at 0x2040 targets 0x244c, is taken when a2(=[[a1+96]:8+10972]) >= 0xff (unsigned), and falls through when a2(=[[a1+96]:8+10972]) < 0xff (unsigned).
  The `beq` branch at 0x204c targets 0x2088, is taken when a2(=[[a1+96]:8+10972]) == 0, and falls through when a2(=[[a1+96]:8+10972]) != 0.
  The `bne` branch at 0x2080 targets 0x2058, is taken when a0(?) < a2(=[[a1+96]:8+10972]) (unsigned), and falls through when a0(?) >= a2(=[[a1+96]:8+10972]) (unsigned).
  The `beq` branch at 0x2188 targets 0x2364, is taken when t2(=one of 0x0, 0x1) == 0, and falls through when t2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x2370 targets 0x23b0 and is always taken.
  The `beq` branch at 0x23ac targets 0x2420, is taken when a0(?) >= 0x16 (signed), and falls through when a0(?) < 0x16 (signed).
  The `beq` branch at 0x23b4 targets 0x23ec, is taken when a0(?) == a2(=0xe), and falls through when a0(?) != a2(=0xe).
  The `beq` branch at 0x23bc targets 0x23a4, is taken when a0(?) == a6(=0xd), and falls through when a0(?) != a6(=0xd).
  The `beq` branch at 0x23c4 targets 0x23a4, is taken when a0(?) == a7(=0xb), and falls through when a0(?) != a7(=0xb).
  The `beq` branch at 0x23cc targets 0x23a4, is taken when a0(?) == t0(=0xf), and falls through when a0(?) != t0(=0xf).
  The `beq` branch at 0x23d4 targets 0x23a4, is taken when a0(?) == t1(=0x10), and falls through when a0(?) != t1(=0x10).
  The `beq` branch at 0x23dc targets 0x23a4, is taken when a0(?) == t2(=0x6), and falls through when a0(?) != t2(=0x6).
  The `beq` branch at 0x23e4 targets 0x2378 and is always taken.
  The `beq` branch at 0x23fc targets 0x2428, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x2418 targets 0x23a4 and is always taken.
  The `beq` branch at 0x2428 targets 0x23a4 and is always taken.
  The `beq` branch at 0x2438 targets 0x1ebc and is always taken.
  The `beq` branch at 0x2444 targets 0x1ef8 and is always taken.
  The `beq` branch at 0x2474 targets 0x2420 and is always taken.
  The return at 0x2420 has v0 = one of ?, ret(psignal).

- `odsyRestoreVB` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x247c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x247c-0x34a4 (4136 bytes).
  It occupies 4136 bytes.
  The `lw` at 0x2484 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x2488 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0x2498 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `lw` at 0x24a4 loads 4 bytes from a0 (arg0 at entry) +0x2dc.
  46 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x24c4, `lw` at 0x2524, `lw` at 0x2560.
  70 such `lw` accesses load 4 bytes from ?, including `lw` at 0x24dc, `lw` at 0x2538, `lw` at 0x2558.
  39 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0x2520, `sw` at 0x255c, `sw` at 0x25d8.
  7 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x29ec, `lw` at 0x2a38, `lw` at 0x2a70.
  The `jal` at 0x3244 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a4=0x0.
  The `jal` at 0x3270 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a4=0x0.
  The `jal` at 0x32a4 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a4=0xfffff.
  The `jal` at 0x32cc calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a5=0x3ffff.
  The `jal` at 0x32f8 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x331c calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x3340 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x3364 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x3388 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x33ac calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x33cc calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x33ec calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a5=0xfffffff.
  The `jal` at 0x3410 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a5=0x3ffffff.
  The `jal` at 0x3430 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a5=0xffffff.
  The `jal` at 0x3450 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a5=0x3fffff.
  The `jal` at 0x3474 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x3494 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `beq` branch at 0x249c targets 0x24b8, is taken when 0 >= a3(=[a1]) (unsigned), and falls through when 0 < a3(=[a1]) (unsigned).
  The `beq` branch at 0x24a8 targets 0x24bc, is taken when at(=[a0+732]) == a3(=[a1]), and falls through when at(=[a0+732]) != a3(=[a1]).
  The `beq` branch at 0x24b0 targets 0x24bc and is always taken.
  The `beq` branch at 0x24bc targets 0x31fc, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x24e8 targets 0x2514, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x2500 targets 0x2514, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x250c targets 0x32b8, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2544 targets 0x2590, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x2588 targets 0x2550, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `bne` branch at 0x25ac targets 0x25d8, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x25c4 targets 0x25d8, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x25d0 targets 0x32e8, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x25fc targets 0x2648, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `bne` branch at 0x2640 targets 0x2608, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `bne` branch at 0x2664 targets 0x2690, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x267c targets 0x2690, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x2688 targets 0x330c, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x26b4 targets 0x2700, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `bne` branch at 0x26f8 targets 0x26c0, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `bne` branch at 0x271c targets 0x2748, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x2734 targets 0x2748, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x2740 targets 0x3330, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x276c targets 0x27b8, is taken when (a4(?) & 0xf) == 0, and falls through when (a4(?) & 0xf) != 0.
  The `bne` branch at 0x27b0 targets 0x2778, is taken when a4(?) < at(?) (unsigned), and falls through when a4(?) >= at(?) (unsigned).
  The `bne` branch at 0x27d4 targets 0x2800, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x27ec targets 0x2800, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x27f8 targets 0x3354, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2824 targets 0x2870, is taken when (a4(?) & 0xf) == 0, and falls through when (a4(?) & 0xf) != 0.
  The `bne` branch at 0x2868 targets 0x2830, is taken when a4(?) < at(?) (unsigned), and falls through when a4(?) >= at(?) (unsigned).
  The `bne` branch at 0x288c targets 0x28b8, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x28a4 targets 0x28b8, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x28b0 targets 0x3378, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x28dc targets 0x2928, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `bne` branch at 0x2920 targets 0x28e8, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `bne` branch at 0x2948 targets 0x2974, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x2960 targets 0x2974, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x296c targets 0x339c, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x299c targets 0x29ec, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x29e4 targets 0x29a8, is taken when a0(?) < at(?) (unsigned), and falls through when a0(?) >= at(?) (unsigned).
  The `bne` branch at 0x2a08 targets 0x2a34, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x2a20 targets 0x2a34, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x2a2c targets 0x33bc, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2a54 targets 0x2a9c, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `bne` branch at 0x2a94 targets 0x2a60, is taken when a2(?) < a1(?) (unsigned), and falls through when a2(?) >= a1(?) (unsigned).
  The `bne` branch at 0x2ac4 targets 0x2af0, is taken when (at(?) & 0xf) != 0, and falls through when (at(?) & 0xf) == 0.
  The `beq` branch at 0x2adc targets 0x2af0, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x2ae8 targets 0x33dc, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2b14 targets 0x2b60, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `bne` branch at 0x2b58 targets 0x2b20, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `bne` branch at 0x2b84 targets 0x2bb0, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x2b9c targets 0x2bb0, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x2ba8 targets 0x3400, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2bd4 targets 0x2c20, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `bne` branch at 0x2c18 targets 0x2be0, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `bne` branch at 0x2c44 targets 0x2c70, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x2c5c targets 0x2c70, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x2c68 targets 0x3424, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2c94 targets 0x2ce0, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `bne` branch at 0x2cd8 targets 0x2ca0, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `bne` branch at 0x2d04 targets 0x2d30, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x2d1c targets 0x2d30, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x2d28 targets 0x3444, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2d54 targets 0x2da4, is taken when (a4(?) & 0xf) == 0, and falls through when (a4(?) & 0xf) != 0.
  The `bne` branch at 0x2d98 targets 0x2d60, is taken when a4(?) < at(?) (unsigned), and falls through when a4(?) >= at(?) (unsigned).
  The `bne` branch at 0x2e24 targets 0x2e50, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x2e3c targets 0x2e50, is taken when a0(?) == a1(=0x3000c02e), and falls through when a0(?) != a1(=0x3000c02e).
  The `bne` branch at 0x2e48 targets 0x3468, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2e74 targets 0x2ec0, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `bne` branch at 0x2eb8 targets 0x2e80, is taken when a2(?) < a1(?) (unsigned), and falls through when a2(?) >= a1(?) (unsigned).
  The `bne` branch at 0x2ee0 targets 0x2f0c, is taken when (at(?) & 0xf) != 0, and falls through when (at(?) & 0xf) == 0.
  The `beq` branch at 0x2ef8 targets 0x2f0c, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x2f04 targets 0x3484, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2f30 targets 0x2f7c, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `bne` branch at 0x2f74 targets 0x2f3c, is taken when a2(?) < a1(?) (unsigned), and falls through when a2(?) >= a1(?) (unsigned).
  The `bne` branch at 0x2f9c targets 0x2fcc, is taken when (at(?) & 0xf) != 0, and falls through when (at(?) & 0xf) == 0.
  The `beq` branch at 0x2fb8 targets 0x2fcc, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x2fc4 targets 0x3234, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x2ff8 targets 0x3044, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x3038 targets 0x3004, is taken when a4(?) < at(?) (unsigned), and falls through when a4(?) >= at(?) (unsigned).
  The `bne` branch at 0x3060 targets 0x3090, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x307c targets 0x3090, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x3088 targets 0x325c, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x30c0 targets 0x310c, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x3104 targets 0x30cc, is taken when a4(?) < at(?) (unsigned), and falls through when a4(?) >= at(?) (unsigned).
  The `bne` branch at 0x3134 targets 0x3164, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x3150 targets 0x3164, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x315c targets 0x3288, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x3198 targets 0x31e8, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x31e0 targets 0x31a8, is taken when a0(?) < at(?) (unsigned), and falls through when a0(?) >= at(?) (unsigned).
  The `beq` branch at 0x31fc targets 0x3220, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bgtz` branch at 0x3204 targets 0x24c4, is taken when a4 > 0 (signed), and falls through when a4 <= 0 (signed).
  The `beq` branch at 0x3218 targets 0x2f7c and is always taken.
  The `beq` branch at 0x322c targets 0x2f7c and is always taken.
  The `beq` branch at 0x3254 targets 0x3040 and is always taken.
  The `beq` branch at 0x3280 targets 0x310c and is always taken.
  The `beq` branch at 0x32b0 targets 0x31e8 and is always taken.
  The `beq` branch at 0x32e0 targets 0x2590 and is always taken.
  The `beq` branch at 0x3304 targets 0x2648 and is always taken.
  The `beq` branch at 0x3328 targets 0x2700 and is always taken.
  The `beq` branch at 0x334c targets 0x27b8 and is always taken.
  The `beq` branch at 0x3370 targets 0x2870 and is always taken.
  The `beq` branch at 0x3394 targets 0x2928 and is always taken.
  The `beq` branch at 0x33b4 targets 0x29ec and is always taken.
  The `beq` branch at 0x33d4 targets 0x2a9c and is always taken.
  The `beq` branch at 0x33f8 targets 0x2b60 and is always taken.
  The `beq` branch at 0x341c targets 0x2c20 and is always taken.
  The `beq` branch at 0x343c targets 0x2ce0 and is always taken.
  The `beq` branch at 0x3460 targets 0x2da4 and is always taken.
  The `beq` branch at 0x347c targets 0x2ec0 and is always taken.
  The `beq` branch at 0x349c targets 0x2f7c and is always taken.
  The return at 0x31f4 has v0 = one of ?, ret(cmn_err).

- `odsyRestoreGfe` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x34a4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x34a4-0x38ec (1096 bytes).
  It occupies 1096 bytes.
  The `ld` at 0x34a4 loads 8 bytes from a1 (arg1 at entry) +0x60.
  The `lw` at 0x34a8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x34ac loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `ld` at 0x34cc loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `lw` at 0x34d0 loads 4 bytes from a0 (arg0 at entry) +0x2dc.
  89 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0x34f8, `sw` at 0x34fc, `sw` at 0x3500.
  The `lw` at 0x351c loads 4 bytes from [a1+112]:8 +0xac.
  The `lw` at 0x3534 loads 4 bytes from [a1+112]:8 +0xb8.
  The `lw` at 0x3544 loads 4 bytes from [a1+96]:8 +0x1b8c.
  3 such `lw` accesses load 4 bytes from [a1+112]:8 +0x240, including `lw` at 0x3550, `lw` at 0x358c, `lw` at 0x35b0.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x35a8, `lw` at 0x3624, `lw` at 0x36a0.
  3 such `lw` accesses load 4 bytes from [a1+112]:8 +0x250, including `lw` at 0x35cc, `lw` at 0x3608, `lw` at 0x362c.
  3 such `lw` accesses load 4 bytes from [a1+112]:8 +0x260, including `lw` at 0x3648, `lw` at 0x3684, `lw` at 0x36a8.
  3 such `lw` accesses load 4 bytes from [a1+112]:8 +0x270, including `lw` at 0x36c4, `lw` at 0x3700, `lw` at 0x3724.
  The `jal` at 0x387c calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=[[a1+112]:8+576], a4=[a1+96]:8, a5=[a1].
  The `jal` at 0x3898 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=[[a1+112]:8+592].
  The `jal` at 0x38b8 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=[[a1+112]:8+608].
  The `jal` at 0x38dc calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=[[a1+112]:8+624].
  The `beq` branch at 0x34c8 targets 0x34e8, is taken when a5(=[a1]) == 0, and falls through when a5(=[a1]) != 0.
  The `beq` branch at 0x34d4 targets 0x34e8, is taken when at(=[a0+732]) == a5(=[a1]), and falls through when at(=[a0+732]) != a5(=[a1]).
  The `beq` branch at 0x34e0 targets 0x34f0 and is always taken.
  The `beq` branch at 0x3548 targets 0x3860, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x355c targets 0x3588, is taken when (at(?) & 0xf) != 0, and falls through when (at(?) & 0xf) == 0.
  The `beq` branch at 0x3574 targets 0x3588, is taken when a0(?) == v0(=0x3000c02e), and falls through when a0(?) != v0(=0x3000c02e).
  The `bne` branch at 0x3580 targets 0x3870, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x3598 targets 0x35cc, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x35c4 targets 0x35a4, is taken when a0(?) < v0(?) (unsigned), and falls through when a0(?) >= v0(?) (unsigned).
  The `bne` branch at 0x35d8 targets 0x3604, is taken when (a1(?) & 0xf) != 0, and falls through when (a1(?) & 0xf) == 0.
  The `beq` branch at 0x35f0 targets 0x3604, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x35fc targets 0x388c, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x3614 targets 0x3648, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x3640 targets 0x3620, is taken when a0(?) < v0(?) (unsigned), and falls through when a0(?) >= v0(?) (unsigned).
  The `bne` branch at 0x3660 targets 0x3680, is taken when (a1(?) & 0xf) != 0, and falls through when (a1(?) & 0xf) == 0.
  The `beq` branch at 0x366c targets 0x3680, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x3678 targets 0x38a8, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x3690 targets 0x36c4, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x36bc targets 0x369c, is taken when a0(?) < v0(?) (unsigned), and falls through when a0(?) >= v0(?) (unsigned).
  The `bne` branch at 0x36dc targets 0x36fc, is taken when (a1(?) & 0xf) != 0, and falls through when (a1(?) & 0xf) == 0.
  The `beq` branch at 0x36e8 targets 0x36fc, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x36f4 targets 0x38c8, is taken when a0(?) != a1(=0x2f00c02e), and falls through when a0(?) == a1(=0x2f00c02e).
  The `beq` branch at 0x370c targets 0x3740, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x3738 targets 0x3718, is taken when a0(?) < v0(?) (unsigned), and falls through when a0(?) >= v0(?) (unsigned).
  The `beq` branch at 0x3884 targets 0x35cc and is always taken.
  The `beq` branch at 0x38a0 targets 0x3648 and is always taken.
  The `beq` branch at 0x38c0 targets 0x36c4 and is always taken.
  The `beq` branch at 0x38e4 targets 0x3740 and is always taken.
  The return at 0x3868 has v0 = one of [[a1+96]:8+7052], 0x3cf9.

- `odsyRestorePIOPixel` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x38ec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x38ec-0x3a80 (404 bytes).
  It occupies 404 bytes.
  The `ld` at 0x38ec loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `lw` at 0x38f4 loads 4 bytes from [a1+112]:8 +0xb8.
  The `ld` at 0x3910 loads 8 bytes from a1 (arg1 at entry) +0x60.
  The `lw` at 0x3924 loads 4 bytes from [a1+96]:8 +0x1b84.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x3944, `lw` at 0x3948, `lw` at 0x3964.
  The `lw` at 0x3980 loads 4 bytes from [a1+112]:8 +0x80.
  The `lw` at 0x3994 loads 4 bytes from [a1+96]:8 +0x1b78.
  The `lw` at 0x3998 loads 4 bytes from [a1+96]:8 +0x1b74.
  The `lw` at 0x39c8 loads 4 bytes from [a1+112]:8 +0xac.
  The `sw` at 0x39fc stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x3a04, `sw` at 0x3a08.
  The `lw` at 0x3a18 loads 4 bytes from [a1+96]:8 +0x1b80.
  The `lw` at 0x3a20 loads 4 bytes from [a1+96]:8 +0x1b88.
  The `lw` at 0x3a24 loads 4 bytes from [a1+112]:8 +0x310.
  The `lw` at 0x3a28 loads 4 bytes from [a1+112]:8 +0x300.
  The `lw` at 0x3a38 loads 4 bytes from [a1+112]:8 +0x314.
  The `lw` at 0x3a3c loads 4 bytes from [a1+112]:8 +0x304.
  The `jal` at 0x3a70 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=[a1+112]:8, a7=a3 at entry (arg3).
  The `beq` branch at 0x391c targets 0x3a1c, is taken when (at(?) & 0x1) == 0, and falls through when (at(?) & 0x1) != 0.
  The `beq` branch at 0x3928 targets 0x3978, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3930 targets 0x3978, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x394c targets 0x3978, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x3978 targets 0x3a14, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x398c targets 0x3a24, is taken when at(?) == v0(=0x2), and falls through when at(?) != v0(=0x2).
  The `blez` branch at 0x399c targets 0x3a68, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0x39a8 targets 0x3a6c, is taken when a2(?) >= 0x801 (signed), and falls through when a2(?) < 0x801 (signed).
  The `blez` branch at 0x39b0 targets 0x3a6c, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0x39b8 targets 0x3a6c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `blez` branch at 0x39c0 targets 0x3a6c, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `bne` branch at 0x3a00 targets 0x3a0c, is taken when a0(?) < a3(?) (unsigned), and falls through when a0(?) >= a3(?) (unsigned).
  The `beq` branch at 0x3a14 targets 0x3980 and is always taken.
  The `beq` branch at 0x3a1c targets 0x3928 and is always taken.
  The `bltz` branch at 0x3a30 targets 0x3a58, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bltz` branch at 0x3a44 targets 0x3a60, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0x3a50 targets 0x399c and is always taken.
  The `beq` branch at 0x3a58 targets 0x3a38 and is always taken.
  The `beq` branch at 0x3a60 targets 0x3a50 and is always taken.
  The `beq` branch at 0x3a78 targets 0x3a0c and is always taken.
  The return at 0x3a0c has v0 = one of ?, ret(cmn_err).

- `odsySetProgram` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x3a80 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x3a80-0x3df8 (888 bytes).
  It occupies 888 bytes.
  The `ld` at 0x3a80 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `ld` at 0x3a8c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x3a94 loads 8 bytes from a1 (arg1 at entry) +0x60.
  The `lw` at 0x3ab8 loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2af0.
  The `lw` at 0x3acc loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2af4.
  The `lw` at 0x3ad0 loads 4 bytes from [a1+96]:8 +0x2b38.
  The `lw` at 0x3ad4 loads 4 bytes from [a1+96]:8 +0x2b34.
  The `lw` at 0x3b34 loads 4 bytes from a0 (arg0 at entry) +0x2834.
  The `sw` at 0x3b68 stores 4 bytes to [a1+96]:8 +0x2b34.
  The `lw` at 0x3b6c loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2afc.
  2 such `lw` accesses load 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2af8, including `lw` at 0x3b78, `lw` at 0x3bc0.
  The `sw` at 0x3bc8 stores 4 bytes to [a1+96]:8 +0x2b38.
  9 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0x3bd8, `sw` at 0x3c04, `sw` at 0x3c0c.
  The `lw` at 0x3be0 loads 4 bytes from ?.
  The `lw` at 0x3c18 loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2aec.
  The `lw` at 0x3c34 loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2ae0.
  The `lw` at 0x3c50 loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2ae4.
  The `lw` at 0x3c74 loads 4 bytes from ((a2 << 0x5) + [a1+96]:8) +0x2ae8.
  The `jal` at 0x3b14 calls odsyDownloadUcode with a0=a0 at entry (arg0), a1=[[a1+96]:8+11064], a2=?, a3=0x1, a4=[a0+72]:8.
  The `jal` at 0x3b58 calls odsyDownloadUcode with a0=a0 at entry (arg0), a1=0x738, a2=[((a2 << 0x5) + [a1+96]:8)+10996], a3=?, a4=[a0+72]:8, a5=[[a1+96]:8+11060].
  The `jal` at 0x3b80 calls odsyDownloadUcode with a0=a0 at entry (arg0), a1=[((a2 << 0x5) + [a1+96]:8)+11000], a2=[((a2 << 0x5) + [a1+96]:8)+11004], a3=0x1, a4=[a0+72]:8.
  The `jal` at 0x3cd0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=0x2.
  The `jal` at 0x3cd8 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3ce4 calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0x3d14 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[((a2 << 0x5) + [a1+96]:8)+10992], a3=[a0+736]:8.
  The `jal` at 0x3d1c calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3d28 calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0x3d58 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3d60 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3d6c calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0x3d90 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3d98 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3da4 calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0x3dd4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3ddc calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3de8 calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `beq` branch at 0x3ab4 targets 0x3cac, is taken when a2 >= 0x2 (signed), and falls through when a2 < 0x2 (signed).
  The `beq` branch at 0x3ac0 targets 0x3cf4, is taken when s5(=[((a2 << 0x5) + [a1+96]:8)+10992]) >= 0xfe (unsigned), and falls through when s5(=[((a2 << 0x5) + [a1+96]:8)+10992]) < 0xfe (unsigned).
  The `beq` branch at 0x3ad8 targets 0x3afc, is taken when s0(=[((a2 << 0x5) + [a1+96]:8)+10996]) == 0, and falls through when s0(=[((a2 << 0x5) + [a1+96]:8)+10996]) != 0.
  The `bne` branch at 0x3ae4 targets 0x3afc, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x3af4 targets 0x3b0c and is always taken.
  The `bne` branch at 0x3b1c targets 0x3d38, is taken when v0(=ret(odsyDownloadUcode)) != 0, and falls through when v0(=ret(odsyDownloadUcode)) == 0.
  The `beq` branch at 0x3b24 targets 0x3b6c, is taken when s0(=[((a2 << 0x5) + [a1+96]:8)+10996]) == 0, and falls through when s0(=[((a2 << 0x5) + [a1+96]:8)+10996]) != 0.
  The `beq` branch at 0x3b2c targets 0x3b6c, is taken when s0(=[((a2 << 0x5) + [a1+96]:8)+10996]) == a5(=[[a1+96]:8+11060]), and falls through when s0(=[((a2 << 0x5) + [a1+96]:8)+10996]) != a5(=[[a1+96]:8+11060]).
  The `bne` branch at 0x3b40 targets 0x3b4c, is taken when a0(?) < 0xc8 (unsigned), and falls through when a0(?) >= 0xc8 (unsigned).
  The `bne` branch at 0x3b60 targets 0x3db4, is taken when v0(=ret(odsyDownloadUcode)) != 0, and falls through when v0(=ret(odsyDownloadUcode)) == 0.
  The `bne` branch at 0x3ba4 targets 0x3d7c, is taken when v0(=ret(odsyDownloadUcode)) != 0, and falls through when v0(=ret(odsyDownloadUcode)) == 0.
  The `beq` branch at 0x3cec targets 0x3ca4 and is always taken.
  The `beq` branch at 0x3d30 targets 0x3ca4 and is always taken.
  The `beq` branch at 0x3d74 targets 0x3ca4 and is always taken.
  The `beq` branch at 0x3dac targets 0x3ca4 and is always taken.
  The `beq` branch at 0x3df0 targets 0x3ca4 and is always taken.
  The return at 0x3ca4 has v0 = one of 0x2a008000, ret(psignal).

- `odsyRestartContext` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x3df8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x3df8-0x45b8 (1984 bytes).
  It occupies 1984 bytes.
  The `ld` at 0x3e08 loads 8 bytes from a1 (arg1 at entry) +0x60.
  The `ld` at 0x3e0c loads 8 bytes from a1 (arg1 at entry) +0x70.
  18 such `lw` accesses load 4 bytes from [a1+112]:8 +0x80, including `lw` at 0x3e1c, `lw` at 0x3e54, `lw` at 0x3e70.
  The `ld` at 0x3e50 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  42 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0x3e90, `sw` at 0x4044, `sw` at 0x404c.
  5 such `sw` accesses store 4 bytes to [a1+112]:8 +0x80, including `sw` at 0x3ed0, `sw` at 0x3f04, `sw` at 0x3f14.
  The `lw` at 0x3ff4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x40d0 loads 4 bytes from [a1+96]:8 +0x2adc.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x2b30, including `lw` at 0x40ec, `lw` at 0x440c.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x26a8, including `lw` at 0x40f0, `lw` at 0x4498.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x2680, including `lw` at 0x4114, `lw` at 0x44bc.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x2684, including `lw` at 0x4138, `lw` at 0x44e0.
  2 such `lw` accesses load 4 bytes from [a1+96]:8 +0x268c, including `lw` at 0x415c, `lw` at 0x4504.
  The `lw` at 0x41b8 loads 4 bytes from [a1+112]:8 +0xb4.
  The `lw` at 0x41c8 loads 4 bytes from [a1+112]:8 +0xbc.
  10 such `sd` accesses store 8 bytes to [a0+736]:8 +0x110000, including `sd` at 0x41f4, `sd` at 0x4210, `sd` at 0x4214.
  The `lwu` at 0x41f8 loads 4 bytes from [a1+112]:8 +0xb4.
  2 such `lwu` accesses load 4 bytes from [a1+112]:8 +0xb0, including `lwu` at 0x41fc, `lwu` at 0x4568.
  The `lwu` at 0x421c loads 4 bytes from [a1+112]:8 +0x4.
  The `lw` at 0x4230 loads 4 bytes from [a1+96]:8 +0x26ac.
  2 such `lwu` accesses load 4 bytes from ?, including `lwu` at 0x4270, `lwu` at 0x4278.
  The `lw` at 0x42a0 loads 4 bytes from ?.
  The `ld` at 0x42c8 loads 8 bytes from ?.
  The `lw` at 0x43bc loads 4 bytes from [a1+96]:8 +0x1b34.
  The `lw` at 0x43f0 loads 4 bytes from [a1+112]:8 +0xac.
  The `lw` at 0x4448 loads 4 bytes from [a1+96]:8 +0x1b4c.
  The `lw` at 0x4450 loads 4 bytes from [a1+96]:8 +0x1b50.
  The `lw` at 0x4458 loads 4 bytes from [a1+96]:8 +0x1b54.
  The `lw` at 0x4460 loads 4 bytes from [a1+96]:8 +0x1b58.
  The `lw` at 0x4468 loads 4 bytes from [a1+96]:8 +0x1b5c.
  The `lw` at 0x4470 loads 4 bytes from [a1+96]:8 +0x1b60.
  The `lw` at 0x4478 loads 4 bytes from [a1+96]:8 +0x1b64.
  The `lw` at 0x4480 loads 4 bytes from [a1+96]:8 +0x1b68.
  The `lw` at 0x4488 loads 4 bytes from [a1+96]:8 +0x1b6c.
  The `lw` at 0x4490 loads 4 bytes from [a1+96]:8 +0x1b70.
  The `jal` at 0x40c8 calls odsyRestoreVB with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+112]:8+132, a3=?.
  The `jal` at 0x40e8 calls odsySetProgram with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[a1+96]:8+11056], a3=?, a5=[[a1+96]:8+10972].
  The `jalr` at 0x42dc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=sp-128, a6=sym(.data).
  The `jal` at 0x4408 calls odsySetProgram with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[a1+96]:8+11056], a3=?.
  The `jal` at 0x4420 calls odsyRestoreVB with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+112]:8+132, a3=?, a4=0x0.
  The `jal` at 0x45a8 calls odsyRestorePIOPixel with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-120, a3=sp-116, a5=0x34008000.
  The `beq` branch at 0x3e4c targets 0x3e64, is taken when s5(?) >= 0xb (unsigned), and falls through when s5(?) < 0xb (unsigned).
  The `beq` branch at 0x3e94 targets 0x43bc, is taken when t1(=0xa) == s2(?), and falls through when t1(=0xa) != s2(?).
  The `beq` branch at 0x3ecc targets 0x3f08, is taken when v0(?) >= 0x7 (unsigned), and falls through when v0(?) < 0x7 (unsigned).
  The `beq` branch at 0x3f00 targets 0x3f18 and is always taken.
  The `beq` branch at 0x3f24 targets 0x3f4c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x3f30 targets 0x3f4c, is taken when s2(?) == a5(=0x2), and falls through when s2(?) != a5(=0x2).
  The `beq` branch at 0x3f38 targets 0x3f4c, is taken when s2(?) == at(=0x6), and falls through when s2(?) != at(=0x6).
  The `beq` branch at 0x3f40 targets 0x3f4c, is taken when s2(?) == v0(=0x9), and falls through when s2(?) != v0(=0x9).
  The `beq` branch at 0x4030 targets 0x42f0, is taken when s7(=one of 0x0, 0x1) == 0, and falls through when s7(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x4038 targets 0x405c, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x4078 targets 0x40b0, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `bne` branch at 0x4090 targets 0x42b4, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `beq` branch at 0x4098 targets 0x40b0, is taken when s7(=one of 0x0, 0x1) == 0, and falls through when s7(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x40b0 targets 0x41a0, is taken when t1(=0xa) == s2(?), and falls through when t1(=0xa) != s2(?).
  The `beq` branch at 0x40d8 targets 0x419c, is taken when a5(=[[a1+96]:8+10972]) == 0, and falls through when a5(=[[a1+96]:8+10972]) != 0.
  The `beq` branch at 0x419c targets 0x4584, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x41c4 targets 0x4540, is taken when a6(=[[a1+112]:8+180]) == 0, and falls through when a6(=[[a1+112]:8+180]) != 0.
  The `beq` branch at 0x41cc targets 0x41d8, is taken when a2(=[[a1+112]:8+188]) == 0, and falls through when a2(=[[a1+112]:8+188]) != 0.
  The `beq` branch at 0x41e8 targets 0x454c, is taken when (a4(?) & 0x1) == 0, and falls through when (a4(?) & 0x1) != 0.
  The `bne` branch at 0x4264 targets 0x4298, is taken when a0(?) < 0x2 (signed), and falls through when a0(?) >= 0x2 (signed).
  The `beq` branch at 0x4290 targets 0x426c, is taken when a0(?) >= 0x2 (signed), and falls through when a0(?) < 0x2 (signed).
  The `beq` branch at 0x4298 targets 0x42a8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x42e8 targets 0x40b0 and is always taken.
  The `beq` branch at 0x43ac targets 0x405c, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x43b4 targets 0x4040 and is always taken.
  The `beq` branch at 0x43cc targets 0x4400, is taken when (at(=[[a1+96]:8+6964]) & 0x7) == 0, and falls through when (at(=[[a1+96]:8+6964]) & 0x7) != 0.
  The `beq` branch at 0x43e0 targets 0x43f0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x43f8 targets 0x459c, is taken when v1(=[[a1+112]:8+172]) != 0, and falls through when v1(=[[a1+112]:8+172]) == 0.
  The `beq` branch at 0x4434 targets 0x4498, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x4538 targets 0x3e9c and is always taken.
  The `beq` branch at 0x4544 targets 0x422c and is always taken.
  The `beq` branch at 0x457c targets 0x422c and is always taken.
  The `beq` branch at 0x4594 targets 0x41a0 and is always taken.
  The `beq` branch at 0x45b0 targets 0x4404 and is always taken.
  The return at 0x42ac has v0 = ?.

- `odsyRestoreVertex` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x45b8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x45b8-0x471c (356 bytes).
  It occupies 356 bytes.
  The `ld` at 0x45b8 loads 8 bytes from a4 (arg4 at entry) +0x0.
  The `ld` at 0x45dc loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `ld` at 0x45f0 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0x4604 loads 8 bytes from a1 (arg1 at entry) +0x60.
  The `sd` at 0x461c stores 8 bytes to a4 (arg4 at entry) +0x0.
  The `lw` at 0x4620 loads 4 bytes from [a1+96]:8 +0x2adc.
  The `lw` at 0x464c loads 4 bytes from ((a5 << 0x2) + [a1+96]:8) +0x2b20.
  3 such `lw` accesses load 4 bytes from ((a5 << 0x2) + [a1+112]:8) +0x100, including `lw` at 0x4658, `lw` at 0x46a0, `lw` at 0x46c8.
  2 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0x469c, `sw` at 0x46c4.
  The `lw` at 0x46c0 loads 4 bytes from ?.
  The `jal` at 0x4610 calls odsyRestoreVB with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=((a5 << 0x3) + [a1+112]:8)+140, a3=[a4]:8, a4=a2 at entry (arg2).
  The `jal` at 0x4648 calls odsySetProgram with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[((a5 << 0x2) + [a1+96]:8)+11040], a3=?, a6=[[a1+96]:8+10972].
  The `jal` at 0x470c calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=[((a5 << 0x2) + [a1+112]:8)+256], a6=0x110000.
  The `beq` branch at 0x4630 targets 0x4654, is taken when a6(=[[a1+96]:8+10972]) == 0, and falls through when a6(=[[a1+96]:8+10972]) != 0.
  The `bne` branch at 0x4678 targets 0x4694, is taken when (a6(?) & 0xf) != 0, and falls through when (a6(?) & 0xf) == 0.
  The `beq` branch at 0x4688 targets 0x4694, is taken when a0(?) == at(=0x3000c02e), and falls through when a0(?) != at(=0x3000c02e).
  The `bne` branch at 0x4690 targets 0x46f4, is taken when a0(?) != a6(=0x2f00c02e), and falls through when a0(?) == a6(=0x2f00c02e).
  The `beq` branch at 0x46ac targets 0x46e4, is taken when (at(?) & 0xf) == 0, and falls through when (at(?) & 0xf) != 0.
  The `bne` branch at 0x46dc targets 0x46b8, is taken when a0(?) < at(?) (unsigned), and falls through when a0(?) >= at(?) (unsigned).
  The `beq` branch at 0x4714 targets 0x46e4 and is always taken.
  The return at 0x46ec has v0 = one of ?, ret(cmn_err).

- `restorePoints` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x471c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x471c-0x4724 (8 bytes).
  It occupies 8 bytes.
  The return at 0x471c has v0 = ?.

- `restoreLines` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x4724 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x4724-0x475c (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x4748 calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4754 has v0 = ret(odsyRestoreVertex).

- `restoreLineLoop` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x475c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x475c-0x47d8 (124 bytes).
  It occupies 124 bytes.
  The `jal` at 0x477c calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x0.
  The `jal` at 0x47c8 calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x3, a7=a3+1.
  The `beq` branch at 0x4788 targets 0x479c, is taken when s0(=a2) >= 0x2 (signed), and falls through when s0(=a2) < 0x2 (signed).
  The `beq` branch at 0x47d0 targets 0x4790 and is always taken.
  The return at 0x4794 has v0 = ret(odsyRestoreVertex).

- `restoreLineStrip` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x47d8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x47d8-0x4810 (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x47fc calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4808 has v0 = ret(odsyRestoreVertex).

- `restoreTriangles` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x4810 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x4810-0x48e4 (212 bytes).
  It occupies 212 bytes.
  The `jal` at 0x488c calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0x4868 targets 0x48c0, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `bne` branch at 0x48b4 targets 0x4874, is taken when s2(?) < s1(=a2) (signed), and falls through when s2(?) >= s1(=a2) (signed).
  The return at 0x48dc has v0 = ?.

- `restoreTriStrip` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x48e4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x48e4-0x49b8 (212 bytes).
  It occupies 212 bytes.
  The `jal` at 0x4960 calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0x493c targets 0x4994, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `bne` branch at 0x4988 targets 0x4948, is taken when s2(?) < s1(=a2) (signed), and falls through when s2(?) >= s1(=a2) (signed).
  The return at 0x49b0 has v0 = ?.

- `restoreTriFan` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x49b8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x49b8-0x4a34 (124 bytes).
  It occupies 124 bytes.
  The `jal` at 0x49d8 calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x0.
  The `jal` at 0x4a24 calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x3, a7=a3+1.
  The `beq` branch at 0x49e4 targets 0x49f8, is taken when s0(=a2) >= 0x2 (signed), and falls through when s0(=a2) < 0x2 (signed).
  The `beq` branch at 0x4a2c targets 0x49ec and is always taken.
  The return at 0x49f0 has v0 = ret(odsyRestoreVertex).

- `restoreQuads` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x4a34 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x4a34-0x4b08 (212 bytes).
  It occupies 212 bytes.
  The `jal` at 0x4ab0 calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0x4a8c targets 0x4ae4, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `bne` branch at 0x4ad8 targets 0x4a98, is taken when s2(?) < s1(=a2) (signed), and falls through when s2(?) >= s1(=a2) (signed).
  The return at 0x4b00 has v0 = ?.

- `restoreQuadStrip` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x4b08 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x4b08-0x4bdc (212 bytes).
  It occupies 212 bytes.
  The `jal` at 0x4b84 calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0x4b60 targets 0x4bb8, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `bne` branch at 0x4bac targets 0x4b6c, is taken when s2(?) < s1(=a2) (signed), and falls through when s2(?) >= s1(=a2) (signed).
  The return at 0x4bd4 has v0 = ?.

- `restorePolygon` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x4bdc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x4bdc-0x4cb8 (220 bytes).
  It occupies 220 bytes.
  The `jal` at 0x4c24 calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x0.
  The `jal` at 0x4c68 calls odsyRestoreVertex with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0x4c48 targets 0x4c8c, is taken when s6(=a2-1) <= 0 (signed), and falls through when s6(=a2-1) > 0 (signed).
  The `bne` branch at 0x4c80 targets 0x4c50, is taken when s2(?) < s6(=a2-1) (signed), and falls through when s2(?) >= s6(=a2-1) (signed).
  The return at 0x4cb0 has v0 = ret(odsyRestoreVertex).

- `restoreRect` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x4cb8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x4cb8-0x4f90 (728 bytes).
  It occupies 728 bytes.
  The `ld` at 0x4cc0 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0x4cd4 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  12 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4d08, `lw` at 0x4d54, `lw` at 0x4d74.
  6 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0x4d50, `sw` at 0x4d78, `sw` at 0x4e08.
  The `jal` at 0x4f30 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x4f58 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?, a5=sym(.rodata).
  The `jal` at 0x4f80 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `bne` branch at 0x4cd8 targets 0x4e5c, is taken when a2 < 0x2 (signed), and falls through when a2 >= 0x2 (signed).
  The `bne` branch at 0x4d2c targets 0x4d48, is taken when (v0(?) & 0xf) != 0, and falls through when (v0(?) & 0xf) == 0.
  The `beq` branch at 0x4d3c targets 0x4d48, is taken when a1(?) == v1(=0x3000c02e), and falls through when a1(?) != v1(=0x3000c02e).
  The `bne` branch at 0x4d44 targets 0x4f20, is taken when a1(?) != at(=0x2f00c02e), and falls through when a1(?) == at(=0x2f00c02e).
  The `beq` branch at 0x4d60 targets 0x4d98, is taken when (v0(?) & 0xf) == 0, and falls through when (v0(?) & 0xf) != 0.
  The `bne` branch at 0x4d90 targets 0x4d6c, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `bne` branch at 0x4dec targets 0x4e00, is taken when (v1(?) & 0xf) != 0, and falls through when (v1(?) & 0xf) == 0.
  The `beq` branch at 0x4df4 targets 0x4e00, is taken when a1(?) == v0(=0x3000c02e), and falls through when a1(?) != v0(=0x3000c02e).
  The `bne` branch at 0x4dfc targets 0x4f44, is taken when a1(?) != at(=0x2f00c02e), and falls through when a1(?) == at(=0x2f00c02e).
  The `beq` branch at 0x4e18 targets 0x4f14, is taken when (v0(?) & 0xf) == 0, and falls through when (v0(?) & 0xf) != 0.
  The `bne` branch at 0x4e4c targets 0x4e28, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `beq` branch at 0x4e54 targets 0x4f18 and is always taken.
  The `bne` branch at 0x4eac targets 0x4ec0, is taken when (v1(?) & 0xf) != 0, and falls through when (v1(?) & 0xf) == 0.
  The `beq` branch at 0x4eb4 targets 0x4ec0, is taken when a1(?) == v0(=0x3000c02e), and falls through when a1(?) != v0(=0x3000c02e).
  The `bne` branch at 0x4ebc targets 0x4f68, is taken when a1(?) != at(=0x2f00c02e), and falls through when a1(?) == at(=0x2f00c02e).
  The `beq` branch at 0x4ed8 targets 0x4f14, is taken when (v0(?) & 0xf) == 0, and falls through when (v0(?) & 0xf) != 0.
  The `bne` branch at 0x4f0c targets 0x4ee8, is taken when a2(?) < at(?) (unsigned), and falls through when a2(?) >= at(?) (unsigned).
  The `beq` branch at 0x4f3c targets 0x4d9c and is always taken.
  The `beq` branch at 0x4f60 targets 0x4f14 and is always taken.
  The `beq` branch at 0x4f88 targets 0x4f14 and is always taken.
  The return at 0x4f18 has v0 = ?.

- `odsyResetHwShadow` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x4f90 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x4f90-0x50d0 (320 bytes).
  It occupies 320 bytes.
  The `sw` at 0x4fa8 stores 4 bytes to a0 (arg0 at entry) +0xbc.
  The `sw` at 0x4fb8 stores 4 bytes to a0 (arg0 at entry) +0x250.
  The `sw` at 0x4fc0 stores 4 bytes to a0 (arg0 at entry) +0x240.
  The `sw` at 0x4fc4 stores 4 bytes to a0 (arg0 at entry) +0x120.
  The `sw` at 0x4fd0 stores 4 bytes to a0 (arg0 at entry) +0x270.
  The `sw` at 0x4fd4 stores 4 bytes to a0 (arg0 at entry) +0x160.
  The `lw` at 0x4fd8 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `sw` at 0x4fdc stores 4 bytes to a0 (arg0 at entry) +0x110.
  The `sw` at 0x4fe4 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0x4ff0 stores 4 bytes to a0 (arg0 at entry) +0x260.
  The `sw` at 0x4ff4 stores 4 bytes to a0 (arg0 at entry) +0x150.
  The `sw` at 0x5008 stores 4 bytes to a0 (arg0 at entry) +0x210.
  The `sw` at 0x5010 stores 4 bytes to a0 (arg0 at entry) +0x220.
  The `sw` at 0x5020 stores 4 bytes to a0 (arg0 at entry) +0x1e0.
  The `sw` at 0x5028 stores 4 bytes to a0 (arg0 at entry) +0x1f0.
  The `sw` at 0x5034 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x503c stores 4 bytes to a0 (arg0 at entry) +0x1c0.
  The `sw` at 0x504c stores 4 bytes to a0 (arg0 at entry) +0x230.
  The `sw` at 0x5054 stores 4 bytes to a0 (arg0 at entry) +0x1b0.
  The `sw` at 0x5064 stores 4 bytes to a0 (arg0 at entry) +0x200.
  The `sw` at 0x506c stores 4 bytes to a0 (arg0 at entry) +0x180.
  The `sw` at 0x507c stores 4 bytes to a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x5084 stores 4 bytes to a0 (arg0 at entry) +0x190.
  The `sw` at 0x5094 stores 4 bytes to a0 (arg0 at entry) +0x1a0.
  The `sw` at 0x509c stores 4 bytes to a0 (arg0 at entry) +0x140.
  The `sw` at 0x50ac stores 4 bytes to a0 (arg0 at entry) +0x170.
  The `sw` at 0x50b4 stores 4 bytes to a0 (arg0 at entry) +0x130.
  The `sw` at 0x50c0 stores 4 bytes to a0 (arg0 at entry) +0x100.
  The `jal` at 0x4fa0 calls bzero with a0=a0 at entry (arg0), a1=0x900, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x50c8 has v0 = 0xffffffff8080c800.

- `gfP_OdsyGLGet` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` at 0x50d0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`.
  Range: 0x50d0-0x5318 (584 bytes).
  It occupies 584 bytes.
  5 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x50d4, `sw` at 0x5208, `sw` at 0x52ac.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x50dc, `ld` at 0x5148, `ld` at 0x520c.
  4 such `lw` accesses load 4 bytes from [a0+32]:8 +0x2d8, including `lw` at 0x50e4, `lw` at 0x51f8, `lw` at 0x5240.
  The `ld` at 0x50f4 loads 8 bytes from [a0+32]:8 +0x2e0.
  The `ld` at 0x5108 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x510c loads 8 bytes from [a0+72]:8 +0x70.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x514c, `lw` at 0x5210.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x5154, `sw` at 0x5218.
  The `lw` at 0x5158 loads 4 bytes from [a0+32]:8 +0x28e8.
  The `ld` at 0x516c loads 8 bytes from ?.
  The `sw` at 0x5180 stores 4 bytes to ?.
  The `sd` at 0x51dc stores 8 bytes to table(0x110000) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x51e4, `lw` at 0x5260.
  The `lw` at 0x521c loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `jal` at 0x5124 calls copyin with a0=a2 at entry (arg2), a1=sp-128, a2=0x4, a3=?, a4=[[a0+72]:8+112]:8.
  The `jal` at 0x5134 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x51d8 calls timeout with a0=sym(odsy_glget_timeout), a1=[a0+32]:8, a2=0x5dc, a3=?, a4=0x1, a5=0x2.
  The `jal` at 0x51f0 calls untimeout with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5254 calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x52c0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x52dc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=?, a4=[[a0+72]:8+112]:8.
  The `jal` at 0x52fc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x50fc targets 0x52b0, is taken when at(=[[a0+32]:8+728]) != 0, and falls through when at(=[[a0+32]:8+728]) == 0.
  The `beq` branch at 0x5114 targets 0x52d8, is taken when a4(=[[a0+72]:8+112]:8) == 0, and falls through when a4(=[[a0+72]:8+112]:8) != 0.
  The `bne` branch at 0x512c targets 0x52f8, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `bltz` branch at 0x5140 targets 0x52a0, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `beq` branch at 0x5188 targets 0x5234, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x5190 targets 0x5280, is taken when a0(?) == a4(=0x1), and falls through when a0(?) != a4(=0x1).
  The `beq` branch at 0x5198 targets 0x5288, is taken when a0(?) == a5(=0x2), and falls through when a0(?) != a5(=0x2).
  The `beq` branch at 0x51a0 targets 0x5294, is taken when a0(?) == at(=0x3), and falls through when a0(?) != at(=0x3).
  The `beq` branch at 0x51e8 targets 0x5240, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x5200 targets 0x520c, is taken when a5(=[[a0+32]:8+728]) == 0, and falls through when a5(=[[a0+32]:8+728]) != 0.
  The `beq` branch at 0x5238 targets 0x51ac and is always taken.
  The `bne` branch at 0x5244 targets 0x51f0, is taken when v1(=[[a0+32]:8+728]) != 0, and falls through when v1(=[[a0+32]:8+728]) == 0.
  The `bne` branch at 0x5264 targets 0x5278, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x5270 targets 0x5250, is taken when a5(=[[a0+32]:8+728]) == 0, and falls through when a5(=[[a0+32]:8+728]) != 0.
  The `beq` branch at 0x5278 targets 0x51f0 and is always taken.
  The `beq` branch at 0x5280 targets 0x51ac and is always taken.
  The `beq` branch at 0x528c targets 0x51ac and is always taken.
  The `beq` branch at 0x5298 targets 0x51ac and is always taken.
  The `beq` branch at 0x52a8 targets 0x5220 and is always taken.
  The `beq` branch at 0x52d0 targets 0x5108 and is always taken.
  The `beq` branch at 0x52f0 targets 0x5220 and is always taken.
  The `beq` branch at 0x5310 targets 0x5220 and is always taken.
  The return at 0x522c has v0 = one of [a3], 0xe, 0x1.
