# Routine role statements, tier-1 odsy batch 9

Role statements for the 25 routines at ranks 226 to 250 of the tier-1 reading list for odsy (located rows, hardware-only filter). Each statement comes from the rendered facts for that routine: loads, stores, calls, branches and constants. All 25 entries passed the grader, so none are rejected. Every grade is inferred because no rendered fact fully establishes a role.

- `GetFBConfigsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8aa140
  **Inferred.** It reads `[a0+0x4d0]` repeatedly and calls `__glXSetupForCommand`-style request code, then `_XReply` at 0xd8aa1fc (a stack buffer as a1, a2 and a3 zero), `malloc` at 0xd8aa274 and 0xd8aa394, `memset` at 0xd8aa414 and `_XRead` at 0xd8aa510 inside a loop. In the loop it calls `__glXOverrideVisualGetVisualInfo` at 0xd8aae94 (a1 = 3) and, when that returns nonzero, `free` at 0xd8aaec4 on the returned pointer and `XFree` at 0xd8aaee0. It calls `_XFlush` at 0xd8aa2d4 and returns 0x0 or 0x1 on different paths. Role (from name): the GLX query for framebuffer configurations; the reply layout is not decoded.
  Reviewed: 2026-11-12

- `__glXSendMakeCurrentRead` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8acdc0
  **Inferred.** It calls `__glXSetupForCommand` at 0xd8acdf8 first, then `_XReply` at 0xd8acec8. Later it calls `malloc` at 0xd8acee4, reads 0x10 bytes into the malloc result with `_XRead` at 0xd8acefc, calls `free` at 0xd8acf30 and returns 0x1 at 0xd8acf7c. A second `_XReply` is at 0xd8ad028. `__glXPostHiddenError` is called at 0xd8ad07c and 0xd8ad0f0, each followed in address order by a return of 0x0 (0xd8ad098, 0xd8ad10c). `_XFlush` is called at 0xd8acf84 and 0xd8ad0a0. Role (from name): the make-current request with a separate read drawable; the request fields are not decoded.
  Reviewed: 2026-11-12

- `glXSelectEventSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b2728
  **Inferred.** A short request routine. It calls `__glXSetupForCommand` at 0xd8b2750, makes three calls whose callee the facts do not resolve, and calls `_XFlush` at 0xd8b2838. It returns either `__glXSetupForCommand`'s result (0xd8b2850) or an unresolved value (0xd8b2830). Role (from name): selecting events for a drawable; the mask the routine passes is not established.
  Reviewed: 2026-11-12

- `glXDestroyGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b2df4
  **Inferred.** It calls `__glXSetupForCommand` at 0xd8b2e1c. Only when that result is nonzero does it call `__glXAddDrawableInterest` (0xd8b2e40, a1 of the routine as its argument), then `__glXRemoveDrawableInterest` (0xd8b2e50) on the Add result. It calls `__glXFreeDrawablePrivate` at 0xd8b2e64 only when the word at +20 of the Add result is nonzero. It calls `_XFlush` at 0xd8b2f3c when the buffer lacks room, and otherwise returns after unresolved calls. Role (from name): destroying a pbuffer; the interest add and remove pair is not shown to be a reference count.
  Reviewed: 2026-11-12

- `glXCreateGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b36f4
  Evidence grade: inferred.
  `glXCreateGLXPbufferSGIX` registers the new drawable with `__glXAddDrawableInterest` and sends a create request that is answered through `_XReply`. Its error exits call `__glXPostError` or `__glXPostHiddenError`, and the cleanup calls `__glXRemoveDrawableInterest` and `__glXFreeDrawablePrivate`. The callee list does not show which branch leads to which exit, so the success and failure order is inferred.
  Reviewed: 2026-11-12

- `glXGetVideoSyncSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b3aa8
  **Inferred.** It loads the word at +0x114 of the pointer stored at absolute 0x1014 and returns 0x5 (0xd8b3b2c) when that word, or the word at +0xc4 of it, is zero. Otherwise it loads at +0xcc, makes one `ioctl` with request 0x3fe at 0xd8b3b00 (a0 taken from a table off the 0x1014 pointer, a4 the +0x114 word), stores a word at +0x0 of a base register the facts do not show at 0xd8b3b10, and returns 0x0. The meaning of 5 is not established.
  Reviewed: 2026-11-12

- `glXWaitVideoSyncSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b3b34
  Evidence grade: inferred.
  `glXWaitVideoSyncSGI` uses the same 0x1014 pointer chain as the get routine at 0xd8b3aa8. It issues `ioctl` with request 0x3ff (at 0xd8b3bd4) and returns 0, 5 or 6 on different paths. The request number is one above the get request, which hints at a paired wait and get, but that rests only on the numbers.
  Reviewed: 2026-11-12

- `glXDestroyGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b3bfc
  **Inferred.** The same call shape as `glXDestroyGLXPbufferSGIX` at 0xd8b2df4. It calls `__glXSetupForCommand` at 0xd8b3c24. Only when that result is nonzero and a1 is nonzero does it call `__glXAddDrawableInterest` (0xd8b3c44, a0 = a1), `__glXRemoveDrawableInterest` (0xd8b3c54) and `__glXFreeDrawablePrivate` (0xd8b3c60) with the Add result, with no branch between them. It then builds a request, calls `_XFlush` at 0xd8b3d40 when the buffer lacks room, and returns the `__glXSetupForCommand` result on the skipped path (0xd8b3d38). No release of a video-source private object is among the calls.
  Reviewed: 2026-11-12

- `glXCreateGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b3e14
  Evidence grade: inferred.
  `glXCreateGLXVideoSourceSGIX` calls `__glXInitializeVideoLibrary` and `__glXCreateVideoSourcePrivate` to build the source. It maps a packing format through `videoPackingToInternalFormat` and sends its request after `__glXSetupForCommand`. The exact fields and the error results are not decoded.
  Reviewed: 2026-11-12

- `isNotProxy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c1618
  **Inferred.** It returns 0x0 at 0xd8c1638 when the signed word at `[a0+0x24]` is 0x40 or more. Otherwise it calls `open` at 0xd8c1650 on the string at 0xd8e0538 with flags 0x802, then `fcntl` at 0xd8c1674 (a1 = 2, a2 = 5), `ioctl` with request 0x65 at 0xd8c168c and request 0x66 at 0xd8c16e4, and `close` on several paths. It calls `strchr` once (0xd8c1708) with 0x3a (a colon); a later loop compares bytes against 0x2e (a dot) at 0xd8c1734, with no `strchr` call in that loop. It returns 0x1 only at 0xd8c1780 and 0x0 on every other exit. Role (from name): telling a local display from a proxy; the ioctl meanings are not decoded.
  Reviewed: 2026-11-12

- `CreateContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c18f8
  **Inferred.** It calls `__glXInitialize` at 0xd8c1930 and `calloc` at 0xd8c196c, `getenv` at 0xd8c1a28 and 0xd8c1fb8, and `__glXCreateDirectContext` at 0xd8c1af4 (its result is tested against zero at 0xd8c1afc). It calls `malloc` at 0xd8c1b1c, `__glXInitVertexArrayState` at 0xd8c1bb8, `__glXFindFBConfigFromVid` at 0xd8c1c54, `__glXFindVisualConfig` at 0xd8c2008, `isLocal` at 0xd8c1f6c and `XMaxRequestSize` at 0xd8c1fec. `fprintf` (0xd8c2164) is followed by `exit` (0xd8c2170); the facts do not show which condition reaches them. Which condition selects the direct path is not decoded.
  Reviewed: 2026-11-12

- `glXBindSwapBarrierSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cae48
  **Inferred.** A short request routine. It calls `__glXSetupForCommand` at 0xd8cae74, makes three calls whose callee the facts do not resolve (0xd8cae94, 0xd8caf1c, 0xd8caf34), and calls `_XFlush` at 0xd8caf54 when the buffer lacks room. Role (from name): binding a swap barrier; the argument layout is not decoded.
  Reviewed: 2026-11-12

- `glXQueryMaxSwapBarriersSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8caf6c
  Evidence grade: inferred.
  `glXQueryMaxSwapBarriersSGIX` calls `__glXSetupForCommand` and then `_XReply`. A `_XFlush` call sits on a branch taken before the `_XReply` call is reached, not after it. The name suggests it returns the maximum swap-barrier count. The reply field offsets are not decoded.
  Reviewed: 2026-11-12

- `glXQueryHyperpipeNetworkSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cb918
  Evidence grade: inferred.
  `glXQueryHyperpipeNetworkSGIX` reads a reply through `_XReply`, allocates a buffer with `malloc`, and pulls the payload with `_XRead` and `_XEatData`. It finishes with `_XFlush`. The allocation size is probably taken from the reply, but the payload fields are not decoded.
  Reviewed: 2026-11-12

- `glXHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cbba0
  **Inferred.** It calls `__glXSetupForCommand` at 0xd8cbbdc and `_XReply` at 0xd8cbd50 (a stack buffer as a1, a2 and a3 zero), and `_XFlush` at 0xd8cbe44. It returns 0x0 at 0xd8cbdc8 and 0x5b at four other exits (for example 0xd8cbde8). Role (from name): the set side of the hyperpipe configuration pair with `glXQueryHyperpipeConfigSGIX` at 0xd8cc044; the packed config fields are not decoded.
  Reviewed: 2026-11-12

- `glXQueryHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cc044
  **Inferred.** It calls `__glXSetupForCommand` at 0xd8cc070 and `_XReply` at 0xd8cc118 (a stack buffer as a1, a2 and a3 zero), then `malloc` at 0xd8cc19c, `_XEatData` at 0xd8cc1b4, `_XRead` at 0xd8cc214 into the malloc result, and `_XFlush` at 0xd8cc268. It returns 0x0 on most exits; the return at 0xd8cc25c is unresolved. Role (from name): the query side of the hyperpipe configuration pair; the record layout is not decoded.
  Reviewed: 2026-11-12

- `LoadAndSendStippledQuads` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4fb80
  **Inferred.** It calls `ceil` at 0xda4fbc8, 0xda4fbf4, 0xda4fc2c and 0xda500d0, `memset` at 0xda501d4 (a stack buffer, value 0, length 4) and one call with an unresolved callee at 0xda5032c (a0 = `[a0+91328]`, a2 = 0x806f). It loads `[a0+38736]` and tests it against zero at 0xda4fe34, and returns either a `ceil` result or an unresolved value at 0xda50368. Role (from name): loading a stipple pattern and sending quads; the sizes and the unresolved call's target are not established.
  Reviewed: 2026-11-12

- `DrawBitmapUsingPolyStipple` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda50370
  Evidence grade: inferred.
  `DrawBitmapUsingPolyStipple` updates the raster position through `__glOdysseyUpdateRasterPos` and `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ`. It validates hardware state with `__glOdysseyValidateHardware` and hands the quad work to `LoadAndSendStippledQuads` at 0xda4fb80. Errors go through `__glSetError`, and kernel-side work goes through `__glOdysseyIoctl`. The control flow between these calls is not fully traced.
  Reviewed: 2026-11-12

- `__glOdylc_Color3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51790
  **Inferred.** A display-list entry that tests `[0x1028]` against another value (branch at 0xda517dc); when `[0x1028]` is the lower one it calls `__glSPDlistSpace` at 0xda517f8 with a0 = 0, and the branch at 0xda51818 tests that result against zero. The return at 0xda5187c is either `[0x1028]` or the call's result, and the return at 0xda5189c is the call's result. Role (from name): `Color3s` fits a short colour entry point of a display-list compiler; the facts do not show which values the routine stores.
  Reviewed: 2026-11-12

- `__glOdylc_Color3ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51bf0
  **Inferred.** It has one call, `__glSPDlistSpace`, and is 276 bytes, like `__glOdylc_Color3s` at 0xda51790; the returns are either `[0x1028]` or that call's result. The bodies were not compared instruction by instruction. Role (from name): an unsigned-int variant of the 3-component colour entry.
  Reviewed: 2026-11-12

- `__glOdylc_Color3us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51e20
  **Inferred.** It has one call, `__glSPDlistSpace`, and is 276 bytes, like `__glOdylc_Color3s` at 0xda51790; the returns are either `[0x1028]` or that call's result. The bodies were not compared instruction by instruction. Role (from name): an unsigned-short variant of the 3-component colour entry.
  Reviewed: 2026-11-12

- `__glOdylc_Color4b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52050
  **Inferred.** It has one call, `__glSPDlistSpace`, and is 288 bytes; the returns are either `[0x1028]` or that call's result. The bodies were not compared against the other Color4 entries. Role (from name): a signed-byte variant of the 4-component colour entry.
  Reviewed: 2026-11-12

- `__glOdylc_Color4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52750
  **Inferred.** It has one call, `__glSPDlistSpace`, and is 288 bytes; the returns are either `[0x1028]` or that call's result. The bodies were not compared against the other Color4 entries. Role (from name): a signed-int variant of the 4-component colour entry.
  Reviewed: 2026-11-12

- `__glOdylc_Color4s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52990
  **Inferred.** It has one call, `__glSPDlistSpace`, and is 288 bytes; the returns are either `[0x1028]` or that call's result. The bodies were not compared against the other Color4 entries. Role (from name): a signed-short variant of the 4-component colour entry.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ub` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52bd0
  **Inferred.** It has one call, `__glSPDlistSpace`, and is 288 bytes; the returns are either `[0x1028]` or that call's result. The bodies were not compared against the other Color4 entries. Role (from name): an unsigned-byte variant of the 4-component colour entry.
  Reviewed: 2026-11-12
