# Tier-1 routine readings, odsy batch 23

Role statements for targets 575 to 599 (0-based) of the tier-1 list, all in `usr/gfx/arch/IP35ODSY/libGLcore.so`. Each routine was rendered with `render_reading.py` and graded alone with `grade_readings.py` before its role was written. None were rejected. Every grade is inferred from the rendered facts.

- `ApplyMaterialF` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd986c8c
  **Inferred.** Reads float values from arg2 at offsets 0x0, 0x4, 0x8 and 0xc, loads fixed constants from absolute 0xdaedea0 through 0xdaedec8 (the last one a double load), and writes word and halfword fields into the record in arg0. It also stores words to absolute 0x10000 (21 store sites). A branch ladder at the top compares a1 with 0x1200, 0x1201, 0x1202, 0x1600, 0x1601, 0x1602 and 0x1603 and sends each to its own block. It makes no calls and returns the word at the global 0x1010. The facts do not say which material fields these are, so the field meanings stay open.
  Role (from name): applies a set of material values; the F suffix suggests float parameters.
  Reviewed: 2026-11-12 (sonnet)

- `ApplyMaterialI` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd98849c
  **Inferred.** The integer counterpart of `ApplyMaterialF`, 6768 bytes long, with the same return of the word at 0x1010 at 0xd989f04. It loads fixed floats from a different constant block, around 0xdaeded0, so it is not a copy of the F form's constants. Whether its fields are the integer versions of the same material fields comes from the name and was not checked against the field offsets.
  Reviewed: 2026-11-12 (sonnet)

- `AddConvolutionBorders` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9a6f0c
  **Inferred.** Makes 145 calls: `__glOdysseyProgramTexFilter` 7 times (first at 0xd9a714c), `LoadTextureFilter` 6 times (first at 0xd9a7200), `__glOdysseyImageMovePixelsTexture` 26 times (first at 0xd9a7298), `ceilf` 6 times and `floorf` 100 times. The floorf calls sit between the pixel-move calls, which suggests rounding of border coordinates, but the facts do not show which border edge each move covers or what the filter setup programs.
  Role (from name): sets up texture filtering and moves pixel blocks for the border of a convolution.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyImageMovePixelsCopy` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9c6490
  **Inferred.** Copies a block of pixels between image objects by building transfer parameters and opening PM references. It calls `OdysseyImageCalcXferCopyParams` at 0xd9c6754, opens a read reference through `__glOdysseyOpenPMObjReference` at 0xd9c69b8 and a write reference through `__glOdysseyOpenPMObjWriteReference` at 0xd9c6a2c, and sends ioctl request 0x6f64000d at 0xd9c71ec. It raises error 0x502 and error 0x505 on its failure paths. Whether the copy stays in graphics memory is inferred from the name, not shown by the facts.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyImageMovePixelsDMAtoGfx` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9c8ba0
  **Inferred.** Computes write-transfer parameters with `__glOdysseyImageCalcXferWriteParams` at 0xd9c8df4, derives DMA field offsets with `ImageCalcDmaFieldOffsets` at 0xd9c92f4 and the host pixel size with `ImageToDmaHostPixelSize` at 0xd9c973c, and opens a write reference with `__glOdysseyOpenPMObjWriteReference` at 0xd9c944c. It sends ioctl request 0x6f64000d at 0xd9c9c34 and raises error 0x501 at 0xd9c8e20 and error 0x505 at 0xd9c9498, among other 0x505 sites. It also calls `SendPixelsAsUserPIO` at 0xd9ca294, 0xd9ca764 and 0xd9caa60, so the facts do not show that every transfer goes by DMA. The call at 0xd9c9484 is to an unnamed routine and stays unidentified.
  Role (from name): moves pixel data toward graphics memory by DMA; the direction comes from the name and the DMA-named callees.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Normal3b` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d6a50
  **Inferred.** Looks like the display-list compile form of a normal-vector call. It reads three state words at absolute 0x1028, 0x1030 and 0x1034, calls `__glSPDlistSpace` at 0xd9d6ab8 with a3 taken from 0x1028, and writes the state words back. Which branch reaches that call depends on the bits of 0x1030 and the value of 0x1034. The byte operand that the name suggests is not visible in the facts, so the conversion stays open.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Normal3s` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d72f4
  **Inferred.** Has the same shape as `__glOdylc_Normal3b`, 272 bytes long, with the same three state words at 0x1028, 0x1030 and 0x1034. It calls `__glSPDlistSpace` at 0xd9d735c with a3 from 0x1028. The name points to a short-integer normal, but every state access here is a 4-byte word, so any operand-width difference from the Normal3b form is a claim from the name only.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyCreatePMObj` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d83c8
  **Inferred.** Sends ioctl request 0x6f640001 at 0xd9d8458 with a stack buffer at sp-72, passing a0 and a3 through from its own arguments. The ioctl result is tested against 0 (0xd9d8464) and against -1 (0xd9d8474, 0xd9d8480). Only when the result is nonzero and those tests pass does it walk the set at [arg0 + 93332] with `InitCSetCursor` and `NextCSetElem`, calling `LookupKnownGroup` (a2 = 0) at 0xd9d84d4 on each element and `RemoveKnownGroup` at 0xd9d84f4 only when that lookup returns nonzero. The return is 0 or 1. What the PM object is, and how the group set uses it, is not established by these facts.
  Role (from name): creates a performance-monitor object for a group.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyDestroyPMObjGroup` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d8598
  **Inferred.** Walks the set at [arg0 + 93332] with `InitCSetCursor` and `NextCSetElem`, calling `LookupKnownGroup` (a1 = [arg1], a2 = 0) at 0xd9d8610 on each element and `RemoveKnownGroup` at 0xd9d8630 only when that lookup returns nonzero. It then sends ioctl request 0x6f640002 at 0xd9d8678 on every path. When the ioctl returns zero it stores -1 at arg1 offset 0 (0xd9d8694); a nonzero result sets the return value to 0. It returns 0 or 1.
  Role (from name): tears down a group of performance-monitor objects.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyReadFromPMObj` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d89d0
  **Inferred.** Checks its arguments with `CheckMMXfrArgs` at 0xd9d8a88 (a0 = sp-80). When that returns zero it returns 0 without an ioctl; when it returns nonzero it sends ioctl request 0x6f640006 at 0xd9d8ab0 with the same buffer. A zero ioctl result then tests bit 0x2 of a value the facts do not source and stores a word at arg0 offset 0x21ee8 on each side of that test: zero at 0xd9d8ae8 when the bit is set, a register value at 0xd9d8af8 when it is clear. A nonzero ioctl result skips both stores. The return is 0 or 1. The facts do not show what the ioctl fills in.
  Role (from name): reads results back from a performance-monitor object.
  Reviewed: 2026-11-12 (sonnet)

- `OpenPipeMemReference` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d8b10
  **Inferred.** Stores 17 words to the absolute address 0x10000 (0xd9d8b80 to 0xd9d8be8) and one word at arg0 offset 0x9830, only when a test at 0xd9d8b68, built from [arg2 + 28], [arg2 + 24] + a3 and one more word, is nonzero. It then stores a3 and a stack argument at arg2 offsets 0x18 and 0x1c (0xd9d8bec, 0xd9d8bfc). It calls `__glOdysseyMIPS_SYNC` at 0xd9d8c68 with a0 = -1 and a1 = 8. It sends ioctl request 0x6f640003 at 0xd9d8cbc unless halfword tests of [arg2 + 36] at 0xd9d8c80 and 0xd9d8c8c send it to the return, and calls `__glOdysseyMIPS_SYNC` again at 0xd9d8ce8 only when the ioctl result is nonzero. The return is 0 or 1. The 0x10000 writes match the address the vertex routines in this batch store to, so it may be a command port, which the facts do not confirm.
  Role (from name): opens a reference to a pipe memory region.
  Reviewed: 2026-11-12 (sonnet)

- `LookupKnownGroup` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d9564
  **Inferred.** Returns 0 at once when a1 is -3 or -4. Otherwise it resolves a1 with `LookupCSetId` at 0xd9d95bc (a0 + 93304) and returns that result when it is nonzero. On a zero result it returns 0 when a2 is zero. When a2 is nonzero it calls an unnamed routine with size 0x54 at 0xd9d95f4; if that returns zero it raises error 0x505 at 0xd9d9610 and returns 0. Otherwise it zeroes the result with `bzero`, adds the record with `AddKnownGroup` at 0xd9d9654, calls `LookupCoresidRange` with a3 = 0xf at 0xd9d967c and, when that returns zero, removes the record through `RemoveKnownGroup` at 0xd9d969c and returns 0.
  Role (from name): finds the known-group record for an id, creating one when a2 is nonzero.
  Reviewed: 2026-11-12 (sonnet)

- `LookupCoresidRange` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d96c8
  **Inferred.** Walks a chain of records starting at [arg1 + (arg2 << 2) + 12] and returns the first one whose field at +12 is at least a3 (signed, 0xd9d9714). When none qualifies it returns 0 if a stack argument loaded at 0xd9d9734 is zero. Otherwise it calls an unnamed routine with size 0x2c at 0xd9d9758; if that returns zero it raises error 0x505 at 0xd9d977c and returns 0. On success it zeroes the result with `bzero`, stores fields built from arg1, arg2, a3 and constants into it at offsets 0x0 to 0x1c, and sends ioctl request 0x6f640004 at 0xd9d9800. A zero ioctl result continues to further stores, including one to the table at 0x16c9c and loads of arg0 offsets 0x16c94 and 0x16c98. A nonzero result calls a second unnamed routine at 0xd9d9828 only when the first routine's result is nonzero, then returns 0. The two unnamed callees and the table at 0x16c9c are left unidentified.
  Role (from name): checks a coresident address range for a known group.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_TexCoord2d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9ded88
  **Inferred.** The display-list compile form of a two-dimensional texture coordinate call, by the name and the `__glSPDlistSpace` call at 0xd9dedec. It writes three words (one integer and two single-precision values) at [0x1030] plus 0 or 4, at offsets 0, 4 and 8, and it reads and writes the state words at 0x1028, 0x1030 and 0x1034. The name's "d" suggests double-precision operands, but the stores are 4-byte words, so that stays unconfirmed.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_TexCoord2i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9df1b0
  **Inferred.** 260 bytes long. It calls `__glSPDlistSpace` at 0xd9df214 with a2 = the word at absolute 0x1028. It reads the state words at 0x1028, 0x1030 and 0x1034, stores back to the state words at 0x1030 and 0x1028, stores one word to 0x1034 at 0xd9df2a0, and writes three words at offsets 0, 4 and 8 of a record whose base the facts do not show (0xd9df270, 0xd9df280, 0xd9df28c). The facts record only access widths, so whether the stored values are integers is not shown.
  Role (from name): the integer-coordinate form of the display-list texture coordinate path.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_TexCoord3i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9dfa24
  **Inferred.** 272 bytes long. It calls `__glSPDlistSpace` at 0xd9dfa8c with a3 = the word at absolute 0x1028. It stores back to the state words at 0x1030 and 0x1028, stores one word to 0x1034 at 0xd9dfb20, and writes four words at offsets 0 to 0xc of a record whose base the facts do not show; the last three are the entry values of a0, a1 and a2 (0xd9dfaf8, 0xd9dfb04, 0xd9dfb0c).
  Role (from name): the three-coordinate integer form of the display-list texture coordinate path.
  Reviewed: 2026-11-12 (sonnet)

- `DownsampleTextureThruHW` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9e335c
  **Inferred.** Picks a hardware texture format for a downsampled texture and validates the hardware state. It calls `__glOdysseyImageLogBase2` twice (0xd9e3534, 0xd9e3578), `ChooseSuitableBuzzTexModeBaseFmt` at 0xd9e3754, `GetImageFmtEnumFromBuzzTexFormat` at 0xd9e39b4, `__glOdysseyImageCalcFieldFormat` at 0xd9e39c8, and `__glOdysseyValidateHardware` at 0xd9e3d10. It returns the constant 0x10443. The name says the downsample happens in hardware, but the facts show format selection and validation with no pixel-move call, so the downsample step is not seen in this reading.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyTextureDeactivate` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9e4b04
  **Inferred.** Calls `__glOdysseyClosePMObjReference` at 0xd9e4b40 with the object from [arg1 + 1276] and, only when the word at [arg0 + 91164] is nonzero, again at 0xd9e4ba0 with the object at [[arg0 + 91164] + 1276]. It stores zero at arg0 offset 0x16418 (0xd9e4b58) and, on the nonzero path, zero at arg0 offset 0x1641c (0xd9e4be4). Two loops of 0x10 iterations store the markers 0xdeadbeef and 0xbaadcade through pointers the facts do not resolve; the second loop runs only on the nonzero path. The return is either a value the facts do not follow or the sentinel 0xffffffffbaadcade. The facts do not show the binding table itself.
  Role (from name): releases the performance-monitor references held by a texture binding.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyDriverMakeCurrent` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9ec21c
  **Inferred.** Sends ioctl request 0x6f640008 at 0xd9ec2a0 with a stack buffer at sp-84. When the result is negative it calls an unnamed routine with a1 = the global address 0xdaefd10 at 0xd9ec2bc and returns 0. Otherwise it stores words at arg0 offsets 0x16d40 to 0x16d50 and switches on a value the facts do not source. On 0 it zeroes 0x50 bytes at arg0 + 93544 with `bzero` (0xd9ec35c). On 1 it stores words at arg0 offsets 0x16d68 to 0x16d88 and zeroes two 0x14-byte blocks at arg0 + 93584 and arg0 + 93604 (0xd9ec3f8, 0xd9ec418). On 2 it stores words at offsets 0x16d68 to 0x16db0 with no bzero call. All of these paths then store at 0x16d54 to 0x16d64. What the context is bound to, and how the ioctl result is used, are not established by these facts.
  Role (from name): makes a driver context current.
  Reviewed: 2026-11-12 (sonnet)

- `RGBSendClippedBmFmTN` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9fc2b4
  **Inferred.** Reads a flag byte at arg0 offset 0xb8 and the word at [0x1010] + 0x588, which it compares with 0x81fa at 0xd9fc2fc to choose between two straight-line blocks of stores. Across both blocks together it stores 20 integer words (sw) and 75 float-register words (swc1) to the absolute address 0x10000, loading floats from arg0 offsets including 0x170, 0x174 and 0x178. It makes no calls and returns the word at the global 0x1010 (0xd9fc598). What the flag byte controls beyond a register value is not shown.
  Role (from name): an RGB bitmap send with clipping.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyHyperpipeRect` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda0916c
  **Inferred.** Loads a word at arg0 offset 0x21ef0, sends ioctl request 0x6f640018 with a stack buffer at sp-40 (0xda091c4), and returns 0 or 1 depending on the ioctl result. The rectangle parameters are not visible in the facts, so the buffer contents stay open.
  Role (from name): issues a hyperpipe rectangle request.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyHyperpipeStereo` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda091f0
  **Inferred.** Sends the same ioctl request as the hyperpipe rectangle call, 0x6f640018, with a stack buffer at sp-40 (0xda0924c). It also loads a word at arg0 offset 0x21ef0 and a word from arg3 at offset 0, and returns 0 or 1. The facts do not show what the arg3 word holds, or whether this routine differs from the rectangle form in anything besides the name.
  Role (from name): a hyperpipe stereo request.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyQueryHyperpipePixelAverage` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda093b4
  **Inferred.** Loads a word at arg0 offset 0x21ef0 (0xda093dc), sends ioctl request 0x6f640016 with a stack buffer at sp-40 (0xda0940c), and returns 0 or 1. The request number differs from the two hyperpipe calls above, which share 0x6f640018. The facts do not show whether the buffer is filled back.
  Role (from name): queries the pixel-average value of the hyperpipe.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Vertex2d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7a80
  **Inferred.** Stores one word at 0xdad7a94 and two words from float registers f12 and f14 (swc1) at 0xdad7a98 and 0xdad7aa0, all at absolute 0x10000, and returns 0x10000 in v0. The name's "d" suggests double-precision arguments, but the stores are 4 bytes wide, so the argument precision and which values are written are not established.
  Role (from name): writes a two-dimensional vertex.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Vertex3d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7c80
  **Inferred.** Stores one word at 0xdad7c9c and three float-register words (swc1) at 0xdad7ca0, 0xdad7ca4 and 0xdad7cac, all at absolute 0x10000, and returns 0x10000 in v0. The layout matches `__glOdyim_Vertex2d` with one more store, which fits the names. The same caveat applies: the stores are 4 bytes wide, so the precision in the name is not confirmed.
  Role (from name): writes a three-dimensional vertex.
  Reviewed: 2026-11-12 (sonnet)
