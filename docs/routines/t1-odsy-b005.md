# Tier-1 routine readings, odsy batch 5

Routines from `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`. Each role statement
rests on the rendered facts for that routine: register use, memory accesses, callees and
constants. Where the facts stop short of a role, the entry says so. These are software readings.
They do not establish hardware behaviour.

Several entries share one shape: a call to `__glSPDlistSpace` with a0 set to zero, stores whose
destinations the facts do not resolve, and a return value built from a word at a fixed state
address or from that call's result. The name prefix `__glOdylc_` appears on all of them.

## `__glOdylc_Color3us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb336300`
`__glOdylc_Color3us` (276 bytes) calls `__glSPDlistSpace` with a0 zero (`jalr` at 0xb336368), but only when the signed test at 0xb33634c on the word at abs 0x1048 falls through. A zero result goes to 0xb3363f4 and is returned at 0xb33640c. Otherwise, and when the call is skipped, it falls to a run of stores: four word stores at 0xb3363b4 to 0xb3363c8, a word store at 0xb3363d0 and a doubleword store at 0xb3363d8. The facts do not resolve their destinations, so they are not shown to land in the space the call returned. The return at 0xb3363ec is either the word at abs 0x1048 (call skipped) or the call's result. Role (from name): a color setter taking an unsigned-short triple; the facts show the reserve-then-store shape, not the operand layout. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0xb336530`
`__glOdylc_Color4b` (288 bytes) has the same shape as the Color3us entry above, with the call at
0xb33659c. The byte-sized operands come from the name only. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0xb336c30`
`__glOdylc_Color4i` (288 bytes) matches the reserve-then-store shape, with the reservation call at
0xb336c9c. The signed-int operands come from the name only. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0xb336e70`
`__glOdylc_Color4s` (288 bytes) matches the same shape, with the reservation call at 0xb336edc.
The short operands come from the name only. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0xb3370b0`
`__glOdylc_Color4ub` (288 bytes) matches the same shape, with the reservation call at 0xb33711c.
The unsigned-byte operands come from the name only. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0xb3372f0`
`__glOdylc_Color4ui` (288 bytes) matches the same shape, with the reservation call at 0xb33735c.
The unsigned-int operands come from the name only. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0xb337530`
`__glOdylc_Color4us` (288 bytes) matches the same shape, with the reservation call at 0xb33759c.
The unsigned-short operands come from the name only. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb338560`
`__glOdyim_Clear` (1644 bytes) calls `__glSetError` with 0x502 (GL_INVALID_OPERATION) at 0xb338598 when the word at abs 0x1030 is neither 0 nor 2, and with 0x501 (GL_INVALID_VALUE) at 0xb3385f0 when a0 has any bit set outside 0x4700. It also calls `__glOdysseyClear` (0xb338904, 0xb338a40), `__glOdysseySetDrawbuf` (0xb3389f8, 0xb338a5c) and `__glOdysseyIoctl` at 0xb338b60 with request 0x6f64000d, whose high half 0x6f64 is the ASCII letters "od". The facts listed here do not show the order these run in or which paths reach each call. Role (from name): the driver-side clear entry; the error codes and the `__glOdysseyClear` callee are consistent with that, and what the ioctl does is open. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb338bd0`
`__glOdysseyClear` (1860 bytes) is called from the entry above at 0xb338904 and 0xb338a40. Its one call is `__glOdysseyValidateHardware` at 0xb338fc4, made only when the word at a0+102364 is nonzero. It passes 0x10415 as a2, the word at a0+47820 as a3, and as a6 the context word at a0+40996 ORed with 0x18000. The routine returns either 0x10000 or 0x10046 at 0xb3391bc. The render does not decode the mask bits, so what gets validated is unknown. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb3396d0`
`__glOdysseyFindWindowSize` (332 bytes) makes five calls. An unnamed callee at 0xb339710 receives four stack addresses (sp-72, sp-68, sp-80, sp-76) in a1 to a4, which look like out-parameters, and a second unnamed callee at 0xb339784 receives two (sp-64, sp-60). `__glChangeWindowSize` is called at 0xb339770 and 0xb3397cc, and `__glChangeReadWindowSize` at 0xb3397ac. The calls at 0xb339770 and 0xb3397ac are made when a context word at a0+4064 or a0+4068, respectively a0+4072 or a0+4076, differs from a value the facts do not resolve. The call at 0xb3397cc is guarded by an unresolved test at 0xb3397bc and is the one that passes the words at a0+1960 and a0+1964 as a1 and a2. The routine also stores two single-precision words (offsets +0x1c674 and +0x1c678) and a byte (+0x14588) whose base the facts do not resolve. Role (from name): reads the window size and records it in the context; the facts show comparisons and change calls, not how the size is read. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0xb33d4e0`
`__glOdysseyInitDefaultValues` (3472 bytes) has 89 call sites. One is `bzero` at 0xb33d74c with a1 = 0x40 over a0+45072. Eighty-one go to `__glOdyim_*` entry points (Disable, Enable, Materialfv, FragmentLightfvSGIX and others), using enum-like constants such as 0xb50 (GL_LIGHTING), 0xb71 (GL_DEPTH_TEST) and 0xb10 (GL_POINT_SMOOTH), each passed to `__glOdyim_Disable`. One is `__glim_PolygonStipple`. The rest are `__glOdysseyImageInit` (0xb33d9e0, early in the routine), `__glOdysseyInitLighting` (0xb33e014), `__glOdysseyInitFragmentLighting`, `__glOdysseyInitFragmentMaterial`, `__glOdysseyTextureDriverInit` and a `getenv` at 0xb33e164 whose string argument is not decoded. A few groups of calls are guarded by byte flags at a0+3564 and a0+3566. Role (from name): sets the context's default state; the constants match standard OpenGL enum values, but the render does not show what each setter stores. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0xb3541a0`
`ApplyMaterialF` (1764 bytes) makes no calls in the rendered facts. It compares a1 against 0x1200 to 0x1202 and 0x1600 to 0x1602, makes floating-point comparisons against 1.0 (`c.le.d` at 0xb3541e4), and at 0xb35434c returns the word at offset 41160 of the context pointer loaded from abs 0x1020. The first branch is at 0xb3541b0 on a1 below 0x1600. Role (from name): applies a float material parameter; the render does not resolve which material fields it touches, so the role stays partly open. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0xb354890`
`ApplyMaterialI` (2208 bytes) makes no calls in the rendered facts. It tests a1 against 0x1200, 0x1202, 0x1600, 0x1601 and 0x1603 and, at 0xb354a98, returns the word at offset 41160 of the context pointer loaded from abs 0x1020, as the entry above does. Role (from name): the integer-valued counterpart of `ApplyMaterialF`; the parameter types come from the name only. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb36ae00`
`AddConvolutionBorders` (9352 bytes) makes 145 calls: `__glOdysseyProgramTexFilter` 7 times (first at 0xb36af68), `LoadTextureFilter` 6 times (first at 0xb36afd0), `__glOdysseyImageMovePixelsTexture` 26 times (first at 0xb36b04c), `floorf` 100 times (first at 0xb36b21c) and `ceilf` 6 times (first at 0xb36b904). Role (from name): fills border texels for a convolution filter; the border layout is not resolved by the render. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0xb380aa0`
`__glOdysseyImageMovePixelsCopy` (8280 bytes) clears two stack parameter blocks with `memset` (0xb380b14, 32 bytes; 0xb380b2c, 28 bytes) and makes four `ceilf` calls from 0xb380b4c. It then calls `OdysseyImageCalcXferCopyParams` (0xb380c88), `ImageCalcDmaFieldOffsets` twice, `__glOdysseyOpenPMObjReference` and `__glOdysseyOpenPMObjWriteReference`, `__glOdysseyValidateHardware` (0xb381514), `ImageCopyPixelBody` at nine sites, the matching close-reference calls and `__glOdysseyIoctl` at 0xb382ae8 with request 0x6f64000d. Some paths call `__glSetError` with 0x502 or 0x505. Role (from name): copies pixels within an image; the copy direction and layout are not in the rendered facts. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb383380`
`__glOdysseyImageMovePixelsDMAtoGfx` (6172 bytes) clears two stack blocks with `memset` (0xb383480, 32 bytes; 0xb383498, 20 bytes), makes `ceilf` calls from 0xb3834b4, then calls `__glOdysseyImageCalcXferWriteParams` (0xb383584). Later it calls `SendPixelsAsUserPIO` at 0xb38421c and 0xb384618, `__glOdysseyAssignToPMObj` and `__glOdysseyIoctl` at 0xb384b88 with request 0x6f64000d. Role (from name): the DMA-to-graphics variant of the copy routine above; the `SendPixelsAsUserPIO` calls show a programmed-I/O send in the body, and which DMA engine, if any, it drives is not visible in these facts. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb38ad80`
`__glOdysseyInitLighting` (788 bytes) is called from `__glOdysseyInitDefaultValues` at 0xb33e014. The rendered facts show no calls, one branch on a byte at a0+3564 and an unresolved return value at 0xb38b078. It makes 107 loads and stores in all, including stores at +0x18fe4 and +0x18fe8, whose bases the facts do not resolve. Role (from name): initialises lighting state; which fields it sets is open. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0xb38dbf0`
`__glOdylc_Normal3b` (256 bytes) has the reserve-then-store shape. It calls `__glSPDlistSpace` at
0xb38dc44 with a0 zero, and returns either the word at 0x1060 plus 4 or the reservation's
result. The byte operand type comes from the name only. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0xb38e430`
`__glOdylc_Normal3s` (256 bytes) has the same shape as the Normal3b entry above, with the
reservation call at 0xb38e484. The short operand type comes from the name only. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0xb38f960`
`__glOdysseyReadFromPMObj` (268 bytes) calls `CheckMMXfrArgs` (0xb38f9e8); only when that returns nonzero does it call `__glOdysseyIoctl` at 0xb38fa08 with request 0x6f640006. A zero from the check goes to 0xb38fa54. The returns are 0 at 0xb38fa64 and 0 or 1 at 0xb38fa4c. Role (from name): reads from a PM object through the kernel; the "PM object" in the name is not decoded in these facts, so what it reads stays open. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0xb38fa70`
`OpenPipeMemReference` (496 bytes) calls `__glOdysseyMIPS_SYNC` at 0xb38fb7c and 0xb38fc08, and `__glOdysseyIoctl` at 0xb38fbe0 with request 0x6f640003, which sits between the two sync calls in address order. It returns 1 at 0xb38fbb0 and 0 at 0xb38fc24. Role (from name): opens a reference to a pipe-memory object; the sync calls may order memory access around the kernel request, but the facts do not show that. What "pipe memory" refers to here is not established. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb390500`
`LookupKnownGroup` (396 bytes) calls `LookupCSetId` (0xb39054c) and returns its result at 0xb390570 when that is nonzero. Otherwise, when a2 is nonzero, it calls an unnamed callee at 0xb390590 with a1 = 0x98, and raises error 0x505 (GL_OUT_OF_MEMORY) through `__glSetError` at 0xb390638 if that returns zero. On a nonzero result it clears 0x98 bytes with `bzero` (0xb3905b0), calls `AddKnownGroup` (0xb3905c8) and `LookupCoresidRange` (0xb3905e8), and calls `RemoveKnownGroup` (0xb390668) when `LookupCoresidRange` returns zero. Role (from name): looks up a group in a known-groups table and adds one when it is missing; the table layout is not in the rendered facts. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0xb390690`
`LookupCoresidRange` (592 bytes) calls an unnamed callee at 0xb3906fc with a1 = 0x40, only when a4 is nonzero, and raises error 0x505 (GL_OUT_OF_MEMORY) through `__glSetError` at 0xb3908c0 when that call returns zero. When it returns nonzero the routine clears 0x40 bytes at the result with `bzero` (0xb390714) and calls `__glOdysseyIoctl` at 0xb390774 with request 0x6f640004. Role (from name): looks up a co-resident range; the range layout and the ioctl's meaning are not decoded. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0xb3929a0`
`__glOdysseySetProgram` (1208 bytes) makes no calls in the rendered facts. It returns the constant 0x29808062 at 0xb3929cc when the byte at a0+165852 is nonzero and again at 0xb392e50 when the word at a0+51836 is zero, and an unresolved value at 0xb392e48. It compares a word in 32-byte slots from a0+51860 with the word at a0+51924. Role (from name): binds a program object; the constant is not decoded, so this entry stays weakly grounded. Grade: inferred.

Reviewed: 2026-11-12

## `libGLcore.so` at `0xb394f40`
`__glOdylc_TexCoord1d` (240 bytes) has the reserve-then-store shape. It calls `__glSPDlistSpace` at
0xb394f90 with a0 zero, stores a word to `abs 0x1060` at 0xb395004, and returns either the word
at 0x1060 plus 2 or the reservation's result. The double-precision operand comes from the name
only. Grade: inferred.

Reviewed: 2026-11-12
