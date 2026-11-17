# Readings: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`

One entry per routine, filed here from the reading batches by binary.

- `__glXOpenGraphicsDevice` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd80e4e4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd80e4e4-0xd80e670 (396 bytes).
  It occupies 396 bytes.
  7 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd80e50c, `lw` at 0xd80e550, `lw` at 0xd80e58c.
  The `lw` at 0xd80e518 loads 4 bytes from ([0x1014] + (a0 << 0x2)) +0x4.
  2 such `lw` accesses load 4 bytes from [0x1014] +0x104, including `lw` at 0xd80e590, `lw` at 0xd80e64c.
  The `sw` at 0xd80e5d8 stores 4 bytes to ([0x1014] + (a0 << 0x2)) +0x4.
  The `sw` at 0xd80e640 stores 4 bytes to [0x1014] +0x104.
  The `jalr` at 0xd80e544 calls __glXFatal with a0=0x0, a1=0xd842808, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd80e560 calls open with a0=0xd842828, a1=0x802, a2=?, a3=?.
  The `jalr` at 0xd80e57c calls fcntl with a0=ret(open), a1=0x2, a2=0x5, a3=?.
  The `jalr` at 0xd80e5ac calls __glXFatal with a0=0x0, a1=0xd842808, a2=?, a3=[0x1014], a4=[[0x1014]+260].
  The `jalr` at 0xd80e5e8 calls __glXFatal with a0=0x0, a1=0xd842838, a2=?, a3=?.
  The `jalr` at 0xd80e600 calls __glXFatal with a0=0x0, a1=0xd842858, a2=?, a3=?.
  The `jalr` at 0xd80e61c calls ioctl with a0=ret(open), a1=0x65, a2=0x0, a3=[0x1014], a4=[[0x1014]+260].
  The `jalr` at 0xd80e660 calls __glXFatal with a0=0x0, a1=0xd842868, a2=?, a3=?, a5=ret(ioctl).
  The `beq` branch at 0xd80e504 targets 0xd80e538, is taken when a0 >= 0x41 (signed), and falls through when a0 < 0x41 (signed).
  The `bltz` branch at 0xd80e520 targets 0xd80e554, is taken when v1(=[([0x1014] + (a0 << 0x2))+4]) < 0 (signed), and falls through when v1(=[([0x1014] + (a0 << 0x2))+4]) >= 0 (signed).
  The `beq` branch at 0xd80e54c targets 0xd80e510 and is always taken.
  The `bltz` branch at 0xd80e568 targets 0xd80e5dc, is taken when v0(=ret(open)) < 0 (signed), and falls through when v0(=ret(open)) >= 0 (signed).
  The `bltz` branch at 0xd80e584 targets 0xd80e5f8, is taken when v0(=ret(fcntl)) < 0 (signed), and falls through when v0(=ret(fcntl)) >= 0 (signed).
  The `bltz` branch at 0xd80e594 targets 0xd80e610, is taken when a4(=[[0x1014]+260]) < 0 (signed), and falls through when a4(=[[0x1014]+260]) >= 0 (signed).
  The `beq` branch at 0xd80e59c targets 0xd80e5b8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xd80e5f0 targets 0xd80e574 and is always taken.
  The `beq` branch at 0xd80e608 targets 0xd80e590 and is always taken.
  The `blez` branch at 0xd80e624 targets 0xd80e650, is taken when v0(=ret(ioctl)) <= 0 (signed), and falls through when v0(=ret(ioctl)) > 0 (signed).
  The `beq` branch at 0xd80e648 targets 0xd80e598 and is always taken.
  The `beq` branch at 0xd80e668 targets 0xd80e62c and is always taken.
  The return at 0xd80e530 has v0 = ?.
  The return at 0xd80e5d4 has v0 = one of ?, ret(__glXFatal).

- `__glXOpenGraphicsDevice` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd80e4e4
  `__glXOpenGraphicsDevice` is a 396-byte n32 routine. It checks its argument a0 against 0x41 and calls `__glXFatal` when the value is out of range, then reads a per-device table entry through the pointer at abs 0x1014. It opens a device path string at 0xd842828 with flags 0x802, applies `fcntl` with arguments 0x2 and 0x5 to the descriptor, and issues `ioctl` 0x65 on it, recording results in the table entry and at offset 0x104. The shape suggests it opens and initializes one graphics device, but the fcntl and ioctl constants are not named in the facts, so their meanings are open.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glXBindHWContextToWindow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd80e93c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd80e93c-0xd80ebf0 (692 bytes).
  It occupies 692 bytes.
  The `lw` at 0xd80e968 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd80e96c, `lw` at 0xd80eb58.
  3 such `lw` accesses load 4 bytes from [a0+76] +0xcc, including `lw` at 0xd80e970, `lw` at 0xd80eb5c, `lw` at 0xd80eb6c.
  The `lw` at 0xd80e974 loads 4 bytes from [0x1014] +0x0.
  6 such `lw` accesses load 4 bytes from [a0+76] +0xe0, including `lw` at 0xd80e980, `lw` at 0xd80ea64, `lw` at 0xd80ead8.
  The `lw` at 0xd80e984 loads 4 bytes from [a0+76] +0xf0.
  6 such `lw` accesses load 4 bytes from [a0+76] +0xdc, including `lw` at 0xd80e988, `lw` at 0xd80ea68, `lw` at 0xd80eadc.
  4 such `sb` accesses store 1 byte to [a0+76] +0xf4, including `sb` at 0xd80e990, `sb` at 0xd80ea4c, `sb` at 0xd80eac8.
  The `lw` at 0xd80e994 loads 4 bytes from [a0+76] +0xec.
  5 such `lw` accesses load 4 bytes from [a0+76] +0xe8, including `lw` at 0xd80e9ac, `lw` at 0xd80e9e0, `lw` at 0xd80e9f8.
  The `lw` at 0xd80e9b0 loads 4 bytes from [[a0+76]+232] +0x2c.
  2 such `lw` accesses load 4 bytes from [a0+76] +0x11c, including `lw` at 0xd80e9c4, `lw` at 0xd80eb10.
  2 such `lw` accesses load 4 bytes from [a0+76] +0x120, including `lw` at 0xd80e9c8, `lw` at 0xd80eb14.
  6 such `lw` accesses load 4 bytes from [a0+76] +0xe4, including `lw` at 0xd80e9d4, `lw` at 0xd80e9ec, `lw` at 0xd80ea2c.
  2 such `lw` accesses load 4 bytes from [[a0+76]+228] +0x24, including `lw` at 0xd80e9d8, `lw` at 0xd80ea84.
  The `lw` at 0xd80e9e4 loads 4 bytes from [[a0+76]+232] +0x24.
  4 such `lw` accesses load 4 bytes from [[a0+76]+228] +0x4, including `lw` at 0xd80e9f0, `lw` at 0xd80ea30, `lw` at 0xd80ea90.
  2 such `lw` accesses load 4 bytes from [[a0+76]+232] +0x4, including `lw` at 0xd80e9fc, `lw` at 0xd80ea40.
  3 such `lw` accesses load 4 bytes from [a0+76] +0x24, including `lw` at 0xd80ea10, `lw` at 0xd80eaa4, `lw` at 0xd80eb4c.
  2 such `sw` accesses store 4 bytes to [[a0+76]+228] +0x4, including `sw` at 0xd80ea54, `sw` at 0xd80ead0.
  The `sw` at 0xd80ea60 stores 4 bytes to [[a0+76]+232] +0x4.
  2 such `sw` accesses store 4 bytes to [a0+76] +0xec, including `sw` at 0xd80ea6c, `sw` at 0xd80eae4.
  2 such `sw` accesses store 4 bytes to [a0+76] +0xf0, including `sw` at 0xd80ea70, `sw` at 0xd80eae8.
  The `sw` at 0xd80eb60 stores 4 bytes to [0x1014] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0xd80eb98, `lw` at 0xd80ebb8, `lw` at 0xd80ebd8.
  The `jalr` at 0xd80e964 calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd80ea0c calls (unnamed) [0xd80e4c4] with a0=[[a0+76]+36], a1=0x400, a2=sp-56, a3=[[a0+76]+224], a4=[[a0+76]+204].
  The `bgezall` at 0xd80eaa0 calls (unnamed) [0xd80e4c4] with a0=[[a0+76]+36], a1=0x3eb, a2=sp-72, a3=[[a0+76]+224], a4=[[a0+76]+204].
  The `bgezall` at 0xd80eb48 calls (unnamed) [0xd80e4c4] with a0=[[a0+76]+36], a1=0x3ea, a2=sp-80, a3=?, a4=[[a0+76]+204].
  The `jalr` at 0xd80eba0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8428c0, a2=?, a3=?.
  The `jalr` at 0xd80ebc0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8428f8, a2=0x1, a3=?.
  The `jalr` at 0xd80ebe0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8428d8, a2=-0x1, a3=?.
  The `bne` branch at 0xd80e978 targets 0xd80eb38, is taken when v1(=[[0x1014]]) != a4(=[[a0+76]+204]), and falls through when v1(=[[0x1014]]) == a4(=[[a0+76]+204]).
  The `bne` branch at 0xd80e98c targets 0xd80e9a0, is taken when a0(=[[a0+76]+240]) != a3(=[[a0+76]+224]), and falls through when a0(=[[a0+76]+240]) == a3(=[[a0+76]+224]).
  The `beq` branch at 0xd80e998 targets 0xd80eafc, is taken when a1(=[[a0+76]+236]) == a2(=[[a0+76]+220]), and falls through when a1(=[[a0+76]+236]) != a2(=[[a0+76]+220]).
  The `beq` branch at 0xd80e9a4 targets 0xd80eb0c, is taken when a3(=[[a0+76]+224]) == a2(=[[a0+76]+220]), and falls through when a3(=[[a0+76]+224]) != a2(=[[a0+76]+220]).
  The `beq` branch at 0xd80e9b8 targets 0xd80eb0c, is taken when ra(=[[[a0+76]+232]+44]) == at(=0x3), and falls through when ra(=[[[a0+76]+232]+44]) != at(=0x3).
  The `beq` branch at 0xd80e9cc targets 0xd80eb78, is taken when at(=[[a0+76]+284]) == a2(=0x1), and falls through when at(=[[a0+76]+284]) != a2(=0x1).
  The `beq` branch at 0xd80ea24 targets 0xd80ebd0, is taken when v0(=ret(0xd80e4c4)) == a2(=-0x1), and falls through when v0(=ret(0xd80e4c4)) != a2(=-0x1).
  The `bne` branch at 0xd80ea38 targets 0xd80ea4c, is taken when a3(=[[[a0+76]+228]+4]) != a4(?), and falls through when a3(=[[[a0+76]+228]+4]) == a4(?).
  The `beq` branch at 0xd80ea44 targets 0xd80ea64, is taken when a5(=[[[a0+76]+232]+4]) == a6(?), and falls through when a5(=[[[a0+76]+232]+4]) != a6(?).
  The `beq` branch at 0xd80eaac targets 0xd80ebb0, is taken when v0(=ret(0xd80e4c4)) == at(=-0x1), and falls through when v0(=ret(0xd80e4c4)) != at(=-0x1).
  The `beq` branch at 0xd80eac0 targets 0xd80ead8, is taken when v0(=[[[a0+76]+228]+4]) == v1(?), and falls through when v0(=[[[a0+76]+228]+4]) != v1(?).
  The `beq` branch at 0xd80eb1c targets 0xd80ea80, is taken when a5(=[[a0+76]+284]) >= 0x2 (signed), and falls through when a5(=[[a0+76]+284]) < 0x2 (signed).
  The `beq` branch at 0xd80eb24 targets 0xd80ea80, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xd80eb30 targets 0xd80ea8c and is always taken.
  The `bltz` branch at 0xd80eb50 targets 0xd80eb94, is taken when v0(=ret(0xd80e4c4)) < 0 (signed), and falls through when v0(=ret(0xd80e4c4)) >= 0 (signed).
  The `beq` branch at 0xd80eb70 targets 0xd80e9a0 and is always taken.
  The `beq` branch at 0xd80eb78 targets 0xd80e9d4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd80eb8c targets 0xd80e9ec and is always taken.
  The `beq` branch at 0xd80eba8 targets 0xd80eb68 and is always taken.
  The `beq` branch at 0xd80ebc8 targets 0xd80eafc and is always taken.
  The `beq` branch at 0xd80ebe8 targets 0xd80eafc and is always taken.
  The return at 0xd80ea78 has v0 = ret(0xd80e4c4).
  The return at 0xd80eaf0 has v0 = [[[a0+76]+228]+4].
  The return at 0xd80eb04 has v0 = one of ret(__glXHWAttach), ret(?).
  The instructions from 0xd80eaf8 to 0xd80eaf8 are not reached by any path from the entry, and their branches are not listed.

- `__glx_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd819b38 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd819b38-0xd819bc8 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd819b48 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819b58 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819b60 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd819b78 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd819b84 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `lw` at 0xd819b88 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd819b98 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd819b80 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x80, a3=a3 at entry (arg3).
  The `jalr` at 0xd819bb8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+132, a2=?, a3=?.
  The `bne` branch at 0xd819b94 targets 0xd819bb4, is taken when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+132) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+132) (unsigned).
  The `beq` branch at 0xd819bc0 targets 0xd819ba0 and is always taken.
  The return at 0xd819bac has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd819bc8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd819bc8-0xd819c58 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd819bd8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819be8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819bf0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd819c08 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd819c14 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `lw` at 0xd819c18 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd819c28 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd819c10 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x40, a3=a3 at entry (arg3).
  The `jalr` at 0xd819c48 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+68, a2=?, a3=?.
  The `bne` branch at 0xd819c24 targets 0xd819c44, is taken when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+68) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+68) (unsigned).
  The `beq` branch at 0xd819c50 targets 0xd819c30 and is always taken.
  The return at 0xd819c3c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `GetFBConfigsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd81b210.
  Grade: inferred.
  Role (from name): fetches framebuffer configurations for the client over the X wire protocol. It waits for the reply with _XReply at 0xd81b2c8 (the request itself is written to the buffer by the stores just before), and reads reply data with _XRead at 0xd81b5d0. When the output buffer lacks room it calls _XFlush at 0xd81b424. Result storage comes from malloc at 0xd81b33c and 0xd81b3b4; the first allocation is freed with free at 0xd81b3cc on the path where the second malloc returns 0. A long chain of comparisons of an attribute value against small codes and 0x80xx tokens such as 0x8017, 0x8018 and 0x801a is present, but what each comparison stores is not read here.
  Reviewed: 2026-11-12

- `GetFBConfigsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd81b210
  `GetFBConfigsSGIX` is a 3804-byte n32 routine, the largest in this batch. It calls `_XReply` (call 2, 0xd81b2c8), `malloc` (0xd81b33c and 0xd81b3b4), `memset` on a malloc result (0xd81b488), `free` (0xd81b3cc) and `_XFlush` (0xd81b424), and reads reply data with `_XRead` (0xd81b5d0). On one path it calls `__glXOverrideVisualGetVisualInfo` (0xd81bf64, a1 = 3), then `free` on its result (0xd81bf94) and `XFree` (0xd81bfa8, argument not shown). A long chain of branches on a5 (from 0xd81b630 on) compares it with small values (0x23, 0x24, 0xb, 0x7) and with 0x801a, 0x8018, 0x8017, 0x800b and 0x8028. The facts do not say what those values select, so the chain is not decoded here.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glXSendMakeCurrentRead` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd81de58 (n32).
  Inferred: this sends one request to the X server for the display in a0 and reads its reply, because
  it appends a record at the display's output pointer (the word at +0x6c), calls `_XReply`, reads extra
  reply bytes with `_XRead`, and posts `__glXPostHiddenError` when the reply fails.
  The `jalr` at 0xd81de88 passes the entry arguments through to `__glXSetupForCommand`, and its return
  is kept at sp+0x10 and stored as the first byte of the record (`sb` at 0xd81df34 or 0xd81e098), after
  a call to the first pointer of the block at a0+0x4d0 when that word is non-zero (`jalr` at
  0xd81dea0). The ninth argument, the word at sp+0xa4 (`lw` at 0xd81dea8), selects the record: non-zero
  gives a 0x18-byte record (`beq` at 0xd81deb8 falls through), zero a 0x14-byte one.
  The 0x18-byte record is byte 0x10 then the setup return at +0x0, byte 0x11 at +0x1, halfword 6 at +0x2,
  word 0x10001 at +0x4, then a2, a4 and a5 as entered at +0x8, +0xc and +0x10, and at +0x14 the word at
  entry a1 plus 0x14, or 0 when a1 is zero (`beq` at 0xd81df30, `sw` at 0xd81df60 in the delay slot of
  the `_XReply` call). The 0x14-byte record is byte 0x1a at +0x0 (then the setup return) and +0x1,
  halfword 5 at +0x2, a2, a4 and a5 at +0x4, +0x8 and +0xc, and the same a1-based word at +0x10 (`sw`
  at 0xd81e0bc). Each layout first calls `_XFlush` when the word at +0x70 is below the +0x6c pointer
  plus the record size (`bne` at 0xd81dec8 or 0xd81e034), saves the pointer at +0x64, adds one to the
  word at +0x60 and advances +0x6c by 0x18 or 0x14. `_XReply` is called with the display, entry a3 as
  its second argument, 0 and 0 (`jalr` at 0xd81df5c or 0xd81e0b8).
  A non-zero reply continues only when the word at +0x4 of the block at a3 is non-zero (`beq` at
  0xd81df70): `malloc` gets 0x10 (`jalr` at 0xd81df78), `_XRead` fills it with 0x10 bytes (`jalr` at
  0xd81df94), its four words go to a7+0x18, a7+0x1c, a6+0x18 and a6+0x1c (`sw` at 0xd81dfa8 to
  0xd81dfc8), and `free` releases it (`jalr` at 0xd81dfc4). After that, or without the read, the
  optional calls through +0x4 of the +0x4d0 block and through the pointer at +0x7c run, and the return
  is 1 (0xd81dffc). A zero reply (`beq` at 0xd81df64 or 0xd81e0c0) runs the same optional calls, calls
  `__glXPostHiddenError` with a2 0x11 after the 0x18-byte record (`jalr` at 0xd81e110) or 0x1a after
  the 0x14-byte one (`jalr` at 0xd81e180), passing the word at entry a1 plus 0x14 as a3, and returns 0.
  Unknown: the value of the ninth argument and the content of the block at a3, since both come from the
  callers; the callers of this routine would settle them.
  Evidence grade: inferred.

- `__glXMakeContextCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd81e664 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd81e664-0xd81f694 (4144 bytes).
  It occupies 4144 bytes.
  8 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd81e6e8, `lw` at 0xd81eaac, `lw` at 0xd81eb2c.
  The `lw` at 0xd81e6ec loads 4 bytes from [0x1014] +0x114.
  6 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xc4, including `lw` at 0xd81e6f0, `lw` at 0xd81e7ac, `lw` at 0xd81e7d8.
  The `lw` at 0xd81e700 loads 4 bytes from [[0x1014]+276] +0xc8.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xe0, including `lw` at 0xd81e704, `lw` at 0xd81eaa8.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xdc, including `lw` at 0xd81e710, `lw` at 0xd81eab0.
  The `lw` at 0xd81e71c loads 4 bytes from [[[0x1014]+276]+200] +0x5c.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xe4, including `lw` at 0xd81e738, `lw` at 0xd81ec64.
  The `lw` at 0xd81e73c loads 4 bytes from [[0x1014]+276] +0xe8.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0xc4, including `lw` at 0xd81e74c, `lw` at 0xd81e948, `lw` at 0xd81eac0.
  7 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x20, including `lw` at 0xd81e778, `lw` at 0xd81e988, `lw` at 0xd81e9d8.
  2 such `lw` accesses load 4 bytes from ret(__glXAddDrawableInterest) +0x8, including `lw` at 0xd81e77c, `lw` at 0xd81ec88.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x30, including `lw` at 0xd81e788, `lw` at 0xd81e9b4, `lw` at 0xd81e9c4.
  The `lw` at 0xd81e78c loads 4 bytes from ret(__glXAddDrawableInterest) +0xc.
  The `lw` at 0xd81e798 loads 4 bytes from ret(__glXAddDrawableInterest) +0x2c.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd81e7fc, `lbu` at 0xd81e808, `lbu` at 0xd81f07c.
  2 such `lbu` accesses load 1 byte from a3 (arg3 at entry) +0x1d, including `lbu` at 0xd81e81c, `lbu` at 0xd81e994.
  3 such `lw` accesses load 4 bytes from [[0x1014]+276] +0x3c, including `lw` at 0xd81e840, `lw` at 0xd81ebe0, `lw` at 0xd81ecd8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c8, including `lw` at 0xd81e87c, `lw` at 0xd81e8b8, `lw` at 0xd81f0c0.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c8, including `sw` at 0xd81e888, `sw` at 0xd81e8c8, `sw` at 0xd81f0dc.
  2 such `sw` accesses store 4 bytes to [[0x1014]+276] +0x3c, including `sw` at 0xd81e96c, `sw` at 0xd81ecf0.
  22 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd81e978, `lw` at 0xd81e9f0, `lw` at 0xd81ea0c.
  13 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd81e984, `sw` at 0xd81e990, `sw` at 0xd81e9a0.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x11c, including `lw` at 0xd81e9e0, `lw` at 0xd81f000.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x120, including `lw` at 0xd81e9e4, `lw` at 0xd81f004.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0xc8, including `lw` at 0xd81ea48, `lw` at 0xd81ead4.
  The `lw` at 0xd81ea4c loads 4 bytes from [a3+200] +0x68.
  3 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xd8, including `lw` at 0xd81eaa4, `lw` at 0xd81eb30, `lw` at 0xd81ecc0.
  2 such `sw` accesses store 4 bytes to [0x1014] +0x114, including `sw` at 0xd81eab4, `sw` at 0xd81ed18.
  The `sw` at 0xd81eab8 stores 4 bytes to a3 (arg3 at entry) +0xe8.
  The `sw` at 0xd81eabc stores 4 bytes to a3 (arg3 at entry) +0xdc.
  The `sw` at 0xd81eac4 stores 4 bytes to a3 (arg3 at entry) +0xe4.
  The `sw` at 0xd81eac8 stores 4 bytes to a3 (arg3 at entry) +0xe0.
  The `sw` at 0xd81ead0 stores 4 bytes to a3 (arg3 at entry) +0xd8.
  The `lw` at 0xd81ead8 loads 4 bytes from [a3+200] +0x64.
  2 such `lbu` accesses load 1 byte from a3 (arg3 at entry) +0xf4, including `lbu` at 0xd81eb00, `lbu` at 0xd81ee70.
  The `sw` at 0xd81eb34 stores 4 bytes to [0x1014] +0x118.
  The `lw` at 0xd81eb3c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd81eb40 stores 4 bytes to [0x1014] +0x11c.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0x118, including `lw` at 0xd81eb48, `lw` at 0xd81f314.
  The `sw` at 0xd81eb4c stores 4 bytes to [0x1014] +0x120.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0x14, including `lw` at 0xd81eb50, `lw` at 0xd81f324.
  The `sw` at 0xd81eb5c stores 4 bytes to [[0x1014]+276] +0xd0.
  The `sw` at 0xd81eb60 stores 4 bytes to [[0x1014]+276] +0xd4.
  4 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xe4, including `sw` at 0xd81eb64, `sw` at 0xd81ee74, `sw` at 0xd81ef78.
  4 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xe8, including `sw` at 0xd81eb68, `sw` at 0xd81ee84, `sw` at 0xd81ef90.
  4 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xe0, including `sw` at 0xd81eb6c, `sw` at 0xd81eea0, `sw` at 0xd81efb4.
  4 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xdc, including `sw` at 0xd81eb70, `sw` at 0xd81ee94, `sw` at 0xd81ef98.
  4 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xd8, including `sw` at 0xd81eb74, `sw` at 0xd81ee8c, `sw` at 0xd81efa8.
  7 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x14, including `lw` at 0xd81ec10, `lw` at 0xd81eeac, `lw` at 0xd81ef44.
  The `lw` at 0xd81ec1c loads 4 bytes from a3 (arg3 at entry) +0xd0.
  The `lw` at 0xd81ec24 loads 4 bytes from a3 (arg3 at entry) +0xd4.
  The `lw` at 0xd81ec2c loads 4 bytes from [0x1014] +0x10c.
  2 such `lw` accesses load 4 bytes from [0x1014] +0x110, including `lw` at 0xd81ec38, `lw` at 0xd81ec4c.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0xd0, including `sw` at 0xd81ec44, `sw` at 0xd81f340.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0xd4, including `sw` at 0xd81ec54, `sw` at 0xd81f344.
  The `lw` at 0xd81ec90 loads 4 bytes from ret(__glXAddDrawableInterest) +0x10.
  2 such `lw` accesses load 4 bytes from abs 0x1048, including `lw` at 0xd81ed1c, `lw` at 0xd81f1e0.
  27 such `ld` accesses load 8 bytes from ?, including `ld` at 0xd81ed48, `ld` at 0xd81ed9c, `ld` at 0xd81edac.
  27 such `sd` accesses store 8 bytes to ?, including `sd` at 0xd81ed54, `sd` at 0xd81eda4, `sd` at 0xd81edb4.
  The `lw` at 0xd81ee60 loads 4 bytes from [a3+200] +0x60.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xd81f09c, `lw` at 0xd81f450.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0xd81f0f4, `sb` at 0xd81f114, `sb` at 0xd81f11c.
  The `sw` at 0xd81f0fc stores 4 bytes to a3 (arg3 at entry) +0x3c.
  The `sb` at 0xd81f1dc stores 1 byte to a3 (arg3 at entry) +0x124.
  The `jalr` at 0xd81e6a0 calls __glXInitThread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd81e6ac calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd81e720 calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81e768 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `bgezall` at 0xd81e844 calls (unnamed) [0xd81e19c] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1014]+276]+60], a3=sp-192, a4=a1 at entry (arg1).
  The `bgezall` at 0xd81e8e0 calls (unnamed) [0xd81e340] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=?.
  The `jalr` at 0xd81e92c calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-248, a2=?, a3=?, a6=sym(_XAsyncErrorHandler).
  The `jalr` at 0xd81e9b0 calls __glXOverrideVisualsBogusChoose with a0=?, a1=[a3+48], a2=?, a3=?.
  The `jalr` at 0xd81e9d4 calls __glXGetModes with a0=a0 at entry (arg0), a1=[a3+32], a2=?, a3=?.
  The `jalr` at 0xd81ea64 calls (unknown callee) with a0=[a3+200], a1=?, a2=?, a3=?, a7=[a3+48].
  The `jalr` at 0xd81eaf0 calls (unknown callee) with a0=[a3+200], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81eb84 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd81ebf8 calls (unnamed) [0xd81de58] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1014]+276]+60], a3=sp-192, a4=a1 at entry (arg1), a5=a2 at entry (arg2).
  The `jalr` at 0xd81ec08 calls __glXInitThread with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd81ec58 calls __glXUnbindHWContextFromThread with a0=[[[0x1014]+276]+200], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81ec74 calls __glXAddDrawableInterest with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `bgezall` at 0xd81ecdc calls (unnamed) [0xd81e19c] with a0=[[[0x1014]+276]+216], a1=0x0, a2=[[[0x1014]+276]+60], a3=sp-192, a4=0x0.
  The `jalr` at 0xd81ecfc calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd81ee64 calls (unknown callee) with a0=[a3+200], a1=[[[0x1014]+276]+224], a2=[[[0x1014]+276]+216], a3=?.
  The `jalr` at 0xd81eea8 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20].
  The `bgezall` at 0xd81eec4 calls (unnamed) [0xd81e340] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=?.
  The `jalr` at 0xd81eee4 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-208, a2=[a0+1224], a3=sp-208.
  The `jalr` at 0xd81ef48 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20].
  The `bgezall` at 0xd81ef64 calls (unnamed) [0xd81e340] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=?.
  The `bgezall` at 0xd81efb0 calls (unnamed) [0xd81e340] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=?.
  The `jalr` at 0xd81efdc calls __glXOverrideVisualsBogusChoose with a0=?, a1=[a3+48], a2=?, a3=?.
  The `jalr` at 0xd81eff4 calls __glXGetModes with a0=a0 at entry (arg0), a1=[a3+32], a2=ret(__glXOverrideVisualsBogusChoose), a3=?.
  The `jalr` at 0xd81f038 calls glXQueryDrawable with a0=a0 at entry (arg0), a1=?, a2=0x8025, a3=?, a5=0x6.
  The `jalr` at 0xd81f06c calls XSGIMiscQueryExtension with a0=a0 at entry (arg0), a1=sp-160, a2=sp-156, a3=?.
  The `jalr` at 0xd81f0e4 calls _XSGISetSpecialDestroyInterest with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd81f148 calls __glXFreeContext with a0=[[0x1014]+276], a1=0x1, a2=[[[0x1014]+276]+20], a3=[[[0x1014]+276]+280], a4=[0x1014], a5=[[[0x1014]+276]+272], a6=[0x1014], a7=[[[0x1014]+276]+216].
  The `jalr` at 0xd81f164 calls __glXPostError with a0=a0 at entry (arg0), a1=0xa, a2=0x5, a3=[a3+20].
  The `jalr` at 0xd81f1c0 calls glXQueryServerString with a0=a0 at entry (arg0), a1=[a3+32], a2=0x2, a3=?.
  The `jalr` at 0xd81f1d0 calls strstr with a0=ret(glXQueryServerString), a1=0xd846cc8, a2=?, a3=?.
  The `jalr` at 0xd81f304 calls glXQueryDrawable with a0=a0 at entry (arg0), a1=?, a2=0x8025, a3=?, a5=0x6.
  The `jalr` at 0xd81f328 calls __glXPostError with a0=a0 at entry (arg0), a1=?, a2=0x5, a3=[[[0x1014]+276]+20].
  The `jalr` at 0xd81f3ec calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20].
  The `bgezall` at 0xd81f408 calls (unnamed) [0xd81e340] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=?.
  The `jalr` at 0xd81f498 calls _XSGISetSpecialDestroyInterest with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd81f5bc calls __glXPostError with a0=a0 at entry (arg0), a1=0x8, a2=0x5, a3=[a3+20].
  The `bgezall` at 0xd81f5d8 calls (unnamed) [0xd81e340] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=?.
  The `jalr` at 0xd81f5fc calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20].
  The `bgezall` at 0xd81f618 calls (unnamed) [0xd81e340] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=0x0, a3=0x0.
  The `jalr` at 0xd81f63c calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20].
  The `bgezall` at 0xd81f658 calls (unnamed) [0xd81e340] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=ret(__glXAddDrawableInterest), a3=0x0.
  The `bgezall` at 0xd81f680 calls (unnamed) [0xd81e340] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=0x0.
  The `beq` branch at 0xd81e6b8 targets 0xd81f120, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `bne` branch at 0xd81e6e0 targets 0xd81ec08, is taken when s0(=a3) != 0, and falls through when s0(=a3) == 0.
  The `beq` branch at 0xd81e6f4 targets 0xd81ecf4, is taken when v1(=[[[0x1014]+276]+196]) == 0, and falls through when v1(=[[[0x1014]+276]+196]) != 0.
  The `bne` branch at 0xd81e6fc targets 0xd81e71c, is taken when s0(=a3) != s2(=[[0x1014]+276]), and falls through when s0(=a3) == s2(=[[0x1014]+276]).
  The `bne` branch at 0xd81e708 targets 0xd81e71c, is taken when t8(=[[[0x1014]+276]+224]) != s5(=a1), and falls through when t8(=[[[0x1014]+276]+224]) == s5(=a1).
  The `beq` branch at 0xd81e714 targets 0xd81ee28, is taken when t9(=[[[0x1014]+276]+220]) == s6(=a2), and falls through when t9(=[[[0x1014]+276]+220]) != s6(=a2).
  The `beq` branch at 0xd81e728 targets 0xd81f314, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `bne` branch at 0xd81e730 targets 0xd81ec58, is taken when s0(=a3) != s2(=[[0x1014]+276]), and falls through when s0(=a3) == s2(=[[0x1014]+276]).
  The `beq` branch at 0xd81e744 targets 0xd81e7d0, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xd81e750 targets 0xd81e7d8, is taken when at(=[a3+196]) == 0, and falls through when at(=[a3+196]) != 0.
  The `beq` branch at 0xd81e758 targets 0xd81e7d8, is taken when s5(=a1) == 0, and falls through when s5(=a1) != 0.
  The `beq` branch at 0xd81e760 targets 0xd81e7d8, is taken when s6(=a2) == 0, and falls through when s6(=a2) != 0.
  The `beq` branch at 0xd81e770 targets 0xd81f5ec, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `bne` branch at 0xd81e780 targets 0xd81ec68, is taken when v0(=[ret(__glXAddDrawableInterest)+8]) != v1(=[a3+32]), and falls through when v0(=[ret(__glXAddDrawableInterest)+8]) == v1(=[a3+32]).
  The `bne` branch at 0xd81e790 targets 0xd81ec68, is taken when a0(=[ret(__glXAddDrawableInterest)+12]) != a1(=[a3+48]), and falls through when a0(=[ret(__glXAddDrawableInterest)+12]) == a1(=[a3+48]).
  The `beq` branch at 0xd81e79c targets 0xd81ec68, is taken when a2(=[ret(__glXAddDrawableInterest)+44]) == a3(=0x3), and falls through when a2(=[ret(__glXAddDrawableInterest)+44]) != a3(=0x3).
  The `bne` branch at 0xd81e7a4 targets 0xd81ec74, is taken when s5(=a1) != s6(=a2), and falls through when s5(=a1) == s6(=a2).
  The `beq` branch at 0xd81e7b0 targets 0xd81eef8, is taken when a1(=[[[0x1014]+276]+196]) == 0, and falls through when a1(=[[[0x1014]+276]+196]) != 0.
  The `bne` branch at 0xd81e7b8 targets 0xd81e7e8, is taken when s8(=one of 0x0, 0x1) != 0, and falls through when s8(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xd81e7c0 targets 0xd81ea20, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0xd81e7c8 targets 0xd81ea9c and is always taken.
  The `beq` branch at 0xd81e7d0 targets 0xd81f100, is taken when s5(=a1) == 0, and falls through when s5(=a1) != 0.
  The `beq` branch at 0xd81e7dc targets 0xd81eef4, is taken when a1(=[[[0x1014]+276]+196]) == 0, and falls through when a1(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd81e7e8 targets 0xd81ecb0, is taken when a1(=[[[0x1014]+276]+196]) == 0, and falls through when a1(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd81e7f4 targets 0xd81e814, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0xd81e800 targets 0xd81f064, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xd81e80c targets 0xd81f064, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xd81e814 targets 0xd81e828, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `bne` branch at 0xd81e820 targets 0xd81ebd0, is taken when a6(=[a3+29]:1) != 0, and falls through when a6(=[a3+29]:1) == 0.
  The `bne` branch at 0xd81e828 targets 0xd81ebcc, is taken when s5(=a1) != s6(=a2), and falls through when s5(=a1) == s6(=a2).
  The `bne` branch at 0xd81e864 targets 0xd81e88c, is taken when ra(?) != at(=sym(_XAsyncErrorHandler)), and falls through when ra(?) == at(=sym(_XAsyncErrorHandler)).
  The `beq` branch at 0xd81e86c targets 0xd81e87c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd81e874 targets 0xd81f110, is taken when v1(=0x3) == a0(?), and falls through when v1(=0x3) != a0(?).
  The `bne` branch at 0xd81e880 targets 0xd81eed8, is taken when a2(=[a0+1224]) != a3(=sp-208), and falls through when a2(=[a0+1224]) == a3(=sp-208).
  The `bne` branch at 0xd81e8a0 targets 0xd81e938, is taken when a5(?) != a6(=sym(_XAsyncErrorHandler)), and falls through when a5(?) == a6(=sym(_XAsyncErrorHandler)).
  The `beq` branch at 0xd81e8a8 targets 0xd81e8b8, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0xd81e8b0 targets 0xd81f118, is taken when t0(=0x3) == t1(?), and falls through when t0(=0x3) != t1(?).
  The `bne` branch at 0xd81e8bc targets 0xd81e920, is taken when t2(=[a0+1224]) != t3(=sp-248), and falls through when t2(=[a0+1224]) == t3(=sp-248).
  The `bne` branch at 0xd81e8c4 targets 0xd81e940, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xd81e938 targets 0xd81e8d0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xd81e940 targets 0xd81e954, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xd81e94c targets 0xd81f0f8, is taken when ra(=[a3+196]) == 0, and falls through when ra(=[a3+196]) != 0.
  The `beq` branch at 0xd81e954 targets 0xd81e970, is taken when s0(=a3) == s2(=[[0x1014]+276]), and falls through when s0(=a3) != s2(=[[0x1014]+276]).
  The `beq` branch at 0xd81e964 targets 0xd81e970, is taken when s2(=[[0x1014]+276]) == at(=0xd846f20), and falls through when s2(=[[0x1014]+276]) != at(=0xd846f20).
  The `beq` branch at 0xd81e970 targets 0xd81ea74, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0xd81e97c targets 0xd81ea0c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xd81e98c targets 0xd81e9c4, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xd81e998 targets 0xd81e9c4, is taken when a0(=[a3+29]:1) == 0, and falls through when a0(=[a3+29]:1) != 0.
  The `beq` branch at 0xd81e9bc targets 0xd81e9cc and is always taken.
  The `beq` branch at 0xd81e9f4 targets 0xd81ea04, is taken when a2(=[a3+284]) >= 0x2 (signed), and falls through when a2(=[a3+284]) < 0x2 (signed).
  The `bne` branch at 0xd81e9fc targets 0xd81ea0c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xd81ea04 targets 0xd81f2f8, is taken when a4(?) == a5(=0x6), and falls through when a4(?) != a5(=0x6).
  The `beq` branch at 0xd81ea10 targets 0xd81efc0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xd81ea18 targets 0xd81ea74, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0xd81ea28 targets 0xd81ea48, is taken when a7(=[a3+48]) != a2(?), and falls through when a7(=[a3+48]) == a2(?).
  The `beq` branch at 0xd81ea34 targets 0xd81ea74, is taken when t0(?) == a2(?), and falls through when t0(?) != a2(?).
  The `beq` branch at 0xd81ea40 targets 0xd81ea74, is taken when t1(?) == t2(=0x3), and falls through when t1(?) != t2(=0x3).
  The `beq` branch at 0xd81ea50 targets 0xd81ea74, is taken when t9(=[[a3+200]+104]) == 0, and falls through when t9(=[[a3+200]+104]) != 0.
  The `beq` branch at 0xd81ea6c targets 0xd81f5b0, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xd81ea74 targets 0xd81ea9c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0xd81ea7c targets 0xd81ea9c, is taken when s1(?) == s3(?), and falls through when s1(?) != s3(?).
  The `beq` branch at 0xd81ea88 targets 0xd81ef10, is taken when t3(?) == t8(=0x4), and falls through when t3(?) != t8(=0x4).
  The `beq` branch at 0xd81ea94 targets 0xd81ef10, is taken when t9(?) == ra(=0x4), and falls through when t9(?) != ra(=0x4).
  The `beq` branch at 0xd81ea9c targets 0xd81ed0c, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xd81eacc targets 0xd81f1b4, is taken when at(=[a3+196]) == 0, and falls through when at(=[a3+196]) != 0.
  The `beq` branch at 0xd81eae4 targets 0xd81ee60, is taken when t9(=[[a3+200]+100]) == 0, and falls through when t9(=[[a3+200]+100]) != 0.
  The `beq` branch at 0xd81eaf8 targets 0xd81f3b8, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xd81eb04 targets 0xd81eb14, is taken when a0(=[a3+244]:1) == 0, and falls through when a0(=[a3+244]:1) != 0.
  The `beq` branch at 0xd81eb0c targets 0xd81ef78, is taken when s8(=one of 0x0, 0x1) == 0, and falls through when s8(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd81eb14 targets 0xd81eb78, is taken when s0(=a3) == s2(=[[0x1014]+276]), and falls through when s0(=a3) != s2(=[[0x1014]+276]).
  The `beq` branch at 0xd81eb24 targets 0xd81eb78, is taken when s2(=[[0x1014]+276]) == a1(=0xd846f20), and falls through when s2(=[[0x1014]+276]) != a1(=0xd846f20).
  The `beq` branch at 0xd81eb54 targets 0xd81f144, is taken when a2(=[[[0x1014]+276]+20]) == 0, and falls through when a2(=[[[0x1014]+276]+20]) != 0.
  The `beq` branch at 0xd81eb78 targets 0xd81eb98, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bne` branch at 0xd81eb90 targets 0xd81ecfc, is taken when s7(?) != t1(?), and falls through when s7(?) == t1(?).
  The `beq` branch at 0xd81ec00 targets 0xd81e850 and is always taken.
  The `beq` branch at 0xd81ec14 targets 0xd81f380, is taken when a3(=[a3+20]) == 0, and falls through when a3(=[a3+20]) != 0.
  The `beq` branch at 0xd81ec28 targets 0xd81ec44, is taken when a0(=[a3+208]) == 0, and falls through when a0(=[a3+208]) != 0.
  The `bne` branch at 0xd81ec30 targets 0xd81f15c, is taken when a0(=[a3+208]) != v0(=[[0x1014]+268]), and falls through when a0(=[a3+208]) == v0(=[[0x1014]+268]).
  The `bne` branch at 0xd81ec3c targets 0xd81f15c, is taken when at(=[a3+212]) != v1(=[[0x1014]+272]), and falls through when at(=[a3+212]) == v1(=[[0x1014]+272]).
  The `beq` branch at 0xd81ec50 targets 0xd81e6e8 and is always taken.
  The `beq` branch at 0xd81ec60 targets 0xd81e73c and is always taken.
  The `beq` branch at 0xd81ec68 targets 0xd81f048, is taken when s5(=a1) == s6(=a2), and falls through when s5(=a1) != s6(=a2).
  The `beq` branch at 0xd81ec7c targets 0xd81f62c, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `bne` branch at 0xd81ec8c targets 0xd81ec9c, is taken when a1(=[ret(__glXAddDrawableInterest)+8]) != a2(=[a3+32]), and falls through when a1(=[ret(__glXAddDrawableInterest)+8]) == a2(=[a3+32]).
  The `bne` branch at 0xd81ec94 targets 0xd81e7ac, is taken when a3(=[ret(__glXAddDrawableInterest)+16]) != 0, and falls through when a3(=[ret(__glXAddDrawableInterest)+16]) == 0.
  The `bne` branch at 0xd81eca0 targets 0xd81e7e8, is taken when a1(=[[[0x1014]+276]+196]) != 0, and falls through when a1(=[[[0x1014]+276]+196]) == 0.
  The `beq` branch at 0xd81eca8 targets 0xd81f1ac and is always taken.
  The `beq` branch at 0xd81ecb8 targets 0xd81e7f0, is taken when s2(=[[0x1014]+276]) == a4(=0xd846f20), and falls through when s2(=[[0x1014]+276]) != a4(=0xd846f20).
  The `beq` branch at 0xd81ecc4 targets 0xd81e7f0, is taken when a0(=[[[0x1014]+276]+216]) == s4(=a0), and falls through when a0(=[[[0x1014]+276]+216]) != s4(=a0).
  The `beq` branch at 0xd81ece4 targets 0xd81f66c, is taken when v0(=ret(0xd81e19c)) == 0, and falls through when v0(=ret(0xd81e19c)) != 0.
  The `beq` branch at 0xd81ecec targets 0xd81e7f0 and is always taken.
  The `beq` branch at 0xd81ecf4 targets 0xd81e744 and is always taken.
  The `beq` branch at 0xd81ed04 targets 0xd81eb9c and is always taken.
  The `bne` branch at 0xd81ed20 targets 0xd81eb14, is taken when at(=[0x1048]) != 0, and falls through when at(=[0x1048]) == 0.
  The `bne` branch at 0xd81ed50 targets 0xd81ed38, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bgtz` branch at 0xd81ee18 targets 0xd81ed94, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `beq` branch at 0xd81ee20 targets 0xd81eb14 and is always taken.
  The `bnel` branch at 0xd81ee6c targets 0xd81eb04, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0; its branch-likely delay slot `lbu a0,244(s0)` at 0xd81ee70 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd81eed0 targets 0xd81eb9c and is always taken.
  The `beq` branch at 0xd81eeec targets 0xd81e88c and is always taken.
  The `beq` branch at 0xd81ef00 targets 0xd81e7b8, is taken when s2(=[[0x1014]+276]) == ra(=0xd846f20), and falls through when s2(=[[0x1014]+276]) != ra(=0xd846f20).
  The `beq` branch at 0xd81ef08 targets 0xd81e7e8 and is always taken.
  The `bne` branch at 0xd81ef20 targets 0xd81ea9c, is taken when at(?) < v1(?) (signed), and falls through when at(?) >= v1(?) (signed).
  The `bne` branch at 0xd81ef2c targets 0xd81ea9c, is taken when a0(?) < a1(?) (signed), and falls through when a0(?) >= a1(?) (signed).
  The `beq` branch at 0xd81ef70 targets 0xd81eb9c and is always taken.
  The `beq` branch at 0xd81efb8 targets 0xd81e6e0 and is always taken.
  The `beq` branch at 0xd81f014 targets 0xd81f024, is taken when a2(=[a3+284]) >= 0x2 (signed), and falls through when a2(=[a3+284]) < 0x2 (signed).
  The `bne` branch at 0xd81f01c targets 0xd81ea18, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0xd81f024 targets 0xd81ea18, is taken when a4(?) != a5(=0x6), and falls through when a4(?) == a5(=0x6).
  The `beq` branch at 0xd81f040 targets 0xd81ea18 and is always taken.
  The `bne` branch at 0xd81f050 targets 0xd81e7e8, is taken when a1(=[[[0x1014]+276]+196]) != 0, and falls through when a1(=[[[0x1014]+276]+196]) == 0.
  The `beq` branch at 0xd81f058 targets 0xd81f1a4 and is always taken.
  The `beq` branch at 0xd81f074 targets 0xd81e814, is taken when v0(=ret(XSGIMiscQueryExtension)) == 0, and falls through when v0(=ret(XSGIMiscQueryExtension)) != 0.
  The `beq` branch at 0xd81f080 targets 0xd81f448, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xd81f088 targets 0xd81e814, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xd81f094 targets 0xd81e814, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0xd81f0f0 targets 0xd81e814 and is always taken.
  The `beq` branch at 0xd81f0f8 targets 0xd81e954 and is always taken.
  The `bne` branch at 0xd81f100 targets 0xd81e7d8, is taken when s6(=a2) != 0, and falls through when s6(=a2) == 0.
  The `beq` branch at 0xd81f108 targets 0xd81e7b0 and is always taken.
  The `beq` branch at 0xd81f110 targets 0xd81e87c and is always taken.
  The `beq` branch at 0xd81f118 targets 0xd81e8b8 and is always taken.
  The `beq` branch at 0xd81f150 targets 0xd81eb78 and is always taken.
  The `beq` branch at 0xd81f1a4 targets 0xd81eef4 and is always taken.
  The `beq` branch at 0xd81f1ac targets 0xd81eef4 and is always taken.
  The `bne` branch at 0xd81f1e4 targets 0xd81eb14, is taken when v1(=[0x1048]) != 0, and falls through when v1(=[0x1048]) == 0.
  The `beq` branch at 0xd81f1ec targets 0xd81f4b0, is taken when v0(=ret(strstr)) == 0, and falls through when v0(=ret(strstr)) != 0.
  The `bne` branch at 0xd81f220 targets 0xd81f208, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bgtz` branch at 0xd81f2e8 targets 0xd81f264, is taken when a1(?) > 0 (signed), and falls through when a1(?) <= 0 (signed).
  The `beq` branch at 0xd81f2f0 targets 0xd81eb14 and is always taken.
  The `beq` branch at 0xd81f30c targets 0xd81ea10 and is always taken.
  The `beq` branch at 0xd81f330 targets 0xd81f34c, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xd81f338 targets 0xd81f34c, is taken when s0(=a3) == s2(=[[0x1014]+276]), and falls through when s0(=a3) != s2(=[[0x1014]+276]).
  The `beq` branch at 0xd81f4a8 targets 0xd81f088 and is always taken.
  The `bne` branch at 0xd81f4d8 targets 0xd81f4c0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bgtz` branch at 0xd81f5a0 targets 0xd81f51c, is taken when a1(?) > 0 (signed), and falls through when a1(?) <= 0 (signed).
  The `beq` branch at 0xd81f5a8 targets 0xd81eb14 and is always taken.
  The `beq` branch at 0xd81f5e4 targets 0xd81eb9c and is always taken.
  The `beq` branch at 0xd81f624 targets 0xd81eb9c and is always taken.
  The `beq` branch at 0xd81f664 targets 0xd81eb9c and is always taken.
  The `beq` branch at 0xd81f68c targets 0xd81eb9c and is always taken.
  The return at 0xd81e918 has v0 = 0x0.
  The return at 0xd81ebc4 has v0 = one of 0x0, 0x1.
  The return at 0xd81ee58 has v0 = 0x1.
  The return at 0xd81f13c has v0 = 0x0.
  The return at 0xd81f19c has v0 = 0x0.
  The return at 0xd81f378 has v0 = 0x0.
  The return at 0xd81f3b0 has v0 = 0x0.
  The return at 0xd81f440 has v0 = 0x0.
  The instructions from 0xd81f060 to 0xd81f060 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd81f158 to 0xd81f158 are not reached by any path from the entry, and their branches are not listed.

- `glXMakeContextCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd81f704 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd81f704-0xd81f738 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd81f720 calls __glXMakeContextCurrent with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0.
  The return at 0xd81f730 has v0 = ret(__glXMakeContextCurrent).

- `glXGetCurrentReadDrawable` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd81f778 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd81f778-0xd81f7b8 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xd81f79c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81f7a4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81f7ac loads 4 bytes from [[0x1014]+276] +0xdc.
  The `jalr` at 0xd81f794 calls __glXInitThread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd81f7b0 has v0 = [[[0x1014]+276]+220].

- `glXSelectEventSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd823d98 (n32).
  Appends a 24-byte (0x18) request record to the output buffer held in the structure passed in a0, filling it from its two stacked arguments.
  Inferred: the structure at a0 is the per-display state, because it first passes a0 to `__glXSetupForCommand` (`jalr` at 0xd823dc4), which the callee note says selects the display's current context.
  The low byte of that call's return is kept in a0 (masked with 0xff just after the call); when it is zero (`beq` at 0xd823dd0) the routine returns at once with the call's return value; otherwise the byte is saved to the stack at 0xd823de0 and, when the pointer at +0x4d0 (1232) is not zero, the routine calls through the word at offset 0 of the object that pointer names (`jalr` at 0xd823de8).
  It then reads the buffer cursor at +0x6c and the limit at +0x70; if the limit is below the cursor plus 0x18 (unsigned, `bne` at 0xd823e00) it calls `_XFlush` on a0 (`jalr` at 0xd823ea4), reloads the cursor and rechecks.
  With room available it stores the cursor to +0x64 (`sw` at 0xd823e10), adds 1 to the word at +0x60 (`sw` at 0xd823e30) and adds 0x18 to the cursor at +0x6c (`sw` at 0xd823e38).
  The record at the old cursor gets: byte 0x10 at +0x1 (`sb` at 0xd823e4c), halfword 6 at +0x2 (`sh` at 0xd823e18), word 0x10009 at +0x4 (`sw` at 0xd823e5c), argument a1 at +0xc (`sw` at 0xd823e48), 0x801f at +0x10 (`sw` at 0xd823e44) and argument a2 at +0x14 (`sw` at 0xd823e3c).
  Byte +0 is written twice: 0x10 at 0xd823e20, then the low byte kept from the `__glXSetupForCommand` return and saved at 0xd823de0 (`sb` at 0xd823e54).
  Afterwards, when the pointer at +0x4d0 is not zero, it calls through the word at +4 of that object (`jalr` at 0xd823e70) with a1 set to argument a2, a2 to 0x801f, a3 to argument a1, a5 to 0x10 and a7 to the incremented word at +0x60; then, when the word at +0x7c is not zero, it calls through that word (`jalr` at 0xd823e84) and returns.
  Unknown: the field layout of the 24-byte record, since no field table is linked.
  Unknown: which request fields the words 0x801f and 0x10009 fill in the record, since no ioctl or token row links to them.
  Evidence grade: inferred.

- `glXSelectEventSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd823d98 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd823d98-0xd823eb4 (284 bytes).
  It occupies 284 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd823dd8, `lw` at 0xd823e60.
  The `lw` at 0xd823de4 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd823df0, `lw` at 0xd823e28, `lw` at 0xd823eb0.
  The `lw` at 0xd823df4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd823e10 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd823e18 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd823e20, `sb` at 0xd823e54.
  The `lw` at 0xd823e24 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd823e30 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd823e38 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd823e3c stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd823e44 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd823e48 stores 4 bytes to [a0+108] +0xc.
  The `sb` at 0xd823e4c stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd823e5c stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd823e6c loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd823e78 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd823dc4 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd823de8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd823e70 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x801f, a3=a1 at entry (arg1), a4=[a0+1232], a5=0x10, a7=[a0+96]+1.
  The `jalr` at 0xd823e84 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd823ea4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd823dd0 targets 0xd823e90, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd823ddc targets 0xd823df0, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `bne` branch at 0xd823e00 targets 0xd823ea0, is taken when v0(=[a0+112]) < v1(=[a0+108]+24) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+24) (unsigned).
  The `beq` branch at 0xd823e64 targets 0xd823e78, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd823e7c targets 0xd823e90, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd823eac targets 0xd823e04 and is always taken.
  The return at 0xd823e98 has v0 = one of ret(__glXSetupForCommand), ?, ret(?).

- `__glXGetDrawableAttributes` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd823fec (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd823fec-0xd8243fc (1040 bytes).
  It occupies 1040 bytes.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd824038, `lw` at 0xd824104, `lw` at 0xd8241e4.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x0, including `lw` at 0xd82404c, `lw` at 0xd824154.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd824058, `lw` at 0xd824090, `lw` at 0xd824160.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xd82405c, `lw` at 0xd824164.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd824078, `sw` at 0xd82417c.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xd824080, `sh` at 0xd824184.
  4 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd824088, `sb` at 0xd8240d4, `sb` at 0xd82418c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xd82408c, `lw` at 0xd824190.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xd824098, `sw` at 0xd82419c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xd8240a0, `sw` at 0xd8241a4.
  The `sw` at 0xd8240a4 stores 4 bytes to [a0+108] +0xc.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x4, including `sw` at 0xd8240bc, `sw` at 0xd8241bc.
  2 such `sb` accesses store 1 byte to [a0+108] +0x1, including `sb` at 0xd8240c8, `sb` at 0xd8241b0.
  5 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd824114, `lw` at 0xd8241f0, `lw` at 0xd824248.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd824120, `lw` at 0xd8241fc, `lw` at 0xd824254.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x18, including `sw` at 0xd824298, `sw` at 0xd824324.
  The `sw` at 0xd82429c stores 4 bytes to a2 (arg2 at entry) +0x14.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `sw` at 0xd8242a0, `sw` at 0xd8242d0.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0xc, including `sw` at 0xd8242a4, `sw` at 0xd82432c.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `sw` at 0xd8242a8, `sw` at 0xd824334.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `sw` at 0xd8242ac, `sw` at 0xd82431c.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd8242b0, `sw` at 0xd82434c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8242e8, `lw` at 0xd824300.
  The `lw` at 0xd82430c loads 4 bytes from table(0xd844788) +0x0.
  The `sb` at 0xd82433c stores 1 byte to a2 (arg2 at entry) +0x15.
  The `sb` at 0xd824344 stores 1 byte to a2 (arg2 at entry) +0x14.
  The `jalr` at 0xd824020 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd824050 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8240d0 calls _XReply with a0=a0 at entry (arg0), a1=sp-144, a2=0x0, a3=0x0, a5=0x11, a6=0x1000a, a7=a1 at entry (arg1).
  The `jalr` at 0xd8240f4 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd824118 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd82412c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824158 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8241c4 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0.
  The `jalr` at 0xd8241f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd824208 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82422c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82424c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd824260 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824290 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd824360 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?, a7=-0x800c.
  The `jalr` at 0xd824374 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824380 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8243b0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8243d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8243e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd82402c targets 0xd8243a4, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd82403c targets 0xd82414c, is taken when v0(=a3) == 0, and falls through when v0(=a3) != 0.
  The `beq` branch at 0xd824044 targets 0xd824058, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd824068 targets 0xd82422c, is taken when v1(=[a0+112]) < a0(=[a0+108]+16) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xd8240d8 targets 0xd82423c, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xd8240e8 targets 0xd8241e4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0xd8240fc targets 0xd824284, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd82410c targets 0xd824120, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd824124 targets 0xd824138, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd82414c targets 0xd824160, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd824170 targets 0xd8243ac, is taken when t9(=[a0+112]) < ra(=[a0+108]+8) (unsigned), and falls through when t9(=[a0+112]) >= ra(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xd8241cc targets 0xd8243c0, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0xd8241dc targets 0xd8240f0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xd8241e8 targets 0xd8241fc, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd824200 targets 0xd824210, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd824234 targets 0xd824070 and is always taken.
  The `beq` branch at 0xd824240 targets 0xd824254, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd824258 targets 0xd82426c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `blez` branch at 0xd8242c0 targets 0xd824350, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0xd8242c8 targets 0xd8243f4 and is always taken.
  The `beq` branch at 0xd8242dc targets 0xd824350, is taken when s0(?) == a6(?), and falls through when s0(?) != a6(?).
  The `beq` branch at 0xd824304 targets 0xd8242dc, is taken when t2(=table(-0x800c)) >= 0x1a (unsigned), and falls through when t2(=table(-0x800c)) < 0x1a (unsigned).
  The `beq` branch at 0xd824318 targets 0xd8242dc and is always taken.
  The `beq` branch at 0xd824320 targets 0xd8242dc and is always taken.
  The `beq` branch at 0xd824328 targets 0xd8242dc and is always taken.
  The `beq` branch at 0xd824330 targets 0xd8242dc and is always taken.
  The `beq` branch at 0xd824338 targets 0xd8242dc and is always taken.
  The `beq` branch at 0xd824340 targets 0xd8242dc and is always taken.
  The `beq` branch at 0xd824348 targets 0xd8242dc and is always taken.
  The `beq` branch at 0xd824354 targets 0xd824368, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd82436c targets 0xd82437c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8243a4 targets 0xd824138 and is always taken.
  The `beq` branch at 0xd8243b8 targets 0xd824174 and is always taken.
  The `beq` branch at 0xd8243c4 targets 0xd8243d8, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd8243dc targets 0xd8243ec, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8243ec targets 0xd824138 and is always taken.
  The `beq` branch at 0xd8243f4 targets 0xd8242e8 and is always taken.
  The return at 0xd824144 has v0 = 0x0.
  The return at 0xd824224 has v0 = 0x0.
  The return at 0xd82427c has v0 = 0x0.
  The return at 0xd82439c has v0 = 0x1.
  The indirect jump at 0xd824310 uses the jump table at 0xd844788 with targets 0xd824348, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824318, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824340, 0xd824338, 0xd824330, 0xd824328, 0xd8242d0, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824320.
  The indirect jump at 0xd824310 uses the jump table at 0xd844788 with targets 0xd824348, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824318, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824340, 0xd824338, 0xd824330, 0xd824328, 0xd8242d0, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824320.
  The indirect jump at 0xd824310 uses the jump table at 0xd844788 with targets 0xd824348, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824318, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824340, 0xd824338, 0xd824330, 0xd824328, 0xd8242d0, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824320.
  The indirect jump at 0xd824310 uses the jump table at 0xd844788 with targets 0xd824348, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824318, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824340, 0xd824338, 0xd824330, 0xd824328, 0xd8242d0, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824320.
  The indirect jump at 0xd824310 uses the jump table at 0xd844788 with targets 0xd824348, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824318, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824340, 0xd824338, 0xd824330, 0xd824328, 0xd8242d0, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd8242dc, 0xd824320.

- `__glXGetDrawableAttributes` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd823fec
  `__glXGetDrawableAttributes` is a 1040-byte n32 routine. It calls `__glXSetupForCommand` and takes a failure exit when the low byte of the result is zero. It calls `_XReply` twice, on two different request paths (0xd8240d0 and 0xd8241c4); at the first, a5 = 0x11 and a6 = 0x1000a are set, but they are not `_XReply` arguments, so their role is not established. It reads reply data with `_XRead` into a `malloc` buffer (call 14, 0xd824290), then makes seven word stores at offsets 0x18 down to 0x0 (0xd824298 to 0xd8242b0) from a base the facts do not name. A branch at 0xd824304 compares a value read from a table with 0x1a (unsigned); the facts do not show the table, so its meaning is not established. It returns 0 or 1.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glXGetDrawableAttributes` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd823fec
  **Inferred.** A request-and-reply routine with a call sequence like the IP30ODSY64 build's `__glXGetDrawableAttributes` at 0xcf865dc. It calls `__glXSetupForCommand` at 0xd824020 and `_XReply` at 0xd8240d0 and 0xd8241c4 (a stack buffer as a1). It calls `malloc` at 0xd8240f4 and reads into the result with `_XRead` at 0xd824290 when `malloc` returns nonzero, and releases the buffer with `free` at 0xd824380. It calls `_XFlush` at 0xd82422c and 0xd8243b0.
  Reviewed: 2026-11-12

- `glXDestroyGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8243fc (n32).
  Inferred: releases the client-side drawable-interest record for arg1 and then appends a 0x10-byte request to the display's output buffer, since the cursor at arg0+0x6c advances by 0x10 and `_XFlush` (0xd82452c) runs when the limit at arg0+0x70 would be passed.
  If `__glXSetupForCommand` (`jalr` at 0xd824428) leaves a zero low byte (`beq` at 0xd824434), the routine returns at once with that masked zero in `v0`; the masked byte is saved to the frame in the delay slot (`sd` at 0xd824438) on both paths.
  Otherwise it calls `__glXAddDrawableInterest` with arg1 (`jalr` at 0xd824444) and passes its result R to `__glXRemoveDrawableInterest` (`jalr` at 0xd824454). It then loads R's word at +0x14 (0xd82445c), and when that is zero (`beq` at 0xd824460) stores zero to R's word at +0x0 (`sw` at 0xd824540); `__glXFreeDrawablePrivate` (`jalr` at 0xd824468) then takes R on both paths. Inferred: the word at +0x14 is the reference count, since the `__glXAddDrawableInterest` note says a match increments the count at +0x14.
  Next, entry +0 of the table pointer at arg0+0x4d0 is called (`jalr` at 0xd824480) when that pointer is nonzero (`beq` at 0xd824474). If the limit at arg0+0x70 is below the cursor at arg0+0x6c plus 0x10 (`bne` at 0xd824498), `_XFlush` runs first. The write cursor is first recorded at arg0+0x64 (0xd8244a0), then the request is filled in: halfword 4 goes to +0x2, byte 0x10 to +0x0 (0xd8244b0), entry `a1` to +0xc, 0x10008 to +0x4, byte 0x10 to +0x1 (0xd8244dc), and last +0x0 is overwritten (`sb` at 0xd8244e0) with the masked byte saved at 0xd824438. Afterwards arg0+0x6c is 0x10 higher and arg0+0x60 is one higher (0xd8244c8, 0xd8244c0).
  Entry +4 of the table follows (`jalr` at 0xd8244f4) when the pointer is nonzero (`beq` at 0xd8244e8), then the pointer at arg0+0x7c (`jalr` at 0xd824508) when it is nonzero (`beq` at 0xd824500). The routine returns with `v0` as the last executed call or load left it (0xd824520); the bundle does not follow that value.
  Unknown: the routines the pointers at [arg0+0x4d0] (entries +0 and +4) and at arg0+0x7c lead to, and so the device-side result of the request written before the +4 entry.
  Unknown: the handling of R by `__glXRemoveDrawableInterest` and `__glXFreeDrawablePrivate`; neither has a committed note, so the word at +0x14 after the remove call is not settled.
  Evidence grade: inferred.

- `glXDestroyGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8243fc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8243fc-0xd824544 (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0xd82445c loads 4 bytes from ret(__glXAddDrawableInterest) +0x14.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd824470, `lw` at 0xd8244e4.
  The `lw` at 0xd82447c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd824488, `lw` at 0xd8244b8, `lw` at 0xd824538.
  The `lw` at 0xd82448c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8244a0 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8244a8 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8244b0, `sb` at 0xd8244e0.
  The `lw` at 0xd8244b4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8244c0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8244c8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8244d0 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8244d8 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd8244dc stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8244f0 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8244fc loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `sw` at 0xd824540 stores 4 bytes to ret(__glXAddDrawableInterest) +0x0.
  The `jalr` at 0xd824428 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd824444 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824454 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824468 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824480 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8244f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x10008, a4=0x10, a6=[a0+96]+1, a7=[a0+108]+16.
  The `jalr` at 0xd824508 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82452c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=[a0+108]+16, a3=?.
  The `beq` branch at 0xd824434 targets 0xd824510, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd824460 targets 0xd82453c, is taken when v1(=[ret(__glXAddDrawableInterest)+20]) == 0, and falls through when v1(=[ret(__glXAddDrawableInterest)+20]) != 0.
  The `beq` branch at 0xd824474 targets 0xd824488, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xd824498 targets 0xd824528, is taken when a1(=[a0+112]) < a2(=[a0+108]+16) (unsigned), and falls through when a1(=[a0+112]) >= a2(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xd8244e8 targets 0xd8244fc, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd824500 targets 0xd824510, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd824534 targets 0xd82449c and is always taken.
  The `beq` branch at 0xd82453c targets 0xd824464 and is always taken.
  The return at 0xd824520 has v0 = one of ?, ret(?).

- `glXCreateGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd824c48 (n32).
  Inferred: this creates a drawable for the display in a0 by sending one variable-length request,
  because it calls a function through the display's word at +0x2c, registers the result with
  `__glXAddDrawableInterest` (committed note: a search of a list of drawable interests), writes a
  request record at the display's output pointer and waits for `_XReply`.
  The `jalr` at 0xd824c80 calls `__glXSetupForCommand` with the entry arguments; its return is masked
  to the low 8 bits and kept at sp+0x30, and zero returns 0 at 0xd824e9c (`beq` at 0xd824c90). The
  call through +0x2c (`jalr` at 0xd824c9c, a0 = display) gives a value kept in s1 and passed to
  `__glXAddDrawableInterest` (`jalr` at 0xd824cac). A zero result (`beq` at 0xd824cb4) calls
  `__glXPostError` with 0xb, 0x10 and 0 (`jalr` at 0xd824f50) and returns 0; otherwise the word 4 is
  stored at +0x2c of the returned record (`sw` at 0xd824cc4) and the record pointer is kept at sp+0x28.
  The routine then counts 8-byte pairs in the list at a4: zero pairs when a4 is null (`beq` at
  0xd824cc8) or its first word is zero (`beq` at 0xd824cd8), otherwise the loop at 0xd824ce4 to
  0xd824d0c counts pairs until the next pair's first word is zero. After the optional call through the
  first pointer of the block at +0x4d0 (`jalr` at 0xd824d24), the request size is 0x20 plus 8 times the
  count. If the word at +0x70 is below the word at +0x6c plus that size (`bne` at 0xd824d48) `_XFlush`
  runs first (`jalr` at 0xd824eb0). The record at +0x6c is byte 0x10 at +0x0 (replaced at 0xd824da8 by
  the masked setup return), byte 0x11 at +0x1, the size divided by four as a halfword at +0x2 (`sh` at
  0xd824d68), word 0x10007 at +0x4, the word at a1+0x24 at +0xc, the word at a1+0x48 at +0x10, the
  value returned by the +0x2c call at +0x14, a2 at +0x18 and a3 at +0x1c. The pointer is saved at +0x64
  (`sw` at 0xd824d54), +0x60 is incremented by one and +0x6c advances by the request size (`sw` at
  0xd824d88). When a4 is non-zero and the count is positive, the loop at 0xd824de8 to 0xd824e04 copies
  the pairs from a4 to the record from +0x20, two words per pair, one pair per pass.
  `_XReply` is called with the display, sp+0x0, 0 and 0 (`jalr` at 0xd824e1c). A zero reply (`beq` at
  0xd824e24) runs the optional calls through +0x4 of the +0x4d0 block and through the pointer at +0x7c,
  calls `__glXPostHiddenError` with 0x11 (`jalr` at 0xd824f00), then `__glXRemoveDrawableInterest` and
  `__glXFreeDrawablePrivate` on the record, zeroing the record's first word in the delay slot of the
  latter (`sw` at 0xd824f24), and returns 0. A non-zero reply runs the same optional calls, calls
  `__glXRemoveDrawableInterest` on the record (`jalr` at 0xd824e58) and returns the value kept in s1 from
  the +0x2c call (`move` at 0xd824e64). Unknown: the return value of the +0x2c call and the content of
  the pair list, since both come from the caller and the display; the callers of this routine would
  settle it.
  Evidence grade: inferred.

- `glXCreateGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd824c48 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd824c48-0xd824f64 (796 bytes).
  It occupies 796 bytes.
  The `lw` at 0xd824c98 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd824cc4 stores 4 bytes to ret(__glXAddDrawableInterest) +0x2c.
  The `lw` at 0xd824cd0 loads 4 bytes from a4 (arg4 at entry) +0x0.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd824ce4, `lw` at 0xd824cf4, `lw` at 0xd824d04.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd824d14, `lw` at 0xd824e28, `lw` at 0xd824f3c.
  The `lw` at 0xd824d20 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd824d2c, `lw` at 0xd824d70, `lw` at 0xd824ec4.
  The `lw` at 0xd824d38 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd824d54 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd824d5c, `sb` at 0xd824da8.
  The `sh` at 0xd824d68 stores 2 bytes to [a0+108] +0x2.
  The `lw` at 0xd824d6c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd824d7c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd824d88 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sb` at 0xd824d90 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd824da0 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd824dac loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd824db0 stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd824db4 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd824db8 stores 4 bytes to [a0+108] +0x1c.
  The `sw` at 0xd824dbc stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd824dc4 stores 4 bytes to [a0+108] +0x18.
  The `sw` at 0xd824dcc stores 4 bytes to [a0+108] +0x10.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd824df0, `sw` at 0xd824e04, `sw` at 0xd824f24.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd824e34, `lw` at 0xd824ed0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd824e40, `lw` at 0xd824edc.
  The `jalr` at 0xd824c80 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd824c9c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824cac calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824d24 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd824e1c calls _XReply with a0=a0 at entry (arg0), a1=sp-144, a2=0x0, a3=0x0, a4=[a0+108].
  The `jalr` at 0xd824e38 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd824e4c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824e58 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd824eb0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+108].
  The `jalr` at 0xd824ed4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd824ee8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824f00 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=sp-144, a2=0x11, a3=0x0.
  The `jalr` at 0xd824f0c calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd824f20 calls __glXFreeDrawablePrivate with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd824f50 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x10, a3=0x0.
  The `beq` branch at 0xd824c90 targets 0xd824e84, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd824cb4 targets 0xd824f40, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `beq` branch at 0xd824cc8 targets 0xd824e7c, is taken when s0(=a4) == 0, and falls through when s0(=a4) != 0.
  The `beq` branch at 0xd824cd8 targets 0xd824f38, is taken when a0(=[a4]) == 0, and falls through when a0(=[a4]) != 0.
  The `beq` branch at 0xd824cec targets 0xd824d14, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xd824cfc targets 0xd824d14, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0xd824d0c targets 0xd824ce4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xd824d18 targets 0xd824d2c, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `bne` branch at 0xd824d48 targets 0xd824ea4, is taken when a5(=[a0+112]) < a6(?) (unsigned), and falls through when a5(=[a0+112]) >= a6(?) (unsigned).
  The `beq` branch at 0xd824dc8 targets 0xd824e08, is taken when s0(=a4) == 0, and falls through when s0(=a4) != 0.
  The `blez` branch at 0xd824dd4 targets 0xd824e08, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `bgtz` branch at 0xd824e00 targets 0xd824de8, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `beq` branch at 0xd824e24 targets 0xd824ec8, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xd824e2c targets 0xd824e40, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd824e44 targets 0xd824e54, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd824e7c targets 0xd824d14 and is always taken.
  The `beq` branch at 0xd824ec0 targets 0xd824d50 and is always taken.
  The `beq` branch at 0xd824ec8 targets 0xd824edc, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd824ee0 targets 0xd824ef0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd824f30 targets 0xd824e6c and is always taken.
  The `beq` branch at 0xd824f38 targets 0xd824d18 and is always taken.
  The `beq` branch at 0xd824f5c targets 0xd824e68 and is always taken.
  The return at 0xd824e74 has v0 = one of ?, 0x0.
  The return at 0xd824e9c has v0 = 0x0.

- `glXGetVideoSyncSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd824f64 (n32).
  Inferred: reads a video-sync value from the resource manager through an ioctl and stores one word through arg0, since the linked ioctl row for number 1022 (0x3fe) names a resource-manager video-sync handler.
  It loads the pointer at absolute 0x1014, then the pointer P at +0x114 from it (`lw` at 0xd824f64 and 0xd824f68), and P's word at +0xc4 (`lw` at 0xd824f88). It returns 5 (`v0` set at 0xd824f6c) without a call when P is zero or when that word is zero (`beq` at 0xd824f80 and 0xd824f8c); the pointer at 0x1014 itself is not tested.
  Otherwise it copies P's word at +0xcc into the frame word at sp-0x20 (`lw` at 0xd824f94, `sw` at 0xd824f98) and calls `ioctl` (`jalr` at 0xd824fbc) with 1022 as `a1`, the frame address sp-0x20 as `a2`, and as `a0` the word at +0x4 of table slot idx, where the table is the pointer at 0x1014 and idx is its word at +0x108 (`lw` at 0xd824f9c, 0xd824fa0 and 0xd824fc0, in the delay slot of the call).
  The ioctl's return value is not tested: the routine loads the frame word at sp-0x1c (`lw` at 0xd824fd4), stores it to arg0+0x0 in the delay slot of the return (`sw` at 0xd824fe0) and returns 0 (`v0` set at 0xd824fd0).
  Unknown: which words of the buffer at sp-0x20 the ioctl at 0xd824fbc fills, since the routine reads back only the word at sp-0x1c.
  Unknown: the handler behind ioctl number 0x3fe, which the bundle links by row but gives no reading for.
  Evidence grade: inferred.

- `glXGetVideoSyncSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd824f64 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd824f64-0xd824ff0 (140 bytes).
  It occupies 140 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd824f64, `lw` at 0xd824f9c.
  The `lw` at 0xd824f68 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd824f88 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd824f94 loads 4 bytes from [[0x1014]+276] +0xcc.
  The `lw` at 0xd824fa0 loads 4 bytes from [0x1014] +0x108.
  The `lw` at 0xd824fc0 loads 4 bytes from ([0x1014] + ([[0x1014]+264] << 0x2)) +0x4.
  The `sw` at 0xd824fe0 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jalr` at 0xd824fbc calls ioctl with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3fe, a2=sp-32, a3=a3 at entry (arg3), a4=[[0x1014]+276], a5=[[[0x1014]+276]+196].
  The `beq` branch at 0xd824f80 targets 0xd824fe4, is taken when a4(=[[0x1014]+276]) == 0, and falls through when a4(=[[0x1014]+276]) != 0.
  The `beq` branch at 0xd824f8c targets 0xd824fe4, is taken when a5(=[[[0x1014]+276]+196]) == 0, and falls through when a5(=[[[0x1014]+276]+196]) != 0.
  The return at 0xd824fdc has v0 = 0x0.
  The return at 0xd824fe8 has v0 = 0x5.

- `glXWaitVideoSyncSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd824ff0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd824ff0-0xd8250b8 (200 bytes).
  It occupies 200 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd824ff0, `lw` at 0xd825070.
  The `lw` at 0xd825000 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd825020 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd825060 loads 4 bytes from [[0x1014]+276] +0xcc.
  The `lw` at 0xd825074 loads 4 bytes from [0x1014] +0x108.
  The `lw` at 0xd825094 loads 4 bytes from ([0x1014] + ([[0x1014]+264] << 0x2)) +0x4.
  The `sw` at 0xd8250b4 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd825090 calls ioctl with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3ff, a2=sp-48, a3=a3 at entry (arg3), a4=a0 at entry (arg0), a5=a1 at entry (arg1), a6=[[0x1014]+276], a7=[[[0x1014]+276]+196].
  The `beq` branch at 0xd825018 targets 0xd825050, is taken when a6(=[[0x1014]+276]) == 0, and falls through when a6(=[[0x1014]+276]) != 0.
  The `beq` branch at 0xd825024 targets 0xd825050, is taken when a7(=[[[0x1014]+276]+196]) == 0, and falls through when a7(=[[[0x1014]+276]+196]) != 0.
  The `blez` branch at 0xd82502c targets 0xd825044, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `bltz` branch at 0xd825034 targets 0xd825044, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bne` branch at 0xd82503c targets 0xd825060, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The return at 0xd825048 has v0 = 0x6.
  The return at 0xd825058 has v0 = 0x5.
  The return at 0xd8250b0 has v0 = 0x0.

- `glXWaitVideoSyncSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd824ff0
  `glXWaitVideoSyncSGI` is a 200-byte n32 routine. It loads the pointer at abs 0x1014, reads fields at +0x114, +0xc4 and +0x108 through it, and calls `ioctl` (0xd825090) with request 0x3ff on a descriptor taken from that state. The stack buffer is in a2, and the entry arguments a0 and a1 are in the call's a4 and a5. It returns 5 when the +0x114 record or its +0xc4 field is zero, and 6 when a0 <= 0 or a1 < 0. Otherwise it returns 0, after a word store at +0 from a base the facts do not name. The facts do not say what the early return codes mean.
  Grade: inferred.
  Reviewed: 2026-11-12

- `glXDestroyGLXVideoSourceSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8250b8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8250b8-0xd8251f8 (320 bytes).
  It occupies 320 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd825128, `lw` at 0xd8251a4.
  The `lw` at 0xd825134 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd825140, `lw` at 0xd825174, `lw` at 0xd8251f4.
  The `lw` at 0xd825144 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd82515c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd825164 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd82516c, `sb` at 0xd8251a0.
  The `lw` at 0xd825170 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd82517c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd825184 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd825188 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd825190 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd825198 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd82519c stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8251b0 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8251bc loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd8250e4 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd825104 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd825114 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd825120 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd825138 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8251b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10003, a2=0x10, a3=?, a4=[a0+96]+1, a5=[a0+108]+16, a6=0x4.
  The `jalr` at 0xd8251c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8251e8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8250f0 targets 0xd8251d4, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8250f8 targets 0xd8251d0, is taken when s1(=a1) == 0, and falls through when s1(=a1) != 0.
  The `beq` branch at 0xd82512c targets 0xd825140, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xd825150 targets 0xd8251e8, is taken when v0(=[a0+112]) < v1(=[a0+108]+16) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xd8251a8 targets 0xd8251bc, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd8251c0 targets 0xd8251d4, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8251f0 targets 0xd825158 and is always taken.
  The return at 0xd8251e0 has v0 = one of ret(__glXSetupForCommand), ?.

- `glXDestroyGLXVideoSourceSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8250b8
  `glXDestroyGLXVideoSourceSGIX` is a 320-byte n32 routine. It calls `__glXSetupForCommand`. When the low byte of the result is nonzero and a1 is nonzero, it calls `__glXAddDrawableInterest` on a1, then `__glXRemoveDrawableInterest` and `__glXFreeDrawablePrivate`, each with the add call's return value in a0, which suggests it releases a drawable record the video source held. It then calls an unnamed callee (call 6, 0xd8251b4) with a1 = 0x10003 and a2 = 0x10. `_XFlush` (0xd8251e8) is called when the buffer-space comparison at 0xd825150 takes its branch. The facts show only the call order, so the object's origin is inferred.
  Grade: inferred.
  Reviewed: 2026-11-12

- `glXCreateGLXVideoSourceSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8252cc (n32).
  Inferred: creates a video-source record for a drawable and appends a 0x2c-byte request describing it to the display's output buffer, since the cursor at arg0+0x6c is advanced by 0x2c with a `_XFlush` call (0xd8255b0) when the buffer limit at arg0+0x70 would be passed; it works on arg0's display record and on the interest record R that `__glXAddDrawableInterest` returns.
  It returns 0 unless `__glXSetupForCommand` (`jalr` at 0xd825300) leaves a nonzero low byte in `v0` (`beq` at 0xd82530c) and entry `a4` is 2 or 5 (`beq` at 0xd825318 and 0xd825324); in the 2-or-5 case it calls `__glXInitializeVideoLibrary` (`jalr` at 0xd825358) and returns 0 if that gives zero (`beq` at 0xd825360).
  It calls the pointer at arg0+0x2c (`lw` at 0xd82536c, `jalr` at 0xd825370), passes its result to `__glXAddDrawableInterest` (`jalr` at 0xd825380), and returns 0 if that is zero (`beq` at 0xd825388); otherwise it writes R with 0 at +0x30 and +0xc, 3 at +0x2c, entry `a1` at +0x8, arg0 at +0x10, and the byte 1 at +0x20 (0xd82539c to 0xd8253c4).
  It then calls `__glXCreateVideoSourcePrivate` with R+0x2c and 3 (`jalr` at 0xd8253c0), which returns the record P, and calls the pointer at abs 0xd846d24 three times (`jalr` at 0xd8253ec, 0xd825424 and 0xd825450) with entry `a2`, `a3` and `a5` as its first three arguments, the constants 4, 6 and 7 as `a3`, and the frame bottom (sp at entry minus 0xc0) as `a4`; entry `a4` goes to P+0x0 in the delay slot of the first call (0xd8253f0). P+0x4 and P+0x8 take frame words 0 and 4 as left by the first call (0xd825414, 0xd825428), P+0xc takes frame word 0 after the second call (0xd825454) and P+0x10 takes it after the third (0xd825470).
  The `bgezall` at 0xd825474 tests `$zero`, so it always branches and links to `videoPackingToInternalFormat` (0xd8251f8) with frame word 0 as its argument (delay slot `lw` at 0xd825478); the result goes to P+0x14 (0xd825484). A zero result from the create call (`beq` at 0xd8253c8), or a negative result from any of the three pointer calls (`bltz` at 0xd8253f4, 0xd82542c and 0xd825458), removes R with `__glXRemoveDrawableInterest` (`jalr` at 0xd8255cc, 0xd8255e0, 0xd8255f8 and 0xd82560c) and returns 0.
  Before the request is written it calls the pointer at [arg0+0x4d0] +0 (`jalr` at 0xd825498) only when that table pointer is nonzero (`beq` at 0xd82548c); if arg0+0x70 is below the cursor at arg0+0x6c plus 0x2c (`bne` at 0xd8254b4), it calls `_XFlush` (0xd8255b0) first. The write cursor is first recorded at arg0+0x64 (0xd8254d0), then filled in: byte 0x10 goes to +0x0 and +0x1 (0xd8254e0, 0xd825518), halfword 0xb to +0x2, 0x10002 to +0x4, 0 to +0x8, the result of the call at 0xd825370 to +0xc, entry `a1` to +0x10, entry `a4` to +0x14, and P's words +0x4 to +0x14 to +0x18 to +0x28 (0xd825524 to 0xd825544). The byte at +0x0 is then overwritten (0xd82551c) with the low byte `__glXSetupForCommand` returned, saved at 0xd82531c; arg0+0x60 gains 1 and the cursor gains 0x2c (0xd8254f0, 0xd8254f8).
  It then calls the pointer at [arg0+0x4d0] +4 (`jalr` at 0xd82555c, `beq` at 0xd82554c) and the pointer at arg0+0x7c (`jalr` at 0xd825574, `beq` at 0xd82556c), each only when nonzero, removes R with `__glXRemoveDrawableInterest` (`jalr` at 0xd825580), and returns the result of the call at 0xd825370 (frame slot at 0x70(sp) reloaded at 0xd82558c).
  Unknown: the target of the pointer at arg0+0x2c (called at 0xd825370), and so the word it leaves at +0xc of the request and in the return value; the code at the pointer address 0xd846d24 would settle the three calls too.
  Evidence grade: inferred.

- `glXCreateGLXVideoSourceSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8252cc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8252cc-0xd82561c (848 bytes).
  It occupies 848 bytes.
  The `lw` at 0xd82536c loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd82539c stores 4 bytes to ret(__glXAddDrawableInterest) +0x30.
  The `sw` at 0xd8253a4 stores 4 bytes to ret(__glXAddDrawableInterest) +0x2c.
  The `sw` at 0xd8253a8 stores 4 bytes to ret(__glXAddDrawableInterest) +0x8.
  The `sw` at 0xd8253b0 stores 4 bytes to ret(__glXAddDrawableInterest) +0x10.
  The `sb` at 0xd8253b8 stores 1 byte to ret(__glXAddDrawableInterest) +0x20.
  The `sw` at 0xd8253c4 stores 4 bytes to ret(__glXAddDrawableInterest) +0xc.
  The `sw` at 0xd8253f0 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x0.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd825414, `sw` at 0xd825428, `sw` at 0xd825454.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd825488, `lw` at 0xd825548.
  The `lw` at 0xd825494 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8254a4, `lw` at 0xd8254e8, `lw` at 0xd8255c0.
  The `lw` at 0xd8254a8 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8254d0 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8254d8 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8254e0, `sb` at 0xd82551c.
  The `lw` at 0xd8254e4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8254f0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8254f8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8254fc stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd825500 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd825504 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd82550c stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd825514 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd825518 stores 1 byte to [a0+108] +0x1.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd825520, `lw` at 0xd825528, `lw` at 0xd825530.
  The `sw` at 0xd825524 stores 4 bytes to [a0+108] +0x18.
  The `sw` at 0xd82552c stores 4 bytes to [a0+108] +0x1c.
  The `sw` at 0xd825534 stores 4 bytes to [a0+108] +0x20.
  The `sw` at 0xd82553c stores 4 bytes to [a0+108] +0x24.
  The `sw` at 0xd825544 stores 4 bytes to [a0+108] +0x28.
  The `lw` at 0xd825554 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd825568 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd825300 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd825358 calls __glXInitializeVideoLibrary with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd825370 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd825380 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8253c0 calls __glXCreateVideoSourcePrivate with a0=ret(__glXAddDrawableInterest)+44, a1=0x3, a2=?, a3=?.
  The `jalr` at 0xd8253ec calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x4, a4=sp-192, a5=ret(__glXCreateVideoSourcePrivate).
  The `jalr` at 0xd825424 calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x6, a4=sp-192.
  The `jalr` at 0xd825450 calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x7, a4=sp-192.
  The `bgezall` at 0xd825474 calls videoPackingToInternalFormat [0xd8251f8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd825498 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?, a4=a0 at entry (arg0).
  The `jalr` at 0xd82555c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=[a0+108].
  The `jalr` at 0xd825574 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd825580 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8255b0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+108], a5=[a0+108]+44.
  The `jalr` at 0xd8255cc calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8255e0 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8255f8 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=a5 at entry (arg5), a3=?.
  The `jalr` at 0xd82560c calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd82530c targets 0xd825590, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd825318 targets 0xd825354, is taken when s0(=a4) == v0(=0x2), and falls through when s0(=a4) != v0(=0x2).
  The `beq` branch at 0xd825324 targets 0xd825358, is taken when s0(=a4) == v1(=0x5), and falls through when s0(=a4) != v1(=0x5).
  The `beq` branch at 0xd825360 targets 0xd825598, is taken when v0(=ret(__glXInitializeVideoLibrary)) == 0, and falls through when v0(=ret(__glXInitializeVideoLibrary)) != 0.
  The `beq` branch at 0xd825388 targets 0xd8255a4, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `beq` branch at 0xd8253c8 targets 0xd8255c4, is taken when v0(=ret(__glXCreateVideoSourcePrivate)) == 0, and falls through when v0(=ret(__glXCreateVideoSourcePrivate)) != 0.
  The `bltz` branch at 0xd8253f4 targets 0xd8255dc, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `bltz` branch at 0xd82542c targets 0xd8255f0, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `bltz` branch at 0xd825458 targets 0xd825608, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `beq` branch at 0xd82548c targets 0xd8254a4, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd8254b4 targets 0xd8255b0, is taken when a4(=[a0+112]) < a5(=[a0+108]+44) (unsigned), and falls through when a4(=[a0+112]) >= a5(=[a0+108]+44) (unsigned).
  The `beq` branch at 0xd82554c targets 0xd825564, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd82556c targets 0xd82557c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd825588 targets 0xd825344 and is always taken.
  The `beq` branch at 0xd825590 targets 0xd825344 and is always taken.
  The `beq` branch at 0xd82559c targets 0xd825344 and is always taken.
  The `beq` branch at 0xd8255a8 targets 0xd825344 and is always taken.
  The `beq` branch at 0xd8255bc targets 0xd8254bc and is always taken.
  The `beq` branch at 0xd8255d4 targets 0xd825344 and is always taken.
  The `beq` branch at 0xd8255e8 targets 0xd825344 and is always taken.
  The `beq` branch at 0xd825600 targets 0xd825344 and is always taken.
  The `beq` branch at 0xd825614 targets 0xd825344 and is always taken.
  The return at 0xd82533c has v0 = 0x0.
  The return at 0xd82534c has v0 = one of ?, 0x0.

- `glXSwapIntervalSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd825758 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd825758-0xd825910 (440 bytes).
  It occupies 440 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd825758, `lw` at 0xd82579c.
  The `lw` at 0xd82575c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd825784 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd825790 loads 4 bytes from [[0x1014]+276] +0xcc.
  The `lw` at 0xd8257a0 loads 4 bytes from [0x1014] +0x108.
  The `lw` at 0xd8257c0 loads 4 bytes from ([0x1014] + ([[0x1014]+264] << 0x2)) +0x4.
  The `lw` at 0xd8257d8 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd825804 loads 4 bytes from [[0x1014]+276] +0x3c.
  10 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd825814, `lw` at 0xd825820, `lw` at 0xd825830.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd825854, `sw` at 0xd825874, `sw` at 0xd82587c.
  The `sh` at 0xd82585c stores 2 bytes to ?.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0xd825864, `sb` at 0xd825890, `sb` at 0xd825894.
  The `jalr` at 0xd8257bc calls ioctl with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3ee, a2=sp-64, a3=a3 at entry (arg3), a5=a0 at entry (arg0).
  The `jalr` at 0xd825808 calls __glXSetupForCommand with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[[[0x1014]+276]+216], a4=[[[0x1014]+276]+60], a5=a0 at entry (arg0).
  The `jalr` at 0xd825824 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8258a8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a4=a0 at entry (arg0), a6=0x10000, a7=0x10.
  The `jalr` at 0xd8258c0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8258cc calls XFlush with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8258f4 calls _XFlush with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd825774 targets 0xd8258e8, is taken when v0(=[[0x1014]+276]) == 0, and falls through when v0(=[[0x1014]+276]) != 0.
  The `blez` branch at 0xd82577c targets 0xd825908, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xd825788 targets 0xd8257d8, is taken when v1(=[[[0x1014]+276]+196]) == 0, and falls through when v1(=[[[0x1014]+276]+196]) != 0.
  The `bne` branch at 0xd8257e0 targets 0xd8257f8, is taken when a3(=[[[0x1014]+276]+216]) != 0, and falls through when a3(=[[[0x1014]+276]+216]) == 0.
  The `beq` branch at 0xd825818 targets 0xd82582c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xd825840 targets 0xd8258f0, is taken when a5(?) < a6(?) (unsigned), and falls through when a5(?) >= a6(?) (unsigned).
  The `beq` branch at 0xd82589c targets 0xd8258b4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xd8258b8 targets 0xd8258c8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xd8258e8 targets 0xd8258dc and is always taken.
  The `beq` branch at 0xd825900 targets 0xd825844 and is always taken.
  The `beq` branch at 0xd825908 targets 0xd8258dc and is always taken.
  The return at 0xd8257d0 has v0 = 0x0.
  The return at 0xd8257f0 has v0 = 0x5.
  The return at 0xd8258e0 has v0 = one of 0x0, 0x5, 0x6.

- `glXSwapIntervalSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd825758
  `glXSwapIntervalSGI` is a 440-byte n32 routine. It loads the pointer at abs 0x1014 and the record at its +0x114. When a0 > 0 and the record's +0xc4 field is nonzero, it calls `ioctl` (0xd8257bc) with request 0x3ee on a descriptor taken from the 0x1014 state, with the entry argument a0 in the ioctl's a5 slot, and returns 0. It returns 5 when the +0xd8 field is zero (0xd8257f0). When that field is nonzero it calls `__glXSetupForCommand` (0xd825808), unnamed callees (0xd825824, 0xd8258a8, 0xd8258c0), and `XFlush` and `_XFlush` (0xd8258cc, 0xd8258f4). The exits return 0, 5 or 6. The name suggests the entry argument is the swap interval, but the facts do not confirm that.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glx_ReadPixels` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd831b90 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd831b90-0xd831db4 (548 bytes).
  It occupies 548 bytes.
  The `lw` at 0xd831bb0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd831bb8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd831bc0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd831bec loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd831bf0, `lw` at 0xd831d58.
  The `lw` at 0xd831bfc loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd831c08, `lw` at 0xd831c4c, `lw` at 0xd831db0.
  The `lw` at 0xd831c0c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd831c38 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd831c40 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd831c44, `sb` at 0xd831c6c.
  The `lw` at 0xd831c48 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd831c54 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd831c5c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd831c60 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd831c68 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd831c70 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd831c74 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x1c.
  The `sw` at 0xd831c78 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x18.
  The `sw` at 0xd831c7c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x14.
  The `sw` at 0xd831c80 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd831c84 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd831c88 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd831c8c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lbu` at 0xd831c94 loads 1 byte from [[0x1014]+276] +0x4c.
  The `sb` at 0xd831ca0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x21.
  The `sb` at 0xd831cac stores 1 byte to [[[[0x1014]+276]+216]+108] +0x20.
  The `lw` at 0xd831ce0 loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd831cf0 stores 4 bytes to [[0x1014]+276] +0xb0.
  The `lw` at 0xd831d64 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd831d70 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd831be8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd831c00 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831ca8 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-144, a2=0x0, a3=0x0, a4=a0 at entry (arg0), a5=[[[0x1014]+276]+60], a6=0x6f, a7=[[[0x1014]+276]+272].
  The `jalr` at 0xd831cc0 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd831cd8 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831d00 calls _XRead with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd831d20 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831d44 calls __glXEmptyImage with a0=[[0x1014]+276], a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a5 at entry (arg5).
  The `jalr` at 0xd831d50 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd831d68 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831d7c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831da4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=a1 at entry (arg1).
  The `beq` branch at 0xd831bd8 targets 0xd831d84, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd831bf4 targets 0xd831c08, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd831c18 targets 0xd831da0, is taken when t8(=[[[[0x1014]+276]+216]+112]) < t9(=[[[[0x1014]+276]+216]+108]+36) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) >= t9(=[[[[0x1014]+276]+216]+108]+36) (unsigned).
  The `beq` branch at 0xd831cb8 targets 0xd831d58, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0xd831cc8 targets 0xd831cf4, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bne` branch at 0xd831ce4 targets 0xd831d58, is taken when t9(=[[[0x1014]+276]+176]) != 0, and falls through when t9(=[[[0x1014]+276]+176]) == 0.
  The `beq` branch at 0xd831cec targets 0xd831d58 and is always taken.
  The `beq` branch at 0xd831d0c targets 0xd831d2c, is taken when (s2(?) & 0x3) == 0, and falls through when (s2(?) & 0x3) != 0.
  The `beq` branch at 0xd831d5c targets 0xd831d70, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd831d74 targets 0xd831d88, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd831dac targets 0xd831c1c and is always taken.
  The return at 0xd831d98 has v0 = ?.

- `isNotProxy` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8323bc.
  Grade: inferred.
  Opens a path from the string at 0xd844560 with flags 0x802 (open at 0xd8323f4), then calls fcntl at 0xd832410 and ioctls 0x65 and 0x66 at 0xd832428 and 0xd832480. It calls strchr for ':' at 0xd8324a4 on a string whose origin the facts do not show. It calls close on several paths (0xd832448, 0xd832490, 0xd83251c, 0xd832534, 0xd83254c); the path where open fails returns without one. It returns 0 or 1. Role (from name): the result is true when the connection is not a proxy, but the facts do not confirm which way the value runs.
  Reviewed: 2026-11-12

- `isNotProxy` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8323bc
  `isNotProxy` is a 420-byte n32 routine. It compares [a0+0x24] with 0x40 and may return 0 or 1 before opening anything. It then opens the fixed path at 0xd844560 with flags 0x802 (call 1), applies `fcntl` with 0x2 and 0x5, and issues `ioctl` 0x65, closing and returning 0 when [a0+0x24] >= the ioctl result. It then issues `ioctl` 0x66 with a2 = sp-96 and calls `close`. After that it calls `strchr` with 0x3a (':') at 0xd8324a4 and compares bytes of the result, returning 0 on the paths shown. The name suggests a check that the display is not a proxy, but the facts do not say which return value means that.
  Grade: inferred.
  Reviewed: 2026-11-12

- `CreateContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83269c.
  Grade: inferred.
  Creates a GLX rendering context. It calls __glXInitialize at 0xd8326d4, allocates a 0x12c-byte record with calloc at 0xd8326f0, and reads an environment variable, whose name is at 0xd844598, through getenv at 0xd8327a8. It builds the direct context with __glXCreateDirectContext at 0xd832854, sets vertex-array state with __glXInitVertexArrayState at 0xd832918, and maps visual ids through __glXOverrideVisualsIdToXid at 0xd832c6c, 0xd832d5c and 0xd832e80. A failure path prints with fprintf and calls exit at 0xd832f04.
  Reviewed: 2026-11-12

- `CreateContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83269c
  `CreateContext` is a 2184-byte n32 routine. It calls `__glXInitialize` and, when that returns nonzero, allocates a 300-byte (0x12c) record with `calloc` (0xd8326f0) and fills it with word stores. It calls `getenv` (0xd8327a8 and 0xd832b14) and compares the first byte of the value with 0x79, 0x6e and 0x4e ('y', 'n', 'N'). It reads the word `__glx_debug` (0xd8328a0). On the paths that pass its argument checks it calls `__glXCreateDirectContext` (0xd832854), `__glXInitVertexArrayState` (0xd832918) and a second `calloc` (0xd832930). Several paths call `free` on the record and return 0. One path calls `fprintf` with a0 = __iob+32 (the stderr slot in the usual layout, not shown by the facts) and then `exit` with a0 = 0 (0xd832ef8, 0xd832f04).
  Grade: inferred.
  Reviewed: 2026-11-12

- `glXGetCurrentDisplay` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd836674 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd836674-0xd8366cc (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xd836698 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83669c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8366bc loads 4 bytes from [[0x1014]+276] +0xd8.
  The `jalr` at 0xd836690 calls __glXInitThread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd8366a8 targets 0xd8366b8, is taken when a2(=[[0x1014]+276]) != 0, and falls through when a2(=[[0x1014]+276]) == 0.
  The return at 0xd8366b0 has v0 = 0x0.
  The return at 0xd8366c4 has v0 = [[[0x1014]+276]+216].

- `glXGetFBConfigAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd836cec (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd836cec-0xd8372d4 (1512 bytes).
  It occupies 1512 bytes.
  The `lbu` at 0xd836d18 loads 1 byte from a1 (arg1 at entry) +0xa0.
  37 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xd836d1c, `sw` at 0xd836d80, `sw` at 0xd836dc4.
  2 such `ldc1` accesses load 8 bytes from a1 (arg1 at entry) +0xa8, including `ldc1` at 0xd836d20, `ldc1` at 0xd8371fc.
  8 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `swc1` at 0xd836d30, `swc1` at 0xd836f98, `swc1` at 0xd837098.
  The `lw` at 0xd836d74 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0xd836db8 loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lw` at 0xd836e0c loads 4 bytes from a1 (arg1 at entry) +0x40.
  The `lw` at 0xd836e50 loads 4 bytes from a1 (arg1 at entry) +0x98.
  The `lw` at 0xd836e60 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lw` at 0xd836ea4 loads 4 bytes from a1 (arg1 at entry) +0x94.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x20, including `lw` at 0xd836ee0, `lw` at 0xd8370a4.
  The `lw` at 0xd836f14 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xd836f3c loads 4 bytes from a1 (arg1 at entry) +0x9c.
  The `lw` at 0xd836f4c loads 4 bytes from a1 (arg1 at entry) +0x54.
  The `ldc1` at 0xd836f88 loads 8 bytes from a1 (arg1 at entry) +0xc8.
  The `lw` at 0xd836fb8 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0xd836fdc loads 4 bytes from a1 (arg1 at entry) +0x5c.
  The `lw` at 0xd836ffc loads 4 bytes from a1 (arg1 at entry) +0x78.
  The `lw` at 0xd837028 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lw` at 0xd83704c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0xd83705c loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `ldc1` at 0xd837088 loads 8 bytes from a1 (arg1 at entry) +0xb0.
  The `lw` at 0xd8370bc loads 4 bytes from a1 (arg1 at entry) +0x58.
  The `lw` at 0xd8370d4 loads 4 bytes from a1 (arg1 at entry) +0x74.
  The `lbu` at 0xd8370ec loads 1 byte from a1 (arg1 at entry) +0x4f.
  The `lw` at 0xd8370fc loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `lw` at 0xd83710c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `ldc1` at 0xd837138 loads 8 bytes from a1 (arg1 at entry) +0xe0.
  The `lw` at 0xd837154 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lw` at 0xd837170 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lw` at 0xd837188 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lw` at 0xd8371a0 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0xd8371b8 loads 4 bytes from a1 (arg1 at entry) +0x64.
  The `lbu` at 0xd8371c8 loads 1 byte from a1 (arg1 at entry) +0x4e.
  The `lw` at 0xd8371e0 loads 4 bytes from a1 (arg1 at entry) +0x3c.
  The `ldc1` at 0xd837200 loads 8 bytes from a1 (arg1 at entry) +0xd0.
  The `lw` at 0xd837214 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `lw` at 0xd837224 loads 4 bytes from a1 (arg1 at entry) +0x60.
  The `lw` at 0xd837234 loads 4 bytes from a1 (arg1 at entry) +0x7c.
  The `ldc1` at 0xd83724c loads 8 bytes from a1 (arg1 at entry) +0xd8.
  The `ldc1` at 0xd83726c loads 8 bytes from a1 (arg1 at entry) +0xc0.
  The `lw` at 0xd837280 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `lw` at 0xd837290 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `ldc1` at 0xd8372a0 loads 8 bytes from a1 (arg1 at entry) +0xb8.
  The `lw` at 0xd8372b4 loads 4 bytes from a1 (arg1 at entry) +0x90.
  The `lw` at 0xd8372c4 loads 4 bytes from a1 (arg1 at entry) +0x6c.
  The `bne` branch at 0xd836cf0 targets 0xd836d34, is taken when a2 < 0x28 (signed), and falls through when a2 >= 0x28 (signed).
  The `bne` branch at 0xd836cfc targets 0xd836e60, is taken when a2 < 0x29 (signed), and falls through when a2 >= 0x29 (signed).
  The `bne` branch at 0xd836d08 targets 0xd836dc8, is taken when a2 < v0(=0x8028) (signed), and falls through when a2 >= v0(=0x8028) (signed).
  The `bne` branch at 0xd836d10 targets 0xd836e70, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xd836d34 targets 0xd836d84, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xd836d40 targets 0xd836f4c, is taken when a2 < 0xf (signed), and falls through when a2 >= 0xf (signed).
  The `bne` branch at 0xd836d48 targets 0xd836ef4, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xd836d54 targets 0xd83710c, is taken when a2 < 0x24 (signed), and falls through when a2 >= 0x24 (signed).
  The `bne` branch at 0xd836d5c targets 0xd837038, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xd836d64 targets 0xd837290, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0xd836d6c targets 0xd836e24, is taken when a2 != a7(=0x27), and falls through when a2 == a7(=0x27).
  The `bne` branch at 0xd836d84 targets 0xd836e2c, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0xd836d8c targets 0xd83705c, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0xd836d94 targets 0xd836fec, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0xd836da0 targets 0xd837234, is taken when a2 < 0xc (signed), and falls through when a2 >= 0xc (signed).
  The `bne` branch at 0xd836da8 targets 0xd8371b0, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0xd836db0 targets 0xd836e24, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xd836dd0 targets 0xd836eb4, is taken when a2 < v0(=0x8013) (signed), and falls through when a2 >= v0(=0x8013) (signed).
  The `beq` branch at 0xd836dd8 targets 0xd8370fc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd836de4 targets 0xd83700c, is taken when a2 < v0(=0x8018) (signed), and falls through when a2 >= v0(=0x8018) (signed).
  The `beq` branch at 0xd836dec targets 0xd837280, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xd836df8 targets 0xd8371d8, is taken when a2 < v0(=0x801a) (signed), and falls through when a2 >= v0(=0x801a) (signed).
  The `bne` branch at 0xd836e04 targets 0xd836e24, is taken when v0(=0x801a) < a2 (signed), and falls through when v0(=0x801a) >= a2 (signed).
  The `beq` branch at 0xd836e1c targets 0xd8372c4, is taken when a2 == a7(=0x2), and falls through when a2 != a7(=0x2).
  The `bne` branch at 0xd836e30 targets 0xd836f24, is taken when a2 < 0x5 (signed), and falls through when a2 >= 0x5 (signed).
  The `bne` branch at 0xd836e38 targets 0xd8371c8, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0xd836e40 targets 0xd8370e4, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0xd836e48 targets 0xd836e24, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xd836e74 targets 0xd836f5c, is taken when a2 < v0(=0x802e) (signed), and falls through when a2 >= v0(=0x802e) (signed).
  The `beq` branch at 0xd836e7c targets 0xd837200, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd836e8c targets 0xd83711c, is taken when a2 < a5(=0x186a0) (signed), and falls through when a2 >= a5(=0x186a0) (signed).
  The `beq` branch at 0xd836e94 targets 0xd8372b4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xd836e9c targets 0xd836e24, is taken when a2 != a4(=0x186a1), and falls through when a2 == a4(=0x186a1).
  The `bne` branch at 0xd836ebc targets 0xd836f9c, is taken when a2 < v0(=0x8010) (signed), and falls through when a2 >= v0(=0x8010) (signed).
  The `beq` branch at 0xd836ec4 targets 0xd837214, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0xd836ed0 targets 0xd837164, is taken when a2 < v0(=0x8012) (signed), and falls through when a2 >= v0(=0x8012) (signed).
  The `bne` branch at 0xd836ed8 targets 0xd836e24, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0xd836ef4 targets 0xd836fc8, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0xd836efc targets 0xd837224, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `bne` branch at 0xd836f04 targets 0xd837198, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0xd836f0c targets 0xd836e24, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xd836f28 targets 0xd836e1c, is taken when a2 < 0x3 (signed), and falls through when a2 >= 0x3 (signed).
  The `beq` branch at 0xd836f34 targets 0xd836e24, is taken when a2 >= 0x4 (signed), and falls through when a2 < 0x4 (signed).
  The `bne` branch at 0xd836f64 targets 0xd83706c, is taken when a2 < v0(=0x802b) (signed), and falls through when a2 >= v0(=0x802b) (signed).
  The `beq` branch at 0xd836f6c targets 0xd8372a0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xd836f78 targets 0xd837260, is taken when a2 < v0(=0x802d) (signed), and falls through when a2 >= v0(=0x802d) (signed).
  The `bne` branch at 0xd836f80 targets 0xd836e24, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `bne` branch at 0xd836fa4 targets 0xd83709c, is taken when a2 < v0(=0x800c) (signed), and falls through when a2 >= v0(=0x800c) (signed).
  The `bne` branch at 0xd836fb0 targets 0xd836e24, is taken when v0(=0x800c) < a2 (signed), and falls through when v0(=0x800c) >= a2 (signed).
  The `bne` branch at 0xd836fcc targets 0xd8370b4, is taken when a2 < 0x10 (signed), and falls through when a2 >= 0x10 (signed).
  The `beq` branch at 0xd836fd4 targets 0xd836e24, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xd836fec targets 0xd8370cc, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0xd836ff4 targets 0xd836e24, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xd837014 targets 0xd83714c, is taken when a2 < v0(=0x8017) (signed), and falls through when a2 >= v0(=0x8017) (signed).
  The `bne` branch at 0xd837020 targets 0xd836e24, is taken when v0(=0x8017) < a2 (signed), and falls through when v0(=0x8017) >= a2 (signed).
  The `bne` branch at 0xd83703c targets 0xd837180, is taken when a2 < 0x25 (signed), and falls through when a2 >= 0x25 (signed).
  The `beq` branch at 0xd837044 targets 0xd836e24, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xd837074 targets 0xd8371f0, is taken when a2 < v0(=0x802a) (signed), and falls through when a2 >= v0(=0x802a) (signed).
  The `bne` branch at 0xd837080 targets 0xd836e24, is taken when v0(=0x802a) < a2 (signed), and falls through when v0(=0x802a) >= a2 (signed).
  The `bne` branch at 0xd83709c targets 0xd836e24, is taken when a2 != t1(=0x800b), and falls through when a2 == t1(=0x800b).
  The `bne` branch at 0xd8370b4 targets 0xd836e24, is taken when a2 != t3(=0xf), and falls through when a2 == t3(=0xf).
  The `bne` branch at 0xd8370cc targets 0xd836e24, is taken when a2 != t9(=0x9), and falls through when a2 == t9(=0x9).
  The `bne` branch at 0xd8370e4 targets 0xd836e24, is taken when a2 != v0(=0x6), and falls through when a2 == v0(=0x6).
  The `bne` branch at 0xd837124 targets 0xd837244, is taken when a2 < v0(=0x8030) (signed), and falls through when a2 >= v0(=0x8030) (signed).
  The `bne` branch at 0xd837130 targets 0xd836e24, is taken when v0(=0x8030) < a2 (signed), and falls through when v0(=0x8030) >= a2 (signed).
  The `bne` branch at 0xd83714c targets 0xd836e24, is taken when a2 != a6(=0x8016), and falls through when a2 == a6(=0x8016).
  The `bne` branch at 0xd837168 targets 0xd836e24, is taken when a2 != t0(=0x8011), and falls through when a2 == t0(=0x8011).
  The `bne` branch at 0xd837180 targets 0xd836e24, is taken when a2 != t2(=0x24), and falls through when a2 == t2(=0x24).
  The `bne` branch at 0xd837198 targets 0xd836e24, is taken when a2 != t8(=0x20), and falls through when a2 == t8(=0x20).
  The `bne` branch at 0xd8371b0 targets 0xd836e24, is taken when a2 != at(=0xc), and falls through when a2 == at(=0xc).
  The `bne` branch at 0xd8371d8 targets 0xd836e24, is taken when a2 != a0(=0x8019), and falls through when a2 == a0(=0x8019).
  The `bne` branch at 0xd8371f0 targets 0xd836e24, is taken when a2 != a4(=0x8029), and falls through when a2 == a4(=0x8029).
  The `beq` branch at 0xd8371f8 targets 0xd836d24 and is always taken.
  The `bne` branch at 0xd837244 targets 0xd836e24, is taken when a2 != t0(=0x802f), and falls through when a2 == t0(=0x802f).
  The `bne` branch at 0xd837264 targets 0xd836e24, is taken when a2 != t1(=0x802c), and falls through when a2 == t1(=0x802c).
  The return at 0xd836d2c has v0 = 0x0.
  The return at 0xd836d7c has v0 = 0x0.
  The return at 0xd836dc0 has v0 = 0x0.
  The return at 0xd836e14 has v0 = 0x0.
  The return at 0xd836e24 has v0 = 0x2.
  The return at 0xd836e58 has v0 = 0x0.
  The return at 0xd836e68 has v0 = 0x0.
  The return at 0xd836eac has v0 = 0x0.
  The return at 0xd836eec has v0 = 0x0.
  The return at 0xd836f1c has v0 = 0x0.
  The return at 0xd836f44 has v0 = 0x0.
  The return at 0xd836f54 has v0 = 0x0.
  The return at 0xd836f94 has v0 = 0x0.
  The return at 0xd836fc0 has v0 = 0x0.
  The return at 0xd836fe4 has v0 = 0x0.
  The return at 0xd837004 has v0 = 0x0.
  The return at 0xd837030 has v0 = 0x0.
  The return at 0xd837054 has v0 = 0x0.
  The return at 0xd837064 has v0 = 0x0.
  The return at 0xd837094 has v0 = 0x0.
  The return at 0xd8370ac has v0 = 0x0.
  The return at 0xd8370c4 has v0 = 0x0.
  The return at 0xd8370dc has v0 = 0x0.
  The return at 0xd8370f4 has v0 = 0x0.
  The return at 0xd837104 has v0 = 0x0.
  The return at 0xd837114 has v0 = 0x0.
  The return at 0xd837144 has v0 = 0x0.
  The return at 0xd83715c has v0 = 0x0.
  The return at 0xd837178 has v0 = 0x0.
  The return at 0xd837190 has v0 = 0x0.
  The return at 0xd8371a8 has v0 = 0x0.
  The return at 0xd8371c0 has v0 = 0x0.
  The return at 0xd8371d0 has v0 = 0x0.
  The return at 0xd8371e8 has v0 = 0x0.
  The return at 0xd83720c has v0 = 0x0.
  The return at 0xd83721c has v0 = 0x0.
  The return at 0xd83722c has v0 = 0x0.
  The return at 0xd83723c has v0 = 0x0.
  The return at 0xd837258 has v0 = 0x0.
  The return at 0xd837278 has v0 = 0x0.
  The return at 0xd837288 has v0 = 0x0.
  The return at 0xd837298 has v0 = 0x0.
  The return at 0xd8372ac has v0 = 0x0.
  The return at 0xd8372bc has v0 = 0x0.
  The return at 0xd8372cc has v0 = 0x0.

- `glXGetFBConfigFltAttribSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd837320 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd837320-0xd837434 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0xd837358 loads 4 bytes from table(0xd8445f0) +0x0.
  The `ldc1` at 0xd837364 loads 8 bytes from a1 (arg1 at entry) +0xa8.
  9 such `sdc1` accesses store 8 bytes to a3 (arg3 at entry) +0x0, including `sdc1` at 0xd837370, `sdc1` at 0xd8373a0, `sdc1` at 0xd8373c0.
  The `ldc1` at 0xd8373b4 loads 8 bytes from a1 (arg1 at entry) +0xe0.
  The `ldc1` at 0xd8373c4 loads 8 bytes from a1 (arg1 at entry) +0xd8.
  The `ldc1` at 0xd8373d4 loads 8 bytes from a1 (arg1 at entry) +0xd0.
  The `ldc1` at 0xd8373e4 loads 8 bytes from a1 (arg1 at entry) +0xc8.
  The `ldc1` at 0xd8373f4 loads 8 bytes from a1 (arg1 at entry) +0xc0.
  The `ldc1` at 0xd837404 loads 8 bytes from a1 (arg1 at entry) +0xb8.
  The `ldc1` at 0xd83741c loads 8 bytes from a1 (arg1 at entry) +0xb0.
  The `jalr` at 0xd837380 calls glXGetFBConfigAttribSGIX with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-32.
  The `beq` branch at 0xd837350 targets 0xd837374, is taken when v1(=a2-32809) >= 0x8 (unsigned), and falls through when v1(=a2-32809) < 0x8 (unsigned).
  The `beq` branch at 0xd83736c targets 0xd8373a4 and is always taken.
  The `beq` branch at 0xd8373bc targets 0xd8373a4 and is always taken.
  The `beq` branch at 0xd8373cc targets 0xd8373a4 and is always taken.
  The `beq` branch at 0xd8373dc targets 0xd8373a4 and is always taken.
  The `beq` branch at 0xd8373ec targets 0xd8373a4 and is always taken.
  The `beq` branch at 0xd8373fc targets 0xd8373a4 and is always taken.
  The return at 0xd8373ac has v0 = one of 0x0, ret(glXGetFBConfigAttribSGIX).
  The return at 0xd837414 has v0 = 0x0.
  The return at 0xd83742c has v0 = 0x0.
  The indirect jump at 0xd83735c uses the jump table at 0xd8445f0 with targets 0xd837364, 0xd83741c, 0xd837404, 0xd8373f4, 0xd8373e4, 0xd8373d4, 0xd8373c4, 0xd8373b4.

- `glXChooseFBConfigWithFltSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd837838 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd837838-0xd838c54 (5148 bytes).
  It occupies 5148 bytes.
  The `lw` at 0xd8379f4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  82 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd837a64, `lw` at 0xd837a80, `lw` at 0xd837a8c.
  The `ldc1` at 0xd837b48 loads 8 bytes from a3 (arg3 at entry) +0x0.
  18 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0xd837b64, `ldc1` at 0xd837b80, `ldc1` at 0xd837b94.
  The `lw` at 0xd837bc0 loads 4 bytes from table(0xd844610) +0x0.
  The `lw` at 0xd837c18 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd837c28 loads 4 bytes from ret(__glXInitialize) +0x20.
  The `lw` at 0xd837c34 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc.
  The `lw` at 0xd837c3c loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10.
  The `lw` at 0xd837c74 loads 4 bytes from [([ret(__glXInitialize)+32] + (a1 << 0x5))+12] +0x48.
  13 such `sw` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `sw` at 0xd837cc0, `sw` at 0xd837d74, `sw` at 0xd837f38.
  7 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd837e1c, `lbu` at 0xd838214, `lbu` at 0xd838300.
  The `sw` at 0xd838134 stores 4 bytes to ret(malloc) +0x0.
  16 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd838500, `sw` at 0xd838524, `sw` at 0xd83852c.
  The `lw` at 0xd838c50 loads 4 bytes from [([ret(__glXInitialize)+32] + (a1 << 0x5))+12] +0x44.
  The `jalr` at 0xd837bfc calls __glXInitialize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd837f44 calls malloc with a0=0x4, a1=(a1 << 0x5), a2=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12], a3=one of 0x0, 0x1, a7=a1 at entry (arg1).
  The `jalr` at 0xd8384a8 calls malloc with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=(a1 << 0x5), a2=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12], a3=one of 0x0, 0x1, a7=a1 at entry (arg1).
  The `jalr` at 0xd838674 calls malloc with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a2=?, a3=?.
  The `jalr` at 0xd8388cc calls free with a0=ret(malloc), a1=?, a2=?, a3=?, a4=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16], a7=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12].
  The `jalr` at 0xd838918 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd838934 calls free with a0=ret(malloc), a1=?, a2=?, a3=?, a4=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16], a7=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12].
  The `bgezall` at 0xd838b94 calls (unnamed) [0xd837468] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8379ec targets 0xd837b18, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0xd8379f8 targets 0xd838318, is taken when t0(=[a2]) == 0, and falls through when t0(=[a2]) != 0.
  The `beq` branch at 0xd837a58 targets 0xd837a8c and is always taken.
  The `beq` branch at 0xd837a78 targets 0xd837b40, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd837a84 targets 0xd837b40, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xd837a94 targets 0xd837ae8, is taken when v0(?) < 0x26 (signed), and falls through when v0(?) >= 0x26 (signed).
  The `bne` branch at 0xd837aa0 targets 0xd837a60, is taken when v0(?) < 0x27 (signed), and falls through when v0(?) >= 0x27 (signed).
  The `bne` branch at 0xd837aac targets 0xd837da4, is taken when v0(?) < a2(=0x8029) (signed), and falls through when v0(?) >= a2(=0x8029) (signed).
  The `bne` branch at 0xd837ab4 targets 0xd837e30, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xd837ad4 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd837aec targets 0xd837bcc, is taken when v0(?) < 0xd (signed), and falls through when v0(?) >= 0xd (signed).
  The `beq` branch at 0xd837af8 targets 0xd837dd4, is taken when v0(?) >= 0xe (signed), and falls through when v0(?) < 0xe (signed).
  The `beq` branch at 0xd837b10 targets 0xd837a78 and is always taken.
  The `beq` branch at 0xd837b40 targets 0xd837bfc, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xd837b54 targets 0xd837bf8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd837b5c targets 0xd837b94 and is always taken.
  The `beq` branch at 0xd837b78 targets 0xd837bfc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd837b8c targets 0xd837bfc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xd837bb8 targets 0xd837d6c, is taken when v1(=table(-0x8029)) >= 0x8 (unsigned), and falls through when v1(=table(-0x8029)) < 0x8 (unsigned).
  The `bne` branch at 0xd837bcc targets 0xd837e08, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0xd837bd8 targets 0xd837ebc, is taken when v0(?) >= 0x9 (signed), and falls through when v0(?) < 0x9 (signed).
  The `beq` branch at 0xd837bf0 targets 0xd837a78 and is always taken.
  The `beq` branch at 0xd837c04 targets 0xd837f60, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `bltz` branch at 0xd837c0c targets 0xd837f0c, is taken when a7(=a1) < 0 (signed), and falls through when a7(=a1) >= 0 (signed).
  The `beq` branch at 0xd837c20 targets 0xd837f0c, is taken when t0(=a1) >= t1(=[a0+136]) (signed), and falls through when t0(=a1) < t1(=[a0+136]) (signed).
  The `beq` branch at 0xd837c38 targets 0xd8380ec, is taken when a2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0, and falls through when a2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0.
  The `beq` branch at 0xd837c40 targets 0xd8380ec, is taken when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) == 0, and falls through when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) != 0.
  The `beq` branch at 0xd837c48 targets 0xd838494, is taken when a3(=one of 0x0, 0x1) == 0, and falls through when a3(=one of 0x0, 0x1) != 0.
  The `blez` branch at 0xd837c50 targets 0xd837c8c, is taken when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed), and falls through when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  The `beq` branch at 0xd837c78 targets 0xd837f44, is taken when t8(?) == s2(?), and falls through when t8(?) != s2(?).
  The `bnel` branch at 0xd837c84 targets 0xd837c78, is taken when s0(?) != s1(?), and falls through when s0(?) == s1(?); its branch-likely delay slot `lw t8,72(s0)` at 0xd837c88 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd837cd4 targets 0xd837b78 and is always taken.
  The `beq` branch at 0xd837cec targets 0xd837b78 and is always taken.
  The `beq` branch at 0xd837d04 targets 0xd837b78 and is always taken.
  The `beq` branch at 0xd837d1c targets 0xd837b78 and is always taken.
  The `beq` branch at 0xd837d34 targets 0xd837b78 and is always taken.
  The `beq` branch at 0xd837d4c targets 0xd837b78 and is always taken.
  The `beq` branch at 0xd837d64 targets 0xd837b78 and is always taken.
  The `bne` branch at 0xd837da8 targets 0xd837e60, is taken when v0(?) < a3(=0x8013) (signed), and falls through when v0(?) >= a3(=0x8013) (signed).
  The `bne` branch at 0xd837db0 targets 0xd837fcc, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xd837dcc targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd837dd4 targets 0xd837e90, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xd837de0 targets 0xd837ff4, is taken when v0(?) >= 0x21 (signed), and falls through when v0(?) < 0x21 (signed).
  The `beq` branch at 0xd837e00 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd837e08 targets 0xd837ee4, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xd837e10 targets 0xd8380a8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xd837e28 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd837e30 targets 0xd837f98, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `bne` branch at 0xd837e38 targets 0xd838138, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd837e58 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd837e64 targets 0xd838024, is taken when v0(?) < t1(=0x8010) (signed), and falls through when v0(?) >= t1(=0x8010) (signed).
  The `bne` branch at 0xd837e70 targets 0xd838200, is taken when t1(=0x8010) < v0(?) (signed), and falls through when t1(=0x8010) >= v0(?) (signed).
  The `beq` branch at 0xd837e88 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd837e90 targets 0xd838054, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0xd837e9c targets 0xd838250, is taken when v0(?) >= 0x11 (signed), and falls through when v0(?) < 0x11 (signed).
  The `beq` branch at 0xd837eb4 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd837ebc targets 0xd83807c, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0xd837ec4 targets 0xd838270, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xd837edc targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd837ee8 targets 0xd8380d0, is taken when v0(?) < 0x3 (signed), and falls through when v0(?) >= 0x3 (signed).
  The `beq` branch at 0xd837ef0 targets 0xd838164, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd837f04 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd837f4c targets 0xd838124, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd837f58 targets 0xd837d78 and is always taken.
  The `bne` branch at 0xd837f9c targets 0xd83819c, is taken when v0(?) < t3(=0x802c) (signed), and falls through when v0(?) >= t3(=0x802c) (signed).
  The `bne` branch at 0xd837fa4 targets 0xd838374, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xd837fc4 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd837fcc targets 0xd8381d0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xd837fd4 targets 0xd83839c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xd837fec targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd837ff4 targets 0xd838224, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0xd837ffc targets 0xd8383bc, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xd83801c targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd838024 targets 0xd838290, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd838030 targets 0xd838164, is taken when v0(?) >= 0x29 (signed), and falls through when v0(?) < 0x29 (signed).
  The `beq` branch at 0xd83804c targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd838054 targets 0xd8382b4, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd83805c targets 0xd838164, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0xd838074 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd838080 targets 0xd8382d8, is taken when v0(?) < 0xa (signed), and falls through when v0(?) >= 0xa (signed).
  The `beq` branch at 0xd838088 targets 0xd838164, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0xd8380a0 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd8380a8 targets 0xd8382f8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8380b0 targets 0xd838164, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0xd8380c8 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd8380d0 targets 0xd838164, is taken when v0(?) != a0(=0x2), and falls through when v0(?) == a0(=0x2).
  The `beq` branch at 0xd8380e4 targets 0xd837a78 and is always taken.
  The `beq` branch at 0xd838130 targets 0xd837d78 and is always taken.
  The `bne` branch at 0xd838138 targets 0xd838344, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0xd838144 targets 0xd838470, is taken when t8(=0x186a0) < v0(?) (signed), and falls through when t8(=0x186a0) >= v0(?) (signed).
  The `beq` branch at 0xd83815c targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd8381a0 targets 0xd8383e0, is taken when v0(?) < a4(=0x802b) (signed), and falls through when v0(?) >= a4(=0x802b) (signed).
  The `bne` branch at 0xd8381a8 targets 0xd838164, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xd8381c8 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd8381d4 targets 0xd83840c, is taken when v0(?) < ra(=0x8017) (signed), and falls through when v0(?) >= ra(=0x8017) (signed).
  The `bne` branch at 0xd8381e0 targets 0xd838164, is taken when ra(=0x8017) < v0(?) (signed), and falls through when ra(=0x8017) >= v0(?) (signed).
  The `beq` branch at 0xd8381f8 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd838200 targets 0xd83842c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xd83820c targets 0xd838164, is taken when t9(=0x8012) < v0(?) (signed), and falls through when t9(=0x8012) >= v0(?) (signed).
  The `beq` branch at 0xd83821c targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd838228 targets 0xd83844c, is taken when v0(?) < 0x23 (signed), and falls through when v0(?) >= 0x23 (signed).
  The `beq` branch at 0xd838230 targets 0xd838164, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0xd838248 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd838250 targets 0xd838164, is taken when v0(?) != a5(=0x11), and falls through when v0(?) == a5(=0x11).
  The `beq` branch at 0xd838268 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd838270 targets 0xd838164, is taken when v0(?) != a7(=0xc), and falls through when v0(?) == a7(=0xc).
  The `beq` branch at 0xd838288 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd838290 targets 0xd838164, is taken when v0(?) != v1(=0x27), and falls through when v0(?) == v1(=0x27).
  The `beq` branch at 0xd8382ac targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd8382b8 targets 0xd838164, is taken when v0(?) != a7(=0xe), and falls through when v0(?) == a7(=0xe).
  The `beq` branch at 0xd8382d0 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd8382d8 targets 0xd838164, is taken when v0(?) != v1(=0x9), and falls through when v0(?) == v1(=0x9).
  The `beq` branch at 0xd8382f0 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd8382f8 targets 0xd838164, is taken when v0(?) != a6(=0x6), and falls through when v0(?) == a6(=0x6).
  The `beq` branch at 0xd838310 targets 0xd837a78 and is always taken.
  The `beq` branch at 0xd83833c targets 0xd837b40 and is always taken.
  The `bne` branch at 0xd838344 targets 0xd838574, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xd83834c targets 0xd838164, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xd83836c targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd838374 targets 0xd838164, is taken when v0(?) != a6(=0x802d), and falls through when v0(?) == a6(=0x802d).
  The `beq` branch at 0xd838394 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd83839c targets 0xd838164, is taken when v0(?) != at(=0x8028), and falls through when v0(?) == at(=0x8028).
  The `beq` branch at 0xd8383b4 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd8383bc targets 0xd838164, is taken when v0(?) != a5(=0x25), and falls through when v0(?) == a5(=0x25).
  The `beq` branch at 0xd8383d8 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd8383e4 targets 0xd838164, is taken when v0(?) != at(=0x802a), and falls through when v0(?) == at(=0x802a).
  The `beq` branch at 0xd838404 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd83840c targets 0xd838164, is taken when v0(?) != a5(=0x8016), and falls through when v0(?) == a5(=0x8016).
  The `beq` branch at 0xd838424 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd83842c targets 0xd838164, is taken when v0(?) != a7(=0x8011), and falls through when v0(?) == a7(=0x8011).
  The `beq` branch at 0xd838444 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd83844c targets 0xd838164, is taken when v0(?) != v1(=0x22), and falls through when v0(?) == v1(=0x22).
  The `beq` branch at 0xd838468 targets 0xd837a78 and is always taken.
  The `bne` branch at 0xd838474 targets 0xd838164, is taken when v0(?) != a7(=0x186a1), and falls through when v0(?) == a7(=0x186a1).
  The `beq` branch at 0xd83848c targets 0xd837a78 and is always taken.
  The `beq` branch at 0xd8384b0 targets 0xd8388f0, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `bne` branch at 0xd8384b8 targets 0xd8385a0, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `bne` branch at 0xd8384c0 targets 0xd8385a0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `blez` branch at 0xd8384c8 targets 0xd838564, is taken when s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed), and falls through when s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  The `beq` branch at 0xd8384f4 targets 0xd838510, is taken when (s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) & 0x7) == 0, and falls through when (s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) & 0x7) != 0.
  The `bne` branch at 0xd838508 targets 0xd8384fc, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xd838514 targets 0xd838564, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0xd83855c targets 0xd83851c, is taken when s0(?) != s1(?), and falls through when s0(?) == s1(?).
  The `beq` branch at 0xd83856c targets 0xd837d78 and is always taken.
  The `bne` branch at 0xd838578 targets 0xd838164, is taken when v0(?) != a5(=0x802f), and falls through when v0(?) == a5(=0x802f).
  The `beq` branch at 0xd838598 targets 0xd837a78 and is always taken.
  The `blez` branch at 0xd8385a0 targets 0xd838900, is taken when s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed), and falls through when s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  The `beq` branch at 0xd8385cc targets 0xd8385ec, is taken when (s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) & 0x3) == 0, and falls through when (s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) & 0x3) != 0.
  The `bne` branch at 0xd8385e4 targets 0xd8385d4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xd8385f0 targets 0xd838664, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0xd838638 targets 0xd838608, is taken when s0(?) != s1(?), and falls through when s0(?) == s1(?).
  The `beq` branch at 0xd83868c targets 0xd838930, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `blez` branch at 0xd838694 targets 0xd8388c0, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0xd8386c0 targets 0xd838744 and is always taken.
  The `blez` branch at 0xd8386c8 targets 0xd838738, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `beq` branch at 0xd8386ec targets 0xd838738, is taken when a1(?) == a2(?), and falls through when a1(?) != a2(?).
  The `beq` branch at 0xd838704 targets 0xd838738, is taken when a1(?) == a2(?), and falls through when a1(?) != a2(?).
  The `beq` branch at 0xd83871c targets 0xd838738, is taken when a1(?) == a2(?), and falls through when a1(?) != a2(?).
  The `bne` branch at 0xd838730 targets 0xd8386d8, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `beq` branch at 0xd83873c targets 0xd8388cc, is taken when s2(?) == t0(?), and falls through when s2(?) != t0(?).
  The `blez` branch at 0xd838744 targets 0xd838738, is taken when a4(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed), and falls through when a4(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  The `beq` branch at 0xd838750 targets 0xd838c48 and is always taken.
  The `beq` branch at 0xd838758 targets 0xd8387bc, is taken when a1(=one of 0x0, 0x1) == 0, and falls through when a1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd83876c targets 0xd8386c8, is taken when s0(?) == s1(?), and falls through when s0(?) != s1(?).
  The `bne` branch at 0xd838778 targets 0xd838768, is taken when t9(?) != s2(?), and falls through when t9(?) == s2(?).
  The `bne` branch at 0xd838788 targets 0xd838768, is taken when ra(?) < s3(?) (signed), and falls through when ra(?) >= s3(?) (signed).
  The `bne` branch at 0xd838794 targets 0xd838768, is taken when at(?) != s4(?), and falls through when at(?) == s4(?).
  The `beq` branch at 0xd83879c targets 0xd838758, is taken when s5(=one of 0x0, 0x1) == 0, and falls through when s5(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd8387a8 targets 0xd838758, is taken when v1(?) == s8(?), and falls through when v1(?) != s8(?).
  The `beq` branch at 0xd8387b4 targets 0xd838758 and is always taken.
  The `bne` branch at 0xd8387c8 targets 0xd838768, is taken when a1(?) != a3(?), and falls through when a1(?) == a3(?).
  The `bne` branch at 0xd8387d8 targets 0xd838768, is taken when a2(?) < a5(?) (signed), and falls through when a2(?) >= a5(?) (signed).
  The `bne` branch at 0xd8387f0 targets 0xd838768, is taken when a6(?) < t1(?) (signed), and falls through when a6(?) >= t1(?) (signed).
  The `bne` branch at 0xd838800 targets 0xd838768, is taken when t8(?) < t9(?) (signed), and falls through when t8(?) >= t9(?) (signed).
  The `bne` branch at 0xd838810 targets 0xd838768, is taken when ra(?) < at(?) (signed), and falls through when ra(?) >= at(?) (signed).
  The `bne` branch at 0xd838818 targets 0xd838768, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xd838828 targets 0xd838768, is taken when a2(?) < a5(?) (signed), and falls through when a2(?) >= a5(?) (signed).
  The `bne` branch at 0xd838838 targets 0xd838768, is taken when a6(?) < t1(?) (signed), and falls through when a6(?) >= t1(?) (signed).
  The `bne` branch at 0xd838848 targets 0xd838768, is taken when t8(?) < t9(?) (signed), and falls through when t8(?) >= t9(?) (signed).
  The `bne` branch at 0xd838858 targets 0xd838768, is taken when ra(?) < at(?) (signed), and falls through when ra(?) >= at(?) (signed).
  The `bne` branch at 0xd838868 targets 0xd838768, is taken when v1(?) < a1(?) (signed), and falls through when v1(?) >= a1(?) (signed).
  The `bne` branch at 0xd838878 targets 0xd838768, is taken when a2(?) < a5(?) (signed), and falls through when a2(?) >= a5(?) (signed).
  The `bne` branch at 0xd838888 targets 0xd838768, is taken when a6(?) < t1(?) (unsigned), and falls through when a6(?) >= t1(?) (unsigned).
  The `bne` branch at 0xd838898 targets 0xd838768, is taken when t8(?) < t9(?) (unsigned), and falls through when t8(?) >= t9(?) (unsigned).
  The `beq` branch at 0xd8388a0 targets 0xd83894c, is taken when ra(=one of 0x0, 0x1) == 0, and falls through when ra(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd8388b0 targets 0xd83894c, is taken when at(?) == v1(?), and falls through when at(?) != v1(?).
  The `beq` branch at 0xd8388b8 targets 0xd83894c and is always taken.
  The `blez` branch at 0xd8388d4 targets 0xd838910, is taken when s6(?) <= 0 (signed), and falls through when s6(?) > 0 (signed).
  The `beq` branch at 0xd8388e8 targets 0xd837d78 and is always taken.
  The `beq` branch at 0xd8388f8 targets 0xd837d78 and is always taken.
  The `beq` branch at 0xd838908 targets 0xd838668 and is always taken.
  The `beq` branch at 0xd838928 targets 0xd837d78 and is always taken.
  The `beq` branch at 0xd838944 targets 0xd837d78 and is always taken.
  The `bne` branch at 0xd83894c targets 0xd838768, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xd838958 targets 0xd838768, is taken when a5(?) != a6(?), and falls through when a5(?) == a6(?).
  The `beq` branch at 0xd838960 targets 0xd83897c, is taken when t1(=one of 0x0, 0x1) == 0, and falls through when t1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd83896c targets 0xd838980, is taken when t8(?) == t9(?), and falls through when t8(?) != t9(?).
  The `beq` branch at 0xd838974 targets 0xd838980 and is always taken.
  The `bne` branch at 0xd838980 targets 0xd838768, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd838988 targets 0xd8389a4, is taken when ra(=one of 0x0, 0x1) == 0, and falls through when ra(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd838998 targets 0xd8389a4, is taken when at(?) == v1(?), and falls through when at(?) != v1(?).
  The `bne` branch at 0xd8389a4 targets 0xd838768, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8389ac targets 0xd8389c4, is taken when a1(=one of 0x0, 0x1) == 0, and falls through when a1(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0xd8389bc targets 0xd838768, is taken when a2(?) != a5(?), and falls through when a2(?) == a5(?).
  The `beq` branch at 0xd8389c4 targets 0xd8389e0, is taken when a6(=one of 0x0, 0x1) == 0, and falls through when a6(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd8389d4 targets 0xd8389e0, is taken when t1(?) == t8(?), and falls through when t1(?) != t8(?).
  The `bne` branch at 0xd8389e0 targets 0xd838768, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8389e8 targets 0xd838a04, is taken when t9(=one of 0x0, 0x1) == 0, and falls through when t9(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd8389f4 targets 0xd838a08, is taken when ra(?) == at(?), and falls through when ra(?) != at(?).
  The `beq` branch at 0xd8389fc targets 0xd838a08 and is always taken.
  The `bne` branch at 0xd838a08 targets 0xd838768, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd838a10 targets 0xd838a2c, is taken when v1(=one of 0x0, 0x1) == 0, and falls through when v1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd838a1c targets 0xd838a30, is taken when a1(?) == a2(?), and falls through when a1(?) != a2(?).
  The `beq` branch at 0xd838a24 targets 0xd838a30 and is always taken.
  The `bne` branch at 0xd838a30 targets 0xd838768, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xd838a40 targets 0xd838768, is taken when a5(?) != a6(?), and falls through when a5(?) == a6(?).
  The `bne` branch at 0xd838a50 targets 0xd838768, is taken when t1(?) != t8(?), and falls through when t1(?) == t8(?).
  The `beq` branch at 0xd838a58 targets 0xd838a6c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xd838a64 targets 0xd838c2c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0xd838a6c targets 0xd838768, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xd838a7c targets 0xd838768, is taken when at(?) < v1(?) (signed), and falls through when at(?) >= v1(?) (signed).
  The `bne` branch at 0xd838a8c targets 0xd838768, is taken when a1(?) < a2(?) (signed), and falls through when a1(?) >= a2(?) (signed).
  The `bne` branch at 0xd838a9c targets 0xd838768, is taken when a5(?) < a6(?) (signed), and falls through when a5(?) >= a6(?) (signed).
  The `bne` branch at 0xd838aa8 targets 0xd838768, is taken when t1(?) != t8(?), and falls through when t1(?) == t8(?).
  The `bc1t` branch at 0xd838abc targets 0xd838768, is taken when f3 < f4 (c.lt.d at 0xd838ab8), and falls through when not (f3 < f4 (c.lt.d at 0xd838ab8)).
  The `bc1t` branch at 0xd838acc targets 0xd838768, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1t` branch at 0xd838ae0 targets 0xd838768, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `bc1t` branch at 0xd838af0 targets 0xd838768, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `bc1t` branch at 0xd838b04 targets 0xd838768, is taken when FP condition code 4 is true, and falls through when FP condition code 4 is false.
  The `bc1t` branch at 0xd838b14 targets 0xd838768, is taken when FP condition code 5 is true, and falls through when FP condition code 5 is false.
  The `bc1t` branch at 0xd838b28 targets 0xd838768, is taken when FP condition code 6 is true, and falls through when FP condition code 6 is false.
  The `bc1t` branch at 0xd838b38 targets 0xd838768, is taken when FP condition code 7 is true, and falls through when FP condition code 7 is false.
  The `beq` branch at 0xd838b50 targets 0xd838c40, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xd838bc0 targets 0xd838b64, is taken when a3(?) != a4(?), and falls through when a3(?) == a4(?).
  The `beq` branch at 0xd838bd0 targets 0xd838c34, is taken when a3(?) >= t0(?) (signed), and falls through when a3(?) < t0(?) (signed).
  The `beq` branch at 0xd838bf4 targets 0xd838c0c, is taken when a1(?) == t0(?), and falls through when a1(?) != t0(?).
  The `bne` branch at 0xd838c04 targets 0xd838bec, is taken when a1(?) != t0(?), and falls through when a1(?) == t0(?).
  The `beq` branch at 0xd838c24 targets 0xd838768 and is always taken.
  The `beq` branch at 0xd838c2c targets 0xd838a6c and is always taken.
  The `beq` branch at 0xd838c38 targets 0xd838c0c and is always taken.
  The `beq` branch at 0xd838c40 targets 0xd838c0c and is always taken.
  The `beq` branch at 0xd838c4c targets 0xd838778 and is always taken.
  The return at 0xd837cbc has v0 = 0x0.
  The return at 0xd837d9c has v0 = one of 0x0, ret(malloc).
  The return at 0xd837f3c has v0 = 0x0.
  The return at 0xd837f90 has v0 = 0x0.
  The return at 0xd83811c has v0 = 0x0.
  The return at 0xd838194 has v0 = 0x0.
  The instructions from 0xd837adc to 0xd837ae4 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd837bc4 uses the jump table at 0xd844610 with targets 0xd837cc4, 0xd837b64, 0xd837d54, 0xd837d3c, 0xd837d24, 0xd837d0c, 0xd837cf4, 0xd837cdc.
  The indirect jump at 0xd837bc4 uses the jump table at 0xd844610 with targets 0xd837cc4, 0xd837b64, 0xd837d54, 0xd837d3c, 0xd837d24, 0xd837d0c, 0xd837cf4, 0xd837cdc.
  The indirect jump at 0xd837bc4 uses the jump table at 0xd844610 with targets 0xd837cc4, 0xd837b64, 0xd837d54, 0xd837d3c, 0xd837d24, 0xd837d0c, 0xd837cf4, 0xd837cdc.
  The indirect jump at 0xd837bc4 uses the jump table at 0xd844610 with targets 0xd837cc4, 0xd837b64, 0xd837d54, 0xd837d3c, 0xd837d24, 0xd837d0c, 0xd837cf4, 0xd837cdc.
  The indirect jump at 0xd837bc4 uses the jump table at 0xd844610 with targets 0xd837cc4, 0xd837b64, 0xd837d54, 0xd837d3c, 0xd837d24, 0xd837d0c, 0xd837cf4, 0xd837cdc.
  The indirect jump at 0xd837bc4 uses the jump table at 0xd844610 with targets 0xd837cc4, 0xd837b64, 0xd837d54, 0xd837d3c, 0xd837d24, 0xd837d0c, 0xd837cf4, 0xd837cdc.
  The indirect jump at 0xd837bc4 uses the jump table at 0xd844610 with targets 0xd837cc4, 0xd837b64, 0xd837d54, 0xd837d3c, 0xd837d24, 0xd837d0c, 0xd837cf4, 0xd837cdc.
  The indirect jump at 0xd837bc4 uses the jump table at 0xd844610 with targets 0xd837cc4, 0xd837b64, 0xd837d54, 0xd837d3c, 0xd837d24, 0xd837d0c, 0xd837cf4, 0xd837cdc.
  The indirect jump at 0xd837bc4 uses the jump table at 0xd844610 with targets 0xd837cc4, 0xd837b64, 0xd837d54, 0xd837d3c, 0xd837d24, 0xd837d0c, 0xd837cf4, 0xd837cdc.
  The indirect jump at 0xd837bc4 uses the jump table at 0xd844610 with targets 0xd837cc4, 0xd837b64, 0xd837d54, 0xd837d3c, 0xd837d24, 0xd837d0c, 0xd837cf4, 0xd837cdc.
  The indirect jump at 0xd837bc4 uses the jump table at 0xd844610 with targets 0xd837cc4, 0xd837b64, 0xd837d54, 0xd837d3c, 0xd837d24, 0xd837d0c, 0xd837cf4, 0xd837cdc.

- `glXCreateGLXPixmapWithConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd838c8c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd838c8c-0xd838ddc (336 bytes).
  It occupies 336 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd838ccc, `lw` at 0xd838d74.
  The `lw` at 0xd838cd8 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd838ce4, `lw` at 0xd838d20, `lw` at 0xd838dc4.
  The `lw` at 0xd838ce8 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd838d08 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd838d10 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd838d18, `sb` at 0xd838d44.
  The `lw` at 0xd838d1c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd838d28 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd838d34 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd838d3c stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd838d40 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd838d48 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd838d4c stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd838d50 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd838d54 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd838d58 stores 4 bytes to [a0+108] +0x10.
  The `lw` at 0xd838d5c loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd838d70 stores 4 bytes to [a0+108] +0x18.
  The `lw` at 0xd838d80 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd838d8c loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd838cb8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd838cdc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd838d64 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[a1+72], a3=[a1+36], a4=0x10006, a5=0x10, a7=[a0+96]+1.
  The `jalr` at 0xd838d84 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd838d98 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd838db8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd838cc4 targets 0xd838dc8, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd838cd0 targets 0xd838ce4, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xd838cf4 targets 0xd838db8, is taken when v1(=[a0+112]) < a0(=[a0+108]+28) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+28) (unsigned).
  The `beq` branch at 0xd838d78 targets 0xd838d8c, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd838d90 targets 0xd838da4, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd838dc0 targets 0xd838cfc and is always taken.
  The return at 0xd838db0 has v0 = ret(?).
  The return at 0xd838dd4 has v0 = 0x0.

- `glXCreateGLXPixmapWithConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd838c8c
  `glXCreateGLXPixmapWithConfigSGIX` is a 336-byte n32 routine. It calls `__glXSetupForCommand` and takes an exit path when the low byte of the result is zero. Otherwise it passes [a1+72] and [a1+36] of its argument a1 to an unnamed callee (call 3, 0xd838d64) together with the constants 0x10006 (a4) and 0x10 (a5). `_XFlush` (0xd838db8) is called when the buffer-space comparison at 0xd838cf4 takes its branch. It returns the value of an unnamed call on one path and 0 on another.
  Grade: inferred.
  Reviewed: 2026-11-12

- `glXGetVisualFromFBConfig` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd838e30 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd838e30-0xd838e94 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xd838e34 loads 4 bytes from a1 (arg1 at entry) +0x20.
  The `lw` at 0xd838e68 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `jalr` at 0xd838e70 calls __glXOverrideVisualGetVisualInfo with a0=a0 at entry (arg0), a1=0x3, a2=sp-64, a3=sp-24, a5=[a1+32], a6=a1 at entry (arg1).
  The `beq` branch at 0xd838e4c targets 0xd838e88, is taken when a5(=[a1+32]) == 0, and falls through when a5(=[a1+32]) != 0.
  The return at 0xd838e80 has v0 = ret(__glXOverrideVisualGetVisualInfo).
  The return at 0xd838e8c has v0 = 0x0.

- `glXChooseFBConfig` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8395e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8395e0-0xd83b03c (6748 bytes).
  It occupies 6748 bytes.
  The `lw` at 0xd83975c loads 4 bytes from a2 (arg2 at entry) +0x0.
  90 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8397ac, `lw` at 0xd8397cc, `lw` at 0xd8397d8.
  The `lw` at 0xd8399e0 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd8399f0 loads 4 bytes from ret(__glXInitialize) +0x20.
  The `lw` at 0xd8399fc loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc.
  The `lw` at 0xd839a00 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10.
  12 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xd839aa8, `sw` at 0xd839c80, `sw` at 0xd839c84.
  2 such `sw` accesses store 4 bytes to ret(malloc) +0x0, including `sw` at 0xd839ea4, `sw` at 0xd83a7a0.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd83a15c, `lbu` at 0xd83a208, `lbu` at 0xd83a8d4.
  14 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd83a670, `sw` at 0xd83a684, `sw` at 0xd83a69c.
  8 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0xd83ada0, `ldc1` at 0xd83adc8, `ldc1` at 0xd83af24.
  The `lw` at 0xd83b038 loads 4 bytes from [([ret(__glXInitialize)+32] + (a1 << 0x5))+12] +0x44.
  The `jalr` at 0xd8399c4 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd839cac calls malloc with a0=0x4, a1=?, a2=?, a3=?, a4=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12], a5=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16], a6=ret(__glXInitialize), a7=(a1 << 0x5).
  The `jalr` at 0xd83a360 calls malloc with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=?, a2=?, a3=?, a4=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12], a5=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16], a6=ret(__glXInitialize), a7=(a1 << 0x5).
  The `jalr` at 0xd83a470 calls malloc with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=?, a2=?, a3=?.
  The `bgezall` at 0xd83a75c calls (unnamed) [0xd83906c] with a0=?, a1=?, a2=0x0, a3=?.
  The `jalr` at 0xd83a7a8 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a9b4 calls free with a0=ret(malloc), a1=?, a2=?, a3=one of 0x0, 0x1.
  The `jalr` at 0xd83aa30 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83aa54 calls free with a0=ret(malloc), a1=?, a2=?, a3=one of 0x0, 0x1.
  The `bgezall` at 0xd83ae78 calls (unnamed) [0xd83906c] with a0=?, a1=?, a2=?, a3=one of 0x0, 0x1.
  The `beq` branch at 0xd839754 targets 0xd83992c, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0xd839760 targets 0xd83a260, is taken when a2(=[a2]) == 0, and falls through when a2(=[a2]) != 0.
  The `beq` branch at 0xd8397a4 targets 0xd8397d8 and is always taken.
  The `beq` branch at 0xd8397d0 targets 0xd839ae4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xd8397e0 targets 0xd839830, is taken when a6(?) < 0x27 (signed), and falls through when a6(?) >= 0x27 (signed).
  The `bne` branch at 0xd8397ec targets 0xd8397ac, is taken when a6(?) < 0x28 (signed), and falls through when a6(?) >= 0x28 (signed).
  The `bne` branch at 0xd8397f4 targets 0xd8398a4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xd8397fc targets 0xd839af0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0xd839828 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd839834 targets 0xd83986c, is taken when a6(?) < 0xd (signed), and falls through when a6(?) >= 0xd (signed).
  The `beq` branch at 0xd839840 targets 0xd8398ec, is taken when a6(?) >= 0xe (signed), and falls through when a6(?) < 0xe (signed).
  The `beq` branch at 0xd839864 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd83986c targets 0xd839aac, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xd839878 targets 0xd839bf0, is taken when a6(?) >= 0x9 (signed), and falls through when a6(?) < 0x9 (signed).
  The `beq` branch at 0xd83989c targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd8398ac targets 0xd839b90, is taken when a6(?) < at(=0x8013) (signed), and falls through when a6(?) >= at(=0x8013) (signed).
  The `bne` branch at 0xd8398bc targets 0xd839d54, is taken when v0(=0x8013) < a6(?) (signed), and falls through when v0(=0x8013) >= a6(?) (signed).
  The `beq` branch at 0xd8398e4 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd8398ec targets 0xd839bbc, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8398f8 targets 0xd839d80, is taken when a6(?) >= 0x23 (signed), and falls through when a6(?) < 0x23 (signed).
  The `beq` branch at 0xd839924 targets 0xd8397cc and is always taken.
  The `beq` branch at 0xd839968 targets 0xd839b34, is taken when a7(?) == v0(=0x8000), and falls through when a7(?) != v0(=0x8000).
  The `beq` branch at 0xd839974 targets 0xd839b34, is taken when a7(?) == a2(=-0x1), and falls through when a7(?) != a2(=-0x1).
  The `beq` branch at 0xd8399d0 targets 0xd839cd8, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `bltz` branch at 0xd8399d8 targets 0xd839c54, is taken when a0(=a1) < 0 (signed), and falls through when a0(=a1) >= 0 (signed).
  The `beq` branch at 0xd8399e8 targets 0xd839c54, is taken when a0(=a1) >= a3(=[a0+136]) (signed), and falls through when a0(=a1) < a3(=[a0+136]) (signed).
  The `beq` branch at 0xd839a08 targets 0xd839e50, is taken when a4(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0, and falls through when a4(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0.
  The `beq` branch at 0xd839a14 targets 0xd839e50, is taken when t0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) == 0, and falls through when t0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) != 0.
  The `beq` branch at 0xd839a1c targets 0xd83a354, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `blez` branch at 0xd839a28 targets 0xd839a74, is taken when t2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed), and falls through when t2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  The `beq` branch at 0xd839a64 targets 0xd839cac, is taken when t8(?) == s2(?), and falls through when t8(?) != s2(?).
  The `bne` branch at 0xd839a70 targets 0xd839a60, is taken when s0(?) != s1(?), and falls through when s0(?) == s1(?).
  The `bne` branch at 0xd839aac targets 0xd839c28, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd839ab4 targets 0xd839eb4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd839ac0 targets 0xd83a588, is taken when v0(?) == t3(=-0x1), and falls through when v0(?) != t3(=-0x1).
  The `beq` branch at 0xd839adc targets 0xd8397cc and is always taken.
  The `beq` branch at 0xd839ae8 targets 0xd83995c and is always taken.
  The `bne` branch at 0xd839af4 targets 0xd839d08, is taken when a6(?) < at(=0x802e) (signed), and falls through when a6(?) >= at(=0x802e) (signed).
  The `bne` branch at 0xd839b00 targets 0xd839f10, is taken when v0(=0x802e) < a6(?) (signed), and falls through when v0(=0x802e) >= a6(?) (signed).
  The `beq` branch at 0xd839b2c targets 0xd8397cc and is always taken.
  The `beq` branch at 0xd839b88 targets 0xd83997c and is always taken.
  The `bne` branch at 0xd839b94 targets 0xd839dc4, is taken when a6(?) < a5(=0x8010) (signed), and falls through when a6(?) >= a5(=0x8010) (signed).
  The `bne` branch at 0xd839ba0 targets 0xd839fc0, is taken when at(=0x8010) < a6(?) (signed), and falls through when at(=0x8010) >= a6(?) (signed).
  The `beq` branch at 0xd839bb4 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd839bbc targets 0xd839df0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xd839bc8 targets 0xd83a04c, is taken when a6(?) >= 0x11 (signed), and falls through when a6(?) < 0x11 (signed).
  The `beq` branch at 0xd839be8 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd839bf0 targets 0xd839e20, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xd839bfc targets 0xd83a098, is taken when a6(?) >= 0xc (signed), and falls through when a6(?) < 0xc (signed).
  The `beq` branch at 0xd839c20 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd839c2c targets 0xd839ee4, is taken when a6(?) < 0x3 (signed), and falls through when a6(?) >= 0x3 (signed).
  The `beq` branch at 0xd839c34 targets 0xd839c84, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd839c4c targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd839cbc targets 0xd839e80, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd839cd0 targets 0xd839c8c and is always taken.
  The `bne` branch at 0xd839d10 targets 0xd839f54, is taken when a6(?) < a4(=0x802c) (signed), and falls through when a6(?) >= a4(=0x802c) (signed).
  The `bne` branch at 0xd839d20 targets 0xd83a1c8, is taken when a5(=0x802c) < a6(?) (signed), and falls through when a5(=0x802c) >= a6(?) (signed).
  The `beq` branch at 0xd839d4c targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd839d58 targets 0xd839f98, is taken when a6(?) < at(=0x8018) (signed), and falls through when a6(?) >= at(=0x8018) (signed).
  The `bne` branch at 0xd839d68 targets 0xd83a1f8, is taken when v0(=0x8018) < a6(?) (signed), and falls through when v0(=0x8018) >= a6(?) (signed).
  The `beq` branch at 0xd839d78 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd839d80 targets 0xd83a008, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xd839d88 targets 0xd83a228, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xd839dbc targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd839dcc targets 0xd83a0c0, is taken when a6(?) < a5(=0x800b) (signed), and falls through when a6(?) >= a5(=0x800b) (signed).
  The `bne` branch at 0xd839dd8 targets 0xd839c84, is taken when at(=0x800b) < a6(?) (signed), and falls through when at(=0x800b) >= a6(?) (signed).
  The `beq` branch at 0xd839de8 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd839df0 targets 0xd83a0fc, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0xd839df8 targets 0xd839c84, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd839e18 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd839e20 targets 0xd83a124, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0xd839e28 targets 0xd839c84, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd839e48 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd839eb4 targets 0xd83a14c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0xd839ebc targets 0xd839c84, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd839edc targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd839ee8 targets 0xd839c84, is taken when a6(?) != a4(=0x2), and falls through when a6(?) == a4(=0x2).
  The `beq` branch at 0xd839f08 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd839f18 targets 0xd83a180, is taken when a6(?) < v0(=0x186a0) (signed), and falls through when a6(?) >= v0(=0x186a0) (signed).
  The `bne` branch at 0xd839f28 targets 0xd83a590, is taken when v1(=0x186a0) < a6(?) (signed), and falls through when v1(=0x186a0) >= a6(?) (signed).
  The `beq` branch at 0xd839f4c targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd839f58 targets 0xd83a29c, is taken when a6(?) < v0(=0x802b) (signed), and falls through when a6(?) >= v0(=0x802b) (signed).
  The `bne` branch at 0xd839f64 targets 0xd839c84, is taken when v1(=0x802b) < a6(?) (signed), and falls through when v1(=0x802b) >= a6(?) (signed).
  The `beq` branch at 0xd839f90 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd839f9c targets 0xd83a2d4, is taken when a6(?) < at(=0x8017) (signed), and falls through when a6(?) >= at(=0x8017) (signed).
  The `bne` branch at 0xd839fa8 targets 0xd839c84, is taken when v0(=0x8017) < a6(?) (signed), and falls through when v0(=0x8017) >= a6(?) (signed).
  The `beq` branch at 0xd839fb8 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd839fc4 targets 0xd83a2f0, is taken when a6(?) < a4(=0x8012) (signed), and falls through when a6(?) >= a4(=0x8012) (signed).
  The `bne` branch at 0xd839fd4 targets 0xd839c84, is taken when a5(=0x8012) < a6(?) (signed), and falls through when a5(=0x8012) >= a6(?) (signed).
  The `beq` branch at 0xd83a000 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd83a00c targets 0xd83a310, is taken when a6(?) < 0x24 (signed), and falls through when a6(?) >= 0x24 (signed).
  The `beq` branch at 0xd83a014 targets 0xd839c84, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd83a044 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd83a050 targets 0xd83a32c, is taken when a6(?) < 0x20 (signed), and falls through when a6(?) >= 0x20 (signed).
  The `beq` branch at 0xd83a05c targets 0xd839c84, is taken when a6(?) >= 0x21 (signed), and falls through when a6(?) < 0x21 (signed).
  The `beq` branch at 0xd83a090 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd83a098 targets 0xd839c84, is taken when a6(?) != a5(=0xc), and falls through when a6(?) == a5(=0xc).
  The `beq` branch at 0xd83a0b8 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd83a0c4 targets 0xd839c84, is taken when a6(?) != a5(=0x28), and falls through when a6(?) == a5(=0x28).
  The `beq` branch at 0xd83a0f4 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd83a0fc targets 0xd839c84, is taken when a6(?) != at(=0xe), and falls through when a6(?) == at(=0xe).
  The `beq` branch at 0xd83a11c targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd83a124 targets 0xd839c84, is taken when a6(?) != at(=0x9), and falls through when a6(?) == at(=0x9).
  The `beq` branch at 0xd83a144 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd83a14c targets 0xd839c84, is taken when a6(?) != at(=0x6), and falls through when a6(?) == at(=0x6).
  The `beq` branch at 0xd83a178 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd83a188 targets 0xd83a5c0, is taken when a6(?) < at(=0x8030) (signed), and falls through when a6(?) >= at(=0x8030) (signed).
  The `bne` branch at 0xd83a194 targets 0xd839c84, is taken when v0(=0x8030) < a6(?) (signed), and falls through when v0(=0x8030) >= a6(?) (signed).
  The `beq` branch at 0xd83a1c0 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd83a1c8 targets 0xd839c84, is taken when a6(?) != a5(=0x802d), and falls through when a6(?) == a5(=0x802d).
  The `beq` branch at 0xd83a1f0 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd83a1fc targets 0xd839c84, is taken when a6(?) != at(=0x8028), and falls through when a6(?) == at(=0x8028).
  The `beq` branch at 0xd83a220 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd83a228 targets 0xd839c84, is taken when a6(?) != at(=0x26), and falls through when a6(?) == at(=0x26).
  The `beq` branch at 0xd83a258 targets 0xd8397cc and is always taken.
  The `beq` branch at 0xd83a294 targets 0xd83995c and is always taken.
  The `bne` branch at 0xd83a2a0 targets 0xd839c84, is taken when a6(?) != v0(=0x802a), and falls through when a6(?) == v0(=0x802a).
  The `beq` branch at 0xd83a2cc targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd83a2d8 targets 0xd839c84, is taken when a6(?) != a5(=0x8016), and falls through when a6(?) == a5(=0x8016).
  The `beq` branch at 0xd83a2e8 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd83a2f0 targets 0xd839c84, is taken when a6(?) != at(=0x8011), and falls through when a6(?) == at(=0x8011).
  The `beq` branch at 0xd83a308 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd83a310 targets 0xd839c84, is taken when a6(?) != a4(=0x23), and falls through when a6(?) == a4(=0x23).
  The `beq` branch at 0xd83a324 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd83a32c targets 0xd839c84, is taken when a6(?) != a5(=0x11), and falls through when a6(?) == a5(=0x11).
  The `beq` branch at 0xd83a34c targets 0xd8397cc and is always taken.
  The `beq` branch at 0xd83a36c targets 0xd83aa14, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `blez` branch at 0xd83a378 targets 0xd83aa24, is taken when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed), and falls through when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  The `beq` branch at 0xd83a3b0 targets 0xd83a3d8, is taken when (t8(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) & 0x3) == 0, and falls through when (t8(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) & 0x3) != 0.
  The `bne` branch at 0xd83a3d0 targets 0xd83a3b8, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xd83a3dc targets 0xd83a454, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xd83a428 targets 0xd83a3f8, is taken when a0(?) != s1(?), and falls through when a0(?) == s1(?).
  The `beq` branch at 0xd83a484 targets 0xd83aa4c, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `beq` branch at 0xd83a48c targets 0xd83a5f8, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0xd83a494 targets 0xd83a5f8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `blez` branch at 0xd83a4a0 targets 0xd83a99c, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0xd83a580 targets 0xd83a858 and is always taken.
  The `beq` branch at 0xd83a588 targets 0xd839ad8 and is always taken.
  The `bne` branch at 0xd83a598 targets 0xd839c84, is taken when a6(?) != at(=0x186a1), and falls through when a6(?) == at(=0x186a1).
  The `beq` branch at 0xd83a5b8 targets 0xd8397cc and is always taken.
  The `bne` branch at 0xd83a5c4 targets 0xd839c84, is taken when a6(?) != at(=0x802f), and falls through when a6(?) == at(=0x802f).
  The `beq` branch at 0xd83a5f0 targets 0xd8397cc and is always taken.
  The `blez` branch at 0xd83a608 targets 0xd83a7a4, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0xd83a640 targets 0xd83a6b0 and is always taken.
  The `blez` branch at 0xd83a64c targets 0xd83a6a4, is taken when t9(?) <= 0 (signed), and falls through when t9(?) > 0 (signed).
  The `beq` branch at 0xd83a674 targets 0xd83a6a0, is taken when a1(?) == a6(?), and falls through when a1(?) != a6(?).
  The `beq` branch at 0xd83a688 targets 0xd83a6a0, is taken when a1(?) == a6(?), and falls through when a1(?) != a6(?).
  The `bne` branch at 0xd83a698 targets 0xd83a664, is taken when a1(?) != a6(?), and falls through when a1(?) == a6(?).
  The `beq` branch at 0xd83a6a8 targets 0xd83a7a8, is taken when s2(?) == t2(?), and falls through when s2(?) != t2(?).
  The `blez` branch at 0xd83a6b4 targets 0xd83a6a0, is taken when t3(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed), and falls through when t3(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  The `beq` branch at 0xd83a6c4 targets 0xd83b030 and is always taken.
  The `beq` branch at 0xd83a6e8 targets 0xd83a6fc, is taken when a1(?) == a2(?), and falls through when a1(?) != a2(?).
  The `bne` branch at 0xd83a6f4 targets 0xd83a6dc, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `beq` branch at 0xd83a704 targets 0xd83a648, is taken when s0(?) == s1(?), and falls through when s0(?) != s1(?).
  The `bne` branch at 0xd83a710 targets 0xd83a700, is taken when a5(?) != s2(?), and falls through when a5(?) == s2(?).
  The `beq` branch at 0xd83a730 targets 0xd83a79c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xd83a774 targets 0xd83a740, is taken when s3(?) != s4(?), and falls through when s3(?) == s4(?).
  The `bne` branch at 0xd83a78c targets 0xd83a6d0, is taken when s3(?) < ra(?) (signed), and falls through when s3(?) >= ra(?) (signed).
  The `beq` branch at 0xd83a794 targets 0xd83a700 and is always taken.
  The `beq` branch at 0xd83a79c targets 0xd83a700 and is always taken.
  The `beq` branch at 0xd83a7d0 targets 0xd839c8c and is always taken.
  The `blez` branch at 0xd83a7d8 targets 0xd83a84c, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0xd83a800 targets 0xd83a84c, is taken when a1(?) == a6(?), and falls through when a1(?) != a6(?).
  The `beq` branch at 0xd83a818 targets 0xd83a84c, is taken when a1(?) == a6(?), and falls through when a1(?) != a6(?).
  The `beq` branch at 0xd83a830 targets 0xd83a84c, is taken when a1(?) == a6(?), and falls through when a1(?) != a6(?).
  The `bne` branch at 0xd83a844 targets 0xd83a7ec, is taken when a1(?) != a6(?), and falls through when a1(?) == a6(?).
  The `beq` branch at 0xd83a854 targets 0xd83a9b0, is taken when s2(?) == v0(?), and falls through when s2(?) != v0(?).
  The `blez` branch at 0xd83a85c targets 0xd83a84c, is taken when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed), and falls through when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  The `beq` branch at 0xd83a86c targets 0xd83a894 and is always taken.
  The `beq` branch at 0xd83a880 targets 0xd83a8c0, is taken when a1(=one of 0x0, 0x1) == 0, and falls through when a1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd83a88c targets 0xd83a7d8, is taken when s0(?) == s1(?), and falls through when s0(?) != s1(?).
  The `bne` branch at 0xd83a898 targets 0xd83a888, is taken when a1(?) != s2(?), and falls through when a1(?) == s2(?).
  The `beq` branch at 0xd83a8a0 targets 0xd83a880, is taken when s3(?) == s4(=-0x1), and falls through when s3(?) != s4(=-0x1).
  The `beq` branch at 0xd83a8b0 targets 0xd83a880, is taken when a4(?) >= s3(?) (signed), and falls through when a4(?) < s3(?) (signed).
  The `beq` branch at 0xd83a8b8 targets 0xd83a880 and is always taken.
  The `bne` branch at 0xd83a8c4 targets 0xd83a888, is taken when a5(?) != a2(?), and falls through when a5(?) == a2(?).
  The `beq` branch at 0xd83a8cc targets 0xd83a8e4, is taken when a3(=one of 0x0, 0x1) == 0, and falls through when a3(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd83a8d8 targets 0xd83a8e4, is taken when a6(?) == a7(?), and falls through when a6(?) != a7(?).
  The `bne` branch at 0xd83a8e4 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83a8ec targets 0xd83a908, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xd83a8fc targets 0xd83a908, is taken when t9(?) == ra(?), and falls through when t9(?) != ra(?).
  The `bne` branch at 0xd83a908 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83a910 targets 0xd83a930, is taken when at(?) == s4(=-0x1), and falls through when at(?) != s4(=-0x1).
  The `beq` branch at 0xd83a924 targets 0xd83a930, is taken when v0(?) >= v1(?) (signed), and falls through when v0(?) < v1(?) (signed).
  The `bne` branch at 0xd83a930 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83a938 targets 0xd83a958, is taken when a0(?) == s4(=-0x1), and falls through when a0(?) != s4(=-0x1).
  The `beq` branch at 0xd83a94c targets 0xd83a958, is taken when a1(?) >= a4(?) (signed), and falls through when a1(?) < a4(?) (signed).
  The `bne` branch at 0xd83a958 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83a960 targets 0xd83a97c, is taken when a5(?) == s4(=-0x1), and falls through when a5(?) != s4(=-0x1).
  The `bne` branch at 0xd83a974 targets 0xd83a888, is taken when a6(?) < t0(?) (signed), and falls through when a6(?) >= t0(?) (signed).
  The `beq` branch at 0xd83a97c targets 0xd83a9e4, is taken when t9(?) == s4(=-0x1), and falls through when t9(?) != s4(=-0x1).
  The `beq` branch at 0xd83a98c targets 0xd83a9e8, is taken when ra(?) >= at(?) (signed), and falls through when ra(?) < at(?) (signed).
  The `beq` branch at 0xd83a994 targets 0xd83a9e8 and is always taken.
  The `blez` branch at 0xd83a9cc targets 0xd83aa2c, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `beq` branch at 0xd83a9dc targets 0xd839c8c and is always taken.
  The `bne` branch at 0xd83a9e8 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83a9f0 targets 0xd83aa70, is taken when v1(?) == s4(=-0x1), and falls through when v1(?) != s4(=-0x1).
  The `beq` branch at 0xd83aa04 targets 0xd83aa70, is taken when a0(?) >= a1(?) (signed), and falls through when a0(?) < a1(?) (signed).
  The `beq` branch at 0xd83aa0c targets 0xd83aa70 and is always taken.
  The `beq` branch at 0xd83aa1c targets 0xd839c8c and is always taken.
  The `beq` branch at 0xd83aa24 targets 0xd83a45c and is always taken.
  The `beq` branch at 0xd83aa44 targets 0xd839c8c and is always taken.
  The `beq` branch at 0xd83aa68 targets 0xd839c8c and is always taken.
  The `bne` branch at 0xd83aa70 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83aa78 targets 0xd83aa98, is taken when a5(?) == s4(=-0x1), and falls through when a5(?) != s4(=-0x1).
  The `beq` branch at 0xd83aa8c targets 0xd83aa98, is taken when a6(?) >= t0(?) (signed), and falls through when a6(?) < t0(?) (signed).
  The `bne` branch at 0xd83aa98 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83aaa0 targets 0xd83aac0, is taken when t9(?) == s4(=-0x1), and falls through when t9(?) != s4(=-0x1).
  The `beq` branch at 0xd83aab0 targets 0xd83aac4, is taken when ra(?) >= at(?) (signed), and falls through when ra(?) < at(?) (signed).
  The `beq` branch at 0xd83aab8 targets 0xd83aac4 and is always taken.
  The `bne` branch at 0xd83aac4 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83aacc targets 0xd83aaec, is taken when v0(?) == s4(=-0x1), and falls through when v0(?) != s4(=-0x1).
  The `beq` branch at 0xd83aae0 targets 0xd83aaec, is taken when v1(?) >= a0(?) (signed), and falls through when v1(?) < a0(?) (signed).
  The `bne` branch at 0xd83aaec targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83aaf4 targets 0xd83ab14, is taken when a1(?) == s4(=-0x1), and falls through when a1(?) != s4(=-0x1).
  The `beq` branch at 0xd83ab04 targets 0xd83ab18, is taken when a4(?) >= a5(?) (signed), and falls through when a4(?) < a5(?) (signed).
  The `beq` branch at 0xd83ab0c targets 0xd83ab18 and is always taken.
  The `bne` branch at 0xd83ab18 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83ab20 targets 0xd83ab40, is taken when a6(?) == s4(=-0x1), and falls through when a6(?) != s4(=-0x1).
  The `beq` branch at 0xd83ab30 targets 0xd83ab44, is taken when t0(?) >= t9(?) (signed), and falls through when t0(?) < t9(?) (signed).
  The `beq` branch at 0xd83ab38 targets 0xd83ab44 and is always taken.
  The `bne` branch at 0xd83ab44 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83ab4c targets 0xd83ab6c, is taken when ra(?) == s4(=-0x1), and falls through when ra(?) != s4(=-0x1).
  The `beq` branch at 0xd83ab5c targets 0xd83ab70, is taken when at(?) >= v0(?) (signed), and falls through when at(?) < v0(?) (signed).
  The `beq` branch at 0xd83ab64 targets 0xd83ab70 and is always taken.
  The `bne` branch at 0xd83ab70 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83ab78 targets 0xd83ab94, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd83ab84 targets 0xd83ab98, is taken when a0(?) == a1(?), and falls through when a0(?) != a1(?).
  The `beq` branch at 0xd83ab8c targets 0xd83ab98 and is always taken.
  The `bne` branch at 0xd83ab98 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83aba0 targets 0xd83abbc, is taken when a4(?) == s4(=-0x1), and falls through when a4(?) != s4(=-0x1).
  The `beq` branch at 0xd83abac targets 0xd83abc0, is taken when a5(?) == a6(?), and falls through when a5(?) != a6(?).
  The `beq` branch at 0xd83abb4 targets 0xd83abc0 and is always taken.
  The `bne` branch at 0xd83abc0 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83abc8 targets 0xd83abe4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xd83abd4 targets 0xd83abe8, is taken when t9(?) == ra(?), and falls through when t9(?) != ra(?).
  The `beq` branch at 0xd83abdc targets 0xd83abe8 and is always taken.
  The `bne` branch at 0xd83abe8 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83abf0 targets 0xd83ac0c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd83abfc targets 0xd83ac10, is taken when v0(?) == v1(?), and falls through when v0(?) != v1(?).
  The `beq` branch at 0xd83ac04 targets 0xd83ac10 and is always taken.
  The `bne` branch at 0xd83ac10 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83ac18 targets 0xd83ac34, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xd83ac28 targets 0xd83ac34, is taken when a1(?) == a4(?), and falls through when a1(?) != a4(?).
  The `bne` branch at 0xd83ac34 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83ac3c targets 0xd83ac58, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xd83ac48 targets 0xd83ac5c, is taken when a6(?) == t0(?), and falls through when a6(?) != t0(?).
  The `beq` branch at 0xd83ac50 targets 0xd83ac5c and is always taken.
  The `bne` branch at 0xd83ac5c targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83ac64 targets 0xd83ac80, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xd83ac70 targets 0xd83ac84, is taken when ra(?) == at(?), and falls through when ra(?) != at(?).
  The `beq` branch at 0xd83ac78 targets 0xd83ac84 and is always taken.
  The `bne` branch at 0xd83ac84 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83ac8c targets 0xd83aca8, is taken when v0(=one of 0x0, 0x1) == 0, and falls through when v0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd83ac9c targets 0xd83aca8, is taken when v1(?) == a0(?), and falls through when v1(?) != a0(?).
  The `bne` branch at 0xd83aca8 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83acb0 targets 0xd83acd0, is taken when a1(?) == s4(=-0x1), and falls through when a1(?) != s4(=-0x1).
  The `beq` branch at 0xd83acc0 targets 0xd83acd4, is taken when a4(?) == a5(?), and falls through when a4(?) != a5(?).
  The `beq` branch at 0xd83acc8 targets 0xd83acd4 and is always taken.
  The `bne` branch at 0xd83acd4 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83acdc targets 0xd83acfc, is taken when a6(?) == s4(=-0x1), and falls through when a6(?) != s4(=-0x1).
  The `beq` branch at 0xd83acec targets 0xd83ad00, is taken when t0(?) == t9(?), and falls through when t0(?) != t9(?).
  The `beq` branch at 0xd83acf4 targets 0xd83ad00 and is always taken.
  The `bne` branch at 0xd83ad00 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83ad08 targets 0xd83ad1c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0xd83ad14 targets 0xd83ad70, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd83ad1c targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83ad24 targets 0xd83ad44, is taken when s4(=-0x1) == v0(?), and falls through when s4(=-0x1) != v0(?).
  The `beq` branch at 0xd83ad34 targets 0xd83ad48, is taken when v1(?) >= a0(?) (unsigned), and falls through when v1(?) < a0(?) (unsigned).
  The `beq` branch at 0xd83ad3c targets 0xd83ad48 and is always taken.
  The `bne` branch at 0xd83ad48 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83ad50 targets 0xd83ad78, is taken when s4(=-0x1) == a1(?), and falls through when s4(=-0x1) != a1(?).
  The `beq` branch at 0xd83ad60 targets 0xd83ad7c, is taken when a4(?) >= a5(?) (unsigned), and falls through when a4(?) < a5(?) (unsigned).
  The `beq` branch at 0xd83ad68 targets 0xd83ad7c and is always taken.
  The `beq` branch at 0xd83ad70 targets 0xd83ad1c and is always taken.
  The `bne` branch at 0xd83ad7c targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83ad84 targets 0xd83ae08, is taken when s4(=-0x1) == a6(?), and falls through when s4(=-0x1) != a6(?).
  The `bne` branch at 0xd83ad90 targets 0xd83a888, is taken when t0(?) != t9(?), and falls through when t0(?) == t9(?).
  The `beq` branch at 0xd83ad98 targets 0xd83adb8, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bc1f` branch at 0xd83adac targets 0xd83adb8, is taken when not (f12 < f13 (c.lt.d at 0xd83ada8)), and falls through when f12 < f13 (c.lt.d at 0xd83ada8).
  The `bne` branch at 0xd83adb8 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83adc0 targets 0xd83af10, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bc1f` branch at 0xd83add0 targets 0xd83af14, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xd83add8 targets 0xd83af14 and is always taken.
  The `bne` branch at 0xd83ae00 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83ae20 targets 0xd83af48, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xd83aebc targets 0xd83ae40, is taken when a6(?) != a4(?), and falls through when a6(?) == a4(?).
  The `beq` branch at 0xd83aecc targets 0xd83af40, is taken when a6(?) >= ra(?) (signed), and falls through when a6(?) < ra(?) (signed).
  The `beq` branch at 0xd83aef0 targets 0xd83af08, is taken when a1(?) == ra(?), and falls through when a1(?) != ra(?).
  The `bne` branch at 0xd83af00 targets 0xd83aee8, is taken when a1(?) != ra(?), and falls through when a1(?) == ra(?).
  The `beq` branch at 0xd83af08 targets 0xd83a888 and is always taken.
  The `bne` branch at 0xd83af14 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83af1c targets 0xd83af50, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bc1f` branch at 0xd83af30 targets 0xd83af50, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0xd83af38 targets 0xd83af50 and is always taken.
  The `beq` branch at 0xd83af40 targets 0xd83af08 and is always taken.
  The `beq` branch at 0xd83af48 targets 0xd83af08 and is always taken.
  The `bne` branch at 0xd83af50 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83af58 targets 0xd83af78, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bc1f` branch at 0xd83af68 targets 0xd83af7c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xd83af70 targets 0xd83af7c and is always taken.
  The `bne` branch at 0xd83af7c targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83af84 targets 0xd83afa4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bc1f` branch at 0xd83af98 targets 0xd83afa4, is taken when FP condition code 4 is false, and falls through when FP condition code 4 is true.
  The `bne` branch at 0xd83afa4 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83afac targets 0xd83afcc, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bc1f` branch at 0xd83afbc targets 0xd83afd0, is taken when FP condition code 5 is false, and falls through when FP condition code 5 is true.
  The `beq` branch at 0xd83afc4 targets 0xd83afd0 and is always taken.
  The `bne` branch at 0xd83afd0 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83afd8 targets 0xd83aff8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bc1f` branch at 0xd83afec targets 0xd83aff8, is taken when FP condition code 6 is false, and falls through when FP condition code 6 is true.
  The `bne` branch at 0xd83aff8 targets 0xd83a888, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd83b00c targets 0xd83ade0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bc1f` branch at 0xd83b020 targets 0xd83ade4, is taken when FP condition code 7 is false, and falls through when FP condition code 7 is true.
  The `beq` branch at 0xd83b028 targets 0xd83ade4 and is always taken.
  The `beq` branch at 0xd83b034 targets 0xd83a710 and is always taken.
  The return at 0xd839aa4 has v0 = 0x0.
  The return at 0xd839c7c has v0 = 0x0.
  The return at 0xd839ca4 has v0 = one of 0x0, ret(malloc).
  The return at 0xd839d00 has v0 = 0x0.
  The return at 0xd839e78 has v0 = 0x0.
  The return at 0xd839eac has v0 = ret(malloc).
  The instructions from 0xd83a6cc to 0xd83a6cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83a874 to 0xd83a87c are not reached by any path from the entry, and their branches are not listed.

- `glXGetFBConfigs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83b03c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83b03c-0xd83b1bc (384 bytes).
  It occupies 384 bytes.
  The `lw` at 0xd83b07c loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd83b0a4 loads 4 bytes from ret(__glXInitialize) +0x20.
  The `lw` at 0xd83b0b4 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10.
  The `lw` at 0xd83b0b8 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc.
  9 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd83b120, `sw` at 0xd83b144, `sw` at 0xd83b14c.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd83b18c, `sw` at 0xd83b1b0.
  The `jalr` at 0xd83b064 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83b0c4 calls malloc with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12], a2=(a1 << 0x5), a3=?, a6=ret(__glXInitialize).
  The `beq` branch at 0xd83b06c targets 0xd83b198, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `bltz` branch at 0xd83b074 targets 0xd83b08c, is taken when s0(=a1) < 0 (signed), and falls through when s0(=a1) >= 0 (signed).
  The `bne` branch at 0xd83b084 targets 0xd83b0a4, is taken when s0(=a1) < v0(=[a0+136]) (signed), and falls through when s0(=a1) >= v0(=[a0+136]) (signed).
  The `beq` branch at 0xd83b0dc targets 0xd83b1b0, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `blez` branch at 0xd83b0e8 targets 0xd83b188, is taken when a7(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed), and falls through when a7(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  The `beq` branch at 0xd83b114 targets 0xd83b130, is taken when (a7(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) & 0x7) == 0, and falls through when (a7(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) & 0x7) != 0.
  The `bne` branch at 0xd83b128 targets 0xd83b11c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xd83b134 targets 0xd83b184, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0xd83b17c targets 0xd83b13c, is taken when a1(?) != a5(?), and falls through when a1(?) == a5(?).
  The `beq` branch at 0xd83b1b4 targets 0xd83b094 and is always taken.
  The return at 0xd83b09c has v0 = 0x0.
  The return at 0xd83b190 has v0 = ret(malloc).
  The return at 0xd83b1a8 has v0 = 0x0.

- `glXCreateNewContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83b400 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83b400-0xd83b454 (84 bytes).
  It occupies 84 bytes.
  The `jalr` at 0xd83b43c calls (unnamed) [0xd83269c] with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=0x0, a7=0x0.
  The return at 0xd83b44c has v0 = ret(0xd83269c).

- `glXQueryContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83b7d8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83b7d8-0xd83b8b4 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xd83b7f8 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `lw` at 0xd83b84c loads 4 bytes from a1 (arg1 at entry) +0x20.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xd83b854, `sw` at 0xd83b85c, `sw` at 0xd83b8b0.
  The `lw` at 0xd83b858 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lw` at 0xd83b86c loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lw` at 0xd83b8a8 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `bgezall` at 0xd83b888 calls (unnamed) [0xd83b454] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[a1+44].
  The `beq` branch at 0xd83b7f0 targets 0xd83b838, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xd83b7fc targets 0xd83b86c, is taken when v0(=[a1+196]) == 0, and falls through when v0(=[a1+196]) != 0.
  The `beq` branch at 0xd83b810 targets 0xd83b858, is taken when s0(=a2) == v1(=0x8013), and falls through when s0(=a2) != v1(=0x8013).
  The `beq` branch at 0xd83b818 targets 0xd83b8a8, is taken when s0(=a2) == a0(=0x8011), and falls through when s0(=a2) != a0(=0x8011).
  The `beq` branch at 0xd83b820 targets 0xd83b84c, is taken when s0(=a2) == a2(=0x800c), and falls through when s0(=a2) != a2(=0x800c).
  The `beq` branch at 0xd83b850 targets 0xd83b860 and is always taken.
  The `bne` branch at 0xd83b870 targets 0xd83b800, is taken when a6(=[a1+44]) != 0, and falls through when a6(=[a1+44]) == 0.
  The `beq` branch at 0xd83b898 targets 0xd83b800, is taken when v0(=ret(0xd83b454)) == 0, and falls through when v0(=ret(0xd83b454)) != 0.
  The `beq` branch at 0xd83b8a0 targets 0xd83b82c and is always taken.
  The `beq` branch at 0xd83b8ac targets 0xd83b860 and is always taken.
  The return at 0xd83b830 has v0 = one of 0x2, ret(0xd83b454).
  The return at 0xd83b844 has v0 = 0x5.
  The return at 0xd83b864 has v0 = 0x0.

- `glXCreateWindow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83b8b4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83b8b4-0xd83b9fc (328 bytes).
  It occupies 328 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83b8f4, `lw` at 0xd83b994.
  The `lw` at 0xd83b900 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83b90c, `lw` at 0xd83b948, `lw` at 0xd83b9e4.
  The `lw` at 0xd83b910 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83b930 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83b938 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83b940, `sb` at 0xd83b960.
  The `lw` at 0xd83b944 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83b950 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83b958 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sb` at 0xd83b95c stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83b964 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd83b968 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd83b96c loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd83b970 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd83b974 stores 4 bytes to [a0+108] +0x8.
  The `lw` at 0xd83b978 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd83b98c stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd83b990 stores 4 bytes to [a0+108] +0x10.
  The `lw` at 0xd83b9a0 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd83b9ac loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd83b8e0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83b904 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83b980 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[a1+72], a3=[a1+36], a4=0x1f, a6=[a0+96]+1, a7=[a0+108]+24.
  The `jalr` at 0xd83b9a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83b9b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83b9d8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83b8ec targets 0xd83b9e8, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd83b8f8 targets 0xd83b90c, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xd83b91c targets 0xd83b9d8, is taken when v1(=[a0+112]) < a0(=[a0+108]+24) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+24) (unsigned).
  The `beq` branch at 0xd83b998 targets 0xd83b9ac, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd83b9b0 targets 0xd83b9c4, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83b9e0 targets 0xd83b924 and is always taken.
  The return at 0xd83b9d0 has v0 = ret(?).
  The return at 0xd83b9f4 has v0 = 0x0.

- `glXDestroyWindow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83b9fc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83b9fc-0xd83baf8 (252 bytes).
  It occupies 252 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83ba38, `lw` at 0xd83baa8.
  The `lw` at 0xd83ba44 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83ba50, `lw` at 0xd83ba88, `lw` at 0xd83baf4.
  The `lw` at 0xd83ba54 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83ba70 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83ba78 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83ba80, `sb` at 0xd83baa4.
  The `lw` at 0xd83ba84 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83ba90 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83ba98 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83ba9c stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83baa0 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83bab4 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd83bac0 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd83ba24 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83ba48 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+1232].
  The `jalr` at 0xd83bab8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x20, a3=[a0+1232], a4=[a0+96]+1, a5=[a0+108]+8, a6=0x2.
  The `jalr` at 0xd83bacc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83bae8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83ba30 targets 0xd83bad8, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd83ba3c targets 0xd83ba50, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `bne` branch at 0xd83ba60 targets 0xd83bae8, is taken when v0(=[a0+112]) < v1(=[a0+108]+8) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xd83baac targets 0xd83bac0, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `beq` branch at 0xd83bac4 targets 0xd83bad8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83baf0 targets 0xd83ba68 and is always taken.
  The return at 0xd83bae0 has v0 = one of ret(__glXSetupForCommand), ?, ret(?).

- `__glXGetReadDrawableSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83bd98 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83bd98-0xd83bea4 (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0xd83bda0 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0xd83bda4 loads 4 bytes from [a0+76] +0xe8.
  The `lw` at 0xd83bdb0 loads 4 bytes from [[a0+76]+232] +0x2c.
  3 such `lw` accesses load 4 bytes from [a0+76] +0xd8, including `lw` at 0xd83bde4, `lw` at 0xd83be80, `lw` at 0xd83be98.
  3 such `lw` accesses load 4 bytes from [a0+76] +0xdc, including `lw` at 0xd83bdfc, `lw` at 0xd83be74, `lw` at 0xd83be8c.
  The `sw` at 0xd83be28 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0xd83be38 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `lw` at 0xd83be50 loads 4 bytes from [[a0+76]+232] +0x24.
  The `jalr` at 0xd83be08 calls XGetGeometry with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=sp-80, a3=sp-76, a4=sp-72, a5=sp-68, a6=sp-64, a7=sp-60.
  The `jalr` at 0xd83be5c calls XGetGeometry with a0=[[a0+76]+216], a1=[[[a0+76]+232]+36], a2=sp-56, a3=sp-52, a4=sp-48, a5=sp-68, a6=sp-64, a7=sp-44.
  The `jalr` at 0xd83be7c calls glXQueryGLXPbufferSGIX with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=0x801d, a3=sp-68, a4=[[[a0+76]+232]+44].
  The `jalr` at 0xd83be94 calls glXQueryGLXPbufferSGIX with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=0x801e, a3=sp-64.
  The `beq` branch at 0xd83bdd0 targets 0xd83be6c, is taken when a4(=[[[a0+76]+232]+44]) == at(=0x4), and falls through when a4(=[[[a0+76]+232]+44]) != at(=0x4).
  The `beq` branch at 0xd83bdd8 targets 0xd83be70, is taken when a4(=[[[a0+76]+232]+44]) == v1(=0x5), and falls through when a4(=[[[a0+76]+232]+44]) != v1(=0x5).
  The `beq` branch at 0xd83bde0 targets 0xd83be3c, is taken when a4(=[[[a0+76]+232]+44]) == a0(=0x6), and falls through when a4(=[[[a0+76]+232]+44]) != a0(=0x6).
  The `beq` branch at 0xd83be64 targets 0xd83be14 and is always taken.
  The `beq` branch at 0xd83be9c targets 0xd83be14 and is always taken.
  The return at 0xd83be34 has v0 = one of ret(XGetGeometry), ret(glXQueryGLXPbufferSGIX).

- `glXJoinSwapGroupSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83c008 (n32).
  Inferred: writes a short 0x14-byte request into the display's output buffer and never reads an answer, going by the cursor at arg0+0x6c (advanced by 0x14) and the `_XFlush` call (0xd83c100) taken at 0xd83c068 when arg0+0x70 would be crossed.
  `__glXSetupForCommand` is called first with the entry arguments (`jalr` at 0xd83c038) and its result is saved in the frame (`sd` at 0xd83c048). When the table pointer at arg0+0x4d0 is nonzero (`beq` at 0xd83c044), slot +0x0 of that table is called (`jalr` at 0xd83c050) with arg0 in `a0`.
  If the limit at arg0+0x70 is below the cursor plus 0x14 (`bne` at 0xd83c068), `_XFlush` runs first and the cursor is reloaded in the delay slot of the branch at 0xd83c108. At 0xd83c078 the cursor is saved in arg0+0x64. Into the record at the cursor go halfword 5 at +0x2 (`sh` at 0xd83c080), byte 0x10 at +0x0 (`sb` at 0xd83c088) and +0x1 (`sb` at 0xd83c0b8), 0x1000b at +0x4 (`sw` at 0xd83c0b4), entry `a1` at +0xc (`sw` at 0xd83c0ac) and entry `a2` at +0x10 (`sw` at 0xd83c0a4). After the fields, arg0+0x60 is incremented and arg0+0x6c is moved on by 0x14 (`sw` at 0xd83c098 and 0xd83c0a0). Byte +0x0 is then overwritten with the low byte of the saved setup result (`sb` at 0xd83c0bc).
  The routine ends with two optional calls: slot +0x4 of the arg0+0x4d0 table (`jalr` at 0xd83c0d0, guarded at 0xd83c0c4) and the pointer at arg0+0x7c (`jalr` at 0xd83c0e4, guarded at 0xd83c0dc).
  Unknown: the targets of the table slots and of the arg0+0x7c pointer, so the device-side outcome of the request stays open until the stores that fill them are found.
  Unknown: what `v0` holds at the `jr ra` at 0xd83c0f8 when the arg0+0x7c pointer is zero; tracing `v0` from the slot +0x4 call settles it.
  Evidence grade: inferred.

- `glXJoinSwapGroupSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83c008 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83c008-0xd83c110 (264 bytes).
  It occupies 264 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83c040, `lw` at 0xd83c0c0.
  The `lw` at 0xd83c04c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83c058, `lw` at 0xd83c090, `lw` at 0xd83c10c.
  The `lw` at 0xd83c05c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83c078 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83c080 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83c088, `sb` at 0xd83c0bc.
  The `lw` at 0xd83c08c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83c098 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83c0a0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83c0a4 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83c0ac stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd83c0b4 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83c0b8 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83c0cc loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd83c0d8 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd83c038 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83c050 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83c0d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=0x1000b, a4=0x10, a5=[a0+1232], a6=[a0+96]+1, a7=[a0+108]+20.
  The `jalr` at 0xd83c0e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c100 calls _XFlush with a0=a0 at entry (arg0), a1=[a0+108]+20, a2=?, a3=?.
  The `beq` branch at 0xd83c044 targets 0xd83c058, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xd83c068 targets 0xd83c100, is taken when v1(=[a0+112]) < a1(=[a0+108]+20) (unsigned), and falls through when v1(=[a0+112]) >= a1(=[a0+108]+20) (unsigned).
  The `beq` branch at 0xd83c0c4 targets 0xd83c0d8, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd83c0dc targets 0xd83c0ec, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83c108 targets 0xd83c070 and is always taken.
  The return at 0xd83c0f8 has v0 = one of ?, ret(?).

- `glXBindSwapBarrierSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83c110 (n32).
  Inferred: the routine appends one 0x14-byte request record to the buffer whose write pointer is at +0x6c of the display in a0, because it first calls `__glXSetupForCommand` (committed note: it selects the display's current context) and calls `_XFlush` when the buffer is short.
  The `jalr` at 0xd83c140 passes the display, a1 and a2 through to `__glXSetupForCommand`, and that return is saved at 0xd83c150 and reloaded at 0xd83c174.
  When the word at +0x4d0 is nonzero, the `jalr` at 0xd83c158 calls through the pointer at offset 0 of the block that word points to, with the display in a0.
  If the word at +0x70 is below the write pointer plus 0x14 (unsigned `bne` at 0xd83c170), the routine calls `_XFlush` at 0xd83c208 and then writes the record without a second check.
  The write pointer is copied to +0x64 (`sw` at 0xd83c17c), the record is written at that pointer with the byte 0x10 at +0x0 (`sb` at 0xd83c18c), the halfword 0x5 at +0x2 (`sh` at 0xd83c184), the byte 0x10 at +0x1 and the word 0x1000c at +0x4 (`sb` at 0xd83c1bc, `sw` at 0xd83c1b8), a1 as it arrived at +0xc (`sw` at 0xd83c1b0) and a2 as it arrived at +0x10 (`sw` at 0xd83c1a8), and the pointer at +0x6c is advanced by 0x14 (`sw` at 0xd83c1a4).
  The byte at +0x0 is then overwritten with the return value of `__glXSetupForCommand` (`sb` at 0xd83c1c0), and the word at +0x60 is incremented by one (`sw` at 0xd83c19c).
  If the word at +0x4d0 is nonzero, the `jalr` at 0xd83c1d4 calls through the pointer at +0x4 of that block with the display in a0; if the word at +0x7c is nonzero, the `jalr` at 0xd83c1e8 calls through it with the display in a0.
  The routine sets v0 nowhere after the first call, so the value returned at the `jr ra` at 0xd83c1fc is
  the return of the last call made: the pointer at +0x7c, the +0x4 pointer of the +0x4d0 block, `_XFlush`
  or, when none of those runs, `__glXSetupForCommand`.
  Unknown: the content of the three calls through pointers at 0xd83c158, 0xd83c1d4 and 0xd83c1e8, since
  the bundle holds no committed entry for their targets; the code that fills the +0x4d0 block and the
  +0x7c pointer would settle it.
  Evidence grade: inferred.

- `glXBindSwapBarrierSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83c110 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83c110-0xd83c218 (264 bytes).
  It occupies 264 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83c148, `lw` at 0xd83c1c4.
  The `lw` at 0xd83c154 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83c160, `lw` at 0xd83c194, `lw` at 0xd83c214.
  The `lw` at 0xd83c164 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83c17c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83c184 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83c18c, `sb` at 0xd83c1c0.
  The `lw` at 0xd83c190 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83c19c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83c1a4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83c1a8 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83c1b0 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd83c1b8 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83c1bc stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83c1d0 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd83c1dc loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd83c140 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83c158 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83c1d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=0x1000c, a4=0x10, a5=[a0+1232], a6=[a0+96]+1, a7=[a0+108]+20.
  The `jalr` at 0xd83c1e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c208 calls _XFlush with a0=a0 at entry (arg0), a1=[a0+108]+20, a2=?, a3=?, a5=ret(__glXSetupForCommand).
  The `beq` branch at 0xd83c14c targets 0xd83c160, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xd83c170 targets 0xd83c204, is taken when v1(=[a0+112]) < a1(=[a0+108]+20) (unsigned), and falls through when v1(=[a0+112]) >= a1(=[a0+108]+20) (unsigned).
  The `beq` branch at 0xd83c1c8 targets 0xd83c1dc, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd83c1e0 targets 0xd83c1f0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83c210 targets 0xd83c174 and is always taken.
  The return at 0xd83c1fc has v0 = one of ?, ret(?).

- `glXQueryMaxSwapBarriersSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83c218 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83c218-0xd83c38c (372 bytes).
  It occupies 372 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83c250, `lw` at 0xd83c2e8.
  The `lw` at 0xd83c25c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83c268, `lw` at 0xd83c29c, `lw` at 0xd83c344.
  The `lw` at 0xd83c26c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83c284 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83c28c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83c294, `sb` at 0xd83c2e0.
  The `lw` at 0xd83c298 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83c2a4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83c2ac stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83c2b0 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd83c2c8 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83c2d4 stores 1 byte to [a0+108] +0x1.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83c2f4, `lw` at 0xd83c350.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83c300, `lw` at 0xd83c35c.
  The `sw` at 0xd83c320 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd83c248 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83c260 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83c2dc calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a5=[a0+108], a6=0x11, a7=0x1000d.
  The `jalr` at 0xd83c2f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83c30c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c338 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+108].
  The `jalr` at 0xd83c354 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83c368 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83c254 targets 0xd83c268, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xd83c278 targets 0xd83c338, is taken when v1(=[a0+112]) < a0(=[a0+108]+16) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xd83c2e4 targets 0xd83c348, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xd83c2ec targets 0xd83c300, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd83c304 targets 0xd83c314, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83c340 targets 0xd83c280 and is always taken.
  The `beq` branch at 0xd83c348 targets 0xd83c35c, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd83c360 targets 0xd83c374, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd83c330 has v0 = 0x1.
  The return at 0xd83c384 has v0 = 0x0.

- `glXQueryMaxSwapBarriersSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83c218
  `glXQueryMaxSwapBarriersSGIX` is a 372-byte n32 routine. It calls `__glXSetupForCommand`, an unnamed callee (call 2, only when [a0+1232] is nonzero), and then `_XReply` (0xd83c2dc) with a1 = sp-80. The values a5 = [a0+108], a6 = 0x11 and a7 = 0x1000d are set at that call, but they are not `_XReply` arguments, so their role is not established. When `_XReply` returns nonzero it makes a word store at +0 from a base the facts do not name and returns 1. `_XFlush` (0xd83c338) is called when the buffer-space comparison at 0xd83c278 takes its branch. The other return is 0.
  Grade: inferred.
  Reviewed: 2026-11-12

- `glXBindChannelToWindowSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83c52c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83c52c-0xd83c68c (352 bytes).
  It occupies 352 bytes.
  The `lw` at 0xd83c548 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83c568 loads 4 bytes from [0x1014] +0x114.
  The `sb` at 0xd83c604 stores 1 byte to (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x48.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd83c608, `lw` at 0xd83c60c.
  The `lw` at 0xd83c620 loads 4 bytes from (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x44.
  The `sb` at 0xd83c688 stores 1 byte to (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x49.
  The `jalr` at 0xd83c570 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd83c594 calls __glXInitChannelRectState [0xd83c38c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd83c5c0 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-80, a5=0x4.
  The `jalr` at 0xd83c5d4 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd83c61c calls (unknown callee) with a0=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+68], a1=0x1, a2=?, a3=?.
  The `beq` branch at 0xd83c578 targets 0xd83c638, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0xd83c59c targets 0xd83c65c, is taken when v0(=ret(__glXInitChannelRectState)) == 0, and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beq` branch at 0xd83c600 targets 0xd83c67c, is taken when a0(=a3) == 0, and falls through when a0(=a3) != 0.
  The `beq` branch at 0xd83c614 targets 0xd83c674, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xd83c66c targets 0xd83c628 and is always taken.
  The `beq` branch at 0xd83c674 targets 0xd83c628 and is always taken.
  The `beq` branch at 0xd83c684 targets 0xd83c624 and is always taken.
  The return at 0xd83c630 has v0 = one of 0x0, 0x1.
  The return at 0xd83c654 has v0 = 0x0.

- `glXQueryHyperpipeNetworkSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83cc58 (n32).
  Inferred: sends a 0x10-byte request through the display's output buffer, waits for the answer with `_XReply` (`jalr` at 0xd83cd20) and returns a heap block holding the reply data, with a count stored through entry `a1`, since `_XFlush` (0xd83ce70) runs when the limit at arg0+0x70 would be passed and the reply path calls `malloc` and `_XRead`.
  `__glXSetupForCommand` runs first (`jalr` at 0xd83cc84); its result is saved in the frame (`sd` at 0xd83cc98), the `sw` at 0xd83cc8c zeroes the word that entry `a1` points to, and slot +0x0 of the table at arg0+0x4d0 is called (`jalr` at 0xd83cca0) when that pointer is nonzero.
  The cursor at arg0+0x6c is stored to arg0+0x64 (`sw` at 0xd83ccc8) when the limit test at 0xd83ccb8 passes, after a `_XFlush` call if it does not. Into the record go halfword 4 at +0x2 (`sh` at 0xd83ccd0), byte 0x10 at +0x0 (`sb` at 0xd83ccd8), 0x1000e at +0x4 (`sw` at 0xd83ccfc), byte 0x11 at +0x1 (`sb` at 0xd83cd04) and the word at arg0+0x84 at +0xc (`sw` at 0xd83cd24, delay slot of the `_XReply` call). Byte +0x0 is rewritten last from the saved setup result, low byte only (`sb` at 0xd83cd0c). Then arg0+0x6c grows by 0x10 and arg0+0x60 by 1 (`sw` at 0xd83ccf4 and 0xd83cce8).
  `_XReply` is called with arg0, the address of the frame bottom as `a1`, and `a2` and `a3` both zero. A zero result (`beq` at 0xd83cd28) goes to 0xd83ce80: it calls slot +0x4 of the arg0+0x4d0 table and the pointer at arg0+0x7c when each is nonzero, zeroes the word at entry `a1` (`sw` at 0xd83cebc) and returns 0.
  With a nonzero result, the frame word at offset 0x10, call it n, is loaded at 0xd83cd2c and stored through entry `a1` by the `sw` at 0xd83cd38, the delay slot of the `blez`; the frame word at offset 0xc is loaded at 0xd83cd30. If n is between 1 and 32 (`blez` at 0xd83cd34, branch at 0xd83cd40 on n below 0x21), `malloc` is called (`jalr` at 0xd83cdbc) with a size computed from n by the shift and add steps at 0xd83cda8 to 0xd83cdc0 (n shifted left 2, plus n, shifted left 2, plus n, then shifted left 2 in the delay slot), the offset 0xc word being saved at sp+0x50 first (`sd` at 0xd83cdb4).
  If n is not in that range, `_XEatData` is called with arg0 and the offset 0xc word (`jalr` at 0xd83cd50), the two guarded calls run, zero is stored through `a1` (0xd83cd84) and the routine returns 0. A null `malloc` result takes the same `_XEatData` call (`jalr` at 0xd83cdd8), the guarded calls and the zero store (0xd83ce0c). A block result calls `_XRead` with arg0, the block and the offset 0xc word (`jalr` at 0xd83ce20), runs the guarded calls and returns the block (reloaded from sp+0x20 at 0xd83ce48 and 0xd83ce54; return at 0xd83ce68).
  Inferred: `_XReply` fills the frame words at offsets 0xc and 0x10, as it is handed the frame bottom and nothing else stores there.
  Unknown: where the table slots and the arg0+0x7c pointer lead, and the content of the two reply fields at offsets 0xc and 0x10; reading the code behind `_XReply` would settle the latter.
  Evidence grade: inferred.

- `glXQueryHyperpipeNetworkSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83cc58 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83cc58-0xd83cecc (628 bytes).
  It occupies 628 bytes.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xd83cc8c, `sw` at 0xd83cd38, `sw` at 0xd83cd84.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83cc90, `lw` at 0xd83cd58, `lw` at 0xd83cde0.
  The `lw` at 0xd83cc9c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83cca8, `lw` at 0xd83cce0, `lw` at 0xd83ce7c.
  The `lw` at 0xd83ccac loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83ccc8 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83ccd0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83ccd8, `sb` at 0xd83cd0c.
  The `lw` at 0xd83ccdc loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83cce8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83ccf4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83ccfc stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83cd04 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83cd18 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83cd24 stores 4 bytes to [a0+108] +0xc.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83cd64, `lw` at 0xd83cdec, `lw` at 0xd83ce34.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83cd70, `lw` at 0xd83cdf8, `lw` at 0xd83ce40.
  The `jalr` at 0xd83cc84 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83cca0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83cd20 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+132], a5=0x1000e, a6=0x11.
  The `jalr` at 0xd83cd50 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cd68 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83cd7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cdbc calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cdd8 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cdf0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83ce04 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ce20 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd83ce38 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83ce4c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ce70 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ce90 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83cea4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83cc94 targets 0xd83cca8, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd83ccb8 targets 0xd83ce70, is taken when v1(=[a0+112]) < a0(=[a0+108]+16) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xd83cd28 targets 0xd83ce80, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `blez` branch at 0xd83cd34 targets 0xd83cd48, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bne` branch at 0xd83cd40 targets 0xd83cda4, is taken when a0(?) < 0x21 (signed), and falls through when a0(?) >= 0x21 (signed).
  The `beq` branch at 0xd83cd5c targets 0xd83cd70, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83cd74 targets 0xd83cd84, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `bne` branch at 0xd83cdc8 targets 0xd83ce18, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd83cde4 targets 0xd83cdf8, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83cdfc targets 0xd83ce0c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83ce10 targets 0xd83cd8c and is always taken.
  The `beq` branch at 0xd83ce2c targets 0xd83ce40, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83ce44 targets 0xd83ce58, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83ce78 targets 0xd83ccc0 and is always taken.
  The `beq` branch at 0xd83ce84 targets 0xd83ce98, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83ce9c targets 0xd83ceac, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd83cd9c has v0 = 0x0.
  The return at 0xd83ce68 has v0 = ?.
  The return at 0xd83cec4 has v0 = 0x0.

- `glXHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83cecc (n32).
  Inferred: sends a variable-length request to the display's output buffer, with the data block a3 points to appended, and waits for the answer, since the cursor at arg0+0x6c advances by the record size, `_XFlush` (0xd83d134) runs when the limit at arg0+0x70 would be passed, and `_XReply` (`jalr` at 0xd83d050) is called after the copy.
  It calls `__glXSetupForCommand` (`jalr` at 0xd83cf08) and returns 0x5b at once when entry `a2` is zero or negative, when entry `a3` is zero, when entry `a2` is 0x21 or more, or when entry `a1` is negative (the branches at 0xd83cf10, 0xd83cf18, 0xd83cf20 and 0xd83cf28). Otherwise the setup result is saved at 0xd83cf38 and, if the table pointer at arg0+0x4d0 is nonzero (`beq` at 0xd83cf34), entry +0 of that table is called (`jalr` at 0xd83cf40).
  The data length is 92 times `a2` bytes: the shifts and subtractions at 0xd83cf50 to 0xd83cf64 compute it into `s0`. The request is that length plus 0x20 bytes. If the limit at arg0+0x70 is below the cursor plus that size (`bne` at 0xd83cf78), `_XFlush` runs first.
  The cursor value goes to arg0+0x64 (0xd83cf84). Into the record go byte 0x10 at +0x0 (0xd83cf8c), the request size shifted right by 2 as a halfword at +0x2 (0xd83cf98), 0x10010 at +0x4 (0xd83cfc4), byte 0x11 at +0x1 (0xd83cfcc), the word at arg0+0x84 at +0xc (0xd83cfec, delay slot), entry `a2` at +0x10 (0xd83cfe0) and entry `a1` at +0x14 (0xd83cfd8). Byte +0x0 is overwritten with the low byte of the setup result (`sb` at 0xd83cfd0). The cursor gains the request size and arg0+0x60 gains 1 (0xd83cfbc, 0xd83cfac).
  The data block is copied from the buffer at entry `a3` to record offset +0x20: one leading byte if `s0` is odd (`lbu` at 0xd83d000, `sb` at 0xd83d00c), then a loop of two bytes per pass (`lbu` at 0xd83d01c and 0xd83d02c, `sb` at 0xd83d024 and 0xd83d038) with both pointers stepping by 2 until the counter in `v0` reaches `s0` (`bne` at 0xd83d034). The copy is skipped when `s0` is not positive (`blez` at 0xd83cfe8).
  `_XReply` is then called (`jalr` at 0xd83d050) with arg0, the frame bottom in `a1`, and zeros in `a2` and `a3`. A zero result (`beq` at 0xd83d058) calls entry +4 of the arg0+0x4d0 table and the pointer at arg0+0x7c, each only when nonzero (0xd83d144 to 0xd83d168), and returns 0x5b (0xd83d178).
  With a nonzero result, the frame word at offset 0x14 is stored through entry `a4` (`lw` at 0xd83d060, `sw` at 0xd83d064), and the frame word at offset 0x10 is compared with entry `a2` (`bne` at 0xd83d06c). If they differ, or the word at offset 0x14 is negative (`bltz` at 0xd83d074), the same two guarded calls run and the routine returns 0x5b (0xd83d12c). If they match and the word is not negative, the two guarded calls run and it returns 0 (0xd83d0b4, return at 0xd83d0c0).
  Unknown: the routines behind the calls at 0xd83cf40, 0xd83d08c, 0xd83d0a0, 0xd83d0f8, 0xd83d10c, 0xd83d154 and 0xd83d168, which the pointers at arg0+0x4d0 and arg0+0x7c select, and so the device-side result of the request.
  Unknown: which reply fields `_XReply` places at frame offsets 0x10 and 0x14, since the bundle has no note for `_XReply`.
  Evidence grade: inferred.

- `glXHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83cecc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83cecc-0xd83d18c (704 bytes).
  It occupies 704 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83cf30, `lw` at 0xd83d07c, `lw` at 0xd83d0e8.
  The `lw` at 0xd83cf3c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83cf5c, `lw` at 0xd83cfa0, `lw` at 0xd83d140.
  The `lw` at 0xd83cf68 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83cf84 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83cf8c, `sb` at 0xd83cfd0.
  The `sh` at 0xd83cf98 stores 2 bytes to [a0+108] +0x2.
  The `lw` at 0xd83cf9c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83cfac stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83cfbc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83cfc4 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83cfcc stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83cfd4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83cfd8 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd83cfe0 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83cfec stores 4 bytes to [a0+108] +0xc.
  The `lbu` at 0xd83d000 loads 1 byte from a3 (arg3 at entry) +0x0.
  The `sb` at 0xd83d00c stores 1 byte to [a0+108] +0x20.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd83d01c, `lbu` at 0xd83d02c.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xd83d024, `sb` at 0xd83d038.
  The `sw` at 0xd83d064 stores 4 bytes to a4 (arg4 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83d088, `lw` at 0xd83d0f4, `lw` at 0xd83d150.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83d094, `lw` at 0xd83d100, `lw` at 0xd83d15c.
  The `jalr` at 0xd83cf08 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83cf40 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d050 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0.
  The `jalr` at 0xd83d08c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d0a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d0f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d10c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d134 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d154 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d168 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0xd83cf10 targets 0xd83d0c8, is taken when s2(=a2) <= 0 (signed), and falls through when s2(=a2) > 0 (signed).
  The `beq` branch at 0xd83cf18 targets 0xd83d0c8, is taken when s3(=a3) == 0, and falls through when s3(=a3) != 0.
  The `beq` branch at 0xd83cf20 targets 0xd83d0c8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bltz` branch at 0xd83cf28 targets 0xd83d17c, is taken when v1(=a1) < 0 (signed), and falls through when v1(=a1) >= 0 (signed).
  The `beq` branch at 0xd83cf34 targets 0xd83cf4c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xd83cf78 targets 0xd83d134, is taken when a1(=[a0+112]) < a2(?) (unsigned), and falls through when a1(=[a0+112]) >= a2(?) (unsigned).
  The `blez` branch at 0xd83cfe8 targets 0xd83d03c, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0xd83cff4 targets 0xd83d010, is taken when (s0(?) & 0x1) == 0, and falls through when (s0(?) & 0x1) != 0.
  The `beq` branch at 0xd83d014 targets 0xd83d03c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xd83d034 targets 0xd83d01c, is taken when v0(?) != s0(?), and falls through when v0(?) == s0(?).
  The `beq` branch at 0xd83d058 targets 0xd83d144, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0xd83d06c targets 0xd83d0e8, is taken when s2(=a2) != t1(?), and falls through when s2(=a2) == t1(?).
  The `bltz` branch at 0xd83d074 targets 0xd83d0e8, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0xd83d080 targets 0xd83d094, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d098 targets 0xd83d0a8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d0ec targets 0xd83d100, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d104 targets 0xd83d114, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d13c targets 0xd83cf80 and is always taken.
  The `beq` branch at 0xd83d148 targets 0xd83d15c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d160 targets 0xd83d170, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d174 targets 0xd83d0d4 and is always taken.
  The `beq` branch at 0xd83d184 targets 0xd83d0d4 and is always taken.
  The return at 0xd83d0c0 has v0 = 0x0.
  The return at 0xd83d0e0 has v0 = 0x5b.
  The return at 0xd83d12c has v0 = 0x5b.

- `glXDestroyHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83d18c (n32).
  Inferred: puts a 0x20-byte request into the display's output buffer, then calls `_XReply` to collect the answer, judging by the cursor in arg0+0x6c, `_XFlush` (0xd83d2ac) runs when the limit at arg0+0x70 would be passed and `_XReply` (`jalr` at 0xd83d250) is called after the write.
  It calls `__glXSetupForCommand` (`jalr` at 0xd83d1b8) and saves the result in the frame (`sd` at 0xd83d1c8, sp at entry minus 0x20); unlike the other build of this routine it does not test the result. When arg0+0x4d0 holds a table pointer (`beq` at 0xd83d1c4) it calls that table's entry +0 (`jalr` at 0xd83d1d0).
  If the limit at arg0+0x70 is below the cursor plus 0x20 (`bne` at 0xd83d1e8), `_XFlush` runs first. The current cursor goes into arg0+0x64 (0xd83d1f4); byte 0x10 goes to +0x0, halfword 8 to +0x2, 0x10011 to +0x4, byte 0x11 to +0x1, the word at arg0+0x84 to +0xc, entry `a1` to +0x10, and +0x0 is then overwritten with the low byte of the saved setup result (`sb` at 0xd83d234). The cursor word at arg0+0x6c advances by 0x20 and the counter at arg0+0x60 by 1 (0xd83d220, 0xd83d214).
  `_XReply` (`jalr` at 0xd83d250) gets `a1` set to the frame bottom (sp at entry minus 0x50), zeros in `a2` and `a3`, and the cursor from before the advance in `a5`.
  A zero result (`beq` at 0xd83d258) goes to the entry +4 call (`jalr` at 0xd83d2c8) and the arg0+0x7c call (`jalr` at 0xd83d2dc), each made only with a nonzero pointer (`beq` at 0xd83d2bc and 0xd83d2d4), and then returns 0x5c (0xd83d2ec).
  A nonzero result runs the same two calls at 0xd83d270 and 0xd83d284, guarded at 0xd83d264 and 0xd83d27c, and returns the word at frame offset 0x10 above the buffer start, loaded at 0xd83d260 after `_XReply` returned and returned in `v0` (return at 0xd83d2a0).
  Unknown: the routines behind the pointers at [arg0+0x4d0] (entries +0 and +4) and at arg0+0x7c, reached from 0xd83d1d0, 0xd83d270, 0xd83d284, 0xd83d2c8 and 0xd83d2dc, and so the device-side result of the request.
  Unknown: the origin of the word at frame offset 0x10 that becomes the return value; a note for `_XReply` would settle it.
  Evidence grade: inferred.

- `glXDestroyHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83d18c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83d18c-0xd83d300 (372 bytes).
  It occupies 372 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83d1c0, `lw` at 0xd83d25c.
  The `lw` at 0xd83d1cc loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83d1d8, `lw` at 0xd83d20c, `lw` at 0xd83d2b8.
  The `lw` at 0xd83d1dc loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83d1f4 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83d1fc stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83d204, `sb` at 0xd83d234.
  The `lw` at 0xd83d208 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d214 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d220 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83d228 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83d230 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83d23c loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83d248 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83d254 stores 4 bytes to [a0+108] +0xc.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83d26c, `lw` at 0xd83d2c4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83d278, `lw` at 0xd83d2d0.
  The `jalr` at 0xd83d1b8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83d1d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd83d250 calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a4=[a0+132], a5=[a0+108], a6=0x10011, a7=0x11.
  The `jalr` at 0xd83d270 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd83d284 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d2ac calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+108].
  The `jalr` at 0xd83d2c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd83d2dc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83d1c4 targets 0xd83d1d8, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `bne` branch at 0xd83d1e8 targets 0xd83d2a8, is taken when v1(=[a0+112]) < a0(=[a0+108]+32) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+32) (unsigned).
  The `beq` branch at 0xd83d258 targets 0xd83d2bc, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xd83d264 targets 0xd83d278, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d27c targets 0xd83d290, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d2b4 targets 0xd83d1ec and is always taken.
  The `beq` branch at 0xd83d2bc targets 0xd83d2d0, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d2d4 targets 0xd83d2e8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd83d2a0 has v0 = ?.
  The return at 0xd83d2f8 has v0 = 0x5c.

- `glXQueryHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83d300 (n32).
  Inferred: sends a 0x20-byte request through the display's output buffer, waits for the answer with `_XReply` (`jalr` at 0xd83d3d4) and hands back a heap block holding the reply data plus a count through the pointer in entry `a2`, since `_XFlush` (0xd83d520) runs when the limit at arg0+0x70 would be passed and the reply path calls `malloc` and `_XRead`.
  `__glXSetupForCommand` runs first (`jalr` at 0xd83d330) on the entry arguments and its result is saved in the frame (`sd` at 0xd83d344); the `sw` at 0xd83d338 then zeroes the word that entry `a2` points to, and slot +0x0 of the table at arg0+0x4d0 is called (`jalr` at 0xd83d34c) when that pointer is nonzero.
  The cursor at arg0+0x6c is stored to arg0+0x64 (`sw` at 0xd83d378). Into the record go halfword 8 at +0x2 (`sh` at 0xd83d380), byte 0x10 at +0x0 (`sb` at 0xd83d388), 0x1000f at +0x4 (`sw` at 0xd83d3ac), byte 0x11 at +0x1 (`sb` at 0xd83d3b4), entry `a1` at +0x10 (`sw` at 0xd83d3cc) and the word at arg0+0x84 at +0xc (`sw` at 0xd83d3d8, delay slot of the `_XReply` call). The `sb` at 0xd83d3b8 finally replaces byte +0x0 with the low byte of the saved setup result. arg0+0x6c moves up by 0x20 and arg0+0x60 by 1 (`sw` at 0xd83d3a4 and 0xd83d398).
  The `_XReply` call takes arg0, a1 = address of the frame bottom, and zero in `a2` and `a3`. A zero result (`beq` at 0xd83d3dc) goes to 0xd83d530: it zeroes the word at entry `a2`, calls slot +0x4 of the arg0+0x4d0 table and the pointer at arg0+0x7c when each is nonzero, and returns 0.
  With a nonzero result, the frame words at offsets 0x10 and 0xc are loaded (0xd83d3e0, 0xd83d3e4; the offset 0xc word is saved at 0xd83d3e8) and the offset 0x10 word, call it n, is stored through entry `a2` by the `sw` at 0xd83d3f0, the delay slot of the positive-count branch. If n is not positive, zero is stored through `a2` afterwards (0xd83d3f4), the two guarded calls run, and the routine returns 0.
  If n is positive, `malloc` is called (`jalr` at 0xd83d458) with a size computed from n by the shift and subtract steps at 0xd83d448 to 0xd83d45c (n shifted left 2, minus n, shifted left 3, minus n, then shifted left 2 in the delay slot). With a null block, `_XEatData` is called with arg0 and the saved offset 0xc word (`jalr` at 0xd83d470), zero is stored through `a2` (0xd83d478), the guarded calls run and the routine returns 0. With a block, `_XRead` is called with arg0, the block and the saved offset 0xc word (`jalr` at 0xd83d4d4), the guarded calls run, and the routine returns the block (reloaded from sp+0x28 at 0xd83d4fc and 0xd83d508; return at 0xd83d518).
  Inferred: the frame words at offsets 0xc and 0x10 are reply data written by `_XReply`, because it receives the frame bottom and no other store touches them.
  Unknown: the code at the table slots and the arg0+0x7c pointer, and what reply fields land at offsets 0xc and 0x10 (the content of those fields needs the code behind `_XReply`).
  Evidence grade: inferred.

- `glXQueryHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83d300 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83d300-0xd83d568 (616 bytes).
  It occupies 616 bytes.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd83d338, `sw` at 0xd83d3f0, `sw` at 0xd83d3f4.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83d33c, `lw` at 0xd83d3f8, `lw` at 0xd83d47c.
  The `lw` at 0xd83d348 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83d354, `lw` at 0xd83d390, `lw` at 0xd83d52c.
  The `lw` at 0xd83d358 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83d378 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83d380 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83d388, `sb` at 0xd83d3b8.
  The `lw` at 0xd83d38c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d398 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d3a4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83d3ac stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83d3b4 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83d3c0 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83d3cc stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83d3d8 stores 4 bytes to [a0+108] +0xc.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83d404, `lw` at 0xd83d488, `lw` at 0xd83d4e8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83d410, `lw` at 0xd83d494, `lw` at 0xd83d4f4.
  The `jalr` at 0xd83d330 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83d34c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d3d4 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+132], a5=a1 at entry (arg1), a6=0x1000f, a7=0x11.
  The `jalr` at 0xd83d408 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d41c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d458 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d470 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d48c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d4a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d4d4 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd83d4ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d500 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d520 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d544 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d558 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83d340 targets 0xd83d354, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd83d364 targets 0xd83d520, is taken when v1(=[a0+112]) < a0(=[a0+108]+32) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+32) (unsigned).
  The `beq` branch at 0xd83d3dc targets 0xd83d530, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bgtz` branch at 0xd83d3ec targets 0xd83d440, is taken when t9(?) > 0 (signed), and falls through when t9(?) <= 0 (signed).
  The `beq` branch at 0xd83d3fc targets 0xd83d410, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d414 targets 0xd83d428, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `bne` branch at 0xd83d460 targets 0xd83d4c4, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd83d480 targets 0xd83d494, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d498 targets 0xd83d4ac, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d4e0 targets 0xd83d4f4, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d4f8 targets 0xd83d50c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d528 targets 0xd83d36c and is always taken.
  The `beq` branch at 0xd83d538 targets 0xd83d54c, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d550 targets 0xd83d560, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d560 targets 0xd83d50c and is always taken.
  The return at 0xd83d438 has v0 = 0x0.
  The return at 0xd83d4bc has v0 = 0x0.
  The return at 0xd83d518 has v0 = one of ?, 0x0.

- `__glx_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83fc6c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83fc6c-0xd83fcd8 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd83fc6c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83fc70 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83fc74 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sw` at 0xd83fc78 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd83fc80 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd83fc88 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `lw` at 0xd83fc8c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83fcb0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd83fcc8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=0x81d, a3=[[0x1014]+276], a4=0x8.
  The `bne` branch at 0xd83fcac targets 0xd83fcc0, is taken when at(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when at(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned).
  The `beq` branch at 0xd83fcd0 targets 0xd83fcb4 and is always taken.
  The return at 0xd83fcb8 has v0 = one of 0xe4ec, ret(__glXFlushRenderBuffer).

- `__glx_AreTexturesResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83ffec (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83ffec-0xd8401cc (480 bytes).
  It occupies 480 bytes.
  The `lw` at 0xd83fff4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd840000 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd840014 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd840058 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd84005c, `lw` at 0xd84015c.
  The `lw` at 0xd840068 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd84007c, `lw` at 0xd8400c0, `lw` at 0xd8401c8.
  The `lw` at 0xd84008c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd8400a8 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8400ac, `sb` at 0xd8400ec.
  The `sh` at 0xd8400b8 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  The `lw` at 0xd8400bc loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8400c8 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8400d8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8400dc, `lw` at 0xd8400f0.
  The `sb` at 0xd8400e4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `sw` at 0xd8400f8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd840104 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd840168 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd840174 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd840054 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[0x1014]+276].
  The `jalr` at 0xd84006c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a4=[[[[0x1014]+276]+216]+1232], a5=a0 at entry (arg0).
  The `jalr` at 0xd840100 calls memcpy with a0=[[[[0x1014]+276]+216]+108]+12, a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1014]+276]+216]+108], a7=a0 at entry (arg0).
  The `jalr` at 0xd840118 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-112, a2=0x0, a3=0x0.
  The `jalr` at 0xd840134 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0xd840154 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd84016c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a4=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd840180 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8401b4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1014]+276]+216]+108], a5=(a0 << 0x2), a7=-0x4.
  The `bltz` branch at 0xd840010 targets 0xd840190, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0xd840024 targets 0xd840048, is taken when s0(=[[[0x1014]+276]+216]) != 0, and falls through when s0(=[[[0x1014]+276]+216]) == 0.
  The `beq` branch at 0xd840060 targets 0xd840078, is taken when a4(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a4(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd84009c targets 0xd8401a8, is taken when a2(=[[[[0x1014]+276]+216]+112]) < a3(?) (unsigned), and falls through when a2(=[[[[0x1014]+276]+216]+112]) >= a3(?) (unsigned).
  The `beq` branch at 0xd840144 targets 0xd84015c, is taken when (a4(=a0) & 0x3) == 0, and falls through when (a4(=a0) & 0x3) != 0.
  The `beq` branch at 0xd840160 targets 0xd840174, is taken when a4(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a4(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd840178 targets 0xd840030, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd840188 targets 0xd840030 and is always taken.
  The `beq` branch at 0xd8401c4 targets 0xd8400a0 and is always taken.
  The return at 0xd840040 has v0 = one of 0x0, ?.
  The return at 0xd8401a0 has v0 = 0x0.

- `__glx_DeleteTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8401cc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8401cc-0xd840328 (348 bytes).
  It occupies 348 bytes.
  The `lw` at 0xd8401d4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8401e0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8401f4 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd840218 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd84021c, `lw` at 0xd8402c4.
  The `lw` at 0xd840228 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd84023c, `lw` at 0xd840280, `lw` at 0xd840324.
  The `lw` at 0xd84024c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd840268 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd84026c, `sb` at 0xd8402ac.
  The `sh` at 0xd840278 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  The `lw` at 0xd84027c loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd84028c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd840298 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd84029c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd8402a4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8402b0 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8402b4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8402c0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd8402d0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd8402dc loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd840214 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `jalr` at 0xd84022c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[[[0x1014]+276]+216]+1232], a3=?.
  The `jalr` at 0xd8402bc calls memcpy with a0=[[[[0x1014]+276]+216]+108]+12, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=[[[0x1014]+276]+60], a4=[[[[0x1014]+276]+216]+108], a5=a0 at entry (arg0), a6=[[[0x1014]+276]+272], a7=[[[[0x1014]+276]+216]+96]+1.
  The `jalr` at 0xd8402d4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[[[0x1014]+276]+216]+1232], a3=?.
  The `jalr` at 0xd8402e8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd840310 calls _XFlush with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?, a4=[[[[0x1014]+276]+216]+108].
  The `bltz` branch at 0xd8401f0 targets 0xd8402f0, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0xd840200 targets 0xd8402f0, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd840220 targets 0xd840234, is taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd84025c targets 0xd840304, is taken when a3(=[[[[0x1014]+276]+216]+112]) < a6(?) (unsigned), and falls through when a3(=[[[[0x1014]+276]+216]+112]) >= a6(?) (unsigned).
  The `beq` branch at 0xd8402c8 targets 0xd8402dc, is taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd8402e0 targets 0xd8402f4, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd840320 targets 0xd840260 and is always taken.
  The return at 0xd8402fc has v0 = ?.

- `__glx_GenTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd840328 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd840328-0xd84046c (324 bytes).
  It occupies 324 bytes.
  The `lw` at 0xd840330 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd840338 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd840340 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd840370 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd840374, `lw` at 0xd840410.
  The `lw` at 0xd840380 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd84038c, `lw` at 0xd8403b8, `lw` at 0xd840468.
  The `lw` at 0xd840390 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd8403a4 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd8403ac stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8403b0, `sb` at 0xd8403d8.
  The `lw` at 0xd8403b4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8403c0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8403c8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd8403cc loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd8403d4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8403e0 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8403ec stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8403f8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd84041c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd840428 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd84036c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd840384 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8403f4 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-80, a2=0x0, a3=0x0, a5=[[[[0x1014]+276]+216]+108].
  The `jalr` at 0xd840408 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0xd840420 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd840434 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd84045c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a5=[[[[0x1014]+276]+216]+108].
  The `beq` branch at 0xd84035c targets 0xd84043c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd840378 targets 0xd84038c, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd84039c targets 0xd840458, is taken when t8(=[[[[0x1014]+276]+216]+112]) < t9(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) >= t9(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  The `beq` branch at 0xd840414 targets 0xd840428, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd84042c targets 0xd84043c, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd840464 targets 0xd8403a0 and is always taken.
  The return at 0xd840450 has v0 = one of ?, ret(?).

- `__glx_IsTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd84046c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd84046c-0xd8405bc (336 bytes).
  It occupies 336 bytes.
  The `lw` at 0xd840474 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd840478 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd840480 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8404b4 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8404b8, `lw` at 0xd840548.
  The `lw` at 0xd8404c4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8404d0, `lw` at 0xd840500, `lw` at 0xd8405b8.
  The `lw` at 0xd8404d4 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd8404ec stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd8404f4 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8404f8, `sb` at 0xd840524.
  The `lw` at 0xd8404fc loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd840508 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd840510 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd840514, `lw` at 0xd84052c.
  The `sb` at 0xd84051c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `sw` at 0xd840538 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd840544 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd840558 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd840564 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd8404b0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8404c8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd840540 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-80, a2=0x0, a3=0x0, a5=a0 at entry (arg0), a7=[[[[0x1014]+276]+216]+96]+1.
  The `jalr` at 0xd84055c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd840574 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8405ac calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+108]+12.
  The `beq` branch at 0xd840498 targets 0xd840588, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8404bc targets 0xd8404d0, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd8404e0 targets 0xd8405a8, is taken when a2(=[[[[0x1014]+276]+216]+112]) < a3(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when a2(=[[[[0x1014]+276]+216]+112]) >= a3(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  The `beq` branch at 0xd840550 targets 0xd840564, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd84056c targets 0xd840598, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd840580 targets 0xd840598 and is always taken.
  The `beq` branch at 0xd8405b4 targets 0xd8404e4 and is always taken.
  The return at 0xd840590 has v0 = 0x0.
  The return at 0xd8405a0 has v0 = ?.

- `_init` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8427a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8427a0-0xd8427d8 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd8427c0 calls __glXInit [0xd80dfd8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd8427d0 has v0 = ret(__glXInit).
