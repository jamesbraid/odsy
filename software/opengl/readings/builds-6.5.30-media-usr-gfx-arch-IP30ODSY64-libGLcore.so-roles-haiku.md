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
