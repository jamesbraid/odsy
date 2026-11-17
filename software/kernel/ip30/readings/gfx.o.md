# Readings: `usr/cpu/sysgen/IP30boot/gfx.o`

One entry per routine, filed here from the reading batches by binary.

- `gfx_disp` in `usr/cpu/sysgen/IP30boot/gfx.o` at 0xc28
  **Inferred.** Looks up a graphics thread with `gthread_find` at 0xc30, passing its four arguments through, and checks the result and the pointer at +16 before loading a pointer at +24 and walking a list whose entries are tested for a flag bit at 0xc90 (0x8) and for a value at 0xd24 (0x4 on the word at +8). It makes an indirect call at 0xc6c and calls `valusema` at 0xd44, with a count loaded from [[thread+24]+12], and continues the list loop when its result is nonnegative. The return is 0 or 1. The facts say how the thread record is walked; they do not name the request being handled or what `valusema` is used for here.
  Reviewed: 2026-11-12

- `gfx_fault` in `usr/cpu/sysgen/IP30boot/gfx.o` at 0xd5c
  **Inferred.** Gets the current thread handle with `curthreadhandle` at 0xd6c and looks up a graphics thread with `gthread_find` at 0xd78. When the thread's pointer at +24 is zero and bit 0x1 of the word at +4 of the second argument (a1) is set it makes an indirect call at 0xdb8 with a0 = a1 and a1 = a field at +112 of the structure at [a1+32]. It calls `RRM_ValidFault` at 0xdc4 with a0 = a1 and a1 = a2, and branches on whether the result is negative. On paths where the thread's pointer at +24 is nonzero and bit 0x8 of that word is clear it calls `psema` on a1+80 at 0xe14 and `vsema` on a1+80 at 0xe24. The return at 0xe00 is 0 or 1. The name and the `RRM_ValidFault` call point to fault handling, but the facts do not show what a valid fault leads to.
  Reviewed: 2026-11-12

- `gfx_shcheck` in `usr/cpu/sysgen/IP30boot/gfx.o` at 0xfe0
  **Inferred.** Looks up a graphics thread with `gthread_find` at 0xfec. Depending on the pointer at +16 and flag bits it calls `ddv_destroy_handle` at 0x105c, then `gthread_detach_list` at 0x10a0, `gthread_detach_group` at 0x10a8, `cleargfxsched_thread` at 0x10b0 and `gthread_destroy` at 0x10b8 (a second sequence of `gthread_detach_list`, `gthread_detach_group` and `cleargfxsched_thread` at 0x11d0 to 0x11e0 and a plain `gthread_destroy` at 0x11a4 are on other paths). When the pointer at +16 is nonzero it calls `GfxListWriterLock` at 0x10dc and `GfxListWriterUnlock` at 0x1194, with an `splhi`/`splx` section around a `vsema` at 0x1164. The name suggests a shared-resource check; the facts show the teardown calls but not what condition triggers them.
  Reviewed: 2026-11-12

- `gfx_shdup` in `usr/cpu/sysgen/IP30boot/gfx.o` at 0x1234
  **Inferred.** Looks up a graphics thread with `gthread_find` at 0x1240. When the thread, its pointer at +16 and the field at +24 of that are nonzero and bit 0x8 of the word at +4 of that field is clear, it calls `gthread_create` at 0x1284 with a0 = a1 and a4 = the field at +24, and, if that returns nonzero, `gthread_attach_list` at 0x1298 with the new thread and the pointer at +16 and then `setgfxsched_thread` at 0x12a0 with a0 = a1. The return at 0x127c is one of the +16 pointer, an unresolved value, the `gthread_create` result or the `setgfxsched_thread` result. The name suggests a shared duplicate of the thread; the facts show the create-and-attach sequence but not what the fields mean.
  Reviewed: 2026-11-12

- `gfxopen` in `usr/cpu/sysgen/IP30boot/gfx.o` at 0x1fb8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Range: 0x1fb8-0x2434 (1148 bytes).
  It occupies 1148 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x1fec, `lw` at 0x2284, `lw` at 0x2388.
  16 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2030, `ld` at 0x2050, `ld` at 0x211c.
  The `lw` at 0x2094 loads 4 bytes from ret(gthread_find) +0x8.
  The `ld` at 0x20a4 loads 8 bytes from ret(gthread_find) +0x10.
  The `sd` at 0x20b0 stores 8 bytes to [ret(gthread_find)+16]:8 +0x18.
  The `ld` at 0x20c8 loads 8 bytes from ret(gthread_find) +0x0.
  The `lw` at 0x2100 loads 4 bytes from ?.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2178, `sd` at 0x2204, `sd` at 0x2250.
  The `sd` at 0x2180 stores 8 bytes to ret(kern_malloc) +0x10.
  The `sd` at 0x2188 stores 8 bytes to ret(kern_malloc) +0x20.
  The `sd` at 0x2198 stores 8 bytes to ret(kern_malloc) +0x28.
  The `sd` at 0x219c stores 8 bytes to ret(kern_malloc) +0x60.
  2 such `sw` accesses store 4 bytes to ret(kern_malloc) +0x68, including `sw` at 0x21c8, `sw` at 0x21d8.
  The `lh` at 0x21cc loads 2 bytes from abs 0xffffffffffffc3a0.
  4 such `lw` accesses load 4 bytes from ret(kern_malloc) +0x4, including `lw` at 0x21e4, `lw` at 0x2220, `lw` at 0x2254.
  The `ld` at 0x2230 loads 8 bytes from ret(gthread_find_gfxp) +0x18.
  The `lw` at 0x2270 loads 4 bytes from ret(kern_malloc) +0x38.
  The `sw` at 0x227c stores 4 bytes to ret(kern_malloc) +0x38.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0x2294, `sw` at 0x239c.
  The `sw` at 0x2380 stores 4 bytes to ret(kern_malloc) +0x4.
  The `sw` at 0x23bc stores 4 bytes to ret(gfx_group_find) +0xc.
  The `jal` at 0x1fcc calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1fe0 calls psema with a0=sym(GfxBoardInitSema), a1=0x19, a2=?, a3=?.
  The `jal` at 0x2084 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?, a4=[sym(GfxDevLimit)].
  The `jal` at 0x20b4 calls gthread_detach_list with a0=ret(gthread_find), a1=?, a2=?, a3=?.
  The `jal` at 0x20bc calls gthread_detach_group with a0=ret(gthread_find), a1=?, a2=?, a3=?.
  The `jal` at 0x20c4 calls gthread_destroy with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x20cc calls gthread_create with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x20dc calls gfx_group_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x20e8 calls gthread_find_gfxp with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2148 calls kern_malloc with a0=0x80, a1=?, a2=?, a3=?.
  The `jal` at 0x2158 calls kern_malloc with a0=0x80, a1=?, a2=?, a3=?.
  The `jal` at 0x2174 calls bzero with a0=ret(kern_malloc), a1=0x80, a2=?, a3=?.
  The `jal` at 0x21a0 calls init_spinlock with a0=ret(kern_malloc), a1=sym(.rodata), a2=-0x1, a3=?.
  The `jal` at 0x21c0 calls init_sema with a0=ret(kern_malloc)+80, a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x21f8 calls gthread_attach_list with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2208 calls setgfxsched_thread with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2268 calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x22c8 calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x22dc calls cmn_err_tag with a0=0x84e, a1=0x4, a2=sym(.rodata), a3=?.
  The `jal` at 0x22ec calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x230c calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x233c calls gthread_scan with a0=sym(gfx_conflict_scan), a1=sp-144, a2=?, a3=?, a4=one of 0x1, 0x2, a5=0x1.
  The `jal` at 0x2354 calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?, a6=0x3.
  The `jal` at 0x2368 calls cmn_err_tag with a0=0x84f, a1=0x4, a2=sym(.rodata), a3=?.
  The `jal` at 0x23a0 calls gthread_attach_list with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x23a8 calls GfxListWriterLock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x23c4 calls GfxListWriterUnlock with a0=?, a1=ret(GfxListWriterLock), a2=?, a3=?, a6=0x1.
  The `jal` at 0x23e4 calls curthreadgroup_scan with a0=sym(irisgl_sproc_setup_scan), a1=sp-128, a2=?, a3=?.
  The `jal` at 0x23f4 calls GfxListWriterUnlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2404 calls GfxListWriterLock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2414 calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?, a4=[sym(GfxDevLimit)].
  The `jal` at 0x2424 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x2010 targets 0x230c, is taken when v0(?) >= 0x2 (signed), and falls through when v0(?) < 0x2 (signed).
  The `blez` branch at 0x201c targets 0x2414, is taken when a4(=[sym(GfxDevLimit)]) <= 0 (signed), and falls through when a4(=[sym(GfxDevLimit)]) > 0 (signed).
  The `beq` branch at 0x2034 targets 0x2074, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2048 targets 0x2070, is taken when s0(?) >= a4(=[sym(GfxDevLimit)]) (signed), and falls through when s0(?) < a4(=[sym(GfxDevLimit)]) (signed).
  The `beq` branch at 0x2054 targets 0x2074, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x2068 targets 0x2030, is taken when s0(?) < a4(=[sym(GfxDevLimit)]) (signed), and falls through when s0(?) >= a4(=[sym(GfxDevLimit)]) (signed).
  The `beq` branch at 0x2074 targets 0x2414, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x208c targets 0x20cc, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x209c targets 0x22fc, is taken when (t8(=[ret(gthread_find)+8]) & 0x4) == 0, and falls through when (t8(=[ret(gthread_find)+8]) & 0x4) != 0.
  The `beq` branch at 0x20a8 targets 0x20b4, is taken when v0(=[ret(gthread_find)+16]:8) == 0, and falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x20d4 targets 0x22ec, is taken when v0(=ret(gthread_create)) == 0, and falls through when v0(=ret(gthread_create)) != 0.
  The `beq` branch at 0x20f4 targets 0x2128, is taken when v0(=ret(gthread_find_gfxp)) == 0, and falls through when v0(=ret(gthread_find_gfxp)) != 0.
  The `bne` branch at 0x2114 targets 0x22c8, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `bne` branch at 0x2120 targets 0x2100, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x2128 targets 0x213c, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x2134 targets 0x231c, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `bne` branch at 0x213c targets 0x2158, is taken when s8(=ret(gthread_find_gfxp)) != 0, and falls through when s8(=ret(gthread_find_gfxp)) == 0.
  The `beq` branch at 0x2150 targets 0x2164 and is always taken.
  The `bne` branch at 0x21a8 targets 0x2378, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `bne` branch at 0x21d4 targets 0x2218, is taken when s8(=ret(gthread_find_gfxp)) != 0, and falls through when s8(=ret(gthread_find_gfxp)) == 0.
  The `beq` branch at 0x21dc targets 0x21f8, is taken when s7(=ret(gfx_group_find)) == 0, and falls through when s7(=ret(gfx_group_find)) != 0.
  The `beq` branch at 0x21ec targets 0x23a0, is taken when (a4(=[ret(kern_malloc)+4]) & 0x8) == 0, and falls through when (a4(=[ret(kern_malloc)+4]) & 0x8) != 0.
  The `beq` branch at 0x2210 targets 0x2268 and is always taken.
  The `beq` branch at 0x2218 targets 0x2230, is taken when s7(=ret(gfx_group_find)) == 0, and falls through when s7(=ret(gfx_group_find)) != 0.
  The `beq` branch at 0x2228 targets 0x2404, is taken when (a6(=[ret(kern_malloc)+4]) & 0x8) == 0, and falls through when (a6(=[ret(kern_malloc)+4]) & 0x8) != 0.
  The `beq` branch at 0x2234 targets 0x224c, is taken when a3(=[ret(gthread_find_gfxp)+24]:8) == 0, and falls through when a3(=[ret(gthread_find_gfxp)+24]:8) != 0.
  The `bne` branch at 0x2244 targets 0x223c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x224c targets 0x2264, is taken when s7(=ret(gfx_group_find)) == 0, and falls through when s7(=ret(gfx_group_find)) != 0.
  The `beq` branch at 0x225c targets 0x23f4, is taken when (a7(=[ret(kern_malloc)+4]) & 0x8) == 0, and falls through when (a7(=[ret(kern_malloc)+4]) & 0x8) != 0.
  The `beq` branch at 0x22e4 targets 0x2298 and is always taken.
  The `beq` branch at 0x22f4 targets 0x2298 and is always taken.
  The `bne` branch at 0x22fc targets 0x20dc, is taken when v0(=ret(gthread_find)) != 0, and falls through when v0(=ret(gthread_find)) == 0.
  The `beq` branch at 0x2304 targets 0x20cc and is always taken.
  The `beq` branch at 0x2314 targets 0x2298 and is always taken.
  The `bne` branch at 0x234c targets 0x213c, is taken when a5(?) != a6(=0x3), and falls through when a5(?) == a6(=0x3).
  The `beq` branch at 0x2370 targets 0x2298 and is always taken.
  The `beq` branch at 0x2398 targets 0x21ac and is always taken.
  The `beq` branch at 0x23ec targets 0x2208 and is always taken.
  The `beq` branch at 0x23fc targets 0x2268 and is always taken.
  The `beq` branch at 0x240c targets 0x2230 and is always taken.
  The `beq` branch at 0x242c targets 0x2298 and is always taken.
  The return at 0x22c0 has v0 = one of 0x0, 0x6, 0xc, 0x13.

- `gfxclose` in `usr/cpu/sysgen/IP30boot/gfx.o` at 0x249c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Range: 0x249c-0x2a10 (1396 bytes).
  It occupies 1396 bytes.
  The `ld` at 0x2574 loads 8 bytes from table(sym(GfxDev)) +0x0.
  4 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0x2588, `ld` at 0x269c, `ld` at 0x2888.
  2 such `ld` accesses load 8 bytes from [ret(gthread_find)+16]:8 +0x18, including `ld` at 0x2594, `ld` at 0x2894.
  The `ld` at 0x2598 loads 8 bytes from entry(sym(GfxDev)) +0x10.
  The `ld` at 0x25b4 loads 8 bytes from ret(gthread_find) +0x18.
  17 such `ld` accesses load 8 bytes from ?, including `ld` at 0x25d8, `ld` at 0x25e4, `ld` at 0x2600.
  2 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x18, including `ld` at 0x2604, `ld` at 0x2778.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2608, `sd` at 0x2780, `sd` at 0x2914.
  The `lw` at 0x2618 loads 4 bytes from entry(sym(GfxDev)) +0x4.
  2 such `lw` accesses load 4 bytes from ret(gthread_find) +0x8, including `lw` at 0x2684, `lw` at 0x27d0.
  The `sd` at 0x26a8 stores 8 bytes to [ret(gthread_find)+16]:8 +0x18.
  4 such `ld` accesses load 8 bytes from ret(gthread_find) +0x0, including `ld` at 0x26c0, `ld` at 0x29c0, `ld` at 0x29d4.
  The `lw` at 0x26dc loads 4 bytes from entry(sym(GfxDev)) +0x38.
  The `sw` at 0x26f0 stores 4 bytes to entry(sym(GfxDev)) +0x38.
  The `sd` at 0x2704 stores 8 bytes to table(sym(GfxDev)) +0x0.
  The `sw` at 0x2824 stores 4 bytes to ?.
  2 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x18, including `sd` at 0x28bc, `sd` at 0x290c.
  2 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x10, including `sd` at 0x28c0, `sd` at 0x2904.
  The `sw` at 0x28c8 stores 4 bytes to entry(sym(GfxDev)) +0x68.
  The `ld` at 0x28d4 loads 8 bytes from ret(gthread_create) +0x10.
  The `sd` at 0x28e4 stores 8 bytes to [ret(gthread_create)+16]:8 +0x18.
  The `jal` at 0x24b8 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x24e4 calls psema with a0=sym(GfxBoardInitSema), a1=0x19, a2=?, a3=?.
  The `jal` at 0x24fc calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x252c calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x25d0 calls GfxDetach with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x25f0 calls GfxListWriterLock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2630 calls GfxListWriterUnlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2638 calls freesema with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=?.
  The `jal` at 0x2660 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x266c calls gthread_find with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2694 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x26ac calls gthread_detach_list with a0=ret(gthread_find), a1=?, a2=?, a3=?.
  The `jal` at 0x26b4 calls gthread_detach_group with a0=ret(gthread_find), a1=?, a2=?, a3=?.
  The `jal` at 0x26bc calls gthread_destroy with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x26d4 calls streams_lock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x26ec calls gfxcleanup with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x26f4 calls streams_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x270c calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x271c calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2728 calls psignal with a0=ret(curproc), a1=0x6, a2=?, a3=?.
  The `jal` at 0x278c calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x279c calls gthread_create with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x27b8 calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x27e0 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x27f0 calls gthread_destroy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2818 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2828 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2830 calls gthread_detach_group with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x283c calls gthread_scan with a0=sym(irisgl_sproc_cleanup), a1=?, a2=?, a3=?.
  The `jal` at 0x284c calls cleargfxsched_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2854 calls gthread_detach_list with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x285c calls gthread_detach_group with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x286c calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2878 calls gthread_find with a0=[entry(sym(GfxDev))+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x28cc calls gthread_attach_list with a0=ret(gthread_create), a1=0x0, a2=?, a3=?.
  The `jal` at 0x28e0 calls setgfxsched_thread with a0=ret(curthreadhandle), a1=?, a2=?, a3=[ret(gthread_create)+16]:8.
  The `jal` at 0x28f4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x2938 calls GfxListWriterLock with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2954 calls GfxListWriterUnlock with a0=[ret(gthread_find)+16]:8, a1=ret(GfxListWriterLock), a2=?, a3=?.
  The `jal` at 0x297c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x2984 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x298c calls proc_name with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0x2994 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x299c calls proc_pid with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0x29b4 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=ret(proc_name), a3=ret(proc_pid).
  The `jal` at 0x29bc calls threadhandle_to_proc with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x29c4 calls proc_name with a0=ret(threadhandle_to_proc), a1=?, a2=?, a3=?.
  The `jal` at 0x29d0 calls threadhandle_to_proc with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x29d8 calls proc_pid with a0=ret(threadhandle_to_proc), a1=?, a2=?, a3=?.
  The `jal` at 0x29ec calls cmn_err with a0=0x1, a1=sym(.rodata), a2=ret(proc_name), a3=ret(proc_pid).
  The `jal` at 0x29f4 calls threadhandle_to_proc with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2a00 calls psignal with a0=ret(threadhandle_to_proc), a1=0x9, a2=?, a3=?.
  The `beq` branch at 0x24d4 targets 0x24ec, is taken when s7(?) == s5(=0x20000), and falls through when s7(?) != s5(=0x20000).
  The `bne` branch at 0x251c targets 0x2568, is taken when a0(?) < a1(=[sym(GfxDevLimit)]) (signed), and falls through when a0(?) >= a1(=[sym(GfxDevLimit)]) (signed).
  The `beq` branch at 0x2524 targets 0x2534, is taken when s7(?) == s5(=0x20000), and falls through when s7(?) != s5(=0x20000).
  The `beq` branch at 0x2578 targets 0x2784, is taken when s0(=entry(sym(GfxDev))) == 0, and falls through when s0(=entry(sym(GfxDev))) != 0.
  The `beq` branch at 0x2580 targets 0x2770, is taken when s4(=ret(gthread_find)) == 0, and falls through when s4(=ret(gthread_find)) != 0.
  The `beq` branch at 0x258c targets 0x2770, is taken when v0(=[ret(gthread_find)+16]:8) == 0, and falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x259c targets 0x2764, is taken when s6(=ret(curthreadhandle)) == s3(=[entry(sym(GfxDev))+16]:8), and falls through when s6(=ret(curthreadhandle)) != s3(=[entry(sym(GfxDev))+16]:8).
  The `beq` branch at 0x25a4 targets 0x286c, is taken when s7(?) == s5(=0x20000), and falls through when s7(?) != s5(=0x20000).
  The `beq` branch at 0x25ac targets 0x28b0, is taken when s4(=ret(gthread_find)) == 0, and falls through when s4(=ret(gthread_find)) != 0.
  The `beq` branch at 0x25b8 targets 0x286c, is taken when a0(=[ret(gthread_find)+24]:8) == 0, and falls through when a0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x25c8 targets 0x279c, is taken when s4(=ret(gthread_find)) == 0, and falls through when s4(=ret(gthread_find)) != 0.
  The `beq` branch at 0x25dc targets 0x2738, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x25e8 targets 0x2738, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `bne` branch at 0x25f8 targets 0x2740, is taken when s0(=entry(sym(GfxDev))) != s2(?), and falls through when s0(=entry(sym(GfxDev))) == s2(?).
  The `beq` branch at 0x2610 targets 0x2628, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x2620 targets 0x2800, is taken when (a4(=[entry(sym(GfxDev))+4]) & 0x8) == 0, and falls through when (a4(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` branch at 0x2628 targets 0x2638, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x2644 targets 0x2658, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x2650 targets 0x284c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2658 targets 0x26c8, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0x2674 targets 0x27c8, is taken when s3(=one of 0x0, 0x1) == 0, and falls through when s3(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x267c targets 0x27e0, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x268c targets 0x297c, is taken when (a6(=[ret(gthread_find)+8]) & 0x4) == 0, and falls through when (a6(=[ret(gthread_find)+8]) & 0x4) != 0.
  The `beq` branch at 0x26a0 targets 0x26ac, is taken when v0(=[ret(gthread_find)+16]:8) == 0, and falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x26cc targets 0x27f0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x2700 targets 0x2714, is taken when s7(?) == s5(=0x20000), and falls through when s7(?) != s5(=0x20000).
  The `beq` branch at 0x2714 targets 0x2730, is taken when s3(=one of 0x0, 0x1) == 0, and falls through when s3(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x2730 targets 0x2538 and is always taken.
  The `beq` branch at 0x2738 targets 0x2600, is taken when s0(=entry(sym(GfxDev))) == s2(?), and falls through when s0(=entry(sym(GfxDev))) != s2(?).
  The `beq` branch at 0x2740 targets 0x260c, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x274c targets 0x2778, is taken when s0(=entry(sym(GfxDev))) == v0(?), and falls through when s0(=entry(sym(GfxDev))) != v0(?).
  The `bne` branch at 0x2754 targets 0x2748, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x275c targets 0x2610 and is always taken.
  The `beq` branch at 0x2768 targets 0x25c8 and is always taken.
  The `beq` branch at 0x2770 targets 0x2598 and is always taken.
  The `beq` branch at 0x277c targets 0x260c and is always taken.
  The `beq` branch at 0x2784 targets 0x2794, is taken when s7(?) == s5(=0x20000), and falls through when s7(?) != s5(=0x20000).
  The `beq` branch at 0x2794 targets 0x2538 and is always taken.
  The `bne` branch at 0x27a8 targets 0x28bc, is taken when v0(=ret(gthread_create)) != 0, and falls through when v0(=ret(gthread_create)) == 0.
  The `beq` branch at 0x27b0 targets 0x27c0, is taken when s7(?) == s5(=0x20000), and falls through when s7(?) != s5(=0x20000).
  The `beq` branch at 0x27c0 targets 0x2538 and is always taken.
  The `beq` branch at 0x27c8 targets 0x27e0, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `bne` branch at 0x27d8 targets 0x2694, is taken when (a1(=[ret(gthread_find)+8]) & 0x4) != 0, and falls through when (a1(=[ret(gthread_find)+8]) & 0x4) == 0.
  The `beq` branch at 0x27e8 targets 0x26c8 and is always taken.
  The `beq` branch at 0x27f8 targets 0x26d4 and is always taken.
  The `beq` branch at 0x2804 targets 0x2628, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x2810 targets 0x2628, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x2844 targets 0x2628 and is always taken.
  The `beq` branch at 0x2864 targets 0x2658 and is always taken.
  The `beq` branch at 0x2880 targets 0x28f0, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x288c targets 0x2974, is taken when a0(=[ret(gthread_find)+16]:8) == 0, and falls through when a0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x2898 targets 0x2964, is taken when a1(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when a1(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `bne` branch at 0x28a0 targets 0x2928, is taken when a1(=[[ret(gthread_find)+16]:8+24]:8) != 0, and falls through when a1(=[[ret(gthread_find)+16]:8+24]:8) == 0.
  The `beq` branch at 0x28a8 targets 0x296c and is always taken.
  The `beq` branch at 0x28b4 targets 0x25c8 and is always taken.
  The `beq` branch at 0x28e8 targets 0x25d0 and is always taken.
  The `beq` branch at 0x28fc targets 0x279c, is taken when s4(=ret(gthread_find)) == 0, and falls through when s4(=ret(gthread_find)) != 0.
  The `beq` branch at 0x2910 targets 0x25c8 and is always taken.
  The `beq` branch at 0x2920 targets 0x296c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x2928 targets 0x2918, is taken when s0(=entry(sym(GfxDev))) != a1(?), and falls through when s0(=entry(sym(GfxDev))) == a1(?).
  The `beq` branch at 0x2930 targets 0x296c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x295c targets 0x28f4 and is always taken.
  The `beq` branch at 0x2964 targets 0x28f4 and is always taken.
  The `beq` branch at 0x296c targets 0x28f4 and is always taken.
  The `beq` branch at 0x2974 targets 0x28f4 and is always taken.
  The `beq` branch at 0x2a08 targets 0x26c8 and is always taken.
  The return at 0x2560 has v0 = one of 0x0, 0x6, 0xc, 0x13.

- `gfxioctl` in `usr/cpu/sysgen/IP30boot/gfx.o` at 0x2b48 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Range: 0x2b48-0x331c (2004 bytes).
  It occupies 2004 bytes.
  The `lh` at 0x2b84 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x2b94 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0xc.
  The `sw` at 0x2ba8 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0xc.
  The `ld` at 0x2bd4 loads 8 bytes from table(sym(GfxDev)) +0x0.
  6 such `lw` accesses load 4 bytes from entry(sym(GfxDev)) +0x4, including `lw` at 0x2be8, `lw` at 0x2ccc, `lw` at 0x2d88.
  5 such `ld` accesses load 8 bytes from ret(gthread_find) +0x18, including `ld` at 0x2bf4, `ld` at 0x2cc0, `ld` at 0x2da4.
  2 such `ld` accesses load 8 bytes from ret(gthread_find) +0x0, including `ld` at 0x2c00, `ld` at 0x2e60.
  The `ld` at 0x2c04 loads 8 bytes from entry(sym(GfxDev)) +0x10.
  7 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x20, including `ld` at 0x2c64, `ld` at 0x2d70, `ld` at 0x2fe4.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x8, including `ld` at 0x2c98, `ld` at 0x32ec, `ld` at 0x3304.
  3 such `ld` accesses load 8 bytes from [entry(sym(GfxDev))+8]:8 +0x10, including `ld` at 0x2c9c, `ld` at 0x32f0, `ld` at 0x3308.
  2 such `sw` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `sw` at 0x2cbc, `sw` at 0x312c.
  The `ld` at 0x2d0c loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc8.
  The `ld` at 0x2d24 loads 8 bytes from entry(sym(GfxDev)) +0x48.
  17 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x28, including `ld` at 0x2d3c, `ld` at 0x2d48, `ld` at 0x2d60.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x30, including `ld` at 0x2d44, `ld` at 0x2d5c, `ld` at 0x2d90.
  4 such `ld` accesses load 8 bytes from [entry(sym(GfxDev))+40]:8 +0x48, including `ld` at 0x2d4c, `ld` at 0x2d64, `ld` at 0x2fbc.
  The `ld` at 0x2d74 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x60.
  2 such `sw` accesses store 4 bytes to entry(sym(GfxDev)) +0x4, including `sw` at 0x2d9c, `sw` at 0x2f7c.
  4 such `sd` accesses store 8 bytes to [entry(sym(GfxDev))+40]:8 +0x48, including `sd` at 0x2e0c, `sd` at 0x3000, `sd` at 0x3188.
  6 such `lw` accesses load 4 bytes from [entry(sym(GfxDev))+40]:8 +0x68, including `lw` at 0x2e14, `lw` at 0x2e2c, `lw` at 0x3190.
  The `ld` at 0x2fc8 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x18.
  The `sw` at 0x2fe0 stores 4 bytes to [entry(sym(GfxDev))+40]:8 +0x80.
  The `ld` at 0x2fe8 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc0.
  The `ld` at 0x3048 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x28.
  The `ld` at 0x3094 loads 8 bytes from [entry(sym(GfxDev))+8]:8 +0x0.
  6 such `ld` accesses load 8 bytes from table(sym(GfxBoards)) +0x0, including `ld` at 0x30f0, `ld` at 0x3110, `ld` at 0x313c.
  The `ld` at 0x311c loads 8 bytes from entry(sym(GfxBoards)) +0x8.
  5 such `ld` accesses load 8 bytes from entry(sym(GfxBoards)) +0x38, including `ld` at 0x31fc, `ld` at 0x322c, `ld` at 0x3244.
  The `ld` at 0x3200 loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x0.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxBoards)) +0x40, including `ld` at 0x3214, `ld` at 0x3224, `ld` at 0x32a8.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x8, including `sd` at 0x3220, `sd` at 0x326c, `sd` at 0x329c.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x28, including `sd` at 0x3228, `sd` at 0x3264, `sd` at 0x32ac.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x20, including `sd` at 0x3230, `sd` at 0x3260, `sd` at 0x32a4.
  2 such `ld` accesses load 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x8, including `ld` at 0x3248, `ld` at 0x32c4.
  The `ld` at 0x3274 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x20.
  2 such `sd` accesses store 8 bytes to [entry(sym(GfxDev))+8]:8 +0x10, including `sd` at 0x3300, `sd` at 0x3318.
  The `jal` at 0x2b70 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2b7c calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2c24 calls psema with a0=entry(sym(GfxDev))+80, a1=0x19, a2=0x1ffff, a3=[([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5))+12]+1, a4=([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)), a5=([-0x3c60]:2 << 0x5).
  The `jalr` at 0x2d20 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=[entry(sym(GfxDev))+72]:8, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a5 at entry (arg5).
  The `jal` at 0x2d40 calls ddv_unlock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2d58 calls ddv_lock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2d80 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=0x0, a2=-0x1, a3=?.
  The `jal` at 0x2d98 calls ddv_unlock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2db4 calls RRM_Dispatch with a0=entry(sym(GfxDev)), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a5 at entry (arg5), a6=0x6c.
  The `jal` at 0x2df0 calls cmn_err_tag with a0=0x850, a1=0x4, a2=sym(.rodata), a3=a1 at entry (arg1), a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x2e00 calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0x2e20 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x2e5c calls threadgroup_refcnt with a0=[ret(gthread_find)]:8, a1=0x67, a2=0x70, a3=0x71, a7=[ret(gthread_find)+24]:8.
  The `jal` at 0x2e78 calls curproc_abi with a0=0x69, a1=?, a2=?, a3=?.
  The `jal` at 0x2e98 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x18, a3=sym(irix5_to_gfx_getboardinfo_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2eb8 calls copyin with a0=a2 at entry (arg2), a1=sp-72, a2=0x4, a3=?.
  The `jal` at 0x2ed0 calls vsema with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=?.
  The `jal` at 0x2ee0 calls GfxDetach with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x2ef0 calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=?.
  The `jal` at 0x2f10 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2f28 calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2f48 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2f60 calls drv_priv with a0=a4 at entry (arg4), a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2f80 calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=0x71, a6=0x6c, a7=0x68.
  The `jal` at 0x2fa0 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x28, a3=sym(irix5_to_gfx_download_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jalr` at 0x2fcc calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x2fdc calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2ff4 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=[[entry(sym(GfxDev))+32]:8+192]:8, a2=?, a3=?.
  The `jal` at 0x3008 calls vsema with a0=[entry(sym(GfxDev))+40]:8+56, a1=[entry(sym(GfxDev))+40]:8, a2=?, a3=?.
  The `jal` at 0x3010 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x3028 calls rrmUnMapGfx with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jalr` at 0x304c calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?, a4=[[entry(sym(GfxDev))+32]:8+40]:8.
  The `jal` at 0x30a0 calls copyin with a0=a2 at entry (arg2), a1=[[entry(sym(GfxDev))+8]:8]:8+16, a2=0x10, a3=[entry(sym(GfxDev))+8]:8, a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x317c calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[entry(sym(GfxDev))+8]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x319c calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x31bc calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[[entry(sym(GfxDev))+40]:8+72]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x31dc calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x3210 calls (unknown callee) with a0=[entry(sym(GfxBoards))+64]:8, a1=?, a2=?, a3=a5 at entry (arg5), a4=entry(sym(GfxBoards)).
  The `jalr` at 0x3250 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards).
  The `jalr` at 0x327c calls (unknown callee) with a0=entry(sym(GfxDev)), a1=sp-112, a2=?, a3=?.
  The `jalr` at 0x32cc calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards), a4=[entry(sym(GfxDev))+32]:8.
  The `beq` branch at 0x2bc0 targets 0x2cb0, is taken when a1(?) >= at(=[sym(GfxDevLimit)]) (signed), and falls through when a1(?) < at(=[sym(GfxDevLimit)]) (signed).
  The `beq` branch at 0x2bd8 targets 0x2d04, is taken when s0(=entry(sym(GfxDev))) == 0, and falls through when s0(=entry(sym(GfxDev))) != 0.
  The `beq` branch at 0x2be0 targets 0x2cfc, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x2bf0 targets 0x2c18, is taken when (t9(=[entry(sym(GfxDev))+4]) & 0x8) == 0, and falls through when (t9(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` branch at 0x2bf8 targets 0x2c30, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2c08 targets 0x2c30, is taken when ra(=[ret(gthread_find)]:8) == at(=[entry(sym(GfxDev))+16]:8), and falls through when ra(=[ret(gthread_find)]:8) != at(=[entry(sym(GfxDev))+16]:8).
  The `beq` branch at 0x2c10 targets 0x2cdc and is always taken.
  The `beq` branch at 0x2c18 targets 0x2c30, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2c30 targets 0x2cb8, is taken when s1(=a1) == v0(=0x65), and falls through when s1(=a1) != v0(=0x65).
  The `beq` branch at 0x2c3c targets 0x2e78, is taken when s1(=a1) == v1(=0x66), and falls through when s1(=a1) != v1(=0x66).
  The `beq` branch at 0x2c44 targets 0x2eb0, is taken when s1(=a1) == a0(=0x69), and falls through when s1(=a1) != a0(=0x69).
  The `beq` branch at 0x2c4c targets 0x2ef0, is taken when s1(=a1) == a1(=0x67), and falls through when s1(=a1) != a1(=0x67).
  The `beq` branch at 0x2c54 targets 0x2f28, is taken when s1(=a1) == a2(=0x70), and falls through when s1(=a1) != a2(=0x70).
  The `beq` branch at 0x2c5c targets 0x2f60, is taken when s1(=a1) == a3(=0x71), and falls through when s1(=a1) != a3(=0x71).
  The `beq` branch at 0x2c68 targets 0x2d30, is taken when v0(=[entry(sym(GfxDev))+32]:8) == 0, and falls through when v0(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` branch at 0x2c70 targets 0x2d0c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x2c78 targets 0x2da8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2c80 targets 0x2f80, is taken when s1(=a1) == a6(=0x6c), and falls through when s1(=a1) != a6(=0x6c).
  The `beq` branch at 0x2c88 targets 0x2e40, is taken when s1(=a1) == a7(=0x68), and falls through when s1(=a1) != a7(=0x68).
  The `beq` branch at 0x2c90 targets 0x2d38, is taken when s1(=a1) == t0(=0x6e), and falls through when s1(=a1) != t0(=0x6e).
  The `beq` branch at 0x2ca0 targets 0x2dc4, is taken when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) == s0(=entry(sym(GfxDev))), and falls through when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) != s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2ca8 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2cb0 targets 0x2cdc and is always taken.
  The `beq` branch at 0x2cc4 targets 0x2cdc, is taken when t3(=[ret(gthread_find)+24]:8) == 0, and falls through when t3(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2cd4 targets 0x2ed0, is taken when (t8(=[entry(sym(GfxDev))+4]) & 0x8) == 0, and falls through when (t8(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` branch at 0x2cfc targets 0x2cdc and is always taken.
  The `beq` branch at 0x2d04 targets 0x2cdc and is always taken.
  The `beq` branch at 0x2d28 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2d30 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2d38 targets 0x2d4c and is always taken.
  The `bne` branch at 0x2d50 targets 0x2e00, is taken when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `bne` branch at 0x2d68 targets 0x2d40, is taken when at(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when at(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2da0 targets 0x2cc4 and is always taken.
  The `beq` branch at 0x2dbc targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2dc4 targets 0x2fb8, is taken when s1(=a1) == a0(=0x6a), and falls through when s1(=a1) != a0(=0x6a).
  The `beq` branch at 0x2dcc targets 0x3038, is taken when s1(=a1) == a1(=0x6b), and falls through when s1(=a1) != a1(=0x6b).
  The `beq` branch at 0x2dd4 targets 0x305c, is taken when s1(=a1) == a2(=0x6d), and falls through when s1(=a1) != a2(=0x6d).
  The `beq` branch at 0x2ddc targets 0x3094, is taken when s1(=a1) == a4(=0x6f), and falls through when s1(=a1) != a4(=0x6f).
  The `beq` branch at 0x2df8 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2e18 targets 0x2d58, is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x2e30 targets 0x2e20, is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x2e38 targets 0x2d58 and is always taken.
  The `bne` branch at 0x2e48 targets 0x2ee0, is taken when (a6(=[entry(sym(GfxDev))+4]) & 0x8) != 0, and falls through when (a6(=[entry(sym(GfxDev))+4]) & 0x8) == 0.
  The `beq` branch at 0x2e54 targets 0x2ee0, is taken when a7(=[ret(gthread_find)+24]:8) == 0, and falls through when a7(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2e68 targets 0x2ee0, is taken when v0(=ret(threadgroup_refcnt)) == t0(=0x1), and falls through when v0(=ret(threadgroup_refcnt)) != t0(=0x1).
  The `beq` branch at 0x2e70 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2ea0 targets 0x3064, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2ea8 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2ec0 targets 0x307c, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x2ec8 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2ed8 targets 0x2cdc and is always taken.
  The `beq` branch at 0x2ee8 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2f18 targets 0x30b4, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2f20 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2f50 targets 0x30cc, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2f58 targets 0x2cc0 and is always taken.
  The `bne` branch at 0x2f68 targets 0x2cc0, is taken when v0(=ret(drv_priv)) != 0, and falls through when v0(=ret(drv_priv)) == 0.
  The `beq` branch at 0x2f78 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2fa8 targets 0x3270, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2fb0 targets 0x2cc0 and is always taken.
  The `bne` branch at 0x2fc0 targets 0x317c, is taken when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2fec targets 0x2ffc, is taken when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) == 0, and falls through when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) != 0.
  The `beq` branch at 0x3020 targets 0x2cc0, is taken when (a2(=[entry(sym(GfxDev))+4]) & 0x1) == 0, and falls through when (a2(=[entry(sym(GfxDev))+4]) & 0x1) != 0.
  The `beq` branch at 0x3030 targets 0x2cc4 and is always taken.
  The `bne` branch at 0x3040 targets 0x31bc, is taken when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x3054 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x305c targets 0x2cc0 and is always taken.
  The `bne` branch at 0x306c targets 0x30e4, is taken when v0(?) < a5(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a5(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x3074 targets 0x2cc0 and is always taken.
  The `bne` branch at 0x3084 targets 0x3104, is taken when a0(?) < a6(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when a0(?) >= a6(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x308c targets 0x2cc0 and is always taken.
  The `beq` branch at 0x30ac targets 0x2cc0 and is always taken.
  The `bne` branch at 0x30bc targets 0x3130, is taken when v0(?) < a2(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a2(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x30c4 targets 0x2cc0 and is always taken.
  The `bne` branch at 0x30d4 targets 0x315c, is taken when v0(?) < a3(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a3(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x30dc targets 0x2cc0 and is always taken.
  The `bne` branch at 0x30f4 targets 0x31fc, is taken when a4(=entry(sym(GfxBoards))) != 0, and falls through when a4(=entry(sym(GfxBoards))) == 0.
  The `beq` branch at 0x30fc targets 0x2cc0 and is always taken.
  The `beq` branch at 0x3114 targets 0x328c, is taken when v0(=entry(sym(GfxBoards))) == 0, and falls through when v0(=entry(sym(GfxBoards))) != 0.
  The `beq` branch at 0x3128 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x3140 targets 0x3294, is taken when a2(=entry(sym(GfxBoards))) == 0, and falls through when a2(=entry(sym(GfxBoards))) != 0.
  The `beq` branch at 0x314c targets 0x329c, is taken when a4(=[entry(sym(GfxDev))+32]:8) == 0, and falls through when a4(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` branch at 0x3154 targets 0x2cc0 and is always taken.
  The `bne` branch at 0x316c targets 0x3220, is taken when a2(=entry(sym(GfxBoards))) != 0, and falls through when a2(=entry(sym(GfxBoards))) == 0.
  The `beq` branch at 0x3174 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x3194 targets 0x31b4, is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x31ac targets 0x319c, is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x31b4 targets 0x2fc8 and is always taken.
  The `beq` branch at 0x31d4 targets 0x31f4, is taken when a6(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a6(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x31ec targets 0x31dc, is taken when t0(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when t0(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x31f4 targets 0x3048 and is always taken.
  The `beq` branch at 0x3218 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x3258 targets 0x32ec, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x3268 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x3284 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x328c targets 0x2cc0 and is always taken.
  The `beq` branch at 0x3294 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x32d4 targets 0x3304, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x32e4 targets 0x2cc0 and is always taken.
  The `bne` branch at 0x32f4 targets 0x2cc0, is taken when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0, and falls through when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `beq` branch at 0x32fc targets 0x2cc0 and is always taken.
  The `bne` branch at 0x330c targets 0x2cc0, is taken when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0, and falls through when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `beq` branch at 0x3314 targets 0x2cc0 and is always taken.
  The return at 0x2cf4 has v0 = one of 0xd, 0x6, ?, 0x13.
