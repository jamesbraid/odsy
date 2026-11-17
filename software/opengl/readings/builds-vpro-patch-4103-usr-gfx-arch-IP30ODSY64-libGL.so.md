# Readings: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`

One entry per routine, filed here from the reading batches by binary.

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

- `GetFBConfigsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf6dd14 (n64).
  This is the n64 build of the GetFBConfigsSGIX routine at 0xd8aa140. It uses the same X-connection pattern: _XReply (0xcf6ddd0), _XFlush (0xcf6dea8), _XRead (0xcf6e0e4), malloc and free (0xcf6de48, 0xcf6df68, 0xcf6df88), memset (0xcf6dfe8), __glXOverrideVisualGetVisualInfo (0xcf6ea68) and XFree (0xcf6eab4). It returns 0 or 1.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glXSendMakeCurrentRead` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf7098c (n64).
  This is the n64 build of __glXSendMakeCurrentRead at 0xd8acdc0, with the same call sequence: __glXSetupForCommand (0xcf709c4), _XReply (0xcf70a94, 0xcf70bf4), malloc, _XRead, free, _XFlush, and two __glXPostHiddenError calls (0xcf70c48, 0xcf70cbc). The request layout is not in the facts.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glXMakeContextCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf710d0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf710d0-0xcf71f2c (3676 bytes).
  It occupies 3676 bytes.
  3 such `ld` accesses load 8 bytes from a3 (arg3 at entry) +0x58, including `ld` at 0xcf71154, `ld` at 0xcf711b8, `ld` at 0xcf71374.
  11 such `sd` accesses store 8 bytes to ?, including `sd` at 0xcf71158, `sd` at 0xcf7116c, `sd` at 0xcf7155c.
  6 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x3c, including `lw` at 0xcf71168, `lw` at 0xcf71364, `lw` at 0xcf71560.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x1b0, including `lw` at 0xcf71170, `lw` at 0xcf7192c.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x1b4, including `lw` at 0xcf71180, `lw` at 0xcf7193c.
  11 such `lw` accesses load 4 bytes from ?, including `lw` at 0xcf71190, `lw` at 0xcf711d0, `lw` at 0xcf711f0.
  13 such `ld` accesses load 8 bytes from ?, including `ld` at 0xcf711a0, `ld` at 0xcf711b4, `ld` at 0xcf711c4.
  2 such `ld` accesses load 8 bytes from a3 (arg3 at entry) +0x120, including `ld` at 0xcf711e0, `ld` at 0xcf71278.
  The `ld` at 0xcf711e4 loads 8 bytes from [a3+288]:8 +0xd0.
  7 such `ld` accesses load 8 bytes from abs 0x1028, including `ld` at 0xcf71240, `ld` at 0xcf712c8, `ld` at 0xcf71644.
  3 such `ld` accesses load 8 bytes from [[0x1028]:8+280]:8 +0x138, including `ld` at 0xcf71244, `ld` at 0xcf716ac, `ld` at 0xcf7172c.
  2 such `ld` accesses load 8 bytes from [[0x1028]:8+280]:8 +0x148, including `ld` at 0xcf71248, `ld` at 0xcf712e8.
  2 such `ld` accesses load 8 bytes from [[0x1028]:8+280]:8 +0x140, including `ld` at 0xcf7124c, `ld` at 0xcf712f4.
  2 such `sd` accesses store 8 bytes to [0x1028]:8 +0x118, including `sd` at 0xcf71250, `sd` at 0xcf715e4.
  The `sd` at 0xcf71254 stores 8 bytes to a3 (arg3 at entry) +0x158.
  The `sd` at 0xcf71258 stores 8 bytes to a3 (arg3 at entry) +0x140.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x118, including `lw` at 0xcf7125c, `lw` at 0xcf71338, `lw` at 0xcf71528.
  The `sd` at 0xcf71260 stores 8 bytes to a3 (arg3 at entry) +0x150.
  The `sd` at 0xcf71268 stores 8 bytes to a3 (arg3 at entry) +0x148.
  The `sd` at 0xcf71274 stores 8 bytes to a3 (arg3 at entry) +0x138.
  The `ld` at 0xcf7127c loads 8 bytes from [a3+288]:8 +0xc8.
  2 such `lbu` accesses load 1 byte from a3 (arg3 at entry) +0x170, including `lbu` at 0xcf712a0, `lbu` at 0xcf71844.
  The `ld` at 0xcf712cc loads 8 bytes from [0x1028]:8 +0x118.
  3 such `lw` accesses load 4 bytes from [[0x1028]:8+280]:8 +0x118, including `lw` at 0xcf712d0, `lw` at 0xcf713a0, `lw` at 0xcf713b8.
  The `ld` at 0xcf712dc loads 8 bytes from [[0x1028]:8+280]:8 +0x120.
  The `ld` at 0xcf71304 loads 8 bytes from [[[0x1028]:8+280]:8+288]:8 +0xb8.
  2 such `ld` accesses load 8 bytes from [[0x1028]:8+280]:8 +0x150, including `ld` at 0xcf71320, `ld` at 0xcf71688.
  The `ld` at 0xcf71324 loads 8 bytes from [[0x1028]:8+280]:8 +0x158.
  2 such `lw` accesses load 4 bytes from ret(__glXAddDrawableInterest) +0xc, including `lw` at 0xcf71368, `lw` at 0xcf71990.
  The `ld` at 0xcf71378 loads 8 bytes from ret(__glXAddDrawableInterest) +0x10.
  The `lw` at 0xcf71384 loads 4 bytes from ret(__glXAddDrawableInterest) +0x40.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xcf713e4, `lbu` at 0xcf713f0, `lbu` at 0xcf719cc.
  2 such `lbu` accesses load 1 byte from a3 (arg3 at entry) +0x39, including `lbu` at 0xcf71404, `lbu` at 0xcf7156c.
  3 such `lw` accesses load 4 bytes from [[0x1028]:8+280]:8 +0x68, including `lw` at 0xcf71428, `lw` at 0xcf715b4, `lw` at 0xcf716c4.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x958, including `ld` at 0xcf7145c, `ld` at 0xcf71494, `ld` at 0xcf71a18.
  4 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x958, including `sd` at 0xcf7146c, `sd` at 0xcf714a8, `sd` at 0xcf71a30.
  2 such `sw` accesses store 4 bytes to [[0x1028]:8+280]:8 +0x68, including `sw` at 0xcf71544, `sw` at 0xcf716dc.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xcf71568, `sw` at 0xcf71578, `sw` at 0xcf718e8.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x5c, including `lw` at 0xcf71590, `lw` at 0xcf71908.
  2 such `ld` accesses load 8 bytes from abs 0x1088, including `ld` at 0xcf715e8, `ld` at 0xcf717ec.
  7 such `ld` accesses load 8 bytes from a3 (arg3 at entry) +0x28, including `ld` at 0xcf71634, `ld` at 0xcf71880, `ld` at 0xcf71a80.
  The `lw` at 0xcf71640 loads 4 bytes from a3 (arg3 at entry) +0x12c.
  The `lw` at 0xcf7164c loads 4 bytes from [0x1028]:8 +0x10c.
  The `lw` at 0xcf71658 loads 4 bytes from a3 (arg3 at entry) +0x130.
  2 such `lw` accesses load 4 bytes from [0x1028]:8 +0x110, including `lw` at 0xcf7165c, `lw` at 0xcf71670.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x12c, including `sw` at 0xcf71668, `sw` at 0xcf71bc8.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x130, including `sw` at 0xcf71678, `sw` at 0xcf71bcc.
  The `sd` at 0xcf71730 stores 8 bytes to [0x1028]:8 +0x120.
  The `lw` at 0xcf71738 loads 4 bytes from [[0x1028]:8+280]:8 +0x1a4.
  The `sw` at 0xcf7173c stores 4 bytes to [0x1028]:8 +0x128.
  2 such `lw` accesses load 4 bytes from [[0x1028]:8+280]:8 +0x1ac, including `lw` at 0xcf71744, `lw` at 0xcf71b9c.
  The `sw` at 0xcf71748 stores 4 bytes to [0x1028]:8 +0x12c.
  2 such `ld` accesses load 8 bytes from [[0x1028]:8+280]:8 +0x28, including `ld` at 0xcf7174c, `ld` at 0xcf71bac.
  The `sw` at 0xcf71758 stores 4 bytes to [[0x1028]:8+280]:8 +0x12c.
  The `sw` at 0xcf7175c stores 4 bytes to [[0x1028]:8+280]:8 +0x130.
  4 such `sd` accesses store 8 bytes to [[0x1028]:8+280]:8 +0x150, including `sd` at 0xcf71760, `sd` at 0xcf71868, `sd` at 0xcf71b18.
  4 such `sd` accesses store 8 bytes to [[0x1028]:8+280]:8 +0x158, including `sd` at 0xcf71764, `sd` at 0xcf71864, `sd` at 0xcf71b10.
  4 such `sd` accesses store 8 bytes to [[0x1028]:8+280]:8 +0x148, including `sd` at 0xcf71768, `sd` at 0xcf7186c, `sd` at 0xcf71b3c.
  4 such `sd` accesses store 8 bytes to [[0x1028]:8+280]:8 +0x140, including `sd` at 0xcf7176c, `sd` at 0xcf71848, `sd` at 0xcf71b00.
  4 such `sd` accesses store 8 bytes to [[0x1028]:8+280]:8 +0x138, including `sd` at 0xcf71770, `sd` at 0xcf71860, `sd` at 0xcf71b30.
  The `ld` at 0xcf71834 loads 8 bytes from [a3+288]:8 +0xc0.
  The `sw` at 0xcf718dc stores 4 bytes to a3 (arg3 at entry) +0x68.
  The `ld` at 0xcf7199c loads 8 bytes from ret(__glXAddDrawableInterest) +0x18.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x98, including `ld` at 0xcf719ec, `ld` at 0xcf71da4.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0xcf71a48, `sb` at 0xcf71ae4, `sb` at 0xcf71aec.
  The `jalr` at 0xcf71128 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf71164 calls __glXGetModes with a0=a0 at entry (arg0), a1=[a3+60], a2=?, a3=?.
  The `jalr` at 0xcf711fc calls (unknown callee) with a0=[a3+288]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf71290 calls (unknown callee) with a0=[a3+288]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf71308 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+288]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf71354 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `bgezall` at 0xcf7142c calls (unnamed) [0xcf70ce0] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1028]:8+280]:8+104], a3=sp-256, a4=a1 at entry (arg1).
  The `bgezall` at 0xcf714c0 calls (unnamed) [0xcf70e98] with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=?, a3=?.
  The `jalr` at 0xcf7150c calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-344, a2=?, a3=?.
  The `jalr` at 0xcf7158c calls __glXOverrideVisualsBogusChoose with a0=?, a1=[a3+92], a2=?, a3=?.
  The `bgezall` at 0xcf715d0 calls (unnamed) [0xcf7098c] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1028]:8+280]:8+104], a3=sp-256, a4=a1 at entry (arg1), a5=a2 at entry (arg2).
  The `bgezall` at 0xcf7162c calls (unnamed) [0xcf6ff2c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf7167c calls __glXUnbindHWContextFromThread with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xcf716c8 calls (unnamed) [0xcf70ce0] with a0=[[[0x1028]:8+280]:8+312]:8, a1=0x0, a2=[[[0x1028]:8+280]:8+104], a3=sp-256, a4=0x0.
  The `jalr` at 0xcf71780 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf717dc calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-368, a2=?, a3=?.
  The `jalr` at 0xcf71838 calls (unknown callee) with a0=[a3+288]:8, a1=[[[0x1028]:8+280]:8+328]:8, a2=[[[0x1028]:8+280]:8+312]:8, a3=?.
  The `jalr` at 0xcf7187c calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8.
  The `bgezall` at 0xcf71898 calls (unnamed) [0xcf70e98] with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=?, a3=?.
  The `jalr` at 0xcf71904 calls __glXOverrideVisualsBogusChoose with a0=?, a1=[a3+92], a2=[a3+60], a3=?.
  The `jalr` at 0xcf71920 calls __glXGetModes with a0=a0 at entry (arg0), a1=[a3+60], a2=?, a3=?.
  The `jalr` at 0xcf71968 calls glXQueryDrawable with a0=a0 at entry (arg0), a1=?, a2=0x8025, a3=?.
  The `jalr` at 0xcf7197c calls __glXAddDrawableInterest with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf719bc calls XSGIMiscQueryExtension with a0=a0 at entry (arg0), a1=sp-224, a2=sp-220, a3=?.
  The `jalr` at 0xcf71a38 calls _XSGISetSpecialDestroyInterest with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf71a84 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8.
  The `bgezall` at 0xcf71aa0 calls (unnamed) [0xcf70e98] with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=?, a3=?.
  The `jalr` at 0xcf71af0 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xcf71b38 calls (unnamed) [0xcf70e98] with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=?, a3=?.
  The `jalr` at 0xcf71b5c calls __glXPostError with a0=a0 at entry (arg0), a1=0xa, a2=0x5, a3=[a3+40]:8.
  The `jalr` at 0xcf71bb0 calls __glXPostError with a0=a0 at entry (arg0), a1=?, a2=0x5, a3=[[[0x1028]:8+280]:8+40]:8.
  The `jalr` at 0xcf71c48 calls glXQueryDrawable with a0=a0 at entry (arg0), a1=?, a2=0x8025, a3=?.
  The `jalr` at 0xcf71ca0 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8.
  The `bgezall` at 0xcf71cbc calls (unnamed) [0xcf70e98] with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=0x0, a3=0x0.
  The `jalr` at 0xcf71d00 calls __glXFreeContext with a0=[[0x1028]:8+280]:8, a1=0x1, a2=?, a3=?.
  The `jalr` at 0xcf71d44 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8.
  The `bgezall` at 0xcf71d60 calls (unnamed) [0xcf70e98] with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=?, a3=?.
  The `jalr` at 0xcf71dec calls _XSGISetSpecialDestroyInterest with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf71e14 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8.
  The `bgezall` at 0xcf71e30 calls (unnamed) [0xcf70e98] with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=ret(__glXAddDrawableInterest), a3=0x0.
  The `jalr` at 0xcf71e7c calls __glXPostError with a0=a0 at entry (arg0), a1=0x8, a2=0x5, a3=[a3+40]:8.
  The `bgezall` at 0xcf71e98 calls (unnamed) [0xcf70e98] with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=?, a3=?.
  The `bgezall` at 0xcf71eec calls (unnamed) [0xcf70e98] with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=?, a3=0x0.
  The `beq` branch at 0xcf71134 targets 0xcf71c08, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xcf7114c targets 0xcf712bc and is always taken.
  The `beq` branch at 0xcf71178 targets 0xcf71190, is taken when t0(=[a3+432]) >= 0x2 (signed), and falls through when t0(=[a3+432]) < 0x2 (signed).
  The `bne` branch at 0xcf71188 targets 0xcf711a0, is taken when t1(=[a3+436]) < 0x3 (signed), and falls through when t1(=[a3+436]) >= 0x3 (signed).
  The `beq` branch at 0xcf71198 targets 0xcf71c3c, is taken when at(?) == v1(=0x6), and falls through when at(?) != v1(=0x6).
  The `beq` branch at 0xcf711a4 targets 0xcf718e0, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xcf711ac targets 0xcf71238, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0xcf711bc targets 0xcf711e0, is taken when t1(=[a3+88]:8) != a2(?), and falls through when t1(=[a3+88]:8) == a2(?).
  The `beq` branch at 0xcf711c8 targets 0xcf7120c, is taken when at(?) == a2(?), and falls through when at(?) != a2(?).
  The `beq` branch at 0xcf711d8 targets 0xcf7120c, is taken when v1(?) == t0(=0x3), and falls through when v1(?) != t0(=0x3).
  The `beq` branch at 0xcf711e8 targets 0xcf7120c, is taken when t9(=[[a3+288]:8+208]:8) == 0, and falls through when t9(=[[a3+288]:8+208]:8) != 0.
  The `beq` branch at 0xcf71204 targets 0xcf71e70, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xcf7120c targets 0xcf71234, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0xcf71214 targets 0xcf71238, is taken when s2(?) == s4(?), and falls through when s2(?) != s4(?).
  The `beq` branch at 0xcf71224 targets 0xcf71a4c, is taken when t1(?) == at(=0x4), and falls through when t1(?) != at(=0x4).
  The `beq` branch at 0xcf71230 targets 0xcf71a4c, is taken when v1(?) == t0(=0x4), and falls through when v1(?) != t0(=0x4).
  The `beq` branch at 0xcf7123c targets 0xcf715e0, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xcf71270 targets 0xcf717ec, is taken when t1(=[a3+280]) == 0, and falls through when t1(=[a3+280]) != 0.
  The `beq` branch at 0xcf71284 targets 0xcf71834, is taken when t9(=[[a3+288]:8+200]:8) == 0, and falls through when t9(=[[a3+288]:8+200]:8) != 0.
  The `beq` branch at 0xcf71298 targets 0xcf71d10, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xcf712a4 targets 0xcf712b4, is taken when at(=[a3+368]:1) == 0, and falls through when at(=[a3+368]:1) != 0.
  The `beq` branch at 0xcf712ac targets 0xcf71b00, is taken when s7(=one of 0x0, 0x1) == 0, and falls through when s7(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xcf712b8 targets 0xcf71718, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `bne` branch at 0xcf712c0 targets 0xcf71624, is taken when s0(=a3) != 0, and falls through when s0(=a3) == 0.
  The `beq` branch at 0xcf712d4 targets 0xcf7168c, is taken when v1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `bne` branch at 0xcf712e0 targets 0xcf712fc, is taken when s0(=a3) != s1(=[[0x1028]:8+280]:8), and falls through when s0(=a3) == s1(=[[0x1028]:8+280]:8).
  The `bne` branch at 0xcf712ec targets 0xcf71300, is taken when v1(=[[[0x1028]:8+280]:8+328]:8) != s3(=a1), and falls through when v1(=[[[0x1028]:8+280]:8+328]:8) == s3(=a1).
  The `beq` branch at 0xcf712f8 targets 0xcf716e0, is taken when t0(=[[[0x1028]:8+280]:8+320]:8) == s6(=a2), and falls through when t0(=[[[0x1028]:8+280]:8+320]:8) != s6(=a2).
  The `beq` branch at 0xcf71310 targets 0xcf71b9c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `bne` branch at 0xcf71318 targets 0xcf7167c, is taken when s0(=a3) != s1(=[[0x1028]:8+280]:8), and falls through when s0(=a3) == s1(=[[0x1028]:8+280]:8).
  The `beq` branch at 0xcf71330 targets 0xcf713ac, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xcf7133c targets 0xcf713a4, is taken when t0(=[a3+280]) == 0, and falls through when t0(=[a3+280]) != 0.
  The `beq` branch at 0xcf71344 targets 0xcf713a4, is taken when s3(=a1) == 0, and falls through when s3(=a1) != 0.
  The `beq` branch at 0xcf7134c targets 0xcf713a4, is taken when s6(=a2) == 0, and falls through when s6(=a2) != 0.
  The `beq` branch at 0xcf7135c targets 0xcf71c90, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `bne` branch at 0xcf7136c targets 0xcf71390, is taken when t1(=[ret(__glXAddDrawableInterest)+12]) != at(=[a3+60]), and falls through when t1(=[ret(__glXAddDrawableInterest)+12]) == at(=[a3+60]).
  The `bne` branch at 0xcf7137c targets 0xcf71390, is taken when v1(=[ret(__glXAddDrawableInterest)+16]:8) != t0(=[a3+88]:8), and falls through when v1(=[ret(__glXAddDrawableInterest)+16]:8) == t0(=[a3+88]:8).
  The `bne` branch at 0xcf71388 targets 0xcf71394, is taken when t1(=[ret(__glXAddDrawableInterest)+64]) != at(=0x3), and falls through when t1(=[ret(__glXAddDrawableInterest)+64]) == at(=0x3).
  The `bne` branch at 0xcf71394 targets 0xcf71978, is taken when s3(=a1) != s6(=a2), and falls through when s3(=a1) == s6(=a2).
  The `beq` branch at 0xcf7139c targets 0xcf713bc and is always taken.
  The `bne` branch at 0xcf713a4 targets 0xcf713b4, is taken when s0(=a3) != 0, and falls through when s0(=a3) == 0.
  The `beq` branch at 0xcf713ac targets 0xcf71824, is taken when s3(=a1) == 0, and falls through when s3(=a1) != 0.
  The `beq` branch at 0xcf713c0 targets 0xcf71698, is taken when v0(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when v0(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0xcf713c8 targets 0xcf711ac, is taken when s7(=one of 0x0, 0x1) == 0, and falls through when s7(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xcf713d0 targets 0xcf716a4, is taken when v0(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when v0(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0xcf713dc targets 0xcf713fc, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0xcf713e8 targets 0xcf719b4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xcf713f4 targets 0xcf719b4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xcf713fc targets 0xcf71410, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `bne` branch at 0xcf71408 targets 0xcf715a8, is taken when t1(=[a3+57]:1) != 0, and falls through when t1(=[a3+57]:1) == 0.
  The `bne` branch at 0xcf71410 targets 0xcf715a4, is taken when s3(=a1) != s6(=a2), and falls through when s3(=a1) == s6(=a2).
  The `bne` branch at 0xcf7143c targets 0xcf71474, is taken when at(?) != v1(=sym(_XAsyncErrorHandler)), and falls through when at(?) == v1(=sym(_XAsyncErrorHandler)).
  The `beq` branch at 0xcf7144c targets 0xcf7145c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xcf71454 targets 0xcf71ae0, is taken when t1(=0x3) == at(?), and falls through when t1(=0x3) != at(?).
  The `bne` branch at 0xcf71464 targets 0xcf717d0, is taken when v1(=[a0+2392]:8) != t0(=sp-368), and falls through when v1(=[a0+2392]:8) == t0(=sp-368).
  The `bne` branch at 0xcf7147c targets 0xcf71518, is taken when at(?) != v1(=sym(_XAsyncErrorHandler)), and falls through when at(?) == v1(=sym(_XAsyncErrorHandler)).
  The `beq` branch at 0xcf71484 targets 0xcf71494, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xcf7148c targets 0xcf71ae8, is taken when t1(=0x3) == at(?), and falls through when t1(=0x3) != at(?).
  The `bne` branch at 0xcf7149c targets 0xcf71500, is taken when v1(=[a0+2392]:8) != t0(=sp-344), and falls through when v1(=[a0+2392]:8) == t0(=sp-344).
  The `bne` branch at 0xcf714a4 targets 0xcf71520, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xcf71518 targets 0xcf714b0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xcf71520 targets 0xcf71534, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xcf7152c targets 0xcf718d8, is taken when at(=[a3+280]) == 0, and falls through when at(=[a3+280]) != 0.
  The `beq` branch at 0xcf71534 targets 0xcf71548, is taken when s0(=a3) == s1(=[[0x1028]:8+280]:8), and falls through when s0(=a3) != s1(=[[0x1028]:8+280]:8).
  The `beq` branch at 0xcf7153c targets 0xcf71548, is taken when v1(?) == s1(=[[0x1028]:8+280]:8), and falls through when v1(?) != s1(=[[0x1028]:8+280]:8).
  The `beq` branch at 0xcf71548 targets 0xcf71238, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0xcf71554 targets 0xcf711a0, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xcf71564 targets 0xcf71154, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xcf71570 targets 0xcf71154, is taken when at(=[a3+57]:1) == 0, and falls through when at(=[a3+57]:1) != 0.
  The `beq` branch at 0xcf7159c targets 0xcf7115c and is always taken.
  The `beq` branch at 0xcf715d8 targets 0xcf71438 and is always taken.
  The `bne` branch at 0xcf715ec targets 0xcf712b8, is taken when at(=[0x1088]:8) != 0, and falls through when at(=[0x1088]:8) == 0.
  The `bgtz` branch at 0xcf71614 targets 0xcf71600, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The `beq` branch at 0xcf7161c targets 0xcf712b8 and is always taken.
  The `beq` branch at 0xcf71638 targets 0xcf71c58, is taken when a3(=[a3+40]:8) == 0, and falls through when a3(=[a3+40]:8) != 0.
  The `beq` branch at 0xcf71648 targets 0xcf71668, is taken when a1(=[a3+300]) == 0, and falls through when a1(=[a3+300]) != 0.
  The `bne` branch at 0xcf71650 targets 0xcf71b54, is taken when a1(=[a3+300]) != a0(=[[0x1028]:8+268]), and falls through when a1(=[a3+300]) == a0(=[[0x1028]:8+268]).
  The `bne` branch at 0xcf71660 targets 0xcf71b54, is taken when at(=[[0x1028]:8+272]) != v1(=[a3+304]), and falls through when at(=[[0x1028]:8+272]) == v1(=[a3+304]).
  The `beq` branch at 0xcf71674 targets 0xcf712c8 and is always taken.
  The `beq` branch at 0xcf71684 targets 0xcf71324 and is always taken.
  The `beq` branch at 0xcf71690 targets 0xcf71330 and is always taken.
  The `beq` branch at 0xcf7169c targets 0xcf713c8 and is always taken.
  The `beq` branch at 0xcf716a4 targets 0xcf713d8, is taken when at(?) == s1(=[[0x1028]:8+280]:8), and falls through when at(?) != s1(=[[0x1028]:8+280]:8).
  The `beq` branch at 0xcf716b0 targets 0xcf713d8, is taken when a0(=[[[0x1028]:8+280]:8+312]:8) == s5(=a0), and falls through when a0(=[[[0x1028]:8+280]:8+312]:8) != s5(=a0).
  The `beq` branch at 0xcf716d0 targets 0xcf71ed8, is taken when v0(=ret(0xcf70ce0)) == 0, and falls through when v0(=ret(0xcf70ce0)) != 0.
  The `beq` branch at 0xcf716d8 targets 0xcf713d8 and is always taken.
  The `beq` branch at 0xcf71718 targets 0xcf71774, is taken when s0(=a3) == s1(=[[0x1028]:8+280]:8), and falls through when s0(=a3) != s1(=[[0x1028]:8+280]:8).
  The `beq` branch at 0xcf71720 targets 0xcf71778, is taken when v1(?) == s1(=[[0x1028]:8+280]:8), and falls through when v1(?) != s1(=[[0x1028]:8+280]:8).
  The `beq` branch at 0xcf71750 targets 0xcf71cfc, is taken when t0(=[[[0x1028]:8+280]:8+40]:8) == 0, and falls through when t0(=[[[0x1028]:8+280]:8+40]:8) != 0.
  The `beq` branch at 0xcf71778 targets 0xcf71798, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xcf71790 targets 0xcf71af0, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0xcf717e4 targets 0xcf71470 and is always taken.
  The `bne` branch at 0xcf717f4 targets 0xcf712b4, is taken when at(=[0x1088]:8) != 0, and falls through when at(=[0x1088]:8) == 0.
  The `bgtz` branch at 0xcf71814 targets 0xcf71800, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The `beq` branch at 0xcf7181c targets 0xcf712b8 and is always taken.
  The `beq` branch at 0xcf71824 targets 0xcf713b8, is taken when s6(=a2) == 0, and falls through when s6(=a2) != 0.
  The `beq` branch at 0xcf7182c targets 0xcf713b8 and is always taken.
  The `bnel` branch at 0xcf71840 targets 0xcf712a4, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0; its branch-likely delay slot `lbu at,368(s0)` at 0xcf71844 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xcf718d8 targets 0xcf71534 and is always taken.
  The `beq` branch at 0xcf71934 targets 0xcf7194c, is taken when t0(=[a3+432]) >= 0x2 (signed), and falls through when t0(=[a3+432]) < 0x2 (signed).
  The `bne` branch at 0xcf71944 targets 0xcf711ac, is taken when t1(=[a3+436]) < 0x3 (signed), and falls through when t1(=[a3+436]) >= 0x3 (signed).
  The `bne` branch at 0xcf71954 targets 0xcf711ac, is taken when at(?) != v1(=0x6), and falls through when at(?) == v1(=0x6).
  The `beq` branch at 0xcf71970 targets 0xcf711ac and is always taken.
  The `beq` branch at 0xcf71984 targets 0xcf71e04, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `bne` branch at 0xcf71994 targets 0xcf719a8, is taken when t0(=[ret(__glXAddDrawableInterest)+12]) != t1(=[a3+60]), and falls through when t0(=[ret(__glXAddDrawableInterest)+12]) == t1(=[a3+60]).
  The `bne` branch at 0xcf719a0 targets 0xcf713b8, is taken when at(=[ret(__glXAddDrawableInterest)+24]:8) != 0, and falls through when at(=[ret(__glXAddDrawableInterest)+24]:8) == 0.
  The `beq` branch at 0xcf719a8 targets 0xcf713b8 and is always taken.
  The `beq` branch at 0xcf719c4 targets 0xcf713fc, is taken when v0(=ret(XSGIMiscQueryExtension)) == 0, and falls through when v0(=ret(XSGIMiscQueryExtension)) != 0.
  The `beq` branch at 0xcf719d0 targets 0xcf71da0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xcf719d8 targets 0xcf713fc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xcf719e4 targets 0xcf713fc, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xcf71a44 targets 0xcf713fc and is always taken.
  The `bne` branch at 0xcf71a58 targets 0xcf71238, is taken when v1(?) < t0(?) (signed), and falls through when v1(?) >= t0(?) (signed).
  The `bne` branch at 0xcf71a6c targets 0xcf71238, is taken when t1(?) < at(?) (signed), and falls through when t1(?) >= at(?) (signed).
  The `beq` branch at 0xcf71ae0 targets 0xcf7145c and is always taken.
  The `beq` branch at 0xcf71ae8 targets 0xcf71494 and is always taken.
  The `beq` branch at 0xcf71af8 targets 0xcf7179c and is always taken.
  The `beq` branch at 0xcf71b48 targets 0xcf712b4 and is always taken.
  The `beq` branch at 0xcf71bb8 targets 0xcf71bd4, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xcf71bc0 targets 0xcf71bd4, is taken when s0(=a3) == s1(=[[0x1028]:8+280]:8), and falls through when s0(=a3) != s1(=[[0x1028]:8+280]:8).
  The `beq` branch at 0xcf71c50 targets 0xcf711a4 and is always taken.
  The `beq` branch at 0xcf71d08 targets 0xcf71778 and is always taken.
  The `beq` branch at 0xcf71dfc targets 0xcf719d8 and is always taken.
  The return at 0xcf714f8 has v0 = 0x0.
  The return at 0xcf71710 has v0 = 0x1.
  The return at 0xcf717c8 has v0 = 0x1.
  The return at 0xcf718d0 has v0 = 0x0.
  The return at 0xcf71ad8 has v0 = 0x0.
  The return at 0xcf71b94 has v0 = 0x0.
  The return at 0xcf71c00 has v0 = 0x0.
  The return at 0xcf71c34 has v0 = 0x0.
  The return at 0xcf71c88 has v0 = 0x0.
  The return at 0xcf71cf4 has v0 = 0x0.
  The return at 0xcf71d98 has v0 = 0x0.
  The return at 0xcf71e68 has v0 = 0x0.
  The return at 0xcf71ed0 has v0 = 0x0.
  The return at 0xcf71f24 has v0 = 0x0.
  The instructions from 0xcf719b0 to 0xcf719b0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xcf71b50 to 0xcf71b50 are not reached by any path from the entry, and their branches are not listed.

- `glXMakeContextCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf71f9c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf71f9c-0xcf71fd0 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xcf71fb8 calls __glXMakeContextCurrent with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0.
  The return at 0xcf71fc8 has v0 = ret(__glXMakeContextCurrent).

- `glXGetCurrentReadDrawable` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf71fe0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf71fe0-0xcf71ff0 (16 bytes).
  It occupies 16 bytes.
  The `ld` at 0xcf71fe0 loads 8 bytes from abs 0x1028.
  The `ld` at 0xcf71fe4 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0xcf71fec loads 8 bytes from [[0x1028]:8+280]:8 +0x140.
  The return at 0xcf71fe8 has v0 = [[[0x1028]:8+280]:8+320]:8.

- `glXSelectEventSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf76340 (n64).
  Appends a 0x18-byte block to the buffer whose write pointer is the word at +0xb0 of the first argument and advances that pointer by 0x18 (`sd` at 0xcf763d4); no reply is read.
  It calls `__glXSetupForCommand` on its four argument registers (`jalr` at 0xcf76368) and saves the result in a frame slot (`sd` at 0xcf76370); when the low byte of that result is zero (`beq` at 0xcf76378) it returns at once with v0 holding that masked byte, zero, and writes nothing.
  Otherwise, if the doubleword at +0x968 is nonzero, a call goes through the first word of the table it points to (`jalr` at 0xcf76390).
  When the limit doubleword at +0xb8 is below the pointer at +0xb0 plus 0x18, unsigned (`bne` at 0xcf763a8), `_XFlush` is called first (`jalr` at 0xcf7644c) and the pointer is reloaded.
  The block gets the halfword 0x6 at +0x2 (`sh` at 0xcf763b8), the byte 0x10 at +0x1 (`sb` at 0xcf763f4), the word 0x10009 at +0x4 (`sw` at 0xcf763f0), the word 0x801f at +0x10 (`sw` at 0xcf763fc), a1 at +0xc (`sw` at 0xcf763e8) and a2 at +0x14 (`sw` at 0xcf76408).
  The byte at +0x0 is first set to 0x10 (`sb` at 0xcf763c0) and then overwritten with the low byte of the saved setup result (`sb` at 0xcf76400); the pointer at +0xa0 receives the block address from before the advance (`sd` at 0xcf763b0), and the doubleword at +0x98 gets one added (`sd` at 0xcf763e0).
  After the writes a call goes through the second word of the +0x968 table (`jalr` at 0xcf7641c) when that pointer is nonzero (`beq` at 0xcf76410), and a call goes through the pointer at +0xd0 (`jalr` at 0xcf76430) when it is nonzero (`beq` at 0xcf76428).
  Unknown: the routines behind the table words and the +0xd0 pointer, which the bundle reaches only through registers; and the field boundaries inside the words 0x10009 at +0x4 and 0x801f at +0x10, since the datasheet excerpts carry no table for them.
  Evidence grade: established.

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
  The `jalr` at 0xcf766b4 calls _XReply with a0=a0 at entry (arg0), a1=sp-176, a2=0x0, a3=0x0, a7=0x11.
  The `jalr` at 0xcf766d8 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf766f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf7670c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf7673c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf767a8 calls _XReply with a0=a0 at entry (arg0), a1=sp-144, a2=0x0, a3=0x0, a5=0x1d, a6=a1 at entry (arg1), a7=[a0+152]:8+1.
  The `jalr` at 0xcf767d8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf767ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf76814 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+176]:8+16.
  The `jalr` at 0xcf76830 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xcf76844 calls memset with a0=a2 at entry (arg2), a1=0x0, a2=0x30, a3=?.
  The `jalr` at 0xcf768f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf76908 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf76914 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf76948 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf7695c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf769a0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
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
  The `beq` branch at 0xcf76898 targets 0xcf7686c, is taken when a7(=table(-0x800c)) >= 0x1a (unsigned), and falls through when a7(=table(-0x800c)) < 0x1a (unsigned).
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
  The `sd` at 0xcf7764c stores 8 bytes to ?.
  The `jalr` at 0xcf77330 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf7734c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77360 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77404 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0xcf77554 calls _XReply with a0=a0 at entry (arg0), a1=sp-176, a2=0x0, a3=0x0.
  The `jalr` at 0xcf77570 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0xcf77584 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77590 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf775dc calls _XFlush with a0=a0 at entry (arg0), a1=[a0+176]:8, a2=?, a3=?.
  The `jalr` at 0xcf775fc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0xcf77610 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77628 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=sp-176, a2=0x11, a3=0x0.
  The `jalr` at 0xcf77634 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77648 calls __glXFreeDrawablePrivate with a0=?, a1=?, a2=?, a3=?.
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
  The return at 0xcf775b0 has v0 = ?.
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
  Inferred: it acts on the drawable record that `__glXAddDrawableInterest` returns for the second argument, since the committed note for that callee says it returns the matching record from the drawable-interest list; it returns at once when `__glXSetupForCommand` gives a zero low byte (`beq` at 0xcf77830) or when the second argument is zero (`beq` at 0xcf77838).
  Otherwise it calls `__glXAddDrawableInterest` with a1 (`jalr` at 0xcf77844), then `__glXRemoveDrawableInterest` and `__glXFreeDrawablePrivate` on the record (`jalr` at 0xcf77854 and 0xcf77860), with no store to the record.
  The pointer at +0xb0 of the first argument is copied into +0xa0 (`sd` at 0xcf77898), and the block at that pointer gets a halfword 0x4 at +0x2 (`sh` at 0xcf778a0), a byte 0x10 at +0x0 (`sb` at 0xcf778a8), the second argument at +0xc (`sw` at 0xcf778c8), the word 0 at +0x8 (`sw` at 0xcf778d0), the word 0x10003 at +0x4 (`sw` at 0xcf778d8) and a byte 0x10 at +0x1 (`sb` at 0xcf778dc); the `sb` at 0xcf778e0 then overwrites +0x0 with the saved `__glXSetupForCommand` result.
  `sd` at 0xcf778bc adds one to the doubleword at +0x98, and `sd` at 0xcf778c4 adds 0x10 to the pointer at +0xb0.
  When the `bne` at 0xcf77890 is taken (the pointer at +0xb8 below the pointer at +0xb0 plus 0x10, unsigned), the `jalr` at 0xcf77940 calls `_XFlush` and the pointer at +0xb0 is reloaded (`ld` at 0xcf7794c) before the block writes.
  The `jalr` at 0xcf77878 calls through the first entry of the table at +0x968 before the block is written, and the `jalr` at 0xcf778f4 calls through its second entry (+0x8) after the block writes, each only when the +0x968 pointer is nonzero, with a2 the incremented +0x98 doubleword and a3 the advanced +0xb0 pointer; the `jalr` at 0xcf77908 calls through the pointer at +0xd0 when that pointer is nonzero.
  On the two early returns (0xcf77830 and 0xcf77838) v0 still holds the `__glXSetupForCommand` result.
  Unknown: the routines behind the pointers at +0x968 (offsets +0x0 and +0x8) and at +0xd0; the contents of those words in the display would settle it.
  Evidence grade: inferred.

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
  Sets up a drawable record and a private video-source object, runs three calls through one pointer, then
  queues a 0x2c-byte request in the output buffer of the context in `a0` and returns the result of
  the context's +0x48 routine. It returns 0 when the low byte of the `__glXSetupForCommand` result
  is zero (the `beq` at 0xcf77a68) or when `a4` is neither 2 nor 5 (the `beq` at 0xcf77a70 and
  0xcf77a78). Otherwise it calls `__glXInitializeVideoLibrary` (the `jalr` at 0xcf77a94) and returns
  0 when that is zero (the `beq` at 0xcf77a9c). It calls the routine at +0x48 of the context (the
  `jalr` at 0xcf77aac), keeps its result in a frame slot, passes it to `__glXAddDrawableInterest` (the
  `jalr` at 0xcf77ac0) and returns 0 when that is zero (the `bne` at 0xcf77ad4). Inferred: the
  committed note on `__glXAddDrawableInterest` says it returns the interest record or zero, so the
  stores at 0xcf77b08 to 0xcf77b30 go into that record: zero doublewords at +0x48 and +0x10, the
  word 3 at +0x40, the byte 1 at +0x2c, `a1` at +0xc and `a0` at +0x18.
  It calls `__glXCreateVideoSourcePrivate` with the record plus 0x40 and 3 (the `jalr` at 0xcf77b34);
  a zero result removes the record through `__glXRemoveDrawableInterest` and returns 0 (the `jalr` at
  0xcf77d40). With a non-zero result P, it makes three calls through the pointer held in the `.bss`
  slot at 0xcfa8490, each with `a2`, `a3` and `a5` as the first three arguments, a code in `a3` and
  a buffer at its own frame base in `a4`: code 4 (the `jalr` at 0xcf77b70, with `a4` stored to the
  word at P+0 in its delay slot), then 6 (0xcf77bac), then 7 (0xcf77be0). A negative result from
  any of them removes the record and returns 0 (the `bltz` at 0xcf77b78, 0xcf77bb4 and 0xcf77be8).
  After the first call the frame-base words at +0 and +4 go to P+4 and P+8 (the `sw` at 0xcf77b90
  and 0xcf77ba4); after the second the word at +0 goes to P+0xc (0xcf77bd8); after the third the
  word at +0 goes to P+0x10 (0xcf77bf8). The `bgezall` at 0xcf77c00 tests `zero`, so it always
  calls `videoPackingToInternalFormat`, with that frame-base word as its argument, and the `sw` at
  0xcf77c10 stores the result at P+0x14.
  The routine then calls slot 0 of the pointer at +0x968 when it is non-zero (the `jalr` at
  0xcf77c24). If the limit at +0xb8 is below the write pointer plus 0x2c (the `bne` at 0xcf77c40) it
  calls `_XFlush` and reloads the pointer (the `jalr` at 0xcf77d64). The request holds the byte 0x10
  at +1 (the `sb` at 0xcf77c88), the halfword 0xb at +2 (the `sh` at 0xcf77c58), 0x10002 at +4 (the
  `sw` at 0xcf77ca0), zero at +8, the saved result of the +0x48 routine at +0xc, the saved `a1` at
  +0x10 (the `sw` at 0xcf77c98), `a4` at +0x14 (the `sw` at 0xcf77c7c), the low byte of the
  `__glXSetupForCommand` result at +0 (the `sb` at 0xcf77c8c), and P+4 through P+0x14 copied to
  +0x18 through +0x28 (the `sw` at 0xcf77cac to 0xcf77ccc). It adds 0x2c to the write pointer and
  1 to the doubleword at +0x98 (the `sd` at 0xcf77c78 and 0xcf77c6c). Finally it calls slot +8 of the
  +0x968 pointer and the routine at +0xd0 when those are non-zero (the `jalr` at 0xcf77ce0 and
  0xcf77cf8), removes the record (the `jalr` at 0xcf77d04) and returns the saved result of the +0x48
  routine (the `ld` at 0xcf77d10, the `jr` at 0xcf77d1c).
  Inferred: the halfword 0xb at +2 is the request size in 4-byte units, because 0x2c divided by 4 is 11.
  Unknown: the content of the routine in the `.bss` slot at 0xcfa8490, of the routine at +0x48 of the
  context, and of the routines behind the pointers at +0x968 and +0xd0; committed entries for those
  would settle it.
  Evidence grade: inferred.

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
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xcf77b90, `sw` at 0xcf77ba4, `sw` at 0xcf77bd8.
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
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xcf77ca8, `lw` at 0xcf77cb0, `lw` at 0xcf77cb8.
  The `sw` at 0xcf77cac stores 4 bytes to [a0+176]:8 +0x18.
  The `sw` at 0xcf77cb4 stores 4 bytes to [a0+176]:8 +0x1c.
  The `sw` at 0xcf77cbc stores 4 bytes to [a0+176]:8 +0x20.
  The `sw` at 0xcf77cc4 stores 4 bytes to [a0+176]:8 +0x24.
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
  The `bgezall` at 0xcf77c00 calls videoPackingToInternalFormat [0xcf77950] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77c24 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?, a7=a0 at entry (arg0).
  The `jalr` at 0xcf77ce0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf77cf8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77d04 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf77d40 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?, a6=ret(__glXCreateVideoSourcePrivate).
  The `jalr` at 0xcf77d64 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0xcf77d7c calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=a5 at entry (arg5), a3=?.
  The `jalr` at 0xcf77da0 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=a5 at entry (arg5), a3=?.
  The `jalr` at 0xcf77dc4 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
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
  The return at 0xcf77d1c has v0 = ?.
  The return at 0xcf77d34 has v0 = 0x0.
  The return at 0xcf77d58 has v0 = 0x0.
  The return at 0xcf77d94 has v0 = 0x0.
  The return at 0xcf77db8 has v0 = 0x0.
  The return at 0xcf77ddc has v0 = 0x0.
  The instructions from 0xcf77a90 to 0xcf77a90 are not reached by any path from the entry, and their branches are not listed.

- `glXSwapIntervalSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf77f34 (n64).
  Inferred: this is the swap-interval request path of the board's GL library, since the linked ioctl row for 0x3ee names a swap-interval handler, and it works through the pointer at abs 0x1028. Let P be the 8-byte word at abs 0x1028, Q the 8-byte word at P+0x118 (`ld` at 0xcf77f3c) and R the 8-byte word at Q+0x138 (`ld` at 0xcf77fc0); it returns 5 (`jr ra` at 0xcf780d8) when Q is zero (`beq` at 0xcf77f54) and 6 (`jr ra` at 0xcf78104) when the first argument is zero or less (`blez` at 0xcf77f5c). When the 4-byte word at Q+0x118 is nonzero (`lw` at 0xcf77f64), it copies the 4-byte word at Q+0x128 and the first argument into the first two words of its frame (`sw` at 0xcf77f78 and 0xcf77f74), calls `ioctl` with request 0x3ee and that frame as the third argument (`jalr` at 0xcf77f9c), and returns 0 (`jr ra` at 0xcf77fb4) whatever the call returns; the descriptor is the word at offset 4 of the table entry indexed by the 4-byte word at P+0x108 (`lw` at 0xcf77f80), with the index shifted left by 0x2 (`lw` at 0xcf77fa0).
  Inferred: when the word at Q+0x118 is zero and R is nonzero (`bne` at 0xcf77fc4), it calls `__glXSetupForCommand`, which the committed entry for that routine gives as selecting the display's current context and returning a single byte, with R, the a1 and a3 values as they arrived, and the 4-byte word at Q+0x68 (`lw` at 0xcf77fe4; `jalr` at 0xcf77ff0), keeping the return in the frame (`sd` at 0xcf78008); when R is zero it returns 5 (`jr ra` at 0xcf77fdc). If the 8-byte word E at R+0x968 (`ld` at 0xcf77ff8) is nonzero (`beq` at 0xcf77ffc), it calls the pointer at offset 0 of E with R as first argument (`jalr` at 0xcf7800c). Before the stores it calls `_XFlush` (`jalr` at 0xcf780e4) when the 8-byte word at R+0xb8 (`ld` at 0xcf7801c) is below D+0x10 (unsigned, `bne` at 0xcf78028), where D is the 8-byte word at R+0xb0 (`ld` at 0xcf78018); it then stores D into R+0xa0 (`sd` at 0xcf78030; on the flush path D is reloaded from R+0xb0 by the `ld` at 0xcf780ec first) and writes the record at D: the low byte of the saved return of `__glXSetupForCommand` at +0 (`sb` at 0xcf78070, which overwrites the 0x10 that the `sb` at 0xcf78038 wrote there), 0x10 at +1 (`sb` at 0xcf78074), the halfword 4 at +2 (`sh` at 0xcf78040), the word 0x10000 at +4 (`sw` at 0xcf7806c), the saved Q+0x68 word at +8 (`sw` at 0xcf78064) and the first argument at +0xc (`sw` at 0xcf78060), adds 1 to the word at R+0x98 (`sd` at 0xcf78054) and 0x10 to the word at R+0xb0 (`sd` at 0xcf7805c), calls the pointer at offset 8 of E when E is nonzero (`jalr` at 0xcf78088), calls the pointer at R+0xd0 when that word is nonzero (`jalr` at 0xcf7809c), and then always calls `XFlush` (`jalr` at 0xcf780a8) before returning 0 (`jr ra` at 0xcf780c4).
  Unknown: the second and third arguments of the call through the pointer at offset 0 of E (`jalr` at 0xcf7800c), which the bundle leaves as unresolved; the entry of the routine that pointer names would settle them.
  Unknown: the reply that request 0x3ee at 0xcf77f9c hands back to the driver layer, which the return at 0xcf77fb4 discards; the handler's own entry for that request would settle it.
  Evidence grade: inferred.

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

- `__glx_SelectBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf82340 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf82340-0xcf82480 (320 bytes).
  It occupies 320 bytes.
  The `ld` at 0xcf82348 loads 8 bytes from abs 0x1028.
  The `ld` at 0xcf8234c loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0xcf82350 loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `ld` at 0xcf8238c loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0xcf82390, `ld` at 0xcf8240c.
  The `ld` at 0xcf8239c loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0xcf823ac, `ld` at 0xcf823d8, `ld` at 0xcf82464.
  The `ld` at 0xcf823b0 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0xcf823c4 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  The `sh` at 0xcf823cc stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0xcf823d0, `sb` at 0xcf823f8.
  The `ld` at 0xcf823d4 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0xcf823e0 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0xcf823e8 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  The `lw` at 0xcf823ec loads 4 bytes from [[0x1028]:8+280]:8 +0x1a4.
  The `sb` at 0xcf823f4 stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `lw` at 0xcf82400 loads 4 bytes from [[0x1028]:8+280]:8 +0x68.
  The `sw` at 0xcf82404 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8.
  The `sw` at 0xcf82408 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `ld` at 0xcf82418 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0xcf82428 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `sd` at 0xcf82448 stores 8 bytes to [[0x1028]:8+280]:8 +0x78.
  The `jalr` at 0xcf82388 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=[[[0x1028]:8+280]:8+312]:8.
  The `jalr` at 0xcf823a0 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0xcf8241c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=[[[0x1028]:8+280]:8+104], a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0xcf82434 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf8245c calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0xcf82364 targets 0xcf82470, is taken when a3(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when a3(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0xcf82374 targets 0xcf82440, is taken when a3(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when a3(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0xcf82394 targets 0xcf823ac, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0xcf823bc targets 0xcf8245c, is taken when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < v0(=[[[[0x1028]:8+280]:8+312]:8+176]:8+12) (unsigned), and falls through when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= v0(=[[[[0x1028]:8+280]:8+312]:8+176]:8+12) (unsigned).
  The `beq` branch at 0xcf82410 targets 0xcf82428, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0xcf8242c targets 0xcf82440, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0xcf82468 targets 0xcf823c4 and is always taken.
  The return at 0xcf82454 has v0 = one of ?, ret(?).
  The return at 0xcf82478 has v0 = ?.

- `__glx_FeedbackBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf82480 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf82480-0xcf825cc (332 bytes).
  It occupies 332 bytes.
  The `ld` at 0xcf82488 loads 8 bytes from abs 0x1028.
  The `ld` at 0xcf8248c loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0xcf82490 loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `ld` at 0xcf824d0 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0xcf824d4, `ld` at 0xcf82558.
  The `ld` at 0xcf824e0 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0xcf824f0, `ld` at 0xcf8251c, `ld` at 0xcf825b0.
  The `ld` at 0xcf824f4 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0xcf82508 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  The `sh` at 0xcf82510 stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0xcf82514, `sb` at 0xcf82540.
  The `ld` at 0xcf82518 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0xcf82524 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0xcf8252c stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  The `lw` at 0xcf82534 loads 4 bytes from [[0x1028]:8+280]:8 +0x1a4.
  The `sb` at 0xcf8253c stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `lw` at 0xcf82548 loads 4 bytes from [[0x1028]:8+280]:8 +0x68.
  The `sw` at 0xcf8254c stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0xc.
  The `sw` at 0xcf82550 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8.
  The `sw` at 0xcf82554 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `ld` at 0xcf82564 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0xcf82574 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `sd` at 0xcf82594 stores 8 bytes to [[0x1028]:8+280]:8 +0x70.
  The `jalr` at 0xcf824cc calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[[0x1028]:8+280]:8+312]:8.
  The `jalr` at 0xcf824e4 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0xcf82568 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=a0 at entry (arg0), a4=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0xcf82580 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf825a8 calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0xcf824a4 targets 0xcf825bc, is taken when a4(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when a4(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0xcf824b8 targets 0xcf8258c, is taken when a4(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when a4(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0xcf824d8 targets 0xcf824f0, is taken when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0xcf82500 targets 0xcf825a8, is taken when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < v0(=[[[[0x1028]:8+280]:8+312]:8+176]:8+16) (unsigned), and falls through when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= v0(=[[[[0x1028]:8+280]:8+312]:8+176]:8+16) (unsigned).
  The `beq` branch at 0xcf8255c targets 0xcf82574, is taken when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0xcf82578 targets 0xcf8258c, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0xcf825b4 targets 0xcf82508 and is always taken.
  The return at 0xcf825a0 has v0 = one of ?, ret(?).
  The return at 0xcf825c4 has v0 = ?.

- `__glx_ReadPixels` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf84acc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf84acc-0xcf84d34 (616 bytes).
  It occupies 616 bytes.
  The `ld` at 0xcf84ad4 loads 8 bytes from abs 0x1028.
  The `ld` at 0xcf84ad8 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0xcf84adc loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `ld` at 0xcf84b30 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0xcf84b34, `ld` at 0xcf84cc8.
  The `ld` at 0xcf84b40 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0xcf84b4c, `ld` at 0xcf84b84, `ld` at 0xcf84d20.
  The `ld` at 0xcf84b50 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0xcf84b6c stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  The `sh` at 0xcf84b74 stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0xcf84b78, `sb` at 0xcf84ba8.
  The `ld` at 0xcf84b80 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0xcf84b8c stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0xcf84b94 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  The `lw` at 0xcf84b9c loads 4 bytes from [[0x1028]:8+280]:8 +0x1a4.
  The `sb` at 0xcf84ba4 stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `lw` at 0xcf84bb0 loads 4 bytes from [[0x1028]:8+280]:8 +0x68.
  The `sw` at 0xcf84bb4 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1c.
  The `sw` at 0xcf84bb8 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x18.
  The `sw` at 0xcf84bbc stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x14.
  The `sw` at 0xcf84bc0 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x10.
  The `sw` at 0xcf84bc4 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0xc.
  The `sw` at 0xcf84bc8 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8.
  The `sw` at 0xcf84bcc stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `lbu` at 0xcf84bd8 loads 1 byte from [[0x1028]:8+280]:8 +0x80.
  The `sb` at 0xcf84be4 stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x21.
  The `sb` at 0xcf84bf0 stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x20.
  The `lw` at 0xcf84c3c loads 4 bytes from [[0x1028]:8+280]:8 +0xf0.
  The `sw` at 0xcf84c50 stores 4 bytes to [[0x1028]:8+280]:8 +0xf0.
  The `ld` at 0xcf84cd4 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0xcf84ce4 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `jalr` at 0xcf84b2c calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf84b44 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf84bec calls _XReply with a0=[[[0x1028]:8+280]:8+312]:8, a1=sp-208, a2=0x0, a3=0x0, a4=[[[0x1028]:8+280]:8+128]:1, a6=a4 at entry (arg4), a7=a3 at entry (arg3).
  The `jalr` at 0xcf84c14 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf84c34 calls _XEatData with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf84c6c calls _XRead with a0=[[[0x1028]:8+280]:8+312]:8, a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xcf84c8c calls _XEatData with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf84cb0 calls __glXEmptyImage with a0=[[0x1028]:8+280]:8, a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a5 at entry (arg5).
  The `jalr` at 0xcf84cbc calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf84cd8 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf84cf0 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf84d14 calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0xcf84af0 targets 0xcf84d24, is taken when t1(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when t1(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0xcf84b18 targets 0xcf84cfc, is taken when t1(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when t1(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0xcf84b38 targets 0xcf84b4c, is taken when v0(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when v0(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0xcf84b5c targets 0xcf84d10, is taken when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < v1(=[[[[0x1028]:8+280]:8+312]:8+176]:8+36) (unsigned), and falls through when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= v1(=[[[[0x1028]:8+280]:8+312]:8+176]:8+36) (unsigned).
  The `beq` branch at 0xcf84c04 targets 0xcf84cc8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xcf84c1c targets 0xcf84c54, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bne` branch at 0xcf84c40 targets 0xcf84cc8, is taken when a7(=[[[0x1028]:8+280]:8+240]) != 0, and falls through when a7(=[[[0x1028]:8+280]:8+240]) == 0.
  The `beq` branch at 0xcf84c4c targets 0xcf84cc8 and is always taken.
  The `beq` branch at 0xcf84c7c targets 0xcf84c94, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `beq` branch at 0xcf84ccc targets 0xcf84ce4, is taken when v0(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when v0(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0xcf84ce8 targets 0xcf84cfc, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0xcf84d1c targets 0xcf84b60 and is always taken.
  The return at 0xcf84d08 has v0 = one of a5, ?, ret(?).
  The return at 0xcf84d2c has v0 = a5.

- `isNotProxy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf853e8 (n64).
  Inferred: the routine runs a graphics-init check on a device node when the signed word at arg0+0x40 is below 0x40, since the string at 0xcfa4538 is the path '/dev/opengl' and the linked ioctl rows for 0x65 and 0x66 both tag their requests as graphics init without naming a handler. The word at arg0+0x40 gates everything: 0x40 or more (the `bne` at 0xcf853fc falls through) returns 0 from the return at 0xcf85408, and anything lower goes on to open '/dev/opengl' with flags 0x802 (`jalr` at 0xcf85420), where a failed open (`bltz` at 0xcf85430) returns 0 from the return at 0xcf85538. Next is fcntl (`jalr` at 0xcf85444) with 0x2 and 0x5 as its second and third arguments; a negative answer (`bltz` at 0xcf8544c) makes the routine close the descriptor (`jalr` at 0xcf8555c) and return 0 at 0xcf8556c. The ioctl 0x65 call (`jalr` at 0xcf8545c) takes zero as its third argument, and a result of 0 or less (`blez` at 0xcf85464) ends with a close (`jalr` at 0xcf85594) and a return of 0 at 0xcf855a4. When the word at arg0+0x40 is not below that ioctl result (signed, `bne` at 0xcf85474), the descriptor is closed (`jalr` at 0xcf85480) and 0 returns from 0xcf85490; when it is below, ioctl 0x66 runs (`jalr` at 0xcf854b4) on a request block at the frame base that holds the word at arg0+0x40 at +0 (`sw` at 0xcf854b8), the address of frame +0x18 at +8 (`sd` at 0xcf854a4) and 0x28 at +0x10 (`sw` at 0xcf85498), and a negative result closes the descriptor and returns 0 at 0xcf85588 (`bltz` at 0xcf854bc). When that ioctl result is not negative, the descriptor is closed (`jalr` at 0xcf854c4) and strchr is called with 0x3a on the string at the pointer found at offset 0xd8 from the 8-byte word at arg0+0x198 (`jalr` at 0xcf854d8; that word is saved to frame +0x40 by the `sd` at 0xcf85400), and a nil result returns 0 at 0xcf85544 (`beq` at 0xcf854e0). The byte at the pointer strchr returned must equal the byte at frame +0x28 (`lbu` at 0xcf854e8 and 0xcf854ec, `bne` at 0xcf854f0, with a mismatch returning 0 at 0xcf8552c), and the bytes after it are then compared one per pass with frame bytes read from frame +0x18 with displacement 0x11 (`lbu` at 0xcf85518, `beq` at 0xcf85520), until a '.' (0x2e) or the end of the string, which returns 1 at 0xcf85550 (`beq` at 0xcf85504 and 0xcf8550c); a pair of unequal bytes returns 0 at 0xcf8552c.
  Unknown: the reply bytes in the frame that request 0x66 fills, which the frame-byte reads above compare against, since the bundle has no reply layout for that request; the handler's own entry for 0x66 would settle it.
  Evidence grade: inferred.

- `CreateContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf856c8 (n64).
  This is the n64 build of CreateContext at 0xd8c18f8. It initializes the client library (0xcf85700), reads environment variables with getenv (0xcf85800, 0xcf85dbc), and calls __glXCreateDirectContext (0xcf858cc). It also sets up vertex-array state, calls __glXOverrideVisualsIdToXid at several sites, and calls __glXFindVisualConfig (0xcf85e14). The last path before the final _XFlush calls fprintf (0xcf85f74) and then exit with status 0 (0xcf85f80).
  Grade: inferred.
  Reviewed: 2026-11-12

- `GetBoardName` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf87cec (n64).
  Reads the 32-bit word at element `a1` of the 64-byte-stride table that the pointer at `a0`+0x30
  addresses, and returns 0 without touching the device when that word is 0x40 or more (the `bne` at
  0xcf87d0c falls to the return at 0xcf87d14). Otherwise it opens `/dev/opengl` (the string at
  0xcfa4538) with 0x802 in `a1` (the `jalr` at 0xcf87d2c), and a negative descriptor returns 0 at
  0xcf87db4 with no further calls. On success it builds a request block at the base of its own frame:
  the table word at +0 (the `sw` at 0xcf87d6c), a pointer to frame offset 0x18 at +8 (the `sd` at
  0xcf87d54) and the constant 0x28 at +0x10 (the `sw` at 0xcf87d48). It then sends one `ioctl` on the
  descriptor with request 0x66, with `a2` pointing at that block and the table word also in `a3` (the
  `jalr` at 0xcf87d68). A negative result closes the descriptor and returns 0 (the `jalr` at
  0xcf87dc0, the `jr` at 0xcf87dd0). Otherwise it measures the string at frame offset 0x18 with
  `strlen`, copies that many bytes into the caller's buffer `a2` with `strncpy`, closes the
  descriptor (the `jalr` at 0xcf87d98) and returns 1 (the constant at 0xcf87da4).
  Inferred: request 0x66 is the graphics-init request, because the linked ioctl row names it that way;
  the body has only the number.
  Unknown: the device-side use of the table word and of the 0x28 constant in the request block, and
  whether the call fills the bytes at frame offset 0x18; the linked ioctl row has no handler, so the
  handler for request 0x66 would settle it.
  Evidence grade: inferred.

- `glXGetCurrentDisplay` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf89364 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf89364-0xcf89384 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0xcf89364 loads 8 bytes from abs 0x1028.
  The `ld` at 0xcf89368 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0xcf89380 loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `bne` branch at 0xcf8936c targets 0xcf8937c, is taken when a2(=[[0x1028]:8+280]:8) != 0, and falls through when a2(=[[0x1028]:8+280]:8) == 0.
  The return at 0xcf89374 has v0 = 0x0.
  The return at 0xcf8937c has v0 = [[[0x1028]:8+280]:8+312]:8.

- `glXGetFBConfigAttrib` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf899f8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf899f8-0xcf8a024 (1580 bytes).
  It occupies 1580 bytes.
  The `lw` at 0xcf89a60 loads 4 bytes from a1 (arg1 at entry) +0x94.
  45 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xcf89a6c, `sw` at 0xcf89abc, `sw` at 0xcf89afc.
  The `lw` at 0xcf89ab0 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0xcf89af8 loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lw` at 0xcf89b48 loads 4 bytes from a1 (arg1 at entry) +0x40.
  The `lw` at 0xcf89b7c loads 4 bytes from a1 (arg1 at entry) +0x98.
  The `lw` at 0xcf89b8c loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lw` at 0xcf89bbc loads 4 bytes from a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x20, including `lw` at 0xcf89bf8, `lw` at 0xcf89e10.
  The `lbu` at 0xcf89c0c loads 1 byte from a1 (arg1 at entry) +0xa0.
  2 such `ldc1` accesses load 8 bytes from a1 (arg1 at entry) +0xa8, including `ldc1` at 0xcf89c14, `ldc1` at 0xcf89f38.
  The `lw` at 0xcf89c50 loads 4 bytes from a1 (arg1 at entry) +0x9c.
  The `lw` at 0xcf89c60 loads 4 bytes from a1 (arg1 at entry) +0x54.
  The `ldc1` at 0xcf89c9c loads 8 bytes from a1 (arg1 at entry) +0xc8.
  The `lw` at 0xcf89cc8 loads 4 bytes from a1 (arg1 at entry) +0x78.
  The `lw` at 0xcf89cec loads 4 bytes from a1 (arg1 at entry) +0x5c.
  The `lw` at 0xcf89d14 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0xcf89d38 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0xcf89d60 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lw` at 0xcf89d70 loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `ldc1` at 0xcf89d98 loads 8 bytes from a1 (arg1 at entry) +0xb0.
  The `lbu` at 0xcf89dbc loads 1 byte from a1 (arg1 at entry) +0x4f.
  The `lw` at 0xcf89dd8 loads 4 bytes from a1 (arg1 at entry) +0x74.
  The `lw` at 0xcf89df4 loads 4 bytes from a1 (arg1 at entry) +0x58.
  The `lw` at 0xcf89e20 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `lw` at 0xcf89e30 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `ldc1` at 0xcf89e58 loads 8 bytes from a1 (arg1 at entry) +0xe0.
  The `lw` at 0xcf89e7c loads 4 bytes from a1 (arg1 at entry) +0x64.
  The `lw` at 0xcf89e98 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0xcf89eb4 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lw` at 0xcf89ed0 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lw` at 0xcf89eec loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lbu` at 0xcf89efc loads 1 byte from a1 (arg1 at entry) +0x4e.
  The `lw` at 0xcf89f18 loads 4 bytes from a1 (arg1 at entry) +0x3c.
  The `ldc1` at 0xcf89f3c loads 8 bytes from a1 (arg1 at entry) +0xd0.
  The `lw` at 0xcf89f54 loads 4 bytes from a1 (arg1 at entry) +0x7c.
  The `lw` at 0xcf89f64 loads 4 bytes from a1 (arg1 at entry) +0x60.
  The `lw` at 0xcf89f74 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `ldc1` at 0xcf89f90 loads 8 bytes from a1 (arg1 at entry) +0xc0.
  The `ldc1` at 0xcf89fb4 loads 8 bytes from a1 (arg1 at entry) +0xd8.
  The `lw` at 0xcf89fcc loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xcf89fdc loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `ldc1` at 0xcf89fec loads 8 bytes from a1 (arg1 at entry) +0xb8.
  The `lw` at 0xcf8a004 loads 4 bytes from a1 (arg1 at entry) +0x90.
  The `lw` at 0xcf8a014 loads 4 bytes from a1 (arg1 at entry) +0x6c.
  The `bne` branch at 0xcf89a08 targets 0xcf89a70, is taken when a2 < 0x28 (signed), and falls through when a2 >= 0x28 (signed).
  The `bne` branch at 0xcf89a10 targets 0xcf89b8c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xcf89a18 targets 0xcf89b08, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xcf89a20 targets 0xcf89c0c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xcf89a2c targets 0xcf89c70, is taken when a2 < a4(=0x802e) (signed), and falls through when a2 >= a4(=0x802e) (signed).
  The `beq` branch at 0xcf89a34 targets 0xcf89f3c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xcf89a44 targets 0xcf89e40, is taken when a2 < a4(=0x186a0) (signed), and falls through when a2 >= a4(=0x186a0) (signed).
  The `beq` branch at 0xcf89a4c targets 0xcf8a004, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xcf89a58 targets 0xcf89c38, is taken when a2 != v0(=0x186a1), and falls through when a2 == v0(=0x186a1).
  The `bne` branch at 0xcf89a70 targets 0xcf89ac0, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xcf89a78 targets 0xcf89c60, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xcf89a84 targets 0xcf89b9c, is taken when a2 < 0x23 (signed), and falls through when a2 >= 0x23 (signed).
  The `bne` branch at 0xcf89a90 targets 0xcf89e30, is taken when a2 < 0x24 (signed), and falls through when a2 >= 0x24 (signed).
  The `bne` branch at 0xcf89a98 targets 0xcf89d24, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xcf89aa0 targets 0xcf89fcc, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xcf89aa8 targets 0xcf89c38, is taken when a2 != v0(=0x27), and falls through when a2 == v0(=0x27).
  The `bne` branch at 0xcf89ac4 targets 0xcf89b58, is taken when a2 < 0x8 (signed), and falls through when a2 >= 0x8 (signed).
  The `bne` branch at 0xcf89ad0 targets 0xcf89d70, is taken when a2 < 0x9 (signed), and falls through when a2 >= 0x9 (signed).
  The `bne` branch at 0xcf89ad8 targets 0xcf89cb4, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xcf89ae0 targets 0xcf89f54, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xcf89ae8 targets 0xcf89e70, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xcf89af0 targets 0xcf89c38, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xcf89b14 targets 0xcf89bcc, is taken when a2 < a4(=0x8013) (signed), and falls through when a2 >= a4(=0x8013) (signed).
  The `beq` branch at 0xcf89b1c targets 0xcf89e20, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xcf89b24 targets 0xcf89d48, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xcf89b2c targets 0xcf89fdc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xcf89b38 targets 0xcf89f0c, is taken when a2 < a4(=0x801a) (signed), and falls through when a2 >= a4(=0x801a) (signed).
  The `bne` branch at 0xcf89b40 targets 0xcf89c38, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xcf89b58 targets 0xcf89c40, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xcf89b64 targets 0xcf89efc, is taken when a2 < 0x6 (signed), and falls through when a2 >= 0x6 (signed).
  The `bne` branch at 0xcf89b6c targets 0xcf89db0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xcf89b74 targets 0xcf89c38, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xcf89b9c targets 0xcf89cd8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xcf89ba4 targets 0xcf89f64, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xcf89bac targets 0xcf89e8c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xcf89bb4 targets 0xcf89c38, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xcf89bd4 targets 0xcf89cfc, is taken when a2 < a4(=0x8010) (signed), and falls through when a2 >= a4(=0x8010) (signed).
  The `beq` branch at 0xcf89bdc targets 0xcf89f74, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xcf89be8 targets 0xcf89ec4, is taken when a2 < a4(=0x8012) (signed), and falls through when a2 >= a4(=0x8012) (signed).
  The `bne` branch at 0xcf89bf0 targets 0xcf89c38, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xcf89c30 targets 0xcf8a014, is taken when a2 == v1(=0x2), and falls through when a2 != v1(=0x2).
  The `bne` branch at 0xcf89c40 targets 0xcf89c2c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xcf89c48 targets 0xcf89c38, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xcf89c78 targets 0xcf89d80, is taken when a2 < a4(=0x802b) (signed), and falls through when a2 >= a4(=0x802b) (signed).
  The `beq` branch at 0xcf89c80 targets 0xcf89fec, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xcf89c8c targets 0xcf89f84, is taken when a2 < a4(=0x802d) (signed), and falls through when a2 >= a4(=0x802d) (signed).
  The `bne` branch at 0xcf89c94 targets 0xcf89c38, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xcf89cb8 targets 0xcf89dcc, is taken when a2 < 0xa (signed), and falls through when a2 >= 0xa (signed).
  The `beq` branch at 0xcf89cc0 targets 0xcf89c38, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xcf89cdc targets 0xcf89de8, is taken when a2 < 0x10 (signed), and falls through when a2 >= 0x10 (signed).
  The `beq` branch at 0xcf89ce4 targets 0xcf89c38, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xcf89d04 targets 0xcf89e04, is taken when a2 < a4(=0x800c) (signed), and falls through when a2 >= a4(=0x800c) (signed).
  The `bne` branch at 0xcf89d0c targets 0xcf89c38, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xcf89d28 targets 0xcf89ea8, is taken when a2 < 0x25 (signed), and falls through when a2 >= 0x25 (signed).
  The `beq` branch at 0xcf89d30 targets 0xcf89c38, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xcf89d50 targets 0xcf89ee0, is taken when a2 < a4(=0x8017) (signed), and falls through when a2 >= a4(=0x8017) (signed).
  The `bne` branch at 0xcf89d58 targets 0xcf89c38, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xcf89d88 targets 0xcf89f28, is taken when a2 < a4(=0x802a) (signed), and falls through when a2 >= a4(=0x802a) (signed).
  The `bne` branch at 0xcf89d90 targets 0xcf89c38, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xcf89db4 targets 0xcf89c38, is taken when a2 != v1(=0x6), and falls through when a2 == v1(=0x6).
  The `bne` branch at 0xcf89dd0 targets 0xcf89c38, is taken when a2 != at(=0x9), and falls through when a2 == at(=0x9).
  The `bne` branch at 0xcf89dec targets 0xcf89c38, is taken when a2 != v1(=0xf), and falls through when a2 == v1(=0xf).
  The `bne` branch at 0xcf89e08 targets 0xcf89c38, is taken when a2 != at(=0x800b), and falls through when a2 == at(=0x800b).
  The `bne` branch at 0xcf89e48 targets 0xcf89fa8, is taken when a2 < a4(=0x8030) (signed), and falls through when a2 >= a4(=0x8030) (signed).
  The `bne` branch at 0xcf89e50 targets 0xcf89c38, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xcf89e74 targets 0xcf89c38, is taken when a2 != a0(=0xc), and falls through when a2 == a0(=0xc).
  The `bne` branch at 0xcf89e90 targets 0xcf89c38, is taken when a2 != at(=0x20), and falls through when a2 == at(=0x20).
  The `bne` branch at 0xcf89eac targets 0xcf89c38, is taken when a2 != v1(=0x24), and falls through when a2 == v1(=0x24).
  The `bne` branch at 0xcf89ec8 targets 0xcf89c38, is taken when a2 != at(=0x8011), and falls through when a2 == at(=0x8011).
  The `bne` branch at 0xcf89ee4 targets 0xcf89c38, is taken when a2 != v1(=0x8016), and falls through when a2 == v1(=0x8016).
  The `bne` branch at 0xcf89f10 targets 0xcf89c38, is taken when a2 != at(=0x8019), and falls through when a2 == at(=0x8019).
  The `bne` branch at 0xcf89f2c targets 0xcf89c38, is taken when a2 != v1(=0x8029), and falls through when a2 == v1(=0x8029).
  The `beq` branch at 0xcf89f34 targets 0xcf89c18 and is always taken.
  The `bne` branch at 0xcf89f88 targets 0xcf89c38, is taken when a2 != v0(=0x802c), and falls through when a2 == v0(=0x802c).
  The `bne` branch at 0xcf89fac targets 0xcf89c38, is taken when a2 != a0(=0x802f), and falls through when a2 == a0(=0x802f).
  The return at 0xcf89a68 has v0 = 0x0.
  The return at 0xcf89ab8 has v0 = 0x0.
  The return at 0xcf89b00 has v0 = 0x0.
  The return at 0xcf89b50 has v0 = 0x0.
  The return at 0xcf89b84 has v0 = 0x0.
  The return at 0xcf89b94 has v0 = 0x0.
  The return at 0xcf89bc4 has v0 = 0x0.
  The return at 0xcf89c04 has v0 = 0x0.
  The return at 0xcf89c24 has v0 = 0x0.
  The return at 0xcf89c38 has v0 = 0x2.
  The return at 0xcf89c58 has v0 = 0x0.
  The return at 0xcf89c68 has v0 = 0x0.
  The return at 0xcf89cac has v0 = 0x0.
  The return at 0xcf89cd0 has v0 = 0x0.
  The return at 0xcf89cf4 has v0 = 0x0.
  The return at 0xcf89d1c has v0 = 0x0.
  The return at 0xcf89d40 has v0 = 0x0.
  The return at 0xcf89d68 has v0 = 0x0.
  The return at 0xcf89d78 has v0 = 0x0.
  The return at 0xcf89da8 has v0 = 0x0.
  The return at 0xcf89dc4 has v0 = 0x0.
  The return at 0xcf89de0 has v0 = 0x0.
  The return at 0xcf89dfc has v0 = 0x0.
  The return at 0xcf89e18 has v0 = 0x0.
  The return at 0xcf89e28 has v0 = 0x0.
  The return at 0xcf89e38 has v0 = 0x0.
  The return at 0xcf89e68 has v0 = 0x0.
  The return at 0xcf89e84 has v0 = 0x0.
  The return at 0xcf89ea0 has v0 = 0x0.
  The return at 0xcf89ebc has v0 = 0x0.
  The return at 0xcf89ed8 has v0 = 0x0.
  The return at 0xcf89ef4 has v0 = 0x0.
  The return at 0xcf89f04 has v0 = 0x0.
  The return at 0xcf89f20 has v0 = 0x0.
  The return at 0xcf89f4c has v0 = 0x0.
  The return at 0xcf89f5c has v0 = 0x0.
  The return at 0xcf89f6c has v0 = 0x0.
  The return at 0xcf89f7c has v0 = 0x0.
  The return at 0xcf89fa0 has v0 = 0x0.
  The return at 0xcf89fc4 has v0 = 0x0.
  The return at 0xcf89fd4 has v0 = 0x0.
  The return at 0xcf89fe4 has v0 = 0x0.
  The return at 0xcf89ffc has v0 = 0x0.
  The return at 0xcf8a00c has v0 = 0x0.
  The return at 0xcf8a01c has v0 = 0x0.

- `glXGetFBConfigFltAttribSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8a070 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8a070-0xcf8a1cc (348 bytes).
  It occupies 348 bytes.
  The `ld` at 0xcf8a0b0 loads 8 bytes from table(0xcfa45c8) +0x0.
  The `ldc1` at 0xcf8a0bc loads 8 bytes from a1 (arg1 at entry) +0xa8.
  9 such `sdc1` accesses store 8 bytes to a3 (arg3 at entry) +0x0, including `sdc1` at 0xcf8a0c8, `sdc1` at 0xcf8a0e4, `sdc1` at 0xcf8a100.
  The `ldc1` at 0xcf8a0d8 loads 8 bytes from a1 (arg1 at entry) +0xb0.
  The `ldc1` at 0xcf8a0f4 loads 8 bytes from a1 (arg1 at entry) +0xb8.
  The `ldc1` at 0xcf8a110 loads 8 bytes from a1 (arg1 at entry) +0xc0.
  The `ldc1` at 0xcf8a12c loads 8 bytes from a1 (arg1 at entry) +0xc8.
  The `ldc1` at 0xcf8a148 loads 8 bytes from a1 (arg1 at entry) +0xd0.
  The `ldc1` at 0xcf8a164 loads 8 bytes from a1 (arg1 at entry) +0xd8.
  The `ldc1` at 0xcf8a180 loads 8 bytes from a1 (arg1 at entry) +0xe0.
  The `jalr` at 0xcf8a1a0 calls glXGetFBConfigAttribSGIX with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-64, a5=table(0xcfa45c8).
  The `beq` branch at 0xcf8a0a8 targets 0xcf8a198, is taken when a5(=a2-32809) >= 0x8 (unsigned), and falls through when a5(=a2-32809) < 0x8 (unsigned).
  The return at 0xcf8a0d0 has v0 = 0x0.
  The return at 0xcf8a0ec has v0 = 0x0.
  The return at 0xcf8a108 has v0 = 0x0.
  The return at 0xcf8a124 has v0 = 0x0.
  The return at 0xcf8a140 has v0 = 0x0.
  The return at 0xcf8a15c has v0 = 0x0.
  The return at 0xcf8a178 has v0 = 0x0.
  The return at 0xcf8a190 has v0 = 0x0.
  The return at 0xcf8a1c4 has v0 = ret(glXGetFBConfigAttribSGIX).
  The indirect jump at 0xcf8a0b4 uses the jump table at 0xcfa45c8 with targets 0xcf8a0bc, 0xcf8a0d8, 0xcf8a0f4, 0xcf8a110, 0xcf8a12c, 0xcf8a148, 0xcf8a164, 0xcf8a180.

- `glXChooseFBConfigWithFltSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8a660 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8a660-0xcf8b9a4 (4932 bytes).
  It occupies 4932 bytes.
  The `lw` at 0xcf8a7b0 loads 4 bytes from a2 (arg2 at entry) +0x0.
  69 such `lw` accesses load 4 bytes from ?, including `lw` at 0xcf8a810, `lw` at 0xcf8a824, `lw` at 0xcf8a870.
  The `ldc1` at 0xcf8a838 loads 8 bytes from a3 (arg3 at entry) +0x0.
  17 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0xcf8a880, `ldc1` at 0xcf8a898, `ldc1` at 0xcf8a9e4.
  The `ld` at 0xcf8a8c4 loads 8 bytes from table(0xcfa4608) +0x0.
  The `lw` at 0xcf8a8f4 loads 4 bytes from a0 (arg0 at entry) +0xe4.
  The `ld` at 0xcf8a904 loads 8 bytes from ret(__glXInitialize) +0x30.
  The `ld` at 0xcf8a910 loads 8 bytes from ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x18.
  The `lw` at 0xcf8a918 loads 4 bytes from ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x20.
  The `lw` at 0xcf8a94c loads 4 bytes from [([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8 +0x48.
  12 such `sw` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `sw` at 0xcf8a980, `sw` at 0xcf8aac0, `sw` at 0xcf8ab10.
  7 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xcf8aae4, `lbu` at 0xcf8ae68, `lbu` at 0xcf8aeec.
  The `sd` at 0xcf8ac98 stores 8 bytes to ret(malloc) +0x0.
  15 such `sd` accesses store 8 bytes to ?, including `sd` at 0xcf8b168, `sd` at 0xcf8b198, `sd` at 0xcf8b1a0.
  22 such `ld` accesses load 8 bytes from ?, including `ld` at 0xcf8b3f8, `ld` at 0xcf8b400, `ld` at 0xcf8b408.
  21 such `sw` accesses store 4 bytes to ?, including `sw` at 0xcf8b3fc, `sw` at 0xcf8b404, `sw` at 0xcf8b40c.
  The `jalr` at 0xcf8a8d8 calls __glXInitialize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf8ab50 calls malloc with a0=0x8, a1=ret(__glXInitialize), a2=?, a3=?.
  The `jalr` at 0xcf8b060 calls malloc with a0=([([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32] << 0x3), a1=ret(__glXInitialize), a2=?, a3=?, a5=(a1 << 0x6).
  The `bgezall` at 0xcf8b0f0 calls GetBoardName [0xcf87cec] with a0=?, a1=a1 at entry (arg1), a2=sp-328, a3=?.
  The `jalr` at 0xcf8b10c calls strncmp with a0=sp-328, a1=0xcfa8028, a2=0x7, a3=?.
  The `jalr` at 0xcf8b524 calls free with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xcf8b7dc calls orderFBConfigSGIXs [0xcf8a210] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xcf8a7a8 targets 0xcf8a830, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0xcf8a7b4 targets 0xcf8a830, is taken when a0(=[a2]) == 0, and falls through when a0(=[a2]) != 0.
  The `bne` branch at 0xcf8a7ec targets 0xcf8a854, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xcf8a800 targets 0xcf8a990, is taken when v0(?) >= 0x27 (signed), and falls through when v0(?) < 0x27 (signed).
  The `beq` branch at 0xcf8a81c targets 0xcf8a830, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0xcf8a828 targets 0xcf8a7ec, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xcf8a830 targets 0xcf8a8d4, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xcf8a844 targets 0xcf8a8d0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xcf8a84c targets 0xcf8a8a8 and is always taken.
  The `bne` branch at 0xcf8a860 targets 0xcf8a9b8, is taken when v0(?) < 0xd (signed), and falls through when v0(?) >= 0xd (signed).
  The `beq` branch at 0xcf8a868 targets 0xcf8aa54, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xcf8a878 targets 0xcf8a81c and is always taken.
  The `beq` branch at 0xcf8a890 targets 0xcf8a8d4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xcf8a8a4 targets 0xcf8a8d0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xcf8a8bc targets 0xcf8aaa4, is taken when a0(=table(-0x8029)) >= 0x8 (unsigned), and falls through when a0(=table(-0x8029)) < 0x8 (unsigned).
  The `beq` branch at 0xcf8a8e4 targets 0xcf8ac20, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `bltz` branch at 0xcf8a8ec targets 0xcf8aaf4, is taken when s3(=a1) < 0 (signed), and falls through when s3(=a1) >= 0 (signed).
  The `beq` branch at 0xcf8a8fc targets 0xcf8aaf4, is taken when s3(=a1) >= a6(=[a0+228]) (signed), and falls through when s3(=a1) < a6(=[a0+228]) (signed).
  The `beq` branch at 0xcf8a914 targets 0xcf8ac4c, is taken when s4(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8) == 0, and falls through when s4(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8) != 0.
  The `beq` branch at 0xcf8a91c targets 0xcf8ac4c, is taken when a0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) == 0, and falls through when a0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) != 0.
  The `beq` branch at 0xcf8a924 targets 0xcf8b054, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `blez` branch at 0xcf8a92c targets 0xcf8a964, is taken when a0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed), and falls through when a0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  The `beq` branch at 0xcf8a950 targets 0xcf8ab4c, is taken when v1(?) == s1(?), and falls through when v1(?) != s1(?).
  The `bnel` branch at 0xcf8a95c targets 0xcf8a950, is taken when a5(?) != s0(?), and falls through when a5(?) == s0(?); its branch-likely delay slot `lw v1,72(s0)` at 0xcf8a960 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xcf8a990 targets 0xcf8aa80, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0xcf8a998 targets 0xcf8ab20, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xcf8a9b0 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8a9c0 targets 0xcf8aad0, is taken when v0(?) < 0x8 (signed), and falls through when v0(?) >= 0x8 (signed).
  The `beq` branch at 0xcf8a9c8 targets 0xcf8ab8c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xcf8a9dc targets 0xcf8a81c and is always taken.
  The `beq` branch at 0xcf8a9ec targets 0xcf8a890 and is always taken.
  The `beq` branch at 0xcf8a9fc targets 0xcf8a890 and is always taken.
  The `beq` branch at 0xcf8aa0c targets 0xcf8a890 and is always taken.
  The `beq` branch at 0xcf8aa1c targets 0xcf8a890 and is always taken.
  The `beq` branch at 0xcf8aa2c targets 0xcf8a890 and is always taken.
  The `beq` branch at 0xcf8aa3c targets 0xcf8a890 and is always taken.
  The `beq` branch at 0xcf8aa4c targets 0xcf8a890 and is always taken.
  The `bne` branch at 0xcf8aa54 targets 0xcf8abb0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xcf8aa64 targets 0xcf8aca8, is taken when v0(?) >= 0x21 (signed), and falls through when v0(?) < 0x21 (signed).
  The `beq` branch at 0xcf8aa78 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8aa80 targets 0xcf8abd0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xcf8aa88 targets 0xcf8acd4, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xcf8aa9c targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8aad0 targets 0xcf8abfc, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xcf8aad8 targets 0xcf8ad20, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xcf8aaec targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8ab24 targets 0xcf8acf4, is taken when v0(?) < a3(=0x802e) (signed), and falls through when v0(?) >= a3(=0x802e) (signed).
  The `bne` branch at 0xcf8ab2c targets 0xcf8add8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xcf8ab44 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8ab58 targets 0xcf8ac78, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bne` branch at 0xcf8ab90 targets 0xcf8ad44, is taken when v0(?) < 0xb (signed), and falls through when v0(?) >= 0xb (signed).
  The `beq` branch at 0xcf8ab98 targets 0xcf8ae24, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xcf8aba8 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8abb0 targets 0xcf8ad68, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xcf8abb8 targets 0xcf8ae40, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xcf8abc8 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8abdc targets 0xcf8ad90, is taken when v0(?) < a4(=0x8010) (signed), and falls through when v0(?) >= a4(=0x8010) (signed).
  The `bne` branch at 0xcf8abe4 targets 0xcf8ae58, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xcf8abf4 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8ac00 targets 0xcf8adbc, is taken when v0(?) < 0x3 (signed), and falls through when v0(?) >= 0x3 (signed).
  The `beq` branch at 0xcf8ac08 targets 0xcf8adf8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xcf8ac18 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8acac targets 0xcf8ae78, is taken when v0(?) < 0x24 (signed), and falls through when v0(?) >= 0x24 (signed).
  The `beq` branch at 0xcf8acb4 targets 0xcf8af50, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xcf8accc targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8acd4 targets 0xcf8ae98, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xcf8acdc targets 0xcf8af6c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xcf8acec targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8acf4 targets 0xcf8aebc, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0xcf8ad00 targets 0xcf8af84, is taken when t0(=0x802c) < v0(?) (signed), and falls through when t0(=0x802c) >= v0(?) (signed).
  The `beq` branch at 0xcf8ad18 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8ad20 targets 0xcf8aee4, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xcf8ad2c targets 0xcf8adf8, is taken when v0(?) >= 0x8 (signed), and falls through when v0(?) < 0x8 (signed).
  The `beq` branch at 0xcf8ad3c targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8ad44 targets 0xcf8aefc, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xcf8ad4c targets 0xcf8adf8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xcf8ad60 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8ad70 targets 0xcf8af1c, is taken when v0(?) < 0xf (signed), and falls through when v0(?) >= 0xf (signed).
  The `beq` branch at 0xcf8ad78 targets 0xcf8adf8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xcf8ad88 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8ad98 targets 0xcf8af34, is taken when v0(?) < 0x28 (signed), and falls through when v0(?) >= 0x28 (signed).
  The `beq` branch at 0xcf8ada0 targets 0xcf8adf8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xcf8adb4 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8adc0 targets 0xcf8adf8, is taken when v0(?) != a6(=0x2), and falls through when v0(?) == a6(=0x2).
  The `beq` branch at 0xcf8add0 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8add8 targets 0xcf8afa4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xcf8ade0 targets 0xcf8b0a0, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xcf8adf0 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8ae24 targets 0xcf8adf8, is taken when v0(?) != t9(=0xc), and falls through when v0(?) == t9(=0xc).
  The `beq` branch at 0xcf8ae38 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8ae40 targets 0xcf8adf8, is taken when v0(?) != v1(=0x11), and falls through when v0(?) == v1(=0x11).
  The `beq` branch at 0xcf8ae50 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8ae58 targets 0xcf8aff8, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0xcf8ae60 targets 0xcf8adf8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xcf8ae70 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8ae78 targets 0xcf8afd8, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xcf8ae80 targets 0xcf8adf8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xcf8ae90 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8ae9c targets 0xcf8b014, is taken when v0(?) < t2(=0x8017) (signed), and falls through when v0(?) >= t2(=0x8017) (signed).
  The `bne` branch at 0xcf8aea4 targets 0xcf8adf8, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xcf8aeb4 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8aebc targets 0xcf8b030, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xcf8aec4 targets 0xcf8adf8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xcf8aedc targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8aee4 targets 0xcf8adf8, is taken when v0(?) != a6(=0x6), and falls through when v0(?) == a6(=0x6).
  The `beq` branch at 0xcf8aef4 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8af00 targets 0xcf8adf8, is taken when v0(?) != v1(=0x9), and falls through when v0(?) == v1(=0x9).
  The `beq` branch at 0xcf8af14 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8af1c targets 0xcf8adf8, is taken when v0(?) != a6(=0xe), and falls through when v0(?) == a6(=0xe).
  The `beq` branch at 0xcf8af2c targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8af34 targets 0xcf8adf8, is taken when v0(?) != v1(=0x27), and falls through when v0(?) == v1(=0x27).
  The `beq` branch at 0xcf8af48 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8af50 targets 0xcf8adf8, is taken when v0(?) != at(=0x25), and falls through when v0(?) == at(=0x25).
  The `beq` branch at 0xcf8af64 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8af6c targets 0xcf8adf8, is taken when v0(?) != a6(=0x8028), and falls through when v0(?) == a6(=0x8028).
  The `beq` branch at 0xcf8af7c targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8af84 targets 0xcf8adf8, is taken when v0(?) != v1(=0x802d), and falls through when v0(?) == v1(=0x802d).
  The `beq` branch at 0xcf8af9c targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8afac targets 0xcf8b0bc, is taken when v0(?) < a6(=0x8030) (signed), and falls through when v0(?) >= a6(=0x8030) (signed).
  The `bne` branch at 0xcf8afb8 targets 0xcf8adf8, is taken when at(=0x8030) < v0(?) (signed), and falls through when at(=0x8030) >= v0(?) (signed).
  The `beq` branch at 0xcf8afd0 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8afdc targets 0xcf8adf8, is taken when v0(?) != a5(=0x22), and falls through when v0(?) == a5(=0x22).
  The `beq` branch at 0xcf8aff0 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8affc targets 0xcf8adf8, is taken when v0(?) != v1(=0x8011), and falls through when v0(?) == v1(=0x8011).
  The `beq` branch at 0xcf8b00c targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8b018 targets 0xcf8adf8, is taken when v0(?) != a6(=0x8016), and falls through when v0(?) == a6(=0x8016).
  The `beq` branch at 0xcf8b028 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8b034 targets 0xcf8adf8, is taken when v0(?) != v1(=0x802a), and falls through when v0(?) == v1(=0x802a).
  The `beq` branch at 0xcf8b04c targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8b06c targets 0xcf8b0e0, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bne` branch at 0xcf8b0a4 targets 0xcf8adf8, is taken when v0(?) != a6(=0x186a1), and falls through when v0(?) == a6(=0x186a1).
  The `beq` branch at 0xcf8b0b4 targets 0xcf8a81c and is always taken.
  The `bne` branch at 0xcf8b0c0 targets 0xcf8adf8, is taken when v0(?) != v1(=0x802f), and falls through when v0(?) == v1(=0x802f).
  The `beq` branch at 0xcf8b0d8 targets 0xcf8a81c and is always taken.
  The `beq` branch at 0xcf8b0f8 targets 0xcf8b11c, is taken when v0(=ret(GetBoardName)) == 0, and falls through when v0(=ret(GetBoardName)) != 0.
  The `beq` branch at 0xcf8b114 targets 0xcf8b4e0, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `bne` branch at 0xcf8b11c targets 0xcf8b204, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `bne` branch at 0xcf8b124 targets 0xcf8b204, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `blez` branch at 0xcf8b12c targets 0xcf8b1d8, is taken when s1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed), and falls through when s1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  The `beq` branch at 0xcf8b158 targets 0xcf8b174, is taken when (at(?) & 0x7) == 0, and falls through when (at(?) & 0x7) != 0.
  The `bne` branch at 0xcf8b16c targets 0xcf8b160, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0xcf8b17c targets 0xcf8b1d4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xcf8b1cc targets 0xcf8b18c, is taken when a1(?) != s1(?), and falls through when a1(?) == s1(?).
  The `blez` branch at 0xcf8b204 targets 0xcf8b3cc, is taken when s1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed), and falls through when s1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  The `beq` branch at 0xcf8b240 targets 0xcf8b258 and is always taken.
  The `beq` branch at 0xcf8b248 targets 0xcf8b298 and is always taken.
  The `beq` branch at 0xcf8b254 targets 0xcf8b3cc, is taken when s0(?) == s1(?), and falls through when s0(?) != s1(?).
  The `bne` branch at 0xcf8b268 targets 0xcf8b250, is taken when a5(?) < a6(?) (signed), and falls through when a5(?) >= a6(?) (signed).
  The `bne` branch at 0xcf8b274 targets 0xcf8b250, is taken when at(?) != v1(?), and falls through when at(?) == v1(?).
  The `beq` branch at 0xcf8b27c targets 0xcf8b248, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xcf8b288 targets 0xcf8b248, is taken when a6(?) == at(?), and falls through when a6(?) != at(?).
  The `beq` branch at 0xcf8b290 targets 0xcf8b250 and is always taken.
  The `bne` branch at 0xcf8b2a0 targets 0xcf8b250, is taken when v1(?) != a5(?), and falls through when v1(?) == a5(?).
  The `bne` branch at 0xcf8b2b4 targets 0xcf8b250, is taken when a6(?) < at(?) (signed), and falls through when a6(?) >= at(?) (signed).
  The `bne` branch at 0xcf8b2c8 targets 0xcf8b250, is taken when a1(?) < v1(?) (signed), and falls through when a1(?) >= v1(?) (signed).
  The `bne` branch at 0xcf8b2dc targets 0xcf8b250, is taken when a7(?) < a5(?) (signed), and falls through when a7(?) >= a5(?) (signed).
  The `bne` branch at 0xcf8b2f0 targets 0xcf8b250, is taken when t0(?) < a6(?) (signed), and falls through when t0(?) >= a6(?) (signed).
  The `bne` branch at 0xcf8b304 targets 0xcf8b250, is taken when t1(?) < at(?) (signed), and falls through when t1(?) >= at(?) (signed).
  The `bne` branch at 0xcf8b318 targets 0xcf8b250, is taken when t2(?) < v1(?) (signed), and falls through when t2(?) >= v1(?) (signed).
  The `bne` branch at 0xcf8b32c targets 0xcf8b250, is taken when a5(?) < a6(?) (signed), and falls through when a5(?) >= a6(?) (signed).
  The `bne` branch at 0xcf8b340 targets 0xcf8b250, is taken when at(?) < v1(?) (signed), and falls through when at(?) >= v1(?) (signed).
  The `bne` branch at 0xcf8b354 targets 0xcf8b250, is taken when a5(?) < a6(?) (signed), and falls through when a5(?) >= a6(?) (signed).
  The `bne` branch at 0xcf8b368 targets 0xcf8b250, is taken when at(?) < v1(?) (signed), and falls through when at(?) >= v1(?) (signed).
  The `bne` branch at 0xcf8b37c targets 0xcf8b250, is taken when a5(?) < a6(?) (signed), and falls through when a5(?) >= a6(?) (signed).
  The `bne` branch at 0xcf8b390 targets 0xcf8b250, is taken when at(?) < v1(?) (unsigned), and falls through when at(?) >= v1(?) (unsigned).
  The `bne` branch at 0xcf8b3a4 targets 0xcf8b250, is taken when a5(?) < a6(?) (unsigned), and falls through when a5(?) >= a6(?) (unsigned).
  The `beq` branch at 0xcf8b3ac targets 0xcf8b55c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xcf8b3bc targets 0xcf8b55c, is taken when v1(?) == a5(?), and falls through when v1(?) != a5(?).
  The `beq` branch at 0xcf8b3c4 targets 0xcf8b55c and is always taken.
  The `blez` branch at 0xcf8b3cc targets 0xcf8b520, is taken when s2(?) <= 0 (signed), and falls through when s2(?) > 0 (signed).
  The `beq` branch at 0xcf8b3d4 targets 0xcf8b4b4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bltz` branch at 0xcf8b3e8 targets 0xcf8b418, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bltz` branch at 0xcf8b41c targets 0xcf8b44c, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bltz` branch at 0xcf8b450 targets 0xcf8b480, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bltz` branch at 0xcf8b484 targets 0xcf8b4b4, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bne` branch at 0xcf8b4ec targets 0xcf8b11c, is taken when at(?) != s3(=0xc), and falls through when at(?) == s3(=0xc).
  The `bne` branch at 0xcf8b4f8 targets 0xcf8b11c, is taken when a5(?) != s3(=0xc), and falls through when a5(?) == s3(=0xc).
  The `bne` branch at 0xcf8b500 targets 0xcf8b11c, is taken when a6(?) != s3(=0xc), and falls through when a6(?) == s3(=0xc).
  The `beq` branch at 0xcf8b518 targets 0xcf8b11c and is always taken.
  The `bne` branch at 0xcf8b55c targets 0xcf8b250, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xcf8b56c targets 0xcf8b250, is taken when a5(?) != a6(?), and falls through when a5(?) == a6(?).
  The `beq` branch at 0xcf8b574 targets 0xcf8b590, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xcf8b584 targets 0xcf8b590, is taken when v1(?) == a5(?), and falls through when v1(?) != a5(?).
  The `bne` branch at 0xcf8b590 targets 0xcf8b250, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8b598 targets 0xcf8b5b4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xcf8b5a8 targets 0xcf8b5b4, is taken when at(?) == v1(?), and falls through when at(?) != v1(?).
  The `bne` branch at 0xcf8b5b4 targets 0xcf8b250, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8b5bc targets 0xcf8b5d8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xcf8b5cc targets 0xcf8b5d8, is taken when a6(?) == at(?), and falls through when a6(?) != at(?).
  The `bne` branch at 0xcf8b5d8 targets 0xcf8b250, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8b5e0 targets 0xcf8b5fc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xcf8b5f0 targets 0xcf8b5fc, is taken when a5(?) == a6(?), and falls through when a5(?) != a6(?).
  The `bne` branch at 0xcf8b5fc targets 0xcf8b250, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8b604 targets 0xcf8b620, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xcf8b614 targets 0xcf8b620, is taken when v1(?) == a5(?), and falls through when v1(?) != a5(?).
  The `bne` branch at 0xcf8b620 targets 0xcf8b250, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8b628 targets 0xcf8b644, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xcf8b638 targets 0xcf8b644, is taken when at(?) == v1(?), and falls through when at(?) != v1(?).
  The `bne` branch at 0xcf8b644 targets 0xcf8b250, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xcf8b658 targets 0xcf8b250, is taken when a5(?) != a6(?), and falls through when a5(?) == a6(?).
  The `bne` branch at 0xcf8b66c targets 0xcf8b250, is taken when a6(?) != at(?), and falls through when a6(?) == at(?).
  The `beq` branch at 0xcf8b674 targets 0xcf8b688, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xcf8b680 targets 0xcf8b92c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xcf8b688 targets 0xcf8b250, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xcf8b69c targets 0xcf8b250, is taken when a5(?) < a6(?) (signed), and falls through when a5(?) >= a6(?) (signed).
  The `bne` branch at 0xcf8b6b0 targets 0xcf8b250, is taken when at(?) < v1(?) (signed), and falls through when at(?) >= v1(?) (signed).
  The `bne` branch at 0xcf8b6c4 targets 0xcf8b250, is taken when a5(?) < a6(?) (signed), and falls through when a5(?) >= a6(?) (signed).
  The `bne` branch at 0xcf8b6d4 targets 0xcf8b250, is taken when at(?) != v1(?), and falls through when at(?) == v1(?).
  The `bc1t` branch at 0xcf8b6e4 targets 0xcf8b250, is taken when f0 < f1 (c.lt.d at 0xcf8b6e0), and falls through when not (f0 < f1 (c.lt.d at 0xcf8b6e0)).
  The `bc1t` branch at 0xcf8b6f8 targets 0xcf8b250, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1t` branch at 0xcf8b708 targets 0xcf8b250, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `bc1t` branch at 0xcf8b71c targets 0xcf8b250, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `bc1t` branch at 0xcf8b72c targets 0xcf8b250, is taken when f0 < f1 (c.lt.d at 0xcf8b728), and falls through when not (f0 < f1 (c.lt.d at 0xcf8b728)).
  The `bc1t` branch at 0xcf8b740 targets 0xcf8b250, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1t` branch at 0xcf8b750 targets 0xcf8b250, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `bc1t` branch at 0xcf8b764 targets 0xcf8b250, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `beq` branch at 0xcf8b784 targets 0xcf8b790, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xcf8b78c targets 0xcf8b950, is taken when a7(?) == s3(=0xc), and falls through when a7(?) != s3(=0xc).
  The `beq` branch at 0xcf8b794 targets 0xcf8b814, is taken when at(?) == a3(?), and falls through when at(?) != a3(?).
  The `bne` branch at 0xcf8b808 targets 0xcf8b7a8, is taken when s4(?) != at(?), and falls through when s4(?) == at(?).
  The `beq` branch at 0xcf8b814 targets 0xcf8b940, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xcf8b830 targets 0xcf8b84c, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xcf8b844 targets 0xcf8b838, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xcf8b850 targets 0xcf8b884, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xcf8b87c targets 0xcf8b85c, is taken when a1(?) != a7(?), and falls through when a1(?) == a7(?).
  The `beq` branch at 0xcf8b888 targets 0xcf8b900, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xcf8b898 targets 0xcf8b8ac, is taken when t0(?) < s4(?) (signed), and falls through when t0(?) >= s4(?) (signed).
  The `beq` branch at 0xcf8b8a0 targets 0xcf8b8ac, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xcf8b8b4 targets 0xcf8b8c8, is taken when t0(?) < s4(?) (signed), and falls through when t0(?) >= s4(?) (signed).
  The `beq` branch at 0xcf8b8bc targets 0xcf8b8c8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xcf8b8d0 targets 0xcf8b8e4, is taken when t0(?) < s4(?) (signed), and falls through when t0(?) >= s4(?) (signed).
  The `beq` branch at 0xcf8b8d8 targets 0xcf8b8e4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xcf8b8ec targets 0xcf8b900, is taken when t0(?) < s4(?) (signed), and falls through when t0(?) >= s4(?) (signed).
  The `beq` branch at 0xcf8b8f4 targets 0xcf8b900, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xcf8b904 targets 0xcf8b938, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bltz` branch at 0xcf8b910 targets 0xcf8b934, is taken when at(?) < 0 (signed), and falls through when at(?) >= 0 (signed).
  The `bne` branch at 0xcf8b91c targets 0xcf8b90c, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `beq` branch at 0xcf8b924 targets 0xcf8b938 and is always taken.
  The `beq` branch at 0xcf8b92c targets 0xcf8b688 and is always taken.
  The `beq` branch at 0xcf8b938 targets 0xcf8b250 and is always taken.
  The `beq` branch at 0xcf8b948 targets 0xcf8b884 and is always taken.
  The `bne` branch at 0xcf8b950 targets 0xcf8b794, is taken when t0(?) != s3(=0xc), and falls through when t0(?) == s3(=0xc).
  The `bne` branch at 0xcf8b958 targets 0xcf8b794, is taken when a1(?) != s3(=0xc), and falls through when a1(?) == s3(=0xc).
  The `bne` branch at 0xcf8b960 targets 0xcf8b794, is taken when t1(?) != s3(=0xc), and falls through when t1(?) == s3(=0xc).
  The `bne` branch at 0xcf8b96c targets 0xcf8b794, is taken when t2(?) != v1(=0x10), and falls through when t2(?) == v1(=0x10).
  The `bne` branch at 0xcf8b978 targets 0xcf8b794, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xcf8b99c targets 0xcf8b790 and is always taken.
  The return at 0xcf8a988 has v0 = 0x0.
  The return at 0xcf8aac8 has v0 = 0x0.
  The return at 0xcf8ab18 has v0 = 0x0.
  The return at 0xcf8ab84 has v0 = 0x0.
  The return at 0xcf8ac44 has v0 = 0x0.
  The return at 0xcf8ac70 has v0 = 0x0.
  The return at 0xcf8aca0 has v0 = ret(malloc).
  The return at 0xcf8ae1c has v0 = 0x0.
  The return at 0xcf8b098 has v0 = 0x0.
  The return at 0xcf8b1fc has v0 = ?.
  The return at 0xcf8b4d8 has v0 = ?.
  The return at 0xcf8b554 has v0 = 0x0.
  The indirect jump at 0xcf8a8c8 uses the jump table at 0xcfa4608 with targets 0xcf8a9e4, 0xcf8a9f4, 0xcf8aa04, 0xcf8aa14, 0xcf8aa24, 0xcf8a880, 0xcf8aa34, 0xcf8aa44.
  The indirect jump at 0xcf8a8c8 uses the jump table at 0xcfa4608 with targets 0xcf8a9e4, 0xcf8a9f4, 0xcf8aa04, 0xcf8aa14, 0xcf8aa24, 0xcf8a880, 0xcf8aa34, 0xcf8aa44.

- `glXCreateGLXPixmapWithConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8b9dc (n64).
  Writes a 0x1c-byte record at the buffer pointer kept at +0xb0 of the context in `a0` and advances
  that pointer by 0x1c (the `sd` at 0xcf8ba7c). It calls `__glXSetupForCommand` first (the `jalr`
  at 0xcf8ba04) and returns 0 without writing when the low byte of its result is zero (the `beq`
  at 0xcf8ba14); otherwise it calls slot +0 of the pointer at +0x968 when that pointer is non-zero
  (the `jalr` at 0xcf8ba2c). Inferred: the note committed for `__glXSetupForCommand` (written for the
  IP30ODSY image of the same library) gives its result as a context byte, a looked-up byte, or zero,
  and that saved result is what the record keeps at +0. When the pointer at +0xb8 is below the +0xb0
  pointer plus 0x1c (the `bne` at 0xcf8ba44), it calls `_XFlush` (the `jalr` at 0xcf8bb08) and
  reloads the buffer pointer before writing. The record then holds 0x7 as a halfword at +2 (the `sh`
  at 0xcf8ba54), 0x10 at +0 followed by the saved result at +0 (the `sb` at 0xcf8ba5c and 0xcf8ba8c),
  0x10 at +1 (the `sb` at 0xcf8ba88) and 0x10006 at +4 (the `sw` at 0xcf8ba84), with the words at
  +0x24 and +0x48 of `a1` going to +0xc and +0x10 (the `sw` at 0xcf8ba94 and 0xcf8baa4) and `a2` at
  +0x14 (the `sw` at 0xcf8baa0); the `sd` at 0xcf8ba70 adds 1 to the doubleword at +0x98. The
  routine at +0x48 of the context is then called with the new write pointer in `a3`, `a2` in `a4`,
  the two `a1` words in `a5` and `a6`, and 0x10006 in `a7` (the `jalr` at 0xcf8bab0), and its result
  goes to +0x18 of the record (the `sw` at 0xcf8babc). When the pointer at +0x968 is non-zero, it
  calls slot +8 of that pointer's table (the `jalr` at 0xcf8bad0); when the pointer at +0xd0 is
  non-zero, it calls that pointer (the `jalr` at 0xcf8bae4), and it returns (the `jr ra` at
  0xcf8bafc) with whatever the last of those calls left in v0, or the +0x48 routine's result when
  neither ran.
  Unknown: the content of the routines behind +0x48 of the context, slot 0 and slot +8 of the pointer
  at +0x968, and the pointer at +0xd0; a committed note for each of them would settle it.
  Evidence grade: inferred.

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

- `glXGetVisualFromFBConfig` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8bb80 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8bb80-0xcf8bbd8 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xcf8bb84 loads 4 bytes from a1 (arg1 at entry) +0x20.
  The `lw` at 0xcf8bbb8 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `jalr` at 0xcf8bbc0 calls __glXOverrideVisualGetVisualInfo with a0=a0 at entry (arg0), a1=0x3, a2=sp-112, a3=sp-48, a6=[a1+32], a7=a1 at entry (arg1).
  The `beq` branch at 0xcf8bb9c targets 0xcf8bbcc, is taken when a6(=[a1+32]) == 0, and falls through when a6(=[a1+32]) != 0.
  The return at 0xcf8bbd0 has v0 = one of 0x0, ret(__glXOverrideVisualGetVisualInfo).

- `glXChooseFBConfig` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8c2cc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8c2cc-0xcf8dc3c (6512 bytes).
  It occupies 6512 bytes.
  The `lw` at 0xcf8c38c loads 4 bytes from a2 (arg2 at entry) +0x0.
  80 such `lw` accesses load 4 bytes from ?, including `lw` at 0xcf8c464, `lw` at 0xcf8c484, `lw` at 0xcf8c4a8.
  The `lw` at 0xcf8c520 loads 4 bytes from a0 (arg0 at entry) +0xe4.
  The `ld` at 0xcf8c530 loads 8 bytes from ret(__glXInitialize) +0x30.
  The `ld` at 0xcf8c53c loads 8 bytes from ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x18.
  The `lw` at 0xcf8c548 loads 4 bytes from ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x20.
  The `lw` at 0xcf8c588 loads 4 bytes from [([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8 +0x48.
  11 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xcf8c5d4, `sw` at 0xcf8c780, `sw` at 0xcf8c868.
  The `sd` at 0xcf8c938 stores 8 bytes to ret(malloc) +0x0.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xcf8ccdc, `lbu` at 0xcf8cd30, `lbu` at 0xcf8d240.
  29 such `ld` accesses load 8 bytes from ?, including `ld` at 0xcf8d024, `ld` at 0xcf8d03c, `ld` at 0xcf8d040.
  13 such `sd` accesses store 8 bytes to ?, including `sd` at 0xcf8d02c, `sd` at 0xcf8d044, `sd` at 0xcf8d04c.
  21 such `sw` accesses store 4 bytes to ?, including `sw` at 0xcf8d2c4, `sw` at 0xcf8d2cc, `sw` at 0xcf8d2d4.
  8 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0xcf8d83c, `ldc1` at 0xcf8da98, `ldc1` at 0xcf8dac4.
  The `jalr` at 0xcf8c500 calls __glXInitialize with a0=a0 at entry (arg0), a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xcf8c824 calls malloc with a0=0x8, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf8ce70 calls malloc with a0=([([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32] << 0x3), a1=?, a2=?, a3=?.
  The `bgezall` at 0xcf8cf34 calls GetBoardName [0xcf87cec] with a0=?, a1=a1 at entry (arg1), a2=sp-600, a3=?.
  The `jalr` at 0xcf8cf4c calls strncmp with a0=sp-600, a1=0xcfa8028, a2=0x7, a3=?.
  The `bgezall` at 0xcf8d0f4 calls orderFBConfigs [0xcf8bd14] with a0=sp-584, a1=?, a2=0x0, a3=?.
  The `jalr` at 0xcf8d464 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `bgezall` at 0xcf8d928 calls orderFBConfigs [0xcf8bd14] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xcf8c428 targets 0xcf8c4c4, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0xcf8c430 targets 0xcf8c4c4, is taken when t0(=[a2]) == 0, and falls through when t0(=[a2]) != 0.
  The `beq` branch at 0xcf8c440 targets 0xcf8c488 and is always taken.
  The `bne` branch at 0xcf8c454 targets 0xcf8c610, is taken when a0(?) < 0xd (signed), and falls through when a0(?) >= 0xd (signed).
  The `beq` branch at 0xcf8c45c targets 0xcf8c648, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xcf8c47c targets 0xcf8c4c8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0xcf8c48c targets 0xcf8c448, is taken when a7(?) < 0x27 (signed), and falls through when a7(?) >= 0x27 (signed).
  The `beq` branch at 0xcf8c4a0 targets 0xcf8c5d8, is taken when a0(?) >= 0x28 (signed), and falls through when a0(?) < 0x28 (signed).
  The `bne` branch at 0xcf8c4bc targets 0xcf8c484, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xcf8c4d0 targets 0xcf8c6e4, is taken when v0(?) == v1(=0x8000), and falls through when v0(?) != v1(=0x8000).
  The `beq` branch at 0xcf8c4dc targets 0xcf8c6e4, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xcf8c510 targets 0xcf8c898, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `bltz` branch at 0xcf8c518 targets 0xcf8c750, is taken when s4(=a1) < 0 (signed), and falls through when s4(=a1) >= 0 (signed).
  The `beq` branch at 0xcf8c528 targets 0xcf8c750, is taken when s4(=a1) >= v1(=[a0+228]) (signed), and falls through when s4(=a1) < v1(=[a0+228]) (signed).
  The `beq` branch at 0xcf8c544 targets 0xcf8c8d4, is taken when s1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8) == 0, and falls through when s1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8) != 0.
  The `beq` branch at 0xcf8c54c targets 0xcf8c8d4, is taken when v0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) == 0, and falls through when v0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) != 0.
  The `beq` branch at 0xcf8c558 targets 0xcf8ce64, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `blez` branch at 0xcf8c560 targets 0xcf8c5a0, is taken when v0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed), and falls through when v0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  The `beq` branch at 0xcf8c58c targets 0xcf8c820, is taken when at(?) == s2(?), and falls through when at(?) != s2(?).
  The `bnel` branch at 0xcf8c598 targets 0xcf8c58c, is taken when v1(?) != s0(?), and falls through when v1(?) == s0(?); its branch-likely delay slot `lw at,72(s0)` at 0xcf8c59c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xcf8c5d8 targets 0xcf8c680, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0xcf8c5e0 targets 0xcf8c70c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xcf8c608 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8c618 targets 0xcf8c6b4, is taken when a0(?) < 0x8 (signed), and falls through when a0(?) >= 0x8 (signed).
  The `beq` branch at 0xcf8c620 targets 0xcf8c78c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xcf8c640 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8c64c targets 0xcf8c7b8, is taken when a0(?) < 0x22 (signed), and falls through when a0(?) >= 0x22 (signed).
  The `beq` branch at 0xcf8c654 targets 0xcf8c950, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xcf8c678 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8c680 targets 0xcf8c7e8, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0xcf8c690 targets 0xcf8c980, is taken when a2(=0x8013) < a0(?) (signed), and falls through when a2(=0x8013) >= a0(?) (signed).
  The `beq` branch at 0xcf8c6ac targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8c6b4 targets 0xcf8c874, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xcf8c6bc targets 0xcf8ca90, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xcf8c6cc targets 0xcf8cec0, is taken when a0(?) == s8(=-0x1), and falls through when a0(?) != s8(=-0x1).
  The `beq` branch at 0xcf8c6dc targets 0xcf8c47c and is always taken.
  The `beq` branch at 0xcf8c704 targets 0xcf8c4e4 and is always taken.
  The `bne` branch at 0xcf8c714 targets 0xcf8c9b0, is taken when a0(?) < v1(=0x802e) (signed), and falls through when a0(?) >= v1(=0x802e) (signed).
  The `bne` branch at 0xcf8c720 targets 0xcf8cabc, is taken when a4(=0x802e) < a0(?) (signed), and falls through when a4(=0x802e) >= a0(?) (signed).
  The `beq` branch at 0xcf8c748 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8c78c targets 0xcf8c9f0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xcf8c798 targets 0xcf8cb30, is taken when a0(?) >= 0xc (signed), and falls through when a0(?) < 0xc (signed).
  The `beq` branch at 0xcf8c7b0 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8c7b8 targets 0xcf8ca20, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0xcf8c7c8 targets 0xcf8cb58, is taken when a0(?) >= 0x11 (signed), and falls through when a0(?) < 0x11 (signed).
  The `beq` branch at 0xcf8c7e0 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8c7f0 targets 0xcf8ca48, is taken when a0(?) < a5(=0x8010) (signed), and falls through when a0(?) >= a5(=0x8010) (signed).
  The `bne` branch at 0xcf8c808 targets 0xcf8cbc4, is taken when at(=0x8010) < a0(?) (signed), and falls through when at(=0x8010) >= a0(?) (signed).
  The `beq` branch at 0xcf8c818 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8c830 targets 0xcf8c90c, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bne` branch at 0xcf8c878 targets 0xcf8ca6c, is taken when a0(?) < 0x3 (signed), and falls through when a0(?) >= 0x3 (signed).
  The `beq` branch at 0xcf8c880 targets 0xcf8cafc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xcf8c890 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8c950 targets 0xcf8cb94, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xcf8c958 targets 0xcf8ccf8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xcf8c978 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8c988 targets 0xcf8cbf8, is taken when a0(?) < v1(=0x8018) (signed), and falls through when a0(?) >= v1(=0x8018) (signed).
  The `bne` branch at 0xcf8c998 targets 0xcf8cd28, is taken when a4(=0x8018) < a0(?) (signed), and falls through when a4(=0x8018) >= a0(?) (signed).
  The `beq` branch at 0xcf8c9a8 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8c9b0 targets 0xcf8cc20, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xcf8c9c0 targets 0xcf8cd4c, is taken when v1(=0x802c) < a0(?) (signed), and falls through when v1(=0x802c) >= a0(?) (signed).
  The `beq` branch at 0xcf8c9e8 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8c9f0 targets 0xcf8cc5c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xcf8c9fc targets 0xcf8cafc, is taken when a0(?) >= 0xb (signed), and falls through when a0(?) < 0xb (signed).
  The `beq` branch at 0xcf8ca18 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8ca20 targets 0xcf8cc80, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xcf8ca28 targets 0xcf8cafc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xcf8ca40 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8ca48 targets 0xcf8cca4, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0xcf8ca54 targets 0xcf8cafc, is taken when a5(=0x800b) < a0(?) (signed), and falls through when a5(=0x800b) >= a0(?) (signed).
  The `beq` branch at 0xcf8ca64 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8ca70 targets 0xcf8cafc, is taken when a0(?) != v1(=0x2), and falls through when a0(?) == v1(=0x2).
  The `beq` branch at 0xcf8ca88 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8ca90 targets 0xcf8cccc, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xcf8ca9c targets 0xcf8cafc, is taken when a0(?) >= 0x8 (signed), and falls through when a0(?) < 0x8 (signed).
  The `beq` branch at 0xcf8cab4 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8cac4 targets 0xcf8cd7c, is taken when a0(?) < a4(=0x186a0) (signed), and falls through when a0(?) >= a4(=0x186a0) (signed).
  The `bne` branch at 0xcf8cad4 targets 0xcf8cec8, is taken when a5(=0x186a0) < a0(?) (signed), and falls through when a5(=0x186a0) >= a0(?) (signed).
  The `beq` branch at 0xcf8caf4 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8cb34 targets 0xcf8cafc, is taken when a0(?) != a5(=0xc), and falls through when a0(?) == a5(=0xc).
  The `beq` branch at 0xcf8cb50 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8cb5c targets 0xcf8cdc0, is taken when a0(?) < 0x20 (signed), and falls through when a0(?) >= 0x20 (signed).
  The `beq` branch at 0xcf8cb68 targets 0xcf8cafc, is taken when a0(?) >= 0x21 (signed), and falls through when a0(?) < 0x21 (signed).
  The `beq` branch at 0xcf8cb8c targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8cb98 targets 0xcf8cde4, is taken when a0(?) < 0x24 (signed), and falls through when a0(?) >= 0x24 (signed).
  The `beq` branch at 0xcf8cba0 targets 0xcf8cafc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xcf8cbbc targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8cbc4 targets 0xcf8ce00, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0xcf8cbd4 targets 0xcf8cafc, is taken when a5(=0x8012) < a0(?) (signed), and falls through when a5(=0x8012) >= a0(?) (signed).
  The `beq` branch at 0xcf8cbf0 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8cbf8 targets 0xcf8ce18, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0xcf8cc08 targets 0xcf8cafc, is taken when a5(=0x8017) < a0(?) (signed), and falls through when a5(=0x8017) >= a0(?) (signed).
  The `beq` branch at 0xcf8cc18 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8cc24 targets 0xcf8ce30, is taken when a0(?) < v1(=0x802b) (signed), and falls through when a0(?) >= v1(=0x802b) (signed).
  The `bne` branch at 0xcf8cc30 targets 0xcf8cafc, is taken when a4(=0x802b) < a0(?) (signed), and falls through when a4(=0x802b) >= a0(?) (signed).
  The `beq` branch at 0xcf8cc54 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8cc5c targets 0xcf8cafc, is taken when a0(?) != v1(=0x9), and falls through when a0(?) == v1(=0x9).
  The `beq` branch at 0xcf8cc78 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8cc84 targets 0xcf8cafc, is taken when a0(?) != v1(=0xe), and falls through when a0(?) == v1(=0xe).
  The `beq` branch at 0xcf8cc9c targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8cca8 targets 0xcf8cafc, is taken when a0(?) != v1(=0x28), and falls through when a0(?) == v1(=0x28).
  The `beq` branch at 0xcf8ccc4 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8cccc targets 0xcf8cafc, is taken when a0(?) != at(=0x6), and falls through when a0(?) == at(=0x6).
  The `beq` branch at 0xcf8ccf0 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8ccfc targets 0xcf8cafc, is taken when a0(?) != a5(=0x26), and falls through when a0(?) == a5(=0x26).
  The `beq` branch at 0xcf8cd20 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8cd28 targets 0xcf8cafc, is taken when a0(?) != a5(=0x8028), and falls through when a0(?) == a5(=0x8028).
  The `beq` branch at 0xcf8cd44 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8cd4c targets 0xcf8cafc, is taken when a0(?) != a5(=0x802d), and falls through when a0(?) == a5(=0x802d).
  The `beq` branch at 0xcf8cd74 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8cd84 targets 0xcf8cef0, is taken when a0(?) < a4(=0x8030) (signed), and falls through when a0(?) >= a4(=0x8030) (signed).
  The `bne` branch at 0xcf8cd90 targets 0xcf8cafc, is taken when a5(=0x8030) < a0(?) (signed), and falls through when a5(=0x8030) >= a0(?) (signed).
  The `beq` branch at 0xcf8cdb8 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8cdc0 targets 0xcf8cafc, is taken when a0(?) != a4(=0x11), and falls through when a0(?) == a4(=0x11).
  The `beq` branch at 0xcf8cddc targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8cde8 targets 0xcf8cafc, is taken when a0(?) != a4(=0x23), and falls through when a0(?) == a4(=0x23).
  The `beq` branch at 0xcf8cdf8 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8ce00 targets 0xcf8cafc, is taken when a0(?) != a5(=0x8011), and falls through when a0(?) == a5(=0x8011).
  The `beq` branch at 0xcf8ce10 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8ce18 targets 0xcf8cafc, is taken when a0(?) != v1(=0x8016), and falls through when a0(?) == v1(=0x8016).
  The `beq` branch at 0xcf8ce28 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8ce34 targets 0xcf8cafc, is taken when a0(?) != a5(=0x802a), and falls through when a0(?) == a5(=0x802a).
  The `beq` branch at 0xcf8ce5c targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8ce7c targets 0xcf8cf24, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xcf8cec0 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8cecc targets 0xcf8cafc, is taken when a0(?) != a5(=0x186a1), and falls through when a0(?) == a5(=0x186a1).
  The `beq` branch at 0xcf8cee8 targets 0xcf8c47c and is always taken.
  The `bne` branch at 0xcf8cef4 targets 0xcf8cafc, is taken when a0(?) != a5(=0x802f), and falls through when a0(?) == a5(=0x802f).
  The `beq` branch at 0xcf8cf1c targets 0xcf8c47c and is always taken.
  The `beq` branch at 0xcf8cf3c targets 0xcf8cf5c, is taken when v0(=ret(GetBoardName)) == 0, and falls through when v0(=ret(GetBoardName)) != 0.
  The `beq` branch at 0xcf8cf54 targets 0xcf8d3ec, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0xcf8cf5c targets 0xcf8cfb4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xcf8cf64 targets 0xcf8cfb4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `blez` branch at 0xcf8cf6c targets 0xcf8d29c, is taken when s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed), and falls through when s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  The `beq` branch at 0xcf8cfac targets 0xcf8d1e0 and is always taken.
  The `blez` branch at 0xcf8cfb4 targets 0xcf8d188, is taken when s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed), and falls through when s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  The `beq` branch at 0xcf8cfec targets 0xcf8d074 and is always taken.
  The `beq` branch at 0xcf8d004 targets 0xcf8d11c, is taken when s1(?) >= s7(?) (signed), and falls through when s1(?) < s7(?) (signed).
  The `beq` branch at 0xcf8d014 targets 0xcf8d030, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xcf8d028 targets 0xcf8d01c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xcf8d030 targets 0xcf8d064, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xcf8d05c targets 0xcf8d03c, is taken when v0(?) != a0(?), and falls through when v0(?) == a0(?).
  The `beq` branch at 0xcf8d070 targets 0xcf8d188, is taken when s0(?) == at(?), and falls through when s0(?) != at(?).
  The `bgtz` branch at 0xcf8d0b0 targets 0xcf8d09c, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The `beq` branch at 0xcf8d0bc targets 0xcf8d0d0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xcf8d0c8 targets 0xcf8d128, is taken when a5(?) == at(=0xc), and falls through when a5(?) != at(=0xc).
  The `beq` branch at 0xcf8d0d0 targets 0xcf8cff8, is taken when s3(=ret(malloc)) == s6(?), and falls through when s3(=ret(malloc)) != s6(?).
  The `bne` branch at 0xcf8d10c targets 0xcf8d0dc, is taken when s1(?) != s4(?), and falls through when s1(?) == s4(?).
  The `beq` branch at 0xcf8d114 targets 0xcf8cff8 and is always taken.
  The `beq` branch at 0xcf8d120 targets 0xcf8d064 and is always taken.
  The `bne` branch at 0xcf8d130 targets 0xcf8d0d0, is taken when a4(?) != a5(=0xc), and falls through when a4(?) == a5(=0xc).
  The `bne` branch at 0xcf8d140 targets 0xcf8d0d0, is taken when at(?) != v1(=0xc), and falls through when at(?) == v1(=0xc).
  The `bne` branch at 0xcf8d150 targets 0xcf8d0d0, is taken when a4(?) != a5(=0xc), and falls through when a4(?) == a5(=0xc).
  The `bne` branch at 0xcf8d160 targets 0xcf8d0d0, is taken when at(?) != v1(=0x10), and falls through when at(?) == v1(=0x10).
  The `bne` branch at 0xcf8d168 targets 0xcf8d0d0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0xcf8d180 targets 0xcf8d0d0 and is always taken.
  The `beq` branch at 0xcf8d1d0 targets 0xcf8d22c and is always taken.
  The `beq` branch at 0xcf8d1dc targets 0xcf8d29c, is taken when a0(?) == s4(?), and falls through when a0(?) != s4(?).
  The `beq` branch at 0xcf8d20c targets 0xcf8d1cc, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xcf8d21c targets 0xcf8d1cc, is taken when a4(?) >= v0(?) (signed), and falls through when a4(?) < v0(?) (signed).
  The `beq` branch at 0xcf8d224 targets 0xcf8d1dc and is always taken.
  The `bne` branch at 0xcf8d230 targets 0xcf8d1d8, is taken when a5(?) != at(?), and falls through when a5(?) == at(?).
  The `beq` branch at 0xcf8d238 targets 0xcf8d250, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xcf8d244 targets 0xcf8d250, is taken when a4(?) == a5(?), and falls through when a4(?) != a5(?).
  The `bne` branch at 0xcf8d250 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d258 targets 0xcf8d274, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xcf8d268 targets 0xcf8d274, is taken when v1(?) == a4(?), and falls through when v1(?) != a4(?).
  The `bne` branch at 0xcf8d274 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d27c targets 0xcf8d3bc, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xcf8d28c targets 0xcf8d3c0, is taken when a5(?) >= v0(?) (signed), and falls through when a5(?) < v0(?) (signed).
  The `beq` branch at 0xcf8d294 targets 0xcf8d3c0 and is always taken.
  The `blez` branch at 0xcf8d29c targets 0xcf8d460, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0xcf8d2a4 targets 0xcf8d37c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bltz` branch at 0xcf8d2b0 targets 0xcf8d2e0, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bltz` branch at 0xcf8d2e4 targets 0xcf8d314, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bltz` branch at 0xcf8d318 targets 0xcf8d348, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bltz` branch at 0xcf8d34c targets 0xcf8d37c, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bne` branch at 0xcf8d3c0 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d3c8 targets 0xcf8d430, is taken when v1(?) == s8(=-0x1), and falls through when v1(?) != s8(=-0x1).
  The `beq` branch at 0xcf8d3dc targets 0xcf8d434, is taken when a4(?) >= a5(?) (signed), and falls through when a4(?) < a5(?) (signed).
  The `beq` branch at 0xcf8d3e4 targets 0xcf8d434 and is always taken.
  The `bne` branch at 0xcf8d3f4 targets 0xcf8cf5c, is taken when at(?) != v1(=0xc), and falls through when at(?) == v1(=0xc).
  The `bne` branch at 0xcf8d404 targets 0xcf8cf5c, is taken when a5(?) != at(=0xc), and falls through when a5(?) == at(=0xc).
  The `bne` branch at 0xcf8d410 targets 0xcf8cf5c, is taken when v1(?) != a4(=0xc), and falls through when v1(?) == a4(=0xc).
  The `beq` branch at 0xcf8d428 targets 0xcf8cf5c and is always taken.
  The `bne` branch at 0xcf8d434 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d43c targets 0xcf8d4ac, is taken when v1(?) == s8(=-0x1), and falls through when v1(?) != s8(=-0x1).
  The `beq` branch at 0xcf8d450 targets 0xcf8d4b0, is taken when a4(?) >= a5(?) (signed), and falls through when a4(?) < a5(?) (signed).
  The `beq` branch at 0xcf8d458 targets 0xcf8d4b0 and is always taken.
  The `bne` branch at 0xcf8d4b0 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d4b8 targets 0xcf8d4dc, is taken when at(?) == s8(=-0x1), and falls through when at(?) != s8(=-0x1).
  The `beq` branch at 0xcf8d4cc targets 0xcf8d4e0, is taken when v1(?) >= a4(?) (signed), and falls through when v1(?) < a4(?) (signed).
  The `beq` branch at 0xcf8d4d4 targets 0xcf8d4e0 and is always taken.
  The `bne` branch at 0xcf8d4e0 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d4e8 targets 0xcf8d508, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xcf8d4f8 targets 0xcf8d50c, is taken when a5(?) >= v0(?) (signed), and falls through when a5(?) < v0(?) (signed).
  The `beq` branch at 0xcf8d500 targets 0xcf8d50c and is always taken.
  The `bne` branch at 0xcf8d50c targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d514 targets 0xcf8d538, is taken when at(?) == s8(=-0x1), and falls through when at(?) != s8(=-0x1).
  The `beq` branch at 0xcf8d528 targets 0xcf8d53c, is taken when v1(?) >= a4(?) (signed), and falls through when v1(?) < a4(?) (signed).
  The `beq` branch at 0xcf8d530 targets 0xcf8d53c and is always taken.
  The `bne` branch at 0xcf8d53c targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d544 targets 0xcf8d564, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xcf8d554 targets 0xcf8d568, is taken when a5(?) >= v0(?) (signed), and falls through when a5(?) < v0(?) (signed).
  The `beq` branch at 0xcf8d55c targets 0xcf8d568 and is always taken.
  The `bne` branch at 0xcf8d568 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d570 targets 0xcf8d590, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xcf8d580 targets 0xcf8d594, is taken when at(?) >= v0(?) (signed), and falls through when at(?) < v0(?) (signed).
  The `beq` branch at 0xcf8d588 targets 0xcf8d594 and is always taken.
  The `bne` branch at 0xcf8d594 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d59c targets 0xcf8d5bc, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xcf8d5ac targets 0xcf8d5c0, is taken when v1(?) >= v0(?) (signed), and falls through when v1(?) < v0(?) (signed).
  The `beq` branch at 0xcf8d5b4 targets 0xcf8d5c0 and is always taken.
  The `bne` branch at 0xcf8d5c0 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d5c8 targets 0xcf8d5e8, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xcf8d5d8 targets 0xcf8d5ec, is taken when a4(?) >= v0(?) (signed), and falls through when a4(?) < v0(?) (signed).
  The `beq` branch at 0xcf8d5e0 targets 0xcf8d5ec and is always taken.
  The `bne` branch at 0xcf8d5ec targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d5f4 targets 0xcf8d614, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xcf8d604 targets 0xcf8d618, is taken when a5(?) >= v0(?) (signed), and falls through when a5(?) < v0(?) (signed).
  The `beq` branch at 0xcf8d60c targets 0xcf8d618 and is always taken.
  The `bne` branch at 0xcf8d618 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d620 targets 0xcf8d63c, is taken when s6(=one of 0x0, 0x1) == 0, and falls through when s6(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xcf8d630 targets 0xcf8d63c, is taken when at(?) == v1(?), and falls through when at(?) != v1(?).
  The `bne` branch at 0xcf8d63c targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d644 targets 0xcf8d660, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xcf8d650 targets 0xcf8d664, is taken when a4(?) == v0(?), and falls through when a4(?) != v0(?).
  The `beq` branch at 0xcf8d658 targets 0xcf8d664 and is always taken.
  The `bne` branch at 0xcf8d664 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d66c targets 0xcf8d688, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xcf8d67c targets 0xcf8d688, is taken when at(?) == v1(?), and falls through when at(?) != v1(?).
  The `bne` branch at 0xcf8d688 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d690 targets 0xcf8d6ac, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xcf8d6a0 targets 0xcf8d6ac, is taken when a5(?) == at(?), and falls through when a5(?) != at(?).
  The `bne` branch at 0xcf8d6ac targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d6b4 targets 0xcf8d6d0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xcf8d6c4 targets 0xcf8d6d0, is taken when a4(?) == a5(?), and falls through when a4(?) != a5(?).
  The `bne` branch at 0xcf8d6d0 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d6d8 targets 0xcf8d6f4, is taken when s7(=one of 0x0, 0x1) == 0, and falls through when s7(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xcf8d6e8 targets 0xcf8d6f4, is taken when at(?) == v1(?), and falls through when at(?) != v1(?).
  The `bne` branch at 0xcf8d6f4 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d6fc targets 0xcf8d718, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xcf8d70c targets 0xcf8d718, is taken when a5(?) == at(?), and falls through when a5(?) != at(?).
  The `bne` branch at 0xcf8d718 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d720 targets 0xcf8d73c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xcf8d730 targets 0xcf8d73c, is taken when a4(?) == a5(?), and falls through when a4(?) != a5(?).
  The `bne` branch at 0xcf8d73c targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d744 targets 0xcf8d760, is taken when a6(?) == s8(=-0x1), and falls through when a6(?) != s8(=-0x1).
  The `beq` branch at 0xcf8d754 targets 0xcf8d760, is taken when at(?) == a6(?), and falls through when at(?) != a6(?).
  The `bne` branch at 0xcf8d760 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d768 targets 0xcf8d788, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xcf8d778 targets 0xcf8d78c, is taken when v1(?) == v0(?), and falls through when v1(?) != v0(?).
  The `beq` branch at 0xcf8d780 targets 0xcf8d78c and is always taken.
  The `bne` branch at 0xcf8d78c targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d794 targets 0xcf8d7a8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xcf8d7a0 targets 0xcf8d7fc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xcf8d7a8 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d7b0 targets 0xcf8d7d0, is taken when s8(=-0x1) == v0(?), and falls through when s8(=-0x1) != v0(?).
  The `beq` branch at 0xcf8d7c0 targets 0xcf8d7d4, is taken when at(?) >= v0(?) (unsigned), and falls through when at(?) < v0(?) (unsigned).
  The `beq` branch at 0xcf8d7c8 targets 0xcf8d7d4 and is always taken.
  The `bne` branch at 0xcf8d7d4 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d7dc targets 0xcf8d804, is taken when s8(=-0x1) == v0(?), and falls through when s8(=-0x1) != v0(?).
  The `beq` branch at 0xcf8d7ec targets 0xcf8d808, is taken when v1(?) >= v0(?) (unsigned), and falls through when v1(?) < v0(?) (unsigned).
  The `beq` branch at 0xcf8d7f4 targets 0xcf8d808 and is always taken.
  The `beq` branch at 0xcf8d7fc targets 0xcf8d7a8 and is always taken.
  The `bne` branch at 0xcf8d808 targets 0xcf8d1d8, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d810 targets 0xcf8da80, is taken when s8(=-0x1) == a6(?), and falls through when s8(=-0x1) != a6(?).
  The `beq` branch at 0xcf8d828 targets 0xcf8d858, is taken when v0(?) >= 0x1 (unsigned), and falls through when v0(?) < 0x1 (unsigned).
  The `bc1t` branch at 0xcf8d834 targets 0xcf8d850, is taken when f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xcf8d830), and falls through when not (f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xcf8d830)).
  The `bc1f` branch at 0xcf8d844 targets 0xcf8d850, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xcf8d850 targets 0xcf8da88, is taken when a6(=one of 0x0, 0x1) == 0, and falls through when a6(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xcf8d858 targets 0xcf8d1d8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xcf8d860 targets 0xcf8d1d8, is taken when t1(=one of 0x0, 0x1) != 0, and falls through when t1(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xcf8d868 targets 0xcf8d1d8, is taken when t9(=one of 0x0, 0x1) != 0, and falls through when t9(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xcf8d870 targets 0xcf8d1d8, is taken when t0(=one of 0x0, 0x1) != 0, and falls through when t0(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xcf8d878 targets 0xcf8d1d8, is taken when t8(=one of 0x0, 0x1) != 0, and falls through when t8(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xcf8d880 targets 0xcf8d1d8, is taken when a7(=one of 0x0, 0x1) != 0, and falls through when a7(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xcf8d888 targets 0xcf8d1d8, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xcf8d890 targets 0xcf8d1d8, is taken when ra(=one of 0x0, 0x1) != 0, and falls through when ra(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xcf8d898 targets 0xcf8d1d8, is taken when t2(=one of 0x0, 0x1) != 0, and falls through when t2(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xcf8d8b8 targets 0xcf8d8d0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xcf8d8c8 targets 0xcf8dbd4, is taken when a5(?) == at(=0xc), and falls through when a5(?) != at(=0xc).
  The `beq` branch at 0xcf8d8d0 targets 0xcf8d96c, is taken when s3(=ret(malloc)) == a2(?), and falls through when s3(=ret(malloc)) != a2(?).
  The `bne` branch at 0xcf8d960 targets 0xcf8d8ec, is taken when a6(?) != a4(?), and falls through when a6(?) == a4(?).
  The `beq` branch at 0xcf8d96c targets 0xcf8dbc8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xcf8d984 targets 0xcf8d9a0, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xcf8d998 targets 0xcf8d98c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xcf8d9a4 targets 0xcf8d9d8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xcf8d9d0 targets 0xcf8d9b0, is taken when v0(?) != a7(?), and falls through when v0(?) == a7(?).
  The `beq` branch at 0xcf8d9dc targets 0xcf8da54, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0xcf8d9ec targets 0xcf8da00, is taken when t0(?) < a6(?) (signed), and falls through when t0(?) >= a6(?) (signed).
  The `beq` branch at 0xcf8d9f4 targets 0xcf8da00, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xcf8da08 targets 0xcf8da1c, is taken when t0(?) < a6(?) (signed), and falls through when t0(?) >= a6(?) (signed).
  The `beq` branch at 0xcf8da10 targets 0xcf8da1c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xcf8da24 targets 0xcf8da38, is taken when t0(?) < a6(?) (signed), and falls through when t0(?) >= a6(?) (signed).
  The `beq` branch at 0xcf8da2c targets 0xcf8da38, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0xcf8da40 targets 0xcf8da54, is taken when t0(?) < a6(?) (signed), and falls through when t0(?) >= a6(?) (signed).
  The `beq` branch at 0xcf8da48 targets 0xcf8da54, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xcf8da58 targets 0xcf8dbc0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bltz` branch at 0xcf8da64 targets 0xcf8dbbc, is taken when at(?) < 0 (signed), and falls through when at(?) >= 0 (signed).
  The `bne` branch at 0xcf8da70 targets 0xcf8da60, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0xcf8da78 targets 0xcf8dbc0 and is always taken.
  The `beq` branch at 0xcf8da80 targets 0xcf8d858 and is always taken.
  The `bc1t` branch at 0xcf8da90 targets 0xcf8daac, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `bc1f` branch at 0xcf8daa0 targets 0xcf8daac, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bne` branch at 0xcf8daac targets 0xcf8d858, is taken when a6(=one of 0x0, 0x1) != 0, and falls through when a6(=one of 0x0, 0x1) == 0.
  The `bc1t` branch at 0xcf8dabc targets 0xcf8dad8, is taken when f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xcf8dab8), and falls through when not (f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xcf8dab8)).
  The `bc1f` branch at 0xcf8dacc targets 0xcf8dad8, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bne` branch at 0xcf8dad8 targets 0xcf8d858, is taken when a6(=one of 0x0, 0x1) != 0, and falls through when a6(=one of 0x0, 0x1) == 0.
  The `bc1t` branch at 0xcf8dae8 targets 0xcf8db04, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `bc1f` branch at 0xcf8daf8 targets 0xcf8db04, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bne` branch at 0xcf8db04 targets 0xcf8d858, is taken when a6(=one of 0x0, 0x1) != 0, and falls through when a6(=one of 0x0, 0x1) == 0.
  The `bc1t` branch at 0xcf8db14 targets 0xcf8db30, is taken when f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xcf8db10), and falls through when not (f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xcf8db10)).
  The `bc1f` branch at 0xcf8db24 targets 0xcf8db30, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bne` branch at 0xcf8db30 targets 0xcf8d858, is taken when a6(=one of 0x0, 0x1) != 0, and falls through when a6(=one of 0x0, 0x1) == 0.
  The `bc1t` branch at 0xcf8db40 targets 0xcf8db5c, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `bc1f` branch at 0xcf8db50 targets 0xcf8db5c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bne` branch at 0xcf8db5c targets 0xcf8d858, is taken when a6(=one of 0x0, 0x1) != 0, and falls through when a6(=one of 0x0, 0x1) == 0.
  The `bc1t` branch at 0xcf8db6c targets 0xcf8db88, is taken when f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xcf8db68), and falls through when not (f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xcf8db68)).
  The `bc1f` branch at 0xcf8db7c targets 0xcf8db88, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bne` branch at 0xcf8db88 targets 0xcf8d858, is taken when a6(=one of 0x0, 0x1) != 0, and falls through when a6(=one of 0x0, 0x1) == 0.
  The `bc1t` branch at 0xcf8db98 targets 0xcf8dbb4, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `bc1f` branch at 0xcf8dba8 targets 0xcf8dbb4, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xcf8dbb4 targets 0xcf8d858 and is always taken.
  The `beq` branch at 0xcf8dbc0 targets 0xcf8d1d8 and is always taken.
  The `beq` branch at 0xcf8dbcc targets 0xcf8d9d8 and is always taken.
  The `bne` branch at 0xcf8dbdc targets 0xcf8d8d0, is taken when at(?) != v1(=0xc), and falls through when at(?) == v1(=0xc).
  The `bne` branch at 0xcf8dbec targets 0xcf8d8d0, is taken when a4(?) != a5(=0xc), and falls through when a4(?) == a5(=0xc).
  The `bne` branch at 0xcf8dbfc targets 0xcf8d8d0, is taken when at(?) != v1(=0xc), and falls through when at(?) == v1(=0xc).
  The `bne` branch at 0xcf8dc0c targets 0xcf8d8d0, is taken when a4(?) != a5(=0x10), and falls through when a4(?) == a5(=0x10).
  The `bne` branch at 0xcf8dc14 targets 0xcf8d8d0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xcf8dc34 targets 0xcf8d8d0 and is always taken.
  The return at 0xcf8c5d0 has v0 = 0x0.
  The return at 0xcf8c784 has v0 = 0x0.
  The return at 0xcf8c86c has v0 = 0x0.
  The return at 0xcf8c8cc has v0 = 0x0.
  The return at 0xcf8c904 has v0 = 0x0.
  The return at 0xcf8c948 has v0 = ret(malloc).
  The return at 0xcf8cb28 has v0 = 0x0.
  The return at 0xcf8ceb8 has v0 = 0x0.
  The return at 0xcf8d1c4 has v0 = ret(malloc).
  The return at 0xcf8d3b4 has v0 = ret(malloc).
  The return at 0xcf8d4a4 has v0 = 0x0.
  The instructions from 0xcf8cff4 to 0xcf8cff4 are not reached by any path from the entry, and their branches are not listed.

- `glXGetFBConfigs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8dc3c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8dc3c-0xcf8ddcc (400 bytes).
  It occupies 400 bytes.
  The `lw` at 0xcf8dc7c loads 4 bytes from a0 (arg0 at entry) +0xe4.
  The `ld` at 0xcf8dca0 loads 8 bytes from ret(__glXInitialize) +0x30.
  The `lw` at 0xcf8dcb0 loads 4 bytes from ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x20.
  The `ld` at 0xcf8dcb4 loads 8 bytes from ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x18.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0xcf8dd18, `sd` at 0xcf8dd48, `sd` at 0xcf8dd50.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xcf8dd84, `sw` at 0xcf8ddb0.
  The `jalr` at 0xcf8dc64 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf8dcc0 calls malloc with a0=([([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32] << 0x3), a1=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8, a2=(a1 << 0x6), a3=?.
  The `beq` branch at 0xcf8dc6c targets 0xcf8dd94, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `bltz` branch at 0xcf8dc74 targets 0xcf8dc8c, is taken when s0(=a1) < 0 (signed), and falls through when s0(=a1) >= 0 (signed).
  The `bne` branch at 0xcf8dc84 targets 0xcf8dca0, is taken when s0(=a1) < v1(=[a0+228]) (signed), and falls through when s0(=a1) >= v1(=[a0+228]) (signed).
  The `beq` branch at 0xcf8dcd0 targets 0xcf8ddac, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `blez` branch at 0xcf8dce8 targets 0xcf8dd84, is taken when a0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed), and falls through when a0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  The `beq` branch at 0xcf8dd08 targets 0xcf8dd24, is taken when (a0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) & 0x7) == 0, and falls through when (a0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) & 0x7) != 0.
  The `bne` branch at 0xcf8dd1c targets 0xcf8dd10, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xcf8dd30 targets 0xcf8dd84, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xcf8dd7c targets 0xcf8dd3c, is taken when a1(?) != a5(?), and falls through when a1(?) == a5(?).
  The return at 0xcf8dc98 has v0 = 0x0.
  The return at 0xcf8dd8c has v0 = ret(malloc).
  The return at 0xcf8dda4 has v0 = 0x0.
  The return at 0xcf8ddc4 has v0 = 0x0.

- `glXCreateNewContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8e020 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8e020-0xcf8e074 (84 bytes).
  It occupies 84 bytes.
  The `jalr` at 0xcf8e05c calls (unnamed) [0xcf856c8] with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=0x0, a7=0x0.
  The return at 0xcf8e06c has v0 = ret(0xcf856c8).

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

- `glXAssociateDMPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8f6d4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8f6d4-0xcf8f714 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0xcf8f6f8 calls __glXPostError with a0=a0 at entry (arg0), a1=0x9, a2=0x10, a3=0x0.
  The return at 0xcf8f70c has v0 = 0x0.

- `glXQueryHyperpipeNetworkSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8f714 (n64).
  Sends a 0x10-byte request through the first argument's buffer at +0xb0, waits for a reply with `_XReply`, stores a reply count through the pointer in a1, and returns a heap buffer filled from the reply data, or zero.
  It calls `__glXSetupForCommand` on its four argument registers (`jalr` at 0xcf8f740), stores zero through a1 (`sw` at 0xcf8f748), keeps the setup result in s2 (`or` in the delay slot at 0xcf8f754), and, if the doubleword at +0x968 is nonzero, makes a call through the first word of the table it points to (`jalr` at 0xcf8f75c).
  When the limit doubleword at +0xb8 is below the pointer at +0xb0 plus 0x10, unsigned (`bne` at 0xcf8f774), `_XFlush` is called first (`jalr` at 0xcf8f940) and the pointer is reloaded.
  The pointer is copied to +0xa0 (`sd` at 0xcf8f77c) and the block gets the halfword 0x4 at +0x2 (`sh` at 0xcf8f784), the word 0x1000e at +0x4 (`sw` at 0xcf8f7b4), the byte 0x11 at +0x1 (`sb` at 0xcf8f7bc) and the word loaded from +0xe0 of the first argument at +0xc (`sw` at 0xcf8f7dc, in the delay slot of the `_XReply` call).
  The byte at +0x0 is first set to 0x10 (`sb` at 0xcf8f78c) and then overwritten with the low byte of the setup result (`sb` at 0xcf8f7c0); the `sd` at 0xcf8f7a0 adds one to the doubleword at +0x98 and the `sd` at 0xcf8f7ac adds 0x10 to the pointer at +0xb0.
  `_XReply` is called with a1 the frame base and a2 and a3 zero (`jalr` at 0xcf8f7d8).
  A zero return (`beq` at 0xcf8f7e0) makes the two optional calls through the second word of the +0x968 table and the pointer at +0xd0 (`jalr` at 0xcf8f960 and 0xcf8f974), stores zero through a1 (`sw` at 0xcf8f98c) and returns zero.
  Otherwise the reply word at frame offset 0x10 is stored through a1 (`sw` at 0xcf8f7f0) and the word at frame offset 0xc is kept.
  If that count is zero or negative, or 0x21 or more (`blez` at 0xcf8f7f4, `bne` at 0xcf8f7fc), `_XEatData` is called with the kept word (`jalr` at 0xcf8f808), the two optional calls run (0xcf8f820 and 0xcf8f834), a1 is zeroed again (`sw` at 0xcf8f84c) and the routine returns zero.
  Otherwise `malloc` is called with a size computed from the count by shifts and additions (`jalr` at 0xcf8f878); a null result calls `_XEatData` with the kept word (`jalr` at 0xcf8f894), makes the optional calls (0xcf8f8ac and 0xcf8f8c0), zeroes a1 (`sw` at 0xcf8f8d8) and returns zero.
  A non-null result is passed to `_XRead` with the kept word as the length (`jalr` at 0xcf8f8f0), the optional calls run (0xcf8f908 and 0xcf8f91c) and the routine returns the `malloc` result reloaded from its frame slot.
  Unknown: the routines behind the pointers at +0x968 and +0xd0, and what the reply words at frame offsets 0xc and 0x10 hold; the layout of the reply would settle it.
  Evidence grade: established.

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
  The return at 0xcf8f938 has v0 = ?.
  The return at 0xcf8f994 has v0 = 0x0.

- `glXHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8f99c (n64).
  Packs the caller's byte array (a3, with a count in a2) into a request block in the first argument's buffer at +0xb0, waits for a reply with `_XReply`, and stores one reply word through the pointer in a4.
  It calls `__glXSetupForCommand` with its four arguments first (`jalr` at 0xcf8f9d8), then returns 0x5b before writing anything when the count is zero or negative (`blez` at 0xcf8f9e0), when a3 is zero (`beq` at 0xcf8f9e8), when the count is 0x21 or more (`beq` at 0xcf8f9f0), or when a1 is negative (`bltz` at 0xcf8f9f8).
  If the doubleword at +0x968 of the first argument is nonzero, the setup result is saved in a frame slot (`sd` at 0xcf8fa10) around a call through the first word of the table it points to (`jalr` at 0xcf8fa14).
  The block size is the count scaled by a fixed shift-and-subtract sequence (0xcf8fa20 to 0xcf8fa30) plus 0x20.
  When the limit doubleword at +0xb8 is below the pointer at +0xb0 plus that size, unsigned (`bne` at 0xcf8fa4c), the size and the setup result are saved, `_XFlush` is called (`jalr` at 0xcf8fc40) and the pointer at +0xb0, the size and the setup result are reloaded.
  The pointer is then copied to +0xa0 (`sd` at 0xcf8fa54) and the block gets the size shifted right by 2 as a halfword at +0x2 (`sh` at 0xcf8fa5c), bytes 0x10 and 0x11 at +0x0 and +0x1 (`sb` at 0xcf8fa64 and 0xcf8fa90), the word 0x10010 at +0x4 (`sw` at 0xcf8fa88), the word from +0xe0 of the first argument at +0xc (`sw` at 0xcf8fab8), a1 at +0x14 (`sw` at 0xcf8faa0) and the count at +0x10 (`sw` at 0xcf8faac).
  The `sb` at 0xcf8fa94 then overwrites the byte at +0x0 with the low byte of the setup result, the `sd` at 0xcf8fa74 adds one to the doubleword at +0x98, and the `sd` at 0xcf8fa80 adds the size to the pointer at +0xb0.
  Unless the size is below 0x21 (`bne` at 0xcf8fab4 jumps to the `_XReply` call), the array is copied to the block from +0x20 on: first a byte loop (`lbu` at 0xcf8fad8, `sb` at 0xcf8fae4) for the low two bits of the size less 0x20 (`beq` at 0xcf8fac4, `bne` at 0xcf8fae0), then a loop of four bytes per pass (`lbu` at 0xcf8fb0c to 0xcf8fb2c, `sb` at 0xcf8fb10 to 0xcf8fb38) that runs only when that difference shifted right by 2 is nonzero (`beq` at 0xcf8fafc) and ends when its counter, stepping by 4, equals the difference (`bne` at 0xcf8fb34).
  `_XReply` is called with a1 the frame base and a2 and a3 zero (`jalr` at 0xcf8fb4c).
  When it returns zero (`beq` at 0xcf8fb54) the routine makes the two optional calls through the second word of the +0x968 table and the pointer at +0xd0 (`jalr` at 0xcf8fc68 and 0xcf8fc7c) and returns 0x5b.
  Otherwise the reply word at frame offset 0x14 is stored through the pointer from a4 (`sw` at 0xcf8fb60); if the reply word at frame offset 0x10 differs from the count, or the word at 0x14 is negative (`bne` at 0xcf8fb68, `bltz` at 0xcf8fb70), the two optional calls at 0xcf8fbf8 and 0xcf8fc0c run and it returns 0x5b, and otherwise those at 0xcf8fb88 and 0xcf8fb9c run and it returns 0x0.
  Unknown: the routines behind the pointers at +0x968 and +0xd0, and what the reply words at frame offsets 0x10 and 0x14 hold; the layout of the reply would settle it.
  Evidence grade: established.

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
  Inferred: it fills a 0x20-byte request block at the pointer held at +0xb0 of the first argument and then waits on `_XReply`, since the routine calls `_XFlush` when that pointer plus 0x20 would pass the limit doubleword at +0xb8 and calls `_XReply` right after the block is filled.
  It first calls `__glXSetupForCommand` with its four argument registers (`jalr` at 0xcf8fcf4) and does not test the result; the result is saved in a frame slot (`sd` at 0xcf8fd0c) only around the optional call through the first word of the table at +0x968 (`jalr` at 0xcf8fd10, skipped when the +0x968 doubleword is zero).
  When the limit doubleword at +0xb8 is below the pointer plus 0x20, unsigned (`bne` at 0xcf8fd2c), `_XFlush` is called (`jalr` at 0xcf8fdec) and the pointer at +0xb0 is reloaded before the block is written.
  The pointer is copied to +0xa0 (`sd` at 0xcf8fd34); the block gets a halfword 0x8 at +0x2 (`sh` at 0xcf8fd3c), a byte 0x10 at +0x0 (`sb` at 0xcf8fd44), a byte 0x11 at +0x1 (`sb` at 0xcf8fd70), the word 0x10011 at +0x4 (`sw` at 0xcf8fd68), the word loaded from +0xe0 of the first argument at +0xc (`sw` at 0xcf8fd98) and the second argument at +0x10 (`sw` at 0xcf8fd8c); then the `sb` at 0xcf8fd74 overwrites +0x0 with the low byte of the saved `__glXSetupForCommand` result, which every path reloads from the frame slot or still holds in v0.
  The doubleword at +0x98 gets one added (`sd` at 0xcf8fd54) and the pointer at +0xb0 gets 0x20 added (`sd` at 0xcf8fd60).
  `_XReply` is then called (`jalr` at 0xcf8fd94) with a1 the frame base, a2 and a3 zero, a4 the word from +0xe0, a5 0x10011, a6 the block pointer and a7 0x11.
  A nonzero reply (fall-through of the `beq` at 0xcf8fd9c) runs the call through the second word of the +0x968 table (`jalr` at 0xcf8fdb0) and the call through the pointer at +0xd0 (`jalr` at 0xcf8fdc4), each only when the pointer is nonzero, and returns the word loaded from frame offset 0x10 (`lw` at 0xcf8fda8), which is the reply buffer passed to `_XReply`.
  A zero reply makes the same two optional calls (0xcf8fe0c and 0xcf8fe20) and returns the constant 0x5c (set at 0xcf8fe30).
  Unknown: the routines behind the pointers at +0x968 and +0xd0, and what field of the reply sits at frame offset 0x10; reading the display's pointer tables and the reply layout would settle it.
  Evidence grade: inferred.

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

- `glXQueryHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8fe44 (n64).
  Sends a 0x20-byte request through the first argument's buffer at +0xb0, waits for a reply with `_XReply`, stores a reply count through the pointer in a2, and returns a heap buffer filled from the reply data, or zero.
  It calls `__glXSetupForCommand` on its four argument registers (`jalr` at 0xcf8fe70), stores zero through a2 (`sw` at 0xcf8fe78), and, if the doubleword at +0x968 is nonzero, saves the setup result and makes a call through the first word of the table it points to (`jalr` at 0xcf8fe90).
  When the limit doubleword at +0xb8 is below the pointer at +0xb0 plus 0x20, unsigned (`bne` at 0xcf8feac), `_XFlush` is called first (`jalr` at 0xcf90068) and the pointer is reloaded.
  The pointer is copied to +0xa0 (`sd` at 0xcf8feb4); the block gets the halfword 0x8 at +0x2 (`sh` at 0xcf8febc), the word 0x1000f at +0x4 (`sw` at 0xcf8feec), the byte 0x11 at +0x1 (`sb` at 0xcf8fef4), a1 at +0x10 (`sw` at 0xcf8ff10) and the word loaded from +0xe0 of the first argument at +0xc (`sw` at 0xcf8ff1c, in the delay slot of the `_XReply` call).
  The byte at +0x0 is first set to 0x10 (`sb` at 0xcf8fec4) and then overwritten by the `sb` at 0xcf8fef8 with the low byte of the saved setup result; the `sd` at 0xcf8fed8 adds one to the doubleword at +0x98 and the `sd` at 0xcf8fee4 adds 0x20 to the pointer at +0xb0.
  `_XReply` is called with a1 the frame base and a2 and a3 zero (`jalr` at 0xcf8ff18); a zero return (`beq` at 0xcf8ff20) stores zero through a2 again (`sw` at 0xcf9007c), makes the two optional calls through the second word of the +0x968 table and the pointer at +0xd0 (`jalr` at 0xcf90090 and 0xcf900a4), and returns zero.
  Otherwise the reply word at frame offset 0x10 is stored through a2 (`sw` at 0xcf8ff34, in the delay slot of the `bgtz` at 0xcf8ff30), and the word at frame offset 0xc is kept in a frame slot.
  If the count is not positive, a2 is zeroed (`sw` at 0xcf8ff38), the two optional calls run (`jalr` at 0xcf8ff4c and 0xcf8ff60) and the routine returns zero.
  If it is positive, `malloc` is called with a size computed from the count by shifts and subtractions (`jalr` at 0xcf8ff9c); a null result calls `_XEatData` with the saved word at frame offset 0xc (`jalr` at 0xcf8ffb4), zeroes a2 (`sw` at 0xcf8ffbc), makes the two optional calls (0xcf8ffd0 and 0xcf8ffe4) and returns zero.
  A non-null result is passed to `_XRead` with the saved frame word as the length (`jalr` at 0xcf90014), the two optional calls run (0xcf9002c and 0xcf90040) and the routine returns the `malloc` result reloaded from its frame slot.
  Unknown: the routines behind the pointers at +0x968 and +0xd0, and what the reply words at frame offsets 0xc and 0x10 hold; the layout of the reply would settle it.
  Evidence grade: established.

- `glXCreatePbuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf90330 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf90330-0xcf90628 (760 bytes).
  It occupies 760 bytes.
  The `ld` at 0xcf9037c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `sw` at 0xcf903b0 stores 4 bytes to ret(__glXAddDrawableInterest) +0x40.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0xcf903b4, `lw` at 0xcf904ec.
  10 such `lw` accesses load 4 bytes from ?, including `lw` at 0xcf903c4, `lw` at 0xcf903d4, `lw` at 0xcf903e4.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0xcf90428, `ld` at 0xcf90560.
  The `ld` at 0xcf90434 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0xcf90440, `ld` at 0xcf90480, `ld` at 0xcf905e4.
  The `ld` at 0xcf90448 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0xcf90460 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0xcf9046c, `sb` at 0xcf9049c.
  The `sh` at 0xcf90474 stores 2 bytes to [a0+176]:8 +0x2.
  The `ld` at 0xcf9047c loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf90488 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf90498 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sb` at 0xcf904a0 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0xcf904a4 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xcf904a8 stores 4 bytes to [a0+176]:8 +0x4.
  The `lw` at 0xcf904b0 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xcf904b8 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0xcf904c0 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0xcf904cc stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0xcf904f0 stores 4 bytes to [a0+176]:8 +0x14.
  The `lw` at 0xcf904f8 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `sw` at 0xcf90504 stores 4 bytes to [a0+176]:8 +0x18.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xcf90534, `sw` at 0xcf9053c, `sw` at 0xcf90544.
  The `ld` at 0xcf9056c loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0xcf90578 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0xcf90364 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf90380 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf90394 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf90438 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf90570 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf90584 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf90590 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf905dc calls _XFlush with a0=a0 at entry (arg0), a1=[a0+176]:8, a2=?, a3=?.
  The `jalr` at 0xcf90600 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x1b, a3=0x0.
  The `beq` branch at 0xcf90374 targets 0xcf905b8, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xcf903a0 targets 0xcf905f0, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `beq` branch at 0xcf903ac targets 0xcf90428, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `beq` branch at 0xcf903bc targets 0xcf90428, is taken when at(=[a2]) == 0, and falls through when at(=[a2]) != 0.
  The `beq` branch at 0xcf903cc targets 0xcf90428, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xcf903dc targets 0xcf90428, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xcf903ec targets 0xcf90428, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xcf903fc targets 0xcf90428, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xcf9040c targets 0xcf90428, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xcf90420 targets 0xcf903c4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xcf9042c targets 0xcf90440, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0xcf90458 targets 0xcf905d8, is taken when a4(=[a0+184]:8) < at(?) (unsigned), and falls through when a4(=[a0+184]:8) >= at(?) (unsigned).
  The `beq` branch at 0xcf904c8 targets 0xcf90560, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `bne` branch at 0xcf904dc targets 0xcf90560, is taken when s0(?) < 0x0 (signed), and falls through when s0(?) >= 0x0 (signed).
  The `beq` branch at 0xcf904e4 targets 0xcf90508, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xcf90514 targets 0xcf90560, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xcf90558 targets 0xcf90530, is taken when v0(?) != a2(=-0x1), and falls through when v0(?) == a2(=-0x1).
  The `beq` branch at 0xcf90564 targets 0xcf90578, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf9057c targets 0xcf9058c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf905e8 targets 0xcf90460 and is always taken.
  The return at 0xcf905b0 has v0 = ret(?).
  The return at 0xcf905d0 has v0 = 0x0.
  The return at 0xcf90620 has v0 = 0x0.

- `glXDestroyPbuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf90628 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf90628-0xcf90778 (336 bytes).
  It occupies 336 bytes.
  The `lw` at 0xcf90688 loads 4 bytes from ret(__glXAddDrawableInterest) +0x20.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0xcf9069c, `ld` at 0xcf90708.
  The `ld` at 0xcf906a8 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0xcf906b4, `ld` at 0xcf906e8, `ld` at 0xcf9076c.
  The `ld` at 0xcf906b8 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0xcf906cc stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0xcf906d4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0xcf906dc, `sb` at 0xcf90704.
  The `ld` at 0xcf906e4 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf906f0 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf906f8 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0xcf906fc stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0xcf90700 stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0xcf90714 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0xcf90720 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `sd` at 0xcf90774 stores 8 bytes to ret(__glXAddDrawableInterest) +0x0.
  The `jalr` at 0xcf90650 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf90670 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf90680 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf90694 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf906ac calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?.
  The `jalr` at 0xcf90718 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=[a0+176]:8+8, a3=0x2.
  The `jalr` at 0xcf9072c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf90760 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+8.
  The `beq` branch at 0xcf90660 targets 0xcf9074c, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xcf9068c targets 0xcf90770, is taken when v1(=[ret(__glXAddDrawableInterest)+32]) == 0, and falls through when v1(=[ret(__glXAddDrawableInterest)+32]) != 0.
  The `beq` branch at 0xcf906a0 targets 0xcf906b4, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `bne` branch at 0xcf906c4 targets 0xcf90760, is taken when a2(=[a0+184]:8) < a3(=[a0+176]:8+8) (unsigned), and falls through when a2(=[a0+184]:8) >= a3(=[a0+176]:8+8) (unsigned).
  The `beq` branch at 0xcf9070c targets 0xcf90720, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf90724 targets 0xcf90738, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf90768 targets 0xcf906cc and is always taken.
  The `beq` branch at 0xcf90770 targets 0xcf90690 and is always taken.
  The return at 0xcf90744 has v0 = one of ?, ret(?).
  The return at 0xcf90758 has v0 = ?.

- `__glx_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf91e98 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf91e98-0xcf91f14 (124 bytes).
  It occupies 124 bytes.
  The `ld` at 0xcf91e98 loads 8 bytes from abs 0x1028.
  The `ld` at 0xcf91e9c loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0xcf91ea0 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  The `sb` at 0xcf91ea4 stores 1 byte to [[[0x1028]:8+280]:8+8]:8 +0x7.
  The `sb` at 0xcf91ea8 stores 1 byte to [[[0x1028]:8+280]:8+8]:8 +0x6.
  The `sb` at 0xcf91eac stores 1 byte to [[[0x1028]:8+280]:8+8]:8 +0x5.
  The `sb` at 0xcf91eb0 stores 1 byte to [[[0x1028]:8+280]:8+8]:8 +0x4.
  The `sh` at 0xcf91eb8 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x0.
  The `sh` at 0xcf91ec0 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x2.
  The `ld` at 0xcf91ec4 loads 8 bytes from [[0x1028]:8+280]:8 +0x10.
  The `sd` at 0xcf91ee0 stores 8 bytes to [[0x1028]:8+280]:8 +0x8.
  The `jalr` at 0xcf91f04 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[[[0x1028]:8+280]:8+8]:8+8, a6=[[0x1028]:8+280]:8.
  The `bne` branch at 0xcf91ee4 targets 0xcf91ef8, is taken when at(=[[[0x1028]:8+280]:8+16]:8) < a5(=[[[0x1028]:8+280]:8+8]:8+8) (unsigned), and falls through when at(=[[[0x1028]:8+280]:8+16]:8) >= a5(=[[[0x1028]:8+280]:8+8]:8+8) (unsigned).
  The `beq` branch at 0xcf91f0c targets 0xcf91eec and is always taken.
  The return at 0xcf91ef0 has v0 = one of 0x1cc00, ret(__glXFlushRenderBuffer).

- `__glx_InstrumentsBufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf921dc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf921dc-0xcf92338 (348 bytes).
  It occupies 348 bytes.
  The `ld` at 0xcf921e4 loads 8 bytes from abs 0x1028.
  The `ld` at 0xcf921e8 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0xcf921f0 loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `ld` at 0xcf92224 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0xcf92228, `ld` at 0xcf922d8.
  The `ld` at 0xcf92234 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0xcf92240, `ld` at 0xcf92270, `ld` at 0xcf92334.
  The `ld` at 0xcf92244 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0xcf92258 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  The `sh` at 0xcf92260 stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0xcf92268, `sb` at 0xcf92298.
  The `ld` at 0xcf9226c loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0xcf92278 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0xcf92280 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  The `lw` at 0xcf92284 loads 4 bytes from [[0x1028]:8+280]:8 +0x1a4.
  The `sw` at 0xcf9228c stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `sb` at 0xcf92294 stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `lw` at 0xcf922a4 loads 4 bytes from [[0x1028]:8+280]:8 +0x68.
  The `sw` at 0xcf922b0 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0xc.
  The `sw` at 0xcf922bc stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8.
  The `ld` at 0xcf922e8 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0xcf922f8 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `jalr` at 0xcf92220 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf92238 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0xcf922b8 calls _XReply with a0=[[[0x1028]:8+280]:8+312]:8, a1=sp-96, a2=0x0, a3=0x0, a4=[[[[0x1028]:8+280]:8+312]:8+176]:8+16, a5=[[[[0x1028]:8+280]:8+312]:8+176]:8, a6=0x4, a7=0x10.
  The `jalr` at 0xcf922d0 calls _XRead with a0=[[[0x1028]:8+280]:8+312]:8, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0xcf922ec calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0xcf92304 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf92328 calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?, a5=[[[[0x1028]:8+280]:8+312]:8+176]:8.
  The `beq` branch at 0xcf9220c targets 0xcf92310, is taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0xcf9222c targets 0xcf92240, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0xcf92250 targets 0xcf92328, is taken when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < v0(=[[[[0x1028]:8+280]:8+312]:8+176]:8+16) (unsigned), and falls through when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= v0(=[[[[0x1028]:8+280]:8+312]:8+176]:8+16) (unsigned).
  The `beq` branch at 0xcf922e0 targets 0xcf922f8, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0xcf922fc targets 0xcf92310, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0xcf92330 targets 0xcf92258 and is always taken.
  The return at 0xcf92320 has v0 = one of ?, ret(?).
