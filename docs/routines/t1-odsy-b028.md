# Tier-1 routine reads, batch 28

Role statements for 25 routines in the libGLcore.so builds, read from their rendered facts (registers, calls, constants, branches). Every entry cites addresses and callees from the rendered range. The roles are inferred unless noted. Callee names come from the binary's own symbols, so they support a role without proving it.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21ade10 (`__glOdysseyInitDefaultValues`)

The routine makes about 87 calls to `__glOdyim_*` state setters (for example `__glOdyim_Enable` at 0x219ad80, `__glOdyim_Disable` at 0x21a1ea0, `__glOdyim_Fogfv` at 0x21c4de0), which together look like a sequence that resets GL state to its defaults. It also calls `__glOdysseyImageInit` at 0x21cc8a0 and writes words into the argument block and to absolute addresses 0x10000 and 0x1030. The facts do not say what those absolute addresses map to. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21c7170 (`ApplyMaterialF`)

This routine makes no calls and has 55 conditional branches, so it looks like a dispatch on a material parameter name or face. It reads through a pointer chain from absolute 0x1020 and stores to absolute 0x10000. The `F` suffix suggests a float-valued variant of the material setter, which the facts do not confirm. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21c78d0 (`ApplyMaterialI`)

This is the integer-valued sibling of `ApplyMaterialF` at 0x21c7170. It has the same shape (no calls, 55 branches, the same absolute 0x1020 and 0x10000 uses), but it is 2332 bytes long against 1888. The facts do not show where the integer-to-hardware conversion happens, so the difference is left open. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21e2650 (`AddConvolutionBorders`)

The routine calls `__glOdysseyImageMovePixelsTexture` at 0x2200380, `LoadTextureFilter` at 0x21e0cc0 and `__glOdysseyProgramTexFilter` at 0x21faa10, with 90 branches over a 9664-byte range. Its name points at filling the border texels of a convolution filter kernel, and the callees fit that, but the facts do not show the border arithmetic in enough detail to confirm it. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21fba30 (`__glOdysseyImageMovePixelsCopy`)

This is the copy path of pixel movement. It computes transfer parameters (`OdysseyImageCalcXferCopyParams` at 0x2201470, `ImageCalcDmaFieldOffsets` at 0x2202f20), opens and closes pipe-memory references (`__glOdysseyOpenPMObjReference` at 0x220b780, `__glOdysseyClosePMObjReference`), and then either calls `ImageCopyPixelBody` at 0x21fb5d0 or issues ioctl request 0x6f64000d at 0x21fd8f0. Error paths call `__glSetError` with 0x502 and 0x505. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21fe0f0 (`__glOdysseyImageMovePixelsDMAtoGfx`)

This routine moves pixels from a host buffer into graphics memory. It calls `__glOdysseyImageCalcXferWriteParams` at 0x2201bd0, `ImageToDmaHostPixelSize` at 0x22035c0, `SendPixelsAsUserPIO` and `__glOdysseyAssignToPMObj` at 0x220b2a0, and it can fall back to a programmed-I/O path. The name and the DMA callees suggest a DMA-to-graphics upload, with PIO as the other route, but the facts do not show which route a given argument selects. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x220ad70 (`__glOdysseyCreatePMObj`)

The routine issues ioctl request 0x6f640001 at 0x220ae18, with arguments loaded from its argument block at offsets +12, +16 and +20, and returns 0 at 0x220ae9c on success. It also manages a set of known groups through `InitCSetCursor` (0x220c7f0), `NextCSetElem` (0x220c810), `LookupKnownGroup` (0x220bed0) and `RemoveKnownGroup` (0x220c300). The `PMObj` name fits a pipe-memory object, which `OpenPipeMemReference` also suggests, but the facts do not settle what the object is. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x220af80 (`__glOdysseyDestroyPMObjGroup`)

This is a loop over a group of pipe-memory objects. It walks the set with `InitCSetCursor` at 0x220c7f0 and `NextCSetElem` at 0x220c810, looks each element up with `LookupKnownGroup`, removes it with `RemoveKnownGroup` at 0x220c300, and then issues ioctl request 0x6f640002 at 0x220b064. The return value is 0 on one path (0x220b094) and 1 on another (0x220b0c8); which condition picks which path is inferred from the branch targets. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x220b0d0 (`__glOdysseyDestroyPMObj`)

This is the single-object version of `__glOdysseyDestroyPMObjGroup` at 0x220af80. It makes the same callees and ioctl request 0x6f640002, here at 0x220b130, and returns 0 or 1 at 0x220b118. The facts do not show why the group version and the single version are separate routines. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x220b2a0 (`__glOdysseyAssignToPMObj`)

The routine reads eight words from its argument block at +0x0 through +0x1c and stores two words into the context at offset 0x285d0. It calls `CheckMMXfrArgs` at 0x220b220 and then ioctl request 0x6f640006 at 0x220b380. A bit test on argument register a4 (mask 0x2) guards a store path. The name suggests attaching a request to a pipe-memory object, which the facts do not confirm. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x220b510 (`OpenPipeMemReference`)

The routine calls `__glOdysseyMIPS_SYNC` at 0x2317f20, which is probably a memory barrier, and then issues ioctl request 0x6f640003 at 0x220b5ec. It stores to absolute 0x10000 and returns 1 at 0x220b5bc. The barrier-then-ioctl order fits opening a reference to memory the hardware will use, but the facts do not say which memory. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x220bed0 (`LookupKnownGroup`)

The routine looks up a known group by id through `LookupCSetId` at 0x220c990. When the lookup misses it may add the group with `AddKnownGroup` at 0x220c2b0, and it can also remove one with `RemoveKnownGroup` at 0x220c300 or call `LookupCoresidRange` at 0x220c010, whose role is unclear (see below). It reports a `0x505` error through `__glSetError` at 0x227a070 on one path. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x220c010 (`LookupCoresidRange`)

The routine issues ioctl request 0x6f640004 at 0x220c0ec with argument register a4 set to 2, and it reports an error through `__glSetError` on failure. It returns 0 at 0x220c120 on success. The name suggests a range query for co-resident objects, but the facts do not say what "coresident" means in this code. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x220e490 (`__glOdysseySetProgram`)

The routine makes no calls and has 9 branches. It stores to absolute 0x10000 and returns the constant 0x298080c5 at 0x220e4bc. The name suggests it sets the current GL program, but the facts do not show what the stores carry or what 0x10000 maps to, so the role is open. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2211220 (`__glOdylc_TexCoord2d`)

The routine calls `__glSPDlistSpace` at 0x223fd50 from 0x2211278, passing the value at absolute 0x1048 as argument a2. It reads and writes absolute 0x1048, 0x1058 (8 bytes) and 0x1060, and it has a branch on absolute 0x1060 and one on the count against 3. The `OdyLC` name prefix and the list-space call suggest the texture coordinate is written into a display-list buffer, but the facts do not show the buffer layout. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x22116e0 (`__glOdylc_TexCoord2i`)

This is the integer-argument version of `__glOdylc_TexCoord2d` at 0x2211220. It has the same shape: one call to `__glSPDlistSpace` at 0x223fd50, the same absolute 0x1048, 0x1058 and 0x1060 accesses, and 6 branches. The facts do not show how the integer coordinates are converted, so that difference is left open. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2212080 (`__glOdylc_TexCoord3i`)

This is the three-coordinate integer variant. It makes one call to `__glSPDlistSpace` at 0x223fd50, uses the same absolute 0x1048, 0x1058 and 0x1060 words, and has 6 branches over a 308-byte range. Its role is inferred to be the same list-space write as the 2d variants, but the third coordinate's handling is not shown in the facts. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2212aa0 (`__glOdylc_TexCoord4i`)

This is the four-coordinate integer variant. It makes one call to `__glSPDlistSpace` at 0x223fd50, uses the same absolute 0x1048, 0x1058 and 0x1060 words, and is 324 bytes long. Like its siblings, the role is inferred and the handling of the extra coordinates is not shown in the facts. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x22157f0 (`DownsampleTextureThruHW`)

The routine calls `ChooseSuitableBuzzTexModeBaseFmt` at 0x2214280 and `GetImageFmtEnumFromBuzzTexFormat` at 0x22141c0 to pick a hardware texture format, then `__glOdysseyImageCalcFieldFormat` at 0x21cd410. It calls `__glOdysseyImageLogBase2` at 0x2206200 and `__glOdysseyValidateHardware` at 0x21ac4a0, and it returns 0x7 at 0x2215fd8. The name suggests downsampling a texture on the hardware path, which the format-selection calls are consistent with, but the downsample filter itself is not visible in the facts. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x222e7b0 (`CISendFc`)

The routine makes no calls. It loads one byte from the argument block at +0xc0 and several single-precision values from +0x18 through +0x24 and +0x98, then stores 3 words and 5 single-precision values to absolute 0x10000. It returns the constant 0xffffffff8080d005 at 0x222e80c. The `CI` prefix and the `Fc` suffix are not explained by the facts, so the packet's meaning is open. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x222ecd0 (`CISendClippedBmFmN`)

This routine has the same structure as `CISendFc` at 0x222e7b0. It reads the same byte at +0xc0 and a larger set of float fields from the argument block (+0x18 through +0x24, +0x98, +0xa8, +0xc8 through +0xd0), and it writes 11 words and 39 single-precision values to absolute 0x10000. It returns the same constant 0xffffffff8080d005 at 0x222ee28. The shared return constant hints at a common header, which is an inference, and the `Bm` and `FmN` parts of the name are not explained by the facts. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2239050 (`__glOdysseyHyperpipeStereo`)

The routine loads a word from +0x285d8 of its argument and a word through argument a3. It calls ioctl request 0x6f640018 at 0x22390a0 with a4 = 0x10de68 and a5 loaded from offset 165336 of the context, then returns 0 or 1 at 0x22390bc. The name suggests a stereo setup on the hyperpipe path, but the constant 0x10de68 is not explained, so that part is open. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2319380 (`__glOdyim_Vertex2d`)

The routine has no calls and no branches. It stores one word and two single-precision values to absolute 0x10000 and returns 0x10000 at 0x231939c. The shape (one word plus two floats) fits a two-coordinate vertex submission, but the facts do not show what the word is. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2319580 (`__glOdyim_Vertex3d`)

The routine has no calls and no branches. It stores one word and three single-precision values to absolute 0x10000 and returns 0x10000 at 0x23195a4. The shape fits a three-coordinate vertex, following the same pattern as `__glOdyim_Vertex2d` at 0x2319380, with the same unexplained word. Grade: inferred.

## `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2319680 (`__glOdyim_Vertex3i`)

The routine has no calls and no branches. It stores four words to absolute 0x10000 and returns 0x10000 at 0x23196b0. The integer name against the float-store pattern of `__glOdyim_Vertex3d` at 0x2319580 is worth a check, because the facts show words, not floats, and the conversion is not shown. Grade: inferred.
