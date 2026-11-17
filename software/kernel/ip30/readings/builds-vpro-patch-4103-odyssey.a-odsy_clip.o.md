# Readings: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`

One entry per routine, filed here from the reading batches by binary.

- `gf_OdsyValidateClip` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Range: 0x0-0x4dc (1244 bytes).
  It occupies 1244 bytes.
  The `ld` at 0x0 loads 8 bytes from a1 (arg1 at entry) +0x80.
  The `ld` at 0xc loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x10 loads 8 bytes from a1 (arg1 at entry) +0x78.
  The `ld` at 0x18 loads 8 bytes from a1 (arg1 at entry) +0x70.
  6 such `lw` accesses load 4 bytes from [a1+120]:8 +0x68, including `lw` at 0x20, `lw` at 0x78, `lw` at 0x144.
  The `lw` at 0x24 loads 4 bytes from [a1+112]:8 +0x28.
  The `ld` at 0x2c loads 8 bytes from [a1+120]:8 +0x80.
  2 such `lw` accesses load 4 bytes from [a1+120]:8 +0x78, including `lw` at 0x30, `lw` at 0x3f8.
  The `sw` at 0x40 stores 4 bytes to [a1+112]:8 +0x28.
  2 such `lw` accesses load 4 bytes from [a1+112]:8 +0x2c, including `lw` at 0x44, `lw` at 0x68.
  6 such `lw` accesses load 4 bytes from [a1+120]:8 +0x6c, including `lw` at 0x48, `lw` at 0x7c, `lw` at 0x170.
  2 such `ld` accesses load 8 bytes from [a1+112]:8 +0x60, including `ld` at 0x50, `ld` at 0x64.
  The `sw` at 0x5c stores 4 bytes to [a1+112]:8 +0x2c.
  The `sw` at 0x60 stores 4 bytes to [[a1+112]:8+96]:8 +0x2b60.
  The `sw` at 0x6c stores 4 bytes to [[a1+112]:8+96]:8 +0x2b64.
  The `sw` at 0x8c stores 4 bytes to [a1+112]:8 +0x48.
  The `lw` at 0x94 loads 4 bytes from [a1+128]:8 +0x68.
  The `lw` at 0xa0 loads 4 bytes from [a1+128]:8 +0x6c.
  The `sw` at 0xbc stores 4 bytes to [a1+112]:8 +0x4c.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0xc8, `lw` at 0xd0, `lw` at 0x2fc.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0xe8, `sw` at 0xf8, `sw` at 0x318.
  The `lw` at 0xfc loads 4 bytes from [a1+120]:8 +0x90.
  The `lw` at 0x104 loads 4 bytes from [a1+112]:8 +0x4.
  6 such `sw` accesses store 4 bytes to [a1+112]:8 +0x4, including `sw` at 0x10c, `sw` at 0x12c, `sw` at 0x140.
  The `lw` at 0x110 loads 4 bytes from [a1+120]:8 +0x98.
  2 such `lw` accesses load 4 bytes from [a1+120]:8 +0x88, including `lw` at 0x130, `lw` at 0x39c.
  2 such `lw` accesses load 4 bytes from [a1+112]:8 +0x8, including `lw` at 0x150, `lw` at 0x408.
  4 such `sw` accesses store 4 bytes to [a1+112]:8 +0x8, including `sw` at 0x16c, `sw` at 0x188, `sw` at 0x424.
  2 such `lw` accesses load 4 bytes from [a1+120]:8 +0x70, including `lw` at 0x190, `lw` at 0x43c.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x7d8, including `ld` at 0x194, `ld` at 0x1d4.
  The `lw` at 0x198 loads 4 bytes from [[a0+32]:8+2008]:8 +0x20.
  2 such `lw` accesses load 4 bytes from [a1+112]:8 +0xc, including `lw` at 0x1b4, `lw` at 0x448.
  4 such `sw` accesses store 4 bytes to [a1+112]:8 +0xc, including `sw` at 0x1c8, `sw` at 0x204, `sw` at 0x460.
  2 such `lw` accesses load 4 bytes from [a1+120]:8 +0x74, including `lw` at 0x1d0, `lw` at 0x464.
  The `lw` at 0x1d8 loads 4 bytes from [[a0+32]:8+2008]:8 +0x24.
  6 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2d0, including `ld` at 0x210, `ld` at 0x25c, `ld` at 0x290.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x24c, `lw` at 0x3c0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x258, `sw` at 0x3c8.
  4 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x278, `ld` at 0x288, `ld` at 0x4b0.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x28a8, including `sw` at 0x280, `sw` at 0x4d0.
  2 such `sw` accesses store 4 bytes to [[a0+32]:8+736]:8 +0x107c, including `sw` at 0x284, `sw` at 0x4d8.
  The `lw` at 0x28c loads 4 bytes from [[a0+32]:8+736]:8 +0x106c.
  The `lw` at 0x2d4 loads 4 bytes from [a1+120]:8 +0x8c.
  The `lw` at 0x49c loads 4 bytes from [a0+32]:8 +0x28a4.
  The `sw` at 0x4c0 stores 4 bytes to [a0+32]:8 +0x28a4.
  The `sw` at 0x4c4 stores 4 bytes to [[a0+32]:8+736]:8 +0x1074.
  The `jal` at 0x20c calls odsy_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a4=0xffffffffff000fff, a5=-0x1000.
  The `jal` at 0x224 calls odsyClipMask with a0=[a0+32]:8, a1=[a1+112]:8, a2=?, a3=?.
  The `jal` at 0x230 calls odsyClipPush with a0=[a0+32]:8, a1=[a1+112]:8, a2=?, a3=?.
  The `jal` at 0x244 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x268 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=-0x3, a3=?.
  The `jal` at 0x298 calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=[[[a0+32]:8+736]:8+4204], a4=0x1, a5=[[a0+32]:8+736]:8.
  The `jal` at 0x2a0 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x3b8 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3d8 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=ret(splhi), a2=?, a3=([a0+48] | 0x2).
  The `jal` at 0x3e8 calls splx with a0=ret(splhi), a1=ret(splhi), a2=?, a3=?.
  The `jal` at 0x490 calls gfx_flow_attach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x4a0 calls gfx_flow_credit_tnum_get with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=[[a0+32]:8+10404].
  The `bne` branch at 0xf4 targets 0xc0, is taken when v0(?) < 0x4 (signed), and falls through when v0(?) >= 0x4 (signed).
  The `beq` branch at 0x100 targets 0x2c4, is taken when a2(=[[a1+120]:8+144]) == 0, and falls through when a2(=[[a1+120]:8+144]) != 0.
  The `beq` branch at 0x120 targets 0x394, is taken when (a3(=[[a1+120]:8+152]) & 0x3c00) == 0, and falls through when (a3(=[[a1+120]:8+152]) & 0x3c00) != 0.
  The `bltz` branch at 0x148 targets 0x384, is taken when a0(=[[a1+120]:8+104]) < 0 (signed), and falls through when a0(=[[a1+120]:8+104]) >= 0 (signed).
  The `bltz` branch at 0x178 targets 0x38c, is taken when a7(=[[a1+120]:8+108]) < 0 (signed), and falls through when a7(=[[a1+120]:8+108]) >= 0 (signed).
  The `beq` branch at 0x1a8 targets 0x1b4, is taken when a7(=[[[a0+32]:8+2008]:8+32]) >= t0(=([[a1+120]:8+112] + [[a1+120]:8+104])-1) (unsigned), and falls through when a7(=[[[a0+32]:8+2008]:8+32]) < t0(=([[a1+120]:8+112] + [[a1+120]:8+104])-1) (unsigned).
  The `beq` branch at 0x1ec targets 0x1f8, is taken when a7(=[[[a0+32]:8+2008]:8+36]) >= t0(=([[a1+120]:8+116] + [[a1+120]:8+108])-1) (unsigned), and falls through when a7(=[[[a0+32]:8+2008]:8+36]) < t0(=([[a1+120]:8+116] + [[a1+120]:8+108])-1) (unsigned).
  The `beq` branch at 0x218 targets 0x3b8, is taken when v0(=ret(odsy_flow_am_i_attached)) == 0, and falls through when v0(=ret(odsy_flow_am_i_attached)) != 0.
  The `beq` branch at 0x23c targets 0x2ac, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x260 targets 0x2a0, is taken when a0(=[[a0+32]:8+720]:8) == 0, and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x270 targets 0x2a0, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x2d8 targets 0x3f8, is taken when at(=[[a1+120]:8+140]) == 0, and falls through when at(=[[a1+120]:8+140]) != 0.
  The `blez` branch at 0x2e0 targets 0x208, is taken when a7(=[[a1+120]:8+120]) <= 0 (signed), and falls through when a7(=[[a1+120]:8+120]) > 0 (signed).
  The `bne` branch at 0x374 targets 0x2f0, is taken when v0(?) < a7(=[[a1+120]:8+120]) (signed), and falls through when v0(?) >= a7(=[[a1+120]:8+120]) (signed).
  The `beq` branch at 0x37c targets 0x208 and is always taken.
  The `beq` branch at 0x384 targets 0x150 and is always taken.
  The `beq` branch at 0x38c targets 0x180 and is always taken.
  The `beq` branch at 0x3b0 targets 0x144 and is always taken.
  The `beq` branch at 0x3d0 targets 0x3e8, is taken when a0(=[[a0+32]:8+720]:8) == 0, and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x3e0 targets 0x48c, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x3f0 targets 0x224 and is always taken.
  The `bne` branch at 0x3fc targets 0x2e0, is taken when at(=[[a1+120]:8+120]) != 0, and falls through when at(=[[a1+120]:8+120]) == 0.
  The `beq` branch at 0x484 targets 0x208 and is always taken.
  The `beq` branch at 0x4d4 targets 0x3e8 and is always taken.
  The return at 0x2bc has v0 = 0x0.

- `odsyClipMask` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)` at 0x4dc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Range: 0x4dc-0x604 (296 bytes).
  It occupies 296 bytes.
  The `lw` at 0x4dc loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `ld` at 0x4e0 loads 8 bytes from a1 (arg1 at entry) +0x90.
  The `lw` at 0x4e4 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `ld` at 0x4e8 loads 8 bytes from [a1+144]:8 +0x78.
  The `lw` at 0x4f0 loads 4 bytes from a1 (arg1 at entry) +0x3c.
  The `lw` at 0x4fc loads 4 bytes from [[a1+144]:8+120]:8 +0x6c.
  The `lw` at 0x508 loads 4 bytes from [[a1+144]:8+120]:8 +0x68.
  The `lw` at 0x510 loads 4 bytes from a1 (arg1 at entry) +0x30.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x544, `lw` at 0x54c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x5e8, `sw` at 0x5f8.
  The `beq` branch at 0x524 targets 0x544 and is always taken.
  The `beq` branch at 0x53c targets 0x5fc, is taken when v0(?) >= 0x4 (signed), and falls through when v0(?) < 0x4 (signed).
  The `bne` branch at 0x568 targets 0x594, is taken when a5(?) != v1(=0x1), and falls through when a5(?) == v1(=0x1).
  The `bne` branch at 0x570 targets 0x598, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x578 targets 0x598, is taken when a3(?) != at(=0x1), and falls through when a3(?) == at(=0x1).
  The `bne` branch at 0x580 targets 0x598, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x58c targets 0x52c and is always taken.
  The `beq` branch at 0x5f4 targets 0x52c and is always taken.
  The return at 0x5fc has v0 = ?.

- `odsyClipPush` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)` at 0x604 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Range: 0x604-0x898 (660 bytes).
  It occupies 660 bytes.
  The `ld` at 0x604 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `ld` at 0x608 loads 8 bytes from a1 (arg1 at entry) +0x60.
  The `lw` at 0x610 loads 4 bytes from a0 (arg0 at entry) +0x558.
  50 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0x620, `sw` at 0x62c, `sw` at 0x634.
  The `lw` at 0x678 loads 4 bytes from [a1+96]:8 +0x26a0.
  The `lw` at 0x6a0 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `lw` at 0x6a8 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lwu` at 0x6c8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  10 such `sd` accesses store 8 bytes to [a0+736]:8 +0x110000, including `sd` at 0x6e4, `sd` at 0x720, `sd` at 0x7e0.
  2 such `lwu` accesses load 4 bytes from ?, including `lwu` at 0x6fc, `lwu` at 0x704.
  The `lw` at 0x740 loads 4 bytes from [a1+96]:8 +0x1b2c.
  The `lwu` at 0x7cc loads 4 bytes from a1 (arg1 at entry) +0x40.
  The `lwu` at 0x7e4 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `lwu` at 0x7fc loads 4 bytes from a1 (arg1 at entry) +0x44.
  The `lwu` at 0x814 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lwu` at 0x82c loads 4 bytes from a1 (arg1 at entry) +0x50.
  The `lwu` at 0x844 loads 4 bytes from a1 (arg1 at entry) +0x54.
  The `lwu` at 0x85c loads 4 bytes from a1 (arg1 at entry) +0x58.
  The `lwu` at 0x874 loads 4 bytes from a1 (arg1 at entry) +0x5c.
  The `bne` branch at 0x71c targets 0x6f4, is taken when a3(?) < 0x4 (signed), and falls through when a3(?) >= 0x4 (signed).
  The `beq` branch at 0x758 targets 0x890, is taken when (v0(?) & 0x1) == 0, and falls through when (v0(?) & 0x1) != 0.
  The `beq` branch at 0x890 targets 0x7a4 and is always taken.
  The return at 0x888 has v0 = 0x60d00000000.

- `gf_OdsyValidateBanks` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)` at 0x898 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Range: 0x898-0x8a0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x898 has v0 = 0x0.

- `gf_OdsySetNullClip` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)` at 0x8a0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Range: 0x8a0-0x8d8 (56 bytes).
  It occupies 56 bytes.
  The `sw` at 0x8a0 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `sw` at 0x8a4 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x8ac stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `sw` at 0x8b0 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `sw` at 0x8b4 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `sw` at 0x8b8 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x8bc stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x8c4 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `sw` at 0x8c8 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `sw` at 0x8cc stores 4 bytes to a0 (arg0 at entry) +0x8.
  The return at 0x8d0 has v0 = 0x0.

- `gfP_OdsySetClipMask` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)` at 0x8d8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`.
  Range: 0x8d8-0x9c0 (232 bytes).
  It occupies 232 bytes.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x8e8, `sw` at 0x95c, `sw` at 0x990.
  The `ld` at 0x8f0 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x8fc loads 8 bytes from [a0+72]:8 +0x70.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x918, `ld` at 0x960.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x920, `lw` at 0x964.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x938, `sw` at 0x970.
  The `ld` at 0x94c loads 8 bytes from a1 (arg1 at entry) +0x78.
  The `lw` at 0x978 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `jal` at 0x904 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x934 calls copyin with a0=a2 at entry (arg2), a1=[[a0+72]:8+112]:8+48, a2=0x10, a3=?, a5=0xe.
  The `jal` at 0x954 calls gf_OdsyValidateClip with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=[a1+120]:8+96.
  The `jal` at 0x9a4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=a1 at entry (arg1).
  The `bltz` branch at 0x910 targets 0x98c, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `bne` branch at 0x93c targets 0x99c, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x994 targets 0x97c and is always taken.
  The `beq` branch at 0x9b8 targets 0x97c and is always taken.
  The return at 0x984 has v0 = one of [a3], 0xe.
