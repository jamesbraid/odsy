# Readings: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`

One entry per routine, filed here from the reading batches by binary.

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

- `__glXBindHWContextToWindow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd89d134 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd89d134-0xd89d408 (724 bytes).
  It occupies 724 bytes.
  The `lw` at 0xd89d160 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd89d16c, `lw` at 0xd89d348.
  4 such `lw` accesses load 4 bytes from [a0+76] +0xcc, including `lw` at 0xd89d170, `lw` at 0xd89d1b4, `lw` at 0xd89d270.
  The `lw` at 0xd89d174 loads 4 bytes from [0x1014] +0x0.
  5 such `lw` accesses load 4 bytes from [a0+76] +0xe0, including `lw` at 0xd89d188, `lw` at 0xd89d25c, `lw` at 0xd89d298.
  3 such `sb` accesses store 1 byte to [a0+76] +0xf4, including `sb` at 0xd89d194, `sb` at 0xd89d244, `sb` at 0xd89d2f0.
  5 such `lw` accesses load 4 bytes from [a0+76] +0xdc, including `lw` at 0xd89d198, `lw` at 0xd89d260, `lw` at 0xd89d300.
  5 such `lw` accesses load 4 bytes from [a0+76] +0xe8, including `lw` at 0xd89d1a4, `lw` at 0xd89d1d8, `lw` at 0xd89d1f0.
  The `lw` at 0xd89d1a8 loads 4 bytes from [[a0+76]+232] +0x2c.
  2 such `lw` accesses load 4 bytes from [a0+76] +0x11c, including `lw` at 0xd89d1bc, `lw` at 0xd89d278.
  6 such `lw` accesses load 4 bytes from [a0+76] +0xe4, including `lw` at 0xd89d1cc, `lw` at 0xd89d1e4, `lw` at 0xd89d21c.
  2 such `lw` accesses load 4 bytes from [[a0+76]+228] +0x24, including `lw` at 0xd89d1d0, `lw` at 0xd89d2a8.
  The `lw` at 0xd89d1dc loads 4 bytes from [[a0+76]+232] +0x24.
  4 such `lw` accesses load 4 bytes from [[a0+76]+228] +0x4, including `lw` at 0xd89d1e8, `lw` at 0xd89d224, `lw` at 0xd89d2b4.
  2 such `lw` accesses load 4 bytes from [[a0+76]+232] +0x4, including `lw` at 0xd89d1f4, `lw` at 0xd89d238.
  3 such `lw` accesses load 4 bytes from [a0+76] +0x24, including `lw` at 0xd89d20c, `lw` at 0xd89d2cc, `lw` at 0xd89d338.
  2 such `sw` accesses store 4 bytes to [[a0+76]+228] +0x4, including `sw` at 0xd89d24c, `sw` at 0xd89d2f8.
  The `sw` at 0xd89d258 stores 4 bytes to [[a0+76]+232] +0x4.
  2 such `sw` accesses store 4 bytes to [a0+76] +0xec, including `sw` at 0xd89d264, `sw` at 0xd89d304.
  2 such `sw` accesses store 4 bytes to [a0+76] +0xf0, including `sw` at 0xd89d26c, `sw` at 0xd89d308.
  2 such `lw` accesses load 4 bytes from [a0+76] +0x120, including `lw` at 0xd89d288, `lw` at 0xd89d388.
  The `sw` at 0xd89d350 stores 4 bytes to [0x1014] +0x0.
  The `lw` at 0xd89d35c loads 4 bytes from [a0+76] +0xf0.
  The `lw` at 0xd89d368 loads 4 bytes from [a0+76] +0xec.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0xd89d3b4, `lw` at 0xd89d3d4, `lw` at 0xd89d3f0.
  The `jalr` at 0xd89d164 calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd89d208 calls (unnamed) [0xd89ccc8] with a0=[[a0+76]+36], a1=0x400, a2=sp-88, a3=[[a0+76]+220], a4=0xd89ccc8.
  The `bgezall` at 0xd89d2c8 calls (unnamed) [0xd89ccc8] with a0=[[a0+76]+36], a1=0x3eb, a2=sp-104, a3=[[a0+76]+220], a4=0xd89ccc8.
  The `bgezall` at 0xd89d334 calls (unnamed) [0xd89ccc8] with a0=[[a0+76]+36], a1=0x3ea, a2=sp-112, a3=?, a4=[[a0+76]+204].
  The `jalr` at 0xd89d3bc calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8cf818, a2=?, a3=?, a4=0xd89ccc8.
  The `jalr` at 0xd89d3dc calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8cf830, a2=?, a3=?.
  The `jalr` at 0xd89d3f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8cf848, a2=?, a3=?.
  The `bne` branch at 0xd89d178 targets 0xd89d324, is taken when at(=[[0x1014]]) != a4(=[[a0+76]+204]), and falls through when at(=[[0x1014]]) == a4(=[[a0+76]+204]).
  The `beq` branch at 0xd89d190 targets 0xd89d35c, is taken when s3(=one of 0x0, 0x1) == 0, and falls through when s3(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd89d19c targets 0xd89d270, is taken when a2(=[[a0+76]+224]) == a3(=[[a0+76]+220]), and falls through when a2(=[[a0+76]+224]) != a3(=[[a0+76]+220]).
  The `beq` branch at 0xd89d1ac targets 0xd89d270, is taken when at(=[[[a0+76]+232]+44]) == v0(=0x3), and falls through when at(=[[[a0+76]+232]+44]) != v0(=0x3).
  The `beq` branch at 0xd89d1c4 targets 0xd89d388, is taken when v0(=[[a0+76]+284]) == s3(=0x1), and falls through when v0(=[[a0+76]+284]) != s3(=0x1).
  The `beq` branch at 0xd89d214 targets 0xd89d3ec, is taken when v0(=ret(0xd89ccc8)) == a1(=-0x1), and falls through when v0(=ret(0xd89ccc8)) != a1(=-0x1).
  The `bne` branch at 0xd89d228 targets 0xd89d244, is taken when at(=[[[a0+76]+228]+4]) != v0(?), and falls through when at(=[[[a0+76]+228]+4]) == v0(?).
  The `beq` branch at 0xd89d23c targets 0xd89d25c, is taken when v1(=[[[a0+76]+232]+4]) == a1(?), and falls through when v1(=[[[a0+76]+232]+4]) != a1(?).
  The `beq` branch at 0xd89d268 targets 0xd89d30c and is always taken.
  The `beq` branch at 0xd89d280 targets 0xd89d2a4, is taken when at(=[[a0+76]+284]) >= 0x2 (signed), and falls through when at(=[[a0+76]+284]) < 0x2 (signed).
  The `beq` branch at 0xd89d290 targets 0xd89d2a4, is taken when v1(=[[a0+76]+288]) >= 0x3 (signed), and falls through when v1(=[[a0+76]+288]) < 0x3 (signed).
  The `beq` branch at 0xd89d29c targets 0xd89d2b0 and is always taken.
  The `beq` branch at 0xd89d2d4 targets 0xd89d3d0, is taken when v0(=ret(0xd89ccc8)) == v1(=-0x1), and falls through when v0(=ret(0xd89ccc8)) != v1(=-0x1).
  The `beq` branch at 0xd89d2e8 targets 0xd89d2fc, is taken when a1(=[[[a0+76]+228]+4]) == at(?), and falls through when a1(=[[[a0+76]+228]+4]) != at(?).
  The `bltz` branch at 0xd89d340 targets 0xd89d3ac, is taken when v0(=ret(0xd89ccc8)) < 0 (signed), and falls through when v0(=ret(0xd89ccc8)) >= 0 (signed).
  The `beq` branch at 0xd89d354 targets 0xd89d188 and is always taken.
  The `bne` branch at 0xd89d360 targets 0xd89d19c, is taken when v1(=[[a0+76]+240]) != a2(=[[a0+76]+224]), and falls through when v1(=[[a0+76]+240]) == a2(=[[a0+76]+224]).
  The `bne` branch at 0xd89d36c targets 0xd89d19c, is taken when a1(=[[a0+76]+236]) != a3(=[[a0+76]+220]), and falls through when a1(=[[a0+76]+236]) == a3(=[[a0+76]+220]).
  The `beq` branch at 0xd89d390 targets 0xd89d1cc, is taken when at(=[[a0+76]+288]) >= 0x3 (signed), and falls through when at(=[[a0+76]+288]) < 0x3 (signed).
  The `beq` branch at 0xd89d3a4 targets 0xd89d1e4 and is always taken.
  The `beq` branch at 0xd89d3c8 targets 0xd89d354 and is always taken.
  The `beq` branch at 0xd89d3e4 targets 0xd89d310 and is always taken.
  The `beq` branch at 0xd89d400 targets 0xd89d310 and is always taken.
  The return at 0xd89d31c has v0 = one of ?, ret(?).
  The return at 0xd89d380 has v0 = 0x3.

- `__glx_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8a855c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8a855c-0xd8a85f0 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd8a856c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8a857c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8a8584 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8a859c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd8a85a8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `lw` at 0xd8a85ac loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8a85b4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8a85a4 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x80, a3=a3 at entry (arg3).
  The `jalr` at 0xd8a85e0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+132, a2=?, a3=?.
  The `bne` branch at 0xd8a85c0 targets 0xd8a85d8, is taken when at(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+132) (unsigned), and falls through when at(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+132) (unsigned).
  The `beq` branch at 0xd8a85e8 targets 0xd8a85c8 and is always taken.
  The return at 0xd8a85d0 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_LoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8a85f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8a85f0-0xd8a8684 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd8a8600 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8a8610 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8a8618 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8a8630 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd8a863c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `lw` at 0xd8a8640 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8a8648 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8a8638 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x40, a3=a3 at entry (arg3).
  The `jalr` at 0xd8a8674 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+68, a2=?, a3=?.
  The `bne` branch at 0xd8a8654 targets 0xd8a866c, is taken when at(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+68) (unsigned), and falls through when at(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+68) (unsigned).
  The `beq` branch at 0xd8a867c targets 0xd8a865c and is always taken.
  The return at 0xd8a8664 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `GetFBConfigsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8aa140 (n32).
  The routine flushes the X connection (_XFlush at 0xd8aa2d4) and reads a reply (_XReply at 0xd8aa1fc, _XRead at 0xd8aa510). It calls malloc, free and memset, then calls __glXOverrideVisualGetVisualInfo (0xd8aae94), frees its returned value (0xd8aaec4) and calls XFree (0xd8aaee0). Returns are 0 or 1. Thirteen indirect calls are unresolved, so the rest of the routine is not fully legible.
  Grade: inferred.
  Reviewed: 2026-11-12

- `GetFBConfigsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8aa140
  **Inferred.** It reads `[a0+0x4d0]` repeatedly and calls `__glXSetupForCommand`-style request code, then `_XReply` at 0xd8aa1fc (a stack buffer as a1, a2 and a3 zero), `malloc` at 0xd8aa274 and 0xd8aa394, `memset` at 0xd8aa414 and `_XRead` at 0xd8aa510 inside a loop. In the loop it calls `__glXOverrideVisualGetVisualInfo` at 0xd8aae94 (a1 = 3) and, when that returns nonzero, `free` at 0xd8aaec4 on the returned pointer and `XFree` at 0xd8aaee0. It calls `_XFlush` at 0xd8aa2d4 and returns 0x0 or 0x1 on different paths. Role (from name): the GLX query for framebuffer configurations; the reply layout is not decoded.
  Reviewed: 2026-11-12

- `__glXSendMakeCurrentRead` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8acdc0 (n32).
  The routine first calls __glXSetupForCommand (0xd8acdf8), then calls _XReply (0xd8acec8), _XRead (0xd8acefc) and _XFlush (0xd8acf84, 0xd8ad0a0). It allocates a 16-byte buffer with malloc (0xd8acee4), passes it to _XRead and frees it (0xd8acf30). It calls __glXPostHiddenError at two sites (0xd8ad07c, 0xd8ad0f0), each followed by a return of 0. The request layout is not in the facts, so the exact wire format is unknown.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glXSendMakeCurrentRead` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8acdc0
  **Inferred.** It calls `__glXSetupForCommand` at 0xd8acdf8 first, then `_XReply` at 0xd8acec8. Later it calls `malloc` at 0xd8acee4, reads 0x10 bytes into the malloc result with `_XRead` at 0xd8acefc, calls `free` at 0xd8acf30 and returns 0x1 at 0xd8acf7c. A second `_XReply` is at 0xd8ad028. `__glXPostHiddenError` is called at 0xd8ad07c and 0xd8ad0f0, each followed in address order by a return of 0x0 (0xd8ad098, 0xd8ad10c). `_XFlush` is called at 0xd8acf84 and 0xd8ad0a0. Role (from name): the make-current request with a separate read drawable; the request fields are not decoded.
  Reviewed: 2026-11-12

- `__glXMakeContextCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ad500 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ad500-0xd8ae344 (3652 bytes).
  It occupies 3652 bytes.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x30, including `lw` at 0xd8ad584, `lw` at 0xd8ad5e8, `lw` at 0xd8ad7a4.
  13 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8ad588, `sw` at 0xd8ad59c, `sw` at 0xd8ad98c.
  6 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x20, including `lw` at 0xd8ad598, `lw` at 0xd8ad794, `lw` at 0xd8ad990.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x11c, including `lw` at 0xd8ad5a0, `lw` at 0xd8add44.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x120, including `lw` at 0xd8ad5b0, `lw` at 0xd8add54.
  22 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8ad5c0, `lw` at 0xd8ad5d0, `lw` at 0xd8ad5e4.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0xc8, including `lw` at 0xd8ad610, `lw` at 0xd8ad6a8.
  The `lw` at 0xd8ad614 loads 4 bytes from [a3+200] +0x68.
  7 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd8ad670, `lw` at 0xd8ad6f8, `lw` at 0xd8ada64.
  3 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xd8, including `lw` at 0xd8ad674, `lw` at 0xd8adacc, `lw` at 0xd8adb4c.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xe0, including `lw` at 0xd8ad678, `lw` at 0xd8ad718.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xdc, including `lw` at 0xd8ad67c, `lw` at 0xd8ad724.
  2 such `sw` accesses store 4 bytes to [0x1014] +0x114, including `sw` at 0xd8ad680, `sw` at 0xd8ada0c.
  The `sw` at 0xd8ad684 stores 4 bytes to a3 (arg3 at entry) +0xe8.
  The `sw` at 0xd8ad688 stores 4 bytes to a3 (arg3 at entry) +0xdc.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0xc4, including `lw` at 0xd8ad68c, `lw` at 0xd8ad768, `lw` at 0xd8ad958.
  The `sw` at 0xd8ad690 stores 4 bytes to a3 (arg3 at entry) +0xe4.
  The `sw` at 0xd8ad698 stores 4 bytes to a3 (arg3 at entry) +0xe0.
  The `sw` at 0xd8ad6a4 stores 4 bytes to a3 (arg3 at entry) +0xd8.
  The `lw` at 0xd8ad6ac loads 4 bytes from [a3+200] +0x64.
  2 such `lbu` accesses load 1 byte from a3 (arg3 at entry) +0xf4, including `lbu` at 0xd8ad6d0, `lbu` at 0xd8adc64.
  The `lw` at 0xd8ad6fc loads 4 bytes from [0x1014] +0x114.
  3 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xc4, including `lw` at 0xd8ad700, `lw` at 0xd8ad7d0, `lw` at 0xd8ad7e8.
  The `lw` at 0xd8ad70c loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd8ad734 loads 4 bytes from [[[0x1014]+276]+200] +0x5c.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xe4, including `lw` at 0xd8ad750, `lw` at 0xd8adaa8.
  The `lw` at 0xd8ad754 loads 4 bytes from [[0x1014]+276] +0xe8.
  2 such `lw` accesses load 4 bytes from ret(__glXAddDrawableInterest) +0x8, including `lw` at 0xd8ad798, `lw` at 0xd8adda8.
  The `lw` at 0xd8ad7a8 loads 4 bytes from ret(__glXAddDrawableInterest) +0xc.
  The `lw` at 0xd8ad7b4 loads 4 bytes from ret(__glXAddDrawableInterest) +0x2c.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd8ad814, `lbu` at 0xd8ad820, `lbu` at 0xd8adde4.
  2 such `lbu` accesses load 1 byte from a3 (arg3 at entry) +0x1d, including `lbu` at 0xd8ad834, `lbu` at 0xd8ad99c.
  3 such `lw` accesses load 4 bytes from [[0x1014]+276] +0x3c, including `lw` at 0xd8ad858, `lw` at 0xd8ad9e0, `lw` at 0xd8adae4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c8, including `lw` at 0xd8ad88c, `lw` at 0xd8ad8c4, `lw` at 0xd8ade30.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c8, including `sw` at 0xd8ad89c, `sw` at 0xd8ad8d8, `sw` at 0xd8ade48.
  2 such `sw` accesses store 4 bytes to [[0x1014]+276] +0x3c, including `sw` at 0xd8ad974, `sw` at 0xd8adafc.
  2 such `lw` accesses load 4 bytes from abs 0x1048, including `lw` at 0xd8ada10, `lw` at 0xd8adc0c.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xd8ada2c, `ld` at 0xd8adc2c.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0xd8ada38, `sd` at 0xd8adc38.
  7 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x14, including `lw` at 0xd8ada54, `lw` at 0xd8adca0, `lw` at 0xd8ade98.
  The `lw` at 0xd8ada60 loads 4 bytes from a3 (arg3 at entry) +0xd0.
  The `lw` at 0xd8ada6c loads 4 bytes from [0x1014] +0x10c.
  2 such `lw` accesses load 4 bytes from [0x1014] +0x110, including `lw` at 0xd8ada78, `lw` at 0xd8ada90.
  The `lw` at 0xd8ada7c loads 4 bytes from a3 (arg3 at entry) +0xd4.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0xd0, including `sw` at 0xd8ada88, `sw` at 0xd8adfe0.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0xd4, including `sw` at 0xd8ada98, `sw` at 0xd8adfe4.
  The `sw` at 0xd8adb50 stores 4 bytes to [0x1014] +0x118.
  The `lw` at 0xd8adb58 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd8adb5c stores 4 bytes to [0x1014] +0x11c.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0x118, including `lw` at 0xd8adb64, `lw` at 0xd8adfb4.
  The `sw` at 0xd8adb68 stores 4 bytes to [0x1014] +0x120.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0x14, including `lw` at 0xd8adb6c, `lw` at 0xd8adfc4.
  The `sw` at 0xd8adb78 stores 4 bytes to [[0x1014]+276] +0xd0.
  The `sw` at 0xd8adb7c stores 4 bytes to [[0x1014]+276] +0xd4.
  4 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xe4, including `sw` at 0xd8adb80, `sw` at 0xd8adc88, `sw` at 0xd8adf30.
  4 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xe8, including `sw` at 0xd8adb84, `sw` at 0xd8adc84, `sw` at 0xd8adf28.
  4 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xe0, including `sw` at 0xd8adb88, `sw` at 0xd8adc8c, `sw` at 0xd8adf54.
  4 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xdc, including `sw` at 0xd8adb8c, `sw` at 0xd8adc68, `sw` at 0xd8adf18.
  4 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xd8, including `sw` at 0xd8adb90, `sw` at 0xd8adc80, `sw` at 0xd8adf48.
  The `lw` at 0xd8adc54 loads 4 bytes from [a3+200] +0x60.
  The `sw` at 0xd8adcfc stores 4 bytes to a3 (arg3 at entry) +0x3c.
  The `lw` at 0xd8addb4 loads 4 bytes from ret(__glXAddDrawableInterest) +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xd8ade04, `lw` at 0xd8ae1bc.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8ade60, `sb` at 0xd8adefc, `sb` at 0xd8adf04.
  The `jalr` at 0xd8ad558 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8ad594 calls __glXGetModes with a0=a0 at entry (arg0), a1=[a3+32], a2=?, a3=?.
  The `jalr` at 0xd8ad62c calls (unknown callee) with a0=[a3+200], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ad6c0 calls (unknown callee) with a0=[a3+200], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ad738 calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ad784 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `bgezall` at 0xd8ad85c calls (unnamed) [0xd8ad114] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1014]+276]+60], a3=sp-256, a4=a1 at entry (arg1).
  The `bgezall` at 0xd8ad8f0 calls (unnamed) [0xd8ad2c8] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=?.
  The `jalr` at 0xd8ad93c calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-320, a2=?, a3=?.
  The `jalr` at 0xd8ad9b8 calls __glXOverrideVisualsBogusChoose with a0=?, a1=[a3+48], a2=?, a3=?.
  The `bgezall` at 0xd8ad9f8 calls (unnamed) [0xd8acdc0] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1014]+276]+60], a3=sp-256, a4=a1 at entry (arg1), a5=a2 at entry (arg2).
  The `bgezall` at 0xd8ada4c calls (unnamed) [0xd8ac360] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ada9c calls __glXUnbindHWContextFromThread with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd8adae8 calls (unnamed) [0xd8ad114] with a0=[[[0x1014]+276]+216], a1=0x0, a2=[[[0x1014]+276]+60], a3=sp-256, a4=0x0.
  The `jalr` at 0xd8adba0 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8adbfc calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-336, a2=?, a3=?.
  The `jalr` at 0xd8adc58 calls (unknown callee) with a0=[a3+200], a1=[[[0x1014]+276]+224], a2=[[[0x1014]+276]+216], a3=?.
  The `jalr` at 0xd8adc9c calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20].
  The `bgezall` at 0xd8adcb8 calls (unnamed) [0xd8ad2c8] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=?.
  The `jalr` at 0xd8add20 calls __glXOverrideVisualsBogusChoose with a0=?, a1=[a3+48], a2=?, a3=?.
  The `jalr` at 0xd8add38 calls __glXGetModes with a0=a0 at entry (arg0), a1=[a3+32], a2=ret(__glXOverrideVisualsBogusChoose), a3=?.
  The `jalr` at 0xd8add80 calls glXQueryDrawable with a0=a0 at entry (arg0), a1=?, a2=0x8025, a3=?.
  The `jalr` at 0xd8add94 calls __glXAddDrawableInterest with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8addd4 calls XSGIMiscQueryExtension with a0=a0 at entry (arg0), a1=sp-224, a2=sp-220, a3=?.
  The `jalr` at 0xd8ade50 calls _XSGISetSpecialDestroyInterest with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ade9c calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20].
  The `bgezall` at 0xd8adeb8 calls (unnamed) [0xd8ad2c8] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=?.
  The `jalr` at 0xd8adf08 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd8adf50 calls (unnamed) [0xd8ad2c8] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=?.
  The `jalr` at 0xd8adf74 calls __glXPostError with a0=a0 at entry (arg0), a1=0xa, a2=0x5, a3=[a3+20].
  The `jalr` at 0xd8adfc8 calls __glXPostError with a0=a0 at entry (arg0), a1=?, a2=0x5, a3=[[[0x1014]+276]+20].
  The `jalr` at 0xd8ae060 calls glXQueryDrawable with a0=a0 at entry (arg0), a1=?, a2=0x8025, a3=?.
  The `jalr` at 0xd8ae0b8 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20].
  The `bgezall` at 0xd8ae0d4 calls (unnamed) [0xd8ad2c8] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=0x0, a3=0x0.
  The `jalr` at 0xd8ae118 calls __glXFreeContext with a0=[[0x1014]+276], a1=0x1, a2=?, a3=?.
  The `jalr` at 0xd8ae15c calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20].
  The `bgezall` at 0xd8ae178 calls (unnamed) [0xd8ad2c8] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=?.
  The `jalr` at 0xd8ae204 calls _XSGISetSpecialDestroyInterest with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ae22c calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20].
  The `bgezall` at 0xd8ae248 calls (unnamed) [0xd8ad2c8] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=ret(__glXAddDrawableInterest), a3=0x0.
  The `jalr` at 0xd8ae294 calls __glXPostError with a0=a0 at entry (arg0), a1=0x8, a2=0x5, a3=[a3+20].
  The `bgezall` at 0xd8ae2b0 calls (unnamed) [0xd8ad2c8] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=?.
  The `bgezall` at 0xd8ae304 calls (unnamed) [0xd8ad2c8] with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=?, a3=0x0.
  The `beq` branch at 0xd8ad564 targets 0xd8ae020, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8ad57c targets 0xd8ad6ec and is always taken.
  The `beq` branch at 0xd8ad5a8 targets 0xd8ad5c0, is taken when t0(=[a3+284]) >= 0x2 (signed), and falls through when t0(=[a3+284]) < 0x2 (signed).
  The `bne` branch at 0xd8ad5b8 targets 0xd8ad5d0, is taken when t1(=[a3+288]) < 0x3 (signed), and falls through when t1(=[a3+288]) >= 0x3 (signed).
  The `beq` branch at 0xd8ad5c8 targets 0xd8ae054, is taken when at(?) == v1(=0x6), and falls through when at(?) != v1(=0x6).
  The `beq` branch at 0xd8ad5d4 targets 0xd8add00, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xd8ad5dc targets 0xd8ad668, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0xd8ad5ec targets 0xd8ad610, is taken when t1(=[a3+48]) != a2(?), and falls through when t1(=[a3+48]) == a2(?).
  The `beq` branch at 0xd8ad5f8 targets 0xd8ad63c, is taken when at(?) == a2(?), and falls through when at(?) != a2(?).
  The `beq` branch at 0xd8ad608 targets 0xd8ad63c, is taken when v1(?) == t0(=0x3), and falls through when v1(?) != t0(=0x3).
  The `beq` branch at 0xd8ad618 targets 0xd8ad63c, is taken when t9(=[[a3+200]+104]) == 0, and falls through when t9(=[[a3+200]+104]) != 0.
  The `beq` branch at 0xd8ad634 targets 0xd8ae288, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xd8ad63c targets 0xd8ad664, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0xd8ad644 targets 0xd8ad668, is taken when s2(?) == s4(?), and falls through when s2(?) != s4(?).
  The `beq` branch at 0xd8ad654 targets 0xd8ade64, is taken when t1(?) == at(=0x4), and falls through when t1(?) != at(=0x4).
  The `beq` branch at 0xd8ad660 targets 0xd8ade64, is taken when v1(?) == t0(=0x4), and falls through when v1(?) != t0(=0x4).
  The `beq` branch at 0xd8ad66c targets 0xd8ada08, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xd8ad6a0 targets 0xd8adc0c, is taken when t1(=[a3+196]) == 0, and falls through when t1(=[a3+196]) != 0.
  The `beq` branch at 0xd8ad6b4 targets 0xd8adc54, is taken when t9(=[[a3+200]+100]) == 0, and falls through when t9(=[[a3+200]+100]) != 0.
  The `beq` branch at 0xd8ad6c8 targets 0xd8ae128, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xd8ad6d4 targets 0xd8ad6e4, is taken when at(=[a3+244]:1) == 0, and falls through when at(=[a3+244]:1) != 0.
  The `beq` branch at 0xd8ad6dc targets 0xd8adf18, is taken when s7(=one of 0x0, 0x1) == 0, and falls through when s7(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd8ad6e8 targets 0xd8adb38, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `bne` branch at 0xd8ad6f0 targets 0xd8ada44, is taken when s0(=a3) != 0, and falls through when s0(=a3) == 0.
  The `beq` branch at 0xd8ad704 targets 0xd8adaac, is taken when v1(=[[[0x1014]+276]+196]) == 0, and falls through when v1(=[[[0x1014]+276]+196]) != 0.
  The `bne` branch at 0xd8ad710 targets 0xd8ad72c, is taken when s0(=a3) != s1(=[[0x1014]+276]), and falls through when s0(=a3) == s1(=[[0x1014]+276]).
  The `bne` branch at 0xd8ad71c targets 0xd8ad730, is taken when v1(=[[[0x1014]+276]+224]) != s3(=a1), and falls through when v1(=[[[0x1014]+276]+224]) == s3(=a1).
  The `beq` branch at 0xd8ad728 targets 0xd8adb00, is taken when t0(=[[[0x1014]+276]+220]) == s6(=a2), and falls through when t0(=[[[0x1014]+276]+220]) != s6(=a2).
  The `beq` branch at 0xd8ad740 targets 0xd8adfb4, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `bne` branch at 0xd8ad748 targets 0xd8ada9c, is taken when s0(=a3) != s1(=[[0x1014]+276]), and falls through when s0(=a3) == s1(=[[0x1014]+276]).
  The `beq` branch at 0xd8ad760 targets 0xd8ad7dc, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xd8ad76c targets 0xd8ad7d4, is taken when t0(=[a3+196]) == 0, and falls through when t0(=[a3+196]) != 0.
  The `beq` branch at 0xd8ad774 targets 0xd8ad7d4, is taken when s3(=a1) == 0, and falls through when s3(=a1) != 0.
  The `beq` branch at 0xd8ad77c targets 0xd8ad7d4, is taken when s6(=a2) == 0, and falls through when s6(=a2) != 0.
  The `beq` branch at 0xd8ad78c targets 0xd8ae0a8, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `bne` branch at 0xd8ad79c targets 0xd8ad7c0, is taken when t1(=[ret(__glXAddDrawableInterest)+8]) != at(=[a3+32]), and falls through when t1(=[ret(__glXAddDrawableInterest)+8]) == at(=[a3+32]).
  The `bne` branch at 0xd8ad7ac targets 0xd8ad7c0, is taken when v1(=[ret(__glXAddDrawableInterest)+12]) != t0(=[a3+48]), and falls through when v1(=[ret(__glXAddDrawableInterest)+12]) == t0(=[a3+48]).
  The `bne` branch at 0xd8ad7b8 targets 0xd8ad7c4, is taken when t1(=[ret(__glXAddDrawableInterest)+44]) != at(=0x3), and falls through when t1(=[ret(__glXAddDrawableInterest)+44]) == at(=0x3).
  The `bne` branch at 0xd8ad7c4 targets 0xd8add90, is taken when s3(=a1) != s6(=a2), and falls through when s3(=a1) == s6(=a2).
  The `beq` branch at 0xd8ad7cc targets 0xd8ad7ec and is always taken.
  The `bne` branch at 0xd8ad7d4 targets 0xd8ad7e4, is taken when s0(=a3) != 0, and falls through when s0(=a3) == 0.
  The `beq` branch at 0xd8ad7dc targets 0xd8adc44, is taken when s3(=a1) == 0, and falls through when s3(=a1) != 0.
  The `beq` branch at 0xd8ad7f0 targets 0xd8adab8, is taken when v0(=[[[0x1014]+276]+196]) == 0, and falls through when v0(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd8ad7f8 targets 0xd8ad5dc, is taken when s7(=one of 0x0, 0x1) == 0, and falls through when s7(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd8ad800 targets 0xd8adac4, is taken when v0(=[[[0x1014]+276]+196]) == 0, and falls through when v0(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd8ad80c targets 0xd8ad82c, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0xd8ad818 targets 0xd8addcc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8ad824 targets 0xd8addcc, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xd8ad82c targets 0xd8ad840, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `bne` branch at 0xd8ad838 targets 0xd8ad9d0, is taken when t1(=[a3+29]:1) != 0, and falls through when t1(=[a3+29]:1) == 0.
  The `bne` branch at 0xd8ad840 targets 0xd8ad9cc, is taken when s3(=a1) != s6(=a2), and falls through when s3(=a1) == s6(=a2).
  The `bne` branch at 0xd8ad86c targets 0xd8ad8a4, is taken when at(?) != v1(=sym(_XAsyncErrorHandler)), and falls through when at(?) == v1(=sym(_XAsyncErrorHandler)).
  The `beq` branch at 0xd8ad87c targets 0xd8ad88c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xd8ad884 targets 0xd8adef8, is taken when t1(=0x3) == at(?), and falls through when t1(=0x3) != at(?).
  The `bne` branch at 0xd8ad894 targets 0xd8adbf0, is taken when v1(=[a0+1224]) != t0(=sp-336), and falls through when v1(=[a0+1224]) == t0(=sp-336).
  The `bne` branch at 0xd8ad8ac targets 0xd8ad948, is taken when at(?) != v1(=sym(_XAsyncErrorHandler)), and falls through when at(?) == v1(=sym(_XAsyncErrorHandler)).
  The `beq` branch at 0xd8ad8b4 targets 0xd8ad8c4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xd8ad8bc targets 0xd8adf00, is taken when t1(=0x3) == at(?), and falls through when t1(=0x3) != at(?).
  The `bne` branch at 0xd8ad8cc targets 0xd8ad930, is taken when v1(=[a0+1224]) != t0(=sp-320), and falls through when v1(=[a0+1224]) == t0(=sp-320).
  The `bne` branch at 0xd8ad8d4 targets 0xd8ad950, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xd8ad948 targets 0xd8ad8e0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd8ad950 targets 0xd8ad964, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xd8ad95c targets 0xd8adcf8, is taken when at(=[a3+196]) == 0, and falls through when at(=[a3+196]) != 0.
  The `beq` branch at 0xd8ad964 targets 0xd8ad978, is taken when s0(=a3) == s1(=[[0x1014]+276]), and falls through when s0(=a3) != s1(=[[0x1014]+276]).
  The `beq` branch at 0xd8ad96c targets 0xd8ad978, is taken when v1(?) == s1(=[[0x1014]+276]), and falls through when v1(?) != s1(=[[0x1014]+276]).
  The `beq` branch at 0xd8ad978 targets 0xd8ad668, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0xd8ad984 targets 0xd8ad5d0, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xd8ad994 targets 0xd8ad584, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xd8ad9a0 targets 0xd8ad584, is taken when at(=[a3+29]:1) == 0, and falls through when at(=[a3+29]:1) != 0.
  The `beq` branch at 0xd8ad9c4 targets 0xd8ad58c and is always taken.
  The `beq` branch at 0xd8ada00 targets 0xd8ad868 and is always taken.
  The `bne` branch at 0xd8ada14 targets 0xd8ad6e8, is taken when at(=[0x1048]) != 0, and falls through when at(=[0x1048]) == 0.
  The `bgtz` branch at 0xd8ada34 targets 0xd8ada20, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The `beq` branch at 0xd8ada3c targets 0xd8ad6e8 and is always taken.
  The `beq` branch at 0xd8ada58 targets 0xd8ae070, is taken when a3(=[a3+20]) == 0, and falls through when a3(=[a3+20]) != 0.
  The `beq` branch at 0xd8ada68 targets 0xd8ada88, is taken when a1(=[a3+208]) == 0, and falls through when a1(=[a3+208]) != 0.
  The `bne` branch at 0xd8ada70 targets 0xd8adf6c, is taken when a1(=[a3+208]) != a0(=[[0x1014]+268]), and falls through when a1(=[a3+208]) == a0(=[[0x1014]+268]).
  The `bne` branch at 0xd8ada80 targets 0xd8adf6c, is taken when at(=[a3+212]) != v1(=[[0x1014]+272]), and falls through when at(=[a3+212]) == v1(=[[0x1014]+272]).
  The `beq` branch at 0xd8ada94 targets 0xd8ad6f8 and is always taken.
  The `beq` branch at 0xd8adaa4 targets 0xd8ad754 and is always taken.
  The `beq` branch at 0xd8adab0 targets 0xd8ad760 and is always taken.
  The `beq` branch at 0xd8adabc targets 0xd8ad7f8 and is always taken.
  The `beq` branch at 0xd8adac4 targets 0xd8ad808, is taken when at(?) == s1(=[[0x1014]+276]), and falls through when at(?) != s1(=[[0x1014]+276]).
  The `beq` branch at 0xd8adad0 targets 0xd8ad808, is taken when a0(=[[[0x1014]+276]+216]) == s5(=a0), and falls through when a0(=[[[0x1014]+276]+216]) != s5(=a0).
  The `beq` branch at 0xd8adaf0 targets 0xd8ae2f0, is taken when v0(=ret(0xd8ad114)) == 0, and falls through when v0(=ret(0xd8ad114)) != 0.
  The `beq` branch at 0xd8adaf8 targets 0xd8ad808 and is always taken.
  The `beq` branch at 0xd8adb38 targets 0xd8adb94, is taken when s0(=a3) == s1(=[[0x1014]+276]), and falls through when s0(=a3) != s1(=[[0x1014]+276]).
  The `beq` branch at 0xd8adb40 targets 0xd8adb98, is taken when v1(?) == s1(=[[0x1014]+276]), and falls through when v1(?) != s1(=[[0x1014]+276]).
  The `beq` branch at 0xd8adb70 targets 0xd8ae114, is taken when t0(=[[[0x1014]+276]+20]) == 0, and falls through when t0(=[[[0x1014]+276]+20]) != 0.
  The `beq` branch at 0xd8adb98 targets 0xd8adbb8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xd8adbb0 targets 0xd8adf08, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0xd8adc04 targets 0xd8ad8a0 and is always taken.
  The `bne` branch at 0xd8adc14 targets 0xd8ad6e4, is taken when at(=[0x1048]) != 0, and falls through when at(=[0x1048]) == 0.
  The `bgtz` branch at 0xd8adc34 targets 0xd8adc20, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The `beq` branch at 0xd8adc3c targets 0xd8ad6e8 and is always taken.
  The `beq` branch at 0xd8adc44 targets 0xd8ad7e8, is taken when s6(=a2) == 0, and falls through when s6(=a2) != 0.
  The `beq` branch at 0xd8adc4c targets 0xd8ad7e8 and is always taken.
  The `bnel` branch at 0xd8adc60 targets 0xd8ad6d4, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0; its branch-likely delay slot `lbu at,244(s0)` at 0xd8adc64 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8adcf8 targets 0xd8ad964 and is always taken.
  The `beq` branch at 0xd8add4c targets 0xd8add64, is taken when t0(=[a3+284]) >= 0x2 (signed), and falls through when t0(=[a3+284]) < 0x2 (signed).
  The `bne` branch at 0xd8add5c targets 0xd8ad5dc, is taken when t1(=[a3+288]) < 0x3 (signed), and falls through when t1(=[a3+288]) >= 0x3 (signed).
  The `bne` branch at 0xd8add6c targets 0xd8ad5dc, is taken when at(?) != v1(=0x6), and falls through when at(?) == v1(=0x6).
  The `beq` branch at 0xd8add88 targets 0xd8ad5dc and is always taken.
  The `beq` branch at 0xd8add9c targets 0xd8ae21c, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `bne` branch at 0xd8addac targets 0xd8addc0, is taken when t0(=[ret(__glXAddDrawableInterest)+8]) != t1(=[a3+32]), and falls through when t0(=[ret(__glXAddDrawableInterest)+8]) == t1(=[a3+32]).
  The `bne` branch at 0xd8addb8 targets 0xd8ad7e8, is taken when at(=[ret(__glXAddDrawableInterest)+16]) != 0, and falls through when at(=[ret(__glXAddDrawableInterest)+16]) == 0.
  The `beq` branch at 0xd8addc0 targets 0xd8ad7e8 and is always taken.
  The `beq` branch at 0xd8adddc targets 0xd8ad82c, is taken when v0(=ret(XSGIMiscQueryExtension)) == 0, and falls through when v0(=ret(XSGIMiscQueryExtension)) != 0.
  The `beq` branch at 0xd8adde8 targets 0xd8ae1b8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8addf0 targets 0xd8ad82c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xd8addfc targets 0xd8ad82c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xd8ade5c targets 0xd8ad82c and is always taken.
  The `bne` branch at 0xd8ade70 targets 0xd8ad668, is taken when v1(?) < t0(?) (signed), and falls through when v1(?) >= t0(?) (signed).
  The `bne` branch at 0xd8ade84 targets 0xd8ad668, is taken when t1(?) < at(?) (signed), and falls through when t1(?) >= at(?) (signed).
  The `beq` branch at 0xd8adef8 targets 0xd8ad88c and is always taken.
  The `beq` branch at 0xd8adf00 targets 0xd8ad8c4 and is always taken.
  The `beq` branch at 0xd8adf10 targets 0xd8adbbc and is always taken.
  The `beq` branch at 0xd8adf60 targets 0xd8ad6e4 and is always taken.
  The `beq` branch at 0xd8adfd0 targets 0xd8adfec, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xd8adfd8 targets 0xd8adfec, is taken when s0(=a3) == s1(=[[0x1014]+276]), and falls through when s0(=a3) != s1(=[[0x1014]+276]).
  The `beq` branch at 0xd8ae068 targets 0xd8ad5d4 and is always taken.
  The `beq` branch at 0xd8ae120 targets 0xd8adb98 and is always taken.
  The `beq` branch at 0xd8ae214 targets 0xd8addf0 and is always taken.
  The return at 0xd8ad928 has v0 = 0x0.
  The return at 0xd8adb30 has v0 = 0x1.
  The return at 0xd8adbe8 has v0 = 0x1.
  The return at 0xd8adcf0 has v0 = 0x0.
  The return at 0xd8adef0 has v0 = 0x0.
  The return at 0xd8adfac has v0 = 0x0.
  The return at 0xd8ae018 has v0 = 0x0.
  The return at 0xd8ae04c has v0 = 0x0.
  The return at 0xd8ae0a0 has v0 = 0x0.
  The return at 0xd8ae10c has v0 = 0x0.
  The return at 0xd8ae1b0 has v0 = 0x0.
  The return at 0xd8ae280 has v0 = 0x0.
  The return at 0xd8ae2e8 has v0 = 0x0.
  The return at 0xd8ae33c has v0 = 0x0.
  The instructions from 0xd8addc8 to 0xd8addc8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8adf68 to 0xd8adf68 are not reached by any path from the entry, and their branches are not listed.

- `glXMakeContextCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ae3b4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ae3b4-0xd8ae3e8 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd8ae3d0 calls __glXMakeContextCurrent with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0.
  The return at 0xd8ae3e0 has v0 = ret(__glXMakeContextCurrent).

- `glXGetCurrentReadDrawable` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ae3f8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ae3f8-0xd8ae408 (16 bytes).
  It occupies 16 bytes.
  The `lw` at 0xd8ae3f8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8ae3fc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8ae404 loads 4 bytes from [[0x1014]+276] +0xdc.
  The return at 0xd8ae400 has v0 = [[[0x1014]+276]+220].

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

- `glXSelectEventSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b2728
  **Inferred.** A short request routine. It calls `__glXSetupForCommand` at 0xd8b2750, makes three calls whose callee the facts do not resolve, and calls `_XFlush` at 0xd8b2838. It returns either `__glXSetupForCommand`'s result (0xd8b2850) or an unresolved value (0xd8b2830). Role (from name): selecting events for a drawable; the mask the routine passes is not established.
  Reviewed: 2026-11-12

- `__glXGetDrawableAttributes` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b29c8 (n32).
  Inferred: this sends one request to the X server and unpacks the reply into the 0x1c-byte block at
  entry a2, because it appends a small request record at the display's output pointer, calls `_XReply`,
  reads a counted list of 8-byte key and value pairs with `_XRead` into a `malloc` buffer, and sets
  fields of a2 from the pairs. The `jalr` at 0xd8b29f8 calls `__glXSetupForCommand`; a zero low byte in
  its return gives a return of 0 at 0xd8b2d90 (`beq` at 0xd8b2a0c). With entry a3 non-zero (`beq` at
  0xd8b2a14 falls through) the routine calls the first function pointer of the table at a0+0x4d0, when
  that word is non-zero, with a0 set to the display (`jalr` at 0xd8b2a28). It then checks room for 0x10
  bytes (`bne` at 0xd8b2a40 calls `_XFlush`, `jalr` at 0xd8b2c0c, when the word at +0x70 is below the
  word at +0x6c plus 0x10) and writes the 0x10-byte record at the word at +0x6c: byte 0x10 at +0x0
  (`sb` at 0xd8b2a5c), byte 0x11 at +0x1, halfword 4 at +0x2, word 0x1000a at +0x4 and entry a1 at +0xc.
  The `sb` at 0xd8b2aa8, in the delay slot of the `_XReply` call, then replaces byte +0x0 with the low
  byte of the `__glXSetupForCommand` return. The same word at +0x6c is saved at +0x64 (`sw` at
  0xd8b2a4c), +0x60 is incremented by one (`sw` at 0xd8b2a70) and +0x6c is advanced by 0x10 (`sw` at
  0xd8b2a78). `_XReply` is called with the display, the buffer sp+0x0, 0 and 0 (`jalr` at 0xd8b2aa4); a
  zero reply runs the optional cleanup calls (word at +0x4 of the +0x4d0 table, then the function
  pointer at +0x7c) and returns 0 (`beq` at 0xd8b2aac). With a3 zero the routine instead writes an
  8-byte record: byte 0x1d at +0x0 and +0x1, halfword 2 at +0x2, entry a1 at +0x4, advancing +0x6c by
  8 (`sw` at 0xd8b2b84), and calls `_XReply` with the buffer sp+0x20 (`jalr` at 0xd8b2ba0); the +0x0
  byte is again replaced by the setup return's low byte (`sb` at 0xd8b2ba4). The count is the word at
  offset 8 of the `_XReply` buffer (`lw` at 0xd8b2ab8, or at 0xd8b2bb4 which reads the word at +0x28 =
  buffer sp+0x20 plus 8); zero runs the cleanup calls and returns 0. Otherwise `malloc` gets the count
  shifted left by 3 (`jalr` at 0xd8b2ac8; null runs the cleanup calls and returns 0), `_XRead` reads
  that many bytes into the buffer (`jalr` at 0xd8b2c28), `memset` clears 0x1c bytes at a2 (`jalr` at
  0xd8b2c3c), and a loop runs once per pair while the counter differs from the count (`beq` at
  0xd8b2c68). Each pair's first word minus 0x800c, if below 0x1a (`beq` at 0xd8b2c94), indexes the jump
  table at 0xd8e0760 (`jr` at 0xd8b2ca0); other keys are skipped. Six of the table's targets store the
  pair's second word (loaded at 0xd8b2c90) to a2 as a word: at +0x4 (`sw` at 0xd8b2cac), +0x0
  (0xd8b2cb4), +0x8 (0xd8b2cc4), +0xc (0xd8b2ccc), +0x10 (0xd8b2cd4) and +0x18 (0xd8b2cdc), and two
  store its low byte, to +0x14 (`sb` at 0xd8b2cbc) and +0x15 (`sb` at 0xd8b2c5c).
  After the loop
  the cleanup calls run, `free` releases the buffer (`jalr` at 0xd8b2d10) and the return is 1 (0xd8b2d2c).
  Unknown: which attribute each key selects, since the bundle has no strings or datasheet excerpt for
  the keys; the server-side request handler would settle it.
  Evidence grade: inferred.

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
  The `jalr` at 0xd8b2d10 calls free with a0=?, a1=?, a2=?, a3=?.
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
  The `beq` branch at 0xd8b2c94 targets 0xd8b2c68, is taken when a1(=table(-0x800c)) >= 0x1a (unsigned), and falls through when a1(=table(-0x800c)) < 0x1a (unsigned).
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

- `glXDestroyGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b2df4
  **Inferred.** It calls `__glXSetupForCommand` at 0xd8b2e1c. Only when that result is nonzero does it call `__glXAddDrawableInterest` (0xd8b2e40, a1 of the routine as its argument), then `__glXRemoveDrawableInterest` (0xd8b2e50) on the Add result. It calls `__glXFreeDrawablePrivate` at 0xd8b2e64 only when the word at +20 of the Add result is nonzero. It calls `_XFlush` at 0xd8b2f3c when the buffer lacks room, and otherwise returns after unresolved calls. Role (from name): destroying a pbuffer; the interest add and remove pair is not shown to be a reference count.
  Reviewed: 2026-11-12

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
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8b3918, `sw` at 0xd8b3920, `sw` at 0xd8b3928.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8b396c, `lw` at 0xd8b39f8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8b3978, `lw` at 0xd8b3a04.
  The `jalr` at 0xd8b3730 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8b374c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b3760 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?, a6=ret(?).
  The `jalr` at 0xd8b3800 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd8b3954 calls _XReply with a0=a0 at entry (arg0), a1=sp-176, a2=0x0, a3=0x0.
  The `jalr` at 0xd8b3970 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd8b3984 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b3990 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b39dc calls _XFlush with a0=a0 at entry (arg0), a1=[a0+108], a2=?, a3=?.
  The `jalr` at 0xd8b39fc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd8b3a10 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b3a28 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=sp-176, a2=0x11, a3=0x0.
  The `jalr` at 0xd8b3a34 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b3a48 calls __glXFreeDrawablePrivate with a0=?, a1=?, a2=?, a3=?.
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
  The return at 0xd8b39b0 has v0 = ?.
  The return at 0xd8b39d0 has v0 = 0x0.
  The return at 0xd8b3a68 has v0 = 0x0.
  The return at 0xd8b3aa0 has v0 = 0x0.

- `glXCreateGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b36f4
  Evidence grade: inferred.
  `glXCreateGLXPbufferSGIX` registers the new drawable with `__glXAddDrawableInterest` and sends a create request that is answered through `_XReply`. Its error exits call `__glXPostError` or `__glXPostHiddenError`, and the cleanup calls `__glXRemoveDrawableInterest` and `__glXFreeDrawablePrivate`. The callee list does not show which branch leads to which exit, so the success and failure order is inferred.
  Reviewed: 2026-11-12

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

- `glXGetVideoSyncSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b3aa8
  **Inferred.** It loads the word at +0x114 of the pointer stored at absolute 0x1014 and returns 0x5 (0xd8b3b2c) when that word, or the word at +0xc4 of it, is zero. Otherwise it loads at +0xcc, makes one `ioctl` with request 0x3fe at 0xd8b3b00 (a0 taken from a table off the 0x1014 pointer, a4 the +0x114 word), stores a word at +0x0 of a base register the facts do not show at 0xd8b3b10, and returns 0x0. The meaning of 5 is not established.
  Reviewed: 2026-11-12

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

- `glXWaitVideoSyncSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b3b34
  Evidence grade: inferred.
  `glXWaitVideoSyncSGI` uses the same 0x1014 pointer chain as the get routine at 0xd8b3aa8. It issues `ioctl` with request 0x3ff (at 0xd8b3bd4) and returns 0, 5 or 6 on different paths. The request number is one above the get request, which hints at a paired wait and get, but that rests only on the numbers.
  Reviewed: 2026-11-12

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

- `glXDestroyGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b3bfc
  **Inferred.** The same call shape as `glXDestroyGLXPbufferSGIX` at 0xd8b2df4. It calls `__glXSetupForCommand` at 0xd8b3c24. Only when that result is nonzero and a1 is nonzero does it call `__glXAddDrawableInterest` (0xd8b3c44, a0 = a1), `__glXRemoveDrawableInterest` (0xd8b3c54) and `__glXFreeDrawablePrivate` (0xd8b3c60) with the Add result, with no branch between them. It then builds a request, calls `_XFlush` at 0xd8b3d40 when the buffer lacks room, and returns the `__glXSetupForCommand` result on the skipped path (0xd8b3d38). No release of a video-source private object is among the calls.
  Reviewed: 2026-11-12

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
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8b3f7c, `sw` at 0xd8b3f94, `sw` at 0xd8b3fc0.
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
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8b4084, `lw` at 0xd8b408c, `lw` at 0xd8b4094.
  The `sw` at 0xd8b4088 stores 4 bytes to [a0+108] +0x18.
  The `sw` at 0xd8b4090 stores 4 bytes to [a0+108] +0x1c.
  The `sw` at 0xd8b4098 stores 4 bytes to [a0+108] +0x20.
  The `sw` at 0xd8b40a0 stores 4 bytes to [a0+108] +0x24.
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
  The `bgezall` at 0xd8b3fdc calls videoPackingToInternalFormat [0xd8b3d50] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b4000 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?, a7=a0 at entry (arg0).
  The `jalr` at 0xd8b40bc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8b40d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b40e0 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8b411c calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?, a6=ret(__glXCreateVideoSourcePrivate).
  The `jalr` at 0xd8b4140 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0xd8b4158 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=a5 at entry (arg5), a3=?.
  The `jalr` at 0xd8b417c calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=a5 at entry (arg5), a3=?.
  The `jalr` at 0xd8b41a0 calls __glXRemoveDrawableInterest with a0=?, a1=?, a2=?, a3=?.
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
  The return at 0xd8b40f8 has v0 = ?.
  The return at 0xd8b4110 has v0 = 0x0.
  The return at 0xd8b4134 has v0 = 0x0.
  The return at 0xd8b4170 has v0 = 0x0.
  The return at 0xd8b4194 has v0 = 0x0.
  The return at 0xd8b41b8 has v0 = 0x0.
  The instructions from 0xd8b3e90 to 0xd8b3e90 are not reached by any path from the entry, and their branches are not listed.

- `glXCreateGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b3e14
  Evidence grade: inferred.
  `glXCreateGLXVideoSourceSGIX` calls `__glXInitializeVideoLibrary` and `__glXCreateVideoSourcePrivate` to build the source. It maps a packing format through `videoPackingToInternalFormat` and sends its request after `__glXSetupForCommand`. The exact fields and the error results are not decoded.
  Reviewed: 2026-11-12

- `glXSwapIntervalSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b42f8 (n32).
  Inferred: the table at abs 0x1014 is the one the callee note for `__glXSetupForCommand` names as the source of the display's current context, and the linked ioctl row gives request 0x3ee (1006) the resource-manager handler `RRM_SetSwapInterval`, so the routine works on a swap-interval request.
  It returns 5 when the entry at +0x114 of that table is zero (`beq` at 0xd8b431c), returns 6 when arg0 is zero or negative (`blez` at 0xd8b4324), and when the word at +0xc4 of the entry is not zero it calls ioctl with request 0x3ee (`jalr` at 0xd8b4364) and returns 0 (`jr ra` at 0xd8b437c).
  That ioctl call takes arg0 from the word at +0x4 of the table slot selected by the word at +0x108 of the table, and passes the frame at sp-80, which holds the word at +0xcc of the entry and arg0 (`sw` at 0xd8b4340 and 0xd8b433c).
  Otherwise, when the context pointer at +0xd8 of the entry is zero it returns 5 (`bne` at 0xd8b438c); when it is not zero it calls `__glXSetupForCommand` with that context, arg1, the word at +0x3c of the entry and arg3 (`jalr` at 0xd8b43b8), and masks the return to its low 8 bits (`andi` at 0xd8b43c8).
  If the word at +0x4d0 of the context is not zero, it calls through the word at offset 0 of that object (`jalr` at 0xd8b43d4); then, when the word at +0x70 is below the word at +0x6c plus 0x10 (unsigned), it calls `_XFlush` on the context first (`jalr` at 0xd8b44a8).
  The record at the pointer R held at +0x6c gets 0x10 at +0x0 (`sb` at 0xd8b4400), 4 at +0x2 (`sh` at 0xd8b4408), arg0 at +0xc (`sw` at 0xd8b4428), the word from +0x3c of the entry at +0x8 (`sw` at 0xd8b442c), 0x10000 at +0x4 (`sw` at 0xd8b4434) and 0x10 at +0x1 (`sb` at 0xd8b443c), and R is saved to +0x64 of the context (`sw` at 0xd8b43f8); the byte at +0x0 is then written with the low 8 bits of the setup return (`sb` at 0xd8b4438), and the context's +0x60 gets 1 added (`sw` at 0xd8b441c) and its +0x6c gets 0x10 added (`sw` at 0xd8b4424).
  If the word at +0x4d0 of the context is not zero, it calls through the word at +4 of that object with a1 0x10000 and a2 R (`jalr` at 0xd8b4450); then, if the word at +0x7c is not zero, it calls through that word (`jalr` at 0xd8b4464), and on every path that reaches the record it calls `XFlush` on the context (`jalr` at 0xd8b4470) and returns 0 (`jr ra` at 0xd8b448c).
  The byte stored at +0x0 by the `sb` at 0xd8b4438 is the same masked setup return on every path: it is saved to the frame by the `sd` at 0xd8b43d0 or 0xd8b44a4 and reloaded at 0xd8b43dc or 0xd8b44b8.
  At the call through +0x7c (`jalr` at 0xd8b4464), a1 is 0x10000 and a2 is R when the pointer at +0x4d0 is zero; when it is not zero they are whatever the call at 0xd8b4450 left.
  Unknown: which request fields the words 0x10000 and 0x10 fill in the record, since the linked ioctl row belongs to the other call and no field table is linked.
  Evidence grade: inferred.

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

- `__glx_SelectBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8be5ec (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8be5ec-0xd8be72c (320 bytes).
  It occupies 320 bytes.
  The `lw` at 0xd8be5f4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8be5f8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8be5fc loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8be638 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8be63c, `lw` at 0xd8be6b8.
  The `lw` at 0xd8be648 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8be658, `lw` at 0xd8be684, `lw` at 0xd8be710.
  The `lw` at 0xd8be65c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd8be670 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd8be678 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8be67c, `sb` at 0xd8be6a4.
  The `lw` at 0xd8be680 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8be68c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8be694 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd8be698 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd8be6a0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8be6ac loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8be6b0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8be6b4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd8be6c4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd8be6d4 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `sw` at 0xd8be6f4 stores 4 bytes to [[0x1014]+276] +0x48.
  The `jalr` at 0xd8be634 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+216].
  The `jalr` at 0xd8be64c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8be6c8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[[0x1014]+276]+60], a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8be6e0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8be708 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8be610 targets 0xd8be71c, is taken when a3(=[[[0x1014]+276]+216]) == 0, and falls through when a3(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8be620 targets 0xd8be6ec, is taken when a3(=[[[0x1014]+276]+216]) == 0, and falls through when a3(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8be640 targets 0xd8be658, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd8be668 targets 0xd8be708, is taken when at(=[[[[0x1014]+276]+216]+112]) < v0(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when at(=[[[[0x1014]+276]+216]+112]) >= v0(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  The `beq` branch at 0xd8be6bc targets 0xd8be6d4, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd8be6d8 targets 0xd8be6ec, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd8be714 targets 0xd8be670 and is always taken.
  The return at 0xd8be700 has v0 = one of ?, ret(?).
  The return at 0xd8be724 has v0 = ?.

- `__glx_FeedbackBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8be72c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8be72c-0xd8be878 (332 bytes).
  It occupies 332 bytes.
  The `lw` at 0xd8be734 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8be738 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8be73c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8be77c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8be780, `lw` at 0xd8be804.
  The `lw` at 0xd8be78c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8be79c, `lw` at 0xd8be7c8, `lw` at 0xd8be85c.
  The `lw` at 0xd8be7a0 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd8be7b4 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd8be7bc stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8be7c0, `sb` at 0xd8be7ec.
  The `lw` at 0xd8be7c4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8be7d0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8be7d8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd8be7e0 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd8be7e8 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8be7f4 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8be7f8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd8be7fc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8be800 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd8be810 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd8be820 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `sw` at 0xd8be840 stores 4 bytes to [[0x1014]+276] +0x44.
  The `jalr` at 0xd8be778 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[[0x1014]+276]+216].
  The `jalr` at 0xd8be790 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a4=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8be814 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=a0 at entry (arg0), a4=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8be82c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8be854 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8be750 targets 0xd8be868, is taken when a4(=[[[0x1014]+276]+216]) == 0, and falls through when a4(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8be764 targets 0xd8be838, is taken when a4(=[[[0x1014]+276]+216]) == 0, and falls through when a4(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8be784 targets 0xd8be79c, is taken when a4(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a4(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd8be7ac targets 0xd8be854, is taken when at(=[[[[0x1014]+276]+216]+112]) < v0(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when at(=[[[[0x1014]+276]+216]+112]) >= v0(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  The `beq` branch at 0xd8be808 targets 0xd8be820, is taken when a4(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a4(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd8be824 targets 0xd8be838, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd8be860 targets 0xd8be7b4 and is always taken.
  The return at 0xd8be84c has v0 = one of ?, ret(?).
  The return at 0xd8be870 has v0 = ?.

- `__glx_ReadPixels` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c0d3c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8c0d3c-0xd8c0f8c (592 bytes).
  It occupies 592 bytes.
  The `lw` at 0xd8c0d44 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8c0d48 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8c0d4c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8c0da0 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8c0da4, `lw` at 0xd8c0f20.
  The `lw` at 0xd8c0db0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8c0dbc, `lw` at 0xd8c0df4, `lw` at 0xd8c0f78.
  The `lw` at 0xd8c0dc0 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd8c0ddc stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd8c0de4 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8c0de8, `sb` at 0xd8c0e18.
  The `lw` at 0xd8c0df0 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8c0dfc stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8c0e04 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd8c0e0c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd8c0e14 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8c0e20 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8c0e24 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x1c.
  The `sw` at 0xd8c0e28 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x18.
  The `sw` at 0xd8c0e2c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x14.
  The `sw` at 0xd8c0e30 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd8c0e34 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd8c0e38 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8c0e3c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lbu` at 0xd8c0e48 loads 1 byte from [[0x1014]+276] +0x4c.
  The `sb` at 0xd8c0e54 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x21.
  The `sb` at 0xd8c0e60 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x20.
  The `lw` at 0xd8c0ea0 loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd8c0eb4 stores 4 bytes to [[0x1014]+276] +0xb0.
  The `lw` at 0xd8c0f2c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd8c0f3c loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd8c0d9c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8c0db4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c0e5c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-208, a2=0x0, a3=0x0, a4=[[[0x1014]+276]+76]:1, a6=a4 at entry (arg4), a7=a3 at entry (arg3).
  The `jalr` at 0xd8c0e80 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c0e98 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c0ec4 calls _XRead with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd8c0ee4 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c0f08 calls __glXEmptyImage with a0=[[0x1014]+276], a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a5 at entry (arg5).
  The `jalr` at 0xd8c0f14 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c0f30 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c0f48 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c0f6c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8c0d60 targets 0xd8c0f7c, is taken when t1(=[[[0x1014]+276]+216]) == 0, and falls through when t1(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8c0d88 targets 0xd8c0f54, is taken when t1(=[[[0x1014]+276]+216]) == 0, and falls through when t1(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8c0da8 targets 0xd8c0dbc, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd8c0dcc targets 0xd8c0f68, is taken when at(=[[[[0x1014]+276]+216]+112]) < v1(=[[[[0x1014]+276]+216]+108]+36) (unsigned), and falls through when at(=[[[[0x1014]+276]+216]+112]) >= v1(=[[[[0x1014]+276]+216]+108]+36) (unsigned).
  The `beq` branch at 0xd8c0e74 targets 0xd8c0f20, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xd8c0e88 targets 0xd8c0eb8, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bne` branch at 0xd8c0ea4 targets 0xd8c0f20, is taken when a7(=[[[0x1014]+276]+176]) != 0, and falls through when a7(=[[[0x1014]+276]+176]) == 0.
  The `beq` branch at 0xd8c0eb0 targets 0xd8c0f20 and is always taken.
  The `beq` branch at 0xd8c0ed4 targets 0xd8c0eec, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `beq` branch at 0xd8c0f24 targets 0xd8c0f3c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd8c0f40 targets 0xd8c0f54, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd8c0f74 targets 0xd8c0dd0 and is always taken.
  The return at 0xd8c0f60 has v0 = one of a5, ?, ret(?).
  The return at 0xd8c0f84 has v0 = a5.

- `isNotProxy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c1618 (n32).
  This is the same device-probe shape as the o32 copy at 0xd8d2e68: open (0xd8c1650), fcntl (0xd8c1674), two ioctls (0xd8c168c, 0xd8c16e4) and a strchr (0xd8c1708), with close calls at five sites. Nine return sites give 0 or 1. The ioctl requests are 0x65 and 0x66, as in the o32 copy, and their meanings are not in the facts, so this copy confirms the structure but not the purpose.
  Grade: inferred.
  Reviewed: 2026-11-12

- `isNotProxy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c1618
  **Inferred.** It returns 0x0 at 0xd8c1638 when the signed word at `[a0+0x24]` is 0x40 or more. Otherwise it calls `open` at 0xd8c1650 on the string at 0xd8e0538 with flags 0x802, then `fcntl` at 0xd8c1674 (a1 = 2, a2 = 5), `ioctl` with request 0x65 at 0xd8c168c and request 0x66 at 0xd8c16e4, and `close` on several paths. It calls `strchr` once (0xd8c1708) with 0x3a (a colon); a later loop compares bytes against 0x2e (a dot) at 0xd8c1734, with no `strchr` call in that loop. It returns 0x1 only at 0xd8c1780 and 0x0 on every other exit. Role (from name): telling a local display from a proxy; the ioctl meanings are not decoded.
  Reviewed: 2026-11-12

- `isNotProxy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c1618 (n32)
  **Inferred.** Returns 0 at 0xd8c1638 when [a0+36] is at least 0x40 (signed). Otherwise it calls `open` on the string at 0xd8e0538 (call at 0xd8c1650, flags 0x802), returning 0 on a negative result, then `fcntl` at 0xd8c1674 with a1 = 0x2 and a2 = 0x5, then `ioctl` with request 0x65 at 0xd8c168c. A later `ioctl` with request 0x66 and a buffer at sp-112 (0xd8c16e4) follows; each failure path calls `close` and returns 0. It then calls `strchr` with ':' (0x3a) at 0xd8c1708 and compares bytes from the result with 0x2e ('.') and with other values the render leaves unresolved. The path ending at 0xd8c1780 returns 1 and the other returns give 0. Role (from name): the name suggests a not-a-proxy test; the render does not show which test decides the result.
  Reviewed: 2026-11-12

- `CreateContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c18f8 (n32).
  The routine initializes the client library (__glXInitialize, 0xd8c1930) and reads two environment variables with getenv (0xd8c1a28, 0xd8c1fb8). It calls __glXCreateDirectContext (0xd8c1af4) on a calloc'd structure, sets up vertex-array state (__glXInitVertexArrayState, 0xd8c1bb8) and calls __glXFindVisualConfig (0xd8c2008), with __glXOverrideVisualsIdToXid calls at several sites. The last path before the final _XFlush calls fprintf (0xd8c2164) and then exit with status 0 (0xd8c2170). The facts do not say which condition leads there.
  Grade: inferred.
  Reviewed: 2026-11-12

- `CreateContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c18f8
  **Inferred.** It calls `__glXInitialize` at 0xd8c1930 and `calloc` at 0xd8c196c, `getenv` at 0xd8c1a28 and 0xd8c1fb8, and `__glXCreateDirectContext` at 0xd8c1af4 (its result is tested against zero at 0xd8c1afc). It calls `malloc` at 0xd8c1b1c, `__glXInitVertexArrayState` at 0xd8c1bb8, `__glXFindFBConfigFromVid` at 0xd8c1c54, `__glXFindVisualConfig` at 0xd8c2008, `isLocal` at 0xd8c1f6c and `XMaxRequestSize` at 0xd8c1fec. `fprintf` (0xd8c2164) is followed by `exit` (0xd8c2170); the facts do not show which condition reaches them. Which condition selects the direct path is not decoded.
  Reviewed: 2026-11-12

- `GetBoardName` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c3ef0 (n32).
  Reads a word from a table entry chosen by a1 and, when that word is below 0x40, opens
  `/dev/opengl`, issues one ioctl, and copies a string from the ioctl's buffer to the caller's buffer
  at a2. The table pointer is the word loaded from a0+0x20 (`lw` at 0xd8c3ef0) and the entry is that
  pointer plus a1 times 32 (`lw` at 0xd8c3f00); the `bne` at 0xd8c3f10 jumps to the open when the
  entry word is below 0x40 (signed), and the fall-through returns 0 at 0xd8c3f18. The open at
  0xd8c3f30 takes `/dev/opengl` (string at 0xd8e0538) with flags 0x802 and leaves the caller's a2 as its
  third argument; a negative result (`bltz` at 0xd8c3f40) returns 0 at
  0xd8c3fb8. The ioctl at 0xd8c3f6c takes that descriptor, request 0x66 and the three-word block at
  sp+0x0 as its argument: the table entry word (`sw` at 0xd8c3f70), the pointer sp+0x10 (`sw` at
  0xd8c3f58) and the length 0x28 (`sw` at 0xd8c3f4c). Inferred: the linked ioctl row labels request 0x66 as
  `graphics init`, so this call is taken to be that request. A negative ioctl result (`bltz` at
  0xd8c3f74) closes the descriptor at 0xd8c3fc4 and returns 0 at 0xd8c3fd4; otherwise `strlen` runs
  on the buffer (`jalr` at 0xd8c3f7c), `strncpy` copies that many bytes to a2 (`jalr` at 0xd8c3f90),
  the descriptor is closed at 0xd8c3f9c without testing the result, and the return at 0xd8c3fac
  gives 1. Unknown: the content of the string that request 0x66 leaves in the buffer at sp+0x10, and
  whether it always ends inside the space given by 0x28, since `strlen` at 0xd8c3f7c has no bound in
  the bundle; the kernel-side handler of request 0x66 or a capture of its output would settle it.
  Unknown: the fields of the table entries other than the word at +0, and the state that the 0x40
  threshold tests; the bundle has no table contents or caller, so the code that fills the table
  would settle it.
  Evidence grade: inferred.

- `glXGetCurrentDisplay` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c554c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8c554c-0xd8c556c (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0xd8c554c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8c5550 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8c5568 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `bne` branch at 0xd8c5554 targets 0xd8c5564, is taken when a2(=[[0x1014]+276]) != 0, and falls through when a2(=[[0x1014]+276]) == 0.
  The return at 0xd8c555c has v0 = 0x0.
  The return at 0xd8c5564 has v0 = [[[0x1014]+276]+216].

- `glXGetFBConfigAttrib` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c5be4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8c5be4-0xd8c6210 (1580 bytes).
  It occupies 1580 bytes.
  The `lw` at 0xd8c5c4c loads 4 bytes from a1 (arg1 at entry) +0x94.
  45 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xd8c5c58, `sw` at 0xd8c5ca8, `sw` at 0xd8c5ce8.
  The `lw` at 0xd8c5c9c loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0xd8c5ce4 loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lw` at 0xd8c5d34 loads 4 bytes from a1 (arg1 at entry) +0x40.
  The `lw` at 0xd8c5d68 loads 4 bytes from a1 (arg1 at entry) +0x98.
  The `lw` at 0xd8c5d78 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lw` at 0xd8c5da8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x20, including `lw` at 0xd8c5de4, `lw` at 0xd8c5ffc.
  The `lbu` at 0xd8c5df8 loads 1 byte from a1 (arg1 at entry) +0xa0.
  2 such `ldc1` accesses load 8 bytes from a1 (arg1 at entry) +0xa8, including `ldc1` at 0xd8c5e00, `ldc1` at 0xd8c6124.
  The `lw` at 0xd8c5e3c loads 4 bytes from a1 (arg1 at entry) +0x9c.
  The `lw` at 0xd8c5e4c loads 4 bytes from a1 (arg1 at entry) +0x54.
  The `ldc1` at 0xd8c5e88 loads 8 bytes from a1 (arg1 at entry) +0xc8.
  The `lw` at 0xd8c5eb4 loads 4 bytes from a1 (arg1 at entry) +0x78.
  The `lw` at 0xd8c5ed8 loads 4 bytes from a1 (arg1 at entry) +0x5c.
  The `lw` at 0xd8c5f00 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0xd8c5f24 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0xd8c5f4c loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lw` at 0xd8c5f5c loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `ldc1` at 0xd8c5f84 loads 8 bytes from a1 (arg1 at entry) +0xb0.
  The `lbu` at 0xd8c5fa8 loads 1 byte from a1 (arg1 at entry) +0x4f.
  The `lw` at 0xd8c5fc4 loads 4 bytes from a1 (arg1 at entry) +0x74.
  The `lw` at 0xd8c5fe0 loads 4 bytes from a1 (arg1 at entry) +0x58.
  The `lw` at 0xd8c600c loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `lw` at 0xd8c601c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `ldc1` at 0xd8c6044 loads 8 bytes from a1 (arg1 at entry) +0xe0.
  The `lw` at 0xd8c6068 loads 4 bytes from a1 (arg1 at entry) +0x64.
  The `lw` at 0xd8c6084 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0xd8c60a0 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lw` at 0xd8c60bc loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lw` at 0xd8c60d8 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lbu` at 0xd8c60e8 loads 1 byte from a1 (arg1 at entry) +0x4e.
  The `lw` at 0xd8c6104 loads 4 bytes from a1 (arg1 at entry) +0x3c.
  The `ldc1` at 0xd8c6128 loads 8 bytes from a1 (arg1 at entry) +0xd0.
  The `lw` at 0xd8c6140 loads 4 bytes from a1 (arg1 at entry) +0x7c.
  The `lw` at 0xd8c6150 loads 4 bytes from a1 (arg1 at entry) +0x60.
  The `lw` at 0xd8c6160 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `ldc1` at 0xd8c617c loads 8 bytes from a1 (arg1 at entry) +0xc0.
  The `ldc1` at 0xd8c61a0 loads 8 bytes from a1 (arg1 at entry) +0xd8.
  The `lw` at 0xd8c61b8 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xd8c61c8 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `ldc1` at 0xd8c61d8 loads 8 bytes from a1 (arg1 at entry) +0xb8.
  The `lw` at 0xd8c61f0 loads 4 bytes from a1 (arg1 at entry) +0x90.
  The `lw` at 0xd8c6200 loads 4 bytes from a1 (arg1 at entry) +0x6c.
  The `bne` branch at 0xd8c5bf4 targets 0xd8c5c5c, is taken when a2 < 0x28 (signed), and falls through when a2 >= 0x28 (signed).
  The `bne` branch at 0xd8c5bfc targets 0xd8c5d78, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xd8c5c04 targets 0xd8c5cf4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xd8c5c0c targets 0xd8c5df8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xd8c5c18 targets 0xd8c5e5c, is taken when a2 < a4(=0x802e) (signed), and falls through when a2 >= a4(=0x802e) (signed).
  The `beq` branch at 0xd8c5c20 targets 0xd8c6128, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xd8c5c30 targets 0xd8c602c, is taken when a2 < a4(=0x186a0) (signed), and falls through when a2 >= a4(=0x186a0) (signed).
  The `beq` branch at 0xd8c5c38 targets 0xd8c61f0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd8c5c44 targets 0xd8c5e24, is taken when a2 != v0(=0x186a1), and falls through when a2 == v0(=0x186a1).
  The `bne` branch at 0xd8c5c5c targets 0xd8c5cac, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xd8c5c64 targets 0xd8c5e4c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xd8c5c70 targets 0xd8c5d88, is taken when a2 < 0x23 (signed), and falls through when a2 >= 0x23 (signed).
  The `bne` branch at 0xd8c5c7c targets 0xd8c601c, is taken when a2 < 0x24 (signed), and falls through when a2 >= 0x24 (signed).
  The `bne` branch at 0xd8c5c84 targets 0xd8c5f10, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xd8c5c8c targets 0xd8c61b8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xd8c5c94 targets 0xd8c5e24, is taken when a2 != v0(=0x27), and falls through when a2 == v0(=0x27).
  The `bne` branch at 0xd8c5cb0 targets 0xd8c5d44, is taken when a2 < 0x8 (signed), and falls through when a2 >= 0x8 (signed).
  The `bne` branch at 0xd8c5cbc targets 0xd8c5f5c, is taken when a2 < 0x9 (signed), and falls through when a2 >= 0x9 (signed).
  The `bne` branch at 0xd8c5cc4 targets 0xd8c5ea0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xd8c5ccc targets 0xd8c6140, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xd8c5cd4 targets 0xd8c605c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xd8c5cdc targets 0xd8c5e24, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd8c5d00 targets 0xd8c5db8, is taken when a2 < a4(=0x8013) (signed), and falls through when a2 >= a4(=0x8013) (signed).
  The `beq` branch at 0xd8c5d08 targets 0xd8c600c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xd8c5d10 targets 0xd8c5f34, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8c5d18 targets 0xd8c61c8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xd8c5d24 targets 0xd8c60f8, is taken when a2 < a4(=0x801a) (signed), and falls through when a2 >= a4(=0x801a) (signed).
  The `bne` branch at 0xd8c5d2c targets 0xd8c5e24, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xd8c5d44 targets 0xd8c5e2c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xd8c5d50 targets 0xd8c60e8, is taken when a2 < 0x6 (signed), and falls through when a2 >= 0x6 (signed).
  The `bne` branch at 0xd8c5d58 targets 0xd8c5f9c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xd8c5d60 targets 0xd8c5e24, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xd8c5d88 targets 0xd8c5ec4, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xd8c5d90 targets 0xd8c6150, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xd8c5d98 targets 0xd8c6078, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xd8c5da0 targets 0xd8c5e24, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xd8c5dc0 targets 0xd8c5ee8, is taken when a2 < a4(=0x8010) (signed), and falls through when a2 >= a4(=0x8010) (signed).
  The `beq` branch at 0xd8c5dc8 targets 0xd8c6160, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xd8c5dd4 targets 0xd8c60b0, is taken when a2 < a4(=0x8012) (signed), and falls through when a2 >= a4(=0x8012) (signed).
  The `bne` branch at 0xd8c5ddc targets 0xd8c5e24, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xd8c5e1c targets 0xd8c6200, is taken when a2 == v1(=0x2), and falls through when a2 != v1(=0x2).
  The `bne` branch at 0xd8c5e2c targets 0xd8c5e18, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xd8c5e34 targets 0xd8c5e24, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd8c5e64 targets 0xd8c5f6c, is taken when a2 < a4(=0x802b) (signed), and falls through when a2 >= a4(=0x802b) (signed).
  The `beq` branch at 0xd8c5e6c targets 0xd8c61d8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd8c5e78 targets 0xd8c6170, is taken when a2 < a4(=0x802d) (signed), and falls through when a2 >= a4(=0x802d) (signed).
  The `bne` branch at 0xd8c5e80 targets 0xd8c5e24, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xd8c5ea4 targets 0xd8c5fb8, is taken when a2 < 0xa (signed), and falls through when a2 >= 0xa (signed).
  The `beq` branch at 0xd8c5eac targets 0xd8c5e24, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xd8c5ec8 targets 0xd8c5fd4, is taken when a2 < 0x10 (signed), and falls through when a2 >= 0x10 (signed).
  The `beq` branch at 0xd8c5ed0 targets 0xd8c5e24, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd8c5ef0 targets 0xd8c5ff0, is taken when a2 < a4(=0x800c) (signed), and falls through when a2 >= a4(=0x800c) (signed).
  The `bne` branch at 0xd8c5ef8 targets 0xd8c5e24, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xd8c5f14 targets 0xd8c6094, is taken when a2 < 0x25 (signed), and falls through when a2 >= 0x25 (signed).
  The `beq` branch at 0xd8c5f1c targets 0xd8c5e24, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xd8c5f3c targets 0xd8c60cc, is taken when a2 < a4(=0x8017) (signed), and falls through when a2 >= a4(=0x8017) (signed).
  The `bne` branch at 0xd8c5f44 targets 0xd8c5e24, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xd8c5f74 targets 0xd8c6114, is taken when a2 < a4(=0x802a) (signed), and falls through when a2 >= a4(=0x802a) (signed).
  The `bne` branch at 0xd8c5f7c targets 0xd8c5e24, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xd8c5fa0 targets 0xd8c5e24, is taken when a2 != v1(=0x6), and falls through when a2 == v1(=0x6).
  The `bne` branch at 0xd8c5fbc targets 0xd8c5e24, is taken when a2 != at(=0x9), and falls through when a2 == at(=0x9).
  The `bne` branch at 0xd8c5fd8 targets 0xd8c5e24, is taken when a2 != v1(=0xf), and falls through when a2 == v1(=0xf).
  The `bne` branch at 0xd8c5ff4 targets 0xd8c5e24, is taken when a2 != at(=0x800b), and falls through when a2 == at(=0x800b).
  The `bne` branch at 0xd8c6034 targets 0xd8c6194, is taken when a2 < a4(=0x8030) (signed), and falls through when a2 >= a4(=0x8030) (signed).
  The `bne` branch at 0xd8c603c targets 0xd8c5e24, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xd8c6060 targets 0xd8c5e24, is taken when a2 != a0(=0xc), and falls through when a2 == a0(=0xc).
  The `bne` branch at 0xd8c607c targets 0xd8c5e24, is taken when a2 != at(=0x20), and falls through when a2 == at(=0x20).
  The `bne` branch at 0xd8c6098 targets 0xd8c5e24, is taken when a2 != v1(=0x24), and falls through when a2 == v1(=0x24).
  The `bne` branch at 0xd8c60b4 targets 0xd8c5e24, is taken when a2 != at(=0x8011), and falls through when a2 == at(=0x8011).
  The `bne` branch at 0xd8c60d0 targets 0xd8c5e24, is taken when a2 != v1(=0x8016), and falls through when a2 == v1(=0x8016).
  The `bne` branch at 0xd8c60fc targets 0xd8c5e24, is taken when a2 != at(=0x8019), and falls through when a2 == at(=0x8019).
  The `bne` branch at 0xd8c6118 targets 0xd8c5e24, is taken when a2 != v1(=0x8029), and falls through when a2 == v1(=0x8029).
  The `beq` branch at 0xd8c6120 targets 0xd8c5e04 and is always taken.
  The `bne` branch at 0xd8c6174 targets 0xd8c5e24, is taken when a2 != v0(=0x802c), and falls through when a2 == v0(=0x802c).
  The `bne` branch at 0xd8c6198 targets 0xd8c5e24, is taken when a2 != a0(=0x802f), and falls through when a2 == a0(=0x802f).
  The return at 0xd8c5c54 has v0 = 0x0.
  The return at 0xd8c5ca4 has v0 = 0x0.
  The return at 0xd8c5cec has v0 = 0x0.
  The return at 0xd8c5d3c has v0 = 0x0.
  The return at 0xd8c5d70 has v0 = 0x0.
  The return at 0xd8c5d80 has v0 = 0x0.
  The return at 0xd8c5db0 has v0 = 0x0.
  The return at 0xd8c5df0 has v0 = 0x0.
  The return at 0xd8c5e10 has v0 = 0x0.
  The return at 0xd8c5e24 has v0 = 0x2.
  The return at 0xd8c5e44 has v0 = 0x0.
  The return at 0xd8c5e54 has v0 = 0x0.
  The return at 0xd8c5e98 has v0 = 0x0.
  The return at 0xd8c5ebc has v0 = 0x0.
  The return at 0xd8c5ee0 has v0 = 0x0.
  The return at 0xd8c5f08 has v0 = 0x0.
  The return at 0xd8c5f2c has v0 = 0x0.
  The return at 0xd8c5f54 has v0 = 0x0.
  The return at 0xd8c5f64 has v0 = 0x0.
  The return at 0xd8c5f94 has v0 = 0x0.
  The return at 0xd8c5fb0 has v0 = 0x0.
  The return at 0xd8c5fcc has v0 = 0x0.
  The return at 0xd8c5fe8 has v0 = 0x0.
  The return at 0xd8c6004 has v0 = 0x0.
  The return at 0xd8c6014 has v0 = 0x0.
  The return at 0xd8c6024 has v0 = 0x0.
  The return at 0xd8c6054 has v0 = 0x0.
  The return at 0xd8c6070 has v0 = 0x0.
  The return at 0xd8c608c has v0 = 0x0.
  The return at 0xd8c60a8 has v0 = 0x0.
  The return at 0xd8c60c4 has v0 = 0x0.
  The return at 0xd8c60e0 has v0 = 0x0.
  The return at 0xd8c60f0 has v0 = 0x0.
  The return at 0xd8c610c has v0 = 0x0.
  The return at 0xd8c6138 has v0 = 0x0.
  The return at 0xd8c6148 has v0 = 0x0.
  The return at 0xd8c6158 has v0 = 0x0.
  The return at 0xd8c6168 has v0 = 0x0.
  The return at 0xd8c618c has v0 = 0x0.
  The return at 0xd8c61b0 has v0 = 0x0.
  The return at 0xd8c61c0 has v0 = 0x0.
  The return at 0xd8c61d0 has v0 = 0x0.
  The return at 0xd8c61e8 has v0 = 0x0.
  The return at 0xd8c61f8 has v0 = 0x0.
  The return at 0xd8c6208 has v0 = 0x0.

- `glXGetFBConfigFltAttribSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c625c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8c625c-0xd8c63b8 (348 bytes).
  It occupies 348 bytes.
  The `lw` at 0xd8c629c loads 4 bytes from table(0xd8e05c8) +0x0.
  The `ldc1` at 0xd8c62a8 loads 8 bytes from a1 (arg1 at entry) +0xa8.
  9 such `sdc1` accesses store 8 bytes to a3 (arg3 at entry) +0x0, including `sdc1` at 0xd8c62b4, `sdc1` at 0xd8c62d0, `sdc1` at 0xd8c62ec.
  The `ldc1` at 0xd8c62c4 loads 8 bytes from a1 (arg1 at entry) +0xb0.
  The `ldc1` at 0xd8c62e0 loads 8 bytes from a1 (arg1 at entry) +0xb8.
  The `ldc1` at 0xd8c62fc loads 8 bytes from a1 (arg1 at entry) +0xc0.
  The `ldc1` at 0xd8c6318 loads 8 bytes from a1 (arg1 at entry) +0xc8.
  The `ldc1` at 0xd8c6334 loads 8 bytes from a1 (arg1 at entry) +0xd0.
  The `ldc1` at 0xd8c6350 loads 8 bytes from a1 (arg1 at entry) +0xd8.
  The `ldc1` at 0xd8c636c loads 8 bytes from a1 (arg1 at entry) +0xe0.
  The `jalr` at 0xd8c638c calls glXGetFBConfigAttribSGIX with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-64, a5=table(0xd8e05c8).
  The `beq` branch at 0xd8c6294 targets 0xd8c6384, is taken when a5(=a2-32809) >= 0x8 (unsigned), and falls through when a5(=a2-32809) < 0x8 (unsigned).
  The return at 0xd8c62bc has v0 = 0x0.
  The return at 0xd8c62d8 has v0 = 0x0.
  The return at 0xd8c62f4 has v0 = 0x0.
  The return at 0xd8c6310 has v0 = 0x0.
  The return at 0xd8c632c has v0 = 0x0.
  The return at 0xd8c6348 has v0 = 0x0.
  The return at 0xd8c6364 has v0 = 0x0.
  The return at 0xd8c637c has v0 = 0x0.
  The return at 0xd8c63b0 has v0 = ret(glXGetFBConfigAttribSGIX).
  The indirect jump at 0xd8c62a0 uses the jump table at 0xd8e05c8 with targets 0xd8c62a8, 0xd8c62c4, 0xd8c62e0, 0xd8c62fc, 0xd8c6318, 0xd8c6334, 0xd8c6350, 0xd8c636c.

- `glXChooseFBConfigWithFltSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c684c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8c684c-0xd8c7b80 (4916 bytes).
  It occupies 4916 bytes.
  The `lw` at 0xd8c699c loads 4 bytes from a2 (arg2 at entry) +0x0.
  91 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8c69fc, `lw` at 0xd8c6a10, `lw` at 0xd8c6a5c.
  The `ldc1` at 0xd8c6a24 loads 8 bytes from a3 (arg3 at entry) +0x0.
  17 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0xd8c6a6c, `ldc1` at 0xd8c6a84, `ldc1` at 0xd8c6bd0.
  The `lw` at 0xd8c6ab0 loads 4 bytes from table(0xd8e05e8) +0x0.
  The `lw` at 0xd8c6ae0 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd8c6af0 loads 4 bytes from ret(__glXInitialize) +0x20.
  The `lw` at 0xd8c6afc loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc.
  The `lw` at 0xd8c6b04 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10.
  The `lw` at 0xd8c6b38 loads 4 bytes from [([ret(__glXInitialize)+32] + (a1 << 0x5))+12] +0x48.
  12 such `sw` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `sw` at 0xd8c6b6c, `sw` at 0xd8c6cac, `sw` at 0xd8c6cfc.
  7 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd8c6cd0, `lbu` at 0xd8c7054, `lbu` at 0xd8c70d8.
  The `sw` at 0xd8c6e84 stores 4 bytes to ret(malloc) +0x0.
  36 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8c7354, `sw` at 0xd8c7384, `sw` at 0xd8c738c.
  The `jalr` at 0xd8c6ac4 calls __glXInitialize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c6d3c calls malloc with a0=0x4, a1=ret(__glXInitialize), a2=?, a3=?.
  The `jalr` at 0xd8c724c calls malloc with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=ret(__glXInitialize), a2=?, a3=?, a5=(a1 << 0x5).
  The `bgezall` at 0xd8c72dc calls GetBoardName [0xd8c3ef0] with a0=?, a1=a1 at entry (arg1), a2=sp-328, a3=?.
  The `jalr` at 0xd8c72f8 calls strncmp with a0=sp-328, a1=0xd8e2428, a2=0x7, a3=?.
  The `jalr` at 0xd8c770c calls free with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd8c79c4 calls orderFBConfigSGIXs [0xd8c63fc] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8c6994 targets 0xd8c6a1c, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0xd8c69a0 targets 0xd8c6a1c, is taken when a0(=[a2]) == 0, and falls through when a0(=[a2]) != 0.
  The `bne` branch at 0xd8c69d8 targets 0xd8c6a40, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8c69ec targets 0xd8c6b7c, is taken when v0(?) >= 0x27 (signed), and falls through when v0(?) < 0x27 (signed).
  The `beq` branch at 0xd8c6a08 targets 0xd8c6a1c, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0xd8c6a14 targets 0xd8c69d8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xd8c6a1c targets 0xd8c6ac0, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `beq` branch at 0xd8c6a30 targets 0xd8c6abc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd8c6a38 targets 0xd8c6a94 and is always taken.
  The `bne` branch at 0xd8c6a4c targets 0xd8c6ba4, is taken when v0(?) < 0xd (signed), and falls through when v0(?) >= 0xd (signed).
  The `beq` branch at 0xd8c6a54 targets 0xd8c6c40, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xd8c6a64 targets 0xd8c6a08 and is always taken.
  The `beq` branch at 0xd8c6a7c targets 0xd8c6ac0, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xd8c6a90 targets 0xd8c6abc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd8c6aa8 targets 0xd8c6c90, is taken when a0(=table(-0x8029)) >= 0x8 (unsigned), and falls through when a0(=table(-0x8029)) < 0x8 (unsigned).
  The `beq` branch at 0xd8c6ad0 targets 0xd8c6e0c, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `bltz` branch at 0xd8c6ad8 targets 0xd8c6ce0, is taken when s3(=a1) < 0 (signed), and falls through when s3(=a1) >= 0 (signed).
  The `beq` branch at 0xd8c6ae8 targets 0xd8c6ce0, is taken when s3(=a1) >= a6(=[a0+136]) (signed), and falls through when s3(=a1) < a6(=[a0+136]) (signed).
  The `beq` branch at 0xd8c6b00 targets 0xd8c6e38, is taken when s4(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0, and falls through when s4(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0.
  The `beq` branch at 0xd8c6b08 targets 0xd8c6e38, is taken when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) == 0, and falls through when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) != 0.
  The `beq` branch at 0xd8c6b10 targets 0xd8c7240, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `blez` branch at 0xd8c6b18 targets 0xd8c6b50, is taken when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed), and falls through when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  The `beq` branch at 0xd8c6b3c targets 0xd8c6d38, is taken when v1(?) == s1(?), and falls through when v1(?) != s1(?).
  The `bnel` branch at 0xd8c6b48 targets 0xd8c6b3c, is taken when a5(?) != s0(?), and falls through when a5(?) == s0(?); its branch-likely delay slot `lw v1,72(s0)` at 0xd8c6b4c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8c6b7c targets 0xd8c6c6c, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0xd8c6b84 targets 0xd8c6d0c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8c6b9c targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c6bac targets 0xd8c6cbc, is taken when v0(?) < 0x8 (signed), and falls through when v0(?) >= 0x8 (signed).
  The `beq` branch at 0xd8c6bb4 targets 0xd8c6d78, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xd8c6bc8 targets 0xd8c6a08 and is always taken.
  The `beq` branch at 0xd8c6bd8 targets 0xd8c6a7c and is always taken.
  The `beq` branch at 0xd8c6be8 targets 0xd8c6a7c and is always taken.
  The `beq` branch at 0xd8c6bf8 targets 0xd8c6a7c and is always taken.
  The `beq` branch at 0xd8c6c08 targets 0xd8c6a7c and is always taken.
  The `beq` branch at 0xd8c6c18 targets 0xd8c6a7c and is always taken.
  The `beq` branch at 0xd8c6c28 targets 0xd8c6a7c and is always taken.
  The `beq` branch at 0xd8c6c38 targets 0xd8c6a7c and is always taken.
  The `bne` branch at 0xd8c6c40 targets 0xd8c6d9c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xd8c6c50 targets 0xd8c6e94, is taken when v0(?) >= 0x21 (signed), and falls through when v0(?) < 0x21 (signed).
  The `beq` branch at 0xd8c6c64 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c6c6c targets 0xd8c6dbc, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xd8c6c74 targets 0xd8c6ec0, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xd8c6c88 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c6cbc targets 0xd8c6de8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8c6cc4 targets 0xd8c6f0c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8c6cd8 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c6d10 targets 0xd8c6ee0, is taken when v0(?) < a3(=0x802e) (signed), and falls through when v0(?) >= a3(=0x802e) (signed).
  The `bne` branch at 0xd8c6d18 targets 0xd8c6fc4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xd8c6d30 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c6d44 targets 0xd8c6e64, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bne` branch at 0xd8c6d7c targets 0xd8c6f30, is taken when v0(?) < 0xb (signed), and falls through when v0(?) >= 0xb (signed).
  The `beq` branch at 0xd8c6d84 targets 0xd8c7010, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd8c6d94 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c6d9c targets 0xd8c6f54, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xd8c6da4 targets 0xd8c702c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xd8c6db4 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c6dc8 targets 0xd8c6f7c, is taken when v0(?) < a4(=0x8010) (signed), and falls through when v0(?) >= a4(=0x8010) (signed).
  The `bne` branch at 0xd8c6dd0 targets 0xd8c7044, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xd8c6de0 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c6dec targets 0xd8c6fa8, is taken when v0(?) < 0x3 (signed), and falls through when v0(?) >= 0x3 (signed).
  The `beq` branch at 0xd8c6df4 targets 0xd8c6fe4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8c6e04 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c6e98 targets 0xd8c7064, is taken when v0(?) < 0x24 (signed), and falls through when v0(?) >= 0x24 (signed).
  The `beq` branch at 0xd8c6ea0 targets 0xd8c713c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8c6eb8 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c6ec0 targets 0xd8c7084, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xd8c6ec8 targets 0xd8c7158, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xd8c6ed8 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c6ee0 targets 0xd8c70a8, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0xd8c6eec targets 0xd8c7170, is taken when t0(=0x802c) < v0(?) (signed), and falls through when t0(=0x802c) >= v0(?) (signed).
  The `beq` branch at 0xd8c6f04 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c6f0c targets 0xd8c70d0, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xd8c6f18 targets 0xd8c6fe4, is taken when v0(?) >= 0x8 (signed), and falls through when v0(?) < 0x8 (signed).
  The `beq` branch at 0xd8c6f28 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c6f30 targets 0xd8c70e8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xd8c6f38 targets 0xd8c6fe4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xd8c6f4c targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c6f5c targets 0xd8c7108, is taken when v0(?) < 0xf (signed), and falls through when v0(?) >= 0xf (signed).
  The `beq` branch at 0xd8c6f64 targets 0xd8c6fe4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8c6f74 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c6f84 targets 0xd8c7120, is taken when v0(?) < 0x28 (signed), and falls through when v0(?) >= 0x28 (signed).
  The `beq` branch at 0xd8c6f8c targets 0xd8c6fe4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd8c6fa0 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c6fac targets 0xd8c6fe4, is taken when v0(?) != a6(=0x2), and falls through when v0(?) == a6(=0x2).
  The `beq` branch at 0xd8c6fbc targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c6fc4 targets 0xd8c7190, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xd8c6fcc targets 0xd8c728c, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xd8c6fdc targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c7010 targets 0xd8c6fe4, is taken when v0(?) != t9(=0xc), and falls through when v0(?) == t9(=0xc).
  The `beq` branch at 0xd8c7024 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c702c targets 0xd8c6fe4, is taken when v0(?) != v1(=0x11), and falls through when v0(?) == v1(=0x11).
  The `beq` branch at 0xd8c703c targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c7044 targets 0xd8c71e4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0xd8c704c targets 0xd8c6fe4, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8c705c targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c7064 targets 0xd8c71c4, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xd8c706c targets 0xd8c6fe4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xd8c707c targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c7088 targets 0xd8c7200, is taken when v0(?) < t2(=0x8017) (signed), and falls through when v0(?) >= t2(=0x8017) (signed).
  The `bne` branch at 0xd8c7090 targets 0xd8c6fe4, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xd8c70a0 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c70a8 targets 0xd8c721c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xd8c70b0 targets 0xd8c6fe4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xd8c70c8 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c70d0 targets 0xd8c6fe4, is taken when v0(?) != a6(=0x6), and falls through when v0(?) == a6(=0x6).
  The `beq` branch at 0xd8c70e0 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c70ec targets 0xd8c6fe4, is taken when v0(?) != v1(=0x9), and falls through when v0(?) == v1(=0x9).
  The `beq` branch at 0xd8c7100 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c7108 targets 0xd8c6fe4, is taken when v0(?) != a6(=0xe), and falls through when v0(?) == a6(=0xe).
  The `beq` branch at 0xd8c7118 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c7120 targets 0xd8c6fe4, is taken when v0(?) != v1(=0x27), and falls through when v0(?) == v1(=0x27).
  The `beq` branch at 0xd8c7134 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c713c targets 0xd8c6fe4, is taken when v0(?) != at(=0x25), and falls through when v0(?) == at(=0x25).
  The `beq` branch at 0xd8c7150 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c7158 targets 0xd8c6fe4, is taken when v0(?) != a6(=0x8028), and falls through when v0(?) == a6(=0x8028).
  The `beq` branch at 0xd8c7168 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c7170 targets 0xd8c6fe4, is taken when v0(?) != v1(=0x802d), and falls through when v0(?) == v1(=0x802d).
  The `beq` branch at 0xd8c7188 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c7198 targets 0xd8c72a8, is taken when v0(?) < a6(=0x8030) (signed), and falls through when v0(?) >= a6(=0x8030) (signed).
  The `bne` branch at 0xd8c71a4 targets 0xd8c6fe4, is taken when at(=0x8030) < v0(?) (signed), and falls through when at(=0x8030) >= v0(?) (signed).
  The `beq` branch at 0xd8c71bc targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c71c8 targets 0xd8c6fe4, is taken when v0(?) != a5(=0x22), and falls through when v0(?) == a5(=0x22).
  The `beq` branch at 0xd8c71dc targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c71e8 targets 0xd8c6fe4, is taken when v0(?) != v1(=0x8011), and falls through when v0(?) == v1(=0x8011).
  The `beq` branch at 0xd8c71f8 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c7204 targets 0xd8c6fe4, is taken when v0(?) != a6(=0x8016), and falls through when v0(?) == a6(=0x8016).
  The `beq` branch at 0xd8c7214 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c7220 targets 0xd8c6fe4, is taken when v0(?) != v1(=0x802a), and falls through when v0(?) == v1(=0x802a).
  The `beq` branch at 0xd8c7238 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c7258 targets 0xd8c72cc, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bne` branch at 0xd8c7290 targets 0xd8c6fe4, is taken when v0(?) != a6(=0x186a1), and falls through when v0(?) == a6(=0x186a1).
  The `beq` branch at 0xd8c72a0 targets 0xd8c6a08 and is always taken.
  The `bne` branch at 0xd8c72ac targets 0xd8c6fe4, is taken when v0(?) != v1(=0x802f), and falls through when v0(?) == v1(=0x802f).
  The `beq` branch at 0xd8c72c4 targets 0xd8c6a08 and is always taken.
  The `beq` branch at 0xd8c72e4 targets 0xd8c7308, is taken when v0(=ret(GetBoardName)) == 0, and falls through when v0(=ret(GetBoardName)) != 0.
  The `beq` branch at 0xd8c7300 targets 0xd8c76c8, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `bne` branch at 0xd8c7308 targets 0xd8c73f0, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `bne` branch at 0xd8c7310 targets 0xd8c73f0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `blez` branch at 0xd8c7318 targets 0xd8c73c4, is taken when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed), and falls through when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  The `beq` branch at 0xd8c7344 targets 0xd8c7360, is taken when (at(?) & 0x7) == 0, and falls through when (at(?) & 0x7) != 0.
  The `bne` branch at 0xd8c7358 targets 0xd8c734c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0xd8c7368 targets 0xd8c73c0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd8c73b8 targets 0xd8c7378, is taken when a1(?) != s1(?), and falls through when a1(?) == s1(?).
  The `blez` branch at 0xd8c73f0 targets 0xd8c75b4, is taken when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed), and falls through when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  The `beq` branch at 0xd8c7428 targets 0xd8c7440 and is always taken.
  The `beq` branch at 0xd8c7430 targets 0xd8c7480 and is always taken.
  The `beq` branch at 0xd8c743c targets 0xd8c75b4, is taken when s0(?) == s1(?), and falls through when s0(?) != s1(?).
  The `bne` branch at 0xd8c7450 targets 0xd8c7438, is taken when at(?) < v1(?) (signed), and falls through when at(?) >= v1(?) (signed).
  The `bne` branch at 0xd8c745c targets 0xd8c7438, is taken when a5(?) != a6(?), and falls through when a5(?) == a6(?).
  The `beq` branch at 0xd8c7464 targets 0xd8c7430, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd8c7470 targets 0xd8c7430, is taken when v1(?) == a5(?), and falls through when v1(?) != a5(?).
  The `beq` branch at 0xd8c7478 targets 0xd8c7438 and is always taken.
  The `bne` branch at 0xd8c7488 targets 0xd8c7438, is taken when a6(?) != at(?), and falls through when a6(?) == at(?).
  The `bne` branch at 0xd8c749c targets 0xd8c7438, is taken when v1(?) < a5(?) (signed), and falls through when v1(?) >= a5(?) (signed).
  The `bne` branch at 0xd8c74b0 targets 0xd8c7438, is taken when a1(?) < a6(?) (signed), and falls through when a1(?) >= a6(?) (signed).
  The `bne` branch at 0xd8c74c4 targets 0xd8c7438, is taken when a7(?) < at(?) (signed), and falls through when a7(?) >= at(?) (signed).
  The `bne` branch at 0xd8c74d8 targets 0xd8c7438, is taken when t0(?) < v1(?) (signed), and falls through when t0(?) >= v1(?) (signed).
  The `bne` branch at 0xd8c74ec targets 0xd8c7438, is taken when t1(?) < a5(?) (signed), and falls through when t1(?) >= a5(?) (signed).
  The `bne` branch at 0xd8c7500 targets 0xd8c7438, is taken when t2(?) < a6(?) (signed), and falls through when t2(?) >= a6(?) (signed).
  The `bne` branch at 0xd8c7514 targets 0xd8c7438, is taken when at(?) < v1(?) (signed), and falls through when at(?) >= v1(?) (signed).
  The `bne` branch at 0xd8c7528 targets 0xd8c7438, is taken when a5(?) < a6(?) (signed), and falls through when a5(?) >= a6(?) (signed).
  The `bne` branch at 0xd8c753c targets 0xd8c7438, is taken when at(?) < v1(?) (signed), and falls through when at(?) >= v1(?) (signed).
  The `bne` branch at 0xd8c7550 targets 0xd8c7438, is taken when a5(?) < a6(?) (signed), and falls through when a5(?) >= a6(?) (signed).
  The `bne` branch at 0xd8c7564 targets 0xd8c7438, is taken when at(?) < v1(?) (signed), and falls through when at(?) >= v1(?) (signed).
  The `bne` branch at 0xd8c7578 targets 0xd8c7438, is taken when a5(?) < a6(?) (unsigned), and falls through when a5(?) >= a6(?) (unsigned).
  The `bne` branch at 0xd8c758c targets 0xd8c7438, is taken when at(?) < v1(?) (unsigned), and falls through when at(?) >= v1(?) (unsigned).
  The `beq` branch at 0xd8c7594 targets 0xd8c7744, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xd8c75a4 targets 0xd8c7744, is taken when a6(?) == at(?), and falls through when a6(?) != at(?).
  The `beq` branch at 0xd8c75ac targets 0xd8c7744 and is always taken.
  The `blez` branch at 0xd8c75b4 targets 0xd8c7708, is taken when s2(?) <= 0 (signed), and falls through when s2(?) > 0 (signed).
  The `beq` branch at 0xd8c75bc targets 0xd8c769c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bltz` branch at 0xd8c75d0 targets 0xd8c7600, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bltz` branch at 0xd8c7604 targets 0xd8c7634, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bltz` branch at 0xd8c7638 targets 0xd8c7668, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bltz` branch at 0xd8c766c targets 0xd8c769c, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bne` branch at 0xd8c76d4 targets 0xd8c7308, is taken when a5(?) != s3(=0xc), and falls through when a5(?) == s3(=0xc).
  The `bne` branch at 0xd8c76e0 targets 0xd8c7308, is taken when at(?) != s3(=0xc), and falls through when at(?) == s3(=0xc).
  The `bne` branch at 0xd8c76e8 targets 0xd8c7308, is taken when v1(?) != s3(=0xc), and falls through when v1(?) == s3(=0xc).
  The `beq` branch at 0xd8c7700 targets 0xd8c7308 and is always taken.
  The `bne` branch at 0xd8c7744 targets 0xd8c7438, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xd8c7754 targets 0xd8c7438, is taken when at(?) != v1(?), and falls through when at(?) == v1(?).
  The `beq` branch at 0xd8c775c targets 0xd8c7778, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xd8c776c targets 0xd8c7778, is taken when a6(?) == at(?), and falls through when a6(?) != at(?).
  The `bne` branch at 0xd8c7778 targets 0xd8c7438, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c7780 targets 0xd8c779c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8c7790 targets 0xd8c779c, is taken when a5(?) == a6(?), and falls through when a5(?) != a6(?).
  The `bne` branch at 0xd8c779c targets 0xd8c7438, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c77a4 targets 0xd8c77c0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd8c77b4 targets 0xd8c77c0, is taken when v1(?) == a5(?), and falls through when v1(?) != a5(?).
  The `bne` branch at 0xd8c77c0 targets 0xd8c7438, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c77c8 targets 0xd8c77e4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xd8c77d8 targets 0xd8c77e4, is taken when at(?) == v1(?), and falls through when at(?) != v1(?).
  The `bne` branch at 0xd8c77e4 targets 0xd8c7438, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c77ec targets 0xd8c7808, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xd8c77fc targets 0xd8c7808, is taken when a6(?) == at(?), and falls through when a6(?) != at(?).
  The `bne` branch at 0xd8c7808 targets 0xd8c7438, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c7810 targets 0xd8c782c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8c7820 targets 0xd8c782c, is taken when a5(?) == a6(?), and falls through when a5(?) != a6(?).
  The `bne` branch at 0xd8c782c targets 0xd8c7438, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xd8c7840 targets 0xd8c7438, is taken when at(?) != v1(?), and falls through when at(?) == v1(?).
  The `bne` branch at 0xd8c7854 targets 0xd8c7438, is taken when v1(?) != a5(?), and falls through when v1(?) == a5(?).
  The `beq` branch at 0xd8c785c targets 0xd8c7870, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xd8c7868 targets 0xd8c7b14, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xd8c7870 targets 0xd8c7438, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xd8c7884 targets 0xd8c7438, is taken when at(?) < v1(?) (signed), and falls through when at(?) >= v1(?) (signed).
  The `bne` branch at 0xd8c7898 targets 0xd8c7438, is taken when a5(?) < a6(?) (signed), and falls through when a5(?) >= a6(?) (signed).
  The `bne` branch at 0xd8c78ac targets 0xd8c7438, is taken when at(?) < v1(?) (signed), and falls through when at(?) >= v1(?) (signed).
  The `bne` branch at 0xd8c78bc targets 0xd8c7438, is taken when a5(?) != a6(?), and falls through when a5(?) == a6(?).
  The `bc1t` branch at 0xd8c78cc targets 0xd8c7438, is taken when f0 < f1 (c.lt.d at 0xd8c78c8), and falls through when not (f0 < f1 (c.lt.d at 0xd8c78c8)).
  The `bc1t` branch at 0xd8c78e0 targets 0xd8c7438, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1t` branch at 0xd8c78f0 targets 0xd8c7438, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `bc1t` branch at 0xd8c7904 targets 0xd8c7438, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `bc1t` branch at 0xd8c7914 targets 0xd8c7438, is taken when f0 < f1 (c.lt.d at 0xd8c7910), and falls through when not (f0 < f1 (c.lt.d at 0xd8c7910)).
  The `bc1t` branch at 0xd8c7928 targets 0xd8c7438, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1t` branch at 0xd8c7938 targets 0xd8c7438, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `bc1t` branch at 0xd8c794c targets 0xd8c7438, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `beq` branch at 0xd8c796c targets 0xd8c797c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd8c7974 targets 0xd8c7b38, is taken when a7(?) == s3(=0xc), and falls through when a7(?) != s3(=0xc).
  The `beq` branch at 0xd8c797c targets 0xd8c79fc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xd8c79f0 targets 0xd8c7990, is taken when s4(?) != at(?), and falls through when s4(?) == at(?).
  The `beq` branch at 0xd8c79fc targets 0xd8c7b28, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xd8c7a18 targets 0xd8c7a34, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xd8c7a2c targets 0xd8c7a20, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xd8c7a38 targets 0xd8c7a6c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xd8c7a64 targets 0xd8c7a44, is taken when a1(?) != a7(?), and falls through when a1(?) == a7(?).
  The `beq` branch at 0xd8c7a70 targets 0xd8c7ae8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xd8c7a80 targets 0xd8c7a94, is taken when t0(?) < s4(?) (signed), and falls through when t0(?) >= s4(?) (signed).
  The `beq` branch at 0xd8c7a88 targets 0xd8c7a94, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd8c7a9c targets 0xd8c7ab0, is taken when t0(?) < s4(?) (signed), and falls through when t0(?) >= s4(?) (signed).
  The `beq` branch at 0xd8c7aa4 targets 0xd8c7ab0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xd8c7ab8 targets 0xd8c7acc, is taken when t0(?) < s4(?) (signed), and falls through when t0(?) >= s4(?) (signed).
  The `beq` branch at 0xd8c7ac0 targets 0xd8c7acc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xd8c7ad4 targets 0xd8c7ae8, is taken when t0(?) < s4(?) (signed), and falls through when t0(?) >= s4(?) (signed).
  The `beq` branch at 0xd8c7adc targets 0xd8c7ae8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8c7aec targets 0xd8c7b20, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bltz` branch at 0xd8c7af8 targets 0xd8c7b1c, is taken when at(?) < 0 (signed), and falls through when at(?) >= 0 (signed).
  The `bne` branch at 0xd8c7b04 targets 0xd8c7af4, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `beq` branch at 0xd8c7b0c targets 0xd8c7b20 and is always taken.
  The `beq` branch at 0xd8c7b14 targets 0xd8c7870 and is always taken.
  The `beq` branch at 0xd8c7b20 targets 0xd8c7438 and is always taken.
  The `beq` branch at 0xd8c7b30 targets 0xd8c7a6c and is always taken.
  The `bne` branch at 0xd8c7b38 targets 0xd8c797c, is taken when t0(?) != s3(=0xc), and falls through when t0(?) == s3(=0xc).
  The `bne` branch at 0xd8c7b40 targets 0xd8c797c, is taken when a1(?) != s3(=0xc), and falls through when a1(?) == s3(=0xc).
  The `bne` branch at 0xd8c7b48 targets 0xd8c797c, is taken when t1(?) != s3(=0xc), and falls through when t1(?) == s3(=0xc).
  The `bne` branch at 0xd8c7b50 targets 0xd8c797c, is taken when t2(?) != v1(=0x10), and falls through when t2(?) == v1(=0x10).
  The `bne` branch at 0xd8c7b58 targets 0xd8c797c, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xd8c7b78 targets 0xd8c797c and is always taken.
  The return at 0xd8c6b74 has v0 = 0x0.
  The return at 0xd8c6cb4 has v0 = 0x0.
  The return at 0xd8c6d04 has v0 = 0x0.
  The return at 0xd8c6d70 has v0 = 0x0.
  The return at 0xd8c6e30 has v0 = 0x0.
  The return at 0xd8c6e5c has v0 = 0x0.
  The return at 0xd8c6e8c has v0 = ret(malloc).
  The return at 0xd8c7008 has v0 = 0x0.
  The return at 0xd8c7284 has v0 = 0x0.
  The return at 0xd8c73e8 has v0 = ?.
  The return at 0xd8c76c0 has v0 = ?.
  The return at 0xd8c773c has v0 = 0x0.
  The indirect jump at 0xd8c6ab4 uses the jump table at 0xd8e05e8 with targets 0xd8c6bd0, 0xd8c6be0, 0xd8c6bf0, 0xd8c6c00, 0xd8c6c10, 0xd8c6a6c, 0xd8c6c20, 0xd8c6c30.
  The indirect jump at 0xd8c6ab4 uses the jump table at 0xd8e05e8 with targets 0xd8c6bd0, 0xd8c6be0, 0xd8c6bf0, 0xd8c6c00, 0xd8c6c10, 0xd8c6a6c, 0xd8c6c20, 0xd8c6c30.

- `glXCreateGLXPixmapWithConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c7bb8 (n32).
  Inferred: this appends one 0x1c-byte request record to the display's output buffer (the pointer at
  +0x6c of the display in a0) from the structure at a1 and the value a2, and returns a value obtained
  through the display's word at +0x2c, because the record is written between a call to
  `__glXSetupForCommand` (committed note: it selects the display's current context) and that call.
  The `jalr` at 0xd8c7be0 calls `__glXSetupForCommand` with a1 and a2 as they arrived; its return is
  masked to the low 8 bits and saved at sp+0x20, and when that byte is zero (`beq` at 0xd8c7bf8) the
  routine returns 0 at 0xd8c7d04 without writing anything. When the word at +0x4d0 is non-zero (`beq` at
  0xd8c7c04) the `jalr` at 0xd8c7c10 calls the pointer at offset 0 of the block it points to, with the
  display in a0. If the word at +0x70 is below the word at +0x6c plus 0x1c (unsigned `bne` at
  0xd8c7c28), `_XFlush` runs first (`jalr` at 0xd8c7cec) and the pointer is reloaded.
  The record at the +0x6c pointer is: byte 0x10 at +0x0 (`sb` at 0xd8c7c40), later replaced by the
  masked setup return (`sb` at 0xd8c7c70); byte 0x10 at +0x1 (`sb` at 0xd8c7c6c); halfword 7 at +0x2
  (`sh` at 0xd8c7c38); word 0x10006 at +0x4 (`sw` at 0xd8c7c68); the word at a1+0x24 at +0xc; the word
  at a1+0x48 at +0x10; and a2 at +0x14 (`sw` at 0xd8c7c84). The pointer is also saved at +0x64 (`sw` at
  0xd8c7c30), +0x60 is incremented by one (`sw` at 0xd8c7c54) and +0x6c advances by 0x1c (`sw` at
  0xd8c7c60). The `jalr` at 0xd8c7c94 then calls the pointer at +0x2c with the display in a0; its return
  value is stored at +0x18 of the record (`sw` at 0xd8c7ca0) and kept at sp+0x0. The routine then runs
  the optional calls through +0x4 of the +0x4d0 block (`jalr` at 0xd8c7cb4) and through the pointer at
  +0x7c (`jalr` at 0xd8c7cc8), when those words are non-zero, and returns the saved value of the +0x2c
  call (`ld` at 0xd8c7cd4). Unknown: the return value of the routine behind the word at +0x2c, which
  is both stored in the record and returned; the code that fills that word would settle it.
  Evidence grade: inferred.

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

- `glXGetVisualFromFBConfig` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c7d60 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8c7d60-0xd8c7db8 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xd8c7d64 loads 4 bytes from a1 (arg1 at entry) +0x20.
  The `lw` at 0xd8c7d98 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `jalr` at 0xd8c7da0 calls __glXOverrideVisualGetVisualInfo with a0=a0 at entry (arg0), a1=0x3, a2=sp-80, a3=sp-40, a6=[a1+32], a7=a1 at entry (arg1).
  The `beq` branch at 0xd8c7d7c targets 0xd8c7dac, is taken when a6(=[a1+32]) == 0, and falls through when a6(=[a1+32]) != 0.
  The return at 0xd8c7db0 has v0 = one of 0x0, ret(__glXOverrideVisualGetVisualInfo).

- `glXChooseFBConfig` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c84ac (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8c84ac-0xd8c9e18 (6508 bytes).
  It occupies 6508 bytes.
  The `lw` at 0xd8c8570 loads 4 bytes from a2 (arg2 at entry) +0x0.
  108 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8c8654, `lw` at 0xd8c8674, `lw` at 0xd8c8698.
  The `lw` at 0xd8c8700 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd8c8710 loads 4 bytes from ret(__glXInitialize) +0x20.
  The `lw` at 0xd8c871c loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc.
  The `lw` at 0xd8c8724 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10.
  The `lw` at 0xd8c8758 loads 4 bytes from [([ret(__glXInitialize)+32] + (a1 << 0x5))+12] +0x48.
  11 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xd8c8784, `sw` at 0xd8c8920, `sw` at 0xd8c89f0.
  The `sw` at 0xd8c8ad8 stores 4 bytes to ret(malloc) +0x0.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd8c8e98, `lbu` at 0xd8c8eec, `lbu` at 0xd8c9414.
  33 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8c91c0, `sw` at 0xd8c91e4, `sw` at 0xd8c91ec.
  The `ld` at 0xd8c9248 loads 8 bytes from ?.
  The `sd` at 0xd8c9254 stores 8 bytes to ?.
  8 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0xd8c9a14, `ldc1` at 0xd8c9c74, `ldc1` at 0xd8c9ca0.
  The `jalr` at 0xd8c86e4 calls __glXInitialize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8c89cc calls malloc with a0=0x4, a1=ret(__glXInitialize), a2=?, a3=?, a4=(a1 << 0x5).
  The `jalr` at 0xd8c9024 calls malloc with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=ret(__glXInitialize), a2=?, a3=?, a4=(a1 << 0x5).
  The `bgezall` at 0xd8c90e4 calls GetBoardName [0xd8c3ef0] with a0=?, a1=a1 at entry (arg1), a2=sp-600, a3=?.
  The `jalr` at 0xd8c90fc calls strncmp with a0=sp-600, a1=0xd8e2428, a2=0x7, a3=?.
  The `bgezall` at 0xd8c92a4 calls orderFBConfigs [0xd8c7ef4] with a0=sp-584, a1=?, a2=0x0, a3=?.
  The `jalr` at 0xd8c9644 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `bgezall` at 0xd8c9b04 calls orderFBConfigs [0xd8c7ef4] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8c8610 targets 0xd8c86b4, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0xd8c8618 targets 0xd8c86b4, is taken when t1(=[a2]) == 0, and falls through when t1(=[a2]) != 0.
  The `beq` branch at 0xd8c8630 targets 0xd8c8678 and is always taken.
  The `bne` branch at 0xd8c8644 targets 0xd8c87e0, is taken when v0(?) < 0xd (signed), and falls through when v0(?) >= 0xd (signed).
  The `beq` branch at 0xd8c864c targets 0xd8c8818, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xd8c866c targets 0xd8c86b8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0xd8c867c targets 0xd8c8638, is taken when a7(?) < 0x27 (signed), and falls through when a7(?) >= 0x27 (signed).
  The `beq` branch at 0xd8c8690 targets 0xd8c87a8, is taken when v0(?) >= 0x28 (signed), and falls through when v0(?) < 0x28 (signed).
  The `bne` branch at 0xd8c86ac targets 0xd8c8674, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xd8c86c0 targets 0xd8c88b0, is taken when a6(?) == at(=0x8000), and falls through when a6(?) != at(=0x8000).
  The `beq` branch at 0xd8c86c8 targets 0xd8c88b0, is taken when a6(?) == s8(=-0x1), and falls through when a6(?) != s8(=-0x1).
  The `beq` branch at 0xd8c86f0 targets 0xd8c8a3c, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `bltz` branch at 0xd8c86f8 targets 0xd8c890c, is taken when s3(=a1) < 0 (signed), and falls through when s3(=a1) >= 0 (signed).
  The `beq` branch at 0xd8c8708 targets 0xd8c890c, is taken when s3(=a1) >= at(=[a0+136]) (signed), and falls through when s3(=a1) < at(=[a0+136]) (signed).
  The `beq` branch at 0xd8c8720 targets 0xd8c8a74, is taken when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0, and falls through when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0.
  The `beq` branch at 0xd8c8728 targets 0xd8c8a74, is taken when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) == 0, and falls through when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) != 0.
  The `beq` branch at 0xd8c8730 targets 0xd8c901c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `blez` branch at 0xd8c8738 targets 0xd8c8770, is taken when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed), and falls through when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  The `beq` branch at 0xd8c875c targets 0xd8c89c8, is taken when at(?) == s2(?), and falls through when at(?) != s2(?).
  The `bnel` branch at 0xd8c8768 targets 0xd8c875c, is taken when v1(?) != s0(?), and falls through when v1(?) == s0(?); its branch-likely delay slot `lw at,72(s0)` at 0xd8c876c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8c87a8 targets 0xd8c884c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0xd8c87b0 targets 0xd8c88d8, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xd8c87d8 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c87e8 targets 0xd8c8880, is taken when v0(?) < 0x8 (signed), and falls through when v0(?) >= 0x8 (signed).
  The `beq` branch at 0xd8c87f0 targets 0xd8c8944, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xd8c8810 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c881c targets 0xd8c896c, is taken when v0(?) < 0x22 (signed), and falls through when v0(?) >= 0x22 (signed).
  The `beq` branch at 0xd8c8824 targets 0xd8c8ae8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd8c8844 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c884c targets 0xd8c8998, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xd8c885c targets 0xd8c8b20, is taken when a1(=0x8013) < v0(?) (signed), and falls through when a1(=0x8013) >= v0(?) (signed).
  The `beq` branch at 0xd8c8878 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8880 targets 0xd8c8a14, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8c8888 targets 0xd8c8c44, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8c8898 targets 0xd8c9070, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xd8c88a8 targets 0xd8c866c and is always taken.
  The `beq` branch at 0xd8c88d0 targets 0xd8c86d0 and is always taken.
  The `bne` branch at 0xd8c88d8 targets 0xd8c8b48, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xd8c88e0 targets 0xd8c8c70, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xd8c8904 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8944 targets 0xd8c8b9c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8c894c targets 0xd8c8ce8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8c8964 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c896c targets 0xd8c8bcc, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xd8c8978 targets 0xd8c8d0c, is taken when v0(?) >= 0x11 (signed), and falls through when v0(?) < 0x11 (signed).
  The `beq` branch at 0xd8c8990 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c899c targets 0xd8c8bf8, is taken when v0(?) < a4(=0x8010) (signed), and falls through when v0(?) >= a4(=0x8010) (signed).
  The `bne` branch at 0xd8c89b0 targets 0xd8c8d80, is taken when a5(=0x8010) < v0(?) (signed), and falls through when a5(=0x8010) >= v0(?) (signed).
  The `beq` branch at 0xd8c89c0 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c89d4 targets 0xd8c8aac, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bne` branch at 0xd8c8a18 targets 0xd8c8c24, is taken when v0(?) < 0x3 (signed), and falls through when v0(?) >= 0x3 (signed).
  The `beq` branch at 0xd8c8a24 targets 0xd8c8cb0, is taken when v0(?) >= 0x4 (signed), and falls through when v0(?) < 0x4 (signed).
  The `beq` branch at 0xd8c8a34 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8aec targets 0xd8c8d48, is taken when v0(?) < 0x25 (signed), and falls through when v0(?) >= 0x25 (signed).
  The `beq` branch at 0xd8c8af8 targets 0xd8c8eb4, is taken when v0(?) >= 0x26 (signed), and falls through when v0(?) < 0x26 (signed).
  The `beq` branch at 0xd8c8b18 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8b20 targets 0xd8c8db8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xd8c8b30 targets 0xd8c8ee4, is taken when a4(=0x8018) < v0(?) (signed), and falls through when a4(=0x8018) >= v0(?) (signed).
  The `beq` branch at 0xd8c8b40 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8b60 targets 0xd8c8de4, is taken when v0(?) < at(=0x802c) (signed), and falls through when v0(?) >= at(=0x802c) (signed).
  The `bne` branch at 0xd8c8b70 targets 0xd8c8f08, is taken when v1(=0x802c) < v0(?) (signed), and falls through when v1(=0x802c) >= v0(?) (signed).
  The `beq` branch at 0xd8c8b94 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8ba0 targets 0xd8c8e18, is taken when v0(?) < 0xa (signed), and falls through when v0(?) >= 0xa (signed).
  The `beq` branch at 0xd8c8ba8 targets 0xd8c8cb0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8c8bc4 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8bd0 targets 0xd8c8e40, is taken when v0(?) < 0xf (signed), and falls through when v0(?) >= 0xf (signed).
  The `beq` branch at 0xd8c8bd8 targets 0xd8c8cb0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xd8c8bf0 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8c00 targets 0xd8c8e64, is taken when v0(?) < a4(=0x800b) (signed), and falls through when v0(?) >= a4(=0x800b) (signed).
  The `bne` branch at 0xd8c8c0c targets 0xd8c8cb0, is taken when a5(=0x800b) < v0(?) (signed), and falls through when a5(=0x800b) >= v0(?) (signed).
  The `beq` branch at 0xd8c8c1c targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8c24 targets 0xd8c8cb0, is taken when v0(?) != v1(=0x2), and falls through when v0(?) == v1(=0x2).
  The `beq` branch at 0xd8c8c3c targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8c48 targets 0xd8c8e88, is taken when v0(?) < 0x7 (signed), and falls through when v0(?) >= 0x7 (signed).
  The `beq` branch at 0xd8c8c50 targets 0xd8c8cb0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xd8c8c68 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8c7c targets 0xd8c8f38, is taken when v0(?) < a4(=0x186a0) (signed), and falls through when v0(?) >= a4(=0x186a0) (signed).
  The `bne` branch at 0xd8c8c88 targets 0xd8c9078, is taken when a5(=0x186a0) < v0(?) (signed), and falls through when a5(=0x186a0) >= v0(?) (signed).
  The `beq` branch at 0xd8c8ca8 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8ce8 targets 0xd8c8cb0, is taken when v0(?) != t9(=0xc), and falls through when v0(?) == t9(=0xc).
  The `beq` branch at 0xd8c8d04 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8d10 targets 0xd8c8f7c, is taken when v0(?) < 0x20 (signed), and falls through when v0(?) >= 0x20 (signed).
  The `beq` branch at 0xd8c8d1c targets 0xd8c8cb0, is taken when v0(?) >= 0x21 (signed), and falls through when v0(?) < 0x21 (signed).
  The `beq` branch at 0xd8c8d40 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8d4c targets 0xd8c8fa4, is taken when v0(?) < 0x24 (signed), and falls through when v0(?) >= 0x24 (signed).
  The `beq` branch at 0xd8c8d58 targets 0xd8c8cb0, is taken when v0(?) >= 0x25 (signed), and falls through when v0(?) < 0x25 (signed).
  The `beq` branch at 0xd8c8d78 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8d84 targets 0xd8c8fbc, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0xd8c8d94 targets 0xd8c8cb0, is taken when a5(=0x8012) < v0(?) (signed), and falls through when a5(=0x8012) >= v0(?) (signed).
  The `beq` branch at 0xd8c8db0 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8dbc targets 0xd8c8fd4, is taken when v0(?) < a4(=0x8017) (signed), and falls through when v0(?) >= a4(=0x8017) (signed).
  The `bne` branch at 0xd8c8dcc targets 0xd8c8cb0, is taken when a5(=0x8017) < v0(?) (signed), and falls through when a5(=0x8017) >= v0(?) (signed).
  The `beq` branch at 0xd8c8ddc targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8de4 targets 0xd8c8fec, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xd8c8df0 targets 0xd8c8cb0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0xd8c8e10 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8e1c targets 0xd8c8cb0, is taken when v0(?) != v1(=0x9), and falls through when v0(?) == v1(=0x9).
  The `beq` branch at 0xd8c8e38 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8e44 targets 0xd8c8cb0, is taken when v0(?) != v1(=0xe), and falls through when v0(?) == v1(=0xe).
  The `beq` branch at 0xd8c8e5c targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8e64 targets 0xd8c8cb0, is taken when v0(?) != v1(=0x28), and falls through when v0(?) == v1(=0x28).
  The `beq` branch at 0xd8c8e80 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8e88 targets 0xd8c8cb0, is taken when v0(?) != at(=0x6), and falls through when v0(?) == at(=0x6).
  The `beq` branch at 0xd8c8eac targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8eb8 targets 0xd8c8cb0, is taken when v0(?) != a5(=0x26), and falls through when v0(?) == a5(=0x26).
  The `beq` branch at 0xd8c8edc targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8ee4 targets 0xd8c8cb0, is taken when v0(?) != a5(=0x8028), and falls through when v0(?) == a5(=0x8028).
  The `beq` branch at 0xd8c8f00 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8f08 targets 0xd8c8cb0, is taken when v0(?) != a5(=0x802d), and falls through when v0(?) == a5(=0x802d).
  The `beq` branch at 0xd8c8f30 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8f40 targets 0xd8c90a0, is taken when v0(?) < a4(=0x8030) (signed), and falls through when v0(?) >= a4(=0x8030) (signed).
  The `bne` branch at 0xd8c8f4c targets 0xd8c8cb0, is taken when a5(=0x8030) < v0(?) (signed), and falls through when a5(=0x8030) >= v0(?) (signed).
  The `beq` branch at 0xd8c8f74 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8f80 targets 0xd8c8cb0, is taken when v0(?) != a4(=0x11), and falls through when v0(?) == a4(=0x11).
  The `beq` branch at 0xd8c8f9c targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8fa4 targets 0xd8c8cb0, is taken when v0(?) != a4(=0x23), and falls through when v0(?) == a4(=0x23).
  The `beq` branch at 0xd8c8fb4 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8fbc targets 0xd8c8cb0, is taken when v0(?) != a5(=0x8011), and falls through when v0(?) == a5(=0x8011).
  The `beq` branch at 0xd8c8fcc targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8fd4 targets 0xd8c8cb0, is taken when v0(?) != v1(=0x8016), and falls through when v0(?) == v1(=0x8016).
  The `beq` branch at 0xd8c8fe4 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c8fec targets 0xd8c8cb0, is taken when v0(?) != a5(=0x802a), and falls through when v0(?) == a5(=0x802a).
  The `beq` branch at 0xd8c9014 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c9030 targets 0xd8c90d4, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd8c9070 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c907c targets 0xd8c8cb0, is taken when v0(?) != a4(=0x186a1), and falls through when v0(?) == a4(=0x186a1).
  The `beq` branch at 0xd8c9098 targets 0xd8c866c and is always taken.
  The `bne` branch at 0xd8c90a4 targets 0xd8c8cb0, is taken when v0(?) != a4(=0x802f), and falls through when v0(?) == a4(=0x802f).
  The `beq` branch at 0xd8c90cc targets 0xd8c866c and is always taken.
  The `beq` branch at 0xd8c90ec targets 0xd8c910c, is taken when v0(=ret(GetBoardName)) == 0, and falls through when v0(=ret(GetBoardName)) != 0.
  The `beq` branch at 0xd8c9104 targets 0xd8c95cc, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0xd8c910c targets 0xd8c9168, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xd8c9114 targets 0xd8c9168, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `blez` branch at 0xd8c911c targets 0xd8c9470, is taken when v1(?) <= 0 (signed), and falls through when v1(?) > 0 (signed).
  The `beq` branch at 0xd8c9160 targets 0xd8c93b4 and is always taken.
  The `blez` branch at 0xd8c9170 targets 0xd8c935c, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `beq` branch at 0xd8c91a8 targets 0xd8c9214 and is always taken.
  The `bne` branch at 0xd8c91bc targets 0xd8c91b0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xd8c91c4 targets 0xd8c9204, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xd8c91fc targets 0xd8c91dc, is taken when v0(?) != a0(?), and falls through when v0(?) == a0(?).
  The `beq` branch at 0xd8c9210 targets 0xd8c935c, is taken when s0(?) == a4(?), and falls through when s0(?) != a4(?).
  The `bgtz` branch at 0xd8c9250 targets 0xd8c923c, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The `beq` branch at 0xd8c9260 targets 0xd8c9274, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd8c926c targets 0xd8c9300, is taken when v1(?) == a4(=0xc), and falls through when v1(?) != a4(=0xc).
  The `beq` branch at 0xd8c9274 targets 0xd8c92c8, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `bne` branch at 0xd8c92bc targets 0xd8c928c, is taken when s1(?) != s3(?), and falls through when s1(?) == s3(?).
  The `beq` branch at 0xd8c92d4 targets 0xd8c92f4, is taken when s1(?) >= s7(?) (signed), and falls through when s1(?) < s7(?) (signed).
  The `beq` branch at 0xd8c92e4 targets 0xd8c91c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xd8c92ec targets 0xd8c91b4 and is always taken.
  The `beq` branch at 0xd8c92f8 targets 0xd8c9204 and is always taken.
  The `bne` branch at 0xd8c9304 targets 0xd8c9274, is taken when a4(?) != a5(=0xc), and falls through when a4(?) == a5(=0xc).
  The `bne` branch at 0xd8c9314 targets 0xd8c9274, is taken when at(?) != v1(=0xc), and falls through when at(?) == v1(=0xc).
  The `bne` branch at 0xd8c9324 targets 0xd8c9274, is taken when a4(?) != a5(=0xc), and falls through when a4(?) == a5(=0xc).
  The `bne` branch at 0xd8c9334 targets 0xd8c9274, is taken when at(?) != v1(=0x10), and falls through when at(?) == v1(=0x10).
  The `bne` branch at 0xd8c933c targets 0xd8c9274, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0xd8c9354 targets 0xd8c9274 and is always taken.
  The `beq` branch at 0xd8c93a4 targets 0xd8c9400 and is always taken.
  The `beq` branch at 0xd8c93b0 targets 0xd8c9474, is taken when a0(?) == s3(?), and falls through when a0(?) != s3(?).
  The `beq` branch at 0xd8c93e0 targets 0xd8c93a0, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xd8c93f0 targets 0xd8c93a0, is taken when a4(?) >= v0(?) (signed), and falls through when a4(?) < v0(?) (signed).
  The `beq` branch at 0xd8c93f8 targets 0xd8c93b0 and is always taken.
  The `bne` branch at 0xd8c9404 targets 0xd8c93ac, is taken when a5(?) != at(?), and falls through when a5(?) == at(?).
  The `beq` branch at 0xd8c940c targets 0xd8c9424, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8c9418 targets 0xd8c9424, is taken when a4(?) == a5(?), and falls through when a4(?) != a5(?).
  The `bne` branch at 0xd8c9424 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c942c targets 0xd8c9448, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd8c943c targets 0xd8c9448, is taken when v1(?) == a4(?), and falls through when v1(?) != a4(?).
  The `bne` branch at 0xd8c9448 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c9450 targets 0xd8c959c, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xd8c9460 targets 0xd8c95a0, is taken when a5(?) >= v0(?) (signed), and falls through when a5(?) < v0(?) (signed).
  The `beq` branch at 0xd8c9468 targets 0xd8c95a0 and is always taken.
  The `blez` branch at 0xd8c9478 targets 0xd8c9640, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `beq` branch at 0xd8c9480 targets 0xd8c9558, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bltz` branch at 0xd8c948c targets 0xd8c94bc, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bltz` branch at 0xd8c94c0 targets 0xd8c94f0, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bltz` branch at 0xd8c94f4 targets 0xd8c9524, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bltz` branch at 0xd8c9528 targets 0xd8c9558, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bne` branch at 0xd8c95a0 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c95a8 targets 0xd8c9610, is taken when at(?) == s8(=-0x1), and falls through when at(?) != s8(=-0x1).
  The `beq` branch at 0xd8c95bc targets 0xd8c9614, is taken when v1(?) >= a4(?) (signed), and falls through when v1(?) < a4(?) (signed).
  The `beq` branch at 0xd8c95c4 targets 0xd8c9614 and is always taken.
  The `bne` branch at 0xd8c95d4 targets 0xd8c910c, is taken when a5(?) != at(=0xc), and falls through when a5(?) == at(=0xc).
  The `bne` branch at 0xd8c95e4 targets 0xd8c910c, is taken when a4(?) != a5(=0xc), and falls through when a4(?) == a5(=0xc).
  The `bne` branch at 0xd8c95f0 targets 0xd8c910c, is taken when at(?) != v1(=0xc), and falls through when at(?) == v1(=0xc).
  The `beq` branch at 0xd8c9608 targets 0xd8c910c and is always taken.
  The `bne` branch at 0xd8c9614 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c961c targets 0xd8c968c, is taken when at(?) == s8(=-0x1), and falls through when at(?) != s8(=-0x1).
  The `beq` branch at 0xd8c9630 targets 0xd8c9690, is taken when v1(?) >= a4(?) (signed), and falls through when v1(?) < a4(?) (signed).
  The `beq` branch at 0xd8c9638 targets 0xd8c9690 and is always taken.
  The `bne` branch at 0xd8c9690 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c9698 targets 0xd8c96bc, is taken when at(?) == s8(=-0x1), and falls through when at(?) != s8(=-0x1).
  The `beq` branch at 0xd8c96ac targets 0xd8c96c0, is taken when v1(?) >= a4(?) (signed), and falls through when v1(?) < a4(?) (signed).
  The `beq` branch at 0xd8c96b4 targets 0xd8c96c0 and is always taken.
  The `bne` branch at 0xd8c96c0 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c96c8 targets 0xd8c96e8, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xd8c96d8 targets 0xd8c96ec, is taken when a5(?) >= v0(?) (signed), and falls through when a5(?) < v0(?) (signed).
  The `beq` branch at 0xd8c96e0 targets 0xd8c96ec and is always taken.
  The `bne` branch at 0xd8c96ec targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c96f4 targets 0xd8c9718, is taken when at(?) == s8(=-0x1), and falls through when at(?) != s8(=-0x1).
  The `beq` branch at 0xd8c9708 targets 0xd8c971c, is taken when v1(?) >= a4(?) (signed), and falls through when v1(?) < a4(?) (signed).
  The `beq` branch at 0xd8c9710 targets 0xd8c971c and is always taken.
  The `bne` branch at 0xd8c971c targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c9724 targets 0xd8c9744, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xd8c9734 targets 0xd8c9748, is taken when a5(?) >= v0(?) (signed), and falls through when a5(?) < v0(?) (signed).
  The `beq` branch at 0xd8c973c targets 0xd8c9748 and is always taken.
  The `bne` branch at 0xd8c9748 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c9750 targets 0xd8c9770, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xd8c9760 targets 0xd8c9774, is taken when at(?) >= v0(?) (signed), and falls through when at(?) < v0(?) (signed).
  The `beq` branch at 0xd8c9768 targets 0xd8c9774 and is always taken.
  The `bne` branch at 0xd8c9774 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c977c targets 0xd8c979c, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xd8c978c targets 0xd8c97a0, is taken when v1(?) >= v0(?) (signed), and falls through when v1(?) < v0(?) (signed).
  The `beq` branch at 0xd8c9794 targets 0xd8c97a0 and is always taken.
  The `bne` branch at 0xd8c97a0 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c97a8 targets 0xd8c97c8, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xd8c97b8 targets 0xd8c97cc, is taken when a4(?) >= v0(?) (signed), and falls through when a4(?) < v0(?) (signed).
  The `beq` branch at 0xd8c97c0 targets 0xd8c97cc and is always taken.
  The `bne` branch at 0xd8c97cc targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c97d4 targets 0xd8c97f4, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xd8c97e4 targets 0xd8c97f8, is taken when a5(?) >= v0(?) (signed), and falls through when a5(?) < v0(?) (signed).
  The `beq` branch at 0xd8c97ec targets 0xd8c97f8 and is always taken.
  The `bne` branch at 0xd8c97f8 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c9800 targets 0xd8c981c, is taken when s6(=one of 0x0, 0x1) == 0, and falls through when s6(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd8c9810 targets 0xd8c981c, is taken when at(?) == v1(?), and falls through when at(?) != v1(?).
  The `bne` branch at 0xd8c981c targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c9824 targets 0xd8c983c, is taken when a6(?) == s8(=-0x1), and falls through when a6(?) != s8(=-0x1).
  The `beq` branch at 0xd8c9830 targets 0xd8c983c, is taken when a4(?) == a6(?), and falls through when a4(?) != a6(?).
  The `bne` branch at 0xd8c983c targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c9844 targets 0xd8c9860, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xd8c9854 targets 0xd8c9860, is taken when at(?) == v1(?), and falls through when at(?) != v1(?).
  The `bne` branch at 0xd8c9860 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c9868 targets 0xd8c9884, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xd8c9878 targets 0xd8c9884, is taken when a5(?) == at(?), and falls through when a5(?) != at(?).
  The `bne` branch at 0xd8c9884 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c988c targets 0xd8c98a8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8c989c targets 0xd8c98a8, is taken when a4(?) == a5(?), and falls through when a4(?) != a5(?).
  The `bne` branch at 0xd8c98a8 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c98b0 targets 0xd8c98cc, is taken when s7(=one of 0x0, 0x1) == 0, and falls through when s7(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd8c98c0 targets 0xd8c98cc, is taken when at(?) == v1(?), and falls through when at(?) != v1(?).
  The `bne` branch at 0xd8c98cc targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c98d4 targets 0xd8c98f0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xd8c98e4 targets 0xd8c98f0, is taken when a5(?) == at(?), and falls through when a5(?) != at(?).
  The `bne` branch at 0xd8c98f0 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c98f8 targets 0xd8c9914, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8c9908 targets 0xd8c9914, is taken when a4(?) == a5(?), and falls through when a4(?) != a5(?).
  The `bne` branch at 0xd8c9914 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c991c targets 0xd8c9938, is taken when t0(?) == s8(=-0x1), and falls through when t0(?) != s8(=-0x1).
  The `beq` branch at 0xd8c992c targets 0xd8c9938, is taken when at(?) == t0(?), and falls through when at(?) != t0(?).
  The `bne` branch at 0xd8c9938 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c9940 targets 0xd8c9960, is taken when v0(?) == s8(=-0x1), and falls through when v0(?) != s8(=-0x1).
  The `beq` branch at 0xd8c9950 targets 0xd8c9964, is taken when v1(?) == v0(?), and falls through when v1(?) != v0(?).
  The `beq` branch at 0xd8c9958 targets 0xd8c9964 and is always taken.
  The `bne` branch at 0xd8c9964 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c996c targets 0xd8c9980, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xd8c9978 targets 0xd8c99d4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xd8c9980 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c9988 targets 0xd8c99a8, is taken when s8(=-0x1) == v0(?), and falls through when s8(=-0x1) != v0(?).
  The `beq` branch at 0xd8c9998 targets 0xd8c99ac, is taken when at(?) >= v0(?) (unsigned), and falls through when at(?) < v0(?) (unsigned).
  The `beq` branch at 0xd8c99a0 targets 0xd8c99ac and is always taken.
  The `bne` branch at 0xd8c99ac targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c99b4 targets 0xd8c99dc, is taken when s8(=-0x1) == v0(?), and falls through when s8(=-0x1) != v0(?).
  The `beq` branch at 0xd8c99c4 targets 0xd8c99e0, is taken when v1(?) >= v0(?) (unsigned), and falls through when v1(?) < v0(?) (unsigned).
  The `beq` branch at 0xd8c99cc targets 0xd8c99e0 and is always taken.
  The `beq` branch at 0xd8c99d4 targets 0xd8c9980 and is always taken.
  The `bne` branch at 0xd8c99e0 targets 0xd8c93ac, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c99e8 targets 0xd8c9c5c, is taken when s8(=-0x1) == a6(?), and falls through when s8(=-0x1) != a6(?).
  The `beq` branch at 0xd8c9a00 targets 0xd8c9a30, is taken when v0(?) >= 0x1 (unsigned), and falls through when v0(?) < 0x1 (unsigned).
  The `bc1t` branch at 0xd8c9a0c targets 0xd8c9a28, is taken when f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xd8c9a08), and falls through when not (f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xd8c9a08)).
  The `bc1f` branch at 0xd8c9a1c targets 0xd8c9a28, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xd8c9a28 targets 0xd8c9c64, is taken when a6(=one of 0x0, 0x1) == 0, and falls through when a6(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd8c9a30 targets 0xd8c93ac, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xd8c9a38 targets 0xd8c93ac, is taken when t2(=one of 0x0, 0x1) != 0, and falls through when t2(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xd8c9a40 targets 0xd8c93ac, is taken when ra(=one of 0x0, 0x1) != 0, and falls through when ra(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xd8c9a48 targets 0xd8c93ac, is taken when t1(=one of 0x0, 0x1) != 0, and falls through when t1(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xd8c9a50 targets 0xd8c93ac, is taken when t9(=one of 0x0, 0x1) != 0, and falls through when t9(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xd8c9a58 targets 0xd8c93ac, is taken when a7(=one of 0x0, 0x1) != 0, and falls through when a7(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xd8c9a60 targets 0xd8c93ac, is taken when t8(=one of 0x0, 0x1) != 0, and falls through when t8(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xd8c9a68 targets 0xd8c93ac, is taken when a3(=one of 0x0, 0x1) != 0, and falls through when a3(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0xd8c9a70 targets 0xd8c93ac, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd8c9a9c targets 0xd8c9ab4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8c9aac targets 0xd8c9db0, is taken when at(?) == v1(=0xc), and falls through when at(?) != v1(=0xc).
  The `beq` branch at 0xd8c9ab4 targets 0xd8c9b44, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0xd8c9b38 targets 0xd8c9acc, is taken when a6(?) != a4(?), and falls through when a6(?) == a4(?).
  The `beq` branch at 0xd8c9b44 targets 0xd8c9da4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xd8c9b60 targets 0xd8c9b7c, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xd8c9b74 targets 0xd8c9b68, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xd8c9b80 targets 0xd8c9bb4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xd8c9bac targets 0xd8c9b8c, is taken when v0(?) != a7(?), and falls through when v0(?) == a7(?).
  The `beq` branch at 0xd8c9bb8 targets 0xd8c9c30, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0xd8c9bc8 targets 0xd8c9bdc, is taken when t0(?) < a6(?) (signed), and falls through when t0(?) >= a6(?) (signed).
  The `beq` branch at 0xd8c9bd0 targets 0xd8c9bdc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd8c9be4 targets 0xd8c9bf8, is taken when t0(?) < a6(?) (signed), and falls through when t0(?) >= a6(?) (signed).
  The `beq` branch at 0xd8c9bec targets 0xd8c9bf8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xd8c9c00 targets 0xd8c9c14, is taken when t0(?) < a6(?) (signed), and falls through when t0(?) >= a6(?) (signed).
  The `beq` branch at 0xd8c9c08 targets 0xd8c9c14, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0xd8c9c1c targets 0xd8c9c30, is taken when t0(?) < a6(?) (signed), and falls through when t0(?) >= a6(?) (signed).
  The `beq` branch at 0xd8c9c24 targets 0xd8c9c30, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8c9c34 targets 0xd8c9d9c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bltz` branch at 0xd8c9c40 targets 0xd8c9d98, is taken when at(?) < 0 (signed), and falls through when at(?) >= 0 (signed).
  The `bne` branch at 0xd8c9c4c targets 0xd8c9c3c, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0xd8c9c54 targets 0xd8c9d9c and is always taken.
  The `beq` branch at 0xd8c9c5c targets 0xd8c9a30 and is always taken.
  The `bc1t` branch at 0xd8c9c6c targets 0xd8c9c88, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `bc1f` branch at 0xd8c9c7c targets 0xd8c9c88, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bne` branch at 0xd8c9c88 targets 0xd8c9a30, is taken when a6(=one of 0x0, 0x1) != 0, and falls through when a6(=one of 0x0, 0x1) == 0.
  The `bc1t` branch at 0xd8c9c98 targets 0xd8c9cb4, is taken when f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xd8c9c94), and falls through when not (f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xd8c9c94)).
  The `bc1f` branch at 0xd8c9ca8 targets 0xd8c9cb4, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bne` branch at 0xd8c9cb4 targets 0xd8c9a30, is taken when a6(=one of 0x0, 0x1) != 0, and falls through when a6(=one of 0x0, 0x1) == 0.
  The `bc1t` branch at 0xd8c9cc4 targets 0xd8c9ce0, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `bc1f` branch at 0xd8c9cd4 targets 0xd8c9ce0, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bne` branch at 0xd8c9ce0 targets 0xd8c9a30, is taken when a6(=one of 0x0, 0x1) != 0, and falls through when a6(=one of 0x0, 0x1) == 0.
  The `bc1t` branch at 0xd8c9cf0 targets 0xd8c9d0c, is taken when f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xd8c9cec), and falls through when not (f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xd8c9cec)).
  The `bc1f` branch at 0xd8c9d00 targets 0xd8c9d0c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bne` branch at 0xd8c9d0c targets 0xd8c9a30, is taken when a6(=one of 0x0, 0x1) != 0, and falls through when a6(=one of 0x0, 0x1) == 0.
  The `bc1t` branch at 0xd8c9d1c targets 0xd8c9d38, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `bc1f` branch at 0xd8c9d2c targets 0xd8c9d38, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bne` branch at 0xd8c9d38 targets 0xd8c9a30, is taken when a6(=one of 0x0, 0x1) != 0, and falls through when a6(=one of 0x0, 0x1) == 0.
  The `bc1t` branch at 0xd8c9d48 targets 0xd8c9d64, is taken when f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xd8c9d44), and falls through when not (f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xd8c9d44)).
  The `bc1f` branch at 0xd8c9d58 targets 0xd8c9d64, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bne` branch at 0xd8c9d64 targets 0xd8c9a30, is taken when a6(=one of 0x0, 0x1) != 0, and falls through when a6(=one of 0x0, 0x1) == 0.
  The `bc1t` branch at 0xd8c9d74 targets 0xd8c9d90, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `bc1f` branch at 0xd8c9d84 targets 0xd8c9d90, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xd8c9d90 targets 0xd8c9a30 and is always taken.
  The `beq` branch at 0xd8c9d9c targets 0xd8c93ac and is always taken.
  The `beq` branch at 0xd8c9da8 targets 0xd8c9bb4 and is always taken.
  The `bne` branch at 0xd8c9db8 targets 0xd8c9ab4, is taken when at(?) != v1(=0xc), and falls through when at(?) == v1(=0xc).
  The `bne` branch at 0xd8c9dc8 targets 0xd8c9ab4, is taken when a4(?) != a5(=0xc), and falls through when a4(?) == a5(=0xc).
  The `bne` branch at 0xd8c9dd8 targets 0xd8c9ab4, is taken when at(?) != v1(=0xc), and falls through when at(?) == v1(=0xc).
  The `bne` branch at 0xd8c9de8 targets 0xd8c9ab4, is taken when a4(?) != a5(=0x10), and falls through when a4(?) == a5(=0x10).
  The `bne` branch at 0xd8c9df0 targets 0xd8c9ab4, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8c9e10 targets 0xd8c9ab4 and is always taken.
  The return at 0xd8c87a0 has v0 = 0x0.
  The return at 0xd8c893c has v0 = 0x0.
  The return at 0xd8c8a0c has v0 = 0x0.
  The return at 0xd8c8a6c has v0 = 0x0.
  The return at 0xd8c8aa4 has v0 = 0x0.
  The return at 0xd8c8ae0 has v0 = ret(malloc).
  The return at 0xd8c8ce0 has v0 = 0x0.
  The return at 0xd8c9068 has v0 = 0x0.
  The return at 0xd8c9398 has v0 = ret(malloc).
  The return at 0xd8c9594 has v0 = ret(malloc).
  The return at 0xd8c9684 has v0 = 0x0.

- `glXGetFBConfigs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c9e18 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8c9e18-0xd8c9fa8 (400 bytes).
  It occupies 400 bytes.
  The `lw` at 0xd8c9e58 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd8c9e7c loads 4 bytes from ret(__glXInitialize) +0x20.
  The `lw` at 0xd8c9e8c loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10.
  The `lw` at 0xd8c9e90 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc.
  9 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8c9ef4, `sw` at 0xd8c9f24, `sw` at 0xd8c9f2c.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd8c9f60, `sw` at 0xd8c9f8c.
  The `jalr` at 0xd8c9e40 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8c9e9c calls malloc with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12], a2=(a1 << 0x5), a3=?.
  The `beq` branch at 0xd8c9e48 targets 0xd8c9f70, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `bltz` branch at 0xd8c9e50 targets 0xd8c9e68, is taken when s0(=a1) < 0 (signed), and falls through when s0(=a1) >= 0 (signed).
  The `bne` branch at 0xd8c9e60 targets 0xd8c9e7c, is taken when s0(=a1) < v1(=[a0+136]) (signed), and falls through when s0(=a1) >= v1(=[a0+136]) (signed).
  The `beq` branch at 0xd8c9eac targets 0xd8c9f88, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `blez` branch at 0xd8c9ec4 targets 0xd8c9f60, is taken when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed), and falls through when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  The `beq` branch at 0xd8c9ee4 targets 0xd8c9f00, is taken when (a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) & 0x7) == 0, and falls through when (a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) & 0x7) != 0.
  The `bne` branch at 0xd8c9ef8 targets 0xd8c9eec, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xd8c9f0c targets 0xd8c9f60, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd8c9f58 targets 0xd8c9f18, is taken when a1(?) != a5(?), and falls through when a1(?) == a5(?).
  The return at 0xd8c9e74 has v0 = 0x0.
  The return at 0xd8c9f68 has v0 = ret(malloc).
  The return at 0xd8c9f80 has v0 = 0x0.
  The return at 0xd8c9fa0 has v0 = 0x0.

- `glXCreateNewContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ca204 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ca204-0xd8ca258 (84 bytes).
  It occupies 84 bytes.
  The `jalr` at 0xd8ca240 calls (unnamed) [0xd8c18f8] with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=0x0, a7=0x0.
  The return at 0xd8ca250 has v0 = ret(0xd8c18f8).

- `glXQueryContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ca610 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ca610-0xd8ca6dc (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0xd8ca614 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `lw` at 0xd8ca664 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lw` at 0xd8ca6a8 loads 4 bytes from a1 (arg1 at entry) +0x20.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xd8ca6ac, `sw` at 0xd8ca6cc, `sw` at 0xd8ca6d8.
  The `lw` at 0xd8ca6c4 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lw` at 0xd8ca6d0 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `bgezall` at 0xd8ca680 calls (unnamed) [0xd8ca258] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd8ca62c targets 0xd8ca664, is taken when at(=[a1+196]) == 0, and falls through when at(=[a1+196]) != 0.
  The `beq` branch at 0xd8ca644 targets 0xd8ca6c4, is taken when s0(=a2) == v1(=0x8013), and falls through when s0(=a2) != v1(=0x8013).
  The `beq` branch at 0xd8ca64c targets 0xd8ca6d0, is taken when s0(=a2) == a4(=0x8011), and falls through when s0(=a2) != a4(=0x8011).
  The `beq` branch at 0xd8ca654 targets 0xd8ca6a8, is taken when s0(=a2) == a5(=0x800c), and falls through when s0(=a2) != a5(=0x800c).
  The `bne` branch at 0xd8ca668 targets 0xd8ca638, is taken when at(=[a1+44]) != 0, and falls through when at(=[a1+44]) == 0.
  The `beq` branch at 0xd8ca690 targets 0xd8ca634, is taken when v0(=ret(0xd8ca258)) == 0, and falls through when v0(=ret(0xd8ca258)) != 0.
  The `beq` branch at 0xd8ca6c8 targets 0xd8ca6b0 and is always taken.
  The `beq` branch at 0xd8ca6d4 targets 0xd8ca6b0 and is always taken.
  The return at 0xd8ca65c has v0 = 0x2.
  The return at 0xd8ca6a0 has v0 = ret(0xd8ca258).
  The return at 0xd8ca6bc has v0 = 0x0.

- `glXCreateWindow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ca6dc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ca6dc-0xd8ca828 (332 bytes).
  It occupies 332 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8ca724, `lw` at 0xd8ca7c0.
  The `lw` at 0xd8ca730 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8ca73c, `lw` at 0xd8ca770, `lw` at 0xd8ca814.
  The `lw` at 0xd8ca740 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8ca754 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8ca75c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8ca764, `sb` at 0xd8ca788.
  The `lw` at 0xd8ca76c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8ca778 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8ca780 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sb` at 0xd8ca784 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8ca78c loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd8ca790 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8ca798 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd8ca79c stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8ca7a0 stores 4 bytes to [a0+108] +0x8.
  The `lw` at 0xd8ca7a4 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd8ca7b8 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd8ca7bc stores 4 bytes to [a0+108] +0x10.
  The `lw` at 0xd8ca7cc loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8ca7d8 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd8ca704 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8ca734 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd8ca7ac calls (unknown callee) with a0=a0 at entry (arg0), a1=[a1+36], a2=0x1f, a3=?, a4=[a0+96]+1, a5=[a0+108]+24, a6=0x6.
  The `jalr` at 0xd8ca7d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd8ca7e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ca808 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8ca71c targets 0xd8ca818, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8ca728 targets 0xd8ca73c, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xd8ca74c targets 0xd8ca804, is taken when a4(=[a0+112]) < at(=[a0+108]+24) (unsigned), and falls through when a4(=[a0+112]) >= at(=[a0+108]+24) (unsigned).
  The `beq` branch at 0xd8ca7c4 targets 0xd8ca7d8, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd8ca7dc targets 0xd8ca7f0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8ca810 targets 0xd8ca750 and is always taken.
  The return at 0xd8ca7fc has v0 = ret(?).
  The return at 0xd8ca820 has v0 = 0x0.

- `glXDestroyWindow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ca828 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ca828-0xd8ca938 (272 bytes).
  It occupies 272 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8ca868, `lw` at 0xd8ca8d4.
  The `lw` at 0xd8ca874 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8ca880, `lw` at 0xd8ca8b4, `lw` at 0xd8ca924.
  The `lw` at 0xd8ca884 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8ca898 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8ca8a0, `sb` at 0xd8ca8d0.
  The `sh` at 0xd8ca8a8 stores 2 bytes to [a0+108] +0x2.
  The `lw` at 0xd8ca8b0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8ca8bc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8ca8c4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8ca8c8 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd8ca8cc stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8ca8e0 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8ca8ec loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd8ca84c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8ca878 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+1232].
  The `jalr` at 0xd8ca8e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=0x20, a3=[a0+1232].
  The `jalr` at 0xd8ca8f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ca918 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8ca860 targets 0xd8ca928, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8ca86c targets 0xd8ca880, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `bne` branch at 0xd8ca890 targets 0xd8ca914, is taken when at(=[a0+112]) < v0(=[a0+108]+8) (unsigned), and falls through when at(=[a0+112]) >= v0(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xd8ca8d8 targets 0xd8ca8ec, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `beq` branch at 0xd8ca8f0 targets 0xd8ca904, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8ca920 targets 0xd8ca894 and is always taken.
  The return at 0xd8ca90c has v0 = one of ?, ret(?).
  The return at 0xd8ca930 has v0 = ret(__glXSetupForCommand).

- `__glXGetReadDrawableSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cab24 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cab24-0xd8cac08 (228 bytes).
  It occupies 228 bytes.
  The `lw` at 0xd8cab2c loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0xd8cab30 loads 4 bytes from [a0+76] +0x11c.
  The `lw` at 0xd8cab4c loads 4 bytes from [a0+76] +0x120.
  4 such `lw` accesses load 4 bytes from [a0+76] +0xdc, including `lw` at 0xd8cab6c, `lw` at 0xd8cab84, `lw` at 0xd8caba4.
  4 such `lw` accesses load 4 bytes from [a0+76] +0xd8, including `lw` at 0xd8cab78, `lw` at 0xd8cab90, `lw` at 0xd8cabb8.
  The `sw` at 0xd8cabf0 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0xd8cac04 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd8cab74 calls glXQueryGLXPbufferSGIX with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=0x801d, a3=sp-80.
  The `jalr` at 0xd8cab8c calls glXQueryGLXPbufferSGIX with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=0x801e, a3=sp-76.
  The `jalr` at 0xd8cabbc calls glXQueryDrawable with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=0x801d, a3=sp-80.
  The `jalr` at 0xd8cabd4 calls glXQueryDrawable with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=0x801e, a3=sp-76.
  The `bne` branch at 0xd8cab44 targets 0xd8caba0, is taken when at(=[[a0+76]+284]) != v0(=0x1), and falls through when at(=[[a0+76]+284]) == v0(=0x1).
  The `beq` branch at 0xd8cab5c targets 0xd8caba0, is taken when a0(=[[a0+76]+288]) >= 0x3 (signed), and falls through when a0(=[[a0+76]+288]) < 0x3 (signed).
  The `beq` branch at 0xd8cab98 targets 0xd8cabe4 and is always taken.
  The return at 0xd8cac00 has v0 = ?.

- `glXJoinSwapGroupSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cad24 (n32).
  Inferred: queues a fixed 0x14-byte request in the display's output buffer without waiting for an answer, since arg0+0x6c moves up by 0x14 and the `bne` at 0xd8cad90 diverts to `_XFlush` (0xd8cae30) when arg0+0x70 would be passed.
  It calls `__glXSetupForCommand` with the entry arguments (`jalr` at 0xd8cad50) and keeps the low 8 bits of the result in `a0` (at 0xd8cad5c). When the table pointer at arg0+0x4d0 is nonzero (`beq` at 0xd8cad60), slot +0x0 of that table is called with arg0 in `a0` and the table pointer in `a1` (`jalr` at 0xd8cad70); the kept byte is saved before that call and reloaded after it (0xd8cad6c, 0xd8cad78).
  The `sw` at 0xd8cad98 copies the cursor into arg0+0x64. Into the record at the cursor go byte 0x10 at +0x0 (`sb` at 0xd8cada0), halfword 5 at +0x2 (`sh` at 0xd8cada8), 0x1000b at +0x4 (`sw` at 0xd8cadd4), byte 0x10 at +0x1 (`sb` at 0xd8cadd8), entry `a1` at +0xc (`sw` at 0xd8cadcc) and entry `a2` at +0x10 (`sw` at 0xd8cade0). Byte +0x0 is overwritten with the kept low byte of the setup result (`sb` at 0xd8caddc). The counter at arg0+0x60 is bumped by 1 and the cursor by 0x14 (`sw` at 0xd8cadbc and 0xd8cadc4).
  When the limit test at 0xd8cad90 holds, `_XFlush` is called (`jalr` at 0xd8cae30) and the cursor is reloaded (`lw` at 0xd8cae38) before the stores.
  Once the stores are done, the second slot (+0x4) of the table behind arg0+0x4d0 runs (`jalr` at 0xd8cadf8, skipped by the `beq` at 0xd8cade8 on a zero pointer), followed by the function pointer at arg0+0x7c (`jalr` at 0xd8cae10, skipped by the `beq` at 0xd8cae08 on zero).
  Unknown: which code the table slots and the arg0+0x7c pointer reach, hence the device-side result of the request; whatever fills those fields of the display record would settle it.
  Unknown: the `v0` returned by the `jr ra` at 0xd8cae24 on the path where the arg0+0x7c pointer is zero; the bundle prints `?` for it, and a trace of `v0` from the slot +0x4 call settles it.
  Evidence grade: inferred.

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

- `glXBindSwapBarrierSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cae48
  **Inferred.** A short request routine. It calls `__glXSetupForCommand` at 0xd8cae74, makes three calls whose callee the facts do not resolve (0xd8cae94, 0xd8caf1c, 0xd8caf34), and calls `_XFlush` at 0xd8caf54 when the buffer lacks room. Role (from name): binding a swap barrier; the argument layout is not decoded.
  Reviewed: 2026-11-12

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

- `glXQueryMaxSwapBarriersSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8caf6c
  Evidence grade: inferred.
  `glXQueryMaxSwapBarriersSGIX` calls `__glXSetupForCommand` and then `_XReply`. A `_XFlush` call sits on a branch taken before the `_XReply` call is reached, not after it. The name suggests it returns the maximum swap-barrier count. The reply field offsets are not decoded.
  Reviewed: 2026-11-12

- `glXBindChannelToWindowSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cb27c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cb27c-0xd8cb3b8 (316 bytes).
  It occupies 316 bytes.
  The `lw` at 0xd8cb2a0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8cb2bc loads 4 bytes from [0x1014] +0x114.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8cb354, `sb` at 0xd8cb38c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8cb364, `lw` at 0xd8cb368, `lw` at 0xd8cb36c.
  The `jalr` at 0xd8cb2c4 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd8cb2f0 calls __glXInitChannelRectState [0xd8cb0ec] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd8cb320 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-112, a5=0x4.
  The `jalr` at 0xd8cb338 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd8cb374 calls (unknown callee) with a0=?, a1=0x1, a2=?, a3=?.
  The `beq` branch at 0xd8cb2d4 targets 0xd8cb398, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0xd8cb2f8 targets 0xd8cb398, is taken when v0(=ret(__glXInitChannelRectState)) == 0, and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beq` branch at 0xd8cb358 targets 0xd8cb38c, is taken when s3(=a3) == 0, and falls through when s3(=a3) != 0.
  The `bne` branch at 0xd8cb384 targets 0xd8cb394, is taken when at(=a3) != 0, and falls through when at(=a3) == 0.
  The return at 0xd8cb3b0 has v0 = one of 0x0, 0x1.

- `glXAssociateDMPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cb8d8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cb8d8-0xd8cb918 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0xd8cb8fc calls __glXPostError with a0=a0 at entry (arg0), a1=0x9, a2=0x10, a3=0x0.
  The return at 0xd8cb910 has v0 = 0x0.

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
  The return at 0xd8cbb3c has v0 = ?.
  The return at 0xd8cbb98 has v0 = 0x0.

- `glXQueryHyperpipeNetworkSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cb918
  Evidence grade: inferred.
  `glXQueryHyperpipeNetworkSGIX` reads a reply through `_XReply`, allocates a buffer with `malloc`, and pulls the payload with `_XRead` and `_XEatData`. It finishes with `_XFlush`. The allocation size is probably taken from the reply, but the payload fields are not decoded.
  Reviewed: 2026-11-12

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

- `glXHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cbba0
  **Inferred.** It calls `__glXSetupForCommand` at 0xd8cbbdc and `_XReply` at 0xd8cbd50 (a stack buffer as a1, a2 and a3 zero), and `_XFlush` at 0xd8cbe44. It returns 0x0 at 0xd8cbdc8 and 0x5b at four other exits (for example 0xd8cbde8). Role (from name): the set side of the hyperpipe configuration pair with `glXQueryHyperpipeConfigSGIX` at 0xd8cc044; the packed config fields are not decoded.
  Reviewed: 2026-11-12

- `glXDestroyHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cbecc (n32).
  Inferred: writes a 0x20-byte request at the output-buffer cursor in arg0+0x6c and then blocks on the answer, since `_XFlush` (0xd8cbfec) runs when the limit at arg0+0x70 would be passed and `_XReply` (`jalr` at 0xd8cbf94) is called after the write.
  `__glXSetupForCommand` (`jalr` at 0xd8cbef4) runs first and its low byte is kept (`andi` result in `t2`, saved at 0xd8cbf0c on the call path). If the table pointer at arg0+0x4d0 is nonzero (`beq` at 0xd8cbf00), entry +0 of that table is called (`jalr` at 0xd8cbf10) with arg0 in `a0`, the table pointer in `a1` and the setup's low byte in `a6`.
  If the limit at arg0+0x70 is below the cursor plus 0x20 (`bne` at 0xd8cbf2c), `_XFlush` runs before the write. The cursor value is copied to arg0+0x64 (0xd8cbf34); byte 0x10 goes to +0x0, halfword 8 to +0x2, 0x10011 to +0x4, byte 0x11 to +0x1, the word at arg0+0x84 to +0xc, entry `a1` to +0x10, and +0x0 is then overwritten with the setup's low byte (0xd8cbf6c). The word at arg0+0x6c then grows by 0x20 and the word at arg0+0x60 by 1 (0xd8cbf60, 0xd8cbf54).
  `_XReply` is called with arg0, the frame bottom (sp at entry minus 0x60) in `a1`, and zeros in `a2` and `a3`.
  A zero result (`beq` at 0xd8cbf9c) goes to 0xd8cc000: the entry +4 call (`jalr` at 0xd8cc00c, guarded at 0xd8cc000) and the arg0+0x7c call (`jalr` at 0xd8cc020, guarded at 0xd8cc018) run only where their pointers are nonzero, and the routine returns 0x5c (0xd8cc030).
  A nonzero result runs the same two calls (`jalr` at 0xd8cbfb0 and 0xd8cbfc4, guarded at 0xd8cbfa4 and 0xd8cbfbc) and returns the word at frame offset 0x10 above the buffer start, loaded at 0xd8cbfa8 after `_XReply` returned and returned in `v0` (return at 0xd8cbfe0).
  Unknown: the routines behind the calls at 0xd8cbf10, 0xd8cbfb0, 0xd8cbfc4, 0xd8cc00c and 0xd8cc020, which the table pointers at arg0+0x4d0 and arg0+0x7c select, and so the device-side result of the request.
  Unknown: the reply field that ends up at frame offset 0x10 and is returned; settling it takes the code behind `_XReply`.
  Evidence grade: inferred.

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
  The return at 0xd8cc25c has v0 = ?.
  The return at 0xd8cc2c0 has v0 = 0x0.

- `glXQueryHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cc044
  **Inferred.** It calls `__glXSetupForCommand` at 0xd8cc070 and `_XReply` at 0xd8cc118 (a stack buffer as a1, a2 and a3 zero), then `malloc` at 0xd8cc19c, `_XEatData` at 0xd8cc1b4, `_XRead` at 0xd8cc214 into the malloc result, and `_XFlush` at 0xd8cc268. It returns 0x0 on most exits; the return at 0xd8cc25c is unresolved. Role (from name): the query side of the hyperpipe configuration pair; the record layout is not decoded.
  Reviewed: 2026-11-12

- `glXCreatePbuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cc530 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cc530-0xd8cc818 (744 bytes).
  It occupies 744 bytes.
  The `lw` at 0xd8cc57c loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd8cc5b0 stores 4 bytes to ret(__glXAddDrawableInterest) +0x2c.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0xd8cc5b4, `lw` at 0xd8cc6e8.
  10 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8cc5c0, `lw` at 0xd8cc5d0, `lw` at 0xd8cc5e0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8cc624, `lw` at 0xd8cc750.
  The `lw` at 0xd8cc630 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8cc63c, `lw` at 0xd8cc67c, `lw` at 0xd8cc7d4.
  The `lw` at 0xd8cc644 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8cc65c stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8cc668, `sb` at 0xd8cc698.
  The `sh` at 0xd8cc670 stores 2 bytes to [a0+108] +0x2.
  The `lw` at 0xd8cc678 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cc684 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cc694 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sb` at 0xd8cc69c stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8cc6a0 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd8cc6a4 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8cc6ac loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd8cc6b4 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8cc6bc stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8cc6c8 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd8cc6ec stores 4 bytes to [a0+108] +0x14.
  The `lw` at 0xd8cc6f4 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `sw` at 0xd8cc700 stores 4 bytes to [a0+108] +0x18.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8cc724, `sw` at 0xd8cc72c, `sw` at 0xd8cc734.
  The `lw` at 0xd8cc75c loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8cc768 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd8cc564 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8cc580 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc594 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?, a4=ret(?).
  The `jalr` at 0xd8cc634 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8cc760 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8cc774 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc780 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc7cc calls _XFlush with a0=a0 at entry (arg0), a1=[a0+108], a2=?, a3=?.
  The `jalr` at 0xd8cc7f0 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x1b, a3=0x0.
  The `beq` branch at 0xd8cc574 targets 0xd8cc7a8, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8cc5a0 targets 0xd8cc7e0, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `beq` branch at 0xd8cc5ac targets 0xd8cc624, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `beq` branch at 0xd8cc5b8 targets 0xd8cc624, is taken when a3(=[a2]) == 0, and falls through when a3(=[a2]) != 0.
  The `beq` branch at 0xd8cc5c8 targets 0xd8cc624, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xd8cc5d8 targets 0xd8cc624, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd8cc5e8 targets 0xd8cc624, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8cc5f8 targets 0xd8cc624, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xd8cc608 targets 0xd8cc624, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0xd8cc61c targets 0xd8cc5c0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8cc628 targets 0xd8cc63c, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd8cc654 targets 0xd8cc7c8, is taken when v1(=[a0+112]) < a3(?) (unsigned), and falls through when v1(=[a0+112]) >= a3(?) (unsigned).
  The `beq` branch at 0xd8cc6c4 targets 0xd8cc750, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `bne` branch at 0xd8cc6d8 targets 0xd8cc750, is taken when s1(?) < 0x0 (signed), and falls through when s1(?) >= 0x0 (signed).
  The `beq` branch at 0xd8cc6e0 targets 0xd8cc704, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd8cc710 targets 0xd8cc750, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0xd8cc748 targets 0xd8cc720, is taken when v0(?) != a2(=-0x1), and falls through when v0(?) == a2(=-0x1).
  The `beq` branch at 0xd8cc754 targets 0xd8cc768, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cc76c targets 0xd8cc77c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8cc7d8 targets 0xd8cc65c and is always taken.
  The return at 0xd8cc7a0 has v0 = ret(?).
  The return at 0xd8cc7c0 has v0 = 0x0.
  The return at 0xd8cc810 has v0 = 0x0.

- `glXDestroyPbuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cc818 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cc818-0xd8cc96c (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0xd8cc87c loads 4 bytes from ret(__glXAddDrawableInterest) +0x14.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8cc890, `lw` at 0xd8cc8fc.
  The `lw` at 0xd8cc89c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8cc8a8, `lw` at 0xd8cc8dc, `lw` at 0xd8cc960.
  The `lw` at 0xd8cc8ac loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8cc8c0 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8cc8c8 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8cc8d0, `sb` at 0xd8cc8f8.
  The `lw` at 0xd8cc8d8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cc8e4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cc8ec stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8cc8f0 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd8cc8f4 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8cc908 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8cc914 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `sw` at 0xd8cc968 stores 4 bytes to ret(__glXAddDrawableInterest) +0x0.
  The `jalr` at 0xd8cc840 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8cc864 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc874 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc888 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=[ret(__glXAddDrawableInterest)+20].
  The `jalr` at 0xd8cc8a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc90c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=0x1c, a3=?.
  The `jalr` at 0xd8cc920 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc954 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8cc854 targets 0xd8cc940, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8cc880 targets 0xd8cc964, is taken when a3(=[ret(__glXAddDrawableInterest)+20]) == 0, and falls through when a3(=[ret(__glXAddDrawableInterest)+20]) != 0.
  The `beq` branch at 0xd8cc894 targets 0xd8cc8a8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xd8cc8b8 targets 0xd8cc954, is taken when at(=[a0+112]) < v1(=[a0+108]+8) (unsigned), and falls through when at(=[a0+112]) >= v1(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xd8cc900 targets 0xd8cc914, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cc918 targets 0xd8cc92c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8cc95c targets 0xd8cc8c0 and is always taken.
  The `beq` branch at 0xd8cc964 targets 0xd8cc884 and is always taken.
  The return at 0xd8cc938 has v0 = one of ?, ret(?).
  The return at 0xd8cc94c has v0 = ret(__glXSetupForCommand).

- `__glx_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cdd50 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cdd50-0xd8cddbc (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd8cdd50 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8cdd54 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8cdd58 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sw` at 0xd8cdd5c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd8cdd64 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd8cdd6c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `lw` at 0xd8cdd70 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8cdd94 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8cddac calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=0x81d, a3=[[0x1014]+276].
  The `bne` branch at 0xd8cdd90 targets 0xd8cdda4, is taken when at(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when at(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned).
  The `beq` branch at 0xd8cddb4 targets 0xd8cdd98 and is always taken.
  The return at 0xd8cdd9c has v0 = one of 0x1bbf8, ret(__glXFlushRenderBuffer).

- `__glx_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ce058 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ce058-0xd8ce0d4 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd8ce058 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8ce05c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8ce060 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sb` at 0xd8ce064 stores 1 byte to [[[0x1014]+276]+4] +0x7.
  The `sb` at 0xd8ce068 stores 1 byte to [[[0x1014]+276]+4] +0x6.
  The `sb` at 0xd8ce06c stores 1 byte to [[[0x1014]+276]+4] +0x5.
  The `sb` at 0xd8ce070 stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd8ce078 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8ce080 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8ce084 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8ce0a0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8ce0c4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[[[0x1014]+276]+4]+8, a6=[[0x1014]+276].
  The `bne` branch at 0xd8ce0a4 targets 0xd8ce0b8, is taken when at(=[[[0x1014]+276]+8]) < a5(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when at(=[[[0x1014]+276]+8]) >= a5(=[[[0x1014]+276]+4]+8) (unsigned).
  The `beq` branch at 0xd8ce0cc targets 0xd8ce0ac and is always taken.
  The return at 0xd8ce0b0 has v0 = one of 0x1b8f0, ret(__glXFlushRenderBuffer).

- `__glx_InstrumentsBufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ce39c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ce39c-0xd8ce4f8 (348 bytes).
  It occupies 348 bytes.
  The `lw` at 0xd8ce3a4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8ce3a8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8ce3b0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8ce3e4 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8ce3e8, `lw` at 0xd8ce498.
  The `lw` at 0xd8ce3f4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8ce400, `lw` at 0xd8ce430, `lw` at 0xd8ce4f4.
  The `lw` at 0xd8ce404 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd8ce418 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd8ce420 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8ce428, `sb` at 0xd8ce458.
  The `lw` at 0xd8ce42c loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8ce438 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8ce440 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd8ce444 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd8ce44c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd8ce454 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8ce464 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8ce470 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd8ce47c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `lw` at 0xd8ce4a8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd8ce4b8 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd8ce3e0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8ce3f8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8ce478 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-96, a2=0x0, a3=0x0, a4=[[[[0x1014]+276]+216]+108]+16, a5=[[[[0x1014]+276]+216]+108], a6=0x4, a7=0x10.
  The `jalr` at 0xd8ce490 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0xd8ce4ac calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8ce4c4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ce4e8 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a5=[[[[0x1014]+276]+216]+108].
  The `beq` branch at 0xd8ce3cc targets 0xd8ce4d0, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8ce3ec targets 0xd8ce400, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd8ce410 targets 0xd8ce4e8, is taken when at(=[[[[0x1014]+276]+216]+112]) < v0(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when at(=[[[[0x1014]+276]+216]+112]) >= v0(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  The `beq` branch at 0xd8ce4a0 targets 0xd8ce4b8, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd8ce4bc targets 0xd8ce4d0, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd8ce4f0 targets 0xd8ce418 and is always taken.
  The return at 0xd8ce4e0 has v0 = one of ?, ret(?).
