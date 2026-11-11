# Routine readings from the IP30 ODSY GL libraries, 25 routines

Role statements for 25 routines from the ranked list of located, hardware-facing routines, positions 376 to 400. All 25 rendered entries passed the grader, and none were rejected. Each statement comes only from the registers, calls and constants in the rendered facts for that exact address. Callee names are the binaries' own symbols, and the facts do not show what those callees do beyond their names. Where a reading rests on a name alone, the entry says so.

Binaries: `usr/gfx/arch/IP30ODSY/libGL.so` and `usr/gfx/arch/IP30ODSY/libGLcore.so`. `__glOdysseyIoctl` at 0xd9eb890 takes a request code in a1, and the codes are quoted by value. Calls made through a register are counted but not resolved.

- `glXQueryHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83abe0 (700 bytes).
  `glXQueryHyperpipeConfigSGIX`, a client-side GLX query by its shape. It sends a request through `__glXSetupForCommand` (0xd83ac08), flushes with `_XFlush` (0xd83ac60), waits with `_XReply` (0xd83acdc) and reads reply data with `_XRead` (0xd83ae3c) into a buffer from `malloc` (0xd83adb4). It stores result words into the caller's a2 block and branches on the fields at a0+1232 and a0+124 in several near-identical blocks, which suggests one block per reply variant. The wire opcode and the meaning of the 1232 field are not in the facts.
  Grade: inferred.

- `LoadAndSendStippledQuads` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd961dd0 (2684 bytes).
  `LoadAndSendStippledQuads` reads the argument at a1 (offsets 0 to 0xc) and several context fields at a0 (+0xe4c, +0x170 to +0x174, +0x9830). It stores five words into the context at +0x9830 and 57 words to the absolute address 0x10000, and calls `ceil` four times and `memset` once. The name and the stores suggest it turns a stipple pattern into quads and pushes them to a fixed window. Whether 0x10000 is a hardware FIFO or a mapped buffer is not established by the facts.
  Grade: inferred.

- `DrawBitmapUsingPolyStipple` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd96284c (16292 bytes).
  `DrawBitmapUsingPolyStipple` makes 42 calls, 35 of them through registers. The named ones are `__glOdysseyValidateHardware` (0xd96ae20), `__glOdysseyUpdateRasterPos` (0xd98c678), `__glOdysseyGetNumHWClipPlanes` (0xda025f0), `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` (0xd9d22e8), `__glOdysseyIoctl` (request 0x6f64000d at 0xd9629e8), `LoadAndSendStippledQuads` (0xd961dd0) and `__glSetError` (0xda4b3d8). The shape is a bitmap draw that validates state, updates the raster position, sends stipple quads and reports errors. The register-indirect calls are unresolved, so the full dispatch stays open.
  Grade: inferred.

- `__glOdylc_Color3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9637b0 (292 bytes).
  `__glOdylc_Color3b` reads a context pointer from the absolute address 0x1010 and its field at +0x13d4, then reads and writes three words at 0x1028, 0x1030 and 0x1034. Its one call is `__glSPDlistSpace` (0xda0f8cc), made at 0xd96382c with a0 zero and a3 taken from the word at 0x1028. It looks like a vertex color setter that reserves space through `__glSPDlistSpace` on one path. The display-list reading rests on the callee name alone.
  Grade: inferred.

- `__glOdylc_Color3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd96458c (292 bytes).
  `__glOdylc_Color3ui` has the same size and the same single call to `__glSPDlistSpace` as Color3b. I did not compare its branches line by line, so it is read as a sibling of that routine and nothing more.
  Grade: inferred.

- `__glOdylc_Color4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd965168 (304 bytes).
  `__glOdylc_Color4i` makes one call to `__glSPDlistSpace` (0xda0f8cc) and is the four-component form of the same family. Its branches were not read in detail, so only the family reading applies. The integer argument form comes from the name.
  Grade: inferred.

- `__glOdylc_Color4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd965630 (304 bytes).
  `__glOdylc_Color4ub` has the same single `__glSPDlistSpace` call and size as Color4i. The unsigned-byte argument form comes from the name only.
  Grade: inferred.

- `__glOdylc_Color4ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd965894 (304 bytes).
  `__glOdylc_Color4ui` has the same single `__glSPDlistSpace` call and size as Color4i. The unsigned-int argument form comes from the name only.
  Grade: inferred.

- `__glOdyim_Clear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd966bb0 (1680 bytes).
  `__glOdyim_Clear` calls `__glSetError` twice, `__glOdysseySetDrawbuf` (0xd9ec58c) twice, `__glOdysseyClear` (0xd967240) twice and `__glOdysseyWindowToNormalizedEyeZ` (0xd9f8060). It also issues `__glOdysseyIoctl` with request 0x6f64000d at 0xd966e34, passing the context pointer from 0x1010 as its first argument. It reads as a clear wrapper for the image path that sets the draw buffer, maps the window depth, makes one request and hands off to `__glOdysseyClear`. The branch that picks each handoff is not resolved here.
  Grade: inferred.

- `__glOdysseyClear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd967240 (2324 bytes).
  `__glOdysseyClear` calls `__glOdysseyValidateHardware` (0xd96ae20) at two sites and `__glOdysseyIoctl` once, with request 0x6f64000e at 0xd96788c and a 136-byte stack buffer. It checks hardware state and then makes one request for the clear. The effect of that request is not stated in the facts.
  Grade: inferred.

- `__glOdysseyInitDefaultValues` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd96c9a0 (5000 bytes).
  `__glOdysseyInitDefaultValues` makes about 89 calls, most of them to `__glOdyim_*` state setters such as DrawBuffer (0xd95df88), Disable (0xd96022c), CullFace (0xd95db1c), FrontFace (0xd95e2e8), BlendFunc, DepthFunc and PolygonOffset. It also calls `bzero` once and `__glOdysseyImageInit` (0xd98e460), and returns 0 or 1. The reading is that it zeroes a state block and calls each setter once to load defaults. I did not check the argument values against the graphics specification, so the defaults are unverified.
  Grade: inferred.

- `ApplyMaterialF` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd986c8c (6160 bytes).
  `ApplyMaterialF` makes no calls. It loads single-precision constants from the absolute addresses 0xdaedea0 to 0xdaedeac, reads float parameters from the argument at a2 (offsets 0, 4 and 8), and reads and writes words and halfwords in the state at a0. Its return value is the word at the absolute address 0x1010. The float loads fit the name, but which state field holds which material property is not established.
  Grade: inferred.

- `ApplyMaterialI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd98849c (10020 bytes).
  `ApplyMaterialI` makes no calls. It loads a mix of single-precision constants and one double from 0xdaeded0 to 0xdaedef8, and reads and writes a block of context words from +0x9830 and +0x7c70 onward through the pointer at 0x1010. Its return value is the word at the absolute address 0x1010. The name says integer, but the loads are floating point, so either the arguments are converted or the name is loose. The facts do not settle which.
  Grade: inferred.

- `AddConvolutionBorders` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9a6f0c (11852 bytes).
  `AddConvolutionBorders` calls `__glOdysseyProgramTexFilter` (0xd9c4ec8) and `LoadTextureFilter` (0xd9a513c) twice each, `__glOdysseyImageMovePixelsTexture` (0xd9cb7f8) several times, and `floorf` and `ceilf` many times. It returns its first argument. It reads as filling border pixels by loading texture filters and moving pixel rows through the texture path, with the floor and ceiling calls doing coordinate arithmetic. The convolution reading comes from the name, not from the facts.
  Grade: inferred.

- `__glOdysseyImageMovePixelsCopy` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9c6490 (8040 bytes).
  `__glOdysseyImageMovePixelsCopy` calls `memset`, `ceilf` four times, `OdysseyImageCalcXferCopyParams` (0xd9ccd44), `ImageCalcDmaFieldOffsets` (0xd9ce4f0) twice, and the open and close routines for pixel-memory references (0xd9d8db4, 0xd9d9060 and their close partners). It issues `__glOdysseyIoctl` with request 0x6f64000d at 0xd9c71ec, calls `ImageCopyPixelBody`, and reports errors through `__glSetError`. It reads as a copy-pixels path that builds transfer parameters, opens references, makes one request, copies the pixel body and closes the references. The rule that chooses between the DMA offsets and the body copy is not resolved here.
  Grade: inferred.

- `__glOdysseyImageMovePixelsDMAtoGfx` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9c8ba0 (8852 bytes).
  `__glOdysseyImageMovePixelsDMAtoGfx` calls `__glOdysseyImageCalcXferWriteParams` (0xd9cd4d4), `ImageToDmaHostPixelSize` (0xd9cecbc), `__glSpecElementsPerGroup` (0xda28af0) and `__glSpecBytesPerElement` (0xda28bf4), plus the write-reference open and close routines. Its paths include `SendPixelsAsUserPIO` and `__glOdysseyAssignToPMObj`, and it issues `__glOdysseyIoctl` with request 0x6f64000d at 0xd9c9c34. The name says DMA to graphics, and the facts show both a DMA-offset path and a programmed-I/O path. Nothing in this routine's facts decides which one runs.
  Grade: inferred.

- `__glOdylc_Normal3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d6a50 (272 bytes).
  `__glOdylc_Normal3b` makes one call to `__glSPDlistSpace` (0xda0f8cc), the same single call as the color setters above, and is the same family by shape and name. I did not read its branches, so the reading is the family reading only.
  Grade: inferred.

- `__glOdylc_Normal3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d72f4 (272 bytes).
  `__glOdylc_Normal3s` has the same size and single `__glSPDlistSpace` call as Normal3b. The signed-short argument form comes from the name only.
  Grade: inferred.

- `__glOdysseyCreatePMObj` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d83c8 (464 bytes).
  `__glOdysseyCreatePMObj` calls `__glOdysseyIoctl` with request 0x6f640001 at 0xd9d8458, then `InitCSetCursor` (0xd9d9f34), `NextCSetElem` (0xd9d9f48) twice, `LookupKnownGroup` (0xd9d9564) and `RemoveKnownGroup` (0xd9d9a30). It returns 0 or 1, and its branches compare the ioctl result against minus one. It asks for an object with one request and then walks a per-context element set to find and remove a group entry. What the request allocates is not stated in the facts, and the walk reading rests on the callee names.
  Grade: inferred.

- `__glOdysseyDestroyPMObjGroup` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d8598 (284 bytes).
  `__glOdysseyDestroyPMObjGroup` walks the same element set as the create routine above, using `InitCSetCursor`, `NextCSetElem` twice, `LookupKnownGroup` and `RemoveKnownGroup`. It then issues `__glOdysseyIoctl` with request 0x6f640002 at 0xd9d8678 and returns 0 or 1. It reads as the teardown side of the same pair. Whether request 0x6f640002 means destroy is not in the facts, and the name is the only basis for the reading.
  Grade: inferred.

- `__glOdysseyReadFromPMObj` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d89d0 (320 bytes).
  `__glOdysseyReadFromPMObj` calls `CheckMMXfrArgs` (0xd9d87f8) and then `__glOdysseyIoctl` with request 0x6f640006 at 0xd9d8ab0. It returns 0 or 1. It checks transfer arguments and asks the kernel to read from a pixel-memory object, returning a success flag. The name `CheckMMXfrArgs` is opaque, and what it checks is not read here.
  Grade: inferred.

- `OpenPipeMemReference` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d8b10 (2644 bytes).
  `OpenPipeMemReference` calls `__glOdysseyMIPS_SYNC` (0xdad53d0) twice, around one `__glOdysseyIoctl` with request 0x6f640003 at 0xd9d8cbc. It returns 0 or 1. It reads as opening a reference to pipe memory by syncing before and after one kernel request. The helper's action is not in the facts. Its name points to a cache or ordering operation, but I did not read the helper.
  Grade: inferred.

- `LookupKnownGroup` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d9564 (356 bytes).
  `LookupKnownGroup` calls `LookupCSetId` (0xd9da0fc), `AddKnownGroup` (0xd9d99d4), `RemoveKnownGroup` (0xd9d9a30), `LookupCoresidRange` (0xd9d96c8), `bzero` and `__glSetError`. It returns the `LookupCSetId` result on one path. The name says lookup, but the calls to add and remove entries mean it may change the set. The facts do not settle which path runs.
  Grade: inferred.

- `LookupCoresidRange` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d96c8 (624 bytes).
  `LookupCoresidRange` calls `__glSetError`, `bzero`, and `__glOdysseyIoctl` with request 0x6f640004 at 0xd9d9800. It also makes two calls through registers. It reads as a coresidence range query that clears a result and asks for it with one request. The register-indirect calls are unresolved, and the name is the basis for "coresidence".
  Grade: inferred.

- `__glOdylc_TexCoord2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9ded88 (268 bytes).
  `__glOdylc_TexCoord2d` makes one call to `__glSPDlistSpace` (0xda0f8cc), the same single call as the other vertex-attribute setters in this batch. It is the same family by shape and name, and its branches were not read.
  Grade: inferred.
