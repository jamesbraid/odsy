# Tier-1 routine readings, odsy batch 23

Role statements for targets 575 to 599 (0-based) of the tier-1 list, all in `usr/gfx/arch/IP35ODSY/libGLcore.so`. Each routine was rendered with `render_reading.py` and graded alone with `grade_readings.py` before its role was written. None were rejected. Every grade is inferred from the rendered facts.

- `ApplyMaterialF` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd986c8c
  **Inferred.** Applies a set of material values to the record in arg0. It reads float coefficients from arg2 at offsets 0x0, 0x4, 0x8 and 0xc, loads fixed floats from absolute 0xdaedea0 to 0xdaedeac, and writes word and halfword fields back into arg0. It returns the word at the global 0x1010, which many routines in this batch use as a state base. The F suffix suggests float parameters, but the facts do not say which material fields these are, so the field meanings stay open.

- `ApplyMaterialI` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd98849c
  **Inferred.** The integer counterpart of `ApplyMaterialF`, 6768 bytes long, with the same return of the word at 0x1010 at 0xd989f04. It loads fixed floats from a different constant block, around 0xdaeded0, so it is not a copy of the F form's constants. Whether its fields are the integer versions of the same material fields comes from the name and was not checked against the field offsets.

- `AddConvolutionBorders` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9a6f0c
  **Inferred.** Sets up texture filtering and moves pixel blocks for the border of a convolution. It calls `__glOdysseyProgramTexFilter` twice (0xd9a714c, 0xd9a7358) and `LoadTextureFilter` twice (0xd9a7200, 0xd9a7374). It then calls `__glOdysseyImageMovePixelsTexture` four times (0xd9a7298, 0xd9a74f8, 0xd9a7640, 0xd9a7778), with twelve `floorf` calls in between that suggest rounding of border coordinates. The facts do not show which border edge each move covers.

- `__glOdysseyImageMovePixelsCopy` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9c6490
  **Inferred.** Copies a block of pixels between image objects by building transfer parameters and opening PM references. It calls `OdysseyImageCalcXferCopyParams` at 0xd9c6754, opens a read reference through `__glOdysseyOpenPMObjReference` at 0xd9c69b8 and a write reference through `__glOdysseyOpenPMObjWriteReference` at 0xd9c6a2c, and sends ioctl request 0x6f64000d at 0xd9c71ec. It raises error 0x502 and error 0x505 on its failure paths. Whether the copy stays in graphics memory is inferred from the name, not shown by the facts.

- `__glOdysseyImageMovePixelsDMAtoGfx` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9c8ba0
  **Inferred.** Moves pixel data toward graphics memory by DMA, going by the name and the calls. It computes write-transfer parameters with `__glOdysseyImageCalcXferWriteParams` at 0xd9c8df4, derives DMA field offsets at 0xd9c92f4 and the host pixel size at 0xd9c973c, and opens a write reference at 0xd9c944c. It sends ioctl request 0x6f64000d at 0xd9c9c34 and raises errors 0x501 and 0x505 at 0xd9c8e20 and 0xd9c9498. The DMA direction is inferred, and the unnamed call at 0xd9c9484 is left unidentified.

- `__glOdylc_Normal3b` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d6a50
  **Inferred.** Looks like the display-list compile form of a normal-vector call. It reads three state words at absolute 0x1028, 0x1030 and 0x1034, calls `__glSPDlistSpace` at 0xd9d6ab8 with a3 taken from 0x1028, and writes the state words back. Which branch reaches that call depends on the bits of 0x1030 and the value of 0x1034. The byte operand that the name suggests is not visible in the facts, so the conversion stays open.

- `__glOdylc_Normal3s` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d72f4
  **Inferred.** Has the same shape as `__glOdylc_Normal3b`, 272 bytes long, with the same three state words at 0x1028, 0x1030 and 0x1034. It calls `__glSPDlistSpace` at 0xd9d735c with a3 from 0x1028. The name points to a short-integer normal, but every state access here is a 4-byte word, so any operand-width difference from the Normal3b form is a claim from the name only.

- `__glOdysseyCreatePMObj` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d83c8
  **Inferred.** Creates a performance-monitor object for a group, with group-set bookkeeping done through the cursor calls. It sends ioctl request 0x6f640001 with a stack buffer at 0xd9d8458. It then walks the group set with `InitCSetCursor` and `NextCSetElem`, calling `LookupKnownGroup` at 0xd9d84d4 and `RemoveKnownGroup` at 0xd9d84f4 on the way. The return is 0 or 1, and the ioctl result is tested against 0 and -1. What the PM object is, and how the group set uses it, is not established by these facts.

- `__glOdysseyDestroyPMObjGroup` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d8598
  **Inferred.** Tears down a group of performance-monitor objects. It walks the group set with `InitCSetCursor` and `NextCSetElem`, removes each known group through `RemoveKnownGroup` at 0xd9d8630, and sends ioctl request 0x6f640002 at 0xd9d8678. It writes one word to the arg1 record at offset 0, probably clearing a handle, and returns 0 or 1.

- `__glOdysseyReadFromPMObj` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d89d0
  **Inferred.** Reads results back from a performance-monitor object. It checks its arguments with `CheckMMXfrArgs` at 0xd9d8a88, then sends ioctl request 0x6f640006 with a stack buffer at 0xd9d8ab0. On one path it stores two words at arg0 offset 0x21ee8. The return is 0 or 1. The word "read" comes from the name, and the facts do not show what the ioctl fills in.

- `OpenPipeMemReference` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d8b10
  **Inferred.** Opens a reference to a pipe memory region. It calls `__glOdysseyMIPS_SYNC` at 0xd9d8c68 and 0xd9d8ce8 around an ioctl with request 0x6f640003 at 0xd9d8cbc, and it stores 17 words to the absolute address 0x10000 along the way. It fills the arg2 record at offsets 0x18 and 0x1c. The 0x10000 writes match the address the vertex routines in this batch store to, so it may be a command port, which the facts do not confirm.

- `LookupKnownGroup` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d9564
  **Inferred.** Finds the known-group record for an id, with a fallback that creates one. It resolves the id with `LookupCSetId` at 0xd9d95bc. On a miss it calls an unnamed routine with size 0x54, zeroes the result with `bzero`, and adds the record with `AddKnownGroup` at 0xd9d9654, raising error 0x505 on one failure path. It then calls `LookupCoresidRange` with a3 = 0xf at 0xd9d967c, and when that returns zero it removes the record through `RemoveKnownGroup` at 0xd9d969c.

- `LookupCoresidRange` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d96c8
  **Inferred.** Checks a coresident address range for a known group and fills a 0x2c-byte record with the result. It stores fields from arg0, arg1 and the table at 0x16c9c into that record, and sends ioctl request 0x6f640004 at 0xd9d9800. It raises error 0x505 at 0xd9d977c when the allocation path fails. Two callees are unnamed in the facts (0xd9d9758 and 0xd9d9828), so the range logic is only partly described, and the table at 0x16c9c is left unidentified.

- `__glOdylc_TexCoord2d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9ded88
  **Inferred.** The display-list compile form of a two-dimensional texture coordinate call, by the name and the `__glSPDlistSpace` call at 0xd9dedec. It writes three words (one integer and two single-precision values) at [0x1030] plus 0 or 4, at offsets 0, 4 and 8, and it reads and writes the state words at 0x1028, 0x1030 and 0x1034. The name's "d" suggests double-precision operands, but the stores are 4-byte words, so that stays unconfirmed.

- `__glOdylc_TexCoord2i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9df1b0
  **Inferred.** The integer-coordinate form of the same display-list path, 260 bytes long, calling `__glSPDlistSpace` at 0xd9df214 with a2 from absolute 0x1028. It writes words to [0x1030] and [0x1028] and stores one word to absolute 0x1034 at 0xd9df2a0. The facts record only access widths, so whether the stored values are integers is not shown.

- `__glOdylc_TexCoord3i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9dfa24
  **Inferred.** The three-coordinate integer form of the display-list texture coordinate path, 272 bytes long. It reserves list space through `__glSPDlistSpace` at 0xd9dfa8c with a3 from absolute 0x1028, and it stores one word to absolute 0x1034 at 0xd9dfb20. The third coordinate comes from the name and is not seen in the facts.

- `DownsampleTextureThruHW` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9e335c
  **Inferred.** Picks a hardware texture format for a downsampled texture and validates the hardware state. It calls `__glOdysseyImageLogBase2` twice (0xd9e3534, 0xd9e3578), `ChooseSuitableBuzzTexModeBaseFmt` at 0xd9e3754, `GetImageFmtEnumFromBuzzTexFormat` at 0xd9e39b4, `__glOdysseyImageCalcFieldFormat` at 0xd9e39c8, and `__glOdysseyValidateHardware` at 0xd9e3d10. It returns the constant 0x10443. The name says the downsample happens in hardware, but the facts show format selection and validation with no pixel-move call, so the downsample step is not seen in this reading.

- `__glOdysseyTextureDeactivate` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9e4b04
  **Inferred.** Releases the performance-monitor references held by a texture binding. It calls `__glOdysseyClosePMObjReference` at 0xd9e4b40 and 0xd9e4ba0, once with the object from arg1 at offset 1276 and once through the pointer at a0+91164. A loop bounded by 0x10 writes fields at arg0 offsets 0x16418 and 0x1641c. The return is either a computed value or the sentinel 0xffffffffbaadcade. The name is the basis for the role, and the facts do not show the binding table itself.

- `__glOdysseyDriverMakeCurrent` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9ec21c
  **Inferred.** Makes a driver context current, going by the name. It sends ioctl request 0x6f640008 with a stack buffer at 0xd9ec2a0, calls an unnamed routine with the global address 0xdaefd10 at 0xd9ec2bc, and zeroes three state blocks in arg0 with `bzero`: 0x50 bytes at offset 93544, and two 0x14-byte blocks at offsets 93584 and 93604. What the context is bound to, and how the ioctl result is used, are not established by these facts.

- `RGBSendClippedBmFmTN` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9fc2b4
  **Inferred.** The name suggests an RGB bitmap send with clipping, and the facts show a pixel stream. It reads a flag byte at arg0 offset 0xb8, the word at [0x1010] + 0x588, and three floats at arg0 offsets 0x170, 0x174 and 0x178. It writes 20 integer words and 75 single-precision words to the absolute address 0x10000. The rendered facts list no calls and no return sentence, so the exit value and how the flag selects a path are not established.

- `__glOdysseyHyperpipeRect` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda0916c
  **Inferred.** Issues a hyperpipe rectangle request. It loads a word at arg0 offset 0x21ef0, sends ioctl request 0x6f640018 with a stack buffer at sp-40 (0xda091c4), and returns 0 or 1 depending on the ioctl result. The rectangle parameters are not visible in the facts, so the buffer contents stay open.

- `__glOdysseyHyperpipeStereo` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda091f0
  **Inferred.** A sibling of the hyperpipe rectangle call that sends the same ioctl request, 0x6f640018, with a stack buffer at sp-40 (0xda0924c). It also loads a word at arg0 offset 0x21ef0 and a word from arg3 at offset 0, and returns 0 or 1. The stereo meaning comes from the name. The facts do not show what the arg3 word holds, or whether the stereo case differs from the rectangle form in anything besides the name.

- `__glOdysseyQueryHyperpipePixelAverage` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda093b4
  **Inferred.** Queries the pixel-average value of the hyperpipe. It loads a word at arg0 offset 0x21ef0 (0xda093dc), sends ioctl request 0x6f640016 with a stack buffer at sp-40 (0xda0940c), and returns 0 or 1. The request number differs from the two hyperpipe calls above, which share 0x6f640018. The facts do not show whether the buffer is filled back, so "query" is read from the name.

- `__glOdyim_Vertex2d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7a80
  **Inferred.** Writes a two-dimensional vertex into the absolute address 0x10000. It stores one integer word at 0xdad7a94 and two single-precision values at 0xdad7a98 and 0xdad7aa0, and returns 0x10000 in v0. The name's "d" suggests double-precision arguments, but the stores are 4 bytes wide, so the argument precision and which values are written are not established.

- `__glOdyim_Vertex3d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7c80
  **Inferred.** Writes a three-dimensional vertex to the absolute address 0x10000, with one integer word at 0xdad7c9c and three single-precision values at 0xdad7ca0, 0xdad7ca4 and 0xdad7cac. It returns 0x10000 in v0. The layout matches `__glOdyim_Vertex2d` with one more float, which fits the names. The same caveat applies: the stores are 4 bytes wide, so the precision in the name is not confirmed.
