# Readings: `usr/gfx/arch/IP35ODSY32/libGLcore.so`

One entry per routine, filed here from the reading batches by binary.

- `__glOdylc_Color3s` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd961510
  **Inferred.** Role (from name): display-list form of the three-component short color call. It loads the word at the absolute address 0x1034 and branches to 0xd961604 when it is zero. Otherwise it compares the word at 0x1028 with 4 and, when that word is below 4, calls `__glSPDlistSpace` (0xd961578) with a0 = 0x0, a1 and a2 as at entry, a3 = the word at 0x1010 and a5 = the word at 0x1028. The facts show word stores but not their bases, so what the routine updates is not visible. The call's return is returned on one path and another path returns a value that is either unresolved or 0x197080. The layout of the recorded list entry is not visible here.
  Reviewed: 2026-11-12

- `__glOdylc_Color3ui` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd961a30
  **Inferred.** Role (from name): display-list form of the three-component unsigned-int color call, with the same shape as `__glOdylc_Color3s`. It tests the word at 0x1034, compares the word at 0x1028 with 4, and calls `__glSPDlistSpace` at 0xd961a98 with the word at 0x1010 in a3 and the word at 0x1028 in a5. The open question is the same as for `__glOdylc_Color3s`: what the recorded entry holds.
  Reviewed: 2026-11-12

- `__glOdylc_Color3us` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd961cc0
  **Inferred.** Display-list form of the three-component unsigned-short color call, with the same state and list-space call as its siblings, here at 0xd961d28. The routine does not differ from `__glOdylc_Color3s` in any fact the rendering shows, so the role statement is the shared one.
  Reviewed: 2026-11-12

- `__glOdylc_Color4b` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd961f50
  **Inferred.** Role (from name): display-list form of the four-component byte color call. Unlike the three-component forms, it passes a3 as at entry to the `__glSPDlistSpace` call at 0xd961fbc, with the word at 0x1010 in a4 and the word at 0x1028 in a6. It tests the word at 0x1034 and compares the word at 0x1028 with 5, and calls `__glSPDlistSpace` when that word is below 5. The layout of the recorded list entry is not visible here.
  Reviewed: 2026-11-12

- `__glOdylc_Color4i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9627a0
  **Inferred.** Display-list form of the four-component int color call, with the same four-argument shape as `__glOdylc_Color4b`. Its `__glSPDlistSpace` call is at 0xd96280c.
  Reviewed: 2026-11-12

- `__glOdylc_Color4s` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd962a50
  **Inferred.** Display-list form of the four-component short color call, with the same shape as `__glOdylc_Color4b`. Its `__glSPDlistSpace` call is at 0xd962abc.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ub` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd962d00
  **Inferred.** Display-list form of the four-component unsigned-byte color call, with the same shape as `__glOdylc_Color4b`. Its `__glSPDlistSpace` call is at 0xd962d6c.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ui` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd962fb0
  **Inferred.** Display-list form of the four-component unsigned-int color call, with the same shape as `__glOdylc_Color4b`. Its `__glSPDlistSpace` call is at 0xd96301c.
  Reviewed: 2026-11-12

- `__glOdylc_Color4us` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd963260
  **Inferred.** Display-list form of the four-component unsigned-short color call, with the same shape as `__glOdylc_Color4b`. Its `__glSPDlistSpace` call is at 0xd9632cc.
  Reviewed: 2026-11-12

- `__glOdyim_Clear` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9644d0
  **Inferred.** Role (from name): immediate-mode Clear entry point. It calls `__glSetError` with 0x502 (0xd964520) when the word at 0x1018 is neither 0 nor 2, and with 0x501 (0xd964570) when the mask argument in a0 has bits set outside 0x4700. It calls `__glOdysseyWindowToNormalizedEyeZ` at 0xd9647bc after a double load from the context at +0x668, with a4 = 0xff000. It makes an `__glOdysseyIoctl` call with a1 = 0x6f64000d at 0xd964988 on one path, `__glOdysseySetDrawbuf` at 0xd9649dc and 0xd964a44 around the second of its two `__glOdysseyClear` calls (0xd964a28; the first is at 0xd964810). The branches on mask bits 0x100, 0x400 and 0x4000 and on the word at context +1888 against 0x406, 0x407 and 0x408 select between these paths, but which buffers get cleared is not visible in the facts.
  Reviewed: 2026-11-12

- `ApplyMaterialF` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd983680
  **Inferred.** Role (from name): material update for the float-valued call. It compares a1 against 0x1200, 0x1201, 0x1202, 0x1600, 0x1601 and 0x1603, and tests several floating-point comparisons, including against 1.0 (a double constant). It loads single-precision values at offsets +0x0 to +0xc from a base register the facts do not show, and loads the words at [0x1010]+0x7c70 through +0x7cac (each twice) and [0x1010]+0x9830. It stores to +0x9830 once and makes 42 word stores at offset 0 from a base the facts do not resolve, so where the results go is not established; it returns either [[0x1010]+31900] or [[0x1010]+31860]. The routine makes no calls. What the stores mean is not visible here.
  Reviewed: 2026-11-12

- `ApplyMaterialI` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd983df0
  **Inferred.** Role (from name): material update for the integer-valued call. It compares a1 against 0x1200, 0x1201, 0x1202, 0x1600 and 0x1601 (the facts show no test against 0x1602 or 0x1603 here), and has floating-point comparisons including against 1.0 (a double constant). Unlike the float form it makes 20 single-precision loads at offset +0xdf0 from a base the facts do not show. It loads the words at [0x1010]+0x7c70 through +0x7cac (each twice), makes 42 word stores at offset 0 from a base the facts do not resolve, and returns either [[0x1010]+31904] or [[0x1010]+31864]. The routine makes no calls. Whether the integer form converts before storing is not visible in the facts.
  Reviewed: 2026-11-12

- `AddConvolutionBorders` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd99e4b0
  **Inferred.** Role (from name): fills the border texels that a convolution filter needs at the image edges. It calls `__glOdysseyProgramTexFilter` first at 0xd99e5fc and `LoadTextureFilter` at 0xd99e664, then `__glOdysseyImageMovePixelsTexture` (first call at 0xd99e6f8, many more after it) and repeats the filter and move calls in later blocks. Branches on the word at [0x1010]+72660 against 0x8150 to 0x8153 and on the texture-format word against 0x8010, 0x1402 to 0x1405 choose between the blocks. Repeated `floorf` and `ceilf` calls compute values from byte fields at +32 to +35 of a2; the exact arithmetic and the order of the moves are not settled by the facts.
  Reviewed: 2026-11-12

- `__glOdylc_Normal3b` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9c4d90
  **Inferred.** Display-list form of the three-byte normal call. It uses the same 0x1034 flag and 0x1028 count test as the color forms, and its `__glSPDlistSpace` call at 0xd9c4de4 passes the three value registers a1 to a3 and the count from 0x1028 in a5. The record layout the list entry takes is not visible here.
  Reviewed: 2026-11-12

- `__glOdylc_Normal3s` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9c5770
  **Inferred.** Display-list form of the three-short normal call, with the same argument layout and the same 0x1034 and 0x1028 tests as `__glOdylc_Normal3b`. Its `__glSPDlistSpace` call is at 0xd9c57c4, and the count is compared with 4 at 0xd9c57a4.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord2d` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9ccc50
  **Inferred.** Role (from name): display-list form of the two-double texture coordinate call. It passes the word at 0x1028 in a2 (with a1 and a3 as at entry) to `__glSPDlistSpace` at 0xd9ccca8, and calls it when that word is below 3 (compare at 0xd9ccc8c) and the word at 0x1034 is nonzero. The layout of the recorded list entry is not visible here.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord2i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9cd110
  **Inferred.** Role (from name): display-list form of the two-int texture coordinate call. It passes the word at 0x1028 in a4 (with a1, a2 and a3 as at entry) to `__glSPDlistSpace` at 0xd9cd160, and calls it when that word is below 3 (compare at 0xd9cd144) and the word at 0x1034 is nonzero. The layout of the recorded list entry is not visible here.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord3i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9cdab0
  **Inferred.** Role (from name): display-list form of the three-int texture coordinate call. It passes the word at 0x1028 in a5 (with a1, a2 and a3 as at entry) to `__glSPDlistSpace` at 0xd9cdb04, and calls it when that word is below 4 (compare at 0xd9cdae4) and the word at 0x1034 is nonzero. The layout of the recorded list entry is not visible here.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord4i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9ce4d0
  **Inferred.** Role (from name): display-list form of the four-int texture coordinate call. It passes the word at 0x1028 in a6 (with a1, a2 and a3 as at entry) to `__glSPDlistSpace` at 0xd9ce528, and calls it when that word is below 5 (compare at 0xd9ce504) and the word at 0x1034 is nonzero. The layout of the recorded list entry is not visible here.
  Reviewed: 2026-11-12

- `DownsampleTextureThruHW` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9d11a0
  **Inferred.** Role (from name): downsamples a texture through the hardware. It calls `__glOdysseyImageLogBase2` at 0xd9d12cc and 0xd9d1300, `ChooseSuitableBuzzTexModeBaseFmt` at 0xd9d1404, `GetImageFmtEnumFromBuzzTexFormat` at 0xd9d15ac and `__glOdysseyImageCalcFieldFormat` at 0xd9d15bc. It calls `__glOdysseyValidateHardware` at 0xd9d17a0 only when the word at [0x1010]+92512 is nonzero. Branches on words loaded from a0 indexed by a1 or a2 (offsets +1364, +1368 and +1404) and on a0+12 against 0xde0 select other paths. The return of 0x7 at 0xd9d1980 and the return of [[0x1010]+92512] | 0x800 at 0xd9d1a34 are two exits; their conditions are not settled here.
  Reviewed: 2026-11-12

- `__glOdysseyGetHardwareShadow` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9d93e0
  **Inferred.** Role (from name): asks the driver about hardware shadow support. It calls `__glOdysseyIoctl` at 0xd9d9408 with a1 = 0x6f64000c, a2 = a1 as at entry and a3 as at entry. A negative result takes the path at 0xd9d9424, which loads a word at +0x14 and calls an unnamed callee at 0xd9d9434 with a1 = 0xdae4dc8; the value finally returned on that path is open. The routine returns either the `__glOdysseyIoctl` result or an unresolved call's result.
  Reviewed: 2026-11-12

- `__glOdysseyWindowToNormalizedEyeZ` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9e4890 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xd9e4890-0xd9e4958 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd9e48b4 loads 4 bytes from abs 0x1010.
  The `ldc1` at 0xd9e48c0 loads 8 bytes from [0x1010] +0x165c8.
  The `ldc1` at 0xd9e48c8 loads 8 bytes from [0x1010] +0x165d0.
  The `bgezall` at 0xd9e48b0 calls __glOdysseyWindowToEyeZ [0xd9e4710] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e4930 calls isnan with a0=?, a1=?, a2=?, a3=?.
  The `bc1t` branch at 0xd9e48f4 targets 0xd9e4914, is taken when f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0xd9e48e8), and falls through when not (f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0xd9e48e8)).
  The `bc1f` branch at 0xd9e4900 targets 0xd9e492c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0xd9e490c has v0 = [0x1010]+65536.
  The return at 0xd9e4924 has v0 = [0x1010]+65536.
  The return at 0xd9e4950 has v0 = ret(isnan).

- `__glOdysseySoftClipBeginTriangles` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9e63c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xd9e63c0-0xd9e63f4 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xd9e63d4 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `lw` at 0xd9e63dc loads 4 bytes from abs 0xdaf10bc.
  The `lw` at 0xd9e63e0 loads 4 bytes from abs 0xdaf05cc.
  The `sw` at 0xd9e63e4 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The `sw` at 0xd9e63f0 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9e63ec has v0 = 0xd9e6380.

- `__glOdysseyQueryHyperpipeBestRect` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9f46c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xd9f46c0-0xd9f4744 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd9f46dc loads 4 bytes from a0 (arg0 at entry) +0x21ef0.
  The `jalr` at 0xd9f4720 calls __glOdysseyIoctl [0xd9d9360] with a0=a0 at entry (arg0), a1=0x6f640016, a2=sp-48, a3=0x1, a5=0x103ed0.
  The return at 0xd9f473c has v0 = one of 0x0, 0x1.

- `__glOdysseyQueryHyperpipeLimit` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9f47d0
  **Inferred.** Queries the hyperpipe limit from the driver. It makes one `__glOdysseyIoctl` call at 0xd9f4824 with request code 0x6f640018, a stack buffer at sp-48 and the constant 0x103dc0, and returns 0 or 1 at 0xd9f4840. The facts show no load from that stack buffer, so the limit value itself is not visible in this routine, and what the 0 and 1 returns mean is open.
  Reviewed: 2026-11-12

- `__glOdysseyHyperpipeRect` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9f4850
  **Inferred.** Passes its context pointer and the constant 0x6f640018 to `__glOdysseyIoctl` at 0xd9d9360 (the call at 0xd9f48a4), with a stack buffer at sp-48 and a3 = 0x1. It takes the context field at +0x21ef0 (lw at 0xd9f4868) and returns 0 or 1 at 0xd9f48c0. The name suggests a hyperpipe rectangle query, but the facts do not show whether the request reads or writes.
  Reviewed: 2026-11-12

- `__glOdysseyHyperpipeStereo` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9f48d0
  **Inferred.** Makes the same ioctl call through `__glOdysseyIoctl` at 0xd9d9360 (jalr at 0xd9f4928), with the same request constant 0x6f640018 as the Rect routine at 0xd9f4850, but with a different payload: a3 is the caller's fourth argument (a3 at entry), a4 = 0x103cc0, and a5 is loaded from the context field at +0x21ef0. It returns 0 or 1 at 0xd9f4944. The shared request and different argument registers suggest a sibling of the Rect routine; what the stereo payload carries is open.
  Reviewed: 2026-11-12

- `__glOdysseyQueryHyperpipePixelAverage` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9f4a90
  **Inferred.** Calls `__glOdysseyIoctl` at 0xd9d9360 (jalr at 0xd9f4ae4) with the request constant 0x6f640016, a3 = 0x4 and a5 = 0x103b00, after loading the context field at +0x21ef0 (lw at 0xd9f4aa8). It returns 0 or 1 at 0xd9f4b00. The request differs from the 0x6f640018 used by the two routines above, and the name points to a pixel-average query; the facts do not show the request's direction or payload.
  Reviewed: 2026-11-12

- `__glOdysseyBindHyperpipe` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9f4b10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xd9f4b10-0xd9f4b7c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd9f4b10 loads 4 bytes from abs 0x1010.
  The `lbu` at 0xd9f4b14 loads 1 byte from [0x1010] +0xc96.
  The `jalr` at 0xd9f4b48 calls __glOdysseyIoctl [0xd9d9360] with a0=[0x1010], a1=0x6f640014, a2=sp-32, a3=a3 at entry (arg3), a4=a1 at entry (arg1).
  The `beq` branch at 0xd9f4b2c targets 0xd9f4b6c, is taken when v0(=[[0x1010]+3222]:1) == 0, and falls through when v0(=[[0x1010]+3222]:1) != 0.
  The return at 0xd9f4b64 has v0 = one of 0x0, 0x1.
  The return at 0xd9f4b74 has v0 = 0x1.

- `__glOdysseyUnbindHyperpipe` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9f4b80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xd9f4b80-0xd9f4bd0 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xd9f4b98 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xd9f4bac calls __glOdysseyIoctl [0xd9d9360] with a0=[0x1010], a1=0x6f640015, a2=sp-32, a3=a3 at entry (arg3).
  The return at 0xd9f4bc8 has v0 = one of 0x0, 0x1.

- `__glChangeWindowSize` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xda35030 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xda35030-0xda35134 (260 bytes).
  It occupies 260 bytes.
  The `sw` at 0xda35038 stores 4 bytes to a0 (arg0 at entry) +0xe78.
  The `sw` at 0xda3503c stores 4 bytes to a0 (arg0 at entry) +0xe74.
  The `lw` at 0xda35040 loads 4 bytes from a0 (arg0 at entry) +0x77f8.
  The `lw` at 0xda35054 loads 4 bytes from [a0+30712] +0x38.
  The `lbu` at 0xda35078 loads 1 byte from a0 (arg0 at entry) +0xc96.
  The `lw` at 0xda35084 loads 4 bytes from a0 (arg0 at entry) +0x77fc.
  The `lw` at 0xda35088 loads 4 bytes from [a0+30716] +0x38.
  The `lbu` at 0xda35098 loads 1 byte from a0 (arg0 at entry) +0xc98.
  The `lw` at 0xda350a4 loads 4 bytes from a0 (arg0 at entry) +0x7ac8.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc99, including `lbu` at 0xda350b0, `lbu` at 0xda35130.
  The `lw` at 0xda350bc loads 4 bytes from a0 (arg0 at entry) +0x7a6c.
  The `lbu` at 0xda350d0 loads 1 byte from a0 (arg0 at entry) +0xc9a.
  The `lw` at 0xda350dc loads 4 bytes from a0 (arg0 at entry) +0x79f4.
  The `lw` at 0xda350f0 loads 4 bytes from a0 (arg0 at entry) +0x2ec4.
  The `lw` at 0xda35118 loads 4 bytes from a0 (arg0 at entry) +0x7af0.
  The `jalr` at 0xda35070 calls (unknown callee) with a0=[a0+30712], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda35090 calls (unknown callee) with a0=[a0+30716], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda350c8 calls (unknown callee) with a0=a0+31284, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda350e8 calls (unknown callee) with a0=a0+31164, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+3226]:1.
  The `jalr` at 0xda350fc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda35124 calls (unknown callee) with a0=a0+31416, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0xda3507c targets 0xda35098, is taken when v1(=[a0+3222]:1) == 0, and falls through when v1(=[a0+3222]:1) != 0.
  The `beq` branch at 0xda3509c targets 0xda350b0, is taken when a0(=[a0+3224]:1) == 0, and falls through when a0(=[a0+3224]:1) != 0.
  The `bne` branch at 0xda350a8 targets 0xda35118, is taken when a1(=[a0+31432]) != 0, and falls through when a1(=[a0+31432]) == 0.
  The `beq` branch at 0xda350b4 targets 0xda350d0, is taken when a2(=[a0+3225]:1) == 0, and falls through when a2(=[a0+3225]:1) != 0.
  The `beq` branch at 0xda350d4 targets 0xda350f0, is taken when a3(=[a0+3226]:1) == 0, and falls through when a3(=[a0+3226]:1) != 0.
  The `beq` branch at 0xda3512c targets 0xda350b4 and is always taken.
  The return at 0xda35110 has v0 = ret(?).

- `__glChangeReadWindowSize` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xda35140 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xda35140-0xda3514c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xda35140 stores 4 bytes to a0 (arg0 at entry) +0xe80.
  The `sw` at 0xda35148 stores 4 bytes to a0 (arg0 at entry) +0xe7c.
  The return at 0xda35144 has v0 = ?.

- `glBlendColorEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacde00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacde00-0xdacde0c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde00 loads 4 bytes from abs 0x12f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde04).

- `glBlendEquationEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacde0c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacde0c-0xdacde18 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde0c loads 4 bytes from abs 0x12f4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde10).

- `glTexSubImage1DEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacde24 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacde24-0xdacde30 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde24 loads 4 bytes from abs 0x12fc.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde28).

- `glTexSubImage2DEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacde30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacde30-0xdacde3c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde30 loads 4 bytes from abs 0x1300.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde34).

- `glConvolutionFilter1DEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacde3c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacde3c-0xdacde48 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde3c loads 4 bytes from abs 0x1304.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde40).

- `glConvolutionFilter2DEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacde48 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacde48-0xdacde54 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde48 loads 4 bytes from abs 0x1308.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde4c).

- `glConvolutionParameterfEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacde54 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacde54-0xdacde60 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde54 loads 4 bytes from abs 0x130c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde58).

- `glConvolutionParameterfvEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacde60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacde60-0xdacde6c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde60 loads 4 bytes from abs 0x1310.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde64).

- `glConvolutionParameteriEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacde6c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacde6c-0xdacde78 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde6c loads 4 bytes from abs 0x1314.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde70).

- `glConvolutionParameterivEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacde78 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacde78-0xdacde84 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde78 loads 4 bytes from abs 0x1318.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde7c).

- `glCopyConvolutionFilter1DEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacde84 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacde84-0xdacde90 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde84 loads 4 bytes from abs 0x131c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde88).

- `glCopyConvolutionFilter2DEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacde90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacde90-0xdacde9c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde90 loads 4 bytes from abs 0x1320.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde94).

- `glSeparableFilter2DEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacdecc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacdecc-0xdacded8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdecc loads 4 bytes from abs 0x1334.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacded0).

- `glHistogramEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacdf20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacdf20-0xdacdf2c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf20 loads 4 bytes from abs 0x1350.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf24).

- `glMinmaxEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacdf2c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacdf2c-0xdacdf38 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf2c loads 4 bytes from abs 0x1354.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf30).

- `glResetHistogramEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacdf38 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacdf38-0xdacdf44 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf38 loads 4 bytes from abs 0x1358.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf3c).

- `glResetMinmaxEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacdf44 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacdf44-0xdacdf50 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf44 loads 4 bytes from abs 0x135c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf48).

- `glTexImage3DEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacdf50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacdf50-0xdacdf5c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf50 loads 4 bytes from abs 0x1360.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf54).

- `glTexSubImage3DEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacdf5c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacdf5c-0xdacdf68 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf5c loads 4 bytes from abs 0x1364.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf60).

- `glArrayElementEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacdf68 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacdf68-0xdacdf74 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf68 loads 4 bytes from abs 0x1368.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf6c).

- `glGetPointervEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacdf98 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacdf98-0xdacdfa4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf98 loads 4 bytes from abs 0x1378.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf9c).

- `glBindTextureEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdacdfe0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdacdfe0-0xdacdfec (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdfe0 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdfe4).

- `glPrioritizeTexturesEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdace010 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdace010-0xdace01c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace010 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace014).

- `glCopyTexImage1DEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdace01c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdace01c-0xdace028 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace01c loads 4 bytes from abs 0x13a4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace020).

- `glCopyTexImage2DEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdace028 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdace028-0xdace034 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace028 loads 4 bytes from abs 0x13a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace02c).

- `glCopyTexSubImage1DEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdace034 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdace034-0xdace040 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace034 loads 4 bytes from abs 0x13ac.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace038).

- `glCopyTexSubImage2DEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdace040 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdace040-0xdace04c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace040 loads 4 bytes from abs 0x13b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace044).

- `glCopyTexSubImage3DEXT` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdace04c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdace04c-0xdace058 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace04c loads 4 bytes from abs 0x13b4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace050).

- `glColorTableSGI` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdace148 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdace148-0xdace154 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace148 loads 4 bytes from abs 0x1408.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace14c).

- `glColorTableParameterfvSGI` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdace154 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdace154-0xdace160 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace154 loads 4 bytes from abs 0x140c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace158).

- `glColorTableParameterivSGI` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdace160 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdace160-0xdace16c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace160 loads 4 bytes from abs 0x1410.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace164).

- `glCopyColorTableSGI` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdace16c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdace16c-0xdace178 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace16c loads 4 bytes from abs 0x1414.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace170).

- `glPointParameterfSGIS` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdace208 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdace208-0xdace214 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace208 loads 4 bytes from abs 0x1448.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace20c).

- `glPointParameterfvSGIS` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdace214 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdace214-0xdace220 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace214 loads 4 bytes from abs 0x144c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace218).

- `__glOdyim_Vertex2d` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdace5c0
  **Inferred.** Stores three words to the fixed address 0x10000: one `sw` at 0xdace5d4 and two `swc1` at 0xdace5d8 and 0xdace5e0. It returns the same constant 0x10000 at 0xdace5dc. The stored values come from registers the facts do not resolve, so the vertex layout is open. The name suggests an immediate-mode vertex entry point.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex3d` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdace7c0
  **Inferred.** Writes four words to the fixed address 0x10000: one `sw` at 0xdace7d8 and three `swc1` at 0xdace7dc, 0xdace7e0 and 0xdace7e8. It returns 0x10000 at 0xdace7e4. The shape matches the 2d variant at 0xdace5c0 with one more float, which fits a three-coordinate vertex; the source of the values is not in the facts.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex3i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdace8c0
  **Inferred.** Writes four integer words (`sw` at 0xdace8e4, 0xdace8e8, 0xdace8ec and one more) to the fixed address 0x10000 and returns 0x10000 at 0xdace8f0. It has no float stores, which matches an integer-coordinate variant of the vertex entry points. The argument registers are not resolved, so the exact field order is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex4i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdaceb80
  **Inferred.** Writes five integer words to the fixed address 0x10000 (`sw` at 0xdacebac, 0xdacebb0, 0xdacebb4 and two more) and returns 0x10000 at 0xdacebbc. The fifth word, relative to the 3i variant at 0xdace8c0, suggests the homogeneous w component. That reading is inferred from the store count only.
  Reviewed: 2026-11-12

- `__glOdyim_TexCoord3d` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad3a40
  **Inferred.** Writes four words to the fixed address 0x10000: one `sw` at 0xdad3a58 and three `swc1` at 0xdad3a5c, 0xdad3a60 and 0xdad3a68. It returns 0x10000 at 0xdad3a64. The float store count fits three texture coordinates, but the facts do not show which registers those are.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3b` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4140
  **Inferred.** Makes four `sw` stores to the fixed address 0x10000 (at 0xdad414c, 0xdad4150, 0xdad4154 and one more) and returns 0x10000 at 0xdad4158. It has no loads from its arguments, so the three byte components are not visible in the facts. The name suggests a color with three byte components written to a scratch slot.
  Reviewed: 2026-11-12

- `__glOdyim_Color3d` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4200
  **Inferred.** Writes four words to the fixed address 0x10000: one `sw` at 0xdad4218 and three `swc1` at 0xdad421c, 0xdad4220 and 0xdad4228. It returns 0x10000 at 0xdad4224. Its shape matches the scratch variant at 0xdad4240, so the two differ only in some detail the facts do not show.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3d` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4240
  **Inferred.** Writes four words to the fixed address 0x10000: one `sw` at 0xdad4258 and three `swc1` at 0xdad425c, 0xdad4260 and 0xdad4268. It returns 0x10000 at 0xdad4264. Its code shape is the same as the non-scratch Color3d at 0xdad4200, and the facts do not show what makes the scratch form different.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4440
  **Inferred.** Makes four integer stores to the fixed address 0x10000 (`sw` at 0xdad444c, 0xdad4450, 0xdad4454 and one more) and returns 0x10000 at 0xdad4458. It is the integer counterpart of the 3d scratch color at 0xdad4240. The argument registers are unresolved.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3s` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4540
  **Inferred.** Makes four integer stores to the fixed address 0x10000 (`sw` at 0xdad454c, 0xdad4550, 0xdad4554 and one more) and returns 0x10000 at 0xdad4558. The shape matches the 3i variant at 0xdad4440. The short-integer width is named by the routine name only; the facts do not show any halfword handling.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3ui` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4740
  **Inferred.** Makes four integer stores to the fixed address 0x10000 (`sw` at 0xdad474c, 0xdad4750, 0xdad4754 and one more) and returns 0x10000 at 0xdad4758. It matches the signed 3i variant at 0xdad4440 in shape. The unsigned name is the only source for that difference.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3us` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4840
  **Inferred.** Makes four integer stores to the fixed address 0x10000 (`sw` at 0xdad484c, 0xdad4850, 0xdad4854 and one more) and returns 0x10000 at 0xdad4858. It matches the other three-component scratch colors in shape. Any sign or width handling is not visible in the facts.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4b` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4940
  **Inferred.** Makes five integer stores to the fixed address 0x10000 (`sw` at 0xdad494c, 0xdad4950, 0xdad4954 and two more) and returns 0x10000 at 0xdad495c. Five stores fit a four-component color with an extra word, but the facts do not say what the extra word is.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4dv` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4b00
  **Inferred.** Loads four doubles from the argument pointer at offsets +0x0, +0x8, +0x10 and +0x18 (`ldc1` at 0xdad4b00, 0xdad4b0c, 0xdad4b14 and 0xdad4b1c), then writes one `sw` at 0xdad4b24 and four `swc1` stores (0xdad4b2c, 0xdad4b34, 0xdad4b38 and one more) to the fixed address 0x10000. It returns 0x10000 at 0xdad4b3c. It is the only routine in this batch whose facts show loads through an argument pointer, which fits a vector argument; the other scratch-color routines show no loads, so their argument handling is not visible in the facts.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4cc0
  **Inferred.** Makes five integer stores to the fixed address 0x10000 (`sw` at 0xdad4ccc, 0xdad4cd0, 0xdad4cd4 and two more) and returns 0x10000 at 0xdad4cdc. It has the same store count as the other 4-component scratch colors, and the signed 4i name is the only source for its type.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4s` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4dc0
  **Inferred.** Makes five integer stores to the fixed address 0x10000 (`sw` at 0xdad4dcc, 0xdad4dd0, 0xdad4dd4 and two more) and returns 0x10000 at 0xdad4ddc. It matches the 4i variant at 0xdad4cc0 in shape. The width of the short values is not visible in the facts.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ub` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4ec0
  **Inferred.** Makes five integer stores to the fixed address 0x10000 (`sw` at 0xdad4ecc, 0xdad4ed0, 0xdad4ed4 and two more) and returns 0x10000 at 0xdad4edc. It has the same shape as the other 4-component scratch colors. The unsigned byte type is named only by the routine name.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ui` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4fc0
  **Inferred.** Makes five integer stores to the fixed address 0x10000 (`sw` at 0xdad4fcc, 0xdad4fd0, 0xdad4fd4 and two more) and returns 0x10000 at 0xdad4fdc. It matches the signed 4i variant at 0xdad4cc0 in shape. Its unsigned type is not visible in the facts.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4us` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad50c0
  **Inferred.** Makes five integer stores to the fixed address 0x10000 (`sw` at 0xdad50cc, 0xdad50d0, 0xdad50d4 and two more) and returns 0x10000 at 0xdad50dc. It matches the other 4-component scratch colors. Width and sign are not shown by the facts.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchIndexd` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad51c0
  **Inferred.** Writes one `sw` at 0xdad51d0 and one `swc1` at 0xdad51d8 to the fixed address 0x10000 and returns 0x10000 at 0xdad51d4. It is the only routine in this batch that stores one integer word and one float word. Role (from name): a double-precision color index entry point; the facts do not show the width of the value, and its source register is not resolved.
  Reviewed: 2026-11-12

- `glColor3b` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad8000 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdad8000-0xdad8080 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdad8000 loads 4 bytes from abs 0x15d8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad8004).
  The instructions from 0xdad800c to 0xdad807c are not reached by any path from the entry, and their branches are not listed.

- `glVertex2d` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdada900 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xdada900-0xdadaa00 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0xdada900 loads 4 bytes from abs 0x1578.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdada904).
  The instructions from 0xdada90c to 0xdada9fc are not reached by any path from the entry, and their branches are not listed.
