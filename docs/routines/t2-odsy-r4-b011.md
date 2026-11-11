# Tier-2 routine roles, odsy batch 11

Ranks 276 to 300 of the t2list ranking of located, hardware-only routines. Every entry is rendered from the libGL.so and libGLcore.so builds under the 6.5.30-media tree.

- `__glXMakeContextCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd838a98
  **Inferred.** Binds a GLX context to a drawable. It calls `__glXRestoreCurrent` (nine call sites), `__glXSendMakeCurrent` at 0xd810ad4, `__glXAddDrawableInterest` and `__glXRemoveDrawableInterest`, and reports failures through `__glXPostError`. It reads a global pointer at 0x1014 and walks the record it points to with offsets such as +0x114 and +0x110. Which path handles a context that is already current on another drawable is not settled by these facts.

- `glXAssociateDMPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83a438
  **Inferred.** A reject stub. It makes one call, to `__glXPostError` at 0xd83a468 with error code 0x9 and minor code 0x10, and returns the constant 0x0 at 0xd83a47c. The routine has no other calls or branches, so it appears to refuse the association every time.

- `glXCreatePbuffer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83b114
  **Inferred.** Allocates a pbuffer drawable record. It sets up a command with `__glXSetupForCommand` at 0xd83b140, registers drawable interest with `__glXAddDrawableInterest` at 0xd83b18c, and flushes with `_XFlush` at 0xd83b258. On the failure paths it posts error codes 0xb and 0x1b and removes the interest again at 0xd83b358. It copies fields from the config argument (a1 +0x24 and +0x48) into a 108-byte block of the record. The exact request layout sent on the wire is not shown by these facts.

- `glXDestroyPbuffer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83b37c
  **Inferred.** Tears down a pbuffer. It sets up a command with `__glXSetupForCommand` at 0xd83b3a0, removes drawable interest with `__glXRemoveDrawableInterest` at 0xd83b3d4, frees the drawable private with `__glXFreeDrawablePrivate` at 0xd83b3fc, and flushes with `_XFlush` at 0xd83b448. It returns the field at a0 +124 and passes 0x1c to an unnamed callee at 0xd83b4ac on one path. The order of the two interest calls matches the create path above.

- `__glx_TextureColorMaskSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83eb7c
  **Inferred.** Packs a texture colour-mask request into the GLX render buffer. It writes a 2-byte value at offsets 0 and 2, then four byte-wide values at offsets 4 to 7, of the buffer at [[0x1014]+276]+4. It calls `__glXFlushRenderBuffer` at 0xd83ebfc, and a branch at 0xd83ebe8 decides whether that call is reached by comparing the write pointer at +8 with the end at +4 +8. The sense of that comparison is not settled by these facts. The four byte stores match a colour mask of four flags, which is an inference from the store widths.

- `__glx_InstrumentsBufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd840304
  **Inferred.** Sends an instrumentation-buffer request and reads its reply. It flushes the render buffer with `__glXFlushRenderBuffer` at 0xd840350, sends with `_XFlush` at 0xd84039c, and reads with `_XReply` at 0xd840414 and `_XRead` at 0xd840434 on the connection at [[[0x1014]+276]+216]. It writes fields of the record at +108 of that connection and tests the pointers at +108 and +112 before the reply read. The wire layout of the request is not shown by these facts.

- `initVisualNumComp` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9507b4
  **Inferred.** Sets the component count of the visual from a field format. It calls `__glOdysseyImageCalcFieldFormat` at 0xd9507e0 through the pointer at 0xd98f304, then dispatches on its result through the jump table at 0xdaec550. Four 4-byte stores to [0x1010]+0x12018 (at 0xd950824, 0xd950838, 0xd950860 and one more) follow the table paths, and a result of 7 or more branches straight to 0xd950868. A flag at [0x1010]+3428 is tested at 0xd950848.

- `initAccumGfxImages` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd950878
  **Inferred.** Sets up the accumulation-buffer images from their log-2 sizes. It calls `__glOdysseyImageLogBase2` through the pointer at 0xd9d1eb0 at 0xd9508ec and again at 0xd95097c, with the sizes read from [[0x1010]+93552] and [[0x1010]+93572], and returns the result of the second call at 0xd9509ac. The record fields that receive the log values are not traced in full here.

- `initBuffersForAccum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9509b4
  **Inferred.** Prepares the accumulation buffers. It calls `initVisualNumComp` at 0xd9509d8 with its four arguments, then describes two images with `__glOdysseyImageDescribeWindow` through the pointer at 0xd98f36c, once with the flag 1 at 0xd950a00 and once with the flag 0 at 0xd950a1c. It sets a byte flag at [0x1010]+0x120f5 at 0xd950a30 and returns the result of the second describe call.

- `softLoad` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd950bb0
  **Inferred.** The software path that reads accumulation data back from the colour buffer. It clears a 60-byte local block with `memset` at 0xd950c80, computes transfer parameters with `__glOdysseyImageCalcXferReadParams` at 0xd950dac, and reads colour with `__glOdysseyRenderFunc_ReadbackColor` at 0xd950ea4. It raises error 0x505 through `__glSetError` at 0xd950cf4 on failure. The direction is inferred from the name and the readback callee. The per-pixel arithmetic is not traced in these facts.

- `softAccumulate` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd95180c
  **Inferred.** The software accumulate path. Its call pattern matches `softLoad`: a 60-byte `memset` at 0xd9518d8, `__glOdysseyImageCalcXferReadParams` at 0xd951a04, `__glOdysseyRenderFunc_ReadbackColor` at 0xd951afc, and error 0x505 through `__glSetError` at 0xd95194c. It reads back the colour buffer and then combines the result with the accumulation values. The combining loop is not traced in these facts.

- `softMult` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9525b0
  **Inferred.** A software per-pixel multiply over the accumulation data. It makes no calls. It loads float scale constants from the context at [0x1010]+0x11e28, 0x11e2c, 0x11e30 and 0x11e34, and its loop has 64 single-precision stores and 58 single-precision loads. Compare-and-branch checks (`c.eq.d`, `c.lt.d`, `c.eq.s`) choose among its paths. The name and the constants point to a multiply by a scale factor.

- `softAdd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd952cc4
  **Inferred.** A software per-element add for the accumulation buffer. It makes no calls and works on float values loaded through the context pointer at [0x1010]. It returns one of a loaded value or an unresolved register at 0xd95342c. The name points to an add, and the shape of the loop is consistent with it.

- `softReturn` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd953434
  **Inferred.** Writes accumulated results back to the colour buffer, the store-side counterpart of `softLoad`. It calls `__glOdysseyRenderFunc_DownloadColor` at 0xd954af8, issues an ioctl with request 0x6f64000d through `__glOdysseyIoctl` at 0xd9535c0, clears a 60-byte block with `memset` at 0xd954a10, and raises error 0x505 at 0xd9536c0. It returns 0x10000 on one path.

- `__glSoftAllocAccum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd954b8c
  **Inferred.** A thin wrapper for the software accumulation allocator. It loads three context fields at a0 +0x7af0, +0xe74 and +0xe78, then makes an indirect call at 0xd954bb8 with the arguments a1, [a0+3700], [a0+3704] and a0, and returns its result. The callee is not named in these facts.

- `hardLoadAccumulate24` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd954e78
  **Inferred.** The hardware path that loads the 24-bit accumulation buffer. It calls `hardMult24` at 0xd954f08 and 0xd954f7c, moves pixel blocks with `__glOdysseyImageMovePixelsCopy` at 0xd9550ec and 0xd955464, and emits blender tokens with `sendBlenderOpTokens` at 0xd955604 (op argument 0x28) and `sendBlenderColorTokensAccum24` at 0xd95561c. It calls `ceilf` at 0xd9552e8 and `powf` at 0xd955480, which suggests a scale-factor computation.

- `hardAdd24` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd955778
  **Inferred.** The hardware 24-bit accumulate-add. It calls `ceilf` at 0xd955a0c, copies pixel blocks with `__glOdysseyImageMovePixelsCopy` at 0xd955b68, 0xd955d90 and 0xd955df4, and emits blender tokens with `sendBlenderOpTokens` at 0xd955d0c (arguments 0x28 and 0x8) and `sendBlenderColorTokensAccum24` at 0xd955d24. Its structure follows `hardMult24`, with a different blender operation.

- `hardMult24` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd955e48
  **Inferred.** The hardware 24-bit multiply-accumulate. It emits blender tokens with `sendBlenderOpTokens` at 0xd955fd8, 0xd95621c, 0xd95623c, plus `sendBlenderColorTokensAccum24` at 0xd955ff8 and 0xd95625c. It copies pixel blocks with `__glOdysseyImageMovePixelsCopy` at 0xd956068, 0xd9560c8, 0xd9562b4 and 0xd95630c. It is called by `hardLoadAccumulate24`, so it serves as the multiply step of that path.

- `hardReturn24` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd956398
  **Inferred.** The hardware return path that writes the 24-bit accumulation result back to the colour buffer. It copies pixel blocks with `__glOdysseyImageMovePixelsCopy` at 0xd9564d4 and 0xd956590, clears a scratch buffer with `__glOdysseyClearScratchBuffer` at 0xd9566b0, and emits blender tokens with ops 0x6 and 0x2 at 0xd956644, 0xd956764 and 0xd956830. What each blender op does is not settled by these facts.

- `hardClear24` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9576d0
  **Inferred.** Clears the 24-bit accumulation buffer. It reports error 0x502 through `__glSetError` at 0xd957710 when its arguments are invalid, then sets up the scratch and accumulation images with `initScratchBufAccum` at 0xd957728, `initBuffersForAccum` at 0xd957758 and `initAccumGfxImages` at 0xd957774. It saves and reloads the raster state around the clear and clears the scratch buffer with `__glOdysseyClearScratchBuffer` at 0xd9577ec. The clear is driven by a blender op with flag 0x200000 at 0xd957ac4 and a clear value from [[0x1010]+1660].

- `ValidateColorMaterial` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd958760
  **Inferred.** Re-applies the colour-material state to the front and back faces. It calls `__glOdyim_Materialfv` at 0xd95ec9c eight times, once for each pair of face (0x404 front, 0x405 back) and parameter (0x1200 ambient, 0x1201 diffuse, 0x1202 specular, 0x1600 emission), and then sets the current colour through `__glOdyim_Color4fv` at 0xd958a24. An earlier callee at 0xd958870 is called with the enum 0xb00.

- `__glOdyim_IsEnabled` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd958a40
  **Inferred.** Answers the enable query for the capabilities the driver handles itself. A jump table at 0xdaec640 dispatches on the capability enum at 0xd958adc, and the default case at 0xd958c34 forwards to the generic `__glim_IsEnabled` at 0xd958c38. It raises error 0x502 through `__glSetError` at 0xd958a78 for an invalid argument. A bit test of the word at [[0x1010]+105908] supplies the result on the table path.

- `__glOdyim_Hint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd958c54
  **Inferred.** Validates a hint target and mode, then forwards to the generic `__glim_Hint` at 0xd958d48. The two error paths post 0x502 at 0xd958c8c and 0x500 at 0xd958cc0 through `__glSetError`. The error codes are the invalid-operation and invalid-enum codes, which fits a validation front end.

- `__glOdyim_Enable` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd958d64
  **Inferred.** The driver's enable entry point. It dispatches on the capability enum through several jump tables, at 0xdaec6d8, 0xdaec770, 0xdaec79c, 0xdaec848, 0xdaec868, 0xdaec880, 0xdaec964 and 0xdaeca30. It calls `ValidateColorMaterial` at 0xd959208 and `__glOdysseyFindWindowSize` at 0xd959f3c, and raises 0x502 at 0xd958d9c and 0x500 at 0xd959f54 through `__glSetError`. The effect of each case is not traced in these facts.

- `PushAttributes` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd959f70
  **Inferred.** Saves the driver's attribute state for the attribute push. It makes a series of calls with enum arguments 0xb00 through 0xb06, 0xb43 and 0xb57 at 0xd95a180 to 0xd95a3c0, copies state blocks with `memcpy` (six call sites), and calls `__glCopyColorTableScaleBias` at 0xd95a66c and `__glCopyConvolutionPixelModeState`. It raises 0x502 through `__glSetError` at 0xd959fd0 on error. Which attribute group each enum selects is not settled by these facts.
