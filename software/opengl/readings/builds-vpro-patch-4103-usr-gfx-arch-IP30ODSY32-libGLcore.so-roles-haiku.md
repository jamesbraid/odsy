# Role readings: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`

Routine roles read from the bodies of the routines below. The ELF is big-endian MIPS (ELF32 header), decoded as MIPS64 because the code uses 64-bit loads and stores.

- `sendBlenderOpTokens` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda40000
  **Inferred.** Packs three small fields into the word at +0x7b54 of the block whose address is the word at 0x1010. Argument a0 goes into bits 13 to 15 (mask 0xe000), a1 into bits 6 to 12 (mask 0x1fc0) and a2 into bits 0 to 5 (mask 0x3f), and every other bit of the word is kept. The routine then ORs bit 0 into the word at +0x68d0 of the block one 64 KiB page up, and sets the word at 0x1018 to 2 before returning.

- `sendBlenderColorTokensAccum24` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda40070
  **Inferred.** Writes a 12-bit field into both of the words at +0x7b58 and +0x7b5c of the block at 0x1010. The low 12 bits of a2 go into bits 0 to 11 of each word, and the low 12 bits of a0, shifted up by 12, go into bits 12 to 23 (mask 0x00fff000). Bits 24 to 31 of both words are kept. Like the routine above, it then sets bit 0 of the word at +0x68d0 one page up and sets the word at 0x1018 to 2.

- `__glSoftAllocAccum` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda424e0
  **Inferred.** Forwards a call through the function pointer at +0x7a10 of the context in a0. The routine loads the word at +0xe70 into a2 and the word at +0xe6c into a1, with the caller's a1 moved into a0 first, so the callee receives (a1, *(ctx+0xe6c), *(ctx+0xe70)). It returns that callee's result unchanged. The gp value is rebuilt from t9 with the constant 0x19fb28 and ra is saved in its 0x20-byte frame.

- `__glOdysseyAccumClose` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda40270
  **Inferred.** Resets eight pairs of slot words in the block at 0x1010 plus 0x10000. The slot words sit at offsets 0x1da8, 0x1de0, 0x1e18, 0x1e50, 0x1e88, 0x1ec0, 0x1f38 and 0x1f7c, each paired with the word 4 bytes after it. When a slot holds anything other than -1, its partner word is cleared and the slot is set back to -1. Last, the byte at +0x1fc1 of that page is cleared.

- `destroyScratchBufAccum` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda401d0
  **Inferred.** Makes two calls through the gp slot at -0x7940. The first passes the block at 0x1010, the address of the slot at +0x11f38 and the word at +0x11f3c. The second passes the same block, the address of the slot at +0x11f7c and the word at +0x11f80. If either call returns zero, the routine calls the error routine through the gp slot at -0x6938 with 0x505. Otherwise it releases its 0x20-byte frame and returns.

- `initBuffersForAccum` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda40890
  **Inferred.** Sets up accumulation state for the block at 0x1010. It calls the routine behind the gp slot at -0x7b70 twice, first with (block+0x11d2c, 1) and then with (block+0x11d64, 0). It then branch-and-links to initVisualNumComp at 0xda40580 and to initAccumGfxImages at 0xda40620. The last step sets the byte at +0x11fc1 to 1, the same byte that the close routine above clears.

- `AsyncPollDequeue` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda46e30
  **Inferred.** Takes the oldest record off a ring in the structure at a0. The head index is the word at +0x4010 and the tail index is the word at +0x4014. If the ring is non-empty and the 64-bit key at +8 of the head slot is not above a1, the routine stores the slot's word at +0 through a2 and its word at +4 through a3, advances the head modulo 0x401 and returns 1. Each slot is 16 bytes. Otherwise it returns 0 and stores nothing.

- `__glOdyim_FinishAsyncSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda47260
  **Inferred.** Waits for an asynchronous operation to report done. If the word at 0x1018 is 1, it reports 0x502 through the error routine at gp slot -0x6938 and returns 0. Otherwise each pass calls the routine behind gp slot -0x4360 with 0, then calls the function at +0x484 of the table found at +0x17ec of the block, passing a0. The pass repeats while that result is zero, and a nonzero result is returned.

- `__glOdyim_Hint` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda47880
  **Inferred.** Stores a hint mode for the target in a0. A word at 0x1018 equal to 1 reports 0x502 and returns. Otherwise a1 must be 0x1100, 0x1101 or 0x1102, or the routine reports 0x500. Targets other than 0x83ef go, with their arguments, to the routine behind gp slot -0x6bc0. For 0x83ef the mode is stored at block+0x19cc8. If that value is unchanged, or the byte at block+0x19cc4 is zero, the routine returns without touching 0x1018. Otherwise it sets the byte at block+0x19cd0 to 1, ORs 0x400 into the word at block+0x168d4, and sets 0x1018 to 2.

- `__glOdysseyAsyncCheck` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda46ea0
  **Inferred.** Tests bits of the status word at +0x718 of the context in a0, masked with a1. A masked value of 2 picks the counter at +0x1dd4 of the page at a0+0x20000 and the limit at +0xe34, 4 picks +0x1dd8 with +0xe38, 1 picks +0x1dd0 with +0xe3c, and 8 picks +0x1ddc with +0xe40. A counter below its limit is incremented and the routine returns 1. A counter at its limit reports 0x502 through the error routine at gp slot -0x6938 and returns 0. Any other masked value returns 1 without touching a counter.

- `__glOdyim_PushAttrib` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda495c0
  **Inferred.** Pushes one entry onto the attribute stack of the current context. A word at 0x1018 equal to 1 reports 0x502 through the GOT slot at -0x6938(gp). Otherwise the top word at context +0x16844 is compared with the base word at +0x16840 plus four times the count at +0xeb8; at or past that limit the routine reports 0x503. Below it calls the routine at 0xda48bc0 with the top pointer in a1 and the word at context +0x30dc in a2, then stores top+4 at +0x16844 and the old +0x30dc plus 4 at +0x30dc.

- `__glOdyssey_CopyContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda496b0
  **Inferred.** Always returns 1. Only when a1 equals the current context word at 0x1010 does it call the routine at 0xda48bc0, with the third argument as a0, the first argument plus 0x16838 as a1 and the first argument plus 0x1683c as a2. Any other a1 returns with the context left alone.

- `TargetIndexToTargetEnum` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda49730
  **Established.** Maps a small index to a target enumerant. Index 0 returns 0xde0, index 1 returns 0xde1, index 2 returns 0x806f and index 3 returns 0x8095. Any other index returns 0. It reads and writes no memory.

- `__glOdyssey_ResolveContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4b270
  **Inferred.** Flushes the two pending attribute pointers of the current context. It calls PopAttributes at 0xda49780 with the words at context +0x16838 and +0x1683c as its two arguments. It then calls the function pointer at context +0xc twice, first with the context and the +0x16838 word, then with the context and the +0x1683c word. Both words are cleared to zero at the end.

- `__glOdyim_PopAttrib` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4b2f0
  **Inferred.** Pops one attribute entry off the stack of the current context. A word at 0x1018 equal to 1 reports 0x502. When the base word at context +0x16840 is not below the top word at +0x16844 the stack is empty and the routine reports 0x504. Otherwise it moves the top down by 4, moves the word at +0x30dc down by 4, and calls PopAttributes at 0xda49780 with the entry at the new top as a0 and the new +0x30dc word as a1.

- `__glOdysseyFreeAttributeState` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4b3b0
  **Inferred.** Tears down the attribute state of the context in a0. While the word at a0+0x30d8 is below the word at a0+0x30dc it calls PopAttrib at 0xda4b2f0. It then walks the array whose base pointer is at a0+0x16840, calling the function pointer at a0+0xc with a0 and each word, and stops at the first zero word or when it has passed the count at a0+0xeb8 times four. Last it calls that pointer once more with the array base as the second argument and clears the base word.

- `__glOdyim_CullFace` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4bcf0
  **Inferred.** Chooses which polygon faces are culled. Mode 0x405 sets bit 9 of the word at context +0x7b1c and clears bits 0 and 10. Mode 0x404 sets bit 10 and clears bits 0 and 9. Mode 0x408 sets bits 9 and 10 and leaves bit 0. Any other mode reports 0x500 through the GOT slot at -0x6938(gp). On success the mode is stored at context +0x1ec, bit 1 is set in the word at +0x168d0, bit 2 is set in the word at +0x2d44, and the word at 0x1018 becomes 2.

- `__glOdyim_ColorMask` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4baa0
  **Inferred.** Sets the four colour write flags. The low byte of each argument is stored at context +0x75c, +0x75d, +0x75e and +0x75f in argument order. In the word at context +0x7b7c, bit 16 is cleared, bit 21 is set from whether a1 is nonzero, bit 22 from a2, bit 23 from a3, and bit 20 from a0 ORed with its old value, so this routine never clears bit 20. On success bit 7 is set in the word at +0x168d0 and 2 is written to 0x1018.

- `__glOdyim_ColorMaterial` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4bbb0
  **Inferred.** Chooses which material property follows the current colour. The face in a0 must be 0x404, 0x405 or 0x408, and the property in a1 one of 0x1200, 0x1201, 0x1202, 0x1600 or 0x1602; anything else reports 0x500 through the GOT slot at -0x6938(gp). The pair is stored at context +0x568 (face) and +0x56c (property). When bit 7 of the word at +0x700 is set, it calls the function pointers at +0x2d68 and then +0x2e38 with the context. It then calls the routine at 0xda47310 with the context. It does not write 0x1018.

- `__glOdyim_DepthFunc` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4bdf0
  **Inferred.** Sets the depth comparison function. The argument must lie in 0x200 to 0x207, otherwise 0x500 goes through the GOT slot at -0x6938(gp). The value is stored at context +0x660, and the low three bits of the word at +0x7b50 are replaced by the function's low three bits. The routine then writes 0x10420 to the command port at 0x4000 followed by the new +0x7b50 word. When the pending word at context +0x9750 is nonzero, it is cleared first and 0x10443, 0xfa, 0x10046 and 0x10046 are written ahead of those two words. Success sets bit 11 of the word at +0x168d4 and writes 2 to 0x1018.

- `__glOdyim_DepthMask` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4bef0
  **Inferred.** Enables or disables depth writes. The low byte of the argument is stored at context +0x664 on every call that passes the 0x1018 check. Bit 24 of the word at +0x7b7c is set only when the byte at +0xc91 is nonzero and the argument is nonzero; otherwise bit 24 is cleared. Success sets bit 7 of the word at +0x168d0 and writes 2 to 0x1018. A word at 0x1018 equal to 1 reports 0x502 and stores nothing.

- `__glOdyim_FrontFace` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4c6a0
  **Inferred.** Chooses the winding that counts as front facing. Mode 0x900 sets bit 23 of the word at context +0x7b1c and mode 0x901 clears it; any other value reports 0x500 through the GOT slot at -0x6938(gp). On success the mode is stored at context +0x1f0, bit 1 is set in the word at +0x168d0, bit 2 is set in the word at +0x2d44 and 2 is written to 0x1018.

- `__glOdyim_IndexMask` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4c780
  **Inferred.** Sets the colour-index write mask. The argument is ANDed with the word at context +0x7768 and stored at +0x758. The low 12 bits of that result replace bits 0 to 11 of the word at +0x7b7c, and the other bits of that word are kept. Success sets bit 7 of the word at +0x168d0 and writes 2 to 0x1018.

- `__glOdyim_LogicOp` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4ca10
  **Inferred.** Sets the logic operation. The argument must lie in 0x1500 to 0x150f, otherwise 0x500 goes through the GOT slot at -0x6938(gp). The value is stored at context +0x740, and the low four bits of the word at +0x7b60 are replaced by the operation's low four bits. The routine then writes 0x10422 to the command port at 0x4000 and then the new +0x7b60 word. The pending-flag block at +0x9750 is handled as in the depth function routine. A successful call writes neither 0x1018 nor the word at +0x168d0.

- `__glOdyim_Materialf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4d130
  **Inferred.** Sets one float material property. Only property 0x1601 is accepted; any other value reports 0x500 through the GOT slot at -0x6938(gp). For 0x1601 it spills the float argument from f14 to the stack and calls Materialfv at 0xda4cf30 with a0 unchanged, a1 set to 0x1601 and a2 set to the address of the spilled float.

- `__glOdyim_Materiali` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4d910
  **Inferred.** The integer form of the material setter. Only property 0x1601 is accepted; any other value reports 0x500 through the GOT slot at -0x6938(gp). For 0x1601 it spills the integer argument in a2 to the stack and calls Materialiv at 0xda4d700 with a0 unchanged, a1 set to 0x1601 and a2 set to the address of the spilled word.

- `__glOdyim_PolygonMode` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4da60
  **Inferred.** Sets the polygon rasterisation mode for faces. The mode in a1 must be 0x1b00, 0x1b01 or 0x1b02, otherwise 0x500 goes through the GOT slot at -0x6938(gp). Modes 0x1b00 and 0x1b01 first write 2 to 0x1018 and set bit 3 (0x1b00) or bit 1 (0x1b01) of the word at +0x2d44, then fall into the face check. The face in a0 must be 0x404, 0x405 or 0x408: 0x404 stores the mode at context +0x1e4, 0x405 at +0x1e8, and 0x408 at both. On success bit 2 of the word at +0x2d44 is set, the low two bits of +0x1e4 go to bits 2 and 3 of the word at +0x7b24 and the low two bits of +0x1e8 to bits 0 and 1, and the routine writes 0x10415 and then the new +0x7b24 word to the command port at 0x4000, after the pending-flag block at +0x9750 that the depth function routine uses.

- `__glOdyim_ShadeModel` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4ddf0
  **Inferred.** Sets the shade model. The mode in a0 must be 0x1d00 or 0x1d01; anything else reports 0x500 through the GOT slot at -0x6938(gp). Success stores the mode at context +0x570, sets bit 12 of the word at +0x7b1c when the mode is 0x1d00 and clears that bit otherwise, sets bit 0 of the word at +0x2d44 and bit 1 of the word at +0x168d0, and writes 2 to 0x1018. A word at 0x1018 equal to 1 reports 0x502.

- `__glOdyim_PolygonOffset` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4f900
  **Inferred.** Sets the polygon offset. The second float argument (f13) is multiplied by the float at context +0x1fc and the product replaces f13 before the routine tail-calls PolygonOffsetEXT at 0xda4f970. The first float (f12) is passed on unchanged. A word at 0x1018 equal to 1 reports 0x502 through the GOT slot at -0x6938(gp) and calls nothing else.

- `__glOdyim_StencilFunc` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4ded0
  **Inferred.** Sets the stencil test. The function in a0 must lie in 0x200 to 0x207, otherwise 0x500 goes through the GOT slot at -0x6938(gp). A negative reference in a1 is clamped to zero, and one at or above the stencil range is clamped to the full stencil mask, which is (1 shifted left by the bit count at context +0xca8) minus one. The function is stored at context +0x680, the clamped reference as a halfword at +0x686 and the mask argument ANDed with the stencil mask as a halfword at +0x688. The word at +0x7b4c takes the function's low three bits at bits 25 to 27, the reference's low byte at bits 0 to 7 and the mask's low byte at bits 8 to 15. Success sets bit 5 of the word at +0x168d0 and writes 2 to 0x1018.

- `__glOdyim_StencilMask` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4e000
  **Inferred.** Sets the stencil write mask. The argument is ANDed with the full stencil mask and stored as a halfword at context +0x68a. Unless bit 0 of the word at +0x7a90 is set, a nonzero mask that differs from the full mask calls the function pointer at context +0x10 with the context and the address the global at -0x7f6c(gp) plus 0x2058 yields, and the full mask is used for the next step. Bits 12 to 19 of the word at +0x7b7c then take the low byte of that mask, or zero when the byte at +0xc92 is zero. Success sets bit 7 of the word at +0x168d0 and writes 2 to 0x1018.

- `__glOdyim_StencilOp` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4e110
  **Inferred.** Sets what the stencil test does on stencil failure (a0), on depth failure (a1) and on depth pass (a2). Each argument must be 0, 0x150a or one of 0x1e00 to 0x1e03, and any other value reports 0x500 through the GOT slot at -0x6938(gp) with nothing stored. The three raw values go to context +0x68c, +0x690 and +0x694. Their codes pack into the word at +0x7b4c: a0's code at bits 22 to 24, a1's at bits 19 to 21 and a2's at bits 16 to 18. Success sets bit 5 of the word at +0x168d0 and writes 2 to 0x1018. A word at 0x1018 equal to 1 reports 0x502.

- `__glOdylc_Color3dv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51210
  **Inferred.** Packs a double-precision RGB triple into a four-word packet. The three doubles at a0, a0+8 and a0+0x10 are narrowed with cvt.s.d and stored at +4, +8 and +0xc after the header 0xc580cc0e. A one-word pad is taken when bit 2 of the write pointer is set and the word at 0x1034 is zero. A words-left count at 0x1028 below four plus the pad sends the routine through the GOT slot at gp-0x7140 with zero. A zero return stores the pointer minus four to 0x1030 and adds one to 0x1028; otherwise the pointer moves on by 0x10 past the pad and 0x1034 gains four.

- `__glOdylc_Color3f` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51330
  **Inferred.** Takes three float arguments in f12, f13 and f14 and writes them as a four-word packet. f12 is stored at +4, f13 at +8 and f14 at +0xc, behind the header 0xc580cc0e. The floats are parked in f4 to f6 and saved at 0x18, 0x20 and 0x28 of the 0x60-byte frame before the flush call, so they survive it. The current context's word at +0x13cc gets bit 0x10000.

- `__glOdylc_Color3fv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51450
  **Inferred.** Copies three floats from the array at a0 into a four-word packet headed 0xc580cc0e. The lwc1 loads read a0 at offsets 0, 4 and 8, and the values land at +4, +8 and +0xc. The routine ORs 0x10000 into the current context at +0x13cc. A short count sends it to the flush at gp-0x7140, and a zero return takes the failure path that stores the pointer minus four.

- `__glOdylc_Color3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51560
  **Inferred.** Stores the three integer arguments a0, a1 and a2 as whole words with no narrowing. a0 goes to +4, a1 to +8 and a2 to +0xc of a packet headed 0xc580cc0d. The arguments are kept at 0x18, 0x28 and 0x20 of the 0x60-byte frame across the flush call. Bit 0x10000 is set in the current context's +0x13cc word.

- `__glOdylc_Color3iv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51680
  **Inferred.** Loads three 32-bit words from the array at a0 with lw and writes them after the header 0xc580cc0d. The words go to +4, +8 and +0xc, so the array is copied as it stands. The 0x10000 dirty bit goes into the current context before the count check.

- `__glOdylc_Color3sv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda518b0
  **Inferred.** Reads three halfwords from a0 with lh, at offsets 0, 2 and 4, and writes each as a sign-extended word. The header is 0xc580cc0c. Apart from the header and the halfword loads, the packet, the pad and the flush fallback are the same as the 32-bit integer array form.

- `__glOdylc_Color3ub` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda519c0
  **Inferred.** Writes the three byte arguments a0, a1 and a2 as whole words, with no masking, into a packet headed 0xc580cc08. a0 lands at +4, a1 at +8 and a2 at +0xc. The routine has a 0x60-byte frame that holds the three arguments across the flush call, and it sets 0x10000 in the current context.

- `__glOdylc_Color3ubv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51ae0
  **Inferred.** Expands three unsigned bytes from a0 into a four-word packet with header 0xc580cc08. lbu reads offsets 0, 1 and 2, and each value is stored zero-extended at +4, +8 and +0xc. Bit 0x10000 goes into the current context's +0x13cc word, and the count check at 0x1028 gates the write.

- `__glOdylc_Color3uiv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51d10
  **Inferred.** Copies three unsigned 32-bit words from a0 into a four-word packet headed 0xc580cc0a. The lw loads at offsets 0, 4 and 8 are the only reads of the argument. The context dirty bit 0x10000 is set, and a failed fit returns with 0x1030 holding the pointer minus four.

- `__glOdylc_Color3usv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51f40
  **Inferred.** Packs three unsigned halfwords, read from a0 with lhu, into a four-word packet headed 0xc580cc09. Values are zero-extended to words and written at +4, +8 and +0xc. The routine marks 0x10000 in the current context and calls the GOT flush at gp-0x7140 when fewer than four words, plus any pad, remain.

- `__glOdylc_Color4bv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52170
  **Inferred.** Expands four signed bytes at a0 with lb (offsets 0 to 3) into a five-word packet headed 0xc580d012. The values land at +4, +8, +0xc and +0x10. Success moves the pointer 0x14 bytes, lowers 0x1028 by five plus the pad and raises 0x1034 by five.

- `__glOdylc_Color4d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52290
  **Inferred.** Takes four doubles in f12 to f15 and narrows each with cvt.s.d into a five-word packet headed 0xc580d015. f12 is written at +4, f13 at +8, f14 at +0xc and f15 at +0x10. The 0x60-byte frame keeps the doubles in f4 to f7 across the flush call, and the current context gets bit 0x10000.

- `__glOdylc_Color4dv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda523d0
  **Inferred.** Reads four doubles from a0 at offsets 0, 8, 0x10 and 0x18, narrows each with cvt.s.d, and writes them to +4, +8, +0xc and +0x10 of a five-word packet. The header is 0xc580d015, the same as the register-argument double form. The routine sets 0x10000 in the current context.

- `__glOdylc_Color4f` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52500
  **Inferred.** Stores the four float arguments f12 to f15 directly, with no conversion, in a five-word packet headed 0xc580d015. Each register is copied to f4 to f7 before the flush call and reloaded afterwards. A zero flush return stores the pointer minus four to 0x1030 and adds one to 0x1028.

- `__glOdylc_Color4fv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52630
  **Inferred.** Loads four floats from a0 with lwc1 at offsets 0, 4, 8 and 0xc and writes them to +4 through +0x10 of a five-word packet headed 0xc580d015. The copy is word for word, so nothing is narrowed. Bit 0x10000 goes into the current context at +0x13cc before the fit check.

- `__glOdylc_Color4iv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52870
  **Inferred.** Copies four 32-bit words from a0 into a five-word packet headed 0xc580d014. The lw loads read offsets 0 through 0xc. The routine sets the 0x10000 dirty bit and uses the same write pointer and counters as the other color forms.

- `__glOdylc_Color4sv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52ab0
  **Inferred.** Reads four halfwords from a0 with lh at offsets 0, 2, 4 and 6 and writes them as sign-extended words into a five-word packet headed 0xc580d013. A short count calls the GOT flush at gp-0x7140 with zero before the write is retried.

- `__glOdylc_Color4ubv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52cf0
  **Inferred.** Packs four unsigned bytes from a0 into a five-word packet with header 0xc580d00f. lbu reads offsets 0 to 3 and the values land at +4 to +0x10. Dirty bit 0x10000 is set in the current context before the count is checked, and a zero flush return records one more pending word at 0x1028.

- `__glOdylc_Color4uiv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52f30
  **Inferred.** Writes four 32-bit words from a0 into a packet headed 0xc580d011, one lw per word. Success lowers 0x1028 by five and raises 0x1034 by five. The 0x10000 flag is set in the context word at +0x13cc.

- `__glOdylc_Color4usv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53170
  **Inferred.** Copies four unsigned halfwords from a0, loaded with lhu at offsets 0 to 6, into a five-word packet headed 0xc580d010. Each value is zero-extended and stored at +4 to +0x10. The routine sets 0x10000 in the current context and uses the shared count check.

- `__glOdylc_Indexd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53290
  **Inferred.** Takes one double in f12, narrows it to single precision with cvt.s.d and stores it at +4 of a two-word packet headed 0xc580c407. Index packets set 0x20000 in the current context at +0x13cc, not the 0x10000 used by the color forms. The double is kept at 0x18(sp) across the flush call.

- `__glOdylc_Indexdv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda533a0
  **Inferred.** Reads a double from a0 with ldc1, narrows it with cvt.s.d, and writes the float to +4 of a two-word packet headed 0xc580c407. Two words plus the optional pad must fit under 0x1028. The context word at +0x13cc receives 0x20000.

- `__glOdylc_Indexf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda534b0
  **Inferred.** Writes the single-precision argument in f12 unchanged to +4 of a two-word packet headed 0xc580c407. The float is copied into f4 and saved in the frame across the flush call. Bit 0x20000 goes into the context's +0x13cc word.

- `__glOdylc_Indexfv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda535b0
  **Inferred.** Loads one float from a0 with lwc1 and stores it at +4 of an eight-byte packet headed 0xc580c407. Only the first word of the argument array is read. The routine marks 0x20000 in the current context and applies the same fit check against 0x1028.

- `__glOdylc_Indexi` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda536b0
  **Inferred.** Stores the integer argument a0 as a full word at +4 of a two-word packet headed 0xc580c406. The function does no masking of its own. a0 is saved to 0x18(sp) before the flush call and reloaded after it, and bit 0x20000 is set in the current context.

- `__glOdylc_Indexiv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda537b0
  **Inferred.** Copies one 32-bit word from a0 into the second slot of a two-word packet. The header 0xc580c406 is assembled in v1 and stored at the packet start, which sits one word later when the pad applies. The fallback stores the pointer minus four to 0x1030.

- `__glOdylc_Indexs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda538b0
  **Inferred.** Passes the argument register a0 straight to +4 of a two-word packet headed 0xc580c406, with no halfword narrowing. The argument is saved across the GOT flush call and reloaded. Index dirty bit 0x20000 is set in +0x13cc.

- `__glOdylc_Indexsv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda539b0
  **Inferred.** Reads one halfword from a0 with lh and writes it sign-extended to +4 of a two-word packet with header 0xc580c406. The header is built in v1 before the packet is stored. Count and pointer updates match the other two-word index forms.

- `__glOdylc_Indexub` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53ab0
  **Inferred.** Places a0 as a whole word at +4 of a two-word packet headed 0xc580c406. The value is not masked here. The context's 0x20000 dirty bit is set before the fit check, and a0 is kept in the frame across the flush call.

- `__glOdylc_Indexubv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53bb0
  **Inferred.** Loads one unsigned byte from a0 with lbu and writes it to +4 of a two-word packet with header 0xc580c406. The header stays in v1 until the packet is stored. The routine sets the index dirty bit at +0x13cc and follows the common fit and fallback path.

- `__glOdysseyInitCI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53f50
  **Inferred.** Initialises the colour-index state of a new context whose pointer arrives in a0, with a1 pointing at a second structure. It calls one GOT-held function with the context first, then stores table addresses at +0xa0 to +0xbc, each a constant offset from one GOT-held base at gp-0x7fe4. It also stores GOT-held words at +0xb0, +0xb4 and +0xc8, and writes one float loaded from gp-0x3bc4 to eight words between +0x58 and +0x94. The index width is read from a1+0xcac: a mask of (1 shifted by that width) minus one goes to +0x48 and +0x98 when the width is below 32, and -1 otherwise. A class word of 1, 2 or 4 goes to +0x18 for widths below 9, from 9 to 16, and 17 or more.

- `InitialFree` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda554a0
  **Inferred.** Forwards to one GOT-held function at gp-0x7f04 with the argument registers untouched. It keeps ra in an 0x20-byte frame, and the callee's v0 is what it returns.

- `InitialDestroyContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda554c0
  **Inferred.** Saves the context pointer in fp, then takes a branch-and-link to InitialFree at 0xda554a0. The link returns into the next instruction, which calls a GOT-held function at gp-0x6944 with the saved context as its argument. So the context is handed to that second function after InitialFree has run.

- `DestroyContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda55510
  **Inferred.** Writes the context pointer into the current-context word at 0x1010 for the duration of the teardown. The old value is kept on the stack, or replaced by zero when it equals the context being destroyed, and written back at return. Four flags at context +0x1684c, +0x16850, +0x16838 and +0x1683c are each tested, and a non-zero one calls the function pointer at +0xc with the context. Several GOT-held calls follow, with the context as argument in three of them. The function pointer at +0x30 runs next, then the words at +0x1683c and +0x16838 are cleared. The routine ends by branch-and-linking to InitialDestroyContext at 0xda554c0 after it writes zero to +0x7a6c.

- `CopyContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5af80
  **Inferred.** Picks one of two out-of-line routines from bit 0 of the word at +0xa8 in the first argument. Bit set: the call goes through the GOT slot at gp-0x7f10. Bit clear: it goes through the slot at gp-0x6b58. The arguments reach the callee unchanged, the routine stores nothing itself, and its return value is whatever the callee returns.

- `__glOdysseyInitIgloo` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5c640
  **Inferred.** Edits three flag words in the context block at offsets 0x168d4, 0x168ec and 0x168f4. Bit 0x400 is OR-ed into the first, the second is set to 1, and bit 0 is OR-ed into the third. It writes 2 to the absolute word at 0x1018. Then it loads the routine pointer at +0x2d60 and calls it with the context as its argument, on every path.

- `pack_ub` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5edd0
  **Inferred.** Copies the low byte of each 32-bit word in a1 into consecutive bytes at a2, for a0 words. The leftover words that do not fill a group of four go first, one at a time, and the rest go four per pass with a 16-byte stride on the source. A zero count returns at once. The routine has no return value.

- `pack_us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5ee60
  **Inferred.** Writes the low halfword of each 32-bit word in a1 into consecutive halfwords at a2, for a0 words. The source reads and the loop shape match the byte variant, but each store is two bytes and the destination advances 8 bytes per group of four. A zero count returns at once, and there is no return value.

- `__glOdysseyValidate` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda57460
  **Inferred.** Runs the validation steps a context in a0 still owes, each gated by a flag word. A non-zero word at offset 0x168d4 calls `__glOdysseyValidateContext` at 0xda58da0. A non-zero word at +0x2d44 calls the pointer at +0x2db4 with the context. A non-zero word at 0x168d0 calls `__glOdysseyValidateHardware` at 0xda57700. The routine ends by clearing the byte at 0x168e4.

- `HWInit` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda59df0
  **Inferred.** Writes 0x4000 to the context word at 0x16b7c, then calls the pointer at +0x28 and the pointer at +0x2c, each with the context and 0x4000 as arguments. The second result is stored at +0x7a68 and again at +0x7a6c. If that result is -1 the routine returns 0. Otherwise it calls the routine at 0xda54db0, then a GOT-slot routine with the context. A zero result from that call makes it call the pointer at +0x30 and return 0, and any other result returns 1.

- `__glOdysseyValidateScissor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda58ca0
  **Inferred.** Re-sends the scissor box to the command port only when it changed. The box is cached as two words at context +0x7b40 and +0x7b44 and is compared with the words at 0x16648 and 0x1664c. A matching pair returns at once. Otherwise it stores the new pair, and if the flag at 0x9750 was set it clears that flag and writes 0x10443, 0xfa, 0x10046 and 0x10046 to 0x4000. It then always writes 0x1081d and the two cached words to 0x4000. Unless bit 16 of the word at +0x7a90 is set, it calls the GOT-slot routine at gp-0x7770 with the context, 0x6f64000d and a four-word stack array holding the 12-bit fields of the two cached words.

- `__glOdyle_TexImage1D` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5dc80
  **Inferred.** Forwards a 1D texture-image call from an argument block in a0 to the implementation at the absolute slot 0x1100. Before the call it saves 11 words of the current context at +0x4a4 on the stack and loads 11 words from the address in the GOT slot gp-0x43bc into that block. The arguments are the block words at offsets 0, 4, 8 and 0xc in a0 to a3, the words at 0x10, 0x14 and 0x18 in t0 to t2, and the block address plus 0x20 in t3. After the call the saved words go back into the context. The return value is the block address plus 0x20 plus the word at offset 0x1c rounded up to a multiple of four.

- `InterpretNormal` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5f440
  **Inferred.** Dispatches a normal-vector command. The selector in a1 must be 0x16 to 0x19, and any other value returns at once. Selectors 0x16 and 0x17 first call a helper at 0xda5eef0 or 0xda5ef80 with a0 unchanged, the source pointer as the second argument and a stack buffer as the third, then call the dispatch-table entry at +0x5ec or +0x60c with that buffer. Selectors 0x18 and 0x19 call the entries at +0x604 and +0x5fc directly with the source pointer in a0. The table pointer is read from offset 0x17ec of the context that the global at 0x1010 points to.

- `InterpretTexCoord` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5f520
  **Inferred.** Dispatches a texture-coordinate command. The selector in a1 minus 0x1e indexes a jump table and only 0x1e to 0x25 are accepted, so other values return at once. Each case calls one dispatch-table entry with the source pointer in a0, through the table pointer at offset 0x17ec of the context at the global 0x1010. The entries used are at offsets 0x65c, 0x624, 0x61c, 0x644, 0x63c, 0x664, 0x684 and 0x67c, in the order the case code appears.

- `__glOdyim_ListParameterfvSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5f620
  **Inferred.** Checks the arguments of a list-parameter call, then passes the data on. A word at 0x1018 equal to 1 reports 0x502 through the GOT-slot routine at gp-0x6938. A value in a1 other than 0x8182 reports 0x500 the same way, and a zero value in a0 reports 0x501. Otherwise it calls the routine at gp-0x64f8 with the context, the word at +0x1338 and a0 as its arguments. A non-zero result is an object that gets a float at +0x2c. That float is the first float at the a2 pointer, replaced by one constant when it is below a double constant, by a second constant when it is above another double constant, and kept otherwise. The routine then calls the routine at gp-0x64f0 with the context and the object.

- `__glOdyim_ListParameterfSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5f750
  **Inferred.** Hands a float list parameter to the routine at 0xda5f620 by address. It spills the float in f14 to 0x20(sp), points a2 at that slot and calls the shared body with a0 and a1 unchanged. The frame is 0x30 bytes, and gp and ra are saved in it.

- `__glOdyim_ListParameterivSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5f790
  **Inferred.** Reads the integer through a2, converts it with mtc1 and cvt.s.w into a float slot at 0(sp), then calls the routine at 0xda5f620 with a2 aimed at that slot. Its frame is 0x40 bytes, with gp at 0x10(sp) and ra at 8(sp).

- `__glOdyim_ListParameteriSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5f7e0
  **Inferred.** The integer arrives in a2 already. The routine converts it to a float in f0, stores it at (sp), and calls 0xda5f620 with a2 set to sp. The frame is 0x40 bytes.

- `__glOdyim_GetListParameterfvSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5f820
  **Inferred.** Checks the word at absolute 0x1018 first: when it is 1, it reports 0x502 through the routine in GOT slot $gp-0x6938 and returns. Otherwise a1 must be 0x8182 (the list-priority token), or 0x500 is reported. A zero list handle reports 0x501. For a non-zero handle it asks the lookup at $gp-0x64f8 for a record, passing the context, the word at context +0x1338 and the handle. A non-null record gives its float at +0x2c, which is stored through the output pointer in a2, and then the routine at $gp-0x64f0 is called with the record. The frame is 0x40 bytes.

- `__glOdyim_GetListParameterivSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5f920
  **Inferred.** Reads the integer currently at its output pointer, converts it to a float in a scratch slot at 0(sp), and calls GetListParameterfvSGIX at 0xda5f820 with a2 aimed at that slot. Afterwards it truncates the float with trunc.w.s and stores the word through the saved output pointer, which it keeps in fp. The frame is 0x40 bytes.

- `__glOdysseyIsBboxClippedRange2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda606b0
  **Inferred.** A bounding-box test that makes no calls and writes no memory. It reads the box values at a1+0x18, a1+0x1c and a1+0x20, scales each by a float from the context block (a0 is the context pointer), and adds or subtracts a second context float. It returns 1 when the value it compares lies below one of two bounds, and 0 otherwise.

- `__glOdyle_Begin` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda60ae0
  **Inferred.** Calls the routine whose address is stored at absolute 0x106c, passing the word at (a0) as its argument. It then returns a0 plus 4, which advances an argument cursor by one word. The frame is 0x30 bytes.

- `__glOdyle_End` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda60b30
  **Inferred.** Calls the routine whose address sits at absolute 0x107c with its argument register unchanged. It returns that same argument, since fp holds a0 from before the call. The frame is 0x30 bytes.

- `__glOdysseyDlistInitState` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda60b80
  **Inferred.** Zeroes the absolute words at 0x1028, 0x102c, 0x1030 and 0x1034, and the context words at +0x13c4 to +0x13d0 and +0x13d4. It stores two pointers at +0x13b0 and +0x13ac, both built from words reached through gp. It then reads a byte and a word at context +0x20000 less 0x633c and 0x632c. A zero byte or a non-positive word clears the flag byte at context +0x16948; otherwise that byte is set to 1 and float defaults are written into the context. In both paths, a 24-word table is copied into +0x1cd0 when the word there differs from the value at $gp-0x7684. The frame is 0x30 bytes.

- `callSetError` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda60d30
  **Inferred.** Passes the first word of the argument block to the routine in GOT slot $gp-0x6938, the same slot the list-parameter code uses for GL error codes. It returns the cursor a0 plus 4. The frame is 0x30 bytes.

- `RemoveIlists` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda612f0
  **Inferred.** Compares a0 with the signed count at context +0x13d4, where the context pointer comes from absolute 0x1010. If a0 is not below the count, it returns the count unchanged. Otherwise it calls the routine at context +8 with the context, the word at +0x13d0 and (count minus a0) times 8. It stores the callee's return value to +0x13d0, stores count minus a0 to +0x13d4, and returns the callee's value.

- `__glOdysplc_End` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda615c0
  **Inferred.** Reads the flag byte at context +0x16948. When it is set, the routine keeps running minimum and maximum floats at +0x16924 to +0x16944 from the inputs at +0x168f8 to +0x1690c and two differences of those inputs. Both paths then call the routine in GOT slot $gp-0x54c4. The frame is 0x10 bytes.

- `__glOdysplc_CallList` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda616e0
  **Inferred.** Clears the byte at context +0x16948 before calling through the slot at $gp-0x71b0. The frame is 0x20 bytes.

- `__glOdysplc_CallLists` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61730
  **Inferred.** The frame is 0x30 bytes. The routine zeroes the context byte at +0x16948, then calls through $gp-0x71ac.

- `__glOdysplc_PopAttrib` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61780
  **Inferred.** Zeroes the byte at context +0x16948 and forwards the call through $gp-0x5358, reserving 0x10 bytes of stack.

- `__glOdysplc_EvalCoord1d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda617d0
  **Inferred.** Reads the context pointer from absolute 0x1010, zeroes the byte at +0x16948, then calls the routine in slot $gp-0x5340. Frame 0x20 bytes.

- `__glOdysplc_EvalCoord1dv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61820
  **Inferred.** Before calling through $gp-0x533c, it clears the context byte at +0x16948. The stack frame is 0x20 bytes and the callee's result is returned unchanged.

- `__glOdysplc_EvalCoord1f` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61870
  **Inferred.** Forwards to the routine in slot $gp-0x5338 once the context byte at +0x16948 is zero. Frame 0x20 bytes.

- `__glOdysplc_EvalCoord1fv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda618c0
  **Inferred.** Clears the byte at context +0x16948 before calling through the slot at $gp-0x5334. The frame is 0x20 bytes.

- `__glOdysplc_EvalCoord2d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61910
  **Inferred.** The frame is 0x20 bytes. The routine zeroes the context byte at +0x16948, then calls through $gp-0x5330.

- `__glOdysplc_EvalCoord2dv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61960
  **Inferred.** Zeroes the byte at context +0x16948 and forwards the call through $gp-0x532c, reserving 0x20 bytes of stack.

- `__glOdysplc_EvalCoord2f` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda619b0
  **Inferred.** Reads the context pointer from absolute 0x1010, zeroes the byte at +0x16948, then calls the routine in slot $gp-0x5328. Frame 0x20 bytes.

- `__glOdysplc_EvalCoord2fv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61a00
  **Inferred.** Before calling through $gp-0x5324, it clears the context byte at +0x16948. The stack frame is 0x20 bytes and the callee's result is returned unchanged.

- `__glOdysplc_EvalMesh1` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61a50
  **Inferred.** Forwards to the routine in slot $gp-0x5320 once the context byte at +0x16948 is zero. Frame 0x30 bytes.

- `__glOdysplc_EvalMesh2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61aa0
  **Inferred.** Clears the byte at context +0x16948 before calling through the slot at $gp-0x5318. The frame is 0x40 bytes.

- `__glOdysplc_EvalPoint1` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61af0
  **Inferred.** The frame is 0x20 bytes. The routine zeroes the context byte at +0x16948, then calls through $gp-0x531c.

- `__glOdysplc_EvalPoint2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61b40
  **Inferred.** Zeroes the byte at context +0x16948 and forwards the call through $gp-0x5314, reserving 0x20 bytes of stack.

- `__glOdysplc_Frustum` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61b90
  **Inferred.** Reads the context pointer from absolute 0x1010, zeroes the byte at +0x16948, then calls the routine in slot $gp-0x52d4. Frame 0x40 bytes.

- `__glOdysplc_LoadIdentity` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61c30
  **Inferred.** Before calling through $gp-0x52d0, it clears the context byte at +0x16948. The stack frame is 0x10 bytes and the callee's result is returned unchanged.

- `__glOdysplc_Ortho` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61be0
  **Inferred.** Forwards to the routine in slot $gp-0x52b8 once the context byte at +0x16948 is zero. Frame 0x40 bytes.

- `__glOdysplc_MultMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61d20
  **Inferred.** Clears the byte at context +0x16948 before calling through the slot at $gp-0x52c0. The frame is 0x20 bytes.

- `__glOdysplc_MultMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61d70
  **Inferred.** The frame is 0x20 bytes. The routine zeroes the context byte at +0x16948, then calls through $gp-0x52bc.

- `__glOdysplc_PopMatrix` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61dc0
  **Inferred.** Zeroes the byte at context +0x16948 and forwards the call through $gp-0x52b4, reserving 0x10 bytes of stack.

- `__glOdysplc_Rotated` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61e10
  **Inferred.** Reads the context pointer from absolute 0x1010, zeroes the byte at +0x16948, then calls the routine in slot $gp-0x52ac. Frame 0x30 bytes.

- `__glOdysplc_Rotatef` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61e60
  **Inferred.** Before calling through $gp-0x52a8, it clears the context byte at +0x16948. The stack frame is 0x30 bytes and the callee's result is returned unchanged.

- `__glOdysplc_Scaled` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61eb0
  **Inferred.** Forwards a glScaled call from the display-list compile table. The frame is 0x30 bytes and gp is rebuilt from t9 with the constant 0x180158. In the delay slot of the indirect call it stores a zero byte at the context pointer plus 0x16948, the context pointer being the word at 0x1010. The routine comes from the GOT slot at gp minus 0x52a4, and the arguments a0 to a3 pass through untouched.

- `__glOdysplc_Scalef` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61f00
  **Inferred.** Compile-table stub for the single-precision scale entry point. Its GOT slot is at gp minus 0x52a0, and the gp constant 0x180108 is added to t9. A zero byte lands at context plus 0x16948 just before the call, then the routine receives the original float arguments in f12 and f14.

- `__glOdysplc_Translated` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61f50
  **Inferred.** Stub that the compile table uses for the double-precision translate call. The slot sits at gp minus 0x529c. Before dispatching it clears the byte at the context pointer plus 0x16948 and keeps ra and gp in its 0x30-byte frame.

- `__glOdysplc_Translatef` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61fa0
  **Inferred.** The single-precision translate entry in the compile table. Its frame is 0x30 bytes and its GOT slot is at gp minus 0x5298. Nothing touches v0 between the indirect call and the return, so the callee's result reaches the caller unchanged.

- `__glOdysplc_Viewport` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61ff0
  **Inferred.** Compile-table forwarder for the viewport call. It reads the context pointer from 0x1010 on each run, zeroes the byte at that context plus 0x16948, and calls through the slot at gp minus 0x5294. The gp constant is 0x180018.

- `__glOdysplc_DrawElements` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda62040
  **Inferred.** Draw-elements stub in the compile table. Its slot is at gp minus 0x7154, the gp constant is 0x17ffc8, and the frame is 0x30 bytes. The context byte at 0x16948 is cleared in the call's delay slot.

- `__glOdysplc_DrawArraysEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda62090
  **Inferred.** Compile-table forwarder for the EXT array draw. The slot is at gp minus 0x7158 and gp is built from 0x17ff78. It zeroes the context byte at 0x16948 and then makes the indirect call with its arguments intact.

- `__glOdyim_ArrayElementEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda620e0
  **Inferred.** Immediate-mode stub for the EXT array-element call. Unlike its neighbours it allocates a 0x20-byte frame. The GOT slot is at gp minus 0x5dfc, and the byte at context plus 0x16948 is zeroed before the call.

- `__glsplc_AddSentinel` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda62130
  **Inferred.** Appends a sentinel slot to a list whose base is the word at 0x1030 and whose count is the word at 0x1034. When the count is zero it moves the base back by one word, bumps the counter at 0x1028, and makes a single call with a1 zero. When the count is nonzero it computes the address base minus four times the count minus four, stores the count there, and calls through the GOT slot at gp minus 0x713c with the context word at 0x13b0 as the first argument. It then makes a second call with a1 zero and the GOT word at gp minus 0x49f8 as the first argument.

- `ExecuteDlist` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda621d0
  **Inferred.** Runs one display-list record. The second argument's word at +0x14 gives a data pointer; the word there supplies the low two bits, and the masked bits 2 to 4 are saved in the context. It also writes -1 and the data pointer into context words at 0x1696c and 0x16968, clears three bytes, and stores data plus four at 0x16960. Then it calls a GOT routine with the word at record +0x10. If the flag byte at 0x16967 is set, it writes 1 to data+0x40 when the byte at 0x16966 is zero, or 0 when it is set. Only in the first case does it copy four floats from the context area at 0x94d8 to data+0x30 through +0x3c.

- `ExecuteDlistNomem` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda622a0
  **Inferred.** Error path for a failed display-list allocation. It passes 0x505 (GL_OUT_OF_MEMORY) as the sole argument to the routine in the GOT slot at gp minus 0x6938, which is the slot the mesh routines use for 0x500 and 0x502. It keeps a 0x20-byte frame and returns the result of that call.

- `__glOdysseySPBalloc` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda62480
  **Inferred.** Allocator front end. If the count word at a1 is below 0x400 it is raised to 0x400 and written back. It then calls the function pointer stored at the first word of a0, passing the count times four as the second argument, and returns that result. The first argument is not changed.

- `__glOdysseySPBfree` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda624d0
  **Inferred.** Release side of the same allocator pair. It loads a function pointer from offset 0xc of its first argument and calls it with the arguments unchanged, filling the delay slot with a nop. The frame is 0x20 bytes.

- `__glOdysseySPCompMachdep` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda62510
  **Inferred.** Machine-dependent helper that first calls `makeDLState` at 0xda622e0 with its original arguments. Afterwards it reads the word at the record's +0x14 offset and stores one of two code addresses at +0x8: the GOT-based address plus 0x22a0 when that word is zero, otherwise the GOT-based address plus 0x21d0. The choice is made with a conditional move, not a branch.

- `__glOdyim_EvalCoord1dv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda625b0
  **Inferred.** Loads the double at the pointer in a0, converts it to single in f13, and calls `__glOdysseyDoEvalCoord1` at 0xda63a20 with the context pointer from 0x1010 as its first argument.

- `__glOdyim_EvalCoord1fv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda62630
  **Inferred.** Single-precision counterpart of the 1d entry. It keeps the pointer in at, loads the float it points to into f13, and calls `__glOdysseyDoEvalCoord1` with the context from 0x1010. No conversion is needed.

- `__glOdyim_EvalCoord2dv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda626b0
  **Inferred.** Reads two doubles from the array at a0, converting the first to f13 and the second to f14. It then calls `__glOdysseyDoEvalCoord2` at 0xda68d00 with the context pointer from 0x1010.

- `__glOdyim_EvalCoord2f` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda62700
  **Inferred.** Passes its two float arguments to `__glOdysseyDoEvalCoord2` in the order f12 then f13, moving them through f0 and f14 so the callee sees u in f13 and v in f14. The context pointer comes from the word at 0x1010.

- `__glOdyim_EvalCoord2fv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda62740
  **Inferred.** Takes the two floats from the array at a0 (index 0 into f13, index 1 into f14) and calls `__glOdysseyDoEvalCoord2` with the context pointer from 0x1010.

- `__glOdyim_EvalMesh1` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda62780
  **Inferred.** Mesh entry for a one-dimensional grid. If the word at 0x1018 is 1 it reports 0x502 through the GOT slot at gp minus 0x6938 and returns. If it is 2, it calls the function at context offset 0x2d60 and clears 0x1018. The mode in a0 must be 0x1b01, which goes to `__glOdysseyEvalMesh1Line`, or 0x1b00, which goes to `__glOdysseyEvalMesh1Point`; any other mode reports 0x500.

- `__glOdyim_EvalPoint1` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda62870
  **Inferred.** Evaluates one grid point on a one-dimensional mesh. The index is in a0 and the grid count is the word at context +0x794. When the index equals the count the coordinate is the high bound at +0x78c; otherwise it is the low bound at +0x788 plus the index times the step, where the step is the span divided by the count. The result goes to `__glOdysseyDoEvalCoord1`.

- `__glOdyim_EvalMesh2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda628e0
  **Inferred.** Two-dimensional mesh entry with the same 0x1018 handling as the one-dimensional case: 1 reports 0x502, 2 calls the context function at 0x2d60 and clears the word. Mode 0x1b02 goes to `__glOdysseyEvalMesh2Fill`, 0x1b01 to `__glOdysseyEvalMesh2Line` and 0x1b00 to `__glOdysseyEvalMesh2Point`. Other modes report 0x500 through the GOT slot at gp minus 0x6938.

- `__glOdyim_EvalPoint2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda62a30
  **Inferred.** Evaluates one point of a two-dimensional grid. The first index in a0 is mapped against the u count at +0x7a4 and the bounds at +0x798 and +0x79c; the second index in a1 is mapped against the v count at +0x7b4 and the bounds at +0x7a8 and +0x7ac. Each value is the low bound plus index times step, except that an index equal to its count takes the high bound. The pair is passed to `__glOdysseyDoEvalCoord2`.

- `RestoreCurrentState` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda63620
  **Inferred.** Replays a saved state record at a1 into the context a0. The flags word at a1 decides which parts are restored: bit 1 calls the context dispatch table entry at offset 0x5cc with a1+4, and if bit 1 is clear, bit 0 calls the entry at 0x594 with the same pointer. Bit 3 calls the entry at 0x67c with a1+0x24, and bit 2 calls the entry at 0x5fc with a1+0x14. The table is reached through the pointer at context +0x17ec.

- `__glOdysseyDoEvalCoord1` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda63a20
  **Inferred.** Wraps one-dimensional evaluation in a saved state. It calls `GetCurrentState` at 0xda63370 with mode 1 and a stack buffer, then the unnamed routine at 0xda636f0 with the context and the coordinate kept in f30, and finally `RestoreCurrentState` at 0xda63620 on the same buffer.

- `__glOdysseyDoEvalCoord2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda68d00
  **Inferred.** Two-dimensional counterpart of the one-dimensional wrapper. It saves state with `GetCurrentState` at mode 2, keeps v in a stack slot across the calls, invokes the unnamed routine at 0xda687d0 with the context, both coordinates and a pointer 0x48 bytes into the saved buffer, then calls `RestoreCurrentState` on that buffer.

- `__glOdysseyEvalMesh1Line` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda68d90
  **Inferred.** Draws a one-dimensional mesh as a line strip. It returns at once if the grid count at +0x794 is zero. Otherwise it saves state, calls the begin entry at dispatch offset 0x1c with mode 3, and for each index from a1 through a2 evaluates u equal to the low bound at +0x788 plus index times the step, except the last index, which uses the high bound at +0x78c. Each value goes to the unnamed routine at 0xda636f0, and the end entry at offset 0x2c closes the strip before the state is restored.

- `__glOdysseyEvalMesh1Point` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda68ee0
  **Inferred.** Same loop as the line variant with begin mode 0 instead of 3, so each sample is a point. It uses the same grid count at +0x794, bounds at +0x788 and +0x78c, the unnamed routine at 0xda636f0 for each sample, and the end entry at offset 0x2c.

- `CubicBezierFitConstant` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda6c3e0
  **Inferred.** Fills four single-precision outputs from the input array in a0. Output element 0 is input element 1 (the float at +4). Elements 1 to 3 are written as 0.0, loaded from the pool constant at gp-0x3bc0. The routine makes no calls.

- `CubicBezierFitLinear` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda6c400
  **Inferred.** Takes input elements 1 and 3 (offsets +4 and +12) and writes a linear control set. Output 0 is input 1, output 1 is input 3 minus input 1, and outputs 2 and 3 are 0.0. No calls.

- `Phi` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda6c430
  **Inferred.** Selects one of four polynomials in x, where x is the float in f13, by the integer in a0. Selector 0 returns 1.0. Selector 1 returns x - 0.5. Selector 2 returns (x - 1/3)(x - 2/3). Selector 3 returns (x - 0.75)(x - 0.5)(x - 0.25). The double constants come from the gp pool, the products are formed in double precision, and the result is converted back to single precision. Any other selector returns 0.0.

- `Det3` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda6c4c0
  **Inferred.** Computes the determinant of a 3x3 matrix in single precision, with the first row in f12 to f14, the second in f15 to f17, and the third in f18, f19 and the caller's first stack word. That word is loaded from 0x40(sp) after the routine opens a 0x40-byte frame, which is the caller's sp+0. Written with a=f12, b=f13, c=f14, d=f15, e=f16, f=f17, g=f18, h=f19 and i for the stack word, the routine returns a(ei - fh) - b(di - fg) + c(dh - eg) in f0. It uses fused multiply-add and multiply-subtract forms and makes no calls.

- `__glOdyim_Fogf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda6dbc0
  **Inferred.** Scalar fog setter that only forwards. Names 0xb61 to 0xb65 pass through: the float in f13 is spilled at 0x18(sp), and its address goes with the unchanged name to `__glOdyim_Fogfv` at 0xda6d750. Any other name reports 0x500 through `__glSetError`. The routine reads no state word at 0x1018.

- `__glOdyim_Fogi` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda6e0d0
  **Inferred.** Integer fog setter with the same name check as the scalar fog routine. The integer in a1 is spilled at 0x1c(sp) and its address goes to `__glOdyim_Fogiv` at 0xda6dc50. Names outside 0xb61 to 0xb65 call `__glSetError` with 0x500.

- `__glOdyim_FragmentLightfSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda6ee60
  **Inferred.** Scalar setter for a fragment light parameter. The parameter in a1 must be 0x1205, 0x1206, 0x1207, 0x1208 or 0x1209. The float in f14 is spilled at 0x20(sp), and its address is passed as a2 to `__glOdyim_FragmentLightfvSGIX` at 0xda6e8e0, with a0 unchanged. Any other value reports 0x500 through `__glSetError`.

- `__glOdyim_FragmentLightiSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda6f4c0
  **Inferred.** Integer counterpart of the scalar fragment-light setter. The integer in a2 is spilled at 0x24(sp) and handed by address to `__glOdyim_FragmentLightivSGIX` at 0xda6eef0. Parameter codes 0x1205 to 0x1209 are the only ones forwarded, and anything else reports 0x500.

- `__glOdyim_FragmentLightModelfSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda6f820
  **Inferred.** Scalar setter for the fragment light-model parameter. Only 0x8408, 0x8409 and 0x840b are forwarded. The float in f13 goes to 0x18(sp) and its address goes to `__glOdyim_FragmentLightModelfvSGIX` at 0xda6f550. Other codes report 0x500 through `__glSetError`.

- `__glOdyim_FragmentLightModeliSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda6fae0
  **Inferred.** Integer form of the light-model setter, with the same three accepted codes. The integer in a1 is stored at 0x1c(sp), and the routine calls `__glOdyim_FragmentLightModelivSGIX` at 0xda6f8a0 with that address. An unaccepted code calls `__glSetError` with 0x500.

- `__glOdyim_FragmentMaterialfSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda70e90
  **Inferred.** Scalar material setter that accepts only the property 0x1601. The float in f14 is written to 0x20(sp), and the face in a0 plus that stack address go to `__glOdyim_FragmentMaterialfvSGIX` at 0xda70d90. Any other property reports 0x500 through `__glSetError` and stores nothing.

- `__glOdyim_FragmentMaterialiSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda71490
  **Inferred.** Integer material setter. Property 0x1601 is the only one passed on: the integer in a2 is spilled at 0x24(sp) and the call goes to `__glOdyim_FragmentMaterialivSGIX` at 0xda71390. A property other than 0x1601 reports 0x500 through `__glSetError`.

- `__glOdysseyInitFragmentLighting` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda715f0
  **Inferred.** Writes the fragment-lighting defaults into the context in a0. The context base plus 0x1663c receives 0x408, plus 0x16640 receives 0x1602, and plus 0x168e0 receives 1. The floats at plus 0x1654c, 0x1655c and 0x1657c are 1.0, the one at 0x1656c is -1.0, and the one at 0x16578 is 180.0. The routine makes no calls and does not read the word at 0x1018.

- `__glOdyim_LightEnviSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda71650
  **Inferred.** Sets the light-environment mode. The target in a0 must be 0x8407 and the mode in a1 one of 0x104, 0x1e01 or 0x2100. On success the mode is stored at context +0x16644 of the current context (the pointer read from 0x1010), bit 0x80 is set in the word at context +0x168d0, and 2 is written to 0x1018. A target or mode that does not match reports 0x500 through `__glSetError`. If the word at 0x1018 is 1 when the routine starts, it reports 0x502 instead.

- `GetTexDim` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda71720
  **Inferred.** Maps a texture target in a0 to its dimension count. Targets 0xde0 and 0x8063 return 1. Targets 0xde1, 0x8064 and 0x8095 return 2. Targets 0x806f and 0x8070 return 3. Every other value returns 0.

- `__glim_FragmentMaterialfvSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda70c50
  **Inferred.** Front end for the vector material setter. It loads the float at the pointer in a2 into f14 and calls `__glErrorCheckMaterial` at 0xdb02eb0 with face and property; a nonzero result goes to `__glSetError`. Face 0x404 stores through the block at context +0x16588, face 0x405 through the block at context +0x165d8, and face 0x408 stores to the back block and then the front block. The stores are made by a routine at 0xda70af0 that has no symbol. Other faces store nothing.

- `__glOdyim_FragmentMaterialfvSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda70d90
  **Inferred.** Vector material setter. It calls the checking routine `__glim_FragmentMaterialfvSGIX` at 0xda70c50 with the same arguments and does not test its return, so the dispatch below runs even after an error was reported. Face 0x404 calls the helper at 0xda6fb60 with the context plus 0x7b90, face 0x405 with the context plus 0x7bb0, and face 0x408 makes the 0x7b90 call and then the 0x7bb0 call. Other faces return with nothing stored.

- `__glim_FragmentMaterialivSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda711f0
  **Inferred.** Integer front end for the material setter. If the word at 0x1018 is 1 it reports 0x502 through `__glSetError` and returns. Otherwise it converts the integer at the pointer in a2 to float in f14 and calls `__glErrorCheckMaterial` at 0xdb02eb0 with face and property; a nonzero result goes to `__glSetError`. Face 0x404 dispatches to the helper at 0xda70ef0 with the context plus 0x16588, face 0x405 with the context plus 0x165d8, and face 0x408 to the back block and then the front block.

- `__glOdyim_FragmentMaterialivSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda71390
  **Inferred.** Integer material setter wrapper. It calls `__glim_FragmentMaterialivSGIX` at 0xda711f0 and ignores the result. Face 0x404 calls the helper at 0xda70250 with the context plus 0x7b90, face 0x405 with the context plus 0x7bb0, and face 0x408 makes both calls, the 0x7b90 one first. Other faces return without storing.

- `__glOdyim_FragmentColorMaterialSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda714f0
  **Inferred.** Picks which material property tracks the current colour. The face in a0 must be 0x404, 0x405 or 0x408, and the property in a1 one of 0x1200, 0x1201, 0x1202, 0x1600 or 0x1602. A face or property outside those sets reports 0x500 through `__glSetError`. A word at 0x1018 equal to 1 reports 0x502 first. On success the face is stored at context +0x1663c and the property at +0x16640, bit 0x80 is OR-ed into the word at +0x168d4, and 2 is written to 0x1018.

- `__glOdyim_GetTexLevelParameterfv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda717b0
  **Inferred.** Returns one texture-level parameter as a single float through the pointer saved at sp. A word at 0x1018 equal to 1 reports 0x502 through the error reporter, and a zero result from the lookup at gp-0x77f0 reports 0x500. The level in a1 must be non-negative and below the count at context +0xe8c, otherwise 0x501 is reported. The name in a2 is tested against 0x1000 to 0x1005 and against 0x805c, 0x805d, 0x805e, 0x805f, 0x8060, 0x8061 and 0x8071; each matching branch converts one context word with cvt.s.w and stores it. Name 0x1000 reads the word at +0x1c and name 0x8061 reads the word at +0x40.

- `__glOdyim_GetTexLevelParameteriv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda71b30
  **Inferred.** Integer counterpart of the float query, with the same error codes in the same cases: 0x502 for a word at 0x1018 of 1, 0x500 for a zero lookup result, and 0x501 for a level outside the range up to +0xe8c. Its branches store context words with sw directly, so the caller receives the raw integers. Name 0x1000 writes the word at +0x1c and name 0x8061 writes the word at +0x40.

- `__glOdyim_GetClipPlane` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda71e30
  **Inferred.** Copies the four coefficients of one clip plane into the caller's buffer as doubles. The plane name in a0 must lie in 0x3000 to 0x3005, and a name outside that range reports 0x500. The coefficient table at context +0x6d4 holds 16 bytes per plane, so plane 0x3000 plus k starts at table offset 16k. Each single-precision word is widened with cvt.d.s and stored at offsets 0, 8, 0x10 and 0x18 of the buffer in a1. A word at 0x1018 equal to 1 reports 0x502 instead.

- `__glOdyGetFromHardware` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda71f20
  **Inferred.** Issues one command to the hardware command port at absolute address 0x4000 and waits for the sequence echo. The mode in a1 selects command 0x4c0, 0x4c1, 0x4c2 or 0x4c3 for modes 0 to 3, and any other mode sends 0x4c0. The routine writes that code, then writes the next value of the sequence word at +0x7c of the block whose pointer sits at a0 + 0x16c34. It does a dummy read of 0x4004 through the pointer at a0 + 0x16b7c, then spins until the sequence word equals the new value. It always returns 0.

- `__glOdyGetFromShadow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda72760
  **Inferred.** Looks up one shadow-state record and decodes it. It first calls __glOdyGetFromHardware with the caller's first two arguments, and a negative return skips the decode. The caller's third argument is the record index: the record base is the pointer at a0 + 0x16c34, each record is 20 bytes, and the decode target is base plus 20 times the index. It calls __glOdyDecodeShadowFormat at 0xda71fc0 with that address, the caller's fourth argument and the caller's fifth argument (t0).

- `__glOdyim_GetIntegerv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda73070
  **Inferred.** Forwards an integer state query to __glOdysseyDoGet at 0xda727f0. It passes its own first two arguments, the type code 3 in a2, and a table address in a3 made from the GOT entry at gp-0x7f6c plus 0x2df8.

- `__glOdyim_GetBooleanv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda730b0
  **Inferred.** Boolean query that hands off to __glOdysseyDoGet at 0xda727f0 in the same way as the integer entry. Only the type code, 4 instead of 3, and the table offset, 0x2e08 instead of 0x2df8, differ.

- `__glOdysseyUpdateRasterPos` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda730f0
  **Inferred.** Refreshes raster-position state from the hardware. It calls __glOdyGetFromHardware with mode 3 on the board pointer in a0. On a non-negative result it reads the byte at context +0xc8c. When that byte is zero it decodes the record at offset 0x28 against the context itself, and otherwise it decodes the record at offset 0x3c against the context word at +0x180. Both paths then decode the record at offset 0x50 against context +0x120, and the routine finishes by clearing the byte at a0 + 0xa65c.

- `__glOdyim_GetDetailTexFuncSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda73d50
  **Inferred.** Returns the detail-texture function points for the 2D target. The target in a0 must equal 0xde1, and any other value reports 0x500. A word at 0x1018 equal to 1 reports 0x502 instead. The current texture object comes from the routine at gp-0x77f0. The point count at +0x548 and the source pointer at +0x54c are read from it, and 8 bytes per point are copied into the caller's buffer through the GOT routine at gp-0x435c.

- `__glOdyim_GetFogFuncSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda73f90
  **Inferred.** Copies the fog function table out of the context. When the word at 0x1018 is 1 it reports 0x502 and returns. Otherwise it reads the count at context +0x164c4 and copies count times 8 bytes from the table at context +0x164c8 into the caller's buffer through the routine at gp-0x435c. It performs no name check.

- `__glOdyim_GetMaterialfv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda73e10
  **Inferred.** Reads a material property as floats. When bit 0x80 of the context word at +0x700 is set, it compares the face in a0 and the property in a1 with the colour-material pair kept at +0x568 and +0x56c. A tracked face of 0x408 covers faces 0x404 and 0x405, and a tracked property of 0x1602 covers properties 0x1200 and 0x1201. On a match it calls through the context table at +0x17ec, entry +0x1f0, with 0xb00 and the caller's a2. Otherwise it jumps to the generic routine at gp-0x6770 with its arguments unchanged.

- `__glOdyim_GetMaterialiv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda73ed0
  **Inferred.** Integer form of the material query. It uses the same bit 0x80 test and the same face and property pairing as the float form. Two details differ: the table call reads entry +0x1f4 instead of +0x1f0, and the fallback is the GOT slot at gp-0x676c instead of gp-0x6770.

- `__glOdyim_lmcolor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda74d70
  **Inferred.** Sets or clears bit 0 of the word at context +0x7a60 from the flag in a0. The bit is set only when a0 equals 1. The routine then stores 2 to the word at 0x1018 and sets bit 0 of the word at context +0x2d44. Unlike its neighbours it does not test 0x1018, so it never reports an error.

- `__glOdyim_FullScreen` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda74db0
  **Inferred.** Records the full-screen flag and forwards a request to the routine at gp-0x7770. The flag, stored as a word at context +0x168f0, is 1 when a1 is nonzero and 0 when it is zero. The request code is 0x3f1, passed with the context and a block on the stack built from a0, a1, the word at context +0x7a6c (stored twice) and the constants 2, 3 and a byte 6.

- `__glOdyim_PixelTransferf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda76ef0
  **Inferred.** Forwards its arguments unchanged to the routine whose address is loaded from the GOT slot at gp-0x711c. It adds no checks or stores of its own.

- `__glOdyim_PixelTransferi` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda76f30
  **Inferred.** Integer-argument entry for the pixel transfer. It converts the integer in a1 to single precision in f13 with cvt.s.w, then calls __glOdyim_PixelTransferf at 0xda76ef0 and leaves the other argument registers alone.

- `__glOdyim_PixelZoom` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda76e80
  **Inferred.** Stores the x and y pixel-zoom factors as given. The float in f12 goes to the context word at +0x2e8 and the float in f13 to +0x2ec, with no rounding. A word at 0x1018 equal to 1 reports 0x502 through the error reporter. Otherwise the word at 0x1018 becomes 2 and bit 4 is set in the context word at +0x2d44.

- `__glOdyim_ConvolutionParameterfEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda78f70
  **Inferred.** Scalar float entry for convolution parameters. Only pname 0x8013 is accepted here. The float in f14 is spilled to the stack, and the address of that slot goes to `__glOdyim_ConvolutionParameterfvEXT` at 0xda78d90 together with the target and pname. Any other pname reports 0x500 through the GOT error call at gp-0x6938.

- `__glOdyim_ConvolutionParameteriEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda791e0
  **Inferred.** Integer twin of the float scalar entry. It accepts only pname 0x8013 and spills the int in a2. The address of that slot is passed to `__glOdyim_ConvolutionParameterivEXT` at 0xda78fd0. Other pnames report 0x500.

- `__glOdyim_ConvolutionParameterfvEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda78d90
  **Inferred.** Vector float setter for convolution parameters. A state word of 1 reports 0x502. The target in a0 goes to a GOT routine at gp-0x7a60, and a zero return reports 0x500. Pname 0x8014 copies four floats from the caller's vector into the record at +0x10 through +0x1c. Pname 0x8015 copies them to +0x20 through +0x2c, and 0x8154 copies them to +0x30 through +0x3c. Pname 0x8013 truncates the first float to an integer and stores the one matching constant among 0x8016, 0x8151, 0x8153, 0x8150 and 0x8152 at +4. Any other pname reports 0x500.

- `__glOdyim_ConvolutionParameterivEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda78fd0
  **Inferred.** Integer version of the vector setter, with the same 0x502 guard and the same GOT lookup on the target. Pnames 0x8014 and 0x8015 convert four ints to floats into the +0x10 and +0x20 blocks. Pname 0x8013 compares the first int with the same five border constants and stores the match at +4. Pname 0x8154 does no copy of its own. It calls the GOT routine at gp-0x66c4 with the context, the vector pointer and the address of record offset +0x30.

- `__glOdyim_PixelTexGenParameterfSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7a860
  **Inferred.** Scalar float setter for pixel texture generation. Pname 0x8354 or 0x8355 in a0 is accepted. The float in f13 is spilled, and its stack address is handed to `__glOdyim_PixelTexGenParameterfvSGIS` at 0xda7a8d0. Other names report 0x500 and return. This entry does not read the 0x1018 state word itself.

- `__glOdyim_PixelTexGenParameteriSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7a640
  **Inferred.** Integer counterpart of the scalar float setter. It takes pname 0x8354 or 0x8355 in a0 and the int in a1. The int is spilled at sp+0x1c and passed by address to `__glOdyim_PixelTexGenParameterivSGIS` at 0xda7a6b0. Other pnames report 0x500.

- `__glOdyim_PixelTexGenParameterivSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7a6b0
  **Inferred.** A state word of 1 at 0x1018 reports 0x502. For pname 0x8354 the int behind the pointer in a1 must be 0x8356 or 0xb04, and it is stored at context +0x11d08. Pname 0x8355 takes the same two accepted values and stores at context +0x11d0c. Any other value or pname reports 0x500.

- `__glOdyim_GetPixelTexGenParameterivSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7a7b0
  **Inferred.** Reads the pixel texgen setting back. A state word of 1 reports 0x502. Pname 0x8354 loads the word at context +0x11d08 and pname 0x8355 loads the word at +0x11d0c, and each is stored through the pointer in a1. Other pnames report 0x500.

- `__glOdyim_GetPixelTexGenParameterfvSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7a9f0
  **Inferred.** Float twin of the integer getter, with the same 0x502 guard and the same name split. The words at +0x11d08 and +0x11d0c are zero-extended from 32 bits, converted to float with cvt.s.l, and stored through a1.

- `RenderFunc_TextureColor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7ca60
  **Inferred.** Render callback for a texture-colour op. It loads the pointers at +0x44 and +0x48 of its argument, passes +0x44 as a1 and +0x48 as a0, and forwards its own a1 as a2. It sets a3 to 1 and calls a routine through the GOT slot at gp-0x7a10. The return value is 1.

- `RenderFunc_CopyColor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7cb40
  **Inferred.** Render callback for a copy-colour op, the sibling of the texture callback at 0xda7ca60. The operands are the same. The GOT call at gp-0x7a1c receives a3 as 0 and t0 as 1. The return value is 1.

- `ImageChainOpCreate` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7afe0
  **Inferred.** Allocates one 0x54-byte op through the context's first function slot, called with size 0x54. The block is cleared through the GOT call at gp-0x4370 and returned. When the allocation returns null, the routine reports 0x505 and returns zero.

- `ImageChainAddOpTextureColor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7c9d0
  **Inferred.** Builds a texture-colour op on top of the op creator at 0xda7afe0. It writes type word 2, sets the flag at +0xc to 1, stores the texture callback pointer at +4, and ORs 0x2c into +8. It then passes the chain, the new op and the caller's two arguments to `ImageChainAddOp` at 0xda7b380. The return value is 1, or 0 if the op could not be created.

- `ImageChainAddOpCopyColor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7cab0
  **Inferred.** Same flow as the texture variant, for a copy-colour op. The type word is 3, the flag at +0xc is 1, and +4 holds the address of the copy-colour callback, which matches the offset pattern of `RenderFunc_CopyColor`. It ORs 0xc into +8 before `ImageChainAddOp` at 0xda7b380 runs. The return value is 1, or 0 when creation fails.

- `ImageChainAddOpLut` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7cb90
  **Inferred.** Adds a lookup-table op. The type word is 7, the flag at +0xc is 1, and the caller's second argument is stored at +0x38. A callback pointer goes to +4, and 0xe is ORed into +8. The chain's word at +8 is passed as the fourth argument to `ImageChainAddOp`. The return value is 1, or 0 when creation fails.

- `ImageChainOpFree` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7b1f0
  **Inferred.** Releases one op. A null op returns at once. The buffer at +0x14 is freed through the context's free slot at +0xc when it is set. The buffer at +0x44 is freed the same way, but only when the byte it points to is nonzero. The op is then cleared with the GOT call at gp-0x4370 over 0x54 bytes and freed through +0xc.

- `__glOdysseyImageChainFree` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7af30
  **Inferred.** Tears down a chain. It walks the op list hanging off chain+4, linked through each op's +0x4c word, and calls `ImageChainOpFree` on every op. The first three words of the chain are then zeroed, and the chain is released through the context's free slot at +0xc.

- `ImageChainBuildChain` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7c920
  **Inferred.** Dispatches on the chain type word at +0x10. Types 1, 2 and 3 go to `ImageChainBuildColorChain` at 0xda7b8d0, type 4 goes to `ImageChainBuildStencilChain` at 0xda7c860, and type 5 goes to `ImageChainBuildDepthChain` at 0xda7c7a0. Any other type returns 0. For the three builders the result is returned as its low byte.

- `__glOdysseyGetSeparableFilter` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda787b0
  **Inferred.** Computes a size as 4 times the word at +0x3b4 times the words at +0x3e8 and +0x3ec, and adds it to the word at +0x3f8. That sum is stored back to +0x3f8 in the delay slot of a GOT call at gp-0x6cdc, which takes the context pointer. The old value is written back from the stack after the call. No return value is set here.

- `ImageChainOpAllocateFilters` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7b050
  **Inferred.** Gives an op a table of n filter blocks. The allocation is n times 0xb60 bytes from the context's first function slot, and the pointer goes to op+0x14 with n at op+0x10. For each block, counting down from the last, the GOT routine at gp-0x7a64 is called on sub-buffers at offsets 0, 0x2d0, 0x5a0 and 0x870. Five words from 0xb40 to 0xb50 are then zeroed, and the GOT routine at gp-0x7a28 runs on the block. A zero count clears op+0x14 and returns. On allocation failure the routine reports 0x505 and frees the op through the context's +0xc slot.

- `ImageChainOpCreateScratchImage` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7b290
  **Inferred.** Creates a 0x38-byte op with type byte 1 and records the caller's argument at +0x34. When that argument is 1, the words at context +0x11d14 and +0x11d10 go to +0x1c and +0x20, and +0x18 receives the truncated double returned by the GOT call at gp-0x4358 on the word at +0x11d14 scaled by a float constant. For any other argument, +0x10 and +0x14 take those two words and +0x18 is set to 1. An allocation failure reports 0x505 and returns zero.

- `ImageChainBuildDepthChain` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7c7a0
  **Inferred.** Picks a helper by two flags. If the word at +0x34 of the op at chain+0x14 is zero, the GOT routine at gp-0x7510 runs. Otherwise the same flag on the op at chain+0x18 selects gp-0x6930 when it is zero and gp-0x61f0 when it is nonzero. Before those calls the floats at context +0x290 and +0x2a4 are loaded into f13 and f14. The return value is 1 if the helper's low byte is nonzero, and 0 otherwise.

- `ImageChainBuildStencilChain` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7c860
  **Inferred.** Passes the chain in a0, the word at context +0x2f0 in a1, the word at +0x2f4 in a2 and the byte at +0x2f9 in a3 to a GOT helper. The helper is gp-0x6f10 when the op flag at +0x34 is zero. Otherwise the flag of the op at chain+0x18 selects gp-0x6560 when it is zero and gp-0x5aa0 when it is nonzero. The return value is 1 when the helper's low byte is nonzero.

- `__glOdysseyDrawPixels` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7a520
  **Inferred.** Wraps the draw routine at 0xda75f80 and forwards its arguments one slot down, so the callee gets the caller's a1, a2, a3, t0 and t1 as a0 through a3 and t0. When the flag in t2 is nonzero, the eleven words at context +0x4a4 are saved on the stack, overwritten with the eleven-word default block that the GOT slot at gp-0x43bc points to, and restored after the call.

- `ImageChainAddOpHistogramMinmax` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda881e0
  **Established.** Builds one chain op from its four incoming arguments through ImageChainOpCreate and returns 0 when that call gives null. Otherwise it writes kind 0xa at op+0, 1 at op+0xc and the pointer 0xda88270 at op+4 (the GOT word at gp-0x7fd4 less 0x7d90, RenderFunc_HistogramMinmax). It ORs 0xc into op+8, calls ImageChainAddOp with arg0, the op, the word at arg0+8 and 0, then returns 1.

- `ImageChainAddOpPixelTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda88600
  **Established.** Same create-and-register shape as its neighbours: ImageChainOpCreate with the incoming arguments, null returns 0. The op kind is 0xb, +0xc is set to 1, and op+4 gets 0xda88690 (the GOT word at gp-0x7fd4 less 0x7970, RenderFunc_PixelTexture). Word op+8 is ORed with 0xe. ImageChainAddOp receives arg0, the op, the word at arg0+8 and 0.

- `ImageChainAddOpColorZoom` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda8bb00
  **Established.** Kind 0xc goes to op+0 and 1 to op+0xc. The render pointer at op+4 is 0xda8bb90, from the GOT word at gp-0x7fd4 less 0x4470 (RenderFunc_ColorZoom). The word at op+8 gets 0x2c ORed in. The routine then calls ImageChainAddOp(arg0, op, [arg0+8], 0) and returns 1 on the success path.

- `ImageChainAddOpIndexZoom` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda8bbe0
  **Established.** Kind 0xd at op+0 and 1 at op+0xc, with op+4 set to 0xda8bc70 (the GOT word at gp-0x7fd4 less 0x4390). The op+8 word is ORed with 0x2c. A zero ImageChainOpCreate result makes it return 0; otherwise ImageChainAddOp gets arg0, the op, [arg0+8] and 0, and the return value is 1.

- `ImageChainAddOpDownloadDepth` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda88af0
  **Established.** Its two floating-point arguments, f13 and f14, are spilled at sp and sp+8 before the ImageChainOpCreate call and stored afterwards as single-precision words: f14 at op+0x28 and f13 at op+0x18. Kind 0xe goes to op+0, the word at op+8 gets 0x1a ORed in, and op+4 is 0xda88b90 (GOT word at gp-0x7fd4 less 0x7470, RenderFunc_DownloadDepth). The call is ImageChainAddOp(arg0, op, [arg0+4], 1), and the routine returns 1.

- `ImageChainAddOpDownloadStencil` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda890f0
  **Established.** Kind 0xf is stored at op+0. The integer arguments a1 and a2 are converted with cvt.s.w and stored at op+0x18 and op+0x28. The low byte of a3 is written at op+0x3d with sb. Op+4 is 0xda891b0 (GOT word at gp-0x7fd4 less 0x6e50, RenderFunc_DownloadStencil). Op+8 is ORed with 0x1a and op+0xc gets 1. ImageChainAddOp receives arg0, the op, [arg0+4] and 1, and the routine returns 1.

- `ImageChainAddOpReadbackDepth` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda896d0
  **Established.** Kind 0x10 goes to op+0, but op+0xc is cleared where the other depth ops set it to 1. Floats f13 and f14 land at op+0x18 and op+0x28 through the same sp spill as the download variant. The pointer at op+4 is 0xda89770 (GOT word at gp-0x7fd4 less 0x6890, RenderFunc_ReadbackDepth) and op+8 is ORed with 0x14. The call is ImageChainAddOp(arg0, op, [arg0+8], 0), and the routine returns 1.

- `ImageChainAddOpReadbackStencil` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda89aa0
  **Established.** Kind 0x11 at op+0 and op+0xc cleared to 0. The integer a1 goes to op+0x18 and a2 to op+0x28, each after cvt.s.w; a3 is stored as a byte at op+0x3d. Op+4 is 0xda89b60 (GOT word at gp-0x7fd4 less 0x64a0, RenderFunc_ReadbackStencil). Op+8 gets 0x14 ORed in. ImageChainAddOp is called with arg0, the op, [arg0+8] and 0, and the routine returns 1.

- `ImageChainAddOpCopyDepth` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda89e10
  **Established.** Kind 0x12 at op+0, 1 at op+0xc, and op+8 ORed with 0x1c. The two float arguments are written to op+0x18 (from f13) and op+0x28 (from f14). Op+4 becomes 0xda89eb0, the GOT word at gp-0x7fd4 less 0x6150 (RenderFunc_CopyDepth). ImageChainAddOp runs as (arg0, op, [arg0+4], 1), and the routine returns 1.

- `ImageChainAddOpCopyStencil` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda8a560
  **Established.** The stencil copy op takes kind 0x13 and sets op+0xc to 1. Integer a1 is converted to float at op+0x18, integer a2 at op+0x28, and the byte from a3 goes to op+0x3d. Op+4 is 0xda8a620 (GOT word at gp-0x7fd4 less 0x59e0, RenderFunc_CopyStencil). Op+8 is ORed with 0x1c. The result of ImageChainAddOp(arg0, op, [arg0+4], 1) is ignored and the routine returns 1 after it.

- `ImageChainAddOpScaleBias` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda82080
  **Established.** After ImageChainOpCreate and a null check, the op gets kind 5 and op+0xc gets 1. It copies four floats from the a1 pointer to op+0x18 through op+0x24 and four from the a2 pointer to op+0x28 through op+0x34. Op+4 is 0xda82170 (the GOT word at gp-0x7fd8 plus 0x2170, RenderFunc_ScaleBias), and op+8 is ORed with 0xe. It then calls ImageChainOpAllocateFilters(op, 1) at 0xda7b050, calls ImageChainAddOp(arg0, op, [arg0+8], 0), and returns 1.

- `__glOdysseyImageChainAddOpAcceptSignedDataFromHost` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda83040
  **Established.** Kind 4 goes to op+0, and op+4 is 0xda83190 (the GOT word at gp-0x7fd8 plus 0x3190, RenderFunc_AcceptSignedDataFromHost). The routine copies the first three floats of the a1 pointer to op+0x18 to op+0x20 and of the a2 pointer to op+0x28 to op+0x30. The fourth float, at +0xc of each pointer, goes to op+0x24 and op+0x34 only when the a3 value is 0x190a, 0x1906 or 0x1908. For any other a3 value, op+0x24 is set to the float at gp-0x3bc0 (zero in this image) and op+0x34 is the sum of the two fourth floats. Op+8 is ORed with 0x1a and the routine ends with ImageChainAddOp(arg0, op, [arg0+8], 0) and a return of 1. A null ImageChainOpCreate result returns 0.

- `ImageChainAddOpDownloadColor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda8ac80
  **Established.** Kind 0 is stored at op+0 and op+0xc is set to 1. Op+4 is the GOT word at gp-0x7ae4, which is 0xda8ad50 (__glOdysseyRenderFunc_DownloadColor). Four floats from the pointer saved from a3 go to op+0x18 to op+0x24, and four floats from the fifth argument (t0) go to op+0x28 to op+0x34. Op+8 is ORed with 0x1a. The chain call is ImageChainAddOp(arg0, op, arg1, arg2), and the routine returns 1.

- `RenderFunc_ColorZoom` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda8bb90
  **Established.** Sets up gp from its own address and calls __glOdysseyImageMovePixelsTexture at 0xdaa0180 through the GOT slot at gp-0x7a10. The arguments are a0 set to the word at a0+0x48, a1 set to the word at a0+0x44, a2 set to the incoming a1, and a3 set to 1. It returns 1 after the call.

- `LoadTextureFilter` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda849c0
  **Inferred.** Copies filter words for the record selected by a1. The record offset is 0xb60 times a1, built by the shift and subtract sequence at 0xda849c0 to 0xda849f0. The record base is the word at a0+0x14 plus that offset. The routine copies 16 words from record+0x270 to the context at context+0x8b08 and writes 2 to context+0x8b04, then copies 8 words from record+0x2b0 to context+0x8c0c with 2 at context+0x8c08. Three words from record+0xb54, +0xb58 and +0xb5c go to context+0x8c8c, +0x8c90 and +0x8c94. The context pointer is the word at 0x1010, and the routine ORs 0x38000 into the word at context+0x168d0. It stores 2 to the absolute word at 0x1018 on return.

- `RenderFunc_IndexZoom` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda8bc70
  **Inferred.** Hands a zoom request on to `__glOdysseyImageMovePixelsTexture` at 0xdaa0180. It loads the word at +0x44 of the first argument into a1 and the word at +0x48 into a0, then calls the callee with the second argument as a2 and the constant 1 as a3. The callee's result is dropped, and the routine always returns 1.

- `ImageChainAddOpIndexShiftOffset` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda8bcc0
  **Inferred.** Creates one image-chain operation and links it in. It calls `ImageChainOpCreate` at 0xda7afe0 with all four argument registers passed through, and returns 0 if that gives NULL. Otherwise it writes the word 6 at +0x0 of the new op, the address of `RenderFunc_IndexShiftOffset` (0xda8bd90) at +0x4, bit 1 ORed into the word at +0x8, and zero at +0xc. It also stores 0.0 at +0x1c, +0x20, +0x24, +0x2c, +0x30 and +0x34, and stores whatever f1 and f2 held on entry at +0x28 and +0x18. Last, it calls `ImageChainAddOp` at 0xda7b380 with the first argument, the new op, the word at +0x8 of the first argument and 0, and returns 1.

- `RenderFunc_IndexShiftOffset` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda8bd90
  **Inferred.** Packs the parameters of one index-shift step into its own frame and calls `__glOdysseyImageConvertHostImage` at 0xda8fe80. The first argument's floats at +0x18 and +0x28 go to frame offsets 0 and 4, and the argument registers a2 through a7 and the saved v1 and at values go to the rest of the frame. The callee gets the word at +0x48 of the first argument as its first argument, the word at +0x44 as its third, frame addresses as its second, fourth and fifth, and 0 as its sixth. The routine returns 1 after the call.

- `__glOdysseyInitLerpTree` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda91d00
  **Inferred.** Clears a 0x2d0-byte block at the first argument with `memset` through the GOT, then writes the float 1.0 (0x3f800000, from the literal at 0xdbde444) into sixteen word offsets of that block. Those offsets are +0x0, +0x24, +0x8c, +0x90, +0x94, +0xb8, +0x120, +0x124, +0x128, +0x14c, +0x1b4, +0x1b8, +0x1bc, +0x1e0, +0x248 and +0x24c. The routine returns the value `memset` returned.

- `__glOdysseyGetFilter` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda91d90
  **Inferred.** Picks a sub-block address out of the block whose pointer sits at absolute 0x1010. The first argument is compared with 0x8010, 0x8011 and 0x8012 in that order. Those return the pointer plus 0x300, plus 0x354 and plus 0x3a8, and any other value returns 0.

- `__glOdysseyInitConvolutionState` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda93a00
  **Inferred.** Resets convolution selection bytes in the block at the pointer from absolute 0x1010 plus 0x10000. If the word at absolute 0x1018 is 1, it calls `__glSetError` at 0xdb11f10 with 0x502, 0x1101, the pointer at 0x1010 and 0x10000, and returns. Otherwise it stores 0x1101 at +0x11900 and clears the bytes at +0x11aeb and +0x11ad0. A first argument of 0x8010 also clears +0x11ad1 and +0x11ae8, 0x8011 clears +0x11ae9 and +0x11ad2, and 0x8012 clears +0x11ad3 and +0x11aea. Any other first argument leaves those alone.

- `__glOdysseyImageCalcSuitableHostFormatForDownload` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda91900
  **Inferred.** Picks the host format and type for a readback, keyed on the second argument a2, and writes them through the output pointers in a3 and a4. A2 of 0 stores 0x1401 through a4 and leaves a3 alone. A2 of 3 stores 0x1403 through a4. A2 of 0x10 stores 0x1401 through a4. A2 of 0x11 stores 0x1403 through a4. Any other a2 stores 0x1908 through a3 and 0x1403 through a4. The routine returns 1 in every case.

- `ImageToDmaHostPixelSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa3150
  **Inferred.** Looks up one 32-bit value in a word table. The table base is the word in the global pointer slot at gp-0x7f6c plus 0x65b0. The argument a0 is the index, scaled by four, and the routine returns the word at that index. It has no range check.

- `__glOdysseyImageLogBase2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa5770
  **Established.** Returns the ceiling of log2 of the unsigned argument a0, and 0 when a0 is 0 or 1. The routine adds one to v0 when a0 & (a0 - 1) is nonzero, which is the test for a non-power of two, and then adds one for each further right shift of a0 until it reaches zero. A0 of 8 gives 3, and a0 of 6 gives 3.

- `__glOdysseyImageTilingFree` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa4fc0
  **Inferred.** Releases one tiling record, given in a0. A null record returns at once. Otherwise the routine calls the function at offset +0xc of the context with the context and the record's word at +8, then zeroes the record's words at +0, +4 and +8. It calls the same function a second time with the context and the record. The context is saved in the frame and gp is restored on return.

- `__glOdyim_GetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa5040
  **Inferred.** Gates a histogram query on bit 0x8 of the context word at +0x718. When the bit is set, it calls the routine at gp-0x7f2c with the context and 8, and returns at once if that routine returns zero. Otherwise it saves a0 to a3 and t0 in the frame and calls the routine at gp-0x6710 with them. If bit 0x8 is still set after that call, it calls the routine at gp-0x7f28 with the context and 8.

- `__glOdyim_GetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa5100
  **Inferred.** The minmax query has the same shape as the histogram query. Bit 0x8 of the context word at +0x718 selects a preliminary call to gp-0x7f2c with the context and 8, which ends the routine when it returns zero. The main call goes to gp-0x66f4 with the caller's arguments, and a final call to gp-0x7f28 with the context and 8 follows while the bit stays set.

- `multiplicative_inverse` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda94b60
  **Established.** Returns x with a0 * x congruent to 1 modulo a1, by the extended Euclidean algorithm. Two coefficient and remainder pairs live on the stack, starting from (1, a0) and (0, a1). Each pass sets q to the first remainder divided by the second, then replaces the pairs with (second, second remainder) and (first coefficient - q * second coefficient, first remainder - q * second remainder). The loop ends when the second remainder is zero. The result is the first coefficient, with a1 added when it is negative. For a0 of 3 and a1 of 7 the pairs go through quotients 0, 2 and 3, the first coefficient ends at -2, and the routine returns 5. For a1 of zero the routine returns 1.

- `__glOdysseyImageCalcTexOffset` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa2eb0
  **Inferred.** Checks two context words and stores a result word through a1. The word at a0+0x28 is the mode, and the word at a0+0x2c is the value. Mode 0 accepts values 0, 3 and 4, mode 1 accepts 1, and mode 2 accepts 0, 2 and 6. An accepted value stores 0 through a1, except that value 2 under mode 2 stores 2, and the routine returns 1. Any other combination reports 0x502 through the routine at gp-0x6938 and returns 0 without storing.

- `__glOdysseyCvtToInternalFmt` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda95520
  **Inferred.** Converts a run of a1 source pixels at a0, four floats each on a 16-byte stride, into 16-byte pixels at t1. The format enum in a2 selects the expansion. 0x1908 returns with no output. 0x1907 copies red, green and blue and stores alpha from a float at gp-0x3bc4. 0x1906 stores a float at gp-0x3bc0 in the three colour words and copies source alpha from +0xc. 0x1909 copies source red into all three colour words and stores the gp-0x3bc4 float as alpha. 0x190a copies source red into the colour words and source alpha from +0xc. 0x8049 copies source red into all four words. Any other format returns with no output.

- `__glOdysseyImageSaveUserBuzzRasterState` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa57b0
  **Inferred.** Copies a block of state from the context into a save block 0x10000 bytes above it. Scalar words and doublewords come from context offsets 0x7bd0 to 0x7bfc, 0x7b1c to 0x7b24, 0x7b54 to 0x7b5c and 0x7b7c, and go to save-block offsets 0x1af0 to 0x1bc0. Two loops copy 16 words from a table at save-block offset -0x74f8 to 0x1b4c, and 8 words from a table at -0x73f4 to 0x1b90. A last group of words read from save-block offsets between -0x74fc and -0x6a38 goes to 0x1b44 through 0x1bbc.

- `__glOdysseyImageCalcTexObjFormats` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa2d10
  **Inferred.** Maps an index in a0 to a pair of output words. An index of 0x12 or more returns 0 with no store. A smaller index jumps through a word table at gp-0x7f6c plus 0x3198, indexed by four times a0. The jump targets store words through a1 and a2 and return 1 through a shared exit. Most of them store immediate constants.

