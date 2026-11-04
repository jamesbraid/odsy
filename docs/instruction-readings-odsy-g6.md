# Instruction readings from hostfacts

Each entry reports selected accesses, calls, branches and returns from the named routine in the exact local binary build. These software observations do not establish board behaviour. Every entry is Inferred.

- `__glOdyim_ScratchIndexd` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdad51c0, 28 bytes) Inferred.
  Stores 4 bytes to abs 0x10000 through base v0 (`sw` at 0xdad51d0).
  Stores 4 bytes to abs 0x10000 through base v0 (`swc1` at 0xdad51d8).
  The routine returns v0 = 0x10000 (`jr` at 0xdad51d4).

- `__glXOpenGraphicsDevice` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x214300c, 396 bytes) Inferred.
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0x2143100).
  Stores 4 bytes to [0x1028]:8 +0x104 through base a3 (`sw` at 0x2143168).
  Calls `__glXFatal` via got with a0=0x0, a1=0x21773c0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x214306c).
  Calls `open` via got with a0=0x21773e0, a1=0x802, a2=?, a3=? (`jalr` at 0x2143088).
  Calls `fcntl` via got with a0=?, a1=0x2, a2=0x5, a3=? (`jalr` at 0x21430a4).
  Calls `__glXFatal` via got with a0=0x0, a1=0x21773c0, a2=?, a3=[0x1028]:8, a4=[[0x1028]:8+260] (`jalr` at 0x21430d4).
  Calls `__glXFatal` via got with a0=0x0, a1=0x21773f0, a2=?, a3=? (`jalr` at 0x2143110).
  Calls `__glXFatal` via got with a0=0x0, a1=0x2177410, a2=?, a3=? (`jalr` at 0x2143128).
  Calls `ioctl` via got with a0=?, a1=0x65, a2=0x0, a3=[0x1028]:8, a4=[[0x1028]:8+260] (`jalr` at 0x2143144).
  Calls `__glXFatal` via got with a0=0x0, a1=0x2177420, a2=?, a3=?, a5=ret(ioctl) (`jalr` at 0x2143188).
  The `beq` at 0x214302c is taken when a0 >= 0x41 (signed) -> B4 and falls through when a0 < 0x41 (signed) -> B1.
  The `bltz` at 0x2143048 is taken when v1(=[([0x1028]:8 + (a0 << 0x2))+4]) < 0 (signed) -> B5 and falls through when v1(=[([0x1028]:8 + (a0 << 0x2))+4]) >= 0 (signed) -> B3.
  The `bltz` at 0x2143090 is taken when v0(=ret(open)) < 0 (signed) -> B13 and falls through when v0(=ret(open)) >= 0 (signed) -> B6.
  The `bltz` at 0x21430ac is taken when v0(=ret(fcntl)) < 0 (signed) -> B14 and falls through when v0(=ret(fcntl)) >= 0 (signed) -> B8.
  The `bltz` at 0x21430bc is taken when a4(=[[0x1028]:8+260]) < 0 (signed) -> B15 and falls through when a4(=[[0x1028]:8+260]) >= 0 (signed) -> B10.
  The `beq` at 0x21430c4 is taken when a2(?) == 0 -> B12 and falls through when a2(?) != 0 -> B11.
  The `blez` at 0x214314c is taken when v0(=ret(ioctl)) <= 0 (signed) -> B17 and falls through when v0(=ret(ioctl)) > 0 (signed) -> B16.
  The routine returns v0 = ? (`jr` at 0x2143058).
  The routine returns v0 = ? (`jr` at 0x21430fc).

- `glXSelectEventSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x21587b0, 284 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0x2158828).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a0 (`sh` at 0x2158830).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a0 (`sb` at 0x2158838).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0x2158848).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0x2158850).
  Stores 4 bytes to [a0+176]:8 +0x14 through base a0 (`sw` at 0x2158854).
  Stores 4 bytes to [a0+176]:8 +0x10 through base a0 (`sw` at 0x2158860).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a0 (`sw` at 0x2158868).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a0 (`sb` at 0x215886c).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a0 (`sb` at 0x2158870).
  Stores 4 bytes to [a0+176]:8 +0xc through base a0 (`sw` at 0x2158874).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x21587dc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8 (`jalr` at 0x2158800).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=a2 at entry (arg2), a4=0x801f, a5=[a0+2408]:8, a6=0x10009, a7=0x10 (`jalr` at 0x2158888).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x215889c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8+24, a3=?, a5=a1 at entry (arg1) (`jalr` at 0x21588bc).
  The `beq` at 0x21587e8 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B8 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0x21587f4 is taken when a5(=[a0+2408]:8) == 0 -> B3 and falls through when a5(=[a0+2408]:8) != 0 -> B2.
  The `bne` at 0x2158818 is taken when a1(=[a0+184]:8) < a2(=[a0+176]:8+24) (unsigned) -> B9 and falls through when a1(=[a0+184]:8) >= a2(=[a0+176]:8+24) (unsigned) -> B4.
  The `beq` at 0x215887c is taken when a5(=[a0+2408]:8) == 0 -> B6 and falls through when a5(=[a0+2408]:8) != 0 -> B5.
  The `beq` at 0x2158894 is taken when t9(=[a0+208]:8) == 0 -> B8 and falls through when t9(=[a0+208]:8) != 0 -> B7.
  The routine returns v0 = ? (`jr` at 0x21588b0).

- `__glXGetDrawableAttributes` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x2158a04, 1028 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s1 (`sd` at 0x2158a8c).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a6 (`sh` at 0x2158a94).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a6 (`sb` at 0x2158a9c).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s1 (`sd` at 0x2158aac).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s1 (`sd` at 0x2158ab4).
  Stores 4 bytes to [a0+176]:8 +0xc through base a6 (`sw` at 0x2158ab8).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a6 (`sw` at 0x2158ad0).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a6 (`sb` at 0x2158adc).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a6 (`sb` at 0x2158ae8).
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s1 (`sd` at 0x2158b90).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a6 (`sh` at 0x2158b98).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a6 (`sb` at 0x2158ba0).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s1 (`sd` at 0x2158bb0).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s1 (`sd` at 0x2158bb8).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a6 (`sb` at 0x2158bc4).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a6 (`sw` at 0x2158bd0).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a6 (`sb` at 0x2158bdc).
  Stores 8 bytes to a2 (arg2 at entry) +0x28 through base s2 (`sd` at 0x2158cac).
  Stores 8 bytes to a2 (arg2 at entry) +0x20 through base s2 (`sd` at 0x2158cb0).
  Stores 8 bytes to a2 (arg2 at entry) +0x18 through base s2 (`sd` at 0x2158cb4).
  Stores 8 bytes to a2 (arg2 at entry) +0x10 through base s2 (`sd` at 0x2158cb8).
  Stores 8 bytes to a2 (arg2 at entry) +0x8 through base s2 (`sd` at 0x2158cbc).
  Stores 8 bytes to a2 (arg2 at entry) +0x0 through base s2 (`sd` at 0x2158cc0).
  Stores 8 bytes to a2 (arg2 at entry) +0x18 through base s2 (`sd` at 0x2158ce0).
  Stores 8 bytes to a2 (arg2 at entry) +0x8 through base s2 (`sd` at 0x2158d24).
  Stores 8 bytes to a2 (arg2 at entry) +0x28 through base s2 (`sd` at 0x2158d2c).
  Stores 4 bytes to a2 (arg2 at entry) +0x14 through base s2 (`sw` at 0x2158d34).
  Stores 4 bytes to a2 (arg2 at entry) +0x10 through base s2 (`sw` at 0x2158d3c).
  Stores 1 bytes to a2 (arg2 at entry) +0x21 through base s2 (`sb` at 0x2158d44).
  Stores 1 bytes to a2 (arg2 at entry) +0x20 through base s2 (`sb` at 0x2158d4c).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s2 (`sw` at 0x2158d54).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2158a38).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0x2158a64).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-144, a2=0x0, a3=0x0, a5=0x11, a6=[a0+176]:8, a7=0x1000a (`jalr` at 0x2158ae4).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x2158b08).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0x2158b2c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2158b40).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0x2158b6c).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a6=[a0+176]:8 (`jalr` at 0x2158bd8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0x2158c08).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2158c1c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8+16, a3=?, a6=[a0+176]:8 (`jalr` at 0x2158c40).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0x2158c60).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2158c74).
  Calls `_XRead` via got with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=? (`jalr` at 0x2158ca4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?, a7=-0x800c (`jalr` at 0x2158d68).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2158d7c).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x2158d88).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8 (`jalr` at 0x2158dbc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0x2158ddc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2158df0).
  The `beq` at 0x2158a44 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B48 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0x2158a50 is taken when a0(=a3) == 0 -> B13 and falls through when a0(=a3) != 0 -> B2.
  The `beq` at 0x2158a58 is taken when a2(=[a0+2408]:8) == 0 -> B4 and falls through when a2(=[a0+2408]:8) != 0 -> B3.
  The `bne` at 0x2158a7c is taken when a1(=[a0+184]:8) < a2(=[a0+176]:8+16) (unsigned) -> B23 and falls through when a1(=[a0+184]:8) >= a2(=[a0+176]:8+16) (unsigned) -> B5.
  The `beq` at 0x2158aec is taken when v0(=ret(_XReply)) == 0 -> B24 and falls through when v0(=ret(_XReply)) != 0 -> B6.
  The `beq` at 0x2158afc is taken when s0(?) == 0 -> B18 and falls through when s0(?) != 0 -> B7.
  The `bne` at 0x2158b10 is taken when v0(=ret(malloc)) != 0 -> B29 and falls through when v0(=ret(malloc)) == 0 -> B8.
  The `beq` at 0x2158b20 is taken when a2(=[a0+2408]:8) == 0 -> B10 and falls through when a2(=[a0+2408]:8) != 0 -> B9.
  The `beq` at 0x2158b38 is taken when t9(=[a0+208]:8) == 0 -> B12 and falls through when t9(=[a0+208]:8) != 0 -> B11.
  The `beq` at 0x2158b60 is taken when a2(=[a0+2408]:8) == 0 -> B15 and falls through when a2(=[a0+2408]:8) != 0 -> B14.
  The `bne` at 0x2158b84 is taken when ra(=[a0+184]:8) < at(=[a0+176]:8+8) (unsigned) -> B49 and falls through when ra(=[a0+184]:8) >= at(=[a0+176]:8+8) (unsigned) -> B16.
  The `beq` at 0x2158be0 is taken when v0(=ret(_XReply)) == 0 -> B50 and falls through when v0(=ret(_XReply)) != 0 -> B17.
  The `bne` at 0x2158bf0 is taken when s0(?) != 0 -> B7 and falls through when s0(?) == 0 -> B18.
  The `beq` at 0x2158bfc is taken when a2(=[a0+2408]:8) == 0 -> B20 and falls through when a2(=[a0+2408]:8) != 0 -> B19.
  The `beq` at 0x2158c14 is taken when t9(=[a0+208]:8) == 0 -> B22 and falls through when t9(=[a0+208]:8) != 0 -> B21.
  The `beq` at 0x2158c54 is taken when a2(=[a0+2408]:8) == 0 -> B26 and falls through when a2(=[a0+2408]:8) != 0 -> B25.
  The `beq` at 0x2158c6c is taken when t9(=[a0+208]:8) == 0 -> B28 and falls through when t9(=[a0+208]:8) != 0 -> B27.
  The `blez` at 0x2158cd0 is taken when s0(?) <= 0 (signed) -> B43 and falls through when s0(?) > 0 (signed) -> B30.
  The `beq` at 0x2158ce4 is taken when s0(?) == a6(?) -> B43 and falls through when s0(?) != a6(?) -> B33.
  The `beq` at 0x2158d0c is taken when t2(=table(-0x800c)) >= 0x1a (unsigned) -> B32 and falls through when t2(=table(-0x800c)) < 0x1a (unsigned) -> B35.
  The `beq` at 0x2158d5c is taken when a2(=[a0+2408]:8) == 0 -> B45 and falls through when a2(=[a0+2408]:8) != 0 -> B44.
  The `beq` at 0x2158d74 is taken when t9(=[a0+208]:8) == 0 -> B47 and falls through when t9(=[a0+208]:8) != 0 -> B46.
  The `beq` at 0x2158dd0 is taken when a2(=[a0+2408]:8) == 0 -> B52 and falls through when a2(=[a0+2408]:8) != 0 -> B51.
  The `beq` at 0x2158de8 is taken when t9(=[a0+208]:8) == 0 -> B54 and falls through when t9(=[a0+208]:8) != 0 -> B53.
  The routine returns v0 = 0x0 (`jr` at 0x2158b58).
  The routine returns v0 = 0x0 (`jr` at 0x2158c38).
  The routine returns v0 = 0x0 (`jr` at 0x2158c90).
  The routine returns v0 = 0x1 (`jr` at 0x2158da4).

- `glXDestroyGLXPbufferSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x2158e08, 328 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0x2158eac).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a0 (`sh` at 0x2158eb4).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a0 (`sb` at 0x2158ebc).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0x2158ecc).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0x2158ed4).
  Stores 4 bytes to [a0+176]:8 +0xc through base a0 (`sw` at 0x2158edc).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a0 (`sw` at 0x2158ee4).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a0 (`sb` at 0x2158ee8).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a0 (`sb` at 0x2158eec).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2158e34).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0x2158e50).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0x2158e60).
  Calls `__glXFreeDrawablePrivate` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0x2158e74).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=? (`jalr` at 0x2158e8c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=0x10008, a4=0x10, a6=[a0+152]:8+1, a7=[a0+176]:8+16 (`jalr` at 0x2158f00).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2158f14).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8+16, a3=? (`jalr` at 0x2158f38).
  The `beq` at 0x2158e44 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B9 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0x2158e6c is taken when a0(=[ret(__glXAddDrawableInterest)+32]) == 0 -> B11 and falls through when a0(=[ret(__glXAddDrawableInterest)+32]) != 0 -> B2.
  The `beq` at 0x2158e80 is taken when a1(=[a0+2408]:8) == 0 -> B4 and falls through when a1(=[a0+2408]:8) != 0 -> B3.
  The `bne` at 0x2158ea4 is taken when a1(=[a0+184]:8) < a2(=[a0+176]:8+16) (unsigned) -> B10 and falls through when a1(=[a0+184]:8) >= a2(=[a0+176]:8+16) (unsigned) -> B5.
  The `beq` at 0x2158ef4 is taken when a1(=[a0+2408]:8) == 0 -> B7 and falls through when a1(=[a0+2408]:8) != 0 -> B6.
  The `beq` at 0x2158f0c is taken when t9(=[a0+208]:8) == 0 -> B9 and falls through when t9(=[a0+208]:8) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0x2158f2c).

- `glXCreateGLXPbufferSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x2159650, 780 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s2 (`sd` at 0x2159760).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a4 (`sh` at 0x2159768).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a4 (`sb` at 0x2159770).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s2 (`sd` at 0x2159780).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s2 (`sd` at 0x2159788).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a4 (`sb` at 0x2159790).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a4 (`sw` at 0x21597a0).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a4 (`sb` at 0x21597ac).
  Stores 4 bytes to [a0+176]:8 +0xc through base a4 (`sw` at 0x21597b4).
  Stores 4 bytes to [a0+176]:8 +0x1c through base a4 (`sw` at 0x21597bc).
  Stores 4 bytes to [a0+176]:8 +0x14 through base a4 (`sw` at 0x21597c0).
  Stores 4 bytes to [a0+176]:8 +0x18 through base a4 (`sw` at 0x21597c8).
  Stores 4 bytes to [a0+176]:8 +0x10 through base a4 (`sw` at 0x21597d0).
  Stores 4 bytes to ? (base unknown) through base a1 (`sw` at 0x21597e8).
  Stores 4 bytes to ? (base unknown) through base a1 (`sw` at 0x21597fc).
  Stores 8 bytes to ? (base unknown) through base a1 (`sd` at 0x215991c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2159688).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x21596a4).
  Calls `__glXAddDrawableInterest` via got with a0=ret(?), a1=?, a2=?, a3=? (`jalr` at 0x21596b4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8 (`jalr` at 0x215972c).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-144, a2=0x0, a3=0x0, a4=[a0+176]:8 (`jalr` at 0x2159814).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8 (`jalr` at 0x2159830).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2159844).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x2159850).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+176]:8 (`jalr` at 0x21598a8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8 (`jalr` at 0x21598cc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x21598e0).
  Calls `__glXPostHiddenError` via got with a0=a0 at entry (arg0), a1=sp-144, a2=0x11, a3=0x0 (`jalr` at 0x21598f8).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x2159904).
  Calls `__glXFreeDrawablePrivate` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x2159918).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x10, a3=0x0 (`jalr` at 0x2159948).
  The `beq` at 0x2159698 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B24 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0x21596bc is taken when v0(=ret(__glXAddDrawableInterest)) == 0 -> B32 and falls through when v0(=ret(__glXAddDrawableInterest)) != 0 -> B2.
  The `beq` at 0x21596d0 is taken when s0(=a4) == 0 -> B23 and falls through when s0(=a4) != 0 -> B3.
  The `beq` at 0x21596e0 is taken when a1(=[a4]) == 0 -> B31 and falls through when a1(=[a4]) != 0 -> B4.
  The `beq` at 0x21596f4 is taken when a2(?) == 0 -> B8 and falls through when a2(?) != 0 -> B6.
  The `beq` at 0x2159704 is taken when a3(?) == 0 -> B8 and falls through when a3(?) != 0 -> B7.
  The `bne` at 0x2159714 is taken when a5(?) != 0 -> B5 and falls through when a5(?) == 0 -> B8.
  The `beq` at 0x2159720 is taken when a4(=[a0+2408]:8) == 0 -> B11 and falls through when a4(=[a0+2408]:8) != 0 -> B10.
  The `bne` at 0x2159754 is taken when a6(=[a0+184]:8) < t1(?) (unsigned) -> B25 and falls through when a6(=[a0+184]:8) >= t1(?) (unsigned) -> B12.
  The `beq` at 0x21597cc is taken when s0(=a4) == 0 -> B15 and falls through when s0(=a4) != 0 -> B13.
  The `blez` at 0x21597d8 is taken when t0(?) <= 0 (signed) -> B15 and falls through when t0(?) > 0 (signed) -> B14.
  The `bgtz` at 0x21597f8 is taken when a2(?) > 0 (signed) -> B14 and falls through when a2(?) <= 0 (signed) -> B15.
  The `beq` at 0x215981c is taken when v0(=ret(_XReply)) == 0 -> B26 and falls through when v0(=ret(_XReply)) != 0 -> B16.
  The `beq` at 0x2159824 is taken when a4(=[a0+2408]:8) == 0 -> B18 and falls through when a4(=[a0+2408]:8) != 0 -> B17.
  The `beq` at 0x215983c is taken when t9(=[a0+208]:8) == 0 -> B20 and falls through when t9(=[a0+208]:8) != 0 -> B19.
  The `beq` at 0x21598c0 is taken when a4(=[a0+2408]:8) == 0 -> B28 and falls through when a4(=[a0+2408]:8) != 0 -> B27.
  The `beq` at 0x21598d8 is taken when t9(=[a0+208]:8) == 0 -> B30 and falls through when t9(=[a0+208]:8) != 0 -> B29.
  The routine returns v0 = ? (`jr` at 0x215986c).
  The routine returns v0 = 0x0 (`jr` at 0x2159894).

- `glXGetVideoSyncSGI` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x215995c, 140 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x0 through base a4 (`sw` at 0x21599d8).
  Calls `ioctl` via got with a0=[([0x1028]:8 + ([[0x1028]:8+264] << 0x2))+4], a1=0x3fe, a2=sp-32, a3=a3 at entry (arg3), a4=[[0x1028]:8+280]:8, a5=[[[0x1028]:8+280]:8+280] (`jalr` at 0x21599b4).
  The `beq` at 0x2159978 is taken when a4(=[[0x1028]:8+280]:8) == 0 -> B3 and falls through when a4(=[[0x1028]:8+280]:8) != 0 -> B1.
  The `beq` at 0x2159984 is taken when a5(=[[[0x1028]:8+280]:8+280]) == 0 -> B3 and falls through when a5(=[[[0x1028]:8+280]:8+280]) != 0 -> B2.
  The routine returns v0 = 0x0 (`jr` at 0x21599d4).
  The routine returns v0 = 0x5 (`jr` at 0x21599e0).

- `glXWaitVideoSyncSGI` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x21599e8, 200 bytes) Inferred.
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base a4 (`sw` at 0x2159aac).
  Calls `ioctl` via got with a0=[([0x1028]:8 + ([[0x1028]:8+264] << 0x2))+4], a1=0x3ff, a2=sp-48, a3=a3 at entry (arg3), a4=a0 at entry (arg0), a5=a1 at entry (arg1), a6=[[0x1028]:8+280]:8, a7=[[[0x1028]:8+280]:8+280] (`jalr` at 0x2159a88).
  The `beq` at 0x2159a10 is taken when a6(=[[0x1028]:8+280]:8) == 0 -> B6 and falls through when a6(=[[0x1028]:8+280]:8) != 0 -> B1.
  The `beq` at 0x2159a1c is taken when a7(=[[[0x1028]:8+280]:8+280]) == 0 -> B6 and falls through when a7(=[[[0x1028]:8+280]:8+280]) != 0 -> B2.
  The `blez` at 0x2159a24 is taken when a0 <= 0 (signed) -> B5 and falls through when a0 > 0 (signed) -> B3.
  The `bltz` at 0x2159a2c is taken when a1 < 0 (signed) -> B5 and falls through when a1 >= 0 (signed) -> B4.
  The `bne` at 0x2159a34 is taken when t0(?) != 0 -> B7 and falls through when t0(?) == 0 -> B5.
  The routine returns v0 = 0x6 (`jr` at 0x2159a40).
  The routine returns v0 = 0x5 (`jr` at 0x2159a50).
  The routine returns v0 = 0x0 (`jr` at 0x2159aa8).

- `glXDestroyGLXVideoSourceSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x2159ab0, 320 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0x2159b50).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a0 (`sh` at 0x2159b58).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a0 (`sb` at 0x2159b60).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0x2159b70).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0x2159b78).
  Stores 4 bytes to [a0+176]:8 +0xc through base a0 (`sw` at 0x2159b7c).
  Stores 4 bytes to [a0+176]:8 +0x8 through base a0 (`sw` at 0x2159b84).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a0 (`sw` at 0x2159b8c).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a0 (`sb` at 0x2159b90).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a0 (`sb` at 0x2159b94).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2159adc).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0x2159afc).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0x2159b0c).
  Calls `__glXFreeDrawablePrivate` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x2159b18).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=? (`jalr` at 0x2159b30).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=0x10003, a4=0x10, a6=[a0+152]:8+1, a7=[a0+176]:8+16 (`jalr` at 0x2159ba8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2159bbc).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8+16, a3=? (`jalr` at 0x2159be0).
  The `beq` at 0x2159ae8 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B10 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0x2159af0 is taken when s1(=a1) == 0 -> B9 and falls through when s1(=a1) != 0 -> B2.
  The `beq` at 0x2159b24 is taken when a1(=[a0+2408]:8) == 0 -> B4 and falls through when a1(=[a0+2408]:8) != 0 -> B3.
  The `bne` at 0x2159b48 is taken when a1(=[a0+184]:8) < a2(=[a0+176]:8+16) (unsigned) -> B11 and falls through when a1(=[a0+184]:8) >= a2(=[a0+176]:8+16) (unsigned) -> B5.
  The `beq` at 0x2159b9c is taken when a1(=[a0+2408]:8) == 0 -> B7 and falls through when a1(=[a0+2408]:8) != 0 -> B6.
  The `beq` at 0x2159bb4 is taken when t9(=[a0+208]:8) == 0 -> B10 and falls through when t9(=[a0+208]:8) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0x2159bd4).

- `glXCreateGLXVideoSourceSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x2159cc4, 836 bytes) Inferred.
  Stores 4 bytes to ? (base unknown) through base v0 (`sw` at 0x2159e08).
  Stores 4 bytes to ? (base unknown) through base v0 (`sw` at 0x2159e1c).
  Stores 4 bytes to ? (base unknown) through base v0 (`sw` at 0x2159e50).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0x2159e6c).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0x2159e80).
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base a2 (`sd` at 0x2159ecc).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a3 (`sh` at 0x2159ed4).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a3 (`sb` at 0x2159edc).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base a2 (`sd` at 0x2159eec).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base a2 (`sd` at 0x2159ef4).
  Stores 4 bytes to [a0+176]:8 +0x14 through base a3 (`sw` at 0x2159ef8).
  Stores 4 bytes to [a0+176]:8 +0x10 through base a3 (`sw` at 0x2159efc).
  Stores 4 bytes to [a0+176]:8 +0xc through base a3 (`sw` at 0x2159f00).
  Stores 4 bytes to [a0+176]:8 +0x8 through base a3 (`sw` at 0x2159f08).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a3 (`sw` at 0x2159f10).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a3 (`sb` at 0x2159f14).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a3 (`sb` at 0x2159f18).
  Stores 4 bytes to [a0+176]:8 +0x18 through base a3 (`sw` at 0x2159f20).
  Stores 4 bytes to [a0+176]:8 +0x1c through base a3 (`sw` at 0x2159f28).
  Stores 4 bytes to [a0+176]:8 +0x20 through base a3 (`sw` at 0x2159f30).
  Stores 4 bytes to [a0+176]:8 +0x24 through base a3 (`sw` at 0x2159f38).
  Stores 4 bytes to [a0+176]:8 +0x28 through base a3 (`sw` at 0x2159f40).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2159cf8).
  Calls `__glXInitializeVideoLibrary` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x2159d40).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2159d58).
  Calls `__glXAddDrawableInterest` via got with a0=ret(?), a1=?, a2=?, a3=? (`jalr` at 0x2159d68).
  Calls `__glXCreateVideoSourcePrivate` via got with a0=ret(__glXAddDrawableInterest)+64, a1=0x3, a2=?, a3=? (`jalr` at 0x2159da8).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x4, a4=sp-192 (`jalr` at 0x2159dd8).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x6, a4=sp-192 (`jalr` at 0x2159e18).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x7, a4=sp-192 (`jalr` at 0x2159e4c).
  Calls `(unnamed) [0x2159bf0]` via direct with a0=?, a1=?, a2=?, a3=? (`bgezall` at 0x2159e70).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?, a4=a0 at entry (arg0) (`jalr` at 0x2159e94).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=[a0+176]:8 (`jalr` at 0x2159f54).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2159f6c).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x2159f78).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8, a5=[a0+176]:8+44 (`jalr` at 0x2159fac).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x2159fc4).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x2159fd4).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=a5 at entry (arg5), a3=? (`jalr` at 0x2159fe8).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x2159ff8).
  The `beq` at 0x2159d04 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B20 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0x2159d10 is taken when s0(=a4) == v0(=0x2) -> B5 and falls through when s0(=a4) != v0(=0x2) -> B2.
  The `beq` at 0x2159d1c is taken when s0(=a4) == v1(=0x5) -> B6 and falls through when s0(=a4) != v1(=0x5) -> B3.
  The `beq` at 0x2159d48 is taken when v0(=ret(__glXInitializeVideoLibrary)) == 0 -> B21 and falls through when v0(=ret(__glXInitializeVideoLibrary)) != 0 -> B7.
  The `beq` at 0x2159d70 is taken when v0(=ret(__glXAddDrawableInterest)) == 0 -> B22 and falls through when v0(=ret(__glXAddDrawableInterest)) != 0 -> B8.
  The `beq` at 0x2159db0 is taken when v0(=ret(__glXCreateVideoSourcePrivate)) == 0 -> B24 and falls through when v0(=ret(__glXCreateVideoSourcePrivate)) != 0 -> B9.
  The `bltz` at 0x2159de0 is taken when v0(=ret(?)) < 0 (signed) -> B25 and falls through when v0(=ret(?)) >= 0 (signed) -> B10.
  The `bltz` at 0x2159e20 is taken when v0(=ret(?)) < 0 (signed) -> B26 and falls through when v0(=ret(?)) >= 0 (signed) -> B11.
  The `bltz` at 0x2159e54 is taken when v0(=ret(?)) < 0 (signed) -> B27 and falls through when v0(=ret(?)) >= 0 (signed) -> B12.
  The `beq` at 0x2159e88 is taken when a2(=[a0+2408]:8) == 0 -> B14 and falls through when a2(=[a0+2408]:8) != 0 -> B13.
  The `bne` at 0x2159eb0 is taken when a4(=[a0+184]:8) < a5(=[a0+176]:8+44) (unsigned) -> B23 and falls through when a4(=[a0+184]:8) >= a5(=[a0+176]:8+44) (unsigned) -> B15.
  The `beq` at 0x2159f48 is taken when a2(=[a0+2408]:8) == 0 -> B17 and falls through when a2(=[a0+2408]:8) != 0 -> B16.
  The `beq` at 0x2159f64 is taken when t9(=[a0+208]:8) == 0 -> B19 and falls through when t9(=[a0+208]:8) != 0 -> B18.
  The routine returns v0 = ? (`jr` at 0x2159d34).
  The routine returns v0 = 0x0 (`jr` at 0x2159f94).

- `glXSwapIntervalSGI` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x215a158, 440 bytes) Inferred.
  Stores 8 bytes to ? (base unknown) through base a3 (`sd` at 0x215a254).
  Stores 2 bytes to ? (base unknown) through base a4 (`sh` at 0x215a25c).
  Stores 1 bytes to ? (base unknown) through base a4 (`sb` at 0x215a264).
  Stores 8 bytes to ? (base unknown) through base a3 (`sd` at 0x215a274).
  Stores 8 bytes to ? (base unknown) through base a3 (`sd` at 0x215a27c).
  Stores 4 bytes to ? (base unknown) through base a4 (`sw` at 0x215a280).
  Stores 4 bytes to ? (base unknown) through base a4 (`sw` at 0x215a284).
  Stores 4 bytes to ? (base unknown) through base a4 (`sw` at 0x215a28c).
  Stores 1 bytes to ? (base unknown) through base a4 (`sb` at 0x215a290).
  Stores 1 bytes to ? (base unknown) through base a4 (`sb` at 0x215a294).
  Calls `ioctl` via got with a0=[([0x1028]:8 + ([[0x1028]:8+264] << 0x2))+4], a1=0x3ee, a2=sp-64, a3=a3 at entry (arg3), a5=a0 at entry (arg0) (`jalr` at 0x215a1bc).
  Calls `__glXSetupForCommand` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[[[0x1028]:8+280]:8+312]:8, a4=[[[0x1028]:8+280]:8+104], a5=a0 at entry (arg0) (`jalr` at 0x215a208).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x215a224).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=?, a5=a0 at entry (arg0), a7=0x10000 (`jalr` at 0x215a2a8).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x215a2c0).
  Calls `XFlush` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x215a2cc).
  Calls `_XFlush` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x215a2f4).
  The `beq` at 0x215a174 is taken when v0(=[[0x1028]:8+280]:8) == 0 -> B15 and falls through when v0(=[[0x1028]:8+280]:8) != 0 -> B1.
  The `blez` at 0x215a17c is taken when a0 <= 0 (signed) -> B17 and falls through when a0 > 0 (signed) -> B2.
  The `beq` at 0x215a188 is taken when v1(=[[[0x1028]:8+280]:8+280]) == 0 -> B4 and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0 -> B3.
  The `bne` at 0x215a1e0 is taken when a3(=[[[0x1028]:8+280]:8+312]:8) != 0 -> B6 and falls through when a3(=[[[0x1028]:8+280]:8+312]:8) == 0 -> B5.
  The `beq` at 0x215a218 is taken when a3(?) == 0 -> B8 and falls through when a3(?) != 0 -> B7.
  The `bne` at 0x215a240 is taken when a5(?) < a6(?) (unsigned) -> B16 and falls through when a5(?) >= a6(?) (unsigned) -> B9.
  The `beq` at 0x215a29c is taken when a3(?) == 0 -> B11 and falls through when a3(?) != 0 -> B10.
  The `beq` at 0x215a2b8 is taken when t9(?) == 0 -> B13 and falls through when t9(?) != 0 -> B12.
  The routine returns v0 = 0x0 (`jr` at 0x215a1d0).
  The routine returns v0 = 0x5 (`jr` at 0x215a1f0).
  The routine returns v0 = one of 0x0, 0x5, 0x6 (`jr` at 0x215a2e0).

- `glXCreateGLXPixmapWithConfigSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x216d8f0, 336 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0x216d96c).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a5 (`sh` at 0x216d974).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a5 (`sb` at 0x216d97c).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0x216d98c).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0x216d998).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a5 (`sw` at 0x216d9a0).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a5 (`sb` at 0x216d9a4).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a5 (`sb` at 0x216d9a8).
  Stores 4 bytes to [a0+176]:8 +0xc through base a5 (`sw` at 0x216d9b0).
  Stores 4 bytes to [a0+176]:8 +0x14 through base a5 (`sw` at 0x216d9b8).
  Stores 4 bytes to [a0+176]:8 +0x10 through base a5 (`sw` at 0x216d9bc).
  Stores 4 bytes to ? (base unknown) through base t9 (`sw` at 0x216d9d4).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x216d91c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8 (`jalr` at 0x216d940).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=[a1+72], a4=[a1+36], a5=[a0+176]:8, a6=0x10006, a7=0x10 (`jalr` at 0x216d9c8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8 (`jalr` at 0x216d9e8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x216d9fc).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=[a0+176]:8+28, a2=?, a3=?, a5=[a0+176]:8 (`jalr` at 0x216da1c).
  The `beq` at 0x216d928 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B10 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0x216d934 is taken when a5(=[a0+2408]:8) == 0 -> B3 and falls through when a5(=[a0+2408]:8) != 0 -> B2.
  The `bne` at 0x216d958 is taken when a0(=[a0+184]:8) < a1(=[a0+176]:8+28) (unsigned) -> B9 and falls through when a0(=[a0+184]:8) >= a1(=[a0+176]:8+28) (unsigned) -> B4.
  The `beq` at 0x216d9dc is taken when a5(=[a0+2408]:8) == 0 -> B6 and falls through when a5(=[a0+2408]:8) != 0 -> B5.
  The `beq` at 0x216d9f4 is taken when t9(=[a0+208]:8) == 0 -> B8 and falls through when t9(=[a0+208]:8) != 0 -> B7.
  The routine returns v0 = ? (`jr` at 0x216da14).
  The routine returns v0 = 0x0 (`jr` at 0x216da38).

- `glXJoinSwapGroupSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x2170ca0, 264 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0x2170d10).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a0 (`sh` at 0x2170d18).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a0 (`sb` at 0x2170d20).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0x2170d30).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0x2170d38).
  Stores 4 bytes to [a0+176]:8 +0x10 through base a0 (`sw` at 0x2170d3c).
  Stores 4 bytes to [a0+176]:8 +0xc through base a0 (`sw` at 0x2170d44).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a0 (`sw` at 0x2170d4c).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a0 (`sb` at 0x2170d50).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a0 (`sb` at 0x2170d54).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2170cd0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8 (`jalr` at 0x2170ce8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x1000b, a3=0x10, a5=[a0+2408]:8, a6=[a0+176]:8+20, a7=0x5 (`jalr` at 0x2170d68).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2170d7c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2170d98).
  The `beq` at 0x2170cdc is taken when a5(=[a0+2408]:8) == 0 -> B2 and falls through when a5(=[a0+2408]:8) != 0 -> B1.
  The `bne` at 0x2170d00 is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+20) (unsigned) -> B8 and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+20) (unsigned) -> B3.
  The `beq` at 0x2170d5c is taken when a5(=[a0+2408]:8) == 0 -> B5 and falls through when a5(=[a0+2408]:8) != 0 -> B4.
  The `beq` at 0x2170d74 is taken when t9(=[a0+208]:8) == 0 -> B7 and falls through when t9(=[a0+208]:8) != 0 -> B6.
  The routine returns v0 = ? (`jr` at 0x2170d90).

- `glXBindSwapBarrierSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x2170da8, 264 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0x2170e14).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a0 (`sh` at 0x2170e1c).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a0 (`sb` at 0x2170e24).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0x2170e34).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0x2170e3c).
  Stores 4 bytes to [a0+176]:8 +0x10 through base a0 (`sw` at 0x2170e40).
  Stores 4 bytes to [a0+176]:8 +0xc through base a0 (`sw` at 0x2170e48).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a0 (`sw` at 0x2170e50).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a0 (`sb` at 0x2170e54).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a0 (`sb` at 0x2170e58).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2170dd8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8 (`jalr` at 0x2170df0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x1000c, a3=0x10, a5=[a0+2408]:8, a6=[a0+176]:8+20, a7=0x5 (`jalr` at 0x2170e6c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2170e80).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2170ea0).
  The `beq` at 0x2170de4 is taken when a5(=[a0+2408]:8) == 0 -> B2 and falls through when a5(=[a0+2408]:8) != 0 -> B1.
  The `bne` at 0x2170e08 is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+20) (unsigned) -> B8 and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+20) (unsigned) -> B3.
  The `beq` at 0x2170e60 is taken when a5(=[a0+2408]:8) == 0 -> B5 and falls through when a5(=[a0+2408]:8) != 0 -> B4.
  The `beq` at 0x2170e78 is taken when t9(=[a0+208]:8) == 0 -> B7 and falls through when t9(=[a0+208]:8) != 0 -> B6.
  The routine returns v0 = ? (`jr` at 0x2170e94).

- `glXQueryMaxSwapBarriersSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x2170eb0, 372 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0x2170f1c).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a6 (`sh` at 0x2170f24).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a6 (`sb` at 0x2170f2c).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0x2170f3c).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0x2170f44).
  Stores 4 bytes to [a0+176]:8 +0xc through base a6 (`sw` at 0x2170f48).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a6 (`sw` at 0x2170f60).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a6 (`sb` at 0x2170f6c).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a6 (`sb` at 0x2170f78).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s2 (`sw` at 0x2170fb8).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2170ee0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8 (`jalr` at 0x2170ef8).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a5=0x11, a6=[a0+176]:8, a7=0x1000d (`jalr` at 0x2170f74).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8 (`jalr` at 0x2170f90).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2170fa4).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8 (`jalr` at 0x2170fd0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8 (`jalr` at 0x2170fec).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2171000).
  The `beq` at 0x2170eec is taken when a5(=[a0+2408]:8) == 0 -> B2 and falls through when a5(=[a0+2408]:8) != 0 -> B1.
  The `bne` at 0x2170f10 is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+16) (unsigned) -> B9 and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+16) (unsigned) -> B3.
  The `beq` at 0x2170f7c is taken when v0(=ret(_XReply)) == 0 -> B10 and falls through when v0(=ret(_XReply)) != 0 -> B4.
  The `beq` at 0x2170f84 is taken when a5(=[a0+2408]:8) == 0 -> B6 and falls through when a5(=[a0+2408]:8) != 0 -> B5.
  The `beq` at 0x2170f9c is taken when t9(=[a0+208]:8) == 0 -> B8 and falls through when t9(=[a0+208]:8) != 0 -> B7.
  The `beq` at 0x2170fe0 is taken when a5(=[a0+2408]:8) == 0 -> B12 and falls through when a5(=[a0+2408]:8) != 0 -> B11.
  The `beq` at 0x2170ff8 is taken when t9(=[a0+208]:8) == 0 -> B14 and falls through when t9(=[a0+208]:8) != 0 -> B13.
  The routine returns v0 = 0x1 (`jr` at 0x2170fc8).
  The routine returns v0 = 0x0 (`jr` at 0x217101c).

- `glXQueryHyperpipeNetworkSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x217187c, 628 bytes) Inferred.
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base s1 (`sw` at 0x21718b0).
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0x21718ec).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a6 (`sh` at 0x21718f4).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a6 (`sb` at 0x21718fc).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0x217190c).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0x2171918).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a6 (`sw` at 0x2171920).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a6 (`sb` at 0x2171928).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a6 (`sb` at 0x2171930).
  Stores 4 bytes to [a0+176]:8 +0xc through base a6 (`sw` at 0x2171948).
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base s1 (`sw` at 0x217195c).
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base s1 (`sw` at 0x21719a4).
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base s1 (`sw` at 0x2171a30).
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base s1 (`sw` at 0x2171ae0).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x21718a8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0x21718c4).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+224], a5=0x1000e, a6=[a0+176]:8, a7=0x11 (`jalr` at 0x2171944).
  Calls `_XEatData` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2171970).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0x2171988).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x217199c).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x21719e0).
  Calls `_XEatData` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x21719fc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0x2171a14).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2171a28).
  Calls `_XRead` via got with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=? (`jalr` at 0x2171a44).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0x2171a5c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2171a70).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8 (`jalr` at 0x2171a94).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0x2171ab4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2171ac8).
  The `beq` at 0x21718b8 is taken when a2(=[a0+2408]:8) == 0 -> B2 and falls through when a2(=[a0+2408]:8) != 0 -> B1.
  The `bne` at 0x21718dc is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+16) (unsigned) -> B23 and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+16) (unsigned) -> B3.
  The `beq` at 0x217194c is taken when v0(=ret(_XReply)) == 0 -> B24 and falls through when v0(=ret(_XReply)) != 0 -> B4.
  The `blez` at 0x2171958 is taken when a0(?) <= 0 (signed) -> outside and falls through when a0(?) > 0 (signed) -> B5.
  The `bne` at 0x2171964 is taken when a0(?) < 0x21 (signed) -> B12 and falls through when a0(?) >= 0x21 (signed) -> B6.
  The `beq` at 0x217197c is taken when a2(=[a0+2408]:8) == 0 -> B8 and falls through when a2(=[a0+2408]:8) != 0 -> B7.
  The `beq` at 0x2171994 is taken when t9(=[a0+208]:8) == 0 -> B10 and falls through when t9(=[a0+208]:8) != 0 -> B9.
  The `bne` at 0x21719ec is taken when v0(=ret(malloc)) != 0 -> B18 and falls through when v0(=ret(malloc)) == 0 -> B13.
  The `beq` at 0x2171a08 is taken when a2(=[a0+2408]:8) == 0 -> B15 and falls through when a2(=[a0+2408]:8) != 0 -> B14.
  The `beq` at 0x2171a20 is taken when t9(=[a0+208]:8) == 0 -> B17 and falls through when t9(=[a0+208]:8) != 0 -> B16.
  The `beq` at 0x2171a50 is taken when a2(=[a0+2408]:8) == 0 -> B20 and falls through when a2(=[a0+2408]:8) != 0 -> B19.
  The `beq` at 0x2171a68 is taken when t9(=[a0+208]:8) == 0 -> B22 and falls through when t9(=[a0+208]:8) != 0 -> B21.
  The `beq` at 0x2171aa8 is taken when a2(=[a0+2408]:8) == 0 -> B26 and falls through when a2(=[a0+2408]:8) != 0 -> B25.
  The `beq` at 0x2171ac0 is taken when t9(=[a0+208]:8) == 0 -> B28 and falls through when t9(=[a0+208]:8) != 0 -> B27.
  The routine returns v0 = 0x0 (`jr` at 0x21719bc).
  The routine returns v0 = ? (`jr` at 0x2171a8c).
  The routine returns v0 = 0x0 (`jr` at 0x2171ae8).

- `glXHyperpipeConfigSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x2171af0, 708 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0x2171ba8).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a0 (`sh` at 0x2171bb0).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a0 (`sb` at 0x2171bb8).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0x2171bc8).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0x2171bd4).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a0 (`sw` at 0x2171bdc).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a0 (`sb` at 0x2171be0).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a0 (`sb` at 0x2171be8).
  Stores 4 bytes to [a0+176]:8 +0x14 through base a0 (`sw` at 0x2171bf0).
  Stores 4 bytes to [a0+176]:8 +0x10 through base a0 (`sw` at 0x2171bfc).
  Stores 4 bytes to [a0+176]:8 +0xc through base a0 (`sw` at 0x2171c08).
  Stores 1 bytes to [a0+176]:8 +0x20 through base a0 (`sb` at 0x2171c28).
  Stores 1 bytes to ? (base unknown) through base a3 (`sb` at 0x2171c48).
  Stores 1 bytes to ? (base unknown) through base a3 (`sb` at 0x2171c5c).
  Stores 4 bytes to a4 (arg4 at entry) +0x0 through base a2 (`sw` at 0x2171c84).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2171b2c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0x2171b64).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a4=[a0+224], a5=a1 at entry (arg1), a6=0x10010 (`jalr` at 0x2171c70).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=a4 at entry (arg4), a3=? (`jalr` at 0x2171cac).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2171cc0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=a4 at entry (arg4), a3=? (`jalr` at 0x2171d18).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2171d2c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2171d58).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0x2171d7c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2171d90).
  The `blez` at 0x2171b34 is taken when s1(=a2) <= 0 (signed) -> B21 and falls through when s1(=a2) > 0 (signed) -> B1.
  The `beq` at 0x2171b3c is taken when s2(=a3) == 0 -> B21 and falls through when s2(=a3) != 0 -> B2.
  The `beq` at 0x2171b44 is taken when v1(?) == 0 -> B21 and falls through when v1(?) != 0 -> B3.
  The `bltz` at 0x2171b4c is taken when a0(=a1) < 0 (signed) -> B34 and falls through when a0(=a1) >= 0 (signed) -> B4.
  The `beq` at 0x2171b58 is taken when a2(=[a0+2408]:8) == 0 -> B6 and falls through when a2(=[a0+2408]:8) != 0 -> B5.
  The `bne` at 0x2171b98 is taken when a1(=[a0+184]:8) < a3(?) (unsigned) -> B28 and falls through when a1(=[a0+184]:8) >= a3(?) (unsigned) -> B7.
  The `blez` at 0x2171c04 is taken when a7(?) <= 0 (signed) -> B13 and falls through when a7(?) > 0 (signed) -> B8.
  The `beq` at 0x2171c10 is taken when (a7(?) & 0x1) == 0 -> B10 and falls through when (a7(?) & 0x1) != 0 -> B9.
  The `beq` at 0x2171c30 is taken when at(?) == 0 -> B13 and falls through when at(?) != 0 -> B11.
  The `bne` at 0x2171c58 is taken when a7(?) != a1(?) -> B12 and falls through when a7(?) == a1(?) -> B13.
  The `beq` at 0x2171c78 is taken when v0(=ret(_XReply)) == 0 -> B29 and falls through when v0(=ret(_XReply)) != 0 -> B14.
  The `bne` at 0x2171c8c is taken when s1(=a2) != a1(?) -> B23 and falls through when s1(=a2) == a1(?) -> B15.
  The `bltz` at 0x2171c94 is taken when v0(?) < 0 (signed) -> B23 and falls through when v0(?) >= 0 (signed) -> B16.
  The `beq` at 0x2171ca0 is taken when v0(=[a0+2408]:8) == 0 -> B18 and falls through when v0(=[a0+2408]:8) != 0 -> B17.
  The `beq` at 0x2171cb8 is taken when t9(=[a0+208]:8) == 0 -> B20 and falls through when t9(=[a0+208]:8) != 0 -> B19.
  The `beq` at 0x2171d0c is taken when v0(=[a0+2408]:8) == 0 -> B25 and falls through when v0(=[a0+2408]:8) != 0 -> B24.
  The `beq` at 0x2171d24 is taken when t9(=[a0+208]:8) == 0 -> B27 and falls through when t9(=[a0+208]:8) != 0 -> B26.
  The `beq` at 0x2171d70 is taken when a2(=[a0+2408]:8) == 0 -> B31 and falls through when a2(=[a0+2408]:8) != 0 -> B30.
  The `beq` at 0x2171d88 is taken when t9(=[a0+208]:8) == 0 -> B33 and falls through when t9(=[a0+208]:8) != 0 -> B32.
  The routine returns v0 = 0x0 (`jr` at 0x2171ce0).
  The routine returns v0 = 0x5b (`jr` at 0x2171d00).
  The routine returns v0 = 0x5b (`jr` at 0x2171d4c).

- `glXDestroyHyperpipeConfigSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x2171db4, 372 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0x2171e1c).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a6 (`sh` at 0x2171e24).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a6 (`sb` at 0x2171e2c).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0x2171e3c).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0x2171e48).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a6 (`sw` at 0x2171e50).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a6 (`sb` at 0x2171e58).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a6 (`sb` at 0x2171e5c).
  Stores 4 bytes to [a0+176]:8 +0x10 through base a6 (`sw` at 0x2171e70).
  Stores 4 bytes to [a0+176]:8 +0xc through base a6 (`sw` at 0x2171e7c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2171de0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8 (`jalr` at 0x2171df8).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a4=[a0+224], a5=0x10011, a6=[a0+176]:8, a7=0x11 (`jalr` at 0x2171e78).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8 (`jalr` at 0x2171e98).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2171eac).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8 (`jalr` at 0x2171ed4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8 (`jalr` at 0x2171ef0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2171f04).
  The `beq` at 0x2171dec is taken when a4(=[a0+2408]:8) == 0 -> B2 and falls through when a4(=[a0+2408]:8) != 0 -> B1.
  The `bne` at 0x2171e10 is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+32) (unsigned) -> B9 and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+32) (unsigned) -> B3.
  The `beq` at 0x2171e80 is taken when v0(=ret(_XReply)) == 0 -> B10 and falls through when v0(=ret(_XReply)) != 0 -> B4.
  The `beq` at 0x2171e8c is taken when a4(=[a0+2408]:8) == 0 -> B6 and falls through when a4(=[a0+2408]:8) != 0 -> B5.
  The `beq` at 0x2171ea4 is taken when t9(=[a0+208]:8) == 0 -> B8 and falls through when t9(=[a0+208]:8) != 0 -> B7.
  The `beq` at 0x2171ee4 is taken when a4(=[a0+2408]:8) == 0 -> B12 and falls through when a4(=[a0+2408]:8) != 0 -> B11.
  The `beq` at 0x2171efc is taken when t9(=[a0+208]:8) == 0 -> B14 and falls through when t9(=[a0+208]:8) != 0 -> B13.
  The routine returns v0 = ? (`jr` at 0x2171ec8).
  The routine returns v0 = 0x5c (`jr` at 0x2171f20).

- `glXQueryHyperpipeConfigSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x2171f28, 616 bytes) Inferred.
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s1 (`sw` at 0x2171f60).
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0x2171f9c).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a6 (`sh` at 0x2171fa4).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a6 (`sb` at 0x2171fac).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0x2171fbc).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0x2171fc8).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a6 (`sw` at 0x2171fd0).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a6 (`sb` at 0x2171fd8).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a6 (`sb` at 0x2171fdc).
  Stores 4 bytes to [a0+176]:8 +0x10 through base a6 (`sw` at 0x2171ff0).
  Stores 4 bytes to [a0+176]:8 +0xc through base a6 (`sw` at 0x2171ffc).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s1 (`sw` at 0x2172014).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s1 (`sw` at 0x2172018).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s1 (`sw` at 0x217209c).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s1 (`sw` at 0x2172158).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2171f58).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0x2171f74).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+224], a5=a1 at entry (arg1), a6=[a0+176]:8, a7=0x1000f (`jalr` at 0x2171ff8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0x217202c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2172040).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x217207c).
  Calls `_XEatData` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2172094).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0x21720b0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x21720c4).
  Calls `_XRead` via got with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=? (`jalr` at 0x21720f8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0x2172110).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2172124).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=a1 at entry (arg1), a6=[a0+176]:8 (`jalr` at 0x2172148).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0x217216c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2172180).
  The `beq` at 0x2171f68 is taken when a2(=[a0+2408]:8) == 0 -> B2 and falls through when a2(=[a0+2408]:8) != 0 -> B1.
  The `bne` at 0x2171f8c is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+32) (unsigned) -> B21 and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+32) (unsigned) -> B3.
  The `beq` at 0x2172000 is taken when v0(=ret(_XReply)) == 0 -> B22 and falls through when v0(=ret(_XReply)) != 0 -> B4.
  The `bgtz` at 0x2172010 is taken when at(?) > 0 (signed) -> B10 and falls through when at(?) <= 0 (signed) -> B5.
  The `beq` at 0x2172020 is taken when a2(=[a0+2408]:8) == 0 -> B7 and falls through when a2(=[a0+2408]:8) != 0 -> B6.
  The `beq` at 0x2172038 is taken when t9(=[a0+208]:8) == 0 -> B9 and falls through when t9(=[a0+208]:8) != 0 -> B8.
  The `bne` at 0x2172084 is taken when v0(=ret(malloc)) != 0 -> B16 and falls through when v0(=ret(malloc)) == 0 -> B11.
  The `beq` at 0x21720a4 is taken when a2(=[a0+2408]:8) == 0 -> B13 and falls through when a2(=[a0+2408]:8) != 0 -> B12.
  The `beq` at 0x21720bc is taken when t9(=[a0+208]:8) == 0 -> B15 and falls through when t9(=[a0+208]:8) != 0 -> B14.
  The `beq` at 0x2172104 is taken when a2(=[a0+2408]:8) == 0 -> B18 and falls through when a2(=[a0+2408]:8) != 0 -> B17.
  The `beq` at 0x217211c is taken when t9(=[a0+208]:8) == 0 -> B20 and falls through when t9(=[a0+208]:8) != 0 -> B19.
  The `beq` at 0x2172160 is taken when a2(=[a0+2408]:8) == 0 -> B24 and falls through when a2(=[a0+2408]:8) != 0 -> B23.
  The `beq` at 0x2172178 is taken when t9(=[a0+208]:8) == 0 -> B26 and falls through when t9(=[a0+208]:8) != 0 -> B25.
  The routine returns v0 = 0x0 (`jr` at 0x217205c).
  The routine returns v0 = 0x0 (`jr` at 0x21720e0).
  The routine returns v0 = ? (`jr` at 0x217213c).

- `CreateContext` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8ae040, 2324 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s1 (`sw` at 0xd8ae614).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s1 (`sw` at 0xd8ae630).
  Stores 2 bytes to [a0+108] +0x2 through base v0 (`sh` at 0xd8ae63c).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8ae640).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s1 (`sw` at 0xd8ae658).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s1 (`sw` at 0xd8ae65c).
  Stores 1 bytes to [a0+108] +0x1 through base v0 (`sb` at 0xd8ae668).
  Stores 4 bytes to [a0+108] +0x4 through base v0 (`sw` at 0xd8ae66c).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8ae670).
  Stores 4 bytes to [a0+108] +0xc through base v0 (`sw` at 0xd8ae678).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xd8ae698).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xd8ae6a0).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xd8ae6a8).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xd8ae6b0).
  Stores 1 bytes to ? (base unknown) through base v1 (`sb` at 0xd8ae6b8).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s1 (`sw` at 0xd8ae730).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s1 (`sw` at 0xd8ae74c).
  Stores 2 bytes to [a0+108] +0x2 through base v0 (`sh` at 0xd8ae758).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8ae75c).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s1 (`sw` at 0xd8ae770).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s1 (`sw` at 0xd8ae774).
  Stores 1 bytes to [a0+108] +0x1 through base v0 (`sb` at 0xd8ae77c).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8ae780).
  Stores 4 bytes to [a0+108] +0x4 through base v0 (`sw` at 0xd8ae788).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xd8ae7a8).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xd8ae7b0).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xd8ae7b8).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xd8ae7c0).
  Stores 1 bytes to ? (base unknown) through base v1 (`sb` at 0xd8ae7c8).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s1 (`sw` at 0xd8ae84c).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s1 (`sw` at 0xd8ae868).
  Stores 2 bytes to [a0+108] +0x2 through base v0 (`sh` at 0xd8ae874).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8ae878).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s1 (`sw` at 0xd8ae88c).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s1 (`sw` at 0xd8ae890).
  Stores 1 bytes to [a0+108] +0x1 through base v0 (`sb` at 0xd8ae898).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8ae89c).
  Stores 4 bytes to [a0+108] +0x4 through base v0 (`sw` at 0xd8ae8a4).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xd8ae8c4).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xd8ae8cc).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xd8ae8d4).
  Stores 1 bytes to ? (base unknown) through base v1 (`sb` at 0xd8ae8dc).
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8ae070).
  Calls `calloc` via got with a0=0x1, a1=0x128, a2=ret(__glXInitialize), a3=a3 at entry (arg3) (`jalr` at 0xd8ae0a0).
  Calls `free` via got with a0=ret(calloc), a1=a2 at entry (arg2), a2=?, a3=a3 at entry (arg3) (`jalr` at 0xd8ae16c).
  Calls `getenv` via got with a0=0xd8dd460, a1=a2 at entry (arg2), a2=?, a3=a3 at entry (arg3) (`jalr` at 0xd8ae1b4).
  Calls `isLocal [0xd8b1088]` via register-constant with a0=ret(calloc), a1=?, a2=?, a3=a3 at entry (arg3) (`jalr` at 0xd8ae228).
  Calls `free` via got with a0=ret(calloc), a1=?, a2=?, a3=a3 at entry (arg3) (`jalr` at 0xd8ae2d0).
  Calls `__glXFindFBConfigFromVid [0xd8d320c]` via register-constant with a0=a0 at entry (arg0), a1=[ret(calloc)+32], a2=[ret(calloc)+44], a3=a3 at entry (arg3) (`jalr` at 0xd8ae2fc).
  Calls `__glXFindVisualConfig` via got with a0=a0 at entry (arg0), a1=[ret(calloc)+32], a2=[ret(calloc)+44], a3=? (`jalr` at 0xd8ae328).
  Calls `__glXCreateDirectContext` via got with a0=ret(calloc), a1=?, a2=?, a3=? (`jalr` at 0xd8ae39c).
  Calls `free` via got with a0=ret(calloc), a1=?, a2=?, a3=? (`jalr` at 0xd8ae3b8).
  Calls `getenv` via got with a0=0xd8dd470, a1=?, a2=?, a3=? (`jalr` at 0xd8ae3e8).
  Calls `fprintf` via got with a0=sym(__iob)+32, a1=0xd8dd480, a2=?, a3=? (`jalr` at 0xd8ae420).
  Calls `exit` via got with a0=0x0, a1=?, a2=?, a3=? (`jalr` at 0xd8ae434).
  Calls `XMaxRequestSize` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8ae45c).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8ae474).
  Calls `free` via got with a0=ret(calloc), a1=?, a2=?, a3=? (`jalr` at 0xd8ae494).
  Calls `__glXInitVertexArrayState` via got with a0=ret(calloc), a1=?, a2=?, a3=? (`jalr` at 0xd8ae54c).
  Calls `calloc` via got with a0=0x10, a1=0x4, a2=?, a3=? (`jalr` at 0xd8ae56c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8ae5b0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8ae5f4).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8ae620).
  Calls `__glXOverrideVisualsIdToXid` via got with a0=[ret(calloc)+48], a1=0x10, a2=?, a3=? (`jalr` at 0xd8ae688).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8ae6d0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8ae6ec).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8ae710).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8ae73c).
  Calls `__glXOverrideVisualsIdToXid` via got with a0=[ret(calloc)+48], a1=0x18, a2=?, a3=? (`jalr` at 0xd8ae798).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8ae7e0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8ae7fc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8ae82c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8ae858).
  Calls `__glXOverrideVisualsIdToXid` via got with a0=[ret(calloc)+44], a1=0x3, a2=?, a3=? (`jalr` at 0xd8ae8b4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8ae8f4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8ae910).
  The `bne` at 0xd8ae080 is taken when v0(=ret(__glXInitialize)) != 0 -> B2 and falls through when v0(=ret(__glXInitialize)) == 0 -> B1.
  The `bne` at 0xd8ae0b4 is taken when v0(=ret(calloc)) != 0 -> B4 and falls through when v0(=ret(calloc)) == 0 -> B3.
  The `bne` at 0xd8ae0fc is taken when t1(?) != 0 -> B15 and falls through when t1(?) == 0 -> B5.
  The `beq` at 0xd8ae104 is taken when a1(=a2) == 0 -> B7 and falls through when a1(=a2) != 0 -> B6.
  The `beql` at 0xd8ae130 is taken when t5(=a1) == 0 -> B10 and falls through when t5(=a1) != 0 -> B8.
  The `bltz` at 0xd8ae14c is taken when a0(?) < 0 (signed) -> B12 and falls through when a0(?) >= 0 (signed) -> B11.
  The `bnel` at 0xd8ae15c is taken when a0(?) < t7(=[a0+136]) (signed) -> B14 and falls through when a0(?) >= t7(=[a0+136]) (signed) -> B12.
  The `beq` at 0xd8ae1c0 is taken when v0(=ret(getenv)) == 0 -> B24 and falls through when v0(=ret(getenv)) != 0 -> B16.
  The `bnel` at 0xd8ae1d0 is taken when v1(=[ret(getenv)]:1) != at(=0x79) -> B19 and falls through when v1(=[ret(getenv)]:1) == at(=0x79) -> B17.
  The `bnel` at 0xd8ae1e8 is taken when v1(=[ret(getenv)]:1) != at(=0x6e) -> B22 and falls through when v1(=[ret(getenv)]:1) == at(=0x6e) -> B20.
  The `bne` at 0xd8ae1fc is taken when v1(=[ret(getenv)]:1) != at(=0x21) -> B24 and falls through when v1(=[ret(getenv)]:1) == at(=0x21) -> B23.
  The `bne` at 0xd8ae210 is taken when v1(?) != at(=0x1) -> B27 and falls through when v1(?) == at(=0x1) -> B25.
  The `bne` at 0xd8ae238 is taken when v0(=ret(isLocal)) != 0 -> B27 and falls through when v0(=ret(isLocal)) == 0 -> B26.
  The `beq` at 0xd8ae244 is taken when v1(?) == 0 -> B31 and falls through when v1(?) != 0 -> B28.
  The `beq` at 0xd8ae250 is taken when t4(?) == 0 -> B31 and falls through when t4(?) != 0 -> B29.
  The `bne` at 0xd8ae25c is taken when t5(?) != 0 -> B31 and falls through when t5(?) == 0 -> B30.
  The `beql` at 0xd8ae268 is taken when t6(?) == 0 -> B33 and falls through when t6(?) != 0 -> B32.
  The `beq` at 0xd8ae278 is taken when t7(?) == 0 -> B54 and falls through when t7(?) != 0 -> B34.
  The `beq` at 0xd8ae28c is taken when t9(=a2) == 0 -> B41 and falls through when t9(=a2) != 0 -> B35.
  The `beq` at 0xd8ae294 is taken when a3 == at(=0x8014) -> B38 and falls through when a3 != at(=0x8014) -> B36.
  The `beq` at 0xd8ae2a0 is taken when a3 == at(=0x8015) -> B39 and falls through when a3 != at(=0x8015) -> B37.
  The `bnel` at 0xd8ae2c0 is taken when (t1(=[a2+44]) & v0(=one of 0x0, 0x1, 0x2)) != 0 -> B50 and falls through when (t1(=[a2+44]) & v0(=one of 0x0, 0x1, 0x2)) == 0 -> B40.
  The `beql` at 0xd8ae2e4 is taken when t3(=a1) == 0 -> B50 and falls through when t3(=a1) != 0 -> B42.
  The `beq` at 0xd8ae308 is taken when v0(=ret(__glXFindFBConfigFromVid)) == 0 -> B44 and falls through when v0(=ret(__glXFindFBConfigFromVid)) != 0 -> B43.
  The `beql` at 0xd8ae344 is taken when t6(=[a1+16]) >= 0x6 (unsigned) -> B49 and falls through when t6(=[a1+16]) < 0x6 (unsigned) -> B46.
  The `beq` at 0xd8ae380 is taken when t7(?) == 0 -> B52 and falls through when t7(?) != 0 -> B51.
  The `bne` at 0xd8ae3a8 is taken when v0(=ret(__glXCreateDirectContext)) != 0 -> B54 and falls through when v0(=ret(__glXCreateDirectContext)) == 0 -> B53.
  The `bnel` at 0xd8ae3d8 is taken when t9(?) != 0 -> B60 and falls through when t9(?) == 0 -> B55.
  The `beq` at 0xd8ae3f0 is taken when v0(=ret(getenv)) == 0 -> B59 and falls through when v0(=ret(getenv)) != 0 -> B56.
  The `beq` at 0xd8ae400 is taken when v1(=[ret(getenv)]:1) == at(=0x6e) -> B58 and falls through when v1(=[ret(getenv)]:1) != at(=0x6e) -> B57.
  The `bnel` at 0xd8ae408 is taken when v1(=[ret(getenv)]:1) != at(=0x4e) -> B60 and falls through when v1(=[ret(getenv)]:1) == at(=0x4e) -> B58.
  The `beq` at 0xd8ae444 is taken when t0(?) == 0 -> B62 and falls through when t0(?) != 0 -> B61.
  The `bne` at 0xd8ae484 is taken when v0(=ret(malloc)) != 0 -> B65 and falls through when v0(=ret(malloc)) == 0 -> B64.
  The `beq` at 0xd8ae4cc is taken when t1(=[sym(__glx_debug)]) == 0 -> B67 and falls through when t1(=[sym(__glx_debug)]) != 0 -> B66.
  The `bne` at 0xd8ae4e4 is taken when at(?) != 0 -> B70 and falls through when at(?) == 0 -> B69.
  The `bne` at 0xd8ae4f8 is taken when a0(?) < at(=0xfa01) (signed) -> B72 and falls through when a0(?) >= at(=0xfa01) (signed) -> B71.
  The `beql` at 0xd8ae52c is taken when t6(?) == 0 -> B75 and falls through when t6(?) != 0 -> B73.
  The `bnel` at 0xd8ae5a0 is taken when t1(?) != 0 -> B108 and falls through when t1(?) == 0 -> B76.
  The `beql` at 0xd8ae5c8 is taken when t2(?) == 0 -> B97 and falls through when t2(?) != 0 -> B77.
  The `bne` at 0xd8ae5d0 is taken when t3(=a1) != 0 -> B96 and falls through when t3(=a1) == 0 -> B78.
  The `beql` at 0xd8ae5d8 is taken when t4(?) == 0 -> B88 and falls through when t4(?) != 0 -> B79.
  The `beql` at 0xd8ae5e4 is taken when a1(=[a0+1232]) == 0 -> B81 and falls through when a1(=[a0+1232]) != 0 -> B80.
  The `beql` at 0xd8ae610 is taken when t5(=[a0+112]) >= t6(=[a0+108]+36) (unsigned) -> B83 and falls through when t5(=[a0+112]) < t6(=[a0+108]+36) (unsigned) -> B82.
  The `beql` at 0xd8ae6c0 is taken when a1(=[a0+1232]) == 0 -> B85 and falls through when a1(=[a0+1232]) != 0 -> B84.
  The `beq` at 0xd8ae6e4 is taken when v0(=[a0+124]) == 0 -> B106 and falls through when v0(=[a0+124]) != 0 -> B86.
  The `beql` at 0xd8ae700 is taken when a1(=[a0+1232]) == 0 -> B90 and falls through when a1(=[a0+1232]) != 0 -> B89.
  The `beql` at 0xd8ae72c is taken when t0(=[a0+112]) >= t1(=[a0+108]+28) (unsigned) -> B92 and falls through when t0(=[a0+112]) < t1(=[a0+108]+28) (unsigned) -> B91.
  The `beql` at 0xd8ae7d0 is taken when a1(=[a0+1232]) == 0 -> B94 and falls through when a1(=[a0+1232]) != 0 -> B93.
  The `beq` at 0xd8ae7f4 is taken when v0(=[a0+124]) == 0 -> B106 and falls through when v0(=[a0+124]) != 0 -> B95.
  The `beq` at 0xd8ae810 is taken when t3(=a1) == 0 -> B106 and falls through when t3(=a1) != 0 -> B98.
  The `beql` at 0xd8ae81c is taken when a1(=[a0+1232]) == 0 -> B100 and falls through when a1(=[a0+1232]) != 0 -> B99.
  The `beql` at 0xd8ae848 is taken when t4(=[a0+112]) >= t5(=[a0+108]+24) (unsigned) -> B102 and falls through when t4(=[a0+112]) < t5(=[a0+108]+24) (unsigned) -> B101.
  The `beql` at 0xd8ae8e4 is taken when a1(=[a0+1232]) == 0 -> B104 and falls through when a1(=[a0+1232]) != 0 -> B103.
  The `beq` at 0xd8ae908 is taken when v0(=[a0+124]) == 0 -> B106 and falls through when v0(=[a0+124]) != 0 -> B105.
  The routine returns v0 = ? (`jr` at 0xd8ae94c).

- `__glXOpenGraphicsDevice` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8aeed8, 388 bytes) Inferred.
  Stores 4 bytes to [0x1014] +0x104 through base t0 (`sw` at 0xd8af004).
  Stores 4 bytes to ? (base unknown) through base t4 (`sw` at 0xd8af048).
  Calls `__glXFatal` via got with a0=0x0, a1=0xd8ddca0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8aef08).
  Calls `open` via got with a0=0xd8ddcbc, a1=0x802, a2=?, a3=? (`jalr` at 0xd8aef40).
  Calls `__glXFatal` via got with a0=0x0, a1=0xd8ddcc8, a2=?, a3=? (`jalr` at 0xd8aef60).
  Calls `fcntl` via got with a0=?, a1=0x2, a2=0x5, a3=? (`jalr` at 0xd8aef78).
  Calls `__glXFatal` via got with a0=0x0, a1=0xd8ddce8, a2=?, a3=? (`jalr` at 0xd8aef94).
  Calls `ioctl` via got with a0=?, a1=0x65, a2=0x0, a3=? (`jalr` at 0xd8aefbc).
  Calls `__glXFatal` via got with a0=0x0, a1=0xd8ddcf8, a2=ret(ioctl), a3=? (`jalr` at 0xd8aefe0).
  Calls `__glXFatal` via got with a0=0x0, a1=0xd8ddd0c, a2=?, a3=? (`jalr` at 0xd8af02c).
  The `bne` at 0xd8aeef4 is taken when a0 < 0x41 (signed) -> B2 and falls through when a0 >= 0x41 (signed) -> B1.
  The `bgezl` at 0xd8aef2c is taken when t9(=[([0x1014] + (a0 << 0x2))+4]) >= 0 (signed) -> B16 and falls through when t9(=[([0x1014] + (a0 << 0x2))+4]) < 0 (signed) -> B3.
  The `bgez` at 0xd8aef4c is taken when v0(=ret(open)) >= 0 (signed) -> B5 and falls through when v0(=ret(open)) < 0 (signed) -> B4.
  The `bgez` at 0xd8aef80 is taken when v0(=ret(fcntl)) >= 0 (signed) -> B7 and falls through when v0(=ret(fcntl)) < 0 (signed) -> B6.
  The `bgezl` at 0xd8aefa8 is taken when v1(=[[0x1014]+260]) >= 0 (signed) -> B13 and falls through when v1(=[[0x1014]+260]) < 0 (signed) -> B8.
  The `bgtz` at 0xd8aefc8 is taken when v0(=ret(ioctl)) > 0 (signed) -> B10 and falls through when v0(=ret(ioctl)) <= 0 (signed) -> B9.
  The `bnel` at 0xd8aeff4 is taken when a2(?) < 0x41 (signed) -> B12 and falls through when a2(?) >= 0x41 (signed) -> B11.
  The `beql` at 0xd8af018 is taken when v1(=[[0x1014]+260]) >= t1(=a0) (signed) -> B15 and falls through when v1(=[[0x1014]+260]) < t1(=a0) (signed) -> B14.
  The routine returns v0 = ? (`jr` at 0xd8af054).

- `glXSelectEventSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8bf738, 312 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8bf7a8).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8bf7c4).
  Stores 2 bytes to [a0+108] +0x2 through base a0 (`sh` at 0xd8bf7d0).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8bf7d4).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8bf7ec).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8bf7f0).
  Stores 1 bytes to [a0+108] +0x1 through base a0 (`sb` at 0xd8bf7fc).
  Stores 4 bytes to [a0+108] +0x4 through base a0 (`sw` at 0xd8bf800).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8bf804).
  Stores 4 bytes to [a0+108] +0x10 through base a0 (`sw` at 0xd8bf810).
  Stores 4 bytes to [a0+108] +0xc through base a0 (`sw` at 0xd8bf814).
  Stores 4 bytes to [a0+108] +0x14 through base a0 (`sw` at 0xd8bf81c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8bf760).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bf788).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bf7b4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=? (`jalr` at 0xd8bf834).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bf850).
  The `beq` at 0xd8bf76c is taken when v0(=ret(__glXSetupForCommand)) == 0 -> B9 and falls through when v0(=ret(__glXSetupForCommand)) != 0 -> B1.
  The `beql` at 0xd8bf778 is taken when v1(=[a0+1232]) == 0 -> B3 and falls through when v1(=[a0+1232]) != 0 -> B2.
  The `beql` at 0xd8bf7a4 is taken when t6(=[a0+112]) >= t7(=[a0+108]+24) (unsigned) -> B5 and falls through when t6(=[a0+112]) < t7(=[a0+108]+24) (unsigned) -> B4.
  The `beql` at 0xd8bf824 is taken when v1(=[a0+1232]) == 0 -> B7 and falls through when v1(=[a0+1232]) != 0 -> B6.
  The `beql` at 0xd8bf848 is taken when v0(=[a0+124]) == 0 -> B10 and falls through when v0(=[a0+124]) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xd8bf868).

- `__glXGetDrawableAttributes` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8bf964, 1100 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s1 (`sw` at 0xd8bf9f0).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s1 (`sw` at 0xd8bfa0c).
  Stores 2 bytes to [a0+108] +0x2 through base v1 (`sh` at 0xd8bfa18).
  Stores 1 bytes to [a0+108] +0x0 through base v1 (`sb` at 0xd8bfa1c).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s1 (`sw` at 0xd8bfa34).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s1 (`sw` at 0xd8bfa38).
  Stores 1 bytes to [a0+108] +0x1 through base v1 (`sb` at 0xd8bfa48).
  Stores 4 bytes to [a0+108] +0x4 through base v1 (`sw` at 0xd8bfa4c).
  Stores 1 bytes to [a0+108] +0x0 through base v1 (`sb` at 0xd8bfa50).
  Stores 4 bytes to [a0+108] +0xc through base v1 (`sw` at 0xd8bfa60).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s1 (`sw` at 0xd8bfb00).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s1 (`sw` at 0xd8bfb1c).
  Stores 2 bytes to [a0+108] +0x2 through base v1 (`sh` at 0xd8bfb28).
  Stores 1 bytes to [a0+108] +0x0 through base v1 (`sb` at 0xd8bfb2c).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s1 (`sw` at 0xd8bfb44).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s1 (`sw` at 0xd8bfb48).
  Stores 1 bytes to [a0+108] +0x1 through base v1 (`sb` at 0xd8bfb50).
  Stores 1 bytes to [a0+108] +0x0 through base v1 (`sb` at 0xd8bfb58).
  Stores 4 bytes to [a0+108] +0x4 through base v1 (`sw` at 0xd8bfb68).
  Stores 4 bytes to a2 (arg2 at entry) +0x4 through base s0 (`sw` at 0xd8bfd04).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s0 (`sw` at 0xd8bfd0c).
  Stores 1 bytes to a2 (arg2 at entry) +0x14 through base s0 (`sb` at 0xd8bfd14).
  Stores 4 bytes to a2 (arg2 at entry) +0x8 through base s0 (`sw` at 0xd8bfd1c).
  Stores 4 bytes to a2 (arg2 at entry) +0xc through base s0 (`sw` at 0xd8bfd24).
  Stores 4 bytes to a2 (arg2 at entry) +0x10 through base s0 (`sw` at 0xd8bfd2c).
  Stores 1 bytes to a2 (arg2 at entry) +0x15 through base s0 (`sb` at 0xd8bfd34).
  Stores 4 bytes to a2 (arg2 at entry) +0x18 through base s0 (`sw` at 0xd8bfd38).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8bf994).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bf9d0).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bf9fc).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-60, a2=0x0, a3=0x0 (`jalr` at 0xd8bfa70).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bfa94).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bfab0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bfae0).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bfb0c).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0 (`jalr` at 0xd8bfb70).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bfb94).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bfbb0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bfbe4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bfc00).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8bfc20).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=? (`jalr` at 0xd8bfc50).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bfc6c).
  Calls `_XRead` via got with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=? (`jalr` at 0xd8bfc8c).
  Calls `memset` via got with a0=a2 at entry (arg2), a1=0x0, a2=0x1c, a3=? (`jalr` at 0xd8bfca8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bfd5c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bfd78).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8bfd8c).
  The `bne` at 0xd8bf9a0 is taken when v0(=ret(__glXSetupForCommand)) != 0 -> B2 and falls through when v0(=ret(__glXSetupForCommand)) == 0 -> B1.
  The `beql` at 0xd8bf9b4 is taken when t6(?) == 0 -> B15 and falls through when t6(?) != 0 -> B3.
  The `beql` at 0xd8bf9c0 is taken when v0(=[a0+1232]) == 0 -> B5 and falls through when v0(=[a0+1232]) != 0 -> B4.
  The `beql` at 0xd8bf9ec is taken when t7(=[a0+112]) >= t8(=[a0+108]+16) (unsigned) -> B7 and falls through when t7(=[a0+112]) < t8(=[a0+108]+16) (unsigned) -> B6.
  The `bne` at 0xd8bfa78 is taken when v0(=ret(_XReply)) != 0 -> B13 and falls through when v0(=ret(_XReply)) == 0 -> B8.
  The `beql` at 0xd8bfa84 is taken when v0(=[a0+1232]) == 0 -> B10 and falls through when v0(=[a0+1232]) != 0 -> B9.
  The `beq` at 0xd8bfaa8 is taken when v0(=[a0+124]) == 0 -> B12 and falls through when v0(=[a0+124]) != 0 -> B11.
  The `beql` at 0xd8bfad0 is taken when v0(=[a0+1232]) == 0 -> B17 and falls through when v0(=[a0+1232]) != 0 -> B16.
  The `beql` at 0xd8bfafc is taken when t2(=[a0+112]) >= t3(=[a0+108]+8) (unsigned) -> B19 and falls through when t2(=[a0+112]) < t3(=[a0+108]+8) (unsigned) -> B18.
  The `bne` at 0xd8bfb78 is taken when v0(=ret(_XReply)) != 0 -> B25 and falls through when v0(=ret(_XReply)) == 0 -> B20.
  The `beql` at 0xd8bfb84 is taken when v0(=[a0+1232]) == 0 -> B22 and falls through when v0(=[a0+1232]) != 0 -> B21.
  The `beq` at 0xd8bfba8 is taken when v0(=[a0+124]) == 0 -> B24 and falls through when v0(=[a0+124]) != 0 -> B23.
  The `bne` at 0xd8bfbc8 is taken when a3(?) != 0 -> B32 and falls through when a3(?) == 0 -> B27.
  The `beql` at 0xd8bfbd4 is taken when v0(=[a0+1232]) == 0 -> B29 and falls through when v0(=[a0+1232]) != 0 -> B28.
  The `beq` at 0xd8bfbf8 is taken when v0(=[a0+124]) == 0 -> B31 and falls through when v0(=[a0+124]) != 0 -> B30.
  The `bne` at 0xd8bfc34 is taken when v0(=ret(malloc)) != 0 -> B38 and falls through when v0(=ret(malloc)) == 0 -> B33.
  The `beql` at 0xd8bfc40 is taken when v0(=[a0+1232]) == 0 -> B35 and falls through when v0(=[a0+1232]) != 0 -> B34.
  The `beq` at 0xd8bfc64 is taken when v0(=[a0+124]) == 0 -> B37 and falls through when v0(=[a0+124]) != 0 -> B36.
  The `blez` at 0xd8bfcbc is taken when a3(?) <= 0 (signed) -> B51 and falls through when a3(?) > 0 (signed) -> B39.
  The `beq` at 0xd8bfcdc is taken when t2(=table(-0x800c)) >= 0x1a (unsigned) -> B50 and falls through when t2(=table(-0x800c)) < 0x1a (unsigned) -> B41.
  The `bnel` at 0xd8bfd40 is taken when a1(?) != a3(?) -> B40 and falls through when a1(?) == a3(?) -> B51.
  The `beql` at 0xd8bfd4c is taken when v0(=[a0+1232]) == 0 -> B53 and falls through when v0(=[a0+1232]) != 0 -> B52.
  The `beq` at 0xd8bfd70 is taken when v0(=[a0+124]) == 0 -> B55 and falls through when v0(=[a0+124]) != 0 -> B54.
  The routine returns v0 = one of 0x0, 0x1 (`jr` at 0xd8bfda8).

- `glXDestroyGLXPbufferSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8bfdb0, 376 bytes) Inferred.
  Stores 4 bytes to ? (base unknown) through base a1 (`sw` at 0xd8bfe24).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8bfe70).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8bfe8c).
  Stores 2 bytes to [a0+108] +0x2 through base a0 (`sh` at 0xd8bfe98).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8bfe9c).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8bfeb4).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8bfeb8).
  Stores 1 bytes to [a0+108] +0x1 through base a0 (`sb` at 0xd8bfec4).
  Stores 4 bytes to [a0+108] +0x4 through base a0 (`sw` at 0xd8bfec8).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8bfecc).
  Stores 4 bytes to [a0+108] +0xc through base a0 (`sw` at 0xd8bfed4).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8bfdd4).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xd8bfdf0).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xd8bfe08).
  Calls `__glXFreeDrawablePrivate` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8bfe30).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bfe50).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bfe7c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=? (`jalr` at 0xd8bfeec).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8bff08).
  The `beq` at 0xd8bfde0 is taken when v0(=ret(__glXSetupForCommand)) == 0 -> B11 and falls through when v0(=ret(__glXSetupForCommand)) != 0 -> B1.
  The `bne` at 0xd8bfe1c is taken when t6(?) != 0 -> B3 and falls through when t6(?) == 0 -> B2.
  The `beql` at 0xd8bfe40 is taken when v1(=[a0+1232]) == 0 -> B5 and falls through when v1(=[a0+1232]) != 0 -> B4.
  The `beql` at 0xd8bfe6c is taken when t7(=[a0+112]) >= t8(=[a0+108]+16) (unsigned) -> B7 and falls through when t7(=[a0+112]) < t8(=[a0+108]+16) (unsigned) -> B6.
  The `beql` at 0xd8bfedc is taken when v1(=[a0+1232]) == 0 -> B9 and falls through when v1(=[a0+1232]) != 0 -> B8.
  The `beql` at 0xd8bff00 is taken when v0(=[a0+124]) == 0 -> B12 and falls through when v0(=[a0+124]) != 0 -> B10.
  The routine returns v0 = ? (`jr` at 0xd8bff20).

- `glXCreateGLXPbufferSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8c24e0, 820 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8c264c).
  Stores 2 bytes to [a0+108] +0x2 through base a0 (`sh` at 0xd8c2658).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8c265c).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8c2674).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8c2678).
  Stores 1 bytes to [a0+108] +0x1 through base a0 (`sb` at 0xd8c2688).
  Stores 4 bytes to [a0+108] +0x4 through base a0 (`sw` at 0xd8c268c).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8c2690).
  Stores 4 bytes to [a0+108] +0xc through base a0 (`sw` at 0xd8c26a0).
  Stores 4 bytes to [a0+108] +0x10 through base a0 (`sw` at 0xd8c26b0).
  Stores 4 bytes to [a0+108] +0x14 through base a0 (`sw` at 0xd8c26b8).
  Stores 4 bytes to [a0+108] +0x18 through base a0 (`sw` at 0xd8c26c0).
  Stores 4 bytes to [a0+108] +0x1c through base a0 (`sw` at 0xd8c26cc).
  Stores 4 bytes to ? (base unknown) through base v0 (`sw` at 0xd8c26e4).
  Stores 4 bytes to ? (base unknown) through base v0 (`sw` at 0xd8c26fc).
  Stores 4 bytes to ? (base unknown) through base t1 (`sw` at 0xd8c278c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8c2510).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c253c).
  Calls `__glXAddDrawableInterest` via got with a0=ret(?), a1=?, a2=?, a3=? (`jalr` at 0xd8c2554).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x10, a3=0x0 (`jalr` at 0xd8c257c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c25e4).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c262c).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0 (`jalr` at 0xd8c270c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c2730).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c274c).
  Calls `__glXPostHiddenError` via got with a0=a0 at entry (arg0), a1=sp-40, a2=0x11, a3=0x0 (`jalr` at 0xd8c2768).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8c277c).
  Calls `__glXFreeDrawablePrivate` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8c2798).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c27c0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c27dc).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8c27f0).
  The `bne` at 0xd8c2520 is taken when v0(=ret(__glXSetupForCommand)) != 0 -> B2 and falls through when v0(=ret(__glXSetupForCommand)) == 0 -> B1.
  The `bne` at 0xd8c2564 is taken when v0(=ret(__glXAddDrawableInterest)) != 0 -> B4 and falls through when v0(=ret(__glXAddDrawableInterest)) == 0 -> B3.
  The `beql` at 0xd8c259c is taken when a1(?) == 0 -> B9 and falls through when a1(?) != 0 -> B5.
  The `beql` at 0xd8c25ac is taken when t7(?) == 0 -> B9 and falls through when t7(?) != 0 -> B6.
  The `bnel` at 0xd8c25c0 is taken when t8(?) != 0 -> B7 and falls through when t8(?) == 0 -> B8.
  The `beql` at 0xd8c25cc is taken when v0(=[a0+1232]) == 0 -> B11 and falls through when v0(=[a0+1232]) != 0 -> B10.
  The `beql` at 0xd8c2614 is taken when t1(=[a0+112]) >= t2(?) (unsigned) -> B13 and falls through when t1(=[a0+112]) < t2(?) (unsigned) -> B12.
  The `beq` at 0xd8c26c8 is taken when a1(?) == 0 -> B16 and falls through when a1(?) != 0 -> B14.
  The `beq` at 0xd8c26d0 is taken when v1(?) == 0 -> B16 and falls through when v1(?) != 0 -> B15.
  The `bne` at 0xd8c26f8 is taken when v1(?) != 0 -> B15 and falls through when v1(?) == 0 -> B16.
  The `bne` at 0xd8c2714 is taken when v0(=ret(_XReply)) != 0 -> B22 and falls through when v0(=ret(_XReply)) == 0 -> B17.
  The `beql` at 0xd8c2720 is taken when v0(=[a0+1232]) == 0 -> B19 and falls through when v0(=[a0+1232]) != 0 -> B18.
  The `beq` at 0xd8c2744 is taken when v0(=[a0+124]) == 0 -> B21 and falls through when v0(=[a0+124]) != 0 -> B20.
  The `beql` at 0xd8c27b0 is taken when v0(=[a0+1232]) == 0 -> B24 and falls through when v0(=[a0+1232]) != 0 -> B23.
  The `beq` at 0xd8c27d4 is taken when v0(=[a0+124]) == 0 -> B26 and falls through when v0(=[a0+124]) != 0 -> B25.
  The routine returns v0 = ? (`jr` at 0xd8c280c).
- `glXGetVideoSyncSGI` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8c2814, 152 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x0 through base t3 (`sw` at 0xd8c2898).
  Calls `ioctl` via got with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3fe, a2=sp-12, a3=0x1000 (`jalr` at 0xd8c2880).
  The `beq` at 0xd8c283c is taken when v1(=[[0x1014]+276]) == 0 -> B2 and falls through when v1(=[[0x1014]+276]) != 0 -> B1.
  The `bnel` at 0xd8c2848 is taken when t7(=[[[0x1014]+276]+196]) != 0 -> B4 and falls through when t7(=[[[0x1014]+276]+196]) == 0 -> B2.
  The routine returns v0 = one of 0x0, 0x5 (`jr` at 0xd8c28a4).

- `__glXSendMakeCurrentRead` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8c2d34, 956 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8c2dd0).
  Stores 2 bytes to [a0+108] +0x2 through base v1 (`sh` at 0xd8c2ddc).
  Stores 1 bytes to [a0+108] +0x0 through base v1 (`sb` at 0xd8c2de0).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8c2df8).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8c2dfc).
  Stores 1 bytes to [a0+108] +0x1 through base v1 (`sb` at 0xd8c2e0c).
  Stores 4 bytes to [a0+108] +0x4 through base v1 (`sw` at 0xd8c2e10).
  Stores 1 bytes to [a0+108] +0x0 through base v1 (`sb` at 0xd8c2e14).
  Stores 4 bytes to [a0+108] +0x8 through base v1 (`sw` at 0xd8c2e24).
  Stores 4 bytes to [a0+108] +0xc through base v1 (`sw` at 0xd8c2e30).
  Stores 4 bytes to [a0+108] +0x10 through base v1 (`sw` at 0xd8c2e3c).
  Stores 4 bytes to [a0+108] +0x14 through base t0 (`sw` at 0xd8c2e48).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8c2f0c).
  Stores 2 bytes to [a0+108] +0x2 through base v1 (`sh` at 0xd8c2f18).
  Stores 1 bytes to [a0+108] +0x0 through base v1 (`sb` at 0xd8c2f1c).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8c2f34).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8c2f38).
  Stores 1 bytes to [a0+108] +0x1 through base v1 (`sb` at 0xd8c2f40).
  Stores 1 bytes to [a0+108] +0x0 through base v1 (`sb` at 0xd8c2f48).
  Stores 4 bytes to [a0+108] +0x4 through base v1 (`sw` at 0xd8c2f54).
  Stores 4 bytes to [a0+108] +0x8 through base v1 (`sw` at 0xd8c2f5c).
  Stores 4 bytes to [a0+108] +0xc through base v1 (`sw` at 0xd8c2f68).
  Stores 4 bytes to [a0+108] +0x10 through base t0 (`sw` at 0xd8c2f74).
  Stores 4 bytes to ? (base unknown) through base a1 (`sw` at 0xd8c3058).
  Stores 4 bytes to ? (base unknown) through base a1 (`sw` at 0xd8c306c).
  Stores 4 bytes to ? (base unknown) through base a2 (`sw` at 0xd8c3080).
  Stores 4 bytes to ? (base unknown) through base a2 (`sw` at 0xd8c3088).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8c2d60).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c2d84).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c2dbc).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x0, a3=0x0 (`jalr` at 0xd8c2e58).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c2e7c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c2e98).
  Calls `__glXPostHiddenError` via got with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x11, a3=[a1+20] (`jalr` at 0xd8c2eb8).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c2ef8).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x0, a3=0x0 (`jalr` at 0xd8c2f84).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c2fa8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c2fc4).
  Calls `__glXPostHiddenError` via got with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x1a, a3=[a1+20] (`jalr` at 0xd8c2fe4).
  Calls `malloc` via got with a0=0x10, a1=?, a2=?, a3=? (`jalr` at 0xd8c3010).
  Calls `_XRead` via got with a0=a0 at entry (arg0), a1=ret(malloc), a2=0x10, a3=? (`jalr` at 0xd8c3030).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8c3090).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c30b0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c30cc).
  The `beql` at 0xd8c2d74 is taken when v1(=[a0+1232]) == 0 -> B2 and falls through when v1(=[a0+1232]) != 0 -> B1.
  The `beql` at 0xd8c2d94 is taken when t6(?) == 0 -> B15 and falls through when t6(?) != 0 -> B3.
  The `beql` at 0xd8c2dac is taken when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned) -> B5 and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned) -> B4.
  The `beq` at 0xd8c2e38 is taken when t1(=a1) == 0 -> B7 and falls through when t1(=a1) != 0 -> B6.
  The `bne` at 0xd8c2e60 is taken when v0(=ret(_XReply)) != 0 -> B13 and falls through when v0(=ret(_XReply)) == 0 -> B8.
  The `beql` at 0xd8c2e6c is taken when v1(=[a0+1232]) == 0 -> B10 and falls through when v1(=[a0+1232]) != 0 -> B9.
  The `beq` at 0xd8c2e90 is taken when v0(=[a0+124]) == 0 -> B12 and falls through when v0(=[a0+124]) != 0 -> B11.
  The `beql` at 0xd8c2ee8 is taken when t8(=[a0+112]) >= t2(=[a0+108]+20) (unsigned) -> B17 and falls through when t8(=[a0+112]) < t2(=[a0+108]+20) (unsigned) -> B16.
  The `beq` at 0xd8c2f64 is taken when t1(=a1) == 0 -> B19 and falls through when t1(=a1) != 0 -> B18.
  The `bne` at 0xd8c2f8c is taken when v0(=ret(_XReply)) != 0 -> B25 and falls through when v0(=ret(_XReply)) == 0 -> B20.
  The `beql` at 0xd8c2f98 is taken when v1(=[a0+1232]) == 0 -> B22 and falls through when v1(=[a0+1232]) != 0 -> B21.
  The `beq` at 0xd8c2fbc is taken when v0(=[a0+124]) == 0 -> B24 and falls through when v0(=[a0+124]) != 0 -> B23.
  The `beql` at 0xd8c3000 is taken when v0(=[a3+4]) == 0 -> B28 and falls through when v0(=[a3+4]) != 0 -> B27.
  The `beql` at 0xd8c30a0 is taken when v1(=[a0+1232]) == 0 -> B30 and falls through when v1(=[a0+1232]) != 0 -> B29.
  The `beql` at 0xd8c30c4 is taken when v0(=[a0+124]) == 0 -> B32 and falls through when v0(=[a0+124]) != 0 -> B31.
  The routine returns v0 = one of 0x0, 0x1 (`jr` at 0xd8c30e8).

- `glXWaitVideoSyncSGI` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8c30f0, 200 bytes) Inferred.
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base t6 (`sw` at 0xd8c31a4).
  Calls `ioctl` via got with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3ff, a2=sp-20, a3=a0 at entry (arg0) (`jalr` at 0xd8c318c).
  The `beq` at 0xd8c3120 is taken when v1(=[[0x1014]+276]) == 0 -> B2 and falls through when v1(=[[0x1014]+276]) != 0 -> B1.
  The `bne` at 0xd8c312c is taken when t7(=[[[0x1014]+276]+196]) != 0 -> B3 and falls through when t7(=[[[0x1014]+276]+196]) == 0 -> B2.
  The `blez` at 0xd8c313c is taken when a3(=a0) <= 0 (signed) -> B6 and falls through when a3(=a0) > 0 (signed) -> B4.
  The `bltz` at 0xd8c3144 is taken when t8(=a1) < 0 (signed) -> B6 and falls through when t8(=a1) >= 0 (signed) -> B5.
  The `bnel` at 0xd8c314c is taken when at(?) != 0 -> B8 and falls through when at(?) == 0 -> B6.
  The routine returns v0 = one of 0x0, 0x5, 0x6 (`jr` at 0xd8c31b0).

- `glXDestroyGLXVideoSourceSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8c31b8, 368 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8c326c).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8c3288).
  Stores 2 bytes to [a0+108] +0x2 through base a0 (`sh` at 0xd8c3294).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8c3298).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8c32b0).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8c32b4).
  Stores 1 bytes to [a0+108] +0x1 through base a0 (`sb` at 0xd8c32c0).
  Stores 4 bytes to [a0+108] +0x4 through base a0 (`sw` at 0xd8c32c4).
  Stores 4 bytes to [a0+108] +0x8 through base a0 (`sw` at 0xd8c32c8).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8c32cc).
  Stores 4 bytes to [a0+108] +0xc through base a0 (`sw` at 0xd8c32d4).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8c31dc).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xd8c3200).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xd8c3218).
  Calls `__glXFreeDrawablePrivate` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8c322c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c324c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c3278).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=? (`jalr` at 0xd8c32ec).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c3308).
  The `beq` at 0xd8c31e8 is taken when v0(=ret(__glXSetupForCommand)) == 0 -> B10 and falls through when v0(=ret(__glXSetupForCommand)) != 0 -> B1.
  The `beql` at 0xd8c31f4 is taken when a0(=a1) == 0 -> B11 and falls through when a0(=a1) != 0 -> B2.
  The `beql` at 0xd8c323c is taken when v1(=[a0+1232]) == 0 -> B4 and falls through when v1(=[a0+1232]) != 0 -> B3.
  The `beql` at 0xd8c3268 is taken when t6(=[a0+112]) >= t7(=[a0+108]+16) (unsigned) -> B6 and falls through when t6(=[a0+112]) < t7(=[a0+108]+16) (unsigned) -> B5.
  The `beql` at 0xd8c32dc is taken when v1(=[a0+1232]) == 0 -> B8 and falls through when v1(=[a0+1232]) != 0 -> B7.
  The `beql` at 0xd8c3300 is taken when v0(=[a0+124]) == 0 -> B11 and falls through when v0(=[a0+124]) != 0 -> B9.
  The routine returns v0 = ? (`jr` at 0xd8c3320).

- `glXCreateGLXVideoSourceSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8c3328, 936 bytes) Inferred.
  Stores 4 bytes to ? (base unknown) through base t0 (`sw` at 0xd8c34ac).
  Stores 4 bytes to ? (base unknown) through base t0 (`sw` at 0xd8c34b8).
  Stores 4 bytes to ? (base unknown) through base t0 (`sw` at 0xd8c350c).
  Stores 4 bytes to ? (base unknown) through base t0 (`sw` at 0xd8c3560).
  Stores 4 bytes to ? (base unknown) through base t0 (`sw` at 0xd8c357c).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8c35bc).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8c35e0).
  Stores 2 bytes to [a0+108] +0x2 through base a0 (`sh` at 0xd8c35ec).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8c35f0).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8c3608).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8c360c).
  Stores 1 bytes to [a0+108] +0x1 through base a0 (`sb` at 0xd8c3618).
  Stores 4 bytes to [a0+108] +0x4 through base a0 (`sw` at 0xd8c361c).
  Stores 4 bytes to [a0+108] +0x8 through base a0 (`sw` at 0xd8c3620).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8c3624).
  Stores 4 bytes to [a0+108] +0xc through base a0 (`sw` at 0xd8c362c).
  Stores 4 bytes to [a0+108] +0x10 through base a0 (`sw` at 0xd8c3634).
  Stores 4 bytes to [a0+108] +0x14 through base a0 (`sw` at 0xd8c363c).
  Stores 4 bytes to [a0+108] +0x18 through base a0 (`sw` at 0xd8c3644).
  Stores 4 bytes to [a0+108] +0x1c through base a0 (`sw` at 0xd8c364c).
  Stores 4 bytes to [a0+108] +0x20 through base a0 (`sw` at 0xd8c3654).
  Stores 4 bytes to [a0+108] +0x24 through base a0 (`sw` at 0xd8c365c).
  Stores 4 bytes to [a0+108] +0x28 through base a0 (`sw` at 0xd8c3664).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8c3358).
  Calls `__glXInitializeVideoLibrary` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8c3398).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c33b8).
  Calls `__glXAddDrawableInterest` via got with a0=ret(?), a1=?, a2=?, a3=? (`jalr` at 0xd8c33d0).
  Calls `__glXCreateVideoSourcePrivate` via got with a0=ret(__glXAddDrawableInterest)+44, a1=?, a2=?, a3=? (`jalr` at 0xd8c3418).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xd8c3434).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=0x4 (`jalr` at 0xd8c3470).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xd8c348c).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=0x6 (`jalr` at 0xd8c34d0).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xd8c34ec).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=0x7 (`jalr` at 0xd8c3528).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xd8c3544).
  Calls `videoPackingToInternalFormat [0xd8c36d0]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8c356c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c3598).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c35cc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=? (`jalr` at 0xd8c367c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c3698).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xd8c36ac).
  The `bne` at 0xd8c3364 is taken when v0(=ret(__glXSetupForCommand)) != 0 -> B2 and falls through when v0(=ret(__glXSetupForCommand)) == 0 -> B1.
  The `beq` at 0xd8c337c is taken when v0(?) == at(=0x2) -> B5 and falls through when v0(?) != at(=0x2) -> B3.
  The `beq` at 0xd8c3384 is taken when v0(?) == at(=0x5) -> B5 and falls through when v0(?) != at(=0x5) -> B4.
  The `bne` at 0xd8c33a0 is taken when v0(=ret(__glXInitializeVideoLibrary)) != 0 -> B7 and falls through when v0(=ret(__glXInitializeVideoLibrary)) == 0 -> B6.
  The `bne` at 0xd8c33dc is taken when v0(=ret(__glXAddDrawableInterest)) != 0 -> B9 and falls through when v0(=ret(__glXAddDrawableInterest)) == 0 -> B8.
  The `bne` at 0xd8c3424 is taken when v0(=ret(__glXCreateVideoSourcePrivate)) != 0 -> B11 and falls through when v0(=ret(__glXCreateVideoSourcePrivate)) == 0 -> B10.
  The `bgez` at 0xd8c347c is taken when v0(=ret(?)) >= 0 (signed) -> B13 and falls through when v0(=ret(?)) < 0 (signed) -> B12.
  The `bgez` at 0xd8c34dc is taken when v0(=ret(?)) >= 0 (signed) -> B15 and falls through when v0(=ret(?)) < 0 (signed) -> B14.
  The `bgez` at 0xd8c3534 is taken when v0(=ret(?)) >= 0 (signed) -> B17 and falls through when v0(=ret(?)) < 0 (signed) -> B16.
  The `beql` at 0xd8c3584 is taken when v1(=[a0+1232]) == 0 -> B19 and falls through when v1(=[a0+1232]) != 0 -> B18.
  The `beql` at 0xd8c35b8 is taken when t1(=[a0+112]) >= t2(=[a0+108]+44) (unsigned) -> B21 and falls through when t1(=[a0+112]) < t2(=[a0+108]+44) (unsigned) -> B20.
  The `beql` at 0xd8c366c is taken when v1(=[a0+1232]) == 0 -> B23 and falls through when v1(=[a0+1232]) != 0 -> B22.
  The `beq` at 0xd8c3690 is taken when v0(=[a0+124]) == 0 -> B25 and falls through when v0(=[a0+124]) != 0 -> B24.
  The routine returns v0 = ? (`jr` at 0xd8c36c8).

- `glXSwapIntervalSGI` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8c38f8, 468 bytes) Inferred.
  Stores 4 bytes to [[[0x1014]+276]+216] +0x64 through base s0 (`sw` at 0xd8c39f8).
  Stores 4 bytes to [[[0x1014]+276]+216] +0x64 through base s0 (`sw` at 0xd8c3a14).
  Stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2 through base a0 (`sh` at 0xd8c3a20).
  Stores 1 bytes to [[[[0x1014]+276]+216]+108] +0x0 through base a0 (`sb` at 0xd8c3a24).
  Stores 4 bytes to [[[0x1014]+276]+216] +0x6c through base s0 (`sw` at 0xd8c3a3c).
  Stores 4 bytes to [[[0x1014]+276]+216] +0x60 through base s0 (`sw` at 0xd8c3a40).
  Stores 1 bytes to [[[[0x1014]+276]+216]+108] +0x1 through base a0 (`sb` at 0xd8c3a48).
  Stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4 through base a0 (`sw` at 0xd8c3a4c).
  Stores 1 bytes to [[[[0x1014]+276]+216]+108] +0x0 through base a0 (`sb` at 0xd8c3a50).
  Stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8 through base a0 (`sw` at 0xd8c3a58).
  Stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc through base a0 (`sw` at 0xd8c3a60).
  Calls `ioctl` via got with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3ee, a2=sp-32, a3=0x1000 (`jalr` at 0xd8c3980).
  Calls `__glXSetupForCommand` via got with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1000 (`jalr` at 0xd8c39b4).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8c39d8).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8c3a04).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=0x10, a2=?, a3=? (`jalr` at 0xd8c3a78).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8c3a94).
  Calls `XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8c3aa8).
  The `bne` at 0xd8c3928 is taken when v1(=[[0x1014]+276]) != 0 -> B2 and falls through when v1(=[[0x1014]+276]) == 0 -> B1.
  The `bgtzl` at 0xd8c3938 is taken when t7(=a0) > 0 (signed) -> B5 and falls through when t7(=a0) <= 0 (signed) -> B3.
  The `beql` at 0xd8c394c is taken when t8(=[[[0x1014]+276]+196]) == 0 -> B8 and falls through when t8(=[[[0x1014]+276]+196]) != 0 -> B6.
  The `bne` at 0xd8c3998 is taken when s0(=[[[0x1014]+276]+216]) != 0 -> B10 and falls through when s0(=[[[0x1014]+276]+216]) == 0 -> B9.
  The `beql` at 0xd8c39c8 is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 -> B12 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0 -> B11.
  The `beql` at 0xd8c39f4 is taken when t5(=[[[[0x1014]+276]+216]+112]) >= t6(=[[[[0x1014]+276]+216]+108]+16) (unsigned) -> B14 and falls through when t5(=[[[[0x1014]+276]+216]+112]) < t6(=[[[[0x1014]+276]+216]+108]+16) (unsigned) -> B13.
  The `beql` at 0xd8c3a68 is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 -> B16 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0 -> B15.
  The `beq` at 0xd8c3a8c is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 -> B18 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0 -> B17.
  The routine returns v0 = one of 0x0, 0x5, 0x6 (`jr` at 0xd8c3ac4).

- `glXCreateGLXPixmapWithConfigSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8c5ffc, 364 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8c6094).
  Stores 2 bytes to [a0+108] +0x2 through base v0 (`sh` at 0xd8c60a0).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8c60a4).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8c60bc).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8c60c0).
  Stores 1 bytes to [a0+108] +0x1 through base v0 (`sb` at 0xd8c60cc).
  Stores 4 bytes to [a0+108] +0x4 through base v0 (`sw` at 0xd8c60d0).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8c60d4).
  Stores 4 bytes to [a0+108] +0xc through base v0 (`sw` at 0xd8c60e0).
  Stores 4 bytes to [a0+108] +0x10 through base v0 (`sw` at 0xd8c60e8).
  Stores 4 bytes to [a0+108] +0x14 through base v0 (`sw` at 0xd8c60f0).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xd8c6110).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8c6024).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8c6054).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c6080).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x10, a2=a1 at entry (arg1), a3=? (`jalr` at 0xd8c60fc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8c6128).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c6144).
  The `bne` at 0xd8c6030 is taken when v0(=ret(__glXSetupForCommand)) != 0 -> B2 and falls through when v0(=ret(__glXSetupForCommand)) == 0 -> B1.
  The `beql` at 0xd8c6044 is taken when a1(=[a0+1232]) == 0 -> B4 and falls through when a1(=[a0+1232]) != 0 -> B3.
  The `beql` at 0xd8c6070 is taken when t6(=[a0+112]) >= t7(=[a0+108]+28) (unsigned) -> B6 and falls through when t6(=[a0+112]) < t7(=[a0+108]+28) (unsigned) -> B5.
  The `beql` at 0xd8c6118 is taken when a1(=[a0+1232]) == 0 -> B8 and falls through when a1(=[a0+1232]) != 0 -> B7.
  The `beql` at 0xd8c613c is taken when v0(=[a0+124]) == 0 -> B10 and falls through when v0(=[a0+124]) != 0 -> B9.
  The routine returns v0 = ? (`jr` at 0xd8c6160).

- `GetBoardName` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8d339c, 276 bytes) Inferred.
  Calls `open` via got with a0=0xd8dd4bc, a1=0x802, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d33ec).
  Calls `ioctl` via got with a0=ret(open), a1=0x66, a2=sp-20, a3=? (`jalr` at 0xd8d342c).
  Calls `close` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8d3444).
  Calls `strlen` via got with a0=sp-60, a1=?, a2=?, a3=? (`jalr` at 0xd8d3460).
  Calls `strncpy` via got with a0=a2 at entry (arg2), a1=sp-60, a2=ret(strlen), a3=? (`jalr` at 0xd8d347c).
  Calls `close` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8d3490).
  The `bne` at 0xd8d33d0 is taken when v1(=[([a0+32] + (a1 << 0x5))]) < 0x40 (signed) -> B2 and falls through when v1(=[([a0+32] + (a1 << 0x5))]) >= 0x40 (signed) -> B1.
  The `bgez` at 0xd8d33fc is taken when v0(=ret(open)) >= 0 (signed) -> B4 and falls through when v0(=ret(open)) < 0 (signed) -> B3.
  The `bgez` at 0xd8d3434 is taken when v0(=ret(ioctl)) >= 0 (signed) -> B6 and falls through when v0(=ret(ioctl)) < 0 (signed) -> B5.
  The routine returns v0 = one of 0x0, 0x1 (`jr` at 0xd8d34a8).

- `GetFBConfigsSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8d701c, 1784 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s2 (`sw` at 0xd8d708c).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s2 (`sw` at 0xd8d70a8).
  Stores 2 bytes to [a0+108] +0x2 through base v1 (`sh` at 0xd8d70b4).
  Stores 1 bytes to [a0+108] +0x0 through base v1 (`sb` at 0xd8d70b8).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s2 (`sw` at 0xd8d70cc).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s2 (`sw` at 0xd8d70d4).
  Stores 1 bytes to [a0+108] +0x1 through base v1 (`sb` at 0xd8d70e8).
  Stores 4 bytes to [a0+108] +0x4 through base v1 (`sw` at 0xd8d70ec).
  Stores 1 bytes to [a0+108] +0x0 through base v1 (`sb` at 0xd8d70f0).
  Stores 4 bytes to [a0+108] +0xc through base v1 (`sw` at 0xd8d7100).
  Stores 4 bytes to ? (base unknown) through base t6 (`sw` at 0xd8d7320).
  Stores 4 bytes to ? (base unknown) through base t5 (`sw` at 0xd8d7334).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d7360).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d7364).
  Stores 8 bytes to ? (base unknown) through base s0 (`sdc1` at 0xd8d7368).
  Stores 8 bytes to ? (base unknown) through base s0 (`sdc1` at 0xd8d736c).
  Stores 8 bytes to ? (base unknown) through base s0 (`sdc1` at 0xd8d7370).
  Stores 8 bytes to ? (base unknown) through base s0 (`sdc1` at 0xd8d7374).
  Stores 8 bytes to ? (base unknown) through base s0 (`sdc1` at 0xd8d7378).
  Stores 8 bytes to ? (base unknown) through base s0 (`sdc1` at 0xd8d737c).
  Stores 8 bytes to ? (base unknown) through base s0 (`sdc1` at 0xd8d7380).
  Stores 8 bytes to ? (base unknown) through base s0 (`sdc1` at 0xd8d7384).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d7484).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d748c).
  Stores 1 bytes to ? (base unknown) through base s0 (`sb` at 0xd8d7494).
  Stores 1 bytes to ? (base unknown) through base s0 (`sb` at 0xd8d749c).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d74a4).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d74ac).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d74b4).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d74bc).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d74c4).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d74cc).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d74d4).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d74dc).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d74e4).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d74ec).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d74f4).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d74fc).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d7504).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d750c).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d7514).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d751c).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d7524).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d752c).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d7534).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d753c).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d7544).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d754c).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d7554).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d755c).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d7564).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d756c).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d7574).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d757c).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d7584).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d7588).
  Stores 1 bytes to ? (base unknown) through base s0 (`sb` at 0xd8d75ac).
  Stores 1 bytes to ? (base unknown) through base s0 (`sb` at 0xd8d75b4).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d75b8).
  Stores 1 bytes to ? (base unknown) through base s0 (`sb` at 0xd8d75e8).
  Stores 1 bytes to ? (base unknown) through base s0 (`sb` at 0xd8d75f4).
  Stores 1 bytes to ? (base unknown) through base s0 (`sb` at 0xd8d75f8).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d768c).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d7694).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d769c).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xd8d76a0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d706c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d7098).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0 (`jalr` at 0xd8d710c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d7130).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d714c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d7184).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d71a0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d71d0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d71ec).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8d720c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d7238).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d7254).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8d728c).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8d72ac).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d72cc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d72e8).
  Calls `memset` via got with a0=ret(malloc), a1=0x0, a2=?, a3=? (`jalr` at 0xd8d730c).
  Calls `_XRead` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d73a4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d7628).
  Calls `__glXOverrideVisualGetVisualInfo` via got with a0=a0 at entry (arg0), a1=0x3, a2=sp-124, a3=sp-128 (`jalr` at 0xd8d7674).
  Calls `free` via got with a0=ret(__glXOverrideVisualGetVisualInfo), a1=?, a2=?, a3=? (`jalr` at 0xd8d76a8).
  Calls `XFree` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8d76d0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d76ec).
  The `beql` at 0xd8d7060 is taken when v0(=[a0+1232]) == 0 -> B2 and falls through when v0(=[a0+1232]) != 0 -> B1.
  The `beql` at 0xd8d7088 is taken when t5(=[a0+112]) >= t7(=[a0+108]+16) (unsigned) -> B4 and falls through when t5(=[a0+112]) < t7(=[a0+108]+16) (unsigned) -> B3.
  The `bne` at 0xd8d7114 is taken when v0(=ret(_XReply)) != 0 -> B10 and falls through when v0(=ret(_XReply)) == 0 -> B5.
  The `beql` at 0xd8d7120 is taken when v0(=[a0+1232]) == 0 -> B7 and falls through when v0(=[a0+1232]) != 0 -> B6.
  The `beq` at 0xd8d7144 is taken when v1(=[a0+124]) == 0 -> B9 and falls through when v1(=[a0+124]) != 0 -> B8.
  The `bne` at 0xd8d7168 is taken when v0(?) != 0 -> B16 and falls through when v0(?) == 0 -> B11.
  The `beql` at 0xd8d7174 is taken when v0(=[a0+1232]) == 0 -> B13 and falls through when v0(=[a0+1232]) != 0 -> B12.
  The `beq` at 0xd8d7198 is taken when v1(=[a0+124]) == 0 -> B15 and falls through when v1(=[a0+124]) != 0 -> B14.
  The `bne` at 0xd8d71b4 is taken when t4(?) != 0 -> B22 and falls through when t4(?) == 0 -> B17.
  The `beql` at 0xd8d71c0 is taken when v0(=[a0+1232]) == 0 -> B19 and falls through when v0(=[a0+1232]) != 0 -> B18.
  The `beq` at 0xd8d71e4 is taken when v1(=[a0+124]) == 0 -> B21 and falls through when v1(=[a0+124]) != 0 -> B20.
  The `bne` at 0xd8d721c is taken when v0(=ret(malloc)) != 0 -> B28 and falls through when v0(=ret(malloc)) == 0 -> B23.
  The `beql` at 0xd8d7228 is taken when v0(=[a0+1232]) == 0 -> B25 and falls through when v0(=[a0+1232]) != 0 -> B24.
  The `beq` at 0xd8d724c is taken when v1(=[a0+124]) == 0 -> B27 and falls through when v1(=[a0+124]) != 0 -> B26.
  The `bne` at 0xd8d729c is taken when v0(=ret(malloc)) != 0 -> B34 and falls through when v0(=ret(malloc)) == 0 -> B29.
  The `beql` at 0xd8d72bc is taken when v0(=[a0+1232]) == 0 -> B31 and falls through when v0(=[a0+1232]) != 0 -> B30.
  The `beq` at 0xd8d72e0 is taken when v1(=[a0+124]) == 0 -> B33 and falls through when v1(=[a0+124]) != 0 -> B32.
  The `blezl` at 0xd8d733c is taken when t7(?) <= 0 (signed) -> B89 and falls through when t7(?) > 0 (signed) -> B35.
  The `blez` at 0xd8d73e0 is taken when t4(?) <= 0 (signed) -> B84 and falls through when t4(?) > 0 (signed) -> B37.
  The `bnel` at 0xd8d73f8 is taken when v1(?) < t1(=0x801b) (signed) -> B43 and falls through when v1(?) >= t1(=0x801b) (signed) -> B39.
  The `beq` at 0xd8d7400 is taken when v1(?) == t2(=0x186a0) -> B63 and falls through when v1(?) != t2(=0x186a0) -> B40.
  The `beq` at 0xd8d7408 is taken when v1(?) == t3(=0x186a1) -> B64 and falls through when v1(?) != t3(=0x186a1) -> B41.
  The `bne` at 0xd8d741c is taken when at(?) != 0 -> B46 and falls through when at(?) == 0 -> B44.
  The `beql` at 0xd8d7434 is taken when t9(=table(-0x800b)) >= 0x10 (unsigned) -> B83 and falls through when t9(=table(-0x800b)) < 0x10 (unsigned) -> B45.
  The `beql` at 0xd8d745c is taken when t6(?) >= 0x27 (unsigned) -> B83 and falls through when t6(?) < 0x27 (unsigned) -> B47.
  The `bnel` at 0xd8d7590 is taken when t0(?) != t4(?) -> B38 and falls through when t0(?) == t4(?) -> B84.
  The `bnel` at 0xd8d75c0 is taken when 0 < v0(?) (signed) -> B87 and falls through when 0 >= v0(?) (signed) -> B85.
  The `bnel` at 0xd8d75d0 is taken when 0 < v0(?) (signed) -> B87 and falls through when 0 >= v0(?) (signed) -> B86.
  The `bnel` at 0xd8d7608 is taken when s1(?) != t7(?) -> B36 and falls through when s1(?) == t7(?) -> B88.
  The `beql` at 0xd8d7618 is taken when v0(=[a0+1232]) == 0 -> B91 and falls through when v0(=[a0+1232]) != 0 -> B90.
  The `blez` at 0xd8d763c is taken when t8(?) <= 0 (signed) -> B98 and falls through when t8(?) > 0 (signed) -> B92.
  The `beql` at 0xd8d764c is taken when t5(?) == 0 -> B97 and falls through when t5(?) != 0 -> B94.
  The `beq` at 0xd8d7680 is taken when v0(=ret(__glXOverrideVisualGetVisualInfo)) == 0 -> B96 and falls through when v0(=ret(__glXOverrideVisualGetVisualInfo)) != 0 -> B95.
  The `bnel` at 0xd8d76c0 is taken when s1(?) != t7(?) -> B93 and falls through when s1(?) == t7(?) -> B98.
  The `beql` at 0xd8d76e4 is taken when v1(=[a0+124]) == 0 -> B100 and falls through when v1(=[a0+124]) != 0 -> B99.
  The routine returns v0 = one of 0x0, 0x1 (`jr` at 0xd8d770c).

- `glXJoinSwapGroupSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8d85c0, 300 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8d862c).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8d8648).
  Stores 2 bytes to [a0+108] +0x2 through base a0 (`sh` at 0xd8d8654).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8d8658).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8d8670).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8d8674).
  Stores 1 bytes to [a0+108] +0x1 through base a0 (`sb` at 0xd8d8680).
  Stores 4 bytes to [a0+108] +0x4 through base a0 (`sw` at 0xd8d8684).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8d8688).
  Stores 4 bytes to [a0+108] +0xc through base a0 (`sw` at 0xd8d8690).
  Stores 4 bytes to [a0+108] +0x10 through base a0 (`sw` at 0xd8d8698).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d85e8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d860c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d8638).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=? (`jalr` at 0xd8d86b0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d86cc).
  The `beql` at 0xd8d85fc is taken when v1(=[a0+1232]) == 0 -> B2 and falls through when v1(=[a0+1232]) != 0 -> B1.
  The `beql` at 0xd8d8628 is taken when t6(=[a0+112]) >= t7(=[a0+108]+20) (unsigned) -> B4 and falls through when t6(=[a0+112]) < t7(=[a0+108]+20) (unsigned) -> B3.
  The `beql` at 0xd8d86a0 is taken when v1(=[a0+1232]) == 0 -> B6 and falls through when v1(=[a0+1232]) != 0 -> B5.
  The `beql` at 0xd8d86c4 is taken when v0(=[a0+124]) == 0 -> B8 and falls through when v0(=[a0+124]) != 0 -> B7.
  The routine returns v0 = ? (`jr` at 0xd8d86e4).

- `glXBindSwapBarrierSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8d86ec, 300 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8d8758).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8d8774).
  Stores 2 bytes to [a0+108] +0x2 through base a0 (`sh` at 0xd8d8780).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8d8784).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8d879c).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8d87a0).
  Stores 1 bytes to [a0+108] +0x1 through base a0 (`sb` at 0xd8d87ac).
  Stores 4 bytes to [a0+108] +0x4 through base a0 (`sw` at 0xd8d87b0).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8d87b4).
  Stores 4 bytes to [a0+108] +0xc through base a0 (`sw` at 0xd8d87bc).
  Stores 4 bytes to [a0+108] +0x10 through base a0 (`sw` at 0xd8d87c4).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d8714).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d8738).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d8764).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=? (`jalr` at 0xd8d87dc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d87f8).
  The `beql` at 0xd8d8728 is taken when v1(=[a0+1232]) == 0 -> B2 and falls through when v1(=[a0+1232]) != 0 -> B1.
  The `beql` at 0xd8d8754 is taken when t6(=[a0+112]) >= t7(=[a0+108]+20) (unsigned) -> B4 and falls through when t6(=[a0+112]) < t7(=[a0+108]+20) (unsigned) -> B3.
  The `beql` at 0xd8d87cc is taken when v1(=[a0+1232]) == 0 -> B6 and falls through when v1(=[a0+1232]) != 0 -> B5.
  The `beql` at 0xd8d87f0 is taken when v0(=[a0+124]) == 0 -> B8 and falls through when v0(=[a0+124]) != 0 -> B7.
  The routine returns v0 = ? (`jr` at 0xd8d8810).

- `glXQueryMaxSwapBarriersSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8d8818, 416 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8d8884).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8d88a0).
  Stores 2 bytes to [a0+108] +0x2 through base v1 (`sh` at 0xd8d88ac).
  Stores 1 bytes to [a0+108] +0x0 through base v1 (`sb` at 0xd8d88b0).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8d88c8).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8d88cc).
  Stores 1 bytes to [a0+108] +0x1 through base v1 (`sb` at 0xd8d88dc).
  Stores 4 bytes to [a0+108] +0x4 through base v1 (`sw` at 0xd8d88e0).
  Stores 1 bytes to [a0+108] +0x0 through base v1 (`sb` at 0xd8d88e4).
  Stores 4 bytes to [a0+108] +0xc through base v1 (`sw` at 0xd8d88f4).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base t0 (`sw` at 0xd8d89a0).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d8840).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d8864).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d8890).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0 (`jalr` at 0xd8d8904).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d8928).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d8944).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d896c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d8988).
  The `beql` at 0xd8d8854 is taken when v1(=[a0+1232]) == 0 -> B2 and falls through when v1(=[a0+1232]) != 0 -> B1.
  The `beql` at 0xd8d8880 is taken when t6(=[a0+112]) >= t7(=[a0+108]+16) (unsigned) -> B4 and falls through when t6(=[a0+112]) < t7(=[a0+108]+16) (unsigned) -> B3.
  The `bne` at 0xd8d890c is taken when v0(=ret(_XReply)) != 0 -> B10 and falls through when v0(=ret(_XReply)) == 0 -> B5.
  The `beql` at 0xd8d8918 is taken when v1(=[a0+1232]) == 0 -> B7 and falls through when v1(=[a0+1232]) != 0 -> B6.
  The `beq` at 0xd8d893c is taken when v0(=[a0+124]) == 0 -> B9 and falls through when v0(=[a0+124]) != 0 -> B8.
  The `beql` at 0xd8d895c is taken when v1(=[a0+1232]) == 0 -> B12 and falls through when v1(=[a0+1232]) != 0 -> B11.
  The `beql` at 0xd8d8980 is taken when v0(=[a0+124]) == 0 -> B14 and falls through when v0(=[a0+124]) != 0 -> B13.
  The routine returns v0 = one of 0x0, 0x1 (`jr` at 0xd8d89b0).

- `glXQueryHyperpipeNetworkSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8d91b8, 724 bytes) Inferred.
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base t6 (`sw` at 0xd8d91f0).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8d9228).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8d9244).
  Stores 2 bytes to [a0+108] +0x2 through base v1 (`sh` at 0xd8d9250).
  Stores 1 bytes to [a0+108] +0x0 through base v1 (`sb` at 0xd8d9254).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8d926c).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8d9270).
  Stores 1 bytes to [a0+108] +0x1 through base v1 (`sb` at 0xd8d9280).
  Stores 4 bytes to [a0+108] +0x4 through base v1 (`sw` at 0xd8d9284).
  Stores 1 bytes to [a0+108] +0x0 through base v1 (`sb` at 0xd8d9288).
  Stores 4 bytes to [a0+108] +0xc through base v1 (`sw` at 0xd8d9298).
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base t0 (`sw` at 0xd8d9300).
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base v1 (`sw` at 0xd8d9314).
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base t2 (`sw` at 0xd8d9384).
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base t3 (`sw` at 0xd8d941c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d91dc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9208).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9234).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-44, a2=0x0, a3=0x0 (`jalr` at 0xd8d92a8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d92cc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d92e8).
  Calls `_XEatData` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9330).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9350).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d936c).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8d93a4).
  Calls `_XEatData` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d93c8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d93e8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9404).
  Calls `_XRead` via got with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=? (`jalr` at 0xd8d942c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d944c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9468).
  The `beql` at 0xd8d91f8 is taken when v1(=[a0+1232]) == 0 -> B2 and falls through when v1(=[a0+1232]) != 0 -> B1.
  The `beql` at 0xd8d9224 is taken when t7(=[a0+112]) >= t8(=[a0+108]+16) (unsigned) -> B4 and falls through when t7(=[a0+112]) < t8(=[a0+108]+16) (unsigned) -> B3.
  The `bne` at 0xd8d92b0 is taken when v0(=ret(_XReply)) != 0 -> B10 and falls through when v0(=ret(_XReply)) == 0 -> B5.
  The `beql` at 0xd8d92bc is taken when v1(=[a0+1232]) == 0 -> B7 and falls through when v1(=[a0+1232]) != 0 -> B6.
  The `beql` at 0xd8d92e0 is taken when v0(=[a0+124]) == 0 -> B9 and falls through when v0(=[a0+124]) != 0 -> B8.
  The `blez` at 0xd8d9310 is taken when t1(?) <= 0 (signed) -> B12 and falls through when t1(?) > 0 (signed) -> B11.
  The `bne` at 0xd8d931c is taken when t1(?) < 0x21 (signed) -> B17 and falls through when t1(?) >= 0x21 (signed) -> B12.
  The `beql` at 0xd8d9340 is taken when v1(=[a0+1232]) == 0 -> B14 and falls through when v1(=[a0+1232]) != 0 -> B13.
  The `beql` at 0xd8d9364 is taken when v0(=[a0+124]) == 0 -> B16 and falls through when v0(=[a0+124]) != 0 -> B15.
  The `bne` at 0xd8d93b4 is taken when v0(=ret(malloc)) != 0 -> B23 and falls through when v0(=ret(malloc)) == 0 -> B18.
  The `beql` at 0xd8d93d8 is taken when v1(=[a0+1232]) == 0 -> B20 and falls through when v1(=[a0+1232]) != 0 -> B19.
  The `beql` at 0xd8d93fc is taken when v0(=[a0+124]) == 0 -> B22 and falls through when v0(=[a0+124]) != 0 -> B21.
  The `beql` at 0xd8d943c is taken when v1(=[a0+1232]) == 0 -> B25 and falls through when v1(=[a0+1232]) != 0 -> B24.
  The `beql` at 0xd8d9460 is taken when v0(=[a0+124]) == 0 -> B27 and falls through when v0(=[a0+124]) != 0 -> B26.
  The routine returns v0 = ? (`jr` at 0xd8d9484).

- `glXHyperpipeConfigSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8d948c, 744 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8d9554).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8d957c).
  Stores 2 bytes to [a0+108] +0x2 through base a3 (`sh` at 0xd8d9588).
  Stores 1 bytes to [a0+108] +0x0 through base a3 (`sb` at 0xd8d958c).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8d95a4).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8d95a8).
  Stores 1 bytes to [a0+108] +0x1 through base a3 (`sb` at 0xd8d95b8).
  Stores 4 bytes to [a0+108] +0x4 through base a3 (`sw` at 0xd8d95bc).
  Stores 1 bytes to [a0+108] +0x0 through base a3 (`sb` at 0xd8d95c0).
  Stores 4 bytes to [a0+108] +0x10 through base a3 (`sw` at 0xd8d95c8).
  Stores 4 bytes to [a0+108] +0xc through base a3 (`sw` at 0xd8d95d0).
  Stores 4 bytes to [a0+108] +0x14 through base a3 (`sw` at 0xd8d95e0).
  Stores 1 bytes to ? (base unknown) through base v0 (`sb` at 0xd8d9610).
  Stores 1 bytes to ? (base unknown) through base v0 (`sb` at 0xd8d9630).
  Stores 1 bytes to ? (base unknown) through base v0 (`sb` at 0xd8d963c).
  Stores 1 bytes to ? (base unknown) through base v0 (`sb` at 0xd8d9644).
  Stores 1 bytes to ? (base unknown) through base v0 (`sb` at 0xd8d9650).
  Stores 4 bytes to ? (base unknown) through base v0 (`sw` at 0xd8d96c4).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d94b8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d952c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+108] (`jalr` at 0xd8d9564).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-44, a2=0x0, a3=0x0 (`jalr` at 0xd8d9664).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d968c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d96a8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d96f0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d970c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9734).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9750).
  The `blez` at 0xd8d94cc is taken when t1(=a2) <= 0 (signed) -> B3 and falls through when t1(=a2) > 0 (signed) -> B1.
  The `beq` at 0xd8d94d4 is taken when t6(=a3) == 0 -> B3 and falls through when t6(=a3) != 0 -> B2.
  The `bne` at 0xd8d94dc is taken when at(?) != 0 -> B4 and falls through when at(?) == 0 -> B3.
  The `bgez` at 0xd8d94ec is taken when t7(=a1) >= 0 (signed) -> B6 and falls through when t7(=a1) < 0 (signed) -> B5.
  The `beql` at 0xd8d9518 is taken when v0(=[a0+1232]) == 0 -> B8 and falls through when v0(=[a0+1232]) != 0 -> B7.
  The `beql` at 0xd8d9550 is taken when t8(=[a0+112]) >= t2(?) (unsigned) -> B10 and falls through when t8(=[a0+112]) < t2(?) (unsigned) -> B9.
  The `blez` at 0xd8d95e4 is taken when t0(?) <= 0 (signed) -> B16 and falls through when t0(?) > 0 (signed) -> B11.
  The `beq` at 0xd8d95f4 is taken when (a3(?) & 0x3) == 0 -> B14 and falls through when (a3(?) & 0x3) != 0 -> B12.
  The `bne` at 0xd8d960c is taken when a1(?) != a0(?) -> B12 and falls through when a1(?) == a0(?) -> B13.
  The `beq` at 0xd8d9614 is taken when a0(?) == t0(?) -> B16 and falls through when a0(?) != t0(?) -> B14.
  The `bne` at 0xd8d964c is taken when a0(?) != a1(?) -> B15 and falls through when a0(?) == a1(?) -> B16.
  The `bne` at 0xd8d9670 is taken when v0(=ret(_XReply)) != 0 -> B22 and falls through when v0(=ret(_XReply)) == 0 -> B17.
  The `beql` at 0xd8d967c is taken when v0(=[a0+1232]) == 0 -> B19 and falls through when v0(=[a0+1232]) != 0 -> B18.
  The `beq` at 0xd8d96a0 is taken when v0(=[a0+124]) == 0 -> B21 and falls through when v0(=[a0+124]) != 0 -> B20.
  The `bnel` at 0xd8d96cc is taken when t1(=a2) != t4(?) -> B25 and falls through when t1(=a2) == t4(?) -> B23.
  The `bgezl` at 0xd8d96d4 is taken when t3(?) >= 0 (signed) -> B31 and falls through when t3(?) < 0 (signed) -> B24.
  The `beql` at 0xd8d96e0 is taken when v0(=[a0+1232]) == 0 -> B27 and falls through when v0(=[a0+1232]) != 0 -> B26.
  The `beq` at 0xd8d9704 is taken when v0(=[a0+124]) == 0 -> B29 and falls through when v0(=[a0+124]) != 0 -> B28.
  The `beql` at 0xd8d9724 is taken when v0(=[a0+1232]) == 0 -> B33 and falls through when v0(=[a0+1232]) != 0 -> B32.
  The `beql` at 0xd8d9748 is taken when v0(=[a0+124]) == 0 -> B35 and falls through when v0(=[a0+124]) != 0 -> B34.
  The routine returns v0 = one of 0x0, 0x5b (`jr` at 0xd8d976c).

- `glXDestroyHyperpipeConfigSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8d9774, 416 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8d97dc).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8d97f8).
  Stores 2 bytes to [a0+108] +0x2 through base v1 (`sh` at 0xd8d9804).
  Stores 1 bytes to [a0+108] +0x0 through base v1 (`sb` at 0xd8d9808).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8d9820).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8d9824).
  Stores 1 bytes to [a0+108] +0x1 through base v1 (`sb` at 0xd8d9834).
  Stores 4 bytes to [a0+108] +0x4 through base v1 (`sw` at 0xd8d9838).
  Stores 1 bytes to [a0+108] +0x0 through base v1 (`sb` at 0xd8d983c).
  Stores 4 bytes to [a0+108] +0xc through base v1 (`sw` at 0xd8d984c).
  Stores 4 bytes to [a0+108] +0x10 through base v1 (`sw` at 0xd8d985c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d9798).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d97bc).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d97e8).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0 (`jalr` at 0xd8d9864).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9888).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d98a4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d98d4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d98f0).
  The `beql` at 0xd8d97ac is taken when v1(=[a0+1232]) == 0 -> B2 and falls through when v1(=[a0+1232]) != 0 -> B1.
  The `beql` at 0xd8d97d8 is taken when t6(=[a0+112]) >= t7(=[a0+108]+32) (unsigned) -> B4 and falls through when t6(=[a0+112]) < t7(=[a0+108]+32) (unsigned) -> B3.
  The `bne` at 0xd8d986c is taken when v0(=ret(_XReply)) != 0 -> B10 and falls through when v0(=ret(_XReply)) == 0 -> B5.
  The `beql` at 0xd8d9878 is taken when v1(=[a0+1232]) == 0 -> B7 and falls through when v1(=[a0+1232]) != 0 -> B6.
  The `beq` at 0xd8d989c is taken when v0(=[a0+124]) == 0 -> B9 and falls through when v0(=[a0+124]) != 0 -> B8.
  The `beql` at 0xd8d98c4 is taken when v1(=[a0+1232]) == 0 -> B12 and falls through when v1(=[a0+1232]) != 0 -> B11.
  The `beql` at 0xd8d98e8 is taken when v0(=[a0+124]) == 0 -> B14 and falls through when v0(=[a0+124]) != 0 -> B13.
  The routine returns v0 = ? (`jr` at 0xd8d990c).

- `glXQueryHyperpipeConfigSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8d9914, 700 bytes) Inferred.
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base t6 (`sw` at 0xd8d9950).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8d9988).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8d99a4).
  Stores 2 bytes to [a0+108] +0x2 through base v1 (`sh` at 0xd8d99b0).
  Stores 1 bytes to [a0+108] +0x0 through base v1 (`sb` at 0xd8d99b4).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8d99cc).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8d99d0).
  Stores 1 bytes to [a0+108] +0x1 through base v1 (`sb` at 0xd8d99e0).
  Stores 4 bytes to [a0+108] +0x4 through base v1 (`sw` at 0xd8d99e4).
  Stores 1 bytes to [a0+108] +0x0 through base v1 (`sb` at 0xd8d99e8).
  Stores 4 bytes to [a0+108] +0xc through base v1 (`sw` at 0xd8d99f8).
  Stores 4 bytes to [a0+108] +0x10 through base v1 (`sw` at 0xd8d9a08).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base t1 (`sw` at 0xd8d9a24).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base v0 (`sw` at 0xd8d9a7c).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base v0 (`sw` at 0xd8d9a80).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base t4 (`sw` at 0xd8d9b1c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d993c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9968).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9994).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-44, a2=0x0, a3=0x0 (`jalr` at 0xd8d9a10).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9a3c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9a58).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9a98).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9ab4).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8d9ae8).
  Calls `_XEatData` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9b0c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9b34).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9b50).
  Calls `_XRead` via got with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=? (`jalr` at 0xd8d9b70).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9b90).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d9bac).
  The `beql` at 0xd8d9958 is taken when v1(=[a0+1232]) == 0 -> B2 and falls through when v1(=[a0+1232]) != 0 -> B1.
  The `beql` at 0xd8d9984 is taken when t7(=[a0+112]) >= t8(=[a0+108]+32) (unsigned) -> B4 and falls through when t7(=[a0+112]) < t8(=[a0+108]+32) (unsigned) -> B3.
  The `bne` at 0xd8d9a18 is taken when v0(=ret(_XReply)) != 0 -> B10 and falls through when v0(=ret(_XReply)) == 0 -> B5.
  The `beql` at 0xd8d9a2c is taken when v1(=[a0+1232]) == 0 -> B7 and falls through when v1(=[a0+1232]) != 0 -> B6.
  The `beq` at 0xd8d9a50 is taken when v0(=[a0+124]) == 0 -> B9 and falls through when v0(=[a0+124]) != 0 -> B8.
  The `bgtz` at 0xd8d9a78 is taken when t2(?) > 0 (signed) -> B16 and falls through when t2(?) <= 0 (signed) -> B11.
  The `beql` at 0xd8d9a88 is taken when v1(=[a0+1232]) == 0 -> B13 and falls through when v1(=[a0+1232]) != 0 -> B12.
  The `beq` at 0xd8d9aac is taken when v0(=[a0+124]) == 0 -> B15 and falls through when v0(=[a0+124]) != 0 -> B14.
  The `bne` at 0xd8d9af8 is taken when v0(=ret(malloc)) != 0 -> B22 and falls through when v0(=ret(malloc)) == 0 -> B17.
  The `beql` at 0xd8d9b24 is taken when v1(=[a0+1232]) == 0 -> B19 and falls through when v1(=[a0+1232]) != 0 -> B18.
  The `beq` at 0xd8d9b48 is taken when v0(=[a0+124]) == 0 -> B21 and falls through when v0(=[a0+124]) != 0 -> B20.
  The `beql` at 0xd8d9b80 is taken when v1(=[a0+1232]) == 0 -> B24 and falls through when v1(=[a0+1232]) != 0 -> B23.
  The `beql` at 0xd8d9ba4 is taken when v0(=[a0+124]) == 0 -> B26 and falls through when v0(=[a0+124]) != 0 -> B25.
  The routine returns v0 = ? (`jr` at 0xd8d9bc8).

- `__glOdylc_Color3b` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda40620, 292 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base v0 (`sw` at 0xda40658).
  Stores 4 bytes to abs 0x1030 through base t1 (`sw` at 0xda406c4).
  Stores 4 bytes to abs 0x1028 through base t1 (`sw` at 0xda406d0).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda406f8).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda40708).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda40714).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda4071c).
  Stores 4 bytes to abs 0x1030 through base t1 (`sw` at 0xda40724).
  Stores 4 bytes to abs 0x1028 through base t1 (`sw` at 0xda40728).
  Stores 4 bytes to abs 0x1034 through base t1 (`sw` at 0xda40730).
  Calls `__glSPDlistSpace [0xdadf11c]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028] (`jalr` at 0xda4069c).
  The `bne` at 0xda40668 is taken when t8(=[0x1034]) != 0 -> B3 and falls through when t8(=[0x1034]) == 0 -> B1.
  The `beql` at 0xda40674 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B4 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B2.
  The `beql` at 0xda40688 is taken when a3(=[0x1028]) >= t2(=one of 0x4, 0x5) (signed) -> B9 and falls through when a3(=[0x1028]) < t2(=one of 0x4, 0x5) (signed) -> B5.
  The `bne` at 0xda406b4 is taken when v0(=ret(__glSPDlistSpace)) != 0 -> B7 and falls through when v0(=ret(__glSPDlistSpace)) == 0 -> B6.
  The `beql` at 0xda406dc is taken when (v1(=[0x1030]) & 0x4) == 0 -> B9 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xda4073c).

- `__glOdylc_Color3s` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda40f64, 292 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base v0 (`sw` at 0xda40f9c).
  Stores 4 bytes to abs 0x1030 through base t1 (`sw` at 0xda41008).
  Stores 4 bytes to abs 0x1028 through base t1 (`sw` at 0xda41014).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda4103c).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda4104c).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda41058).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda41060).
  Stores 4 bytes to abs 0x1030 through base t1 (`sw` at 0xda41068).
  Stores 4 bytes to abs 0x1028 through base t1 (`sw` at 0xda4106c).
  Stores 4 bytes to abs 0x1034 through base t1 (`sw` at 0xda41074).
  Calls `__glSPDlistSpace [0xdadf11c]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028] (`jalr` at 0xda40fe0).
  The `bne` at 0xda40fac is taken when t8(=[0x1034]) != 0 -> B3 and falls through when t8(=[0x1034]) == 0 -> B1.
  The `beql` at 0xda40fb8 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B4 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B2.
  The `beql` at 0xda40fcc is taken when a3(=[0x1028]) >= t2(=one of 0x4, 0x5) (signed) -> B9 and falls through when a3(=[0x1028]) < t2(=one of 0x4, 0x5) (signed) -> B5.
  The `bne` at 0xda40ff8 is taken when v0(=ret(__glSPDlistSpace)) != 0 -> B7 and falls through when v0(=ret(__glSPDlistSpace)) == 0 -> B6.
  The `beql` at 0xda41020 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B9 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xda41080).

- `__glOdylc_Color3ui` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda413fc, 292 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base v0 (`sw` at 0xda41434).
  Stores 4 bytes to abs 0x1030 through base t1 (`sw` at 0xda414a0).
  Stores 4 bytes to abs 0x1028 through base t1 (`sw` at 0xda414ac).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda414d4).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda414e4).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda414f0).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda414f8).
  Stores 4 bytes to abs 0x1030 through base t1 (`sw` at 0xda41500).
  Stores 4 bytes to abs 0x1028 through base t1 (`sw` at 0xda41504).
  Stores 4 bytes to abs 0x1034 through base t1 (`sw` at 0xda4150c).
  Calls `__glSPDlistSpace [0xdadf11c]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028] (`jalr` at 0xda41478).
  The `bne` at 0xda41444 is taken when t8(=[0x1034]) != 0 -> B3 and falls through when t8(=[0x1034]) == 0 -> B1.
  The `beql` at 0xda41450 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B4 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B2.
  The `beql` at 0xda41464 is taken when a3(=[0x1028]) >= t2(=one of 0x4, 0x5) (signed) -> B9 and falls through when a3(=[0x1028]) < t2(=one of 0x4, 0x5) (signed) -> B5.
  The `bne` at 0xda41490 is taken when v0(=ret(__glSPDlistSpace)) != 0 -> B7 and falls through when v0(=ret(__glSPDlistSpace)) == 0 -> B6.
  The `beql` at 0xda414b8 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B9 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xda41518).

- `__glOdylc_Color3us` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda41648, 292 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base v0 (`sw` at 0xda41680).
  Stores 4 bytes to abs 0x1030 through base t1 (`sw` at 0xda416ec).
  Stores 4 bytes to abs 0x1028 through base t1 (`sw` at 0xda416f8).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda41720).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda41730).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda4173c).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda41744).
  Stores 4 bytes to abs 0x1030 through base t1 (`sw` at 0xda4174c).
  Stores 4 bytes to abs 0x1028 through base t1 (`sw` at 0xda41750).
  Stores 4 bytes to abs 0x1034 through base t1 (`sw` at 0xda41758).
  Calls `__glSPDlistSpace [0xdadf11c]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028] (`jalr` at 0xda416c4).
  The `bne` at 0xda41690 is taken when t8(=[0x1034]) != 0 -> B3 and falls through when t8(=[0x1034]) == 0 -> B1.
  The `beql` at 0xda4169c is taken when (v1(=[0x1030]) & 0x4) == 0 -> B4 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B2.
  The `beql` at 0xda416b0 is taken when a3(=[0x1028]) >= t2(=one of 0x4, 0x5) (signed) -> B9 and falls through when a3(=[0x1028]) < t2(=one of 0x4, 0x5) (signed) -> B5.
  The `bne` at 0xda416dc is taken when v0(=ret(__glSPDlistSpace)) != 0 -> B7 and falls through when v0(=ret(__glSPDlistSpace)) == 0 -> B6.
  The `beql` at 0xda41704 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B9 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xda41764).

- `__glOdylc_Color4b` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda41894, 304 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base v0 (`sw` at 0xda418d0).
  Stores 4 bytes to abs 0x1030 through base t2 (`sw` at 0xda4193c).
  Stores 4 bytes to abs 0x1028 through base t2 (`sw` at 0xda41948).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda41970).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda41980).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda4198c).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda41994).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda4199c).
  Stores 4 bytes to abs 0x1030 through base t2 (`sw` at 0xda419a4).
  Stores 4 bytes to abs 0x1028 through base t2 (`sw` at 0xda419a8).
  Stores 4 bytes to abs 0x1034 through base t2 (`sw` at 0xda419b0).
  Calls `__glSPDlistSpace [0xdadf11c]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda41914).
  The `bne` at 0xda418e0 is taken when t8(=[0x1034]) != 0 -> B3 and falls through when t8(=[0x1034]) == 0 -> B1.
  The `beql` at 0xda418ec is taken when (v1(=[0x1030]) & 0x4) == 0 -> B4 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B2.
  The `beql` at 0xda41900 is taken when t0(=[0x1028]) >= t3(=one of 0x5, 0x6) (signed) -> B9 and falls through when t0(=[0x1028]) < t3(=one of 0x5, 0x6) (signed) -> B5.
  The `bne` at 0xda4192c is taken when v0(=ret(__glSPDlistSpace)) != 0 -> B7 and falls through when v0(=ret(__glSPDlistSpace)) == 0 -> B6.
  The `beql` at 0xda41954 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B9 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xda419bc).

- `__glOdylc_Color4i` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda41fd8, 304 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base v0 (`sw` at 0xda42014).
  Stores 4 bytes to abs 0x1030 through base t2 (`sw` at 0xda42080).
  Stores 4 bytes to abs 0x1028 through base t2 (`sw` at 0xda4208c).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda420b4).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda420c4).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda420d0).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda420d8).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda420e0).
  Stores 4 bytes to abs 0x1030 through base t2 (`sw` at 0xda420e8).
  Stores 4 bytes to abs 0x1028 through base t2 (`sw` at 0xda420ec).
  Stores 4 bytes to abs 0x1034 through base t2 (`sw` at 0xda420f4).
  Calls `__glSPDlistSpace [0xdadf11c]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda42058).
  The `bne` at 0xda42024 is taken when t8(=[0x1034]) != 0 -> B3 and falls through when t8(=[0x1034]) == 0 -> B1.
  The `beql` at 0xda42030 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B4 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B2.
  The `beql` at 0xda42044 is taken when t0(=[0x1028]) >= t3(=one of 0x5, 0x6) (signed) -> B9 and falls through when t0(=[0x1028]) < t3(=one of 0x5, 0x6) (signed) -> B5.
  The `bne` at 0xda42070 is taken when v0(=ret(__glSPDlistSpace)) != 0 -> B7 and falls through when v0(=ret(__glSPDlistSpace)) == 0 -> B6.
  The `beql` at 0xda42098 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B9 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xda42100).

- `__glOdylc_Color4s` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda4223c, 304 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base v0 (`sw` at 0xda42278).
  Stores 4 bytes to abs 0x1030 through base t2 (`sw` at 0xda422e4).
  Stores 4 bytes to abs 0x1028 through base t2 (`sw` at 0xda422f0).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda42318).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda42328).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda42334).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda4233c).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda42344).
  Stores 4 bytes to abs 0x1030 through base t2 (`sw` at 0xda4234c).
  Stores 4 bytes to abs 0x1028 through base t2 (`sw` at 0xda42350).
  Stores 4 bytes to abs 0x1034 through base t2 (`sw` at 0xda42358).
  Calls `__glSPDlistSpace [0xdadf11c]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda422bc).
  The `bne` at 0xda42288 is taken when t8(=[0x1034]) != 0 -> B3 and falls through when t8(=[0x1034]) == 0 -> B1.
  The `beql` at 0xda42294 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B4 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B2.
  The `beql` at 0xda422a8 is taken when t0(=[0x1028]) >= t3(=one of 0x5, 0x6) (signed) -> B9 and falls through when t0(=[0x1028]) < t3(=one of 0x5, 0x6) (signed) -> B5.
  The `bne` at 0xda422d4 is taken when v0(=ret(__glSPDlistSpace)) != 0 -> B7 and falls through when v0(=ret(__glSPDlistSpace)) == 0 -> B6.
  The `beql` at 0xda422fc is taken when (v1(=[0x1030]) & 0x4) == 0 -> B9 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xda42364).

- `__glOdylc_Color4ub` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda424a0, 304 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base v0 (`sw` at 0xda424dc).
  Stores 4 bytes to abs 0x1030 through base t2 (`sw` at 0xda42548).
  Stores 4 bytes to abs 0x1028 through base t2 (`sw` at 0xda42554).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda4257c).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda4258c).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda42598).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda425a0).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda425a8).
  Stores 4 bytes to abs 0x1030 through base t2 (`sw` at 0xda425b0).
  Stores 4 bytes to abs 0x1028 through base t2 (`sw` at 0xda425b4).
  Stores 4 bytes to abs 0x1034 through base t2 (`sw` at 0xda425bc).
  Calls `__glSPDlistSpace [0xdadf11c]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda42520).
  The `bne` at 0xda424ec is taken when t8(=[0x1034]) != 0 -> B3 and falls through when t8(=[0x1034]) == 0 -> B1.
  The `beql` at 0xda424f8 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B4 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B2.
  The `beql` at 0xda4250c is taken when t0(=[0x1028]) >= t3(=one of 0x5, 0x6) (signed) -> B9 and falls through when t0(=[0x1028]) < t3(=one of 0x5, 0x6) (signed) -> B5.
  The `bne` at 0xda42538 is taken when v0(=ret(__glSPDlistSpace)) != 0 -> B7 and falls through when v0(=ret(__glSPDlistSpace)) == 0 -> B6.
  The `beql` at 0xda42560 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B9 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xda425c8).

- `__glOdylc_Color4ui` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda42704, 304 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base v0 (`sw` at 0xda42740).
  Stores 4 bytes to abs 0x1030 through base t2 (`sw` at 0xda427ac).
  Stores 4 bytes to abs 0x1028 through base t2 (`sw` at 0xda427b8).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda427e0).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda427f0).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda427fc).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda42804).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda4280c).
  Stores 4 bytes to abs 0x1030 through base t2 (`sw` at 0xda42814).
  Stores 4 bytes to abs 0x1028 through base t2 (`sw` at 0xda42818).
  Stores 4 bytes to abs 0x1034 through base t2 (`sw` at 0xda42820).
  Calls `__glSPDlistSpace [0xdadf11c]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda42784).
  The `bne` at 0xda42750 is taken when t8(=[0x1034]) != 0 -> B3 and falls through when t8(=[0x1034]) == 0 -> B1.
  The `beql` at 0xda4275c is taken when (v1(=[0x1030]) & 0x4) == 0 -> B4 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B2.
  The `beql` at 0xda42770 is taken when t0(=[0x1028]) >= t3(=one of 0x5, 0x6) (signed) -> B9 and falls through when t0(=[0x1028]) < t3(=one of 0x5, 0x6) (signed) -> B5.
  The `bne` at 0xda4279c is taken when v0(=ret(__glSPDlistSpace)) != 0 -> B7 and falls through when v0(=ret(__glSPDlistSpace)) == 0 -> B6.
  The `beql` at 0xda427c4 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B9 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xda4282c).

- `__glOdylc_Color4us` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda42968, 304 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base v0 (`sw` at 0xda429a4).
  Stores 4 bytes to abs 0x1030 through base t2 (`sw` at 0xda42a10).
  Stores 4 bytes to abs 0x1028 through base t2 (`sw` at 0xda42a1c).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda42a44).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda42a54).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda42a60).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda42a68).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xda42a70).
  Stores 4 bytes to abs 0x1030 through base t2 (`sw` at 0xda42a78).
  Stores 4 bytes to abs 0x1028 through base t2 (`sw` at 0xda42a7c).
  Stores 4 bytes to abs 0x1034 through base t2 (`sw` at 0xda42a84).
  Calls `__glSPDlistSpace [0xdadf11c]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda429e8).
  The `bne` at 0xda429b4 is taken when t8(=[0x1034]) != 0 -> B3 and falls through when t8(=[0x1034]) == 0 -> B1.
  The `beql` at 0xda429c0 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B4 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B2.
  The `beql` at 0xda429d4 is taken when t0(=[0x1028]) >= t3(=one of 0x5, 0x6) (signed) -> B9 and falls through when t0(=[0x1028]) < t3(=one of 0x5, 0x6) (signed) -> B5.
  The `bne` at 0xda42a00 is taken when v0(=ret(__glSPDlistSpace)) != 0 -> B7 and falls through when v0(=ret(__glSPDlistSpace)) == 0 -> B6.
  The `beql` at 0xda42a28 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B9 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xda42a90).

- `__glOdylc_Normal3b` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdaaad00, 272 bytes) Inferred.
  Stores 4 bytes to abs 0x1030 through base t1 (`sw` at 0xdaaad90).
  Stores 4 bytes to abs 0x1028 through base t1 (`sw` at 0xdaaad9c).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdaaadc4).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdaaadd4).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdaaade0).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdaaade8).
  Stores 4 bytes to abs 0x1030 through base t1 (`sw` at 0xdaaadf0).
  Stores 4 bytes to abs 0x1028 through base t1 (`sw` at 0xdaaadf4).
  Stores 4 bytes to abs 0x1034 through base t1 (`sw` at 0xdaaadfc).
  Calls `__glSPDlistSpace [0xdadf11c]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028] (`jalr` at 0xdaaad68).
  The `bne` at 0xdaaad34 is taken when t6(=[0x1034]) != 0 -> B3 and falls through when t6(=[0x1034]) == 0 -> B1.
  The `beql` at 0xdaaad40 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B4 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B2.
  The `beql` at 0xdaaad54 is taken when a3(=[0x1028]) >= t8(=one of 0x4, 0x5) (signed) -> B9 and falls through when a3(=[0x1028]) < t8(=one of 0x4, 0x5) (signed) -> B5.
  The `bne` at 0xdaaad80 is taken when v0(=ret(__glSPDlistSpace)) != 0 -> B7 and falls through when v0(=ret(__glSPDlistSpace)) == 0 -> B6.
  The `beql` at 0xdaaada8 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B9 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xdaaae08).

- `__glOdylc_Normal3s` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdaab5a4, 272 bytes) Inferred.
  Stores 4 bytes to abs 0x1030 through base t1 (`sw` at 0xdaab634).
  Stores 4 bytes to abs 0x1028 through base t1 (`sw` at 0xdaab640).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdaab668).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdaab678).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdaab684).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdaab68c).
  Stores 4 bytes to abs 0x1030 through base t1 (`sw` at 0xdaab694).
  Stores 4 bytes to abs 0x1028 through base t1 (`sw` at 0xdaab698).
  Stores 4 bytes to abs 0x1034 through base t1 (`sw` at 0xdaab6a0).
  Calls `__glSPDlistSpace [0xdadf11c]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028] (`jalr` at 0xdaab60c).
  The `bne` at 0xdaab5d8 is taken when t6(=[0x1034]) != 0 -> B3 and falls through when t6(=[0x1034]) == 0 -> B1.
  The `beql` at 0xdaab5e4 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B4 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B2.
  The `beql` at 0xdaab5f8 is taken when a3(=[0x1028]) >= t8(=one of 0x4, 0x5) (signed) -> B9 and falls through when a3(=[0x1028]) < t8(=one of 0x4, 0x5) (signed) -> B5.
  The `bne` at 0xdaab624 is taken when v0(=ret(__glSPDlistSpace)) != 0 -> B7 and falls through when v0(=ret(__glSPDlistSpace)) == 0 -> B6.
  The `beql` at 0xdaab64c is taken when (v1(=[0x1030]) & 0x4) == 0 -> B9 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xdaab6ac).

- `__glOdylc_TexCoord1d` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdab23f0, 252 bytes) Inferred.
  Stores 4 bytes to abs 0x1030 through base a2 (`sw` at 0xdab247c).
  Stores 4 bytes to abs 0x1028 through base a2 (`sw` at 0xdab2488).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdab24b4).
  Stores 4 bytes to ? (base unknown) through base v1 (`swc1` at 0xdab24b8).
  Stores 4 bytes to abs 0x1034 through base a2 (`sw` at 0xdab24d0).
  Stores 4 bytes to abs 0x1030 through base a2 (`sw` at 0xdab24d4).
  Stores 4 bytes to abs 0x1028 through base a2 (`sw` at 0xdab24d8).
  Calls `__glSPDlistSpace [0xdadf11c]` via register-constant with a0=0x0, a1=one of 0x0, 0x1, a2=0x1028, a3=a3 at entry (arg3) (`jalr` at 0xdab2450).
  The `bne` at 0xdab2418 is taken when t6(=[0x1034]) != 0 -> B3 and falls through when t6(=[0x1034]) == 0 -> B1.
  The `beql` at 0xdab2424 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B4 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B2.
  The `beql` at 0xdab2438 is taken when a0(=[0x1028]) >= t8(=one of 0x2, 0x3) (signed) -> B9 and falls through when a0(=[0x1028]) < t8(=one of 0x2, 0x3) (signed) -> B5.
  The `bne` at 0xdab246c is taken when v0(=ret(__glSPDlistSpace)) != 0 -> B7 and falls through when v0(=ret(__glSPDlistSpace)) == 0 -> B6.
  The `beql` at 0xdab2494 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B9 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xdab24e4).

- `__glOdylc_TexCoord2d` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdab2bc8, 268 bytes) Inferred.
  Stores 4 bytes to abs 0x1030 through base a2 (`sw` at 0xdab2c5c).
  Stores 4 bytes to abs 0x1028 through base a2 (`sw` at 0xdab2c68).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdab2c98).
  Stores 4 bytes to ? (base unknown) through base v1 (`swc1` at 0xdab2c9c).
  Stores 4 bytes to ? (base unknown) through base v1 (`swc1` at 0xdab2ca0).
  Stores 4 bytes to abs 0x1034 through base a2 (`sw` at 0xdab2cb8).
  Stores 4 bytes to abs 0x1030 through base a2 (`sw` at 0xdab2cbc).
  Stores 4 bytes to abs 0x1028 through base a2 (`sw` at 0xdab2cc0).
  Calls `__glSPDlistSpace [0xdadf11c]` via register-constant with a0=0x0, a1=one of 0x0, 0x1, a2=0x1028, a3=a3 at entry (arg3) (`jalr` at 0xdab2c2c).
  The `bne` at 0xdab2bf0 is taken when t6(=[0x1034]) != 0 -> B3 and falls through when t6(=[0x1034]) == 0 -> B1.
  The `beql` at 0xdab2bfc is taken when (v1(=[0x1030]) & 0x4) == 0 -> B4 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B2.
  The `beql` at 0xdab2c10 is taken when a0(=[0x1028]) >= t8(=one of 0x3, 0x4) (signed) -> B9 and falls through when a0(=[0x1028]) < t8(=one of 0x3, 0x4) (signed) -> B5.
  The `bne` at 0xdab2c4c is taken when v0(=ret(__glSPDlistSpace)) != 0 -> B7 and falls through when v0(=ret(__glSPDlistSpace)) == 0 -> B6.
  The `beql` at 0xdab2c74 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B9 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xdab2ccc).

- `__glOdylc_TexCoord2i` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdab2ff0, 260 bytes) Inferred.
  Stores 4 bytes to abs 0x1030 through base t0 (`sw` at 0xdab307c).
  Stores 4 bytes to abs 0x1028 through base t0 (`sw` at 0xdab3088).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdab30b0).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdab30c0).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdab30cc).
  Stores 4 bytes to abs 0x1030 through base t0 (`sw` at 0xdab30d4).
  Stores 4 bytes to abs 0x1028 through base t0 (`sw` at 0xdab30d8).
  Stores 4 bytes to abs 0x1034 through base t0 (`sw` at 0xdab30e0).
  Calls `__glSPDlistSpace [0xdadf11c]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=[0x1028], a3=one of 0x0, 0x1 (`jalr` at 0xdab3054).
  The `bne` at 0xdab3020 is taken when t6(=[0x1034]) != 0 -> B3 and falls through when t6(=[0x1034]) == 0 -> B1.
  The `beql` at 0xdab302c is taken when (v1(=[0x1030]) & 0x4) == 0 -> B4 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B2.
  The `beql` at 0xdab3040 is taken when a2(=[0x1028]) >= t8(=one of 0x3, 0x4) (signed) -> B9 and falls through when a2(=[0x1028]) < t8(=one of 0x3, 0x4) (signed) -> B5.
  The `bne` at 0xdab306c is taken when v0(=ret(__glSPDlistSpace)) != 0 -> B7 and falls through when v0(=ret(__glSPDlistSpace)) == 0 -> B6.
  The `beql` at 0xdab3094 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B9 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xdab30ec).

- `__glOdylc_TexCoord3i` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdab3864, 272 bytes) Inferred.
  Stores 4 bytes to abs 0x1030 through base t1 (`sw` at 0xdab38f4).
  Stores 4 bytes to abs 0x1028 through base t1 (`sw` at 0xdab3900).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdab3928).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdab3938).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdab3944).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdab394c).
  Stores 4 bytes to abs 0x1030 through base t1 (`sw` at 0xdab3954).
  Stores 4 bytes to abs 0x1028 through base t1 (`sw` at 0xdab3958).
  Stores 4 bytes to abs 0x1034 through base t1 (`sw` at 0xdab3960).
  Calls `__glSPDlistSpace [0xdadf11c]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028] (`jalr` at 0xdab38cc).
  The `bne` at 0xdab3898 is taken when t6(=[0x1034]) != 0 -> B3 and falls through when t6(=[0x1034]) == 0 -> B1.
  The `beql` at 0xdab38a4 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B4 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B2.
  The `beql` at 0xdab38b8 is taken when a3(=[0x1028]) >= t8(=one of 0x4, 0x5) (signed) -> B9 and falls through when a3(=[0x1028]) < t8(=one of 0x4, 0x5) (signed) -> B5.
  The `bne` at 0xdab38e4 is taken when v0(=ret(__glSPDlistSpace)) != 0 -> B7 and falls through when v0(=ret(__glSPDlistSpace)) == 0 -> B6.
  The `beql` at 0xdab390c is taken when (v1(=[0x1030]) & 0x4) == 0 -> B9 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xdab396c).

- `__glOdylc_TexCoord4i` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdab413c, 284 bytes) Inferred.
  Stores 4 bytes to abs 0x1030 through base t2 (`sw` at 0xdab41d0).
  Stores 4 bytes to abs 0x1028 through base t2 (`sw` at 0xdab41dc).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdab4204).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdab4214).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdab4220).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdab4228).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdab4230).
  Stores 4 bytes to abs 0x1030 through base t2 (`sw` at 0xdab4238).
  Stores 4 bytes to abs 0x1028 through base t2 (`sw` at 0xdab423c).
  Stores 4 bytes to abs 0x1034 through base t2 (`sw` at 0xdab4244).
  Calls `__glSPDlistSpace [0xdadf11c]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdab41a8).
  The `bne` at 0xdab4174 is taken when t6(=[0x1034]) != 0 -> B3 and falls through when t6(=[0x1034]) == 0 -> B1.
  The `beql` at 0xdab4180 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B4 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B2.
  The `beql` at 0xdab4194 is taken when t0(=[0x1028]) >= t8(=one of 0x5, 0x6) (signed) -> B9 and falls through when t0(=[0x1028]) < t8(=one of 0x5, 0x6) (signed) -> B5.
  The `bne` at 0xdab41c0 is taken when v0(=ret(__glSPDlistSpace)) != 0 -> B7 and falls through when v0(=ret(__glSPDlistSpace)) == 0 -> B6.
  The `beql` at 0xdab41e8 is taken when (v1(=[0x1030]) & 0x4) == 0 -> B9 and falls through when (v1(=[0x1030]) & 0x4) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xdab4250).

- `DownsampleTextureThruHW` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdab7238, 3068 bytes) Inferred.
  Stores 4 bytes to sp (at entry) -0x5c through base t6 (`sw` at 0xdab726c).
  Stores 4 bytes to sp (at entry) -0x58 through base t6 (`sw` at 0xdab727c).
  Stores 4 bytes to sp (at entry) -0x54 through base t6 (`sw` at 0xdab7288).
  Stores 4 bytes to sp (at entry) -0x60 through base t9 (`sw` at 0xdab7290).
  Stores 4 bytes to [0x1010] +0x7b20 through base a3 (`sw` at 0xdab72f0).
  Stores 4 bytes to [0x1010] +0x7b20 through base a3 (`sw` at 0xdab7304).
  Stores 4 bytes to [0x1010] +0x168d0 through base at (`sw` at 0xdab7320).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xdab7324).
  Stores 4 bytes to [0x1010] +0x2d44 through base a3 (`sw` at 0xdab732c).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7438).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7494).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7498).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab74c4).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab74ec).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab74f4).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7514).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7518).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7538).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7558).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7560).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7578).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab757c).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7588).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7594).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab75c8).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab75d0).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab75f8).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab75fc).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7670).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xdab768c).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab769c).
  Stores 4 bytes to ? (base unknown) through base t1 (`sw` at 0xdab76d0).
  Stores 4 bytes to ? (base unknown) through base t1 (`sw` at 0xdab76f8).
  Stores 4 bytes to ? (base unknown) through base t1 (`sw` at 0xdab771c).
  Stores 4 bytes to ? (base unknown) through base t1 (`sw` at 0xdab773c).
  Stores 4 bytes to ? (base unknown) through base t1 (`sw` at 0xdab7760).
  Stores 4 bytes to ? (base unknown) through base t1 (`sw` at 0xdab7764).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xdab7784).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab7788).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab7794).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab779c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab77a0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab77a4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab77b4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab77c4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab77d4).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xdab77d8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab77dc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab77e0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab77e4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab77e8).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xdab7800).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7818).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab781c).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xdab7834).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7840).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xdab7858).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xdab78d8).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xdab78fc).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xdab7920).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xdab7948).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xdab7960).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xdab7980).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xdab79b8).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xdab79d8).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab79f0).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7b1c).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7b34).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7b58).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7b68).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7b88).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xdab7b98).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7ba0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab7c1c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab7c2c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab7c34).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdab7c38).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdab7c40).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdab7c44).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdab7c48).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdab7c68).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdab7c88).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdab7c8c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdab7cb8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdab7cf0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdab7cf8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdab7cfc).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdab7d00).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdab7d04).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdab7d08).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xdab7d10).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab7d18).
  Stores 4 bytes to ? (base unknown) through base t1 (`sw` at 0xdab7d28).
  Stores 4 bytes to ? (base unknown) through base t1 (`sw` at 0xdab7d30).
  Stores 4 bytes to ? (base unknown) through base t1 (`sw` at 0xdab7d40).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xdab7d58).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab7d5c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab7d60).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab7d64).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab7d68).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab7d6c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab7d7c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab7d8c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab7d94).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xdab7d98).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab7d9c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab7da0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab7da4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdab7da8).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xdab7dc0).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7dd0).
  Stores 4 bytes to ? (base unknown) through base t7 (`sw` at 0xdab7de0).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xdab7df0).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7df8).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7dfc).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7e00).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xdab7e18).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab7e20).
  Calls `__glOdysseyImageLogBase2 [0xdaa6250]` via register-constant with a0=?, a1=0xde0, a2=?, a3=[0x1010] (`jalr` at 0xdab7408).
  Calls `__glOdysseyImageLogBase2 [0xdaa6250]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xdab744c).
  Calls `ChooseSuitableBuzzTexModeBaseFmt [0xdab5c18]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xdab7628).
  Calls `GetImageFmtEnumFromBuzzTexFormat [0xdab5b58]` via register-constant with a0=?, a1=table(0x8000), a2=?, a3=? (`jalr` at 0xdab7880).
  Calls `__glOdysseyImageCalcFieldFormat [0xda6b2e8]` via register-constant with a0=ret(GetImageFmtEnumFromBuzzTexFormat), a1=?, a2=?, a3=? (`jalr` at 0xdab7894).
  Calls `__glOdysseyValidateHardware [0xda47694]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xdab7bd4).
  The `bnel` at 0xdab72ac is taken when v1(=0x2) != t6(?) -> B3 and falls through when v1(=0x2) == t6(?) -> B1.
  The `bnel` at 0xdab72bc is taken when v1(=0x2) != t7(?) -> B3 and falls through when v1(=0x2) == t7(?) -> B2.
  The `bnel` at 0xdab72d4 is taken when a1(=0xde0) != t9(=[a0+12]) -> B6 and falls through when a1(=0xde0) == t9(=[a0+12]) -> B4.
  The `beq` at 0xdab7334 is taken when v1(?) == 0 -> B11 and falls through when v1(?) != 0 -> B8.
  The `beq` at 0xdab733c is taken when v1(?) == at(=0x1) -> B12 and falls through when v1(?) != at(=0x1) -> B9.
  The `beq` at 0xdab7348 is taken when v1(?) == at(=0x8) -> B13 and falls through when v1(?) != at(=0x8) -> B10.
  The `beq` at 0xdab7390 is taken when a1(=0xde0) == t8(=[a0+12]) -> B17 and falls through when a1(=0xde0) != t8(=[a0+12]) -> B16.
  The `beq` at 0xdab73a4 is taken when v0(?) == 0 -> B20 and falls through when v0(?) != 0 -> B19.
  The `beq` at 0xdab73c0 is taken when v1(?) == 0 -> B23 and falls through when v1(?) != 0 -> B22.
  The `beq` at 0xdab74c0 is taken when t2(?) == 0 -> B26 and falls through when t2(?) != 0 -> B25.
  The `beq` at 0xdab7534 is taken when t3(?) == 0 -> B29 and falls through when t3(?) != 0 -> B28.
  The `bne` at 0xdab7590 is taken when t2(?) != 0 -> B32 and falls through when t2(?) == 0 -> B31.
  The `beq` at 0xdab7598 is taken when t3(?) == 0 -> B33 and falls through when t3(?) != 0 -> B32.
  The `beq` at 0xdab7774 is taken when t8(=entry(0x9750)) == 0 -> B36 and falls through when t8(=entry(0x9750)) != 0 -> B35.
  The `beq` at 0xdab79ec is taken when t2(?) == 0 -> B40 and falls through when t2(?) != 0 -> B37.
  The `bgez` at 0xdab7a18 is taken when t8(?) >= 0 (signed) -> B39 and falls through when t8(?) < 0 (signed) -> B38.
  The `beq` at 0xdab7aa0 is taken when t3(?) == 0 -> B45 and falls through when t3(?) != 0 -> B42.
  The `bgez` at 0xdab7ab8 is taken when t9(?) >= 0 (signed) -> B44 and falls through when t9(?) < 0 (signed) -> B43.
  The `beql` at 0xdab7ba8 is taken when t8(?) == 0 -> B48 and falls through when t8(?) != 0 -> B47.
  The `bgez` at 0xdab7c4c is taken when t8(?) >= 0 (signed) -> B50 and falls through when t8(?) < 0 (signed) -> B49.
  The `bgez` at 0xdab7c74 is taken when t7(?) >= 0 (signed) -> B52 and falls through when t7(?) < 0 (signed) -> B51.
  The `bgez` at 0xdab7ca4 is taken when t8(?) >= 0 (signed) -> B54 and falls through when t8(?) < 0 (signed) -> B53.
  The `bgez` at 0xdab7cd8 is taken when t9(?) >= 0 (signed) -> B56 and falls through when t9(?) < 0 (signed) -> B55.
  The `beq` at 0xdab7d50 is taken when t7(?) == 0 -> B58 and falls through when t7(?) != 0 -> B57.
  The routine returns v0 = ? (`jr` at 0xdab7e2c).

- `__glOdysseyTextureDeactivate` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdab8908, 272 bytes) Inferred.
  Stores 4 bytes to a1 (arg1 at entry) +0x538 through base s0 (`sw` at 0xdab8960).
  Stores 4 bytes to ? (base unknown) through base v0 (`sw` at 0xdab8980).
  Stores 4 bytes to [a0+91320] +0x538 through base s0 (`sw` at 0xdab89d0).
  Stores 4 bytes to ? (base unknown) through base a0 (`sw` at 0xdab89ec).
  Stores 4 bytes to ? (base unknown) through base a0 (`sw` at 0xdab89f0).
  Stores 4 bytes to ? (base unknown) through base a0 (`sw` at 0xdab89f4).
  Stores 4 bytes to ? (base unknown) through base a0 (`sw` at 0xdab8a00).
  Calls `__glOdysseyClosePMObjReference [0xdaad5a0]` via register-constant with a0=a0 at entry (arg0), a1=[a1+1332], a2=[a1+1340], a3=[a1+1344] (`jalr` at 0xdab8938).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0xdab8950).
  Calls `__glOdysseyClosePMObjReference [0xdaad5a0]` via register-constant with a0=a0 at entry (arg0), a1=[[a0+91320]+1332], a2=[[a0+91320]+1340], a3=[[a0+91320]+1344] (`jalr` at 0xdab89ac).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0xdab89c4).
  The `bne` at 0xdab8940 is taken when v0(=ret(__glOdysseyClosePMObjReference)) != 0 -> B2 and falls through when v0(=ret(__glOdysseyClosePMObjReference)) == 0 -> B1.
  The `bne` at 0xdab897c is taken when v1(?) < 0x10 (signed) -> B3 and falls through when v1(?) >= 0x10 (signed) -> B4.
  The `beql` at 0xdab8998 is taken when t6(=[[a0+91320]+1336]) == 0 -> B8 and falls through when t6(=[[a0+91320]+1336]) != 0 -> B5.
  The `bne` at 0xdab89b4 is taken when v0(=ret(__glOdysseyClosePMObjReference)) != 0 -> B7 and falls through when v0(=ret(__glOdysseyClosePMObjReference)) == 0 -> B6.
  The `bne` at 0xdab89fc is taken when v1(?) != a1(=0x10) -> B9 and falls through when v1(?) == a1(=0x10) -> B10.
  The routine returns v0 = 0xffffffffbaadcade (`jr` at 0xdab8a10).

- `RGBSendFc` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdacec48, 136 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdacec78).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdacec7c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacec8c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacec94).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacec9c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaceca4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaceca8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacecb0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacecb8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacecc0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaceccc).
  The `beq` at 0xdacec54 is taken when t6(=[a0+184]:1) == 0 -> B2 and falls through when t6(=[a0+184]:1) != 0 -> B1.
  The routine returns v0 = one of 0xf, 0x10 (`jr` at 0xdacecc8).

- `RGBSendClippedBmFmTN` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdacfde0, 744 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdacfe14).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdacfe38).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfe3c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfe40).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfe48).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfe50).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdacfe54).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfe64).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfe74).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfe84).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfe88).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdacfe8c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfe90).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfe94).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfe98).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfea8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdacfeac).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfebc).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfecc).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfed4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfed8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdacfedc).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfee0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfee4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfee8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfeec).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdacfef0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfef8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff00).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff08).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff0c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdacff10).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff14).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff18).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff1c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff24).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdacff28).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff30).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff38).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff40).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff48).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdacff50).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff58).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff5c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff60).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff68).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdacff6c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff70).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff74).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff7c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff84).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdacff88).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff8c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff90).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacff94).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacffa4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdacffa8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacffb8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacffc8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacffd8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacffdc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdacffe0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacffe4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacffe8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacffec).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfff0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdacfff4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfff8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdacfffc).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0000).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0004).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad0008).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad000c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0010).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0014).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0024).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad0028).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0030).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0038).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0040).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0044).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad0050).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0060).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0070).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0078).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad007c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0084).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad008c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0094).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad009c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad00a0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad00a8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad00b0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad00b8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad00c4).
  The `beq` at 0xdacfdf8 is taken when t6(=[a0+184]:1) == 0 -> B2 and falls through when t6(=[a0+184]:1) != 0 -> B1.
  The `bne` at 0xdacfe24 is taken when t1(=[[0x1010]+1416]) != at(=0x81fa) -> B4 and falls through when t1(=[[0x1010]+1416]) == at(=0x81fa) -> B3.
  The routine returns v0 = [0x1010] (`jr` at 0xdad00c0).

- `CISendFc` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdad00c8, 112 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad00f8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad00fc).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad010c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad0110).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0118).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0120).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0128).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0134).
  The `beq` at 0xdad00d4 is taken when t6(=[a0+184]:1) == 0 -> B2 and falls through when t6(=[a0+184]:1) != 0 -> B1.
  The routine returns v0 = one of 0xf, 0x10 (`jr` at 0xdad0130).

- `CISendClippedBmFmN` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdad0640, 372 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad0678).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad0680).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0690).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0694).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0698).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad069c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad06a0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad06a4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad06a8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad06ac).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad06b8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad06bc).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad06c0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad06c4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad06c8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad06d4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad06d8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad06dc).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad06e0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad06e4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad06ec).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad06f4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0704).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0708).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad070c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0710).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad0714).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0718).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad071c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0720).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad072c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad0730).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0734).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0738).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad073c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0748).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad074c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0750).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0754).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0758).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0760).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad0768).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0778).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0780).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0788).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdad078c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad0794).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad079c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad07a4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdad07b0).
  The `beq` at 0xdad0658 is taken when t6(=[a0+184]:1) == 0 -> B2 and falls through when t6(=[a0+184]:1) != 0 -> B1.
  The routine returns v0 = one of 0xf, 0x10 (`jr` at 0xdad07ac).

- `__glOdyim_Vertex2d` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdba70c0, 32 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdba70d0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdba70d4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdba70dc).
  The routine returns v0 = ? (`jr` at 0xdba70d8).

- `__glOdyim_Vertex3d` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdba72c0, 44 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdba72d8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdba72dc).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdba72e0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdba72e8).
  The routine returns v0 = ? (`jr` at 0xdba72e4).

- `__glOdyim_Vertex3i` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdba73c0, 52 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdba73e0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdba73e4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdba73e8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdba73f0).
  The routine returns v0 = ? (`jr` at 0xdba73ec).

- `__glOdyim_Vertex4i` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdba75c0, 64 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdba75e8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdba75ec).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdba75f0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdba75f4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdba75fc).
  The routine returns v0 = ? (`jr` at 0xdba75f8).

- `__glOdyim_TexCoord3d` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdbace80, 44 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbace94).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbace9c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbacea0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbacea8).
  The routine returns v0 = ? (`jr` at 0xdbacea4).

- `__glOdyim_ScratchColor3b` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdbad540, 36 bytes) Inferred.
  Stores 8 bytes to abs 0x4000 through base zero (`sdc1` at 0xdbad558).
  Stores 8 bytes to abs 0x4000 through base zero (`sdc1` at 0xdbad560).
  The routine returns v0 = ? (`jr` at 0xdbad55c).

- `__glOdyim_Color3d` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdbad600, 44 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbad614).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbad61c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbad620).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbad628).
  The routine returns v0 = ? (`jr` at 0xdbad624).

- `__glOdyim_ScratchColor3d` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdbad640, 44 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbad654).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbad65c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbad660).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbad668).
  The routine returns v0 = ? (`jr` at 0xdbad664).

- `__glOdyim_ScratchColor3i` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdbad840, 36 bytes) Inferred.
  Stores 8 bytes to abs 0x4000 through base zero (`sdc1` at 0xdbad858).
  Stores 8 bytes to abs 0x4000 through base zero (`sdc1` at 0xdbad860).
  The routine returns v0 = ? (`jr` at 0xdbad85c).

- `__glOdyim_ScratchColor3s` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdbad940, 36 bytes) Inferred.
  Stores 8 bytes to abs 0x4000 through base zero (`sdc1` at 0xdbad958).
  Stores 8 bytes to abs 0x4000 through base zero (`sdc1` at 0xdbad960).
  The routine returns v0 = ? (`jr` at 0xdbad95c).

- `__glOdyim_ScratchColor3ui` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdbadb40, 36 bytes) Inferred.
  Stores 8 bytes to abs 0x4000 through base zero (`sdc1` at 0xdbadb58).
  Stores 8 bytes to abs 0x4000 through base zero (`sdc1` at 0xdbadb60).
  The routine returns v0 = ? (`jr` at 0xdbadb5c).

- `__glOdyim_ScratchColor3us` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdbadc40, 36 bytes) Inferred.
  Stores 8 bytes to abs 0x4000 through base zero (`sdc1` at 0xdbadc58).
  Stores 8 bytes to abs 0x4000 through base zero (`sdc1` at 0xdbadc60).
  The routine returns v0 = ? (`jr` at 0xdbadc5c).

- `__glOdyim_ScratchColor4b` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdbadd40, 40 bytes) Inferred.
  Stores 8 bytes to abs 0x4000 through base zero (`sdc1` at 0xdbadd54).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbadd58).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbadd5c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbadd64).
  The routine returns v0 = ? (`jr` at 0xdbadd60).

- `__glOdyim_ScratchColor4dv` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdbadec0, 64 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbadee0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbadee8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbadef0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbadef4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbadefc).
  The routine returns v0 = ? (`jr` at 0xdbadef8).

- `__glOdyim_ScratchColor4i` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdbae040, 40 bytes) Inferred.
  Stores 8 bytes to abs 0x4000 through base zero (`sdc1` at 0xdbae054).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbae058).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbae05c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbae064).
  The routine returns v0 = ? (`jr` at 0xdbae060).

- `__glOdyim_ScratchColor4s` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdbae140, 40 bytes) Inferred.
  Stores 8 bytes to abs 0x4000 through base zero (`sdc1` at 0xdbae154).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbae158).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbae15c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbae164).
  The routine returns v0 = ? (`jr` at 0xdbae160).

- `__glOdyim_ScratchColor4ub` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdbae240, 40 bytes) Inferred.
  Stores 8 bytes to abs 0x4000 through base zero (`sdc1` at 0xdbae254).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbae258).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbae25c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbae264).
  The routine returns v0 = ? (`jr` at 0xdbae260).

- `__glOdyim_ScratchColor4ui` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdbae340, 40 bytes) Inferred.
  Stores 8 bytes to abs 0x4000 through base zero (`sdc1` at 0xdbae354).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbae358).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbae35c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbae364).
  The routine returns v0 = ? (`jr` at 0xdbae360).

- `__glOdyim_ScratchColor4us` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdbae440, 40 bytes) Inferred.
  Stores 8 bytes to abs 0x4000 through base zero (`sdc1` at 0xdbae454).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbae458).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbae45c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbae464).
  The routine returns v0 = ? (`jr` at 0xdbae460).

- `__glOdyim_ScratchIndexd` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdbae540, 24 bytes) Inferred.
  Stores 8 bytes to abs 0x4000 through base zero (`sdc1` at 0xdbae554).
  The routine returns v0 = ? (`jr` at 0xdbae550).

- `__glXOpenGraphicsDevice` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd89ccfc, 408 bytes) Inferred.
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xd89cdf0).
  Stores 4 bytes to [0x1014] +0x104 through base a3 (`sw` at 0xd89ce60).
  Calls `__glXFatal` via got with a0=0x0, a1=0xd8cf760, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd89cd58).
  Calls `open` via got with a0=0xd8cf780, a1=0x802, a2=?, a3=? (`jalr` at 0xd89cd78).
  Calls `fcntl` via got with a0=?, a1=0x2, a2=0x5, a3=? (`jalr` at 0xd89cd98).
  Calls `__glXFatal` via got with a0=0x0, a1=0xd8cf760, a2=?, a3=[[0x1014]+260] (`jalr` at 0xd89cdd0).
  Calls `__glXFatal` via got with a0=0x0, a1=0xd8cf790, a2=?, a3=? (`jalr` at 0xd89ce04).
  Calls `__glXFatal` via got with a0=0x0, a1=0xd8cf7b0, a2=?, a3=? (`jalr` at 0xd89ce20).
  Calls `ioctl` via got with a0=?, a1=0x65, a2=0x0, a3=[[0x1014]+260] (`jalr` at 0xd89ce3c).
  Calls `__glXFatal` via got with a0=0x0, a1=0xd8cf7c0, a2=?, a3=? (`jalr` at 0xd89ce80).
  The `beq` at 0xd89cd18 is taken when a0 >= 0x41 (signed) -> B3 and falls through when a0 < 0x41 (signed) -> B1.
  The `bltz` at 0xd89cd30 is taken when v1(=[([0x1014] + (a0 << 0x2))+4]) < 0 (signed) -> B4 and falls through when v1(=[([0x1014] + (a0 << 0x2))+4]) >= 0 (signed) -> B2.
  The `bltz` at 0xd89cd84 is taken when v0(=ret(open)) < 0 (signed) -> B10 and falls through when v0(=ret(open)) >= 0 (signed) -> B5.
  The `bltz` at 0xd89cda0 is taken when v0(=ret(fcntl)) < 0 (signed) -> B11 and falls through when v0(=ret(fcntl)) >= 0 (signed) -> B6.
  The `bltz` at 0xd89cdb0 is taken when a3(=[[0x1014]+260]) < 0 (signed) -> B12 and falls through when a3(=[[0x1014]+260]) >= 0 (signed) -> B7.
  The `beq` at 0xd89cdb8 is taken when a2(?) == 0 -> B9 and falls through when a2(?) != 0 -> B8.
  The `blez` at 0xd89ce44 is taken when v0(=ret(ioctl)) <= 0 (signed) -> B14 and falls through when v0(=ret(ioctl)) > 0 (signed) -> B13.
  The routine returns v0 = ? (`jr` at 0xd89cd40).

- `glXSelectEventSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8b2728, 304 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8b279c).
  Stores 2 bytes to [a0+108] +0x2 through base a0 (`sh` at 0xd8b27a4).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8b27ac).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8b27c0).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8b27cc).
  Stores 4 bytes to [a0+108] +0x10 through base a0 (`sw` at 0xd8b27d8).
  Stores 4 bytes to [a0+108] +0x4 through base a0 (`sw` at 0xd8b27e0).
  Stores 1 bytes to [a0+108] +0x1 through base a0 (`sb` at 0xd8b27e4).
  Stores 4 bytes to [a0+108] +0xc through base a0 (`sw` at 0xd8b27e8).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8b27ec).
  Stores 4 bytes to [a0+108] +0x14 through base a0 (`sw` at 0xd8b27f4).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8b2750).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232] (`jalr` at 0xd8b277c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x801f, a4=[a0+1232] (`jalr` at 0xd8b2808).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b281c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b2838).
  The `beq` at 0xd8b2764 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B10 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0xd8b2770 is taken when a4(=[a0+1232]) == 0 -> B3 and falls through when a4(=[a0+1232]) != 0 -> B2.
  The `bne` at 0xd8b2794 is taken when at(=[a0+112]) < v0(=[a0+108]+24) (unsigned) -> B9 and falls through when at(=[a0+112]) >= v0(=[a0+108]+24) (unsigned) -> B4.
  The `beq` at 0xd8b27fc is taken when a4(=[a0+1232]) == 0 -> B6 and falls through when a4(=[a0+1232]) != 0 -> B5.
  The `beq` at 0xd8b2814 is taken when t9(=[a0+124]) == 0 -> B8 and falls through when t9(=[a0+124]) != 0 -> B7.
  The routine returns v0 = ? (`jr` at 0xd8b2830).
  The routine returns v0 = ret(__glXSetupForCommand) (`jr` at 0xd8b2850).

- `__glXGetDrawableAttributes` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8b29c8, 1068 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s1 (`sw` at 0xd8b2a4c).
  Stores 2 bytes to [a0+108] +0x2 through base v0 (`sh` at 0xd8b2a54).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8b2a5c).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s1 (`sw` at 0xd8b2a70).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s1 (`sw` at 0xd8b2a78).
  Stores 4 bytes to [a0+108] +0xc through base v0 (`sw` at 0xd8b2a84).
  Stores 4 bytes to [a0+108] +0x4 through base v0 (`sw` at 0xd8b2a90).
  Stores 1 bytes to [a0+108] +0x1 through base v0 (`sb` at 0xd8b2a9c).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8b2aa8).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s1 (`sw` at 0xd8b2b58).
  Stores 2 bytes to [a0+108] +0x2 through base v0 (`sh` at 0xd8b2b60).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8b2b68).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s1 (`sw` at 0xd8b2b7c).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s1 (`sw` at 0xd8b2b84).
  Stores 4 bytes to [a0+108] +0x4 through base v0 (`sw` at 0xd8b2b8c).
  Stores 1 bytes to [a0+108] +0x1 through base v0 (`sb` at 0xd8b2b98).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8b2ba4).
  Stores 1 bytes to a2 (arg2 at entry) +0x15 through base s0 (`sb` at 0xd8b2c5c).
  Stores 4 bytes to a2 (arg2 at entry) +0x4 through base s0 (`sw` at 0xd8b2cac).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s0 (`sw` at 0xd8b2cb4).
  Stores 1 bytes to a2 (arg2 at entry) +0x14 through base s0 (`sb` at 0xd8b2cbc).
  Stores 4 bytes to a2 (arg2 at entry) +0x8 through base s0 (`sw` at 0xd8b2cc4).
  Stores 4 bytes to a2 (arg2 at entry) +0xc through base s0 (`sw` at 0xd8b2ccc).
  Stores 4 bytes to a2 (arg2 at entry) +0x10 through base s0 (`sw` at 0xd8b2cd4).
  Stores 4 bytes to a2 (arg2 at entry) +0x18 through base s0 (`sw` at 0xd8b2cdc).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8b29f8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=a3 at entry (arg3) (`jalr` at 0xd8b2a28).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-192, a2=0x0, a3=0x0, a5=0x11, a6=0x1000a, a7=a1 at entry (arg1) (`jalr` at 0xd8b2aa4).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8b2ac8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b2af0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b2b04).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=a3 at entry (arg3) (`jalr` at 0xd8b2b34).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-160, a2=0x0, a3=0x0, a6=0x1d, a7=a1 at entry (arg1) (`jalr` at 0xd8b2ba0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b2bd0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b2be4).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b2c0c).
  Calls `_XRead` via got with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=? (`jalr` at 0xd8b2c28).
  Calls `memset` via got with a0=a2 at entry (arg2), a1=0x0, a2=0x1c, a3=? (`jalr` at 0xd8b2c3c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b2cf0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b2d04).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8b2d10).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b2d44).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b2d58).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+108]+8 (`jalr` at 0xd8b2d9c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b2dbc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b2dd0).
  The `beq` at 0xd8b2a0c is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B47 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0xd8b2a14 is taken when a5(=a3) == 0 -> B13 and falls through when a5(=a3) != 0 -> B2.
  The `beq` at 0xd8b2a1c is taken when v0(=[a0+1232]) == 0 -> B4 and falls through when v0(=[a0+1232]) != 0 -> B3.
  The `bne` at 0xd8b2a40 is taken when at(=[a0+112]) < v1(=[a0+108]+16) (unsigned) -> B23 and falls through when at(=[a0+112]) >= v1(=[a0+108]+16) (unsigned) -> B5.
  The `beq` at 0xd8b2aac is taken when v0(=ret(_XReply)) == 0 -> B42 and falls through when v0(=ret(_XReply)) != 0 -> B6.
  The `beq` at 0xd8b2abc is taken when s2(?) == 0 -> B18 and falls through when s2(?) != 0 -> B7.
  The `bne` at 0xd8b2ad8 is taken when v0(=ret(malloc)) != 0 -> B24 and falls through when v0(=ret(malloc)) == 0 -> B8.
  The `beq` at 0xd8b2ae4 is taken when v0(=[a0+1232]) == 0 -> B10 and falls through when v0(=[a0+1232]) != 0 -> B9.
  The `beq` at 0xd8b2afc is taken when t9(=[a0+124]) == 0 -> B12 and falls through when t9(=[a0+124]) != 0 -> B11.
  The `beq` at 0xd8b2b28 is taken when v0(=[a0+1232]) == 0 -> B15 and falls through when v0(=[a0+1232]) != 0 -> B14.
  The `bne` at 0xd8b2b4c is taken when v1(=[a0+112]) < a4(=[a0+108]+8) (unsigned) -> B48 and falls through when v1(=[a0+112]) >= a4(=[a0+108]+8) (unsigned) -> B16.
  The `beq` at 0xd8b2ba8 is taken when v0(=ret(_XReply)) == 0 -> B49 and falls through when v0(=ret(_XReply)) != 0 -> B17.
  The `bne` at 0xd8b2bb8 is taken when s2(?) != 0 -> B7 and falls through when s2(?) == 0 -> B18.
  The `beq` at 0xd8b2bc4 is taken when v0(=[a0+1232]) == 0 -> B20 and falls through when v0(=[a0+1232]) != 0 -> B19.
  The `beq` at 0xd8b2bdc is taken when t9(=[a0+124]) == 0 -> B22 and falls through when t9(=[a0+124]) != 0 -> B21.
  The `blez` at 0xd8b2c48 is taken when s2(?) <= 0 (signed) -> B37 and falls through when s2(?) > 0 (signed) -> B25.
  The `beq` at 0xd8b2c68 is taken when s2(?) == a2(?) -> B37 and falls through when s2(?) != a2(?) -> B28.
  The `beq` at 0xd8b2c94 is taken when a1(=table(-0x800c)) >= 0x1a (unsigned) -> B27 and falls through when a1(=table(-0x800c)) < 0x1a (unsigned) -> B29.
  The `beq` at 0xd8b2ce4 is taken when v0(=[a0+1232]) == 0 -> B39 and falls through when v0(=[a0+1232]) != 0 -> B38.
  The `beq` at 0xd8b2cfc is taken when t9(=[a0+124]) == 0 -> B41 and falls through when t9(=[a0+124]) != 0 -> B40.
  The `beq` at 0xd8b2d38 is taken when v0(=[a0+1232]) == 0 -> B44 and falls through when v0(=[a0+1232]) != 0 -> B43.
  The `beq` at 0xd8b2d50 is taken when t9(=[a0+124]) == 0 -> B46 and falls through when t9(=[a0+124]) != 0 -> B45.
  The `beq` at 0xd8b2db0 is taken when v0(=[a0+1232]) == 0 -> B51 and falls through when v0(=[a0+1232]) != 0 -> B50.
  The `beq` at 0xd8b2dc8 is taken when t9(=[a0+124]) == 0 -> B53 and falls through when t9(=[a0+124]) != 0 -> B52.
  The routine returns v0 = 0x0 (`jr` at 0xd8b2b20).
  The routine returns v0 = 0x0 (`jr` at 0xd8b2c00).
  The routine returns v0 = 0x1 (`jr` at 0xd8b2d2c).
  The routine returns v0 = 0x0 (`jr` at 0xd8b2d74).
  The routine returns v0 = 0x0 (`jr` at 0xd8b2d90).
  The routine returns v0 = 0x0 (`jr` at 0xd8b2dec).

- `glXDestroyGLXPbufferSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8b2df4, 352 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8b2e9c).
  Stores 2 bytes to [a0+108] +0x2 through base a0 (`sh` at 0xd8b2ea4).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8b2eac).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8b2ec0).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8b2ec8).
  Stores 4 bytes to [a0+108] +0xc through base a0 (`sw` at 0xd8b2ed0).
  Stores 4 bytes to [a0+108] +0x4 through base a0 (`sw` at 0xd8b2ed8).
  Stores 1 bytes to [a0+108] +0x1 through base a0 (`sb` at 0xd8b2edc).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8b2ee0).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8b2e1c).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xd8b2e40).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xd8b2e50).
  Calls `__glXFreeDrawablePrivate` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=[ret(__glXAddDrawableInterest)+20] (`jalr` at 0xd8b2e64).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b2e7c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=0x10008, a3=0x10 (`jalr` at 0xd8b2ef4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b2f08).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b2f3c).
  The `beq` at 0xd8b2e30 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B10 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0xd8b2e5c is taken when a3(=[ret(__glXAddDrawableInterest)+20]) == 0 -> B12 and falls through when a3(=[ret(__glXAddDrawableInterest)+20]) != 0 -> B2.
  The `beq` at 0xd8b2e70 is taken when v0(=[a0+1232]) == 0 -> B4 and falls through when v0(=[a0+1232]) != 0 -> B3.
  The `bne` at 0xd8b2e94 is taken when at(=[a0+112]) < v1(=[a0+108]+16) (unsigned) -> B11 and falls through when at(=[a0+112]) >= v1(=[a0+108]+16) (unsigned) -> B5.
  The `beq` at 0xd8b2ee8 is taken when v0(=[a0+1232]) == 0 -> B7 and falls through when v0(=[a0+1232]) != 0 -> B6.
  The `beq` at 0xd8b2f00 is taken when t9(=[a0+124]) == 0 -> B9 and falls through when t9(=[a0+124]) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xd8b2f20).
  The routine returns v0 = ret(__glXSetupForCommand) (`jr` at 0xd8b2f34).

- `glXCreateGLXPbufferSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8b36f4, 948 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s1 (`sw` at 0xd8b382c).
  Stores 2 bytes to [a0+108] +0x2 through base a1 (`sh` at 0xd8b3838).
  Stores 1 bytes to [a0+108] +0x0 through base a1 (`sb` at 0xd8b3840).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s1 (`sw` at 0xd8b3854).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s1 (`sw` at 0xd8b3860).
  Stores 1 bytes to [a0+108] +0x1 through base a1 (`sb` at 0xd8b3868).
  Stores 1 bytes to [a0+108] +0x0 through base a1 (`sb` at 0xd8b3870).
  Stores 4 bytes to [a0+108] +0x4 through base a1 (`sw` at 0xd8b3880).
  Stores 4 bytes to [a0+108] +0xc through base a1 (`sw` at 0xd8b388c).
  Stores 4 bytes to [a0+108] +0x1c through base a1 (`sw` at 0xd8b3898).
  Stores 4 bytes to [a0+108] +0x18 through base a1 (`sw` at 0xd8b38a0).
  Stores 4 bytes to [a0+108] +0x14 through base a1 (`sw` at 0xd8b38ac).
  Stores 4 bytes to [a0+108] +0x10 through base a1 (`sw` at 0xd8b38b8).
  Stores 4 bytes to [a0+108] +0x20 through base a0 (`sw` at 0xd8b38d8).
  Stores 4 bytes to [a0+108] +0x24 through base a0 (`sw` at 0xd8b38ec).
  Stores 4 bytes to ? (base unknown) through base a1 (`sw` at 0xd8b3918).
  Stores 4 bytes to ? (base unknown) through base a1 (`sw` at 0xd8b3920).
  Stores 4 bytes to ? (base unknown) through base a1 (`sw` at 0xd8b3928).
  Stores 4 bytes to ? (base unknown) through base a1 (`sw` at 0xd8b3940).
  Stores 4 bytes to ? (base unknown) through base a7 (`sw` at 0xd8b3a4c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8b3730).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b374c).
  Calls `__glXAddDrawableInterest` via got with a0=ret(?), a1=?, a2=?, a3=?, a6=ret(?) (`jalr` at 0xd8b3760).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232] (`jalr` at 0xd8b3800).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-176, a2=0x0, a3=0x0 (`jalr` at 0xd8b3954).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232] (`jalr` at 0xd8b3970).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b3984).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8b3990).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=[a0+108], a2=?, a3=? (`jalr` at 0xd8b39dc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232] (`jalr` at 0xd8b39fc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b3a10).
  Calls `__glXPostHiddenError` via got with a0=a0 at entry (arg0), a1=sp-176, a2=0x11, a3=0x0 (`jalr` at 0xd8b3a28).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8b3a34).
  Calls `__glXFreeDrawablePrivate` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8b3a48).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x10, a3=0x0 (`jalr` at 0xd8b3a80).
  The `beq` at 0xd8b3740 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B26 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0xd8b376c is taken when v0(=ret(__glXAddDrawableInterest)) == 0 -> B33 and falls through when v0(=ret(__glXAddDrawableInterest)) != 0 -> B2.
  The `beq` at 0xd8b3778 is taken when s2(=a4) == 0 -> B10 and falls through when s2(=a4) != 0 -> B3.
  The `beq` at 0xd8b3784 is taken when a5(=[a4]) == 0 -> B10 and falls through when a5(=[a4]) != 0 -> B4.
  The `beq` at 0xd8b3794 is taken when a6(?) == 0 -> B10 and falls through when a6(?) != 0 -> B5.
  The `beq` at 0xd8b37a4 is taken when at(?) == 0 -> B10 and falls through when at(?) != 0 -> B6.
  The `beq` at 0xd8b37b4 is taken when v1(?) == 0 -> B10 and falls through when v1(?) != 0 -> B7.
  The `beq` at 0xd8b37c4 is taken when a5(?) == 0 -> B10 and falls through when a5(?) != 0 -> B8.
  The `beq` at 0xd8b37d4 is taken when a6(?) == 0 -> B10 and falls through when a6(?) != 0 -> B9.
  The `bne` at 0xd8b37e8 is taken when at(?) != 0 -> B4 and falls through when at(?) == 0 -> B10.
  The `beq` at 0xd8b37f4 is taken when a4(=[a0+1232]) == 0 -> B12 and falls through when a4(=[a0+1232]) != 0 -> B11.
  The `bne` at 0xd8b3824 is taken when v1(=[a0+112]) < a5(?) (unsigned) -> B27 and falls through when v1(=[a0+112]) >= a5(?) (unsigned) -> B13.
  The `beq` at 0xd8b38b4 is taken when s2(=a4) == 0 -> B20 and falls through when s2(=a4) != 0 -> B14.
  The `bne` at 0xd8b38bc is taken when a6(?) != 0 -> B20 and falls through when a6(?) == 0 -> B15.
  The `beq` at 0xd8b38cc is taken when (v0(?) & 0x1) == 0 -> B17 and falls through when (v0(?) & 0x1) != 0 -> B16.
  The `beq` at 0xd8b38f8 is taken when a6(?) == 0 -> B20 and falls through when a6(?) != 0 -> B18.
  The `bne` at 0xd8b393c is taken when v0(?) != a2(=-0x1) -> B19 and falls through when v0(?) == a2(=-0x1) -> B20.
  The `beq` at 0xd8b395c is taken when v0(=ret(_XReply)) == 0 -> B28 and falls through when v0(=ret(_XReply)) != 0 -> B21.
  The `beq` at 0xd8b3964 is taken when a4(=[a0+1232]) == 0 -> B23 and falls through when a4(=[a0+1232]) != 0 -> B22.
  The `beq` at 0xd8b397c is taken when t9(=[a0+124]) == 0 -> B25 and falls through when t9(=[a0+124]) != 0 -> B24.
  The `beq` at 0xd8b39f0 is taken when a4(=[a0+1232]) == 0 -> B30 and falls through when a4(=[a0+1232]) != 0 -> B29.
  The `beq` at 0xd8b3a08 is taken when t9(=[a0+124]) == 0 -> B32 and falls through when t9(=[a0+124]) != 0 -> B31.
  The routine returns v0 = ? (`jr` at 0xd8b39b0).
  The routine returns v0 = 0x0 (`jr` at 0xd8b39d0).
  The routine returns v0 = 0x0 (`jr` at 0xd8b3a68).
  The routine returns v0 = 0x0 (`jr` at 0xd8b3aa0).

- `glXGetVideoSyncSGI` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8b3aa8, 140 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x0 through base ra (`sw` at 0xd8b3b10).
  Calls `ioctl` via got with a0=[(([[0x1014]+264] << 0x2) + [0x1014])+4], a1=0x3fe, a2=sp-48, a3=a3 at entry (arg3), a4=[[0x1014]+276] (`jalr` at 0xd8b3b00).
  The `beq` at 0xd8b3ac4 is taken when a4(=[[0x1014]+276]) == 0 -> B3 and falls through when a4(=[[0x1014]+276]) != 0 -> B1.
  The `beq` at 0xd8b3ad0 is taken when at(=[[[0x1014]+276]+196]) == 0 -> B3 and falls through when at(=[[[0x1014]+276]+196]) != 0 -> B2.
  The routine returns v0 = 0x0 (`jr` at 0xd8b3b20).
  The routine returns v0 = 0x5 (`jr` at 0xd8b3b2c).

- `glXWaitVideoSyncSGI` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8b3b34, 200 bytes) Inferred.
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base a4 (`sw` at 0xd8b3bf8).
  Calls `ioctl` via got with a0=[(([[0x1014]+264] << 0x2) + [0x1014])+4], a1=0x3ff, a2=sp-80, a3=a3 at entry (arg3), a4=a0 at entry (arg0), a5=a1 at entry (arg1), a6=[[0x1014]+276] (`jalr` at 0xd8b3bd4).
  The `beq` at 0xd8b3b58 is taken when a6(=[[0x1014]+276]) == 0 -> B6 and falls through when a6(=[[0x1014]+276]) != 0 -> B1.
  The `beq` at 0xd8b3b64 is taken when at(=[[[0x1014]+276]+196]) == 0 -> B6 and falls through when at(=[[[0x1014]+276]+196]) != 0 -> B2.
  The `blez` at 0xd8b3b6c is taken when a4(=a0) <= 0 (signed) -> B5 and falls through when a4(=a0) > 0 (signed) -> B3.
  The `bltz` at 0xd8b3b74 is taken when a5(=a1) < 0 (signed) -> B5 and falls through when a5(=a1) >= 0 (signed) -> B4.
  The `bne` at 0xd8b3b7c is taken when v0(?) != 0 -> B7 and falls through when v0(?) == 0 -> B5.
  The routine returns v0 = 0x6 (`jr` at 0xd8b3b8c).
  The routine returns v0 = 0x5 (`jr` at 0xd8b3b9c).
  The routine returns v0 = 0x0 (`jr` at 0xd8b3bf4).

- `glXDestroyGLXVideoSourceSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8b3bfc, 340 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8b3c98).
  Stores 2 bytes to [a0+108] +0x2 through base a0 (`sh` at 0xd8b3ca0).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8b3ca8).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8b3cbc).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8b3cc4).
  Stores 4 bytes to [a0+108] +0xc through base a0 (`sw` at 0xd8b3cc8).
  Stores 4 bytes to [a0+108] +0x8 through base a0 (`sw` at 0xd8b3cd0).
  Stores 4 bytes to [a0+108] +0x4 through base a0 (`sw` at 0xd8b3cd8).
  Stores 1 bytes to [a0+108] +0x0 through base a0 (`sb` at 0xd8b3cdc).
  Stores 1 bytes to [a0+108] +0x1 through base a0 (`sb` at 0xd8b3ce0).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8b3c24).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xd8b3c44).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xd8b3c54).
  Calls `__glXFreeDrawablePrivate` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8b3c60).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b3c78).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+96]+1, a3=[a0+108]+16 (`jalr` at 0xd8b3cf4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b3d08).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+108]+16 (`jalr` at 0xd8b3d40).
  The `beq` at 0xd8b3c30 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B10 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0xd8b3c38 is taken when s1(=a1) == 0 -> B10 and falls through when s1(=a1) != 0 -> B2.
  The `beq` at 0xd8b3c6c is taken when v0(=[a0+1232]) == 0 -> B4 and falls through when v0(=[a0+1232]) != 0 -> B3.
  The `bne` at 0xd8b3c90 is taken when a2(=[a0+112]) < a3(=[a0+108]+16) (unsigned) -> B11 and falls through when a2(=[a0+112]) >= a3(=[a0+108]+16) (unsigned) -> B5.
  The `beq` at 0xd8b3ce8 is taken when v0(=[a0+1232]) == 0 -> B7 and falls through when v0(=[a0+1232]) != 0 -> B6.
  The `beq` at 0xd8b3d00 is taken when t9(=[a0+124]) == 0 -> B9 and falls through when t9(=[a0+124]) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xd8b3d20).
  The routine returns v0 = ret(__glXSetupForCommand) (`jr` at 0xd8b3d38).

- `glXCreateGLXVideoSourceSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8b3e14, 940 bytes) Inferred.
  Stores 4 bytes to ? (base unknown) through base t0 (`sw` at 0xd8b3f7c).
  Stores 4 bytes to ? (base unknown) through base t0 (`sw` at 0xd8b3f94).
  Stores 4 bytes to ? (base unknown) through base t3 (`sw` at 0xd8b3fc0).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xd8b3fd4).
  Stores 4 bytes to ? (base unknown) through base a6 (`sw` at 0xd8b3fec).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base a2 (`sw` at 0xd8b4024).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8b402c).
  Stores 2 bytes to [a0+108] +0x2 through base v0 (`sh` at 0xd8b4034).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base a2 (`sw` at 0xd8b4048).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base a2 (`sw` at 0xd8b4054).
  Stores 4 bytes to [a0+108] +0x14 through base v0 (`sw` at 0xd8b4058).
  Stores 4 bytes to [a0+108] +0xc through base v0 (`sw` at 0xd8b405c).
  Stores 4 bytes to [a0+108] +0x8 through base v0 (`sw` at 0xd8b4060).
  Stores 1 bytes to [a0+108] +0x1 through base v0 (`sb` at 0xd8b4064).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8b4068).
  Stores 4 bytes to [a0+108] +0x10 through base v0 (`sw` at 0xd8b4074).
  Stores 4 bytes to [a0+108] +0x4 through base v0 (`sw` at 0xd8b407c).
  Stores 4 bytes to [a0+108] +0x18 through base v0 (`sw` at 0xd8b4088).
  Stores 4 bytes to [a0+108] +0x1c through base v0 (`sw` at 0xd8b4090).
  Stores 4 bytes to [a0+108] +0x20 through base v0 (`sw` at 0xd8b4098).
  Stores 4 bytes to [a0+108] +0x24 through base v0 (`sw` at 0xd8b40a0).
  Stores 4 bytes to [a0+108] +0x28 through base v0 (`sw` at 0xd8b40a8).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8b3e48).
  Calls `__glXInitializeVideoLibrary` via got with a0=?, a1=?, a2=?, a3=?, a7=0x2 (`jalr` at 0xd8b3e94).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b3eac).
  Calls `__glXAddDrawableInterest` via got with a0=ret(?), a1=?, a2=?, a3=? (`jalr` at 0xd8b3ec0).
  Calls `__glXCreateVideoSourcePrivate` via got with a0=ret(__glXAddDrawableInterest)+44, a1=0x1, a2=0x3, a3=? (`jalr` at 0xd8b3f30).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x4, a4=sp-240, a6=ret(__glXCreateVideoSourcePrivate) (`jalr` at 0xd8b3f5c).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x6, a4=sp-240 (`jalr` at 0xd8b3f90).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x7, a4=sp-240 (`jalr` at 0xd8b3fbc).
  Calls `(unnamed) [0xd8b3d50]` via direct with a0=?, a1=?, a2=?, a3=? (`bgezall` at 0xd8b3fdc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?, a7=a0 at entry (arg0) (`jalr` at 0xd8b4000).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=? (`jalr` at 0xd8b40bc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8b40d4).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8b40e0).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=?, a6=ret(__glXCreateVideoSourcePrivate) (`jalr` at 0xd8b411c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=a0 at entry (arg0), a3=? (`jalr` at 0xd8b4140).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=a5 at entry (arg5), a3=? (`jalr` at 0xd8b4158).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=a5 at entry (arg5), a3=? (`jalr` at 0xd8b417c).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8b41a0).
  The `beq` at 0xd8b3e68 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B8 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0xd8b3e70 is taken when s0(=a4) == a7(=0x2) -> B5 and falls through when s0(=a4) != a7(=0x2) -> B2.
  The `beq` at 0xd8b3e78 is taken when s0(=a4) == at(=0x5) -> B5 and falls through when s0(=a4) != at(=0x5) -> B3.
  The `beq` at 0xd8b3e9c is taken when v0(=ret(__glXInitializeVideoLibrary)) == 0 -> B21 and falls through when v0(=ret(__glXInitializeVideoLibrary)) != 0 -> B6.
  The `bne` at 0xd8b3ecc is taken when v0(=ret(__glXAddDrawableInterest)) != 0 -> B9 and falls through when v0(=ret(__glXAddDrawableInterest)) == 0 -> B7.
  The `beq` at 0xd8b3f3c is taken when v0(=ret(__glXCreateVideoSourcePrivate)) == 0 -> B22 and falls through when v0(=ret(__glXCreateVideoSourcePrivate)) != 0 -> B10.
  The `bltz` at 0xd8b3f64 is taken when v0(=ret(?)) < 0 (signed) -> B24 and falls through when v0(=ret(?)) >= 0 (signed) -> B11.
  The `bltz` at 0xd8b3f98 is taken when v0(=ret(?)) < 0 (signed) -> B25 and falls through when v0(=ret(?)) >= 0 (signed) -> B12.
  The `bltz` at 0xd8b3fc4 is taken when v0(=ret(?)) < 0 (signed) -> B26 and falls through when v0(=ret(?)) >= 0 (signed) -> B13.
  The `beq` at 0xd8b3ff4 is taken when a2(=[a0+1232]) == 0 -> B15 and falls through when a2(=[a0+1232]) != 0 -> B14.
  The `bne` at 0xd8b401c is taken when a7(=[a0+112]) < at(=[a0+108]+44) (unsigned) -> B23 and falls through when a7(=[a0+112]) >= at(=[a0+108]+44) (unsigned) -> B16.
  The `beq` at 0xd8b40b0 is taken when a2(=[a0+1232]) == 0 -> B18 and falls through when a2(=[a0+1232]) != 0 -> B17.
  The `beq` at 0xd8b40cc is taken when t9(=[a0+124]) == 0 -> B20 and falls through when t9(=[a0+124]) != 0 -> B19.
  The routine returns v0 = 0x0 (`jr` at 0xd8b3e88).
  The routine returns v0 = 0x0 (`jr` at 0xd8b3ee4).
  The routine returns v0 = 0x0 (`jr` at 0xd8b3efc).
  The routine returns v0 = ? (`jr` at 0xd8b40f8).
  The routine returns v0 = 0x0 (`jr` at 0xd8b4110).
  The routine returns v0 = 0x0 (`jr` at 0xd8b4134).
  The routine returns v0 = 0x0 (`jr` at 0xd8b4170).
  The routine returns v0 = 0x0 (`jr` at 0xd8b4194).
  The routine returns v0 = 0x0 (`jr` at 0xd8b41b8).

- `glXSwapIntervalSGI` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8b42f8, 468 bytes) Inferred.
  Stores 4 bytes to [[[0x1014]+276]+216] +0x64 through base s0 (`sw` at 0xd8b43f8).
  Stores 1 bytes to [[[[0x1014]+276]+216]+108] +0x0 through base a2 (`sb` at 0xd8b4400).
  Stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2 through base a2 (`sh` at 0xd8b4408).
  Stores 4 bytes to [[[0x1014]+276]+216] +0x60 through base s0 (`sw` at 0xd8b441c).
  Stores 4 bytes to [[[0x1014]+276]+216] +0x6c through base s0 (`sw` at 0xd8b4424).
  Stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc through base a2 (`sw` at 0xd8b4428).
  Stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8 through base a2 (`sw` at 0xd8b442c).
  Stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4 through base a2 (`sw` at 0xd8b4434).
  Stores 1 bytes to [[[[0x1014]+276]+216]+108] +0x0 through base a2 (`sb` at 0xd8b4438).
  Stores 1 bytes to [[[[0x1014]+276]+216]+108] +0x1 through base a2 (`sb` at 0xd8b443c).
  Calls `ioctl` via got with a0=[(([[0x1014]+264] << 0x2) + [0x1014])+4], a1=0x3ee, a2=sp-80, a3=a3 at entry (arg3), a4=[[0x1014]+276] (`jalr` at 0xd8b4364).
  Calls `__glXSetupForCommand` via got with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=[[[0x1014]+276]+60], a3=a3 at entry (arg3), a4=[[0x1014]+276] (`jalr` at 0xd8b43b8).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232] (`jalr` at 0xd8b43d4).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=0x10000, a2=[[[[0x1014]+276]+216]+108], a3=[[[[0x1014]+276]+216]+1232] (`jalr` at 0xd8b4450).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8b4464).
  Calls `XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8b4470).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=[[[[0x1014]+276]+216]+108], a3=? (`jalr` at 0xd8b44a8).
  The `beq` at 0xd8b431c is taken when a4(=[[0x1014]+276]) == 0 -> B14 and falls through when a4(=[[0x1014]+276]) != 0 -> B1.
  The `blez` at 0xd8b4324 is taken when s1(=a0) <= 0 (signed) -> B16 and falls through when s1(=a0) > 0 (signed) -> B2.
  The `beq` at 0xd8b4330 is taken when at(=[[[0x1014]+276]+196]) == 0 -> B4 and falls through when at(=[[[0x1014]+276]+196]) != 0 -> B3.
  The `bne` at 0xd8b438c is taken when s0(=[[[0x1014]+276]+216]) != 0 -> B6 and falls through when s0(=[[[0x1014]+276]+216]) == 0 -> B5.
  The `beq` at 0xd8b43c4 is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0 -> B8 and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0 -> B7.
  The `bne` at 0xd8b43f0 is taken when at(=[[[[0x1014]+276]+216]+112]) < v0(=[[[[0x1014]+276]+216]+108]+16) (unsigned) -> B15 and falls through when at(=[[[[0x1014]+276]+216]+112]) >= v0(=[[[[0x1014]+276]+216]+108]+16) (unsigned) -> B9.
  The `beq` at 0xd8b4444 is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0 -> B11 and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0 -> B10.
  The `beq` at 0xd8b445c is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0 -> B13 and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0 -> B12.
  The routine returns v0 = 0x0 (`jr` at 0xd8b437c).
  The routine returns v0 = 0x5 (`jr` at 0xd8b43a0).
  The routine returns v0 = 0x0 (`jr` at 0xd8b448c).
  The routine returns v0 = 0x5 (`jr` at 0xd8b449c).
  The routine returns v0 = 0x6 (`jr` at 0xd8b44c4).

- `glXCreateGLXPixmapWithConfigSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8c7bb8, 340 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8c7c30).
  Stores 2 bytes to [a0+108] +0x2 through base v0 (`sh` at 0xd8c7c38).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8c7c40).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8c7c54).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8c7c60).
  Stores 4 bytes to [a0+108] +0x4 through base v0 (`sw` at 0xd8c7c68).
  Stores 1 bytes to [a0+108] +0x1 through base v0 (`sb` at 0xd8c7c6c).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8c7c70).
  Stores 4 bytes to [a0+108] +0xc through base v0 (`sw` at 0xd8c7c78).
  Stores 4 bytes to [a0+108] +0x14 through base v0 (`sw` at 0xd8c7c84).
  Stores 4 bytes to [a0+108] +0x10 through base v0 (`sw` at 0xd8c7c88).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xd8c7ca0).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8c7be0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232] (`jalr` at 0xd8c7c10).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a1+36], a2=0x10006, a3=0x10, a5=[a0+96]+1, a6=[a0+108]+28, a7=0x7 (`jalr` at 0xd8c7c94).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232] (`jalr` at 0xd8c7cb4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c7cc8).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8c7cec).
  The `beq` at 0xd8c7bf8 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B10 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0xd8c7c04 is taken when a5(=[a0+1232]) == 0 -> B3 and falls through when a5(=[a0+1232]) != 0 -> B2.
  The `bne` at 0xd8c7c28 is taken when a4(=[a0+112]) < at(=[a0+108]+28) (unsigned) -> B9 and falls through when a4(=[a0+112]) >= at(=[a0+108]+28) (unsigned) -> B4.
  The `beq` at 0xd8c7ca8 is taken when a5(=[a0+1232]) == 0 -> B6 and falls through when a5(=[a0+1232]) != 0 -> B5.
  The `beq` at 0xd8c7cc0 is taken when t9(=[a0+124]) == 0 -> B8 and falls through when t9(=[a0+124]) != 0 -> B7.
  The routine returns v0 = ? (`jr` at 0xd8c7ce0).
  The routine returns v0 = 0x0 (`jr` at 0xd8c7d04).

- `glXJoinSwapGroupSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8cad24, 292 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8cad98).
  Stores 1 bytes to [a0+108] +0x0 through base a2 (`sb` at 0xd8cada0).
  Stores 2 bytes to [a0+108] +0x2 through base a2 (`sh` at 0xd8cada8).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8cadbc).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8cadc4).
  Stores 4 bytes to [a0+108] +0xc through base a2 (`sw` at 0xd8cadcc).
  Stores 4 bytes to [a0+108] +0x4 through base a2 (`sw` at 0xd8cadd4).
  Stores 1 bytes to [a0+108] +0x1 through base a2 (`sb` at 0xd8cadd8).
  Stores 1 bytes to [a0+108] +0x0 through base a2 (`sb` at 0xd8caddc).
  Stores 4 bytes to [a0+108] +0x10 through base a2 (`sw` at 0xd8cade0).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8cad50).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8cad70).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=[a0+108], a3=0x1000b (`jalr` at 0xd8cadf8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cae10).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=[a0+108], a3=? (`jalr` at 0xd8cae30).
  The `beq` at 0xd8cad60 is taken when a1(=[a0+1232]) == 0 -> B2 and falls through when a1(=[a0+1232]) != 0 -> B1.
  The `bne` at 0xd8cad90 is taken when v0(=[a0+112]) < v1(=[a0+108]+20) (unsigned) -> B8 and falls through when v0(=[a0+112]) >= v1(=[a0+108]+20) (unsigned) -> B3.
  The `beq` at 0xd8cade8 is taken when a1(=[a0+1232]) == 0 -> B5 and falls through when a1(=[a0+1232]) != 0 -> B4.
  The `beq` at 0xd8cae08 is taken when t9(=[a0+124]) == 0 -> B7 and falls through when t9(=[a0+124]) != 0 -> B6.
  The routine returns v0 = ? (`jr` at 0xd8cae24).

- `glXBindSwapBarrierSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8cae48, 292 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8caebc).
  Stores 1 bytes to [a0+108] +0x0 through base a2 (`sb` at 0xd8caec4).
  Stores 2 bytes to [a0+108] +0x2 through base a2 (`sh` at 0xd8caecc).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8caee0).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8caee8).
  Stores 4 bytes to [a0+108] +0xc through base a2 (`sw` at 0xd8caef0).
  Stores 4 bytes to [a0+108] +0x4 through base a2 (`sw` at 0xd8caef8).
  Stores 1 bytes to [a0+108] +0x1 through base a2 (`sb` at 0xd8caefc).
  Stores 1 bytes to [a0+108] +0x0 through base a2 (`sb` at 0xd8caf00).
  Stores 4 bytes to [a0+108] +0x10 through base a2 (`sw` at 0xd8caf04).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8cae74).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8cae94).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=[a0+108], a3=0x1000c (`jalr` at 0xd8caf1c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8caf34).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=[a0+108], a3=? (`jalr` at 0xd8caf54).
  The `beq` at 0xd8cae84 is taken when a1(=[a0+1232]) == 0 -> B2 and falls through when a1(=[a0+1232]) != 0 -> B1.
  The `bne` at 0xd8caeb4 is taken when v0(=[a0+112]) < v1(=[a0+108]+20) (unsigned) -> B8 and falls through when v0(=[a0+112]) >= v1(=[a0+108]+20) (unsigned) -> B3.
  The `beq` at 0xd8caf0c is taken when a1(=[a0+1232]) == 0 -> B5 and falls through when a1(=[a0+1232]) != 0 -> B4.
  The `beq` at 0xd8caf2c is taken when t9(=[a0+124]) == 0 -> B7 and falls through when t9(=[a0+124]) != 0 -> B6.
  The routine returns v0 = ? (`jr` at 0xd8caf48).

- `glXQueryMaxSwapBarriersSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8caf6c, 384 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8cafd8).
  Stores 2 bytes to [a0+108] +0x2 through base a6 (`sh` at 0xd8cafe0).
  Stores 1 bytes to [a0+108] +0x0 through base a6 (`sb` at 0xd8cafe8).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8caffc).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8cb004).
  Stores 4 bytes to [a0+108] +0xc through base a6 (`sw` at 0xd8cb010).
  Stores 4 bytes to [a0+108] +0x4 through base a6 (`sw` at 0xd8cb01c).
  Stores 1 bytes to [a0+108] +0x1 through base a6 (`sb` at 0xd8cb024).
  Stores 1 bytes to [a0+108] +0x0 through base a6 (`sb` at 0xd8cb02c).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s2 (`sw` at 0xd8cb078).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8caf98).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8cafb4).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a4=0x4, a6=[a0+108], a7=0x10 (`jalr` at 0xd8cb030).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8cb04c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cb060).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+108] (`jalr` at 0xd8cb094).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8cb0b4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cb0c8).
  The `beq` at 0xd8cafa4 is taken when a1(=[a0+1232]) == 0 -> B2 and falls through when a1(=[a0+1232]) != 0 -> B1.
  The `bne` at 0xd8cafd0 is taken when v0(=[a0+112]) < v1(=[a0+108]+16) (unsigned) -> B9 and falls through when v0(=[a0+112]) >= v1(=[a0+108]+16) (unsigned) -> B3.
  The `beq` at 0xd8cb038 is taken when v0(=ret(_XReply)) == 0 -> B10 and falls through when v0(=ret(_XReply)) != 0 -> B4.
  The `beq` at 0xd8cb040 is taken when a1(=[a0+1232]) == 0 -> B6 and falls through when a1(=[a0+1232]) != 0 -> B5.
  The `beq` at 0xd8cb058 is taken when t9(=[a0+124]) == 0 -> B8 and falls through when t9(=[a0+124]) != 0 -> B7.
  The `beq` at 0xd8cb0a8 is taken when a1(=[a0+1232]) == 0 -> B12 and falls through when a1(=[a0+1232]) != 0 -> B11.
  The `beq` at 0xd8cb0c0 is taken when t9(=[a0+124]) == 0 -> B14 and falls through when t9(=[a0+124]) != 0 -> B13.
  The routine returns v0 = 0x1 (`jr` at 0xd8cb088).
  The routine returns v0 = 0x0 (`jr` at 0xd8cb0e4).

- `glXQueryHyperpipeNetworkSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8cb918, 648 bytes) Inferred.
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base s1 (`sw` at 0xd8cb94c).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8cb980).
  Stores 2 bytes to [a0+108] +0x2 through base v0 (`sh` at 0xd8cb988).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8cb990).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8cb9a4).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8cb9b0).
  Stores 4 bytes to [a0+108] +0x4 through base v0 (`sw` at 0xd8cb9b8).
  Stores 1 bytes to [a0+108] +0x1 through base v0 (`sb` at 0xd8cb9c0).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8cb9c4).
  Stores 4 bytes to [a0+108] +0xc through base v0 (`sw` at 0xd8cb9e0).
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base s1 (`sw` at 0xd8cb9f4).
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base s1 (`sw` at 0xd8cba50).
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base s1 (`sw` at 0xd8cbadc).
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base s1 (`sw` at 0xd8cbb90).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8cb944).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=? (`jalr` at 0xd8cb960).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a4=[a0+132], a5=0x1000e, a6=0x11, a7=[a0+96]+1 (`jalr` at 0xd8cb9dc).
  Calls `_XEatData` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cba0c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=? (`jalr` at 0xd8cba24).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cba38).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8cba7c).
  Calls `_XEatData` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cba98).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=? (`jalr` at 0xd8cbab0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cbac4).
  Calls `_XRead` via got with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=? (`jalr` at 0xd8cbaf4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=? (`jalr` at 0xd8cbb0c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cbb20).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+108]+16 (`jalr` at 0xd8cbb44).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=? (`jalr` at 0xd8cbb64).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cbb78).
  The `beq` at 0xd8cb954 is taken when a2(=[a0+1232]) == 0 -> B2 and falls through when a2(=[a0+1232]) != 0 -> B1.
  The `bne` at 0xd8cb978 is taken when v1(=[a0+112]) < a3(=[a0+108]+16) (unsigned) -> B22 and falls through when v1(=[a0+112]) >= a3(=[a0+108]+16) (unsigned) -> B3.
  The `beq` at 0xd8cb9e4 is taken when v0(=ret(_XReply)) == 0 -> B23 and falls through when v0(=ret(_XReply)) != 0 -> B4.
  The `blez` at 0xd8cb9f8 is taken when a0(?) <= 0 (signed) -> outside and falls through when a0(?) > 0 (signed) -> B5.
  The `bne` at 0xd8cba00 is taken when at(?) != 0 -> B11 and falls through when at(?) == 0 -> B6.
  The `beq` at 0xd8cba18 is taken when a2(=[a0+1232]) == 0 -> B8 and falls through when a2(=[a0+1232]) != 0 -> B7.
  The `beq` at 0xd8cba30 is taken when t9(=[a0+124]) == 0 -> B10 and falls through when t9(=[a0+124]) != 0 -> B9.
  The `bne` at 0xd8cba88 is taken when v0(=ret(malloc)) != 0 -> B17 and falls through when v0(=ret(malloc)) == 0 -> B12.
  The `beq` at 0xd8cbaa4 is taken when a2(=[a0+1232]) == 0 -> B14 and falls through when a2(=[a0+1232]) != 0 -> B13.
  The `beq` at 0xd8cbabc is taken when t9(=[a0+124]) == 0 -> B16 and falls through when t9(=[a0+124]) != 0 -> B15.
  The `beq` at 0xd8cbb00 is taken when a2(=[a0+1232]) == 0 -> B19 and falls through when a2(=[a0+1232]) != 0 -> B18.
  The `beq` at 0xd8cbb18 is taken when t9(=[a0+124]) == 0 -> B21 and falls through when t9(=[a0+124]) != 0 -> B20.
  The `beq` at 0xd8cbb58 is taken when a2(=[a0+1232]) == 0 -> B25 and falls through when a2(=[a0+1232]) != 0 -> B24.
  The `beq` at 0xd8cbb70 is taken when t9(=[a0+124]) == 0 -> B27 and falls through when t9(=[a0+124]) != 0 -> B26.
  The routine returns v0 = 0x0 (`jr` at 0xd8cba58).
  The routine returns v0 = 0x0 (`jr` at 0xd8cbae4).
  The routine returns v0 = ? (`jr` at 0xd8cbb3c).
  The routine returns v0 = 0x0 (`jr` at 0xd8cbb98).

- `glXHyperpipeConfigSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8cbba0, 812 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8cbc60).
  Stores 2 bytes to [a0+108] +0x2 through base t0 (`sh` at 0xd8cbc6c).
  Stores 1 bytes to [a0+108] +0x0 through base t0 (`sb` at 0xd8cbc74).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8cbc84).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8cbc94).
  Stores 4 bytes to [a0+108] +0x4 through base t0 (`sw` at 0xd8cbc9c).
  Stores 1 bytes to [a0+108] +0x1 through base t0 (`sb` at 0xd8cbca4).
  Stores 1 bytes to [a0+108] +0x0 through base t0 (`sb` at 0xd8cbca8).
  Stores 4 bytes to [a0+108] +0x14 through base t0 (`sw` at 0xd8cbcbc).
  Stores 4 bytes to [a0+108] +0x10 through base t0 (`sw` at 0xd8cbcc8).
  Stores 4 bytes to [a0+108] +0xc through base t0 (`sw` at 0xd8cbcd4).
  Stores 1 bytes to ? (base unknown) through base a3 (`sb` at 0xd8cbcf0).
  Stores 1 bytes to ? (base unknown) through base a2 (`sb` at 0xd8cbd14).
  Stores 1 bytes to ? (base unknown) through base a2 (`sb` at 0xd8cbd1c).
  Stores 1 bytes to ? (base unknown) through base a2 (`sb` at 0xd8cbd24).
  Stores 1 bytes to ? (base unknown) through base a2 (`sb` at 0xd8cbd3c).
  Stores 4 bytes to a4 (arg4 at entry) +0x0 through base a5 (`sw` at 0xd8cbd68).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8cbbdc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8cbc1c).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-160, a2=0x0, a3=0x0 (`jalr` at 0xd8cbd50).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?, a5=a4 at entry (arg4) (`jalr` at 0xd8cbd90).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cbda4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?, a5=a4 at entry (arg4) (`jalr` at 0xd8cbe00).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cbe14).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cbe44).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8cbe68).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cbe7c).
  The `blez` at 0xd8cbbe8 is taken when s1(=a2) <= 0 (signed) -> B20 and falls through when s1(=a2) > 0 (signed) -> B1.
  The `beq` at 0xd8cbbf0 is taken when s2(=a3) == 0 -> B20 and falls through when s2(=a3) != 0 -> B2.
  The `beq` at 0xd8cbbf8 is taken when v0(?) == 0 -> B20 and falls through when v0(?) != 0 -> B3.
  The `bltz` at 0xd8cbc00 is taken when s3(=a1) < 0 (signed) -> B32 and falls through when s3(=a1) >= 0 (signed) -> B4.
  The `beq` at 0xd8cbc0c is taken when a1(=[a0+1232]) == 0 -> B6 and falls through when a1(=[a0+1232]) != 0 -> B5.
  The `bne` at 0xd8cbc58 is taken when v1(=[a0+112]) < a5(?) (unsigned) -> B26 and falls through when v1(=[a0+112]) >= a5(?) (unsigned) -> B7.
  The `beq` at 0xd8cbcd0 is taken when (s4(?) & 0x3) == 0 -> B9 and falls through when (s4(?) & 0x3) != 0 -> B8.
  The `bne` at 0xd8cbcec is taken when a6(?) != 0 -> B8 and falls through when a6(?) == 0 -> B9.
  The `beq` at 0xd8cbcfc is taken when v0(?) == 0 -> B12 and falls through when v0(?) != 0 -> B10.
  The `bne` at 0xd8cbd38 is taken when a1(?) != s4(?) -> B11 and falls through when a1(?) == s4(?) -> B12.
  The `beq` at 0xd8cbd58 is taken when v0(=ret(_XReply)) == 0 -> B27 and falls through when v0(=ret(_XReply)) != 0 -> B13.
  The `bne` at 0xd8cbd70 is taken when s1(=a2) != v1(?) -> B21 and falls through when s1(=a2) == v1(?) -> B14.
  The `bltz` at 0xd8cbd78 is taken when a0(?) < 0 (signed) -> B21 and falls through when a0(?) >= 0 (signed) -> B15.
  The `beq` at 0xd8cbd84 is taken when a1(=[a0+1232]) == 0 -> B17 and falls through when a1(=[a0+1232]) != 0 -> B16.
  The `beq` at 0xd8cbd9c is taken when t9(=[a0+124]) == 0 -> B19 and falls through when t9(=[a0+124]) != 0 -> B18.
  The `beq` at 0xd8cbdf4 is taken when a1(=[a0+1232]) == 0 -> B23 and falls through when a1(=[a0+1232]) != 0 -> B22.
  The `beq` at 0xd8cbe0c is taken when t9(=[a0+124]) == 0 -> B25 and falls through when t9(=[a0+124]) != 0 -> B24.
  The `beq` at 0xd8cbe5c is taken when a1(=[a0+1232]) == 0 -> B29 and falls through when a1(=[a0+1232]) != 0 -> B28.
  The `beq` at 0xd8cbe74 is taken when t9(=[a0+124]) == 0 -> B31 and falls through when t9(=[a0+124]) != 0 -> B30.
  The routine returns v0 = 0x0 (`jr` at 0xd8cbdc8).
  The routine returns v0 = 0x5b (`jr` at 0xd8cbde8).
  The routine returns v0 = 0x5b (`jr` at 0xd8cbe38).
  The routine returns v0 = 0x5b (`jr` at 0xd8cbea0).
  The routine returns v0 = 0x5b (`jr` at 0xd8cbec4).

- `glXDestroyHyperpipeConfigSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8cbecc, 376 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8cbf34).
  Stores 2 bytes to [a0+108] +0x2 through base v0 (`sh` at 0xd8cbf3c).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8cbf44).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8cbf54).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8cbf60).
  Stores 4 bytes to [a0+108] +0x4 through base v0 (`sw` at 0xd8cbf68).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8cbf6c).
  Stores 1 bytes to [a0+108] +0x1 through base v0 (`sb` at 0xd8cbf74).
  Stores 4 bytes to [a0+108] +0x10 through base v0 (`sw` at 0xd8cbf8c).
  Stores 4 bytes to [a0+108] +0xc through base v0 (`sw` at 0xd8cbf98).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8cbef4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8cbf10).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+132], a5=0x10011, a6=0x11, a7=[a0+96]+1 (`jalr` at 0xd8cbf94).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8cbfb0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cbfc4).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=[a0+108]+32, a3=? (`jalr` at 0xd8cbfec).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8cc00c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cc020).
  The `beq` at 0xd8cbf00 is taken when a1(=[a0+1232]) == 0 -> B2 and falls through when a1(=[a0+1232]) != 0 -> B1.
  The `bne` at 0xd8cbf2c is taken when v1(=[a0+112]) < a2(=[a0+108]+32) (unsigned) -> B9 and falls through when v1(=[a0+112]) >= a2(=[a0+108]+32) (unsigned) -> B3.
  The `beq` at 0xd8cbf9c is taken when v0(=ret(_XReply)) == 0 -> B10 and falls through when v0(=ret(_XReply)) != 0 -> B4.
  The `beq` at 0xd8cbfa4 is taken when a1(=[a0+1232]) == 0 -> B6 and falls through when a1(=[a0+1232]) != 0 -> B5.
  The `beq` at 0xd8cbfbc is taken when t9(=[a0+124]) == 0 -> B8 and falls through when t9(=[a0+124]) != 0 -> B7.
  The `beq` at 0xd8cc000 is taken when a1(=[a0+1232]) == 0 -> B12 and falls through when a1(=[a0+1232]) != 0 -> B11.
  The `beq` at 0xd8cc018 is taken when t9(=[a0+124]) == 0 -> B14 and falls through when t9(=[a0+124]) != 0 -> B13.
  The routine returns v0 = ? (`jr` at 0xd8cbfe0).
  The routine returns v0 = 0x5c (`jr` at 0xd8cc03c).

- `glXQueryHyperpipeConfigSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8cc044, 644 bytes) Inferred.
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s1 (`sw` at 0xd8cc078).
  Stores 4 bytes to a0 (arg0 at entry) +0x64 through base s0 (`sw` at 0xd8cc0b4).
  Stores 2 bytes to [a0+108] +0x2 through base v0 (`sh` at 0xd8cc0bc).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8cc0c4).
  Stores 4 bytes to a0 (arg0 at entry) +0x60 through base s0 (`sw` at 0xd8cc0d8).
  Stores 4 bytes to a0 (arg0 at entry) +0x6c through base s0 (`sw` at 0xd8cc0e0).
  Stores 1 bytes to [a0+108] +0x0 through base v0 (`sb` at 0xd8cc0e4).
  Stores 1 bytes to [a0+108] +0x1 through base v0 (`sb` at 0xd8cc0ec).
  Stores 4 bytes to [a0+108] +0x4 through base v0 (`sw` at 0xd8cc0f8).
  Stores 4 bytes to [a0+108] +0x10 through base v0 (`sw` at 0xd8cc110).
  Stores 4 bytes to [a0+108] +0xc through base v0 (`sw` at 0xd8cc11c).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s1 (`sw` at 0xd8cc134).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s1 (`sw` at 0xd8cc138).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s1 (`sw` at 0xd8cc1bc).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s1 (`sw` at 0xd8cc27c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8cc070).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=? (`jalr` at 0xd8cc090).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-128, a2=0x0, a3=0x0, a4=[a0+132], a5=a1 at entry (arg1), a6=0x1000f, a7=0x11 (`jalr` at 0xd8cc118).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=? (`jalr` at 0xd8cc14c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cc160).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8cc19c).
  Calls `_XEatData` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cc1b4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=? (`jalr` at 0xd8cc1d0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cc1e4).
  Calls `_XRead` via got with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=? (`jalr` at 0xd8cc214).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=? (`jalr` at 0xd8cc22c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cc240).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+108]+32 (`jalr` at 0xd8cc268).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=? (`jalr` at 0xd8cc290).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cc2a4).
  The `beq` at 0xd8cc080 is taken when a2(=[a0+1232]) == 0 -> B2 and falls through when a2(=[a0+1232]) != 0 -> B1.
  The `bne` at 0xd8cc0ac is taken when v1(=[a0+112]) < a3(=[a0+108]+32) (unsigned) -> B21 and falls through when v1(=[a0+112]) >= a3(=[a0+108]+32) (unsigned) -> B3.
  The `beq` at 0xd8cc120 is taken when v0(=ret(_XReply)) == 0 -> B22 and falls through when v0(=ret(_XReply)) != 0 -> B4.
  The `bgtz` at 0xd8cc130 is taken when at(?) > 0 (signed) -> B10 and falls through when at(?) <= 0 (signed) -> B5.
  The `beq` at 0xd8cc140 is taken when a2(=[a0+1232]) == 0 -> B7 and falls through when a2(=[a0+1232]) != 0 -> B6.
  The `beq` at 0xd8cc158 is taken when t9(=[a0+124]) == 0 -> B9 and falls through when t9(=[a0+124]) != 0 -> B8.
  The `bne` at 0xd8cc1a4 is taken when v0(=ret(malloc)) != 0 -> B16 and falls through when v0(=ret(malloc)) == 0 -> B11.
  The `beq` at 0xd8cc1c4 is taken when a2(=[a0+1232]) == 0 -> B13 and falls through when a2(=[a0+1232]) != 0 -> B12.
  The `beq` at 0xd8cc1dc is taken when t9(=[a0+124]) == 0 -> B15 and falls through when t9(=[a0+124]) != 0 -> B14.
  The `beq` at 0xd8cc220 is taken when a2(=[a0+1232]) == 0 -> B18 and falls through when a2(=[a0+1232]) != 0 -> B17.
  The `beq` at 0xd8cc238 is taken when t9(=[a0+124]) == 0 -> B20 and falls through when t9(=[a0+124]) != 0 -> B19.
  The `beq` at 0xd8cc284 is taken when a2(=[a0+1232]) == 0 -> B24 and falls through when a2(=[a0+1232]) != 0 -> B23.
  The `beq` at 0xd8cc29c is taken when t9(=[a0+124]) == 0 -> B26 and falls through when t9(=[a0+124]) != 0 -> B25.
  The routine returns v0 = 0x0 (`jr` at 0xd8cc17c).
  The routine returns v0 = 0x0 (`jr` at 0xd8cc200).
  The routine returns v0 = ? (`jr` at 0xd8cc25c).
  The routine returns v0 = 0x0 (`jr` at 0xd8cc2c0).

- `__glOdylc_Color3b` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda50eb0, 276 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base at (`sw` at 0xda50ec8).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda50f64).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda50f68).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda50f70).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda50f78).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda50f80).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda50f88).
  Stores 4 bytes to abs 0x1034 through base zero (`sw` at 0xda50fa0).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda50fa4).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda50fc0).
  Calls `__glSPDlistSpace [0xdadafc0]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda50f18).
  The `beq` at 0xda50efc is taken when v0(=[0x1028]) >= at(?) (signed) -> B3 and falls through when v0(=[0x1028]) < at(?) (signed) -> B1.
  The `beq` at 0xda50f38 is taken when v0(=ret(__glSPDlistSpace)) == 0 -> B4 and falls through when v0(=ret(__glSPDlistSpace)) != 0 -> B2.
  The routine returns v0 = ? (`jr` at 0xda50f9c).
  The routine returns v0 = ret(__glSPDlistSpace) (`jr` at 0xda50fbc).

- `__glOdylc_Color3s` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda51790, 276 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base at (`sw` at 0xda517a8).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda51844).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda51848).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda51850).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda51858).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda51860).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda51868).
  Stores 4 bytes to abs 0x1034 through base zero (`sw` at 0xda51880).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda51884).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda518a0).
  Calls `__glSPDlistSpace [0xdadafc0]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda517f8).
  The `beq` at 0xda517dc is taken when v0(=[0x1028]) >= at(?) (signed) -> B3 and falls through when v0(=[0x1028]) < at(?) (signed) -> B1.
  The `beq` at 0xda51818 is taken when v0(=ret(__glSPDlistSpace)) == 0 -> B4 and falls through when v0(=ret(__glSPDlistSpace)) != 0 -> B2.
  The routine returns v0 = ? (`jr` at 0xda5187c).
  The routine returns v0 = ret(__glSPDlistSpace) (`jr` at 0xda5189c).

- `__glOdylc_Color3ui` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda51bf0, 276 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base at (`sw` at 0xda51c08).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda51ca4).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda51ca8).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda51cb0).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda51cb8).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda51cc0).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda51cc8).
  Stores 4 bytes to abs 0x1034 through base zero (`sw` at 0xda51ce0).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda51ce4).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda51d00).
  Calls `__glSPDlistSpace [0xdadafc0]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda51c58).
  The `beq` at 0xda51c3c is taken when v0(=[0x1028]) >= at(?) (signed) -> B3 and falls through when v0(=[0x1028]) < at(?) (signed) -> B1.
  The `beq` at 0xda51c78 is taken when v0(=ret(__glSPDlistSpace)) == 0 -> B4 and falls through when v0(=ret(__glSPDlistSpace)) != 0 -> B2.
  The routine returns v0 = ? (`jr` at 0xda51cdc).
  The routine returns v0 = ret(__glSPDlistSpace) (`jr` at 0xda51cfc).

- `__glOdylc_Color3us` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda51e20, 276 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base at (`sw` at 0xda51e38).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda51ed4).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda51ed8).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda51ee0).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda51ee8).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda51ef0).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda51ef8).
  Stores 4 bytes to abs 0x1034 through base zero (`sw` at 0xda51f10).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda51f14).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda51f30).
  Calls `__glSPDlistSpace [0xdadafc0]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda51e88).
  The `beq` at 0xda51e6c is taken when v0(=[0x1028]) >= at(?) (signed) -> B3 and falls through when v0(=[0x1028]) < at(?) (signed) -> B1.
  The `beq` at 0xda51ea8 is taken when v0(=ret(__glSPDlistSpace)) == 0 -> B4 and falls through when v0(=ret(__glSPDlistSpace)) != 0 -> B2.
  The routine returns v0 = ? (`jr` at 0xda51f0c).
  The routine returns v0 = ret(__glSPDlistSpace) (`jr` at 0xda51f2c).

- `__glOdylc_Color4b` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda52050, 288 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base at (`sw` at 0xda52068).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda5210c).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52110).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52114).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda5211c).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52124).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda5212c).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda52134).
  Stores 4 bytes to abs 0x1034 through base zero (`sw` at 0xda5214c).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda52150).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda5216c).
  Calls `__glSPDlistSpace [0xdadafc0]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda520bc).
  The `beq` at 0xda5209c is taken when v0(=[0x1028]) >= at(?) (signed) -> B3 and falls through when v0(=[0x1028]) < at(?) (signed) -> B1.
  The `beq` at 0xda520e0 is taken when v0(=ret(__glSPDlistSpace)) == 0 -> B4 and falls through when v0(=ret(__glSPDlistSpace)) != 0 -> B2.
  The routine returns v0 = ? (`jr` at 0xda52148).
  The routine returns v0 = ret(__glSPDlistSpace) (`jr` at 0xda52168).

- `__glOdylc_Color4i` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda52750, 288 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base at (`sw` at 0xda52768).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda5280c).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52810).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52814).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda5281c).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52824).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda5282c).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda52834).
  Stores 4 bytes to abs 0x1034 through base zero (`sw` at 0xda5284c).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda52850).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda5286c).
  Calls `__glSPDlistSpace [0xdadafc0]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda527bc).
  The `beq` at 0xda5279c is taken when v0(=[0x1028]) >= at(?) (signed) -> B3 and falls through when v0(=[0x1028]) < at(?) (signed) -> B1.
  The `beq` at 0xda527e0 is taken when v0(=ret(__glSPDlistSpace)) == 0 -> B4 and falls through when v0(=ret(__glSPDlistSpace)) != 0 -> B2.
  The routine returns v0 = ? (`jr` at 0xda52848).
  The routine returns v0 = ret(__glSPDlistSpace) (`jr` at 0xda52868).

- `__glOdylc_Color4s` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda52990, 288 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base at (`sw` at 0xda529a8).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52a4c).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52a50).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52a54).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52a5c).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52a64).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda52a6c).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda52a74).
  Stores 4 bytes to abs 0x1034 through base zero (`sw` at 0xda52a8c).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda52a90).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda52aac).
  Calls `__glSPDlistSpace [0xdadafc0]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda529fc).
  The `beq` at 0xda529dc is taken when v0(=[0x1028]) >= at(?) (signed) -> B3 and falls through when v0(=[0x1028]) < at(?) (signed) -> B1.
  The `beq` at 0xda52a20 is taken when v0(=ret(__glSPDlistSpace)) == 0 -> B4 and falls through when v0(=ret(__glSPDlistSpace)) != 0 -> B2.
  The routine returns v0 = ? (`jr` at 0xda52a88).
  The routine returns v0 = ret(__glSPDlistSpace) (`jr` at 0xda52aa8).

- `__glOdylc_Color4ub` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda52bd0, 288 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base at (`sw` at 0xda52be8).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52c8c).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52c90).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52c94).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52c9c).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52ca4).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda52cac).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda52cb4).
  Stores 4 bytes to abs 0x1034 through base zero (`sw` at 0xda52ccc).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda52cd0).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda52cec).
  Calls `__glSPDlistSpace [0xdadafc0]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda52c3c).
  The `beq` at 0xda52c1c is taken when v0(=[0x1028]) >= at(?) (signed) -> B3 and falls through when v0(=[0x1028]) < at(?) (signed) -> B1.
  The `beq` at 0xda52c60 is taken when v0(=ret(__glSPDlistSpace)) == 0 -> B4 and falls through when v0(=ret(__glSPDlistSpace)) != 0 -> B2.
  The routine returns v0 = ? (`jr` at 0xda52cc8).
  The routine returns v0 = ret(__glSPDlistSpace) (`jr` at 0xda52ce8).

- `__glOdylc_Color4ui` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda52e10, 288 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base at (`sw` at 0xda52e28).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52ecc).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52ed0).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52ed4).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52edc).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda52ee4).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda52eec).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda52ef4).
  Stores 4 bytes to abs 0x1034 through base zero (`sw` at 0xda52f0c).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda52f10).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda52f2c).
  Calls `__glSPDlistSpace [0xdadafc0]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda52e7c).
  The `beq` at 0xda52e5c is taken when v0(=[0x1028]) >= at(?) (signed) -> B3 and falls through when v0(=[0x1028]) < at(?) (signed) -> B1.
  The `beq` at 0xda52ea0 is taken when v0(=ret(__glSPDlistSpace)) == 0 -> B4 and falls through when v0(=ret(__glSPDlistSpace)) != 0 -> B2.
  The routine returns v0 = ? (`jr` at 0xda52f08).
  The routine returns v0 = ret(__glSPDlistSpace) (`jr` at 0xda52f28).

- `__glOdylc_Color4us` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda53050, 288 bytes) Inferred.
  Stores 4 bytes to [0x1010] +0x13cc through base at (`sw` at 0xda53068).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda5310c).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda53110).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda53114).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda5311c).
  Stores 4 bytes to ? (base unknown) through base s1 (`sw` at 0xda53124).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda5312c).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda53134).
  Stores 4 bytes to abs 0x1034 through base zero (`sw` at 0xda5314c).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xda53150).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xda5316c).
  Calls `__glSPDlistSpace [0xdadafc0]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda530bc).
  The `beq` at 0xda5309c is taken when v0(=[0x1028]) >= at(?) (signed) -> B3 and falls through when v0(=[0x1028]) < at(?) (signed) -> B1.
  The `beq` at 0xda530e0 is taken when v0(=ret(__glSPDlistSpace)) == 0 -> B4 and falls through when v0(=ret(__glSPDlistSpace)) != 0 -> B2.
  The routine returns v0 = ? (`jr` at 0xda53148).
  The routine returns v0 = ret(__glSPDlistSpace) (`jr` at 0xda53168).

- `__glOdyim_Clear` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda54070, 1540 bytes) Inferred.
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda540d0).
  Stores 4 bytes to [0x1010] +0x7b40 through base s0 (`sw` at 0xda541b0).
  Stores 4 bytes to [0x1010] +0x7b44 through base s0 (`sw` at 0xda541b4).
  Stores 4 bytes to [0x1010] +0x9750 through base a1 (`sw` at 0xda541c4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda541cc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda541d8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda541e0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda541e4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda541f0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda541f8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54200).
  Stores 4 bytes to ? (base unknown) through base a1 (`sw` at 0xda54220).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda54228).
  Stores 4 bytes to [0x1010] +0x7b7c through base s0 (`sw` at 0xda5432c).
  Stores 4 bytes to ? (base unknown) through base t0 (`sw` at 0xda54338).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda54340).
  Stores 4 bytes to [0x1010] +0x7b1c through base s0 (`sw` at 0xda54354).
  Stores 4 bytes to ? (base unknown) through base t0 (`sw` at 0xda54364).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda54368).
  Stores 4 bytes to [0x1010] +0x7b1c through base s0 (`sw` at 0xda543d8).
  Stores 4 bytes to [0x1010] +0x7b7c through base s0 (`sw` at 0xda543dc).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda543f4).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda54408).
  Stores 4 bytes to [0x1010] +0x7b7c through base s0 (`sw` at 0xda54570).
  Stores 4 bytes to [0x1010] +0x7b7c through base s0 (`sw` at 0xda54584).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=[0x1018], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda540a8).
  Calls `(unknown callee)` via register with a0=[0x1010], a1=[0x1018], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda540c8).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x501, a1=?, a2=?, a3=? (`jalr` at 0xda540f8).
  Calls `(unknown callee)` via register with a0=[0x1010]+31192, a1=0x10000, a2=?, a3=?, a5=[[0x1010]+3196] (`jalr` at 0xda54158).
  Calls `__glOdysseyWindowToNormalizedEyeZ [0xdac7ad0]` via register-constant with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=one of 0x0, 0x1, a6=0x2 (`jalr` at 0xda54370).
  Calls `__glOdysseyClear [0xda54680]` via direct with a0=[0x1010], a1=sp-144, a2=?, a3=[[0x1010]+1668]:2, a4=0x0, a5=0x0, a6=[[0x1010]+3692], a7=[[0x1010]+3696] (`bgezall` at 0xda543c8).
  Calls `__glOdysseySetDrawbuf [0xdabd510]` via register-constant with a0=[0x1010], a1=0x0, a2=0x0, a3=one of 0x0, 0x1 (`jalr` at 0xda544b4).
  Calls `__glOdysseyClear [0xda54680]` via direct with a0=[0x1010], a1=sp-144, a2=?, a3=[[0x1010]+1668]:2, a4=0x0, a5=0x0, a6=[[0x1010]+3692], a7=[[0x1010]+3696]; fp f15=0x41fffff800000000 (`bgezall` at 0xda544fc).
  Calls `__glOdysseySetDrawbuf [0xdabd510]` via register-constant with a0=[0x1010], a1=?, a2=?, a3=0x0, a4=0x0 (`jalr` at 0xda54518).
  Calls `__glOdysseyIoctl [0xdabc870]` via register-constant with a0=[0x1010], a1=0x6f64000d, a2=sp-160, a3=?, a5=[[0x1010]+31552] (`jalr` at 0xda54614).
  The `beq` at 0xda54090 is taken when a1(=[0x1018]) == 0 -> B4 and falls through when a1(=[0x1018]) != 0 -> B1.
  The `beq` at 0xda5409c is taken when a1(=[0x1018]) == v0(=0x2) -> B3 and falls through when a1(=[0x1018]) != v0(=0x2) -> B2.
  The `beq` at 0xda540e8 is taken when (a0 & v1(=-0x4701)) == 0 -> B6 and falls through when (a0 & v1(=-0x4701)) != 0 -> B5.
  The `beq` at 0xda54114 is taken when a0 == 0 -> B8 and falls through when a0 != 0 -> B7.
  The `beq` at 0xda54120 is taken when a5(=[[0x1010]+3196]) == at(=0x1c00) -> B9 and falls through when a5(=[[0x1010]+3196]) != at(=0x1c00) -> B8.
  The `beq` at 0xda54138 is taken when v0(?) == 0 -> B13 and falls through when v0(?) != 0 -> B10.
  The `beq` at 0xda54144 is taken when v1(=[[0x1010]+3216]:1) == 0 -> B13 and falls through when v1(=[[0x1010]+3216]:1) != 0 -> B11.
  The `beq` at 0xda54168 is taken when (a0 & 0x4500) == 0 -> B54 and falls through when (a0 & 0x4500) != 0 -> B12.
  The `beq` at 0xda5417c is taken when at(=[[0x1010]+91736]:1) == 0 -> B15 and falls through when at(=[[0x1010]+91736]:1) != 0 -> B14.
  The `bne` at 0xda5419c is taken when a2(=[[0x1010]+31552]) != a3(=[[0x1010]+91728]) -> B17 and falls through when a2(=[[0x1010]+31552]) == a3(=[[0x1010]+91728]) -> B16.
  The `beq` at 0xda541a8 is taken when a5(=[[0x1010]+31556]) == a2(=[[0x1010]+91732]) -> B21 and falls through when a5(=[[0x1010]+31556]) != a2(=[[0x1010]+91732]) -> B17.
  The `beq` at 0xda541bc is taken when at(=[[0x1010]+38736]) == 0 -> B19 and falls through when at(=[[0x1010]+38736]) != 0 -> B18.
  The `beq` at 0xda54210 is taken when (at(=[[0x1010]+31376]) & v0(=0x100000)) == 0 -> B56 and falls through when (at(=[[0x1010]+31376]) & v0(=0x100000)) != 0 -> B20.
  The `beq` at 0xda54244 is taken when (a0 & 0x4000) == 0 -> B53 and falls through when (a0 & 0x4000) != 0 -> B22.
  The `beq` at 0xda54250 is taken when v1(=[[0x1010]+3212]:1) == 0 -> B52 and falls through when v1(=[[0x1010]+3212]:1) != 0 -> B23.
  The `beq` at 0xda54280 is taken when t0(=[[0x1010]+3217]:1) == 0 -> B29 and falls through when t0(=[[0x1010]+3217]:1) != 0 -> B26.
  The `beq` at 0xda54288 is taken when a5(?) == 0 -> B30 and falls through when a5(?) != 0 -> B27.
  The `beq` at 0xda54294 is taken when at(=[[0x1010]+1636]:1) == 0 -> B30 and falls through when at(=[[0x1010]+1636]:1) != 0 -> B28.
  The `beq` at 0xda542ac is taken when t1(=[[0x1010]+3218]:1) == 0 -> B40 and falls through when t1(=[[0x1010]+3218]:1) != 0 -> B31.
  The `beq` at 0xda542b8 is taken when (a0 & 0x400) == 0 -> B40 and falls through when (a0 & 0x400) != 0 -> B32.
  The `beq` at 0xda542c4 is taken when t0(=[[0x1010]+3217]:1) == 0 -> B41 and falls through when t0(=[[0x1010]+3217]:1) != 0 -> B34.
  The `beq` at 0xda5437c is taken when v0(=[[0x1010]+3292]) == 0 -> B42 and falls through when v0(=[[0x1010]+3292]) != 0 -> B36.
  The `beq` at 0xda5438c is taken when v1(=[[0x1010]+31380]:1) == 0 -> B46 and falls through when v1(=[[0x1010]+31380]:1) != 0 -> B38.
  The `beq` at 0xda5442c is taken when v0(?) == 0 -> B36 and falls through when v0(?) != 0 -> B43.
  The `beq` at 0xda54438 is taken when (v1(=a0) & 0x100) == 0 -> B58 and falls through when (v1(=a0) & 0x100) != 0 -> B44.
  The `beq` at 0xda54444 is taken when (a5(=a0) & 0x400) == 0 -> B61 and falls through when (a5(=a0) & 0x400) != 0 -> B45.
  The `beq` at 0xda54460 is taken when a3(=[[0x1010]+1888]) == at(=0x406) -> B57 and falls through when a3(=[[0x1010]+1888]) != at(=0x406) -> B47.
  The `beq` at 0xda5446c is taken when a3(=[[0x1010]+1888]) == v0(=0x407) -> B60 and falls through when a3(=[[0x1010]+1888]) != v0(=0x407) -> B48.
  The `beq` at 0xda54474 is taken when a3(=[[0x1010]+1888]) == v1(=0x408) -> B63 and falls through when a3(=[[0x1010]+1888]) != v1(=0x408) -> B49.
  The `bne` at 0xda5447c is taken when a1(=one of 0x0, 0x1) != 0 -> B51 and falls through when a1(=one of 0x0, 0x1) == 0 -> B50.
  The `beq` at 0xda54488 is taken when a2(?) == 0 -> B55 and falls through when a2(?) != 0 -> B51.
  The `bne` at 0xda54638 is taken when a5(=[[0x1010]+3217]:1) != 0 -> B37 and falls through when a5(=[[0x1010]+3217]:1) == 0 -> B59.
  The `bne` at 0xda54654 is taken when at(=[[0x1010]+3218]:1) != 0 -> B37 and falls through when at(=[[0x1010]+3218]:1) == 0 -> B62.
  The routine returns v0 = ret(__glSetError) (`jr` at 0xda540bc).
  The routine returns v0 = ret(__glSetError) (`jr` at 0xda5410c).
  The routine returns v0 = ? (`jr` at 0xda54130).
  The routine returns v0 = ? (`jr` at 0xda5418c).
  The routine returns v0 = ret(__glOdysseyClear) (`jr` at 0xda54404).
  The routine returns v0 = ret(?) (`jr` at 0xda54590).

- `__glOdysseyClear` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda54680, 1832 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x7b1c through base s1 (`sw` at 0xda5470c).
  Stores 4 bytes to a0 (arg0 at entry) +0x7b1c through base s1 (`sw` at 0xda54718).
  Stores 4 bytes to a0 (arg0 at entry) +0x7b1c through base s1 (`sw` at 0xda54724).
  Stores 4 bytes to a0 (arg0 at entry) +0x168d0 through base s0 (`sw` at 0xda54738).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda54740).
  Stores 4 bytes to a0 (arg0 at entry) +0x7b20 through base s1 (`sw` at 0xda5477c).
  Stores 4 bytes to a0 (arg0 at entry) +0x7b20 through base s1 (`sw` at 0xda54790).
  Stores 4 bytes to a0 (arg0 at entry) +0x168d0 through base s0 (`sw` at 0xda547a8).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda547b4).
  Stores 4 bytes to a0 (arg0 at entry) +0x7b1c through base s1 (`sw` at 0xda54830).
  Stores 4 bytes to a0 (arg0 at entry) +0x7b4c through base s1 (`sw` at 0xda5483c).
  Stores 4 bytes to a0 (arg0 at entry) +0x7b50 through base s1 (`sw` at 0xda54848).
  Stores 4 bytes to a0 (arg0 at entry) +0x7b4c through base s1 (`sw` at 0xda5485c).
  Stores 4 bytes to a0 (arg0 at entry) +0x9750 through base s0 (`sw` at 0xda548a0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda548a8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda548b4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda548bc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda548c0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda548cc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda548d4).
  Stores 4 bytes to a0 (arg0 at entry) +0x9750 through base s0 (`sw` at 0xda548ec).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda548f4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54900).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54908).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda5490c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54910).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54918).
  Stores 4 bytes to a0 (arg0 at entry) +0x95c4 through base s0 (`sw` at 0xda549e4).
  Stores 4 bytes to a0 (arg0 at entry) +0x168d0 through base s0 (`sw` at 0xda549ec).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda549f0).
  Stores 4 bytes to a0 (arg0 at entry) +0x7b24 through base s1 (`sw` at 0xda54a14).
  Stores 4 bytes to a0 (arg0 at entry) +0x9750 through base s0 (`sw` at 0xda54a30).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54a34).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54a3c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54a40).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54a44).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54a50).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54a58).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54ad8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54ae4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54aec).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54af4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54afc).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54b04).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54b10).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54b14).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54b18).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54b1c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54b20).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54b24).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54b28).
  Stores 4 bytes to a0 (arg0 at entry) +0x9750 through base s0 (`sw` at 0xda54b2c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54b30).
  Stores 4 bytes to a0 (arg0 at entry) +0x95c4 through base s0 (`sw` at 0xda54b3c).
  Stores 4 bytes to a0 (arg0 at entry) +0x7b4c through base s1 (`sw` at 0xda54b40).
  Stores 4 bytes to a0 (arg0 at entry) +0x7b50 through base s1 (`sw` at 0xda54b44).
  Stores 4 bytes to a0 (arg0 at entry) +0x7b24 through base s1 (`sw` at 0xda54b48).
  Stores 4 bytes to a0 (arg0 at entry) +0x7b1c through base s1 (`sw` at 0xda54b4c).
  Stores 4 bytes to a0 (arg0 at entry) +0x7b20 through base s1 (`sw` at 0xda54b54).
  Stores 4 bytes to a0 (arg0 at entry) +0x168d0 through base s0 (`sw` at 0xda54b68).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda54b6c).
  Stores 4 bytes to a0 (arg0 at entry) +0x9750 through base s0 (`sw` at 0xda54b8c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54b98).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54ba4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54bac).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54bb0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54bbc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54bc4).
  Stores 4 bytes to a0 (arg0 at entry) +0x9750 through base s0 (`sw` at 0xda54bd4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54be0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54bec).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54bf4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54bf8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54c04).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54c0c).
  Stores 4 bytes to a0 (arg0 at entry) +0x9750 through base s0 (`sw` at 0xda54c30).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54c34).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54c3c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54c40).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54c44).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54c48).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54c54).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54cbc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54cc8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54cd0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54cd8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54ce0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54ce8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54cf4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54cf8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54cfc).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54d00).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54d04).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54d08).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda54d0c).
  Stores 4 bytes to a0 (arg0 at entry) +0x9750 through base s0 (`sw` at 0xda54d14).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda54d1c).
  Calls `__glOdysseyValidateHardware [0xda57700]` via direct with a0=a0 at entry (arg0), a1=[a0+38340], a2=0x10415, a3=one of 0x0, 0x1, a5=-0x100 (`bgezall` at 0xda54a6c).
  The `beq` at 0xda54894 is taken when at(=[a0+38736]) == 0 -> B2 and falls through when at(=[a0+38736]) != 0 -> B1.
  The `beq` at 0xda548e0 is taken when a2(=[a0+38736]) == 0 -> B4 and falls through when a2(=[a0+38736]) != 0 -> B3.
  The `beq` at 0xda54938 is taken when (v0(?) & 0x1) == 0 -> B33 and falls through when (v0(?) & 0x1) != 0 -> B5.
  The `beq` at 0xda54940 is taken when t1(?) == a2(=0xfff) -> B31 and falls through when t1(?) != a2(=0xfff) -> B6.
  The `beq` at 0xda54948 is taken when t1(?) == 0 -> B31 and falls through when t1(?) != 0 -> B7.
  The `beq` at 0xda54958 is taken when at(?) == 0 -> B47 and falls through when at(?) != 0 -> B9.
  The `beq` at 0xda54964 is taken when t0(?) == v0(=0xff) -> B40 and falls through when t0(?) != v0(=0xff) -> B11.
  The `beq` at 0xda5496c is taken when t0(?) == 0 -> B45 and falls through when t0(?) != 0 -> B12.
  The `beq` at 0xda54974 is taken when a3(?) == 0 -> B42 and falls through when a3(?) != 0 -> B13.
  The `beq` at 0xda54990 is taken when (a0(=[a0+31376]) & 0x40) == 0 -> B44 and falls through when (a0(=[a0+31376]) & 0x40) != 0 -> B15.
  The `beq` at 0xda54998 is taken when s4(?) == 0 -> B32 and falls through when s4(?) != 0 -> B16.
  The `beq` at 0xda549a0 is taken when a2(?) == 0 -> B32 and falls through when a2(?) != 0 -> B17.
  The `beq` at 0xda54a28 is taken when a2(=[a0+38736]) == 0 -> B20 and falls through when a2(=[a0+38736]) != 0 -> B19.
  The `beq` at 0xda54a60 is taken when v0(=[a0+92368]) == 0 -> B22 and falls through when v0(=[a0+92368]) != 0 -> B21.
  The `beq` at 0xda54ad0 is taken when s4(?) == 0 -> B39 and falls through when s4(?) != 0 -> B23.
  The `beq` at 0xda54b80 is taken when v0(=[a0+38736]) == 0 -> B26 and falls through when v0(=[a0+38736]) != 0 -> B25.
  The `beq` at 0xda54bcc is taken when at(=[a0+38736]) == 0 -> B28 and falls through when at(=[a0+38736]) != 0 -> B27.
  The `beq` at 0xda54c24 is taken when v1(=[a0+38736]) == 0 -> B30 and falls through when v1(=[a0+38736]) != 0 -> B29.
  The `bne` at 0xda54c80 is taken when v0(?) != v1(?) -> B37 and falls through when v0(?) == v1(?) -> B34.
  The `bne` at 0xda54c8c is taken when a2(?) != at(?) -> B37 and falls through when a2(?) == at(?) -> B35.
  The `bne` at 0xda54c98 is taken when v0(?) != v1(?) -> B37 and falls through when v0(?) == v1(?) -> B36.
  The `beq` at 0xda54d20 is taken when t8(?) == 0 -> B11 and falls through when t8(?) != 0 -> B41.
  The `bne` at 0xda54d34 is taken when v0(?) != 0 -> B14 and falls through when v0(?) == 0 -> B43.
  The `bne` at 0xda54d4c is taken when t8(?) != 0 -> B12 and falls through when t8(?) == 0 -> B46.
  The `beq` at 0xda54d68 is taken when (at(?) & 0x7) == 0 -> B49 and falls through when (at(?) & 0x7) != 0 -> B48.
  The `beq` at 0xda54d78 is taken when a3(?) == 0 -> B53 and falls through when a3(?) != 0 -> B50.
  The `bne` at 0xda54d80 is taken when t2(=0x2) != a3(?) -> B48 and falls through when t2(=0x2) == a3(?) -> B51.
  The `beq` at 0xda54d88 is taken when a4(?) == v0(=0x4) -> B10 and falls through when a4(?) != v0(=0x4) -> B52.
  The `beq` at 0xda54d98 is taken when v1(=0x1) == a4(?) -> B10 and falls through when v1(=0x1) != a4(?) -> B54.
  The routine returns v0 = one of 0x10000, 0x10046 (`jr` at 0xda54c5c).

- `__glOdysseyFindWindowSize` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda55150, 328 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x19cac through base a3 (`swc1` at 0xda551b4).
  Stores 4 bytes to a0 (arg0 at entry) +0x19cb0 through base a3 (`swc1` at 0xda551c8).
  Stores 1 bytes to ? (base unknown) through base a3 (`sb` at 0xda55288).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=sp-72, a2=sp-68, a3=sp-80, a4=sp-76 (`jalr` at 0xda55190).
  Calls `__glChangeWindowSize [0xdb12190]` via register-constant with a0=a0 at entry (arg0), a1=?, a2=?, a3=a0+131072 (`jalr` at 0xda551e8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=sp-64, a2=sp-60, a3=? (`jalr` at 0xda551fc).
  Calls `__glChangeReadWindowSize [0xdb12290]` via register-constant with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xda55224).
  Calls `__glChangeWindowSize [0xdb12190]` via register-constant with a0=a0 at entry (arg0), a1=[a0+1696], a2=[a0+1700], a3=? (`jalr` at 0xda5524c).
  The `bne` at 0xda551d4 is taken when a2(=[a0+3692]) != a1(?) -> outside and falls through when a2(=[a0+3692]) == a1(?) -> B1.
  The `beq` at 0xda551e0 is taken when v0(=[a0+3696]) == a2(?) -> B3 and falls through when v0(=[a0+3696]) != a2(?) -> B2.
  The `bne` at 0xda5520c is taken when v1(=[a0+3700]) != a1(?) -> B5 and falls through when v1(=[a0+3700]) == a1(?) -> B4.
  The `beq` at 0xda55218 is taken when a3(=[a0+3704]) == a2(?) -> B6 and falls through when a3(=[a0+3704]) != a2(?) -> B5.
  The `beq` at 0xda5523c is taken when at(=[a0+92400]) == 0 -> B8 and falls through when at(=[a0+92400]) != 0 -> B7.
  The `beq` at 0xda55260 is taken when v0(=[a0+3216]:1) == 0 -> B12 and falls through when v0(=[a0+3216]:1) != 0 -> B9.
  The `bne` at 0xda5526c is taken when v1(=[a0+3692]) != a3(?) -> B11 and falls through when v1(=[a0+3692]) == a3(?) -> B10.
  The `beq` at 0xda55278 is taken when at(=[a0+3696]) == v0(?) -> B13 and falls through when at(=[a0+3696]) != v0(?) -> B11.
  The routine returns v0 = ? (`jr` at 0xda55290).

- `__glOdysseyImageMovePixelsCopy` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda9b990, 8168 bytes) Inferred.
  Stores 4 bytes to sp (at entry) -0x280 through base v0 (`sw` at 0xda9c094).
  Stores 4 bytes to sp (at entry) -0x270 through base v0 (`sw` at 0xda9c09c).
  Stores 4 bytes to sp (at entry) -0x274 through base v0 (`sw` at 0xda9c0a0).
  Stores 4 bytes to sp (at entry) -0x278 through base v0 (`sw` at 0xda9c0a4).
  Stores 4 bytes to sp (at entry) -0x27c through base v0 (`sw` at 0xda9c0a8).
  Stores 4 bytes to [0x1010] +0x95cc through base s0 (`sw` at 0xda9c0e4).
  Stores 4 bytes to [0x1010] +0x9750 through base s0 (`sw` at 0xda9c114).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c118).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c11c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c120).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c124).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c13c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c140).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c148).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c150).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c15c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c168).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c174).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c180).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c18c).
  Stores 4 bytes to [0x1010] +0x9750 through base s0 (`sw` at 0xda9c190).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c194).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c19c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c1a0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c1a4).
  Stores 4 bytes to [0x1010] +0x9624 through base s0 (`sw` at 0xda9c1c0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c1cc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c1e4).
  Stores 4 bytes to [0x1010] +0x168d0 through base s0 (`sw` at 0xda9c208).
  Stores 4 bytes to [0x1010] +0x95bc through base s0 (`sw` at 0xda9c218).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda9c220).
  Stores 4 bytes to [0x1010] +0x7b7c through base s2 (`sw` at 0xda9c344).
  Stores 4 bytes to [0x1010] +0x168d0 through base s0 (`sw` at 0xda9c350).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda9c354).
  Stores 4 bytes to [0x1010] +0x7b40 through base s2 (`sw` at 0xda9c3c0).
  Stores 4 bytes to [0x1010] +0x7b44 through base s2 (`sw` at 0xda9c3d0).
  Stores 4 bytes to [0x1010] +0x168d0 through base s0 (`sw` at 0xda9c3dc).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda9c3e0).
  Stores 4 bytes to [0x1010] +0x9614 through base s0 (`sw` at 0xda9c404).
  Stores 4 bytes to [0x1010] +0xa118 through base s0 (`sw` at 0xda9c410).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c41c).
  Stores 4 bytes to [0x1010] +0x9750 through base s0 (`sw` at 0xda9c494).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c49c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c4a8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c4b0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c4b4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c4c0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c4c4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c4cc).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c644).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c668).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c66c).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c6bc).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c6c4).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c6cc).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c6e0).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c6f8).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c6fc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c700).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c704).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c708).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c70c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c710).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c714).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c71c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c724).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c72c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c738).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c744).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c750).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c75c).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c764).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c768).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c76c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c770).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c774).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c77c).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c784).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c788).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c78c).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c794).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c79c).
  Stores 4 bytes to ? (base unknown) through base s2 (`sw` at 0xda9c7a0).
  Stores 4 bytes to ? (base unknown) through base s2 (`sw` at 0xda9c7a4).
  Stores 4 bytes to ? (base unknown) through base s2 (`sw` at 0xda9c7a8).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c7bc).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda9c7c4).
  Stores 4 bytes to ? (base unknown) through base s2 (`sw` at 0xda9c7f0).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c7fc).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda9c800).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c828).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c82c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c830).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c834).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c838).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c844).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c848).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c84c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c854).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c858).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c85c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c860).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c864).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9c868).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c86c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c870).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c874).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9c878).
  Stores 4 bytes to ? (base unknown) through base s2 (`sw` at 0xda9d114).
  Stores 4 bytes to ? (base unknown) through base s2 (`sw` at 0xda9d11c).
  Stores 4 bytes to ? (base unknown) through base s2 (`sw` at 0xda9d124).
  Stores 4 bytes to ? (base unknown) through base s2 (`sw` at 0xda9d12c).
  Stores 4 bytes to ? (base unknown) through base s0 (`sw` at 0xda9d138).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda9d140).
  Stores 4 bytes to [0x1010] +0x7b40 through base s2 (`sw` at 0xda9d194).
  Stores 4 bytes to [0x1010] +0x7b44 through base s2 (`sw` at 0xda9d198).
  Stores 4 bytes to [0x1010] +0x9750 through base s0 (`sw` at 0xda9d1a8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9d1ac).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9d1b4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9d1b8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9d1bc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9d1c8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9d1d0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9d1d8).
  Stores 4 bytes to [0x1010] +0x168d4 through base s0 (`sw` at 0xda9d1f8).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda9d1fc).
  Stores 4 bytes to [0x1010] +0x168d0 through base s0 (`sw` at 0xda9d308).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda9d314).
  Calls `memset` via got with a0=sp-808, a1=0x0, a2=0x20, a3=a3 at entry (arg3) (`jalr` at 0xda9ba04).
  Calls `memset` via got with a0=sp-776, a1=0x0, a2=0x1c, a3=? (`jalr` at 0xda9ba1c).
  Calls `ceilf` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xda9ba3c).
  Calls `ceilf` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xda9ba60).
  Calls `ceilf` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xda9ba88).
  Calls `ceilf` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xda9baac).
  Calls `(unnamed) [0xdaa0f30]` via direct with a0=[a1+48], a1=[a0+48], a2=sp-776, a3=? (`bgezall` at 0xda9bb78).
  Calls `(unnamed) [0xdaa2ab0]` via direct with a0=[a1+40], a1=[a1+44], a2=one of 0x0, 0x1, a3=0x0, a4=sp-832, a5=sp-828 (`bgezall` at 0xda9bc90).
  Calls `(unnamed) [0xdaa2ab0]` via direct with a0=[a0+40], a1=[a0+44], a2=one of 0x0, 0x1, a3=0x0, a4=sp-824, a5=sp-820 (`bgezall` at 0xda9bd0c).
  Calls `__glOdysseyOpenPMObjReference [0xdaaa8c0]` via register-constant with a0=[0x1010], a1=[a1+12], a2=[a1+16], a3=[a1+16], a4=sp-704, a5=0x0 (`jalr` at 0xda9bd30).
  Calls `__glOdysseyOpenPMObjWriteReference [0xdaaab50]` via register-constant with a0=[0x1010], a1=[a0+12], a2=[a0+16], a3=sp-816 (`jalr` at 0xda9bd78).
  Calls `__glOdysseyImageCalcPixelModeFields [0xdaa2fe0]` via direct with a0=[0x1010]+38332, a1=a0 at entry (arg0), a2=?, a3=0x13c00, a4=[[0x1010]+38436], a5=[[0x1010]+38364], a6=[[0x1010]+38360], a7=[[0x1010]+38356] (`bgezall` at 0xda9c1e0).
  Calls `__glOdysseyValidateHardware [0xda57700]` via register-constant with a0=[0x1010], a1=?, a2=?, a3=[[0x1010]+31552], a4=0x2, a5=([[0x1010]+92368] | 0x10) (`jalr` at 0xda9c3f8).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=[a1+4], a2=0x1, a3=?, a4=0x2 (`jalr` at 0xda9c42c).
  Calls `(unnamed) [0xda9b600]` via direct with a0=sp-808, a1=sp-504, a2=sp-488, a3=?, a6=0x1 (`bgezall` at 0xda9c604).
  Calls `__glOdysseyClosePMObjReference [0xdaaaf20]` via register-constant with a0=?, a1=[a1+12], a2=[a1+16], a3=[a1+16] (`jalr` at 0xda9c680).
  Calls `__glOdysseyClosePMObjWriteReference [0xdaaadc0]` via register-constant with a0=?, a1=[a0+12], a2=[a0+16], a3=? (`jalr` at 0xda9c69c).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0xda9cca4).
  Calls `(unnamed) [0xda9b600]` via direct with a0=sp-808, a1=sp-504, a2=sp-488, a3=?, a6=0x1 (`bgezall` at 0xda9ce44).
  Calls `(unnamed) [0xda9b600]` via direct with a0=sp-808, a1=sp-504, a2=sp-488, a3=?, a6=0x1 (`bgezall` at 0xda9cef4).
  Calls `(unnamed) [0xda9b600]` via direct with a0=sp-808, a1=sp-520, a2=sp-536, a3=?, a6=0x1 (`bgezall` at 0xda9d044).
  Calls `(unnamed) [0xda9b600]` via direct with a0=sp-808, a1=sp-504, a2=sp-488, a3=?, a6=0x1 (`bgezall` at 0xda9d0e4).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=?, a2=?, a3=? (`jalr` at 0xda9d144).
  Calls `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ [0xdaa5ab0]` via register-constant with a0=[[0x1010]+91732], a1=[[0x1010]+91728], a2=[[0x1010]+3217]:1, a3=?, a4=0x2 (`jalr` at 0xda9d2bc).
  Calls `(unnamed) [0xdaa3df0]` via direct with a0=?, a1=[0x1010]+31516, a2=[0x1010]+31572, a3=[0x1010]+31576, a4=[0x1010]+31580, a5=[0x1010]+31612 (`bgezall` at 0xda9d2e4).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0xda9d320).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0xda9d360).
  Calls `(unnamed) [0xda9b600]` via direct with a0=sp-808, a1=sp-728, a2=sp-744, a3=?, a6=0x0 (`bgezall` at 0xda9d3b4).
  Calls `(unnamed) [0xda9b600]` via direct with a0=sp-808, a1=sp-520, a2=sp-536, a3=?, a6=0x1 (`bgezall` at 0xda9d544).
  Calls `(unnamed) [0xda9b600]` via direct with a0=sp-808, a1=sp-520, a2=sp-536, a3=?, a6=0x1 (`bgezall` at 0xda9d708).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0xda9d790).
  Calls `(unnamed) [0xda9b600]` via direct with a0=sp-808, a1=sp-520, a2=sp-536, a3=?, a6=0x1 (`bgezall` at 0xda9d880).
  Calls `__glOdysseyIoctl [0xdabc870]` via register-constant with a0=[0x1010], a1=0x6f64000d, a2=sp-568, a3=? (`jalr` at 0xda9d968).
  The `beq` at 0xda9bb04 is taken when v1(=[a0+8]:1) == 0 -> B4 and falls through when v1(=[a0+8]:1) != 0 -> B1.
  The `beq` at 0xda9bb1c is taken when (a2(=[[0x1010]+42488]) & 0x1000) == 0 -> B4 and falls through when (a2(=[[0x1010]+42488]) & 0x1000) != 0 -> B2.
  The `beq` at 0xda9bb40 is taken when a3(=[a1+8]:1) == 0 -> B4 and falls through when a3(=[a1+8]:1) != 0 -> B3.
  The `beq` at 0xda9bb84 is taken when at(?) == 0 -> B153 and falls through when at(?) != 0 -> B5.
  The `beq` at 0xda9bb90 is taken when v0(=[a0+8]:1) == 0 -> B94 and falls through when v0(=[a0+8]:1) != 0 -> B6.
  The `bne` at 0xda9bbac is taken when a5(?) < v1(?) (signed) -> B12 and falls through when a5(?) >= v1(?) (signed) -> B10.
  The `bne` at 0xda9bbb8 is taken when a3(?) < a5(?) (signed) -> B13 and falls through when a3(?) >= a5(?) (signed) -> B11.
  The `bne` at 0xda9bbd8 is taken when a6(?) < at(?) (signed) -> B16 and falls through when a6(?) >= at(?) (signed) -> B14.
  The `bne` at 0xda9bbe4 is taken when v0(?) < a6(?) (signed) -> B17 and falls through when v0(?) >= a6(?) (signed) -> B15.
  The `beq` at 0xda9bc2c is taken when v1(=[a1+9]:1) == 0 -> B99 and falls through when v1(=[a1+9]:1) != 0 -> B18.
  The `beq` at 0xda9bc40 is taken when a0(=[[0x1010]+1236]) == v0(=0x405) -> B21 and falls through when a0(=[[0x1010]+1236]) != v0(=0x405) -> B19.
  The `beq` at 0xda9bc4c is taken when a0(=[[0x1010]+1236]) == v1(=0x402) -> B21 and falls through when a0(=[[0x1010]+1236]) != v1(=0x402) -> B20.
  The `bne` at 0xda9bc54 is taken when a0(=[[0x1010]+1236]) != a3(=0x403) -> B22 and falls through when a0(=[[0x1010]+1236]) == a3(=0x403) -> B21.
  The `beq` at 0xda9bc64 is taken when a0(=[[0x1010]+1236]) == at(=0x407) -> B62 and falls through when a0(=[[0x1010]+1236]) != at(=0x407) -> B23.
  The `beq` at 0xda9bc6c is taken when a0(=[[0x1010]+1236]) == v0(=0x401) -> B62 and falls through when a0(=[[0x1010]+1236]) != v0(=0x401) -> B24.
  The `beq` at 0xda9bc74 is taken when a0(=[[0x1010]+1236]) == v1(=0x403) -> B62 and falls through when a0(=[[0x1010]+1236]) != v1(=0x403) -> B25.
  The `beq` at 0xda9bc98 is taken when v0(=ret(0xdaa2ab0)) == 0 -> B126 and falls through when v0(=ret(0xdaa2ab0)) != 0 -> B26.
  The `beq` at 0xda9bca4 is taken when at(=[a0+8]:1) == 0 -> B100 and falls through when at(=[a0+8]:1) != 0 -> B27.
  The `beq` at 0xda9bcb8 is taken when a1(=[[0x1010]+1888]) == v0(=0x405) -> B30 and falls through when a1(=[[0x1010]+1888]) != v0(=0x405) -> B28.
  The `beq` at 0xda9bcc4 is taken when a1(=[[0x1010]+1888]) == v1(=0x402) -> B30 and falls through when a1(=[[0x1010]+1888]) != v1(=0x402) -> B29.
  The `bne` at 0xda9bccc is taken when a1(=[[0x1010]+1888]) != a3(=0x403) -> B31 and falls through when a1(=[[0x1010]+1888]) == a3(=0x403) -> B30.
  The `beq` at 0xda9bcdc is taken when a1(=[[0x1010]+1888]) == at(=0x407) -> B63 and falls through when a1(=[[0x1010]+1888]) != at(=0x407) -> B32.
  The `beq` at 0xda9bce4 is taken when a1(=[[0x1010]+1888]) == v0(=0x401) -> B63 and falls through when a1(=[[0x1010]+1888]) != v0(=0x401) -> B33.
  The `beq` at 0xda9bcec is taken when a1(=[[0x1010]+1888]) == v1(=0x403) -> B63 and falls through when a1(=[[0x1010]+1888]) != v1(=0x403) -> B34.
  The `beq` at 0xda9bd14 is taken when v0(=ret(0xdaa2ab0)) == 0 -> B93 and falls through when v0(=ret(0xdaa2ab0)) != 0 -> B35.
  The `beq` at 0xda9bd3c is taken when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) == 0 -> B127 and falls through when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) != 0 -> B36.
  The `beq` at 0xda9bd84 is taken when (v0(=ret(__glOdysseyOpenPMObjWriteReference)) & 0xff) == 0 -> B165 and falls through when (v0(=ret(__glOdysseyOpenPMObjWriteReference)) & 0xff) != 0 -> B37.
  The `beq` at 0xda9c050 is taken when s6(?) == 0 -> B64 and falls through when s6(?) != 0 -> B38.
  The `beq` at 0xda9c0e0 is taken when at(=[[0x1010]+38736]) == 0 -> B40 and falls through when at(=[[0x1010]+38736]) != 0 -> B39.
  The `beq` at 0xda9c228 is taken when a1(=[a1+4]) == 0 -> B101 and falls through when a1(=[a1+4]) != 0 -> B41.
  The `beq` at 0xda9c234 is taken when a1(=[a1+4]) == a2(=0x1) -> B105 and falls through when a1(=[a1+4]) != a2(=0x1) -> B43.
  The `beq` at 0xda9c23c is taken when a1(=[a1+4]) == 0 -> B108 and falls through when a1(=[a1+4]) != 0 -> B44.
  The `beq` at 0xda9c244 is taken when a1(=[a1+4]) == a2(=0x1) -> B112 and falls through when a1(=[a1+4]) != a2(=0x1) -> B45.
  The `beq` at 0xda9c24c is taken when a1(=[a1+4]) == 0 -> B115 and falls through when a1(=[a1+4]) != 0 -> B46.
  The `beq` at 0xda9c254 is taken when a1(=[a1+4]) == a2(=0x1) -> B119 and falls through when a1(=[a1+4]) != a2(=0x1) -> B47.
  The `beq` at 0xda9c25c is taken when a1(=[a1+4]) == 0 -> B122 and falls through when a1(=[a1+4]) != 0 -> B48.
  The `bne` at 0xda9c264 is taken when a1(=[a1+4]) != a2(=0x1) -> B61 and falls through when a1(=[a1+4]) == a2(=0x1) -> B49.
  The `bne` at 0xda9c26c is taken when a0(?) != 0 -> B60 and falls through when a0(?) == 0 -> B50.
  The `bne` at 0xda9c274 is taken when a2(=0x1) != a3(?) -> B61 and falls through when a2(=0x1) == a3(?) -> B51.
  The `beq` at 0xda9c2e0 is taken when a3(=[a0+8]:1) == 0 -> B55 and falls through when a3(=[a0+8]:1) != 0 -> B54.
  The `beq` at 0xda9c2ec is taken when at(=a4) == v0(=0x1) -> B154 and falls through when at(=a4) != v0(=0x1) -> B55.
  The `beq` at 0xda9c338 is taken when v1(=[a0+10]:1) == 0 -> B57 and falls through when v1(=[a0+10]:1) != 0 -> B56.
  The `beq` at 0xda9c3ec is taken when v0(=[[0x1010]+92368]) == 0 -> B59 and falls through when v0(=[[0x1010]+92368]) != 0 -> B58.
  The `beq` at 0xda9c480 is taken when s8(=one of 0x0, 0x1) == 0 -> B69 and falls through when s8(=one of 0x0, 0x1) != 0 -> B66.
  The `beq` at 0xda9c48c is taken when a3(=[[0x1010]+38736]) == 0 -> B68 and falls through when a3(=[[0x1010]+38736]) != 0 -> B67.
  The `beq` at 0xda9c4d0 is taken when s6(?) == 0 -> B166 and falls through when s6(?) != 0 -> B70.
  The `beq` at 0xda9c50c is taken when (v1(=[[0x1010]+31376]) & 0x2) == 0 -> B128 and falls through when (v1(=[[0x1010]+31376]) & 0x2) != 0 -> B71.
  The `beq` at 0xda9c568 is taken when s7(?) == t3(=0x3) -> B134 and falls through when s7(?) != t3(=0x3) -> B72.
  The `beq` at 0xda9c574 is taken when s7(?) == at(=0x2) -> B138 and falls through when s7(?) != at(=0x2) -> B73.
  The `beq` at 0xda9c57c is taken when s7(?) == v0(=0x1) -> B148 and falls through when s7(?) != v0(=0x1) -> B74.
  The `blez` at 0xda9c598 is taken when s8(?) <= 0 (signed) -> B78 and falls through when s8(?) > 0 (signed) -> B75.
  The `bne` at 0xda9c620 is taken when s8(?) != s4(?) -> B76 and falls through when s8(?) == s4(?) -> B77.
  The `beq` at 0xda9c68c is taken when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) == 0 -> B164 and falls through when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) != 0 -> B80.
  The `beq` at 0xda9c6a8 is taken when (v0(=ret(__glOdysseyClosePMObjWriteReference)) & 0xff) == 0 -> B187 and falls through when (v0(=ret(__glOdysseyClosePMObjWriteReference)) & 0xff) != 0 -> B81.
  The `beq` at 0xda9c6b0 is taken when s6(?) == 0 -> B88 and falls through when s6(?) != 0 -> B82.
  The `beq` at 0xda9c6f4 is taken when a3(?) == 0 -> B84 and falls through when a3(?) != 0 -> B83.
  The `beq` at 0xda9c7cc is taken when at(=[a0+8]:1) == 0 -> B86 and falls through when at(=[a0+8]:1) != 0 -> B85.
  The `beq` at 0xda9c7dc is taken when a3(=a4) == at(=0x1) -> B152 and falls through when a3(=a4) != at(=0x1) -> B86.
  The `beq` at 0xda9c7e8 is taken when v0(=[a0+10]:1) == 0 -> B88 and falls through when v0(=[a0+10]:1) != 0 -> B87.
  The `beq` at 0xda9c804 is taken when s8(?) == 0 -> B92 and falls through when s8(?) != 0 -> B89.
  The `beq` at 0xda9c820 is taken when at(?) == 0 -> B91 and falls through when at(?) != 0 -> B90.
  The `bne` at 0xda9c8ec is taken when v1(=[a0+48]) != a3(?) -> B125 and falls through when v1(=[a0+48]) == a3(?) -> B95.
  The `bne` at 0xda9c8fc is taken when at(=[a0+4]) != v0(=[a1+4]) -> B133 and falls through when at(=[a0+4]) == v0(=[a1+4]) -> B96.
  The `beq` at 0xda9c908 is taken when v1(=[a0+10]:1) == 0 -> B8 and falls through when v1(=[a0+10]:1) != 0 -> B97.
  The `beq` at 0xda9c918 is taken when a3(=[[0x1010]+72640]) == at(=[[0x1010]+72852]) -> B9 and falls through when a3(=[[0x1010]+72640]) != at(=[[0x1010]+72852]) -> B98.
  The `bne` at 0xda9c940 is taken when a0(?) != 0 -> B42 and falls through when a0(?) == 0 -> B102.
  The `bne` at 0xda9c94c is taken when v1(?) != 0 -> B42 and falls through when v1(?) == 0 -> B103.
  The `bne` at 0xda9c9b8 is taken when a2(=0x1) != a0(?) -> B43 and falls through when a2(=0x1) == a0(?) -> B106.
  The `bne` at 0xda9c9c0 is taken when v1(?) != 0 -> B43 and falls through when v1(?) == 0 -> B107.
  The `bne` at 0xda9ca28 is taken when a0(?) != 0 -> B44 and falls through when a0(?) == 0 -> B109.
  The `bne` at 0xda9ca30 is taken when a2(=0x1) != v1(?) -> B44 and falls through when a2(=0x1) == v1(?) -> B110.
  The `bne` at 0xda9ca9c is taken when a2(=0x1) != a0(?) -> B45 and falls through when a2(=0x1) == a0(?) -> B113.
  The `bne` at 0xda9caa4 is taken when a2(=0x1) != v1(?) -> B45 and falls through when a2(=0x1) == v1(?) -> B114.
  The `bne` at 0xda9cb0c is taken when a2(=0x1) != a0(?) -> B46 and falls through when a2(=0x1) == a0(?) -> B116.
  The `bne` at 0xda9cb14 is taken when v1(?) != 0 -> B46 and falls through when v1(?) == 0 -> B117.
  The `bne` at 0xda9cb80 is taken when a0(?) != 0 -> B47 and falls through when a0(?) == 0 -> B120.
  The `bne` at 0xda9cb88 is taken when v1(?) != 0 -> B47 and falls through when v1(?) == 0 -> B121.
  The `bne` at 0xda9cbf0 is taken when a2(=0x1) != a0(?) -> B48 and falls through when a2(=0x1) == a0(?) -> B123.
  The `bne` at 0xda9cbf8 is taken when a2(=0x1) != v1(?) -> B48 and falls through when a2(=0x1) == v1(?) -> B124.
  The `beq` at 0xda9cd3c is taken when s7(?) == t3(=0x3) -> B167 and falls through when s7(?) != t3(=0x3) -> B129.
  The `beq` at 0xda9cd48 is taken when s7(?) == at(=0x2) -> B176 and falls through when s7(?) != at(=0x2) -> B130.
  The `beq` at 0xda9cd50 is taken when s7(?) == a2(=0x1) -> B185 and falls through when s7(?) != a2(=0x1) -> B131.
  The `blez` at 0xda9cd70 is taken when v0(?) <= 0 (signed) -> B78 and falls through when v0(?) > 0 (signed) -> B132.
  The `blez` at 0xda9cde0 is taken when s8(?) <= 0 (signed) -> B78 and falls through when s8(?) > 0 (signed) -> B135.
  The `bne` at 0xda9ce60 is taken when s8(?) != s4(?) -> B136 and falls through when s8(?) == s4(?) -> B137.
  The `blez` at 0xda9ce88 is taken when s8(?) <= 0 (signed) -> B78 and falls through when s8(?) > 0 (signed) -> B139.
  The `bne` at 0xda9cf10 is taken when s8(?) != s4(?) -> B140 and falls through when s8(?) == s4(?) -> B141.
  The `beq` at 0xda9cf5c is taken when v1(?) == a3(?) -> B147 and falls through when v1(?) != a3(?) -> B143.
  The `blez` at 0xda9cf78 is taken when v1(?) <= 0 (signed) -> B142 and falls through when v1(?) > 0 (signed) -> B144.
  The `bnel` at 0xda9d054 is taken when at(?) != s4(?) -> B145 and falls through when at(?) == s4(?) -> B146.
  The `blez` at 0xda9d080 is taken when s8(?) <= 0 (signed) -> B78 and falls through when s8(?) > 0 (signed) -> B149.
  The `bne` at 0xda9d100 is taken when s8(?) != s4(?) -> B150 and falls through when s8(?) == s4(?) -> B151.
  The `bne` at 0xda9d180 is taken when a0(=[[0x1010]+31552]) != a1(=[[0x1010]+91728]) -> B156 and falls through when a0(=[[0x1010]+31552]) == a1(=[[0x1010]+91728]) -> B155.
  The `beq` at 0xda9d18c is taken when a3(=[[0x1010]+31556]) == a0(=[[0x1010]+91732]) -> B160 and falls through when a3(=[[0x1010]+31556]) != a0(=[[0x1010]+91732]) -> B156.
  The `beq` at 0xda9d1a0 is taken when at(=[[0x1010]+38736]) == 0 -> B158 and falls through when at(=[[0x1010]+38736]) != 0 -> B157.
  The `beq` at 0xda9d1e8 is taken when (v1(=[[0x1010]+31376]) & a3(=0x100000)) == 0 -> B194 and falls through when (v1(=[[0x1010]+31376]) & a3(=0x100000)) != 0 -> B159.
  The `beq` at 0xda9d2a4 is taken when a2(=[[0x1010]+3217]:1) == 0 -> B163 and falls through when a2(=[[0x1010]+3217]:1) != 0 -> B161.
  The `beq` at 0xda9d2b4 is taken when (at(=[[0x1010]+1792]) & 0x10) == 0 -> B163 and falls through when (at(=[[0x1010]+1792]) & 0x10) != 0 -> B162.
  The `blez` at 0xda9d3e0 is taken when at(?) <= 0 (signed) -> B78 and falls through when at(?) > 0 (signed) -> B168.
  The `beq` at 0xda9d458 is taken when at(?) == v0(?) -> B175 and falls through when at(?) != v0(?) -> B171.
  The `blez` at 0xda9d474 is taken when v0(?) <= 0 (signed) -> B169 and falls through when v0(?) > 0 (signed) -> B172.
  The `bne` at 0xda9d564 is taken when at(?) != s4(?) -> B173 and falls through when at(?) == s4(?) -> B174.
  The `blez` at 0xda9d598 is taken when a3(?) <= 0 (signed) -> B78 and falls through when a3(?) > 0 (signed) -> B177.
  The `beq` at 0xda9d624 is taken when at(?) == v0(?) -> B184 and falls through when at(?) != v0(?) -> B180.
  The `blez` at 0xda9d640 is taken when at(?) <= 0 (signed) -> B178 and falls through when at(?) > 0 (signed) -> B181.
  The `bnel` at 0xda9d714 is taken when a3(?) != s4(?) -> B182 and falls through when a3(?) == s4(?) -> B183.
  The `blez` at 0xda9d744 is taken when at(?) <= 0 (signed) -> B78 and falls through when at(?) > 0 (signed) -> B186.
  The `bne` at 0xda9d8a4 is taken when at(?) != s4(?) -> B189 and falls through when at(?) == s4(?) -> B190.
  The `beq` at 0xda9d8e0 is taken when a3(?) == at(?) -> B193 and falls through when a3(?) != at(?) -> B191.
  The `blez` at 0xda9d8f8 is taken when at(?) <= 0 (signed) -> B190 and falls through when at(?) > 0 (signed) -> B192.
  The routine returns v0 = ret(__glSetError) (`jr` at 0xda9c458).
  The routine returns v0 = ? (`jr` at 0xda9c8a8).
  The routine returns v0 = ret(0xdaa2ab0) (`jr` at 0xda9c8dc).
  The routine returns v0 = ret(0xdaa2ab0) (`jr` at 0xda9cc94).
  The routine returns v0 = ret(__glSetError) (`jr` at 0xda9ccd0).
  The routine returns v0 = ret(__glSetError) (`jr` at 0xda9d170).
  The routine returns v0 = ret(__glSetError) (`jr` at 0xda9d34c).
  The routine returns v0 = ret(__glSetError) (`jr` at 0xda9d38c).
  The routine returns v0 = ret(__glSetError) (`jr` at 0xda9d7bc).

- `__glOdysseyImageMovePixelsDMAtoGfx` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda9e1e0, 6032 bytes) Inferred.
  Stores 4 bytes to a1 (arg1 at entry) +0x18 through base s4 (`sw` at 0xda9e47c).
  Stores 4 bytes to sp (at entry) -0x244 through base a6 (`sw` at 0xda9eaa0).
  Stores 4 bytes to sp (at entry) -0x24c through base a6 (`sw` at 0xda9eaac).
  Stores 4 bytes to sp (at entry) -0x248 through base a6 (`sw` at 0xda9ead4).
  Stores 4 bytes to sp (at entry) -0x240 through base a6 (`sw` at 0xda9eaf8).
  Stores 4 bytes to sp (at entry) -0x250 through base a6 (`sw` at 0xda9eb00).
  Stores 4 bytes to [0x1010] +0x95cc through base s0 (`sw` at 0xda9eb3c).
  Stores 4 bytes to [0x1010] +0x9750 through base s0 (`sw` at 0xda9eb40).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9eb44).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9eb48).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9eb4c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9eb50).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9eb5c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9eb60).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9eb68).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9eb70).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9eb78).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9eb80).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9eb88).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9eb90).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9eb98).
  Stores 4 bytes to [0x1010] +0x9750 through base s0 (`sw` at 0xda9eba0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9eba8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9ebb0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9ebb4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9ebb8).
  Stores 4 bytes to [0x1010] +0x9624 through base s0 (`sw` at 0xda9ebd0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9ebdc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9ebf4).
  Stores 4 bytes to [0x1010] +0x95bc through base s0 (`sw` at 0xda9ec2c).
  Stores 4 bytes to [0x1010] +0x168d0 through base s0 (`sw` at 0xda9ec34).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda9ec3c).
  Stores 4 bytes to [0x1010] +0x7b40 through base s1 (`sw` at 0xda9ecd4).
  Stores 4 bytes to [0x1010] +0x7b44 through base s1 (`sw` at 0xda9ecec).
  Stores 4 bytes to [0x1010] +0x168d0 through base s0 (`sw` at 0xda9ecf8).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda9ecfc).
  Stores 4 bytes to [0x1010] +0x7b7c through base s1 (`sw` at 0xda9ed14).
  Stores 4 bytes to [0x1010] +0x168d0 through base s0 (`sw` at 0xda9ed20).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda9ed24).
  Stores 4 bytes to [0x1010] +0x7b40 through base s1 (`sw` at 0xda9ed90).
  Stores 4 bytes to [0x1010] +0x168d0 through base s0 (`sw` at 0xda9ed9c).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda9eda0).
  Stores 4 bytes to [0x1010] +0x9750 through base s0 (`sw` at 0xda9ee0c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9ee14).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9ee20).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9ee28).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9ee2c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9ee38).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9ee3c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9ee48).
  Stores 4 bytes to [0x1010] +0xa118 through base s0 (`sw` at 0xda9ee88).
  Stores 4 bytes to [0x1010] +0x9614 through base s0 (`sw` at 0xda9ee90).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9ee98).
  Stores 4 bytes to [0x1010] +0x9618 through base s0 (`sw` at 0xda9ee9c).
  Stores 4 bytes to [0x1010] +0x95f0 through base s0 (`swc1` at 0xda9eea0).
  Stores 4 bytes to [0x1010] +0x95ec through base s0 (`swc1` at 0xda9eea4).
  Stores 4 bytes to [0x1010] +0x95e8 through base s0 (`swc1` at 0xda9eea8).
  Stores 4 bytes to [0x1010] +0x95e4 through base s0 (`swc1` at 0xda9eeb0).
  Stores 8 bytes to sp (at entry) -0x1f0 through base s6 (`sd` at 0xda9eecc).
  Stores 8 bytes to sp (at entry) -0x1d8 through base s6 (`sd` at 0xda9eedc).
  Stores 8 bytes to sp (at entry) -0x1e0 through base s6 (`sd` at 0xda9eee8).
  Stores 8 bytes to sp (at entry) -0x1e8 through base s6 (`sd` at 0xda9eef0).
  Stores 4 bytes to [0x1010] +0x9608 through base s0 (`swc1` at 0xda9ef74).
  Stores 4 bytes to [0x1010] +0x9604 through base s0 (`swc1` at 0xda9ef7c).
  Stores 4 bytes to [0x1010] +0x9600 through base s0 (`swc1` at 0xda9ef84).
  Stores 4 bytes to [0x1010] +0x95fc through base s0 (`swc1` at 0xda9ef88).
  Stores 4 bytes to [0x1010] +0x95f8 through base s0 (`swc1` at 0xda9ef90).
  Stores 4 bytes to [0x1010] +0x95f4 through base s0 (`swc1` at 0xda9ef94).
  Stores 4 bytes to [0x1010] +0x9610 through base s0 (`sw` at 0xda9ef9c).
  Stores 4 bytes to [0x1010] +0x960c through base s0 (`sw` at 0xda9efa4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9efac).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9efb8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9efc0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9efc8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9efd0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9efd8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9efe0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9efe8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9eff0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9eff8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9f000).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9f00c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9f01c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f028).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f034).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f040).
  Stores 4 bytes to [0x1010] +0x9620 through base s0 (`sw` at 0xda9f04c).
  Stores 4 bytes to [0x1010] +0x961c through base s0 (`sw` at 0xda9f058).
  Stores 4 bytes to [0x1010] +0x9750 through base s0 (`sw` at 0xda9f068).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f078).
  Stores 4 bytes to [0x1010] +0x9750 through base s0 (`sw` at 0xda9f0ac).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f0b0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f0b4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f0b8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f0bc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f0c8).
  Stores 4 bytes to [0x1010] +0x9750 through base s0 (`sw` at 0xda9f0cc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f0d0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f0d8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f0dc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f0e0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f0e4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f0e8).
  Stores 4 bytes to [0x1010] +0x9750 through base s0 (`sw` at 0xda9f0ec).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f0f0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f0f4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f0f8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f0fc).
  Stores 4 bytes to [0x1010] +0xa118 through base s0 (`sw` at 0xda9f150).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f158).
  Stores 4 bytes to [0x1010] +0x9614 through base s0 (`sw` at 0xda9f160).
  Stores 4 bytes to [0x1010] +0x95dc through base s0 (`sw` at 0xda9f178).
  Stores 4 bytes to [0x1010] +0x95d8 through base s0 (`sw` at 0xda9f180).
  Stores 4 bytes to [0x1010] +0x95d4 through base s0 (`sw` at 0xda9f188).
  Stores 4 bytes to [0x1010] +0x95d0 through base s0 (`sw` at 0xda9f19c).
  Stores 4 bytes to [0x1010] +0x95cc through base s0 (`sw` at 0xda9f1b4).
  Stores 4 bytes to [0x1010] +0x9750 through base s0 (`sw` at 0xda9f1b8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f1bc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f1c0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f1c4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f1c8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f1cc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f1d0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f1d8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f1e0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f1e8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f1f0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f1f8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f204).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f210).
  Stores 4 bytes to [0x1010] +0x9750 through base s0 (`sw` at 0xda9f214).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f218).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f21c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f220).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f224).
  Stores 4 bytes to [0x1010] +0x9624 through base s0 (`sw` at 0xda9f228).
  Stores 4 bytes to [0x1010] +0x9628 through base s0 (`sw` at 0xda9f230).
  Stores 4 bytes to [0x1010] +0x95bc through base s0 (`sw` at 0xda9f238).
  Stores 4 bytes to [0x1010] +0x95c0 through base s0 (`sw` at 0xda9f240).
  Stores 4 bytes to [0x1010] +0x95c4 through base s0 (`sw` at 0xda9f248).
  Stores 4 bytes to [0x1010] +0x95c8 through base s0 (`sw` at 0xda9f250).
  Stores 4 bytes to [0x1010] +0x7b40 through base s1 (`sw` at 0xda9f254).
  Stores 4 bytes to [0x1010] +0x7b44 through base s1 (`sw` at 0xda9f25c).
  Stores 4 bytes to [0x1010] +0x168d0 through base s0 (`sw` at 0xda9f270).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda9f278).
  Stores 4 bytes to [0x1010] +0x7b7c through base s1 (`sw` at 0xda9f2a0).
  Stores 4 bytes to [0x1010] +0x168d0 through base s0 (`sw` at 0xda9f2ac).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda9f2b0).
  Stores 4 bytes to [0x1010] +0xa118 through base s0 (`sw` at 0xda9f328).
  Stores 4 bytes to [0x1010] +0x9614 through base s0 (`sw` at 0xda9f330).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f33c).
  Stores 4 bytes to [0x1010] +0x9618 through base s0 (`sw` at 0xda9f340).
  Stores 4 bytes to [0x1010] +0x9600 through base s0 (`swc1` at 0xda9f344).
  Stores 4 bytes to [0x1010] +0x95f4 through base s0 (`swc1` at 0xda9f348).
  Stores 4 bytes to [0x1010] +0x95f0 through base s0 (`swc1` at 0xda9f34c).
  Stores 4 bytes to [0x1010] +0x95ec through base s0 (`swc1` at 0xda9f350).
  Stores 4 bytes to [0x1010] +0x95e8 through base s0 (`swc1` at 0xda9f354).
  Stores 4 bytes to [0x1010] +0x95e4 through base s0 (`swc1` at 0xda9f358).
  Stores 4 bytes to [0x1010] +0x9610 through base s0 (`sw` at 0xda9f360).
  Stores 4 bytes to [0x1010] +0x9608 through base s0 (`swc1` at 0xda9f378).
  Stores 4 bytes to [0x1010] +0x9604 through base s0 (`swc1` at 0xda9f37c).
  Stores 4 bytes to [0x1010] +0x95fc through base s0 (`swc1` at 0xda9f380).
  Stores 4 bytes to [0x1010] +0x95f8 through base s0 (`swc1` at 0xda9f384).
  Stores 4 bytes to [0x1010] +0x960c through base s0 (`sw` at 0xda9f38c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f3ac).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f3b8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f3c4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9f3cc).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9f3d4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9f3dc).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9f3e4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9f3ec).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9f3f4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9f3fc).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9f404).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9f410).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xda9f420).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f428).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f42c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f434).
  Stores 4 bytes to [0x1010] +0x9620 through base a7 (`sw` at 0xda9f43c).
  Stores 4 bytes to [0x1010] +0x961c through base a7 (`sw` at 0xda9f448).
  Stores 4 bytes to [0x1010] +0x9750 through base a6 (`sw` at 0xda9f474).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f480).
  Stores 4 bytes to [0x1010] +0x7b40 through base s1 (`sw` at 0xda9f4e0).
  Stores 4 bytes to [0x1010] +0x7b44 through base s1 (`sw` at 0xda9f4e4).
  Stores 4 bytes to [0x1010] +0x9750 through base s0 (`sw` at 0xda9f4f4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f500).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f50c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f514).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f518).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f524).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f52c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f534).
  Stores 4 bytes to [0x1010] +0x168d4 through base s0 (`sw` at 0xda9f554).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda9f558).
  Stores 4 bytes to [0x1010] +0x168d0 through base s0 (`sw` at 0xda9f5cc).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda9f5d8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f5ec).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f5f8).
  Stores 4 bytes to [0x1010] +0x7b1c through base s1 (`sw` at 0xda9f644).
  Stores 4 bytes to [0x1010] +0x7b54 through base s1 (`sw` at 0xda9f64c).
  Stores 4 bytes to [0x1010] +0x7b58 through base s1 (`sw` at 0xda9f654).
  Stores 4 bytes to [0x1010] +0x7b5c through base s1 (`sw` at 0xda9f65c).
  Stores 4 bytes to [0x1010] +0x7b7c through base s1 (`sw` at 0xda9f664).
  Stores 4 bytes to [0x1010] +0x168d0 through base s0 (`sw` at 0xda9f670).
  Stores 4 bytes to abs 0x1018 through base zero (`sw` at 0xda9f678).
  Stores 4 bytes to [0x1010] +0x9600 through base s0 (`swc1` at 0xda9f688).
  Stores 4 bytes to [0x1010] +0x95f4 through base s0 (`swc1` at 0xda9f68c).
  Stores 4 bytes to [0x1010] +0x9608 through base s0 (`swc1` at 0xda9f69c).
  Stores 4 bytes to [0x1010] +0x9604 through base s0 (`swc1` at 0xda9f6a0).
  Stores 4 bytes to [0x1010] +0x95fc through base s0 (`swc1` at 0xda9f6a4).
  Stores 4 bytes to [0x1010] +0x95f8 through base s0 (`swc1` at 0xda9f6a8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f8ac).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xda9f8b8).
  Calls `memset` via got with a0=sp-656, a1=0x0, a2=0x20, a3=a3 at entry (arg3) (`jalr` at 0xda9e2e0).
  Calls `memset` via got with a0=sp-624, a1=0x0, a2=0x14, a3=? (`jalr` at 0xda9e2f8).
  Calls `ceilf` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xda9e318).
  Calls `ceilf` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xda9e338).
  Calls `ceilf` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xda9e35c).
  Calls `ceilf` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xda9e380).
  Calls `__glOdysseyImageCalcXferWriteParams [0xdaa1710]` via direct with a0=[a1+8], a1=[a1+12], a2=[a0+48], a3=sp-624 (`bgezall` at 0xda9e3e4).
  Calls `__glSpecElementsPerGroup [0xdaf13d0]` via register-constant with a0=[a1+8], a1=[a1+12], a2=?, a3=? (`jalr` at 0xda9e430).
  Calls `__glSpecBytesPerElement [0xdaf15a0]` via register-constant with a0=[a1+12], a1=?, a2=?, a3=? (`jalr` at 0xda9e440).
  Calls `ceilf` via got with a0=?, a1=?, a2=[a1+16], a3=? (`jalr` at 0xda9e4b4).
  Calls `(unnamed) [0xdaa2ab0]` via direct with a0=[a0+40], a1=[a0+44], a2=?, a3=one of 0x0, 0x1, a4=sp-672, a5=sp-668 (`bgezall` at 0xda9e69c).
  Calls `__glOdysseyOpenPMObjWriteReference [0xdaaab50]` via register-constant with a0=[0x1010], a1=[a0+12], a2=[a0+16], a3=sp-664 (`jalr` at 0xda9e788).
  Calls `(unnamed) [0xdaa3150]` via direct with a0=?, a1=?, a2=?, a3=?, a4=0x1 (`bgezall` at 0xda9e9b0).
  Calls `__glOdysseyImageCalcPixelModeFields [0xdaa2fe0]` via direct with a0=[0x1010]+38332, a1=a0 at entry (arg0), a2=?, a3=0x13c00, a4=0x10046, a5=0xfa, a6=0x10443, a7=[[0x1010]+38364] (`bgezall` at 0xda9ebf0).
  Calls `__glOdysseyValidateHardware [0xda57700]` via register-constant with a0=[0x1010], a1=?, a2=?, a3=?, a5=[[0x1010]+92368] (`jalr` at 0xda9edb8).
  Calls `(unnamed) [0xda9d980]` via direct with a0=?, a1=?, a2=sp-496, a3=0xa, a4=0x14400 (`bgezall` at 0xda9f054).
  Calls `__glOdysseyClosePMObjWriteReference [0xdaaadc0]` via register-constant with a0=[0x1010], a1=[a0+12], a2=[a0+16], a3=? (`jalr` at 0xda9f110).
  Calls `(unnamed) [0xda9d980]` via direct with a0=?, a1=?, a2=sp-656, a3=?, a7=[0x1010]+65536; fp f12=[[0x1010]+38376], f13=[[0x1010]+38372] (`bgezall` at 0xda9f444).
  Calls `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ [0xdaa5ab0]` via direct with a0=?, a1=[[0x1010]+31552], a2=[[0x1010]+31556], a3=?, a5=[[0x1010]+3217]:1 (`bgezall` at 0xda9f584).
  Calls `(unnamed) [0xdaa3df0]` via direct with a0=?, a1=[0x1010]+31516, a2=[0x1010]+31572, a3=[0x1010]+31576, a4=[0x1010]+31580, a5=[0x1010]+31612 (`bgezall` at 0xda9f5ac).
  Calls `__glOdysseyAssignToPMObj [0xdaaa370]` via register-constant with a0=[0x1010], a1=[a0+12], a2=[a0+16], a3=?, a5=((([a0+50]:2 << 0x10) | one of 0x0, 0x2) | 0x9), a6=0x0, a7=sp-656 (`jalr` at 0xda9f6e4).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0xda9f6fc).
  Calls `__glOdysseyAssignToPMObj [0xdaaa370]` via register-constant with a0=[0x1010], a1=[a0+12], a2=[a0+16], a3=?, a5=(((([a0+50]:2 << 0x10) | one of 0x0, 0x8) | one of 0x0, 0x2) | 0x1), a6=0x0, a7=sp-656 (`jalr` at 0xda9f78c).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0xda9f7a0).
  Calls `(unknown callee)` via register with a0=[0x1010], a1=0xdbd30e8, a2=?, a3=? (`jalr` at 0xda9f800).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0xda9f80c).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x501, a1=?, a2=?, a3=? (`jalr` at 0xda9f85c).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0xda9f8c0).
  Calls `__glOdysseyIoctl [0xdabc870]` via register-constant with a0=[0x1010], a1=0x6f64000d, a2=sp-520, a3=?, a5=0x100000, a6=[[0x1010]+31556] (`jalr` at 0xda9f960).
  The `beq` at 0xda9e294 is taken when at(=[[0x1010]+138708]) == 0 -> outside and falls through when at(=[[0x1010]+138708]) != 0 -> B1.
  The `bne` at 0xda9e2a4 is taken when (v1(=[[0x1010]+1816]) & 0x2) != 0 -> B4 and falls through when (v1(=[[0x1010]+1816]) & 0x2) == 0 -> B2.
  The `beq` at 0xda9e2b0 is taken when a5(=[[0x1010]+138704]) == 0 -> B5 and falls through when a5(=[[0x1010]+138704]) != 0 -> B3.
  The `beq` at 0xda9e2c0 is taken when (a6(=[[0x1010]+1816]) & 0x1) == 0 -> B5 and falls through when (a6(=[[0x1010]+1816]) & 0x1) != 0 -> B4.
  The `beq` at 0xda9e3f0 is taken when at(?) == 0 -> B117 and falls through when at(?) != 0 -> B6.
  The `bne` at 0xda9e3fc is taken when v1(=[a0+48]) != a5(?) -> B9 and falls through when v1(=[a0+48]) == a5(?) -> B7.
  The `beq` at 0xda9e408 is taken when a6(=[a0+10]:1) == 0 -> B10 and falls through when a6(=[a0+10]:1) != 0 -> B8.
  The `beq` at 0xda9e41c is taken when at(=[[0x1010]+72640]) == v1(=[[0x1010]+72852]) -> B11 and falls through when at(=[[0x1010]+72640]) != v1(=[[0x1010]+72852]) -> B9.
  The `beq` at 0xda9e470 is taken when a0(=[a1+24]) >= s3(?) (unsigned) -> B13 and falls through when a0(=[a1+24]) < s3(?) (unsigned) -> B12.
  The `beq` at 0xda9e4d4 is taken when a5(=[a1]:1) == 0 -> B95 and falls through when a5(=[a1]:1) != 0 -> B14.
  The `beq` at 0xda9e540 is taken when at(=0x9000) >= v1(?) (unsigned) -> outside and falls through when at(=0x9000) < v1(?) (unsigned) -> B15.
  The `bne` at 0xda9e570 is taken when s7(?) < a6(?) (unsigned) -> outside and falls through when s7(?) >= a6(?) (unsigned) -> B16.
  The `bne` at 0xda9e578 is taken when a6(?) != 0 -> B96 and falls through when a6(?) == 0 -> B17.
  The `beq` at 0xda9e584 is taken when a2(=one of 0x0, 0x1) == 0 -> B21 and falls through when a2(=one of 0x0, 0x1) != 0 -> B18.
  The `beq` at 0xda9e58c is taken when a1(=[a0+8]:1) == 0 -> outside and falls through when a1(=[a0+8]:1) != 0 -> B19.
  The `beq` at 0xda9e5a4 is taken when (a2(=[[0x1010]+42488]) & 0x1000) == 0 -> B21 and falls through when (a2(=[[0x1010]+42488]) & 0x1000) != 0 -> B20.
  The `beq` at 0xda9e5cc is taken when a1(=[a0+8]:1) == 0 -> outside and falls through when a1(=[a0+8]:1) != 0 -> B22.
  The `beq` at 0xda9e5e0 is taken when (a2(=[[0x1010]+42488]) & 0x1000) == 0 -> B32 and falls through when (a2(=[[0x1010]+42488]) & 0x1000) != 0 -> B23.
  The `beq` at 0xda9e5f8 is taken when a1(=[a0+8]:1) == 0 -> outside and falls through when a1(=[a0+8]:1) != 0 -> B24.
  The `beq` at 0xda9e60c is taken when a1(=[[0x1010]+1888]) == t0(=0x405) -> B27 and falls through when a1(=[[0x1010]+1888]) != t0(=0x405) -> B25.
  The `beq` at 0xda9e618 is taken when a1(=[[0x1010]+1888]) == at(=0x402) -> B27 and falls through when a1(=[[0x1010]+1888]) != at(=0x402) -> B26.
  The `bne` at 0xda9e620 is taken when a1(=[[0x1010]+1888]) != v1(=0x403) -> B28 and falls through when a1(=[[0x1010]+1888]) == v1(=0x403) -> B27.
  The `beq` at 0xda9e630 is taken when a1(=[[0x1010]+1888]) == a5(=0x407) -> B31 and falls through when a1(=[[0x1010]+1888]) != a5(=0x407) -> B29.
  The `beq` at 0xda9e638 is taken when a1(=[[0x1010]+1888]) == a6(=0x401) -> B31 and falls through when a1(=[[0x1010]+1888]) != a6(=0x401) -> B30.
  The `bne` at 0xda9e640 is taken when a1(=[[0x1010]+1888]) != at(=0x403) -> B34 and falls through when a1(=[[0x1010]+1888]) == at(=0x403) -> B31.
  The `bne` at 0xda9e650 is taken when a1(=[a0+8]:1) != 0 -> B24 and falls through when a1(=[a0+8]:1) == 0 -> B33.
  The `beq` at 0xda9e664 is taken when a1(=[a1+8]) == v1(=0x1902) -> B86 and falls through when a1(=[a1+8]) != v1(=0x1902) -> B35.
  The `beq` at 0xda9e66c is taken when a1(=[a1+8]) == a5(=0x1901) -> B86 and falls through when a1(=[a1+8]) != a5(=0x1901) -> B36.
  The `beq` at 0xda9e6a4 is taken when v0(=ret(0xdaa2ab0)) == 0 -> B110 and falls through when v0(=ret(0xdaa2ab0)) != 0 -> B38.
  The `beq` at 0xda9e6b4 is taken when at(=[a0+4]) == v1(=[a1+4]) -> B41 and falls through when at(=[a0+4]) != v1(=[a1+4]) -> B39.
  The `bne` at 0xda9e6bc is taken when s0(?) != 0 -> B43 and falls through when s0(?) == 0 -> B40.
  The `beq` at 0xda9e6c8 is taken when s0(?) == 0 -> B44 and falls through when s0(?) != 0 -> B42.
  The `beq` at 0xda9e798 is taken when (v0(=ret(__glOdysseyOpenPMObjWriteReference)) & 0xff) == 0 -> B116 and falls through when (v0(=ret(__glOdysseyOpenPMObjWriteReference)) & 0xff) != 0 -> B45.
  The `beq` at 0xda9e9f4 is taken when at(=[[0x1010]+1188]:1) == 0 -> outside and falls through when at(=[[0x1010]+1188]:1) != 0 -> B46.
  The `beq` at 0xda9ea00 is taken when a5(=[a1]:1) == 0 -> B97 and falls through when a5(=[a1]:1) != 0 -> B47.
  The `beq` at 0xda9ea70 is taken when s0(?) == 0 -> B61 and falls through when s0(?) != 0 -> B48.
  The `beq` at 0xda9eb38 is taken when a2(=[[0x1010]+38736]) == 0 -> B50 and falls through when a2(=[[0x1010]+38736]) != 0 -> B49.
  The `beq` at 0xda9ec94 is taken when at(=[a0+8]:1) == 0 -> outside and falls through when at(=[a0+8]:1) != 0 -> B51.
  The `beq` at 0xda9eca4 is taken when a6(=a4) == at(=0x1) -> B98 and falls through when a6(=a4) != at(=0x1) -> B52.
  The `beq` at 0xda9ed08 is taken when v1(=[a0+10]:1) == 0 -> B54 and falls through when v1(=[a0+10]:1) != 0 -> B53.
  The `beq` at 0xda9ed2c is taken when a6(?) == 0 -> B57 and falls through when a6(?) != 0 -> B55.
  The `beq` at 0xda9eda8 is taken when a5(=[[0x1010]+92368]) == 0 -> B59 and falls through when a5(=[[0x1010]+92368]) != 0 -> B58.
  The `beq` at 0xda9edc0 is taken when s0(?) == 0 -> B61 and falls through when s0(?) != 0 -> B60.
  The `beq` at 0xda9edf0 is taken when a5(?) == 0 -> B65 and falls through when a5(?) != 0 -> B62.
  The `beq` at 0xda9ee04 is taken when a6(=[[0x1010]+38736]) == 0 -> B64 and falls through when a6(=[[0x1010]+38736]) != 0 -> B63.
  The `beq` at 0xda9ee60 is taken when v1(?) == 0 -> B87 and falls through when v1(?) != 0 -> B66.
  The `beq` at 0xda9eeac is taken when a6(?) == 0 -> B112 and falls through when a6(?) != 0 -> B67.
  The `blez` at 0xda9eef4 is taken when s4(?) <= 0 (signed) -> B70 and falls through when s4(?) > 0 (signed) -> B68.
  The `bgtz` at 0xda9f074 is taken when s4(?) > 0 (signed) -> B69 and falls through when s4(?) <= 0 (signed) -> B70.
  The `beq` at 0xda9f088 is taken when a6(?) == 0 -> B75 and falls through when a6(?) != 0 -> B72.
  The `beq` at 0xda9f0a4 is taken when a5(=[[0x1010]+38736]) == 0 -> B74 and falls through when a5(=[[0x1010]+38736]) != 0 -> B73.
  The `beq` at 0xda9f11c is taken when (v0(=ret(__glOdysseyClosePMObjWriteReference)) & 0xff) == 0 -> B119 and falls through when (v0(=ret(__glOdysseyClosePMObjWriteReference)) & 0xff) != 0 -> B76.
  The `beq` at 0xda9f124 is taken when s0(?) == 0 -> B85 and falls through when s0(?) != 0 -> B77.
  The `beq` at 0xda9f15c is taken when at(?) == 0 -> outside and falls through when at(?) != 0 -> B78.
  The `beq` at 0xda9f16c is taken when (at(=[[0x1010]+31376]) & 0x400) == 0 -> B109 and falls through when (at(=[[0x1010]+31376]) & 0x400) != 0 -> B79.
  The `beq` at 0xda9f1b0 is taken when a5(=[[0x1010]+38736]) == 0 -> B81 and falls through when a5(=[[0x1010]+38736]) != 0 -> B80.
  The `beq` at 0xda9f280 is taken when at(=[a0+8]:1) == 0 -> B83 and falls through when at(=[a0+8]:1) != 0 -> B82.
  The `beq` at 0xda9f28c is taken when a5(=a4) == a6(=0x1) -> B111 and falls through when a5(=a4) != a6(=0x1) -> B83.
  The `beq` at 0xda9f298 is taken when at(=[a0+10]:1) == 0 -> B85 and falls through when at(=[a0+10]:1) != 0 -> B84.
  The `beq` at 0xda9f308 is taken when s0(?) == 0 -> B90 and falls through when s0(?) != 0 -> B88.
  The `beq` at 0xda9f338 is taken when a6(?) == 0 -> B118 and falls through when a6(?) != 0 -> B89.
  The `beq` at 0xda9f398 is taken when a6(?) == 0 -> B114 and falls through when a6(?) != 0 -> B91.
  The `beq` at 0xda9f44c is taken when s0(?) == 0 -> B75 and falls through when s0(?) != 0 -> B93.
  The `beq` at 0xda9f458 is taken when at(?) == 0 -> B75 and falls through when at(?) != 0 -> B94.
  The `bne` at 0xda9f4cc is taken when a1(=[[0x1010]+31552]) != a4(=[[0x1010]+91728]) -> B100 and falls through when a1(=[[0x1010]+31552]) == a4(=[[0x1010]+91728]) -> B99.
  The `beq` at 0xda9f4d8 is taken when a2(=[[0x1010]+31556]) == a3(=[[0x1010]+91732]) -> B104 and falls through when a2(=[[0x1010]+31556]) != a3(=[[0x1010]+91732]) -> B100.
  The `beq` at 0xda9f4ec is taken when v1(=[[0x1010]+38736]) == 0 -> B102 and falls through when v1(=[[0x1010]+38736]) != 0 -> B101.
  The `beq` at 0xda9f544 is taken when (v1(=[[0x1010]+31376]) & a5(=0x100000)) == 0 -> B120 and falls through when (v1(=[[0x1010]+31376]) & a5(=0x100000)) != 0 -> B103.
  The `beq` at 0xda9f56c is taken when a5(=[[0x1010]+3217]:1) == 0 -> B107 and falls through when a5(=[[0x1010]+3217]:1) != 0 -> B105.
  The `beq` at 0xda9f57c is taken when (a6(=[[0x1010]+1792]) & 0x10) == 0 -> B107 and falls through when (a6(=[[0x1010]+1792]) & 0x10) != 0 -> B106.
  The `beq` at 0xda9f5d4 is taken when at(?) == 0 -> B57 and falls through when at(?) != 0 -> B108.
  The `bne` at 0xda9f6f0 is taken when (v0(=ret(__glOdysseyAssignToPMObj)) & 0xff) != 0 -> B71 and falls through when (v0(=ret(__glOdysseyAssignToPMObj)) & 0xff) == 0 -> B113.
  The `bne` at 0xda9f798 is taken when (v0(=ret(__glOdysseyAssignToPMObj)) & 0xff) != 0 -> B92 and falls through when (v0(=ret(__glOdysseyAssignToPMObj)) & 0xff) == 0 -> B115.
  The routine returns v0 = ? (`jr` at 0xda9f2e8).
  The routine returns v0 = ret(0xdaa2ab0) (`jr` at 0xda9f63c).
  The routine returns v0 = ret(__glSetError) (`jr` at 0xda9f73c).
  The routine returns v0 = ret(__glSetError) (`jr` at 0xda9f7e0).
  The routine returns v0 = ret(__glSetError) (`jr` at 0xda9f84c).
  The routine returns v0 = ret(__glSetError) (`jr` at 0xda9f89c).
  The routine returns v0 = ret(__glSetError) (`jr` at 0xda9f900).

- `__glOdysseyInitLighting` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdaa5b30, 780 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x168dc through base a3 (`sw` at 0xdaa5b54).
  Stores 4 bytes to a0 (arg0 at entry) +0x168d8 through base a3 (`sw` at 0xdaa5b58).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5b68).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5b6c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5b70).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5b74).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5b7c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5b84).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5b88).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5b8c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5b94).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5b9c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5ba0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5ba4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5ba8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5bb0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5bb8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5bbc).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5bc0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5bc4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5bcc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5bd4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5bd8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5bdc).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5be0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5be8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5bf0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5bf4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5bf8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5bfc).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c04).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5c0c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c10).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c14).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c18).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c20).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5c28).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c2c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c30).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c34).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c3c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5c44).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c48).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c4c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c50).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c58).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5c60).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c64).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c68).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c6c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c70).
  Stores 4 bytes to a0 (arg0 at entry) +0xa138 through base a3 (`sw` at 0xdaa5c7c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5c88).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5c90).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c94).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c98).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5c9c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5ca0).
  Stores 4 bytes to a0 (arg0 at entry) +0xa138 through base a3 (`sw` at 0xdaa5cac).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5cb4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5cb8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5cbc).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5cc0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5cc4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5cc8).
  Stores 4 bytes to a0 (arg0 at entry) +0xa13c through base a3 (`sw` at 0xdaa5cd0).
  Stores 4 bytes to a0 (arg0 at entry) +0xa118 through base a3 (`sw` at 0xdaa5cdc).
  Stores 4 bytes to a0 (arg0 at entry) +0xa0e0 through base a3 (`swc1` at 0xdaa5cf4).
  Stores 4 bytes to a0 (arg0 at entry) +0xa0dc through base a3 (`swc1` at 0xdaa5cf8).
  Stores 4 bytes to a0 (arg0 at entry) +0xa0d8 through base a3 (`swc1` at 0xdaa5cfc).
  Stores 4 bytes to a0 (arg0 at entry) +0xa0d4 through base a3 (`swc1` at 0xdaa5d00).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5d14).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5d3c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5d44).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5d4c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5d54).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5d5c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdaa5d70).
  Stores 4 bytes to a0 (arg0 at entry) +0xa0f8 through base a3 (`sw` at 0xdaa5d7c).
  Stores 4 bytes to a0 (arg0 at entry) +0xa138 through base a3 (`sw` at 0xdaa5d80).
  Stores 4 bytes to a0 (arg0 at entry) +0xa0f4 through base a3 (`sw` at 0xdaa5d88).
  Stores 4 bytes to a0 (arg0 at entry) +0xa13c through base a3 (`sw` at 0xdaa5d8c).
  Stores 4 bytes to a0 (arg0 at entry) +0xa118 through base a3 (`sw` at 0xdaa5d90).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5d98).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5db4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5dd8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5dfc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaa5e24).
  Stores 4 bytes to a0 (arg0 at entry) +0xa0e0 through base a3 (`swc1` at 0xdaa5e28).
  Stores 4 bytes to a0 (arg0 at entry) +0xa0dc through base a3 (`swc1` at 0xdaa5e2c).
  Stores 4 bytes to a0 (arg0 at entry) +0xa0d8 through base a3 (`swc1` at 0xdaa5e30).
  Stores 4 bytes to a0 (arg0 at entry) +0xa0d4 through base a3 (`swc1` at 0xdaa5e38).
  The `beq` at 0xdaa5cec is taken when v0(=[a0+3212]:1) == 0 -> B3 and falls through when v0(=[a0+3212]:1) != 0 -> B1.
  The routine returns v0 = ? (`jr` at 0xdaa5e20).

- `__glOdylc_Normal3b` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdaa87a0, 256 bytes) Inferred.
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdaa8844).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdaa8848).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdaa884c).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdaa8850).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xdaa8858).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xdaa8864).
  Stores 4 bytes to abs 0x1034 through base zero (`sw` at 0xdaa8874).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xdaa8880).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xdaa889c).
  Calls `__glSPDlistSpace [0xdadafc0]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdaa87f4).
  The `beq` at 0xdaa87d8 is taken when v0(=[0x1028]) >= at(?) (signed) -> B3 and falls through when v0(=[0x1028]) < at(?) (signed) -> B1.
  The `beq` at 0xdaa880c is taken when v0(=ret(__glSPDlistSpace)) == 0 -> B4 and falls through when v0(=ret(__glSPDlistSpace)) != 0 -> B2.
  The routine returns v0 = [0x1034]+4 (`jr` at 0xdaa8870).
  The routine returns v0 = ret(__glSPDlistSpace) (`jr` at 0xdaa8898).

- `__glOdylc_Normal3s` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdaa8fe0, 256 bytes) Inferred.
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdaa9084).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdaa9088).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdaa908c).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdaa9090).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xdaa9098).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xdaa90a4).
  Stores 4 bytes to abs 0x1034 through base zero (`sw` at 0xdaa90b4).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xdaa90c0).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xdaa90dc).
  Calls `__glSPDlistSpace [0xdadafc0]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdaa9034).
  The `beq` at 0xdaa9018 is taken when v0(=[0x1028]) >= at(?) (signed) -> B3 and falls through when v0(=[0x1028]) < at(?) (signed) -> B1.
  The `beq` at 0xdaa904c is taken when v0(=ret(__glSPDlistSpace)) == 0 -> B4 and falls through when v0(=ret(__glSPDlistSpace)) != 0 -> B2.
  The routine returns v0 = [0x1034]+4 (`jr` at 0xdaa90b0).
  The routine returns v0 = ret(__glSPDlistSpace) (`jr` at 0xdaa90d8).

- `__glOdysseyCreatePMObj` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdaa9e70, 480 bytes) Inferred.
  Stores 4 bytes to ? (base unknown) through base a4 (`sw` at 0xdaa9ed8).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s1 (`sw` at 0xdaa9f80).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s1 (`sw` at 0xdaa9ff8).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdaaa028).
  Calls `__glOdysseyIoctl [0xdabc870]` via register-constant with a0=a0 at entry (arg0), a1=0x6f640001, a2=sp-160, a3=? (`jalr` at 0xdaa9ef0).
  Calls `(unnamed) [0xdaabad0]` via direct with a0=[a0+93092], a1=?, a2=?, a3=[a2] (`bgezall` at 0xdaa9f38).
  Calls `(unnamed) [0xdaabaf0]` via direct with a0=?, a1=?, a2=?, a3=? (`bgezall` at 0xdaa9f50).
  Calls `(unnamed) [0xdaabaf0]` via direct with a0=?, a1=?, a2=?, a3=? (`bgezall` at 0xdaa9fa8).
  Calls `(unnamed) [0xdaab0a0]` via direct with a0=ret(0xdaabaf0), a1=[a2], a2=0x0, a3=? (`bgezall` at 0xdaa9fc4).
  Calls `(unnamed) [0xdaab590]` via direct with a0=ret(0xdaabaf0), a1=ret(0xdaab0a0), a2=?, a3=? (`bgezall` at 0xdaa9fe0).
  The `bgtz` at 0xdaa9ed4 is taken when a6(?) > 0 (signed) -> B1 and falls through when a6(?) <= 0 (signed) -> B2.
  The `beq` at 0xdaa9f08 is taken when v0(=ret(__glOdysseyIoctl)) == 0 -> B14 and falls through when v0(=ret(__glOdysseyIoctl)) != 0 -> B3.
  The `bne` at 0xdaa9f10 is taken when a0(=-0x1) != a1(?) -> B9 and falls through when a0(=-0x1) == a1(?) -> B4.
  The `beq` at 0xdaa9f1c is taken when a3(=[a2]) == a0(=-0x1) -> B9 and falls through when a3(=[a2]) != a0(=-0x1) -> B5.
  The `beq` at 0xdaa9f60 is taken when v0(=ret(0xdaabaf0)) == 0 -> B8 and falls through when v0(=ret(0xdaabaf0)) != 0 -> B6.
  The `beq` at 0xdaa9fb0 is taken when v0(=ret(0xdaabaf0)) == 0 -> B7 and falls through when v0(=ret(0xdaabaf0)) != 0 -> B12.
  The `beq` at 0xdaa9fcc is taken when v0(=ret(0xdaab0a0)) == 0 -> B11 and falls through when v0(=ret(0xdaab0a0)) != 0 -> B13.
  The `beq` at 0xdaa9ff0 is taken when a0(=-0x1) == a1(?) -> B18 and falls through when a0(=-0x1) != a1(?) -> B15.
  The `beq` at 0xdaaa010 is taken when (at(?) & 0x2) == 0 -> B17 and falls through when (at(?) & 0x2) != 0 -> B16.
  The routine returns v0 = 0x0 (`jr` at 0xdaa9f98).
  The routine returns v0 = 0x1 (`jr` at 0xdaaa030).
  The routine returns v0 = 0x0 (`jr` at 0xdaaa048).

- `__glOdysseyDestroyPMObjGroup` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdaaa050, 328 bytes) Inferred.
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base s3 (`sw` at 0xdaaa180).
  Calls `(unnamed) [0xdaabad0]` via direct with a0=[a0+93092], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xdaaa090).
  Calls `(unnamed) [0xdaabaf0]` via direct with a0=[a0+93092], a1=?, a2=?, a3=? (`bgezall` at 0xdaaa0a8).
  Calls `(unnamed) [0xdaabaf0]` via direct with a0=[a0+93092], a1=?, a2=?, a3=? (`bgezall` at 0xdaaa0d8).
  Calls `(unnamed) [0xdaab0a0]` via direct with a0=ret(0xdaabaf0), a1=[a1], a2=0x0, a3=? (`bgezall` at 0xdaaa0f4).
  Calls `(unnamed) [0xdaab590]` via direct with a0=ret(0xdaabaf0), a1=ret(0xdaab0a0), a2=?, a3=? (`bgezall` at 0xdaaa108).
  Calls `__glOdysseyIoctl [0xdabc870]` via register-constant with a0=a0 at entry (arg0), a1=0x6f640002, a2=sp-160, a3=? (`jalr` at 0xdaaa144).
  The `beq` at 0xdaaa0b8 is taken when v0(=ret(0xdaabaf0)) == 0 -> B7 and falls through when v0(=ret(0xdaabaf0)) != 0 -> B1.
  The `beq` at 0xdaaa0e0 is taken when v0(=ret(0xdaabaf0)) == 0 -> B6 and falls through when v0(=ret(0xdaabaf0)) != 0 -> B4.
  The `beq` at 0xdaaa0fc is taken when v0(=ret(0xdaab0a0)) == 0 -> B2 and falls through when v0(=ret(0xdaab0a0)) != 0 -> B5.
  The `beq` at 0xdaaa154 is taken when v0(=ret(__glOdysseyIoctl)) == 0 -> B9 and falls through when v0(=ret(__glOdysseyIoctl)) != 0 -> B8.
  The routine returns v0 = 0x0 (`jr` at 0xdaaa16c).
  The routine returns v0 = 0x1 (`jr` at 0xdaaa190).

- `__glOdysseyDestroyPMObj` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdaaa1a0, 340 bytes) Inferred.
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base v1 (`sw` at 0xdaaa2f0).
  Calls `__glOdysseyIoctl [0xdabc870]` via register-constant with a0=a0 at entry (arg0), a1=0x6f640002, a2=sp-160, a3=0x1 (`jalr` at 0xdaaa204).
  Calls `(unnamed) [0xdaabad0]` via direct with a0=[a0+93092], a1=0x10000, a2=?, a3=? (`bgezall` at 0xdaaa254).
  Calls `(unnamed) [0xdaabaf0]` via direct with a0=?, a1=?, a2=?, a3=? (`bgezall` at 0xdaaa268).
  Calls `(unnamed) [0xdaabaf0]` via direct with a0=?, a1=?, a2=?, a3=? (`bgezall` at 0xdaaa290).
  Calls `(unnamed) [0xdaab0a0]` via direct with a0=ret(0xdaabaf0), a1=[a1], a2=0x0, a3=? (`bgezall` at 0xdaaa2b4).
  Calls `(unnamed) [0xdaab590]` via direct with a0=?, a1=ret(0xdaab0a0), a2=?, a3=? (`bgezall` at 0xdaaa2d0).
  The `bltz` at 0xdaaa1cc is taken when a2 < 0 (signed) -> B2 and falls through when a2 >= 0 (signed) -> B1.
  The `bne` at 0xdaaa1d8 is taken when a4(?) != 0 -> B3 and falls through when a4(?) == 0 -> B2.
  The `beq` at 0xdaaa20c is taken when v0(=ret(__glOdysseyIoctl)) == 0 -> B5 and falls through when v0(=ret(__glOdysseyIoctl)) != 0 -> B4.
  The `beq` at 0xdaaa228 is taken when a3(?) == 0 -> B7 and falls through when a3(?) != 0 -> B6.
  The `beq` at 0xdaaa274 is taken when v0(=ret(0xdaabaf0)) == 0 -> B15 and falls through when v0(=ret(0xdaabaf0)) != 0 -> B8.
  The `beq` at 0xdaaa298 is taken when v0(=ret(0xdaabaf0)) == 0 -> B14 and falls through when v0(=ret(0xdaabaf0)) != 0 -> B11.
  The `beq` at 0xdaaa2bc is taken when v0(=ret(0xdaab0a0)) == 0 -> B10 and falls through when v0(=ret(0xdaab0a0)) != 0 -> B13.
  The routine returns v0 = 0x0 (`jr` at 0xdaaa1e8).
  The routine returns v0 = 0x0 (`jr` at 0xdaaa21c).
  The routine returns v0 = 0x1 (`jr` at 0xdaaa234).

- `__glOdysseyAssignToPMObj` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdaaa370, 380 bytes) Inferred.
  Stores 4 bytes to a7 (arg7 at entry) +0x14 through base a1 (`sw` at 0xdaaa3ec).
  Stores 4 bytes to ? (base unknown) through base t1 (`sw` at 0xdaaa438).
  Stores 4 bytes to a0 (arg0 at entry) +0x21de0 through base t1 (`sw` at 0xdaaa4b4).
  Calls `bzero` via got with a0=sp-240, a1=0x50, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdaaa3c8).
  Calls `(unnamed) [0xdaaa300]` via direct with a0=sp-240, a1=a7 at entry (arg7), a2=sp-212, a3=? (`bgezall` at 0xdaaa450).
  Calls `__glOdysseyIoctl [0xdabc870]` via register-constant with a0=a0 at entry (arg0), a1=0x6f640006, a2=sp-240, a3=? (`jalr` at 0xdaaa474).
  The `bgtz` at 0xdaaa434 is taken when a0(?) > 0 (signed) -> B1 and falls through when a0(?) <= 0 (signed) -> B2.
  The `beq` at 0xdaaa45c is taken when v0(=ret(0xdaaa300)) == 0 -> B7 and falls through when v0(=ret(0xdaaa300)) != 0 -> B3.
  The `beq` at 0xdaaa494 is taken when v0(=ret(__glOdysseyIoctl)) == 0 -> B5 and falls through when v0(=ret(__glOdysseyIoctl)) != 0 -> B4.
  The routine returns v0 = one of 0x0, 0x1 (`jr` at 0xdaaa4c4).
  The routine returns v0 = 0x0 (`jr` at 0xdaaa4e4).

- `__glOdysseyReadFromPMObj` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdaaa4f0, 284 bytes) Inferred.
  Stores 4 bytes to a7 (arg7 at entry) +0x14 through base a7 (`sw` at 0xdaaa510).
  Stores 4 bytes to ? (base unknown) through base v1 (`sw` at 0xdaaa578).
  Stores 4 bytes to a0 (arg0 at entry) +0x21de0 through base at (`sw` at 0xdaaa5dc).
  Calls `(unnamed) [0xdaaa300]` via direct with a0=sp-176, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xdaaa588).
  Calls `__glOdysseyIoctl [0xdabc870]` via register-constant with a0=a0 at entry (arg0), a1=0x6f640006, a2=sp-176, a3=? (`jalr` at 0xdaaa5a8).
  The `bgtz` at 0xdaaa574 is taken when t2(?) > 0 (signed) -> B1 and falls through when t2(?) <= 0 (signed) -> B2.
  The `beq` at 0xdaaa590 is taken when v0(=ret(0xdaaa300)) == 0 -> B7 and falls through when v0(=ret(0xdaaa300)) != 0 -> B3.
  The `beq` at 0xdaaa5bc is taken when v0(=ret(__glOdysseyIoctl)) == 0 -> B5 and falls through when v0(=ret(__glOdysseyIoctl)) != 0 -> B4.
  The routine returns v0 = one of 0x0, 0x1 (`jr` at 0xdaaa5ec).
  The routine returns v0 = 0x0 (`jr` at 0xdaaa604).

- `__glOdysseySetProgram` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdaad4b0, 1208 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad4e0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad544).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad564).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad580).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad59c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad5b8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad5d4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad5fc).
  Stores 4 bytes to a0 (arg0 at entry) +0xa5c8 through base t2 (`sw` at 0xdaad600).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad674).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad690).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad6ac).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad6c8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad6e4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad700).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad72c).
  Stores 4 bytes to a0 (arg0 at entry) +0xa5cc through base t2 (`sw` at 0xdaad748).
  Stores 4 bytes to a0 (arg0 at entry) +0xa5d0 through base t2 (`sw` at 0xdaad758).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad788).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad7a8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad7c4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad7e0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad7fc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad818).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad844).
  Stores 4 bytes to a0 (arg0 at entry) +0xa140 through base t2 (`sw` at 0xdaad850).
  Stores 4 bytes to a0 (arg0 at entry) +0xa118 through base t2 (`sw` at 0xdaad874).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad880).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad8a4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad8a8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad8ac).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad8b0).
  Stores 4 bytes to a0 (arg0 at entry) +0xa140 through base t2 (`sw` at 0xdaad8b8).
  Stores 4 bytes to a0 (arg0 at entry) +0xa118 through base t2 (`sw` at 0xdaad8c0).
  Stores 4 bytes to a0 (arg0 at entry) +0xa11c through base t2 (`sw` at 0xdaad8c8).
  Stores 4 bytes to a0 (arg0 at entry) +0xa124 through base t2 (`sw` at 0xdaad8e0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad8e8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad904).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad928).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdaad950).
  The `beq` at 0xdaad4d4 is taken when at(=[a0+138732]:1) == 0 -> B2 and falls through when at(=[a0+138732]:1) != 0 -> B1.
  The `beq` at 0xdaad4fc is taken when v1(=[a0+42356]) == 0 -> B16 and falls through when v1(=[a0+42356]) != 0 -> B3.
  The `beq` at 0xdaad508 is taken when a3(=[a0+42444]) == 0 -> B6 and falls through when a3(=[a0+42444]) != 0 -> B4.
  The `bne` at 0xdaad510 is taken when a2(?) != 0 -> B6 and falls through when a2(?) == 0 -> B5.
  The `beq` at 0xdaad608 is taken when a5(=[((a1 << 0x5) + a0)+42380]) == 0 -> B15 and falls through when a5(=[((a1 << 0x5) + a0)+42380]) != 0 -> B7.
  The `beq` at 0xdaad618 is taken when a5(=[((a1 << 0x5) + a0)+42380]) == a3(=[a0+42444]) -> B13 and falls through when a5(=[((a1 << 0x5) + a0)+42380]) != a3(=[a0+42444]) -> B8.
  The `blez` at 0xdaad640 is taken when t1(?) <= 0 (signed) -> B12 and falls through when t1(?) > 0 (signed) -> B9.
  The `bne` at 0xdaad730 is taken when t1(?) != a4(?) -> B10 and falls through when t1(?) == a4(?) -> B11.
  The routine returns v0 = 0x29808062 (`jr` at 0xdaad4dc).
  The routine returns v0 = ? (`jr` at 0xdaad94c).
  The routine returns v0 = 0x29808062 (`jr` at 0xdaad960).

- `__glOdylc_TexCoord1d` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdaaf900, 240 bytes) Inferred.
  Stores 4 bytes to ? (base unknown) through base a0 (`sw` at 0xdaaf99c).
  Stores 4 bytes to ? (base unknown) through base a0 (`swc1` at 0xdaaf9a0).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xdaaf9a8).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xdaaf9b4).
  Stores 4 bytes to abs 0x1034 through base zero (`sw` at 0xdaaf9c4).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xdaaf9d0).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xdaaf9ec).
  Calls `__glSPDlistSpace [0xdadafc0]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdaaf950).
  The `beq` at 0xdaaf93c is taken when v0(=[0x1028]) >= at(?) (signed) -> B3 and falls through when v0(=[0x1028]) < at(?) (signed) -> B1.
  The `beq` at 0xdaaf960 is taken when v0(=ret(__glSPDlistSpace)) == 0 -> B4 and falls through when v0(=ret(__glSPDlistSpace)) != 0 -> B2.
  The routine returns v0 = [0x1034]+2 (`jr` at 0xdaaf9c0).
  The routine returns v0 = ret(__glSPDlistSpace) (`jr` at 0xdaaf9e8).

- `__glOdylc_TexCoord2d` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdab0080, 260 bytes) Inferred.
  Stores 4 bytes to ? (base unknown) through base a0 (`sw` at 0xdab0128).
  Stores 4 bytes to ? (base unknown) through base a0 (`swc1` at 0xdab0130).
  Stores 4 bytes to ? (base unknown) through base a0 (`swc1` at 0xdab0134).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xdab013c).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xdab0148).
  Stores 4 bytes to abs 0x1034 through base zero (`sw` at 0xdab0158).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xdab0164).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xdab0180).
  Calls `__glSPDlistSpace [0xdadafc0]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdab00d8).
  The `beq` at 0xdab00c0 is taken when v0(=[0x1028]) >= at(?) (signed) -> B3 and falls through when v0(=[0x1028]) < at(?) (signed) -> B1.
  The `beq` at 0xdab00ec is taken when v0(=ret(__glSPDlistSpace)) == 0 -> B4 and falls through when v0(=ret(__glSPDlistSpace)) != 0 -> B2.
  The routine returns v0 = [0x1034]+3 (`jr` at 0xdab0154).
  The routine returns v0 = ret(__glSPDlistSpace) (`jr` at 0xdab017c).

- `__glOdylc_TexCoord2i` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdab0490, 244 bytes) Inferred.
  Stores 4 bytes to ? (base unknown) through base a2 (`sw` at 0xdab052c).
  Stores 4 bytes to ? (base unknown) through base a2 (`sw` at 0xdab0530).
  Stores 4 bytes to ? (base unknown) through base a2 (`sw` at 0xdab0534).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xdab053c).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xdab0548).
  Stores 4 bytes to abs 0x1034 through base zero (`sw` at 0xdab0558).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xdab0564).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xdab0580).
  Calls `__glSPDlistSpace [0xdadafc0]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdab04e0).
  The `beq` at 0xdab04c8 is taken when v0(=[0x1028]) >= at(?) (signed) -> B3 and falls through when v0(=[0x1028]) < at(?) (signed) -> B1.
  The `beq` at 0xdab04f4 is taken when v0(=ret(__glSPDlistSpace)) == 0 -> B4 and falls through when v0(=ret(__glSPDlistSpace)) != 0 -> B2.
  The routine returns v0 = [0x1034]+3 (`jr` at 0xdab0554).
  The routine returns v0 = ret(__glSPDlistSpace) (`jr` at 0xdab057c).

- `__glOdylc_TexCoord3i` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdab0cd0, 256 bytes) Inferred.
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab0d74).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab0d78).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab0d7c).
  Stores 4 bytes to ? (base unknown) through base a3 (`sw` at 0xdab0d80).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xdab0d88).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xdab0d94).
  Stores 4 bytes to abs 0x1034 through base zero (`sw` at 0xdab0da4).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xdab0db0).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xdab0dcc).
  Calls `__glSPDlistSpace [0xdadafc0]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdab0d24).
  The `beq` at 0xdab0d08 is taken when v0(=[0x1028]) >= at(?) (signed) -> B3 and falls through when v0(=[0x1028]) < at(?) (signed) -> B1.
  The `beq` at 0xdab0d3c is taken when v0(=ret(__glSPDlistSpace)) == 0 -> B4 and falls through when v0(=ret(__glSPDlistSpace)) != 0 -> B2.
  The routine returns v0 = [0x1034]+4 (`jr` at 0xdab0da0).
  The routine returns v0 = ret(__glSPDlistSpace) (`jr` at 0xdab0dc8).

- `__glOdylc_TexCoord4i` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdab1550, 268 bytes) Inferred.
  Stores 4 bytes to ? (base unknown) through base a4 (`sw` at 0xdab15fc).
  Stores 4 bytes to ? (base unknown) through base a4 (`sw` at 0xdab1600).
  Stores 4 bytes to ? (base unknown) through base a4 (`sw` at 0xdab1604).
  Stores 4 bytes to ? (base unknown) through base a4 (`sw` at 0xdab1608).
  Stores 4 bytes to ? (base unknown) through base a4 (`sw` at 0xdab160c).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xdab1614).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xdab1620).
  Stores 4 bytes to abs 0x1034 through base zero (`sw` at 0xdab1630).
  Stores 4 bytes to abs 0x1030 through base zero (`sw` at 0xdab163c).
  Stores 4 bytes to abs 0x1028 through base zero (`sw` at 0xdab1658).
  Calls `__glSPDlistSpace [0xdadafc0]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdab15a8).
  The `beq` at 0xdab1588 is taken when v0(=[0x1028]) >= at(?) (signed) -> B3 and falls through when v0(=[0x1028]) < at(?) (signed) -> B1.
  The `beq` at 0xdab15c4 is taken when v0(=ret(__glSPDlistSpace)) == 0 -> B4 and falls through when v0(=ret(__glSPDlistSpace)) != 0 -> B2.
  The routine returns v0 = [0x1034]+5 (`jr` at 0xdab162c).
  The routine returns v0 = ret(__glSPDlistSpace) (`jr` at 0xdab1654).

- `__glOdysseyGetHardwareShadow` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdabc8f0, 100 bytes) Inferred.
  Calls `__glOdysseyIoctl [0xdabc870]` via direct with a0=a0 at entry (arg0), a1=0x6f64000c, a2=a1 at entry (arg1), a3=a3 at entry (arg3) (`bgezall` at 0xdabc918).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0xdbc1240, a2=?, a3=? (`jalr` at 0xdabc944).
  The `bltz` at 0xdabc920 is taken when v0(=ret(__glOdysseyIoctl)) < 0 (signed) -> B2 and falls through when v0(=ret(__glOdysseyIoctl)) >= 0 (signed) -> B1.
  The routine returns v0 = ? (`jr` at 0xdabc92c).

- `__glOdysseyDriverMakeCurrent` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdabd290, 628 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x16c50 through base s5 (`sw` at 0xdabd32c).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c54 through base s5 (`sw` at 0xdabd334).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c58 through base s5 (`sw` at 0xdabd33c).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c5c through base s5 (`sw` at 0xdabd344).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c60 through base s5 (`sw` at 0xdabd34c).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c64 through base s5 (`sw` at 0xdabd370).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c68 through base s5 (`sw` at 0xdabd378).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c6c through base s5 (`sw` at 0xdabd380).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c70 through base s5 (`sw` at 0xdabd38c).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c74 through base s5 (`sw` at 0xdabd39c).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c78 through base s5 (`sw` at 0xdabd3c4).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c7c through base s5 (`sw` at 0xdabd3cc).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c80 through base s5 (`sw` at 0xdabd3d4).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c84 through base s5 (`sw` at 0xdabd3dc).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c8c through base s5 (`sw` at 0xdabd3e4).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c90 through base s5 (`sw` at 0xdabd3ec).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c94 through base s5 (`sw` at 0xdabd3f4).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c98 through base s5 (`sw` at 0xdabd3fc).
  Stores 4 bytes to a0 (arg0 at entry) +0x16ca0 through base s5 (`sw` at 0xdabd404).
  Stores 4 bytes to a0 (arg0 at entry) +0x16ca4 through base s5 (`sw` at 0xdabd40c).
  Stores 4 bytes to a0 (arg0 at entry) +0x16ca8 through base s5 (`sw` at 0xdabd414).
  Stores 4 bytes to a0 (arg0 at entry) +0x16cac through base s5 (`sw` at 0xdabd41c).
  Stores 4 bytes to a0 (arg0 at entry) +0x16cb4 through base s5 (`sw` at 0xdabd424).
  Stores 4 bytes to a0 (arg0 at entry) +0x16cb8 through base s5 (`sw` at 0xdabd42c).
  Stores 4 bytes to a0 (arg0 at entry) +0x16cbc through base s5 (`sw` at 0xdabd434).
  Stores 4 bytes to a0 (arg0 at entry) +0x16cc0 through base s5 (`sw` at 0xdabd440).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c78 through base s5 (`sw` at 0xdabd490).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c7c through base s5 (`sw` at 0xdabd498).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c80 through base s5 (`sw` at 0xdabd4a0).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c84 through base s5 (`sw` at 0xdabd4a8).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c8c through base s5 (`sw` at 0xdabd4b0).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c90 through base s5 (`sw` at 0xdabd4b8).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c94 through base s5 (`sw` at 0xdabd4c4).
  Stores 4 bytes to a0 (arg0 at entry) +0x16c98 through base s5 (`sw` at 0xdabd4e0).
  Calls `__glOdysseyIoctl [0xdabc870]` via direct with a0=a0 at entry (arg0), a1=0x6f640008, a2=sp-128, a3=one of 0x0, 0x2 (`bgezall` at 0xdabd30c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0xdbc1298, a2=?, a3=? (`jalr` at 0xdabd450).
  Calls `bzero` via got with a0=a0+93304, a1=0x50, a2=?, a3=? (`jalr` at 0xdabd480).
  Calls `bzero` via got with a0=a0+93344, a1=0x14, a2=?, a3=? (`jalr` at 0xdabd4dc).
  Calls `bzero` via got with a0=a0+93364, a1=0x14, a2=?, a3=? (`jalr` at 0xdabd4f4).
  The `blez` at 0xdabd2bc is taken when at(=[a0+3292]) <= 0 (signed) -> B2 and falls through when at(=[a0+3292]) > 0 (signed) -> B1.
  The `blez` at 0xdabd2d0 is taken when v1(=[a0+3452]) <= 0 (signed) -> B4 and falls through when v1(=[a0+3452]) > 0 (signed) -> B3.
  The `beq` at 0xdabd2e4 is taken when a1(=[a0+3212]:1) == 0 -> B11 and falls through when a1(=[a0+3212]:1) != 0 -> B5.
  The `beq` at 0xdabd2f0 is taken when at(=[a0+3372]:1) == 0 -> B12 and falls through when at(=[a0+3372]:1) != 0 -> B6.
  The `bltz` at 0xdabd314 is taken when v0(=ret(__glOdysseyIoctl)) < 0 (signed) -> B14 and falls through when v0(=ret(__glOdysseyIoctl)) >= 0 (signed) -> B7.
  The `beq` at 0xdabd358 is taken when a0(?) == 0 -> B15 and falls through when a0(?) != 0 -> B8.
  The `beq` at 0xdabd360 is taken when a0(?) == at(=0x1) -> B16 and falls through when a0(?) != at(=0x1) -> B9.
  The `beq` at 0xdabd368 is taken when a0(?) == v0(=0x2) -> B13 and falls through when a0(?) != v0(=0x2) -> B10.
  The routine returns v0 = 0x1 (`jr` at 0xdabd3a4).
  The routine returns v0 = 0x0 (`jr` at 0xdabd468).

- `__glOdysseySetDrawbuf` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdabd510, 884 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x9750 through base a3 (`sw` at 0xdabd5b0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd5b8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd5c4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd5cc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd5d4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd5dc).
  Stores 4 bytes to a0 (arg0 at entry) +0x9750 through base a3 (`sw` at 0xdabd5e0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd5e4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd5ec).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd5f0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd5f4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd5f8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd5fc).
  Stores 4 bytes to a0 (arg0 at entry) +0x9750 through base a3 (`sw` at 0xdabd600).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd604).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd608).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd60c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd610).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd640).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd644).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd64c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd654).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd65c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd664).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd668).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd66c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd670).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd674).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd678).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd67c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd680).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd688).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd68c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd690).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd698).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd6a0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd6a8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd6b0).
  Stores 4 bytes to a0 (arg0 at entry) +0x9750 through base a3 (`sw` at 0xdabd6b4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd6b8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd6bc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd6c0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd6c4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd6c8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd6cc).
  Stores 4 bytes to a0 (arg0 at entry) +0x9750 through base a3 (`sw` at 0xdabd6d0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd6d4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd6d8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd6dc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd6e0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd6e4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd6ec).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd6f4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd6f8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd700).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd704).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd70c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd714).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd724).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd72c).
  Stores 4 bytes to a0 (arg0 at entry) +0x9750 through base a3 (`sw` at 0xdabd730).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd734).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd738).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd73c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd740).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd744).
  Stores 4 bytes to a0 (arg0 at entry) +0x9750 through base a3 (`sw` at 0xdabd748).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd74c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd750).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd754).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd758).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd75c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd760).
  Stores 4 bytes to a0 (arg0 at entry) +0x9750 through base a3 (`sw` at 0xdabd764).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd768).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd76c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd770).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd774).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7a8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7ac).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7b0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7b4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7b8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7bc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7c0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7c4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7c8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7cc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7d0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7d4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7d8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7dc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7e0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7e4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7ec).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7f4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd7fc).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd804).
  Stores 4 bytes to a0 (arg0 at entry) +0x9750 through base a3 (`sw` at 0xdabd808).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd80c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd810).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd814).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd818).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd81c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd820).
  Stores 4 bytes to a0 (arg0 at entry) +0x9750 through base a3 (`sw` at 0xdabd824).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd828).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd82c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd830).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd83c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd868).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdabd880).
  Calls `__glOdysseyIoctl [0xdabc870]` via direct with a0=a0 at entry (arg0), a1=0x6f640009, a2=sp-80, a3=a3 at entry (arg3) (`bgezall` at 0xdabd57c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0xdbc12b8, a2=?, a3=? (`jalr` at 0xdabd598).
  The `beq` at 0xdabd530 is taken when a1 == 0 -> B14 and falls through when a1 != 0 -> B1.
  The `beq` at 0xdabd53c is taken when a2 == 0 -> B15 and falls through when a2 != 0 -> B2.
  The `beq` at 0xdabd548 is taken when a3 == 0 -> B16 and falls through when a3 != 0 -> B3.
  The `beq` at 0xdabd554 is taken when a4 == 0 -> B6 and falls through when a4 != 0 -> B4.
  The `beq` at 0xdabd584 is taken when v0(=ret(__glOdysseyIoctl)) == 0 -> B9 and falls through when v0(=ret(__glOdysseyIoctl)) != 0 -> B8.
  The `beq` at 0xdabd630 is taken when (at(?) & 0x1) == 0 -> B18 and falls through when (at(?) & 0x1) != 0 -> B10.
  The `beq` at 0xdabd794 is taken when (a1(?) & 0x1) == 0 -> B19 and falls through when (a1(?) & 0x1) != 0 -> B12.
  The `bne` at 0xdabd840 is taken when a2 != 0 -> B2 and falls through when a2 == 0 -> B15.
  The `bne` at 0xdabd848 is taken when a3 != 0 -> B3 and falls through when a3 == 0 -> B16.
  The `beq` at 0xdabd850 is taken when a4 == 0 -> B7 and falls through when a4 != 0 -> B17.
  The routine returns v0 = [a0+38340] (`jr` at 0xdabd838).

- `__glOdyim_Vertex2d` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbad880, 32 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbad890).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbad894).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbad89c).
  The routine returns v0 = ? (`jr` at 0xdbad898).

- `__glOdyim_Vertex3d` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbada80, 40 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbada94).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbada98).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbada9c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbadaa4).
  The routine returns v0 = ? (`jr` at 0xdbadaa0).

- `__glOdyim_Vertex3i` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbadb80, 52 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbadba0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbadba4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbadba8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbadbb0).
  The routine returns v0 = ? (`jr` at 0xdbadbac).

- `__glOdyim_Vertex4i` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbadd80, 64 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbadda8).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbaddac).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbaddb0).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbaddb4).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbaddbc).
  The routine returns v0 = ? (`jr` at 0xdbaddb8).

- `__glOdyim_TexCoord3d` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbb2a80, 40 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb2a94).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbb2a98).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbb2a9c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbb2aa4).
  The routine returns v0 = ? (`jr` at 0xdbb2aa0).

- `__glOdyim_ScratchColor3b` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbb3140, 28 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3148).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb314c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3150).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3158).
  The routine returns v0 = ? (`jr` at 0xdbb3154).

- `__glOdyim_Color3d` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbb3200, 40 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3214).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbb3218).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbb321c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbb3224).
  The routine returns v0 = ? (`jr` at 0xdbb3220).

- `__glOdyim_ScratchColor3d` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbb3240, 40 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3254).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbb3258).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbb325c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbb3264).
  The routine returns v0 = ? (`jr` at 0xdbb3260).

- `__glOdyim_ScratchColor3i` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbb3440, 28 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3448).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb344c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3450).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3458).
  The routine returns v0 = ? (`jr` at 0xdbb3454).

- `__glOdyim_ScratchColor3s` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbb3540, 28 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3548).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb354c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3550).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3558).
  The routine returns v0 = ? (`jr` at 0xdbb3554).

- `__glOdyim_ScratchColor3ui` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbb3740, 28 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3748).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb374c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3750).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3758).
  The routine returns v0 = ? (`jr` at 0xdbb3754).

- `__glOdyim_ScratchColor3us` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbb3840, 28 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3848).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb384c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3850).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3858).
  The routine returns v0 = ? (`jr` at 0xdbb3854).

- `__glOdyim_ScratchColor4b` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbb3940, 32 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3948).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb394c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3950).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3954).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb395c).
  The routine returns v0 = ? (`jr` at 0xdbb3958).

- `__glOdyim_ScratchColor4dv` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbb3ac0, 64 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3ae0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbb3ae8).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbb3af0).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbb3af4).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbb3afc).
  The routine returns v0 = ? (`jr` at 0xdbb3af8).

- `__glOdyim_ScratchColor4i` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbb3c40, 32 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3c48).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3c4c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3c50).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3c54).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3c5c).
  The routine returns v0 = ? (`jr` at 0xdbb3c58).

- `__glOdyim_ScratchColor4s` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbb3d40, 32 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3d48).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3d4c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3d50).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3d54).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3d5c).
  The routine returns v0 = ? (`jr` at 0xdbb3d58).

- `__glOdyim_ScratchColor4ub` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbb3e40, 32 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3e48).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3e4c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3e50).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3e54).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3e5c).
  The routine returns v0 = ? (`jr` at 0xdbb3e58).

- `__glOdyim_ScratchColor4ui` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbb3f40, 32 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3f48).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3f4c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3f50).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3f54).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb3f5c).
  The routine returns v0 = ? (`jr` at 0xdbb3f58).

- `__glOdyim_ScratchColor4us` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbb4040, 32 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb4048).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb404c).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb4050).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb4054).
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb405c).
  The routine returns v0 = ? (`jr` at 0xdbb4058).

- `__glOdyim_ScratchIndexd` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdbb4140, 24 bytes) Inferred.
  Stores 4 bytes to abs 0x4000 through base zero (`sw` at 0xdbb414c).
  Stores 4 bytes to abs 0x4000 through base zero (`swc1` at 0xdbb4154).
  The routine returns v0 = ? (`jr` at 0xdbb4150).

- `__glXOpenGraphicsDevice` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`, 0xcf607bc, 408 bytes) Inferred.
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xcf608b0).
  Stores 4 bytes to [0x1028]:8 +0x104 through base a3 (`sw` at 0xcf60920).
  Calls `__glXFatal` via got with a0=0x0, a1=0xcf935d0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf60818).
  Calls `open` via got with a0=0xcf935f0, a1=0x802, a2=?, a3=? (`jalr` at 0xcf60838).
  Calls `fcntl` via got with a0=?, a1=0x2, a2=0x5, a3=? (`jalr` at 0xcf60858).
  Calls `__glXFatal` via got with a0=0x0, a1=0xcf935d0, a2=?, a3=[[0x1028]:8+260] (`jalr` at 0xcf60890).
  Calls `__glXFatal` via got with a0=0x0, a1=0xcf93600, a2=?, a3=? (`jalr` at 0xcf608c4).
  Calls `__glXFatal` via got with a0=0x0, a1=0xcf93620, a2=?, a3=? (`jalr` at 0xcf608e0).
  Calls `ioctl` via got with a0=?, a1=0x65, a2=0x0, a3=[[0x1028]:8+260] (`jalr` at 0xcf608fc).
  Calls `__glXFatal` via got with a0=0x0, a1=0xcf93630, a2=?, a3=? (`jalr` at 0xcf60940).
  The `beq` at 0xcf607d8 is taken when a0 >= 0x41 (signed) -> B3 and falls through when a0 < 0x41 (signed) -> B1.
  The `bltz` at 0xcf607f0 is taken when v1(=[([0x1028]:8 + (a0 << 0x2))+4]) < 0 (signed) -> B4 and falls through when v1(=[([0x1028]:8 + (a0 << 0x2))+4]) >= 0 (signed) -> B2.
  The `bltz` at 0xcf60844 is taken when v0(=ret(open)) < 0 (signed) -> B10 and falls through when v0(=ret(open)) >= 0 (signed) -> B5.
  The `bltz` at 0xcf60860 is taken when v0(=ret(fcntl)) < 0 (signed) -> B11 and falls through when v0(=ret(fcntl)) >= 0 (signed) -> B6.
  The `bltz` at 0xcf60870 is taken when a3(=[[0x1028]:8+260]) < 0 (signed) -> B12 and falls through when a3(=[[0x1028]:8+260]) >= 0 (signed) -> B7.
  The `beq` at 0xcf60878 is taken when a2(?) == 0 -> B9 and falls through when a2(?) != 0 -> B8.
  The `blez` at 0xcf60904 is taken when v0(=ret(ioctl)) <= 0 (signed) -> B14 and falls through when v0(=ret(ioctl)) > 0 (signed) -> B13.
  The routine returns v0 = ? (`jr` at 0xcf60800).

- `glXSelectEventSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`, 0xcf76340, 300 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0xcf763b0).
  Stores 2 bytes to [a0+176]:8 +0x2 through base v0 (`sh` at 0xcf763b8).
  Stores 1 bytes to [a0+176]:8 +0x0 through base v0 (`sb` at 0xcf763c0).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0xcf763d4).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0xcf763e0).
  Stores 4 bytes to [a0+176]:8 +0xc through base v0 (`sw` at 0xcf763e8).
  Stores 4 bytes to [a0+176]:8 +0x4 through base v0 (`sw` at 0xcf763f0).
  Stores 1 bytes to [a0+176]:8 +0x1 through base v0 (`sb` at 0xcf763f4).
  Stores 4 bytes to [a0+176]:8 +0x10 through base v0 (`sw` at 0xcf763fc).
  Stores 1 bytes to [a0+176]:8 +0x0 through base v0 (`sb` at 0xcf76400).
  Stores 4 bytes to [a0+176]:8 +0x14 through base v0 (`sw` at 0xcf76408).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf76368).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8 (`jalr` at 0xcf76390).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x10, a4=a2 at entry (arg2), a5=[a0+2408]:8 (`jalr` at 0xcf7641c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf76430).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+24 (`jalr` at 0xcf7644c).
  The `beq` at 0xcf76378 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B10 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0xcf76384 is taken when a5(=[a0+2408]:8) == 0 -> B3 and falls through when a5(=[a0+2408]:8) != 0 -> B2.
  The `bne` at 0xcf763a8 is taken when v1(=[a0+184]:8) < a3(=[a0+176]:8+24) (unsigned) -> B9 and falls through when v1(=[a0+184]:8) >= a3(=[a0+176]:8+24) (unsigned) -> B4.
  The `beq` at 0xcf76410 is taken when a5(=[a0+2408]:8) == 0 -> B6 and falls through when a5(=[a0+2408]:8) != 0 -> B5.
  The `beq` at 0xcf76428 is taken when t9(=[a0+208]:8) == 0 -> B8 and falls through when t9(=[a0+208]:8) != 0 -> B7.
  The routine returns v0 = ? (`jr` at 0xcf76444).
  The routine returns v0 = ? (`jr` at 0xcf76464).

- `__glXGetDrawableAttributes` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`, 0xcf765dc, 1052 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s1 (`sd` at 0xcf7665c).
  Stores 2 bytes to [a0+176]:8 +0x2 through base v0 (`sh` at 0xcf76664).
  Stores 1 bytes to [a0+176]:8 +0x0 through base v0 (`sb` at 0xcf7666c).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s1 (`sd` at 0xcf76680).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s1 (`sd` at 0xcf76688).
  Stores 4 bytes to [a0+176]:8 +0xc through base v0 (`sw` at 0xcf76694).
  Stores 4 bytes to [a0+176]:8 +0x4 through base v0 (`sw` at 0xcf766a0).
  Stores 1 bytes to [a0+176]:8 +0x1 through base v0 (`sb` at 0xcf766ac).
  Stores 1 bytes to [a0+176]:8 +0x0 through base v0 (`sb` at 0xcf766b8).
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s1 (`sd` at 0xcf76760).
  Stores 2 bytes to [a0+176]:8 +0x2 through base v0 (`sh` at 0xcf76768).
  Stores 1 bytes to [a0+176]:8 +0x0 through base v0 (`sb` at 0xcf76770).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s1 (`sd` at 0xcf76784).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s1 (`sd` at 0xcf7678c).
  Stores 4 bytes to [a0+176]:8 +0x4 through base v0 (`sw` at 0xcf76794).
  Stores 1 bytes to [a0+176]:8 +0x1 through base v0 (`sb` at 0xcf767a0).
  Stores 1 bytes to [a0+176]:8 +0x0 through base v0 (`sb` at 0xcf767ac).
  Stores 1 bytes to a2 (arg2 at entry) +0x21 through base s0 (`sb` at 0xcf76864).
  Stores 8 bytes to a2 (arg2 at entry) +0x8 through base s0 (`sd` at 0xcf768b0).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s0 (`sw` at 0xcf768b8).
  Stores 1 bytes to a2 (arg2 at entry) +0x20 through base s0 (`sb` at 0xcf768c0).
  Stores 4 bytes to a2 (arg2 at entry) +0x10 through base s0 (`sw` at 0xcf768c8).
  Stores 4 bytes to a2 (arg2 at entry) +0x14 through base s0 (`sw` at 0xcf768d0).
  Stores 8 bytes to a2 (arg2 at entry) +0x18 through base s0 (`sd` at 0xcf768d8).
  Stores 8 bytes to a2 (arg2 at entry) +0x28 through base s0 (`sd` at 0xcf768e0).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf7660c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0xcf76638).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-176, a2=0x0, a3=0x0, a7=0x11 (`jalr` at 0xcf766b4).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xcf766d8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0xcf766f8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf7670c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0xcf7673c).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-144, a2=0x0, a3=0x0, a5=0x1d, a6=a1 at entry (arg1), a7=[a0+152]:8+1 (`jalr` at 0xcf767a8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0xcf767d8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf767ec).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+176]:8+16 (`jalr` at 0xcf76814).
  Calls `_XRead` via got with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=? (`jalr` at 0xcf76830).
  Calls `memset` via got with a0=a2 at entry (arg2), a1=0x0, a2=0x30, a3=? (`jalr` at 0xcf76844).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0xcf768f4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf76908).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xcf76914).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0xcf76948).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf7695c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf769a0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0xcf769c0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf769d4).
  The `beq` at 0xcf7661c is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B47 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0xcf76624 is taken when v1(=a3) == 0 -> B13 and falls through when v1(=a3) != 0 -> B2.
  The `beq` at 0xcf7662c is taken when a2(=[a0+2408]:8) == 0 -> B4 and falls through when a2(=[a0+2408]:8) != 0 -> B3.
  The `bne` at 0xcf76650 is taken when a4(=[a0+184]:8) < a5(=[a0+176]:8+16) (unsigned) -> B23 and falls through when a4(=[a0+184]:8) >= a5(=[a0+176]:8+16) (unsigned) -> B5.
  The `beq` at 0xcf766bc is taken when v0(=ret(_XReply)) == 0 -> B42 and falls through when v0(=ret(_XReply)) != 0 -> B6.
  The `beq` at 0xcf766cc is taken when s2(?) == 0 -> B18 and falls through when s2(?) != 0 -> B7.
  The `bne` at 0xcf766e0 is taken when v0(=ret(malloc)) != 0 -> B24 and falls through when v0(=ret(malloc)) == 0 -> B8.
  The `beq` at 0xcf766ec is taken when a2(=[a0+2408]:8) == 0 -> B10 and falls through when a2(=[a0+2408]:8) != 0 -> B9.
  The `beq` at 0xcf76704 is taken when t9(=[a0+208]:8) == 0 -> B12 and falls through when t9(=[a0+208]:8) != 0 -> B11.
  The `beq` at 0xcf76730 is taken when a2(=[a0+2408]:8) == 0 -> B15 and falls through when a2(=[a0+2408]:8) != 0 -> B14.
  The `bne` at 0xcf76754 is taken when at(=[a0+184]:8) < v1(=[a0+176]:8+8) (unsigned) -> B48 and falls through when at(=[a0+184]:8) >= v1(=[a0+176]:8+8) (unsigned) -> B16.
  The `beq` at 0xcf767b0 is taken when v0(=ret(_XReply)) == 0 -> B49 and falls through when v0(=ret(_XReply)) != 0 -> B17.
  The `bne` at 0xcf767c0 is taken when s2(?) != 0 -> B7 and falls through when s2(?) == 0 -> B18.
  The `beq` at 0xcf767cc is taken when a2(=[a0+2408]:8) == 0 -> B20 and falls through when a2(=[a0+2408]:8) != 0 -> B19.
  The `beq` at 0xcf767e4 is taken when t9(=[a0+208]:8) == 0 -> B22 and falls through when t9(=[a0+208]:8) != 0 -> B21.
  The `blez` at 0xcf76850 is taken when s2(?) <= 0 (signed) -> B37 and falls through when s2(?) > 0 (signed) -> B25.
  The `beq` at 0xcf7686c is taken when s2(?) == a2(?) -> B37 and falls through when s2(?) != a2(?) -> B28.
  The `beq` at 0xcf76898 is taken when a7(=table(-0x800c)) >= 0x1a (unsigned) -> B27 and falls through when a7(=table(-0x800c)) < 0x1a (unsigned) -> B29.
  The `beq` at 0xcf768e8 is taken when a2(=[a0+2408]:8) == 0 -> B39 and falls through when a2(=[a0+2408]:8) != 0 -> B38.
  The `beq` at 0xcf76900 is taken when t9(=[a0+208]:8) == 0 -> B41 and falls through when t9(=[a0+208]:8) != 0 -> B40.
  The `beq` at 0xcf7693c is taken when a2(=[a0+2408]:8) == 0 -> B44 and falls through when a2(=[a0+2408]:8) != 0 -> B43.
  The `beq` at 0xcf76954 is taken when t9(=[a0+208]:8) == 0 -> B46 and falls through when t9(=[a0+208]:8) != 0 -> B45.
  The `beq` at 0xcf769b4 is taken when a2(=[a0+2408]:8) == 0 -> B51 and falls through when a2(=[a0+2408]:8) != 0 -> B50.
  The `beq` at 0xcf769cc is taken when t9(=[a0+208]:8) == 0 -> B53 and falls through when t9(=[a0+208]:8) != 0 -> B52.
  The routine returns v0 = 0x0 (`jr` at 0xcf76728).
  The routine returns v0 = 0x0 (`jr` at 0xcf76808).
  The routine returns v0 = 0x1 (`jr` at 0xcf76930).
  The routine returns v0 = 0x0 (`jr` at 0xcf76978).
  The routine returns v0 = 0x0 (`jr` at 0xcf76994).
  The routine returns v0 = 0x0 (`jr` at 0xcf769f0).

- `glXDestroyGLXPbufferSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`, 0xcf769f8, 348 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0xcf76a9c).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a0 (`sh` at 0xcf76aa4).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a0 (`sb` at 0xcf76aac).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0xcf76ac0).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0xcf76ac8).
  Stores 4 bytes to [a0+176]:8 +0xc through base a0 (`sw` at 0xcf76ad0).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a0 (`sw` at 0xcf76ad8).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a0 (`sb` at 0xcf76adc).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a0 (`sb` at 0xcf76ae0).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf76a20).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xcf76a40).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xcf76a50).
  Calls `__glXFreeDrawablePrivate` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xcf76a64).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=? (`jalr` at 0xcf76a7c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=[a0+152]:8+1, a3=[a0+176]:8+16 (`jalr` at 0xcf76af4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf76b08).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+16 (`jalr` at 0xcf76b3c).
  The `beq` at 0xcf76a30 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B10 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0xcf76a5c is taken when v1(=[ret(__glXAddDrawableInterest)+32]) == 0 -> B12 and falls through when v1(=[ret(__glXAddDrawableInterest)+32]) != 0 -> B2.
  The `beq` at 0xcf76a70 is taken when a1(=[a0+2408]:8) == 0 -> B4 and falls through when a1(=[a0+2408]:8) != 0 -> B3.
  The `bne` at 0xcf76a94 is taken when a2(=[a0+184]:8) < a3(=[a0+176]:8+16) (unsigned) -> B11 and falls through when a2(=[a0+184]:8) >= a3(=[a0+176]:8+16) (unsigned) -> B5.
  The `beq` at 0xcf76ae8 is taken when a1(=[a0+2408]:8) == 0 -> B7 and falls through when a1(=[a0+2408]:8) != 0 -> B6.
  The `beq` at 0xcf76b00 is taken when t9(=[a0+208]:8) == 0 -> B9 and falls through when t9(=[a0+208]:8) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xcf76b20).
  The routine returns v0 = ? (`jr` at 0xcf76b34).

- `glXCreateGLXPbufferSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`, 0xcf772f4, 948 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s1 (`sd` at 0xcf77434).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a1 (`sh` at 0xcf7743c).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a1 (`sb` at 0xcf77444).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s1 (`sd` at 0xcf77454).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s1 (`sd` at 0xcf7745c).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a1 (`sb` at 0xcf77464).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a1 (`sb` at 0xcf77470).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a1 (`sw` at 0xcf77480).
  Stores 4 bytes to [a0+176]:8 +0xc through base a1 (`sw` at 0xcf7748c).
  Stores 4 bytes to [a0+176]:8 +0x1c through base a1 (`sw` at 0xcf77498).
  Stores 4 bytes to [a0+176]:8 +0x18 through base a1 (`sw` at 0xcf774a0).
  Stores 4 bytes to [a0+176]:8 +0x14 through base a1 (`sw` at 0xcf774ac).
  Stores 4 bytes to [a0+176]:8 +0x10 through base a1 (`sw` at 0xcf774b8).
  Stores 4 bytes to [a0+176]:8 +0x20 through base a0 (`sw` at 0xcf774d8).
  Stores 4 bytes to [a0+176]:8 +0x24 through base a0 (`sw` at 0xcf774ec).
  Stores 4 bytes to ? (base unknown) through base a1 (`sw` at 0xcf77518).
  Stores 4 bytes to ? (base unknown) through base a1 (`sw` at 0xcf77520).
  Stores 4 bytes to ? (base unknown) through base a1 (`sw` at 0xcf77528).
  Stores 4 bytes to ? (base unknown) through base a1 (`sw` at 0xcf77540).
  Stores 8 bytes to ? (base unknown) through base a7 (`sd` at 0xcf7764c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf77330).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf7734c).
  Calls `__glXAddDrawableInterest` via got with a0=ret(?), a1=?, a2=?, a3=? (`jalr` at 0xcf77360).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8 (`jalr` at 0xcf77404).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-176, a2=0x0, a3=0x0 (`jalr` at 0xcf77554).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8 (`jalr` at 0xcf77570).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf77584).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xcf77590).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=[a0+176]:8, a2=?, a3=? (`jalr` at 0xcf775dc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8 (`jalr` at 0xcf775fc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf77610).
  Calls `__glXPostHiddenError` via got with a0=a0 at entry (arg0), a1=sp-176, a2=0x11, a3=0x0 (`jalr` at 0xcf77628).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xcf77634).
  Calls `__glXFreeDrawablePrivate` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xcf77648).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x10, a3=0x0, a5=ret(__glXAddDrawableInterest) (`jalr` at 0xcf77680).
  The `beq` at 0xcf77340 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B26 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0xcf7736c is taken when v0(=ret(__glXAddDrawableInterest)) == 0 -> B33 and falls through when v0(=ret(__glXAddDrawableInterest)) != 0 -> B2.
  The `beq` at 0xcf77378 is taken when s2(=a4) == 0 -> B10 and falls through when s2(=a4) != 0 -> B3.
  The `beq` at 0xcf77388 is taken when at(=[a4]) == 0 -> B10 and falls through when at(=[a4]) != 0 -> B4.
  The `beq` at 0xcf77398 is taken when v1(?) == 0 -> B10 and falls through when v1(?) != 0 -> B5.
  The `beq` at 0xcf773a8 is taken when a5(?) == 0 -> B10 and falls through when a5(?) != 0 -> B6.
  The `beq` at 0xcf773b8 is taken when a6(?) == 0 -> B10 and falls through when a6(?) != 0 -> B7.
  The `beq` at 0xcf773c8 is taken when at(?) == 0 -> B10 and falls through when at(?) != 0 -> B8.
  The `beq` at 0xcf773d8 is taken when v1(?) == 0 -> B10 and falls through when v1(?) != 0 -> B9.
  The `bne` at 0xcf773ec is taken when a5(?) != 0 -> B4 and falls through when a5(?) == 0 -> B10.
  The `beq` at 0xcf773f8 is taken when a4(=[a0+2408]:8) == 0 -> B12 and falls through when a4(=[a0+2408]:8) != 0 -> B11.
  The `bne` at 0xcf7742c is taken when a6(=[a0+184]:8) < at(?) (unsigned) -> B27 and falls through when a6(=[a0+184]:8) >= at(?) (unsigned) -> B13.
  The `beq` at 0xcf774b4 is taken when s2(=a4) == 0 -> B20 and falls through when s2(=a4) != 0 -> B14.
  The `bne` at 0xcf774bc is taken when a6(?) != 0 -> B20 and falls through when a6(?) == 0 -> B15.
  The `beq` at 0xcf774cc is taken when (v0(?) & 0x1) == 0 -> B17 and falls through when (v0(?) & 0x1) != 0 -> B16.
  The `beq` at 0xcf774f8 is taken when a6(?) == 0 -> B20 and falls through when a6(?) != 0 -> B18.
  The `bne` at 0xcf7753c is taken when v0(?) != a2(=-0x1) -> B19 and falls through when v0(?) == a2(=-0x1) -> B20.
  The `beq` at 0xcf7755c is taken when v0(=ret(_XReply)) == 0 -> B28 and falls through when v0(=ret(_XReply)) != 0 -> B21.
  The `beq` at 0xcf77564 is taken when a4(=[a0+2408]:8) == 0 -> B23 and falls through when a4(=[a0+2408]:8) != 0 -> B22.
  The `beq` at 0xcf7757c is taken when t9(=[a0+208]:8) == 0 -> B25 and falls through when t9(=[a0+208]:8) != 0 -> B24.
  The `beq` at 0xcf775f0 is taken when a4(=[a0+2408]:8) == 0 -> B30 and falls through when a4(=[a0+2408]:8) != 0 -> B29.
  The `beq` at 0xcf77608 is taken when t9(=[a0+208]:8) == 0 -> B32 and falls through when t9(=[a0+208]:8) != 0 -> B31.
  The routine returns v0 = ? (`jr` at 0xcf775b0).
  The routine returns v0 = 0x0 (`jr` at 0xcf775d0).
  The routine returns v0 = 0x0 (`jr` at 0xcf77668).
  The routine returns v0 = 0x0 (`jr` at 0xcf776a0).

- `glXGetVideoSyncSGI` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`, 0xcf776a8, 140 bytes) Inferred.
  Stores 4 bytes to a0 (arg0 at entry) +0x0 through base ra (`sw` at 0xcf77710).
  Calls `ioctl` via got with a0=[(([[0x1028]:8+264] << 0x2) + [0x1028]:8)+4], a1=0x3fe, a2=sp-48, a3=a3 at entry (arg3), a4=[[0x1028]:8+280]:8 (`jalr` at 0xcf77700).
  The `beq` at 0xcf776c4 is taken when a4(=[[0x1028]:8+280]:8) == 0 -> B3 and falls through when a4(=[[0x1028]:8+280]:8) != 0 -> B1.
  The `beq` at 0xcf776d0 is taken when at(=[[[0x1028]:8+280]:8+280]) == 0 -> B3 and falls through when at(=[[[0x1028]:8+280]:8+280]) != 0 -> B2.
  The routine returns v0 = 0x0 (`jr` at 0xcf77720).
  The routine returns v0 = 0x5 (`jr` at 0xcf7772c).

- `glXWaitVideoSyncSGI` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`, 0xcf77734, 200 bytes) Inferred.
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base a4 (`sw` at 0xcf777f8).
  Calls `ioctl` via got with a0=[(([[0x1028]:8+264] << 0x2) + [0x1028]:8)+4], a1=0x3ff, a2=sp-80, a3=a3 at entry (arg3), a4=a0 at entry (arg0), a5=a1 at entry (arg1), a6=[[0x1028]:8+280]:8 (`jalr` at 0xcf777d4).
  The `beq` at 0xcf77758 is taken when a6(=[[0x1028]:8+280]:8) == 0 -> B6 and falls through when a6(=[[0x1028]:8+280]:8) != 0 -> B1.
  The `beq` at 0xcf77764 is taken when at(=[[[0x1028]:8+280]:8+280]) == 0 -> B6 and falls through when at(=[[[0x1028]:8+280]:8+280]) != 0 -> B2.
  The `blez` at 0xcf7776c is taken when a4(=a0) <= 0 (signed) -> B5 and falls through when a4(=a0) > 0 (signed) -> B3.
  The `bltz` at 0xcf77774 is taken when a5(=a1) < 0 (signed) -> B5 and falls through when a5(=a1) >= 0 (signed) -> B4.
  The `bne` at 0xcf7777c is taken when v0(?) != 0 -> B7 and falls through when v0(?) == 0 -> B5.
  The routine returns v0 = 0x6 (`jr` at 0xcf7778c).
  The routine returns v0 = 0x5 (`jr` at 0xcf7779c).
  The routine returns v0 = 0x0 (`jr` at 0xcf777f4).

- `glXDestroyGLXVideoSourceSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`, 0xcf777fc, 340 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0xcf77898).
  Stores 2 bytes to [a0+176]:8 +0x2 through base v0 (`sh` at 0xcf778a0).
  Stores 1 bytes to [a0+176]:8 +0x0 through base v0 (`sb` at 0xcf778a8).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0xcf778bc).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0xcf778c4).
  Stores 4 bytes to [a0+176]:8 +0xc through base v0 (`sw` at 0xcf778c8).
  Stores 4 bytes to [a0+176]:8 +0x8 through base v0 (`sw` at 0xcf778d0).
  Stores 4 bytes to [a0+176]:8 +0x4 through base v0 (`sw` at 0xcf778d8).
  Stores 1 bytes to [a0+176]:8 +0x1 through base v0 (`sb` at 0xcf778dc).
  Stores 1 bytes to [a0+176]:8 +0x0 through base v0 (`sb` at 0xcf778e0).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf77824).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xcf77844).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xcf77854).
  Calls `__glXFreeDrawablePrivate` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xcf77860).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=? (`jalr` at 0xcf77878).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=[a0+152]:8+1, a3=[a0+176]:8+16 (`jalr` at 0xcf778f4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf77908).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+16 (`jalr` at 0xcf77940).
  The `beq` at 0xcf77830 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B11 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0xcf77838 is taken when s1(=a1) == 0 -> B10 and falls through when s1(=a1) != 0 -> B2.
  The `beq` at 0xcf7786c is taken when a1(=[a0+2408]:8) == 0 -> B4 and falls through when a1(=[a0+2408]:8) != 0 -> B3.
  The `bne` at 0xcf77890 is taken when a2(=[a0+184]:8) < a3(=[a0+176]:8+16) (unsigned) -> B12 and falls through when a2(=[a0+184]:8) >= a3(=[a0+176]:8+16) (unsigned) -> B5.
  The `beq` at 0xcf778e8 is taken when a1(=[a0+2408]:8) == 0 -> B7 and falls through when a1(=[a0+2408]:8) != 0 -> B6.
  The `beq` at 0xcf77900 is taken when t9(=[a0+208]:8) == 0 -> B9 and falls through when t9(=[a0+208]:8) != 0 -> B8.
  The routine returns v0 = ? (`jr` at 0xcf77920).
  The routine returns v0 = ret(__glXSetupForCommand) (`jr` at 0xcf77938).

- `glXCreateGLXVideoSourceSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`, 0xcf77a14, 976 bytes) Inferred.
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xcf77b90).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xcf77ba4).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xcf77bd8).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xcf77bf8).
  Stores 4 bytes to ? (base unknown) through base a6 (`sw` at 0xcf77c10).
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base a2 (`sd` at 0xcf77c48).
  Stores 1 bytes to [a0+176]:8 +0x0 through base v0 (`sb` at 0xcf77c50).
  Stores 2 bytes to [a0+176]:8 +0x2 through base v0 (`sh` at 0xcf77c58).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base a2 (`sd` at 0xcf77c6c).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base a2 (`sd` at 0xcf77c78).
  Stores 4 bytes to [a0+176]:8 +0x14 through base v0 (`sw` at 0xcf77c7c).
  Stores 4 bytes to [a0+176]:8 +0xc through base v0 (`sw` at 0xcf77c80).
  Stores 4 bytes to [a0+176]:8 +0x8 through base v0 (`sw` at 0xcf77c84).
  Stores 1 bytes to [a0+176]:8 +0x1 through base v0 (`sb` at 0xcf77c88).
  Stores 1 bytes to [a0+176]:8 +0x0 through base v0 (`sb` at 0xcf77c8c).
  Stores 4 bytes to [a0+176]:8 +0x10 through base v0 (`sw` at 0xcf77c98).
  Stores 4 bytes to [a0+176]:8 +0x4 through base v0 (`sw` at 0xcf77ca0).
  Stores 4 bytes to [a0+176]:8 +0x18 through base v0 (`sw` at 0xcf77cac).
  Stores 4 bytes to [a0+176]:8 +0x1c through base v0 (`sw` at 0xcf77cb4).
  Stores 4 bytes to [a0+176]:8 +0x20 through base v0 (`sw` at 0xcf77cbc).
  Stores 4 bytes to [a0+176]:8 +0x24 through base v0 (`sw` at 0xcf77cc4).
  Stores 4 bytes to [a0+176]:8 +0x28 through base v0 (`sw` at 0xcf77ccc).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf77a48).
  Calls `__glXInitializeVideoLibrary` via got with a0=?, a1=?, a2=?, a3=?, a7=0x2 (`jalr` at 0xcf77a94).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf77aac).
  Calls `__glXAddDrawableInterest` via got with a0=ret(?), a1=?, a2=?, a3=? (`jalr` at 0xcf77ac0).
  Calls `__glXCreateVideoSourcePrivate` via got with a0=ret(__glXAddDrawableInterest)+64, a1=0x3, a2=?, a3=?, a4=ret(__glXAddDrawableInterest) (`jalr` at 0xcf77b34).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x4, a4=sp-256, a6=ret(__glXCreateVideoSourcePrivate), a7=ret(__glXCreateVideoSourcePrivate) (`jalr` at 0xcf77b70).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x6, a4=sp-256 (`jalr` at 0xcf77bac).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=0x7, a4=sp-256 (`jalr` at 0xcf77be0).
  Calls `(unnamed) [0xcf77950]` via direct with a0=?, a1=?, a2=?, a3=? (`bgezall` at 0xcf77c00).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?, a7=a0 at entry (arg0) (`jalr` at 0xcf77c24).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0xcf77ce0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf77cf8).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xcf77d04).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=?, a6=ret(__glXCreateVideoSourcePrivate) (`jalr` at 0xcf77d40).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=a0 at entry (arg0), a3=? (`jalr` at 0xcf77d64).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=a5 at entry (arg5), a3=? (`jalr` at 0xcf77d7c).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=a5 at entry (arg5), a3=? (`jalr` at 0xcf77da0).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xcf77dc4).
  The `beq` at 0xcf77a68 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B8 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0xcf77a70 is taken when s0(=a4) == a7(=0x2) -> B5 and falls through when s0(=a4) != a7(=0x2) -> B2.
  The `beq` at 0xcf77a78 is taken when s0(=a4) == at(=0x5) -> B5 and falls through when s0(=a4) != at(=0x5) -> B3.
  The `beq` at 0xcf77a9c is taken when v0(=ret(__glXInitializeVideoLibrary)) == 0 -> B21 and falls through when v0(=ret(__glXInitializeVideoLibrary)) != 0 -> B6.
  The `bne` at 0xcf77ad4 is taken when v0(=ret(__glXAddDrawableInterest)) != 0 -> B9 and falls through when v0(=ret(__glXAddDrawableInterest)) == 0 -> B7.
  The `beq` at 0xcf77b44 is taken when v0(=ret(__glXCreateVideoSourcePrivate)) == 0 -> B22 and falls through when v0(=ret(__glXCreateVideoSourcePrivate)) != 0 -> B10.
  The `bltz` at 0xcf77b78 is taken when v0(=ret(?)) < 0 (signed) -> B24 and falls through when v0(=ret(?)) >= 0 (signed) -> B11.
  The `bltz` at 0xcf77bb4 is taken when v0(=ret(?)) < 0 (signed) -> B25 and falls through when v0(=ret(?)) >= 0 (signed) -> B12.
  The `bltz` at 0xcf77be8 is taken when v0(=ret(?)) < 0 (signed) -> B26 and falls through when v0(=ret(?)) >= 0 (signed) -> B13.
  The `beq` at 0xcf77c18 is taken when a2(=[a0+2408]:8) == 0 -> B15 and falls through when a2(=[a0+2408]:8) != 0 -> B14.
  The `bne` at 0xcf77c40 is taken when a7(=[a0+184]:8) < at(=[a0+176]:8+44) (unsigned) -> B23 and falls through when a7(=[a0+184]:8) >= at(=[a0+176]:8+44) (unsigned) -> B16.
  The `beq` at 0xcf77cd4 is taken when a2(=[a0+2408]:8) == 0 -> B18 and falls through when a2(=[a0+2408]:8) != 0 -> B17.
  The `beq` at 0xcf77cf0 is taken when t9(=[a0+208]:8) == 0 -> B20 and falls through when t9(=[a0+208]:8) != 0 -> B19.
  The routine returns v0 = 0x0 (`jr` at 0xcf77a88).
  The routine returns v0 = 0x0 (`jr` at 0xcf77ae8).
  The routine returns v0 = 0x0 (`jr` at 0xcf77b00).
  The routine returns v0 = ? (`jr` at 0xcf77d1c).
  The routine returns v0 = 0x0 (`jr` at 0xcf77d34).
  The routine returns v0 = 0x0 (`jr` at 0xcf77d58).
  The routine returns v0 = 0x0 (`jr` at 0xcf77d94).
  The routine returns v0 = 0x0 (`jr` at 0xcf77db8).
  The routine returns v0 = 0x0 (`jr` at 0xcf77ddc).

- `glXSwapIntervalSGI` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`, 0xcf77f34, 472 bytes) Inferred.
  Stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0 through base s0 (`sd` at 0xcf78030).
  Stores 1 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0 through base a0 (`sb` at 0xcf78038).
  Stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2 through base a0 (`sh` at 0xcf78040).
  Stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98 through base s0 (`sd` at 0xcf78054).
  Stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0 through base s0 (`sd` at 0xcf7805c).
  Stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0xc through base a0 (`sw` at 0xcf78060).
  Stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8 through base a0 (`sw` at 0xcf78064).
  Stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4 through base a0 (`sw` at 0xcf7806c).
  Stores 1 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0 through base a0 (`sb` at 0xcf78070).
  Stores 1 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1 through base a0 (`sb` at 0xcf78074).
  Calls `ioctl` via got with a0=[(([[0x1028]:8+264] << 0x2) + [0x1028]:8)+4], a1=0x3ee, a2=sp-80, a3=a3 at entry (arg3) (`jalr` at 0xcf77f9c).
  Calls `__glXSetupForCommand` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=a1 at entry (arg1), a2=[[[0x1028]:8+280]:8+104], a3=a3 at entry (arg3) (`jalr` at 0xcf77ff0).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8 (`jalr` at 0xcf7800c).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=0x10000, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8 (`jalr` at 0xcf78088).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=? (`jalr` at 0xcf7809c).
  Calls `XFlush` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=? (`jalr` at 0xcf780a8).
  Calls `_XFlush` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=? (`jalr` at 0xcf780e4).
  The `beq` at 0xcf77f54 is taken when v0(=[[0x1028]:8+280]:8) == 0 -> B14 and falls through when v0(=[[0x1028]:8+280]:8) != 0 -> B1.
  The `blez` at 0xcf77f5c is taken when s1(=a0) <= 0 (signed) -> B16 and falls through when s1(=a0) > 0 (signed) -> B2.
  The `beq` at 0xcf77f68 is taken when v1(=[[[0x1028]:8+280]:8+280]) == 0 -> B4 and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0 -> B3.
  The `bne` at 0xcf77fc4 is taken when s0(=[[[0x1028]:8+280]:8+312]:8) != 0 -> B6 and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) == 0 -> B5.
  The `beq` at 0xcf77ffc is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 -> B8 and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0 -> B7.
  The `bne` at 0xcf78028 is taken when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < v1(=[[[[0x1028]:8+280]:8+312]:8+176]:8+16) (unsigned) -> B15 and falls through when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= v1(=[[[[0x1028]:8+280]:8+312]:8+176]:8+16) (unsigned) -> B9.
  The `beq` at 0xcf7807c is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 -> B11 and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0 -> B10.
  The `beq` at 0xcf78094 is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0 -> B13 and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0 -> B12.
  The routine returns v0 = 0x0 (`jr` at 0xcf77fb4).
  The routine returns v0 = 0x5 (`jr` at 0xcf77fdc).
  The routine returns v0 = 0x0 (`jr` at 0xcf780c4).
  The routine returns v0 = 0x5 (`jr` at 0xcf780d8).
  The routine returns v0 = 0x6 (`jr` at 0xcf78104).

- `glXCreateGLXPixmapWithConfigSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`, 0xcf8b9dc, 336 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0xcf8ba4c).
  Stores 2 bytes to [a0+176]:8 +0x2 through base v0 (`sh` at 0xcf8ba54).
  Stores 1 bytes to [a0+176]:8 +0x0 through base v0 (`sb` at 0xcf8ba5c).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0xcf8ba70).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0xcf8ba7c).
  Stores 4 bytes to [a0+176]:8 +0x4 through base v0 (`sw` at 0xcf8ba84).
  Stores 1 bytes to [a0+176]:8 +0x1 through base v0 (`sb` at 0xcf8ba88).
  Stores 1 bytes to [a0+176]:8 +0x0 through base v0 (`sb` at 0xcf8ba8c).
  Stores 4 bytes to [a0+176]:8 +0xc through base v0 (`sw` at 0xcf8ba94).
  Stores 4 bytes to [a0+176]:8 +0x14 through base v0 (`sw` at 0xcf8baa0).
  Stores 4 bytes to [a0+176]:8 +0x10 through base v0 (`sw` at 0xcf8baa4).
  Stores 4 bytes to ? (base unknown) through base at (`sw` at 0xcf8babc).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf8ba04).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8 (`jalr` at 0xcf8ba2c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=a2 at entry (arg2), a5=[a1+72], a6=[a1+36], a7=0x10006 (`jalr` at 0xcf8bab0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8 (`jalr` at 0xcf8bad0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf8bae4).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+28, a5=a1 at entry (arg1) (`jalr` at 0xcf8bb08).
  The `beq` at 0xcf8ba14 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 -> B10 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 -> B1.
  The `beq` at 0xcf8ba20 is taken when a5(=[a0+2408]:8) == 0 -> B3 and falls through when a5(=[a0+2408]:8) != 0 -> B2.
  The `bne` at 0xcf8ba44 is taken when v1(=[a0+184]:8) < a3(=[a0+176]:8+28) (unsigned) -> B9 and falls through when v1(=[a0+184]:8) >= a3(=[a0+176]:8+28) (unsigned) -> B4.
  The `beq` at 0xcf8bac4 is taken when a5(=[a0+2408]:8) == 0 -> B6 and falls through when a5(=[a0+2408]:8) != 0 -> B5.
  The `beq` at 0xcf8badc is taken when t9(=[a0+208]:8) == 0 -> B8 and falls through when t9(=[a0+208]:8) != 0 -> B7.
  The routine returns v0 = ? (`jr` at 0xcf8bafc).
  The routine returns v0 = 0x0 (`jr` at 0xcf8bb24).

- `glXJoinSwapGroupSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`, 0xcf8eb34, 288 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0xcf8eba4).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a0 (`sb` at 0xcf8ebac).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a0 (`sh` at 0xcf8ebb4).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0xcf8ebc8).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0xcf8ebd0).
  Stores 4 bytes to [a0+176]:8 +0x10 through base a0 (`sw` at 0xcf8ebd4).
  Stores 4 bytes to [a0+176]:8 +0xc through base a0 (`sw` at 0xcf8ebdc).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a0 (`sw` at 0xcf8ebe4).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a0 (`sb` at 0xcf8ebe8).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a0 (`sb` at 0xcf8ebec).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf8eb60).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=? (`jalr` at 0xcf8eb7c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=[a0+176]:8+20, a4=a2 at entry (arg2) (`jalr` at 0xcf8ec04).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf8ec1c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+20 (`jalr` at 0xcf8ec3c).
  The `beq` at 0xcf8eb6c is taken when a1(=[a0+2408]:8) == 0 -> B2 and falls through when a1(=[a0+2408]:8) != 0 -> B1.
  The `bne` at 0xcf8eb9c is taken when v1(=[a0+184]:8) < a3(=[a0+176]:8+20) (unsigned) -> B8 and falls through when v1(=[a0+184]:8) >= a3(=[a0+176]:8+20) (unsigned) -> B3.
  The `beq` at 0xcf8ebf4 is taken when a1(=[a0+2408]:8) == 0 -> B5 and falls through when a1(=[a0+2408]:8) != 0 -> B4.
  The `beq` at 0xcf8ec14 is taken when t9(=[a0+208]:8) == 0 -> B7 and falls through when t9(=[a0+208]:8) != 0 -> B6.
  The routine returns v0 = ? (`jr` at 0xcf8ec30).

- `glXBindSwapBarrierSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`, 0xcf8ec54, 288 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0xcf8ecc4).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a0 (`sb` at 0xcf8eccc).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a0 (`sh` at 0xcf8ecd4).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0xcf8ece8).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0xcf8ecf0).
  Stores 4 bytes to [a0+176]:8 +0x10 through base a0 (`sw` at 0xcf8ecf4).
  Stores 4 bytes to [a0+176]:8 +0xc through base a0 (`sw` at 0xcf8ecfc).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a0 (`sw` at 0xcf8ed04).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a0 (`sb` at 0xcf8ed08).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a0 (`sb` at 0xcf8ed0c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf8ec80).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=? (`jalr` at 0xcf8ec9c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=[a0+176]:8+20, a4=a2 at entry (arg2) (`jalr` at 0xcf8ed24).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf8ed3c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+20 (`jalr` at 0xcf8ed5c).
  The `beq` at 0xcf8ec8c is taken when a1(=[a0+2408]:8) == 0 -> B2 and falls through when a1(=[a0+2408]:8) != 0 -> B1.
  The `bne` at 0xcf8ecbc is taken when v1(=[a0+184]:8) < a3(=[a0+176]:8+20) (unsigned) -> B8 and falls through when v1(=[a0+184]:8) >= a3(=[a0+176]:8+20) (unsigned) -> B3.
  The `beq` at 0xcf8ed14 is taken when a1(=[a0+2408]:8) == 0 -> B5 and falls through when a1(=[a0+2408]:8) != 0 -> B4.
  The `beq` at 0xcf8ed34 is taken when t9(=[a0+208]:8) == 0 -> B7 and falls through when t9(=[a0+208]:8) != 0 -> B6.
  The routine returns v0 = ? (`jr` at 0xcf8ed50).

- `glXQueryMaxSwapBarriersSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`, 0xcf8ed74, 384 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0xcf8ede0).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a6 (`sh` at 0xcf8ede8).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a6 (`sb` at 0xcf8edf0).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0xcf8ee04).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0xcf8ee0c).
  Stores 4 bytes to [a0+176]:8 +0xc through base a6 (`sw` at 0xcf8ee18).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a6 (`sw` at 0xcf8ee24).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a6 (`sb` at 0xcf8ee30).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a6 (`sb` at 0xcf8ee3c).
  Stores 4 bytes to a2 (arg2 at entry) +0x0 through base s2 (`sw` at 0xcf8ee80).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf8eda0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=? (`jalr` at 0xcf8edbc).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a4=0x11, a5=0x1000d, a6=[a0+176]:8, a7=[a0+152]:8+1 (`jalr` at 0xcf8ee38).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=? (`jalr` at 0xcf8ee54).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf8ee68).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+16, a6=[a0+176]:8 (`jalr` at 0xcf8ee9c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=? (`jalr` at 0xcf8eebc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf8eed0).
  The `beq` at 0xcf8edac is taken when a1(=[a0+2408]:8) == 0 -> B2 and falls through when a1(=[a0+2408]:8) != 0 -> B1.
  The `bne` at 0xcf8edd8 is taken when v1(=[a0+184]:8) < a3(=[a0+176]:8+16) (unsigned) -> B9 and falls through when v1(=[a0+184]:8) >= a3(=[a0+176]:8+16) (unsigned) -> B3.
  The `beq` at 0xcf8ee40 is taken when v0(=ret(_XReply)) == 0 -> B10 and falls through when v0(=ret(_XReply)) != 0 -> B4.
  The `beq` at 0xcf8ee48 is taken when a1(=[a0+2408]:8) == 0 -> B6 and falls through when a1(=[a0+2408]:8) != 0 -> B5.
  The `beq` at 0xcf8ee60 is taken when t9(=[a0+208]:8) == 0 -> B8 and falls through when t9(=[a0+208]:8) != 0 -> B7.
  The `beq` at 0xcf8eeb0 is taken when a1(=[a0+2408]:8) == 0 -> B12 and falls through when a1(=[a0+2408]:8) != 0 -> B11.
  The `beq` at 0xcf8eec8 is taken when t9(=[a0+208]:8) == 0 -> B14 and falls through when t9(=[a0+208]:8) != 0 -> B13.
  The routine returns v0 = 0x1 (`jr` at 0xcf8ee90).
  The routine returns v0 = 0x0 (`jr` at 0xcf8eeec).

- `glXQueryHyperpipeNetworkSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`, 0xcf8f714, 648 bytes) Inferred.
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base s1 (`sw` at 0xcf8f748).
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0xcf8f77c).
  Stores 2 bytes to [a0+176]:8 +0x2 through base v0 (`sh` at 0xcf8f784).
  Stores 1 bytes to [a0+176]:8 +0x0 through base v0 (`sb` at 0xcf8f78c).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0xcf8f7a0).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0xcf8f7ac).
  Stores 4 bytes to [a0+176]:8 +0x4 through base v0 (`sw` at 0xcf8f7b4).
  Stores 1 bytes to [a0+176]:8 +0x1 through base v0 (`sb` at 0xcf8f7bc).
  Stores 1 bytes to [a0+176]:8 +0x0 through base v0 (`sb` at 0xcf8f7c0).
  Stores 4 bytes to [a0+176]:8 +0xc through base v0 (`sw` at 0xcf8f7dc).
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base s1 (`sw` at 0xcf8f7f0).
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base s1 (`sw` at 0xcf8f84c).
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base s1 (`sw` at 0xcf8f8d8).
  Stores 4 bytes to a1 (arg1 at entry) +0x0 through base s1 (`sw` at 0xcf8f98c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf8f740).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0xcf8f75c).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a4=[a0+224], a5=0x1000e, a6=0x11, a7=[a0+152]:8+1 (`jalr` at 0xcf8f7d8).
  Calls `_XEatData` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf8f808).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0xcf8f820).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf8f834).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xcf8f878).
  Calls `_XEatData` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf8f894).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0xcf8f8ac).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf8f8c0).
  Calls `_XRead` via got with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=? (`jalr` at 0xcf8f8f0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0xcf8f908).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf8f91c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+16 (`jalr` at 0xcf8f940).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0xcf8f960).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf8f974).
  The `beq` at 0xcf8f750 is taken when a2(=[a0+2408]:8) == 0 -> B2 and falls through when a2(=[a0+2408]:8) != 0 -> B1.
  The `bne` at 0xcf8f774 is taken when v1(=[a0+184]:8) < a3(=[a0+176]:8+16) (unsigned) -> B22 and falls through when v1(=[a0+184]:8) >= a3(=[a0+176]:8+16) (unsigned) -> B3.
  The `beq` at 0xcf8f7e0 is taken when v0(=ret(_XReply)) == 0 -> B23 and falls through when v0(=ret(_XReply)) != 0 -> B4.
  The `blez` at 0xcf8f7f4 is taken when a0(?) <= 0 (signed) -> outside and falls through when a0(?) > 0 (signed) -> B5.
  The `bne` at 0xcf8f7fc is taken when at(?) != 0 -> B11 and falls through when at(?) == 0 -> B6.
  The `beq` at 0xcf8f814 is taken when a2(=[a0+2408]:8) == 0 -> B8 and falls through when a2(=[a0+2408]:8) != 0 -> B7.
  The `beq` at 0xcf8f82c is taken when t9(=[a0+208]:8) == 0 -> B10 and falls through when t9(=[a0+208]:8) != 0 -> B9.
  The `bne` at 0xcf8f884 is taken when v0(=ret(malloc)) != 0 -> B17 and falls through when v0(=ret(malloc)) == 0 -> B12.
  The `beq` at 0xcf8f8a0 is taken when a2(=[a0+2408]:8) == 0 -> B14 and falls through when a2(=[a0+2408]:8) != 0 -> B13.
  The `beq` at 0xcf8f8b8 is taken when t9(=[a0+208]:8) == 0 -> B16 and falls through when t9(=[a0+208]:8) != 0 -> B15.
  The `beq` at 0xcf8f8fc is taken when a2(=[a0+2408]:8) == 0 -> B19 and falls through when a2(=[a0+2408]:8) != 0 -> B18.
  The `beq` at 0xcf8f914 is taken when t9(=[a0+208]:8) == 0 -> B21 and falls through when t9(=[a0+208]:8) != 0 -> B20.
  The `beq` at 0xcf8f954 is taken when a2(=[a0+2408]:8) == 0 -> B25 and falls through when a2(=[a0+2408]:8) != 0 -> B24.
  The `beq` at 0xcf8f96c is taken when t9(=[a0+208]:8) == 0 -> B27 and falls through when t9(=[a0+208]:8) != 0 -> B26.
  The routine returns v0 = 0x0 (`jr` at 0xcf8f854).
  The routine returns v0 = 0x0 (`jr` at 0xcf8f8e0).
  The routine returns v0 = ? (`jr` at 0xcf8f938).
  The routine returns v0 = 0x0 (`jr` at 0xcf8f994).

- `glXHyperpipeConfigSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`, 0xcf8f99c, 816 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0xcf8fa54).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a2 (`sh` at 0xcf8fa5c).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a2 (`sb` at 0xcf8fa64).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0xcf8fa74).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0xcf8fa80).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a2 (`sw` at 0xcf8fa88).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a2 (`sb` at 0xcf8fa90).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a2 (`sb` at 0xcf8fa94).
  Stores 4 bytes to [a0+176]:8 +0x14 through base a2 (`sw` at 0xcf8faa0).
  Stores 4 bytes to [a0+176]:8 +0x10 through base a2 (`sw` at 0xcf8faac).
  Stores 4 bytes to [a0+176]:8 +0xc through base a2 (`sw` at 0xcf8fab8).
  Stores 1 bytes to ? (base unknown) through base a3 (`sb` at 0xcf8fae4).
  Stores 1 bytes to ? (base unknown) through base a0 (`sb` at 0xcf8fb10).
  Stores 1 bytes to ? (base unknown) through base a0 (`sb` at 0xcf8fb18).
  Stores 1 bytes to ? (base unknown) through base a0 (`sb` at 0xcf8fb20).
  Stores 1 bytes to ? (base unknown) through base a0 (`sb` at 0xcf8fb38).
  Stores 4 bytes to a4 (arg4 at entry) +0x0 through base a5 (`sw` at 0xcf8fb60).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf8f9d8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=? (`jalr` at 0xcf8fa14).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-160, a2=0x0, a3=0x0 (`jalr` at 0xcf8fb4c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?, a5=a4 at entry (arg4) (`jalr` at 0xcf8fb88).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf8fb9c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?, a5=a4 at entry (arg4) (`jalr` at 0xcf8fbf8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf8fc0c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8, a3=? (`jalr` at 0xcf8fc40).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?, a5=a4 at entry (arg4) (`jalr` at 0xcf8fc68).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf8fc7c).
  The `blez` at 0xcf8f9e0 is taken when s1(=a2) <= 0 (signed) -> B21 and falls through when s1(=a2) > 0 (signed) -> B1.
  The `beq` at 0xcf8f9e8 is taken when s2(=a3) == 0 -> B21 and falls through when s2(=a3) != 0 -> B2.
  The `beq` at 0xcf8f9f0 is taken when v1(?) == 0 -> B21 and falls through when v1(?) != 0 -> B3.
  The `bltz` at 0xcf8f9f8 is taken when s3(=a1) < 0 (signed) -> B33 and falls through when s3(=a1) >= 0 (signed) -> B4.
  The `beq` at 0xcf8fa04 is taken when a1(=[a0+2408]:8) == 0 -> B6 and falls through when a1(=[a0+2408]:8) != 0 -> B5.
  The `bne` at 0xcf8fa4c is taken when a5(=[a0+184]:8) < a6(?) (unsigned) -> B27 and falls through when a5(=[a0+184]:8) >= a6(?) (unsigned) -> B7.
  The `bne` at 0xcf8fab4 is taken when a0(?) < 0x21 (signed) -> B13 and falls through when a0(?) >= 0x21 (signed) -> B8.
  The `beq` at 0xcf8fac4 is taken when (a2(?) & 0x3) == 0 -> B10 and falls through when (a2(?) & 0x3) != 0 -> B9.
  The `bne` at 0xcf8fae0 is taken when v0(?) != 0 -> B9 and falls through when v0(?) == 0 -> B10.
  The `beq` at 0xcf8fafc is taken when at(?) == 0 -> B13 and falls through when at(?) != 0 -> B11.
  The `bne` at 0xcf8fb34 is taken when a2(?) != v0(?) -> B12 and falls through when a2(?) == v0(?) -> B13.
  The `beq` at 0xcf8fb54 is taken when v0(=ret(_XReply)) == 0 -> B28 and falls through when v0(=ret(_XReply)) != 0 -> B14.
  The `bne` at 0xcf8fb68 is taken when s1(=a2) != v1(?) -> B22 and falls through when s1(=a2) == v1(?) -> B15.
  The `bltz` at 0xcf8fb70 is taken when v0(?) < 0 (signed) -> B22 and falls through when v0(?) >= 0 (signed) -> B16.
  The `beq` at 0xcf8fb7c is taken when a1(=[a0+2408]:8) == 0 -> B18 and falls through when a1(=[a0+2408]:8) != 0 -> B17.
  The `beq` at 0xcf8fb94 is taken when t9(=[a0+208]:8) == 0 -> B20 and falls through when t9(=[a0+208]:8) != 0 -> B19.
  The `beq` at 0xcf8fbec is taken when a1(=[a0+2408]:8) == 0 -> B24 and falls through when a1(=[a0+2408]:8) != 0 -> B23.
  The `beq` at 0xcf8fc04 is taken when t9(=[a0+208]:8) == 0 -> B26 and falls through when t9(=[a0+208]:8) != 0 -> B25.
  The `beq` at 0xcf8fc5c is taken when a1(=[a0+2408]:8) == 0 -> B30 and falls through when a1(=[a0+2408]:8) != 0 -> B29.
  The `beq` at 0xcf8fc74 is taken when t9(=[a0+208]:8) == 0 -> B32 and falls through when t9(=[a0+208]:8) != 0 -> B31.
  The routine returns v0 = 0x0 (`jr` at 0xcf8fbc0).
  The routine returns v0 = 0x5b (`jr` at 0xcf8fbe0).
  The routine returns v0 = 0x5b (`jr` at 0xcf8fc30).
  The routine returns v0 = 0x5b (`jr` at 0xcf8fca0).
  The routine returns v0 = 0x5b (`jr` at 0xcf8fcc4).

- `glXDestroyHyperpipeConfigSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`, 0xcf8fccc, 376 bytes) Inferred.
  Stores 8 bytes to a0 (arg0 at entry) +0xa0 through base s0 (`sd` at 0xcf8fd34).
  Stores 2 bytes to [a0+176]:8 +0x2 through base a6 (`sh` at 0xcf8fd3c).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a6 (`sb` at 0xcf8fd44).
  Stores 8 bytes to a0 (arg0 at entry) +0x98 through base s0 (`sd` at 0xcf8fd54).
  Stores 8 bytes to a0 (arg0 at entry) +0xb0 through base s0 (`sd` at 0xcf8fd60).
  Stores 4 bytes to [a0+176]:8 +0x4 through base a6 (`sw` at 0xcf8fd68).
  Stores 1 bytes to [a0+176]:8 +0x1 through base a6 (`sb` at 0xcf8fd70).
  Stores 1 bytes to [a0+176]:8 +0x0 through base a6 (`sb` at 0xcf8fd74).
  Stores 4 bytes to [a0+176]:8 +0x10 through base a6 (`sw` at 0xcf8fd8c).
  Stores 4 bytes to [a0+176]:8 +0xc through base a6 (`sw` at 0xcf8fd98).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf8fcf4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=? (`jalr` at 0xcf8fd10).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+224], a5=0x10011, a6=[a0+176]:8, a7=0x11 (`jalr` at 0xcf8fd94).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=? (`jalr` at 0xcf8fdb0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf8fdc4).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8+32, a3=?, a6=[a0+176]:8 (`jalr` at 0xcf8fdec).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=? (`jalr` at 0xcf8fe0c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf8fe20).
  The `beq` at 0xcf8fd00 is taken when a1(=[a0+2408]:8) == 0 -> B2 and falls through when a1(=[a0+2408]:8) != 0 -> B1.
  The `bne` at 0xcf8fd2c is taken when v1(=[a0+184]:8) < a2(=[a0+176]:8+32) (unsigned) -> B9 and falls through when v1(=[a0+184]:8) >= a2(=[a0+176]:8+32) (unsigned) -> B3.
  The `beq` at 0xcf8fd9c is taken when v0(=ret(_XReply)) == 0 -> B10 and falls through when v0(=ret(_XReply)) != 0 -> B4.
  The `beq` at 0xcf8fda4 is taken when a1(=[a0+2408]:8) == 0 -> B6 and falls through when a1(=[a0+2408]:8) != 0 -> B5.
  The `beq` at 0xcf8fdbc is taken when t9(=[a0+208]:8) == 0 -> B8 and falls through when t9(=[a0+208]:8) != 0 -> B7.
  The `beq` at 0xcf8fe00 is taken when a1(=[a0+2408]:8) == 0 -> B12 and falls through when a1(=[a0+2408]:8) != 0 -> B11.
  The `beq` at 0xcf8fe18 is taken when t9(=[a0+208]:8) == 0 -> B14 and falls through when t9(=[a0+208]:8) != 0 -> B13.
  The routine returns v0 = ? (`jr` at 0xcf8fde0).
  The routine returns v0 = 0x5c (`jr` at 0xcf8fe3c).


## Skipped routines

Hostfacts could not produce a routine reading for these targets. The error for each is that no symbol of that name exists in the binary.

Skipped (name, binary, build, board, target row):

CreateContext, libGL.so of build 6.5.30-media, IP30ODSY64, target row 102; GetFBConfigsSGIX, libGL.so of build 6.5.30-media, IP30ODSY64, target row 103; __glXSendMakeCurrentRead, libGL.so of build 6.5.30-media, IP30ODSY64, target row 104; CreateContext, libGL.so of build vpro-patch-4103, IP30ODSY32, target row 188; GetBoardName, libGL.so of build vpro-patch-4103, IP30ODSY32, target row 189; GetFBConfigsSGIX, libGL.so of build vpro-patch-4103, IP30ODSY32, target row 190; __glXSendMakeCurrentRead, libGL.so of build vpro-patch-4103, IP30ODSY32, target row 191; AddConvolutionBorders, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 210; ApplyMaterialF, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 211; ApplyMaterialI, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 212; ApplyParameterF, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 213; ApplyParameterI, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 214; ApplyViewport, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 215; CISendClippedBmFmN, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 216; CISendFc, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 217; DownsampleTextureThruHW, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 218; DrawBitmapUsingPolyStipple, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 219; LoadAndSendStippledQuads, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 220; LookupCoresidRange, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 221; LookupKnownGroup, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 222; OpenPipeMemReference, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 223; RGBSendClippedBmFmTN, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 224; RGBSendFc, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 225; __glOdysseyInitDefaultValues, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 226; __glOdysseyTextureDeactivate, libGLcore.so of build vpro-patch-4103, IP30ODSY32, target row 227; CreateContext, libGL.so of build vpro-patch-4103, IP30ODSY64, target row 280; GetBoardName, libGL.so of build vpro-patch-4103, IP30ODSY64, target row 281; GetFBConfigsSGIX, libGL.so of build vpro-patch-4103, IP30ODSY64, target row 282; __glXSendMakeCurrentRead, libGL.so of build vpro-patch-4103, IP30ODSY64, target row 283.
