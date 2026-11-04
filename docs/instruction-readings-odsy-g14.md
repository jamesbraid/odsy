# Instruction readings from hostfacts

Each entry reports selected non-stack accesses, calls with argument slots, conditional branches and return values from the exact binary build named in its header. Every claim cites its instruction address. These are software observations, graded Inferred; they do not establish hardware behaviour.


- `gfxopen` (`usr/cpu/sysgen/IP30boot/gfx.o`, 0x1fb8, 1148 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `zero` to [ret(gthread_find)+16]:8 +0x18; value 0x0 (`sd` at 0x20b0).
  Stores 8 bytes from `s2` to ? (base unknown); value ret(kern_malloc) (`sd` at 0x2178).
  Stores 8 bytes from `s4` to ret(kern_malloc) +0x10; value ret(curthreadhandle) (`sd` at 0x2180).
  Stores 8 bytes from `zero` to ret(kern_malloc) +0x20; value 0x0 (`sd` at 0x2188).
  Stores 8 bytes from `zero` to ret(kern_malloc) +0x28; value 0x0 (`sd` at 0x2198).
  Stores 8 bytes from `a3` to ret(kern_malloc) +0x60 (`sd` at 0x219c).
  Stores 4 bytes from `zero` to ret(kern_malloc) +0x68; value 0x0 (`sw` at 0x21c8).
  Stores 4 bytes from `a3` to ret(kern_malloc) +0x68 (`sw` at 0x21d8).
  Stores 8 bytes from `s2` to ? (base unknown); value ret(kern_malloc) (`sd` at 0x2204).
  Stores 8 bytes from `s2` to ? (base unknown); value ret(kern_malloc) (`sd` at 0x2250).
  Stores 4 bytes from `a3` to ret(kern_malloc) +0x38; value ([ret(kern_malloc)+56] | 0x2) (`sw` at 0x227c).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x0 (`sw` at 0x2294).
  Stores 4 bytes from `a5` to ret(kern_malloc) +0x4; value ([ret(kern_malloc)+4] | 0x8) (`sw` at 0x2380).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x0 (`sw` at 0x239c).
  Stores 8 bytes from `s2` to ? (base unknown); value ret(kern_malloc) (`sd` at 0x23b4).
  Stores 4 bytes from `a6` to ret(gfx_group_find) +0xc; value 0x1 (`sw` at 0x23bc).
  At `beq at,zero,230c` at 0x2010, the branch is taken when v0(?) >= 0x2 (signed); it falls through when v0(?) < 0x2 (signed) (`beq` at 0x2010).
  At `blez a4,2414` at 0x201c, the branch is taken when a4(=[sym(GfxDevLimit)]) <= 0 (signed); it falls through when a4(=[sym(GfxDevLimit)]) > 0 (signed) (`blez` at 0x201c).
  At `beq a1,zero,2074` at 0x2034, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x2034).
  At `beq a5,zero,2070` at 0x2048, the branch is taken when s0(?) >= a4(=[sym(GfxDevLimit)]) (signed); it falls through when s0(?) < a4(=[sym(GfxDevLimit)]) (signed) (`beq` at 0x2048).
  At `beq a6,zero,2074` at 0x2054, the branch is taken when a6(?) == 0; it falls through when a6(?) != 0 (`beq` at 0x2054).
  At `bne a7,zero,2030` at 0x2068, the branch is taken when s0(?) < a4(=[sym(GfxDevLimit)]) (signed); it falls through when s0(?) >= a4(=[sym(GfxDevLimit)]) (signed) (`bne` at 0x2068).
  At `beq t0,zero,2414` at 0x2074, the branch is taken when t0(?) == 0; it falls through when t0(?) != 0 (`beq` at 0x2074).
  At `beq v0,zero,20cc` at 0x208c, the branch is taken when v0(=ret(gthread_find)) == 0; it falls through when v0(=ret(gthread_find)) != 0 (`beq` at 0x208c).
  At `beq t8,zero,22fc` at 0x209c, the branch is taken when (t8(=[ret(gthread_find)+8]) & 0x4) == 0; it falls through when (t8(=[ret(gthread_find)+8]) & 0x4) != 0 (`beq` at 0x209c).
  At `beq v0,zero,20b4` at 0x20a8, the branch is taken when v0(=[ret(gthread_find)+16]:8) == 0; it falls through when v0(=[ret(gthread_find)+16]:8) != 0 (`beq` at 0x20a8).
  At `beq v0,zero,22ec` at 0x20d4, the branch is taken when v0(=ret(gthread_create)) == 0; it falls through when v0(=ret(gthread_create)) != 0 (`beq` at 0x20d4).
  At `beq v0,zero,2128` at 0x20f4, the branch is taken when v0(=ret(gthread_find_gfxp)) == 0; it falls through when v0(=ret(gthread_find_gfxp)) != 0 (`beq` at 0x20f4).
  At `bne t9,zero,22c8` at 0x2114, the branch is taken when t9(?) != 0; it falls through when t9(?) == 0 (`bne` at 0x2114).
  At `bne s2,zero,2100` at 0x2120, the branch is taken when s2(?) != 0; it falls through when s2(?) == 0 (`bne` at 0x2120).
  At `beq s3,zero,213c` at 0x2128, the branch is taken when s3(?) == 0; it falls through when s3(?) != 0 (`beq` at 0x2128).
  At `bne ra,zero,231c` at 0x2134, the branch is taken when ra(?) != 0; it falls through when ra(?) == 0 (`bne` at 0x2134).
  At `bne s8,zero,2158` at 0x213c, the branch is taken when s8(=ret(gthread_find_gfxp)) != 0; it falls through when s8(=ret(gthread_find_gfxp)) == 0 (`bne` at 0x213c).
  At `bne s5,zero,2378` at 0x21a8, the branch is taken when s5(?) != 0; it falls through when s5(?) == 0 (`bne` at 0x21a8).
  At `bne s8,zero,2218` at 0x21d4, the branch is taken when s8(=ret(gthread_find_gfxp)) != 0; it falls through when s8(=ret(gthread_find_gfxp)) == 0 (`bne` at 0x21d4).
  At `beq s7,zero,21f8` at 0x21dc, the branch is taken when s7(=ret(gfx_group_find)) == 0; it falls through when s7(=ret(gfx_group_find)) != 0 (`beq` at 0x21dc).
  At `beq a4,zero,23a0` at 0x21ec, the branch is taken when (a4(=[ret(kern_malloc)+4]) & 0x8) == 0; it falls through when (a4(=[ret(kern_malloc)+4]) & 0x8) != 0 (`beq` at 0x21ec).
  At `beq s7,zero,2230` at 0x2218, the branch is taken when s7(=ret(gfx_group_find)) == 0; it falls through when s7(=ret(gfx_group_find)) != 0 (`beq` at 0x2218).
  At `beq a6,zero,2404` at 0x2228, the branch is taken when (a6(=[ret(kern_malloc)+4]) & 0x8) == 0; it falls through when (a6(=[ret(kern_malloc)+4]) & 0x8) != 0 (`beq` at 0x2228).
  At `beq a3,zero,224c` at 0x2234, the branch is taken when a3(=[ret(gthread_find_gfxp)+24]:8) == 0; it falls through when a3(=[ret(gthread_find_gfxp)+24]:8) != 0 (`beq` at 0x2234).
  At `bne a3,zero,223c` at 0x2244, the branch is taken when a3(?) != 0; it falls through when a3(?) == 0 (`bne` at 0x2244).
  At `beq s7,zero,2264` at 0x224c, the branch is taken when s7(=ret(gfx_group_find)) == 0; it falls through when s7(=ret(gfx_group_find)) != 0 (`beq` at 0x224c).
  At `beq a7,zero,23f4` at 0x225c, the branch is taken when (a7(=[ret(kern_malloc)+4]) & 0x8) == 0; it falls through when (a7(=[ret(kern_malloc)+4]) & 0x8) != 0 (`beq` at 0x225c).
  At `bne v0,zero,20dc` at 0x22fc, the branch is taken when v0(=ret(gthread_find)) != 0; it falls through when v0(=ret(gthread_find)) == 0 (`bne` at 0x22fc).
  At `bne a5,a6,213c` at 0x234c, the branch is taken when a5(?) != a6(=0x3); it falls through when a5(?) == a6(=0x3) (`bne` at 0x234c).
  Returns with v0 = one of 0x0, 0x6, 0xc, 0x13 at 0x22c0 (`jr` at 0x22c0).
  Calls `curthreadhandle` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1fcc).
  Calls `psema` via direct with a0=sym(GfxBoardInitSema), a1=0x19, a2=?, a3=? (`jal` at 0x1fe0).
  Calls `gthread_find` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=?, a4=[sym(GfxDevLimit)] (`jal` at 0x2084).
  Calls `gthread_detach_list` via direct with a0=ret(gthread_find), a1=?, a2=?, a3=? (`jal` at 0x20b4).
  Calls `gthread_detach_group` via direct with a0=ret(gthread_find), a1=?, a2=?, a3=? (`jal` at 0x20bc).
  Calls `gthread_destroy` via direct with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=? (`jal` at 0x20c4).
  Calls `gthread_create` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=? (`jal` at 0x20cc).
  Calls `gfx_group_find` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=? (`jal` at 0x20dc).
  Calls `gthread_find_gfxp` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=? (`jal` at 0x20e8).
  Calls `kern_malloc` via direct with a0=0x80, a1=?, a2=?, a3=? (`jal` at 0x2148).
  Calls `kern_malloc` via direct with a0=0x80, a1=?, a2=?, a3=? (`jal` at 0x2158).
  Calls `bzero` via direct with a0=ret(kern_malloc), a1=0x80, a2=?, a3=? (`jal` at 0x2174).
  Calls `init_spinlock` via direct with a0=ret(kern_malloc), a1=sym(.rodata), a2=-0x1, a3=? (`jal` at 0x21a0).
  Calls `init_sema` via direct with a0=ret(kern_malloc)+80, a1=0x1, a2=sym(.rodata), a3=-0x1 (`jal` at 0x21c0).
  Calls `gthread_attach_list` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x21f8).
  Calls `setgfxsched_thread` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=? (`jal` at 0x2208).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=? (`jal` at 0x2268).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=? (`jal` at 0x22c8).
  Calls `cmn_err_tag` via direct with a0=0x84e, a1=0x4, a2=sym(.rodata), a3=? (`jal` at 0x22dc).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=? (`jal` at 0x22ec).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=? (`jal` at 0x230c).
  Calls `gthread_scan` via direct with a0=sym(gfx_conflict_scan), a1=sp-144, a2=?, a3=?, a4=one of 0x1, 0x2, a5=0x1 (`jal` at 0x233c).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?, a6=0x3 (`jal` at 0x2354).
  Calls `cmn_err_tag` via direct with a0=0x84f, a1=0x4, a2=sym(.rodata), a3=? (`jal` at 0x2368).
  Calls `gthread_attach_list` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x23a0).
  Calls `GfxListWriterLock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x23a8).
  Calls `GfxListWriterUnlock` via direct with a0=?, a1=ret(GfxListWriterLock), a2=?, a3=?, a6=0x1 (`jal` at 0x23c4).
  Calls `curthreadgroup_scan` via direct with a0=sym(irisgl_sproc_setup_scan), a1=sp-128, a2=?, a3=? (`jal` at 0x23e4).
  Calls `GfxListWriterUnlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x23f4).
  Calls `GfxListWriterLock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2404).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?, a4=[sym(GfxDevLimit)] (`jal` at 0x2414).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x2424).
- `gfxclose` (`usr/cpu/sysgen/IP30boot/gfx.o`, 0x249c, 1396 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `a2` to ? (base unknown); value [entry(sym(GfxDev))+24]:8 (`sd` at 0x2608).
  Stores 8 bytes from `zero` to [ret(gthread_find)+16]:8 +0x18; value 0x0 (`sd` at 0x26a8).
  Stores 4 bytes from `t0` to entry(sym(GfxDev)) +0x38 (`sw` at 0x26f0).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x2704).
  Stores 8 bytes from `a1` to ? (base unknown); value [entry(sym(GfxDev))+24]:8 (`sd` at 0x2780).
  Stores 4 bytes from `zero` to ? (base unknown); value 0x0 (`sw` at 0x2824).
  Stores 8 bytes from `zero` to entry(sym(GfxDev)) +0x18; value 0x0 (`sd` at 0x28bc).
  Stores 8 bytes from `s6` to entry(sym(GfxDev)) +0x10; value ret(curthreadhandle) (`sd` at 0x28c0).
  Stores 4 bytes from `zero` to entry(sym(GfxDev)) +0x68; value 0x0 (`sw` at 0x28c8).
  Stores 8 bytes from `s0` to [ret(gthread_create)+16]:8 +0x18; value entry(sym(GfxDev)) (`sd` at 0x28e4).
  Stores 8 bytes from `s6` to entry(sym(GfxDev)) +0x10; value ret(curthreadhandle) (`sd` at 0x2904).
  Stores 8 bytes from `a4` to entry(sym(GfxDev)) +0x18 (`sd` at 0x290c).
  Stores 8 bytes from `s0` to ? (base unknown); value entry(sym(GfxDev)) (`sd` at 0x2914).
  Stores 8 bytes from `a5` to ? (base unknown) (`sd` at 0x294c).
  At `beq s7,s5,24ec` at 0x24d4, the branch is taken when s7(?) == s5(=0x20000); it falls through when s7(?) != s5(=0x20000) (`beq` at 0x24d4).
  At `bne a1,zero,2568` at 0x251c, the branch is taken when a0(?) < a1(=[sym(GfxDevLimit)]) (signed); it falls through when a0(?) >= a1(=[sym(GfxDevLimit)]) (signed) (`bne` at 0x251c).
  At `beq s7,s5,2534` at 0x2524, the branch is taken when s7(?) == s5(=0x20000); it falls through when s7(?) != s5(=0x20000) (`beq` at 0x2524).
  At `beq s0,zero,2784` at 0x2578, the branch is taken when s0(=entry(sym(GfxDev))) == 0; it falls through when s0(=entry(sym(GfxDev))) != 0 (`beq` at 0x2578).
  At `beq s4,zero,2770` at 0x2580, the branch is taken when s4(=ret(gthread_find)) == 0; it falls through when s4(=ret(gthread_find)) != 0 (`beq` at 0x2580).
  At `beq v0,zero,2770` at 0x258c, the branch is taken when v0(=[ret(gthread_find)+16]:8) == 0; it falls through when v0(=[ret(gthread_find)+16]:8) != 0 (`beq` at 0x258c).
  At `beq s6,s3,2764` at 0x259c, the branch is taken when s6(=ret(curthreadhandle)) == s3(=[entry(sym(GfxDev))+16]:8); it falls through when s6(=ret(curthreadhandle)) != s3(=[entry(sym(GfxDev))+16]:8) (`beq` at 0x259c).
  At `beq s7,s5,286c` at 0x25a4, the branch is taken when s7(?) == s5(=0x20000); it falls through when s7(?) != s5(=0x20000) (`beq` at 0x25a4).
  At `beq s4,zero,28b0` at 0x25ac, the branch is taken when s4(=ret(gthread_find)) == 0; it falls through when s4(=ret(gthread_find)) != 0 (`beq` at 0x25ac).
  At `beq a0,zero,286c` at 0x25b8, the branch is taken when a0(=[ret(gthread_find)+24]:8) == 0; it falls through when a0(=[ret(gthread_find)+24]:8) != 0 (`beq` at 0x25b8).
  At `beq s4,zero,279c` at 0x25c8, the branch is taken when s4(=ret(gthread_find)) == 0; it falls through when s4(=ret(gthread_find)) != 0 (`beq` at 0x25c8).
  At `beq a1,zero,2738` at 0x25dc, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x25dc).
  At `beq s4,zero,2738` at 0x25e8, the branch is taken when s4(?) == 0; it falls through when s4(?) != 0 (`beq` at 0x25e8).
  At `bne s0,s2,2740` at 0x25f8, the branch is taken when s0(=entry(sym(GfxDev))) != s2(?); it falls through when s0(=entry(sym(GfxDev))) == s2(?) (`bne` at 0x25f8).
  At `beq s2,zero,2628` at 0x2610, the branch is taken when s2(?) == 0; it falls through when s2(?) != 0 (`beq` at 0x2610).
  At `beq a4,zero,2800` at 0x2620, the branch is taken when (a4(=[entry(sym(GfxDev))+4]) & 0x8) == 0; it falls through when (a4(=[entry(sym(GfxDev))+4]) & 0x8) != 0 (`beq` at 0x2620).
  At `beq s4,zero,2638` at 0x2628, the branch is taken when s4(?) == 0; it falls through when s4(?) != 0 (`beq` at 0x2628).
  At `beq v0,zero,2658` at 0x2644, the branch is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0x2644).
  At `beq a5,zero,284c` at 0x2650, the branch is taken when a5(?) == 0; it falls through when a5(?) != 0 (`beq` at 0x2650).
  At `beq s8,zero,26c8` at 0x2658, the branch is taken when s8(?) == 0; it falls through when s8(?) != 0 (`beq` at 0x2658).
  At `beq s3,zero,27c8` at 0x2674, the branch is taken when s3(=one of 0x0, 0x1) == 0; it falls through when s3(=one of 0x0, 0x1) != 0 (`beq` at 0x2674).
  At `beq v0,zero,27e0` at 0x267c, the branch is taken when v0(=ret(gthread_find)) == 0; it falls through when v0(=ret(gthread_find)) != 0 (`beq` at 0x267c).
  At `beq a6,zero,297c` at 0x268c, the branch is taken when (a6(=[ret(gthread_find)+8]) & 0x4) == 0; it falls through when (a6(=[ret(gthread_find)+8]) & 0x4) != 0 (`beq` at 0x268c).
  At `beq v0,zero,26ac` at 0x26a0, the branch is taken when v0(=[ret(gthread_find)+16]:8) == 0; it falls through when v0(=[ret(gthread_find)+16]:8) != 0 (`beq` at 0x26a0).
  At `beq a7,zero,27f0` at 0x26cc, the branch is taken when a7(?) == 0; it falls through when a7(?) != 0 (`beq` at 0x26cc).
  At `beq s7,s5,2714` at 0x2700, the branch is taken when s7(?) == s5(=0x20000); it falls through when s7(?) != s5(=0x20000) (`beq` at 0x2700).
  At `beq s3,zero,2730` at 0x2714, the branch is taken when s3(=one of 0x0, 0x1) == 0; it falls through when s3(=one of 0x0, 0x1) != 0 (`beq` at 0x2714).
  At `beq s0,s2,2600` at 0x2738, the branch is taken when s0(=entry(sym(GfxDev))) == s2(?); it falls through when s0(=entry(sym(GfxDev))) != s2(?) (`beq` at 0x2738).
  At `beq s2,zero,260c` at 0x2740, the branch is taken when s2(?) == 0; it falls through when s2(?) != 0 (`beq` at 0x2740).
  At `beq s0,v0,2778` at 0x274c, the branch is taken when s0(=entry(sym(GfxDev))) == v0(?); it falls through when s0(=entry(sym(GfxDev))) != v0(?) (`beq` at 0x274c).
  At `bne v0,zero,2748` at 0x2754, the branch is taken when v0(?) != 0; it falls through when v0(?) == 0 (`bne` at 0x2754).
  At `beq s7,s5,2794` at 0x2784, the branch is taken when s7(?) == s5(=0x20000); it falls through when s7(?) != s5(=0x20000) (`beq` at 0x2784).
  At `bne v0,zero,28bc` at 0x27a8, the branch is taken when v0(=ret(gthread_create)) != 0; it falls through when v0(=ret(gthread_create)) == 0 (`bne` at 0x27a8).
  At `beq s7,s5,27c0` at 0x27b0, the branch is taken when s7(?) == s5(=0x20000); it falls through when s7(?) != s5(=0x20000) (`beq` at 0x27b0).
  At `beq v0,zero,27e0` at 0x27c8, the branch is taken when v0(=ret(gthread_find)) == 0; it falls through when v0(=ret(gthread_find)) != 0 (`beq` at 0x27c8).
  At `bne a1,zero,2694` at 0x27d8, the branch is taken when (a1(=[ret(gthread_find)+8]) & 0x4) != 0; it falls through when (a1(=[ret(gthread_find)+8]) & 0x4) == 0 (`bne` at 0x27d8).
  At `beq v0,zero,2628` at 0x2804, the branch is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0x2804).
  At `bne a2,zero,2628` at 0x2810, the branch is taken when a2(?) != 0; it falls through when a2(?) == 0 (`bne` at 0x2810).
  At `beq v0,zero,28f0` at 0x2880, the branch is taken when v0(=ret(gthread_find)) == 0; it falls through when v0(=ret(gthread_find)) != 0 (`beq` at 0x2880).
  At `beq a0,zero,2974` at 0x288c, the branch is taken when a0(=[ret(gthread_find)+16]:8) == 0; it falls through when a0(=[ret(gthread_find)+16]:8) != 0 (`beq` at 0x288c).
  At `beq a1,zero,2964` at 0x2898, the branch is taken when a1(=[[ret(gthread_find)+16]:8+24]:8) == 0; it falls through when a1(=[[ret(gthread_find)+16]:8+24]:8) != 0 (`beq` at 0x2898).
  At `bne a1,zero,2928` at 0x28a0, the branch is taken when a1(=[[ret(gthread_find)+16]:8+24]:8) != 0; it falls through when a1(=[[ret(gthread_find)+16]:8+24]:8) == 0 (`bne` at 0x28a0).
  At `beq s4,zero,279c` at 0x28fc, the branch is taken when s4(=ret(gthread_find)) == 0; it falls through when s4(=ret(gthread_find)) != 0 (`beq` at 0x28fc).
  At `beq a1,zero,296c` at 0x2920, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x2920).
  At `bne s0,a1,2918` at 0x2928, the branch is taken when s0(=entry(sym(GfxDev))) != a1(?); it falls through when s0(=entry(sym(GfxDev))) == a1(?) (`bne` at 0x2928).
  At `beq a1,zero,296c` at 0x2930, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x2930).
  Returns with v0 = one of 0x0, 0x6, 0xc, 0x13 at 0x2560 (`jr` at 0x2560).
  Calls `curthreadhandle` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x24b8).
  Calls `psema` via direct with a0=sym(GfxBoardInitSema), a1=0x19, a2=?, a3=? (`jal` at 0x24e4).
  Calls `gthread_find` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=? (`jal` at 0x24fc).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=? (`jal` at 0x252c).
  Calls `GfxDetach` via direct with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=? (`jal` at 0x25d0).
  Calls `GfxListWriterLock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x25f0).
  Calls `GfxListWriterUnlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2630).
  Calls `freesema` via direct with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=? (`jal` at 0x2638).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2660).
  Calls `gthread_find` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x266c).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x2694).
  Calls `gthread_detach_list` via direct with a0=ret(gthread_find), a1=?, a2=?, a3=? (`jal` at 0x26ac).
  Calls `gthread_detach_group` via direct with a0=ret(gthread_find), a1=?, a2=?, a3=? (`jal` at 0x26b4).
  Calls `gthread_destroy` via direct with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=? (`jal` at 0x26bc).
  Calls `streams_lock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x26d4).
  Calls `gfxcleanup` via direct with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=? (`jal` at 0x26ec).
  Calls `streams_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x26f4).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=? (`jal` at 0x270c).
  Calls `curproc` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x271c).
  Calls `psignal` via direct with a0=ret(curproc), a1=0x6, a2=?, a3=? (`jal` at 0x2728).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=? (`jal` at 0x278c).
  Calls `gthread_create` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=? (`jal` at 0x279c).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=? (`jal` at 0x27b8).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x27e0).
  Calls `gthread_destroy` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x27f0).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2818).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x2828).
  Calls `gthread_detach_group` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2830).
  Calls `gthread_scan` via direct with a0=sym(irisgl_sproc_cleanup), a1=?, a2=?, a3=? (`jal` at 0x283c).
  Calls `cleargfxsched_thread` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x284c).
  Calls `gthread_detach_list` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2854).
  Calls `gthread_detach_group` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x285c).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x286c).
  Calls `gthread_find` via direct with a0=[entry(sym(GfxDev))+16]:8, a1=?, a2=?, a3=? (`jal` at 0x2878).
  Calls `gthread_attach_list` via direct with a0=ret(gthread_create), a1=0x0, a2=?, a3=? (`jal` at 0x28cc).
  Calls `setgfxsched_thread` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=[ret(gthread_create)+16]:8 (`jal` at 0x28e0).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x28f4).
  Calls `GfxListWriterLock` via direct with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=? (`jal` at 0x2938).
  Calls `GfxListWriterUnlock` via direct with a0=[ret(gthread_find)+16]:8, a1=ret(GfxListWriterLock), a2=?, a3=? (`jal` at 0x2954).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x297c).
  Calls `curproc` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2984).
  Calls `proc_name` via direct with a0=ret(curproc), a1=?, a2=?, a3=? (`jal` at 0x298c).
  Calls `curproc` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2994).
  Calls `proc_pid` via direct with a0=ret(curproc), a1=?, a2=?, a3=? (`jal` at 0x299c).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=ret(proc_name), a3=ret(proc_pid) (`jal` at 0x29b4).
  Calls `threadhandle_to_proc` via direct with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=? (`jal` at 0x29bc).
  Calls `proc_name` via direct with a0=ret(threadhandle_to_proc), a1=?, a2=?, a3=? (`jal` at 0x29c4).
  Calls `threadhandle_to_proc` via direct with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=? (`jal` at 0x29d0).
  Calls `proc_pid` via direct with a0=ret(threadhandle_to_proc), a1=?, a2=?, a3=? (`jal` at 0x29d8).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=ret(proc_name), a3=ret(proc_pid) (`jal` at 0x29ec).
  Calls `threadhandle_to_proc` via direct with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=? (`jal` at 0x29f4).
  Calls `psignal` via direct with a0=ret(threadhandle_to_proc), a1=0x9, a2=?, a3=? (`jal` at 0x2a00).
- `gfxopen` (`usr/cpu/sysgen/IP30boot/gfxs.a(gfx.o)`, 0x1fb8, 1148 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `zero` to [ret(gthread_find)+16]:8 +0x18; value 0x0 (`sd` at 0x20b0).
  Stores 8 bytes from `s2` to ? (base unknown); value ret(kern_malloc) (`sd` at 0x2178).
  Stores 8 bytes from `s4` to ret(kern_malloc) +0x10; value ret(curthreadhandle) (`sd` at 0x2180).
  Stores 8 bytes from `zero` to ret(kern_malloc) +0x20; value 0x0 (`sd` at 0x2188).
  Stores 8 bytes from `zero` to ret(kern_malloc) +0x28; value 0x0 (`sd` at 0x2198).
  Stores 8 bytes from `a3` to ret(kern_malloc) +0x60 (`sd` at 0x219c).
  Stores 4 bytes from `zero` to ret(kern_malloc) +0x68; value 0x0 (`sw` at 0x21c8).
  Stores 4 bytes from `a3` to ret(kern_malloc) +0x68 (`sw` at 0x21d8).
  Stores 8 bytes from `s2` to ? (base unknown); value ret(kern_malloc) (`sd` at 0x2204).
  Stores 8 bytes from `s2` to ? (base unknown); value ret(kern_malloc) (`sd` at 0x2250).
  Stores 4 bytes from `a3` to ret(kern_malloc) +0x38; value ([ret(kern_malloc)+56] | 0x2) (`sw` at 0x227c).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x0 (`sw` at 0x2294).
  Stores 4 bytes from `a5` to ret(kern_malloc) +0x4; value ([ret(kern_malloc)+4] | 0x8) (`sw` at 0x2380).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x0 (`sw` at 0x239c).
  Stores 8 bytes from `s2` to ? (base unknown); value ret(kern_malloc) (`sd` at 0x23b4).
  Stores 4 bytes from `a6` to ret(gfx_group_find) +0xc; value 0x1 (`sw` at 0x23bc).
  At `beq at,zero,230c` at 0x2010, the branch is taken when v0(?) >= 0x2 (signed); it falls through when v0(?) < 0x2 (signed) (`beq` at 0x2010).
  At `blez a4,2414` at 0x201c, the branch is taken when a4(=[sym(GfxDevLimit)]) <= 0 (signed); it falls through when a4(=[sym(GfxDevLimit)]) > 0 (signed) (`blez` at 0x201c).
  At `beq a1,zero,2074` at 0x2034, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x2034).
  At `beq a5,zero,2070` at 0x2048, the branch is taken when s0(?) >= a4(=[sym(GfxDevLimit)]) (signed); it falls through when s0(?) < a4(=[sym(GfxDevLimit)]) (signed) (`beq` at 0x2048).
  At `beq a6,zero,2074` at 0x2054, the branch is taken when a6(?) == 0; it falls through when a6(?) != 0 (`beq` at 0x2054).
  At `bne a7,zero,2030` at 0x2068, the branch is taken when s0(?) < a4(=[sym(GfxDevLimit)]) (signed); it falls through when s0(?) >= a4(=[sym(GfxDevLimit)]) (signed) (`bne` at 0x2068).
  At `beq t0,zero,2414` at 0x2074, the branch is taken when t0(?) == 0; it falls through when t0(?) != 0 (`beq` at 0x2074).
  At `beq v0,zero,20cc` at 0x208c, the branch is taken when v0(=ret(gthread_find)) == 0; it falls through when v0(=ret(gthread_find)) != 0 (`beq` at 0x208c).
  At `beq t8,zero,22fc` at 0x209c, the branch is taken when (t8(=[ret(gthread_find)+8]) & 0x4) == 0; it falls through when (t8(=[ret(gthread_find)+8]) & 0x4) != 0 (`beq` at 0x209c).
  At `beq v0,zero,20b4` at 0x20a8, the branch is taken when v0(=[ret(gthread_find)+16]:8) == 0; it falls through when v0(=[ret(gthread_find)+16]:8) != 0 (`beq` at 0x20a8).
  At `beq v0,zero,22ec` at 0x20d4, the branch is taken when v0(=ret(gthread_create)) == 0; it falls through when v0(=ret(gthread_create)) != 0 (`beq` at 0x20d4).
  At `beq v0,zero,2128` at 0x20f4, the branch is taken when v0(=ret(gthread_find_gfxp)) == 0; it falls through when v0(=ret(gthread_find_gfxp)) != 0 (`beq` at 0x20f4).
  At `bne t9,zero,22c8` at 0x2114, the branch is taken when t9(?) != 0; it falls through when t9(?) == 0 (`bne` at 0x2114).
  At `bne s2,zero,2100` at 0x2120, the branch is taken when s2(?) != 0; it falls through when s2(?) == 0 (`bne` at 0x2120).
  At `beq s3,zero,213c` at 0x2128, the branch is taken when s3(?) == 0; it falls through when s3(?) != 0 (`beq` at 0x2128).
  At `bne ra,zero,231c` at 0x2134, the branch is taken when ra(?) != 0; it falls through when ra(?) == 0 (`bne` at 0x2134).
  At `bne s8,zero,2158` at 0x213c, the branch is taken when s8(=ret(gthread_find_gfxp)) != 0; it falls through when s8(=ret(gthread_find_gfxp)) == 0 (`bne` at 0x213c).
  At `bne s5,zero,2378` at 0x21a8, the branch is taken when s5(?) != 0; it falls through when s5(?) == 0 (`bne` at 0x21a8).
  At `bne s8,zero,2218` at 0x21d4, the branch is taken when s8(=ret(gthread_find_gfxp)) != 0; it falls through when s8(=ret(gthread_find_gfxp)) == 0 (`bne` at 0x21d4).
  At `beq s7,zero,21f8` at 0x21dc, the branch is taken when s7(=ret(gfx_group_find)) == 0; it falls through when s7(=ret(gfx_group_find)) != 0 (`beq` at 0x21dc).
  At `beq a4,zero,23a0` at 0x21ec, the branch is taken when (a4(=[ret(kern_malloc)+4]) & 0x8) == 0; it falls through when (a4(=[ret(kern_malloc)+4]) & 0x8) != 0 (`beq` at 0x21ec).
  At `beq s7,zero,2230` at 0x2218, the branch is taken when s7(=ret(gfx_group_find)) == 0; it falls through when s7(=ret(gfx_group_find)) != 0 (`beq` at 0x2218).
  At `beq a6,zero,2404` at 0x2228, the branch is taken when (a6(=[ret(kern_malloc)+4]) & 0x8) == 0; it falls through when (a6(=[ret(kern_malloc)+4]) & 0x8) != 0 (`beq` at 0x2228).
  At `beq a3,zero,224c` at 0x2234, the branch is taken when a3(=[ret(gthread_find_gfxp)+24]:8) == 0; it falls through when a3(=[ret(gthread_find_gfxp)+24]:8) != 0 (`beq` at 0x2234).
  At `bne a3,zero,223c` at 0x2244, the branch is taken when a3(?) != 0; it falls through when a3(?) == 0 (`bne` at 0x2244).
  At `beq s7,zero,2264` at 0x224c, the branch is taken when s7(=ret(gfx_group_find)) == 0; it falls through when s7(=ret(gfx_group_find)) != 0 (`beq` at 0x224c).
  At `beq a7,zero,23f4` at 0x225c, the branch is taken when (a7(=[ret(kern_malloc)+4]) & 0x8) == 0; it falls through when (a7(=[ret(kern_malloc)+4]) & 0x8) != 0 (`beq` at 0x225c).
  At `bne v0,zero,20dc` at 0x22fc, the branch is taken when v0(=ret(gthread_find)) != 0; it falls through when v0(=ret(gthread_find)) == 0 (`bne` at 0x22fc).
  At `bne a5,a6,213c` at 0x234c, the branch is taken when a5(?) != a6(=0x3); it falls through when a5(?) == a6(=0x3) (`bne` at 0x234c).
  Returns with v0 = one of 0x0, 0x6, 0xc, 0x13 at 0x22c0 (`jr` at 0x22c0).
  Calls `curthreadhandle` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1fcc).
  Calls `psema` via direct with a0=sym(GfxBoardInitSema), a1=0x19, a2=?, a3=? (`jal` at 0x1fe0).
  Calls `gthread_find` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=?, a4=[sym(GfxDevLimit)] (`jal` at 0x2084).
  Calls `gthread_detach_list` via direct with a0=ret(gthread_find), a1=?, a2=?, a3=? (`jal` at 0x20b4).
  Calls `gthread_detach_group` via direct with a0=ret(gthread_find), a1=?, a2=?, a3=? (`jal` at 0x20bc).
  Calls `gthread_destroy` via direct with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=? (`jal` at 0x20c4).
  Calls `gthread_create` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=? (`jal` at 0x20cc).
  Calls `gfx_group_find` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=? (`jal` at 0x20dc).
  Calls `gthread_find_gfxp` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=? (`jal` at 0x20e8).
  Calls `kern_malloc` via direct with a0=0x80, a1=?, a2=?, a3=? (`jal` at 0x2148).
  Calls `kern_malloc` via direct with a0=0x80, a1=?, a2=?, a3=? (`jal` at 0x2158).
  Calls `bzero` via direct with a0=ret(kern_malloc), a1=0x80, a2=?, a3=? (`jal` at 0x2174).
  Calls `init_spinlock` via direct with a0=ret(kern_malloc), a1=sym(.rodata), a2=-0x1, a3=? (`jal` at 0x21a0).
  Calls `init_sema` via direct with a0=ret(kern_malloc)+80, a1=0x1, a2=sym(.rodata), a3=-0x1 (`jal` at 0x21c0).
  Calls `gthread_attach_list` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x21f8).
  Calls `setgfxsched_thread` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=? (`jal` at 0x2208).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=? (`jal` at 0x2268).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=? (`jal` at 0x22c8).
  Calls `cmn_err_tag` via direct with a0=0x84e, a1=0x4, a2=sym(.rodata), a3=? (`jal` at 0x22dc).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=? (`jal` at 0x22ec).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=? (`jal` at 0x230c).
  Calls `gthread_scan` via direct with a0=sym(gfx_conflict_scan), a1=sp-144, a2=?, a3=?, a4=one of 0x1, 0x2, a5=0x1 (`jal` at 0x233c).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?, a6=0x3 (`jal` at 0x2354).
  Calls `cmn_err_tag` via direct with a0=0x84f, a1=0x4, a2=sym(.rodata), a3=? (`jal` at 0x2368).
  Calls `gthread_attach_list` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x23a0).
  Calls `GfxListWriterLock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x23a8).
  Calls `GfxListWriterUnlock` via direct with a0=?, a1=ret(GfxListWriterLock), a2=?, a3=?, a6=0x1 (`jal` at 0x23c4).
  Calls `curthreadgroup_scan` via direct with a0=sym(irisgl_sproc_setup_scan), a1=sp-128, a2=?, a3=? (`jal` at 0x23e4).
  Calls `GfxListWriterUnlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x23f4).
  Calls `GfxListWriterLock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2404).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?, a4=[sym(GfxDevLimit)] (`jal` at 0x2414).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x2424).
- `gfxclose` (`usr/cpu/sysgen/IP30boot/gfxs.a(gfx.o)`, 0x249c, 1396 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `a2` to ? (base unknown); value [entry(sym(GfxDev))+24]:8 (`sd` at 0x2608).
  Stores 8 bytes from `zero` to [ret(gthread_find)+16]:8 +0x18; value 0x0 (`sd` at 0x26a8).
  Stores 4 bytes from `t0` to entry(sym(GfxDev)) +0x38 (`sw` at 0x26f0).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x2704).
  Stores 8 bytes from `a1` to ? (base unknown); value [entry(sym(GfxDev))+24]:8 (`sd` at 0x2780).
  Stores 4 bytes from `zero` to ? (base unknown); value 0x0 (`sw` at 0x2824).
  Stores 8 bytes from `zero` to entry(sym(GfxDev)) +0x18; value 0x0 (`sd` at 0x28bc).
  Stores 8 bytes from `s6` to entry(sym(GfxDev)) +0x10; value ret(curthreadhandle) (`sd` at 0x28c0).
  Stores 4 bytes from `zero` to entry(sym(GfxDev)) +0x68; value 0x0 (`sw` at 0x28c8).
  Stores 8 bytes from `s0` to [ret(gthread_create)+16]:8 +0x18; value entry(sym(GfxDev)) (`sd` at 0x28e4).
  Stores 8 bytes from `s6` to entry(sym(GfxDev)) +0x10; value ret(curthreadhandle) (`sd` at 0x2904).
  Stores 8 bytes from `a4` to entry(sym(GfxDev)) +0x18 (`sd` at 0x290c).
  Stores 8 bytes from `s0` to ? (base unknown); value entry(sym(GfxDev)) (`sd` at 0x2914).
  Stores 8 bytes from `a5` to ? (base unknown) (`sd` at 0x294c).
  At `beq s7,s5,24ec` at 0x24d4, the branch is taken when s7(?) == s5(=0x20000); it falls through when s7(?) != s5(=0x20000) (`beq` at 0x24d4).
  At `bne a1,zero,2568` at 0x251c, the branch is taken when a0(?) < a1(=[sym(GfxDevLimit)]) (signed); it falls through when a0(?) >= a1(=[sym(GfxDevLimit)]) (signed) (`bne` at 0x251c).
  At `beq s7,s5,2534` at 0x2524, the branch is taken when s7(?) == s5(=0x20000); it falls through when s7(?) != s5(=0x20000) (`beq` at 0x2524).
  At `beq s0,zero,2784` at 0x2578, the branch is taken when s0(=entry(sym(GfxDev))) == 0; it falls through when s0(=entry(sym(GfxDev))) != 0 (`beq` at 0x2578).
  At `beq s4,zero,2770` at 0x2580, the branch is taken when s4(=ret(gthread_find)) == 0; it falls through when s4(=ret(gthread_find)) != 0 (`beq` at 0x2580).
  At `beq v0,zero,2770` at 0x258c, the branch is taken when v0(=[ret(gthread_find)+16]:8) == 0; it falls through when v0(=[ret(gthread_find)+16]:8) != 0 (`beq` at 0x258c).
  At `beq s6,s3,2764` at 0x259c, the branch is taken when s6(=ret(curthreadhandle)) == s3(=[entry(sym(GfxDev))+16]:8); it falls through when s6(=ret(curthreadhandle)) != s3(=[entry(sym(GfxDev))+16]:8) (`beq` at 0x259c).
  At `beq s7,s5,286c` at 0x25a4, the branch is taken when s7(?) == s5(=0x20000); it falls through when s7(?) != s5(=0x20000) (`beq` at 0x25a4).
  At `beq s4,zero,28b0` at 0x25ac, the branch is taken when s4(=ret(gthread_find)) == 0; it falls through when s4(=ret(gthread_find)) != 0 (`beq` at 0x25ac).
  At `beq a0,zero,286c` at 0x25b8, the branch is taken when a0(=[ret(gthread_find)+24]:8) == 0; it falls through when a0(=[ret(gthread_find)+24]:8) != 0 (`beq` at 0x25b8).
  At `beq s4,zero,279c` at 0x25c8, the branch is taken when s4(=ret(gthread_find)) == 0; it falls through when s4(=ret(gthread_find)) != 0 (`beq` at 0x25c8).
  At `beq a1,zero,2738` at 0x25dc, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x25dc).
  At `beq s4,zero,2738` at 0x25e8, the branch is taken when s4(?) == 0; it falls through when s4(?) != 0 (`beq` at 0x25e8).
  At `bne s0,s2,2740` at 0x25f8, the branch is taken when s0(=entry(sym(GfxDev))) != s2(?); it falls through when s0(=entry(sym(GfxDev))) == s2(?) (`bne` at 0x25f8).
  At `beq s2,zero,2628` at 0x2610, the branch is taken when s2(?) == 0; it falls through when s2(?) != 0 (`beq` at 0x2610).
  At `beq a4,zero,2800` at 0x2620, the branch is taken when (a4(=[entry(sym(GfxDev))+4]) & 0x8) == 0; it falls through when (a4(=[entry(sym(GfxDev))+4]) & 0x8) != 0 (`beq` at 0x2620).
  At `beq s4,zero,2638` at 0x2628, the branch is taken when s4(?) == 0; it falls through when s4(?) != 0 (`beq` at 0x2628).
  At `beq v0,zero,2658` at 0x2644, the branch is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0x2644).
  At `beq a5,zero,284c` at 0x2650, the branch is taken when a5(?) == 0; it falls through when a5(?) != 0 (`beq` at 0x2650).
  At `beq s8,zero,26c8` at 0x2658, the branch is taken when s8(?) == 0; it falls through when s8(?) != 0 (`beq` at 0x2658).
  At `beq s3,zero,27c8` at 0x2674, the branch is taken when s3(=one of 0x0, 0x1) == 0; it falls through when s3(=one of 0x0, 0x1) != 0 (`beq` at 0x2674).
  At `beq v0,zero,27e0` at 0x267c, the branch is taken when v0(=ret(gthread_find)) == 0; it falls through when v0(=ret(gthread_find)) != 0 (`beq` at 0x267c).
  At `beq a6,zero,297c` at 0x268c, the branch is taken when (a6(=[ret(gthread_find)+8]) & 0x4) == 0; it falls through when (a6(=[ret(gthread_find)+8]) & 0x4) != 0 (`beq` at 0x268c).
  At `beq v0,zero,26ac` at 0x26a0, the branch is taken when v0(=[ret(gthread_find)+16]:8) == 0; it falls through when v0(=[ret(gthread_find)+16]:8) != 0 (`beq` at 0x26a0).
  At `beq a7,zero,27f0` at 0x26cc, the branch is taken when a7(?) == 0; it falls through when a7(?) != 0 (`beq` at 0x26cc).
  At `beq s7,s5,2714` at 0x2700, the branch is taken when s7(?) == s5(=0x20000); it falls through when s7(?) != s5(=0x20000) (`beq` at 0x2700).
  At `beq s3,zero,2730` at 0x2714, the branch is taken when s3(=one of 0x0, 0x1) == 0; it falls through when s3(=one of 0x0, 0x1) != 0 (`beq` at 0x2714).
  At `beq s0,s2,2600` at 0x2738, the branch is taken when s0(=entry(sym(GfxDev))) == s2(?); it falls through when s0(=entry(sym(GfxDev))) != s2(?) (`beq` at 0x2738).
  At `beq s2,zero,260c` at 0x2740, the branch is taken when s2(?) == 0; it falls through when s2(?) != 0 (`beq` at 0x2740).
  At `beq s0,v0,2778` at 0x274c, the branch is taken when s0(=entry(sym(GfxDev))) == v0(?); it falls through when s0(=entry(sym(GfxDev))) != v0(?) (`beq` at 0x274c).
  At `bne v0,zero,2748` at 0x2754, the branch is taken when v0(?) != 0; it falls through when v0(?) == 0 (`bne` at 0x2754).
  At `beq s7,s5,2794` at 0x2784, the branch is taken when s7(?) == s5(=0x20000); it falls through when s7(?) != s5(=0x20000) (`beq` at 0x2784).
  At `bne v0,zero,28bc` at 0x27a8, the branch is taken when v0(=ret(gthread_create)) != 0; it falls through when v0(=ret(gthread_create)) == 0 (`bne` at 0x27a8).
  At `beq s7,s5,27c0` at 0x27b0, the branch is taken when s7(?) == s5(=0x20000); it falls through when s7(?) != s5(=0x20000) (`beq` at 0x27b0).
  At `beq v0,zero,27e0` at 0x27c8, the branch is taken when v0(=ret(gthread_find)) == 0; it falls through when v0(=ret(gthread_find)) != 0 (`beq` at 0x27c8).
  At `bne a1,zero,2694` at 0x27d8, the branch is taken when (a1(=[ret(gthread_find)+8]) & 0x4) != 0; it falls through when (a1(=[ret(gthread_find)+8]) & 0x4) == 0 (`bne` at 0x27d8).
  At `beq v0,zero,2628` at 0x2804, the branch is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0x2804).
  At `bne a2,zero,2628` at 0x2810, the branch is taken when a2(?) != 0; it falls through when a2(?) == 0 (`bne` at 0x2810).
  At `beq v0,zero,28f0` at 0x2880, the branch is taken when v0(=ret(gthread_find)) == 0; it falls through when v0(=ret(gthread_find)) != 0 (`beq` at 0x2880).
  At `beq a0,zero,2974` at 0x288c, the branch is taken when a0(=[ret(gthread_find)+16]:8) == 0; it falls through when a0(=[ret(gthread_find)+16]:8) != 0 (`beq` at 0x288c).
  At `beq a1,zero,2964` at 0x2898, the branch is taken when a1(=[[ret(gthread_find)+16]:8+24]:8) == 0; it falls through when a1(=[[ret(gthread_find)+16]:8+24]:8) != 0 (`beq` at 0x2898).
  At `bne a1,zero,2928` at 0x28a0, the branch is taken when a1(=[[ret(gthread_find)+16]:8+24]:8) != 0; it falls through when a1(=[[ret(gthread_find)+16]:8+24]:8) == 0 (`bne` at 0x28a0).
  At `beq s4,zero,279c` at 0x28fc, the branch is taken when s4(=ret(gthread_find)) == 0; it falls through when s4(=ret(gthread_find)) != 0 (`beq` at 0x28fc).
  At `beq a1,zero,296c` at 0x2920, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x2920).
  At `bne s0,a1,2918` at 0x2928, the branch is taken when s0(=entry(sym(GfxDev))) != a1(?); it falls through when s0(=entry(sym(GfxDev))) == a1(?) (`bne` at 0x2928).
  At `beq a1,zero,296c` at 0x2930, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x2930).
  Returns with v0 = one of 0x0, 0x6, 0xc, 0x13 at 0x2560 (`jr` at 0x2560).
  Calls `curthreadhandle` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x24b8).
  Calls `psema` via direct with a0=sym(GfxBoardInitSema), a1=0x19, a2=?, a3=? (`jal` at 0x24e4).
  Calls `gthread_find` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=? (`jal` at 0x24fc).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=? (`jal` at 0x252c).
  Calls `GfxDetach` via direct with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=? (`jal` at 0x25d0).
  Calls `GfxListWriterLock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x25f0).
  Calls `GfxListWriterUnlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2630).
  Calls `freesema` via direct with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=? (`jal` at 0x2638).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2660).
  Calls `gthread_find` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x266c).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x2694).
  Calls `gthread_detach_list` via direct with a0=ret(gthread_find), a1=?, a2=?, a3=? (`jal` at 0x26ac).
  Calls `gthread_detach_group` via direct with a0=ret(gthread_find), a1=?, a2=?, a3=? (`jal` at 0x26b4).
  Calls `gthread_destroy` via direct with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=? (`jal` at 0x26bc).
  Calls `streams_lock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x26d4).
  Calls `gfxcleanup` via direct with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=? (`jal` at 0x26ec).
  Calls `streams_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x26f4).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=? (`jal` at 0x270c).
  Calls `curproc` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x271c).
  Calls `psignal` via direct with a0=ret(curproc), a1=0x6, a2=?, a3=? (`jal` at 0x2728).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=? (`jal` at 0x278c).
  Calls `gthread_create` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=? (`jal` at 0x279c).
  Calls `vsema` via direct with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=? (`jal` at 0x27b8).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x27e0).
  Calls `gthread_destroy` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x27f0).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2818).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x2828).
  Calls `gthread_detach_group` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2830).
  Calls `gthread_scan` via direct with a0=sym(irisgl_sproc_cleanup), a1=?, a2=?, a3=? (`jal` at 0x283c).
  Calls `cleargfxsched_thread` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x284c).
  Calls `gthread_detach_list` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2854).
  Calls `gthread_detach_group` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x285c).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x286c).
  Calls `gthread_find` via direct with a0=[entry(sym(GfxDev))+16]:8, a1=?, a2=?, a3=? (`jal` at 0x2878).
  Calls `gthread_attach_list` via direct with a0=ret(gthread_create), a1=0x0, a2=?, a3=? (`jal` at 0x28cc).
  Calls `setgfxsched_thread` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=[ret(gthread_create)+16]:8 (`jal` at 0x28e0).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x28f4).
  Calls `GfxListWriterLock` via direct with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=? (`jal` at 0x2938).
  Calls `GfxListWriterUnlock` via direct with a0=[ret(gthread_find)+16]:8, a1=ret(GfxListWriterLock), a2=?, a3=? (`jal` at 0x2954).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x297c).
  Calls `curproc` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2984).
  Calls `proc_name` via direct with a0=ret(curproc), a1=?, a2=?, a3=? (`jal` at 0x298c).
  Calls `curproc` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2994).
  Calls `proc_pid` via direct with a0=ret(curproc), a1=?, a2=?, a3=? (`jal` at 0x299c).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=ret(proc_name), a3=ret(proc_pid) (`jal` at 0x29b4).
  Calls `threadhandle_to_proc` via direct with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=? (`jal` at 0x29bc).
  Calls `proc_name` via direct with a0=ret(threadhandle_to_proc), a1=?, a2=?, a3=? (`jal` at 0x29c4).
  Calls `threadhandle_to_proc` via direct with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=? (`jal` at 0x29d0).
  Calls `proc_pid` via direct with a0=ret(threadhandle_to_proc), a1=?, a2=?, a3=? (`jal` at 0x29d8).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=ret(proc_name), a3=ret(proc_pid) (`jal` at 0x29ec).
  Calls `threadhandle_to_proc` via direct with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=? (`jal` at 0x29f4).
  Calls `psignal` via direct with a0=ret(threadhandle_to_proc), a1=0x9, a2=?, a3=? (`jal` at 0x2a00).
- `VEC_int` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x0, 556 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `a1` to abs 0xffffffffffffc018; value [[-0x3fd8]:8+152]:8 (`sd` at 0x58).
  Stores 1 bytes from `a1` to abs 0xffffffffffffc04f; value 0x4 (`sb` at 0x68).
  Stores 1 bytes from `k0` to abs 0xffffffffffffc04f; value 0x1 (`sb` at 0x120).
  Stores 1 bytes from `zero` to abs 0xffffffffffffc053; value 0x0 (`sb` at 0x168).
  Stores 1 bytes from `k0` to abs 0xffffffffffffc04f; value 0x3 (`sb` at 0x16c).
  Stores 1 bytes from `zero` to abs 0xffffffffffffc050; value 0x0 (`sb` at 0x194).
  Stores 8 bytes from `zero` to [-0x3fe0]:8 +0x228; value 0x0 (`sd` at 0x1a4).
  Stores 1 bytes from `k0` to abs 0xffffffffffffc04f; value 0x1 (`sb` at 0x1ac).
  At `beq at,zero,d4` at 0x38, the branch is taken when sp(=sp) >= k0(=[-0x3fd0]:8) (unsigned); it falls through when sp(=sp) < k0(=[-0x3fd0]:8) (unsigned) (`beq` at 0x38).
  At `beq at,zero,1fc` at 0x48, the branch is taken when k0(=[-0x3fd0]:8) >= s0(=[a0+224]:8) (signed); it falls through when k0(=[-0x3fd0]:8) < s0(=[a0+224]:8) (signed) (`beq` at 0x48).
  At `bne sp,k0,204` at 0xd4, the branch is taken when sp(?) != k0(?); it falls through when sp(?) == k0(?) (`bne` at 0xd4).
  At `beq a0,zero,140` at 0xe0, the branch is taken when (s0(?) & 0x18) == 0; it falls through when (s0(?) & 0x18) != 0 (`beq` at 0xe0).
  At `bne a0,zero,114` at 0xec, the branch is taken when a0(=[-0x3fb2]:1) != 0; it falls through when a0(=[-0x3fb2]:1) == 0 (`bne` at 0xec).
  At `bne a0,zero,114` at 0x104, the branch is taken when a0(=[[[-0x3fe8]:8+992]:8]) != 0; it falls through when a0(=[[[-0x3fe8]:8+992]:8]) == 0 (`bne` at 0x104).
  At `beq a0,zero,158` at 0x148, the branch is taken when a0(=[-0x3fe0]:8) == 0; it falls through when a0(=[-0x3fe0]:8) != 0 (`beq` at 0x148).
  At `beq k0,zero,1a0` at 0x15c, the branch is taken when k0(=[-0x3fad]:1) == 0; it falls through when k0(=[-0x3fad]:1) != 0 (`beq` at 0x15c).
  At `beq k0,zero,1fc` at 0x174, the branch is taken when k0(=[-0x3fb0]:1) == 0; it falls through when k0(=[-0x3fb0]:1) != 0 (`beq` at 0x174).
  At `beq s3,zero,1fc` at 0x1b0, the branch is taken when s3(?) == 0; it falls through when s3(?) != 0 (`beq` at 0x1b0).
  At `beq v0,zero,1fc` at 0x1bc, the branch is taken when v0(=[-0x3fb2]:1) == 0; it falls through when v0(=[-0x3fb2]:1) != 0 (`beq` at 0x1bc).
  Calls `intr` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3) (`jal` at 0x18).
  Calls `uli_setasids` via direct with a0=[[-0x3fd8]:8+170]:2, a1=[[-0x3fd8]:8+152]:8, a2=?, a3=? (`jal` at 0x5c).
  Calls `tfi_restore` via direct with a0=?, a1=0x4, a2=?, a3=? (`jal` at 0x6c).
  Calls `backtouser` via direct with a0=[[[-0x3fe8]:8+992]:8], a1=?, a2=?, a3=? (`j` at 0x10c).
  Calls `ktimer_switch` via direct with a0=[-0x3fe0]:8, a1=0x1, a2=?, a3=? (`jal` at 0x124).
  Calls `soft_trap` via direct with a0=a0 at entry (arg0), a1=0x84, a2=?, a3=[a0+280]:8 (`j` at 0x138).
  Calls `ktimer_switch` via direct with a0=[-0x3fe0]:8, a1=?, a2=?, a3=? (`jal` at 0x150).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x17c).
  Calls `resumeidle` via direct with a0=0x0, a1=?, a2=?, a3=? (`j` at 0x198).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1c4).
  Calls `kpswtch` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1dc).
  Calls `exception_leave` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x1fc).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.data), a2=?, a3=? (`jal` at 0x224).
- `tfp_special_int_exit` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x30, 428 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `a1` to abs 0xffffffffffffc018; value [[-0x3fd8]:8+152]:8 (`sd` at 0x58).
  Stores 1 bytes from `a1` to abs 0xffffffffffffc04f; value 0x4 (`sb` at 0x68).
  Stores 1 bytes from `k0` to abs 0xffffffffffffc04f; value 0x1 (`sb` at 0x120).
  Stores 1 bytes from `zero` to abs 0xffffffffffffc053; value 0x0 (`sb` at 0x168).
  Stores 1 bytes from `k0` to abs 0xffffffffffffc04f; value 0x3 (`sb` at 0x16c).
  Stores 1 bytes from `zero` to abs 0xffffffffffffc050; value 0x0 (`sb` at 0x194).
  Stores 8 bytes from `zero` to [-0x3fe0]:8 +0x228; value 0x0 (`sd` at 0x1a4).
  Stores 1 bytes from `k0` to abs 0xffffffffffffc04f; value 0x1 (`sb` at 0x1ac).
  At `beq at,zero,d4` at 0x38, the branch is taken when sp(=sp) >= k0(=[-0x3fd0]:8) (unsigned); it falls through when sp(=sp) < k0(=[-0x3fd0]:8) (unsigned) (`beq` at 0x38).
  At `beq at,zero,1fc` at 0x48, the branch is taken when k0(=[-0x3fd0]:8) >= s0(?) (signed); it falls through when k0(=[-0x3fd0]:8) < s0(?) (signed) (`beq` at 0x48).
  At `bne sp,k0,204` at 0xd4, the branch is taken when sp(?) != k0(?); it falls through when sp(?) == k0(?) (`bne` at 0xd4).
  At `beq a0,zero,140` at 0xe0, the branch is taken when (s0(?) & 0x18) == 0; it falls through when (s0(?) & 0x18) != 0 (`beq` at 0xe0).
  At `bne a0,zero,114` at 0xec, the branch is taken when a0(=[-0x3fb2]:1) != 0; it falls through when a0(=[-0x3fb2]:1) == 0 (`bne` at 0xec).
  At `bne a0,zero,114` at 0x104, the branch is taken when a0(=[[[-0x3fe8]:8+992]:8]) != 0; it falls through when a0(=[[[-0x3fe8]:8+992]:8]) == 0 (`bne` at 0x104).
  At `beq a0,zero,158` at 0x148, the branch is taken when a0(=[-0x3fe0]:8) == 0; it falls through when a0(=[-0x3fe0]:8) != 0 (`beq` at 0x148).
  At `beq k0,zero,1a0` at 0x15c, the branch is taken when k0(=[-0x3fad]:1) == 0; it falls through when k0(=[-0x3fad]:1) != 0 (`beq` at 0x15c).
  At `beq k0,zero,1fc` at 0x174, the branch is taken when k0(=[-0x3fb0]:1) == 0; it falls through when k0(=[-0x3fb0]:1) != 0 (`beq` at 0x174).
  At `beq s3,zero,1fc` at 0x1b0, the branch is taken when s3(?) == 0; it falls through when s3(?) != 0 (`beq` at 0x1b0).
  At `beq v0,zero,1fc` at 0x1bc, the branch is taken when v0(=[-0x3fb2]:1) == 0; it falls through when v0(=[-0x3fb2]:1) != 0 (`beq` at 0x1bc).
  Calls `uli_setasids` via direct with a0=[[-0x3fd8]:8+170]:2, a1=[[-0x3fd8]:8+152]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x5c).
  Calls `tfi_restore` via direct with a0=?, a1=0x4, a2=?, a3=? (`jal` at 0x6c).
  Calls `backtouser` via direct with a0=[[[-0x3fe8]:8+992]:8], a1=?, a2=?, a3=? (`j` at 0x10c).
  Calls `ktimer_switch` via direct with a0=[-0x3fe0]:8, a1=0x1, a2=?, a3=? (`jal` at 0x124).
  Calls `soft_trap` via direct with a0=?, a1=0x84, a2=?, a3=? (`j` at 0x138).
  Calls `ktimer_switch` via direct with a0=[-0x3fe0]:8, a1=?, a2=?, a3=? (`jal` at 0x150).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x17c).
  Calls `resumeidle` via direct with a0=0x0, a1=?, a2=?, a3=? (`j` at 0x198).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1c4).
- `kpreemption` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1dc, 80 bytes) Inferred.
  Role: unknown.
  Range 0x204 0x208 0x20c 0x210 0x214 0x218 0x21c 0x220 0x224 0x228 is not reached from the entry.
  Calls `kpswtch` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1dc).
  Calls `exception_leave` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x1fc).
- `arcs_write` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x22c, 88 bytes) Inferred.
  Role: unknown.
  At `beq at,zero,268` at 0x23c, the branch is taken when at(=[sym(_prom_cleared)]) == 0; it falls through when at(=[sym(_prom_cleared)]) != 0 (`beq` at 0x23c).
  Returns with v0 = ? at 0x260 (`jr` at 0x260).
  Calls `ioc_console_write` via direct with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=a3 at entry (arg3), a6=a2 at entry (arg2) (`jal` at 0x24c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=a2 at entry (arg2) (`jalr` at 0x274).
- `arcs_load` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x284, 96 bytes) Inferred.
  Role: unknown.
  At `bne at,zero,2c4` at 0x29c, the branch is taken when at(=[sym(_prom_cleared)]) != 0; it falls through when at(=[sym(_prom_cleared)]) == 0 (`bne` at 0x29c).
  Returns with v0 = ret(?) at 0x2bc (`jr` at 0x2bc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2b0).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2c8).
- `prom_reinit` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x328, 88 bytes) Inferred.
  Role: unknown.
  At `bne at,v0,360` at 0x334, the branch is taken when at(=[-0x3c60]:2) != v0(=[sym(master_procid)]:2); it falls through when at(=[-0x3c60]:2) == v0(=[sym(master_procid)]:2) (`bne` at 0x334).
  At `beq v1,zero,364` at 0x350, the branch is taken when v1(=[sym(power_off_flag)]) == 0; it falls through when v1(=[sym(power_off_flag)]) != 0 (`beq` at 0x350).
  Returns with v0 = ret(?) at 0x378 (`jr` at 0x378).
  Calls `silence_bell` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x33c).
  Calls `set_autopoweron` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x344).
  Calls `cpu_soft_powerdown` via direct with a0=0xa800000000001040, a1=?, a2=?, a3=? (`jal` at 0x358).
  Calls `(unknown callee)` via register with a0=[[0xa800000000001040]:8+40]:8, a1=?, a2=?, a3=? (`jalr` at 0x36c).
- `arcs_setuproot` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x380, 72 bytes) Inferred.
  Role: unknown.
  At `beq v0,zero,3c0` at 0x394, the branch is taken when v0(=ret(kopt_find)) == 0; it falls through when v0(=ret(kopt_find)) != 0 (`beq` at 0x394).
  At `beq v0,zero,3bc` at 0x3a8, the branch is taken when v0(=ret(arcs_to_dsk)) == 0; it falls through when v0(=ret(arcs_to_dsk)) != 0 (`beq` at 0x3a8).
  Returns with v0 = ? at 0x3c0 (`jr` at 0x3c0).
  Calls `kopt_find` via direct with a0=sym(.rodata), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x38c).
  Calls `arcs_to_dsk [0x458]` via direct with a0=ret(kopt_find), a1=sp-32, a2=?, a3=? (`jal` at 0x3a0).
  Calls `kopt_set` via direct with a0=sym(.rodata), a1=sp-32, a2=?, a3=? (`jal` at 0x3b4).
- `arcs_getenv` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x3c8, 40 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ret(?) at 0x3e8 (`jr` at 0x3e8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x3dc).
- `arcs_nvram_tab` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x3f0, 40 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ret(?) at 0x410 (`jr` at 0x410).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x404).
- `arcs_eaddr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x418, 36 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ret(bcopy) at 0x434 (`jr` at 0x434).
  Calls `bcopy` via direct with a0=sym(eaddr), a1=a0 at entry (arg0), a2=0x6, a3=a3 at entry (arg3) (`jal` at 0x428).
- `arcs_to_dsk` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x458, 584 bytes) Inferred.
  Role: unknown.
  At `beq v0,zero,568` at 0x494, the branch is taken when v0(=ret(strncmp)) == 0; it falls through when v0(=ret(strncmp)) != 0 (`beq` at 0x494).
  At `beq a1,zero,650` at 0x4a0, the branch is taken when a1(=[a0]:1) == 0; it falls through when a1(=[a0]:1) != 0 (`beq` at 0x4a0).
  At `beq v0,zero,658` at 0x4bc, the branch is taken when v0(=ret(strchr)) == 0; it falls through when v0(=ret(strchr)) != 0 (`beq` at 0x4bc).
  At `beq a2,zero,600` at 0x4cc, the branch is taken when a2(=[ret(strchr)+1]:1) == 0; it falls through when a2(=[ret(strchr)+1]:1) != 0 (`beq` at 0x4cc).
  At `beq v0,zero,628` at 0x4e0, the branch is taken when v0(=ret(strchr)) == 0; it falls through when v0(=ret(strchr)) != 0 (`beq` at 0x4e0).
  At `beq v1,zero,628` at 0x4f8, the branch is taken when v1(=[ret(strchr)+1]:1) == 0; it falls through when v1(=[ret(strchr)+1]:1) != 0 (`beq` at 0x4f8).
  At `bne v1,zero,4b0` at 0x504, the branch is taken when v0(?) < 0x4 (signed); it falls through when v0(?) >= 0x4 (signed) (`bne` at 0x504).
  At `beq v0,zero,660` at 0x51c, the branch is taken when v0(=ret(strncmp)) == 0; it falls through when v0(=ret(strncmp)) != 0 (`beq` at 0x51c).
  At `beq v0,zero,670` at 0x538, the branch is taken when v0(=ret(strncmp)) == 0; it falls through when v0(=ret(strncmp)) != 0 (`beq` at 0x538).
  At `bne v0,zero,4b4` at 0x550, the branch is taken when v0(=ret(strncmp)) != 0; it falls through when v0(=ret(strncmp)) == 0 (`bne` at 0x550).
  At `beq v0,zero,680` at 0x574, the branch is taken when v0(=ret(strchr)) == 0; it falls through when v0(=ret(strchr)) != 0 (`beq` at 0x574).
  At `beq a1,zero,680` at 0x580, the branch is taken when a1(=[ret(strchr)+1]:1) == 0; it falls through when a1(=[ret(strchr)+1]:1) != 0 (`beq` at 0x580).
  At `beq v0,zero,688` at 0x5a0, the branch is taken when v0(=ret(strchr)) == 0; it falls through when v0(=ret(strchr)) != 0 (`beq` at 0x5a0).
  At `beq a2,zero,688` at 0x5ac, the branch is taken when a2(=[ret(strchr)+1]:1) == 0; it falls through when a2(=[ret(strchr)+1]:1) != 0 (`beq` at 0x5ac).
  At `beq v0,zero,690` at 0x5cc, the branch is taken when v0(=ret(strchr)) == 0; it falls through when v0(=ret(strchr)) != 0 (`beq` at 0x5cc).
  At `beq a3,zero,690` at 0x5d8, the branch is taken when a3(=[ret(strchr)+1]:1) == 0; it falls through when a3(=[ret(strchr)+1]:1) != 0 (`beq` at 0x5d8).
  At `beq v0,zero,698` at 0x5f8, the branch is taken when v0(=ret(strchr)) == 0; it falls through when v0(=ret(strchr)) != 0 (`beq` at 0x5f8).
  At `beq s3,a4,650` at 0x600, the branch is taken when s3(?) == a4(=-0x1); it falls through when s3(?) != a4(=-0x1) (`beq` at 0x600).
  Returns with v0 = one of 0x0, 0x1 at 0x648 (`jr` at 0x648).
  Calls `strncmp` via direct with a0=sym(.rodata), a1=a0 at entry (arg0), a2=0x4, a3=a3 at entry (arg3) (`jal` at 0x478).
  Calls `strchr` via direct with a0=ret(strchr)+1, a1=0x29, a2=?, a3=? (`jal` at 0x4b4).
  Calls `strchr` via direct with a0=?, a1=0x28, a2=?, a3=? (`jal` at 0x4d8).
  Calls `strncmp` via direct with a0=sym(.rodata), a1=?, a2=0x4, a3=? (`jal` at 0x514).
  Calls `strncmp` via direct with a0=sym(.rodata), a1=?, a2=0x4, a3=? (`jal` at 0x530).
  Calls `strncmp` via direct with a0=sym(.rodata), a1=?, a2=0x4, a3=? (`jal` at 0x548).
  Calls `atoi` via direct with a0=ret(strchr)+1, a1=?, a2=?, a3=? (`jal` at 0x558).
  Calls `strchr` via direct with a0=a0 at entry (arg0), a1=0x28, a2=?, a3=? (`jal` at 0x56c).
  Calls `atoi` via direct with a0=ret(strchr)+1, a1=[ret(strchr)+1]:1, a2=?, a3=? (`jal` at 0x588).
  Calls `strchr` via direct with a0=ret(strchr)+1, a1=0x2c, a2=?, a3=? (`jal` at 0x598).
  Calls `atoi` via direct with a0=ret(strchr)+1, a1=?, a2=[ret(strchr)+1]:1, a3=? (`jal` at 0x5b4).
  Calls `strchr` via direct with a0=ret(strchr)+1, a1=0x2c, a2=?, a3=? (`jal` at 0x5c4).
  Calls `atoi` via direct with a0=ret(strchr)+1, a1=?, a2=?, a3=[ret(strchr)+1]:1 (`jal` at 0x5e0).
  Calls `strchr` via direct with a0=a0 at entry (arg0), a1=0x29, a2=?, a3=? (`jal` at 0x5f0).
  Calls `sprintf` via direct with a0=a1 at entry (arg1), a1=sym(.rodata), a2=?, a3=? (`jal` at 0x618).
  Calls `atoi` via direct with a0=ret(strchr)+1, a1=?, a2=?, a3=? (`jal` at 0x660).
  Calls `atoi` via direct with a0=ret(strchr)+1, a1=?, a2=?, a3=? (`jal` at 0x670).
- `exception_exit` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6a0, 728 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `v0` to [-0x3000]:8 +0x48; value ret(getpc) (`sd` at 0x6c8).
  Stores 8 bytes from `k0` to [-0x3000]:8 +0x0 (`sd` at 0x6d4).
  Stores 8 bytes from `k0` to [-0x3000]:8 +0x8 (`sd` at 0x6dc).
  Stores 8 bytes from `k0` to [-0x3000]:8 +0x10 (`sd` at 0x6e4).
  Stores 8 bytes from `k0` to [-0x3000]:8 +0x18 (`sd` at 0x6ec).
  Stores 8 bytes from `ra` to [-0x3000]:8 +0x20; value ra (`sd` at 0x6f0).
  Stores 8 bytes from `k0` to [-0x3000]:8 +0x28; value [-0x3fe8]:8 (`sd` at 0x6f8).
  Stores 8 bytes from `sp` to [-0x3000]:8 +0x30; value sp (`sd` at 0x6fc).
  Stores 8 bytes from `k0` to [-0x3000]:8 +0x38; value 0x5 (`sd` at 0x704).
  Stores 4 bytes from `k0` to abs 0xffffffffffffd008; value [-0x2ff8]+1 (`sw` at 0x710).
  Stores 8 bytes from `k0` to [-0x3000]:8 +0x40; value [-0x2ff8]+1 (`sd` at 0x714).
  Stores 8 bytes from `at` to [-0x3000]:8 +0x50 (`sd` at 0x728).
  Stores 8 bytes from `v0` to [-0x3000]:8 +0x58 (`sd` at 0x72c).
  Stores 8 bytes from `v1` to [-0x3000]:8 +0x60 (`sd` at 0x730).
  Stores 8 bytes from `a0` to [-0x3000]:8 +0x68 (`sd` at 0x734).
  Stores 8 bytes from `a1` to [-0x3000]:8 +0x70 (`sd` at 0x738).
  Stores 8 bytes from `a2` to [-0x3000]:8 +0x78 (`sd` at 0x73c).
  Stores 8 bytes from `a3` to [-0x3000]:8 +0x80 (`sd` at 0x740).
  Stores 8 bytes from `a4` to [-0x3000]:8 +0x88 (`sd` at 0x744).
  Stores 8 bytes from `a5` to [-0x3000]:8 +0x90 (`sd` at 0x748).
  Stores 8 bytes from `a6` to [-0x3000]:8 +0x98 (`sd` at 0x74c).
  Stores 8 bytes from `a7` to [-0x3000]:8 +0xa0 (`sd` at 0x750).
  Stores 8 bytes from `t0` to [-0x3000]:8 +0xa8 (`sd` at 0x754).
  Stores 8 bytes from `t1` to [-0x3000]:8 +0xb0 (`sd` at 0x758).
  Stores 8 bytes from `t2` to [-0x3000]:8 +0xb8 (`sd` at 0x75c).
  Stores 8 bytes from `t3` to [-0x3000]:8 +0xc0 (`sd` at 0x760).
  Stores 8 bytes from `s0` to [-0x3000]:8 +0xc8; value s0 (`sd` at 0x764).
  Stores 8 bytes from `s1` to [-0x3000]:8 +0xd0; value s1 (`sd` at 0x768).
  Stores 8 bytes from `s2` to [-0x3000]:8 +0xd8; value s2 (`sd` at 0x76c).
  Stores 8 bytes from `s3` to [-0x3000]:8 +0xe0; value s3 (`sd` at 0x770).
  Stores 8 bytes from `s4` to [-0x3000]:8 +0xe8; value s4 (`sd` at 0x774).
  Stores 8 bytes from `s5` to [-0x3000]:8 +0xf0; value s5 (`sd` at 0x778).
  Stores 8 bytes from `s6` to [-0x3000]:8 +0xf8; value s6 (`sd` at 0x77c).
  Stores 8 bytes from `s7` to [-0x3000]:8 +0x100; value s7 (`sd` at 0x780).
  Stores 8 bytes from `t8` to [-0x3000]:8 +0x108 (`sd` at 0x784).
  Stores 8 bytes from `t9` to [-0x3000]:8 +0x110 (`sd` at 0x788).
  Stores 8 bytes from `gp` to [-0x3000]:8 +0x118; value gp (`sd` at 0x78c).
  Stores 8 bytes from `s8` to [-0x3000]:8 +0x120; value s8 (`sd` at 0x790).
  Stores 8 bytes from `a0` to [-0x3000]:8 +0x128; value 0xbad0bad0bad0bad0 (`sd` at 0x800).
  Stores 8 bytes from `a0` to ([-0x3000]:8+296 + [-0x2fec]-8) +0x0; value 0xbad1bad1bad1bad1 (`sd` at 0x828).
  Stores 8 bytes from `k1` to abs 0xffffffffffffd000 (`sd` at 0x8c0).
  At `beq k0,zero,8c4` at 0x6ac, the branch is taken when (k0(=[-0x2ff4]) & 0x1) == 0; it falls through when (k0(=[-0x2ff4]) & 0x1) != 0 (`beq` at 0x6ac).
  At `beq k0,zero,8a4` at 0x720, the branch is taken when (k0(=[-0x2ff4]) & 0x2) == 0; it falls through when (k0(=[-0x2ff4]) & 0x2) != 0 (`beq` at 0x720).
  At `beq k0,zero,8a4` at 0x79c, the branch is taken when (k0(=[-0x2ff4]) & 0x4) == 0; it falls through when (k0(=[-0x2ff4]) & 0x4) != 0 (`beq` at 0x79c).
  At `bne a1,a2,7e4` at 0x7b8, the branch is taken when a1(?) != a2(=-0x8000); it falls through when a1(?) == a2(=-0x8000) (`bne` at 0x7b8).
  At `bne k0,zero,8c0` at 0x8b4, the branch is taken when k1(=([-0x3000]:8 + [-0x2ff0])) < k0(=-0x1001) (signed); it falls through when k1(=([-0x3000]:8 + [-0x2ff0])) >= k0(=-0x1001) (signed) (`bne` at 0x8b4).
  At `beq k0,zero,910` at 0x8cc, the branch is taken when (s0(?) & 0x18) == 0; it falls through when (s0(?) & 0x18) != 0 (`beq` at 0x8cc).
  At `bne k0,zero,900` at 0x8d8, the branch is taken when k0(=[-0x3fb2]:1) != 0; it falls through when k0(=[-0x3fb2]:1) == 0 (`bne` at 0x8d8).
  At `bne k0,zero,900` at 0x8f0, the branch is taken when k0(=[[[-0x3fe8]:8+992]:8]) != 0; it falls through when k0(=[[[-0x3fe8]:8+992]:8]) == 0 (`bne` at 0x8f0).
  Calls `getpc` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x6b8).
  Calls `bcopy` via direct with a0=([[-0x3000]:8+48]:8 + [-0x2fec]), a1=[-0x3000]:8+296, a2=[-0x2fec], a3=? (`jal` at 0x7d0).
  Calls `backtouser` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x8f8).
  Calls `soft_trap` via direct with a0=?, a1=0x84, a2=?, a3=? (`j` at 0x908).
  Calls `tfi_restore` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x910).
- `exception_leave` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x910, 112 bytes) Inferred.
  Role: unknown.
  Calls `tfi_restore` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x910).
- `unmaptlb` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x980, 120 bytes) Inferred.
  Role: unknown.
  At `beq zero,a0,9a0` at 0x98c, the branch is taken when a0 == 0; it falls through when a0 != 0 (`beq` at 0x98c).
  At `bltz t3,9e8` at 0x9c4, the branch is taken when t3(?) < 0 (signed); it falls through when t3(?) >= 0 (signed) (`bltz` at 0x9c4).
  Returns with v0 = ? at 0x9f0 (`jr` at 0x9f0).
- `invaltlb` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x9f8, 60 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0xa2c (`jr` at 0xa2c).
- `tlbwired` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa34, 104 bytes) Inferred.
  Role: unknown.
  At `beq zero,a1,a58` at 0xa44, the branch is taken when a1 == 0; it falls through when a1 != 0 (`beq` at 0xa44).
  Returns with v0 = ? at 0xa94 (`jr` at 0xa94).
- `tlbdropin` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa9c, 220 bytes) Inferred.
  Role: unknown.
  At `beq zero,a0,ad0` at 0xaac, the branch is taken when a0 == 0; it falls through when a0 != 0 (`beq` at 0xaac).
  At `bne a0,at,ac4` at 0xab4, the branch is taken when a0 != at(=0x1); it falls through when a0 == at(=0x1) (`bne` at 0xab4).
  At `bltz t3,b44` at 0xaf0, the branch is taken when t3(?) < 0 (signed); it falls through when t3(?) >= 0 (signed) (`bltz` at 0xaf0).
  At `beq` at 0xafc (target 0xb18), the branch is taken when t2(?) == 0; it falls through when t2(?) != 0 (`beq` at 0xafc).
  At `beq t2,zero,b5c` at 0xb44, the branch is taken when t2(?) == 0; it falls through when t2(?) != 0 (`beq` at 0xb44).
  Returns with v0 = ? at 0xb3c (`jr` at 0xb3c).
  Returns with v0 = 0x0 at 0xb70 (`jr` at 0xb70).
- `tlbdrop2in` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb78, 92 bytes) Inferred.
  Role: unknown.
  At `bltz t3,bc0` at 0xbac, the branch is taken when t3(?) < 0 (signed); it falls through when t3(?) >= 0 (signed) (`bltz` at 0xbac).
  Returns with v0 = 0x0 at 0xbcc (`jr` at 0xbcc).
- `tlbdropin_lpgs` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xbd4, 124 bytes) Inferred.
  Role: unknown.
  At `bltz t8,c38` at 0xc24, the branch is taken when t8(?) < 0 (signed); it falls through when t8(?) >= 0 (signed) (`bltz` at 0xc24).
  Returns with v0 = ? at 0xc48 (`jr` at 0xc48).
- `flush_tlb` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc50, 72 bytes) Inferred.
  Role: unknown.
  At `bne a0,v1,c7c` at 0xc84, the branch is taken when a0(?) != v1(=0x40); it falls through when a0(?) == v1(=0x40) (`bne` at 0xc84).
  Returns with v0 = ? at 0xc90 (`jr` at 0xc90).
- `set_tlbpid` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xc98, 76 bytes) Inferred.
  Role: unknown.
  At `bne at,zero,cac` at 0xcd0, the branch is taken when t3(=0x1) < t1(?) (signed); it falls through when t3(=0x1) >= t1(?) (signed) (`bne` at 0xcd0).
  Returns with v0 = ? at 0xcdc (`jr` at 0xcdc).
- `tlbfind` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xce4, 104 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t3` to a2 (arg2 at entry) +0x0 (`sd` at 0xd1c).
  Stores 8 bytes from `t3` to a3 (arg3 at entry) +0x0 (`sd` at 0xd24).
  At `bltz v0,d30` at 0xd0c, the branch is taken when v0(?) < 0 (signed); it falls through when v0(?) >= 0 (signed) (`bltz` at 0xd0c).
  Returns with v0 = ? at 0xd44 (`jr` at 0xd44).
- `tlbgetpid` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd4c, 12 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0xd50 (`jr` at 0xd50).
- `tlbgetent` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xd58, 72 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t0` to a1 (arg1 at entry) +0x0 (`sd` at 0xd74).
  Stores 4 bytes from `t0` to a2 (arg2 at entry) +0x0 (`sw` at 0xd7c).
  Stores 4 bytes from `t0` to a3 (arg3 at entry) +0x0 (`sw` at 0xd84).
  Returns with v0 = ? at 0xd98 (`jr` at 0xd98).
- `getrand` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xda0, 12 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0xda4 (`jr` at 0xda4).
- `tlbgetrand` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xda0, 12 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0xda4 (`jr` at 0xda4).
- `tlb_probe` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xdac, 120 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t1` to a2 (arg2 at entry) +0x0 (`sw` at 0xde8).
  At `bltz t1,e0c` at 0xdd8, the branch is taken when t1(?) < 0 (signed); it falls through when t1(?) >= 0 (signed) (`bltz` at 0xdd8).
  At `bne t1,zero,e0c` at 0xe00, the branch is taken when (t1(?) & a1) != 0; it falls through when (t1(?) & a1) == 0 (`bne` at 0xe00).
  Returns with v0 = ? at 0xe1c (`jr` at 0xe1c).
- `save` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xe30, 60 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `ra` to a0 (arg0 at entry) +0x50; value ra (`sd` at 0xe30).
  Stores 8 bytes from `sp` to a0 (arg0 at entry) +0x40; value sp (`sd` at 0xe34).
  Stores 8 bytes from `s8` to a0 (arg0 at entry) +0x48; value s8 (`sd` at 0xe38).
  Stores 8 bytes from `s0` to a0 (arg0 at entry) +0x0; value s0 (`sd` at 0xe40).
  Stores 8 bytes from `s1` to a0 (arg0 at entry) +0x8; value s1 (`sd` at 0xe44).
  Stores 8 bytes from `s2` to a0 (arg0 at entry) +0x10; value s2 (`sd` at 0xe48).
  Stores 8 bytes from `s3` to a0 (arg0 at entry) +0x18; value s3 (`sd` at 0xe4c).
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x58 (`sd` at 0xe50).
  Stores 8 bytes from `s4` to a0 (arg0 at entry) +0x20; value s4 (`sd` at 0xe58).
  Stores 8 bytes from `s5` to a0 (arg0 at entry) +0x28; value s5 (`sd` at 0xe5c).
  Stores 8 bytes from `s6` to a0 (arg0 at entry) +0x30; value s6 (`sd` at 0xe60).
  Stores 8 bytes from `s7` to a0 (arg0 at entry) +0x38; value s7 (`sd` at 0xe68).
  Returns with v0 = 0x0 at 0xe64 (`jr` at 0xe64).
- `resume` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xe6c, 212 bytes) Inferred.
  Role: unknown.
  Stores 1 bytes from `t2` to abs 0xffffffffffffc04f; value 0x1 (`sb` at 0xe88).
  Stores 1 bytes from `zero` to a1 (arg1 at entry) +0x72; value 0x0 (`sb` at 0xe8c).
  Stores 1 bytes from `t1` to a0 (arg0 at entry) +0x72; value 0x1 (`sb` at 0xe90).
  Stores 8 bytes from `a0` to abs 0xffffffffffffc020; value a0 (`sd` at 0xe94).
  Stores 8 bytes from `a0` to abs 0xffffffffffffc018; value a0 (`sd` at 0xe98).
  Stores 8 bytes from `t1` to abs 0xffffffffffffc4b0; value [a0+1000]:8 (`sd` at 0xea0).
  At `beq a1,zero,e90` at 0xe84, the branch is taken when a1 == 0; it falls through when a1 != 0 (`beq` at 0xe84).
  At `bne t3,s0,ed0` at 0xefc, the branch is taken when t3(?) != s0(=0x6); it falls through when t3(?) == s0(=0x6) (`bne` at 0xefc).
  Returns with v0 = 0x1 at 0xf38 (`jr` at 0xf38).
- `resumethread` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xf40, 104 bytes) Inferred.
  Role: unknown.
  Stores 1 bytes from `t1` to a0 (arg0 at entry) +0x72; value 0x1 (`sb` at 0xf54).
  Stores 8 bytes from `a0` to abs 0xffffffffffffc020; value a0 (`sd` at 0xf58).
  Stores 8 bytes from `zero` to abs 0xffffffffffffc018; value 0x0 (`sd` at 0xf5c).
  Stores 1 bytes from `t2` to abs 0xffffffffffffc04f; value 0x1 (`sb` at 0xf60).
  Stores 1 bytes from `zero` to a1 (arg1 at entry) +0x72; value 0x0 (`sb` at 0xf70).
  At `beq a0,a1,f74` at 0xf64, the branch is taken when a0 == a1; it falls through when a0 != a1 (`beq` at 0xf64).
  At `bnel a1,zero,f74` at 0xf6c, the branch is taken when a1 != 0; it falls through when a1 == 0 (`bnel` at 0xf6c).
- `restartxthread` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xfa8, 64 bytes) Inferred.
  Role: unknown.
  Stores 1 bytes from `t1` to a0 (arg0 at entry) +0x72; value 0x1 (`sb` at 0xfbc).
  Stores 8 bytes from `a0` to abs 0xffffffffffffc020; value a0 (`sd` at 0xfc0).
  Stores 8 bytes from `zero` to abs 0xffffffffffffc018; value 0x0 (`sd` at 0xfc4).
  Stores 1 bytes from `t2` to abs 0xffffffffffffc04f; value 0x1 (`sb` at 0xfc8).
  Stores 1 bytes from `zero` to a2 (arg2 at entry) +0x72; value 0x0 (`sb` at 0xfd8).
  At `beq a0,a2,fdc` at 0xfcc, the branch is taken when a0 == a2; it falls through when a0 != a2 (`beq` at 0xfcc).
  At `bnel a2,zero,fdc` at 0xfd4, the branch is taken when a2 != 0; it falls through when a2 == 0 (`bnel` at 0xfd4).
  Calls `xthread_prologue` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xfe0).
- `loopxthread` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xfe8, 8 bytes) Inferred.
  Role: unknown.
  Calls `xthread_loop_prologue` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xfe8).
- `sthread_launch` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xff0, 36 bytes) Inferred.
  Role: unknown.
  Calls `spl0` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xff0).
  Calls `(unknown callee)` via register with a0=s0 at entry, a1=s1 at entry, a2=s2 at entry, a3=s3 at entry (`jalr` at 0x1004).
  Calls `sthread_exit` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100c).
- `p0_launch` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1014, 24 bytes) Inferred.
  Role: unknown.
  Calls `spl0` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1014).
  Calls `p0` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x101c).
  Calls `proc1` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x1024).
- `resumeidle` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x102c, 68 bytes) Inferred.
  Role: unknown.
  Stores 1 bytes from `t1` to abs 0xffffffffffffc04f; value 0x3 (`sb` at 0x103c).
  Stores 1 bytes from `zero` to a0 (arg0 at entry) +0x72; value 0x0 (`sb` at 0x104c).
  Stores 8 bytes from `zero` to abs 0xffffffffffffc020; value 0x0 (`sd` at 0x1050).
  Stores 8 bytes from `zero` to abs 0xffffffffffffc018; value 0x0 (`sd` at 0x1054).
  At `beq a0,zero,1050` at 0x1044, the branch is taken when a0 == 0; it falls through when a0 != 0 (`beq` at 0x1044).
  Calls `idle` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x105c).
  Calls `resumenewthread` via direct with a0=ret(idle), a1=0x0, a2=?, a3=? (`jal` at 0x1068).
- `toidlestk` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1070, 60 bytes) Inferred.
  Role: unknown.
  Stores 1 bytes from `t1` to abs 0xffffffffffffc04f; value 0x3 (`sb` at 0x1084).
  Stores 8 bytes from `zero` to abs 0xffffffffffffc020; value 0x0 (`sd` at 0x1088).
  Stores 8 bytes from `zero` to abs 0xffffffffffffc018; value 0x0 (`sd` at 0x108c).
  Stores 1 bytes from `zero` to a0 (arg0 at entry) +0x72; value 0x0 (`sb` at 0x1090).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x10a4).
- `setjmp` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x10ac, 60 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `ra` to a0 (arg0 at entry) +0x50; value ra (`sd` at 0x10ac).
  Stores 8 bytes from `sp` to a0 (arg0 at entry) +0x40; value sp (`sd` at 0x10b0).
  Stores 8 bytes from `s8` to a0 (arg0 at entry) +0x48; value s8 (`sd` at 0x10b4).
  Stores 8 bytes from `s0` to a0 (arg0 at entry) +0x0; value s0 (`sd` at 0x10b8).
  Stores 8 bytes from `s1` to a0 (arg0 at entry) +0x8; value s1 (`sd` at 0x10bc).
  Stores 8 bytes from `s2` to a0 (arg0 at entry) +0x10; value s2 (`sd` at 0x10c0).
  Stores 8 bytes from `s3` to a0 (arg0 at entry) +0x18; value s3 (`sd` at 0x10c4).
  Stores 8 bytes from `s4` to a0 (arg0 at entry) +0x20; value s4 (`sd` at 0x10c8).
  Stores 8 bytes from `s5` to a0 (arg0 at entry) +0x28; value s5 (`sd` at 0x10cc).
  Stores 8 bytes from `s6` to a0 (arg0 at entry) +0x30; value s6 (`sd` at 0x10d0).
  Stores 8 bytes from `s7` to a0 (arg0 at entry) +0x38; value s7 (`sd` at 0x10d4).
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x58 (`sd` at 0x10dc).
  Returns with v0 = 0x0 at 0x10e0 (`jr` at 0x10e0).
- `longjmp` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x10e8, 60 bytes) Inferred.
  Role: unknown.
  Returns with v0 = 0x1 at 0x111c (`jr` at 0x111c).
- `ackkgclock` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1180, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x1180 (`jr` at 0x1180).
- `allowintrs` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1180, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x1180 (`jr` at 0x1180).
- `apsfail` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1180, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x1180 (`jr` at 0x1180).
- `bump_leds` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1180, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x1180 (`jr` at 0x1180).
- `check_delay_iflush` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1180, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x1180 (`jr` at 0x1180).
- `disallowboot` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1180, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x1180 (`jr` at 0x1180).
- `dummy_func` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1180, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x1180 (`jr` at 0x1180).
- `heart_dcache_inval` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1180, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x1180 (`jr` at 0x1180).
- `heart_dcache_wb_inval` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1180, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x1180 (`jr` at 0x1180).
- `heart_write_dcache_inval` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1180, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x1180 (`jr` at 0x1180).
- `heart_write_dcache_wb_inval` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1180, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x1180 (`jr` at 0x1180).
- `stopkgclock` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1180, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x1180 (`jr` at 0x1180).
- `vme_init` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1180, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x1180 (`jr` at 0x1180).
- `vme_ivec_init` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1180, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x1180 (`jr` at 0x1180).
- `wd93_init` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1180, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x1180 (`jr` at 0x1180).
- `dcache_wb` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1188, 12 bytes) Inferred.
  Role: unknown.
  Calls `cache_operation` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x21003, a3=a3 at entry (arg3) (`j` at 0x118c).
- `dcache_wbinval` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1188, 12 bytes) Inferred.
  Role: unknown.
  Calls `cache_operation` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x21003, a3=a3 at entry (arg3) (`j` at 0x118c).
- `dki_dcache_wb` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1188, 12 bytes) Inferred.
  Role: unknown.
  Calls `cache_operation` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x21003, a3=a3 at entry (arg3) (`j` at 0x118c).
- `dki_dcache_wbinval` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1188, 12 bytes) Inferred.
  Role: unknown.
  Calls `cache_operation` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x21003, a3=a3 at entry (arg3) (`j` at 0x118c).
- `dki_dcache_inval` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1194, 12 bytes) Inferred.
  Role: unknown.
  Calls `cache_operation` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x21001, a3=a3 at entry (arg3) (`j` at 0x1198).
- `dummyret0_func` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x11a0, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = 0x0 at 0x11a0 (`jr` at 0x11a0).
- `heart_need_flush` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x11a0, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = 0x0 at 0x11a0 (`jr` at 0x11a0).
- `is_vme_space` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x11a0, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = 0x0 at 0x11a0 (`jr` at 0x11a0).
- `vme_adapter` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x11a0, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = 0x0 at 0x11a0 (`jr` at 0x11a0).
- `_get_timestamp` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x11a8, 12 bytes) Inferred.
  Role: unknown.
  Returns with v0 = [0xffffffffaff20004] at 0x11ac (`jr` at 0x11ac).
- `getcpuid` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x11b4, 12 bytes) Inferred.
  Role: unknown.
  Returns with v0 = [0xffffffffaff50000]:8 at 0x11b8 (`jr` at 0x11b8).
- `nmi_dump` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x11c0, 212 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `k1` to sym(nmi_saveregs) +0x0 (`sd` at 0x1204).
  Stores 8 bytes from `k1` to sym(nmi_saveregs) +0x8 (`sd` at 0x120c).
  Stores 8 bytes from `sp` to sym(nmi_saveregs) +0x10; value sp (`sd` at 0x1210).
  Stores 8 bytes from `ra` to sym(nmi_saveregs) +0x18; value ra (`sd` at 0x1214).
  Stores 8 bytes from `k1` to (sym(nmi_saveregs) + ([0xffffffffaff50000]:8 << 0x5)) +0x0 (`sd` at 0x1278).
  Stores 8 bytes from `k1` to (sym(nmi_saveregs) + ([0xffffffffaff50000]:8 << 0x5)) +0x8 (`sd` at 0x1280).
  Stores 8 bytes from `sp` to (sym(nmi_saveregs) + ([0xffffffffaff50000]:8 << 0x5)) +0x10; value sp (`sd` at 0x1284).
  Stores 8 bytes from `ra` to (sym(nmi_saveregs) + ([0xffffffffaff50000]:8 << 0x5)) +0x18; value ra (`sd` at 0x1288).
  At `bne k0,k1,1254` at 0x11e0, the branch is taken when k0(=[0xa800000000000410]) != k1(=[0xffffffffaff50000]:8); it falls through when k0(=[0xa800000000000410]) == k1(=[0xffffffffaff50000]:8) (`bne` at 0x11e0).
  Calls `cont_nmi_dump` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x124c).
- `getcachesz` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1294, 32 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x12ac (`jr` at 0x12ac).
- `bootstrap` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x12b4, 220 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `s1` to abs 0xffffffffffffc4a8 (`sd` at 0x137c).
  Stores 1 bytes from `v0` to abs 0xffffffffffffc04f; value 0x3 (`sb` at 0x1380).
  Stores 4 bytes from `s0` to abs 0xffffffffffffc65c (`sw` at 0x138c).
  Calls `getcpuid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x6 (`jal` at 0x1310).
  Calls `tlbwired` via direct with a0=0x0, a1=0x0, a2=-0x4000, a3=0x1, a5=0x6000 (`jal` at 0x1370).
  Calls `cboot` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x1388).
- `ffintr64` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1400, 112 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x1468 (`jr` at 0x1468).
- `_ticksper1024inst` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1470, 52 bytes) Inferred.
  Role: unknown.
  At `bgtz t1,1488` at 0x1488, the branch is taken when t1(?) > 0 (signed); it falls through when t1(?) <= 0 (signed) (`bgtz` at 0x1488).
  At `bgtz a0,1484` at 0x1490, the branch is taken when a0(?) > 0 (signed); it falls through when a0(?) <= 0 (signed) (`bgtz` at 0x1490).
  Returns with v0 = ? at 0x149c (`jr` at 0x149c).
- `us_delay` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x14c0, 60 bytes) Inferred.
  Role: unknown.
  At `bgtz t1,14e4` at 0x14e4, the branch is taken when t1(?) > 0 (signed); it falls through when t1(?) <= 0 (signed) (`bgtz` at 0x14e4).
  At `bgtz a0,14e0` at 0x14ec, the branch is taken when a0(?) > 0 (signed); it falls through when a0(?) <= 0 (signed) (`bgtz` at 0x14ec).
  Returns with v0 = ? at 0x14f4 (`jr` at 0x14f4).
- `heart_intr_low` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x14fc, 48 bytes) Inferred.
  Role: unknown.
  Range 0x1504 0x1508 0x150c 0x1510 0x1514 0x1518 0x151c 0x1520 0x1524 0x1528 is not reached from the entry.
  Calls `heart_intr` via direct with a0=a0 at entry (arg0), a1=0xffff, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x14fc).
- `heart_intr_med` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1504, 12 bytes) Inferred.
  Role: unknown.
  Calls `heart_intr` via direct with a0=a0 at entry (arg0), a1=0xffff0000, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1508).
- `heart_intr_hi` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1510, 16 bytes) Inferred.
  Role: unknown.
  Calls `heart_intr` via direct with a0=a0 at entry (arg0), a1=0x3ffff00000000, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1518).
- `heart_intr_err` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1520, 12 bytes) Inferred.
  Role: unknown.
  Calls `heart_intr` via direct with a0=a0 at entry (arg0), a1=0xfff8000000000000, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1524).
- `_pagecopy` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x152c, 456 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `a4` to ? (base unknown) (`sd` at 0x1558).
  Stores 8 bytes from `a5` to ? (base unknown) (`sd` at 0x155c).
  Stores 8 bytes from `a6` to ? (base unknown) (`sd` at 0x1560).
  Stores 8 bytes from `a7` to ? (base unknown) (`sd` at 0x1564).
  Stores 8 bytes from `a4` to ? (base unknown) (`sd` at 0x1578).
  Stores 8 bytes from `a5` to ? (base unknown) (`sd` at 0x157c).
  Stores 8 bytes from `a6` to ? (base unknown) (`sd` at 0x1580).
  Stores 8 bytes from `a7` to ? (base unknown) (`sd` at 0x1584).
  Stores 8 bytes from `a4` to ? (base unknown) (`sd` at 0x1598).
  Stores 8 bytes from `a5` to ? (base unknown) (`sd` at 0x159c).
  Stores 8 bytes from `a6` to ? (base unknown) (`sd` at 0x15a0).
  Stores 8 bytes from `a7` to ? (base unknown) (`sd` at 0x15a4).
  Stores 8 bytes from `a4` to ? (base unknown) (`sd` at 0x15b8).
  Stores 8 bytes from `a5` to ? (base unknown) (`sd` at 0x15bc).
  Stores 8 bytes from `a6` to ? (base unknown) (`sd` at 0x15c0).
  Stores 8 bytes from `a7` to ? (base unknown) (`sd` at 0x15c4).
  Stores 8 bytes from `a4` to ? (base unknown) (`sd` at 0x15e8).
  Stores 8 bytes from `a5` to ? (base unknown) (`sd` at 0x15ec).
  Stores 8 bytes from `a6` to ? (base unknown) (`sd` at 0x15f0).
  Stores 8 bytes from `a7` to ? (base unknown) (`sd` at 0x15f4).
  Stores 8 bytes from `a4` to ? (base unknown) (`sd` at 0x1638).
  Stores 8 bytes from `a5` to ? (base unknown) (`sd` at 0x163c).
  Stores 8 bytes from `a6` to ? (base unknown) (`sd` at 0x1640).
  Stores 8 bytes from `a7` to ? (base unknown) (`sd` at 0x1644).
  Stores 8 bytes from `a4` to ? (base unknown) (`sd` at 0x1658).
  Stores 8 bytes from `a5` to ? (base unknown) (`sd` at 0x165c).
  Stores 8 bytes from `a6` to ? (base unknown) (`sd` at 0x1660).
  Stores 8 bytes from `a7` to ? (base unknown) (`sd` at 0x1664).
  Stores 8 bytes from `a4` to ? (base unknown) (`sd` at 0x1678).
  Stores 8 bytes from `a5` to ? (base unknown) (`sd` at 0x167c).
  Stores 8 bytes from `a6` to ? (base unknown) (`sd` at 0x1680).
  Stores 8 bytes from `a7` to ? (base unknown) (`sd` at 0x1684).
  Stores 8 bytes from `a4` to ? (base unknown) (`sd` at 0x1698).
  Stores 8 bytes from `a5` to ? (base unknown) (`sd` at 0x169c).
  Stores 8 bytes from `a6` to ? (base unknown) (`sd` at 0x16a0).
  Stores 8 bytes from `a7` to ? (base unknown) (`sd` at 0x16a4).
  Stores 8 bytes from `a4` to ? (base unknown) (`sd` at 0x16c8).
  Stores 8 bytes from `a5` to ? (base unknown) (`sd` at 0x16cc).
  Stores 8 bytes from `a6` to ? (base unknown) (`sd` at 0x16d0).
  Stores 8 bytes from `a7` to ? (base unknown) (`sd` at 0x16d4).
  At `beq a2,zero,160c` at 0x1530, the branch is taken when a2 == 0; it falls through when a2 != 0 (`beq` at 0x1530).
  At `bne t1,zero,1614` at 0x1538, the branch is taken when t1(?) != 0; it falls through when t1(?) == 0 (`bne` at 0x1538).
  At `bgtz a2,1544` at 0x15cc, the branch is taken when a2(?) > 0 (signed); it falls through when a2(?) <= 0 (signed) (`bgtz` at 0x15cc).
  At `bgtz t0,15d4` at 0x1604, the branch is taken when t0(?) > 0 (signed); it falls through when t0(?) <= 0 (signed) (`bgtz` at 0x1604).
  At `bgtz a2,1624` at 0x16ac, the branch is taken when a2(?) > 0 (signed); it falls through when a2(?) <= 0 (signed) (`bgtz` at 0x16ac).
  At `bgtz t0,16b4` at 0x16e4, the branch is taken when t0(?) > 0 (signed); it falls through when t0(?) <= 0 (signed) (`bgtz` at 0x16e4).
  Returns with v0 = a1 at 0x160c (`jr` at 0x160c).
  Returns with v0 = a1 at 0x16ec (`jr` at 0x16ec).
- `_pagezero` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x16f4, 176 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1700).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1704).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x170c).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1710).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1714).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1718).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x171c).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1720).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1724).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1728).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x172c).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1730).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1734).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1738).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x173c).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1740).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x174c).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1750).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1758).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x175c).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1760).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1764).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1768).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x176c).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1770).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1774).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1778).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x177c).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1780).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1784).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x1788).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x178c).
  At `beq a1,zero,179c` at 0x16f4, the branch is taken when a1 == 0; it falls through when a1 != 0 (`beq` at 0x16f4).
  At `bgtz a1,1700` at 0x1744, the branch is taken when a1(?) > 0 (signed); it falls through when a1(?) <= 0 (signed) (`bgtz` at 0x1744).
  At `bgtz t0,174c` at 0x1794, the branch is taken when t0(?) > 0 (signed); it falls through when t0(?) <= 0 (signed) (`bgtz` at 0x1794).
  Returns with v0 = ? at 0x179c (`jr` at 0x179c).
- `resetcounter` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1800, 112 bytes) Inferred.
  Role: unknown.
  At `bne a5,zero,1848` at 0x1820, the branch is taken when t0(?) < t2(?) (unsigned); it falls through when t0(?) >= t2(?) (unsigned) (`bne` at 0x1820).
  At `bne a5,zero,183c` at 0x182c, the branch is taken when a0 < a4(?) (unsigned); it falls through when a0 >= a4(?) (unsigned) (`bne` at 0x182c).
  At `bne a5,zero,1840` at 0x1854, the branch is taken when a4(?) < v0(=0x3e8) (unsigned); it falls through when a4(?) >= v0(=0x3e8) (unsigned) (`bne` at 0x1854).
  At `beq a5,zero,1834` at 0x1860, the branch is taken when a4(?) >= a5(=a0+1000) (unsigned); it falls through when a4(?) < a5(=a0+1000) (unsigned) (`beq` at 0x1860).
  Returns with v0 = ? at 0x1840 (`jr` at 0x1840).
- `resetcounter_val` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1800, 112 bytes) Inferred.
  Role: unknown.
  Range 0x1870 0x1874 0x1878 0x187c is not reached from the entry.
  At `bne a5,zero,1848` at 0x1820, the branch is taken when t0(?) < t2(?) (unsigned); it falls through when t0(?) >= t2(?) (unsigned) (`bne` at 0x1820).
  At `bne a5,zero,183c` at 0x182c, the branch is taken when a0 < a4(?) (unsigned); it falls through when a0 >= a4(?) (unsigned) (`bne` at 0x182c).
  At `bne a5,zero,1840` at 0x1854, the branch is taken when a4(?) < v0(=0x3e8) (unsigned); it falls through when a4(?) >= v0(=0x3e8) (unsigned) (`bne` at 0x1854).
  At `beq a5,zero,1834` at 0x1860, the branch is taken when a4(?) >= a5(=a0+1000) (unsigned); it falls through when a4(?) < a5(=a0+1000) (unsigned) (`beq` at 0x1860).
  Returns with v0 = ? at 0x1840 (`jr` at 0x1840).
- `trimcompare` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1880, 96 bytes) Inferred.
  Role: unknown.
  At `beq a5,zero,18d8` at 0x189c, the branch is taken when t0(?) >= t2(?) (unsigned); it falls through when t0(?) < t2(?) (unsigned) (`beq` at 0x189c).
  At `bne a5,zero,18d8` at 0x18a8, the branch is taken when a4(?) < t3(=0x3e8) (unsigned); it falls through when a4(?) >= t3(=0x3e8) (unsigned) (`bne` at 0x18a8).
  At `beq a5,zero,18d0` at 0x18b0, the branch is taken when a5(?) == 0; it falls through when a5(?) != 0 (`beq` at 0x18b0).
  At `beq a5,zero,18d0` at 0x18bc, the branch is taken when t0(?) >= a1(?) (unsigned); it falls through when t0(?) < a1(?) (unsigned) (`beq` at 0x18bc).
  At `beq a5,zero,18d4` at 0x18c8, the branch is taken when a4(?) >= t3(=0x3e8) (unsigned); it falls through when a4(?) < t3(=0x3e8) (unsigned) (`beq` at 0x18c8).
  Returns with v0 = ? at 0x18d8 (`jr` at 0x18d8).
- `initcounter` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1900, 28 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x1914 (`jr` at 0x1914).
- `resetlatency` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x191c, 32 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x1934 (`jr` at 0x1934).
- `start` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1940, 436 bytes) Inferred.
  Role: unknown.
  Range 0x198c 0x1990 0x1994 0x1998 0x199c 0x19a0 0x19a4 0x19a8 0x19ac 0x19b0 0x19b4 0x19b8 0x19bc 0x19c0 0x19c4 0x19c8 0x19cc 0x19d0 0x19d4 0x19d8 0x19dc 0x19e0 0x19e4 0x19e8 0x19ec 0x19f0 0x19f4 0x19f8 0x19fc 0x1a00 0x1a04 0x1a08 0x1a0c 0x1a10 0x1a14 0x1a18 0x1a1c 0x1a20 0x1a24 0x1a28 0x1a2c 0x1a30 0x1a34 0x1a38 0x1a3c 0x1a40 0x1a44 0x1a48 0x1a4c 0x1a50 0x1a54 0x1a58 0x1a5c 0x1a60 0x1a64 0x1a68 0x1a6c 0x1a70 0x1a74 0x1a78 0x1a7c 0x1a80 0x1a84 0x1a88 0x1a8c 0x1a90 0x1a94 0x1a98 0x1a9c 0x1aa0 0x1aa4 0x1aa8 0x1aac 0x1ab0 0x1ab4 0x1ab8 0x1abc 0x1ac0 0x1ac4 0x1ac8 0x1acc 0x1ad0 0x1ad4 0x1ad8 0x1adc 0x1ae0 0x1ae4 0x1ae8 0x1aec 0x1af0 is not reached from the entry.
  At `beq zero,v0,1a64` at 0x1a40, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x1a40).
  Calls `.text+13072` via reloc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x1984).
- `proc1` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1adc, 24 bytes) Inferred.
  Role: unknown.
  Stores 1 bytes from `zero` to abs 0xffffffffffffc04f; value 0x0 (`sb` at 0x1ae8).
- `mlclosure` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1af4, 168 bytes) Inferred.
  Role: unknown.
- `silence_all_audio` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1b9c, 80 bytes) Inferred.
  Role: unknown.
  Range 0x1be4 0x1be8 is not reached from the entry.
  Stores 4 bytes from `t1` to abs 0x900000001f600038; value 0x100000 (`sw` at 0x1bd8).
  At `beq t0,zero,1bdc` at 0x1bb8, the branch is taken when t0(=[sym(is_octane_lx)]) == 0; it falls through when t0(=[sym(is_octane_lx)]) != 0 (`beq` at 0x1bb8).
  Calls `ip30_rad_halt` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1bdc).
- `silence_bell` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1b9c, 80 bytes) Inferred.
  Role: unknown.
  Range 0x1be4 0x1be8 0x1bec is not reached from the entry.
  Stores 4 bytes from `t1` to abs 0x900000001f600038; value 0x100000 (`sw` at 0x1bd8).
  At `beq t0,zero,1bdc` at 0x1bb8, the branch is taken when t0(=[sym(is_octane_lx)]) == 0; it falls through when t0(=[sym(is_octane_lx)]) != 0 (`beq` at 0x1bb8).
  Calls `ip30_rad_halt` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1bdc).
- `icode` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1bf0, 160 bytes) Inferred.
  Role: unknown.
  Range 0x1c8c is not reached from the entry.
  Stores 4 bytes from `a0` to table(0x10000200) +0x0; value table(0x10000200) (`sw` at 0x1c70).
- `eicode` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1c8c, 4 bytes) Inferred.
  Role: unknown.
- `in_cksum_sub` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1c90, 1072 bytes) Inferred.
  Role: unknown.
  At `bne a1,zero,1ca4` at 0x1c94, the branch is taken when a1 != 0; it falls through when a1 == 0 (`bne` at 0x1c94).
  At `beq v1,zero,1d98` at 0x1ca4, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x1ca4).
  At `beq v1,zero,1d18` at 0x1cac, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x1cac).
  At `beq v1,zero,1cd4` at 0x1cb4, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x1cb4).
  At `bne at,zero,2060` at 0x1cd8, the branch is taken when a1(?) < 0x2 (signed); it falls through when a1(?) >= 0x2 (signed) (`bne` at 0x1cd8).
  At `bne at,zero,2060` at 0x1cf4, the branch is taken when a1(?) < 0x2 (signed); it falls through when a1(?) >= 0x2 (signed) (`bne` at 0x1cf4).
  At `beq v1,zero,1d18` at 0x1d00, the branch is taken when (a0(?) & 0x2) == 0; it falls through when (a0(?) & 0x2) != 0 (`beq` at 0x1d00).
  At `bne at,zero,2038` at 0x1d1c, the branch is taken when a1(?) < 0x4 (signed); it falls through when a1(?) >= 0x4 (signed) (`bne` at 0x1d1c).
  At `bne at,zero,2038` at 0x1d38, the branch is taken when a1(?) < 0x4 (signed); it falls through when a1(?) >= 0x4 (signed) (`bne` at 0x1d38).
  At `beq v1,zero,1d5c` at 0x1d44, the branch is taken when (a0(?) & 0x4) == 0; it falls through when (a0(?) & 0x4) != 0 (`beq` at 0x1d44).
  At `bne at,zero,1ec0` at 0x1d9c, the branch is taken when a1(?) < 0x80 (signed); it falls through when a1(?) >= 0x80 (signed) (`bne` at 0x1d9c).
  At `beq at,zero,1da4` at 0x1eb0, the branch is taken when a1(?) >= 0x80 (signed); it falls through when a1(?) < 0x80 (signed) (`beq` at 0x1eb0).
  At `beq a1,zero,2080` at 0x1eb8, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x1eb8).
  At `beq v1,zero,1f58` at 0x1ec0, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x1ec0).
  At `beq a1,zero,2080` at 0x1f50, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x1f50).
  At `beq v1,zero,1fb0` at 0x1f58, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x1f58).
  At `beq a1,zero,2080` at 0x1fa8, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x1fa8).
  At `beq v1,zero,1fe8` at 0x1fb0, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x1fb0).
  At `beq a1,zero,2080` at 0x1fe0, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x1fe0).
  At `beq v1,zero,2010` at 0x1fe8, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x1fe8).
  At `beq a1,zero,2080` at 0x2008, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x2008).
  At `beq v1,zero,2038` at 0x2010, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x2010).
  At `beq a1,zero,2080` at 0x2030, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x2030).
  At `beq v1,zero,2060` at 0x2038, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x2038).
  At `beq a1,zero,2080` at 0x2058, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x2058).
  At `beq v1,zero,2080` at 0x2060, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x2060).
  Returns with v0 = a2 at 0x1c9c (`jr` at 0x1c9c).
  Returns with v0 = ? at 0x20b8 (`jr` at 0x20b8).
- `in_cksum_pref` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1da4, 796 bytes) Inferred.
  Role: unknown.
  At `beq at,zero,1da4` at 0x1eb0, the branch is taken when a1(?) >= 0x80 (signed); it falls through when a1(?) < 0x80 (signed) (`beq` at 0x1eb0).
  At `beq a1,zero,2080` at 0x1eb8, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x1eb8).
  At `beq v1,zero,1f58` at 0x1ec0, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x1ec0).
  At `beq a1,zero,2080` at 0x1f50, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x1f50).
  At `beq v1,zero,1fb0` at 0x1f58, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x1f58).
  At `beq a1,zero,2080` at 0x1fa8, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x1fa8).
  At `beq v1,zero,1fe8` at 0x1fb0, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x1fb0).
  At `beq a1,zero,2080` at 0x1fe0, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x1fe0).
  At `beq v1,zero,2010` at 0x1fe8, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x1fe8).
  At `beq a1,zero,2080` at 0x2008, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x2008).
  At `beq v1,zero,2038` at 0x2010, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x2010).
  At `beq a1,zero,2080` at 0x2030, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x2030).
  At `beq v1,zero,2060` at 0x2038, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x2038).
  At `beq a1,zero,2080` at 0x2058, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x2058).
  At `beq v1,zero,2080` at 0x2060, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x2060).
  Returns with v0 = ? at 0x20b8 (`jr` at 0x20b8).
- `etoh` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x20c0, 268 bytes) Inferred.
  Role: unknown.
  Stores 1 bytes from `t0` to ? (base unknown) (`sb` at 0x2190).
  At `beq v0,zero,21a8` at 0x20cc, the branch is taken when v0(=[a0]:1) == 0; it falls through when v0(=[a0]:1) != 0 (`beq` at 0x20cc).
  At `beq t8,v0,21bc` at 0x20d8, the branch is taken when t8(=0x3a) == v0(?); it falls through when t8(=0x3a) != v0(?) (`beq` at 0x20d8).
  At `bne at,zero,20f8` at 0x20e4, the branch is taken when v0(?) < 0x61 (signed); it falls through when v0(?) >= 0x61 (signed) (`bne` at 0x20e4).
  At `bne v1,zero,2108` at 0x20f0, the branch is taken when v0(?) < 0x67 (signed); it falls through when v0(?) >= 0x67 (signed) (`bne` at 0x20f0).
  At `bne a0,zero,21b0` at 0x20f8, the branch is taken when a0(?) != 0; it falls through when a0(?) == 0 (`bne` at 0x20f8).
  At `beq a4,zero,21b0` at 0x2100, the branch is taken when a4(?) == 0; it falls through when a4(?) != 0 (`beq` at 0x2100).
  At `bne a1,zero,2138` at 0x2128, the branch is taken when a4(?) < 0x61 (signed); it falls through when a4(?) >= 0x61 (signed) (`bne` at 0x2128).
  At `bne t1,zero,2144` at 0x2130, the branch is taken when t1(?) != 0; it falls through when t1(?) == 0 (`bne` at 0x2130).
  At `bne a7,zero,21b0` at 0x2138, the branch is taken when a7(?) != 0; it falls through when a7(?) == 0 (`bne` at 0x2138).
  At `beq t0,zero,21b0` at 0x2140, the branch is taken when t0(?) == 0; it falls through when t0(?) != 0 (`beq` at 0x2140).
  At `beq a7,zero,21c4` at 0x2148, the branch is taken when a7(?) == 0; it falls through when a7(?) != 0 (`beq` at 0x2148).
  At `bne a5,zero,2164` at 0x2150, the branch is taken when a5(?) != 0; it falls through when a5(?) == 0 (`bne` at 0x2150).
  At `bne t2,zero,2164` at 0x2158, the branch is taken when t2(?) != 0; it falls through when t2(?) == 0 (`bne` at 0x2158).
  At `bne a6,zero,2180` at 0x2164, the branch is taken when a6(?) != 0; it falls through when a6(?) == 0 (`bne` at 0x2164).
  At `beq t3,zero,217c` at 0x216c, the branch is taken when t3(?) == 0; it falls through when t3(?) != 0 (`beq` at 0x216c).
  At `bne v0,zero,20d8` at 0x2198, the branch is taken when v0(?) != 0; it falls through when v0(?) == 0 (`bne` at 0x2198).
  At `beq a2,t1,21b4` at 0x21a0, the branch is taken when a2(?) == t1(=0x6); it falls through when a2(?) != t1(=0x6) (`beq` at 0x21a0).
  Returns with v0 = 0x0 at 0x21a8 (`jr` at 0x21a8).
  Returns with v0 = ? at 0x21b4 (`jr` at 0x21b4).
  Returns with v0 = 0x0 at 0x21c4 (`jr` at 0x21c4).
- `init_sysid` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x21cc, 216 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ret(sprintf) at 0x229c (`jr` at 0x229c).
  Calls `arcs_getenv` via direct with a0=sym(.rodata)+120, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x21d8).
  Calls `etoh` via direct with a0=ret(arcs_getenv), a1=?, a2=?, a3=? (`jal` at 0x21e0).
  Calls `bcopy` via direct with a0=ret(etoh), a1=sym(eaddr), a2=0x6, a3=? (`jal` at 0x21f0).
  Calls `sprintf` via direct with a0=sym(arg_eaddr), a1=sym(.rodata)+120, a2=?, a3=? (`jal` at 0x2290).
- `getsysid` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x22a4, 44 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x0; value [sym(.sbss)+20] (`sw` at 0x22bc).
  Returns with v0 = 0x0 at 0x22c8 (`jr` at 0x22c8).
  Calls `bzero` via direct with a0=a0+4, a1=0x3c, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x22b8).
- `mlreset` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x22d0, 864 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `a2` to ? (base unknown); value one of 0x0, 0x1 (`sw` at 0x23f0).
  Stores 4 bytes from `zero` to sym(bzero_pref) +0x0; value 0x0 (`sw` at 0x24b0).
  Stores 4 bytes from `zero` to sym(bcopy_pref2) +0x0; value 0x0 (`sw` at 0x24b4).
  Stores 4 bytes from `zero` to sym(bcopy_pref1) +0x0; value 0x0 (`sw` at 0x24bc).
  Stores 4 bytes from `a5` to abs 0x900000001f600038; value 0x100000 (`sw` at 0x258c).
  Stores 4 bytes from `a3` to abs 0x900000001f60002c; value 0x7001a (`sw` at 0x2598).
  At `beq at,v0,2534` at 0x2320, the branch is taken when at(?) == v0(=0xe); it falls through when at(?) != v0(=0xe) (`beq` at 0x2320).
  At `beq v1,a0,2538` at 0x2338, the branch is taken when v1(?) == a0(=0xf); it falls through when v1(?) != a0(=0xf) (`beq` at 0x2338).
  At `beq s0,zero,237c` at 0x2340, the branch is taken when s0(=a0) == 0; it falls through when s0(=a0) != 0 (`beq` at 0x2340).
  At `beq t2,zero,256c` at 0x23d8, the branch is taken when t2(?) == 0; it falls through when t2(?) != 0 (`beq` at 0x23d8).
  At `bne a6,zero,23c4` at 0x23f4, the branch is taken when a6(?) != 0; it falls through when a6(?) == 0 (`bne` at 0x23f4).
  At `beq v0,zero,259c` at 0x248c, the branch is taken when v0(=ret(is_specified)) == 0; it falls through when v0(=ret(is_specified)) != 0 (`beq` at 0x248c).
  At `beq v0,zero,2608` at 0x249c, the branch is taken when v0(=ret(atoi)) == 0; it falls through when v0(=ret(atoi)) != 0 (`beq` at 0x249c).
  At `beq v0,zero,2520` at 0x24f8, the branch is taken when v0(=ret(cpu_enabled)) == 0; it falls through when v0(=ret(cpu_enabled)) != 0 (`beq` at 0x24f8).
  At `bne a2,zero,257c` at 0x2510, the branch is taken when a2(=[0x900000001f600048]) < 0x1 (unsigned); it falls through when a2(=[0x900000001f600048]) >= 0x1 (unsigned) (`bne` at 0x2510).
  At `bgez s0,24f0` at 0x2524, the branch is taken when s0(?) >= 0 (signed); it falls through when s0(?) < 0 (signed) (`bgez` at 0x2524).
  At `beq a2,zero,23e4` at 0x256c, the branch is taken when a2(?) == 0; it falls through when a2(?) != 0 (`beq` at 0x256c).
  At `beq a0,zero,25fc` at 0x25a8, the branch is taken when a0(?) == 0; it falls through when a0(?) != 0 (`beq` at 0x25a8).
  At `beq v0,zero,25a8` at 0x25c4, the branch is taken when v0(=ret(cpu_enabled)) == 0; it falls through when v0(=ret(cpu_enabled)) != 0 (`beq` at 0x25c4).
  At `bne a1,zero,25a4` at 0x25e0, the branch is taken when a1(?) < 0x927 (signed); it falls through when a1(?) >= 0x927 (signed) (`bne` at 0x25e0).
  At `bne a3,a4,25a8` at 0x25ec, the branch is taken when a3(?) != a4(=0x930); it falls through when a3(?) == a4(=0x930) (`bne` at 0x25ec).
  At `bne a5,zero,24a8` at 0x2600, the branch is taken when a5(=[sym(_heart_invalidate_war)]) != 0; it falls through when a5(=[sym(_heart_invalidate_war)]) == 0 (`bne` at 0x2600).
  Returns with v0 = ? at 0x2374 (`jr` at 0x2374).
  Calls `r1nkperf_control_register_set` via direct with a0=0x0, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x22e4).
  Calls `r1nkperf_control_register_set` via direct with a0=0x1, a1=0x0, a2=?, a3=? (`jal` at 0x22f0).
  Calls `r1nkperf_data_register_set` via direct with a0=0x0, a1=0x0, a2=?, a3=? (`jal` at 0x22fc).
  Calls `r1nkperf_data_register_set` via direct with a0=0x1, a1=0x0, a2=?, a3=? (`jal` at 0x2308).
  Calls `get_cpu_irr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2310).
  Calls `get_cpu_irr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2328).
  Calls `getcpuid` via direct with a0=?, a1=[sym(kdebug)]:2, a2=?, a3=? (`jal` at 0x2348).
  Calls `heart_mp_intr_init` via direct with a0=ret(getcpuid), a1=?, a2=?, a3=? (`jal` at 0x2350).
  Calls `flush_tlb` via direct with a0=0x1, a1=?, a2=?, a3=? (`jal` at 0x2358).
  Calls `flush_cache` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2360).
  Calls `getcpuid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x238c).
  Calls `init_board_rev [0x3050]` via direct with a0=?, a1=?, a2=one of 0x0, 0x1, a3=?, a7=[0xffffffffaff00080]:8 (`jal` at 0x23fc).
  Calls `ip30_chips_mlreset [0x33e0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2404).
  Calls `init_sysid [0x21cc]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x240c).
  Calls `load_nvram_tab` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2414).
  Calls `is_specified` via direct with a0=sym(arg_heart_invalidate_war), a1=?, a2=?, a3=? (`jal` at 0x2484).
  Calls `atoi` via direct with a0=sym(arg_heart_invalidate_war), a1=?, a2=?, a3=? (`jal` at 0x2494).
  Calls `flush_cache` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x24c0).
  Calls `spinlock_init` via direct with a0=sym(ip30clocklock), a1=sym(.rodata)+120, a2=?, a3=? (`jal` at 0x24d0).
  Calls `spinlock_init` via direct with a0=sym(ip30ledlock), a1=sym(.rodata)+120, a2=?, a3=? (`jal` at 0x24e0).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x24f0).
  Calls `r1nkperf_control_register_set` via direct with a0=0x2, a1=0x0, a2=?, a3=? (`jal` at 0x2538).
  Calls `r1nkperf_control_register_set` via direct with a0=0x3, a1=0x0, a2=?, a3=? (`jal` at 0x2544).
  Calls `r1nkperf_data_register_set` via direct with a0=0x2, a1=0x0, a2=?, a3=? (`jal` at 0x2550).
  Calls `r1nkperf_data_register_set` via direct with a0=0x3, a1=0x0, a2=?, a3=? (`jal` at 0x255c).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x25b4).
  Calls `bzero` via direct with a0=sym(bcopy), a1=?, a2=?, a3=? (`jal` at 0x2610).
  Calls `bzero` via direct with a0=sym(bzero), a1=?, a2=?, a3=? (`jal` at 0x2620).
- `fp_find` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x2630, 32 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `v0` to abs 0xffffffffffffc400; value ret(get_fpc_irr) (`sw` at 0x2644).
  Returns with v0 = ret(get_fpc_irr) at 0x2648 (`jr` at 0x2648).
  Calls `get_fpc_irr` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2638).
- `fp_init` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x2650, 28 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ret(set_fpc_csr) at 0x2664 (`jr` at 0x2664).
  Calls `set_fpc_csr` via direct with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2658).
- `pg_setcachable` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x266c, 28 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `at` to a0 (arg0 at entry) +0x0 (`sd` at 0x2684).
  Returns with v0 = ? at 0x2680 (`jr` at 0x2680).
- `pte_cachebits` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x2688, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = [sym(.sdata)+48] at 0x2688 (`jr` at 0x2688).
- `set_leds` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x2690, 96 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `zero` to abs 0x900000001f600040; value 0x0 (`sw` at 0x26bc).
  Stores 4 bytes from `a5` to abs 0x900000001f600044; value 0x1 (`sw` at 0x26c0).
  Stores 4 bytes from `zero` to abs 0x900000001f600044; value 0x0 (`sw` at 0x26e4).
  Stores 4 bytes from `a5` to abs 0x900000001f600040; value 0x1 (`sw` at 0x26ec).
  At `beq s8,zero,26e4` at 0x26b4, the branch is taken when s8(=a0) == 0; it falls through when s8(=a0) != 0 (`beq` at 0x26b4).
  Returns with v0 = ret(flushbus) at 0x26dc (`jr` at 0x26dc).
  Calls `mutex_spinlock` via direct with a0=sym(ip30ledlock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x26a0).
  Calls `mutex_spinunlock` via direct with a0=sym(ip30ledlock), a1=ret(mutex_spinlock), a2=?, a3=0x900000001f600044, a4=0x900000001f600040, a5=0x1 (`jal` at 0x26c8).
  Calls `flushbus` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x26d0).
- `reset_leds` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x26f0, 28 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ret(set_leds) at 0x2704 (`jr` at 0x2704).
  Calls `set_leds` via direct with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x26f8).
- `dobootduty` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x2728, 348 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `v0` to [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x3b8; value ret(kvpalloc) (`sd` at 0x276c).
  Stores 8 bytes from `t8` to [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x30 (`sd` at 0x2794).
  Stores 8 bytes from `v0` to [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x488; value ret(kern_calloc_node) (`sd` at 0x279c).
  Stores 8 bytes from `v0` to [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x528; value ret(kern_calloc_node) (`sd` at 0x27b4).
  Stores 8 bytes from `v0` to [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x518; value ret(str_init_alloc_lfvec) (`sd` at 0x27c4).
  Stores 8 bytes from `v0` to [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x520; value ret(str_init_alloc_strstat) (`sd` at 0x27d4).
  At `beq v0,zero,2804` at 0x2798, the branch is taken when v0(=ret(kern_calloc_node)) == 0; it falls through when v0(=ret(kern_calloc_node)) != 0 (`beq` at 0x2798).
  At `beq v0,zero,2824` at 0x27b0, the branch is taken when v0(=ret(kern_calloc_node)) == 0; it falls through when v0(=ret(kern_calloc_node)) != 0 (`beq` at 0x27b0).
  At `beq v0,zero,2844` at 0x27c0, the branch is taken when v0(=ret(str_init_alloc_lfvec)) == 0; it falls through when v0(=ret(str_init_alloc_lfvec)) != 0 (`beq` at 0x27c0).
  At `beq v0,zero,2864` at 0x27d0, the branch is taken when v0(=ret(str_init_alloc_strstat)) == 0; it falls through when v0(=ret(str_init_alloc_strstat)) != 0 (`beq` at 0x27d0).
  Returns with v0 = ret(str_init_slave) at 0x27fc (`jr` at 0x27fc).
  Calls `kvpalloc` via direct with a0=?, a1=0x100, a2=0x0, a3=a3 at entry (arg3) (`jal` at 0x2764).
  Calls `kern_calloc_node` via direct with a0=0x1, a1=0x538, a2=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+930]:2, a3=? (`jal` at 0x2790).
  Calls `kern_calloc_node` via direct with a0=0x1, a1=0x13c8, a2=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+930]:2, a3=? (`jal` at 0x27a8).
  Calls `str_init_alloc_lfvec` via direct with a0=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2, a1=?, a2=?, a3=? (`jal` at 0x27b8).
  Calls `str_init_alloc_strstat` via direct with a0=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2, a1=?, a2=?, a3=? (`jal` at 0x27c8).
  Calls `str_init_slave` via direct with a0=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+1304]:8, a1=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2, a2=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+930]:2, a3=? (`jal` at 0x27e0).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+120, a2=[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8, a3=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2 (`jal` at 0x2814).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+120, a2=[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8, a3=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2 (`jal` at 0x2834).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+120, a2=[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8, a3=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2 (`jal` at 0x2854).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+120, a2=[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8, a3=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2 (`jal` at 0x2874).
- `cpu_disable` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x2884, 48 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `v0` to abs 0xffffffffaff00000 (`sd` at 0x28a8).
  Stores 4 bytes from `zero` to (sym(processor_enabled) + (a0 << 0x2)) +0x0; value 0x0 (`sw` at 0x28b0).
  Returns with v0 = ? at 0x28ac (`jr` at 0x28ac).
- `cpu_exists` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x28b4, 32 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x28cc (`jr` at 0x28cc).
- `cpu_enabled` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x28d4, 20 bytes) Inferred.
  Role: unknown.
  Returns with v0 = [(sym(processor_enabled) + (a0 << 0x2))] at 0x28e0 (`jr` at 0x28e0).
- `allowboot` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x28e8, 980 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t8` to ? (base unknown); value sym(bootstrap) (`sd` at 0x2968).
  Stores 8 bytes from `a6` to ? (base unknown) (`sd` at 0x29cc).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x29d0).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x29d8).
  Stores 8 bytes from `a4` to ? (base unknown) (`sd` at 0x29e8).
  Stores 4 bytes from `t9` to ? (base unknown); value [[sym(masterpda)]:8+928]:2 (`sw` at 0x2b2c).
  Stores 4 bytes from `t9` to ? (base unknown); value [[sym(masterpda)]:8+928]:2 (`sw` at 0x2b88).
  Stores 4 bytes from `s3` to ? (base unknown); value -0x1 (`sw` at 0x2c10).
  At `bne at,zero,2c5c` at 0x291c, the branch is taken when at(=[sym(showconfig)]) != 0; it falls through when at(=[sym(showconfig)]) == 0 (`bne` at 0x291c).
  At `bne v0,zero,2c78` at 0x2930, the branch is taken when v0(=ret(is_specified)) != 0; it falls through when v0(=ret(is_specified)) == 0 (`bne` at 0x2930).
  At `beq t9,zero,29f4` at 0x2978, the branch is taken when s0(?) >= 0x2 (signed); it falls through when s0(?) < 0x2 (signed) (`beq` at 0x2978).
  At `beq v0,zero,2bbc` at 0x2998, the branch is taken when v0(=ret(cpu_enabled)) == 0; it falls through when v0(=ret(cpu_enabled)) != 0 (`beq` at 0x2998).
  At `bne a1,zero,2bd4` at 0x29a8, the branch is taken when a1(?) < 0x926 (signed); it falls through when a1(?) >= 0x926 (signed) (`bne` at 0x29a8).
  At `beq a2,s0,296c` at 0x29b8, the branch is taken when a2(=[sym(master_procid)]:2) == s0(?); it falls through when a2(=[sym(master_procid)]:2) != s0(?) (`beq` at 0x29b8).
  At `beq a3,zero,2c24` at 0x29c4, the branch is taken when a3(?) == 0; it falls through when a3(?) != 0 (`beq` at 0x29c4).
  At `beq a5,zero,2964` at 0x29e4, the branch is taken when a5(=[sym(showconfig)]) == 0; it falls through when a5(=[sym(showconfig)]) != 0 (`beq` at 0x29e4).
  At `beq s2,zero,2a58` at 0x2a0c, the branch is taken when s2(?) == 0; it falls through when s2(?) != 0 (`beq` at 0x2a0c).
  At `beq t9,s3,2a2c` at 0x2a18, the branch is taken when t9(=[sym(.sdata)+24]) == s3(=-0x1); it falls through when t9(=[sym(.sdata)+24]) != s3(=-0x1) (`beq` at 0x2a18).
  At `beq s0,zero,2a48` at 0x2a38, the branch is taken when s0(?) == 0; it falls through when s0(?) != 0 (`beq` at 0x2a38).
  At `bne s2,zero,2a14` at 0x2a40, the branch is taken when s2(?) != 0; it falls through when s2(?) == 0 (`bne` at 0x2a40).
  At `beq s1,zero,2a5c` at 0x2a48, the branch is taken when s1(?) == 0; it falls through when s1(?) != 0 (`beq` at 0x2a48).
  At `blez ra,2aac` at 0x2a64, the branch is taken when ra(=[sym(maxcpus)]) <= 0 (signed); it falls through when ra(=[sym(maxcpus)]) > 0 (signed) (`blez` at 0x2a64).
  At `beq v0,zero,2a98` at 0x2a78, the branch is taken when v0(=ret(cpu_enabled)) == 0; it falls through when v0(=ret(cpu_enabled)) != 0 (`beq` at 0x2a78).
  At `bne a1,s0,2c00` at 0x2a8c, the branch is taken when a1(?) != s0(?); it falls through when a1(?) == s0(?) (`bne` at 0x2a8c).
  At `bne t8,zero,2a70` at 0x2aa0, the branch is taken when s0(?) < t8(=[sym(maxcpus)]) (signed); it falls through when s0(?) >= t8(=[sym(maxcpus)]) (signed) (`bne` at 0x2aa0).
  At `bne s2,zero,2c8c` at 0x2aa8, the branch is taken when s2(?) != 0; it falls through when s2(?) == 0 (`bne` at 0x2aa8).
  At `blez ra,2b30` at 0x2ad8, the branch is taken when ra(=[sym(bdevcnt)]) <= 0 (signed); it falls through when ra(=[sym(bdevcnt)]) > 0 (signed) (`blez` at 0x2ad8).
  At `beq v0,zero,2b30` at 0x2aec, the branch is taken when s0(?) >= a0(=[sym(bdevcnt)]) (signed); it falls through when s0(?) < a0(=[sym(bdevcnt)]) (signed) (`beq` at 0x2aec).
  At `bne v0,zero,2ae8` at 0x2b18, the branch is taken when v0(=ret(cpu_isvalid)) != 0; it falls through when v0(=ret(cpu_isvalid)) == 0 (`bne` at 0x2b18).
  At `blez ra,2b8c` at 0x2b34, the branch is taken when ra(=[sym(cdevcnt)]) <= 0 (signed); it falls through when ra(=[sym(cdevcnt)]) > 0 (signed) (`blez` at 0x2b34).
  At `beq at,zero,2b8c` at 0x2b48, the branch is taken when s0(?) >= a0(=[sym(cdevcnt)]) (signed); it falls through when s0(?) < a0(=[sym(cdevcnt)]) (signed) (`beq` at 0x2b48).
  At `bne v0,zero,2b44` at 0x2b74, the branch is taken when v0(=ret(cpu_isvalid)) != 0; it falls through when v0(=ret(cpu_isvalid)) == 0 (`bne` at 0x2b74).
  At `beql v0,zero,2970` at 0x2bc4, the branch is taken when v0(=ret(cpu_exists)) == 0; it falls through when v0(=ret(cpu_exists)) != 0 (`beql` at 0x2bc4).
  Returns with v0 = ret(init_mfhi_war) at 0x2bb4 (`jr` at 0x2bb4).
  Calls `init_timebase` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x28f0).
  Calls `ecc_init` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x28f8).
  Calls `is_specified` via direct with a0=sym(arg_heart_invalidate_war), a1=?, a2=?, a3=? (`jal` at 0x2928).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2990).
  Calls `dobootduty [0x2728]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2a20).
  Calls `us_delay` via direct with a0=0x1, a1=?, a2=?, a3=? (`jal` at 0x2a2c).
  Calls `us_delay` via direct with a0=0x1388, a1=?, a2=?, a3=? (`jal` at 0x2a50).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2a70).
  Calls `cpu_isvalid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2b0c).
  Calls `cpu_isvalid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2b68).
  Calls `init_nmi_dump [0x2e64]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2ba0).
  Calls `init_mfhi_war` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2ba8).
  Calls `cpu_exists [0x28b4]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2bbc).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+120, a2=?, a3=? (`jal` at 0x2bf0).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+120, a2=?, a3=? (`jal` at 0x2c08).
  Calls `cpu_disable [0x2884]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2c14).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+120, a2=?, a3=?, a5=[sym(showconfig)] (`jal` at 0x2c2c).
  Calls `cpu_disable [0x2884]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2c34).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+120, a2=?, a3=?, a5=[sym(showconfig)] (`jal` at 0x2c4c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+120, a2=[sym(master_procid)]:2, a3=? (`jal` at 0x2c68).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+120, a2=[sym(_heart_invalidate_war)], a3=? (`jal` at 0x2c7c).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+120, a2=?, a3=? (`jal` at 0x2c94).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+120, a2=?, a3=? (`jal` at 0x2cac).
- `cboot` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x2cbc, 424 bytes) Inferred.
  Role: unknown.
  Stores 2 bytes from `s0` to abs 0xffffffffffffc3a0; value ret(getcpuid) (`sh` at 0x2cf0).
  Stores 4 bytes from `ra` to abs 0xffffffffffffc090 (`sw` at 0x2d00).
  Stores 8 bytes from `t9` to abs 0xffffffffffffc058; value [sym(boot_cnodemask)]:8 (`sd` at 0x2d0c).
  Stores 8 bytes from `zero` to abs 0xffffffffffffc408; value 0x0 (`sd` at 0x2d10).
  Stores 8 bytes from `v0` to abs 0xffffffffffffc000; value ret(get_except_norm) (`sd` at 0x2d14).
  Stores 4 bytes from `a0` to abs 0xffffffffffffc6f0; value [[(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8+1776] (`sw` at 0x2d30).
  Stores 4 bytes from `v1` to abs 0xffffffffffffc6f4; value [[(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8+1780] (`sw` at 0x2d48).
  Stores 4 bytes from `at` to abs 0xffffffffffffc4b8; value [[(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8+1208] (`sw` at 0x2d64).
  Stores 4 bytes from `t1` to abs 0xffffffffffffc048; value ([-0x3fb8] | 0x14) (`sw` at 0x2db4).
  Stores 4 bytes from `s0` to (sym(pdaindr) + (ret(getcpuid) << 0x4)) +0x0; value ret(getcpuid) (`sw` at 0x2db8).
  Stores 4 bytes from `a2` to abs 0xffffffffffffc048 (`sw` at 0x2e1c).
  At `beq a1,a3,2da8` at 0x2d7c, the branch is taken when a1(=[sym(.sdata)+24]) == a3(=-0x1); it falls through when a1(=[sym(.sdata)+24]) != a3(=-0x1) (`beq` at 0x2d7c).
  At `beq a2,a3,2da8` at 0x2d88, the branch is taken when a2(=[sym(.sdata)+24]) == a3(=-0x1); it falls through when a2(=[sym(.sdata)+24]) != a3(=-0x1) (`beq` at 0x2d88).
  At `beq a4,a3,2da8` at 0x2d94, the branch is taken when a4(=[sym(.sdata)+24]) == a3(=-0x1); it falls through when a4(=[sym(.sdata)+24]) != a3(=-0x1) (`beq` at 0x2d94).
  At `bne a5,a3,2d84` at 0x2da0, the branch is taken when a5(=[sym(.sdata)+24]) != a3(=-0x1); it falls through when a5(=[sym(.sdata)+24]) == a3(=-0x1) (`bne` at 0x2da0).
  Returns with v0 = ret(cmn_err) at 0x2e5c (`jr` at 0x2e5c).
  Calls `getcpuid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2cc8).
  Calls `wirepda` via direct with a0=[(sym(pdaindr) + (ret(getcpuid) << 0x4))+8]:8, a1=?, a2=?, a3=? (`jal` at 0x2ce0).
  Calls `mlreset` via direct with a0=0x1, a1=?, a2=?, a3=? (`jal` at 0x2ce8).
  Calls `get_except_norm` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2d08).
  Calls `coproc_find` via direct with a0=[[(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8+1776], a1=?, a2=?, a3=? (`jal` at 0x2d60).
  Calls `mutex_spinlock` via direct with a0=sym(bootlck), a1=?, a2=?, a3=? (`jal` at 0x2d68).
  Calls `stopclocks` via direct with a0=?, a1=[sym(.sdata)+24], a2=?, a3=-0x1, a6=[sym(numcpus)]+1 (`jal` at 0x2dd0).
  Calls `spinlock_init` via direct with a0=[(sym(pdaindr) + (ret(getcpuid) << 0x4))+8]:8+1180, a1=sym(.rodata)+120, a2=?, a3=? (`jal` at 0x2de8).
  Calls `tlbinfo_init` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2df0).
  Calls `clkstart` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2df8).
  Calls `mutex_spinunlock` via direct with a0=sym(bootlck), a1=?, a2=?, a3=? (`jal` at 0x2e04).
  Calls `ecc_init` via direct with a0=?, a1=?, a2=?, a3=-0x11 (`jal` at 0x2e18).
  Calls `joinrunq` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2e20).
  Calls `init_mfhi_war` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2e28).
  Calls `spl0` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2e30).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2e38).
  Calls `resumeidle` via direct with a0=0x0, a1=?, a2=?, a3=? (`jal` at 0x2e40).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+120, a2=?, a3=? (`jal` at 0x2e50).
- `init_nmi_dump` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x2e64, 128 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `a4` to abs 0xa800000000000408; value (0x9000000000000000 | sym(nmi_dump)) (`sd` at 0x2eb0).
  Stores 8 bytes from `a2` to abs 0xa800000000000408; value (sym(nmi_dump) | 0xa800000000000000) (`sd` at 0x2eb4).
  Stores 8 bytes from `v0` to abs 0xa800000000000410; value ret(getcpuid) (`sd` at 0x2ed0).
  Stores 4 bytes from `t0` to abs 0xa800000000000400; value 0x58464552 (`sw` at 0x2ed8).
  At `bne at,zero,2edc` at 0x2e6c, the branch is taken when at(=[0xa800000000000408]:8) != 0; it falls through when at(=[0xa800000000000408]:8) == 0 (`bne` at 0x2e6c).
  At `bne v0,zero,2eb4` at 0x2e9c, the branch is taken when t0(=sym(nmi_dump)) < a7(=0x9000000000000000) (unsigned); it falls through when t0(=sym(nmi_dump)) >= a7(=0x9000000000000000) (unsigned) (`bne` at 0x2e9c).
  At `beq a3,zero,2eb4` at 0x2ea4, the branch is taken when a3(?) == 0; it falls through when a3(?) != 0 (`beq` at 0x2ea4).
  Returns with v0 = ? at 0x2edc (`jr` at 0x2edc).
  Calls `getcpuid` via direct with a0=a0 at entry (arg0), a1=0xa800000000000408, a2=(sym(nmi_dump) | 0xa800000000000000), a3=?, a4=(0x9000000000000000 | sym(nmi_dump)), a5=-0xb, a6=0xa800000000000000, a7=0x9000000000000000 (`jal` at 0x2eb8).
- `cont_nmi_dump` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x2ee4, 92 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `a1` to abs 0xffffffffffffc020; value [sym(dumpsthread)]:8 (`sd` at 0x2f20).
  At `bne a2,zero,2f24` at 0x2f18, the branch is taken when a2(=[-0x3fe0]:8) != 0; it falls through when a2(=[-0x3fe0]:8) == 0 (`bne` at 0x2f18).
  Returns with v0 = ret(cmn_err) at 0x2f38 (`jr` at 0x2f38).
  Calls `wirepda` via direct with a0=[(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8, a1=([sym(master_procid)]:2 << 0x4), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2efc).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+120, a2=[-0x3fe0]:8, a3=0x1, a4=[sym(maxcpus)] (`jal` at 0x2f2c).
- `get_except_norm` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x2f40, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = sym(exception) at 0x2f40 (`jr` at 0x2f40).
- `ip30_board_rev` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x2f48, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = [sym(ip30_rev)] at 0x2f48 (`jr` at 0x2f48).
- `early_nic_access_mcr32` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x2f50, 256 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x0; value ((a1 << 0xa) | (a2 << 0x2)) (`sw` at 0x2f6c).
  At `bne v1,zero,2fc0` at 0x2f78, the branch is taken when (a4(=[a0]) & 0x2) != 0; it falls through when (a4(=[a0]) & 0x2) == 0 (`bne` at 0x2f78).
  At `bne a1,zero,2fc0` at 0x2f88, the branch is taken when (a4(=[a0]) & 0x2) != 0; it falls through when (a4(=[a0]) & 0x2) == 0 (`bne` at 0x2f88).
  At `bne a2,zero,2fc0` at 0x2f98, the branch is taken when (a4(=[a0]) & 0x2) != 0; it falls through when (a4(=[a0]) & 0x2) == 0 (`bne` at 0x2f98).
  At `bne t1,zero,2fc0` at 0x2fa8, the branch is taken when (a4(=[a0]) & 0x2) != 0; it falls through when (a4(=[a0]) & 0x2) == 0 (`bne` at 0x2fa8).
  At `beq t2,zero,2f70` at 0x2fb8, the branch is taken when (a4(=[a0]) & 0x2) == 0; it falls through when (a4(=[a0]) & 0x2) != 0 (`beq` at 0x2fb8).
  At `beq t8,zero,3048` at 0x2ff0, the branch is taken when t8(=[0xffffffffaff20000]:8) >= a0(?) (unsigned); it falls through when t8(=[0xffffffffaff20000]:8) < a0(?) (unsigned) (`beq` at 0x2ff0).
  At `beq a3,zero,3048` at 0x3000, the branch is taken when a3(=[0xffffffffaff20000]:8) >= a0(?) (unsigned); it falls through when a3(=[0xffffffffaff20000]:8) < a0(?) (unsigned) (`beq` at 0x3000).
  At `beq a6,zero,3048` at 0x3010, the branch is taken when a6(=[0xffffffffaff20000]:8) >= a0(?) (unsigned); it falls through when a6(=[0xffffffffaff20000]:8) < a0(?) (unsigned) (`beq` at 0x3010).
  At `beq a7,zero,3048` at 0x3020, the branch is taken when a7(=[0xffffffffaff20000]:8) >= a0(?) (unsigned); it falls through when a7(=[0xffffffffaff20000]:8) < a0(?) (unsigned) (`beq` at 0x3020).
  At `beq t0,zero,3048` at 0x3030, the branch is taken when t0(=[0xffffffffaff20000]:8) >= a0(?) (unsigned); it falls through when t0(=[0xffffffffaff20000]:8) < a0(?) (unsigned) (`beq` at 0x3030).
  At `bne t1,zero,2ff8` at 0x3040, the branch is taken when t1(=[0xffffffffaff20000]:8) < a0(?) (unsigned); it falls through when t1(=[0xffffffffaff20000]:8) >= a0(?) (unsigned) (`bne` at 0x3040).
  Returns with v0 = ? at 0x3048 (`jr` at 0x3048).
- `init_board_rev` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x3050, 212 bytes) Inferred.
  Role: unknown.
  At `beq v0,zero,308c` at 0x3068, the branch is taken when v0(=ret(nic_info_get)) == 0; it falls through when v0(=ret(nic_info_get)) != 0 (`beq` at 0x3068).
  At `beq v0,at,308c` at 0x3074, the branch is taken when v0(=ret(nic_info_get)) == at(=0x1); it falls through when v0(=ret(nic_info_get)) != at(=0x1) (`beq` at 0x3074).
  At `bne v0,zero,30dc` at 0x309c, the branch is taken when v0(=ret(strstr)) != 0; it falls through when v0(=ret(strstr)) == 0 (`bne` at 0x309c).
  At `beq v0,zero,30cc` at 0x30bc, the branch is taken when v0(=ret(strstr)) == 0; it falls through when v0(=ret(strstr)) != 0 (`beq` at 0x30bc).
  At `bne v0,zero,30f8` at 0x30e8, the branch is taken when v0(=ret(strchr)) != 0; it falls through when v0(=ret(strchr)) == 0 (`bne` at 0x30e8).
  At `bne v0,zero,3114` at 0x3104, the branch is taken when v0(=ret(strchr)) != 0; it falls through when v0(=ret(strchr)) == 0 (`bne` at 0x3104).
  Returns with v0 = ? at 0x3084 (`jr` at 0x3084).
  Calls `nic_info_get` via direct with a0=sym(early_nic_access_mcr32), a1=0x900000001f0000b4, a2=sp-272, a3=a3 at entry (arg3) (`jal` at 0x3060).
  Calls `strstr` via direct with a0=sp-272, a1=sym(.rodata)+120, a2=0x10000, a3=? (`jal` at 0x3094).
  Calls `strstr` via direct with a0=sp-272, a1=sym(.rodata)+120, a2=?, a3=? (`jal` at 0x30b0).
  Calls `strchr` via direct with a0=ret(strstr)+5, a1=0x2d, a2=?, a3=?, a4=0x1 (`jal` at 0x30e0).
  Calls `strchr` via direct with a0=ret(strchr)+1, a1=0x2d, a2=?, a3=?, a4=0x1 (`jal` at 0x30fc).
  Calls `atoi` via direct with a0=ret(strchr)+1, a1=?, a2=?, a3=? (`jal` at 0x3114).
- `add_ioboard` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x3124, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x3124 (`jr` at 0x3124).
- `add_cpuboard` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x312c, 184 bytes) Inferred.
  Role: unknown.
  At `bne at,zero,31c0` at 0x31ac, the branch is taken when v0(=ret(heart_rev)) < 0x4 (signed); it falls through when v0(=ret(heart_rev)) >= 0x4 (signed) (`bne` at 0x31ac).
  Returns with v0 = ? at 0x31b8 (`jr` at 0x31b8).
  Calls `cpu_mhz_rating` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3138).
  Calls `add_to_inventory` via direct with a0=0x1, a1=0x1, a2=ret(cpu_mhz_rating), a3=-0x1, a4=0x10 (`jal` at 0x3150).
  Calls `add_to_inventory` via direct with a0=0x1, a1=0x2, a2=[-0x3c60]:2, a3=0x0, a4=[-0x3c04] (`jal` at 0x3168).
  Calls `add_to_inventory` via direct with a0=0x1, a1=0x3, a2=[-0x3c60]:2, a3=0x0, a4=[-0x3c00] (`jal` at 0x3180).
  Calls `add_to_inventory` via direct with a0=0x3, a1=0x8, a2=0x0, a3=0x0, a4=[-0x39a4] (`jal` at 0x3198).
  Calls `heart_rev` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x31a0).
  Calls `heart_rev` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x31c0).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+120, a2=ret(heart_rev)+64, a3=? (`jal` at 0x31d4).
- `cpuboard` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x31e4, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = 0x10 at 0x31e4 (`jr` at 0x31e4).
- `dprintf` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x31ec, 444 bytes) Inferred.
  Role: unknown.
  At `beq t1,zero,329c` at 0x3238, the branch is taken when t1(=[0xa800000000001020]:8) == 0; it falls through when t1(=[0xa800000000001020]:8) != 0 (`beq` at 0x3238).
  At `beq t2,zero,329c` at 0x3244, the branch is taken when t2(=[[0xa800000000001020]:8+24]:8) == 0; it falls through when t2(=[[0xa800000000001020]:8+24]:8) != 0 (`beq` at 0x3244).
  At `bne v0,zero,3340` at 0x32b0, the branch is taken when v0(=ret(cn_is_inited)) != 0; it falls through when v0(=ret(cn_is_inited)) == 0 (`bne` at 0x32b0).
  Returns with v0 = ? at 0x3338 (`jr` at 0x3338).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x328c).
  Calls `cn_is_inited` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x329c).
  Calls `arcs_printf` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x330c).
  Calls `cmn_err` via direct with a0=0x6, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=a5 at entry (arg5), a7=a6 at entry (arg6) (`jal` at 0x3398).
- `cpu_isvalid` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x33a8, 56 bytes) Inferred.
  Role: unknown.
  At `bltz a0,33d4` at 0x33ac, the branch is taken when a0 < 0 (signed); it falls through when a0 >= 0 (signed) (`bltz` at 0x33ac).
  At `beq v1,zero,33d4` at 0x33c0, the branch is taken when a0 >= v1(=[sym(maxcpus)]) (signed); it falls through when a0 < v1(=[sym(maxcpus)]) (signed) (`beq` at 0x33c0).
  At `bne a0,a1,33d8` at 0x33cc, the branch is taken when a0(=[(sym(pdaindr) + (a0 << 0x4))]) != a1(=-0x1); it falls through when a0(=[(sym(pdaindr) + (a0 << 0x4))]) == a1(=-0x1) (`bne` at 0x33cc).
  Returns with v0 = one of 0x0, 0x1 at 0x33d8 (`jr` at 0x33d8).
- `ip30_chips_mlreset` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x33e0, 340 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `a0` to abs 0x900000001f000284; value 0xa9c8888 (`sw` at 0x3444).
  Stores 4 bytes from `v1` to abs 0x900000001f00028c; value 0xffffffff999c8888 (`sw` at 0x3450).
  Stores 4 bytes from `at` to abs 0x900000001f000084; value 0x820000 (`sw` at 0x345c).
  Returns with v0 = ret(heart_intr_preconn) at 0x352c (`jr` at 0x352c).
  Calls `xtalk_set_early_piotrans_addr` via direct with a0=sym(ip30_early_piotrans_addr), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x33e8).
  Calls `heart_mlreset` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x33f0).
  Calls `xbow_mlreset` via direct with a0=0x9000000010000000, a1=?, a2=?, a3=? (`jal` at 0x33f8).
  Calls `ioc3_mlreset` via direct with a0=0x900000001f022000, a1=0x900000001f600000, a2=?, a3=? (`jal` at 0x3408).
  Calls `heart_intr_prealloc` via direct with a0=0xffffffffaff00000, a1=0x3a, a2=sym(xbow_intr_preset), a3=0x9000000010000000, a4=-0x1, a5=0x900000001f00028c, a6=0x900000001f000284 (`jal` at 0x3458).
  Calls `heart_intr_prealloc` via direct with a0=0xffffffffaff00000, a1=0x39, a2=sym(pcibr_xintr_preset), a3=0x900000001f000000, a4=-0x1 (`jal` at 0x3478).
  Calls `heart_intr_prealloc` via direct with a0=0xffffffffaff00000, a1=0x11, a2=sym(pcibr_xintr_preset), a3=0x900000001f000000, a4=0x2 (`jal` at 0x3490).
  Calls `heart_intr_preconn` via direct with a0=0xffffffffaff00000, a1=0x11, a2=sym(ioc3_intr), a3=0x0 (`jal` at 0x34a4).
  Calls `heart_intr_prealloc` via direct with a0=0xffffffffaff00000, a1=0x10, a2=sym(pcibr_xintr_preset), a3=0x900000001f000000, a4=0x4 (`jal` at 0x34bc).
  Calls `heart_intr_preconn` via direct with a0=0xffffffffaff00000, a1=0x10, a2=sym(ioc3_intr), a3=0x0 (`jal` at 0x34d0).
  Calls `heart_intr_prealloc` via direct with a0=0xffffffffaff00000, a1=0x39, a2=sym(pcibr_xintr_preset), a3=0x900000001f000000, a4=0x7 (`jal` at 0x34e8).
  Calls `heart_intr_prealloc` via direct with a0=0xffffffffaff00000, a1=0x29, a2=sym(pcibr_xintr_preset), a3=0x900000001f000000, a4=0x6 (`jal` at 0x3500).
  Calls `heart_intr_preconn` via direct with a0=0xffffffffaff00000, a1=0x29, a2=sym(powerintr), a3=0x0 (`jal` at 0x351c).
- `ip30_early_piotrans_addr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x3534, 340 bytes) Inferred.
  Role: unknown.
  At `bne a0,at,3594` at 0x357c, the branch is taken when a0 != at(?); it falls through when a0 == at(?) (`bne` at 0x357c).
  At `bne a1,a7,3594` at 0x3584, the branch is taken when a1 != a7(?); it falls through when a1 == a7(?) (`bne` at 0x3584).
  At `beq a2,zero,3658` at 0x358c, the branch is taken when a2 == 0; it falls through when a2 != 0 (`beq` at 0x358c).
  At `bne a0,t9,35c4` at 0x35a4, the branch is taken when a0 != t9(?); it falls through when a0 == t9(?) (`bne` at 0x35a4).
  At `bne ra,zero,362c` at 0x35bc, the branch is taken when v0(?) < 0x8 (signed); it falls through when v0(?) >= 0x8 (signed) (`bne` at 0x35bc).
  At `beq v0,t0,35b4` at 0x35c4, the branch is taken when v0(?) == t0(?); it falls through when v0(?) != t0(?) (`beq` at 0x35c4).
  At `beq at,zero,35b4` at 0x35dc, the branch is taken when (at(?) & 0x20) == 0; it falls through when (at(?) & 0x20) != 0 (`beq` at 0x35dc).
  At `bne a0,t8,35b4` at 0x35fc, the branch is taken when a0 != t8(?); it falls through when a0 == t8(?) (`bne` at 0x35fc).
  At `bne a1,a7,35b4` at 0x3604, the branch is taken when a1 != a7(?); it falls through when a1 == a7(?) (`bne` at 0x3604).
  At `bne a2,zero,35b4` at 0x360c, the branch is taken when a2(?) != 0; it falls through when a2(?) == 0 (`bne` at 0x360c).
  At `bne a1,a7,35c4` at 0x3640, the branch is taken when a1 != a7(?); it falls through when a1 == a7(?) (`bne` at 0x3640).
  At `beq a2,zero,3670` at 0x3648, the branch is taken when a2(?) == 0; it falls through when a2(?) != 0 (`beq` at 0x3648).
  Returns with v0 = ? at 0x3638 (`jr` at 0x3638).
  Calls `heart_addr_xio_to_kva` via direct with a0=?, a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=a3 at entry (arg3) (`jal` at 0x361c).
  Calls `heart_addr_xio_to_kva` via direct with a0=?, a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=a3 at entry (arg3) (`jal` at 0x3660).
  Calls `heart_addr_xio_to_kva` via direct with a0=0x0, a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=a3 at entry (arg3) (`jal` at 0x3678).
- `init_all_devices` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x3688, 548 bytes) Inferred.
  Role: unknown.
  At `blez a2,3760` at 0x36f0, the branch is taken when a2(=[sym(maxcpus)]) <= 0 (signed); it falls through when a2(=[sym(maxcpus)]) > 0 (signed) (`blez` at 0x36f0).
  At `beq v0,zero,3750` at 0x3708, the branch is taken when v0(=ret(cpu_enabled)) == 0; it falls through when v0(=ret(cpu_enabled)) != 0 (`beq` at 0x3708).
  At `bne a2,zero,36fc` at 0x3758, the branch is taken when s0(?) < a2(=[sym(maxcpus)]) (signed); it falls through when s0(?) >= a2(=[sym(maxcpus)]) (signed) (`bne` at 0x3758).
  At `beq s2,v0,3848` at 0x3838, the branch is taken when s2(=-0x1) == v0(=ret(hwgraph_path_to_vertex)); it falls through when s2(=-0x1) != v0(=ret(hwgraph_path_to_vertex)) (`beq` at 0x3838).
  At `beq s2,v0,3864` at 0x3854, the branch is taken when s2(=-0x1) == v0(=ret(hwgraph_path_to_vertex)); it falls through when s2(=-0x1) != v0(=ret(hwgraph_path_to_vertex)) (`beq` at 0x3854).
  At `beq s2,v0,3898` at 0x386c, the branch is taken when s2(=-0x1) == v0(=ret(hwgraph_path_to_vertex)); it falls through when s2(=-0x1) != v0(=ret(hwgraph_path_to_vertex)) (`beq` at 0x386c).
  At `beq v0,zero,3898` at 0x3888, the branch is taken when v0(=ret(hwgraph_fastinfo_get)) == 0; it falls through when v0(=ret(hwgraph_fastinfo_get)) != 0 (`beq` at 0x3888).
  Returns with v0 = ? at 0x38a4 (`jr` at 0x38a4).
  Calls `hwgraph_path_add` via direct with a0=[sym(hwgraph_root)], a1=sym(.rodata)+120, a2=sp-80, a3=a3 at entry (arg3) (`jal` at 0x36a8).
  Calls `mark_nodevertex_as_node` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x36b4).
  Calls `hwgraph_path_add` via direct with a0=?, a1=sym(.rodata)+120, a2=sp-76, a3=? (`jal` at 0x36cc).
  Calls `nic_bridge_vertex_info` via direct with a0=?, a1=0xffffffffaff000bc, a2=?, a3=? (`jal` at 0x36dc).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3700).
  Calls `sprintf` via direct with a0=sp-72, a1=sym(.rodata)+120, a2=?, a3=? (`jal` at 0x371c).
  Calls `hwgraph_path_add` via direct with a0=?, a1=sp-72, a2=sp-56, a3=? (`jal` at 0x372c).
  Calls `mark_cpuvertex_as_cpu` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3738).
  Calls `device_master_set` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3744).
  Calls `hwgraph_path_add` via direct with a0=?, a1=sym(.rodata)+120, a2=sp-52, a3=? (`jal` at 0x3770).
  Calls `hwgraph_path_add` via direct with a0=[sym(hwgraph_root)], a1=sym(.rodata)+120, a2=sp-48, a3=? (`jal` at 0x3784).
  Calls `hwgraph_path_add` via direct with a0=[sym(hwgraph_root)], a1=sym(.rodata)+120, a2=sp-44, a3=? (`jal` at 0x3798).
  Calls `hwgraph_path_add` via direct with a0=[sym(hwgraph_root)], a1=sym(.rodata)+120, a2=sp-40, a3=? (`jal` at 0x37ac).
  Calls `hwgraph_path_add` via direct with a0=?, a1=sym(.rodata)+120, a2=sp-36, a3=? (`jal` at 0x37bc).
  Calls `pcibr_hints_fix_rrbs` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x37c4).
  Calls `pcibr_hints_dualslot` via direct with a0=?, a1=0x2, a2=0x4, a3=? (`jal` at 0x37d4).
  Calls `pcibr_hints_subdevs` via direct with a0=?, a1=0x2, a2=0x7f, a3=? (`jal` at 0x37e4).
  Calls `heart_startup` via direct with a0=[sym(hwgraph_root)], a1=?, a2=?, a3=? (`jal` at 0x37ec).
  Calls `hwgraph_link_add` via direct with a0=sym(.rodata)+120, a1=sym(.rodata)+120, a2=sym(.rodata)+120, a3=? (`jal` at 0x3800).
  Calls `hwgraph_link_add` via direct with a0=sym(.rodata)+120, a1=sym(.rodata)+120, a2=sym(.rodata)+120, a3=? (`jal` at 0x3814).
  Calls `hwgraph_link_add` via direct with a0=sym(.rodata)+120, a1=sym(.rodata)+120, a2=sym(.rodata)+120, a3=? (`jal` at 0x3828).
  Calls `hwgraph_path_to_vertex` via direct with a0=sym(.rodata)+120, a1=?, a2=?, a3=? (`jal` at 0x3830).
  Calls `device_controller_num_set` via direct with a0=ret(hwgraph_path_to_vertex), a1=0x0, a2=?, a3=? (`jal` at 0x3840).
  Calls `hwgraph_path_to_vertex` via direct with a0=sym(.rodata)+120, a1=?, a2=?, a3=? (`jal` at 0x384c).
  Calls `device_controller_num_set` via direct with a0=ret(hwgraph_path_to_vertex), a1=0x1, a2=?, a3=? (`jal` at 0x385c).
  Calls `hwgraph_path_to_vertex` via direct with a0=sym(.rodata)+120, a1=?, a2=?, a3=? (`jal` at 0x3864).
  Calls `device_controller_num_set` via direct with a0=ret(hwgraph_path_to_vertex), a1=0x0, a2=?, a3=? (`jal` at 0x3878).
  Calls `hwgraph_fastinfo_get` via direct with a0=ret(hwgraph_path_to_vertex), a1=?, a2=?, a3=? (`jal` at 0x3880).
  Calls `ef_ifattach` via direct with a0=ret(hwgraph_fastinfo_get), a1=0x0, a2=?, a3=? (`jal` at 0x3890).
- `sendintr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x38ac, 28 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `at` to abs 0xffffffffaff10020 (`sd` at 0x38bc).
  Returns with v0 = 0x0 at 0x38c0 (`jr` at 0x38c0).
- `debug_stop_all_cpus` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x38c8, 140 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `a5` to abs 0xffffffffaff10020 (`sd` at 0x390c).
  Stores 8 bytes from `a5` to abs 0xffffffffaff10020 (`sd` at 0x3934).
  At `blez a3,3940` at 0x38dc, the branch is taken when a3(=[sym(maxcpus)]) <= 0 (signed); it falls through when a3(=[sym(maxcpus)]) > 0 (signed) (`blez` at 0x38dc).
  At `beq a7,zero,3940` at 0x38f8, the branch is taken when a1(?) >= a3(=[sym(maxcpus)]) (signed); it falls through when a1(?) < a3(=[sym(maxcpus)]) (signed) (`beq` at 0x38f8).
  At `beq t0,a1,3914` at 0x3904, the branch is taken when t0(=[-0x3c60]:2) == a1(?); it falls through when t0(=[-0x3c60]:2) != a1(?) (`beq` at 0x3904).
  At `beq t1,zero,3940` at 0x3920, the branch is taken when a1(?) >= a3(=[sym(maxcpus)]) (signed); it falls through when a1(?) < a3(=[sym(maxcpus)]) (signed) (`beq` at 0x3920).
  At `beq t2,a1,38ec` at 0x392c, the branch is taken when t2(=[-0x3c60]:2) == a1(?); it falls through when t2(=[-0x3c60]:2) != a1(?) (`beq` at 0x392c).
  Returns with v0 = ? at 0x3940 (`jr` at 0x3940).
- `tsfastick_maint` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x3954, 120 bytes) Inferred.
  Role: unknown.
  At `bne at,zero,3990` at 0x3964, the branch is taken when (at(=[-0x3d80]:8) & 0x20) != 0; it falls through when (at(=[-0x3d80]:8) & 0x20) == 0 (`bne` at 0x3964).
  At `bne v0,zero,39b0` at 0x397c, the branch is taken when (v0(=[-0x3d80]:8) & 0x20) != 0; it falls through when (v0(=[-0x3d80]:8) & 0x20) == 0 (`bne` at 0x397c).
  Returns with v0 = ? at 0x3988 (`jr` at 0x3988).
  Calls `fastick_maint` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x396c).
  Calls `log_tstamp_event` via direct with a0=0x6e, a1=0x0, a2=0x0, a3=0x0, a4=0x0 (`jal` at 0x39a0).
  Calls `log_tstamp_event` via direct with a0=0x65, a1=0x6e, a2=0x0, a3=0x0, a4=0x0 (`jal` at 0x39bc).
- `pokesoftclk` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x39cc, 28 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ret(siroff) at 0x39e0 (`jr` at 0x39e0).
  Calls `siroff` via direct with a0=0x200, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x39d4).
- `ip30_intr_maint` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x39e8, 48 bytes) Inferred.
  Role: unknown.
  At `bne at,zero,3a04` at 0x39f0, the branch is taken when at(=[-0x3aa0]) != 0; it falls through when at(=[-0x3aa0]) == 0 (`bne` at 0x39f0).
  At `beq v0,zero,3a10` at 0x39fc, the branch is taken when v0(=[-0x3a9c]) == 0; it falls through when v0(=[-0x3a9c]) != 0 (`beq` at 0x39fc).
  Returns with v0 = ? at 0x3a10 (`jr` at 0x3a10).
  Calls `siron` via direct with a0=0x200, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3a04).
- `intr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x3a18, 696 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `a2` to [-0x3b78]:8 +0xd0; value [[-0x3b78]:8+208]+1 (`sc` at 0x3ba4).
  Stores 4 bytes from `a3` to abs 0xffffffffffffc560; value [-0x3aa0]-1 (`sw` at 0x3bd8).
  Stores 4 bytes from `a3` to abs 0xffffffffffffc564; value [-0x3a9c]-1 (`sw` at 0x3bf8).
  At `beq at,v0,3c7c` at 0x3a3c, the branch is taken when at(?) == v0(=0x30); it falls through when at(?) != v0(=0x30) (`beq` at 0x3a3c).
  At `bne v0,zero,3cb0` at 0x3a5c, the branch is taken when (v0(=[-0x3d80]:8) & 0x20) != 0; it falls through when (v0(=[-0x3d80]:8) & 0x20) == 0 (`bne` at 0x3a5c).
  At `beq a1,zero,3bb8` at 0x3aa8, the branch is taken when (s8(=0x10000) & s0(?)) == 0; it falls through when (s8(=0x10000) & s0(?)) != 0 (`beq` at 0x3aa8).
  At `beq a2,zero,3bdc` at 0x3ab4, the branch is taken when (a2(=0x20000) & s0(?)) == 0; it falls through when (a2(=0x20000) & s0(?)) != 0 (`beq` at 0x3ab4).
  At `beq a3,zero,3c6c` at 0x3ac0, the branch is taken when (a3(=0x30000) & s0(?)) == 0; it falls through when (a3(=0x30000) & s0(?)) != 0 (`beq` at 0x3ac0).
  At `beq s1,zero,3c04` at 0x3ad8, the branch is taken when s1(?) == 0; it falls through when s1(?) != 0 (`beq` at 0x3ad8).
  At `beq v0,zero,3b80` at 0x3ae0, the branch is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0x3ae0).
  At `beq s1,zero,3b8c` at 0x3b30, the branch is taken when s1(=[table(sym(kmem_ioaddr))+32]) == 0; it falls through when s1(=[table(sym(kmem_ioaddr))+32]) != 0 (`beq` at 0x3b30).
  At `beq ra,zero,3b64` at 0x3b54, the branch is taken when ra(=[-0x3a9c]) == 0; it falls through when ra(=[-0x3a9c]) != 0 (`beq` at 0x3b54).
  At `bne at,zero,3a9c` at 0x3b5c, the branch is taken when at(?) != 0; it falls through when at(?) == 0 (`bne` at 0x3b5c).
  At `beq v0,zero,3ac8` at 0x3b68, the branch is taken when v0(=[-0x3aa0]) == 0; it falls through when v0(=[-0x3aa0]) != 0 (`beq` at 0x3b68).
  At `bne v1,zero,3a9c` at 0x3b70, the branch is taken when v1(?) != 0; it falls through when v1(?) == 0 (`bne` at 0x3b70).
  At `beql a2,zero,3b98` at 0x3ba8, the branch is taken when a2(=[[-0x3b78]:8+208]+1) == 0; it falls through when a2(=[[-0x3b78]:8+208]+1) != 0 (`beql` at 0x3ba8).
  At `beq a5,zero,3ab0` at 0x3bc0, the branch is taken when a5(=[-0x3aa0]) == 0; it falls through when a5(=[-0x3aa0]) != 0 (`beq` at 0x3bc0).
  At `beq a1,zero,3ab0` at 0x3bc8, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x3bc8).
  At `beq a5,zero,3ab8` at 0x3be8, the branch is taken when a5(=[-0x3a9c]) == 0; it falls through when a5(=[-0x3a9c]) != 0 (`beq` at 0x3be8).
  At `beq a2,zero,3ab8` at 0x3bf0, the branch is taken when a2(?) == 0; it falls through when a2(?) != 0 (`beq` at 0x3bf0).
  At `beq a5,zero,3c4c` at 0x3c2c, the branch is taken when a5(?) == 0; it falls through when a5(?) != 0 (`beq` at 0x3c2c).
  At `beq a6,zero,3c4c` at 0x3c3c, the branch is taken when (a6(=[-0x3fb8]) & 0x10) == 0; it falls through when (a6(=[-0x3fb8]) & 0x10) != 0 (`beq` at 0x3c3c).
  At `bne a7,zero,3c90` at 0x3c54, the branch is taken when (a7(=[-0x3d80]:8) & 0x20) != 0; it falls through when (a7(=[-0x3d80]:8) & 0x20) == 0 (`bne` at 0x3c54).
  Returns with v0 = one of 0x0, 0x1 at 0x3c64 (`jr` at 0x3c64).
  Calls `splprof` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3a9c).
  Calls `splx` via direct with a0=[table(sym(kmem_ioaddr))+24], a1=?, a2=?, a3=? (`jal` at 0x3b14).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x3b1c).
  Calls `getcause` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3b40).
  Calls `ip30_intr_maint` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3c04).
  Calls `check_delay_tlbflush` via direct with a0=0x1, a1=?, a2=?, a3=? (`jal` at 0x3c44).
  Calls `splx` via direct with a0=ret(splprof), a1=?, a2=?, a3=? (`jal` at 0x3c6c).
  Calls `check_delay_tlbflush` via direct with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3c7c).
  Calls `log_tstamp_event` via direct with a0=0x65, a1=0x66, a2=0x0, a3=0x0, a4=0x0 (`jal` at 0x3ca0).
  Calls `log_tstamp_event` via direct with a0=0x66, a1=0x0, a2=0x0, a3=0x0, a4=0x0 (`jal` at 0x3cc0).
- `intr_spray_heuristic` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x3cd0, 192 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `a4` to table(sym(.sdata)+80) +0x0; value entry(sym(.sdata)+80)+1 (`sw` at 0x3d8c).
  At `beq a0,zero,3d28` at 0x3cd8, the branch is taken when a0 == 0; it falls through when a0 != 0 (`beq` at 0x3cd8).
  At `beq v0,at,3d2c` at 0x3cec, the branch is taken when v0(=ret(device_desc_intr_target_get)) == at(=-0x1); it falls through when v0(=ret(device_desc_intr_target_get)) != at(=-0x1) (`beq` at 0x3cec).
  At `beq v0,zero,3d60` at 0x3d3c, the branch is taken when v0(=ret(cpu_enabled)) == 0; it falls through when v0(=ret(cpu_enabled)) != 0 (`beq` at 0x3d3c).
  At `beq a2,zero,3d68` at 0x3d58, the branch is taken when (a2(=[[table(sym(pdaindr))+8]:8+72]) & 0x80) == 0; it falls through when (a2(=[[table(sym(pdaindr))+8]:8+72]) & 0x80) != 0 (`beq` at 0x3d58).
  Returns with v0 = ? at 0x3d88 (`jr` at 0x3d88).
  Calls `device_desc_intr_target_get` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3ce0).
  Calls `cpuvertex_to_cpuid` via direct with a0=ret(device_desc_intr_target_get), a1=[sym(.sdata)+80], a2=?, a3=? (`jal` at 0x3cf4).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3d04).
  Calls `cpu_enabled` via direct with a0=?, a1=[sym(.sdata)+80], a2=?, a3=? (`jal` at 0x3d34).
- `heart_set_cpu_intr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x3d90, 20 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `at` to abs 0xffffffffaff10020 (`sd` at 0x3da0).
  Returns with v0 = 0xffffffffaff10000 at 0x3d9c (`jr` at 0x3d9c).
- `devnamefromarcs` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x3da4, 384 bytes) Inferred.
  Role: unknown.
  Stores 1 bytes from `t1` to ? (base unknown) (`sb` at 0x3e18).
  Stores 8 bytes from `a5` to ? (base unknown); value 0x2f7461726765742f (`sdl` at 0x3e28).
  Stores 8 bytes from `a5` to ? (base unknown); value 0x2f7461726765742f (`sdr` at 0x3e2c).
  Stores 1 bytes from `a4` to ? (base unknown); value 0x0 (`sb` at 0x3e30).
  Stores 1 bytes from `ra` to ? (base unknown) (`sb` at 0x3e64).
  Stores 8 bytes from `t2` to ? (base unknown); value 0x2f6c756e2f302f64 (`sdl` at 0x3e74).
  Stores 8 bytes from `t2` to ? (base unknown); value 0x2f6c756e2f302f64 (`sdr` at 0x3e78).
  Stores 8 bytes from `t3` to ? (base unknown); value 0x69736b2f70617274 (`sdl` at 0x3e7c).
  Stores 8 bytes from `t3` to ? (base unknown); value 0x69736b2f70617274 (`sdr` at 0x3e80).
  Stores 4 bytes from `a6` to ? (base unknown); value 0x6974696f (`swl` at 0x3e84).
  Stores 4 bytes from `a6` to ? (base unknown); value 0x6974696f (`swr` at 0x3e88).
  Stores 1 bytes from `t0` to ? (base unknown); value 0x0 (`sb` at 0x3e8c).
  Stores 1 bytes from `t1` to ? (base unknown); value 0x2f (`sb` at 0x3e90).
  Stores 1 bytes from `a7` to ? (base unknown); value 0x6e (`sb` at 0x3e94).
  Stores 1 bytes from `v0` to ? (base unknown) (`sb` at 0x3ea8).
  Stores 1 bytes from `v1` to ? (base unknown) (`sb` at 0x3eb4).
  Stores 1 bytes from `a0` to ? (base unknown) (`sb` at 0x3ec8).
  Stores 1 bytes from `a1` to ? (base unknown) (`sb` at 0x3ee4).
  Stores 1 bytes from `a6` to ? (base unknown); value 0x2f (`sb` at 0x3ef0).
  Stores 4 bytes from `a5` to ? (base unknown); value 0x626c6f63 (`swl` at 0x3f00).
  Stores 4 bytes from `a5` to ? (base unknown); value 0x626c6f63 (`swr` at 0x3f04).
  Stores 1 bytes from `a4` to ? (base unknown); value 0x0 (`sb` at 0x3f0c).
  Stores 1 bytes from `a2` to ? (base unknown); value 0x6b (`sb` at 0x3f18).
  At `beq v0,zero,3ddc` at 0x3dc4, the branch is taken when v0(=ret(strncmp)) == 0; it falls through when v0(=ret(strncmp)) != 0 (`beq` at 0x3dc4).
  At `beq a0,a7,3e24` at 0x3e00, the branch is taken when a0(=0x64) == a7(=[a0+3]:1); it falls through when a0(=0x64) != a7(=[a0+3]:1) (`beq` at 0x3e00).
  At `beq t1,zero,3dcc` at 0x3e14, the branch is taken when t1(?) == 0; it falls through when t1(?) != 0 (`beq` at 0x3e14).
  At `bne a0,t2,3e08` at 0x3e20, the branch is taken when a0(=0x64) != t2(?); it falls through when a0(=0x64) == t2(?) (`bne` at 0x3e20).
  At `beq a0,t9,3e74` at 0x3e4c, the branch is taken when a0(=0x73) == t9(?); it falls through when a0(=0x73) != t9(?) (`beq` at 0x3e4c).
  At `beq ra,zero,3dcc` at 0x3e60, the branch is taken when ra(?) == 0; it falls through when ra(?) != 0 (`beq` at 0x3e60).
  At `bne a0,at,3e54` at 0x3e6c, the branch is taken when a0(=0x73) != at(?); it falls through when a0(=0x73) == at(?) (`bne` at 0x3e6c).
  At `beq v0,zero,3ee8` at 0x3ea4, the branch is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0x3ea4).
  At `beq v1,zero,3ee8` at 0x3eb8, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x3eb8).
  At `beq a0,zero,3ee8` at 0x3ecc, the branch is taken when a0(?) == 0; it falls through when a0(?) != 0 (`beq` at 0x3ecc).
  At `bne a1,zero,3eac` at 0x3ee0, the branch is taken when a1(?) != 0; it falls through when a1(?) == 0 (`bne` at 0x3ee0).
  Returns with v0 = ? at 0x3dd4 (`jr` at 0x3dd4).
  Calls `strncmp` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+120, a2=0x3, a3=a3 at entry (arg3) (`jal` at 0x3dbc).
  Calls `strcpy` via direct with a0=a0 at entry (arg0), a1=sp-272, a2=0x6b, a3=?, a4=0x0, a5=0x626c6f63, a6=0x2f, a7=0x6e (`jal` at 0x3f14).
- `heart_invalidate_war` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x3f24, 148 bytes) Inferred.
  Role: unknown.
  At `beq at,zero,3f8c` at 0x3f2c, the branch is taken when at(=[sym(_heart_invalidate_war)]) == 0; it falls through when at(=[sym(_heart_invalidate_war)]) != 0 (`beq` at 0x3f2c).
  At `beq v0,zero,3f54` at 0x3f40, the branch is taken when v0(=[-0x3fe0]:8) == 0; it falls through when v0(=[-0x3fe0]:8) != 0 (`beq` at 0x3f40).
  At `beq v1,a0,3fa8` at 0x3f4c, the branch is taken when v1(=[-0x3fb1]:1) == a0(=0x2); it falls through when v1(=[-0x3fb1]:1) != a0(=0x2) (`beq` at 0x3f4c).
  At `beq a1,zero,3f84` at 0x3f70, the branch is taken when a1(=[-0x3fe0]:8) == 0; it falls through when a1(=[-0x3fe0]:8) != 0 (`beq` at 0x3f70).
  At `beq a2,a3,3f98` at 0x3f7c, the branch is taken when a2(=[-0x3fb1]:1) == a3(=0x2); it falls through when a2(=[-0x3fb1]:1) != a3(=0x2) (`beq` at 0x3f7c).
  Returns with v0 = ? at 0x3f90 (`jr` at 0x3f90).
  Calls `splhi` via direct with a0=0x2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3f54).
  Calls `__heart_invalidate_war` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x3f64).
  Calls `splx` via direct with a0=?, a1=[-0x3fe0]:8, a2=?, a3=0x2 (`jal` at 0x3f84).
  Calls `rt_unpin_thread` via direct with a0=?, a1=[-0x3fe0]:8, a2=[-0x3fb1]:1, a3=0x2 (`jal` at 0x3f98).
  Calls `rt_pin_thread` via direct with a0=0x2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3fa8).
- `bp_heart_invalidate_war` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x3fb8, 300 bytes) Inferred.
  Role: unknown.
  At `beq at,zero,404c` at 0x3fcc, the branch is taken when at(=[sym(_heart_invalidate_war)]) == 0; it falls through when at(=[sym(_heart_invalidate_war)]) != 0 (`beq` at 0x3fcc).
  At `beq v0,zero,3fec` at 0x3fd8, the branch is taken when v0(=[-0x3fe0]:8) == 0; it falls through when v0(=[-0x3fe0]:8) != 0 (`beq` at 0x3fd8).
  At `beq v1,a0,405c` at 0x3fe4, the branch is taken when v1(=[-0x3fb1]:1) == a0(=0x2); it falls through when v1(=[-0x3fb1]:1) != a0(=0x2) (`beq` at 0x3fe4).
  At `beq a1,a2,4020` at 0x4004, the branch is taken when a1(?) == a2(=0x4000); it falls through when a1(?) != a2(=0x4000) (`beq` at 0x4004).
  At `bgez a0,406c` at 0x4020, the branch is taken when a0(=([a0+16]:8 << 0x2a)) >= 0 (signed); it falls through when a0(=([a0+16]:8 << 0x2a)) < 0 (signed) (`bgez` at 0x4020).
  At `beq a3,zero,4044` at 0x4030, the branch is taken when a3(=[-0x3fe0]:8) == 0; it falls through when a3(=[-0x3fe0]:8) != 0 (`beq` at 0x4030).
  At `beq a4,a5,40d4` at 0x403c, the branch is taken when a4(=[-0x3fb1]:1) == a5(=0x2); it falls through when a4(=[-0x3fb1]:1) != a5(=0x2) (`beq` at 0x403c).
  At `beq a1,a3,4028` at 0x408c, the branch is taken when a1(?) == a3(=-0x1); it falls through when a1(?) != a3(=-0x1) (`beq` at 0x408c).
  At `bne s0,a3,4098` at 0x40c4, the branch is taken when s0(?) != a3(=-0x1); it falls through when s0(?) == a3(=-0x1) (`bne` at 0x40c4).
  Returns with v0 = ? at 0x4054 (`jr` at 0x4054).
  Calls `splhi` via direct with a0=0x2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3fec).
  Calls `__heart_invalidate_war` via direct with a0=[a0+128]:8, a1=[a0+104], a2=0x4000, a3=? (`jal` at 0x4010).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=[-0x3fe0]:8, a5=0x2 (`jal` at 0x4044).
  Calls `rt_pin_thread` via direct with a0=0x2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x405c).
  Calls `__heart_invalidate_war` via direct with a0=?, a1=0x4000, a2=?, a3=-0x1 (`jal` at 0x40b4).
  Calls `rt_unpin_thread` via direct with a0=?, a1=?, a2=?, a3=[-0x3fe0]:8, a4=[-0x3fb1]:1, a5=0x2 (`jal` at 0x40d4).
- `ip30_rad_halt` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x40e4, 36 bytes) Inferred.
  Role: unknown.
  At `beq a1,zero,40fc` at 0x40ec, the branch is taken when a1(=[sym(rad_halt_func)]:8) == 0; it falls through when a1(=[sym(rad_halt_func)]:8) != 0 (`beq` at 0x40ec).
  Returns with v0 = ? at 0x4100 (`jr` at 0x4100).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[sym(rad_halt_func)]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x40f4).
- `stop_bell` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x4108, 52 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `at` to [sym(.sdata)+64]:8 +0x0; value 0x100000 (`sw` at 0x412c).
  Returns with v0 = ret(splx) at 0x4134 (`jr` at 0x4134).
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4110).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x4128).
- `pckbd_bell` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x413c, 140 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `a3` to [sym(.sdata)+72]:8 +0x0; value 0x100000 (`sw` at 0x41b0).
  At `blez a2,4184` at 0x4148, the branch is taken when a2 <= 0 (signed); it falls through when a2 > 0 (signed) (`blez` at 0x4148).
  At `beq v0,zero,418c` at 0x4164, the branch is taken when v0(=[sym(.sbss)+48]) == 0; it falls through when v0(=[sym(.sbss)+48]) != 0 (`beq` at 0x4164).
  Returns with v0 = one of 0x0, 0x1 at 0x417c (`jr` at 0x417c).
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4150).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x416c).
  Calls `timeout` via direct with a0=sym(stop_bell), a1=0x0, a2=?, a3=0x100000, a4=[sym(.sdata)+72]:8 (`jal` at 0x41b4).
- `stopclocks` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x41c8, 40 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `at` to abs 0xffffffffffffc510; value 0xfffffffff0000000 (`sw` at 0x41e0).
  Stores 8 bytes from `zero` to abs 0xffffffffffffc570; value 0x0 (`sd` at 0x41e4).
  Returns with v0 = ret(slowkgclock) at 0x41e8 (`jr` at 0x41e8).
  Calls `slowkgclock` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x41d0).
- `counter_intr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x41f0, 1724 bytes) Inferred.
  Role: unknown.
  Range 0x441c is not reached from the entry.
  Stores 4 bytes from `zero` to ? (base unknown); value 0x0 (`sw` at 0x429c).
  Stores 8 bytes from `a2` to abs 0xffffffffffffc558; value [-0x3aa8]:8+600 (`sd` at 0x4418).
  Stores 8 bytes from `s0` to abs 0xffffffffffffc570; value [0xffffffffaff20000]:8 (`sd` at 0x4470).
  Stores 4 bytes from `v0` to abs 0xffffffffffffc560; value [-0x3aa0]+1 (`sw` at 0x447c).
  Stores 8 bytes from `a2` to abs 0xffffffffffffc548; value [-0x3ab8]:8+125000 (`sd` at 0x4484).
  Stores 4 bytes from `a0` to abs 0xffffffffffffc564; value [-0x3a9c]+1 (`sw` at 0x44bc).
  Stores 8 bytes from `v0` to abs 0xffffffffffffc550; value ([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8) (`sd` at 0x44c4).
  Stores 4 bytes from `v0` to abs 0xffffffffffffc560 (`sw` at 0x4510).
  Stores 8 bytes from `a2` to abs 0xffffffffffffc548 (`sd` at 0x4518).
  Stores 8 bytes from `a2` to abs 0xffffffffffffc548 (`sd` at 0x4538).
  Stores 4 bytes from `t3` to abs 0xffffffffffffc568; value [-0x3a98]+1 (`sw` at 0x4570).
  Stores 4 bytes from `a0` to abs 0xffffffffffffc564; value [-0x3a9c]+1 (`sw` at 0x45a4).
  Stores 8 bytes from `v0` to abs 0xffffffffffffc550; value ([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8) (`sd` at 0x45ac).
  Stores 8 bytes from `a2` to abs 0xffffffffffffc558 (`sd` at 0x45ec).
  Stores 4 bytes from `a7` to abs 0xffffffffffffc568; value [-0x3a98]+1 (`sw` at 0x4608).
  Stores 4 bytes from `v0` to abs 0xffffffffffffc560 (`sw` at 0x4614).
  Stores 4 bytes from `a0` to abs 0xffffffffffffc564; value [-0x3a9c]+1 (`sw` at 0x4640).
  Stores 8 bytes from `v0` to abs 0xffffffffffffc550; value ([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8) (`sd` at 0x4648).
  Stores 8 bytes from `a2` to abs 0xffffffffffffc548; value table(0x1e848) (`sd` at 0x4658).
  Stores 8 bytes from `v0` to abs 0xffffffffffffc550 (`sd` at 0x4664).
  Stores 4 bytes from `t8` to abs 0xffffffffffffc560; value [-0x3aa0]+1 (`sw` at 0x46a4).
  Stores 4 bytes from `t3` to abs 0xffffffffffffc568; value [-0x3a98]+1 (`sw` at 0x46b0).
  Stores 4 bytes from `ra` to abs 0xffffffffffffc56c; value [-0x3a94]+1 (`sw` at 0x46cc).
  Stores 4 bytes from `a0` to abs 0xffffffffffffc564 (`sw` at 0x46d8).
  Stores 4 bytes from `a2` to abs 0xffffffffffffc584 (`sw` at 0x470c).
  Stores 4 bytes from `a5` to abs 0xffffffffffffc580; value [-0x3a80]+1 (`sw` at 0x4720).
  Stores 8 bytes from `a3` to abs 0xffffffffffffc578 (`sd` at 0x4730).
  At `beq at,zero,4244` at 0x4204, the branch is taken when at(=[-0x39a8]) == 0; it falls through when at(=[-0x39a8]) != 0 (`beq` at 0x4204).
  At `bne v0,zero,479c` at 0x4214, the branch is taken when (v0(=[-0x3d80]:8) & 0x20) != 0; it falls through when (v0(=[-0x3d80]:8) & 0x20) == 0 (`bne` at 0x4214).
  At `bne v1,zero,47b8` at 0x422c, the branch is taken when (v1(=[-0x3d80]:8) & 0x20) != 0; it falls through when (v1(=[-0x3d80]:8) & 0x20) == 0 (`bne` at 0x422c).
  At `beq v0,zero,4264` at 0x424c, the branch is taken when v0(=ret(hwperf_overflowed_intr)) == 0; it falls through when v0(=ret(hwperf_overflowed_intr)) != 0 (`beq` at 0x424c).
  At `beq a0,zero,42f4` at 0x4270, the branch is taken when (a0(=[-0x3fb8]) & 0x40) == 0; it falls through when (a0(=[-0x3fb8]) & 0x40) != 0 (`beq` at 0x4270).
  At `beq s2,zero,4230` at 0x42d4, the branch is taken when s2(=one of 0x0, 0x1) == 0; it falls through when s2(=one of 0x0, 0x1) != 0 (`beq` at 0x42d4).
  At `beq a2,zero,4234` at 0x42e4, the branch is taken when (a2(=[-0x3d80]:8) & 0x20) == 0; it falls through when (a2(=[-0x3d80]:8) & 0x20) != 0 (`beq` at 0x42e4).
  At `beq a3,zero,4408` at 0x4300, the branch is taken when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3aa8]:8) (unsigned); it falls through when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3aa8]:8) (unsigned) (`beq` at 0x4300).
  At `beq a5,zero,4754` at 0x4320, the branch is taken when a5(?) >= a6(?) (unsigned); it falls through when a5(?) < a6(?) (unsigned) (`beq` at 0x4320).
  At `beq t0,zero,4378` at 0x4330, the branch is taken when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3aa8]:8) (unsigned); it falls through when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3aa8]:8) (unsigned) (`beq` at 0x4330).
  At `beq t1,zero,4378` at 0x4340, the branch is taken when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3aa8]:8) (unsigned); it falls through when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3aa8]:8) (unsigned) (`beq` at 0x4340).
  At `beq t2,zero,4378` at 0x4350, the branch is taken when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3aa8]:8) (unsigned); it falls through when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3aa8]:8) (unsigned) (`beq` at 0x4350).
  At `beq t3,zero,4378` at 0x4360, the branch is taken when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3aa8]:8) (unsigned); it falls through when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3aa8]:8) (unsigned) (`beq` at 0x4360).
  At `bne t8,zero,4328` at 0x4370, the branch is taken when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3aa8]:8) (unsigned); it falls through when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3aa8]:8) (unsigned) (`bne` at 0x4370).
  At `bne t9,zero,4490` at 0x4388, the branch is taken when s0(=[0xffffffffaff20000]:8) < a2(=[-0x3ab8]:8) (unsigned); it falls through when s0(=[0xffffffffaff20000]:8) >= a2(=[-0x3ab8]:8) (unsigned) (`bne` at 0x4388).
  At `bne ra,zero,47f4` at 0x4398, the branch is taken when (ra(=[-0x3d80]:8) & 0x20) != 0; it falls through when (ra(=[-0x3d80]:8) & 0x20) == 0 (`bne` at 0x4398).
  At `beq v0,zero,4734` at 0x43a4, the branch is taken when v0(=[-0x3a90]:8) == 0; it falls through when v0(=[-0x3a90]:8) != 0 (`beq` at 0x43a4).
  At `beq at,zero,46e4` at 0x43b0, the branch is taken when at(=[sym(lbolt)]) >= 0x3e9 (signed); it falls through when at(=[sym(lbolt)]) < 0x3e9 (signed) (`beq` at 0x43b0).
  At `beq v0,zero,4420` at 0x43bc, the branch is taken when v0(=[sym(counter_intr_warn_period)]) == 0; it falls through when v0(=[sym(counter_intr_warn_period)]) != 0 (`beq` at 0x43bc).
  At `beq v1,zero,4420` at 0x43cc, the branch is taken when v1(=[sym(counter_intr_warn_period)]) >= 0x100 (unsigned); it falls through when v1(=[sym(counter_intr_warn_period)]) < 0x100 (unsigned) (`beq` at 0x43cc).
  At `beq a1,zero,4380` at 0x440c, the branch is taken when a1(=[-0x3aa8]:8+1200) >= s0(=[0xffffffffaff20000]:8) (unsigned); it falls through when a1(=[-0x3aa8]:8+1200) < s0(=[0xffffffffaff20000]:8) (unsigned) (`beq` at 0x440c).
  At `beq v0,zero,473c` at 0x4428, the branch is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0x4428).
  At `beq v1,a0,445c` at 0x444c, the branch is taken when v1(=[-0x3af0]) == a0(=0xf0000000); it falls through when v1(=[-0x3af0]) != a0(=0xf0000000) (`beq` at 0x444c).
  At `beq a1,zero,4810` at 0x4458, the branch is taken when a1(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) == 0; it falls through when a1(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) != 0 (`beq` at 0x4458).
  At `bne a5,zero,4618` at 0x4480, the branch is taken when s0(=[0xffffffffaff20000]:8) < a2(=[-0x3ab8]:8+125000) (unsigned); it falls through when s0(=[0xffffffffaff20000]:8) >= a2(=[-0x3ab8]:8+125000) (unsigned) (`bne` at 0x4480).
  At `bne a5,zero,44f4` at 0x4498, the branch is taken when v0(=[-0x3ab0]:8) < 0x2 (unsigned); it falls through when v0(=[-0x3ab0]:8) >= 0x2 (unsigned) (`bne` at 0x4498).
  At `bne a6,zero,44f0` at 0x44a4, the branch is taken when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3ab0]:8) (unsigned); it falls through when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3ab0]:8) (unsigned) (`bne` at 0x44a4).
  At `bne a7,zero,44f0` at 0x44c0, the branch is taken when s0(=[0xffffffffaff20000]:8) < v0(=([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8)) (unsigned); it falls through when s0(=[0xffffffffaff20000]:8) >= v0(=([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8)) (unsigned) (`bne` at 0x44c0).
  At `bne a5,zero,4574` at 0x4524, the branch is taken when s0(=[0xffffffffaff20000]:8) < a2(?) (unsigned); it falls through when s0(=[0xffffffffaff20000]:8) >= a2(?) (unsigned) (`bne` at 0x4524).
  At `beq a7,zero,45f0` at 0x4530, the branch is taken when a7(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) == 0; it falls through when a7(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) != 0 (`beq` at 0x4530).
  At `bne t0,zero,4574` at 0x4544, the branch is taken when s0(=[0xffffffffaff20000]:8) < a2(?) (unsigned); it falls through when s0(=[0xffffffffaff20000]:8) >= a2(?) (unsigned) (`bne` at 0x4544).
  At `bne t1,zero,4514` at 0x4550, the branch is taken when t1(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) != 0; it falls through when t1(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) == 0 (`bne` at 0x4550).
  At `bne t2,zero,450c` at 0x455c, the branch is taken when t2(=[sym(lbolt)]) < 0xb5 (signed); it falls through when t2(=[sym(lbolt)]) >= 0xb5 (signed) (`bne` at 0x455c).
  At `bne t8,zero,45bc` at 0x457c, the branch is taken when v0(=[-0x3ab0]:8) < 0x2 (unsigned); it falls through when v0(=[-0x3ab0]:8) >= 0x2 (unsigned) (`bne` at 0x457c).
  At `bne t9,zero,45bc` at 0x4588, the branch is taken when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3ab0]:8) (unsigned); it falls through when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3ab0]:8) (unsigned) (`bne` at 0x4588).
  At `bne ra,zero,45b8` at 0x45a8, the branch is taken when s0(=[0xffffffffaff20000]:8) < v0(=([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8)) (unsigned); it falls through when s0(=[0xffffffffaff20000]:8) >= v0(=([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8)) (unsigned) (`bne` at 0x45a8).
  At `bne a5,zero,460c` at 0x45f8, the branch is taken when a5(=[sym(lbolt)]) < 0xb5 (signed); it falls through when a5(=[sym(lbolt)]) >= 0xb5 (signed) (`bne` at 0x45f8).
  At `bne t0,zero,46dc` at 0x4620, the branch is taken when v0(=[-0x3ab0]:8) < 0x2 (unsigned); it falls through when v0(=[-0x3ab0]:8) >= 0x2 (unsigned) (`bne` at 0x4620).
  At `bne t1,zero,46dc` at 0x4628, the branch is taken when t1(?) != 0; it falls through when t1(?) == 0 (`bne` at 0x4628).
  At `bne t2,zero,46dc` at 0x4644, the branch is taken when s0(=[0xffffffffaff20000]:8) < v0(=([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8)) (unsigned); it falls through when s0(=[0xffffffffaff20000]:8) >= v0(=([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8)) (unsigned) (`bne` at 0x4644).
  At `bne a5,zero,45bc` at 0x4670, the branch is taken when s0(=[0xffffffffaff20000]:8) < v0(?) (unsigned); it falls through when s0(=[0xffffffffaff20000]:8) >= v0(?) (unsigned) (`bne` at 0x4670).
  At `beq t0,zero,46b4` at 0x467c, the branch is taken when t0(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) == 0; it falls through when t0(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) != 0 (`beq` at 0x467c).
  At `bne t1,zero,4660` at 0x4684, the branch is taken when t1(?) != 0; it falls through when t1(?) == 0 (`bne` at 0x4684).
  At `bne t2,zero,4654` at 0x4690, the branch is taken when t2(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) != 0; it falls through when t2(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) == 0 (`bne` at 0x4690).
  At `bne t9,zero,46d0` at 0x46bc, the branch is taken when t9(=[sym(lbolt)]) < 0xb5 (signed); it falls through when t9(=[sym(lbolt)]) >= 0xb5 (signed) (`bne` at 0x46bc).
  At `beq at,zero,4710` at 0x4704, the branch is taken when at(=[-0x3a7c]) >= a2(?) (unsigned); it falls through when at(=[-0x3a7c]) < a2(?) (unsigned) (`beq` at 0x4704).
  At `bne a7,zero,4878` at 0x4858, the branch is taken when a3(?) < a7(?) (signed); it falls through when a3(?) >= a7(?) (signed) (`bne` at 0x4858).
  At `bne t3,zero,4878` at 0x4868, the branch is taken when t3(?) < a3(?) (signed); it falls through when t3(?) >= a3(?) (signed) (`bne` at 0x4868).
  Returns with v0 = ? at 0x423c (`jr` at 0x423c).
  Calls `frs_handle_counter_intr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x421c).
  Calls `hwperf_overflowed_intr` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4244).
  Calls `hwperf_intr` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x4254).
  Calls `resetcounter` via direct with a0=-0x1, a1=?, a2=?, a3=? (`jal` at 0x427c).
  Calls `first_timein [0x661c]` via direct with a0=[(sym(pdaindr) + ([-0x3c60]:2 << 0x4))+8]:8+1416, a1=([-0x3c60]:2 << 0x4), a2=?, a3=? (`jal` at 0x42b4).
  Calls `_set_timer_intr [0x5148]` via direct with a0=[-0x3c60]:2, a1=ret(first_timein), a2=0x0, a3=0x1, a4=[0xffffffffaff20000]:8 (`jal` at 0x42cc).
  Calls `resetlatency` via direct with a0=?, a1=[-0x3aa8]:8+1200, a2=?, a3=?, a4=[-0x390c], a7=0x37e11d600 (`jal` at 0x4378).
  Calls `resetlatency` via direct with a0=?, a1=?, a2=?, a3=(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16, a4=0x1e848, a6=sym(.bss)+32 (`jal` at 0x45bc).
  Calls `_get_count` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x46e4).
  Calls `_get_compare` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x46ec).
  Calls `resetcounter` via direct with a0=?, a1=[sym(count_min_delta)], a2=?, a3=0x7d, a4=[sym(cpufreq_cycles)], a7=0x37e11d600 (`jal` at 0x478c).
  Calls `log_tstamp_event` via direct with a0=0x6c, a1=0x0, a2=0x0, a3=0x0, a4=0x0 (`jal` at 0x47a8).
  Calls `log_tstamp_event` via direct with a0=0x65, a1=0x6c, a2=0x0, a3=0x0, a4=0x0 (`jal` at 0x47c8).
  Calls `log_tstamp_event` via direct with a0=0x65, a1=0x6c, a2=0x0, a3=0x0, a4=0x0 (`jal` at 0x47e4).
  Calls `log_tstamp_event` via direct with a0=0x6c, a1=0x0, a2=0x0, a3=0x0, a4=0x0 (`jal` at 0x4800).
  Calls `cmn_err` via direct with a0=one of 0x0, 0x4, a1=sym(.rodata)+1104, a2=[-0x3c60]:2, a3=?, a4=[a0+288]:8, a5=[a0+240]:8, a6=sym(.rodata)+1104 (`jal` at 0x488c).
- `startrtclock` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x48ac, 376 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `v1` to abs 0xffffffffffffc510 (`sw` at 0x48cc).
  Stores 4 bytes from `zero` to abs 0xffffffffffffc568; value 0x0 (`sw` at 0x4940).
  Stores 8 bytes from `t3` to abs 0xffffffffffffc548 (`sd` at 0x498c).
  Stores 8 bytes from `a6` to abs 0xffffffffffffc558 (`sd` at 0x49c8).
  Stores 8 bytes from `a6` to abs 0xffffffffffffc548 (`sd` at 0x49cc).
  At `bne at,v0,4940` at 0x48dc, the branch is taken when at(=[-0x3c60]:2) != v0(=[sym(master_procid)]:2); it falls through when at(=[-0x3c60]:2) == v0(=[sym(master_procid)]:2) (`bne` at 0x48dc).
  At `bne a1,zero,4940` at 0x48fc, the branch is taken when a1(=[sym(count_min_delta)]) != 0; it falls through when a1(=[sym(count_min_delta)]) == 0 (`bne` at 0x48fc).
  At `beq a5,zero,4a1c` at 0x4918, the branch is taken when a5(?) == 0; it falls through when a5(?) != 0 (`beq` at 0x4918).
  At `bne a7,zero,4920` at 0x4934, the branch is taken when a7(?) != 0; it falls through when a7(?) == 0 (`bne` at 0x4934).
  Returns with v0 = ret(initcounter) at 0x4a14 (`jr` at 0x4a14).
  Calls `findcpufreq_cycles [0x65e8]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x48b4).
  Calls `initcounter` via direct with a0=?, a1=[sym(count_min_delta)], a2=?, a3=?, a4=0x7d, a5=[sym(cpufreq_cycles)] (`jal` at 0x4a08).
- `startaudioclock` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x4a24, 84 bytes) Inferred.
  Role: unknown.
  At `beq at,zero,4a3c` at 0x4a2c, the branch is taken when at(=[sym(audioclock)]) == 0; it falls through when at(=[sym(audioclock)]) != 0 (`beq` at 0x4a2c).
  Returns with v0 = ? at 0x4a34 (`jr` at 0x4a34).
  Calls `setmustrun` via direct with a0=[sym(master_procid)]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4a3c).
  Calls `startkgclock` via direct with a0=?, a1=0x1, a2=?, a3=? (`jal` at 0x4a60).
  Calls `restoremustrun` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4a68).
- `stopaudioclock` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x4a78, 96 bytes) Inferred.
  Role: unknown.
  At `beq at,zero,4abc` at 0x4a80, the branch is taken when at(=[sym(audioclock)]) == 0; it falls through when at(=[sym(audioclock)]) != 0 (`beq` at 0x4a80).
  At `beq v1,zero,4ac8` at 0x4aac, the branch is taken when v1(=[-0x3ac0]) == 0; it falls through when v1(=[-0x3ac0]) != 0 (`beq` at 0x4aac).
  Returns with v0 = ? at 0x4ac0 (`jr` at 0x4ac0).
  Calls `setmustrun` via direct with a0=[sym(master_procid)]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4a88).
  Calls `restoremustrun` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4ab4).
  Calls `slowkgclock` via direct with a0=(ret(setmustrun) << 0x20), a1=?, a2=?, a3=? (`jal` at 0x4ac8).
- `startprfclk` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x4ad8, 96 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `a2` to abs 0xffffffffffffc540; value [-0x3ac0]+1 (`sc` at 0x4afc).
  At `beql a2,zero,4af0` at 0x4b00, the branch is taken when a2(=[-0x3ac0]+1) == 0; it falls through when a2(=[-0x3ac0]+1) != 0 (`beql` at 0x4b00).
  At `beq at,v1,4b28` at 0x4b0c, the branch is taken when at(=[-0x3ac0]) == v1(=0x1); it falls through when at(=[-0x3ac0]) != v1(=0x1) (`beq` at 0x4b0c).
  Returns with v0 = ret(splx) at 0x4b20 (`jr` at 0x4b20).
  Calls `splprof` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4ae0).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4b14).
  Calls `startkgclock` via direct with a0=[-0x3ac0]+1, a1=-0x3ac0, a2=[-0x3ac0]+1, a3=? (`jal` at 0x4b28).
- `stopprfclk` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x4b38, 128 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `a2` to abs 0xffffffffffffc540; value [-0x3ac0]-1 (`sc` at 0x4b64).
  At `beq at,zero,4b94` at 0x4b50, the branch is taken when at(=[-0x3ac0]) == 0; it falls through when at(=[-0x3ac0]) != 0 (`beq` at 0x4b50).
  At `beql a2,zero,4b58` at 0x4b68, the branch is taken when a2(=[-0x3ac0]-1) == 0; it falls through when a2(=[-0x3ac0]-1) != 0 (`beql` at 0x4b68).
  At `bne v1,zero,4b94` at 0x4b74, the branch is taken when v1(=[-0x3ac0]) != 0; it falls through when v1(=[-0x3ac0]) == 0 (`bne` at 0x4b74).
  At `bne a3,a4,4ba8` at 0x4b84, the branch is taken when a3(=[-0x3c60]:2) != a4(=[sym(master_procid)]:2); it falls through when a3(=[-0x3c60]:2) == a4(=[sym(master_procid)]:2) (`bne` at 0x4b84).
  At `beq a0,zero,4ba8` at 0x4b8c, the branch is taken when a0(=[sym(audioclock)]) == 0; it falls through when a0(=[sym(audioclock)]) != 0 (`beq` at 0x4b8c).
  Returns with v0 = ret(splx) at 0x4ba0 (`jr` at 0x4ba0).
  Calls `splprof` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4b40).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4b94).
  Calls `slowkgclock` via direct with a0=[sym(audioclock)], a1=[-0x3ac0]-1, a2=[-0x3ac0]-1, a3=[-0x3c60]:2, a4=[sym(master_procid)]:2 (`jal` at 0x4ba8).
- `ackrtclock` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x4bb8, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x4bb8 (`jr` at 0x4bb8).
- `init_timebase` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x4bc0, 188 bytes) Inferred.
  Role: unknown.
  Range 0x4c64 is not reached from the entry.
  Stores 4 bytes from `v0` to sym(pdaindr) +0x20; value ret(rtodc) (`sw` at 0x4bf0).
  Stores 8 bytes from `zero` to sym(pdaindr) +0x28; value 0x0 (`sd` at 0x4bf4).
  At `beq at,zero,4c68` at 0x4c18, the branch is taken when at(=[0xffffffffaff20000]:8) >= v0(=[sym(.sbss)+104]:8+0x17d7840) (unsigned); it falls through when at(=[0xffffffffaff20000]:8) < v0(=[sym(.sbss)+104]:8+0x17d7840) (unsigned) (`beq` at 0x4c18).
  At `beq ra,zero,4c68` at 0x4c38, the branch is taken when ra(=[0xffffffffaff20000]:8) >= at(=[sym(.sbss)+104]:8+0x17d7840) (unsigned); it falls through when ra(=[0xffffffffaff20000]:8) < at(=[sym(.sbss)+104]:8+0x17d7840) (unsigned) (`beq` at 0x4c38).
  At `beq v1,v0,4c28` at 0x4c4c, the branch is taken when v1(=[sym(time)]) == v0(=ret(rtodc)); it falls through when v1(=[sym(time)]) != v0(=ret(rtodc)) (`beq` at 0x4c4c).
  Returns with v0 = ? at 0x4c5c (`jr` at 0x4c5c).
  Calls `rtodc` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4bcc).
  Calls `rtodc` via direct with a0=?, a1=sym(.rodata)+1104, a2=?, a3=? (`jal` at 0x4c40).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+1104, a2=?, a3=? (`jal` at 0x4c6c).
- `inittodr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x4c7c, 364 bytes) Inferred.
  Role: unknown.
  At `beq at,zero,4cc0` at 0x4ca8, the branch is taken when at(=[sym(miniroot)]:1) == 0; it falls through when at(=[sym(miniroot)]:1) != 0 (`beq` at 0x4ca8).
  At `bne a1,zero,4ce8` at 0x4cd8, the branch is taken when v0(=ret(rtodc)) < a5(=0x4000000) (signed); it falls through when v0(=ret(rtodc)) >= a5(=0x4000000) (signed) (`bne` at 0x4cd8).
  At `beq a3,zero,4d34` at 0x4ce0, the branch is taken when a3(?) == 0; it falls through when a3(?) != 0 (`beq` at 0x4ce0).
  At `beq a0,zero,4d08` at 0x4ce8, the branch is taken when a0(?) == 0; it falls through when a0(?) != 0 (`beq` at 0x4ce8).
  At `bne a3,zero,4dc8` at 0x4d4c, the branch is taken when s0(=a0) < a3(=0x9660180) (signed); it falls through when s0(=a0) >= a3(=0x9660180) (signed) (`bne` at 0x4d4c).
  At `bltz a3,4de0` at 0x4d60, the branch is taken when a3(?) < 0 (signed); it falls through when a3(?) >= 0 (signed) (`bltz` at 0x4d60).
  At `bne t1,zero,4cb0` at 0x4d70, the branch is taken when a6(?) < a2(=0x2a300) (signed); it falls through when a6(?) >= a2(=0x2a300) (signed) (`bne` at 0x4d70).
  At `bne t2,zero,4d84` at 0x4d78, the branch is taken when t2(?) != 0; it falls through when t2(?) == 0 (`bne` at 0x4d78).
  Returns with v0 = ? at 0x4cb8 (`jr` at 0x4cb8).
  Calls `rtodc` via direct with a0=0xf4240, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4cc0).
  Calls `cmn_err_tag` via direct with a0=0x32, a1=0x4, a2=sym(.rodata)+1104, a3=?, a4=[sym(time)], a5=0x4000000 (`jal` at 0x4cf8).
  Calls `cmn_err_tag` via direct with a0=0x33, a1=0x4, a2=sym(.rodata)+1104, a3=?, a4=[sym(time)], a5=0x4000000 (`jal` at 0x4d14).
  Calls `settime` via direct with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=? (`jal` at 0x4d20).
  Calls `wtodc` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4d28).
  Calls `cmn_err_tag` via direct with a0=0x35, a1=0x4, a2=sym(.rodata)+1104, a3=sym(.rodata)+1104, a5=[sym(time)], a7=0x20000 (`jal` at 0x4da4).
  Calls `cmn_err_tag` via direct with a0=0x36, a1=0x4, a2=sym(.rodata)+1104, a3=? (`jal` at 0x4db8).
  Calls `cmn_err_tag` via direct with a0=0x34, a1=0x4, a2=sym(.rodata)+1104, a3=?, a5=[sym(time)], a7=0x20000 (`jal` at 0x4dd0).
- `query_cyclecntr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x4de8, 36 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x0 (`sw` at 0x4e08).
  Returns with v0 = 0x900000000ff20000 at 0x4e04 (`jr` at 0x4e04).
- `query_fasttimer` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x4e0c, 32 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x4e24 (`jr` at 0x4e24).
- `query_cyclecntr_size` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x4e2c, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = 0x40 at 0x4e2c (`jr` at 0x4e2c).
- `tick_maint` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x4e34, 100 bytes) Inferred.
  Role: unknown.
  At `beq at,a2,4e60` at 0x4e40, the branch is taken when at(=[sym(lbolt)]) == a2(=0x1); it falls through when at(=[sym(lbolt)]) != a2(=0x1) (`beq` at 0x4e40).
  At `beq v0,zero,4e88` at 0x4e50, the branch is taken when v0(=[sym(.sbss)+136]-1) == 0; it falls through when v0(=[sym(.sbss)+136]-1) != 0 (`beq` at 0x4e50).
  At `bne v1,zero,4e4c` at 0x4e64, the branch is taken when v1(=[-0x3c60]:2) != 0; it falls through when v1(=[-0x3c60]:2) == 0 (`bne` at 0x4e64).
  Returns with v0 = ? at 0x4e58 (`jr` at 0x4e58).
  Calls `__nanotime [0x5eb0]` via direct with a0=?, a1=[sym(.sbss)+136], a2=0x1, a3=? (`jal` at 0x4e88).
- `fastick_maint` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x4e98, 144 bytes) Inferred.
  Role: unknown.
  Stores 1 bytes from `v1` to abs 0xffffffffffffc052; value 0x1 (`sb` at 0x4e9c).
  Stores 1 bytes from `zero` to abs 0xffffffffffffc052; value 0x0 (`sb` at 0x4ee8).
  At `beq at,v0,4ef8` at 0x4eb4, the branch is taken when at(=[-0x3c60]:2) == v0(=[sym(master_procid)]:2); it falls through when at(=[-0x3c60]:2) != v0(=[sym(master_procid)]:2) (`beq` at 0x4eb4).
  At `beq a0,zero,4ee8` at 0x4ec8, the branch is taken when a0(=[-0x3ac0]) == 0; it falls through when a0(=[-0x3ac0]) != 0 (`beq` at 0x4ec8).
  At `beq a0,zero,4f0c` at 0x4efc, the branch is taken when a0(=[sym(midi_timercallback_ptr)]:8) == 0; it falls through when a0(=[sym(midi_timercallback_ptr)]:8) != 0 (`beq` at 0x4efc).
  At `beq a0,zero,4ebc` at 0x4f10, the branch is taken when a0(=[sym(ieee1394_timercallback_ptr)]:8) == 0; it falls through when a0(=[sym(ieee1394_timercallback_ptr)]:8) != 0 (`beq` at 0x4f10).
  Returns with v0 = ? at 0x4ef0 (`jr` at 0x4ef0).
  Calls `fast_user_prof` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x4ebc).
  Calls `prfintr` via direct with a0=[a0+288]:8, a1=[a0+224]:8, a2=[a0+240]:8, a3=[a0+248]:8 (`jal` at 0x4edc).
  Calls `(unknown callee)` via register with a0=[sym(midi_timercallback_ptr)]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x4f04).
  Calls `(unknown callee)` via register with a0=[sym(ieee1394_timercallback_ptr)]:8, a1=?, a2=?, a3=? (`jalr` at 0x4f18).
- `chktimedrift` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x4f28, 104 bytes) Inferred.
  Role: unknown.
  At `beq at,zero,4f60` at 0x4f44, the branch is taken when a3(?) >= 0x3 (signed); it falls through when a3(?) < 0x3 (signed) (`beq` at 0x4f44).
  At `bne a2,zero,4f64` at 0x4f4c, the branch is taken when a2(?) != 0; it falls through when a2(?) == 0 (`bne` at 0x4f4c).
  Returns with v0 = ? at 0x4f58 (`jr` at 0x4f58).
  Calls `rtodc` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4f30).
  Calls `doadjtime` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4f80).
- `onesec_maint` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x4f90, 196 bytes) Inferred.
  Role: unknown.
  At `beq v0,zero,4ff0` at 0x4fc8, the branch is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0x4fc8).
  At `beq a1,zero,503c` at 0x4fdc, the branch is taken when a1(=[sym(.sdata)+108]) == 0; it falls through when a1(=[sym(.sdata)+108]) != 0 (`beq` at 0x4fdc).
  At `beq a1,zero,4fd4` at 0x4ff0, the branch is taken when a1(=[sym(.sdata)+100]) == 0; it falls through when a1(=[sym(.sdata)+100]) != 0 (`beq` at 0x4ff0).
  At `beq a0,zero,5018` at 0x5004, the branch is taken when a1(=[sym(lastadjtime)]) >= a3(=[sym(lbolt)]) (signed); it falls through when a1(=[sym(lastadjtime)]) < a3(=[sym(lbolt)]) (signed) (`beq` at 0x5004).
  At `beq a4,zero,5044` at 0x5010, the branch is taken when a4(=[sym(adjtime_delta)]:8) == 0; it falls through when a4(=[sym(adjtime_delta)]:8) != 0 (`beq` at 0x5010).
  At `beq a5,zero,4fd4` at 0x5018, the branch is taken when a5(?) == 0; it falls through when a5(?) != 0 (`beq` at 0x5018).
  Returns with v0 = ? at 0x4fe8 (`jr` at 0x4fe8).
  Calls `tlb_onesec_actions` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4f98).
  Calls `wtodc` via direct with a0=?, a1=[sym(.sdata)+108], a2=[sym(lastadjtod)], a3=[sym(lbolt)], a6=[sym(lbolt)]+720000 (`jal` at 0x502c).
  Calls `chktimedrift` via direct with a0=?, a1=[sym(lastadjtime)], a2=[sym(lastadjtod)], a3=[sym(lbolt)], a4=[sym(adjtime_delta)]:8 (`jal` at 0x5044).
- `tick_actions` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x5054, 52 bytes) Inferred.
  Role: unknown.
  At `beq at,zero,506c` at 0x505c, the branch is taken when at(=[-0x3920]:1) == 0; it falls through when at(=[-0x3920]:1) != 0 (`beq` at 0x505c).
  Returns with v0 = ret(flush_console) at 0x5080 (`jr` at 0x5080).
  Calls `ecc_log` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x5064).
  Calls `tlb_tick_actions` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x506c).
  Calls `flush_console` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5074).
- `init_fasthz_variables` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x5088, 48 bytes) Inferred.
  Role: unknown.
  Returns with v0 = [sym(fasthz)] at 0x50b0 (`jr` at 0x50b0).
- `rtc_read` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x50b8, 12 bytes) Inferred.
  Role: unknown.
  Returns with v0 = [0xffffffffaff20000]:8 at 0x50bc (`jr` at 0x50bc).
- `rtc_resolution` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x50c4, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = 0x50 at 0x50c4 (`jr` at 0x50c4).
- `normalize_RTC_value` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x50cc, 88 bytes) Inferred.
  Role: unknown.
  At `bne at,v0,5114` at 0x50e0, the branch is taken when at(=[sym(fasthz)]) != v0(=[sym(.sbss)+156]); it falls through when at(=[sym(fasthz)]) == v0(=[sym(.sbss)+156]) (`bne` at 0x50e0).
  Returns with v0 = ? at 0x510c (`jr` at 0x510c).
  Calls `init_fasthz_variables [0x5088]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x5114).
- `set_timer_intr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x5124, 36 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ret(_set_timer_intr) at 0x5140 (`jr` at 0x5140).
  Calls `_set_timer_intr [0x5148]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0, a4=[0xffffffffaff20000]:8 (`jal` at 0x5134).
- `_set_timer_intr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x5148, 588 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `s0` to abs 0xffffffffffffc558 (`sd` at 0x5210).
  Stores 8 bytes from `s0` to abs 0xffffffffffffc558 (`sd` at 0x5250).
  Stores 8 bytes from `s0` to abs 0xffffffffffffc558 (`sd` at 0x52f0).
  Stores 8 bytes from `a0` to abs 0xffffffffffffc550; value [-0x3ab8]:8 (`sd` at 0x5334).
  Stores 8 bytes from `a0` to abs 0xffffffffffffc550 (`sd` at 0x5350).
  Stores 8 bytes from `a0` to abs 0xffffffffffffc550 (`sd` at 0x536c).
  At `beq a1,zero,5270` at 0x516c, the branch is taken when a1 == 0; it falls through when a1 != 0 (`beq` at 0x516c).
  At `blez at,5270` at 0x5178, the branch is taken when at(?) <= 0 (signed); it falls through when at(?) > 0 (signed) (`blez` at 0x5178).
  At `beq a0,zero,52f4` at 0x5198, the branch is taken when a0(=[-0x3ab0]:8) == 0; it falls through when a0(=[-0x3ab0]:8) != 0 (`beq` at 0x5198).
  At `beq t0,a0,5330` at 0x51a0, the branch is taken when t0(=0x1) == a0(=[-0x3ab0]:8); it falls through when t0(=0x1) != a0(=[-0x3ab0]:8) (`beq` at 0x51a0).
  At `bne a2,zero,51c4` at 0x51a8, the branch is taken when a2(?) != 0; it falls through when a2(?) == 0 (`bne` at 0x51a8).
  At `bne a1,zero,5214` at 0x51c4, the branch is taken when a1(?) != 0; it falls through when a1(?) == 0 (`bne` at 0x51c4).
  At `beq t9,zero,52bc` at 0x51d4, the branch is taken when v0(=[-0x3aa8]:8) >= s0(?) (unsigned); it falls through when v0(=[-0x3aa8]:8) < s0(?) (unsigned) (`beq` at 0x51d4).
  At `beq ra,zero,5254` at 0x51dc, the branch is taken when ra(=a3) == 0; it falls through when ra(=a3) != 0 (`beq` at 0x51dc).
  At `bne a5,v0,528c` at 0x5274, the branch is taken when a5(=[-0x3c60]:2) != v0(=a0); it falls through when a5(=[-0x3c60]:2) == v0(=a0) (`bne` at 0x5274).
  At `beq a1,zero,5328` at 0x52ac, the branch is taken when (a1(=[-0x3fb8]) & 0x40) == 0; it falls through when (a1(=[-0x3fb8]) & 0x40) != 0 (`beq` at 0x52ac).
  At `beq s0,v0,5254` at 0x52bc, the branch is taken when s0(?) == v0(=[-0x3aa8]:8); it falls through when s0(?) != v0(=[-0x3aa8]:8) (`beq` at 0x52bc).
  At `beq a5,zero,530c` at 0x52fc, the branch is taken when a0(=[-0x3ab8]:8) >= v0(?) (unsigned); it falls through when a0(=[-0x3ab8]:8) < v0(?) (unsigned) (`beq` at 0x52fc).
  At `beq a1,zero,538c` at 0x5304, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x5304).
  At `beq at,zero,51a8` at 0x5344, the branch is taken when at(=([sym(clk_fclock_fast_freq)] + a4)) >= a0(=[-0x3ab8]:8) (unsigned); it falls through when at(=([sym(clk_fclock_fast_freq)] + a4)) < a0(=[-0x3ab8]:8) (unsigned) (`beq` at 0x5344).
  At `beq v1,zero,5384` at 0x5360, the branch is taken when v1(=([sym(clk_fclock_fast_freq)] + a4)) >= a0(?) (unsigned); it falls through when v1(=([sym(clk_fclock_fast_freq)] + a4)) < a0(?) (unsigned) (`beq` at 0x5360).
  At `bne a2,zero,534c` at 0x537c, the branch is taken when a2(=([sym(clk_fclock_fast_freq)] + a4)) < a0(?) (unsigned); it falls through when a2(=([sym(clk_fclock_fast_freq)] + a4)) >= a0(?) (unsigned) (`bne` at 0x537c).
  Returns with v0 = one of 0x0, 0x1 at 0x5268 (`jr` at 0x5268).
  Calls `resetcounter_val` via direct with a0=?, a1=?, a2=0x7d, a3=[sym(cpufreq_cycles)], a7=0x78 (`jal` at 0x5204).
  Calls `resetcounter_val` via direct with a0=?, a1=?, a2=?, a3=[sym(cpufreq_cycles)], a7=0x78 (`jal` at 0x5248).
  Calls `timepoke` via direct with a0=(a0 << 0x30), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[-0x3c60]:2 (`jal` at 0x527c).
  Calls `cpuaction` via direct with a0=?, a1=sym(timepoke), a2=0x1, a3=a3 at entry (arg3), a5=[-0x3c60]:2 (`jal` at 0x5294).
  Calls `trimcompare` via direct with a0=?, a1=?, a2=0x7d, a3=[sym(cpufreq_cycles)], a7=0x78 (`jal` at 0x52e4).
- `timeout_get_queuehead` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x5394, 580 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t9` to [table(sym(pdaindr))+8]:8 +0x5a8 (`sw` at 0x5400).
  Stores 4 bytes from `t9` to [table(sym(pdaindr))+8]:8 +0x5a8 (`sw` at 0x5438).
  Stores 4 bytes from `a7` to [table(sym(pdaindr))+8]:8 +0x600 (`sw` at 0x54a4).
  Stores 4 bytes from `t1` to [table(sym(pdaindr))+8]:8 +0x600 (`sw` at 0x54a8).
  Stores 4 bytes from `a6` to a1 (arg1 at entry) +0x10 (`sw` at 0x54d4).
  Stores 8 bytes from `a5` to a1 (arg1 at entry) +0x0; value 0x1 (`sd` at 0x551c).
  Stores 8 bytes from `a1` to a1 (arg1 at entry) +0x0 (`sd` at 0x555c).
  Stores 4 bytes from `t9` to [table(sym(pdaindr))+8]:8 +0x5a8 (`sw` at 0x5570).
  Stores 4 bytes from `t9` to [table(sym(pdaindr))+8]:8 +0x5a8 (`sw` at 0x558c).
  Stores 8 bytes from `a1` to a1 (arg1 at entry) +0x0 (`sd` at 0x55cc).
  Stores 8 bytes from `zero` to a1 (arg1 at entry) +0x0; value 0x0 (`sd` at 0x55d4).
  At `beq a5,zero,557c` at 0x53fc, the branch is taken when (a6(=0xffffff) & t9(?)) == 0; it falls through when (a6(=0xffffff) & t9(?)) != 0 (`beq` at 0x53fc).
  At `bne a2,a5,54b8` at 0x5410, the branch is taken when a2(=[[table(sym(pdaindr))+8]:8+1536]) != a5(?); it falls through when a2(=[[table(sym(pdaindr))+8]:8+1536]) == a5(?) (`bne` at 0x5410).
  At `beq a5,zero,5560` at 0x5434, the branch is taken when (a6(=0xffffff) & t9(?)) == 0; it falls through when (a6(=0xffffff) & t9(?)) != 0 (`beq` at 0x5434).
  At `beq a4,zero,54a8` at 0x5444, the branch is taken when a4(=[[table(sym(pdaindr))+8]:8+1440]:8) == 0; it falls through when a4(=[[table(sym(pdaindr))+8]:8+1440]:8) != 0 (`beq` at 0x5444).
  At `beq t2,zero,5460` at 0x5454, the branch is taken when t2(?) == 0; it falls through when t2(?) != 0 (`beq` at 0x5454).
  At `beq a4,zero,5498` at 0x5460, the branch is taken when a4(?) == 0; it falls through when a4(?) != 0 (`beq` at 0x5460).
  At `beq a5,t3,5420` at 0x5478, the branch is taken when a5(?) == t3(?); it falls through when a5(?) != t3(?) (`beq` at 0x5478).
  At `beq t0,zero,5454` at 0x5480, the branch is taken when t0(?) == 0; it falls through when t0(?) != 0 (`beq` at 0x5480).
  At `beq t8,zero,5454` at 0x5488, the branch is taken when t8(?) == 0; it falls through when t8(?) != 0 (`beq` at 0x5488).
  At `beq t8,zero,54a8` at 0x5498, the branch is taken when t8(?) == 0; it falls through when t8(?) != 0 (`beq` at 0x5498).
  At `blez v0,5514` at 0x54d0, the branch is taken when v0(=[a1]:8) <= 0 (signed); it falls through when v0(=[a1]:8) > 0 (signed) (`blez` at 0x54d0).
  At `beq a7,a0,5528` at 0x54d8, the branch is taken when a7(=0x1) == a0; it falls through when a7(=0x1) != a0 (`beq` at 0x54d8).
  At `beq a0,a1,5528` at 0x54e0, the branch is taken when a0 == a1(=0x4); it falls through when a0 != a1(=0x4) (`beq` at 0x54e0).
  At `beq a0,zero,5598` at 0x54e8, the branch is taken when a0 == 0; it falls through when a0 != 0 (`beq` at 0x54e8).
  At `beq a0,a7,559c` at 0x54f0, the branch is taken when a0 == a7(=0x3); it falls through when a0 != a7(=0x3) (`beq` at 0x54f0).
  At `beq v0,a4,55d0` at 0x5514, the branch is taken when v0(=[a1]:8) == a4(=-0x64); it falls through when v0(=[a1]:8) != a4(=-0x64) (`beq` at 0x5514).
  At `bne a5,a0,54e0` at 0x5520, the branch is taken when a5(=0x1) != a0; it falls through when a5(=0x1) == a0 (`bne` at 0x5520).
  Returns with v0 = [table(sym(pdaindr))+8]:8+1432 at 0x550c (`jr` at 0x550c).
  Calls `normalize_RTC_value [0x50cc]` via direct with a0=[0xffffffffaff20000]:8, a1=0x4, a2=[[table(sym(pdaindr))+8]:8+1536], a3=0x3, a4=-0x64, a5=0x1, a7=0x1 (`jal` at 0x5530).
  Calls `normalize_RTC_value [0x50cc]` via direct with a0=[0xffffffffaff20000]:8, a1=0x4, a2=[[table(sym(pdaindr))+8]:8+1536], a3=0x3, a4=-0x64, a5=0x1, a7=0x3 (`jal` at 0x55a0).
- `chktimeout_tick` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x55d8, 384 bytes) Inferred.
  Role: unknown.
  At `beq at,zero,5650` at 0x5630, the branch is taken when (at(=[[table(sym(pdaindr))+8]:8+1584]) & 0x1) == 0; it falls through when (at(=[[table(sym(pdaindr))+8]:8+1584]) & 0x1) != 0 (`beq` at 0x5630).
  At `bne v0,zero,56a4` at 0x5640, the branch is taken when v0(=ret(do_chktimeout_tick)) != 0; it falls through when v0(=ret(do_chktimeout_tick)) == 0 (`bne` at 0x5640).
  At `blez a0,570c` at 0x5654, the branch is taken when a0(=[sym(maxcpus)]) <= 0 (signed); it falls through when a0(=[sym(maxcpus)]) > 0 (signed) (`blez` at 0x5654).
  At `beq v0,zero,5734` at 0x5664, the branch is taken when v0(=ret(cpu_enabled)) == 0; it falls through when v0(=ret(cpu_enabled)) != 0 (`beq` at 0x5664).
  At `beq v1,zero,5734` at 0x5680, the branch is taken when (v1(?) & 0x1) == 0; it falls through when (v1(?) & 0x1) != 0 (`beq` at 0x5680).
  At `beq v0,zero,5734` at 0x569c, the branch is taken when v0(=ret(do_chktimeout_tick)) == 0; it falls through when v0(=ret(do_chktimeout_tick)) != 0 (`beq` at 0x569c).
  At `beq s2,zero,56e8` at 0x56b8, the branch is taken when s2(=a0) == 0; it falls through when s2(=a0) != 0 (`beq` at 0x56b8).
  At `beq s2,v0,56e8` at 0x56c0, the branch is taken when s2(=a0) == v0(=0x3); it falls through when s2(=a0) != v0(=0x3) (`beq` at 0x56c0).
  At `beq s2,v0,56d8` at 0x56c8, the branch is taken when s2(=a0) == v0(=0x1); it falls through when s2(=a0) != v0(=0x1) (`beq` at 0x56c8).
  At `bne s2,a0,5708` at 0x56d0, the branch is taken when s2(=a0) != a0(=0x4); it falls through when s2(=a0) == a0(=0x4) (`bne` at 0x56d0).
  At `bne a5,zero,565c` at 0x5748, the branch is taken when s1(?) < a5(=[sym(maxcpus)]) (signed); it falls through when s1(?) >= a5(=[sym(maxcpus)]) (signed) (`bne` at 0x5748).
  Returns with v0 = ? at 0x572c (`jr` at 0x572c).
  Calls `do_chktimeout_tick` via direct with a0=[table(sym(pdaindr))+8]:8+1416, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x5638).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x565c).
  Calls `do_chktimeout_tick` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x5694).
- `fast_timeout` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x5758, 120 bytes) Inferred.
  Role: unknown.
  At `beq v0,zero,57b8` at 0x57a4, the branch is taken when v0(=ret(dotimeout)) == 0; it falls through when v0(=ret(dotimeout)) != 0 (`beq` at 0x57a4).
  Returns with v0 = ? at 0x57b0 (`jr` at 0x57b0).
  Calls `callout_get_pri` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x577c).
  Calls `dotimeout` via direct with a0=[-0x3c60]:2, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=ret(callout_get_pri), a5=0x1, a6=sp-40 (`jal` at 0x579c).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+1104, a2=?, a3=? (`jal` at 0x57c0).
- `fast_timeout_nothrd` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x57d0, 116 bytes) Inferred.
  Role: unknown.
  At `beq v0,zero,582c` at 0x5818, the branch is taken when v0(=ret(dotimeout)) == 0; it falls through when v0(=ret(dotimeout)) != 0 (`beq` at 0x5818).
  Returns with v0 = ? at 0x5824 (`jr` at 0x5824).
  Calls `dotimeout` via direct with a0=[-0x3c60]:2, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a5=0x4, a6=sp-40 (`jal` at 0x5810).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+1104, a2=?, a3=? (`jal` at 0x5834).
- `callout_time_to_hz` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x5844, 48 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x586c (`jr` at 0x586c).
- `timein_body` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x5874, 364 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `v1` to a0 (arg0 at entry) +0x18; value [[a0+24]:8+8]:8 (`sd` at 0x58cc).
  Stores 8 bytes from `s8` to a0 (arg0 at entry) +0x58; value 0x1 (`sd` at 0x58e4).
  Stores 4 bytes from `a0` to a0 (arg0 at entry) +0x68; value [[a0+24]:8+16] (`sw` at 0x58ec).
  At `beq v0,zero,5990` at 0x58d8, the branch is taken when (v0(=[[a0+24]:8+70]:2) & 0x2) == 0; it falls through when (v0(=[[a0+24]:8+70]:2) & 0x2) != 0 (`beq` at 0x58d8).
  At `beq v0,s7,59b8` at 0x590c, the branch is taken when v0(=ret(test_and_set_int64)) == s7(=0x2); it falls through when v0(=ret(test_and_set_int64)) != s7(=0x2) (`beq` at 0x590c).
  At `beq s0,zero,59a4` at 0x5924, the branch is taken when s0(=[a0+24]:8) == 0; it falls through when s0(=[a0+24]:8) != 0 (`beq` at 0x5924).
  At `beq a2,zero,58c8` at 0x5938, the branch is taken when a2(=[0xffffffffaff20000]:8) >= a1(=[[a0+24]:8]:8) (unsigned); it falls through when a2(=[0xffffffffaff20000]:8) < a1(=[[a0+24]:8]:8) (unsigned) (`beq` at 0x5938).
  At `beq v0,zero,58c8` at 0x5950, the branch is taken when v0(=ret(set_timer_intr)) == 0; it falls through when v0(=ret(set_timer_intr)) != 0 (`beq` at 0x5950).
  Returns with v0 = ret(mutex_spinunlock) at 0x5988 (`jr` at 0x5988).
  Calls `mutex_spinunlock` via direct with a0=a0+8, a1=ret(mutex_spinlock_spl), a2=?, a3=? (`jal` at 0x58f0).
  Calls `timein_entry` via direct with a0=[a0+24]:8, a1=?, a2=?, a3=? (`jal` at 0x58f8).
  Calls `test_and_set_int64` via direct with a0=a0+88, a1=0x0, a2=?, a3=? (`jal` at 0x5904).
  Calls `mutex_spinlock_spl` via direct with a0=a0+8, a1=sym(splprof), a2=?, a3=? (`jal` at 0x5918).
  Calls `set_timer_intr` via direct with a0=?, a1=[[a0+24]:8]:8, a2=0x0, a3=? (`jal` at 0x5948).
  Calls `mutex_spinunlock` via direct with a0=a0+8, a1=ret(mutex_spinlock_spl), a2=?, a3=? (`jal` at 0x5958).
  Calls `timein_entry_ithrd` via direct with a0=a0 at entry (arg0), a1=[a0+24]:8, a2=ret(mutex_spinlock_spl), a3=? (`jal` at 0x5994).
  Calls `mutex_spinunlock` via direct with a0=a0+8, a1=ret(mutex_spinlock_spl), a2=?, a3=? (`jal` at 0x59a8).
  Calls `mutex_spinlock_spl` via direct with a0=a0+8, a1=sym(splprof), a2=?, a3=? (`jal` at 0x59b8).
  Calls `sv_broadcast` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x59c4).
  Calls `mutex_spinunlock` via direct with a0=a0+8, a1=ret(mutex_spinlock_spl), a2=?, a3=? (`jal` at 0x59d0).
- `timein` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x59e0, 176 bytes) Inferred.
  Role: unknown.
  At `bne at,zero,5a50` at 0x59ec, the branch is taken when (at(=[-0x3d80]:8) & 0x20) != 0; it falls through when (at(=[-0x3d80]:8) & 0x20) == 0 (`bne` at 0x59ec).
  At `bne v0,v1,5a40` at 0x59fc, the branch is taken when v0(=[sym(fasthz)]) != v1(=[sym(.sbss)+156]); it falls through when v0(=[sym(fasthz)]) == v1(=[sym(.sbss)+156]) (`bne` at 0x59fc).
  At `bne a2,zero,5a70` at 0x5a30, the branch is taken when (a2(=[-0x3d80]:8) & 0x20) != 0; it falls through when (a2(=[-0x3d80]:8) & 0x20) == 0 (`bne` at 0x5a30).
  Returns with v0 = ? at 0x5a38 (`jr` at 0x5a38).
  Calls `siroff` via direct with a0=0x100, a1=?, a2=?, a3=? (`jal` at 0x5a04).
  Calls `timein_body` via direct with a0=[(sym(pdaindr) + ([-0x3c60]:2 << 0x4))+8]:8+1416, a1=([-0x3c60]:2 << 0x4), a2=?, a3=? (`jal` at 0x5a20).
  Calls `init_fasthz_variables [0x5088]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5a40).
  Calls `log_tstamp_event` via direct with a0=0x6d, a1=0x0, a2=0x0, a3=0x0, a4=0x0 (`jal` at 0x5a60).
  Calls `log_tstamp_event` via direct with a0=0x65, a1=0x6d, a2=0x0, a3=0x0, a4=0x0 (`jal` at 0x5a80).
- `migrate_timeouts` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x5a90, 424 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `a2` to ret(add_migrated_timeout) +0x0 (`sw` at 0x5b0c).
  Stores 8 bytes from `t8` to [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x5a0; value [[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1440]:8+8]:8 (`sd` at 0x5b54).
  Stores 8 bytes from `t9` to ? (base unknown) (`sd` at 0x5b70).
  At `beq a0,a1,5c08` at 0x5ac8, the branch is taken when a0 == a1; it falls through when a0 != a1 (`beq` at 0x5ac8).
  At `beq s0,zero,5bec` at 0x5b44, the branch is taken when s0(=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1440]:8) == 0; it falls through when s0(=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1440]:8) != 0 (`beq` at 0x5b44).
  At `bgtz a3,5b58` at 0x5b6c, the branch is taken when a3(?) > 0 (signed); it falls through when a3(?) <= 0 (signed) (`bgtz` at 0x5b6c).
  At `bne at,zero,5af0` at 0x5bc4, the branch is taken when (at(?) & 0x2) != 0; it falls through when (at(?) & 0x2) == 0 (`bne` at 0x5bc4).
  Returns with v0 = ? at 0x5c30 (`jr` at 0x5c30).
  Calls `clock_prtimeout_nothrd` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x5b00).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x5b10).
  Calls `allocate_migrate_timeout` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5b18).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5b20).
  Calls `mutex_spinlock_spl` via direct with a0=[(sym(pdaindr) + (a0 << 0x4))+8]:8+1424, a1=sym(splprof), a2=?, a3=? (`jal` at 0x5b30).
  Calls `mutex_spinunlock` via direct with a0=[(sym(pdaindr) + (a0 << 0x4))+8]:8+1424, a1=ret(mutex_spinlock_spl), a2=?, a3=?, a5=sp-160 (`jal` at 0x5b78).
  Calls `callout_free` via direct with a0=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1440]:8, a1=?, a2=?, a3=? (`jal` at 0x5b80).
  Calls `add_migrated_timeout` via direct with a0=?, a1=?, a2=ret(allocate_migrate_timeout), a3=? (`jal` at 0x5ba0).
  Calls `clock_prtimeout` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x5bdc).
  Calls `mutex_spinunlock` via direct with a0=[(sym(pdaindr) + (a0 << 0x4))+8]:8+1424, a1=ret(mutex_spinlock_spl), a2=?, a3=?, a4=0x0, a5=sp-160 (`jal` at 0x5bf0).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x5bf8).
  Calls `free_migrate_timeout` via direct with a0=ret(allocate_migrate_timeout), a1=?, a2=?, a3=? (`jal` at 0x5c00).
- `settimetrim` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x5c38, 124 bytes) Inferred.
  Role: unknown.
  At `beq v0,zero,5cac` at 0x5c50, the branch is taken when v0(=ret(cap_able)) == 0; it falls through when v0(=ret(cap_able)) != 0 (`beq` at 0x5c50).
  At `bne at,zero,5c7c` at 0x5c64, the branch is taken when s0(=a0) < at(=0xffffffffffd23940) (signed); it falls through when s0(=a0) >= at(=0xffffffffffd23940) (signed) (`bne` at 0x5c64).
  At `beq v1,zero,5c8c` at 0x5c74, the branch is taken when v1(=0x2dc6c0) >= s0(=a0) (signed); it falls through when v1(=0x2dc6c0) < s0(=a0) (signed) (`beq` at 0x5c74).
  Returns with v0 = one of 0x0, 0x1, 0x16 at 0x5c84 (`jr` at 0x5c84).
  Calls `cap_able` via direct with a0=0x8000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x5c48).
  Calls `mutex_spinlock_spl` via direct with a0=sym(timelock), a1=sym(splprof), a2=0x2d0000, a3=? (`jal` at 0x5c8c).
  Calls `mutex_spinunlock` via direct with a0=sym(timelock), a1=ret(mutex_spinlock_spl), a2=?, a3=? (`jal` at 0x5c9c).
- `gettimetrim` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x5cb4, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = [sym(timetrim)] at 0x5cb4 (`jr` at 0x5cb4).
- `doadjtime` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x5cbc, 500 bytes) Inferred.
  Role: unknown.
  At `beq a0,zero,5e24` at 0x5cd8, the branch is taken when a0 == 0; it falls through when a0 != 0 (`beq` at 0x5cd8).
  At `bltz a0,5e14` at 0x5ce4, the branch is taken when a0 < 0 (signed); it falls through when a0 >= 0 (signed) (`bltz` at 0x5ce4).
  At `beq a2,zero,5dec` at 0x5cf4, the branch is taken when s0(?) >= 0x3e8 (signed); it falls through when s0(?) < 0x3e8 (signed) (`beq` at 0x5cf4).
  At `bne v0,zero,5e0c` at 0x5cfc, the branch is taken when v0(?) != 0; it falls through when v0(?) == 0 (`bne` at 0x5cfc).
  At `blez a0,5da4` at 0x5d60, the branch is taken when a0(?) <= 0 (signed); it falls through when a0(?) > 0 (signed) (`blez` at 0x5d60).
  At `bltz s2,5e1c` at 0x5da4, the branch is taken when s2(?) < 0 (signed); it falls through when s2(?) >= 0 (signed) (`bltz` at 0x5da4).
  At `beq a2,zero,5e04` at 0x5df8, the branch is taken when a2(=0xf4240) >= s0(?) (signed); it falls through when a2(=0xf4240) < s0(?) (signed) (`beq` at 0x5df8).
  At `beq v0,zero,5d04` at 0x5e04, the branch is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0x5e04).
  At `blez a0,5ea8` at 0x5e50, the branch is taken when a0(?) <= 0 (signed); it falls through when a0(?) > 0 (signed) (`blez` at 0x5e50).
  Returns with v0 = ? at 0x5de4 (`jr` at 0x5de4).
  Calls `splprof` via direct with a0=?, a1=0xf0000, a2=?, a3=a3 at entry (arg3) (`jal` at 0x5d04).
  Calls `__nanotime [0x5eb0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5d0c).
  Calls `nested_spinlock` via direct with a0=sym(timelock), a1=?, a2=?, a3=? (`jal` at 0x5d1c).
  Calls `mutex_spinunlock` via direct with a0=sym(timelock), a1=?, a2=[sym(.sbss)+100]+1, a3=? (`jal` at 0x5dc4).
  Calls `splprof` via direct with a0=a0 at entry (arg0), a1=0xf0000, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x5e24).
  Calls `__nanotime [0x5eb0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5e2c).
  Calls `nested_spinlock` via direct with a0=sym(timelock), a1=?, a2=?, a3=? (`jal` at 0x5e38).
  Calls `mutex_spinunlock` via direct with a0=sym(timelock), a1=ret(splprof), a2=?, a3=?, a4=0x3e8 (`jal` at 0x5e98).
- `__nanotime` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x5eb0, 548 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `a4` to sym(pdaindr) +0x28 (`sd` at 0x6024).
  Stores 4 bytes from `at` to sym(pdaindr) +0x20 (`sw` at 0x6030).
  Stores 4 bytes from `zero` to sym(pdaindr) +0x20; value 0x0 (`sw` at 0x60ac).
  Stores 8 bytes from `zero` to sym(pdaindr) +0x28; value 0x0 (`sd` at 0x60b0).
  At `beq at,zero,60a4` at 0x5ef0, the branch is taken when at(=[sym(.sbss)+104]:8) == 0; it falls through when at(=[sym(.sbss)+104]:8) != 0 (`beq` at 0x5ef0).
  At `beq a5,zero,5f3c` at 0x5f0c, the branch is taken when a7(=[0xffffffffaff20000]:8) >= a5(=([sym(adjtime_delta)]:8 + [sym(adjtime_RTC)]:8)) (unsigned); it falls through when a7(=[0xffffffffaff20000]:8) < a5(=([sym(adjtime_delta)]:8 + [sym(adjtime_RTC)]:8)) (unsigned) (`beq` at 0x5f0c).
  At `beq v1,zero,5f7c` at 0x5f44, the branch is taken when v1(=[sym(adjtime_nanos)]:8) == 0; it falls through when v1(=[sym(adjtime_nanos)]:8) != 0 (`beq` at 0x5f44).
  At `bltz t0,608c` at 0x5f5c, the branch is taken when t0(?) < 0 (signed); it falls through when t0(?) >= 0 (signed) (`bltz` at 0x5f5c).
  At `blez a5,6094` at 0x5f64, the branch is taken when a5(?) <= 0 (signed); it falls through when a5(?) > 0 (signed) (`blez` at 0x5f64).
  At `bne t9,zero,6060` at 0x5fcc, the branch is taken when t9(?) < a6(=0x3b9aca00) (signed); it falls through when t9(?) >= a6(=0x3b9aca00) (signed) (`bne` at 0x5fcc).
  At `bne t8,zero,601c` at 0x6004, the branch is taken when a4(=table(0xffffffffc4653600)) < a6(=0x3b9aca00) (signed); it falls through when a4(=table(0xffffffffc4653600)) >= a6(=0x3b9aca00) (signed) (`bne` at 0x6004).
  At `beq t9,zero,5ff8` at 0x6014, the branch is taken when a4(=table(0xffffffff88ca6c00)) >= a6(=0x3b9aca00) (signed); it falls through when a4(=table(0xffffffff88ca6c00)) < a6(=0x3b9aca00) (signed) (`beq` at 0x6014).
  At `beq a3,zero,603c` at 0x6020, the branch is taken when a3(?) == 0; it falls through when a3(?) != 0 (`beq` at 0x6020).
  At `bltz a5,5f6c` at 0x608c, the branch is taken when a5(?) < 0 (signed); it falls through when a5(?) >= 0 (signed) (`bltz` at 0x608c).
  Returns with v0 = ret(mutex_spinunlock) at 0x6058 (`jr` at 0x6058).
  Calls `mutex_spinlock_spl` via direct with a0=sym(timelock), a1=sym(splprof), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x5ebc).
  Calls `mutex_spinunlock` via direct with a0=sym(timelock), a1=ret(mutex_spinlock_spl), a2=?, a3=?, a7=[0xffffffffaff20000]:8 (`jal` at 0x604c).
  Calls `mutex_spinunlock` via direct with a0=sym(timelock), a1=ret(mutex_spinlock_spl), a2=?, a3=?, a7=[0xffffffffaff20000]:8 (`jal` at 0x60c4).
- `nanotime_syscall` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x60d4, 368 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `a4` to a0 (arg0 at entry) +0x8 (`sd` at 0x61e8).
  Stores 4 bytes from `t8` to a0 (arg0 at entry) +0x0 (`sw` at 0x61f0).
  At `bne t8,t9,60f4` at 0x6120, the branch is taken when t8(=[sym(.sbss)+100]) != t9(=[sym(.sbss)+96]); it falls through when t8(=[sym(.sbss)+100]) == t9(=[sym(.sbss)+96]) (`bne` at 0x6120).
  At `beq at,zero,6170` at 0x6144, the branch is taken when a4(=[0xffffffffaff20000]:8) >= at(=([sym(adjtime_delta)]:8 + [sym(adjtime_RTC)]:8)) (unsigned); it falls through when a4(=[0xffffffffaff20000]:8) < at(=([sym(adjtime_delta)]:8 + [sym(adjtime_RTC)]:8)) (unsigned) (`beq` at 0x6144).
  At `beq a5,zero,6170` at 0x614c, the branch is taken when a5(=[sym(adjtime_delta)]:8) == 0; it falls through when a5(=[sym(adjtime_delta)]:8) != 0 (`beq` at 0x614c).
  At `bne v1,zero,61e8` at 0x61b4, the branch is taken when a4(?) < a7(=0x3b9aca00) (signed); it falls through when a4(?) >= a7(=0x3b9aca00) (signed) (`bne` at 0x61b4).
  At `bne t1,zero,61e8` at 0x61d0, the branch is taken when a4(=table(0xffffffffc4653600)) < a7(=0x3b9aca00) (signed); it falls through when a4(=table(0xffffffffc4653600)) >= a7(=0x3b9aca00) (signed) (`bne` at 0x61d0).
  At `beq t2,zero,61c4` at 0x61e0, the branch is taken when a4(=table(0xffffffff88ca6c00)) >= a7(=0x3b9aca00) (signed); it falls through when a4(=table(0xffffffff88ca6c00)) < a7(=0x3b9aca00) (signed) (`beq` at 0x61e0).
  At `beq t3,zero,622c` at 0x61fc, the branch is taken when t3(=[sym(time)]) >= t8(?) (signed); it falls through when t3(=[sym(time)]) < t8(?) (signed) (`beq` at 0x61fc).
  At `beq t9,zero,6224` at 0x6218, the branch is taken when t9(=[sym(time)]) >= a4(=[a0]) (signed); it falls through when t9(=[sym(time)]) < a4(=[a0]) (signed) (`beq` at 0x6218).
  Returns with v0 = ret(splx) at 0x623c (`jr` at 0x623c).
  Calls `splprof` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x60e0).
  Calls `mutex_spinlock_spl` via direct with a0=sym(timelock), a1=sym(splprof), a2=?, a3=?, a7=0x3b9aca00 (`jal` at 0x6204).
  Calls `mutex_spinunlock` via direct with a0=sym(timelock), a1=ret(mutex_spinlock_spl), a2=?, a3=?, a4=[a0] (`jal` at 0x6224).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x622c).
- `nanotime` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6244, 228 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `a3` to a0 (arg0 at entry) +0x8 (`sd` at 0x62f0).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x0 (`sw` at 0x62f4).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x0; value 0x0 (`sw` at 0x631c).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x8; value 0x0 (`sd` at 0x6324).
  At `beq at,zero,631c` at 0x624c, the branch is taken when at(=[sym(.sbss)+104]:8) == 0; it falls through when at(=[sym(.sbss)+104]:8) != 0 (`beq` at 0x624c).
  At `bne a6,t0,6254` at 0x6270, the branch is taken when a6(=[sym(.sbss)+100]) != t0(=[sym(.sbss)+96]); it falls through when a6(=[sym(.sbss)+100]) == t0(=[sym(.sbss)+96]) (`bne` at 0x6270).
  At `bne t1,zero,6300` at 0x62a4, the branch is taken when t1(?) < a6(=0x3b9aca00) (signed); it falls through when t1(?) >= a6(=0x3b9aca00) (signed) (`bne` at 0x62a4).
  At `bne a7,zero,62f0` at 0x62d8, the branch is taken when a3(=table(0xffffffffc4653600)) < a6(=0x3b9aca00) (signed); it falls through when a3(=table(0xffffffffc4653600)) >= a6(=0x3b9aca00) (signed) (`bne` at 0x62d8).
  At `beq t0,zero,62cc` at 0x62e8, the branch is taken when a3(=table(0xffffffff88ca6c00)) >= a6(=0x3b9aca00) (signed); it falls through when a3(=table(0xffffffff88ca6c00)) < a6(=0x3b9aca00) (signed) (`beq` at 0x62e8).
  Returns with v0 = ? at 0x62f8 (`jr` at 0x62f8).
  Returns with v0 = ? at 0x6320 (`jr` at 0x6320).
- `irix5_microtime` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6328, 68 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `a0` to a0 (arg0 at entry) +0x0 (`sw` at 0x6344).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x4 (`sw` at 0x635c).
  Returns with v0 = ? at 0x6364 (`jr` at 0x6364).
  Calls `nanotime_syscall` via direct with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x6338).
- `microtime` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x636c, 68 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `a0` to a0 (arg0 at entry) +0x4 (`sw` at 0x6388).
  Stores 8 bytes from `at` to a0 (arg0 at entry) +0x8 (`sd` at 0x63a0).
  Returns with v0 = ? at 0x63a8 (`jr` at 0x63a8).
  Calls `nanotime_syscall` via direct with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x637c).
- `local_settime` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x63b0, 216 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `s1` to sym(pdaindr) +0x20 (`sw` at 0x6444).
  Stores 8 bytes from `t0` to sym(pdaindr) +0x28 (`sd` at 0x6450).
  At `bne a5,zero,6414` at 0x63e8, the branch is taken when s0(=a1) < a4(=0xf4240) (signed); it falls through when s0(=a1) >= a4(=0xf4240) (signed) (`bne` at 0x63e8).
  At `bne a5,zero,6414` at 0x63fc, the branch is taken when s0(?) < a4(=0xf4240) (signed); it falls through when s0(?) >= a4(=0xf4240) (signed) (`bne` at 0x63fc).
  At `beq a6,zero,63f0` at 0x640c, the branch is taken when s0(?) >= a4(=0xf4240) (signed); it falls through when s0(?) < a4(=0xf4240) (signed) (`beq` at 0x640c).
  Returns with v0 = ret(mutex_spinunlock) at 0x6480 (`jr` at 0x6480).
  Calls `mutex_spinlock_spl` via direct with a0=sym(timelock), a1=sym(splprof), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x63cc).
  Calls `mutex_spinunlock` via direct with a0=sym(timelock), a1=ret(mutex_spinlock_spl), a2=?, a3=0xfffffffffff0bdc0, a4=0xf4240, a7=[sym(.sbss)+100] (`jal` at 0x646c).
- `settime` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6488, 68 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ret(?) at 0x64c4 (`jr` at 0x64c4).
  Calls `local_settime` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x6490).
  Calls `vhost_local` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x6498).
  Calls `cellid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x64a0).
  Calls `(unknown callee)` via register with a0=[ret(vhost_local)]:8, a1=ret(cellid), a2=?, a3=? (`jalr` at 0x64b4).
- `enable_fastclock` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x64e8, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x64e8 (`jr` at 0x64e8).
- `cache_preempt_limit` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x64f0, 8 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x64f0 (`jr` at 0x64f0).
- `get_realtime_ticks` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x64f8, 40 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ? at 0x6518 (`jr` at 0x6518).
- `tstoclock` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6520, 76 bytes) Inferred.
  Role: unknown.
  At `beq a1,v1,655c` at 0x654c, the branch is taken when a1 == v1(=0x1); it falls through when a1 != v1(=0x1) (`beq` at 0x654c).
  Returns with v0 = ? at 0x6554 (`jr` at 0x6554).
  Returns with v0 = ? at 0x6564 (`jr` at 0x6564).
- `tvtoclock` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x656c, 96 bytes) Inferred.
  Role: unknown.
  At `beq a1,v1,65bc` at 0x65ac, the branch is taken when a1 == v1(=0x1); it falls through when a1 != v1(=0x1) (`beq` at 0x65ac).
  Returns with v0 = ? at 0x65b4 (`jr` at 0x65b4).
  Returns with v0 = ? at 0x65c4 (`jr` at 0x65c4).
- `timepoke` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x65cc, 28 bytes) Inferred.
  Role: unknown.
  Returns with v0 = ret(siron) at 0x65e0 (`jr` at 0x65e0).
  Calls `siron` via direct with a0=0x100, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x65d4).
- `findcpufreq_cycles` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x65e8, 52 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `a2` to abs 0xffffffffffffc6f4 (`sw` at 0x6618).
  At `beq a2,zero,6604` at 0x65f0, the branch is taken when a2(=[-0x390c]) == 0; it falls through when a2(=[-0x390c]) != 0 (`beq` at 0x65f0).
  Returns with v0 = ? at 0x65fc (`jr` at 0x65fc).
  Calls `findcpufreq_hz` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[-0x390c], a3=a3 at entry (arg3) (`jal` at 0x6604).
- `first_timein` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x661c, 32 bytes) Inferred.
  Role: unknown.
  At `bne a3,zero,6630` at 0x6620, the branch is taken when a3(=[a0+24]:8) != 0; it falls through when a3(=[a0+24]:8) == 0 (`bne` at 0x6620).
  Returns with v0 = 0x7fffffffffffffff at 0x6628 (`jr` at 0x6628).
  Returns with v0 = [[a0+24]:8]:8 at 0x6634 (`jr` at 0x6634).
- `atomicAddInt` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6640, 32 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t1` to a0 (arg0 at entry) +0x0; value ([a0] + a1) (`sc` at 0x6648).
  At `beql t1,zero,6640` at 0x664c, the branch is taken when t1(=([a0] + a1)) == 0; it falls through when t1(=([a0] + a1)) != 0 (`beql` at 0x664c).
  Returns with v0 = ([a0] + a1) at 0x6658 (`jr` at 0x6658).
- `atomicAddUint` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6640, 32 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t1` to a0 (arg0 at entry) +0x0; value ([a0] + a1) (`sc` at 0x6648).
  At `beql t1,zero,6640` at 0x664c, the branch is taken when t1(=([a0] + a1)) == 0; it falls through when t1(=([a0] + a1)) != 0 (`beql` at 0x664c).
  Returns with v0 = ([a0] + a1) at 0x6658 (`jr` at 0x6658).
- `atomicAddIntHot2` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6660, 32 bytes) Inferred.
  Role: unknown.
  Stores 1 bytes from `zero` to a2 (arg2 at entry) +0x0; value 0x0 (`sb` at 0x6660).
  Stores 4 bytes from `t1` to a0 (arg0 at entry) +0x0; value ([a0] + a1) (`sc` at 0x666c).
  Stores 1 bytes from `zero` to a2 (arg2 at entry) +0x0; value 0x0 (`sb` at 0x6674).
  At `beql t1,zero,6664` at 0x6670, the branch is taken when t1(=([a0] + a1)) == 0; it falls through when t1(=([a0] + a1)) != 0 (`beql` at 0x6670).
  Returns with v0 = ([a0] + a1) at 0x6678 (`jr` at 0x6678).
- `atomicAddUintHot2` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6660, 32 bytes) Inferred.
  Role: unknown.
  Stores 1 bytes from `zero` to a2 (arg2 at entry) +0x0; value 0x0 (`sb` at 0x6660).
  Stores 4 bytes from `t1` to a0 (arg0 at entry) +0x0; value ([a0] + a1) (`sc` at 0x666c).
  Stores 1 bytes from `zero` to a2 (arg2 at entry) +0x0; value 0x0 (`sb` at 0x6674).
  At `beql t1,zero,6664` at 0x6670, the branch is taken when t1(=([a0] + a1)) == 0; it falls through when t1(=([a0] + a1)) != 0 (`beql` at 0x6670).
  Returns with v0 = ([a0] + a1) at 0x6678 (`jr` at 0x6678).
- `atomicSetCpumask` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6680, 32 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t2` to a0 (arg0 at entry) +0x0; value ([a0] | [a1]) (`sc` at 0x668c).
  At `beql t2,zero,6684` at 0x6690, the branch is taken when t2(=([a0] | [a1])) == 0; it falls through when t2(=([a0] | [a1])) != 0 (`beql` at 0x6690).
  Returns with v0 = [a0] at 0x6698 (`jr` at 0x6698).
- `atomicClearInt` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x66a0, 32 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t2` to a0 (arg0 at entry) +0x0 (`sc` at 0x66ac).
  At `beql t2,zero,66a4` at 0x66b0, the branch is taken when (v0(=[a0]) & a1(?)) == 0; it falls through when (v0(=[a0]) & a1(?)) != 0 (`beql` at 0x66b0).
  Returns with v0 = [a0] at 0x66b8 (`jr` at 0x66b8).
- `atomicClearUint` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x66a0, 32 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t2` to a0 (arg0 at entry) +0x0 (`sc` at 0x66ac).
  At `beql t2,zero,66a4` at 0x66b0, the branch is taken when (v0(=[a0]) & a1(?)) == 0; it falls through when (v0(=[a0]) & a1(?)) != 0 (`beql` at 0x66b0).
  Returns with v0 = [a0] at 0x66b8 (`jr` at 0x66b8).
- `bitlock_release_32bit` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x66a0, 32 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t2` to a0 (arg0 at entry) +0x0 (`sc` at 0x66ac).
  At `beql t2,zero,66a4` at 0x66b0, the branch is taken when (v0(=[a0]) & a1(?)) == 0; it falls through when (v0(=[a0]) & a1(?)) != 0 (`beql` at 0x66b0).
  Returns with v0 = [a0] at 0x66b8 (`jr` at 0x66b8).
- `atomicClearInt64` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x66c0, 32 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t2` to a0 (arg0 at entry) +0x0 (`scd` at 0x66cc).
  At `beql t2,zero,66c4` at 0x66d0, the branch is taken when (v0(=[a0]:8) & a1(?)) == 0; it falls through when (v0(=[a0]:8) & a1(?)) != 0 (`beql` at 0x66d0).
  Returns with v0 = [a0]:8 at 0x66d8 (`jr` at 0x66d8).
- `atomicClearLong` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x66c0, 32 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t2` to a0 (arg0 at entry) +0x0 (`scd` at 0x66cc).
  At `beql t2,zero,66c4` at 0x66d0, the branch is taken when (v0(=[a0]:8) & a1(?)) == 0; it falls through when (v0(=[a0]:8) & a1(?)) != 0 (`beql` at 0x66d0).
  Returns with v0 = [a0]:8 at 0x66d8 (`jr` at 0x66d8).
- `atomicClearUint64` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x66c0, 32 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t2` to a0 (arg0 at entry) +0x0 (`scd` at 0x66cc).
  At `beql t2,zero,66c4` at 0x66d0, the branch is taken when (v0(=[a0]:8) & a1(?)) == 0; it falls through when (v0(=[a0]:8) & a1(?)) != 0 (`beql` at 0x66d0).
  Returns with v0 = [a0]:8 at 0x66d8 (`jr` at 0x66d8).
- `atomicClearUlong` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x66c0, 32 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t2` to a0 (arg0 at entry) +0x0 (`scd` at 0x66cc).
  At `beql t2,zero,66c4` at 0x66d0, the branch is taken when (v0(=[a0]:8) & a1(?)) == 0; it falls through when (v0(=[a0]:8) & a1(?)) != 0 (`beql` at 0x66d0).
  Returns with v0 = [a0]:8 at 0x66d8 (`jr` at 0x66d8).
- `bitlock_release` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x66c0, 32 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t2` to a0 (arg0 at entry) +0x0 (`scd` at 0x66cc).
  At `beql t2,zero,66c4` at 0x66d0, the branch is taken when (v0(=[a0]:8) & a1(?)) == 0; it falls through when (v0(=[a0]:8) & a1(?)) != 0 (`beql` at 0x66d0).
  Returns with v0 = [a0]:8 at 0x66d8 (`jr` at 0x66d8).
- `atomicFieldAssignLong` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x66e0, 36 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t2` to a0 (arg0 at entry) +0x0 (`scd` at 0x66f0).
  At `beql t2,zero,66e4` at 0x66f4, the branch is taken when t2(?) == 0; it falls through when t2(?) != 0 (`beql` at 0x66f4).
  Returns with v0 = [a0]:8 at 0x66fc (`jr` at 0x66fc).
- `atomicFieldAssignUint` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6704, 36 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t2` to a0 (arg0 at entry) +0x0 (`sc` at 0x6714).
  At `beql t2,zero,6708` at 0x6718, the branch is taken when t2(?) == 0; it falls through when t2(?) != 0 (`beql` at 0x6718).
  Returns with v0 = [a0] at 0x6720 (`jr` at 0x6720).
- `atomicClearCpumask` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6728, 36 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t2` to a0 (arg0 at entry) +0x0 (`sc` at 0x6738).
  At `beql t2,zero,6730` at 0x673c, the branch is taken when (v0(=[a0]) & a1(?)) == 0; it falls through when (v0(=[a0]) & a1(?)) != 0 (`beql` at 0x673c).
  Returns with v0 = [a0] at 0x6744 (`jr` at 0x6744).
- `atomicAddInt64` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x674c, 32 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t1` to a0 (arg0 at entry) +0x0; value ([a0]:8 + a1) (`scd` at 0x6754).
  At `beql t1,zero,674c` at 0x6758, the branch is taken when t1(=([a0]:8 + a1)) == 0; it falls through when t1(=([a0]:8 + a1)) != 0 (`beql` at 0x6758).
  Returns with v0 = ([a0]:8 + a1) at 0x6764 (`jr` at 0x6764).
- `atomicAddUint64` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x674c, 32 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t1` to a0 (arg0 at entry) +0x0; value ([a0]:8 + a1) (`scd` at 0x6754).
  At `beql t1,zero,674c` at 0x6758, the branch is taken when t1(=([a0]:8 + a1)) == 0; it falls through when t1(=([a0]:8 + a1)) != 0 (`beql` at 0x6758).
  Returns with v0 = ([a0]:8 + a1) at 0x6764 (`jr` at 0x6764).
- `atomicAddInt64Hot2` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x676c, 32 bytes) Inferred.
  Role: unknown.
  Stores 1 bytes from `zero` to a2 (arg2 at entry) +0x0; value 0x0 (`sb` at 0x676c).
  Stores 8 bytes from `t1` to a0 (arg0 at entry) +0x0; value ([a0]:8 + a1) (`scd` at 0x6778).
  Stores 1 bytes from `zero` to a2 (arg2 at entry) +0x0; value 0x0 (`sb` at 0x6780).
  At `beql t1,zero,6770` at 0x677c, the branch is taken when t1(=([a0]:8 + a1)) == 0; it falls through when t1(=([a0]:8 + a1)) != 0 (`beql` at 0x677c).
  Returns with v0 = ([a0]:8 + a1) at 0x6784 (`jr` at 0x6784).
- `atomicAddUint64Hot2` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x676c, 32 bytes) Inferred.
  Role: unknown.
  Stores 1 bytes from `zero` to a2 (arg2 at entry) +0x0; value 0x0 (`sb` at 0x676c).
  Stores 8 bytes from `t1` to a0 (arg0 at entry) +0x0; value ([a0]:8 + a1) (`scd` at 0x6778).
  Stores 1 bytes from `zero` to a2 (arg2 at entry) +0x0; value 0x0 (`sb` at 0x6780).
  At `beql t1,zero,6770` at 0x677c, the branch is taken when t1(=([a0]:8 + a1)) == 0; it falls through when t1(=([a0]:8 + a1)) != 0 (`beql` at 0x677c).
  Returns with v0 = ([a0]:8 + a1) at 0x6784 (`jr` at 0x6784).
- `atomicPush` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x678c, 56 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t0` to a2 (arg2 at entry) +0x0; value [a0]:8 (`sd` at 0x6798).
  Stores 8 bytes from `t2` to a0 (arg0 at entry) +0x0; value a1 (`scd` at 0x67a8).
  At `bne t1,zero,67b8` at 0x6794, the branch is taken when (t0(=[a0]:8) & 0x1) != 0; it falls through when (t0(=[a0]:8) & 0x1) == 0 (`bne` at 0x6794).
  At `bne v0,t0,678c` at 0x67a0, the branch is taken when v0(=[a0]:8) != t0(=[a0]:8); it falls through when v0(=[a0]:8) == t0(=[a0]:8) (`bne` at 0x67a0).
  At `beql t2,zero,678c` at 0x67ac, the branch is taken when t2(=a1) == 0; it falls through when t2(=a1) != 0 (`beql` at 0x67ac).
  Returns with v0 = [a0]:8 at 0x67b4 (`jr` at 0x67b4).
- `atomicPull` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x67c4, 44 bytes) Inferred.
  Role: unknown.
  Range 0x67e0 is not reached from the entry.
  Stores 8 bytes from `t0` to a0 (arg0 at entry) +0x0; value 0x0 (`scd` at 0x67d4).
  At `bne t1,zero,67e4` at 0x67cc, the branch is taken when (v0(=[a0]:8) & 0x1) != 0; it falls through when (v0(=[a0]:8) & 0x1) == 0 (`bne` at 0x67cc).
- `atomicIncWithWrap` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x67f0, 44 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t1` to a0 (arg0 at entry) +0x0 (`sc` at 0x6804).
  At `bne t1,a1,6804` at 0x67f8, the branch is taken when t1(=[a0]+1) != a1; it falls through when t1(=[a0]+1) == a1 (`bne` at 0x67f8).
  At `beql t1,zero,67f0` at 0x6808, the branch is taken when t1(?) == 0; it falls through when t1(?) != 0 (`beql` at 0x6808).
  Returns with v0 = [a0] at 0x6814 (`jr` at 0x6814).
- `atomicAddWithWrap` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x681c, 48 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t1` to a0 (arg0 at entry) +0x0 (`sc` at 0x6834).
  At `bne at,zero,6834` at 0x6828, the branch is taken when t1(=([a0] + a1)) < a2 (signed); it falls through when t1(=([a0] + a1)) >= a2 (signed) (`bne` at 0x6828).
  At `beql t1,zero,681c` at 0x6838, the branch is taken when t1(?) == 0; it falls through when t1(?) != 0 (`beql` at 0x6838).
  Returns with v0 = [a0] at 0x6844 (`jr` at 0x6844).
- `bitlock_set` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x684c, 36 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t2` to a0 (arg0 at entry) +0x0; value ([a0] | a2) (`sc` at 0x685c).
  At `bne a5,zero,684c` at 0x6854, the branch is taken when (v0(=[a0]) & a1) != 0; it falls through when (v0(=[a0]) & a1) == 0 (`bne` at 0x6854).
  At `beql t2,zero,684c` at 0x6860, the branch is taken when t2(=([a0] | a2)) == 0; it falls through when t2(=([a0] | a2)) != 0 (`beql` at 0x6860).
  Returns with v0 = [a0] at 0x6868 (`jr` at 0x6868).
- `bitlock_clr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6870, 40 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t2` to a0 (arg0 at entry) +0x0 (`sc` at 0x6884).
  At `bne a5,zero,6874` at 0x687c, the branch is taken when (v0(=[a0]) & a1) != 0; it falls through when (v0(=[a0]) & a1) == 0 (`bne` at 0x687c).
  At `beql t2,zero,6874` at 0x6888, the branch is taken when t2(?) == 0; it falls through when t2(?) != 0 (`beql` at 0x6888).
  Returns with v0 = [a0] at 0x6890 (`jr` at 0x6890).
- `bitlock_acquire` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6898, 36 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t2` to a0 (arg0 at entry) +0x0; value ([a0]:8 | a1) (`scd` at 0x68a8).
  At `bne t2,zero,6898` at 0x68a0, the branch is taken when (v0(=[a0]:8) & a1) != 0; it falls through when (v0(=[a0]:8) & a1) == 0 (`bne` at 0x68a0).
  At `beql t2,zero,6898` at 0x68ac, the branch is taken when t2(=([a0]:8 | a1)) == 0; it falls through when t2(=([a0]:8 | a1)) != 0 (`beql` at 0x68ac).
  Returns with v0 = [a0]:8 at 0x68b4 (`jr` at 0x68b4).
- `bitlock_acquire_32bit` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x68bc, 36 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t2` to a0 (arg0 at entry) +0x0; value ([a0] | a1) (`sc` at 0x68cc).
  At `bne t2,zero,68bc` at 0x68c4, the branch is taken when (v0(=[a0]) & a1) != 0; it falls through when (v0(=[a0]) & a1) == 0 (`bne` at 0x68c4).
  At `beql t2,zero,68bc` at 0x68d0, the branch is taken when t2(=([a0] | a1)) == 0; it falls through when t2(=([a0] | a1)) != 0 (`beql` at 0x68d0).
  Returns with v0 = [a0] at 0x68d8 (`jr` at 0x68d8).
- `bitlock_condacq` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x68e0, 156 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t2` to a0 (arg0 at entry) +0x0; value ([a0]:8 | a1) (`scd` at 0x6900).
  At `bltz t3,692c` at 0x68e8, the branch is taken when t3(?) < 0 (signed); it falls through when t3(?) >= 0 (signed) (`bltz` at 0x68e8).
  At `bne t2,zero,6914` at 0x68f8, the branch is taken when (v0(=[a0]:8) & a1) != 0; it falls through when (v0(=[a0]:8) & a1) == 0 (`bne` at 0x68f8).
  At `beql t2,zero,68f0` at 0x6904, the branch is taken when t2(=([a0]:8 | a1)) == 0; it falls through when t2(=([a0]:8 | a1)) != 0 (`beql` at 0x6904).
  At `bgez a5,6918` at 0x691c, the branch is taken when a5(?) >= 0 (signed); it falls through when a5(?) < 0 (signed) (`bgez` at 0x691c).
  Returns with v0 = 0x0 at 0x690c (`jr` at 0x690c).
  Returns with v0 = 0x1 at 0x6974 (`jr` at 0x6974).
- `bitlock_condacq_32bit` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x697c, 156 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t2` to a0 (arg0 at entry) +0x0; value ([a0] | a1) (`sc` at 0x699c).
  At `bltz t3,69c8` at 0x6984, the branch is taken when t3(?) < 0 (signed); it falls through when t3(?) >= 0 (signed) (`bltz` at 0x6984).
  At `bne t2,zero,69b0` at 0x6994, the branch is taken when (v0(=[a0]) & a1) != 0; it falls through when (v0(=[a0]) & a1) == 0 (`bne` at 0x6994).
  At `beql t2,zero,698c` at 0x69a0, the branch is taken when t2(=([a0] | a1)) == 0; it falls through when t2(=([a0] | a1)) != 0 (`beql` at 0x69a0).
  At `bgez a5,69b4` at 0x69b8, the branch is taken when a5(?) >= 0 (signed); it falls through when a5(?) < 0 (signed) (`bgez` at 0x69b8).
  Returns with v0 = 0x0 at 0x69a8 (`jr` at 0x69a8).
  Returns with v0 = 0x1 at 0x6a10 (`jr` at 0x6a10).
- `mutex_set_always` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6a18, 28 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t0` to a0 (arg0 at entry) +0x0; value a1 (`scd` at 0x6a20).
  At `beql t0,zero,6a18` at 0x6a24, the branch is taken when t0(=a1) == 0; it falls through when t0(=a1) != 0 (`beql` at 0x6a24).
  Returns with v0 = [a0]:8 at 0x6a2c (`jr` at 0x6a2c).
- `test_and_set_int` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6a34, 28 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t2` to a0 (arg0 at entry) +0x0; value a1 (`sc` at 0x6a3c).
  At `beql t2,zero,6a34` at 0x6a40, the branch is taken when t2(=a1) == 0; it falls through when t2(=a1) != 0 (`beql` at 0x6a40).
  Returns with v0 = [a0] at 0x6a48 (`jr` at 0x6a48).
- `test_and_set_int64` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6a50, 28 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t2` to a0 (arg0 at entry) +0x0; value a1 (`scd` at 0x6a58).
  At `beql t2,zero,6a50` at 0x6a5c, the branch is taken when t2(=a1) == 0; it falls through when t2(=a1) != 0 (`beql` at 0x6a5c).
  Returns with v0 = [a0]:8 at 0x6a64 (`jr` at 0x6a64).
- `test_and_set_long` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6a50, 28 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t2` to a0 (arg0 at entry) +0x0; value a1 (`scd` at 0x6a58).
  At `beql t2,zero,6a50` at 0x6a5c, the branch is taken when t2(=a1) == 0; it falls through when t2(=a1) != 0 (`beql` at 0x6a5c).
  Returns with v0 = [a0]:8 at 0x6a64 (`jr` at 0x6a64).
- `test_and_set_ptr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6a50, 28 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t2` to a0 (arg0 at entry) +0x0; value a1 (`scd` at 0x6a58).
  At `beql t2,zero,6a50` at 0x6a5c, the branch is taken when t2(=a1) == 0; it falls through when t2(=a1) != 0 (`beql` at 0x6a5c).
  Returns with v0 = [a0]:8 at 0x6a64 (`jr` at 0x6a64).
- `swap_int` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6a6c, 28 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t0` to a0 (arg0 at entry) +0x0; value a1 (`sc` at 0x6a74).
  At `beql t0,zero,6a6c` at 0x6a78, the branch is taken when t0(=a1) == 0; it falls through when t0(=a1) != 0 (`beql` at 0x6a78).
  Returns with v0 = [a0] at 0x6a80 (`jr` at 0x6a80).
- `compare_and_swap_int` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6a88, 152 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x0; value a2 (`sc` at 0x6a94).
  At `bne t0,a1,6aa8` at 0x6a8c, the branch is taken when t0(=[a0]) != a1; it falls through when t0(=[a0]) == a1 (`bne` at 0x6a8c).
  At `beql v0,zero,6a88` at 0x6a98, the branch is taken when v0(=a2) == 0; it falls through when v0(=a2) != 0 (`beql` at 0x6a98).
  Returns with v0 = a2 at 0x6aa0 (`jr` at 0x6aa0).
  Returns with v0 = 0x0 at 0x6b18 (`jr` at 0x6b18).
- `compare_and_inc_int_gt_zero` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6b20, 152 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x0; value [a0]+1 (`sc` at 0x6b2c).
  At `blez v0,6b40` at 0x6b24, the branch is taken when v0(=[a0]) <= 0 (signed); it falls through when v0(=[a0]) > 0 (signed) (`blez` at 0x6b24).
  At `beql v0,zero,6b20` at 0x6b30, the branch is taken when v0(=[a0]+1) == 0; it falls through when v0(=[a0]+1) != 0 (`beql` at 0x6b30).
  Returns with v0 = [a0]+1 at 0x6b38 (`jr` at 0x6b38).
  Returns with v0 = 0x0 at 0x6bb0 (`jr` at 0x6bb0).
- `compare_and_dec_int_gt` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6bb8, 156 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x0; value [a0]-1 (`sc` at 0x6bcc).
  At `bne at,zero,6be0` at 0x6bc4, the branch is taken when v0(=[a0]-1) < a1 (signed); it falls through when v0(=[a0]-1) >= a1 (signed) (`bne` at 0x6bc4).
  At `beql v0,zero,6bb8` at 0x6bd0, the branch is taken when v0(=[a0]-1) == 0; it falls through when v0(=[a0]-1) != 0 (`beql` at 0x6bd0).
  Returns with v0 = [a0]-1 at 0x6bd8 (`jr` at 0x6bd8).
  Returns with v0 = 0x0 at 0x6c4c (`jr` at 0x6c4c).
- `compare_and_dec_int_gt_hot2` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6c54, 156 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x0; value [a0]-1 (`sc` at 0x6c68).
  Stores 4 bytes from `zero` to a2 (arg2 at entry) +0x0; value 0x0 (`sw` at 0x6c70).
  At `bne at,zero,6c7c` at 0x6c60, the branch is taken when v0(=[a0]-1) < a1 (signed); it falls through when v0(=[a0]-1) >= a1 (signed) (`bne` at 0x6c60).
  At `beql v0,zero,6c54` at 0x6c6c, the branch is taken when v0(=[a0]-1) == 0; it falls through when v0(=[a0]-1) != 0 (`beql` at 0x6c6c).
  Returns with v0 = [a0]-1 at 0x6c74 (`jr` at 0x6c74).
  Returns with v0 = 0x0 at 0x6ce8 (`jr` at 0x6ce8).
- `swap_int64` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6cf0, 28 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t0` to a0 (arg0 at entry) +0x0; value a1 (`scd` at 0x6cf8).
  At `beql t0,zero,6cf0` at 0x6cfc, the branch is taken when t0(=a1) == 0; it falls through when t0(=a1) != 0 (`beql` at 0x6cfc).
  Returns with v0 = [a0]:8 at 0x6d04 (`jr` at 0x6d04).
- `swap_long` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6cf0, 28 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t0` to a0 (arg0 at entry) +0x0; value a1 (`scd` at 0x6cf8).
  At `beql t0,zero,6cf0` at 0x6cfc, the branch is taken when t0(=a1) == 0; it falls through when t0(=a1) != 0 (`beql` at 0x6cfc).
  Returns with v0 = [a0]:8 at 0x6d04 (`jr` at 0x6d04).
- `swap_ptr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6cf0, 28 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `t0` to a0 (arg0 at entry) +0x0; value a1 (`scd` at 0x6cf8).
  At `beql t0,zero,6cf0` at 0x6cfc, the branch is taken when t0(=a1) == 0; it falls through when t0(=a1) != 0 (`beql` at 0x6cfc).
  Returns with v0 = [a0]:8 at 0x6d04 (`jr` at 0x6d04).
- `compare_and_swap_int64` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6d0c, 152 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x0; value a2 (`scd` at 0x6d18).
  At `bne t0,a1,6d2c` at 0x6d10, the branch is taken when t0(=[a0]:8) != a1; it falls through when t0(=[a0]:8) == a1 (`bne` at 0x6d10).
  At `beql v0,zero,6d0c` at 0x6d1c, the branch is taken when v0(=a2) == 0; it falls through when v0(=a2) != 0 (`beql` at 0x6d1c).
  Returns with v0 = a2 at 0x6d24 (`jr` at 0x6d24).
  Returns with v0 = 0x0 at 0x6d9c (`jr` at 0x6d9c).
- `compare_and_swap_kt` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6d0c, 152 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x0; value a2 (`scd` at 0x6d18).
  At `bne t0,a1,6d2c` at 0x6d10, the branch is taken when t0(=[a0]:8) != a1; it falls through when t0(=[a0]:8) == a1 (`bne` at 0x6d10).
  At `beql v0,zero,6d0c` at 0x6d1c, the branch is taken when v0(=a2) == 0; it falls through when v0(=a2) != 0 (`beql` at 0x6d1c).
  Returns with v0 = a2 at 0x6d24 (`jr` at 0x6d24).
  Returns with v0 = 0x0 at 0x6d9c (`jr` at 0x6d9c).
- `compare_and_swap_long` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6d0c, 152 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x0; value a2 (`scd` at 0x6d18).
  At `bne t0,a1,6d2c` at 0x6d10, the branch is taken when t0(=[a0]:8) != a1; it falls through when t0(=[a0]:8) == a1 (`bne` at 0x6d10).
  At `beql v0,zero,6d0c` at 0x6d1c, the branch is taken when v0(=a2) == 0; it falls through when v0(=a2) != 0 (`beql` at 0x6d1c).
  Returns with v0 = a2 at 0x6d24 (`jr` at 0x6d24).
  Returns with v0 = 0x0 at 0x6d9c (`jr` at 0x6d9c).
- `compare_and_swap_ptr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6d0c, 152 bytes) Inferred.
  Role: unknown.
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x0; value a2 (`scd` at 0x6d18).
  At `bne t0,a1,6d2c` at 0x6d10, the branch is taken when t0(=[a0]:8) != a1; it falls through when t0(=[a0]:8) == a1 (`bne` at 0x6d10).
  At `beql v0,zero,6d0c` at 0x6d1c, the branch is taken when v0(=a2) == 0; it falls through when v0(=a2) != 0 (`beql` at 0x6d1c).
  Returns with v0 = a2 at 0x6d24 (`jr` at 0x6d24).
  Returns with v0 = 0x0 at 0x6d9c (`jr` at 0x6d9c).
- `comparegt_and_swap_int` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6da4, 156 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x0; value a2 (`sc` at 0x6db4).
  At `beq at,zero,6dc8` at 0x6dac, the branch is taken when a1 >= t1(=[a0]) (signed); it falls through when a1 < t1(=[a0]) (signed) (`beq` at 0x6dac).
  At `beql v0,zero,6da4` at 0x6db8, the branch is taken when v0(=a2) == 0; it falls through when v0(=a2) != 0 (`beql` at 0x6db8).
  Returns with v0 = a2 at 0x6dc0 (`jr` at 0x6dc0).
  Returns with v0 = 0x0 at 0x6e38 (`jr` at 0x6e38).
- `store_atomic` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6e40, 24 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `a4` to a0 (arg0 at entry) +0x0; value [a0] (`sc` at 0x6e44).
  At `beql a4,zero,6e40` at 0x6e48, the branch is taken when a4(=[a0]) == 0; it falls through when a4(=[a0]) != 0 (`beql` at 0x6e48).
  Returns with v0 = ? at 0x6e50 (`jr` at 0x6e50).
- `atomicIncPort` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6e58, 48 bytes) Inferred.
  Role: unknown.
  Stores 4 bytes from `t1` to a0 (arg0 at entry) +0x0 (`sc` at 0x6e70).
  At `beq at,zero,6e70` at 0x6e64, the branch is taken when a1 >= t1(=[a0]+1) (signed); it falls through when a1 < t1(=[a0]+1) (signed) (`beq` at 0x6e64).
  At `beql t1,zero,6e58` at 0x6e74, the branch is taken when t1(?) == 0; it falls through when t1(?) != 0 (`beql` at 0x6e74).
  Returns with v0 = [a0] at 0x6e80 (`jr` at 0x6e80).
- `copyin` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6e90, 140 bytes) Inferred.
  Role: unknown.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0x2 (`sh` at 0x6efc).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x6f08).
  At `bne t1,at,6ec8` at 0x6ea4, the branch is taken when t1(=[[-0x3fe0]:8+112]:1) != at(=0x1); it falls through when t1(=[[-0x3fe0]:8+112]:1) == at(=0x1) (`bne` at 0x6ea4).
  At `beq t2,zero,6ec8` at 0x6eb0, the branch is taken when t2(=[[-0x3fe0]:8+824]:8) == 0; it falls through when t2(=[[-0x3fe0]:8+824]:8) != 0 (`beq` at 0x6eb0).
  At `bltz a2,70e4` at 0x6ec8, the branch is taken when a2 < 0 (signed); it falls through when a2 >= 0 (signed) (`bltz` at 0x6ec8).
  At `bltz a0,70e4` at 0x6ed0, the branch is taken when a0 < 0 (signed); it falls through when a0 >= 0 (signed) (`bltz` at 0x6ed0).
  At `bne at,zero,70e4` at 0x6ee8, the branch is taken when t0(=0x10000000000) < v0(=(a0 + a2)) (unsigned); it falls through when t0(=0x10000000000) >= v0(=(a0 + a2)) (unsigned) (`bne` at 0x6ee8).
  Returns with v0 = 0x0 at 0x6f14 (`jr` at 0x6f14).
  Calls `do_ucopy_copyin` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x6eb8).
  Calls `.text` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x6ec0).
  Calls `bcopy` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x6ef8).
- `copyout` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6f1c, 140 bytes) Inferred.
  Role: unknown.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0x2 (`sh` at 0x6f88).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x6f94).
  At `bne t1,at,6f54` at 0x6f30, the branch is taken when t1(=[[-0x3fe0]:8+112]:1) != at(=0x1); it falls through when t1(=[[-0x3fe0]:8+112]:1) == at(=0x1) (`bne` at 0x6f30).
  At `beq t2,zero,6f54` at 0x6f3c, the branch is taken when t2(=[[-0x3fe0]:8+824]:8) == 0; it falls through when t2(=[[-0x3fe0]:8+824]:8) != 0 (`beq` at 0x6f3c).
  At `bltz a2,70e4` at 0x6f54, the branch is taken when a2 < 0 (signed); it falls through when a2 >= 0 (signed) (`bltz` at 0x6f54).
  At `bltz a1,70e4` at 0x6f5c, the branch is taken when a1 < 0 (signed); it falls through when a1 >= 0 (signed) (`bltz` at 0x6f5c).
  At `bne at,zero,70e4` at 0x6f74, the branch is taken when t0(=0x10000000000) < v0(=(a1 + a2)) (unsigned); it falls through when t0(=0x10000000000) >= v0(=(a1 + a2)) (unsigned) (`bne` at 0x6f74).
  Returns with v0 = 0x0 at 0x6fa0 (`jr` at 0x6fa0).
  Calls `do_ucopy_copyout` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x6f44).
  Calls `.text` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x6f4c).
  Calls `bcopy` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x6f84).
- `swcopyin` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x6fa8, 88 bytes) Inferred.
  Role: unknown.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0x2 (`sh` at 0x6fe0).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x6fec).
  At `bltz a2,70e4` at 0x6fac, the branch is taken when a2 < 0 (signed); it falls through when a2 >= 0 (signed) (`bltz` at 0x6fac).
  At `bltz a0,70e4` at 0x6fb4, the branch is taken when a0 < 0 (signed); it falls through when a0 >= 0 (signed) (`bltz` at 0x6fb4).
  At `bne at,zero,70e4` at 0x6fcc, the branch is taken when t0(=0x10000000000) < v0(=(a0 + a2)) (unsigned); it falls through when t0(=0x10000000000) >= v0(=(a0 + a2)) (unsigned) (`bne` at 0x6fcc).
  Returns with v0 = 0x0 at 0x6ff8 (`jr` at 0x6ff8).
  Calls `swbcopy` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x6fdc).

## Skipped routines

Skipped routines from the first 250 targets: `odsy_usb_comp_update_tiles` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member); `usb_comp_update_tiles` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member); `odsy_usb_comp_readwrite_register` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member); `usb_comp_readwrite_register` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member); `odsy_usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member); `usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member); `odsy_usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member); `usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member); `dma_mapinit` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented for this binary/member).
