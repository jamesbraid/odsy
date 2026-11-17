# Readings: `usr/gfx/arch/IP35ODSY/libGLcore.so`

One entry per routine, filed here from the reading batches by binary.

- `ApplyParameterF` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd95e7cc.
  Role (from name): it pushes a float parameter to the hardware program state. The routine calls `__glOdysseySetProgram` through the pointer at 0xd9dc0b8, at 0xd95e9fc, with a0 loaded from 0x1010, a1 loaded from offset 42664 of that, a2 = 0x33 and a3 = 0x8000. The facts show no constant 0x39. The meaning of 0x33 and 0x8000 is not identified here.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `ApplyParameterF` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd95e7cc
  **Inferred.** Compares its second argument against 0x1200, 0x1201, 0x1202, 0x1600, 0x1601, 0x1602 and 0x1603 with the `beq` chain at 0xd95e800 to 0xd95e848. Contains one call, `__glOdysseySetProgram` at 0xd95e9fc, with a0=[0x1010], a1=[[0x1010]+42664], a2=0x33 and a3=0x8000. It returns 0x0 at 0xd95ec94 or a value the facts leave unresolved. Role (from name): applies a floating-point parameter.
  Reviewed: 2026-11-12

- `ApplyParameterI` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd95eef0.
  Role (from name): an integer parameter variant of its float sibling. The routine is 12000 bytes. It calls `__glOdysseySetProgram` through the pointer at 0xd9dc0b8, at 0xd95f0f4, with a0 loaded from 0x1010, a1 loaded from offset 42664 of that, a2 = 0x33 and a3 loaded from 0x1010. The float sibling passes 0x8000 as a3, so the two calls differ in that slot. Most of the body is not summarized by these facts, so its parameter handling is partly open.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `LoadAndSendStippledQuads` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd961dd0.
  Role (from name): a stipple load and quad submission, probably with size rounding. The routine has four `ceil` call sites, at 0xd961e50, 0xd961f08, 0xd961fb8 and 0xd9621a4. It calls `memset` at 0xd962258 on a stack buffer at sp-68 with value 0 and length 4, only when the branch at 0xd96223c falls through (s8 nonzero), inside a loop whose back edge is the branch at 0xd962324. A further call with no resolved callee at 0xd9625e4 takes a0 plus 32768 as its first argument. The buffer layout is not established.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `DrawBitmapUsingPolyStipple` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd96284c.
  Role (from name): a bitmap draw path using polygon stipple. The routine is large, 16292 bytes. It calls `__glOdysseyIoctl` through the pointer at 0xd9eb890 at 0xd9629e8 with a1 = 0x6f64000d. It calls `__glOdysseyUpdateRasterPos` at 0xd962a8c only when the byte at offset 42812 of its first argument is nonzero, since a zero value branches past it at 0xd962a7c. It then calls `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` at 0xd962a9c. Calls with no resolved callee at 0xd962b64, 0xd962b84 and 0xd962b9c, the last two with first arguments 0xba0 and 0x1701, leave the stipple submission only partly clear.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color3b` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9637b0.
  Role (from name): the byte variant of a display-list color entry point that reserves list space. The routine is 292 bytes. It calls `__glSPDlistSpace` at 0xd96382c with a null first argument, only when the branch at 0xd963818 falls through, which needs the value loaded from 0x1028 to be below a bound that is 4 or 5. The rendered facts do not show how the color arguments are converted, so this role is tentative.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color3ui` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd96458c.
  Role (from name): the unsigned-int variant of a display-list color entry point that reserves list space. It calls `__glSPDlistSpace` at 0xd964608 with a null first argument, only when the branch at 0xd9645f4 falls through, which needs the value loaded from 0x1028 to be below a bound that is 4 or 5. The rendered facts do not show how the color arguments are converted, so this role is tentative.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd965168.
  Role (from name): the four-component signed-int variant of a display-list color entry point that reserves list space. It calls `__glSPDlistSpace` at 0xd9651e8 with a null first argument, only when the branch at 0xd9651d4 falls through, which needs the value loaded from 0x1028 to be below a bound that is 5 or 6. The rendered facts do not show how the color arguments are converted, so this role is tentative.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ub` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd965630.
  Role (from name): the four-component unsigned-byte variant of a display-list color entry point that reserves list space. It calls `__glSPDlistSpace` at 0xd9656b0 with a null first argument, only when the branch at 0xd96569c falls through, which needs the value loaded from 0x1028 to be below a bound that is 5 or 6. The rendered facts do not show how the color arguments are converted, so this role is tentative.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ui` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd965894.
  Role (from name): the four-component unsigned-int variant of a display-list color entry point that reserves list space. It calls `__glSPDlistSpace` at 0xd965914 with a null first argument, only when the branch at 0xd965900 falls through, which needs the value loaded from 0x1028 to be below a bound that is 5 or 6. The rendered facts do not show how the color arguments are converted, so this role is tentative.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_Clear` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd966bb0.
  Role (from name): the immediate-mode clear entry. The routine calls `__glSetError` with 0x502 at 0xd966c54 on some paths, and with 0x501 at 0xd966c7c only when the mask in its first argument has bits set outside 0x4700. Those codes look like the GL invalid-operation and invalid-value enums. On some paths it calls `__glOdysseyIoctl` through the pointer at 0xd9eb890 at 0xd966e34 with a1 = 0x6f64000d, and it calls `__glOdysseyWindowToNormalizedEyeZ` at 0xd967044, which by name converts a window coordinate. Its clear logic itself is partly open because some calls are unresolved.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdysseyClear` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd967240.
  Role (from name): the top-level clear that validates state before submitting a hardware request. The routine calls `__glOdysseyValidateHardware` at 0xd9677d8 only when the word at offset 92512 of its first argument is nonzero. On some paths it then issues `__glOdysseyIoctl` through 0xd9eb890 at 0xd96788c, and calls `__glOdysseyValidateHardware` again at 0xd967918, so the ioctl lies between the two validate calls, not after them. The clear-mask handling is not in the rendered facts, so that part stays open.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `ApplyViewport` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd968540.
  Role (from name): the viewport update that follows a window-size lookup. The routine calls `__glOdysseyFindWindowSize` at 0xd968568 and `__glUpdateViewport` at 0xd96857c, then calls `__glOdysseyImageDescribeWindow` with first arguments at offsets 73112 and 73172 from its context argument at 0xd968638 and 0xd968658. Two more describe calls, at offset 73332 at 0xd968690 and offset 73272 at 0xd9686b0, run only when both branches at 0xd96866c and 0xd96867c fall through, that is when the bytes at offsets 3224 and 73973 are nonzero. The meaning of those offsets is not established here.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdysseyInitDefaultValues` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd96c9a0.
  Role (from name): default-state setup for a new context. The routine calls `bzero` at 0xd96cce0 on offset 35816 from its first argument with a1 = 0x40. It calls `__glOdyim_DrawBuffer` with 0x405 at 0xd96d098 only when the byte at offset 3222 is nonzero (the branch at 0xd96d088 falls through), and with 0x404 at 0xd96d0b0. It calls `__glOdysseyImageInit` at 0xd96d178. It then calls `__glOdyim_Disable` many times, the first two with 0xb10 at 0xd96d198 and 0xb42 at 0xd96d1ac, and calls many other state setters such as `__glOdyim_CullFace`, `__glOdyim_BlendFunc` and `__glOdysseyInitLighting`. The full set of defaults is not listed here.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `ApplyMaterialF` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd986c8c
  **Inferred.** Reads float values from arg2 at offsets 0x0, 0x4, 0x8 and 0xc, loads fixed constants from absolute 0xdaedea0 through 0xdaedec8 (the last one a double load), and writes word and halfword fields into the record in arg0. It also stores words to absolute 0x10000 (21 store sites). A branch ladder at the top compares a1 with 0x1200, 0x1201, 0x1202, 0x1600, 0x1601, 0x1602 and 0x1603 and sends each to its own block. It makes no calls and returns the word at the global 0x1010. The facts do not say which material fields these are, so the field meanings stay open.
  Role (from name): applies a set of material values; the F suffix suggests float parameters.
  Reviewed: 2026-11-12

- `ApplyMaterialI` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd98849c
  **Inferred.** The integer counterpart of `ApplyMaterialF`, 6768 bytes long, with the same return of the word at 0x1010 at 0xd989f04. It loads fixed floats from a different constant block, around 0xdaeded0, so it is not a copy of the F form's constants. Whether its fields are the integer versions of the same material fields comes from the name and was not checked against the field offsets.
  Reviewed: 2026-11-12

- `AddConvolutionBorders` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9a6f0c
  **Inferred.** Makes 145 calls: `__glOdysseyProgramTexFilter` 7 times (first at 0xd9a714c), `LoadTextureFilter` 6 times (first at 0xd9a7200), `__glOdysseyImageMovePixelsTexture` 26 times (first at 0xd9a7298), `ceilf` 6 times and `floorf` 100 times. The floorf calls sit between the pixel-move calls, which suggests rounding of border coordinates, but the facts do not show which border edge each move covers or what the filter setup programs.
  Role (from name): sets up texture filtering and moves pixel blocks for the border of a convolution.
  Reviewed: 2026-11-12

- `__glOdysseyImageMovePixelsCopy` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9c6490
  **Inferred.** Copies a block of pixels between image objects by building transfer parameters and opening PM references. It calls `OdysseyImageCalcXferCopyParams` at 0xd9c6754, opens a read reference through `__glOdysseyOpenPMObjReference` at 0xd9c69b8 and a write reference through `__glOdysseyOpenPMObjWriteReference` at 0xd9c6a2c, and sends ioctl request 0x6f64000d at 0xd9c71ec. It raises error 0x502 and error 0x505 on its failure paths. Whether the copy stays in graphics memory is inferred from the name, not shown by the facts.
  Reviewed: 2026-11-12

- `__glOdysseyImageMovePixelsDMAtoGfx` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9c8ba0
  **Inferred.** Computes write-transfer parameters with `__glOdysseyImageCalcXferWriteParams` at 0xd9c8df4, derives DMA field offsets with `ImageCalcDmaFieldOffsets` at 0xd9c92f4 and the host pixel size with `ImageToDmaHostPixelSize` at 0xd9c973c, and opens a write reference with `__glOdysseyOpenPMObjWriteReference` at 0xd9c944c. It sends ioctl request 0x6f64000d at 0xd9c9c34 and raises error 0x501 at 0xd9c8e20 and error 0x505 at 0xd9c9498, among other 0x505 sites. It also calls `SendPixelsAsUserPIO` at 0xd9ca294, 0xd9ca764 and 0xd9caa60, so the facts do not show that every transfer goes by DMA. The call at 0xd9c9484 is to an unnamed routine and stays unidentified.
  Role (from name): moves pixel data toward graphics memory by DMA; the direction comes from the name and the DMA-named callees.
  Reviewed: 2026-11-12

- `__glOdylc_Normal3b` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d6a50
  **Inferred.** Looks like the display-list compile form of a normal-vector call. It reads three state words at absolute 0x1028, 0x1030 and 0x1034, calls `__glSPDlistSpace` at 0xd9d6ab8 with a3 taken from 0x1028, and writes the state words back. Which branch reaches that call depends on the bits of 0x1030 and the value of 0x1034. The byte operand that the name suggests is not visible in the facts, so the conversion stays open.
  Reviewed: 2026-11-12

- `__glOdylc_Normal3s` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d72f4
  **Inferred.** Has the same shape as `__glOdylc_Normal3b`, 272 bytes long, with the same three state words at 0x1028, 0x1030 and 0x1034. It calls `__glSPDlistSpace` at 0xd9d735c with a3 from 0x1028. The name points to a short-integer normal, but every state access here is a 4-byte word, so any operand-width difference from the Normal3b form is a claim from the name only.
  Reviewed: 2026-11-12

- `__glOdylc_Normal3s` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d72f4
  **Inferred.** Calls `__glSPDlistSpace` at 0xd9d735c with a0=0x0, a1 and a2 from entry and a3=[0x1028], only when the signed comparison at 0xd9d7348 falls through ([0x1028] below 0x4 or 0x5); when that branch is taken the call is skipped. The routine also loads and stores around the call (stores at 0xd9d73b8 to 0xd9d73f0). It returns the `__glSPDlistSpace` result or a value the facts leave unresolved at 0xd9d73fc. Role (from name): records a three-component short normal in a display list.
  Reviewed: 2026-11-12

- `__glOdysseyCreatePMObj` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d83c8
  **Inferred.** Sends ioctl request 0x6f640001 at 0xd9d8458 with a stack buffer at sp-72, passing a0 and a3 through from its own arguments. The ioctl result is tested against 0 (0xd9d8464) and against -1 (0xd9d8474, 0xd9d8480). Only when the result is nonzero and those tests pass does it walk the set at [arg0 + 93332] with `InitCSetCursor` and `NextCSetElem`, calling `LookupKnownGroup` (a2 = 0) at 0xd9d84d4 on each element and `RemoveKnownGroup` at 0xd9d84f4 only when that lookup returns nonzero. The return is 0 or 1. What the PM object is, and how the group set uses it, is not established by these facts.
  Role (from name): creates a performance-monitor object for a group.
  Reviewed: 2026-11-12

- `__glOdysseyDestroyPMObjGroup` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d8598
  **Inferred.** Walks the set at [arg0 + 93332] with `InitCSetCursor` and `NextCSetElem`, calling `LookupKnownGroup` (a1 = [arg1], a2 = 0) at 0xd9d8610 on each element and `RemoveKnownGroup` at 0xd9d8630 only when that lookup returns nonzero. It then sends ioctl request 0x6f640002 at 0xd9d8678 on every path. When the ioctl returns zero it stores -1 at arg1 offset 0 (0xd9d8694); a nonzero result sets the return value to 0. It returns 0 or 1.
  Role (from name): tears down a group of performance-monitor objects.
  Reviewed: 2026-11-12

- `__glOdysseyReadFromPMObj` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d89d0
  **Inferred.** Checks its arguments with `CheckMMXfrArgs` at 0xd9d8a88 (a0 = sp-80). When that returns zero it returns 0 without an ioctl; when it returns nonzero it sends ioctl request 0x6f640006 at 0xd9d8ab0 with the same buffer. A zero ioctl result then tests bit 0x2 of a value the facts do not source and stores a word at arg0 offset 0x21ee8 on each side of that test: zero at 0xd9d8ae8 when the bit is set, a register value at 0xd9d8af8 when it is clear. A nonzero ioctl result skips both stores. The return is 0 or 1. The facts do not show what the ioctl fills in.
  Role (from name): reads results back from a performance-monitor object.
  Reviewed: 2026-11-12

- `OpenPipeMemReference` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d8b10
  **Inferred.** Stores 17 words to the absolute address 0x10000 (0xd9d8b80 to 0xd9d8be8) and one word at arg0 offset 0x9830, only when a test at 0xd9d8b68, built from [arg2 + 28], [arg2 + 24] + a3 and one more word, is nonzero. It then stores a3 and a stack argument at arg2 offsets 0x18 and 0x1c (0xd9d8bec, 0xd9d8bfc). It calls `__glOdysseyMIPS_SYNC` at 0xd9d8c68 with a0 = -1 and a1 = 8. It sends ioctl request 0x6f640003 at 0xd9d8cbc unless halfword tests of [arg2 + 36] at 0xd9d8c80 and 0xd9d8c8c send it to the return, and calls `__glOdysseyMIPS_SYNC` again at 0xd9d8ce8 only when the ioctl result is nonzero. The return is 0 or 1. The 0x10000 writes match the address the vertex routines in this batch store to, so it may be a command port, which the facts do not confirm.
  Role (from name): opens a reference to a pipe memory region.
  Reviewed: 2026-11-12

- `LookupKnownGroup` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d9564
  **Inferred.** Returns 0 at once when a1 is -3 or -4. Otherwise it resolves a1 with `LookupCSetId` at 0xd9d95bc (a0 + 93304) and returns that result when it is nonzero. On a zero result it returns 0 when a2 is zero. When a2 is nonzero it calls an unnamed routine with size 0x54 at 0xd9d95f4; if that returns zero it raises error 0x505 at 0xd9d9610 and returns 0. Otherwise it zeroes the result with `bzero`, adds the record with `AddKnownGroup` at 0xd9d9654, calls `LookupCoresidRange` with a3 = 0xf at 0xd9d967c and, when that returns zero, removes the record through `RemoveKnownGroup` at 0xd9d969c and returns 0.
  Role (from name): finds the known-group record for an id, creating one when a2 is nonzero.
  Reviewed: 2026-11-12

- `LookupCoresidRange` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d96c8
  **Inferred.** Walks a chain of records starting at [arg1 + (arg2 << 2) + 12] and returns the first one whose field at +12 is at least a3 (signed, 0xd9d9714). When none qualifies it returns 0 if a stack argument loaded at 0xd9d9734 is zero. Otherwise it calls an unnamed routine with size 0x2c at 0xd9d9758; if that returns zero it raises error 0x505 at 0xd9d977c and returns 0. On success it zeroes the result with `bzero`, stores fields built from arg1, arg2, a3 and constants into it at offsets 0x0 to 0x1c, and sends ioctl request 0x6f640004 at 0xd9d9800. A zero ioctl result continues to further stores, including one to the table at 0x16c9c and loads of arg0 offsets 0x16c94 and 0x16c98. A nonzero result calls a second unnamed routine at 0xd9d9828 only when the first routine's result is nonzero, then returns 0. The two unnamed callees and the table at 0x16c9c are left unidentified.
  Role (from name): checks a coresident address range for a known group.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord2d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9ded88
  **Inferred.** The display-list compile form of a two-dimensional texture coordinate call, by the name and the `__glSPDlistSpace` call at 0xd9dedec. It writes three words (one integer and two single-precision values) at [0x1030] plus 0 or 4, at offsets 0, 4 and 8, and it reads and writes the state words at 0x1028, 0x1030 and 0x1034. The name's "d" suggests double-precision operands, but the stores are 4-byte words, so that stays unconfirmed.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord2i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9df1b0
  **Inferred.** 260 bytes long. It calls `__glSPDlistSpace` at 0xd9df214 with a2 = the word at absolute 0x1028. It reads the state words at 0x1028, 0x1030 and 0x1034, stores back to the state words at 0x1030 and 0x1028, stores one word to 0x1034 at 0xd9df2a0, and writes three words at offsets 0, 4 and 8 of a record whose base the facts do not show (0xd9df270, 0xd9df280, 0xd9df28c). The facts record only access widths, so whether the stored values are integers is not shown.
  Role (from name): the integer-coordinate form of the display-list texture coordinate path.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord3i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9dfa24
  **Inferred.** 272 bytes long. It calls `__glSPDlistSpace` at 0xd9dfa8c with a3 = the word at absolute 0x1028. It stores back to the state words at 0x1030 and 0x1028, stores one word to 0x1034 at 0xd9dfb20, and writes four words at offsets 0 to 0xc of a record whose base the facts do not show; the last three are the entry values of a0, a1 and a2 (0xd9dfaf8, 0xd9dfb04, 0xd9dfb0c).
  Role (from name): the three-coordinate integer form of the display-list texture coordinate path.
  Reviewed: 2026-11-12

- `DownsampleTextureThruHW` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9e335c
  **Inferred.** Picks a hardware texture format for a downsampled texture and validates the hardware state. It calls `__glOdysseyImageLogBase2` twice (0xd9e3534, 0xd9e3578), `ChooseSuitableBuzzTexModeBaseFmt` at 0xd9e3754, `GetImageFmtEnumFromBuzzTexFormat` at 0xd9e39b4, `__glOdysseyImageCalcFieldFormat` at 0xd9e39c8, and `__glOdysseyValidateHardware` at 0xd9e3d10. It returns the constant 0x10443. The name says the downsample happens in hardware, but the facts show format selection and validation with no pixel-move call, so the downsample step is not seen in this reading.
  Reviewed: 2026-11-12

- `__glOdysseyTextureDeactivate` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9e4b04
  **Inferred.** Calls `__glOdysseyClosePMObjReference` at 0xd9e4b40 with the object from [arg1 + 1276] and, only when the word at [arg0 + 91164] is nonzero, again at 0xd9e4ba0 with the object at [[arg0 + 91164] + 1276]. It stores zero at arg0 offset 0x16418 (0xd9e4b58) and, on the nonzero path, zero at arg0 offset 0x1641c (0xd9e4be4). Two loops of 0x10 iterations store the markers 0xdeadbeef and 0xbaadcade through pointers the facts do not resolve; the second loop runs only on the nonzero path. The return is either a value the facts do not follow or the sentinel 0xffffffffbaadcade. The facts do not show the binding table itself.
  Role (from name): releases the performance-monitor references held by a texture binding.
  Reviewed: 2026-11-12

- `__glOdysseyDriverMakeCurrent` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9ec21c
  **Inferred.** Sends ioctl request 0x6f640008 at 0xd9ec2a0 with a stack buffer at sp-84. When the result is negative it calls an unnamed routine with a1 = the global address 0xdaefd10 at 0xd9ec2bc and returns 0. Otherwise it stores words at arg0 offsets 0x16d40 to 0x16d50 and switches on a value the facts do not source. On 0 it zeroes 0x50 bytes at arg0 + 93544 with `bzero` (0xd9ec35c). On 1 it stores words at arg0 offsets 0x16d68 to 0x16d88 and zeroes two 0x14-byte blocks at arg0 + 93584 and arg0 + 93604 (0xd9ec3f8, 0xd9ec418). On 2 it stores words at offsets 0x16d68 to 0x16db0 with no bzero call. All of these paths then store at 0x16d54 to 0x16d64. What the context is bound to, and how the ioctl result is used, are not established by these facts.
  Role (from name): makes a driver context current.
  Reviewed: 2026-11-12

- `__glOdysseyWindowToNormalizedEyeZ` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9f8060 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xd9f8060-0xd9f8148 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0xd9f8070 loads 4 bytes from abs 0x1010.
  The `ldc1` at 0xd9f8098 loads 8 bytes from [0x1010] +0x165c8.
  The `ldc1` at 0xd9f809c loads 8 bytes from [0x1010] +0x165d0.
  The `jalr` at 0xd9f8080 calls __glOdysseyWindowToEyeZ [0xd9f7e0c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f8114 calls isnan with a0=?, a1=?, a2=?, a3=?.
  The `bc1fl` branch at 0xd9f80d0 targets 0xd9f80e8, is taken when not (f12 < f18 (c.lt.d at 0xd9f80c8)), and falls through when f12 < f18 (c.lt.d at 0xd9f80c8); its branch-likely delay slot `mtc1 at,$f5` at 0xd9f80d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9f80dc targets 0xd9f8138 and is always taken.
  The `bc1f` branch at 0xd9f80f8 targets 0xd9f810c, is taken when not (f4 < f12 (c.lt.d at 0xd9f80f0)), and falls through when f4 < f12 (c.lt.d at 0xd9f80f0).
  The `beq` branch at 0xd9f8104 targets 0xd9f8138 and is always taken.
  The `beq` branch at 0xd9f8120 targets 0xd9f8134, is taken when v0(=ret(isnan)) == 0, and falls through when v0(=ret(isnan)) != 0.
  The return at 0xd9f8140 has v0 = one of [0x1010]+91592, ret(isnan).
  The instructions from 0xd9f80e4 to 0xd9f80e4 are not reached by any path from the entry, and their branches are not listed.

- `__glOdysseySoftClipBeginTriangles` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9f9fc8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xd9f9fc8-0xd9f9ffc (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xd9f9fec stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9f9ff0 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9f9ff8 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The return at 0xd9f9ff4 has v0 = ?.

- `RGBSendClippedBmFmTN` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9fc2b4
  **Inferred.** Reads a flag byte at arg0 offset 0xb8 and the word at [0x1010] + 0x588, which it compares with 0x81fa at 0xd9fc2fc to choose between two straight-line blocks of stores. Across both blocks together it stores 20 integer words (sw) and 75 float-register words (swc1) to the absolute address 0x10000, loading floats from arg0 offsets including 0x170, 0x174 and 0x178. It makes no calls and returns the word at the global 0x1010 (0xd9fc598). What the flag byte controls beyond a register value is not shown.
  Role (from name): an RGB bitmap send with clipping.
  Reviewed: 2026-11-12

- `__glOdysseyQueryHyperpipeBestRect` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda08fd0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xda08fd0-0xda09064 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xda08ff8 loads 4 bytes from a0 (arg0 at entry) +0x21ef0.
  The `jalr` at 0xda09038 calls __glOdysseyIoctl [0xd9eb890] with a0=a0 at entry (arg0), a1=0x6f640016, a2=sp-40, a3=a3 at entry (arg3).
  The `beq` branch at 0xda09040 targets 0xda09050, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `beq` branch at 0xda09048 targets 0xda09054 and is always taken.
  The return at 0xda0905c has v0 = one of 0x0, 0x1.

- `__glOdysseyHyperpipeRect` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda0916c
  **Inferred.** Loads a word at arg0 offset 0x21ef0, sends ioctl request 0x6f640018 with a stack buffer at sp-40 (0xda091c4), and returns 0 or 1 depending on the ioctl result. The rectangle parameters are not visible in the facts, so the buffer contents stay open.
  Role (from name): issues a hyperpipe rectangle request.
  Reviewed: 2026-11-12

- `__glOdysseyHyperpipeStereo` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda091f0
  **Inferred.** Sends the same ioctl request as the hyperpipe rectangle call, 0x6f640018, with a stack buffer at sp-40 (0xda0924c). It also loads a word at arg0 offset 0x21ef0 and a word from arg3 at offset 0, and returns 0 or 1. The facts do not show what the arg3 word holds, or whether this routine differs from the rectangle form in anything besides the name.
  Role (from name): a hyperpipe stereo request.
  Reviewed: 2026-11-12

- `__glOdysseyHyperpipeStereo` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda091f0
  **Inferred.** Makes one `__glOdysseyIoctl` call at 0xda0924c with a1=0x6f640018 and a2=sp-40. It branches at 0xda09254 on whether that call returned zero and returns 0x0 or 0x1 at 0xda09270. Role (from name): sets or queries the hyperpipe stereo setting.
  Reviewed: 2026-11-12

- `__glOdysseyQueryHyperpipePixelAverage` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda093b4
  **Inferred.** Loads a word at arg0 offset 0x21ef0 (0xda093dc), sends ioctl request 0x6f640016 with a stack buffer at sp-40 (0xda0940c), and returns 0 or 1. The request number differs from the two hyperpipe calls above, which share 0x6f640018. The facts do not show whether the buffer is filled back.
  Role (from name): queries the pixel-average value of the hyperpipe.
  Reviewed: 2026-11-12

- `__glOdysseyQueryHyperpipePixelAverage` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda093b4
  **Inferred.** Makes one `__glOdysseyIoctl` call at 0xda0940c with a1=0x6f640016 and a2=sp-40. That constant is two below the 0x6f640018 passed by `__glOdysseyHyperpipeStereo` at 0xda0924c. It branches at 0xda09414 on whether the call returned zero and returns 0x0 or 0x1 at 0xda09430. Role (from name): queries the hyperpipe pixel-average setting.
  Reviewed: 2026-11-12

- `__glOdysseyBindHyperpipe` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda09438 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xda09438-0xda094ac (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda0944c loads 4 bytes from abs 0x1010.
  The `lbu` at 0xda09458 loads 1 byte from [0x1010] +0xc96.
  The `jalr` at 0xda09480 calls __glOdysseyIoctl [0xd9eb890] with a0=[0x1010], a1=0x6f640014, a2=sp-8, a3=a1 at entry (arg1).
  The `bne` branch at 0xda09464 targets 0xda09474, is taken when t6(=[[0x1010]+3222]:1) != 0, and falls through when t6(=[[0x1010]+3222]:1) == 0.
  The `beq` branch at 0xda0946c targets 0xda0949c and is always taken.
  The `beq` branch at 0xda09488 targets 0xda09498, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `beq` branch at 0xda09490 targets 0xda0949c and is always taken.
  The return at 0xda094a4 has v0 = one of 0x0, 0x1.

- `__glOdysseyUnbindHyperpipe` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda094ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xda094ac-0xda09508 (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0xda094d4 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda094dc calls __glOdysseyIoctl [0xd9eb890] with a0=[0x1010], a1=0x6f640015, a2=sp-8, a3=a3 at entry (arg3).
  The `beq` branch at 0xda094e4 targets 0xda094f4, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `beq` branch at 0xda094ec targets 0xda094f8 and is always taken.
  The return at 0xda09500 has v0 = one of 0x0, 0x1.

- `__glChangeWindowSize` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda4b65c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xda4b65c-0xda4b774 (280 bytes).
  It occupies 280 bytes.
  The `sw` at 0xda4b684 stores 4 bytes to a0 (arg0 at entry) +0xe74.
  The `sw` at 0xda4b688 stores 4 bytes to a0 (arg0 at entry) +0xe78.
  The `lw` at 0xda4b68c loads 4 bytes from a0 (arg0 at entry) +0x77f8.
  The `lw` at 0xda4b698 loads 4 bytes from [a0+30712] +0x38.
  The `lbu` at 0xda4b6a4 loads 1 byte from a0 (arg0 at entry) +0xc96.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc98, including `lbu` at 0xda4b6b0, `lbu` at 0xda4b6d0.
  The `lw` at 0xda4b6b4 loads 4 bytes from a0 (arg0 at entry) +0x77fc.
  The `lw` at 0xda4b6c0 loads 4 bytes from [a0+30716] +0x38.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc99, including `lbu` at 0xda4b6d8, `lbu` at 0xda4b6e4, `lbu` at 0xda4b700.
  The `lw` at 0xda4b6dc loads 4 bytes from a0 (arg0 at entry) +0x7ac8.
  The `lw` at 0xda4b6e8 loads 4 bytes from a0 (arg0 at entry) +0x7af0.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc9a, including `lbu` at 0xda4b708, `lbu` at 0xda4b724.
  The `lw` at 0xda4b70c loads 4 bytes from a0 (arg0 at entry) +0x7a6c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2ec4, including `lw` at 0xda4b72c, `lw` at 0xda4b748.
  The `lw` at 0xda4b730 loads 4 bytes from a0 (arg0 at entry) +0x79f4.
  The `jalr` at 0xda4b69c calls (unknown callee) with a0=[a0+30712], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4b6c4 calls (unknown callee) with a0=[a0+30716], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda4b6f4 calls (unknown callee) with a0=a0+31416, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda4b718 calls (unknown callee) with a0=a0+31284, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda4b73c calls (unknown callee) with a0=a0+31164, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda4b750 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xda4b6ac targets 0xda4b6d4, is taken when t6(=[a0+3222]:1) == 0, and falls through when t6(=[a0+3222]:1) != 0; its branch-likely delay slot `lbu t7,3224(s0)` at 0xda4b6b0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda4b6d4 targets 0xda4b704, is taken when t7(=[a0+3224]:1) == 0, and falls through when t7(=[a0+3224]:1) != 0; its branch-likely delay slot `lbu t0,3225(s0)` at 0xda4b6d8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda4b6e0 targets 0xda4b704, is taken when t8(=[a0+31432]) == 0, and falls through when t8(=[a0+31432]) != 0; its branch-likely delay slot `lbu t0,3225(s0)` at 0xda4b6e4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda4b704 targets 0xda4b728, is taken when t0(=[a0+3225]:1) == 0, and falls through when t0(=[a0+3225]:1) != 0; its branch-likely delay slot `lbu t1,3226(s0)` at 0xda4b708 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda4b728 targets 0xda4b74c, is taken when t1(=[a0+3226]:1) == 0, and falls through when t1(=[a0+3226]:1) != 0; its branch-likely delay slot `lw t9,11972(s0)` at 0xda4b72c runs only when taken and is annulled on fall-through.
  The return at 0xda4b76c has v0 = ret(?).

- `__glChangeReadWindowSize` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda4b774 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xda4b774-0xda4b780 (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xda4b774 stores 4 bytes to a0 (arg0 at entry) +0xe7c.
  The `sw` at 0xda4b77c stores 4 bytes to a0 (arg0 at entry) +0xe80.
  The return at 0xda4b778 has v0 = ?.

- `glBlendColorEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad72c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad72c0-0xdad72cc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad72c0 loads 4 bytes from abs 0x12f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad72c4).

- `glBlendEquationEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad72cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad72cc-0xdad72d8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad72cc loads 4 bytes from abs 0x12f4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad72d0).

- `glTexSubImage1DEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad72e4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad72e4-0xdad72f0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad72e4 loads 4 bytes from abs 0x12fc.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad72e8).

- `glTexSubImage2DEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad72f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad72f0-0xdad72fc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad72f0 loads 4 bytes from abs 0x1300.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad72f4).

- `glConvolutionFilter1DEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad72fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad72fc-0xdad7308 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad72fc loads 4 bytes from abs 0x1304.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7300).

- `glConvolutionFilter2DEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7308 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad7308-0xdad7314 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7308 loads 4 bytes from abs 0x1308.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad730c).

- `glConvolutionParameterfEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7314 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad7314-0xdad7320 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7314 loads 4 bytes from abs 0x130c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7318).

- `glConvolutionParameterfvEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7320 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad7320-0xdad732c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7320 loads 4 bytes from abs 0x1310.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7324).

- `glConvolutionParameteriEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad732c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad732c-0xdad7338 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad732c loads 4 bytes from abs 0x1314.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7330).

- `glConvolutionParameterivEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7338 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad7338-0xdad7344 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7338 loads 4 bytes from abs 0x1318.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad733c).

- `glCopyConvolutionFilter1DEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7344 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad7344-0xdad7350 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7344 loads 4 bytes from abs 0x131c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7348).

- `glCopyConvolutionFilter2DEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7350 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad7350-0xdad735c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7350 loads 4 bytes from abs 0x1320.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7354).

- `glSeparableFilter2DEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad738c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad738c-0xdad7398 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad738c loads 4 bytes from abs 0x1334.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7390).

- `glHistogramEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad73e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad73e0-0xdad73ec (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad73e0 loads 4 bytes from abs 0x1350.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad73e4).

- `glMinmaxEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad73ec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad73ec-0xdad73f8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad73ec loads 4 bytes from abs 0x1354.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad73f0).

- `glResetHistogramEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad73f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad73f8-0xdad7404 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad73f8 loads 4 bytes from abs 0x1358.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad73fc).

- `glResetMinmaxEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7404 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad7404-0xdad7410 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7404 loads 4 bytes from abs 0x135c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7408).

- `glTexImage3DEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7410 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad7410-0xdad741c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7410 loads 4 bytes from abs 0x1360.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7414).

- `glTexSubImage3DEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad741c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad741c-0xdad7428 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad741c loads 4 bytes from abs 0x1364.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7420).

- `glArrayElementEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7428 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad7428-0xdad7434 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7428 loads 4 bytes from abs 0x1368.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad742c).

- `glGetPointervEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7458 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad7458-0xdad7464 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7458 loads 4 bytes from abs 0x1378.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad745c).

- `glBindTextureEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad74a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad74a0-0xdad74ac (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad74a0 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad74a4).

- `glPrioritizeTexturesEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad74d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad74d0-0xdad74dc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad74d0 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad74d4).

- `glCopyTexImage1DEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad74dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad74dc-0xdad74e8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad74dc loads 4 bytes from abs 0x13a4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad74e0).

- `glCopyTexImage2DEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad74e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad74e8-0xdad74f4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad74e8 loads 4 bytes from abs 0x13a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad74ec).

- `glCopyTexSubImage1DEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad74f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad74f4-0xdad7500 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad74f4 loads 4 bytes from abs 0x13ac.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad74f8).

- `glCopyTexSubImage2DEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7500 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad7500-0xdad750c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7500 loads 4 bytes from abs 0x13b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7504).

- `glCopyTexSubImage3DEXT` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad750c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad750c-0xdad7518 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad750c loads 4 bytes from abs 0x13b4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7510).

- `glColorTableSGI` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7608 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad7608-0xdad7614 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7608 loads 4 bytes from abs 0x1408.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad760c).

- `glColorTableParameterfvSGI` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7614 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad7614-0xdad7620 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7614 loads 4 bytes from abs 0x140c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7618).

- `glColorTableParameterivSGI` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7620 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad7620-0xdad762c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7620 loads 4 bytes from abs 0x1410.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7624).

- `glCopyColorTableSGI` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad762c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad762c-0xdad7638 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad762c loads 4 bytes from abs 0x1414.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7630).

- `glPointParameterfSGIS` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad76c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad76c8-0xdad76d4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad76c8 loads 4 bytes from abs 0x1448.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad76cc).

- `glPointParameterfvSGIS` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad76d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdad76d4-0xdad76e0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad76d4 loads 4 bytes from abs 0x144c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad76d8).

- `__glOdyim_Vertex2d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7a80
  **Inferred.** Stores one word at 0xdad7a94 and two words from float registers f12 and f14 (swc1) at 0xdad7a98 and 0xdad7aa0, all at absolute 0x10000, and returns 0x10000 in v0. The name's "d" suggests double-precision arguments, but the stores are 4 bytes wide, so the argument precision and which values are written are not established.
  Role (from name): writes a two-dimensional vertex.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex3d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7c80
  **Inferred.** Stores one word at 0xdad7c9c and three float-register words (swc1) at 0xdad7ca0, 0xdad7ca4 and 0xdad7cac, all at absolute 0x10000, and returns 0x10000 in v0. The layout matches `__glOdyim_Vertex2d` with one more store, which fits the names. The same caveat applies: the stores are 4 bytes wide, so the precision in the name is not confirmed.
  Role (from name): writes a three-dimensional vertex.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex3i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7d80
  **Inferred.** Stores four words to the absolute address 0x10000 (at 0xdad7da4, 0xdad7da8, 0xdad7dac and 0xdad7db4) and returns 0x10000 in v0 at 0xdad7db0. It makes no calls and the facts list no loads, so the stored values are not read from memory. The consumer of the fixed 0x10000 slot is not shown by these facts.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex4i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad8040
  **Inferred.** Stores five words to the absolute address 0x10000 (including 0xdad806c and 0xdad8074) and returns 0x10000 at 0xdad807c. It is the four-component sibling of the Vertex3i routine at 0xdad7d80, with one more word stored. No calls. Where the slot is read is open.
  Reviewed: 2026-11-12

- `__glOdyim_TexCoord3d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdaddb40
  **Inferred.** Writes a three-component coordinate as one integer word store (0xdaddb58) and three single-float stores (0xdaddb60, 0xdaddb64, 0xdaddb6c), all to 0x10000, then returns it at 0xdaddb68. The name suggests double-precision input, but the stores are 4-byte and the facts list no loads, so the source width and the narrowing step are not established.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3b` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade240
  **Inferred.** Writes a color value to 0x10000 with two 8-byte double stores (sdc1 at 0xdade25c and 0xdade264) and returns 0x10000 at 0xdade260. No calls and no argument loads. The "3b" suffix suggests a byte-component color, but these facts do not show how the components pack into the 8-byte stores.
  Reviewed: 2026-11-12

- `__glOdyim_Color3d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade300
  **Inferred.** Stores a color triple to 0x10000 as one word store (0xdade318) and three single-float stores (0xdade320, 0xdade324, 0xdade32c), then returns 0x10000 at 0xdade328. It has the same shape as the TexCoord3d routine at 0xdaddb40, with a different offset set. No calls, and the consumer of the slot is open.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade340
  **Inferred.** Stores a three-component double color to 0x10000 through one word store (0xdade358) and three single-float stores (0xdade360, 0xdade364, 0xdade36c), returning 0x10000 at 0xdade368. Same shape as Color3d at 0xdade300. The name suggests a scratch buffer, which the facts do not confirm.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade540
  **Inferred.** Writes two 8-byte doubles to 0x10000 (sdc1 at 0xdade55c and 0xdade564) and returns 0x10000 at 0xdade560. No calls or argument loads. The integer-component name is not reflected in the facts, which show only the double stores.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3s` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade640
  **Inferred.** Writes two 8-byte doubles to 0x10000 (sdc1 at 0xdade65c and 0xdade664) and returns 0x10000 at 0xdade660. The routine has the same body as the 3i variant at 0xdade540 except for the offsets. The short-component name is not visible in the facts.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3ui` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade840
  **Inferred.** Writes two 8-byte doubles to 0x10000 (sdc1 at 0xdade85c and 0xdade864) and returns 0x10000 at 0xdade860. Identical in shape to the 3i and 3s variants. No calls.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3us` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade940
  **Inferred.** Writes two 8-byte doubles to 0x10000 (sdc1 at 0xdade95c and 0xdade964) and returns 0x10000 at 0xdade960. Same shape as the 3b, 3i, 3s and 3ui scratch variants, but not the ScratchColor3d routine at 0xdade340, which uses a word store and three single-float stores. No calls.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4b` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadea40
  **Inferred.** Writes one 8-byte double (sdc1 at 0xdadea58) and three word stores (0xdadea5c, 0xdadea60, 0xdadea68) to 0x10000, then returns 0x10000 at 0xdadea64. No calls. This is the four-component form of the scratch color family, and the split between the double and the words is not explained by the facts.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4dv` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadec00
  **Inferred.** Loads four doubles (ldc1 at offsets 0x0, 0x8, 0x10 and 0x18, at 0xdadec00, 0xdadec0c, 0xdadec14 and 0xdadec1c), then stores one word (0xdadec24) and four single-float values (0xdadec2c, 0xdadec34, 0xdadec38 and 0xdadec40) to 0x10000 and returns it at 0xdadec3c. The facts do not name the base register of the loads and do not show any conversion of the values. Role (from name): a four-component double color given by pointer. The consumer of the 0x10000 slot is not shown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadedc0
  **Inferred.** Writes one 8-byte double (sdc1 at 0xdadedd8) and three word stores (0xdadeddc, 0xdadede0, 0xdadede8) to 0x10000 and returns 0x10000 at 0xdadede4. Same shape as ScratchColor4b at 0xdadea40. No calls.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4s` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadeec0
  **Inferred.** Writes one 8-byte double (sdc1 at 0xdadeed8) and three word stores (0xdadeedc, 0xdadeee0, 0xdadeee8) to 0x10000, returning it at 0xdadeee4. Same shape as the 4i variant. No calls.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ub` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadefc0
  **Inferred.** Writes one 8-byte double (sdc1 at 0xdadefd8) and three word stores (0xdadefdc, 0xdadefe0, 0xdadefe8) to 0x10000, returning it at 0xdadefe4. Same shape as the 4i and 4s variants. The unsigned-byte name is not reflected in the stores.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ui` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadf0c0
  **Inferred.** Writes one 8-byte double (sdc1 at 0xdadf0d8) and three word stores (0xdadf0dc, 0xdadf0e0, 0xdadf0e8) to 0x10000, returning it at 0xdadf0e4. Same shape as the other four-component variants. No calls.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4us` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadf1c0
  **Inferred.** Writes one 8-byte double (sdc1 at 0xdadf1d8) and three word stores (0xdadf1dc, 0xdadf1e0, 0xdadf1e8) to 0x10000, returning it at 0xdadf1e4. Same shape as the other four-component variants. No calls.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchIndexd` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadf2c0
  **Inferred.** Writes one 8-byte double to 0x10000 (sdc1 at 0xdadf2d8) and returns 0x10000 at 0xdadf2d4. It is the single-index form of the scratch family and has no calls or argument loads.
  Reviewed: 2026-11-12

- `glColor3b` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdae0000 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdae0000-0xdae0080 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdae0000 loads 4 bytes from abs 0x15d8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdae0004).
  The instructions from 0xdae000c to 0xdae007c are not reached by any path from the entry, and their branches are not listed.

- `glVertex2d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdae2900 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xdae2900-0xdae2a00 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0xdae2900 loads 4 bytes from abs 0x1578.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdae2904).
  The instructions from 0xdae290c to 0xdae29fc are not reached by any path from the entry, and their branches are not listed.
