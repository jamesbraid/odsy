# Instruction readings from hostfacts

Tier-1 reading batch 10 for odsy: targets 250 to 274 of the ranked list. Each entry records selected software behavior from its exact binary range. These inferred software observations do not establish hardware behavior. All 25 entries passed the grader; none were rejected.

- `__glOdylc_Color4ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52e10 (n32).
  `__glOdylc_Color4ui` is a 288-byte color setter. It calls `__glSPDlistSpace` at 0xda52e7c with a0=0, and two branches (0xda52e5c, 0xda52ea0) choose between paths using the stored state and that call's return value. The record-path reading comes from the callee name, so the purpose of the branches is unclear.
  Evidence grade: inferred.

- `__glOdylc_Color4us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53050 (n32).
  `__glOdylc_Color4us` is the unsigned-short twin of the entry at 0xda52e10, with the same 288-byte shape. It calls `__glSPDlistSpace` at 0xda530bc with a0=0. Argument conversion is not spelled out in the facts.
  Evidence grade: inferred.

- `__glOdyim_Clear` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda54070 (n32).
  `__glOdyim_Clear` is a 1540-byte clear front end. It checks its arguments and reports error codes 0x501 and 0x502 through `__glSetError` at 0xda540f8 and 0xda540a8. It sets the draw buffer through `__glOdysseySetDrawbuf` at 0xda544b4 and 0xda54518, calls `__glOdysseyClear` at 0xda543c8 and 0xda544fc, and sends ioctl request 0x6f64000d through `__glOdysseyIoctl` at 0xda54614. The ordering between the driver ioctl and the local clear is unclear.
  Evidence grade: inferred.

- `__glOdysseyClear` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda54680 (n32).
  `__glOdysseyClear` is an 1832-byte routine that calls `__glOdysseyValidateHardware` at 0xda54a6c before it does its work. The facts name only that one call, so the per-buffer behavior after validation is mostly open. `__glOdyim_Clear` calls this routine at 0xda543c8 and 0xda544fc, which fits its role as the core clear.
  Evidence grade: inferred.

- `__glOdysseyFindWindowSize` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda55150 (n32).
  `__glOdysseyFindWindowSize` is a 328-byte routine that makes two calls to unnamed callees at 0xda55190 and 0xda551fc, with out-arguments on the stack. It then calls `__glChangeWindowSize` at 0xda551e8 and 0xda5524c, and `__glChangeReadWindowSize` at 0xda55224. It appears to read the window geometry and push it into the draw and read window state, but the unnamed callees are not identified.
  Evidence grade: inferred.

- `__glOdysseyInitDefaultValues` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda59020 (n32).
  `__glOdysseyInitDefaultValues` is a 3532-byte setup routine for the context. It zeroes a 0x40-byte block at a0+35592 through `bzero` at 0xda59284, and calls `__glOdyim_DrawBuffer` at 0xda5949c and `__glOdysseyImageInit` at 0xda59528. A run of `__glOdyim_Disable` calls at 0xda5953c through 0xda59578 disables the tokens 0xb10, 0xb42, 0x2a01, 0x2a02, 0x8037 and 0xb44, and `__glOdyim_CullFace` and `__glOdyim_FrontFace` set face state at 0xda59584 and 0xda59590. The routine sets the initial state of a fresh context, which matches its name.
  Evidence grade: inferred.

- `ApplyMaterialF` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda6fb60 (n32).
  `ApplyMaterialF` is a 1764-byte routine that reads seven float fields from its a2 argument block and reads and writes a word at a0+0x1c. It then writes 21 words to the fixed address 0x4000, which reads like a pipe or FIFO write port. The purpose of the 0x4000 window is not confirmed by the facts.
  Evidence grade: inferred.

- `ApplyMaterialI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda70250 (n32).
  `ApplyMaterialI` is a 2208-byte routine with the same structure as `ApplyMaterialF` at 0xda6fb60. It reads seven words from the a2 block, twenty float values from the context at offset 0xde8, and writes 21 words to 0x4000. The name suggests an integer-argument variant, but the float loads in the facts make that only partly clear.
  Evidence grade: inferred.

- `AddConvolutionBorders` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda85ce0 (n32).
  `AddConvolutionBorders` is a 9460-byte routine. It calls `__glOdysseyProgramTexFilter` at 0xda85e3c, 0xda85f94 and 0xda861d4, and `LoadTextureFilter` at 0xda85ea4 and 0xda85fa4. It moves pixels with `__glOdysseyImageMovePixelsTexture` at 0xda85f20 and 0xda86050 and computes offsets with `floorf` at four sites. It appears to build a border-extended copy of the image for convolution, but the border arithmetic is not legible from the facts.
  Evidence grade: inferred.

- `__glOdysseyImageMovePixelsCopy` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda9b990 (n32).
  `__glOdysseyImageMovePixelsCopy` is an 8168-byte copy routine. It clears two local blocks with `memset` at 0xda9ba04 and 0xda9ba1c, and computes extents with `ceilf` at four sites. It calls `OdysseyImageCalcXferCopyParams` at 0xda9bb78 and `ImageCalcDmaFieldOffsets` at 0xda9bc90 and 0xda9bd0c, then opens pipe-memory references through `__glOdysseyOpenPMObjReference` at 0xda9bd30 and `__glOdysseyOpenPMObjWriteReference` at 0xda9bd78. It appears to be an image-to-image copy that prepares DMA parameters.
  Evidence grade: inferred.

- `__glOdysseyImageMovePixelsDMAtoGfx` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda9e1e0 (n32).
  `__glOdysseyImageMovePixelsDMAtoGfx` is a 6032-byte routine. It clears local blocks at 0xda9e2e0 and 0xda9e2f8, computes extents with `ceilf` at four sites, and calls `__glOdysseyImageCalcXferWriteParams` at 0xda9e3e4. It takes element sizes from `__glSpecElementsPerGroup` at 0xda9e430 and `__glSpecBytesPerElement` at 0xda9e440, and calls `ImageCalcDmaFieldOffsets` at 0xda9e69c. It appears to move host data into the graphics image by DMA, but the transfer path is not fully described by the facts.
  Evidence grade: inferred.

- `__glOdylc_Normal3s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa8fe0 (n32).
  `__glOdylc_Normal3s` is a 256-byte normal setter. Its only named call is `__glSPDlistSpace` at 0xdaa9034 with a0=0, the same pattern as the color setters. The stores that hold the normal values are not named in the facts.
  Evidence grade: inferred.

- `__glOdysseyCreatePMObj` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa9e70 (n32).
  `__glOdysseyCreatePMObj` is a 480-byte routine. It sends ioctl request 0x6f640001 through `__glOdysseyIoctl` at 0xdaa9ef0. It then walks a set of known groups with `InitCSetCursor` at 0xdaa9f38, `NextCSetElem` at 0xdaa9f50 and 0xdaa9fa8, `LookupKnownGroup` at 0xdaa9fc4 and `RemoveKnownGroup` at 0xdaa9fe0. It appears to create a pipe-memory object with the driver and then update the group bookkeeping, but the order of those steps is not clear.
  Evidence grade: inferred.

- `__glOdysseyDestroyPMObjGroup` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa050 (n32).
  `__glOdysseyDestroyPMObjGroup` is a 328-byte routine. It walks the same known-group set through `InitCSetCursor`, `NextCSetElem`, `LookupKnownGroup` and `RemoveKnownGroup` at 0xdaaa090 to 0xdaaa108. It then sends ioctl request 0x6f640002 at 0xdaaa144. It appears to remove a group and tell the driver to release it.
  Evidence grade: inferred.

- `__glOdysseyAssignToPMObj` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa370 (n32).
  `__glOdysseyAssignToPMObj` is a 380-byte routine. It zeroes an 0x50-byte local block with `bzero` at 0xdaaa3c8, validates transfer arguments through `CheckMMXfrArgs` at 0xdaaa450, and sends ioctl request 0x6f640006 at 0xdaaa474 with that block. The meaning of the `CheckMMXfrArgs` name is not clear from the facts.
  Evidence grade: inferred.

- `__glOdysseyReadFromPMObj` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa4f0 (n32).
  `__glOdysseyReadFromPMObj` is a 284-byte routine with the same validate-then-ioctl shape as the entry at 0xdaaa370. It calls `CheckMMXfrArgs` at 0xdaaa588 and then sends ioctl request 0x6f640006 at 0xdaaa5a8. The same request number appears in both routines, so the direction must be carried by the argument block or the facts are missing something.
  Evidence grade: inferred.

- `OpenPipeMemReference` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa610 (n32).
  `OpenPipeMemReference` is a 496-byte routine. It brackets two driver operations with `__glOdysseyMIPS_SYNC` calls at 0xdaaa71c and 0xdaaa7a8, and sends ioctl request 0x6f640003 through `__glOdysseyIoctl` at 0xdaaa780. It appears to open a reference to pipe memory, but the sync calls' arguments are not identified as ordering or cache operations.
  Evidence grade: inferred.

- `LookupKnownGroup` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaab0a0 (n32).
  `LookupKnownGroup` is a 396-byte routine. It calls `LookupCSetId` at 0xdaab0ec and then a 0x54-byte allocation with `bzero` at 0xdaab150. It adds a new record through `AddKnownGroup` at 0xdaab168, checks a range with `LookupCoresidRange` at 0xdaab188, and reports error 0x505 through `__glSetError` at 0xdaab1d8. Despite the name, it appears to find or create the group, so the name may understate it.
  Evidence grade: inferred.

- `LookupCoresidRange` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaab230 (n32).
  `LookupCoresidRange` is a 632-byte routine. It zeroes a 0x2c-byte query block at 0xdaab2b8 and sends ioctl request 0x6f640004 through `__glOdysseyIoctl` at 0xdaab318. It reports error 0x505 through `__glSetError` at 0xdaab37c and makes two unnamed callees at 0xdaab29c and 0xdaab3a8. It appears to query a range of co-resident entries from the driver, but the query fields are not described.
  Evidence grade: inferred.

- `__glOdylc_TexCoord2d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab0080 (n32).
  `__glOdylc_TexCoord2d` is a 260-byte texture-coordinate setter. Its only named call is `__glSPDlistSpace` at 0xdab00d8 with a0=0, the same pattern as the other setters in this batch. How the double arguments are stored is not described in the facts.
  Evidence grade: inferred.

- `__glOdylc_TexCoord2i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab0490 (n32).
  `__glOdylc_TexCoord2i` is a 244-byte texture-coordinate setter. It calls `__glSPDlistSpace` at 0xdab04e0 with a0=0, the same pattern as `__glOdylc_TexCoord2d`. The integer conversion is not described.
  Evidence grade: inferred.

- `DownsampleTextureThruHW` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab4350 (n32).
  `DownsampleTextureThruHW` is a 2240-byte routine. It computes log base 2 of texture dimensions with `__glOdysseyImageLogBase2` at 0xdab448c and 0xdab44b8. It chooses a texture mode with `ChooseSuitableBuzzTexModeBaseFmt` at 0xdab45b4, maps the format with `GetImageFmtEnumFromBuzzTexFormat` at 0xdab476c, and calls `__glOdysseyImageCalcFieldFormat` at 0xdab4778. It ends by revalidating hardware with `__glOdysseyValidateHardware` at 0xdab4954, and the facts do not show whether the filter is a box average or a mip-level step.
  Evidence grade: inferred.

- `__glOdysseyTextureDeactivate` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab5590 (n32).
  `__glOdysseyTextureDeactivate` is a 328-byte routine. It closes pipe-memory references with `__glOdysseyClosePMObjReference` at 0xdab55b4 and 0xdab563c, using fields of the texture (offsets 1332, 1340 and 1344) and, in the second call, fields reached through the pointer at a0+91320. It reports error 0x505 through `__glSetError` at 0xdab56b4 and 0xdab56c8. It appears to release a texture's pipe-memory references, but which texture the second call targets is inferred only.
  Evidence grade: inferred.

- `__glOdysseyDriverMakeCurrent` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabd290 (n32).
  `__glOdysseyDriverMakeCurrent` is a 628-byte routine. It sends ioctl request 0x6f640008 through `__glOdysseyIoctl` at 0xdabd30c, with a3 set to 0 or 2 depending on the path. It zeroes three per-context blocks at a0+93304, a0+93344 and a0+93364, and makes one unnamed call at 0xdabd450 with a data address of 0xdbc1298. It appears to bind the context to the driver and reset its per-context state, but the unnamed call is not identified.
  Evidence grade: inferred.

- `RGBSendClippedBmFmTN` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacb950 (n32).
  `RGBSendClippedBmFmTN` is a 676-byte routine. It reads a byte at a0+0xb8 that acts as a flag, loads a float constant from the abs address 0xdbde448, and writes 75 floats and 20 words to the fixed 0x4000 window. It loads float fields from the argument block at a0+0x90 to a0+0xac. The name suggests a clipped RGB bitmap send, and the 0x4000 writes match the window in the two `ApplyMaterial` entries, but the meaning of that window is not confirmed.
  Evidence grade: inferred.
