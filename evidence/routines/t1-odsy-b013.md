# Tier-1 reading batch 13 for odsy

Binary for every entry: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
The 25 routines are rows 325 to 349 (0-based) of the `t1list` ranking. All 25 rendered and passed the grader, so none were rejected.

Every grade here is inferred. The rendered facts give accesses, calls, constants and return values, not the routine's purpose. The role statements read the purpose from those facts and from the symbol names, and they say where the reading stays open.

### `AddConvolutionBorders` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd8ae00`

`AddConvolutionBorders` (9352 bytes) has 26 call sites of `__glOdysseyImageMovePixelsTexture` (0xbda53e0), 7 of `__glOdysseyProgramTexFilter` (0xbd9fb40), 6 of `LoadTextureFilter` (0xbd89aa0), 100 of `floorf` and 6 of `ceilf`; many of them sit behind branches on the bytes of its third argument. It reads fields of its second argument (a1) at +0x18 and +0x58, passing `[a1+24]-1` to `LoadTextureFilter`, and four byte fields of its third argument (a2) at +0x20 to +0x23, which the branches test against zero. Role (from name): filling image borders for a convolution. The facts do not show the arithmetic behind the floor and ceil calls.

Grade: inferred.

Reviewed: 2026-11-12

### `__glOdysseyImageMovePixelsCopy` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbda0aa0`

`__glOdysseyImageMovePixelsCopy` (8280 bytes) has one call site of `__glOdysseyValidateHardware` (0xbd5bb70), call sites of `__glOdysseyOpenPMObjReference`, `__glOdysseyOpenPMObjWriteReference` and the matching close routines, nine call sites of `ImageCopyPixelBody` (0xbda0710), two of `ImageCalcDmaFieldOffsets` (0xbda7d40) and one `__glOdysseyIoctl` (0xbdc1ef0) call with a1 = 0x6f64000d at 0xbda2ae8. Which of these run depends on its branches. Error paths call `__glSetError` (0xbe183f0), and the return at 0xbda2930 returns that call's result. Role (from name): a copy within pixel memory; the facts show the call structure, not the copy geometry.

Grade: inferred.

Reviewed: 2026-11-12

### `__glOdysseyImageMovePixelsDMAtoGfx` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbda3380`

`__glOdysseyImageMovePixelsDMAtoGfx` (6172 bytes) calls `ImageToDmaHostPixelSize` (0xbda83e0), `__glSpecBytesPerElement` (0xbdf7470) and `__glSpecElementsPerGroup` (0xbdf72a0), and has two call sites of `SendPixelsAsUserPIO` (0xbda2b00), at 0xbda421c and 0xbda4618. Several of its error exits return the `__glSetError` result; the one at 0xbda4b24 passes 0x505. It also makes one `__glOdysseyIoctl` call with a1 = 0x6f64000d at 0xbda4b88. Role (from name): moving pixels from host memory to the graphics side by DMA, with a programmed-I/O path. The facts do not show which path a given transfer takes, so the DMA and programmed-I/O roles stay open.

Grade: inferred.

Reviewed: 2026-11-12

### `__glOdysseyInitLighting` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdaad80`

`__glOdysseyInitLighting` (788 bytes) makes no calls in the facts. It loads four single-precision constants from absolute addresses 0xbeefac4, 0xbeefb64, 0xbeefa10 and 0xbeefa14. It then writes 22 words and 51 single-precision values to absolute 0x4000, and stores into its first argument's block at offsets such as +0xc5dc to +0xc5e8 and +0xc620 to +0xc644. The name suggests setting lighting defaults. What the constants hold and what 0x4000 is remain unknown here.

Grade: inferred.

Reviewed: 2026-11-12

### `__glOdylc_Normal3b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdadbf0`

`__glOdylc_Normal3b` (256 bytes) loads the words at absolute 0x1048 and 0x1060 and the doubleword at 0x1058, and writes those three addresses back. The call to `__glSPDlistSpace` (0xbde0a10) at 0xbdadc44, with a0 = 0 and its own a1 to a3 passed on, is skipped when the branch at 0xbdadc28 sees the word at 0x1048 at or above a compared value. A zero result of that call goes to the return of the call's result at 0xbdadce8; otherwise (and when the call was skipped) it returns `[0x1060]+4` at 0xbdadcc0. Role (from name): a display-list compile wrapper for a byte-normal call; the facts show only the list-space bookkeeping.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdae430`

`__glOdylc_Normal3s` (256 bytes) matches `__glOdylc_Normal3b` in outline. The call to `__glSPDlistSpace` at 0xbdae484 (a0 = 0) is skipped by the same kind of branch on the word at 0x1048 (0xbdae468). It uses the same absolute 0x1048, 0x1058 and 0x1060 accesses, returns the callee's result at 0xbdae528 when that result is zero, and otherwise (or when the call was skipped) returns `[0x1060]+4` at 0xbdae500. I did not compare the two instruction streams line by line, so any difference between the short and byte forms is not established.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdaf960`

`__glOdysseyReadFromPMObj` (268 bytes) calls `CheckMMXfrArgs` (0xbdaf780) at 0xbdaf9e8 with a0 = a stack buffer (sp-176). Only when that returns nonzero does it call `__glOdysseyIoctl` (0xbdc1ef0) at 0xbdafa08, with a1 = 0x6f640006 and a2 = the same buffer. The facts show a return of 0 at 0xbdafa64 and a return of 0 or 1 at 0xbdafa4c; the branch at 0xbdafa1c is on the ioctl result. Role (from name): a read from a pixel-memory object, as an argument check followed by one kernel request. What the check tests is not expanded in the facts.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdafa70`

`OpenPipeMemReference` (496 bytes) has two `__glOdysseyMIPS_SYNC` (0xbeb8b60) call sites, at 0xbdafb7c and 0xbdafc08, and one `__glOdysseyIoctl` call site between them at 0xbdafbe0. Branches on a4 (the fifth argument), on a value that is 0 or 1, and on the word at [a1+148] decide which stores and calls run; the call at 0xbdafc08 is reached after the ioctl returns nonzero, and a zero result branches back to 0xbdafba0. The ioctl call passes 0x6f640003 in a1, which may be a request code. It has 17 store sites to absolute 0x4000 (from the disassembly), and returns 1 at 0xbdafbb0 on one path and 0 at 0xbdafc24 on another. Role (from name): taking a reference on a pipe memory object. The meaning of the request word and of the 0x4000 writes is not established.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb0500`

`LookupKnownGroup` (396 bytes) returns 0 without further work when a1 is -3 or -4 (branches at 0xbdb051c and 0xbdb0524). Otherwise it calls `LookupCSetId` (0xbdb10c0) at 0xbdb054c with a0 = its first argument + 103120, and returns that result at 0xbdb0570 when it is nonzero. When it is zero, a zero a2 returns 0; with a nonzero a2 it calls an unnamed allocator at 0xbdb0590 with 0x98 as its second argument (a1). A zero allocation result goes to `__glSetError` with 0x505 at 0xbdb0638 and returns 0. Otherwise it zeroes the record with `bzero` (0x98 bytes, 0xbdb05b0), adds it through `AddKnownGroup` (0xbdb0960) at 0xbdb05c8, and calls `LookupCoresidRange` (0xbdb0690) at 0xbdb05e8 with a2 = 0, a3 = 0xf and a4 = 1. A nonzero result returns the record at 0xbdb0608. A zero result calls `RemoveKnownGroup` (0xbdb09c0) at 0xbdb0668 on the same record and returns 0. Role (from name): find-or-create on a group table. The unnamed allocator is not identified by the facts.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb0690`

`LookupCoresidRange` (592 bytes) has an unnamed call at 0xbdb06fc, a `bzero` call at 0xbdb0714, one `__glOdysseyIoctl` call at 0xbdb0774 (a1 = 0x6f640004, a4 = 2), a second unnamed call at 0xbdb078c and a `__glSetError` call with 0x505 at 0xbdb08c0. It begins with a branch-and-load loop over `[((a2 << 3) + a1)+16]`. The branch at 0xbdb06e8 jumps to 0xbdb08ac when a4 (the fifth argument) is zero. Otherwise the first unnamed call is made, and a zero result goes to `__glSetError` and the return of 0 at 0xbdb08d8; a nonzero result continues to `bzero` and the ioctl. A nonzero ioctl result reaches the second unnamed call and a return of 0 at 0xbdb07a4. The facts also show a return of an unknown value at 0xbdb07b4. Role (from name): a kernel query for a range. The query fields are not in the facts, so the range semantics stay open.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb29a0`

`__glOdysseySetProgram` (1208 bytes) makes no calls in the facts. It loads fields around +0xca7c to +0xca9c of its first argument, some indexed by `(a1 << 5) + a0`, which suggests a table of 32-byte records selected by a1. One branch compares the field at `((a1 << 5) + a0)+51860` with `[a0+51924]`, and it writes 31 words to absolute 0x4000. v0 holds 0x29808062 at its returns at 0xbdb29cc (taken when the byte at +0x287dc is nonzero, with that word also stored to 0x4000 in the delay slot) and at 0xbdb2e50 (taken when `[a0+51836]` is zero); the return at 0xbdb2e48 has an unknown v0. Role (from name): binding a program object by index. The facts do not show what each record holds.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb4f40`

`__glOdylc_TexCoord1d` (240 bytes) matches the `__glOdylc_Normal3b` pattern. The call to `__glSPDlistSpace` (0xbde0a10) at 0xbdb4f90 (a0 = 0) is skipped by the branch on the word at 0x1048 (0xbdb4f7c). It uses absolute 0x1048, 0x1058 and 0x1060, returns the callee's result at 0xbdb5028 when that result is zero, and otherwise (or when the call was skipped) returns `[0x1060]+2` at 0xbdb5000. Role (from name): a display-list wrapper for a one-dimensional texture-coordinate call. The argument use is not shown in the summary facts.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb5ad0`

`__glOdylc_TexCoord2i` (244 bytes) follows the same pattern as the Normal3b entry. The call to `__glSPDlistSpace` (0xbde0a10) at 0xbdb5b20 (a0 = 0) is skipped by the branch on the word at 0x1048 (0xbdb5b08). It uses absolute 0x1048, 0x1058 and 0x1060, returns the callee's result at 0xbdb5bbc when that result is zero, and otherwise (or when the call was skipped) returns `[0x1060]+3` at 0xbdb5b94. Role (from name): a display-list wrapper for a two-integer texture-coordinate call.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb6310`

`__glOdylc_TexCoord3i` (256 bytes) follows the same pattern. The call to `__glSPDlistSpace` (0xbde0a10) at 0xbdb6364 (a0 = 0) is skipped by the branch on the word at 0x1048 (0xbdb6348). It uses absolute 0x1048, 0x1058 and 0x1060, returns the callee's result at 0xbdb6408 when that result is zero, and otherwise (or when the call was skipped) returns `[0x1060]+4` at 0xbdb63e0. Role (from name): a display-list wrapper for a three-integer texture-coordinate call.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb99e0`

`DownsampleTextureThruHW` (2252 bytes) calls `ChooseSuitableBuzzTexModeBaseFmt` (0xbdb8380), `__glOdysseyImageLogBase2` (0xbdaa9c0) twice, `GetImageFmtEnumFromBuzzTexFormat` (0xbdb82c0) and `__glOdysseyImageCalcFieldFormat` (0xbd7a3c0), and calls `__glOdysseyValidateHardware` (0xbd5bb70) at 0xbdb9ff0 only when the word at `[[0x1020]+102364]` is nonzero. It stores 28 words to absolute 0x4000 and 9 stores to absolute 0x1030. It returns a word read through the pointer at absolute 0x1020, at offset +41948 (return at 0xbdba1a8). Role (from name): a hardware texture downsample. The format selection and log2 calls fit that, but the scale arithmetic is not in the facts.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdd0090`

`RGBSendFc` (132 bytes) makes no calls. It reads a byte at offset +0xc4 of its first argument, single-precision fields at +0x9c, +0xa0, +0xa4, +0xa8, and +0x1c to +0x28, and then writes three words and eight single-precision values to absolute 0x4000. The name suggests a color emitter that packs a state block into that window. The "Fc" suffix is not explained by the facts. The value 0xffffffffc580d015 in v0 at its return (0xbdd010c) looks like leftover register content, not a result.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdd19b0`

`CISendClippedBmFmN` (372 bytes) makes no calls. It reads the same byte at +0xc4 and float fields at +0x9c, +0xac, +0xd0, +0xd4, +0xd8 and +0x1c to +0x28 of its first argument. It also loads one float from absolute 0xbeefa14, and writes 11 words and 39 single-precision values to absolute 0x4000. It shares the reads at +0xc4, +0x9c and +0x1c to +0x28 with `RGBSendFc`, which suggests a similar emitter, though the stored sequence is longer. Role (from name): a clipped bitmap send; the clipping logic is not visible in the facts. The return at 0xbdd1b1c has 0xffffffff8080d005 in v0.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbeb9ec0`

`__glOdyim_Vertex2d` (32 bytes) makes no calls and loads no arguments in the facts. It stores three values to absolute 0x4000: one word at 0xbeb9ed0 and two single-precision values at 0xbeb9ed4 and 0xbeb9edc. The name suggests an immediate-mode two-coordinate vertex. Where the coordinates come from is not in the facts.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbeba0c0`

`__glOdyim_Vertex3d` (40 bytes) makes no calls and loads no arguments in the facts. It stores one word at 0xbeba0d4 and three single-precision values to absolute 0x4000 at 0xbeba0d8, 0xbeba0dc and 0xbeba0e4. It is the same kind of window writer as the Vertex2d entry. The source of the coordinate values is not established.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbeba1c0`

`__glOdyim_Vertex3i` (52 bytes) makes no calls and loads no arguments in the facts. It stores four words to absolute 0x4000 at 0xbeba1e0, 0xbeba1e4, 0xbeba1e8 and one more site. The name suggests an immediate-mode three-integer vertex. The source of the values is not established.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbeba3c0`

`__glOdyim_Vertex4i` (64 bytes) makes no calls and loads no arguments in the facts. It stores five words to absolute 0x4000 at 0xbeba3e8, 0xbeba3ec, 0xbeba3f0 and two more sites. The name suggests an immediate-mode four-integer vertex. The source of the values is not established.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbebf0c0`

`__glOdyim_TexCoord3d` (40 bytes) makes no calls and loads no arguments in the facts. It stores one word at 0xbebf0d4 and three single-precision values at 0xbebf0d8, 0xbebf0dc and 0xbebf0e4, all to absolute 0x4000. The name suggests an immediate-mode three-dimensional texture coordinate. The source of the values is not established.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbebf780`

`__glOdyim_ScratchColor3b` (28 bytes) makes no calls and loads no arguments in the facts. It stores four words to absolute 0x4000 at 0xbebf788, 0xbebf78c and 0xbebf790 and one more site. The name suggests a byte-color immediate-mode write into a scratch slot. The facts do not establish what "scratch" means here.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbebf840`

`__glOdyim_Color3d` (40 bytes) makes no calls and loads no arguments in the facts. It stores one word at 0xbebf854 and three single-precision values at 0xbebf858, 0xbebf85c and 0xbebf864, all to absolute 0x4000. The name suggests an immediate-mode three-double color. The source of the values is not established.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbebf880`

`__glOdyim_ScratchColor3d` (40 bytes) makes no calls and loads no arguments in the facts. It stores one word at 0xbebf894 and three single-precision values at 0xbebf898, 0xbebf89c and 0xbebf8a4, all to absolute 0x4000. It has the same shape as `__glOdyim_Color3d` at 0xbebf840. The name suggests a double-precision scratch color write. The source of the values is not established.

Grade: inferred.

Reviewed: 2026-11-12
