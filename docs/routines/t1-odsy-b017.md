# Routine role statements, odsy reading batch 17

These 25 entries are the ranked targets 425 to 449 of the odsy hardware-linked list, rendered from their instruction facts and graded by the reading tools. All 25 passed the grader, and none were rejected. Each role statement comes from the rendered facts (registers, calls and constants) only. The name in each paragraph is the inventory name, and the grade is inferred throughout because the facts do not establish any role on their own. These describe software behavior in the graphics libraries, not board behavior.

- `__glOdyim_ScratchColor4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadefc0
  `__glOdyim_ScratchColor4ub` is a 44-byte leaf with no calls. It makes one `sdc1` store (0xdadefd8) and three `sw` stores (0xdadefdc, 0xdadefe0 and 0xdadefe8), all at offset +0 from a base the facts do not name, and returns the constant 0x10000 in v0. The facts show neither that base nor which registers supply the stored values, so the unsigned-byte color conversion the name suggests is not confirmed.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadf0c0
  `__glOdyim_ScratchColor4ui` is a 44-byte leaf with no calls. It makes one `sdc1` store (0xdadf0d8) and three `sw` stores (0xdadf0dc, 0xdadf0e0 and 0xdadf0e8), all at offset +0 from a base the facts do not name, and returns the constant 0x10000 in v0. The facts show neither that base nor which registers supply the stored values, so the unsigned-int color arguments the `ui` suffix suggests are not confirmed.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadf1c0
  `__glOdyim_ScratchColor4us` is a 44-byte leaf with no calls. It makes one `sdc1` store (0xdadf1d8) and three `sw` stores (0xdadf1dc, 0xdadf1e0 and 0xdadf1e8), all at offset +0 from a base the facts do not name, and returns the constant 0x10000 in v0. The facts show neither that base nor which registers supply the stored values, so the unsigned-short argument widths the `us` suffix suggests are not confirmed.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchIndexd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadf2c0
  `__glOdyim_ScratchIndexd` is a 28-byte leaf with no calls. It makes a single `sdc1` store (0xdadf2d8) at offset +0 from a base the facts do not name, and returns the constant 0x10000 in v0. The `Indexd` suffix suggests a double-precision color index, but only the store width is in the facts.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glXOpenGraphicsDevice` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd80e4e4
  `__glXOpenGraphicsDevice` is a 396-byte n32 routine. It checks its argument a0 against 0x41 and calls `__glXFatal` when the value is out of range, then reads a per-device table entry through the pointer at abs 0x1014. It opens a device path string at 0xd842828 with flags 0x802, applies `fcntl` with arguments 0x2 and 0x5 to the descriptor, and issues `ioctl` 0x65 on it, recording results in the table entry and at offset 0x104. The shape suggests it opens and initializes one graphics device, but the fcntl and ioctl constants are not named in the facts, so their meanings are open.
  Grade: inferred.
  Reviewed: 2026-11-12

- `GetFBConfigsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd81b210
  `GetFBConfigsSGIX` is a 3804-byte n32 routine, the largest in this batch. It calls `_XReply` (call 2, 0xd81b2c8), `malloc` (0xd81b33c and 0xd81b3b4), `memset` on a malloc result (0xd81b488), `free` (0xd81b3cc) and `_XFlush` (0xd81b424), and reads reply data with `_XRead` (0xd81b5d0). On one path it calls `__glXOverrideVisualGetVisualInfo` (0xd81bf64, a1 = 3), then `free` on its result (0xd81bf94) and `XFree` (0xd81bfa8, argument not shown). A long chain of branches on a5 (from 0xd81b630 on) compares it with small values (0x23, 0x24, 0xb, 0x7) and with 0x801a, 0x8018, 0x8017, 0x800b and 0x8028. The facts do not say what those values select, so the chain is not decoded here.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glXGetDrawableAttributes` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd823fec
  `__glXGetDrawableAttributes` is a 1040-byte n32 routine. It calls `__glXSetupForCommand` and takes a failure exit when the low byte of the result is zero. It calls `_XReply` twice, on two different request paths (0xd8240d0 and 0xd8241c4); at the first, a5 = 0x11 and a6 = 0x1000a are set, but they are not `_XReply` arguments, so their role is not established. It reads reply data with `_XRead` into a `malloc` buffer (call 14, 0xd824290), then makes seven word stores at offsets 0x18 down to 0x0 (0xd824298 to 0xd8242b0) from a base the facts do not name. A branch at 0xd824304 compares a value read from a table with 0x1a (unsigned); the facts do not show the table, so its meaning is not established. It returns 0 or 1.
  Grade: inferred.
  Reviewed: 2026-11-12

- `glXWaitVideoSyncSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd824ff0
  `glXWaitVideoSyncSGI` is a 200-byte n32 routine. It loads the pointer at abs 0x1014, reads fields at +0x114, +0xc4 and +0x108 through it, and calls `ioctl` (0xd825090) with request 0x3ff on a descriptor taken from that state. The stack buffer is in a2, and the entry arguments a0 and a1 are in the call's a4 and a5. It returns 5 when the +0x114 record or its +0xc4 field is zero, and 6 when a0 <= 0 or a1 < 0. Otherwise it returns 0, after a word store at +0 from a base the facts do not name. The facts do not say what the early return codes mean.
  Grade: inferred.
  Reviewed: 2026-11-12

- `glXDestroyGLXVideoSourceSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8250b8
  `glXDestroyGLXVideoSourceSGIX` is a 320-byte n32 routine. It calls `__glXSetupForCommand`. When the low byte of the result is nonzero and a1 is nonzero, it calls `__glXAddDrawableInterest` on a1, then `__glXRemoveDrawableInterest` and `__glXFreeDrawablePrivate`, each with the add call's return value in a0, which suggests it releases a drawable record the video source held. It then calls an unnamed callee (call 6, 0xd8251b4) with a1 = 0x10003 and a2 = 0x10. `_XFlush` (0xd8251e8) is called when the buffer-space comparison at 0xd825150 takes its branch. The facts show only the call order, so the object's origin is inferred.
  Grade: inferred.
  Reviewed: 2026-11-12

- `glXSwapIntervalSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd825758
  `glXSwapIntervalSGI` is a 440-byte n32 routine. It loads the pointer at abs 0x1014 and the record at its +0x114. When a0 > 0 and the record's +0xc4 field is nonzero, it calls `ioctl` (0xd8257bc) with request 0x3ee on a descriptor taken from the 0x1014 state, with the entry argument a0 in the ioctl's a5 slot, and returns 0. It returns 5 when the +0xd8 field is zero (0xd8257f0). When that field is nonzero it calls `__glXSetupForCommand` (0xd825808), unnamed callees (0xd825824, 0xd8258a8, 0xd8258c0), and `XFlush` and `_XFlush` (0xd8258cc, 0xd8258f4). The exits return 0, 5 or 6. The name suggests the entry argument is the swap interval, but the facts do not confirm that.
  Grade: inferred.
  Reviewed: 2026-11-12

- `isNotProxy` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8323bc
  `isNotProxy` is a 420-byte n32 routine. It compares [a0+0x24] with 0x40 and may return 0 or 1 before opening anything. It then opens the fixed path at 0xd844560 with flags 0x802 (call 1), applies `fcntl` with 0x2 and 0x5, and issues `ioctl` 0x65, closing and returning 0 when [a0+0x24] >= the ioctl result. It then issues `ioctl` 0x66 with a2 = sp-96 and calls `close`. After that it calls `strchr` with 0x3a (':') at 0xd8324a4 and compares bytes of the result, returning 0 on the paths shown. The name suggests a check that the display is not a proxy, but the facts do not say which return value means that.
  Grade: inferred.
  Reviewed: 2026-11-12

- `CreateContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83269c
  `CreateContext` is a 2184-byte n32 routine. It calls `__glXInitialize` and, when that returns nonzero, allocates a 300-byte (0x12c) record with `calloc` (0xd8326f0) and fills it with word stores. It calls `getenv` (0xd8327a8 and 0xd832b14) and compares the first byte of the value with 0x79, 0x6e and 0x4e ('y', 'n', 'N'). It reads the word `__glx_debug` (0xd8328a0). On the paths that pass its argument checks it calls `__glXCreateDirectContext` (0xd832854), `__glXInitVertexArrayState` (0xd832918) and a second `calloc` (0xd832930). Several paths call `free` on the record and return 0. One path calls `fprintf` with a0 = __iob+32 (the stderr slot in the usual layout, not shown by the facts) and then `exit` with a0 = 0 (0xd832ef8, 0xd832f04).
  Grade: inferred.
  Reviewed: 2026-11-12

- `glXCreateGLXPixmapWithConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd838c8c
  `glXCreateGLXPixmapWithConfigSGIX` is a 336-byte n32 routine. It calls `__glXSetupForCommand` and takes an exit path when the low byte of the result is zero. Otherwise it passes [a1+72] and [a1+36] of its argument a1 to an unnamed callee (call 3, 0xd838d64) together with the constants 0x10006 (a4) and 0x10 (a5). `_XFlush` (0xd838db8) is called when the buffer-space comparison at 0xd838cf4 takes its branch. It returns the value of an unnamed call on one path and 0 on another.
  Grade: inferred.
  Reviewed: 2026-11-12

- `glXQueryMaxSwapBarriersSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83c218
  `glXQueryMaxSwapBarriersSGIX` is a 372-byte n32 routine. It calls `__glXSetupForCommand`, an unnamed callee (call 2, only when [a0+1232] is nonzero), and then `_XReply` (0xd83c2dc) with a1 = sp-80. The values a5 = [a0+108], a6 = 0x11 and a7 = 0x1000d are set at that call, but they are not `_XReply` arguments, so their role is not established. When `_XReply` returns nonzero it makes a word store at +0 from a base the facts do not name and returns 1. `_XFlush` (0xd83c338) is called when the buffer-space comparison at 0xd83c278 takes its branch. The other return is 0.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd961510
  `__glOdylc_Color3s` is a 328-byte n32 routine. It loads the pointer at abs 0x1010 and a word at +0x13d4 from it, and stores a word back at +0x13d4 (the facts do not show an increment). It reads the words at abs 0x1028 and 0x1034. When [0x1034] is nonzero and [0x1028] is below 4 it calls `__glSPDlistSpace` (0xd961578) with a3 = [0x1010], a4 = 0x10000 and a5 = [0x1028], and on that path returns the call's value. Other paths return an unknown value or the constant 0x197080. The `lc` in the name suggests a display-list-compile variant of `glColor3s`, but the facts show only the storage pattern.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd961a30
  `__glOdylc_Color3ui` is a 328-byte n32 routine. It loads the pointer at abs 0x1010 and a word at +0x13d4 from it, and stores a word back at +0x13d4 (the facts do not show an increment). It reads the words at abs 0x1028 and 0x1034. When [0x1034] is nonzero and [0x1028] is below 4 it calls `__glSPDlistSpace` (0xd961a98) with a3 = [0x1010], a4 = 0x10000 and a5 = [0x1028], and on that path returns the call's value. Other paths return an unknown value or the constant 0x196b60. It has the same shape as `Color3s`. The word stores whose targets the facts do not resolve are not identified, so what it writes into the list is open.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd961cc0
  `__glOdylc_Color3us` is a 328-byte n32 routine. It loads the pointer at abs 0x1010 and a word at +0x13d4 from it, and stores a word back at +0x13d4 (the facts do not show an increment). It reads the words at abs 0x1028 and 0x1034. When [0x1034] is nonzero and [0x1028] is below 4 it calls `__glSPDlistSpace` (0xd961d28) with a3 = [0x1010], a4 = 0x10000 and a5 = [0x1028], and on that path returns the call's value. Other paths return an unknown value or the constant 0x1968d0. It has the same shape as the `Color3s` and `Color3ui` entries; the only difference the facts show is the returned constant. The name points to a list-compile variant of `glColor3us`, which the facts do not confirm.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd961f50
  `__glOdylc_Color4b` is a 344-byte n32 routine. It loads the pointer at abs 0x1010 and a word at +0x13d4 from it, and stores a word back at +0x13d4 (the facts do not show an increment). It reads the words at abs 0x1028 and 0x1034. When [0x1034] is nonzero and [0x1028] is below 5 it calls `__glSPDlistSpace` (0xd961fbc) with the entry argument a3 passed through, a4 = [0x1010], a5 = 0x10000 and a6 = [0x1028], and on that path returns the call's value. Other paths return an unknown value or the constant 0x196640. Compared with the Color3 entries the call has a different argument order. The call shape is taken from the rendered call, not from a documented signature.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9627a0
  `__glOdylc_Color4i` is a 344-byte n32 routine. It loads the pointer at abs 0x1010 and a word at +0x13d4 from it, and stores a word back at +0x13d4 (the facts do not show an increment). It reads the words at abs 0x1028 and 0x1034. When [0x1034] is nonzero and [0x1028] is below 5 it calls `__glSPDlistSpace` (0xd96280c) with the entry argument a3 passed through, a4 = [0x1010], a5 = 0x10000 and a6 = [0x1028], and on that path returns the call's value. Other paths return an unknown value or the constant 0x195df0. It has the same call shape as `Color4b`. Apart from the returned constant, the facts show no difference.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd962a50
  `__glOdylc_Color4s` is a 344-byte n32 routine. It loads the pointer at abs 0x1010 and a word at +0x13d4 from it, and stores a word back at +0x13d4 (the facts do not show an increment). It reads the words at abs 0x1028 and 0x1034. When [0x1034] is nonzero and [0x1028] is below 5 it calls `__glSPDlistSpace` (0xd962abc) with the entry argument a3 passed through, a4 = [0x1010], a5 = 0x10000 and a6 = [0x1028], and on that path returns the call's value. Other paths return an unknown value or the constant 0x195b40. It has the same call shape as `Color4b`. The facts do not say which list or which element is written.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd962d00
  `__glOdylc_Color4ub` is a 344-byte n32 routine. It loads the pointer at abs 0x1010 and a word at +0x13d4 from it, and stores a word back at +0x13d4 (the facts do not show an increment). It reads the words at abs 0x1028 and 0x1034. When [0x1034] is nonzero and [0x1028] is below 5 it calls `__glSPDlistSpace` (0xd962d6c) with the entry argument a3 passed through, a4 = [0x1010], a5 = 0x10000 and a6 = [0x1028], and on that path returns the call's value. Other paths return an unknown value or the constant 0x195890. It has the same call shape as `Color4b`. The name suggests unsigned-byte color arguments; the byte-width loads are not shown, so that is not confirmed.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd962fb0
  `__glOdylc_Color4ui` is a 344-byte n32 routine. It loads the pointer at abs 0x1010 and a word at +0x13d4 from it, and stores a word back at +0x13d4 (the facts do not show an increment). It reads the words at abs 0x1028 and 0x1034. When [0x1034] is nonzero and [0x1028] is below 5 it calls `__glSPDlistSpace` (0xd96301c) with the entry argument a3 passed through, a4 = [0x1010], a5 = 0x10000 and a6 = [0x1028], and on that path returns the call's value. Other paths return an unknown value or the constant 0x1955e0. It has the same call shape as `Color4b`. The name suggests unsigned-int color arguments; the facts do not show the argument loads, so that reading is inferred.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd963260
  `__glOdylc_Color4us` is a 344-byte n32 routine. It loads the pointer at abs 0x1010 and a word at +0x13d4 from it, and stores a word back at +0x13d4 (the facts do not show an increment). It reads the words at abs 0x1028 and 0x1034. When [0x1034] is nonzero and [0x1028] is below 5 it calls `__glSPDlistSpace` (0xd9632cc) with the entry argument a3 passed through, a4 = [0x1010], a5 = 0x10000 and a6 = [0x1028], and on that path returns the call's value. Other paths return an unknown value or the constant 0x195330. It has the same call shape as `Color4b`. The name suggests unsigned-short color arguments; nothing else in the facts identifies the element written.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_Clear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9644d0
  `__glOdyim_Clear` is a 1476-byte n32 routine. It reads the pointer at abs 0x1010 and a word at 0x1018, and tests bytes at context offsets 0xc99 and 0xc9a and a halfword at 0x68a. It calls `__glSetError` with 0x502 when [0x1018] is neither 0 nor 2 (0xd964520), and with 0x501 when (a0 & -0x4701) is nonzero (0xd964570); these match the standard GL error values, which the facts do not name. It calls `__glOdysseyClear` (callee 0xd964aa0, calls at 0xd964810 and 0xd964a28) and `__glOdysseyIoctl` (0xd964988), and `__glOdysseySetDrawbuf` at 0xd9649dc and again at 0xd964a44, around the clear call at 0xd964a28. It also calls `__glOdysseyWindowToNormalizedEyeZ` (0xd9647bc) with a4 = 0xff000 and wide masks in a0 and a5 (0xfffffffffffbffff, 0xfffffffffff00fff). What is passed as the value is not shown, and the mask decode is only partly resolved.
  Grade: inferred.
  Reviewed: 2026-11-12

- `ApplyMaterialF` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd983680
  `ApplyMaterialF` is a 1892-byte n32 routine. It branches on a1 against 0x1200, 0x1201, 0x1202 and 0x1600 through 0x1603, loads single-precision values (`lwc1` at +0x0, +0x4, +0x8 and +0xc, base not shown) and compares them against 1.0 (`c.le.d` with 0x3ff0000000000000). It stores words at offsets 0x18, 0x1c, 0x8 and 0xc from a base the facts do not name. On one path it reads 16 words at context offsets 0x7c70 through 0x7cac in steps of 4, through the pointer at abs 0x1010, and returns [[0x1010]+31900] or [[0x1010]+31860]. The name suggests the float form of `glMaterial`, but the facts do not name the face or parameter enum, so the material mapping is not established.
  Grade: inferred.
  Reviewed: 2026-11-12
