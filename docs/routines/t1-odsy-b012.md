# Routine roles: odsy batch 12

Role statements for 25 routines from the odsy reading list, positions 300 to 324 (counting from 0). Each statement comes from the routine's rendered facts. All 25 entries were rendered and passed the grader, so none is rejected. Every grade is inferred: the facts show what the code does, not what the hardware must do.

### `glXDestroyGLXPbufferSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf869f8`

`glXDestroyGLXPbufferSGIX` calls `__glXSetupForCommand` at 0xcf86a20 and skips the rest when the low byte of the result is zero (branch at 0xcf86a30). Otherwise it calls `__glXAddDrawableInterest` (0xcf86a40) and `__glXRemoveDrawableInterest` (0xcf86a50), and calls `__glXFreeDrawablePrivate` (0xcf86a64) only when the word at +0x20 of the `__glXAddDrawableInterest` result is nonzero (branch at 0xcf86a5c). It then writes a request header into the buffer at [a0+176] when the buffer has 16 bytes free; when it does not, it calls `_XFlush` at 0xcf86b3c and then branches back to the header write. The name points at a pbuffer destroy request, but the facts do not name the request fields.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `glXCreateGLXPbufferSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf872f4`

`glXCreateGLXPbufferSGIX` calls `__glXSetupForCommand` (0xcf87330) and `__glXAddDrawableInterest` (0xcf87360). It copies words from the argument block (a1 at +0x24 and +0x48, a4 at +0x0 and +0x4) into the request buffer at [a0+176], and it stores fields into the new drawable record. It calls `_XFlush` (0xcf875dc) only on the path where the buffer lacks space for the request, and reads a reply through `_XReply` (0xcf87554). `__glXPostHiddenError` (0xcf87628) is reached from the failed-reply path and `__glXPostError` (0xcf87680) when `__glXAddDrawableInterest` returns zero. The name suggests a create-pbuffer request with a reply, but the reply fields and the meaning of the argument words are not named.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `glXGetVideoSyncSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf876a8`

`glXGetVideoSyncSGI` follows a pointer chain from abs 0x1028 to a display record, reads fields at +0x118, +0x128 and +0x108, and takes a device handle from a table indexed at +264. It calls `ioctl` with request 0x3fe (0xcf87700) on a stack buffer at sp-48 and stores one word into a0 (0xcf87710). It returns 0 on the normal path and 5 on the error path (0xcf8772c). The name suggests a video sync count query, which the ioctl fits, but the driver side is not in the facts.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### libGL.so 0xcf87734

`glXWaitVideoSyncSGI` uses the same display-record chain and handle table as the entry at 0xcf876a8. It calls `ioctl` with request 0x3ff (0xcf877d4) on a stack buffer at sp-80 and stores one word to a2 (0xcf877f8); the facts do not show where that word comes from. Signed checks on a0 and a1 (0xcf8776c, 0xcf87774) branch to a block away from the ioctl at 0xcf877d4; the facts give return codes 5 and 6 and a normal return of 0, but the trace does not connect each branch to a code. The name suggests a wait on a frame count with a divisor and a remainder, but the argument roles are not confirmed by the facts.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `CreateContext` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf956c8`

This is the row named `CreateContext`; the renderer left the symbol unnamed. It calls `__glXInitialize` (0xcf95700), allocates a 0x1c0-byte record with `calloc`, and fills it through `__glXCreateDirectContext` (0xcf958cc), `__glXInitVertexArrayState`, `__glXFindVisualConfig` and three calls to `__glXOverrideVisualsIdToXid` (0xcf95b88, 0xcf95c7c, 0xcf95ef8). It reads two environment strings with `getenv` (0xcf95800, 0xcf95dbc), and one error path prints with `fprintf` and calls `exit` with status 0 (0xcf95f74, 0xcf95f80). It returns the record pointer on success (0xcf95a14) and 0 on the other returns; the environment variable names are not in the facts.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `glXJoinSwapGroupSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf9eb34`

`glXJoinSwapGroupSGIX` calls `__glXSetupForCommand` (0xcf9eb60), then writes a request header into [a0+176], with a 2-byte field at +0x2, a 1-byte field at +0x1 and 4-byte words at +0x4, +0xc and +0x10. Between those steps it calls unnamed callees with [a0+2408] as an argument when that word is nonzero. It calls `_XFlush` at 0xcf9ec3c only on the path where the buffer lacks 20 bytes of space, and the normal path returns without it. No reply is read (no `_XReply` call), so the request looks one-way, but the field meanings are not named.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf9ec54`

`glXBindSwapBarrierSGIX` has the same shape as the join routine at 0xcf9eb34: `__glXSetupForCommand` at 0xcf9ec80, the same request header writes into [a0+176], unnamed callees with [a0+2408] when it is nonzero, and `_XFlush` at 0xcf9ed5c only on the path where the buffer lacks 20 bytes of space. It calls no `_XReply`. The name suggests a bind-swap-barrier request, and the one-way send fits, but the barrier and group identifiers are not in the facts.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf9ed74`

`glXQueryMaxSwapBarriersSGIX` calls `__glXSetupForCommand` (0xcf9eda0) and writes a request header into [a0+176]. It calls `_XReply` at 0xcf9ee38 with a1 = a stack buffer at sp-112 and a2 = a3 = 0; [a0+176] and [a0+152]+1 appear in a6 and a7 at that call, which a four-argument call would not take. When `_XReply` returns nonzero it stores one word to a2 (0xcf9ee80) and returns 1 (0xcf9ee90); when it returns zero it returns 0 (0xcf9eeec). `_XFlush` (0xcf9ee9c) is on the path where the buffer lacks space. The name suggests a query for the maximum swap barrier count, which fits a read-and-return request, but the reply layout is not named.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `LoadAndSendStippledQuads` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd54010`

The row is unnamed in the renderer; the inventory name is `LoadAndSendStippledQuads`. It reads one word through a1 (0xbd54030) and calls `ceil` three times (0xbd54060, 0xbd5408c, 0xbd540c4) and once more at 0xbd54570, two of them with single-precision constants. It clears a 4-byte stack slot with `memset` (0xbd54688) and calls an unnamed callee with 0x806f (0xbd547d8). The name suggests a stipple pattern sent as quads, but the facts show rounding and a small stack buffer, and the quad emission path is not traced.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd54830`

`DrawBitmapUsingPolyStipple` calls `__glOdysseyUpdateRasterPos` (0xbd549b8) only when the byte at a0+0xcb78 (loaded at 0xbd549a0, tested at 0xbd549ac) is nonzero, and then `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` (0xbd549c4). It calls `__glOdysseyValidateHardware` (0xbd54bc4) only when the word at +0x18fdc (a0+102364) is nonzero, and calls the stipple loader at 0xbd54010 at 0xbd54bec. It also makes a run of calls to unnamed callees with constants such as 0x1700 to 0x1702, 0xb00, 0xba0 and 0xba6, makes one `__glOdysseyIoctl` call with request 0x6f64000d (0xbd55038), and calls `__glSetError` (0xbd54fb4). The name fits a bitmap drawn with a polygon stipple, but which branch reaches the actual draw is not traced, so the order of operations is only partly known.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd55c70`

`__glOdylc_Color3s` is a 276-byte stub. It calls `__glSPDlistSpace` with a0 set to 0 (0xbd55cd8), tests the result and a counter at abs 0x1048 (0xbd55cbc, 0xbd55cf8), and updates the words at abs 0x1048, 0x1058 and 0x1060. It writes a 4-byte value into [0x1020]+0x15ec (0xbd55c88) and returns either the counter or the space pointer (0xbd55d5c, 0xbd55d7c). The name suggests a short-vector color call compiled into a display list, and the space call supports that, but the reading relies on the name.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd560d0`

`__glOdylc_Color3ui` has the same 276-byte shape as the stub at 0xbd55c70. It calls `__glSPDlistSpace` with a0 set to 0 (0xbd56138), updates abs 0x1048, 0x1058 and 0x1060, and writes a 4-byte value into [0x1020]+0x15ec (0xbd560e8). It returns the counter or the space pointer (0xbd561bc, 0xbd561dc). The name suggests the unsigned-int three-component color call in a display list, with the same caveat that the name is the only source for that.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd56300`

`__glOdylc_Color3us` matches the other 276-byte stubs. It calls `__glSPDlistSpace` at 0xbd56368, updates abs 0x1048, 0x1058 and 0x1060, writes [0x1020]+0x15ec (0xbd56318), and returns at 0xbd563ec or 0xbd5640c. The name suggests the unsigned-short three-component color call, and the facts do not contradict it.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### libGLcore.so 0xbd56530

`__glOdylc_Color4b` is a 288-byte stub, 12 bytes longer than the three-component stubs, which fits one more argument. It calls `__glSPDlistSpace` at 0xbd5659c, updates the same abs 0x1048, 0x1058 and 0x1060 words, and writes [0x1020]+0x15ec (0xbd56548). It returns at 0xbd56628 or 0xbd56648. The name suggests a four-component byte color call in a display list; the size difference supports the extra argument, but it is not confirmed.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd56c30`

`__glOdylc_Color4i` is a 288-byte stub with the same calls and writes as `__glOdylc_Color4b`: `__glSPDlistSpace` at 0xbd56c9c, the abs 0x1048, 0x1058 and 0x1060 words, and [0x1020]+0x15ec (0xbd56c48). It returns at 0xbd56d28 or 0xbd56d48. The name suggests a four-component int color call in a display list.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd56e70`

`__glOdylc_Color4s` is a 288-byte stub. It calls `__glSPDlistSpace` at 0xbd56edc, updates abs 0x1048, 0x1058 and 0x1060, writes [0x1020]+0x15ec (0xbd56e88), and returns at 0xbd56f68 or 0xbd56f88. The name suggests a four-component short color call in a display list.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd570b0`

`__glOdylc_Color4ub` is a 288-byte stub. It calls `__glSPDlistSpace` at 0xbd5711c, updates abs 0x1048, 0x1058 and 0x1060, writes [0x1020]+0x15ec (0xbd570c8), and returns at 0xbd571a8 or 0xbd571c8. The name suggests a four-component unsigned-byte color call in a display list.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd572f0`

`__glOdylc_Color4ui` is a 288-byte stub. It calls `__glSPDlistSpace` at 0xbd5735c, updates abs 0x1048, 0x1058 and 0x1060, writes [0x1020]+0x15ec (0xbd57308), and returns at 0xbd573e8 or 0xbd57408. The name suggests a four-component unsigned-int color call in a display list.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd57530`

`__glOdylc_Color4us` is a 288-byte stub. It calls `__glSPDlistSpace` at 0xbd5759c, updates abs 0x1048, 0x1058 and 0x1060, writes [0x1020]+0x15ec (0xbd57548), and returns at 0xbd57628 or 0xbd57648. The name suggests a four-component unsigned-short color call in a display list.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd58560`

`__glOdyim_Clear` tests the word at abs 0x1030 and a mask value, and raises `__glSetError` with 0x502 (0xbd58598) or 0x501 (0xbd585f0) on the failing paths. On the normal paths it calls `__glOdysseyWindowToNormalizedEyeZ` (0xbd588a0), `__glOdysseyClear` (0xbd58bd0, the next entry) at 0xbd58904 and 0xbd58a40, and `__glOdysseySetDrawbuf` at 0xbd589f8 and 0xbd58a5c. It also makes one `__glOdysseyIoctl` call with request 0x6f64000d (0xbd58b60). The name suggests the immediate-mode clear front end, but the facts do not show which argument chooses between the two `__glOdysseyClear` paths.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### libGLcore.so 0xbd58bd0

`__glOdysseyClear` reads and writes context fields at +0xa024, +0xa028, +0xa054 and +0xa058, and writes an integer to abs 0x1030. It makes 44 integer stores and 20 single-precision stores to abs 0x4000, with four single-precision inputs read from a1 at +0x0 to +0xc (0xbd59048 onward). It calls `__glOdysseyValidateHardware` at 0xbd58fc4 with a2 = 0x10415 and a5 = 0x100000, and that call is skipped when the word at +0x18fdc (a0+102364) is zero (branch at 0xbd58fb8). It returns 0x10000 or 0x10046 (0xbd591bc). The name suggests a hardware clear that programs clear values into a register window, but the meaning of the 0x4000 window is not established by these facts.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd596d0`

`__glOdysseyFindWindowSize` calls an unnamed callee at 0xbd59710 with four stack addresses (sp-72 to sp-80) as arguments, then calls `__glChangeWindowSize` at 0xbd59770 only when the new size differs from the words at context +4064 and +4068. A second unnamed callee takes two more stack addresses (0xbd59784), `__glChangeReadWindowSize` runs at 0xbd597ac only when its size words at +4072 and +4076 differ, and `__glChangeWindowSize` runs again at 0xbd597cc with the values at context +1960 and +1964 when a tested word is nonzero (branch at 0xbd597bc). It returns 0x10000, a pointer into the context at a0+83336, or a value the facts do not resolve (0xbd59814). The name suggests a query of window geometry that pushes the new size into the context, and the calls support that, but the query callee is unnamed.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd5d4e0`

`__glOdysseyInitDefaultValues` is a long setup routine with 89 calls in all. It clears 0x40 bytes at a0+45072 with `bzero` (0xbd5d74c) and then calls GL state setters: `__glOdyim_Disable` and `__glOdyim_Enable` with tokens such as 0xb10, 0x8037, 0xbd0 and 0xbf1, and setters for cull, front face, shade model, light model, fog, masks, stencil, depth, blend, line and point size, polygon stipple, material and fragment lighting. The constants match GL default-state values, such as 0x201 (`GL_LESS`), 0x901 (`GL_CCW`) and 0x1d01 (`GL_SMOOTH`). It finishes with `__glOdysseyInitLighting` (0xbd5e014), `__glOdysseyInitFragmentLighting`, `__glOdysseyInitFragmentMaterial`, `__glOdysseyTextureDriverInit` (0xbd5e038) and a `getenv` call (0xbd5e164). The name and the default constants both point to context default initialization, but the facts do not confirm the default values beyond the constants passed.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### libGLcore.so 0xbd741a0

`ApplyMaterialF` reads a four-word float vector through a2 (+0x0 to +0xc) and dispatches on a1 against 0x1200 to 0x1603. Those are the GL material tokens (0x1200 ambient, 0x1201 diffuse, 0x1202 specular, 0x1600 emission, 0x1601 shininess, 0x1602 ambient and diffuse, 0x1603 color indexes), identified from their public values. It writes fields of the record at a0 (+0x0 to +0x1c), updates [0x1020]+0xbc58, and stores 21 words to the fixed address 0x4000, then returns [[0x1020]+41160] (0xbd7434c). The name matches `glMaterialfv`, but the identity of the 0x4000 window is not established.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)

### `ApplyMaterialI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd74890`

The row is unnamed in the renderer; the inventory name is `ApplyMaterialI`. It has the same shape as `ApplyMaterialF` at 0xbd741a0, but reads its material values as integer words through a2 (`lw` at +0x0, +0x4, +0x8 and +0xc). It makes 20 single-precision loads from the same address, [0x1020]+0xf4c, each followed by a double-precision compare against 1.0, but the facts do not show what is converted or how. It writes 21 words to 0x4000 and returns the same [[0x1020]+41160] (0xbd74a98). The name suggests the integer-argument form of the material call, but what the word at +0xf4c holds is not in the facts.

Grade: inferred.

Reviewed: 2026-11-12 (sonnet)
