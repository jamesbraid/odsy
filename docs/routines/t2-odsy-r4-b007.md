# Tier-2 routine roles, odsy batch 7

Role statements for 24 routines in the odsy kernel objects and the IP30 libGL and libGLcore builds. Each statement comes from the rendered facts for that routine: register use, memory offsets, branches, callees and constants. Every entry is graded inferred, because none of the facts settle what the routine is for. These are software observations about the code, not hardware behavior.

Dropped: the routine at 0x30 in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_tport.o)` that the inventory calls "the set graphics-context Odyssey driver request". Its header name is not a symbol, and the lint rejected the header with that name.

Located only, not understood: the entries for `other_prda`, `__glOdysseyHyperpipeStereo` and the Color, Normal and TexCoord display-list routines are held at located, because their role lines say a fact is not shown or that a reading is a guess from the name.

- `other_prda` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43a10 (n64)
  **Inferred.** Compares the word at a0+0x800 with the kernel static word at sym(.sbss)+284 (`lw` at 0x43a14, `beq` at 0x43a18). It returns the static word in both cases. On a mismatch it first stores to a0+0x800 at 0x43a20, and the stored value is not shown in the render. What the compare guards is not settled by these facts.

- `otherprda` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43a2c (n64)
  **Inferred.** Stores to a0+0x800 at 0x43a3c, then calls `get_kmod_info` at 0x43a4c with a0 = 0 and a2 = the static word at sym(.sbss)+284. The branch at 0x43a34 skips to 0x43a48 on a zero a0. The return at 0x43a40 is not traced. The callee name suggests a kernel module lookup, but the facts do not show what the result is used for.

- `gfP_OdsyCompositorRegAccess` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_compositor.o)` at 0xa5c (n64)
  **Inferred.** Copies a 12-byte request in from the caller at 0xa84, and a failed copy goes to a `cmn_err` log path at 0xb28. It then tests bit 0 of a1 at 0xa9c. When the bit is clear it calls `odsyCompositorRegRead` at 0xaa8 and copies the 12-byte result back with `copyout` at 0xac4. When the bit is set it calls `odsyCompositorRegWrite` at 0xaf0. The first argument for both comes from the pointer at a0+40. The return is the read status, 0, or 0xe. The render does not say what 0xe means.

- `gfP_OdsyI2CPassthrough` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_compositor.o)` at 0xb78 (n64)
  **Inferred.** Copies an 8-byte request in at 0xb9c and takes two mutexes from the state block at offsets 34064 and 34080 (`mutex_lock` at 0xbe4 and 0xbfc). It then calls `odsy_i2cDDCRegRead` at 0xc48 and a run of `odsy_i2cPLLRegWrite` calls from 0xc64 to 0xd10, with the constants 0x20, 0x30, 0x10 and 0x1f as arguments. The writes look like a clock-synthesizer setup sequence. The request fields at +46116 that select which writes run are not mapped in the render. Returns 0 or 0xe.

- `gfP_OdsyHPgetTopology` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` at 0x618 (n64)
  **Inferred.** Takes `odsy_hpipe_state_lock` with `mutex_spinlock` at 0x62c and reads the state pointer `OdsyHpipeState` at 0x644. If the state or its first word is missing it calls `odsy_hpipe_discover` at 0x690 first. It then copies 0x184 bytes from the state block at +4360 to the caller's buffer at 0x658, releases the lock, and returns the word at a3. The 388-byte copy fits a topology query, but the layout of that block is not traced.

- `gfP_OdsyHPqueryBestAttrib` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` at 0x1728 (n64)
  **Inferred.** Copies a 32-byte request in at 0x1740. If that copy fails (the `bnez` at 0x1748 branches to 0x17d8), it reports through `cmn_err` at 0x17e0 and returns 0xe. Otherwise it allocates a temporary buffer with `kmem_alloc` at 0x1754. When the allocation returns zero (the `bnez` at 0x1760 falls through), it stores 0xc and returns without a free. When the allocation succeeds, it copies a second block in at 0x177c, copies a result out at 0x17bc, and frees the buffer with `kmem_free` at 0x1798 on each of the remaining routes. Words are stored to a3 at 0x1768, 0x1790, 0x17d4 and one more. The return values 0xc and 0xe are probably the allocation and copy failure codes by usual errno convention, but the facts do not establish that. The meaning of the query result is not traced.

- `rrmResume` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2518 (n64)
  **Inferred.** Pins the calling thread with `rt_pin_thread` at 0x252c and looks up the target with `gthread_find` at 0x2540. For a found thread it takes the graphics list-reader lock (`GfxListReaderLock` at 0x2780) and a spin lock on the thread's state. Several paths call `rrmDoUnMapGfx` (0x27b0, 0x28d4, 0x2928). A `cpsema`/`vsema` pair with `splhi`/`splx` brackets a wait at 0x28b4 to 0x2920. One path returns the result of `rt_unpin_thread` at 0x26d4. The name says resume, and the callees fit a graphics remap during that step, but the thread-state fields are not traced well enough to settle the sequence.

- `ApplyParameterF` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd95e7cc (o32)
  **Inferred.** Dispatches on the token in a1 against 0x1200, 0x1201, 0x1202, 0x1600, 0x1601, 0x1602 and 0x1603. Those values match the published OpenGL material parameter enums (ambient, diffuse, specular, emission, shininess, ambient-and-diffuse, color indexes). For each token it reads floats from the vector at a2, stores them into the context at [0x1010], and calls `__glOdysseySetProgram` through the pointer at 0xd9dc0b8 with a2 = 0x33 or 0x39 and a3 = 0x8000. The enum match is a strong hint, but the render does not trace the stored fields to confirm it.

- `__glOdylc_Color3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5820 (n64)
  **Inferred.** Appends a Color3s command to a display-list buffer. It reads buffer state at abs 0x1048, 0x1058 and 0x1060, and calls `__glSPDlistSpace` through the pointer at 0x223fd50 with a4 = 0x10000 when there is no room. It stores the command words between 0x21a58d4 and 0x21a5958. The symbol tag and the state layout suggest a display-list compile of glColor3s. That is a guess from the name.

- `__glOdysseyHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239050 (n64)
  **Inferred.** Loads a word from the context at a0+0x285d8 and calls `__glOdysseyIoctl` through the pointer at 0x221da60 with request 0x6f640018, a4 = 0x10de68 and a5 taken from a0+165336. It returns 0 or 1 and makes no other call. The request's high bytes, 0x6f and 0x64, read as ASCII "od", which suggests an Odyssey ioctl group. The effect of request 0x18 is not shown.

- `isNotProxy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c1618 (n32)
  **Inferred.** Opens a device name from the string at 0xd8e0538 (`open` at 0xd8c1650, flags 0x802) and calls `fcntl` at 0xd8c1674 with arguments 0x2 and 0x5. It issues `ioctl` requests 0x65 and 0x66 against the descriptor, and the second is passed a buffer at sp-112. It scans a string with `strchr` for ':' and compares the following characters with '.' (0x2e). It closes the descriptor on its exit paths. It returns 1 on the path ending at 0xd8c1780 and 0 on the others. The name suggests a check for a direct display rather than a proxy, but the test that decides the result is not in the render.

- `RGBSendClippedBmFmTN` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacb950 (n32)
  **Inferred.** Reads a byte at a0+0xb8 and a block of single-precision values from a0 at +0x10 to +0x1c, +0x30 to +0x3c, +0x90 to +0xac, +0xc0 to +0xc8 and +0x170 to +0x188. It writes 75 single-precision and 20 integer words to the fixed address 0x4000 and makes no calls. The name suggests a clipped bitmap send, so this is probably one primitive record written to one port. The record layout and the meaning of the byte at +0xb8 are not traced.

- `__glOdylc_Color4b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb336530 (n64)
  **Inferred.** Appends a Color4b command to a display-list buffer. It reads list state at abs 0x1020, 0x1048, 0x1058 and 0x1060. It calls `__glSPDlistSpace` at 0xb33659c with a0 = 0 when the buffer has no room, and it writes the command words before returning the space result or the list pointer. The symbol tag suggests a display-list compile of glColor4b. That is a guess from the name.

- `ApplyMaterialF` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3541a0 (n64)
  **Inferred.** Dispatches on a1 against the same OpenGL material enum values as `ApplyParameterF` (0x1200 to 0x1603). It reads floats from the vector at a2 and stores them into the material block at a0+0x0 to +0x1c. It writes 21 words to the 0x4000 port and loads 16 words of context table at [0x1020]+0xa098 to +0xa0d4. It returns the word at [0x1020]+41160. The routine is 1764 bytes, and each token maps to its branch only through the constant comparisons.

- `__glOdylc_Normal3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb38e430 (n64)
  **Inferred.** Appends a Normal3s command to a display-list buffer. It reads list state at abs 0x1048, 0x1058 and 0x1060, and calls `__glSPDlistSpace` at 0xb38e484 when the buffer is full. It writes four words at 0xb38e4d4 to 0xb38e4dc and advances the list count at 0x1060. On the fast path it returns [0x1060]+4. The symbol tag suggests a display-list compile of glNormal3s. That is a guess from the name.

- `OpenPipeMemReference` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb38fa70 (n64)
  **Inferred.** Fills a descriptor in the block at a2+48 with 16-bit fields at +0x0, +0x2, +0x4 and +0x6, and writes 17 words to the 0x4000 port along with two words at a2+0x20 and a2+0x24. It calls `__glOdysseyMIPS_SYNC` at 0xb38fb7c and 0xb38fc08. On one path it calls `__glOdysseyIoctl` at 0xb38fbe0 with request 0x6f640003 and the descriptor. It returns 1 on one path and 0 on another, and the render does not show every condition that selects between them. The name suggests opening a memory reference for the pipe, but the descriptor fields are not traced.

- `__glOdylc_TexCoord1d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb394f40 (n64)
  **Inferred.** Appends a TexCoord1d command to a display-list buffer. It reads list state at abs 0x1048, 0x1058 and 0x1060, and calls `__glSPDlistSpace` at 0xb394f90 when the buffer is full. It stores one word and one single-precision value at 0xb394fdc and 0xb394fe0, then advances the count at 0x1060. On the fast path it returns [0x1060]+2. The symbol tag suggests a display-list compile of glTexCoord1d. That is a guess from the name.

- `glXDestroyHyperpipeConfigSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d9774 (o32)
  **Inferred.** Builds a request in the connection buffer at a0+108, with byte, halfword and word stores at offsets 0 to 0x10. It reads connection state at a0+1232 and a0+124. It calls `__glXSetupForCommand` at 0xd8d9798, sends the buffer with `_XFlush` at 0xd8d97e8, and waits for a reply with `_XReply` at 0xd8d9864 into a stack buffer at sp-40. It returns 0x5c on one path and an unknown value on another. The name matches a GLX SGIX hyperpipe request, so the render shows a round trip for a destroy call. The request layout is not traced.

- `__glOdylc_Color3b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda40620 (o32)
  **Inferred.** Appends a Color3b command to a display-list buffer. It reads list state at abs 0x1010, 0x1028, 0x1030 and 0x1034. It calls `__glSPDlistSpace` at 0xda4069c with a3 = [0x1028] when the buffer is full. It stores the command words at 0xda406f8 to 0xda40714 and updates the pointer at 0x1034. The flag bit 0x4 in 0x1030 selects a word count of 4 or 5. The symbol tag suggests a display-list color compile. That is a guess from the name.

- `__glOdylc_Color3ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda413fc (o32)
  **Inferred.** Appends a Color3ui command to a display-list buffer with the same list state as Color3b, at abs 0x1028, 0x1030 and 0x1034. It calls `__glSPDlistSpace` at 0xda41478 when the buffer is full. It stores the command words at 0xda414d4 to 0xda414f0 and updates the pointer at 0x1034 at 0xda4150c. The flag bit 0x4 in 0x1030 selects a word count of 4 or 5. The name suggests a display-list color compile, a guess from the symbol.

- `__glOdylc_Color3us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41648 (o32)
  **Inferred.** Appends a Color3us command to a display-list buffer, using list state at abs 0x1028, 0x1030 and 0x1034. It calls `__glSPDlistSpace` at 0xda416c4 when the buffer is full. It stores the command words at 0xda41720 to 0xda4173c and updates the pointer at 0x1034 at 0xda41758. The flag bit 0x4 in 0x1030 selects a word count of 4 or 5. The name suggests a display-list color compile, a guess from the symbol.

- `__glOdylc_Color4b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41894 (o32)
  **Inferred.** Appends a Color4b command to a display-list buffer, using list state at abs 0x1028, 0x1030 and 0x1034. It calls `__glSPDlistSpace` at 0xda41914 when the buffer is full. It stores the command words at 0xda41970 to 0xda4198c and updates the pointer at 0x1034 at 0xda419b0. The word count is 5 or 6, selected by a comparison with t3, and the flag bit 0x4 in 0x1030 picks the layout. The name suggests a display-list color compile, a guess from the symbol.

- `__glOdylc_Color4i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41fd8 (o32)
  **Inferred.** Appends a Color4i command to a display-list buffer, using list state at abs 0x1028, 0x1030 and 0x1034. It calls `__glSPDlistSpace` at 0xda42058 when the buffer is full. It stores the command words at 0xda420b4 to 0xda420d0 and updates the pointer at 0x1034 at 0xda420f4. The word count is 5 or 6, the same selection as Color4b. The name suggests a display-list color compile, a guess from the symbol.

- `__glOdylc_Color4s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda4223c (o32)
  **Inferred.** Appends a Color4s command to a display-list buffer, using list state at abs 0x1028, 0x1030 and 0x1034. It calls `__glSPDlistSpace` at 0xda422bc when the buffer is full. It stores the command words at 0xda42318 to 0xda42334 and updates the pointer at 0x1034 at 0xda42358. The word count is 5 or 6, the same selection as Color4b. The name suggests a display-list color compile, a guess from the symbol.
