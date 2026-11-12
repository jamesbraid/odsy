# Instruction readings from hostfacts

Tier-1 reading batch 10 for odsy: targets 250 to 274 of the ranked list. Each entry records selected software behavior from its exact binary range. These inferred software observations do not establish hardware behavior. All 25 entries passed the grader; none were rejected.

- `__glOdylc_Color4ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52e10 (n32).
  `__glOdylc_Color4ui` is a 288-byte color setter. It calls `__glSPDlistSpace` at 0xda52e7c with a0=0, and two branches (0xda52e5c, 0xda52ea0) choose between paths using the stored state and that call's return value. The record-path reading comes from the callee name, so the purpose of the branches is unclear.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color4us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53050 (n32).
  `__glOdylc_Color4us` is the unsigned-short twin of the entry at 0xda52e10, with the same 288-byte shape. It calls `__glSPDlistSpace` at 0xda530bc with a0=0. Argument conversion is not spelled out in the facts.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Clear` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda54070 (n32).
  `__glOdyim_Clear` is a 1540-byte clear front end. It checks its arguments and reports error codes 0x501 and 0x502 through `__glSetError` at 0xda540f8 and 0xda540a8. It sets the draw buffer through `__glOdysseySetDrawbuf` at 0xda544b4 and 0xda54518, calls `__glOdysseyClear` at 0xda543c8 and 0xda544fc, and sends ioctl request 0x6f64000d through `__glOdysseyIoctl` at 0xda54614. The ordering between the driver ioctl and the local clear is unclear.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyClear` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda54680 (n32).
  `__glOdysseyClear` is an 1832-byte routine. The only call in the facts is `__glOdysseyValidateHardware` at 0xda54a6c, and the branch at 0xda54a60 reaches it only when the word at a0+92368 is nonzero. Many loads, stores and branches come before that call, so it is not the first thing the routine does. The facts name no other call, so the per-buffer behavior is open. `__glOdyim_Clear` calls this routine at 0xda543c8 and 0xda544fc. Role (from name): the core of the clear.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyFindWindowSize` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda55150 (n32).
  `__glOdysseyFindWindowSize` is a 328-byte routine. It calls an unnamed callee at 0xda55190 with pointers to four stack slots, then calls `__glChangeWindowSize` at 0xda551e8 only if the word at a0+3692 or the word at a0+3696 differs from a value the facts do not resolve. A second unnamed callee at 0xda551fc gets two stack-slot pointers. `__glChangeReadWindowSize` at 0xda55224 is called only if the word at a0+3700 or a0+3704 differs from one of those values, and `__glChangeWindowSize` at 0xda5524c is called only when the word at a0+92400 is nonzero. It appears to compare window geometry with the stored draw and read sizes and update them on a change, but the unnamed callees are not identified.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyInitDefaultValues` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda59020 (n32).
  `__glOdysseyInitDefaultValues` is a 3532-byte setup routine for the context. It zeroes a 0x40-byte block at a0+35592 through `bzero` at 0xda59284, and calls `__glOdyim_DrawBuffer` at 0xda5949c and `__glOdysseyImageInit` at 0xda59528. A run of `__glOdyim_Disable` calls at 0xda5953c through 0xda59578 disables the tokens 0xb10, 0xb42, 0x2a01, 0x2a02, 0x8037 and 0xb44, and `__glOdyim_CullFace` and `__glOdyim_FrontFace` set face state at 0xda59584 and 0xda59590. The routine sets the initial state of a fresh context, which matches its name.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `ApplyMaterialF` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda6fb60 (n32).
  `ApplyMaterialF` is a 1764-byte routine that branches on a1 against the values 0x1200 to 0x1202 and 0x1600 to 0x1602. It loads floats from its a2 block at offsets 0, 4, 8 and 0xc (21 load sites, not all run on one path) and updates words of the a0 block at offsets 0 to 0x1c, reading and writing the word at 0x1c. It then stores 21 words to the fixed address 0x4000: four of them only when the context word at offset 38736 is nonzero (the routine clears that word), and 17 in the common tail. The 0x4000 window reads like a pipe or FIFO write port, but the facts do not confirm that.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `ApplyMaterialI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda70250 (n32).
  `ApplyMaterialI` has the same shape as `ApplyMaterialF` at 0xda6fb60. It branches on a1 against the values 0x1200 to 0x1202 and 0x1600 to 0x1603 and loads words with `lw` from its a2 block at offsets 0, 4, 8 and 0xc (21 load sites, not all run on one path). It also has 20 `lwc1` loads at displacement 0xde8. It updates words of the a0 block at offsets 0 to 0x1c, and stores 21 words to 0x4000 (four only when the context word at offset 38736 is nonzero, 17 in the common tail). Word loads from the argument block fit an integer-argument variant, but the facts do not show what the float at 0xde8 does.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `AddConvolutionBorders` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda85ce0 (n32).
  `AddConvolutionBorders` is a 9460-byte routine. It calls `__glOdysseyProgramTexFilter` at 7 sites (the first at 0xda85e3c), `LoadTextureFilter` at 6 sites (the first at 0xda85ea4) and `__glOdysseyImageMovePixelsTexture` at 26 sites (the first at 0xda85f20). It also calls `floorf` at 100 sites and `ceilf` at 6, with arguments the facts do not resolve. It appears to build a border-extended copy of the image for convolution, but the border arithmetic is not legible from the facts.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyImageMovePixelsCopy` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda9b990 (n32).
  `__glOdysseyImageMovePixelsCopy` is an 8168-byte copy routine. It clears two local blocks with `memset` at 0xda9ba04 and 0xda9ba1c, and computes extents with `ceilf` at four sites. It calls `OdysseyImageCalcXferCopyParams` at 0xda9bb78 and `ImageCalcDmaFieldOffsets` at 0xda9bc90 and 0xda9bd0c, then opens pipe-memory references through `__glOdysseyOpenPMObjReference` at 0xda9bd30 and `__glOdysseyOpenPMObjWriteReference` at 0xda9bd78. It appears to be an image-to-image copy that prepares DMA parameters.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyImageMovePixelsDMAtoGfx` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda9e1e0 (n32).
  `__glOdysseyImageMovePixelsDMAtoGfx` is a 6032-byte routine. It clears local blocks at 0xda9e2e0 and 0xda9e2f8, calls `ceilf` at five sites (0xda9e318 to 0xda9e4b4), and calls `__glOdysseyImageCalcXferWriteParams` at 0xda9e3e4. It calls `__glSpecElementsPerGroup` at 0xda9e430 and `__glSpecBytesPerElement` at 0xda9e440, and `ImageCalcDmaFieldOffsets` at 0xda9e69c. It also calls `SendPixelsAsUserPIO` at 0xda9f054 and 0xda9f444, so the transfer is not DMA only. Role (from name): move host data into the graphics image by DMA. The transfer path is not fully described by the facts.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Normal3s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa8fe0 (n32).
  `__glOdylc_Normal3s` is a 256-byte normal setter. Its only named call is `__glSPDlistSpace` at 0xdaa9034 with a0=0, the same pattern as the color setters. The stores that hold the normal values are not named in the facts.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyCreatePMObj` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa9e70 (n32).
  `__glOdysseyCreatePMObj` is a 480-byte routine. It sends ioctl request 0x6f640001 through `__glOdysseyIoctl` at 0xdaa9ef0. It then walks a set of known groups with `InitCSetCursor` at 0xdaa9f38, `NextCSetElem` at 0xdaa9f50 and 0xdaa9fa8, `LookupKnownGroup` at 0xdaa9fc4 and `RemoveKnownGroup` at 0xdaa9fe0. It appears to create a pipe-memory object with the driver and then update the group bookkeeping, but the order of those steps is not clear.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyDestroyPMObjGroup` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa050 (n32).
  `__glOdysseyDestroyPMObjGroup` is a 328-byte routine. It walks the same known-group set through `InitCSetCursor`, `NextCSetElem`, `LookupKnownGroup` and `RemoveKnownGroup` at 0xdaaa090 to 0xdaaa108. It then sends ioctl request 0x6f640002 at 0xdaaa144. It appears to remove a group and tell the driver to release it.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyAssignToPMObj` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa370 (n32).
  `__glOdysseyAssignToPMObj` is a 380-byte routine. It zeroes an 0x50-byte local block with `bzero` at 0xdaaa3c8 and calls `CheckMMXfrArgs` at 0xdaaa450. Only when that call returns nonzero does it send ioctl request 0x6f640006 at 0xdaaa474 with the block. The name `CheckMMXfrArgs` suggests argument validation, but the facts do not show what it checks.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyReadFromPMObj` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa4f0 (n32).
  `__glOdysseyReadFromPMObj` is a 284-byte routine with the same check-then-ioctl shape as the entry at 0xdaaa370. It calls `CheckMMXfrArgs` at 0xdaaa588 and, only when that returns nonzero, sends ioctl request 0x6f640006 at 0xdaaa5a8 with a stack block. The same request number appears in both routines, and the facts do not show how the two transfers differ.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `OpenPipeMemReference` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa610 (n32).
  `OpenPipeMemReference` is a 496-byte routine. It calls `__glOdysseyMIPS_SYNC` at 0xdaaa71c. After that call, two branches (0xdaaa72c and 0xdaaa738) can return 1 early at 0xdaaa750; otherwise it sends ioctl request 0x6f640003 through `__glOdysseyIoctl` at 0xdaaa780. A second `__glOdysseyMIPS_SYNC` call at 0xdaaa7a8 follows only when the ioctl returns nonzero. It appears to open a reference to pipe memory, but the sync calls' arguments are not identified as ordering or cache operations.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `LookupKnownGroup` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaab0a0 (n32).
  `LookupKnownGroup` is a 396-byte routine. It calls `LookupCSetId` at 0xdaab0ec and returns that result when it is nonzero. Otherwise, when a2 is nonzero, it calls an unnamed callee at 0xdaab130 with size 0x54, which looks like an allocation. A zero return reports error 0x505 through `__glSetError` at 0xdaab1d8. A nonzero return leads to `bzero` of 0x54 bytes at 0xdaab150, `AddKnownGroup` at 0xdaab168 and `LookupCoresidRange` at 0xdaab188. When that last call returns zero, it calls `RemoveKnownGroup` at 0xdaab208 and returns 0. Despite the name, it appears to find or create the group, so the name may understate it.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `LookupCoresidRange` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaab230 (n32).
  `LookupCoresidRange` is a 632-byte routine. It calls an unnamed callee at 0xdaab29c with size 0x2c, zeroes 0x2c bytes at that call's return value with `bzero` at 0xdaab2b8, and sends ioctl request 0x6f640004 through `__glOdysseyIoctl` at 0xdaab318 with a stack block. It reports error 0x505 through `__glSetError` at 0xdaab37c and makes a second unnamed call at 0xdaab3a8. Role (from name): query a range of co-resident entries from the driver. The facts do not describe the query fields.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_TexCoord2d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab0080 (n32).
  `__glOdylc_TexCoord2d` is a 260-byte texture-coordinate setter. Its only named call is `__glSPDlistSpace` at 0xdab00d8 with a0=0, the same pattern as the other setters in this batch. How the double arguments are stored is not described in the facts.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_TexCoord2i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab0490 (n32).
  `__glOdylc_TexCoord2i` is a 244-byte texture-coordinate setter. It calls `__glSPDlistSpace` at 0xdab04e0 with a0=0, the same pattern as `__glOdylc_TexCoord2d`. The integer conversion is not described.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `DownsampleTextureThruHW` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab4350 (n32).
  `DownsampleTextureThruHW` is a 2240-byte routine. It calls `__glOdysseyImageLogBase2` at 0xdab448c and 0xdab44b8, `ChooseSuitableBuzzTexModeBaseFmt` at 0xdab45b4, `GetImageFmtEnumFromBuzzTexFormat` at 0xdab476c and `__glOdysseyImageCalcFieldFormat` at 0xdab4778. Its last call is `__glOdysseyValidateHardware` at 0xdab4954. The facts also do not show whether the filter is a box average or a mip-level step.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyTextureDeactivate` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab5590 (n32).
  `__glOdysseyTextureDeactivate` is a 328-byte routine. It closes pipe-memory references with `__glOdysseyClosePMObjReference` at 0xdab55b4 and 0xdab563c, using fields of the texture (offsets 1332, 1340 and 1344) and, in the second call, fields reached through the pointer at a0+91320. It reports error 0x505 through `__glSetError` at 0xdab56b4 and 0xdab56c8. It appears to release a texture's pipe-memory references, but which texture the second call targets is inferred only.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyDriverMakeCurrent` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabd290 (n32).
  `__glOdysseyDriverMakeCurrent` is a 628-byte routine. It sends ioctl request 0x6f640008 through `__glOdysseyIoctl` at 0xdabd30c, with a3 set to 0 or 2 depending on the path. It zeroes three per-context blocks at a0+93304, a0+93344 and a0+93364, and makes one unnamed call at 0xdabd450 with a data address of 0xdbc1298. It appears to bind the context to the driver and reset its per-context state, but the unnamed call is not identified.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `RGBSendClippedBmFmTN` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacb950 (n32).
  `RGBSendClippedBmFmTN` is a 676-byte routine. It reads a byte at a0+0xb8 and loads one float constant whose address the facts do not resolve. It loads float fields from the argument block at a0+0x90 to a0+0xac. The code holds 75 float stores and 20 word stores to the fixed 0x4000 window, spread over two alternative sequences chosen by the branch at 0xdacb9d4 (a context word compared with 0x81fa), so one call does not execute all of them. The 0x4000 writes match the window in the two `ApplyMaterial` entries. Role (from name): send a clipped RGB bitmap. The meaning of the window is not confirmed.
  Evidence grade: inferred.
  Reviewed: 2026-11-12 (sonnet)
