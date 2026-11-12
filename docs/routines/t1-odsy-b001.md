# Tier-1 routine readings, odsy batch 1

Role statements for 25 routines from the odsy binaries. Each statement comes from the rendered facts for that routine: registers, calls, constants and branch shape. These describe software behavior, not hardware behavior. Every grade is inferred, because the facts do not fully establish any role. Where a name or a partial body read is all there is, the statement says so.

- `LookupKnownGroup` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d9564.
  Grade: inferred.
  Calls LookupCSetId at 0xd9da0fc with a0 = the context plus 93304 (a per-context table at that offset) and a1 to a3 passed through. On the branch where its result is 0 it calls an unnamed callee with a1 = 0x54 (an allocation by size), raises error 0x505 through __glSetError at 0xd9d9610 if that returns 0, clears the 0x54-byte result with bzero, and registers it with AddKnownGroup at 0xd9d99d4. It then calls LookupCoresidRange at 0xd9d96c8 with a2 = 0 and a3 = 0xf, and when that returns 0 it calls RemoveKnownGroup at 0xd9d9a30. The return is either the LookupCSetId result or a value the facts do not resolve. What a group and its cset id stand for is not clear from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `LookupCoresidRange` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d96c8.
  Grade: inferred.
  Reads a slot at offset +0xc of a table passed in a1 and indexed by a2, then loops over a chain of entries comparing a value against a3. On a later path it allocates a 0x2c-byte buffer through an unnamed callee, clears it with bzero at 0xd9d97a0, and calls __glOdysseyIoctl at 0xd9d9800 with request 0x6f640004 (the ASCII letters "od" followed by 0004). It can raise error 0x505 through __glSetError when the allocation call returns 0. The facts do not say when the driver path is taken, or what the ranges describe.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyDriverMakeCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9ec21c.
  Grade: inferred.
  Role (from name): makes a driver context current. It calls __glOdysseyIoctl at 0xd9ec2a0 with request 0x6f640008 and returns 0 or 1, the only two values the facts show. Before the ioctl it reads context fields at +0xce4, +0xd84, +0xc94 and +0xd34, and branches on the bytes at +3220 (0xc94) and +3380 (0xd34); what those branches skip is not shown. After the ioctl a switch on a returned value (0, 1 or 2) selects which context words from +0x16d40 to +0x16db0 are stored, and one arm clears sub-blocks with bzero at +93544, +93584 and +93604. The arms store different subsets of those words. The meaning of each field is not identified.
  Reviewed: 2026-11-12 (sonnet)

- `GetFBConfigsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd81b210.
  Grade: inferred.
  Role (from name): fetches framebuffer configurations for the client over the X wire protocol. It waits for the reply with _XReply at 0xd81b2c8 (the request itself is written to the buffer by the stores just before), and reads reply data with _XRead at 0xd81b5d0. When the output buffer lacks room it calls _XFlush at 0xd81b424. Result storage comes from malloc at 0xd81b33c and 0xd81b3b4; the first allocation is freed with free at 0xd81b3cc on the path where the second malloc returns 0. A long chain of comparisons of an attribute value against small codes and 0x80xx tokens such as 0x8017, 0x8018 and 0x801a is present, but what each comparison stores is not read here.
  Reviewed: 2026-11-12 (sonnet)

- `isNotProxy` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8323bc.
  Grade: inferred.
  Opens a path from the string at 0xd844560 with flags 0x802 (open at 0xd8323f4), then calls fcntl at 0xd832410 and ioctls 0x65 and 0x66 at 0xd832428 and 0xd832480. It calls strchr for ':' at 0xd8324a4 on a string whose origin the facts do not show. It calls close on several paths (0xd832448, 0xd832490, 0xd83251c, 0xd832534, 0xd83254c); the path where open fails returns without one. It returns 0 or 1. Role (from name): the result is true when the connection is not a proxy, but the facts do not confirm which way the value runs.
  Reviewed: 2026-11-12 (sonnet)

- `CreateContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83269c.
  Grade: inferred.
  Creates a GLX rendering context. It calls __glXInitialize at 0xd8326d4, allocates a 0x12c-byte record with calloc at 0xd8326f0, and reads an environment variable, whose name is at 0xd844598, through getenv at 0xd8327a8. It builds the direct context with __glXCreateDirectContext at 0xd832854, sets vertex-array state with __glXInitVertexArrayState at 0xd832918, and maps visual ids through __glXOverrideVisualsIdToXid at 0xd832c6c, 0xd832d5c and 0xd832e80. A failure path prints with fprintf and calls exit at 0xd832f04.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd961f50.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor4b. Its one visible call is __glSPDlistSpace at 0xd961fbc, with a5 = 0x10000 and globals read from 0x1010 and 0x1028; branches on the globals at 0x1034 and 0x1028 can skip that call. One return path gives that call's result; another returns a value the facts do not resolve. The facts do not show how the four color bytes are stored, so the rest of the body is unread.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9627a0.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor4i, the same shape as its glColor4b sibling. Its one visible call is __glSPDlistSpace at 0xd96280c, with a5 = 0x10000 and the same globals at 0x1010 and 0x1028. The body after that call is not read, so how the four int values are stored is open.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd962a50.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor4s. It makes one visible call, __glSPDlistSpace at 0xd962abc, with a5 = 0x10000 and globals at 0x1010 and 0x1028. One return path gives that call's value; the other returns a value the facts do not resolve. The facts do not say how the short components are stored.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color4us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd963260.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor4us. Its one visible call is __glSPDlistSpace at 0xd9632cc, with a5 = 0x10000 and globals at 0x1010 and 0x1028. The unsigned-short storage and any other side effects are not shown by these facts.
  Reviewed: 2026-11-12 (sonnet)

- `DownsampleTextureThruHW` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9d11a0.
  Grade: inferred.
  Appears to downsample a texture in hardware and set its format. It calls __glOdysseyImageLogBase2 at 0xd9c1e40 twice, then picks a hardware texture mode with ChooseSuitableBuzzTexModeBaseFmt at 0xd9cfc80 and maps a format through GetImageFmtEnumFromBuzzTexFormat at 0xd9cfbd0. It calls __glOdysseyImageCalcFieldFormat at 0xd9d15bc and then __glOdysseyValidateHardware at 0xd9d17a0, with bit 0x200000 added to the mask. The downsample arithmetic is not visible in these facts, so the label comes from the name.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyGetHardwareShadow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9d93e0.
  Grade: inferred.
  Role (from name): queries a hardware shadow value. It calls __glOdysseyIoctl at 0xd9d9408 with request 0x6f64000c; when the result is not negative the routine returns, with a value that is either that result or one the facts do not resolve. When the result is negative, control reaches a call to an unnamed callee at 0xd9d9434 with the constant 0xdae4dc8. It is not clear what "shadow" refers to, or what the returned value means.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyQueryHyperpipeLimit` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f47d0.
  Grade: inferred.
  Role (from name): queries a hyperpipe limit. It makes a single __glOdysseyIoctl call at 0xd9f4824 with request 0x6f640018, a2 = a stack buffer at sp-48, a3 = 2 and a5 = 0x103dc0. It returns 0 or 1. Whether the ioctl reads or writes is not shown, and the facts do not give the limit's unit or meaning.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyHyperpipeRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f4850.
  Grade: inferred.
  Role (from name): passes a hyperpipe rectangle setting to the driver. It makes one __glOdysseyIoctl call at 0xd9f48a4 with request 0x6f640018, a2 = a stack buffer at sp-48, a3 = 1 and a5 = 0x103d40. It returns 0 or 1. The facts do not say whether the rectangle is written or read, so the direction is taken from the name, and they do not show what 0x103d40 points to.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f48d0.
  Grade: inferred.
  Role (from name): passes a stereo hyperpipe setting to the driver. It makes one __glOdysseyIoctl call at 0xd9f4928 with request 0x6f640018, a3 taken from the caller, a4 = 0x103cc0 and a5 read from the context at +138992. It returns 0 or 1. The request code is shared with its neighbors, so this routine's meaning rests on its name and on the difference in arguments.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyQueryHyperpipePixelAverage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f4a90.
  Grade: inferred.
  Role (from name): queries a pixel-average hyperpipe value. It makes one __glOdysseyIoctl call at 0xd9f4ae4 with request 0x6f640016, a2 = a stack buffer at sp-48, a3 = 4 and a5 = 0x103b00. It returns 0 or 1. The request code differs from the 0x6f640018 used by the neighboring hyperpipe routines, which suggests a different command in the same driver interface, but the facts do not name it or show the transfer direction.
  Reviewed: 2026-11-12 (sonnet)

- `GetFBConfigsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x214fe38.
  Grade: inferred.
  Role (from name): the 64-bit build of the framebuffer-config request. When the context value at +2408 is nonzero it calls an unnamed callee at 0x214fe70 with it in a5. It waits for the reply with _XReply at 0x214fef0 (the request is written to the buffer before), flushes with _XFlush at 0x215004c when the output buffer lacks room, and reads reply data with _XRead at 0x21501f8. It allocates result storage with malloc at 0x214ff64 and 0x214ffdc. It also compares attribute values against 0x80xx tokens as the 32-bit build does, but that is not checked line by line here.
  Reviewed: 2026-11-12 (sonnet)

- `CreateContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2167248.
  Grade: inferred.
  The 64-bit GLX context creation, with the same call sequence as the 32-bit build. It calls __glXInitialize at 0x2167280, allocates a 0x1c8-byte record with calloc at 0x216729c, and reads an environment variable, whose name is at 0x2178598, through getenv at 0x2167354. It builds the direct context with __glXCreateDirectContext at 0x2167400, sets vertex-array state at 0x21674c4, and maps visual ids through __glXOverrideVisualsIdToXid at 0x2167814. The environment variable and the record layout are not identified.
  Reviewed: 2026-11-12 (sonnet)

- `LoadAndSendStippledQuads` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a3840.
  Grade: inferred.
  Role (from name): sends the quads for a polygon-stipple draw. It calls ceil four times, at 0x21a3888, 0x21a38b8, 0x21a38ec and 0x21a3d94. It also calls an unnamed callee at 0x21a4054 with a0 taken from this routine's seventh argument (a6) and a7 = 0x10000; the return is either a ceil result or a value the facts do not resolve. The ceil arguments, the quad layout and the stipple source are not shown, so the role rests on the name and on the caller.
  Reviewed: 2026-11-12 (sonnet)

- `DrawBitmapUsingPolyStipple` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a40d0.
  Grade: inferred.
  Role (from name): draws a bitmap as a polygon stipple. One path calls __glOdysseyUpdateRasterPos at 0x21a4204, __glOdysseyImageCalcOdyEyeSpaceRasterPosZ at 0x21a4210, __glOdysseyGetNumHWClipPlanes at 0x21a43c0, __glOdysseyValidateHardware at 0x21a4494 and LoadAndSendStippledQuads at 0x21a44bc, then returns at 0x21a47dc. Code after that is a separate path with a __glOdysseyIoctl call at 0x21a4958 (request 0x6f64000d) and many unnamed calls with GL-looking constants such as 0x1700 to 0x1702; it is not read here. The bit layout of the bitmap is not visible in these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a4db0.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor3b. Its one visible call is __glSPDlistSpace at 0x21a4e18, with a0 = 0, a3 taken from the global at 0x1020, a4 = 0x10000 and a5 read from the global at 0x1048. The facts do not show how the three byte components are stored.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5820.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor3s, with the same call shape as its Color3b sibling. Its one visible call is __glSPDlistSpace at 0x21a5888, with the same globals at 0x1020 and 0x1048. The short components' storage is not shown.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5d40.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor3ui, with the same call shape as its Color3b sibling. Its one visible call is __glSPDlistSpace at 0x21a5da8, with the same globals at 0x1020 and 0x1048. The storage of the unsigned-int components is not shown.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5fd0.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor3us, with the same call shape as its Color3b sibling. Its one visible call is __glSPDlistSpace at 0x21a6038, with the same globals at 0x1020 and 0x1048. The storage of the unsigned-short components is not shown.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a6260.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor4b in the 64-bit build. Its one visible call is __glSPDlistSpace at 0x21a62cc, with a0 = 0, a4 taken from the global at 0x1020, a5 = 0x10000 and a6 read from the global at 0x1048. The four-byte storage and its other side effects are not shown.
  Reviewed: 2026-11-12 (sonnet)
