# Routine roles: GLX client and display-list routines (batch 27)

The 25 routines below come from `libGL.so` and `libGLcore.so` under `usr/gfx/arch/IP35ODSY64/`. Each one was rendered from its bytes and graded against the rendered facts, and all 25 passed. Every role is inferred, not established. The facts give the callees and constants, but many callees are unnamed and the raw request numbers have no stated meaning, so the roles stay partly open where noted.

- `__glXGetDrawableAttributes` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x2158a04
  **Inferred.** Role (from name): the client side of a drawable attribute query. It calls `__glXSetupForCommand` (0x2158a38) and goes on only when that returns nonzero (branch at 0x2158a44). It reaches the first `_XReply` (0x2158ae4) when arg3 is nonzero (branch at 0x2158a50) and the second (0x2158bd8) when arg3 is zero. When a value in s0 is nonzero it calls `malloc` (0x2158b08), and on a nonzero result `_XRead` (0x2158ca4) fills that block. It then makes six doubleword stores at +0x0 through +0x28 (0x2158cac through 0x2158cc0) and word and byte stores at 0x2158d34 through 0x2158d54, and the facts do not resolve the base of those stores, so they are not shown to go through arg2. It calls `free` (0x2158d88) and returns 1 (0x2158da4); the returns of 0 are at 0x2158b58, 0x2158c38 and 0x2158c90. The callees at 0x2158a64, 0x2158b2c and 0x2158c08 are unnamed in the facts, so the attribute list and the reply layout are still open.
  Reviewed: 2026-11-12

- `glXGetVideoSyncSGI` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x215995c
  **Inferred.** Role (from name): reads the video sync counter. The facts show an `ioctl` (0x21599b4) with request 0x3fe in a1, a stack buffer (sp-32) in a2, a3 passed through from arg3, and a0, a4 and a5 loaded through the pointer stored at absolute 0x1028. It loads a word at +0x4 (0x21599b8) and returns 0 (0x21599d4) with a word store at +0x0 (0x21599d8); the base of that store is not in the facts, so it is not shown to go through arg0. It returns 5 (0x21599e0) when either of two loaded words is zero (branches at 0x2159978 and 0x2159984). What the field offsets 0x108, 0x118 and 0x128 hold is not in the facts.
  Reviewed: 2026-11-12

- `glXDestroyGLXVideoSourceSGIX` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x2159ab0
  **Inferred.** Role (from name): tears down a video source. It calls `__glXSetupForCommand` (0x2159adc) and goes on only when that returns nonzero (branch at 0x2159ae8). It jumps to 0x2159bc4 when arg1 is zero (branch at 0x2159af0). Otherwise it calls `__glXAddDrawableInterest` on arg1 (0x2159afc), then `__glXRemoveDrawableInterest` (0x2159b0c) and `__glXFreeDrawablePrivate` (0x2159b18) with the add call's result as arg0. It then writes into the buffer at a0+176 and calls an unnamed callee (0x2159ba8) with a3 = 0x10003 and a4 = 0x10. The `_XFlush` (0x2159be0) is on the branch taken at 0x2159b48 when the word at a0+184 is below the word at a0+176 plus 16 (unsigned). Whether the add call takes a reference or only looks something up is not clear from these facts.
  Reviewed: 2026-11-12

- `glXCreateGLXVideoSourceSGIX` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x2159cc4
  **Inferred.** Role (from name): creates a video source. It calls `__glXSetupForCommand` (0x2159cf8) and goes on only when that returns nonzero (branch at 0x2159d04). It compares a4 with 0x2 and 0x5 (0x2159d10, 0x2159d1c); both equal cases lead to `__glXInitializeVideoLibrary` (0x2159d40), and the fall-through after the second compare reaches a return at 0x2159d34. It then calls `__glXAddDrawableInterest` (0x2159d68) and `__glXCreateVideoSourcePrivate` (0x2159da8, with a0 = the add result plus 64 and a1 = 3). Three unnamed calls (0x2159dd8, 0x2159e18, 0x2159e4c) pass 0x4, 0x6 and 0x7 as a3, the fourth argument. `videoPackingToInternalFormat` (0x2159bf0) is called at 0x2159e70. The `_XFlush` (0x2159fac) is on the branch taken at 0x2159eb0 when the word at a0+184 is below the word at a0+176 plus 44 (unsigned).
  Reviewed: 2026-11-12

- `glXSwapIntervalSGI` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x215a158
  **Inferred.** Role (from name): sets the swap interval. It loads a pointer chain from absolute 0x1028 and branches to 0x215a2e8 when the first link is zero (0x215a174). It tests a0 as a signed value (0x215a17c) and branches to 0x215a308 when it is zero or negative. The facts do not trace where that a0 comes from, so reading it as the interval is a guess, although the `ioctl` (0x215a1bc) is passed arg0 as a5. The `ioctl` has request 0x3ee in a1 and runs when a word loaded at 0x215a184 is nonzero (branch at 0x215a188). When that word is zero, a pointer is tested at 0x215a1e0: zero returns 0x5 (0x215a1f0), and nonzero goes on to `__glXSetupForCommand` (0x215a208). It returns 0x0 at 0x215a1d0 after the `ioctl` and 0x0, 0x5 or 0x6 at 0x215a2e0; the facts do not say what the codes mean.
  Reviewed: 2026-11-12

- `CreateContext` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x2167248
  **Inferred.** Role (from name): creates a GLX rendering context. It calls `__glXInitialize` (0x2167280) first and branches to 0x21675b4 when that returns zero, then allocates a record with `calloc(1, 0x1c8)` (0x216729c). It calls `__glXCreateDirectContext` (0x2167400) with the record and `__glXInitVertexArrayState` (0x21674c4). A load at 0x2167528 and stores at +0x1c0 and +0x0 (0x216752c, 0x2167534) look like pushing the record onto a list; the facts do not name the list. `getenv` is called at 0x2167354 and 0x21676c0; the first value's first character is compared with 'y' (0x79) and 'n' (0x6e), the second's with 'n' and 'N' (0x4e). Visual and config lookups go through `__glXFindFBConfigFromVid` (0x2167624), `__glXFindVisualConfig` (0x216796c) and `__glXOverrideVisualsIdToXid` (0x2167814, 0x2167900, 0x2167a20). It returns the `calloc` result at 0x216753c and 0 at 0x2167558, 0x21675ac, 0x21675cc and 0x21676a0. The second `getenv` path through 0x2167a8c ends in `fprintf` (0x2167a98, a0 = __iob plus 64, probably stderr, a3 = 'n') and `exit(0)` (0x2167aa4); the facts do not give the message text.
  Reviewed: 2026-11-12

- `glXCreateGLXPixmapWithConfigSGIX` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x216d8f0
  **Inferred.** Role (from name): creates a GLX pixmap from a config. It calls `__glXSetupForCommand` (0x216d91c) first and returns 0 (0x216da38) when that returns zero (branch at 0x216d928). Otherwise it loads words at +0x24 and +0x48 of arg1 (0x216d9ac, 0x216d9b4) and stores them at +0xc and +0x14 of a request buffer (0x216d9b0, 0x216d9b8; the facts do not resolve that base). It passes those two loaded words as a4 and a3, arg2 as a2, and 0x10006 and 0x10 as a6 and a7, to an unnamed callee (0x216d9c8). The return at 0x216da14 gives the result of an unnamed call. The `_XFlush` (0x216da1c) is on the branch taken at 0x216d958 when the word at a0+184 is below the word at a0+176 plus 28 (unsigned).
  Reviewed: 2026-11-12

- `glXQueryMaxSwapBarriersSGIX` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x2170eb0
  **Inferred.** Role (from name): queries a maximum swap barrier count. It calls `__glXSetupForCommand` (0x2170ee0) and does not branch on the result. It then calls `_XReply` (0x2170f74, with a5 = 0x11 and a7 = 0x1000d). When `_XReply` returns nonzero it stores a word at +0x0 (0x2170fb8) and returns 1 (0x2170fc8); the base of that store is not in the facts, so it is not shown to go through arg2. When `_XReply` returns zero it returns 0 (0x217101c). The `_XFlush` (0x2170fd0) is on the branch taken at 0x2170f10 when the word at a0+184 is below the word at a0+176 plus 16 (unsigned). Which reply field is stored, and what it means, is not in the facts.
  Reviewed: 2026-11-12

- `glXQueryHyperpipeNetworkSGIX` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x217187c
  **Inferred.** Role (from name): queries the hyperpipe networks and probably returns a list. It stores a word at +0x0 (0x21718b0, 0x217195c, 0x21719a4) from a base the facts do not resolve, calls `__glXSetupForCommand` (0x21718a8), and calls `_XReply` (0x2171944, with a5 = 0x1000e and a7 = 0x11). A zero result from `_XReply` jumps to 0x2171aa4, which ends in a return of 0 (0x2171ae8). The branch at 0x2171964 compares a signed value with 0x21; a value of 0x21 or more falls through to `_XEatData` (0x2171970) and a return of 0 (0x21719bc). Further down it calls `malloc` (0x21719e0); a zero result calls `_XEatData` (0x21719fc), and a nonzero one calls `_XRead` (0x2171a44) into the block and then returns a value the facts do not resolve (0x2171a8c). The size passed to `malloc` and the element layout are not in the facts.
  Reviewed: 2026-11-12

- `glXDestroyHyperpipeConfigSGIX` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x2171db4
  **Inferred.** The name says destroy, but the code sends a request and waits for a reply, so the role is left open. It calls `__glXSetupForCommand` (0x2171de0) and then `_XReply` (0x2171e78, with a4 loaded from a0+224, a5 = 0x10011 and a7 = 0x11). The branch at 0x2171e10 compares the word at a0+184 with the word at a0+176 plus 32 (unsigned) and goes to a `_XFlush` block (0x2171ed4) when it is smaller. It returns 0x5c (0x2171f20) on the path where `_XReply` returned zero (branch at 0x2171e80) and an unresolved value (0x2171ec8) when it returned nonzero.
  Reviewed: 2026-11-12

- `glXQueryHyperpipeConfigSGIX` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x2171f28
  **Inferred.** Role (from name): queries a hyperpipe configuration. It stores a word at +0x0 (0x2171f60), calls `__glXSetupForCommand` (0x2171f58), and calls `_XReply` (0x2171ff8, with a5 = arg1 and a7 = 0x1000f). The stores at 0x2172014, 0x2172018 and 0x2172158 are at +0x0 of bases the facts do not resolve, so the result is not shown to go through arg2. When the value tested at 0x2172010 is positive it goes on to `malloc` (0x217207c); a zero result calls `_XEatData` (0x2172094) and returns 0 (0x21720e0), and a nonzero one calls `_XRead` (0x21720f8) into the block and returns 0 or an unresolved value (0x217213c). When the value is not positive it returns 0 (0x217205c). The `_XFlush` (0x2172148) is on the branch taken at 0x2171f8c when the word at a0+184 is below the word at a0+176 plus 32 (unsigned). Which config fields the reply carries is not in the facts.
  Reviewed: 2026-11-12

- `LoadAndSendStippledQuads` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a3840
  **Inferred.** Role (from name): sends stippled quads. The facts show four `ceil` calls (0x21a3888, 0x21a38b8, 0x21a38ec, 0x21a3d94), 95 stores (62 `sw`, 24 `swc1` and 9 `sb`), most at +0x0 from a base the facts do not resolve, and an unnamed call (0x21a4054) with a7 = 0x10000. It loads words at +0xfb0 and +0xfb4 and floats at +0x8, +0xc, +0x220 and +0x224 (0x21a3a80 through 0x21a3ab0), also from unresolved bases, and compares two doubles with `c.eq.d` (0x21a3c50). Whether the stores go to a fixed window at 0x10000, which base the loads use, which field each store carries, and what the arguments of the `ceil` calls are, is not in the facts. It returns one of a `ceil` result and an unresolved value (0x21a40ac).
  Reviewed: 2026-11-12

- `DrawBitmapUsingPolyStipple` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a40d0
  **Inferred.** The name points at drawing a bitmap through a polygon stipple, and the facts show a raster-position and validation path. The routine is large (2792 bytes). It calls `__glOdysseyUpdateRasterPos` (0x21a4204), `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` (0x21a4210), `__glOdysseyGetNumHWClipPlanes` (0x21a43c0) and `__glOdysseyValidateHardware` (0x21a4494), and sends an ioctl with request 0x6f64000d (0x21a4958). The constants 0x1700 (at 0x21a4890, 0x21a4a20), 0x1701 (at 0x21a4868, 0x21a4998) and 0x1702 (at 0x21a48b8, 0x21a4a8c) go to unnamed callees, and the call to `__glSetError` at 0x21a48ec has an unnamed code argument. The stipple stage itself is only partly visible, so its role is partly open.
  Reviewed: 2026-11-12

- `__glOdylc_Color3b` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a4db0
  **Inferred.** Role (from name): a display-list recording form of a three-component color entry point. It tests the word at absolute 0x1060 and branches to 0x21a4ea4 when it is zero (0x21a4dec). When it is nonzero and the count at 0x1048 is below 4 (signed, 0x21a4df8), it calls `__glSPDlistSpace` (0x21a4e18) with a0 = 0, arg1 and arg2 passed through, a3 = the word at 0x1020, a4 = 0x10000 and a5 = the count at 0x1048. The facts show four word stores, a doubleword store and a word store (0x21a4e64 through 0x21a4e80) with no resolved base, so what is written, and whether 0x1048 or 0x1058 is updated, is not shown. It returns the `__glSPDlistSpace` result (0x21a4ef0) or a value the facts do not resolve (0x21a4e94). The facts show no type conversion for the b suffix, so the difference from the other suffixes is not visible here.
  Reviewed: 2026-11-12

- `__glOdylc_Color3s` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a5820
  **Inferred.** Role (from name): a display-list recording form of a three-component color entry point. It has the same shape as `__glOdylc_Color3b`: it tests the word at absolute 0x1060 (0x21a585c), tests the count at 0x1048 against 4 (0x21a5868) and calls `__glSPDlistSpace` (0x21a5888) with the same arguments, and it is 328 bytes long. The facts show no difference that would reveal the s suffix's type, so the role is inferred from the name and the Color3b entry only.
  Reviewed: 2026-11-12

- `__glOdylc_Color3ui` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a5d40
  **Inferred.** Role (from name): a display-list recording form of a three-component color entry point. It has the same shape as `__glOdylc_Color3b`: it tests the word at absolute 0x1060 (0x21a5d7c), tests the count at 0x1048 against 4 (0x21a5d88) and calls `__glSPDlistSpace` (0x21a5da8) with the same arguments, and it is 328 bytes long. The facts show no difference that would reveal the ui suffix's type, so the role is inferred from the name and the Color3b entry only.
  Reviewed: 2026-11-12

- `__glOdylc_Color3us` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a5fd0
  **Inferred.** Role (from name): a display-list recording form of a three-component color entry point. It has the same shape as `__glOdylc_Color3b`: it tests the word at absolute 0x1060 (0x21a600c), tests the count at 0x1048 against 4 (0x21a6018) and calls `__glSPDlistSpace` (0x21a6038) with the same arguments, and it is 328 bytes long. The facts show no difference that would reveal the us suffix's type, so the role is inferred from the name and the Color3b entry only.
  Reviewed: 2026-11-12

- `__glOdylc_Color4b` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a6260
  **Inferred.** Role (from name): a display-list recording form of a four-component color entry point. It tests the word at absolute 0x1060 (0x21a629c) and the count at 0x1048 against 5 (0x21a62a8), and calls `__glSPDlistSpace` (0x21a62cc) with arg1, arg2 and arg3 passed through, a4 = the word at 0x1020, a5 = 0x10000 and a6 = the count. Unlike the three-component entries it passes arg3 and compares the count with 5 instead of 4, and the facts show five word stores before the doubleword store where the three-component entries show four; the base of those stores is not resolved. The routine is 344 bytes long.
  Reviewed: 2026-11-12

- `__glOdylc_Color4i` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a6ab0
  **Inferred.** Role (from name): a display-list recording form of a four-component color entry point. It has the same shape as `__glOdylc_Color4b`: it tests the word at absolute 0x1060 (0x21a6aec), tests the count at 0x1048 against 5 (0x21a6af8) and calls `__glSPDlistSpace` (0x21a6b1c) with arg1, arg2 and arg3 passed through, and it is 344 bytes long. The facts show no difference that would reveal the i suffix's type.
  Reviewed: 2026-11-12

- `__glOdylc_Color4s` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a6d60
  **Inferred.** Role (from name): a display-list recording form of a four-component color entry point. It has the same shape as `__glOdylc_Color4b`: it tests the word at absolute 0x1060 (0x21a6d9c), tests the count at 0x1048 against 5 (0x21a6da8) and calls `__glSPDlistSpace` (0x21a6dcc) with arg1, arg2 and arg3 passed through, and it is 344 bytes long. The facts show no difference that would reveal the s suffix's type.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ub` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a7010
  **Inferred.** Role (from name): a display-list recording form of a four-component color entry point. It has the same shape as `__glOdylc_Color4b`: it tests the word at absolute 0x1060 (0x21a704c), tests the count at 0x1048 against 5 (0x21a7058) and calls `__glSPDlistSpace` (0x21a707c) with arg1, arg2 and arg3 passed through, and it is 344 bytes long. The facts show no difference that would reveal the ub suffix's type.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ui` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a72c0
  **Inferred.** Role (from name): a display-list recording form of a four-component color entry point. It has the same shape as `__glOdylc_Color4b`: it tests the word at absolute 0x1060 (0x21a72fc), tests the count at 0x1048 against 5 (0x21a7308) and calls `__glSPDlistSpace` (0x21a732c) with arg1, arg2 and arg3 passed through, and it is 344 bytes long. The facts show no difference that would reveal the ui suffix's type.
  Reviewed: 2026-11-12

- `__glOdylc_Color4us` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a7570
  **Inferred.** Role (from name): a display-list recording form of a four-component color entry point. It has the same shape as `__glOdylc_Color4b`: it tests the word at absolute 0x1060 (0x21a75ac), tests the count at 0x1048 against 5 (0x21a75b8) and calls `__glSPDlistSpace` (0x21a75dc) with arg1, arg2 and arg3 passed through, and it is 344 bytes long. The facts show no difference that would reveal the us suffix's type.
  Reviewed: 2026-11-12

- `__glOdyim_Clear` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a8800
  **Inferred.** Role (from name): a clear operation for the drawing state. It loads the word at absolute 0x1030 and the pointer at 0x1020. It calls `__glSetError` with 0x502 (0x21a884c, with the 0x1030 word as a1) when that word is neither 0 nor 2 (branches at 0x21a883c and 0x21a8844), and with 0x501 (0x21a889c) when a masked value (a0 and -0x4701) is nonzero (branch at 0x21a8890). It calls `__glOdysseyClear` (0x21a8b8c, 0x21a8db8), `__glOdysseySetDrawbuf` (0x21a8d6c, 0x21a8dd4) and `__glOdysseyIoctl` with request 0x6f64000d (0x21a8d14). Branches compare entries at 0x9f70, 0x9f74 and 0xbb80 (0x21a8930, 0x21a8948, 0x21a8960); the facts show these read, not written. What the error codes name is not in the facts.
  Reviewed: 2026-11-12

- `__glOdysseyClear` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a8e30
  **Inferred.** Role (from name): the hardware clear step that `__glOdyim_Clear` calls (at 0x21a8b8c and 0x21a8db8). It loads and stores words at +0x9f4c, +0x9f50, +0x9f7c, +0x9f80 and +0xbb80 from a base the facts do not resolve. It calls `__glOdysseyIoctl` with request 0x6f64000e (0x21a92dc) and `__glOdysseyValidateHardware` at 0x21a9258 when the word at a0+101972 is nonzero (branch at 0x21a9250) and at 0x21a9328 when it is nonzero (branch at 0x21a9320). It compares a5 with 0x3 (0x21a959c) and 0x4 (0x21a9594) and a3 with 0x2 (0x21a9118), and the facts do not name what those values select. The facts do not show a write to a window at 0x10000.
  Reviewed: 2026-11-12
