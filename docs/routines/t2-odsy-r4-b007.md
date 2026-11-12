# Tier-2 routine roles, odsy batch 7

Role statements for 24 routines in the odsy kernel objects and the IP30 libGL and libGLcore builds. Each statement comes from the rendered facts for that routine: register use, memory offsets, branches, callees and constants. Every entry is graded inferred, because none of the facts settle what the routine is for. These are software observations about the code, not hardware behavior.

Dropped: the routine at 0x30 in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_tport.o)` that the inventory calls "the set graphics-context Odyssey driver request". Its header name is not a symbol, and the lint rejected the header with that name.

Located only, not understood: the entries for `other_prda`, `__glOdysseyHyperpipeStereo` and the Color, Normal and TexCoord display-list routines are held at located, because their role lines say a fact is not shown or that a reading is a guess from the name.

- `other_prda` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43a10 (n64)
  **Inferred.** Compares the word at a0+0x800 with the kernel static word at sym(.sbss)+284 (`lw` at 0x43a14, `beq` at 0x43a18). It returns the static word in both cases. On a mismatch it first stores to a0+0x800 at 0x43a20, and the stored value is not shown in the render. What the compare guards is not settled by these facts.
  Reviewed: 2026-11-12 (sonnet)

- `otherprda` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43a2c (n64)
  **Inferred.** The branch at 0x43a34 sends a zero a0 to 0x43a48, just before the `get_kmod_info` call at 0x43a4c. A nonzero a0 falls through to a store to a0+0x800 at 0x43a3c and a return at 0x43a40 whose value is not traced. The call has a0 = 0, a1 = sp-48, a2 = the static word at sym(.sbss)+284 and a3 as at entry. Role (from name): the callee name suggests a kernel module lookup; the facts do not show what the result is used for.
  Reviewed: 2026-11-12 (sonnet)

- `gfP_OdsyCompositorRegAccess` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_compositor.o)` at 0xa5c (n64)
  **Inferred.** Copies a 12-byte request in from the caller at 0xa84, and a failed copy goes to a `cmn_err` log path (the `cmn_err` at 0xb2c). It then tests bit 0 of a1 at 0xa9c. When the bit is set it falls through to `odsyCompositorRegRead` at 0xaa8, and then copies 12 bytes back with `copyout` at 0xac4. When the bit is clear it branches to 0xaec and calls `odsyCompositorRegWrite` at 0xaf0. The write path also has a `copyout` of 12 bytes at 0xb10. The first argument of both calls is the pointer at a0+40. The return is one of the read status, 0, 0xe or a value the render does not resolve. The render does not say what 0xe means.
  Reviewed: 2026-11-12 (sonnet)

- `gfP_OdsyI2CPassthrough` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_compositor.o)` at 0xb78 (n64)
  **Inferred.** Copies an 8-byte request in at 0xb9c; a failed copy goes to a `cmn_err` call at 0xbb4. Otherwise it locks the mutex at offset 34064 of the state block (`mutex_lock` at 0xbfc) and, only when the word at +46116 is nonzero, first locks the one at offset 34080 (`mutex_lock` at 0xbe4). Branches at 0xc30 and 0xc54 on registers the render leaves unresolved choose among the later calls. `odsy_i2cDDCRegRead` at 0xc48 is on the fall side of 0xc30. `odsy_i2cPLLRegWrite` at 0xc64 (a2 = 0x20) and 0xc80 are on the fall side of 0xc54. Calls at 0xcd8 (a2 = 0x30, a3 = 0x1f), 0xcf0 (a2 = 0x10) and 0xd10 (a3 = -0x21) are on the other sides. The render shows `mutex_unlock` calls at 0xc98 for the 34080 mutex, skipped when the +46116 word is zero, and at 0xd24 for the 34064 one. The render shows returns of 0 or 0xe. Role (from name): the PLL register writes suggest a clock-synthesizer setup, which the facts do not confirm.
  Reviewed: 2026-11-12 (sonnet)

- `gfP_OdsyHPgetTopology` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` at 0x618 (n64)
  **Inferred.** Takes `odsy_hpipe_state_lock` with `mutex_spinlock` at 0x62c and reads the state pointer `OdsyHpipeState` at 0x644. If the state or its first word is zero it calls `odsy_hpipe_discover` at 0x690; a nonzero discover result (the render shows 0x16 as one possible value) branches at 0x6a0 to 0x668, past the `copyout`. Otherwise it copies 0x184 bytes from the state block at +4360 to the caller's buffer (the `copyout` at 0x658), releases the lock with `mutex_spinunlock` at 0x670 and returns the first word of the state block. Role (from name): the 388-byte copy fits a topology query, but the layout of that block is not traced.
  Reviewed: 2026-11-12 (sonnet)

- `gfP_OdsyHPqueryBestAttrib` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` at 0x1728 (n64)
  **Inferred.** Copies a 32-byte request in at 0x1740. If that copy fails (the branch at 0x1748 goes to 0x17d8), it goes to the `cmn_err` call at 0x17e0. Otherwise it allocates a temporary buffer with `kmem_alloc` at 0x1754. When the allocation returns zero (the branch at 0x1760 falls through) it stores at 0x1768, a value the render does not show, and the facts show no `kmem_free` for that path. When the allocation succeeds it copies a second block in at 0x177c. A failed second copy stores at 0x1790 and frees the buffer with `kmem_free` at 0x1798. A successful one copies a result out at 0x17bc, and a successful `copyout` goes to the `kmem_free` at 0x1798. A failed `copyout` stores at 0x17d4 and reaches the `cmn_err` at 0x17e0; the facts do not show a free on that path. The returns are one of 0xc, a word loaded at 0x17a0 and 0xe. Role (from name): the query result is not traced, and the facts do not establish what 0xc and 0xe mean.
  Reviewed: 2026-11-12 (sonnet)

- `rrmResume` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2518 (n64)
  **Inferred.** Calls `rt_pin_thread` at 0x252c and looks up a thread with `gthread_find` at 0x2540. When the lookup returns zero it branches to 0x27e8, which calls `rt_unpin_thread`. For a found thread whose word at +16 is nonzero it takes `GfxListReaderLock` at 0x2780 and later `GfxListReaderUnlock` at 0x269c or 0x2978. A `mutex_spinlock` on the object at +24 of the thread (+16 within it) appears at 0x2954, with another at 0x2848. `rrmDoUnMapGfx` is called at 0x27b0, 0x28d4 and 0x2928. `cpsema` at 0x28b4 is separate from a `splhi` at 0x28ec, `vsema` at 0x2918 and `splx` at 0x2920; the `splhi`/`splx` pair brackets the `vsema`. One path returns the result of `rt_unpin_thread` at 0x26d4. Role (from name): the name says resume, and the callees fit a graphics remap, but the thread-state fields are not traced well enough to settle the sequence.
  Reviewed: 2026-11-12 (sonnet)

- `ApplyParameterF` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd95e7cc (o32)
  **Inferred.** Compares the token in a1 with 0x1200, 0x1201, 0x1202, 0x1600, 0x1601, 0x1602 and 0x1603, each with its own branch target. Those values match the published OpenGL enumerants GL_AMBIENT, GL_DIFFUSE, GL_SPECULAR, GL_EMISSION, GL_SHININESS, GL_AMBIENT_AND_DIFFUSE and GL_COLOR_INDEXES. Several paths load single-precision values from the vector at a2 (the render shows offsets 0 and 8) and compare them, and some stores follow. Only one call is listed, to `__glOdysseySetProgram` through the pointer at 0xd9dc0b8 at 0xd95e9fc, with a0 = [0x1010], a2 = 0x33 and a3 = 0x8000. It is reached only on the path through the compare at 0xd95e970, not for every token. The render does not trace the stored fields.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5820 (n64)
  **Inferred.** Compares [0x1060] with zero at 0x21a585c and [0x1048] with 4 (signed) at 0x21a5868, and reads [0x1020]. When [0x1048] is below 4 it calls `__glSPDlistSpace` through the pointer at 0x223fd50 at 0x21a5888 with a0 = 0, a3 = [0x1020] and a4 = 0x10000. A zero result goes to 0x21a5940 and returns that result; a nonzero one continues to the stores at 0x21a58d4 to 0x21a58e8 and a store at 0x21a58f0. The return value is one of an unresolved register, 0x1a1698 and the `__glSPDlistSpace` result. Role (from name): the symbol suggests a display-list compile of glColor3s, which the facts do not show.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239050 (n64)
  **Inferred.** Loads a word from the context at a0+0x285d8 and calls `__glOdysseyIoctl` through the pointer at 0x221da60 with request 0x6f640018, a4 = 0x10de68 and a5 taken from a0+165336. It returns 0 or 1 and makes no other call. The request's high bytes, 0x6f and 0x64, read as ASCII "od", which suggests an Odyssey ioctl group. The effect of request 0x18 is not shown.
  Reviewed: 2026-11-12 (sonnet)

- `isNotProxy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c1618 (n32)
  **Inferred.** Returns 0 at 0xd8c1638 when [a0+36] is at least 0x40 (signed). Otherwise it calls `open` on the string at 0xd8e0538 (call at 0xd8c1650, flags 0x802), returning 0 on a negative result, then `fcntl` at 0xd8c1674 with a1 = 0x2 and a2 = 0x5, then `ioctl` with request 0x65 at 0xd8c168c. A later `ioctl` with request 0x66 and a buffer at sp-112 (0xd8c16e4) follows; each failure path calls `close` and returns 0. It then calls `strchr` with ':' (0x3a) at 0xd8c1708 and compares bytes from the result with 0x2e ('.') and with other values the render leaves unresolved. The path ending at 0xd8c1780 returns 1 and the other returns give 0. Role (from name): the name suggests a not-a-proxy test; the render does not show which test decides the result.
  Reviewed: 2026-11-12 (sonnet)

- `RGBSendClippedBmFmTN` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacb950 (n32)
  **Inferred.** Reads a byte at a0+0xb8 and single-precision values from a0 at +0x10 to +0x1c, +0x30 to +0x3c, +0x90 to +0xac, +0xc0 to +0xc8 and +0x170 to +0x188, and makes no calls. A compare of [[0x1010]+1416] with 0x81fa at 0xdacb9d4 splits the code. The equal side branches to 0xdacbb18 and the other side runs to a return at 0xdacbb10 of 0xffffffff8080d005. Across both sides the render lists 75 single-precision and 20 word stores, with a base register it leaves unresolved, so those counts are not a per-path figure and the destination is not established. Role (from name): the name suggests a clipped bitmap send; the record layout and the meaning of the byte at +0xb8 are not traced.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color4b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb336530 (n64)
  **Inferred.** Compares [0x1048] with another value (signed) at 0xb33657c. When it is below that value it calls `__glSPDlistSpace` at 0xb33659c with a0 = 0 and the other arguments as at entry. A nonzero result continues to stores at 0xb3365ec to 0xb336614 and a return of [0x1048] or the `__glSPDlistSpace` result. A zero result stores at 0xb336630 and returns the `__glSPDlistSpace` result without those stores. Role (from name): the symbol suggests a display-list compile of glColor4b, which the facts do not show.
  Reviewed: 2026-11-12 (sonnet)

- `ApplyMaterialF` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3541a0 (n64)
  **Inferred.** The routine is 1764 bytes. Compares a1 with 0x1600 (unsigned) at 0xb3541b0 and then with 0x1602, 0x1201, 0x1202, 0x1200 and 0x1601, and the same enumerant values as `ApplyParameterF`. The facts do not list a compare with 0x1603. Paths load single-precision values at offsets 0, 4, 8 and 0xc, compare them and store words at offsets 0 to 0x1c; the base registers are not resolved. One path loads 16 words from [0x1020]+0xa098 to +0xa0d4 and stores them, and the only return listed is the word at [0x1020]+41160. The render does not resolve where those stores go.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Normal3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb38e430 (n64)
  **Inferred.** Compares [0x1048] with another value (signed) at 0xb38e468. When it is below that value it calls `__glSPDlistSpace` at 0xb38e484 with a0 = 0 and the other arguments as at entry. A zero result goes to 0xb38e508 and returns that result without the stores below. Otherwise it stores four words at 0xb38e4d4 to 0xb38e4e0 and one at 0xb38e4f4, and the fast path returns [0x1060]+4. Role (from name): the symbol suggests a display-list compile of glNormal3s, which the facts do not show.
  Reviewed: 2026-11-12 (sonnet)

- `OpenPipeMemReference` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb38fa70 (n64)
  **Inferred.** Reads halfwords at +0, +2 and +4 of the block at a2+48 and stores halfwords at +4 and +6 of it (0xb38fb64, 0xb38fb80, 0xb38fbfc, 0xb38fc0c). When a6 is nonzero it also performs a run of word stores through a base the render does not resolve, and it stores words at a2+0x20 and a2+0x24 at 0xb38fb20 and 0xb38fb24. It calls `__glOdysseyMIPS_SYNC` at 0xb38fb7c and 0xb38fc08. On one path it calls `__glOdysseyIoctl` at 0xb38fbe0 with request 0x6f640003 and a stack buffer at sp-96. It returns 1 at 0xb38fbb0 and 0 at 0xb38fc24, and the render does not show every condition that selects between them. Role (from name): the name suggests opening a memory reference for the pipe; the descriptor fields are not traced.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_TexCoord1d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb394f40 (n64)
  **Inferred.** Compares [0x1048] with another value (signed) at 0xb394f7c. When it is below that value it calls `__glSPDlistSpace` at 0xb394f90 with a0 = 0 and the other arguments as at entry. A zero result goes to 0xb395008 and returns that result. Otherwise it stores one word at 0xb394fdc and one single-precision value at 0xb394fe0, stores at 0xb394fe8 and 0xb394ff4, and on the fast path returns [0x1060]+2. Role (from name): the symbol suggests a display-list compile of glTexCoord1d, which the facts do not show.
  Reviewed: 2026-11-12 (sonnet)

- `glXDestroyHyperpipeConfigSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d9774 (o32)
  **Inferred.** Calls `__glXSetupForCommand` at 0xd8d9798, reads connection state at a0+1232 and a0+124, and makes byte, halfword and word stores at offsets 0 to 0x10, with a base the render does not resolve. It calls `_XFlush` at 0xd8d97e8 only when [a0+112] is below [a0+108]+32 (unsigned); otherwise the branch at 0xd8d97d8 skips it. It then calls `_XReply` at 0xd8d9864 with a1 = sp-40, a2 = 0 and a3 = 0. It returns 0x5c on one path and an unresolved value on another. Role (from name): the name matches a GLX SGIX hyperpipe destroy request and the facts show a request and reply, but the request layout is not traced.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color3b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda40620 (o32)
  **Inferred.** Tests [0x1034] against zero at 0xda40668 and bit 0x4 of [0x1030] at 0xda40674 and 0xda406dc, then compares [0x1028] with a register that is one of 0x4 or 0x5 (signed) at 0xda40688. When it is below that value it calls `__glSPDlistSpace` at 0xda4069c with a0 = 0 and a3 = [0x1028]. It then stores words at 0xda406f8 to 0xda4071c and further stores at 0xda40724 to 0xda40730; the base registers are not resolved, so the render does not show a store to the 0x1034 pointer. The return is the `__glSPDlistSpace` result or an unresolved value. Role (from name): the symbol suggests a display-list color compile; the facts do not show which flag state gives which count.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color3ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda413fc (o32)
  **Inferred.** Has the same shape as `__glOdylc_Color3b`: tests [0x1034] against zero at 0xda41444 and bit 0x4 of [0x1030] at 0xda41450 and 0xda414b8, then compares [0x1028] with a register that is one of 0x4 or 0x5 (signed) at 0xda41464. When it is below that value it calls `__glSPDlistSpace` at 0xda41478 with a0 = 0 and a3 = [0x1028]. It stores words at 0xda414d4 to 0xda414f8 and further stores at 0xda41500 to 0xda4150c, base registers not resolved. The return is the `__glSPDlistSpace` result or an unresolved value. Role (from name): the symbol suggests a display-list color compile.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color3us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41648 (o32)
  **Inferred.** Has the same shape as `__glOdylc_Color3b`: tests [0x1034] against zero at 0xda41690 and bit 0x4 of [0x1030] at 0xda4169c and 0xda41704, then compares [0x1028] with a register that is one of 0x4 or 0x5 (signed) at 0xda416b0. When it is below that value it calls `__glSPDlistSpace` at 0xda416c4 with a0 = 0 and a3 = [0x1028]. It stores words at 0xda41720 to 0xda41744 and further stores at 0xda4174c to 0xda41758, base registers not resolved. The return is the `__glSPDlistSpace` result or an unresolved value. Role (from name): the symbol suggests a display-list color compile.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color4b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41894 (o32)
  **Inferred.** Tests [0x1034] against zero at 0xda418e0 and bit 0x4 of [0x1030] at 0xda418ec and 0xda41954, then compares [0x1028] with a register that is one of 0x5 or 0x6 (signed) at 0xda41900. When it is below that value it calls `__glSPDlistSpace` at 0xda41914 with a0 = 0 and the other arguments as at entry. It stores words at 0xda41970 to 0xda4199c and further stores at 0xda419a4 to 0xda419b0, base registers not resolved. The return is the `__glSPDlistSpace` result or an unresolved value. Role (from name): the symbol suggests a display-list color compile; the facts do not show which flag state gives which count.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color4i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41fd8 (o32)
  **Inferred.** Has the same shape as `__glOdylc_Color4b` at 0xda41894: tests [0x1034] against zero at 0xda42024 and bit 0x4 of [0x1030] at 0xda42030 and 0xda42098, then compares [0x1028] with a register that is one of 0x5 or 0x6 (signed) at 0xda42044. When it is below that value it calls `__glSPDlistSpace` at 0xda42058 with a0 = 0 and the other arguments as at entry. It stores words at 0xda420b4 to 0xda420e0 and further stores at 0xda420e8 to 0xda420f4, base registers not resolved. The return is the `__glSPDlistSpace` result or an unresolved value. Role (from name): the symbol suggests a display-list color compile.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color4s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda4223c (o32)
  **Inferred.** Has the same shape as `__glOdylc_Color4b` at 0xda41894: tests [0x1034] against zero at 0xda42288 and bit 0x4 of [0x1030] at 0xda42294 and 0xda422fc, then compares [0x1028] with a register that is one of 0x5 or 0x6 (signed) at 0xda422a8. When it is below that value it calls `__glSPDlistSpace` at 0xda422bc with a0 = 0 and the other arguments as at entry. It stores words at 0xda42318 to 0xda42344 and further stores at 0xda4234c to 0xda42358, base registers not resolved. The return is the `__glSPDlistSpace` result or an unresolved value. Role (from name): the symbol suggests a display-list color compile.
  Reviewed: 2026-11-12 (sonnet)
