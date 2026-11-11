# Tier-1 reading, batch 2 (odsy)

Role statements for 25 routines of the 64-bit `libGLcore.so` build, taken from the rendered facts of the reading tool: targets 50 to 74 of the tier-1 ranking, all in the same binary. Every entry is graded inferred. The facts are call lists, branch targets, constants and store summaries, not full reads of the bodies, so none of these reaches established. Names are the symbol-table names in the shipped binary. Nothing here describes the board; these are the driver's software expectations.

The first five entries (the `Color4*` family) and the four `TexCoord*` entries repeat one pattern each. Their statements differ only in the address, the exit constant and the argument slot that carries the value loaded from 0x1048, so they add little beyond the family itself.

No entry was rejected by the renderer or the grader.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a6ab0`

`__glOdylc_Color4i` is a 344-byte entry. It calls `__glSPDlistSpace` at 0x21a6b1c with the entry arguments a1 to a3, the pointer loaded from 0x1020 as a4, 0x10000 as a5 and the word at 0x1048 as a6. By its name that callee reserves space in a list; its body is not read here. One exit returns the constant 0x1a0408 (or an unknown value) and the other returns the space call's result, so the entry looks like it reserves list space for one colour command and passes the argument values through. The facts do not show how the four integer components are packed, so the encoding is open.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a6d60`

`__glOdylc_Color4s` has the same 344-byte layout as `__glOdylc_Color4i`, with its space call at 0x21a6dcc and the same argument pattern. Its constant exit is 0x1a0158 (or an unknown value). The name points to the short-integer variant. Size and layout match, but the facts do not show how each short is widened, so that step stays unread.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a7010`

`__glOdylc_Color4ub` is a 344-byte entry with the same shape as the Color4 family, and its space call is at 0x21a707c. Its constant exit is 0x19fea8 (or an unknown value). The name suggests the unsigned-byte variant. Any byte-to-float conversion is not visible in the facts.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a72c0`

`__glOdylc_Color4ui` is a 344-byte entry in the same family, with its space call at 0x21a732c and constant exit 0x19fbf8 (or an unknown value). The name suggests the unsigned-int variant. The conversion of each component is not shown by the facts.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a7570`

`__glOdylc_Color4us` is a 344-byte entry in the same family, with its space call at 0x21a75dc and constant exit 0x19f948 (or an unknown value). The name suggests the unsigned-short variant. Component conversion is not shown.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a8800`

`__glOdyim_Clear` is a 1576-byte entry. It raises GL error 0x502 through `__glSetError` at 0x21a884c and error 0x501 at 0x21a889c. Those values are the public GL codes for invalid operation and invalid value. It calls `__glOdysseyWindowToNormalizedEyeZ` at 0x21a8b2c and `__glOdysseyClear` at 0x21a8b8c and 0x21a8db8. On another path it calls `__glOdysseyIoctl` at 0x21a8d14 with request word 0x6f64000d and `__glOdysseySetDrawbuf` at 0x21a8d6c and 0x21a8dd4. It appears to check arguments, convert the window depth, then either run the clear or set the draw buffer first. Which of those a given call takes, and what the request word carries, are not read here.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a8e30`

`__glOdysseyClear` is a 2008-byte entry. It calls `__glOdysseyValidateHardware` at 0x21a9258 and 0x21a9328, which suggests it checks the hardware state before the clear. It issues `__glOdysseyIoctl` at 0x21a92dc with request word 0x6f64000e, one step on from the 0x6f64000d request in the `__glOdyim_Clear` entry. Both exits return the word at context offset 48000. The facts do not show what the clear does with its mask or colour, so the work it performs is open.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21ade10`

`__glOdysseyInitDefaultValues` is a 3560-byte entry that sets state through the `__glOdyim_*` setters. It disables tokens 0xb44 (cull face) and 0xb71 (depth test) among others, and sets material parameters with face 0x408 and parameter tokens 0x1200 to 0x1603. Those tokens match the public GL names. It calls the draw-buffer setter at 0x21ae2b8 and 0x21aeba0, the image initialiser `__glOdysseyImageInit` at 0x21ae344, and the lighting, fragment-lighting, fragment-material and texture initialisers at 0x21ae998 to 0x21ae9bc. It also calls `getenv` at 0x21aeae8. This reads as a default-context setup, which the name also suggests. The environment variable it reads is not identified in the facts.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21c7170`

`ApplyMaterialF` is a 1888-byte entry that makes no calls. It reads four floats from its third argument at offsets 0x0 to 0xc, and it writes values into the record at its first argument at offsets 0x0 to 0x1c. It also loads 16 words from the context reached through the pointer at 0x1020, at offsets 0x9fc0 to 0x9ffc. It stores 38 words to the fixed address 0x10000, which is the same constant the list-space calls take as a5. The name and the float reads suggest a material update into an existing record, but the facts do not show which material field each store fills. The 38-store burst to 0x10000 is the part that reaches beyond the record, and its purpose is not read here.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21c78d0`

`ApplyMaterialI` is the integer-argument counterpart of `ApplyMaterialF`, 2332 bytes, with the same 38-store burst to 0x10000 and the same pointer at 0x1020. It makes no calls. It branches on the parameter token in a1 (0x1200 to 0x1603, the public GL material names) and on a comparison against 1.0. Its two exits return words from the context at offsets 40944 and 40900. The shape matches the float variant, but each branch's target field is not read here.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21e2650`

`AddConvolutionBorders` is a 9664-byte entry. It programs the texture filter twice, with `__glOdysseyProgramTexFilter` at 0x21e27a4 and 0x21e2914 and `LoadTextureFilter` at 0x21e280c and 0x21e2924. It moves pixels with `__glOdysseyImageMovePixelsTexture` at 0x21e28a0 and 0x21e29f8. The four `floorf` calls at 0x21e2aa8 to 0x21e2b04 suggest border offsets computed in floating point. The name points to the GL convolution border. The facts do not show which edges each copy covers.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21fba30`

`__glOdysseyImageMovePixelsCopy` is a 7924-byte entry that computes transfer geometry before the move. It calls `ceilf` four times, `OdysseyImageCalcXferCopyParams` at 0x21fbc2c, and `ImageCalcDmaFieldOffsets` at 0x21fbd50 and 0x21fbdc8. It then opens a read reference and a write reference to a pixel-memory object, through `__glOdysseyOpenPMObjReference` at 0x21fbdec and `__glOdysseyOpenPMObjWriteReference` at 0x21fbe34. `__glOdysseyImageCalcPixelModeFields` at 0x21fc248 finishes the field setup. The name suggests a copy within one surface. The copy loop itself is not among the facts.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21fe0f0`

`__glOdysseyImageMovePixelsDMAtoGfx` is a 6932-byte entry that moves pixels from DMA memory toward the graphics side, by its name. It calls `__glOdysseyImageCalcXferWriteParams` at 0x21fe27c and `ImageCalcDmaFieldOffsets` at 0x21fe51c. It uses the GL element-size helpers `__glSpecElementsPerGroup` at 0x21fe2cc and `__glSpecBytesPerElement` at 0x21fe2e0. It opens only a write reference to the pixel-memory object, at 0x21fe61c. Its layout is the write-side counterpart of the copy entry above. Which way the data moves is taken from the name, and the facts do not confirm it.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220ad70`

`__glOdysseyCreatePMObj` is a 520-byte entry. It issues `__glOdysseyIoctl` at 0x220ae18 with request 0x6f640001 and walks a set of known groups with `InitCSetCursor` and `NextCSetElem`. On one path it calls `LookupKnownGroup` at 0x220af30 and `RemoveKnownGroup` at 0x220af50, and its exits return 0 or 1. The name says it creates a pixel-memory object, but the facts show only the ioctl and the group walk, so the object's contents are unknown. The removal path is not clear from these facts.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220af80`

`__glOdysseyDestroyPMObjGroup` is a 336-byte entry. It walks the known-group set with `InitCSetCursor` and two `NextCSetElem` calls, looks up each group at 0x220b024, removes it at 0x220b038, and issues `__glOdysseyIoctl` at 0x220b064 with request 0x6f640002. Its exits return 0 or 1. The name says it destroys a set of objects. The facts show the walk, the removal and the ioctl, but not the order in which they run.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220b0d0`

`__glOdysseyDestroyPMObj` is the single-object counterpart of the group destroy above, 336 bytes. It issues `__glOdysseyIoctl` with the same request word, 0x6f640002, at 0x220b130. It walks the known-group set with `InitCSetCursor` at 0x220b17c and `NextCSetElem`, looks the group up at 0x220b1e4 and removes it at 0x220b200. The shared request word suggests both entries close the same kind of object. The facts do not show whether the ioctl comes before or after the removal on a given path.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220b2a0`

`__glOdysseyAssignToPMObj` is a 332-byte entry. It checks its transfer arguments with `CheckMMXfrArgs` at 0x220b364 and then calls `__glOdysseyIoctl` at 0x220b380 with request 0x6f640006. Its exits return 0 or 1. The name suggests binding an object to a transfer, and the argument check fits that reading. The facts do not show which object the request names.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220b510`

`OpenPipeMemReference` is a 444-byte entry. It brackets an ioctl with two `__glOdysseyMIPS_SYNC` calls, at 0x220b58c and 0x220b614. The ioctl at 0x220b5ec uses request 0x6f640003 and reads an argument field from the caller's record. It returns 1 on one exit and 0 on the other. The name says it opens a reference to pipe memory. The sync calls on either side of the ioctl look like ordering around a shared-memory handoff, which is inferred from the callee's name alone.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220bed0`

`LookupKnownGroup` is a 308-byte entry. It finds the group record for an id through `LookupCSetId` at 0x220bf10. If the id is not found, it appears to allocate a 0x98-byte record, zero it with `bzero` at 0x220bf5c and add it with `AddKnownGroup` at 0x220bf78. It then checks the record with `LookupCoresidRange` at 0x220bf9c. If that check fails, it removes the record at 0x220bfdc and raises GL error 0x505 through `__glSetError` at 0x220bff4. The miss-then-allocate reading is inferred from the call order; the facts do not show the lookup's branch directly.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220c010`

`LookupCoresidRange` is a 564-byte entry. It computes an end address as `a1 + (a2 << 3)` and calls `__glOdysseyIoctl` at 0x220c0ec with request 0x6f640004 and the value 2. Two unnamed callees, at 0x220c070 and 0x220c108, do the rest of the work. On failure it raises GL error 0x505 at 0x220c230. One of its exits returns 0 directly, and the others return values the facts do not name. The name suggests a check that two address ranges sit in one memory region. The comparison itself is not in the facts.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220e490`

`__glOdysseySetProgram` is a 1240-byte entry. It reads a byte from the context at offset 0x285e0 and several words from offsets 0xc9a4 to 0xca00. It writes 31 words to the fixed address 0x10000 and walks 32-byte records indexed by a1, as `a0 + (a1 << 5)`. It also reads 18 halfwords and three doublewords. Its exits return the constant 0x298080c5 or an unknown value. The name suggests binding a program. The facts show a table walk and a burst of writes to 0x10000, but they do not identify the program object or what those words carry.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2211220`

`__glOdylc_TexCoord2d` is a 308-byte entry with one call to the list-space callee `__glSPDlistSpace` at 0x2211278. It passes 0 as a0, the entry values of a1 and a3, and the word at 0x1048 as a2. Its exits return the constant 0x135c98 (or an unknown value) and the space call's result. The name points to a two-double texture-coordinate command. The coordinate values reach the call only as pass-through arguments, so how they are encoded is not shown.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x22116e0`

`__glOdylc_TexCoord2i` is a 292-byte entry with one call to `__glSPDlistSpace` at 0x2211730. It passes 0 as a0, the entry values of a1 to a3, and the word at 0x1048 as a4. Its exits return the constant 0x1357d8 (or an unknown value) and the space call's result. The name suggests the two-int variant of the same command. The facts do not show the encoding.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2212080`

`__glOdylc_TexCoord3i` is a 308-byte entry with one call to `__glSPDlistSpace` at 0x22120d4. It passes 0 as a0, the entry values of a1 to a3, and the word at 0x1048 as a5. Its exits return the constant 0x134e38 (or an unknown value) and the space call's result. The name suggests the three-int variant. The slot that carries the 0x1048 word moves from entry to entry (a2 here, a4 in the TexCoord2i entry, a6 in TexCoord4i). The facts do not explain that choice.

Grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2212aa0`

`__glOdylc_TexCoord4i` is a 324-byte entry with one call to `__glSPDlistSpace` at 0x2212af8. It passes 0 as a0, the entry values of a1 to a3, and the word at 0x1048 as a6. Its exits return the constant 0x134418 (or an unknown value) and the space call's result. The name suggests the four-int variant. The argument slot that carries 0x1048 differs from the other members of this family, as noted above.

Grade: inferred.
