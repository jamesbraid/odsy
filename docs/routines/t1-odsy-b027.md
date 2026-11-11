# Routine roles: GLX client and display-list routines (batch 27)

The 25 routines below come from `libGL.so` and `libGLcore.so` under `usr/gfx/arch/IP35ODSY64/`. Each one was rendered from its bytes and graded against the rendered facts, and all 25 passed. Every role is inferred, not established. The facts give the callees and constants, but many callees are unnamed and the raw request numbers have no stated meaning, so the roles stay partly open where noted.

- `__glXGetDrawableAttributes` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x2158a04
  **Inferred.** This looks like the client half of a drawable attribute query. It sends a request through `__glXSetupForCommand` (0x2158a38), reads the reply with `_XReply` (0x2158ae4, 0x2158bd8) and `_XRead` (0x2158ca4) into a block from `malloc` (0x2158b08), and copies the reply into the output block in arg2 (stores at 0x2158cac through 0x2158cc0 and at 0x2158d34 through 0x2158d54). The callees at 0x2158a64, 0x2158b2c and 0x2158c08 are unnamed in the facts, so the attribute list and the reply layout are still open.

- `glXGetVideoSyncSGI` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x215995c
  **Inferred.** It reads the video sync counter with `ioctl` (0x21599b4, request 0x3fe), using a pointer stored at 0x1028 and the fields reached from it. The count is written through arg0 (store at 0x21599d8). It returns 0 at 0x21599d4 on the normal path and 5 at 0x21599e0 when the null checks at 0x2159978 and 0x2159984 fail. What the field offsets 0x108, 0x118 and 0x128 hold is not in the facts.

- `glXDestroyGLXVideoSourceSGIX` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x2159ab0
  **Inferred.** It tears down a video source for a drawable. It skips the work when arg1 is zero (branch at 0x2159af0), calls `__glXAddDrawableInterest` (0x2159afc) and then `__glXRemoveDrawableInterest` (0x2159b0c) and `__glXFreeDrawablePrivate` (0x2159b18) on the value it returned. It sends a request through an unnamed callee at 0x2159ba8 with the constants 0x10003 and 0x10, and flushes with `_XFlush` (0x2159be0). Whether the add call takes a reference or only looks something up is not clear from these facts.

- `glXCreateGLXVideoSourceSGIX` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x2159cc4
  **Inferred.** It creates a video source for a drawable. It calls `__glXInitializeVideoLibrary` (0x2159d40), adds a drawable interest with `__glXAddDrawableInterest` (0x2159d68) and creates the source data with `__glXCreateVideoSourcePrivate` (0x2159da8). A pack format is looked up through `videoPackingToInternalFormat` (0x2159bf0, called from 0x2159e70), and the unnamed calls at 0x2159dd8, 0x2159e18 and 0x2159e4c pass 0x4, 0x6 and 0x7 as their fourth argument. The value in a4 is compared with 0x2 and 0x5 (0x2159d10, 0x2159d1c) to pick a path, and the request is flushed with `_XFlush` (0x2159fac).

- `glXSwapIntervalSGI` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x215a158
  **Inferred.** It sets a swap interval on the current drawable through `ioctl` with request 0x3ee (0x215a1bc) and calls `__glXSetupForCommand` (0x215a208). The code tests a0 as a signed value at 0x215a17c and leaves early when it is zero or negative. The facts do not trace where that a0 comes from, so reading it as the interval argument is a guess. It returns 0x5 on one error path (0x215a1f0) and 0x0, 0x5 or 0x6 on the final path (0x215a2e0), and the facts do not say what those codes mean.

- `CreateContext` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x2167248
  **Inferred.** It creates a GLX rendering context. It allocates a 0x1c8-byte record with `calloc` (0x216729c), calls `__glXCreateDirectContext` (0x2167400) and `__glXInitVertexArrayState` (0x21674c4), and links the record into `__glx_contextList` (0x2167528 through 0x2167534). It reads environment variables with `getenv` (0x2167354, 0x21676c0) and compares the first character of each value with 'y' and 'n' on one path and with 'n' and 'N' on the other. Visual and config lookups go through `__glXFindFBConfigFromVid` (0x2167624), `__glXFindVisualConfig` (0x216796c) and `__glXOverrideVisualsIdToXid` (0x2167814, 0x2167900, 0x2167a20). It returns the record on success (0x216753c) and 0 on the failure returns (0x2167558, 0x21675ac, 0x21675cc, 0x21676a0). One environment path ends in `fprintf` to stderr and `exit` (0x2167a98, 0x2167aa4), and the facts do not give the message text.

- `glXCreateGLXPixmapWithConfigSGIX` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x216d8f0
  **Inferred.** It creates a GLX pixmap drawable from a config. It copies two words from arg1 (at +0x24 and +0x48) into the request block at a0+176 (stores at 0x216d9b0 and 0x216d9b8) and sends the request through an unnamed callee at 0x216d9c8 with the constants 0x10006 and 0x10. It calls `__glXSetupForCommand` (0x216d91c) first and flushes with `_XFlush` (0x216da1c). It returns 0 on the normal path (0x216da38) and the result of an unnamed call on the other path (0x216da14).

- `glXQueryMaxSwapBarriersSGIX` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x2170eb0
  **Inferred.** It queries a maximum swap barrier count. It sends the request with `__glXSetupForCommand` (0x2170ee0) and reads the reply with `_XReply` (0x2170f74, constant 0x1000d), then stores one word through arg2 (0x2170fb8). It returns 1 on one path (0x2170fc8) and 0 on the other (0x217101c). The reply field that lands in arg2 is not traced in the facts, so the field's meaning is open.

- `glXQueryHyperpipeNetworkSGIX` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x217187c
  **Inferred.** It queries the hyperpipe networks and returns a variable-length list. It stores words through arg1 at +0 (0x21718b0, 0x217195c, 0x21719a4), sends the request with `__glXSetupForCommand` (0x21718a8) and reads the reply with `_XReply` (0x2171944, constant 0x1000e). It sizes a buffer with `malloc` (0x21719e0), fills it with `_XRead` (0x2171a44) and skips data with `_XEatData` (0x2171970, 0x21719fc). A value compared with 0x21 (0x2171964) picks a branch, and it returns 0 at 0x21719bc and 0x2171ae8. The element layout of the list is not in the facts.

- `glXDestroyHyperpipeConfigSGIX` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x2171db4
  **Inferred.** The name says destroy, but the code sends a request and waits for a reply: `_XReply` (0x2171e78) with the constants 0x10011 and 0x11, after `__glXSetupForCommand` (0x2171de0). Before it writes the request block, it compares a value with a field at +32 of the record at a0+176 (0x2171e10). It returns 0x5c on one path (0x2171f20) and an unnamed value on another (0x2171ec8). The reply behavior points at a query or a status call, so the role is left open.

- `glXQueryHyperpipeConfigSGIX` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x2171f28
  **Inferred.** It queries a hyperpipe configuration and returns the result through arg2. It sends the request with `__glXSetupForCommand` (0x2171f58) and `_XReply` (0x2171ff8, constant 0x1000f), passing arg1 as one of the arguments to `_XReply`. It reads the body with `malloc` (0x217207c), `_XEatData` (0x2172094) and `_XRead` (0x21720f8), flushes with `_XFlush` (0x2172148), and stores words to arg2 at +0 (0x2172014, 0x2172018). It returns 0 at 0x217205c and 0x21720e0. Which config fields the reply carries is not in the facts.

- `LoadAndSendStippledQuads` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a3840
  **Inferred.** It sends stippled quads through a fixed window at the absolute address 0x10000, with about 80 word and float stores there (56 `sw` and 24 `swc1` in the facts). It reads vertex fields from arg1 (+0x0, +0x4, +0x8, +0xc, the last two as floats) and two words from a0 at +0xfb0 and +0xfb4, and it reads float constants from a0 at +0x220 and +0x224. It calls `ceil` (0x21a3888, 0x21a38b8, 0x21a38ec, 0x21a3d94), and two of those calls use the float 0x3d000000 (0.03125). The facts do not say what the 0x10000 window is or which field each store carries.

- `DrawBitmapUsingPolyStipple` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a40d0
  **Inferred.** The name points at drawing a bitmap through a polygon stipple, and the facts show a raster-position and validation path. The routine is large (2792 bytes). It calls `__glOdysseyUpdateRasterPos` (0x21a4204), `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` (0x21a4210), `__glOdysseyGetNumHWClipPlanes` (0x21a43c0) and `__glOdysseyValidateHardware` (0x21a4494), and sends an ioctl with request 0x6f64000d (0x21a4958). The constants 0x1700 (at 0x21a4890, 0x21a4a20), 0x1701 (at 0x21a4868, 0x21a4998) and 0x1702 (at 0x21a48b8, 0x21a4a8c) go to unnamed callees, and the call to `__glSetError` at 0x21a48ec has an unnamed code argument. The stipple stage itself is only partly visible, so its role is partly open.

- `__glOdylc_Color3b` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a4db0
  **Inferred.** It looks like a display-list recording form of a three-component color entry point. When the flag word at 0x1060 is zero it branches to 0x21a4ea4 (0x21a4dec), and otherwise it reserves space with `__glSPDlistSpace` (0x21a4e18), passing 0, the arg1 and arg2 values, the constant 0x10000 and the count at 0x1048. It then writes the color words into that space and updates the count at 0x1048 and the list pointer at 0x1058. The facts do not show a type conversion for the b suffix, so the difference between the b, s, ui and us variants is not visible in this entry.

- `__glOdylc_Color3s` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a5820
  **Inferred.** It is the same display-list recording routine as the Color3b entry, with the same 328-byte layout, the same `__glSPDlistSpace` call at 0x21a5888 and the same flag test at 0x21a585c. The facts show no difference in the code that would reveal the s suffix's type, so the role here is inferred from the Color3b entry and the name only.

- `__glOdylc_Color3ui` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a5d40
  **Inferred.** It has the same 328-byte display-list recording layout as the other three-component entries, with the `__glSPDlistSpace` call and the flag at 0x1060 gating the recording path. The unsigned suffix does not show up as a visible difference in the rendered facts.

- `__glOdylc_Color3us` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a5fd0
  **Inferred.** It has the same 328-byte display-list recording layout as the other three-component entries, with the `__glSPDlistSpace` call and the flag at 0x1060 gating the recording path. As with the other suffixes, the rendered facts do not separate the unsigned short form from the rest.

- `__glOdylc_Color4b` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a6260
  **Inferred.** It is a display-list recording form of a four-component color entry point. Unlike the three-component entries it also passes arg3 to `__glSPDlistSpace` and writes five words instead of four, which makes the routine 344 bytes long. The flag word at 0x1060 gates the recording path in the same way.

- `__glOdylc_Color4i` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a6ab0
  **Inferred.** It is the four-component display-list recording form, with the same 344-byte layout as Color4b, the arg3 pass-through to `__glSPDlistSpace` and the flag at 0x1060. The rendered facts do not show the signed integer conversion.

- `__glOdylc_Color4s` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a6d60
  **Inferred.** It is the four-component display-list recording form, with the same 344-byte layout and the arg3 pass-through as Color4b. The rendered facts do not show the short conversion.

- `__glOdylc_Color4ub` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a7010
  **Inferred.** It is the four-component display-list recording form, with the same 344-byte layout and the arg3 pass-through as Color4b. The unsigned byte form is not visible as a separate step in the rendered facts.

- `__glOdylc_Color4ui` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a72c0
  **Inferred.** It is the four-component display-list recording form, with the same 344-byte layout and the arg3 pass-through as Color4b. The rendered facts do not separate the unsigned integer form from the others.

- `__glOdylc_Color4us` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a7570
  **Inferred.** It is the four-component display-list recording form, with the same 344-byte layout and the arg3 pass-through as Color4b. The rendered facts do not separate the unsigned short form from the others.

- `__glOdyim_Clear` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a8800
  **Inferred.** It is a clear operation for the drawing state. It reads the state word at 0x1030 and the state pointer at 0x1020, sets an error with `__glSetError` (0x21a884c, code 0x502, and 0x21a889c, code 0x501), and sends an ioctl with request 0x6f64000d (0x21a8d14). It calls `__glOdysseyClear` (0x21a8b8c, 0x21a8db8) and `__glOdysseySetDrawbuf` (0x21a8d6c, 0x21a8dd4), and it reads and writes words in tables at 0x9f70, 0x9f74 and 0xbb80. The error codes 0x502 and 0x501 are passed to `__glSetError` on the paths at 0x21a884c and 0x21a889c, and what those codes name is not in the facts.

- `__glOdysseyClear` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a8e30
  **Inferred.** It is the hardware clear step that `__glOdyim_Clear` calls. It reads and writes many fields of the state at a0 (offsets 0x9f4c through 0xbb80), sends an ioctl with request 0x6f64000e (0x21a92dc), and calls `__glOdysseyValidateHardware` (0x21a9258, 0x21a9328) before it writes to the 0x10000 window. The routine has many branches on a value in a5 that is compared with 0x2, 0x3 and 0x4 (0x21a9118, 0x21a959c, 0x21a9594), and the facts do not name what those values select.
