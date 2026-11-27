# Role readings: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`

Routine roles read from the whole body of each routine listed. The object is a 64-bit ELF, MIPS IV, big-endian (e_flags 0x30000002), so registers and loads are 64 bit. "Context" below means the current context pointer loaded from the absolute word at 0x1020 unless an entry says it is the first argument. Calls through `gp` offsets are named by their GOT slot because the target name does not come from the symbol table.

- `destroyScratchBufAccum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21940f0
  **Inferred.** Loads the context pointer from 0x1020 and calls the routine in the GOT slot at gp-0x7218 twice. The first call gets the descriptor at context +0x1441c with the count word at +0x14420; the second gets the descriptor at +0x14468 with the count word at +0x1446c. A zero return from either call makes the routine tail-call the routine in the GOT slot at gp-0x5130 with 0x505. When both calls succeed it returns the nonzero result of the second call.

- `initVisualNumComp` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2194510
  **Inferred.** Passes the word at context +0x14194 to the routine in the GOT slot at gp-0x7690 and treats the unsigned result as a switch index. Results of 7 or more return without a store. Smaller results jump through the table at gp-0x7eb8, and the cases store 1, 2, 3 or 4 at context +0x143d0. The case that reads the word at +0xeb4 stores 3 when that word is zero and 4 when it is not.

- `initAccumGfxImages` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21945d0
  **Inferred.** Writes 1 to the flag bytes at +0x14250, +0x1425a, +0x1425b, +0x14290, +0x1429a and +0x1429b, and to the words at +0x14254, +0x14288, +0x14294 and +0x142c8. It copies the word at +0xfd8 to +0x14270 and the word at +0xfdc to +0x14274, and stores 4 at +0x14264 and -3 at +0x14260. It calls the routine in the GOT slot at gp-0x7368 with the word at +0x19338, then stores the result minus one at +0x14278 and +0x1427c. A second call through the same slot, with the word at +0x1934c, stores its result minus one at +0x142b8 and +0x142bc.

- `initGeomForAccum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2194740
  **Inferred.** Leaf routine that clears the word at +0x143f4, the word at +0x14418 and the doublewords at +0x143f8, +0x14400, +0x14408 and +0x14410. It takes the floats at +0x141c8 and +0x141cc, adds the float at gp+0x8e8 to each, truncates to integers and converts back. The two base floats at +0x141c4 and +0x141c0 are stored unchanged, as copies at +0x143d4 through +0x143f0. The x and y differences from the base floats are stored as floats at +0x14400 and +0x14410 for x and at +0x14404 and +0x14414 for y.

- `__glOdysseyInitAccum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2199f60
  **Inferred.** Calls the routine in the GOT slot at gp-0x5370 with its own arguments first. It then reads the word at +0xdec of the second argument and branches on 0x10 or 0x18. Value 0x10 stores the doubleword at gp-0x7e30 at +0x141b8 of the second argument, stores a pointer built from the word at gp-0x7fe8 plus 0x77b0 at +0xa0 of the first argument, and stores 0x10 at +0x24 and the doubleword at gp-0x7e38 at +0xd0, both of the first argument; it returns 1. Value 0x18 stores the doubleword at gp-0x7e28 at +0x141b8, stores a pointer from gp-0x7fe0 minus 0x66c0 at +0xa0, clears the words at +0x14420, +0x14424, +0x1446c and +0x14470, and sets -1 at +0x1441c and +0x14468; it returns 1. Any other value returns 0.

- `AsyncPollDequeue` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x219a1c0
  **Inferred.** Pops the oldest entry from a ring of 1025 slots in the first argument. The head index is the word at +0x6018 and the tail index the word at +0x601c, and equal indices return 0. Each 24-byte slot holds a word at +0, a doubleword at +0x8 and a doubleword key at +0x10. When the second argument is below the key the routine returns 0 and leaves the ring alone. Otherwise it stores the word into the third argument and the doubleword at +0x8 into the fourth, advances the head modulo 1025 using the multiplier 0xffc00ffd shifted right by 10, and returns 1.

- `__glOdysseyAsyncCheck` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x219a270
  **Inferred.** ANDs the word at +0x820 of the first argument with the mask in the second argument and dispatches on the result. Masks 2, 4, 1 and 8 each use a counter and a limit. The counters are the words at first-argument offsets 0x285c4, 0x285c8, 0x285c0 and 0x285cc, and the limits are at +0xfa0, +0xfa4, +0xfa8 and +0xfac. A counter increases only while it is below its limit, and the routine returns 1 in that case. A counter at its limit reports 0x502 through the routine in the GOT slot at gp-0x5130 and returns 0. Any other masked value returns 1 without touching a counter.

- `__glOdyim_FinishAsyncSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x219a6d0
  **Inferred.** Checks the state word at 0x1030, and if it is 1 reports 0x502 through gp-0x5130 and returns 0. Otherwise it loops. Each pass calls the routine in the GOT slot at gp-0x6f0 with argument 0, then calls the routine whose address is at +0x908 of the object whose pointer is loaded from context +0x1ad8, passing the original first argument. The loop repeats while that second call returns zero and returns its nonzero result.

- `__glOdyim_PushAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x219cf40
  **Inferred.** Returns 0x502 through gp-0x5130 when the state word at 0x1030 is 1. Otherwise it forms the limit base plus 8 times the count word at +0x1024, where the base is the doubleword at +0x18d48. If the top pointer at +0x18d50 is not below that limit it reports 0x503 through gp-0x5130. Otherwise it calls the routine at 0x219c130 (PushAttributes) with the top pointer and the doubleword at +0x4e18, then stores top plus 8 at +0x18d50 and the doubleword at +0x4e18 plus 8 back at +0x4e18. It returns the context pointer.

- `__glOdyssey_CopyContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x219d020
  **Inferred.** Compares the second argument with the current context pointer at 0x1020. Only when they match does it call the routine at 0x219c130 (PushAttributes), passing the third argument as its first argument, the first argument plus 0x18d38 as the second and the first argument plus 0x18d40 as the third. The routine returns 1 in both cases and reports no error code.

- `__glOdysseyFreeAttributeState` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x219eee0
  **Inferred.** While the doubleword at +0x4e10 of the first argument is below the one at +0x4e18, it calls the routine at 0x219ee40 (__glOdyim_PopAttrib) and checks again. It then walks the 8-byte entries from the base at +0x18d48 of the first argument up to base plus 8 times the count word at +0x1024. Each nonzero entry is passed with the first argument to the function pointer at +0x18, and a zero entry ends the walk. The routine then calls that pointer once more with the first argument and the base, and clears the doubleword at +0x18d48.

- `__glOdyim_FrontFace` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a01f0
  **Inferred.** Returns 0x502 through gp-0x5130 when the state word at 0x1030 is 1, and reports 0x500 for any mode other than 0x900 or 0x901. Mode 0x900 sets bit 0x800000 in the word at context +0x9f4c, and mode 0x901 clears it. Both paths set bit 0x2 in the word at +0x18e54, store the mode at +0x2a0, set the state word at 0x1030 to 2, and set bit 0x4 in the word at +0x4714.

- `__glOdyim_PointSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a1500
  **Inferred.** Returns 0x502 through gp-0x5130 when the state word at 0x1030 is 1, and reports 0x501 when the float argument is not above 0.0. Otherwise it stores the float at context +0x278. The word at +0x280 becomes 1 when the argument, widened to double, is below the double at gp+0xb60, and the truncated sum of the argument and the double at gp+0xb70 otherwise. The float at +0x27c is the argument clamped from below to the float at +0x1004, or the float at gp+0x928 when the double at gp+0xb50 is below the argument. It sets bit 0x800 in the word at +0x18e58 and the state word at 0x1030 to 2.

- `__glOdyim_ShadeModel` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a1950
  **Inferred.** Sets the shading model for the current context. The mode in a0 must be 0x1d00 (flat) or 0x1d01 (smooth), and any other value reports 0x500 through `__glSetError`. A call made while the word at 0x1030 is 1 reports 0x502. On success the mode goes to context +0x670, bit 0 is set in the context word at +0x4714, bit 12 of the word at +0x9f4c is set for flat and cleared for smooth, bit 1 is set in the word at +0x18e54, and the word at 0x1030 becomes 2.

- `__glOdyim_StencilFunc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a1a30
  **Inferred.** Records the stencil comparison function, reference and mask. The function in a0 must lie between 0x200 and 0x207, otherwise 0x500 is reported. The reference in a1 is clamped to the range from zero up to the stencil mask, which is one shifted by the bit count at context +0xe00, minus one. The mask in a2 is ANDed with that same mask. The function goes to the word at +0x780, the clamped reference to the halfword at +0x786 and the masked value to the halfword at +0x788. The word at +0x9f7c takes the low three bits of the function in bits 25 to 27, the reference in bits 0 to 7 and the mask in bits 8 to 15. A call made while the word at 0x1030 is 1 reports 0x502. On success bit 5 is set in the word at +0x18e54 and 0x1030 becomes 2.

- `__glOdyim_StencilMask` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a1b70
  **Inferred.** Sets the stencil write mask. The value in a0 is ANDed with the all-ones mask of the stencil width and stored as a halfword at context +0x78a. Bits 12 to 19 of the word at +0x9fac then take that value. If the byte at +0xdea is zero, the field is written as zero instead. When bit 0 of the word at +0x9ec0 is clear and the masked value is neither zero nor the full width mask, the routine first calls the function pointer at context +0x20 with the context and a pointer, and after that call the field is written as the full width mask. A call made while the word at 0x1030 is 1 reports 0x502 through `__glSetError`. On success bit 7 is set in the word at +0x18e54 and 0x1030 becomes 2.

- `__glOdyim_StencilOp` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a1c90
  **Inferred.** Sets the stencil operations for stencil fail, depth fail and depth pass. The three arguments a0, a1 and a2 are checked in that order against 0, 0x1e00 to 0x1e03 and 0x150a, and an invalid value reports 0x500 through `__glSetError` with nothing stored. The raw values go to context +0x78c, +0x790 and +0x794. The mapped codes fill bits 22 to 24 (fail), bits 19 to 21 (depth fail) and bits 16 to 18 (depth pass) of the word at +0x9f7c. The mapping is 0x1e00 to 0, zero to 1, 0x1e01 to 2, 0x1e02 to 3, 0x1e03 to 4 and 0x150a to 5. A call made while the word at 0x1030 is 1 reports 0x502. On success bit 5 is set in the word at +0x18e54 and 0x1030 becomes 2.

- `__glOdyim_PolygonOffset` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a35b0
  **Inferred.** Forwards a polygon offset request to `__glOdyim_PolygonOffsetEXT` at 0x21a3610. The factor in f12 passes through unchanged. The units value in f13 is multiplied by the float at context +0x2ac, and the product replaces f13 for the call. A call made while the word at 0x1030 is 1 reports 0x502 through `__glSetError`. The routine writes nothing to the context itself.

- `__glOdysseyRenderBitmap` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a4bc0
  **Inferred.** Advances the raster position after a bitmap draw and applies the render-mode side effects. It returns at once when the byte at context +0x274 is zero. The render mode is the word at +0xdd4. In feedback mode (0x1c01) it calls `__glFeedbackBitmap` with the context and context +0x198. In render mode (0x1c00) it calls the routine at 0x21a40d0 when a2 is nonzero. Select mode (0x1c02) and any other value make no call. Then the float at a1+0x10 is added to the float at context +0x220, and the float at a1+0x14 times the integer at +0x1458, converted to float, is added to the float at +0x224.

- `__glOdyim_Bitmap` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a4ca0
  **Inferred.** Runs a bitmap request through the context hooks. The word at +0x18e58 selects the begin-state rule. When it is nonzero, the word at 0x1030 must be 0 or 2, and when it is zero, the word must be 2 or 0. Any other value reports 0x502 through `__glSetError`. The begin step runs in every case except a zero word at +0x18e58 with a zero word at 0x1030. The begin step sets the byte at +0x18e69 to 1, calls the function pointer at +0x4748 with the context, and writes 0 to 0x1030. After that a negative width in a0 or height in a1 reports 0x501. Otherwise the routine calls the function pointer at +0x4cc8 with the context, the width, the height, and the float arguments from f14 to f17 shifted up one float register each.

- `__glOdylc_Color3bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a4f00
  **Inferred.** Reads three signed bytes from the pointer in a0. The record is 16 bytes: opcode 0xc580cc0b, then each byte sign-extended into the words at offsets 4, 8 and 0xc.

- `__glOdylc_Color3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5040
  **Inferred.** Takes doubles in f12, f13 and f14 and converts each to single precision. The results go into a 16-byte record with opcode 0xc580cc0e, with x at offset 4, y at 8 and z at 0xc. The three doubles are spilled to the stack around the room call and reloaded afterwards.

- `__glOdylc_Color3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a51a0
  **Inferred.** Loads three doubles from the pointer in a0 at offsets 0, 8 and 0x10 and stores them as single-precision floats in a 16-byte record. The opcode is 0xc580cc0e.

- `__glOdylc_Color3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a52f0
  **Inferred.** Places the floats in f12, f13 and f14 into a 16-byte record under opcode 0xc580cc0e, with no conversion. The values land at offsets 4, 8 and 0xc in argument order.

- `__glOdylc_Color3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5450
  **Inferred.** Copies three single-precision floats from the pointer in a0 into a 16-byte record. The opcode is 0xc580cc0e and the floats are stored unchanged.

- `__glOdylc_Color3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5590
  **Inferred.** Stores the integer arguments a0, a1 and a2 as whole words after the opcode 0xc580cc0d. The record is 16 bytes and holds no masking.

- `__glOdylc_Color3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a56e0
  **Inferred.** Reads three 32-bit integers from the pointer in a0 and stores them as they are, behind opcode 0xc580cc0d in a 16-byte record.

- `__glOdylc_Color3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5970
  **Inferred.** Loads three 16-bit values from the pointer in a0 with a sign-extending halfword load and stores them as words. The record is 16 bytes with opcode 0xc580cc0c.

- `__glOdylc_Color3ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5ab0
  **Inferred.** Passes the integer arguments a0, a1 and a2 straight into a 16-byte record under opcode 0xc580cc08. The words are stored whole, so a value wider than a byte is not reduced.

- `__glOdylc_Color3ubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5c00
  **Inferred.** Reads three bytes from the pointer in a0 with a zero-extending load. Each goes into a word of a 16-byte record with opcode 0xc580cc08.

- `__glOdylc_Color3uiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5e90
  **Inferred.** Copies three unsigned 32-bit words from the pointer in a0 into a 16-byte record with opcode 0xc580cc0a.

- `__glOdylc_Color3usv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a6120
  **Inferred.** Reads three unsigned 16-bit values from a0 with a zero-extending halfword load and writes them as words after opcode 0xc580cc09. The record is 16 bytes.

- `__glOdylc_Color4bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a63c0
  **Inferred.** Reads four signed bytes from the pointer in a0 into a 20-byte record, one per word at offsets 4 through 0x10, after opcode 0xc580d012.

- `__glOdylc_Color4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a6510
  **Inferred.** Converts the doubles in f12, f13, f14 and f15 to single precision. The record is 20 bytes under opcode 0xc580d015, with the four values at offsets 4, 8, 0xc and 0x10 in that order.

- `__glOdylc_Color4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a6690
  **Inferred.** Reads four doubles from the pointer in a0, at offsets 0, 8, 0x10 and 0x18, rounds each to single precision and writes them to a 20-byte record with opcode 0xc580d015.

- `__glOdylc_Color4f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a67f0
  **Inferred.** Passes the floats f12 to f15 through unchanged into a 20-byte record. The opcode is 0xc580d015.

- `__glOdylc_Color4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a6960
  **Inferred.** Copies four floats from a0, at offsets 0, 4, 8 and 0xc, into a 20-byte record under opcode 0xc580d015.

- `__glOdylc_Color4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a6ab0
  **Inferred.** Writes the integer arguments a0 to a3 as whole words after opcode 0xc580d014. The record is 20 bytes and has the same padding rule as the other records.

- `__glOdylc_Color4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a6c10
  **Inferred.** Reads four 32-bit integers from a0 and stores them unchanged in a 20-byte record under opcode 0xc580d014.

- `__glOdylc_Color4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a6ec0
  **Inferred.** Sign-extends four 16-bit values from a0 into words, one each at offsets 4 through 0x10, under opcode 0xc580d013.

- `__glOdylc_Color4ubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a7170
  **Inferred.** Zero-extends four bytes from a0 into a 20-byte record under opcode 0xc580d00f.

- `__glOdylc_Color4ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a72c0
  **Inferred.** Places the unsigned arguments a0 to a3 into a 20-byte record as whole words, with opcode 0xc580d011 in the first word.

- `__glOdylc_Color4uiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a7420
  **Inferred.** Copies four unsigned 32-bit words from the pointer in a0 into a 20-byte record behind opcode 0xc580d011.

- `__glOdylc_Color4us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a7570
  **Inferred.** Stores the scalar arguments a0 to a3 as words in a 20-byte record. The opcode is 0xc580d010.

- `__glOdylc_Color4usv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a76d0
  **Inferred.** Reads four 16-bit values from a0 with a zero-extending halfword load and writes them as words after opcode 0xc580d010 in a 20-byte record.

- `__glOdylc_Indexd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a7820
  **Inferred.** Converts the double in f12 to single precision and writes it as an 8-byte record with opcode 0xc580c407. Bit 17 is set in the context word at +0x15e4 before the room check.

- `__glOdylc_Indexdv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a7950
  **Inferred.** Loads one double from a0, converts it to single precision and writes it into an 8-byte record with opcode 0xc580c407.

- `__glOdylc_Indexf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a7a80
  **Inferred.** Writes the single-precision value in f12 into an 8-byte record. The opcode is 0xc580c407 and the float is not converted.

- `__glOdylc_Indexfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a7bb0
  **Inferred.** Reads one float from a0 and writes it unchanged after opcode 0xc580c407 in an 8-byte record.

- `__glOdylc_Indexi` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a7ce0
  **Inferred.** Writes the integer in a0 as a whole word after opcode 0xc580c406, in an 8-byte record.

- `__glOdylc_Indexiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a7e10
  **Inferred.** Appends one integer low-level command to the command buffer, taking the value through the pointer in a0 with a word load. It writes the opcode word 0xc580c406 and then the value, eight bytes in all, at the buffer pointer kept in the global at 0x1058, which it advances past them. The word at 0x1060 gains two, the free-word count at 0x1048 loses the words written, and bit 0x20000 is set in the word at block+0x15e4. When the free count is short it calls `__glSPDlistSpace` with zero through the GOT, and a zero return makes it store the entry pointer minus 4 to 0x1058, add one to 0x1048 and return without writing.

- `__glOdylc_Indexs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a7f40
  **Inferred.** The same command emitter as the int-pointer form, with the value taken from a0 itself: the routine stores the whole register as the second word and never dereferences it. The opcode word is 0xc580c406, the pointer and count bookkeeping at 0x1058, 0x1048 and 0x1060 is identical, and the flush through `__glSPDlistSpace` happens on the same free-count test.

- `__glOdylc_Indexsv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a8070
  **Inferred.** Emits the opcode word 0xc580c406 followed by a short value read through the pointer in a0 with a halfword load, which sign-extends it. The buffer pointer at 0x1058 advances eight bytes, the count at 0x1060 gains two, and the free-word count at 0x1048 drops by the padding plus two. A short buffer reaches `__glSPDlistSpace` through the GOT, with the same zero-return rollback to 0x1058 and 0x1048 as the other variants.

- `__glOdylc_Indexub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a81a0
  **Inferred.** The unsigned-byte command: the value arrives in a0 and is stored directly as the second word after the 0xc580c406 opcode, with no load from memory. Pointer setup, the padding decision from bit 2 of the buffer pointer, and the write to 0x1058 and 0x1048 follow the shared emitter. The only route to `__glSPDlistSpace` is the short-buffer test.

- `__glOdylc_Indexubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a82d0
  **Inferred.** Takes the unsigned byte through the pointer in a0, using a zero-extending byte load, and emits it after the opcode word 0xc580c406. Eight bytes go to the buffer at the 0x1058 pointer, which is then advanced; 0x1060 is raised by two and 0x1048 is reduced by the words used. A zero return from `__glSPDlistSpace` restores the entry pointer minus four and bumps the free count, then the routine returns.

- `__glOdyim_SoftClear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a9610
  **Inferred.** Software clear entry that gates the call to `__glim_Clear`. It reads the state word at 0x1030 and the flag word at block+0x18e58. With the flag clear and the state at zero it calls `__glim_Clear` with the original argument and nothing else. A state of one reports 0x502 through `__glSetError` and returns, whatever the flag. A state of zero with the flag set, or a state of two, sets the byte at block+0x18e69 to one, calls the function pointer at block+0x4748 with the block as its argument, clears 0x1030, and then calls `__glim_Clear` with the original argument.

- `__glOdysseyValidate` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ac0b0
  **Inferred.** Re-validates a block in fixed order. If the word at block+0x18e58 is nonzero it calls `__glOdysseyValidateContext` with the block, and then if the word at block+0x4714 is nonzero it calls the pointer at block+0x47f0. When the word at block+0x18e54 is nonzero it calls `__glOdysseyValidateHardware`. Finally it clears the four flag bytes at block+0x18e68 through block+0x18e6b and returns.

- `HWInit` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21aec00
  **Inferred.** Brings up the hardware side of a block. It stores the doubleword 0x10000 at block+0x19190, calls the hook at block+0x50 and keeps its result at block+0x9e98, then calls the hook at block+0x58 and keeps that result at block+0x9e9c. A second result of minus one makes it return zero. Otherwise it runs `GetBoardInfo` and `__glOdysseyInitKernel` on the block; a zero from the kernel init calls the hook at block+0x60 and returns zero, and a nonzero init returns one.

- `DestroyContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21aa170
  **Inferred.** Tears down a block with the global current pointer at 0x1020 temporarily pointed at it. The old pointer is restored at exit, and zero is restored instead when the old pointer was this block. Two words at block+0x18d60 and block+0x18d68 each guard a call to the hook at block+0x18. It then calls, in order, `__glOdysseyImageClose`, `__glOdysseyAccumClose`, `__glOdysseyTextureDriverDestroy`, `__glOdysseyUnSharePM` and `__glFreeBufData`, each with the block. Two more guarded hook calls use block+0x18d38 and block+0x18d40, which are then cleared as doublewords. The hook at block+0x60 runs next; the word at block+0x9e9c is zeroed in the delay slot of a call to the routine at 0x21aa0f0, which has no symbol in this table.

- `BindHyperpipe` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b0510
  **Inferred.** Hyperpipe bind selector. Requested index -1 unbinds: it passes the current index, read from block+0x285d8, to the `__glOdysseyUnbindHyperpipe` GOT slot and returns without storing. Any other index goes to `__glOdysseyBindHyperpipe` with the same index, and only after that call returns is the index written to block+0x285d8.

- `QueryHyperpipeBestAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b0590
  **Inferred.** Forwards a best-rectangle query for the current hyperpipe. It reads the index at block+0x285d8, returns 0x5c when that index is negative, and returns 0x5c for any query selector other than one in a2. For selector one it calls the routine with the remaining arguments to `__glOdysseyQueryHyperpipeBestRect`, moving each argument one slot right (a2 from a3, a3 from t0, t0 from t1).

- `QueryHyperpipeAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b0610
  **Inferred.** Dispatches a hyperpipe attribute query on the selector in a2. Selector one goes to `__glOdysseyQueryHyperpipeRect` and two to `__glOdysseyQueryHyperpipeLimit`, each receiving the original a3 in a2. Selector three goes to `__glOdysseyQueryHyperpipeStereo` and four to `__glOdysseyQueryHyperpipePixelAverage`, which receive the saved original a3 in a2 instead. Any other selector returns 0x5c. The callee's return value is passed back unchanged, and no index check happens on this path.

- `HyperpipeAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b06e0
  **Inferred.** Dispatches a hyperpipe attribute operation with the same selector scheme as the query dispatcher. It rejects a negative current index at block+0x285d8 with 0x5c. Selectors one and three forward the original a3 as a2 to `__glOdysseyHyperpipeRect` and `__glOdysseyHyperpipeStereo`; selector four forwards the saved original to `__glOdysseyHyperpipePixelAverage`. Any other selector returns 0x5c, and the callee's return value is returned as is.

- `setCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b4600
  **Inferred.** Reloads the material state of the structure in a1 into the function table that the pointer at a0+0x1ad8 names. It makes twelve calls through the table entry at +0x100, with face 0x404 and then 0x405 in a0, the GL material names 0x1200, 0x1201, 0x1202, 0x1600, 0x1601 and 0x1603 in a1, and a block-relative address in a2. The front-face addresses run from a1+0x34 up to block+0x78 and the back-face ones from a1+0x84 up to a1+0xc8. It then calls the table entries at +0xbb8 with a1, +0xc28 with a1+0x10, +0xc88 with a1+0x14 and +0xd88 with a1+0x20, and finally tail-jumps through +0x50 with a1+0x30.

- `__glOdyle_TexSubImage3DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b56f0
  **Inferred.** Calls through the pointer stored at absolute 0x16b8 with eight argument words copied from the record at a0: a0 to a7 receive the words at a0+0 through a0+0x1c, and two stack words come from a0+0x20 and a0+0x24. Before that call it saves eleven context words at context +0x594 through +0x5bc in its frame, then writes the eleven words of the table at `__glOdyssey_InternalUnpack` (0x23378f8, whose address comes from a GOT slot) into those same context slots. After the call it restores the saved words. The return value is a0 plus the word at a0+0x28 rounded up to a multiple of 8, plus 48; the callee's own result is discarded.

- `__glOdyim_GetListParameterfvSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b7020
  **Inferred.** Returns one float from a names-table record. If the word at 0x1030 is 1 it reports 0x502 through `__glSetError`. If a1 is not 0x8182 it reports 0x500. If a0 is zero it reports 0x501. Otherwise it calls `__glNamesLockData` with the context, the word at context +0x14d0 and a0, and when that returns a non-null record it loads the float at record +0x48 and stores it through the pointer in a2, in the delay slot of the `__glNamesUnlockData` call that releases the record. A null record leaves a2 untouched.

- `pack_ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b66b0
  **Established.** Copies the low byte of each 32-bit word from the source at a1 into consecutive bytes at a2, for a0 words. An odd count takes the first word alone, and the rest go in pairs with the source advancing 8 bytes per pair. A zero count returns at once. It writes nothing else and returns no value.

- `pack_us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b6720
  **Established.** The halfword form of `pack_ub`. Each 32-bit source word at a1 contributes its low 16 bits as two bytes at a2, so the destination advances 2 bytes per word, with the same odd-count prefix and pair loop. The source advances 4 bytes per word.

- `__glOdysplc_CallList` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9010
  **Established.** Zeroes the byte at context +0x18ed0 in the delay slot of the call, then calls `__glsplc_CallList` with a0 to a3 as they arrived. The callee's return value is returned unchanged.

- `__glOdysplc_CallLists` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9060
  **Established.** Writes zero to the context byte at +0x18ed0 and then calls `__glsplc_CallLists` through its GOT slot. The four argument registers reach the callee as received, and the 16-byte frame keeps only ra and gp.

- `__glOdysplc_PopAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b90b0
  **Established.** On entry it reads the context pointer at 0x1020, clears the byte at context +0x18ed0, and calls `__glsplc_PopAttrib` with a0 to a3 untouched.

- `__glOdysplc_EvalCoord1d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9100
  **Established.** A zero store to context +0x18ed0 comes first, made in the call's delay slot. Then `__glsplc_EvalCoord1d` runs with the arguments a0 to a3 passed through, and the routine returns its result.

- `__glOdysplc_EvalCoord1dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9150
  **Established.** Clears the byte at context +0x18ed0, then forwards a0 to a3 to `__glsplc_EvalCoord1dv`. Nothing else is stored.

- `__glOdysplc_EvalCoord1f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b91a0
  **Established.** Its only own store is a zero byte at context +0x18ed0, issued before `__glsplc_EvalCoord1f` is called with the caller's a0 to a3.

- `__glOdysplc_EvalCoord1fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b91f0
  **Established.** The argument registers a0 to a3 are not modified. The context byte at +0x18ed0 is cleared, and `__glsplc_EvalCoord1fv` is the callee.

- `__glOdysplc_EvalCoord2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9240
  **Established.** The context byte at +0x18ed0 is set to zero, and then `__glsplc_EvalCoord2d` is called with a0 to a3 as received. The 16-byte frame saves ra and gp.

- `__glOdysplc_EvalCoord2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9290
  **Established.** Reads the context pointer from 0x1020, writes zero at context +0x18ed0, and calls `__glsplc_EvalCoord2dv` with the four argument registers unchanged.

- `__glOdysplc_EvalCoord2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b92e0
  **Established.** A byte store of zero to context +0x18ed0 sits in the delay slot of the call to `__glsplc_EvalCoord2f`. The callee receives a0 to a3 as the caller passed them.

- `__glOdysplc_EvalCoord2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9330
  **Established.** Clears context +0x18ed0 and passes a0 to a3 on to `__glsplc_EvalCoord2fv`. Its return value is the callee's return value.

- `__glOdysplc_EvalMesh1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9380
  **Established.** Before `__glsplc_EvalMesh1` runs, the routine stores zero at context +0x18ed0 and leaves a0 to a3 as they were on entry.

- `__glOdysplc_EvalMesh2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b93d0
  **Established.** Writes zero to the byte at context +0x18ed0, then calls `__glsplc_EvalMesh2`. The four argument registers are forwarded without change.

- `__glOdysplc_EvalPoint1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9420
  **Established.** The one side effect is a zero byte at context +0x18ed0, cleared before the call to `__glsplc_EvalPoint1` with a0 to a3 as received.

- `RemoveIlists` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b8bc0
  **Inferred.** Trims a count stored in the context word at +0x15f0. When a0 is below that count, it calls the routine pointer at context +0x10 with the context, the list pointer at context +0x15e8, the remaining count (the stored count minus a0) shifted left by four, and a0 in a4. On return it stores the remaining count back at +0x15f0 and the callee's return value at +0x15e8. When a0 is not below the count it returns at once without a call.

- `__glOdysplc_EvalPoint2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9470
  **Established.** Clears the byte at context+0x18ed0 in the jump's delay slot, then enters `__glsplc_EvalPoint2` through the GOT slot at gp-0x2270. Argument registers a0 to a7 pass through untouched.

- `__glOdysplc_Frustum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b94c0
  **Established.** Spills $ra and $gp into a 16-byte frame and zeroes the byte at context+0x18ed0. It then calls `__glsplc_Frustum` through gp-0x21f0 and returns the callee's $v0 unchanged.

- `__glOdysplc_Ortho` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9510
  **Established.** `__glsplc_Ortho` is reached through gp-0x21b8, after the byte at context+0x18ed0 is cleared. The stub adds no arguments of its own.

- `__glOdysplc_LoadIdentity` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9560
  **Established.** Hands off to `__glsplc_LoadIdentity` (GOT gp-0x21e8) once the context byte at +0x18ed0 has been zeroed. Only $ra and $gp are saved around the call.

- `__glOdysplc_MultMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9650
  **Established.** The byte cleared at context+0x18ed0 is addressed from the pointer at absolute 0x1020. Afterwards the stub calls `__glsplc_MultMatrixf` at gp-0x21c8.

- `__glOdysplc_MultMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b96a0
  **Established.** Stores zero into the context byte at +0x18ed0, then calls `__glsplc_MultMatrixd` through gp-0x21c0 and restores $ra and $gp on return.

- `__glOdysplc_PopMatrix` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b96f0
  **Established.** `__glsplc_PopMatrix` is the callee, reached via gp-0x21b0 after the byte at context+0x18ed0 is cleared. The return value passes back unchanged.

- `__glOdysplc_Rotated` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9740
  **Established.** Clears context+0x18ed0 and calls `__glsplc_Rotated` at gp-0x21a0. The stub writes neither the double-precision argument registers nor any stack slot the caller owns.

- `__glOdysplc_Rotatef` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9790
  **Established.** Before `__glsplc_Rotatef` (gp-0x2198) runs, the byte at context+0x18ed0 is set to zero through the pointer at absolute 0x1020.

- `__glOdysplc_Scaled` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b97e0
  **Established.** A zero store to the byte at context+0x18ed0 sits in the delay slot of the jump to `__glsplc_Scaled`, reached through gp-0x2190.

- `__glOdysplc_Scalef` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9830
  **Established.** Zeroes the context byte at +0x18ed0 and calls `__glsplc_Scalef` (gp-0x2188), saving only $ra and $gp.

- `__glOdysplc_Translated` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9880
  **Established.** Writes zero to the byte at context+0x18ed0 and then calls `__glsplc_Translated` through the GOT at gp-0x2180.

- `__glOdysplc_Translatef` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b98d0
  **Established.** Forwards to `__glsplc_Translatef` at gp-0x2178 after a zero store to context+0x18ed0.

- `__glOdysplc_Viewport` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9920
  **Established.** Context+0x18ed0 is zeroed first, then the stub calls `__glsplc_Viewport` through gp-0x2170.

- `__glOdysplc_DrawElements` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9970
  **Established.** The byte at context+0x18ed0 is cleared before `__glsplc_DrawElements` is called through gp-0x6188.

- `__glOdysplc_DrawArraysEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b99c0
  **Established.** Calls `__glsplc_DrawArraysEXT` (gp-0x6190) after zeroing the byte at context+0x18ed0 through the absolute-0x1020 pointer.

- `__glOdyim_ArrayElementEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9a10
  **Established.** This stub calls `__glim_ArrayElementEXT` (gp-0x39d0) rather than a splc routine, but it clears the same byte at context+0x18ed0 first.

- `ExecuteDlist` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9b00
  **Inferred.** Runs one display-list node, the object at the doubleword a1+0x28. It stores the node's first word masked with 3 at a0+0x18ee8 and the same word masked with 0x1c at a0+0x18eec, stores the node pointer at a0+0x18f00 and node+4 at a0+0x18ef0, and sets -1 at a0+0x18f08. It clears the bytes at a0+0x18ef8, +0x18efa and +0x18efb, then calls `__glSPInterpret` (gp-0xfb0) with a0 set to the doubleword at a1+0x20 and a1 left as the caller's. After the call, a zero byte at a0+0x18efb returns at once. If that byte is set and the byte at a0+0x18efa is zero, the node's +0x40 byte becomes 1 and four words from a0+0xb908 to a0+0xb914 are copied to node+0x30 to +0x3c. If the byte at +0x18efa is set, the node's +0x40 byte is cleared instead.

- `ExecuteDlistNomem` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9c00
  **Inferred.** Reports GL_OUT_OF_MEMORY (0x505) through `__glSetError` (GOT gp-0x5130) and returns. A 16-byte frame holds $ra and $gp across the call, and the caller's arguments are not used.

- `makeDLState` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9c40
  **Inferred.** Allocates a 0x44-byte display-list state object by calling the function pointer at a0+0x1570 with (a0, 0x44), and stores the result at block+0x28 (block is a1). A NULL result returns at once. Otherwise it reads the byte at a0+0x18ed0: when that byte is zero, it clears the new object's +0x28 byte and jumps to the tail. When the byte is set, it compares the unsigned word at a0+0x18ed4 with the word at a0+0x16488 and takes the same clearing path if the first is smaller. Otherwise it updates the float values at a0+0x18e80 to +0x18ecc with compare-and-store steps, copies eleven words from a0+0x18eac through a0+0x18ed4 into the object at +4 to +0x2c, and clears the object's +0x40 byte. The tail writes ((word at block+0x38) >> 16) & 0x1f into the object's first word and returns.

- `__glOdysseySPBalloc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9e10
  **Inferred.** Allocates a block of words through the function pointer stored at the first doubleword of the pool object in a0. The word count is read from *a1; a count below 0x400 (unsigned compare) is raised to 0x400 and written back to *a1. The request size passed to the allocator is four times the count, and a0 is passed through unchanged.

- `__glOdysseySPBfree` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9e60
  **Inferred.** Releases through the free routine stored at a0+0x18. It loads that doubleword, calls it with a0 and a1 unchanged, and saves only $ra and $gp in a 16-byte frame around the call.

- `__glOdysseySPCompMachdep` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9ea0
  **Inferred.** Calls `makeDLState` (0x21b9c40) with the caller's a0 and a1, keeping a1 in s0. Afterwards it reads the object pointer at s0+0x28. When that pointer is non-NULL it stores `__glSPInterpret`'s caller-side executor, `ExecuteDlist` (0x21b9b00), at s0+0x10. When the pointer is NULL it stores `ExecuteDlistNomem` (0x21b9c00) at s0+0x10 instead. Both addresses come from the link-time constant in the GOT slot at gp-0x7fd0 (0x21c0000) minus an immediate.

- `__glOdyim_EvalMesh1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ba130
  **Inferred.** Reads the state word at absolute address 0x1030. Zero goes straight to the mode dispatch; two calls the context function pointer at ctx+0x4748 with the context as a0 and then clears the word at 0x1030; any other value reports 0x502 through `__glSetError` and returns. The dispatch on a0 sends mode 0x1b01 (GL_LINE) to `__glOdysseyEvalMesh1Line` (0x21c0650) and mode 0x1b00 (GL_POINT) to `__glOdysseyEvalMesh1Point` (0x21c0780), each with the saved a1 and a2. Any other mode reports 0x500 through `__glSetError`.

- `__glOdyim_EvalMesh2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ba270
  **Inferred.** Uses the same 0x1030 state check and the same 0x502 and 0x4748 call as `__glOdyim_EvalMesh1`. The dispatch on the mode in a0 sends 0x1b02 (GL_FILL) to `__glOdysseyEvalMesh2Fill` (0x21c09e0), 0x1b01 (GL_LINE) to `__glOdysseyEvalMesh2Line` (0x21c0eb0) and 0x1b00 (GL_POINT) to `__glOdysseyEvalMesh2Point` (0x21c0cd0). The three helpers receive the saved a1 as their second argument, the saved a3 as their third, the saved a2 as their fourth, and the fifth argument register (t0) unchanged. Any other mode reports 0x500.

- `__glOdyim_EvalPoint2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ba390
  **Inferred.** Works out two float coordinates from the context block and calls `__glOdysseyDoEvalCoord2` (0x21c05c0) with the context as a0. The first coordinate starts from the float at context+0x8a4 and ends at the float at +0x8a8, over the word at +0x8b0 steps. If a0 equals that word it takes the end float; otherwise it adds a0 times (end minus start) divided by the step count. The second coordinate uses the floats at +0x8b4 and +0x8b8 over the word at +0x8c0 steps and the caller's a1, with the same equal-count rule.

- `__glOdysseyDoEvalCoord2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c05c0
  **Inferred.** Brackets one evaluator call with a state save and restore. It calls `GetCurrentState` (0x21baef0) with a0 = the context, a1 = 2 and a2 = a stack buffer. It then calls the unnamed routine at 0x21c0000 with a0 = the context, f13 and f14 as the caller passed them, and a3 pointing at a second stack buffer at sp+0x48. Last, it calls `RestoreCurrentState` (0x21bb180) with the context and the first stack buffer.

- `RestoreCurrentState` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21bb180
  **Inferred.** Reads the flags word at *a1 and restores the attribute groups it selects through the dispatch table pointer at context+0x1ad8. Bit 1 calls the entry at +0xc28 with a0 = a1+4. Bit 0 calls the entry at +0xbb8 with a0 = a1+4, but only when bit 1 is clear. Bit 3 calls the entry at +0xd88 with a0 = a1+0x24, and bit 2 calls the entry at +0xc88 with a0 = a1+0x14. The bit 3 and bit 2 calls follow the bit 1 call in that order.

- `CubicBezierFitConstant` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c3b60
  **Inferred.** Writes the coefficients of a constant cubic. The float at offset 4 of the input array in a0 becomes element 0 of the output array in a1, and the zero in f1 fills elements 1, 2 and 3 at offsets 4, 8 and 0xc. It is a leaf routine with no branches and no calls.

- `CubicBezierFitLinear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c3b80
  **Inferred.** Writes the coefficients of a linear segment. Element 1 of the input in a0 goes to output element 0, and the difference of input elements 3 and 1 (computed by sub.s into f0) goes to output element 1. Output elements 2 and 3 are set to 0.0 from f2. Leaf routine, no calls.

- `Phi` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c3bb0
  **Inferred.** Evaluates one basis polynomial, selected by the integer in a0, at the float x in f13. Selector 0 returns the float at gp+0x8e8 and ignores x. Selector 1 returns x plus the double at gp+0xbf0. Selector 2 returns (x + gp+0xc08) times (x + gp+0xc10). Selector 3 returns (x + gp+0xbf0) times (x + gp+0xbf8) times (x + gp+0xc00). The products run in double and round to single on return. Any other selector returns 0.0. The gp-relative constants are double slots that the disassembly addresses without giving values.

- `Det3` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c3c40
  **Inferred.** Returns the determinant of a 3x3 matrix read in row-major order. Elements 0 to 7 arrive in f12 to f19, and element 8 is the first stack argument, loaded from the caller's sp+0. The result is m0*(m4*m8 - m5*m7) - m1*(m3*m8 - m5*m6) + m2*(m3*m7 - m4*m6), computed in single precision with msub.s and madd.s and returned in f0. The routine sets up and drops a 0x40-byte frame.

- `__glOdyim_Fogf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c5220
  **Inferred.** Single-float fog setter that forwards to the vector form. The float in f13 is spilled to sp+0x18. Names 0xb61 through 0xb65 in a0 call `__glOdyim_Fogfv` at 0x21c4de0 with a0 unchanged and a1 set to sp+0x18. Any other name sets a0 to 0x500 and calls the reporter in the gp slot at -0x5130.

- `__glOdyim_Fogi` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c5700
  **Inferred.** Integer fog setter. The int in a1 is spilled to sp+0x1c. For names 0xb61 through 0xb65 it passes a0 and a pointer to that slot to `__glOdyim_Fogiv` at 0x21c52a0. Other names take the error path: a0 becomes 0x500 and the gp slot at -0x5130 is called.

- `__glOdyim_FragmentLightfSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c6470
  **Inferred.** Sets one float fragment-light parameter. The name in a1 must be 0x1205 through 0x1209. Then a0 and a1 pass through unchanged to `__glOdyim_FragmentLightfvSGIX` at 0x21c5ee0, with a2 pointing at the float in f14 spilled to sp+0x20. Any other name sets a0 to 0x500 and calls the reporter in the gp slot at -0x5130.

- `__glOdyim_FragmentLightiSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c6ad0
  **Inferred.** Integer form of the fragment-light setter. The same name check applies to a1 (0x1205 through 0x1209). The int in a2 is spilled to sp+0x24, and a0, a1 and a pointer to that slot go to `__glOdyim_FragmentLightivSGIX` at 0x21c6500. Other names set a0 to 0x500 and call the gp-0x5130 reporter.

- `__glOdyim_FragmentLightModelfSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c6e30
  **Inferred.** Float light-model setter. The float in f13 is spilled to sp+0x18. Selectors 0x8408, 0x8409 and 0x840b in a0 forward a0 and a pointer to the spilled float to `__glOdyim_FragmentLightModelfvSGIX` at 0x21c6b50. Any other selector reports 0x500 through the gp-0x5130 slot and stores nothing.

- `__glOdyim_FragmentLightModeliSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c7100
  **Inferred.** Integer light-model setter over the same selectors, 0x8408, 0x8409 and 0x840b. The int in a1 is spilled to sp+0x1c, and a0 and that pointer go to `__glOdyim_FragmentLightModelivSGIX` at 0x21c6ea0. Other selectors take the 0x500 error path through gp-0x5130.

- `__glOdyim_FragmentMaterialfSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c85c0
  **Inferred.** Float material setter, and only a1 = 0x1601 is accepted. The float in f14 is spilled to sp+0x20. With a1 equal to 0x1601 the routine calls `__glOdyim_FragmentMaterialfvSGIX` at 0x21c84b0 with a0, a1 and a pointer to the spilled float. Otherwise it returns after the 0x500 report through gp-0x5130.

- `__glOdyim_FragmentMaterialiSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c8ba0
  **Inferred.** Integer material setter with the same a1 = 0x1601 gate. The int in a2 is spilled to sp+0x24 and the call goes to `__glOdyim_FragmentMaterialivSGIX` at 0x21c8a90 with a pointer to that slot. Any other a1 reaches the reporter in gp-0x5130 with a0 set to 0x500.

- `__glOdyim_LightEnviSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c8d50
  **Inferred.** Sets the fragment light-environment mode in the current context. If the word at absolute 0x1030 is 1 the routine reports 0x502 through gp-0x5130 and stops. A0 must be 0x8407, and a1 must be 0x104, 0x1e01 or 0x2100; any other value reports 0x500. On success the pointer at absolute 0x1020 gives a context base in a3. The routine stores a1 at a3+0x18a20 and ORs 0x80 into the word at a3+0x18e54, then writes 2 to the word at absolute 0x1030.

- `__glOdyim_GetClipPlane` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c9690
  **Inferred.** Returns one clip plane equation as four doubles. A state word at 0x1030 equal to 1 makes the routine report 0x502 through `__glSetError`, and an index in a0 outside 0x3000 to 0x3005 reports 0x500. The plane table pointer at context +0x7d8 is indexed by a0 times 16 minus 0x30000, and four single-precision floats are widened to doubles and written to a1 at offsets 0, 8, 0x10 and 0x18.

- `__glOdyGetFromShadow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c9ff0
  **Inferred.** Fetches a shadow entry for the index in a0. A doubleword is read from absolute address 0x192e0 plus a0, and `__glOdyGetFromHardware` is called with a0. A negative return from that call is passed back unchanged. Otherwise `__glOdyDecodeShadowFormat` runs with the entry plus 20 times the saved a2 as a0, with a1 and a2 reloaded from the saved a3 and a4, and the routine returns that call's v0.

- `__glOdyim_GetIntegerv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ca980
  **Inferred.** Forwards to `__glOdysseyDoGet` with a0 and a1 untouched, a2 set to the type code 3, and a3 set to a table pointer formed from a GOT data entry plus 0x12a8. It keeps no state and checks nothing itself.

- `__glOdyim_GetBooleanv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ca9c0
  **Inferred.** Hands the same arguments to `__glOdysseyDoGet` as the integer getter does, except that a2 carries the code 4 and the table pointer in a3 is the GOT data entry plus 0x12b8.

- `__glOdyim_GetMaterialfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21cb720
  **Inferred.** Answers a material query from tracked state when that state is current. Bit 0x80 of the word at context +0x808 must be set, or the query goes to `__glim_GetMaterialfv`. With the bit set, the face in a0 must equal the word at +0x668, or that word must be 0x408 and a0 must be 0x404 or 0x405. The property in a1 must equal the word at +0x66c, or that word must be 0x1602 and a1 must be 0x1200 or 0x1201. A match calls the function at vtable pointer +0x1ad8, slot +0x3e0, with a0 = 0xb00 and a1 = a2. Any miss falls back to `__glim_GetMaterialfv`.

- `__glOdyim_GetMaterialiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21cb7e0
  **Inferred.** Integer twin of the float material query, with the same gate and the same face and property matching rules. Two things differ: the miss path calls `__glim_GetMaterialiv`, and a match dispatches through slot +0x3e8 of the vtable at +0x1ad8 rather than +0x3e0.

- `__glOdyim_lmcolor` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21cc680
  **Inferred.** Sets one control bit from the flag in a0. A value of 1 sets bit 0 of the word at context +0x9e88, and any other value clears it. In both cases bit 0 of the word at +0x4714 is set and the state word at 0x1030 becomes 2. The routine never reports an error.

- `__glOdyim_FullScreen` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21cc6e0
  **Inferred.** Records a full-screen flag and then issues request 0x3f1 through `__glOdysseyIoctl`. A nonzero a1 stores 1 at the word at context +0x18e78, and a zero a1 stores 0 there. Both paths build the same six-field block on the stack for the ioctl: the word at +0x9e9c, the value 2, a byte 6, the value 3, the input a0 at offset 0x10, and the word at +0x9e9c again at 0x14. The flag a1 is stored at offset 0x18.

- `__glOdysseyImageCalcFieldFormat` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21cd410
  **Inferred.** Maps an image format index to a small code. Indices from 18 up return -1. Smaller indices jump through an 18-entry table of code addresses in read-only data, at the pointer from a GOT data entry plus 0x1368 plus 8 times the index. The table sends 0 to 5 to 2, 6 and 9 to 3, 7, 10, 12 and 13 to 5, 8 and 11 to 6, 14 and 15 to -1, and 16 and 17 to 0.

- `__glOdyim_PixelZoom` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ce940
  **Inferred.** Stores the x and y pixel zoom factors. When the state word at 0x1030 is 1 the routine calls `__glSetError` with 0x502 and stores nothing. Otherwise the float in f12 goes to context +0x398, the float in f13 goes to +0x39c, bit 4 is ORed into the word at +0x4714, and the state word at 0x1030 becomes 2.

- `__glOdyim_PixelTransferf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ce9b0
  **Inferred.** Sets gp and tail-calls `__glim_PixelTransferf` through the GOT with its arguments unchanged. It adds no logic of its own.

- `__glOdyim_PixelTransferi` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ce9f0
  **Inferred.** Takes an integer value in a1, converts it to single precision in f13, and calls `__glOdyim_PixelTransferf` with a0 unchanged. The conversion sits in the delay slot of the call, so the callee receives the float.

- `__glOdysseyGetSeparableFilter` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d0290
  **Inferred.** Calls `__glSlowPickGetSeparableFilter` while the pointer at context +0x4b8 is advanced past the filter storage. The advance is 4 times the product of the words at +0x474, +0x4a8 and +0x4ac. The old pointer is saved on the stack and written back to +0x4b8 after the call returns.

- `__glOdyim_ConvolutionParameterfvEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d0830
  **Inferred.** Stores a float-array or integer parameter into the filter record that `__glOdysseyGetFilter` returns for the target. A mode word of 1 reports 0x502 through `__glSetError`. A null filter reports 0x500. The float pname 0x8014 copies four floats from the params pointer to filter +0x10, 0x8015 copies them to +0x20, and 0x8154 copies them to +0x30. For 0x8013 the float at the params pointer is truncated to an integer and must equal one of 0x8016, 0x8150, 0x8151, 0x8152 or 0x8153; the matched value is stored at filter +4. Any other pname reports 0x500.

- `__glOdyim_ConvolutionParameterfEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d0a10
  **Inferred.** Scalar float entry for the convolution setters. It spills the float in f14 to its frame and accepts only the pname 0x8013. For that value it calls `__glOdyim_ConvolutionParameterfvEXT` at 0x21d0830 with a0 and a1 unchanged and a2 set to the spilled float's address, then restores its frame. Any other pname reports 0x500 through `__glSetError`.

- `__glOdyim_ConvolutionParameteriEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d0c80
  **Inferred.** Integer counterpart of the float scalar entry. The integer in a2 goes to the frame at offset 0. Pname 0x8013 passes the address of that word to `__glOdyim_ConvolutionParameterivEXT` at 0x21d0a70, and every other pname reports 0x500.

- `__glOdysseyDrawPixels` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d2160
  **Inferred.** Wrapper around `__glOdyim_DrawPixels` at 0x21cd8a0 that keeps its own state pointer in a0 and forwards the remaining arguments one register down: a0 gets the caller's a1, a1 gets a2, a2 gets a3, a3 gets the caller's t0, and t0 gets t1. When register t2 is nonzero it first saves eleven words from state +0x594 through +0x5bc into its frame, copies eleven words from the block whose pointer sits in the GOT slot at -0x790(gp) into the same state offsets, then after the call writes the saved words back. With t2 zero it makes the call with no save or copy.

- `__glOdyim_PixelTexGenParameteriSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d2300
  **Inferred.** Copies the integer in a1 into its frame at offset 0x1c. Pnames 0x8354 and 0x8355 both reach `__glOdyim_PixelTexGenParameterivSGIS` at 0x21d2360 with a1 set to that frame word's address. Any other pname calls `__glSetError` with 0x500 and returns. The routine does not read the mode word.

- `__glOdyim_PixelTexGenParameterfSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d2510
  **Inferred.** Spills the float in f13 to frame offset 0x18. Pnames 0x8354 and 0x8355 both call `__glOdyim_PixelTexGenParameterfvSGIS` at 0x21d2570 with a1 pointing at the spilled float. Any other pname reports 0x500 through `__glSetError`.

- `__glOdyim_PixelTexGenParameterivSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d2360
  **Inferred.** Setter for the pixel texture-generation integer state. A mode word of 1 reports 0x502. Pname 0x8354 stores the integer read from the params pointer at state +0x141a0 and pname 0x8355 stores it at state +0x141a4, but only when the value is 0x8356 or 0xb04. Any other value, or any other pname, reports 0x500 through `__glSetError` and stores nothing.

- `__glOdyim_GetPixelTexGenParameterivSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d2460
  **Inferred.** Reads back the integer pixel texture-generation state. A mode word of 1 reports 0x502. Pname 0x8354 returns the word at state +0x141a0 and 0x8355 returns the word at state +0x141a4, both written through the output pointer in a1. Any other pname reports 0x500 through `__glSetError`.

- `__glOdyim_GetPixelTexGenParameterfvSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d2690
  **Inferred.** Float version of the read-back routine. It reads the same two state words, state +0x141a0 for 0x8354 and state +0x141a4 for 0x8355, zero-extends each to 64 bits, converts it to a single-precision float and stores that through the output pointer in a1. Mode word 1 reports 0x502 and any other pname reports 0x500.

- `__glOdyim_SoftDrawPixels` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d2760
  **Inferred.** Software fallback in front of `__glim_DrawPixels`. It reads a flag word at state +0x18e58 and the mode word. When the flag is zero and the mode word is zero, it calls `__glim_DrawPixels` directly. When the flag is nonzero, or the mode word is 2, it sets the byte at state +0x18e69 to 1, calls the function pointer at state +0x4748 with the state object as its argument, clears the mode word and then calls `__glim_DrawPixels`. Every other combination of mode word reports 0x502. The caller's a0 through a3 and t0 are saved and restored around the call.

- `__glOdysseyImageChainFree` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d2d00
  **Inferred.** Frees an image chain. It walks the list of op records headed at chain +8 and linked through each op's +0x68 doubleword, releasing each op with `ImageChainOpFree` at 0x21d2fd0 after loading the next link. It then zeroes chain +0, +8 and +0x10 and releases the chain record through the state object's function pointer at +0x18. A null chain returns at once.

- `ImageChainOpCreate` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d2da0
  **Inferred.** Allocates a 0x78-byte op record. It calls the allocator in the first word of the state object, passing the size in a1. A null return reports 0x505 through `__glSetError` and yields null. Otherwise the record's fifteen doublewords, from offset 0 to 0x70, are cleared and the pointer is returned.

- `ImageChainOpFree` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d2fd0
  **Inferred.** Releases one op record. A null argument returns at once. The routine frees the pointer at op +0x20 if it is set, then frees the buffer at op +0x58 if that pointer is set and its first byte is nonzero. It zeroes the record's fifteen doublewords and frees the record itself. Each free goes through the state object's function pointer at +0x18.

- `ImageChainOpCreateScratchImage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d3090
  **Inferred.** Allocates and fills a 0x40-byte scratch-image record, with the allocator called as in `ImageChainOpCreate`. An allocation failure reports 0x505 and returns null. The record gets byte 0 set to 1, word +4 cleared, and the routine's a0 stored at word +0x38. When a0 is 1 it copies two words from the state block at 0x141ac and 0x141a8 into +0x20 and +0x24, and stores a value at +0x1c that is the truncation of a double-precision call result. That call goes through the GOT slot at -0x710(gp), which holds 0xd925ff0, an address outside this library. For any other a0 the two state words go to +0x10 and +0x14, word +0x18 is set to 1, and the same truncated value is not computed.

- `ImageChainBuildDepthChain` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d4730
  **Inferred.** Picks a helper from the two sub-records of the chain. It reads the flag word at +0x38 of the record at chain +0x20; if that is zero it calls the helper at 0x21e5570. If it is nonzero it reads the flag at +0x38 of the record at chain +0x28, and a zero there calls the helper at 0x21e6420, while a nonzero value calls the helper at 0x21e6bc0. The helpers get the state floats at +0x340 in f13 and +0x354 in f14. The routine returns 1 when the helper's low result byte is nonzero and 0 otherwise. The helper addresses come from the GOT base at -0x7fc0(gp), which is 0x21e0000 here, and sit outside this chunk.

- `ImageChainBuildStencilChain` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d47f0
  **Inferred.** Same two-flag selection as the depth builder. It loads the word at state +0x3a0 into a1, the word at +0x3a4 into a2 and the byte at +0x3a9 into a3, then picks among helpers at 0x21e5ca0, 0x21e6840 and 0x21e7480 by the flag words of the chain's +0x20 and +0x28 sub-records, in the same order as the depth builder. The result is the low byte of the helper's return value, reduced to 1 or 0.

- `ImageChainBuildChain` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d48b0
  **Inferred.** Dispatches on the chain type word at chain +0x1c. Types 1, 2 and 3 call `ImageChainBuildColorChain` at 0x21d3650, type 4 calls `ImageChainBuildStencilChain` at 0x21d47f0, and type 5 calls `ImageChainBuildDepthChain` at 0x21d4730. The low byte of the builder's result is returned. Any other type returns 0.

- `ImageChainAddOpTextureColor` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d4960
  **Inferred.** Adds a texture-colour op to a chain. It allocates an op with `ImageChainOpCreate` and returns 0 if that fails. The op gets 2 at offset 0, 1 at +0x14, bits 0x2c OR-ed into +0x10, and `RenderFunc_TextureColor` at 0x21d49f0 at +8. It then calls `ImageChainAddOp` at 0x21d3190 with the chain, the new op and the caller's a1 and a2 in a2 and a3. The routine returns 1.

- `RenderFunc_TextureColor` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d49f0
  **Inferred.** Render step for a texture-colour op. It calls `__glOdysseyImageMovePixelsTexture` through the GOT slot at -0x73c0(gp) with a0 set to the op's +0x60 doubleword, a1 set to its +0x58 doubleword, a2 set to the caller's a1 and a3 set to 1. It returns 1.

- `ImageChainAddOpCopyColor` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d4a40
  **Inferred.** Adds a colour-copy op. The skeleton is that of the texture-colour adder: `ImageChainOpCreate` makes the op, which gets 3 at offset 0, 1 at +0x14, bits 0xc OR-ed into +0x10 and `RenderFunc_CopyColor` at 0x21d4ad0 at +8. It then calls `ImageChainAddOp` at 0x21d3190. Returns 1, or 0 when the op allocation fails.

- `RenderFunc_CopyColor` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d4ad0
  **Inferred.** Render step for a colour-copy op. It calls `__glOdysseyImageMovePixelsCopy` through the GOT slot at -0x73d8(gp) with the op's +0x60 doubleword in a0, its +0x58 doubleword in a1, the caller's a1 in a2, 0 in a3 and 1 in t0. It returns 1.

- `ImageChainAddOpLut` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d4b20
  **Inferred.** Adds a lookup-table op. The op record gets 7 at offset 0, 1 at +0x14, the caller's a1 at +0x48, `RenderFunc_Lut` at 0x21d4bb0 at +8, and bits 0x0e OR-ed into +0x10. It is then added with `ImageChainAddOp` at 0x21d3190, passing the chain, the op, the doubleword at chain +0x10 and 0 as the last argument. Returns 1, or 0 when the allocation fails.

- `RenderFunc_ColorZoom` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ea0b0
  **Inferred.** Thin forwarder for a render op. It rebuilds gp from t9 plus 0x15ce08, then calls through the GOT slot at gp-0x73c0 with four arguments: the doubleword at node+0x60 (read through the node pointer in a0), the doubleword at node+0x58, the second argument from a1, and the constant 1 in a3. It returns 1 in v0 and restores ra and gp from its frame.

- `ImageChainAddOpColorZoom` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ea020
  **Inferred.** Appends a color-zoom node to the image chain. It first calls the routine at 0x21d2da0 and returns 0 when that gives null. On success it writes type 0xc at +0, sets the word at +0x14 to 1, ORs 0x2c into the word at +0x10, and stores at +8 the GOT slot at gp-0x7fb8 minus 0x5f50. The chain link is then made by the routine at 0x21d3190, with the chain in a0, the new node in a1, the chain's +0x10 doubleword in a2 and 0 in a3. Returns 1.

- `ImageChainAddOpIndexZoom` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ea100
  **Inferred.** Creates an index-zoom node with type word 0xd. The same allocate, fill, link sequence as the color-zoom append: flag 1 at +0x14, 0x2c ORed into +0x10, and +8 from the GOT slot at gp-0x7fb8 minus 0x5e70. Returns 0 when the allocation is null and 1 after the link at 0x21d3190.

- `ImageChainAddOpHistogramMinmax` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21e4c10
  **Inferred.** Adds a histogram-minmax node, type 0xa. The routine sets +0x14 to 1 and ORs 0xc into +0x10, and takes the function pointer for +8 from the GOT slot at gp-0x7fc0 plus 0x4ca0. It finishes by passing the node to 0x21d3190 with the chain's +0x10 value as the third argument.

- `ImageChainAddOpPixelTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21e5060
  **Inferred.** Builds a pixel-texture node: type word 0xb at +0, flag 1 at +0x14, and 0xe ORed into +0x10. The pointer at +8 is the GOT slot at gp-0x7fc0 plus 0x50f0. The node is linked through 0x21d3190 with a3 set to zero.

- `ImageChainAddOpDownloadDepth` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21e5570
  **Inferred.** Registers a depth download node, type 0x10. The two floating arguments are spilled with sdc1 and reloaded; the f13 copy goes to +0x28 and the f14 copy to +0x38, both with swc1. The flag at +0x14 is 1, 0x1a is ORed into +0x10, and +8 is the GOT slot at gp-0x7fc0 plus 0x5610.

- `ImageChainAddOpReadbackDepth` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21e6420
  **Inferred.** Adds a readback-depth node of type 0x12. The flag word at +0x14 is cleared to 0 here, where the depth download and copy variants set it to 1. The float arguments go to +0x28 and +0x38 as in the download variant, 0x14 is ORed into +0x10, and +8 is the GOT slot at gp-0x7fc0 plus 0x64c0.

- `ImageChainAddOpCopyDepth` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21e6bc0
  **Inferred.** Builds a copy-depth node, type word 0x14, with the flag at +0x14 set from a3 (1 at the call site) and 0x1c ORed into +0x10. The node's +8 pointer is the GOT slot at gp-0x7fc0 plus 0x6c60. The float arguments are stored at +0x28 and +0x38 by the same spill-and-reload path.

- `ImageChainAddOpDownloadStencil` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21e5ca0
  **Inferred.** Creates a stencil download node, type 0x11. The fourth argument (a3) is stored as a byte at +0x4e. The integers in a0 and a1 are converted with cvt.s.w and written to +0x38 and +0x28. Flag 1 goes to +0x14, 0x1a is ORed into +0x10, and +8 is the GOT slot at gp-0x7fc0 plus 0x5d60.

- `ImageChainAddOpReadbackStencil` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21e6840
  **Inferred.** Adds a readback-stencil node with type word 0x13. It stores a3 as a byte at +0x4e, writes the two integer arguments converted to float at +0x38 and +0x28, sets the flag at +0x14 to 1, and ORs 0x14 into +0x10. The pointer at +8 comes from the GOT slot at gp-0x7fc0 plus 0x6900.

- `ImageChainAddOpCopyStencil` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21e7480
  **Inferred.** Creates a copy-stencil node, type 0x15. Same byte store of a3 at +0x4e and the same converted integer pair at +0x38 and +0x28 as the stencil download node. The routine ORs 0x1c into +0x10, sets +0x14 to 1, and loads +8 from the GOT slot at gp-0x7fc0 plus 0x7540.

- `ImageChainAddOpScaleBiasGfx` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ddba0
  **Inferred.** Builds a scale-and-bias node of type 5. The four floats at the second argument's block go to +0x28 through +0x34, and the four floats at the third argument's block go to +0x38 through +0x44. The flag at +0x14 is set to 1, 0x1e is ORed into +0x10, and +8 is the GOT slot at gp-0x7fc0 minus 0x2370. The routine at 0x21d2e20 is called with the node as its only argument, then the node is linked through 0x21d3190.

- `__glOdysseyImageChainAddOpAcceptSignedDataFromHost` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21dead0
  **Inferred.** Adds a signed-data-from-host node of type 4 and copies three floats from the a1 block into +0x28 to +0x30 and three from the a2 block into +0x38 to +0x40. The fourth float of each block depends on the format in a3. For the tokens 0x190a, 0x1906 and 0x1908 (the GL luminance-alpha, alpha and RGBA enums) +0x34 takes the a1 block's fourth float and +0x44 the a2 block's. For any other format +0x34 is set to 0.0 and +0x44 is the sum of the two fourth floats. Flag 1 at +0x14, 0x1a in +0x10, and +8 from the GOT slot at gp-0x7fc0 minus 0x13e0.

- `SetupScaleBiasForTexFilter` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21e0b60
  **Inferred.** Packs eight 16-bit scale words into the context block. Each of the eight floats in the a0 and a1 vectors is multiplied by the constant at gp-0x900, truncated to an integer and written into the low halfword of the word at context+0xb03c, +0xb040 and onward in steps of 4 to +0xb058, with the high halfword of each word kept. Then the word at context+0xb038 becomes 2, context+0x18e54 gets bit 0x10000 ORed in, and 2 is stored to absolute 0x1030.

- `LoadTextureFilter` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21e0cc0
  **Inferred.** Loads the filter table for the index in a1, which selects a 2912-byte record (the index times 0xb60) from the table pointer at a0+0x20. The routine copies 64 bytes from record+0x270 into the context block at +0xaf38, then sets +0xaf34 to 2. Eight words from record+0x2b0 through record+0x2cc go to +0xb03c through +0xb058, and +0xb038 becomes 2. Three words from record+0xb54 to record+0xb5c go to +0xb0bc to +0xb0c4. Bits 0x38000 are ORed into the word at context+0x18e54, and 2 is stored to absolute 0x1030 on return.

- `__glOdysseyGetFilter` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21f09f0
  **Established.** Returns a pointer into the current context for one of three filter enumerants in a0. The context pointer is the 64-bit word at address 0x1020, loaded in the first instructions. Enumerant 0x8010 returns that pointer plus 0x3b8, 0x8011 returns it plus 0x410, and 0x8012 returns it plus 0x468. Any other value returns zero. The routine stores nothing and makes no calls.

- `__glOdysseyInitLerpTree` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21f0960
  **Established.** Clears a 0x2d0-byte block at a0 by calling `memset` through the GOT slot at gp-0x658, with a zero fill value. It then loads one float from gp+0x8e8 and stores it into 16 words of the block at offsets 0x0, 0x24, 0x8c, 0x90, 0x94, 0xb8, 0x120, 0x124, 0x128, 0x14c, 0x1b4, 0x1b8, 0x1bc, 0x1e0, 0x248 and 0x24c. The block pointer is kept in s0 across the call; the routine returns nothing.

- `__glOdySpanPackPioStencil` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ecf10
  **Inferred.** Sets the float at a1+0x168 to a constant read through gp+0xa0c and the float at a1+0x178 to zero, then calls `__glOdySpanShiftOffsetIndex` at 0x21ec3d0 with the same a0 and a1. The two floats are put back to their old values after the call, so the caller's words at +0x168 and +0x178 come back unchanged. The stack frame saves f31 and the f2/f3 pair around the call.

- `ImageChainAddOpInterlace` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ea1e0
  **Inferred.** Allocates a node with the local routine at 0x21d2da0 and returns 0 if that returns nothing. The node type is 14 when the second argument is non-zero and 15 when it is zero. The word at +0x14 becomes 1, the 64-bit word at +8 is set from the GOT word at gp-0x7fb8 less 0x5d80, and 0x2c is ORed into the word at +0x10. It then calls the local routine at 0x21d3190 with a0, the node, the word at a0+0x10 and zero, and returns 1.

- `ImageChainAddOpIndexShiftOffset` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ea350
  **Inferred.** Allocates a node with the local routine at 0x21d2da0 and returns 0 when that gives nothing. On success it writes type 6 at +0 and 0 at +0x14, and zeroes the floats at +0x2c, +0x30, +0x34, +0x3c, +0x40 and +0x44. The second and third arguments go in as integers converted to float, the second at +0x28 and the third at +0x38. Bit 1 is ORed into the word at +0x10, and +8 gets the GOT word at gp-0x7fb8 less 0x5be0. It then calls the local routine at 0x21d3190 the same way as the sibling chain op and returns 1.

- `RenderFunc_IndexZoom` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ea190
  **Established.** Forwards to `__glOdysseyImageMovePixelsTexture` with a0 taken from the word at a0+0x60, a1 from the word at a0+0x58, a2 set to the second argument and a3 set to 1. The routine returns 1 after the call.

- `RenderFunc_IndexShiftOffset` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ea420
  **Inferred.** Truncates the eight floats at a1 to integers in a stack frame, from a1[0] through a1[0x1c] into the frame words at sp+8 through sp+0x24. It also keeps the floats at a0+0x28 and a0+0x38 at sp+0 and sp+4. It then branches and links to `__glOdysseyImageConvertHostImage` at 0x21edf90 with a0 = the word at a0+0x60, a1 = sp+0x18, a2 = the word at a0+0x58, a3 = sp+8, and the addresses sp+0 and sp+4 as the fifth and sixth arguments, with zero as the seventh. The routine returns 1.

- `__glOdysseySetCurrentFilter` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21f0a30
  **Inferred.** Stores the filter pair for the context in a0 from the selector in a1. Selector 1 tests bit 25 (0x2000000) of the word at a0+0x808. If set, it stores a0+0x3b8 at a0+0x3b0 and a0+0x11b20 at a0+0x13f70. If clear, it stores the word at gp-0x728 and zero. Selectors 2 and 3 test bit 26 of the same word. If set, they store a0+0x410 and a0+0x12680. If clear, they test bit 27 (0x8000000): set stores a0+0x468 and a0+0x131e0, clear stores the word at gp-0x728 and zero. Any other selector takes the default path, which stores the word at gp-0x728 at a0+0x3b0 and zero at a0+0x13f70.

- `__glOdysseyImageCalcSuitableHostFormatForDownload` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21f03d0
  **Established.** Maps the code in a2 to two GL enumerants. The first is stored through a3 and the second through the fifth argument, which is t0. Code 0 gives 0x1906 and 0x1401, code 3 gives 0x1906 and 0x1403, code 0x10 gives 0x1900 and 0x1401, code 0x11 gives 0x1900 and 0x1403, and any other code gives 0x1908 and 0x1403. The routine returns 1 in every case.

- `__glOdysseyImageCalcSuitableGfxFormatForReadback` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21f02b0
  **Established.** Takes a host format in a0 and a type in a1 and writes two codes, one through a2 and one through a3. Host 0x1908 accepts type 0x1401 (codes 10 and 1), 0x1403 (12 and 2), 0x8033 (7 and 0), 0x8034 (8 and 0) and 0x8036 (11 and 1). Host 0x1900 accepts 0x1401 (16 and 0) and 0x1403 (17 and 0). An accepted pair returns 1. Any other pair, or any other host format, writes -1 to both outputs and returns 0.

- `__glOdySpanUnpackUbyteI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ebfa0
  **Inferred.** Expands an unsigned-byte span into 32-bit words. The element count is the word at a1+0x28 times the word at a1+0xb8. Each pass reads four bytes from the source at a2 and writes four words at the destination a3, 16 bytes of output per pass. The count's low two bits are then expanded in a tail, one byte when that remainder is odd and then pairs of bytes, each byte to one word. The routine calls nothing and returns nothing.

- `__glOdySpanUnpackUshortI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ec0a0
  **Inferred.** Expands a span of 16-bit values into 32-bit words, with the count taken from the word at a1+0x28 times the word at a1+0xb8. Each pass reads four halfwords, eight source bytes, and writes four words at a3. The remainder after dividing by four is written one halfword at a time, with the tail structured as in the byte variant. The routine calls nothing.

- `__glOdySpanScaleBiasComponent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ec8e0
  **Established.** Scales each float element of the span as out[i] = bias + scale * in[i]. For element i, k is i mod 4 and the scale is the float at a1+0x168+4k while the bias is the float at a1+0x178+4k. The inputs come from a2 and the outputs go to a3. The element count is the word at a1+0xb8 times 4 when the byte at a1+0x21d is zero, otherwise times 1. The routine calls nothing and returns nothing.

- `__glOdysseyInitConvolutionState` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21f26b0
  **Inferred.** Resets the convolution flag bytes in the current context block and writes a mode word there. The word at absolute 0x1030 is tested first; when it is 1 the routine calls `__glSetError` with 0x502 and returns. Otherwise it loads the context pointer from absolute 0x1020 and clears the bytes at offsets 0x3f6f and 0x3f54 of the block at context plus 0x10000, then stores 0x1101 at offset 0x3d44 of that block. The first argument then picks a pair of cleared bytes: 0x8010 clears 0x3f55 and 0x3f6c, 0x8011 clears 0x3f6d and 0x3f56, and 0x8012 clears 0x3f57 and 0x3f6e. Any other value returns after the stores above.

- `multiplicative_inverse` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21f4b20
  **Inferred.** Computes the coefficient that inverts a0 modulo a1 by the extended Euclidean algorithm. It keeps two remainders in the stack slots at 0x8 and 0x18, starting from a0 and a1, and two coefficients in the slots at 0x0 and 0x10, starting from 1 and 0, and repeats one division step while the second remainder is nonzero. Each step replaces the remainders with the second and with the first minus quotient times the second, and does the same to the coefficients. A zero a1 returns 1 at once. At the end the final coefficient is returned, with a1 added to it when it is negative.

- `__glOdysseyImageTilingFree` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2205ae0
  **Inferred.** Releases a tiling record by calling through the current context's function pointer at offset 0x18. The context pointer comes from absolute 0x1020. The routine first calls that pointer with the context and the record's word at +8, then zeroes the record's first 16 bytes and calls the same pointer again with the context and the record. A null record makes no calls.

- `__glOdyim_GetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2205b50
  **Inferred.** Passes a histogram query on to `__glim_GetHistogramEXT` with its five arguments (a0 to a3 and the fifth in t0) unchanged. It reads the word at offset 0x820 of the context from absolute 0x1020, and when bit 3 is set it calls `__glOdysseyAsyncCheck` with the context and 8 before the forward. A zero result from that check returns at once with that zero. When bit 3 is still set after the forward, it calls `__glOdysseyAsyncDropMarker` with the same two arguments.

- `__glOdyim_GetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2205c00
  **Inferred.** Forwards a min/max query to `__glim_GetMinmaxEXT`, which receives the same five arguments. The bit tested is bit 3 of the word at context offset 0x820, read through absolute 0x1020. Bit 3 set brings a call to `__glOdysseyAsyncCheck` with the context and 8 ahead of the forward, and a zero from it ends the call early. After the forward, the same bit brings a call to `__glOdysseyAsyncDropMarker` with the same arguments.

- `ImageToDmaHostPixelSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22035c0
  **Inferred.** Looks up one 32-bit code in a table of host pixel-size codes. The table base is read from the global-pointer slot at -0x7eb0 and comes to 0x2340000 minus 0x7e20, which is 0x23381e0. The routine returns the word at that base plus four times a0, sign-extended. In the first twenty entries of the table, the value is -1 for indices 0, 5, 7, 9, 10, 11, 13, 14 and 15, and for the others it is 5, 0, 7, 1, 6, 2, 4, 3, 0, 0 and 0 at indices 1 to 4, 6, 8, 12, 16 and 17 to 19.

- `__glOdysseyImageCalcTexOffset` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2203320
  **Inferred.** Maps a pair of object words to a 0 or 1 flag written through a1. The word at object +0x2c selects a rule and the word at +0x30 is the value tested. With +0x2c equal to 0, the values 0, 3 and 4 store 0. With +0x2c equal to 1, only the value 1 stores 0. With +0x2c equal to 2, the value 0 or 6 stores 0 and the value 1 stores 1. Any other combination calls `__glSetError` with 0x502 and returns 0, and a successful match returns 1.

- `__glOdysseyProgramTexFilter` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21faa10
  **Inferred.** Builds the texture filter program for the object in a0. The word at absolute 0x1030 equal to 1 reports 0x502 and returns. Otherwise it calls `ConvertToLerps` (0x21f9550) on the object and on the blocks at +0x94, +0x128 and +0x1bc, then `PackLerpTree` (0x21fa010) on the object. It reads the word at context plus 0x13d44 and, when that word is 0x1102, makes a second set of `ConvertToLerps` and `PackLerpTree` calls over the sub-blocks from +0x364 to +0xa2c before the packing. The packing writes three words at +0xb54, +0xb58 and +0xb5c. The first two keep bits 28 to 31, take a 12-bit field from +0xb40 or +0xb48 into bits 0 to 11, take a second field from +0xb44 or +0xb4c into bits 16 to 27, and clear bits 12 to 15. The third keeps everything except bits 0 to 11, which take the low 12 bits of +0xb50.

- `__glOdysseyCvtToInternalFmt` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21f5540
  **Inferred.** Fills the missing channels of an array of texels for the format enumerant in a2. The destination is a0 and the texel count is a1, with each texel 16 bytes. GL_RGBA (0x1908) and any format not listed return without a store. GL_RGB (0x1907) writes a float loaded from a fixed offset from the routine's own address into the fourth word of each texel. GL_ALPHA (0x1906) zeroes the first three words of each texel. The enumerants 0x1909, 0x8049 and 0x190a each take their own separate store path.

- `__glOdysseyImageSaveUserBuzzRasterState` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2206240
  **Inferred.** Copies live rasterizer state into a save area. The routine works at the context pointer plus 0x10000 (call it B). Single words are read from fixed offsets such as B-0x5fe4, B-0x5fd4 and B-0x60b4 and stored at B+0x3f94 through B+0x4048. One doubleword from B-0x6000 goes to B+0x3f78. A 16-word block at B-0x50c8 is copied to B+0x3fd4 by an eight-pass loop that moves two words per pass, and the routine never touches the begin word at 0x1030.

- `__glOdysseyImageLoadBuzzRasterState` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22063c0
  **Inferred.** Restores the state that the save routine wrote, and the first argument chooses the source. A zero in a0 selects ctx+0x1404c and any other value selects ctx+0x13f78 (a movz on a0). Words from the source are written back to the live fields at B-relative offsets, and the 16-word block at source+0x5c is copied to B-0x50c8. The word at ctx+0x12e54 gets 0x03239387 ORed in, and 2 is written to the begin word at 0x1030 in the delay slot of the return.

- `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2206580
  **Inferred.** Computes a projected depth as a ratio of two dot products. Four floats at context +0x1b0, +0x1b4, +0x1b8 and +0x1bc form a vector, the numerator uses four table floats at B-0x4708, B-0x4704, B-0x4700 and B-0x46fc, and the denominator uses four at B-0x46e8, B-0x46e4, B-0x46e0 and B-0x46dc. The two sums are combined with mul.s and madd.s, divided with div.s, widened to double, added to a double constant loaded through $t9 at pool offset 0xd28, and narrowed back to single in f0.

- `dirtyLight` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2206960
  **Inferred.** Records a light-parameter change in dirty-flag words of the context. It returns at once unless the light enumerant in a1 lies in 0x4000 to 0x4007. For those values it sets bit 6 in the word at ctx+0x12e58, sets bit (a1-0x4000) in the word at ctx+0x12e5c, and writes 2 to the begin word at 0x1030. When the pname in a2 is 0x1200, 0x1201 or 0x1202, that same bit is also ORed into the word at ctx+0x12e60. Any other pname sets bit 8 in the word at ctx+0x12e58 instead.

- `__glOdyim_Lightfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22069f0
  **Inferred.** Front end for the vector form of the per-light setter. If the begin word at 0x1030 is 1 it calls the routine at GOT slot -0x5130 with 0x502 and returns. Otherwise it first calls the routine at GOT slot -0x5640 with the original arguments, then calls dirtyLight with the context, the light in a1 and the pname in a2.

- `__glOdyim_Lightf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2206a80
  **Inferred.** Scalar-float counterpart of the vector light setter. The light number in a0 is saved and the pname in a1 is saved beside it. A begin word of 1 at 0x1030 sends 0x502 to the GOT slot -0x5130 routine. Otherwise the routine at GOT slot -0x5638 runs first with a0 set to the light, and dirtyLight receives the light and pname in a1 and a2.

- `__glOdyim_Lightiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2206b10
  **Inferred.** Integer-vector variant of the light setter. It keeps the light in s1 and the pname in s0, and it tests 0x1030 against 1 as the others do. The first forwarding call goes through GOT slot -0x5630 and passes the light in a0 with a1 and a2 left alone. After that, dirtyLight is called with the context in a0, the light in a1 and the pname in a2.

- `__glOdyim_Lighti` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2206ba0
  **Inferred.** Integer scalar light setter. Its forwarding call goes through GOT slot -0x5628, and the call is made before dirtyLight is reached. A begin word of 1 at 0x1030 skips that and reports 0x502 through GOT slot -0x5130. Otherwise dirtyLight gets the light in a1 and the pname in a2.

- `__glOdyim_LightModelfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2206c30
  **Inferred.** Light-model vector setter. The pname in a0 goes to the routine at GOT slot -0x5620 and the parameter pointer in a1 is left unchanged. The pname is then compared with 0xb53, the value of the ambient light-model enumerant. Bit 6 of the word at ctx+0x12e58 is always set, bit 8 of the same word is set only when the pname differs from 0xb53, and 2 is written to 0x1030 on success.

- `__glOdyim_LightModelf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2206ce0
  **Inferred.** Scalar light-model setter with no pname test. Its first instruction loads the context pointer into a1, so the routine at GOT slot -0x5618 receives the context in a1 and the pname in a0. On return, bits 6 and 8 are both ORed into the word at ctx+0x12e58 and 2 goes to 0x1030. A begin word of 1 reports 0x502 through GOT slot -0x5130 and skips the call.

- `__glOdyim_LightModeliv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2206d70
  **Inferred.** Integer-vector light-model setter with the same ambient test as the float vector form. The forwarding call uses GOT slot -0x5610 and runs with the pname in a0. After it returns, bit 6 is set in the word at ctx+0x12e58, and bit 8 is set too unless the pname is 0xb53. The begin word is set to 2.

- `__glOdyim_LightModeli` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2206e20
  **Inferred.** Integer scalar light-model setter. The context pointer goes into a2 before the forwarding call through GOT slot -0x5608, so the callee sees the context there. Afterwards the routine ORs 0x140 into the word at ctx+0x12e58 unconditionally and writes 2 to the begin word at 0x1030. A begin word of 1 reports 0x502 through GOT slot -0x5130.

- `__glOdylc_Normal3bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2209440
  **Inferred.** Appends a normal given as three signed bytes to a command record. The record is four words: tag 0xc180cc16, then the three bytes at a0+0, +1 and +2 sign-extended to words at record offsets +4, +8 and +0xc. The write cursor at 0x1058 advances by 0x10, the room word at 0x1048 drops by 4, and the count at 0x1060 rises by 4. When room is short the routine calls GOT slot -0x6160 with a0 = 0 and takes the returned room; a zero return rewinds the cursor by 4 and adds 1 to the room word.

- `__glOdylc_Normal3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2209570
  **Inferred.** Appends a normal passed as three doubles in f12, f13 and f14. The routine converts each to single with cvt.s.d and writes the record tag 0xc180cc19 followed by the three singles at +4, +8 and +0xc. On the short-room path it spills the three arguments to the stack just before the flush call through GOT slot -0x6160, then reloads them.

- `__glOdylc_Normal3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22096c0
  **Inferred.** Same record as the scalar double form, taken from memory. a0 points to three doubles, read with ldc1 at offsets 0, 8 and 0x10 and narrowed to single. The tag is 0xc180cc19. The write cursor and room words are updated as the byte form, and a flush through GOT slot -0x6160 with a0 = 0 happens when the room is short.

- `__glOdylc_Normal3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2209800
  **Inferred.** Single-precision normal from three float arguments in f12, f13 and f14, with no conversion. It stores the tag 0xc180cc19 and the three floats at record +4, +8 and +0xc, moving the args from f6, f5 and f4. It advances the cursor by 0x10 and decrements the room word by 4.

- `__glOdylc_Normal3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2209940
  **Inferred.** Normal from a pointer to three floats. The routine loads the floats with lwc1 at a0+0, +4 and +8 and stores them as they are at record offsets +4, +8 and +0xc, after the tag 0xc180cc19. The room test and the GOT slot -0x6160 flush follow the same pattern as the other normal writers.

- `__glOdylc_Normal3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2209a70
  **Inferred.** Integer-argument normal. It spills a0, a1 and a2 to the stack before the flush call, then writes the tag 0xc180cc18 and the three words at +4, +8 and +0xc. The cursor moves by 0x10 and the room word at 0x1048 drops by 4.

- `__glOdylc_Normal3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2209bb0
  **Inferred.** Integer normal taken from a pointer. It reads the three words at a0+0, +4 and +8 and writes them at record offsets +4, +8 and +0xc behind the tag 0xc180cc18. The same room, pad and flush logic as Normal3i applies.

- `__glOdylc_Normal3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2209e20
  **Inferred.** Short-integer normal taken from a pointer. It loads three halfwords at a0+0, +2 and +4 with lh, sign-extends them into words, and stores them at record offsets +4, +8 and +0xc behind the tag 0xc180cc17. The room test and flush are the same as for the other normal writers.

- `__glOdysseyPickPixelProcs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2209f60
  **Inferred.** Installs five pick-procedure pointers into the context. Each is loaded from a GOT slot and stored: the slot at -0x75c0 goes to +0x4d30, -0x7638 to +0x4d60, -0x7630 to +0x4d68, -0x5898 to +0x4d70 and -0x7628 to +0x4d78. It then calls the routine at GOT slot -0x7458 with the context in a0 and 2 in a1.

- `__glOdysseyPickRenderBitmapProcs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2209fc0
  **Inferred.** Chooses two bitmap-pick pointers from context state. The GOT slot -0x7cc8 pointer is always stored at +0x4cd0. For +0x4cc8 the routine tests the words at +0x598, +0x59c and +0x5a0 and the byte at +0x595. If any of the three words is nonzero, or the byte is nonzero, it stores the pointer from GOT slot -0x5518; otherwise it stores the one from GOT slot -0x5510.

- `__glOdysseyPickTextureProcs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220a020
  **Inferred.** Selects one texture-pick pointer and stores it at context +0x48f0. The bits 18 through 21 of the word at +0x808 decide. When bits 18 and 19 are both set, and bits 20 and 21 are clear, and the words at +0x8c8 and +0x944 are equal, the value at +0x8c8 picks the slot: 0x2400 uses GOT -0x3be8, 0x2401 uses -0x3be0, 0x2402 uses -0x3bf0, and any other value returns with no store. Otherwise bits 18, 19 or 20 set selects GOT -0x3bf8, and with those clear, bit 21 set also selects -0x3bf8 while bit 21 clear selects -0x3bd8.

- `__glOdysseySoftClipPickClipProcs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220a780
  **Inferred.** Stores two clip-pick pointers. The GOT slot -0x6840 pointer goes to context +0x4c98 and the one at -0x6858 goes to +0x49a8.

- `__glOdysseySoftClipPickClipProcsFast` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220a7a0
  **Inferred.** Fast variant of the clip-pick install. It stores the GOT slot -0x6840 pointer at +0x4c98 and the GOT slot -0x6848 pointer at +0x49a8. The two stores and the return have the same layout as the non-fast form.

- `__glOdysseySoftClipPickLineProcs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220a7c0
  **Inferred.** Single store: the pointer from GOT slot -0x68a8 is written to context +0x4c80 and the routine returns.

- `__glOdysseySoftClipPickPointProcs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220a7e0
  **Inferred.** Installs the point-pick pointer. The GOT slot -0x6898 value is stored at context +0x4cb0 with no test of the context.

- `__glOdysseySoftClipPickTriangleProcs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220a800
  **Inferred.** Triangle-pick install. It stores the GOT slot -0x68b8 pointer at context +0x4988 and returns.

- `__glOdysseySoftClipPickTriangleProcsFast` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220a820
  **Inferred.** Fast triangle-pick install that takes the pointer from GOT slot -0x6900 and stores it at context +0x4988, the same field as the non-fast triangle form.

- `__glOdyim_End` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220cb00
  **Inferred.** Closes a batch by writing command words to address 0x10000. If the word at 0x1030 is 1, it reports 0x502 through `__glSetError` (GOT slot gp-0x5130) and returns. Otherwise it writes 0x14001 to 0x10000. When the word at ctx+0xba44 is nonzero, it clears ctx+0xbb80 and writes 0x10443, 0xfa, 0x10046, 0x10046 to 0x10000. It then sets ctx+0xbb80 to 1. When the byte at ctx+0x1c492 is nonzero, it clears ctx+0xbb80, writes the same four words, and clears that byte. It ends by zeroing the word at 0x1030.

- `__glOdyim_SoftBegin` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220cca0
  **Inferred.** Starts a batch from the state word at 0x1030. When the flag word at ctx+0x18e58 is nonzero, a zero state reads as 2; otherwise the state is the word itself. A state of 0 is accepted only when the argument is below 10. The routine then sets 0x1030 to 1 and calls the function pointer at ctx+0x4930 plus 8 times the argument, with the context as its argument. With a state of 2 it sets the byte at ctx+0x18e68 to 1, calls the pointer at ctx+0x4748, clears 0x1030, and calls slot +0x38 of the block whose address is at ctx+0x1ad8, passing the original argument. Any other state reports 0x502. State 0 with an argument of 10 or more reports 0x500.

- `__glTRim_Begin` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220f6b0
  **Inferred.** Opens a vertex primitive. Its state dispatch matches `__glOdyim_SoftBegin` step for step: the same flag test on ctx+0x18e58, the same 0x500 and 0x502 reports, the same table at ctx+0x4930 indexed by the argument, the same byte at ctx+0x18e68, and the same calls through ctx+0x4748 and ctx+0x1ad8+0x38. The one difference is the order of the checks, which puts the state-0 test first.

- `__glOdysseyRasterPos2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220eee0
  **Inferred.** Builds a four-float vertex from two floats and passes it to `__glOdysseyRasterPosGeneral` at 0x220e970 with a count of 2. The x and y values are the floats at offsets 0 and 4 of the array in a1. The z slot is set to 0.0 and the w slot takes the float at context offset 0xf2c.

- `__glOdysseyRasterPos3` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220ef40
  **Inferred.** Copies three floats from the array in a1 into the stack vertex, at offsets 0, 4 and 8, and fills the w slot from the float at context offset 0xf2c. It then calls `__glOdysseyRasterPosGeneral` at 0x220e970 with a count of 3.

- `__glOdysseyRasterPos4` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220efa0
  **Inferred.** Copies all four floats of the array in a1 into the stack vertex, at offsets 0, 4, 8 and 0xc, and calls `__glOdysseyRasterPosGeneral` at 0x220e970 with a count of 4. This variant does not read the context float at 0xf2c.

- `VbufCopy` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220f390
  **Inferred.** Copies one 16-byte vertex record inside a buffer. The buffer base is the pointer at offset 8 of the structure in a0. The source record is at index a2 and the destination at index a1, each scaled by 16. The four single-precision words at offsets 0, 4, 8 and 0xc are copied from source to destination, with a load and a store for each word.

- `__glTRim_Vertex2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220fc30
  **Inferred.** Appends an (x, y) vertex with z set to 0.0 to the current context's vertex buffer. The buffer base pointer is at ctx+0x18d60 and the record count is the word at ctx+0x18d70. The record is written at the count's index times 16, with x from f12, y from f13 and the w slot from the float at context offset 0xf2c. The count is then incremented and stored back. When the new count is 120 (0x78) or more, the routine calls `ProcessOverflow` at 0x220f3f0 before it returns.

- `__glTRim_Vertex2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220fa80
  **Inferred.** Adds the same record to the buffer as `__glTRim_Vertex2f`, but reads x and y from the two floats at the pointer in a0 rather than from registers. The context is passed in a1, and the w slot is read from it at offset 0xf2c. The overflow check at 120 records and the call to `ProcessOverflow` are the same.

- `NewChunkNode` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220c590
  **Inferred.** Allocates a chunk node with a slot array sized for the level given in a0. It calls the function pointer at offset 0 of the block whose address is at 0x1020, first for a 0x20-byte node and then for an array of (1 shifted left by the level) times 8 bytes. If both succeed, it clears the array with `bzero` (GOT slot gp-0x648), clears the node words at offsets 0x8, 0x10 and 0x18, stores the array pointer at offset 0, and returns the node. If the array allocation failed, it frees the node through the function pointer at offset 0x18 and returns 0. If the node allocation failed, it frees the array through the same pointer and returns 0.

- `ProcessOverflow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220f3f0
  **Inferred.** Runs when a vertex buffer reaches 120 records. It sets bit 0 of the flags word at ctx+0x18d78 and calls `__glTRim_End` at 0x220f7c0. It then reads the mode word at ctx+0x18d7c. For a mode below 10 it jumps through a table indexed by the mode. For a mode of 10 or more it clears the record count at ctx+0x18d70 and clears bit 0 of the flags word.

- `Reject` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220f610
  **Inferred.** Handles a rejected primitive using the flags word at ctx+0x18d78. When bit 1 is set, it calls `Pass` at 0x220f520 with the argument 6 and returns. When bit 0 is set and the mode word at ctx+0x18d7c is not 2, 6 or 9, it clears the word at ctx+0x18d74 and returns. Otherwise it clears the flags word and the word at ctx+0x18d74, calls the function pointer at ctx+0x18d88 with the argument 6, and then clears the count word at ctx+0x18d70.

- `Pass` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220f520
  **Inferred.** Passes the buffered records to a per-record function. It loops from the index in the word at ctx+0x18d74 up to the count at ctx+0x18d70, calling the pointer at ctx+0x18e28 once per record with a pointer to that record. Afterwards, when bit 0 of the flags word at ctx+0x18d78 is clear, it clears the flags word, the index word and the count word, and calls the pointer at ctx+0x18d88. When bit 0 is set and the mode is 10 or more, it sets bit 1 of the flags word and returns. For a smaller mode it jumps through a table indexed by the mode.

- `__glOdysseyInitRGB` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220f2a0
  **Inferred.** Initialises the RGB state block whose address arrives in a0. It saves a0 in s8, calls `__glInitBuffer` (GOT slot gp-0x5370) with it, and then sets a group of words in the block. Words at offsets 0xbc, 0xa4, 0x80, 0xa0, 0x7c, 0x9c and 0x78 get the value 1, and words at 0xb4, 0xb0, 0xac, 0xa8 and 0x24 get 0. Eight words at 0xb8, 0xcc, 0x98, 0xc8, 0x94, 0xc4, 0x90 and 0xc0 get the float at gp+0x8e8. Doublewords at 0x100, 0x128 and 0xf8 are loaded from the GOT slots at gp-0x4280, gp-0x4278 and gp-0x4288, and six doublewords at 0x108, 0x110, 0xd8, 0xf0, 0xe8 and 0xe0 get addresses formed from the GOT entry at gp-0x7fa8 with constant offsets of -0xe30, -0xf80, -0xff0, -0xfe0, -0xfe0 and -0x1000.

- `__glTRim_Vertex3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210190
  **Inferred.** Appends one vertex to the trim buffer from a pointer. Three doubles are read from (a0) at offsets 0, 8 and 0x10 with ldc1, narrowed to single with cvt.s.d and written at record offsets 0, 4 and 8. The fourth float, at context +0xf2c, is copied to record offset 0xc. The record slot is the buffer pointer at context +0x18d60 plus the count word at +0x18d70 times 16. The count is stored back incremented, and the routine calls the unnamed routine at 0x220f3f0 only when the new count is 0x78 or more.

- `__glTRim_Vertex3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210230
  **Inferred.** Scalar three-integer form. The arguments a0, a1 and a2 go to record offsets 0, 4 and 8 after cvt.s.w conversion, so a0 is x and a2 is z. The w float is copied from context +0xf2c to offset 0xc. The slot index comes from the count at +0x18d70 before the increment, and the increment is written back. A count of 0x78 or more after the increment sends control to the routine at 0x220f3f0 before the return.

- `__glTRim_Vertex3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22102d0
  **Inferred.** Reads three 32-bit words from the pointer in a0 with lw, at offsets 0, 4 and 8, and converts each with cvt.s.w into the record at offsets 0, 4 and 8. The record base is the buffer pointer at context +0x18d60, and the count at +0x18d70 is shifted left four bits to give the offset. The w float from context +0xf2c is copied after those stores. A count of 0x78 or more after the store leads to the call at 0x220f3f0.

- `__glTRim_Vertex3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210380
  **Inferred.** Three short arguments arrive in a0, a1 and a2 as registers. Each is converted to float with cvt.s.w and placed at record offsets 0, 4 and 8, then the context float at +0xf2c fills offset 0xc. The record index is the count at context +0x18d70 times 16, and the count goes up by one. When the new count reaches 0x78, the routine calls 0x220f3f0.

- `__glTRim_Vertex3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210420
  **Inferred.** Halfwords are read from the pointer in a0 at offsets 0, 2 and 4 with lh. Each goes through cvt.s.w into record offsets 0, 4 and 8. The w float from context +0xf2c goes to offset 0xc. The count word at context +0x18d70 is incremented and written back. A count below 0x78 returns at once; any larger count first calls 0x220f3f0.

- `__glTRim_Vertex4f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22104d0
  **Inferred.** Stores the four float arguments f12, f13, f14 and f15 with no conversion, at record offsets 0, 4, 8 and 0xc in that order. The w component comes from f15, and no context float is read for it. The buffer pointer and count come from context +0x18d60 and +0x18d70. The count is incremented, and 0x220f3f0 is called when the new count is 0x78 or above.

- `__glTRim_Vertex4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210550
  **Inferred.** The four double arguments f12 to f15 are narrowed with cvt.s.d and stored in argument order at record offsets 0, 4, 8 and 0xc. The count at context +0x18d70 is incremented and written back. A count of 0x78 or more afterwards calls 0x220f3f0.

- `__glTRim_Vertex4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22105e0
  **Inferred.** Four doubles are loaded from (a0) at offsets 0, 8, 0x10 and 0x18 with ldc1. Each is narrowed with cvt.s.d and written at record offsets 0, 4, 8 and 0xc. The slot index is taken from the count at +0x18d70 before it is bumped. The flush call to 0x220f3f0 happens when the bumped count is 0x78 or more.

- `__glTRim_Vertex4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210680
  **Inferred.** Converts the four integer arguments a0 to a3 with cvt.s.w and stores them at record offsets 0, 4, 8 and 0xc, so a3 becomes w. The count at context +0x18d70 is then bumped. A count below 0x78 returns, and a larger one calls 0x220f3f0.

- `__glTRim_Vertex4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210720
  **Inferred.** Four 32-bit words are read from (a0) at offsets 0, 4, 8 and 0xc, converted with cvt.s.w, and written to the record in that order. The count at +0x18d70 is incremented and stored. The routine reaches the bal to 0x220f3f0 when the stored count is 0x78 or more.

- `__glTRim_Vertex4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22107d0
  **Inferred.** Scalar short form of the four-component append. Arguments a0 through a3 are converted with cvt.s.w and written at record offsets 0 through 0xc, with a3 as w. The count word at +0x18d70 goes up by one, and when the new value reaches 0x78 the routine calls 0x220f3f0.

- `__glTRim_Vertex4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210870
  **Inferred.** Halfwords at (a0), offsets 0, 2, 4 and 6, are read with lh and converted with cvt.s.w into record offsets 0, 4, 8 and 0xc. The count at context +0x18d70 is incremented and written back. A count of 120 or more leads to the bal to 0x220f3f0.

- `__glOdylc_TexCoord1dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210a40
  **Inferred.** Appends a one-dimensional double texture coordinate as two words: the header 0xc380c41f, then the double at (a0) narrowed with cvt.s.d into record offset 4. Room is checked against the free-word count at absolute 0x1048 for two words, plus a padding word when bit 2 of the write pointer at 0x1058 is set and the count word at 0x1060 is zero. A short check calls __glSPDlistSpace with zero through the slot at gp-0x6160. A zero reply moves the write pointer back four bytes, adds one to the free count and returns. Otherwise the write advances the pointer eight bytes and adds two to the count at 0x1060.

- `__glOdylc_TexCoord1sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2211100
  **Inferred.** Writes a one-dimensional short texture coordinate as two words. The header is 0xc380c41e, and the halfword at (a0) is loaded with lh and stored unconverted as a word at record offset 4. The room test asks for two words and uses the same padding rule. A failed test calls __glSPDlistSpace with zero, and a zero reply rolls the write pointer back four bytes and raises the free count by one.

- `__glOdylc_TexCoord2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2211360
  **Inferred.** Appends a two-dimensional double texture coordinate as three words. The header is 0xc380c821. The doubles at (a0) and 8(a0) are narrowed with cvt.s.d into record offsets 4 and 8. The room test needs three words, plus padding under the same conditions as the one-dimensional routine. A short room sends the call to __glSPDlistSpace through gp-0x6160.

- `__glOdylc_TexCoord2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2211490
  **Inferred.** Takes the float arguments in f12 and f13 and writes them behind the header 0xc380c821: f12 at record offset 4, f13 at offset 8. Both floats are spilled to the stack before the __glSPDlistSpace call, so they survive it. Three words are needed. A zero reply from the call backs the write pointer up four bytes and adds one free word.

- `__glOdylc_TexCoord2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22115c0
  **Inferred.** Reads two floats from the pointer in a0 with lwc1 at offsets 0 and 4, and writes them after the header 0xc380c821 at record offsets 4 and 8. The free-word count at 0x1048 is compared with three words, plus the pad when it applies. On a short room the routine asks __glSPDlistSpace for space, and a zero answer backs the write pointer up four bytes.

- `__glOdylc_TexCoord2iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2211810
  **Inferred.** Copies two 32-bit integers from (a0) into a record with the header 0xc380c820. The words are loaded with lw and stored with sw at offsets 4 and 8, unconverted. The three-word record gets the usual room test. When the test fails, the routine calls __glSPDlistSpace with zero, and a zero result moves the write pointer back four and raises the free count by one.

- `__glOdylc_TexCoord2s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2211930
  **Inferred.** Takes two short arguments in a0 and a1 and stores their low words unconverted at record offsets 4 and 8, after the header 0xc380c820. The free-word count is loaded into t0 at entry for the room test. Both arguments are spilled to the stack before the __glSPDlistSpace call and reloaded after it.

- `__glOdylc_TexCoord2sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2211a60
  **Inferred.** Reads two halfwords from (a0) with lh, at offsets 0 and 2, and writes them unconverted at record offsets 4 and 8 behind the header 0xc380c820. Three words of room are needed. A zero reply from __glSPDlistSpace rolls the pointer back four bytes and raises the free count by one.

- `__glOdylc_TexCoord3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2211b80
  **Inferred.** Appends a three-dimensional double texture coordinate as four words. The header is 0xcc23, and the doubles in f12, f13 and f14 are narrowed with cvt.s.d into record offsets 4, 8 and 0xc, in that order. Four words are required, plus padding when bit 2 of the write pointer is set and the count at 0x1060 is zero. The three arguments are spilled to the stack before the space query.

- `__glOdylc_TexCoord3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2211cd0
  **Inferred.** Reads three doubles from the pointer in a0 with ldc1 at offsets 0, 8 and 0x10, narrows them with cvt.s.d, and writes them at record offsets 4, 8 and 0xc after the header 0xcc23. The room test needs four words. A short room calls __glSPDlistSpace with zero through gp-0x6160.

- `__glOdylc_TexCoord3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2211e10
  **Inferred.** Takes three float arguments in f12 to f14 and writes them at record offsets 4, 8 and 0xc behind the header 0xcc23, with f12 first. Four words are needed. The floats are saved to the stack before the space query and reloaded for the write.

- `__glOdylc_TexCoord3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2211f50
  **Inferred.** Copies three floats from (a0) with lwc1, at offsets 0, 4 and 8, into the record at offsets 4, 8 and 0xc, behind the header 0xcc23. The floats are moved as words with no conversion. Four words are required.

- `__glOdylc_TexCoord3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22121c0
  **Inferred.** Copies three 32-bit words from (a0) with lw into record offsets 4, 8 and 0xc after the header 0xcc22. No conversion is done. Four words are needed for the room test, and a short room takes the __glSPDlistSpace path.

- `__glOdylc_TexCoord3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22122f0
  **Inferred.** Writes three short arguments a0, a1 and a2 unchanged at record offsets 4, 8 and 0xc after the header 0xcc22. The free-word count is loaded at entry. The arguments are spilled to the stack around the space query and reloaded afterwards.

- `__glOdylc_TexCoord3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2212430
  **Inferred.** Reads three halfwords from (a0) with lh at offsets 0, 2 and 4, and stores them unconverted at record offsets 4, 8 and 0xc behind the header 0xcc22. Four words of room are required.

- `__glOdylc_TexCoord4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2212560
  **Inferred.** Takes four double arguments f12 to f15, narrows each with cvt.s.d, and writes them at record offsets 4, 8, 0xc and 0x10 after the header 0xd025. The record is five words, 20 bytes, and the room test asks for five words plus padding under the usual rule. The arguments are spilled to the stack before the space query.

- `__glOdylc_TexCoord4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22126d0
  **Inferred.** Reads four doubles from (a0) with ldc1 at offsets 0, 8, 0x10 and 0x18, narrows them with cvt.s.d, and writes them at record offsets 4 through 0x10 after the header 0xd025. Five words are needed, and the count at 0x1060 goes up by five on success.

- `__glOdylc_TexCoord4f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2212810
  **Inferred.** Writes the four float arguments f12 to f15 after the header 0xd025, in argument order at record offsets 4, 8, 0xc and 0x10, with no conversion. Five words are needed. The arguments are saved to the stack around the __glSPDlistSpace call.

- `__glOdylc_TexCoord4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2212970
  **Inferred.** Copies four floats from (a0) with lwc1 at offsets 0, 4, 8 and 0xc into record offsets 4 through 0x10, behind the header 0xd025. Five words of room are required.

- `__glOdylc_TexCoord4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2212bf0
  **Inferred.** Copies four 32-bit words from (a0) into record offsets 4 through 0x10 with lw and sw, unconverted. The header is 0xd024. Five words of room are needed.

- `__glOdylc_TexCoord4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2212d20
  **Inferred.** Writes the four short arguments a0 to a3 unchanged at record offsets 4 through 0x10 behind the header 0xd024. The free-word count is loaded into t2 at entry. The four arguments are saved to the stack before the space query and reloaded after it.

- `__glOdylc_TexCoord4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2212e70
  **Inferred.** Reads four halfwords from (a0) with lh at offsets 0, 2, 4 and 6, and writes them unconverted at record offsets 4 through 0x10 behind the header 0xd024. Five words of room are required.

- `__glOdyim_TexGenfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2212fa0
  **Inferred.** Sets one texture-generation parameter from a float vector. A word at 0x1030 equal to 1 reports 0x502 through __glSetError and returns. The coordinate in a0 chooses the context table entry: 0x2000 gives +0x8c8, 0x2001 gives +0x944, 0x2002 gives +0x9c0 and 0x2003 gives +0xa3c, and any other value reports 0x500. The name in a1 selects the path. 0x2500 reads the float as an integer mode and stores it at the entry, with bit 0x100 set in the word at +0x18e58, and 0x2402 (sphere map) is refused with 0x500 for the R and Q coordinates. 0x2501 stores four floats at entry +0x14 through +0x20. 0x2502 copies four floats to the stack and calls the routine at offset 0xc0 of the object whose pointer is at context +0x94a8, with the entry plus 4 as a0, the stack plane as a1 and the object plus 0x68 as a2. A success sets 0x1030 to 2 and sets bit 0x20 in the word at +0x18e58.

- `__glOdyim_TexGenf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2213200
  **Inferred.** Single-float wrapper for the vector routine. It spills the float in f14 to the stack at sp+0x20. A name in a1 other than 0x2500 reports 0x500 through __glSetError and returns. For 0x2500 it calls __glOdyim_TexGenfv at 0x2212fa0 with a0 and a1 unchanged and a2 pointing at the spilled float.

- `__glOdyim_TexGendv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2213260
  **Inferred.** Double-vector form of texture generation. The mode from (a2) is read as a double and truncated to an integer with trunc.l.d. The plane values are read with ldc1 and narrowed with cvt.s.d before they are stored at the entry or passed to the object routine at offset 0xc0. The coordinate table, the error codes 0x500 and 0x502, the state word at 0x1030 and the bit updates at +0x18e58 and +0x4714 follow the float form.

- `__glOdyim_TexGend` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22134e0
  **Inferred.** Spills the double in f14 at sp+0x20 and forwards it to __glOdyim_TexGendv at 0x2213260, with a2 pointing at the spill, when a1 is 0x2500. Any other name reports 0x500 through __glSetError and returns.

- `__glOdyim_TexGeniv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2213540
  **Inferred.** Integer-vector texture generation. The state check, the coordinate table at +0x8c8, +0x944, +0x9c0 and +0xa3c, and the error codes match the float routine. The mode is read as a 32-bit word with lw and compared directly with 0x2400, 0x2401 and 0x2402. The plane values are read with lw and converted with cvt.s.w before they are stored or passed to the object routine at offset 0xc0.

- `__glOdyim_TexGeni` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22137d0
  **Inferred.** Integer scalar wrapper. It keeps the integer parameter in a2 at sp+0x24 and calls __glOdyim_TexGeniv at 0x2213540 with a2 pointing at that slot when a1 is 0x2500. Other names report 0x500 through __glSetError. The coordinate in a0 passes through unchanged and is not checked here.

- `updateTexGenCoord` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2213830
  **Inferred.** Builds one texture-generation plane and writes it to the command port. The request in a1 starts with a mode word. Mode 0x2401 uses the four floats at a1+0x14 as the plane. Mode 0x2400 takes the four floats at a1+4 through a1+0x10 as coefficients, multiplies them by the 4x4 matrix whose pointer sits at context+0x94a8, and stores the four dot products, one per matrix row (rows 0x10 bytes apart), at sp+0 through sp+0xc. Any other mode returns with nothing written. The plane goes to context+0xbb84+4*a2, the index a2 is stored at context+0xc568, and then three words go to the port at 0x10000: the header 0x31008000 OR'd with a2 & 0x3ff and (a2 >> 10) << 23, then 0x908091bb, then the four plane floats.

- `__glOdysseyValidateTexGen` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22139d0
  **Inferred.** Re-sends the generation planes whose enable bits are set. It reads the word at context+0x808 and, for each of bits 18, 19, 20 and 21 that is set, calls updateTexGenCoord on the request at context+0x8c8, +0x944, +0x9c0 or +0xa3c with index 0x100, 0x104, 0x108 or 0x10c. It saves the word at context+0xc568 before those calls. If the word differs afterwards, it puts the saved value back and sends one header word built from it to the port at 0x10000. If the word is unchanged it returns without a port write.

- `FreeTextureObject` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2213b20
  **Inferred.** Tears down the driver side of one texture object in a1. When the driver handle word at object+0x504 is not -1, it calls an external routine through the GOT with the context in a0 and a pointer to that handle word in a1. It then calls the function pointer at context+0x18 with the context as its only argument.

- `__glOdysseyTextureDriverDestroy` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2213f60
  **Inferred.** Releases four per-target texture records held in the context at +0x18858, +0x18860, +0x18868 and +0x18870. Each pointer is loaded in turn. When the word at offset +0x10 of that record is nonzero, the same GOT routine is called with the context as its argument. The routine saves ra, s0, s1 and gp on the stack and restores them on the way out.

- `__glOdysseyTextureDriverInit` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2213d80
  **Inferred.** Creates the seven default texture objects in the context. It calls InitTextureObject at 0x2213b80 for objects at context+0x144c0 (target 0xde0), +0x14e68 (0xde1), +0x15810 (0x806f), +0x161b8 (0x8095), +0x16b60 (0x8063), +0x17508 (0x8064) and +0x17eb0 (0x8070), passing zero as the second argument. The object pointers for 0xde0, 0xde1, 0x806f and 0x8095 are stored at +0x18858, +0x18860, +0x18868 and +0x18870. The words at +0x18880 and +0x18888 are zeroed. Bit 1 is set in the word at context+0xa000 after its low three bits are cleared. Seven words from +0x1456c through +0x14584 are copied to +0xa014 through +0xa02c, and bits 0x100 and 0x200 are set in the word at +0x18e54. The absolute word at 0x1030 is set to 2 on entry and again before the return.

- `InitTextureObject` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2213b80
  **Inferred.** Fills a new texture object with the GL defaults. The second argument is stored at +0x10 and the third, the target, at +0x14. The min filter word at +0x1c is 0x2702 (GL_NEAREST_MIPMAP_LINEAR) and the mag filter word at +0x20 is 0x2601 (GL_LINEAR). The three wrap words at +0x24, +0x28 and +0x2c are 0x2901 (GL_REPEAT). The driver handle word at +0x504 is -1, meaning none. Sixteen level records of 0x44 bytes start at +0x580, each with word 1 first and zeros after. The routine then makes two calls through the GOT, the first on object+0x104 with a1 = 0x400 and the second on the object with a1 = 2. Last, it stores the size limits 0x1000 at +0xe4, +0xec, +0xf4 and +0xfc, the constant 0x800000 at +0xac, 1000 at +0x68 and 0xf00 at +0xd4.

- `floatTo12` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2214010
  **Inferred.** Converts the float in f12 to a 12-bit unsigned count. A value at or below zero returns 0. A positive value is multiplied by the float at gp+0x900, truncated to an integer, and clamped to 0xfff.

- `__glOdysseyGetCurrentTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22140d0
  **Inferred.** Maps a GL texture target in a1 to a slot in the context. For the targets 0xde0, 0xde1, 0x806f and 0x8095 it loads and returns the pointer held at +0x18858, +0x18860, +0x18868 and +0x18870 respectively. For the proxy targets 0x8063, 0x8064 and 0x8070 it returns the address a0+0x16b60, a0+0x17508 or a0+0x17eb0 without a load. Any other target returns zero.

- `CalcPixelModePixelFormat` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2214990
  **Inferred.** Returns 0x1 when a0 equals 0x1 and 0x0 for every other value, including 0x0 and 0x2. It xors a0 with 0x1 and a conditional move copies the 0x1 constant into the result only when that xor is zero.

- `CheckTargetLevel` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22180c0
  **Inferred.** Checks a texture target in a0 and a level in a1. The accepted targets are 0xde0, 0xde1, 0x8063, 0x8064, 0x806f, 0x8070 and 0x8095, and any other target returns 0x500. A negative level returns 0x501, as does a level above the word at +0xff8 of the current context. The current context is read from absolute address 0x1020. Otherwise the routine returns 0.

- `GetImageFmtEnumFromBuzzTexFormat` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22141c0
  **Inferred.** Maps a buzz texture format index in a0 to an image format code. Indexes below 50 go through a jump table of 8-byte code addresses at the GOT-derived base plus 0x1b50. Index 0 gives 0, 2 gives 1, 4 gives 2, 8 gives 3, 9 through 13 give 4 through 8, 16 gives 9, 17 gives 10, 18 gives 11, 33 gives 12, 32 gives 13, 48 gives 14 and 49 gives 15. Every other index below 50 gives -1, and any index of 50 or more also gives -1 without the table.

## Skipped

Skipped for time, because each is larger than the reading budget or needs its jump tables and argument juggling traced through first: CheckSubImageSizes, TexImage, CopyTexImage, TexSubImage, CopyTexSubImage, CheckInternalFormat, CheckHostFormatType, ChooseSuitableBuzzTexModeBaseFmt, CalcTexelSizes, DoMipmapHack, DoMipmapHackHW, LoadTextureFromHost, LoadTextureFromReadable, AllocateGfxMemForTexture, __glOdysseyTextureActivate, __glOdysseyValidateTexture, __glOdysseyValidateTextureState, and the __glOdyim_ TexImage, CopyTexImage and TexSubImage wrappers (1D, 2D, 3D and CopyTexSubImage 1DEXT and 2DEXT).

Not read in full, because the disassembler stops after 12 bytes at the conditional-move floating-point instructions: floatToS58_Clamp and floatToS312_Clamp.

- `__glOdysseyTextureSetSWrap` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221a240
  **Inferred.** Sets the S wrap mode of the texture in the context in a0. The enumerant in a1 must be 0x2901,
  0x2900, 0x812f or 0x812d, which are repeat, clamp, clamp-to-edge and clamp-to-border. Any other value reports
  0x500 through `__glSetError` and stores nothing. The raw enumerant goes to +0x24. A two-bit code goes to bits
  12 and 13 of the word at +0xbc, and a six-bit field goes to bits 18 to 23 of the word at +0xb0. The pairs are
  (0, 0) for repeat, (2, 0) for clamp, (1, 1) for clamp-to-edge and (3, 0x3f) for clamp-to-border. Bit 0x200
  is set in the word at +0xa8.

- `__glOdysseyTextureSetTWrap` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221a2f0
  **Inferred.** The T-axis counterpart of the S setter. It takes the same four enumerants and the same
  rejection, reporting 0x500 for anything else. The raw value is stored at +0x28, the six-bit field at bits 18
  to 23 of +0xb4, and the two-bit code at bits 10 and 11 of +0xbc (the code shifted left 10). The pairs match
  the S setter, and bit 0x200 is set in +0xa8.

- `__glOdysseyTextureSetRWrap` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221a3a0
  **Inferred.** The R-axis setter. It reads the target at +0x14 and compares it with 0x806f (3D). For any other
  target the effective value becomes 0x2901, so only a 3D texture takes the enumerant as given. The raw value
  is stored at +0x2c and the effective value at +0x30 before the check, so a rejected value still leaves those
  two words changed. Values outside the four accepted enumerants report 0x500 through `__glSetError`. The field
  goes to bits 18 to 23 of +0xb8 and the two-bit code to bits 8 and 9 of +0xbc, using the same pairs as the S setter.

- `__glOdysseyTextureSetDetailLevel` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221a980
  **Inferred.** Stores a detail level. A level that is zero or positive reports 0x501 through `__glSetError`.
  For a negative level the routine stores the raw level at +0x48, takes its magnitude, caps it at 15, shifts it
  left 25 and puts it in bits 25 to 29 of the word at +0xac (mask 0x3e000000). Bit 0x200 is set in +0xa8.

- `__glOdysseyTextureSetDetailMode` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221a9e0
  **Inferred.** Selects the detail blend. The mode in a1 must be 0x104 or 0x2100, and any other value reports
  0x500 through `__glSetError`. For 0x2100 the routine sets bit 31 of the word at +0xac (0x80000000). For 0x104
  it clears that bit with the mask 0x7fffffff. Both accepted modes store the raw mode at +0x4c and set bit 0x200
  in the word at +0xa8.

- `__glOdysseyTextureSetMaxClamp` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221aa50
  **Inferred.** Checks the single-precision value in f14 against zero and against the double constant at
  gp+0xb60. The value must lie from 0.0 up to and including that constant, and any other value reports 0x501
  through `__glSetError`. A valid value is stored as a single-precision float through the pointer in a1. The
  word at +0x18 becomes 2 and bit 0x200 is set in the word at +0xa8.

- `__glOdyim_TexEnvf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221c670
  **Inferred.** The single-float texture environment entry. It accepts only the parameter name 0x2200 in a1,
  and any other name reports 0x500 through `__glSetError`. For 0x2200 it spills the float from f14 to the stack
  and calls `__glOdyim_TexEnvfv` at 0x221c3e0 with the target and name unchanged and the address of the spilled
  float in a2.

- `__glOdyim_TexEnvi` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221c950
  **Inferred.** The integer form of the environment entry. The name in a1 must be 0x2200, or the call reports
  0x500. The integer in a2 is saved on the stack at sp+0x24, and for 0x2200 the routine calls
  `__glOdyim_TexEnviv` at 0x221c6d0 with a2 set to that stack slot.

- `SetDetailEntry` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221cb90
  **Inferred.** Writes one detail-table word. The word at index a1 of the array at a0 gets a 12-bit field in
  bits 12 to 23, and bits 21 and 27 of that word are cleared. The float in f14 is first clamped: values below
  zero become 0.0, and a value above the double at gp+0xb60 is replaced by the float at gp+0x8e8. When the clamped
  value equals the double constant, the field is all ones. Otherwise the float at gp+0x8fc is used when the
  constant is at or below the value, and the value times the float at gp+0x900 is used when it is below. The
  field takes the low 12 bits of the truncated result shifted left 12, and every other bit is kept.

- `__glOdyim_GenTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221d540
  **Inferred.** Allocates texture names. If the begin flag at 0x1030 is 1 it reports 0x502 through `__glSetError`.
  A count below zero reports 0x501. A zero count or a null name array returns with nothing done. Otherwise the
  routine calls `__glNamesGenNames` with the current context, the name table pointer at context +0x18878, the
  count and the array pointer. The current context is read from absolute 0x1020.

- `__glOdysseyIsTextureResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221d5e0
  **Inferred.** Takes a texture object in a1. If the word at +0x504 is -1 the object has no resident handle and
  the routine returns 0. Otherwise it calls `__glOdysseyPMObjGroupResident` with the first argument unchanged,
  the handle from +0x504 in a1 and the word at +0x64 in a2, and returns the low byte of that result.

- `__glOdyim_AreTexturesResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221d650
  **Inferred.** Reports residency for n names, with names in a1 and one byte per name written to the array in a2.
  A begin flag of 1 reports 0x502 and returns 0, and a negative count reports 0x501 and returns 0. A zero count
  returns 1. For each name, the routine locks the object through `__glNamesLockData` using the table at context
  +0x18878. A zero name or a name with no object reports 0x501 and returns 0. For a found object it calls
  `__glOdysseyIsTextureResident`, stores 1 or 0 in the byte array, and unlocks the object. The return is 1 only
  if every name was resident.

- `__glOdyim_PrioritizeTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221d820
  **Inferred.** Sets priorities for n names, with the priority floats in the array at a2. A begin flag of 1 reports
  0x502, and a negative count reports 0x501; both return with nothing set. For each nonzero name that locks to an
  object, the routine calls `Clampf` at 0x221d7f0 with the priority, 0.0 and the float at context +0xf2c, and stores
  the result at object +0x44 before unlocking the object. At the end it sets bit 0x200 in the word at context
  +0x18e58 and writes 2 to the word at absolute 0x1030.

- `__glOdyim_IsTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221d990
  **Inferred.** Tests whether a texture name exists. A begin flag of 1 reports 0x502 and returns 0. A zero name
  returns 0. Otherwise it locks the name with `__glNamesLockData` using the table at context +0x18878. A null
  result returns 0. A non-null object is passed to `__glNamesUnlockData` and the routine returns 1.

- `Clampf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221d7f0
  **Established.** Clamps the float in f12 between the lower bound in f13 and the upper bound in f14. If f12 is
  below f13 the result is f13 (the c.lt.s at 0x221d7f0 branches to 0x221d80c, with the mov.s at 0x221d7f8 in
  its delay slot). Otherwise the routine sets f0 to f14 at 0x221d7fc, and the movf.s at 0x221d808 moves f12 into
  f0 unless the c.lt.s at 0x221d800 found f14 below f12. The routine is 36 bytes with no stores and no calls.

- `__glOdysseyIoctl` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221da60
  **Inferred.** A thin wrapper around the system `ioctl`. It loads the descriptor as the word at the first
  argument plus 0x9e98, passes that as the descriptor, and forwards the second and third arguments unchanged.
  The return value in v0 is the result of `ioctl`.

- `__glOdysseyGetHardwareShadowTest` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221daa0
  **Inferred.** Takes no arguments. It loads the current context from absolute 0x1020 into a0, sets a1 to zero,
  and calls `__glOdysseyGetHardwareShadow` at 0x221dae0 directly. The call's return value is returned unchanged.

- `__glOdysseyFlush` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221deb0
  **Inferred.** Writes a fixed list of words to the register at absolute 0x10000, in this order: 0x10443, 0xfa,
  0x10046, 0x10046, 0x10019, 0x10443, 0x96, then 0x10046 four times. It then stores zero at a0 + 0xbb80, which is
  0x10000 + a0 - 0x4480, and finishes with 0x10443, 0xfa and 0x10046 twice.

- `__glOdysseyVisualsMatch` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221e240
  **Inferred.** Compares two visual structures, the second and fourth arguments, against a context. It returns 0
  unless the word at the second argument equals the word at +0xde0 of the first argument, and both structures have
  zero at +0x54. If the byte at +4 of the second structure is clear, the words at +0x24 must match. If it is set,
  the fourth structure's byte at +4 must also be set and the words at +0x28 must match. The result is 1 when
  these checks pass and 0 when one fails.

- `AfterIgloo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221ea00
  **Inferred.** Does nothing unless the byte at context +0xde4 is set. When it is set, the routine calls the
  function at slot +0x100 of the table that context +0x1ad8 points to eight times. The calls pass face 0x404 or
  0x405, property 0x1200, 0x1201, 0x1202 or 0x1600, and a pointer into the context at +0x1c4ac, +0x1c4bc, +0x1c4cc,
  +0x1c4dc, +0x1c4fc, +0x1c50c, +0x1c51c or +0x1c52c. Each face and property pair has its own pointer. After the
  calls it clears the byte at +0x1c54c.

- `__glOdyim_IglooVertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221f620
  **Established.** Forwards two doubles, f12 and f13, to a vertex routine chosen by the mode word at context +0x1c480. Modes 0 and 1 call `__glOdyim_Vertex2d`, mode 2 calls `__glOdyim_Vertex2d_smallw`, and mode 3 calls `__glOdyim_Vertex2d_mag` when bit 22 of the word at +0x9ec0 is set or `__glOdyim_Vertex2d_mag_line0` when it is clear; those two calls also get the word at +0x9ec0 shifted left 41 in a6. Any other mode calls nothing. When both low bits of the word at +0x9e88 are set, `BeforeIgloo` (0x221eb50) runs before the dispatch and `AfterIgloo` (0x221ea00) runs after it. The dispatched call gets the mode in a1 and the constants 1, 3 and 2 in a2, a3 and a4.

- `__glOdyim_IglooVertex2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221f760
  **Inferred.** The vertex pointer reaches the callee in a0 without any load through it in this routine. Mode 0 or 1 goes to `__glOdyim_Vertex2dv`, mode 2 to `__glOdyim_Vertex2dv_smallw`, and mode 3 to the mag pair, picked by bit 22 of +0x9ec0 with the shifted word in a7. The mode sits in a2 and the constants 1, 3 and 2 in a3, a4 and a5. The same +0x9e88 test brackets the dispatch with `BeforeIgloo` and `AfterIgloo`.

- `__glOdyim_IglooVertex2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221f880
  **Inferred.** Two single-precision arguments are copied with mov.s into f4 and f5 before the dispatch, then passed on in f12 and f13. The callees are `__glOdyim_Vertex2f` for modes 0 and 1, `__glOdyim_Vertex2f_smallw` for mode 2, and the mag or mag_line0 routine for mode 3. Those calls take the mode in a1 and 1, 3, 2 in a2 to a4.

- `__glOdyim_IglooVertex2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221f9c0
  **Inferred.** Nothing is read through the pointer in a0, which is simply handed to the selected callee. Modes 0 and 1 reach `__glOdyim_Vertex2fv`, mode 2 reaches `__glOdyim_Vertex2fv_smallw`, and bit 22 of +0x9ec0 separates the two mode-3 callees. Mode goes in a2, then the constants 1, 3 and 2 in a3 to a5.

- `__glOdyim_IglooVertex2i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221fae0
  **Inferred.** Integer arguments a0 and a1 arrive and leave in the same registers. The mode word from +0x1c480 is passed in a3 and the constants 1, 3 and 2 in a4, a5 and a6. Modes 0 and 1 call `__glOdyim_Vertex2i`, mode 2 calls `__glOdyim_Vertex2i_smallw`, and mode 3 calls the `_mag` or `_mag_line0` routine.

- `__glOdyim_IglooVertex2iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221fc10
  **Inferred.** The routine keeps the a0 pointer intact, never reads through it, and forwards it. Its dispatch is driven by the word at +0x1c480: 0 or 1 selects `__glOdyim_Vertex2iv`, 2 selects its `_smallw` form, and 3 selects a mag form. The mode is handed over in a2 with the constants in a3 to a5.

- `__glOdyim_IglooVertex2s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221fd30
  **Inferred.** Same instructions as `__glOdyim_IglooVertex2i` apart from addresses: a0 and a1 pass through unchanged, the mode goes to a3, and the constants are 1, 3 and 2 in a4 to a6. The callees are `__glOdyim_Vertex2s`, `__glOdyim_Vertex2s_smallw`, `__glOdyim_Vertex2s_mag` and `__glOdyim_Vertex2s_mag_line0`.

- `__glOdyim_IglooVertex2sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221fe60
  **Inferred.** Its only argument is the pointer in a0, which the body hands along without dereferencing. Mode 0 or 1 calls `__glOdyim_Vertex2sv`, mode 2 calls the `_smallw` form, and mode 3 calls the mag pair, split on bit 22 of +0x9ec0. Mode in a2; constants 1, 3, 2 in a3, a4, a5.

- `__glOdyim_IglooVertex3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221ff80
  **Inferred.** Three doubles in f12, f13 and f14 go to the callee unchanged, with f14 copied through f4 by mov.d. Modes 0 and 1 call `__glOdyim_Vertex3d`, mode 2 calls `__glOdyim_Vertex3d_smallw`, and mode 3 calls the mag or mag_line0 routine on bit 22 of +0x9ec0. The mode is in a1, the constants 1, 3 and 2 in a2, a3 and a4, and the mag calls also take the shifted word in a6.

- `__glOdyim_IglooVertex3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22200e0
  **Inferred.** A pointer to three doubles, passed in a0 and not read here. The callee is `__glOdyim_Vertex3dv` for modes 0 and 1, `__glOdyim_Vertex3dv_smallw` for mode 2, and one of the two mag routines for mode 3. Bit 22 of +0x9ec0 chooses between them, and the mode is in a2 with the constants in a3 to a5.

- `__glOdyim_IglooVertex3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2220200
  **Inferred.** Single-precision values f12, f13 and f14 are copied with mov.s and then forwarded. Mode 3 is the only mode that reads bit 22 of +0x9ec0, and it picks `__glOdyim_Vertex3f_mag` or `__glOdyim_Vertex3f_mag_line0`. The other callees are `__glOdyim_Vertex3f` and `__glOdyim_Vertex3f_smallw`, called with the mode in a1 and the constants in a2 to a4.

- `__glOdyim_IglooVertex3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2220360
  **Inferred.** The body treats a0 as an opaque pointer and passes it to the chosen callee. Callees are `__glOdyim_Vertex3fv`, `__glOdyim_Vertex3fv_smallw`, `__glOdyim_Vertex3fv_mag` and `__glOdyim_Vertex3fv_mag_line0`, selected from the mode at +0x1c480 and the bit-22 test. The mode is carried in a2 and the constants in a3 to a5.

- `__glOdyim_IglooVertex3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2220480
  **Inferred.** Three integers arrive in a0, a1 and a2 and are passed on in those registers. The mode goes in a4, and the constants 1, 3 and 2 go in a5, a6 and a7. Callee choice follows the mode table, with `__glOdyim_Vertex3i_smallw` for mode 2 and the mag pair for mode 3.

- `__glOdyim_IglooVertex3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22205b0
  **Inferred.** This one does not load the vertex words; it forwards the pointer in a0. The word at +0x1c480 picks `__glOdyim_Vertex3iv` (0 or 1), `__glOdyim_Vertex3iv_smallw` (2), or a mag routine (3). Mode is passed in a2 and the constants 1, 3 and 2 in a3, a4 and a5, and the mag calls get the shifted +0x9ec0 word in a7.

- `__glOdyim_IglooVertex3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22206d0
  **Inferred.** Arguments a0 through a2 are forwarded as they arrived. The mode goes in a4 and the constants in a5, a6 and a7. The callees are `__glOdyim_Vertex3s`, `__glOdyim_Vertex3s_smallw`, `__glOdyim_Vertex3s_mag` and `__glOdyim_Vertex3s_mag_line0`, and the BeforeIgloo and AfterIgloo gates are the ones used by the other Igloo entries.

- `__glOdyim_IglooVertex3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2220800
  **Inferred.** Mode 0 or 1 calls `__glOdyim_Vertex3sv`, mode 2 calls its `_smallw` form, and mode 3 picks a mag routine by testing bit 22 of +0x9ec0. The pointer in a0 is not dereferenced. The mode is handed over in a2 and the constants 1, 3 and 2 in a3, a4 and a5.

- `__glOdyim_IglooVertex4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2220920
  **Established.** Four doubles, f12 through f15, are passed on unchanged. Modes 0 and 1 call `__glOdyim_Vertex4d`, mode 2 calls `__glOdyim_Vertex4d_smallw`, and mode 3 calls `__glOdyim_Vertex4d_mag` when bit 22 of the word at +0x9ec0 is set or `__glOdyim_Vertex4d_mag_line0` when it is clear. The mag calls also take the word at +0x9ec0 shifted left 41 in a6. The mode goes in a1 and the constants 1, 3 and 2 in a2 to a4. When both low bits of +0x9e88 are set, `BeforeIgloo` runs before the dispatch and `AfterIgloo` after it.

- `__glOdyim_IglooVertex4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2220aa0
  **Inferred.** A pointer to four doubles is handed through in a0. Dispatch goes to `__glOdyim_Vertex4dv` for modes 0 and 1, to `__glOdyim_Vertex4dv_smallw` for mode 2, and to a mag routine for mode 3. Bit 22 of +0x9ec0 selects the mag routine, and the shifted word goes in a7 on those calls.

- `__glOdyim_IglooVertex4f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2220bd0
  **Inferred.** Single-precision values f12 through f15 are forwarded in place, with f15 copied through f5 by mov.s. Mode 0 or 1 reaches `__glOdyim_Vertex4f`, mode 2 reaches `__glOdyim_Vertex4f_smallw`, and mode 3 reaches the mag or mag_line0 callee. The mode goes in a1 and the constants in a2, a3 and a4.

- `__glOdyim_IglooVertex4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2220d50
  **Inferred.** The vertex data stays behind the a0 pointer, which is passed without a read. The table is `__glOdyim_Vertex4fv` for modes 0 and 1, its `_smallw` form for mode 2, and the `_mag` and `_mag_line0` pair for mode 3. The mode is in a2 and the constants are in a3 to a5.

- `__glOdyim_IglooVertex4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2220e80
  **Inferred.** All four integer arguments, a0 through a3, are forwarded unchanged. The mode goes in a5 and the constants 1 and 3 in a6 and a7; the prologue also loads 2 into a4. Callees are `__glOdyim_Vertex4i`, `__glOdyim_Vertex4i_smallw`, `__glOdyim_Vertex4i_mag` and `__glOdyim_Vertex4i_mag_line0`.

- `__glOdyim_IglooVertex4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2220fc0
  **Inferred.** The pointer in a0 is forwarded and not loaded. Mode 0 or 1 goes to `__glOdyim_Vertex4iv`, mode 2 goes to `__glOdyim_Vertex4iv_smallw`, and mode 3 goes to a mag routine chosen by bit 22 of +0x9ec0. Mode is carried in a2 and the constants 1, 3 and 2 in a3, a4 and a5.

- `__glOdyim_IglooVertex4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22210f0
  **Inferred.** Arguments a0 to a3 are passed through with their values. The word at +0x1c480 is handed over in a5 and the constants 1 and 3 in a6 and a7, with 2 loaded into a4 in the prologue. The callees are `__glOdyim_Vertex4s`, `__glOdyim_Vertex4s_smallw`, `__glOdyim_Vertex4s_mag` and `__glOdyim_Vertex4s_mag_line0`.

- `__glOdyim_IglooVertex4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2221230
  **Inferred.** Here the single argument is the pointer in a0, which is passed on. Dispatch: `__glOdyim_Vertex4sv` for mode 0 or 1, its `_smallw` form for 2, and a mag form for 3, with bit 22 of +0x9ec0 choosing between the two mag forms. Mode in a2 and constants in a3 to a5.

- `__glOdylc_Vertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2221360
  **Established.** Writes a 12-byte record at the list pointer word +0x1058: the header 0x8080c801, then x from f12 and y from f13, each converted to single precision, at +4 and +8. Every call ORs 0x40000 into the word at context +0x15e4. When the word at 0x1060 is zero, bit 2 of the pointer is a 4-byte skip (1 if set) and the room test is skip plus 3 words; when it is nonzero the skip is 0 and the test is 3 words. A short room calls `__glSPDlistSpace` with zero in a0, 0x40000 in a1 and the count word at 0x1048 in a2. If that call returns zero, the pointer moves back 4 bytes, 1 is added to the count word and the routine returns without writing. Otherwise the record is written at pointer plus 4 times the skip, the pointer advances by 12, the count word becomes the free count minus the skip minus 3, and the word at 0x1060 rises by 3.

- `__glOdylc_Vertex2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22214b0
  **Inferred.** The record layout is the scalar double form's, but the x and y doubles are loaded from the pointer in a0 at offsets 0 and 8 and converted. The space call passes zero in a0, the context pointer (loaded from 0x1020) in a1, 0x40000 in a2 and the count in a3.

- `__glOdylc_Vertex2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22215f0
  **Inferred.** Here f12 and f13 are stored as single-precision words with no conversion, after mov.s copies into f5 and f4, at +4 and +8 behind the header 0x8080c801. The room test, the 0x1060 skip, the fail path and the 0x1048 count update all match the double form.

- `__glOdylc_Vertex2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2221730
  **Inferred.** Single-precision x and y come from the pointer in a0 at offsets 0 and 4 with lwc1, then go to +4 and +8 unconverted behind 0x8080c801. When room is short the space call receives the context pointer in a1, 0x40000 in a2, and the count in a3.

- `__glOdylc_Vertex2i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2221870
  **Inferred.** The header is 0x8080c800, which differs from the float form's 0x8080c801 only in the low bit. Integer arguments a0 and a1 are stored as raw words at +4 and +8. Its space call passes zero in a0, the caller's a1 in a1, the context pointer in a2, 0x40000 in a3 and the count in a4.

- `__glOdylc_Vertex2iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22219b0
  **Inferred.** Two words loaded from the pointer in a0, at offsets 0 and 4, are written at +4 and +8 after the 0x8080c800 header. A short room is answered by a call that takes a1 as the context pointer, a2 as 0x40000 and a3 as the count.

- `__glOdylc_Vertex2s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2221af0
  **Inferred.** Instruction for instruction the same as the integer routine at 0x2221870, apart from addresses. It stores a0 and a1 at +4 and +8 behind the 0x8080c800 header and makes the same `__glSPDlistSpace` call with zero, the caller's a1, the context pointer, 0x40000 and the count.

- `__glOdylc_Vertex2sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2221c30
  **Inferred.** Two halfwords are read from the pointer in a0 with lh, at offsets 0 and 2, sign-extended, and stored as words at +4 and +8 behind 0x8080c800. The space call uses the context pointer as its a1 argument, 0x40000 as a2 and the count as a3.

- `__glOdylc_Vertex3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2221d70
  **Inferred.** Writes a 16-byte record headed 0x8080cc03, with the doubles in f12, f13 and f14 converted to single precision at +4, +8 and +0xc. Its flag is 0x80000, ORed into the word at +0x15e4. The room needed is four words plus the bit-2 skip when 0x1060 is zero, the pointer advances by 16, the count word drops by 4 after the skip, and the word at 0x1060 rises by 4. Room is checked by `__glSPDlistSpace` with zero in a0, 0x80000 in a1 and the count in a2.

- `__glOdylc_Vertex3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2221ed0
  **Inferred.** Three doubles are read from the pointer in a0 at offsets 0, 8 and 0x10, converted, and stored at +4, +8 and +0xc after the 0x8080cc03 header. The call that makes room receives zero, the context pointer in a1, 0x80000 in a2 and the count in a3.

- `__glOdylc_Vertex3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2222020
  **Inferred.** Single-precision f12, f13 and f14 go into the record at +4, +8 and +0xc as raw words, copied through mov.s, behind 0x8080cc03. The three-coordinate room logic is the same as the double form, with a 0x80000 flag and four-word records.

- `__glOdylc_Vertex3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2222180
  **Inferred.** Three single-precision words come from the pointer in a0 at offsets 0, 4 and 8 with lwc1, and are stored at +4, +8 and +0xc behind 0x8080cc03. Space is requested with `__glSPDlistSpace`, which gets the context pointer in a1, 0x80000 in a2 and the count in a3.

- `__glOdylc_Vertex3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22222c0
  **Inferred.** Integer arguments a0, a1 and a2 go raw to +4, +8 and +0xc behind the header 0x8080cc02. The space call keeps a1 and a2 as the caller's values, puts the context pointer in a3, 0x80000 in a4 and the count in a5.

- `__glOdylc_Vertex3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2222410
  **Inferred.** Three words loaded from the pointer in a0 at offsets 0, 4 and 8 are written after 0x8080cc02 at +4, +8 and +0xc, and the word at 0x1060 rises by 4. The room call takes zero, then a1 as the context pointer, a2 as 0x80000 and a3 as the count.

- `__glOdylc_Vertex3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2222550
  **Inferred.** Same instructions as the integer three-coordinate routine at 0x22222c0, apart from addresses: raw a0, a1 and a2 at +4, +8 and +0xc behind 0x8080cc02, with the same room call.

- `__glOdylc_Vertex3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22226a0
  **Inferred.** Halfwords at offsets 0, 2 and 4 of the pointer in a0 are loaded with lh, sign-extended, and stored as words at +4, +8 and +0xc behind 0x8080cc02. The space request passes the context pointer in a1, 0x80000 in a2 and the count in a3.

- `__glOdylc_Vertex4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22227e0
  **Inferred.** Writes a five-word packet for a vertex given as four doubles in f12 to f15. The first word is the header 0x8080d005, followed by x, y, z and w converted to single precision in that order. Bit 20 is set in the context word at +0x15e4 before anything else. If the word at 0x1060 is nonzero the routine takes the slow path whenever the count at 0x1048 is below five; if it is zero the threshold is five plus a one-word pad, chosen by bit 2 of the write pointer at 0x1058. The slow path calls `__glSPDlistSpace` with zero and uses its return as the free count; a zero return moves the write pointer back four bytes and adds one to the count. On the fast path the write pointer advances by 0x14, the count drops by five and the word at 0x1060 rises by five.

- `__glOdylc_Vertex4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2222960
  **Inferred.** Pointer form of the double entry point: a0 holds the address of four doubles. The header is 0x8080d005 and the four values are read from offsets 0, 8, 0x10 and 0x18 and converted with cvt.s.d into the packet. The pointer is spilled to the frame before the slow call and reloaded afterwards. Space handling matches the scalar form, with the same count test, the same call to `__glSPDlistSpace` and the same rollback on a zero return.

- `__glOdylc_Vertex4f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2222ac0
  **Inferred.** Single-precision scalar form. The four arguments arrive in f12 to f15 and go into the packet unconverted, after the header 0x8080d005. The routine spills f12 to f15 as doubles to the frame so they survive the call to `__glSPDlistSpace`, then reloads them into f4 to f7. Context bit 20 at +0x15e4 is set on entry, and the counters at 0x1048, 0x1058 and 0x1060 are updated as in the double form.

- `__glOdylc_Vertex4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2222c30
  **Inferred.** Copies a four-float vector from the address in a0 into the packet with lwc1 and swc1, with no conversion. The header is 0x8080d005 and the words land at offsets 4, 8, 0xc and 0x10 of the packet. The pointer goes to the frame across the slow call. Bit 20 of the context word at +0x15e4 is set first, and the count and write-pointer updates match the other d005 forms.

- `__glOdylc_Vertex4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2222d80
  **Inferred.** Integer scalar form. The four integer arguments a0 to a3 are stored as raw words at packet offsets 4, 8, 0xc and 0x10. The header is 0x8080d004, the low halfword differing from the float forms' 0xd005. All four argument registers are spilled to the frame before the slow call and restored after it. The space test and rollback are the same as in the float forms.

- `__glOdylc_Vertex4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2222ee0
  **Inferred.** Integer pointer form. It reads four 32-bit words from the address in a0 with lw and writes them to packet offsets 4 to 0x10 with the header 0x8080d004. Register s1 is borrowed as a temporary during the copy and restored from the frame afterwards. The space test, the call to `__glSPDlistSpace` and the counter updates are the same as in `__glOdylc_Vertex4i`.

- `__glOdylc_Vertex4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2223030
  **Inferred.** Short scalar form that takes its four arguments in a0 to a3 and stores each as a full word, with no sign or width handling in the routine. The header is 0x8080d004. Each argument is stored at packet offset 4, 8, 0xc or 0x10, and the value is reused from the frame when the slow path returns. The count test and the rollback on a zero return follow the d004 pattern shared with Vertex4i.

- `__glOdylc_Vertex4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2223190
  **Inferred.** Short pointer form. It loads four halfwords from the address in a0 at offsets 0, 2, 4 and 6 with lh, so each value is sign-extended into a full register, and stores them as words after the header 0x8080d004. The address is kept in the frame over the slow call. Bit 20 is set in the context word at +0x15e4, and the write pointer and counters update as in the other forms.

- `__glOdylc_Vertex2dBbox` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22232e0
  **Inferred.** Updates a two-dimensional bounding box held in the context, then emits a three-word packet with header 0x8080c801, x and y. The box lives at context +0x12e80 (minimum x), +0x12e84 (maximum x), +0x12e88 (minimum y), +0x12e8c (maximum y), with two further floats at +0x12e90 and +0x12e94. The update runs only when the byte at +0x12ed0 is nonzero. When x is below the stored minimum the routine writes x there. The word at +0x12ed4 is incremented on every call, because its store sits in the delay slot of the branch. The y-minimum test is followed by a branch whose delay slot zeroes f4, so the two later float compares use 0.0: +0x12e90 is set to 0.0 when it is positive, and +0x12e94 is set to 0.0 when it is negative. The packet path needs room for three words, takes the slow path through `__glSPDlistSpace` otherwise, and moves the write pointer by 0xc.

- `__glOdyim_DrawArraysEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22268b0
  **Inferred.** Validates a draw-arrays request taking mode in a0, first in a1 and count in a2. If the word at absolute 0x1030 is 1 it reports 0x502 through `__glSetError`. A negative first or count reports 0x501, and a mode of ten or more reports 0x500. When the word at context +0x12e7c is nonzero, and the word at +0xf80 is 1 with +0x17bc zero, it dispatches through the table at +0x4df8 indexed by the word at +0x17c0 and passes mode, first and count. Otherwise it calls entry 0x38 of the table at +0x1ad8 with the mode, calls the per-index function at +0x630 of that table for each index from first to first+count-1, and then calls entry 0x58. When +0x12e7c is zero it first calls AnalyzeVertarrays with the context if the word at +0x12f38 is set, and it follows the same dispatch after that.

- `__glOdyim_DrawElements` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2226a90
  **Inferred.** Validates an indexed draw: mode in a0, count in a1, index type in a2 and an index pointer in a3. It reports 0x502 when the word at absolute 0x1030 is 1, 0x501 for a negative count and 0x500 for a mode of ten or more. The type must be 0x1401, 0x1403 or 0x1405, anything else is 0x500. Each index is then read at its own width: lbu for 0x1401, lhu for 0x1403 and lw for 0x1405, and each value is passed to the function pointer that the routine loads from the table at context +0x1ad8 plus 0x630. On the usual path the function pointer at absolute 0x10c8 is called with the mode before the element loop, and the one at absolute 0x10e8 is called after it.

- `__glOdyim_DrawRangeElements` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2226ce0
  **Inferred.** Checks that end in a2 is not below start in a1, and reports 0x501 through `__glSetError` if it is. Otherwise it passes the arguments on as DrawElements: mode stays in a0, the count from a3 becomes a1, the type from t0 becomes a2 and the index pointer from t1 becomes a3. The call is a direct branch-and-link to 0x2226a90, so the GOT load it makes beforehand is not used.

- `__glOdyim_ColorPointerEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2226d40
  **Inferred.** Forwarder for the colour pointer. It sets the word at context +0x18f38 to 1 in the delay slot of the call, then calls `__glim_ColorPointerEXT` through a GOT slot with its arguments unchanged. It does no begin-state test of its own.

- `__glOdyim_ColorPointer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2226d90
  **Inferred.** Non-EXT colour pointer. If the word at absolute 0x1030 is 1 it reports 0x502 through `__glSetError` and returns. Otherwise it saves a3, sets the word at context +0x18f38 to 1, zeroes a3 and calls `__glim_ColorPointerEXT`. The zeroed a3 is what the callee receives in its fourth argument slot.

- `__glOdyim_EdgeFlagPointerEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2226e00
  **Inferred.** Edge-flag pointer forwarder. The word at context +0x18f38 is set to 1 in the call's delay slot, then it calls `__glim_EdgeFlagPointerEXT` through a GOT slot. The gp setup overwrites a3 with 0x1200b8 before the call, so the callee's fourth argument is that constant rather than the caller's value. It has no begin-state test.

- `__glOdyim_EdgeFlagPointer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2226e50
  **Inferred.** Non-EXT edge-flag pointer. If the word at absolute 0x1030 is 1 it reports 0x502 through `__glSetError`. Otherwise it moves a1 into a2, sets the word at context +0x18f38 to 1, zeroes a1 and calls `__glim_EdgeFlagPointerEXT` through a GOT slot.

- `__glOdyim_IndexPointerEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2226ec0
  **Inferred.** Marks the index array as set and forwards the call. The context pointer is loaded from 0x1020, the
  word at context +0x18f38 becomes 1 in the delay slot of the call, and the routine behind the GOT slot at gp-0x3998 is
  called with a0 to a3 untouched. gp is rebuilt as t9 plus 0x11fff8. This entry never reads the word at 0x1030, so it
  cannot report 0x502.

- `__glOdyim_IndexPointer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2226f10
  **Inferred.** Refuses the index pointer while the word at 0x1030 is 1. In that case it passes 0x502 to the reporter at
  gp-0x5130 and returns. Otherwise the third argument moves into a3 before the test, a2 is cleared, and the flag at
  context +0x18f38 is set to 1 in the call's delay slot before the GOT call at gp-0x3998 with a0 and a1 as they arrived.

- `__glOdyim_NormalPointerEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2226f80
  **Inferred.** Pass-through for the normal array pointer with no state test. It sets context +0x18f38 to 1, using the
  context from 0x1020, and calls the GOT slot at gp-0x39b8 with the argument registers still holding the caller's
  values. gp is rebuilt as t9 plus 0x11ff38.

- `__glOdyim_NormalPointer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2226fd0
  **Inferred.** Non-EXT normal array setter. When the word at 0x1030 equals 1 it reports 0x502 through gp-0x5130.
  Otherwise it copies the third argument into a3, zeroes a2, writes 1 to context +0x18f38 and calls gp-0x39b8, which
  receives the pointer as its fourth argument.

- `__glOdyim_TexCoordPointerEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2227040
  **Inferred.** Texture coordinate array entry without a state check. It raises the flag at context +0x18f38 and calls the
  routine at gp-0x39a8 so the caller's arguments arrive unchanged. gp is rebuilt from t9 with 0x11fe78.

- `__glOdyim_TexCoordPointer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2227090
  **Inferred.** Four-argument texture coordinate setter. The fourth argument is saved in t0 before the state test. On the
  normal path a3 is cleared, the flag at +0x18f38 is set in the delay slot, and the routine at gp-0x39a8 is called with
  a0 to a2 kept. Nothing reads t0 on either path. A word at 0x1030 equal to 1 leads to the 0x502 report.

- `__glOdyim_VertexPointerEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2227100
  **Inferred.** Vertex array entry. It writes 1 to the word at context +0x18f38, then calls the routine at gp-0x39c0 with
  all argument registers as the caller left them. The gp base comes from t9 plus 0x11fdb8. The state word at 0x1030 is
  not consulted.

- `__glOdyim_VertexPointer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2227150
  **Inferred.** Non-EXT vertex array setter with four arguments. It copies a3 into t0 before testing 0x1030. When that word
  is 1 it passes 0x502 to gp-0x5130 and returns. Otherwise it clears a3, sets context +0x18f38 to 1, and calls gp-0x39c0 with
  a0 to a2 unchanged.

- `dirtyMatrix` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228360
  **Inferred.** Refreshes the matrix flags after a change. It reads the matrix mode word at context +0x7d0 and returns
  without writing anything unless that word is 0x1700, 0x1701 or 0x1702. For 0x1700 it tests the byte at context +0x1c490.
  A nonzero byte sets the byte at +0x18bb0 to 1. The routine then ORs 0x37 into the word at +0x18e58. For 0x1701 it sets
  the byte at +0x18bb0 and ORs 0x1011 into +0x18e58. For 0x1702 it sets the byte at +0x18bb0 and ORs 0x108 into +0x18e58.
  Each matrix case ends by writing 2 to the word at 0x1030. The routine makes no calls.

- `__glOdyim_ClipPlane` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228410
  **Inferred.** Enables a user clip plane. The state word at 0x1030 is tested first, and 1 reports 0x502. The plane value
  in a0 must fall in 0x3000 through 0x3005. Values below 0x3000 and values above 0x3005 both report 0x500 through gp-0x5130.
  An accepted plane calls the routine at gp-0x37d0 with a0 still the plane value and a1 unchanged. It then ORs 0x10 into
  the word at +0x18e58 and writes 2 to 0x1030.

- `__glOdyim_Scissor` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22284d0
  **Inferred.** Scissor box setter. It reports 0x502 when 0x1030 is 1. Otherwise it calls the routine at gp-0x37d8 with
  the argument registers left alone, then reloads the context from the stack and calls through the function pointer loaded
  from context +0x4840, with a0 set to the context. It writes nothing to the state word.

- `__glOdyim_Frustum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228540
  **Inferred.** Perspective frustum. After the 0x1030 check it saves f16 and f17 in f25 and f24, then calls the routine at
  gp-0x3810 with the floating-point arguments unchanged. If the mode word at +0x7d0 is 0x1701 it stores four doubles into
  the projection block: f1 = -(near+far)/(far-near) at +0x18a68, the constant at gp+0xb58 at +0x18a70, f0 = c*near*far/
  (far-near) at +0x18a78 where c is the constant at gp+0xc70, and 0.0 at +0x18a80. Then it calls dirtyMatrix. Other modes
  skip the stores and go straight to dirtyMatrix.

- `__glOdyim_LoadIdentity` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228620
  **Inferred.** Identity matrix entry. The context is saved on the stack and the routine at gp-0x3878 is called with no
  arguments. The matrix contents come from that callee, not from this routine. Dirty-flag work follows through
  dirtyMatrix, reached by a branch-and-link that is always taken, with the context reloaded into a0 in that branch's
  delay slot. A 0x1030 value of 1 reports 0x502 through gp-0x5130 instead.

- `__glOdyim_MatrixMode` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22287c0
  **Inferred.** Matrix mode setter. The mode in a0 goes to the routine at gp-0x3880 untouched, after the 0x1030 test. The
  routine does not call dirtyMatrix and does not write the state word. Its return value is the callee's v0.

- `__glOdyim_MultMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228820
  **Inferred.** Multiplies the current matrix by the matrix at the pointer in a0. The context pointer is loaded into a1 and
  saved at 0(sp). After the 0x1030 test the routine calls gp-0x3860 with a0 still the pointer, then calls dirtyMatrix with
  a0 reloaded from the stack. A 0x1030 value of 1 reports 0x502.

- `__glOdyim_MultMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228890
  **Inferred.** Double-precision multiply. The context lives in s0. When the mode word at +0x7d0 equals 0x1701 the routine
  copies four doubles from the argument pointer at byte offsets 0x50, 0x58, 0x70 and 0x78 into the projection block at
  +0x18a68, +0x18a70, +0x18a78 and +0x18a80. Both mode cases then call gp-0x3858 with a0 unchanged and finish with
  dirtyMatrix. A 0x1030 value of 1 reports 0x502 before any of this.

- `__glOdyim_Ortho` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228940
  **Inferred.** Orthographic projection. The context is parked on the stack, and the state word at 0x1030 is tested. Otherwise
  the routine calls the callee at gp-0x3808 with its floating-point argument registers left in place, then calls dirtyMatrix
  with a0 restored to the context. A 0x1030 value of 1 reports 0x502 through gp-0x5130.

- `__glOdyim_PopMatrix` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22289b0
  **Inferred.** Pops the matrix stack. The index is a signed quotient of the difference between the 64-bit words at
  context +0x94b8 and +0x94b0, divided by the constant at gp+0xda8 by a multiply-high and an 8-bit shift, then reduced by one.
  When the mode word at +0x7d0 is 0x1701 and that index is not negative, the routine copies the four-double slot at
  +0x18a88 + index*128 (through +0x18aa0) back into the projection block at +0x18a68 through +0x18a80. Both mode cases then call
  gp-0x3818 and finish with dirtyMatrix. A 0x1030 value of 1 reports 0x502.

- `__glOdyim_PushMatrix` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228ab0
  **Inferred.** Pushes the matrix stack. It computes the same signed quotient index as the pop routine, without the minus one,
  and compares it with the 32-bit word at context +0x1034 minus one. When the mode word at +0x7d0 is 0x1701 and the index is
  below that limit, the routine copies the projection block at +0x18a68 through +0x18a80 into the slot at +0x18a88 + index*128.
  It then calls gp-0x3820 and returns. A 0x1030 value of 1 reports 0x502.

- `__glOdyim_Rotated` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228ba0
  **Inferred.** Double-precision rotation. The routine places the context in a0 at entry and keeps it on the stack. After the
  0x1030 check it calls gp-0x3848 with the floating-point arguments as they arrived, then calls dirtyMatrix with a0 set to
  the context. A 0x1030 value of 1 reports 0x502 through gp-0x5130.

- `__glOdyim_Rotatef` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228c10
  **Inferred.** Single-precision rotation. It forwards to the routine at gp-0x3850 with the floating-point arguments
  untouched, then finishes through dirtyMatrix with the context restored into a0. An entry with 0x1030 equal to 1 reports
  0x502 instead.

- `__glOdyim_Scaled` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228c80
  **Inferred.** Double-precision scale. The gate on 0x1030 comes first. The scale arguments go to the callee at gp-0x3838
  unmodified, then the context pointer goes into a0 for the closing dirtyMatrix call.

- `__glOdyim_Scalef` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228cf0
  **Inferred.** Single-precision scale. A 0x1030 value of 1 reports 0x502. Any other value sends the floating-point arguments
  to the routine at gp-0x3840 and then ends with dirtyMatrix.

- `__glOdyim_Translated` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228d60
  **Inferred.** Double-precision translate. After the 0x1030 check the floating-point arguments pass to gp-0x3828, and then
  dirtyMatrix runs with a0 holding the context saved at entry.

- `__glOdyim_Translatef` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228dd0
  **Inferred.** Single-precision translate. It calls gp-0x3830 with the floating-point arguments left in place and then
  calls dirtyMatrix. The 0x502 report through gp-0x5130 covers the case where 0x1030 is 1.

- `__glOdyim_Viewport` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228e40
  **Inferred.** Sets the viewport. After the 0x1030 test it calls gp-0x37f0 with the integer arguments unchanged, then calls
  the context function at +0x4840 with a0 set to the context. Afterwards it ORs 1 into the word at context +0x18e58, and the
  delay slot of the return writes 2 to 0x1030.

- `__glOdyim_DepthRange` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2229260
  **Inferred.** Depth range setter with no callee. It clamps the near value in f12 and the far value in f13 to the range from
  0.0 up to the double constant at gp+0xb60. The clamped near value goes to +0x18a58 and the clamped far value to +0x18a60.
  It sets the byte at +0x18e6b to 1, ORs 0x4000 into the word at +0x18e58, and writes 2 to 0x1030. A 0x1030 value of 1
  reports 0x502 instead.

- `__glOdyim_SoftVertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22296e0
  **Inferred.** Immediate-mode double-precision 2D vertex. The record pointer comes from the context word at +0x4e30. The
  record gets a zero word at offset 0, x converted to single at offset 0x18, y converted to single at 0x1c, zero at 0x20,
  the single at context +0xf2c at 0x24, and the 64-bit context word at +0x48c8 at 0x10. The routine at context +0x4860 is
  called with a0 set to the context. Its integer result is stored at record offset 4, the byte at 0x199 becomes 1 if that
  result is zero, the byte at 0x198 becomes 1, and the routine at context +0x4858 is called last.

- `__glOdyim_SoftVertex2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2229780
  **Inferred.** Array form of the double-precision 2D submit. It reads x from the doubleword at a0 and y from a0+8, converts
  both to single, and stores them at record offsets 0x18 and 0x1c. The remaining record writes, the two context function
  calls, and the byte flags at 0x198 and 0x199 match the scalar double entry. The state word at 0x1030 is not touched.

- `__glOdyim_SoftVertex2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2229820
  **Inferred.** Single-precision 2D submit. The floats in f12 and f13 are stored unconverted at record offsets 0x18 and 0x1c,
  and zero goes to 0x20. The record and context writes follow the double form: context +0x48c8 is copied to offset 0x10,
  the single at +0xf2c goes to 0x24, the routine at +0x4860 runs first, and the routine at +0x4858 runs last.

- `__glOdyim_SoftVertex2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22298b0
  **Inferred.** Array form of the single-precision 2D submit. It loads x from a0+0 and y from a0+4 as floats, writes them to
  record offsets 0x18 and 0x1c, and clears the first word and offset 0x20. The same two context function calls at +0x4860 and
  +0x4858 bracket the record update, and the byte flags at 0x198 and 0x199 are set as in the scalar form.

- `__glOdyim_SoftVertex2i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2229950
  **Inferred.** Builds a two-dimensional integer vertex in the record at context +0x4e30. The ints in a0 and a1 are converted with cvt.s.w into x at +0x18 and y at +0x1c, z is the float zero at +0x20, and w is the float at context +0xf2c stored at +0x24. The word at +0x0 is cleared and the doubleword at context +0x48c8 goes to +0x10. The pointer at context +0x4860 is called, its result stored at +0x4, the byte at +0x199 set to whether that result is zero, and the byte at +0x198 set to 1. The pointer at context +0x4858 is called last, with the context in a0.

- `__glOdyim_SoftVertex2iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22299f0
  **Inferred.** Reads two words from the array in a0, y from offset 4 and x from offset 0. Both are converted and written to +0x1c and +0x18 of the record at +0x4e30, with the float zero at +0x20 and context +0xf2c at +0x24. The doubleword from context +0x48c8 is stored at +0x10 before any call. The record pointer is saved in a stack slot, the pointer at +0x4860 is called, and the slot is reloaded to set the flag bytes at +0x198 and +0x199 and the word at +0x4. The pointer at +0x4858 follows.

- `__glOdyim_SoftVertex2s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2229aa0
  **Inferred.** Takes its x and y from the integer registers a0 and a1 with mtc1, converts them with cvt.s.w, and writes x to +0x18 and y to +0x1c of the record. It stores the float zero at +0x20, context +0xf2c at +0x24 and the doubleword at context +0x48c8 at +0x10. The pointer at +0x4860 runs first and the pointer at +0x4858 second. Only the first result is kept, in +0x4.

- `__glOdyim_SoftVertex2sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2229b40
  **Inferred.** A pointer in a0 supplies two halfwords read with lh: y from offset 2 and x from offset 0. They are converted and stored at +0x1c and +0x18 of the record at context +0x4e30. Z is zero at +0x20 and w, from context +0xf2c, is at +0x24. The doubleword from context +0x48c8 goes to +0x10. The routine then calls the pointer at +0x4860, derives the flags at +0x198 and +0x199 from the result, and calls the pointer at +0x4858.

- `__glOdyim_SoftVertex3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2229bf0
  **Inferred.** Narrows the doubles in f12, f13 and f14 to single precision with cvt.s.d and stores them as x at +0x18, y at +0x1c and z at +0x20 of the record at context +0x4e30. Context +0xf2c supplies w at +0x24 and context +0x48d0 supplies the doubleword at +0x10. The routine calls the pointer at context +0x4868 and keeps the result at +0x4 with the flag bytes. It finishes with a call through the pointer at +0x4858.

- `__glOdyim_SoftVertex3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2229c90
  **Inferred.** Loads three doubles from the array in a0: x from offset 0, y from 8 and z from 0x10. Each is narrowed to a float and written to +0x18, +0x1c and +0x20 of the record. The float at context +0xf2c fills +0x24 and the doubleword at context +0x48d0 fills +0x10. The pointer at context +0x4868 is called with the record saved on the stack, and the pointer at +0x4858 is called after the flags are set.

- `__glOdyim_SoftVertex3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2229d40
  **Inferred.** Writes the single-precision arguments f12, f13 and f14 into the record unchanged: f12 at +0x18, f13 at +0x1c and f14 at +0x20. Word +0x24 is copied from context +0xf2c and +0x10 from context +0x48d0. Its two indirect calls go through the pointer at +0x4868, whose result feeds the flag bytes and the word at +0x4, and then through the pointer at +0x4858.

- `__glOdyim_SoftVertex3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2229dd0
  **Inferred.** Reads three floats from a0 without conversion: x at offset 0, y at 4 and z at 8. They are stored at +0x18, +0x1c and +0x20 of the record. The float at context +0xf2c is loaded and then stored into the record at +0x24, and the doubleword at context +0x48d0 is loaded and then stored into the record at +0x10. The pointer at +0x4868 is the first call, and the pointer at +0x4858 the second, with the record reloaded from the stack between them.

- `__glOdyim_SoftVertex3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2229e70
  **Inferred.** Moves the integer arguments a2, a1 and a0 into float registers and converts them, giving z at +0x20, y at +0x1c and x at +0x18 of the record. The float at context +0xf2c goes to +0x24 and the doubleword at context +0x48d0 to +0x10. The record is saved across the call to the pointer at +0x4868. The result of that call sets the flags and the word at +0x4, and the pointer at +0x4858 is called last.

- `__glOdyim_SoftVertex3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2229f20
  **Inferred.** Reads three words from a0: z from offset 8, y from 4 and x from 0. The words are converted with cvt.s.w and stored at +0x20, +0x1c and +0x18. Context +0xf2c fills +0x24 and the doubleword at context +0x48d0 fills +0x10. The routine calls the pointer at +0x4868, keeps the zero flag at +0x199 and the value at +0x4, then calls the pointer at +0x4858.

- `__glOdyim_SoftVertex3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2229fd0
  **Inferred.** The three register arguments a0, a1 and a2 are moved to float registers with mtc1. a2 becomes z at +0x20, a1 becomes y at +0x1c and a0 becomes x at +0x18, each converted with cvt.s.w. Context +0xf2c and the doubleword at context +0x48d0 fill +0x24 and +0x10. Calls go through the pointer at +0x4868, then the pointer at +0x4858.

- `__glOdyim_SoftVertex3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222a080
  **Inferred.** Reads halfwords from a0 with lh: z from offset 4, y from 2 and x from 0. Each goes through mtc1 and cvt.s.w into the record at +0x20, +0x1c and +0x18. The doubleword at context +0x48d0 is loaded and then stored into the record at +0x10, and the float at context +0xf2c is loaded and then stored into the record at +0x24. The pointer at +0x4868 is called, then the pointer at +0x4858, with the flag handling between them.

- `__glOdyim_SoftVertex4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222a130
  **Inferred.** Narrows the doubles in f12 to f15 to floats and writes x to +0x18, y to +0x1c, z to +0x20 and w to +0x24 of the record at context +0x4e30. The doubleword at context +0x48d8 goes to +0x10. The record pointer is kept in a stack slot across the first indirect call, through the pointer at +0x4870. Its result sets the flag bytes and the word at +0x4, and the pointer at +0x4858 is called last.

- `__glOdyim_SoftVertex4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222a1d0
  **Inferred.** Reads four doubles from a0: w from offset 0x18, z from 0x10, y from 8 and x from 0. Each is converted to a float and stored at +0x24, +0x20, +0x1c and +0x18 in that order. Context +0x48d8 supplies the doubleword at +0x10. The pointer at +0x4870 is called first and the pointer at +0x4858 after the flag bytes are written.

- `__glOdyim_SoftVertex4f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222a280
  **Inferred.** Stores f12, f13, f14 and f15 as single-precision values with no conversion, at +0x18, +0x1c, +0x20 and +0x24 of the record. The doubleword from context +0x48d8 goes to +0x10. Indirect calls go through the pointer at +0x4870 and then the pointer at +0x4858, the first result kept at +0x4.

- `__glOdyim_SoftVertex4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222a310
  **Inferred.** Copies four floats from a0 into the record: x from offset 0, y from 4, z from 8 and w from 0xc, landing at +0x18 through +0x24. Nothing is converted. Context +0x48d8 supplies the doubleword at +0x10, and the pointers at +0x4870 and +0x4858 are called in that order, with the flag bytes set after the first.

- `__glOdyim_SoftVertex4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222a3b0
  **Inferred.** Takes a3, a2, a1 and a0 as w, z, y and x, converts each with cvt.s.w, and stores them at +0x24, +0x20, +0x1c and +0x18 of the record. The doubleword at context +0x48d8 is written to +0x10. The pointer at +0x4870 is called with the context in a0, the result placed at +0x4 after the flag bytes, and the pointer at +0x4858 called last.

- `__glOdyim_SoftVertex4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222a460
  **Inferred.** Holds the context in s0 and the record in s1 because it makes three calls. The four words at a0 are read at offsets 0xc (w), 8 (z), 4 (y) and 0 (x), converted, and stored at +0x24 down to +0x18. The first call through +0x4870 sets the byte at +0x198 to 1 and stores the result at +0x4. The second call through +0x4870 sets +0x199 to whether its result is zero, then +0x198 and +0x4 as before. The pointer at +0x4858 is called last.

- `__glOdyim_SoftVertex4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222a540
  **Inferred.** The register values a3 through a0 go through mtc1 and cvt.s.w into +0x24 (a3), +0x20 (a2), +0x1c (a1) and +0x18 (a0). Context +0x48d8 is stored as the doubleword at +0x10. The pointer at +0x4870 runs first, its result feeds the zero-test byte at +0x199 and the value at +0x4, and the pointer at +0x4858 runs last.

- `__glOdyim_SoftVertex4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222a5f0
  **Inferred.** Loads four halfwords from a0 with lh: w from offset 6, z from 4, y from 2 and x from 0. They are converted and stored at +0x24, +0x20, +0x1c and +0x18. Context +0x48d8 goes to +0x10. The calls are to the pointer at +0x4870 and then the pointer at +0x4858, with the record pointer kept in a stack slot in between.

- `__glOdysseySoftClipMatValidateVbuf0N` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222a6b0
  **Inferred.** Walks the 0x1a0-byte vertex records from context +0x19380 up to the pointer held at context +0x4e30, which it loads at entry. The loop begins only when the cursor is below that pointer. Each record whose byte at +0x198 is nonzero gets a call to the pointer at context +0x1c550, with the context in a0 and the record in a1. Records with a zero flag are passed over by adding 0x1a0. The write pointer is reloaded after each call.

- `__glOdysseySoftClipMatValidateV1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222a760
  **Inferred.** Tests the byte at +0x198 of the record whose pointer sits at context +0x4e38. A nonzero byte makes it call the pointer at context +0x1c550 with the context in a0 and the same record still in a1. Nothing is written to the context.

- `__glOdysseySoftClipMatValidateV1V2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222a7b0
  **Inferred.** Checks the record at context +0x4e38 and then the record at +0x4e40. Each flagged record gets one call to the pointer at context +0x1c550, with the context in a0 and that record in a1. The context is saved in s0 and the return address in the frame, so both calls can run.

- `__glOdysseySoftClipMatValidateVbuf0V1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222a830
  **Inferred.** Three flags are checked in order. The first is the byte at context +0x19518, which is +0x198 of the record at +0x19380, and it passes that record in a1 to the pointer at context +0x1c550. The second and third are the records at +0x4e38, each called the same way with its own pointer as a1. The context is in a0 for every call.

- `__glOdysseySoftClipMatValidateV1V2V3` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222a8b0
  **Inferred.** Checks the records at +0x4e38, +0x4e40 and +0x4e48 in that order. A nonzero flag at +0x198 causes a call to the pointer at context +0x1c550 with the context in a0 and the record in a1. The three checks are written out one after another with no loop.

- `__glOdysseySoftClipMatValidateV2V3` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222a950
  **Inferred.** Looks at the records at context +0x4e40 and +0x4e48 and leaves +0x4e38 alone. Each record whose +0x198 byte is set is handed to the pointer at context +0x1c550, with the context in a0 and the record in a1.

- `__glOdysseySoftClipMatValidateVbuf0V1V2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222a9d0
  **Inferred.** Checks three records: the one at +0x19380 through the flag at +0x19518, then the records at +0x4e38 and +0x4e40. Every flagged record gets one call to the pointer at context +0x1c550. The context is the a0 argument of each call, and the record is the a1 argument. The checks are straight-line code.

- `SoftClipThirdTrianglesVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222aa70
  **Inferred.** Copies the byte at context +0x275 into +0xc0 of the record in a1 and stores a1 at context +0x8cd8. It calls `__glOdysseySoftClipProcessTriangle` through an always-taken bgezall-and-link, with the context in a0 and the record at context +0x19380 in a1. After the call the write pointer at +0x4e30 is set to context +0x19380, and the doubleword at +0x4890 is the GOT entry 0x7f98 below the GOT base, minus 0x54c0.

- `SoftClipSecondTrianglesVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222ab00
  **Inferred.** Sets +0xc0 of the record in a1 from the byte at context +0x275 and points the write pointer at +0x4e30 to context +0x196c0. The doubleword at +0x4890 becomes the GOT entry 0x7f98 below the GOT base, minus 0x5590. No call is made.

- `SoftClipFirstTrianglesVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222ab40
  **Inferred.** Takes the byte at +0x275 of the context and stores it into +0xc0 of the record in a1. The write pointer at +0x4e30 becomes context +0x19520. The doubleword at +0x4890 is the GOT entry 0x7f98 below the GOT base, minus 0x5500. The routine makes no calls.

- `__glOdysseySoftClipEvenTriangleStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222abc0
  **Inferred.** Sets +0xc0 of the record in a1 to 1 and stores a1 at context +0x8cd8. It saves the old pointers at +0x4e38 and +0x4e40 and the argument. The call to `__glOdysseySoftClipProcessTriangle` takes the old +0x4e40 in a1, the argument in a2 and the old +0x4e38 in a3. Afterwards +0x4e30 takes the old +0x4e40, +0x4e38 takes the argument, +0x4e40 takes the old +0x4e38, and the doubleword at +0x4890 is the GOT entry 0x6968 below the GOT base.

- `__glOdysseySoftClipOddTriangleStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222ac50
  **Inferred.** Writes 1 to +0xc0 of the record in a1 and stores a1 at context +0x8cd8. The call to `__glOdysseySoftClipProcessTriangle` takes the old +0x4e40 in a1, the old +0x4e38 in a2 and the argument in a3. After it returns, the three pointers rotate: +0x4e30 gets the old +0x4e40, +0x4e38 gets the argument and +0x4e40 gets the old +0x4e38. The doubleword at +0x4890 is the GOT entry 0x6970 below the GOT base.

- `SoftClipSecondTriangleStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222ace0
  **Inferred.** Stores 1 at +0xc0 of the record in a1 and sets the three write pointers without calling anything: +0x4e30 to context +0x196c0, +0x4e38 to context +0x19520 and +0x4e40 to context +0x19380. The GOT entry 0x6968 below the base goes to +0x4890, and the entry 0x69a0 below it goes to +0x4920.

- `SoftClipFirstTriangleStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222ad30
  **Inferred.** Sets the flag byte at +0xc0 of the record in a1 to 1, points +0x4e30 at context +0x19520, and stores the GOT entry 0x7f98 below the base, minus 0x5320, at +0x4890. The routine does not call anything.

- `__glOdysseySoftClipBeginTStrip` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222ad70
  **Inferred.** Sets the write pointer at +0x4e30 to context +0x19380 and leaves the vertex records alone. The GOT entry 0x69b0 below the base is copied to the doubleword at +0x4920. The doubleword at +0x4890 is the GOT entry 0x7f98 below the base, minus 0x52d0.

- `SoftClipTriangleFanVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222adb0
  **Inferred.** Writes 1 to +0xc0 of the record in a1 and stores a1 at context +0x8cd8. The call to `__glOdysseySoftClipProcessTriangle` takes the old +0x4e40 in a1, the old +0x4e38 in a2 and the argument in a3. Once it returns, +0x4e38 takes the argument, and +0x4e30 takes the value of +0x4e38 read after the call. The +0x4e40 pointer is not written.

- `SoftClipSecondTriangleFanVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222ae30
  **Inferred.** Sets +0xc0 of the record in a1 to 1 and writes the three pointers +0x4e30 (context +0x196c0), +0x4e38 (context +0x19520) and +0x4e40 (context +0x19380). The GOT entry 0x6998 below the base is copied to +0x4920. The doubleword at +0x4890 is the GOT entry 0x7f98 below the base, minus 0x5250.

- `SoftClipFirstTriangleFanVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222ae90
  **Inferred.** Stores 1 in the byte at +0xc0 of the record in a1, moves the write pointer +0x4e30 to context +0x19520, and writes the GOT entry 0x7f98 below the base, minus 0x51d0, to +0x4890. No call is made.

- `__glOdysseySoftClipBeginTFan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222aed0
  **Inferred.** Points +0x4e30 at context +0x19380. The GOT entry 0x69b0 below the base goes to +0x4920, and the GOT entry 0x7f98 below the base, minus 0x5170, goes to +0x4890. The vertex records are not touched and nothing is called.

- `SoftClipForthQuadsVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222af10
  **Inferred.** Copies the byte at context +0x275 into +0xc0 of the record in a1 and stores a1 at context +0x8cd8. It makes two calls to `__glOdysseySoftClipProcessTriangle`. The first takes a1 = context +0x19380, a2 = context +0x19520 and a3 = context +0x196c0, with the byte at context +0x19780 cleared across the call and restored after it. The second takes a1 = context +0x19380, a2 = context +0x196c0 and a3 = the argument record, with the byte at context +0x19440 cleared across it. Last, +0x4e30 is set to context +0x19380 and +0x4890 to the GOT entry 0x7f98 below the base, minus 0x4f80.

- `SoftClipThirdQuadsVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b000
  **Inferred.** Copies the byte at a0+0x275 into a1+0xc0. Stores the doubleword a0+0x19860 at +0x4e30 and the code address 0x222af10 at +0x4890; that address is the word 0x2230000 read from the GOT slot at gp-0x7f98, minus 0x50f0. The routine makes no call.

- `SoftClipSecondQuadsVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b040
  **Inferred.** Copies the flag byte at a0+0x275 into a1+0xc0, sets the doubleword at +0x4e30 to a0+0x196c0, and stores 0x222b000 at +0x4890 (the GOT word 0x2230000 less 0x5000). Nothing is called.

- `SoftClipFirstQuadsVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b080
  **Inferred.** Copies the byte at a0+0x275 into a1+0xc0. The doubleword at +0x4e30 becomes a0+0x19520, and the dispatch slot +0x4890 becomes 0x222b040, the GOT word 0x2230000 less 0x4fc0. It calls nothing.

- `__glOdysseySoftClipBeginQuads` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b0c0
  **Inferred.** Opens a quad batch. Sets the doubleword at +0x4e30 to a0+0x19380, takes the GOT entry at gp-0x69b0 and stores it at +0x4920 (its dynamic symbol is __glOdysseySoftClipMatValidateVbuf0N), and writes 0x222b080 to the dispatch slot +0x4890.

- `SoftClipEvenQuadStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b100
  **Inferred.** Handles one vertex of an even quad strip. Sets a1+0xc0 to 1 and stores a1 at a0+0x8cd8. The four doublewords at +0x4e30, +0x4e38, +0x4e40 and +0x4e48 rotate: the old +0x4e48 goes to +0x4e30, the old +0x4e40 to +0x4e38, the old +0x4e30 to +0x4e40 and the old +0x4e38 to +0x4e48. Two calls go to __glOdysseySoftClipProcessTriangle at 0x2230d70 with a0 as the context; the first passes a1 = old +0x4e38, a2 = old +0x4e48, a3 = old +0x4e40, and the second passes a1 = old +0x4e38, a2 = old +0x4e40, a3 = old +0x4e30. Byte +0xc0 of the a3 vertex is cleared around the first call and byte +0xc0 of the a1 vertex around the second, each restored after its call. Last, +0x4920 gets the GOT entry at gp-0x6988 (__glOdysseySoftClipMatValidateV2V3) and +0x4890 gets 0x222b1f0.

- `SoftClipOddQuadStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b1f0
  **Inferred.** Sets a1+0xc0 to 1 and writes a1 into the doubleword at +0x4e38, moving the previous +0x4e38 value into +0x4e30. Then +0x4920 takes the GOT entry at gp-0x6990 (__glOdysseySoftClipMatValidateV1V2V3) and +0x4890 takes 0x222b100, the GOT word less 0x4f00. The routine calls nothing.

- `SoftClipSecondQuadStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b230
  **Inferred.** Fills the four pointer slots of a strip: +0x4e30 gets a0+0x196c0, +0x4e38 gets a0+0x19860, +0x4e40 gets a0+0x19520 and +0x4e48 gets a0+0x19380. It sets a1+0xc0 to 1 and stores 0x222b1f0 at +0x4890 (the GOT word less 0x4e10). No call is made.

- `SoftClipFirstQuadStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b290
  **Inferred.** Sets a1+0xc0 to 1 and the doubleword at +0x4e30 to a0+0x19520. The dispatch slot +0x4890 receives 0x222b230, the GOT word less 0x4dd0. It calls nothing.

- `__glOdysseySoftClipBeginQStrip` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b2d0
  **Inferred.** Starts a quad strip. The value a0+0x19380 lands in +0x4e30, the GOT slot at gp-0x69b0 is copied to +0x4920, and the code address 0x222b290 is placed in +0x4890.

- `SoftClipEndPolygon3Verts` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b310
  **Inferred.** Calls __glOdysseySoftClipProcessTriangle at 0x2230d70 with a0 as the context, a1 = a0+0x19380, a2 = the doubleword at +0x4e40 and a3 = the doubleword at +0x4e38. It then calls __glEndPrim through the GOT slot at gp-0x44b0 with a0 as the context. The context pointer is kept in fp across both calls.

- `SoftClipEndPolygon` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b370
  **Inferred.** Clears the byte at a0+0x19440 in the delay slot of a branch-and-link to __glOdysseySoftClipProcessTriangle. That call takes a1 = a0+0x19380, a2 = the doubleword at +0x4e40 and a3 = the doubleword at +0x4e38. After it returns, __glEndPrim is called through gp-0x44b0 with a0 as the context.

- `SoftClipPolygonVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b3e0
  **Inferred.** Takes a polygon vertex in a1 and copies the byte at a0+0x275 into a1+0xc0. It saves the byte at a0+0x1a440 and the byte at +0xc0 of the vertex held in +0x4e38, clears both, and calls __glOdysseySoftClipProcessTriangle with a0 as the context, a1 = a0+0x19380, a2 = the doubleword at +0x4e40 and a3 = the old +0x4e38 vertex. The saved bytes go back, a1 is stored at +0x4e38, the old +0x4e38 value moves to +0x4e40 and the old +0x4e40 value moves to +0x4e30.

- `SoftClipForthPolygonVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b4a0
  **Inferred.** Stores the context byte at +0x275 into a1+0xc0. It clears +0xc0 of the old +0x4e38 vertex, calls __glOdysseySoftClipProcessTriangle with a1 = a0+0x19380, a2 = the doubleword at +0x4e40 and a3 = the old +0x4e38 vertex, and then restores that byte. Afterwards +0x4920 takes the GOT entry at gp-0x6980, +0x4980 takes 0x222b370 and +0x4890 takes 0x222b3e0. Finally +0x4e38 takes a1, +0x4e40 takes the old +0x4e38 value and +0x4e30 takes the old +0x4e40 value.

- `SoftClipThirdPolygonVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b560
  **Inferred.** Copies the byte at a0+0x275 into a1+0xc0. Sets +0x4e30 to a0+0x19860, +0x4e38 to a0+0x196c0 and +0x4e40 to a0+0x19520. Writes 0x222b310 to +0x4980 (the GOT word less 0x4cf0) and 0x222b4a0 to +0x4890 (the GOT word less 0x4b60). It makes no call.

- `SoftClipSecondPolygonVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b5c0
  **Inferred.** Copies the flag byte at a0+0x275 into a1+0xc0, sets the doubleword at +0x4e30 to a0+0x196c0, and writes 0x222b560 to the dispatch slot +0x4890. Nothing is called.

- `SoftClipFirstPolygonVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b600
  **Inferred.** Copies the byte at a0+0x275 into a1+0xc0 and sets +0x4e30 to a0+0x19520. The handler pointer 0x222b5c0 goes to +0x4890, and a1 is stored at a0+0x8cd8 in the delay slot of the return.

- `__glOdysseySoftClipBeginPolygon` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b640
  **Inferred.** Begins polygon assembly. +0x4e30 holds a0+0x19380, the GOT slot gp-0x69b0 is copied to +0x4920, and the handler pointer 0x222b600 sits at +0x4890.

- `SoftClipSecondLinesVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b680
  **Inferred.** Saves a1 at a0+0x8cd8, then calls __glOdysseySoftClipProcessLine at 0x2231370 with a0 as the context, a1 = a0+0x19380 and a2 = the vertex. After the call it stores a0+0x19380 (kept on the stack) at +0x4e30 and writes 0x222b700 to +0x4890.

- `SoftClipFirstLinesVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b700
  **Inferred.** Sets the doubleword at +0x4e30 to a0+0x19520 and writes 0x222b680 to +0x4890 (the GOT word less 0x4980). No call.

- `__glOdysseySoftClipBeginLines` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b730
  **Inferred.** For a line batch, +0x4e30 gets a0+0x19380, the GOT entry at gp-0x69b0 goes to +0x4920, and 0x222b700 is stored at +0x4890. No call is made.

- `SoftClipLineStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b770
  **Inferred.** Stores a1 at a0+0x8cd8 and calls __glOdysseySoftClipProcessLine at 0x2231370 with a0 as the context, a1 = the old doubleword at +0x4e38 and a2 = the vertex. Afterwards it reloads +0x4e38 and stores a1 at +0x4e38 and the reloaded value at +0x4e30.

- `SoftClipFirstLineStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b7e0
  **Inferred.** Places a0+0x19520 at +0x4e30 and a0+0x19380 at +0x4e38. The GOT entry at gp-0x69a8 (__glOdysseySoftClipMatValidateV1) goes to +0x4920, and 0x222b770 is written to +0x4890.

- `__glOdysseySoftClipBeginLStrip` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b820
  **Inferred.** Line-strip opener. Stores a0+0x19380 at +0x4e30, copies gp-0x69b0 into +0x4920 and puts 0x222b7e0 in the slot +0x4890.

- `SoftClipEndLineLoop` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b860
  **Inferred.** Writes a0+0x19380 to a0+0x8cd8 in the delay slot of a branch-and-link to __glOdysseySoftClipProcessLine. That call takes a1 = the doubleword at +0x4e38 and a2 = a0+0x19380. It then calls __glEndPrim through gp-0x44b0 with a0 as the context.

- `SoftClipLineLoopVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b8d0
  **Inferred.** Writes the incoming vertex to a0+0x8cd8 and passes the old +0x4e38 value and the vertex to __glOdysseySoftClipProcessLine at 0x2231370 as a1 and a2, with a0 as the context. The vertex then replaces +0x4e38 and the old value moves to +0x4e30.

- `SoftClipSecondLineLoopVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b940
  **Inferred.** Stores a1 at a0+0x8cd8 and calls __glOdysseySoftClipProcessLine with a1 = a0+0x19380 and a2 = the vertex. Afterwards +0x4920 gets the GOT entry at gp-0x6998 (__glOdysseySoftClipMatValidateVbuf0V1), +0x4980 gets 0x222b860 and +0x4890 gets 0x222b8d0. Also +0x4e30 gets a0+0x196c0 and +0x4e38 gets a0+0x19520.

- `SoftClipFirstLineLoopVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222b9e0
  **Inferred.** Points the doubleword at +0x4e30 at a0+0x19520 and writes 0x222b940 to +0x4890 (the GOT word less 0x46c0). Nothing is called.

- `__glOdysseySoftClipBeginLLoop` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222ba10
  **Inferred.** Line-loop opener. The slot +0x4e30 takes a0+0x19380, +0x4920 takes the GOT word at gp-0x69b0, and the handler pointer 0x222b9e0 goes to +0x4890.

- `SoftClipSecondLineLoopVertexPartial` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222ba50
  **Inferred.** Sets +0x4e30 to a0+0x196c0 and +0x4e38 to a0+0x19520. Copies the GOT entry at gp-0x6998 into +0x4920, writes 0x222b860 to +0x4980 and 0x222b8d0 to +0x4890. It does not call anything.

- `SoftClipFirstLineLoopVertexPartial` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222baa0
  **Inferred.** Stores a0+0x19520 at +0x4e30 and sets the dispatch slot +0x4890 to 0x222ba50, the GOT word less 0x45b0. No call.

- `__glOdysseySoftClipBeginLLoopPartial` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222bad0
  **Inferred.** The partial line-loop opener: a0+0x19380 goes to +0x4e30, the gp-0x69b0 GOT word goes to +0x4920, and +0x4890 is set to 0x222baa0.

- `SoftClipPointVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222bb10
  **Inferred.** Stores a1 at a0+0x8cd8 and loads the word at a1+4. If that word is zero, the routine saves ra, loads the function pointer at a0+0x4cb0 and calls it with a0 as the context and a1 as the vertex. A nonzero word skips the call. Both paths restore gp before returning.

- `__glOdysseySoftClipBeginPoints` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222bb60
  **Inferred.** Opens a point batch by writing a0+0x19380 to +0x4e30 and 0x222bb10 to the dispatch slot +0x4890. The +0x4920 slot is not touched.

- `__glOdysseyClipCheck` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222bb90
  **Inferred.** Tests the vertex in a1 against the planes at a0+0x18bb8, four single-precision words per plane, for each plane whose bit is set in the word at a0+0x18c88. For each such plane it multiplies plane words +0, +4, +8 and +0xc by vertex words +0x18, +0x1c, +0x20 and +0x24, sums the products in single precision, widens the sum to double and sets that plane's bit in the result when the sum is below 0.0. The loop stops after the highest set mask bit, and the function returns 0 when the mask word is zero.

- `__glOdysseySaveN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222bc30
  **Inferred.** Copies the three floats at a0+0x178, +0x17c and +0x180 to a1+0xc8, +0xcc and +0xd0, in that order. It then calls the function pointer at a0+0x4890 with the same a0 and a1.

- `__glOdysseySaveCN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222bc80
  **Inferred.** Copies the four floats at a0+0x168 through +0x174 to a1+0x98 through +0xa4, and the three floats at a0+0x178 through +0x180 to a1+0xc8 through +0xd0, each in the same order. The pointer at a0+0x4890 is then called with a0 and a1 unchanged.

- `__glOdysseySaveTN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222bcf0
  **Inferred.** Moves three floats from a0+0x178..0x180 into a1+0xc8..0xd0 and four floats from a0+0x188..0x194 into a1+0x38..0x44. The function pointer at a0+0x4890 is called last, with the same a0 and a1.

- `__glOdysseySaveCTN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222bd60
  **Inferred.** Carries out the copies of the two routines above in one body: a0+0x168..0x174 go to a1+0x98..0xa4, a0+0x178..0x180 to a1+0xc8..0xd0, and a0+0x188..0x194 to a1+0x38..0x44. It then calls the function pointer at a0+0x4890 with a0 and a1 unchanged.

- `RGBSendFcN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222be70
  **Inferred.** Writes 15 words to the fixed address 0x10000. The first is 0x3000c02e when the byte at a0+0xc0 is zero and 0x2f00c02e otherwise. Then come the constant 0xc180cc19, the floats at +0xc8, +0xcc and +0xd0, the constant 0xc580d015, the floats at +0x98, +0x9c, +0xa0 and +0xa4, the constant 0x8080d005, and the floats at +0x18, +0x1c, +0x20 and +0x24.

- `RGBSendFcT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222bf10
  **Inferred.** Sends 16 words to the fixed address 0x10000. The leading word is 0x3000c02e when the byte at a0+0xc0 is zero and 0x2f00c02e otherwise. Then the constant 0xc580d015, the floats at +0x98 to +0xa4, the constant 0xc380d025, the floats at +0x38 to +0x44, the constant 0x8080d005, and the floats at +0x18 to +0x24.

- `RGBSendFcTN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222bfc0
  **Inferred.** Writes one fixed packet to the port at 0x10000 for a record in a0 and calls nothing. The first word is 0x2f00c02e or 0x3000c02e, picked by a movz on the byte at record +0xc0. Headers 0xc180cc19, 0xc580d015, 0xc380d025 and 0x8080d005 are each followed by a float group taken from +0xc8 to +0xd0, +0x98 to +0xa4, +0x38 to +0x44 and +0x18 to +0x24.

- `RGBSendUnclippedFmN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222c090
  **Inferred.** Sends a front-face material and then the geometry for a record. The byte at +0x198 chooses the material block: zero means the record's own block at +0xd8, nonzero means the front block at context +0x18c8c. Groups for 0xc680d02f (+0), 0xc880d031 (+0x20), 0xc780d030 (+0x10) and 0xc980d032 (+0x30) go to the port, then `__glOdyim_Materialfv` is called with face 0x404, name 0x1601 and the shininess word at +0x40. The selector word, the 0xc180cc19 group and the 0x8080d005 group follow.

- `RGBSendUnclippedFmTN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222c230
  **Inferred.** Same front-material path as the untextured unclipped send at 0x222c090, with the same +0x198 choice between the record block and the context block. Its tail adds a 0xc380d025 group of four floats from +0x38 to +0x44 between the 0xc180cc19 group and the 0x8080d005 group.

- `RGBSendClippedFmN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222c920
  **Inferred.** Clipped-vertex packet that compares the word at context +0x688 with 0x81fa. In the equal case the slot after header 0xc880d031 takes the three floats at +0x178, +0x17c and +0x180. Otherwise those slots are zero-filled and the +0x98 group is written after header 0xc980d032. Both cases end with the 0xc180cc19 group from +0xc8 to +0xd0 and the 0x8080d005 group from +0x18 to +0x24.

- `RGBSendUnclippedFmNFast` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222d150
  **Inferred.** Fast form of the front-material send that skips the material call when nothing changed. With the record byte at +0x198 zero it sends the record's +0xd8 block, calls `__glOdyim_Materialfv`, and sets the context dirty byte at +0x18d34 to 1. With the byte nonzero it sends the context front block only when that dirty byte is set, calls the same material routine, then clears the byte. The geometry tail after the material step is the same as in the non-fast form.

- `CISendUnclippedFmN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222e820
  **Inferred.** Colour-index form that sends the front material through `__glOdyim_Materialfv` as four calls: name 0x1201 from +0x10, name 0x1202 from +0x20, name 0x1601 from +0x40, and name 0x1603 from the three values +0x44, +0x4c and +0x48 in that order. The +0x198 byte selects record base +0xd8 or context base +0x18c8c as in the RGB sends. Then it writes the selector, the 0xc180cc19 group and the 0x8080d005 group.

- `CISendClippedFmN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222ebe0
  **Inferred.** Clipped colour-index packet with no context access. It writes the selector from the byte at +0xc0, the header 0xc680d02f followed by the +0x98 float, and the headers 0xc780d030, 0xc880d031 and 0xc980d032 with zero floats between them. It then writes the 0xc180cc19 group from +0xc8 to +0xd0, the 0x8080d005 group, and the four floats from +0x18 to +0x24.

- `__glOdysseySoftClipValidateVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222ee30
  **Inferred.** Copies a second float set into the vertex record when a2 has bit 3 set and the record's first word has that bit clear. It moves the four floats at record +0xc8, +0xcc, +0xd0 and +0xd4 to +0x28, +0x2c, +0x30 and +0x34. It then calls `__glValidateVertex4` with the same arguments.

- `__glOdysseySoftClipPickVertexProcs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222eea0
  **Inferred.** Selects the vertex-send routines for the current mode. It tests the byte at +0xde4, the words at +0x808, +0x80c, +0x8c8 and +0x944 (the last two against 0x2402), and the byte at +0x685 (movz with 0x11). It stores the chosen routine pointers at context +0x4858, +0x4860, +0x4868, +0x4870, +0x48c8, +0x48d0 and +0x48d8, and writes the copy-flag word at +0x18d2c and the mode word at +0x18d30.

- `__glOdysseySoftClipRenderPoint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22314a0
  **Inferred.** Takes an index in a0 and a value in a1. It writes 0x14400 and then zero to the port, then calls the routine whose pointer is at 0x1c560 plus a0, passing a1. It then writes 0x14001 and reads the word at 0xba44 plus a0; zero means it sets the word at 0xbb80 plus a0 to 1 and returns. Nonzero first writes 0x10443, 0xfa, 0x10046 and 0x10046 to the port, then sets the same word.

- `__glOdysseySoftClipProcessLine` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2231370
  **Inferred.** Line clip for two endpoints whose outcode words are in +4 of the records in a1 and a2. When both outcodes are zero it calls the context hook at +0x4c80 and returns. When the outcodes share a bit it returns without output. Otherwise it swaps the hook at context +0x4920, tests the mask word at +0x8ce0 against each endpoint's word at +0, calls the endpoint's +0x10 routine where a bit is set, then calls the context hook at +0x4c98 and restores +0x4920.

- `__glOdyim_SoftClipEnable` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2231560
  **Inferred.** Enables one capability for the soft-clip path. Capabilities 0xb50 and 0xb57 (the GL lighting and colour-material enables) call `__glim_Enable` first, then `__glOdyim_Enable`. Any other capability calls only `__glOdyim_Enable`. The capability is passed through unchanged.

- `__glOdyim_SoftClipDisable` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22315d0
  **Inferred.** Disable counterpart of the soft-clip enable routine. For capabilities 0xb50 and 0xb57 it calls `__glim_Disable` and then `__glOdyim_Disable`, and every other capability gets only `__glOdyim_Disable`. The argument is passed through unchanged.

- `SoftClipApplyParameterF` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2231640
  **Inferred.** Stores a float material parameter into the block at a0 without scaling. Name 0x1200 writes four floats at +0, 0x1201 at +0x10, 0x1202 at +0x20, 0x1600 at +0x30, 0x1602 writes both +0 and +0x10, and 0x1601 writes one float at +0x40. Name 0x1603 writes three floats to +0x44, +0x4c and +0x48. Other names return without a store.

- `__glOdyim_SoftClipMaterialf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2231950
  **Inferred.** Single-float material call. When a1 is 0x1601 (shininess) it calls `__glOdyim_SoftClipMaterialfv` with a0 and a1 unchanged and a2 set to the spilled float at sp+0x20. Any other name calls `__glSetError` with 0x500.

- `__glOdyim_SoftClipMaterialfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22317a0
  **Inferred.** Vector material call. It runs `__glErrorCheckMaterial` on the face, name and value and reports a nonzero result through `__glSetError`. When the word at absolute 0x1030 is 1 it calls the context hook at +0x4920 first. It then sets the front and back dirty bytes at context +0x18d35 and +0x18d34, and for face 0x404, 0x405 or 0x408 it calls `SoftClipApplyParameterF` on the front block at +0x18c8c, the back block at +0x18cdc, or both. The matching bytes at +0x1c448 and +0x1c449 are cleared.

- `SoftClipApplyParameterI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22319b0
  **Inferred.** Integer-valued version of the float parameter store. Ambient (0x1200), diffuse (0x1201), specular (0x1202), emission (0x1600) and ambient-plus-diffuse (0x1602) compute (2*v + 1) times the float at context +0xf44, using the constants 2.0 and 1.0 read from the GOT data. Shininess (0x1601) converts without scaling, and colour indexes (0x1603) convert three values with no scaling.

- `__glOdyim_SoftClipMaterialiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2231cf0
  **Inferred.** Integer material call. It loads the integer at a2, converts it to float for `__glErrorCheckMaterial`, and reports a nonzero result through `__glSetError`. The dispatch after that matches `__glOdyim_SoftClipMaterialfv`, except that each block write goes to `SoftClipApplyParameterI` at 0x22319b0.

- `__glOdyim_SoftVertex3fFast` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22302e0
  **Inferred.** Single-float vertex entry. It loads the context from 0x1020, stores x, y and z from f12 to f14 at record +0x18, +0x1c and +0x20, and sets the default w from the context float at +0xf2c. Each enabled clip plane at context +0x18bb8 (stride 0x10) is tested with a single-precision dot product against -(d), and the outcode bits go to record +4. Flag words at +0x18c88 and +0x18d2c decide which colour and texture groups are copied, then the emit routine at +0x4890 is called.

- `__glOdyim_SoftVertex3fvFast` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2230450
  **Inferred.** Vector form of the single-float vertex entry. It reads x, y and z from the array at a0, uses the same plane loop and copy flags as the 3f entry, and calls the emit routine at +0x4890 with the context as a0.

- `__glOdyim_SoftVertex3dFast` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222ffc0
  **Inferred.** Double-argument vertex entry. The three doubles in f12 to f14 are converted to float for storage at +0x18 to +0x20, but the plane dot products are computed in double precision with the default w from +0xf2c. It sets the record's pointer at +0x10 from context +0x48d0 and then follows the same copy and emit steps as the single-float entry.

- `__glOdyim_SoftVertex3dvFast` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2230150
  **Inferred.** Array form of the double vertex entry. It loads three doubles from a0 at offsets 0, 8 and 0x10, converts them to single precision before storing them at record +0x18, +0x1c and +0x20, and runs the clip-plane test in single precision. The w default still comes from the context float at +0xf2c. The emit routine at +0x4890 is called with the context as a0.

- `__glOdyim_SoftVertex4dFast` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22305d0
  **Inferred.** Four-double vertex entry with w in f15. The record's +0x10 pointer comes from context +0x48d8, and the plane test in double precision compares the dot product with -(d times w). The w value is stored at record +0x24.

- `__glOdyim_SoftVertex4dvFast` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2230760
  **Inferred.** Array form of the four-double entry. It reads x, y, z and w from a0 at offsets 0, 8, 0x10 and 0x18, converts them to float for storage, and runs the plane test in single precision with the same scaling by w.

- `__glOdyim_SoftVertex4fFast` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22308f0
  **Inferred.** Four-float vertex entry. It stores f12 to f15 at record +0x18 to +0x24, takes the record's +0x10 pointer from context +0x48d8, and tests each plane in single precision against -(d times w), with the w value in f15.

- `__glOdyim_SoftVertex4fvFast` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2230a60
  **Inferred.** Array form of the four-float vertex entry. It reads four floats from a0 and writes them to record +0x18 to +0x24, then runs the same single-precision plane test with the w value from a0 plus 0xc.

- `__glOdysseySoftClipRenderTriangle` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2230be0
  **Inferred.** Triangle output. It writes 0x14400 and 4 to the port, then compares the word at context +0x670 with 0x1d00 (GL_FLAT). For flat shading it swaps the hook at +0x4920 and calls three routines through the pointers at +0x1c570, then three through +0x1c568. Otherwise it calls three routines through +0x1c560. It then writes 0x14001 and, if the word at context +0xba44 is nonzero, writes 0x10443, 0xfa, 0x10046 and 0x10046. It sets the word at +0xbb80 to 1.

- `__glOdysseySoftClipProcessTriangle` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2230d70
  **Inferred.** Triangle clip. It ORs the outcode words at +4 of the three vertex records. A nonzero AND of the outcodes returns without output. When the OR is zero it calls the context hook at +0x4988 with the first vertex. Otherwise it installs the GOT value at +0x4920, calls each vertex's +0x10 routine where the mask at context +0x8ce0 selects the bit, then calls the context triangle hook at +0x49a8 with the three vertices and restores +0x4920.

- `__glOdyim_SoftClipMateriali` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2231ea0
  **Inferred.** Forwards a material call to the soft-clip variant only for the token 0x1601, the GL shininess token. When a1 is 0x1601 it calls `__glOdyim_SoftClipMaterialiv` with a0 and a1 unchanged and passes the address of the saved a2 slot as the third argument. For any other a1 it calls `__glSetError` with 0x500, the GL invalid-enum code, and returns.

- `__glOdysseySoftClipClipTriangle` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22323f0
  **Established.** Spills the three register arguments a1, a2 and a3 into a three-slot frame array, then calls `__glOdysseyDoTriangleClip` with a0 unchanged, the frame array as a1, the count 3 in a2 and the caller's t0 in a3.

- `__glOdysseySoftClipClipTriangleFast` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22326f0
  **Established.** The same frame layout as the plain triangle clip: a1, a2 and a3 go into the frame's three slots, a2 is set to 3, and the call goes to `__glOdysseyDoTriangleClipFast` with the caller's t0 passed as the fourth argument register.

- `__glOdysseyGetNumSWClipPlanes` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2232b70
  **Inferred.** Counts the software clip planes as the number of set bits in the word at context +0x814, minus the hardware plane count that `__glOdysseyGetNumHWClipPlanes` returns. The count loop clears the lowest set bit on each pass with x & (x - 1). A zero mask skips the loop, so the result is the negated hardware count.

- `__glOdysseySoftClipPickParameterClipProcs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2233230
  **Inferred.** Stores the address of `OdysseyClipAll` into two context words, +0x49b8 and +0x4ca0. The address comes from a GOT word whose value is 0x2230000 plus the immediate 0x28d0, which gives 0x22328d0, the start of `OdysseyClipAll`.

- `__glOdysseyVertexWARClipNOP` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2234cb0
  **Inferred.** Saves the float at context +0x1c450 in f31, stores 0.0 there, and calls through a two-step pointer chain: the pointer at context +0x1ad8 is loaded, then the function pointer at +0xae0 of that object is called with no arguments. On return the saved float goes back to +0x1c450. The routine saves and restores ra, gp and f31 in a 0x20-byte frame.

- `__glOdyim_SoftClipEnd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2234d20
  **Inferred.** Calls `__glim_End` first, then reads the byte at context +0x1c48c. If that byte is zero and bit 8 of the word at +0x814 is set, the routine clears bits 8 to 12 of that word, ORs 0x510 into the word at +0x18e58 and stores 2 to the word at 0x1030. It then re-reads the same byte, and when it is still zero repeats the test on the word at +0x18c88 with the same effect. A nonzero byte returns at once.

- `__glOdysseySoftClipCopyMaterialOneSided` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2234de0
  **Established.** Copies 80 bytes, the words at context +0x18c8c, into the record at a1 starting at +0xd8. The loop moves four words per pass for five passes, using a 16-byte stride. The routine ends by clearing the byte at a1 +0x198.

- `__glOdysseyChangeMaterialEmission` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2234f50
  **Established.** Copies four floats from context +0x260 through +0x26c into the record at a1 +0x30 through +0x3c.

- `__glOdysseyChangeMaterialSpecular` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2234f80
  **Established.** Writes the four floats at context +0x260 through +0x26c to a1 +0x20 through +0x2c, a leaf routine with no frame.

- `__glOdysseyChangeMaterialAmbient` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2234fb0
  **Established.** Moves four floats from context +0x260 to +0x26c into a1 +0x0 through +0xc.

- `__glOdysseyChangeMaterialDiffuse` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2234fe0
  **Established.** Places the four floats from context +0x260 to +0x26c at a1 +0x10 through +0x1c.

- `__glOdysseyChangeMaterialAmbientAndDiffuse` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2235010
  **Established.** Loads each of the four floats at context +0x260 to +0x26c once and stores it twice, at a1 +0x0 and a1 +0x10, so the ambient and diffuse fields of the record get the same values.

- `__glOdysseyChangeFrontMaterialColor` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2235050
  **Inferred.** If the word at 0x1030 is 1, first calls the function pointer at context +0x4920 with the context as a0. It then calls the pointer at context +0x1c558 with the context and context +0x18c8c, clears the byte at context +0x1c448, and calls `__glClampAndScaleColor` on the context.

- `__glOdysseyChangeBackMaterialColor` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22350e0
  **Inferred.** The back-face counterpart of the front routine: the same 0x1030 test and +0x4920 pre-call, the same pointer at +0x1c558, but the second source block is at context +0x18cdc and the byte cleared is at context +0x1c449.

- `__glOdysseyChangeBothMaterialColors` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2235170
  **Inferred.** Calls the pointer at context +0x1c558 twice, first with context +0x18c8c and then with +0x18cdc as a1. Both bytes at +0x1c448 and +0x1c449 are cleared, and `__glClampAndScaleColor` is called last. The 0x1030 test with the +0x4920 pre-call runs before any of this.

- `__glOdysseySoftClipFlatShade` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236630
  **Established.** Reads a pointer from context +0x8cd8 and copies two runs of eight words from that record into a1: offsets 0x98 to 0xb4, then 0x178 to 0x194, at the same offsets in the destination.

- `__glOdysseySoftClipCalcSphereMapS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22367f0
  **Inferred.** Calls the shared routine at 0x22366f0, which has no dynamic symbol, with a0 and a1 unchanged and a2 pointing at a frame buffer. It then copies the first word of that buffer to a1 +0x38.

- `__glOdysseySoftClipCalcSphereMapT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236840
  **Inferred.** Calls the routine at 0x22366f0 the same way, then takes the second word of the frame buffer, the one at +4, and stores it at a1 +0x3c.

- `__glOdysseySoftClipCalcSphereMapST` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236890
  **Inferred.** Makes one call to the routine at 0x22366f0 into a frame buffer and writes both words of the result: the first to a1 +0x38 and the second to a1 +0x3c.

- `__glOdyim_SoftColor3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22368f0
  **Inferred.** Calls `__glOdyim_Color3b` with a0, a1 and a2 as received, then calls `__glim_Color3b` with the same three arguments. It keeps a0 in fp and spills a1 and a2 to the frame so both are back in their registers for the second call.

- `__glOdyim_SoftColor3bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236950
  **Inferred.** Passes its single pointer argument through `__glOdyim_Color3bv` and then into `__glim_Color3bv`, saving it in fp between the two calls.

- `__glOdyim_SoftColor3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22369a0
  **Inferred.** Calls `__glOdyim_Color3d` with the double arguments in f12 to f14 as received. It saves f12 in f31 and spills f13 and f14, then reloads them with f12 for `__glim_Color3d`.

- `__glOdyim_SoftColor3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236a00
  **Inferred.** Forwards the pointer in a0 to `__glOdyim_Color3dv`, holds it in fp, then calls `__glim_Color3dv` with it.

- `__glOdyim_SoftColor3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236a50
  **Inferred.** The single-precision version of the three-argument color wrapper: f12 is saved in f31 with mov.s, f13 and f14 are spilled as 8-byte slots, and `__glOdyim_Color3f` and `__glim_Color3f` are called in turn with the same float arguments.

- `__glOdyim_SoftColor3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236ab0
  **Inferred.** Copies its one pointer argument in a0 into the saved register fp before the first call, so the first callee, `__glOdyim_Color3fv` (GOT slot 0x23463b8), receives a0 unchanged. The second call, to `__glim_Color3fv` (slot 0x2341bb0), gets the same value moved back from fp. The 0x20-byte frame holds gp, fp and ra.

- `__glOdyim_SoftColor3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236b00
  **Inferred.** Takes three integers in a0 to a2. It stores a2 at 0x18(sp) and a1 at 0x20(sp) in a 0x30-byte frame, and a0 goes to fp. The first call, to `__glOdyim_Color3i` (slot 0x23463c8), is entered with all three registers as the caller set them. The second call, to `__glim_Color3i` (slot 0x2341bb8), reloads a1 and a2 from the frame and takes a0 from fp.

- `__glOdyim_SoftColor3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236b60
  **Inferred.** Only the pointer argument in a0 is kept. The first call goes to `__glOdyim_Color3iv` through slot 0x23463d8, and the second to `__glim_Color3iv` through slot 0x2341bc0 with a0 restored from fp. Nothing is spilled beyond gp, fp and ra in the 0x20-byte frame.

- `__glOdyim_SoftColor3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236bb0
  **Inferred.** Forwards three scalar arguments (a0, a1, a2) to `__glOdyim_Color3s` (slot 0x23463e8) and then to `__glim_Color3s` (slot 0x2341bd8). The frame is 0x30 bytes deep, with a2 at 0x18(sp) and a1 at 0x20(sp) saved across the first call and reloaded before the second.

- `__glOdyim_SoftColor3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236c10
  **Inferred.** A single pointer goes to `__glOdyim_Color3sv` through slot 0x23463f8, and then the same pointer goes to `__glim_Color3sv` through slot 0x2341be0. The pointer is parked in fp across the first call, and the 0x20-byte frame has no other data slots.

- `__glOdyim_SoftColor3ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236c60
  **Inferred.** Three unsigned byte values travel in a0 to a2. The routine saves a2 and a1 at 0x18(sp) and 0x20(sp) before calling `__glOdyim_Color3ub` (slot 0x2346408), then calls `__glim_Color3ub` (slot 0x2341b78) with a1 and a2 reloaded from the frame.

- `__glOdyim_SoftColor3ubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236cc0
  **Inferred.** Hands its pointer in a0 to `__glOdyim_Color3ubv` through slot 0x2346418, then restores a0 from fp and hands it to `__glim_Color3ubv` through slot 0x2341b80. The frame is 0x20 bytes.

- `__glOdyim_SoftColor3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236d10
  **Inferred.** The three unsigned integers in a0 to a2 are kept for a second pass: a2 goes to 0x18(sp) and a1 to 0x20(sp) in a 0x30-byte frame. `__glOdyim_Color3ui` is called through slot 0x2346428, and then `__glim_Color3ui` through slot 0x2341bc8, with the saved values put back into a1 and a2.

- `__glOdyim_SoftColor3uiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236d70
  **Inferred.** Wraps a pointer argument. The 0x20-byte frame keeps gp, fp and ra, and the pointer is dispatched to `__glOdyim_Color3uiv` (slot 0x2346438) and then to `__glim_Color3uiv` (slot 0x2341bd0).

- `__glOdyim_SoftColor3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236dc0
  **Inferred.** Three unsigned short arguments in a0 to a2 are stored into a 0x30-byte frame before `__glOdyim_Color3us` is called through slot 0x2346448. After it returns, a1 and a2 come back from 0x20(sp) and 0x18(sp), a0 comes from fp, and `__glim_Color3us` is called through slot 0x2341be8.

- `__glOdyim_SoftColor3usv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236e20
  **Inferred.** The pointer in a0 is passed first to `__glOdyim_Color3usv` (slot 0x2346458) and then to `__glim_Color3usv` (slot 0x2341bf0). It is saved in fp between the two calls; the frame is 0x20 bytes.

- `__glOdyim_SoftColor4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236e70
  **Inferred.** Four signed-byte values in a0 to a3 are split across the frame: a3 at 0x18(sp), a2 at 0x20(sp), a1 at 0x28(sp), and a0 in fp. The 0x30-byte frame covers the first call to `__glOdyim_Color4b` (slot 0x2346468). The second call, to `__glim_Color4b` (slot 0x2341c08), gets a1, a2 and a3 back from the frame.

- `__glOdyim_SoftColor4bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236ee0
  **Inferred.** One pointer argument. `__glOdyim_Color4bv` is entered through slot 0x2346478; `__glim_Color4bv` follows through slot 0x2341c10 with the same pointer. The only spills are gp, fp and ra at the top of a 0x20-byte frame.

- `__glOdyim_SoftColor4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236f30
  **Inferred.** Four double-precision arguments arrive in f12 to f15. f12 is copied into f31 before the first call, and f13, f14 and f15 are stored at 0x18(sp), 0x10(sp) and 0x8(sp) of the 0x30-byte frame. The first call goes to `__glOdyim_Color4d` (slot 0x2346488). The second, to `__glim_Color4d` (slot 0x2341c18), receives f12 from f31 and f13 to f15 reloaded from the frame.

- `__glOdyim_SoftColor4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236fa0
  **Inferred.** Passes a pointer to `__glOdyim_Color4dv` through slot 0x2346498 and then to `__glim_Color4dv` through slot 0x2341c20. The pointer lives in fp for the interval between the calls, and the frame is 0x20 bytes.

- `__glOdyim_SoftColor4f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2236ff0
  **Inferred.** Single-precision arguments in f12 to f15. A `mov.s` puts f12 into f31 before the first call, and f13, f14 and f15 go to 0x18(sp), 0x10(sp) and 0x8(sp) with `sdc1`. The first call to `__glOdyim_Color4f` (slot 0x23464a8) sees the registers as the caller set them. The second, to `__glim_Color4f` (slot 0x2341c28), restores f12 from f31 and f13 to f15 from the frame.

- `__glOdyim_SoftColor4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237060
  **Inferred.** This is the pointer form of the float color. `__glOdyim_Color4fv` (slot 0x23464b8) runs first, then `__glim_Color4fv` (slot 0x2341c30), both given the pointer that was in a0 on entry.

- `__glOdyim_SoftColor4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22370b0
  **Inferred.** Four integers in a0 to a3. a3, a2 and a1 are stored at 0x18(sp), 0x20(sp) and 0x28(sp) in a 0x30-byte frame. Before the second call to `__glim_Color4i` (slot 0x2341c38), a1 and a2 are reloaded and a0 comes back from fp. The first call is to `__glOdyim_Color4i` (slot 0x23464c8) with a0 to a3 untouched.

- `__glOdyim_SoftColor4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237120
  **Inferred.** A pointer is dispatched twice, first through slot 0x23464d8 to `__glOdyim_Color4iv` and then through slot 0x2341c40 to `__glim_Color4iv`. Only gp, fp and ra are stored in the 0x20-byte frame.

- `__glOdyim_SoftColor4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237170
  **Inferred.** Four scalars in a0 to a3. a1, a2 and a3 are stored at 0x28(sp), 0x20(sp) and 0x18(sp) of the 0x30-byte frame while `__glOdyim_Color4s` runs (slot 0x23464e8), and a0 is kept in fp. `__glim_Color4s` (slot 0x2341c58) is then called with all four values.

- `__glOdyim_SoftColor4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22371e0
  **Inferred.** Pointer wrapper: `__glOdyim_Color4sv` through slot 0x23464f8, then `__glim_Color4sv` through slot 0x2341c60. The frame is 0x20 bytes and the pointer survives the first call in fp.

- `__glOdyim_SoftColor4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237230
  **Inferred.** Byte-sized unsigned components in a0 to a3 are written to 0x18(sp), 0x20(sp) and 0x28(sp) of a 0x30-byte frame. `__glOdyim_Color4ub` (slot 0x2346508) is called first; afterwards a1 to a3 are read back from the frame and `__glim_Color4ub` (slot 0x2341bf8) is called with a0 from fp.

- `__glOdyim_SoftColor4ubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22372a0
  **Inferred.** The pointer argument goes to `__glOdyim_Color4ubv` through slot 0x2346518 and to `__glim_Color4ubv` through slot 0x2341c00. Saved registers are gp, fp and ra only.

- `__glOdyim_SoftColor4ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22372f0
  **Inferred.** Four unsigned integers come in a0 to a3 and go into the 0x30-byte frame (a3 at 0x18, a2 at 0x20, a1 at 0x28). `__glOdyim_Color4ui` is entered through slot 0x2346528, and `__glim_Color4ui` through slot 0x2341c48 is entered with the four values restored.

- `__glOdyim_SoftColor4uiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237360
  **Inferred.** Single pointer, 0x20-byte frame. Calls `__glOdyim_Color4uiv` (slot 0x2346538) and then `__glim_Color4uiv` (slot 0x2341c50), passing the pointer both times.

- `__glOdyim_SoftColor4us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22373b0
  **Inferred.** Unsigned short values in a0 to a3 are saved in a 0x30-byte frame at 0x18, 0x20 and 0x28. The routine calls `__glOdyim_Color4us` through slot 0x2346548, reloads a1 to a3 from the frame, and then calls `__glim_Color4us` through slot 0x2341c68.

- `__glOdyim_SoftColor4usv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237420
  **Inferred.** The pointer is forwarded to `__glOdyim_Color4usv` (slot 0x2346558) and then to `__glim_Color4usv` (slot 0x2341c70), with fp holding it between the calls in a 0x20-byte frame.

- `__glOdyim_SoftIndexd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237470
  **Inferred.** One double in f12. It is copied to f31 with `mov.d` before `__glOdyim_Indexd` is called through slot 0x2346568; `__glim_Indexd` (slot 0x2341c78) then receives f12 from f31. The frame is 0x20 bytes, with f31 at 0(sp), ra at 8(sp) and gp at 0x10(sp).

- `__glOdyim_SoftIndexdv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22374c0
  **Inferred.** Pointer argument in a0, handed to `__glOdyim_Indexdv` through slot 0x2346578 and then to `__glim_Indexdv` through slot 0x2341c98.

- `__glOdyim_SoftIndexf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237510
  **Inferred.** A single-precision float in f12 is saved in f31 by `mov.s`. `__glOdyim_Indexf` (slot 0x2346588) receives it in f12 first. Then f31 is moved back into f12 for `__glim_Indexf` (slot 0x2341c80). The frame is 0x20 bytes.

- `__glOdyim_SoftIndexfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237560
  **Inferred.** The float-pointer form: `__glOdyim_Indexfv` through slot 0x2346598, then `__glim_Indexfv` through slot 0x2341ca0. Only gp, fp and ra are spilled.

- `__glOdyim_SoftIndexi` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22375b0
  **Inferred.** Takes one integer in a0 and calls `__glOdyim_Indexi` through slot 0x23465a8 before `__glim_Indexi` through slot 0x2341c88. a0 is held in fp across the first call, and the 0x20-byte frame stores gp, fp and ra.

- `__glOdyim_SoftIndexiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237600
  **Inferred.** Forwards the pointer in a0 to `__glOdyim_Indexiv` (slot 0x23465b8) and then to `__glim_Indexiv` (slot 0x2341ca8). Frame is 0x20 bytes.

- `__glOdyim_SoftIndexs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237650
  **Inferred.** One short integer in a0. `__glOdyim_Indexs` is entered through slot 0x23465c8, and after a0 returns from fp, `__glim_Indexs` is entered through slot 0x2341c90.

- `__glOdyim_SoftIndexsv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22376a0
  **Inferred.** The short-vector pointer in a0 is passed to `__glOdyim_Indexsv` through slot 0x23465d8 and to `__glim_Indexsv` through slot 0x2341cb0. The 0x20-byte frame holds fp for the pointer.

- `__glOdyim_SoftIndexub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22376f0
  **Inferred.** An unsigned byte in a0 goes to `__glOdyim_Indexub` (slot 0x23465e8) and then to `__glim_Indexub` (slot 0x2341cb8), with a0 kept in fp between them.

- `__glOdyim_SoftIndexubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237740
  **Inferred.** Unsigned-byte pointer forwarded to `__glOdyim_Indexubv` (slot 0x23465f8) and then to `__glim_Indexubv` (slot 0x2341cc0). Only gp, fp and ra are saved.

- `__glOdyim_SoftScratchColor3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237790
  **Inferred.** Three byte-sized arguments in a0 to a2. a2 and a1 are stored at 0x18(sp) and 0x20(sp) in a 0x30-byte frame. The first callee is `__glOdyim_ScratchColor3b` (slot 0x2346370). The second callee is `__glim_Color3b` (slot 0x2341b88), not a scratch-prefixed routine, and it is passed a0 from fp with a1 and a2 reloaded.

- `__glOdyim_SoftScratchColor3bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22377f0
  **Inferred.** Pointer in a0. `__glOdyim_ScratchColor3bv` is called through slot 0x2346380, then `__glim_Color3bv` through slot 0x2341b90, with the pointer restored from fp.

- `__glOdyim_SoftScratchColor3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237840
  **Inferred.** Three doubles in f12, f13 and f14. f12 is moved into f31 before the first call to `__glOdyim_ScratchColor3d` (slot 0x2346390). The 0x30-byte frame stores f14 at 8(sp), f13 at 0x10(sp), f31 at 0(sp), ra at 0x18(sp) and gp at 0x20(sp). The second call, to `__glim_Color3d` (slot 0x2341b98), gets f12 from f31 and f13 and f14 reloaded.

- `__glOdySoftAccum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2197aa0
  **Inferred.** Routes one accumulation-buffer operation to its worker. The code in a0 is compared with 0x100, 0x101, 0x102, 0x103 and 0x104, and each one loads a pointer from the GOT base at gp-0x7fe8 and adds its own offset (+0x5290, +0x47e0, +0x6b30, +0x5db0, +0x64a0 in that order; the 0x104 case is picked with movz). The worker is called with ctx+0x9db0 in a0 and the float argument still in f13. Before the dispatch, when the doubleword at ctx+0x9dc8 is zero, the routine first calls the pointer at ctx+0x9e80 with the context and ctx+0x9db0, then dispatches. The context pointer is read from absolute address 0x1020.

- `__glOdysseyInitCI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a86b0
  **Inferred.** Fills the colour-index state of a context. It calls the pointer at gp-0x5370 with the two incoming arguments, then stores three pointers from gp-0x4280, gp-0x4288 and gp-0x4278 at ctx+0x100, +0xf8 and +0x128, and five pointers built from the table at gp-0x7fd8, stored at +0xe8, +0xf0, +0x108, +0xd8, +0xe0 and +0x110 (the +0xe8 value is stored twice). It reads the word at +0xe04 of the second argument as a bit count. The mask (1 shifted by the count, minus one) goes to ctx+0x78 and ctx+0xd0; a count of 32 or more stores -1 instead. Eight float slots at +0x90, +0x94, +0x98, +0xb8, +0xc0, +0xc4, +0xc8 and +0xcc get 1.0 from gp+0x8e8. The word at +0x24 becomes 4 for a count of 17 or more, 2 for 9 to 16, and 1 below 9.

- `__glOdyim_PolygonMode` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a15f0
  **Inferred.** Sets the polygon mode for one face. If the word at absolute address 0x1030 is 1, the routine reports 0x502 through the pointer at gp-0x5130 and returns. The mode in a1 must be 0x1b00, 0x1b01 or 0x1b02, otherwise it reports 0x500 through the same pointer. Mode 0x1b00 sets bit 3 and mode 0x1b01 sets bit 1 of the word at ctx+0x4714, and both write 2 to the word at 0x1030. The face in a0 must be 0x404, 0x405 or 0x408: 0x404 stores the mode at ctx+0x294, 0x405 at ctx+0x298, and 0x408 at both. Any other face reports 0x500. On success the word at 0x1030 becomes 2, bit 2 is set at ctx+0x4714, and the two face words are packed into the word at ctx+0x9f54 as two-bit fields (bits 2 and 3 from +0x294, bits 0 and 1 from +0x298). When the word at ctx+0xbb80 is nonzero the routine clears it and writes five words to absolute address 0x10000.

- `__glOdyim_Accum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x219a040
  **Inferred.** Handles the accumulation-buffer entry point for the five codes 0x100 to 0x104. It returns after reporting 0x502 through the pointer at gp-0x5130 when the word at 0x1030 is 1, when the byte at ctx+0xde8 is zero, when the byte at ctx+0xde5 is nonzero, or when the byte at ctx+0xf20 is zero. Any code outside 0x100 to 0x104 reports 0x500. Work is done only when the word at ctx+0xdd4 equals 0x1c00: the routine then calls the pointers at gp-0x7360 and gp-0x7358 (the second with argument 0), calls the helper at 0x21946d0 first when the byte at ctx+0x144b9 is zero, calls the helper at 0x2194740, calls the pointer at ctx+0x141b8 with the code and the float, and ends with the pointer at gp-0x7358 called with argument 1. Other values of ctx+0xdd4 leave the float unused and return.
- `pack_b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b6790
  **Inferred.** Copies the low byte of each 32-bit word from a source array into a byte array. a0 is the word count, a1 the source words and a2 the destination bytes. An odd count stores one byte first, then the loop takes two words per trip. It returns at once when a0 is zero, and makes no calls.

- `pack_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b6800
  **Inferred.** Narrows each 32-bit word of a1 to its low halfword and writes the results to a2 one after another. An odd a0 gets its first halfword stored alone, the rest go two per loop trip, and the loop ends when the counter in t0 equals a0. A zero count returns without a store.

- `InterpretNormal` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b6c80
  **Inferred.** Switches on the opcode in a1 over the values 0x16 to 0x19 and returns without a call for any other value. For 0x16 it packs the source words in a2 into a stack buffer with `pack_b` at 0x21b6790, then calls the entry at +0xc68 in the function table that the context word at +0x1ad8 points to, passing the buffer in a0. For 0x17 it does the same with `pack_s` at 0x21b6800 and the entry at +0xca8. For 0x18 and 0x19 it passes the original a2 straight to the entries at +0xc98 and +0xc88. The context pointer is read from absolute address 0x1020 and kept in the frame across the pack call.

- `InterpretTexCoord` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b6d60
  **Inferred.** Takes a1 minus 0x1e as an unsigned index and returns at once when it is 8 or more. Below 8 the index selects an 8-byte entry in a table at the address loaded from gp-0x7eb8, offset 0xda0, and jumps through it to one of eight blocks. Each block loads the function table pointer from context +0x1ad8, takes the entry at one of the offsets 0xd08, 0xcd8, 0xd88, 0xd98, 0xd48, 0xd58, 0xd18 or 0xcc8, and calls it with the original a2 in a0. The return address is saved in the frame and reloaded before the return.
- `__glOdysseyEvalMesh1Line` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c0650
  **Inferred.** Emits a line strip over a one-dimensional evaluation grid. It returns at once when the grid count word at context +0x8a0 is zero. Otherwise the step is (the float at +0x898 minus the float at +0x894) divided by that count. It calls the helper at 0x21baef0 with a1 = 1 and a stack buffer, then calls slot +0x38 of the table that context +0x1ad8 points to with 3 in a0, the value of GL_LINE_STRIP. For each index from the first argument to the second, inclusive, it computes u = lo + i*step with the high bound used exactly at i equal to the count. Each u goes to the helper at 0x21bb230, and the strip closes through slot +0x58 followed by a call to 0x21bb180.

- `__glOdysseyEvalMesh1Point` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c0780
  **Inferred.** Point-mode version of the same grid walk. The count test, the step and the index loop match the line routine, but the begin call passes a zero in a0, the value of GL_POINTS, so each grid point is emitted as a separate primitive before the closing slot +0x58 call and the 0x21bb180 call.

- `__glOdysseySetRealLerpEvenEven` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c2120
  **Inferred.** Initialises a lerp coefficient table inside the context. Word stores of zero run through the offsets from +0x4c to +0x244 in four interleaved runs spaced 0x94 apart. The float at gp+0x90c goes to +0x1f8, +0x164, +0xd0, +0x3c, +0x1ec, +0x158, +0xc4, +0x30, +0x1e8, +0x154, +0xc0 and +0x2c, and the float at gp+0x908 goes to +0x1e0, +0x14c, +0xb8 and +0x24. The other float slots get zero from a register. There is no null check on a0, so a null context faults on the first store.

- `__glOdysseySetImaginaryLerpEvenEven` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c22e0
  **Inferred.** Imaginary-part twin of the real-part table fill, with a null guard first: a0 of zero returns immediately. It zeroes the same word slots and the same zero float slots as the real routine. Its differences are that the float at gp+0x8e8 goes to +0x200, +0x16c, +0xd8 and +0x44, and the float at gp+0x90c goes to a different set of offsets, +0x1fc, +0x168, +0xd4, +0x40, +0x1f4, +0x160, +0xcc, +0x38, +0x1f0, +0x15c, +0xc8 and +0x34. The float at gp+0x908 goes to +0x1e0, +0x14c, +0xb8 and +0x24, as in the real routine.

- `__glOdyim_FragmentMaterialfvSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c84b0
  **Inferred.** Front end for the float form of the fragment material call. It reads the current context pointer from absolute address 0x1020, saves it in the frame, and calls `__glim_FragmentMaterialfvSGIX` at 0x21c8360 with the three arguments first. Face 0x404 passes the arguments to the store at 0x21c7170 with a0 set to context + 0x9fc0. Face 0x405 uses context + 0x9fe0. Face 0x408 makes two calls, one at +0x9fc0 and then one at +0x9fe0. Any other face returns without a store.

- `__glOdyim_FragmentMaterialivSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c8a90
  **Inferred.** Integer-vector counterpart of the float front end. It calls `__glim_FragmentMaterialivSGIX` at 0x21c8910 first. It then picks the same per-face context offsets, +0x9fc0 for 0x404 and +0x9fe0 for 0x405, and both for 0x408. Each store goes to 0x21c78d0 in place of the 0x21c7170 that the float form uses. A face outside the three values returns with no store.

- `__glOdyim_FragmentColorMaterialSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c8c00
  **Inferred.** Records the face and mode for fragment colour material. The global word at absolute 0x1030 is checked first, and a value of 1 reports 0x502 through the error routine reached via the GOT slot at gp-0x5130. A face outside 0x404, 0x405 and 0x408 reports 0x500 the same way. The mode in a1 must be 0x1200, 0x1201, 0x1202, 0x1600 or 0x1602, or the routine reports 0x500. On success the face and the mode are stored at context +0x18a18 and +0x18a1c, bit 0x80 is set in the word at +0x18e58, and the word at absolute 0x1030 becomes 2.
- `__glOdysseyUpdateRasterPos` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21caa00
  **Inferred.** Takes its first argument as an index, reads a 64-bit word from the address 0x192e0 plus that index, and hands the word to the routine at 0x21c9780 with a1 set to 3. A negative return from that call ends the routine with nothing further done. Otherwise it checks the byte at context +0xde4. A zero byte sends it to 0x21c9880 twice, with the word plus 0x28 and then the word plus 0x50 (paired with context +0x1d0). A nonzero byte sends it to 0x21c9880 with the word plus 0x3c and context +0x230, then with the word plus 0x50 and context +0x1d0. Before returning it clears one byte at the index plus 0xcaa0.

- `__glOdyim_GetTexEnvfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21cb450
  **Inferred.** Returns one texture-environment value as a float through the pointer in a2. When the word at 0x1030 is 1, it reports 0x502 through the error routine at gp-0x5130 and returns. The target in a0 must be 0x2300, or the routine reports 0x500. Pname 0x2200 loads the first word of the table that the pointer at context +0xac0 names, zero-extends it and converts it to a float. Pname 0x2201 passes the context, the code 5, the table pointer plus 4 and the type code 1 to the helper at gp-0x4d60. Any other pname reports 0x500.

- `__glOdyim_GetTexEnviv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21cb570
  **Inferred.** Integer counterpart of the float getter at 0x21cb450. Target 0x2300 is required, and the same 0x1030 test reports 0x502. For pname 0x2200 the first table word from the pointer at context +0xac0 is stored unchanged as a 32-bit integer through a2, with no conversion. Pname 0x2201 calls the helper at gp-0x4d60 with the table pointer plus 4, the code 5 and the type code 3. Every other combination reports 0x500 and returns.

- `__glOdyim_PixelMapfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21cea30
  **Inferred.** Begins by calling the routine in the slot at gp-0x6100 with its arguments unchanged, and keeps the map name in s8. The name must lie in 0xc70 to 0xc79, the ten pixel-map enumerants; each one indexes an eight-byte handler pointer in the table at gp-0x7eb8 plus 0x1488. Each handler calls the helper at gp-0x72f0 with a code of 4, 6 or 7, depending on the map. A nonzero return from that helper goes to the error routine at gp-0x5130 as the error code. A name outside the range leaves at the epilogue.

- `__glOdyim_PixelMapuiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ceaf0
  **Inferred.** Same structure as the float pixel-map setter at 0x21cea30, with a different first-call slot at gp-0x60f8 and a different handler table at gp-0x7eb8 plus 0x14d8. The map range is 0xc70 to 0xc79 and the handlers use the same helper slot at gp-0x72f0. A nonzero helper result is raised through gp-0x5130 as an error.

- `__glOdyim_PixelMapusv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21cebb0
  **Inferred.** The unsigned-short variant of the pixel-map dispatch. It calls the routine at gp-0x60f0 first, then indexes a handler table at gp-0x7eb8 plus 0x1528 with the map name minus 0xc70, accepting only indexes 0 to 9. The handlers call the helper at gp-0x72f0 with a code of 4, 6 or 7, and a nonzero result is passed to the error routine at gp-0x5130.

- `__glOdysseyImageClose` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ccf80
  **Inferred.** Resets the image bookkeeping in the block at context plus 0x10000. The routine stores zero and minus one into five word pairs, at offsets -0x35ac/-0x35b0, -0x35b8/-0x35bc, -0x3574/-0x3578, -0x3580/-0x3584 and -0x358c/-0x3590, and clears the byte at -0x35c0. Three doubleword slots at -0x35a0, -0x3598 and -0x3568 are each tested, and every nonzero one makes a call through the function pointer at context +0x18, with the context as the only argument. The routine returns 1.

- `ImageChainOpAllocateFilters` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21d2e20
  **Inferred.** Allocates the per-filter storage of an image chain op. The count in a1 is multiplied by 2912 (0xb60) to give the byte size, and a count of zero clears the word at +0x20 of the op and returns. Otherwise it calls the allocator in the first word of the context with the context and the size, and stores the result at +0x20. A null result reports 0x505 through the error routine and, when the op is set, calls the context's callback at +0x18 with the op. On success the count goes to +0x18 of the op. The routine then walks the filters from the last to the first, each stride 0xb60 bytes back. For each filter it calls the routine at gp-0x7468 with the base, base plus 0x2d0, base plus 0x5a0 and base plus 0x870. It zeroes the five words at base plus 0xb40 through 0xb50, then calls the routine at gp-0x73f0 with the base.

- `__glOdyim_GetFragmentMaterialfvSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21cbff0
  **Inferred.** Reads a fragment material property into the output pointer in a2. When the word at 0x1030 is 1, it reports 0x502. The face in a0 must be 0x404 or 0x405, and the base is the context plus 0x18964 or 0x189b4 respectively. Pname 0x1603 copies three floats from base plus 0x44, 0x4c and 0x48 to the output, in that order. Pname 0x1601 copies one float from base plus 0x40. Pname 0x1600 calls the routine at gp-0x4c30 with the context, the output and base plus 0x30. Pnames 0x1200, 0x1201 and 0x1202 copy four floats each from base offsets 0x00, 0x10 and 0x20. Any other pname, including 0x1602, reports 0x500.

- `__glOdySpanSwapBytes2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21eb400
  **Inferred.** Swaps the two bytes of each 16-bit element while copying a span from the pointer in a2 to the pointer in a3. The byte count is the product of the words at +0xb8 and +0x28 of the descriptor in a1, divided by four. A four-halfword block is handled first when that count is odd, then the loop moves eight halfwords per pass. Each element is rotated with a shift right and a shift left by eight, an or, and a halfword store. When the word at +0x30 of the descriptor is zero, the code reloads the second factor from +0x80 instead of +0x28 before the count is taken.

- `__glOdySpanSwapBytes4` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21eb6a0
  **Inferred.** Reverses the byte order of each 32-bit word of a span, copying from a2 to a3. This entry covers the main path, taken when the word at +0x30 of the descriptor in a1 is nonzero. The word count is the product of the words at +0xb8 and +0x28 divided by four. Each word is rebuilt from four pieces: a shift left by 24 moves the low byte to the top, a shift right by 24 moves the top byte to the bottom, and the two middle bytes are moved through the masks 0xff0000 and 0xff00. The zero-flag case branches to 0x21eb8f8, which this entry does not cover.

- `__glOdySpanUnpackUbyte` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21eb900
  **Inferred.** Expands a run of unsigned bytes into floats, one float per byte, each divided by the float 255.0 at gp+0xa04. The element count is the product of the words at +0xb8 and +0x28 of the descriptor in a1, divided by four. The code handles a four-byte block first when that count is odd, then runs passes of eight bytes, then a one-byte tail loop from 0x21ebab0. Each float is stored at a four-byte stride into the buffer at a3.

- `__glOdySpanUnpackUshort` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ebae0
  **Inferred.** Converts a run of unsigned 16-bit values into floats by dividing each one by 65535.0, the float at gp+0x8f4. The same count and block layout as the byte unpacker apply: the count is the product of +0xb8 and +0x28 over four, a four-element block comes first when the count is odd, and the body reads eight halfwords per pass with a single-halfword tail loop at 0x21ebc90. Source halfwords are read with lhu from a2, and results go to the buffer at a3.

- `__glOdyUpdateDepthSpanInfo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ea4e0
  **Inferred.** Fills the depth-span record at a1 from the context at a0. A byte at a0+0x18bb0 selects whether it first calls `__glOdysseyUpdateTransform` with a0. The routine then stores the address a0+0x18a38 at record +0x278, the quotient of minus the double at a0+0x18a80 over the double at a0+0x18a70 at +0x280, and the quotient of the double 8589901824.0 (at gp+0xbc8) over the difference of the doubles at a0+0x18a38 and a0+0x18a40 at +0x288. Two single-precision bounds go to +0x290 and +0x294, chosen by double comparisons, and the flag bytes at +0x298 through +0x29b are set along the way.

- `ImageChainAddOpScaleBias` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21da7a0
  **Inferred.** Appends a scale-and-bias stage to an image chain. It gets a new node from the unnamed routine at 0x21d2da0 and returns 0 if that fails. The node is tagged 5, the four floats at the pointer in a1 are copied to node +0x28 through +0x34, and the four floats at a2 go to +0x38 through +0x44. It then calls `__glOdysseyImageCalcXferWriteParams` with a3 pointing at a local, and reads the byte at that local's offset 4. When the context word at +0x9ec0 has bit 0x80 set, the node byte at +0x4c is cleared when the format at ctx+0x20+8 is 0x1908, 0x8000, 0x1906 or 0x190a, and left at 1 otherwise. The routine returns 1 on success.

- `__glOdySpanMapStencil` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21eca70
  **Inferred.** Maps a span of 32-bit stencil values through a lookup table. The count is the word at +0xb8 of a1.
  The table descriptor is the doubleword at +0x158 of a1; its word at offset 0 minus one is the index mask, and the
  table pointer is the doubleword at +8 of the descriptor. Each source word from a2 is ANDed with the mask, and the
  table word at that index is stored to a3. The main loop takes eight words per pass, with one four-word pass first
  when the count divided by four is odd, and a tail covers the count modulo four. The routine makes no calls.

- `__glOdySpanPackUbyteI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ed270
  **Inferred.** Narrows a span of 32-bit index words to unsigned bytes. The word at +0x5c of a1 selects the mask: 0x7f
  when that word equals 0x1400, otherwise 0xff. Each source word is ANDed with the mask and stored with `sb` at
  one-byte stride. The count is the word at +0xb8 of a1; the bulk loop unrolls sixteen bytes per pass and a
  remainder loop handles the count modulo four. No calls are made.

- `__glOdySpanPackUshortI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21edac0
  **Inferred.** The halfword counterpart of the byte index pack. The mask is 0x7fff when the word at +0x5c of a1 is
  0x1400 and 0xffff otherwise. Source words are ANDed with it and written with `sh` two bytes apart. The count comes
  from the word at +0xb8 of a1, and the tail handles the count modulo four. The routine calls nothing.

- `__glOdySpanPackUbyte` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ecf80
  **Inferred.** Converts a span of floats to bytes. The element count is the product of the words at +0x80 and +0xb8
  of a1. Each float is multiplied by the single-precision scale loaded from the table at $at+0xa04, widened with
  `cvt.d.s`, added to the double at $at+0xb70, truncated with `trunc.w.d`, and the low byte is stored with `sb`. There
  is no clamp and no call.

- `__glOdySpanPackUshort` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ed7d0
  **Inferred.** The halfword form of the float-to-byte conversion. The element count is again the product of +0x80 and
  +0xb8 of a1, and the scale is the single loaded from $at+0x8f4 rather than from $at+0xa04. The result of the same
  multiply, widen, add-double and truncate sequence is stored with `sh`, two bytes per element.

- `__glOdySpanPackByte` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ed4a0
  **Inferred.** Converts a span of floats to bytes using a fused multiply-add. The count is the product of
  +0x80 and +0xb8 of a1. Each float is scaled by the single at $at+0xa04 and widened. The double at $at+0xb58 is then
  added, and `madd.d` computes the double at $at+0xb70 times that sum, plus the same double at $at+0xb70. The result
  is truncated to a 32-bit integer and stored with `sb`.

- `__glOdySpanPackUint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21edcf0
  **Inferred.** Converts a span of floats to 32-bit words through double precision. The count is the product of +0x80
  and +0xb8 of a1. Each float is widened, then `madd.d` forms the double at $at+0xcc0 times the value plus the double at
  $at+0xb70. `trunc.l.d` and `dmfc1` move the 64-bit result out, and its low word is stored with `sw`. Source is a2,
  destination a3, and the routine makes no calls.

- `__glOdySpanUnpackFloatI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ec1b0
  **Inferred.** Converts a span of single-precision floats to 32-bit integers by truncation. The count is the product of
  the words at +0x28 and +0xb8 of a1. Each word is loaded from a2 with `lwc1`, truncated with `trunc.w.s`, and stored
  to a3 with `swc1`, four elements per pass with a tail. It reads no constant table and makes no calls.
- `__glTRim_Vertex3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220fb10
  **Inferred.** Appends one vertex that carries an explicit z. The context pointer is loaded from the absolute word at 0x1020. The fill count is the word at context +0x12d70, and the slot base is the pointer at +0x12d60. The slot is the count times 16. Three floats are copied from the argument array at a0 into slot offsets 0, 4 and 8, and offset 0xc takes the float at context +0xf2c. The count is stored back incremented. When the new count is below 0x78 the routine returns; otherwise it calls ProcessOverflow at 0x220f3f0.

- `__glTRim_Vertex4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220fba0
  **Inferred.** Appends one vertex given as four floats. The four words at the argument array in a0 are copied unchanged into slot offsets 0, 4, 8 and 0xc, so no default is read from context for w. The count and slot base are the words at context +0x12d70 and +0x12d60, with the slot again the count times 16. A new count of 0x78 or more hands off to ProcessOverflow at 0x220f3f0, and anything smaller returns.

- `__glTRim_Vertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220fcc0
  **Inferred.** Takes an x and y pair as the double arguments in f12 and f13. Each is narrowed to single precision with cvt.s.d and stored at slot offsets 0 and 4. The z word at offset 8 is written from a zero moved out of $zero, and offset 0xc takes the float at context +0xf2c. The fill count at +0x12d70 is bumped after the store and compared with 0x78, and ProcessOverflow at 0x220f3f0 runs when the count is 0x78 or above.

- `__glTRim_Vertex2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220fd50
  **Inferred.** Reads x and y from a double array: x from offset 0 of the array at a0 and y from offset 8. Each value is narrowed with cvt.s.d into slot offsets 0 and 4, offset 8 gets a zero, and offset 0xc gets the context float at +0xf2c. The routine then advances the count at +0x12d70 and either returns or calls ProcessOverflow at 0x220f3f0 once the count is 0x78 or more.

- `__glTRim_Vertex2i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220fdf0
  **Inferred.** Converts two integer register arguments into the vertex. The context pointer comes from the absolute word at 0x1020 into a2. The value in a0 becomes x and the value in a1 becomes y, each moved to an FPU register and converted with cvt.s.w into slot offsets 0 and 4. The z word is a zero and the w word is the float at context +0xf2c. The count at +0x12d70 is incremented and checked against 0x78, and ProcessOverflow at 0x220f3f0 is called at the limit.

- `__glTRim_Vertex2iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220fe90
  **Inferred.** Takes an integer pair from memory rather than registers. The word at offset 0 of the array at a0 is converted to float and stored at slot offset 0, and the word at offset 4 goes to offset 4. Offset 8 is a zero, and offset 0xc comes from context +0xf2c. After the count at +0x12d70 is bumped, values of 0x78 or more send control to ProcessOverflow at 0x220f3f0, and smaller values return.

- `__glTRim_Vertex2s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220ff30
  **Inferred.** Stores a two-value vertex from the register arguments a0 and a1, with no separate halfword load: each argument register is converted as a full 32-bit word with cvt.s.w, so the value kept is whatever width the caller left in the register. The conversions go to slot offsets 0 and 4, with a zero at offset 8 and the context float at +0xf2c at offset 0xc. The count and the 0x78 limit are the same as in the sibling vertex entries, and ProcessOverflow at 0x220f3f0 is the overflow call.

- `__glOdysseyRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220cbd0
  **Inferred.** Draws one rectangle as a quad. It keeps the single-precision values in f13, f14, f15 and f16 in callee-saved registers, leaving f12 unread. The dispatch table pointer is the word at context +0x1ad8. The routine calls the entry at +0x38 of that table with a0 set to 7, the quad begin mode, then calls the entry at +0xa60 four times with the corner pairs (f13, f14), (f15, f14), (f15, f16) and (f13, f16). It finishes by calling the entry at +0x58 with no arguments.

- `__glOdysseyPMObjGroupResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220b6d0
  **Inferred.** Reports whether a group is resident. The first lookup is LookupKnownGroup at 0x220bed0, called with a2 set to zero and the other arguments unchanged. A zero result makes the routine return 0. A nonzero result feeds LookupCoresidRange at 0x220c010, which takes the group, the saved a0, a2 and a3, and a zero fifth argument in t0. If that second lookup also finds a record, the routine loads the pointer at record offset 0x30 and returns 1 when the halfword it points to is nonzero, and 0 when it is zero or the lookup returned nothing.

Skipped (not described within the time box, or the body could not be fully disassembled): __glOdysseyImageCalcTexObjFormats, __glOdysseyImageCalcPixelModeFields, __glOdysseyImageCalcXferReadParams, ImageUpdateRasterTokensForDrawable, __glOdysseyImageTilingCreate, doOdysseyHistogramMinMax, __glOdysseyHistogramMinMax, ValidateLight, ValidateLightColor, ValidateFragmentLightColor, __glOdysseyValidateLighting, __glOdysseyInitLUTs, __glOdysseyStoreLUT, ResizeLUTData, __glOdysseyPickAllProcs, __glOdysseySoftClipPickAllProcs, __glOdysseySoftClipPickTextureProcs, __glOdysseyInitKernel, __glOdysseyUnSharePM, __glOdysseyOpenPMObjReference, __glOdysseyOpenPMObjWriteReference, __glOdysseyClosePMObjWriteReference, __glOdysseyClosePMObjReference, RemoveKnownGroup, DestroyCSet, AllocSpecificCSetId, NextCSetElem, __glOdysseyValidateProgram, __glOdysseyRasterPosGeneral, AddProgram, __glTRim_End.
- `__glTRim_Vertex2sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220ffd0
  **Inferred.** Appends one vertex to the trim vertex buffer from a two-halfword argument. The counter word at
  context +0x18d70 selects a 16-byte record from the buffer base at +0x18d60. The halfwords at a0 and a0+2 are
  converted to float and stored at record offsets 0 and 4. The float at offset 0x8 is set to 0.0, and the float
  at context +0xf2c is copied to offset 0xc. The counter is incremented first. When the new count reaches 0x78
  (120) the routine calls the unnamed local routine at 0x220f3f0 before it returns.

- `__glTRim_Vertex3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210070
  **Inferred.** Appends one vertex from three single-precision arguments in f12, f13 and f14. They go to record
  offsets 0, 4 and 8. The context float at +0xf2c goes to offset 0xc. The record index comes from the counter
  at context +0x18d70, and the buffer base from +0x18d60. After the counter increment the routine compares the
  count with 0x78 and calls the local routine at 0x220f3f0 once the buffer is full.

- `__glTRim_Vertex3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210100
  **Inferred.** The double-precision form of the three-coordinate append. The doubles in f12, f13 and f14 are
  rounded to single with cvt.s.d and stored at record offsets 0, 4 and 8. The float at context +0xf2c fills
  offset 0xc, and the counter and flush test at 0x78 match the single-precision variant at 0x2210070.

- `floatToS58_Clamp` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2214050
  **Inferred.** Converts the float in f12 to a 14-bit fixed-point code. The input is kept only when it is not
  below the double bound at gp+0xd58. Otherwise the float at gp+0x964 replaces it. The value is kept when it is not
  above the double bound at gp+0xd60, and otherwise the float at gp+0xa64 replaces it. The chosen value is
  multiplied by the float at gp+0x9d4. The product is truncated toward zero with trunc.w.s and masked with 0x3fff in v0. The
  14-bit mask fits the S5.8 name.

- `floatToS312_Clamp` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2214090
  **Inferred.** The 16-bit counterpart of floatToS58_Clamp. It uses the same two-comparison structure with
  double bounds at gp+0xc78 and gp+0xd68, floats at gp+0x9cc, gp+0x9e0 and gp+0x900, and the mask 0xffff in
  place of 0x3fff.

- `__glOdyim_TexImage1D` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2218bc0
  **Inferred.** Entry point for the one-dimensional texture image call. If the word at absolute 0x1030 is 1 it
  reports 0x502 through the routine in GOT slot gp-0x5130. The target in a0 must be 0xde0 (GL_TEXTURE_1D) or
  0x8063 (GL_PROXY_TEXTURE_1D). Anything else reports 0x500 through the same slot. Both accepted targets call the
  routine in GOT slot gp-0x7458 with a1 = 1, and the returned record's word at offset 0 is compared with 0x8010.
  The normal path sets t0 and t1 to 1 and t3 to 0, calls TexImage at 0x2218180,
  and then calls the gp-0x7458 routine again with a1 = 2. When the word at offset 0 is 0x8010, the word at +4
  must be 0x8016 and the word at +0x40 must be positive. In that case the value stored at 0xc(sp) is 1 minus the
  +0x40 word. Otherwise that slot holds 0.

- `__glOdyim_CopyTexImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22190c0
  **Inferred.** The copy-from-framebuffer form of the one-dimensional texture image entry. The word at 0x1030
  equal to 1 reports 0x502. The target must be 0xde0, and any other value reports 0x500. It calls the gp-0x7458
  routine with a1 = 1 and compares the returned record's word at offset 0 with 0x8010. For a matching record
  the word at +4 must be 0x8016 and the word at +0x40 must be positive, and then t3 is set to 1 minus the +0x40
  word. The normal path leaves t3 at 0. CopyTexImage at 0x2218640 is then called with t2 = 1 and that t3 value, and the gp-0x7458 routine is
  called once more with a1 = 2.

- `__glOdyim_TexSubImage1D` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2219350
  **Inferred.** Entry point for glTexSubImage1D. The word at 0x1030 equal to 1 gives 0x502, and any target other
  than 0xde0 gives 0x500 through GOT slot gp-0x5130. It takes the current texture from the gp-0x7458 routine with
  a1 = 1 and tests the record word at offset 0 against 0x8010, with the same +4 and +0x40 test as the image
  entries. The result goes to the outgoing stack word at 4(sp). TexSubImage at 0x2218850 is called with t3 = 1,
  t2 = 1, t0 = 0 and a3 = 0, and then the gp-0x7458 routine is called again with a1 = 2.

- `__glOdyim_CopyTexSubImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22197a0
  **Inferred.** The copy-from-framebuffer form of the one-dimensional sub-image entry. It repeats the 0x1030
  check (0x502) and the 0xde0-only target check (0x500). The gp-0x7458 routine is called with a1 = 1, and the
  record word at +0 is compared with 0x8010. Matching records pass through the +4 and +0x40 test. The resulting
  value is stored at 0xc(sp), and 1 is stored at 4(sp). CopyTexSubImage at 0x2218a50 is then called with a3 = 0,
  t0 = 0 and the caller's second argument, and the gp-0x7458 routine runs once more with a1 = 2.
- `__glOdysseyValidateMatrixMV` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2227de0
  **Inferred.** Copies the 4x4 float matrix that the pointer at context +0x94a8 names into a scratch array at context +0xb928, transposing it: scratch element k takes source element (k mod 4) * 4 + (k div 4). It then writes one packet to the absolute address 0x10000, in this order: a header word, the constant 0x9080bdc8, the sixteen scratch floats, and a second header. Each header is 0x34008000 with the count word at context +0xc574 packed into its low ten bits and into bits 23 and up. The count is set to 0x24 before the first header and zeroed before the second, so the two headers differ. No branch skips the packet.

- `__glOdysseyValidateMatrixNorm` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2227f50
  **Inferred.** Builds the normal matrix into the scratch array at context +0xb968 and sends it as a packet to the absolute address 0x10000, using the same header and constant as the MV routine. When the byte at matrix +0x13c is nonzero it first loads the routine pointer at context +0x4830 and calls through it. When bit 22 of the word at context +0x808 is clear it branches away to a second path at 0x22281a8, which this entry does not describe. On the main path, the float at gp+0xa6c is compared with the double at gp+0xb60; when they are equal the twelve floats at matrix +0x68 are copied unchanged, otherwise each is multiplied by the float at gp+0xa6c first. The twelve floats are read in the order offsets 0, 0x10, 0x20, 0x30, 4, 0x14, 0x24, 0x34, 8, 0x18, 0x28, 0x38. The packet's last four floats are read from context +0xb998 to +0xb9a4, and this routine never stores to those words.

- `QuickSortPairs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221c9b0
  **Inferred.** Sorts records in place by their float key, ascending, carrying each record's float value along. The record base is in a0 and the low and high record indices are in a1 and a2; each record is eight bytes, the key then the value. The pivot is the key of record floor((a1 + a2) / 2). The routine returns at once when a1 is not below a2. Otherwise it scans from both ends with c.le.s and c.lt.s comparisons against the pivot, swapping both the key and the value of the two records it stops on. Recursion happens only when the flag in a0 is nonzero, and the swap step sets that flag. It then calls itself on the range from a1 to the left stop minus one, and on the range from the right stop plus one to a2.
- `__glOdysseyValidateMatrixTex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22281f0
  **Inferred.** Sends one 4x4 single-precision matrix to the fixed port address 0x10000 as a packet. The routine adds 0x10000 to its base argument and loads a matrix pointer from the word at that base minus 0x6b30. It copies the sixteen floats into a scratch block at base minus 0x4658 through base minus 0x461c in transposed order (scratch word k takes source word 4 times (k mod 4) plus k div 4). It stores the count 0x14 at base minus 0x3a8c, then writes the packet to the port: the header word 0x34008014 built from that count, the word 0x9080bdc8, the sixteen scratch words in index order, and finally 0x34008000, the same header rebuilt after the count is cleared to zero.

- `__glOdysseyValidateDepthRangeNewXform` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2229560
  **Inferred.** Refreshes the depth-range transform on the new-transform path. If the state word at absolute 0x1030 equals 1, it reports 0x502 through the slot at gp minus 0x5130 and returns. Otherwise it compares the double at the argument base plus 0x20000 minus 0x75b8 with the constant at gp plus 0xb58 and returns early when they are equal. When they differ it passes that double through the routine at 0x2229060, then passes the double at base minus 0x75b0 through the same routine, and gives both results to the slot at gp minus 0x37e8. Bit 0x80 in the flag word at +0x814 of the current context pointer (loaded from absolute 0x1020) writes zeros at +0x70 and +0x74 of the pointer at +0x7d8, then single-precision values at +0x78 and +0x7c, sets bit 0x10 in the word at base minus 0x71a8 and writes 2 to the state word. Bit 0x40 does the same job for +0x60 through +0x6c, selecting between the constants at gp plus 0xb60 and gp plus 0xb58, and sets bit 0x40 in +0x814.

- `__glOdysseyPickColorMaterialProcs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2235220
  **Inferred.** Chooses the colour-tracking procedure for the current material state and stores its pointer. A zero byte at +0xde4 stores the slot at gp minus 0x44b8 to +0x48f8 and returns. Otherwise the word at +0x808 decides: without bit 0x80 the slot at gp minus 0x4bd8 goes to +0x48f8, with or without bit 0x40. With bit 0x80 set, the word at +0x668 is matched against 0x408, 0x404 and 0x405, storing the slot at gp minus 0x67b0, 0x67c0 or 0x67b8 to +0x48f8. The word at +0x66c is then matched against 0x1600, 0x1202, 0x1200, 0x1201 and 0x1602, and the slot at gp minus 0x67e8, 0x67e0, 0x67d8, 0x67d0 or 0x67c8 is stored at argument plus 0x1c558. Values that match no case return without a store.

- `__glOdysseySoftClipCopyMaterialTwoSided` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2234e60
  **Inferred.** Copies two blocks of twenty words each and clears one byte. The first block comes from argument base plus 0x18c8c and goes to the record at +0xd8; the second comes from base plus 0x18cdc and goes to +0x128. Each loop moves four words per pass for five passes. The byte at +0x198 of the record is then set to zero in the return delay slot. The routine makes no calls.

- `__glOdysseySendShadowVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22339c0
  **Inferred.** Dispatches one vertex on a ten-bit mode. The mode is the low ten bits of the word at array base plus 0x100 plus index times four, and the vertex element is at base plus index times 16. Mode 0 passes two integers from element offsets 0x300 and 0x304. Mode 1 passes two floats from 0x300 and 0x304. Mode 2 passes three integers from 0x300 to 0x308, mode 3 three floats from 0x300 to 0x308, mode 4 four integers from 0x300 to 0x30c, and mode 5 four floats from 0x300 to 0x30c. Each mode calls its routine through a pointer table at the first argument plus 0x1ad8, at offsets 0xa70, 0xa60, 0xab0, 0xaa0, 0xaf0 and 0xae0 in that order. Any other mode calls the slot at gp minus 0x678 with the pointer at gp minus 0x7eb8 plus 0x21d0 and the mode as the second argument.

- `__glOdyim_SoftScratchColor3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22378a0
  **Inferred.** Takes one pointer and forwards it. The argument is saved in a callee-saved register, the slot at gp minus 0xb18 is called with the original argument, and then the slot at gp minus 0x5318 is called with the same pointer restored.

- `__glOdyim_SoftScratchColor3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22378f0
  **Inferred.** Forwards three single-precision arguments in f12, f13 and f14. The first call goes to the slot at gp minus 0xb08 with the arguments as received. The f12 value is kept in f31 and passed again to the slot at gp minus 0x5310, with f13 and f14 reloaded from the frame.

- `__glOdyim_SoftScratchColor3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237950
  **Inferred.** A pointer-argument pass-through: it calls the slot at gp minus 0xaf8 and then the slot at gp minus 0x5308 with the same argument, which it keeps in the frame across the first call.

- `__glOdyim_SoftScratchColor3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22379a0
  **Inferred.** Passes three integer arguments (a0, a1 and a2) through two calls. The slot at gp minus 0xae8 receives all three unchanged. The slot at gp minus 0x5300 receives them again, with a1 and a2 reloaded from the frame.

- `__glOdyim_SoftScratchColor3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237a00
  **Inferred.** Single-pointer forwarder that calls the slot at gp minus 0xad8 and then the slot at gp minus 0x52f8 with the argument saved across the first call.

- `__glOdyim_SoftScratchColor3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237a50
  **Inferred.** Forwards a0, a1 and a2 to the slot at gp minus 0xac8, then sends the same three values to the slot at gp minus 0x52e0. The second call reloads a1 and a2 from the frame and takes a0 from the saved copy.

- `__glOdyim_SoftScratchColor3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237ab0
  **Inferred.** Calls the slot at gp minus 0xab8 with its pointer argument, then calls the slot at gp minus 0x52d8 with that same pointer.

- `__glOdyim_SoftScratchColor3ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237b00
  **Inferred.** Three-argument forwarder (a0, a1, a2): the slot at gp minus 0xaa8 runs first, and the slot at gp minus 0x5340 runs second with the saved a0 and the reloaded a1 and a2.
- `__glOdyim_SoftScratchColor3ubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237b60
  **Inferred.** Passes its four argument registers unchanged to `__glOdyim_ScratchColor3ubv`, after saving a0 in s8. The second call, to `__glim_Color3ubv`, gets that saved a0 as its only restored argument, and the routine returns the v0 that call produced.

- `__glOdyim_SoftScratchColor3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237bb0
  **Inferred.** Saves a0 in s8 and a1, a2 in the frame across `__glOdyim_ScratchColor3ui`; a3 is not saved, so `__glim_Color3ui` gets a0 to a2 back and a3 undefined. Returns the v0 of the second call.

- `__glOdyim_SoftScratchColor3uiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237c10
  **Inferred.** Runs `__glOdyim_ScratchColor3uiv` on the incoming registers first. Afterwards it puts the s8 copy of a0 back and calls `__glim_Color3uiv`; no other register is restored, so that call sees whatever the scratch routine left in a1 to a3.

- `__glOdyim_SoftScratchColor3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237c60
  **Inferred.** Spills a1 and a2 to the frame and keeps a0 in s8 for the scratch call `__glOdyim_ScratchColor3us`. `__glim_Color3us` then receives a0 to a2 back and returns its v0.

- `__glOdyim_SoftScratchColor3usv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237cc0
  **Inferred.** Two calls in order: `__glOdyim_ScratchColor3usv` with the entry registers, then `__glim_Color3usv`. The entry a0 is kept in s8 so it can be passed again, and the routine hands back `__glim_Color3usv`'s v0.

- `__glOdyim_SoftScratchColor4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237d10
  **Inferred.** Keeps a0 in s8 and spills a1 to a3 to the frame across `__glOdyim_ScratchColor4b`; all four come back for `__glim_Color4b`, and that call's result is returned.

- `__glOdyim_SoftScratchColor4bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237d80
  **Inferred.** The first call goes to `__glOdyim_ScratchColor4bv` with a0 through a3 as they arrived. For the second call the saved a0 goes back into a0 and nothing else is reloaded; the return value of `__glim_Color4bv` is what the wrapper returns.

- `__glOdyim_SoftScratchColor4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237dd0
  **Inferred.** Copies f12 into f31 and spills f13 to f15 to the frame, then calls `__glOdyim_ScratchColor4d`. `__glim_Color4d` is called after the four doubles are reloaded, with f12 coming back from f31; the integer argument registers are not restored.

- `__glOdyim_SoftScratchColor4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237e40
  **Inferred.** Calls `__glOdyim_ScratchColor4dv`, then `__glim_Color4dv` with the pointer in a0 restored from s8. The function returns v0 from the second callee.

- `__glOdyim_SoftScratchColor4f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237e90
  **Inferred.** Four floating-point arguments are preserved here: f12 through a copy in f31, and f13 to f15 from the frame. Both calls share them, and the routine returns `__glim_Color4f`'s v0.

- `__glOdyim_SoftScratchColor4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237f00
  **Inferred.** `__glOdyim_ScratchColor4fv` runs first with the entry arguments. A copy of a0 is then placed back in a0 for `__glim_Color4fv`, which is the call whose result the routine returns.

- `__glOdyim_SoftScratchColor4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237f50
  **Inferred.** Holds a0 in s8 and spills a1 to a3 to the frame around `__glOdyim_ScratchColor4i`; all four go back into place for `__glim_Color4i`.

- `__glOdyim_SoftScratchColor4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2237fc0
  **Inferred.** Keeps a0 in s8 across the call to `__glOdyim_ScratchColor4iv` and passes it on to `__glim_Color4iv` afterwards. Only that pointer is restored; a1 through a3 are not.

- `__glOdyim_SoftScratchColor4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238010
  **Inferred.** Calls `__glOdyim_ScratchColor4s`, then `__glim_Color4s` with a0 taken from s8 and a1 to a3 reloaded from the frame. Returns the v0 of the second call.

- `__glOdyim_SoftScratchColor4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238080
  **Inferred.** Saves nothing beyond a0. It calls `__glOdyim_ScratchColor4sv` and then `__glim_Color4sv`, returning the latter's v0.

- `__glOdyim_SoftScratchColor4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22380d0
  **Inferred.** a0 is parked in s8 and a1 to a3 are spilled to the frame around `__glOdyim_ScratchColor4ub`, and `__glim_Color4ub` gets all four back. Its result becomes the wrapper's result.

- `__glOdyim_SoftScratchColor4ubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238140
  **Inferred.** Sends the entry registers to `__glOdyim_ScratchColor4ubv`, then calls `__glim_Color4ubv` with the pointer from a0 that it had parked in s8. The result of the second call is returned unchanged.

- `__glOdyim_SoftScratchColor4ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238190
  **Inferred.** `__glOdyim_ScratchColor4ui` goes first. Afterwards a0 comes back from s8 and a1 to a3 from the frame, and `__glim_Color4ui` is called, with its v0 returned.

- `__glOdyim_SoftScratchColor4uiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238200
  **Inferred.** Scratch routine first, `__glim` entry second. Only a0 survives into the second call, through s8, and the v0 from `__glim_Color4uiv` is the return value.

- `__glOdyim_SoftScratchColor4us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238250
  **Inferred.** Before the `__glOdyim_ScratchColor4us` call it moves a0 into s8 and spills a1 to a3; `__glim_Color4us` is then called with all four restored.

- `__glOdyim_SoftScratchColor4usv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22382c0
  **Inferred.** Its body is two calls: `__glOdyim_ScratchColor4usv` with a0 to a3 unchanged, then `__glim_Color4usv` with a0 reloaded from s8. The routine returns that second call's v0.

- `__glOdyim_SoftScratchIndexd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238310
  **Inferred.** Stores the double argument from f12 in f31 before calling `__glOdyim_ScratchIndexd`, then restores it into f12 for `__glim_Indexd`. Integer argument registers are not restored.

- `__glOdyim_SoftScratchIndexdv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238360
  **Inferred.** Calls `__glOdyim_ScratchIndexdv` with the entry registers, then calls `__glim_Indexdv` with a0 restored from s8 and returns that call's v0.

- `__glOdyim_SoftScratchIndexf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22383b0
  **Inferred.** Keeps the single-precision argument in f31 across `__glOdyim_ScratchIndexf` and copies it back into f12 for `__glim_Indexf`. The return value is that call's v0 and f0.

- `__glOdyim_SoftScratchIndexfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238400
  **Inferred.** Starts by handing the entry registers to `__glOdyim_ScratchIndexfv`. When that returns, the wrapper restores a0 from s8, calls `__glim_Indexfv`, and returns the value of that call.

- `__glOdyim_SoftScratchIndexi` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238450
  **Inferred.** The entry registers go to `__glOdyim_ScratchIndexi` first. The routine then keeps a0 across that call and calls `__glim_Indexi` with it; the other argument registers hold whatever the scratch call left.

- `__glOdyim_SoftScratchIndexiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22384a0
  **Inferred.** Wraps `__glim_Indexiv`: the scratch routine `__glOdyim_ScratchIndexiv` runs before it, and a0 is the only argument carried across the gap in s8.

- `__glOdyim_SoftScratchIndexs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22384f0
  **Inferred.** Routes through `__glOdyim_ScratchIndexs` and then `__glim_Indexs`. Only the first argument is kept, and the wrapper returns v0 from the second call.

- `__glOdyim_SoftScratchIndexsv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238540
  **Inferred.** Brackets `__glim_Indexsv` with a call to `__glOdyim_ScratchIndexsv`. The pointer in a0 is kept in s8 across the scratch call, and v0 from `__glim_Indexsv` is the result.

- `__glOdyim_SoftScratchIndexub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238590
  **Inferred.** A call to `__glOdyim_ScratchIndexub` comes first, with a0 kept in s8, and a call to `__glim_Indexub` follows with that a0 restored. Its v0 is returned.

- `__glOdyim_SoftScratchIndexubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22385e0
  **Inferred.** Dispatches to `__glOdyim_ScratchIndexubv` first and to `__glim_Indexubv` second. Only a0 is preserved between them through s8, and the routine returns the second callee's v0.

- `__glOdyim_SoftGetDoublev` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238630
  **Inferred.** The value in a0 is compared with five constants, 0xb00, 0xb01, 0xb02, 0xb03 and 0xb43. Each of those five branches to a call of `__glim_GetDoublev` with a0 and a1 passed through. Any other value calls `__glOdyim_GetDoublev` with a0 and a1 passed through and the constants 0xb02, 0xb03 and 0xb43 in a2, a3 and a4. The wrapper returns the v0 of whichever call it made.

- `__glOdyim_SoftGetFloatv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22386b0
  **Inferred.** Matches a0 against 0xb00, 0xb01, 0xb02, 0xb03 and 0xb43, and forwards any of them to `__glim_GetFloatv` with a0 and a1. Everything else goes to `__glOdyim_GetFloatv` with a0, a1 and the three constants 0xb02, 0xb03 and 0xb43 in a2 to a4.

- `__glOdyim_SoftGetIntegerv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238730
  **Inferred.** Only the five values 0xb00, 0xb01, 0xb02, 0xb03 and 0xb43 in a0 are sent on to `__glim_GetIntegerv`, which gets a0 and a1 back. Other values are sent to `__glOdyim_GetIntegerv` with the constants 0xb02, 0xb03 and 0xb43 added in a2 to a4.

- `__glOdyim_SoftGetBooleanv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22387b0
  **Inferred.** A compare chain on a0 against 0xb00, 0xb01, 0xb02, 0xb03 and 0xb43 selects `__glim_GetBooleanv`, which receives a0 and a1 unchanged. Any other a0 calls `__glOdyim_GetBooleanv` with a0 and a1 plus 0xb02, 0xb03 and 0xb43 in a2 to a4, and the wrapper returns that call's v0.

- `__glOdyim_SoftGetMaterialfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238830
  **Inferred.** If the word at absolute 0x1030 is 1, it calls `__glSetError` with 0x502 and returns. Otherwise a0 picks a record: 0x404 uses the dword at absolute 0x1020 plus 0x18c8c, 0x405 uses that dword plus 0x18cdc, and any other face calls `__glSetError` with 0x500 and stores nothing. For a1 = 0x1603 it copies three floats from record offsets 0x44, 0x4c and 0x48 into a2 at 0, 4 and 8. The pname 0x1601 copies one float from 0x40, 0x1600 copies four from 0x30 to 0x3c, 0x1200 four from 0x00 to 0x0c, 0x1201 four from 0x10 to 0x1c, and 0x1202 four from 0x20 to 0x2c, all into a2 starting at 0. Successful copies return 1, and any other pname reports 0x500 through `__glSetError`.

- `__glDlistBlockStateInit` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239320
  **Inferred.** Fills in the record at a5: a1 goes in as a word at +0, zero as a word at +4, -1 as a dword at +8, and a2, a3 and a4 as dwords at +0x10, +0x18 and +0x20. It then calls the function pointer in the first dword of a0 with a0, the constant 4, a2 and a3, and keeps the result as a dword at +0x28. A zero result returns 0. A nonzero one clears the first word of the returned block, the word at +0x48, the dword at +0x40 and the word at +0x30, and returns 1.

- `__glDlistBlockStateFree` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22393c0
  **Inferred.** Reads the words at +0 and +4 of the record at a1, multiplies them, and passes the negated product in a0 to the function pointer at +0x10 along with the dword at +0x20 as a1. If that returns -1 the routine returns 0. Otherwise it calls the function pointer at +0x18 of the object in a0 twice, first with the dword at +0x28 and then with the dword at +0x40, and returns 1.

- `block_grow_region` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239470
  **Inferred.** The new count is in a0 and the record is in a1. It multiplies the word at +0 by a0 minus the word at +4 and passes that product, the dword at +0x20, a2 and a3 to the function pointer at +0x10; a -1 result returns 0. Otherwise it calls the function pointer at +0x10 of the dword at absolute 0x1020 with that object, the dword at +0x28, a byte count of 4 times the word count ceil(a0 / 32), and -1, and stores the result at +0x28; a zero result returns 0. A second call of the same shape uses the dword at +0x40 and stores its result there. Words from the old count up to the new count are zeroed in both the +0x40 and the +0x28 arrays. Finally the word at +4 becomes a0, the word at +0x30 grows by a0 minus the old count, and if the dword at +8 is -1 it takes the first call's result. The routine returns 1.
- `__glDlistPreallocBlocks` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239660
  **Inferred.** Returns 1 when the word at +0x30 of the record in a0 is at least the request in a1. When it is short, the routine calls the code at 0x2239470 with a0 set to the request plus the word at +4 minus the word at +0x30, and a1 set to the record, and returns what that call returns.

- `__glDlistFreeBlock` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239860
  **Inferred.** Clears the allocation bit for the block at address a1 and counts that block as free. The index is (a1 minus the dword at +8) divided by the word at +0, and a trap fires when that word is zero. The bit is index modulo 32, cleared in the bitmap word at the pointer +0x28 plus four times index shifted right by five, and the word at +0x30 goes up by one.

- `__glDlistIsBlock` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239b70
  **Inferred.** Returns 1 when a1 lies in the range that starts at the dword at +8 and runs for the product of the word at +0 and the word at +4, and 0 otherwise. The product is zero-extended from 32 bits. An address below the start returns 0 before the product is formed.

- `__glDlistTransientBlock` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239bc0
  **Inferred.** Marks the block at a1 in the transient bitmap at the pointer +0x40. The index comes from the same division as the free path, with a trap on a zero word at +0. The bit is set in the word at +0x40 plus four times index shifted right by five, and the word at +0x48 is incremented once.

- `__glDlistFreeTransient` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239c10
  **Inferred.** Releases the transient blocks of the record. For each bitmap word, counted from the word at +4 rounded up to 32 bits, it reads the transient word at +0x40, removes its bits from the allocation word at +0x28, and stores zero back to the transient word. Afterwards the transient count at +0x48 is added to the free count at +0x30 and +0x48 is zeroed.

- `__glDlistHeapInit` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239ca0
  **Inferred.** Zeroes the dwords at +0 and +8 of the heap record. It then takes the object whose pointer is stored at gp-0x7ea8, stores a zero dword at its offset 0x10d8, overwrites the first word there with the float at gp+0x8f8, and zeroes the dword at 0x10e0. The element at 0x10d8 is inserted with `__glDlistHeapInsert` at 0x2239de0, and the routine returns 1.

- `__glDlistHeapFree` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239d00
  **Inferred.** Releases the storage array of the heap record. A nonzero dword at +8 is passed as the single argument to the routine in the GOT slot at gp-0x628, with the record pointer kept on the stack across that call. The dword at +8 is then zeroed.

- `__glDlistHeapQueryMin` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239d50
  **Inferred.** Returns 0 when the word at +0x0 of the heap is exactly 1. Otherwise it loads the dword at +0x8, which is a pointer P, and returns the dword at P+0x8.

- `__glDlistHeapRemoveMin` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239d80
  **Inferred.** Returns 0 when the word at +0 of the heap is exactly 1. Otherwise it reads the dword at P+8, where P is the dword at +8 of the heap, passes that value as a1 to `__glDlistHeapRemove` at 0x2239ee0 with the heap as a0, and returns the same value.

- `__glDlistHeapInsert` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239de0
  **Inferred.** Appends the element pointer in a1 to the heap and returns 1, or returns 0 when a grow fails. The word at +0 is the element count, the word at +4 the capacity, and the dword at +8 the array of element pointers. With capacity zero it allocates 0x100 bytes through the GOT slot at gp-0x618 and sets the capacity to 0x20 without checking the result. When the count plus one equals the capacity, it reallocates through the GOT slot at gp-0x620 to (capacity plus 0x20) times 8 bytes, stores the new pointer at +8 before testing it, and returns 0 on NULL. The element goes at index count with that index written to its word at +4, the count is incremented, and the routine at 0x223a090 runs with the old count as its index.

- `__glDlistHeapRemove` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239ee0
  **Inferred.** Removes the element at a1 from the heap. The last array entry moves into the removed element's slot, the count at +0 drops by one, and the removed element's index word at +4 becomes zero. The moved element's index word takes the removed slot's index. If the removed element's float key is less than the moved element's key, the routine calls downheap at 0x223a170 with that index; otherwise it calls upheap at 0x223a090.

- `__glDlistHeapPriorityChanged` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239f80
  **Inferred.** Re-sorts the heap after the key of the element at a1 changed. It reads the index word at +4 of that element and calls upheap at 0x223a090 with a0 set to the heap and a1 set to that index. It then calls downheap at 0x223a170 with the same two arguments. Both calls always run.

- `__glShareDlist` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223a250
  **Inferred.** Makes the context in a0 share the state of the context in a1. It copies the dwords at +0x14c8 and +0x14d0 from a1 into a0. It then increments the word at offset 0 of the object that +0x14c8 points to and the word at offset 0xc of the object that +0x14d0 points to.

- `__glInitDlistState` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223a280
  **Inferred.** Clears the words at +0x1538 and +0x1540 of the context in a0 and copies the dwords at +0, +0x10 and +0x18 into +0x1570, +0x1578 and +0x1580. If the pointer at +0x14c8 is zero, it calls the routine at 0x223c8f0 with a0 as the context and stores the result at +0x14c8. If the pointer at +0x14d0 is zero, it calls the routine in the GOT slot at gp-0x4888 with a0 as the context and a1 zero, and stores the result at +0x14d0.

- `__glFreeDlistState` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223a320
  **Inferred.** Drops the context's references to its shared state. It decrements the word at +0xc of the object at +0x14d0 and, when that word reaches zero, calls the routine in the GOT slot at gp-0x4878 with the context. It then zeroes +0x14d0, decrements the word at offset 0 of the object at +0x14c8, and when that word reaches zero calls the routine at 0x223c9a0 with the context. Last, it zeroes +0x14c8 and, when the value at +0x1568 is nonzero, calls through the pointer at +0x4dc0 with that value as a0.

- `__glce_EndList` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223a570
  **Inferred.** Reads the current-context pointer from absolute address 0x1020 and copies the dword at its offset 0x3860 into absolute address 0x1098. The copy happens in the delay slot of the call, so it precedes the call. The routine then calls through the GOT slot at gp-0x5e0 with the caller's arguments and returns its result.

- `__glDlistAllocOp2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223b310
  **Inferred.** Allocates a record of (a1 plus 0x18) bytes through the allocator pointer at +0x4dc8 of the context in a0, passing the dword at +0x1568 as the first argument. On success it clears the byte at +0x16 and the dwords at +0 and +8 of the new record, stores the low 32 bits of a1 at +0x10, and returns the record. When the allocator returns NULL, it reports 0x505 through the routine in the GOT slot at gp-0x5130 and returns 0.

- `__glGenericDlistOptimizer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223b490
  **Inferred.** Forwards its arguments unchanged to `__glDlistOptimizeMaterial` at 0x223bfd0 and returns that routine's result.

- `__glle_CallList` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223a820
  **Inferred.** Calls `DoCallList` at 0x223a6f0 with the word at [a0] as its argument, then returns a0 plus 8.

- `__glim_CallList` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223aa40
  **Inferred.** Passes the list in a0 to `DoCallList` at 0x223a6f0 and, on return, clears the word at +0x1538 of the current context, whose pointer is read from absolute address 0x1020. A zero list instead reports 0x501 through the routine in the GOT slot at gp-0x5130 and returns without calling `DoCallList`.
- `__gllc_Begin` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223b4d0
  **Inferred.** Appends a begin record through __glDlistAppendOp. The context pointer comes from absolute address 0x1020, and __glDlistAllocOp2 is called with it and a1 zero; a null node returns at once. The mode in a0 is kept, and a mode of 10 or more appends a deferred record with tag 0x3f3 whose handler is the one at GOT offset -0x62e0 (__glle_InvalidEnum). Modes 0 to 9 index a ten-entry jump table at 0x2332268, and each case sets its own tag in 0x3e8 to 0x3f1 plus a GOT handler. The shared tail ORs 0x80 into the word at context +0x154c and passes that value and the handler to __glDlistAppendOp.

- `__glle_Begin_LineLoop` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223b600
  **Inferred.** Fetches the function pointer stored at absolute address 0x10c8 and calls it with a0 set to 2, which is GL_LINE_LOOP. The context pointer that arrived in a0 is saved in s8 and handed back in v0.

- `__glle_Begin_LineStrip` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223b650
  **Inferred.** Mode 3 (GL_LINE_STRIP) goes out through the pointer at absolute 0x10c8. The incoming a0 is kept in s8 across the call and comes back as the return value.

- `__glle_Begin_Lines` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223b6a0
  **Inferred.** This is a one-line forwarder for mode 1, GL_LINES: a0 is loaded with 1 in the delay slot, and the call target is the pointer at absolute 0x10c8. Returns the saved first argument.

- `__glle_Begin_Points` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223b6f0
  **Inferred.** Points mode, value 0 (GL_POINTS), is the argument. The call goes through the slot at absolute 0x10c8, and the first argument of the entry is the value returned.

- `__glle_Begin_Polygon` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223b740
  **Inferred.** Passes 9 (GL_POLYGON) to the handler read from absolute 0x10c8. The entry pointer is kept in s8 and returned after the call.

- `__glle_Begin_TriangleStrip` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223b790
  **Inferred.** Triangle strip, mode 5, is sent to the absolute-0x10c8 handler; the other arguments a1 to a3 pass through untouched and the original a0 is returned.

- `__glle_Begin_TriangleFan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223b7e0
  **Inferred.** The fan mode 6 is loaded into a0 and dispatched through the pointer at absolute 0x10c8. Arguments a1 to a3 are not touched and the entry's a0 becomes the return value.

- `__glle_Begin_Triangles` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223b830
  **Inferred.** Mode 4 (GL_TRIANGLES) is dispatched via the absolute 0x10c8 slot. The routine is a fixed-mode trampoline with no checks of its own.

- `__glle_Begin_QuadStrip` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223b880
  **Inferred.** Quad strip, mode 8, goes to the handler at absolute 0x10c8. Once the call returns the routine gives back the context it was passed.

- `__glle_Begin_Quads` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223b8d0
  **Inferred.** GL_QUADS, mode 7, is the value placed in a0 before the indirect call through the pointer at absolute 0x10c8. The original a0 is preserved and returned.

- `__gllc_InvalidValue` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223b920
  **Inferred.** Calls __glDlistAllocOp2 with a1 zero. When the node comes back non-null, the routine stores tag 0x3f2 as a halfword at node+0x14, loads the handler for __glle_InvalidValue from GOT offset -0x62e8 into a2, and appends the node with __glDlistAppendOp.

- `__gllc_InvalidEnum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223b980
  **Inferred.** The deferred invalid-enum record. A null allocation returns; otherwise the node gets tag 0x3f3 and the handler from GOT offset -0x62e0 before __glDlistAppendOp adds it to the list.

- `__gllc_InvalidOperation` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223b9e0
  **Inferred.** Queues an invalid-operation record: tag 0x3f4 goes at node+0x14, the __glle_InvalidOperation handler is loaded into a2, and the append happens only if the allocator produced a node.

- `__gllc_TableTooLarge` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223ba40
  **Inferred.** Allocates a node, and if that works writes tag 0x3f7 at node+0x14 and appends it with the __glle_TableTooLarge handler. A zero result from the allocator ends the routine with no record.

- `__gllc_UnimplementedExtension` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223baa0
  **Inferred.** Unlike the other deferred-error stubs, this one takes its allocation context from absolute 0x1020 rather than from a0. A non-null node gets tag 0x3f5, then the append uses the handler at GOT offset -0x62c8.

- `__gllc_Error` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223bb10
  **Inferred.** Dispatches on the error token in a1. 0x501 calls __gllc_InvalidValue, 0x500 calls __gllc_InvalidEnum, 0x502 calls __gllc_InvalidOperation, and 0x8031 calls __gllc_TableTooLarge. Any other token returns without a call.

- `__glle_InvalidValue` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223bbb0
  **Inferred.** Reports GL_INVALID_VALUE: it calls the pointer at GOT offset -0x5130, which resolves to __glSetError, with a0 set to 0x501. The first argument is parked in fp and returned as the result.

- `__glle_InvalidEnum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223bc00
  **Inferred.** The enum error reporter. The code 0x500 goes through the GOT slot for __glSetError, and the entry's a0 survives in fp to become v0.

- `__glle_InvalidOperation` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223bc50
  **Inferred.** Operation error, code 0x502, handed to __glSetError through the GOT slot at -0x5130; a1 to a3 stay as they arrived.

- `__glle_TableTooLarge` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223bca0
  **Inferred.** Table-size error. The routine ORs 0x8031 into a0 in the delay slot, calls __glSetError through GOT -0x5130, and returns its first argument.

- `__glle_UnimplementedExtension` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223bcf0
  **Inferred.** Reports code 0x502 through __glSetError (GOT -0x5130); a1 to a3 are left as they arrived.

- `__glDisposeDlist` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223c880
  **Inferred.** Works on the object at a1. The word at offset 0 is read, decremented and stored back. When the count reaches zero the function pointer at offset 8 of the object is called with a0 and a1 unchanged.

- `__glDlistNewArray` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223c8f0
  **Inferred.** Allocates a 32-byte block through the allocator pointer at context +0x1570, passing the context and size 0x20. A null result reports 0x505 through __glSetError and returns zero. Otherwise the first word of the block is set to 1, __glDlistHeapInit is called on block+8, and the optional hook at context +0x14d8 receives the context and the block. The block is returned.

- `__glDlistFreeArray` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223c9a0
  **Inferred.** Works on the block at a1. The optional hook at context +0x14e0 runs first when present, receiving the context and the block. __glDlistHeapFree then gets block+8, and the free routine at context +0x1580 is called last with the context and block; its result is the return value.

- `__glim_IsList` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223ca10
  **Inferred.** Takes a list name in a0 and passes it on as a2 after the begin-state check. If the word at absolute 0x1030 is 1, it reports 0x502 through __glSetError and returns 0. Otherwise it calls the GOT entry at -0x4838 with the context from absolute 0x1020, the word at context +0x14d0 and the name, and returns that result truncated to a byte.

- `__glim_GenLists` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223ca80
  **Inferred.** Takes a count in a0. With the word at 0x1030 equal to 1 it reports 0x502. A negative count reports 0x501 and a zero count returns 0. Otherwise the GOT entry at -0x4848 is called with the context, the word at context +0x14d0 and the count, and its result is returned unchanged.

- `__glim_ListBase` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223cb30
  **Inferred.** Stores the argument in the word at context +0x8c4 when the word at absolute 0x1030 is not 1. A 1 there sends the call through __glSetError with 0x502 and leaves the base unchanged.

- `__glim_DeleteLists` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223cb90
  **Inferred.** Takes a first name in a0 and a count in a1. The word at 0x1030 equal to 1 reports 0x502, a negative count reports 0x501, and a count of zero does nothing. Otherwise the GOT entry at -0x4840 is called with the context, the word at context +0x14d0, the first name and the count.

- `__glsplc_InvalidValue` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223cc10
  **Inferred.** Loads the context from absolute 0x1020, takes the function pointer at context +0x15a0, and calls it with 0x501 as a0.

- `__glsplc_InvalidEnum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223cc50
  **Inferred.** The context is read from absolute 0x1020, the pointer at +0x15a0 is called, and 0x500 is the code it receives.

- `__glsplc_InvalidOperation` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223cc90
  **Inferred.** The routine reports code 0x502 by calling the context pointer at +0x15a0, which is looked up through the context word at absolute 0x1020.

- `__glsplc_Error` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223ccd0
  **Inferred.** Calls the function pointer at context +0x15a0 with a0 to a3 exactly as they arrived; the delay slot sets nothing.

- `__glsplc_UnimplementedExtension` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223cd10
  **Inferred.** A call through the context pointer at +0x15a0 with a0 equal to 0x502; a1 to a3 are left as they arrived.

- `__glsplc_CallList` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223cd50
  **Inferred.** Stores a list number in a new 8-byte node. A zero list number calls __glsplc_InvalidEnum and returns its result. Otherwise __glSPDlalloc is asked for 8 bytes with a1 zero, and a non-null node gets the saved a0 as a 32-bit word at offset 0, then the node is returned.

- `__glsplc_CallLists` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223cdc0
  **Inferred.** Packs a run of list numbers into one allocation. A negative count goes to __glsplc_InvalidValue. Types 0x1400 to 0x1409 index a byte table whose pointer is loaded from GOT offset -0x898, and the byte found is multiplied by the count. Types outside that range use the negated count, so a positive count reports __glsplc_InvalidEnum. The block is sized as the rounded-up payload plus 8, with the count at offset 0, the type at offset 4, and the copied list data from offset 8 onward.
- `__glsplc_Bitmap` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223ced0
  **Inferred.** Compiles a bitmap into a display-list record of opcode 4. A negative width in a0 or height in a1
  goes to `__glsplc_InvalidValue` at 0x223cc10. The row size is (width + 7) >> 3 bytes, the total is rounded up to
  a multiple of 8, and `__glSPDlalloc` is asked for that size plus 0x20. The record then holds width at +0, height
  at +4, the floats f14 to f17 at +8, +0xc, +0x10 and +0x14, and the padded size at +0x18. `__glFillImage` at
  0x228ef20 copies the bitmap from the pointer that arrived in a6, passed on as its a5, into the data area at +0x20
  with format 0x1900 and type 0x1a00.

- `__glsplc_PolygonStipple` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223cff0
  **Inferred.** Compiles a 32 by 32 polygon stipple into a display-list record of opcode 0x65. It asks
  `__glImageSize` for the size of that image in format 0x1900 and type 0x1a00, then allocates the result through
  `__glSPDlalloc`. When the allocation returns zero the routine returns with nothing recorded. Otherwise it calls
  `__glFillImage` with the context from 0x1020, the same 32 by 32 size, format and type, the stipple pointer that
  arrived in a0 as the source, and the new record as the destination.

- `__glsplc_TexSubImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223e4a0
  **Inferred.** Compiles a one-dimensional sub-texture update of opcode 0xc1. A negative width in a3 goes to
  `__glsplc_InvalidValue`. Next it calls `FormatAndType` at 0x223d920 with the format from a4 and the type from a5,
  and returns without recording when that call gives zero. Otherwise `__glImageSize` sizes one row of the width,
  and `__glSPDlalloc` allocates the padded size plus 0x20. The record keeps the first argument at +0, the second at
  +4, the third at +8, the width at +0xc, the format at +0x10, the type at +0x14 and the padded size at +0x18. A
  non-null pixel pointer from a6, with a positive padded size, sends the pixels to `__glFillImage` for the data at
  +0x20.

- `__glsplc_TexImage1D` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223e170
  **Inferred.** A target of 0x8063 skips recording. It loads the dispatch table pointer at context +0x1ad8, takes
  the routine at +0x160 from it, and calls that with every argument unchanged. For any other target, a negative
  border in a4, a border of 2 or more, or a negative width in a3 goes to `__glsplc_InvalidValue`. Otherwise it runs
  `FormatAndType` on the format in a5 and the type in a6, and sizes one row with `__glImageSize`. It allocates the
  padded size plus 0x20 with opcode 0x6c. It stores the first seven arguments, the target through the type, at +0,
  +4, +8, +0xc, +0x10, +0x14 and +0x18, and the padded size at +0x1c. A non-null pixel pointer from a7, with a positive
  padded size, sends the pixels to `__glFillImage` for the data at +0x20.

- `__glsplc_DrawElements` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223f850
  **Inferred.** Replays glDrawElements through the immediate-mode entry points. A negative count in a1 goes to
  `__gllc_InvalidValue` at 0x223b920 with the context from 0x1020 as its argument. A mode in a0 of 10 or more, or a
  type in a2 other than 0x1401, 0x1403 or 0x1405, goes to `__gllc_InvalidEnum` at 0x223b980 the same way. Otherwise
  it calls glBegin with the mode, then glArrayElement once per index, reading the indices as bytes for 0x1401,
  halfwords for 0x1403 and words for 0x1405. A zero count skips the index loop, and the routine ends with glEnd.

- `__glsplc_DrawRangeElements` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223f9e0
  **Inferred.** When the end value in a2 is below the start value in a1, it calls `__gllc_InvalidValue` at
  0x223b920 with the context from 0x1020 and returns. Otherwise it calls `__glsplc_DrawElements` at 0x223f850 with
  the mode from a0, the count from a3, the type from a4 and the indices from a5. The range check is the only work
  the routine does itself.

- `__glSPExecuteDlist` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223fa40
  **Inferred.** Runs one display-list record through the interpreter. It loads the doubleword at +0x20 of the record
  in a1 as the first argument, passes a1, a2 and a3 through unchanged, and calls `__glSPInterpret` at 0x23181a4
  through a gp-relative slot. The interpreter's return value is the routine's return value.

- `__glSPDlistAddFree` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223fa80
  **Inferred.** Appends one 16-byte record to the array whose pointer is at context +0x15d8, with the count at
  +0x15e0. It calls the routine at context +0x1578 with the context, the old array pointer and a size of count
  times 16 plus 16. When that returns zero the routine returns and the context is unchanged. Otherwise it stores
  the second argument a1 at the new record's +0, the third argument a2 at its +8, and writes the new array pointer
  back to +0x15d8 and the incremented count to +0x15e0.

- `__glsplc_AddIlist` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223feb0
  **Inferred.** Appends a 16-byte record to the array at context +0x15e8, whose count is the word at +0x15f0. The
  first argument a0 goes to record +0 and the second argument a1 to record +8. The array is regrown through the
  routine at context +0x10, called with the context, the old array and count times 16 plus 16. The result is written
  into without a null test, and the new array pointer and the incremented count are stored back into the context.

- `__glSPFreeDlist` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223fb20
  **Inferred.** Frees the display-list record a1 for the context a0. When the word at +0x3c is nonzero it calls
  `__glSPDlistFreeSegments` at 0x223ff40 with the pointer at +0x18. It then calls the routine stored in the first
  doubleword of each 16-byte entry of the array at +0x40, passing that entry's second doubleword. Last, through the
  context's free slot at +0x1580, it releases the blocks at +0x40, +0x20 and +0x28 and then the record itself.

- `__glSPDlistFreeSegments` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x223ff40
  **Inferred.** Walks a chain of segments through their first doubleword. It calls the routine in the context slot
  at +0x1580 with the context and the current address. The doubleword at the current address is loaded into s0 in
  the delay slot of that call, so the next link is read before the callee runs. The walk repeats with the next link
  while it is nonzero. The first call receives the address it was passed.

- `__glDlistInitPageState` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22401a0
  **Inferred.** Allocates a 56-byte page state block. The allocator is the doubleword at the start of the table in
  a0, called with the table, size 0x38, a2 and a3. It returns zero when the allocation fails. Otherwise it clears
  the words at +4, +0x10, +0x14 and +0x18 and the doublewords at +8 and +0x20, stores a1 as a word at +0, and stores
  a2 and a3 as doublewords at +0x28 and +0x30.

- `__glDlistFreePageState` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2240230
  **Inferred.** Tears down the page state block a1 for the context a0. The routine at +0x28 of the block runs first,
  with the negated word at +0x10 as its argument. Then the context slot at +0x18 is called with the context and the
  pointer at block +0x20, and the same slot is called a second time with the context and the block itself.

- `__glDlistAllocPage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22402a0
  **Inferred.** Hands out a page from the page table at a0. When the doubleword at +8 is zero it calls `grow_region`
  at 0x223ff90 with a0 and 0x20, and returns zero if that returns negative. When the word at +0x14 is positive, it
  takes the head index from +0x1c, sets bit 0 of that index's 12-byte record at +0x20, moves the head to the record's
  +4 word, sets the new head record's +8 word to -1, decrements the count at +0x14, and returns the doubleword at +8
  plus the head index times the word at +0.

- `__glDlistFreePage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2240490
  **Inferred.** Returns the page at address a1 to the page table at a0. The page index is (a1 minus the doubleword at
  +8) divided by the word at +0, using a 64-bit divide that traps on zero. The 12-byte record at +0x20 plus 12 times
  the index loses bit 0 and gains bit 1 in its first word, its +4 word takes the value of the word at +0x4, and the
  count at +0x18 goes up by one. When the word at +8 of the record that the head word at +4 names is negative, the
  index is also stored at +0x1c.

- `__glDlistIsPage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2240560
  **Inferred.** Tests whether the address in a1 is a page start in the region of the state block a0. It returns 0
  when a1 is below the doubleword at +8, or when a1 is not below that doubleword plus the word at +0x10. Otherwise
  it returns 1 when a1 ANDed with the word at +0, minus one, is zero, and 0 when that masked value is nonzero.

- `__glMipsCopyDispatch` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22405b0
  **Inferred.** Copies 471 doublewords (0x1d7) from the block at a0 to the block at a1. Seven doublewords go first in
  a loop, then the remaining 464 in unrolled iterations of eight. The copy runs forward and does no overlap check.

Skipped (not read in the time budget): `__glsplc_Disable`, `__glsplc_Enable`, `__glSPDlistSpace`,
`__glSPDlistCompiler`, `grow_region`, `__glsplc_DrawPixels`, `FormatAndType`, `__glsplc_DrawArraysEXT`,
`__glsplc_ColorSubTable`, `__glsplc_ColorTableSGI`, `__glsplc_ConvolutionFilter1DEXT`,
`__glsplc_ConvolutionFilter2DEXT`, `__glsplc_SeparableFilter2DEXT`, `__glsplc_TexImage2D`,
`__glsplc_TexImage3DEXT`, `__glsplc_TexSubImage2DEXT`, `__glsplc_TexSubImage3DEXT`, `__glsplc_Map1d`,
`__glsplc_Map1f`, `__glsplc_Map2d`, `__glsplc_Map2f`, `__glsplc_DeformationMap3dSGIX`,
`__glsplc_DeformationMap3fSGIX`.
- `__glInitDefaultPixelMap` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22406b0
  **Inferred.** Allocates the storage for one default pixel-map record. The map name in a1 must lie in 0xc70 to 0xc79, and any other value reports 0x500 through `__glSetError`. The name selects a jump-table case: 0xc70 and 0xc71 zero the returned word as an integer, and the other eight names zero it as a float. Every case first calls the function pointer in the first word of the context with the context in a0 and 4 in a1. The returned pointer is stored at context +0x4d0 plus 16 times (name minus 0xc70), even when it is null. Only a non-null pointer gets the zeroed element and the count 1 at +0x4c8 plus the same stride.

- `__glim_PixelTransferi` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2241cc0
  **Inferred.** Forwards an integer pixel-transfer setting to the float entry point. The integer in a1 is moved into f13 and converted to single precision in the delay slot of the call. The call goes to `__glim_PixelTransferf` at 0x2241920 with the parameter name still in a0, and the routine returns after it without any check of its own.

- `__glPixelSetColorScales` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22407c0
  **Inferred.** Builds the 256-entry pixel-transfer scale tables held in the context. When the pointer at +0x9888 is null, the routine calls the context allocator with 1024 bytes for each of five tables at +0x9888, +0x9890, +0x9898, +0x98a0 and +0x98a8, with no null test on the results. It then loops over i from 0 to 255 in pairs. Table one gets i times the float at +0x99f0 over a constant at gp+0xa04, table two gets i times +0x99f4 over the same constant, table three gets i times +0x99f8 over it, and table four gets i times +0x9a18 over it. Table five gets i ANDed with the word at +0x99d8, converted to float. The byte at +0x98d8 is cleared last.

- `__glFreePixelState` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2240990
  **Inferred.** Releases the pixel state that `__glPixelSetColorScales` and the default-map routine allocate. It walks the ten records from +0x4d0 in 16-byte steps, and for each non-null pointer it calls the context release hook at +0x18 and then zeroes the slot. It frees the five scale tables at +0x9888 to +0x98a8 without a null test. A non-zero word at +0x98e0 leads to four releases at +0x98e0, +0x98e8, +0x98f0 and +0x98f8. A non-zero word at +0x9918 leads to four releases at +0x9918, +0x9920, +0x9928 and +0x9930. The pointer at +0x9908 is released when it is non-null. Last come five releases of context fields at +0x408, +0x460, +0x4b8, +0x4c0 and +0x5d0, again without a null test.

- `__glim_PixelZoom` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2241830
  **Inferred.** Sets the pixel zoom factors. A mode word at 0x1030 equal to 1 reports 0x502 through `__glSetError` and stores nothing. Otherwise the x factor in f12 and the y factor in f13 are each divided by the float at context +0xfc0. A positive factor gets the float at +0xf28 added before truncation toward zero, and a factor that is not positive gets it subtracted. Each truncated integer is converted back to float, multiplied by the +0xfc0 float and stored at +0x398 for x and +0x39c for y. On success the mode word becomes 2 and bit 4 is set in the context word at +0x4714.

- `__glim_DrawPixels` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22432e0
  **Inferred.** Dispatches glDrawPixels on the mode word at 0x1030. Mode 0 passes the context, width, height, format and type to `__glCheckDrawPixelArgs` at 0x2242960 and returns at once when that reports zero. Next it returns if the byte at context +0x274 is zero, and then reads the render mode at +0xdd4. Mode 0x1c01 (feedback) calls `__glFeedbackDrawPixels` with the context and +0x198. Mode 0x1c00 (render) calls the context hook at +0x4d30 with the context, width, height, format, type, pixels in a5 and zero in a6. Mode 2 calls the hook at +0x4748, re-enters `glDrawPixels` with the saved arguments and clears the mode word afterwards. Any other mode reports 0x502.

- `__glim_ReadPixels` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2243400
  **Inferred.** Dispatches glReadPixels on the mode word at 0x1030. Mode 0 hands width, height, format and type to `__glCheckReadPixelArgs` at 0x2242e20, and when that returns non-zero it calls the context hook at +0x4d40 with the context followed by x, y, width, height, format, type and pixels in a1 through a7. Mode 2 calls the hook at +0x4748, re-enters `glReadPixels` with the saved x, y, width, height, format, type and pixels, and then clears the mode word. Any other mode value reports 0x502 through `__glSetError`.

- `__glInitPacker3D` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2246c80
  **Inferred.** Sets up a three-dimensional pixel packer on top of `__glInitPacker` at 0x2246aa0. The routine passes its two arguments to that call unchanged and keeps the packer pointer in fp. It then multiplies the words at +0x70 and +0xa0 and stores the product at +0x78. That product is multiplied by the word at +0x98, and the result is added to the 64-bit field at +0x68.

- `__glSpanReduceRed` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2246cf0
  **Inferred.** Scales the red values of a span by a constant. The count is the word at +0xc8 of the span in a1, and the scale is the float at +0x9a20 of the context in a0. A count of zero or less returns at once. The source is the array at a2 with a 16-byte stride, and the results are written as packed 4-byte floats at a3. The count mod 4 elements are handled one at a time first, then the rest four at a time.

- `__glSpanModifyDepth` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2245960
  **Inferred.** Converts a run of depth values from the source array. The count is the word at +0xc4 of the span in a1. Each source float at a2 becomes bias plus value times scale, where the bias is the float at context +0x354 and the scale the float at +0x340. The result is clamped to the range from 0 up to the float at +0xf2c, and written as a 4-byte float at a3. The loop runs two values per pass, and when the count is odd one leftover value is done first.
- `__glSpanReduceGreen` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2246da0
  **Inferred.** Reads the green float at source offset 4 of each 16-byte RGBA pixel and writes it as a dense float run to the destination. Every green value is multiplied by the float at 0x9a24 from the first argument. The pixel count is the word at +0xc8 of the second argument, and the leftover pixels from the count mod 4 are handled before the four-pixel unrolled loop.

- `__glSpanReduceBlue` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2246e50
  **Inferred.** Walks the pixels the same way as the green reducer but takes the blue float at source offset 8. It scales that value with the word at 0x9a28 of the first argument and stores one float per pixel. The count comes from +0xc8 of the second argument.

- `__glSpanReduceAlpha` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2246f00
  **Inferred.** Pulls the alpha float at source offset 0xc and multiplies it by the constant at 0x9a2c of the first argument. Each product lands as a single float in the destination run. The loop bound is the word at +0xc8 of the second argument.

- `__glSpanReduceRGB` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2246fb0
  **Inferred.** Drops alpha and emits three floats per pixel from source offsets 0, 4 and 8. Red, green and blue are scaled by the words at 0x9a20, 0x9a24 and 0x9a28 of the first argument, and the output records sit 0xc bytes apart. The count is read from +0xc8 of the second argument.

- `__glSpanReduceBGR` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22470e0
  **Inferred.** Produces the same three-float records as the RGB reducer, but the scale constants sit in crossed positions. The first output is the offset-0 float times the word at 0x9a28, the middle output is the offset-4 float times 0x9a24, and the last is the offset-8 float times 0x9a20. Output stride is 0xc bytes and the count is +0xc8 of the second argument.

- `__glSpanReduceLuminance` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22474f0
  **Inferred.** Forms one float per pixel as a weighted sum of the colour floats, with weights 0x9a20 on offset 0, 0x9a24 on offset 4 and 0x9a28 on offset 8, all read from the first argument. A compare and conditional move then clamps the sum to the float at +0xf2c of the first argument, keeping the smaller of the two. The loop writes four results per pass, and the count is the word at +0xc8 of the second argument.

- `__glSpanReduceLuminanceAlpha` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2247620
  **Inferred.** Writes a pair of floats eight bytes apart for each pixel. The first float is the luminance sum with the same 0x9a20, 0x9a24 and 0x9a28 weights and the +0xf2c clamp as the luminance reducer. The second is the alpha float at offset 0xc times the word at 0x9a2c, and the pixel count is +0xc8 of the second argument.

- `__glSpanReduceRedAlpha` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2247790
  **Inferred.** Emits eight-byte records holding red and alpha. Red at source offset 0 is multiplied by the word at 0x9a20 and alpha at offset 0xc by 0x9a2c, both from the first argument. A leading group handles the count mod 4 and the unrolled loop then covers four pixels per pass.

- `__glSpanReduceRedNS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2247880
  **Inferred.** Copies the red float at offset 0 of each pixel into a dense float run with no scale factor. Source pixels advance 0x10 bytes and the count is the word at +0xc8 of the second argument.

- `__glSpanReduceGreenNS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2247910
  **Inferred.** Moves the green float at offset 4 of each pixel, unscaled, into consecutive output floats. The count is read from +0xc8 of the second argument.

- `__glSpanReduceBlueNS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22479a0
  **Inferred.** Takes the blue float at source offset 8 and writes it straight to the destination, one float per pixel. There is no multiply, and the loop count is +0xc8 of the second argument.

- `__glSpanReduceAlphaNS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2247a30
  **Inferred.** Copies the alpha float at source offset 0xc into the destination with no multiply. The source steps 0x10 bytes per pixel and the count is the word at +0xc8 of the second argument.

- `__glSpanReduceRGBNS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2247ac0
  **Inferred.** Copies source offsets 0, 4 and 8 into 12-byte records without any multiply, which drops alpha. The count is +0xc8 of the second argument, and the unrolled loop moves four pixels per pass.

- `__glSpanReduceRedAlphaNS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2247e80
  **Inferred.** Copies red (offset 0) and alpha (offset 0xc) unscaled into eight-byte pairs. The count comes from +0xc8 of the second argument, and leftover pixels are copied before the unrolled loop.

- `__glSpanReorderABGR` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2247210
  **Inferred.** Writes each pixel as four floats in A, B, G, R order at a 16-byte stride. Each channel has its own constant from the first argument: alpha uses 0x9a2c, blue 0x9a28, green 0x9a24 and red 0x9a20. The count is read from +0xc8 of the second argument.

- `__glSpanReorderBGRA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2247380
  **Inferred.** Reorders each pixel to B, G, R, A with a 16-byte output stride. Blue is scaled by the word at 0x9a28 of the first argument, green by 0x9a24, red by 0x9a20 and alpha by 0x9a2c. The count is +0xc8 of the second argument.

- `__glSpanReorderABGRNS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2247c80
  **Inferred.** Turns each 16-byte source pixel into A, B, G, R by copying source offsets 0xc, 8, 4 and 0 to output floats 0 through 3. No multiply is applied. The count is +0xc8 of the second argument.

- `__glSpanReorderBGRANS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2247d80
  **Inferred.** Copies source offsets 8, 4, 0 and 0xc into the four output floats, giving B, G, R, A order with no scale. The count is read from +0xc8 of the second argument.

- `__glSpanPackUbyte` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2247f30
  **Inferred.** Converts each source float to one unsigned byte. The element count is the product of +0xc8 and +0x7c of the second argument. Each value is the source float times the word at +0xf30 of the first argument plus the word at +0xf28, truncated to an integer, and only its low byte is stored. No clamp is applied.

- `__glSpanPackByte` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2248030
  **Inferred.** Scales the source float by the word at +0xf30 of the first argument, then multiplies that by the word at +0xf28. The product is the argument to a call through the GOT slot at gp-0x660, which the GOT resolver names floorf. The returned float is truncated and stored as one byte, and the count is +0xc8 times +0x7c of the second argument.

- `__glSpanPackUshort` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22480e0
  **Inferred.** Uses the same truncation arithmetic as the unsigned byte packer, but the scale is the word at +0xf38 of the first argument and each result is stored as a halfword. The count is +0xc8 times +0x7c of the second argument.

- `__glSpanPackShort` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22481e0
  **Inferred.** Runs the byte path's product and floorf call, with the scale at +0xf38 of the first argument. Each truncated return value goes out as a halfword at a two-byte stride. The count is the product of +0xc8 and +0x7c of the second argument.

- `__glSpanPackUint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2248290
  **Inferred.** Computes the source float times the word at +0xf40 plus the word at +0xf28 of the first argument. It converts with a 64-bit truncation and stores the low 32 bits as a word. The count is +0xc8 times +0x7c of the second argument, with a four-element unrolled loop.

- `__glSpanPackInt` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2248390
  **Inferred.** Scales each source float by the word at +0xf40 of the first argument and multiplies the result by the word at +0xf28. That product goes to the floorf slot at gp-0x660, and the truncated return value is stored as a 32-bit word. The element count is +0xc8 times +0x7c of the second argument.

- `__glSpanPack332Ubyte` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2248440
  **Inferred.** Packs each pixel into one byte: 3-bit red at bits 5 to 7, 3-bit green at bits 2 to 4 and 2-bit blue at bits 0 and 1. Red and green are scaled by the 7.0 constant at the GOT pointer +0x9f0 and blue by the 3.0 constant at +0x944, then each is truncated and masked. The loop takes two pixels per pass, with one leading pixel when the count is odd, and the count is the word at +0xc8 of the second argument.

- `__glSpanPack233RevUbyte` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22485d0
  **Inferred.** Packs each pixel into one byte in the reverse layout: 3-bit red at bits 0 to 2, 3-bit green at bits 3 to 5 and 2-bit blue at bits 6 and 7. Red and green use the 7.0 constant at the GOT pointer +0x9f0 and blue the 3.0 constant at +0x944. Count is +0xc8 of the second argument, and an odd count leaves one pixel for the leading step.

- `__glSpanPack565Ushort` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2248760
  **Inferred.** Packs each pixel into a halfword as 5:6:5, with red at bits 11 to 15, green at bits 5 to 10 and blue at bits 0 to 4. Red and blue are scaled by 31.0 (GOT pointer +0xa18) and green by 63.0 (+0xa20), then truncated and masked. The count is +0xc8 of the second argument.

- `__glSpanPack565RevUshort` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22488f0
  **Inferred.** Packs the same 5:6:5 channels in reverse order: red at bits 0 to 4, green at bits 5 to 10 and blue at bits 11 to 15. Red and blue use 31.0 and green uses 63.0, both loaded from the GOT pointer at +0xa18 and +0xa20. The count is +0xc8 of the second argument and each result is stored as a halfword.

- `__glSpanPack4444Ushort` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2248a80
  **Inferred.** Writes four 4-bit channels into a halfword: red at bits 12 to 15, green at 8 to 11, blue at 4 to 7 and alpha at bits 0 to 3. Every channel is multiplied by the 15.0 constant at the GOT pointer +0xa24, then truncated and masked to its field. The count is +0xc8 of the second argument.

- `__glSpanPack4444RevUshort` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2248c70
  **Inferred.** Places the same 4-bit channels in reverse nibble order: red at bits 0 to 3, green at bits 4 to 7, blue at bits 8 to 11 and alpha at bits 12 to 15. All four use the 15.0 constant at the GOT pointer +0xa24. The count comes from +0xc8 of the second argument.

- `__glSpanPack5551Ushort` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2248e60
  **Inferred.** Packs 5:5:5:1 into a halfword: red at bits 11 to 15, green at bits 6 to 10, blue at bits 1 to 5 and alpha as bit 0. The three colour channels are scaled by 31.0 at the GOT pointer +0xa18. Alpha is truncated with no multiply and masked to one bit. The count is +0xc8 of the second argument.

- `__glSpanPack1555RevUshort` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2249050
  **Inferred.** Packs the reverse 1:5:5:5 layout: red at bits 0 to 4, green at bits 5 to 9, blue at bits 10 to 14 and alpha at bit 15. Colour channels are multiplied by 31.0 (GOT pointer +0xa18). Alpha is truncated without a multiply and masked to bit 15. The count is +0xc8 of the second argument.

- `__glSpanPack8888Uint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2249240
  **Inferred.** Packs RGBA8 into a 32-bit word with red in the top byte and alpha in the bottom. Each channel is multiplied by 255.0 at the GOT pointer +0xa04 and truncated. Red is shifted by 24 and green by 16 with no mask; blue is shifted by 8 and masked to 0xff00, and alpha is masked to 0xff. The count is +0xc8 of the second argument.

- `__glSpanPack8888RevUint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2249420
  **Inferred.** Packs RGBA8 in reverse byte order, red in the low byte and alpha in the top. Red is masked to 0xff and green is shifted by 8 and masked to 0xff00. Blue is shifted by 16 and alpha by 24 with no mask. Every channel is first multiplied by 255.0 at the GOT pointer +0xa04, and the count is +0xc8 of the second argument.

- `__glSpanPack_10_10_10_2_Uint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2249600
  **Inferred.** Packs a 10:10:10:2 word with red at bits 22 to 31, green at bits 12 to 21, blue at bits 2 to 11 and alpha at bits 0 and 1. Red, green and blue are multiplied by 1023.0 at the GOT pointer +0xa1c and alpha by 3.0 at +0x944. Blue and alpha are masked to their fields. Red and green are shifted without a mask, so the 32-bit store alone drops any overflow. The count is +0xc8 of the second argument.

- `__glSpanPack_2_10_10_10_RevUint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22497f0
  **Inferred.** Packs the reverse 2:10:10:10 layout: red at bits 0 to 9, green at bits 10 to 19, blue at bits 20 to 29 and alpha at bits 30 and 31. Red is masked to 0x3ff. Green, blue and alpha are shifted into place with no mask. The first three are scaled by 1023.0 at the GOT pointer +0xa1c, alpha by 3.0 at +0x944, and the count is +0xc8 of the second argument.

- `__glSpanPackUbyteI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22499e0
  **Inferred.** Truncates each source float to an integer and stores its low byte, one byte per element. No scale, offset or mask is applied. Source floats are contiguous, four per unrolled pass, and the count is the word at +0xc8 of the second argument.

- `__glSpanPackByteI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2249a90
  **Inferred.** Truncates each float and keeps only its low seven bits, masking with 0x7f, before storing one byte per element. The count comes from +0xc8 of the second argument.

- `__glSpanPackUshortI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2249b60
  **Inferred.** Truncates each float to an integer and stores the low halfword with no mask, two bytes per element. The count is +0xc8 of the second argument.

- `__glSpanPackShortI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2249c10
  **Inferred.** Truncates each float and masks the integer to 15 bits with 0x7fff before storing a halfword per element. The loop count is read from +0xc8 of the second argument.
- `__glSpanPackUintI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2249ce0
  **Inferred.** Converts a float span to 32-bit words. The element count is the word at a1+0xc8, the float source is the pointer in a2 and the destination is the pointer in a3. Each value goes through trunc.l.s and only the low word of the 64-bit result is stored with sw, so nothing is clamped. A remainder pass runs first, then the loop takes four elements per pass.

- `__glSpanPackIntI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2249d90
  **Inferred.** Converts a float span to 32-bit words and clears the sign bit of each one. The count is the word at a1+0xc8 and the mask 0x7fffffff is built with lui 0x7fff and ori 0xffff. Each value is truncated with trunc.w.s, ANDed with the mask and stored with sw at a four-byte stride. Four elements are handled per pass after the remainder pass.

- `__glSpanPackNonCompUbyte` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2249e60
  **Inferred.** Converts a float span to one byte per element. The count is the product of the word at a1+0x7c and the word at a1+0xc8, computed with mult and mflo. Each value is truncated with trunc.w.s and only its low byte is written with sb, so the destination advances one byte per element.

- `__glSpanPackNonCompUshort` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2249fe0
  **Inferred.** Converts a float span to halfwords. The count comes from the same product of a1+0x7c and a1+0xc8 as the byte form. Values are truncated with trunc.w.s and stored with sh, and the destination moves two bytes per element.

- `__glSpanPackNonCompUint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x224a160
  **Inferred.** Converts a float span to 32-bit words through the 64-bit path. The count is a1+0x7c times a1+0xc8. Each value goes through trunc.l.s and dmfc1, and the low word is stored with sw at a four-byte stride.

- `__glSpanPackNonCompInt` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x224a220
  **Inferred.** Converts a float span to 32-bit integers with no mask. The count is a1+0x7c times a1+0xc8. Each value is converted with trunc.w.s and the result is written with swc1, so no mask or width reduction is applied.

- `__glSpanCopy` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x224a2d0
  **Inferred.** Copies a span of bytes out of the record in a1. The byte count is the product of the words at a1+0x2c, a1+0x24 and a1+0xc4. It then calls through a pointer loaded from the global table at gp-0x6e8, passing the destination from a3, the source from a2 and that byte count. The callee is not named in this routine.

- `__glSpanRGBAScaleBias` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x224aa80
  **Inferred.** Applies a scale and bias to each RGBA float in a span. The scales are read from a1+0x178 (R), 0x17c (G), 0x180 (B) and 0x184 (A), and the biases from a1+0x168 (R), 0x16c (G), 0x170 (B) and 0x174 (A). Each channel is computed with madd.s as value times scale plus bias and stored back in place. The element count is the word at a1+0xc8, and the four-component pixels are 0x10 bytes apart.

- `__glLoadUnpackModes` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x224f0e0
  **Inferred.** Fills the unpack-state fields of the record in a1 with defaults when a2 is nonzero. The fields at a1+0x30, 0x34, 0x38, 0x3c and 0x40 are cleared and a1+0x4c is set to 1, and the words at a1+0xb8 and a1+0xbc are copied to a1+0x44 and a1+0x48. When a2 is zero it instead loads the unpack fields from the context in a0: the words at 0x5a0, 0x59c, 0x5a8 and 0x5a4 and the bytes at 0x594 and 0x595. The row fields at 0x598 and 0x5ac are used only when they are positive, otherwise the fallback values from a1+0xb8 and a1+0xbc are kept.

- `__glLoadPackModes` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22503a0
  **Inferred.** Copies the pack-state fields from the context in a0 into the record in a1. The words at 0x570, 0x574, 0x578 and 0x57c go to a1+0x94, 0x90, 0xa4 and 0x98, and the bytes at 0x568 and 0x569 go to a1+0x88 and 0x8c. The word at 0x56c is copied to a1+0x9c when it is positive. The word at 0x580 is copied to a1+0xa0 only when it is positive; otherwise the fallback from a1+0xbc is used, and a missing 0x56c value falls back to a1+0xb8.

- `__glSlowPickReadPixels` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2250ac0
  **Inferred.** Runs the read-pixels pick path. It calls __glInitReadPixelsInfo to fill a record on the stack at sp+0x10, then __glClipReadPixels on that record. If the clip returns zero it stops. Otherwise it calls a function loaded from the global table at gp-0x6020 and then __glGenericPickReadPixels, both with the context and the stack record as arguments. The first callee is not named in this routine.

- `__glSlowPickCopyPixels` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2252890
  **Inferred.** Runs the copy-pixels pick path. It calls __glInitCopyPixelsInfo to build the record in the stack frame, then __glClipCopyPixels on that record. A zero return from the clip ends the routine. A nonzero return calls __glGenericPickCopyPixels at 0x2252910 with the context and the same record.

- `__glReadPixels0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2250a00
  **Inferred.** Runs a read-pixels pass once per entry of the count word at a1+0xbc. Each pass calls the function pointer stored at a1+0x190 with the context and the record. After each pass it adds the word at a1+0x70 to the doubleword at a1+0x68, and it adds the integer at context +0x1458, converted to float, to the float at a1+0xd0. A zero or negative count returns without calling anything.
- `__glCopyImage1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2252a40
  **Inferred.** Runs the row callback held at descriptor offset +0x198 once per row, for the row count at +0xbc, and does nothing when that count is zero or negative. Each call gets the context in a0, the descriptor in a1, the value at +0x10 as a2 and the value at +0x68 as a3. After each call the word at +0x18 is added to the value at +0x10, and the word at +0x70 to the value at +0x68. The routine saves the word at a0+0x9944 before the loop and writes it back after it.

- `__glCopyImage2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2252b10
  **Inferred.** Copies a block of rows through two callbacks with a stack buffer. The buffer is 16 bytes times the word at +0xb8, rounded up to a multiple of 16. For each of the rows counted at +0xbc, the callback at +0x198 fills the buffer, passing the value at +0x10 as a2 and the buffer as a3. The routine then adds the word at +0x18 to +0x10 and calls the callback at +0x1a0 with the buffer as a2 and the value at +0x68 as a3. Last, it adds the word at +0x70 to +0x68, and it saves and restores the word at a0+0x9944 as the sibling copy routine does.

- `__glCopyImage3D` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2252f00
  **Inferred.** Runs the slice copy callback passed in a2 once per slice, for the slice count at +0xc0, skipping the loop when the count is not positive. The context goes in a0 and the descriptor in a1. After each call the word at +0x20 is added to the value at +0x10, and the word at +0x78 is added to the value at +0x68. The callback's return value is ignored.

- `__glGenericPickCopyImageSpan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2252e30
  **Inferred.** Chooses the span-copy callback for a copy and stores it in the descriptor's callback table. It builds a three-word array on the stack (2, 2, 7), passes its address as a2 to a local routine at 0x224afe0 that has no symbol, and keeps the flag byte copied from a2 at sp+0xc. When that routine returns zero, the routine loaded from the GOT slot at gp-0x5e80 is stored at +0x198. When the flag is set and the word at +4 of the structure at +0x228 is 0x8016, the field at +0xc8 receives the word at +0xc4 minus the word at +0x40 of that structure, plus 1, or zero when that difference is negative. It returns the local routine's result, or 1 when that result was zero.

- `__glInitReadImageSrcInfo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22530c0
  **Inferred.** Fills the read-source descriptor at a1 from the context at a0. The float at +0xcc is the word at a0+0xfb0 plus a2, converted to float. When the byte at a0+0x1454 is zero, the float at +0xd0 is the word at a0+0xfb4 plus a3. When it is set, that float is the word at a0+0xfb4 plus (the word at a0+0xfdc minus a3) minus 1. The word at +0 is 0x1900 when the byte at a0+0xde4 is zero and 0x1908 otherwise, and the word at +4 is 0x1406. The a4 and a5 arguments go to +0x44, +0x48, +0xb8 and +0xbc, the float at a0+0xf2c goes to +0xb0, and the routine also stores 4 at +0x2c, 1 at +0x4c and zeros at +0x30, +0x34, +0x38, +0x3c and +0x40.

- `__glInitMemGet` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22533f0
  **Inferred.** Sets the pixel-transfer fields of the descriptor at a1 for the format in a4. It first zeroes the word at +0x220, +0x30, +0x38, +0x3c, +0x40 and sets +0x34 to 1, then stores a3 at +0x48, a2 at +0x44 and the 64-bit a5 at +8. Formats 0x1909, 0x190a, 0x1907, 0x1908, 0x1906 and 0x8049 set +0x4c to 4 and +4 to 0x1406. The word at +0 becomes 0x1903 for 0x1909 and 0x8049, 1 for 0x190a, and the format value itself for 0x1907, 0x1908 and 0x1906. Any other format leaves the descriptor with only the zeroing and the first stores.

- `__glInitMemUnpack` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22534f0
  **Inferred.** Records the unpack state in the descriptor at a1, then calls the unpack-mode loader at 0x224f0e0 (`__glLoadUnpackModes`). It copies the float at a0+0xf2c to +0xb0 and zero to +0xd4. The a2 argument goes to +0xb8, +0xc4 and +0xc8, a3 to +0xbc, a4 to +0xc0, a5 to +0, a6 to +4, and the 64-bit a7 to +8. The byte at caller stack offset 7, the low byte of the first stack argument, is passed to the loader as a2.

- `__glInitMemPack` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2253560
  **Inferred.** Records the pack state in the descriptor at a1 and then calls the pack-mode loader at 0x22503a0 (`__glLoadPackModes`) with its arguments unchanged. The float at a0+0xf2c goes to +0xb0 and zero to +0xd4. The a2 argument is stored at +0xb8, +0xc4 and +0xc8, a3 at +0xbc, a4 at +0xc0, a5 at +0x58, a6 at +0x5c, and the 64-bit a7 at +0x60.

- `__glSpanReadRGBA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22535d0
  **Inferred.** Reads a span of RGBA pixels into the buffer at a2. The pixel count is the word at +0xc4 and the loop is skipped when it is not positive. The start x and y are the floats at +0xcc and +0xd0, truncated to integers. For each pixel it calls the routine at a0+0x9a50 with the 64-bit pointer at a0+0x4720 as a0, x as a1, y as a2 and the buffer as a3. The buffer advances 16 bytes per pixel and x advances by the signed halfword read from the table at +0x160, which advances by 2 bytes per pixel.

- `__glSpanReadRGBA2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22536a0
  **Inferred.** Reads one span with a single indirect call and no loop. It loads the routine pointer at a0+0x9a58 and calls it with the 64-bit pointer at a0+0x4720 as a0, the truncated x and y from +0xcc and +0xd0 as a1 and a2, the buffer pointer as a3, and the word at +0xb8 as a4.

- `__glSpanReadCI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2253700
  **Inferred.** Reads a span of colour-index values into the buffer at a2, counted by the word at +0xc4. Each pixel calls the routine at a0+0x9a50 with the 64-bit pointer at a0+0x4720, the current x, the y from +0xd0 and the buffer pointer. The buffer advances 4 bytes per pixel, and x advances by the signed halfword from the table at +0x160.

- `__glSpanReadCI2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22537d0
  **Inferred.** Reads a run of colour-index values whose length is the word at +0xb8, skipped when that is not positive. For each value it calls the routine at a0+0x9a50 with the 64-bit pointer at a0+0x4720, x from +0xcc, y from +0xd0 and the buffer pointer as a3. Unlike `__glSpanReadCI`, x steps by one per value and no halfword table is read.

- `__glSpanReadDepth` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22538a0
  **Inferred.** Reads a span of depth values scaled to floats. The count is the word at +0xc4. The scale is the float at a0+0xf2c divided by the unsigned word at a0+0x9d5c converted to float. Each value comes from the routine at a0+0x9da8, called with a0+0x9ce0 as a0, x and y as a1 and a2. The unsigned 32-bit result is multiplied by the scale and stored as a float at 4-byte steps. The loop handles two values per pass, and x advances by the halfword from the table at +0x160 after each value.

- `__glSpanReadDepth2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2253a40
  **Inferred.** Reads a row of depth values scaled the same way as `__glSpanReadDepth`, using the scale from a0+0xf2c and a0+0x9d5c. The length is the word at +0xb8, and the routine at a0+0x9da8 is called with a0+0x9ce0 as a0, x as a1 and y from +0xd0 as a2. Here x steps by one per value and the result is stored at 4-byte steps.

- `__glSpanReadDepthUint1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2253bc0
  **Inferred.** Reads a span of 32-bit depth words, counted by +0xc4 and skipped when not positive. The shift is 32 minus the sum of the word at a0+0x9cf0 and the word at a0+0x9d68. Each value comes from the routine at a0+0x9da8, called with a0+0x9ce0 as a0, x and y as a1 and a2, and is shifted left by that amount before it is stored at 4-byte steps. x advances by the halfword from the table at +0x160.

- `__glSpanReadDepthUint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2253cc0
  **Inferred.** Reads a row of 32-bit depth words whose length is the word at +0xb8. It computes the same shift as its sibling, 32 minus the sum of the words at a0+0x9cf0 and a0+0x9d68. Each value comes from the routine at a0+0x9da8 with a0+0x9ce0 as a0, x as a1 and y as a2, is shifted left by the computed amount, and is stored as a word at 4-byte steps. x steps by one per value.

- `__glSpanReadStencil` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2253db0
  **Inferred.** Reads a span of stencil values, counted by +0xc4 and skipped when not positive. Each value comes from the routine at a0+0x9cb0, called with a0+0x9c08 as a0, x as a1 and y from +0xd0 as a2. The signed 32-bit result is converted to a float and stored at 4-byte steps, and x advances by the halfword from the table at +0x160 after each value.

- `__glSpanReadStencil2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2253ea0
  **Inferred.** Reads a row of stencil values whose length is the word at +0xb8. Each value comes from the routine at a0+0x9cb0 with a0+0x9c08 as a0, x as a1 and y from +0xd0 as a2. x steps by one per value, and each signed result is converted to a float and stored at 4-byte steps.

- `__glSlowDrawPixelsStore` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2253f70
  **Inferred.** Copies the 13-word pixel-store block at a1 onto the stack and then calls the context hook at +0x4d90 with a0 restored to its original value and the copy as a1. The context pointer is the doubleword at a0. When the byte at ctx+0x8dac is set, the routine first calls the hook at ctx+0x4ce8 with the copy's address at sp+0xc, and passes three floats: the words at ctx+0x1d0, +0x1d4 and +0x1d8, each multiplied by the ratio of the float at ctx+0xf2c to the float at ctx+0x1dc. When bit 0x20 of the word at ctx+0x808 is set, it calls the hook at ctx+0x4cf0 with the context pointer and the copy as a1, passing the float at ctx+0x208 as the single float argument.
- `__glSpanRenderCIubyte4` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2255c50
  **Inferred.** Walks a block of colour-index bytes and sends each pixel to a callback as four floats. The row range
  runs from the value at +0xe0 up to the truncated sum of the floats at +0xb4 and +0xd8, stepping by the word at +0xfc.
  Inside each row the column starts at +0xdc, steps by +0x100 and stops when it equals +0xe4. Each index byte is scaled
  by four and used to read one float from each of four tables at context +0x98b8, +0x98c0, +0x98c8 and +0x98d0, and
  those floats fill words 0xc to 0x18 of a five-word block on the stack. The column goes in word 0, and the callback
  at context +0x4d58 is called with that block and a0 loaded from context +0x4718. On exit the routine stores the new
  row end at +0xe0 and the remaining row count at +0xec.

- `__glSpanSwapBytes2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2258ea0
  **Inferred.** Exchanges the two bytes of every halfword from the source in a2 into the buffer in a3. The element count
  is the product of the words at +0xc4 and +0x28, and when that product is zero or below the routine returns without
  writing.

- `__glSpanSwapBytes2Dst` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2258ef0
  **Inferred.** Exchanges the bytes of each halfword like its neighbour at 0x2258ea0, but takes the element count from
  the word at +0x80 in place of +0x28, multiplied by the word at +0xc4.

- `__glSpanSwapAndSkipBytes2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2258f40
  **Inferred.** Works row by row over the count in +0xc4. Each row swaps the bytes of +0x28 halfwords from the source
  into the destination, which is written contiguously. After each row the source pointer moves forward by the word at
  +0x1c times one less than the halfword in the table at +0x160, so the source skips a gap that differs from row to row.

- `__glSpanSwapBytes4` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2258fc0
  **Inferred.** Reverses the four bytes of each word, so destination bytes 0 to 3 take source bytes 3, 2, 1 and 0. The
  element count is the word at +0xc4 times the word at +0x28, and a zero count writes nothing.

- `__glSpanSwapBytes4Dst` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2259020
  **Inferred.** Reverses four-byte words as the routine at 0x2258fc0 does, but the count is the word at +0xc4 times
  the word at +0x80 instead of +0x28.

- `__glSpanAlignPixels2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2259460
  **Inferred.** Copies two-byte elements from a2 to a3 one byte at a time, keeping their byte order. The count is the
  word at +0xc4 times the word at +0x28, and nothing is copied when that count is not positive.

- `__glSpanAlignPixels2Dst` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22594b0
  **Inferred.** Copies two-byte elements unchanged, exactly as the routine at 0x2259460 does, with the count drawn
  from +0x80 in place of +0x28.

- `__glSpanAlignPixels4` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2259500
  **Inferred.** Copies four-byte elements from a2 to a3 with the byte order intact, using the count word at +0xc4 times
  the word at +0x28. A non-positive count leaves the destination untouched.

- `__glSpanAlignPixels4Dst` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2259560
  **Inferred.** Four-byte copy with the count read from +0x80. It is otherwise the same byte-for-byte loop as
  0x2259500.

- `__glSpanUnpackRGBubyte` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2258d20
  **Inferred.** Copies three bytes per element from the source in a2 to a packed three-byte destination in a3. The
  loop is written as do-while, so it copies at least one element even when the word at +0xc4 is zero. After each
  element the source advances by three times the halfword read from the table at +0x160, which lets the source skip
  over pixels between elements.

- `__glSpanUnpackRGBAubyte` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2258e30
  **Inferred.** Copies four bytes per element to the destination, which advances four bytes per element. The source
  moves forward by four times the halfword at the table pointer +0x160 after each element. The loop runs over the count in the word at +0xc4
  and, like its three-byte sibling, executes its body at least once.

- `__glInitUnpacker3D` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22572c0
  **Inferred.** Calls `__glInitUnpacker` with the same arguments, then works on the record in a1. It stores the product
  of the words at +0x18 and +0x48 at +0x20, and advances the 64-bit pointer at +0x10 by that product times the word at
  +0x40.

- `__glSpecBytesPerElement` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2256f00
  **Inferred.** Maps a GL type enumerant in a0 to the size in bytes of one element and returns it in v0. The traced
  values are 0x1400 and 0x1401 to 1, 0x1402 and 0x1403 to 2, 0x1404, 0x1405 and 0x1406 to 4, and 0x8034 to 2.
- `__glSpanUnpack332Ubyte` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2259bc0
  **Inferred.** Turns each packed 3:3:2 byte into three floats. Red is bits 7:5 and green bits 4:2, both divided by 7.0. Blue is bits 1:0, divided by 3.0. The results go to offsets 0, 4 and 8 of a 12-byte record. An odd leading pixel is handled before the two-pixel loop.

- `__glSpanUnpack233RevUbyte` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2259d50
  **Inferred.** Reads the same byte with the fields in reverse: bits 2:0 and 5:3 are divided by 7.0 and bits 7:6 by 3.0. They are stored at offsets 0, 4 and 8, so the first float is the low three bits.

- `__glSpanUnpack565Ushort` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2259ee0
  **Inferred.** Splits a halfword into 5, 6 and 5 bits. Bits 15:11 go to offset 0 divided by 31.0, bits 10:5 to offset 4 divided by 63.0, and bits 4:0 to offset 8 divided by 31.0. The source advances 2 bytes per pixel and the output 12 bytes.

- `__glSpanUnpack565RevUshort` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225a070
  **Inferred.** The 5:6:5 split with the field order reversed. Bits 4:0 go to offset 0, bits 10:5 to offset 4 and bits 15:11 to offset 8, using the same divisors of 31.0, 63.0 and 31.0.

- `__glSpanUnpack4444Ushort` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225a200
  **Inferred.** Cuts each halfword into four nibbles, each divided by 15.0. Bits 15:12 land at offset 0, 11:8 at offset 4, 7:4 at offset 8 and 3:0 at offset 12. Each pixel fills a 16-byte record and the source advances 2 bytes.

- `__glSpanUnpack4444RevUshort` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225a3f0
  **Inferred.** Nibble unpack in reverse order. Bits 3:0 are written first at offset 0, then 7:4, 11:8 and 15:12 at offset 12, each divided by 15.0.

- `__glSpanUnpack5551Ushort` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225a5e0
  **Inferred.** Reads five-bit fields from bits 15:11, 10:6 and 5:1, storing them divided by 31.0 at offsets 0, 4 and 8. The remaining bit 0 is stored at offset 12 as a plain 0 or 1, with no division.

- `__glSpanUnpack1555RevUshort` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225a7a0
  **Inferred.** Five-bit fields from bits 4:0, 9:5 and 14:10 go to offsets 0, 4 and 8, each divided by 31.0. Bit 15 is written raw at offset 12.

- `__glSpanUnpack8888Uint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225a960
  **Inferred.** Takes each 32-bit word, read with lw at a 4-byte stride, and splits it into four bytes. The top byte goes to offset 0 and the low byte to offset 12. Each byte is converted with cvt.s.l and divided by 255.0.

- `__glSpanUnpack8888RevUint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225ab40
  **Inferred.** The byte split in the opposite order: the low byte is written at offset 0 and the top byte at offset 12, each divided by 255.0. The records are 16 bytes and the source words are 4 bytes.

- `__glSpanUnpack_10_10_10_2_Uint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225ad20
  **Inferred.** Splits a word into 10-bit fields at bits 31:22, 21:12 and 11:2, each divided by 1023.0 and stored at offsets 0, 4 and 8. The lowest two bits are divided by 3.0 and stored at offset 12.

- `__glSpanUnpack_2_10_10_10_RevUint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225af00
  **Inferred.** The 2:10:10:10 layout in reverse. Bits 9:0, 19:10 and 29:20 go to offsets 0, 4 and 8 divided by 1023.0. The top two bits, 31:30, go to offset 12 divided by 3.0.

- `__glSpanUnpackUbyteI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225b0e0
  **Inferred.** Index unpack of unsigned bytes. Each byte is zero-extended with lbu and converted to a float with cvt.s.w. The count mod 4 leading bytes are written at a 4-byte stride, then the rest in groups of four at a 16-byte stride.

- `__glSpanUnpackByteI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225b190
  **Inferred.** Signed-byte index unpack. Bytes are read with lb at source stride 1, so the sign survives into cvt.s.w. The count mod 4 leading bytes go out at a 4-byte stride from a3, then groups of four go out at a 16-byte stride, with the element count at +0xc4 of a1.

- `__glSpanUnpackUshortI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225b240
  **Inferred.** Index unpack of halfwords read with lhu. Source advances 2 bytes per element, each value goes through cvt.s.w, and groups of four fill 16-byte records after the leading count mod 4 elements.

- `__glSpanUnpackShortI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225b2f0
  **Inferred.** Signed halfword index unpack using lh and cvt.s.w. Groups of four read eight source bytes each and write 16 destination bytes.

- `__glSpanUnpackUintI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225b3a0
  **Inferred.** Index unpack of 32-bit unsigned words. The lw value is zero-extended through dsll32 and dsrl32 with a shift of 0, moved with dmtc1 and converted with cvt.s.l. Leading words are peeled off first, then the rest go four at a time.

- `__glSpanUnpackIntI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225b480
  **Inferred.** Signed word index unpack: lw at source stride 4, mtc1 and cvt.s.w. The count mod 4 leading words are stored at a 4-byte stride, then groups of four words are read at 16 bytes and written at 16 bytes, with the count taken from +0xc4 of a1.

- `__glSpanUnpackNonCompUint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225b530
  **Inferred.** Unsigned word unpack whose element count is the product, formed with mult, of the word at +0x24 and the word at +0xc4 of a1. Each word is zero-extended and converted with cvt.s.l.

- `__glSpanClampPreFloat` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225b620
  **Inferred.** Clamps float elements into [0, L], where L is the float at +0xf2c of the context in a0. The count is the product of the words at +0x24 and +0xc4 of a1. Values above L are replaced by L and negative values by zero, using c.lt.s with movt.s. a1 counts the elements that were above L.

- `__glSpanClampNegPreFloat` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225b6e0
  **Inferred.** Symmetric clamp into [-L, L] with L from +0xf2c of a0. The lower bound is formed by neg.s, so the routine uses -L as the floor and L as the ceiling.

- `__glSpanClampPostFloat` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225b7a0
  **Inferred.** Same [0, L] clamp as the pre-float routine, with L from +0xf2c of a0. The count differs: it is the product of the words at +0x7c and +0xc8 of a1.

- `__glSpanClampRed` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225b860
  **Inferred.** Clamps only the first float of each 16-byte element to [0, L], with L read from +0x99f0 of a0. The other three floats are copied from source to destination unchanged. The count is the word at +0xc8 of a1.

- `__glSpanClampGreen` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225b980
  **Inferred.** The second float of each element is clamped against the bound at +0x99f4 of a0. Offsets 0, 8 and 12 are copied straight across.

- `__glSpanClampBlue` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225baa0
  **Inferred.** Clamps the third float of each element into [0, L] with L at +0x99f8 of a0. Offsets 0, 4 and 12 are passed through.

- `__glSpanClampAlpha` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225bbc0
  **Inferred.** Clamps the fourth float, the alpha at offset 12, with its bound read from +0x9a18 of a0. The first three floats are copied.

- `__glSpanClampRGB` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225bcd0
  **Inferred.** Clamps the red, green and blue floats of each element at offsets 0, 4 and 8 against bounds at +0x99f0, +0x99f4 and +0x99f8 of a0. The bounds are reached through lui $at, 1 plus negative displacements. Alpha at offset 12 is copied. The count is the word at +0xc8 of a1.

- `__glSpanClampRGBA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225be90
  **Inferred.** Clamps all four floats of each 16-byte element. The bounds are +0x99f0 for red, +0x99f4 for green, +0x99f8 for blue and +0x9a18 for alpha, all with a zero floor.

- `__glSpanClampSigned` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225bf70
  **Inferred.** Replaces negative floats with zero and has no upper bound. Each value is tested against a zero held in f4 with c.lt.s and movt.s. The count is the product of the words at +0x7c and +0xc8 of a1, and groups of four are unrolled.

- `__glSpanExpandRed` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225c030
  **Inferred.** Expands one float per element into RGBA. The red result is the input times the float at +0x99f0 of a0. Green and blue are stored as zero and alpha as the value loaded from +0x9a18 of a0.

- `__glSpanExpandGreen` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225c090
  **Inferred.** Places the input, scaled by the float at +0x99f4 of a0, at offset 4 of the 16-byte output. Red and blue are zero and alpha comes from +0x9a18.

- `__glSpanExpandBlue` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225c0f0
  **Inferred.** Writes the input times +0x99f8 of a0 at offset 8. Offsets 0 and 4 are zero and offset 12 holds the +0x9a18 float.

- `__glSpanExpandAlpha` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225c150
  **Inferred.** Only the alpha channel carries data: the input times the float at +0x9a18 of a0 goes to offset 12. Red, green and blue are zeroed.

- `__glSpanExpandRGB` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225c1b0
  **Inferred.** Turns three floats per element, at a 12-byte stride, into RGBA. Each component is multiplied by its own scale (+0x99f0, +0x99f4, +0x99f8 of a0) and alpha is the +0x9a18 float. Four elements are handled per pass.

- `__glSpanExpandBGR` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225c2f0
  **Inferred.** Input floats come in B, G, R order. The third one, scaled by +0x99f0, becomes red. The second, scaled by +0x99f4, becomes green. The first, scaled by +0x99f8, becomes blue. Alpha is the +0x9a18 float.

- `__glSpanExpandLuminance` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225c430
  **Inferred.** Each luminance float is multiplied by the red, green and blue scales to fill those three channels. Alpha is the +0x9a18 float stored without multiplying by the input.

- `__glSpanExpandLuminanceAlpha` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225c4a0
  **Inferred.** Reads (luminance, alpha) float pairs at an 8-byte stride. Luminance goes to red, green and blue through the three scales, and the alpha value is multiplied by the +0x9a18 float.

- `__glSpanExpandRedAlpha` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225c5e0
  **Inferred.** Reads (red, alpha) pairs at an 8-byte stride. The red value is multiplied by +0x99f0 of a0 into offset 0, green and blue are zero, and the second value is multiplied by +0x9a18 into offset 12.

- `__glSpanExpandIntensity` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225c650
  **Inferred.** Each intensity float becomes all four channels: it is multiplied by the red, green, blue and alpha scales at +0x99f0, +0x99f4, +0x99f8 and +0x9a18 of a0. Pairs of elements are unrolled.

- `__glSpanExpandRedNS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225c730
  **Inferred.** The no-scale variant. The input float goes to red unchanged, green and blue are zero, and alpha is the constant 1.0 that the routine loads through $t9. It takes its count from the word at +0xc4 of a1 and uses no context.
- `__glSpanExpandGreenNS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225c790
  **Inferred.** Expands a green-only span into RGBA pixels. The count is the word at context +0xc4, and each float read from a2 lands at offset +4 of a 16-byte pixel written through a3. Offsets +0 and +8 get 0.0 from a zeroed register, and offset +0xc gets a constant loaded through t9 from a fixed table offset.

- `__glSpanExpandBlueNS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225c7f0
  **Inferred.** Places each source float from a2 at offset +8 of the output pixel, the blue slot. Offsets +0 and +4 hold 0.0, and offset +0xc takes the table constant read through t9. The count comes from the word at context +0xc4.

- `__glSpanExpandAlphaNS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225c850
  **Inferred.** Builds alpha-only pixels from a source float array. Slots +0, +4 and +8 are zeroed and slot +0xc takes the value read from a2 at the same index. The loop length is the word at context +0xc4 and output goes to a3 in 16-byte steps.

- `__glSpanExpandRGBNS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225c8a0
  **Inferred.** Converts three-float RGB source pixels, 12 bytes apart on a2, into 16-byte RGBA pixels on a3, with the table constant in the fourth slot. The count at context +0xc4 is split: count mod 4 pixels go first one at a time, then the rest in groups of four with a 0x30-byte source step and a 0x40-byte destination step.

- `__glSpanExpandBGRNS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225c9a0
  **Inferred.** Same count split and pixel stride as the RGB expansion, but the source is read in BGR order. The third source float goes to red at +0, the second to green at +4 and the first to blue at +8. The fourth slot receives the constant loaded through t9. Source steps 0x30 bytes and destination steps 0x40 bytes per group of four, and the count is the word at context +0xc4.

- `__glSpanExpandLuminanceNS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225caa0
  **Inferred.** One luminance float from a2 is written to slots +0, +4 and +8 of each output pixel, and slot +0xc gets the table constant. Source stride is 4 bytes, output stride is 16 bytes, and the count is read from context +0xc4.

- `__glSpanExpandLuminanceAlphaNS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225cb00
  **Inferred.** Consumes (luminance, alpha) pairs 8 bytes apart from a2. Each output pixel repeats the luminance in slots +0, +4 and +8 and stores the alpha in slot +0xc. The pair count is the word at context +0xc4.

- `__glSpanExpandRedAlphaNS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225cb50
  **Inferred.** Reads (red, alpha) pairs from a2 and writes RGBA pixels with red at +0, zeros at +4 and +8, and alpha at +0xc. The loop runs for the count held at context +0xc4.

- `__glSpanExpandIntensityNS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225cba0
  **Inferred.** Each intensity float from a2 is stored four times, into all four slots of a 16-byte output pixel on a3. The count is the word at context +0xc4.

- `__glSpanZeroFillAlpha` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225cbf0
  **Inferred.** Copies RGBA span pixels from a2 to a3 but writes 0.0 to the alpha slot of every output pixel. Source pixels are read 16 bytes apart, and the unrolled body moves four pixels per pass. The count is the word at context +0xc4.

- `__glSpanScaleRGBA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225cce0
  **Inferred.** Multiplies each channel of an RGBA span by its own factor. The factors are read from the table at a0 with offsets 0x99f0 (red), 0x99f4 (green), 0x99f8 (blue) and 0x9a18 (alpha), computed as a0 plus 0x10000 minus the immediates. Count is the word at context +0xc4, and source and destination both step 16 bytes.

- `__glSpanScaleABGR` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225ce50
  **Inferred.** Reads each source pixel in ABGR order, with alpha first, and writes RGBA. Destination red is source element 3 times the factor at a0+0x99f0, green is element 2 times the factor at a0+0x99f4, blue is element 1 times a0+0x99f8, and alpha is element 0 times a0+0x9a18. The count is the word at context +0xc4.

- `__glSpanPreReorderABGR` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225d130
  **Inferred.** Reverses the four floats of every 16-byte pixel without scaling, which turns ABGR source into RGBA order. The unrolled body handles four pixels per pass with a 0x40-byte step on both sides. The count is the word at context +0xc4.

- `__glSpanPreReorderBGRA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225d230
  **Inferred.** Swaps elements 0 and 2 of each 16-byte source pixel and copies elements 1 and 3 unchanged, turning BGRA into RGBA. The count is the word at context +0xc4, and the pixel loop works from a2 to a3.

- `__glSpanPreUnscaleRGBA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225d330
  **Inferred.** Multiplies each RGBA element by one of four factors from the table at a0. Red uses a0+0x9a20, green a0+0x9a24, blue a0+0x9a28 and alpha a0+0x9a2c, all computed from the 0x10000 base with lui. The count is the word at context +0xc4.

- `__glSpanPostUnscaleRGBA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225d4a0
  **Inferred.** Applies the same per-channel factors from a0+0x9a20 to a0+0x9a2c as the pre-unscale routine, but the count comes from the word at context +0xc8, not +0xc4. Pixels are 16 bytes apart on both sides.

- `__glSpanUnscaleABGR` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225d610
  **Inferred.** Takes ABGR source and scales each element by the factor belonging to its destination slot: red from source element 3 times a0+0x9a2c, green from element 2 times a0+0x9a28, blue from element 1 times a0+0x9a24, and alpha from element 0 times a0+0x9a20. The count is the word at context +0xc8.

- `__glSpanUnscaleBGRA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225d780
  **Inferred.** Takes BGRA source and scales it into RGBA. Red is source element 2 times a0+0x9a28, green is element 1 times a0+0x9a24, blue is element 0 times a0+0x9a20, and alpha is element 3 times a0+0x9a2c. The count is the word at context +0xc8.

- `__glSpanGetMemRGBA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225d8f0
  **Inferred.** Copies a span of RGBA pixels from a2 to a3 with no change to any element, 16 bytes per pixel. The bulk copy moves four pixels per pass and the remainder goes first. The count is the word at context +0xc4.

- `__glSpanGetMemRGB` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225d9f0
  **Inferred.** Reads 12-byte RGB source pixels from a2 and writes 16-byte RGBA pixels to a3. The fourth slot of each output pixel is set from a register holding 0.0. The count is the word at context +0xc4.

- `__glSpanGetMemL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225dae0
  **Inferred.** Each float from a2 goes to slot +0 of a 16-byte output pixel, and slots +4, +8 and +0xc are set to zero. The loop length is the word at context +0xc4.

- `__glSpanGetMemLA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225db30
  **Inferred.** Turns (luminance, alpha) pairs read 8 bytes apart from a2 into RGBA pixels. Luminance goes to slot +0, slots +4 and +8 are zero, and alpha goes to slot +0xc. The count is the word at context +0xc4.

- `__glSpanMemPutRGB` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225dcd0
  **Inferred.** Packs RGBA pixels from a2, 16 bytes apart, into 12-byte RGB pixels at a3 and drops the alpha slot. The remainder loop goes first, then groups of four pixels. The count is the word at context +0xc4.

- `__glSpanMemPutL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225ddb0
  **Inferred.** Keeps element 0 of each 16-byte RGBA pixel from a2 and writes it as a single float on a3. The count is the word at context +0xc4.

- `__glSpanMemPutLA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225de40
  **Inferred.** Packs elements 0 and 3 of each 16-byte RGBA pixel from a2 into two floats per pixel on a3. Element 0 becomes the luminance and element 3 the alpha. The count is the word at context +0xc4.

- `__glRowScaleSumRGBA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225df80
  **Inferred.** Accumulates a weighted row into the destination given by the fifth argument, t0. Each 16-byte pixel from a3 is multiplied elementwise by the four weights at a2 and added to the destination with madd.s. The count is the word at context +0xc8, and an odd count takes one leading pixel before the pairs.

- `__glRowScaleSumRGB` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225e0d0
  **Inferred.** Adds weighted red, green and blue into a destination row at t0, using three weights at a2. Slots 0 to 2 are updated from elements 0 to 2 of each source pixel on a3, and destination slot 3 is left alone. Count is the word at context +0xc8.

- `__glRowScaleSumL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225e260
  **Inferred.** Multiplies source elements 0 to 2 of each pixel on a3 by one scalar, the float at a2, and adds the products into the first three slots of the destination at t0. Slot 3 of the destination is not written. The count is the word at context +0xc8.

- `__glRowScaleSumLA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225e3f0
  **Inferred.** Uses two weights at a2: the first scales red, green and blue of each source pixel, and the second scales alpha. Products are accumulated into the row at t0 with madd.s. The count is the word at context +0xc8, and an odd count is handled before the pairs.

- `__glRowScaleSumI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225e540
  **Inferred.** One float weight read from a2 multiplies all four elements of each source pixel on a3, and the products are added into the row at t0. The count is the word at context +0xc8, and the loop handles an odd leading pixel and then pairs.

- `__glSpanPostConvScaleBiasRGBA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225e690
  **Inferred.** Applies the after-convolution scale and bias to RGBA pixels. Each channel is its source value times a scale from a0+0x358 (red), 0x35c (green), 0x360 (blue) and 0x364 (alpha), plus a bias. The biases are formed before the loop as a table value times a0+0x368, 0x36c, 0x370 and 0x374 respectively. Count is the word at context +0xc8.

- `__glRowSetNoAlpha` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225e830
  **Inferred.** Writes the destination row at a3 with red, green and blue set to 0.0 and alpha copied from the source at a2. The source alpha is element 3 of each 16-byte pixel, read at offset 0xc. The count is the word at context +0xc8.

- `__glRowSetAll` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225e900
  **Inferred.** Clears n RGBA pixels starting at a3 to zero, storing four zero floats per pixel. The count is the word at context +0xc8.

- `__glSpanConvolveReduceRGB` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225e950
  **Inferred.** Runs one 1-D convolution pass per output pixel and adds the result to the RGB sums already in the output at a3. Weights come from the table whose pointer is loaded from context +0x110, and advance 12 bytes per tap. Input is read from a2 at 16-byte steps, and the input window moves one pixel per output. The pass count is the word at +0xc8. The tap count is the word at offset 0x40 of the structure whose pointer sits at context +0x228.

- `__glSpanConvolveReduceRGBA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225eae0
  **Inferred.** The RGBA form of the convolution pass. Each tap multiplies a 16-byte input pixel from a2 by a 16-byte weight set from the table at context +0x110, and the four channel sums are added to the output pixel at a3. The pass count is read from +0xc8 and the tap count from offset 0x40 of the structure at +0x228.

- `__glSpanConvolveReduceL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225ecd0
  **Inferred.** Convolution pass for luminance input. Each tap reads elements 0 to 2 of a 16-byte input pixel from a2 and multiplies them by one scalar weight from the table at context +0x110, which advances 4 bytes per tap. The three sums go to the output at a3. Pass count is the word at +0xc8.

- `__glSpanConvolveReduceLA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225ee60
  **Inferred.** Convolution pass for luminance-alpha input. Each tap reads a (luminance, alpha) pair 8 bytes apart from a2, and a 16-byte weight set from the table at context +0x110. Luminance times weights 0, 1 and 2 goes to output slots 0 to 2, and alpha times weight 3 goes to slot 3. The pass count is the word at +0xc8.

- `__glSpanConvolveReduceI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x225f050
  **Inferred.** Convolution pass for intensity input. Each tap reads one float from a2, four bytes per tap, and that value is multiplied by each of the four weights in the 16-byte weight set at context +0x110 before accumulating into the four output slots. The pass count is the word at +0xc8.
- `__glFClamp` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2263e60
  **Established.** Clamps the float in f12 to the range from zero up to a bound and returns the result in f0. A negative
  input returns 0.0. Otherwise f0 takes the float at offset 0xf2c of the structure whose pointer is loaded from the
  absolute address 0x1020, and f12 replaces it when f12 is the smaller of the two.

- `__glSpanMinmaxA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2263e90
  **Inferred.** Copies a span of pixels from the source in a2 to the buffer in a3 unchanged, and folds the alpha word at
  +0xc of each pixel into running extremes. Each alpha is multiplied by the float at a0 plus 0x9a2c. The minimum is kept
  at a0 plus 0x630 and the maximum at a0 plus 0x634. The pixel count is the word at offset 0xc8 of a1, and an odd count
  handles one pixel before the two-pixel unrolled loop.

- `__glSpanMinmaxRGB` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2264360
  **Inferred.** Copies the pixel span from a2 to a3 unchanged and tracks extremes of the first three words. Red is scaled
  by the float at a0 plus 0x9a20, green by the one at 0x9a24 and blue by the one at 0x9a28. Minimums go to a0 plus 0x630,
  0x634 and 0x638, and maximums to 0x63c, 0x640 and 0x644. The count is the word at offset 0xc8 of a1.

- `__glSpanMinmaxSinkA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22645d0
  **Inferred.** Reads a span of pixels and writes nothing to the span. It keeps the lowest and highest alpha values,
  where alpha is the word at +0xc scaled by the float at a0 plus 0x9a2c. The lowest goes to a0 plus 0x630 and the
  highest to a0 plus 0x634. The count is the word at offset 0xc8 of a1.

- `__glSpanMinmaxSinkL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22646d0
  **Inferred.** Same walk as the alpha sink, but the value examined is the first word of each pixel, scaled by the
  float at a0 plus 0x9a2c. The lowest goes to a0 plus 0x630 and the highest to a0 plus 0x634. Nothing is stored to the
  span, and the count comes from the word at offset 0xc8 of a1.

- `__glSpanMinmaxSinkLA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22647d0
  **Inferred.** Walks a span without writing it and keeps four running values. The first word is scaled by the float
  at a0 plus 0x9a20, and its lowest and highest go to a0 plus 0x630 and 0x638. The fourth word is scaled by the float at
  a0 plus 0x9a2c, and its lowest and highest go to 0x634 and 0x63c. The count is the word at offset 0xc8 of a1.

- `__glSpanMinmaxSinkRGB` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22648a0
  **Inferred.** Reads three words per pixel and keeps the lowest and highest of each channel, with no store to the span.
  Each channel is scaled by its own float: red at a0 plus 0x9a20, green at 0x9a24, blue at 0x9a28. Lowest values go to a0
  plus 0x630, 0x634 and 0x638 in channel order, and highest values to 0x63c, 0x640 and 0x644.

- `__glSpanMinmaxSinkRGBA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22649a0
  **Inferred.** Covers all four words of each pixel without writing the span. Scale floats sit at a0 plus 0x9a20 for
  the first word, 0x9a24 for the second, 0x9a28 for the third and 0x9a2c for the fourth. The lowest values of the four
  words go to a0 plus 0x630, 0x634, 0x638 and 0x63c, and the highest to 0x640, 0x644, 0x648 and 0x64c.

- `__glSpanHistogramSinkA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2265450
  **Inferred.** Adds each pixel's alpha to a histogram and writes nothing else. The alpha at +0xc is multiplied by the
  float at a0 plus 0x9a2c and passed to `__glFClamp` at 0x2263e60. The clamped value is multiplied by the integer at
  a0 plus 0x5fc, a double constant is added, and the result is truncated to a bin index. The 32-bit counter at that
  index in the table whose pointer is at a0 plus 0x5d0 is then incremented. The pixel count is the word at offset 0xc8
  of a1, and an odd count handles one pixel before the two-pixel loop.
- `__glSpanHistogramSinkRGB` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22658a0
  **Inferred.** Adds a span of RGB pixels into the histogram. For each of the count pixels (the word at a1+0xc8), each of
  the first three floats is passed to __glFClamp, and the clamped result in f0 is multiplied by the int at context +0x5fc
  and rounded with the double constant at gp+0xb70 before truncation to a bin index. The red, green and blue counters
  for that index are the words at offsets 0, 4 and 8 of a 12-byte bin in the array whose pointer is at context +0x5d0,
  and each is incremented by one. The routine also multiplies each clamped channel by one of the floats at context
  +0x9a20, +0x9a24 and +0x9a28, but that product is never stored or passed on, so the scale floats have no effect.

- `__glSpanHistogramSinkRGBA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2265a40
  **Inferred.** The alpha variant of the histogram sink. It walks the same count of 16-byte RGBA pixels, clamps all four
  channels through __glFClamp and indexes the bins with the context int at +0x5fc, as the RGB sink does. Each bin here
  is 16 bytes, so the four counters sit at offsets 0, 4, 8 and 0xc. The scale products of the four channels (floats at
  +0x9a20 to +0x9a2c) are computed and discarded in the same way.

- `__glSpanColorMatrixSwizzleRGBA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2265d50
  **Inferred.** Copies a span of RGBA float pixels and reorders the channels. The four signed bytes at context
  +0x993c, +0x993d, +0x993e and +0x993f each choose the source element: the red output comes from the index in
  +0x993c, green from +0x993d, blue from +0x993e and alpha from +0x993f. Four pixels go per pass with a single-pixel
  tail, and the routine returns at once when the count at a1+0xc8 is zero or negative.

- `__glSpanColorMatrixSwizzWithDropRGBA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2265eb0
  **Inferred.** Same channel reordering as the sibling swizzle, driven by the same four selector bytes at context
  +0x993c to +0x993f, but a selector that is negative drops its channel: the output word is written as 0.0 from the zero
  held in f4 rather than read from the source. Two pixels go per pass, and the count comes from a1+0xc8.

- `__glSpanColorMatrixGeneralRGBA` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22660c0
  **Inferred.** Runs a span of RGBA pixels through a full 4x4 float matrix. The matrix pointer is the doubleword at
  context +0x94e0, and its sixteen floats are read from offsets 0x00 to 0x3c. Each output component is a sum of four
  products of matrix entries with the input components, built with multiply and multiply-add instructions. Two pixels
  go per pass, and the count is the word at a1+0xc8.

- `__glInitAccum64` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2267920
  **Inferred.** Sets up accumulation-buffer state on a context. It first calls __glInitBuffer with its arguments unchanged,
  then zeroes the doubleword at +0xd0 and stores 8 at +0x24. Seven function addresses are written at +0x98, +0xa0,
  +0xa8, +0xb0, +0xb8, +0xc0 and +0xc8, each formed from one gp-table base by adding the constants 0x7910, 0x75d0,
  0x6880, 0x6440, 0x7420, 0x6da0 and 0x71f0 in that order. When the byte at +0xde4 of the second argument is nonzero,
  eight float scale values are stored at +0x78 to +0x94, each from dividing one of two gp-table floats (at 0xa7c and
  0x8e8) by a float held in the second argument's table.

- `__glInitAsyncState` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2267d50
  **Inferred.** Creates the async-marker state for a context. It asks __glNamesNewArray for a two-entry array and keeps
  it at +0x1ad0. It then calls the context function at +8 with arguments 1 and 0x10 to get a block, hands the array and
  block to __glNamesNewData, stores the block at +0x1ac8 and zeroes the word at +0x1ac0. Before returning it stores the
  address of __glFreeAsyncMarker at offset 8 of the block, increments the word at offset 0 of the block, and calls
  __glNamesDeleteRange with first name 0 and count 1.

- `__glFreeAsyncState` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2267e10
  **Inferred.** Releases the name array of a context's async-marker state. It passes the context and the array held at
  +0x1ad0 of it to __glNamesFreeArray and returns what that routine returns.

- `__glim_GenAsyncMarkersSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2267e50
  **Inferred.** Reserves a run of async marker names. A count in a0 below zero reports 0x501 through __glSetError, and
  a zero count returns 0 at once. A begin word at 0x1030 that reads 1 reports 0x502 and returns 0. Otherwise the routine
  calls __glNamesGenRange with the context, the array at +0x1ad0 and the count, and returns the first name that call gives.

- `__glim_IsAsyncMarkerSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2267f00
  **Inferred.** Reports whether a name is a live async marker. When the begin word at 0x1030 reads 1 the routine reports
  0x502 and returns 0. Otherwise it calls __glNamesIsName with the context, the array at +0x1ad0 and the name in a0, and
  returns the low byte of that result.

- `__glim_DeleteAsyncMarkersSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2268110
  **Inferred.** Deletes a run of async marker names: a0 is the first name and a1 the count. A begin word of 1 reports
  0x502. A negative count reports 0x501. A zero count returns with nothing done. Otherwise it calls __glNamesDeleteRange
  with the context, the array at +0x1ad0, the first name and the count.

- `__glim_FinishAsyncSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2268190
  **Inferred.** Finishes a marker through the vtable pointed to by +0x1ad8 of the context. The routine calls the entry at
  +0x908 of that table with the marker as its argument and returns the result if it is nonzero. When that result is
  zero it calls the entry at +0x270 of the same table, then calls the +0x908 entry again with the marker and returns that
  second result. A begin word of 1 reports 0x502 and returns 0.

- `__glFreeAsyncMarker` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2268250
  **Inferred.** Frees a marker object by calling the function pointer stored at offset 0x18 of its first argument, with
  both arguments passed through unchanged.

- `__glDisposeAsyncMarker` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2268290
  **Inferred.** Disposes of a marker object by calling the function pointer at offset 8 of its second argument. The first
  argument is forwarded unchanged.

- `__glim_AlphaFunc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22682d0
  **Inferred.** Sets the alpha test comparison and reference. The comparison code in a0 must lie in 0x200 to 0x207;
  anything else reports 0x500 through __glSetError. The float in f13 is clamped to the range from 0.0 up to the context
  float at +0xf2c, and the clamped value goes to +0x828 with the code at +0x824. A begin word of 1 reports 0x502 and
  stores nothing. On success the begin word becomes 2 and bit 0 is set in both change words, +0x4710 and +0x4714.

- `__glim_BlendEquationEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2268600
  **Inferred.** Records the blend equation code given in a0. The code is checked against a set of accepted values, and one
  outside that set is reported as 0x500 through __glSetError with nothing stored. Accepted codes are written to +0x834.
  Calling while the begin word reads 1 reports 0x502, and a success moves the begin word to 2 and sets bit 0 of the change
  word at +0x4714.

- `__glim_ClearAccum` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2268730
  **Inferred.** Sets the accumulation clear colour from the four float arguments in f12 to f15. Each one is clamped below
  by the gp-table float at 0x8f8 and above by the context float at +0xf2c. The clamped red, green, blue and alpha
  values go to +0x770, +0x774, +0x778 and +0x77c. A begin word of 1 reports 0x502, and a success sets the begin word
  to 2 and bit 0 of the word at +0x4714.

- `__glim_ClearColor` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2268800
  **Inferred.** Sets the colour clear value. The four float arguments are clamped to a range whose floor is 0.0 and whose
  ceiling is the context float at +0xf2c, then stored at +0x84c (red), +0x850 (green), +0x854 (blue) and +0x858 (alpha).
  Unlike the accumulation clear it does not touch the begin word or the change words. A begin word of 1 reports 0x502.

- `__glim_ClearIndex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2268950
  **Inferred.** Sets the colour index clear value. The float in f12 is multiplied by the gp-table float at 0xa0c and
  truncated to an integer. That integer is ANDed with the word at context +0x99d8 shifted left by four with 0xf ORed in,
  converted back to float, multiplied by the gp-table float at 0x92c, and stored at +0x85c. A begin word of 1 reports
  0x502 through __glSetError. The routine leaves the begin word and the change words alone.

- `__glim_ClearStencil` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22689e0
  **Inferred.** Sets the stencil clear value. The integer in a0 is masked to the stencil width, which is (1 shifted left by
  the word at context +0xe00) minus one, and the result is stored as a halfword at +0x784. A begin word of 1 reports 0x502
  through __glSetError. On success the begin word becomes 2 and bit 0 of the change word at +0x4714 is set.

- `__glim_ColorMask` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2268a60
  **Inferred.** Sets the four colour write-enable bytes. The arguments a0, a1, a2 and a3 are stored as single bytes at
  context +0x864, +0x865, +0x866 and +0x867, so the red enable is the byte at +0x864. A begin word of 1 reports 0x502.
  Otherwise the begin word becomes 2 and bit 0 of the change word at +0x4714 is set.

- `__glim_ColorMaterial` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2268ae0
  **Inferred.** Picks which material face and property the current colour tracks. The face in a0 must be 0x404, 0x405 or
  0x408, and the property in a1 one of 0x1200, 0x1201, 0x1202, 0x1600 or 0x1602. A value outside either set reports 0x500
  through __glSetError and stores nothing. The accepted face goes to +0x668 and the property to +0x66c. When bit 7 of the
  word at +0x808 is set, the routine then calls the function pointers at context +0x4758 and +0x48f8, each with the
  context as argument. It never writes the begin word.

- `__glim_CullFace` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2268bf0
  **Inferred.** Selects the faces that are culled. Only 0x404, 0x405 and 0x408 are stored, at +0x29c; any other value
  reports 0x500 through __glSetError and changes nothing. With the begin word at 1 the call reports 0x502. When it
  succeeds the begin word becomes 2 and bit 2 (value 4) is set in the change word at +0x4714.

- `__glim_Fogf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22692f0
  **Inferred.** Forwards a single float fog parameter to __glim_Fogfv. A parameter name in a0 from 0xb61 to 0xb65 leaves
  the float from f13 in a spill slot and calls __glim_Fogfv with the name and the slot's address as its value argument.
  Any other name reports 0x500 through __glSetError. The routine neither reads nor writes the context or the begin word.

- `__glim_Fogi` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2269570
  **Inferred.** Forwards a single integer fog parameter to __glim_Fogiv. The value in a1 is spilled to the stack, and
  the name in a0 is checked against 0xb61 to 0xb65 before __glim_Fogiv is called with the address of that spilled slot.
  A name outside the range reports 0x500 through __glSetError, and the context is left alone.

- `__glim_FrontFace` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22695f0
  **Inferred.** Sets which winding counts as front facing. The accepted values are 0x900 and 0x901, stored at +0x2a0. A
  different value reports 0x500 through __glSetError. A begin word of 1 reports 0x502 and stores nothing; a success moves
  the begin word to 2 and sets bit 2 (value 4) of the change word at +0x4714.
- `__glim_Hint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2269690
  **Inferred.** Records a quality hint for one target. The mode in a1 must be 0x1100, 0x1101 or 0x1102, and the target in a0 must be 0xc50 to 0xc54, 0x8316 or 0x8322; anything else reports 0x500. A state word of 1 reports 0x502 before either test. Each target stores the mode in its own context slot: +0x870 for 0xc50, +0x874 for 0xc51, +0x878 for 0xc52, +0x87c for 0xc53, +0x880 for 0xc54, +0x88c for 0x8316 and +0x890 for 0x8322. Success sets the state word to 2 and sets bit 3 for 0xc51, bit 1 for 0xc52, bit 2 for 0xc53, and bit 0 for the other targets in the word at +0x4714.

- `__glim_IndexMask` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2269850
  **Inferred.** Sets the colour-index write mask. The value in a0 is ANDed with the word at context +0x99d8 and stored at +0x860. A state word of 1 reports 0x502 through `__glSetError`. Success sets the state word to 2 and bit 0 of the word at +0x4714.

- `__glim_Lightf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2269ca0
  **Inferred.** Sets one scalar light parameter by handing it to the vector form. Parameter names 0x1205 to 0x1209 pass the float in f14, spilled to the stack, by address to the body of `__glim_Lightfv` at 0x2269a10. Any other name reports 0x500 through `__glSetError`. The routine reads no state word of its own.

- `__glim_Lightiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2269d30
  **Inferred.** Sets one light's parameters from an integer vector. A state word of 1 reports 0x502. The light number in a0 minus 0x4000 must be below the word at context +0xf68, and the name in a1 must lie in 0x1200 to 0x1209; a light or name outside those ranges reports 0x500. The light record is the pointer at +0x730 plus 116 times the light index. Names are dispatched through a ten-entry jump table. Integer values are converted to float and stored at record offsets +0x30 to +0x3c, +0x50 to +0x5c and +0x60 to +0x70. A negative value, or one past a case's limit, reports 0x501. The colour cases call `__glScaleColori`, and one case calls `__glTransformLightDirection`. Success sets the state word to 2 and bit 5 of the word at +0x4714.

- `__glim_Lighti` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2269fe0
  **Inferred.** Sets one light parameter from an integer by handing it to the integer-vector form. Names 0x1205 to 0x1209 pass the integer in a2, spilled to the stack, by address to the body of `__glim_Lightiv` at 0x2269d30. Any other name reports 0x500 through `__glSetError`. The routine does not check the state word itself.

- `__glim_LightModelfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226a060
  **Inferred.** Sets one light-model parameter from a float vector. A state word of 1 reports 0x502. Name 0xb53 calls `__glScaleColorf` with the context and the colour block at +0x674. Names 0xb51 and 0xb52 store a byte at +0x684 and +0x685 that is 1 when the float is nonzero. Name 0x81f8 takes the value truncated to an integer, accepts only 0x81f9 or 0x81fa, and stores it at +0x688. Any other name or value reports 0x500. Success sets the state word to 2 and bit 5 of the word at +0x4714.

- `__glim_LightModelf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226a1a0
  **Inferred.** Sets a scalar light-model parameter by handing it to the float-vector body at 0x226a060. Names 0xb51, 0xb52 and 0x81f8 pass the float spilled from f13 by address. Any other name, including 0xb53, reports 0x500 through `__glSetError`.

- `__glim_LightModeliv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226a210
  **Inferred.** Sets one light-model parameter from an integer vector. A state word of 1 reports 0x502. Name 0xb53 calls `__glScaleColori` with the context and the colour block at +0x674. Names 0xb51 and 0xb52 store a byte at +0x684 and +0x685 that is 1 when the integer is nonzero. Name 0x81f8 accepts only 0x81f9 or 0x81fa and stores that integer at +0x688. Any other name or value reports 0x500. Success sets the state word to 2 and bit 5 of the word at +0x4714.

- `__glim_LightModeli` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226a320
  **Inferred.** Sets a scalar integer light-model parameter. Names 0xb51, 0xb52 and 0x81f8 pass the integer spilled from a1 by address to the body of `__glim_LightModeliv` at 0x226a210. Any other name reports 0x500 through `__glSetError`.

- `__glim_LineStipple` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226a390
  **Inferred.** Sets the line stipple pattern and repeat count. A state word of 1 reports 0x502. The pattern in a1 is stored as a halfword at +0x290. The repeat count in a0 is clamped to the range 1 to 0x100 and stored as a halfword at +0x292. Success sets the state word to 2 and bit 1 of the word at +0x4714.

- `RoundWidth` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226a420
  **Inferred.** Helper that turns a float width into an integer. A value below the float constant at gp+0x8e8 returns 1. Any other value has the float constant at gp+0x90c added to it, and the sum is truncated toward zero and returned in v0.

- `ClampWidth` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226a450
  **Inferred.** Helper that clamps and quantizes a line width for the context in a0. The value in f13 is limited by the float at +0x1010 below and the float at +0x1014 above, returning the bound it crosses. Between the bounds it measures whole steps of the float at +0x1018 from the lower bound, adds the float at +0xf28 to that count, truncates the result and returns the lower bound plus the step times that count.

- `__glim_LineWidth` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226a4a0
  **Inferred.** Sets the line width. A state word of 1 reports 0x502. A width of zero or less reports 0x501. Otherwise the requested float is stored at +0x284, the result of `RoundWidth` is stored at +0x28c and the result of `ClampWidth` at +0x288. Success sets the state word to 2 and bit 1 of the word at +0x4714.

- `__glim_LogicOp` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226a570
  **Inferred.** Selects the logic-operation code. A state word of 1 reports 0x502. The code in a0 must lie in 0x1500 to 0x150f, otherwise the call reports 0x500 through `__glSetError`. An accepted code is stored at +0x848, the state word becomes 2, and bit 0 of the word at +0x4714 is set.

- `__glErrorCheckMaterial` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226a7a0
  **Inferred.** Validation helper for material calls. It takes the face in a0 and the parameter name in a1, with the float in f14. It returns its result in v0 and reports nothing itself. The faces 0x404, 0x405 and 0x408 are accepted. Names 0x1200, 0x1201 and 0x1202 are accepted for any face, as are 0x1600, 0x1602 and 0x1603. Name 0x1601 needs a float from 0 up to the constant at gp+0x9d8. A bad face or name gives 0x500 and an out-of-range float gives 0x501. Success gives 0.

- `__glim_Materialf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226aa10
  **Inferred.** Sets a scalar material parameter. Only name 0x1601 is accepted, and it passes the float in f14, spilled to the stack, by address to the body of `__glim_Materialfv` at 0x226a880. Any other name reports 0x500 through `__glSetError`. The routine reads no state word.

- `__glim_Materiali` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226af10
  **Inferred.** Sets a scalar integer material parameter. Only name 0x1601 is accepted, and it passes the integer in a2, spilled to the stack, by address to the body of `__glim_Materialiv` at 0x226ad80. Any other name reports 0x500 through `__glSetError`.

- `ClampSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226afa0
  **Inferred.** Helper that clamps and quantizes a point size for the context in a0. It has the same structure as `ClampWidth`, reading the bounds at +0x1004 and +0x1008, the step at +0x100c and the float offset at +0xf28.

- `__glim_PointSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226aff0
  **Inferred.** Sets the point size. A state word of 1 reports 0x502. A size of zero or less reports 0x501. Otherwise the requested float is stored at +0x278, the integer from the routine at 0x226af70 is stored at +0x280, and the result of `ClampSize` is stored at +0x27c. Success sets the state word to 2 and bit 3 of the word at +0x4714.

- `__glim_PolygonMode` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226b0c0
  **Inferred.** Sets the rasterization mode for the faces in a0. A state word of 1 reports 0x502. The mode in a1 must be 0x1b00 (point), 0x1b01 (line) or 0x1b02 (fill). Face 0x404 stores the mode at +0x294, face 0x405 at +0x298 and face 0x408 at both. Any other face reports 0x500. The point and line modes set the state word and their change bit before the face is checked, so a bad face leaves them set. Every accepted call sets bit 2 of the word at +0x4714.

- `__glim_PolygonStipple` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226b1d0
  **Inferred.** Uploads the 32 by 32 stipple pattern. A state word of 1 reports 0x502. Otherwise it calls `__glFillImage` with the context, 0x20 and 0x20 as the sizes, format 0x1900 and type 0x1a00, the pattern pointer from a0 as the sixth argument and the context address +0x2b0 as the seventh. It then calls the hook at +0x4df0 with the context. Success sets the state word to 2 and bit 2 of the word at +0x4714.

- `__glim_ShadeModel` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226b280
  **Inferred.** Selects flat or smooth shading. A state word of 1 reports 0x502. The mode in a0 must be 0x1d00 or 0x1d01, otherwise it reports 0x500. An accepted mode is stored at +0x670, the state word becomes 2 and bit 0 of the word at +0x4714 is set.

- `__glim_StencilMask` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226b320
  **Inferred.** Sets the stencil write mask. A state word of 1 reports 0x502. The mask in a0 is ANDed with the value (1 shifted left by the word at context +0xe00) minus 1, and the result is stored as a halfword at +0x78a. Success sets the state word to 2, bit 1 of the word at +0x4710 and bit 0 of the word at +0x4714.

- `__glim_StencilFunc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226b3b0
  **Inferred.** Sets the stencil test function, reference and mask. A state word of 1 reports 0x502. A negative reference is set to 0 and a reference above the stencil maximum is set to that maximum, where the maximum is (1 shifted left by the word at +0xe00) minus 1. The function must lie in 0x200 to 0x207, else the call reports 0x500. The function is stored at +0x780, the clamped reference as a halfword at +0x786 and the mask ANDed with the maximum as a halfword at +0x788. Success sets bit 1 of the word at +0x4710 and bit 0 of the word at +0x4714.

- `__glim_StencilOp` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226b480
  **Inferred.** Sets what the stencil test does on stencil failure, depth failure and depth pass. Each of the three codes in a0, a1 and a2 must be 0, 0x150a, 0x1e00, 0x1e01, 0x1e02 or 0x1e03, and a code outside that set reports 0x500 and stores nothing. The codes are stored at +0x78c, +0x790 and +0x794. A state word of 1 reports 0x502. Success sets the state word to 2, bit 2 of the word at +0x4710 and bit 0 of the word at +0x4714.

- `__glim_BlendColorEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226fd30
  **Inferred.** Sets the blend constant colour. The four floats f12 to f15 are each clamped to the range 0 up to the float at context +0xf2c and stored at +0x838, +0x83c, +0x840 and +0x844 in argument order. A state word of 1 reports 0x502. Success writes neither the state word nor a change word.

- `__glim_PolygonOffsetEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226fdf0
  **Inferred.** Sets the polygon offset from a factor and a bias that is already scaled. The float in f12 is stored at +0x2a4 and the float in f13 unchanged at +0x2a8. A state word of 1 reports 0x502. Success sets the state word to 2 and bit 2 of the word at +0x4714.

- `__glim_PolygonOffset` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x226fe60
  **Inferred.** Sets the polygon offset from a slope factor and a unit count. The float in f12 is stored at +0x2a4, and the float in f13 times the float at context +0x2ac is stored at +0x2a8. A state word of 1 reports 0x502. Success sets the state word to 2 and bit 2 of the word at +0x4714.

- `__glDrawBitmap` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2270980
  **Inferred.** Draws a bitmap of the width in a1 and height in a2 without reading the state word. When either size is zero or negative, the hook at +0x4cd0 is called with a zero third argument and the routine returns. Otherwise `__glImageSize` gives the byte count for the size in format 0x1900 and type 0x1a00, the function pointer at context offset 0 returns a buffer of that size, and `__glFillImage` fills it. The eighth argument, which the code saves on the stack, is passed as the sixth argument of `__glFillImage` and the new buffer as the seventh. Finally the hooks at +0x4cd0 and +0x18 are called with the buffer.

- `__glFastDrawBitmap` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2270a90
  **Inferred.** Same upload as `__glDrawBitmap`, guarded by the word at context +0x5a4. When that word is 1, or when the row byte count ((width + 7) shifted right by 3) ANDed with (the word minus 1) is zero, the call goes to the hook at +0x4cd0 with the eighth argument and skips the upload. A zero or negative size takes the same hook path with a zero third argument. Otherwise it follows the `__glDrawBitmap` sequence of size, allocation, fill and two hooks.

## Skipped (continued)

Skipped as too long for the time allowed, or with control flow not read through to the end:
`__glOdysseyDoGet`, `__glOdyim_GetTexParameterfv`, `__glOdyim_GetTexParameteriv`, `__glOdyim_GetFragmentLightfvSGIX`,
`__glOdyim_GetFragmentLightivSGIX`, `__glOdyim_GetFragmentMaterialivSGIX`, `__glOdyim_Swaptmesh`,
`__glOdyim_IglooInterfaceSGIX`, `__glOdysseyImageInit`, `__glOdysseyImageXfer`, `__glOdysseyImageDescribeWindow`,
`__glOdyim_DrawPixels`, `__glOdyim_ReadPixels`, `__glOdyim_CopyPixels`, `__glOdysseyConvolutionFilter`,
`__glOdysseySeparableFilter`, `__glOdyim_CopyConvolutionFilter1DEXT`, `__glOdyim_CopyConvolutionFilter2DEXT`,
`__glOdyim_ConvolutionParameterivEXT`, `__glOdyim_GetConvolutionParameterfvEXT`, `__glOdyim_GetConvolutionParameterivEXT`,
`__glOdyim_ColorTableSGI`, `__glOdyim_CopyColorTableSGI`, `__glOdyim_ColorSubTable`, `__glOdyim_CopyColorSubTable`,
`__glOdyim_PixelTexGenParameterfvSGIS`, `__glOdysseyImageChainCreate`, `ImageChainAddOp`,
`ImageChainDetermineChainType`, `ImageChainValidateScratchBufferFormats`, `ImageChainBuildColorChain`

Not described in this chunk because each needed more reading than the budget allowed, or the body was not decoded far enough to state a role honestly:
`RenderFunc_Lut`, `__glOdysseyClearScratchBuffer`, `ImageChainAddOpConvolve`, `RenderFunc_Convolve`, `RenderFunc_FastConvolve`, `RenderFunc_Convolve24BitMode`, `ImageChainAddOpConvolveResidue`, `RenderFunc_ConvolveResidue`, `ConvolutionDenormAndScale`, `ConvolutionClampToZero`, `RenderFunc_ScaleBias`, `RenderFunc_ScaleBiasForSignedTypes`, `RenderFunc_AcceptSignedDataFromHost`, `ImageChainAddOpColorMatrix`, `RenderFunc_ColorMatrix`, `RenderFunc_HistogramMinmax`, `RenderFunc_PixelTexture`, `RenderFunc_DownloadDepth`, `RenderFunc_DownloadStencil`, `RenderFunc_ReadbackDepth`, `RenderFunc_ReadbackStencil`, `RenderFunc_CopyDepth`, `RenderFunc_CopyStencil`, `ImageChainAddOpDownloadColor`, `__glOdysseyRenderFunc_DownloadColor`, `ImageChainAddOpReadbackColor`, `__glOdysseyRenderFunc_ReadbackColor`, `RenderFunc_Interlace`, `__glOdySpanEyeZ16ToEyeZ24`, `__glOdySpanEyeZ24ToFloat`, `__glOdySpanEyeZ24ToFloat2`, `__glOdySpanFloatToEyeZ24`, `__glOdySpanOrthoZToEyeZ24`, `__glOdySpanUnpackUint`.
