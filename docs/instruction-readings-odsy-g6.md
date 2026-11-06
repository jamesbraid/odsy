# Instruction readings from hostfacts

Each entry reports selected accesses, calls, branches and returns from the named routine in the exact local binary build. These software observations do not establish board behaviour. Every entry is Inferred.

- `__glOdyim_ScratchIndexd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad51c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad51c0-0xdad51dc (28 bytes).
  It occupies 28 bytes.
  The `sw` at 0xdad51d0 stores 4 bytes to abs 0x10000.
  The `swc1` at 0xdad51d8 stores 4 bytes to abs 0x10000.
  The return at 0xdad51d4 has v0 = 0x10000.
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
  The `jalr` at 0x2158ae4 calls _XReply with a0=a0 at entry (arg0), a1=sp-144, a2=0x0, a3=0x0, a4=ret(__glXSetupForCommand), a5=0x11, a6=[a0+176]:8, a7=0x1000a.
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
  The `jalr` at 0x2158d88 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
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
  The `beq` branch at 0x2158d0c targets 0x2158ce4, is taken when t2(?) >= 0x1a (unsigned), and falls through when t2(?) < 0x1a (unsigned).
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
  The `sd` at 0x215991c stores 8 bytes to ret(__glXAddDrawableInterest) +0x0.
  The `jalr` at 0x2159688 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x21596a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x21596b4 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0x215972c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2159814 calls _XReply with a0=a0 at entry (arg0), a1=sp-144, a2=0x0, a3=0x0, a4=[a0+176]:8.
  The `jalr` at 0x2159830 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2159844 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2159850 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0x21598a8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+176]:8.
  The `jalr` at 0x21598cc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x21598e0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x21598f8 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=sp-144, a2=0x11, a3=0x0.
  The `jalr` at 0x2159904 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0x2159918 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=ret(__glXAddDrawableInterest), a2=?, a3=?.
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
  The `sw` at 0x2159e08 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x4.
  The `sw` at 0x2159e1c stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x8.
  The `sw` at 0x2159e50 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0xc.
  The `sw` at 0x2159e6c stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x10.
  The `sw` at 0x2159e80 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x14.
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
  The `lw` at 0x2159f1c loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x4.
  The `sw` at 0x2159f20 stores 4 bytes to [a0+176]:8 +0x18.
  The `lw` at 0x2159f24 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x8.
  The `sw` at 0x2159f28 stores 4 bytes to [a0+176]:8 +0x1c.
  The `lw` at 0x2159f2c loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0xc.
  The `sw` at 0x2159f30 stores 4 bytes to [a0+176]:8 +0x20.
  The `lw` at 0x2159f34 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x10.
  The `sw` at 0x2159f38 stores 4 bytes to [a0+176]:8 +0x24.
  The `lw` at 0x2159f3c loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x14.
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
  The `bgezall` at 0x2159e70 calls (unnamed) [0x2159bf0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2159e94 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=ret(__glXCreateVideoSourcePrivate), a4=a0 at entry (arg0).
  The `jalr` at 0x2159f54 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=[a0+176]:8, a4=[ret(__glXCreateVideoSourcePrivate)+20], a5=[ret(__glXCreateVideoSourcePrivate)+16], a6=[ret(__glXCreateVideoSourcePrivate)+12], a7=[ret(__glXCreateVideoSourcePrivate)+8].
  The `jalr` at 0x2159f6c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2159f78 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0x2159fac calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8, a5=[a0+176]:8+44.
  The `jalr` at 0x2159fc4 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0x2159fd4 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0x2159fe8 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=a5 at entry (arg5), a3=?.
  The `jalr` at 0x2159ff8 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
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
  The return at 0x2159d34 has v0 = one of 0x0, ret(?).
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
  The `jalr` at 0x2170f74 calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a4=ret(__glXSetupForCommand), a5=0x11, a6=[a0+176]:8, a7=0x1000d.
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
  The return at 0x2171a8c has v0 = ret(malloc).
  The return at 0x2171ae8 has v0 = 0x0.
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
  The return at 0x217213c has v0 = one of ret(malloc), 0x0.
- `CreateContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8ae040 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8ae040-0xd8ae954 (2324 bytes).
  It occupies 2324 bytes.
  The `sw` at 0xd8ae0c4 stores 4 bytes to ret(calloc) +0x108.
  The `lw` at 0xd8ae0c8 loads 4 bytes from ret(__glXInitialize) +0x4.
  The `sw` at 0xd8ae0d0 stores 4 bytes to ret(calloc) +0x110.
  The `lw` at 0xd8ae0d4 loads 4 bytes from ret(__glXInitialize) +0x8.
  The `sw` at 0xd8ae0d8 stores 4 bytes to ret(calloc) +0x114.
  The `lw` at 0xd8ae0dc loads 4 bytes from ret(__glXInitialize) +0xc.
  The `sw` at 0xd8ae0e0 stores 4 bytes to ret(calloc) +0x118.
  The `lw` at 0xd8ae0e4 loads 4 bytes from ret(__glXInitialize) +0x10.
  The `sw` at 0xd8ae0e8 stores 4 bytes to ret(calloc) +0x11c.
  The `lw` at 0xd8ae0ec loads 4 bytes from ret(__glXInitialize) +0x14.
  The `sw` at 0xd8ae0f0 stores 4 bytes to ret(calloc) +0x120.
  The `sw` at 0xd8ae108 stores 4 bytes to ret(calloc) +0x38.
  The `lw` at 0xd8ae10c loads 4 bytes from a2 (arg2 at entry) +0x48.
  The `lw` at 0xd8ae110 loads 4 bytes from a2 (arg2 at entry) +0x24.
  The `sw` at 0xd8ae114 stores 4 bytes to ret(calloc) +0x34.
  2 such `sw` accesses store 4 bytes to ret(calloc) +0x30, including `sw` at 0xd8ae118, `sw` at 0xd8ae318.
  The `lw` at 0xd8ae11c loads 4 bytes from a2 (arg2 at entry) +0x20.
  2 such `sw` accesses store 4 bytes to ret(calloc) +0x2c, including `sw` at 0xd8ae120, `sw` at 0xd8ae140.
  The `lw` at 0xd8ae138 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xd8ae13c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0xd8ae154 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `sw` at 0xd8ae160 stores 4 bytes to ret(calloc) +0x20.
  2 such `lw` accesses load 4 bytes from ret(__glXInitialize) +0x20, including `lw` at 0xd8ae184, `lw` at 0xd8ae198.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8ae190, `lw` at 0xd8ae258, `lw` at 0xd8ae38c.
  The `sw` at 0xd8ae194 stores 4 bytes to ret(calloc) +0x24.
  The `lbu` at 0xd8ae1a0 loads 1 byte from ?.
  The `sb` at 0xd8ae1a4 stores 1 byte to ret(calloc) +0x1d.
  2 such `lbu` accesses load 1 byte from ret(getenv) +0x0, including `lbu` at 0xd8ae1c8, `lbu` at 0xd8ae3f8.
  The `lw` at 0xd8ae2b8 loads 4 bytes from a2 (arg2 at entry) +0x2c.
  5 such `lw` accesses load 4 bytes from ret(calloc) +0x20, including `lw` at 0xd8ae2f4, `lw` at 0xd8ae324, `lw` at 0xd8ae69c.
  3 such `lw` accesses load 4 bytes from ret(calloc) +0x2c, including `lw` at 0xd8ae300, `lw` at 0xd8ae32c, `lw` at 0xd8ae8ac.
  The `lw` at 0xd8ae310 loads 4 bytes from ret(__glXFindFBConfigFromVid) +0x48.
  The `lw` at 0xd8ae33c loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0xd8ae358 loads 4 bytes from table(0xd8dd4f0) +0x0.
  The `sw` at 0xd8ae3ac stores 4 bytes to ret(calloc) +0xc8.
  The `sw` at 0xd8ae3d0 stores 4 bytes to ret(calloc) +0xc4.
  The `sw` at 0xd8ae488 stores 4 bytes to ret(calloc) +0x0.
  The `lw` at 0xd8ae4a8 loads 4 bytes from ret(calloc) +0x0.
  The `sw` at 0xd8ae4b0 stores 4 bytes to ret(calloc) +0x10.
  The `sw` at 0xd8ae4b8 stores 4 bytes to ret(calloc) +0xc.
  The `sw` at 0xd8ae4bc stores 4 bytes to ret(calloc) +0x4.
  The `lw` at 0xd8ae4c0 loads 4 bytes from sym(__glx_debug) +0x0.
  2 such `sw` accesses store 4 bytes to ret(calloc) +0x8, including `sw` at 0xd8ae4d8, `sw` at 0xd8ae4e0.
  The `sw` at 0xd8ae508 stores 4 bytes to ret(calloc) +0x10c.
  The `sw` at 0xd8ae50c stores 4 bytes to ret(calloc) +0x40.
  The `sw` at 0xd8ae510 stores 4 bytes to ret(calloc) +0x6c.
  The `sw` at 0xd8ae514 stores 4 bytes to ret(calloc) +0x98.
  The `sw` at 0xd8ae518 stores 4 bytes to ret(calloc) +0x70.
  The `sw` at 0xd8ae51c stores 4 bytes to ret(calloc) +0x74.
  The `sw` at 0xd8ae520 stores 4 bytes to ret(calloc) +0x9c.
  The `sw` at 0xd8ae524 stores 4 bytes to ret(calloc) +0xa0.
  2 such `sw` accesses store 4 bytes to ret(calloc) +0x18, including `sw` at 0xd8ae530, `sw` at 0xd8ae53c.
  The `sw` at 0xd8ae55c stores 4 bytes to ret(calloc) +0xb8.
  The `sw` at 0xd8ae578 stores 4 bytes to ret(calloc) +0xbc.
  The `sw` at 0xd8ae57c stores 4 bytes to ret(calloc) +0xc0.
  The `sb` at 0xd8ae588 stores 1 byte to ret(calloc) +0xa4.
  The `sw` at 0xd8ae58c stores 4 bytes to ret(calloc) +0xa8.
  The `sw` at 0xd8ae590 stores 4 bytes to ret(calloc) +0xac.
  2 such `sw` accesses store 4 bytes to ret(calloc) +0x14, including `sw` at 0xd8ae5a4, `sw` at 0xd8ae5bc.
  The `lw` at 0xd8ae5a8 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8ae5dc, `lw` at 0xd8ae5e0, `lw` at 0xd8ae6bc.
  12 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8ae5e8, `lw` at 0xd8ae600, `lw` at 0xd8ae62c.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x0, including `lw` at 0xd8ae5ec, `lw` at 0xd8ae708, `lw` at 0xd8ae824.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xd8ae604, `lw` at 0xd8ae720, `lw` at 0xd8ae83c.
  6 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8ae614, `sw` at 0xd8ae630, `sw` at 0xd8ae730.
  3 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xd8ae63c, `sh` at 0xd8ae758, `sh` at 0xd8ae874.
  6 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8ae640, `sb` at 0xd8ae670, `sb` at 0xd8ae75c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xd8ae644, `lw` at 0xd8ae760, `lw` at 0xd8ae87c.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xd8ae658, `sw` at 0xd8ae770, `sw` at 0xd8ae88c.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xd8ae65c, `sw` at 0xd8ae774, `sw` at 0xd8ae890.
  3 such `lw` accesses load 4 bytes from ret(calloc) +0x110, including `lw` at 0xd8ae660, `lw` at 0xd8ae778, `lw` at 0xd8ae894.
  3 such `sb` accesses store 1 byte to [a0+108] +0x1, including `sb` at 0xd8ae668, `sb` at 0xd8ae77c, `sb` at 0xd8ae898.
  3 such `sw` accesses store 4 bytes to [a0+108] +0x4, including `sw` at 0xd8ae66c, `sw` at 0xd8ae788, `sw` at 0xd8ae8a4.
  3 such `lw` accesses load 4 bytes from ret(calloc) +0x14, including `lw` at 0xd8ae674, `lw` at 0xd8ae784, `lw` at 0xd8ae8a0.
  3 such `sw` accesses store 4 bytes to [a0+108] +0xc, including `sw` at 0xd8ae678, `sw` at 0xd8ae7b0, `sw` at 0xd8ae8cc.
  2 such `lw` accesses load 4 bytes from ret(calloc) +0x30, including `lw` at 0xd8ae680, `lw` at 0xd8ae790.
  3 such `sw` accesses store 4 bytes to [a0+108] +0x10, including `sw` at 0xd8ae698, `sw` at 0xd8ae7b8, `sw` at 0xd8ae8d4.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x14, including `sw` at 0xd8ae6a0, `sw` at 0xd8ae7c0.
  2 such `lw` accesses load 4 bytes from ret(calloc) +0x34, including `lw` at 0xd8ae6a4, `lw` at 0xd8ae7b4.
  The `sw` at 0xd8ae6a8 stores 4 bytes to [a0+108] +0x18.
  3 such `lw` accesses load 4 bytes from ret(calloc) +0x18, including `lw` at 0xd8ae6ac, `lw` at 0xd8ae7bc, `lw` at 0xd8ae8d0.
  The `sw` at 0xd8ae6b0 stores 4 bytes to [a0+108] +0x1c.
  The `sb` at 0xd8ae6b8 stores 1 byte to [a0+108] +0x20.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8ae6c4, `lw` at 0xd8ae6dc, `lw` at 0xd8ae7d4.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8ae6c8, `lw` at 0xd8ae7d8, `lw` at 0xd8ae8ec.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x8, including `sw` at 0xd8ae7a8, `sw` at 0xd8ae8c4.
  The `sb` at 0xd8ae7c8 stores 1 byte to [a0+108] +0x18.
  The `sb` at 0xd8ae8dc stores 1 byte to [a0+108] +0x14.
  2 such `sb` accesses store 1 byte to ret(calloc) +0x1c, including `sb` at 0xd8ae920, `sb` at 0xd8ae928.
  The `lw` at 0xd8ae934 loads 4 bytes from sym(__glx_contextList) +0x0.
  The `sw` at 0xd8ae938 stores 4 bytes to ret(calloc) +0x124.
  The `sw` at 0xd8ae93c stores 4 bytes to sym(__glx_contextList) +0x0.
  The `jalr` at 0xd8ae070 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8ae0a0 calls calloc with a0=0x1, a1=0x128, a2=ret(__glXInitialize), a3=a3 at entry (arg3).
  The `jalr` at 0xd8ae16c calls free with a0=ret(calloc), a1=a2 at entry (arg2), a2=ret(__glXInitialize), a3=a3 at entry (arg3).
  The `jalr` at 0xd8ae1b4 calls getenv with a0=0xd8dd460, a1=a2 at entry (arg2), a2=ret(__glXInitialize), a3=a3 at entry (arg3).
  The `jalr` at 0xd8ae228 calls isLocal [0xd8b1088] with a0=ret(calloc), a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd8ae2d0 calls free with a0=ret(calloc), a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd8ae2fc calls __glXFindFBConfigFromVid [0xd8d320c] with a0=a0 at entry (arg0), a1=[ret(calloc)+32], a2=[ret(calloc)+44], a3=a3 at entry (arg3).
  The `jalr` at 0xd8ae328 calls __glXFindVisualConfig with a0=a0 at entry (arg0), a1=[ret(calloc)+32], a2=[ret(calloc)+44], a3=?.
  The `jalr` at 0xd8ae39c calls __glXCreateDirectContext with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae3b8 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae3e8 calls getenv with a0=0xd8dd470, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae420 calls fprintf with a0=sym(__iob)+32, a1=0xd8dd480, a2=?, a3=?.
  The `jalr` at 0xd8ae434 calls exit with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae45c calls XMaxRequestSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae474 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae494 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae54c calls __glXInitVertexArrayState with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae56c calls calloc with a0=0x10, a1=0x4, a2=?, a3=?.
  The `jalr` at 0xd8ae5b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae5f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8ae620 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae688 calls __glXOverrideVisualsIdToXid with a0=[ret(calloc)+48], a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd8ae6d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8ae6ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae710 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8ae73c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae798 calls __glXOverrideVisualsIdToXid with a0=[ret(calloc)+48], a1=0x18, a2=?, a3=?.
  The `jalr` at 0xd8ae7e0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8ae7fc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae82c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8ae858 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae8b4 calls __glXOverrideVisualsIdToXid with a0=[ret(calloc)+44], a1=0x3, a2=?, a3=?.
  The `jalr` at 0xd8ae8f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8ae910 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8ae080 targets 0xd8ae090, is taken when v0(=ret(__glXInitialize)) != 0, and falls through when v0(=ret(__glXInitialize)) == 0.
  The `beq` branch at 0xd8ae088 targets 0xd8ae940 and is always taken.
  The `bne` branch at 0xd8ae0b4 targets 0xd8ae0c4, is taken when v0(=ret(calloc)) != 0, and falls through when v0(=ret(calloc)) == 0.
  The `beq` branch at 0xd8ae0bc targets 0xd8ae940 and is always taken.
  The `bne` branch at 0xd8ae0fc targets 0xd8ae1a8, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0xd8ae104 targets 0xd8ae12c, is taken when a1(=a2) == 0, and falls through when a1(=a2) != 0.
  The `beq` branch at 0xd8ae124 targets 0xd8ae148 and is always taken.
  The `beql` branch at 0xd8ae130 targets 0xd8ae14c, is taken when t5(=a1) == 0, and falls through when t5(=a1) != 0; its branch-likely delay slot `lw a0,88(sp)` at 0xd8ae134 runs only when taken and is annulled on fall-through.
  The `bltz` branch at 0xd8ae14c targets 0xd8ae164, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bnel` branch at 0xd8ae15c targets 0xd8ae184, is taken when a0(?) < t7(=[a0+136]) (signed), and falls through when a0(?) >= t7(=[a0+136]) (signed); its branch-likely delay slot `sw a0,32(v0)` at 0xd8ae160 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae178 targets 0xd8ae940 and is always taken.
  The `beq` branch at 0xd8ae1c0 targets 0xd8ae208, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `bnel` branch at 0xd8ae1d0 targets 0xd8ae1e8, is taken when v1(=[ret(getenv)]:1) != at(=0x79), and falls through when v1(=[ret(getenv)]:1) == at(=0x79); its branch-likely delay slot `addiu at,zero,110` at 0xd8ae1d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae1dc targets 0xd8ae208 and is always taken.
  The `bnel` branch at 0xd8ae1e8 targets 0xd8ae1fc, is taken when v1(=[ret(getenv)]:1) != at(=0x6e), and falls through when v1(=[ret(getenv)]:1) == at(=0x6e); its branch-likely delay slot `addiu at,zero,33` at 0xd8ae1ec runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae1f0 targets 0xd8ae208 and is always taken.
  The `bne` branch at 0xd8ae1fc targets 0xd8ae208, is taken when v1(=[ret(getenv)]:1) != at(=0x21), and falls through when v1(=[ret(getenv)]:1) == at(=0x21).
  The `bne` branch at 0xd8ae210 targets 0xd8ae244, is taken when v1(?) != at(=0x1), and falls through when v1(?) == at(=0x1).
  The `bne` branch at 0xd8ae238 targets 0xd8ae244, is taken when v0(=ret(isLocal)) != 0, and falls through when v0(=ret(isLocal)) == 0.
  The `beq` branch at 0xd8ae244 targets 0xd8ae268, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8ae250 targets 0xd8ae268, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `bne` branch at 0xd8ae25c targets 0xd8ae268, is taken when t5(?) != 0, and falls through when t5(?) == 0.
  The `beql` branch at 0xd8ae268 targets 0xd8ae278, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `sltu t7,zero,v1` at 0xd8ae26c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae278 targets 0xd8ae3cc, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xd8ae28c targets 0xd8ae2e4, is taken when t9(=a2) == 0, and falls through when t9(=a2) != 0.
  The `beq` branch at 0xd8ae294 targets 0xd8ae2b0, is taken when a3 == at(=0x8014), and falls through when a3 != at(=0x8014).
  The `beq` branch at 0xd8ae2a0 targets 0xd8ae2b8, is taken when a3 == at(=0x8015), and falls through when a3 != at(=0x8015).
  The `beq` branch at 0xd8ae2a8 targets 0xd8ae2b8 and is always taken.
  The `beq` branch at 0xd8ae2b0 targets 0xd8ae2b8 and is always taken.
  The `bnel` branch at 0xd8ae2c0 targets 0xd8ae378, is taken when (t1(=[a2+44]) & v0(=one of 0x0, 0x1, 0x2)) != 0, and falls through when (t1(=[a2+44]) & v0(=one of 0x0, 0x1, 0x2)) == 0; its branch-likely delay slot `lw t7,120(sp)` at 0xd8ae2c4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae2dc targets 0xd8ae940 and is always taken.
  The `beql` branch at 0xd8ae2e4 targets 0xd8ae378, is taken when t3(=a1) == 0, and falls through when t3(=a1) != 0; its branch-likely delay slot `lw t7,120(sp)` at 0xd8ae2e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae308 targets 0xd8ae31c, is taken when v0(=ret(__glXFindFBConfigFromVid)) == 0, and falls through when v0(=ret(__glXFindFBConfigFromVid)) != 0.
  The `beq` branch at 0xd8ae314 targets 0xd8ae338 and is always taken.
  The `beql` branch at 0xd8ae344 targets 0xd8ae374, is taken when t6(=[a1+16]) >= 0x6 (unsigned), and falls through when t6(=[a1+16]) < 0x6 (unsigned); its branch-likely delay slot `ori a3,zero,0x8014` at 0xd8ae348 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae368 targets 0xd8ae374 and is always taken.
  The `beq` branch at 0xd8ae380 targets 0xd8ae390, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xd8ae388 targets 0xd8ae390 and is always taken.
  The `bne` branch at 0xd8ae3a8 targets 0xd8ae3cc, is taken when v0(=ret(__glXCreateDirectContext)) != 0, and falls through when v0(=ret(__glXCreateDirectContext)) == 0.
  The `beq` branch at 0xd8ae3c4 targets 0xd8ae940 and is always taken.
  The `bnel` branch at 0xd8ae3d8 targets 0xd8ae444, is taken when t9(?) != 0, and falls through when t9(?) == 0; its branch-likely delay slot `lw t0,48(sp)` at 0xd8ae3dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae3f0 targets 0xd8ae440, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0xd8ae400 targets 0xd8ae410, is taken when v1(=[ret(getenv)]:1) == at(=0x6e), and falls through when v1(=[ret(getenv)]:1) != at(=0x6e).
  The `bnel` branch at 0xd8ae408 targets 0xd8ae444, is taken when v1(=[ret(getenv)]:1) != at(=0x4e), and falls through when v1(=[ret(getenv)]:1) == at(=0x4e); its branch-likely delay slot `lw t0,48(sp)` at 0xd8ae40c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae444 targets 0xd8ae454, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xd8ae44c targets 0xd8ae46c and is always taken.
  The `bne` branch at 0xd8ae484 targets 0xd8ae4a8, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd8ae4a0 targets 0xd8ae940 and is always taken.
  The `beq` branch at 0xd8ae4cc targets 0xd8ae4dc, is taken when t1(=[sym(__glx_debug)]) == 0, and falls through when t1(=[sym(__glx_debug)]) != 0.
  The `beq` branch at 0xd8ae4d4 targets 0xd8ae4e4 and is always taken.
  The `bne` branch at 0xd8ae4e4 targets 0xd8ae4f0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xd8ae4f8 targets 0xd8ae504, is taken when a0(?) < at(=0xfa01) (signed), and falls through when a0(?) >= at(=0xfa01) (signed).
  The `beql` branch at 0xd8ae52c targets 0xd8ae544, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `sw zero,24(s0)` at 0xd8ae530 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae538 targets 0xd8ae544 and is always taken.
  The `bnel` branch at 0xd8ae5a0 targets 0xd8ae928, is taken when t1(?) != 0, and falls through when t1(?) == 0; its branch-likely delay slot `sw t6,20(s0)` at 0xd8ae5a4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8ae5c8 targets 0xd8ae810, is taken when t2(?) == 0, and falls through when t2(?) != 0; its branch-likely delay slot `lw t3,108(sp)` at 0xd8ae5cc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8ae5d0 targets 0xd8ae80c, is taken when t3(=a1) != 0, and falls through when t3(=a1) == 0.
  The `beql` branch at 0xd8ae5d8 targets 0xd8ae700, is taken when t4(?) == 0, and falls through when t4(?) != 0; its branch-likely delay slot `lw a1,1232(s1)` at 0xd8ae5dc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8ae5e4 targets 0xd8ae604, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s1)` at 0xd8ae5e8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8ae610 targets 0xd8ae634, is taken when t5(=[a0+112]) >= t6(=[a0+108]+36) (unsigned), and falls through when t5(=[a0+112]) < t6(=[a0+108]+36) (unsigned); its branch-likely delay slot `sw v0,100(s1)` at 0xd8ae614 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8ae6c0 targets 0xd8ae6e0, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8ae6c4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae6e4 targets 0xd8ae91c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8ae6f4 targets 0xd8ae91c and is always taken.
  The `beql` branch at 0xd8ae700 targets 0xd8ae720, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s1)` at 0xd8ae704 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8ae72c targets 0xd8ae750, is taken when t0(=[a0+112]) >= t1(=[a0+108]+28) (unsigned), and falls through when t0(=[a0+112]) < t1(=[a0+108]+28) (unsigned); its branch-likely delay slot `sw v0,100(s1)` at 0xd8ae730 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8ae7d0 targets 0xd8ae7f0, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8ae7d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae7f4 targets 0xd8ae91c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8ae804 targets 0xd8ae91c and is always taken.
  The `beq` branch at 0xd8ae810 targets 0xd8ae91c, is taken when t3(=a1) == 0, and falls through when t3(=a1) != 0.
  The `beql` branch at 0xd8ae81c targets 0xd8ae83c, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s1)` at 0xd8ae820 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8ae848 targets 0xd8ae86c, is taken when t4(=[a0+112]) >= t5(=[a0+108]+24) (unsigned), and falls through when t4(=[a0+112]) < t5(=[a0+108]+24) (unsigned); its branch-likely delay slot `sw v0,100(s1)` at 0xd8ae84c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8ae8e4 targets 0xd8ae904, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8ae8e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8ae908 targets 0xd8ae91c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8ae91c targets 0xd8ae92c and is always taken.
  The return at 0xd8ae94c has v0 = one of 0x0, ret(calloc).
  The instructions from 0xd8ae180 to 0xd8ae180 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8ae1e4 to 0xd8ae1e4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8ae1f8 to 0xd8ae1f8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8ae540 to 0xd8ae540 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8ae6fc to 0xd8ae6fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8ae924 to 0xd8ae924 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd8ae360 uses the jump table at 0xd8dd4f0 with targets 0xd8ae368, 0xd8ae368, 0xd8ae368, 0xd8ae368, 0xd8ae370, 0xd8ae370.
  The indirect jump at 0xd8ae360 uses the jump table at 0xd8dd4f0 with targets 0xd8ae368, 0xd8ae368, 0xd8ae368, 0xd8ae368, 0xd8ae370, 0xd8ae370.
- `__glXOpenGraphicsDevice` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8aeed8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8aeed8-0xd8af05c (388 bytes).
  It occupies 388 bytes.
  6 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd8aef18, `lw` at 0xd8aefa0, `lw` at 0xd8aeff8.
  The `lw` at 0xd8aef28 loads 4 bytes from ([0x1014] + (a0 << 0x2)) +0x4.
  2 such `lw` accesses load 4 bytes from [0x1014] +0x104, including `lw` at 0xd8aefa4, `lw` at 0xd8af00c.
  The `sw` at 0xd8af004 stores 4 bytes to [0x1014] +0x104.
  The `sw` at 0xd8af048 stores 4 bytes to ([0x1014] + (a0 << 0x2)) +0x4.
  The `jalr` at 0xd8aef08 calls __glXFatal with a0=0x0, a1=0xd8ddca0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8aef40 calls open with a0=0xd8ddcbc, a1=0x802, a2=?, a3=?.
  The `jalr` at 0xd8aef60 calls __glXFatal with a0=0x0, a1=0xd8ddcc8, a2=?, a3=?.
  The `jalr` at 0xd8aef78 calls fcntl with a0=ret(open), a1=0x2, a2=0x5, a3=?.
  The `jalr` at 0xd8aef94 calls __glXFatal with a0=0x0, a1=0xd8ddce8, a2=?, a3=?.
  The `jalr` at 0xd8aefbc calls ioctl with a0=ret(open), a1=0x65, a2=0x0, a3=?.
  The `jalr` at 0xd8aefe0 calls __glXFatal with a0=0x0, a1=0xd8ddcf8, a2=ret(ioctl), a3=?.
  The `jalr` at 0xd8af02c calls __glXFatal with a0=0x0, a1=0xd8ddd0c, a2=?, a3=?.
  The `bne` branch at 0xd8aeef4 targets 0xd8aef14, is taken when a0 < 0x41 (signed), and falls through when a0 >= 0x41 (signed).
  The `bgezl` branch at 0xd8aef2c targets 0xd8af050, is taken when t9(=[([0x1014] + (a0 << 0x2))+4]) >= 0 (signed), and falls through when t9(=[([0x1014] + (a0 << 0x2))+4]) < 0 (signed); its branch-likely delay slot `lw ra,28(sp)` at 0xd8aef30 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xd8aef4c targets 0xd8aef6c, is taken when v0(=ret(open)) >= 0 (signed), and falls through when v0(=ret(open)) < 0 (signed).
  The `bgez` branch at 0xd8aef80 targets 0xd8aefa0, is taken when v0(=ret(fcntl)) >= 0 (signed), and falls through when v0(=ret(fcntl)) < 0 (signed).
  The `bgezl` branch at 0xd8aefa8 targets 0xd8af014, is taken when v1(=[[0x1014]+260]) >= 0 (signed), and falls through when v1(=[[0x1014]+260]) < 0 (signed); its branch-likely delay slot `lw t1,48(sp)` at 0xd8aefac runs only when taken and is annulled on fall-through.
  The `bgtz` branch at 0xd8aefc8 targets 0xd8aeff0, is taken when v0(=ret(ioctl)) > 0 (signed), and falls through when v0(=ret(ioctl)) <= 0 (signed).
  The `bnel` branch at 0xd8aeff4 targets 0xd8af004, is taken when a2(=ret(ioctl)) < 0x41 (signed), and falls through when a2(=ret(ioctl)) >= 0x41 (signed); its branch-likely delay slot `lw t0,4116(zero)` at 0xd8aeff8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8af018 targets 0xd8af040, is taken when v1(=[[0x1014]+260]) >= t1(=a0) (signed), and falls through when v1(=[[0x1014]+260]) < t1(=a0) (signed); its branch-likely delay slot `lw t3,32(sp)` at 0xd8af01c runs only when taken and is annulled on fall-through.
  The return at 0xd8af054 has v0 = one of (a0 << 0x2), [0x1014].
- `glXSelectEventSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8bf738 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8bf738-0xd8bf870 (312 bytes).
  It occupies 312 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8bf774, `lw` at 0xd8bf820.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8bf77c, `lw` at 0xd8bf794, `lw` at 0xd8bf7c0.
  The `lw` at 0xd8bf780 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8bf798 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8bf7a8, `sw` at 0xd8bf7c4.
  The `sh` at 0xd8bf7d0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8bf7d4, `sb` at 0xd8bf804.
  The `lw` at 0xd8bf7d8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8bf7ec stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8bf7f0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8bf7fc stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8bf800 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8bf810 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8bf814 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8bf81c stores 4 bytes to [a0+108] +0x14.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8bf828, `lw` at 0xd8bf840.
  The `lw` at 0xd8bf82c loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8bf760 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8bf788 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bf7b4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bf834 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd8bf850 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8bf76c targets 0xd8bf85c, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` branch at 0xd8bf778 targets 0xd8bf798, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8bf77c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bf7a4 targets 0xd8bf7c8, is taken when t6(=[a0+112]) >= t7(=[a0+108]+24) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+24) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8bf7a8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bf824 targets 0xd8bf844, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8bf828 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bf848 targets 0xd8bf860, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8bf84c runs only when taken and is annulled on fall-through.
  The return at 0xd8bf868 has v0 = one of [a0+124], ?.
- `__glXGetDrawableAttributes` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8bf964 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8bf964-0xd8bfdb0 (1100 bytes).
  It occupies 1100 bytes.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8bf9b8, `lw` at 0xd8bf9bc, `lw` at 0xd8bfa80.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8bf9c4, `lw` at 0xd8bf9dc, `lw` at 0xd8bfa08.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x0, including `lw` at 0xd8bf9c8, `lw` at 0xd8bfad8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xd8bf9e0, `lw` at 0xd8bfaf0.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8bf9f0, `sw` at 0xd8bfa0c, `sw` at 0xd8bfb00.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xd8bfa18, `sh` at 0xd8bfb28.
  4 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8bfa1c, `sb` at 0xd8bfa50, `sb` at 0xd8bfb2c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xd8bfa20, `lw` at 0xd8bfb30.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xd8bfa34, `sw` at 0xd8bfb44.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xd8bfa38, `sw` at 0xd8bfb48.
  2 such `sb` accesses store 1 byte to [a0+108] +0x1, including `sb` at 0xd8bfa48, `sb` at 0xd8bfb50.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x4, including `sw` at 0xd8bfa4c, `sw` at 0xd8bfb68.
  The `sw` at 0xd8bfa60 stores 4 bytes to [a0+108] +0xc.
  10 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8bfa88, `lw` at 0xd8bfaa0, `lw` at 0xd8bfb88.
  5 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8bfa8c, `lw` at 0xd8bfb8c, `lw` at 0xd8bfbdc.
  The `lw` at 0xd8bfcc4 loads 4 bytes from ret(malloc) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8bfcd8, `lw` at 0xd8bfd44.
  The `lw` at 0xd8bfcf0 loads 4 bytes from table(0xd8de3a0) +0x0.
  The `sw` at 0xd8bfd04 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `sw` at 0xd8bfd0c stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sb` at 0xd8bfd14 stores 1 byte to a2 (arg2 at entry) +0x14.
  The `sw` at 0xd8bfd1c stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `sw` at 0xd8bfd24 stores 4 bytes to a2 (arg2 at entry) +0xc.
  The `sw` at 0xd8bfd2c stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `sb` at 0xd8bfd34 stores 1 byte to a2 (arg2 at entry) +0x15.
  The `sw` at 0xd8bfd38 stores 4 bytes to a2 (arg2 at entry) +0x18.
  The `jalr` at 0xd8bf994 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8bf9d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bf9fc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfa70 calls _XReply with a0=a0 at entry (arg0), a1=sp-60, a2=0x0, a3=0x0.
  The `jalr` at 0xd8bfa94 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfab0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfae0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfb0c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfb70 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0.
  The `jalr` at 0xd8bfb94 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfbb0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfbe4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfc00 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfc20 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfc50 calls (unknown callee) with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd8bfc6c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfc8c calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd8bfca8 calls memset with a0=a2 at entry (arg2), a1=0x0, a2=0x1c, a3=?.
  The `jalr` at 0xd8bfd5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfd78 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfd8c calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8bf9a0 targets 0xd8bf9b0, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd8bf9a8 targets 0xd8bfd9c and is always taken.
  The `beql` branch at 0xd8bf9b4 targets 0xd8bfad0, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `lw v0,1232(s1)` at 0xd8bf9b8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bf9c0 targets 0xd8bf9e0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s1)` at 0xd8bf9c4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bf9ec targets 0xd8bfa10, is taken when t7(=[a0+112]) >= t8(=[a0+108]+16) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s1)` at 0xd8bf9f0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8bfa78 targets 0xd8bfac4, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8bfa84 targets 0xd8bfaa4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8bfa88 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8bfaa8 targets 0xd8bfabc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8bfabc targets 0xd8bfd9c and is always taken.
  The `beq` branch at 0xd8bfac4 targets 0xd8bfbc8 and is always taken.
  The `beql` branch at 0xd8bfad0 targets 0xd8bfaf0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s1)` at 0xd8bfad4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bfafc targets 0xd8bfb20, is taken when t2(=[a0+112]) >= t3(=[a0+108]+8) (unsigned), and falls through when t2(=[a0+112]) < t3(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw v1,100(s1)` at 0xd8bfb00 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8bfb78 targets 0xd8bfbc4, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8bfb84 targets 0xd8bfba4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8bfb88 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8bfba8 targets 0xd8bfbbc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8bfbbc targets 0xd8bfd9c and is always taken.
  The `bne` branch at 0xd8bfbc8 targets 0xd8bfc14, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beql` branch at 0xd8bfbd4 targets 0xd8bfbf4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8bfbd8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8bfbf8 targets 0xd8bfc0c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8bfc0c targets 0xd8bfd9c and is always taken.
  The `bne` branch at 0xd8bfc34 targets 0xd8bfc80, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd8bfc40 targets 0xd8bfc60, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8bfc44 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8bfc64 targets 0xd8bfc78, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8bfc78 targets 0xd8bfd9c and is always taken.
  The `blez` branch at 0xd8bfcbc targets 0xd8bfd48, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0xd8bfcdc targets 0xd8bfd3c, is taken when t2(?) >= 0x1a (unsigned), and falls through when t2(?) < 0x1a (unsigned).
  The `beq` branch at 0xd8bfd00 targets 0xd8bfd3c and is always taken.
  The `beq` branch at 0xd8bfd08 targets 0xd8bfd3c and is always taken.
  The `beq` branch at 0xd8bfd10 targets 0xd8bfd3c and is always taken.
  The `beq` branch at 0xd8bfd18 targets 0xd8bfd3c and is always taken.
  The `beq` branch at 0xd8bfd20 targets 0xd8bfd3c and is always taken.
  The `beq` branch at 0xd8bfd28 targets 0xd8bfd3c and is always taken.
  The `beq` branch at 0xd8bfd30 targets 0xd8bfd3c and is always taken.
  The `bnel` branch at 0xd8bfd40 targets 0xd8bfcc8, is taken when a1(?) != a3(?), and falls through when a1(?) == a3(?); its branch-likely delay slot `lw v1,0(a0)` at 0xd8bfd44 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bfd4c targets 0xd8bfd6c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8bfd50 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8bfd70 targets 0xd8bfd84, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The return at 0xd8bfda8 has v0 = one of 0x0, 0x1.
  The instructions from 0xd8bfacc to 0xd8bfacc are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd8bfcf8 uses the jump table at 0xd8de3a0 with targets 0xd8bfd08, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd00, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd10, 0xd8bfd30, 0xd8bfd18, 0xd8bfd20, 0xd8bfd28, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd38.
  The indirect jump at 0xd8bfcf8 uses the jump table at 0xd8de3a0 with targets 0xd8bfd08, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd00, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd10, 0xd8bfd30, 0xd8bfd18, 0xd8bfd20, 0xd8bfd28, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd38.
  The indirect jump at 0xd8bfcf8 uses the jump table at 0xd8de3a0 with targets 0xd8bfd08, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd00, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd10, 0xd8bfd30, 0xd8bfd18, 0xd8bfd20, 0xd8bfd28, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd38.
  The indirect jump at 0xd8bfcf8 uses the jump table at 0xd8de3a0 with targets 0xd8bfd08, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd00, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd10, 0xd8bfd30, 0xd8bfd18, 0xd8bfd20, 0xd8bfd28, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd38.
  The indirect jump at 0xd8bfcf8 uses the jump table at 0xd8de3a0 with targets 0xd8bfd08, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd00, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd10, 0xd8bfd30, 0xd8bfd18, 0xd8bfd20, 0xd8bfd28, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd3c, 0xd8bfd38.
- `glXDestroyGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8bfdb0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8bfdb0-0xd8bff28 (376 bytes).
  It occupies 376 bytes.
  The `lw` at 0xd8bfe18 loads 4 bytes from ret(__glXAddDrawableInterest) +0x14.
  The `sw` at 0xd8bfe24 stores 4 bytes to ret(__glXAddDrawableInterest) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8bfe38, `lw` at 0xd8bfed8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8bfe44, `lw` at 0xd8bfe5c, `lw` at 0xd8bfe88.
  The `lw` at 0xd8bfe48 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8bfe60 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8bfe70, `sw` at 0xd8bfe8c.
  The `sh` at 0xd8bfe98 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8bfe9c, `sb` at 0xd8bfecc.
  The `lw` at 0xd8bfea0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8bfeb4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8bfeb8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8bfec4 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8bfec8 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8bfed4 stores 4 bytes to [a0+108] +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8bfee0, `lw` at 0xd8bfef8.
  The `lw` at 0xd8bfee4 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8bfdd4 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8bfdf0 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfe08 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfe30 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=ret(__glXAddDrawableInterest), a2=?, a3=?.
  The `jalr` at 0xd8bfe50 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfe7c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8bfeec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd8bff08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8bfde0 targets 0xd8bff14, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `bne` branch at 0xd8bfe1c targets 0xd8bfe28, is taken when t6(=[ret(__glXAddDrawableInterest)+20]) != 0, and falls through when t6(=[ret(__glXAddDrawableInterest)+20]) == 0.
  The `beql` branch at 0xd8bfe40 targets 0xd8bfe60, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8bfe44 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bfe6c targets 0xd8bfe90, is taken when t7(=[a0+112]) >= t8(=[a0+108]+16) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8bfe70 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bfedc targets 0xd8bfefc, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8bfee0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8bff00 targets 0xd8bff18, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8bff04 runs only when taken and is annulled on fall-through.
  The return at 0xd8bff20 has v0 = one of [a0+124], ?.
- `glXCreateGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c24e0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8c24e0-0xd8c2814 (820 bytes).
  It occupies 820 bytes.
  The `lw` at 0xd8c2534 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd8c2598 stores 4 bytes to ret(__glXAddDrawableInterest) +0x2c.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8c25a0, `lw` at 0xd8c25b0, `lw` at 0xd8c25c8.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8c25a4, `lw` at 0xd8c25b4, `lw` at 0xd8c25c4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8c25d0, `lw` at 0xd8c25f8, `lw` at 0xd8c2644.
  The `lw` at 0xd8c25dc loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8c2600 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8c264c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8c2658 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8c265c, `sb` at 0xd8c2690.
  The `lw` at 0xd8c2660 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8c2674 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8c2678 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8c2688 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8c268c stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8c2694 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd8c26a0 stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd8c26a4 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd8c26b0 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8c26b8 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd8c26c0 stores 4 bytes to [a0+108] +0x18.
  The `sw` at 0xd8c26cc stores 4 bytes to [a0+108] +0x1c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8c26e4, `sw` at 0xd8c26fc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8c2724, `lw` at 0xd8c273c, `lw` at 0xd8c27b4.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8c2728, `lw` at 0xd8c27b8.
  The `sw` at 0xd8c278c stores 4 bytes to ret(__glXAddDrawableInterest) +0x0.
  The `jalr` at 0xd8c2510 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8c253c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2554 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c257c calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x10, a3=0x0.
  The `jalr` at 0xd8c25e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c262c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c270c calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xd8c2730 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c274c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2768 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=sp-40, a2=0x11, a3=0x0.
  The `jalr` at 0xd8c277c calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2798 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c27c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c27dc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c27f0 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8c2520 targets 0xd8c2530, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd8c2528 targets 0xd8c2800 and is always taken.
  The `bne` branch at 0xd8c2564 targets 0xd8c2590, is taken when v0(=ret(__glXAddDrawableInterest)) != 0, and falls through when v0(=ret(__glXAddDrawableInterest)) == 0.
  The `beq` branch at 0xd8c2588 targets 0xd8c2800 and is always taken.
  The `beql` branch at 0xd8c259c targets 0xd8c25cc, is taken when a1(?) == 0, and falls through when a1(?) != 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xd8c25a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c25ac targets 0xd8c25cc, is taken when t7(?) == 0, and falls through when t7(?) != 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xd8c25b0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8c25c0 targets 0xd8c25b8, is taken when t8(?) != 0, and falls through when t8(?) == 0; its branch-likely delay slot `lw t8,8(v0)` at 0xd8c25c4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c25cc targets 0xd8c25fc, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8c25d0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c2614 targets 0xd8c264c, is taken when t1(=[a0+112]) >= t2(?) (unsigned), and falls through when t1(=[a0+112]) < t2(?) (unsigned); its branch-likely delay slot `lw t0,124(sp)` at 0xd8c2618 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c26c8 targets 0xd8c2700, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xd8c26d0 targets 0xd8c2700, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xd8c26f8 targets 0xd8c26d8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xd8c2714 targets 0xd8c27ac, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8c2720 targets 0xd8c2740, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8c2724 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c2744 targets 0xd8c2758, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8c27a4 targets 0xd8c2800 and is always taken.
  The `beql` branch at 0xd8c27b0 targets 0xd8c27d0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8c27b4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c27d4 targets 0xd8c27e8, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The return at 0xd8c280c has v0 = one of 0x0, ret(?).
- `glXGetVideoSyncSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c2814 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8c2814-0xd8c28ac (152 bytes).
  It occupies 152 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd8c2834, `lw` at 0xd8c2868.
  The `lw` at 0xd8c2838 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8c2844 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd8c284c loads 4 bytes from [[0x1014]+276] +0xcc.
  The `lw` at 0xd8c286c loads 4 bytes from [0x1014] +0x108.
  The `lw` at 0xd8c287c loads 4 bytes from ([0x1014] + ([[0x1014]+264] << 0x2)) +0x4.
  The `sw` at 0xd8c2898 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jalr` at 0xd8c2880 calls ioctl with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3fe, a2=sp-12, a3=0x1000.
  The `beq` branch at 0xd8c283c targets 0xd8c2850, is taken when v1(=[[0x1014]+276]) == 0, and falls through when v1(=[[0x1014]+276]) != 0.
  The `bnel` branch at 0xd8c2848 targets 0xd8c285c, is taken when t7(=[[[0x1014]+276]+196]) != 0, and falls through when t7(=[[[0x1014]+276]+196]) == 0; its branch-likely delay slot `lw t8,204(v1)` at 0xd8c284c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c2850 targets 0xd8c289c and is always taken.
  The return at 0xd8c28a4 has v0 = one of 0x0, 0x5.
  The instructions from 0xd8c2858 to 0xd8c2858 are not reached by any path from the entry, and their branches are not listed.
- `__glXSendMakeCurrentRead` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c2d34 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8c2d34-0xd8c30f0 (956 bytes).
  It occupies 956 bytes.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8c2d6c, `lw` at 0xd8c2e68, `lw` at 0xd8c2f94.
  The `lw` at 0xd8c2d7c loads 4 bytes from [a0+1232] +0x0.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8c2d98, `lw` at 0xd8c2d9c, `lw` at 0xd8c2dc8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xd8c2da0, `lw` at 0xd8c2edc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8c2dd0, `sw` at 0xd8c2f0c.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xd8c2ddc, `sh` at 0xd8c2f18.
  4 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8c2de0, `sb` at 0xd8c2e14, `sb` at 0xd8c2f1c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xd8c2de4, `lw` at 0xd8c2f20.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xd8c2df8, `sw` at 0xd8c2f34.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xd8c2dfc, `sw` at 0xd8c2f38.
  2 such `sb` accesses store 1 byte to [a0+108] +0x1, including `sb` at 0xd8c2e0c, `sb` at 0xd8c2f40.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x4, including `sw` at 0xd8c2e10, `sw` at 0xd8c2f54.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x8, including `sw` at 0xd8c2e24, `sw` at 0xd8c2f5c.
  2 such `sw` accesses store 4 bytes to [a0+108] +0xc, including `sw` at 0xd8c2e30, `sw` at 0xd8c2f68.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x10, including `sw` at 0xd8c2e3c, `sw` at 0xd8c2f74.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0xd8c2e44, `lw` at 0xd8c2ebc, `lw` at 0xd8c2f70.
  The `sw` at 0xd8c2e48 stores 4 bytes to [a0+108] +0x14.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8c2e70, `lw` at 0xd8c2e88, `lw` at 0xd8c2f9c.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8c2e74, `lw` at 0xd8c2fa0, `lw` at 0xd8c30a8.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0xd8c2ed4, `lw` at 0xd8c2ffc.
  The `lw` at 0xd8c3044 loads 4 bytes from ret(malloc) +0x0.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8c3058, `sw` at 0xd8c306c, `sw` at 0xd8c3080.
  The `lw` at 0xd8c305c loads 4 bytes from ret(malloc) +0x4.
  The `lw` at 0xd8c3070 loads 4 bytes from ret(malloc) +0x8.
  The `lw` at 0xd8c3084 loads 4 bytes from ret(malloc) +0xc.
  The `jalr` at 0xd8c2d60 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8c2d84 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2dbc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2e58 calls _XReply with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x0, a3=0x0.
  The `jalr` at 0xd8c2e7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2e98 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2eb8 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x11, a3=[a1+20].
  The `jalr` at 0xd8c2ef8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2f84 calls _XReply with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x0, a3=0x0.
  The `jalr` at 0xd8c2fa8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2fc4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c2fe4 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x1a, a3=[a1+20].
  The `jalr` at 0xd8c3010 calls malloc with a0=0x10, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3030 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=0x10, a3=?.
  The `jalr` at 0xd8c3090 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c30b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c30cc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8c2d74 targets 0xd8c2d94, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw t6,88(sp)` at 0xd8c2d78 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c2d94 targets 0xd8c2edc, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8c2d98 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c2dac targets 0xd8c2dd0, is taken when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned); its branch-likely delay slot `lw t1,60(sp)` at 0xd8c2db0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c2e38 targets 0xd8c2e48, is taken when t1(=a1) == 0, and falls through when t1(=a1) != 0.
  The `beq` branch at 0xd8c2e40 targets 0xd8c2e48 and is always taken.
  The `bne` branch at 0xd8c2e60 targets 0xd8c2ecc, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8c2e6c targets 0xd8c2e8c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8c2e70 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c2e90 targets 0xd8c2ea4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8c2ec4 targets 0xd8c30dc and is always taken.
  The `beq` branch at 0xd8c2ed0 targets 0xd8c3000 and is always taken.
  The `beql` branch at 0xd8c2ee8 targets 0xd8c2f0c, is taken when t8(=[a0+112]) >= t2(=[a0+108]+20) (unsigned), and falls through when t8(=[a0+112]) < t2(=[a0+108]+20) (unsigned); its branch-likely delay slot `lw t1,60(sp)` at 0xd8c2eec runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c2f64 targets 0xd8c2f74, is taken when t1(=a1) == 0, and falls through when t1(=a1) != 0.
  The `beq` branch at 0xd8c2f6c targets 0xd8c2f74 and is always taken.
  The `bne` branch at 0xd8c2f8c targets 0xd8c2ff8, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8c2f98 targets 0xd8c2fb8, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8c2f9c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c2fbc targets 0xd8c2fd0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8c2ff0 targets 0xd8c30dc and is always taken.
  The `beql` branch at 0xd8c3000 targets 0xd8c30a0, is taken when v0(=[a3+4]) == 0, and falls through when v0(=[a3+4]) != 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd8c3004 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c30a0 targets 0xd8c30c0, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8c30a4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c30c4 targets 0xd8c30dc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xd8c30c8 runs only when taken and is annulled on fall-through.
  The return at 0xd8c30e8 has v0 = one of 0x0, 0x1.
  The instructions from 0xd8c2ed8 to 0xd8c2ed8 are not reached by any path from the entry, and their branches are not listed.
- `glXWaitVideoSyncSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c30f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8c30f0-0xd8c31b8 (200 bytes).
  It occupies 200 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd8c3114, `lw` at 0xd8c3170.
  The `lw` at 0xd8c311c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8c3128 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd8c3150 loads 4 bytes from [[0x1014]+276] +0xcc.
  The `lw` at 0xd8c317c loads 4 bytes from [0x1014] +0x108.
  The `lw` at 0xd8c3190 loads 4 bytes from ([0x1014] + ([[0x1014]+264] << 0x2)) +0x4.
  The `sw` at 0xd8c31a4 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd8c318c calls ioctl with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3ff, a2=sp-20, a3=a0 at entry (arg0).
  The `beq` branch at 0xd8c3120 targets 0xd8c3134, is taken when v1(=[[0x1014]+276]) == 0, and falls through when v1(=[[0x1014]+276]) != 0.
  The `bne` branch at 0xd8c312c targets 0xd8c313c, is taken when t7(=[[[0x1014]+276]+196]) != 0, and falls through when t7(=[[[0x1014]+276]+196]) == 0.
  The `beq` branch at 0xd8c3134 targets 0xd8c31a8 and is always taken.
  The `blez` branch at 0xd8c313c targets 0xd8c3154, is taken when a3(=a0) <= 0 (signed), and falls through when a3(=a0) > 0 (signed).
  The `bltz` branch at 0xd8c3144 targets 0xd8c3154, is taken when t8(=a1) < 0 (signed), and falls through when t8(=a1) >= 0 (signed).
  The `bnel` branch at 0xd8c314c targets 0xd8c3160, is taken when at(?) != 0, and falls through when at(?) == 0; its branch-likely delay slot `lw t9,204(v1)` at 0xd8c3150 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c3154 targets 0xd8c31a8 and is always taken.
  The return at 0xd8c31b0 has v0 = one of 0x0, 0x5, 0x6.
  The instructions from 0xd8c315c to 0xd8c315c are not reached by any path from the entry, and their branches are not listed.
- `glXDestroyGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c31b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8c31b8-0xd8c3328 (368 bytes).
  It occupies 368 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8c3234, `lw` at 0xd8c32d8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8c3240, `lw` at 0xd8c3258, `lw` at 0xd8c3284.
  The `lw` at 0xd8c3244 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8c325c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8c326c, `sw` at 0xd8c3288.
  The `sh` at 0xd8c3294 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8c3298, `sb` at 0xd8c32cc.
  The `lw` at 0xd8c329c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8c32b0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8c32b4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8c32c0 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8c32c4 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8c32c8 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd8c32d4 stores 4 bytes to [a0+108] +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8c32e0, `lw` at 0xd8c32f8.
  The `lw` at 0xd8c32e4 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8c31dc calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8c3200 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3218 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c322c calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c324c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3278 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c32ec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd8c3308 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8c31e8 targets 0xd8c3314, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` branch at 0xd8c31f4 targets 0xd8c3318, is taken when a0(=a1) == 0, and falls through when a0(=a1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8c31f8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c323c targets 0xd8c325c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8c3240 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c3268 targets 0xd8c328c, is taken when t6(=[a0+112]) >= t7(=[a0+108]+16) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8c326c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c32dc targets 0xd8c32fc, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8c32e0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c3300 targets 0xd8c3318, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8c3304 runs only when taken and is annulled on fall-through.
  The return at 0xd8c3320 has v0 = one of ret(__glXSetupForCommand), [a0+124], ?.
- `glXCreateGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c3328 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8c3328-0xd8c36d0 (936 bytes).
  It occupies 936 bytes.
  The `lw` at 0xd8c33b0 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd8c33ec stores 4 bytes to ret(__glXAddDrawableInterest) +0xc.
  The `sw` at 0xd8c33f0 stores 4 bytes to ret(__glXAddDrawableInterest) +0x10.
  The `sb` at 0xd8c3400 stores 1 byte to ret(__glXAddDrawableInterest) +0x20.
  The `sw` at 0xd8c3404 stores 4 bytes to ret(__glXAddDrawableInterest) +0x2c.
  The `sw` at 0xd8c3408 stores 4 bytes to ret(__glXAddDrawableInterest) +0x30.
  The `sw` at 0xd8c340c stores 4 bytes to ret(__glXAddDrawableInterest) +0x8.
  The `sw` at 0xd8c3454 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0xd8f0d24, including `lw` at 0xd8c3458, `lw` at 0xd8c34bc, `lw` at 0xd8c3510.
  The `sw` at 0xd8c34ac stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x4.
  The `sw` at 0xd8c34b8 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x8.
  The `sw` at 0xd8c350c stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0xc.
  The `sw` at 0xd8c3560 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x10.
  The `sw` at 0xd8c357c stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x14.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8c3580, `lw` at 0xd8c3668.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8c3588, `lw` at 0xd8c35a8, `lw` at 0xd8c35dc.
  The `lw` at 0xd8c3590 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8c35ac loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8c35bc, `sw` at 0xd8c35e0.
  The `sh` at 0xd8c35ec stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8c35f0, `sb` at 0xd8c3624.
  The `lw` at 0xd8c35f4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8c3608 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8c360c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8c3618 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8c361c stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8c3620 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd8c362c stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8c3634 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8c363c stores 4 bytes to [a0+108] +0x14.
  The `lw` at 0xd8c3640 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x4.
  The `sw` at 0xd8c3644 stores 4 bytes to [a0+108] +0x18.
  The `lw` at 0xd8c3648 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x8.
  The `sw` at 0xd8c364c stores 4 bytes to [a0+108] +0x1c.
  The `lw` at 0xd8c3650 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0xc.
  The `sw` at 0xd8c3654 stores 4 bytes to [a0+108] +0x20.
  The `lw` at 0xd8c3658 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x10.
  The `sw` at 0xd8c365c stores 4 bytes to [a0+108] +0x24.
  The `lw` at 0xd8c3660 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x14.
  The `sw` at 0xd8c3664 stores 4 bytes to [a0+108] +0x28.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8c3670, `lw` at 0xd8c3688.
  The `lw` at 0xd8c3674 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8c3358 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8c3398 calls __glXInitializeVideoLibrary with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c33b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c33d0 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3418 calls __glXCreateVideoSourcePrivate with a0=ret(__glXAddDrawableInterest)+44, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3434 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3470 calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=0x4.
  The `jalr` at 0xd8c348c calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c34d0 calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=0x6.
  The `jalr` at 0xd8c34ec calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3528 calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=0x7.
  The `jalr` at 0xd8c3544 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c356c calls videoPackingToInternalFormat [0xd8c36d0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3598 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c35cc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c367c calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd8c3698 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c36ac calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8c3364 targets 0xd8c3374, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd8c336c targets 0xd8c36bc and is always taken.
  The `beq` branch at 0xd8c337c targets 0xd8c3394, is taken when v0(?) == at(=0x2), and falls through when v0(?) != at(=0x2).
  The `beq` branch at 0xd8c3384 targets 0xd8c3394, is taken when v0(?) == at(=0x5), and falls through when v0(?) != at(=0x5).
  The `beq` branch at 0xd8c338c targets 0xd8c36bc and is always taken.
  The `bne` branch at 0xd8c33a0 targets 0xd8c33b0, is taken when v0(=ret(__glXInitializeVideoLibrary)) != 0, and falls through when v0(=ret(__glXInitializeVideoLibrary)) == 0.
  The `beq` branch at 0xd8c33a8 targets 0xd8c36bc and is always taken.
  The `bne` branch at 0xd8c33dc targets 0xd8c33ec, is taken when v0(=ret(__glXAddDrawableInterest)) != 0, and falls through when v0(=ret(__glXAddDrawableInterest)) == 0.
  The `beq` branch at 0xd8c33e4 targets 0xd8c36bc and is always taken.
  The `bne` branch at 0xd8c3424 targets 0xd8c3448, is taken when v0(=ret(__glXCreateVideoSourcePrivate)) != 0, and falls through when v0(=ret(__glXCreateVideoSourcePrivate)) == 0.
  The `beq` branch at 0xd8c3440 targets 0xd8c36bc and is always taken.
  The `bgez` branch at 0xd8c347c targets 0xd8c34a0, is taken when v0(=ret(?)) >= 0 (signed), and falls through when v0(=ret(?)) < 0 (signed).
  The `beq` branch at 0xd8c3498 targets 0xd8c36bc and is always taken.
  The `bgez` branch at 0xd8c34dc targets 0xd8c3500, is taken when v0(=ret(?)) >= 0 (signed), and falls through when v0(=ret(?)) < 0 (signed).
  The `beq` branch at 0xd8c34f8 targets 0xd8c36bc and is always taken.
  The `bgez` branch at 0xd8c3534 targets 0xd8c3558, is taken when v0(=ret(?)) >= 0 (signed), and falls through when v0(=ret(?)) < 0 (signed).
  The `beq` branch at 0xd8c3550 targets 0xd8c36bc and is always taken.
  The `beql` branch at 0xd8c3584 targets 0xd8c35ac, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8c3588 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c35b8 targets 0xd8c35e4, is taken when t1(=[a0+112]) >= t2(=[a0+108]+44) (unsigned), and falls through when t1(=[a0+112]) < t2(=[a0+108]+44) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8c35bc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c366c targets 0xd8c368c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8c3670 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c3690 targets 0xd8c36a4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The return at 0xd8c36c8 has v0 = one of 0x0, ret(?).
- `glXSwapIntervalSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c38f8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8c38f8-0xd8c3acc (468 bytes).
  It occupies 468 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd8c391c, `lw` at 0xd8c3968.
  The `lw` at 0xd8c3924 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8c393c loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd8c3950 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8c3954 loads 4 bytes from [[0x1014]+276] +0xcc.
  The `lw` at 0xd8c3974 loads 4 bytes from [0x1014] +0x108.
  The `lw` at 0xd8c3984 loads 4 bytes from ([0x1014] + ([[0x1014]+264] << 0x2)) +0x4.
  The `lw` at 0xd8c39ac loads 4 bytes from [[0x1014]+276] +0x3c.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8c39c0, `lw` at 0xd8c3a64.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8c39cc, `lw` at 0xd8c39e4, `lw` at 0xd8c3a10.
  The `lw` at 0xd8c39d0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8c39e8 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8c39f8, `sw` at 0xd8c3a14.
  The `sh` at 0xd8c3a20 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8c3a24, `sb` at 0xd8c3a50.
  The `lw` at 0xd8c3a28 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8c3a3c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8c3a40 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sb` at 0xd8c3a48 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `sw` at 0xd8c3a4c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd8c3a58 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8c3a60 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8c3a6c, `lw` at 0xd8c3a84.
  The `lw` at 0xd8c3a70 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8c3980 calls ioctl with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3ee, a2=sp-32, a3=0x1000.
  The `jalr` at 0xd8c39b4 calls __glXSetupForCommand with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1000.
  The `jalr` at 0xd8c39d8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3a04 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3a78 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd8c3a94 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c3aa8 calls XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8c3928 targets 0xd8c3938, is taken when v1(=[[0x1014]+276]) != 0, and falls through when v1(=[[0x1014]+276]) == 0.
  The `beq` branch at 0xd8c3930 targets 0xd8c3ab8 and is always taken.
  The `bgtzl` branch at 0xd8c3938 targets 0xd8c394c, is taken when t7(=a0) > 0 (signed), and falls through when t7(=a0) <= 0 (signed); its branch-likely delay slot `lw t8,196(v1)` at 0xd8c393c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c3940 targets 0xd8c3ab8 and is always taken.
  The `beql` branch at 0xd8c394c targets 0xd8c3998, is taken when t8(=[[[0x1014]+276]+196]) == 0, and falls through when t8(=[[[0x1014]+276]+196]) != 0; its branch-likely delay slot `lw s0,216(v1)` at 0xd8c3950 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c398c targets 0xd8c3ab8 and is always taken.
  The `bne` branch at 0xd8c3998 targets 0xd8c39a8, is taken when s0(=[[[0x1014]+276]+216]) != 0, and falls through when s0(=[[[0x1014]+276]+216]) == 0.
  The `beq` branch at 0xd8c39a0 targets 0xd8c3ab8 and is always taken.
  The `beql` branch at 0xd8c39c8 targets 0xd8c39e8, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8c39cc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c39f4 targets 0xd8c3a18, is taken when t5(=[[[[0x1014]+276]+216]+112]) >= t6(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t5(=[[[[0x1014]+276]+216]+112]) < t6(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8c39f8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c3a68 targets 0xd8c3a88, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8c3a6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8c3a8c targets 0xd8c3aa0, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  The return at 0xd8c3ac4 has v0 = one of 0x0, 0x5, 0x6.
  The instructions from 0xd8c3948 to 0xd8c3948 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8c3994 to 0xd8c3994 are not reached by any path from the entry, and their branches are not listed.
- `glXCreateGLXPixmapWithConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c5ffc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8c5ffc-0xd8c6168 (364 bytes).
  It occupies 364 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8c6040, `lw` at 0xd8c6114.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8c6048, `lw` at 0xd8c6060, `lw` at 0xd8c608c.
  The `lw` at 0xd8c604c loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8c6064 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8c6094 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8c60a0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8c60a4, `sb` at 0xd8c60d4.
  The `lw` at 0xd8c60a8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8c60bc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8c60c0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8c60cc stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8c60d0 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8c60d8 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd8c60e0 stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd8c60e4 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd8c60e8 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8c60f0 stores 4 bytes to [a0+108] +0x14.
  The `lw` at 0xd8c60f8 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd8c6110 stores 4 bytes to [a0+108] +0x18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8c611c, `lw` at 0xd8c6134.
  The `lw` at 0xd8c6120 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8c6024 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8c6054 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8c6080 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c60fc calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xd8c6128 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8c6144 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8c6030 targets 0xd8c6040, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd8c6038 targets 0xd8c6154 and is always taken.
  The `beql` branch at 0xd8c6044 targets 0xd8c6064, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s0)` at 0xd8c6048 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c6070 targets 0xd8c6094, is taken when t6(=[a0+112]) >= t7(=[a0+108]+28) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+28) (unsigned); its branch-likely delay slot `lw a2,60(sp)` at 0xd8c6074 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c6118 targets 0xd8c6138, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8c611c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8c613c targets 0xd8c6154, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,44(sp)` at 0xd8c6140 runs only when taken and is annulled on fall-through.
  The return at 0xd8c6160 has v0 = one of 0x0, ret(?).
- `GetBoardName` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d339c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d339c-0xd8d34b0 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0xd8d33b8 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0xd8d33c8 loads 4 bytes from ([a0+32] + (a1 << 0x5)) +0x0.
  The `jalr` at 0xd8d33ec calls open with a0=0xd8dd4bc, a1=0x802, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d342c calls ioctl with a0=ret(open), a1=0x66, a2=sp-20, a3=?.
  The `jalr` at 0xd8d3444 calls close with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d3460 calls strlen with a0=sp-60, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d347c calls strncpy with a0=a2 at entry (arg2), a1=sp-60, a2=ret(strlen), a3=?.
  The `jalr` at 0xd8d3490 calls close with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8d33d0 targets 0xd8d33e0, is taken when v1(=[([a0+32] + (a1 << 0x5))]) < 0x40 (signed), and falls through when v1(=[([a0+32] + (a1 << 0x5))]) >= 0x40 (signed).
  The `beq` branch at 0xd8d33d8 targets 0xd8d34a0 and is always taken.
  The `bgez` branch at 0xd8d33fc targets 0xd8d340c, is taken when v0(=ret(open)) >= 0 (signed), and falls through when v0(=ret(open)) < 0 (signed).
  The `beq` branch at 0xd8d3404 targets 0xd8d34a0 and is always taken.
  The `bgez` branch at 0xd8d3434 targets 0xd8d3458, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0xd8d3450 targets 0xd8d34a0 and is always taken.
  The return at 0xd8d34a8 has v0 = one of 0x0, 0x1.
- `GetFBConfigsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d701c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d701c-0xd8d7714 (1784 bytes).
  It occupies 1784 bytes.
  The `lw` at 0xd8d7044 loads 4 bytes from a1 (arg1 at entry) +0x20.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d7058, `lw` at 0xd8d711c, `lw` at 0xd8d7170.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d7064, `lw` at 0xd8d7078, `lw` at 0xd8d70a4.
  The `lw` at 0xd8d7068 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d707c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d708c, `sw` at 0xd8d70a8.
  The `sh` at 0xd8d70b4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d70b8, `sb` at 0xd8d70f0.
  The `lw` at 0xd8d70c0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d70cc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d70d4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0xd8d70d8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `sb` at 0xd8d70e8 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8d70ec stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8d7100 stores 4 bytes to [a0+108] +0xc.
  11 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d7124, `lw` at 0xd8d713c, `lw` at 0xd8d7178.
  6 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8d7128, `lw` at 0xd8d717c, `lw` at 0xd8d71c8.
  The `sw` at 0xd8d7320 stores 4 bytes to ([a1+32] + (a2 << 0x5)) +0xc.
  The `sw` at 0xd8d7334 stores 4 bytes to ([a1+32] + (a2 << 0x5)) +0x10.
  39 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8d7360, `sw` at 0xd8d7364, `sw` at 0xd8d7484.
  8 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0xd8d7368, `sdc1` at 0xd8d736c, `sdc1` at 0xd8d7370.
  The `lw` at 0xd8d73e8 loads 4 bytes from ret(malloc) +0x0.
  12 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8d73ec, `lw` at 0xd8d7594, `lw` at 0xd8d7598.
  The `lw` at 0xd8d7448 loads 4 bytes from table(0xd8de160) +0x0.
  The `lw` at 0xd8d7470 loads 4 bytes from table(0xd8de1a0) +0x0.
  7 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8d7494, `sb` at 0xd8d749c, `sb` at 0xd8d75ac.
  The `lw` at 0xd8d7640 loads 4 bytes from ([a1+32] + (a2 << 0x5)) +0xc.
  The `lw` at 0xd8d7644 loads 4 bytes from [([a1+32] + (a2 << 0x5))+12] +0x20.
  The `lw` at 0xd8d7688 loads 4 bytes from ret(__glXOverrideVisualGetVisualInfo) +0x14.
  The `lw` at 0xd8d7690 loads 4 bytes from ret(__glXOverrideVisualGetVisualInfo) +0x18.
  The `lw` at 0xd8d7698 loads 4 bytes from ret(__glXOverrideVisualGetVisualInfo) +0x1c.
  The `jalr` at 0xd8d706c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d7098 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d710c calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xd8d7130 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d714c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d7184 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d71a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d71d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d71ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d720c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d7238 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d7254 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d728c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d72ac calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d72cc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d72e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d730c calls memset with a0=ret(malloc), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd8d73a4 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=ret(malloc).
  The `jalr` at 0xd8d7628 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d7674 calls __glXOverrideVisualGetVisualInfo with a0=a0 at entry (arg0), a1=0x3, a2=sp-124, a3=sp-128.
  The `jalr` at 0xd8d76a8 calls free with a0=ret(__glXOverrideVisualGetVisualInfo), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d76d0 calls XFree with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d76ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8d7060 targets 0xd8d707c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s2)` at 0xd8d7064 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d7088 targets 0xd8d70ac, is taken when t5(=[a0+112]) >= t7(=[a0+108]+16) (unsigned), and falls through when t5(=[a0+112]) < t7(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s2)` at 0xd8d708c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d7114 targets 0xd8d7160, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8d7120 targets 0xd8d7140, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s2)` at 0xd8d7124 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d7144 targets 0xd8d7158, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd8d7158 targets 0xd8d76fc and is always taken.
  The `bne` branch at 0xd8d7168 targets 0xd8d71b4, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beql` branch at 0xd8d7174 targets 0xd8d7194, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s2)` at 0xd8d7178 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d7198 targets 0xd8d71ac, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd8d71ac targets 0xd8d76fc and is always taken.
  The `bne` branch at 0xd8d71b4 targets 0xd8d7200, is taken when t4(?) != 0, and falls through when t4(?) == 0.
  The `beql` branch at 0xd8d71c0 targets 0xd8d71e0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s2)` at 0xd8d71c4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d71e4 targets 0xd8d71f8, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd8d71f8 targets 0xd8d76fc and is always taken.
  The `bne` branch at 0xd8d721c targets 0xd8d7268, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd8d7228 targets 0xd8d7248, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s2)` at 0xd8d722c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d724c targets 0xd8d7260, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd8d7260 targets 0xd8d76fc and is always taken.
  The `bne` branch at 0xd8d729c targets 0xd8d72fc, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd8d72bc targets 0xd8d72dc, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s2)` at 0xd8d72c0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d72e0 targets 0xd8d72f4, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd8d72f4 targets 0xd8d76fc and is always taken.
  The `blezl` branch at 0xd8d733c targets 0xd8d7618, is taken when t7(?) <= 0 (signed), and falls through when t7(?) > 0 (signed); its branch-likely delay slot `lw v0,1232(s2)` at 0xd8d7340 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd8d73e0 targets 0xd8d7598, is taken when t4(?) <= 0 (signed), and falls through when t4(?) > 0 (signed).
  The `bnel` branch at 0xd8d73f8 targets 0xd8d741c, is taken when v1(?) < t1(=0x801b) (signed), and falls through when v1(?) >= t1(=0x801b) (signed); its branch-likely delay slot `slti at,v1,41` at 0xd8d73fc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d7400 targets 0xd8d74f8, is taken when v1(?) == t2(=0x186a0), and falls through when v1(?) != t2(=0x186a0).
  The `beq` branch at 0xd8d7408 targets 0xd8d7500, is taken when v1(?) == t3(=0x186a1), and falls through when v1(?) != t3(=0x186a1).
  The `beq` branch at 0xd8d7410 targets 0xd8d7590 and is always taken.
  The `bne` branch at 0xd8d741c targets 0xd8d7458, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beql` branch at 0xd8d7434 targets 0xd8d7590, is taken when t9(=table(-0x800b)) >= 0x10 (unsigned), and falls through when t9(=table(-0x800b)) < 0x10 (unsigned); its branch-likely delay slot `addiu t0,t0,1` at 0xd8d7438 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d745c targets 0xd8d7590, is taken when t6(?) >= 0x27 (unsigned), and falls through when t6(?) < 0x27 (unsigned); its branch-likely delay slot `addiu t0,t0,1` at 0xd8d7460 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d7480 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7488 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7490 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7498 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74a0 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74a8 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74b0 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74b8 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74c0 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74c8 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74d0 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74d8 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74e0 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74e8 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74f0 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d74f8 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7500 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7508 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7510 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7518 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7520 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7528 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7530 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7538 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7540 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7548 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7550 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7558 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7560 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7568 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7570 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7578 targets 0xd8d758c and is always taken.
  The `beq` branch at 0xd8d7580 targets 0xd8d758c and is always taken.
  The `bnel` branch at 0xd8d7590 targets 0xd8d73ec, is taken when t0(?) != t4(?), and falls through when t0(?) == t4(?); its branch-likely delay slot `lw v1,0(a3)` at 0xd8d7594 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d75c0 targets 0xd8d75e4, is taken when 0 < v0(?) (signed), and falls through when 0 >= v0(?) (signed); its branch-likely delay slot `lw t9,100(s0)` at 0xd8d75c4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d75d0 targets 0xd8d75e4, is taken when 0 < v0(?) (signed), and falls through when 0 >= v0(?) (signed); its branch-likely delay slot `lw t9,100(s0)` at 0xd8d75d4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d7608 targets 0xd8d735c, is taken when s1(?) != t7(?), and falls through when s1(?) == t7(?); its branch-likely delay slot `lw a1,116(sp)` at 0xd8d760c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d7618 targets 0xd8d7638, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw t8,124(sp)` at 0xd8d761c runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd8d763c targets 0xd8d76c8, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `beql` branch at 0xd8d764c targets 0xd8d76b8, is taken when t5(?) == 0, and falls through when t5(?) != 0; its branch-likely delay slot `lw t7,124(sp)` at 0xd8d7650 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d7680 targets 0xd8d76b4, is taken when v0(=ret(__glXOverrideVisualGetVisualInfo)) == 0, and falls through when v0(=ret(__glXOverrideVisualGetVisualInfo)) != 0.
  The `bnel` branch at 0xd8d76c0 targets 0xd8d7648, is taken when s1(?) != t7(?), and falls through when s1(?) == t7(?); its branch-likely delay slot `lw t5,32(s0)` at 0xd8d76c4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d76e4 targets 0xd8d76fc, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xd8d76e8 runs only when taken and is annulled on fall-through.
  The return at 0xd8d770c has v0 = one of 0x0, 0x1.
  The instructions from 0xd8d7418 to 0xd8d7418 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd8d7450 uses the jump table at 0xd8de160 with targets 0xd8d7558, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d7548, 0xd8d7550, 0xd8d758c, 0xd8d7560, 0xd8d758c, 0xd8d758c, 0xd8d7568, 0xd8d7570, 0xd8d7578, 0xd8d7580, 0xd8d7588.
  The indirect jump at 0xd8d7478 uses the jump table at 0xd8de1a0 with targets 0xd8d7480, 0xd8d7488, 0xd8d758c, 0xd8d7490, 0xd8d7498, 0xd8d74a0, 0xd8d74a8, 0xd8d74b0, 0xd8d74b8, 0xd8d74c0, 0xd8d74c8, 0xd8d74d0, 0xd8d74d8, 0xd8d74e0, 0xd8d74e8, 0xd8d74f0, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d758c, 0xd8d7540, 0xd8d758c, 0xd8d7508, 0xd8d7510, 0xd8d7518, 0xd8d7520, 0xd8d7528, 0xd8d7530, 0xd8d7538.
- `glXJoinSwapGroupSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d85c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d85c0-0xd8d86ec (300 bytes).
  It occupies 300 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d85f4, `lw` at 0xd8d869c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d8600, `lw` at 0xd8d8618, `lw` at 0xd8d8644.
  The `lw` at 0xd8d8604 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d861c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d862c, `sw` at 0xd8d8648.
  The `sh` at 0xd8d8654 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d8658, `sb` at 0xd8d8688.
  The `lw` at 0xd8d865c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d8670 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d8674 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d8680 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8d8684 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8d8690 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8d8698 stores 4 bytes to [a0+108] +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d86a4, `lw` at 0xd8d86bc.
  The `lw` at 0xd8d86a8 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8d85e8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d860c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d8638 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d86b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd8d86cc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8d85fc targets 0xd8d861c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8d8600 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d8628 targets 0xd8d864c, is taken when t6(=[a0+112]) >= t7(=[a0+108]+20) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+20) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8d862c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d86a0 targets 0xd8d86c0, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d86a4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d86c4 targets 0xd8d86dc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8d86c8 runs only when taken and is annulled on fall-through.
  The return at 0xd8d86e4 has v0 = one of [a0+124], ret(?).
- `glXBindSwapBarrierSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d86ec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d86ec-0xd8d8818 (300 bytes).
  It occupies 300 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d8720, `lw` at 0xd8d87c8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d872c, `lw` at 0xd8d8744, `lw` at 0xd8d8770.
  The `lw` at 0xd8d8730 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d8748 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d8758, `sw` at 0xd8d8774.
  The `sh` at 0xd8d8780 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d8784, `sb` at 0xd8d87b4.
  The `lw` at 0xd8d8788 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d879c stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d87a0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d87ac stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8d87b0 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8d87bc stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8d87c4 stores 4 bytes to [a0+108] +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d87d0, `lw` at 0xd8d87e8.
  The `lw` at 0xd8d87d4 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8d8714 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d8738 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d8764 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d87dc calls (unknown callee) with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd8d87f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8d8728 targets 0xd8d8748, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8d872c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d8754 targets 0xd8d8778, is taken when t6(=[a0+112]) >= t7(=[a0+108]+20) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+20) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8d8758 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d87cc targets 0xd8d87ec, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d87d0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d87f0 targets 0xd8d8808, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8d87f4 runs only when taken and is annulled on fall-through.
  The return at 0xd8d8810 has v0 = one of [a0+124], ret(?).
- `glXQueryMaxSwapBarriersSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d8818 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d8818-0xd8d89b8 (416 bytes).
  It occupies 416 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d884c, `lw` at 0xd8d8914, `lw` at 0xd8d8958.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d8858, `lw` at 0xd8d8870, `lw` at 0xd8d889c.
  The `lw` at 0xd8d885c loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d8874 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d8884, `sw` at 0xd8d88a0.
  The `sh` at 0xd8d88ac stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d88b0, `sb` at 0xd8d88e4.
  The `lw` at 0xd8d88b4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d88c8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d88cc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d88dc stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8d88e0 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8d88f4 stores 4 bytes to [a0+108] +0xc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d891c, `lw` at 0xd8d8934, `lw` at 0xd8d8960.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8d8920, `lw` at 0xd8d8964.
  The `sw` at 0xd8d89a0 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd8d8840 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d8864 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d8890 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d8904 calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xd8d8928 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d8944 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d896c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d8988 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8d8854 targets 0xd8d8874, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8d8858 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d8880 targets 0xd8d88a4, is taken when t6(=[a0+112]) >= t7(=[a0+108]+16) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd8d8884 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d890c targets 0xd8d8958, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8d8918 targets 0xd8d8938, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d891c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d893c targets 0xd8d8950, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8d8950 targets 0xd8d89a4 and is always taken.
  The `beql` branch at 0xd8d895c targets 0xd8d897c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d8960 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d8980 targets 0xd8d8998, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t8,56(sp)` at 0xd8d8984 runs only when taken and is annulled on fall-through.
  The return at 0xd8d89b0 has v0 = one of 0x0, 0x1.
- `glXQueryHyperpipeNetworkSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d91b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d91b8-0xd8d948c (724 bytes).
  It occupies 724 bytes.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xd8d91f0, `sw` at 0xd8d9300, `sw` at 0xd8d9314.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d91f4, `lw` at 0xd8d92b8, `lw` at 0xd8d9338.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d91fc, `lw` at 0xd8d9214, `lw` at 0xd8d9240.
  The `lw` at 0xd8d9200 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d9218 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d9228, `sw` at 0xd8d9244.
  The `sh` at 0xd8d9250 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d9254, `sb` at 0xd8d9288.
  The `lw` at 0xd8d9258 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d926c stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d9270 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d9280 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8d9284 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8d928c loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd8d9298 stores 4 bytes to [a0+108] +0xc.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d92c0, `lw` at 0xd8d92d8, `lw` at 0xd8d9344.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8d92c4, `lw` at 0xd8d9348, `lw` at 0xd8d93e0.
  The `jalr` at 0xd8d91dc calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d9208 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9234 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d92a8 calls _XReply with a0=a0 at entry (arg0), a1=sp-44, a2=0x0, a3=0x0.
  The `jalr` at 0xd8d92cc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d92e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9330 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9350 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d936c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d93a4 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d93c8 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d93e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9404 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d942c calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd8d944c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9468 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8d91f8 targets 0xd8d9218, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8d91fc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d9224 targets 0xd8d9248, is taken when t7(=[a0+112]) >= t8(=[a0+108]+16) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd8d9228 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d92b0 targets 0xd8d9304, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8d92bc targets 0xd8d92dc, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d92c0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d92e0 targets 0xd8d92f8, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t0,100(sp)` at 0xd8d92e4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d92fc targets 0xd8d9478 and is always taken.
  The `blez` branch at 0xd8d9310 targets 0xd8d9324, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `bne` branch at 0xd8d931c targets 0xd8d9388, is taken when t1(?) < 0x21 (signed), and falls through when t1(?) >= 0x21 (signed).
  The `beql` branch at 0xd8d9340 targets 0xd8d9360, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d9344 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d9364 targets 0xd8d937c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t2,100(sp)` at 0xd8d9368 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d9380 targets 0xd8d9478 and is always taken.
  The `bne` branch at 0xd8d93b4 targets 0xd8d9420, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd8d93d8 targets 0xd8d93f8, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d93dc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d93fc targets 0xd8d9414, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t3,100(sp)` at 0xd8d9400 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d9418 targets 0xd8d9478 and is always taken.
  The `beql` branch at 0xd8d943c targets 0xd8d945c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d9440 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d9460 targets 0xd8d9478, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,92(sp)` at 0xd8d9464 runs only when taken and is annulled on fall-through.
  The return at 0xd8d9484 has v0 = one of 0x0, ret(malloc).
- `glXHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d948c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d948c-0xd8d9774 (744 bytes).
  It occupies 744 bytes.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d9514, `lw` at 0xd8d9678, `lw` at 0xd8d96d0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d951c, `lw` at 0xd8d9540, `lw` at 0xd8d9578.
  The `lw` at 0xd8d9524 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d9544 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d9554, `sw` at 0xd8d957c.
  The `sh` at 0xd8d9588 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d958c, `sb` at 0xd8d95c0.
  The `lw` at 0xd8d9590 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d95a4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d95a8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d95b8 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8d95bc stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8d95c4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd8d95c8 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8d95d0 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8d95e0 stores 4 bytes to [a0+108] +0x14.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd8d95fc, `lbu` at 0xd8d9624, `lbu` at 0xd8d9634.
  5 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8d9610, `sb` at 0xd8d9630, `sb` at 0xd8d963c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d9680, `lw` at 0xd8d9698, `lw` at 0xd8d96e4.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8d9684, `lw` at 0xd8d96e8, `lw` at 0xd8d972c.
  The `sw` at 0xd8d96c4 stores 4 bytes to ?.
  The `jalr` at 0xd8d94b8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d952c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9564 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+108].
  The `jalr` at 0xd8d9664 calls _XReply with a0=a0 at entry (arg0), a1=sp-44, a2=0x0, a3=0x0.
  The `jalr` at 0xd8d968c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d96a8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d96f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d970c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9734 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9750 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0xd8d94cc targets 0xd8d94e4, is taken when t1(=a2) <= 0 (signed), and falls through when t1(=a2) > 0 (signed).
  The `beq` branch at 0xd8d94d4 targets 0xd8d94e4, is taken when t6(=a3) == 0, and falls through when t6(=a3) != 0.
  The `bne` branch at 0xd8d94dc targets 0xd8d94ec, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8d94e4 targets 0xd8d9760 and is always taken.
  The `bgez` branch at 0xd8d94ec targets 0xd8d94fc, is taken when t7(=a1) >= 0 (signed), and falls through when t7(=a1) < 0 (signed).
  The `beq` branch at 0xd8d94f4 targets 0xd8d9760 and is always taken.
  The `beql` branch at 0xd8d9518 targets 0xd8d9544, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw a3,108(s0)` at 0xd8d951c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d9550 targets 0xd8d9580, is taken when t8(=[a0+112]) >= t2(?) (unsigned), and falls through when t8(=[a0+112]) < t2(?) (unsigned); its branch-likely delay slot `sw a3,100(s0)` at 0xd8d9554 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd8d95e4 targets 0xd8d9654, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0xd8d95f4 targets 0xd8d961c, is taken when (a3(?) & 0x3) == 0, and falls through when (a3(?) & 0x3) != 0.
  The `bne` branch at 0xd8d960c targets 0xd8d95fc, is taken when a1(?) != a0(?), and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd8d9614 targets 0xd8d9654, is taken when a0(?) == t0(?), and falls through when a0(?) != t0(?).
  The `bne` branch at 0xd8d964c targets 0xd8d9624, is taken when a0(?) != a1(?), and falls through when a0(?) == a1(?).
  The `bne` branch at 0xd8d9670 targets 0xd8d96bc, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8d967c targets 0xd8d969c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d9680 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d96a0 targets 0xd8d96b4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8d96b4 targets 0xd8d9760 and is always taken.
  The `bnel` branch at 0xd8d96cc targets 0xd8d96e0, is taken when t1(=a2) != t4(?), and falls through when t1(=a2) == t4(?); its branch-likely delay slot `lw v0,1232(s0)` at 0xd8d96d0 runs only when taken and is annulled on fall-through.
  The `bgezl` branch at 0xd8d96d4 targets 0xd8d9724, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed); its branch-likely delay slot `lw v0,1232(s0)` at 0xd8d96d8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d96e0 targets 0xd8d9700, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d96e4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d9704 targets 0xd8d9718, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8d9718 targets 0xd8d9760 and is always taken.
  The `beql` branch at 0xd8d9724 targets 0xd8d9744, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d9728 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d9748 targets 0xd8d9760, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `or v0,zero,zero` at 0xd8d974c runs only when taken and is annulled on fall-through.
  The return at 0xd8d976c has v0 = one of 0x0, 0x5b.
  The instructions from 0xd8d9720 to 0xd8d9720 are not reached by any path from the entry, and their branches are not listed.
- `glXDestroyHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d9774 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d9774-0xd8d9914 (416 bytes).
  It occupies 416 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d97a4, `lw` at 0xd8d9874, `lw` at 0xd8d98c0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d97b0, `lw` at 0xd8d97c8, `lw` at 0xd8d97f4.
  The `lw` at 0xd8d97b4 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d97cc loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d97dc, `sw` at 0xd8d97f8.
  The `sh` at 0xd8d9804 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d9808, `sb` at 0xd8d983c.
  The `lw` at 0xd8d980c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d9820 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d9824 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d9834 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8d9838 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8d9840 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd8d984c stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8d985c stores 4 bytes to [a0+108] +0x10.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d987c, `lw` at 0xd8d9894, `lw` at 0xd8d98c8.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8d9880, `lw` at 0xd8d98cc.
  The `jalr` at 0xd8d9798 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d97bc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d97e8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9864 calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xd8d9888 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d98a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d98d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d98f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8d97ac targets 0xd8d97cc, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8d97b0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d97d8 targets 0xd8d97fc, is taken when t6(=[a0+112]) >= t7(=[a0+108]+32) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+32) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd8d97dc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d986c targets 0xd8d98b8, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8d9878 targets 0xd8d9898, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d987c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d989c targets 0xd8d98b0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8d98b0 targets 0xd8d9900 and is always taken.
  The `beql` branch at 0xd8d98c4 targets 0xd8d98e4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d98c8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d98e8 targets 0xd8d9900, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,40(sp)` at 0xd8d98ec runs only when taken and is annulled on fall-through.
  The return at 0xd8d990c has v0 = one of 0x5c, ?.
- `glXQueryHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d9914 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d9914-0xd8d9bd0 (700 bytes).
  It occupies 700 bytes.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd8d9950, `sw` at 0xd8d9a24, `sw` at 0xd8d9a7c.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d9954, `lw` at 0xd8d9a28, `lw` at 0xd8d9a84.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d995c, `lw` at 0xd8d9974, `lw` at 0xd8d99a0.
  The `lw` at 0xd8d9960 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d9978 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d9988, `sw` at 0xd8d99a4.
  The `sh` at 0xd8d99b0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d99b4, `sb` at 0xd8d99e8.
  The `lw` at 0xd8d99b8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d99cc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d99d0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d99e0 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8d99e4 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8d99ec loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd8d99f8 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8d9a08 stores 4 bytes to [a0+108] +0x10.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d9a30, `lw` at 0xd8d9a48, `lw` at 0xd8d9a8c.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8d9a34, `lw` at 0xd8d9a90, `lw` at 0xd8d9b2c.
  The `jalr` at 0xd8d993c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d9968 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9994 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9a10 calls _XReply with a0=a0 at entry (arg0), a1=sp-44, a2=0x0, a3=0x0.
  The `jalr` at 0xd8d9a3c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9a58 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9a98 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9ab4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9ae8 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9b0c calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9b34 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9b50 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9b70 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd8d9b90 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9bac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8d9958 targets 0xd8d9978, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8d995c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d9984 targets 0xd8d99a8, is taken when t7(=[a0+112]) >= t8(=[a0+108]+32) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+32) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd8d9988 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8d9a18 targets 0xd8d9a6c, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8d9a2c targets 0xd8d9a4c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d9a30 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d9a50 targets 0xd8d9a64, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8d9a64 targets 0xd8d9bbc and is always taken.
  The `bgtz` branch at 0xd8d9a78 targets 0xd8d9ac8, is taken when t2(?) > 0 (signed), and falls through when t2(?) <= 0 (signed).
  The `beql` branch at 0xd8d9a88 targets 0xd8d9aa8, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d9a8c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d9aac targets 0xd8d9ac0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8d9ac0 targets 0xd8d9bbc and is always taken.
  The `bne` branch at 0xd8d9af8 targets 0xd8d9b64, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd8d9b24 targets 0xd8d9b44, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d9b28 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d9b48 targets 0xd8d9b5c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd8d9b5c targets 0xd8d9bbc and is always taken.
  The `beql` branch at 0xd8d9b80 targets 0xd8d9ba0, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d9b84 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d9ba4 targets 0xd8d9bbc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,92(sp)` at 0xd8d9ba8 runs only when taken and is annulled on fall-through.
  The return at 0xd8d9bc8 has v0 = one of 0x0, ret(malloc).
- `__glOdylc_Color3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda40620 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda40620-0xda40744 (292 bytes).
  It occupies 292 bytes.
  The `lw` at 0xda40630 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda40648 loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda40658 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda4065c, `lw` at 0xda40720.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda40660, `lw` at 0xda406bc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda40664, `lw` at 0xda406d4.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda406c4, `sw` at 0xda40724.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda406d0, `sw` at 0xda40728.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda406f8, `sw` at 0xda40708, `sw` at 0xda40714.
  The `sw` at 0xda40730 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda4069c calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xda40668 targets 0xda40680, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda40674 targets 0xda40684, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t2,t0,4` at 0xda40678 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda40688 targets 0xda406ec, is taken when a3(=[0x1028]) >= t2(=one of 0x4, 0x5) (signed), and falls through when a3(=[0x1028]) < t2(=one of 0x4, 0x5) (signed); its branch-likely delay slot `sll t7,t0,0x2` at 0xda4068c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda406b4 targets 0xda406d4, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda406cc targets 0xda40734 and is always taken.
  The `beql` branch at 0xda406dc targets 0xda406ec, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t7,t0,0x2` at 0xda406e0 runs only when taken and is annulled on fall-through.
  The return at 0xda4073c has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_Color3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda40f64 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda40f64-0xda41088 (292 bytes).
  It occupies 292 bytes.
  The `lw` at 0xda40f74 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda40f8c loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda40f9c stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda40fa0, `lw` at 0xda41064.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda40fa4, `lw` at 0xda41000.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda40fa8, `lw` at 0xda41018.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda41008, `sw` at 0xda41068.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda41014, `sw` at 0xda4106c.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda4103c, `sw` at 0xda4104c, `sw` at 0xda41058.
  The `sw` at 0xda41074 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda40fe0 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xda40fac targets 0xda40fc4, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda40fb8 targets 0xda40fc8, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t2,t0,4` at 0xda40fbc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda40fcc targets 0xda41030, is taken when a3(=[0x1028]) >= t2(=one of 0x4, 0x5) (signed), and falls through when a3(=[0x1028]) < t2(=one of 0x4, 0x5) (signed); its branch-likely delay slot `sll t7,t0,0x2` at 0xda40fd0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda40ff8 targets 0xda41018, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda41010 targets 0xda41078 and is always taken.
  The `beql` branch at 0xda41020 targets 0xda41030, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t7,t0,0x2` at 0xda41024 runs only when taken and is annulled on fall-through.
  The return at 0xda41080 has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_Color3ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda413fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda413fc-0xda41520 (292 bytes).
  It occupies 292 bytes.
  The `lw` at 0xda4140c loads 4 bytes from abs 0x1010.
  The `lw` at 0xda41424 loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda41434 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda41438, `lw` at 0xda414fc.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda4143c, `lw` at 0xda41498.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda41440, `lw` at 0xda414b0.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda414a0, `sw` at 0xda41500.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda414ac, `sw` at 0xda41504.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda414d4, `sw` at 0xda414e4, `sw` at 0xda414f0.
  The `sw` at 0xda4150c stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda41478 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xda41444 targets 0xda4145c, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda41450 targets 0xda41460, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t2,t0,4` at 0xda41454 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda41464 targets 0xda414c8, is taken when a3(=[0x1028]) >= t2(=one of 0x4, 0x5) (signed), and falls through when a3(=[0x1028]) < t2(=one of 0x4, 0x5) (signed); its branch-likely delay slot `sll t7,t0,0x2` at 0xda41468 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda41490 targets 0xda414b0, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda414a8 targets 0xda41510 and is always taken.
  The `beql` branch at 0xda414b8 targets 0xda414c8, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t7,t0,0x2` at 0xda414bc runs only when taken and is annulled on fall-through.
  The return at 0xda41518 has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_Color3us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41648 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda41648-0xda4176c (292 bytes).
  It occupies 292 bytes.
  The `lw` at 0xda41658 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda41670 loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda41680 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda41684, `lw` at 0xda41748.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda41688, `lw` at 0xda416e4.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda4168c, `lw` at 0xda416fc.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda416ec, `sw` at 0xda4174c.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda416f8, `sw` at 0xda41750.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda41720, `sw` at 0xda41730, `sw` at 0xda4173c.
  The `sw` at 0xda41758 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda416c4 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xda41690 targets 0xda416a8, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda4169c targets 0xda416ac, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t2,t0,4` at 0xda416a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda416b0 targets 0xda41714, is taken when a3(=[0x1028]) >= t2(=one of 0x4, 0x5) (signed), and falls through when a3(=[0x1028]) < t2(=one of 0x4, 0x5) (signed); its branch-likely delay slot `sll t7,t0,0x2` at 0xda416b4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda416dc targets 0xda416fc, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda416f4 targets 0xda4175c and is always taken.
  The `beql` branch at 0xda41704 targets 0xda41714, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t7,t0,0x2` at 0xda41708 runs only when taken and is annulled on fall-through.
  The return at 0xda41764 has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_Color4b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41894 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda41894-0xda419c4 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0xda418a4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda418c0 loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda418d0 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda418d4, `lw` at 0xda419a0.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda418d8, `lw` at 0xda41934.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda418dc, `lw` at 0xda4194c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda4193c, `sw` at 0xda419a4.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda41948, `sw` at 0xda419a8.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda41970, `sw` at 0xda41980, `sw` at 0xda4198c.
  The `sw` at 0xda419b0 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda41914 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda418e0 targets 0xda418f8, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda418ec targets 0xda418fc, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t3,t1,5` at 0xda418f0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda41900 targets 0xda41964, is taken when t0(=[0x1028]) >= t3(=one of 0x5, 0x6) (signed), and falls through when t0(=[0x1028]) < t3(=one of 0x5, 0x6) (signed); its branch-likely delay slot `sll t8,t1,0x2` at 0xda41904 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda4192c targets 0xda4194c, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda41944 targets 0xda419b4 and is always taken.
  The `beql` branch at 0xda41954 targets 0xda41964, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t8,t1,0x2` at 0xda41958 runs only when taken and is annulled on fall-through.
  The return at 0xda419bc has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_Color4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41fd8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda41fd8-0xda42108 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0xda41fe8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda42004 loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda42014 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda42018, `lw` at 0xda420e4.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda4201c, `lw` at 0xda42078.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda42020, `lw` at 0xda42090.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda42080, `sw` at 0xda420e8.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda4208c, `sw` at 0xda420ec.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda420b4, `sw` at 0xda420c4, `sw` at 0xda420d0.
  The `sw` at 0xda420f4 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda42058 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda42024 targets 0xda4203c, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda42030 targets 0xda42040, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t3,t1,5` at 0xda42034 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda42044 targets 0xda420a8, is taken when t0(=[0x1028]) >= t3(=one of 0x5, 0x6) (signed), and falls through when t0(=[0x1028]) < t3(=one of 0x5, 0x6) (signed); its branch-likely delay slot `sll t8,t1,0x2` at 0xda42048 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda42070 targets 0xda42090, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda42088 targets 0xda420f8 and is always taken.
  The `beql` branch at 0xda42098 targets 0xda420a8, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t8,t1,0x2` at 0xda4209c runs only when taken and is annulled on fall-through.
  The return at 0xda42100 has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_Color4s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda4223c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda4223c-0xda4236c (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0xda4224c loads 4 bytes from abs 0x1010.
  The `lw` at 0xda42268 loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda42278 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda4227c, `lw` at 0xda42348.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda42280, `lw` at 0xda422dc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda42284, `lw` at 0xda422f4.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda422e4, `sw` at 0xda4234c.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda422f0, `sw` at 0xda42350.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda42318, `sw` at 0xda42328, `sw` at 0xda42334.
  The `sw` at 0xda42358 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda422bc calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda42288 targets 0xda422a0, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda42294 targets 0xda422a4, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t3,t1,5` at 0xda42298 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda422a8 targets 0xda4230c, is taken when t0(=[0x1028]) >= t3(=one of 0x5, 0x6) (signed), and falls through when t0(=[0x1028]) < t3(=one of 0x5, 0x6) (signed); its branch-likely delay slot `sll t8,t1,0x2` at 0xda422ac runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda422d4 targets 0xda422f4, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda422ec targets 0xda4235c and is always taken.
  The `beql` branch at 0xda422fc targets 0xda4230c, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t8,t1,0x2` at 0xda42300 runs only when taken and is annulled on fall-through.
  The return at 0xda42364 has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_Color4ub` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda424a0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda424a0-0xda425d0 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0xda424b0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda424cc loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda424dc stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda424e0, `lw` at 0xda425ac.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda424e4, `lw` at 0xda42540.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda424e8, `lw` at 0xda42558.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda42548, `sw` at 0xda425b0.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda42554, `sw` at 0xda425b4.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda4257c, `sw` at 0xda4258c, `sw` at 0xda42598.
  The `sw` at 0xda425bc stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda42520 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda424ec targets 0xda42504, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda424f8 targets 0xda42508, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t3,t1,5` at 0xda424fc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda4250c targets 0xda42570, is taken when t0(=[0x1028]) >= t3(=one of 0x5, 0x6) (signed), and falls through when t0(=[0x1028]) < t3(=one of 0x5, 0x6) (signed); its branch-likely delay slot `sll t8,t1,0x2` at 0xda42510 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda42538 targets 0xda42558, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda42550 targets 0xda425c0 and is always taken.
  The `beql` branch at 0xda42560 targets 0xda42570, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t8,t1,0x2` at 0xda42564 runs only when taken and is annulled on fall-through.
  The return at 0xda425c8 has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_Color4ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda42704 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda42704-0xda42834 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0xda42714 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda42730 loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda42740 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda42744, `lw` at 0xda42810.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda42748, `lw` at 0xda427a4.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda4274c, `lw` at 0xda427bc.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda427ac, `sw` at 0xda42814.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda427b8, `sw` at 0xda42818.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda427e0, `sw` at 0xda427f0, `sw` at 0xda427fc.
  The `sw` at 0xda42820 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda42784 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda42750 targets 0xda42768, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda4275c targets 0xda4276c, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t3,t1,5` at 0xda42760 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda42770 targets 0xda427d4, is taken when t0(=[0x1028]) >= t3(=one of 0x5, 0x6) (signed), and falls through when t0(=[0x1028]) < t3(=one of 0x5, 0x6) (signed); its branch-likely delay slot `sll t8,t1,0x2` at 0xda42774 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda4279c targets 0xda427bc, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda427b4 targets 0xda42824 and is always taken.
  The `beql` branch at 0xda427c4 targets 0xda427d4, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t8,t1,0x2` at 0xda427c8 runs only when taken and is annulled on fall-through.
  The return at 0xda4282c has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_Color4us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda42968 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda42968-0xda42a98 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0xda42978 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda42994 loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda429a4 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda429a8, `lw` at 0xda42a74.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda429ac, `lw` at 0xda42a08.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda429b0, `lw` at 0xda42a20.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda42a10, `sw` at 0xda42a78.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda42a1c, `sw` at 0xda42a7c.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda42a44, `sw` at 0xda42a54, `sw` at 0xda42a60.
  The `sw` at 0xda42a84 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda429e8 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda429b4 targets 0xda429cc, is taken when t8(=[0x1034]) != 0, and falls through when t8(=[0x1034]) == 0.
  The `beql` branch at 0xda429c0 targets 0xda429d0, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t3,t1,5` at 0xda429c4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda429d4 targets 0xda42a38, is taken when t0(=[0x1028]) >= t3(=one of 0x5, 0x6) (signed), and falls through when t0(=[0x1028]) < t3(=one of 0x5, 0x6) (signed); its branch-likely delay slot `sll t8,t1,0x2` at 0xda429d8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda42a00 targets 0xda42a20, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xda42a18 targets 0xda42a88 and is always taken.
  The `beql` branch at 0xda42a28 targets 0xda42a38, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t8,t1,0x2` at 0xda42a2c runs only when taken and is annulled on fall-through.
  The return at 0xda42a90 has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_Normal3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaaad00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaaad00-0xdaaae10 (272 bytes).
  It occupies 272 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdaaad28, `lw` at 0xdaaadec.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdaaad2c, `lw` at 0xdaaada0.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdaaad30, `lw` at 0xdaaad88.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdaaad90, `sw` at 0xdaaadf0.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdaaad9c, `sw` at 0xdaaadf4.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdaaadc4, `sw` at 0xdaaadd4, `sw` at 0xdaaade0.
  The `sw` at 0xdaaadfc stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdaaad68 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xdaaad34 targets 0xdaaad4c, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xdaaad40 targets 0xdaaad50, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,t0,4` at 0xdaaad44 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdaaad54 targets 0xdaaadb8, is taken when a3(=[0x1028]) >= t8(=one of 0x4, 0x5) (signed), and falls through when a3(=[0x1028]) < t8(=one of 0x4, 0x5) (signed); its branch-likely delay slot `sll t5,t0,0x2` at 0xdaaad58 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdaaad80 targets 0xdaaada0, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xdaaad98 targets 0xdaaae00 and is always taken.
  The `beql` branch at 0xdaaada8 targets 0xdaaadb8, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t5,t0,0x2` at 0xdaaadac runs only when taken and is annulled on fall-through.
  The return at 0xdaaae08 has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_Normal3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaab5a4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaab5a4-0xdaab6b4 (272 bytes).
  It occupies 272 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdaab5cc, `lw` at 0xdaab690.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdaab5d0, `lw` at 0xdaab644.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdaab5d4, `lw` at 0xdaab62c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdaab634, `sw` at 0xdaab694.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdaab640, `sw` at 0xdaab698.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdaab668, `sw` at 0xdaab678, `sw` at 0xdaab684.
  The `sw` at 0xdaab6a0 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdaab60c calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xdaab5d8 targets 0xdaab5f0, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xdaab5e4 targets 0xdaab5f4, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,t0,4` at 0xdaab5e8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdaab5f8 targets 0xdaab65c, is taken when a3(=[0x1028]) >= t8(=one of 0x4, 0x5) (signed), and falls through when a3(=[0x1028]) < t8(=one of 0x4, 0x5) (signed); its branch-likely delay slot `sll t5,t0,0x2` at 0xdaab5fc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdaab624 targets 0xdaab644, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xdaab63c targets 0xdaab6a4 and is always taken.
  The `beql` branch at 0xdaab64c targets 0xdaab65c, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t5,t0,0x2` at 0xdaab650 runs only when taken and is annulled on fall-through.
  The return at 0xdaab6ac has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_TexCoord1d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab23f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab23f0-0xdab24ec (252 bytes).
  It occupies 252 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdab240c, `lw` at 0xdab24bc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdab2410, `lw` at 0xdab248c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdab2414, `lw` at 0xdab2474.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdab247c, `sw` at 0xdab24d4.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdab2488, `sw` at 0xdab24d8.
  The `sw` at 0xdab24b4 stores 4 bytes to ([0x1030] + (one of 0x0, 0x1 << 0x2)) +0x0.
  The `swc1` at 0xdab24b8 stores 4 bytes to ([0x1030] + (one of 0x0, 0x1 << 0x2)) +0x4.
  The `sw` at 0xdab24d0 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdab2450 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=one of 0x0, 0x1, a2=0x1028, a3=a3 at entry (arg3).
  The `bne` branch at 0xdab2418 targets 0xdab2430, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xdab2424 targets 0xdab2434, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,a1,2` at 0xdab2428 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab2438 targets 0xdab24a4, is taken when a0(=[0x1028]) >= t8(=one of 0x2, 0x3) (signed), and falls through when a0(=[0x1028]) < t8(=one of 0x2, 0x3) (signed); its branch-likely delay slot `cvt.s.d $f4,$f12` at 0xdab243c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab246c targets 0xdab248c, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xdab2484 targets 0xdab24dc and is always taken.
  The `beql` branch at 0xdab2494 targets 0xdab24a4, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `cvt.s.d $f4,$f12` at 0xdab2498 runs only when taken and is annulled on fall-through.
  The return at 0xdab24e4 has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_TexCoord2d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab2bc8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab2bc8-0xdab2cd4 (268 bytes).
  It occupies 268 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdab2be4, `lw` at 0xdab2ca4.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdab2be8, `lw` at 0xdab2c6c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdab2bec, `lw` at 0xdab2c54.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdab2c5c, `sw` at 0xdab2cbc.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdab2c68, `sw` at 0xdab2cc0.
  The `sw` at 0xdab2c98 stores 4 bytes to ([0x1030] + (one of 0x0, 0x1 << 0x2)) +0x0.
  The `swc1` at 0xdab2c9c stores 4 bytes to ([0x1030] + (one of 0x0, 0x1 << 0x2)) +0x4.
  The `swc1` at 0xdab2ca0 stores 4 bytes to ([0x1030] + (one of 0x0, 0x1 << 0x2)) +0x8.
  The `sw` at 0xdab2cb8 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdab2c2c calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=one of 0x0, 0x1, a2=0x1028, a3=a3 at entry (arg3).
  The `bne` branch at 0xdab2bf0 targets 0xdab2c08, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xdab2bfc targets 0xdab2c0c, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,a1,3` at 0xdab2c00 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab2c10 targets 0xdab2c84, is taken when a0(=[0x1028]) >= t8(=one of 0x3, 0x4) (signed), and falls through when a0(=[0x1028]) < t8(=one of 0x3, 0x4) (signed); its branch-likely delay slot `cvt.s.d $f4,$f12` at 0xdab2c14 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab2c4c targets 0xdab2c6c, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xdab2c64 targets 0xdab2cc4 and is always taken.
  The `beql` branch at 0xdab2c74 targets 0xdab2c84, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `cvt.s.d $f4,$f12` at 0xdab2c78 runs only when taken and is annulled on fall-through.
  The return at 0xdab2ccc has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_TexCoord2i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab2ff0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab2ff0-0xdab30f4 (260 bytes).
  It occupies 260 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdab3014, `lw` at 0xdab30d0.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdab3018, `lw` at 0xdab308c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdab301c, `lw` at 0xdab3074.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdab307c, `sw` at 0xdab30d4.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdab3088, `sw` at 0xdab30d8.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdab30b0, `sw` at 0xdab30c0, `sw` at 0xdab30cc.
  The `sw` at 0xdab30e0 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdab3054 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=[0x1028], a3=one of 0x0, 0x1.
  The `bne` branch at 0xdab3020 targets 0xdab3038, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xdab302c targets 0xdab303c, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,a3,3` at 0xdab3030 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab3040 targets 0xdab30a4, is taken when a2(=[0x1028]) >= t8(=one of 0x3, 0x4) (signed), and falls through when a2(=[0x1028]) < t8(=one of 0x3, 0x4) (signed); its branch-likely delay slot `sll t4,a3,0x2` at 0xdab3044 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab306c targets 0xdab308c, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xdab3084 targets 0xdab30e4 and is always taken.
  The `beql` branch at 0xdab3094 targets 0xdab30a4, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t4,a3,0x2` at 0xdab3098 runs only when taken and is annulled on fall-through.
  The return at 0xdab30ec has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_TexCoord3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab3864 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab3864-0xdab3974 (272 bytes).
  It occupies 272 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdab388c, `lw` at 0xdab3950.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdab3890, `lw` at 0xdab3904.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdab3894, `lw` at 0xdab38ec.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdab38f4, `sw` at 0xdab3954.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdab3900, `sw` at 0xdab3958.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdab3928, `sw` at 0xdab3938, `sw` at 0xdab3944.
  The `sw` at 0xdab3960 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdab38cc calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xdab3898 targets 0xdab38b0, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xdab38a4 targets 0xdab38b4, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,t0,4` at 0xdab38a8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab38b8 targets 0xdab391c, is taken when a3(=[0x1028]) >= t8(=one of 0x4, 0x5) (signed), and falls through when a3(=[0x1028]) < t8(=one of 0x4, 0x5) (signed); its branch-likely delay slot `sll t5,t0,0x2` at 0xdab38bc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab38e4 targets 0xdab3904, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xdab38fc targets 0xdab3964 and is always taken.
  The `beql` branch at 0xdab390c targets 0xdab391c, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t5,t0,0x2` at 0xdab3910 runs only when taken and is annulled on fall-through.
  The return at 0xdab396c has v0 = one of ret(__glSPDlistSpace), ?.
- `__glOdylc_TexCoord4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab413c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab413c-0xdab4258 (284 bytes).
  It occupies 284 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdab4168, `lw` at 0xdab4234.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdab416c, `lw` at 0xdab41e0.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdab4170, `lw` at 0xdab41c8.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdab41d0, `sw` at 0xdab4238.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdab41dc, `sw` at 0xdab423c.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdab4204, `sw` at 0xdab4214, `sw` at 0xdab4220.
  The `sw` at 0xdab4244 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdab41a8 calls __glSPDlistSpace [0xdadf11c] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xdab4174 targets 0xdab418c, is taken when t6(=[0x1034]) != 0, and falls through when t6(=[0x1034]) == 0.
  The `beql` branch at 0xdab4180 targets 0xdab4190, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `addiu t8,t1,5` at 0xdab4184 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab4194 targets 0xdab41f8, is taken when t0(=[0x1028]) >= t8(=one of 0x5, 0x6) (signed), and falls through when t0(=[0x1028]) < t8(=one of 0x5, 0x6) (signed); its branch-likely delay slot `sll t6,t1,0x2` at 0xdab4198 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab41c0 targets 0xdab41e0, is taken when v0(=ret(__glSPDlistSpace)) != 0, and falls through when v0(=ret(__glSPDlistSpace)) == 0.
  The `beq` branch at 0xdab41d8 targets 0xdab4248 and is always taken.
  The `beql` branch at 0xdab41e8 targets 0xdab41f8, is taken when (v1(=[0x1030]) & 0x4) == 0, and falls through when (v1(=[0x1030]) & 0x4) != 0; its branch-likely delay slot `sll t6,t1,0x2` at 0xdab41ec runs only when taken and is annulled on fall-through.
  The return at 0xdab4250 has v0 = one of ret(__glSPDlistSpace), ?.
- `DownsampleTextureThruHW` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab7238 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab7238-0xdab7e34 (3068 bytes).
  It occupies 3068 bytes.
  The `lw` at 0xdab7248 loads 4 bytes from abs 0x1010.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7ed0, including `lw` at 0xdab7260, `lw` at 0xdab76b8, `lw` at 0xdab77a8.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7ed4, including `lw` at 0xdab7270, `lw` at 0xdab76cc, `lw` at 0xdab77b8.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7ed8, including `lw` at 0xdab7280, `lw` at 0xdab7750, `lw` at 0xdab77c8.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7f00, including `lw` at 0xdab728c, `lw` at 0xdab7804.
  24 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdab72a8, `lw` at 0xdab72b4, `lw` at 0xdab7330.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xdab72b0, `lw` at 0xdab72c0, `lw` at 0xdab72c8.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7b20, including `lw` at 0xdab72d8, `lw` at 0xdab72dc.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b20, including `sw` at 0xdab72f0, `sw` at 0xdab7304.
  10 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xdab7310, `lw` at 0xdab7674, `lw` at 0xdab77ec.
  9 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xdab7320, `sw` at 0xdab7688, `sw` at 0xdab77fc.
  9 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xdab7324, `sw` at 0xdab768c, `sw` at 0xdab7800.
  9 such `lw` accesses load 4 bytes from [0x1010] +0x2d44, including `lw` at 0xdab7328, `lw` at 0xdab7690, `lw` at 0xdab7808.
  9 such `sw` accesses store 4 bytes to [0x1010] +0x2d44, including `sw` at 0xdab732c, `sw` at 0xdab769c, `sw` at 0xdab781c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7be4, including `lw` at 0xdab741c, `lw` at 0xdab7460.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x7be4, including `sw` at 0xdab7438, `sw` at 0xdab7494, `sw` at 0xdab7498.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7be8, including `lw` at 0xdab749c, `lw` at 0xdab74fc.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x7be8, including `sw` at 0xdab74c4, `sw` at 0xdab74f4, `sw` at 0xdab7518.
  7 such `lw` accesses load 4 bytes from [0x1010] +0x7bf4, including `lw` at 0xdab74c8, `lw` at 0xdab74f8, `lw` at 0xdab753c.
  7 such `sw` accesses store 4 bytes to [0x1010] +0x7bf4, including `sw` at 0xdab74ec, `sw` at 0xdab7514, `sw` at 0xdab7558.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7bec, including `lw` at 0xdab751c, `lw` at 0xdab7568.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x7bec, including `sw` at 0xdab7538, `sw` at 0xdab7560, `sw` at 0xdab757c.
  The `lw` at 0xdab7580 loads 4 bytes from [0x1010] +0x7bf0.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7bf0, including `sw` at 0xdab7588, `sw` at 0xdab7594.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7bfc, including `lw` at 0xdab75ac, `lw` at 0xdab75dc.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7bfc, including `sw` at 0xdab75d0, `sw` at 0xdab75fc.
  The `lw` at 0xdab76b4 loads 4 bytes from (a0 + (a1 << 0x2)) +0x558.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7ed0, including `sw` at 0xdab76d0, `sw` at 0xdab7d28.
  5 such `sw` accesses store 4 bytes to [0x1010] +0x7ed4, including `sw` at 0xdab76f8, `sw` at 0xdab771c, `sw` at 0xdab773c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7ed8, including `sw` at 0xdab7764, `sw` at 0xdab7d40.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x9750, including `lw` at 0xdab7768, `lw` at 0xdab7d44.
  5 such `sw` accesses store 4 bytes to [0x1010] +0x9750, including `sw` at 0xdab7784, `sw` at 0xdab77d8, `sw` at 0xdab7d10.
  28 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdab7788, `sw` at 0xdab7794, `sw` at 0xdab779c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7f00, including `sw` at 0xdab7818, `sw` at 0xdab7de0.
  The `lw` at 0xdab7848 loads 4 bytes from [0x1010] +0x95c0.
  The `sw` at 0xdab7858 stores 4 bytes to [0x1010] +0x95c0.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x95c4, including `lw` at 0xdab78a8, `lw` at 0xdab78dc, `lw` at 0xdab7900.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x95c4, including `sw` at 0xdab78d8, `sw` at 0xdab78fc, `sw` at 0xdab7920.
  The `lw` at 0xdab7998 loads 4 bytes from (a0 + (a2 << 0x2)) +0x558.
  The `lw` at 0xdab799c loads 4 bytes from [0x1010] +0x95bc.
  The `sw` at 0xdab79b8 stores 4 bytes to [0x1010] +0x95bc.
  The `lw` at 0xdab7b18 loads 4 bytes from [0x1010] +0x7b44.
  4 such `sw` accesses store 4 bytes to [0x1010] +0x7b44, including `sw` at 0xdab7b1c, `sw` at 0xdab7b68, `sw` at 0xdab7b88.
  The `lw` at 0xdab7b28 loads 4 bytes from [0x1010] +0x7b40.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x7b40, including `sw` at 0xdab7b34, `sw` at 0xdab7b58, `sw` at 0xdab7df8.
  14 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdab7c38, `swc1` at 0xdab7c40, `swc1` at 0xdab7c44.
  The `jalr` at 0xdab7408 calls __glOdysseyImageLogBase2 [0xdaa6250] with a0=?, a1=0xde0, a2=?, a3=[0x1010].
  The `jalr` at 0xdab744c calls __glOdysseyImageLogBase2 [0xdaa6250] with a0=?, a1=?, a2=?, a3=[0x1010].
  The `jalr` at 0xdab7628 calls ChooseSuitableBuzzTexModeBaseFmt [0xdab5c18] with a0=?, a1=?, a2=?, a3=[0x1010].
  The `jalr` at 0xdab7880 calls GetImageFmtEnumFromBuzzTexFormat [0xdab5b58] with a0=?, a1=[0x1010]+32768, a2=?, a3=[0x1010].
  The `jalr` at 0xdab7894 calls __glOdysseyImageCalcFieldFormat [0xda6b2e8] with a0=ret(GetImageFmtEnumFromBuzzTexFormat), a1=?, a2=?, a3=?.
  The `jalr` at 0xdab7bd4 calls __glOdysseyValidateHardware [0xda47694] with a0=[0x1010], a1=[0x1010]+32768, a2=?, a3=[0x1010].
  The `bnel` branch at 0xdab72ac targets 0xdab72cc, is taken when v1(=0x2) != t6(?), and falls through when v1(=0x2) == t6(?); its branch-likely delay slot `lw t9,12(a0)` at 0xdab72b0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xdab72bc targets 0xdab72cc, is taken when v1(=0x2) != t7(?), and falls through when v1(=0x2) == t7(?); its branch-likely delay slot `lw t9,12(a0)` at 0xdab72c0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xdab72d4 targets 0xdab72f8, is taken when a1(=0xde0) != t9(=[a0+12]), and falls through when a1(=0xde0) == t9(=[a0+12]); its branch-likely delay slot `lw t9,31520(a3)` at 0xdab72d8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdab72ec targets 0xdab7308 and is always taken.
  The `beq` branch at 0xdab7334 targets 0xdab7358, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xdab733c targets 0xdab7364, is taken when v1(?) == at(=0x1), and falls through when v1(?) != at(=0x1).
  The `beq` branch at 0xdab7348 targets 0xdab736c, is taken when v1(?) == at(=0x8), and falls through when v1(?) != at(=0x8).
  The `beq` branch at 0xdab7350 targets 0xdab7378 and is always taken.
  The `beq` branch at 0xdab735c targets 0xdab7378 and is always taken.
  The `beq` branch at 0xdab7364 targets 0xdab7378 and is always taken.
  The `beq` branch at 0xdab736c targets 0xdab7378 and is always taken.
  The `beq` branch at 0xdab7390 targets 0xdab73a0, is taken when a1(=0xde0) == t8(=[a0+12]), and falls through when a1(=0xde0) != t8(=[a0+12]).
  The `beq` branch at 0xdab7398 targets 0xdab73a4 and is always taken.
  The `beq` branch at 0xdab73a4 targets 0xdab73bc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xdab73b4 targets 0xdab73c0 and is always taken.
  The `beq` branch at 0xdab73c0 targets 0xdab73d8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xdab73d0 targets 0xdab73e0 and is always taken.
  The `beq` branch at 0xdab74c0 targets 0xdab74f8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xdab74f0 targets 0xdab751c and is always taken.
  The `beq` branch at 0xdab7534 targets 0xdab7564, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xdab755c targets 0xdab7580 and is always taken.
  The `bne` branch at 0xdab7590 targets 0xdab75a0, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0xdab7598 targets 0xdab75d4, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xdab75cc targets 0xdab7600 and is always taken.
  The `beq` branch at 0xdab7774 targets 0xdab77a4, is taken when t8(=[[0x1010]+38736]) == 0, and falls through when t8(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xdab79ec targets 0xdab7a64, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bgez` branch at 0xdab7a18 targets 0xdab7a34, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `beq` branch at 0xdab7a5c targets 0xdab7aa0 and is always taken.
  The `beq` branch at 0xdab7aa0 targets 0xdab7af8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bgez` branch at 0xdab7ab8 targets 0xdab7ad0, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0xdab7af0 targets 0xdab7b18 and is always taken.
  The `beql` branch at 0xdab7ba8 targets 0xdab7c18, is taken when t8(=[[0x1010]+92368]) == 0, and falls through when t8(=[[0x1010]+92368]) != 0; its branch-likely delay slot `lui t7,0x1` at 0xdab7bac runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xdab7c4c targets 0xdab7c64, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `bgez` branch at 0xdab7c74 targets 0xdab7c88, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `bgez` branch at 0xdab7ca4 targets 0xdab7cb8, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `bgez` branch at 0xdab7cd8 targets 0xdab7cec, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0xdab7d50 targets 0xdab7d6c, is taken when t7(=[[0x1010]+38736]) == 0, and falls through when t7(=[[0x1010]+38736]) != 0.
  The return at 0xdab7e2c has v0 = ?.
  The instructions from 0xdab72f4 to 0xdab72f4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdab7374 to 0xdab7374 are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseyTextureDeactivate` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab8908 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab8908-0xdab8a18 (272 bytes).
  It occupies 272 bytes.
  The `lw` at 0xdab8930 loads 4 bytes from a1 (arg1 at entry) +0x540.
  The `lw` at 0xdab8934 loads 4 bytes from a1 (arg1 at entry) +0x53c.
  The `lw` at 0xdab893c loads 4 bytes from a1 (arg1 at entry) +0x534.
  The `sw` at 0xdab8960 stores 4 bytes to a1 (arg1 at entry) +0x538.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdab8980, `sw` at 0xdab89ec, `sw` at 0xdab89f0.
  The `lw` at 0xdab8990 loads 4 bytes from a0 (arg0 at entry) +0x164b8.
  The `lw` at 0xdab8994 loads 4 bytes from [a0+91320] +0x538.
  The `lw` at 0xdab89a4 loads 4 bytes from [a0+91320] +0x534.
  The `lw` at 0xdab89a8 loads 4 bytes from [a0+91320] +0x53c.
  The `lw` at 0xdab89b0 loads 4 bytes from [a0+91320] +0x540.
  The `sw` at 0xdab89d0 stores 4 bytes to [a0+91320] +0x538.
  The `jalr` at 0xdab8938 calls __glOdysseyClosePMObjReference [0xdaad5a0] with a0=a0 at entry (arg0), a1=[a1+1332], a2=[a1+1340], a3=[a1+1344].
  The `jalr` at 0xdab8950 calls __glSetError [0xdb1ac34] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xdab89ac calls __glOdysseyClosePMObjReference [0xdaad5a0] with a0=a0 at entry (arg0), a1=[[a0+91320]+1332], a2=[[a0+91320]+1340], a3=[[a0+91320]+1344].
  The `jalr` at 0xdab89c4 calls __glSetError [0xdb1ac34] with a0=0x505, a1=?, a2=?, a3=?.
  The `bne` branch at 0xdab8940 targets 0xdab895c, is taken when v0(=ret(__glOdysseyClosePMObjReference)) != 0, and falls through when v0(=ret(__glOdysseyClosePMObjReference)) == 0.
  The `bne` branch at 0xdab897c targets 0xdab8970, is taken when v1(?) < 0x10 (signed), and falls through when v1(?) >= 0x10 (signed).
  The `beql` branch at 0xdab8998 targets 0xdab89d8, is taken when t6(=[[a0+91320]+1336]) == 0, and falls through when t6(=[[a0+91320]+1336]) != 0; its branch-likely delay slot `lui v0,0xbaad` at 0xdab899c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab89b4 targets 0xdab89d0, is taken when v0(=ret(__glOdysseyClosePMObjReference)) != 0, and falls through when v0(=ret(__glOdysseyClosePMObjReference)) == 0.
  The `bne` branch at 0xdab89fc targets 0xdab89e8, is taken when v1(?) != a1(=0x10), and falls through when v1(?) == a1(=0x10).
  The return at 0xdab8a10 has v0 = 0xffffffffbaadcade.
- `RGBSendFc` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacec48 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacec48-0xdacecd0 (136 bytes).
  It occupies 136 bytes.
  The `lbu` at 0xdacec48 loads 1 byte from a0 (arg0 at entry) +0xb8.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdacec78, `sw` at 0xdacec7c, `sw` at 0xdaceca8.
  The `lwc1` at 0xdacec80 loads 4 bytes from a0 (arg0 at entry) +0x90.
  8 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdacec8c, `swc1` at 0xdacec94, `swc1` at 0xdacec9c.
  The `lwc1` at 0xdacec90 loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `lwc1` at 0xdacec98 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `lwc1` at 0xdaceca0 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lwc1` at 0xdacecac loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lwc1` at 0xdacecb4 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lwc1` at 0xdacecbc loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0xdacecc4 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `beq` branch at 0xdacec54 targets 0xdacec64, is taken when t6(=[a0+184]:1) == 0, and falls through when t6(=[a0+184]:1) != 0.
  The `beq` branch at 0xdacec5c targets 0xdacec68 and is always taken.
  The return at 0xdacecc8 has v0 = one of 0xf, 0x10.
- `RGBSendClippedBmFmTN` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacfde0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacfde0-0xdad00c8 (744 bytes).
  It occupies 744 bytes.
  The `lbu` at 0xdacfdec loads 1 byte from a0 (arg0 at entry) +0xb8.
  The `lw` at 0xdacfdf0 loads 4 bytes from abs 0x1010.
  20 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdacfe14, `sw` at 0xdacfe38, `sw` at 0xdacfe54.
  The `lw` at 0xdacfe18 loads 4 bytes from [0x1010] +0x588.
  75 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdacfe3c, `swc1` at 0xdacfe40, `swc1` at 0xdacfe48.
  The `lwc1` at 0xdacfe58 loads 4 bytes from a0 (arg0 at entry) +0x170.
  The `lwc1` at 0xdacfe68 loads 4 bytes from a0 (arg0 at entry) +0x174.
  The `lwc1` at 0xdacfe78 loads 4 bytes from a0 (arg0 at entry) +0x178.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9c, including `lwc1` at 0xdacfe9c, `lwc1` at 0xdacff98.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x90, including `lwc1` at 0xdacfeb0, `lwc1` at 0xdacffac.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x94, including `lwc1` at 0xdacfec0, `lwc1` at 0xdacffbc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98, including `lwc1` at 0xdacfed0, `lwc1` at 0xdacffcc.
  The `lwc1` at 0xdacfef4 loads 4 bytes from a0 (arg0 at entry) +0x180.
  The `lwc1` at 0xdacfefc loads 4 bytes from a0 (arg0 at entry) +0x184.
  The `lwc1` at 0xdacff04 loads 4 bytes from a0 (arg0 at entry) +0x188.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lwc1` at 0xdacff20, `lwc1` at 0xdad0018.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xa0, including `lwc1` at 0xdacff2c, `lwc1` at 0xdad002c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lwc1` at 0xdacff34, `lwc1` at 0xdad0034.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lwc1` at 0xdacff3c, `lwc1` at 0xdad003c.
  The `lwc1` at 0xdad0054 loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `lwc1` at 0xdad0064 loads 4 bytes from a0 (arg0 at entry) +0xc4.
  The `lwc1` at 0xdad0074 loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `lwc1` at 0xdad0080 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lwc1` at 0xdad0088 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lwc1` at 0xdad0090 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lwc1` at 0xdad0098 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lwc1` at 0xdad00a4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lwc1` at 0xdad00ac loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lwc1` at 0xdad00b4 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0xdad00bc loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `beq` branch at 0xdacfdf8 targets 0xdacfe08, is taken when t6(=[a0+184]:1) == 0, and falls through when t6(=[a0+184]:1) != 0.
  The `beq` branch at 0xdacfe00 targets 0xdacfe08 and is always taken.
  The `bne` branch at 0xdacfe24 targets 0xdacff4c, is taken when t1(=[[0x1010]+1416]) != at(=0x81fa), and falls through when t1(=[[0x1010]+1416]) == at(=0x81fa).
  The `beq` branch at 0xdacff44 targets 0xdad0048 and is always taken.
  The return at 0xdad00c0 has v0 = [0x1010].
- `CISendFc` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad00c8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad00c8-0xdad0138 (112 bytes).
  It occupies 112 bytes.
  The `lbu` at 0xdad00c8 loads 1 byte from a0 (arg0 at entry) +0xb8.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdad00f8, `sw` at 0xdad00fc, `sw` at 0xdad0110.
  The `lwc1` at 0xdad0100 loads 4 bytes from a0 (arg0 at entry) +0x90.
  5 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdad010c, `swc1` at 0xdad0118, `swc1` at 0xdad0120.
  The `lwc1` at 0xdad0114 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lwc1` at 0xdad011c loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lwc1` at 0xdad0124 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0xdad012c loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `beq` branch at 0xdad00d4 targets 0xdad00e4, is taken when t6(=[a0+184]:1) == 0, and falls through when t6(=[a0+184]:1) != 0.
  The `beq` branch at 0xdad00dc targets 0xdad00e8 and is always taken.
  The return at 0xdad0130 has v0 = one of 0xf, 0x10.
- `CISendClippedBmFmN` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0640 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad0640-0xdad07b4 (372 bytes).
  It occupies 372 bytes.
  The `lbu` at 0xdad064c loads 1 byte from a0 (arg0 at entry) +0xb8.
  11 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdad0678, `sw` at 0xdad0680, `sw` at 0xdad06a0.
  The `lwc1` at 0xdad0684 loads 4 bytes from a0 (arg0 at entry) +0x90.
  39 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdad0690, `swc1` at 0xdad0694, `swc1` at 0xdad0698.
  The `lwc1` at 0xdad06f8 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `lwc1` at 0xdad076c loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `lwc1` at 0xdad077c loads 4 bytes from a0 (arg0 at entry) +0xc4.
  The `lwc1` at 0xdad0784 loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `lwc1` at 0xdad0790 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lwc1` at 0xdad0798 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lwc1` at 0xdad07a0 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0xdad07a8 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `beq` branch at 0xdad0658 targets 0xdad0668, is taken when t6(=[a0+184]:1) == 0, and falls through when t6(=[a0+184]:1) != 0.
  The `beq` branch at 0xdad0660 targets 0xdad066c and is always taken.
  The return at 0xdad07ac has v0 = one of 0xf, 0x10.
- `__glOdyim_Vertex2d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba70c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba70c0-0xdba70e0 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdba70d0 stores 4 bytes to abs 0x4000.
  2 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdba70d4, `swc1` at 0xdba70dc.
  The return at 0xdba70d8 has v0 = ?.
- `__glOdyim_Vertex3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba72c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba72c0-0xdba72ec (44 bytes).
  It occupies 44 bytes.
  The `sw` at 0xdba72d8 stores 4 bytes to abs 0x4000.
  3 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdba72dc, `swc1` at 0xdba72e0, `swc1` at 0xdba72e8.
  The return at 0xdba72e4 has v0 = ?.
- `__glOdyim_Vertex3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba73c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba73c0-0xdba73f4 (52 bytes).
  It occupies 52 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdba73e0, `sw` at 0xdba73e4, `sw` at 0xdba73e8.
  The return at 0xdba73ec has v0 = ?.
- `__glOdyim_Vertex4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba75c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba75c0-0xdba7600 (64 bytes).
  It occupies 64 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdba75e8, `sw` at 0xdba75ec, `sw` at 0xdba75f0.
  The return at 0xdba75f8 has v0 = ?.
- `__glOdyim_TexCoord3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbace80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbace80-0xdbaceac (44 bytes).
  It occupies 44 bytes.
  The `sw` at 0xdbace94 stores 4 bytes to abs 0x4000.
  3 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbace9c, `swc1` at 0xdbacea0, `swc1` at 0xdbacea8.
  The return at 0xdbacea4 has v0 = ?.
- `__glOdyim_ScratchColor3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad540 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbad540-0xdbad564 (36 bytes).
  It occupies 36 bytes.
  2 such `sdc1` accesses store 8 bytes to abs 0x4000, including `sdc1` at 0xdbad558, `sdc1` at 0xdbad560.
  The return at 0xdbad55c has v0 = ?.
- `__glOdyim_Color3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad600 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbad600-0xdbad62c (44 bytes).
  It occupies 44 bytes.
  The `sw` at 0xdbad614 stores 4 bytes to abs 0x4000.
  3 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbad61c, `swc1` at 0xdbad620, `swc1` at 0xdbad628.
  The return at 0xdbad624 has v0 = ?.
- `__glOdyim_ScratchColor3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad640 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbad640-0xdbad66c (44 bytes).
  It occupies 44 bytes.
  The `sw` at 0xdbad654 stores 4 bytes to abs 0x4000.
  3 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbad65c, `swc1` at 0xdbad660, `swc1` at 0xdbad668.
  The return at 0xdbad664 has v0 = ?.
- `__glOdyim_ScratchColor3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad840 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbad840-0xdbad864 (36 bytes).
  It occupies 36 bytes.
  2 such `sdc1` accesses store 8 bytes to abs 0x4000, including `sdc1` at 0xdbad858, `sdc1` at 0xdbad860.
  The return at 0xdbad85c has v0 = ?.
- `__glOdyim_ScratchColor3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad940 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbad940-0xdbad964 (36 bytes).
  It occupies 36 bytes.
  2 such `sdc1` accesses store 8 bytes to abs 0x4000, including `sdc1` at 0xdbad958, `sdc1` at 0xdbad960.
  The return at 0xdbad95c has v0 = ?.
- `__glOdyim_ScratchColor3ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadb40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbadb40-0xdbadb64 (36 bytes).
  It occupies 36 bytes.
  2 such `sdc1` accesses store 8 bytes to abs 0x4000, including `sdc1` at 0xdbadb58, `sdc1` at 0xdbadb60.
  The return at 0xdbadb5c has v0 = ?.
- `__glOdyim_ScratchColor3us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadc40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbadc40-0xdbadc64 (36 bytes).
  It occupies 36 bytes.
  2 such `sdc1` accesses store 8 bytes to abs 0x4000, including `sdc1` at 0xdbadc58, `sdc1` at 0xdbadc60.
  The return at 0xdbadc5c has v0 = ?.
- `__glOdyim_ScratchColor4b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadd40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbadd40-0xdbadd68 (40 bytes).
  It occupies 40 bytes.
  The `sdc1` at 0xdbadd54 stores 8 bytes to abs 0x4000.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbadd58, `sw` at 0xdbadd5c, `sw` at 0xdbadd64.
  The return at 0xdbadd60 has v0 = ?.
- `__glOdyim_ScratchColor4dv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadec0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbadec0-0xdbadf00 (64 bytes).
  It occupies 64 bytes.
  The `ldc1` at 0xdbadec0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xdbadec8 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xdbaded0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xdbaded8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0xdbadee0 stores 4 bytes to abs 0x4000.
  4 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbadee8, `swc1` at 0xdbadef0, `swc1` at 0xdbadef4.
  The return at 0xdbadef8 has v0 = ?.
- `__glOdyim_ScratchColor4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae040 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbae040-0xdbae068 (40 bytes).
  It occupies 40 bytes.
  The `sdc1` at 0xdbae054 stores 8 bytes to abs 0x4000.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbae058, `sw` at 0xdbae05c, `sw` at 0xdbae064.
  The return at 0xdbae060 has v0 = ?.
- `__glOdyim_ScratchColor4s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae140 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbae140-0xdbae168 (40 bytes).
  It occupies 40 bytes.
  The `sdc1` at 0xdbae154 stores 8 bytes to abs 0x4000.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbae158, `sw` at 0xdbae15c, `sw` at 0xdbae164.
  The return at 0xdbae160 has v0 = ?.
- `__glOdyim_ScratchColor4ub` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae240 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbae240-0xdbae268 (40 bytes).
  It occupies 40 bytes.
  The `sdc1` at 0xdbae254 stores 8 bytes to abs 0x4000.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbae258, `sw` at 0xdbae25c, `sw` at 0xdbae264.
  The return at 0xdbae260 has v0 = ?.
- `__glOdyim_ScratchColor4ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae340 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbae340-0xdbae368 (40 bytes).
  It occupies 40 bytes.
  The `sdc1` at 0xdbae354 stores 8 bytes to abs 0x4000.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbae358, `sw` at 0xdbae35c, `sw` at 0xdbae364.
  The return at 0xdbae360 has v0 = ?.
- `__glOdyim_ScratchColor4us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae440 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbae440-0xdbae468 (40 bytes).
  It occupies 40 bytes.
  The `sdc1` at 0xdbae454 stores 8 bytes to abs 0x4000.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbae458, `sw` at 0xdbae45c, `sw` at 0xdbae464.
  The return at 0xdbae460 has v0 = ?.
- `__glOdyim_ScratchIndexd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae540 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbae540-0xdbae558 (24 bytes).
  It occupies 24 bytes.
  The `sdc1` at 0xdbae554 stores 8 bytes to abs 0x4000.
  The return at 0xdbae550 has v0 = ?.
- `__glXOpenGraphicsDevice` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd89ccfc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd89ccfc-0xd89ce94 (408 bytes).
  It occupies 408 bytes.
  5 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd89cd20, `lw` at 0xd89cda8, `lw` at 0xd89cdd8.
  The `lw` at 0xd89cd2c loads 4 bytes from ([0x1014] + (a0 << 0x2)) +0x4.
  2 such `lw` accesses load 4 bytes from [0x1014] +0x104, including `lw` at 0xd89cdac, `lw` at 0xd89ce6c.
  The `sw` at 0xd89cdf0 stores 4 bytes to ([0x1014] + (a0 << 0x2)) +0x4.
  The `sw` at 0xd89ce60 stores 4 bytes to [0x1014] +0x104.
  The `jalr` at 0xd89cd58 calls __glXFatal with a0=0x0, a1=0xd8cf760, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd89cd78 calls open with a0=0xd8cf780, a1=0x802, a2=?, a3=?.
  The `jalr` at 0xd89cd98 calls fcntl with a0=ret(open), a1=0x2, a2=0x5, a3=?.
  The `jalr` at 0xd89cdd0 calls __glXFatal with a0=0x0, a1=0xd8cf760, a2=?, a3=[[0x1014]+260].
  The `jalr` at 0xd89ce04 calls __glXFatal with a0=0x0, a1=0xd8cf790, a2=?, a3=?.
  The `jalr` at 0xd89ce20 calls __glXFatal with a0=0x0, a1=0xd8cf7b0, a2=?, a3=?.
  The `jalr` at 0xd89ce3c calls ioctl with a0=ret(open), a1=0x65, a2=0x0, a3=[[0x1014]+260].
  The `jalr` at 0xd89ce80 calls __glXFatal with a0=0x0, a1=0xd8cf7c0, a2=?, a3=?.
  The `beq` branch at 0xd89cd18 targets 0xd89cd48, is taken when a0 >= 0x41 (signed), and falls through when a0 < 0x41 (signed).
  The `bltz` branch at 0xd89cd30 targets 0xd89cd68, is taken when v1(=[([0x1014] + (a0 << 0x2))+4]) < 0 (signed), and falls through when v1(=[([0x1014] + (a0 << 0x2))+4]) >= 0 (signed).
  The `beq` branch at 0xd89cd60 targets 0xd89cd20 and is always taken.
  The `bltz` branch at 0xd89cd84 targets 0xd89cdf4, is taken when v0(=ret(open)) < 0 (signed), and falls through when v0(=ret(open)) >= 0 (signed).
  The `bltz` branch at 0xd89cda0 targets 0xd89ce14, is taken when v0(=ret(fcntl)) < 0 (signed), and falls through when v0(=ret(fcntl)) >= 0 (signed).
  The `bltz` branch at 0xd89cdb0 targets 0xd89ce30, is taken when a3(=[[0x1014]+260]) < 0 (signed), and falls through when a3(=[[0x1014]+260]) >= 0 (signed).
  The `beq` branch at 0xd89cdb8 targets 0xd89cde0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xd89cdec targets 0xd89cd38 and is always taken.
  The `beq` branch at 0xd89ce0c targets 0xd89cd8c and is always taken.
  The `beq` branch at 0xd89ce28 targets 0xd89cda8 and is always taken.
  The `blez` branch at 0xd89ce44 targets 0xd89ce70, is taken when v0(=ret(ioctl)) <= 0 (signed), and falls through when v0(=ret(ioctl)) > 0 (signed).
  The `beq` branch at 0xd89ce68 targets 0xd89cdb4 and is always taken.
  The `beq` branch at 0xd89ce8c targets 0xd89ce4c and is always taken.
  The return at 0xd89cd40 has v0 = ?.
- `glXSelectEventSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b2728 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8b2728-0xd8b2858 (304 bytes).
  It occupies 304 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8b276c, `lw` at 0xd8b27f8.
  The `lw` at 0xd8b2778 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8b2784, `lw` at 0xd8b27b4, `lw` at 0xd8b2844.
  The `lw` at 0xd8b2788 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8b279c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8b27a4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8b27ac, `sb` at 0xd8b27ec.
  The `lw` at 0xd8b27b8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8b27c0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8b27cc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8b27d8 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8b27e0 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd8b27e4 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8b27e8 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8b27f4 stores 4 bytes to [a0+108] +0x14.
  The `lw` at 0xd8b2804 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8b2810 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd8b2750 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8b277c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd8b2808 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x801f, a4=[a0+1232].
  The `jalr` at 0xd8b281c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b2838 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8b2764 targets 0xd8b2848, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8b2770 targets 0xd8b2784, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `bne` branch at 0xd8b2794 targets 0xd8b2838, is taken when at(=[a0+112]) < v0(=[a0+108]+24) (unsigned), and falls through when at(=[a0+112]) >= v0(=[a0+108]+24) (unsigned).
  The `beq` branch at 0xd8b27fc targets 0xd8b2810, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd8b2814 targets 0xd8b2828, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8b2840 targets 0xd8b279c and is always taken.
  The return at 0xd8b2830 has v0 = one of ?, ret(?).
  The return at 0xd8b2850 has v0 = ret(__glXSetupForCommand).
- `__glXGetDrawableAttributes` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b29c8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8b29c8-0xd8b2df4 (1068 bytes).
  It occupies 1068 bytes.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8b2a18, `lw` at 0xd8b2ae0, `lw` at 0xd8b2bc0.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x0, including `lw` at 0xd8b2a24, `lw` at 0xd8b2b30.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8b2a30, `lw` at 0xd8b2a68, `lw` at 0xd8b2b3c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xd8b2a34, `lw` at 0xd8b2b40.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8b2a4c, `sw` at 0xd8b2b58.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xd8b2a54, `sh` at 0xd8b2b60.
  4 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8b2a5c, `sb` at 0xd8b2aa8, `sb` at 0xd8b2b68.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xd8b2a64, `lw` at 0xd8b2b70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xd8b2a70, `sw` at 0xd8b2b7c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xd8b2a78, `sw` at 0xd8b2b84.
  The `sw` at 0xd8b2a84 stores 4 bytes to [a0+108] +0xc.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x4, including `sw` at 0xd8b2a90, `sw` at 0xd8b2b8c.
  2 such `sb` accesses store 1 byte to [a0+108] +0x1, including `sb` at 0xd8b2a9c, `sb` at 0xd8b2b98.
  5 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8b2aec, `lw` at 0xd8b2bcc, `lw` at 0xd8b2cec.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8b2af8, `lw` at 0xd8b2bd8, `lw` at 0xd8b2cf8.
  The `sb` at 0xd8b2c5c stores 1 byte to a2 (arg2 at entry) +0x15.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8b2c70, `lw` at 0xd8b2c90.
  The `lw` at 0xd8b2c9c loads 4 bytes from table(0xd8e0760) +0x0.
  The `sw` at 0xd8b2cac stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `sw` at 0xd8b2cb4 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sb` at 0xd8b2cbc stores 1 byte to a2 (arg2 at entry) +0x14.
  The `sw` at 0xd8b2cc4 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `sw` at 0xd8b2ccc stores 4 bytes to a2 (arg2 at entry) +0xc.
  The `sw` at 0xd8b2cd4 stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `sw` at 0xd8b2cdc stores 4 bytes to a2 (arg2 at entry) +0x18.
  The `jalr` at 0xd8b29f8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8b2a28 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=a3 at entry (arg3).
  The `jalr` at 0xd8b2aa4 calls _XReply with a0=a0 at entry (arg0), a1=sp-192, a2=0x0, a3=0x0, a5=0x11, a6=0x1000a, a7=a1 at entry (arg1).
  The `jalr` at 0xd8b2ac8 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b2af0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b2b04 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b2b34 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=a3 at entry (arg3).
  The `jalr` at 0xd8b2ba0 calls _XReply with a0=a0 at entry (arg0), a1=sp-160, a2=0x0, a3=0x0, a6=0x1d, a7=a1 at entry (arg1).
  The `jalr` at 0xd8b2bd0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b2be4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b2c0c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b2c28 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd8b2c3c calls memset with a0=a2 at entry (arg2), a1=0x0, a2=0x1c, a3=?.
  The `jalr` at 0xd8b2cf0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b2d04 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b2d10 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b2d44 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b2d58 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b2d9c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+108]+8.
  The `jalr` at 0xd8b2dbc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b2dd0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8b2a0c targets 0xd8b2d7c, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8b2a14 targets 0xd8b2b28, is taken when a5(=a3) == 0, and falls through when a5(=a3) != 0.
  The `beq` branch at 0xd8b2a1c targets 0xd8b2a30, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xd8b2a40 targets 0xd8b2c08, is taken when at(=[a0+112]) < v1(=[a0+108]+16) (unsigned), and falls through when at(=[a0+112]) >= v1(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xd8b2aac targets 0xd8b2d34, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xd8b2abc targets 0xd8b2bc0, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0xd8b2ad8 targets 0xd8b2c1c, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd8b2ae4 targets 0xd8b2af8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd8b2afc targets 0xd8b2b10, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8b2b28 targets 0xd8b2b3c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xd8b2b4c targets 0xd8b2d98, is taken when v1(=[a0+112]) < a4(=[a0+108]+8) (unsigned), and falls through when v1(=[a0+112]) >= a4(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xd8b2ba8 targets 0xd8b2dac, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0xd8b2bb8 targets 0xd8b2ac4, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0xd8b2bc4 targets 0xd8b2bd8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd8b2bdc targets 0xd8b2bf0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8b2c14 targets 0xd8b2a44 and is always taken.
  The `blez` branch at 0xd8b2c48 targets 0xd8b2ce0, is taken when s2(?) <= 0 (signed), and falls through when s2(?) > 0 (signed).
  The `beq` branch at 0xd8b2c54 targets 0xd8b2c70 and is always taken.
  The `beq` branch at 0xd8b2c68 targets 0xd8b2ce0, is taken when s2(?) == a2(?), and falls through when s2(?) != a2(?).
  The `beq` branch at 0xd8b2c94 targets 0xd8b2c68, is taken when a1(?) >= 0x1a (unsigned), and falls through when a1(?) < 0x1a (unsigned).
  The `beq` branch at 0xd8b2ca8 targets 0xd8b2c68 and is always taken.
  The `beq` branch at 0xd8b2cb0 targets 0xd8b2c68 and is always taken.
  The `beq` branch at 0xd8b2cb8 targets 0xd8b2c68 and is always taken.
  The `beq` branch at 0xd8b2cc0 targets 0xd8b2c68 and is always taken.
  The `beq` branch at 0xd8b2cc8 targets 0xd8b2c68 and is always taken.
  The `beq` branch at 0xd8b2cd0 targets 0xd8b2c68 and is always taken.
  The `beq` branch at 0xd8b2cd8 targets 0xd8b2c68 and is always taken.
  The `beq` branch at 0xd8b2ce4 targets 0xd8b2cf8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd8b2cfc targets 0xd8b2d0c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8b2d38 targets 0xd8b2d4c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd8b2d50 targets 0xd8b2d64, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8b2da4 targets 0xd8b2b50 and is always taken.
  The `beq` branch at 0xd8b2db0 targets 0xd8b2dc4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd8b2dc8 targets 0xd8b2ddc, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd8b2b20 has v0 = 0x0.
  The return at 0xd8b2c00 has v0 = 0x0.
  The return at 0xd8b2d2c has v0 = 0x1.
  The return at 0xd8b2d74 has v0 = 0x0.
  The return at 0xd8b2d90 has v0 = 0x0.
  The return at 0xd8b2dec has v0 = 0x0.
  The indirect jump at 0xd8b2ca0 uses the jump table at 0xd8e0760 with targets 0xd8b2cb0, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2ca8, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2cb8, 0xd8b2c5c, 0xd8b2cc0, 0xd8b2cc8, 0xd8b2cd0, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2cd8.
  The indirect jump at 0xd8b2ca0 uses the jump table at 0xd8e0760 with targets 0xd8b2cb0, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2ca8, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2cb8, 0xd8b2c5c, 0xd8b2cc0, 0xd8b2cc8, 0xd8b2cd0, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2cd8.
  The indirect jump at 0xd8b2ca0 uses the jump table at 0xd8e0760 with targets 0xd8b2cb0, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2ca8, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2cb8, 0xd8b2c5c, 0xd8b2cc0, 0xd8b2cc8, 0xd8b2cd0, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2cd8.
  The indirect jump at 0xd8b2ca0 uses the jump table at 0xd8e0760 with targets 0xd8b2cb0, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2ca8, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2cb8, 0xd8b2c5c, 0xd8b2cc0, 0xd8b2cc8, 0xd8b2cd0, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2cd8.
  The indirect jump at 0xd8b2ca0 uses the jump table at 0xd8e0760 with targets 0xd8b2cb0, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2ca8, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2cb8, 0xd8b2c5c, 0xd8b2cc0, 0xd8b2cc8, 0xd8b2cd0, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2c68, 0xd8b2cd8.
- `glXDestroyGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b2df4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8b2df4-0xd8b2f54 (352 bytes).
  It occupies 352 bytes.
  The `lw` at 0xd8b2e58 loads 4 bytes from ret(__glXAddDrawableInterest) +0x14.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8b2e6c, `lw` at 0xd8b2ee4.
  The `lw` at 0xd8b2e78 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8b2e84, `lw` at 0xd8b2eb8, `lw` at 0xd8b2f48.
  The `lw` at 0xd8b2e88 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8b2e9c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8b2ea4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8b2eac, `sb` at 0xd8b2ee0.
  The `lw` at 0xd8b2eb4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8b2ec0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8b2ec8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8b2ed0 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8b2ed8 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd8b2edc stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8b2ef0 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8b2efc loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `sw` at 0xd8b2f50 stores 4 bytes to ret(__glXAddDrawableInterest) +0x0.
  The `jalr` at 0xd8b2e1c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8b2e40 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b2e50 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b2e64 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=[ret(__glXAddDrawableInterest)+20].
  The `jalr` at 0xd8b2e7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b2ef4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=0x10008, a3=0x10.
  The `jalr` at 0xd8b2f08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b2f3c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8b2e30 targets 0xd8b2f28, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8b2e5c targets 0xd8b2f4c, is taken when a3(=[ret(__glXAddDrawableInterest)+20]) == 0, and falls through when a3(=[ret(__glXAddDrawableInterest)+20]) != 0.
  The `beq` branch at 0xd8b2e70 targets 0xd8b2e84, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xd8b2e94 targets 0xd8b2f3c, is taken when at(=[a0+112]) < v1(=[a0+108]+16) (unsigned), and falls through when at(=[a0+112]) >= v1(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xd8b2ee8 targets 0xd8b2efc, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd8b2f00 targets 0xd8b2f14, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8b2f44 targets 0xd8b2e9c and is always taken.
  The `beq` branch at 0xd8b2f4c targets 0xd8b2e60 and is always taken.
  The return at 0xd8b2f20 has v0 = one of ?, ret(?).
  The return at 0xd8b2f34 has v0 = ret(__glXSetupForCommand).
- `glXCreateGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b36f4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8b36f4-0xd8b3aa8 (948 bytes).
  It occupies 948 bytes.
  The `lw` at 0xd8b3748 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd8b377c stores 4 bytes to ret(__glXAddDrawableInterest) +0x2c.
  2 such `lw` accesses load 4 bytes from a4 (arg4 at entry) +0x0, including `lw` at 0xd8b3780, `lw` at 0xd8b38d4.
  10 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8b378c, `lw` at 0xd8b379c, `lw` at 0xd8b37ac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8b37f0, `lw` at 0xd8b3960.
  The `lw` at 0xd8b37fc loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8b3808, `lw` at 0xd8b3848, `lw` at 0xd8b39e4.
  The `lw` at 0xd8b3814 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8b382c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8b3838 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8b3840, `sb` at 0xd8b3870.
  The `lw` at 0xd8b3844 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8b3854 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8b3860 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sb` at 0xd8b3868 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8b3880 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8b3888 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd8b388c stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd8b3894 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd8b3898 stores 4 bytes to [a0+108] +0x1c.
  The `sw` at 0xd8b38a0 stores 4 bytes to [a0+108] +0x18.
  The `sw` at 0xd8b38ac stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd8b38b8 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8b38d8 stores 4 bytes to [a0+108] +0x20.
  The `lw` at 0xd8b38e0 loads 4 bytes from a4 (arg4 at entry) +0x4.
  The `sw` at 0xd8b38ec stores 4 bytes to [a0+108] +0x24.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8b3918, `sw` at 0xd8b3920, `sw` at 0xd8b3928.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8b396c, `lw` at 0xd8b39f8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8b3978, `lw` at 0xd8b3a04.
  The `sw` at 0xd8b3a4c stores 4 bytes to ret(__glXAddDrawableInterest) +0x0.
  The `jalr` at 0xd8b3730 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8b374c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b3760 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?, a6=ret(?).
  The `jalr` at 0xd8b3800 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd8b3954 calls _XReply with a0=a0 at entry (arg0), a1=sp-176, a2=0x0, a3=0x0.
  The `jalr` at 0xd8b3970 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd8b3984 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b3990 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b39dc calls _XFlush with a0=a0 at entry (arg0), a1=[a0+108], a2=?, a3=?.
  The `jalr` at 0xd8b39fc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd8b3a10 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b3a28 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=sp-176, a2=0x11, a3=0x0.
  The `jalr` at 0xd8b3a34 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b3a48 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?, a7=ret(__glXAddDrawableInterest).
  The `jalr` at 0xd8b3a80 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x10, a3=0x0.
  The `beq` branch at 0xd8b3740 targets 0xd8b39b8, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8b376c targets 0xd8b3a70, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `beq` branch at 0xd8b3778 targets 0xd8b37f0, is taken when s2(=a4) == 0, and falls through when s2(=a4) != 0.
  The `beq` branch at 0xd8b3784 targets 0xd8b37f0, is taken when a5(=[a4]) == 0, and falls through when a5(=[a4]) != 0.
  The `beq` branch at 0xd8b3794 targets 0xd8b37f0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xd8b37a4 targets 0xd8b37f0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd8b37b4 targets 0xd8b37f0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8b37c4 targets 0xd8b37f0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xd8b37d4 targets 0xd8b37f0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xd8b37e8 targets 0xd8b378c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8b37f4 targets 0xd8b3808, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `bne` branch at 0xd8b3824 targets 0xd8b39d8, is taken when v1(=[a0+112]) < a5(?) (unsigned), and falls through when v1(=[a0+112]) >= a5(?) (unsigned).
  The `beq` branch at 0xd8b38b4 targets 0xd8b3944, is taken when s2(=a4) == 0, and falls through when s2(=a4) != 0.
  The `bne` branch at 0xd8b38bc targets 0xd8b3944, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xd8b38cc targets 0xd8b38f0, is taken when (v0(?) & 0x1) == 0, and falls through when (v0(?) & 0x1) != 0.
  The `beq` branch at 0xd8b38f8 targets 0xd8b3944, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xd8b393c targets 0xd8b3914, is taken when v0(?) != a2(=-0x1), and falls through when v0(?) == a2(=-0x1).
  The `beq` branch at 0xd8b395c targets 0xd8b39f0, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xd8b3964 targets 0xd8b3978, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd8b397c targets 0xd8b398c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8b39e8 targets 0xd8b382c and is always taken.
  The `beq` branch at 0xd8b39f0 targets 0xd8b3a04, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd8b3a08 targets 0xd8b3a18, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd8b39b0 has v0 = ret(?).
  The return at 0xd8b39d0 has v0 = 0x0.
  The return at 0xd8b3a68 has v0 = 0x0.
  The return at 0xd8b3aa0 has v0 = 0x0.
- `glXGetVideoSyncSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b3aa8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8b3aa8-0xd8b3b34 (140 bytes).
  It occupies 140 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd8b3aa8, `lw` at 0xd8b3ae0.
  The `lw` at 0xd8b3aac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8b3acc loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd8b3ad8 loads 4 bytes from [[0x1014]+276] +0xcc.
  The `lw` at 0xd8b3ae4 loads 4 bytes from [0x1014] +0x108.
  The `lw` at 0xd8b3b04 loads 4 bytes from (([[0x1014]+264] << 0x2) + [0x1014]) +0x4.
  The `sw` at 0xd8b3b10 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jalr` at 0xd8b3b00 calls ioctl with a0=[(([[0x1014]+264] << 0x2) + [0x1014])+4], a1=0x3fe, a2=sp-48, a3=a3 at entry (arg3), a4=[[0x1014]+276].
  The `beq` branch at 0xd8b3ac4 targets 0xd8b3b28, is taken when a4(=[[0x1014]+276]) == 0, and falls through when a4(=[[0x1014]+276]) != 0.
  The `beq` branch at 0xd8b3ad0 targets 0xd8b3b28, is taken when at(=[[[0x1014]+276]+196]) == 0, and falls through when at(=[[[0x1014]+276]+196]) != 0.
  The return at 0xd8b3b20 has v0 = 0x0.
  The return at 0xd8b3b2c has v0 = 0x5.
- `glXWaitVideoSyncSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b3b34 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8b3b34-0xd8b3bfc (200 bytes).
  It occupies 200 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd8b3b34, `lw` at 0xd8b3bb4.
  The `lw` at 0xd8b3b40 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8b3b60 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd8b3ba4 loads 4 bytes from [[0x1014]+276] +0xcc.
  The `lw` at 0xd8b3bb8 loads 4 bytes from [0x1014] +0x108.
  The `lw` at 0xd8b3bd8 loads 4 bytes from (([[0x1014]+264] << 0x2) + [0x1014]) +0x4.
  The `sw` at 0xd8b3bf8 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd8b3bd4 calls ioctl with a0=[(([[0x1014]+264] << 0x2) + [0x1014])+4], a1=0x3ff, a2=sp-80, a3=a3 at entry (arg3), a4=a0 at entry (arg0), a5=a1 at entry (arg1), a6=[[0x1014]+276].
  The `beq` branch at 0xd8b3b58 targets 0xd8b3b94, is taken when a6(=[[0x1014]+276]) == 0, and falls through when a6(=[[0x1014]+276]) != 0.
  The `beq` branch at 0xd8b3b64 targets 0xd8b3b94, is taken when at(=[[[0x1014]+276]+196]) == 0, and falls through when at(=[[[0x1014]+276]+196]) != 0.
  The `blez` branch at 0xd8b3b6c targets 0xd8b3b84, is taken when a4(=a0) <= 0 (signed), and falls through when a4(=a0) > 0 (signed).
  The `bltz` branch at 0xd8b3b74 targets 0xd8b3b84, is taken when a5(=a1) < 0 (signed), and falls through when a5(=a1) >= 0 (signed).
  The `bne` branch at 0xd8b3b7c targets 0xd8b3ba4, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The return at 0xd8b3b8c has v0 = 0x6.
  The return at 0xd8b3b9c has v0 = 0x5.
  The return at 0xd8b3bf4 has v0 = 0x0.
- `glXDestroyGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b3bfc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8b3bfc-0xd8b3d50 (340 bytes).
  It occupies 340 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8b3c68, `lw` at 0xd8b3ce4.
  The `lw` at 0xd8b3c74 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8b3c80, `lw` at 0xd8b3cb4, `lw` at 0xd8b3d4c.
  The `lw` at 0xd8b3c84 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8b3c98 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8b3ca0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8b3ca8, `sb` at 0xd8b3cdc.
  The `lw` at 0xd8b3cb0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8b3cbc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8b3cc4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8b3cc8 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8b3cd0 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd8b3cd8 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd8b3ce0 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8b3cf0 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8b3cfc loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd8b3c24 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8b3c44 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b3c54 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b3c60 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b3c78 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b3cf4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+96]+1, a3=[a0+108]+16.
  The `jalr` at 0xd8b3d08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b3d40 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+108]+16.
  The `beq` branch at 0xd8b3c30 targets 0xd8b3d28, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8b3c38 targets 0xd8b3d28, is taken when s1(=a1) == 0, and falls through when s1(=a1) != 0.
  The `beq` branch at 0xd8b3c6c targets 0xd8b3c80, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xd8b3c90 targets 0xd8b3d40, is taken when a2(=[a0+112]) < a3(=[a0+108]+16) (unsigned), and falls through when a2(=[a0+112]) >= a3(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xd8b3ce8 targets 0xd8b3cfc, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd8b3d00 targets 0xd8b3d14, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8b3d48 targets 0xd8b3c98 and is always taken.
  The return at 0xd8b3d20 has v0 = one of ?, ret(?).
  The return at 0xd8b3d38 has v0 = ret(__glXSetupForCommand).
- `glXCreateGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b3e14 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8b3e14-0xd8b41c0 (940 bytes).
  It occupies 940 bytes.
  The `lw` at 0xd8b3ea8 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd8b3f04 stores 4 bytes to ret(__glXAddDrawableInterest) +0x30.
  The `sw` at 0xd8b3f0c stores 4 bytes to ret(__glXAddDrawableInterest) +0x2c.
  The `sb` at 0xd8b3f14 stores 1 byte to ret(__glXAddDrawableInterest) +0x20.
  The `sw` at 0xd8b3f18 stores 4 bytes to ret(__glXAddDrawableInterest) +0xc.
  The `sw` at 0xd8b3f28 stores 4 bytes to ret(__glXAddDrawableInterest) +0x8.
  The `sw` at 0xd8b3f2c stores 4 bytes to ret(__glXAddDrawableInterest) +0x10.
  The `sw` at 0xd8b3f60 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x0.
  The `sw` at 0xd8b3f7c stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x4.
  The `sw` at 0xd8b3f94 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x8.
  The `sw` at 0xd8b3fc0 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0xc.
  The `sw` at 0xd8b3fd4 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x10.
  The `sw` at 0xd8b3fec stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x14.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8b3ff0, `lw` at 0xd8b40ac.
  The `lw` at 0xd8b3ffc loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8b400c, `lw` at 0xd8b4040, `lw` at 0xd8b4150.
  The `lw` at 0xd8b4010 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8b4024 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8b402c, `sb` at 0xd8b4068.
  The `sh` at 0xd8b4034 stores 2 bytes to [a0+108] +0x2.
  The `lw` at 0xd8b403c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8b4048 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8b4054 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8b4058 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd8b405c stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8b4060 stores 4 bytes to [a0+108] +0x8.
  The `sb` at 0xd8b4064 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8b4074 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8b407c stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8b4084 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x4.
  The `sw` at 0xd8b4088 stores 4 bytes to [a0+108] +0x18.
  The `lw` at 0xd8b408c loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x8.
  The `sw` at 0xd8b4090 stores 4 bytes to [a0+108] +0x1c.
  The `lw` at 0xd8b4094 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0xc.
  The `sw` at 0xd8b4098 stores 4 bytes to [a0+108] +0x20.
  The `lw` at 0xd8b409c loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x10.
  The `sw` at 0xd8b40a0 stores 4 bytes to [a0+108] +0x24.
  The `lw` at 0xd8b40a4 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x14.
  The `sw` at 0xd8b40a8 stores 4 bytes to [a0+108] +0x28.
  The `lw` at 0xd8b40b8 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8b40c8 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd8b3e48 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8b3e94 calls __glXInitializeVideoLibrary with a0=?, a1=?, a2=?, a3=?, a7=0x2.
  The `jalr` at 0xd8b3eac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b3ec0 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b3f30 calls __glXCreateVideoSourcePrivate with a0=ret(__glXAddDrawableInterest)+44, a1=0x1, a2=0x3, a3=?.
  The `jalr` at 0xd8b3f5c calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x4, a4=sp-240, a6=ret(__glXCreateVideoSourcePrivate).
  The `jalr` at 0xd8b3f90 calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x6, a4=sp-240.
  The `jalr` at 0xd8b3fbc calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x7, a4=sp-240.
  The `bgezall` at 0xd8b3fdc calls (unnamed) [0xd8b3d50] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b4000 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?, a6=ret(__glXCreateVideoSourcePrivate), a7=a0 at entry (arg0).
  The `jalr` at 0xd8b40bc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?, a6=[ret(__glXCreateVideoSourcePrivate)+20], a7=[ret(__glXCreateVideoSourcePrivate)+16].
  The `jalr` at 0xd8b40d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b40e0 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b411c calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?, a6=ret(__glXCreateVideoSourcePrivate).
  The `jalr` at 0xd8b4140 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0xd8b4158 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=a5 at entry (arg5), a3=?.
  The `jalr` at 0xd8b417c calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=a5 at entry (arg5), a3=?.
  The `jalr` at 0xd8b41a0 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8b3e68 targets 0xd8b3eec, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8b3e70 targets 0xd8b3e94, is taken when s0(=a4) == a7(=0x2), and falls through when s0(=a4) != a7(=0x2).
  The `beq` branch at 0xd8b3e78 targets 0xd8b3e94, is taken when s0(=a4) == at(=0x5), and falls through when s0(=a4) != at(=0x5).
  The `beq` branch at 0xd8b3e9c targets 0xd8b4100, is taken when v0(=ret(__glXInitializeVideoLibrary)) == 0, and falls through when v0(=ret(__glXInitializeVideoLibrary)) != 0.
  The `bne` branch at 0xd8b3ecc targets 0xd8b3f04, is taken when v0(=ret(__glXAddDrawableInterest)) != 0, and falls through when v0(=ret(__glXAddDrawableInterest)) == 0.
  The `beq` branch at 0xd8b3f3c targets 0xd8b4118, is taken when v0(=ret(__glXCreateVideoSourcePrivate)) == 0, and falls through when v0(=ret(__glXCreateVideoSourcePrivate)) != 0.
  The `bltz` branch at 0xd8b3f64 targets 0xd8b4154, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `bltz` branch at 0xd8b3f98 targets 0xd8b4178, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `bltz` branch at 0xd8b3fc4 targets 0xd8b419c, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `beq` branch at 0xd8b3ff4 targets 0xd8b400c, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd8b401c targets 0xd8b413c, is taken when a7(=[a0+112]) < at(=[a0+108]+44) (unsigned), and falls through when a7(=[a0+112]) >= at(=[a0+108]+44) (unsigned).
  The `beq` branch at 0xd8b40b0 targets 0xd8b40c8, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd8b40cc targets 0xd8b40dc, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8b414c targets 0xd8b4020 and is always taken.
  The return at 0xd8b3e88 has v0 = 0x0.
  The return at 0xd8b3ee4 has v0 = 0x0.
  The return at 0xd8b3efc has v0 = 0x0.
  The return at 0xd8b40f8 has v0 = ret(?).
  The return at 0xd8b4110 has v0 = 0x0.
  The return at 0xd8b4134 has v0 = 0x0.
  The return at 0xd8b4170 has v0 = 0x0.
  The return at 0xd8b4194 has v0 = 0x0.
  The return at 0xd8b41b8 has v0 = 0x0.
  The instructions from 0xd8b3e90 to 0xd8b3e90 are not reached by any path from the entry, and their branches are not listed.
- `glXSwapIntervalSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b42f8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8b42f8-0xd8b44cc (468 bytes).
  It occupies 468 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd8b42f8, `lw` at 0xd8b4344.
  The `lw` at 0xd8b4300 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8b432c loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd8b4338 loads 4 bytes from [[0x1014]+276] +0xcc.
  The `lw` at 0xd8b4348 loads 4 bytes from [0x1014] +0x108.
  The `lw` at 0xd8b4368 loads 4 bytes from (([[0x1014]+264] << 0x2) + [0x1014]) +0x4.
  The `lw` at 0xd8b4388 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8b43ac loads 4 bytes from [[0x1014]+276] +0x3c.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8b43c0, `lw` at 0xd8b4440.
  The `lw` at 0xd8b43cc loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8b43e0, `lw` at 0xd8b4414, `lw` at 0xd8b44b0.
  The `lw` at 0xd8b43e4 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd8b43f8 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8b4400, `sb` at 0xd8b4438.
  The `sh` at 0xd8b4408 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  The `lw` at 0xd8b4410 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8b441c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8b4424 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8b4428 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd8b442c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8b4434 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd8b443c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8b444c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd8b4458 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd8b4364 calls ioctl with a0=[(([[0x1014]+264] << 0x2) + [0x1014])+4], a1=0x3ee, a2=sp-80, a3=a3 at entry (arg3), a4=[[0x1014]+276].
  The `jalr` at 0xd8b43b8 calls __glXSetupForCommand with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=[[[0x1014]+276]+60], a3=a3 at entry (arg3), a4=[[0x1014]+276].
  The `jalr` at 0xd8b43d4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8b4450 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=0x10000, a2=[[[[0x1014]+276]+216]+108], a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8b4464 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b4470 calls XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b44a8 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=[[[[0x1014]+276]+216]+108], a3=?.
  The `beq` branch at 0xd8b431c targets 0xd8b4494, is taken when a4(=[[0x1014]+276]) == 0, and falls through when a4(=[[0x1014]+276]) != 0.
  The `blez` branch at 0xd8b4324 targets 0xd8b44bc, is taken when s1(=a0) <= 0 (signed), and falls through when s1(=a0) > 0 (signed).
  The `beq` branch at 0xd8b4330 targets 0xd8b4384, is taken when at(=[[[0x1014]+276]+196]) == 0, and falls through when at(=[[[0x1014]+276]+196]) != 0.
  The `bne` branch at 0xd8b438c targets 0xd8b43a8, is taken when s0(=[[[0x1014]+276]+216]) != 0, and falls through when s0(=[[[0x1014]+276]+216]) == 0.
  The `beq` branch at 0xd8b43c4 targets 0xd8b43e0, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd8b43f0 targets 0xd8b44a4, is taken when at(=[[[[0x1014]+276]+216]+112]) < v0(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when at(=[[[[0x1014]+276]+216]+112]) >= v0(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  The `beq` branch at 0xd8b4444 targets 0xd8b4458, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd8b445c targets 0xd8b446c, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd8b44b4 targets 0xd8b43f8 and is always taken.
  The return at 0xd8b437c has v0 = 0x0.
  The return at 0xd8b43a0 has v0 = 0x5.
  The return at 0xd8b448c has v0 = 0x0.
  The return at 0xd8b449c has v0 = 0x5.
  The return at 0xd8b44c4 has v0 = 0x6.
- `glXCreateGLXPixmapWithConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c7bb8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8c7bb8-0xd8c7d0c (340 bytes).
  It occupies 340 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8c7c00, `lw` at 0xd8c7ca4.
  The `lw` at 0xd8c7c0c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8c7c18, `lw` at 0xd8c7c4c, `lw` at 0xd8c7cf8.
  The `lw` at 0xd8c7c1c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8c7c30 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8c7c38 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8c7c40, `sb` at 0xd8c7c70.
  The `lw` at 0xd8c7c48 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8c7c54 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8c7c60 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8c7c68 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd8c7c6c stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8c7c74 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd8c7c78 stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd8c7c80 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd8c7c84 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd8c7c88 stores 4 bytes to [a0+108] +0x10.
  The `lw` at 0xd8c7c8c loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd8c7ca0 stores 4 bytes to [a0+108] +0x18.
  The `lw` at 0xd8c7cb0 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8c7cbc loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd8c7be0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8c7c10 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd8c7c94 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a1+36], a2=0x10006, a3=0x10, a5=[a0+96]+1, a6=[a0+108]+28, a7=0x7.
  The `jalr` at 0xd8c7cb4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd8c7cc8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c7cec calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8c7bf8 targets 0xd8c7cfc, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8c7c04 targets 0xd8c7c18, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xd8c7c28 targets 0xd8c7ce8, is taken when a4(=[a0+112]) < at(=[a0+108]+28) (unsigned), and falls through when a4(=[a0+112]) >= at(=[a0+108]+28) (unsigned).
  The `beq` branch at 0xd8c7ca8 targets 0xd8c7cbc, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd8c7cc0 targets 0xd8c7cd4, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8c7cf4 targets 0xd8c7c2c and is always taken.
  The return at 0xd8c7ce0 has v0 = ret(?).
  The return at 0xd8c7d04 has v0 = 0x0.
- `glXJoinSwapGroupSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cad24 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cad24-0xd8cae48 (292 bytes).
  It occupies 292 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8cad58, `lw` at 0xd8cade4.
  The `lw` at 0xd8cad68 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8cad80, `lw` at 0xd8cadb4, `lw` at 0xd8cae38.
  The `lw` at 0xd8cad84 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8cad98 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8cada0, `sb` at 0xd8caddc.
  The `sh` at 0xd8cada8 stores 2 bytes to [a0+108] +0x2.
  The `lw` at 0xd8cadb0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cadbc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cadc4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8cadcc stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8cadd4 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd8cadd8 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8cade0 stores 4 bytes to [a0+108] +0x10.
  The `lw` at 0xd8cadf0 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8cae04 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd8cad50 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8cad70 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8cadf8 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=[a0+108], a3=0x1000b.
  The `jalr` at 0xd8cae10 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cae30 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=[a0+108], a3=?.
  The `beq` branch at 0xd8cad60 targets 0xd8cad80, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0.
  The `bne` branch at 0xd8cad90 targets 0xd8cae2c, is taken when v0(=[a0+112]) < v1(=[a0+108]+20) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+20) (unsigned).
  The `beq` branch at 0xd8cade8 targets 0xd8cae04, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cae08 targets 0xd8cae1c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8cae40 targets 0xd8cad98 and is always taken.
  The return at 0xd8cae24 has v0 = one of ?, ret(?).
- `glXBindSwapBarrierSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cae48 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cae48-0xd8caf6c (292 bytes).
  It occupies 292 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8cae7c, `lw` at 0xd8caf08.
  The `lw` at 0xd8cae8c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8caea4, `lw` at 0xd8caed8, `lw` at 0xd8caf5c.
  The `lw` at 0xd8caea8 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8caebc stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8caec4, `sb` at 0xd8caf00.
  The `sh` at 0xd8caecc stores 2 bytes to [a0+108] +0x2.
  The `lw` at 0xd8caed4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8caee0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8caee8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8caef0 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8caef8 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd8caefc stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8caf04 stores 4 bytes to [a0+108] +0x10.
  The `lw` at 0xd8caf14 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8caf28 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd8cae74 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8cae94 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8caf1c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=[a0+108], a3=0x1000c.
  The `jalr` at 0xd8caf34 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8caf54 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=[a0+108], a3=?.
  The `beq` branch at 0xd8cae84 targets 0xd8caea4, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0.
  The `bne` branch at 0xd8caeb4 targets 0xd8caf50, is taken when v0(=[a0+112]) < v1(=[a0+108]+20) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+20) (unsigned).
  The `beq` branch at 0xd8caf0c targets 0xd8caf28, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0.
  The `beq` branch at 0xd8caf2c targets 0xd8caf40, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8caf64 targets 0xd8caebc and is always taken.
  The return at 0xd8caf48 has v0 = one of ?, ret(?).
- `glXQueryMaxSwapBarriersSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8caf6c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8caf6c-0xd8cb0ec (384 bytes).
  It occupies 384 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8cafa0, `lw` at 0xd8cb03c.
  The `lw` at 0xd8cafac loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8cafc0, `lw` at 0xd8caff4, `lw` at 0xd8cb09c.
  The `lw` at 0xd8cafc4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8cafd8 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8cafe0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8cafe8, `sb` at 0xd8cb02c.
  The `lw` at 0xd8caff0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8caffc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cb004 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8cb010 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8cb01c stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd8cb024 stores 1 byte to [a0+108] +0x1.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8cb048, `lw` at 0xd8cb0b0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8cb054, `lw` at 0xd8cb0bc.
  The `sw` at 0xd8cb078 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd8caf98 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8cafb4 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8cb030 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a4=0x4, a6=[a0+108], a7=0x10.
  The `jalr` at 0xd8cb04c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8cb060 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cb094 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+108].
  The `jalr` at 0xd8cb0b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8cb0c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8cafa4 targets 0xd8cafc0, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0.
  The `bne` branch at 0xd8cafd0 targets 0xd8cb090, is taken when v0(=[a0+112]) < v1(=[a0+108]+16) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xd8cb038 targets 0xd8cb0a8, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xd8cb040 targets 0xd8cb054, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cb058 targets 0xd8cb068, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8cb0a0 targets 0xd8cafd8 and is always taken.
  The `beq` branch at 0xd8cb0a8 targets 0xd8cb0bc, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cb0c0 targets 0xd8cb0d4, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd8cb088 has v0 = 0x1.
  The return at 0xd8cb0e4 has v0 = 0x0.
- `glXQueryHyperpipeNetworkSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cb918 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cb918-0xd8cbba0 (648 bytes).
  It occupies 648 bytes.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xd8cb94c, `sw` at 0xd8cb9f4, `sw` at 0xd8cba50.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8cb950, `lw` at 0xd8cba14, `lw` at 0xd8cbaa0.
  The `lw` at 0xd8cb95c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8cb968, `lw` at 0xd8cb99c, `lw` at 0xd8cbb50.
  The `lw` at 0xd8cb96c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8cb980 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8cb988 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8cb990, `sb` at 0xd8cb9c4.
  The `lw` at 0xd8cb998 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cb9a4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cb9b0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8cb9b8 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd8cb9c0 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8cb9d4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd8cb9e0 stores 4 bytes to [a0+108] +0xc.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8cba20, `lw` at 0xd8cbaac, `lw` at 0xd8cbb08.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8cba2c, `lw` at 0xd8cbab8, `lw` at 0xd8cbb14.
  The `jalr` at 0xd8cb944 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8cb960 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8cb9dc calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a4=[a0+132], a5=0x1000e, a6=0x11, a7=[a0+96]+1.
  The `jalr` at 0xd8cba0c calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cba24 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8cba38 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cba7c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cba98 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cbab0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8cbac4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cbaf4 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd8cbb0c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8cbb20 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cbb44 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+108]+16.
  The `jalr` at 0xd8cbb64 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8cbb78 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8cb954 targets 0xd8cb968, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd8cb978 targets 0xd8cbb44, is taken when v1(=[a0+112]) < a3(=[a0+108]+16) (unsigned), and falls through when v1(=[a0+112]) >= a3(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xd8cb9e4 targets 0xd8cbb54, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `blez` branch at 0xd8cb9f8 targets 0xd8cba04, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bne` branch at 0xd8cba00 targets 0xd8cba60, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8cba18 targets 0xd8cba2c, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cba30 targets 0xd8cba40, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `bne` branch at 0xd8cba88 targets 0xd8cbaec, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd8cbaa4 targets 0xd8cbab8, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cbabc targets 0xd8cbacc, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8cbb00 targets 0xd8cbb14, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cbb18 targets 0xd8cbb2c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8cbb4c targets 0xd8cb980 and is always taken.
  The `beq` branch at 0xd8cbb58 targets 0xd8cbb6c, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cbb70 targets 0xd8cbb80, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd8cba58 has v0 = 0x0.
  The return at 0xd8cbae4 has v0 = 0x0.
  The return at 0xd8cbb3c has v0 = ret(malloc).
  The return at 0xd8cbb98 has v0 = 0x0.
- `glXHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cbba0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cbba0-0xd8cbecc (812 bytes).
  It occupies 812 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8cbc08, `lw` at 0xd8cbd80, `lw` at 0xd8cbdf0.
  The `lw` at 0xd8cbc14 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8cbc3c, `lw` at 0xd8cbc7c, `lw` at 0xd8cbe4c.
  The `lw` at 0xd8cbc48 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8cbc60 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8cbc6c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8cbc74, `sb` at 0xd8cbca8.
  The `lw` at 0xd8cbc78 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cbc84 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cbc94 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8cbc9c stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd8cbca4 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8cbcb0 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd8cbcbc stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd8cbcc8 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8cbcd4 stores 4 bytes to [a0+108] +0xc.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd8cbce4, `lbu` at 0xd8cbd10, `lbu` at 0xd8cbd18.
  5 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8cbcf0, `sb` at 0xd8cbd14, `sb` at 0xd8cbd1c.
  The `sw` at 0xd8cbd68 stores 4 bytes to a4 (arg4 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8cbd8c, `lw` at 0xd8cbdfc, `lw` at 0xd8cbe64.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8cbd98, `lw` at 0xd8cbe08, `lw` at 0xd8cbe70.
  The `jalr` at 0xd8cbbdc calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8cbc1c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8cbd50 calls _XReply with a0=a0 at entry (arg0), a1=sp-160, a2=0x0, a3=0x0.
  The `jalr` at 0xd8cbd90 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?, a5=a4 at entry (arg4).
  The `jalr` at 0xd8cbda4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cbe00 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?, a5=a4 at entry (arg4).
  The `jalr` at 0xd8cbe14 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cbe44 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cbe68 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8cbe7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0xd8cbbe8 targets 0xd8cbdd0, is taken when s1(=a2) <= 0 (signed), and falls through when s1(=a2) > 0 (signed).
  The `beq` branch at 0xd8cbbf0 targets 0xd8cbdd0, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0xd8cbbf8 targets 0xd8cbdd0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bltz` branch at 0xd8cbc00 targets 0xd8cbea8, is taken when s3(=a1) < 0 (signed), and falls through when s3(=a1) >= 0 (signed).
  The `beq` branch at 0xd8cbc0c targets 0xd8cbc2c, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0.
  The `bne` branch at 0xd8cbc58 targets 0xd8cbe40, is taken when v1(=[a0+112]) < a5(?) (unsigned), and falls through when v1(=[a0+112]) >= a5(?) (unsigned).
  The `beq` branch at 0xd8cbcd0 targets 0xd8cbcf4, is taken when (s4(?) & 0x3) == 0, and falls through when (s4(?) & 0x3) != 0.
  The `bne` branch at 0xd8cbcec targets 0xd8cbcd8, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xd8cbcfc targets 0xd8cbd40, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xd8cbd38 targets 0xd8cbd10, is taken when a1(?) != s4(?), and falls through when a1(?) == s4(?).
  The `beq` branch at 0xd8cbd58 targets 0xd8cbe58, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0xd8cbd70 targets 0xd8cbdf0, is taken when s1(=a2) != v1(?), and falls through when s1(=a2) == v1(?).
  The `bltz` branch at 0xd8cbd78 targets 0xd8cbdf0, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `beq` branch at 0xd8cbd84 targets 0xd8cbd98, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cbd9c targets 0xd8cbdac, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8cbdf4 targets 0xd8cbe08, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cbe0c targets 0xd8cbe1c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8cbe50 targets 0xd8cbc60 and is always taken.
  The `beq` branch at 0xd8cbe5c targets 0xd8cbe70, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cbe74 targets 0xd8cbe84, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd8cbdc8 has v0 = 0x0.
  The return at 0xd8cbde8 has v0 = 0x5b.
  The return at 0xd8cbe38 has v0 = 0x5b.
  The return at 0xd8cbea0 has v0 = 0x5b.
  The return at 0xd8cbec4 has v0 = 0x5b.
- `glXDestroyHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cbecc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cbecc-0xd8cc044 (376 bytes).
  It occupies 376 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8cbefc, `lw` at 0xd8cbfa0.
  The `lw` at 0xd8cbf08 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8cbf1c, `lw` at 0xd8cbf4c, `lw` at 0xd8cbff4.
  The `lw` at 0xd8cbf20 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8cbf34 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8cbf3c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8cbf44, `sb` at 0xd8cbf6c.
  The `lw` at 0xd8cbf48 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cbf54 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cbf60 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8cbf68 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd8cbf74 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8cbf80 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd8cbf8c stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8cbf98 stores 4 bytes to [a0+108] +0xc.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8cbfac, `lw` at 0xd8cc008.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8cbfb8, `lw` at 0xd8cc014.
  The `jalr` at 0xd8cbef4 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8cbf10 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8cbf94 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+132], a5=0x10011, a6=0x11, a7=[a0+96]+1.
  The `jalr` at 0xd8cbfb0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8cbfc4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cbfec calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=[a0+108]+32, a3=?.
  The `jalr` at 0xd8cc00c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8cc020 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8cbf00 targets 0xd8cbf1c, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0.
  The `bne` branch at 0xd8cbf2c targets 0xd8cbfe8, is taken when v1(=[a0+112]) < a2(=[a0+108]+32) (unsigned), and falls through when v1(=[a0+112]) >= a2(=[a0+108]+32) (unsigned).
  The `beq` branch at 0xd8cbf9c targets 0xd8cc000, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xd8cbfa4 targets 0xd8cbfb8, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cbfbc targets 0xd8cbfd0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8cbff8 targets 0xd8cbf34 and is always taken.
  The `beq` branch at 0xd8cc000 targets 0xd8cc014, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cc018 targets 0xd8cc02c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd8cbfe0 has v0 = ?.
  The return at 0xd8cc03c has v0 = 0x5c.
- `glXQueryHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cc044 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cc044-0xd8cc2c8 (644 bytes).
  It occupies 644 bytes.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd8cc078, `sw` at 0xd8cc134, `sw` at 0xd8cc138.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8cc07c, `lw` at 0xd8cc13c, `lw` at 0xd8cc1c0.
  The `lw` at 0xd8cc088 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8cc09c, `lw` at 0xd8cc0d0, `lw` at 0xd8cc270.
  The `lw` at 0xd8cc0a0 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8cc0b4 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8cc0bc stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8cc0c4, `sb` at 0xd8cc0e4.
  The `lw` at 0xd8cc0cc loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cc0d8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cc0e0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sb` at 0xd8cc0ec stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8cc0f8 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8cc104 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd8cc110 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8cc11c stores 4 bytes to [a0+108] +0xc.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8cc148, `lw` at 0xd8cc1cc, `lw` at 0xd8cc228.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8cc154, `lw` at 0xd8cc1d8, `lw` at 0xd8cc234.
  The `jalr` at 0xd8cc070 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8cc090 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8cc118 calls _XReply with a0=a0 at entry (arg0), a1=sp-128, a2=0x0, a3=0x0, a4=[a0+132], a5=a1 at entry (arg1), a6=0x1000f, a7=0x11.
  The `jalr` at 0xd8cc14c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8cc160 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc19c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc1b4 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc1d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8cc1e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc214 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd8cc22c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8cc240 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc268 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+108]+32.
  The `jalr` at 0xd8cc290 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8cc2a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8cc080 targets 0xd8cc09c, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd8cc0ac targets 0xd8cc264, is taken when v1(=[a0+112]) < a3(=[a0+108]+32) (unsigned), and falls through when v1(=[a0+112]) >= a3(=[a0+108]+32) (unsigned).
  The `beq` branch at 0xd8cc120 targets 0xd8cc27c, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bgtz` branch at 0xd8cc130 targets 0xd8cc184, is taken when at(?) > 0 (signed), and falls through when at(?) <= 0 (signed).
  The `beq` branch at 0xd8cc140 targets 0xd8cc154, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cc158 targets 0xd8cc16c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `bne` branch at 0xd8cc1a4 targets 0xd8cc208, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd8cc1c4 targets 0xd8cc1d8, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cc1dc targets 0xd8cc1f0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8cc220 targets 0xd8cc234, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cc238 targets 0xd8cc24c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8cc274 targets 0xd8cc0b4 and is always taken.
  The `beq` branch at 0xd8cc284 targets 0xd8cc298, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cc29c targets 0xd8cc2b0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd8cc17c has v0 = 0x0.
  The return at 0xd8cc200 has v0 = 0x0.
  The return at 0xd8cc25c has v0 = ret(malloc).
  The return at 0xd8cc2c0 has v0 = 0x0.
- `__glOdylc_Color3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda50eb0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda50eb0-0xda50fc4 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0xda50eb4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda50ebc loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda50ec8 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda50ecc, `lw` at 0xda50f40.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda50ed4, `lw` at 0xda50f8c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda50ee0, `lw` at 0xda50fac.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda50f64, `sw` at 0xda50f68, `sw` at 0xda50f70.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda50f80, `sw` at 0xda50fc0.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda50f88, `sw` at 0xda50fa4.
  The `sw` at 0xda50fa0 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda50f18 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50efc targets 0xda50f50, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda50f38 targets 0xda50fa4, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda50f9c has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda50fbc has v0 = ret(__glSPDlistSpace).
- `__glOdylc_Color3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51790 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda51790-0xda518a4 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0xda51794 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda5179c loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda517a8 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda517ac, `lw` at 0xda51820.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda517b4, `lw` at 0xda5186c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda517c0, `lw` at 0xda5188c.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda51844, `sw` at 0xda51848, `sw` at 0xda51850.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda51860, `sw` at 0xda518a0.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda51868, `sw` at 0xda51884.
  The `sw` at 0xda51880 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda517f8 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda517dc targets 0xda51830, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda51818 targets 0xda51884, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda5187c has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda5189c has v0 = ret(__glSPDlistSpace).
- `__glOdylc_Color3ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51bf0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda51bf0-0xda51d04 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0xda51bf4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda51bfc loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda51c08 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda51c0c, `lw` at 0xda51c80.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda51c14, `lw` at 0xda51ccc.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda51c20, `lw` at 0xda51cec.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda51ca4, `sw` at 0xda51ca8, `sw` at 0xda51cb0.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda51cc0, `sw` at 0xda51d00.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda51cc8, `sw` at 0xda51ce4.
  The `sw` at 0xda51ce0 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda51c58 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51c3c targets 0xda51c90, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda51c78 targets 0xda51ce4, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda51cdc has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda51cfc has v0 = ret(__glSPDlistSpace).
- `__glOdylc_Color3us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51e20 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda51e20-0xda51f34 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0xda51e24 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda51e2c loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda51e38 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda51e3c, `lw` at 0xda51eb0.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda51e44, `lw` at 0xda51efc.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda51e50, `lw` at 0xda51f1c.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda51ed4, `sw` at 0xda51ed8, `sw` at 0xda51ee0.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda51ef0, `sw` at 0xda51f30.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda51ef8, `sw` at 0xda51f14.
  The `sw` at 0xda51f10 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda51e88 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51e6c targets 0xda51ec0, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda51ea8 targets 0xda51f14, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda51f0c has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda51f2c has v0 = ret(__glSPDlistSpace).
- `__glOdylc_Color4b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52050 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda52050-0xda52170 (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0xda52054 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda5205c loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda52068 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda5206c, `lw` at 0xda520e8.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda52074, `lw` at 0xda52138.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda52080, `lw` at 0xda52158.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda5210c, `sw` at 0xda52110, `sw` at 0xda52114.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda5212c, `sw` at 0xda5216c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda52134, `sw` at 0xda52150.
  The `sw` at 0xda5214c stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda520bc calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5209c targets 0xda520f8, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda520e0 targets 0xda52150, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda52148 has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda52168 has v0 = ret(__glSPDlistSpace).
- `__glOdylc_Color4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52750 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda52750-0xda52870 (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0xda52754 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda5275c loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda52768 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda5276c, `lw` at 0xda527e8.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda52774, `lw` at 0xda52838.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda52780, `lw` at 0xda52858.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda5280c, `sw` at 0xda52810, `sw` at 0xda52814.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda5282c, `sw` at 0xda5286c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda52834, `sw` at 0xda52850.
  The `sw` at 0xda5284c stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda527bc calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5279c targets 0xda527f8, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda527e0 targets 0xda52850, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda52848 has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda52868 has v0 = ret(__glSPDlistSpace).
- `__glOdylc_Color4s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52990 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda52990-0xda52ab0 (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0xda52994 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda5299c loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda529a8 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda529ac, `lw` at 0xda52a28.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda529b4, `lw` at 0xda52a78.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda529c0, `lw` at 0xda52a98.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda52a4c, `sw` at 0xda52a50, `sw` at 0xda52a54.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda52a6c, `sw` at 0xda52aac.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda52a74, `sw` at 0xda52a90.
  The `sw` at 0xda52a8c stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda529fc calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda529dc targets 0xda52a38, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda52a20 targets 0xda52a90, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda52a88 has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda52aa8 has v0 = ret(__glSPDlistSpace).
- `__glOdylc_Color4ub` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52bd0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda52bd0-0xda52cf0 (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0xda52bd4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda52bdc loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda52be8 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda52bec, `lw` at 0xda52c68.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda52bf4, `lw` at 0xda52cb8.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda52c00, `lw` at 0xda52cd8.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda52c8c, `sw` at 0xda52c90, `sw` at 0xda52c94.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda52cac, `sw` at 0xda52cec.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda52cb4, `sw` at 0xda52cd0.
  The `sw` at 0xda52ccc stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda52c3c calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52c1c targets 0xda52c78, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda52c60 targets 0xda52cd0, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda52cc8 has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda52ce8 has v0 = ret(__glSPDlistSpace).
- `__glOdylc_Color4ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52e10 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda52e10-0xda52f30 (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0xda52e14 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda52e1c loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda52e28 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda52e2c, `lw` at 0xda52ea8.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda52e34, `lw` at 0xda52ef8.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda52e40, `lw` at 0xda52f18.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda52ecc, `sw` at 0xda52ed0, `sw` at 0xda52ed4.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda52eec, `sw` at 0xda52f2c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda52ef4, `sw` at 0xda52f10.
  The `sw` at 0xda52f0c stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda52e7c calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52e5c targets 0xda52eb8, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda52ea0 targets 0xda52f10, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda52f08 has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda52f28 has v0 = ret(__glSPDlistSpace).
- `__glOdylc_Color4us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53050 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda53050-0xda53170 (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0xda53054 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda5305c loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda53068 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda5306c, `lw` at 0xda530e8.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda53074, `lw` at 0xda53138.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda53080, `lw` at 0xda53158.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda5310c, `sw` at 0xda53110, `sw` at 0xda53114.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda5312c, `sw` at 0xda5316c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda53134, `sw` at 0xda53150.
  The `sw` at 0xda5314c stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda530bc calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5309c targets 0xda530f8, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda530e0 targets 0xda53150, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda53148 has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda53168 has v0 = ret(__glSPDlistSpace).
- `__glOdyim_Clear` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda54070 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda54070-0xda54674 (1540 bytes).
  It occupies 1540 bytes.
  The `lw` at 0xda54074 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda5408c loads 4 bytes from abs 0x1010.
  The `lw` at 0xda540c4 loads 4 bytes from [0x1010] +0x2d60.
  5 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda540d0, `sw` at 0xda54228, `sw` at 0xda54340.
  The `lw` at 0xda5411c loads 4 bytes from [0x1010] +0xc7c.
  The `lbu` at 0xda54140 loads 1 byte from [0x1010] +0xc90.
  The `lw` at 0xda5414c loads 4 bytes from [0x1010] +0x7a44.
  The `lbu` at 0xda54178 loads 1 byte from [0x1010] +0x16658.
  The `lw` at 0xda54194 loads 4 bytes from [0x1010] +0x16650.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7b40, including `lw` at 0xda54198, `lw` at 0xda541f4, `lw` at 0xda545c0.
  The `lw` at 0xda541a0 loads 4 bytes from [0x1010] +0x16654.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7b44, including `lw` at 0xda541a4, `lw` at 0xda541fc, `lw` at 0xda545dc.
  The `sw` at 0xda541b0 stores 4 bytes to [0x1010] +0x7b40.
  The `sw` at 0xda541b4 stores 4 bytes to [0x1010] +0x7b44.
  The `lw` at 0xda541b8 loads 4 bytes from [0x1010] +0x9750.
  The `sw` at 0xda541c4 stores 4 bytes to [0x1010] +0x9750.
  7 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xda541cc, `sw` at 0xda541d8, `sw` at 0xda541e0.
  The `lw` at 0xda54204 loads 4 bytes from [0x1010] +0x7a90.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda54218, `lw` at 0xda54330, `lw` at 0xda54358.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda54220, `sw` at 0xda54338, `sw` at 0xda54364.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7b1c, including `lw` at 0xda54234, `lw` at 0xda54348.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7b7c, including `lw` at 0xda54238, `lw` at 0xda54278.
  The `lbu` at 0xda5424c loads 1 byte from [0x1010] +0xc8c.
  The `lwc1` at 0xda54258 loads 4 bytes from [0x1010] +0x744.
  The `lwc1` at 0xda54260 loads 4 bytes from [0x1010] +0x748.
  The `lwc1` at 0xda54268 loads 4 bytes from [0x1010] +0x74c.
  The `lwc1` at 0xda54270 loads 4 bytes from [0x1010] +0x750.
  2 such `lbu` accesses load 1 byte from [0x1010] +0xc91, including `lbu` at 0xda5427c, `lbu` at 0xda54634.
  The `lbu` at 0xda54290 loads 1 byte from [0x1010] +0x664.
  2 such `lbu` accesses load 1 byte from [0x1010] +0xc92, including `lbu` at 0xda542a8, `lbu` at 0xda54650.
  The `lh` at 0xda542c0 loads 2 bytes from [0x1010] +0x68a.
  4 such `sw` accesses store 4 bytes to [0x1010] +0x7b7c, including `sw` at 0xda5432c, `sw` at 0xda543dc, `sw` at 0xda54570.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b1c, including `sw` at 0xda54354, `sw` at 0xda543d8.
  The `ldc1` at 0xda5436c loads 8 bytes from [0x1010] +0x668.
  The `lw` at 0xda54378 loads 4 bytes from [0x1010] +0xcdc.
  The `lbu` at 0xda54388 loads 1 byte from [0x1010] +0x7a94.
  2 such `lw` accesses load 4 bytes from [0x1010] +0xe70, including `lw` at 0xda543a4, `lw` at 0xda544bc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0xe6c, including `lw` at 0xda543b0, `lw` at 0xda544c4.
  2 such `lh` accesses load 2 bytes from [0x1010] +0x684, including `lh` at 0xda543bc, `lh` at 0xda544cc.
  The `lw` at 0xda54454 loads 4 bytes from [0x1010] +0x760.
  The `lwc1` at 0xda5452c loads 4 bytes from [0x1010] +0x754.
  The `lbu` at 0xda54664 loads 1 byte from [0x1010] +0xc8f.
  The `jalr` at 0xda540a8 calls __glSetError [0xdb11f10] with a0=0x502, a1=[0x1018], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda540c8 calls (unknown callee) with a0=[0x1010], a1=[0x1018], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda540f8 calls __glSetError [0xdb11f10] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xda54158 calls (unknown callee) with a0=[0x1010]+31192, a1=0x10000, a2=?, a3=?, a5=[[0x1010]+3196].
  The `jalr` at 0xda54370 calls __glOdysseyWindowToNormalizedEyeZ [0xdac7ad0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=one of 0x0, 0x1, a6=0x2.
  The `bgezall` at 0xda543c8 calls __glOdysseyClear [0xda54680] with a0=[0x1010], a1=sp-144, a2=?, a3=[[0x1010]+1668]:2, a4=0x0, a5=0x0, a6=[[0x1010]+3692], a7=[[0x1010]+3696].
  The `jalr` at 0xda544b4 calls __glOdysseySetDrawbuf [0xdabd510] with a0=[0x1010], a1=0x0, a2=0x0, a3=one of 0x0, 0x1.
  The `bgezall` at 0xda544fc calls __glOdysseyClear [0xda54680] with a0=[0x1010], a1=sp-144, a2=?, a3=[[0x1010]+1668]:2, a4=0x0, a5=0x0, a6=[[0x1010]+3692], a7=[[0x1010]+3696]; fp f15=0x41fffff800000000.
  The `jalr` at 0xda54518 calls __glOdysseySetDrawbuf [0xdabd510] with a0=[0x1010], a1=?, a2=?, a3=0x0, a4=0x0.
  The `jalr` at 0xda54614 calls __glOdysseyIoctl [0xdabc870] with a0=[0x1010], a1=0x6f64000d, a2=sp-160, a3=?, a5=[[0x1010]+31552].
  The `beq` branch at 0xda54090 targets 0xda540dc, is taken when a1(=[0x1018]) == 0, and falls through when a1(=[0x1018]) != 0.
  The `beq` branch at 0xda5409c targets 0xda540c4, is taken when a1(=[0x1018]) == v0(=0x2), and falls through when a1(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda540e8 targets 0xda54114, is taken when (a0 & v1(=-0x4701)) == 0, and falls through when (a0 & v1(=-0x4701)) != 0.
  The `beq` branch at 0xda54114 targets 0xda54128, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xda54120 targets 0xda54138, is taken when a5(=[[0x1010]+3196]) == at(=0x1c00), and falls through when a5(=[[0x1010]+3196]) != at(=0x1c00).
  The `beq` branch at 0xda54138 targets 0xda54174, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xda54144 targets 0xda54174, is taken when v1(=[[0x1010]+3216]:1) == 0, and falls through when v1(=[[0x1010]+3216]:1) != 0.
  The `beq` branch at 0xda54168 targets 0xda54588, is taken when (a0 & 0x4500) == 0, and falls through when (a0 & 0x4500) != 0.
  The `beq` branch at 0xda5417c targets 0xda54194, is taken when at(=[[0x1010]+91736]:1) == 0, and falls through when at(=[[0x1010]+91736]:1) != 0.
  The `bne` branch at 0xda5419c targets 0xda541b0, is taken when a2(=[[0x1010]+31552]) != a3(=[[0x1010]+91728]), and falls through when a2(=[[0x1010]+31552]) == a3(=[[0x1010]+91728]).
  The `beq` branch at 0xda541a8 targets 0xda5422c, is taken when a5(=[[0x1010]+31556]) == a2(=[[0x1010]+91732]), and falls through when a5(=[[0x1010]+31556]) != a2(=[[0x1010]+91732]).
  The `beq` branch at 0xda541bc targets 0xda541e8, is taken when at(=[[0x1010]+38736]) == 0, and falls through when at(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda54210 targets 0xda545b0, is taken when (at(=[[0x1010]+31376]) & v0(=0x100000)) == 0, and falls through when (at(=[[0x1010]+31376]) & v0(=0x100000)) != 0.
  The `beq` branch at 0xda54244 targets 0xda54544, is taken when (a0 & 0x4000) == 0, and falls through when (a0 & 0x4000) != 0.
  The `beq` branch at 0xda54250 targets 0xda5452c, is taken when v1(=[[0x1010]+3212]:1) == 0, and falls through when v1(=[[0x1010]+3212]:1) != 0.
  The `beq` branch at 0xda54280 targets 0xda542a4, is taken when t0(=[[0x1010]+3217]:1) == 0, and falls through when t0(=[[0x1010]+3217]:1) != 0.
  The `beq` branch at 0xda54288 targets 0xda542a8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xda54294 targets 0xda542a8, is taken when at(=[[0x1010]+1636]:1) == 0, and falls through when at(=[[0x1010]+1636]:1) != 0.
  The `beq` branch at 0xda5429c targets 0xda542a8 and is always taken.
  The `beq` branch at 0xda542ac targets 0xda5440c, is taken when t1(=[[0x1010]+3218]:1) == 0, and falls through when t1(=[[0x1010]+3218]:1) != 0.
  The `beq` branch at 0xda542b8 targets 0xda5440c, is taken when (a0 & 0x400) == 0, and falls through when (a0 & 0x400) != 0.
  The `beq` branch at 0xda542c4 targets 0xda54414, is taken when t0(=[[0x1010]+3217]:1) == 0, and falls through when t0(=[[0x1010]+3217]:1) != 0.
  The `beq` branch at 0xda5437c targets 0xda54428, is taken when v0(=[[0x1010]+3292]) == 0, and falls through when v0(=[[0x1010]+3292]) != 0.
  The `beq` branch at 0xda5438c targets 0xda54454, is taken when v1(=[[0x1010]+31380]:1) == 0, and falls through when v1(=[[0x1010]+31380]:1) != 0.
  The `beq` branch at 0xda5440c targets 0xda542c4 and is always taken.
  The `beq` branch at 0xda54420 targets 0xda542e8 and is always taken.
  The `beq` branch at 0xda5442c targets 0xda54384, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xda54438 targets 0xda54634, is taken when (v1(=a0) & 0x100) == 0, and falls through when (v1(=a0) & 0x100) != 0.
  The `beq` branch at 0xda54444 targets 0xda54650, is taken when (a5(=a0) & 0x400) == 0, and falls through when (a5(=a0) & 0x400) != 0.
  The `beq` branch at 0xda5444c targets 0xda54388 and is always taken.
  The `beq` branch at 0xda54460 targets 0xda5462c, is taken when a3(=[[0x1010]+1888]) == at(=0x406), and falls through when a3(=[[0x1010]+1888]) != at(=0x406).
  The `beq` branch at 0xda5446c targets 0xda54648, is taken when a3(=[[0x1010]+1888]) == v0(=0x407), and falls through when a3(=[[0x1010]+1888]) != v0(=0x407).
  The `beq` branch at 0xda54474 targets 0xda54664, is taken when a3(=[[0x1010]+1888]) == v1(=0x408), and falls through when a3(=[[0x1010]+1888]) != v1(=0x408).
  The `bne` branch at 0xda5447c targets 0xda54490, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xda54488 targets 0xda54598, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xda54524 targets 0xda543a4 and is always taken.
  The `beq` branch at 0xda5453c targets 0xda54278 and is always taken.
  The `beq` branch at 0xda54580 targets 0xda5427c and is always taken.
  The `beq` branch at 0xda545a8 targets 0xda543a4 and is always taken.
  The `beq` branch at 0xda54624 targets 0xda54218 and is always taken.
  The `beq` branch at 0xda5462c targets 0xda5447c and is always taken.
  The `bne` branch at 0xda54638 targets 0xda54388, is taken when a5(=[[0x1010]+3217]:1) != 0, and falls through when a5(=[[0x1010]+3217]:1) == 0.
  The `beq` branch at 0xda54640 targets 0xda54440 and is always taken.
  The `beq` branch at 0xda54648 targets 0xda5447c and is always taken.
  The `bne` branch at 0xda54654 targets 0xda54388, is taken when at(=[[0x1010]+3218]:1) != 0, and falls through when at(=[[0x1010]+3218]:1) == 0.
  The `beq` branch at 0xda5465c targets 0xda5444c and is always taken.
  The `beq` branch at 0xda5466c targets 0xda5447c and is always taken.
  The return at 0xda540bc has v0 = ret(__glSetError).
  The return at 0xda5410c has v0 = ret(__glSetError).
  The return at 0xda54130 has v0 = ?.
  The return at 0xda5418c has v0 = ?.
  The return at 0xda54404 has v0 = ret(__glOdysseyClear).
  The return at 0xda54590 has v0 = ret(?).
- `__glOdysseyClear` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda54680 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda54680-0xda54da8 (1832 bytes).
  It occupies 1832 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7b1c, including `lw` at 0xda546a4, `lw` at 0xda547f8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7b20, including `lw` at 0xda546b4, `lw` at 0xda54748.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x95c4, including `lw` at 0xda546dc, `lw` at 0xda5491c.
  5 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7b1c, including `sw` at 0xda5470c, `sw` at 0xda54718, `sw` at 0xda54724.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7b50, including `lw` at 0xda54728, `lw` at 0xda54828, `lw` at 0xda548d0.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x168d0, including `lw` at 0xda5472c, `lw` at 0xda54798, `lw` at 0xda549d8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7b4c, including `lw` at 0xda54730, `lw` at 0xda547dc, `lw` at 0xda54914.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x168d0, including `sw` at 0xda54738, `sw` at 0xda547a8, `sw` at 0xda549ec.
  4 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda54740, `sw` at 0xda547b4, `sw` at 0xda549f0.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7b20, including `sw` at 0xda5477c, `sw` at 0xda54790, `sw` at 0xda54b54.
  The `lw` at 0xda547c8 loads 4 bytes from a0 (arg0 at entry) +0x7b7c.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7b4c, including `sw` at 0xda5483c, `sw` at 0xda5485c, `sw` at 0xda54b40.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7b50, including `sw` at 0xda54848, `sw` at 0xda54b44.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9750, including `lw` at 0xda54874, `lw` at 0xda548d8, `lw` at 0xda54a18.
  8 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x9750, including `sw` at 0xda548a0, `sw` at 0xda548ec, `sw` at 0xda54a30.
  44 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xda548a8, `sw` at 0xda548b4, `sw` at 0xda548bc.
  The `lw` at 0xda54920 loads 4 bytes from a0 (arg0 at entry) +0x7a90.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x95c4, including `sw` at 0xda549e4, `sw` at 0xda54b3c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7b24, including `lw` at 0xda549f4, `lw` at 0xda54a54, `lw` at 0xda54bc0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7b24, including `sw` at 0xda54a14, `sw` at 0xda54b48.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lwc1` at 0xda54af0, `lwc1` at 0xda54cd4.
  20 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xda54af4, `swc1` at 0xda54afc, `swc1` at 0xda54b04.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lwc1` at 0xda54af8, `lwc1` at 0xda54cdc.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lwc1` at 0xda54b00, `lwc1` at 0xda54ce4.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lwc1` at 0xda54b08, `lwc1` at 0xda54cec.
  The `bgezall` at 0xda54a6c calls __glOdysseyValidateHardware [0xda57700] with a0=a0 at entry (arg0), a1=[a0+38340], a2=0x10415, a3=one of 0x0, 0x1, a5=-0x100.
  The `beq` branch at 0xda54894 targets 0xda548c4, is taken when at(=[a0+38736]) == 0, and falls through when at(=[a0+38736]) != 0.
  The `beq` branch at 0xda548e0 targets 0xda54910, is taken when a2(=[a0+38736]) == 0, and falls through when a2(=[a0+38736]) != 0.
  The `beq` branch at 0xda54938 targets 0xda54c78, is taken when (v0(?) & 0x1) == 0, and falls through when (v0(?) & 0x1) != 0.
  The `beq` branch at 0xda54940 targets 0xda54c64, is taken when t1(?) == a2(=0xfff), and falls through when t1(?) != a2(=0xfff).
  The `beq` branch at 0xda54948 targets 0xda54c64, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xda54958 targets 0xda54d5c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda54964 targets 0xda54d20, is taken when t0(?) == v0(=0xff), and falls through when t0(?) != v0(=0xff).
  The `beq` branch at 0xda5496c targets 0xda54d4c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xda54974 targets 0xda54d30, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xda54990 targets 0xda54d44, is taken when (a0(=[a0+31376]) & 0x40) == 0, and falls through when (a0(=[a0+31376]) & 0x40) != 0.
  The `beq` branch at 0xda54998 targets 0xda54c70, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0xda549a0 targets 0xda54c70, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xda54a28 targets 0xda54a48, is taken when a2(=[a0+38736]) == 0, and falls through when a2(=[a0+38736]) != 0.
  The `beq` branch at 0xda54a60 targets 0xda54a7c, is taken when v0(=[a0+92368]) == 0, and falls through when v0(=[a0+92368]) != 0.
  The `beq` branch at 0xda54ad0 targets 0xda54cbc, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0xda54b80 targets 0xda54bb4, is taken when v0(=[a0+38736]) == 0, and falls through when v0(=[a0+38736]) != 0.
  The `beq` branch at 0xda54bcc targets 0xda54c00, is taken when at(=[a0+38736]) == 0, and falls through when at(=[a0+38736]) != 0.
  The `beq` branch at 0xda54c24 targets 0xda54c48, is taken when v1(=[a0+38736]) == 0, and falls through when v1(=[a0+38736]) != 0.
  The `beq` branch at 0xda54c68 targets 0xda54958 and is always taken.
  The `beq` branch at 0xda54c70 targets 0xda549a8 and is always taken.
  The `bne` branch at 0xda54c80 targets 0xda54cac, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `bne` branch at 0xda54c8c targets 0xda54cac, is taken when a2(?) != at(?), and falls through when a2(?) == at(?).
  The `bne` branch at 0xda54c98 targets 0xda54cac, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0xda54ca4 targets 0xda54cb4 and is always taken.
  The `beq` branch at 0xda54cb4 targets 0xda54960 and is always taken.
  The `beq` branch at 0xda54d18 targets 0xda54b34 and is always taken.
  The `beq` branch at 0xda54d20 targets 0xda5496c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda54d28 targets 0xda54974 and is always taken.
  The `bne` branch at 0xda54d34 targets 0xda54980, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xda54d3c targets 0xda54980 and is always taken.
  The `beq` branch at 0xda54d44 targets 0xda549ac and is always taken.
  The `bne` branch at 0xda54d4c targets 0xda54974, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0xda54d54 targets 0xda54d28 and is always taken.
  The `beq` branch at 0xda54d68 targets 0xda54d78, is taken when (at(?) & 0x7) == 0, and falls through when (at(?) & 0x7) != 0.
  The `beq` branch at 0xda54d70 targets 0xda54960 and is always taken.
  The `beq` branch at 0xda54d78 targets 0xda54d98, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xda54d80 targets 0xda54d70, is taken when t2(=0x2) != a3(?), and falls through when t2(=0x2) == a3(?).
  The `beq` branch at 0xda54d88 targets 0xda54964, is taken when a4(?) == v0(=0x4), and falls through when a4(?) != v0(=0x4).
  The `beq` branch at 0xda54d90 targets 0xda54d70 and is always taken.
  The `beq` branch at 0xda54d98 targets 0xda54964, is taken when v1(=0x1) == a4(?), and falls through when v1(=0x1) != a4(?).
  The `beq` branch at 0xda54da0 targets 0xda54d80 and is always taken.
  The return at 0xda54c5c has v0 = one of 0x10000, 0x10046.
- `__glOdysseyFindWindowSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda55150 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda55150-0xda55298 (328 bytes).
  It occupies 328 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe6c, including `lw` at 0xda55154, `lw` at 0xda551d0, `lw` at 0xda55268.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe70, including `lw` at 0xda5515c, `lw` at 0xda551dc, `lw` at 0xda55274.
  The `lw` at 0xda55174 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lwc1` at 0xda551a8 loads 4 bytes from a0 (arg0 at entry) +0x19cb4.
  The `swc1` at 0xda551b4 stores 4 bytes to a0 (arg0 at entry) +0x19cac.
  The `swc1` at 0xda551c8 stores 4 bytes to a0 (arg0 at entry) +0x19cb0.
  The `lw` at 0xda551f0 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0xda55208 loads 4 bytes from a0 (arg0 at entry) +0xe74.
  The `lw` at 0xda55214 loads 4 bytes from a0 (arg0 at entry) +0xe78.
  The `lw` at 0xda55238 loads 4 bytes from a0 (arg0 at entry) +0x168f0.
  The `lw` at 0xda55244 loads 4 bytes from a0 (arg0 at entry) +0x6a4.
  The `lw` at 0xda55250 loads 4 bytes from a0 (arg0 at entry) +0x6a0.
  The `lbu` at 0xda55254 loads 1 byte from a0 (arg0 at entry) +0xc90.
  The `sb` at 0xda55288 stores 1 byte to ?.
  The `jalr` at 0xda55190 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-72, a2=sp-68, a3=sp-80, a4=sp-76.
  The `jalr` at 0xda551e8 calls __glChangeWindowSize [0xdb12190] with a0=a0 at entry (arg0), a1=?, a2=?, a3=a0+131072.
  The `jalr` at 0xda551fc calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-64, a2=sp-60, a3=?.
  The `jalr` at 0xda55224 calls __glChangeReadWindowSize [0xdb12290] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda5524c calls __glChangeWindowSize [0xdb12190] with a0=a0 at entry (arg0), a1=[a0+1696], a2=[a0+1700], a3=?.
  The `bne` branch at 0xda551d4 targets 0xda551e4, is taken when a2(=[a0+3692]) != a1(?), and falls through when a2(=[a0+3692]) == a1(?).
  The `beq` branch at 0xda551e0 targets 0xda551f0, is taken when v0(=[a0+3696]) == a2(?), and falls through when v0(=[a0+3696]) != a2(?).
  The `bne` branch at 0xda5520c targets 0xda55220, is taken when v1(=[a0+3700]) != a1(?), and falls through when v1(=[a0+3700]) == a1(?).
  The `beq` branch at 0xda55218 targets 0xda55230, is taken when a3(=[a0+3704]) == a2(?), and falls through when a3(=[a0+3704]) != a2(?).
  The `beq` branch at 0xda5523c targets 0xda55254, is taken when at(=[a0+92400]) == 0, and falls through when at(=[a0+92400]) != 0.
  The `beq` branch at 0xda55260 targets 0xda5528c, is taken when v0(=[a0+3216]:1) == 0, and falls through when v0(=[a0+3216]:1) != 0.
  The `bne` branch at 0xda5526c targets 0xda55280, is taken when v1(=[a0+3692]) != a3(?), and falls through when v1(=[a0+3692]) == a3(?).
  The `beq` branch at 0xda55278 targets 0xda55290, is taken when at(=[a0+3696]) == v0(?), and falls through when at(=[a0+3696]) != v0(?).
  The return at 0xda55290 has v0 = ?.
- `__glOdysseyImageMovePixelsCopy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda9b990 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda9b990-0xda9d978 (8168 bytes).
  It occupies 8168 bytes.
  The `lw` at 0xda9b9fc loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xda9ba24 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda9ba50 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lwc1` at 0xda9ba74 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `lwc1` at 0xda9ba9c loads 4 bytes from a2 (arg2 at entry) +0x1c.
  The `lwc1` at 0xda9bac0 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda9bad0 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0xda9bae0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda9baf0 loads 4 bytes from a2 (arg2 at entry) +0xc.
  6 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x8, including `lbu` at 0xda9bb00, `lbu` at 0xda9bb8c, `lbu` at 0xda9bca0.
  The `lw` at 0xda9bb14 loads 4 bytes from [0x1010] +0xa5f8.
  The `lbu` at 0xda9bb38 loads 1 byte from a1 (arg1 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0xda9bb58, `lw` at 0xda9c8e4.
  The `lw` at 0xda9bb60 loads 4 bytes from a1 (arg1 at entry) +0x30.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x28, including `lw` at 0xda9bb64, `lw` at 0xda9bc94.
  The `lw` at 0xda9bbf8 loads 4 bytes from [0x1010] +0x169d0.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x9, including `lbu` at 0xda9bc10, `lbu` at 0xda9bdc8.
  The `lw` at 0xda9bc34 loads 4 bytes from [0x1010] +0x4d4.
  The `lw` at 0xda9bc88 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lw` at 0xda9bcac loads 4 bytes from [0x1010] +0x760.
  The `lw` at 0xda9bd04 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0xda9bd10 loads 4 bytes from a0 (arg0 at entry) +0x28.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0xda9bd20, `lw` at 0xda9bd44, `lw` at 0xda9c674.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0xda9bd2c, `lw` at 0xda9c67c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0xda9bd48, `lw` at 0xda9c694.
  The `lw` at 0xda9bd5c loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lw` at 0xda9bd64 loads 4 bytes from (([a1+16] << 0x2) + sp-704) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xda9bd70, `lw` at 0xda9c6a0.
  The `lw` at 0xda9bd98 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0xda9be78 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xda9bee4 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lw` at 0xda9bf18 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0xda9bfe0 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0xda9c058 loads 4 bytes from [0x1010] +0x95c8.
  The `lw` at 0xda9c05c loads 4 bytes from [0x1010] +0x95c4.
  The `lw` at 0xda9c060 loads 4 bytes from [0x1010] +0x95c0.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x95bc, including `lw` at 0xda9c064, `lw` at 0xda9c1f0.
  The `lw` at 0xda9c068 loads 4 bytes from [0x1010] +0x9628.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x9624, including `lw` at 0xda9c06c, `lw` at 0xda9c1d8.
  The `lw` at 0xda9c070 loads 4 bytes from [0x1010] +0x7b58.
  The `lw` at 0xda9c074 loads 4 bytes from [0x1010] +0x7b54.
  The `lw` at 0xda9c078 loads 4 bytes from [0x1010] +0x7b1c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x95d0, including `lw` at 0xda9c07c, `lw` at 0xda9c164.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x95d4, including `lw` at 0xda9c080, `lw` at 0xda9c170.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x95d8, including `lw` at 0xda9c084, `lw` at 0xda9c17c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x95dc, including `lw` at 0xda9c088, `lw` at 0xda9c188.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x95cc, including `lw` at 0xda9c090, `lw` at 0xda9c0c0, `lw` at 0xda9c158.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x9750, including `lw` at 0xda9c098, `lw` at 0xda9c488, `lw` at 0xda9d19c.
  The `lw` at 0xda9c0c4 loads 4 bytes from [0x1010] +0x7b5c.
  The `lw` at 0xda9c0d4 loads 4 bytes from [0x1010] +0x7b7c.
  The `sw` at 0xda9c0e4 stores 4 bytes to [0x1010] +0x95cc.
  4 such `sw` accesses store 4 bytes to [0x1010] +0x9750, including `sw` at 0xda9c114, `sw` at 0xda9c190, `sw` at 0xda9c494.
  67 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xda9c118, `sw` at 0xda9c11c, `sw` at 0xda9c120.
  The `sw` at 0xda9c1c0 stores 4 bytes to [0x1010] +0x9624.
  5 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xda9c1e8, `lw` at 0xda9c348, `lw` at 0xda9c3d4.
  4 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xda9c208, `sw` at 0xda9c350, `sw` at 0xda9c3dc.
  The `sw` at 0xda9c218 stores 4 bytes to [0x1010] +0x95bc.
  8 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda9c220, `sw` at 0xda9c354, `sw` at 0xda9c3e0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0xda9c224, `lw` at 0xda9c8f8.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xa, including `lbu` at 0xda9c320, `lbu` at 0xda9c7e4, `lbu` at 0xda9c904.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x11bc0, including `lw` at 0xda9c340, `lw` at 0xda9c910.
  The `sw` at 0xda9c344 stores 4 bytes to [0x1010] +0x7b7c.
  5 such `lw` accesses load 4 bytes from [0x1010] +0x7b40, including `lw` at 0xda9c368, `lw` at 0xda9d178, `lw` at 0xda9d1cc.
  5 such `lw` accesses load 4 bytes from [0x1010] +0x7b44, including `lw` at 0xda9c39c, `lw` at 0xda9d188, `lw` at 0xda9d1d4.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b40, including `sw` at 0xda9c3c0, `sw` at 0xda9d194.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b44, including `sw` at 0xda9c3d0, `sw` at 0xda9d198.
  The `lw` at 0xda9c400 loads 4 bytes from [0x1010] +0xa118.
  The `sw` at 0xda9c404 stores 4 bytes to [0x1010] +0x9614.
  The `sw` at 0xda9c410 stores 4 bytes to [0x1010] +0xa118.
  The `lw` at 0xda9c4c8 loads 4 bytes from [0x1010] +0xa5fc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7a90, including `lw` at 0xda9c4dc, `lw` at 0xda9d1dc.
  The `lw` at 0xda9c520 loads 4 bytes from [0x1010] +0x21de4.
  11 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda9c638, `lw` at 0xda9c6d4, `lw` at 0xda9c728.
  29 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda9c644, `sw` at 0xda9c66c, `sw` at 0xda9c6bc.
  The `lw` at 0xda9c8f4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda9c914 loads 4 bytes from [0x1010] +0x11c94.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x16650, including `lw` at 0xda9d17c, `lw` at 0xda9d204.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x16654, including `lw` at 0xda9d184, `lw` at 0xda9d200.
  The `lw` at 0xda9d1f0 loads 4 bytes from [0x1010] +0x168d4.
  The `sw` at 0xda9d1f8 stores 4 bytes to [0x1010] +0x168d4.
  The `lbu` at 0xda9d284 loads 1 byte from [0x1010] +0xc91.
  The `lw` at 0xda9d2ac loads 4 bytes from [0x1010] +0x700.
  The `jalr` at 0xda9ba04 calls memset with a0=sp-808, a1=0x0, a2=0x20, a3=a3 at entry (arg3).
  The `jalr` at 0xda9ba1c calls memset with a0=sp-776, a1=0x0, a2=0x1c, a3=?.
  The `jalr` at 0xda9ba3c calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9ba60 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9ba88 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9baac calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda9bb78 calls (unnamed) [0xdaa0f30] with a0=[a1+48], a1=[a0+48], a2=sp-776, a3=?.
  The `bgezall` at 0xda9bc90 calls (unnamed) [0xdaa2ab0] with a0=[a1+40], a1=[a1+44], a2=one of 0x0, 0x1, a3=0x0, a4=sp-832, a5=sp-828.
  The `bgezall` at 0xda9bd0c calls (unnamed) [0xdaa2ab0] with a0=[a0+40], a1=[a0+44], a2=one of 0x0, 0x1, a3=0x0, a4=sp-824, a5=sp-820.
  The `jalr` at 0xda9bd30 calls __glOdysseyOpenPMObjReference [0xdaaa8c0] with a0=[0x1010], a1=[a1+12], a2=[a1+16], a3=[a1+16], a4=sp-704, a5=0x0.
  The `jalr` at 0xda9bd78 calls __glOdysseyOpenPMObjWriteReference [0xdaaab50] with a0=[0x1010], a1=[a0+12], a2=[a0+16], a3=sp-816.
  The `bgezall` at 0xda9c1e0 calls __glOdysseyImageCalcPixelModeFields [0xdaa2fe0] with a0=[0x1010]+38332, a1=a0 at entry (arg0), a2=?, a3=0x13c00, a4=[[0x1010]+38436], a5=[[0x1010]+38364], a6=[[0x1010]+38360], a7=[[0x1010]+38356].
  The `jalr` at 0xda9c3f8 calls __glOdysseyValidateHardware [0xda57700] with a0=[0x1010], a1=?, a2=?, a3=[[0x1010]+31552], a4=0x2, a5=([[0x1010]+92368] | 0x10).
  The `jalr` at 0xda9c42c calls __glSetError [0xdb11f10] with a0=0x502, a1=[a1+4], a2=0x1, a3=?, a4=0x2.
  The `bgezall` at 0xda9c604 calls (unnamed) [0xda9b600] with a0=sp-808, a1=sp-504, a2=sp-488, a3=?, a6=0x1.
  The `jalr` at 0xda9c680 calls __glOdysseyClosePMObjReference [0xdaaaf20] with a0=?, a1=[a1+12], a2=[a1+16], a3=[a1+16].
  The `jalr` at 0xda9c69c calls __glOdysseyClosePMObjWriteReference [0xdaaadc0] with a0=?, a1=[a0+12], a2=[a0+16], a3=?.
  The `jalr` at 0xda9cca4 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda9ce44 calls (unnamed) [0xda9b600] with a0=sp-808, a1=sp-504, a2=sp-488, a3=?, a6=0x1.
  The `bgezall` at 0xda9cef4 calls (unnamed) [0xda9b600] with a0=sp-808, a1=sp-504, a2=sp-488, a3=?, a6=0x1.
  The `bgezall` at 0xda9d044 calls (unnamed) [0xda9b600] with a0=sp-808, a1=sp-520, a2=sp-536, a3=?, a6=0x1.
  The `bgezall` at 0xda9d0e4 calls (unnamed) [0xda9b600] with a0=sp-808, a1=sp-504, a2=sp-488, a3=?, a6=0x1.
  The `jalr` at 0xda9d144 calls __glSetError [0xdb11f10] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9d2bc calls __glOdysseyImageCalcOdyEyeSpaceRasterPosZ [0xdaa5ab0] with a0=[[0x1010]+91732], a1=[[0x1010]+91728], a2=[[0x1010]+3217]:1, a3=?, a4=0x2.
  The `bgezall` at 0xda9d2e4 calls (unnamed) [0xdaa3df0] with a0=?, a1=[0x1010]+31516, a2=[0x1010]+31572, a3=[0x1010]+31576, a4=[0x1010]+31580, a5=[0x1010]+31612.
  The `jalr` at 0xda9d320 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9d360 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda9d3b4 calls (unnamed) [0xda9b600] with a0=sp-808, a1=sp-728, a2=sp-744, a3=?, a6=0x0.
  The `bgezall` at 0xda9d544 calls (unnamed) [0xda9b600] with a0=sp-808, a1=sp-520, a2=sp-536, a3=?, a6=0x1.
  The `bgezall` at 0xda9d708 calls (unnamed) [0xda9b600] with a0=sp-808, a1=sp-520, a2=sp-536, a3=?, a6=0x1.
  The `jalr` at 0xda9d790 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda9d880 calls (unnamed) [0xda9b600] with a0=sp-808, a1=sp-520, a2=sp-536, a3=?, a6=0x1.
  The `jalr` at 0xda9d968 calls __glOdysseyIoctl [0xdabc870] with a0=[0x1010], a1=0x6f64000d, a2=sp-568, a3=?.
  The `beq` branch at 0xda9bb04 targets 0xda9bb58, is taken when v1(=[a0+8]:1) == 0, and falls through when v1(=[a0+8]:1) != 0.
  The `beq` branch at 0xda9bb1c targets 0xda9bb58, is taken when (a2(=[[0x1010]+42488]) & 0x1000) == 0, and falls through when (a2(=[[0x1010]+42488]) & 0x1000) != 0.
  The `beq` branch at 0xda9bb40 targets 0xda9bb58, is taken when a3(=[a1+8]:1) == 0, and falls through when a3(=[a1+8]:1) != 0.
  The `beq` branch at 0xda9bb84 targets 0xda9d144, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda9bb90 targets 0xda9c8e4, is taken when v0(=[a0+8]:1) == 0, and falls through when v0(=[a0+8]:1) != 0.
  The `bne` branch at 0xda9bbac targets 0xda9bbc8, is taken when a5(?) < v1(?) (signed), and falls through when a5(?) >= v1(?) (signed).
  The `bne` branch at 0xda9bbb8 targets 0xda9bbcc, is taken when a3(?) < a5(?) (signed), and falls through when a3(?) >= a5(?) (signed).
  The `beq` branch at 0xda9bbc0 targets 0xda9bbcc and is always taken.
  The `bne` branch at 0xda9bbd8 targets 0xda9bbf4, is taken when a6(?) < at(?) (signed), and falls through when a6(?) >= at(?) (signed).
  The `bne` branch at 0xda9bbe4 targets 0xda9bbf8, is taken when v0(?) < a6(?) (signed), and falls through when v0(?) >= a6(?) (signed).
  The `beq` branch at 0xda9bbec targets 0xda9bbf8 and is always taken.
  The `beq` branch at 0xda9bc2c targets 0xda9c928, is taken when v1(=[a1+9]:1) == 0, and falls through when v1(=[a1+9]:1) != 0.
  The `beq` branch at 0xda9bc40 targets 0xda9bc5c, is taken when a0(=[[0x1010]+1236]) == v0(=0x405), and falls through when a0(=[[0x1010]+1236]) != v0(=0x405).
  The `beq` branch at 0xda9bc4c targets 0xda9bc5c, is taken when a0(=[[0x1010]+1236]) == v1(=0x402), and falls through when a0(=[[0x1010]+1236]) != v1(=0x402).
  The `bne` branch at 0xda9bc54 targets 0xda9bc64, is taken when a0(=[[0x1010]+1236]) != a3(=0x403), and falls through when a0(=[[0x1010]+1236]) == a3(=0x403).
  The `beq` branch at 0xda9bc64 targets 0xda9c460, is taken when a0(=[[0x1010]+1236]) == at(=0x407), and falls through when a0(=[[0x1010]+1236]) != at(=0x407).
  The `beq` branch at 0xda9bc6c targets 0xda9c460, is taken when a0(=[[0x1010]+1236]) == v0(=0x401), and falls through when a0(=[[0x1010]+1236]) != v0(=0x401).
  The `beq` branch at 0xda9bc74 targets 0xda9c460, is taken when a0(=[[0x1010]+1236]) == v1(=0x403), and falls through when a0(=[[0x1010]+1236]) != v1(=0x403).
  The `beq` branch at 0xda9bc98 targets 0xda9cc68, is taken when v0(=ret(0xdaa2ab0)) == 0, and falls through when v0(=ret(0xdaa2ab0)) != 0.
  The `beq` branch at 0xda9bca4 targets 0xda9c934, is taken when at(=[a0+8]:1) == 0, and falls through when at(=[a0+8]:1) != 0.
  The `beq` branch at 0xda9bcb8 targets 0xda9bcd4, is taken when a1(=[[0x1010]+1888]) == v0(=0x405), and falls through when a1(=[[0x1010]+1888]) != v0(=0x405).
  The `beq` branch at 0xda9bcc4 targets 0xda9bcd4, is taken when a1(=[[0x1010]+1888]) == v1(=0x402), and falls through when a1(=[[0x1010]+1888]) != v1(=0x402).
  The `bne` branch at 0xda9bccc targets 0xda9bcdc, is taken when a1(=[[0x1010]+1888]) != a3(=0x403), and falls through when a1(=[[0x1010]+1888]) == a3(=0x403).
  The `beq` branch at 0xda9bcdc targets 0xda9c468, is taken when a1(=[[0x1010]+1888]) == at(=0x407), and falls through when a1(=[[0x1010]+1888]) != at(=0x407).
  The `beq` branch at 0xda9bce4 targets 0xda9c468, is taken when a1(=[[0x1010]+1888]) == v0(=0x401), and falls through when a1(=[[0x1010]+1888]) != v0(=0x401).
  The `beq` branch at 0xda9bcec targets 0xda9c468, is taken when a1(=[[0x1010]+1888]) == v1(=0x403), and falls through when a1(=[[0x1010]+1888]) != v1(=0x403).
  The `beq` branch at 0xda9bd14 targets 0xda9c8b0, is taken when v0(=ret(0xdaa2ab0)) == 0, and falls through when v0(=ret(0xdaa2ab0)) != 0.
  The `beq` branch at 0xda9bd3c targets 0xda9cc9c, is taken when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) != 0.
  The `beq` branch at 0xda9bd84 targets 0xda9d354, is taken when (v0(=ret(__glOdysseyOpenPMObjWriteReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyOpenPMObjWriteReference)) & 0xff) != 0.
  The `beq` branch at 0xda9c050 targets 0xda9c474, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0xda9c0e0 targets 0xda9c128, is taken when at(=[[0x1010]+38736]) == 0, and falls through when at(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda9c228 targets 0xda9c940, is taken when a1(=[a1+4]) == 0, and falls through when a1(=[a1+4]) != 0.
  The `beq` branch at 0xda9c234 targets 0xda9c9b8, is taken when a1(=[a1+4]) == a2(=0x1), and falls through when a1(=[a1+4]) != a2(=0x1).
  The `beq` branch at 0xda9c23c targets 0xda9ca28, is taken when a1(=[a1+4]) == 0, and falls through when a1(=[a1+4]) != 0.
  The `beq` branch at 0xda9c244 targets 0xda9ca9c, is taken when a1(=[a1+4]) == a2(=0x1), and falls through when a1(=[a1+4]) != a2(=0x1).
  The `beq` branch at 0xda9c24c targets 0xda9cb0c, is taken when a1(=[a1+4]) == 0, and falls through when a1(=[a1+4]) != 0.
  The `beq` branch at 0xda9c254 targets 0xda9cb80, is taken when a1(=[a1+4]) == a2(=0x1), and falls through when a1(=[a1+4]) != a2(=0x1).
  The `beq` branch at 0xda9c25c targets 0xda9cbf0, is taken when a1(=[a1+4]) == 0, and falls through when a1(=[a1+4]) != 0.
  The `bne` branch at 0xda9c264 targets 0xda9c424, is taken when a1(=[a1+4]) != a2(=0x1), and falls through when a1(=[a1+4]) == a2(=0x1).
  The `bne` branch at 0xda9c26c targets 0xda9c420, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xda9c274 targets 0xda9c424, is taken when a2(=0x1) != a3(?), and falls through when a2(=0x1) == a3(?).
  The `beq` branch at 0xda9c2e0 targets 0xda9c2f4, is taken when a3(=[a0+8]:1) == 0, and falls through when a3(=[a0+8]:1) != 0.
  The `beq` branch at 0xda9c2ec targets 0xda9d178, is taken when at(=a4) == v0(=0x1), and falls through when at(=a4) != v0(=0x1).
  The `beq` branch at 0xda9c338 targets 0xda9c358, is taken when v1(=[a0+10]:1) == 0, and falls through when v1(=[a0+10]:1) != 0.
  The `beq` branch at 0xda9c3ec targets 0xda9c400, is taken when v0(=[[0x1010]+92368]) == 0, and falls through when v0(=[[0x1010]+92368]) != 0.
  The `beq` branch at 0xda9c418 targets 0xda9c480 and is always taken.
  The `beq` branch at 0xda9c460 targets 0xda9bc78 and is always taken.
  The `beq` branch at 0xda9c46c targets 0xda9bcf4 and is always taken.
  The `beq` branch at 0xda9c480 targets 0xda9c4d0, is taken when s8(=one of 0x0, 0x1) == 0, and falls through when s8(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xda9c48c targets 0xda9c4b8, is taken when a3(=[[0x1010]+38736]) == 0, and falls through when a3(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda9c4d0 targets 0xda9d394, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0xda9c50c targets 0xda9ccd8, is taken when (v1(=[[0x1010]+31376]) & 0x2) == 0, and falls through when (v1(=[[0x1010]+31376]) & 0x2) != 0.
  The `beq` branch at 0xda9c568 targets 0xda9cdc8, is taken when s7(?) == t3(=0x3), and falls through when s7(?) != t3(=0x3).
  The `beq` branch at 0xda9c574 targets 0xda9ce70, is taken when s7(?) == at(=0x2), and falls through when s7(?) != at(=0x2).
  The `beq` branch at 0xda9c57c targets 0xda9d06c, is taken when s7(?) == v0(=0x1), and falls through when s7(?) != v0(=0x1).
  The `blez` branch at 0xda9c598 targets 0xda9c62c, is taken when s8(?) <= 0 (signed), and falls through when s8(?) > 0 (signed).
  The `bne` branch at 0xda9c620 targets 0xda9c5c0, is taken when s8(?) != s4(?), and falls through when s8(?) == s4(?).
  The `beq` branch at 0xda9c68c targets 0xda9d318, is taken when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) != 0.
  The `beq` branch at 0xda9c6a8 targets 0xda9d78c, is taken when (v0(=ret(__glOdysseyClosePMObjWriteReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyClosePMObjWriteReference)) & 0xff) != 0.
  The `beq` branch at 0xda9c6b0 targets 0xda9c804, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0xda9c6f4 targets 0xda9c710, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xda9c7cc targets 0xda9c7e4, is taken when at(=[a0+8]:1) == 0, and falls through when at(=[a0+8]:1) != 0.
  The `beq` branch at 0xda9c7dc targets 0xda9d110, is taken when a3(=a4) == at(=0x1), and falls through when a3(=a4) != at(=0x1).
  The `beq` branch at 0xda9c7e8 targets 0xda9c804, is taken when v0(=[a0+10]:1) == 0, and falls through when v0(=[a0+10]:1) != 0.
  The `beq` branch at 0xda9c804 targets 0xda9c884, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0xda9c820 targets 0xda9c83c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda9c8ec targets 0xda9cc60, is taken when v1(=[a0+48]) != a3(?), and falls through when v1(=[a0+48]) == a3(?).
  The `bne` branch at 0xda9c8fc targets 0xda9cdc0, is taken when at(=[a0+4]) != v0(=[a1+4]), and falls through when at(=[a0+4]) == v0(=[a1+4]).
  The `beq` branch at 0xda9c908 targets 0xda9bba0, is taken when v1(=[a0+10]:1) == 0, and falls through when v1(=[a0+10]:1) != 0.
  The `beq` branch at 0xda9c918 targets 0xda9bba4, is taken when a3(=[[0x1010]+72640]) == at(=[[0x1010]+72852]), and falls through when a3(=[[0x1010]+72640]) != at(=[[0x1010]+72852]).
  The `beq` branch at 0xda9c920 targets 0xda9bba0 and is always taken.
  The `beq` branch at 0xda9c92c targets 0xda9bc78 and is always taken.
  The `beq` branch at 0xda9c938 targets 0xda9bcf4 and is always taken.
  The `bne` branch at 0xda9c940 targets 0xda9c234, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xda9c94c targets 0xda9c234, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xda9c9b0 targets 0xda9c2dc and is always taken.
  The `bne` branch at 0xda9c9b8 targets 0xda9c23c, is taken when a2(=0x1) != a0(?), and falls through when a2(=0x1) == a0(?).
  The `bne` branch at 0xda9c9c0 targets 0xda9c23c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xda9ca20 targets 0xda9c9b0 and is always taken.
  The `bne` branch at 0xda9ca28 targets 0xda9c244, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xda9ca30 targets 0xda9c244, is taken when a2(=0x1) != v1(?), and falls through when a2(=0x1) == v1(?).
  The `beq` branch at 0xda9ca94 targets 0xda9c2dc and is always taken.
  The `bne` branch at 0xda9ca9c targets 0xda9c24c, is taken when a2(=0x1) != a0(?), and falls through when a2(=0x1) == a0(?).
  The `bne` branch at 0xda9caa4 targets 0xda9c24c, is taken when a2(=0x1) != v1(?), and falls through when a2(=0x1) == v1(?).
  The `beq` branch at 0xda9cb04 targets 0xda9ca94 and is always taken.
  The `bne` branch at 0xda9cb0c targets 0xda9c254, is taken when a2(=0x1) != a0(?), and falls through when a2(=0x1) == a0(?).
  The `bne` branch at 0xda9cb14 targets 0xda9c254, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xda9cb78 targets 0xda9c2dc and is always taken.
  The `bne` branch at 0xda9cb80 targets 0xda9c25c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xda9cb88 targets 0xda9c25c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xda9cbe8 targets 0xda9cb78 and is always taken.
  The `bne` branch at 0xda9cbf0 targets 0xda9c264, is taken when a2(=0x1) != a0(?), and falls through when a2(=0x1) == a0(?).
  The `bne` branch at 0xda9cbf8 targets 0xda9c264, is taken when a2(=0x1) != v1(?), and falls through when a2(=0x1) == v1(?).
  The `beq` branch at 0xda9cc58 targets 0xda9c2d8 and is always taken.
  The `beq` branch at 0xda9cc60 targets 0xda9bb9c and is always taken.
  The `beq` branch at 0xda9cd3c targets 0xda9d3c4, is taken when s7(?) == t3(=0x3), and falls through when s7(?) != t3(=0x3).
  The `beq` branch at 0xda9cd48 targets 0xda9d57c, is taken when s7(?) == at(=0x2), and falls through when s7(?) != at(=0x2).
  The `beq` branch at 0xda9cd50 targets 0xda9d72c, is taken when s7(?) == a2(=0x1), and falls through when s7(?) != a2(=0x1).
  The `blez` branch at 0xda9cd70 targets 0xda9c62c, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `beq` branch at 0xda9cdb8 targets 0xda9cf64 and is always taken.
  The `beq` branch at 0xda9cdc0 targets 0xda9bb9c and is always taken.
  The `blez` branch at 0xda9cde0 targets 0xda9c62c, is taken when s8(?) <= 0 (signed), and falls through when s8(?) > 0 (signed).
  The `bne` branch at 0xda9ce60 targets 0xda9ce00, is taken when s8(?) != s4(?), and falls through when s8(?) == s4(?).
  The `beq` branch at 0xda9ce68 targets 0xda9c62c and is always taken.
  The `blez` branch at 0xda9ce88 targets 0xda9c62c, is taken when s8(?) <= 0 (signed), and falls through when s8(?) > 0 (signed).
  The `bne` branch at 0xda9cf10 targets 0xda9ceb0, is taken when s8(?) != s4(?), and falls through when s8(?) == s4(?).
  The `beq` branch at 0xda9cf18 targets 0xda9c62c and is always taken.
  The `beq` branch at 0xda9cf5c targets 0xda9d064, is taken when v1(?) == a3(?), and falls through when v1(?) != a3(?).
  The `blez` branch at 0xda9cf78 targets 0xda9cf20, is taken when v1(?) <= 0 (signed), and falls through when v1(?) > 0 (signed).
  The `bnel` branch at 0xda9d054 targets 0xda9cf90, is taken when at(?) != s4(?), and falls through when at(?) == s4(?); its branch-likely delay slot `sw s1,296(sp)` at 0xda9d058 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda9d05c targets 0xda9cf20 and is always taken.
  The `beq` branch at 0xda9d064 targets 0xda9c62c and is always taken.
  The `blez` branch at 0xda9d080 targets 0xda9c62c, is taken when s8(?) <= 0 (signed), and falls through when s8(?) > 0 (signed).
  The `bne` branch at 0xda9d100 targets 0xda9d0a0, is taken when s8(?) != s4(?), and falls through when s8(?) == s4(?).
  The `beq` branch at 0xda9d108 targets 0xda9c62c and is always taken.
  The `beq` branch at 0xda9d13c targets 0xda9c804 and is always taken.
  The `bne` branch at 0xda9d180 targets 0xda9d194, is taken when a0(=[[0x1010]+31552]) != a1(=[[0x1010]+91728]), and falls through when a0(=[[0x1010]+31552]) == a1(=[[0x1010]+91728]).
  The `beq` branch at 0xda9d18c targets 0xda9d20c, is taken when a3(=[[0x1010]+31556]) == a0(=[[0x1010]+91732]), and falls through when a3(=[[0x1010]+31556]) != a0(=[[0x1010]+91732]).
  The `beq` branch at 0xda9d1a0 targets 0xda9d1c4, is taken when at(=[[0x1010]+38736]) == 0, and falls through when at(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda9d1e8 targets 0xda9d910, is taken when (v1(=[[0x1010]+31376]) & a3(=0x100000)) == 0, and falls through when (v1(=[[0x1010]+31376]) & a3(=0x100000)) != 0.
  The `beq` branch at 0xda9d2a4 targets 0xda9d2c8, is taken when a2(=[[0x1010]+3217]:1) == 0, and falls through when a2(=[[0x1010]+3217]:1) != 0.
  The `beq` branch at 0xda9d2b4 targets 0xda9d2c8, is taken when (at(=[[0x1010]+1792]) & 0x10) == 0, and falls through when (at(=[[0x1010]+1792]) & 0x10) != 0.
  The `beq` branch at 0xda9d310 targets 0xda9c358 and is always taken.
  The `beq` branch at 0xda9d3bc targets 0xda9c670 and is always taken.
  The `blez` branch at 0xda9d3e0 targets 0xda9c62c, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `beq` branch at 0xda9d420 targets 0xda9d460 and is always taken.
  The `beq` branch at 0xda9d458 targets 0xda9d574, is taken when at(?) == v0(?), and falls through when at(?) != v0(?).
  The `blez` branch at 0xda9d474 targets 0xda9d428, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `bne` branch at 0xda9d564 targets 0xda9d490, is taken when at(?) != s4(?), and falls through when at(?) == s4(?).
  The `beq` branch at 0xda9d56c targets 0xda9d42c and is always taken.
  The `beq` branch at 0xda9d574 targets 0xda9c62c and is always taken.
  The `blez` branch at 0xda9d598 targets 0xda9c62c, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0xda9d5e0 targets 0xda9d62c and is always taken.
  The `beq` branch at 0xda9d624 targets 0xda9d724, is taken when at(?) == v0(?), and falls through when at(?) != v0(?).
  The `blez` branch at 0xda9d640 targets 0xda9d5e8, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `bnel` branch at 0xda9d714 targets 0xda9d650, is taken when a3(?) != s4(?), and falls through when a3(?) == s4(?); its branch-likely delay slot `sw s0,312(sp)` at 0xda9d718 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda9d71c targets 0xda9d5ec and is always taken.
  The `beq` branch at 0xda9d724 targets 0xda9c62c and is always taken.
  The `blez` branch at 0xda9d744 targets 0xda9c62c, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `beq` branch at 0xda9d784 targets 0xda9d8e8 and is always taken.
  The `bne` branch at 0xda9d8a4 targets 0xda9d7d0, is taken when at(?) != s4(?), and falls through when at(?) == s4(?).
  The `beq` branch at 0xda9d8e0 targets 0xda9d908, is taken when a3(?) == at(?), and falls through when a3(?) != at(?).
  The `blez` branch at 0xda9d8f8 targets 0xda9d8ac, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `beq` branch at 0xda9d900 targets 0xda9d7c4 and is always taken.
  The `beq` branch at 0xda9d908 targets 0xda9c62c and is always taken.
  The `beq` branch at 0xda9d970 targets 0xda9d1f0 and is always taken.
  The return at 0xda9c458 has v0 = ret(__glSetError).
  The return at 0xda9c8a8 has v0 = one of ?, 0xffffffff90008116.
  The return at 0xda9c8dc has v0 = ret(0xdaa2ab0).
  The return at 0xda9cc94 has v0 = ret(0xdaa2ab0).
  The return at 0xda9ccd0 has v0 = ret(__glSetError).
  The return at 0xda9d170 has v0 = ret(__glSetError).
  The return at 0xda9d34c has v0 = ret(__glSetError).
  The return at 0xda9d38c has v0 = ret(__glSetError).
  The return at 0xda9d7bc has v0 = ret(__glSetError).
- `__glOdysseyImageMovePixelsDMAtoGfx` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda9e1e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda9e1e0-0xda9f970 (6032 bytes).
  It occupies 6032 bytes.
  The `lw` at 0xda9e248 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda9e268 loads 4 bytes from [0x1010] +0x21dd4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x718, including `lw` at 0xda9e29c, `lw` at 0xda9e2b8.
  The `lw` at 0xda9e2ac loads 4 bytes from [0x1010] +0x21dd0.
  The `lwc1` at 0xda9e300 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda9e320 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lwc1` at 0xda9e340 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `lwc1` at 0xda9e364 loads 4 bytes from a2 (arg2 at entry) +0x1c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0xda9e388, `lw` at 0xda9e3f8.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0xda9e38c, `lw` at 0xda9e42c, `lw` at 0xda9e444.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0xda9e390, `lw` at 0xda9e434, `lw` at 0xda9e65c.
  The `lwc1` at 0xda9e394 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xda9e398 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda9e3a0 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0xda9e3a4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xa, including `lbu` at 0xda9e404, `lbu` at 0xda9ed00, `lbu` at 0xda9f294.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x11bc0, including `lw` at 0xda9e414, `lw` at 0xda9ed10.
  The `lw` at 0xda9e418 loads 4 bytes from [0x1010] +0x11c94.
  The `lw` at 0xda9e450 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0xda9e45c loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `sw` at 0xda9e47c stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `lw` at 0xda9e480 loads 4 bytes from a1 (arg1 at entry) +0x10.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x0, including `lbu` at 0xda9e4c0, `lbu` at 0xda9e9fc.
  4 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x8, including `lbu` at 0xda9e588, `lbu` at 0xda9e7e8, `lbu` at 0xda9ec6c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0xa5f8, including `lw` at 0xda9e59c, `lw` at 0xda9e5d8.
  The `lw` at 0xda9e600 loads 4 bytes from [0x1010] +0x760.
  The `lw` at 0xda9e694 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0xda9e6a0 loads 4 bytes from a0 (arg0 at entry) +0x28.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0xda9e6ac, `lw` at 0xda9ec64.
  The `lw` at 0xda9e6b0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0xda9e750, `lw` at 0xda9f104, `lw` at 0xda9f6d8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xda9e754, `lw` at 0xda9f108, `lw` at 0xda9f6e0.
  The `lw` at 0xda9e758 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `lw` at 0xda9e7b0 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0xda9e8f0 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xda9e954 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lbu` at 0xda9e9e8 loads 1 byte from [0x1010] +0x4a4.
  The `lw` at 0xda9ea78 loads 4 bytes from [0x1010] +0x7b1c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x95bc, including `lw` at 0xda9ea8c, `lw` at 0xda9ec0c.
  The `lw` at 0xda9ea90 loads 4 bytes from [0x1010] +0x7b54.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x95d8, including `lw` at 0xda9ea98, `lw` at 0xda9eb8c, `lw` at 0xda9f200.
  The `lw` at 0xda9eaa4 loads 4 bytes from [0x1010] +0x95c8.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x95d0, including `lw` at 0xda9eaa8, `lw` at 0xda9eb7c, `lw` at 0xda9f1ec.
  The `lw` at 0xda9eab0 loads 4 bytes from [0x1010] +0x95c4.
  The `lw` at 0xda9eab8 loads 4 bytes from [0x1010] +0x7b58.
  The `lw` at 0xda9eabc loads 4 bytes from [0x1010] +0x7b5c.
  The `lw` at 0xda9eac0 loads 4 bytes from [0x1010] +0x7b7c.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x95d4, including `lw` at 0xda9ead0, `lw` at 0xda9eb84, `lw` at 0xda9f1f4.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x95cc, including `lw` at 0xda9ead8, `lw` at 0xda9eafc, `lw` at 0xda9eb74.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x95dc, including `lw` at 0xda9eadc, `lw` at 0xda9eb94, `lw` at 0xda9f20c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x9624, including `lw` at 0xda9eae0, `lw` at 0xda9ebe8.
  The `lw` at 0xda9eae4 loads 4 bytes from [0x1010] +0x9628.
  5 such `lw` accesses load 4 bytes from [0x1010] +0x9750, including `lw` at 0xda9eaec, `lw` at 0xda9ee00, `lw` at 0xda9f090.
  The `lw` at 0xda9eb0c loads 4 bytes from [0x1010] +0x95c0.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x95cc, including `sw` at 0xda9eb3c, `sw` at 0xda9f1b4.
  11 such `sw` accesses store 4 bytes to [0x1010] +0x9750, including `sw` at 0xda9eb40, `sw` at 0xda9eba0, `sw` at 0xda9ee0c.
  86 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xda9eb44, `sw` at 0xda9eb48, `sw` at 0xda9eb4c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x9624, including `sw` at 0xda9ebd0, `sw` at 0xda9f228.
  9 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xda9ec20, `lw` at 0xda9ecf0, `lw` at 0xda9ed18.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x95bc, including `sw` at 0xda9ec2c, `sw` at 0xda9f238.
  8 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xda9ec34, `sw` at 0xda9ecf8, `sw` at 0xda9ed20.
  9 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda9ec3c, `sw` at 0xda9ecfc, `sw` at 0xda9ed24.
  The `lw` at 0xda9ec44 loads 4 bytes from [0x1010] +0xf4.
  The `lwc1` at 0xda9ec4c loads 4 bytes from [[0x1010]+244] +0xc.
  The `lwc1` at 0xda9ec50 loads 4 bytes from [[0x1010]+244] +0x8.
  The `lwc1` at 0xda9ec58 loads 4 bytes from [[0x1010]+244] +0x4.
  The `lwc1` at 0xda9ec78 loads 4 bytes from [[0x1010]+244] +0x0.
  8 such `lw` accesses load 4 bytes from [0x1010] +0x7b40, including `lw` at 0xda9ecc8, `lw` at 0xda9ed34, `lw` at 0xda9f4c4.
  4 such `sw` accesses store 4 bytes to [0x1010] +0x7b40, including `sw` at 0xda9ecd4, `sw` at 0xda9ed90, `sw` at 0xda9f254.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x7b44, including `lw` at 0xda9ecdc, `lw` at 0xda9f4d4, `lw` at 0xda9f530.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x7b44, including `sw` at 0xda9ecec, `sw` at 0xda9f25c, `sw` at 0xda9f4e4.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x7b7c, including `sw` at 0xda9ed14, `sw` at 0xda9f2a0, `sw` at 0xda9f664.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda9edc8, `lw` at 0xda9ef14.
  The `lw` at 0xda9ee40 loads 4 bytes from [0x1010] +0xa5fc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0xa118, including `lw` at 0xda9ee80, `lw` at 0xda9f320.
  3 such `sw` accesses store 4 bytes to [0x1010] +0xa118, including `sw` at 0xda9ee88, `sw` at 0xda9f150, `sw` at 0xda9f328.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x9614, including `sw` at 0xda9ee90, `sw` at 0xda9f160, `sw` at 0xda9f330.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x9618, including `sw` at 0xda9ee9c, `sw` at 0xda9f340.
  2 such `swc1` accesses store 4 bytes to [0x1010] +0x95f0, including `swc1` at 0xda9eea0, `swc1` at 0xda9f34c.
  2 such `swc1` accesses store 4 bytes to [0x1010] +0x95ec, including `swc1` at 0xda9eea4, `swc1` at 0xda9f350.
  2 such `swc1` accesses store 4 bytes to [0x1010] +0x95e8, including `swc1` at 0xda9eea8, `swc1` at 0xda9f354.
  2 such `swc1` accesses store 4 bytes to [0x1010] +0x95e4, including `swc1` at 0xda9eeb0, `swc1` at 0xda9f358.
  3 such `swc1` accesses store 4 bytes to [0x1010] +0x9608, including `swc1` at 0xda9ef74, `swc1` at 0xda9f378, `swc1` at 0xda9f69c.
  3 such `swc1` accesses store 4 bytes to [0x1010] +0x9604, including `swc1` at 0xda9ef7c, `swc1` at 0xda9f37c, `swc1` at 0xda9f6a0.
  3 such `swc1` accesses store 4 bytes to [0x1010] +0x9600, including `swc1` at 0xda9ef84, `swc1` at 0xda9f344, `swc1` at 0xda9f688.
  3 such `swc1` accesses store 4 bytes to [0x1010] +0x95fc, including `swc1` at 0xda9ef88, `swc1` at 0xda9f380, `swc1` at 0xda9f6a4.
  3 such `swc1` accesses store 4 bytes to [0x1010] +0x95f8, including `swc1` at 0xda9ef90, `swc1` at 0xda9f384, `swc1` at 0xda9f6a8.
  3 such `swc1` accesses store 4 bytes to [0x1010] +0x95f4, including `swc1` at 0xda9ef94, `swc1` at 0xda9f348, `swc1` at 0xda9f68c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x9610, including `sw` at 0xda9ef9c, `sw` at 0xda9f360.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x960c, including `sw` at 0xda9efa4, `sw` at 0xda9f38c.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x95e4, including `lwc1` at 0xda9efc4, `lwc1` at 0xda9f3c8.
  20 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xda9efc8, `swc1` at 0xda9efd0, `swc1` at 0xda9efd8.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x95e8, including `lwc1` at 0xda9efcc, `lwc1` at 0xda9f3d0.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x95ec, including `lwc1` at 0xda9efd4, `lwc1` at 0xda9f3d8.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x95f0, including `lwc1` at 0xda9efdc, `lwc1` at 0xda9f3e0.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x95f4, including `lwc1` at 0xda9efe4, `lwc1` at 0xda9f3e8.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x95f8, including `lwc1` at 0xda9efec, `lwc1` at 0xda9f3f0.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x95fc, including `lwc1` at 0xda9eff4, `lwc1` at 0xda9f3f8.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x9600, including `lwc1` at 0xda9effc, `lwc1` at 0xda9f400.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x9604, including `lwc1` at 0xda9f008, `lwc1` at 0xda9f408.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x9608, including `lwc1` at 0xda9f010, `lwc1` at 0xda9f414.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x9620, including `sw` at 0xda9f04c, `sw` at 0xda9f43c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x961c, including `sw` at 0xda9f058, `sw` at 0xda9f448.
  The `lw` at 0xda9f130 loads 4 bytes from [0x1010] +0x9614.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7a90, including `lw` at 0xda9f164, `lw` at 0xda9f538.
  The `sw` at 0xda9f178 stores 4 bytes to [0x1010] +0x95dc.
  The `sw` at 0xda9f180 stores 4 bytes to [0x1010] +0x95d8.
  The `sw` at 0xda9f188 stores 4 bytes to [0x1010] +0x95d4.
  The `sw` at 0xda9f19c stores 4 bytes to [0x1010] +0x95d0.
  The `sw` at 0xda9f230 stores 4 bytes to [0x1010] +0x9628.
  The `sw` at 0xda9f240 stores 4 bytes to [0x1010] +0x95c0.
  The `sw` at 0xda9f248 stores 4 bytes to [0x1010] +0x95c4.
  The `sw` at 0xda9f250 stores 4 bytes to [0x1010] +0x95c8.
  The `lw` at 0xda9f484 loads 4 bytes from [0x1010] +0x4b4.
  The `lw` at 0xda9f4c8 loads 4 bytes from [0x1010] +0x16650.
  The `lw` at 0xda9f4d0 loads 4 bytes from [0x1010] +0x16654.
  The `lw` at 0xda9f54c loads 4 bytes from [0x1010] +0x168d4.
  The `sw` at 0xda9f554 stores 4 bytes to [0x1010] +0x168d4.
  The `lbu` at 0xda9f564 loads 1 byte from [0x1010] +0xc91.
  The `lw` at 0xda9f574 loads 4 bytes from [0x1010] +0x700.
  The `sw` at 0xda9f644 stores 4 bytes to [0x1010] +0x7b1c.
  The `sw` at 0xda9f64c stores 4 bytes to [0x1010] +0x7b54.
  The `sw` at 0xda9f654 stores 4 bytes to [0x1010] +0x7b58.
  The `sw` at 0xda9f65c stores 4 bytes to [0x1010] +0x7b5c.
  2 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x32, including `lhu` at 0xda9f6b8, `lhu` at 0xda9f758.
  The `lw` at 0xda9f7ec loads 4 bytes from [0x1010] +0x10.
  The `jalr` at 0xda9e2e0 calls memset with a0=sp-656, a1=0x0, a2=0x20, a3=a3 at entry (arg3).
  The `jalr` at 0xda9e2f8 calls memset with a0=sp-624, a1=0x0, a2=0x14, a3=?.
  The `jalr` at 0xda9e318 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9e338 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9e35c calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9e380 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda9e3e4 calls __glOdysseyImageCalcXferWriteParams [0xdaa1710] with a0=[a1+8], a1=[a1+12], a2=[a0+48], a3=sp-624.
  The `jalr` at 0xda9e430 calls __glSpecElementsPerGroup [0xdaf13d0] with a0=[a1+8], a1=[a1+12], a2=?, a3=?.
  The `jalr` at 0xda9e440 calls __glSpecBytesPerElement [0xdaf15a0] with a0=[a1+12], a1=?, a2=?, a3=?.
  The `jalr` at 0xda9e4b4 calls ceilf with a0=?, a1=?, a2=[a1+16], a3=?.
  The `bgezall` at 0xda9e69c calls (unnamed) [0xdaa2ab0] with a0=[a0+40], a1=[a0+44], a2=?, a3=one of 0x0, 0x1, a4=sp-672, a5=sp-668.
  The `jalr` at 0xda9e788 calls __glOdysseyOpenPMObjWriteReference [0xdaaab50] with a0=[0x1010], a1=[a0+12], a2=[a0+16], a3=sp-664.
  The `bgezall` at 0xda9e9b0 calls (unnamed) [0xdaa3150] with a0=?, a1=?, a2=?, a3=?, a4=0x1.
  The `bgezall` at 0xda9ebf0 calls __glOdysseyImageCalcPixelModeFields [0xdaa2fe0] with a0=[0x1010]+38332, a1=a0 at entry (arg0), a2=?, a3=0x13c00, a4=0x10046, a5=0xfa, a6=0x10443, a7=[[0x1010]+38364].
  The `jalr` at 0xda9edb8 calls __glOdysseyValidateHardware [0xda57700] with a0=[0x1010], a1=?, a2=?, a3=?, a5=[[0x1010]+92368].
  The `bgezall` at 0xda9f054 calls (unnamed) [0xda9d980] with a0=?, a1=?, a2=sp-496, a3=0xa, a4=0x14400.
  The `jalr` at 0xda9f110 calls __glOdysseyClosePMObjWriteReference [0xdaaadc0] with a0=[0x1010], a1=[a0+12], a2=[a0+16], a3=?.
  The `bgezall` at 0xda9f444 calls (unnamed) [0xda9d980] with a0=?, a1=?, a2=sp-656, a3=?, a7=[0x1010]+65536; fp f12=[[0x1010]+38376], f13=[[0x1010]+38372].
  The `bgezall` at 0xda9f584 calls __glOdysseyImageCalcOdyEyeSpaceRasterPosZ [0xdaa5ab0] with a0=?, a1=[[0x1010]+31552], a2=[[0x1010]+31556], a3=?, a5=[[0x1010]+3217]:1.
  The `bgezall` at 0xda9f5ac calls (unnamed) [0xdaa3df0] with a0=?, a1=[0x1010]+31516, a2=[0x1010]+31572, a3=[0x1010]+31576, a4=[0x1010]+31580, a5=[0x1010]+31612.
  The `jalr` at 0xda9f6e4 calls __glOdysseyAssignToPMObj [0xdaaa370] with a0=[0x1010], a1=[a0+12], a2=[a0+16], a3=?, a5=((([a0+50]:2 << 0x10) | one of 0x0, 0x2) | 0x9), a6=0x0, a7=sp-656.
  The `jalr` at 0xda9f6fc calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9f78c calls __glOdysseyAssignToPMObj [0xdaaa370] with a0=[0x1010], a1=[a0+12], a2=[a0+16], a3=?, a5=(((([a0+50]:2 << 0x10) | one of 0x0, 0x8) | one of 0x0, 0x2) | 0x1), a6=0x0, a7=sp-656.
  The `jalr` at 0xda9f7a0 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9f800 calls (unknown callee) with a0=[0x1010], a1=0xdbd30e8, a2=?, a3=?.
  The `jalr` at 0xda9f80c calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9f85c calls __glSetError [0xdb11f10] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9f8c0 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9f960 calls __glOdysseyIoctl [0xdabc870] with a0=[0x1010], a1=0x6f64000d, a2=sp-520, a3=?, a5=0x100000, a6=[[0x1010]+31556].
  The `beq` branch at 0xda9e294 targets 0xda9e2a8, is taken when at(=[[0x1010]+138708]) == 0, and falls through when at(=[[0x1010]+138708]) != 0.
  The `bne` branch at 0xda9e2a4 targets 0xda9e2c8, is taken when (v1(=[[0x1010]+1816]) & 0x2) != 0, and falls through when (v1(=[[0x1010]+1816]) & 0x2) == 0.
  The `beq` branch at 0xda9e2b0 targets 0xda9e2d4, is taken when a5(=[[0x1010]+138704]) == 0, and falls through when a5(=[[0x1010]+138704]) != 0.
  The `beq` branch at 0xda9e2c0 targets 0xda9e2d4, is taken when (a6(=[[0x1010]+1816]) & 0x1) == 0, and falls through when (a6(=[[0x1010]+1816]) & 0x1) != 0.
  The `beq` branch at 0xda9e3f0 targets 0xda9f854, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda9e3fc targets 0xda9e424, is taken when v1(=[a0+48]) != a5(?), and falls through when v1(=[a0+48]) == a5(?).
  The `beq` branch at 0xda9e408 targets 0xda9e428, is taken when a6(=[a0+10]:1) == 0, and falls through when a6(=[a0+10]:1) != 0.
  The `beq` branch at 0xda9e41c targets 0xda9e42c, is taken when at(=[[0x1010]+72640]) == v1(=[[0x1010]+72852]), and falls through when at(=[[0x1010]+72640]) != v1(=[[0x1010]+72852]).
  The `beq` branch at 0xda9e470 targets 0xda9e480, is taken when a0(=[a1+24]) >= s3(?) (unsigned), and falls through when a0(=[a1+24]) < s3(?) (unsigned).
  The `beq` branch at 0xda9e4d4 targets 0xda9f484, is taken when a5(=[a1]:1) == 0, and falls through when a5(=[a1]:1) != 0.
  The `beq` branch at 0xda9e540 targets 0xda9e57c, is taken when at(=0x9000) >= v1(?) (unsigned), and falls through when at(=0x9000) < v1(?) (unsigned).
  The `bne` branch at 0xda9e570 targets 0xda9e57c, is taken when s7(?) < a6(?) (unsigned), and falls through when s7(?) >= a6(?) (unsigned).
  The `bne` branch at 0xda9e578 targets 0xda9f4b4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xda9e584 targets 0xda9e5cc, is taken when a2(=one of 0x0, 0x1) == 0, and falls through when a2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xda9e58c targets 0xda9e654, is taken when a1(=[a0+8]:1) == 0, and falls through when a1(=[a0+8]:1) != 0.
  The `beq` branch at 0xda9e5a4 targets 0xda9e5cc, is taken when (a2(=[[0x1010]+42488]) & 0x1000) == 0, and falls through when (a2(=[[0x1010]+42488]) & 0x1000) != 0.
  The `beq` branch at 0xda9e5cc targets 0xda9e654, is taken when a1(=[a0+8]:1) == 0, and falls through when a1(=[a0+8]:1) != 0.
  The `beq` branch at 0xda9e5e0 targets 0xda9e650, is taken when (a2(=[[0x1010]+42488]) & 0x1000) == 0, and falls through when (a2(=[[0x1010]+42488]) & 0x1000) != 0.
  The `beq` branch at 0xda9e5f8 targets 0xda9e654, is taken when a1(=[a0+8]:1) == 0, and falls through when a1(=[a0+8]:1) != 0.
  The `beq` branch at 0xda9e60c targets 0xda9e628, is taken when a1(=[[0x1010]+1888]) == t0(=0x405), and falls through when a1(=[[0x1010]+1888]) != t0(=0x405).
  The `beq` branch at 0xda9e618 targets 0xda9e628, is taken when a1(=[[0x1010]+1888]) == at(=0x402), and falls through when a1(=[[0x1010]+1888]) != at(=0x402).
  The `bne` branch at 0xda9e620 targets 0xda9e630, is taken when a1(=[[0x1010]+1888]) != v1(=0x403), and falls through when a1(=[[0x1010]+1888]) == v1(=0x403).
  The `beq` branch at 0xda9e630 targets 0xda9e648, is taken when a1(=[[0x1010]+1888]) == a5(=0x407), and falls through when a1(=[[0x1010]+1888]) != a5(=0x407).
  The `beq` branch at 0xda9e638 targets 0xda9e648, is taken when a1(=[[0x1010]+1888]) == a6(=0x401), and falls through when a1(=[[0x1010]+1888]) != a6(=0x401).
  The `bne` branch at 0xda9e640 targets 0xda9e65c, is taken when a1(=[[0x1010]+1888]) != at(=0x403), and falls through when a1(=[[0x1010]+1888]) == at(=0x403).
  The `beq` branch at 0xda9e648 targets 0xda9e65c and is always taken.
  The `bne` branch at 0xda9e650 targets 0xda9e600, is taken when a1(=[a0+8]:1) != 0, and falls through when a1(=[a0+8]:1) == 0.
  The `beq` branch at 0xda9e664 targets 0xda9f2f0, is taken when a1(=[a1+8]) == v1(=0x1902), and falls through when a1(=[a1+8]) != v1(=0x1902).
  The `beq` branch at 0xda9e66c targets 0xda9f2f0, is taken when a1(=[a1+8]) == a5(=0x1901), and falls through when a1(=[a1+8]) != a5(=0x1901).
  The `beq` branch at 0xda9e6a4 targets 0xda9f5fc, is taken when v0(=ret(0xdaa2ab0)) == 0, and falls through when v0(=ret(0xdaa2ab0)) != 0.
  The `beq` branch at 0xda9e6b4 targets 0xda9e6c8, is taken when at(=[a0+4]) == v1(=[a1+4]), and falls through when at(=[a0+4]) != v1(=[a1+4]).
  The `bne` branch at 0xda9e6bc targets 0xda9e6d4, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xda9e6c8 targets 0xda9e6dc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda9e798 targets 0xda9f7e8, is taken when (v0(=ret(__glOdysseyOpenPMObjWriteReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyOpenPMObjWriteReference)) & 0xff) != 0.
  The `beq` branch at 0xda9e9f4 targets 0xda9ea04, is taken when at(=[[0x1010]+1188]:1) == 0, and falls through when at(=[[0x1010]+1188]:1) != 0.
  The `beq` branch at 0xda9ea00 targets 0xda9f4bc, is taken when a5(=[a1]:1) == 0, and falls through when a5(=[a1]:1) != 0.
  The `beq` branch at 0xda9ea70 targets 0xda9edec, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda9eb38 targets 0xda9eb54, is taken when a2(=[[0x1010]+38736]) == 0, and falls through when a2(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda9ec94 targets 0xda9eca8, is taken when at(=[a0+8]:1) == 0, and falls through when at(=[a0+8]:1) != 0.
  The `beq` branch at 0xda9eca4 targets 0xda9f4c4, is taken when a6(=a4) == at(=0x1), and falls through when a6(=a4) != at(=0x1).
  The `beq` branch at 0xda9ed08 targets 0xda9ed28, is taken when v1(=[a0+10]:1) == 0, and falls through when v1(=[a0+10]:1) != 0.
  The `beq` branch at 0xda9ed2c targets 0xda9eda4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xda9eda8 targets 0xda9edc0, is taken when a5(=[[0x1010]+92368]) == 0, and falls through when a5(=[[0x1010]+92368]) != 0.
  The `beq` branch at 0xda9edc0 targets 0xda9edec, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda9edf0 targets 0xda9ee4c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xda9ee04 targets 0xda9ee30, is taken when a6(=[[0x1010]+38736]) == 0, and falls through when a6(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda9ee60 targets 0xda9f304, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xda9eeac targets 0xda9f67c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `blez` branch at 0xda9eef4 targets 0xda9f07c, is taken when s4(?) <= 0 (signed), and falls through when s4(?) > 0 (signed).
  The `bgtz` branch at 0xda9f074 targets 0xda9ef10, is taken when s4(?) > 0 (signed), and falls through when s4(?) <= 0 (signed).
  The `beq` branch at 0xda9f088 targets 0xda9f100, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xda9f0a4 targets 0xda9f0c0, is taken when a5(=[[0x1010]+38736]) == 0, and falls through when a5(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda9f11c targets 0xda9f8bc, is taken when (v0(=ret(__glOdysseyClosePMObjWriteReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyClosePMObjWriteReference)) & 0xff) != 0.
  The `beq` branch at 0xda9f124 targets 0xda9f2b4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda9f15c targets 0xda9f170, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda9f16c targets 0xda9f5e4, is taken when (at(=[[0x1010]+31376]) & 0x400) == 0, and falls through when (at(=[[0x1010]+31376]) & 0x400) != 0.
  The `beq` branch at 0xda9f1b0 targets 0xda9f1cc, is taken when a5(=[[0x1010]+38736]) == 0, and falls through when a5(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda9f280 targets 0xda9f294, is taken when at(=[a0+8]:1) == 0, and falls through when at(=[a0+8]:1) != 0.
  The `beq` branch at 0xda9f28c targets 0xda9f644, is taken when a5(=a4) == a6(=0x1), and falls through when a5(=a4) != a6(=0x1).
  The `beq` branch at 0xda9f298 targets 0xda9f2b4, is taken when at(=[a0+10]:1) == 0, and falls through when at(=[a0+10]:1) != 0.
  The `beq` branch at 0xda9f2fc targets 0xda9e684 and is always taken.
  The `beq` branch at 0xda9f308 targets 0xda9f394, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda9f338 targets 0xda9f8a4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xda9f398 targets 0xda9f744, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xda9f44c targets 0xda9f100, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda9f458 targets 0xda9f100, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda9f47c targets 0xda9f100 and is always taken.
  The `beq` branch at 0xda9f4ac targets 0xda9e4dc and is always taken.
  The `beq` branch at 0xda9f4b4 targets 0xda9e580 and is always taken.
  The `beq` branch at 0xda9f4bc targets 0xda9ea08 and is always taken.
  The `bne` branch at 0xda9f4cc targets 0xda9f4e0, is taken when a1(=[[0x1010]+31552]) != a4(=[[0x1010]+91728]), and falls through when a1(=[[0x1010]+31552]) == a4(=[[0x1010]+91728]).
  The `beq` branch at 0xda9f4d8 targets 0xda9f564, is taken when a2(=[[0x1010]+31556]) == a3(=[[0x1010]+91732]), and falls through when a2(=[[0x1010]+31556]) != a3(=[[0x1010]+91732]).
  The `beq` branch at 0xda9f4ec targets 0xda9f520, is taken when v1(=[[0x1010]+38736]) == 0, and falls through when v1(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda9f544 targets 0xda9f908, is taken when (v1(=[[0x1010]+31376]) & a5(=0x100000)) == 0, and falls through when (v1(=[[0x1010]+31376]) & a5(=0x100000)) != 0.
  The `beq` branch at 0xda9f56c targets 0xda9f590, is taken when a5(=[[0x1010]+3217]:1) == 0, and falls through when a5(=[[0x1010]+3217]:1) != 0.
  The `beq` branch at 0xda9f57c targets 0xda9f590, is taken when (a6(=[[0x1010]+1792]) & 0x10) == 0, and falls through when (a6(=[[0x1010]+1792]) & 0x10) != 0.
  The `beq` branch at 0xda9f5d4 targets 0xda9eda4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda9f5dc targets 0xda9ed38 and is always taken.
  The `beq` branch at 0xda9f5f4 targets 0xda9f170 and is always taken.
  The `beq` branch at 0xda9f674 targets 0xda9f2b4 and is always taken.
  The `bne` branch at 0xda9f6f0 targets 0xda9f080, is taken when (v0(=ret(__glOdysseyAssignToPMObj)) & 0xff) != 0, and falls through when (v0(=ret(__glOdysseyAssignToPMObj)) & 0xff) == 0.
  The `bne` branch at 0xda9f798 targets 0xda9f44c, is taken when (v0(=ret(__glOdysseyAssignToPMObj)) & 0xff) != 0, and falls through when (v0(=ret(__glOdysseyAssignToPMObj)) & 0xff) == 0.
  The `beq` branch at 0xda9f8b4 targets 0xda9f340 and is always taken.
  The `beq` branch at 0xda9f968 targets 0xda9f54c and is always taken.
  The return at 0xda9f2e8 has v0 = one of ret(__glOdysseyClosePMObjWriteReference), 0x10046.
  The return at 0xda9f63c has v0 = ret(0xdaa2ab0).
  The return at 0xda9f73c has v0 = ret(__glSetError).
  The return at 0xda9f7e0 has v0 = ret(__glSetError).
  The return at 0xda9f84c has v0 = ret(__glSetError).
  The return at 0xda9f89c has v0 = ret(__glSetError).
  The return at 0xda9f900 has v0 = ret(__glSetError).
- `__glOdysseyInitLighting` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa5b30 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaa5b30-0xdaa5e3c (780 bytes).
  It occupies 780 bytes.
  The `lwc1` at 0xdaa5b3c loads 4 bytes from abs 0xdbde4b0.
  The `lwc1` at 0xdaa5b40 loads 4 bytes from abs 0xdbde55c.
  The `lwc1` at 0xdaa5b48 loads 4 bytes from abs 0xdbde444.
  The `sw` at 0xdaa5b54 stores 4 bytes to a0 (arg0 at entry) +0x168dc.
  The `sw` at 0xdaa5b58 stores 4 bytes to a0 (arg0 at entry) +0x168d8.
  The `lwc1` at 0xdaa5b60 loads 4 bytes from abs 0xdbde448.
  22 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdaa5b68, `sw` at 0xdaa5b84, `sw` at 0xdaa5b9c.
  51 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdaa5b6c, `swc1` at 0xdaa5b70, `swc1` at 0xdaa5b74.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa138, including `sw` at 0xdaa5c7c, `sw` at 0xdaa5cac, `sw` at 0xdaa5d80.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa13c, including `sw` at 0xdaa5cd0, `sw` at 0xdaa5d8c.
  The `lw` at 0xdaa5cd4 loads 4 bytes from a0 (arg0 at entry) +0xa118.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa118, including `sw` at 0xdaa5cdc, `sw` at 0xdaa5d90.
  The `lbu` at 0xdaa5ce0 loads 1 byte from a0 (arg0 at entry) +0xc8c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0xa0e0, including `swc1` at 0xdaa5cf4, `swc1` at 0xdaa5e28.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0xa0dc, including `swc1` at 0xdaa5cf8, `swc1` at 0xdaa5e2c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0xa0d8, including `swc1` at 0xdaa5cfc, `swc1` at 0xdaa5e30.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0xa0d4, including `swc1` at 0xdaa5d00, `swc1` at 0xdaa5e38.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa13c, including `lw` at 0xdaa5d18, `lw` at 0xdaa5d9c.
  The `lwc1` at 0xdaa5d48 loads 4 bytes from a0 (arg0 at entry) +0xa0d4.
  The `lwc1` at 0xdaa5d50 loads 4 bytes from a0 (arg0 at entry) +0xa0d8.
  The `lwc1` at 0xdaa5d58 loads 4 bytes from a0 (arg0 at entry) +0xa0dc.
  The `lwc1` at 0xdaa5d60 loads 4 bytes from a0 (arg0 at entry) +0xa0e0.
  The `sw` at 0xdaa5d7c stores 4 bytes to a0 (arg0 at entry) +0xa0f8.
  The `sw` at 0xdaa5d88 stores 4 bytes to a0 (arg0 at entry) +0xa0f4.
  The `lw` at 0xdaa5db8 loads 4 bytes from a0 (arg0 at entry) +0xa0f4.
  The `lw` at 0xdaa5ddc loads 4 bytes from a0 (arg0 at entry) +0xa138.
  The `lw` at 0xdaa5e00 loads 4 bytes from a0 (arg0 at entry) +0xa0f8.
  The `beq` branch at 0xdaa5cec targets 0xdaa5e28, is taken when v0(=[a0+3212]:1) == 0, and falls through when v0(=[a0+3212]:1) != 0.
  The `beq` branch at 0xdaa5e34 targets 0xdaa5d04 and is always taken.
  The return at 0xdaa5e20 has v0 = ?.
- `__glOdylc_Normal3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa87a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaa87a0-0xdaa88a0 (256 bytes).
  It occupies 256 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdaa87a8, `lw` at 0xdaa8814.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdaa87b0, `lw` at 0xdaa885c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdaa87bc, `lw` at 0xdaa8888.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdaa8844, `sw` at 0xdaa8848, `sw` at 0xdaa884c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdaa8858, `sw` at 0xdaa8880.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdaa8864, `sw` at 0xdaa889c.
  The `sw` at 0xdaa8874 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdaa87f4 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaa87d8 targets 0xdaa8824, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xdaa880c targets 0xdaa8878, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xdaa8870 has v0 = [0x1034]+4.
  The return at 0xdaa8898 has v0 = ret(__glSPDlistSpace).
- `__glOdylc_Normal3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa8fe0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaa8fe0-0xdaa90e0 (256 bytes).
  It occupies 256 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdaa8fe8, `lw` at 0xdaa9054.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdaa8ff0, `lw` at 0xdaa909c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdaa8ffc, `lw` at 0xdaa90c8.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdaa9084, `sw` at 0xdaa9088, `sw` at 0xdaa908c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdaa9098, `sw` at 0xdaa90c0.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdaa90a4, `sw` at 0xdaa90dc.
  The `sw` at 0xdaa90b4 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdaa9034 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaa9018 targets 0xdaa9064, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xdaa904c targets 0xdaa90b8, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xdaa90b0 has v0 = [0x1034]+4.
  The return at 0xdaa90d8 has v0 = ret(__glSPDlistSpace).
- `__glOdysseyCreatePMObj` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa9e70 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaa9e70-0xdaaa050 (480 bytes).
  It occupies 480 bytes.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0xdaa9e90, `lw` at 0xdaa9f18, `lw` at 0xdaa9fc0.
  The `lw` at 0xdaa9ecc loads 4 bytes from ?.
  The `sw` at 0xdaa9ed8 stores 4 bytes to ?.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x16ba4, including `lw` at 0xdaa9f3c, `lw` at 0xdaa9f4c, `lw` at 0xdaa9fac.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xdaa9f80, `sw` at 0xdaa9ff8.
  The `jalr` at 0xdaa9ef0 calls __glOdysseyIoctl [0xdabc870] with a0=a0 at entry (arg0), a1=0x6f640001, a2=sp-160, a3=?.
  The `bgezall` at 0xdaa9f38 calls InitCSetCursor [0xdaabad0] with a0=[a0+93092], a1=?, a2=?, a3=[a2].
  The `bgezall` at 0xdaa9f50 calls NextCSetElem [0xdaabaf0] with a0=[a0+93092], a1=?, a2=?, a3=?.
  The `bgezall` at 0xdaa9fa8 calls NextCSetElem [0xdaabaf0] with a0=[a0+93092], a1=?, a2=?, a3=?.
  The `bgezall` at 0xdaa9fc4 calls LookupKnownGroup [0xdaab0a0] with a0=ret(NextCSetElem), a1=[a2], a2=0x0, a3=?.
  The `bgezall` at 0xdaa9fe0 calls RemoveKnownGroup [0xdaab590] with a0=ret(NextCSetElem), a1=ret(LookupKnownGroup), a2=?, a3=?.
  The `bgtz` branch at 0xdaa9ed4 targets 0xdaa9ec0, is taken when a6(?) > 0 (signed), and falls through when a6(?) <= 0 (signed).
  The `beq` branch at 0xdaa9f08 targets 0xdaa9ff0, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `bne` branch at 0xdaa9f10 targets 0xdaa9f88, is taken when a0(=-0x1) != a1(?), and falls through when a0(=-0x1) == a1(?).
  The `beq` branch at 0xdaa9f1c targets 0xdaa9f88, is taken when a3(=[a2]) == a0(=-0x1), and falls through when a3(=[a2]) != a0(=-0x1).
  The `beq` branch at 0xdaa9f60 targets 0xdaa9f7c, is taken when v0(=ret(NextCSetElem)) == 0, and falls through when v0(=ret(NextCSetElem)) != 0.
  The `beq` branch at 0xdaa9f6c targets 0xdaa9fb8 and is always taken.
  The `beq` branch at 0xdaa9fb0 targets 0xdaa9f74, is taken when v0(=ret(NextCSetElem)) == 0, and falls through when v0(=ret(NextCSetElem)) != 0.
  The `beq` branch at 0xdaa9fcc targets 0xdaa9fa4, is taken when v0(=ret(LookupKnownGroup)) == 0, and falls through when v0(=ret(LookupKnownGroup)) != 0.
  The `beq` branch at 0xdaa9fe8 targets 0xdaa9fa4 and is always taken.
  The `beq` branch at 0xdaa9ff0 targets 0xdaaa038, is taken when a0(=-0x1) == a1(?), and falls through when a0(=-0x1) != a1(?).
  The `beq` branch at 0xdaaa010 targets 0xdaaa02c and is always taken.
  The return at 0xdaa9f98 has v0 = 0x0.
  The return at 0xdaaa030 has v0 = 0x1.
  The return at 0xdaaa048 has v0 = 0x0.
  The instructions from 0xdaa9fa0 to 0xdaa9fa0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdaaa018 to 0xdaaa028 are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseyDestroyPMObjGroup` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa050 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaaa050-0xdaaa198 (328 bytes).
  It occupies 328 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x16ba4, including `lw` at 0xdaaa094, `lw` at 0xdaaa0a4, `lw` at 0xdaaa0d4.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0xdaaa0f0, `lw` at 0xdaaa13c.
  The `sw` at 0xdaaa180 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `bgezall` at 0xdaaa090 calls (unnamed) [0xdaabad0] with a0=[a0+93092], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xdaaa0a8 calls (unnamed) [0xdaabaf0] with a0=[a0+93092], a1=?, a2=?, a3=?.
  The `bgezall` at 0xdaaa0d8 calls (unnamed) [0xdaabaf0] with a0=[a0+93092], a1=?, a2=?, a3=?.
  The `bgezall` at 0xdaaa0f4 calls (unnamed) [0xdaab0a0] with a0=ret(0xdaabaf0), a1=[a1], a2=0x0, a3=?.
  The `bgezall` at 0xdaaa108 calls (unnamed) [0xdaab590] with a0=ret(0xdaabaf0), a1=ret(0xdaab0a0), a2=?, a3=?.
  The `jalr` at 0xdaaa144 calls __glOdysseyIoctl [0xdabc870] with a0=a0 at entry (arg0), a1=0x6f640002, a2=sp-160, a3=?.
  The `beq` branch at 0xdaaa0b8 targets 0xdaaa120, is taken when v0(=ret(0xdaabaf0)) == 0, and falls through when v0(=ret(0xdaabaf0)) != 0.
  The `beq` branch at 0xdaaa0cc targets 0xdaaa0e8 and is always taken.
  The `beq` branch at 0xdaaa0e0 targets 0xdaaa118, is taken when v0(=ret(0xdaabaf0)) == 0, and falls through when v0(=ret(0xdaabaf0)) != 0.
  The `beq` branch at 0xdaaa0fc targets 0xdaaa0d4, is taken when v0(=ret(0xdaab0a0)) == 0, and falls through when v0(=ret(0xdaab0a0)) != 0.
  The `beq` branch at 0xdaaa110 targets 0xdaaa0d8 and is always taken.
  The `beq` branch at 0xdaaa154 targets 0xdaaa174, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The return at 0xdaaa16c has v0 = 0x0.
  The return at 0xdaaa190 has v0 = 0x1.
- `__glOdysseyDestroyPMObj` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa1a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaaa1a0-0xdaaa2f4 (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0xdaaa1b8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `jalr` at 0xdaaa204 calls __glOdysseyIoctl [0xdabc870] with a0=a0 at entry (arg0), a1=0x6f640002, a2=sp-160, a3=0x1.
  The `bltz` branch at 0xdaaa1cc targets 0xdaaa1e0, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `bne` branch at 0xdaaa1d8 targets 0xdaaa1f0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0xdaaa20c targets 0xdaaa224, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `beq` branch at 0xdaaa228 targets 0xdaaa23c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The return at 0xdaaa1e8 has v0 = 0x0.
  The return at 0xdaaa21c has v0 = 0x0.
  The return at 0xdaaa234 has v0 = 0x1.
  The instructions from 0xdaaa23c to 0xdaaa2f0 are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseyAssignToPMObj` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa370 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaaa370-0xdaaa4ec (380 bytes).
  It occupies 380 bytes.
  The `lw` at 0xdaaa3dc loads 4 bytes from a7 (arg7 at entry) +0x14.
  The `sw` at 0xdaaa3ec stores 4 bytes to a7 (arg7 at entry) +0x14.
  The `lw` at 0xdaaa42c loads 4 bytes from ?.
  The `sw` at 0xdaaa438 stores 4 bytes to ?.
  The `sw` at 0xdaaa4b4 stores 4 bytes to a0 (arg0 at entry) +0x21de0.
  The `jalr` at 0xdaaa3c8 calls bzero with a0=sp-240, a1=0x50, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xdaaa450 calls (unnamed) [0xdaaa300] with a0=sp-240, a1=a7 at entry (arg7), a2=sp-212, a3=?.
  The `jalr` at 0xdaaa474 calls __glOdysseyIoctl [0xdabc870] with a0=a0 at entry (arg0), a1=0x6f640006, a2=sp-240, a3=?.
  The `bgtz` branch at 0xdaaa434 targets 0xdaaa420, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The `beq` branch at 0xdaaa45c targets 0xdaaa4cc, is taken when v0(=ret(0xdaaa300)) == 0, and falls through when v0(=ret(0xdaaa300)) != 0.
  The `beq` branch at 0xdaaa494 targets 0xdaaa4a4, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `beq` branch at 0xdaaa49c targets 0xdaaa4b8 and is always taken.
  The return at 0xdaaa4c4 has v0 = one of 0x0, 0x1.
  The return at 0xdaaa4e4 has v0 = 0x0.
- `__glOdysseyReadFromPMObj` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa4f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaaa4f0-0xdaaa60c (284 bytes).
  It occupies 284 bytes.
  The `lw` at 0xdaaa4fc loads 4 bytes from a7 (arg7 at entry) +0x14.
  The `sw` at 0xdaaa510 stores 4 bytes to a7 (arg7 at entry) +0x14.
  The `lw` at 0xdaaa56c loads 4 bytes from ?.
  The `sw` at 0xdaaa578 stores 4 bytes to ?.
  The `sw` at 0xdaaa5dc stores 4 bytes to a0 (arg0 at entry) +0x21de0.
  The `bgezall` at 0xdaaa588 calls (unnamed) [0xdaaa300] with a0=sp-176, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdaaa5a8 calls __glOdysseyIoctl [0xdabc870] with a0=a0 at entry (arg0), a1=0x6f640006, a2=sp-176, a3=?.
  The `bgtz` branch at 0xdaaa574 targets 0xdaaa560, is taken when t2(?) > 0 (signed), and falls through when t2(?) <= 0 (signed).
  The `beq` branch at 0xdaaa590 targets 0xdaaa5f4, is taken when v0(=ret(0xdaaa300)) == 0, and falls through when v0(=ret(0xdaaa300)) != 0.
  The `beq` branch at 0xdaaa5bc targets 0xdaaa5cc, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `beq` branch at 0xdaaa5c4 targets 0xdaaa5e0 and is always taken.
  The return at 0xdaaa5ec has v0 = one of 0x0, 0x1.
  The return at 0xdaaa604 has v0 = 0x0.
- `__glOdysseySetProgram` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaad4b0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaad4b0-0xdaad968 (1208 bytes).
  It occupies 1208 bytes.
  The `lbu` at 0xdaad4c0 loads 1 byte from a0 (arg0 at entry) +0x21dec.
  The `lw` at 0xdaad4cc loads 4 bytes from a0 (arg0 at entry) +0xa5cc.
  The `lw` at 0xdaad4d8 loads 4 bytes from a0 (arg0 at entry) +0xa5d0.
  31 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdaad4e0, `sw` at 0xdaad544, `sw` at 0xdaad564.
  The `lw` at 0xdaad4e8 loads 4 bytes from a0 (arg0 at entry) +0xa574.
  The `lw` at 0xdaad528 loads 4 bytes from a0 (arg0 at entry) +0x16c44.
  18 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0xdaad54c, `lhu` at 0xdaad568, `lhu` at 0xdaad584.
  The `sw` at 0xdaad600 stores 4 bytes to a0 (arg0 at entry) +0xa5c8.
  2 such `lw` accesses load 4 bytes from ((a1 << 0x5) + a0) +0xa58c, including `lw` at 0xdaad604, `lw` at 0xdaad73c.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x16c40, including `ld` at 0xdaad614, `ld` at 0xdaad738, `ld` at 0xdaad74c.
  The `lw` at 0xdaad620 loads 4 bytes from a0 (arg0 at entry) +0x16c48.
  The `sw` at 0xdaad748 stores 4 bytes to a0 (arg0 at entry) +0xa5cc.
  2 such `lw` accesses load 4 bytes from ((a1 << 0x5) + a0) +0xa590, including `lw` at 0xdaad754, `lw` at 0xdaad75c.
  The `sw` at 0xdaad758 stores 4 bytes to a0 (arg0 at entry) +0xa5d0.
  The `lw` at 0xdaad760 loads 4 bytes from ((a1 << 0x5) + a0) +0xa594.
  2 such `lw` accesses load 4 bytes from ((a1 << 0x5) + a0) +0xa588, including `lw` at 0xdaad848, `lw` at 0xdaad854.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa140, including `sw` at 0xdaad850, `sw` at 0xdaad8b8.
  The `lw` at 0xdaad864 loads 4 bytes from (([((a1 << 0x5) + a0)+42376] << 0x2) + a0) +0xa174.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa118, including `sw` at 0xdaad874, `sw` at 0xdaad8c0.
  The `lw` at 0xdaad884 loads 4 bytes from a0 (arg0 at entry) +0xa140.
  The `lw` at 0xdaad8b4 loads 4 bytes from ((a1 << 0x5) + a0) +0xa584.
  The `lw` at 0xdaad8bc loads 4 bytes from ((a1 << 0x5) + a0) +0xa578.
  The `lw` at 0xdaad8c4 loads 4 bytes from ((a1 << 0x5) + a0) +0xa57c.
  The `sw` at 0xdaad8c8 stores 4 bytes to a0 (arg0 at entry) +0xa11c.
  The `lw` at 0xdaad8d8 loads 4 bytes from ((a1 << 0x5) + a0) +0xa580.
  The `sw` at 0xdaad8e0 stores 4 bytes to a0 (arg0 at entry) +0xa124.
  The `lw` at 0xdaad8ec loads 4 bytes from a0 (arg0 at entry) +0xa118.
  The `lw` at 0xdaad908 loads 4 bytes from a0 (arg0 at entry) +0xa11c.
  The `lw` at 0xdaad92c loads 4 bytes from a0 (arg0 at entry) +0xa124.
  The `beq` branch at 0xdaad4d4 targets 0xdaad4e4, is taken when at(=[a0+138732]:1) == 0, and falls through when at(=[a0+138732]:1) != 0.
  The `beq` branch at 0xdaad4fc targets 0xdaad960, is taken when v1(=[a0+42356]) == 0, and falls through when v1(=[a0+42356]) != 0.
  The `beq` branch at 0xdaad508 targets 0xdaad520, is taken when a3(=[a0+42444]) == 0, and falls through when a3(=[a0+42444]) != 0.
  The `bne` branch at 0xdaad510 targets 0xdaad520, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0xdaad608 targets 0xdaad954, is taken when a5(=[((a1 << 0x5) + a0)+42380]) == 0, and falls through when a5(=[((a1 << 0x5) + a0)+42380]) != 0.
  The `beq` branch at 0xdaad618 targets 0xdaad74c, is taken when a5(=[((a1 << 0x5) + a0)+42380]) == a3(=[a0+42444]), and falls through when a5(=[((a1 << 0x5) + a0)+42380]) != a3(=[a0+42444]).
  The `blez` branch at 0xdaad640 targets 0xdaad744, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `bne` branch at 0xdaad730 targets 0xdaad660, is taken when t1(?) != a4(?), and falls through when t1(?) == a4(?).
  The `beq` branch at 0xdaad744 targets 0xdaad754 and is always taken.
  The `beq` branch at 0xdaad958 targets 0xdaad754 and is always taken.
  The return at 0xdaad4dc has v0 = 0x29808062.
  The return at 0xdaad94c has v0 = ?.
  The return at 0xdaad960 has v0 = 0x29808062.
- `__glOdylc_TexCoord1d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaf900 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaaf900-0xdaaf9f0 (240 bytes).
  It occupies 240 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdaaf908, `lw` at 0xdaaf968.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdaaf910, `lw` at 0xdaaf9ac.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdaaf91c, `lw` at 0xdaaf9d8.
  The `sw` at 0xdaaf99c stores 4 bytes to ?.
  The `swc1` at 0xdaaf9a0 stores 4 bytes to ?.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdaaf9a8, `sw` at 0xdaaf9d0.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdaaf9b4, `sw` at 0xdaaf9ec.
  The `sw` at 0xdaaf9c4 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdaaf950 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaaf93c targets 0xdaaf978, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xdaaf960 targets 0xdaaf9c8, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xdaaf9c0 has v0 = [0x1034]+2.
  The return at 0xdaaf9e8 has v0 = ret(__glSPDlistSpace).
- `__glOdylc_TexCoord2d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab0080 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab0080-0xdab0184 (260 bytes).
  It occupies 260 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdab0088, `lw` at 0xdab00f4.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdab0090, `lw` at 0xdab0140.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdab009c, `lw` at 0xdab016c.
  The `sw` at 0xdab0128 stores 4 bytes to ?.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xdab0130, `swc1` at 0xdab0134.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdab013c, `sw` at 0xdab0164.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdab0148, `sw` at 0xdab0180.
  The `sw` at 0xdab0158 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdab00d8 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdab00c0 targets 0xdab0104, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xdab00ec targets 0xdab015c, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xdab0154 has v0 = [0x1034]+3.
  The return at 0xdab017c has v0 = ret(__glSPDlistSpace).
- `__glOdylc_TexCoord2i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab0490 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab0490-0xdab0584 (244 bytes).
  It occupies 244 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdab0498, `lw` at 0xdab04fc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdab04a0, `lw` at 0xdab0540.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdab04ac, `lw` at 0xdab056c.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdab052c, `sw` at 0xdab0530, `sw` at 0xdab0534.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdab053c, `sw` at 0xdab0564.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdab0548, `sw` at 0xdab0580.
  The `sw` at 0xdab0558 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdab04e0 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdab04c8 targets 0xdab050c, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xdab04f4 targets 0xdab055c, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xdab0554 has v0 = [0x1034]+3.
  The return at 0xdab057c has v0 = ret(__glSPDlistSpace).
- `__glOdylc_TexCoord3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab0cd0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab0cd0-0xdab0dd0 (256 bytes).
  It occupies 256 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdab0cd8, `lw` at 0xdab0d44.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdab0ce0, `lw` at 0xdab0d8c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdab0cec, `lw` at 0xdab0db8.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdab0d74, `sw` at 0xdab0d78, `sw` at 0xdab0d7c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdab0d88, `sw` at 0xdab0db0.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdab0d94, `sw` at 0xdab0dcc.
  The `sw` at 0xdab0da4 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdab0d24 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdab0d08 targets 0xdab0d54, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xdab0d3c targets 0xdab0da8, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xdab0da0 has v0 = [0x1034]+4.
  The return at 0xdab0dc8 has v0 = ret(__glSPDlistSpace).
- `__glOdylc_TexCoord4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab1550 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab1550-0xdab165c (268 bytes).
  It occupies 268 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdab1558, `lw` at 0xdab15cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdab1560, `lw` at 0xdab1618.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdab156c, `lw` at 0xdab1644.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdab15fc, `sw` at 0xdab1600, `sw` at 0xdab1604.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdab1614, `sw` at 0xdab163c.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdab1620, `sw` at 0xdab1658.
  The `sw` at 0xdab1630 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdab15a8 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdab1588 targets 0xdab15dc, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xdab15c4 targets 0xdab1634, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xdab162c has v0 = [0x1034]+5.
  The return at 0xdab1654 has v0 = ret(__glSPDlistSpace).
- `__glOdysseyGetHardwareShadow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc8f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc8f0-0xdabc954 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xdabc93c loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `bgezall` at 0xdabc918 calls __glOdysseyIoctl [0xdabc870] with a0=a0 at entry (arg0), a1=0x6f64000c, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xdabc944 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xdbc1240, a2=?, a3=?.
  The `bltz` branch at 0xdabc920 targets 0xdabc934, is taken when v0(=ret(__glOdysseyIoctl)) < 0 (signed), and falls through when v0(=ret(__glOdysseyIoctl)) >= 0 (signed).
  The `beq` branch at 0xdabc94c targets 0xdabc928 and is always taken.
  The return at 0xdabc92c has v0 = one of ret(__glOdysseyIoctl), ret(?).
- `__glOdysseyDriverMakeCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabd290 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabd290-0xdabd504 (628 bytes).
  It occupies 628 bytes.
  The `lw` at 0xdabd2a0 loads 4 bytes from a0 (arg0 at entry) +0xcdc.
  The `lw` at 0xdabd2cc loads 4 bytes from a0 (arg0 at entry) +0xd7c.
  The `lbu` at 0xdabd2e0 loads 1 byte from a0 (arg0 at entry) +0xc8c.
  The `lbu` at 0xdabd2ec loads 1 byte from a0 (arg0 at entry) +0xd2c.
  The `sw` at 0xdabd32c stores 4 bytes to a0 (arg0 at entry) +0x16c50.
  The `sw` at 0xdabd334 stores 4 bytes to a0 (arg0 at entry) +0x16c54.
  The `sw` at 0xdabd33c stores 4 bytes to a0 (arg0 at entry) +0x16c58.
  The `sw` at 0xdabd344 stores 4 bytes to a0 (arg0 at entry) +0x16c5c.
  The `sw` at 0xdabd34c stores 4 bytes to a0 (arg0 at entry) +0x16c60.
  The `sw` at 0xdabd370 stores 4 bytes to a0 (arg0 at entry) +0x16c64.
  The `sw` at 0xdabd378 stores 4 bytes to a0 (arg0 at entry) +0x16c68.
  The `sw` at 0xdabd380 stores 4 bytes to a0 (arg0 at entry) +0x16c6c.
  The `sw` at 0xdabd38c stores 4 bytes to a0 (arg0 at entry) +0x16c70.
  The `sw` at 0xdabd39c stores 4 bytes to a0 (arg0 at entry) +0x16c74.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16c78, including `sw` at 0xdabd3c4, `sw` at 0xdabd490.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16c7c, including `sw` at 0xdabd3cc, `sw` at 0xdabd498.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16c80, including `sw` at 0xdabd3d4, `sw` at 0xdabd4a0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16c84, including `sw` at 0xdabd3dc, `sw` at 0xdabd4a8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16c8c, including `sw` at 0xdabd3e4, `sw` at 0xdabd4b0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16c90, including `sw` at 0xdabd3ec, `sw` at 0xdabd4b8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16c94, including `sw` at 0xdabd3f4, `sw` at 0xdabd4c4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16c98, including `sw` at 0xdabd3fc, `sw` at 0xdabd4e0.
  The `sw` at 0xdabd404 stores 4 bytes to a0 (arg0 at entry) +0x16ca0.
  The `sw` at 0xdabd40c stores 4 bytes to a0 (arg0 at entry) +0x16ca4.
  The `sw` at 0xdabd414 stores 4 bytes to a0 (arg0 at entry) +0x16ca8.
  The `sw` at 0xdabd41c stores 4 bytes to a0 (arg0 at entry) +0x16cac.
  The `sw` at 0xdabd424 stores 4 bytes to a0 (arg0 at entry) +0x16cb4.
  The `sw` at 0xdabd42c stores 4 bytes to a0 (arg0 at entry) +0x16cb8.
  The `sw` at 0xdabd434 stores 4 bytes to a0 (arg0 at entry) +0x16cbc.
  The `sw` at 0xdabd440 stores 4 bytes to a0 (arg0 at entry) +0x16cc0.
  The `lw` at 0xdabd444 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `bgezall` at 0xdabd30c calls __glOdysseyIoctl [0xdabc870] with a0=a0 at entry (arg0), a1=0x6f640008, a2=sp-128, a3=one of 0x0, 0x2.
  The `jalr` at 0xdabd450 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xdbc1298, a2=?, a3=?.
  The `jalr` at 0xdabd480 calls bzero with a0=a0+93304, a1=0x50, a2=?, a3=?.
  The `jalr` at 0xdabd4dc calls bzero with a0=a0+93344, a1=0x14, a2=?, a3=?.
  The `jalr` at 0xdabd4f4 calls bzero with a0=a0+93364, a1=0x14, a2=?, a3=?.
  The `blez` branch at 0xdabd2bc targets 0xdabd2cc, is taken when at(=[a0+3292]) <= 0 (signed), and falls through when at(=[a0+3292]) > 0 (signed).
  The `blez` branch at 0xdabd2d0 targets 0xdabd2e0, is taken when v1(=[a0+3452]) <= 0 (signed), and falls through when v1(=[a0+3452]) > 0 (signed).
  The `beq` branch at 0xdabd2e4 targets 0xdabd3ac, is taken when a1(=[a0+3212]:1) == 0, and falls through when a1(=[a0+3212]:1) != 0.
  The `beq` branch at 0xdabd2f0 targets 0xdabd3b4, is taken when at(=[a0+3372]:1) == 0, and falls through when at(=[a0+3372]:1) != 0.
  The `bltz` branch at 0xdabd314 targets 0xdabd444, is taken when v0(=ret(__glOdysseyIoctl)) < 0 (signed), and falls through when v0(=ret(__glOdysseyIoctl)) >= 0 (signed).
  The `beq` branch at 0xdabd358 targets 0xdabd470, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xdabd360 targets 0xdabd490, is taken when a0(?) == at(=0x1), and falls through when a0(?) != at(=0x1).
  The `beq` branch at 0xdabd368 targets 0xdabd3c0, is taken when a0(?) == v0(=0x2), and falls through when a0(?) != v0(=0x2).
  The `beq` branch at 0xdabd3ac targets 0xdabd2ec and is always taken.
  The `beq` branch at 0xdabd3b8 targets 0xdabd2f8 and is always taken.
  The `beq` branch at 0xdabd43c targets 0xdabd36c and is always taken.
  The `beq` branch at 0xdabd488 targets 0xdabd36c and is always taken.
  The `beq` branch at 0xdabd4fc targets 0xdabd36c and is always taken.
  The return at 0xdabd3a4 has v0 = 0x1.
  The return at 0xdabd468 has v0 = 0x0.
- `__glOdysseySetDrawbuf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabd510 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabd510-0xdabd884 (884 bytes).
  It occupies 884 bytes.
  The `lw` at 0xdabd58c loads 4 bytes from a0 (arg0 at entry) +0x14.
  10 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x9750, including `sw` at 0xdabd5b0, `sw` at 0xdabd5e0, `sw` at 0xdabd600.
  102 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdabd5b8, `sw` at 0xdabd5c4, `sw` at 0xdabd5cc.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x95c4, including `lw` at 0xdabd614, `lw` at 0xdabd6a4, `lw` at 0xdabd718.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x95bc, including `lw` at 0xdabd694, `lw` at 0xdabd6e8, `lw` at 0xdabd708.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x95c0, including `lw` at 0xdabd69c, `lw` at 0xdabd6f0, `lw` at 0xdabd710.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x95c8, including `lw` at 0xdabd6ac, `lw` at 0xdabd6fc, `lw` at 0xdabd728.
  The `bgezall` at 0xdabd57c calls __glOdysseyIoctl [0xdabc870] with a0=a0 at entry (arg0), a1=0x6f640009, a2=sp-80, a3=a3 at entry (arg3).
  The `jalr` at 0xdabd598 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xdbc12b8, a2=?, a3=?.
  The `beq` branch at 0xdabd530 targets 0xdabd840, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xdabd53c targets 0xdabd848, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0xdabd548 targets 0xdabd850, is taken when a3 == 0, and falls through when a3 != 0.
  The `beq` branch at 0xdabd554 targets 0xdabd568, is taken when a4 == 0, and falls through when a4 != 0.
  The `beq` branch at 0xdabd584 targets 0xdabd5a4, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `beq` branch at 0xdabd630 targets 0xdabd860, is taken when (at(?) & 0x1) == 0, and falls through when (at(?) & 0x1) != 0.
  The `beq` branch at 0xdabd794 targets 0xdabd874, is taken when (a1(?) & 0x1) == 0, and falls through when (a1(?) & 0x1) != 0.
  The `bne` branch at 0xdabd840 targets 0xdabd544, is taken when a2 != 0, and falls through when a2 == 0.
  The `bne` branch at 0xdabd848 targets 0xdabd550, is taken when a3 != 0, and falls through when a3 == 0.
  The `beq` branch at 0xdabd850 targets 0xdabd56c, is taken when a4 == 0, and falls through when a4 != 0.
  The `beq` branch at 0xdabd858 targets 0xdabd560 and is always taken.
  The `beq` branch at 0xdabd86c targets 0xdabd690 and is always taken.
  The `beq` branch at 0xdabd87c targets 0xdabd7e4 and is always taken.
  The return at 0xdabd838 has v0 = [a0+38340].
- `__glOdyim_Vertex2d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad880 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad880-0xdbad8a0 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdbad890 stores 4 bytes to abs 0x4000.
  2 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbad894, `swc1` at 0xdbad89c.
  The return at 0xdbad898 has v0 = ?.
- `__glOdyim_Vertex3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbada80 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbada80-0xdbadaa8 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdbada94 stores 4 bytes to abs 0x4000.
  3 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbada98, `swc1` at 0xdbada9c, `swc1` at 0xdbadaa4.
  The return at 0xdbadaa0 has v0 = ?.
- `__glOdyim_Vertex3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbadb80 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbadb80-0xdbadbb4 (52 bytes).
  It occupies 52 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbadba0, `sw` at 0xdbadba4, `sw` at 0xdbadba8.
  The return at 0xdbadbac has v0 = ?.
- `__glOdyim_Vertex4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbadd80 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbadd80-0xdbaddc0 (64 bytes).
  It occupies 64 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbadda8, `sw` at 0xdbaddac, `sw` at 0xdbaddb0.
  The return at 0xdbaddb8 has v0 = ?.
- `__glOdyim_TexCoord3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb2a80 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb2a80-0xdbb2aa8 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdbb2a94 stores 4 bytes to abs 0x4000.
  3 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbb2a98, `swc1` at 0xdbb2a9c, `swc1` at 0xdbb2aa4.
  The return at 0xdbb2aa0 has v0 = ?.
- `__glOdyim_ScratchColor3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3140 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3140-0xdbb315c (28 bytes).
  It occupies 28 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3148, `sw` at 0xdbb314c, `sw` at 0xdbb3150.
  The return at 0xdbb3154 has v0 = ?.
- `__glOdyim_Color3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3200 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3200-0xdbb3228 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdbb3214 stores 4 bytes to abs 0x4000.
  3 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbb3218, `swc1` at 0xdbb321c, `swc1` at 0xdbb3224.
  The return at 0xdbb3220 has v0 = ?.
- `__glOdyim_ScratchColor3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3240 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3240-0xdbb3268 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdbb3254 stores 4 bytes to abs 0x4000.
  3 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbb3258, `swc1` at 0xdbb325c, `swc1` at 0xdbb3264.
  The return at 0xdbb3260 has v0 = ?.
- `__glOdyim_ScratchColor3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3440 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3440-0xdbb345c (28 bytes).
  It occupies 28 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3448, `sw` at 0xdbb344c, `sw` at 0xdbb3450.
  The return at 0xdbb3454 has v0 = ?.
- `__glOdyim_ScratchColor3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3540 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3540-0xdbb355c (28 bytes).
  It occupies 28 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3548, `sw` at 0xdbb354c, `sw` at 0xdbb3550.
  The return at 0xdbb3554 has v0 = ?.
- `__glOdyim_ScratchColor3ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3740 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3740-0xdbb375c (28 bytes).
  It occupies 28 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3748, `sw` at 0xdbb374c, `sw` at 0xdbb3750.
  The return at 0xdbb3754 has v0 = ?.
- `__glOdyim_ScratchColor3us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3840 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3840-0xdbb385c (28 bytes).
  It occupies 28 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3848, `sw` at 0xdbb384c, `sw` at 0xdbb3850.
  The return at 0xdbb3854 has v0 = ?.
- `__glOdyim_ScratchColor4b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3940 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3940-0xdbb3960 (32 bytes).
  It occupies 32 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3948, `sw` at 0xdbb394c, `sw` at 0xdbb3950.
  The return at 0xdbb3958 has v0 = ?.
- `__glOdyim_ScratchColor4dv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3ac0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3ac0-0xdbb3b00 (64 bytes).
  It occupies 64 bytes.
  The `ldc1` at 0xdbb3ac0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xdbb3ac8 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xdbb3ad0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xdbb3ad8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0xdbb3ae0 stores 4 bytes to abs 0x4000.
  4 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbb3ae8, `swc1` at 0xdbb3af0, `swc1` at 0xdbb3af4.
  The return at 0xdbb3af8 has v0 = ?.
- `__glOdyim_ScratchColor4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3c40 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3c40-0xdbb3c60 (32 bytes).
  It occupies 32 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3c48, `sw` at 0xdbb3c4c, `sw` at 0xdbb3c50.
  The return at 0xdbb3c58 has v0 = ?.
- `__glOdyim_ScratchColor4s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3d40 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3d40-0xdbb3d60 (32 bytes).
  It occupies 32 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3d48, `sw` at 0xdbb3d4c, `sw` at 0xdbb3d50.
  The return at 0xdbb3d58 has v0 = ?.
- `__glOdyim_ScratchColor4ub` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3e40 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3e40-0xdbb3e60 (32 bytes).
  It occupies 32 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3e48, `sw` at 0xdbb3e4c, `sw` at 0xdbb3e50.
  The return at 0xdbb3e58 has v0 = ?.
- `__glOdyim_ScratchColor4ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3f40 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3f40-0xdbb3f60 (32 bytes).
  It occupies 32 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3f48, `sw` at 0xdbb3f4c, `sw` at 0xdbb3f50.
  The return at 0xdbb3f58 has v0 = ?.
- `__glOdyim_ScratchColor4us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb4040 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb4040-0xdbb4060 (32 bytes).
  It occupies 32 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb4048, `sw` at 0xdbb404c, `sw` at 0xdbb4050.
  The return at 0xdbb4058 has v0 = ?.
- `__glOdyim_ScratchIndexd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb4140 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb4140-0xdbb4158 (24 bytes).
  It occupies 24 bytes.
  The `sw` at 0xdbb414c stores 4 bytes to abs 0x4000.
  The `swc1` at 0xdbb4154 stores 4 bytes to abs 0x4000.
  The return at 0xdbb4150 has v0 = ?.
- `__glXOpenGraphicsDevice` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf607bc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf607bc-0xcf60954 (408 bytes).
  It occupies 408 bytes.
  5 such `ld` accesses load 8 bytes from abs 0x1028, including `ld` at 0xcf607e0, `ld` at 0xcf60868, `ld` at 0xcf60898.
  The `lw` at 0xcf607ec loads 4 bytes from ([0x1028]:8 + (a0 << 0x2)) +0x4.
  2 such `lw` accesses load 4 bytes from [0x1028]:8 +0x104, including `lw` at 0xcf6086c, `lw` at 0xcf6092c.
  The `sw` at 0xcf608b0 stores 4 bytes to ([0x1028]:8 + (a0 << 0x2)) +0x4.
  The `sw` at 0xcf60920 stores 4 bytes to [0x1028]:8 +0x104.
  The `jalr` at 0xcf60818 calls __glXFatal with a0=0x0, a1=0xcf935d0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf60838 calls open with a0=0xcf935f0, a1=0x802, a2=?, a3=?.
  The `jalr` at 0xcf60858 calls fcntl with a0=ret(open), a1=0x2, a2=0x5, a3=?.
  The `jalr` at 0xcf60890 calls __glXFatal with a0=0x0, a1=0xcf935d0, a2=?, a3=[[0x1028]:8+260].
  The `jalr` at 0xcf608c4 calls __glXFatal with a0=0x0, a1=0xcf93600, a2=?, a3=?.
  The `jalr` at 0xcf608e0 calls __glXFatal with a0=0x0, a1=0xcf93620, a2=?, a3=?.
  The `jalr` at 0xcf608fc calls ioctl with a0=ret(open), a1=0x65, a2=0x0, a3=[[0x1028]:8+260].
  The `jalr` at 0xcf60940 calls __glXFatal with a0=0x0, a1=0xcf93630, a2=?, a3=?.
  The `beq` branch at 0xcf607d8 targets 0xcf60808, is taken when a0 >= 0x41 (signed), and falls through when a0 < 0x41 (signed).
  The `bltz` branch at 0xcf607f0 targets 0xcf60828, is taken when v1(=[([0x1028]:8 + (a0 << 0x2))+4]) < 0 (signed), and falls through when v1(=[([0x1028]:8 + (a0 << 0x2))+4]) >= 0 (signed).
  The `beq` branch at 0xcf60820 targets 0xcf607e0 and is always taken.
  The `bltz` branch at 0xcf60844 targets 0xcf608b4, is taken when v0(=ret(open)) < 0 (signed), and falls through when v0(=ret(open)) >= 0 (signed).
  The `bltz` branch at 0xcf60860 targets 0xcf608d4, is taken when v0(=ret(fcntl)) < 0 (signed), and falls through when v0(=ret(fcntl)) >= 0 (signed).
  The `bltz` branch at 0xcf60870 targets 0xcf608f0, is taken when a3(=[[0x1028]:8+260]) < 0 (signed), and falls through when a3(=[[0x1028]:8+260]) >= 0 (signed).
  The `beq` branch at 0xcf60878 targets 0xcf608a0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xcf608ac targets 0xcf607f8 and is always taken.
  The `beq` branch at 0xcf608cc targets 0xcf6084c and is always taken.
  The `beq` branch at 0xcf608e8 targets 0xcf60868 and is always taken.
  The `blez` branch at 0xcf60904 targets 0xcf60930, is taken when v0(=ret(ioctl)) <= 0 (signed), and falls through when v0(=ret(ioctl)) > 0 (signed).
  The `beq` branch at 0xcf60928 targets 0xcf60874 and is always taken.
  The `beq` branch at 0xcf6094c targets 0xcf6090c and is always taken.
  The return at 0xcf60800 has v0 = ?.
- `glXSelectEventSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf76340 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf76340-0xcf7646c (300 bytes).
  It occupies 300 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0xcf76380, `ld` at 0xcf7640c.
  The `ld` at 0xcf7638c loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0xcf76398, `ld` at 0xcf763c8, `ld` at 0xcf76458.
  The `ld` at 0xcf7639c loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0xcf763b0 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0xcf763b8 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0xcf763c0, `sb` at 0xcf76400.
  The `ld` at 0xcf763cc loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf763d4 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sd` at 0xcf763e0 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sw` at 0xcf763e8 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0xcf763f0 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0xcf763f4 stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0xcf763fc stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0xcf76408 stores 4 bytes to [a0+176]:8 +0x14.
  The `ld` at 0xcf76418 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0xcf76424 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0xcf76368 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf76390 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0xcf7641c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x10, a4=a2 at entry (arg2), a5=[a0+2408]:8.
  The `jalr` at 0xcf76430 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf7644c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+24.
  The `beq` branch at 0xcf76378 targets 0xcf7645c, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xcf76384 targets 0xcf76398, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0xcf763a8 targets 0xcf7644c, is taken when v1(=[a0+184]:8) < a3(=[a0+176]:8+24) (unsigned), and falls through when v1(=[a0+184]:8) >= a3(=[a0+176]:8+24) (unsigned).
  The `beq` branch at 0xcf76410 targets 0xcf76424, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf76428 targets 0xcf7643c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf76454 targets 0xcf763b0 and is always taken.
  The return at 0xcf76444 has v0 = one of ?, ret(?).
  The return at 0xcf76464 has v0 = ?.
- `__glXGetDrawableAttributes` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf765dc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf765dc-0xcf769f8 (1052 bytes).
  It occupies 1052 bytes.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0xcf76628, `ld` at 0xcf766e8, `ld` at 0xcf767c8.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x0, including `ld` at 0xcf76634, `ld` at 0xcf76738.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0xcf76640, `ld` at 0xcf76678, `ld` at 0xcf76744.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb8, including `ld` at 0xcf76644, `ld` at 0xcf76748.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xa0, including `sd` at 0xcf7665c, `sd` at 0xcf76760.
  2 such `sh` accesses store 2 bytes to [a0+176]:8 +0x2, including `sh` at 0xcf76664, `sh` at 0xcf76768.
  4 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0xcf7666c, `sb` at 0xcf766b8, `sb` at 0xcf76770.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x98, including `ld` at 0xcf76674, `ld` at 0xcf76778.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x98, including `sd` at 0xcf76680, `sd` at 0xcf76784.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xb0, including `sd` at 0xcf76688, `sd` at 0xcf7678c.
  The `sw` at 0xcf76694 stores 4 bytes to [a0+176]:8 +0xc.
  2 such `sw` accesses store 4 bytes to [a0+176]:8 +0x4, including `sw` at 0xcf766a0, `sw` at 0xcf76794.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x1, including `sb` at 0xcf766ac, `sb` at 0xcf767a0.
  5 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0xcf766f4, `ld` at 0xcf767d4, `ld` at 0xcf768f0.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0xcf76700, `ld` at 0xcf767e0, `ld` at 0xcf768fc.
  The `sb` at 0xcf76864 stores 1 byte to a2 (arg2 at entry) +0x21.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xcf76874, `lw` at 0xcf76894.
  The `ld` at 0xcf768a0 loads 8 bytes from table(0xcfa48e0) +0x0.
  The `sd` at 0xcf768b0 stores 8 bytes to a2 (arg2 at entry) +0x8.
  The `sw` at 0xcf768b8 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sb` at 0xcf768c0 stores 1 byte to a2 (arg2 at entry) +0x20.
  The `sw` at 0xcf768c8 stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `sw` at 0xcf768d0 stores 4 bytes to a2 (arg2 at entry) +0x14.
  The `sd` at 0xcf768d8 stores 8 bytes to a2 (arg2 at entry) +0x18.
  The `sd` at 0xcf768e0 stores 8 bytes to a2 (arg2 at entry) +0x28.
  The `jalr` at 0xcf7660c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf76638 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf766b4 calls _XReply with a0=a0 at entry (arg0), a1=sp-176, a2=0x0, a3=0x0, a6=ret(__glXSetupForCommand), a7=0x11.
  The `jalr` at 0xcf766d8 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf766f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf7670c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf7673c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf767a8 calls _XReply with a0=a0 at entry (arg0), a1=sp-144, a2=0x0, a3=0x0, a4=ret(__glXSetupForCommand), a5=0x1d, a6=a1 at entry (arg1), a7=[a0+152]:8+1.
  The `jalr` at 0xcf767d8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf767ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf76814 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+176]:8+16, a6=ret(__glXSetupForCommand).
  The `jalr` at 0xcf76830 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xcf76844 calls memset with a0=a2 at entry (arg2), a1=0x0, a2=0x30, a3=?.
  The `jalr` at 0xcf768f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf76908 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf76914 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf76948 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf7695c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf769a0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=ret(__glXSetupForCommand).
  The `jalr` at 0xcf769c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf769d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xcf7661c targets 0xcf76980, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xcf76624 targets 0xcf76730, is taken when v1(=a3) == 0, and falls through when v1(=a3) != 0.
  The `beq` branch at 0xcf7662c targets 0xcf76640, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0xcf76650 targets 0xcf76810, is taken when a4(=[a0+184]:8) < a5(=[a0+176]:8+16) (unsigned), and falls through when a4(=[a0+184]:8) >= a5(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0xcf766bc targets 0xcf76938, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xcf766cc targets 0xcf767c8, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0xcf766e0 targets 0xcf76824, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xcf766ec targets 0xcf76700, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf76704 targets 0xcf76718, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf76730 targets 0xcf76744, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0xcf76754 targets 0xcf7699c, is taken when at(=[a0+184]:8) < v1(=[a0+176]:8+8) (unsigned), and falls through when at(=[a0+184]:8) >= v1(=[a0+176]:8+8) (unsigned).
  The `beq` branch at 0xcf767b0 targets 0xcf769b0, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0xcf767c0 targets 0xcf766d4, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0xcf767cc targets 0xcf767e0, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf767e4 targets 0xcf767f8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf7681c targets 0xcf76654 and is always taken.
  The `blez` branch at 0xcf76850 targets 0xcf768e4, is taken when s2(?) <= 0 (signed), and falls through when s2(?) > 0 (signed).
  The `beq` branch at 0xcf7685c targets 0xcf76874 and is always taken.
  The `beq` branch at 0xcf7686c targets 0xcf768e4, is taken when s2(?) == a2(?), and falls through when s2(?) != a2(?).
  The `beq` branch at 0xcf76898 targets 0xcf7686c, is taken when a7(?) >= 0x1a (unsigned), and falls through when a7(?) < 0x1a (unsigned).
  The `beq` branch at 0xcf768ac targets 0xcf7686c and is always taken.
  The `beq` branch at 0xcf768b4 targets 0xcf7686c and is always taken.
  The `beq` branch at 0xcf768bc targets 0xcf7686c and is always taken.
  The `beq` branch at 0xcf768c4 targets 0xcf7686c and is always taken.
  The `beq` branch at 0xcf768cc targets 0xcf7686c and is always taken.
  The `beq` branch at 0xcf768d4 targets 0xcf7686c and is always taken.
  The `beq` branch at 0xcf768dc targets 0xcf7686c and is always taken.
  The `beq` branch at 0xcf768e8 targets 0xcf768fc, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf76900 targets 0xcf76910, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf7693c targets 0xcf76950, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf76954 targets 0xcf76968, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf769a8 targets 0xcf76758 and is always taken.
  The `beq` branch at 0xcf769b4 targets 0xcf769c8, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf769cc targets 0xcf769e0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0xcf76728 has v0 = 0x0.
  The return at 0xcf76808 has v0 = 0x0.
  The return at 0xcf76930 has v0 = 0x1.
  The return at 0xcf76978 has v0 = 0x0.
  The return at 0xcf76994 has v0 = 0x0.
  The return at 0xcf769f0 has v0 = 0x0.
  The indirect jump at 0xcf768a4 uses the jump table at 0xcfa48e0 with targets 0xcf768b4, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf768ac, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf768bc, 0xcf76864, 0xcf768c4, 0xcf768cc, 0xcf768d4, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf768dc.
  The indirect jump at 0xcf768a4 uses the jump table at 0xcfa48e0 with targets 0xcf768b4, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf768ac, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf768bc, 0xcf76864, 0xcf768c4, 0xcf768cc, 0xcf768d4, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf768dc.
  The indirect jump at 0xcf768a4 uses the jump table at 0xcfa48e0 with targets 0xcf768b4, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf768ac, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf768bc, 0xcf76864, 0xcf768c4, 0xcf768cc, 0xcf768d4, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf768dc.
  The indirect jump at 0xcf768a4 uses the jump table at 0xcfa48e0 with targets 0xcf768b4, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf768ac, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf768bc, 0xcf76864, 0xcf768c4, 0xcf768cc, 0xcf768d4, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf768dc.
  The indirect jump at 0xcf768a4 uses the jump table at 0xcfa48e0 with targets 0xcf768b4, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf768ac, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf768bc, 0xcf76864, 0xcf768c4, 0xcf768cc, 0xcf768d4, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf7686c, 0xcf768dc.
- `glXDestroyGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf769f8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf769f8-0xcf76b54 (348 bytes).
  It occupies 348 bytes.
  The `lw` at 0xcf76a58 loads 4 bytes from ret(__glXAddDrawableInterest) +0x20.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0xcf76a6c, `ld` at 0xcf76ae4.
  The `ld` at 0xcf76a78 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0xcf76a84, `ld` at 0xcf76ab8, `ld` at 0xcf76b48.
  The `ld` at 0xcf76a88 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0xcf76a9c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0xcf76aa4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0xcf76aac, `sb` at 0xcf76ae0.
  The `ld` at 0xcf76ab4 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf76ac0 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf76ac8 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0xcf76ad0 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0xcf76ad8 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0xcf76adc stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0xcf76af0 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0xcf76afc loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `sd` at 0xcf76b50 stores 8 bytes to ret(__glXAddDrawableInterest) +0x0.
  The `jalr` at 0xcf76a20 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf76a40 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf76a50 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf76a64 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf76a7c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?.
  The `jalr` at 0xcf76af4 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=[a0+152]:8+1, a3=[a0+176]:8+16.
  The `jalr` at 0xcf76b08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf76b3c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+16.
  The `beq` branch at 0xcf76a30 targets 0xcf76b28, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xcf76a5c targets 0xcf76b4c, is taken when v1(=[ret(__glXAddDrawableInterest)+32]) == 0, and falls through when v1(=[ret(__glXAddDrawableInterest)+32]) != 0.
  The `beq` branch at 0xcf76a70 targets 0xcf76a84, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `bne` branch at 0xcf76a94 targets 0xcf76b3c, is taken when a2(=[a0+184]:8) < a3(=[a0+176]:8+16) (unsigned), and falls through when a2(=[a0+184]:8) >= a3(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0xcf76ae8 targets 0xcf76afc, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf76b00 targets 0xcf76b14, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf76b44 targets 0xcf76a9c and is always taken.
  The `beq` branch at 0xcf76b4c targets 0xcf76a60 and is always taken.
  The return at 0xcf76b20 has v0 = one of ?, ret(?).
  The return at 0xcf76b34 has v0 = ?.
- `glXCreateGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf772f4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf772f4-0xcf776a8 (948 bytes).
  It occupies 948 bytes.
  The `ld` at 0xcf77348 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `sw` at 0xcf7737c stores 4 bytes to ret(__glXAddDrawableInterest) +0x40.
  2 such `lw` accesses load 4 bytes from a4 (arg4 at entry) +0x0, including `lw` at 0xcf77380, `lw` at 0xcf774d4.
  10 such `lw` accesses load 4 bytes from ?, including `lw` at 0xcf77390, `lw` at 0xcf773a0, `lw` at 0xcf773b0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0xcf773f4, `ld` at 0xcf77560.
  The `ld` at 0xcf77400 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0xcf77414, `ld` at 0xcf7744c, `ld` at 0xcf775e4.
  The `ld` at 0xcf7741c loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0xcf77434 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0xcf7743c stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0xcf77444, `sb` at 0xcf77470.
  The `ld` at 0xcf77448 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf77454 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf7745c stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sb` at 0xcf77464 stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0xcf77480 stores 4 bytes to [a0+176]:8 +0x4.
  The `lw` at 0xcf77488 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xcf7748c stores 4 bytes to [a0+176]:8 +0xc.
  The `lw` at 0xcf77494 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xcf77498 stores 4 bytes to [a0+176]:8 +0x1c.
  The `sw` at 0xcf774a0 stores 4 bytes to [a0+176]:8 +0x18.
  The `sw` at 0xcf774ac stores 4 bytes to [a0+176]:8 +0x14.
  The `sw` at 0xcf774b8 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0xcf774d8 stores 4 bytes to [a0+176]:8 +0x20.
  The `lw` at 0xcf774e0 loads 4 bytes from a4 (arg4 at entry) +0x4.
  The `sw` at 0xcf774ec stores 4 bytes to [a0+176]:8 +0x24.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xcf77518, `sw` at 0xcf77520, `sw` at 0xcf77528.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0xcf7756c, `ld` at 0xcf775f8.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0xcf77578, `ld` at 0xcf77604.
  The `sd` at 0xcf7764c stores 8 bytes to ret(__glXAddDrawableInterest) +0x0.
  The `jalr` at 0xcf77330 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf7734c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77360 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77404 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0xcf77554 calls _XReply with a0=a0 at entry (arg0), a1=sp-176, a2=0x0, a3=0x0.
  The `jalr` at 0xcf77570 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0xcf77584 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77590 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf775dc calls _XFlush with a0=a0 at entry (arg0), a1=[a0+176]:8, a2=?, a3=?.
  The `jalr` at 0xcf775fc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0xcf77610 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77628 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=sp-176, a2=0x11, a3=0x0.
  The `jalr` at 0xcf77634 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77648 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?, a7=ret(__glXAddDrawableInterest).
  The `jalr` at 0xcf77680 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x10, a3=0x0, a5=ret(__glXAddDrawableInterest).
  The `beq` branch at 0xcf77340 targets 0xcf775b8, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xcf7736c targets 0xcf77670, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `beq` branch at 0xcf77378 targets 0xcf773f4, is taken when s2(=a4) == 0, and falls through when s2(=a4) != 0.
  The `beq` branch at 0xcf77388 targets 0xcf773f4, is taken when at(=[a4]) == 0, and falls through when at(=[a4]) != 0.
  The `beq` branch at 0xcf77398 targets 0xcf773f4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xcf773a8 targets 0xcf773f4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xcf773b8 targets 0xcf773f4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xcf773c8 targets 0xcf773f4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xcf773d8 targets 0xcf773f4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xcf773ec targets 0xcf77390, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xcf773f8 targets 0xcf77410, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `bne` branch at 0xcf7742c targets 0xcf775d8, is taken when a6(=[a0+184]:8) < at(?) (unsigned), and falls through when a6(=[a0+184]:8) >= at(?) (unsigned).
  The `beq` branch at 0xcf774b4 targets 0xcf77544, is taken when s2(=a4) == 0, and falls through when s2(=a4) != 0.
  The `bne` branch at 0xcf774bc targets 0xcf77544, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xcf774cc targets 0xcf774f0, is taken when (v0(?) & 0x1) == 0, and falls through when (v0(?) & 0x1) != 0.
  The `beq` branch at 0xcf774f8 targets 0xcf77544, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xcf7753c targets 0xcf77514, is taken when v0(?) != a2(=-0x1), and falls through when v0(?) == a2(=-0x1).
  The `beq` branch at 0xcf7755c targets 0xcf775f0, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xcf77564 targets 0xcf77578, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf7757c targets 0xcf7758c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf775e8 targets 0xcf77434 and is always taken.
  The `beq` branch at 0xcf775f0 targets 0xcf77604, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf77608 targets 0xcf77618, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0xcf775b0 has v0 = ret(?).
  The return at 0xcf775d0 has v0 = 0x0.
  The return at 0xcf77668 has v0 = 0x0.
  The return at 0xcf776a0 has v0 = 0x0.
- `glXGetVideoSyncSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf776a8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf776a8-0xcf77734 (140 bytes).
  It occupies 140 bytes.
  2 such `ld` accesses load 8 bytes from abs 0x1028, including `ld` at 0xcf776a8, `ld` at 0xcf776e0.
  The `ld` at 0xcf776ac loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0xcf776cc loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `lw` at 0xcf776d8 loads 4 bytes from [[0x1028]:8+280]:8 +0x128.
  The `lw` at 0xcf776e4 loads 4 bytes from [0x1028]:8 +0x108.
  The `lw` at 0xcf77704 loads 4 bytes from (([[0x1028]:8+264] << 0x2) + [0x1028]:8) +0x4.
  The `sw` at 0xcf77710 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jalr` at 0xcf77700 calls ioctl with a0=[(([[0x1028]:8+264] << 0x2) + [0x1028]:8)+4], a1=0x3fe, a2=sp-48, a3=a3 at entry (arg3), a4=[[0x1028]:8+280]:8.
  The `beq` branch at 0xcf776c4 targets 0xcf77728, is taken when a4(=[[0x1028]:8+280]:8) == 0, and falls through when a4(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0xcf776d0 targets 0xcf77728, is taken when at(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when at(=[[[0x1028]:8+280]:8+280]) != 0.
  The return at 0xcf77720 has v0 = 0x0.
  The return at 0xcf7772c has v0 = 0x5.
- `glXWaitVideoSyncSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf77734 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf77734-0xcf777fc (200 bytes).
  It occupies 200 bytes.
  2 such `ld` accesses load 8 bytes from abs 0x1028, including `ld` at 0xcf77734, `ld` at 0xcf777b4.
  The `ld` at 0xcf77740 loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0xcf77760 loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `lw` at 0xcf777a4 loads 4 bytes from [[0x1028]:8+280]:8 +0x128.
  The `lw` at 0xcf777b8 loads 4 bytes from [0x1028]:8 +0x108.
  The `lw` at 0xcf777d8 loads 4 bytes from (([[0x1028]:8+264] << 0x2) + [0x1028]:8) +0x4.
  The `sw` at 0xcf777f8 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xcf777d4 calls ioctl with a0=[(([[0x1028]:8+264] << 0x2) + [0x1028]:8)+4], a1=0x3ff, a2=sp-80, a3=a3 at entry (arg3), a4=a0 at entry (arg0), a5=a1 at entry (arg1), a6=[[0x1028]:8+280]:8.
  The `beq` branch at 0xcf77758 targets 0xcf77794, is taken when a6(=[[0x1028]:8+280]:8) == 0, and falls through when a6(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0xcf77764 targets 0xcf77794, is taken when at(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when at(=[[[0x1028]:8+280]:8+280]) != 0.
  The `blez` branch at 0xcf7776c targets 0xcf77784, is taken when a4(=a0) <= 0 (signed), and falls through when a4(=a0) > 0 (signed).
  The `bltz` branch at 0xcf77774 targets 0xcf77784, is taken when a5(=a1) < 0 (signed), and falls through when a5(=a1) >= 0 (signed).
  The `bne` branch at 0xcf7777c targets 0xcf777a4, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The return at 0xcf7778c has v0 = 0x6.
  The return at 0xcf7779c has v0 = 0x5.
  The return at 0xcf777f4 has v0 = 0x0.
- `glXDestroyGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf777fc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf777fc-0xcf77950 (340 bytes).
  It occupies 340 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0xcf77868, `ld` at 0xcf778e4.
  The `ld` at 0xcf77874 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0xcf77880, `ld` at 0xcf778b4, `ld` at 0xcf7794c.
  The `ld` at 0xcf77884 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0xcf77898 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0xcf778a0 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0xcf778a8, `sb` at 0xcf778e0.
  The `ld` at 0xcf778b0 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf778bc stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf778c4 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0xcf778c8 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0xcf778d0 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0xcf778d8 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0xcf778dc stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0xcf778f0 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0xcf778fc loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0xcf77824 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf77844 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77854 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77860 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77878 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?.
  The `jalr` at 0xcf778f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=[a0+152]:8+1, a3=[a0+176]:8+16.
  The `jalr` at 0xcf77908 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77940 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+16.
  The `beq` branch at 0xcf77830 targets 0xcf7792c, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xcf77838 targets 0xcf77928, is taken when s1(=a1) == 0, and falls through when s1(=a1) != 0.
  The `beq` branch at 0xcf7786c targets 0xcf77880, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `bne` branch at 0xcf77890 targets 0xcf77940, is taken when a2(=[a0+184]:8) < a3(=[a0+176]:8+16) (unsigned), and falls through when a2(=[a0+184]:8) >= a3(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0xcf778e8 targets 0xcf778fc, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf77900 targets 0xcf77914, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf77948 targets 0xcf77898 and is always taken.
  The return at 0xcf77920 has v0 = one of ?, ret(?).
  The return at 0xcf77938 has v0 = ret(__glXSetupForCommand).
- `glXCreateGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf77a14 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf77a14-0xcf77de4 (976 bytes).
  It occupies 976 bytes.
  The `ld` at 0xcf77aa8 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `sd` at 0xcf77b08 stores 8 bytes to ret(__glXAddDrawableInterest) +0x48.
  The `sw` at 0xcf77b10 stores 4 bytes to ret(__glXAddDrawableInterest) +0x40.
  The `sd` at 0xcf77b14 stores 8 bytes to ret(__glXAddDrawableInterest) +0x10.
  The `sb` at 0xcf77b1c stores 1 byte to ret(__glXAddDrawableInterest) +0x2c.
  The `sw` at 0xcf77b2c stores 4 bytes to ret(__glXAddDrawableInterest) +0xc.
  The `sd` at 0xcf77b30 stores 8 bytes to ret(__glXAddDrawableInterest) +0x18.
  3 such `ld` accesses load 8 bytes from abs 0xcfa8490, including `ld` at 0xcf77b5c, `ld` at 0xcf77b98, `ld` at 0xcf77bcc.
  The `sw` at 0xcf77b74 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x0.
  The `sw` at 0xcf77b90 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x4.
  The `sw` at 0xcf77ba4 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x8.
  The `sw` at 0xcf77bd8 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0xc.
  The `sw` at 0xcf77bf8 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x10.
  The `sw` at 0xcf77c10 stores 4 bytes to ret(__glXCreateVideoSourcePrivate) +0x14.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0xcf77c14, `ld` at 0xcf77cd0.
  The `ld` at 0xcf77c20 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0xcf77c30, `ld` at 0xcf77c64, `ld` at 0xcf77d74.
  The `ld` at 0xcf77c34 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0xcf77c48 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0xcf77c50, `sb` at 0xcf77c8c.
  The `sh` at 0xcf77c58 stores 2 bytes to [a0+176]:8 +0x2.
  The `ld` at 0xcf77c60 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf77c6c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf77c78 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0xcf77c7c stores 4 bytes to [a0+176]:8 +0x14.
  The `sw` at 0xcf77c80 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0xcf77c84 stores 4 bytes to [a0+176]:8 +0x8.
  The `sb` at 0xcf77c88 stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0xcf77c98 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0xcf77ca0 stores 4 bytes to [a0+176]:8 +0x4.
  The `lw` at 0xcf77ca8 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x4.
  The `sw` at 0xcf77cac stores 4 bytes to [a0+176]:8 +0x18.
  The `lw` at 0xcf77cb0 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x8.
  The `sw` at 0xcf77cb4 stores 4 bytes to [a0+176]:8 +0x1c.
  The `lw` at 0xcf77cb8 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0xc.
  The `sw` at 0xcf77cbc stores 4 bytes to [a0+176]:8 +0x20.
  The `lw` at 0xcf77cc0 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x10.
  The `sw` at 0xcf77cc4 stores 4 bytes to [a0+176]:8 +0x24.
  The `lw` at 0xcf77cc8 loads 4 bytes from ret(__glXCreateVideoSourcePrivate) +0x14.
  The `sw` at 0xcf77ccc stores 4 bytes to [a0+176]:8 +0x28.
  The `ld` at 0xcf77cdc loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0xcf77cec loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0xcf77a48 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf77a94 calls __glXInitializeVideoLibrary with a0=?, a1=?, a2=?, a3=?, a7=0x2.
  The `jalr` at 0xcf77aac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77ac0 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77b34 calls __glXCreateVideoSourcePrivate with a0=ret(__glXAddDrawableInterest)+64, a1=0x3, a2=?, a3=?, a4=ret(__glXAddDrawableInterest).
  The `jalr` at 0xcf77b70 calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x4, a4=sp-256, a6=ret(__glXCreateVideoSourcePrivate), a7=ret(__glXCreateVideoSourcePrivate).
  The `jalr` at 0xcf77bac calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x6, a4=sp-256.
  The `jalr` at 0xcf77be0 calls (unknown callee) with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x7, a4=sp-256.
  The `bgezall` at 0xcf77c00 calls (unnamed) [0xcf77950] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77c24 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?, a6=ret(__glXCreateVideoSourcePrivate), a7=a0 at entry (arg0).
  The `jalr` at 0xcf77ce0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?, a6=[ret(__glXCreateVideoSourcePrivate)+20], a7=[ret(__glXCreateVideoSourcePrivate)+16].
  The `jalr` at 0xcf77cf8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77d04 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77d40 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?, a6=ret(__glXCreateVideoSourcePrivate).
  The `jalr` at 0xcf77d64 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0xcf77d7c calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=a5 at entry (arg5), a3=?.
  The `jalr` at 0xcf77da0 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=a5 at entry (arg5), a3=?.
  The `jalr` at 0xcf77dc4 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `beq` branch at 0xcf77a68 targets 0xcf77af0, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xcf77a70 targets 0xcf77a94, is taken when s0(=a4) == a7(=0x2), and falls through when s0(=a4) != a7(=0x2).
  The `beq` branch at 0xcf77a78 targets 0xcf77a94, is taken when s0(=a4) == at(=0x5), and falls through when s0(=a4) != at(=0x5).
  The `beq` branch at 0xcf77a9c targets 0xcf77d24, is taken when v0(=ret(__glXInitializeVideoLibrary)) == 0, and falls through when v0(=ret(__glXInitializeVideoLibrary)) != 0.
  The `bne` branch at 0xcf77ad4 targets 0xcf77b08, is taken when v0(=ret(__glXAddDrawableInterest)) != 0, and falls through when v0(=ret(__glXAddDrawableInterest)) == 0.
  The `beq` branch at 0xcf77b44 targets 0xcf77d3c, is taken when v0(=ret(__glXCreateVideoSourcePrivate)) == 0, and falls through when v0(=ret(__glXCreateVideoSourcePrivate)) != 0.
  The `bltz` branch at 0xcf77b78 targets 0xcf77d78, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `bltz` branch at 0xcf77bb4 targets 0xcf77d9c, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `bltz` branch at 0xcf77be8 targets 0xcf77dc0, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `beq` branch at 0xcf77c18 targets 0xcf77c30, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0xcf77c40 targets 0xcf77d60, is taken when a7(=[a0+184]:8) < at(=[a0+176]:8+44) (unsigned), and falls through when a7(=[a0+184]:8) >= at(=[a0+176]:8+44) (unsigned).
  The `beq` branch at 0xcf77cd4 targets 0xcf77cec, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf77cf0 targets 0xcf77d00, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf77d70 targets 0xcf77c44 and is always taken.
  The return at 0xcf77a88 has v0 = 0x0.
  The return at 0xcf77ae8 has v0 = 0x0.
  The return at 0xcf77b00 has v0 = 0x0.
  The return at 0xcf77d1c has v0 = ret(?).
  The return at 0xcf77d34 has v0 = 0x0.
  The return at 0xcf77d58 has v0 = 0x0.
  The return at 0xcf77d94 has v0 = 0x0.
  The return at 0xcf77db8 has v0 = 0x0.
  The return at 0xcf77ddc has v0 = 0x0.
  The instructions from 0xcf77a90 to 0xcf77a90 are not reached by any path from the entry, and their branches are not listed.
- `glXSwapIntervalSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf77f34 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf77f34-0xcf7810c (472 bytes).
  It occupies 472 bytes.
  2 such `ld` accesses load 8 bytes from abs 0x1028, including `ld` at 0xcf77f34, `ld` at 0xcf77f7c.
  The `ld` at 0xcf77f3c loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0xcf77f64 loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `lw` at 0xcf77f70 loads 4 bytes from [[0x1028]:8+280]:8 +0x128.
  The `lw` at 0xcf77f80 loads 4 bytes from [0x1028]:8 +0x108.
  The `lw` at 0xcf77fa0 loads 4 bytes from (([[0x1028]:8+264] << 0x2) + [0x1028]:8) +0x4.
  The `ld` at 0xcf77fc0 loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `lw` at 0xcf77fe4 loads 4 bytes from [[0x1028]:8+280]:8 +0x68.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0xcf77ff8, `ld` at 0xcf78078.
  The `ld` at 0xcf78004 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0xcf78018, `ld` at 0xcf7804c, `ld` at 0xcf780ec.
  The `ld` at 0xcf7801c loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0xcf78030 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0xcf78038, `sb` at 0xcf78070.
  The `sh` at 0xcf78040 stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  The `ld` at 0xcf78048 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0xcf78054 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0xcf7805c stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  The `sw` at 0xcf78060 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0xc.
  The `sw` at 0xcf78064 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8.
  The `sw` at 0xcf7806c stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `sb` at 0xcf78074 stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `ld` at 0xcf78084 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0xcf78090 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `jalr` at 0xcf77f9c calls ioctl with a0=[(([[0x1028]:8+264] << 0x2) + [0x1028]:8)+4], a1=0x3ee, a2=sp-80, a3=a3 at entry (arg3).
  The `jalr` at 0xcf77ff0 calls __glXSetupForCommand with a0=[[[0x1028]:8+280]:8+312]:8, a1=a1 at entry (arg1), a2=[[[0x1028]:8+280]:8+104], a3=a3 at entry (arg3).
  The `jalr` at 0xcf7800c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0xcf78088 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=0x10000, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0xcf7809c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf780a8 calls XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf780e4 calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0xcf77f54 targets 0xcf780cc, is taken when v0(=[[0x1028]:8+280]:8) == 0, and falls through when v0(=[[0x1028]:8+280]:8) != 0.
  The `blez` branch at 0xcf77f5c targets 0xcf780f8, is taken when s1(=a0) <= 0 (signed), and falls through when s1(=a0) > 0 (signed).
  The `beq` branch at 0xcf77f68 targets 0xcf77fbc, is taken when v1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `bne` branch at 0xcf77fc4 targets 0xcf77fe4, is taken when s0(=[[[0x1028]:8+280]:8+312]:8) != 0, and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) == 0.
  The `beq` branch at 0xcf77ffc targets 0xcf78018, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0xcf78028 targets 0xcf780e0, is taken when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < v1(=[[[[0x1028]:8+280]:8+312]:8+176]:8+16) (unsigned), and falls through when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= v1(=[[[[0x1028]:8+280]:8+312]:8+176]:8+16) (unsigned).
  The `beq` branch at 0xcf7807c targets 0xcf78090, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0xcf78094 targets 0xcf780a4, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0xcf780f0 targets 0xcf78030 and is always taken.
  The return at 0xcf77fb4 has v0 = 0x0.
  The return at 0xcf77fdc has v0 = 0x5.
  The return at 0xcf780c4 has v0 = 0x0.
  The return at 0xcf780d8 has v0 = 0x5.
  The return at 0xcf78104 has v0 = 0x6.
- `glXCreateGLXPixmapWithConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8b9dc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8b9dc-0xcf8bb2c (336 bytes).
  It occupies 336 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0xcf8ba1c, `ld` at 0xcf8bac0.
  The `ld` at 0xcf8ba28 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0xcf8ba34, `ld` at 0xcf8ba68, `ld` at 0xcf8bb14.
  The `ld` at 0xcf8ba38 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0xcf8ba4c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0xcf8ba54 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0xcf8ba5c, `sb` at 0xcf8ba8c.
  The `ld` at 0xcf8ba64 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf8ba70 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf8ba7c stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0xcf8ba84 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0xcf8ba88 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0xcf8ba90 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xcf8ba94 stores 4 bytes to [a0+176]:8 +0xc.
  The `lw` at 0xcf8ba9c loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xcf8baa0 stores 4 bytes to [a0+176]:8 +0x14.
  The `sw` at 0xcf8baa4 stores 4 bytes to [a0+176]:8 +0x10.
  The `ld` at 0xcf8baa8 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `sw` at 0xcf8babc stores 4 bytes to [a0+176]:8 +0x18.
  The `ld` at 0xcf8bacc loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0xcf8bad8 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0xcf8ba04 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf8ba2c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0xcf8bab0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=a2 at entry (arg2), a5=[a1+72], a6=[a1+36], a7=0x10006.
  The `jalr` at 0xcf8bad0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0xcf8bae4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf8bb08 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+28, a5=a1 at entry (arg1).
  The `beq` branch at 0xcf8ba14 targets 0xcf8bb18, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xcf8ba20 targets 0xcf8ba34, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0xcf8ba44 targets 0xcf8bb04, is taken when v1(=[a0+184]:8) < a3(=[a0+176]:8+28) (unsigned), and falls through when v1(=[a0+184]:8) >= a3(=[a0+176]:8+28) (unsigned).
  The `beq` branch at 0xcf8bac4 targets 0xcf8bad8, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf8badc targets 0xcf8baf0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf8bb10 targets 0xcf8ba48 and is always taken.
  The return at 0xcf8bafc has v0 = ret(?).
  The return at 0xcf8bb24 has v0 = 0x0.
- `glXJoinSwapGroupSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8eb34 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8eb34-0xcf8ec54 (288 bytes).
  It occupies 288 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0xcf8eb68, `ld` at 0xcf8ebf0.
  The `ld` at 0xcf8eb74 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0xcf8eb8c, `ld` at 0xcf8ebc0, `ld` at 0xcf8ec44.
  The `ld` at 0xcf8eb90 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0xcf8eba4 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0xcf8ebac, `sb` at 0xcf8ebec.
  The `sh` at 0xcf8ebb4 stores 2 bytes to [a0+176]:8 +0x2.
  The `ld` at 0xcf8ebbc loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf8ebc8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf8ebd0 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0xcf8ebd4 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0xcf8ebdc stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0xcf8ebe4 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0xcf8ebe8 stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0xcf8ebfc loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0xcf8ec10 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0xcf8eb60 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf8eb7c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?.
  The `jalr` at 0xcf8ec04 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=[a0+176]:8+20, a4=a2 at entry (arg2).
  The `jalr` at 0xcf8ec1c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf8ec3c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+20.
  The `beq` branch at 0xcf8eb6c targets 0xcf8eb8c, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `bne` branch at 0xcf8eb9c targets 0xcf8ec38, is taken when v1(=[a0+184]:8) < a3(=[a0+176]:8+20) (unsigned), and falls through when v1(=[a0+184]:8) >= a3(=[a0+176]:8+20) (unsigned).
  The `beq` branch at 0xcf8ebf4 targets 0xcf8ec10, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf8ec14 targets 0xcf8ec28, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf8ec4c targets 0xcf8eba4 and is always taken.
  The return at 0xcf8ec30 has v0 = one of ?, ret(?).
- `glXBindSwapBarrierSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8ec54 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8ec54-0xcf8ed74 (288 bytes).
  It occupies 288 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0xcf8ec88, `ld` at 0xcf8ed10.
  The `ld` at 0xcf8ec94 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0xcf8ecac, `ld` at 0xcf8ece0, `ld` at 0xcf8ed64.
  The `ld` at 0xcf8ecb0 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0xcf8ecc4 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0xcf8eccc, `sb` at 0xcf8ed0c.
  The `sh` at 0xcf8ecd4 stores 2 bytes to [a0+176]:8 +0x2.
  The `ld` at 0xcf8ecdc loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf8ece8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf8ecf0 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0xcf8ecf4 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0xcf8ecfc stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0xcf8ed04 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0xcf8ed08 stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0xcf8ed1c loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0xcf8ed30 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0xcf8ec80 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf8ec9c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?.
  The `jalr` at 0xcf8ed24 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=[a0+176]:8+20, a4=a2 at entry (arg2).
  The `jalr` at 0xcf8ed3c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf8ed5c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+20.
  The `beq` branch at 0xcf8ec8c targets 0xcf8ecac, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `bne` branch at 0xcf8ecbc targets 0xcf8ed58, is taken when v1(=[a0+184]:8) < a3(=[a0+176]:8+20) (unsigned), and falls through when v1(=[a0+184]:8) >= a3(=[a0+176]:8+20) (unsigned).
  The `beq` branch at 0xcf8ed14 targets 0xcf8ed30, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf8ed34 targets 0xcf8ed48, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf8ed6c targets 0xcf8ecc4 and is always taken.
  The return at 0xcf8ed50 has v0 = one of ?, ret(?).
- `glXQueryMaxSwapBarriersSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8ed74 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8ed74-0xcf8eef4 (384 bytes).
  It occupies 384 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0xcf8eda8, `ld` at 0xcf8ee44.
  The `ld` at 0xcf8edb4 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0xcf8edc8, `ld` at 0xcf8edfc, `ld` at 0xcf8eea4.
  The `ld` at 0xcf8edcc loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0xcf8ede0 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0xcf8ede8 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0xcf8edf0, `sb` at 0xcf8ee3c.
  The `ld` at 0xcf8edf8 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf8ee04 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf8ee0c stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0xcf8ee18 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0xcf8ee24 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0xcf8ee30 stores 1 byte to [a0+176]:8 +0x1.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0xcf8ee50, `ld` at 0xcf8eeb8.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0xcf8ee5c, `ld` at 0xcf8eec4.
  The `sw` at 0xcf8ee80 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xcf8eda0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf8edbc calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?.
  The `jalr` at 0xcf8ee38 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a4=0x11, a5=0x1000d, a6=[a0+176]:8, a7=[a0+152]:8+1.
  The `jalr` at 0xcf8ee54 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?.
  The `jalr` at 0xcf8ee68 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf8ee9c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+16, a6=[a0+176]:8.
  The `jalr` at 0xcf8eebc calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?.
  The `jalr` at 0xcf8eed0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xcf8edac targets 0xcf8edc8, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `bne` branch at 0xcf8edd8 targets 0xcf8ee98, is taken when v1(=[a0+184]:8) < a3(=[a0+176]:8+16) (unsigned), and falls through when v1(=[a0+184]:8) >= a3(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0xcf8ee40 targets 0xcf8eeb0, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xcf8ee48 targets 0xcf8ee5c, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf8ee60 targets 0xcf8ee70, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf8eea8 targets 0xcf8ede0 and is always taken.
  The `beq` branch at 0xcf8eeb0 targets 0xcf8eec4, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf8eec8 targets 0xcf8eedc, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0xcf8ee90 has v0 = 0x1.
  The return at 0xcf8eeec has v0 = 0x0.
- `glXQueryHyperpipeNetworkSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8f714 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8f714-0xcf8f99c (648 bytes).
  It occupies 648 bytes.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xcf8f748, `sw` at 0xcf8f7f0, `sw` at 0xcf8f84c.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0xcf8f74c, `ld` at 0xcf8f810, `ld` at 0xcf8f89c.
  The `ld` at 0xcf8f758 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0xcf8f764, `ld` at 0xcf8f798, `ld` at 0xcf8f94c.
  The `ld` at 0xcf8f768 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0xcf8f77c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0xcf8f784 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0xcf8f78c, `sb` at 0xcf8f7c0.
  The `ld` at 0xcf8f794 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf8f7a0 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf8f7ac stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0xcf8f7b4 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0xcf8f7bc stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0xcf8f7d0 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0xcf8f7dc stores 4 bytes to [a0+176]:8 +0xc.
  4 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0xcf8f81c, `ld` at 0xcf8f8a8, `ld` at 0xcf8f904.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0xcf8f828, `ld` at 0xcf8f8b4, `ld` at 0xcf8f910.
  The `jalr` at 0xcf8f740 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf8f75c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf8f7d8 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a4=[a0+224], a5=0x1000e, a6=0x11, a7=[a0+152]:8+1.
  The `jalr` at 0xcf8f808 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf8f820 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf8f834 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf8f878 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf8f894 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf8f8ac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf8f8c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf8f8f0 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xcf8f908 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf8f91c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf8f940 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+16.
  The `jalr` at 0xcf8f960 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf8f974 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xcf8f750 targets 0xcf8f764, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0xcf8f774 targets 0xcf8f940, is taken when v1(=[a0+184]:8) < a3(=[a0+176]:8+16) (unsigned), and falls through when v1(=[a0+184]:8) >= a3(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0xcf8f7e0 targets 0xcf8f950, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `blez` branch at 0xcf8f7f4 targets 0xcf8f800, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bne` branch at 0xcf8f7fc targets 0xcf8f85c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xcf8f814 targets 0xcf8f828, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf8f82c targets 0xcf8f83c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `bne` branch at 0xcf8f884 targets 0xcf8f8e8, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xcf8f8a0 targets 0xcf8f8b4, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf8f8b8 targets 0xcf8f8c8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf8f8fc targets 0xcf8f910, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf8f914 targets 0xcf8f928, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf8f948 targets 0xcf8f77c and is always taken.
  The `beq` branch at 0xcf8f954 targets 0xcf8f968, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf8f96c targets 0xcf8f97c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0xcf8f854 has v0 = 0x0.
  The return at 0xcf8f8e0 has v0 = 0x0.
  The return at 0xcf8f938 has v0 = ret(malloc).
  The return at 0xcf8f994 has v0 = 0x0.
- `glXHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8f99c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8f99c-0xcf8fccc (816 bytes).
  It occupies 816 bytes.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0xcf8fa00, `ld` at 0xcf8fb78, `ld` at 0xcf8fbe8.
  The `ld` at 0xcf8fa0c loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0xcf8fa34, `ld` at 0xcf8fa6c, `ld` at 0xcf8fc48.
  The `ld` at 0xcf8fa3c loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0xcf8fa54 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0xcf8fa5c stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0xcf8fa64, `sb` at 0xcf8fa94.
  The `ld` at 0xcf8fa68 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf8fa74 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf8fa80 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0xcf8fa88 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0xcf8fa90 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0xcf8fa98 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0xcf8faa0 stores 4 bytes to [a0+176]:8 +0x14.
  The `sw` at 0xcf8faac stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0xcf8fab8 stores 4 bytes to [a0+176]:8 +0xc.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xcf8fad8, `lbu` at 0xcf8fb0c, `lbu` at 0xcf8fb14.
  5 such `sb` accesses store 1 byte to ?, including `sb` at 0xcf8fae4, `sb` at 0xcf8fb10, `sb` at 0xcf8fb18.
  The `sw` at 0xcf8fb60 stores 4 bytes to a4 (arg4 at entry) +0x0.
  3 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0xcf8fb84, `ld` at 0xcf8fbf4, `ld` at 0xcf8fc64.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0xcf8fb90, `ld` at 0xcf8fc00, `ld` at 0xcf8fc70.
  The `jalr` at 0xcf8f9d8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf8fa14 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?.
  The `jalr` at 0xcf8fb4c calls _XReply with a0=a0 at entry (arg0), a1=sp-160, a2=0x0, a3=0x0.
  The `jalr` at 0xcf8fb88 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?, a5=a4 at entry (arg4).
  The `jalr` at 0xcf8fb9c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf8fbf8 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?, a5=a4 at entry (arg4).
  The `jalr` at 0xcf8fc0c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf8fc40 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8, a3=?.
  The `jalr` at 0xcf8fc68 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?, a5=a4 at entry (arg4).
  The `jalr` at 0xcf8fc7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0xcf8f9e0 targets 0xcf8fbc8, is taken when s1(=a2) <= 0 (signed), and falls through when s1(=a2) > 0 (signed).
  The `beq` branch at 0xcf8f9e8 targets 0xcf8fbc8, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0xcf8f9f0 targets 0xcf8fbc8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bltz` branch at 0xcf8f9f8 targets 0xcf8fca8, is taken when s3(=a1) < 0 (signed), and falls through when s3(=a1) >= 0 (signed).
  The `beq` branch at 0xcf8fa04 targets 0xcf8fa24, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `bne` branch at 0xcf8fa4c targets 0xcf8fc38, is taken when a5(=[a0+184]:8) < a6(?) (unsigned), and falls through when a5(=[a0+184]:8) >= a6(?) (unsigned).
  The `bne` branch at 0xcf8fab4 targets 0xcf8fb3c, is taken when a0(?) < 0x21 (signed), and falls through when a0(?) >= 0x21 (signed).
  The `beq` branch at 0xcf8fac4 targets 0xcf8fae8, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0.
  The `bne` branch at 0xcf8fae0 targets 0xcf8facc, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xcf8fafc targets 0xcf8fb3c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xcf8fb34 targets 0xcf8fb0c, is taken when a2(?) != v0(?), and falls through when a2(?) == v0(?).
  The `beq` branch at 0xcf8fb54 targets 0xcf8fc58, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0xcf8fb68 targets 0xcf8fbe8, is taken when s1(=a2) != v1(?), and falls through when s1(=a2) == v1(?).
  The `bltz` branch at 0xcf8fb70 targets 0xcf8fbe8, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0xcf8fb7c targets 0xcf8fb90, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf8fb94 targets 0xcf8fba4, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf8fbec targets 0xcf8fc00, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf8fc04 targets 0xcf8fc14, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf8fc50 targets 0xcf8fa54 and is always taken.
  The `beq` branch at 0xcf8fc5c targets 0xcf8fc70, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf8fc74 targets 0xcf8fc84, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0xcf8fbc0 has v0 = 0x0.
  The return at 0xcf8fbe0 has v0 = 0x5b.
  The return at 0xcf8fc30 has v0 = 0x5b.
  The return at 0xcf8fca0 has v0 = 0x5b.
  The return at 0xcf8fcc4 has v0 = 0x5b.
- `glXDestroyHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8fccc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8fccc-0xcf8fe44 (376 bytes).
  It occupies 376 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0xcf8fcfc, `ld` at 0xcf8fda0.
  The `ld` at 0xcf8fd08 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0xcf8fd1c, `ld` at 0xcf8fd4c, `ld` at 0xcf8fdf4.
  The `ld` at 0xcf8fd20 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0xcf8fd34 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0xcf8fd3c stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0xcf8fd44, `sb` at 0xcf8fd74.
  The `ld` at 0xcf8fd48 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf8fd54 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf8fd60 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0xcf8fd68 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0xcf8fd70 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0xcf8fd80 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0xcf8fd8c stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0xcf8fd98 stores 4 bytes to [a0+176]:8 +0xc.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0xcf8fdac, `ld` at 0xcf8fe08.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0xcf8fdb8, `ld` at 0xcf8fe14.
  The `jalr` at 0xcf8fcf4 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf8fd10 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?.
  The `jalr` at 0xcf8fd94 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+224], a5=0x10011, a6=[a0+176]:8, a7=0x11.
  The `jalr` at 0xcf8fdb0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?.
  The `jalr` at 0xcf8fdc4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf8fdec calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8+32, a3=?, a6=[a0+176]:8.
  The `jalr` at 0xcf8fe0c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?.
  The `jalr` at 0xcf8fe20 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xcf8fd00 targets 0xcf8fd1c, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `bne` branch at 0xcf8fd2c targets 0xcf8fde8, is taken when v1(=[a0+184]:8) < a2(=[a0+176]:8+32) (unsigned), and falls through when v1(=[a0+184]:8) >= a2(=[a0+176]:8+32) (unsigned).
  The `beq` branch at 0xcf8fd9c targets 0xcf8fe00, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xcf8fda4 targets 0xcf8fdb8, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf8fdbc targets 0xcf8fdd0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf8fdf8 targets 0xcf8fd34 and is always taken.
  The `beq` branch at 0xcf8fe00 targets 0xcf8fe14, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf8fe18 targets 0xcf8fe2c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0xcf8fde0 has v0 = ?.
  The return at 0xcf8fe3c has v0 = 0x5c.
## Skipped routines

Hostfacts could not produce a routine reading for these targets. The error for each is that no symbol of that name exists in the binary.

Skipped (name, binary, build, board, target row):

CreateContext, libGL.so of build 6.5.30-media, IP30ODSY64, target row 102; GetFBConfigsSGIX, libGL.so of build 6.5.30-media, IP30ODSY64, target row 103; __glXSendMakeCurrentRead, libGL.so of build 6.5.30-media, IP30ODSY64, target row 104; CreateContext, libGL.so of build vpro-patch-4103, IP30ODSY32, target row 188; GetBoardName, libGL.so of build vpro-patch-4103, IP30ODSY32, target row 189; GetFBConfigsSGIX, libGL.so of build vpro-patch-4103, IP30ODSY32, target row 190; __glXSendMakeCurrentRead, libGL.so of build vpro-patch-4103, IP30ODSY32, target row 191; AddConvolutionBorders, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 210; ApplyMaterialF, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 211; ApplyMaterialI, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 212; ApplyParameterF, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 213; ApplyParameterI, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 214; ApplyViewport, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 215; CISendClippedBmFmN, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 216; CISendFc, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 217; DownsampleTextureThruHW, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 218; DrawBitmapUsingPolyStipple, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 219; LoadAndSendStippledQuads, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 220; LookupCoresidRange, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 221; LookupKnownGroup, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 222; OpenPipeMemReference, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 223; RGBSendClippedBmFmTN, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 224; RGBSendFc, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 225; __glOdysseyInitDefaultValues, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 226; __glOdysseyTextureDeactivate, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 227; CreateContext, libGL.so of build vpro-patch-4103, IP30ODSY64, target row 280; GetBoardName, libGL.so of build vpro-patch-4103, IP30ODSY64, target row 281; GetFBConfigsSGIX, libGL.so of build vpro-patch-4103, IP30ODSY64, target row 282; __glXSendMakeCurrentRead, libGL.so of build vpro-patch-4103, IP30ODSY64, target row 283.
