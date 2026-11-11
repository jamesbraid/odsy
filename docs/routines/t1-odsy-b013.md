# Tier-1 reading batch 13 for odsy

Binary for every entry: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
The 25 routines are rows 325 to 349 (0-based) of the `t1list` ranking. All 25 rendered and passed the grader, so none were rejected.

Every grade here is inferred. The rendered facts give accesses, calls, constants and return values, not the routine's purpose. The role statements read the purpose from those facts and from the symbol names, and they say where the reading stays open.

### `AddConvolutionBorders` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd8ae00`

`AddConvolutionBorders` (9352 bytes) makes 26 calls to `__glOdysseyImageMovePixelsTexture` (0xbda53e0), 7 to `__glOdysseyProgramTexFilter` (0xbd9fb40), 6 to `LoadTextureFilter` (0xbd89aa0), about 100 to `floorf` and 6 to `ceilf`. It reads fields of its first argument at offsets such as +0x18, +0x20 and +0x58, and byte fields of its second argument at +0x20 to +0x23. The name fits filling image borders for a convolution, but the facts do not show the arithmetic behind the floor and ceil calls.

Grade: inferred.

### `__glOdysseyImageMovePixelsCopy` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbda0aa0`

`__glOdysseyImageMovePixelsCopy` (8280 bytes) checks hardware state through `__glOdysseyValidateHardware` (0xbd5bb70), opens and closes write references on pixel-memory objects, and calls `ImageCopyPixelBody` (0xbda0710) nine times. It issues one ioctl through `__glOdysseyIoctl` (0xbdc1ef0) and computes DMA field offsets with `ImageCalcDmaFieldOffsets` (0xbda7d40). Error paths go through `__glSetError` (0xbe183f0), and the exit at 0xbda2930 returns that error code. The name suggests a copy within pixel memory; the facts show the structure, not the copy geometry.

Grade: inferred.

### `__glOdysseyImageMovePixelsDMAtoGfx` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbda3380`

`__glOdysseyImageMovePixelsDMAtoGfx` (6172 bytes) appears to move pixels from host memory to the graphics side by DMA. It sizes the transfer with `ImageToDmaHostPixelSize` (0xbda83e0), `__glSpecBytesPerElement` (0xbdf7470) and `__glSpecElementsPerGroup` (0xbdf72a0). It also calls `SendPixelsAsUserPIO` (0xbda2b00) twice, which the name reads as a programmed-I/O path, and its error exit at 0xbda4b24 returns the `__glSetError` result. The facts do not show which path a given transfer size takes, so the DMA and programmed-I/O roles stay open.

Grade: inferred.

### `__glOdysseyInitLighting` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdaad80`

`__glOdysseyInitLighting` (788 bytes) makes no calls in the facts. It loads four single-precision constants from absolute addresses 0xbeefac4, 0xbeefb64, 0xbeefa10 and 0xbeefa14. It then writes 22 words and 51 single-precision values to absolute 0x4000, and stores into its first argument's block at offsets such as +0xc5dc to +0xc5e8 and +0xc620 to +0xc644. The name suggests setting lighting defaults. What the constants hold and what 0x4000 is remain unknown here.

Grade: inferred.

### `__glOdylc_Normal3b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdadbf0`

`__glOdylc_Normal3b` (256 bytes) calls `__glSPDlistSpace` (0xbde0a10) once, at 0xbdadc44, with a0 set to 0. It reads absolute 0x1048, 0x1058 and 0x1060, and it stores to those same three addresses. Its return at 0xbdadcc0 gives `[0x1060]+4` on one path, and the return at 0xbdadce8 passes through the result of `__glSPDlistSpace`. The prefix and GL name suggest a display-list compile wrapper for a byte-normal call; the facts show only the list-space bookkeeping.

Grade: inferred.

### libGLcore.so at 0xbdae430

`__glOdylc_Normal3s` (256 bytes) matches `__glOdylc_Normal3b` in outline. It calls `__glSPDlistSpace` once, at 0xbdae484 with a0 set to 0, uses the same absolute 0x1048, 0x1058 and 0x1060 accesses, and returns the callee's result at 0xbdae528. I did not compare the two instruction streams line by line, so any difference between the short and byte forms is not established.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdaf960`

`__glOdysseyReadFromPMObj` (268 bytes) calls `CheckMMXfrArgs` (0xbdaf780) and then `__glOdysseyIoctl` (0xbdc1ef0) once, and it returns 0 at 0xbdafa64. The shape is an argument check followed by a single kernel request, which matches a read from a pixel-memory object. What the check tests is not expanded in the facts.

Grade: inferred.

### libGLcore.so at 0xbdafa70

`OpenPipeMemReference` (496 bytes) issues `__glOdysseyMIPS_SYNC` (0xbeb8b60) at 0xbdafb7c and again at 0xbdafc08, with one `__glOdysseyIoctl` call between them at 0xbdafbe0. The ioctl call passes 0x6f640003 in `a1`, which may be a request code. The routine writes 17 words to absolute 0x4000 and returns 0 at 0xbdafc24. The name suggests taking a reference on a pipe memory object. The meaning of the request word and of the 0x4000 writes is not established.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb0500`

`LookupKnownGroup` (396 bytes) starts with `LookupCSetId` (0xbdb10c0) at 0xbdb054c. Depending on its branches, it either allocates and adds a record or removes one. The allocation calls an unnamed callee at 0xbdb0590 with 0x98 as its second argument, then zeroes the record with `bzero` at 0xbdb05b0 and adds it through `AddKnownGroup` (0xbdb0960) at 0xbdb05c8. The removal path calls `RemoveKnownGroup` (0xbdb09c0) at 0xbdb0668. It also calls `LookupCoresidRange` (0xbdb0690) at 0xbdb05e8, and an error path sets error 0x505 through `__glSetError` at 0xbdb0638. The name suggests a find-or-create lookup on a group table. The unnamed allocator and the exact branch conditions are not in the facts.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb0690`

`LookupCoresidRange` (592 bytes) calls `__glOdysseyIoctl` (0xbdc1ef0) once, calls `bzero` once, calls `__glSetError` once and two unnamed callees, and returns 0 at 0xbdb08d8. The single ioctl fits a kernel query for a range. The query fields are not in the facts, so the range semantics stay open.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb29a0`

`__glOdysseySetProgram` (1208 bytes) makes no calls in the facts. It indexes a table of 32-byte records with `a1` relative to its first argument, using `(a1 << 5) + a0` with fields around +0xca7c to +0xca9c. Its branches compare those fields with a value at `[a0+51924]`, and it writes 31 words to absolute 0x4000. It returns 0x29808062 at 0xbdb2e50. The name suggests binding a program object by index. The facts do not show what each record holds.

Grade: inferred.

### libGLcore.so at 0xbdb4f40

`__glOdylc_TexCoord1d` (240 bytes) matches the `__glOdylc_Normal3b` pattern. It calls `__glSPDlistSpace` (0xbde0a10) once, at 0xbdb4f90 with a0 set to 0, uses absolute 0x1048, 0x1058 and 0x1060, and returns the callee's result at 0xbdb5028. The GL name suggests a display-list wrapper for a one-dimensional texture-coordinate call. The argument use is not shown in the summary facts.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb5ad0`

`__glOdylc_TexCoord2i` (244 bytes) follows the same pattern as the Normal3b entry. It calls `__glSPDlistSpace` (0xbde0a10) at 0xbdb5b20 with a0 set to 0, uses absolute 0x1048, 0x1058 and 0x1060, and returns the callee's result at 0xbdb5bbc. The name suggests a display-list wrapper for a two-integer texture-coordinate call.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb6310`

`__glOdylc_TexCoord3i` (256 bytes) follows the same pattern. It calls `__glSPDlistSpace` (0xbde0a10) at 0xbdb6364 with a0 set to 0, uses absolute 0x1048, 0x1058 and 0x1060, and returns the callee's result at 0xbdb6408. The name suggests a display-list wrapper for a three-integer texture-coordinate call.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb99e0`

`DownsampleTextureThruHW` (2252 bytes) calls `__glOdysseyValidateHardware` (0xbd5bb70), `ChooseSuitableBuzzTexModeBaseFmt` (0xbdb8380), `__glOdysseyImageCalcFieldFormat` (0xbd7a3c0), `__glOdysseyImageLogBase2` (0xbdaa9c0) twice and `GetImageFmtEnumFromBuzzTexFormat` (0xbdb82c0). It stores 28 words to absolute 0x4000 and 9 to absolute 0x1030. It returns a word read through the pointer at absolute 0x1020, at offset +41948 (return at 0xbdba1a8). The name suggests a hardware texture downsample. The format selection and log2 calls fit that, but the scale arithmetic is not in the facts.

Grade: inferred.

### libGLcore.so at 0xbdd0090

`RGBSendFc` (132 bytes) makes no calls. It reads a byte at offset +0xc4 of its first argument, single-precision fields at +0x9c, +0xa0, +0xa4, +0xa8, and +0x1c to +0x28, and then writes three words and eight single-precision values to absolute 0x4000. The name suggests a color emitter that packs a state block into that window. The "Fc" suffix is not explained by the facts. The value 0xffffffffc580d015 in v0 at its return (0xbdd010c) looks like leftover register content, not a result.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdd19b0`

`CISendClippedBmFmN` (372 bytes) makes no calls. It reads the same byte at +0xc4 and float fields at +0x9c, +0xac, +0xd0, +0xd4, +0xd8 and +0x1c to +0x28 of its first argument. It also loads one float from absolute 0xbeefa14, and writes 11 words and 39 single-precision values to absolute 0x4000. The layout matches `RGBSendFc`, which suggests a shared emitter. The name points at a clipped bitmap send, but the clipping logic is not visible in the facts. The return at 0xbdd1b1c has 0xffffffff8080d005 in v0.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbeb9ec0`

`__glOdyim_Vertex2d` (32 bytes) makes no calls and loads no arguments in the facts. It stores three values to absolute 0x4000: one word at 0xbeb9ed0 and two single-precision values at 0xbeb9ed4 and 0xbeb9edc. The name suggests an immediate-mode two-coordinate vertex. Where the coordinates come from is not in the facts.

Grade: inferred.

### libGLcore.so at 0xbeba0c0

`__glOdyim_Vertex3d` (40 bytes) makes no calls and loads no arguments in the facts. It stores one word at 0xbeba0d4 and three single-precision values to absolute 0x4000 at 0xbeba0d8, 0xbeba0dc and 0xbeba0e4. It is the same kind of window writer as the Vertex2d entry. The source of the coordinate values is not established.

Grade: inferred.

### libGLcore.so at 0xbeba1c0

`__glOdyim_Vertex3i` (52 bytes) makes no calls and loads no arguments in the facts. It stores four words to absolute 0x4000 at 0xbeba1e0, 0xbeba1e4, 0xbeba1e8 and one more site. The name suggests an immediate-mode three-integer vertex. The source of the values is not established.

Grade: inferred.

### libGLcore.so at 0xbeba3c0

`__glOdyim_Vertex4i` (64 bytes) makes no calls and loads no arguments in the facts. It stores five words to absolute 0x4000 at 0xbeba3e8, 0xbeba3ec, 0xbeba3f0 and two more sites. The name suggests an immediate-mode four-integer vertex. The source of the values is not established.

Grade: inferred.

### libGLcore.so at 0xbebf0c0

`__glOdyim_TexCoord3d` (40 bytes) makes no calls and loads no arguments in the facts. It stores one word at 0xbebf0d4 and three single-precision values at 0xbebf0d8, 0xbebf0dc and 0xbebf0e4, all to absolute 0x4000. The name suggests an immediate-mode three-dimensional texture coordinate. The source of the values is not established.

Grade: inferred.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbebf780`

`__glOdyim_ScratchColor3b` (28 bytes) makes no calls and loads no arguments in the facts. It stores four words to absolute 0x4000 at 0xbebf788, 0xbebf78c and 0xbebf790 and one more site. The name suggests a byte-color immediate-mode write into a scratch slot. The facts do not establish what "scratch" means here.

Grade: inferred.

### libGLcore.so at 0xbebf840

`__glOdyim_Color3d` (40 bytes) makes no calls and loads no arguments in the facts. It stores one word at 0xbebf854 and three single-precision values at 0xbebf858, 0xbebf85c and 0xbebf864, all to absolute 0x4000. The name suggests an immediate-mode three-double color. The source of the values is not established.

Grade: inferred.

### libGLcore.so at 0xbebf880

`__glOdyim_ScratchColor3d` (40 bytes) makes no calls and loads no arguments in the facts. It stores one word at 0xbebf894 and three single-precision values at 0xbebf898, 0xbebf89c and 0xbebf8a4, all to absolute 0x4000. It has the same shape as `__glOdyim_Color3d` at 0xbebf840. The name suggests a double-precision scratch color write. The source of the values is not established.

Grade: inferred.
