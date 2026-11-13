# Tier-1 reading, batch 2 (odsy)

Role statements for 25 routines of the 64-bit `libGLcore.so` build, taken from the rendered facts of the reading tool: targets 50 to 74 of the tier-1 ranking, all in the same binary. Every entry is graded inferred. The facts are call lists, branch targets, constants and store summaries, not full reads of the bodies, so none of these reaches established. Names are the symbol-table names in the shipped binary. Nothing here describes the board; these are the driver's software expectations.

The first five entries (the `Color4*` family) and the four `TexCoord*` entries repeat one pattern each. Their statements differ only in the address, the exit constant and the argument slot that carries the value loaded from 0x1048, so they add little beyond the family itself.

No entry was rejected by the renderer or the grader.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a6ab0`

`__glOdylc_Color4i` is a 344-byte entry. It calls `__glSPDlistSpace` at 0x21a6b1c with a0 = 0, the entry arguments a1 to a3, the pointer loaded from 0x1020 as a4, 0x10000 as a5 and the word at 0x1048 as a6. The call sits behind the branches at 0x21a6aec (on the word at 0x1060) and 0x21a6af8 (a6 against 5), so it does not run on every path. One exit returns the constant 0x1a0408 (or an unknown value) and the other returns the space call's result. Role (from name): the callee name suggests it reserves space in a display list, so the entry looks like it reserves list space for one colour command and passes the argument values through; the callee's body is not read here. The facts do not show how the four integer components are packed, so the encoding is open.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a6d60`

`__glOdylc_Color4s` has the same 344-byte layout as `__glOdylc_Color4i`, with its space call at 0x21a6dcc and the same argument pattern. Its constant exit is 0x1a0158 (or an unknown value). The name points to the short-integer variant. Size and layout match, but the facts do not show how each short is widened, so that step stays unread.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a7010`

`__glOdylc_Color4ub` is a 344-byte entry with the same shape as the Color4 family, and its space call is at 0x21a707c. Its constant exit is 0x19fea8 (or an unknown value). The name suggests the unsigned-byte variant. Any byte-to-float conversion is not visible in the facts.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a72c0`

`__glOdylc_Color4ui` is a 344-byte entry in the same family, with its space call at 0x21a732c and constant exit 0x19fbf8 (or an unknown value). The name suggests the unsigned-int variant. The conversion of each component is not shown by the facts.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a7570`

`__glOdylc_Color4us` is a 344-byte entry in the same family, with its space call at 0x21a75dc and constant exit 0x19f948 (or an unknown value). The name suggests the unsigned-short variant. Component conversion is not shown.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a8800`

`__glOdyim_Clear` is a 1576-byte entry. It raises GL error 0x502 through `__glSetError` at 0x21a884c and error 0x501 at 0x21a889c. Those values are the public GL codes for invalid operation and invalid value. It calls `__glOdysseyWindowToNormalizedEyeZ` at 0x21a8b2c and `__glOdysseyClear` at 0x21a8b8c and 0x21a8db8. On another path it calls `__glOdysseyIoctl` at 0x21a8d14 with request word 0x6f64000d and `__glOdysseySetDrawbuf` at 0x21a8d6c and 0x21a8dd4. It appears to check arguments, convert the window depth, then either run the clear or set the draw buffer first. Which of those a given call takes, and what the request word carries, are not read here.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a8e30`

`__glOdysseyClear` is a 2008-byte entry. It calls `__glOdysseyValidateHardware` at 0x21a9258 and again at 0x21a9328, and issues `__glOdysseyIoctl` at 0x21a92dc with request word 0x6f64000e, one step on from the 0x6f64000d request in the `__glOdyim_Clear` entry. In address order one validate call comes before the ioctl and one after it. By its name the callee checks hardware state, but the facts do not show what is checked or how the calls relate to the clear itself. Both returns (0x21a9548 and 0x21a9588) give the word at context offset 48000. The facts do not show what the clear does with its mask or colour, so the work it performs is open.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21ade10`

`__glOdysseyInitDefaultValues` is a 3560-byte entry that sets state through the `__glOdyim_*` setters. It disables tokens 0xb44 (cull face) and 0xb71 (depth test) among others, and sets material parameters with face 0x408 and parameter tokens 0x1200 to 0x1603. Those tokens match the public GL names. It calls the draw-buffer setter at 0x21ae2b8 and 0x21aeba0, the image initialiser `__glOdysseyImageInit` at 0x21ae344, and the lighting, fragment-lighting, fragment-material and texture initialisers at 0x21ae998 to 0x21ae9bc. It also calls `getenv` at 0x21aeae8. This reads as a default-context setup, which the name also suggests. The environment variable it reads is not identified in the facts.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21c7170`

`ApplyMaterialF` is a 1888-byte entry that makes no calls. It branches on the token in a1 (comparisons against 0x1200, 0x1201, 0x1202, 0x1600, 0x1601 and 0x1603) and on comparisons of floats loaded from a pointer argument at offsets 0x0 to 0xc against a double 1.0. It stores words at offsets 0x4 to 0x1c from a base register that the facts do not name. It loads words at 16 offsets from 0x9fc0 to 0x9ffc, each at two sites, from the context that the pointer at 0x1020 leads to. It also has 38 word stores at offset 0 between 0x21c72b0 and 0x21c73d8; the facts do not show their base register or destination. Its exits return words from the context at offsets 40940 and 40900. Role (from name): the name and the float reads suggest a material update into an existing record, but the facts do not show which material field each store fills or what the 38-store run is for.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21c78d0`

`ApplyMaterialI` is 2332 bytes and makes no calls. Role (from name): it is the integer-argument counterpart of `ApplyMaterialF`, by its name. It branches on the token in a1 (comparisons against 0x1200, 0x1201, 0x1202, 0x1600, 0x1601 and 0x1603) and on a comparison against a double 1.0. It has a run of 38 word stores at offset 0 between 0x21c7a6c and 0x21c7b88, the same count as the float variant; the facts do not show their base register or destination. It reads the context through the pointer at 0x1020 (the branch at 0x21c7a5c tests the word at context offset 48000). Its two exits return words from the context at offsets 40944 and 40900. The shape matches the float variant, but each branch's target field is not read here.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21e2650`

`AddConvolutionBorders` is a 9664-byte entry with 145 calls: `__glOdysseyProgramTexFilter` 7 times, `LoadTextureFilter` 6 times, `__glOdysseyImageMovePixelsTexture` 26 times, `floorf` 100 times and `ceilf` 6 times. The first calls, in address order, are `__glOdysseyProgramTexFilter` at 0x21e27a4, `LoadTextureFilter` at 0x21e280c, `__glOdysseyImageMovePixelsTexture` at 0x21e28a0, then the same three kinds at 0x21e2914, 0x21e2924 and 0x21e29f8, then four `floorf` calls at 0x21e2aa8 to 0x21e2b04. The `floorf` and `ceilf` calls suggest border offsets computed in floating point. Role (from name): the name points to the GL convolution border. The facts do not show which edges each copy covers.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21fba30`

`__glOdysseyImageMovePixelsCopy` is a 7924-byte entry that computes transfer geometry before the move. It calls `ceilf` four times, `OdysseyImageCalcXferCopyParams` at 0x21fbc2c, and `ImageCalcDmaFieldOffsets` at 0x21fbd50 and 0x21fbdc8. It then calls `__glOdysseyOpenPMObjReference` at 0x21fbdec and `__glOdysseyOpenPMObjWriteReference` at 0x21fbe34; the names suggest a read-side and a write-side reference to a pixel-memory object, which the facts do not confirm. `__glOdysseyImageCalcPixelModeFields` is called at 0x21fc248, after those two in address order. The name of the entry suggests a copy within one surface. It also calls `ImageCopyPixelBody` from several sites; the copy loop itself is not in this routine's own facts.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21fe0f0`

`__glOdysseyImageMovePixelsDMAtoGfx` is a 6932-byte entry. It calls `__glOdysseyImageCalcXferWriteParams` at 0x21fe27c and `ImageCalcDmaFieldOffsets` at 0x21fe51c. It uses the GL element-size helpers `__glSpecElementsPerGroup` at 0x21fe2cc and `__glSpecBytesPerElement` at 0x21fe2e0. It calls `__glOdysseyOpenPMObjWriteReference` at 0x21fe61c and makes no call to the plain `__glOdysseyOpenPMObjReference`. It shares the `ImageCalcDmaFieldOffsets` and `__glOdysseyImageCalcPixelModeFields` callees with the copy entry above, and it calls `SendPixelsAsUserPIO` from several sites. Role (from name): the name suggests a move of pixels from DMA memory toward the graphics side; the facts do not confirm the direction.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220ad70`

`__glOdysseyCreatePMObj` is a 520-byte entry. It issues `__glOdysseyIoctl` at 0x220ae18 with request 0x6f640001 and walks a set of known groups with `InitCSetCursor` and `NextCSetElem`. On one path it calls `LookupKnownGroup` at 0x220af30 and `RemoveKnownGroup` at 0x220af50, and its exits return 0 or 1. The name says it creates a pixel-memory object, but the facts show only the ioctl and the group walk, so the object's contents are unknown. The removal path is not clear from these facts.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220af80`

`__glOdysseyDestroyPMObjGroup` is a 336-byte entry. It walks the known-group set with `InitCSetCursor` and two `NextCSetElem` calls, looks up each group at 0x220b024, removes it at 0x220b038, and issues `__glOdysseyIoctl` at 0x220b064 with request 0x6f640002. Its exits return 0 or 1. The name says it destroys a set of objects. The facts show the walk, the removal and the ioctl, but not the order in which they run.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220b0d0`

`__glOdysseyDestroyPMObj` is the single-object counterpart of the group destroy above, 336 bytes. It issues `__glOdysseyIoctl` with the same request word, 0x6f640002, at 0x220b130. It walks the known-group set with `InitCSetCursor` at 0x220b17c and `NextCSetElem`, looks the group up at 0x220b1e4 and removes it at 0x220b200. The shared request word suggests both entries close the same kind of object. The facts do not show whether the ioctl comes before or after the removal on a given path.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220b2a0`

`__glOdysseyAssignToPMObj` is a 332-byte entry. It checks its transfer arguments with `CheckMMXfrArgs` at 0x220b364 and then calls `__glOdysseyIoctl` at 0x220b380 with request 0x6f640006. Its exits return 0 or 1. The name suggests binding an object to a transfer, and the argument check fits that reading. The facts do not show which object the request names.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220b510`

`OpenPipeMemReference` is a 444-byte entry. It calls `__glOdysseyMIPS_SYNC` at 0x220b58c and again at 0x220b614, and calls `__glOdysseyIoctl` at 0x220b5ec with request 0x6f640003, passing fields loaded from a1 and a2 (a3 = [a2+16], a4 = [a1]). The second sync runs only after the ioctl returns nonzero; when it returns 0 the branch at 0x220b5f4 skips it. The first sync is also behind earlier branches, and a return of 1 at 0x220b5bc sits before the ioctl in address order. The other exit, at 0x220b62c, returns 0 and sits after the second sync. Role (from name): the name says it opens a reference to pipe memory, and the sync calls look like ordering around a shared-memory handoff, which is inferred from the callee's name alone.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220bed0`

`LookupKnownGroup` is a 308-byte entry. It calls `LookupCSetId` at 0x220bf10 and returns that result when it is nonzero (0x220bf28). When the result is 0, execution goes on, past a further branch at 0x220bf30, to an unnamed callee at 0x220bf44 with a1 = 0x98, a `bzero` call at 0x220bf5c with size 0x98 and `AddKnownGroup` at 0x220bf78; the unnamed callee looks like an allocator, which the facts do not show. It then calls `LookupCoresidRange` at 0x220bf9c. If that returns 0, the branch at 0x220bfa4 leads to `RemoveKnownGroup` at 0x220bfdc and a `__glSetError` call with 0x505 at 0x220bff4. Before the lookup, branches at 0x220bee4 and 0x220bef0 jump to 0x220bfb8 when a1 is -3 or -4.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220c010`

`LookupCoresidRange` is a 564-byte entry. It forms the address `a1 + (a2 << 3)` and loads a doubleword at offset 16 from it, and it calls `__glOdysseyIoctl` at 0x220c0ec with request 0x6f640004 and the value 2 as a4. It also calls two unnamed callees, at 0x220c070 and 0x220c108, whose roles the facts do not show. A zero return from the callee at 0x220c070 branches to 0x220c22c, which reaches a `__glSetError` call with 0x505 at 0x220c230. One exit returns 0 directly; the others return values the facts do not name. Role (from name): the name suggests a check that two address ranges sit in one memory region. The comparison itself is not in the facts.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220e490`

`__glOdysseySetProgram` is a 1240-byte entry. It reads a byte from the context at offset 0x285e0 and several words from offsets 0xc9a4 to 0xca00. It has 31 word stores at offset 0 from one base register that the facts do not name, and it walks 32-byte records indexed by a1 (`a0 + (a1 << 5)`). It also reads 18 halfwords and three doublewords. Its exits return the constant 0x298080c5 or an unknown value. Role (from name): the name suggests binding a program. The facts show a table walk and a burst of stores, but they do not identify the program object, the destination of the stores or what the words carry.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2211220`

`__glOdylc_TexCoord2d` is a 308-byte entry with one call to the list-space callee `__glSPDlistSpace` at 0x2211278. It passes 0 as a0, the entry values of a1 and a3, and the word at 0x1048 as a2. Its exits return the constant 0x135c98 (or an unknown value) and the space call's result. The facts also list two single-precision stores at 0x22112d0 and 0x22112d4, but not where their values come from. Role (from name): the name points to a two-double texture-coordinate command. How the coordinate values are encoded is not shown.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x22116e0`

`__glOdylc_TexCoord2i` is a 292-byte entry with one call to `__glSPDlistSpace` at 0x2211730. It passes 0 as a0, the entry values of a1 to a3, and the word at 0x1048 as a4. Its exits return the constant 0x1357d8 (or an unknown value) and the space call's result. The name suggests the two-int variant of the same command. The facts do not show the encoding.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2212080`

`__glOdylc_TexCoord3i` is a 308-byte entry with one call to `__glSPDlistSpace` at 0x22120d4. It passes 0 as a0, the entry values of a1 to a3, and the word at 0x1048 as a5. Its exits return the constant 0x134e38 (or an unknown value) and the space call's result. The name suggests the three-int variant. The slot that carries the 0x1048 word moves from entry to entry (a2 in the TexCoord2d entry, a4 in the TexCoord2i entry, a5 here, a6 in TexCoord4i). The facts do not explain that choice.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2212aa0`

`__glOdylc_TexCoord4i` is a 324-byte entry with one call to `__glSPDlistSpace` at 0x2212af8. It passes 0 as a0, the entry values of a1 to a3, and the word at 0x1048 as a6. Its exits return the constant 0x134418 (or an unknown value) and the space call's result. The name suggests the four-int variant. The argument slot that carries 0x1048 differs from the other members of this family, as noted above.

Grade: inferred.

Reviewed: 2026-11-12
