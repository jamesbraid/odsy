# Routine role statements, odsy reading batch 17

These 25 entries are the ranked targets 425 to 449 of the odsy hardware-linked list, rendered from their instruction facts and graded by the reading tools. All 25 passed the grader, and none were rejected. Each role statement comes from the rendered facts (registers, calls and constants) only. The name in each paragraph is the inventory name, and the grade is inferred throughout because the facts do not establish any role on their own. These describe software behavior in the graphics libraries, not board behavior.

## `__glOdyim_ScratchColor4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at `0xdadefc0`

`__glOdyim_ScratchColor4ub` is a 44-byte leaf with no calls. It stores one 8-byte value (`sdc1` at 0xdadefd8) and three 4-byte words (at 0xdadefdc, 0xdadefe0 and 0xdadefe8) to the fixed address 0x10000, then returns that address in v0. The facts do not show which registers supply those values, so the unsigned-byte color conversion the name suggests is not confirmed.

Grade: inferred.

## `usr/gfx/arch/IP30ODSY/libGLcore.so` at `0xdadf0c0`

`__glOdyim_ScratchColor4ui` has the same shape as its `ub` sibling: 44 bytes, no calls, one `sdc1` at 0xdadf0d8 and three word stores to 0x10000 (at 0xdadf0dc, 0xdadf0e0 and 0xdadf0e8), returning 0x10000. The `ui` suffix suggests unsigned-int color arguments. The facts do not show the argument loads, so that stays unconfirmed.

Grade: inferred.

## `usr/gfx/arch/IP30ODSY/libGLcore.so` at `0xdadf1c0`

`__glOdyim_ScratchColor4us` matches the other scratch-color variants: 44 bytes, no calls, an 8-byte store at 0xdadf1d8 and three word stores to 0x10000, returning 0x10000. The `us` suffix suggests unsigned-short color arguments. The rendered facts do not establish the argument widths, so treat that reading as a guess.

Grade: inferred.

## `__glOdyim_ScratchIndexd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at `0xdadf2c0`

`__glOdyim_ScratchIndexd` is a 28-byte leaf with no calls. It makes a single 8-byte store (`sdc1` at 0xdadf2d8) to the fixed address 0x10000 and returns that address. The `Indexd` suffix suggests a double-precision color index, but only the store width is in the facts.

Grade: inferred.

## `__glXOpenGraphicsDevice` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at `0xd80e4e4`

`__glXOpenGraphicsDevice` is a 396-byte n32 routine. It checks its argument a0 against 0x41 and calls `__glXFatal` when the value is out of range, then reads a per-device table entry through the pointer at abs 0x1014. It opens a device path string at 0xd842828 with flags 0x802, applies `fcntl` with arguments 0x2 and 0x5 to the descriptor, and issues `ioctl` 0x65 on it, recording results in the table entry and at offset 0x104. The shape suggests it opens and initializes one graphics device, but the fcntl and ioctl constants are not named in the facts, so their meanings are open.

Grade: inferred.

## `GetFBConfigsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at `0xd81b210`

`GetFBConfigsSGIX` is the largest routine in this batch, at 3804 bytes. It sends a request through `_XReply` (at 0xd81b2c8), flushes with `_XFlush` and reads the reply with `_XRead` (at 0xd81b5d0). It allocates and clears buffers with `malloc`, `memset` and `free`, and calls `__glXOverrideVisualGetVisualInfo` on one path before releasing its result with `XFree`. A long chain of compares on a5 (from about 0xd81b630 on) selects per-attribute stores, against values such as 0x8018, 0x8017, 0x800b and 0x8028 that look like GLX attribute tokens; the facts do not name them, so this chain is only partly decoded here.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at `0xd823fec`

`__glXGetDrawableAttributes` is a 1040-byte n32 routine. It calls `__glXSetupForCommand`, sends a request with `_XReply` (the reply size argument is 0x1000a), and reads the reply with `_XRead` into a `malloc`'d buffer. It writes word fields at offsets 0x0 through 0x18 of the output argument a2, and an indirect jump at 0xd824310 through the table at 0xd844788 chooses which store runs. It returns 0 or 1, and the table's meaning is not established by the facts.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at `0xd824ff0`

`glXWaitVideoSyncSGI` is a 200-byte n32 routine. It reads the per-display state at abs 0x1014 and a device descriptor index from it, then calls `ioctl` with request 0x3ff on that descriptor, passing a stack buffer and the entry arguments a0 and a1. It writes the result word through a2 and returns 6 or 5 on two early exits and 0 on the normal path. The facts do not say what the early return codes mean.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at `0xd8250b8`

`glXDestroyGLXVideoSourceSGIX` is a 320-byte n32 routine. It calls `__glXSetupForCommand`, then `__glXAddDrawableInterest`, `__glXRemoveDrawableInterest` and `__glXFreeDrawablePrivate` on the value the add call returned, which suggests it releases a drawable record the video source held. It then sends a request with an unnamed callee using the value 0x10003 and flushes with `_XFlush`. The facts show only the call order, so the object's origin is inferred.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at `0xd825758`

`glXSwapIntervalSGI` is a 440-byte n32 routine. It walks from abs 0x1014 to the current drawable record, then calls `ioctl` with request 0x3ee on the device descriptor, with the entry argument a0 passed in the ioctl's a5 slot. It also calls `__glXSetupForCommand`, sends a request through an unnamed callee and flushes with `_XFlush`. It returns 0, 5 or 6 on its exit paths. The name suggests the entry argument is the swap interval, but the facts do not confirm that.

Grade: inferred.

## `isNotProxy` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at `0xd8323bc`

`isNotProxy` is a 420-byte n32 routine. It opens a fixed device path at 0xd844560 with flags 0x802, applies `fcntl` with 0x2 and 0x5, issues `ioctl` 0x65 and then `ioctl` 0x66 into a 40-byte stack buffer, and closes the descriptor on each exit path. Before opening it scans a string with `strchr` for ':' (0x3a), which suggests the path can carry a host prefix. The name suggests a check that the display is not a proxy, but it returns 0 or 1 and the facts do not say which value means "not a proxy".

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at `0xd83269c`

`CreateContext` is a 2184-byte n32 routine. It calls `__glXInitialize`, allocates a 300-byte (0x12c) context record with `calloc`, and fills it from the caller's arguments a2 and a4 and from the initialized state. It reads environment variables with `getenv` and compares the first byte of the value against 'y', 'n' and 'N' (0x79, 0x6e, 0x4e). It also reads the debug word `__glx_debug`, and it creates the direct context with `__glXCreateDirectContext` and sets up vertex-array state with `__glXInitVertexArrayState`. The error exits print through `fprintf` to stderr and call `exit`.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at `0xd838c8c`

`glXCreateGLXPixmapWithConfigSGIX` is a 336-byte n32 routine. It calls `__glXSetupForCommand`, then builds a request from fields of the caller's argument a1 (offsets 0x24, 0x48, +36 and +72), passes the constants 0x10006 and 0x10 to an unnamed callee, and flushes with `_XFlush`. It copies fields into the connection record at offsets 0x64 through 0x6c. It returns the callee's value on one path and 0 on the normal path.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at `0xd83c218`

`glXQueryMaxSwapBarriersSGIX` is a 372-byte n32 routine. It calls `__glXSetupForCommand`, sends a request through an unnamed callee, then calls `_XReply` with the opcode-like value 0x11 and the argument 0x1000d, using the connection field at offset 108. The one-word result goes through the output pointer a2, and `_XFlush` runs before return. It returns 1 or 0 depending on the path.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at `0xd961510`

`__glOdylc_Color3s` is a 328-byte n32 routine. It loads a per-context pointer from abs 0x1010 and a counter at offset 0x13d4 from it, stores the incremented counter back, and reads the state words at abs 0x1028, 0x1030 and 0x1034. It reserves space through `__glSPDlistSpace` (called via the pointer at 0xd9fb4b0) with the arguments a3 = [0x1010], a4 = 0x10000 and a5 = [0x1028], then returns that call's value. The `lc` in the name suggests a display-list-compile variant of `glColor3s`, but the facts show only the storage pattern.

Grade: inferred.

## `__glOdylc_Color3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at `0xd961a30`

`__glOdylc_Color3ui` follows the same pattern as `Color3s` in 328 bytes: the context pointer and counter at 0x13d4, the state words at abs 0x1028, 0x1030 and 0x1034, and a call to `__glSPDlistSpace` with a3 = [0x1010], a4 = 0x10000 and a5 = [0x1028]. It returns that call's value. The stores it makes to unresolved addresses are not identified, so what it writes into the list is open.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at `0xd961cc0`

`__glOdylc_Color3us` is also a 328-byte routine with the Color3 storage pattern and the same `__glSPDlistSpace` call, returning that call's value. Its only visible difference from the `s` and `ui` siblings is the constants in the stores. The name points to a list-compile variant of `glColor3us`, which the facts do not confirm.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at `0xd961f50`

`__glOdylc_Color4b` is a 344-byte routine that uses the same context counter and state words as the Color3 group. Its `__glSPDlistSpace` call takes a different argument order: the entry argument a3 is passed through, with a4 = [0x1010], a5 = 0x10000 and a6 = [0x1028]. It returns that call's value. The four-argument form is taken from the rendered call, not from a documented signature.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at `0xd9627a0`

`__glOdylc_Color4i` is a 344-byte routine with the Color4 call shape: entry argument a3 passed through, a4 = [0x1010], a5 = 0x10000 and a6 = [0x1028], and the same context counter and state words. It returns the `__glSPDlistSpace` result. Apart from the constant stores, it matches `Color4b`.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at `0xd962a50`

`__glOdylc_Color4s` is a 344-byte routine in the Color4 group. It reads the context counter and the three state words, reserves list space through `__glSPDlistSpace` with the Color4 argument order, and returns that result. The shape alone does not say which list or which element is written.

Grade: inferred.

## `__glOdylc_Color4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at `0xd962d00`

`__glOdylc_Color4ub` is a 344-byte routine in the Color4 group, with the same context counter, state words and `__glSPDlistSpace` call. The name suggests unsigned-byte color arguments, and nothing in the facts contradicts that, but the byte-width loads are not shown. It returns the callee's value.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at `0xd962fb0`

`__glOdylc_Color4ui` is a 344-byte routine in the Color4 group, with the same context counter, state words and `__glSPDlistSpace` call. Its name suggests unsigned-int color arguments. The rendered facts do not show the argument loads, so that reading is inferred.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at `0xd963260`

`__glOdylc_Color4us` is a 344-byte routine in the Color4 group, with the same context counter, state words and `__glSPDlistSpace` call. Its name suggests unsigned-short color arguments. It returns the callee's value, and nothing else in the facts identifies the element written.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at `0xd9644d0`

`__glOdyim_Clear` is a 1476-byte routine. It reads the context pointer at abs 0x1010 and a second global at 0x1018, checks byte and halfword flags in the context (at offsets 0xc99, 0xc9a and 0x68a) and raises GL_INVALID_VALUE (0x501) or GL_INVALID_OPERATION (0x502) through `__glSetError` on bad-argument paths. On the normal path it calls `__glOdysseyClear` (at 0xd964aa0) and restores the draw buffer through `__glOdysseySetDrawbuf`. The clear-depth value is passed through `__glOdysseyWindowToNormalizedEyeZ` alongside masks such as 0xff000, which suggests a packed bit field, but the mask decode is only partly resolved.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at `0xd983680`

`ApplyMaterialF` is a 1892-byte routine. It reads four single-precision values from the caller's array a2 (at offsets 0x0, 0x4, 0x8 and 0xc) and stores them into the target record at a0 offsets 0x0 through 0x1c. It reads 16 word fields at context offsets 0x7c70 through 0x7cac in steps of 4, through the pointer at abs 0x1010, which looks like a 4x4 table, and writes 38 words to the fixed address 0x10000. The name suggests the float form of `glMaterial`, but the facts do not name the face or parameter enum, so the material mapping is not established.

Grade: inferred.
