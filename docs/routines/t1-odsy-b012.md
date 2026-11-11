# Routine roles: odsy batch 12

Role statements for 25 routines from the odsy reading list, positions 300 to 324 (counting from 0). Each statement comes from the routine's rendered facts. All 25 entries were rendered and passed the grader, so none is rejected. Every grade is inferred: the facts show what the code does, not what the hardware must do.

### `glXDestroyGLXPbufferSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf869f8`

`glXDestroyGLXPbufferSGIX` calls `__glXSetupForCommand` at 0xcf86a20 and branches past its work when the low byte of the result is zero. It then adds, removes and frees drawable state through `__glXAddDrawableInterest`, `__glXRemoveDrawableInterest` and `__glXFreeDrawablePrivate` (0xcf86a40 to 0xcf86a64), writes a request header into the buffer at [a0+176], and ends with `_XFlush` at 0xcf86b3c. The name points at a pbuffer destroy request, but the facts do not name the request fields.

Grade: inferred.

### `glXCreateGLXPbufferSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf872f4`

`glXCreateGLXPbufferSGIX` calls `__glXSetupForCommand` (0xcf87330) and `__glXAddDrawableInterest` (0xcf87360). It copies words from the argument block (a1 at +0x24 and +0x48, a4 at +0x0 and +0x4) into the request buffer at [a0+176], and it stores fields into the new drawable record. It sends the request with `_XFlush` (0xcf875dc) and reads a reply through `_XReply` (0xcf87554); errors go to `__glXPostHiddenError` (0xcf87628) and `__glXPostError` (0xcf87680). The name suggests a create-pbuffer request with a reply, but the reply fields and the meaning of the argument words are not named.

Grade: inferred.

### `glXGetVideoSyncSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf876a8`

`glXGetVideoSyncSGI` follows a pointer chain from abs 0x1028 to a display record, reads fields at +0x118, +0x128 and +0x108, and takes a device handle from a table indexed at +264. It calls `ioctl` with request 0x3fe (0xcf87700) on a stack buffer at sp-48 and stores one word into a0 (0xcf87710). It returns 0 on the normal path and 5 on the error path (0xcf8772c). The name suggests a video sync count query, which the ioctl fits, but the driver side is not in the facts.

Grade: inferred.

### libGL.so 0xcf87734

`glXWaitVideoSyncSGI` uses the same display-record chain and handle table as the entry at 0xcf876a8. It calls `ioctl` with request 0x3ff (0xcf877d4) and writes the result to a2 (0xcf877f8). Signed checks on a0 and a1 (0xcf8776c, 0xcf87774) branch to a block away from the ioctl at 0xcf877d4; the facts give return codes 5 and 6 and a normal return of 0, but the trace does not connect each branch to a code. The name suggests a wait on a frame count with a divisor and a remainder, but the argument roles are not confirmed by the facts.

Grade: inferred.

### `CreateContext` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf956c8`

This is the row named `CreateContext`; the renderer left the symbol unnamed. It calls `__glXInitialize` (0xcf95700), allocates a 0x1c0-byte record with `calloc`, and fills it through `__glXCreateDirectContext` (0xcf958cc), `__glXInitVertexArrayState`, `__glXFindVisualConfig` and two calls to `__glXOverrideVisualsIdToXid`. It reads two environment strings with `getenv` (0xcf95800, 0xcf95dbc), and one error path prints with `fprintf` and calls `exit` with status 0 (0xcf95f74, 0xcf95f80). It returns the record pointer on success (0xcf95a14) and 0 on the other returns; the environment variable names are not in the facts.

Grade: inferred.

### `glXJoinSwapGroupSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf9eb34`

`glXJoinSwapGroupSGIX` calls `__glXSetupForCommand` (0xcf9eb60), then writes a request header into [a0+176], with a 2-byte field at +0x2, a 1-byte field at +0x1 and 4-byte words at +0x4, +0xc and +0x10. Between those steps it calls unnamed callees with [a0+2408] as an argument, and it ends with `_XFlush` at 0xcf9ec3c. No reply is read, so the request looks one-way, but the field meanings are not named.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf9ec54`

`glXBindSwapBarrierSGIX` has the same shape as the join routine at 0xcf9eb34: `__glXSetupForCommand` at 0xcf9ec80, the same request header writes into [a0+176], unnamed callees with [a0+2408], and `_XFlush` at 0xcf9ed5c. It reads no reply. The name suggests a bind-swap-barrier request, and the one-way send fits, but the barrier and group identifiers are not in the facts.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf9ed74`

`glXQueryMaxSwapBarriersSGIX` calls `__glXSetupForCommand` (0xcf9eda0) and writes a request header into [a0+176]. It reads the reply with `_XReply` at 0xcf9ee38, passing the request buffer and a value from the context at +152 plus one, and stores the reply word through a2 (0xcf9ee80). It returns 1 on one path (0xcf9ee90) and 0 on another (0xcf9eeec). The name suggests a query for the maximum swap barrier count, which fits a read-and-return request, but the reply layout is not named.

Grade: inferred.

### `LoadAndSendStippledQuads` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd54010`

The row is unnamed in the renderer; the inventory name is `LoadAndSendStippledQuads`. It reads one word through a1 (0xbd54030) and calls `ceil` three times (0xbd54060, 0xbd5408c, 0xbd540c4) and once more at 0xbd54570, two of them with single-precision constants. It clears a 4-byte stack slot with `memset` (0xbd54688) and calls an unnamed callee with 0x806f (0xbd547d8). The name suggests a stipple pattern sent as quads, but the facts show rounding and a small stack buffer, and the quad emission path is not traced.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd54830`

`DrawBitmapUsingPolyStipple` updates the raster position through `__glOdysseyUpdateRasterPos` (0xbd549b8) and `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` (0xbd549c4). It validates hardware state through `__glOdysseyValidateHardware` (0xbd54bc4) and calls the stipple loader at 0xbd54010 on a branch at 0xbd54bec. It also makes a run of queries with constants such as 0x1700 to 0x1702, 0xb00, 0xba0 and 0xba6, makes one `__glOdysseyIoctl` call with request 0x6f64000d (0xbd55038), and calls `__glSetError` (0xbd54fb4). The name fits a bitmap drawn with a polygon stipple, but which branch reaches the actual draw is not traced, so the order of operations is only partly known.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd55c70`

`__glOdylc_Color3s` is a 276-byte stub. It calls `__glSPDlistSpace` with a0 set to 0 (0xbd55cd8), tests the result and a counter at abs 0x1048 (0xbd55cbc, 0xbd55cf8), and updates the words at abs 0x1048, 0x1058 and 0x1060. It writes a 4-byte value into [0x1020]+0x15ec (0xbd55c88) and returns either the counter or the space pointer (0xbd55d5c, 0xbd55d7c). The name suggests a short-vector color call compiled into a display list, and the space call supports that, but the reading relies on the name.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd560d0`

`__glOdylc_Color3ui` has the same 276-byte shape as the stub at 0xbd55c70. It calls `__glSPDlistSpace` with a0 set to 0 (0xbd56138), updates abs 0x1048, 0x1058 and 0x1060, and writes a 4-byte value into [0x1020]+0x15ec (0xbd560e8). It returns the counter or the space pointer (0xbd561bc, 0xbd561dc). The name suggests the unsigned-int three-component color call in a display list, with the same caveat that the name is the only source for that.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd56300`

`__glOdylc_Color3us` matches the other 276-byte stubs. It calls `__glSPDlistSpace` at 0xbd56368, updates abs 0x1048, 0x1058 and 0x1060, writes [0x1020]+0x15ec (0xbd56318), and returns at 0xbd563ec or 0xbd5640c. The name suggests the unsigned-short three-component color call, and the facts do not contradict it.

Grade: inferred.

### libGLcore.so 0xbd56530

`__glOdylc_Color4b` is a 288-byte stub, 12 bytes longer than the three-component stubs, which fits one more argument. It calls `__glSPDlistSpace` at 0xbd5659c, updates the same abs 0x1048, 0x1058 and 0x1060 words, and writes [0x1020]+0x15ec (0xbd56548). It returns at 0xbd56628 or 0xbd56648. The name suggests a four-component byte color call in a display list; the size difference supports the extra argument, but it is not confirmed.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd56c30`

`__glOdylc_Color4i` is a 288-byte stub with the same calls and writes as `__glOdylc_Color4b`: `__glSPDlistSpace` at 0xbd56c9c, the abs 0x1048, 0x1058 and 0x1060 words, and [0x1020]+0x15ec (0xbd56c48). It returns at 0xbd56d28 or 0xbd56d48. The name suggests a four-component int color call in a display list.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd56e70`

`__glOdylc_Color4s` is a 288-byte stub. It calls `__glSPDlistSpace` at 0xbd56edc, updates abs 0x1048, 0x1058 and 0x1060, writes [0x1020]+0x15ec (0xbd56e88), and returns at 0xbd56f68 or 0xbd56f88. The name suggests a four-component short color call in a display list.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd570b0`

`__glOdylc_Color4ub` is a 288-byte stub. It calls `__glSPDlistSpace` at 0xbd5711c, updates abs 0x1048, 0x1058 and 0x1060, writes [0x1020]+0x15ec (0xbd570c8), and returns at 0xbd571a8 or 0xbd571c8. The name suggests a four-component unsigned-byte color call in a display list.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd572f0`

`__glOdylc_Color4ui` is a 288-byte stub. It calls `__glSPDlistSpace` at 0xbd5735c, updates abs 0x1048, 0x1058 and 0x1060, writes [0x1020]+0x15ec (0xbd57308), and returns at 0xbd573e8 or 0xbd57408. The name suggests a four-component unsigned-int color call in a display list.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd57530`

`__glOdylc_Color4us` is a 288-byte stub. It calls `__glSPDlistSpace` at 0xbd5759c, updates abs 0x1048, 0x1058 and 0x1060, writes [0x1020]+0x15ec (0xbd57548), and returns at 0xbd57628 or 0xbd57648. The name suggests a four-component unsigned-short color call in a display list.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd58560`

`__glOdyim_Clear` checks its arguments and raises `__glSetError` with 0x502 (0xbd58598) or 0x501 (0xbd585f0) on the failing paths. On the normal paths it calls `__glOdysseyWindowToNormalizedEyeZ` (0xbd588a0), `__glOdysseyClear` (0xbd58bd0, the next entry) at 0xbd58904 and 0xbd58a40, and `__glOdysseySetDrawbuf` at 0xbd589f8 and 0xbd58a5c. It also makes one `__glOdysseyIoctl` call with request 0x6f64000d (0xbd58b60). The name suggests the immediate-mode clear front end, but the facts do not show which argument chooses between the two `__glOdysseyClear` paths.

Grade: inferred.

### libGLcore.so 0xbd58bd0

`__glOdysseyClear` reads and writes context fields at +0xa024, +0xa028, +0xa054 and +0xa058, and writes an integer to abs 0x1030. It makes 44 integer stores and 20 single-precision stores to abs 0x4000, with four single-precision inputs read from a1 at +0x0 to +0xc (0xbd59048 onward). It calls `__glOdysseyValidateHardware` at 0xbd58fc4 with flags 0x10415 and 0x100000, and returns 0x10000 or 0x10046 (0xbd591bc). The name suggests a hardware clear that programs clear values into a register window, but the meaning of the 0x4000 window is not established by these facts.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd596d0`

`__glOdysseyFindWindowSize` calls an unnamed callee at 0xbd59710 that fills four stack slots (sp-72 to sp-80), then calls `__glChangeWindowSize` at 0xbd59770. A second unnamed callee fills two more stack slots (0xbd59784), `__glChangeReadWindowSize` runs at 0xbd597ac, and `__glChangeWindowSize` runs again at 0xbd597cc with the values at context +1960 and +1964. It returns either 0x10000 or a pointer into the context at a0+83336 (0xbd59814). The name suggests a query of window geometry that pushes the new size into the context, and the calls support that, but the query callee is unnamed.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd5d4e0`

`__glOdysseyInitDefaultValues` is a long setup routine. It clears 0x40 bytes at a0+45072 with `bzero` (0xbd5d74c) and then makes 89 calls to GL state setters: `__glOdyim_Disable` and `__glOdyim_Enable` with tokens such as 0xb10, 0x8037, 0xbd0 and 0xbf1, and setters for cull, front face, shade model, light model, fog, masks, stencil, depth, blend, line and point size, polygon stipple, material and fragment lighting. The constants match GL default-state values, such as 0x201 (`GL_LESS`), 0x901 (`GL_CCW`) and 0x1d01 (`GL_SMOOTH`). It finishes with `__glOdysseyInitLighting` (0xbd5e014), `__glOdysseyInitFragmentLighting`, `__glOdysseyInitFragmentMaterial`, `__glOdysseyTextureDriverInit` (0xbd5e038) and a `getenv` call (0xbd5e164). The name and the default constants both point to context default initialization, but the facts do not confirm the default values beyond the constants passed.

Grade: inferred.

### libGLcore.so 0xbd741a0

`ApplyMaterialF` reads a four-word float vector through a2 (+0x0 to +0xc) and dispatches on a1 against 0x1200 to 0x1603. Those are the GL material tokens (0x1200 ambient, 0x1201 diffuse, 0x1202 specular, 0x1600 emission, 0x1601 shininess, 0x1602 ambient and diffuse, 0x1603 color indexes), identified from their public values. It writes fields of the record at a0 (+0x0 to +0x1c), updates [0x1020]+0xbc58, and stores 21 words to the fixed address 0x4000, then returns [[0x1020]+41160] (0xbd7434c). The name matches `glMaterialfv`, but the identity of the 0x4000 window is not established.

Grade: inferred.

### `ApplyMaterialI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd74890`

The row is unnamed in the renderer; the inventory name is `ApplyMaterialI`. It has the same shape as `ApplyMaterialF` at 0xbd741a0, but reads its material values as integer words through a2 (`lw` at +0x0, +0x4 and +0x8) and converts them with 20 single-precision loads from [0x1020]+0xf4c. It writes the same 21 words to 0x4000 and returns the same [[0x1020]+41160] (0xbd74a98). The name suggests the integer-argument form of the material call, and the loads from the table at +0xf4c suggest a conversion, but the table's contents are not in the facts.

Grade: inferred.
