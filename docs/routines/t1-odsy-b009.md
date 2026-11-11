# Routine role statements, tier-1 odsy batch 9

Role statements for the 25 routines at ranks 226 to 250 of the tier-1 reading list for odsy (located rows, hardware-only filter). Each statement comes from the rendered facts for that routine: loads, stores, calls, branches and constants. All 25 entries passed the grader, so none are rejected. Every grade is inferred because no rendered fact fully establishes a role.

### libGL.so at 0xd8aa140

`GetFBConfigsSGIX` reads its arguments and a per-context table at a0+0x4d0, then loops over a visual list. It fetches visuals through `__glXOverrideVisualGetVisualInfo` (call at 0xd8aae94) and frees them with `free` and `XFree`. The request and reply go through `_XReply`, `_XRead` and `_XFlush`. The name suggests the GLX query for framebuffer configurations, but the reply field layout is not decoded.

Grade: inferred.

### libGL.so at 0xd8acdc0

`__glXSendMakeCurrentRead` calls `__glXSetupForCommand` before it builds a request, then uses `malloc` and `free` around a reply read through `_XReply` and `_XRead`. Failures go to `__glXPostHiddenError`. The name suggests the make-current path for a context with a separate read drawable. The packed request fields are not decoded.

Grade: inferred.

### libGL.so at 0xd8b2728

`glXSelectEventSGIX` is a short request wrapper: `__glXSetupForCommand`, a few indirect calls, then `_XFlush`. It appears to send an event-selection request for a drawable. The event mask bits it passes are not established from these facts.

Grade: inferred.

### `glXDestroyGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at `0xd8b2df4`

`glXDestroyGLXPbufferSGIX` sets up a command with `__glXSetupForCommand`. It drops drawable interest with `__glXRemoveDrawableInterest` and frees the drawable's private data with `__glXFreeDrawablePrivate`, then flushes with `_XFlush`. The paired add call in the create path suggests a reference-style lifetime, which is an inference from the callee names.

Grade: inferred.

### `glXCreateGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at `0xd8b36f4`

`glXCreateGLXPbufferSGIX` registers the new drawable with `__glXAddDrawableInterest` and sends a create request that is answered through `_XReply`. Its error exits call `__glXPostError` or `__glXPostHiddenError`, and the cleanup calls `__glXRemoveDrawableInterest` and `__glXFreeDrawablePrivate`. The callee list does not show which branch leads to which exit, so the success and failure order is inferred.

Grade: inferred.

### libGL.so at 0xd8b3aa8

`glXGetVideoSyncSGI` follows the shared pointer at absolute 0x1014 into a per-drawable structure at offsets +0x114, +0xc4 and +0xcc. It makes one `ioctl` with request 0x3fe (at 0xd8b3b00) and stores the result through a0. It returns 0 on the normal path and 5 on the path at 0xd8b3b2c, and the meaning of 5 is not established.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at `0xd8b3b34`

`glXWaitVideoSyncSGI` uses the same 0x1014 pointer chain as the get routine at 0xd8b3aa8. It issues `ioctl` with request 0x3ff (at 0xd8b3bd4) and returns 0, 5 or 6 on different paths. The request number is one above the get request, which hints at a paired wait and get, but that rests only on the numbers.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at `0xd8b3bfc`

`glXDestroyGLXVideoSourceSGIX` follows the same shape as the pbuffer destroy at 0xd8b2df4. It takes and drops drawable interest through `__glXAddDrawableInterest` and `__glXRemoveDrawableInterest`, and frees the drawable private through `__glXFreeDrawablePrivate`. The video source's own private object is not released in this routine as far as the callee list shows.

Grade: inferred.

### libGL.so at 0xd8b3e14

`glXCreateGLXVideoSourceSGIX` calls `__glXInitializeVideoLibrary` and `__glXCreateVideoSourcePrivate` to build the source. It maps a packing format through `videoPackingToInternalFormat` and sends its request after `__glXSetupForCommand`. The exact fields and the error results are not decoded.

Grade: inferred.

### libGL.so at 0xd8c1618

`isNotProxy` opens a device node (path string at 0xd8e0538, flags 0x802) and calls `fcntl` on it. It then issues `ioctl` requests 0x65 and 0x66 and searches strings with `strchr` for a colon (0x3a) and a dot (0x2e). It returns 1 only on the path that reaches 0xd8c1780, and 0 elsewhere. The name suggests it tells a local display from a proxy, but the ioctl meanings are not decoded.

Grade: inferred.

### libGL.so at 0xd8c18f8

`CreateContext` calls `__glXInitialize` and reads `getenv`, then creates the context through `__glXCreateDirectContext` on one path. It resolves the visual with `__glXFindFBConfigFromVid` and `__glXFindVisualConfig`, and sets up vertex-array state with `__glXInitVertexArrayState`. Allocation uses `calloc` and `malloc`, and the fatal path calls `fprintf` and `exit`. The branch that picks direct over the other path is not decoded, so the selection rule is open.

Grade: inferred.

### libGL.so at 0xd8cae48

`glXBindSwapBarrierSGIX` is a small request wrapper: `__glXSetupForCommand`, one indirect call, then `_XFlush`. The name suggests a swap-barrier bind. The argument layout is not decoded.

Grade: inferred.

### libGL.so at 0xd8caf6c

`glXQueryMaxSwapBarriersSGIX` is a query round trip: `__glXSetupForCommand`, the reply through `_XReply`, then `_XFlush`. The name suggests it returns the maximum swap-barrier count. The reply field offsets are not decoded.

Grade: inferred.

### libGL.so at 0xd8cb918

`glXQueryHyperpipeNetworkSGIX` reads a reply through `_XReply`, allocates a buffer with `malloc`, and pulls the payload with `_XRead` and `_XEatData`. It finishes with `_XFlush`. The allocation size is probably taken from the reply, but the payload fields are not decoded.

Grade: inferred.

### libGL.so at 0xd8cbba0

`glXHyperpipeConfigSGIX` sends a configuration request through `__glXSetupForCommand`, reads a reply with `_XReply`, and flushes with `_XFlush`. It looks like the set side of the hyperpipe config pair whose query is at 0xd8cc044. The packed config fields are not decoded.

Grade: inferred.

### libGL.so at 0xd8cc044

`glXQueryHyperpipeConfigSGIX` is the query side of the pair at 0xd8cbba0. It runs `__glXSetupForCommand` and `_XReply`, allocates with `malloc`, and reads the returned records with `_XRead` and `_XEatData`. Its record layout is not decoded.

Grade: inferred.

### libGLcore.so at 0xda4fb80

`LoadAndSendStippledQuads` computes sizes with `ceil` and clears a buffer with `memset`. It then makes several indirect calls through the dispatch table, which are not resolved here. The name suggests it loads a stipple pattern and sends quads, but the sizes and dispatch targets are not established.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at `0xda50370`

`DrawBitmapUsingPolyStipple` updates the raster position through `__glOdysseyUpdateRasterPos` and `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ`. It validates hardware state with `__glOdysseyValidateHardware` and hands the quad work to `LoadAndSendStippledQuads` at 0xda4fb80. Errors go through `__glSetError`, and kernel-side work goes through `__glOdysseyIoctl`. The control flow between these calls is not fully traced.

Grade: inferred.

### libGLcore.so at 0xda51790

`__glOdylc_Color3s` reads a display-list cursor from the global at absolute 0x1010 and state words at 0x1028, 0x1030 and 0x1034. A branch at 0xda517dc compares the cursor with a limit, and on one side the routine calls `__glSPDlistSpace` at 0xda517f8 before it stores into the list. Which condition means "no room" is inferred, not decoded. The shape fits a display-list-compile short-color entry point, which is inferred from the naming and that callee.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at `0xda51bf0`

`__glOdylc_Color3ui` makes the same single call to `__glSPDlistSpace` as the Color3s entry at 0xda51790, and it is the same size. It is probably the unsigned-int variant of that display-list entry point. The bodies were not compared line by line, so this rests on the callee and size.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at `0xda51e20`

`__glOdylc_Color3us` has the same single callee and size as the Color3s entry at 0xda51790. It is probably the unsigned-short variant. The body was not diffed against 0xda51790.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at `0xda52050`

`__glOdylc_Color4b` has one callee, `__glSPDlistSpace`, and 288 bytes, the four-component size class. It is probably the display-list byte-color entry with alpha. It was not diffed against the other Color4 entries.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at `0xda52750`

`__glOdylc_Color4i` has the same single callee and four-component size as the Color4b entry at 0xda52050. It is probably the signed-int variant. It was not diffed against the other entries.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at `0xda52990`

`__glOdylc_Color4s` has the same single callee and four-component size as the Color4b entry at 0xda52050. It is probably the signed-short variant. It was not diffed against the other entries.

Grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at `0xda52bd0`

`__glOdylc_Color4ub` has the same single callee and four-component size as the Color4b entry at 0xda52050. It is probably the unsigned-byte variant with alpha. It was not diffed against the other entries.

Grade: inferred.
