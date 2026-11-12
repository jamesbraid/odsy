# Tier-1 routine readings, odsy batch 1

Role statements for 25 routines from the odsy binaries. Each statement comes from the rendered facts for that routine: registers, calls, constants and branch shape. These describe software behavior, not hardware behavior. Every grade is inferred, because the facts do not fully establish any role. Where a name or a partial body read is all there is, the statement says so.

- `LookupKnownGroup` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d9564.
  Grade: inferred.
  Looks up a known-group record through LookupCSetId at 0xd9da0fc, using a per-context table at offset 93304. When the group is missing, it zeroes a 0x54-byte record with bzero, registers it with AddKnownGroup at 0xd9d99d4, and checks the coresident range through LookupCoresidRange at 0xd9d96c8. It can also drop a group with RemoveKnownGroup at 0xd9d9a30, and one failure path raises error 0x505. What a "group" and its "cset" id stand for is not clear from these facts.

- `LookupCoresidRange` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d96c8.
  Grade: inferred.
  Walks a table passed in a1 and indexed by a2, reading each entry at offset +0xc. When the lookup needs the driver, it calls __glOdysseyIoctl at 0xd9d9800 with request 0x6f640004, which is the ASCII letters "od" followed by 0004. It clears a 0x2c-byte buffer with bzero at 0xd9d97a0 first, and it can raise error 0x505. The facts do not say what the ranges describe.

- `__glOdysseyDriverMakeCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9ec21c.
  Grade: inferred.
  Makes a driver context current. It sends request 0x6f640008 through __glOdysseyIoctl at 0xd9ec2a0 and returns 0 or 1, the only two values the facts show. Before the ioctl it reads context fields at +0xce4, +0xd84, +0xc94 and +0xd34, and tests the flags at +3220 and +3380 to pick side effects. After it, the routine refills about thirty context words between +0x16d40 and +0x16db0 and clears three sub-blocks with bzero at +93544, +93584 and +93604. The meaning of each field is not identified.

- `GetFBConfigsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd81b210.
  Grade: inferred.
  Appears to fetch framebuffer configurations for the client over the X wire protocol. It sends a request through _XReply at 0xd81b2c8, reads the reply with _XRead at 0xd81b5d0, and flushes with _XFlush at 0xd81b424. Result storage comes from malloc at 0xd81b33c and 0xd81b3b4, and it is freed with free at 0xd81b3cc. A long chain of comparisons against small codes and GLX-range tokens such as 0x8017, 0x8018 and 0x801a decides how each attribute is stored, but the exact token-to-field mapping is not read here.

- `isNotProxy` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8323bc.
  Grade: inferred.
  Probes a device path, opened at 0xd8323f4 from the string at 0xd844560 with flags 0x802, and checks it with fcntl at 0xd832410 and ioctls 0x65 and 0x66 at 0xd832428 and 0xd832480. It also searches the path for ':' with strchr at 0xd8324a4, and it closes the descriptor on each exit path. It returns 0 or 1. The name suggests the result is true when the connection is not a proxy, but the facts do not confirm which way the value runs.

- `CreateContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83269c.
  Grade: inferred.
  Creates a GLX rendering context. It calls __glXInitialize at 0xd8326d4, allocates a 0x12c-byte record with calloc at 0xd8326f0, and reads an environment variable, whose name is at 0xd844598, through getenv at 0xd8327a8. It builds the direct context with __glXCreateDirectContext at 0xd832854, sets vertex-array state with __glXInitVertexArrayState at 0xd832918, and maps visual ids through __glXOverrideVisualsIdToXid at 0xd832c6c, 0xd832d5c and 0xd832e80. A failure path prints with fprintf and calls exit at 0xd832f04.

- `__glOdylc_Color4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd961f50.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor4b. Its one visible call is __glSPDlistSpace at 0xd961fbc, with a5 = 0x10000 and globals read from 0x1010 and 0x1028. Its normal return value is the result of that call. The facts do not show how the four color bytes are stored, so the rest of the body is unread.

- `__glOdylc_Color4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9627a0.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor4i, the same shape as its glColor4b sibling. Its one visible call is __glSPDlistSpace at 0xd96280c, with a5 = 0x10000 and the same globals at 0x1010 and 0x1028. The body after that call is not read, so how the four int values are stored is open.

- `__glOdylc_Color4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd962a50.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor4s. It makes one visible call, __glSPDlistSpace at 0xd962abc, with a5 = 0x10000 and globals at 0x1010 and 0x1028. One return path gives that call's value; the other returns a value the facts do not resolve. The facts do not say how the short components are stored.

- `__glOdylc_Color4us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd963260.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor4us. Its one visible call is __glSPDlistSpace at 0xd9632cc, with a5 = 0x10000 and globals at 0x1010 and 0x1028. The unsigned-short storage and any other side effects are not shown by these facts.

- `DownsampleTextureThruHW` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9d11a0.
  Grade: inferred.
  Appears to downsample a texture in hardware and set its format. It calls __glOdysseyImageLogBase2 at 0xd9c1e40 twice, then picks a hardware texture mode with ChooseSuitableBuzzTexModeBaseFmt at 0xd9cfc80 and maps a format through GetImageFmtEnumFromBuzzTexFormat at 0xd9cfbd0. It calls __glOdysseyImageCalcFieldFormat at 0xd9d15bc and then __glOdysseyValidateHardware at 0xd9d17a0, with bit 0x200000 added to the mask. The downsample arithmetic is not visible in these facts, so the label comes from the name.

- `__glOdysseyGetHardwareShadow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9d93e0.
  Grade: inferred.
  Queries a hardware shadow value through __glOdysseyIoctl at 0xd9d9408 with request 0x6f64000c, and it returns that call's result or a fallback value. A second path calls an unnamed callee at 0xd9d9434 with the constant 0xdae4dc8. It is not clear what "shadow" refers to, or what the returned value means.

- `__glOdysseyQueryHyperpipeLimit` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f47d0.
  Grade: inferred.
  Queries a hyperpipe limit with a single ioctl at 0xd9f4824, request 0x6f640018, with a3 = 2 and a stack buffer at sp-48. It returns 0 or 1. The facts do not give the limit's unit or meaning.

- `__glOdysseyHyperpipeRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f4850.
  Grade: inferred.
  Passes a hyperpipe rectangle setting to the driver through __glOdysseyIoctl at 0xd9f48a4, request 0x6f640018, with a3 = 1 and a table at 0x103d40. It returns 0 or 1. The ioctl is visible, but the facts do not say whether the rectangle is written or read, so the direction is taken from the name.

- `__glOdysseyHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f48d0.
  Grade: inferred.
  Passes a stereo hyperpipe setting to the driver through __glOdysseyIoctl at 0xd9f4928, request 0x6f640018, with a4 = 0x103cc0 and a5 read from the context at +138992. It returns 0 or 1. The subcommand is shared with its neighbors, so this routine's meaning rests on its name and that difference in arguments.

- `__glOdysseyQueryHyperpipePixelAverage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f4a90.
  Grade: inferred.
  Queries a pixel-average hyperpipe value through __glOdysseyIoctl at 0xd9f4ae4, with request 0x6f640016 and a3 = 4. It returns 0 or 1. The request code is a separate number from the 0x6f640018 family used by its neighbors, which suggests a different command in the same driver interface, but the facts do not name it.

- `GetFBConfigsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x214fe38.
  Grade: inferred.
  The 64-bit build of the framebuffer-config request. It calls an unnamed callee at 0x214fe70 with the context value at +2408, sends its request through _XReply at 0x214fef0, and flushes with _XFlush at 0x215004c. It reads the reply with _XRead at 0x21501f8 and allocates result storage with malloc at 0x214ff64 and 0x214ffdc. It appears to take the same attribute-token path as the 32-bit build, but that is not checked line by line here.

- `CreateContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2167248.
  Grade: inferred.
  The 64-bit GLX context creation, with the same call sequence as the 32-bit build. It calls __glXInitialize at 0x2167280, allocates a 0x1c8-byte record with calloc at 0x216729c, and reads an environment variable, whose name is at 0x2178598, through getenv at 0x2167354. It builds the direct context with __glXCreateDirectContext at 0x2167400, sets vertex-array state at 0x21674c4, and maps visual ids through __glXOverrideVisualsIdToXid at 0x2167814. The environment variable and the record layout are not identified.

- `LoadAndSendStippledQuads` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a3840.
  Grade: inferred.
  Appears to send the quads for a polygon-stipple draw. It calls ceil four times, at 0x21a3888, 0x21a38b8, 0x21a38ec and 0x21a3d94, and two of those take the single-precision constant 0x3d000000 in f13. It also calls an unnamed callee at 0x21a4054 with a7 = 0x10000 and a6 taken from the caller. The quad layout and the stipple source are not shown, so the role rests on the name and on the caller.

- `DrawBitmapUsingPolyStipple` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a40d0.
  Grade: inferred.
  Draws a bitmap as a polygon stipple. It updates the raster position through __glOdysseyUpdateRasterPos at 0x21a4204 and computes eye-space raster z with __glOdysseyImageCalcOdyEyeSpaceRasterPosZ at 0x21a4210. It reads the number of hardware clip planes with __glOdysseyGetNumHWClipPlanes at 0x21a43c0, validates hardware state through __glOdysseyValidateHardware at 0x21a4494, and calls LoadAndSendStippledQuads at 0x21a44bc. The bit layout of the bitmap is not visible in these facts.

- `__glOdylc_Color3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a4db0.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor3b. Its one visible call is __glSPDlistSpace at 0x21a4e18, with a0 = 0, a3 taken from the global at 0x1020, a4 = 0x10000 and a5 read from the global at 0x1048. The facts do not show how the three byte components are stored.

- `__glOdylc_Color3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5820.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor3s, with the same call shape as its Color3b sibling. Its one visible call is __glSPDlistSpace at 0x21a5888, with the same globals at 0x1020 and 0x1048. The short components' storage is not shown.

- `__glOdylc_Color3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5d40.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor3ui, with the same call shape as its Color3b sibling. Its one visible call is __glSPDlistSpace at 0x21a5da8, with the same globals at 0x1020 and 0x1048. The storage of the unsigned-int components is not shown.

- `__glOdylc_Color3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5fd0.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor3us, with the same call shape as its Color3b sibling. Its one visible call is __glSPDlistSpace at 0x21a6038, with the same globals at 0x1020 and 0x1048. The storage of the unsigned-short components is not shown.

- `__glOdylc_Color4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a6260.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor4b in the 64-bit build. Its one visible call is __glSPDlistSpace at 0x21a62cc, with a0 = 0, a4 taken from the global at 0x1020, a5 = 0x10000 and a6 read from the global at 0x1048. The four-byte storage and its other side effects are not shown.
