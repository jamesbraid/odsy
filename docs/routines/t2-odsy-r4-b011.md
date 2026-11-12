# Tier-2 routine roles, odsy batch 11

Ranks 276 to 300 of the t2list ranking of located, hardware-only routines. Every entry is rendered from the libGL.so and libGLcore.so builds under the 6.5.30-media tree.

- `__glXMakeContextCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd838a98
  **Inferred.** Binds a GLX context to a drawable. It calls `__glXRestoreCurrent` (nine call sites), `__glXSendMakeCurrent` at 0xd810ad4, `__glXAddDrawableInterest` and `__glXRemoveDrawableInterest`, and reports failures through `__glXPostError`. It reads a global pointer at 0x1014 and walks the record it points to with offsets such as +0x114 and +0x110. Which path handles a context that is already current on another drawable is not settled by these facts.
  Reviewed: 2026-11-12 (sonnet)

- `glXAssociateDMPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83a438
  **Inferred.** A reject stub. It makes one call, to `__glXPostError` at 0xd83a468 with a1 = 0x9 and a2 = 0x10, and returns the constant 0x0 at 0xd83a47c. The routine has no other calls or branches, so it appears to refuse the association every time. These facts do not say which argument slot of `__glXPostError` is the error code and which the minor code.
  Reviewed: 2026-11-12 (sonnet)

- `glXCreatePbuffer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83b114
  **Inferred.** Role (from name): creates a pbuffer drawable. It calls `__glXSetupForCommand` at 0xd83b140. When that result is nonzero (branch at 0xd83b154) it makes an unnamed call at 0xd83b174 and calls `__glXAddDrawableInterest` at 0xd83b18c; when the add returns 0 it calls `__glXPostError` at 0xd83b1b8 with a1 = 0xb and a2 = 0x1b. It calls `_XFlush` at 0xd83b258 only on the fall-through of the compare at 0xd83b244, that is when [a0+112] is below the limit it is compared with. `__glXRemoveDrawableInterest` is called at 0xd83b358 with the result of the add call; which paths reach it is not settled by these facts. Loads at +0x24 and +0x48 and stores at +4 and +8 are present, but the facts do not show their base registers, so what is copied where is not settled. The wire layout of the request is not shown.
  Reviewed: 2026-11-12 (sonnet)

- `glXDestroyPbuffer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83b37c
  **Inferred.** Role (from name): destroys a pbuffer. It calls `__glXSetupForCommand` at 0xd83b3a0; a zero result branches at 0xd83b3ac past the rest to the return. When the result is nonzero it calls `__glXAddDrawableInterest` (0xd83b3bc, with a1 at entry as its first argument), `__glXRemoveDrawableInterest` at 0xd83b3d4 and `__glXFreeDrawablePrivate` at 0xd83b3fc. It calls `_XFlush` at 0xd83b448 only when [a0+112] is below [a0+108]+8; otherwise the branch at 0xd83b438 skips it. On the path where [a0+1232] is nonzero (branch at 0xd83b49c) an unnamed callee at 0xd83b4ac is called with a1 = 0x1c. The return value is the field at a0 +124 or an unresolved value. The order of the two interest calls (add, then remove) matches the create path above.
  Reviewed: 2026-11-12 (sonnet)

- `__glx_TextureColorMaskSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83eb7c
  **Inferred.** Role (from name): packs a texture colour-mask request into the GLX render buffer. It makes two halfword stores at offsets 0 and 2 and four byte stores at offsets 4 to 7; the facts show the buffer pointer loaded from [[0x1014]+276]+4 but not the base register of those stores, so the placement is inferred. The four byte stores are consistent with four mask flags, an inference from the store widths. It calls `__glXFlushRenderBuffer` at 0xd83ebfc only on the fall-through of the compare at 0xd83ebe8: the branch is taken, skipping the call, when [[0x1014]+276]+8 is at or above [[0x1014]+276]+4 plus 8 (unsigned).
  Reviewed: 2026-11-12 (sonnet)

- `__glx_InstrumentsBufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd840304
  **Inferred.** Role (from name): sends an instrumentation-buffer request and reads a reply. When the connection at [[[0x1014]+276]+216] is nonzero (otherwise the branch at 0xd84033c skips to the return) it calls `__glXFlushRenderBuffer` at 0xd840350. It calls `_XFlush` at 0xd84039c only when [conn+112] is below [conn+108]+16 (unsigned) on that connection. It then calls `_XReply` at 0xd840414 and `_XRead` at 0xd840434, both on that connection, the read with a2 = a0 << 2. Some stores near offsets +0x60 and +0x6c are present but the facts do not show their base registers. The wire layout of the request is not shown.
  Reviewed: 2026-11-12 (sonnet)

- `initVisualNumComp` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9507b4
  **Inferred.** Role (from name): sets the component count of a visual from a field format. It calls `__glOdysseyImageCalcFieldFormat` at 0xd9507e0 through the pointer at 0xd98f304 and returns its result at 0xd950870. A result of 7 or more (unsigned) branches straight to 0xd950868. There are four 4-byte stores to +0x12018 (at 0xd950824, 0xd950838, 0xd950860 and 0xd950864), and a flag at [0x1010]+3428 is tested at 0xd950848.
  Reviewed: 2026-11-12 (sonnet)

- `initAccumGfxImages` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd950878
  **Inferred.** Role (from name): sets up the accumulation-buffer images from their log-2 sizes. It calls `__glOdysseyImageLogBase2` through the pointer at 0xd9d1eb0 at 0xd9508ec (a0 = [[0x1010]+93552]) and again at 0xd95097c (a0 = [[0x1010]+93572]), and returns the result of the second call at 0xd9509ac. It makes many other stores at offsets from 0x11eb0 to 0x11f24; the record fields that receive the log values are not traced.
  Reviewed: 2026-11-12 (sonnet)

- `initBuffersForAccum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9509b4
  **Inferred.** Role (from name): prepares the accumulation buffers. It calls `initVisualNumComp` at 0xd9509d8 with its four arguments, then calls `__glOdysseyImageDescribeWindow` through the pointer at 0xd98f36c, once with a1 = 1 at 0xd950a00 and once with a1 = 0 at 0xd950a1c. It stores a byte at +0x120f5 at 0xd950a30 and returns the result of the second describe call.
  Reviewed: 2026-11-12 (sonnet)

- `softLoad` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd950bb0
  **Inferred.** Role (from name): software path for an accumulation load; the readback callee suggests it reads colour back from the colour buffer. It clears a 60-byte local block with `memset` at 0xd950c80 and calls an unnamed callee at 0xd950cd8; when that returns 0 it calls `__glSetError` at 0xd950cf4 with 0x505. It clears a 20-byte block with `memset` at 0xd950d8c and computes transfer parameters with `__glOdysseyImageCalcXferReadParams` at 0xd950dac. It calls `__glOdysseyRenderFunc_ReadbackColor` at 0xd950ea4 from inside the loops that follow. The per-pixel arithmetic is not traced in these facts.
  Reviewed: 2026-11-12 (sonnet)

- `softAccumulate` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd95180c
  **Inferred.** Role (from name): software accumulate path. Its call pattern matches `softLoad`: a 60-byte `memset` at 0xd9518d8, an unnamed callee at 0xd951930 followed by `__glSetError` with 0x505 at 0xd95194c when that callee returns 0, a 20-byte `memset` at 0xd9519e4, `__glOdysseyImageCalcXferReadParams` at 0xd951a04 and `__glOdysseyRenderFunc_ReadbackColor` at 0xd951afc. It also makes an unnamed call at 0xd952574. The facts do not show how the readback result is combined with the accumulation values; the floating-point loop is not traced.
  Reviewed: 2026-11-12 (sonnet)

- `softMult` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9525b0
  **Inferred.** Role (from name): software multiply over accumulation data. It makes no calls. It loads float values from [0x1010]+0x11e28, 0x11e2c, 0x11e30 and 0x11e34, and its loop has 64 single-precision stores and 58 single-precision loads. Compare-and-branch checks (`c.eq.d`, `c.lt.d`, `c.eq.s`) choose among its paths. The facts show no multiply operations, so the multiply is read from the routine's name.
  Reviewed: 2026-11-12 (sonnet)

- `softAdd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd952cc4
  **Inferred.** Role (from name): software add for the accumulation buffer. It makes no calls and works on float values loaded through the context pointer at [0x1010]. It returns one of a loaded value or an unresolved register at 0xd95342c. The facts show no add operations, so the add is read from the routine's name.
  Reviewed: 2026-11-12 (sonnet)

- `softReturn` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd953434
  **Inferred.** Role (from name): writes accumulated results back to the colour buffer, the counterpart of `softLoad`; the `__glOdysseyRenderFunc_DownloadColor` callee fits that. It calls `__glOdysseyRenderFunc_DownloadColor` at 0xd954af8, issues an ioctl with request 0x6f64000d through `__glOdysseyIoctl` at 0xd9535c0, clears a 60-byte block with `memset` at 0xd954a10, and raises error 0x505 at 0xd9536c0. It returns 0x10000 on one path.
  Reviewed: 2026-11-12 (sonnet)

- `__glSoftAllocAccum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd954b8c
  **Inferred.** Role (from name): a thin wrapper for a software accumulation allocator. It loads three context fields at a0 +0x7af0, +0xe74 and +0xe78, then makes a call to an unresolved callee at 0xd954bb8 with the arguments a1, [a0+3700], [a0+3704] and a0, and returns its result. The callee is not named in these facts, and they do not show that the call goes through the +0x7af0 value.
  Reviewed: 2026-11-12 (sonnet)

- `hardLoadAccumulate24` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd954e78
  **Inferred.** Role (from name): the hardware path that loads the 24-bit accumulation buffer. It calls `hardMult24` at 0xd954f08, 0xd954f7c and 0xd95572c, moves pixel blocks with `__glOdysseyImageMovePixelsCopy` at 0xd9550ec, 0xd955464, 0xd955684 and 0xd9556e4, and emits blender tokens with `sendBlenderOpTokens` at 0xd955604 (a1 = 0x28) and `sendBlenderColorTokensAccum24` at 0xd95561c. It also calls `ceilf` at 0xd9552e8 and `powf` at 0xd955480; what they compute is not identified by these facts.
  Reviewed: 2026-11-12 (sonnet)

- `hardAdd24` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd955778
  **Inferred.** Role (from name): the hardware 24-bit accumulate-add. It calls `ceilf` at 0xd955a0c, copies pixel blocks with `__glOdysseyImageMovePixelsCopy` at 0xd955b68, 0xd955d90 and 0xd955df4, and emits blender tokens with `sendBlenderOpTokens` at 0xd955d0c (a1 = 0x28, a2 = 0x8) and `sendBlenderColorTokensAccum24` at 0xd955d24.
  Reviewed: 2026-11-12 (sonnet)

- `hardMult24` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd955e48
  **Inferred.** Role (from name): the hardware 24-bit multiply step. It emits blender tokens with `sendBlenderOpTokens` at 0xd955fd8, 0xd95621c and 0xd95623c, plus `sendBlenderColorTokensAccum24` at 0xd955ff8 and 0xd95625c. It copies pixel blocks with `__glOdysseyImageMovePixelsCopy` at 0xd956068, 0xd9560c8, 0xd9562b4 and 0xd95630c. It is called by `hardLoadAccumulate24` at 0xd954f08, 0xd954f7c and 0xd95572c.
  Reviewed: 2026-11-12 (sonnet)

- `hardReturn24` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd956398
  **Inferred.** Role (from name): the hardware return path that writes the 24-bit accumulation result back to the colour buffer. It copies pixel blocks with `__glOdysseyImageMovePixelsCopy` (many call sites, the first at 0xd9564d4 and 0xd956590), clears a scratch buffer with `__glOdysseyClearScratchBuffer` at 0xd9566b0, and emits blender tokens with `sendBlenderOpTokens` at 0xd956644, 0xd956764 and 0xd956830 (a0 = 0x6, 0x6 and 0x2) and at other sites with other values. What each blender op does is not settled by these facts.
  Reviewed: 2026-11-12 (sonnet)

- `hardClear24` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9576d0
  **Inferred.** Role (from name): clears the 24-bit accumulation buffer. It calls `__glSetError` with 0x502 at 0xd957710 when the word at [0x1018] equals 1 (the branch at 0xd957700 skips it otherwise). It calls `initScratchBufAccum` at 0xd957728; a zero result branches to the return. `initBuffersForAccum` at 0xd957758 and `initAccumGfxImages` at 0xd957774 are called only when the byte at [0x1010]+0x120f5 is zero. It then calls `__glOdysseyImageSaveUserBuzzRasterState` at 0xd957784, `__glOdysseyImageLoadBuzzRasterState` with a0 = 0 at 0xd957798, `initGeomForAccum` at 0xd9577ac and `__glOdysseyClearScratchBuffer` at 0xd9577ec, and calls `__glOdysseyImageLoadBuzzRasterState` again with a0 = 1 at 0xd957c88. It loads four floats at offsets 0x670 to 0x67c (from a base the facts do not show) and compares them in floating point. A blender op with a3 = 0x200000 is sent at 0xd957ac4.
  Reviewed: 2026-11-12 (sonnet)

- `ValidateColorMaterial` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd958760
  **Inferred.** Role (from name): re-applies colour-material state. It calls `__glOdyim_Materialfv` at 0xd95ec9c from eight call sites, one for each pair of face (0x404 and 0x405) and parameter (0x1200, 0x1201, 0x1202 and 0x1600). Each site is guarded by a bit test, for example `& 0x2` and `& 0x4`, so the facts do not show that all eight run on one call. It calls `__glOdyim_Color4fv` at 0xd958a24. An earlier callee at 0xd958870 is called with the enum 0xb00. The routine first branches on bit 0x80 of the word at [a0+1792].
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_IsEnabled` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd958a40
  **Inferred.** Role (from name): answers the enable query for the capabilities the driver handles itself. It raises error 0x502 through `__glSetError` at 0xd958a78 when the word at [0x1018] equals 1. It then compares the capability argument a0 against enum values such as 0x8354, 0x835e, 0x835f, 0x835c, 0x835d, 0x803a, 0x8198, 0x832c and 0x8353; an argument outside the range 33774 to 33811 reaches the default case at 0xd958c34, which forwards to `__glim_IsEnabled` at 0xd958c38. The returned value is one of 0, a byte loaded from [[0x1010]+105908], an unresolved value, or the result of `__glim_IsEnabled`.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Hint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd958c54
  **Inferred.** Role (from name): a hint entry point that forwards to the generic `__glim_Hint` at 0xd958d48. It calls `__glSetError` with 0x502 at 0xd958c8c when the word at [0x1018] equals 1, and with 0x500 at 0xd958cc0 when the second argument a1 is none of 0x1100, 0x1101 and 0x1102. When the first argument a0 equals 0x83ef it also updates fields at +0x19db8 and compares a1 with the value at [[0x1010]+105912]. The facts do not show a check of a0 as a target other than that comparison.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Enable` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd958d64
  **Inferred.** Role (from name): the driver's enable entry point. It compares the capability argument a0 against many enum values (for example 0x80d3, 0x835d, 0x835f, 0x8414, 0x8568); the facts show compare chains, and a range test of a0-33774 against 0x26 that reaches 0xd959f4c, not the jump tables the earlier reading named. It calls `ValidateColorMaterial` at 0xd959208 and `__glOdysseyFindWindowSize` at 0xd959f3c, and calls `__glSetError` with 0x502 at 0xd958d9c when the word at [0x1018] equals 1 and with 0x500 at 0xd959f54. The effect of each case is not traced in these facts.
  Reviewed: 2026-11-12 (sonnet)

- `PushAttributes` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd959f70
  **Inferred.** Role (from name): saves the driver's attribute state for an attribute push. Its second argument is tested against masks such as 0x1, 0x2, 0x100 and 0x200, which guard many of the calls below. It calls `__glSetError` with 0x502 at 0xd959fd0 when the word at [0x1018] equals 1. It makes a series of unnamed calls with a0 = 0xb00 to 0xb06 (0xb04 is conditional), 0xb43 and 0xb57 at 0xd95a180 to 0xd95a3c0, copies state blocks with `memcpy` (six call sites), and calls `__glCopyColorTableScaleBias` at 0xd95a66c and `__glCopyConvolutionPixelModeState` at 0xd95a684. Which attribute group each enum selects is not settled by these facts.
  Reviewed: 2026-11-12 (sonnet)
