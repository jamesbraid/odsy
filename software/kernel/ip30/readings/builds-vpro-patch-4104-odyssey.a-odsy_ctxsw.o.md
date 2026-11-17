# Readings: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`

One entry per routine, filed here from the reading batches by binary.

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
