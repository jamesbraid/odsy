# Routine roles: tier-1 batch 25

Role statements for 25 located routines from the odsy inventory, rendered from their facts
(registers, calls, constants) and graded by the reading round's grader. Every entry is
inferred: the names come from the binary's symbols, and the rendered facts do not settle
what the hardware-facing state means. The unclear parts are named in each entry.

Two notes that apply across the list. The request codes that start with 0x6f64 (0xd964988,
0xd9d9408, 0xd9f4824) share a prefix and look like one ioctl family, but the family is not
named anywhere in these facts. The `__glOdylc_` entries are the display-list forms of the
GL attribute calls; the `__glSPDlistSpace` callee is the shared call they make.

- `CreateContext` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd83269c
  **Inferred.** Role (from name): creates the client-side GLX context. The routine calls `calloc` with a0 = 0x1 and a1 = 0x12c (0xd8326f0) and, on paths gated by several tests, `__glXCreateDirectContext` (0xd832854) with that buffer in a0, and `__glXInitVertexArrayState` (0xd832918) with a2 = 0x85a2, a3 = 0x8430 and a4 = 0x842e. A `getenv` call at 0xd8327a8 has the first byte of its result compared with 0x79 (0xd8327c0) and 0x6e (0xd8327c8). A second `getenv` at 0xd832b14 has its first byte compared with 0x6e and 0x4e (0xd832b2c, 0xd832b38); when either matches, the routine calls `fprintf` (0xd832ef8) with that byte and the constant 0x6e, then `exit` with a0 = 0x0 (0xd832f04). The facts do not name either environment variable or show how the results choose between direct and indirect contexts.
  Reviewed: 2026-11-12 (sonnet)

- `glXCreateGLXPixmapWithConfigSGIX` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd838c8c
  **Inferred.** Role (from name): sends a GLX request that creates a pixmap for a config. It calls `__glXSetupForCommand` at 0xd838cb8, and when the low byte of its result is zero it goes to a path that returns 0 at 0xd838dd4. When the unsigned test at 0xd838cf4 does not take its branch, it loads words at +0x24 and +0x48 of a1 and makes a call through an unnamed callee at 0xd838d64 with a2 passed through, a4 = 0x10006 and a5 = 0x10, after which a return of an unresolved call result appears at 0xd838db0. When the branch is taken it calls `_XFlush` at 0xd838db8; the facts do not show where control goes from there. The request code is not named by the facts, so the identity of the unnamed callee is open.
  Reviewed: 2026-11-12 (sonnet)

- `glXQueryMaxSwapBarriersSGIX` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd83c218
  **Inferred.** Role (from name): asks the server for the maximum swap-barrier count. It calls `__glXSetupForCommand` at 0xd83c248. If the unsigned test at 0xd83c278 does not take its branch, it calls `_XReply` at 0xd83c2dc with a1 = sp-80, a6 = 0x11 and a7 = 0x1000d; when `_XReply` returns nonzero it performs a word store at 0xd83c320 (the base register is not shown) and returns 0x1. When the test at 0xd83c278 is taken it calls `_XFlush` at 0xd83c338 instead and does not reach `_XReply`; the facts show a return of 0x0 at 0xd83c384 on the paths that do not return 0x1. That 0x1 means success is not shown by the facts.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color3s` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd961510
  **Inferred.** Role (from name): display-list form of the three-component short color call. It loads the word at the absolute address 0x1034 and branches to 0xd961604 when it is zero. Otherwise it compares the word at 0x1028 with 4 and, when that word is below 4, calls `__glSPDlistSpace` (0xd961578) with a0 = 0x0, a1 and a2 as at entry, a3 = the word at 0x1010 and a5 = the word at 0x1028. The facts show word stores but not their bases, so what the routine updates is not visible. The call's return is returned on one path and another path returns a value that is either unresolved or 0x197080. The layout of the recorded list entry is not visible here.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color3ui` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd961a30
  **Inferred.** Role (from name): display-list form of the three-component unsigned-int color call, with the same shape as `__glOdylc_Color3s`. It tests the word at 0x1034, compares the word at 0x1028 with 4, and calls `__glSPDlistSpace` at 0xd961a98 with the word at 0x1010 in a3 and the word at 0x1028 in a5. The open question is the same as for `__glOdylc_Color3s`: what the recorded entry holds.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color3us` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd961cc0
  **Inferred.** Display-list form of the three-component unsigned-short color call, with the same state and list-space call as its siblings, here at 0xd961d28. The routine does not differ from `__glOdylc_Color3s` in any fact the rendering shows, so the role statement is the shared one.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color4b` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd961f50
  **Inferred.** Role (from name): display-list form of the four-component byte color call. Unlike the three-component forms, it passes a3 as at entry to the `__glSPDlistSpace` call at 0xd961fbc, with the word at 0x1010 in a4 and the word at 0x1028 in a6. It tests the word at 0x1034 and compares the word at 0x1028 with 5, and calls `__glSPDlistSpace` when that word is below 5. The layout of the recorded list entry is not visible here.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color4i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9627a0
  **Inferred.** Display-list form of the four-component int color call, with the same four-argument shape as `__glOdylc_Color4b`. Its `__glSPDlistSpace` call is at 0xd96280c.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color4s` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd962a50
  **Inferred.** Display-list form of the four-component short color call, with the same shape as `__glOdylc_Color4b`. Its `__glSPDlistSpace` call is at 0xd962abc.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color4ub` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd962d00
  **Inferred.** Display-list form of the four-component unsigned-byte color call, with the same shape as `__glOdylc_Color4b`. Its `__glSPDlistSpace` call is at 0xd962d6c.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color4ui` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd962fb0
  **Inferred.** Display-list form of the four-component unsigned-int color call, with the same shape as `__glOdylc_Color4b`. Its `__glSPDlistSpace` call is at 0xd96301c.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color4us` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd963260
  **Inferred.** Display-list form of the four-component unsigned-short color call, with the same shape as `__glOdylc_Color4b`. Its `__glSPDlistSpace` call is at 0xd9632cc.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Clear` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9644d0
  **Inferred.** Role (from name): immediate-mode Clear entry point. It calls `__glSetError` with 0x502 (0xd964520) when the word at 0x1018 is neither 0 nor 2, and with 0x501 (0xd964570) when the mask argument in a0 has bits set outside 0x4700. It calls `__glOdysseyWindowToNormalizedEyeZ` at 0xd9647bc after a double load from the context at +0x668, with a4 = 0xff000. It makes an `__glOdysseyIoctl` call with a1 = 0x6f64000d at 0xd964988 on one path, `__glOdysseySetDrawbuf` at 0xd9649dc and 0xd964a44 around the second of its two `__glOdysseyClear` calls (0xd964a28; the first is at 0xd964810). The branches on mask bits 0x100, 0x400 and 0x4000 and on the word at context +1888 against 0x406, 0x407 and 0x408 select between these paths, but which buffers get cleared is not visible in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `ApplyMaterialF` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd983680
  **Inferred.** Role (from name): material update for the float-valued call. It compares a1 against 0x1200, 0x1201, 0x1202, 0x1600, 0x1601 and 0x1603, and tests several floating-point comparisons, including against 1.0 (a double constant). It loads single-precision values at offsets +0x0 to +0xc from a base register the facts do not show, and loads the words at [0x1010]+0x7c70 through +0x7cac (each twice) and [0x1010]+0x9830. It stores to +0x9830 once and makes 42 word stores at offset 0 from a base the facts do not resolve, so where the results go is not established; it returns either [[0x1010]+31900] or [[0x1010]+31860]. The routine makes no calls. What the stores mean is not visible here.
  Reviewed: 2026-11-12 (sonnet)

- `ApplyMaterialI` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd983df0
  **Inferred.** Role (from name): material update for the integer-valued call. It compares a1 against 0x1200, 0x1201, 0x1202, 0x1600 and 0x1601 (the facts show no test against 0x1602 or 0x1603 here), and has floating-point comparisons including against 1.0 (a double constant). Unlike the float form it makes 20 single-precision loads at offset +0xdf0 from a base the facts do not show. It loads the words at [0x1010]+0x7c70 through +0x7cac (each twice), makes 42 word stores at offset 0 from a base the facts do not resolve, and returns either [[0x1010]+31904] or [[0x1010]+31864]. The routine makes no calls. Whether the integer form converts before storing is not visible in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `AddConvolutionBorders` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd99e4b0
  **Inferred.** Role (from name): fills the border texels that a convolution filter needs at the image edges. It calls `__glOdysseyProgramTexFilter` first at 0xd99e5fc and `LoadTextureFilter` at 0xd99e664, then `__glOdysseyImageMovePixelsTexture` (first call at 0xd99e6f8, many more after it) and repeats the filter and move calls in later blocks. Branches on the word at [0x1010]+72660 against 0x8150 to 0x8153 and on the texture-format word against 0x8010, 0x1402 to 0x1405 choose between the blocks. Repeated `floorf` and `ceilf` calls compute values from byte fields at +32 to +35 of a2; the exact arithmetic and the order of the moves are not settled by the facts.
  Reviewed: 2026-11-12 (sonnet)

- `DownsampleTextureThruHW` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9d11a0
  **Inferred.** Role (from name): downsamples a texture through the hardware. It calls `__glOdysseyImageLogBase2` at 0xd9d12cc and 0xd9d1300, `ChooseSuitableBuzzTexModeBaseFmt` at 0xd9d1404, `GetImageFmtEnumFromBuzzTexFormat` at 0xd9d15ac and `__glOdysseyImageCalcFieldFormat` at 0xd9d15bc. It calls `__glOdysseyValidateHardware` at 0xd9d17a0 only when the word at [0x1010]+92512 is nonzero. Branches on words loaded from a0 indexed by a1 or a2 (offsets +1364, +1368 and +1404) and on a0+12 against 0xde0 select other paths. The return of 0x7 at 0xd9d1980 and the return of [[0x1010]+92512] | 0x800 at 0xd9d1a34 are two exits; their conditions are not settled here.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Normal3b` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9c4d90
  **Inferred.** Display-list form of the three-byte normal call. It uses the same 0x1034 flag and 0x1028 count test as the color forms, and its `__glSPDlistSpace` call at 0xd9c4de4 passes the three value registers a1 to a3 and the count from 0x1028 in a5. The record layout the list entry takes is not visible here.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Normal3s` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9c5770
  **Inferred.** Display-list form of the three-short normal call, with the same argument layout and the same 0x1034 and 0x1028 tests as `__glOdylc_Normal3b`. Its `__glSPDlistSpace` call is at 0xd9c57c4, and the count is compared with 4 at 0xd9c57a4.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_TexCoord2d` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9ccc50
  **Inferred.** Role (from name): display-list form of the two-double texture coordinate call. It passes the word at 0x1028 in a2 (with a1 and a3 as at entry) to `__glSPDlistSpace` at 0xd9ccca8, and calls it when that word is below 3 (compare at 0xd9ccc8c) and the word at 0x1034 is nonzero. The layout of the recorded list entry is not visible here.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_TexCoord2i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9cd110
  **Inferred.** Role (from name): display-list form of the two-int texture coordinate call. It passes the word at 0x1028 in a4 (with a1, a2 and a3 as at entry) to `__glSPDlistSpace` at 0xd9cd160, and calls it when that word is below 3 (compare at 0xd9cd144) and the word at 0x1034 is nonzero. The layout of the recorded list entry is not visible here.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_TexCoord3i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9cdab0
  **Inferred.** Role (from name): display-list form of the three-int texture coordinate call. It passes the word at 0x1028 in a5 (with a1, a2 and a3 as at entry) to `__glSPDlistSpace` at 0xd9cdb04, and calls it when that word is below 4 (compare at 0xd9cdae4) and the word at 0x1034 is nonzero. The layout of the recorded list entry is not visible here.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_TexCoord4i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9ce4d0
  **Inferred.** Role (from name): display-list form of the four-int texture coordinate call. It passes the word at 0x1028 in a6 (with a1, a2 and a3 as at entry) to `__glSPDlistSpace` at 0xd9ce528, and calls it when that word is below 5 (compare at 0xd9ce504) and the word at 0x1034 is nonzero. The layout of the recorded list entry is not visible here.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyGetHardwareShadow` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9d93e0
  **Inferred.** Role (from name): asks the driver about hardware shadow support. It calls `__glOdysseyIoctl` at 0xd9d9408 with a1 = 0x6f64000c, a2 = a1 as at entry and a3 as at entry. A negative result takes the path at 0xd9d9424, which loads a word at +0x14 and calls an unnamed callee at 0xd9d9434 with a1 = 0xdae4dc8; the value finally returned on that path is open. The routine returns either the `__glOdysseyIoctl` result or an unresolved call's result.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyQueryHyperpipeLimit` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9f47d0
  **Inferred.** Queries the hyperpipe limit from the driver. It makes one `__glOdysseyIoctl` call at 0xd9f4824 with request code 0x6f640018, a stack buffer at sp-48 and the constant 0x103dc0, and returns 0 or 1 at 0xd9f4840. The facts show no load from that stack buffer, so the limit value itself is not visible in this routine, and what the 0 and 1 returns mean is open.
  Reviewed: 2026-11-12 (sonnet)
