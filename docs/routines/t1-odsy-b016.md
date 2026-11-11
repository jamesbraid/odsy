# Routine readings from the IP30 ODSY GL library, 25 routines

Role statements for 25 routines from the ranked list of located, hardware-facing routines, positions 400 to 424. All 25 rendered entries passed the grader, and none were rejected. Each statement comes only from the registers, calls and constants in the rendered facts for that exact address. Callee names are the binary's own symbols, and the facts do not show what those callees do beyond their names. Absolute addresses such as 0x10000, 0x1010 and 0x1028 are named by their numeric value; the facts do not say what they are.

Binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`, for all 25 entries. Calls made through a register are counted but not resolved.

- `__glOdylc_TexCoord2i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9df1b0 (260 bytes).
  `__glOdylc_TexCoord2i` reads and writes a small block of words at absolute 0x1028, 0x1030 and 0x1034, which look like per-call bookkeeping. It reserves display-list space with `__glSPDlistSpace` (0xda0f8cc) at 0xd9df214, passing the count from 0x1028, and it branches on bit 0x4 of the 0x1030 word. The name suggests a two-integer texture coordinate in a display list, but the facts do not show which stored word holds the coordinate data.
  Grade: inferred.

- `__glOdylc_TexCoord3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9dfa24 (272 bytes).
  `__glOdylc_TexCoord3i` has the same shape as the 2i variant at 0xd9df1b0, using the same three absolute words and the same `__glSPDlistSpace` call at 0xd9dfa8c. Its threshold test compares 0x1028 against 4 or 5 where the 2i entry uses 3 or 4, which fits one more argument slot. That is a reading of the constants, not something the facts state.
  Grade: inferred.

- `DownsampleTextureThruHW` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9e335c (3136 bytes).
  `DownsampleTextureThruHW` loads a context pointer from absolute 0x1010 and then reads and writes many fields at fixed offsets from it, including 0x7c00, 0x7fb0, 0x9830 and 0x16960. It calls `__glOdysseyImageLogBase2` (0xd9d1eb0) twice, `ChooseSuitableBuzzTexModeBaseFmt` (0xd9e1dc8), `GetImageFmtEnumFromBuzzTexFormat` (0xd9e1d08), `__glOdysseyImageCalcFieldFormat` (0xd98f304) and `__glOdysseyValidateHardware` (0xd96ae20), which suggests a format choice and validation before the work. It stores 33 words and 14 single-precision floats to absolute 0x10000 in the blocks around 0xd9e38bc and 0xd9e3d70, so much of the data movement goes through that address. The name is the only evidence that it downsamples, and the facts do not explain the loop structure or the branch at 0xd9e3400, which compares a1 (0xde0 at that point) with the word at a0+12.
  Grade: inferred.

- `__glOdysseyTextureDeactivate` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9e4b04 (248 bytes).
  `__glOdysseyTextureDeactivate` reads two words from the context at a0+0x16420 and a0+0x16424 and an object pointer from a0+91164. It calls `__glOdysseyClosePMObjReference` (0xd9d9410) twice, at 0xd9e4b40 and 0xd9e4ba0, passing object fields and words from a0+91168 to a0+91180. A counter is compared with 0x10 at 0xd9e4b78 and again at 0xd9e4bd4, which suggests a 16-entry table, but the table size is not in the facts. The return value is either an unknown value or 0xffffffffbaadcade, a sign-extended constant that often marks uninitialized memory; that reading is a guess.
  Grade: inferred.

- `__glOdysseyDriverMakeCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9ec21c (880 bytes).
  `__glOdysseyDriverMakeCurrent` reads the context at a0 at offsets 0xce4, 0xd84, 0xc94, 0xd34 and 0x14, then writes 26 distinct word fields between 0x16d40 and 0x16db0. It calls `__glOdysseyIoctl` (0xd9eb890) with request 0x6f640008 at 0xd9ec2a0, branches on the sign of its result, and makes a second call to an unnamed callee at 0xd9ec2bc with a1 = 0xdaefd10. It clears three regions with `bzero` at 0xd9ec35c, 0xd9ec3f8 and 0xd9ec418 and returns 0 or 1. The name suggests binding a context to the device; the facts do not show which return value goes with which ioctl outcome.
  Grade: inferred.

- `RGBSendClippedBmFmTN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fc2b4 (748 bytes).
  `RGBSendClippedBmFmTN` reads a flag byte at a0+0xb8 and a group of single-precision floats at a0 offsets 0x10 to 0xc8. It loads the context pointer from absolute 0x1010 and compares the word at [0x1010]+1416 with the constant 0x81fa at 0xd9fc2fc, which may select a format path. It writes about 20 words and 75 single-precision floats to absolute 0x10000, the same address the immediate-mode stubs below write to, and returns the context pointer. The name suggests sending a clipped RGB bitmap to hardware, but the facts contain no call at all, so the transfer is inferred only from the stores.
  Grade: inferred.

- `__glOdysseyHyperpipeRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda0916c (132 bytes).
  `__glOdysseyHyperpipeRect` reads one word at a0+0x21ef0 and calls `__glOdysseyIoctl` at 0xda091c4 with request 0x6f640018, a stack buffer at sp-40 and a3 passed through. It returns 0 or 1 after a zero test on the ioctl result, but the facts do not show which value goes with which outcome. The name suggests a hyperpipe rectangle setting, and the facts show no load from the stack buffer after the call, so the direction of the transfer is not established.
  Grade: inferred.

- `__glOdysseyHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda091f0 (136 bytes).
  `__glOdysseyHyperpipeStereo` reads the same word at a0+0x21ef0 as the rectangle variant, and also loads a word from the block at a3 before the call. It calls `__glOdysseyIoctl` at 0xda0924c with the same request code 0x6f640018, the same stack buffer at sp-40 and the same a3 pass-through as the entry at 0xda0916c. The loaded word from a3 is not passed on in the call as far as the facts show, so its purpose is unclear. The name suggests a stereo setting; the facts do not confirm that.
  Grade: inferred.

- `__glOdysseyQueryHyperpipePixelAverage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda093b4 (132 bytes).
  `__glOdysseyQueryHyperpipePixelAverage` reads one word at a0+0x21ef0 and calls `__glOdysseyIoctl` at 0xda0940c with request 0x6f640016, a stack buffer at sp-40 and a3 passed through. It returns 0 or 1 after a zero test on the ioctl result. As with the two entries above, the facts show no load from the stack buffer after the call, so the name's "query" reading is not confirmed by the facts.
  Grade: inferred.

- `__glOdyim_Vertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7a80 (36 bytes).
  `__glOdyim_Vertex2d` writes one word and two single-precision floats to absolute 0x10000 and returns that address. It has no callee and no branches. The shape fits a command word followed by two float coordinates in a mapped buffer, but the facts do not say what the word is or whether 0x10000 is a hardware FIFO.
  Grade: inferred.

- `__glOdyim_Vertex3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7c80 (48 bytes).
  `__glOdyim_Vertex3d` writes one word and three single-precision floats to absolute 0x10000 and returns that address. The name says double precision, but every store is a 32-bit `sw` or `swc1`, and the facts show no double-precision source reaching them. Either the arguments are narrowed before the call or the name is historical; the facts cannot tell which.
  Grade: inferred.

- `__glOdyim_Vertex3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7d80 (56 bytes).
  `__glOdyim_Vertex3i` stores four words to absolute 0x10000 and returns that address, with no callee and no branches. Four integer stores fit three integer coordinates and one header word, but the facts show neither the source registers nor what the words mean.
  Grade: inferred.

- `__glOdyim_Vertex4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad8040 (68 bytes).
  `__glOdyim_Vertex4i` stores five words to absolute 0x10000 and returns that address. Five stores fit four integer coordinates plus one header word, the same reading as the 3i entry above with one more store. The facts do not name the words.
  Grade: inferred.

- `__glOdyim_TexCoord3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaddb40 (48 bytes).
  `__glOdyim_TexCoord3d` writes one word and three single-precision floats to absolute 0x10000 and returns that address, the same shape as `__glOdyim_Vertex3d` at 0xdad7c80. The name says double precision, while the stores are 32-bit, so the same narrowing question applies and the facts do not settle it.
  Grade: inferred.

- `__glOdyim_ScratchColor3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade240 (40 bytes).
  `__glOdyim_ScratchColor3b` writes two 8-byte doubles with `sdc1` to absolute 0x10000 and returns that address. Sixteen bytes do not map cleanly onto three byte components, so the packing of the values is not visible in the facts. The "Scratch" prefix suggests a temporary color path, which is a name-only reading.
  Grade: inferred.

- `__glOdyim_Color3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade300 (48 bytes).
  `__glOdyim_Color3d` writes one word and three single-precision floats to absolute 0x10000 and returns that address. Its stores match `__glOdyim_TexCoord3d` and `__glOdyim_Vertex3d`, with the same unresolved double-versus-float question in the name. The facts show neither the source registers nor the meaning of the header word.
  Grade: inferred.

- `__glOdyim_ScratchColor3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade340 (48 bytes).
  `__glOdyim_ScratchColor3d` has the same shape as `__glOdyim_Color3d` at 0xdade300: one word and three single-precision floats to absolute 0x10000, then return of that address. The "Scratch" prefix suggests a variant that does not depend on the caller's color state, but nothing in the facts shows that.
  Grade: inferred.

- `__glOdyim_ScratchColor3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade540 (40 bytes).
  `__glOdyim_ScratchColor3i` writes two 8-byte doubles with `sdc1` to absolute 0x10000 and returns that address. The 3i name suggests three integers, but two 8-byte stores hold 16 bytes, so the packing is not visible in the facts.
  Grade: inferred.

- `__glOdyim_ScratchColor3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade640 (40 bytes).
  `__glOdyim_ScratchColor3s` writes two 8-byte `sdc1` stores to absolute 0x10000 and returns that address, the same shape as the 3i entry above. The 3s name suggests three shorts, which would be six bytes, and the facts do not explain how they are packed into the two stores.
  Grade: inferred.

- `__glOdyim_ScratchColor3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade840 (40 bytes).
  `__glOdyim_ScratchColor3ui` writes two 8-byte `sdc1` stores to absolute 0x10000 and returns that address, the same shape as the 3i and 3s entries. The name suggests three unsigned integers, and the facts do not show the packing.
  Grade: inferred.

- `__glOdyim_ScratchColor3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdade940 (40 bytes).
  `__glOdyim_ScratchColor3us` writes two 8-byte `sdc1` stores to absolute 0x10000 and returns that address, the same shape as the other 3-component scratch color entries. The 3us name suggests three unsigned shorts, and the facts do not show how they are packed.
  Grade: inferred.

- `__glOdyim_ScratchColor4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadea40 (44 bytes).
  `__glOdyim_ScratchColor4b` writes one 8-byte double with `sdc1` and three words to absolute 0x10000, then returns that address. Twenty bytes are stored for what the name calls four byte components, and the facts do not show how the components are packed into those stores.
  Grade: inferred.

- `__glOdyim_ScratchColor4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadec00 (68 bytes).
  `__glOdyim_ScratchColor4dv` reads four doubles from the argument block at a0 (offsets 0x0, 0x8, 0x10 and 0x18) with `ldc1`. It then writes one word and four single-precision floats to absolute 0x10000 and returns that address. The "dv" suffix fits a pointer to four double values, and the loads match that. The stores are 32-bit, and no conversion instruction appears in the facts, so any narrowing is not shown.
  Grade: inferred.

- `__glOdyim_ScratchColor4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadedc0 (44 bytes).
  `__glOdyim_ScratchColor4i` writes one 8-byte `sdc1` and three words to absolute 0x10000 and returns that address, the same shape as the 4b entry above. The name suggests four integers, and the facts do not show how the four are split across the stores.
  Grade: inferred.

- `__glOdyim_ScratchColor4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadeec0 (44 bytes).
  `__glOdyim_ScratchColor4s` writes one 8-byte `sdc1` and three words to absolute 0x10000 and returns that address, the same shape as the 4b and 4i entries. The name suggests four shorts, and the facts do not show the packing.
  Grade: inferred.
