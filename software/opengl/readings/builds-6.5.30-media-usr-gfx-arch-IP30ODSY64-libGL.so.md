# Readings: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`

One entry per routine, filed here from the reading batches by binary.

- `__glXOpenGraphicsDevice` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x214300c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x214300c-0x2143198 (396 bytes).
  It occupies 396 bytes.
  7 such `ld` accesses load 8 bytes from abs 0x1028, including `ld` at 0x2143034, `ld` at 0x2143078, `ld` at 0x21430b4.
  The `lw` at 0x2143040 loads 4 bytes from ([0x1028]:8 + (a0 << 0x2)) +0x4.
  2 such `lw` accesses load 4 bytes from [0x1028]:8 +0x104, including `lw` at 0x21430b8, `lw` at 0x2143174.
  The `sw` at 0x2143100 stores 4 bytes to ([0x1028]:8 + (a0 << 0x2)) +0x4.
  The `sw` at 0x2143168 stores 4 bytes to [0x1028]:8 +0x104.
  The `jalr` at 0x214306c calls __glXFatal with a0=0x0, a1=0x21773c0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2143088 calls open with a0=0x21773e0, a1=0x802, a2=?, a3=?.
  The `jalr` at 0x21430a4 calls fcntl with a0=ret(open), a1=0x2, a2=0x5, a3=?.
  The `jalr` at 0x21430d4 calls __glXFatal with a0=0x0, a1=0x21773c0, a2=?, a3=[0x1028]:8, a4=[[0x1028]:8+260].
  The `jalr` at 0x2143110 calls __glXFatal with a0=0x0, a1=0x21773f0, a2=?, a3=?.
  The `jalr` at 0x2143128 calls __glXFatal with a0=0x0, a1=0x2177410, a2=?, a3=?.
  The `jalr` at 0x2143144 calls ioctl with a0=ret(open), a1=0x65, a2=0x0, a3=[0x1028]:8, a4=[[0x1028]:8+260].
  The `jalr` at 0x2143188 calls __glXFatal with a0=0x0, a1=0x2177420, a2=?, a3=?, a5=ret(ioctl).
  The `beq` branch at 0x214302c targets 0x2143060, is taken when a0 >= 0x41 (signed), and falls through when a0 < 0x41 (signed).
  The `bltz` branch at 0x2143048 targets 0x214307c, is taken when v1(=[([0x1028]:8 + (a0 << 0x2))+4]) < 0 (signed), and falls through when v1(=[([0x1028]:8 + (a0 << 0x2))+4]) >= 0 (signed).
  The `beq` branch at 0x2143074 targets 0x2143038 and is always taken.
  The `bltz` branch at 0x2143090 targets 0x2143104, is taken when v0(=ret(open)) < 0 (signed), and falls through when v0(=ret(open)) >= 0 (signed).
  The `bltz` branch at 0x21430ac targets 0x2143120, is taken when v0(=ret(fcntl)) < 0 (signed), and falls through when v0(=ret(fcntl)) >= 0 (signed).
  The `bltz` branch at 0x21430bc targets 0x2143138, is taken when a4(=[[0x1028]:8+260]) < 0 (signed), and falls through when a4(=[[0x1028]:8+260]) >= 0 (signed).
  The `beq` branch at 0x21430c4 targets 0x21430e0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x2143118 targets 0x214309c and is always taken.
  The `beq` branch at 0x2143130 targets 0x21430b8 and is always taken.
  The `blez` branch at 0x214314c targets 0x2143178, is taken when v0(=ret(ioctl)) <= 0 (signed), and falls through when v0(=ret(ioctl)) > 0 (signed).
  The `beq` branch at 0x2143170 targets 0x21430c0 and is always taken.
  The `beq` branch at 0x2143190 targets 0x2143154 and is always taken.
  The return at 0x2143058 has v0 = ?.
  The return at 0x21430fc has v0 = one of ?, ret(__glXFatal).

- `__glXBindHWContextToWindow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2143464 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2143464-0x214371c (696 bytes).
  It occupies 696 bytes.
  The `ld` at 0x2143490 loads 8 bytes from a0 (arg0 at entry) +0x98.
  2 such `ld` accesses load 8 bytes from abs 0x1028, including `ld` at 0x2143494, `ld` at 0x2143684.
  3 such `lw` accesses load 4 bytes from [a0+152]:8 +0x128, including `lw` at 0x2143498, `lw` at 0x2143688, `lw` at 0x2143698.
  The `lw` at 0x214349c loads 4 bytes from [0x1028]:8 +0x0.
  6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x148, including `ld` at 0x21434a8, `ld` at 0x214358c, `ld` at 0x2143600.
  The `ld` at 0x21434ac loads 8 bytes from [a0+152]:8 +0x168.
  6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x140, including `ld` at 0x21434b0, `ld` at 0x2143590, `ld` at 0x2143604.
  4 such `sb` accesses store 1 byte to [a0+152]:8 +0x170, including `sb` at 0x21434b8, `sb` at 0x2143574, `sb` at 0x21435f0.
  The `ld` at 0x21434bc loads 8 bytes from [a0+152]:8 +0x160.
  5 such `ld` accesses load 8 bytes from [a0+152]:8 +0x158, including `ld` at 0x21434d4, `ld` at 0x2143508, `ld` at 0x2143520.
  The `lw` at 0x21434d8 loads 4 bytes from [[a0+152]:8+344]:8 +0x40.
  2 such `lw` accesses load 4 bytes from [a0+152]:8 +0x1b0, including `lw` at 0x21434ec, `lw` at 0x2143638.
  2 such `lw` accesses load 4 bytes from [a0+152]:8 +0x1b4, including `lw` at 0x21434f0, `lw` at 0x214363c.
  6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x150, including `ld` at 0x21434fc, `ld` at 0x2143514, `ld` at 0x2143554.
  2 such `ld` accesses load 8 bytes from [[a0+152]:8+336]:8 +0x30, including `ld` at 0x2143500, `ld` at 0x21435ac.
  The `ld` at 0x214350c loads 8 bytes from [[a0+152]:8+344]:8 +0x30.
  4 such `lw` accesses load 4 bytes from [[a0+152]:8+336]:8 +0x8, including `lw` at 0x2143518, `lw` at 0x2143558, `lw` at 0x21435b8.
  2 such `lw` accesses load 4 bytes from [[a0+152]:8+344]:8 +0x8, including `lw` at 0x2143524, `lw` at 0x2143568.
  3 such `lw` accesses load 4 bytes from [a0+152]:8 +0x40, including `lw` at 0x2143538, `lw` at 0x21435cc, `lw` at 0x2143670.
  2 such `sw` accesses store 4 bytes to [[a0+152]:8+336]:8 +0x8, including `sw` at 0x214357c, `sw` at 0x21435f8.
  The `sw` at 0x2143588 stores 4 bytes to [[a0+152]:8+344]:8 +0x8.
  2 such `sd` accesses store 8 bytes to [a0+152]:8 +0x160, including `sd` at 0x2143594, `sd` at 0x214360c.
  2 such `sd` accesses store 8 bytes to [a0+152]:8 +0x168, including `sd` at 0x2143598, `sd` at 0x2143610.
  The `sw` at 0x214368c stores 4 bytes to [0x1028]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x21436c4, `ld` at 0x21436e4, `ld` at 0x2143704.
  The `jalr` at 0x214348c calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2143534 calls (unnamed) [0x2142fec] with a0=[[a0+152]:8+64], a1=0x400, a2=sp-56, a3=[[a0+152]:8+328]:8, a4=[[a0+152]:8+296].
  The `bgezall` at 0x21435c8 calls (unnamed) [0x2142fec] with a0=[[a0+152]:8+64], a1=0x3eb, a2=sp-72, a3=[[a0+152]:8+328]:8, a4=[[a0+152]:8+296].
  The `bgezall` at 0x2143674 calls (unnamed) [0x2142fec] with a0=[[a0+152]:8+64], a1=0x3ea, a2=sp-80, a3=?, a4=[[a0+152]:8+296].
  The `jalr` at 0x21436cc calls (unknown callee) with a0=a0 at entry (arg0), a1=0x2177478, a2=?, a3=?.
  The `jalr` at 0x21436ec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x21774b0, a2=0x1, a3=?.
  The `jalr` at 0x214370c calls (unknown callee) with a0=a0 at entry (arg0), a1=0x2177490, a2=-0x1, a3=?.
  The `bne` branch at 0x21434a0 targets 0x2143660, is taken when v1(=[[0x1028]:8]) != a4(=[[a0+152]:8+296]), and falls through when v1(=[[0x1028]:8]) == a4(=[[a0+152]:8+296]).
  The `bne` branch at 0x21434b4 targets 0x21434c8, is taken when a0(=[[a0+152]:8+360]:8) != a3(=[[a0+152]:8+328]:8), and falls through when a0(=[[a0+152]:8+360]:8) == a3(=[[a0+152]:8+328]:8).
  The `beq` branch at 0x21434c0 targets 0x2143624, is taken when a1(=[[a0+152]:8+352]:8) == a2(=[[a0+152]:8+320]:8), and falls through when a1(=[[a0+152]:8+352]:8) != a2(=[[a0+152]:8+320]:8).
  The `beq` branch at 0x21434cc targets 0x2143634, is taken when a3(=[[a0+152]:8+328]:8) == a2(=[[a0+152]:8+320]:8), and falls through when a3(=[[a0+152]:8+328]:8) != a2(=[[a0+152]:8+320]:8).
  The `beq` branch at 0x21434e0 targets 0x2143634, is taken when ra(=[[[a0+152]:8+344]:8+64]) == at(=0x3), and falls through when ra(=[[[a0+152]:8+344]:8+64]) != at(=0x3).
  The `beq` branch at 0x21434f4 targets 0x21436a4, is taken when at(=[[a0+152]:8+432]) == a2(=0x1), and falls through when at(=[[a0+152]:8+432]) != a2(=0x1).
  The `beq` branch at 0x214354c targets 0x21436fc, is taken when v0(=ret(0x2142fec)) == a2(=-0x1), and falls through when v0(=ret(0x2142fec)) != a2(=-0x1).
  The `bne` branch at 0x2143560 targets 0x2143574, is taken when a3(=[[[a0+152]:8+336]:8+8]) != a4(?), and falls through when a3(=[[[a0+152]:8+336]:8+8]) == a4(?).
  The `beq` branch at 0x214356c targets 0x214358c, is taken when a5(=[[[a0+152]:8+344]:8+8]) == a6(?), and falls through when a5(=[[[a0+152]:8+344]:8+8]) != a6(?).
  The `beq` branch at 0x21435d4 targets 0x21436dc, is taken when v0(=ret(0x2142fec)) == at(=-0x1), and falls through when v0(=ret(0x2142fec)) != at(=-0x1).
  The `beq` branch at 0x21435e8 targets 0x2143600, is taken when v0(=[[[a0+152]:8+336]:8+8]) == v1(?), and falls through when v0(=[[[a0+152]:8+336]:8+8]) != v1(?).
  The `beq` branch at 0x2143644 targets 0x21435a8, is taken when a5(=[[a0+152]:8+432]) >= 0x2 (signed), and falls through when a5(=[[a0+152]:8+432]) < 0x2 (signed).
  The `beq` branch at 0x214364c targets 0x21435a8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x2143658 targets 0x21435b4 and is always taken.
  The `bltz` branch at 0x214367c targets 0x21436c0, is taken when v0(=ret(0x2142fec)) < 0 (signed), and falls through when v0(=ret(0x2142fec)) >= 0 (signed).
  The `beq` branch at 0x214369c targets 0x21434c8 and is always taken.
  The `beq` branch at 0x21436a4 targets 0x21434fc, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x21436b8 targets 0x2143514 and is always taken.
  The `beq` branch at 0x21436d4 targets 0x2143694 and is always taken.
  The `beq` branch at 0x21436f4 targets 0x2143624 and is always taken.
  The `beq` branch at 0x2143714 targets 0x2143624 and is always taken.
  The return at 0x21435a0 has v0 = ret(0x2142fec).
  The return at 0x2143618 has v0 = [[[a0+152]:8+336]:8+8].
  The return at 0x214362c has v0 = one of ret(__glXHWAttach), ret(?).
  The instructions from 0x2143620 to 0x2143620 are not reached by any path from the entry, and their branches are not listed.

- `__glx_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x214e764 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x214e764-0x214e7f4 (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0x214e774 loads 8 bytes from abs 0x1028.
  The `ld` at 0x214e784 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x214e78c loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  The `sh` at 0x214e7a4 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x2.
  The `sh` at 0x214e7b0 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x0.
  The `ld` at 0x214e7b4 loads 8 bytes from [[0x1028]:8+280]:8 +0x10.
  The `sd` at 0x214e7c4 stores 8 bytes to [[0x1028]:8+280]:8 +0x8.
  The `jalr` at 0x214e7ac calls memcpy with a0=[[[0x1028]:8+280]:8+8]:8+4, a1=a0 at entry (arg0), a2=0x80, a3=a3 at entry (arg3).
  The `jalr` at 0x214e7e4 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8+132, a2=?, a3=?.
  The `bne` branch at 0x214e7c0 targets 0x214e7e0, is taken when t9(=[[[0x1028]:8+280]:8+16]:8) < a1(=[[[0x1028]:8+280]:8+8]:8+132) (unsigned), and falls through when t9(=[[[0x1028]:8+280]:8+16]:8) >= a1(=[[[0x1028]:8+280]:8+8]:8+132) (unsigned).
  The `beq` branch at 0x214e7ec targets 0x214e7cc and is always taken.
  The return at 0x214e7d8 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x214e7f4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x214e7f4-0x214e884 (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0x214e804 loads 8 bytes from abs 0x1028.
  The `ld` at 0x214e814 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x214e81c loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  The `sh` at 0x214e834 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x2.
  The `sh` at 0x214e840 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x0.
  The `ld` at 0x214e844 loads 8 bytes from [[0x1028]:8+280]:8 +0x10.
  The `sd` at 0x214e854 stores 8 bytes to [[0x1028]:8+280]:8 +0x8.
  The `jalr` at 0x214e83c calls memcpy with a0=[[[0x1028]:8+280]:8+8]:8+4, a1=a0 at entry (arg0), a2=0x40, a3=a3 at entry (arg3).
  The `jalr` at 0x214e874 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8+68, a2=?, a3=?.
  The `bne` branch at 0x214e850 targets 0x214e870, is taken when t9(=[[[0x1028]:8+280]:8+16]:8) < a1(=[[[0x1028]:8+280]:8+8]:8+68) (unsigned), and falls through when t9(=[[[0x1028]:8+280]:8+16]:8) >= a1(=[[[0x1028]:8+280]:8+8]:8+68) (unsigned).
  The `beq` branch at 0x214e87c targets 0x214e85c and is always taken.
  The return at 0x214e868 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `GetFBConfigsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x214fe38.
  Grade: inferred.
  Role (from name): the 64-bit build of the framebuffer-config request. When the context value at +2408 is nonzero it calls an unnamed callee at 0x214fe70 with it in a5. It waits for the reply with _XReply at 0x214fef0 (the request is written to the buffer before), flushes with _XFlush at 0x215004c when the output buffer lacks room, and reads reply data with _XRead at 0x21501f8. It allocates result storage with malloc at 0x214ff64 and 0x214ffdc. It also compares attribute values against 0x80xx tokens as the 32-bit build does, but that is not checked line by line here.
  Reviewed: 2026-11-12

- `__glXSendMakeCurrentRead` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2152a58 (n64).
  Queues one of two request records in the output buffer of the connection context in `a0`, whose
  write pointer is at +0xb0 and limit at +0xb8, then waits for a reply and returns 1, or posts an
  error and returns 0. It first calls `__glXSetupForCommand` with the incoming register arguments
  `a0` to `a6` (the `jalr` at 0x2152a88), keeps its result in a frame slot (the `sd` at 0x2152a98),
  and calls slot +0 of the pointer at +0x968 when that pointer is non-zero (the `jalr` at 0x2152aa0).
  The stack word at entry sp+4 (the `lw` at 0x2152aa8) selects the record: non-zero (the `beq` at
  0x2152ab8 falls through) gives the 0x18-byte one, zero gives the 0x14-byte one.
  The 0x18-byte record: if the limit at +0xb8 is below the write pointer plus 0x18 (the `bne` at
  0x2152ac8), it calls `_XFlush` (the `jalr` at 0x2152c1c) and reloads the pointer without a second
  check. It stores the pointer in +0xa0, the halfword 6 at +2 (the `sh` at 0x2152ae4), the byte 0x11 at
  +1 (the `sb` at 0x2152b28), 0x10001 at +4 (the `sw` at 0x2152b20), the saved `a2`, `a4` and `a5` at
  +8, +0xc and +0x10 (the `sw` at 0x2152b10, 0x2152b0c and 0x2152b08), and finally the low byte of the
  `__glXSetupForCommand` result at +0 (the `sb` at 0x2152b34, after the 0x10 written at 0x2152aec
  has been overwritten). It adds 1 to the doubleword at +0x98 and 0x18 to the write pointer (the `sd`
  at 0x2152afc and 0x2152b04). Then the word at +0x14 gets the word at +0x28 of `a1`, or zero when
  `a1` is null (the `sw` at 0x2152b5c, delay slot of the `_XReply` call at 0x2152b58, which passes `a3`
  as its second argument and the incremented counter as `a7`).
  The 0x14-byte record follows the same steps with the limit test against pointer plus 0x14 (the
  `bne` at 0x2152c30, `_XFlush` at 0x2152d28): halfword 5 at +2, byte 0x1a at +1, the saved `a2`, `a4`
  and `a5` at +4, +8 and +0xc, the `__glXSetupForCommand` low byte at +0, the word at +0x28 of `a1`
  or zero at +0x10 (the `sw` at 0x2152cb4, delay slot of the `_XReply` call at 0x2152cb0), and 0x14
  added to the write pointer.
  After a non-zero `_XReply` result both records share the tail at 0x2152b6c: when the word at `a3`+4
  is non-zero it calls `malloc` for 0x10 bytes, fills the block with `_XRead` (the `jalr` at
  0x2152b90), copies its first two words to +0x24 and +0x28 of `a7` and its last two to +0x24 and
  +0x28 of `a6` (the `sw` at 0x2152ba4 to 0x2152bc4), and calls `free` (the `jalr` at 0x2152bc0). The
  normal exit calls slot +8 of the +0x968 pointer and the routine at +0xd0 when those are non-zero (the
  `jalr` at 0x2152bd8 and 0x2152bec), and returns 1 (the `jr` at 0x2152c04). A zero `_XReply` result
  from the first record posts code 0x11 through `__glXPostHiddenError` (the `jalr` at 0x2152d08), from
  the second record code 0x1a (the `jalr` at 0x2152d78); both return 0 (the `jr` at 0x2152c10).
  Inferred: the halfword at +2 (6 and 5) is the record size in 4-byte units, because 0x18 and 0x14
  bytes divided by 4 give those values.
  Unknown: the device-side result of the records, the routines behind the pointers at +0x968 and
  +0xd0, and the value `_XReply` returns beyond its zero test; a committed note for each of those
  routines and for `_XReply` would settle them.
  Evidence grade: inferred.

- `__glXMakeContextCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x21531c4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x21531c4-0x2154198 (4052 bytes).
  It occupies 4052 bytes.
  8 such `ld` accesses load 8 bytes from abs 0x1028, including `ld` at 0x2153248, `ld` at 0x215361c, `ld` at 0x215369c.
  The `ld` at 0x215324c loads 8 bytes from [0x1028]:8 +0x118.
  6 such `lw` accesses load 4 bytes from [[0x1028]:8+280]:8 +0x118, including `lw` at 0x2153250, `lw` at 0x215330c, `lw` at 0x2153338.
  The `ld` at 0x2153260 loads 8 bytes from [[0x1028]:8+280]:8 +0x120.
  2 such `ld` accesses load 8 bytes from [[0x1028]:8+280]:8 +0x148, including `ld` at 0x2153264, `ld` at 0x2153618.
  2 such `ld` accesses load 8 bytes from [[0x1028]:8+280]:8 +0x140, including `ld` at 0x2153270, `ld` at 0x2153620.
  The `ld` at 0x215327c loads 8 bytes from [[[0x1028]:8+280]:8+288]:8 +0xb8.
  2 such `ld` accesses load 8 bytes from [[0x1028]:8+280]:8 +0x150, including `ld` at 0x2153298, `ld` at 0x21537d8.
  The `ld` at 0x215329c loads 8 bytes from [[0x1028]:8+280]:8 +0x158.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x118, including `lw` at 0x21532ac, `lw` at 0x21534b0, `lw` at 0x2153630.
  7 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x3c, including `lw` at 0x21532d8, `lw` at 0x21534f0, `lw` at 0x2153548.
  2 such `lw` accesses load 4 bytes from ret(__glXAddDrawableInterest) +0xc, including `lw` at 0x21532dc, `lw` at 0x21537fc.
  3 such `ld` accesses load 8 bytes from a3 (arg3 at entry) +0x58, including `ld` at 0x21532e8, `ld` at 0x2153534, `ld` at 0x2153594.
  The `ld` at 0x21532ec loads 8 bytes from ret(__glXAddDrawableInterest) +0x10.
  The `lw` at 0x21532f8 loads 4 bytes from ret(__glXAddDrawableInterest) +0x40.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x215335c, `lbu` at 0x2153368, `lbu` at 0x2153bec.
  2 such `lbu` accesses load 1 byte from a3 (arg3 at entry) +0x39, including `lbu` at 0x215337c, `lbu` at 0x21534fc.
  3 such `lw` accesses load 4 bytes from [[0x1028]:8+280]:8 +0x68, including `lw` at 0x21533a4, `lw` at 0x2153754, `lw` at 0x2153854.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x958, including `ld` at 0x21533e0, `ld` at 0x215341c, `ld` at 0x2153c28.
  4 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x958, including `sd` at 0x21533ec, `sd` at 0x215342c, `sd` at 0x2153c44.
  2 such `sw` accesses store 4 bytes to [[0x1028]:8+280]:8 +0x68, including `sw` at 0x21534d4, `sw` at 0x215386c.
  38 such `ld` accesses load 8 bytes from ?, including `ld` at 0x21534e0, `ld` at 0x215357c, `ld` at 0x2153590.
  36 such `sd` accesses store 8 bytes to ?, including `sd` at 0x21534ec, `sd` at 0x2153514, `sd` at 0x2153530.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x21534f8, `sw` at 0x215350c, `sw` at 0x2153b30.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x5c, including `lw` at 0x2153518, `lw` at 0x2153b44.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x1b0, including `lw` at 0x2153550, `lw` at 0x2153b70.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x1b4, including `lw` at 0x2153554, `lw` at 0x2153b74.
  11 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2153560, `lw` at 0x21535ac, `lw` at 0x21535c8.
  2 such `ld` accesses load 8 bytes from a3 (arg3 at entry) +0x120, including `ld` at 0x21535b8, `ld` at 0x2153644.
  The `ld` at 0x21535bc loads 8 bytes from [a3+288]:8 +0xd0.
  3 such `ld` accesses load 8 bytes from [[0x1028]:8+280]:8 +0x138, including `ld` at 0x2153614, `ld` at 0x21536a0, `ld` at 0x2153838.
  2 such `sd` accesses store 8 bytes to [0x1028]:8 +0x118, including `sd` at 0x2153624, `sd` at 0x2153894.
  The `sd` at 0x2153628 stores 8 bytes to a3 (arg3 at entry) +0x158.
  The `sd` at 0x215362c stores 8 bytes to a3 (arg3 at entry) +0x140.
  The `sd` at 0x2153634 stores 8 bytes to a3 (arg3 at entry) +0x150.
  The `sd` at 0x2153638 stores 8 bytes to a3 (arg3 at entry) +0x148.
  The `sd` at 0x2153640 stores 8 bytes to a3 (arg3 at entry) +0x138.
  The `ld` at 0x2153648 loads 8 bytes from [a3+288]:8 +0xc8.
  2 such `lbu` accesses load 1 byte from a3 (arg3 at entry) +0x170, including `lbu` at 0x2153670, `lbu` at 0x21539cc.
  The `sd` at 0x21536a4 stores 8 bytes to [0x1028]:8 +0x120.
  The `lw` at 0x21536ac loads 4 bytes from [[0x1028]:8+280]:8 +0x1a4.
  The `sw` at 0x21536b0 stores 4 bytes to [0x1028]:8 +0x128.
  2 such `lw` accesses load 4 bytes from [[0x1028]:8+280]:8 +0x1ac, including `lw` at 0x21536b8, `lw` at 0x2153e5c.
  The `sw` at 0x21536bc stores 4 bytes to [0x1028]:8 +0x12c.
  2 such `ld` accesses load 8 bytes from [[0x1028]:8+280]:8 +0x28, including `ld` at 0x21536c0, `ld` at 0x2153e6c.
  The `sw` at 0x21536cc stores 4 bytes to [[0x1028]:8+280]:8 +0x12c.
  The `sw` at 0x21536d0 stores 4 bytes to [[0x1028]:8+280]:8 +0x130.
  4 such `sd` accesses store 8 bytes to [[0x1028]:8+280]:8 +0x150, including `sd` at 0x21536d4, `sd` at 0x21539d0, `sd` at 0x2153adc.
  4 such `sd` accesses store 8 bytes to [[0x1028]:8+280]:8 +0x158, including `sd` at 0x21536d8, `sd` at 0x21539e0, `sd` at 0x2153af8.
  4 such `sd` accesses store 8 bytes to [[0x1028]:8+280]:8 +0x148, including `sd` at 0x21536dc, `sd` at 0x21539e8, `sd` at 0x2153b10.
  4 such `sd` accesses store 8 bytes to [[0x1028]:8+280]:8 +0x140, including `sd` at 0x21536e0, `sd` at 0x21539f0, `sd` at 0x2153b00.
  4 such `sd` accesses store 8 bytes to [[0x1028]:8+280]:8 +0x138, including `sd` at 0x21536e4, `sd` at 0x21539fc, `sd` at 0x2153b14.
  7 such `ld` accesses load 8 bytes from a3 (arg3 at entry) +0x28, including `ld` at 0x2153784, `ld` at 0x2153a08, `ld` at 0x2153aa4.
  The `lw` at 0x2153790 loads 4 bytes from a3 (arg3 at entry) +0x12c.
  The `lw` at 0x2153798 loads 4 bytes from a3 (arg3 at entry) +0x130.
  The `lw` at 0x21537a0 loads 4 bytes from [0x1028]:8 +0x10c.
  2 such `lw` accesses load 4 bytes from [0x1028]:8 +0x110, including `lw` at 0x21537ac, `lw` at 0x21537c0.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x12c, including `sw` at 0x21537b8, `sw` at 0x2153e88.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x130, including `sw` at 0x21537c8, `sw` at 0x2153e8c.
  The `ld` at 0x2153808 loads 8 bytes from ret(__glXAddDrawableInterest) +0x18.
  2 such `ld` accesses load 8 bytes from abs 0x1088, including `ld` at 0x2153898, `ld` at 0x2153d48.
  The `ld` at 0x21539bc loads 8 bytes from [a3+288]:8 +0xc0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x98, including `ld` at 0x2153c04, `ld` at 0x2153f68.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0x2153c5c, `sb` at 0x2153c7c, `sb` at 0x2153c84.
  The `sw` at 0x2153c64 stores 4 bytes to a3 (arg3 at entry) +0x68.
  The `sb` at 0x2153d44 stores 1 byte to a3 (arg3 at entry) +0x1b8.
  The `jalr` at 0x2153200 calls __glXInitThread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x215320c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2153280 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+288]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x21532c8 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `bgezall` at 0x21533a8 calls (unnamed) [0x2152d94] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1028]:8+280]:8+104], a3=sp-192, a4=a1 at entry (arg1), a7=0x2152d94.
  The `bgezall` at 0x2153448 calls (unnamed) [0x2152f38] with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=?, a3=?, a7=0x2152f38.
  The `jalr` at 0x2153494 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-216, a2=0x3, a3=?, a4=[a0+2392]:8, a5=sp-216.
  The `jalr` at 0x215351c calls __glXOverrideVisualsBogusChoose with a0=?, a1=[a3+92], a2=?, a3=?.
  The `jalr` at 0x2153544 calls __glXGetModes with a0=a0 at entry (arg0), a1=[a3+60], a2=?, a3=?.
  The `jalr` at 0x21535d4 calls (unknown callee) with a0=[a3+288]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2153660 calls (unknown callee) with a0=[a3+288]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x21536f4 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x215376c calls (unnamed) [0x2152a58] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1028]:8+280]:8+104], a3=sp-192, a4=a1 at entry (arg1), a5=a2 at entry (arg2).
  The `jalr` at 0x215377c calls __glXInitThread with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x21537cc calls __glXUnbindHWContextFromThread with a0=[[[0x1028]:8+280]:8+288]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x21537e8 calls __glXAddDrawableInterest with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `bgezall` at 0x2153858 calls (unnamed) [0x2152d94] with a0=[[[0x1028]:8+280]:8+312]:8, a1=0x0, a2=[[[0x1028]:8+280]:8+104], a3=sp-192, a4=0x0, a5=0x2152d94.
  The `jalr` at 0x2153878 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x21539c0 calls (unknown callee) with a0=[a3+288]:8, a1=[[[0x1028]:8+280]:8+328]:8, a2=[[[0x1028]:8+280]:8+312]:8, a3=?.
  The `jalr` at 0x2153a04 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8.
  The `bgezall` at 0x2153a24 calls (unnamed) [0x2152f38] with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=?, a3=?.
  The `jalr` at 0x2153a44 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-272, a2=?, a3=?.
  The `jalr` at 0x2153aa8 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8.
  The `bgezall` at 0x2153ac8 calls (unnamed) [0x2152f38] with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=?, a3=?, a4=0x2152f38.
  The `bgezall` at 0x2153b18 calls (unnamed) [0x2152f38] with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=?, a3=?, a5=0x2152f38.
  The `jalr` at 0x2153b48 calls __glXOverrideVisualsBogusChoose with a0=?, a1=[a3+92], a2=[a3+60], a3=?.
  The `jalr` at 0x2153b64 calls __glXGetModes with a0=a0 at entry (arg0), a1=[a3+60], a2=?, a3=?.
  The `jalr` at 0x2153ba8 calls glXQueryDrawable with a0=a0 at entry (arg0), a1=?, a2=0x8025, a3=?, a6=0x6.
  The `jalr` at 0x2153bdc calls XSGIMiscQueryExtension with a0=a0 at entry (arg0), a1=sp-160, a2=sp-156, a3=?.
  The `jalr` at 0x2153c4c calls _XSGISetSpecialDestroyInterest with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2153cb0 calls __glXFreeContext with a0=[[0x1028]:8+280]:8, a1=0x1, a2=0x217d3b8, a3=[[[0x1028]:8+280]:8+40]:8, a4=[[[0x1028]:8+280]:8+428], a5=[0x1028]:8, a6=[[[0x1028]:8+280]:8+420], a7=[0x1028]:8.
  The `jalr` at 0x2153ccc calls __glXPostError with a0=a0 at entry (arg0), a1=0xa, a2=0x5, a3=[a3+40]:8.
  The `jalr` at 0x2153d28 calls glXQueryServerString with a0=a0 at entry (arg0), a1=[a3+60], a2=0x2, a3=?.
  The `jalr` at 0x2153d38 calls strstr with a0=ret(glXQueryServerString), a1=0x217d150, a2=?, a3=?.
  The `jalr` at 0x2153e4c calls glXQueryDrawable with a0=a0 at entry (arg0), a1=?, a2=0x8025, a3=?, a6=0x6.
  The `jalr` at 0x2153e70 calls __glXPostError with a0=a0 at entry (arg0), a1=?, a2=0x5, a3=[[[0x1028]:8+280]:8+40]:8.
  The `jalr` at 0x2153f34 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8.
  The `bgezall` at 0x2153f54 calls (unnamed) [0x2152f38] with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=?, a3=?, a6=0x2152f38.
  The `jalr` at 0x2153fb0 calls _XSGISetSpecialDestroyInterest with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=sp-272.
  The `jalr` at 0x21540b0 calls __glXPostError with a0=a0 at entry (arg0), a1=0x8, a2=0x5, a3=[a3+40]:8.
  The `bgezall` at 0x21540d0 calls (unnamed) [0x2152f38] with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=?, a3=?.
  The `jalr` at 0x21540f4 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8.
  The `bgezall` at 0x2154114 calls (unnamed) [0x2152f38] with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=0x0, a3=0x0.
  The `jalr` at 0x2154138 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8.
  The `bgezall` at 0x2154158 calls (unnamed) [0x2152f38] with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=ret(__glXAddDrawableInterest), a3=0x0, a4=0x2152f38.
  The `bgezall` at 0x2154184 calls (unnamed) [0x2152f38] with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=?, a3=0x0, a5=0x2152f38.
  The `beq` branch at 0x2153218 targets 0x2153c88, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `bne` branch at 0x2153240 targets 0x215377c, is taken when s0(=a3) != 0, and falls through when s0(=a3) == 0.
  The `beq` branch at 0x2153254 targets 0x2153870, is taken when v1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `bne` branch at 0x215325c targets 0x215327c, is taken when s0(=a3) != s2(=[[0x1028]:8+280]:8), and falls through when s0(=a3) == s2(=[[0x1028]:8+280]:8).
  The `bne` branch at 0x2153268 targets 0x215327c, is taken when t8(=[[[0x1028]:8+280]:8+328]:8) != s5(=a1), and falls through when t8(=[[[0x1028]:8+280]:8+328]:8) == s5(=a1).
  The `beq` branch at 0x2153274 targets 0x2153984, is taken when t9(=[[[0x1028]:8+280]:8+320]:8) == s6(=a2), and falls through when t9(=[[[0x1028]:8+280]:8+320]:8) != s6(=a2).
  The `beq` branch at 0x2153288 targets 0x2153e5c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `bne` branch at 0x2153290 targets 0x21537cc, is taken when s0(=a3) != s2(=[[0x1028]:8+280]:8), and falls through when s0(=a3) == s2(=[[0x1028]:8+280]:8).
  The `beq` branch at 0x21532a4 targets 0x2153330, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0x21532b0 targets 0x2153338, is taken when at(=[a3+280]) == 0, and falls through when at(=[a3+280]) != 0.
  The `beq` branch at 0x21532b8 targets 0x2153338, is taken when s5(=a1) == 0, and falls through when s5(=a1) != 0.
  The `beq` branch at 0x21532c0 targets 0x2153338, is taken when s6(=a2) == 0, and falls through when s6(=a2) != 0.
  The `beq` branch at 0x21532d0 targets 0x21540e4, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `bne` branch at 0x21532e0 targets 0x21537dc, is taken when v0(=[ret(__glXAddDrawableInterest)+12]) != v1(=[a3+60]), and falls through when v0(=[ret(__glXAddDrawableInterest)+12]) == v1(=[a3+60]).
  The `bne` branch at 0x21532f0 targets 0x21537dc, is taken when a0(=[ret(__glXAddDrawableInterest)+16]:8) != a1(=[a3+88]:8), and falls through when a0(=[ret(__glXAddDrawableInterest)+16]:8) == a1(=[a3+88]:8).
  The `beq` branch at 0x21532fc targets 0x21537dc, is taken when a2(=[ret(__glXAddDrawableInterest)+64]) == a3(=0x3), and falls through when a2(=[ret(__glXAddDrawableInterest)+64]) != a3(=0x3).
  The `bne` branch at 0x2153304 targets 0x21537e8, is taken when s5(=a1) != s6(=a2), and falls through when s5(=a1) == s6(=a2).
  The `beq` branch at 0x2153310 targets 0x2153a58, is taken when a1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when a1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `bne` branch at 0x2153318 targets 0x2153348, is taken when s8(=one of 0x0, 0x1) != 0, and falls through when s8(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x2153320 targets 0x2153590, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0x2153328 targets 0x215360c and is always taken.
  The `beq` branch at 0x2153330 targets 0x2153c68, is taken when s5(=a1) == 0, and falls through when s5(=a1) != 0.
  The `beq` branch at 0x215333c targets 0x2153a54, is taken when a1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when a1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0x2153348 targets 0x2153828, is taken when a1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when a1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0x2153354 targets 0x2153374, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x2153360 targets 0x2153bd4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x215336c targets 0x2153bd4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2153374 targets 0x2153388, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `bne` branch at 0x2153380 targets 0x2153740, is taken when a6(=[a3+57]:1) != 0, and falls through when a6(=[a3+57]:1) == 0.
  The `bne` branch at 0x2153388 targets 0x215373c, is taken when s5(=a1) != s6(=a2), and falls through when s5(=a1) == s6(=a2).
  The `bne` branch at 0x21533c8 targets 0x21533f0, is taken when t0(?) != t1(=sym(_XAsyncErrorHandler)), and falls through when t0(?) == t1(=sym(_XAsyncErrorHandler)).
  The `beq` branch at 0x21533d0 targets 0x21533e0, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x21533d8 targets 0x2153c78, is taken when t3(=0x3) == t8(?), and falls through when t3(=0x3) != t8(?).
  The `bne` branch at 0x21533e4 targets 0x2153a38, is taken when t9(=[a0+2392]:8) != ra(=sp-272), and falls through when t9(=[a0+2392]:8) == ra(=sp-272).
  The `bne` branch at 0x2153404 targets 0x21534a0, is taken when v0(?) != v1(=sym(_XAsyncErrorHandler)), and falls through when v0(?) == v1(=sym(_XAsyncErrorHandler)).
  The `beq` branch at 0x215340c targets 0x215341c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x2153414 targets 0x2153c80, is taken when a2(=0x3) == a3(?), and falls through when a2(=0x3) != a3(?).
  The `bne` branch at 0x2153420 targets 0x2153488, is taken when a4(=[a0+2392]:8) != a5(=sp-216), and falls through when a4(=[a0+2392]:8) == a5(=sp-216).
  The `bne` branch at 0x2153428 targets 0x21534a8, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x21534a0 targets 0x2153434, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x21534a8 targets 0x21534bc, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0x21534b4 targets 0x2153c60, is taken when t0(=[a3+280]) == 0, and falls through when t0(=[a3+280]) != 0.
  The `beq` branch at 0x21534bc targets 0x21534d8, is taken when s0(=a3) == s2(=[[0x1028]:8+280]:8), and falls through when s0(=a3) != s2(=[[0x1028]:8+280]:8).
  The `beq` branch at 0x21534cc targets 0x21534d8, is taken when s2(=[[0x1028]:8+280]:8) == t1(=0x217d3b8), and falls through when s2(=[[0x1028]:8+280]:8) != t1(=0x217d3b8).
  The `beq` branch at 0x21534d8 targets 0x21535e4, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x21534e4 targets 0x215357c, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x21534f4 targets 0x2153534, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0x2153500 targets 0x2153534, is taken when t8(=[a3+57]:1) == 0, and falls through when t8(=[a3+57]:1) != 0.
  The `beq` branch at 0x215352c targets 0x215353c and is always taken.
  The `beq` branch at 0x2153564 targets 0x2153574, is taken when a3(=[a3+432]) >= 0x2 (signed), and falls through when a3(=[a3+432]) < 0x2 (signed).
  The `bne` branch at 0x215356c targets 0x215357c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x2153574 targets 0x2153e40, is taken when a5(?) == a6(=0x6), and falls through when a5(?) != a6(=0x6).
  The `beq` branch at 0x2153580 targets 0x2153b28, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x2153588 targets 0x21535e4, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x2153598 targets 0x21535b8, is taken when t0(=[a3+88]:8) != a2(?), and falls through when t0(=[a3+88]:8) == a2(?).
  The `beq` branch at 0x21535a4 targets 0x21535e4, is taken when t1(?) == a2(?), and falls through when t1(?) != a2(?).
  The `beq` branch at 0x21535b0 targets 0x21535e4, is taken when t2(?) == t3(=0x3), and falls through when t2(?) != t3(=0x3).
  The `beq` branch at 0x21535c0 targets 0x21535e4, is taken when t9(=[[a3+288]:8+208]:8) == 0, and falls through when t9(=[[a3+288]:8+208]:8) != 0.
  The `beq` branch at 0x21535dc targets 0x21540a4, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x21535e4 targets 0x215360c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x21535ec targets 0x215360c, is taken when s1(?) == s3(?), and falls through when s1(?) != s3(?).
  The `beq` branch at 0x21535f8 targets 0x2153a70, is taken when t8(?) == t9(=0x4), and falls through when t8(?) != t9(=0x4).
  The `beq` branch at 0x2153604 targets 0x2153a70, is taken when ra(?) == at(=0x4), and falls through when ra(?) != at(=0x4).
  The `beq` branch at 0x215360c targets 0x2153888, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0x215363c targets 0x2153d1c, is taken when v1(=[a3+280]) == 0, and falls through when v1(=[a3+280]) != 0.
  The `beq` branch at 0x2153654 targets 0x21539bc, is taken when t9(=[[a3+288]:8+200]:8) == 0, and falls through when t9(=[[a3+288]:8+200]:8) != 0.
  The `beq` branch at 0x2153668 targets 0x2153f00, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x2153674 targets 0x2153684, is taken when a1(=[a3+368]:1) == 0, and falls through when a1(=[a3+368]:1) != 0.
  The `beq` branch at 0x215367c targets 0x2153adc, is taken when s8(=one of 0x0, 0x1) == 0, and falls through when s8(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x2153684 targets 0x21536e8, is taken when s0(=a3) == s2(=[[0x1028]:8+280]:8), and falls through when s0(=a3) != s2(=[[0x1028]:8+280]:8).
  The `beq` branch at 0x2153694 targets 0x21536e8, is taken when s2(=[[0x1028]:8+280]:8) == a2(=0x217d3b8), and falls through when s2(=[[0x1028]:8+280]:8) != a2(=0x217d3b8).
  The `beq` branch at 0x21536c4 targets 0x2153cac, is taken when a3(=[[[0x1028]:8+280]:8+40]:8) == 0, and falls through when a3(=[[[0x1028]:8+280]:8+40]:8) != 0.
  The `beq` branch at 0x21536e8 targets 0x2153708, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bne` branch at 0x2153700 targets 0x2153878, is taken when s7(?) != t2(?), and falls through when s7(?) == t2(?).
  The `beq` branch at 0x2153774 targets 0x21533b4 and is always taken.
  The `beq` branch at 0x2153788 targets 0x2153ec8, is taken when a3(=[a3+40]:8) == 0, and falls through when a3(=[a3+40]:8) != 0.
  The `beq` branch at 0x215379c targets 0x21537b8, is taken when a0(=[a3+300]) == 0, and falls through when a0(=[a3+300]) != 0.
  The `bne` branch at 0x21537a4 targets 0x2153cc4, is taken when a0(=[a3+300]) != v0(=[[0x1028]:8+268]), and falls through when a0(=[a3+300]) == v0(=[[0x1028]:8+268]).
  The `bne` branch at 0x21537b0 targets 0x2153cc4, is taken when t9(=[[0x1028]:8+272]) != ra(=[a3+304]), and falls through when t9(=[[0x1028]:8+272]) == ra(=[a3+304]).
  The `beq` branch at 0x21537c4 targets 0x2153248 and is always taken.
  The `beq` branch at 0x21537d4 targets 0x215329c and is always taken.
  The `beq` branch at 0x21537dc targets 0x2153bb8, is taken when s5(=a1) == s6(=a2), and falls through when s5(=a1) != s6(=a2).
  The `beq` branch at 0x21537f0 targets 0x2154128, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `bne` branch at 0x2153800 targets 0x2153814, is taken when v0(=[ret(__glXAddDrawableInterest)+12]) != v1(=[a3+60]), and falls through when v0(=[ret(__glXAddDrawableInterest)+12]) == v1(=[a3+60]).
  The `bne` branch at 0x215380c targets 0x215330c, is taken when a0(=[ret(__glXAddDrawableInterest)+24]:8) != 0, and falls through when a0(=[ret(__glXAddDrawableInterest)+24]:8) == 0.
  The `bne` branch at 0x2153818 targets 0x2153348, is taken when a1(=[[[0x1028]:8+280]:8+280]) != 0, and falls through when a1(=[[[0x1028]:8+280]:8+280]) == 0.
  The `beq` branch at 0x2153820 targets 0x2153d14 and is always taken.
  The `beq` branch at 0x2153830 targets 0x2153350, is taken when s2(=[[0x1028]:8+280]:8) == a1(=0x217d3b8), and falls through when s2(=[[0x1028]:8+280]:8) != a1(=0x217d3b8).
  The `beq` branch at 0x215383c targets 0x2153350, is taken when a0(=[[[0x1028]:8+280]:8+312]:8) == s4(=a0), and falls through when a0(=[[[0x1028]:8+280]:8+312]:8) != s4(=a0).
  The `beq` branch at 0x2153860 targets 0x215416c, is taken when v0(=ret(0x2152d94)) == 0, and falls through when v0(=ret(0x2152d94)) != 0.
  The `beq` branch at 0x2153868 targets 0x2153350 and is always taken.
  The `beq` branch at 0x2153870 targets 0x21532a4 and is always taken.
  The `beq` branch at 0x2153880 targets 0x215370c and is always taken.
  The `bne` branch at 0x215389c targets 0x2153684, is taken when a7(=[0x1088]:8) != 0, and falls through when a7(=[0x1088]:8) == 0.
  The `bne` branch at 0x21538cc targets 0x21538b4, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bgtz` branch at 0x2153974 targets 0x21538d4, is taken when a1(?) > 0 (signed), and falls through when a1(?) <= 0 (signed).
  The `beq` branch at 0x215397c targets 0x2153684 and is always taken.
  The `bnel` branch at 0x21539c8 targets 0x2153674, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0; its branch-likely delay slot `lbu a1,368(s0)` at 0x21539cc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x2153a30 targets 0x215370c and is always taken.
  The `beq` branch at 0x2153a4c targets 0x21533f0 and is always taken.
  The `beq` branch at 0x2153a60 targets 0x2153318, is taken when s2(=[[0x1028]:8+280]:8) == v0(=0x217d3b8), and falls through when s2(=[[0x1028]:8+280]:8) != v0(=0x217d3b8).
  The `beq` branch at 0x2153a68 targets 0x2153348 and is always taken.
  The `bne` branch at 0x2153a80 targets 0x215360c, is taken when v1(?) < a0(?) (signed), and falls through when v1(?) >= a0(?) (signed).
  The `bne` branch at 0x2153a8c targets 0x215360c, is taken when a1(?) < a2(?) (signed), and falls through when a1(?) >= a2(?) (signed).
  The `beq` branch at 0x2153ad4 targets 0x215370c and is always taken.
  The `beq` branch at 0x2153b20 targets 0x2153240 and is always taken.
  The `beq` branch at 0x2153b84 targets 0x2153b94, is taken when a3(=[a3+432]) >= 0x2 (signed), and falls through when a3(=[a3+432]) < 0x2 (signed).
  The `bne` branch at 0x2153b8c targets 0x2153588, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x2153b94 targets 0x2153588, is taken when a5(?) != a6(=0x6), and falls through when a5(?) == a6(=0x6).
  The `beq` branch at 0x2153bb0 targets 0x2153588 and is always taken.
  The `bne` branch at 0x2153bc0 targets 0x2153348, is taken when a1(=[[[0x1028]:8+280]:8+280]) != 0, and falls through when a1(=[[[0x1028]:8+280]:8+280]) == 0.
  The `beq` branch at 0x2153bc8 targets 0x2153d0c and is always taken.
  The `beq` branch at 0x2153be4 targets 0x2153374, is taken when v0(=ret(XSGIMiscQueryExtension)) == 0, and falls through when v0(=ret(XSGIMiscQueryExtension)) != 0.
  The `beq` branch at 0x2153bf0 targets 0x2153f68, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2153bfc targets 0x2153374, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x2153c58 targets 0x2153374 and is always taken.
  The `beq` branch at 0x2153c60 targets 0x21534bc and is always taken.
  The `bne` branch at 0x2153c68 targets 0x2153338, is taken when s6(=a2) != 0, and falls through when s6(=a2) == 0.
  The `beq` branch at 0x2153c70 targets 0x2153310 and is always taken.
  The `beq` branch at 0x2153c78 targets 0x21533e0 and is always taken.
  The `beq` branch at 0x2153c80 targets 0x215341c and is always taken.
  The `beq` branch at 0x2153cb8 targets 0x21536e8 and is always taken.
  The `beq` branch at 0x2153d0c targets 0x2153a54 and is always taken.
  The `beq` branch at 0x2153d14 targets 0x2153a54 and is always taken.
  The `bne` branch at 0x2153d4c targets 0x2153684, is taken when a0(=[0x1088]:8) != 0, and falls through when a0(=[0x1088]:8) == 0.
  The `beq` branch at 0x2153d54 targets 0x2153fc4, is taken when v0(=ret(strstr)) == 0, and falls through when v0(=ret(strstr)) != 0.
  The `bne` branch at 0x2153d88 targets 0x2153d70, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bgtz` branch at 0x2153e30 targets 0x2153d90, is taken when a1(?) > 0 (signed), and falls through when a1(?) <= 0 (signed).
  The `beq` branch at 0x2153e38 targets 0x2153684 and is always taken.
  The `beq` branch at 0x2153e54 targets 0x2153580 and is always taken.
  The `beq` branch at 0x2153e78 targets 0x2153e94, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0x2153e80 targets 0x2153e94, is taken when s0(=a3) == s2(=[[0x1028]:8+280]:8), and falls through when s0(=a3) != s2(=[[0x1028]:8+280]:8).
  The `beq` branch at 0x2153f60 targets 0x215370c and is always taken.
  The `beq` branch at 0x2153fbc targets 0x2153bf8 and is always taken.
  The `bne` branch at 0x2153fec targets 0x2153fd4, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bgtz` branch at 0x2154094 targets 0x2153ff4, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `beq` branch at 0x215409c targets 0x2153684 and is always taken.
  The `beq` branch at 0x21540dc targets 0x215370c and is always taken.
  The `beq` branch at 0x2154120 targets 0x215370c and is always taken.
  The `beq` branch at 0x2154164 targets 0x215370c and is always taken.
  The `beq` branch at 0x2154190 targets 0x215370c and is always taken.
  The return at 0x2153480 has v0 = 0x0.
  The return at 0x2153734 has v0 = one of 0x0, 0x1.
  The return at 0x21539b4 has v0 = 0x1.
  The return at 0x2153ca4 has v0 = 0x0.
  The return at 0x2153d04 has v0 = 0x0.
  The return at 0x2153ec0 has v0 = 0x0.
  The return at 0x2153ef8 has v0 = 0x0.
  The instructions from 0x2153bd0 to 0x2153bd0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x2153cc0 to 0x2153cc0 are not reached by any path from the entry, and their branches are not listed.

- `glXMakeContextCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2154208 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2154208-0x215423c (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0x2154224 calls __glXMakeContextCurrent with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0.
  The return at 0x2154234 has v0 = ret(__glXMakeContextCurrent).

- `glXGetCurrentReadDrawable` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x215427c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x215427c-0x21542bc (64 bytes).
  It occupies 64 bytes.
  The `ld` at 0x21542a0 loads 8 bytes from abs 0x1028.
  The `ld` at 0x21542a8 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x21542b0 loads 8 bytes from [[0x1028]:8+280]:8 +0x140.
  The `jalr` at 0x2154298 calls __glXInitThread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x21542b4 has v0 = [[[0x1028]:8+280]:8+320]:8.

- `glXSelectEventSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x21587b0 (n64).
  Appends a 0x18-byte block to the buffer whose write pointer is the word at +0xb0 of the first argument and advances that pointer by 0x18 (`sd` at 0x2158850); no reply is read.
  It calls `__glXSetupForCommand` on its four argument registers (`jalr` at 0x21587dc); when the low byte of the result is zero (`beq` at 0x21587e8) it returns at once with that result still in v0 and writes nothing.
  Otherwise the result is saved in a frame slot (`sd` at 0x21587f8) and, if the doubleword at +0x968 is nonzero, a call goes through the first word of the table it points to (`jalr` at 0x2158800).
  When the limit doubleword at +0xb8 is below the pointer at +0xb0 plus 0x18, unsigned (`bne` at 0x2158818), `_XFlush` is called first (`jalr` at 0x21588bc) and the pointer is reloaded.
  The block gets the halfword 0x6 at +0x2 (`sh` at 0x2158830), the byte 0x10 at +0x1 (`sb` at 0x215886c), the word 0x10009 at +0x4 (`sw` at 0x2158868), the word 0x801f at +0x10 (`sw` at 0x2158860), a1 at +0xc (`sw` at 0x2158874) and a2 at +0x14 (`sw` at 0x2158854).
  The byte at +0x0 is first set to 0x10 (`sb` at 0x2158838) and then overwritten with the low byte of the saved setup result (`sb` at 0x2158870); the pointer at +0xa0 receives the block address from before the advance (`sd` at 0x2158828), and the doubleword at +0x98 gets one added (`sd` at 0x2158848).
  After the writes a call goes through the second word of the +0x968 table (`jalr` at 0x2158888) when that pointer is nonzero (`beq` at 0x215887c), and a call goes through the pointer at +0xd0 (`jalr` at 0x215889c) when it is nonzero (`beq` at 0x2158894).
  Unknown: the routines behind the table words and the +0xd0 pointer, which the bundle reaches only through registers; and the field boundaries inside the words 0x10009 at +0x4 and 0x801f at +0x10, since the datasheet excerpts carry no table for them.
  Evidence grade: established.

- `glXSelectEventSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x21587b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x21587b0-0x21588cc (284 bytes).
  It occupies 284 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x21587f0, `ld` at 0x2158878.
  The `ld` at 0x21587fc loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2158808, `ld` at 0x2158840, `ld` at 0x21588c8.
  The `ld` at 0x215880c loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2158828 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2158830 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2158838, `sb` at 0x2158870.
  The `ld` at 0x215883c loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2158848 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2158850 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2158854 stores 4 bytes to [a0+176]:8 +0x14.
  The `sw` at 0x2158860 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2158868 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x215886c stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0x2158874 stores 4 bytes to [a0+176]:8 +0xc.
  The `ld` at 0x2158884 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2158890 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x21587dc calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2158800 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2158888 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=a2 at entry (arg2), a4=0x801f, a5=[a0+2408]:8, a6=0x10009, a7=0x10.
  The `jalr` at 0x215889c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x21588bc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8+24, a3=?, a5=a1 at entry (arg1).
  The `beq` branch at 0x21587e8 targets 0x21588a8, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x21587f4 targets 0x2158808, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2158818 targets 0x21588b8, is taken when a1(=[a0+184]:8) < a2(=[a0+176]:8+24) (unsigned), and falls through when a1(=[a0+184]:8) >= a2(=[a0+176]:8+24) (unsigned).
  The `beq` branch at 0x215887c targets 0x2158890, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2158894 targets 0x21588a8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x21588c4 targets 0x215881c and is always taken.
  The return at 0x21588b0 has v0 = one of ret(__glXSetupForCommand), ?, ret(?).

- `__glXGetDrawableAttributes` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2158a04 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2158a04-0x2158e08 (1028 bytes).
  It occupies 1028 bytes.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2158a4c, `ld` at 0x2158b18, `ld` at 0x2158bf8.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x0, including `ld` at 0x2158a60, `ld` at 0x2158b68.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2158a6c, `ld` at 0x2158aa4, `ld` at 0x2158b74.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb8, including `ld` at 0x2158a70, `ld` at 0x2158b78.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xa0, including `sd` at 0x2158a8c, `sd` at 0x2158b90.
  2 such `sh` accesses store 2 bytes to [a0+176]:8 +0x2, including `sh` at 0x2158a94, `sh` at 0x2158b98.
  4 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2158a9c, `sb` at 0x2158ae8, `sb` at 0x2158ba0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x98, including `ld` at 0x2158aa0, `ld` at 0x2158ba4.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x98, including `sd` at 0x2158aac, `sd` at 0x2158bb0.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xb0, including `sd` at 0x2158ab4, `sd` at 0x2158bb8.
  The `sw` at 0x2158ab8 stores 4 bytes to [a0+176]:8 +0xc.
  2 such `sw` accesses store 4 bytes to [a0+176]:8 +0x4, including `sw` at 0x2158ad0, `sw` at 0x2158bd0.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x1, including `sb` at 0x2158adc, `sb` at 0x2158bc4.
  5 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2158b28, `ld` at 0x2158c04, `ld` at 0x2158c5c.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2158b34, `ld` at 0x2158c10, `ld` at 0x2158c68.
  2 such `sd` accesses store 8 bytes to a2 (arg2 at entry) +0x28, including `sd` at 0x2158cac, `sd` at 0x2158d2c.
  The `sd` at 0x2158cb0 stores 8 bytes to a2 (arg2 at entry) +0x20.
  2 such `sd` accesses store 8 bytes to a2 (arg2 at entry) +0x18, including `sd` at 0x2158cb4, `sd` at 0x2158ce0.
  The `sd` at 0x2158cb8 stores 8 bytes to a2 (arg2 at entry) +0x10.
  2 such `sd` accesses store 8 bytes to a2 (arg2 at entry) +0x8, including `sd` at 0x2158cbc, `sd` at 0x2158d24.
  The `sd` at 0x2158cc0 stores 8 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2158cf0, `lw` at 0x2158d08.
  The `ld` at 0x2158d14 loads 8 bytes from table(0x2178918) +0x0.
  The `sw` at 0x2158d34 stores 4 bytes to a2 (arg2 at entry) +0x14.
  The `sw` at 0x2158d3c stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `sb` at 0x2158d44 stores 1 byte to a2 (arg2 at entry) +0x21.
  The `sb` at 0x2158d4c stores 1 byte to a2 (arg2 at entry) +0x20.
  The `sw` at 0x2158d54 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0x2158a38 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2158a64 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2158ae4 calls _XReply with a0=a0 at entry (arg0), a1=sp-144, a2=0x0, a3=0x0, a5=0x11, a6=[a0+176]:8, a7=0x1000a.
  The `jalr` at 0x2158b08 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2158b2c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2158b40 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2158b6c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2158bd8 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a6=[a0+176]:8.
  The `jalr` at 0x2158c08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2158c1c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2158c40 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8+16, a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2158c60 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2158c74 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2158ca4 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x2158d68 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?, a7=-0x800c.
  The `jalr` at 0x2158d7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2158d88 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2158dbc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2158ddc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2158df0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2158a44 targets 0x2158dac, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x2158a50 targets 0x2158b60, is taken when a0(=a3) == 0, and falls through when a0(=a3) != 0.
  The `beq` branch at 0x2158a58 targets 0x2158a6c, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2158a7c targets 0x2158c40, is taken when a1(=[a0+184]:8) < a2(=[a0+176]:8+16) (unsigned), and falls through when a1(=[a0+184]:8) >= a2(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0x2158aec targets 0x2158c50, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2158afc targets 0x2158bf8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x2158b10 targets 0x2158c98, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0x2158b20 targets 0x2158b34, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2158b38 targets 0x2158b4c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2158b60 targets 0x2158b74, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2158b84 targets 0x2158db8, is taken when ra(=[a0+184]:8) < at(=[a0+176]:8+8) (unsigned), and falls through when ra(=[a0+184]:8) >= at(=[a0+176]:8+8) (unsigned).
  The `beq` branch at 0x2158be0 targets 0x2158dcc, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0x2158bf0 targets 0x2158b04, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x2158bfc targets 0x2158c10, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2158c14 targets 0x2158c24, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2158c48 targets 0x2158a84 and is always taken.
  The `beq` branch at 0x2158c54 targets 0x2158c68, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2158c6c targets 0x2158c80, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `blez` branch at 0x2158cd0 targets 0x2158d58, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x2158cd8 targets 0x2158e00 and is always taken.
  The `beq` branch at 0x2158ce4 targets 0x2158d58, is taken when s0(?) == a6(?), and falls through when s0(?) != a6(?).
  The `beq` branch at 0x2158d0c targets 0x2158ce4, is taken when t2(=table(-0x800c)) >= 0x1a (unsigned), and falls through when t2(=table(-0x800c)) < 0x1a (unsigned).
  The `beq` branch at 0x2158d20 targets 0x2158ce4 and is always taken.
  The `beq` branch at 0x2158d28 targets 0x2158ce4 and is always taken.
  The `beq` branch at 0x2158d30 targets 0x2158ce4 and is always taken.
  The `beq` branch at 0x2158d38 targets 0x2158ce4 and is always taken.
  The `beq` branch at 0x2158d40 targets 0x2158ce4 and is always taken.
  The `beq` branch at 0x2158d48 targets 0x2158ce4 and is always taken.
  The `beq` branch at 0x2158d50 targets 0x2158ce4 and is always taken.
  The `beq` branch at 0x2158d5c targets 0x2158d70, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2158d74 targets 0x2158d84, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2158db0 targets 0x2158b4c and is always taken.
  The `beq` branch at 0x2158dc4 targets 0x2158b88 and is always taken.
  The `beq` branch at 0x2158dd0 targets 0x2158de4, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2158de8 targets 0x2158df8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2158df8 targets 0x2158b4c and is always taken.
  The `beq` branch at 0x2158e00 targets 0x2158cf0 and is always taken.
  The return at 0x2158b58 has v0 = 0x0.
  The return at 0x2158c38 has v0 = 0x0.
  The return at 0x2158c90 has v0 = 0x0.
  The return at 0x2158da4 has v0 = 0x1.
  The indirect jump at 0x2158d18 uses the jump table at 0x2178918 with targets 0x2158d50, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158d20, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158d48, 0x2158d40, 0x2158d38, 0x2158d30, 0x2158ce0, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158d28.
  The indirect jump at 0x2158d18 uses the jump table at 0x2178918 with targets 0x2158d50, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158d20, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158d48, 0x2158d40, 0x2158d38, 0x2158d30, 0x2158ce0, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158d28.
  The indirect jump at 0x2158d18 uses the jump table at 0x2178918 with targets 0x2158d50, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158d20, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158d48, 0x2158d40, 0x2158d38, 0x2158d30, 0x2158ce0, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158d28.
  The indirect jump at 0x2158d18 uses the jump table at 0x2178918 with targets 0x2158d50, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158d20, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158d48, 0x2158d40, 0x2158d38, 0x2158d30, 0x2158ce0, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158d28.
  The indirect jump at 0x2158d18 uses the jump table at 0x2178918 with targets 0x2158d50, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158d20, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158d48, 0x2158d40, 0x2158d38, 0x2158d30, 0x2158ce0, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158ce4, 0x2158d28.

- `glXDestroyGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2158e08 (n64).
  Inferred: it acts on the drawable record that `__glXAddDrawableInterest` returns for the second argument, since the committed note for that callee says it returns the matching record from the drawable-interest list, and it runs only after `__glXSetupForCommand` passes (the `beq` at 0x2158e44 returns at once when the low byte of that result is zero).
  Otherwise it calls `__glXAddDrawableInterest` with a1 (`jalr` at 0x2158e50), then `__glXRemoveDrawableInterest` on the record (`jalr` at 0x2158e60).
  When the word at +0x20 of the record is zero (`lw` at 0x2158e68), the `sd` at 0x2158f4c zeroes the record's first doubleword before the `jalr` at 0x2158e74 calls `__glXFreeDrawablePrivate` on it; the other path reaches that call without the store.
  Before writing, the pointer at +0xb0 of the first argument is compared, unsigned, with the pointer at +0xb8 after adding 0x10 (the `bne` at 0x2158ea4); when +0xb8 is lower, `_XFlush` is called on the first argument (`jalr` at 0x2158f38) and the pointer is reloaded, so the 0x10-byte block always fits.
  That pointer is then copied into +0xa0 (`sd` at 0x2158eac), and the block at it gets a halfword 0x4 at +0x2 (`sh` at 0x2158eb4), a byte 0x10 at +0x0 (`sb` at 0x2158ebc), the second argument at +0xc (`sw` at 0x2158edc), the word 0x10008 at +0x4 (`sw` at 0x2158ee4) and a byte 0x10 at +0x1 (`sb` at 0x2158ee8); the `sb` at 0x2158eec then overwrites +0x0 with the saved `__glXSetupForCommand` result.
  The `sd` at 0x2158ecc adds one to the doubleword at +0x98, and the `sd` at 0x2158ed4 adds 0x10 to the pointer at +0xb0.
  A call through the table pointer at +0x968 (offset 0 of that table, `jalr` at 0x2158e8c) runs before the block is written, and one through offset 8 (`jalr` at 0x2158f00) runs after it; each is skipped when the +0x968 pointer is zero.
  Last, a call through the pointer at +0xd0 (`jalr` at 0x2158f14) runs only when that pointer is nonzero (the `beq` at 0x2158f0c), and the routine then returns.
  Unknown: the routine each of the calls through the pointers at +0x968 and +0xd0 reaches (`jalr` at 0x2158e8c, 0x2158f00 and 0x2158f14), since the bundle names no routine behind those pointer words; reading the display's pointer tables would settle it.
  Unknown: the value left in v0 at the return at 0x2158f2c on the paths that pass the calls, since the bundle gives v0 as ? there.
  Evidence grade: inferred.

- `glXDestroyGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2158e08 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2158e08-0x2158f50 (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0x2158e68 loads 4 bytes from ret(__glXAddDrawableInterest) +0x20.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2158e7c, `ld` at 0x2158ef0.
  The `ld` at 0x2158e88 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2158e94, `ld` at 0x2158ec4, `ld` at 0x2158f44.
  The `ld` at 0x2158e98 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2158eac stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2158eb4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2158ebc, `sb` at 0x2158eec.
  The `ld` at 0x2158ec0 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2158ecc stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2158ed4 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2158edc stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x2158ee4 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2158ee8 stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0x2158efc loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2158f08 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `sd` at 0x2158f4c stores 8 bytes to ret(__glXAddDrawableInterest) +0x0.
  The `jalr` at 0x2158e34 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2158e50 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x2158e60 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0x2158e74 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0x2158e8c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?.
  The `jalr` at 0x2158f00 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=0x10008, a4=0x10, a5=ret(__glXSetupForCommand), a6=[a0+152]:8+1, a7=[a0+176]:8+16.
  The `jalr` at 0x2158f14 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2158f38 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8+16, a3=?, a5=ret(__glXSetupForCommand).
  The `beq` branch at 0x2158e44 targets 0x2158f1c, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x2158e6c targets 0x2158f48, is taken when a0(=[ret(__glXAddDrawableInterest)+32]) == 0, and falls through when a0(=[ret(__glXAddDrawableInterest)+32]) != 0.
  The `beq` branch at 0x2158e80 targets 0x2158e94, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2158ea4 targets 0x2158f34, is taken when a1(=[a0+184]:8) < a2(=[a0+176]:8+16) (unsigned), and falls through when a1(=[a0+184]:8) >= a2(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0x2158ef4 targets 0x2158f08, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2158f0c targets 0x2158f1c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2158f40 targets 0x2158ea8 and is always taken.
  The `beq` branch at 0x2158f48 targets 0x2158e70 and is always taken.
  The return at 0x2158f2c has v0 = one of ?, ret(?).

- `glXCreateGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2159650 (n64).
  Queues a variable-length request in the output buffer of the connection context in `a0` (write
  pointer at +0xb0, limit at +0xb8), waits for a reply, and returns the result of a context callback.
  It returns 0 without writing when the low byte of the `__glXSetupForCommand` result is zero (the
  `beq` at 0x2159698). Otherwise it calls the routine at +0x48 of the context (the `jalr` at
  0x21596a4), keeps its result in a frame slot (the `sd` at 0x21596d4), passes it to
  `__glXAddDrawableInterest` (the `jalr` at 0x21596b4), and when that result is zero posts
  `__glXPostError` with 0xb and 0x10 and returns 0 (the `jalr` at 0x2159948). Inferred: the committed
  note on `__glXAddDrawableInterest` describes it as finding or creating a drawable record, so the 0x4
  that the `sw` at 0x21596cc stores at +0x40 of its return goes into that record.
  With a non-null fifth argument `a4` whose first word is non-zero (the `beq` at 0x21596d0 and
  0x21596e0), the routine counts steps along 0x18-byte entries: it adds 1 after reading the field at
  +8 of an entry, leaves if that field is zero (the `beq` at 0x21596f4), adds 1 after the field at +0x10
  and leaves if that is zero (the `beq` at 0x2159704), and otherwise adds 1 after loading the word at
  +0x18, stepping the entry pointer by 0x18 and repeating while that word is non-zero (the `bne` at
  0x2159714). With a null `a4` or a zero first word the count is zero. Call the count N. When the
  pointer at +0x968 is non-zero, the routine calls slot +0 of its table (the `jalr` at 0x215972c).
  The request size is 0x20 plus 8N bytes. If the limit at +0xb8 is below the write pointer plus that
  size (the `bne` at 0x2159754), it calls `_XFlush` and reloads the pointer (the `jalr` at 0x21598a8).
  The routine stores the pointer in +0xa0, the size divided by 4 as a halfword at +2 (the `sh` at
  0x2159768), the byte 0x11 at +1, 0x10007 at +4 (the `sw` at 0x21597a0), the saved
  `__glXSetupForCommand` low byte at +0 (the `sb` at 0x21597ac, after the 0x10 written at 0x2159770),
  the words at +0x24 and +0x48 of `a1` at +0xc and +0x10 (the `sw` at 0x21597b4 and 0x21597d0), the
  saved result of the +0x48 routine at +0x14 (the `sw` at 0x21597c0), `a2` at +0x18 and `a3` at +0x1c.
  It adds 1 to the doubleword at +0x98 and the size to +0xb0. When `a4` is non-null and N is
  positive, it then copies N pairs of words from the start of `a4` into the record from +0x20 on, 8
  bytes per pass, in two `sw` per pass (the `sw` at 0x21597e8 and 0x21597fc).
  It then calls `_XReply` with the stack buffer at the frame base as its second argument (the `jalr`
  at 0x2159814). A non-zero result calls slot +8 of the +0x968 table and the routine at +0xd0 when
  those are non-zero (the `jalr` at 0x2159830 and 0x2159844), calls `__glXRemoveDrawableInterest` on
  the record (the `jalr` at 0x2159850) and returns the saved result of the +0x48 routine. A zero
  result calls the same two pointers (the `jalr` at 0x21598cc and 0x21598e0), posts code 0x11 through
  `__glXPostHiddenError` (the `jalr` at 0x21598f8), calls `__glXRemoveDrawableInterest` and
  `__glXFreeDrawablePrivate` on the record (the `jalr` at 0x2159904 and 0x2159918), clears the first
  doubleword of the record (the `sd` at 0x215991c) and returns 0.
  Unknown: the content of the routine at +0x48 of the context and of the routines behind the pointers
  at +0x968 and +0xd0; a committed note for each would settle it.
  Evidence grade: inferred.

- `glXCreateGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2159650 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2159650-0x215995c (780 bytes).
  It occupies 780 bytes.
  The `ld` at 0x21596a0 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `sw` at 0x21596cc stores 4 bytes to ret(__glXAddDrawableInterest) +0x40.
  The `lw` at 0x21596d8 loads 4 bytes from a4 (arg4 at entry) +0x0.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x21596ec, `lw` at 0x21596fc, `lw` at 0x215970c.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x215971c, `ld` at 0x2159820, `ld` at 0x2159934.
  The `ld` at 0x2159728 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x215973c, `ld` at 0x2159778, `ld` at 0x21598bc.
  The `ld` at 0x2159744 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2159760 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2159768 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2159770, `sb` at 0x21597ac.
  The `ld` at 0x2159774 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2159780 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2159788 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sb` at 0x2159790 stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0x21597a0 stores 4 bytes to [a0+176]:8 +0x4.
  The `lw` at 0x21597b0 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0x21597b4 stores 4 bytes to [a0+176]:8 +0xc.
  The `lw` at 0x21597b8 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0x21597bc stores 4 bytes to [a0+176]:8 +0x1c.
  The `sw` at 0x21597c0 stores 4 bytes to [a0+176]:8 +0x14.
  The `sw` at 0x21597c8 stores 4 bytes to [a0+176]:8 +0x18.
  The `sw` at 0x21597d0 stores 4 bytes to [a0+176]:8 +0x10.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x21597e8, `sw` at 0x21597fc.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x215982c, `ld` at 0x21598c8.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2159838, `ld` at 0x21598d4.
  The `sd` at 0x215991c stores 8 bytes to ?.
  The `jalr` at 0x2159688 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x21596a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x21596b4 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0x215972c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2159814 calls _XReply with a0=a0 at entry (arg0), a1=sp-144, a2=0x0, a3=0x0, a4=[a0+176]:8.
  The `jalr` at 0x2159830 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2159844 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2159850 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x21598a8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+176]:8.
  The `jalr` at 0x21598cc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x21598e0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x21598f8 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=sp-144, a2=0x11, a3=0x0.
  The `jalr` at 0x2159904 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2159918 calls __glXFreeDrawablePrivate with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2159948 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x10, a3=0x0.
  The `beq` branch at 0x2159698 targets 0x215987c, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x21596bc targets 0x2159938, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `beq` branch at 0x21596d0 targets 0x2159874, is taken when s0(=a4) == 0, and falls through when s0(=a4) != 0.
  The `beq` branch at 0x21596e0 targets 0x2159930, is taken when a1(=[a4]) == 0, and falls through when a1(=[a4]) != 0.
  The `beq` branch at 0x21596f4 targets 0x215971c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x2159704 targets 0x215971c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x2159714 targets 0x21596ec, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x2159720 targets 0x2159738, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2159754 targets 0x215989c, is taken when a6(=[a0+184]:8) < t1(?) (unsigned), and falls through when a6(=[a0+184]:8) >= t1(?) (unsigned).
  The `beq` branch at 0x21597cc targets 0x2159800, is taken when s0(=a4) == 0, and falls through when s0(=a4) != 0.
  The `blez` branch at 0x21597d8 targets 0x2159800, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `bgtz` branch at 0x21597f8 targets 0x21597e0, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `beq` branch at 0x215981c targets 0x21598c0, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2159824 targets 0x2159838, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x215983c targets 0x215984c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2159874 targets 0x215971c and is always taken.
  The `beq` branch at 0x21598b8 targets 0x215975c and is always taken.
  The `beq` branch at 0x21598c0 targets 0x21598d4, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x21598d8 targets 0x21598e8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2159928 targets 0x2159864 and is always taken.
  The `beq` branch at 0x2159930 targets 0x2159720 and is always taken.
  The `beq` branch at 0x2159954 targets 0x2159860 and is always taken.
  The return at 0x215986c has v0 = one of ?, 0x0.
  The return at 0x2159894 has v0 = 0x0.

- `glXGetVideoSyncSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x215995c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x215995c-0x21599e8 (140 bytes).
  It occupies 140 bytes.
  2 such `ld` accesses load 8 bytes from abs 0x1028, including `ld` at 0x215995c, `ld` at 0x2159994.
  The `ld` at 0x2159960 loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x2159980 loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `lw` at 0x215998c loads 4 bytes from [[0x1028]:8+280]:8 +0x128.
  The `lw` at 0x2159998 loads 4 bytes from [0x1028]:8 +0x108.
  The `lw` at 0x21599b8 loads 4 bytes from ([0x1028]:8 + ([[0x1028]:8+264] << 0x2)) +0x4.
  The `sw` at 0x21599d8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jalr` at 0x21599b4 calls ioctl with a0=[([0x1028]:8 + ([[0x1028]:8+264] << 0x2))+4], a1=0x3fe, a2=sp-32, a3=a3 at entry (arg3), a4=[[0x1028]:8+280]:8, a5=[[[0x1028]:8+280]:8+280].
  The `beq` branch at 0x2159978 targets 0x21599dc, is taken when a4(=[[0x1028]:8+280]:8) == 0, and falls through when a4(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0x2159984 targets 0x21599dc, is taken when a5(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when a5(=[[[0x1028]:8+280]:8+280]) != 0.
  The return at 0x21599d4 has v0 = 0x0.
  The return at 0x21599e0 has v0 = 0x5.

- `glXWaitVideoSyncSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x21599e8 (n64).
  Inferred: this is the video-sync wait request of the board's GL library, since the linked ioctl row for 0x3ff names a video-sync wait handler; it works through the pointer at abs 0x1028. Let P be the 8-byte word at abs 0x1028 and Q the 8-byte word at P+0x118 (`ld` at 0x21599f8); it returns 5 (`jr ra` at 0x2159a50) when Q is zero (`beq` at 0x2159a10) or the 4-byte word at Q+0x118 is zero (`beq` at 0x2159a1c), and 6 (`jr ra` at 0x2159a40) when the first argument is zero or less (`blez` at 0x2159a24) or the second argument is negative (`bltz` at 0x2159a2c). When the second argument is below the first, signed (`bne` at 0x2159a34), the request path runs; otherwise it returns 6 at 0x2159a40. The `sd` in the delay slot of that `bne` (0x2159a38) saves the pointer in a2 to frame +0x10 on both paths, and the request path copies the 4-byte word at Q+0x128 (`lw` at 0x2159a58) and the first and second arguments into the first three words of its frame (`sw` at 0x2159a64, 0x2159a60 and 0x2159a5c). It then calls `ioctl` with request 0x3ff and that frame as the third argument (`jalr` at 0x2159a88), with the descriptor being the word at offset 4 of the table entry indexed by the 4-byte word at P+0x108 (`lw` at 0x2159a6c and 0x2159a8c, index shifted left by 0x2). It then returns 0 (`jr ra` at 0x2159aa8) after writing the 4-byte word from frame +0xc through the pointer in a2 (`sw` at 0x2159aac in the return's delay slot, with the pointer reloaded from frame +0x10 at 0x2159a98).
  Unknown: the value that the request at 0x2159a88 yields, which the return at 0x2159aa8 replaces with 0; the handler's own entry for request 0x3ff would show it.
  Inferred: the word at frame +0xc lies inside the 16-byte block whose address the `ioctl` call receives as its third argument (`jalr` at 0x2159a88), and no store in this routine writes it, so the value handed back through the third argument pointer is the one the request leaves there.
  Evidence grade: inferred.

- `glXWaitVideoSyncSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x21599e8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x21599e8-0x2159ab0 (200 bytes).
  It occupies 200 bytes.
  2 such `ld` accesses load 8 bytes from abs 0x1028, including `ld` at 0x21599e8, `ld` at 0x2159a68.
  The `ld` at 0x21599f8 loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x2159a18 loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `lw` at 0x2159a58 loads 4 bytes from [[0x1028]:8+280]:8 +0x128.
  The `lw` at 0x2159a6c loads 4 bytes from [0x1028]:8 +0x108.
  The `lw` at 0x2159a8c loads 4 bytes from ([0x1028]:8 + ([[0x1028]:8+264] << 0x2)) +0x4.
  The `sw` at 0x2159aac stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0x2159a88 calls ioctl with a0=[([0x1028]:8 + ([[0x1028]:8+264] << 0x2))+4], a1=0x3ff, a2=sp-48, a3=a3 at entry (arg3), a4=a0 at entry (arg0), a5=a1 at entry (arg1), a6=[[0x1028]:8+280]:8, a7=[[[0x1028]:8+280]:8+280].
  The `beq` branch at 0x2159a10 targets 0x2159a48, is taken when a6(=[[0x1028]:8+280]:8) == 0, and falls through when a6(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0x2159a1c targets 0x2159a48, is taken when a7(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when a7(=[[[0x1028]:8+280]:8+280]) != 0.
  The `blez` branch at 0x2159a24 targets 0x2159a3c, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `bltz` branch at 0x2159a2c targets 0x2159a3c, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bne` branch at 0x2159a34 targets 0x2159a58, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The return at 0x2159a40 has v0 = 0x6.
  The return at 0x2159a50 has v0 = 0x5.
  The return at 0x2159aa8 has v0 = 0x0.

- `glXDestroyGLXVideoSourceSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2159ab0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2159ab0-0x2159bf0 (320 bytes).
  It occupies 320 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2159b20, `ld` at 0x2159b98.
  The `ld` at 0x2159b2c loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2159b38, `ld` at 0x2159b68, `ld` at 0x2159bec.
  The `ld` at 0x2159b3c loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2159b50 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2159b58 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2159b60, `sb` at 0x2159b94.
  The `ld` at 0x2159b64 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2159b70 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2159b78 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2159b7c stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x2159b84 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2159b8c stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2159b90 stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0x2159ba4 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2159bb0 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x2159adc calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2159afc calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x2159b0c calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0x2159b18 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0x2159b30 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?.
  The `jalr` at 0x2159ba8 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=0x10003, a4=0x10, a5=ret(__glXSetupForCommand), a6=[a0+152]:8+1, a7=[a0+176]:8+16.
  The `jalr` at 0x2159bbc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2159be0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8+16, a3=?, a5=ret(__glXSetupForCommand).
  The `beq` branch at 0x2159ae8 targets 0x2159bc8, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x2159af0 targets 0x2159bc4, is taken when s1(=a1) == 0, and falls through when s1(=a1) != 0.
  The `beq` branch at 0x2159b24 targets 0x2159b38, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2159b48 targets 0x2159bdc, is taken when a1(=[a0+184]:8) < a2(=[a0+176]:8+16) (unsigned), and falls through when a1(=[a0+184]:8) >= a2(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0x2159b9c targets 0x2159bb0, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2159bb4 targets 0x2159bc8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2159be8 targets 0x2159b4c and is always taken.
  The return at 0x2159bd4 has v0 = one of ret(__glXSetupForCommand), ?.

- `glXCreateGLXVideoSourceSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2159cc4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2159cc4-0x215a008 (836 bytes).
  It occupies 836 bytes.
  The `ld` at 0x2159d54 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `sb` at 0x2159d7c stores 1 byte to ret(__glXAddDrawableInterest) +0x2c.
  The `sw` at 0x2159d84 stores 4 bytes to ret(__glXAddDrawableInterest) +0x40.
  The `sd` at 0x2159d88 stores 8 bytes to ret(__glXAddDrawableInterest) +0x48.
  The `sw` at 0x2159d90 stores 4 bytes to ret(__glXAddDrawableInterest) +0xc.
  The `sd` at 0x2159d9c stores 8 bytes to ret(__glXAddDrawableInterest) +0x10.
  The `sd` at 0x2159dac stores 8 bytes to ret(__glXAddDrawableInterest) +0x18.
  3 such `ld` accesses load 8 bytes from abs 0x217d5a0, including `ld` at 0x2159dc4, `ld` at 0x2159e04, `ld` at 0x2159e38.
  The `sw` at 0x2159ddc stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x0.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2159e08, `sw` at 0x2159e1c, `sw` at 0x2159e50.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2159e84, `ld` at 0x2159f44.
  The `ld` at 0x2159e90 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2159ea0, `ld` at 0x2159ee4, `ld` at 0x2159fbc.
  The `ld` at 0x2159ea4 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2159ecc stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2159ed4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2159edc, `sb` at 0x2159f18.
  The `ld` at 0x2159ee0 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2159eec stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2159ef4 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2159ef8 stores 4 bytes to [a0+176]:8 +0x14.
  The `sw` at 0x2159efc stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2159f00 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x2159f08 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2159f10 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2159f14 stores 1 byte to [a0+176]:8 +0x1.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2159f1c, `lw` at 0x2159f24, `lw` at 0x2159f2c.
  The `sw` at 0x2159f20 stores 4 bytes to [a0+176]:8 +0x18.
  The `sw` at 0x2159f28 stores 4 bytes to [a0+176]:8 +0x1c.
  The `sw` at 0x2159f30 stores 4 bytes to [a0+176]:8 +0x20.
  The `sw` at 0x2159f38 stores 4 bytes to [a0+176]:8 +0x24.
  The `sw` at 0x2159f40 stores 4 bytes to [a0+176]:8 +0x28.
  The `ld` at 0x2159f50 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2159f60 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x2159cf8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2159d40 calls __glXInitializeVideoLibrary with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2159d58 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2159d68 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0x2159da8 calls __glXCreateVideoSourcePrivate with a0=ret(__glXAddDrawableInterest)+64, a1=0x3, a2=?, a3=?.
  The `jalr` at 0x2159dd8 calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x4, a4=sp-192.
  The `jalr` at 0x2159e18 calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x6, a4=sp-192.
  The `jalr` at 0x2159e4c calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x7, a4=sp-192.
  The `bgezall` at 0x2159e70 calls videoPackingToInternalFormat [0x2159bf0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2159e94 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?, a4=a0 at entry (arg0).
  The `jalr` at 0x2159f54 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=[a0+176]:8.
  The `jalr` at 0x2159f6c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2159f78 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2159fac calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8, a5=[a0+176]:8+44.
  The `jalr` at 0x2159fc4 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2159fd4 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2159fe8 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=a5 at entry (arg5), a3=?.
  The `jalr` at 0x2159ff8 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2159d04 targets 0x2159f88, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x2159d10 targets 0x2159d3c, is taken when s0(=a4) == v0(=0x2), and falls through when s0(=a4) != v0(=0x2).
  The `beq` branch at 0x2159d1c targets 0x2159d40, is taken when s0(=a4) == v1(=0x5), and falls through when s0(=a4) != v1(=0x5).
  The `beq` branch at 0x2159d48 targets 0x2159f9c, is taken when v0(=ret(__glXInitializeVideoLibrary)) == 0, and falls through when v0(=ret(__glXInitializeVideoLibrary)) != 0.
  The `beq` branch at 0x2159d70 targets 0x2159fa4, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `beq` branch at 0x2159db0 targets 0x2159fc0, is taken when v0(=ret(__glXCreateVideoSourcePrivate)) == 0, and falls through when v0(=ret(__glXCreateVideoSourcePrivate)) != 0.
  The `bltz` branch at 0x2159de0 targets 0x2159fd4, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `bltz` branch at 0x2159e20 targets 0x2159fe4, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `bltz` branch at 0x2159e54 targets 0x2159ff8, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `beq` branch at 0x2159e88 targets 0x2159ea0, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2159eb0 targets 0x2159fac, is taken when a4(=[a0+184]:8) < a5(=[a0+176]:8+44) (unsigned), and falls through when a4(=[a0+184]:8) >= a5(=[a0+176]:8+44) (unsigned).
  The `beq` branch at 0x2159f48 targets 0x2159f60, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2159f64 targets 0x2159f74, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2159f80 targets 0x2159d28 and is always taken.
  The `beq` branch at 0x2159f9c targets 0x2159d28 and is always taken.
  The `beq` branch at 0x2159fa4 targets 0x2159d28 and is always taken.
  The `beq` branch at 0x2159fb8 targets 0x2159eb8 and is always taken.
  The `beq` branch at 0x2159fcc targets 0x2159d28 and is always taken.
  The `beq` branch at 0x2159fdc targets 0x2159d28 and is always taken.
  The `beq` branch at 0x2159ff0 targets 0x2159d28 and is always taken.
  The `beq` branch at 0x215a000 targets 0x2159d28 and is always taken.
  The return at 0x2159d34 has v0 = one of 0x0, ?.
  The return at 0x2159f94 has v0 = 0x0.

- `glXSwapIntervalSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x215a158 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x215a158-0x215a310 (440 bytes).
  It occupies 440 bytes.
  2 such `ld` accesses load 8 bytes from abs 0x1028, including `ld` at 0x215a158, `ld` at 0x215a19c.
  The `ld` at 0x215a15c loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x215a184 loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `lw` at 0x215a190 loads 4 bytes from [[0x1028]:8+280]:8 +0x128.
  The `lw` at 0x215a1a0 loads 4 bytes from [0x1028]:8 +0x108.
  The `lw` at 0x215a1c0 loads 4 bytes from ([0x1028]:8 + ([[0x1028]:8+264] << 0x2)) +0x4.
  The `ld` at 0x215a1d8 loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `lw` at 0x215a200 loads 4 bytes from [[0x1028]:8+280]:8 +0x68.
  10 such `ld` accesses load 8 bytes from ?, including `ld` at 0x215a214, `ld` at 0x215a220, `ld` at 0x215a230.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x215a254, `sd` at 0x215a274, `sd` at 0x215a27c.
  The `sh` at 0x215a25c stores 2 bytes to ?.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0x215a264, `sb` at 0x215a290, `sb` at 0x215a294.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x215a280, `sw` at 0x215a284, `sw` at 0x215a28c.
  The `jalr` at 0x215a1bc calls ioctl with a0=[([0x1028]:8 + ([[0x1028]:8+264] << 0x2))+4], a1=0x3ee, a2=sp-64, a3=a3 at entry (arg3), a5=a0 at entry (arg0).
  The `jalr` at 0x215a208 calls __glXSetupForCommand with a0=[[[0x1028]:8+280]:8+312]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[[[0x1028]:8+280]:8+312]:8, a4=[[[0x1028]:8+280]:8+104], a5=a0 at entry (arg0).
  The `jalr` at 0x215a224 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x215a2a8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a5=a0 at entry (arg0), a7=0x10000.
  The `jalr` at 0x215a2c0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x215a2cc calls XFlush with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x215a2f4 calls _XFlush with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x215a174 targets 0x215a2e8, is taken when v0(=[[0x1028]:8+280]:8) == 0, and falls through when v0(=[[0x1028]:8+280]:8) != 0.
  The `blez` branch at 0x215a17c targets 0x215a308, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x215a188 targets 0x215a1d8, is taken when v1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `bne` branch at 0x215a1e0 targets 0x215a1f8, is taken when a3(=[[[0x1028]:8+280]:8+312]:8) != 0, and falls through when a3(=[[[0x1028]:8+280]:8+312]:8) == 0.
  The `beq` branch at 0x215a218 targets 0x215a22c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x215a240 targets 0x215a2f0, is taken when a5(?) < a6(?) (unsigned), and falls through when a5(?) >= a6(?) (unsigned).
  The `beq` branch at 0x215a29c targets 0x215a2b4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x215a2b8 targets 0x215a2c8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x215a2e8 targets 0x215a2dc and is always taken.
  The `beq` branch at 0x215a300 targets 0x215a244 and is always taken.
  The `beq` branch at 0x215a308 targets 0x215a2dc and is always taken.
  The return at 0x215a1d0 has v0 = 0x0.
  The return at 0x215a1f0 has v0 = 0x5.
  The return at 0x215a2e0 has v0 = one of 0x0, 0x5, 0x6.

- `__glx_ReadPixels` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2166718 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2166718-0x2166954 (572 bytes).
  It occupies 572 bytes.
  The `ld` at 0x2166734 loads 8 bytes from abs 0x1028.
  The `ld` at 0x216673c loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x2166744 loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `ld` at 0x2166770 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0x2166774, `ld` at 0x21668fc.
  The `ld` at 0x2166780 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0x216678c, `ld` at 0x21667d0, `ld` at 0x2166950.
  The `ld` at 0x2166790 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0x21667bc stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  The `sh` at 0x21667c4 stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0x21667c8, `sb` at 0x21667f0.
  The `ld` at 0x21667cc loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x21667d8 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x21667e0 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  The `lw` at 0x21667e4 loads 4 bytes from [[0x1028]:8+280]:8 +0x1a4.
  The `sb` at 0x21667ec stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `lw` at 0x21667f4 loads 4 bytes from [[0x1028]:8+280]:8 +0x68.
  The `sw` at 0x21667f8 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1c.
  The `sw` at 0x21667fc stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x18.
  The `sw` at 0x2166800 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x14.
  The `sw` at 0x2166804 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x10.
  The `sw` at 0x2166808 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8.
  The `sw` at 0x216680c stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0xc.
  The `sw` at 0x2166810 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `lbu` at 0x2166818 loads 1 byte from [[0x1028]:8+280]:8 +0x80.
  The `sb` at 0x2166824 stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x21.
  The `sb` at 0x2166830 stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x20.
  The `lw` at 0x2166874 loads 4 bytes from [[0x1028]:8+280]:8 +0xf0.
  The `sw` at 0x2166884 stores 4 bytes to [[0x1028]:8+280]:8 +0xf0.
  The `ld` at 0x2166908 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0x2166914 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `jalr` at 0x216676c calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2166784 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x216682c calls _XReply with a0=[[[0x1028]:8+280]:8+312]:8, a1=sp-160, a2=0x0, a3=0x0, a4=a0 at entry (arg0), a5=[[[0x1028]:8+280]:8+104], a6=0x6f, a7=[[[0x1028]:8+280]:8+420].
  The `jalr` at 0x2166854 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x216686c calls _XEatData with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x21668a0 calls _XRead with a0=[[[0x1028]:8+280]:8+312]:8, a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x21668c4 calls _XEatData with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x21668e8 calls __glXEmptyImage with a0=[[0x1028]:8+280]:8, a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a5 at entry (arg5).
  The `jalr` at 0x21668f4 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x216690c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2166920 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2166944 calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=a1 at entry (arg1).
  The `beq` branch at 0x216675c targets 0x2166928, is taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0x2166778 targets 0x216678c, is taken when v0(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when v0(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0x216679c targets 0x2166940, is taken when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+36) (unsigned), and falls through when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+36) (unsigned).
  The `beq` branch at 0x216683c targets 0x21668fc, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x216685c targets 0x2166888, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bne` branch at 0x2166878 targets 0x21668fc, is taken when a2(=[[[0x1028]:8+280]:8+240]) != 0, and falls through when a2(=[[[0x1028]:8+280]:8+240]) == 0.
  The `beq` branch at 0x2166880 targets 0x21668fc and is always taken.
  The `beq` branch at 0x21668b0 targets 0x21668d0, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `beq` branch at 0x2166900 targets 0x2166914, is taken when v0(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when v0(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0x2166918 targets 0x216692c, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0x216694c targets 0x21667a0 and is always taken.
  The return at 0x2166938 has v0 = ?.

- `isNotProxy` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2166f68 (n64).
  Inferred: this is a graphics-init probe of '/dev/opengl' that runs when the signed word at arg0+0x40 is below 0x40, since the string at 0x2178560 is that path and the linked ioctl rows for 0x65 and 0x66 tag their requests as graphics init with no handler named. Below 0x40 (`bne` at 0x2166f7c jumps), the routine opens the path with flags 0x802 (`jalr` at 0x2166fa0), and a failed open (`bltz` at 0x2166fa8) returns 0 from 0x21670b4; 0x40 or more falls through to a return of 0 at the shared return 0x2166f88. fcntl follows (`jalr` at 0x2166fbc) with 0x2 and 0x5 as its second and third arguments, and a negative answer (`bltz` at 0x2166fc4) closes the descriptor (`jalr` at 0x21670cc) before 0 comes back through 0x2166f88 (`beq` at 0x21670d8). Request 0x65 (`jalr` at 0x2166fd8) passes zero as its third argument, and a result of 0 or less (`blez` at 0x2166fe0) closes the descriptor (`jalr` at 0x21670f8) and returns 0 (`beq` at 0x2167104). The `bne` at 0x2166ff4 compares the word at arg0+0x40 with that result (signed); when the word is not below, the descriptor is closed and 0 returns (`jalr` at 0x2166ffc, return at 0x216700c), and when it is below, request 0x66 (`jalr` at 0x2167034) runs on a request block at the frame base that holds the word at arg0+0x40 at +0 (`sw` at 0x2167038), the address of frame +0x18 at +8 (`sd` at 0x2167024) and 0x28 at +0x10 (`sw` at 0x2167018), and a negative result closes the descriptor (`jalr` at 0x21670e4) and returns 0 (`beq` at 0x21670f0). After a non-negative request 0x66 the descriptor is closed (`jalr` at 0x2167044) and strchr searches the string at the pointer found at offset 0xd8 from the 8-byte word at arg0+0x198 for 0x3a (`jalr` at 0x2167058; `sd` at 0x2166f80 saves that word to frame +0x40), with a nil result returning 0 (`beq` at 0x2167064). The byte at the pointer strchr returned is compared with frame +0x28 (`lbu` at 0x216706c and 0x2167070, `bne` at 0x2167074, a mismatch returning 0 at 0x21670a4); the bytes after it are then compared one per pass with frame bytes read from frame +0x18 with displacement 0x11 (`lbu` at 0x216708c and 0x2167090, `beq` at 0x2167098), and a '.' (0x2e) or the end of the string sets the return to 1 (`addiu` at 0x21670c8).
  Unknown: which frame bytes from +0x18 plus 0x11 on carry the reply to request 0x66, since the bundle has no reply layout for it; the handler's entry for 0x66 would settle it.
  Evidence grade: inferred.

- `CreateContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2167248.
  Grade: inferred.
  The 64-bit GLX context creation, with the same call sequence as the 32-bit build. It calls __glXInitialize at 0x2167280, allocates a 0x1c8-byte record with calloc at 0x216729c, and reads an environment variable, whose name is at 0x2178598, through getenv at 0x2167354. It builds the direct context with __glXCreateDirectContext at 0x2167400, sets vertex-array state at 0x21674c4, and maps visual ids through __glXOverrideVisualsIdToXid at 0x2167814. The environment variable and the record layout are not identified.
  Reviewed: 2026-11-12

- `glXGetCurrentDisplay` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x216b288 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x216b288-0x216b2e0 (88 bytes).
  It occupies 88 bytes.
  The `ld` at 0x216b2ac loads 8 bytes from abs 0x1028.
  The `ld` at 0x216b2b0 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x216b2d0 loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `jalr` at 0x216b2a4 calls __glXInitThread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x216b2bc targets 0x216b2cc, is taken when a2(=[[0x1028]:8+280]:8) != 0, and falls through when a2(=[[0x1028]:8+280]:8) == 0.
  The return at 0x216b2c4 has v0 = 0x0.
  The return at 0x216b2d8 has v0 = [[[0x1028]:8+280]:8+312]:8.

- `glXGetFBConfigAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x216b904 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x216b904-0x216beec (1512 bytes).
  It occupies 1512 bytes.
  The `lbu` at 0x216b930 loads 1 byte from a1 (arg1 at entry) +0xa0.
  37 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x216b934, `sw` at 0x216b99c, `sw` at 0x216b9e0.
  2 such `ldc1` accesses load 8 bytes from a1 (arg1 at entry) +0xa8, including `ldc1` at 0x216b938, `ldc1` at 0x216be18.
  8 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `swc1` at 0x216b948, `swc1` at 0x216bbbc, `swc1` at 0x216bcac.
  The `lw` at 0x216b990 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x216b9d4 loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lw` at 0x216ba28 loads 4 bytes from a1 (arg1 at entry) +0x40.
  The `lw` at 0x216ba6c loads 4 bytes from a1 (arg1 at entry) +0x98.
  The `lw` at 0x216ba7c loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lw` at 0x216bac0 loads 4 bytes from a1 (arg1 at entry) +0x94.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x20, including `lw` at 0x216bafc, `lw` at 0x216bcb8.
  The `lw` at 0x216bb34 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x216bb5c loads 4 bytes from a1 (arg1 at entry) +0x9c.
  The `lw` at 0x216bb6c loads 4 bytes from a1 (arg1 at entry) +0x54.
  The `ldc1` at 0x216bbac loads 8 bytes from a1 (arg1 at entry) +0xc8.
  The `lw` at 0x216bbdc loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0x216bbfc loads 4 bytes from a1 (arg1 at entry) +0x5c.
  The `lw` at 0x216bc1c loads 4 bytes from a1 (arg1 at entry) +0x78.
  The `lw` at 0x216bc44 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lw` at 0x216bc64 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x216bc74 loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `ldc1` at 0x216bc9c loads 8 bytes from a1 (arg1 at entry) +0xb0.
  The `lw` at 0x216bcd0 loads 4 bytes from a1 (arg1 at entry) +0x58.
  The `lw` at 0x216bce8 loads 4 bytes from a1 (arg1 at entry) +0x74.
  The `lbu` at 0x216bd00 loads 1 byte from a1 (arg1 at entry) +0x4f.
  The `lw` at 0x216bd10 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `lw` at 0x216bd20 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `ldc1` at 0x216bd4c loads 8 bytes from a1 (arg1 at entry) +0xe0.
  The `lw` at 0x216bd6c loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lw` at 0x216bd88 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lw` at 0x216bda0 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lw` at 0x216bdb8 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0x216bdd0 loads 4 bytes from a1 (arg1 at entry) +0x64.
  The `lbu` at 0x216bde0 loads 1 byte from a1 (arg1 at entry) +0x4e.
  The `lw` at 0x216bdf8 loads 4 bytes from a1 (arg1 at entry) +0x3c.
  The `ldc1` at 0x216be1c loads 8 bytes from a1 (arg1 at entry) +0xd0.
  The `lw` at 0x216be30 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `lw` at 0x216be40 loads 4 bytes from a1 (arg1 at entry) +0x60.
  The `lw` at 0x216be50 loads 4 bytes from a1 (arg1 at entry) +0x7c.
  The `ldc1` at 0x216be68 loads 8 bytes from a1 (arg1 at entry) +0xd8.
  The `ldc1` at 0x216be84 loads 8 bytes from a1 (arg1 at entry) +0xc0.
  The `lw` at 0x216be98 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `lw` at 0x216bea8 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `ldc1` at 0x216beb8 loads 8 bytes from a1 (arg1 at entry) +0xb8.
  The `lw` at 0x216becc loads 4 bytes from a1 (arg1 at entry) +0x90.
  The `lw` at 0x216bedc loads 4 bytes from a1 (arg1 at entry) +0x6c.
  The `bne` branch at 0x216b908 targets 0x216b94c, is taken when a2 < 0x28 (signed), and falls through when a2 >= 0x28 (signed).
  The `bne` branch at 0x216b914 targets 0x216ba7c, is taken when a2 < 0x29 (signed), and falls through when a2 >= 0x29 (signed).
  The `bne` branch at 0x216b920 targets 0x216b9e4, is taken when a2 < v0(=0x8028) (signed), and falls through when a2 >= v0(=0x8028) (signed).
  The `bne` branch at 0x216b928 targets 0x216ba8c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0x216b94c targets 0x216b9a0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x216b958 targets 0x216bb6c, is taken when a2 < 0xf (signed), and falls through when a2 >= 0xf (signed).
  The `bne` branch at 0x216b960 targets 0x216bb10, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x216b96c targets 0x216bd20, is taken when a2 < 0x24 (signed), and falls through when a2 >= 0x24 (signed).
  The `bne` branch at 0x216b974 targets 0x216bc54, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x216b980 targets 0x216bea8, is taken when a2 < 0x27 (signed), and falls through when a2 >= 0x27 (signed).
  The `bne` branch at 0x216b988 targets 0x216ba40, is taken when a2 != a7(=0x27), and falls through when a2 == a7(=0x27).
  The `bne` branch at 0x216b9a0 targets 0x216ba48, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x216b9a8 targets 0x216bc74, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x216b9b0 targets 0x216bc0c, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x216b9bc targets 0x216be50, is taken when a2 < 0xc (signed), and falls through when a2 >= 0xc (signed).
  The `bne` branch at 0x216b9c4 targets 0x216bdc8, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x216b9cc targets 0x216ba40, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x216b9ec targets 0x216bad0, is taken when a2 < v0(=0x8013) (signed), and falls through when a2 >= v0(=0x8013) (signed).
  The `beq` branch at 0x216b9f4 targets 0x216bd10, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x216ba00 targets 0x216bc2c, is taken when a2 < v0(=0x8018) (signed), and falls through when a2 >= v0(=0x8018) (signed).
  The `beq` branch at 0x216ba08 targets 0x216be98, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x216ba14 targets 0x216bdf0, is taken when a2 < v0(=0x801a) (signed), and falls through when a2 >= v0(=0x801a) (signed).
  The `bne` branch at 0x216ba20 targets 0x216ba40, is taken when v0(=0x801a) < a2 (signed), and falls through when v0(=0x801a) >= a2 (signed).
  The `beq` branch at 0x216ba38 targets 0x216bedc, is taken when a2 == a7(=0x2), and falls through when a2 != a7(=0x2).
  The `bne` branch at 0x216ba4c targets 0x216bb44, is taken when a2 < 0x5 (signed), and falls through when a2 >= 0x5 (signed).
  The `bne` branch at 0x216ba54 targets 0x216bde0, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x216ba5c targets 0x216bcf8, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x216ba64 targets 0x216ba40, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x216ba90 targets 0x216bb7c, is taken when a2 < v0(=0x802e) (signed), and falls through when a2 >= v0(=0x802e) (signed).
  The `beq` branch at 0x216ba98 targets 0x216be1c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x216baa8 targets 0x216bd30, is taken when a2 < a5(=0x186a0) (signed), and falls through when a2 >= a5(=0x186a0) (signed).
  The `beq` branch at 0x216bab0 targets 0x216becc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x216bab8 targets 0x216ba40, is taken when a2 != a4(=0x186a1), and falls through when a2 == a4(=0x186a1).
  The `bne` branch at 0x216bad8 targets 0x216bbc0, is taken when a2 < v0(=0x8010) (signed), and falls through when a2 >= v0(=0x8010) (signed).
  The `beq` branch at 0x216bae0 targets 0x216be30, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x216baec targets 0x216bd7c, is taken when a2 < v0(=0x8012) (signed), and falls through when a2 >= v0(=0x8012) (signed).
  The `bne` branch at 0x216baf4 targets 0x216ba40, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x216bb10 targets 0x216bbec, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x216bb1c targets 0x216be40, is taken when a2 < 0x12 (signed), and falls through when a2 >= 0x12 (signed).
  The `bne` branch at 0x216bb24 targets 0x216bdb0, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x216bb2c targets 0x216ba40, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x216bb48 targets 0x216ba38, is taken when a2 < 0x3 (signed), and falls through when a2 >= 0x3 (signed).
  The `beq` branch at 0x216bb54 targets 0x216ba40, is taken when a2 >= 0x4 (signed), and falls through when a2 < 0x4 (signed).
  The `bne` branch at 0x216bb84 targets 0x216bc84, is taken when a2 < v0(=0x802b) (signed), and falls through when a2 >= v0(=0x802b) (signed).
  The `beq` branch at 0x216bb8c targets 0x216beb8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x216bb98 targets 0x216be7c, is taken when a2 < v0(=0x802d) (signed), and falls through when a2 >= v0(=0x802d) (signed).
  The `bne` branch at 0x216bba4 targets 0x216ba40, is taken when v0(=0x802d) < a2 (signed), and falls through when v0(=0x802d) >= a2 (signed).
  The `bne` branch at 0x216bbc8 targets 0x216bcb0, is taken when a2 < v0(=0x800c) (signed), and falls through when a2 >= v0(=0x800c) (signed).
  The `bne` branch at 0x216bbd4 targets 0x216ba40, is taken when v0(=0x800c) < a2 (signed), and falls through when v0(=0x800c) >= a2 (signed).
  The `bne` branch at 0x216bbec targets 0x216bcc8, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x216bbf4 targets 0x216ba40, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x216bc0c targets 0x216bce0, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x216bc14 targets 0x216ba40, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x216bc34 targets 0x216bd60, is taken when a2 < v0(=0x8017) (signed), and falls through when a2 >= v0(=0x8017) (signed).
  The `bne` branch at 0x216bc3c targets 0x216ba40, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0x216bc54 targets 0x216bd98, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x216bc5c targets 0x216ba40, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x216bc8c targets 0x216be08, is taken when a2 < v0(=0x802a) (signed), and falls through when a2 >= v0(=0x802a) (signed).
  The `bne` branch at 0x216bc94 targets 0x216ba40, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x216bcb0 targets 0x216ba40, is taken when a2 != t1(=0x800b), and falls through when a2 == t1(=0x800b).
  The `bne` branch at 0x216bcc8 targets 0x216ba40, is taken when a2 != t3(=0xf), and falls through when a2 == t3(=0xf).
  The `bne` branch at 0x216bce0 targets 0x216ba40, is taken when a2 != t9(=0x9), and falls through when a2 == t9(=0x9).
  The `bne` branch at 0x216bcf8 targets 0x216ba40, is taken when a2 != v0(=0x6), and falls through when a2 == v0(=0x6).
  The `bne` branch at 0x216bd38 targets 0x216be60, is taken when a2 < v0(=0x8030) (signed), and falls through when a2 >= v0(=0x8030) (signed).
  The `bne` branch at 0x216bd44 targets 0x216ba40, is taken when v0(=0x8030) < a2 (signed), and falls through when v0(=0x8030) >= a2 (signed).
  The `bne` branch at 0x216bd64 targets 0x216ba40, is taken when a2 != a6(=0x8016), and falls through when a2 == a6(=0x8016).
  The `bne` branch at 0x216bd80 targets 0x216ba40, is taken when a2 != t0(=0x8011), and falls through when a2 == t0(=0x8011).
  The `bne` branch at 0x216bd98 targets 0x216ba40, is taken when a2 != t2(=0x24), and falls through when a2 == t2(=0x24).
  The `bne` branch at 0x216bdb0 targets 0x216ba40, is taken when a2 != t8(=0x20), and falls through when a2 == t8(=0x20).
  The `bne` branch at 0x216bdc8 targets 0x216ba40, is taken when a2 != at(=0xc), and falls through when a2 == at(=0xc).
  The `bne` branch at 0x216bdf0 targets 0x216ba40, is taken when a2 != a0(=0x8019), and falls through when a2 == a0(=0x8019).
  The `bne` branch at 0x216be0c targets 0x216ba40, is taken when a2 != a4(=0x8029), and falls through when a2 == a4(=0x8029).
  The `beq` branch at 0x216be14 targets 0x216b93c and is always taken.
  The `bne` branch at 0x216be60 targets 0x216ba40, is taken when a2 != t0(=0x802f), and falls through when a2 == t0(=0x802f).
  The `bne` branch at 0x216be7c targets 0x216ba40, is taken when a2 != t1(=0x802c), and falls through when a2 == t1(=0x802c).
  The return at 0x216b944 has v0 = 0x0.
  The return at 0x216b998 has v0 = 0x0.
  The return at 0x216b9dc has v0 = 0x0.
  The return at 0x216ba30 has v0 = 0x0.
  The return at 0x216ba40 has v0 = 0x2.
  The return at 0x216ba74 has v0 = 0x0.
  The return at 0x216ba84 has v0 = 0x0.
  The return at 0x216bac8 has v0 = 0x0.
  The return at 0x216bb08 has v0 = 0x0.
  The return at 0x216bb3c has v0 = 0x0.
  The return at 0x216bb64 has v0 = 0x0.
  The return at 0x216bb74 has v0 = 0x0.
  The return at 0x216bbb8 has v0 = 0x0.
  The return at 0x216bbe4 has v0 = 0x0.
  The return at 0x216bc04 has v0 = 0x0.
  The return at 0x216bc24 has v0 = 0x0.
  The return at 0x216bc4c has v0 = 0x0.
  The return at 0x216bc6c has v0 = 0x0.
  The return at 0x216bc7c has v0 = 0x0.
  The return at 0x216bca8 has v0 = 0x0.
  The return at 0x216bcc0 has v0 = 0x0.
  The return at 0x216bcd8 has v0 = 0x0.
  The return at 0x216bcf0 has v0 = 0x0.
  The return at 0x216bd08 has v0 = 0x0.
  The return at 0x216bd18 has v0 = 0x0.
  The return at 0x216bd28 has v0 = 0x0.
  The return at 0x216bd58 has v0 = 0x0.
  The return at 0x216bd74 has v0 = 0x0.
  The return at 0x216bd90 has v0 = 0x0.
  The return at 0x216bda8 has v0 = 0x0.
  The return at 0x216bdc0 has v0 = 0x0.
  The return at 0x216bdd8 has v0 = 0x0.
  The return at 0x216bde8 has v0 = 0x0.
  The return at 0x216be00 has v0 = 0x0.
  The return at 0x216be28 has v0 = 0x0.
  The return at 0x216be38 has v0 = 0x0.
  The return at 0x216be48 has v0 = 0x0.
  The return at 0x216be58 has v0 = 0x0.
  The return at 0x216be74 has v0 = 0x0.
  The return at 0x216be90 has v0 = 0x0.
  The return at 0x216bea0 has v0 = 0x0.
  The return at 0x216beb0 has v0 = 0x0.
  The return at 0x216bec4 has v0 = 0x0.
  The return at 0x216bed4 has v0 = 0x0.
  The return at 0x216bee4 has v0 = 0x0.

- `glXGetFBConfigFltAttribSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x216bf38 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x216bf38-0x216c04c (276 bytes).
  It occupies 276 bytes.
  The `ld` at 0x216bf70 loads 8 bytes from table(0x21785f0) +0x0.
  The `ldc1` at 0x216bf7c loads 8 bytes from a1 (arg1 at entry) +0xa8.
  9 such `sdc1` accesses store 8 bytes to a3 (arg3 at entry) +0x0, including `sdc1` at 0x216bf88, `sdc1` at 0x216bfb8, `sdc1` at 0x216bfd8.
  The `ldc1` at 0x216bfcc loads 8 bytes from a1 (arg1 at entry) +0xe0.
  The `ldc1` at 0x216bfdc loads 8 bytes from a1 (arg1 at entry) +0xd8.
  The `ldc1` at 0x216bfec loads 8 bytes from a1 (arg1 at entry) +0xd0.
  The `ldc1` at 0x216bffc loads 8 bytes from a1 (arg1 at entry) +0xc8.
  The `ldc1` at 0x216c00c loads 8 bytes from a1 (arg1 at entry) +0xc0.
  The `ldc1` at 0x216c01c loads 8 bytes from a1 (arg1 at entry) +0xb8.
  The `ldc1` at 0x216c034 loads 8 bytes from a1 (arg1 at entry) +0xb0.
  The `jalr` at 0x216bf98 calls glXGetFBConfigAttribSGIX with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-32.
  The `beq` branch at 0x216bf68 targets 0x216bf8c, is taken when v1(=a2-32809) >= 0x8 (unsigned), and falls through when v1(=a2-32809) < 0x8 (unsigned).
  The `beq` branch at 0x216bf84 targets 0x216bfbc and is always taken.
  The `beq` branch at 0x216bfd4 targets 0x216bfbc and is always taken.
  The `beq` branch at 0x216bfe4 targets 0x216bfbc and is always taken.
  The `beq` branch at 0x216bff4 targets 0x216bfbc and is always taken.
  The `beq` branch at 0x216c004 targets 0x216bfbc and is always taken.
  The `beq` branch at 0x216c014 targets 0x216bfbc and is always taken.
  The return at 0x216bfc4 has v0 = one of 0x0, ret(glXGetFBConfigAttribSGIX).
  The return at 0x216c02c has v0 = 0x0.
  The return at 0x216c044 has v0 = 0x0.
  The indirect jump at 0x216bf74 uses the jump table at 0x21785f0 with targets 0x216bf7c, 0x216c034, 0x216c01c, 0x216c00c, 0x216bffc, 0x216bfec, 0x216bfdc, 0x216bfcc.

- `glXChooseFBConfigWithFltSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x216c498 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x216c498-0x216d8b8 (5152 bytes).
  It occupies 5152 bytes.
  The `lw` at 0x216c654 loads 4 bytes from a2 (arg2 at entry) +0x0.
  75 such `lw` accesses load 4 bytes from ?, including `lw` at 0x216c6c4, `lw` at 0x216c6e0, `lw` at 0x216c6ec.
  The `ldc1` at 0x216c7a8 loads 8 bytes from a3 (arg3 at entry) +0x0.
  18 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0x216c7c4, `ldc1` at 0x216c7e0, `ldc1` at 0x216c7f4.
  The `ld` at 0x216c820 loads 8 bytes from table(0x2178630) +0x0.
  The `lw` at 0x216c87c loads 4 bytes from a0 (arg0 at entry) +0xe4.
  The `ld` at 0x216c88c loads 8 bytes from ret(__glXInitialize) +0x30.
  The `ld` at 0x216c898 loads 8 bytes from ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x18.
  The `lw` at 0x216c8a0 loads 4 bytes from ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x20.
  The `lw` at 0x216c8d4 loads 4 bytes from [([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8 +0x48.
  13 such `sw` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `sw` at 0x216c920, `sw` at 0x216c9d4, `sw` at 0x216cb94.
  7 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x216ca78, `lbu` at 0x216ce74, `lbu` at 0x216cf5c.
  The `sd` at 0x216cd9c stores 8 bytes to ret(malloc) +0x0.
  16 such `sd` accesses store 8 bytes to ?, including `sd` at 0x216d160, `sd` at 0x216d184, `sd` at 0x216d18c.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0x216d340, `ld` at 0x216d358, `ld` at 0x216d370.
  The `lw` at 0x216d8b4 loads 4 bytes from [([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8 +0x44.
  The `jalr` at 0x216c85c calls __glXInitialize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x216cba0 calls malloc with a0=0x8, a1=one of 0x0, 0x1, a2=ret(__glXInitialize), a3=?, a7=a1 at entry (arg1).
  The `jalr` at 0x216d108 calls malloc with a0=([([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32] << 0x3), a1=one of 0x0, 0x1, a2=ret(__glXInitialize), a3=?, a7=a1 at entry (arg1).
  The `jalr` at 0x216d2d4 calls malloc with a0=([([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32] << 0x3), a1=([([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32] << 0x3), a2=ret(malloc), a3=?.
  The `jalr` at 0x216d52c calls free with a0=ret(malloc), a1=?, a2=?, a3=?, a7=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32].
  The `jalr` at 0x216d578 calls free with a0=ret(malloc), a1=?, a2=?, a3=?, a7=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32].
  The `jalr` at 0x216d594 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `bgezall` at 0x216d7f8 calls (unnamed) [0x216c080] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x216c64c targets 0x216c778, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x216c658 targets 0x216cf74, is taken when t0(=[a2]) == 0, and falls through when t0(=[a2]) != 0.
  The `beq` branch at 0x216c6b8 targets 0x216c6ec and is always taken.
  The `beq` branch at 0x216c6d8 targets 0x216c7a0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x216c6e4 targets 0x216c7a0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x216c6f4 targets 0x216c748, is taken when v0(?) < 0x26 (signed), and falls through when v0(?) >= 0x26 (signed).
  The `bne` branch at 0x216c700 targets 0x216c6c0, is taken when v0(?) < 0x27 (signed), and falls through when v0(?) >= 0x27 (signed).
  The `bne` branch at 0x216c70c targets 0x216ca04, is taken when v0(?) < a2(=0x8029) (signed), and falls through when v0(?) >= a2(=0x8029) (signed).
  The `bne` branch at 0x216c718 targets 0x216ca8c, is taken when a2(=0x8029) < v0(?) (signed), and falls through when a2(=0x8029) >= v0(?) (signed).
  The `beq` branch at 0x216c738 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216c74c targets 0x216c82c, is taken when v0(?) < 0xd (signed), and falls through when v0(?) >= 0xd (signed).
  The `beq` branch at 0x216c758 targets 0x216ca34, is taken when v0(?) >= 0xe (signed), and falls through when v0(?) < 0xe (signed).
  The `beq` branch at 0x216c770 targets 0x216c6d8 and is always taken.
  The `beq` branch at 0x216c7a0 targets 0x216c85c, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0x216c7b4 targets 0x216c858, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x216c7bc targets 0x216c7f4 and is always taken.
  The `beq` branch at 0x216c7d8 targets 0x216c85c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x216c7ec targets 0x216c85c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x216c818 targets 0x216c9cc, is taken when v1(=table(-0x8029)) >= 0x8 (unsigned), and falls through when v1(=table(-0x8029)) < 0x8 (unsigned).
  The `bne` branch at 0x216c82c targets 0x216ca64, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x216c838 targets 0x216cb18, is taken when v0(?) >= 0x9 (signed), and falls through when v0(?) < 0x9 (signed).
  The `beq` branch at 0x216c850 targets 0x216c6d8 and is always taken.
  The `beq` branch at 0x216c864 targets 0x216cbc0, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `bltz` branch at 0x216c870 targets 0x216cb68, is taken when a7(=a1) < 0 (signed), and falls through when a7(=a1) >= 0 (signed).
  The `beq` branch at 0x216c884 targets 0x216cb68, is taken when t0(=a1) >= t1(=[a0+228]) (signed), and falls through when t0(=a1) < t1(=[a0+228]) (signed).
  The `beq` branch at 0x216c89c targets 0x216cd54, is taken when a0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8) == 0, and falls through when a0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8) != 0.
  The `beq` branch at 0x216c8a4 targets 0x216cd54, is taken when v0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) == 0, and falls through when v0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) != 0.
  The `beq` branch at 0x216c8ac targets 0x216d0f4, is taken when a1(=one of 0x0, 0x1) == 0, and falls through when a1(=one of 0x0, 0x1) != 0.
  The `blez` branch at 0x216c8b4 targets 0x216c8ec, is taken when v0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed), and falls through when v0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  The `beq` branch at 0x216c8d8 targets 0x216cba0, is taken when t8(?) == s2(?), and falls through when t8(?) != s2(?).
  The `bnel` branch at 0x216c8e4 targets 0x216c8d8, is taken when s0(?) != s1(?), and falls through when s0(?) == s1(?); its branch-likely delay slot `lw t8,72(s0)` at 0x216c8e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x216c934 targets 0x216c7d8 and is always taken.
  The `beq` branch at 0x216c94c targets 0x216c7d8 and is always taken.
  The `beq` branch at 0x216c964 targets 0x216c7d8 and is always taken.
  The `beq` branch at 0x216c97c targets 0x216c7d8 and is always taken.
  The `beq` branch at 0x216c994 targets 0x216c7d8 and is always taken.
  The `beq` branch at 0x216c9ac targets 0x216c7d8 and is always taken.
  The `beq` branch at 0x216c9c4 targets 0x216c7d8 and is always taken.
  The `bne` branch at 0x216ca04 targets 0x216cabc, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x216ca10 targets 0x216cc30, is taken when a3(=0x8013) < v0(?) (signed), and falls through when a3(=0x8013) >= v0(?) (signed).
  The `beq` branch at 0x216ca2c targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216ca34 targets 0x216cae8, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x216ca3c targets 0x216cc58, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x216ca5c targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216ca64 targets 0x216cb40, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x216ca6c targets 0x216cd10, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x216ca84 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216ca8c targets 0x216cbf8, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `bne` branch at 0x216ca94 targets 0x216cda0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x216cab4 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216cabc targets 0x216cc8c, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x216cac8 targets 0x216ce64, is taken when t1(=0x8010) < v0(?) (signed), and falls through when t1(=0x8010) >= v0(?) (signed).
  The `beq` branch at 0x216cae0 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216caec targets 0x216ccbc, is taken when v0(?) < 0x10 (signed), and falls through when v0(?) >= 0x10 (signed).
  The `beq` branch at 0x216caf8 targets 0x216ceac, is taken when v0(?) >= 0x11 (signed), and falls through when v0(?) < 0x11 (signed).
  The `beq` branch at 0x216cb10 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216cb18 targets 0x216cce4, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x216cb20 targets 0x216cecc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x216cb38 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216cb44 targets 0x216cd38, is taken when v0(?) < 0x3 (signed), and falls through when v0(?) >= 0x3 (signed).
  The `beq` branch at 0x216cb4c targets 0x216cdcc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x216cb60 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216cba8 targets 0x216cd8c, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0x216cbb8 targets 0x216c9d8 and is always taken.
  The `bne` branch at 0x216cbfc targets 0x216ce04, is taken when v0(?) < t3(=0x802c) (signed), and falls through when v0(?) >= t3(=0x802c) (signed).
  The `bne` branch at 0x216cc08 targets 0x216cfd0, is taken when t3(=0x802c) < v0(?) (signed), and falls through when t3(=0x802c) >= v0(?) (signed).
  The `beq` branch at 0x216cc28 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216cc30 targets 0x216ce34, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x216cc38 targets 0x216cff8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x216cc50 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216cc58 targets 0x216ce84, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x216cc64 targets 0x216d018, is taken when v0(?) >= 0x25 (signed), and falls through when v0(?) < 0x25 (signed).
  The `beq` branch at 0x216cc84 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216cc8c targets 0x216ceec, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x216cc98 targets 0x216cdcc, is taken when v0(?) >= 0x29 (signed), and falls through when v0(?) < 0x29 (signed).
  The `beq` branch at 0x216ccb4 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216ccbc targets 0x216cf10, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x216ccc4 targets 0x216cdcc, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x216ccdc targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216cce8 targets 0x216cf34, is taken when v0(?) < 0xa (signed), and falls through when v0(?) >= 0xa (signed).
  The `beq` branch at 0x216ccf0 targets 0x216cdcc, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x216cd08 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216cd10 targets 0x216cf54, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x216cd18 targets 0x216cdcc, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x216cd30 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216cd38 targets 0x216cdcc, is taken when v0(?) != a0(=0x2), and falls through when v0(?) == a0(=0x2).
  The `beq` branch at 0x216cd4c targets 0x216c6d8 and is always taken.
  The `beq` branch at 0x216cd98 targets 0x216c9d8 and is always taken.
  The `bne` branch at 0x216cda0 targets 0x216cfa0, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x216cdac targets 0x216d0d0, is taken when t8(=0x186a0) < v0(?) (signed), and falls through when t8(=0x186a0) >= v0(?) (signed).
  The `beq` branch at 0x216cdc4 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216ce04 targets 0x216d03c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x216ce0c targets 0x216cdcc, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x216ce2c targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216ce38 targets 0x216d068, is taken when v0(?) < ra(=0x8017) (signed), and falls through when v0(?) >= ra(=0x8017) (signed).
  The `bne` branch at 0x216ce44 targets 0x216cdcc, is taken when ra(=0x8017) < v0(?) (signed), and falls through when ra(=0x8017) >= v0(?) (signed).
  The `beq` branch at 0x216ce5c targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216ce64 targets 0x216d088, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x216ce6c targets 0x216cdcc, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x216ce7c targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216ce84 targets 0x216d0ac, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x216ce8c targets 0x216cdcc, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x216cea4 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216ceac targets 0x216cdcc, is taken when v0(?) != a5(=0x11), and falls through when v0(?) == a5(=0x11).
  The `beq` branch at 0x216cec4 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216cecc targets 0x216cdcc, is taken when v0(?) != a7(=0xc), and falls through when v0(?) == a7(=0xc).
  The `beq` branch at 0x216cee4 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216ceec targets 0x216cdcc, is taken when v0(?) != v1(=0x27), and falls through when v0(?) == v1(=0x27).
  The `beq` branch at 0x216cf08 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216cf14 targets 0x216cdcc, is taken when v0(?) != a7(=0xe), and falls through when v0(?) == a7(=0xe).
  The `beq` branch at 0x216cf2c targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216cf34 targets 0x216cdcc, is taken when v0(?) != v1(=0x9), and falls through when v0(?) == v1(=0x9).
  The `beq` branch at 0x216cf4c targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216cf54 targets 0x216cdcc, is taken when v0(?) != a6(=0x6), and falls through when v0(?) == a6(=0x6).
  The `beq` branch at 0x216cf6c targets 0x216c6d8 and is always taken.
  The `beq` branch at 0x216cf98 targets 0x216c7a0 and is always taken.
  The `bne` branch at 0x216cfa0 targets 0x216d1d4, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x216cfa8 targets 0x216cdcc, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x216cfc8 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216cfd0 targets 0x216cdcc, is taken when v0(?) != a6(=0x802d), and falls through when v0(?) == a6(=0x802d).
  The `beq` branch at 0x216cff0 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216cff8 targets 0x216cdcc, is taken when v0(?) != at(=0x8028), and falls through when v0(?) == at(=0x8028).
  The `beq` branch at 0x216d010 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216d018 targets 0x216cdcc, is taken when v0(?) != a5(=0x25), and falls through when v0(?) == a5(=0x25).
  The `beq` branch at 0x216d034 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216d040 targets 0x216cdcc, is taken when v0(?) != at(=0x802a), and falls through when v0(?) == at(=0x802a).
  The `beq` branch at 0x216d060 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216d068 targets 0x216cdcc, is taken when v0(?) != a5(=0x8016), and falls through when v0(?) == a5(=0x8016).
  The `beq` branch at 0x216d080 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216d08c targets 0x216cdcc, is taken when v0(?) != a7(=0x8011), and falls through when v0(?) == a7(=0x8011).
  The `beq` branch at 0x216d0a4 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216d0ac targets 0x216cdcc, is taken when v0(?) != v1(=0x22), and falls through when v0(?) == v1(=0x22).
  The `beq` branch at 0x216d0c8 targets 0x216c6d8 and is always taken.
  The `bne` branch at 0x216d0d4 targets 0x216cdcc, is taken when v0(?) != a7(=0x186a1), and falls through when v0(?) == a7(=0x186a1).
  The `beq` branch at 0x216d0ec targets 0x216c6d8 and is always taken.
  The `beq` branch at 0x216d110 targets 0x216d554, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `bne` branch at 0x216d118 targets 0x216d200, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `bne` branch at 0x216d120 targets 0x216d200, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `blez` branch at 0x216d128 targets 0x216d1c4, is taken when s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed), and falls through when s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  The `beq` branch at 0x216d154 targets 0x216d170, is taken when (s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) & 0x7) == 0, and falls through when (s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) & 0x7) != 0.
  The `bne` branch at 0x216d168 targets 0x216d15c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x216d174 targets 0x216d1c4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x216d1bc targets 0x216d17c, is taken when s0(?) != s1(?), and falls through when s0(?) == s1(?).
  The `beq` branch at 0x216d1cc targets 0x216c9d8 and is always taken.
  The `bne` branch at 0x216d1d8 targets 0x216cdcc, is taken when v0(?) != a5(=0x802f), and falls through when v0(?) == a5(=0x802f).
  The `beq` branch at 0x216d1f8 targets 0x216c6d8 and is always taken.
  The `blez` branch at 0x216d200 targets 0x216d564, is taken when s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed), and falls through when s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  The `beq` branch at 0x216d22c targets 0x216d24c, is taken when (s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) & 0x3) == 0, and falls through when (s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) & 0x3) != 0.
  The `bne` branch at 0x216d244 targets 0x216d234, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x216d250 targets 0x216d2c4, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x216d298 targets 0x216d268, is taken when s0(?) != s1(?), and falls through when s0(?) == s1(?).
  The `beq` branch at 0x216d2ec targets 0x216d574, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `blez` branch at 0x216d2f4 targets 0x216d520, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x216d320 targets 0x216d3a4 and is always taken.
  The `blez` branch at 0x216d328 targets 0x216d398, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `beq` branch at 0x216d34c targets 0x216d398, is taken when a1(?) == a2(?), and falls through when a1(?) != a2(?).
  The `beq` branch at 0x216d364 targets 0x216d398, is taken when a1(?) == a2(?), and falls through when a1(?) != a2(?).
  The `beq` branch at 0x216d37c targets 0x216d398, is taken when a1(?) == a2(?), and falls through when a1(?) != a2(?).
  The `bne` branch at 0x216d390 targets 0x216d338, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `beq` branch at 0x216d39c targets 0x216d52c, is taken when s2(?) == t2(?), and falls through when s2(?) != t2(?).
  The `blez` branch at 0x216d3a4 targets 0x216d398, is taken when a7(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed), and falls through when a7(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  The `beq` branch at 0x216d3b0 targets 0x216d8ac and is always taken.
  The `beq` branch at 0x216d3b8 targets 0x216d41c, is taken when a1(=one of 0x0, 0x1) == 0, and falls through when a1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x216d3cc targets 0x216d328, is taken when s0(?) == s1(?), and falls through when s0(?) != s1(?).
  The `bne` branch at 0x216d3d8 targets 0x216d3c8, is taken when t9(?) != s2(?), and falls through when t9(?) == s2(?).
  The `bne` branch at 0x216d3e8 targets 0x216d3c8, is taken when ra(?) < s3(?) (signed), and falls through when ra(?) >= s3(?) (signed).
  The `bne` branch at 0x216d3f4 targets 0x216d3c8, is taken when at(?) != s4(?), and falls through when at(?) == s4(?).
  The `beq` branch at 0x216d3fc targets 0x216d3b8, is taken when s5(=one of 0x0, 0x1) == 0, and falls through when s5(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x216d408 targets 0x216d3b8, is taken when v1(?) == s8(?), and falls through when v1(?) != s8(?).
  The `beq` branch at 0x216d414 targets 0x216d3b8 and is always taken.
  The `bne` branch at 0x216d428 targets 0x216d3c8, is taken when a1(?) != a3(?), and falls through when a1(?) == a3(?).
  The `bne` branch at 0x216d438 targets 0x216d3c8, is taken when a2(?) < a4(?) (signed), and falls through when a2(?) >= a4(?) (signed).
  The `bne` branch at 0x216d450 targets 0x216d3c8, is taken when a5(?) < a6(?) (signed), and falls through when a5(?) >= a6(?) (signed).
  The `bne` branch at 0x216d460 targets 0x216d3c8, is taken when t3(?) < t9(?) (signed), and falls through when t3(?) >= t9(?) (signed).
  The `bne` branch at 0x216d470 targets 0x216d3c8, is taken when ra(?) < at(?) (signed), and falls through when ra(?) >= at(?) (signed).
  The `bne` branch at 0x216d478 targets 0x216d3c8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x216d488 targets 0x216d3c8, is taken when a2(?) < a4(?) (signed), and falls through when a2(?) >= a4(?) (signed).
  The `bne` branch at 0x216d498 targets 0x216d3c8, is taken when a5(?) < a6(?) (signed), and falls through when a5(?) >= a6(?) (signed).
  The `bne` branch at 0x216d4a8 targets 0x216d3c8, is taken when t3(?) < t9(?) (signed), and falls through when t3(?) >= t9(?) (signed).
  The `bne` branch at 0x216d4b8 targets 0x216d3c8, is taken when ra(?) < at(?) (signed), and falls through when ra(?) >= at(?) (signed).
  The `bne` branch at 0x216d4c8 targets 0x216d3c8, is taken when v1(?) < a1(?) (signed), and falls through when v1(?) >= a1(?) (signed).
  The `bne` branch at 0x216d4d8 targets 0x216d3c8, is taken when a2(?) < a4(?) (signed), and falls through when a2(?) >= a4(?) (signed).
  The `bne` branch at 0x216d4e8 targets 0x216d3c8, is taken when a5(?) < a6(?) (unsigned), and falls through when a5(?) >= a6(?) (unsigned).
  The `bne` branch at 0x216d4f8 targets 0x216d3c8, is taken when t3(?) < t9(?) (unsigned), and falls through when t3(?) >= t9(?) (unsigned).
  The `beq` branch at 0x216d500 targets 0x216d5b0, is taken when ra(=one of 0x0, 0x1) == 0, and falls through when ra(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x216d510 targets 0x216d5b0, is taken when at(?) == v1(?), and falls through when at(?) != v1(?).
  The `beq` branch at 0x216d518 targets 0x216d5b0 and is always taken.
  The `blez` branch at 0x216d538 targets 0x216d590, is taken when s6(?) <= 0 (signed), and falls through when s6(?) > 0 (signed).
  The `beq` branch at 0x216d54c targets 0x216c9d8 and is always taken.
  The `beq` branch at 0x216d55c targets 0x216c9d8 and is always taken.
  The `beq` branch at 0x216d56c targets 0x216d2c8 and is always taken.
  The `beq` branch at 0x216d588 targets 0x216c9d8 and is always taken.
  The `beq` branch at 0x216d5a8 targets 0x216c9d8 and is always taken.
  The `bne` branch at 0x216d5b0 targets 0x216d3c8, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x216d5bc targets 0x216d3c8, is taken when a5(?) != a6(?), and falls through when a5(?) == a6(?).
  The `beq` branch at 0x216d5c4 targets 0x216d5e0, is taken when t3(=one of 0x0, 0x1) == 0, and falls through when t3(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x216d5d0 targets 0x216d5e4, is taken when t9(?) == ra(?), and falls through when t9(?) != ra(?).
  The `beq` branch at 0x216d5d8 targets 0x216d5e4 and is always taken.
  The `bne` branch at 0x216d5e4 targets 0x216d3c8, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216d5ec targets 0x216d608, is taken when at(=one of 0x0, 0x1) == 0, and falls through when at(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x216d5fc targets 0x216d608, is taken when v1(?) == a1(?), and falls through when v1(?) != a1(?).
  The `bne` branch at 0x216d608 targets 0x216d3c8, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216d610 targets 0x216d628, is taken when a2(=one of 0x0, 0x1) == 0, and falls through when a2(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x216d620 targets 0x216d3c8, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `beq` branch at 0x216d628 targets 0x216d644, is taken when a6(=one of 0x0, 0x1) == 0, and falls through when a6(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x216d638 targets 0x216d644, is taken when t3(?) == t9(?), and falls through when t3(?) != t9(?).
  The `bne` branch at 0x216d644 targets 0x216d3c8, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216d64c targets 0x216d668, is taken when ra(=one of 0x0, 0x1) == 0, and falls through when ra(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x216d658 targets 0x216d66c, is taken when at(?) == v1(?), and falls through when at(?) != v1(?).
  The `beq` branch at 0x216d660 targets 0x216d66c and is always taken.
  The `bne` branch at 0x216d66c targets 0x216d3c8, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216d674 targets 0x216d690, is taken when a1(=one of 0x0, 0x1) == 0, and falls through when a1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x216d680 targets 0x216d694, is taken when a2(?) == a4(?), and falls through when a2(?) != a4(?).
  The `beq` branch at 0x216d688 targets 0x216d694 and is always taken.
  The `bne` branch at 0x216d694 targets 0x216d3c8, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x216d6a4 targets 0x216d3c8, is taken when a5(?) != a6(?), and falls through when a5(?) == a6(?).
  The `bne` branch at 0x216d6b4 targets 0x216d3c8, is taken when t3(?) != t9(?), and falls through when t3(?) == t9(?).
  The `beq` branch at 0x216d6bc targets 0x216d6d0, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x216d6c8 targets 0x216d890, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x216d6d0 targets 0x216d3c8, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x216d6e0 targets 0x216d3c8, is taken when v1(?) < a1(?) (signed), and falls through when v1(?) >= a1(?) (signed).
  The `bne` branch at 0x216d6f0 targets 0x216d3c8, is taken when a2(?) < a4(?) (signed), and falls through when a2(?) >= a4(?) (signed).
  The `bne` branch at 0x216d700 targets 0x216d3c8, is taken when a5(?) < a6(?) (signed), and falls through when a5(?) >= a6(?) (signed).
  The `bne` branch at 0x216d70c targets 0x216d3c8, is taken when t3(?) != t9(?), and falls through when t3(?) == t9(?).
  The `bc1t` branch at 0x216d720 targets 0x216d3c8, is taken when f5 < f6 (c.lt.d at 0x216d71c), and falls through when not (f5 < f6 (c.lt.d at 0x216d71c)).
  The `bc1t` branch at 0x216d730 targets 0x216d3c8, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1t` branch at 0x216d744 targets 0x216d3c8, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `bc1t` branch at 0x216d754 targets 0x216d3c8, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `bc1t` branch at 0x216d768 targets 0x216d3c8, is taken when f13 < f14 (c.lt.d at 0x216d764), and falls through when not (f13 < f14 (c.lt.d at 0x216d764)).
  The `bc1t` branch at 0x216d778 targets 0x216d3c8, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1t` branch at 0x216d78c targets 0x216d3c8, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `bc1t` branch at 0x216d79c targets 0x216d3c8, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `beq` branch at 0x216d7b4 targets 0x216d8a4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x216d824 targets 0x216d7c8, is taken when a7(?) != a4(?), and falls through when a7(?) == a4(?).
  The `beq` branch at 0x216d834 targets 0x216d898, is taken when a7(?) >= t1(?) (signed), and falls through when a7(?) < t1(?) (signed).
  The `beq` branch at 0x216d858 targets 0x216d870, is taken when a1(?) == t8(?), and falls through when a1(?) != t8(?).
  The `bne` branch at 0x216d868 targets 0x216d850, is taken when a1(?) != t8(?), and falls through when a1(?) == t8(?).
  The `beq` branch at 0x216d888 targets 0x216d3c8 and is always taken.
  The `beq` branch at 0x216d890 targets 0x216d6d0 and is always taken.
  The `beq` branch at 0x216d89c targets 0x216d870 and is always taken.
  The `beq` branch at 0x216d8a4 targets 0x216d870 and is always taken.
  The `beq` branch at 0x216d8b0 targets 0x216d3d8 and is always taken.
  The return at 0x216c91c has v0 = 0x0.
  The return at 0x216c9fc has v0 = one of 0x0, ret(malloc).
  The return at 0x216cb98 has v0 = 0x0.
  The return at 0x216cbf0 has v0 = 0x0.
  The return at 0x216cd84 has v0 = 0x0.
  The return at 0x216cdfc has v0 = 0x0.
  The instructions from 0x216c740 to 0x216c744 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x216c824 uses the jump table at 0x2178630 with targets 0x216c924, 0x216c7c4, 0x216c9b4, 0x216c99c, 0x216c984, 0x216c96c, 0x216c954, 0x216c93c.
  The indirect jump at 0x216c824 uses the jump table at 0x2178630 with targets 0x216c924, 0x216c7c4, 0x216c9b4, 0x216c99c, 0x216c984, 0x216c96c, 0x216c954, 0x216c93c.
  The indirect jump at 0x216c824 uses the jump table at 0x2178630 with targets 0x216c924, 0x216c7c4, 0x216c9b4, 0x216c99c, 0x216c984, 0x216c96c, 0x216c954, 0x216c93c.
  The indirect jump at 0x216c824 uses the jump table at 0x2178630 with targets 0x216c924, 0x216c7c4, 0x216c9b4, 0x216c99c, 0x216c984, 0x216c96c, 0x216c954, 0x216c93c.
  The indirect jump at 0x216c824 uses the jump table at 0x2178630 with targets 0x216c924, 0x216c7c4, 0x216c9b4, 0x216c99c, 0x216c984, 0x216c96c, 0x216c954, 0x216c93c.
  The indirect jump at 0x216c824 uses the jump table at 0x2178630 with targets 0x216c924, 0x216c7c4, 0x216c9b4, 0x216c99c, 0x216c984, 0x216c96c, 0x216c954, 0x216c93c.
  The indirect jump at 0x216c824 uses the jump table at 0x2178630 with targets 0x216c924, 0x216c7c4, 0x216c9b4, 0x216c99c, 0x216c984, 0x216c96c, 0x216c954, 0x216c93c.
  The indirect jump at 0x216c824 uses the jump table at 0x2178630 with targets 0x216c924, 0x216c7c4, 0x216c9b4, 0x216c99c, 0x216c984, 0x216c96c, 0x216c954, 0x216c93c.
  The indirect jump at 0x216c824 uses the jump table at 0x2178630 with targets 0x216c924, 0x216c7c4, 0x216c9b4, 0x216c99c, 0x216c984, 0x216c96c, 0x216c954, 0x216c93c.
  The indirect jump at 0x216c824 uses the jump table at 0x2178630 with targets 0x216c924, 0x216c7c4, 0x216c9b4, 0x216c99c, 0x216c984, 0x216c96c, 0x216c954, 0x216c93c.
  The indirect jump at 0x216c824 uses the jump table at 0x2178630 with targets 0x216c924, 0x216c7c4, 0x216c9b4, 0x216c99c, 0x216c984, 0x216c96c, 0x216c954, 0x216c93c.

- `glXCreateGLXPixmapWithConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x216d8f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x216d8f0-0x216da40 (336 bytes).
  It occupies 336 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x216d930, `ld` at 0x216d9d8.
  The `ld` at 0x216d93c loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x216d948, `ld` at 0x216d984, `ld` at 0x216da28.
  The `ld` at 0x216d94c loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x216d96c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x216d974 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x216d97c, `sb` at 0x216d9a8.
  The `ld` at 0x216d980 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x216d98c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x216d998 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x216d9a0 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x216d9a4 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x216d9ac loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0x216d9b0 stores 4 bytes to [a0+176]:8 +0xc.
  The `lw` at 0x216d9b4 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0x216d9b8 stores 4 bytes to [a0+176]:8 +0x14.
  The `sw` at 0x216d9bc stores 4 bytes to [a0+176]:8 +0x10.
  The `ld` at 0x216d9c0 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `sw` at 0x216d9d4 stores 4 bytes to [a0+176]:8 +0x18.
  The `ld` at 0x216d9e4 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x216d9f0 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x216d91c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x216d940 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x216d9c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=[a1+72], a4=[a1+36], a5=[a0+176]:8, a6=0x10006, a7=0x10.
  The `jalr` at 0x216d9e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x216d9fc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x216da1c calls _XFlush with a0=a0 at entry (arg0), a1=[a0+176]:8+28, a2=?, a3=?, a5=[a0+176]:8.
  The `beq` branch at 0x216d928 targets 0x216da2c, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x216d934 targets 0x216d948, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x216d958 targets 0x216da1c, is taken when a0(=[a0+184]:8) < a1(=[a0+176]:8+28) (unsigned), and falls through when a0(=[a0+184]:8) >= a1(=[a0+176]:8+28) (unsigned).
  The `beq` branch at 0x216d9dc targets 0x216d9f0, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x216d9f4 targets 0x216da08, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x216da24 targets 0x216d960 and is always taken.
  The return at 0x216da14 has v0 = ret(?).
  The return at 0x216da38 has v0 = 0x0.

- `glXGetVisualFromFBConfig` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x216da94 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x216da94-0x216daf8 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x216da98 loads 4 bytes from a1 (arg1 at entry) +0x20.
  The `lw` at 0x216dacc loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `jalr` at 0x216dad4 calls __glXOverrideVisualGetVisualInfo with a0=a0 at entry (arg0), a1=0x3, a2=sp-96, a3=sp-32, a5=[a1+32], a6=a1 at entry (arg1).
  The `beq` branch at 0x216dab0 targets 0x216daec, is taken when a5(=[a1+32]) == 0, and falls through when a5(=[a1+32]) != 0.
  The return at 0x216dae4 has v0 = ret(__glXOverrideVisualGetVisualInfo).
  The return at 0x216daf0 has v0 = 0x0.

- `glXChooseFBConfig` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x216e25c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x216e25c-0x216fcf0 (6804 bytes).
  It occupies 6804 bytes.
  The `lw` at 0x216e3d8 loads 4 bytes from a2 (arg2 at entry) +0x0.
  77 such `lw` accesses load 4 bytes from ?, including `lw` at 0x216e430, `lw` at 0x216e450, `lw` at 0x216e45c.
  The `lw` at 0x216e678 loads 4 bytes from a0 (arg0 at entry) +0xe4.
  The `ld` at 0x216e688 loads 8 bytes from ret(__glXInitialize) +0x30.
  The `ld` at 0x216e698 loads 8 bytes from ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x18.
  The `lw` at 0x216e69c loads 4 bytes from ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x20.
  12 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x216e744, `sw` at 0x216e928, `sw` at 0x216e934.
  The `sd` at 0x216eb70 stores 8 bytes to ret(malloc) +0x0.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x216ee28, `lbu` at 0x216eed4, `lbu` at 0x216f590.
  13 such `ld` accesses load 8 bytes from ?, including `ld` at 0x216f338, `ld` at 0x216f34c, `ld` at 0x216f360.
  14 such `sd` accesses store 8 bytes to ?, including `sd` at 0x216f33c, `sd` at 0x216f350, `sd` at 0x216f368.
  8 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0x216fa54, `ldc1` at 0x216fa7c, `ldc1` at 0x216fbd8.
  The `lw` at 0x216fcec loads 4 bytes from [([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8 +0x44.
  The `jalr` at 0x216e65c calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3), a7=a0 at entry (arg0).
  The `jalr` at 0x216e95c calls malloc with a0=0x8, a1=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32], a2=(a1 << 0x6), a3=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32], a5=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32].
  The `jalr` at 0x216f034 calls malloc with a0=([([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32] << 0x3), a1=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32], a2=(a1 << 0x6), a3=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32], a5=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32].
  The `jalr` at 0x216f140 calls malloc with a0=([([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32] << 0x3), a1=?, a2=?, a3=?.
  The `bgezall` at 0x216f428 calls (unnamed) [0x216dcc4] with a0=?, a1=?, a2=0x0, a3=?.
  The `jalr` at 0x216f46c calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x216f66c calls free with a0=ret(malloc), a1=?, a2=?, a3=one of 0x0, 0x1.
  The `jalr` at 0x216f6ec calls free with a0=ret(malloc), a1=?, a2=?, a3=one of 0x0, 0x1.
  The `jalr` at 0x216f70c calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `bgezall` at 0x216fb2c calls (unnamed) [0x216dcc4] with a0=?, a1=?, a2=?, a3=one of 0x0, 0x1.
  The `beq` branch at 0x216e3d0 targets 0x216e5b8, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x216e3e4 targets 0x216ef2c, is taken when a0(=[a2]) == 0, and falls through when a0(=[a2]) != 0.
  The `beq` branch at 0x216e428 targets 0x216e45c and is always taken.
  The `beq` branch at 0x216e454 targets 0x216e788, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x216e464 targets 0x216e4bc, is taken when v0(?) < 0x27 (signed), and falls through when v0(?) >= 0x27 (signed).
  The `bne` branch at 0x216e470 targets 0x216e430, is taken when v0(?) < 0x28 (signed), and falls through when v0(?) >= 0x28 (signed).
  The `bne` branch at 0x216e478 targets 0x216e530, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x216e480 targets 0x216e798, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x216e4ac targets 0x216e450 and is always taken.
  The `bne` branch at 0x216e4c0 targets 0x216e4f8, is taken when v0(?) < 0xd (signed), and falls through when v0(?) >= 0xd (signed).
  The `beq` branch at 0x216e4cc targets 0x216e578, is taken when v0(?) >= 0xe (signed), and falls through when v0(?) < 0xe (signed).
  The `beq` branch at 0x216e4f0 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216e4f8 targets 0x216e748, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x216e504 targets 0x216e89c, is taken when v0(?) >= 0x9 (signed), and falls through when v0(?) < 0x9 (signed).
  The `beq` branch at 0x216e528 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216e538 targets 0x216e838, is taken when v0(?) < a5(=0x8013) (signed), and falls through when v0(?) >= a5(=0x8013) (signed).
  The `bne` branch at 0x216e548 targets 0x216ea0c, is taken when at(=0x8013) < v0(?) (signed), and falls through when at(=0x8013) >= v0(?) (signed).
  The `beq` branch at 0x216e570 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216e578 targets 0x216e864, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x216e584 targets 0x216ea3c, is taken when v0(?) >= 0x23 (signed), and falls through when v0(?) < 0x23 (signed).
  The `beq` branch at 0x216e5b0 targets 0x216e450 and is always taken.
  The `beq` branch at 0x216e5f8 targets 0x216e7dc, is taken when a6(?) == v0(=0x8000), and falls through when a6(?) != v0(=0x8000).
  The `beq` branch at 0x216e608 targets 0x216e7dc, is taken when a6(?) == at(=-0x1), and falls through when a6(?) != at(=-0x1).
  The `beq` branch at 0x216e668 targets 0x216e98c, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `bltz` branch at 0x216e670 targets 0x216e900, is taken when a0(=a1) < 0 (signed), and falls through when a0(=a1) >= 0 (signed).
  The `beq` branch at 0x216e680 targets 0x216e900, is taken when a0(=a1) >= v0(=[a0+228]) (signed), and falls through when a0(=a1) < v0(=[a0+228]) (signed).
  The `beq` branch at 0x216e6a4 targets 0x216eb18, is taken when v1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8) == 0, and falls through when v1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8) != 0.
  The `beq` branch at 0x216e6b0 targets 0x216eb18, is taken when a3(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) == 0, and falls through when a3(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) != 0.
  The `beq` branch at 0x216e6bc targets 0x216f028, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `blez` branch at 0x216e6c8 targets 0x216e710, is taken when a5(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed), and falls through when a5(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  The `beq` branch at 0x216e700 targets 0x216e95c, is taken when t8(?) == s2(?), and falls through when t8(?) != s2(?).
  The `bne` branch at 0x216e70c targets 0x216e6fc, is taken when s0(?) != s1(?), and falls through when s0(?) == s1(?).
  The `bne` branch at 0x216e74c targets 0x216e8d4, is taken when v0(?) < 0x5 (signed), and falls through when v0(?) >= 0x5 (signed).
  The `beq` branch at 0x216e758 targets 0x216eb80, is taken when v0(?) >= 0x6 (signed), and falls through when v0(?) < 0x6 (signed).
  The `beq` branch at 0x216e764 targets 0x216f258, is taken when v0(?) == t2(=-0x1), and falls through when v0(?) != t2(=-0x1).
  The `beq` branch at 0x216e780 targets 0x216e450 and is always taken.
  The `beq` branch at 0x216e790 targets 0x216e5ec and is always taken.
  The `bne` branch at 0x216e79c targets 0x216e9c0, is taken when v0(?) < at(=0x802e) (signed), and falls through when v0(?) >= at(=0x802e) (signed).
  The `bne` branch at 0x216e7a8 targets 0x216ebdc, is taken when v1(=0x802e) < v0(?) (signed), and falls through when v1(=0x802e) >= v0(?) (signed).
  The `beq` branch at 0x216e7d4 targets 0x216e450 and is always taken.
  The `beq` branch at 0x216e830 targets 0x216e610 and is always taken.
  The `bne` branch at 0x216e83c targets 0x216ea84, is taken when v0(?) < at(=0x8010) (signed), and falls through when v0(?) >= at(=0x8010) (signed).
  The `bne` branch at 0x216e848 targets 0x216ec90, is taken when v1(=0x8010) < v0(?) (signed), and falls through when v1(=0x8010) >= v0(?) (signed).
  The `beq` branch at 0x216e85c targets 0x216e450 and is always taken.
  The `bne` branch at 0x216e864 targets 0x216eab0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x216e870 targets 0x216ed1c, is taken when v0(?) >= 0x11 (signed), and falls through when v0(?) < 0x11 (signed).
  The `beq` branch at 0x216e894 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216e89c targets 0x216eae4, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x216e8a8 targets 0x216ed64, is taken when v0(?) >= 0xc (signed), and falls through when v0(?) < 0xc (signed).
  The `beq` branch at 0x216e8cc targets 0x216e450 and is always taken.
  The `bne` branch at 0x216e8d4 targets 0x216ebb4, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x216e8e0 targets 0x216e934, is taken when v0(?) >= 0x4 (signed), and falls through when v0(?) < 0x4 (signed).
  The `beq` branch at 0x216e8f8 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216e96c targets 0x216eb48, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0x216e984 targets 0x216e93c and is always taken.
  The `bne` branch at 0x216e9c8 targets 0x216ec24, is taken when v0(?) < a4(=0x802c) (signed), and falls through when v0(?) >= a4(=0x802c) (signed).
  The `bne` branch at 0x216e9d8 targets 0x216ee94, is taken when a5(=0x802c) < v0(?) (signed), and falls through when a5(=0x802c) >= v0(?) (signed).
  The `beq` branch at 0x216ea04 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216ea10 targets 0x216ec68, is taken when v0(?) < a4(=0x8018) (signed), and falls through when v0(?) >= a4(=0x8018) (signed).
  The `bne` branch at 0x216ea20 targets 0x216eec8, is taken when a5(=0x8018) < v0(?) (signed), and falls through when a5(=0x8018) >= v0(?) (signed).
  The `beq` branch at 0x216ea34 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216ea3c targets 0x216ecd8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x216ea48 targets 0x216eef4, is taken when v0(?) >= 0x26 (signed), and falls through when v0(?) < 0x26 (signed).
  The `beq` branch at 0x216ea7c targets 0x216e450 and is always taken.
  The `bne` branch at 0x216ea8c targets 0x216ed8c, is taken when v0(?) < at(=0x800b) (signed), and falls through when v0(?) >= at(=0x800b) (signed).
  The `bne` branch at 0x216ea98 targets 0x216e934, is taken when v1(=0x800b) < v0(?) (signed), and falls through when v1(=0x800b) >= v0(?) (signed).
  The `beq` branch at 0x216eaa8 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216eab4 targets 0x216edc0, is taken when v0(?) < 0xf (signed), and falls through when v0(?) >= 0xf (signed).
  The `beq` branch at 0x216eabc targets 0x216e934, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x216eadc targets 0x216e450 and is always taken.
  The `bne` branch at 0x216eae8 targets 0x216edec, is taken when v0(?) < 0xa (signed), and falls through when v0(?) >= 0xa (signed).
  The `beq` branch at 0x216eaf0 targets 0x216e934, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x216eb10 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216eb80 targets 0x216ee18, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x216eb8c targets 0x216e934, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x216ebac targets 0x216e450 and is always taken.
  The `bne` branch at 0x216ebb4 targets 0x216e934, is taken when v0(?) != a4(=0x2), and falls through when v0(?) == a4(=0x2).
  The `beq` branch at 0x216ebd4 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216ebe4 targets 0x216ee4c, is taken when v0(?) < a4(=0x186a0) (signed), and falls through when v0(?) >= a4(=0x186a0) (signed).
  The `bne` branch at 0x216ebf4 targets 0x216f260, is taken when a5(=0x186a0) < v0(?) (signed), and falls through when a5(=0x186a0) >= v0(?) (signed).
  The `beq` branch at 0x216ec1c targets 0x216e450 and is always taken.
  The `bne` branch at 0x216ec28 targets 0x216ef6c, is taken when v0(?) < at(=0x802b) (signed), and falls through when v0(?) >= at(=0x802b) (signed).
  The `bne` branch at 0x216ec34 targets 0x216e934, is taken when v1(=0x802b) < v0(?) (signed), and falls through when v1(=0x802b) >= v0(?) (signed).
  The `beq` branch at 0x216ec60 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216ec6c targets 0x216efa4, is taken when v0(?) < at(=0x8017) (signed), and falls through when v0(?) >= at(=0x8017) (signed).
  The `bne` branch at 0x216ec78 targets 0x216e934, is taken when v1(=0x8017) < v0(?) (signed), and falls through when v1(=0x8017) >= v0(?) (signed).
  The `beq` branch at 0x216ec88 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216ec94 targets 0x216efc0, is taken when v0(?) < a5(=0x8012) (signed), and falls through when v0(?) >= a5(=0x8012) (signed).
  The `bne` branch at 0x216eca4 targets 0x216e934, is taken when at(=0x8012) < v0(?) (signed), and falls through when at(=0x8012) >= v0(?) (signed).
  The `beq` branch at 0x216ecd0 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216ecdc targets 0x216efe0, is taken when v0(?) < 0x24 (signed), and falls through when v0(?) >= 0x24 (signed).
  The `beq` branch at 0x216ece4 targets 0x216e934, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x216ed14 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216ed1c targets 0x216f000, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x216ed28 targets 0x216e934, is taken when v0(?) >= 0x21 (signed), and falls through when v0(?) < 0x21 (signed).
  The `beq` branch at 0x216ed5c targets 0x216e450 and is always taken.
  The `bne` branch at 0x216ed64 targets 0x216e934, is taken when v0(?) != at(=0xc), and falls through when v0(?) == at(=0xc).
  The `beq` branch at 0x216ed84 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216ed90 targets 0x216e934, is taken when v0(?) != v1(=0x28), and falls through when v0(?) == v1(=0x28).
  The `beq` branch at 0x216edb8 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216edc4 targets 0x216e934, is taken when v0(?) != a4(=0xe), and falls through when v0(?) == a4(=0xe).
  The `beq` branch at 0x216ede4 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216edf0 targets 0x216e934, is taken when v0(?) != a5(=0x9), and falls through when v0(?) == a5(=0x9).
  The `beq` branch at 0x216ee10 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216ee18 targets 0x216e934, is taken when v0(?) != at(=0x6), and falls through when v0(?) == at(=0x6).
  The `beq` branch at 0x216ee44 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216ee54 targets 0x216f28c, is taken when v0(?) < at(=0x8030) (signed), and falls through when v0(?) >= at(=0x8030) (signed).
  The `bne` branch at 0x216ee60 targets 0x216e934, is taken when v1(=0x8030) < v0(?) (signed), and falls through when v1(=0x8030) >= v0(?) (signed).
  The `beq` branch at 0x216ee8c targets 0x216e450 and is always taken.
  The `bne` branch at 0x216ee94 targets 0x216e934, is taken when v0(?) != at(=0x802d), and falls through when v0(?) == at(=0x802d).
  The `beq` branch at 0x216eec0 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216eec8 targets 0x216e934, is taken when v0(?) != a5(=0x8028), and falls through when v0(?) == a5(=0x8028).
  The `beq` branch at 0x216eeec targets 0x216e450 and is always taken.
  The `bne` branch at 0x216eef4 targets 0x216e934, is taken when v0(?) != at(=0x26), and falls through when v0(?) == at(=0x26).
  The `beq` branch at 0x216ef24 targets 0x216e450 and is always taken.
  The `beq` branch at 0x216ef64 targets 0x216e5ec and is always taken.
  The `bne` branch at 0x216ef70 targets 0x216e934, is taken when v0(?) != v1(=0x802a), and falls through when v0(?) == v1(=0x802a).
  The `beq` branch at 0x216ef9c targets 0x216e450 and is always taken.
  The `bne` branch at 0x216efa8 targets 0x216e934, is taken when v0(?) != at(=0x8016), and falls through when v0(?) == at(=0x8016).
  The `beq` branch at 0x216efb8 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216efc0 targets 0x216e934, is taken when v0(?) != a4(=0x8011), and falls through when v0(?) == a4(=0x8011).
  The `beq` branch at 0x216efd8 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216efe4 targets 0x216e934, is taken when v0(?) != a6(=0x23), and falls through when v0(?) == a6(=0x23).
  The `beq` branch at 0x216eff8 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216f000 targets 0x216e934, is taken when v0(?) != at(=0x11), and falls through when v0(?) == at(=0x11).
  The `beq` branch at 0x216f020 targets 0x216e450 and is always taken.
  The `beq` branch at 0x216f040 targets 0x216f6cc, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `blez` branch at 0x216f04c targets 0x216f6dc, is taken when a1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed), and falls through when a1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  The `beq` branch at 0x216f084 targets 0x216f0ac, is taken when (t8(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) & 0x3) == 0, and falls through when (t8(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) & 0x3) != 0.
  The `bne` branch at 0x216f0a4 targets 0x216f08c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x216f0b0 targets 0x216f128, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x216f0fc targets 0x216f0cc, is taken when a0(?) != s1(?), and falls through when a0(?) == s1(?).
  The `beq` branch at 0x216f154 targets 0x216f6e4, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `beq` branch at 0x216f15c targets 0x216f2c4, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x216f164 targets 0x216f2c4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `blez` branch at 0x216f174 targets 0x216f658, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x216f250 targets 0x216f51c and is always taken.
  The `beq` branch at 0x216f258 targets 0x216e77c and is always taken.
  The `bne` branch at 0x216f264 targets 0x216e934, is taken when v0(?) != at(=0x186a1), and falls through when v0(?) == at(=0x186a1).
  The `beq` branch at 0x216f284 targets 0x216e450 and is always taken.
  The `bne` branch at 0x216f290 targets 0x216e934, is taken when v0(?) != v1(=0x802f), and falls through when v0(?) == v1(=0x802f).
  The `beq` branch at 0x216f2bc targets 0x216e450 and is always taken.
  The `blez` branch at 0x216f2d4 targets 0x216f468, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `beq` branch at 0x216f30c targets 0x216f37c and is always taken.
  The `blez` branch at 0x216f318 targets 0x216f370, is taken when t9(?) <= 0 (signed), and falls through when t9(?) > 0 (signed).
  The `beq` branch at 0x216f340 targets 0x216f36c, is taken when a1(?) == a6(?), and falls through when a1(?) != a6(?).
  The `beq` branch at 0x216f354 targets 0x216f36c, is taken when a1(?) == a6(?), and falls through when a1(?) != a6(?).
  The `bne` branch at 0x216f364 targets 0x216f330, is taken when a1(?) != a6(?), and falls through when a1(?) == a6(?).
  The `beq` branch at 0x216f374 targets 0x216f46c, is taken when s2(?) == t2(?), and falls through when s2(?) != t2(?).
  The `blez` branch at 0x216f380 targets 0x216f36c, is taken when t3(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed), and falls through when t3(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  The `beq` branch at 0x216f390 targets 0x216fce4 and is always taken.
  The `beq` branch at 0x216f3b4 targets 0x216f3c8, is taken when a1(?) == a2(?), and falls through when a1(?) != a2(?).
  The `bne` branch at 0x216f3c0 targets 0x216f3a8, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `beq` branch at 0x216f3d0 targets 0x216f314, is taken when s0(?) == s1(?), and falls through when s0(?) != s1(?).
  The `bne` branch at 0x216f3dc targets 0x216f3cc, is taken when a5(?) != s2(?), and falls through when a5(?) == s2(?).
  The `beq` branch at 0x216f3fc targets 0x216f3c8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x216f440 targets 0x216f40c, is taken when s3(?) != s4(?), and falls through when s3(?) == s4(?).
  The `bne` branch at 0x216f458 targets 0x216f39c, is taken when s3(?) < ra(?) (signed), and falls through when s3(?) >= ra(?) (signed).
  The `beq` branch at 0x216f460 targets 0x216f3cc and is always taken.
  The `beq` branch at 0x216f494 targets 0x216e93c and is always taken.
  The `blez` branch at 0x216f49c targets 0x216f510, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x216f4c4 targets 0x216f510, is taken when a1(?) == a6(?), and falls through when a1(?) != a6(?).
  The `beq` branch at 0x216f4dc targets 0x216f510, is taken when a1(?) == a6(?), and falls through when a1(?) != a6(?).
  The `beq` branch at 0x216f4f4 targets 0x216f510, is taken when a1(?) == a6(?), and falls through when a1(?) != a6(?).
  The `bne` branch at 0x216f508 targets 0x216f4b0, is taken when a1(?) != a6(?), and falls through when a1(?) == a6(?).
  The `beq` branch at 0x216f518 targets 0x216f668, is taken when s2(?) == v0(?), and falls through when s2(?) != v0(?).
  The `blez` branch at 0x216f520 targets 0x216f510, is taken when v1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed), and falls through when v1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  The `beq` branch at 0x216f530 targets 0x216f550 and is always taken.
  The `beq` branch at 0x216f53c targets 0x216f57c, is taken when a1(=one of 0x0, 0x1) == 0, and falls through when a1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x216f548 targets 0x216f49c, is taken when s0(?) == s1(?), and falls through when s0(?) != s1(?).
  The `bne` branch at 0x216f554 targets 0x216f544, is taken when a1(?) != s2(?), and falls through when a1(?) == s2(?).
  The `beq` branch at 0x216f55c targets 0x216f53c, is taken when s3(?) == s4(=-0x1), and falls through when s3(?) != s4(=-0x1).
  The `beq` branch at 0x216f56c targets 0x216f53c, is taken when a4(?) >= s3(?) (signed), and falls through when a4(?) < s3(?) (signed).
  The `beq` branch at 0x216f574 targets 0x216f53c and is always taken.
  The `bne` branch at 0x216f580 targets 0x216f544, is taken when a5(?) != a2(?), and falls through when a5(?) == a2(?).
  The `beq` branch at 0x216f588 targets 0x216f5a0, is taken when a3(=one of 0x0, 0x1) == 0, and falls through when a3(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x216f594 targets 0x216f5a0, is taken when a6(?) == a7(?), and falls through when a6(?) != a7(?).
  The `bne` branch at 0x216f5a0 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f5a8 targets 0x216f5c4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x216f5b8 targets 0x216f5c4, is taken when t9(?) == ra(?), and falls through when t9(?) != ra(?).
  The `bne` branch at 0x216f5c4 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f5cc targets 0x216f5ec, is taken when at(?) == s4(=-0x1), and falls through when at(?) != s4(=-0x1).
  The `beq` branch at 0x216f5e0 targets 0x216f5ec, is taken when v0(?) >= v1(?) (signed), and falls through when v0(?) < v1(?) (signed).
  The `bne` branch at 0x216f5ec targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f5f4 targets 0x216f614, is taken when a0(?) == s4(=-0x1), and falls through when a0(?) != s4(=-0x1).
  The `beq` branch at 0x216f608 targets 0x216f614, is taken when a1(?) >= a4(?) (signed), and falls through when a1(?) < a4(?) (signed).
  The `bne` branch at 0x216f614 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f61c targets 0x216f638, is taken when a5(?) == s4(=-0x1), and falls through when a5(?) != s4(=-0x1).
  The `bne` branch at 0x216f630 targets 0x216f544, is taken when a6(?) < t0(?) (signed), and falls through when a6(?) >= t0(?) (signed).
  The `beq` branch at 0x216f638 targets 0x216f69c, is taken when t9(?) == s4(=-0x1), and falls through when t9(?) != s4(=-0x1).
  The `beq` branch at 0x216f648 targets 0x216f6a0, is taken when ra(?) >= at(?) (signed), and falls through when ra(?) < at(?) (signed).
  The `beq` branch at 0x216f650 targets 0x216f6a0 and is always taken.
  The `blez` branch at 0x216f684 targets 0x216f708, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `beq` branch at 0x216f694 targets 0x216e93c and is always taken.
  The `bne` branch at 0x216f6a0 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f6a8 targets 0x216f728, is taken when v1(?) == s4(=-0x1), and falls through when v1(?) != s4(=-0x1).
  The `beq` branch at 0x216f6bc targets 0x216f728, is taken when a0(?) >= a1(?) (signed), and falls through when a0(?) < a1(?) (signed).
  The `beq` branch at 0x216f6c4 targets 0x216f728 and is always taken.
  The `beq` branch at 0x216f6d4 targets 0x216e93c and is always taken.
  The `beq` branch at 0x216f6dc targets 0x216f130 and is always taken.
  The `beq` branch at 0x216f700 targets 0x216e93c and is always taken.
  The `beq` branch at 0x216f720 targets 0x216e93c and is always taken.
  The `bne` branch at 0x216f728 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f730 targets 0x216f750, is taken when a5(?) == s4(=-0x1), and falls through when a5(?) != s4(=-0x1).
  The `beq` branch at 0x216f744 targets 0x216f750, is taken when a6(?) >= t0(?) (signed), and falls through when a6(?) < t0(?) (signed).
  The `bne` branch at 0x216f750 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f758 targets 0x216f778, is taken when t9(?) == s4(=-0x1), and falls through when t9(?) != s4(=-0x1).
  The `beq` branch at 0x216f76c targets 0x216f778, is taken when ra(?) >= at(?) (signed), and falls through when ra(?) < at(?) (signed).
  The `bne` branch at 0x216f778 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f780 targets 0x216f7a0, is taken when v0(?) == s4(=-0x1), and falls through when v0(?) != s4(=-0x1).
  The `beq` branch at 0x216f794 targets 0x216f7a0, is taken when v1(?) >= a0(?) (signed), and falls through when v1(?) < a0(?) (signed).
  The `bne` branch at 0x216f7a0 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f7a8 targets 0x216f7c8, is taken when a1(?) == s4(=-0x1), and falls through when a1(?) != s4(=-0x1).
  The `beq` branch at 0x216f7b8 targets 0x216f7cc, is taken when a4(?) >= a5(?) (signed), and falls through when a4(?) < a5(?) (signed).
  The `beq` branch at 0x216f7c0 targets 0x216f7cc and is always taken.
  The `bne` branch at 0x216f7cc targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f7d4 targets 0x216f7f4, is taken when a6(?) == s4(=-0x1), and falls through when a6(?) != s4(=-0x1).
  The `beq` branch at 0x216f7e4 targets 0x216f7f8, is taken when t0(?) >= t9(?) (signed), and falls through when t0(?) < t9(?) (signed).
  The `beq` branch at 0x216f7ec targets 0x216f7f8 and is always taken.
  The `bne` branch at 0x216f7f8 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f800 targets 0x216f820, is taken when ra(?) == s4(=-0x1), and falls through when ra(?) != s4(=-0x1).
  The `beq` branch at 0x216f810 targets 0x216f824, is taken when at(?) >= v0(?) (signed), and falls through when at(?) < v0(?) (signed).
  The `beq` branch at 0x216f818 targets 0x216f824 and is always taken.
  The `bne` branch at 0x216f824 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f82c targets 0x216f848, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x216f838 targets 0x216f84c, is taken when a0(?) == a1(?), and falls through when a0(?) != a1(?).
  The `beq` branch at 0x216f840 targets 0x216f84c and is always taken.
  The `bne` branch at 0x216f84c targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f854 targets 0x216f870, is taken when a4(?) == s4(=-0x1), and falls through when a4(?) != s4(=-0x1).
  The `beq` branch at 0x216f860 targets 0x216f874, is taken when a5(?) == a6(?), and falls through when a5(?) != a6(?).
  The `beq` branch at 0x216f868 targets 0x216f874 and is always taken.
  The `bne` branch at 0x216f874 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f87c targets 0x216f898, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x216f888 targets 0x216f89c, is taken when t9(?) == ra(?), and falls through when t9(?) != ra(?).
  The `beq` branch at 0x216f890 targets 0x216f89c and is always taken.
  The `bne` branch at 0x216f89c targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f8a4 targets 0x216f8c0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x216f8b0 targets 0x216f8c4, is taken when v0(?) == v1(?), and falls through when v0(?) != v1(?).
  The `beq` branch at 0x216f8b8 targets 0x216f8c4 and is always taken.
  The `bne` branch at 0x216f8c4 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f8cc targets 0x216f8e8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x216f8dc targets 0x216f8e8, is taken when a1(?) == a4(?), and falls through when a1(?) != a4(?).
  The `bne` branch at 0x216f8e8 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f8f0 targets 0x216f90c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x216f8fc targets 0x216f910, is taken when a6(?) == t0(?), and falls through when a6(?) != t0(?).
  The `beq` branch at 0x216f904 targets 0x216f910 and is always taken.
  The `bne` branch at 0x216f910 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f918 targets 0x216f934, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x216f924 targets 0x216f938, is taken when ra(?) == at(?), and falls through when ra(?) != at(?).
  The `beq` branch at 0x216f92c targets 0x216f938 and is always taken.
  The `bne` branch at 0x216f938 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f940 targets 0x216f95c, is taken when v0(=one of 0x0, 0x1) == 0, and falls through when v0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x216f950 targets 0x216f95c, is taken when v1(?) == a0(?), and falls through when v1(?) != a0(?).
  The `bne` branch at 0x216f95c targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f964 targets 0x216f984, is taken when a1(?) == s4(=-0x1), and falls through when a1(?) != s4(=-0x1).
  The `beq` branch at 0x216f974 targets 0x216f988, is taken when a4(?) == a5(?), and falls through when a4(?) != a5(?).
  The `beq` branch at 0x216f97c targets 0x216f988 and is always taken.
  The `bne` branch at 0x216f988 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f990 targets 0x216f9b0, is taken when a6(?) == s4(=-0x1), and falls through when a6(?) != s4(=-0x1).
  The `beq` branch at 0x216f9a0 targets 0x216f9b4, is taken when t0(?) == t9(?), and falls through when t0(?) != t9(?).
  The `beq` branch at 0x216f9a8 targets 0x216f9b4 and is always taken.
  The `bne` branch at 0x216f9b4 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f9bc targets 0x216f9d0, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x216f9c8 targets 0x216fa24, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x216f9d0 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216f9d8 targets 0x216f9f8, is taken when s4(=-0x1) == v0(?), and falls through when s4(=-0x1) != v0(?).
  The `beq` branch at 0x216f9e8 targets 0x216f9fc, is taken when v1(?) >= a0(?) (unsigned), and falls through when v1(?) < a0(?) (unsigned).
  The `beq` branch at 0x216f9f0 targets 0x216f9fc and is always taken.
  The `bne` branch at 0x216f9fc targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216fa04 targets 0x216fa2c, is taken when s4(=-0x1) == a1(?), and falls through when s4(=-0x1) != a1(?).
  The `beq` branch at 0x216fa14 targets 0x216fa30, is taken when a4(?) >= a5(?) (unsigned), and falls through when a4(?) < a5(?) (unsigned).
  The `beq` branch at 0x216fa1c targets 0x216fa30 and is always taken.
  The `beq` branch at 0x216fa24 targets 0x216f9d0 and is always taken.
  The `bne` branch at 0x216fa30 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216fa38 targets 0x216fabc, is taken when s4(=-0x1) == a6(?), and falls through when s4(=-0x1) != a6(?).
  The `bne` branch at 0x216fa44 targets 0x216f544, is taken when t0(?) != t9(?), and falls through when t0(?) == t9(?).
  The `beq` branch at 0x216fa4c targets 0x216fa6c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bc1f` branch at 0x216fa60 targets 0x216fa6c, is taken when not (f12 < f13 (c.lt.d at 0x216fa5c)), and falls through when f12 < f13 (c.lt.d at 0x216fa5c).
  The `bne` branch at 0x216fa6c targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216fa74 targets 0x216fbc4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bc1f` branch at 0x216fa84 targets 0x216fbc8, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0x216fa8c targets 0x216fbc8 and is always taken.
  The `bne` branch at 0x216fab4 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216fad4 targets 0x216fbfc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x216fb70 targets 0x216faf4, is taken when a6(?) != a4(?), and falls through when a6(?) == a4(?).
  The `beq` branch at 0x216fb80 targets 0x216fbf4, is taken when a6(?) >= ra(?) (signed), and falls through when a6(?) < ra(?) (signed).
  The `beq` branch at 0x216fba4 targets 0x216fbbc, is taken when a1(?) == ra(?), and falls through when a1(?) != ra(?).
  The `bne` branch at 0x216fbb4 targets 0x216fb9c, is taken when a1(?) != ra(?), and falls through when a1(?) == ra(?).
  The `beq` branch at 0x216fbbc targets 0x216f544 and is always taken.
  The `bne` branch at 0x216fbc8 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216fbd0 targets 0x216fc04, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bc1f` branch at 0x216fbe4 targets 0x216fc04, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0x216fbec targets 0x216fc04 and is always taken.
  The `beq` branch at 0x216fbf4 targets 0x216fbbc and is always taken.
  The `beq` branch at 0x216fbfc targets 0x216fbbc and is always taken.
  The `bne` branch at 0x216fc04 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216fc0c targets 0x216fc2c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bc1f` branch at 0x216fc1c targets 0x216fc30, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0x216fc24 targets 0x216fc30 and is always taken.
  The `bne` branch at 0x216fc30 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216fc38 targets 0x216fc58, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bc1f` branch at 0x216fc4c targets 0x216fc58, is taken when not (f20 < f21 (c.lt.d at 0x216fc48)), and falls through when f20 < f21 (c.lt.d at 0x216fc48).
  The `bne` branch at 0x216fc58 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216fc60 targets 0x216fc80, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bc1f` branch at 0x216fc70 targets 0x216fc84, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0x216fc78 targets 0x216fc84 and is always taken.
  The `bne` branch at 0x216fc84 targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216fc8c targets 0x216fcac, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bc1f` branch at 0x216fca0 targets 0x216fcac, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bne` branch at 0x216fcac targets 0x216f544, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x216fcc0 targets 0x216fa94, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bc1f` branch at 0x216fcd4 targets 0x216fa98, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0x216fcdc targets 0x216fa98 and is always taken.
  The `beq` branch at 0x216fce8 targets 0x216f3dc and is always taken.
  The return at 0x216e740 has v0 = 0x0.
  The return at 0x216e92c has v0 = 0x0.
  The return at 0x216e954 has v0 = one of 0x0, ret(malloc).
  The return at 0x216e9b8 has v0 = 0x0.
  The return at 0x216eb40 has v0 = 0x0.
  The return at 0x216eb78 has v0 = ret(malloc).
  The instructions from 0x216e4b4 to 0x216e4b8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x216f398 to 0x216f398 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x216f538 to 0x216f538 are not reached by any path from the entry, and their branches are not listed.

- `glXGetFBConfigs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x216fcf0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x216fcf0-0x216fe68 (376 bytes).
  It occupies 376 bytes.
  The `lw` at 0x216fd30 loads 4 bytes from a0 (arg0 at entry) +0xe4.
  The `ld` at 0x216fd58 loads 8 bytes from ret(__glXInitialize) +0x30.
  The `lw` at 0x216fd68 loads 4 bytes from ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x20.
  The `ld` at 0x216fd6c loads 8 bytes from ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x18.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x216fdd0, `sd` at 0x216fdf8, `sd` at 0x216fe00.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x216fe3c, `sw` at 0x216fe5c.
  The `jalr` at 0x216fd18 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x216fd78 calls malloc with a0=([([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32] << 0x3), a1=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8, a2=(a1 << 0x6), a3=?.
  The `beq` branch at 0x216fd20 targets 0x216fe48, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `bltz` branch at 0x216fd28 targets 0x216fd40, is taken when s0(=a1) < 0 (signed), and falls through when s0(=a1) >= 0 (signed).
  The `bne` branch at 0x216fd38 targets 0x216fd58, is taken when s0(=a1) < v1(=[a0+228]) (signed), and falls through when s0(=a1) >= v1(=[a0+228]) (signed).
  The `beq` branch at 0x216fd8c targets 0x216fe5c, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `blez` branch at 0x216fd98 targets 0x216fe3c, is taken when a7(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed), and falls through when a7(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  The `beq` branch at 0x216fdc4 targets 0x216fde0, is taken when (a7(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) & 0x7) == 0, and falls through when (a7(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) & 0x7) != 0.
  The `bne` branch at 0x216fdd8 targets 0x216fdcc, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x216fde4 targets 0x216fe38, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x216fe30 targets 0x216fdf0, is taken when a1(?) != a5(?), and falls through when a1(?) == a5(?).
  The `beq` branch at 0x216fe60 targets 0x216fd48 and is always taken.
  The return at 0x216fd50 has v0 = 0x0.
  The return at 0x216fe40 has v0 = ret(malloc).
  The return at 0x216fe54 has v0 = 0x0.

- `glXCreateNewContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x21700ac (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x21700ac-0x2170100 (84 bytes).
  It occupies 84 bytes.
  The `jalr` at 0x21700e8 calls (unnamed) [0x2167248] with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=0x0, a7=0x0.
  The return at 0x21700f8 has v0 = ret(0x2167248).

- `glXQueryContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2170484 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2170484-0x2170560 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0x21704a4 loads 4 bytes from a1 (arg1 at entry) +0x118.
  The `lw` at 0x21704f8 loads 4 bytes from a1 (arg1 at entry) +0x3c.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x2170500, `sw` at 0x2170508, `sw` at 0x217055c.
  The `ld` at 0x2170504 loads 8 bytes from a1 (arg1 at entry) +0x58.
  The `ld` at 0x2170518 loads 8 bytes from a1 (arg1 at entry) +0x50.
  The `lw` at 0x2170554 loads 4 bytes from a1 (arg1 at entry) +0x60.
  The `bgezall` at 0x2170534 calls (unnamed) [0x2170100] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[a1+80]:8.
  The `beq` branch at 0x217049c targets 0x21704e4, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x21704a8 targets 0x2170518, is taken when v0(=[a1+280]) == 0, and falls through when v0(=[a1+280]) != 0.
  The `beq` branch at 0x21704bc targets 0x2170504, is taken when s0(=a2) == v1(=0x8013), and falls through when s0(=a2) != v1(=0x8013).
  The `beq` branch at 0x21704c4 targets 0x2170554, is taken when s0(=a2) == a0(=0x8011), and falls through when s0(=a2) != a0(=0x8011).
  The `beq` branch at 0x21704cc targets 0x21704f8, is taken when s0(=a2) == a2(=0x800c), and falls through when s0(=a2) != a2(=0x800c).
  The `beq` branch at 0x21704fc targets 0x217050c and is always taken.
  The `bne` branch at 0x217051c targets 0x21704b0, is taken when a6(=[a1+80]:8) != 0, and falls through when a6(=[a1+80]:8) == 0.
  The `beq` branch at 0x2170544 targets 0x21704ac, is taken when v0(=ret(0x2170100)) == 0, and falls through when v0(=ret(0x2170100)) != 0.
  The `beq` branch at 0x217054c targets 0x21704d8 and is always taken.
  The `beq` branch at 0x2170558 targets 0x217050c and is always taken.
  The return at 0x21704dc has v0 = one of 0x2, ret(0x2170100).
  The return at 0x21704f0 has v0 = 0x5.
  The return at 0x2170510 has v0 = 0x0.

- `glXCreateWindow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2170560 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2170560-0x21706a8 (328 bytes).
  It occupies 328 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x21705a0, `ld` at 0x217063c.
  The `ld` at 0x21705ac loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x21705b8, `ld` at 0x21705f0, `ld` at 0x2170690.
  The `ld` at 0x21705bc loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x21705d8 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x21705e0 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x21705e8, `sb` at 0x2170608.
  The `ld` at 0x21705ec loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x21705f8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2170600 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sb` at 0x2170604 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x217060c loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0x2170610 stores 4 bytes to [a0+176]:8 +0x4.
  The `lw` at 0x2170614 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0x2170618 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x217061c stores 4 bytes to [a0+176]:8 +0x8.
  The `ld` at 0x2170620 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `sw` at 0x2170634 stores 4 bytes to [a0+176]:8 +0x14.
  The `sw` at 0x2170638 stores 4 bytes to [a0+176]:8 +0x10.
  The `ld` at 0x2170648 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2170654 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x217058c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x21705b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2170628 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=[a1+72], a4=[a1+36], a5=[a0+176]:8, a6=0x1f, a7=ret(__glXSetupForCommand).
  The `jalr` at 0x217064c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2170660 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2170684 calls _XFlush with a0=a0 at entry (arg0), a1=[a0+176]:8+24, a2=a2 at entry (arg2), a3=?, a5=[a0+176]:8.
  The `beq` branch at 0x2170598 targets 0x2170694, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x21705a4 targets 0x21705b8, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x21705c8 targets 0x2170680, is taken when a0(=[a0+184]:8) < a1(=[a0+176]:8+24) (unsigned), and falls through when a0(=[a0+184]:8) >= a1(=[a0+176]:8+24) (unsigned).
  The `beq` branch at 0x2170640 targets 0x2170654, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2170658 targets 0x217066c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x217068c targets 0x21705cc and is always taken.
  The return at 0x2170678 has v0 = ret(?).
  The return at 0x21706a0 has v0 = 0x0.

- `glXDestroyWindow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x21706a8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x21706a8-0x21707a4 (252 bytes).
  It occupies 252 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x21706e4, `ld` at 0x2170754.
  The `ld` at 0x21706f0 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x21706fc, `ld` at 0x2170734, `ld` at 0x21707a0.
  The `ld` at 0x2170700 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x217071c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2170724 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x217072c, `sb` at 0x217074c.
  The `ld` at 0x2170730 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x217073c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2170744 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2170748 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2170750 stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0x2170760 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x217076c loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x21706d0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x21706f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2170764 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=a1 at entry (arg1), a4=[a0+2408]:8, a5=ret(__glXSetupForCommand), a6=[a0+152]:8+1, a7=[a0+176]:8+8.
  The `jalr` at 0x2170778 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2170794 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8+8, a3=?.
  The `beq` branch at 0x21706dc targets 0x2170784, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x21706e8 targets 0x21706fc, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `bne` branch at 0x217070c targets 0x2170794, is taken when a1(=[a0+184]:8) < a2(=[a0+176]:8+8) (unsigned), and falls through when a1(=[a0+184]:8) >= a2(=[a0+176]:8+8) (unsigned).
  The `beq` branch at 0x2170758 targets 0x217076c, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2170770 targets 0x2170784, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x217079c targets 0x2170714 and is always taken.
  The return at 0x217078c has v0 = one of ret(__glXSetupForCommand), ?, ret(?).

- `__glXGetReadDrawableSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2170a44 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2170a44-0x2170b50 (268 bytes).
  It occupies 268 bytes.
  The `ld` at 0x2170a4c loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `ld` at 0x2170a50 loads 8 bytes from [a0+152]:8 +0x158.
  The `lw` at 0x2170a5c loads 4 bytes from [[a0+152]:8+344]:8 +0x40.
  3 such `ld` accesses load 8 bytes from [a0+152]:8 +0x138, including `ld` at 0x2170a90, `ld` at 0x2170b2c, `ld` at 0x2170b44.
  3 such `ld` accesses load 8 bytes from [a0+152]:8 +0x140, including `ld` at 0x2170aa8, `ld` at 0x2170b20, `ld` at 0x2170b38.
  The `sw` at 0x2170ad4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x2170ae4 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `ld` at 0x2170afc loads 8 bytes from [[a0+152]:8+344]:8 +0x30.
  The `jalr` at 0x2170ab4 calls XGetGeometry with a0=[[a0+152]:8+312]:8, a1=[[a0+152]:8+320]:8, a2=sp-96, a3=sp-88, a4=sp-84, a5=sp-80, a6=sp-76, a7=sp-72.
  The `jalr` at 0x2170b08 calls XGetGeometry with a0=[[a0+152]:8+312]:8, a1=[[[a0+152]:8+344]:8+48]:8, a2=sp-64, a3=sp-56, a4=sp-52, a5=sp-80, a6=sp-76, a7=sp-48.
  The `jalr` at 0x2170b28 calls glXQueryGLXPbufferSGIX with a0=[[a0+152]:8+312]:8, a1=[[a0+152]:8+320]:8, a2=0x801d, a3=sp-80, a4=[[[a0+152]:8+344]:8+64].
  The `jalr` at 0x2170b40 calls glXQueryGLXPbufferSGIX with a0=[[a0+152]:8+312]:8, a1=[[a0+152]:8+320]:8, a2=0x801e, a3=sp-76.
  The `beq` branch at 0x2170a7c targets 0x2170b18, is taken when a4(=[[[a0+152]:8+344]:8+64]) == at(=0x4), and falls through when a4(=[[[a0+152]:8+344]:8+64]) != at(=0x4).
  The `beq` branch at 0x2170a84 targets 0x2170b1c, is taken when a4(=[[[a0+152]:8+344]:8+64]) == v1(=0x5), and falls through when a4(=[[[a0+152]:8+344]:8+64]) != v1(=0x5).
  The `beq` branch at 0x2170a8c targets 0x2170ae8, is taken when a4(=[[[a0+152]:8+344]:8+64]) == a0(=0x6), and falls through when a4(=[[[a0+152]:8+344]:8+64]) != a0(=0x6).
  The `beq` branch at 0x2170b10 targets 0x2170ac0 and is always taken.
  The `beq` branch at 0x2170b48 targets 0x2170ac0 and is always taken.
  The return at 0x2170ae0 has v0 = one of ret(XGetGeometry), ret(glXQueryGLXPbufferSGIX).

- `glXJoinSwapGroupSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2170ca0 (n64).
  Appends a 0x14-byte block to the buffer whose write pointer is the word at +0xb0 of the first argument, and advances that pointer by 0x14 (`sd` at 0x2170d38).
  It calls `__glXSetupForCommand` on its four argument registers first (`jalr` at 0x2170cd0) and saves the result in a frame slot (`sd` at 0x2170ce0); if the doubleword at +0x968 is nonzero, a call goes through the first word of the table it points to (`jalr` at 0x2170ce8).
  When the limit doubleword at +0xb8 is below the pointer at +0xb0 plus 0x14, unsigned (`bne` at 0x2170d00), `_XFlush` is called first (`jalr` at 0x2170d98) and the pointer is reloaded.
  The block holds the halfword 0x5 at +0x2 (`sh` at 0x2170d18), the byte 0x10 at +0x1 (`sb` at 0x2170d50), the word 0x1000b at +0x4 (`sw` at 0x2170d4c), a1 at +0xc (`sw` at 0x2170d44) and a2 at +0x10 (`sw` at 0x2170d3c).
  The byte at +0x0 is first set to 0x10 (`sb` at 0x2170d20) and then overwritten by the `sb` at 0x2170d54 with the low byte of the saved setup result.
  The doubleword at +0x98 gets one added (`sd` at 0x2170d30), and the pointer at +0xa0 receives the block address from before the advance (`sd` at 0x2170d10).
  After the writes, a call goes through the second word of the +0x968 table (`jalr` at 0x2170d68) when that table pointer is nonzero (`beq` at 0x2170d5c), and a call goes through the pointer at +0xd0 (`jalr` at 0x2170d7c) when it is nonzero (`beq` at 0x2170d74).
  Unknown: the target of the table calls and of the +0xd0 pointer, which the bundle reaches only through registers; and the value in v0 at the return at 0x2170d90, which is whatever the last call left.
  Evidence grade: established.

- `glXJoinSwapGroupSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2170ca0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2170ca0-0x2170da8 (264 bytes).
  It occupies 264 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2170cd8, `ld` at 0x2170d58.
  The `ld` at 0x2170ce4 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2170cf0, `ld` at 0x2170d28, `ld` at 0x2170da4.
  The `ld` at 0x2170cf4 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2170d10 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2170d18 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2170d20, `sb` at 0x2170d54.
  The `ld` at 0x2170d24 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2170d30 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2170d38 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2170d3c stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2170d44 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x2170d4c stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2170d50 stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0x2170d64 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2170d70 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x2170cd0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2170ce8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2170d68 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x1000b, a3=0x10, a4=ret(__glXSetupForCommand), a5=[a0+2408]:8, a6=[a0+176]:8+20, a7=0x5.
  The `jalr` at 0x2170d7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2170d98 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2170cdc targets 0x2170cf0, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2170d00 targets 0x2170d98, is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+20) (unsigned), and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+20) (unsigned).
  The `beq` branch at 0x2170d5c targets 0x2170d70, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2170d74 targets 0x2170d84, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2170da0 targets 0x2170d08 and is always taken.
  The return at 0x2170d90 has v0 = one of ?, ret(?).

- `glXBindSwapBarrierSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2170da8 (n64).
  Writes a 0x14-byte record at the buffer pointer kept at +0xb0 of the context in a0, copying that
  pointer to +0xa0 first (the `sd` at 0x2170e14) and advancing +0xb0 by 0x14 (the `sd` at
  0x2170e3c). It calls `__glXSetupForCommand` with the four argument registers first (the `jalr`
  at 0x2170dd8), keeps its result in a frame slot (the `sd` at 0x2170de8), and calls slot +0 of the
  pointer at +0x968 when that pointer is non-zero (the `jalr` at 0x2170df0). Inferred: the
  note committed for `__glXSetupForCommand` (written for the IP30ODSY image of the same library) gives its result as a per-context byte, a
  looked-up byte, or zero, which is why the saved result is what the record keeps at +0. When the pointer
  at +0xb8 is below the buffer pointer plus 0x14 (the `bne` at 0x2170e08), it calls `_XFlush` with
  the saved result in a4 (the `jalr` at 0x2170ea0), reloads the buffer pointer, and then writes the
  record. The record holds 0x5 as a halfword at +2 (the `sh` at 0x2170e1c), 0x10 at +1 (the `sb` at
  0x2170e54), 0x1000c at +4 (the `sw` at 0x2170e50), the arguments a2 and a1 at +0x10 and +0xc (the
  `sw` at 0x2170e40 and 0x2170e48), and the saved result at +0 (the `sb` at 0x2170e58, after the
  `sb` at 0x2170e24 wrote 0x10 there); it also adds 1 to the doubleword at +0x98 (the `sd` at 0x2170e34).
  When the pointer at +0x968 is non-zero, it calls slot +8 of that pointer's table with 0x1000c,
  0x10 and 0x5 among its arguments (the `jalr` at 0x2170e6c). When the pointer at +0xd0 is
  non-zero (the `beq` at 0x2170e78), it calls that pointer (the `jalr` at 0x2170e80) and returns
  (the `jr ra` at 0x2170e94). Unknown: the value the return at 0x2170e94 leaves in v0 on the path
  that skips the call at 0x2170e80, and the content of the routines behind +0x968 and +0xd0 and
  of `_XFlush`; their committed notes are the route to it.
  Evidence grade: inferred.

- `glXBindSwapBarrierSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2170da8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2170da8-0x2170eb0 (264 bytes).
  It occupies 264 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2170de0, `ld` at 0x2170e5c.
  The `ld` at 0x2170dec loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2170df8, `ld` at 0x2170e2c, `ld` at 0x2170eac.
  The `ld` at 0x2170dfc loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2170e14 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2170e1c stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2170e24, `sb` at 0x2170e58.
  The `ld` at 0x2170e28 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2170e34 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2170e3c stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2170e40 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2170e48 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x2170e50 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2170e54 stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0x2170e68 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2170e74 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x2170dd8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2170df0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2170e6c calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x1000c, a3=0x10, a4=ret(__glXSetupForCommand), a5=[a0+2408]:8, a6=[a0+176]:8+20, a7=0x5.
  The `jalr` at 0x2170e80 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2170ea0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=ret(__glXSetupForCommand).
  The `beq` branch at 0x2170de4 targets 0x2170df8, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2170e08 targets 0x2170e9c, is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+20) (unsigned), and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+20) (unsigned).
  The `beq` branch at 0x2170e60 targets 0x2170e74, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2170e78 targets 0x2170e88, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2170ea8 targets 0x2170e0c and is always taken.
  The return at 0x2170e94 has v0 = one of ?, ret(?).

- `glXQueryMaxSwapBarriersSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2170eb0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2170eb0-0x2171024 (372 bytes).
  It occupies 372 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2170ee8, `ld` at 0x2170f80.
  The `ld` at 0x2170ef4 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2170f00, `ld` at 0x2170f34, `ld` at 0x2170fdc.
  The `ld` at 0x2170f04 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2170f1c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2170f24 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2170f2c, `sb` at 0x2170f78.
  The `ld` at 0x2170f30 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2170f3c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2170f44 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2170f48 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x2170f60 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2170f6c stores 1 byte to [a0+176]:8 +0x1.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2170f8c, `ld` at 0x2170fe8.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2170f98, `ld` at 0x2170ff4.
  The `sw` at 0x2170fb8 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0x2170ee0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2170ef8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2170f74 calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a5=0x11, a6=[a0+176]:8, a7=0x1000d.
  The `jalr` at 0x2170f90 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2170fa4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2170fd0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2170fec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2171000 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2170eec targets 0x2170f00, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2170f10 targets 0x2170fd0, is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+16) (unsigned), and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0x2170f7c targets 0x2170fe0, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2170f84 targets 0x2170f98, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2170f9c targets 0x2170fac, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2170fd8 targets 0x2170f18 and is always taken.
  The `beq` branch at 0x2170fe0 targets 0x2170ff4, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2170ff8 targets 0x217100c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x2170fc8 has v0 = 0x1.
  The return at 0x217101c has v0 = 0x0.

- `glXBindChannelToWindowSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x21711c0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x21711c0-0x21712e4 (292 bytes).
  It occupies 292 bytes.
  The `ld` at 0x21711d8 loads 8 bytes from abs 0x1028.
  The `ld` at 0x21711f0 loads 8 bytes from [0x1028]:8 +0x118.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x2171284, `sb` at 0x21712e0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2171288, `ld` at 0x217128c.
  The `lw` at 0x21712a0 loads 4 bytes from ?.
  The `jalr` at 0x21711f4 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2171218 calls __glXInitChannelRectState [0x2171024] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0x2171244 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-80, a5=0x4.
  The `jalr` at 0x2171254 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x217129c calls (unknown callee) with a0=?, a1=0x1, a2=?, a3=?, a7=(((a2 << 0x2) + a2) << 0x3).
  The `beq` branch at 0x21711fc targets 0x21712b8, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0x2171220 targets 0x21712cc, is taken when v0(=ret(__glXInitChannelRectState)) == 0, and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beq` branch at 0x2171280 targets 0x21712dc, is taken when v1(=a3) == 0, and falls through when v1(=a3) != 0.
  The `beq` branch at 0x2171290 targets 0x21712d4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x21712cc targets 0x21712bc and is always taken.
  The `beq` branch at 0x21712d4 targets 0x21712c0 and is always taken.
  The `beq` branch at 0x21712dc targets 0x21712a4 and is always taken.
  The return at 0x21712b0 has v0 = 0x1.
  The return at 0x21712c4 has v0 = 0x0.

- `glXQueryHyperpipeNetworkSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x217187c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x217187c-0x2171af0 (628 bytes).
  It occupies 628 bytes.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x21718b0, `sw` at 0x217195c, `sw` at 0x21719a4.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x21718b4, `ld` at 0x2171978, `ld` at 0x2171a04.
  The `ld` at 0x21718c0 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x21718cc, `ld` at 0x2171904, `ld` at 0x2171aa0.
  The `ld` at 0x21718d0 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x21718ec stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x21718f4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x21718fc, `sb` at 0x2171930.
  The `ld` at 0x2171900 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x217190c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171918 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2171920 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2171928 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x217193c loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2171948 stores 4 bytes to [a0+176]:8 +0xc.
  4 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2171984, `ld` at 0x2171a10, `ld` at 0x2171a58.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2171990, `ld` at 0x2171a1c, `ld` at 0x2171a64.
  The `jalr` at 0x21718a8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x21718c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171944 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+224], a5=0x1000e, a6=[a0+176]:8, a7=0x11.
  The `jalr` at 0x2171970 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171988 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x217199c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x21719e0 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x21719fc calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171a14 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171a28 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171a44 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x2171a5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171a70 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171a94 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2171ab4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171ac8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x21718b8 targets 0x21718cc, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x21718dc targets 0x2171a94, is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+16) (unsigned), and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0x217194c targets 0x2171aa4, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `blez` branch at 0x2171958 targets 0x2171968, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bne` branch at 0x2171964 targets 0x21719c4, is taken when a0(?) < 0x21 (signed), and falls through when a0(?) >= 0x21 (signed).
  The `beq` branch at 0x217197c targets 0x2171990, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171994 targets 0x21719a4, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `bne` branch at 0x21719ec targets 0x2171a3c, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0x2171a08 targets 0x2171a1c, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171a20 targets 0x2171a30, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2171a34 targets 0x21719ac and is always taken.
  The `beq` branch at 0x2171a50 targets 0x2171a64, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171a68 targets 0x2171a7c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2171a9c targets 0x21718e4 and is always taken.
  The `beq` branch at 0x2171aa8 targets 0x2171abc, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171ac0 targets 0x2171ad0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x21719bc has v0 = 0x0.
  The return at 0x2171a8c has v0 = ?.
  The return at 0x2171ae8 has v0 = 0x0.

- `glXHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2171af0 (n64).
  Packs the caller's byte array (a3, with a count in a2) into a request block in the first argument's buffer at +0xb0, waits for a reply with `_XReply`, and stores one reply word through the pointer in a4.
  It calls `__glXSetupForCommand` with its four arguments first (`jalr` at 0x2171b2c), then returns 0x5b before writing anything when the count is zero or negative (`blez` at 0x2171b34), when a3 is zero (`beq` at 0x2171b3c), when the count is 0x21 or more (`beq` at 0x2171b44), or when a1 is negative (`bltz` at 0x2171b4c).
  The setup result is kept in a frame slot (`sd` at 0x2171b5c); if the doubleword at +0x968 of the first argument is nonzero, a call goes through the first word of the table it points to (`jalr` at 0x2171b64).
  The block size is the count scaled by a fixed shift-and-subtract sequence (0x2171b6c to 0x2171b7c) plus 0x20.
  When the limit doubleword at +0xb8 is below the pointer at +0xb0 plus that size, unsigned (`bne` at 0x2171b98), the size is saved, `_XFlush` is called (`jalr` at 0x2171d58), and the size and the +0xb0 pointer are reloaded.
  The pointer is then copied to +0xa0 (`sd` at 0x2171ba8) and the block gets the size shifted right by 2 as a halfword at +0x2 (`sh` at 0x2171bb0), bytes 0x10 and 0x11 at +0x0 and +0x1 (`sb` at 0x2171bb8 and 0x2171be8), the word 0x10010 at +0x4 (`sw` at 0x2171bdc), the word from +0xe0 of the first argument at +0xc (`sw` at 0x2171c08), a1 at +0x14 (`sw` at 0x2171bf0) and the count at +0x10 (`sw` at 0x2171bfc).
  The `sb` at 0x2171be0 then overwrites the byte at +0x0 with the low byte of the saved setup result, the `sd` at 0x2171bc8 adds one to the doubleword at +0x98, and the `sd` at 0x2171bd4 adds the size to the pointer at +0xb0.
  The array is copied to the block from +0x20 on, skipped when the size less 0x20 is zero or negative (`blez` at 0x2171c04); a first single-byte copy (`lbu` at 0x2171c1c, `sb` at 0x2171c28) runs when the low bit of that difference is set (`beq` at 0x2171c10), and the loop at 0x2171c40 to 0x2171c5c then moves two bytes per pass from the caller's array to the block until its counter, stepping by 2, equals the difference.
  `_XReply` is called with a1 the frame base and a2 and a3 zero (`jalr` at 0x2171c70).
  When it returns zero (`beq` at 0x2171c78) the routine makes the two optional calls through the second word of the +0x968 table and the pointer at +0xd0 (`jalr` at 0x2171d7c and 0x2171d90) and returns 0x5b.
  Otherwise the reply word at frame offset 0x14 is stored through the pointer from a4 (`sw` at 0x2171c84); if the reply word at frame offset 0x10 differs from the count, or the word at 0x14 is negative (`bne` at 0x2171c8c, `bltz` at 0x2171c94), the two optional calls at 0x2171d18 and 0x2171d2c run and it returns 0x5b, and otherwise those at 0x2171cac and 0x2171cc0 run and it returns 0x0.
  Unknown: the routines behind the pointers at +0x968 and +0xd0, and what the reply words at frame offsets 0x10 and 0x14 hold; the layout of the reply would settle it.
  Evidence grade: established.

- `glXHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2171af0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2171af0-0x2171db4 (708 bytes).
  It occupies 708 bytes.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2171b54, `ld` at 0x2171c9c, `ld` at 0x2171d08.
  The `ld` at 0x2171b60 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2171b80, `ld` at 0x2171bc0, `ld` at 0x2171d68.
  The `ld` at 0x2171b88 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2171ba8 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2171bb0 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2171bb8, `sb` at 0x2171be0.
  The `ld` at 0x2171bbc loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171bc8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171bd4 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2171bdc stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2171be8 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x2171bec loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2171bf0 stores 4 bytes to [a0+176]:8 +0x14.
  The `sw` at 0x2171bfc stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2171c08 stores 4 bytes to [a0+176]:8 +0xc.
  The `lbu` at 0x2171c1c loads 1 byte from a3 (arg3 at entry) +0x0.
  The `sb` at 0x2171c28 stores 1 byte to [a0+176]:8 +0x20.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2171c40, `lbu` at 0x2171c50.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x2171c48, `sb` at 0x2171c5c.
  The `sw` at 0x2171c84 stores 4 bytes to a4 (arg4 at entry) +0x0.
  3 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2171ca8, `ld` at 0x2171d14, `ld` at 0x2171d78.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2171cb4, `ld` at 0x2171d20, `ld` at 0x2171d84.
  The `jalr` at 0x2171b2c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2171b64 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171c70 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a4=[a0+224], a5=a1 at entry (arg1), a6=0x10010.
  The `jalr` at 0x2171cac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a4 at entry (arg4), a3=?.
  The `jalr` at 0x2171cc0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171d18 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a4 at entry (arg4), a3=?.
  The `jalr` at 0x2171d2c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171d58 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171d7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171d90 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0x2171b34 targets 0x2171ce8, is taken when s1(=a2) <= 0 (signed), and falls through when s1(=a2) > 0 (signed).
  The `beq` branch at 0x2171b3c targets 0x2171ce8, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0x2171b44 targets 0x2171ce8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bltz` branch at 0x2171b4c targets 0x2171da4, is taken when a0(=a1) < 0 (signed), and falls through when a0(=a1) >= 0 (signed).
  The `beq` branch at 0x2171b58 targets 0x2171b6c, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2171b98 targets 0x2171d54, is taken when a1(=[a0+184]:8) < a3(?) (unsigned), and falls through when a1(=[a0+184]:8) >= a3(?) (unsigned).
  The `blez` branch at 0x2171c04 targets 0x2171c60, is taken when a7(?) <= 0 (signed), and falls through when a7(?) > 0 (signed).
  The `beq` branch at 0x2171c10 targets 0x2171c2c, is taken when (a7(?) & 0x1) == 0, and falls through when (a7(?) & 0x1) != 0.
  The `beq` branch at 0x2171c30 targets 0x2171c60, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2171c58 targets 0x2171c40, is taken when a7(?) != a1(?), and falls through when a7(?) == a1(?).
  The `beq` branch at 0x2171c78 targets 0x2171d6c, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0x2171c8c targets 0x2171d08, is taken when s1(=a2) != a1(?), and falls through when s1(=a2) == a1(?).
  The `bltz` branch at 0x2171c94 targets 0x2171d08, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0x2171ca0 targets 0x2171cb4, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171cb8 targets 0x2171cc8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2171d0c targets 0x2171d20, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171d24 targets 0x2171d34, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2171d64 targets 0x2171ba0 and is always taken.
  The `beq` branch at 0x2171d70 targets 0x2171d84, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171d88 targets 0x2171d98, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2171d9c targets 0x2171cf4 and is always taken.
  The `beq` branch at 0x2171dac targets 0x2171cf4 and is always taken.
  The return at 0x2171ce0 has v0 = 0x0.
  The return at 0x2171d00 has v0 = 0x5b.
  The return at 0x2171d4c has v0 = 0x5b.

- `glXDestroyHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2171db4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2171db4-0x2171f28 (372 bytes).
  It occupies 372 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2171de8, `ld` at 0x2171e84.
  The `ld` at 0x2171df4 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2171e00, `ld` at 0x2171e34, `ld` at 0x2171ee0.
  The `ld` at 0x2171e04 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2171e1c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2171e24 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2171e2c, `sb` at 0x2171e5c.
  The `ld` at 0x2171e30 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171e3c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171e48 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2171e50 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2171e58 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x2171e64 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2171e70 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2171e7c stores 4 bytes to [a0+176]:8 +0xc.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2171e94, `ld` at 0x2171eec.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2171ea0, `ld` at 0x2171ef8.
  The `jalr` at 0x2171de0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2171df8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2171e78 calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a4=[a0+224], a5=0x10011, a6=[a0+176]:8, a7=0x11.
  The `jalr` at 0x2171e98 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2171eac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171ed4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2171ef0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2171f04 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2171dec targets 0x2171e00, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2171e10 targets 0x2171ed0, is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+32) (unsigned), and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+32) (unsigned).
  The `beq` branch at 0x2171e80 targets 0x2171ee4, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2171e8c targets 0x2171ea0, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171ea4 targets 0x2171eb8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2171edc targets 0x2171e14 and is always taken.
  The `beq` branch at 0x2171ee4 targets 0x2171ef8, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171efc targets 0x2171f10, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x2171ec8 has v0 = ?.
  The return at 0x2171f20 has v0 = 0x5c.

- `glXQueryHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2171f28 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2171f28-0x2172190 (616 bytes).
  It occupies 616 bytes.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x2171f60, `sw` at 0x2172014, `sw` at 0x2172018.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2171f64, `ld` at 0x217201c, `ld` at 0x21720a0.
  The `ld` at 0x2171f70 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2171f7c, `ld` at 0x2171fb4, `ld` at 0x2172154.
  The `ld` at 0x2171f80 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2171f9c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2171fa4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2171fac, `sb` at 0x2171fdc.
  The `ld` at 0x2171fb0 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171fbc stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171fc8 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2171fd0 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2171fd8 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x2171fe4 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2171ff0 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2171ffc stores 4 bytes to [a0+176]:8 +0xc.
  4 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2172028, `ld` at 0x21720ac, `ld` at 0x217210c.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2172034, `ld` at 0x21720b8, `ld` at 0x2172118.
  The `jalr` at 0x2171f58 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2171f74 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171ff8 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+224], a5=a1 at entry (arg1), a6=[a0+176]:8, a7=0x1000f.
  The `jalr` at 0x217202c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2172040 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x217207c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2172094 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x21720b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x21720c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x21720f8 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x2172110 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2172124 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2172148 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=a1 at entry (arg1), a6=[a0+176]:8.
  The `jalr` at 0x217216c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2172180 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2171f68 targets 0x2171f7c, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2171f8c targets 0x2172144, is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+32) (unsigned), and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+32) (unsigned).
  The `beq` branch at 0x2172000 targets 0x2172158, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bgtz` branch at 0x2172010 targets 0x2172064, is taken when at(?) > 0 (signed), and falls through when at(?) <= 0 (signed).
  The `beq` branch at 0x2172020 targets 0x2172034, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2172038 targets 0x217204c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `bne` branch at 0x2172084 targets 0x21720e8, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0x21720a4 targets 0x21720b8, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x21720bc targets 0x21720d0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2172104 targets 0x2172118, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x217211c targets 0x2172130, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2172150 targets 0x2171f90 and is always taken.
  The `beq` branch at 0x2172160 targets 0x2172174, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2172178 targets 0x2172188, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2172188 targets 0x2172130 and is always taken.
  The return at 0x217205c has v0 = 0x0.
  The return at 0x21720e0 has v0 = 0x0.
  The return at 0x217213c has v0 = one of ?, 0x0.

- `__glx_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x21747dc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x21747dc-0x2174848 (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x21747dc loads 8 bytes from abs 0x1028.
  The `ld` at 0x21747e0 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x21747e4 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  The `sw` at 0x21747e8 stores 4 bytes to [[[0x1028]:8+280]:8+8]:8 +0x4.
  The `sh` at 0x21747f0 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x2.
  The `sh` at 0x21747f8 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x0.
  The `ld` at 0x21747fc loads 8 bytes from [[0x1028]:8+280]:8 +0x10.
  The `sd` at 0x2174820 stores 8 bytes to [[0x1028]:8+280]:8 +0x8.
  The `jalr` at 0x2174838 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8+8, a2=0x81d, a3=[[0x1028]:8+280]:8, a4=0x8.
  The `bne` branch at 0x217481c targets 0x2174830, is taken when at(=[[[0x1028]:8+280]:8+16]:8) < a1(=[[[0x1028]:8+280]:8+8]:8+8) (unsigned), and falls through when at(=[[[0x1028]:8+280]:8+16]:8) >= a1(=[[[0x1028]:8+280]:8+8]:8+8) (unsigned).
  The `beq` branch at 0x2174840 targets 0x2174824 and is always taken.
  The return at 0x2174828 has v0 = one of 0xf2cc, ret(__glXFlushRenderBuffer).

- `__glx_AreTexturesResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2174b5c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2174b5c-0x2174d44 (488 bytes).
  It occupies 488 bytes.
  The `ld` at 0x2174b64 loads 8 bytes from abs 0x1028.
  The `ld` at 0x2174b70 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x2174b84 loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `ld` at 0x2174bc4 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0x2174bc8, `ld` at 0x2174cd4.
  The `ld` at 0x2174bd4 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0x2174bf4, `ld` at 0x2174c38, `ld` at 0x2174d40.
  The `ld` at 0x2174c00 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0x2174c24 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0x2174c28, `sb` at 0x2174c64.
  The `sh` at 0x2174c30 stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  The `ld` at 0x2174c34 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2174c48 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2174c50 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2174c54, `lw` at 0x2174c68.
  The `sb` at 0x2174c5c stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `sw` at 0x2174c70 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8.
  The `sw` at 0x2174c7c stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `ld` at 0x2174ce0 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0x2174cec loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `jalr` at 0x2174bc0 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[0x1028]:8+280]:8.
  The `jalr` at 0x2174bd8 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a5=a0 at entry (arg0).
  The `jalr` at 0x2174c78 calls memcpy with a0=[[[[0x1028]:8+280]:8+312]:8+176]:8+12, a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+176]:8, a7=a0 at entry (arg0).
  The `jalr` at 0x2174c90 calls _XReply with a0=[[[0x1028]:8+280]:8+312]:8, a1=sp-112, a2=0x0, a3=0x0.
  The `jalr` at 0x2174cac calls _XRead with a0=[[[0x1028]:8+280]:8+312]:8, a1=a2 at entry (arg2), a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x2174ccc calls _XEatData with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2174ce4 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0x2174cf8 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2174d2c calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+176]:8, a5=(a0 << 0x2), a7=-0x4.
  The `bltz` branch at 0x2174b80 targets 0x2174d08, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0x2174b94 targets 0x2174bb8, is taken when s0(=[[[0x1028]:8+280]:8+312]:8) != 0, and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) == 0.
  The `beq` branch at 0x2174bcc targets 0x2174be4, is taken when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0x2174c10 targets 0x2174d20, is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < a3(?) (unsigned), and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= a3(?) (unsigned).
  The `beq` branch at 0x2174cbc targets 0x2174cd4, is taken when (a4(=a0) & 0x3) == 0, and falls through when (a4(=a0) & 0x3) != 0.
  The `beq` branch at 0x2174cd8 targets 0x2174cec, is taken when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0x2174cf0 targets 0x2174ba0, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0x2174d00 targets 0x2174ba0 and is always taken.
  The `beq` branch at 0x2174d3c targets 0x2174c14 and is always taken.
  The return at 0x2174bb0 has v0 = one of 0x0, ?.
  The return at 0x2174d18 has v0 = 0x0.

- `__glx_DeleteTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2174d44 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2174d44-0x2174ea8 (356 bytes).
  It occupies 356 bytes.
  The `ld` at 0x2174d4c loads 8 bytes from abs 0x1028.
  The `ld` at 0x2174d58 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x2174d6c loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `ld` at 0x2174d8c loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0x2174d90, `ld` at 0x2174e44.
  The `ld` at 0x2174d9c loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0x2174dbc, `ld` at 0x2174e00, `ld` at 0x2174ea4.
  The `ld` at 0x2174dc8 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0x2174de8 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0x2174dec, `sb` at 0x2174e2c.
  The `sh` at 0x2174df8 stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  The `ld` at 0x2174dfc loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2174e10 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2174e18 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  The `lw` at 0x2174e1c loads 4 bytes from [[0x1028]:8+280]:8 +0x1a4.
  The `sb` at 0x2174e24 stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `lw` at 0x2174e30 loads 4 bytes from [[0x1028]:8+280]:8 +0x68.
  The `sw` at 0x2174e34 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8.
  The `sw` at 0x2174e40 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `ld` at 0x2174e50 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0x2174e5c loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `jalr` at 0x2174d88 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=[[0x1028]:8+280]:8, a3=a3 at entry (arg3).
  The `jalr` at 0x2174da0 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a3=?.
  The `jalr` at 0x2174e3c calls memcpy with a0=[[[[0x1028]:8+280]:8+312]:8+176]:8+12, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=[[[0x1028]:8+280]:8+104], a4=[[[[0x1028]:8+280]:8+312]:8+176]:8, a5=a0 at entry (arg0), a6=[[[0x1028]:8+280]:8+420], a7=[[[[0x1028]:8+280]:8+312]:8+152]:8+1.
  The `jalr` at 0x2174e54 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a3=?.
  The `jalr` at 0x2174e68 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2174e90 calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+176]:8.
  The `bltz` branch at 0x2174d68 targets 0x2174e70, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x2174d78 targets 0x2174e70, is taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0x2174d94 targets 0x2174da8, is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0x2174dd8 targets 0x2174e84, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < a6(?) (unsigned), and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= a6(?) (unsigned).
  The `beq` branch at 0x2174e48 targets 0x2174e5c, is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0x2174e60 targets 0x2174e74, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0x2174ea0 targets 0x2174ddc and is always taken.
  The return at 0x2174e7c has v0 = ?.

- `__glx_GenTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2174ea8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2174ea8-0x2174fec (324 bytes).
  It occupies 324 bytes.
  The `ld` at 0x2174eb0 loads 8 bytes from abs 0x1028.
  The `ld` at 0x2174eb8 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x2174ec0 loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `ld` at 0x2174ef0 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0x2174ef4, `ld` at 0x2174f90.
  The `ld` at 0x2174f00 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0x2174f0c, `ld` at 0x2174f38, `ld` at 0x2174fe8.
  The `ld` at 0x2174f10 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0x2174f24 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  The `sh` at 0x2174f2c stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0x2174f30, `sb` at 0x2174f58.
  The `ld` at 0x2174f34 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2174f40 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2174f48 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  The `lw` at 0x2174f4c loads 4 bytes from [[0x1028]:8+280]:8 +0x1a4.
  The `sb` at 0x2174f54 stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `lw` at 0x2174f60 loads 4 bytes from [[0x1028]:8+280]:8 +0x68.
  The `sw` at 0x2174f6c stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8.
  The `sw` at 0x2174f78 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `ld` at 0x2174f9c loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0x2174fa8 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `jalr` at 0x2174eec calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2174f04 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0x2174f74 calls _XReply with a0=[[[0x1028]:8+280]:8+312]:8, a1=sp-80, a2=0x0, a3=0x0, a5=[[[[0x1028]:8+280]:8+312]:8+176]:8.
  The `jalr` at 0x2174f88 calls _XRead with a0=[[[0x1028]:8+280]:8+312]:8, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0x2174fa0 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0x2174fb4 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2174fdc calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?, a5=[[[[0x1028]:8+280]:8+312]:8+176]:8.
  The `beq` branch at 0x2174edc targets 0x2174fbc, is taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0x2174ef8 targets 0x2174f0c, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0x2174f1c targets 0x2174fd8, is taken when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+12) (unsigned), and falls through when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+12) (unsigned).
  The `beq` branch at 0x2174f94 targets 0x2174fa8, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0x2174fac targets 0x2174fbc, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0x2174fe4 targets 0x2174f20 and is always taken.
  The return at 0x2174fd0 has v0 = one of ?, ret(?).

- `__glx_IsTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2174fec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2174fec-0x217513c (336 bytes).
  It occupies 336 bytes.
  The `ld` at 0x2174ff4 loads 8 bytes from abs 0x1028.
  The `ld` at 0x2174ff8 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x2175000 loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `ld` at 0x2175034 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0x2175038, `ld` at 0x21750c8.
  The `ld` at 0x2175044 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0x2175050, `ld` at 0x2175080, `ld` at 0x2175138.
  The `ld` at 0x2175054 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0x217506c stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  The `sh` at 0x2175074 stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0x2175078, `sb` at 0x21750a4.
  The `ld` at 0x217507c loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2175088 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2175090 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2175094, `lw` at 0x21750ac.
  The `sb` at 0x217509c stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `sw` at 0x21750b8 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8.
  The `sw` at 0x21750c4 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `ld` at 0x21750d8 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0x21750e4 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `jalr` at 0x2175030 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2175048 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0x21750c0 calls _XReply with a0=[[[0x1028]:8+280]:8+312]:8, a1=sp-80, a2=0x0, a3=0x0, a5=a0 at entry (arg0), a7=[[[[0x1028]:8+280]:8+312]:8+152]:8+1.
  The `jalr` at 0x21750dc calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0x21750f4 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x217512c calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+176]:8+12.
  The `beq` branch at 0x2175018 targets 0x2175108, is taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0x217503c targets 0x2175050, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0x2175060 targets 0x2175128, is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < a3(=[[[[0x1028]:8+280]:8+312]:8+176]:8+12) (unsigned), and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= a3(=[[[[0x1028]:8+280]:8+312]:8+176]:8+12) (unsigned).
  The `beq` branch at 0x21750d0 targets 0x21750e4, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0x21750ec targets 0x2175118, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0x2175100 targets 0x2175118 and is always taken.
  The `beq` branch at 0x2175134 targets 0x2175064 and is always taken.
  The return at 0x2175110 has v0 = 0x0.
  The return at 0x2175120 has v0 = ?.

- `_init` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2177350 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2177350-0x217738c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0x2177370 calls __glXInit [0x2142b48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2177384 has v0 = ret(__glXInit).

- `glXGetVideoSyncSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x215995c
  **Established.** Reads the video-sync counter by asking the graphics device directly rather than the X server. It takes the current context from the global at 0x1028 and returns 5 when there is none or its record at +280 is empty; otherwise it passes the ioctl request 1022 and a two-word block (the id at +296 of the record, then a result slot) to `ioctl` at 0x21599b4 on the board descriptor chosen by the index at +264. The result word at sp+4 is stored through a0 and the function returns 0.

- `glXQueryMaxSwapBarriersSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2170eb0
  **Established.** Finds how many swap barriers the server offers. After `__glXSetupForCommand` at 0x2170ee0 it queues a four-word vendor-private request with reply (byte 1 is 17, code 0x1000d) that carries the caller's screen number at +12, then waits in `_XReply` at 0x2170f74. A failed reply returns 0 after the display hooks at +2408 and +208 run; on success the count word from the reply is stored through the output pointer and the function returns 1.

- `glXSwapIntervalSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x215a158
  **Established.** Sets how many video frames must pass between buffer swaps. It returns 5 with no current context (the global at 0x1028) and 6 for an interval of zero or less. A direct context hands the interval and its record id at +296 to `ioctl` at 0x215a1bc with the request 1006. An indirect one calls `__glXSetupForCommand` at 0x215a208 and queues a four-word vendor-private request whose code word is 0x10000, with a word loaded from +104 of the context record at +8 and the interval at +12.

- `glXCreateGLXPixmapWithConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x216d8f0
  **Established.** Turns an X pixmap into a GLX pixmap for a given framebuffer config and returns the new id. The id comes from the display's id-allocation hook at +72 (called at 0x216d9c8), and a seven-word vendor-private request with the code 0x10006 carries the config id from +36 of the config, the field at +72, the pixmap argument a2 and the new id, in that order from +12. If the output buffer is short it calls `_XFlush` at 0x216da1c first. A zero from `__glXSetupForCommand` at 0x216d91c returns zero without sending anything.

- `glXDestroyGLXVideoSourceSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2159ab0
  **Inferred.** Releases a video source on the client and on the server. It looks the source up with `__glXAddDrawableInterest` at 0x2159afc, drops it with `__glXRemoveDrawableInterest` at 0x2159b0c and frees its private data with `__glXFreeDrawablePrivate` at 0x2159b18. The request that follows has the code 0x10003 and the source id, and `_XFlush` at 0x2159be0 runs when the buffer is too full to take it.

- `glXCreateGLXVideoSourceSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2159cc4
  **Inferred.** Opens a video input as a GLX drawable. It initialises the video library with `__glXInitializeVideoLibrary` at 0x2159d40, registers the new id through `__glXAddDrawableInterest` at 0x2159d68 and creates the private record with `__glXCreateVideoSourcePrivate` at 0x2159da8 and kind 3. Three indirect queries with selectors 4, 6 and 7 (at 0x2159dd8, 0x2159e18 and 0x2159e4c) fill a 192-byte stack block, and `videoPackingToInternalFormat` at 0x2159e70 maps the packing. Every failure path ends in `__glXRemoveDrawableInterest` and the function returns 0.

- `glXQueryHyperpipeNetworkSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x217187c
  **Inferred.** Lists the hyperpipe network the server knows. A reply-bearing vendor-private request with the code 0x1000e goes out and `_XReply` at 0x2171944 returns the record count; extra reply data is skipped with `_XEatData` at 0x2171970 when it is empty. Otherwise the routine allocates a buffer with `malloc` at 0x21719e0, fills it with `_XRead` at 0x2171a44 and passes it back to the caller, and every failure path returns 0.

- `glXQueryHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2171f28
  **Inferred.** Fetches the configuration table of a hyperpipe network. It clears the caller's count at a2, builds an eight-word request with the code 0x1000f and the network id from a1 at +16, then waits in `_XReply` at 0x2171ff8. A positive reply leads to a `malloc` at 0x217207c and an `_XRead` at 0x21720f8 that copies the table; an empty reply is drained with `_XEatData` at 0x2172094. The function returns 0 on any failure.

- `glXDestroyHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2171db4
  **Inferred.** Asks the server to tear down a hyperpipe configuration. The request carries the code 0x10011 and goes through `_XReply` at 0x2171e78, so the answer decides the return: one exit at 0x2171f20 returns the constant 0x5c, the others return what the reply says. The display hooks at +2408 are called around the exchange and `_XFlush` at 0x2171ed4 empties a full buffer.

- `__glXGetDrawableAttributes` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2158a04
  **Inferred.** Reads the attributes of an X drawable from the server in two replies. The first request (code 0x1000a, reply at 0x2158ae4) returns an attribute count; a buffer is allocated with `malloc` at 0x2158b08 and filled with `_XRead` at 0x2158ca4, then the pairs are copied through a2. A second reply read at 0x2158bd8 handles the trailing words, and `free` at 0x2158d88 releases the buffer before `_XFlush` at 0x2158dbc.

- `CreateContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2167248
  **Inferred.** Builds a GLX context record. It starts the library with `__glXInitialize` at 0x2167280, allocates a 0x1c8-byte record with `calloc` at 0x216729c and tries a direct context first through `__glXCreateDirectContext` at 0x2167400. When that route is not used it sets up the vertex-array state for the types 0x85a2, 0x8430 and 0x842e with `__glXInitVertexArrayState` at 0x21674c4, looks the visual up with `__glXFindFBConfigFromVid` at 0x2167624 and sends a create request carrying the code 0x10005. Failure paths free the record and return zero.

- `GetFBConfigsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x214fe38
  **Inferred.** Collects the framebuffer configurations of a screen. The request with the code 0x10004 is answered by `_XReply` at 0x214fef0; the reply sizes `malloc` calls at 0x214ff64 and 0x214ffdc, and `_XRead` at 0x21501f8 pulls in the attribute lists, which are zeroed with `memset` at 0x21500b0 before they are filled. The final step builds visual information through `__glXOverrideVisualGetVisualInfo` at 0x2150b7c.
