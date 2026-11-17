# Readings: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`

One entry per routine, filed here from the reading batches by binary.

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
