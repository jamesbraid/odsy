# Routine readings from the IP30 ODSY GL libraries, 25 routines

Role statements for 25 routines from the ranked list of located, hardware-facing routines, positions 376 to 400. All 25 rendered entries passed the grader, and none were rejected. Each statement comes only from the registers, calls and constants in the rendered facts for that exact address. Callee names are the binaries' own symbols, and the facts do not show what those callees do beyond their names. Where a reading rests on a name alone, the entry says so.

Binaries: `usr/gfx/arch/IP30ODSY/libGL.so` and `usr/gfx/arch/IP30ODSY/libGLcore.so`. `__glOdysseyIoctl` at 0xd9eb890 takes a request code in a1, and the codes are quoted by value. Calls made through a register are counted but not resolved.

- `glXQueryHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83abe0 (700 bytes).
  `glXQueryHyperpipeConfigSGIX`, a client-side GLX query by its shape. It calls `__glXSetupForCommand` (0xd83ac08) first. Later it calls `_XFlush` (0xd83ac60) on one path, then `_XReply` (0xd83acdc), and `malloc` (0xd83adb4). When `malloc` returns nonzero it calls `_XRead` (0xd83ae3c) into that buffer; when it returns zero it calls `_XEatData` (0xd83add8) instead. The routine tests the word at a0+1232 and the word at a0+124 in several near-identical blocks, which suggests one block per reply variant, and the blocks make register-indirect calls the facts do not resolve. The wire opcode, the meaning of the 1232 field and the destination of the stored words are not in the facts.
  Grade: inferred.
  Reviewed: 2026-11-12

- `LoadAndSendStippledQuads` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd961dd0 (2684 bytes).
  `LoadAndSendStippledQuads` reads words at a1+0 and a1+4 and tests them for sign. It calls `ceil` four times (0xd961e50, 0xd961f08, 0xd961fb8, 0xd9621a4) and `memset` once (0xd962258, zeroing 4 bytes on the stack). It loads context fields at +0xe4c, +0xe50, +0x170, +0x174 and +0x9830, and stores to +0x9830 at five sites that lie on different paths. The facts also show 57 word stores and 24 single-precision stores at offset 0 from a base register they do not resolve, so where those writes go is not established. The name suggests it turns a stipple pattern into quads and sends them. Whether the destination is a hardware FIFO or a mapped buffer is not in the facts.
  Grade: inferred.
  Reviewed: 2026-11-12

- `DrawBitmapUsingPolyStipple` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd96284c (16292 bytes).
  `DrawBitmapUsingPolyStipple` makes 42 calls, 35 of them through registers. The named ones, in address order, are `__glOdysseyIoctl` (request 0x6f64000d at 0xd9629e8), `__glOdysseyUpdateRasterPos` (0xd98c678), `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` (0xd9d22e8), `__glOdysseyGetNumHWClipPlanes` (0xda025f0, a1 = -4), `__glOdysseyValidateHardware` (0xd96ae20), `LoadAndSendStippledQuads` (0xd961dd0, called with a0 and a1 passed through from entry) and `__glSetError` (0xda4b3d8). Several of these sit behind branches on context fields, so the facts do not show that every one runs on a given call. The first branch tests a byte at a0+91588 and, when it is nonzero, skips to the end of the routine past the `__glSetError` call. By the callee names only, this is a bitmap draw that updates the raster position, validates hardware state, sends stipple quads and reports errors. The register-indirect calls are unresolved, so the full dispatch stays open.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9637b0 (292 bytes).
  `__glOdylc_Color3b` loads and stores the word at +0x13d4 of a base the facts do not name, and reads three words at the absolute addresses 0x1028, 0x1030 and 0x1034. It tests the word at 0x1034 against zero and bit 2 of the word at 0x1030, and compares the word at 0x1028 with 4 or 5. Its one call is `__glSPDlistSpace` (0xda0f8cc), made at 0xd96382c with a0 zero, a1 and a2 passed through from entry, and a3 taken from the word at 0x1028. The call is made only when the word at 0x1028 is below the limit (4 or 5). The routine returns the call result on one path. It looks like a vertex color setter that reserves space through `__glSPDlistSpace` when needed. The display-list reading rests on the callee name alone.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd96458c (292 bytes).
  `__glOdylc_Color3ui` has the same size and the same single call to `__glSPDlistSpace` as Color3b. I did not compare its branches line by line, so it is read as a sibling of that routine and nothing more.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd965168 (304 bytes).
  `__glOdylc_Color4i` makes one call to `__glSPDlistSpace` (0xda0f8cc) and is the four-component form of the same family. Its branches were not read in detail, so only the family reading applies. The integer argument form comes from the name.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd965630 (304 bytes).
  `__glOdylc_Color4ub` has the same single `__glSPDlistSpace` call and size as Color4i. The unsigned-byte argument form comes from the name only.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd965894 (304 bytes).
  `__glOdylc_Color4ui` has the same single `__glSPDlistSpace` call and size as Color4i. The unsigned-int argument form comes from the name only.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_Clear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd966bb0 (1680 bytes).
  `__glOdyim_Clear` makes 10 calls. Two are register-indirect and unresolved. The named ones, in address order, are `__glSetError` (0xda4b3d8, with 0x502 and again with 0x501), `__glOdysseyIoctl` (request 0x6f64000d at 0xd966e34, a0 the context pointer loaded from 0x1010), `__glOdysseyWindowToNormalizedEyeZ` (0xd9f8060), `__glOdysseySetDrawbuf` (0xd9ec58c) at 0xd967148 and 0xd9671a4, and `__glOdysseyClear` (0xd967240) at 0xd967184 and 0xd9671e8. By callee names only, it is a clear wrapper for the image path: it makes the request, maps the window depth, then sets the draw buffer and hands off to `__glOdysseyClear`. Which branch picks each handoff and each error is not resolved here.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdysseyClear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd967240 (2324 bytes).
  `__glOdysseyClear` calls `__glOdysseyValidateHardware` (0xd96ae20) at 0xd9677d8, then `__glOdysseyIoctl` with request 0x6f64000e at 0xd96788c (a2 is a stack address). When the ioctl returns nonzero, and the word at a0+92512 is nonzero, it calls `__glOdysseyValidateHardware` a second time at 0xd967918 with a2 = 0. The first validate and the ioctl are behind branches on a3 and on the word at a0+92512. The effect of the request is not stated in the facts, and the clear reading comes from the name alone.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdysseyInitDefaultValues` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd96c9a0 (5000 bytes).
  `__glOdysseyInitDefaultValues` makes 89 calls, nearly all to `__glOdyim_*` state setters with constant arguments: `__glOdyim_Disable` many times with different capability codes, DrawBuffer (0xd95df88) twice (0x405 behind a branch, then 0x404), CullFace (0xd95db1c), FrontFace (0xd95e2e8), BlendFunc, DepthFunc and PolygonOffset. It also calls `bzero` once on a0+35816 with 0x40 bytes, `__glOdysseyImageInit` (0xd98e460), `getenv` once, and four init routines for lighting, fragment lighting, fragment material and texture driver. It returns 0 or 1. By the names, it loads default state by calling setters. I did not check the argument values against the graphics specification, so the defaults are unverified.
  Grade: inferred.
  Reviewed: 2026-11-12

- `ApplyMaterialF` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd986c8c (6160 bytes).
  `ApplyMaterialF` makes no calls. It compares a1 against 0x1200, 0x1201, 0x1202, 0x1600, 0x1601, 0x1602 and 0x1603 and branches to a separate block for each. The blocks load single-precision words at offsets 0 to 0xc and one double, from a base the facts do not resolve. They also load and store words and halfwords, and store the word at +0x9830 once. Its return value is the word at the absolute address 0x1010. The float loads fit the name, but which state field holds which material property is not established.
  Grade: inferred.
  Reviewed: 2026-11-12

- `ApplyMaterialI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd98849c (10020 bytes).
  `ApplyMaterialI` makes no calls. It compares a1 against 0x1200, 0x1201, 0x1202, 0x1600, 0x1601, 0x1602 and 0x1603 and branches to a separate block for each. The blocks load single-precision words at +0xdf0 and +0, one double, and plain words, and load words at +0x7c70 to +0x7cac and +0x9830 and store +0x9830. The base register for most of these is not resolved; the branch on +0x9830 is through the pointer at 0x1010. Its return value is the word at the absolute address 0x1010. The name says integer. The facts do not show how the integer argument is handled.
  Grade: inferred.
  Reviewed: 2026-11-12

- `AddConvolutionBorders` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9a6f0c (11852 bytes).
  `AddConvolutionBorders` makes 145 calls. They are `__glOdysseyProgramTexFilter` (0xd9c4ec8) seven times, `LoadTextureFilter` (0xd9a513c) six times, `__glOdysseyImageMovePixelsTexture` (0xd9cb7f8) 26 times, `floorf` 100 times and `ceilf` six times. It returns its first argument. By the callee names it fills border pixels by loading texture filters and moving pixel rows through the texture path, with the floor and ceiling calls doing coordinate arithmetic. The convolution reading comes from the name, not from the facts.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdysseyImageMovePixelsCopy` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9c6490 (8040 bytes).
  `__glOdysseyImageMovePixelsCopy` calls `memset`, `ceilf` four times, `OdysseyImageCalcXferCopyParams` (0xd9ccd44), `ImageCalcDmaFieldOffsets` (0xd9ce4f0) twice, and the open and close routines for pixel-memory references (0xd9d8db4, 0xd9d9060 and their close partners). It issues `__glOdysseyIoctl` with request 0x6f64000d at 0xd9c71ec, calls `ImageCopyPixelBody`, and reports errors through `__glSetError`. It reads as a copy-pixels path that builds transfer parameters, opens references, makes one request, copies the pixel body and closes the references. The rule that chooses between the DMA offsets and the body copy is not resolved here.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdysseyImageMovePixelsDMAtoGfx` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9c8ba0 (8852 bytes).
  `__glOdysseyImageMovePixelsDMAtoGfx` calls `__glOdysseyImageCalcXferWriteParams` (0xd9cd4d4), `ImageToDmaHostPixelSize` (0xd9cecbc), `ImageCalcDmaFieldOffsets` (0xd9ce4f0), `__glSpecElementsPerGroup` (0xda28af0) and `__glSpecBytesPerElement` (0xda28bf4), plus the write-reference open and close routines. It calls `SendPixelsAsUserPIO` (0xd9c83f8) at three sites and `__glOdysseyAssignToPMObj` at two, and issues `__glOdysseyIoctl` with request 0x6f64000d at 0xd9c9c34. The name says DMA to graphics. The PIO reading rests on the name `SendPixelsAsUserPIO`, and nothing in this routine's facts decides which path runs.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Normal3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d6a50 (272 bytes).
  `__glOdylc_Normal3b` makes one call to `__glSPDlistSpace` (0xda0f8cc), the same single call as the color setters above, and is the same family by shape and name. I did not read its branches, so the reading is the family reading only.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Normal3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d72f4 (272 bytes).
  `__glOdylc_Normal3s` has the same size and single `__glSPDlistSpace` call as Normal3b. The signed-short argument form comes from the name only.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdysseyCreatePMObj` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d83c8 (464 bytes).
  `__glOdysseyCreatePMObj` calls `__glOdysseyIoctl` with request 0x6f640001 at 0xd9d8458. When the ioctl result is nonzero and further comparisons of -1 against other words allow it, it walks the element set at a0+93332 with `InitCSetCursor` (0xd9d9f34) and `NextCSetElem` (0xd9d9f48), calls `LookupKnownGroup` (0xd9d9564) on each element, and calls `RemoveKnownGroup` (0xd9d9a30) when the lookup returns nonzero. It returns 0 or 1. What the request allocates is not stated in the facts, and the walk reading rests on the callee names.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdysseyDestroyPMObjGroup` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d8598 (284 bytes).
  `__glOdysseyDestroyPMObjGroup` walks the same element set as the create routine above, using `InitCSetCursor`, `NextCSetElem` twice, `LookupKnownGroup` and `RemoveKnownGroup`. It then issues `__glOdysseyIoctl` with request 0x6f640002 at 0xd9d8678 and returns 0 or 1. It reads as the teardown side of the same pair. Whether request 0x6f640002 means destroy is not in the facts, and the name is the only basis for the reading.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdysseyReadFromPMObj` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d89d0 (320 bytes).
  `__glOdysseyReadFromPMObj` calls `CheckMMXfrArgs` (0xd9d87f8) and calls `__glOdysseyIoctl` with request 0x6f640006 at 0xd9d8ab0 only when `CheckMMXfrArgs` returns nonzero. It returns 0 or 1. The name `CheckMMXfrArgs` is opaque, and what it checks is not read here. The read reading comes from the routine name only.
  Grade: inferred.
  Reviewed: 2026-11-12

- `OpenPipeMemReference` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d8b10 (2644 bytes).
  `OpenPipeMemReference` calls `__glOdysseyMIPS_SYNC` (0xdad53d0) with a0 = -1 and a1 = 8 at 0xd9d8c68 and again at 0xd9d8ce8, with one `__glOdysseyIoctl` (request 0x6f640003 at 0xd9d8cbc) between them. The first sync sits behind branches on state words, and the second runs only when the ioctl returns nonzero. It returns 0 or 1. It reads as opening a reference to pipe memory, from the name. The helper's action is not in the facts. Its name points to a cache or ordering operation, but I did not read the helper.
  Grade: inferred.
  Reviewed: 2026-11-12

- `LookupKnownGroup` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d9564 (356 bytes).
  `LookupKnownGroup` calls `LookupCSetId` (0xd9da0fc), `AddKnownGroup` (0xd9d99d4), `RemoveKnownGroup` (0xd9d9a30), `LookupCoresidRange` (0xd9d96c8), `bzero` and `__glSetError`. It returns the `LookupCSetId` result on one path. The name says lookup, but the calls to add and remove entries mean it may change the set. The facts do not settle which path runs.
  Grade: inferred.
  Reviewed: 2026-11-12

- `LookupCoresidRange` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d96c8 (624 bytes).
  `LookupCoresidRange` calls `__glSetError`, `bzero`, and `__glOdysseyIoctl` with request 0x6f640004 at 0xd9d9800. It also makes two calls through registers. It reads as a coresidence range query that clears a result and asks for it with one request. The register-indirect calls are unresolved, and the name is the basis for "coresidence".
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9ded88 (268 bytes).
  `__glOdylc_TexCoord2d` makes one call to `__glSPDlistSpace` (0xda0f8cc), the same single call as the other vertex-attribute setters in this batch. It is the same family by shape and name, and its branches were not read.
  Grade: inferred.
  Reviewed: 2026-11-12
