# Routine readings from the IP30 ODSY GL library, 25 routines

Role statements for 25 routines from the ranked list of located, hardware-facing routines, positions 400 to 424. All 25 rendered entries passed the grader, and none were rejected. Each statement comes only from the registers, calls and constants in the rendered facts for that exact address. Callee names are the binary's own symbols, and the facts do not show what those callees do beyond their names. Absolute addresses such as 0x10000, 0x1010 and 0x1028 are named by their numeric value; the facts do not say what they are.

Binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`, for all 25 entries. Calls made through a register are counted but not resolved.

- `__glOdylc_TexCoord2i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9df1b0 (260 bytes).
  `__glOdylc_TexCoord2i` loads three words from absolute 0x1028, 0x1030 and 0x1034. It tests whether the 0x1034 word is nonzero and then tests bit 0x4 of the 0x1030 word (at 0xd9df1ec and again at 0xd9df254), and it compares the 0x1028 word against 3 or 4 (at 0xd9df200). When that comparison is below the limit it calls `__glSPDlistSpace` (0xda0f8cc) at 0xd9df214 with a0 = 0, a1 passed through and the 0x1028 word as its third argument (a2). On the path where that call returns zero it loads one word and stores two; the facts do not show the store targets. Role (from name): a two-integer texture coordinate written into a display list. The facts do not show which stored word holds the coordinate data.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_TexCoord3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9dfa24 (272 bytes).
  `__glOdylc_TexCoord3i` has the same shape as the 2i variant at 0xd9df1b0: it loads the same three absolute words (0x1028, 0x1030, 0x1034) and calls `__glSPDlistSpace` at 0xd9dfa8c. The call differs in its arguments: the 0x1028 word is the fourth argument (a3) and a2 is passed through from entry, where the 2i entry passes the 0x1028 word as a2. Its threshold test compares 0x1028 against 4 or 5 where the 2i entry uses 3 or 4. Role (from name): one more coordinate than the 2i variant, which would fit one more argument slot. That is a reading of the constants, not something the facts state.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `DownsampleTextureThruHW` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9e335c (3136 bytes).
  `DownsampleTextureThruHW` loads a context pointer from absolute 0x1010 and then reads and writes many fields at fixed offsets, including 0x7c00, 0x7fb0, 0x9830 and 0x16960. It calls `__glOdysseyImageLogBase2` (0xd9d1eb0) twice, then `ChooseSuitableBuzzTexModeBaseFmt` (0xd9e1dc8), `GetImageFmtEnumFromBuzzTexFormat` (0xd9e1d08), `__glOdysseyImageCalcFieldFormat` (0xd98f304) and `__glOdysseyValidateHardware` (0xd96ae20), in that address order. Its stores at +0x0 through a base set to 0x10000 at 0xd9e3404 include 33 words and 14 single-precision floats written to absolute 0x10000; the words start around 0xd9e38bc and the floats around 0xd9e3d70, and `__glOdysseyValidateHardware` (call at 0xd9e3d10) comes after the words around 0xd9e38bc and before the floats. Role (from name): downsampling a texture through hardware. The facts do not show a loop, and they do not explain the branch at 0xd9e3400, which compares a1 (0xde0 at that point) with the word at a0+12.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyTextureDeactivate` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9e4b04 (248 bytes).
  `__glOdysseyTextureDeactivate` reads the words at a0+0x16420 and a0+0x16424 and passes them as a2 and a3 of a call to `__glOdysseyClosePMObjReference` (0xd9d9410) at 0xd9e4b40, with a1 loaded from a word at offset 1276. It then loads the object pointer at a0+91164 (0x1641c). Only when that pointer is nonzero does it make a second call at 0xd9e4ba0 to the same callee, with a1 read from offset 1276 of that object and the words at a0+91176 and a0+91180 as a2 and a3. A counter is compared with 0x10 at 0xd9e4b78 and again at 0xd9e4bd4, which could be a 16-entry table, but the table size is not in the facts. The return value is either an unknown value or 0xffffffffbaadcade, a sign-extended constant the facts do not explain.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyDriverMakeCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9ec21c (880 bytes).
  `__glOdysseyDriverMakeCurrent` reads the context at a0 at offsets 0xce4, 0xd84, 0xc94, 0xd34 and 0x14, then writes 26 distinct word fields between 0x16d40 and 0x16db0. It calls `__glOdysseyIoctl` (0xd9eb890) with request 0x6f640008 at 0xd9ec2a0 and branches on the sign of its result. Only on the negative-result path does it make a second call to an unnamed callee at 0xd9ec2bc with a1 = 0xdaefd10. After the ioctl a chain of branches compares an unknown value with 0, 1 and 2 (0xd9ec328 to 0xd9ec340), and the calls to `bzero` at 0xd9ec35c (a0+93544, 0x50 bytes), 0xd9ec3f8 (a0+93584, 0x14 bytes) and 0xd9ec418 (a0+93604, 0x14 bytes) come after that chain, so the facts do not show that all three run on one path. It returns 0 or 1. Role (from name): binding a context to the device. The facts do not show which return value goes with which ioctl outcome.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `RGBSendClippedBmFmTN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fc2b4 (748 bytes).
  `RGBSendClippedBmFmTN` reads a flag byte at a0+0xb8 and single-precision floats at offsets from 0x10 up to 0x188 (the facts give the offsets, not a base for each). It loads the context pointer from absolute 0x1010 and compares the word at [0x1010]+1416 with the constant 0x81fa at 0xd9fc2fc. The stores lie on both sides of that branch: across the whole routine the facts list 20 word stores and 75 single-precision float stores at +0x0, which are totals over both paths, not a count for one call. The base register of those stores is set to 0x10000 at 0xd9fc2c8, the same address the immediate-mode stubs below write to. It returns the context pointer. The facts contain no call at all. Role (from name): sending a clipped RGB bitmap to hardware, inferred only from the name and the stores.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyHyperpipeRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda0916c (132 bytes).
  `__glOdysseyHyperpipeRect` reads one word at a0+0x21ef0 and calls `__glOdysseyIoctl` at 0xda091c4 with request 0x6f640018, a stack buffer at sp-40 and a3 passed through as the fourth argument. It returns 0 or 1 after a zero test on the ioctl result, but the facts do not show which value goes with which outcome. The facts show no load from the stack buffer after the call, so the direction of the transfer is not established. Role (from name): a hyperpipe rectangle setting.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda091f0 (136 bytes).
  `__glOdysseyHyperpipeStereo` reads the same word at a0+0x21ef0 as the rectangle variant, and also loads one word before the call. It calls `__glOdysseyIoctl` at 0xda0924c with the same request code 0x6f640018, the same stack buffer at sp-40 and the same a3 pass-through as the entry at 0xda0916c, and returns 0 or 1 after a zero test on the result. The facts do not show whether the loaded word reaches the buffer passed to the call, so its purpose is unclear. Role (from name): a stereo setting; the facts do not confirm that.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyQueryHyperpipePixelAverage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda093b4 (132 bytes).
  `__glOdysseyQueryHyperpipePixelAverage` reads one word at a0+0x21ef0 and calls `__glOdysseyIoctl` at 0xda0940c with request 0x6f640016, a stack buffer at sp-40 and a3 passed through as the fourth argument. It returns 0 or 1 after a zero test on the ioctl result. As with the two entries above, the facts show no load from the stack buffer after the call. Role (from name): a query of a hyperpipe pixel average; the facts do not confirm the query reading.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Vertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7a80 (36 bytes).
  `__glOdyim_Vertex2d` writes one word and two single-precision floats to absolute 0x10000 and returns that address. It has no callee and no branches. The shape fits a command word followed by two float coordinates in a mapped buffer, but the facts do not say what the word is or whether 0x10000 is a hardware FIFO.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Vertex3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7c80 (48 bytes).
  `__glOdyim_Vertex3d` writes one word and three single-precision floats to absolute 0x10000 and returns that address. The name says double precision, and every store is a 32-bit `sw` or `swc1`. The facts show neither the source registers nor any conversion, so how the arguments reach the stores is not shown.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Vertex3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7d80 (56 bytes).
  `__glOdyim_Vertex3i` stores four words to absolute 0x10000 and returns that address, with no callee and no branches. Four integer stores fit three integer coordinates and one header word, but the facts show neither the source registers nor what the words mean.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Vertex4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad8040 (68 bytes).
  `__glOdyim_Vertex4i` stores five words to absolute 0x10000 and returns that address. Five stores fit four integer coordinates plus one header word, the same reading as the 3i entry above with one more store. The facts do not name the words.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_TexCoord3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaddb40 (48 bytes).
  `__glOdyim_TexCoord3d` writes one word and three single-precision floats to absolute 0x10000 and returns that address, the same shape as `__glOdyim_Vertex3d` at 0xdad7c80. The name says double precision, while the stores are 32-bit, so the same narrowing question applies and the facts do not settle it.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade240 (40 bytes).
  `__glOdyim_ScratchColor3b` writes two 8-byte doubles with `sdc1` to absolute 0x10000 and returns that address. Sixteen bytes do not map cleanly onto three byte components, so the packing of the values is not visible in the facts. Role (from name): a temporary color path, from the "Scratch" prefix only.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Color3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade300 (48 bytes).
  `__glOdyim_Color3d` writes one word and three single-precision floats to absolute 0x10000 and returns that address. Its stores match `__glOdyim_TexCoord3d` and `__glOdyim_Vertex3d`, with the same unresolved double-versus-float question in the name. The facts show neither the source registers nor the meaning of the header word.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade340 (48 bytes).
  `__glOdyim_ScratchColor3d` has the same shape as `__glOdyim_Color3d` at 0xdade300: one word and three single-precision floats to absolute 0x10000, then return of that address. Role (from name): a variant that does not depend on the caller's color state, from the "Scratch" prefix only; nothing in the facts shows that.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade540 (40 bytes).
  `__glOdyim_ScratchColor3i` writes two 8-byte doubles with `sdc1` to absolute 0x10000 and returns that address. Role (from name): three integers; two 8-byte stores hold 16 bytes, so the packing is not visible in the facts.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade640 (40 bytes).
  `__glOdyim_ScratchColor3s` writes two 8-byte `sdc1` stores to absolute 0x10000 and returns that address, the same shape as the 3i entry above. Role (from name): three shorts, which would be six bytes; the facts do not explain how they are packed into the two stores.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade840 (40 bytes).
  `__glOdyim_ScratchColor3ui` writes two 8-byte `sdc1` stores to absolute 0x10000 and returns that address, the same shape as the 3i and 3s entries. Role (from name): three unsigned integers; the facts do not show the packing.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade940 (40 bytes).
  `__glOdyim_ScratchColor3us` writes two 8-byte `sdc1` stores to absolute 0x10000 and returns that address, the same shape as the other 3-component scratch color entries. Role (from name): three unsigned shorts; the facts do not show how they are packed.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadea40 (44 bytes).
  `__glOdyim_ScratchColor4b` writes one 8-byte double with `sdc1` and three words to absolute 0x10000, then returns that address. Twenty bytes are stored. Role (from name): four byte components; the facts do not show how they are packed into those stores.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadec00 (68 bytes).
  `__glOdyim_ScratchColor4dv` reads four doubles from the argument block at a0 (offsets 0x0, 0x8, 0x10 and 0x18) with `ldc1`. It then writes one word and four single-precision floats to absolute 0x10000 and returns that address. The "dv" suffix fits a pointer to four double values, and the loads match that. The stores are 32-bit, and no conversion instruction appears in the facts, so any narrowing is not shown.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadedc0 (44 bytes).
  `__glOdyim_ScratchColor4i` writes one 8-byte `sdc1` and three words to absolute 0x10000 and returns that address, the same shape as the 4b entry above. Role (from name): four integers; the facts do not show how they are split across the stores.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadeec0 (44 bytes).
  `__glOdyim_ScratchColor4s` writes one 8-byte `sdc1` and three words to absolute 0x10000 and returns that address, the same shape as the 4b and 4i entries. Role (from name): four shorts; the facts do not show the packing.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)
