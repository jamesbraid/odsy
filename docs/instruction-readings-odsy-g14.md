# Instruction readings from hostfacts

Each entry reports selected non-stack accesses, calls with argument slots, conditional branches and return values from the exact binary build named in its header. Every claim cites its instruction address. These are software observations, graded Inferred; they do not establish hardware behaviour.


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
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2608, `sd` at 0x2704, `sd` at 0x2780.
  The `lw` at 0x2618 loads 4 bytes from entry(sym(GfxDev)) +0x4.
  2 such `lw` accesses load 4 bytes from ret(gthread_find) +0x8, including `lw` at 0x2684, `lw` at 0x27d0.
  The `sd` at 0x26a8 stores 8 bytes to [ret(gthread_find)+16]:8 +0x18.
  4 such `ld` accesses load 8 bytes from ret(gthread_find) +0x0, including `ld` at 0x26c0, `ld` at 0x29c0, `ld` at 0x29d4.
  The `lw` at 0x26dc loads 4 bytes from entry(sym(GfxDev)) +0x38.
  The `sw` at 0x26f0 stores 4 bytes to entry(sym(GfxDev)) +0x38.
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
  The `jal` at 0x28f4 calls splx with a0=?, a1=?, a2=?, a3=?.
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
- `gfxopen` in `usr/cpu/sysgen/IP30boot/gfxs.a(gfx.o)` at 0x1fb8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/gfxs.a(gfx.o)`.
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
- `gfxclose` in `usr/cpu/sysgen/IP30boot/gfxs.a(gfx.o)` at 0x249c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/gfxs.a(gfx.o)`.
  Range: 0x249c-0x2a10 (1396 bytes).
  It occupies 1396 bytes.
  The `ld` at 0x2574 loads 8 bytes from table(sym(GfxDev)) +0x0.
  4 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0x2588, `ld` at 0x269c, `ld` at 0x2888.
  2 such `ld` accesses load 8 bytes from [ret(gthread_find)+16]:8 +0x18, including `ld` at 0x2594, `ld` at 0x2894.
  The `ld` at 0x2598 loads 8 bytes from entry(sym(GfxDev)) +0x10.
  The `ld` at 0x25b4 loads 8 bytes from ret(gthread_find) +0x18.
  17 such `ld` accesses load 8 bytes from ?, including `ld` at 0x25d8, `ld` at 0x25e4, `ld` at 0x2600.
  2 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x18, including `ld` at 0x2604, `ld` at 0x2778.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2608, `sd` at 0x2704, `sd` at 0x2780.
  The `lw` at 0x2618 loads 4 bytes from entry(sym(GfxDev)) +0x4.
  2 such `lw` accesses load 4 bytes from ret(gthread_find) +0x8, including `lw` at 0x2684, `lw` at 0x27d0.
  The `sd` at 0x26a8 stores 8 bytes to [ret(gthread_find)+16]:8 +0x18.
  4 such `ld` accesses load 8 bytes from ret(gthread_find) +0x0, including `ld` at 0x26c0, `ld` at 0x29c0, `ld` at 0x29d4.
  The `lw` at 0x26dc loads 4 bytes from entry(sym(GfxDev)) +0x38.
  The `sw` at 0x26f0 stores 4 bytes to entry(sym(GfxDev)) +0x38.
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
  The `jal` at 0x28f4 calls splx with a0=?, a1=?, a2=?, a3=?.
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
- `VEC_int` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x0-0x22c (556 bytes).
  It occupies 556 bytes.
  The `ld` at 0x30 loads 8 bytes from abs 0xffffffffffffc030.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xe0, including `ld` at 0x40, `ld` at 0xc4.
  The `ld` at 0x50 loads 8 bytes from abs 0xffffffffffffc028.
  The `ld` at 0x54 loads 8 bytes from [-0x3fd8]:8 +0x98.
  The `sd` at 0x58 stores 8 bytes to abs 0xffffffffffffc018.
  The `lh` at 0x60 loads 2 bytes from [-0x3fd8]:8 +0xaa.
  4 such `sb` accesses store 1 byte to abs 0xffffffffffffc04f, including `sb` at 0x68, `sb` at 0x120, `sb` at 0x16c.
  The `ld` at 0x70 loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `ld` at 0x78 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x7c loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x80 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x84 loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `ld` at 0x88 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `ld` at 0x8c loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `ld` at 0x90 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x94 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `ld` at 0x98 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `ld` at 0x9c loads 8 bytes from a0 (arg0 at entry) +0x80.
  The `ld` at 0xa0 loads 8 bytes from a0 (arg0 at entry) +0x88.
  The `ld` at 0xa4 loads 8 bytes from a0 (arg0 at entry) +0x90.
  The `ld` at 0xa8 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `ld` at 0xac loads 8 bytes from a0 (arg0 at entry) +0xa0.
  The `ld` at 0xb0 loads 8 bytes from a0 (arg0 at entry) +0xa8.
  The `ld` at 0xb4 loads 8 bytes from a0 (arg0 at entry) +0xb0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xf8, including `ld` at 0xb8, `ld` at 0x12c.
  The `ld` at 0xbc loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0xc8 loads 8 bytes from a0 (arg0 at entry) +0xd8.
  The `ld` at 0xcc loads 8 bytes from a0 (arg0 at entry) +0xf0.
  2 such `lb` accesses load 1 byte from abs 0xffffffffffffc04e, including `lb` at 0xe8, `lb` at 0x1b8.
  The `ld` at 0xf4 loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0xf8 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `lw` at 0x100 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x0.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x118, `ld` at 0x140, `ld` at 0x1a0.
  The `ld` at 0x134 loads 8 bytes from a0 (arg0 at entry) +0x118.
  The `lb` at 0x158 loads 1 byte from abs 0xffffffffffffc053.
  The `sb` at 0x168 stores 1 byte to abs 0xffffffffffffc053.
  The `lb` at 0x170 loads 1 byte from abs 0xffffffffffffc050.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc3c0, including `ld` at 0x180, `ld` at 0x20c.
  The `sb` at 0x194 stores 1 byte to abs 0xffffffffffffc050.
  The `sd` at 0x1a4 stores 8 bytes to [-0x3fe0]:8 +0x228.
  The `jal` at 0x18 calls intr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3).
  The `jal` at 0x5c calls uli_setasids with a0=[[-0x3fd8]:8+170]:2, a1=[[-0x3fd8]:8+152]:8, a2=?, a3=?.
  The `jal` at 0x6c calls tfi_restore with a0=?, a1=0x4, a2=?, a3=?.
  Calls backtouser via direct with a0=[[[-0x3fe8]:8+992]:8], a1=?, a2=?, a3=? (`j` at 0x10c).
  The `jal` at 0x124 calls ktimer_switch with a0=[-0x3fe0]:8, a1=0x1, a2=?, a3=?.
  Calls soft_trap via direct with a0=a0 at entry (arg0), a1=0x84, a2=?, a3=[a0+280]:8 (`j` at 0x138).
  The `jal` at 0x150 calls ktimer_switch with a0=[-0x3fe0]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x17c calls splhi with a0=?, a1=?, a2=?, a3=?.
  Calls resumeidle via direct with a0=0x0, a1=?, a2=?, a3=? (`j` at 0x198).
  The `jal` at 0x1c4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1dc calls kpswtch with a0=?, a1=?, a2=?, a3=?.
  Calls exception_leave via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x1fc).
  The `jal` at 0x224 calls cmn_err with a0=0x0, a1=sym(.data), a2=?, a3=?.
  The `beq` branch at 0x38 targets 0xd4, is taken when sp(=sp) >= k0(=[-0x3fd0]:8) (unsigned), and falls through when sp(=sp) < k0(=[-0x3fd0]:8) (unsigned).
  The `beq` branch at 0x48 targets 0x1fc, is taken when k0(=[-0x3fd0]:8) >= s0(=[a0+224]:8) (signed), and falls through when k0(=[-0x3fd0]:8) < s0(=[a0+224]:8) (signed).
  The `bne` branch at 0xd4 targets 0x204, is taken when sp(?) != k0(?), and falls through when sp(?) == k0(?).
  The `beq` branch at 0xe0 targets 0x140, is taken when (s0(?) & 0x18) == 0, and falls through when (s0(?) & 0x18) != 0.
  The `bne` branch at 0xec targets 0x114, is taken when a0(=[-0x3fb2]:1) != 0, and falls through when a0(=[-0x3fb2]:1) == 0.
  The `bne` branch at 0x104 targets 0x114, is taken when a0(=[[[-0x3fe8]:8+992]:8]) != 0, and falls through when a0(=[[[-0x3fe8]:8+992]:8]) == 0.
  The `beq` branch at 0x148 targets 0x158, is taken when a0(=[-0x3fe0]:8) == 0, and falls through when a0(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x15c targets 0x1a0, is taken when k0(=[-0x3fad]:1) == 0, and falls through when k0(=[-0x3fad]:1) != 0.
  The `beq` branch at 0x174 targets 0x1fc, is taken when k0(=[-0x3fb0]:1) == 0, and falls through when k0(=[-0x3fb0]:1) != 0.
  The `beq` branch at 0x1b0 targets 0x1fc, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x1bc targets 0x1fc, is taken when v0(=[-0x3fb2]:1) == 0, and falls through when v0(=[-0x3fb2]:1) != 0.
- `tfp_special_int_exit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x30-0x1dc (428 bytes).
  It occupies 428 bytes.
  The `ld` at 0x30 loads 8 bytes from abs 0xffffffffffffc030.
  25 such `ld` accesses load 8 bytes from ?, including `ld` at 0x40, `ld` at 0x70, `ld` at 0x78.
  The `ld` at 0x50 loads 8 bytes from abs 0xffffffffffffc028.
  The `ld` at 0x54 loads 8 bytes from [-0x3fd8]:8 +0x98.
  The `sd` at 0x58 stores 8 bytes to abs 0xffffffffffffc018.
  The `lh` at 0x60 loads 2 bytes from [-0x3fd8]:8 +0xaa.
  4 such `sb` accesses store 1 byte to abs 0xffffffffffffc04f, including `sb` at 0x68, `sb` at 0x120, `sb` at 0x16c.
  2 such `lb` accesses load 1 byte from abs 0xffffffffffffc04e, including `lb` at 0xe8, `lb` at 0x1b8.
  The `ld` at 0xf4 loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0xf8 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `lw` at 0x100 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x0.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x118, `ld` at 0x140, `ld` at 0x1a0.
  The `lb` at 0x158 loads 1 byte from abs 0xffffffffffffc053.
  The `sb` at 0x168 stores 1 byte to abs 0xffffffffffffc053.
  The `lb` at 0x170 loads 1 byte from abs 0xffffffffffffc050.
  The `ld` at 0x180 loads 8 bytes from abs 0xffffffffffffc3c0.
  The `sb` at 0x194 stores 1 byte to abs 0xffffffffffffc050.
  The `sd` at 0x1a4 stores 8 bytes to [-0x3fe0]:8 +0x228.
  The `jal` at 0x5c calls uli_setasids with a0=[[-0x3fd8]:8+170]:2, a1=[[-0x3fd8]:8+152]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6c calls tfi_restore with a0=?, a1=0x4, a2=?, a3=?.
  Calls backtouser via direct with a0=[[[-0x3fe8]:8+992]:8], a1=?, a2=?, a3=? (`j` at 0x10c).
  The `jal` at 0x124 calls ktimer_switch with a0=[-0x3fe0]:8, a1=0x1, a2=?, a3=?.
  Calls soft_trap via direct with a0=?, a1=0x84, a2=?, a3=? (`j` at 0x138).
  The `jal` at 0x150 calls ktimer_switch with a0=[-0x3fe0]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x17c calls splhi with a0=?, a1=?, a2=?, a3=?.
  Calls resumeidle via direct with a0=0x0, a1=?, a2=?, a3=? (`j` at 0x198).
  The `jal` at 0x1c4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x38 targets 0xd4, is taken when sp(=sp) >= k0(=[-0x3fd0]:8) (unsigned), and falls through when sp(=sp) < k0(=[-0x3fd0]:8) (unsigned).
  The `beq` branch at 0x48 targets 0x1fc, is taken when k0(=[-0x3fd0]:8) >= s0(?) (signed), and falls through when k0(=[-0x3fd0]:8) < s0(?) (signed).
  The `bne` branch at 0xd4 targets 0x204, is taken when sp(?) != k0(?), and falls through when sp(?) == k0(?).
  The `beq` branch at 0xe0 targets 0x140, is taken when (s0(?) & 0x18) == 0, and falls through when (s0(?) & 0x18) != 0.
  The `bne` branch at 0xec targets 0x114, is taken when a0(=[-0x3fb2]:1) != 0, and falls through when a0(=[-0x3fb2]:1) == 0.
  The `bne` branch at 0x104 targets 0x114, is taken when a0(=[[[-0x3fe8]:8+992]:8]) != 0, and falls through when a0(=[[[-0x3fe8]:8+992]:8]) == 0.
  The `beq` branch at 0x148 targets 0x158, is taken when a0(=[-0x3fe0]:8) == 0, and falls through when a0(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x15c targets 0x1a0, is taken when k0(=[-0x3fad]:1) == 0, and falls through when k0(=[-0x3fad]:1) != 0.
  The `beq` branch at 0x174 targets 0x1fc, is taken when k0(=[-0x3fb0]:1) == 0, and falls through when k0(=[-0x3fb0]:1) != 0.
  The `beq` branch at 0x1b0 targets 0x1fc, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x1bc targets 0x1fc, is taken when v0(=[-0x3fb2]:1) == 0, and falls through when v0(=[-0x3fb2]:1) != 0.
- `kpreemption` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1dc-0x22c (80 bytes).
  It occupies 80 bytes.
  The `jal` at 0x1dc calls kpswtch with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls exception_leave via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x1fc).
  The instructions from 0x204 to 0x228 are not reached by any path from the entry, and their branches are not listed.
- `arcs_write` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x22c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x22c-0x284 (88 bytes).
  It occupies 88 bytes.
  The `ld` at 0x26c loads 8 bytes from abs 0xa800000000001040.
  The `ld` at 0x270 loads 8 bytes from [0xa800000000001040]:8 +0xd8.
  The `jal` at 0x24c calls ioc_console_write with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=a3 at entry (arg3), a6=a2 at entry (arg2).
  The `jalr` at 0x274 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=a2 at entry (arg2).
  The `beq` branch at 0x23c targets 0x268, is taken when at(=[sym(_prom_cleared)]) == 0, and falls through when at(=[sym(_prom_cleared)]) != 0.
  The `beq` branch at 0x27c targets 0x258 and is always taken.
  The return at 0x260 has v0 = one of ret(ioc_console_write), ret(?).
- `arcs_load` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x284 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x284-0x2e4 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0x2a8 loads 8 bytes from abs 0xa800000000001040.
  The `ld` at 0x2ac loads 8 bytes from [0xa800000000001040]:8 +0x0.
  The `jalr` at 0x2b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2c8 calls cmn_err with a0=0x0, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x29c targets 0x2c4, is taken when at(=[sym(_prom_cleared)]) != 0, and falls through when at(=[sym(_prom_cleared)]) == 0.
  The `beq` branch at 0x2dc targets 0x2a4 and is always taken.
  The return at 0x2bc has v0 = ret(?).
- `prom_reinit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x328 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x328-0x380 (88 bytes).
  It occupies 88 bytes.
  The `lh` at 0x32c loads 2 bytes from abs 0xffffffffffffc3a0.
  The `ld` at 0x364 loads 8 bytes from abs 0xa800000000001040.
  The `ld` at 0x368 loads 8 bytes from [0xa800000000001040]:8 +0x28.
  The `jal` at 0x33c calls silence_bell with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x344 calls set_autopoweron with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x358 calls cpu_soft_powerdown with a0=0xa800000000001040, a1=?, a2=?, a3=?.
  The `jalr` at 0x36c calls (unknown callee) with a0=[[0xa800000000001040]:8+40]:8, a1=?, a2=?, a3=?.
  The `bne` branch at 0x334 targets 0x360, is taken when at(=[-0x3c60]:2) != v0(=[sym(master_procid)]:2), and falls through when at(=[-0x3c60]:2) == v0(=[sym(master_procid)]:2).
  The `beq` branch at 0x350 targets 0x364, is taken when v1(=[sym(power_off_flag)]) == 0, and falls through when v1(=[sym(power_off_flag)]) != 0.
  The return at 0x378 has v0 = ret(?).
- `arcs_setuproot` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x380 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x380-0x3c8 (72 bytes).
  It occupies 72 bytes.
  The `jal` at 0x38c calls kopt_find with a0=sym(.rodata), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3a0 calls arcs_to_dsk [0x458] with a0=ret(kopt_find), a1=sp-32, a2=?, a3=?.
  The `jal` at 0x3b4 calls kopt_set with a0=sym(.rodata), a1=sp-32, a2=?, a3=?.
  The `beq` branch at 0x394 targets 0x3c0, is taken when v0(=ret(kopt_find)) == 0, and falls through when v0(=ret(kopt_find)) != 0.
  The `beq` branch at 0x3a8 targets 0x3bc, is taken when v0(=ret(arcs_to_dsk)) == 0, and falls through when v0(=ret(arcs_to_dsk)) != 0.
  The return at 0x3c0 has v0 = one of ret(kopt_find), ?.
- `arcs_getenv` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3c8-0x3f0 (40 bytes).
  It occupies 40 bytes.
  The `ld` at 0x3cc loads 8 bytes from abs 0xa800000000001040.
  The `ld` at 0x3d0 loads 8 bytes from [0xa800000000001040]:8 +0xf0.
  The `jalr` at 0x3dc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x3e8 has v0 = ret(?).
- `arcs_nvram_tab` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3f0-0x418 (40 bytes).
  It occupies 40 bytes.
  The `ld` at 0x3f4 loads 8 bytes from abs 0xa800000000001050.
  The `ld` at 0x3f8 loads 8 bytes from [0xa800000000001050]:8 +0x8.
  The `jalr` at 0x404 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x410 has v0 = ret(?).
- `arcs_eaddr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x418 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x418-0x43c (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x428 calls bcopy with a0=sym(eaddr), a1=a0 at entry (arg0), a2=0x6, a3=a3 at entry (arg3).
  The return at 0x434 has v0 = ret(bcopy).
- `arcs_to_dsk` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x458 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x458-0x6a0 (584 bytes).
  It occupies 584 bytes.
  The `lbu` at 0x49c loads 1 byte from a0 (arg0 at entry) +0x0.
  5 such `lbu` accesses load 1 byte from ret(strchr) +0x1, including `lbu` at 0x4c4, `lbu` at 0x4ec, `lbu` at 0x57c.
  The `jal` at 0x478 calls strncmp with a0=sym(.rodata), a1=a0 at entry (arg0), a2=0x4, a3=a3 at entry (arg3).
  The `jal` at 0x4b4 calls strchr with a0=ret(strchr)+1, a1=0x29, a2=?, a3=?.
  The `jal` at 0x4d8 calls strchr with a0=?, a1=0x28, a2=?, a3=?.
  The `jal` at 0x514 calls strncmp with a0=sym(.rodata), a1=?, a2=0x4, a3=?.
  The `jal` at 0x530 calls strncmp with a0=sym(.rodata), a1=?, a2=0x4, a3=?.
  The `jal` at 0x548 calls strncmp with a0=sym(.rodata), a1=?, a2=0x4, a3=?.
  The `jal` at 0x558 calls atoi with a0=ret(strchr)+1, a1=?, a2=?, a3=?.
  The `jal` at 0x56c calls strchr with a0=a0 at entry (arg0), a1=0x28, a2=?, a3=?.
  The `jal` at 0x588 calls atoi with a0=ret(strchr)+1, a1=[ret(strchr)+1]:1, a2=?, a3=?.
  The `jal` at 0x598 calls strchr with a0=ret(strchr)+1, a1=0x2c, a2=?, a3=?.
  The `jal` at 0x5b4 calls atoi with a0=ret(strchr)+1, a1=?, a2=[ret(strchr)+1]:1, a3=?.
  The `jal` at 0x5c4 calls strchr with a0=ret(strchr)+1, a1=0x2c, a2=?, a3=?.
  The `jal` at 0x5e0 calls atoi with a0=ret(strchr)+1, a1=?, a2=?, a3=[ret(strchr)+1]:1.
  The `jal` at 0x5f0 calls strchr with a0=a0 at entry (arg0), a1=0x29, a2=?, a3=?.
  The `jal` at 0x618 calls sprintf with a0=a1 at entry (arg1), a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x660 calls atoi with a0=ret(strchr)+1, a1=?, a2=?, a3=?.
  The `jal` at 0x670 calls atoi with a0=ret(strchr)+1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x494 targets 0x568, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x4a0 targets 0x650, is taken when a1(=[a0]:1) == 0, and falls through when a1(=[a0]:1) != 0.
  The `beq` branch at 0x4a8 targets 0x4d4 and is always taken.
  The `beq` branch at 0x4bc targets 0x658, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x4cc targets 0x600, is taken when a2(=[ret(strchr)+1]:1) == 0, and falls through when a2(=[ret(strchr)+1]:1) != 0.
  The `beq` branch at 0x4e0 targets 0x628, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x4f8 targets 0x628, is taken when v1(=[ret(strchr)+1]:1) == 0, and falls through when v1(=[ret(strchr)+1]:1) != 0.
  The `bne` branch at 0x504 targets 0x4b0, is taken when v0(?) < 0x4 (signed), and falls through when v0(?) >= 0x4 (signed).
  The `beq` branch at 0x51c targets 0x660, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x538 targets 0x670, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `bne` branch at 0x550 targets 0x4b4, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x560 targets 0x4b0 and is always taken.
  The `beq` branch at 0x574 targets 0x680, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x580 targets 0x680, is taken when a1(=[ret(strchr)+1]:1) == 0, and falls through when a1(=[ret(strchr)+1]:1) != 0.
  The `beq` branch at 0x5a0 targets 0x688, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x5ac targets 0x688, is taken when a2(=[ret(strchr)+1]:1) == 0, and falls through when a2(=[ret(strchr)+1]:1) != 0.
  The `beq` branch at 0x5cc targets 0x690, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x5d8 targets 0x690, is taken when a3(=[ret(strchr)+1]:1) == 0, and falls through when a3(=[ret(strchr)+1]:1) != 0.
  The `beq` branch at 0x5f8 targets 0x698, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x600 targets 0x650, is taken when s3(?) == a4(=-0x1), and falls through when s3(?) != a4(=-0x1).
  The `beq` branch at 0x620 targets 0x62c and is always taken.
  The `beq` branch at 0x650 targets 0x62c and is always taken.
  The `beq` branch at 0x658 targets 0x62c and is always taken.
  The `beq` branch at 0x668 targets 0x4b0 and is always taken.
  The `beq` branch at 0x678 targets 0x4b0 and is always taken.
  The `beq` branch at 0x680 targets 0x62c and is always taken.
  The `beq` branch at 0x688 targets 0x62c and is always taken.
  The `beq` branch at 0x690 targets 0x62c and is always taken.
  The `beq` branch at 0x698 targets 0x62c and is always taken.
  The return at 0x648 has v0 = one of 0x0, 0x1.
- `exception_exit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6a0-0x978 (728 bytes).
  It occupies 728 bytes.
  3 such `lwu` accesses load 4 bytes from abs 0xffffffffffffd00c, including `lwu` at 0x6a4, `lwu` at 0x718, `lwu` at 0x794.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffd000, including `ld` at 0x6c4, `ld` at 0x7d4.
  The `sd` at 0x6c8 stores 8 bytes to [-0x3000]:8 +0x48.
  The `sd` at 0x6d4 stores 8 bytes to [-0x3000]:8 +0x0.
  The `sd` at 0x6dc stores 8 bytes to [-0x3000]:8 +0x8.
  The `sd` at 0x6e4 stores 8 bytes to [-0x3000]:8 +0x10.
  The `sd` at 0x6ec stores 8 bytes to [-0x3000]:8 +0x18.
  The `sd` at 0x6f0 stores 8 bytes to [-0x3000]:8 +0x20.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x6f4, `ld` at 0x8e0.
  The `sd` at 0x6f8 stores 8 bytes to [-0x3000]:8 +0x28.
  The `sd` at 0x6fc stores 8 bytes to [-0x3000]:8 +0x30.
  The `sd` at 0x704 stores 8 bytes to [-0x3000]:8 +0x38.
  The `lwu` at 0x708 loads 4 bytes from abs 0xffffffffffffd008.
  The `sw` at 0x710 stores 4 bytes to abs 0xffffffffffffd008.
  The `sd` at 0x714 stores 8 bytes to [-0x3000]:8 +0x40.
  The `sd` at 0x728 stores 8 bytes to [-0x3000]:8 +0x50.
  The `sd` at 0x72c stores 8 bytes to [-0x3000]:8 +0x58.
  The `sd` at 0x730 stores 8 bytes to [-0x3000]:8 +0x60.
  The `sd` at 0x734 stores 8 bytes to [-0x3000]:8 +0x68.
  The `sd` at 0x738 stores 8 bytes to [-0x3000]:8 +0x70.
  The `sd` at 0x73c stores 8 bytes to [-0x3000]:8 +0x78.
  The `sd` at 0x740 stores 8 bytes to [-0x3000]:8 +0x80.
  The `sd` at 0x744 stores 8 bytes to [-0x3000]:8 +0x88.
  The `sd` at 0x748 stores 8 bytes to [-0x3000]:8 +0x90.
  The `sd` at 0x74c stores 8 bytes to [-0x3000]:8 +0x98.
  The `sd` at 0x750 stores 8 bytes to [-0x3000]:8 +0xa0.
  The `sd` at 0x754 stores 8 bytes to [-0x3000]:8 +0xa8.
  The `sd` at 0x758 stores 8 bytes to [-0x3000]:8 +0xb0.
  The `sd` at 0x75c stores 8 bytes to [-0x3000]:8 +0xb8.
  The `sd` at 0x760 stores 8 bytes to [-0x3000]:8 +0xc0.
  The `sd` at 0x764 stores 8 bytes to [-0x3000]:8 +0xc8.
  The `sd` at 0x768 stores 8 bytes to [-0x3000]:8 +0xd0.
  The `sd` at 0x76c stores 8 bytes to [-0x3000]:8 +0xd8.
  The `sd` at 0x770 stores 8 bytes to [-0x3000]:8 +0xe0.
  The `sd` at 0x774 stores 8 bytes to [-0x3000]:8 +0xe8.
  The `sd` at 0x778 stores 8 bytes to [-0x3000]:8 +0xf0.
  The `sd` at 0x77c stores 8 bytes to [-0x3000]:8 +0xf8.
  The `sd` at 0x780 stores 8 bytes to [-0x3000]:8 +0x100.
  The `sd` at 0x784 stores 8 bytes to [-0x3000]:8 +0x108.
  The `sd` at 0x788 stores 8 bytes to [-0x3000]:8 +0x110.
  The `sd` at 0x78c stores 8 bytes to [-0x3000]:8 +0x118.
  The `sd` at 0x790 stores 8 bytes to [-0x3000]:8 +0x120.
  3 such `ld` accesses load 8 bytes from [-0x3000]:8 +0x30, including `ld` at 0x7a4, `ld` at 0x7d8, `ld` at 0x8a0.
  2 such `lwu` accesses load 4 bytes from abs 0xffffffffffffd014, including `lwu` at 0x7c0, `lwu` at 0x804.
  The `ld` at 0x7cc loads 8 bytes from abs 0xffffffffffffc3c0.
  The `sd` at 0x800 stores 8 bytes to [-0x3000]:8 +0x128.
  The `sd` at 0x828 stores 8 bytes to ([-0x3000]:8+296 + [-0x2fec]-8) +0x0.
  The `ld` at 0x830 loads 8 bytes from [-0x3000]:8 +0x50.
  The `ld` at 0x834 loads 8 bytes from [-0x3000]:8 +0x58.
  The `ld` at 0x838 loads 8 bytes from [-0x3000]:8 +0x60.
  The `ld` at 0x83c loads 8 bytes from [-0x3000]:8 +0x68.
  The `ld` at 0x840 loads 8 bytes from [-0x3000]:8 +0x70.
  The `ld` at 0x844 loads 8 bytes from [-0x3000]:8 +0x78.
  The `ld` at 0x848 loads 8 bytes from [-0x3000]:8 +0x80.
  The `ld` at 0x84c loads 8 bytes from [-0x3000]:8 +0x88.
  The `ld` at 0x850 loads 8 bytes from [-0x3000]:8 +0x90.
  The `ld` at 0x854 loads 8 bytes from [-0x3000]:8 +0x98.
  The `ld` at 0x858 loads 8 bytes from [-0x3000]:8 +0xa0.
  The `ld` at 0x85c loads 8 bytes from [-0x3000]:8 +0xa8.
  The `ld` at 0x860 loads 8 bytes from [-0x3000]:8 +0xb0.
  The `ld` at 0x864 loads 8 bytes from [-0x3000]:8 +0xb8.
  The `ld` at 0x868 loads 8 bytes from [-0x3000]:8 +0xc0.
  The `ld` at 0x86c loads 8 bytes from [-0x3000]:8 +0xc8.
  The `ld` at 0x870 loads 8 bytes from [-0x3000]:8 +0xd0.
  The `ld` at 0x874 loads 8 bytes from [-0x3000]:8 +0xd8.
  The `ld` at 0x878 loads 8 bytes from [-0x3000]:8 +0xe0.
  The `ld` at 0x87c loads 8 bytes from [-0x3000]:8 +0xe8.
  The `ld` at 0x880 loads 8 bytes from [-0x3000]:8 +0xf0.
  The `ld` at 0x884 loads 8 bytes from [-0x3000]:8 +0xf8.
  The `ld` at 0x888 loads 8 bytes from [-0x3000]:8 +0x100.
  The `ld` at 0x88c loads 8 bytes from [-0x3000]:8 +0x108.
  The `ld` at 0x890 loads 8 bytes from [-0x3000]:8 +0x110.
  The `ld` at 0x894 loads 8 bytes from [-0x3000]:8 +0x118.
  The `ld` at 0x898 loads 8 bytes from [-0x3000]:8 +0x120.
  The `ld` at 0x89c loads 8 bytes from [-0x3000]:8 +0x20.
  The `lwu` at 0x8a4 loads 4 bytes from abs 0xffffffffffffd010.
  The `sd` at 0x8c0 stores 8 bytes to abs 0xffffffffffffd000.
  The `lb` at 0x8d4 loads 1 byte from abs 0xffffffffffffc04e.
  The `ld` at 0x8e4 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `lw` at 0x8ec loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x0.
  22 such `ld` accesses load 8 bytes from ?, including `ld` at 0x904, `ld` at 0x918, `ld` at 0x91c.
  The `jal` at 0x6b8 calls getpc with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7d0 calls bcopy with a0=([[-0x3000]:8+48]:8 + [-0x2fec]), a1=[-0x3000]:8+296, a2=[-0x2fec], a3=?.
  Calls backtouser via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x8f8).
  Calls soft_trap via direct with a0=?, a1=0x84, a2=?, a3=? (`j` at 0x908).
  The `jal` at 0x910 calls tfi_restore with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x6ac targets 0x8c4, is taken when (k0(=[-0x2ff4]) & 0x1) == 0, and falls through when (k0(=[-0x2ff4]) & 0x1) != 0.
  The `beq` branch at 0x720 targets 0x8a4, is taken when (k0(=[-0x2ff4]) & 0x2) == 0, and falls through when (k0(=[-0x2ff4]) & 0x2) != 0.
  The `beq` branch at 0x79c targets 0x8a4, is taken when (k0(=[-0x2ff4]) & 0x4) == 0, and falls through when (k0(=[-0x2ff4]) & 0x4) != 0.
  The `bne` branch at 0x7b8 targets 0x7e4, is taken when a1(?) != a2(=-0x8000), and falls through when a1(?) == a2(=-0x8000).
  The `beq` branch at 0x7dc targets 0x82c and is always taken.
  The `bne` branch at 0x8b4 targets 0x8c0, is taken when k1(=([-0x3000]:8 + [-0x2ff0])) < k0(=-0x1001) (signed), and falls through when k1(=([-0x3000]:8 + [-0x2ff0])) >= k0(=-0x1001) (signed).
  The `beq` branch at 0x8cc targets 0x910, is taken when (s0(?) & 0x18) == 0, and falls through when (s0(?) & 0x18) != 0.
  The `bne` branch at 0x8d8 targets 0x900, is taken when k0(=[-0x3fb2]:1) != 0, and falls through when k0(=[-0x3fb2]:1) == 0.
  The `bne` branch at 0x8f0 targets 0x900, is taken when k0(=[[[-0x3fe8]:8+992]:8]) != 0, and falls through when k0(=[[[-0x3fe8]:8+992]:8]) == 0.
- `exception_leave` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x910 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x910-0x980 (112 bytes).
  It occupies 112 bytes.
  21 such `ld` accesses load 8 bytes from ?, including `ld` at 0x918, `ld` at 0x91c, `ld` at 0x920.
  The `jal` at 0x910 calls tfi_restore with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
- `unmaptlb` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x980 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x980-0x9f8 (120 bytes).
  It occupies 120 bytes.
  The `lh` at 0x994 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lbu` at 0x99c loads 1 byte from (a0 + [-0x3c60]:2) +0x0.
  The `beq` branch at 0x98c targets 0x9a0, is taken when a0 == 0, and falls through when a0 != 0.
  The `bltz` branch at 0x9c4 targets 0x9e8, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The return at 0x9f0 has v0 = one of 0x0, ?.
- `invaltlb` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9f8-0xa34 (60 bytes).
  It occupies 60 bytes.
  The return at 0xa2c has v0 = ?.
- `tlbwired` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa34 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa34-0xa9c (104 bytes).
  It occupies 104 bytes.
  The `lh` at 0xa4c loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lbu` at 0xa54 loads 1 byte from (a1 + [-0x3c60]:2) +0x0.
  The `beq` branch at 0xa44 targets 0xa58, is taken when a1 == 0, and falls through when a1 != 0.
  The return at 0xa94 has v0 = ?.
- `tlbdropin` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa9c-0xb78 (220 bytes).
  It occupies 220 bytes.
  The `lh` at 0xac4 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lbu` at 0xacc loads 1 byte from (a0 + [-0x3c60]:2) +0x0.
  The `beq` branch at 0xaac targets 0xad0, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0xab4 targets 0xac4, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `beq` branch at 0xabc targets 0xad0 and is always taken.
  The `bltz` branch at 0xaf0 targets 0xb44, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `beq` branch at 0xafc targets 0xb18, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xb10 targets 0xb28 and is always taken.
  The `beq` branch at 0xb44 targets 0xb5c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xb54 targets 0xb64 and is always taken.
  The return at 0xb3c has v0 = ?.
  The return at 0xb70 has v0 = 0x0.
- `tlbdrop2in` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb78 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb78-0xbd4 (92 bytes).
  It occupies 92 bytes.
  The `bltz` branch at 0xbac targets 0xbc0, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `beq` branch at 0xbb8 targets 0xbc4 and is always taken.
  The return at 0xbcc has v0 = 0x0.
- `tlbdropin_lpgs` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbd4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbd4-0xc50 (124 bytes).
  It occupies 124 bytes.
  The `bltz` branch at 0xc24 targets 0xc38, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0xc30 targets 0xc3c and is always taken.
  The return at 0xc48 has v0 = ?.
- `flush_tlb` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc50-0xc98 (72 bytes).
  It occupies 72 bytes.
  The `bne` branch at 0xc84 targets 0xc7c, is taken when a0(?) != v1(=0x40), and falls through when a0(?) == v1(=0x40).
  The return at 0xc90 has v0 = ?.
- `set_tlbpid` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc98 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc98-0xce4 (76 bytes).
  It occupies 76 bytes.
  The `bne` branch at 0xcd0 targets 0xcac, is taken when t3(=0x1) < t1(?) (signed), and falls through when t3(=0x1) >= t1(?) (signed).
  The return at 0xcdc has v0 = ?.
- `tlbfind` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xce4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xce4-0xd4c (104 bytes).
  It occupies 104 bytes.
  The `sd` at 0xd1c stores 8 bytes to a2 (arg2 at entry) +0x0.
  The `sd` at 0xd24 stores 8 bytes to a3 (arg3 at entry) +0x0.
  The `bltz` branch at 0xd0c targets 0xd30, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0xd28 targets 0xd34 and is always taken.
  The return at 0xd44 has v0 = one of ?, -0x1.
- `tlbgetpid` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd4c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd4c-0xd58 (12 bytes).
  It occupies 12 bytes.
  The return at 0xd50 has v0 = ?.
- `tlbgetent` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd58-0xda0 (72 bytes).
  It occupies 72 bytes.
  The `sd` at 0xd74 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0xd7c stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0xd84 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The return at 0xd98 has v0 = ?.
- `getrand` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xda0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xda0-0xdac (12 bytes).
  It occupies 12 bytes.
  The return at 0xda4 has v0 = ?.
- `tlbgetrand` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xda0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xda0-0xdac (12 bytes).
  It occupies 12 bytes.
  The return at 0xda4 has v0 = ?.
- `tlb_probe` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdac-0xe24 (120 bytes).
  It occupies 120 bytes.
  The `sw` at 0xde8 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `bltz` branch at 0xdd8 targets 0xe0c, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `bne` branch at 0xe00 targets 0xe0c, is taken when (t1(?) & a1) != 0, and falls through when (t1(?) & a1) == 0.
  The return at 0xe1c has v0 = one of -0x1, ?.
- `save` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe30-0xe6c (60 bytes).
  It occupies 60 bytes.
  The `sd` at 0xe30 stores 8 bytes to a0 (arg0 at entry) +0x50.
  The `sd` at 0xe34 stores 8 bytes to a0 (arg0 at entry) +0x40.
  The `sd` at 0xe38 stores 8 bytes to a0 (arg0 at entry) +0x48.
  The `sd` at 0xe40 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `sd` at 0xe44 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `sd` at 0xe48 stores 8 bytes to a0 (arg0 at entry) +0x10.
  The `sd` at 0xe4c stores 8 bytes to a0 (arg0 at entry) +0x18.
  The `sd` at 0xe50 stores 8 bytes to a0 (arg0 at entry) +0x58.
  The `sd` at 0xe58 stores 8 bytes to a0 (arg0 at entry) +0x20.
  The `sd` at 0xe5c stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `sd` at 0xe60 stores 8 bytes to a0 (arg0 at entry) +0x30.
  The `sd` at 0xe68 stores 8 bytes to a0 (arg0 at entry) +0x38.
  The return at 0xe64 has v0 = 0x0.
- `resume` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe6c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe6c-0xf40 (212 bytes).
  It occupies 212 bytes.
  The `sb` at 0xe88 stores 1 byte to abs 0xffffffffffffc04f.
  The `sb` at 0xe8c stores 1 byte to a1 (arg1 at entry) +0x72.
  The `sb` at 0xe90 stores 1 byte to a0 (arg0 at entry) +0x72.
  The `sd` at 0xe94 stores 8 bytes to abs 0xffffffffffffc020.
  The `sd` at 0xe98 stores 8 bytes to abs 0xffffffffffffc018.
  The `ld` at 0xe9c loads 8 bytes from a0 (arg0 at entry) +0x3e8.
  The `sd` at 0xea0 stores 8 bytes to abs 0xffffffffffffc4b0.
  The `ld` at 0xeb0 loads 8 bytes from abs 0xffffffffffffc4a8.
  The `ld` at 0xebc loads 8 bytes from a0 (arg0 at entry) +0x3e0.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0xed0, `ld` at 0xed8, `ld` at 0xedc.
  The `ld` at 0xf04 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `ld` at 0xf08 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `ld` at 0xf0c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0xf10 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0xf14 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0xf18 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0xf1c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0xf20 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0xf24 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xf28 loads 8 bytes from a0 (arg0 at entry) +0x58.
  The `ld` at 0xf2c loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `ld` at 0xf30 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `beq` branch at 0xe84 targets 0xe90, is taken when a1 == 0, and falls through when a1 != 0.
  The `bne` branch at 0xefc targets 0xed0, is taken when t3(?) != s0(=0x6), and falls through when t3(?) == s0(=0x6).
  The return at 0xf38 has v0 = 0x1.
- `resumethread` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf40-0xfa8 (104 bytes).
  It occupies 104 bytes.
  The `sb` at 0xf54 stores 1 byte to a0 (arg0 at entry) +0x72.
  The `sd` at 0xf58 stores 8 bytes to abs 0xffffffffffffc020.
  The `sd` at 0xf5c stores 8 bytes to abs 0xffffffffffffc018.
  The `sb` at 0xf60 stores 1 byte to abs 0xffffffffffffc04f.
  The `ld` at 0xf68 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `sb` at 0xf70 stores 1 byte to a1 (arg1 at entry) +0x72.
  The `ld` at 0xf74 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `ld` at 0xf78 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0xf7c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0xf80 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0xf84 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0xf88 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0xf8c loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0xf90 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xf94 loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `ld` at 0xf98 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `beq` branch at 0xf64 targets 0xf74, is taken when a0 == a1, and falls through when a0 != a1.
  The `bnel` branch at 0xf6c targets 0xf74, is taken when a1 != 0, and falls through when a1 == 0; its branch-likely delay slot `sb zero,114(a1)` at 0xf70 runs only when taken and is annulled on fall-through.
- `restartxthread` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfa8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfa8-0xfe8 (64 bytes).
  It occupies 64 bytes.
  The `sb` at 0xfbc stores 1 byte to a0 (arg0 at entry) +0x72.
  The `sd` at 0xfc0 stores 8 bytes to abs 0xffffffffffffc020.
  The `sd` at 0xfc4 stores 8 bytes to abs 0xffffffffffffc018.
  The `sb` at 0xfc8 stores 1 byte to abs 0xffffffffffffc04f.
  The `sb` at 0xfd8 stores 1 byte to a2 (arg2 at entry) +0x72.
  Calls xthread_prologue via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xfe0).
  The `beq` branch at 0xfcc targets 0xfdc, is taken when a0 == a2, and falls through when a0 != a2.
  The `bnel` branch at 0xfd4 targets 0xfdc, is taken when a2 != 0, and falls through when a2 == 0; its branch-likely delay slot `sb zero,114(a2)` at 0xfd8 runs only when taken and is annulled on fall-through.
- `loopxthread` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfe8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfe8-0xff0 (8 bytes).
  It occupies 8 bytes.
  Calls xthread_loop_prologue via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xfe8).
- `sthread_launch` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xff0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xff0-0x1014 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0xff0 calls spl0 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004 calls (unknown callee) with a0=s0 at entry, a1=s1 at entry, a2=s2 at entry, a3=s3 at entry.
  The `jal` at 0x100c calls sthread_exit with a0=?, a1=?, a2=?, a3=?.
- `p0_launch` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1014 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1014-0x102c (24 bytes).
  It occupies 24 bytes.
  The `jal` at 0x1014 calls spl0 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101c calls p0 with a0=?, a1=?, a2=?, a3=?.
  Calls proc1 via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x1024).
- `resumeidle` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x102c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x102c-0x1070 (68 bytes).
  It occupies 68 bytes.
  The `sb` at 0x103c stores 1 byte to abs 0xffffffffffffc04f.
  The `ld` at 0x1040 loads 8 bytes from abs 0xffffffffffffc3c0.
  The `sb` at 0x104c stores 1 byte to a0 (arg0 at entry) +0x72.
  The `sd` at 0x1050 stores 8 bytes to abs 0xffffffffffffc020.
  The `sd` at 0x1054 stores 8 bytes to abs 0xffffffffffffc018.
  The `jal` at 0x105c calls idle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1068 calls resumenewthread with a0=ret(idle), a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x1044 targets 0x1050, is taken when a0 == 0, and falls through when a0 != 0.
- `toidlestk` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1070 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1070-0x10ac (60 bytes).
  It occupies 60 bytes.
  The `ld` at 0x1080 loads 8 bytes from abs 0xffffffffffffc3c0.
  The `sb` at 0x1084 stores 1 byte to abs 0xffffffffffffc04f.
  The `sd` at 0x1088 stores 8 bytes to abs 0xffffffffffffc020.
  The `sd` at 0x108c stores 8 bytes to abs 0xffffffffffffc018.
  The `sb` at 0x1090 stores 1 byte to a0 (arg0 at entry) +0x72.
  Calls (unknown callee) via register with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x10a4).
- `setjmp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10ac-0x10e8 (60 bytes).
  It occupies 60 bytes.
  The `sd` at 0x10ac stores 8 bytes to a0 (arg0 at entry) +0x50.
  The `sd` at 0x10b0 stores 8 bytes to a0 (arg0 at entry) +0x40.
  The `sd` at 0x10b4 stores 8 bytes to a0 (arg0 at entry) +0x48.
  The `sd` at 0x10b8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `sd` at 0x10bc stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `sd` at 0x10c0 stores 8 bytes to a0 (arg0 at entry) +0x10.
  The `sd` at 0x10c4 stores 8 bytes to a0 (arg0 at entry) +0x18.
  The `sd` at 0x10c8 stores 8 bytes to a0 (arg0 at entry) +0x20.
  The `sd` at 0x10cc stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `sd` at 0x10d0 stores 8 bytes to a0 (arg0 at entry) +0x30.
  The `sd` at 0x10d4 stores 8 bytes to a0 (arg0 at entry) +0x38.
  The `sd` at 0x10dc stores 8 bytes to a0 (arg0 at entry) +0x58.
  The return at 0x10e0 has v0 = 0x0.
- `longjmp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10e8-0x1124 (60 bytes).
  It occupies 60 bytes.
  The `ld` at 0x10e8 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `ld` at 0x10ec loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `ld` at 0x10f0 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x10f4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x10f8 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x10fc loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x1100 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x1104 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x1108 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x110c loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `ld` at 0x1110 loads 8 bytes from a0 (arg0 at entry) +0x58.
  The `ld` at 0x1114 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The return at 0x111c has v0 = 0x1.
- `ackkgclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.
- `allowintrs` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.
- `apsfail` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.
- `bump_leds` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.
- `check_delay_iflush` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.
- `disallowboot` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.
- `dummy_func` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.
- `heart_dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.
- `heart_dcache_wb_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.
- `heart_write_dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.
- `heart_write_dcache_wb_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.
- `stopkgclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.
- `vme_init` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.
- `vme_ivec_init` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.
- `wd93_init` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.
- `dcache_wb` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1188 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1188-0x1194 (12 bytes).
  It occupies 12 bytes.
  Calls cache_operation via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x21003, a3=a3 at entry (arg3) (`j` at 0x118c).
- `dcache_wbinval` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1188 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1188-0x1194 (12 bytes).
  It occupies 12 bytes.
  Calls cache_operation via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x21003, a3=a3 at entry (arg3) (`j` at 0x118c).
- `dki_dcache_wb` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1188 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1188-0x1194 (12 bytes).
  It occupies 12 bytes.
  Calls cache_operation via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x21003, a3=a3 at entry (arg3) (`j` at 0x118c).
- `dki_dcache_wbinval` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1188 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1188-0x1194 (12 bytes).
  It occupies 12 bytes.
  Calls cache_operation via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x21003, a3=a3 at entry (arg3) (`j` at 0x118c).
- `dki_dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1194 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1194-0x11a0 (12 bytes).
  It occupies 12 bytes.
  Calls cache_operation via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x21001, a3=a3 at entry (arg3) (`j` at 0x1198).
- `dummyret0_func` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11a0-0x11a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x11a0 has v0 = 0x0.
- `heart_need_flush` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11a0-0x11a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x11a0 has v0 = 0x0.
- `is_vme_space` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11a0-0x11a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x11a0 has v0 = 0x0.
- `vme_adapter` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11a0-0x11a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x11a0 has v0 = 0x0.
- `_get_timestamp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11a8-0x11b4 (12 bytes).
  It occupies 12 bytes.
  The `lwu` at 0x11b0 loads 4 bytes from abs 0xffffffffaff20004.
  The return at 0x11ac has v0 = [0xffffffffaff20004].
- `getcpuid` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11b4-0x11c0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x11bc loads 8 bytes from abs 0xffffffffaff50000.
  The return at 0x11b8 has v0 = [0xffffffffaff50000]:8.
- `nmi_dump` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11c0-0x1294 (212 bytes).
  It occupies 212 bytes.
  The `ld` at 0x11cc loads 8 bytes from abs 0xffffffffaff50000.
  The `lw` at 0x11dc loads 4 bytes from abs 0xa800000000000410.
  The `sd` at 0x1204 stores 8 bytes to sym(nmi_saveregs) +0x0.
  The `sd` at 0x120c stores 8 bytes to sym(nmi_saveregs) +0x8.
  The `sd` at 0x1210 stores 8 bytes to sym(nmi_saveregs) +0x10.
  The `sd` at 0x1214 stores 8 bytes to sym(nmi_saveregs) +0x18.
  The `sd` at 0x1278 stores 8 bytes to (sym(nmi_saveregs) + ([0xffffffffaff50000]:8 << 0x5)) +0x0.
  The `sd` at 0x1280 stores 8 bytes to (sym(nmi_saveregs) + ([0xffffffffaff50000]:8 << 0x5)) +0x8.
  The `sd` at 0x1284 stores 8 bytes to (sym(nmi_saveregs) + ([0xffffffffaff50000]:8 << 0x5)) +0x10.
  The `sd` at 0x1288 stores 8 bytes to (sym(nmi_saveregs) + ([0xffffffffaff50000]:8 << 0x5)) +0x18.
  Calls cont_nmi_dump via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x124c).
  The `bne` branch at 0x11e0 targets 0x1254, is taken when k0(=[0xa800000000000410]) != k1(=[0xffffffffaff50000]:8), and falls through when k0(=[0xa800000000000410]) == k1(=[0xffffffffaff50000]:8).
  The `beq` branch at 0x128c targets 0x128c and is always taken.
- `getcachesz` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1294 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1294-0x12b4 (32 bytes).
  It occupies 32 bytes.
  The return at 0x12ac has v0 = ?.
- `bootstrap` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x12b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x12b4-0x1390 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0x12d4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x135c loads 8 bytes from ?.
  The `sd` at 0x137c stores 8 bytes to abs 0xffffffffffffc4a8.
  The `sb` at 0x1380 stores 1 byte to abs 0xffffffffffffc04f.
  The `ld` at 0x1384 loads 8 bytes from abs 0xffffffffffffc3c0.
  The `sw` at 0x138c stores 4 bytes to abs 0xffffffffffffc65c.
  The `jal` at 0x1310 calls getcpuid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x6.
  The `jal` at 0x1370 calls tlbwired with a0=0x0, a1=0x0, a2=-0x4000, a3=0x1, a5=0x6000.
  Calls cboot via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x1388).
- `ffintr64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1400 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1400-0x1470 (112 bytes).
  It occupies 112 bytes.
  The return at 0x1468 has v0 = ?.
- `_ticksper1024inst` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1470 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1470-0x14a4 (52 bytes).
  It occupies 52 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff20000, including `ld` at 0x1480, `ld` at 0x1498.
  The `bgtz` branch at 0x1488 targets 0x1488, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `bgtz` branch at 0x1490 targets 0x1484, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The return at 0x149c has v0 = ?.
- `us_delay` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x14c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x14c0-0x14fc (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0x14c0 loads 4 bytes from abs 0xffffffffffffc4b8.
  The `bgtz` branch at 0x14e4 targets 0x14e4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `bgtz` branch at 0x14ec targets 0x14e0, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The return at 0x14f4 has v0 = ?.
- `heart_intr_low` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x14fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x14fc-0x152c (48 bytes).
  It occupies 48 bytes.
  Calls heart_intr via direct with a0=a0 at entry (arg0), a1=0xffff, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x14fc).
  The instructions from 0x1504 to 0x1528 are not reached by any path from the entry, and their branches are not listed.
- `heart_intr_med` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1504 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1504-0x1510 (12 bytes).
  It occupies 12 bytes.
  Calls heart_intr via direct with a0=a0 at entry (arg0), a1=0xffff0000, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1508).
- `heart_intr_hi` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1510 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1510-0x1520 (16 bytes).
  It occupies 16 bytes.
  Calls heart_intr via direct with a0=a0 at entry (arg0), a1=0x3ffff00000000, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1518).
- `heart_intr_err` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1520 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1520-0x152c (12 bytes).
  It occupies 12 bytes.
  Calls heart_intr via direct with a0=a0 at entry (arg0), a1=0xfff8000000000000, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1524).
- `_pagecopy` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x152c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x152c-0x16f4 (456 bytes).
  It occupies 456 bytes.
  40 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1544, `ld` at 0x1548, `ld` at 0x1550.
  40 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1558, `sd` at 0x155c, `sd` at 0x1560.
  The `beq` branch at 0x1530 targets 0x160c, is taken when a2 == 0, and falls through when a2 != 0.
  The `bne` branch at 0x1538 targets 0x1614, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bgtz` branch at 0x15cc targets 0x1544, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `bgtz` branch at 0x1604 targets 0x15d4, is taken when t0(?) > 0 (signed), and falls through when t0(?) <= 0 (signed).
  The `bgtz` branch at 0x16ac targets 0x1624, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `bgtz` branch at 0x16e4 targets 0x16b4, is taken when t0(?) > 0 (signed), and falls through when t0(?) <= 0 (signed).
  The return at 0x160c has v0 = a1.
  The return at 0x16ec has v0 = a1.
- `_pagezero` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16f4-0x17a4 (176 bytes).
  It occupies 176 bytes.
  32 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1700, `sd` at 0x1704, `sd` at 0x170c.
  The `beq` branch at 0x16f4 targets 0x179c, is taken when a1 == 0, and falls through when a1 != 0.
  The `bgtz` branch at 0x1744 targets 0x1700, is taken when a1(?) > 0 (signed), and falls through when a1(?) <= 0 (signed).
  The `bgtz` branch at 0x1794 targets 0x174c, is taken when t0(?) > 0 (signed), and falls through when t0(?) <= 0 (signed).
  The return at 0x179c has v0 = ?.
- `resetcounter` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1800 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1800-0x1870 (112 bytes).
  It occupies 112 bytes.
  The `bne` branch at 0x1820 targets 0x1848, is taken when t0(?) < t2(?) (unsigned), and falls through when t0(?) >= t2(?) (unsigned).
  The `bne` branch at 0x182c targets 0x183c, is taken when a0 < a4(?) (unsigned), and falls through when a0 >= a4(?) (unsigned).
  The `bne` branch at 0x1854 targets 0x1840, is taken when a4(?) < v0(=0x3e8) (unsigned), and falls through when a4(?) >= v0(=0x3e8) (unsigned).
  The `beq` branch at 0x1860 targets 0x1834, is taken when a4(?) >= a5(=a0+1000) (unsigned), and falls through when a4(?) < a5(=a0+1000) (unsigned).
  The `beq` branch at 0x1868 targets 0x1840 and is always taken.
  The return at 0x1840 has v0 = one of ?, 0x3e8.
- `resetcounter_val` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1800 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1800-0x1870 (112 bytes).
  It occupies 112 bytes.
  The `bne` branch at 0x1820 targets 0x1848, is taken when t0(?) < t2(?) (unsigned), and falls through when t0(?) >= t2(?) (unsigned).
  The `bne` branch at 0x182c targets 0x183c, is taken when a0 < a4(?) (unsigned), and falls through when a0 >= a4(?) (unsigned).
  The `bne` branch at 0x1854 targets 0x1840, is taken when a4(?) < v0(=0x3e8) (unsigned), and falls through when a4(?) >= v0(=0x3e8) (unsigned).
  The `beq` branch at 0x1860 targets 0x1834, is taken when a4(?) >= a5(=a0+1000) (unsigned), and falls through when a4(?) < a5(=a0+1000) (unsigned).
  The `beq` branch at 0x1868 targets 0x1840 and is always taken.
  The return at 0x1840 has v0 = one of ?, 0x3e8.
- `trimcompare` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1880 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1880-0x18e0 (96 bytes).
  It occupies 96 bytes.
  The `beq` branch at 0x189c targets 0x18d8, is taken when t0(?) >= t2(?) (unsigned), and falls through when t0(?) < t2(?) (unsigned).
  The `bne` branch at 0x18a8 targets 0x18d8, is taken when a4(?) < t3(=0x3e8) (unsigned), and falls through when a4(?) >= t3(=0x3e8) (unsigned).
  The `beq` branch at 0x18b0 targets 0x18d0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x18bc targets 0x18d0, is taken when t0(?) >= a1(?) (unsigned), and falls through when t0(?) < a1(?) (unsigned).
  The `beq` branch at 0x18c8 targets 0x18d4, is taken when a4(?) >= t3(=0x3e8) (unsigned), and falls through when a4(?) < t3(=0x3e8) (unsigned).
  The return at 0x18d8 has v0 = ?.
- `initcounter` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1900 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1900-0x191c (28 bytes).
  It occupies 28 bytes.
  The return at 0x1914 has v0 = ?.
- `resetlatency` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x191c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x191c-0x193c (32 bytes).
  It occupies 32 bytes.
  The return at 0x1934 has v0 = ?.
- `start` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1940 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1940-0x1af4 (436 bytes).
  It occupies 436 bytes.
  Calls .text+13072 via reloc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x1984).
  The instructions from 0x198c to 0x1af0 are not reached by any path from the entry, and their branches are not listed.
- `proc1` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1adc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1adc-0x1af4 (24 bytes).
  It occupies 24 bytes.
  The `sb` at 0x1ae8 stores 1 byte to abs 0xffffffffffffc04f.
- `mlclosure` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1af4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1af4-0x1b9c (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x1b0c loads 4 bytes from sym(sysent) +0x0.
  The `lw` at 0x1b28 loads 4 bytes from sym(biomove) +0x0.
  The `lw` at 0x1b44 loads 4 bytes from sym(uuid_create) +0x0.
  The `lw` at 0x1b60 loads 4 bytes from sym(setmask) +0x0.
  The `lw` at 0x1b7c loads 4 bytes from sym(reclock) +0x0.
  The `lw` at 0x1b98 loads 4 bytes from sym(ddi_lock) +0x0.
- `silence_all_audio` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b9c-0x1bec (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x1bb4 loads 4 bytes from sym(is_octane_lx) +0x0.
  The `sw` at 0x1bd8 stores 4 bytes to abs 0x900000001f600038.
  Calls ip30_rad_halt via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1bdc).
  The `beq` branch at 0x1bb8 targets 0x1bdc, is taken when t0(=[sym(is_octane_lx)]) == 0, and falls through when t0(=[sym(is_octane_lx)]) != 0.
  The instructions from 0x1be4 to 0x1be8 are not reached by any path from the entry, and their branches are not listed.
- `silence_bell` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b9c-0x1bec (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x1bb4 loads 4 bytes from sym(is_octane_lx) +0x0.
  The `sw` at 0x1bd8 stores 4 bytes to abs 0x900000001f600038.
  Calls ip30_rad_halt via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1bdc).
  The `beq` branch at 0x1bb8 targets 0x1bdc, is taken when t0(=[sym(is_octane_lx)]) == 0, and falls through when t0(=[sym(is_octane_lx)]) != 0.
  The instructions from 0x1be4 to 0x1be8 are not reached by any path from the entry, and their branches are not listed.
- `icode` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bf0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bf0-0x1c90 (160 bytes).
  It occupies 160 bytes.
  The `sw` at 0x1c70 stores 4 bytes to table(0x10000200) +0x0.
  The `beq` branch at 0x1c84 targets 0x1c84 and is always taken.
  The instructions from 0x1c8c to 0x1c8c are not reached by any path from the entry, and their branches are not listed.
- `eicode` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1c8c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1c8c-0x1c90 (4 bytes).
  It occupies 4 bytes.
- `in_cksum_sub` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1c90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1c90-0x20c0 (1072 bytes).
  It occupies 1072 bytes.
  The `lbu` at 0x1cbc loads 1 byte from a0 (arg0 at entry) +0x0.
  3 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x1ce0, `lhu` at 0x1d08, `lhu` at 0x2040.
  3 such `lwu` accesses load 4 bytes from ?, including `lwu` at 0x1d24, `lwu` at 0x1d4c, `lwu` at 0x2018.
  31 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1da8, `ld` at 0x1db8, `ld` at 0x1dc8.
  The `lbu` at 0x2068 loads 1 byte from ?.
  The `bne` branch at 0x1c94 targets 0x1ca4, is taken when a1 != 0, and falls through when a1 == 0.
  The `beq` branch at 0x1ca4 targets 0x1d98, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1cac targets 0x1d18, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1cb4 targets 0x1cd4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x1cd8 targets 0x2060, is taken when a1(?) < 0x2 (signed), and falls through when a1(?) >= 0x2 (signed).
  The `bne` branch at 0x1cf4 targets 0x2060, is taken when a1(?) < 0x2 (signed), and falls through when a1(?) >= 0x2 (signed).
  The `beq` branch at 0x1d00 targets 0x1d18, is taken when (a0(?) & 0x2) == 0, and falls through when (a0(?) & 0x2) != 0.
  The `bne` branch at 0x1d1c targets 0x2038, is taken when a1(?) < 0x4 (signed), and falls through when a1(?) >= 0x4 (signed).
  The `bne` branch at 0x1d38 targets 0x2038, is taken when a1(?) < 0x4 (signed), and falls through when a1(?) >= 0x4 (signed).
  The `beq` branch at 0x1d44 targets 0x1d5c, is taken when (a0(?) & 0x4) == 0, and falls through when (a0(?) & 0x4) != 0.
  The `bne` branch at 0x1d9c targets 0x1ec0, is taken when a1(?) < 0x80 (signed), and falls through when a1(?) >= 0x80 (signed).
  The `beq` branch at 0x1eb0 targets 0x1da4, is taken when a1(?) >= 0x80 (signed), and falls through when a1(?) < 0x80 (signed).
  The `beq` branch at 0x1eb8 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1ec0 targets 0x1f58, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1f50 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1f58 targets 0x1fb0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1fa8 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1fb0 targets 0x1fe8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1fe0 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1fe8 targets 0x2010, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2008 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2010 targets 0x2038, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2030 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2038 targets 0x2060, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2058 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2060 targets 0x2080, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The return at 0x1c9c has v0 = a2.
  The return at 0x20b8 has v0 = ?.
- `in_cksum_pref` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1da4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1da4-0x20c0 (796 bytes).
  It occupies 796 bytes.
  31 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1da8, `ld` at 0x1db8, `ld` at 0x1dc8.
  The `lwu` at 0x2018 loads 4 bytes from ?.
  The `lhu` at 0x2040 loads 2 bytes from ?.
  The `lbu` at 0x2068 loads 1 byte from ?.
  The `beq` branch at 0x1eb0 targets 0x1da4, is taken when a1(?) >= 0x80 (signed), and falls through when a1(?) < 0x80 (signed).
  The `beq` branch at 0x1eb8 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1ec0 targets 0x1f58, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1f50 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1f58 targets 0x1fb0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1fa8 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1fb0 targets 0x1fe8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1fe0 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1fe8 targets 0x2010, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2008 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2010 targets 0x2038, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2030 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2038 targets 0x2060, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2058 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2060 targets 0x2080, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The return at 0x20b8 has v0 = ?.
- `etoh` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x20c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x20c0-0x21cc (268 bytes).
  It occupies 268 bytes.
  The `lbu` at 0x20c0 loads 1 byte from a0 (arg0 at entry) +0x0.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2108, `lbu` at 0x2194.
  The `sb` at 0x2190 stores 1 byte to ?.
  The `beq` branch at 0x20cc targets 0x21a8, is taken when v0(=[a0]:1) == 0, and falls through when v0(=[a0]:1) != 0.
  The `beq` branch at 0x20d8 targets 0x21bc, is taken when t8(=0x3a) == v0(?), and falls through when t8(=0x3a) != v0(?).
  The `bne` branch at 0x20e4 targets 0x20f8, is taken when v0(?) < 0x61 (signed), and falls through when v0(?) >= 0x61 (signed).
  The `bne` branch at 0x20f0 targets 0x2108, is taken when v0(?) < 0x67 (signed), and falls through when v0(?) >= 0x67 (signed).
  The `bne` branch at 0x20f8 targets 0x21b0, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x2100 targets 0x21b0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x2128 targets 0x2138, is taken when a4(?) < 0x61 (signed), and falls through when a4(?) >= 0x61 (signed).
  The `bne` branch at 0x2130 targets 0x2144, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x2138 targets 0x21b0, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x2140 targets 0x21b0, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x2148 targets 0x21c4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2150 targets 0x2164, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x2158 targets 0x2164, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x2164 targets 0x2180, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x216c targets 0x217c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x2174 targets 0x2184 and is always taken.
  The `bne` branch at 0x2198 targets 0x20d8, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x21a0 targets 0x21b4, is taken when a2(?) == t1(=0x6), and falls through when a2(?) != t1(=0x6).
  The `beq` branch at 0x21bc targets 0x2194 and is always taken.
  The return at 0x21a8 has v0 = 0x0.
  The return at 0x21b4 has v0 = one of sym(.sbss)+52, 0x0.
  The return at 0x21c4 has v0 = 0x0.
- `init_sysid` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x21cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x21cc-0x22a4 (216 bytes).
  It occupies 216 bytes.
  The `jal` at 0x21d8 calls arcs_getenv with a0=sym(.rodata)+120, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x21e0 calls etoh with a0=ret(arcs_getenv), a1=?, a2=?, a3=?.
  The `jal` at 0x21f0 calls bcopy with a0=ret(etoh), a1=sym(eaddr), a2=0x6, a3=?.
  The `jal` at 0x2290 calls sprintf with a0=sym(arg_eaddr), a1=sym(.rodata)+120, a2=?, a3=?.
  The return at 0x229c has v0 = ret(sprintf).
- `getsysid` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x22a4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x22a4-0x22d0 (44 bytes).
  It occupies 44 bytes.
  The `sw` at 0x22bc stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x22b8 calls bzero with a0=a0+4, a1=0x3c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x22c8 has v0 = 0x0.
- `mlreset` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x22d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x22d0-0x2630 (864 bytes).
  It occupies 864 bytes.
  The `ld` at 0x23a8 loads 8 bytes from abs 0xffffffffaff00000.
  The `ld` at 0x23b4 loads 8 bytes from abs 0xffffffffaff00080.
  The `sw` at 0x23f0 stores 4 bytes to ?.
  The `sw` at 0x24b0 stores 4 bytes to sym(bzero_pref) +0x0.
  The `sw` at 0x24b4 stores 4 bytes to sym(bcopy_pref2) +0x0.
  The `sw` at 0x24bc stores 4 bytes to sym(bcopy_pref1) +0x0.
  The `lw` at 0x2508 loads 4 bytes from abs 0x900000001f600048.
  The `sw` at 0x258c stores 4 bytes to abs 0x900000001f600038.
  The `sw` at 0x2598 stores 4 bytes to abs 0x900000001f60002c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x25d8, `lw` at 0x25e8.
  The `jal` at 0x22e4 calls r1nkperf_control_register_set with a0=0x0, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x22f0 calls r1nkperf_control_register_set with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jal` at 0x22fc calls r1nkperf_data_register_set with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2308 calls r1nkperf_data_register_set with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2310 calls get_cpu_irr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2328 calls get_cpu_irr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2348 calls getcpuid with a0=?, a1=[sym(kdebug)]:2, a2=?, a3=?.
  The `jal` at 0x2350 calls heart_mp_intr_init with a0=ret(getcpuid), a1=?, a2=?, a3=?.
  The `jal` at 0x2358 calls flush_tlb with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x2360 calls flush_cache with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x238c calls getcpuid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x23fc calls init_board_rev [0x3050] with a0=?, a1=?, a2=one of 0x0, 0x1, a3=?, a7=[0xffffffffaff00080]:8.
  The `jal` at 0x2404 calls ip30_chips_mlreset [0x33e0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x240c calls init_sysid [0x21cc] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2414 calls load_nvram_tab with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2484 calls is_specified with a0=sym(arg_heart_invalidate_war), a1=?, a2=?, a3=?.
  The `jal` at 0x2494 calls atoi with a0=sym(arg_heart_invalidate_war), a1=?, a2=?, a3=?.
  The `jal` at 0x24c0 calls flush_cache with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x24d0 calls spinlock_init with a0=sym(ip30clocklock), a1=sym(.rodata)+120, a2=?, a3=?.
  The `jal` at 0x24e0 calls spinlock_init with a0=sym(ip30ledlock), a1=sym(.rodata)+120, a2=?, a3=?.
  The `jal` at 0x24f0 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2538 calls r1nkperf_control_register_set with a0=0x2, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2544 calls r1nkperf_control_register_set with a0=0x3, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2550 calls r1nkperf_data_register_set with a0=0x2, a1=0x0, a2=?, a3=?.
  The `jal` at 0x255c calls r1nkperf_data_register_set with a0=0x3, a1=0x0, a2=?, a3=?.
  The `jal` at 0x25b4 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2610 calls bzero with a0=sym(bcopy), a1=?, a2=?, a3=?.
  The `jal` at 0x2620 calls bzero with a0=sym(bzero), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2320 targets 0x2534, is taken when at(?) == v0(=0xe), and falls through when at(?) != v0(=0xe).
  The `beq` branch at 0x2338 targets 0x2538, is taken when v1(?) == a0(=0xf), and falls through when v1(?) != a0(=0xf).
  The `beq` branch at 0x2340 targets 0x237c, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x23d8 targets 0x256c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x23f4 targets 0x23c4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x248c targets 0x259c, is taken when v0(=ret(is_specified)) == 0, and falls through when v0(=ret(is_specified)) != 0.
  The `beq` branch at 0x249c targets 0x2608, is taken when v0(=ret(atoi)) == 0, and falls through when v0(=ret(atoi)) != 0.
  The `beq` branch at 0x24f8 targets 0x2520, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x2510 targets 0x257c, is taken when a2(=[0x900000001f600048]) < 0x1 (unsigned), and falls through when a2(=[0x900000001f600048]) >= 0x1 (unsigned).
  The `beq` branch at 0x2518 targets 0x2368 and is always taken.
  The `bgez` branch at 0x2524 targets 0x24f0, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed).
  The `beq` branch at 0x252c targets 0x2508 and is always taken.
  The `beq` branch at 0x2564 targets 0x2340 and is always taken.
  The `beq` branch at 0x256c targets 0x23e4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x2574 targets 0x23e4 and is always taken.
  The `beq` branch at 0x2594 targets 0x2518 and is always taken.
  The `beq` branch at 0x259c targets 0x25b0 and is always taken.
  The `beq` branch at 0x25a8 targets 0x25fc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x25c4 targets 0x25a8, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x25e0 targets 0x25a4, is taken when a1(?) < 0x927 (signed), and falls through when a1(?) >= 0x927 (signed).
  The `bne` branch at 0x25ec targets 0x25a8, is taken when a3(?) != a4(=0x930), and falls through when a3(?) == a4(=0x930).
  The `beq` branch at 0x25f4 targets 0x25a8 and is always taken.
  The `bne` branch at 0x2600 targets 0x24a8, is taken when a5(=[sym(_heart_invalidate_war)]) != 0, and falls through when a5(=[sym(_heart_invalidate_war)]) == 0.
  The `beq` branch at 0x2628 targets 0x24c0 and is always taken.
  The return at 0x2374 has v0 = one of ret(flush_cache), ret(cpu_enabled).
- `fp_find` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2630 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2630-0x2650 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0x2644 stores 4 bytes to abs 0xffffffffffffc400.
  The `jal` at 0x2638 calls get_fpc_irr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2648 has v0 = ret(get_fpc_irr).
- `fp_init` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2650 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2650-0x266c (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x2658 calls set_fpc_csr with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2664 has v0 = ret(set_fpc_csr).
- `pg_setcachable` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x266c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x266c-0x2688 (28 bytes).
  It occupies 28 bytes.
  The `ld` at 0x266c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x2684 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The return at 0x2680 has v0 = ?.
- `pte_cachebits` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2688 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2688-0x2690 (8 bytes).
  It occupies 8 bytes.
  The return at 0x2688 has v0 = [sym(.sdata)+48].
- `set_leds` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2690 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2690-0x26f0 (96 bytes).
  It occupies 96 bytes.
  2 such `sw` accesses store 4 bytes to abs 0x900000001f600040, including `sw` at 0x26bc, `sw` at 0x26ec.
  2 such `sw` accesses store 4 bytes to abs 0x900000001f600044, including `sw` at 0x26c0, `sw` at 0x26e4.
  The `jal` at 0x26a0 calls mutex_spinlock with a0=sym(ip30ledlock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x26c8 calls mutex_spinunlock with a0=sym(ip30ledlock), a1=ret(mutex_spinlock), a2=?, a3=0x900000001f600044, a4=0x900000001f600040, a5=0x1.
  The `jal` at 0x26d0 calls flushbus with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x26b4 targets 0x26e4, is taken when s8(=a0) == 0, and falls through when s8(=a0) != 0.
  The `beq` branch at 0x26e8 targets 0x26c4 and is always taken.
  The return at 0x26dc has v0 = ret(flushbus).
- `reset_leds` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x26f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x26f0-0x270c (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x26f8 calls set_leds with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2704 has v0 = ret(set_leds).
- `dobootduty` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2728 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2728-0x2884 (348 bytes).
  It occupies 348 bytes.
  The `ld` at 0x2750 loads 8 bytes from (sym(pdaindr) + ([sym(.sdata)+24] << 0x4)) +0x8.
  The `lh` at 0x2768 loads 2 bytes from [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x3a2.
  The `sd` at 0x276c stores 8 bytes to [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x3b8.
  The `sd` at 0x2794 stores 8 bytes to [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x30.
  The `sd` at 0x279c stores 8 bytes to [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x488.
  The `sd` at 0x27b4 stores 8 bytes to [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x528.
  7 such `lh` accesses load 2 bytes from [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x3a0, including `lh` at 0x27bc, `lh` at 0x27cc, `lh` at 0x27dc.
  The `sd` at 0x27c4 stores 8 bytes to [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x518.
  The `sd` at 0x27d4 stores 8 bytes to [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x520.
  2 such `ld` accesses load 8 bytes from [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x518, including `ld` at 0x27d8, `ld` at 0x2880.
  The `jal` at 0x2764 calls kvpalloc with a0=?, a1=0x100, a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x2790 calls kern_calloc_node with a0=0x1, a1=0x538, a2=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+930]:2, a3=?.
  The `jal` at 0x27a8 calls kern_calloc_node with a0=0x1, a1=0x13c8, a2=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+930]:2, a3=?.
  The `jal` at 0x27b8 calls str_init_alloc_lfvec with a0=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2, a1=?, a2=?, a3=?.
  The `jal` at 0x27c8 calls str_init_alloc_strstat with a0=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2, a1=?, a2=?, a3=?.
  The `jal` at 0x27e0 calls str_init_slave with a0=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+1304]:8, a1=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2, a2=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+930]:2, a3=?.
  The `jal` at 0x2814 calls cmn_err with a0=0x0, a1=sym(.rodata)+120, a2=[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8, a3=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2.
  The `jal` at 0x2834 calls cmn_err with a0=0x0, a1=sym(.rodata)+120, a2=[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8, a3=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2.
  The `jal` at 0x2854 calls cmn_err with a0=0x0, a1=sym(.rodata)+120, a2=[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8, a3=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2.
  The `jal` at 0x2874 calls cmn_err with a0=0x0, a1=sym(.rodata)+120, a2=[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8, a3=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2.
  The `beq` branch at 0x2798 targets 0x2804, is taken when v0(=ret(kern_calloc_node)) == 0, and falls through when v0(=ret(kern_calloc_node)) != 0.
  The `beq` branch at 0x27b0 targets 0x2824, is taken when v0(=ret(kern_calloc_node)) == 0, and falls through when v0(=ret(kern_calloc_node)) != 0.
  The `beq` branch at 0x27c0 targets 0x2844, is taken when v0(=ret(str_init_alloc_lfvec)) == 0, and falls through when v0(=ret(str_init_alloc_lfvec)) != 0.
  The `beq` branch at 0x27d0 targets 0x2864, is taken when v0(=ret(str_init_alloc_strstat)) == 0, and falls through when v0(=ret(str_init_alloc_strstat)) != 0.
  The `beq` branch at 0x281c targets 0x27a4 and is always taken.
  The `beq` branch at 0x283c targets 0x27b8 and is always taken.
  The `beq` branch at 0x285c targets 0x27c8 and is always taken.
  The `beq` branch at 0x287c targets 0x27dc and is always taken.
  The return at 0x27fc has v0 = ret(str_init_slave).
- `cpu_disable` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2884 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2884-0x28b4 (48 bytes).
  It occupies 48 bytes.
  The `ld` at 0x2894 loads 8 bytes from abs 0xffffffffaff00000.
  The `sd` at 0x28a8 stores 8 bytes to abs 0xffffffffaff00000.
  The `sw` at 0x28b0 stores 4 bytes to (sym(processor_enabled) + (a0 << 0x2)) +0x0.
  The return at 0x28ac has v0 = ?.
- `cpu_exists` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x28b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x28b4-0x28d4 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x28c0 loads 8 bytes from abs 0xffffffffaff00080.
  The return at 0x28cc has v0 = ?.
- `cpu_enabled` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x28d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x28d4-0x28e8 (20 bytes).
  It occupies 20 bytes.
  The `lw` at 0x28e4 loads 4 bytes from (sym(processor_enabled) + (a0 << 0x2)) +0x0.
  The return at 0x28e0 has v0 = [(sym(processor_enabled) + (a0 << 0x2))].
- `allowboot` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x28e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x28e8-0x2cbc (980 bytes).
  It occupies 980 bytes.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2968, `sd` at 0x29cc, `sd` at 0x29d0.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x29a0, `lw` at 0x2a88, `lw` at 0x2b10.
  The `lbu` at 0x29c0 loads 1 byte from ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x29d4, `ld` at 0x29dc.
  2 such `lh` accesses load 2 bytes from [sym(masterpda)]:8 +0x3a0, including `lh` at 0x2b24, `lh` at 0x2b80.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2b2c, `sw` at 0x2b88, `sw` at 0x2c10.
  The `jal` at 0x28f0 calls init_timebase with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x28f8 calls ecc_init with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2928 calls is_specified with a0=sym(arg_heart_invalidate_war), a1=?, a2=?, a3=?.
  The `jal` at 0x2990 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2a20 calls dobootduty [0x2728] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2a2c calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x2a50 calls us_delay with a0=0x1388, a1=?, a2=?, a3=?.
  The `jal` at 0x2a70 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2b0c calls cpu_isvalid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2b68 calls cpu_isvalid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2ba0 calls init_nmi_dump [0x2e64] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2ba8 calls init_mfhi_war with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2bbc calls cpu_exists [0x28b4] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2bf0 calls cmn_err with a0=0x0, a1=sym(.rodata)+120, a2=?, a3=?.
  The `jal` at 0x2c08 calls cmn_err with a0=0x5, a1=sym(.rodata)+120, a2=?, a3=?.
  The `jal` at 0x2c14 calls cpu_disable [0x2884] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2c2c calls cmn_err with a0=0x4, a1=sym(.rodata)+120, a2=?, a3=?, a5=[sym(showconfig)].
  The `jal` at 0x2c34 calls cpu_disable [0x2884] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2c4c calls cmn_err with a0=0x6, a1=sym(.rodata)+120, a2=?, a3=?, a5=[sym(showconfig)].
  The `jal` at 0x2c68 calls cmn_err with a0=0x6, a1=sym(.rodata)+120, a2=[sym(master_procid)]:2, a3=?.
  The `jal` at 0x2c7c calls cmn_err with a0=0x4, a1=sym(.rodata)+120, a2=[sym(_heart_invalidate_war)], a3=?.
  The `jal` at 0x2c94 calls cmn_err with a0=0x0, a1=sym(.rodata)+120, a2=?, a3=?.
  The `jal` at 0x2cac calls cmn_err with a0=0x4, a1=sym(.rodata)+120, a2=?, a3=?.
  The `bne` branch at 0x291c targets 0x2c5c, is taken when at(=[sym(showconfig)]) != 0, and falls through when at(=[sym(showconfig)]) == 0.
  The `bne` branch at 0x2930 targets 0x2c78, is taken when v0(=ret(is_specified)) != 0, and falls through when v0(=ret(is_specified)) == 0.
  The `beq` branch at 0x295c targets 0x2980 and is always taken.
  The `beq` branch at 0x2978 targets 0x29f4, is taken when s0(?) >= 0x2 (signed), and falls through when s0(?) < 0x2 (signed).
  The `beq` branch at 0x2998 targets 0x2bbc, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x29a8 targets 0x2bd4, is taken when a1(?) < 0x926 (signed), and falls through when a1(?) >= 0x926 (signed).
  The `beq` branch at 0x29b8 targets 0x296c, is taken when a2(=[sym(master_procid)]:2) == s0(?), and falls through when a2(=[sym(master_procid)]:2) != s0(?).
  The `beq` branch at 0x29c4 targets 0x2c24, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x29e4 targets 0x2964, is taken when a5(=[sym(showconfig)]) == 0, and falls through when a5(=[sym(showconfig)]) != 0.
  The `beq` branch at 0x29ec targets 0x2c44 and is always taken.
  The `beq` branch at 0x2a0c targets 0x2a58, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x2a18 targets 0x2a2c, is taken when t9(=[sym(.sdata)+24]) == s3(=-0x1), and falls through when t9(=[sym(.sdata)+24]) != s3(=-0x1).
  The `beq` branch at 0x2a38 targets 0x2a48, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x2a40 targets 0x2a14, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x2a48 targets 0x2a5c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `blez` branch at 0x2a64 targets 0x2aac, is taken when ra(=[sym(maxcpus)]) <= 0 (signed), and falls through when ra(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x2a78 targets 0x2a98, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x2a8c targets 0x2c00, is taken when a1(?) != s0(?), and falls through when a1(?) == s0(?).
  The `bne` branch at 0x2aa0 targets 0x2a70, is taken when s0(?) < t8(=[sym(maxcpus)]) (signed), and falls through when s0(?) >= t8(=[sym(maxcpus)]) (signed).
  The `bne` branch at 0x2aa8 targets 0x2c8c, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `blez` branch at 0x2ad8 targets 0x2b30, is taken when ra(=[sym(bdevcnt)]) <= 0 (signed), and falls through when ra(=[sym(bdevcnt)]) > 0 (signed).
  The `beq` branch at 0x2ae0 targets 0x2af4 and is always taken.
  The `beq` branch at 0x2aec targets 0x2b30, is taken when s0(?) >= a0(=[sym(bdevcnt)]) (signed), and falls through when s0(?) < a0(=[sym(bdevcnt)]) (signed).
  The `bne` branch at 0x2b18 targets 0x2ae8, is taken when v0(=ret(cpu_isvalid)) != 0, and falls through when v0(=ret(cpu_isvalid)) == 0.
  The `beq` branch at 0x2b28 targets 0x2ae8 and is always taken.
  The `blez` branch at 0x2b34 targets 0x2b8c, is taken when ra(=[sym(cdevcnt)]) <= 0 (signed), and falls through when ra(=[sym(cdevcnt)]) > 0 (signed).
  The `beq` branch at 0x2b3c targets 0x2b50 and is always taken.
  The `beq` branch at 0x2b48 targets 0x2b8c, is taken when s0(?) >= a0(=[sym(cdevcnt)]) (signed), and falls through when s0(?) < a0(=[sym(cdevcnt)]) (signed).
  The `bne` branch at 0x2b74 targets 0x2b44, is taken when v0(=ret(cpu_isvalid)) != 0, and falls through when v0(=ret(cpu_isvalid)) == 0.
  The `beq` branch at 0x2b84 targets 0x2b44 and is always taken.
  The `beql` branch at 0x2bc4 targets 0x2970, is taken when v0(=ret(cpu_exists)) == 0, and falls through when v0(=ret(cpu_exists)) != 0; its branch-likely delay slot `addiu s0,s0,1` at 0x2bc8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x2bcc targets 0x2ca4 and is always taken.
  The `beq` branch at 0x2bf8 targets 0x29b4 and is always taken.
  The `beq` branch at 0x2c1c targets 0x2a94 and is always taken.
  The `beq` branch at 0x2c3c targets 0x2970 and is always taken.
  The `beq` branch at 0x2c54 targets 0x2968 and is always taken.
  The `beq` branch at 0x2c70 targets 0x2928 and is always taken.
  The `beq` branch at 0x2c84 targets 0x293c and is always taken.
  The `beq` branch at 0x2c9c targets 0x2ab0 and is always taken.
  The `beq` branch at 0x2cb4 targets 0x2970 and is always taken.
  The return at 0x2bb4 has v0 = ret(init_mfhi_war).
- `cboot` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2cbc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2cbc-0x2e64 (424 bytes).
  It occupies 424 bytes.
  2 such `ld` accesses load 8 bytes from (sym(pdaindr) + (ret(getcpuid) << 0x4)) +0x8, including `ld` at 0x2ce4, `ld` at 0x2ddc.
  The `sh` at 0x2cf0 stores 2 bytes to abs 0xffffffffffffc3a0.
  The `sw` at 0x2d00 stores 4 bytes to abs 0xffffffffffffc090.
  The `sd` at 0x2d0c stores 8 bytes to abs 0xffffffffffffc058.
  The `sd` at 0x2d10 stores 8 bytes to abs 0xffffffffffffc408.
  The `sd` at 0x2d14 stores 8 bytes to abs 0xffffffffffffc000.
  3 such `ld` accesses load 8 bytes from (sym(pdaindr) + ([sym(master_procid)]:2 << 0x4)) +0x8, including `ld` at 0x2d28, `ld` at 0x2d40, `ld` at 0x2d58.
  The `lw` at 0x2d2c loads 4 bytes from [(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8 +0x6f0.
  The `sw` at 0x2d30 stores 4 bytes to abs 0xffffffffffffc6f0.
  The `lw` at 0x2d44 loads 4 bytes from [(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8 +0x6f4.
  The `sw` at 0x2d48 stores 4 bytes to abs 0xffffffffffffc6f4.
  The `lw` at 0x2d5c loads 4 bytes from [(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8 +0x4b8.
  The `sw` at 0x2d64 stores 4 bytes to abs 0xffffffffffffc4b8.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffc048, including `lw` at 0x2da8, `lw` at 0x2e0c.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffffffc048, including `sw` at 0x2db4, `sw` at 0x2e1c.
  The `sw` at 0x2db8 stores 4 bytes to (sym(pdaindr) + (ret(getcpuid) << 0x4)) +0x0.
  The `jal` at 0x2cc8 calls getcpuid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2ce0 calls wirepda with a0=[(sym(pdaindr) + (ret(getcpuid) << 0x4))+8]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2ce8 calls mlreset with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x2d08 calls get_except_norm with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2d60 calls coproc_find with a0=[[(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8+1776], a1=?, a2=?, a3=?.
  The `jal` at 0x2d68 calls mutex_spinlock with a0=sym(bootlck), a1=?, a2=?, a3=?.
  The `jal` at 0x2dd0 calls stopclocks with a0=?, a1=[sym(.sdata)+24], a2=?, a3=-0x1, a6=[sym(numcpus)]+1.
  The `jal` at 0x2de8 calls spinlock_init with a0=[(sym(pdaindr) + (ret(getcpuid) << 0x4))+8]:8+1180, a1=sym(.rodata)+120, a2=?, a3=?.
  The `jal` at 0x2df0 calls tlbinfo_init with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2df8 calls clkstart with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2e04 calls mutex_spinunlock with a0=sym(bootlck), a1=?, a2=?, a3=?.
  The `jal` at 0x2e18 calls ecc_init with a0=?, a1=?, a2=?, a3=-0x11.
  The `jal` at 0x2e20 calls joinrunq with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2e28 calls init_mfhi_war with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2e30 calls spl0 with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2e38 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2e40 calls resumeidle with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x2e50 calls cmn_err with a0=0x0, a1=sym(.rodata)+120, a2=?, a3=?.
  The `beq` branch at 0x2d7c targets 0x2da8, is taken when a1(=[sym(.sdata)+24]) == a3(=-0x1), and falls through when a1(=[sym(.sdata)+24]) != a3(=-0x1).
  The `beq` branch at 0x2d88 targets 0x2da8, is taken when a2(=[sym(.sdata)+24]) == a3(=-0x1), and falls through when a2(=[sym(.sdata)+24]) != a3(=-0x1).
  The `beq` branch at 0x2d94 targets 0x2da8, is taken when a4(=[sym(.sdata)+24]) == a3(=-0x1), and falls through when a4(=[sym(.sdata)+24]) != a3(=-0x1).
  The `bne` branch at 0x2da0 targets 0x2d84, is taken when a5(=[sym(.sdata)+24]) != a3(=-0x1), and falls through when a5(=[sym(.sdata)+24]) == a3(=-0x1).
  The return at 0x2e5c has v0 = ret(cmn_err).
- `init_nmi_dump` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2e64 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2e64-0x2ee4 (128 bytes).
  It occupies 128 bytes.
  The `ld` at 0x2e68 loads 8 bytes from abs 0xa800000000000408.
  2 such `sd` accesses store 8 bytes to abs 0xa800000000000408, including `sd` at 0x2eb0, `sd` at 0x2eb4.
  The `sd` at 0x2ed0 stores 8 bytes to abs 0xa800000000000410.
  The `sw` at 0x2ed8 stores 4 bytes to abs 0xa800000000000400.
  The `jal` at 0x2eb8 calls getcpuid with a0=a0 at entry (arg0), a1=0xa800000000000408, a2=(sym(nmi_dump) | 0xa800000000000000), a3=?, a4=(0x9000000000000000 | sym(nmi_dump)), a5=-0xb, a6=0xa800000000000000, a7=0x9000000000000000.
  The `bne` branch at 0x2e6c targets 0x2edc, is taken when at(=[0xa800000000000408]:8) != 0, and falls through when at(=[0xa800000000000408]:8) == 0.
  The `bne` branch at 0x2e9c targets 0x2eb4, is taken when t0(=sym(nmi_dump)) < a7(=0x9000000000000000) (unsigned), and falls through when t0(=sym(nmi_dump)) >= a7(=0x9000000000000000) (unsigned).
  The `beq` branch at 0x2ea4 targets 0x2eb4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x2eac targets 0x2eb8 and is always taken.
  The return at 0x2edc has v0 = one of ?, ret(getcpuid).
- `cont_nmi_dump` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2ee4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2ee4-0x2f40 (92 bytes).
  It occupies 92 bytes.
  The `ld` at 0x2f00 loads 8 bytes from (sym(pdaindr) + ([sym(master_procid)]:2 << 0x4)) +0x8.
  The `ld` at 0x2f14 loads 8 bytes from abs 0xffffffffffffc020.
  The `sd` at 0x2f20 stores 8 bytes to abs 0xffffffffffffc020.
  The `jal` at 0x2efc calls wirepda with a0=[(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8, a1=([sym(master_procid)]:2 << 0x4), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2f2c calls cmn_err with a0=0x0, a1=sym(.rodata)+120, a2=[-0x3fe0]:8, a3=0x1, a4=[sym(maxcpus)].
  The `bne` branch at 0x2f18 targets 0x2f24, is taken when a2(=[-0x3fe0]:8) != 0, and falls through when a2(=[-0x3fe0]:8) == 0.
  The return at 0x2f38 has v0 = ret(cmn_err).
- `get_except_norm` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2f40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2f40-0x2f48 (8 bytes).
  It occupies 8 bytes.
  The return at 0x2f40 has v0 = sym(exception).
- `ip30_board_rev` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2f48 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2f48-0x2f50 (8 bytes).
  It occupies 8 bytes.
  The return at 0x2f48 has v0 = [sym(ip30_rev)].
- `early_nic_access_mcr32` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2f50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2f50-0x3050 (256 bytes).
  It occupies 256 bytes.
  The `sw` at 0x2f6c stores 4 bytes to a0 (arg0 at entry) +0x0.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x2f70, `lw` at 0x2f80, `lw` at 0x2f90.
  7 such `ld` accesses load 8 bytes from abs 0xffffffffaff20000, including `ld` at 0x2fd8, `ld` at 0x2fdc, `ld` at 0x2ff8.
  The `bne` branch at 0x2f78 targets 0x2fc0, is taken when (a4(=[a0]) & 0x2) != 0, and falls through when (a4(=[a0]) & 0x2) == 0.
  The `bne` branch at 0x2f88 targets 0x2fc0, is taken when (a4(=[a0]) & 0x2) != 0, and falls through when (a4(=[a0]) & 0x2) == 0.
  The `bne` branch at 0x2f98 targets 0x2fc0, is taken when (a4(=[a0]) & 0x2) != 0, and falls through when (a4(=[a0]) & 0x2) == 0.
  The `bne` branch at 0x2fa8 targets 0x2fc0, is taken when (a4(=[a0]) & 0x2) != 0, and falls through when (a4(=[a0]) & 0x2) == 0.
  The `beq` branch at 0x2fb8 targets 0x2f70, is taken when (a4(=[a0]) & 0x2) == 0, and falls through when (a4(=[a0]) & 0x2) != 0.
  The `beq` branch at 0x2ff0 targets 0x3048, is taken when t8(=[0xffffffffaff20000]:8) >= a0(?) (unsigned), and falls through when t8(=[0xffffffffaff20000]:8) < a0(?) (unsigned).
  The `beq` branch at 0x3000 targets 0x3048, is taken when a3(=[0xffffffffaff20000]:8) >= a0(?) (unsigned), and falls through when a3(=[0xffffffffaff20000]:8) < a0(?) (unsigned).
  The `beq` branch at 0x3010 targets 0x3048, is taken when a6(=[0xffffffffaff20000]:8) >= a0(?) (unsigned), and falls through when a6(=[0xffffffffaff20000]:8) < a0(?) (unsigned).
  The `beq` branch at 0x3020 targets 0x3048, is taken when a7(=[0xffffffffaff20000]:8) >= a0(?) (unsigned), and falls through when a7(=[0xffffffffaff20000]:8) < a0(?) (unsigned).
  The `beq` branch at 0x3030 targets 0x3048, is taken when t0(=[0xffffffffaff20000]:8) >= a0(?) (unsigned), and falls through when t0(=[0xffffffffaff20000]:8) < a0(?) (unsigned).
  The `bne` branch at 0x3040 targets 0x2ff8, is taken when t1(=[0xffffffffaff20000]:8) < a0(?) (unsigned), and falls through when t1(=[0xffffffffaff20000]:8) >= a0(?) (unsigned).
  The return at 0x3048 has v0 = ?.
- `init_board_rev` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3050 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3050-0x3124 (212 bytes).
  It occupies 212 bytes.
  The `lbu` at 0x30c8 loads 1 byte from ret(strstr) +0x9.
  The `jal` at 0x3060 calls nic_info_get with a0=sym(early_nic_access_mcr32), a1=0x900000001f0000b4, a2=sp-272, a3=a3 at entry (arg3).
  The `jal` at 0x3094 calls strstr with a0=sp-272, a1=sym(.rodata)+120, a2=0x10000, a3=?.
  The `jal` at 0x30b0 calls strstr with a0=sp-272, a1=sym(.rodata)+120, a2=?, a3=?.
  The `jal` at 0x30e0 calls strchr with a0=ret(strstr)+5, a1=0x2d, a2=?, a3=?, a4=0x1.
  The `jal` at 0x30fc calls strchr with a0=ret(strchr)+1, a1=0x2d, a2=?, a3=?, a4=0x1.
  The `jal` at 0x3114 calls atoi with a0=ret(strchr)+1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x3068 targets 0x308c, is taken when v0(=ret(nic_info_get)) == 0, and falls through when v0(=ret(nic_info_get)) != 0.
  The `beq` branch at 0x3074 targets 0x308c, is taken when v0(=ret(nic_info_get)) == at(=0x1), and falls through when v0(=ret(nic_info_get)) != at(=0x1).
  The `bne` branch at 0x309c targets 0x30dc, is taken when v0(=ret(strstr)) != 0, and falls through when v0(=ret(strstr)) == 0.
  The `beq` branch at 0x30bc targets 0x30cc, is taken when v0(=ret(strstr)) == 0, and falls through when v0(=ret(strstr)) != 0.
  The `beq` branch at 0x30c4 targets 0x30d0 and is always taken.
  The `beq` branch at 0x30d4 targets 0x3080 and is always taken.
  The `bne` branch at 0x30e8 targets 0x30f8, is taken when v0(=ret(strchr)) != 0, and falls through when v0(=ret(strchr)) == 0.
  The `beq` branch at 0x30f0 targets 0x30a8 and is always taken.
  The `bne` branch at 0x3104 targets 0x3114, is taken when v0(=ret(strchr)) != 0, and falls through when v0(=ret(strchr)) == 0.
  The `beq` branch at 0x310c targets 0x30a4 and is always taken.
  The `beq` branch at 0x311c targets 0x30a4 and is always taken.
  The return at 0x3084 has v0 = one of 0x10045, ret(strstr).
- `add_ioboard` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3124 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3124-0x312c (8 bytes).
  It occupies 8 bytes.
  The return at 0x3124 has v0 = ?.
- `add_cpuboard` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x312c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x312c-0x31e4 (184 bytes).
  It occupies 184 bytes.
  The `lh` at 0x313c loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x3164 loads 4 bytes from abs 0xffffffffffffc3fc.
  The `lw` at 0x317c loads 4 bytes from abs 0xffffffffffffc400.
  The `lw` at 0x3194 loads 4 bytes from abs 0xffffffffffffc65c.
  The `jal` at 0x3138 calls cpu_mhz_rating with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3150 calls add_to_inventory with a0=0x1, a1=0x1, a2=ret(cpu_mhz_rating), a3=-0x1, a4=0x10.
  The `jal` at 0x3168 calls add_to_inventory with a0=0x1, a1=0x2, a2=[-0x3c60]:2, a3=0x0, a4=[-0x3c04].
  The `jal` at 0x3180 calls add_to_inventory with a0=0x1, a1=0x3, a2=[-0x3c60]:2, a3=0x0, a4=[-0x3c00].
  The `jal` at 0x3198 calls add_to_inventory with a0=0x3, a1=0x8, a2=0x0, a3=0x0, a4=[-0x39a4].
  The `jal` at 0x31a0 calls heart_rev with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x31c0 calls heart_rev with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x31d4 calls cmn_err with a0=0x0, a1=sym(.rodata)+120, a2=ret(heart_rev)+64, a3=?.
  The `bne` branch at 0x31ac targets 0x31c0, is taken when v0(=ret(heart_rev)) < 0x4 (signed), and falls through when v0(=ret(heart_rev)) >= 0x4 (signed).
  The `beq` branch at 0x31dc targets 0x31b4 and is always taken.
  The return at 0x31b8 has v0 = one of ret(heart_rev), ret(cmn_err).
- `cpuboard` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x31e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x31e4-0x31ec (8 bytes).
  It occupies 8 bytes.
  The return at 0x31e4 has v0 = 0x10.
- `dprintf` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x31ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x31ec-0x33a8 (444 bytes).
  It occupies 444 bytes.
  The `ld` at 0x3218 loads 8 bytes from abs 0xa800000000001020.
  The `ld` at 0x3240 loads 8 bytes from [0xa800000000001020]:8 +0x18.
  The `jalr` at 0x328c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x329c calls cn_is_inited with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x330c calls arcs_printf with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3398 calls cmn_err with a0=0x6, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=a5 at entry (arg5), a7=a6 at entry (arg6).
  The `beq` branch at 0x3238 targets 0x329c, is taken when t1(=[0xa800000000001020]:8) == 0, and falls through when t1(=[0xa800000000001020]:8) != 0.
  The `beq` branch at 0x3244 targets 0x329c, is taken when t2(=[[0xa800000000001020]:8+24]:8) == 0, and falls through when t2(=[[0xa800000000001020]:8+24]:8) != 0.
  The `beq` branch at 0x3294 targets 0x3318 and is always taken.
  The `bne` branch at 0x32b0 targets 0x3340, is taken when v0(=ret(cn_is_inited)) != 0, and falls through when v0(=ret(cn_is_inited)) == 0.
  The `beq` branch at 0x33a0 targets 0x3318 and is always taken.
  The return at 0x3338 has v0 = one of ret(?), ret(arcs_printf), ret(cmn_err).
- `cpu_isvalid` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x33a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x33a8-0x33e0 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0x33c8 loads 4 bytes from (sym(pdaindr) + (a0 << 0x4)) +0x0.
  The `bltz` branch at 0x33ac targets 0x33d4, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x33c0 targets 0x33d4, is taken when a0 >= v1(=[sym(maxcpus)]) (signed), and falls through when a0 < v1(=[sym(maxcpus)]) (signed).
  The `bne` branch at 0x33cc targets 0x33d8, is taken when a0(=[(sym(pdaindr) + (a0 << 0x4))]) != a1(=-0x1), and falls through when a0(=[(sym(pdaindr) + (a0 << 0x4))]) == a1(=-0x1).
  The return at 0x33d8 has v0 = one of 0x0, 0x1.
- `ip30_chips_mlreset` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x33e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x33e0-0x3534 (340 bytes).
  It occupies 340 bytes.
  The `sw` at 0x3444 stores 4 bytes to abs 0x900000001f000284.
  The `sw` at 0x3450 stores 4 bytes to abs 0x900000001f00028c.
  The `sw` at 0x345c stores 4 bytes to abs 0x900000001f000084.
  The `jal` at 0x33e8 calls xtalk_set_early_piotrans_addr with a0=sym(ip30_early_piotrans_addr), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x33f0 calls heart_mlreset with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x33f8 calls xbow_mlreset with a0=0x9000000010000000, a1=?, a2=?, a3=?.
  The `jal` at 0x3408 calls ioc3_mlreset with a0=0x900000001f022000, a1=0x900000001f600000, a2=?, a3=?.
  The `jal` at 0x3458 calls heart_intr_prealloc with a0=0xffffffffaff00000, a1=0x3a, a2=sym(xbow_intr_preset), a3=0x9000000010000000, a4=-0x1, a5=0x900000001f00028c, a6=0x900000001f000284.
  The `jal` at 0x3478 calls heart_intr_prealloc with a0=0xffffffffaff00000, a1=0x39, a2=sym(pcibr_xintr_preset), a3=0x900000001f000000, a4=-0x1.
  The `jal` at 0x3490 calls heart_intr_prealloc with a0=0xffffffffaff00000, a1=0x11, a2=sym(pcibr_xintr_preset), a3=0x900000001f000000, a4=0x2.
  The `jal` at 0x34a4 calls heart_intr_preconn with a0=0xffffffffaff00000, a1=0x11, a2=sym(ioc3_intr), a3=0x0.
  The `jal` at 0x34bc calls heart_intr_prealloc with a0=0xffffffffaff00000, a1=0x10, a2=sym(pcibr_xintr_preset), a3=0x900000001f000000, a4=0x4.
  The `jal` at 0x34d0 calls heart_intr_preconn with a0=0xffffffffaff00000, a1=0x10, a2=sym(ioc3_intr), a3=0x0.
  The `jal` at 0x34e8 calls heart_intr_prealloc with a0=0xffffffffaff00000, a1=0x39, a2=sym(pcibr_xintr_preset), a3=0x900000001f000000, a4=0x7.
  The `jal` at 0x3500 calls heart_intr_prealloc with a0=0xffffffffaff00000, a1=0x29, a2=sym(pcibr_xintr_preset), a3=0x900000001f000000, a4=0x6.
  The `jal` at 0x351c calls heart_intr_preconn with a0=0xffffffffaff00000, a1=0x29, a2=sym(powerintr), a3=0x0.
  The return at 0x352c has v0 = ret(heart_intr_preconn).
- `ip30_early_piotrans_addr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3534 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3534-0x3688 (340 bytes).
  It occupies 340 bytes.
  The `ld` at 0x3538 loads 8 bytes from abs 0xffffffffaff00080.
  The `lw` at 0x3558 loads 4 bytes from (0x9000000000000000 | table(0x10000000)) +0x4.
  The `lw` at 0x3594 loads 4 bytes from abs 0x9000000010000004.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x35d4, `lw` at 0x35ec.
  The `jal` at 0x361c calls heart_addr_xio_to_kva with a0=?, a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=a3 at entry (arg3).
  The `jal` at 0x3660 calls heart_addr_xio_to_kva with a0=?, a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=a3 at entry (arg3).
  The `jal` at 0x3678 calls heart_addr_xio_to_kva with a0=0x0, a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=a3 at entry (arg3).
  The `bne` branch at 0x357c targets 0x3594, is taken when a0 != at(?), and falls through when a0 == at(?).
  The `bne` branch at 0x3584 targets 0x3594, is taken when a1 != a7(?), and falls through when a1 == a7(?).
  The `beq` branch at 0x358c targets 0x3658, is taken when a2 == 0, and falls through when a2 != 0.
  The `bne` branch at 0x35a4 targets 0x35c4, is taken when a0 != t9(?), and falls through when a0 == t9(?).
  The `beq` branch at 0x35ac targets 0x3640 and is always taken.
  The `bne` branch at 0x35bc targets 0x362c, is taken when v0(?) < 0x8 (signed), and falls through when v0(?) >= 0x8 (signed).
  The `beq` branch at 0x35c4 targets 0x35b4, is taken when v0(?) == t0(?), and falls through when v0(?) != t0(?).
  The `beq` branch at 0x35dc targets 0x35b4, is taken when (at(?) & 0x20) == 0, and falls through when (at(?) & 0x20) != 0.
  The `bne` branch at 0x35fc targets 0x35b4, is taken when a0 != t8(?), and falls through when a0 == t8(?).
  The `bne` branch at 0x3604 targets 0x35b4, is taken when a1 != a7(?), and falls through when a1 == a7(?).
  The `bne` branch at 0x360c targets 0x35b4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x3624 targets 0x3630 and is always taken.
  The `bne` branch at 0x3640 targets 0x35c4, is taken when a1 != a7(?), and falls through when a1 == a7(?).
  The `beq` branch at 0x3648 targets 0x3670, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3650 targets 0x35c4 and is always taken.
  The `beq` branch at 0x3668 targets 0x3630 and is always taken.
  The `beq` branch at 0x3680 targets 0x3630 and is always taken.
  The return at 0x3638 has v0 = one of ret(heart_addr_xio_to_kva), 0x0.
- `init_all_devices` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3688 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3688-0x38ac (548 bytes).
  It occupies 548 bytes.
  The `jal` at 0x36a8 calls hwgraph_path_add with a0=[sym(hwgraph_root)], a1=sym(.rodata)+120, a2=sp-80, a3=a3 at entry (arg3).
  The `jal` at 0x36b4 calls mark_nodevertex_as_node with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x36cc calls hwgraph_path_add with a0=?, a1=sym(.rodata)+120, a2=sp-76, a3=?.
  The `jal` at 0x36dc calls nic_bridge_vertex_info with a0=?, a1=0xffffffffaff000bc, a2=?, a3=?.
  The `jal` at 0x3700 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x371c calls sprintf with a0=sp-72, a1=sym(.rodata)+120, a2=?, a3=?.
  The `jal` at 0x372c calls hwgraph_path_add with a0=?, a1=sp-72, a2=sp-56, a3=?.
  The `jal` at 0x3738 calls mark_cpuvertex_as_cpu with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3744 calls device_master_set with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3770 calls hwgraph_path_add with a0=?, a1=sym(.rodata)+120, a2=sp-52, a3=?.
  The `jal` at 0x3784 calls hwgraph_path_add with a0=[sym(hwgraph_root)], a1=sym(.rodata)+120, a2=sp-48, a3=?.
  The `jal` at 0x3798 calls hwgraph_path_add with a0=[sym(hwgraph_root)], a1=sym(.rodata)+120, a2=sp-44, a3=?.
  The `jal` at 0x37ac calls hwgraph_path_add with a0=[sym(hwgraph_root)], a1=sym(.rodata)+120, a2=sp-40, a3=?.
  The `jal` at 0x37bc calls hwgraph_path_add with a0=?, a1=sym(.rodata)+120, a2=sp-36, a3=?.
  The `jal` at 0x37c4 calls pcibr_hints_fix_rrbs with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x37d4 calls pcibr_hints_dualslot with a0=?, a1=0x2, a2=0x4, a3=?.
  The `jal` at 0x37e4 calls pcibr_hints_subdevs with a0=?, a1=0x2, a2=0x7f, a3=?.
  The `jal` at 0x37ec calls heart_startup with a0=[sym(hwgraph_root)], a1=?, a2=?, a3=?.
  The `jal` at 0x3800 calls hwgraph_link_add with a0=sym(.rodata)+120, a1=sym(.rodata)+120, a2=sym(.rodata)+120, a3=?.
  The `jal` at 0x3814 calls hwgraph_link_add with a0=sym(.rodata)+120, a1=sym(.rodata)+120, a2=sym(.rodata)+120, a3=?.
  The `jal` at 0x3828 calls hwgraph_link_add with a0=sym(.rodata)+120, a1=sym(.rodata)+120, a2=sym(.rodata)+120, a3=?.
  The `jal` at 0x3830 calls hwgraph_path_to_vertex with a0=sym(.rodata)+120, a1=?, a2=?, a3=?.
  The `jal` at 0x3840 calls device_controller_num_set with a0=ret(hwgraph_path_to_vertex), a1=0x0, a2=?, a3=?.
  The `jal` at 0x384c calls hwgraph_path_to_vertex with a0=sym(.rodata)+120, a1=?, a2=?, a3=?.
  The `jal` at 0x385c calls device_controller_num_set with a0=ret(hwgraph_path_to_vertex), a1=0x1, a2=?, a3=?.
  The `jal` at 0x3864 calls hwgraph_path_to_vertex with a0=sym(.rodata)+120, a1=?, a2=?, a3=?.
  The `jal` at 0x3878 calls device_controller_num_set with a0=ret(hwgraph_path_to_vertex), a1=0x0, a2=?, a3=?.
  The `jal` at 0x3880 calls hwgraph_fastinfo_get with a0=ret(hwgraph_path_to_vertex), a1=?, a2=?, a3=?.
  The `jal` at 0x3890 calls ef_ifattach with a0=ret(hwgraph_fastinfo_get), a1=0x0, a2=?, a3=?.
  The `blez` branch at 0x36f0 targets 0x3760, is taken when a2(=[sym(maxcpus)]) <= 0 (signed), and falls through when a2(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x3708 targets 0x3750, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x3758 targets 0x36fc, is taken when s0(?) < a2(=[sym(maxcpus)]) (signed), and falls through when s0(?) >= a2(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x3838 targets 0x3848, is taken when s2(=-0x1) == v0(=ret(hwgraph_path_to_vertex)), and falls through when s2(=-0x1) != v0(=ret(hwgraph_path_to_vertex)).
  The `beq` branch at 0x3854 targets 0x3864, is taken when s2(=-0x1) == v0(=ret(hwgraph_path_to_vertex)), and falls through when s2(=-0x1) != v0(=ret(hwgraph_path_to_vertex)).
  The `beq` branch at 0x386c targets 0x3898, is taken when s2(=-0x1) == v0(=ret(hwgraph_path_to_vertex)), and falls through when s2(=-0x1) != v0(=ret(hwgraph_path_to_vertex)).
  The `beq` branch at 0x3888 targets 0x3898, is taken when v0(=ret(hwgraph_fastinfo_get)) == 0, and falls through when v0(=ret(hwgraph_fastinfo_get)) != 0.
  The return at 0x38a4 has v0 = one of ret(hwgraph_path_to_vertex), ret(hwgraph_fastinfo_get), ret(ef_ifattach).
- `sendintr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x38ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x38ac-0x38c8 (28 bytes).
  It occupies 28 bytes.
  The `sd` at 0x38bc stores 8 bytes to abs 0xffffffffaff10020.
  The return at 0x38c0 has v0 = 0x0.
- `debug_stop_all_cpus` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x38c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x38c8-0x3954 (140 bytes).
  It occupies 140 bytes.
  3 such `lh` accesses load 2 bytes from abs 0xffffffffffffc3a0, including `lh` at 0x3900, `lh` at 0x3928, `lh` at 0x3950.
  2 such `sd` accesses store 8 bytes to abs 0xffffffffaff10020, including `sd` at 0x390c, `sd` at 0x3934.
  The `blez` branch at 0x38dc targets 0x3940, is taken when a3(=[sym(maxcpus)]) <= 0 (signed), and falls through when a3(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x38e4 targets 0x3948 and is always taken.
  The `beq` branch at 0x38f8 targets 0x3940, is taken when a1(?) >= a3(=[sym(maxcpus)]) (signed), and falls through when a1(?) < a3(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x3904 targets 0x3914, is taken when t0(=[-0x3c60]:2) == a1(?), and falls through when t0(=[-0x3c60]:2) != a1(?).
  The `beq` branch at 0x3920 targets 0x3940, is taken when a1(?) >= a3(=[sym(maxcpus)]) (signed), and falls through when a1(?) < a3(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x392c targets 0x38ec, is taken when t2(=[-0x3c60]:2) == a1(?), and falls through when t2(=[-0x3c60]:2) != a1(?).
  The `beq` branch at 0x3938 targets 0x38ec and is always taken.
  The `beq` branch at 0x394c targets 0x3904 and is always taken.
  The return at 0x3940 has v0 = ?.
- `tsfastick_maint` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3954 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3954-0x39cc (120 bytes).
  It occupies 120 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc280, including `ld` at 0x3954, `ld` at 0x3974.
  The `jal` at 0x396c calls fastick_maint with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x39a0 calls log_tstamp_event with a0=0x6e, a1=0x0, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x39bc calls log_tstamp_event with a0=0x65, a1=0x6e, a2=0x0, a3=0x0, a4=0x0.
  The `bne` branch at 0x3964 targets 0x3990, is taken when (at(=[-0x3d80]:8) & 0x20) != 0, and falls through when (at(=[-0x3d80]:8) & 0x20) == 0.
  The `bne` branch at 0x397c targets 0x39b0, is taken when (v0(=[-0x3d80]:8) & 0x20) != 0, and falls through when (v0(=[-0x3d80]:8) & 0x20) == 0.
  The `beq` branch at 0x39a8 targets 0x396c and is always taken.
  The `beq` branch at 0x39c4 targets 0x3988 and is always taken.
  The return at 0x3988 has v0 = one of ?, ret(log_tstamp_event).
- `pokesoftclk` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x39cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x39cc-0x39e8 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x39d4 calls siroff with a0=0x200, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x39e0 has v0 = ret(siroff).
- `ip30_intr_maint` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x39e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x39e8-0x3a18 (48 bytes).
  It occupies 48 bytes.
  The `lw` at 0x39e8 loads 4 bytes from abs 0xffffffffffffc560.
  The `lw` at 0x39f8 loads 4 bytes from abs 0xffffffffffffc564.
  The `jal` at 0x3a04 calls siron with a0=0x200, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x39f0 targets 0x3a04, is taken when at(=[-0x3aa0]) != 0, and falls through when at(=[-0x3aa0]) == 0.
  The `beq` branch at 0x39fc targets 0x3a10, is taken when v0(=[-0x3a9c]) == 0, and falls through when v0(=[-0x3a9c]) != 0.
  The return at 0x3a10 has v0 = one of [-0x3a9c], ret(siron).
- `intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3a18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3a18-0x3cd0 (696 bytes).
  It occupies 696 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffc048, including `lw` at 0x3a20, `lw` at 0x3c34.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc280, including `ld` at 0x3a48, `ld` at 0x3c4c.
  The `lbu` at 0x3ae8 loads 1 byte from ?.
  The `ld` at 0x3b04 loads 8 bytes from table(sym(kmem_ioaddr)) +0x10.
  The `lw` at 0x3b08 loads 4 bytes from table(sym(kmem_ioaddr)) +0x18.
  The `lw` at 0x3b0c loads 4 bytes from table(sym(kmem_ioaddr)) +0x1c.
  The `lw` at 0x3b10 loads 4 bytes from table(sym(kmem_ioaddr)) +0x20.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffc564, including `lw` at 0x3b4c, `lw` at 0x3bdc.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffc560, including `lw` at 0x3b64, `lw` at 0x3bb8.
  The `lbu` at 0x3b88 loads 1 byte from table(sym(kmem_ioaddr)) +0x138.
  The `ld` at 0x3b8c loads 8 bytes from abs 0xffffffffffffc488.
  The `ll` at 0x3b98 loads 4 bytes from [-0x3b78]:8 +0xd0.
  The `sc` at 0x3ba4 stores 4 bytes to [-0x3b78]:8 +0xd0.
  The `sw` at 0x3bd8 stores 4 bytes to abs 0xffffffffffffc560.
  The `sw` at 0x3bf8 stores 4 bytes to abs 0xffffffffffffc564.
  The `jal` at 0x3a9c calls splprof with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3b14 calls splx with a0=[table(sym(kmem_ioaddr))+24], a1=?, a2=?, a3=?.
  The `jalr` at 0x3b1c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3b40 calls getcause with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3c04 calls ip30_intr_maint with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3c44 calls check_delay_tlbflush with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x3c6c calls splx with a0=ret(splprof), a1=?, a2=?, a3=?.
  The `jal` at 0x3c7c calls check_delay_tlbflush with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3ca0 calls log_tstamp_event with a0=0x65, a1=0x66, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x3cc0 calls log_tstamp_event with a0=0x66, a1=0x0, a2=0x0, a3=0x0, a4=0x0.
  The `beq` branch at 0x3a3c targets 0x3c7c, is taken when at(?) == v0(=0x30), and falls through when at(?) != v0(=0x30).
  The `bne` branch at 0x3a5c targets 0x3cb0, is taken when (v0(=[-0x3d80]:8) & 0x20) != 0, and falls through when (v0(=[-0x3d80]:8) & 0x20) == 0.
  The `beq` branch at 0x3a94 targets 0x3b4c and is always taken.
  The `beq` branch at 0x3aa8 targets 0x3bb8, is taken when (s8(=0x10000) & s0(?)) == 0, and falls through when (s8(=0x10000) & s0(?)) != 0.
  The `beq` branch at 0x3ab4 targets 0x3bdc, is taken when (a2(=0x20000) & s0(?)) == 0, and falls through when (a2(=0x20000) & s0(?)) != 0.
  The `beq` branch at 0x3ac0 targets 0x3c6c, is taken when (a3(=0x30000) & s0(?)) == 0, and falls through when (a3(=0x30000) & s0(?)) != 0.
  The `beq` branch at 0x3ad8 targets 0x3c04, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x3ae0 targets 0x3b80, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x3b30 targets 0x3b8c, is taken when s1(=[table(sym(kmem_ioaddr))+32]) == 0, and falls through when s1(=[table(sym(kmem_ioaddr))+32]) != 0.
  The `beq` branch at 0x3b54 targets 0x3b64, is taken when ra(=[-0x3a9c]) == 0, and falls through when ra(=[-0x3a9c]) != 0.
  The `bne` branch at 0x3b5c targets 0x3a9c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x3b68 targets 0x3ac8, is taken when v0(=[-0x3aa0]) == 0, and falls through when v0(=[-0x3aa0]) != 0.
  The `bne` branch at 0x3b70 targets 0x3a9c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x3b78 targets 0x3ac8 and is always taken.
  The `beq` branch at 0x3b84 targets 0x3aec and is always taken.
  The `beql` branch at 0x3ba8 targets 0x3b98, is taken when a2(=[[-0x3b78]:8+208]+1) == 0, and falls through when a2(=[[-0x3b78]:8+208]+1) != 0; its branch-likely delay slot `nop` at 0x3bac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x3bb0 targets 0x3b40 and is always taken.
  The `beq` branch at 0x3bc0 targets 0x3ab0, is taken when a5(=[-0x3aa0]) == 0, and falls through when a5(=[-0x3aa0]) != 0.
  The `beq` branch at 0x3bc8 targets 0x3ab0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x3bd4 targets 0x3ab0 and is always taken.
  The `beq` branch at 0x3be8 targets 0x3ab8, is taken when a5(=[-0x3a9c]) == 0, and falls through when a5(=[-0x3a9c]) != 0.
  The `beq` branch at 0x3bf0 targets 0x3ab8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3bfc targets 0x3ab8 and is always taken.
  The `beq` branch at 0x3c2c targets 0x3c4c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x3c3c targets 0x3c4c, is taken when (a6(=[-0x3fb8]) & 0x10) == 0, and falls through when (a6(=[-0x3fb8]) & 0x10) != 0.
  The `bne` branch at 0x3c54 targets 0x3c90, is taken when (a7(=[-0x3d80]:8) & 0x20) != 0, and falls through when (a7(=[-0x3d80]:8) & 0x20) == 0.
  The `beq` branch at 0x3c74 targets 0x3ac8 and is always taken.
  The `beq` branch at 0x3c88 targets 0x3a48 and is always taken.
  The `beq` branch at 0x3ca8 targets 0x3c5c and is always taken.
  The `beq` branch at 0x3cc8 targets 0x3a68 and is always taken.
  The return at 0x3c64 has v0 = one of 0x0, 0x1.
- `intr_spray_heuristic` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3cd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3cd0-0x3d90 (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0x3d4c loads 8 bytes from table(sym(pdaindr)) +0x8.
  The `lw` at 0x3d50 loads 4 bytes from [table(sym(pdaindr))+8]:8 +0x48.
  The `lw` at 0x3d74 loads 4 bytes from table(sym(.sdata)+80) +0x0.
  The `sw` at 0x3d8c stores 4 bytes to table(sym(.sdata)+80) +0x0.
  The `jal` at 0x3ce0 calls device_desc_intr_target_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3cf4 calls cpuvertex_to_cpuid with a0=ret(device_desc_intr_target_get), a1=[sym(.sdata)+80], a2=?, a3=?.
  The `jal` at 0x3d04 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3d34 calls cpu_enabled with a0=?, a1=[sym(.sdata)+80], a2=?, a3=?.
  The `beq` branch at 0x3cd8 targets 0x3d28, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x3cec targets 0x3d2c, is taken when v0(=ret(device_desc_intr_target_get)) == at(=-0x1), and falls through when v0(=ret(device_desc_intr_target_get)) != at(=-0x1).
  The `beq` branch at 0x3d20 targets 0x3d64 and is always taken.
  The `beq` branch at 0x3d3c targets 0x3d60, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `beq` branch at 0x3d58 targets 0x3d68, is taken when (a2(=[[table(sym(pdaindr))+8]:8+72]) & 0x80) == 0, and falls through when (a2(=[[table(sym(pdaindr))+8]:8+72]) & 0x80) != 0.
  The return at 0x3d88 has v0 = ?.
- `heart_set_cpu_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3d90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3d90-0x3da4 (20 bytes).
  It occupies 20 bytes.
  The `sd` at 0x3da0 stores 8 bytes to abs 0xffffffffaff10020.
  The return at 0x3d9c has v0 = 0xffffffffaff10000.
- `devnamefromarcs` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3da4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3da4-0x3f24 (384 bytes).
  It occupies 384 bytes.
  The `lw` at 0x3ddc loads 4 bytes from sym(.rodata) +0x430.
  The `ld` at 0x3de0 loads 8 bytes from sym(.rodata) +0x440.
  The `lbu` at 0x3de8 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `ld` at 0x3df0 loads 8 bytes from sym(.rodata) +0x410.
  The `lbu` at 0x3df8 loads 1 byte from sym(.rodata) +0x418.
  The `lbu` at 0x3e04 loads 1 byte from sym(.rodata) +0x434.
  9 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x3e08, `lbu` at 0x3e1c, `lbu` at 0x3e34.
  13 such `sb` accesses store 1 byte to ?, including `sb` at 0x3e18, `sb` at 0x3e30, `sb` at 0x3e64.
  The `lbu` at 0x3e24 loads 1 byte from sym(.rodata) +0x436.
  3 such `sdl` accesses store 8 bytes to ?, including `sdl` at 0x3e28, `sdl` at 0x3e74, `sdl` at 0x3e7c.
  3 such `sdr` accesses store 8 bytes to ?, including `sdr` at 0x3e2c, `sdr` at 0x3e78, `sdr` at 0x3e80.
  The `ld` at 0x3e38 loads 8 bytes from sym(.rodata) +0x420.
  The `ld` at 0x3e40 loads 8 bytes from sym(.rodata) +0x428.
  The `lbu` at 0x3e48 loads 1 byte from sym(.rodata) +0x435.
  2 such `swl` accesses store 4 bytes to ?, including `swl` at 0x3e84, `swl` at 0x3f00.
  2 such `swr` accesses store 4 bytes to ?, including `swr` at 0x3e88, `swr` at 0x3f04.
  The `lbu` at 0x3ef4 loads 1 byte from sym(.rodata) +0x44d.
  The `lw` at 0x3ef8 loads 4 bytes from sym(.rodata) +0x448.
  The `lbu` at 0x3efc loads 1 byte from sym(.rodata) +0x44c.
  The `jal` at 0x3dbc calls strncmp with a0=a0 at entry (arg0), a1=sym(.rodata)+120, a2=0x3, a3=a3 at entry (arg3).
  The `jal` at 0x3f14 calls strcpy with a0=a0 at entry (arg0), a1=sp-272, a2=0x6b, a3=?, a4=0x0, a5=0x626c6f63, a6=0x2f, a7=0x6e.
  The `beq` branch at 0x3dc4 targets 0x3ddc, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x3e00 targets 0x3e24, is taken when a0(=0x64) == a7(=[a0+3]:1), and falls through when a0(=0x64) != a7(=[a0+3]:1).
  The `beq` branch at 0x3e14 targets 0x3dcc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x3e20 targets 0x3e08, is taken when a0(=0x64) != t2(?), and falls through when a0(=0x64) == t2(?).
  The `beq` branch at 0x3e4c targets 0x3e74, is taken when a0(=0x73) == t9(?), and falls through when a0(=0x73) != t9(?).
  The `beq` branch at 0x3e60 targets 0x3dcc, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x3e6c targets 0x3e54, is taken when a0(=0x73) != at(?), and falls through when a0(=0x73) == at(?).
  The `beq` branch at 0x3ea4 targets 0x3ee8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x3eb8 targets 0x3ee8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x3ecc targets 0x3ee8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x3ee0 targets 0x3eac, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x3f1c targets 0x3dd0 and is always taken.
  The return at 0x3dd4 has v0 = one of ret(strncmp), ret(strcpy).
- `heart_invalidate_war` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3f24 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3f24-0x3fb8 (148 bytes).
  It occupies 148 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x3f34, `ld` at 0x3f6c.
  2 such `lbu` accesses load 1 byte from abs 0xffffffffffffc04f, including `lbu` at 0x3f48, `lbu` at 0x3f78.
  The `jal` at 0x3f54 calls splhi with a0=0x2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3f64 calls __heart_invalidate_war with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x3f84 calls splx with a0=?, a1=[-0x3fe0]:8, a2=?, a3=0x2.
  The `jal` at 0x3f98 calls rt_unpin_thread with a0=?, a1=[-0x3fe0]:8, a2=[-0x3fb1]:1, a3=0x2.
  The `jal` at 0x3fa8 calls rt_pin_thread with a0=0x2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x3f2c targets 0x3f8c, is taken when at(=[sym(_heart_invalidate_war)]) == 0, and falls through when at(=[sym(_heart_invalidate_war)]) != 0.
  The `beq` branch at 0x3f40 targets 0x3f54, is taken when v0(=[-0x3fe0]:8) == 0, and falls through when v0(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x3f4c targets 0x3fa8, is taken when v1(=[-0x3fb1]:1) == a0(=0x2), and falls through when v1(=[-0x3fb1]:1) != a0(=0x2).
  The `beq` branch at 0x3f70 targets 0x3f84, is taken when a1(=[-0x3fe0]:8) == 0, and falls through when a1(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x3f7c targets 0x3f98, is taken when a2(=[-0x3fb1]:1) == a3(=0x2), and falls through when a2(=[-0x3fb1]:1) != a3(=0x2).
  The `beq` branch at 0x3fa0 targets 0x3f90 and is always taken.
  The `beq` branch at 0x3fb0 targets 0x3f60 and is always taken.
  The return at 0x3f90 has v0 = one of ?, ret(rt_unpin_thread).
- `bp_heart_invalidate_war` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3fb8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3fb8-0x40e4 (300 bytes).
  It occupies 300 bytes.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x3fd4, `ld` at 0x4028, `ld` at 0x40d0.
  2 such `lbu` accesses load 1 byte from abs 0xffffffffffffc04f, including `lbu` at 0x3fe0, `lbu` at 0x4038.
  The `ld` at 0x3ff8 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x400c loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `ld` at 0x4014 loads 8 bytes from a0 (arg0 at entry) +0x80.
  The `lwu` at 0x406c loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `ld` at 0x4084 loads 8 bytes from a0 (arg0 at entry) +0xa0.
  The `ld` at 0x40c8 loads 8 bytes from ?.
  The `jal` at 0x3fec calls splhi with a0=0x2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4010 calls __heart_invalidate_war with a0=[a0+128]:8, a1=[a0+104], a2=0x4000, a3=?.
  The `jal` at 0x4044 calls splx with a0=?, a1=?, a2=?, a3=[-0x3fe0]:8, a5=0x2.
  The `jal` at 0x405c calls rt_pin_thread with a0=0x2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x40b4 calls __heart_invalidate_war with a0=?, a1=0x4000, a2=?, a3=-0x1.
  The `jal` at 0x40d4 calls rt_unpin_thread with a0=?, a1=?, a2=?, a3=[-0x3fe0]:8, a4=[-0x3fb1]:1, a5=0x2.
  The `beq` branch at 0x3fcc targets 0x404c, is taken when at(=[sym(_heart_invalidate_war)]) == 0, and falls through when at(=[sym(_heart_invalidate_war)]) != 0.
  The `beq` branch at 0x3fd8 targets 0x3fec, is taken when v0(=[-0x3fe0]:8) == 0, and falls through when v0(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x3fe4 targets 0x405c, is taken when v1(=[-0x3fb1]:1) == a0(=0x2), and falls through when v1(=[-0x3fb1]:1) != a0(=0x2).
  The `beq` branch at 0x4004 targets 0x4020, is taken when a1(?) == a2(=0x4000), and falls through when a1(?) != a2(=0x4000).
  The `beq` branch at 0x4018 targets 0x4050 and is always taken.
  The `bgez` branch at 0x4020 targets 0x406c, is taken when a0(=([a0+16]:8 << 0x2a)) >= 0 (signed), and falls through when a0(=([a0+16]:8 << 0x2a)) < 0 (signed).
  The `beq` branch at 0x4030 targets 0x4044, is taken when a3(=[-0x3fe0]:8) == 0, and falls through when a3(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x403c targets 0x40d4, is taken when a4(=[-0x3fb1]:1) == a5(=0x2), and falls through when a4(=[-0x3fb1]:1) != a5(=0x2).
  The `beq` branch at 0x4064 targets 0x3ff8 and is always taken.
  The `beq` branch at 0x408c targets 0x4028, is taken when a1(?) == a3(=-0x1), and falls through when a1(?) != a3(=-0x1).
  The `bne` branch at 0x40c4 targets 0x4098, is taken when s0(?) != a3(=-0x1), and falls through when s0(?) == a3(=-0x1).
  The `beq` branch at 0x40cc targets 0x402c and is always taken.
  The `beq` branch at 0x40dc targets 0x4050 and is always taken.
  The return at 0x4054 has v0 = one of ret(__heart_invalidate_war), ?, ret(rt_unpin_thread).
- `ip30_rad_halt` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x40e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x40e4-0x4108 (36 bytes).
  It occupies 36 bytes.
  The `jalr` at 0x40f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=[sym(rad_halt_func)]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x40ec targets 0x40fc, is taken when a1(=[sym(rad_halt_func)]:8) == 0, and falls through when a1(=[sym(rad_halt_func)]:8) != 0.
  The return at 0x4100 has v0 = one of ?, ret(?).
- `stop_bell` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4108 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4108-0x413c (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0x412c stores 4 bytes to [sym(.sdata)+64]:8 +0x0.
  The `jal` at 0x4110 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4128 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The return at 0x4134 has v0 = ret(splx).
- `pckbd_bell` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x413c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x413c-0x41c8 (140 bytes).
  It occupies 140 bytes.
  The `sw` at 0x41b0 stores 4 bytes to [sym(.sdata)+72]:8 +0x0.
  The `jal` at 0x4150 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x416c calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x41b4 calls timeout with a0=sym(stop_bell), a1=0x0, a2=?, a3=0x100000, a4=[sym(.sdata)+72]:8.
  The `blez` branch at 0x4148 targets 0x4184, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `beq` branch at 0x4164 targets 0x418c, is taken when v0(=[sym(.sbss)+48]) == 0, and falls through when v0(=[sym(.sbss)+48]) != 0.
  The `beq` branch at 0x4184 targets 0x417c and is always taken.
  The `beq` branch at 0x41c0 targets 0x416c and is always taken.
  The return at 0x417c has v0 = one of 0x0, 0x1.
- `stopclocks` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x41c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x41c8-0x41f0 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0x41e0 stores 4 bytes to abs 0xffffffffffffc510.
  The `sd` at 0x41e4 stores 8 bytes to abs 0xffffffffffffc570.
  The `jal` at 0x41d0 calls slowkgclock with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x41e8 has v0 = ret(slowkgclock).
- `counter_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x41f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x41f0-0x48ac (1724 bytes).
  It occupies 1724 bytes.
  The `lw` at 0x41f8 loads 4 bytes from abs 0xffffffffffffc658.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc280, including `ld` at 0x420c, `ld` at 0x4224, `ld` at 0x42dc.
  The `lw` at 0x4264 loads 4 bytes from abs 0xffffffffffffc048.
  10 such `ld` accesses load 8 bytes from abs 0xffffffffaff20000, including `ld` at 0x4280, `ld` at 0x42f4, `ld` at 0x4328.
  9 such `lh` accesses load 2 bytes from abs 0xffffffffffffc3a0, including `lh` at 0x4288, `lh` at 0x42a0, `lh` at 0x42c8.
  The `sw` at 0x429c stores 4 bytes to ?.
  The `ld` at 0x42b0 loads 8 bytes from (sym(pdaindr) + ([-0x3c60]:2 << 0x4)) +0x8.
  The `ld` at 0x42f8 loads 8 bytes from abs 0xffffffffffffc558.
  The `lw` at 0x430c loads 4 bytes from abs 0xffffffffffffc6f4.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc548, including `ld` at 0x4380, `ld` at 0x4460.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc570, including `ld` at 0x43a0, `ld` at 0x480c.
  2 such `sd` accesses store 8 bytes to abs 0xffffffffffffc558, including `sd` at 0x4418, `sd` at 0x45ec.
  The `lwu` at 0x4430 loads 4 bytes from abs 0xffffffffffffc510.
  7 such `lw` accesses load 4 bytes from (sym(.bss)+32 + ([-0x3c60]:2 << 0x2)) +0x10, including `lw` at 0x4454, `lw` at 0x448c, `lw` at 0x44ec.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffc560, including `lw` at 0x4468, `lw` at 0x4698.
  The `sd` at 0x4470 stores 8 bytes to abs 0xffffffffffffc570.
  4 such `sw` accesses store 4 bytes to abs 0xffffffffffffc560, including `sw` at 0x447c, `sw` at 0x4510, `sw` at 0x4614.
  4 such `sd` accesses store 8 bytes to abs 0xffffffffffffc548, including `sd` at 0x4484, `sd` at 0x4518, `sd` at 0x4538.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc550, including `ld` at 0x4490, `ld` at 0x4574, `ld` at 0x4618.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffffffc564, including `lw` at 0x44ac, `lw` at 0x4594, `lw` at 0x4630.
  4 such `sw` accesses store 4 bytes to abs 0xffffffffffffc564, including `sw` at 0x44bc, `sw` at 0x45a4, `sw` at 0x4640.
  4 such `sd` accesses store 8 bytes to abs 0xffffffffffffc550, including `sd` at 0x44c4, `sd` at 0x45ac, `sd` at 0x4648.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffffffc568, including `lw` at 0x4564, `lw` at 0x4600, `lw` at 0x469c.
  3 such `sw` accesses store 4 bytes to abs 0xffffffffffffc568, including `sw` at 0x4570, `sw` at 0x4608, `sw` at 0x46b0.
  The `lw` at 0x46c4 loads 4 bytes from abs 0xffffffffffffc56c.
  The `sw` at 0x46cc stores 4 bytes to abs 0xffffffffffffc56c.
  The `lw` at 0x46f8 loads 4 bytes from abs 0xffffffffffffc584.
  The `sw` at 0x470c stores 4 bytes to abs 0xffffffffffffc584.
  The `lw` at 0x4710 loads 4 bytes from abs 0xffffffffffffc580.
  The `ld` at 0x4718 loads 8 bytes from abs 0xffffffffffffc578.
  The `sw` at 0x4720 stores 4 bytes to abs 0xffffffffffffc580.
  The `sd` at 0x4730 stores 8 bytes to abs 0xffffffffffffc578.
  The `lw` at 0x4810 loads 4 bytes from abs 0xffffffffffffc6f0.
  The `ld` at 0x4884 loads 8 bytes from a0 (arg0 at entry) +0xf0.
  The `ld` at 0x4890 loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `jal` at 0x421c calls frs_handle_counter_intr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4244 calls hwperf_overflowed_intr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4254 calls hwperf_intr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x427c calls resetcounter with a0=-0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x42b4 calls first_timein [0x661c] with a0=[(sym(pdaindr) + ([-0x3c60]:2 << 0x4))+8]:8+1416, a1=([-0x3c60]:2 << 0x4), a2=?, a3=?.
  The `jal` at 0x42cc calls _set_timer_intr [0x5148] with a0=[-0x3c60]:2, a1=ret(first_timein), a2=0x0, a3=0x1, a4=[0xffffffffaff20000]:8.
  The `jal` at 0x4378 calls resetlatency with a0=?, a1=[-0x3aa8]:8+1200, a2=?, a3=?, a4=[-0x390c], a7=0x37e11d600.
  The `jal` at 0x45bc calls resetlatency with a0=?, a1=?, a2=?, a3=(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16, a4=0x1e848, a6=sym(.bss)+32.
  The `jal` at 0x46e4 calls _get_count with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x46ec calls _get_compare with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x478c calls resetcounter with a0=?, a1=[sym(count_min_delta)], a2=?, a3=0x7d, a4=[sym(cpufreq_cycles)], a7=0x37e11d600.
  The `jal` at 0x47a8 calls log_tstamp_event with a0=0x6c, a1=0x0, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x47c8 calls log_tstamp_event with a0=0x65, a1=0x6c, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x47e4 calls log_tstamp_event with a0=0x65, a1=0x6c, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x4800 calls log_tstamp_event with a0=0x6c, a1=0x0, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x488c calls cmn_err with a0=one of 0x0, 0x4, a1=sym(.rodata)+1104, a2=[-0x3c60]:2, a3=?, a4=[a0+288]:8, a5=[a0+240]:8, a6=sym(.rodata)+1104.
  The `beq` branch at 0x4204 targets 0x4244, is taken when at(=[-0x39a8]) == 0, and falls through when at(=[-0x39a8]) != 0.
  The `bne` branch at 0x4214 targets 0x479c, is taken when (v0(=[-0x3d80]:8) & 0x20) != 0, and falls through when (v0(=[-0x3d80]:8) & 0x20) == 0.
  The `bne` branch at 0x422c targets 0x47b8, is taken when (v1(=[-0x3d80]:8) & 0x20) != 0, and falls through when (v1(=[-0x3d80]:8) & 0x20) == 0.
  The `beq` branch at 0x424c targets 0x4264, is taken when v0(=ret(hwperf_overflowed_intr)) == 0, and falls through when v0(=ret(hwperf_overflowed_intr)) != 0.
  The `beq` branch at 0x425c targets 0x4234 and is always taken.
  The `beq` branch at 0x4270 targets 0x42f4, is taken when (a0(=[-0x3fb8]) & 0x40) == 0, and falls through when (a0(=[-0x3fb8]) & 0x40) != 0.
  The `beq` branch at 0x42d4 targets 0x4230, is taken when s2(=one of 0x0, 0x1) == 0, and falls through when s2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x42e4 targets 0x4234, is taken when (a2(=[-0x3d80]:8) & 0x20) == 0, and falls through when (a2(=[-0x3d80]:8) & 0x20) != 0.
  The `beq` branch at 0x42ec targets 0x47d8 and is always taken.
  The `beq` branch at 0x4300 targets 0x4408, is taken when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3aa8]:8) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3aa8]:8) (unsigned).
  The `beq` branch at 0x4320 targets 0x4754, is taken when a5(?) >= a6(?) (unsigned), and falls through when a5(?) < a6(?) (unsigned).
  The `beq` branch at 0x4330 targets 0x4378, is taken when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3aa8]:8) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3aa8]:8) (unsigned).
  The `beq` branch at 0x4340 targets 0x4378, is taken when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3aa8]:8) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3aa8]:8) (unsigned).
  The `beq` branch at 0x4350 targets 0x4378, is taken when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3aa8]:8) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3aa8]:8) (unsigned).
  The `beq` branch at 0x4360 targets 0x4378, is taken when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3aa8]:8) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3aa8]:8) (unsigned).
  The `bne` branch at 0x4370 targets 0x4328, is taken when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3aa8]:8) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3aa8]:8) (unsigned).
  The `bne` branch at 0x4388 targets 0x4490, is taken when s0(=[0xffffffffaff20000]:8) < a2(=[-0x3ab8]:8) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= a2(=[-0x3ab8]:8) (unsigned).
  The `bne` branch at 0x4398 targets 0x47f4, is taken when (ra(=[-0x3d80]:8) & 0x20) != 0, and falls through when (ra(=[-0x3d80]:8) & 0x20) == 0.
  The `beq` branch at 0x43a4 targets 0x4734, is taken when v0(=[-0x3a90]:8) == 0, and falls through when v0(=[-0x3a90]:8) != 0.
  The `beq` branch at 0x43b0 targets 0x46e4, is taken when at(=[sym(lbolt)]) >= 0x3e9 (signed), and falls through when at(=[sym(lbolt)]) < 0x3e9 (signed).
  The `beq` branch at 0x43bc targets 0x4420, is taken when v0(=[sym(counter_intr_warn_period)]) == 0, and falls through when v0(=[sym(counter_intr_warn_period)]) != 0.
  The `beq` branch at 0x43cc targets 0x4420, is taken when v1(=[sym(counter_intr_warn_period)]) >= 0x100 (unsigned), and falls through when v1(=[sym(counter_intr_warn_period)]) < 0x100 (unsigned).
  The `beq` branch at 0x4400 targets 0x4428 and is always taken.
  The `beq` branch at 0x440c targets 0x4380, is taken when a1(=[-0x3aa8]:8+1200) >= s0(=[0xffffffffaff20000]:8) (unsigned), and falls through when a1(=[-0x3aa8]:8+1200) < s0(=[0xffffffffaff20000]:8) (unsigned).
  The `beq` branch at 0x4414 targets 0x4380 and is always taken.
  The `beq` branch at 0x4428 targets 0x473c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x444c targets 0x445c, is taken when v1(=[-0x3af0]) == a0(=0xf0000000), and falls through when v1(=[-0x3af0]) != a0(=0xf0000000).
  The `beq` branch at 0x4458 targets 0x4810, is taken when a1(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) == 0, and falls through when a1(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) != 0.
  The `bne` branch at 0x4480 targets 0x4618, is taken when s0(=[0xffffffffaff20000]:8) < a2(=[-0x3ab8]:8+125000) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= a2(=[-0x3ab8]:8+125000) (unsigned).
  The `beq` branch at 0x4488 targets 0x4530 and is always taken.
  The `bne` branch at 0x4498 targets 0x44f4, is taken when v0(=[-0x3ab0]:8) < 0x2 (unsigned), and falls through when v0(=[-0x3ab0]:8) >= 0x2 (unsigned).
  The `bne` branch at 0x44a4 targets 0x44f0, is taken when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3ab0]:8) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3ab0]:8) (unsigned).
  The `bne` branch at 0x44c0 targets 0x44f0, is taken when s0(=[0xffffffffaff20000]:8) < v0(=([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8)) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= v0(=([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8)) (unsigned).
  The `beq` branch at 0x44e8 targets 0x467c and is always taken.
  The `beq` branch at 0x4504 targets 0x429c and is always taken.
  The `bne` branch at 0x4524 targets 0x4574, is taken when s0(=[0xffffffffaff20000]:8) < a2(?) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= a2(?) (unsigned).
  The `beq` branch at 0x4530 targets 0x45f0, is taken when a7(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) == 0, and falls through when a7(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) != 0.
  The `bne` branch at 0x4544 targets 0x4574, is taken when s0(=[0xffffffffaff20000]:8) < a2(?) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= a2(?) (unsigned).
  The `bne` branch at 0x4550 targets 0x4514, is taken when t1(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) != 0, and falls through when t1(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) == 0.
  The `bne` branch at 0x455c targets 0x450c, is taken when t2(=[sym(lbolt)]) < 0xb5 (signed), and falls through when t2(=[sym(lbolt)]) >= 0xb5 (signed).
  The `beq` branch at 0x456c targets 0x450c and is always taken.
  The `bne` branch at 0x457c targets 0x45bc, is taken when v0(=[-0x3ab0]:8) < 0x2 (unsigned), and falls through when v0(=[-0x3ab0]:8) >= 0x2 (unsigned).
  The `bne` branch at 0x4588 targets 0x45bc, is taken when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3ab0]:8) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3ab0]:8) (unsigned).
  The `bne` branch at 0x45a8 targets 0x45b8, is taken when s0(=[0xffffffffaff20000]:8) < v0(=([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8)) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= v0(=([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8)) (unsigned).
  The `beq` branch at 0x45b0 targets 0x44e8 and is always taken.
  The `beq` branch at 0x45e8 targets 0x429c and is always taken.
  The `bne` branch at 0x45f8 targets 0x460c, is taken when a5(=[sym(lbolt)]) < 0xb5 (signed), and falls through when a5(=[sym(lbolt)]) >= 0xb5 (signed).
  The `beq` branch at 0x4610 targets 0x4538 and is always taken.
  The `bne` branch at 0x4620 targets 0x46dc, is taken when v0(=[-0x3ab0]:8) < 0x2 (unsigned), and falls through when v0(=[-0x3ab0]:8) >= 0x2 (unsigned).
  The `bne` branch at 0x4628 targets 0x46dc, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x4644 targets 0x46dc, is taken when s0(=[0xffffffffaff20000]:8) < v0(=([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8)) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= v0(=([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8)) (unsigned).
  The `beq` branch at 0x464c targets 0x44e8 and is always taken.
  The `bne` branch at 0x4670 targets 0x45bc, is taken when s0(=[0xffffffffaff20000]:8) < v0(?) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= v0(?) (unsigned).
  The `beq` branch at 0x467c targets 0x46b4, is taken when t0(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) == 0, and falls through when t0(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) != 0.
  The `bne` branch at 0x4684 targets 0x4660, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x4690 targets 0x4654, is taken when t2(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) != 0, and falls through when t2(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) == 0.
  The `beq` branch at 0x46ac targets 0x4654 and is always taken.
  The `bne` branch at 0x46bc targets 0x46d0, is taken when t9(=[sym(lbolt)]) < 0xb5 (signed), and falls through when t9(=[sym(lbolt)]) >= 0xb5 (signed).
  The `beq` branch at 0x46d4 targets 0x4680 and is always taken.
  The `beq` branch at 0x46dc targets 0x429c and is always taken.
  The `beq` branch at 0x4704 targets 0x4710, is taken when at(=[-0x3a7c]) >= a2(?) (unsigned), and falls through when at(=[-0x3a7c]) < a2(?) (unsigned).
  The `beq` branch at 0x472c targets 0x43b8 and is always taken.
  The `beq` branch at 0x4734 targets 0x43b8 and is always taken.
  The `beq` branch at 0x474c targets 0x445c and is always taken.
  The `beq` branch at 0x4794 targets 0x4230 and is always taken.
  The `beq` branch at 0x47b0 targets 0x421c and is always taken.
  The `beq` branch at 0x47d0 targets 0x4234 and is always taken.
  The `beq` branch at 0x47ec targets 0x4234 and is always taken.
  The `beq` branch at 0x4808 targets 0x43a4 and is always taken.
  The `bne` branch at 0x4858 targets 0x4878, is taken when a3(?) < a7(?) (signed), and falls through when a3(?) >= a7(?) (signed).
  The `bne` branch at 0x4868 targets 0x4878, is taken when t3(?) < a3(?) (signed), and falls through when t3(?) >= a3(?) (signed).
  The `beq` branch at 0x4870 targets 0x4880 and is always taken.
  The `beq` branch at 0x48a4 targets 0x445c and is always taken.
  The return at 0x423c has v0 = one of ret(frs_handle_counter_intr), ?, ret(hwperf_intr), ret(_set_timer_intr), ret(log_tstamp_event).
  The instructions from 0x441c to 0x441c are not reached by any path from the entry, and their branches are not listed.
- `startrtclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x48ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x48ac-0x4a24 (376 bytes).
  It occupies 376 bytes.
  The `lh` at 0x48c4 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `sw` at 0x48cc stores 4 bytes to abs 0xffffffffffffc510.
  The `lw` at 0x48e4 loads 4 bytes from abs 0xffffffffffffc6f4.
  The `sw` at 0x4940 stores 4 bytes to abs 0xffffffffffffc568.
  The `ld` at 0x494c loads 8 bytes from abs 0xffffffffaff20000.
  2 such `sd` accesses store 8 bytes to abs 0xffffffffffffc548, including `sd` at 0x498c, `sd` at 0x49cc.
  The `sd` at 0x49c8 stores 8 bytes to abs 0xffffffffffffc558.
  The `jal` at 0x48b4 calls findcpufreq_cycles [0x65e8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4a08 calls initcounter with a0=?, a1=[sym(count_min_delta)], a2=?, a3=?, a4=0x7d, a5=[sym(cpufreq_cycles)].
  The `bne` branch at 0x48dc targets 0x4940, is taken when at(=[-0x3c60]:2) != v0(=[sym(master_procid)]:2), and falls through when at(=[-0x3c60]:2) == v0(=[sym(master_procid)]:2).
  The `bne` branch at 0x48fc targets 0x4940, is taken when a1(=[sym(count_min_delta)]) != 0, and falls through when a1(=[sym(count_min_delta)]) == 0.
  The `beq` branch at 0x4918 targets 0x4a1c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x4934 targets 0x4920, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x4a1c targets 0x493c and is always taken.
  The return at 0x4a14 has v0 = ret(initcounter).
- `startaudioclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4a24 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4a24-0x4a78 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x4a3c calls setmustrun with a0=[sym(master_procid)]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4a60 calls startkgclock with a0=?, a1=0x1, a2=?, a3=?.
  The `jal` at 0x4a68 calls restoremustrun with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4a2c targets 0x4a3c, is taken when at(=[sym(audioclock)]) == 0, and falls through when at(=[sym(audioclock)]) != 0.
  The `beq` branch at 0x4a70 targets 0x4a34 and is always taken.
  The return at 0x4a34 has v0 = one of ?, ret(restoremustrun).
- `stopaudioclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4a78 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4a78-0x4ad8 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x4a98 loads 4 bytes from abs 0xffffffffffffc540.
  The `jal` at 0x4a88 calls setmustrun with a0=[sym(master_procid)]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4ab4 calls restoremustrun with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4ac8 calls slowkgclock with a0=(ret(setmustrun) << 0x20), a1=?, a2=?, a3=?.
  The `beq` branch at 0x4a80 targets 0x4abc, is taken when at(=[sym(audioclock)]) == 0, and falls through when at(=[sym(audioclock)]) != 0.
  The `beq` branch at 0x4aac targets 0x4ac8, is taken when v1(=[-0x3ac0]) == 0, and falls through when v1(=[-0x3ac0]) != 0.
  The `beq` branch at 0x4ad0 targets 0x4ab4 and is always taken.
  The return at 0x4ac0 has v0 = one of ?, ret(restoremustrun).
- `startprfclk` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4ad8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4ad8-0x4b38 (96 bytes).
  It occupies 96 bytes.
  The `ll` at 0x4af0 loads 4 bytes from abs 0xffffffffffffc540.
  The `sc` at 0x4afc stores 4 bytes to abs 0xffffffffffffc540.
  The `lw` at 0x4b08 loads 4 bytes from abs 0xffffffffffffc540.
  The `jal` at 0x4ae0 calls splprof with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4b14 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4b28 calls startkgclock with a0=[-0x3ac0]+1, a1=-0x3ac0, a2=[-0x3ac0]+1, a3=?.
  The `beql` branch at 0x4b00 targets 0x4af0, is taken when a2(=[-0x3ac0]+1) == 0, and falls through when a2(=[-0x3ac0]+1) != 0; its branch-likely delay slot `nop` at 0x4b04 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x4b0c targets 0x4b28, is taken when at(=[-0x3ac0]) == v1(=0x1), and falls through when at(=[-0x3ac0]) != v1(=0x1).
  The `beq` branch at 0x4b30 targets 0x4b14 and is always taken.
  The return at 0x4b20 has v0 = ret(splx).
- `stopprfclk` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4b38 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4b38-0x4bb8 (128 bytes).
  It occupies 128 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffc540, including `lw` at 0x4b48, `lw` at 0x4b70.
  The `ll` at 0x4b58 loads 4 bytes from abs 0xffffffffffffc540.
  The `sc` at 0x4b64 stores 4 bytes to abs 0xffffffffffffc540.
  The `lh` at 0x4b7c loads 2 bytes from abs 0xffffffffffffc3a0.
  The `jal` at 0x4b40 calls splprof with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4b94 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4ba8 calls slowkgclock with a0=[sym(audioclock)], a1=[-0x3ac0]-1, a2=[-0x3ac0]-1, a3=[-0x3c60]:2, a4=[sym(master_procid)]:2.
  The `beq` branch at 0x4b50 targets 0x4b94, is taken when at(=[-0x3ac0]) == 0, and falls through when at(=[-0x3ac0]) != 0.
  The `beql` branch at 0x4b68 targets 0x4b58, is taken when a2(=[-0x3ac0]-1) == 0, and falls through when a2(=[-0x3ac0]-1) != 0; its branch-likely delay slot `nop` at 0x4b6c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x4b74 targets 0x4b94, is taken when v1(=[-0x3ac0]) != 0, and falls through when v1(=[-0x3ac0]) == 0.
  The `bne` branch at 0x4b84 targets 0x4ba8, is taken when a3(=[-0x3c60]:2) != a4(=[sym(master_procid)]:2), and falls through when a3(=[-0x3c60]:2) == a4(=[sym(master_procid)]:2).
  The `beq` branch at 0x4b8c targets 0x4ba8, is taken when a0(=[sym(audioclock)]) == 0, and falls through when a0(=[sym(audioclock)]) != 0.
  The `beq` branch at 0x4bb0 targets 0x4b94 and is always taken.
  The return at 0x4ba0 has v0 = ret(splx).
- `ackrtclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4bb8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4bb8-0x4bc0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x4bb8 has v0 = ?.
- `init_timebase` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4bc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4bc0-0x4c7c (188 bytes).
  It occupies 188 bytes.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffaff20000, including `ld` at 0x4be0, `ld` at 0x4c00, `ld` at 0x4c28.
  The `sw` at 0x4bf0 stores 4 bytes to sym(pdaindr) +0x20.
  The `sd` at 0x4bf4 stores 8 bytes to sym(pdaindr) +0x28.
  The `jal` at 0x4bcc calls rtodc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4c40 calls rtodc with a0=?, a1=sym(.rodata)+1104, a2=?, a3=?.
  The `jal` at 0x4c6c calls cmn_err with a0=0x4, a1=sym(.rodata)+1104, a2=?, a3=?.
  The `beq` branch at 0x4c18 targets 0x4c68, is taken when at(=[0xffffffffaff20000]:8) >= v0(=[sym(.sbss)+104]:8+0x17d7840) (unsigned), and falls through when at(=[0xffffffffaff20000]:8) < v0(=[sym(.sbss)+104]:8+0x17d7840) (unsigned).
  The `beq` branch at 0x4c20 targets 0x4c40 and is always taken.
  The `beq` branch at 0x4c38 targets 0x4c68, is taken when ra(=[0xffffffffaff20000]:8) >= at(=[sym(.sbss)+104]:8+0x17d7840) (unsigned), and falls through when ra(=[0xffffffffaff20000]:8) < at(=[sym(.sbss)+104]:8+0x17d7840) (unsigned).
  The `beq` branch at 0x4c4c targets 0x4c28, is taken when v1(=[sym(time)]) == v0(=ret(rtodc)), and falls through when v1(=[sym(time)]) != v0(=ret(rtodc)).
  The `beq` branch at 0x4c74 targets 0x4c54 and is always taken.
  The return at 0x4c5c has v0 = one of ret(rtodc), ret(cmn_err).
  The instructions from 0x4c64 to 0x4c64 are not reached by any path from the entry, and their branches are not listed.
- `inittodr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4c7c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4c7c-0x4de8 (364 bytes).
  It occupies 364 bytes.
  The `jal` at 0x4cc0 calls rtodc with a0=0xf4240, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4cf8 calls cmn_err_tag with a0=0x32, a1=0x4, a2=sym(.rodata)+1104, a3=?, a4=[sym(time)], a5=0x4000000.
  The `jal` at 0x4d14 calls cmn_err_tag with a0=0x33, a1=0x4, a2=sym(.rodata)+1104, a3=?, a4=[sym(time)], a5=0x4000000.
  The `jal` at 0x4d20 calls settime with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0x4d28 calls wtodc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4da4 calls cmn_err_tag with a0=0x35, a1=0x4, a2=sym(.rodata)+1104, a3=sym(.rodata)+1104, a5=[sym(time)], a7=0x20000.
  The `jal` at 0x4db8 calls cmn_err_tag with a0=0x36, a1=0x4, a2=sym(.rodata)+1104, a3=?.
  The `jal` at 0x4dd0 calls cmn_err_tag with a0=0x34, a1=0x4, a2=sym(.rodata)+1104, a3=?, a5=[sym(time)], a7=0x20000.
  The `beq` branch at 0x4ca8 targets 0x4cc0, is taken when at(=[sym(miniroot)]:1) == 0, and falls through when at(=[sym(miniroot)]:1) != 0.
  The `bne` branch at 0x4cd8 targets 0x4ce8, is taken when v0(=ret(rtodc)) < a5(=0x4000000) (signed), and falls through when v0(=ret(rtodc)) >= a5(=0x4000000) (signed).
  The `beq` branch at 0x4ce0 targets 0x4d34, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x4ce8 targets 0x4d08, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x4d00 targets 0x4d1c and is always taken.
  The `bne` branch at 0x4d4c targets 0x4dc8, is taken when s0(=a0) < a3(=0x9660180) (signed), and falls through when s0(=a0) >= a3(=0x9660180) (signed).
  The `bltz` branch at 0x4d60 targets 0x4de0, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `bne` branch at 0x4d70 targets 0x4cb0, is taken when a6(?) < a2(=0x2a300) (signed), and falls through when a6(?) >= a2(=0x2a300) (signed).
  The `bne` branch at 0x4d78 targets 0x4d84, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x4dc0 targets 0x4cb4 and is always taken.
  The `beq` branch at 0x4dd8 targets 0x4dac and is always taken.
  The `beq` branch at 0x4de0 targets 0x4d68 and is always taken.
  The return at 0x4cb8 has v0 = one of ?, ret(cmn_err_tag).
- `query_cyclecntr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4de8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4de8-0x4e0c (36 bytes).
  It occupies 36 bytes.
  The `sw` at 0x4e08 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The return at 0x4e04 has v0 = 0x900000000ff20000.
- `query_fasttimer` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4e0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4e0c-0x4e2c (32 bytes).
  It occupies 32 bytes.
  The return at 0x4e24 has v0 = ?.
- `query_cyclecntr_size` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4e2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4e2c-0x4e34 (8 bytes).
  It occupies 8 bytes.
  The return at 0x4e2c has v0 = 0x40.
- `tick_maint` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4e34 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4e34-0x4e98 (100 bytes).
  It occupies 100 bytes.
  The `lh` at 0x4e60 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `ld` at 0x4e74 loads 8 bytes from abs 0xffffffffaff20000.
  The `jal` at 0x4e88 calls __nanotime [0x5eb0] with a0=?, a1=[sym(.sbss)+136], a2=0x1, a3=?.
  The `beq` branch at 0x4e40 targets 0x4e60, is taken when at(=[sym(lbolt)]) == a2(=0x1), and falls through when at(=[sym(lbolt)]) != a2(=0x1).
  The `beq` branch at 0x4e50 targets 0x4e88, is taken when v0(=[sym(.sbss)+136]-1) == 0, and falls through when v0(=[sym(.sbss)+136]-1) != 0.
  The `bne` branch at 0x4e64 targets 0x4e4c, is taken when v1(=[-0x3c60]:2) != 0, and falls through when v1(=[-0x3c60]:2) == 0.
  The `beq` branch at 0x4e80 targets 0x4e48 and is always taken.
  The `beq` branch at 0x4e90 targets 0x4e58 and is always taken.
  The return at 0x4e58 has v0 = one of [sym(.sbss)+136]-1, ret(__nanotime).
- `fastick_maint` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4e98 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4e98-0x4f28 (144 bytes).
  It occupies 144 bytes.
  2 such `sb` accesses store 1 byte to abs 0xffffffffffffc052, including `sb` at 0x4e9c, `sb` at 0x4ee8.
  The `lh` at 0x4ea4 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x4ec4 loads 4 bytes from abs 0xffffffffffffc540.
  The `ld` at 0x4ed0 loads 8 bytes from a0 (arg0 at entry) +0xf8.
  The `ld` at 0x4ed4 loads 8 bytes from a0 (arg0 at entry) +0xf0.
  The `ld` at 0x4ed8 loads 8 bytes from a0 (arg0 at entry) +0xe0.
  The `ld` at 0x4ee0 loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `jal` at 0x4ebc calls fast_user_prof with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x4edc calls prfintr with a0=[a0+288]:8, a1=[a0+224]:8, a2=[a0+240]:8, a3=[a0+248]:8.
  The `jalr` at 0x4f04 calls (unknown callee) with a0=[sym(midi_timercallback_ptr)]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4f18 calls (unknown callee) with a0=[sym(ieee1394_timercallback_ptr)]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4eb4 targets 0x4ef8, is taken when at(=[-0x3c60]:2) == v0(=[sym(master_procid)]:2), and falls through when at(=[-0x3c60]:2) != v0(=[sym(master_procid)]:2).
  The `beq` branch at 0x4ec8 targets 0x4ee8, is taken when a0(=[-0x3ac0]) == 0, and falls through when a0(=[-0x3ac0]) != 0.
  The `beq` branch at 0x4efc targets 0x4f0c, is taken when a0(=[sym(midi_timercallback_ptr)]:8) == 0, and falls through when a0(=[sym(midi_timercallback_ptr)]:8) != 0.
  The `beq` branch at 0x4f10 targets 0x4ebc, is taken when a0(=[sym(ieee1394_timercallback_ptr)]:8) == 0, and falls through when a0(=[sym(ieee1394_timercallback_ptr)]:8) != 0.
  The `beq` branch at 0x4f20 targets 0x4ebc and is always taken.
  The return at 0x4ef0 has v0 = one of ret(fast_user_prof), ret(prfintr).
- `chktimedrift` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4f28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4f28-0x4f90 (104 bytes).
  It occupies 104 bytes.
  The `jal` at 0x4f30 calls rtodc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4f80 calls doadjtime with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4f44 targets 0x4f60, is taken when a3(?) >= 0x3 (signed), and falls through when a3(?) < 0x3 (signed).
  The `bne` branch at 0x4f4c targets 0x4f64, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4f88 targets 0x4f58 and is always taken.
  The return at 0x4f58 has v0 = one of ret(rtodc), ret(doadjtime).
- `onesec_maint` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4f90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4f90-0x5054 (196 bytes).
  It occupies 196 bytes.
  The `jal` at 0x4f98 calls tlb_onesec_actions with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x502c calls wtodc with a0=?, a1=[sym(.sdata)+108], a2=[sym(lastadjtod)], a3=[sym(lbolt)], a6=[sym(lbolt)]+720000.
  The `jal` at 0x5044 calls chktimedrift with a0=?, a1=[sym(lastadjtime)], a2=[sym(lastadjtod)], a3=[sym(lbolt)], a4=[sym(adjtime_delta)]:8.
  The `beq` branch at 0x4fc8 targets 0x4ff0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x4fdc targets 0x503c, is taken when a1(=[sym(.sdata)+108]) == 0, and falls through when a1(=[sym(.sdata)+108]) != 0.
  The `beq` branch at 0x4ff0 targets 0x4fd4, is taken when a1(=[sym(.sdata)+100]) == 0, and falls through when a1(=[sym(.sdata)+100]) != 0.
  The `beq` branch at 0x5004 targets 0x5018, is taken when a1(=[sym(lastadjtime)]) >= a3(=[sym(lbolt)]) (signed), and falls through when a1(=[sym(lastadjtime)]) < a3(=[sym(lbolt)]) (signed).
  The `beq` branch at 0x5010 targets 0x5044, is taken when a4(=[sym(adjtime_delta)]:8) == 0, and falls through when a4(=[sym(adjtime_delta)]:8) != 0.
  The `beq` branch at 0x5018 targets 0x4fd4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x5034 targets 0x4fd4 and is always taken.
  The `beq` branch at 0x503c targets 0x4fe8 and is always taken.
  The `beq` branch at 0x504c targets 0x4fd4 and is always taken.
  The return at 0x4fe8 has v0 = ?.
- `tick_actions` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5054 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5054-0x5088 (52 bytes).
  It occupies 52 bytes.
  The `lbu` at 0x5054 loads 1 byte from abs 0xffffffffffffc6e0.
  The `jal` at 0x5064 calls ecc_log with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x506c calls tlb_tick_actions with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5074 calls flush_console with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x505c targets 0x506c, is taken when at(=[-0x3920]:1) == 0, and falls through when at(=[-0x3920]:1) != 0.
  The return at 0x5080 has v0 = ret(flush_console).
- `init_fasthz_variables` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5088 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5088-0x50b8 (48 bytes).
  It occupies 48 bytes.
  The return at 0x50b0 has v0 = [sym(fasthz)].
- `rtc_read` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x50b8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x50b8-0x50c4 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x50c0 loads 8 bytes from abs 0xffffffffaff20000.
  The return at 0x50bc has v0 = [0xffffffffaff20000]:8.
- `rtc_resolution` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x50c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x50c4-0x50cc (8 bytes).
  It occupies 8 bytes.
  The return at 0x50c4 has v0 = 0x50.
- `normalize_RTC_value` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x50cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x50cc-0x5124 (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x5114 calls init_fasthz_variables [0x5088] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x50e0 targets 0x5114, is taken when at(=[sym(fasthz)]) != v0(=[sym(.sbss)+156]), and falls through when at(=[sym(fasthz)]) == v0(=[sym(.sbss)+156]).
  The `beq` branch at 0x511c targets 0x50e8 and is always taken.
  The return at 0x510c has v0 = ?.
- `set_timer_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5124 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5124-0x5148 (36 bytes).
  It occupies 36 bytes.
  The `ld` at 0x5138 loads 8 bytes from abs 0xffffffffaff20000.
  The `jal` at 0x5134 calls _set_timer_intr [0x5148] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0, a4=[0xffffffffaff20000]:8.
  The return at 0x5140 has v0 = ret(_set_timer_intr).
- `_set_timer_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5148 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5148-0x5394 (588 bytes).
  It occupies 588 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffc048, including `lw` at 0x5180, `lw` at 0x529c.
  The `ld` at 0x518c loads 8 bytes from abs 0xffffffffffffc550.
  The `ld` at 0x51cc loads 8 bytes from abs 0xffffffffffffc558.
  3 such `sd` accesses store 8 bytes to abs 0xffffffffffffc558, including `sd` at 0x5210, `sd` at 0x5250, `sd` at 0x52f0.
  The `lh` at 0x5270 loads 2 bytes from abs 0xffffffffffffc3a0.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc548, including `ld` at 0x52f4, `ld` at 0x532c, `ld` at 0x5330.
  3 such `sd` accesses store 8 bytes to abs 0xffffffffffffc550, including `sd` at 0x5334, `sd` at 0x5350, `sd` at 0x536c.
  The `jal` at 0x5204 calls resetcounter_val with a0=?, a1=?, a2=0x7d, a3=[sym(cpufreq_cycles)], a7=0x78.
  The `jal` at 0x5248 calls resetcounter_val with a0=?, a1=?, a2=?, a3=[sym(cpufreq_cycles)], a7=0x78.
  The `jal` at 0x527c calls timepoke with a0=(a0 << 0x30), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[-0x3c60]:2.
  The `jal` at 0x5294 calls cpuaction with a0=?, a1=sym(timepoke), a2=0x1, a3=a3 at entry (arg3), a5=[-0x3c60]:2.
  The `jal` at 0x52e4 calls trimcompare with a0=?, a1=?, a2=0x7d, a3=[sym(cpufreq_cycles)], a7=0x78.
  The `beq` branch at 0x516c targets 0x5270, is taken when a1 == 0, and falls through when a1 != 0.
  The `blez` branch at 0x5178 targets 0x5270, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `beq` branch at 0x5198 targets 0x52f4, is taken when a0(=[-0x3ab0]:8) == 0, and falls through when a0(=[-0x3ab0]:8) != 0.
  The `beq` branch at 0x51a0 targets 0x5330, is taken when t0(=0x1) == a0(=[-0x3ab0]:8), and falls through when t0(=0x1) != a0(=[-0x3ab0]:8).
  The `bne` branch at 0x51a8 targets 0x51c4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x51c4 targets 0x5214, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x51d4 targets 0x52bc, is taken when v0(=[-0x3aa8]:8) >= s0(?) (unsigned), and falls through when v0(=[-0x3aa8]:8) < s0(?) (unsigned).
  The `beq` branch at 0x51dc targets 0x5254, is taken when ra(=a3) == 0, and falls through when ra(=a3) != 0.
  The `beq` branch at 0x520c targets 0x5254 and is always taken.
  The `bne` branch at 0x5274 targets 0x528c, is taken when a5(=[-0x3c60]:2) != v0(=a0), and falls through when a5(=[-0x3c60]:2) == v0(=a0).
  The `beq` branch at 0x5284 targets 0x529c and is always taken.
  The `beq` branch at 0x52ac targets 0x5328, is taken when (a1(=[-0x3fb8]) & 0x40) == 0, and falls through when (a1(=[-0x3fb8]) & 0x40) != 0.
  The `beq` branch at 0x52b4 targets 0x525c and is always taken.
  The `beq` branch at 0x52bc targets 0x5254, is taken when s0(?) == v0(=[-0x3aa8]:8), and falls through when s0(?) != v0(=[-0x3aa8]:8).
  The `beq` branch at 0x52ec targets 0x5254 and is always taken.
  The `beq` branch at 0x52fc targets 0x530c, is taken when a0(=[-0x3ab8]:8) >= v0(?) (unsigned), and falls through when a0(=[-0x3ab8]:8) < v0(?) (unsigned).
  The `beq` branch at 0x5304 targets 0x538c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x5320 targets 0x51c4 and is always taken.
  The `beq` branch at 0x5328 targets 0x518c and is always taken.
  The `beq` branch at 0x5344 targets 0x51a8, is taken when at(=([sym(clk_fclock_fast_freq)] + a4)) >= a0(=[-0x3ab8]:8) (unsigned), and falls through when at(=([sym(clk_fclock_fast_freq)] + a4)) < a0(=[-0x3ab8]:8) (unsigned).
  The `beq` branch at 0x5360 targets 0x5384, is taken when v1(=([sym(clk_fclock_fast_freq)] + a4)) >= a0(?) (unsigned), and falls through when v1(=([sym(clk_fclock_fast_freq)] + a4)) < a0(?) (unsigned).
  The `bne` branch at 0x537c targets 0x534c, is taken when a2(=([sym(clk_fclock_fast_freq)] + a4)) < a0(?) (unsigned), and falls through when a2(=([sym(clk_fclock_fast_freq)] + a4)) >= a0(?) (unsigned).
  The `beq` branch at 0x5384 targets 0x51a8 and is always taken.
  The `beq` branch at 0x538c targets 0x51c4 and is always taken.
  The return at 0x5268 has v0 = one of 0x0, 0x1.
- `timeout_get_queuehead` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5394 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5394-0x55d8 (580 bytes).
  It occupies 580 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x5394, `lw` at 0x54b8.
  The `ld` at 0x53a8 loads 8 bytes from table(sym(pdaindr)) +0x8.
  2 such `lw` accesses load 4 bytes from [table(sym(pdaindr))+8]:8 +0x5a8, including `lw` at 0x53b0, `lw` at 0x54ac.
  4 such `sw` accesses store 4 bytes to [table(sym(pdaindr))+8]:8 +0x5a8, including `sw` at 0x5400, `sw` at 0x5438, `sw` at 0x5570.
  The `lw` at 0x5408 loads 4 bytes from [table(sym(pdaindr))+8]:8 +0x600.
  2 such `ld` accesses load 8 bytes from [table(sym(pdaindr))+8]:8 +0x5a0, including `ld` at 0x541c, `ld` at 0x543c.
  The `lw` at 0x5450 loads 4 bytes from [[table(sym(pdaindr))+8]:8+1440]:8 +0x10.
  The `lw` at 0x5468 loads 4 bytes from ?.
  The `ld` at 0x5484 loads 8 bytes from ?.
  2 such `sw` accesses store 4 bytes to [table(sym(pdaindr))+8]:8 +0x600, including `sw` at 0x54a4, `sw` at 0x54a8.
  The `ld` at 0x54bc loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `sw` at 0x54d4 stores 4 bytes to a1 (arg1 at entry) +0x10.
  4 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x0, including `sd` at 0x551c, `sd` at 0x555c, `sd` at 0x55cc.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff20000, including `ld` at 0x5534, `ld` at 0x55a4.
  The `jal` at 0x5530 calls normalize_RTC_value [0x50cc] with a0=[0xffffffffaff20000]:8, a1=0x4, a2=[[table(sym(pdaindr))+8]:8+1536], a3=0x3, a4=-0x64, a5=0x1, a7=0x1.
  The `jal` at 0x55a0 calls normalize_RTC_value [0x50cc] with a0=[0xffffffffaff20000]:8, a1=0x4, a2=[[table(sym(pdaindr))+8]:8+1536], a3=0x3, a4=-0x64, a5=0x1, a7=0x3.
  The `beq` branch at 0x53fc targets 0x557c, is taken when (a6(=0xffffff) & t9(?)) == 0, and falls through when (a6(=0xffffff) & t9(?)) != 0.
  The `bne` branch at 0x5410 targets 0x54b8, is taken when a2(=[[table(sym(pdaindr))+8]:8+1536]) != a5(?), and falls through when a2(=[[table(sym(pdaindr))+8]:8+1536]) == a5(?).
  The `beq` branch at 0x5418 targets 0x5440 and is always taken.
  The `beq` branch at 0x5434 targets 0x5560, is taken when (a6(=0xffffff) & t9(?)) == 0, and falls through when (a6(=0xffffff) & t9(?)) != 0.
  The `beq` branch at 0x5444 targets 0x54a8, is taken when a4(=[[table(sym(pdaindr))+8]:8+1440]:8) == 0, and falls through when a4(=[[table(sym(pdaindr))+8]:8+1440]:8) != 0.
  The `beq` branch at 0x544c targets 0x546c and is always taken.
  The `beq` branch at 0x5454 targets 0x5460, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x5460 targets 0x5498, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x5478 targets 0x5420, is taken when a5(?) == t3(?), and falls through when a5(?) != t3(?).
  The `beq` branch at 0x5480 targets 0x5454, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x5488 targets 0x5454, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x5490 targets 0x5460 and is always taken.
  The `beq` branch at 0x5498 targets 0x54a8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x54a0 targets 0x54ac and is always taken.
  The `blez` branch at 0x54d0 targets 0x5514, is taken when v0(=[a1]:8) <= 0 (signed), and falls through when v0(=[a1]:8) > 0 (signed).
  The `beq` branch at 0x54d8 targets 0x5528, is taken when a7(=0x1) == a0, and falls through when a7(=0x1) != a0.
  The `beq` branch at 0x54e0 targets 0x5528, is taken when a0 == a1(=0x4), and falls through when a0 != a1(=0x4).
  The `beq` branch at 0x54e8 targets 0x5598, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x54f0 targets 0x559c, is taken when a0 == a7(=0x3), and falls through when a0 != a7(=0x3).
  The `beq` branch at 0x5514 targets 0x55d0, is taken when v0(=[a1]:8) == a4(=-0x64), and falls through when v0(=[a1]:8) != a4(=-0x64).
  The `bne` branch at 0x5520 targets 0x54e0, is taken when a5(=0x1) != a0, and falls through when a5(=0x1) == a0.
  The `beq` branch at 0x5558 targets 0x54f8 and is always taken.
  The `beq` branch at 0x5574 targets 0x543c and is always taken.
  The `beq` branch at 0x5590 targets 0x5404 and is always taken.
  The `beq` branch at 0x55c8 targets 0x54f8 and is always taken.
  The `beq` branch at 0x55d0 targets 0x54f8 and is always taken.
  The return at 0x550c has v0 = [table(sym(pdaindr))+8]:8+1432.
- `chktimeout_tick` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x55d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x55d8-0x5758 (384 bytes).
  It occupies 384 bytes.
  The `ld` at 0x5600 loads 8 bytes from table(sym(pdaindr)) +0x8.
  The `lw` at 0x5608 loads 4 bytes from [table(sym(pdaindr))+8]:8 +0x630.
  The `ld` at 0x5674 loads 8 bytes from ?.
  The `lw` at 0x5678 loads 4 bytes from ?.
  The `ld` at 0x56a8 loads 8 bytes from abs 0xffffffffaff20000.
  The `jal` at 0x5638 calls do_chktimeout_tick with a0=[table(sym(pdaindr))+8]:8+1416, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x565c calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5694 calls do_chktimeout_tick with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x5630 targets 0x5650, is taken when (at(=[[table(sym(pdaindr))+8]:8+1584]) & 0x1) == 0, and falls through when (at(=[[table(sym(pdaindr))+8]:8+1584]) & 0x1) != 0.
  The `bne` branch at 0x5640 targets 0x56a4, is taken when v0(=ret(do_chktimeout_tick)) != 0, and falls through when v0(=ret(do_chktimeout_tick)) == 0.
  The `beq` branch at 0x5648 targets 0x5654 and is always taken.
  The `blez` branch at 0x5654 targets 0x570c, is taken when a0(=[sym(maxcpus)]) <= 0 (signed), and falls through when a0(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x5664 targets 0x5734, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `beq` branch at 0x5680 targets 0x5734, is taken when (v1(?) & 0x1) == 0, and falls through when (v1(?) & 0x1) != 0.
  The `beq` branch at 0x569c targets 0x5734, is taken when v0(=ret(do_chktimeout_tick)) == 0, and falls through when v0(=ret(do_chktimeout_tick)) != 0.
  The `beq` branch at 0x56b8 targets 0x56e8, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0x56c0 targets 0x56e8, is taken when s2(=a0) == v0(=0x3), and falls through when s2(=a0) != v0(=0x3).
  The `beq` branch at 0x56c8 targets 0x56d8, is taken when s2(=a0) == v0(=0x1), and falls through when s2(=a0) != v0(=0x1).
  The `bne` branch at 0x56d0 targets 0x5708, is taken when s2(=a0) != a0(=0x4), and falls through when s2(=a0) == a0(=0x4).
  The `beq` branch at 0x56e0 targets 0x5704 and is always taken.
  The `bne` branch at 0x5748 targets 0x565c, is taken when s1(?) < a5(=[sym(maxcpus)]) (signed), and falls through when s1(?) >= a5(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x5750 targets 0x5710 and is always taken.
  The return at 0x572c has v0 = ?.
- `fast_timeout` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5758 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5758-0x57d0 (120 bytes).
  It occupies 120 bytes.
  The `lh` at 0x5790 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `jal` at 0x577c calls callout_get_pri with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x579c calls dotimeout with a0=[-0x3c60]:2, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=ret(callout_get_pri), a5=0x1, a6=sp-40.
  The `jal` at 0x57c0 calls cmn_err with a0=0x0, a1=sym(.rodata)+1104, a2=?, a3=?.
  The `beq` branch at 0x57a4 targets 0x57b8, is taken when v0(=ret(dotimeout)) == 0, and falls through when v0(=ret(dotimeout)) != 0.
  The `beq` branch at 0x57c8 targets 0x57ac and is always taken.
  The return at 0x57b0 has v0 = one of ret(dotimeout), ?.
- `fast_timeout_nothrd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x57d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x57d0-0x5844 (116 bytes).
  It occupies 116 bytes.
  The `lh` at 0x5808 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `jal` at 0x5810 calls dotimeout with a0=[-0x3c60]:2, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a5=0x4, a6=sp-40.
  The `jal` at 0x5834 calls cmn_err with a0=0x0, a1=sym(.rodata)+1104, a2=?, a3=?.
  The `beq` branch at 0x5818 targets 0x582c, is taken when v0(=ret(dotimeout)) == 0, and falls through when v0(=ret(dotimeout)) != 0.
  The `beq` branch at 0x583c targets 0x5820 and is always taken.
  The return at 0x5824 has v0 = one of ret(dotimeout), ?.
- `callout_time_to_hz` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5844 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5844-0x5874 (48 bytes).
  It occupies 48 bytes.
  The `ld` at 0x5848 loads 8 bytes from abs 0xffffffffaff20000.
  The return at 0x586c has v0 = ?.
- `timein_body` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5874 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5874-0x59e0 (364 bytes).
  It occupies 364 bytes.
  The `ld` at 0x58c8 loads 8 bytes from [a0+24]:8 +0x8.
  The `sd` at 0x58cc stores 8 bytes to a0 (arg0 at entry) +0x18.
  The `lh` at 0x58d0 loads 2 bytes from [a0+24]:8 +0x46.
  The `lw` at 0x58e0 loads 4 bytes from [a0+24]:8 +0x10.
  The `sd` at 0x58e4 stores 8 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x58ec stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `ld` at 0x5920 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x592c loads 8 bytes from [a0+24]:8 +0x0.
  The `ld` at 0x5930 loads 8 bytes from abs 0xffffffffaff20000.
  The `lw` at 0x5940 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `jal` at 0x58f0 calls mutex_spinunlock with a0=a0+8, a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The `jal` at 0x58f8 calls timein_entry with a0=[a0+24]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x5904 calls test_and_set_int64 with a0=a0+88, a1=0x0, a2=?, a3=?.
  The `jal` at 0x5918 calls mutex_spinlock_spl with a0=a0+8, a1=sym(splprof), a2=?, a3=?.
  The `jal` at 0x5948 calls set_timer_intr with a0=?, a1=[[a0+24]:8]:8, a2=0x0, a3=?.
  The `jal` at 0x5958 calls mutex_spinunlock with a0=a0+8, a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The `jal` at 0x5994 calls timein_entry_ithrd with a0=a0 at entry (arg0), a1=[a0+24]:8, a2=ret(mutex_spinlock_spl), a3=?.
  The `jal` at 0x59a8 calls mutex_spinunlock with a0=a0+8, a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The `jal` at 0x59b8 calls mutex_spinlock_spl with a0=a0+8, a1=sym(splprof), a2=?, a3=?.
  The `jal` at 0x59c4 calls sv_broadcast with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x59d0 calls mutex_spinunlock with a0=a0+8, a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The `beq` branch at 0x58c0 targets 0x5914 and is always taken.
  The `beq` branch at 0x58d8 targets 0x5990, is taken when (v0(=[[a0+24]:8+70]:2) & 0x2) == 0, and falls through when (v0(=[[a0+24]:8+70]:2) & 0x2) != 0.
  The `beq` branch at 0x590c targets 0x59b8, is taken when v0(=ret(test_and_set_int64)) == s7(=0x2), and falls through when v0(=ret(test_and_set_int64)) != s7(=0x2).
  The `beq` branch at 0x5924 targets 0x59a4, is taken when s0(=[a0+24]:8) == 0, and falls through when s0(=[a0+24]:8) != 0.
  The `beq` branch at 0x5938 targets 0x58c8, is taken when a2(=[0xffffffffaff20000]:8) >= a1(=[[a0+24]:8]:8) (unsigned), and falls through when a2(=[0xffffffffaff20000]:8) < a1(=[[a0+24]:8]:8) (unsigned).
  The `beq` branch at 0x5950 targets 0x58c8, is taken when v0(=ret(set_timer_intr)) == 0, and falls through when v0(=ret(set_timer_intr)) != 0.
  The `beq` branch at 0x599c targets 0x5918 and is always taken.
  The `beq` branch at 0x59b0 targets 0x5960 and is always taken.
  The `beq` branch at 0x59d8 targets 0x5918 and is always taken.
  The return at 0x5988 has v0 = ret(mutex_spinunlock).
- `timein` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x59e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x59e0-0x5a90 (176 bytes).
  It occupies 176 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc280, including `ld` at 0x59e0, `ld` at 0x5a28.
  The `lh` at 0x5a0c loads 2 bytes from abs 0xffffffffffffc3a0.
  The `ld` at 0x5a1c loads 8 bytes from (sym(pdaindr) + ([-0x3c60]:2 << 0x4)) +0x8.
  The `jal` at 0x5a04 calls siroff with a0=0x100, a1=?, a2=?, a3=?.
  The `jal` at 0x5a20 calls timein_body with a0=[(sym(pdaindr) + ([-0x3c60]:2 << 0x4))+8]:8+1416, a1=([-0x3c60]:2 << 0x4), a2=?, a3=?.
  The `jal` at 0x5a40 calls init_fasthz_variables [0x5088] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5a60 calls log_tstamp_event with a0=0x6d, a1=0x0, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x5a80 calls log_tstamp_event with a0=0x65, a1=0x6d, a2=0x0, a3=0x0, a4=0x0.
  The `bne` branch at 0x59ec targets 0x5a50, is taken when (at(=[-0x3d80]:8) & 0x20) != 0, and falls through when (at(=[-0x3d80]:8) & 0x20) == 0.
  The `bne` branch at 0x59fc targets 0x5a40, is taken when v0(=[sym(fasthz)]) != v1(=[sym(.sbss)+156]), and falls through when v0(=[sym(fasthz)]) == v1(=[sym(.sbss)+156]).
  The `bne` branch at 0x5a30 targets 0x5a70, is taken when (a2(=[-0x3d80]:8) & 0x20) != 0, and falls through when (a2(=[-0x3d80]:8) & 0x20) == 0.
  The `beq` branch at 0x5a48 targets 0x5a04 and is always taken.
  The `beq` branch at 0x5a68 targets 0x59f8 and is always taken.
  The `beq` branch at 0x5a88 targets 0x5a38 and is always taken.
  The return at 0x5a38 has v0 = one of ret(timein_body), ret(log_tstamp_event).
- `migrate_timeouts` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5a90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5a90-0x5c38 (424 bytes).
  It occupies 424 bytes.
  The `ld` at 0x5ad4 loads 8 bytes from (sym(pdaindr) + (a0 << 0x4)) +0x8.
  The `sw` at 0x5b0c stores 4 bytes to ret(add_migrated_timeout) +0x0.
  The `ld` at 0x5b38 loads 8 bytes from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x5a0.
  The `ld` at 0x5b4c loads 8 bytes from [[(sym(pdaindr) + (a0 << 0x4))+8]:8+1440]:8 +0x8.
  The `sd` at 0x5b54 stores 8 bytes to [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x5a0.
  The `ld` at 0x5b60 loads 8 bytes from ?.
  The `sd` at 0x5b70 stores 8 bytes to ?.
  The `ld` at 0x5b88 loads 8 bytes from abs 0xffffffffaff20000.
  The `jal` at 0x5b00 calls clock_prtimeout_nothrd with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x5b10 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x5b18 calls allocate_migrate_timeout with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5b20 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5b30 calls mutex_spinlock_spl with a0=[(sym(pdaindr) + (a0 << 0x4))+8]:8+1424, a1=sym(splprof), a2=?, a3=?.
  The `jal` at 0x5b78 calls mutex_spinunlock with a0=[(sym(pdaindr) + (a0 << 0x4))+8]:8+1424, a1=ret(mutex_spinlock_spl), a2=?, a3=?, a5=sp-160.
  The `jal` at 0x5b80 calls callout_free with a0=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1440]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x5ba0 calls add_migrated_timeout with a0=?, a1=?, a2=ret(allocate_migrate_timeout), a3=?.
  The `jal` at 0x5bdc calls clock_prtimeout with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x5bf0 calls mutex_spinunlock with a0=[(sym(pdaindr) + (a0 << 0x4))+8]:8+1424, a1=ret(mutex_spinlock_spl), a2=?, a3=?, a4=0x0, a5=sp-160.
  The `jal` at 0x5bf8 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x5c00 calls free_migrate_timeout with a0=ret(allocate_migrate_timeout), a1=?, a2=?, a3=?.
  The `beq` branch at 0x5ac8 targets 0x5c08, is taken when a0 == a1, and falls through when a0 != a1.
  The `beq` branch at 0x5ae8 targets 0x5b18 and is always taken.
  The `beq` branch at 0x5b44 targets 0x5bec, is taken when s0(=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1440]:8) == 0, and falls through when s0(=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1440]:8) != 0.
  The `bgtz` branch at 0x5b6c targets 0x5b58, is taken when a3(?) > 0 (signed), and falls through when a3(?) <= 0 (signed).
  The `bne` branch at 0x5bc4 targets 0x5af0, is taken when (at(?) & 0x2) != 0, and falls through when (at(?) & 0x2) == 0.
  The `beq` branch at 0x5be4 targets 0x5b0c and is always taken.
  The return at 0x5c30 has v0 = one of ?, ret(free_migrate_timeout).
- `settimetrim` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5c38 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5c38-0x5cb4 (124 bytes).
  It occupies 124 bytes.
  The `jal` at 0x5c48 calls cap_able with a0=0x8000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x5c8c calls mutex_spinlock_spl with a0=sym(timelock), a1=sym(splprof), a2=0x2d0000, a3=?.
  The `jal` at 0x5c9c calls mutex_spinunlock with a0=sym(timelock), a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The `beq` branch at 0x5c50 targets 0x5cac, is taken when v0(=ret(cap_able)) == 0, and falls through when v0(=ret(cap_able)) != 0.
  The `bne` branch at 0x5c64 targets 0x5c7c, is taken when s0(=a0) < at(=0xffffffffffd23940) (signed), and falls through when s0(=a0) >= at(=0xffffffffffd23940) (signed).
  The `beq` branch at 0x5c74 targets 0x5c8c, is taken when v1(=0x2dc6c0) >= s0(=a0) (signed), and falls through when v1(=0x2dc6c0) < s0(=a0) (signed).
  The `beq` branch at 0x5ca4 targets 0x5c7c and is always taken.
  The `beq` branch at 0x5cac targets 0x5c7c and is always taken.
  The return at 0x5c84 has v0 = one of 0x0, 0x1, 0x16.
- `gettimetrim` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5cb4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5cb4-0x5cbc (8 bytes).
  It occupies 8 bytes.
  The return at 0x5cb4 has v0 = [sym(timetrim)].
- `doadjtime` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5cbc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5cbc-0x5eb0 (500 bytes).
  It occupies 500 bytes.
  The `jal` at 0x5d04 calls splprof with a0=?, a1=0xf0000, a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x5d0c calls __nanotime [0x5eb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5d1c calls nested_spinlock with a0=sym(timelock), a1=?, a2=?, a3=?.
  The `jal` at 0x5dc4 calls mutex_spinunlock with a0=sym(timelock), a1=?, a2=[sym(.sbss)+100]+1, a3=?.
  The `jal` at 0x5e24 calls splprof with a0=a0 at entry (arg0), a1=0xf0000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x5e2c calls __nanotime [0x5eb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5e38 calls nested_spinlock with a0=sym(timelock), a1=?, a2=?, a3=?.
  The `jal` at 0x5e98 calls mutex_spinunlock with a0=sym(timelock), a1=ret(splprof), a2=?, a3=?, a4=0x3e8.
  The `beq` branch at 0x5cd8 targets 0x5e24, is taken when a0 == 0, and falls through when a0 != 0.
  The `bltz` branch at 0x5ce4 targets 0x5e14, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x5cf4 targets 0x5dec, is taken when s0(?) >= 0x3e8 (signed), and falls through when s0(?) < 0x3e8 (signed).
  The `bne` branch at 0x5cfc targets 0x5e0c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `blez` branch at 0x5d60 targets 0x5da4, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bltz` branch at 0x5da4 targets 0x5e1c, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `beq` branch at 0x5df8 targets 0x5e04, is taken when a2(=0xf4240) >= s0(?) (signed), and falls through when a2(=0xf4240) < s0(?) (signed).
  The `beq` branch at 0x5e04 targets 0x5d04, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x5e0c targets 0x5d04 and is always taken.
  The `beq` branch at 0x5e14 targets 0x5cec and is always taken.
  The `beq` branch at 0x5e1c targets 0x5db0 and is always taken.
  The `blez` branch at 0x5e50 targets 0x5ea8, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0x5ea0 targets 0x5dd0 and is always taken.
  The `beq` branch at 0x5ea8 targets 0x5e94 and is always taken.
  The return at 0x5de4 has v0 = ?.
- `__nanotime` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5eb0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5eb0-0x60d4 (548 bytes).
  It occupies 548 bytes.
  The `ld` at 0x5ed8 loads 8 bytes from abs 0xffffffffaff20000.
  3 such `ld` accesses load 8 bytes from sym(pdaindr) +0x28, including `ld` at 0x5f8c, `ld` at 0x5fd4, `ld` at 0x6060.
  2 such `sd` accesses store 8 bytes to sym(pdaindr) +0x28, including `sd` at 0x6024, `sd` at 0x60b0.
  2 such `lw` accesses load 4 bytes from sym(pdaindr) +0x20, including `lw` at 0x6028, `lw` at 0x6034.
  2 such `sw` accesses store 4 bytes to sym(pdaindr) +0x20, including `sw` at 0x6030, `sw` at 0x60ac.
  The `jal` at 0x5ebc calls mutex_spinlock_spl with a0=sym(timelock), a1=sym(splprof), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x604c calls mutex_spinunlock with a0=sym(timelock), a1=ret(mutex_spinlock_spl), a2=?, a3=?, a7=[0xffffffffaff20000]:8.
  The `jal` at 0x60c4 calls mutex_spinunlock with a0=sym(timelock), a1=ret(mutex_spinlock_spl), a2=?, a3=?, a7=[0xffffffffaff20000]:8.
  The `beq` branch at 0x5ef0 targets 0x60a4, is taken when at(=[sym(.sbss)+104]:8) == 0, and falls through when at(=[sym(.sbss)+104]:8) != 0.
  The `beq` branch at 0x5f0c targets 0x5f3c, is taken when a7(=[0xffffffffaff20000]:8) >= a5(=([sym(adjtime_delta)]:8 + [sym(adjtime_RTC)]:8)) (unsigned), and falls through when a7(=[0xffffffffaff20000]:8) < a5(=([sym(adjtime_delta)]:8 + [sym(adjtime_RTC)]:8)) (unsigned).
  The `beq` branch at 0x5f34 targets 0x5f40 and is always taken.
  The `beq` branch at 0x5f44 targets 0x5f7c, is taken when v1(=[sym(adjtime_nanos)]:8) == 0, and falls through when v1(=[sym(adjtime_nanos)]:8) != 0.
  The `bltz` branch at 0x5f5c targets 0x608c, is taken when t0(?) < 0 (signed), and falls through when t0(?) >= 0 (signed).
  The `blez` branch at 0x5f64 targets 0x6094, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `bne` branch at 0x5fcc targets 0x6060, is taken when t9(?) < a6(=0x3b9aca00) (signed), and falls through when t9(?) >= a6(=0x3b9aca00) (signed).
  The `bne` branch at 0x6004 targets 0x601c, is taken when a4(=table(0xffffffffc4653600)) < a6(=0x3b9aca00) (signed), and falls through when a4(=table(0xffffffffc4653600)) >= a6(=0x3b9aca00) (signed).
  The `beq` branch at 0x6014 targets 0x5ff8, is taken when a4(=table(0xffffffff88ca6c00)) >= a6(=0x3b9aca00) (signed), and falls through when a4(=table(0xffffffff88ca6c00)) < a6(=0x3b9aca00) (signed).
  The `beq` branch at 0x6020 targets 0x603c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x6084 targets 0x601c and is always taken.
  The `bltz` branch at 0x608c targets 0x5f6c, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `beq` branch at 0x609c targets 0x5f70 and is always taken.
  The `beq` branch at 0x60cc targets 0x6058 and is always taken.
  The return at 0x6058 has v0 = ret(mutex_spinunlock).
- `nanotime_syscall` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x60d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x60d4-0x6244 (368 bytes).
  It occupies 368 bytes.
  The `lw` at 0x6100 loads 4 bytes from sym(pdaindr) +0x20.
  The `ld` at 0x6104 loads 8 bytes from sym(pdaindr) +0x28.
  The `ld` at 0x6108 loads 8 bytes from abs 0xffffffffaff20000.
  The `sd` at 0x61e8 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x61f0 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0x620c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0x60e0 calls splprof with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6204 calls mutex_spinlock_spl with a0=sym(timelock), a1=sym(splprof), a2=?, a3=?, a7=0x3b9aca00.
  The `jal` at 0x6224 calls mutex_spinunlock with a0=sym(timelock), a1=ret(mutex_spinlock_spl), a2=?, a3=?, a4=[a0].
  The `jal` at 0x622c calls splx with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x6120 targets 0x60f4, is taken when t8(=[sym(.sbss)+100]) != t9(=[sym(.sbss)+96]), and falls through when t8(=[sym(.sbss)+100]) == t9(=[sym(.sbss)+96]).
  The `beq` branch at 0x6144 targets 0x6170, is taken when a4(=[0xffffffffaff20000]:8) >= at(=([sym(adjtime_delta)]:8 + [sym(adjtime_RTC)]:8)) (unsigned), and falls through when a4(=[0xffffffffaff20000]:8) < at(=([sym(adjtime_delta)]:8 + [sym(adjtime_RTC)]:8)) (unsigned).
  The `beq` branch at 0x614c targets 0x6170, is taken when a5(=[sym(adjtime_delta)]:8) == 0, and falls through when a5(=[sym(adjtime_delta)]:8) != 0.
  The `bne` branch at 0x61b4 targets 0x61e8, is taken when a4(?) < a7(=0x3b9aca00) (signed), and falls through when a4(?) >= a7(=0x3b9aca00) (signed).
  The `bne` branch at 0x61d0 targets 0x61e8, is taken when a4(=table(0xffffffffc4653600)) < a7(=0x3b9aca00) (signed), and falls through when a4(=table(0xffffffffc4653600)) >= a7(=0x3b9aca00) (signed).
  The `beq` branch at 0x61e0 targets 0x61c4, is taken when a4(=table(0xffffffff88ca6c00)) >= a7(=0x3b9aca00) (signed), and falls through when a4(=table(0xffffffff88ca6c00)) < a7(=0x3b9aca00) (signed).
  The `beq` branch at 0x61fc targets 0x622c, is taken when t3(=[sym(time)]) >= t8(?) (signed), and falls through when t3(=[sym(time)]) < t8(?) (signed).
  The `beq` branch at 0x6218 targets 0x6224, is taken when t9(=[sym(time)]) >= a4(=[a0]) (signed), and falls through when t9(=[sym(time)]) < a4(=[a0]) (signed).
  The return at 0x623c has v0 = ret(splx).
- `nanotime` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6244 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6244-0x6328 (228 bytes).
  It occupies 228 bytes.
  The `lw` at 0x6260 loads 4 bytes from sym(pdaindr) +0x20.
  The `ld` at 0x6264 loads 8 bytes from sym(pdaindr) +0x28.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffaff20000, including `ld` at 0x6278, `ld` at 0x62ac, `ld` at 0x6300.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x8, including `sd` at 0x62f0, `sd` at 0x6324.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0x62f4, `sw` at 0x631c.
  The `beq` branch at 0x624c targets 0x631c, is taken when at(=[sym(.sbss)+104]:8) == 0, and falls through when at(=[sym(.sbss)+104]:8) != 0.
  The `bne` branch at 0x6270 targets 0x6254, is taken when a6(=[sym(.sbss)+100]) != t0(=[sym(.sbss)+96]), and falls through when a6(=[sym(.sbss)+100]) == t0(=[sym(.sbss)+96]).
  The `bne` branch at 0x62a4 targets 0x6300, is taken when t1(?) < a6(=0x3b9aca00) (signed), and falls through when t1(?) >= a6(=0x3b9aca00) (signed).
  The `bne` branch at 0x62d8 targets 0x62f0, is taken when a3(=table(0xffffffffc4653600)) < a6(=0x3b9aca00) (signed), and falls through when a3(=table(0xffffffffc4653600)) >= a6(=0x3b9aca00) (signed).
  The `beq` branch at 0x62e8 targets 0x62cc, is taken when a3(=table(0xffffffff88ca6c00)) >= a6(=0x3b9aca00) (signed), and falls through when a3(=table(0xffffffff88ca6c00)) < a6(=0x3b9aca00) (signed).
  The `beq` branch at 0x6314 targets 0x62f0 and is always taken.
  The return at 0x62f8 has v0 = ?.
  The return at 0x6320 has v0 = ?.
- `irix5_microtime` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6328 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6328-0x636c (68 bytes).
  It occupies 68 bytes.
  The `sw` at 0x6344 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0x635c stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `jal` at 0x6338 calls nanotime_syscall with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x6364 has v0 = ?.
- `microtime` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x636c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x636c-0x63b0 (68 bytes).
  It occupies 68 bytes.
  The `sw` at 0x6388 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sd` at 0x63a0 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x637c calls nanotime_syscall with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x63a8 has v0 = ?.
- `local_settime` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x63b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x63b0-0x6488 (216 bytes).
  It occupies 216 bytes.
  The `ld` at 0x642c loads 8 bytes from abs 0xffffffffaff20000.
  The `sw` at 0x6444 stores 4 bytes to sym(pdaindr) +0x20.
  The `sd` at 0x6450 stores 8 bytes to sym(pdaindr) +0x28.
  The `jal` at 0x63cc calls mutex_spinlock_spl with a0=sym(timelock), a1=sym(splprof), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x646c calls mutex_spinunlock with a0=sym(timelock), a1=ret(mutex_spinlock_spl), a2=?, a3=0xfffffffffff0bdc0, a4=0xf4240, a7=[sym(.sbss)+100].
  The `bne` branch at 0x63e8 targets 0x6414, is taken when s0(=a1) < a4(=0xf4240) (signed), and falls through when s0(=a1) >= a4(=0xf4240) (signed).
  The `bne` branch at 0x63fc targets 0x6414, is taken when s0(?) < a4(=0xf4240) (signed), and falls through when s0(?) >= a4(=0xf4240) (signed).
  The `beq` branch at 0x640c targets 0x63f0, is taken when s0(?) >= a4(=0xf4240) (signed), and falls through when s0(?) < a4(=0xf4240) (signed).
  The return at 0x6480 has v0 = ret(mutex_spinunlock).
- `settime` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6488 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6488-0x64cc (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x64a8 loads 8 bytes from ret(vhost_local) +0x0.
  The `ld` at 0x64ac loads 8 bytes from [ret(vhost_local)]:8 +0x10.
  The `ld` at 0x64b0 loads 8 bytes from [[ret(vhost_local)]:8+16]:8 +0x78.
  The `jal` at 0x6490 calls local_settime with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6498 calls vhost_local with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x64a0 calls cellid with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x64b4 calls (unknown callee) with a0=[ret(vhost_local)]:8, a1=ret(cellid), a2=?, a3=?.
  The return at 0x64c4 has v0 = ret(?).
- `enable_fastclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x64e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x64e8-0x64f0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x64e8 has v0 = ?.
- `cache_preempt_limit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x64f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x64f0-0x64f8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x64f0 has v0 = ?.
- `get_realtime_ticks` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x64f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x64f8-0x6520 (40 bytes).
  It occupies 40 bytes.
  The `ld` at 0x6500 loads 8 bytes from abs 0xffffffffaff20000.
  The return at 0x6518 has v0 = ?.
- `tstoclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6520 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6520-0x656c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x6520 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x6530 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x6560 loads 8 bytes from abs 0xffffffffaff20000.
  The `beq` branch at 0x654c targets 0x655c, is taken when a1 == v1(=0x1), and falls through when a1 != v1(=0x1).
  The return at 0x6554 has v0 = ?.
  The return at 0x6564 has v0 = ?.
- `tvtoclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x656c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x656c-0x65cc (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x656c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `ld` at 0x657c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x65c0 loads 8 bytes from abs 0xffffffffaff20000.
  The `beq` branch at 0x65ac targets 0x65bc, is taken when a1 == v1(=0x1), and falls through when a1 != v1(=0x1).
  The return at 0x65b4 has v0 = ?.
  The return at 0x65c4 has v0 = ?.
- `timepoke` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x65cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x65cc-0x65e8 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x65d4 calls siron with a0=0x100, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x65e0 has v0 = ret(siron).
- `findcpufreq_cycles` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x65e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x65e8-0x661c (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x65e8 loads 4 bytes from abs 0xffffffffffffc6f4.
  The `sw` at 0x6618 stores 4 bytes to abs 0xffffffffffffc6f4.
  The `jal` at 0x6604 calls findcpufreq_hz with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[-0x390c], a3=a3 at entry (arg3).
  The `beq` branch at 0x65f0 targets 0x6604, is taken when a2(=[-0x390c]) == 0, and falls through when a2(=[-0x390c]) != 0.
  The `beq` branch at 0x6614 targets 0x65f8 and is always taken.
  The return at 0x65fc has v0 = one of [-0x390c], ?.
- `first_timein` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x661c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x661c-0x663c (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x661c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x6630 loads 8 bytes from [a0+24]:8 +0x0.
  The `bne` branch at 0x6620 targets 0x6630, is taken when a3(=[a0+24]:8) != 0, and falls through when a3(=[a0+24]:8) == 0.
  The return at 0x6628 has v0 = 0x7fffffffffffffff.
  The return at 0x6634 has v0 = [[a0+24]:8]:8.
- `atomicAddInt` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6640 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6640-0x6660 (32 bytes).
  It occupies 32 bytes.
  The `ll` at 0x6640 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6648 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x664c targets 0x6640, is taken when t1(=([a0] + a1)) == 0, and falls through when t1(=([a0] + a1)) != 0; its branch-likely delay slot `nop` at 0x6650 runs only when taken and is annulled on fall-through.
  The return at 0x6658 has v0 = ([a0] + a1).
- `atomicAddUint` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6640 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6640-0x6660 (32 bytes).
  It occupies 32 bytes.
  The `ll` at 0x6640 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6648 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x664c targets 0x6640, is taken when t1(=([a0] + a1)) == 0, and falls through when t1(=([a0] + a1)) != 0; its branch-likely delay slot `nop` at 0x6650 runs only when taken and is annulled on fall-through.
  The return at 0x6658 has v0 = ([a0] + a1).
- `atomicAddIntHot2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6660 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6660-0x6680 (32 bytes).
  It occupies 32 bytes.
  2 such `sb` accesses store 1 byte to a2 (arg2 at entry) +0x0, including `sb` at 0x6660, `sb` at 0x6674.
  The `ll` at 0x6664 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x666c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6670 targets 0x6664, is taken when t1(=([a0] + a1)) == 0, and falls through when t1(=([a0] + a1)) != 0; its branch-likely delay slot `sb zero,0(a2)` at 0x6674 runs only when taken and is annulled on fall-through.
  The return at 0x6678 has v0 = ([a0] + a1).
- `atomicAddUintHot2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6660 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6660-0x6680 (32 bytes).
  It occupies 32 bytes.
  2 such `sb` accesses store 1 byte to a2 (arg2 at entry) +0x0, including `sb` at 0x6660, `sb` at 0x6674.
  The `ll` at 0x6664 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x666c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6670 targets 0x6664, is taken when t1(=([a0] + a1)) == 0, and falls through when t1(=([a0] + a1)) != 0; its branch-likely delay slot `sb zero,0(a2)` at 0x6674 runs only when taken and is annulled on fall-through.
  The return at 0x6678 has v0 = ([a0] + a1).
- `atomicSetCpumask` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6680 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6680-0x66a0 (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0x6680 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ll` at 0x6684 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x668c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6690 targets 0x6684, is taken when t2(=([a0] | [a1])) == 0, and falls through when t2(=([a0] | [a1])) != 0; its branch-likely delay slot `nop` at 0x6694 runs only when taken and is annulled on fall-through.
  The return at 0x6698 has v0 = [a0].
- `atomicClearInt` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x66a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x66a0-0x66c0 (32 bytes).
  It occupies 32 bytes.
  The `ll` at 0x66a4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x66ac stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x66b0 targets 0x66a4, is taken when (v0(=[a0]) & a1(?)) == 0, and falls through when (v0(=[a0]) & a1(?)) != 0; its branch-likely delay slot `nop` at 0x66b4 runs only when taken and is annulled on fall-through.
  The return at 0x66b8 has v0 = [a0].
- `atomicClearUint` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x66a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x66a0-0x66c0 (32 bytes).
  It occupies 32 bytes.
  The `ll` at 0x66a4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x66ac stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x66b0 targets 0x66a4, is taken when (v0(=[a0]) & a1(?)) == 0, and falls through when (v0(=[a0]) & a1(?)) != 0; its branch-likely delay slot `nop` at 0x66b4 runs only when taken and is annulled on fall-through.
  The return at 0x66b8 has v0 = [a0].
- `bitlock_release_32bit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x66a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x66a0-0x66c0 (32 bytes).
  It occupies 32 bytes.
  The `ll` at 0x66a4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x66ac stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x66b0 targets 0x66a4, is taken when (v0(=[a0]) & a1(?)) == 0, and falls through when (v0(=[a0]) & a1(?)) != 0; its branch-likely delay slot `nop` at 0x66b4 runs only when taken and is annulled on fall-through.
  The return at 0x66b8 has v0 = [a0].
- `atomicClearInt64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x66c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x66c0-0x66e0 (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x66c4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x66cc stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x66d0 targets 0x66c4, is taken when (v0(=[a0]:8) & a1(?)) == 0, and falls through when (v0(=[a0]:8) & a1(?)) != 0; its branch-likely delay slot `nop` at 0x66d4 runs only when taken and is annulled on fall-through.
  The return at 0x66d8 has v0 = [a0]:8.
- `atomicClearLong` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x66c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x66c0-0x66e0 (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x66c4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x66cc stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x66d0 targets 0x66c4, is taken when (v0(=[a0]:8) & a1(?)) == 0, and falls through when (v0(=[a0]:8) & a1(?)) != 0; its branch-likely delay slot `nop` at 0x66d4 runs only when taken and is annulled on fall-through.
  The return at 0x66d8 has v0 = [a0]:8.
- `atomicClearUint64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x66c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x66c0-0x66e0 (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x66c4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x66cc stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x66d0 targets 0x66c4, is taken when (v0(=[a0]:8) & a1(?)) == 0, and falls through when (v0(=[a0]:8) & a1(?)) != 0; its branch-likely delay slot `nop` at 0x66d4 runs only when taken and is annulled on fall-through.
  The return at 0x66d8 has v0 = [a0]:8.
- `atomicClearUlong` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x66c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x66c0-0x66e0 (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x66c4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x66cc stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x66d0 targets 0x66c4, is taken when (v0(=[a0]:8) & a1(?)) == 0, and falls through when (v0(=[a0]:8) & a1(?)) != 0; its branch-likely delay slot `nop` at 0x66d4 runs only when taken and is annulled on fall-through.
  The return at 0x66d8 has v0 = [a0]:8.
- `bitlock_release` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x66c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x66c0-0x66e0 (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x66c4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x66cc stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x66d0 targets 0x66c4, is taken when (v0(=[a0]:8) & a1(?)) == 0, and falls through when (v0(=[a0]:8) & a1(?)) != 0; its branch-likely delay slot `nop` at 0x66d4 runs only when taken and is annulled on fall-through.
  The return at 0x66d8 has v0 = [a0]:8.
- `atomicFieldAssignLong` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x66e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x66e0-0x6704 (36 bytes).
  It occupies 36 bytes.
  The `lld` at 0x66e4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x66f0 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x66f4 targets 0x66e4, is taken when t2(?) == 0, and falls through when t2(?) != 0; its branch-likely delay slot `nop` at 0x66f8 runs only when taken and is annulled on fall-through.
  The return at 0x66fc has v0 = [a0]:8.
- `atomicFieldAssignUint` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6704 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6704-0x6728 (36 bytes).
  It occupies 36 bytes.
  The `ll` at 0x6708 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6714 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6718 targets 0x6708, is taken when t2(?) == 0, and falls through when t2(?) != 0; its branch-likely delay slot `nop` at 0x671c runs only when taken and is annulled on fall-through.
  The return at 0x6720 has v0 = [a0].
- `atomicClearCpumask` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6728 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6728-0x674c (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0x6728 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ll` at 0x6730 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6738 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x673c targets 0x6730, is taken when (v0(=[a0]) & a1(?)) == 0, and falls through when (v0(=[a0]) & a1(?)) != 0; its branch-likely delay slot `nop` at 0x6740 runs only when taken and is annulled on fall-through.
  The return at 0x6744 has v0 = [a0].
- `atomicAddInt64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x674c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x674c-0x676c (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x674c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6754 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6758 targets 0x674c, is taken when t1(=([a0]:8 + a1)) == 0, and falls through when t1(=([a0]:8 + a1)) != 0; its branch-likely delay slot `nop` at 0x675c runs only when taken and is annulled on fall-through.
  The return at 0x6764 has v0 = ([a0]:8 + a1).
- `atomicAddUint64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x674c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x674c-0x676c (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x674c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6754 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6758 targets 0x674c, is taken when t1(=([a0]:8 + a1)) == 0, and falls through when t1(=([a0]:8 + a1)) != 0; its branch-likely delay slot `nop` at 0x675c runs only when taken and is annulled on fall-through.
  The return at 0x6764 has v0 = ([a0]:8 + a1).
- `atomicAddInt64Hot2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x676c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x676c-0x678c (32 bytes).
  It occupies 32 bytes.
  2 such `sb` accesses store 1 byte to a2 (arg2 at entry) +0x0, including `sb` at 0x676c, `sb` at 0x6780.
  The `lld` at 0x6770 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6778 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x677c targets 0x6770, is taken when t1(=([a0]:8 + a1)) == 0, and falls through when t1(=([a0]:8 + a1)) != 0; its branch-likely delay slot `sb zero,0(a2)` at 0x6780 runs only when taken and is annulled on fall-through.
  The return at 0x6784 has v0 = ([a0]:8 + a1).
- `atomicAddUint64Hot2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x676c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x676c-0x678c (32 bytes).
  It occupies 32 bytes.
  2 such `sb` accesses store 1 byte to a2 (arg2 at entry) +0x0, including `sb` at 0x676c, `sb` at 0x6780.
  The `lld` at 0x6770 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6778 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x677c targets 0x6770, is taken when t1(=([a0]:8 + a1)) == 0, and falls through when t1(=([a0]:8 + a1)) != 0; its branch-likely delay slot `sb zero,0(a2)` at 0x6780 runs only when taken and is annulled on fall-through.
  The return at 0x6784 has v0 = ([a0]:8 + a1).
- `atomicPush` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x678c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x678c-0x67c4 (56 bytes).
  It occupies 56 bytes.
  The `ld` at 0x678c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x6798 stores 8 bytes to a2 (arg2 at entry) +0x0.
  The `lld` at 0x679c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x67a8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x6794 targets 0x67b8, is taken when (t0(=[a0]:8) & 0x1) != 0, and falls through when (t0(=[a0]:8) & 0x1) == 0.
  The `bne` branch at 0x67a0 targets 0x678c, is taken when v0(=[a0]:8) != t0(=[a0]:8), and falls through when v0(=[a0]:8) == t0(=[a0]:8).
  The `beql` branch at 0x67ac targets 0x678c, is taken when t2(=a1) == 0, and falls through when t2(=a1) != 0; its branch-likely delay slot `nop` at 0x67b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x67bc targets 0x678c and is always taken.
  The return at 0x67b4 has v0 = [a0]:8.
- `atomicPull` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x67c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x67c4-0x67f0 (44 bytes).
  It occupies 44 bytes.
  The `lld` at 0x67c4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x67d4 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x67cc targets 0x67e4, is taken when (v0(=[a0]:8) & 0x1) != 0, and falls through when (v0(=[a0]:8) & 0x1) == 0.
  The `beql` branch at 0x67d8 targets 0x67c4 and is always taken.
  The `beq` branch at 0x67e8 targets 0x67c4 and is always taken.
  The instructions from 0x67e0 to 0x67e0 are not reached by any path from the entry, and their branches are not listed.
- `atomicIncWithWrap` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x67f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x67f0-0x681c (44 bytes).
  It occupies 44 bytes.
  The `ll` at 0x67f0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6804 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x67f8 targets 0x6804, is taken when t1(=[a0]+1) != a1, and falls through when t1(=[a0]+1) == a1.
  The `beql` branch at 0x6808 targets 0x67f0, is taken when t1(?) == 0, and falls through when t1(?) != 0; its branch-likely delay slot `nop` at 0x680c runs only when taken and is annulled on fall-through.
  The return at 0x6814 has v0 = [a0].
- `atomicAddWithWrap` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x681c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x681c-0x684c (48 bytes).
  It occupies 48 bytes.
  The `ll` at 0x681c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6834 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x6828 targets 0x6834, is taken when t1(=([a0] + a1)) < a2 (signed), and falls through when t1(=([a0] + a1)) >= a2 (signed).
  The `beql` branch at 0x6838 targets 0x681c, is taken when t1(?) == 0, and falls through when t1(?) != 0; its branch-likely delay slot `nop` at 0x683c runs only when taken and is annulled on fall-through.
  The return at 0x6844 has v0 = [a0].
- `bitlock_set` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x684c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x684c-0x6870 (36 bytes).
  It occupies 36 bytes.
  The `ll` at 0x684c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x685c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x6854 targets 0x684c, is taken when (v0(=[a0]) & a1) != 0, and falls through when (v0(=[a0]) & a1) == 0.
  The `beql` branch at 0x6860 targets 0x684c, is taken when t2(=([a0] | a2)) == 0, and falls through when t2(=([a0] | a2)) != 0; its branch-likely delay slot `nop` at 0x6864 runs only when taken and is annulled on fall-through.
  The return at 0x6868 has v0 = [a0].
- `bitlock_clr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6870 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6870-0x6898 (40 bytes).
  It occupies 40 bytes.
  The `ll` at 0x6874 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6884 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x687c targets 0x6874, is taken when (v0(=[a0]) & a1) != 0, and falls through when (v0(=[a0]) & a1) == 0.
  The `beql` branch at 0x6888 targets 0x6874, is taken when t2(?) == 0, and falls through when t2(?) != 0; its branch-likely delay slot `nop` at 0x688c runs only when taken and is annulled on fall-through.
  The return at 0x6890 has v0 = [a0].
- `bitlock_acquire` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6898 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6898-0x68bc (36 bytes).
  It occupies 36 bytes.
  The `lld` at 0x6898 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x68a8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x68a0 targets 0x6898, is taken when (v0(=[a0]:8) & a1) != 0, and falls through when (v0(=[a0]:8) & a1) == 0.
  The `beql` branch at 0x68ac targets 0x6898, is taken when t2(=([a0]:8 | a1)) == 0, and falls through when t2(=([a0]:8 | a1)) != 0; its branch-likely delay slot `nop` at 0x68b0 runs only when taken and is annulled on fall-through.
  The return at 0x68b4 has v0 = [a0]:8.
- `bitlock_acquire_32bit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x68bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x68bc-0x68e0 (36 bytes).
  It occupies 36 bytes.
  The `ll` at 0x68bc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x68cc stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x68c4 targets 0x68bc, is taken when (v0(=[a0]) & a1) != 0, and falls through when (v0(=[a0]) & a1) == 0.
  The `beql` branch at 0x68d0 targets 0x68bc, is taken when t2(=([a0] | a1)) == 0, and falls through when t2(=([a0] | a1)) != 0; its branch-likely delay slot `nop` at 0x68d4 runs only when taken and is annulled on fall-through.
  The return at 0x68d8 has v0 = [a0].
- `bitlock_condacq` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x68e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x68e0-0x697c (156 bytes).
  It occupies 156 bytes.
  The `lld` at 0x68f0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6900 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x68e8 targets 0x692c, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `bne` branch at 0x68f8 targets 0x6914, is taken when (v0(=[a0]:8) & a1) != 0, and falls through when (v0(=[a0]:8) & a1) == 0.
  The `beql` branch at 0x6904 targets 0x68f0, is taken when t2(=([a0]:8 | a1)) == 0, and falls through when t2(=([a0]:8 | a1)) != 0; its branch-likely delay slot `nop` at 0x6908 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0x691c targets 0x6918, is taken when a5(?) >= 0 (signed), and falls through when a5(?) < 0 (signed).
  The `beq` branch at 0x6924 targets 0x68e4 and is always taken.
  The return at 0x690c has v0 = 0x0.
  The return at 0x6974 has v0 = 0x1.
- `bitlock_condacq_32bit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x697c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x697c-0x6a18 (156 bytes).
  It occupies 156 bytes.
  The `ll` at 0x698c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x699c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x6984 targets 0x69c8, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `bne` branch at 0x6994 targets 0x69b0, is taken when (v0(=[a0]) & a1) != 0, and falls through when (v0(=[a0]) & a1) == 0.
  The `beql` branch at 0x69a0 targets 0x698c, is taken when t2(=([a0] | a1)) == 0, and falls through when t2(=([a0] | a1)) != 0; its branch-likely delay slot `nop` at 0x69a4 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0x69b8 targets 0x69b4, is taken when a5(?) >= 0 (signed), and falls through when a5(?) < 0 (signed).
  The `beq` branch at 0x69c0 targets 0x6980 and is always taken.
  The return at 0x69a8 has v0 = 0x0.
  The return at 0x6a10 has v0 = 0x1.
- `mutex_set_always` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6a18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6a18-0x6a34 (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x6a18 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6a20 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6a24 targets 0x6a18, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0; its branch-likely delay slot `nop` at 0x6a28 runs only when taken and is annulled on fall-through.
  The return at 0x6a2c has v0 = [a0]:8.
- `test_and_set_int` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6a34 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6a34-0x6a50 (28 bytes).
  It occupies 28 bytes.
  The `ll` at 0x6a34 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6a3c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6a40 targets 0x6a34, is taken when t2(=a1) == 0, and falls through when t2(=a1) != 0; its branch-likely delay slot `nop` at 0x6a44 runs only when taken and is annulled on fall-through.
  The return at 0x6a48 has v0 = [a0].
- `test_and_set_int64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6a50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6a50-0x6a6c (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x6a50 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6a58 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6a5c targets 0x6a50, is taken when t2(=a1) == 0, and falls through when t2(=a1) != 0; its branch-likely delay slot `nop` at 0x6a60 runs only when taken and is annulled on fall-through.
  The return at 0x6a64 has v0 = [a0]:8.
- `test_and_set_long` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6a50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6a50-0x6a6c (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x6a50 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6a58 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6a5c targets 0x6a50, is taken when t2(=a1) == 0, and falls through when t2(=a1) != 0; its branch-likely delay slot `nop` at 0x6a60 runs only when taken and is annulled on fall-through.
  The return at 0x6a64 has v0 = [a0]:8.
- `test_and_set_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6a50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6a50-0x6a6c (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x6a50 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6a58 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6a5c targets 0x6a50, is taken when t2(=a1) == 0, and falls through when t2(=a1) != 0; its branch-likely delay slot `nop` at 0x6a60 runs only when taken and is annulled on fall-through.
  The return at 0x6a64 has v0 = [a0]:8.
- `swap_int` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6a6c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6a6c-0x6a88 (28 bytes).
  It occupies 28 bytes.
  The `ll` at 0x6a6c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6a74 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6a78 targets 0x6a6c, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0; its branch-likely delay slot `nop` at 0x6a7c runs only when taken and is annulled on fall-through.
  The return at 0x6a80 has v0 = [a0].
- `compare_and_swap_int` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6a88 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6a88-0x6b20 (152 bytes).
  It occupies 152 bytes.
  The `ll` at 0x6a88 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6a94 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x6a8c targets 0x6aa8, is taken when t0(=[a0]) != a1, and falls through when t0(=[a0]) == a1.
  The `beql` branch at 0x6a98 targets 0x6a88, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0; its branch-likely delay slot `nop` at 0x6a9c runs only when taken and is annulled on fall-through.
  The return at 0x6aa0 has v0 = a2.
  The return at 0x6b18 has v0 = 0x0.
- `compare_and_inc_int_gt_zero` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6b20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6b20-0x6bb8 (152 bytes).
  It occupies 152 bytes.
  The `ll` at 0x6b20 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6b2c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `blez` branch at 0x6b24 targets 0x6b40, is taken when v0(=[a0]) <= 0 (signed), and falls through when v0(=[a0]) > 0 (signed).
  The `beql` branch at 0x6b30 targets 0x6b20, is taken when v0(=[a0]+1) == 0, and falls through when v0(=[a0]+1) != 0; its branch-likely delay slot `nop` at 0x6b34 runs only when taken and is annulled on fall-through.
  The return at 0x6b38 has v0 = [a0]+1.
  The return at 0x6bb0 has v0 = 0x0.
- `compare_and_dec_int_gt` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6bb8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6bb8-0x6c54 (156 bytes).
  It occupies 156 bytes.
  The `ll` at 0x6bb8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6bcc stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x6bc4 targets 0x6be0, is taken when v0(=[a0]-1) < a1 (signed), and falls through when v0(=[a0]-1) >= a1 (signed).
  The `beql` branch at 0x6bd0 targets 0x6bb8, is taken when v0(=[a0]-1) == 0, and falls through when v0(=[a0]-1) != 0; its branch-likely delay slot `nop` at 0x6bd4 runs only when taken and is annulled on fall-through.
  The return at 0x6bd8 has v0 = [a0]-1.
  The return at 0x6c4c has v0 = 0x0.
- `compare_and_dec_int_gt_hot2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6c54 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6c54-0x6cf0 (156 bytes).
  It occupies 156 bytes.
  The `ll` at 0x6c54 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6c68 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0x6c70 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `bne` branch at 0x6c60 targets 0x6c7c, is taken when v0(=[a0]-1) < a1 (signed), and falls through when v0(=[a0]-1) >= a1 (signed).
  The `beql` branch at 0x6c6c targets 0x6c54, is taken when v0(=[a0]-1) == 0, and falls through when v0(=[a0]-1) != 0; its branch-likely delay slot `sw zero,0(a2)` at 0x6c70 runs only when taken and is annulled on fall-through.
  The return at 0x6c74 has v0 = [a0]-1.
  The return at 0x6ce8 has v0 = 0x0.
- `swap_int64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6cf0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6cf0-0x6d0c (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x6cf0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6cf8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6cfc targets 0x6cf0, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0; its branch-likely delay slot `nop` at 0x6d00 runs only when taken and is annulled on fall-through.
  The return at 0x6d04 has v0 = [a0]:8.
- `swap_long` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6cf0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6cf0-0x6d0c (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x6cf0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6cf8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6cfc targets 0x6cf0, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0; its branch-likely delay slot `nop` at 0x6d00 runs only when taken and is annulled on fall-through.
  The return at 0x6d04 has v0 = [a0]:8.
- `swap_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6cf0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6cf0-0x6d0c (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x6cf0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6cf8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6cfc targets 0x6cf0, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0; its branch-likely delay slot `nop` at 0x6d00 runs only when taken and is annulled on fall-through.
  The return at 0x6d04 has v0 = [a0]:8.
- `compare_and_swap_int64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6d0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6d0c-0x6da4 (152 bytes).
  It occupies 152 bytes.
  The `lld` at 0x6d0c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6d18 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x6d10 targets 0x6d2c, is taken when t0(=[a0]:8) != a1, and falls through when t0(=[a0]:8) == a1.
  The `beql` branch at 0x6d1c targets 0x6d0c, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0; its branch-likely delay slot `nop` at 0x6d20 runs only when taken and is annulled on fall-through.
  The return at 0x6d24 has v0 = a2.
  The return at 0x6d9c has v0 = 0x0.
- `compare_and_swap_kt` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6d0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6d0c-0x6da4 (152 bytes).
  It occupies 152 bytes.
  The `lld` at 0x6d0c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6d18 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x6d10 targets 0x6d2c, is taken when t0(=[a0]:8) != a1, and falls through when t0(=[a0]:8) == a1.
  The `beql` branch at 0x6d1c targets 0x6d0c, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0; its branch-likely delay slot `nop` at 0x6d20 runs only when taken and is annulled on fall-through.
  The return at 0x6d24 has v0 = a2.
  The return at 0x6d9c has v0 = 0x0.
- `compare_and_swap_long` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6d0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6d0c-0x6da4 (152 bytes).
  It occupies 152 bytes.
  The `lld` at 0x6d0c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6d18 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x6d10 targets 0x6d2c, is taken when t0(=[a0]:8) != a1, and falls through when t0(=[a0]:8) == a1.
  The `beql` branch at 0x6d1c targets 0x6d0c, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0; its branch-likely delay slot `nop` at 0x6d20 runs only when taken and is annulled on fall-through.
  The return at 0x6d24 has v0 = a2.
  The return at 0x6d9c has v0 = 0x0.
- `compare_and_swap_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6d0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6d0c-0x6da4 (152 bytes).
  It occupies 152 bytes.
  The `lld` at 0x6d0c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6d18 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x6d10 targets 0x6d2c, is taken when t0(=[a0]:8) != a1, and falls through when t0(=[a0]:8) == a1.
  The `beql` branch at 0x6d1c targets 0x6d0c, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0; its branch-likely delay slot `nop` at 0x6d20 runs only when taken and is annulled on fall-through.
  The return at 0x6d24 has v0 = a2.
  The return at 0x6d9c has v0 = 0x0.
- `comparegt_and_swap_int` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6da4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6da4-0x6e40 (156 bytes).
  It occupies 156 bytes.
  The `ll` at 0x6da4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6db4 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x6dac targets 0x6dc8, is taken when a1 >= t1(=[a0]) (signed), and falls through when a1 < t1(=[a0]) (signed).
  The `beql` branch at 0x6db8 targets 0x6da4, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0; its branch-likely delay slot `nop` at 0x6dbc runs only when taken and is annulled on fall-through.
  The return at 0x6dc0 has v0 = a2.
  The return at 0x6e38 has v0 = 0x0.
- `store_atomic` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6e40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6e40-0x6e58 (24 bytes).
  It occupies 24 bytes.
  The `ll` at 0x6e40 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6e44 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6e48 targets 0x6e40, is taken when a4(=[a0]) == 0, and falls through when a4(=[a0]) != 0; its branch-likely delay slot `nop` at 0x6e4c runs only when taken and is annulled on fall-through.
  The return at 0x6e50 has v0 = ?.
- `atomicIncPort` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6e58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6e58-0x6e88 (48 bytes).
  It occupies 48 bytes.
  The `ll` at 0x6e58 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6e70 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x6e64 targets 0x6e70, is taken when a1 >= t1(=[a0]+1) (signed), and falls through when a1 < t1(=[a0]+1) (signed).
  The `beql` branch at 0x6e74 targets 0x6e58, is taken when t1(?) == 0, and falls through when t1(?) != 0; its branch-likely delay slot `nop` at 0x6e78 runs only when taken and is annulled on fall-through.
  The return at 0x6e80 has v0 = [a0].
- `copyin` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6e90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6e90-0x6f1c (140 bytes).
  It occupies 140 bytes.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x6e90, `ld` at 0x6ef0, `ld` at 0x6f00.
  The `lbu` at 0x6ea0 loads 1 byte from [-0x3fe0]:8 +0x70.
  The `ld` at 0x6eac loads 8 bytes from [-0x3fe0]:8 +0x338.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x6efc, `sh` at 0x6f08.
  The `jal` at 0x6eb8 calls do_ucopy_copyin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls .text via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x6ec0).
  The `jal` at 0x6ef8 calls bcopy with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x6ea4 targets 0x6ec8, is taken when t1(=[[-0x3fe0]:8+112]:1) != at(=0x1), and falls through when t1(=[[-0x3fe0]:8+112]:1) == at(=0x1).
  The `beq` branch at 0x6eb0 targets 0x6ec8, is taken when t2(=[[-0x3fe0]:8+824]:8) == 0, and falls through when t2(=[[-0x3fe0]:8+824]:8) != 0.
  The `bltz` branch at 0x6ec8 targets 0x70e4, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `bltz` branch at 0x6ed0 targets 0x70e4, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0x6ee8 targets 0x70e4, is taken when t0(=0x10000000000) < v0(=(a0 + a2)) (unsigned), and falls through when t0(=0x10000000000) >= v0(=(a0 + a2)) (unsigned).
  The return at 0x6f14 has v0 = 0x0.
- `copyout` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6f1c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6f1c-0x6fa8 (140 bytes).
  It occupies 140 bytes.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x6f1c, `ld` at 0x6f7c, `ld` at 0x6f8c.
  The `lbu` at 0x6f2c loads 1 byte from [-0x3fe0]:8 +0x70.
  The `ld` at 0x6f38 loads 8 bytes from [-0x3fe0]:8 +0x338.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x6f88, `sh` at 0x6f94.
  The `jal` at 0x6f44 calls do_ucopy_copyout with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls .text via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x6f4c).
  The `jal` at 0x6f84 calls bcopy with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x6f30 targets 0x6f54, is taken when t1(=[[-0x3fe0]:8+112]:1) != at(=0x1), and falls through when t1(=[[-0x3fe0]:8+112]:1) == at(=0x1).
  The `beq` branch at 0x6f3c targets 0x6f54, is taken when t2(=[[-0x3fe0]:8+824]:8) == 0, and falls through when t2(=[[-0x3fe0]:8+824]:8) != 0.
  The `bltz` branch at 0x6f54 targets 0x70e4, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `bltz` branch at 0x6f5c targets 0x70e4, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bne` branch at 0x6f74 targets 0x70e4, is taken when t0(=0x10000000000) < v0(=(a1 + a2)) (unsigned), and falls through when t0(=0x10000000000) >= v0(=(a1 + a2)) (unsigned).
  The return at 0x6fa0 has v0 = 0x0.
- `swcopyin` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6fa8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6fa8-0x7000 (88 bytes).
  It occupies 88 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x6fd4, `ld` at 0x6fe4.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x6fe0, `sh` at 0x6fec.
  The `jal` at 0x6fdc calls swbcopy with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0x6fac targets 0x70e4, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `bltz` branch at 0x6fb4 targets 0x70e4, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0x6fcc targets 0x70e4, is taken when t0(=0x10000000000) < v0(=(a0 + a2)) (unsigned), and falls through when t0(=0x10000000000) >= v0(=(a0 + a2)) (unsigned).
  The return at 0x6ff8 has v0 = 0x0.
## Skipped routines

Skipped routines from the first 250 targets: `odsy_usb_comp_update_tiles` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member); `usb_comp_update_tiles` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member); `odsy_usb_comp_readwrite_register` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member); `usb_comp_readwrite_register` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member); `odsy_usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member); `usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member); `odsy_usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member); `usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member); `dma_mapinit` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented for this binary/member).
