# Instruction readings from hostfacts

Each entry records selected memory accesses, calls and arguments, branch conditions, and return values from the exact binary range cited. The facts describe software behavior in the named build; they do not establish hardware behavior.

Routines with an exact binary/member/routine entry already documented were skipped: `sampleBuffersScore` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`; `__glx_DispatchNop` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`; `__glXError` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`; `__glXGetPipeAddress` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`; `orderSmaller` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`; `IndexScore` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`; `__glOdyim_TexCoord4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`; `__glOdyim_Color3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`; `__glOdyim_Color4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`; `__glOdyim_Color4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`; `getrand` in `usr/cpu/sysgen/IP30boot/kernel.o`; `tlbgetrand` in `usr/cpu/sysgen/IP30boot/kernel.o`; `ackkgclock` in `usr/cpu/sysgen/IP30boot/kernel.o`; `allowintrs` in `usr/cpu/sysgen/IP30boot/kernel.o`; `apsfail` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bump_leds` in `usr/cpu/sysgen/IP30boot/kernel.o`; `check_delay_iflush` in `usr/cpu/sysgen/IP30boot/kernel.o`; `disallowboot` in `usr/cpu/sysgen/IP30boot/kernel.o`; `dma_mapinit` in `usr/cpu/sysgen/IP30boot/kernel.o`; `dummy_func` in `usr/cpu/sysgen/IP30boot/kernel.o`; `heart_dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o`; `heart_dcache_wb_inval` in `usr/cpu/sysgen/IP30boot/kernel.o`; `heart_write_dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o`; `heart_write_dcache_wb_inval` in `usr/cpu/sysgen/IP30boot/kernel.o`; `stopkgclock` in `usr/cpu/sysgen/IP30boot/kernel.o`; `vme_init` in `usr/cpu/sysgen/IP30boot/kernel.o`; `vme_ivec_init` in `usr/cpu/sysgen/IP30boot/kernel.o`; `wd93_init` in `usr/cpu/sysgen/IP30boot/kernel.o`; `dcache_wb` in `usr/cpu/sysgen/IP30boot/kernel.o`; `dcache_wbinval` in `usr/cpu/sysgen/IP30boot/kernel.o`; `dki_dcache_wb` in `usr/cpu/sysgen/IP30boot/kernel.o`; `dki_dcache_wbinval` in `usr/cpu/sysgen/IP30boot/kernel.o`; `dummyret0_func` in `usr/cpu/sysgen/IP30boot/kernel.o`; `heart_need_flush` in `usr/cpu/sysgen/IP30boot/kernel.o`; `is_vme_space` in `usr/cpu/sysgen/IP30boot/kernel.o`; `vme_adapter` in `usr/cpu/sysgen/IP30boot/kernel.o`; `resetcounter` in `usr/cpu/sysgen/IP30boot/kernel.o`; `resetcounter_val` in `usr/cpu/sysgen/IP30boot/kernel.o`; `silence_all_audio` in `usr/cpu/sysgen/IP30boot/kernel.o`; `silence_bell` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicAddInt` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicAddUint` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicAddIntHot2` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicAddUintHot2` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicClearInt` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicClearUint` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bitlock_release_32bit` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicClearInt64` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicClearLong` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicClearUint64` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicClearUlong` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bitlock_release` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicAddInt64` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicAddUint64` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicAddInt64Hot2` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicAddUint64Hot2` in `usr/cpu/sysgen/IP30boot/kernel.o`; `test_and_set_int64` in `usr/cpu/sysgen/IP30boot/kernel.o`; `test_and_set_long` in `usr/cpu/sysgen/IP30boot/kernel.o`; `test_and_set_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o`; `swap_int64` in `usr/cpu/sysgen/IP30boot/kernel.o`; `swap_long` in `usr/cpu/sysgen/IP30boot/kernel.o`; `swap_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o`; `compare_and_swap_int64` in `usr/cpu/sysgen/IP30boot/kernel.o`; `compare_and_swap_kt` in `usr/cpu/sysgen/IP30boot/kernel.o`; `compare_and_swap_long` in `usr/cpu/sysgen/IP30boot/kernel.o`; `compare_and_swap_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o`; `cerror` in `usr/cpu/sysgen/IP30boot/kernel.o`; `blkclr` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bzero` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bzero_end` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bzerror` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bcmp` in `usr/cpu/sysgen/IP30boot/kernel.o`; `memcmp` in `usr/cpu/sysgen/IP30boot/kernel.o`; `fubyte` in `usr/cpu/sysgen/IP30boot/kernel.o`; `fuibyte` in `usr/cpu/sysgen/IP30boot/kernel.o`; `subyte` in `usr/cpu/sysgen/IP30boot/kernel.o`; `suibyte` in `usr/cpu/sysgen/IP30boot/kernel.o`; `fuiword` in `usr/cpu/sysgen/IP30boot/kernel.o`; `fuword` in `usr/cpu/sysgen/IP30boot/kernel.o`; `suiword` in `usr/cpu/sysgen/IP30boot/kernel.o`; `suword` in `usr/cpu/sysgen/IP30boot/kernel.o`; `uerror` in `usr/cpu/sysgen/IP30boot/kernel.o`; `memcpy` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bcopy` in `usr/cpu/sysgen/IP30boot/kernel.o`; `ovbcopy` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bcopy_pref1` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bcopy_end` in `usr/cpu/sysgen/IP30boot/kernel.o`; `swbcopy` in `usr/cpu/sysgen/IP30boot/kernel.o`; `timestamp_init` in `usr/cpu/sysgen/IP30boot/kernel.o`; `read_branch_diag` in `usr/cpu/sysgen/IP30boot/kernel.o`; `write_branch_diag` in `usr/cpu/sysgen/IP30boot/kernel.o`; `branch_prediction_off` in `usr/cpu/sysgen/IP30boot/kernel.o`; `branch_prediction_on` in `usr/cpu/sysgen/IP30boot/kernel.o`; `branch_prediction_taken` in `usr/cpu/sysgen/IP30boot/kernel.o`; `branch_prediction_fwd_not_taken` in `usr/cpu/sysgen/IP30boot/kernel.o`; `exception_endfast` in `usr/cpu/sysgen/IP30boot/kernel.o`; `nano_to_ust` in `usr/cpu/sysgen/IP30boot/kernel.o`; `ust_init` in `usr/cpu/sysgen/IP30boot/kernel.o`; `get_fpc_csr` in `usr/cpu/sysgen/IP30boot/kernel.o`; `set_fpc_csr` in `usr/cpu/sysgen/IP30boot/kernel.o`; `get_cpu_irr` in `usr/cpu/sysgen/IP30boot/kernel.o`; `reviderror` in `usr/cpu/sysgen/IP30boot/kernel.o`; `get_cpu_cnf` in `usr/cpu/sysgen/IP30boot/kernel.o`; `clear_sline` in `usr/cpu/sysgen/IP30boot/kernel.o`; `dCacheSize` in `usr/cpu/sysgen/IP30boot/kernel.o`; `iCacheSize` in `usr/cpu/sysgen/IP30boot/kernel.o`; `sCacheSize` in `usr/cpu/sysgen/IP30boot/kernel.o`; `getecc` in `usr/cpu/sysgen/IP30boot/kernel.o`; `setecc` in `usr/cpu/sysgen/IP30boot/kernel.o`; `_munge_decc` in `usr/cpu/sysgen/IP30boot/kernel.o`; `sw_cachesynch_patch_insts` in `usr/cpu/sysgen/IP30boot/kernel.o`; `cache_sync_bp_start` in `usr/cpu/sysgen/IP30boot/kernel.o`; `cache_sync` in `usr/cpu/sysgen/IP30boot/kernel.o`; `sw_cachesynch_op1` in `usr/cpu/sysgen/IP30boot/kernel.o`; `sw_cachesynch_op2` in `usr/cpu/sysgen/IP30boot/kernel.o`; `VEC_trap` in `usr/cpu/sysgen/IP30boot/kernel.o`; `soft_trap` in `usr/cpu/sysgen/IP30boot/kernel.o`; `uli_getasids` in `usr/cpu/sysgen/IP30boot/kernel.o`; `uli_setasids` in `usr/cpu/sysgen/IP30boot/kernel.o`; `uli_eret` in `usr/cpu/sysgen/IP30boot/kernel.o`; `spl0` in `usr/cpu/sysgen/IP30boot/kernel.o`; `spl1` in `usr/cpu/sysgen/IP30boot/kernel.o`; `spl3` in `usr/cpu/sysgen/IP30boot/kernel.o`; `spl5` in `usr/cpu/sysgen/IP30boot/kernel.o`; `spl6` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splgio0` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splgio1` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splgio2` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splhi` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splhi_relnet` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splimp` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splnet` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splretr` in `usr/cpu/sysgen/IP30boot/kernel.o`; `spltty` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splvme` in `usr/cpu/sysgen/IP30boot/kernel.o`; `spl65` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splprof` in `usr/cpu/sysgen/IP30boot/kernel.o`; `spl7` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splerr` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splx` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splxecc` in `usr/cpu/sysgen/IP30boot/kernel.o`; `ip26_enable_ucmem` in `usr/cpu/sysgen/IP30boot/kernel.o`; `ip26_return_ucmem` in `usr/cpu/sysgen/IP30boot/kernel.o`; `ip28_enable_ucmem` in `usr/cpu/sysgen/IP30boot/kernel.o`; `ip28_return_ucmem` in `usr/cpu/sysgen/IP30boot/kernel.o`; `_j_endexceptnorm` in `usr/cpu/sysgen/IP30boot/kernel.o`; `_j_exceptnorm_nosymmon` in `usr/cpu/sysgen/IP30boot/kernel.o`; `eutlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o`; `lpg_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o`; `elpg_overlay_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o`; `utlbmiss1` in `usr/cpu/sysgen/IP30boot/kernel.o`; `eutlbmiss1` in `usr/cpu/sysgen/IP30boot/kernel.o`; `lpg_counting_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o`; `elpg_counting_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o`; `utlbmiss3` in `usr/cpu/sysgen/IP30boot/kernel.o`; `eutlbmiss3` in `usr/cpu/sysgen/IP30boot/kernel.o`; `lpg_overlay_counting_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o`; `elpg_overlay_counting_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o`; `utlbmiss_prolog_patch` in `usr/cpu/sysgen/IP30boot/kernel.o`; `_ecc_end` in `usr/cpu/sysgen/IP30boot/kernel.o`; `get_mem_conf` in `usr/cpu/sysgen/IP30boot/kernel.o`; `hub_dma_init` in `usr/cpu/sysgen/IP35boot/kernel.o`; `hub_dmatrans_addr` in `usr/cpu/sysgen/IP35boot/kernel.o`; `hub_dmatrans_list` in `usr/cpu/sysgen/IP35boot/kernel.o`; `hub_dmamap_drain` in `usr/cpu/sysgen/IP35boot/kernel.o`; `hub_dmaaddr_drain` in `usr/cpu/sysgen/IP35boot/kernel.o`; `hub_dmalist_drain` in `usr/cpu/sysgen/IP35boot/kernel.o`; `dma_geth` in `usr/cpu/sysgen/IP35boot/kernel.o`; `dmamap_init` in `usr/cpu/sysgen/IP35boot/kernel.o`; `odsyPolyFillRectSolid` in `usr/lib/X11/dyDDX/odyssey.so`.

- `odsy_usb_comp_update_tiles` in `usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` at 0x7f4 (n64).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x7f4-0x81c (40 bytes).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x804).
  Returns v0 = -0x1 (`jr` at 0x814).

- `usb_comp_update_tiles` in `usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` at 0x7f4 (n64).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x7f4-0x81c (40 bytes).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x804).
  Returns v0 = -0x1 (`jr` at 0x814).

- `odsy_usb_comp_readwrite_register` in `usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` at 0x81c (n64).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x81c-0x844 (40 bytes).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x82c).
  Returns v0 = -0x1 (`jr` at 0x83c).

- `usb_comp_readwrite_register` in `usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` at 0x81c (n64).
  Evidence grade: established.
  Exact binary: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x81c-0x844 (40 bytes).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x82c).
  Returns v0 = -0x1 (`jr` at 0x83c).

- `odsy_usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` at 0x7f4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x7f4-0x81c (40 bytes).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x804).
  Returns v0 = -0x1 (`jr` at 0x814).

- `usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` at 0x7f4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x7f4-0x81c (40 bytes).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x804).
  Returns v0 = -0x1 (`jr` at 0x814).

- `odsy_usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` at 0x81c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x81c-0x844 (40 bytes).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x82c).
  Returns v0 = -0x1 (`jr` at 0x83c).

- `usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` at 0x81c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x81c-0x844 (40 bytes).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x82c).
  Returns v0 = -0x1 (`jr` at 0x83c).

- `memmove` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x78b8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x78b8-0x78c4 (12 bytes).
  Role: unknown; hostfacts reports no reached access, call, branch, or return in 0x78b8-0x78c4.

- `cache_sync_bp_end` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb6e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb6e0-0xb750 (112 bytes).
  Stores 8 bytes from t0 to abs 0xffffffffffffc040  (`sd` at 0xb6e0).
  Calls `longway` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xb6f4).
  Calls `longway` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xb710).
  At `blez` at 0xb6e4 (target 0xb7ac), taken when a1 <= 0 (signed); falls through when a1 > 0 (signed).
  At `bne` at 0xb6ec (target 0xb6fc), taken when at(?) != 0; falls through when at(?) == 0.
  At `bne` at 0xb708 (target 0xb718), taken when t0(=(a0 + a1)-1) != 0; falls through when t0(=(a0 + a1)-1) == 0.
  At `beq` at 0xb740 (target 0xb74c), taken when a1 >= t0(?) (signed); falls through when a1 < t0(?) (signed).

- `assbuffer` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbb10 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbb10-0xbb14 (4 bytes).
  Role: unknown; hostfacts reports no reached access, call, branch, or return in 0xbb10-0xbb14.

- `kernelbp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc858 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc858-0xc85c (4 bytes).
  Role: unknown; hostfacts reports no reached access, call, branch, or return in 0xc858-0xc85c.

- `sstepbp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc8d4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc8d4-0xc8d8 (4 bytes).
  Role: unknown; hostfacts reports no reached access, call, branch, or return in 0xc8d4-0xc8d8.

- `utlbmiss_prolog_up` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd800 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd800-0xd80c (12 bytes).
  Role: unknown; hostfacts reports no reached access, call, branch, or return in 0xd800-0xd80c.

- `eutlbmiss_prolog_up` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd80c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd80c-0xd81c (16 bytes).
  Role: unknown; hostfacts reports no reached access, call, branch, or return in 0xd80c-0xd81c.

- `utlbmiss_prolog_mp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd80c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd80c-0xd81c (16 bytes).
  Role: unknown; hostfacts reports no reached access, call, branch, or return in 0xd80c-0xd81c.

- `eutlbmiss2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd9bc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd9bc-0xd9c0 (4 bytes).
  Role: unknown; hostfacts reports no reached access, call, branch, or return in 0xd9bc-0xd9c0.

- `utlbmiss_sharedseg1a` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd9bc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd9bc-0xd9c0 (4 bytes).
  Role: unknown; hostfacts reports no reached access, call, branch, or return in 0xd9bc-0xd9c0.

- `utlbmiss_sharedseg2a` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xda20 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xda20-0xda24 (4 bytes).
  Role: unknown; hostfacts reports no reached access, call, branch, or return in 0xda20-0xda24.

- `maddr_to_dimm` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe4ac (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe4ac-0xe500 (84 bytes).
  Calls `addr_to_bank [0xdc98]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xe4b8).
  At `beq` at 0xe4d8 (target 0xe4f8), taken when v0(=ret(addr_to_bank)) == a5(=-0x1); falls through when v0(=ret(addr_to_bank)) != a5(=-0x1).
  Returns v0 = ? (`jr` at 0xe4f0).

- `log_dimmerr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe500 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe500-0xe5e8 (232 bytes).
  Calls `maddr_to_dimm` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xe524).
  Calls `sprintf` via direct with a0=sp-64, a1=sym(.rodata)+3120, a2=one of 0x43, 0x44, a3=?, a5=0x43 (`jal` at 0xe558).
  Calls `cmn_err` via direct with a0=one of 0x1, 0x5, a1=sym(.rodata)+3120, a2=sym(.rodata)+3120, a3=sym(.rodata)+3120, a4=a0 at entry (arg0), a5=sym(.rodata)+3120, a7=sp-64 (`jal` at 0xe5a0).
  At `beq` at 0xe530 (target 0xe5bc), taken when s3(=a1) == 0; falls through when s3(=a1) != 0.
  At `bne` at 0xe568 (target 0xe5cc), taken when s1(=a4) != 0; falls through when s1(=a4) == 0.
  At `bne` at 0xe574 (target 0xe5d8), taken when s0(=ret(maddr_to_dimm)) != 0; falls through when s0(=ret(maddr_to_dimm)) == 0.
  At `beq` at 0xe5c4 (target 0xe570), taken when s1(=a4) == 0; falls through when s1(=a4) != 0.
  At `beq` at 0xe5d0 (target 0xe57c), taken when s0(=ret(maddr_to_dimm)) == 0; falls through when s0(=ret(maddr_to_dimm)) != 0.
  Returns v0 = ret(maddr_to_dimm) (`jr` at 0xe5b4).

- `VEC_addrerr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe5f0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe5f0-0xe5f8 (8 bytes).
  Calls `VEC_trap` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xe5f0).

- `VEC_tlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe600 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe600-0xe644 (68 bytes).
  Calls `tlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3) (`jal` at 0xe610).
  Calls `exception_exit` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xe62c).
  Calls `soft_trap` via direct with a0=a0 at entry (arg0), a1=ret(tlbmiss), a2=?, a3=[a0+280]:8 (`j` at 0xe63c).
  At `bne` at 0xe61c (target 0xe634), taken when v0(=ret(tlbmiss)) != 0; falls through when v0(=ret(tlbmiss)) == 0.

- `sendSIGFPE` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe698 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe698-0xe6e8 (80 bytes).
  Stores 4 bytes from at to [[-0x3fe8]:8+992]:8 +0x0  (`sw` at 0xe6b8).
  Calls `sigtouthread` via direct with a0=a0 at entry (arg0), a1=0x8, a2=0x0, a3=a3 at entry (arg3) (`jal` at 0xe6c4).
  Calls `checkfp` via direct with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=? (`jal` at 0xe6d0).
  At `bne` at 0xe6ac (target 0xe6bc), taken when a2(=[-0x3fe8]:8) != a0; falls through when a2(=[-0x3fe8]:8) == a0.
  Returns v0 = ret(checkfp) (`jr` at 0xe6e0).

- `softfp_dispatch` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe814 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe814-0xf244 (2608 bytes).
  Calls `checkfp` via direct with a0=[-0x3fe8]:8, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xe838).
  Calls `get_current_abi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xe854).
  Calls `load_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xe85c).
  Calls `fp_init_glob` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=one of 0x0, 0x3 (`jal` at 0xe8d0).
  Calls `illfpinst [0xf244]` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a6=0x13, a7=0x11 (`jal` at 0xe8f4).
  Calls `illfpinst [0xf244]` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a6=0x13 (`jal` at 0xe93c).
  Calls `illfpinst [0xf244]` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a6=0x13 (`jal` at 0xe98c).
  Calls `fpload_d` via direct with a0=?, a1=?, a2=?, a3=?, a6=0x13 (`jal` at 0xe9a4).
  Calls `illfpinst [0xf244]` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a5=(a1 << 0xf) (`jal` at 0xe9d8).
  Calls `fpload_d` via direct with a0=?, a1=?, a2=?, a3=?, a5=(a1 << 0xf) (`jal` at 0xe9ec).
  Calls `fpload_d` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xea00).
  Calls `fpload_s` via direct with a0=?, a1=?, a2=?, a3=?, a6=0x13 (`jal` at 0xea48).
  Calls `illfpinst [0xf244]` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a4=0x1 (`jal` at 0xea94).
  Calls `illfpinst [0xf244]` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a5=(a1 << 0xf) (`jal` at 0xeac0).
  Calls `fpload_d` via direct with a0=?, a1=?, a2=?, a3=?, a4=0x1 (`jal` at 0xead4).
  Calls `illfpinst [0xf244]` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=0x4, a4=0x5 (`jal` at 0xeb2c).
  Calls `illfpinst [0xf244]` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0xeb40).
  Calls `fpload_s` via direct with a0=?, a1=?, a2=?, a3=?, a5=(a1 << 0xf) (`jal` at 0xeb54).
  Calls `fpload_s` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xeb68).
  Calls `illfpinst [0xf244]` via direct with a0=?, a1=a0 at entry (arg0), a2=0x21, a3=0x4, a4=0x5 (`jal` at 0xeb90).
  Calls `illfpinst [0xf244]` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0xec6c).
  Calls `illfpinst [0xf244]` via direct with a0=?, a1=a0 at entry (arg0), a2=(a1 << 0x19), a3=? (`jal` at 0xecc4).
  Calls `_cvtsd_l` via direct with a0=0x1, a1=?, a2=0x21, a3=0x4, a4=0x5 (`jal` at 0xed14).
  Calls `illfpinst [0xf244]` via direct with a0=?, a1=a0 at entry (arg0), a2=0x21, a3=0x4 (`jal` at 0xed44).
  Calls `fpload_s` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xed58).
  Calls `_cvtsd_w` via direct with a0=0x1, a1=?, a2=0x21, a3=0x4 (`jal` at 0xed68).
  Calls `illfpinst [0xf244]` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0xed7c).
  Calls `_cvtsd_l` via direct with a0=0x0, a1=?, a2=?, a3=0x4, a4=0x5 (`jal` at 0xed8c).
  Calls `illfpinst [0xf244]` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0xeda0).
  Calls `_comp_sd` via direct with a0=0x0, a1=?, a2=?, a3=? (`jal` at 0xedc0).
  Calls `_comp_sd` via direct with a0=0x1, a1=?, a2=?, a3=? (`jal` at 0xede8).
  Calls `_cvtsd_w` via direct with a0=0x0, a1=?, a2=?, a3=0x4 (`jal` at 0xf01c).
  At `beq` at 0xe82c (target 0xe840), taken when at(=[sym(force_checkfp)]) == 0; falls through when at(=[sym(force_checkfp)]) != 0.
  At `bne` at 0xe87c (target 0xe8a0), taken when a0(=[a0+288]:8) < t8(=[[[-0x3fe8]:8+792]:8+512]:8) (unsigned); falls through when a0(=[a0+288]:8) >= t8(=[[[-0x3fe8]:8+792]:8+512]:8) (unsigned).
  At `bne` at 0xe88c (target 0xe8a0), taken when a2(=[[[-0x3fe8]:8+792]:8+520]:8) < a0(=[a0+288]:8) (unsigned); falls through when a2(=[[[-0x3fe8]:8+792]:8+520]:8) >= a0(=[a0+288]:8) (unsigned).
  At `beq` at 0xe8e0 (target 0xe978), taken when v0(?) == a6(=0x13); falls through when v0(?) != a6(=0x13).
  At `beq` at 0xe8ec (target 0xe904), taken when v0(?) == a7(=0x11); falls through when v0(?) != a7(=0x11).
  At `beq` at 0xe90c (target 0xe980), taken when s7(?) == 0; falls through when s7(?) != 0.
  At `beq` at 0xe914 (target 0xea40), taken when s4(?) == 0; falls through when s4(?) != 0.
  At `beq` at 0xe91c (target 0xea44), taken when s4(?) == t8(=0x4); falls through when s4(?) != t8(=0x4).
  At `beq` at 0xe928 (target 0xe99c), taken when s4(?) == t9(=0x1); falls through when s4(?) != t9(=0x1).
  At `beq` at 0xe930 (target 0xe9a0), taken when s4(?) == ra(=0x5); falls through when s4(?) != ra(=0x5).
  At `bne` at 0xe978 (target 0xe914), taken when s7(?) != 0; falls through when s7(?) == 0.
  At `bgez` at 0xe984 (target 0xe914), taken when at(=(a1 << 0x14)) >= 0 (signed); falls through when at(=(a1 << 0x14)) < 0 (signed).
  At `beq` at 0xe9b0 (target 0xea58), taken when s5(=one of 0x0, 0x1) == 0; falls through when s5(=one of 0x0, 0x1) != 0.
  At `beq` at 0xe9b8 (target 0xeaa4), taken when s7(?) == 0; falls through when s7(?) != 0.
  At `beq` at 0xe9c0 (target 0xeb50), taken when s4(?) == 0; falls through when s4(?) != 0.
  At `beq` at 0xe9cc (target 0xe9e8), taken when s4(?) == a1(=0x1); falls through when s4(?) != a1(=0x1).
  At `beq` at 0xea2c (target 0xeb3c), taken when a0(?) >= 0x1a (unsigned); falls through when a0(?) < 0x1a (unsigned).
  At `bne` at 0xea5c (target 0xea74), taken when s5(?) < 0x4 (unsigned); falls through when s5(?) >= 0x4 (unsigned).
  At `bne` at 0xea64 (target 0xeaf4), taken when a2(?) != 0; falls through when a2(?) == 0.
  At `beq` at 0xea6c (target 0xeaf4), taken when a3(?) == 0; falls through when a3(?) != 0.
  At `beq` at 0xea74 (target 0xec64), taken when s7(?) == 0; falls through when s7(?) != 0.
  At `beq` at 0xea7c (target 0xed54), taken when s4(?) == 0; falls through when s4(?) != 0.
  At `beq` at 0xea88 (target 0xead0), taken when s4(?) == a4(=0x1); falls through when s4(?) != a4(=0x1).
  At `bltz` at 0xeaa4 (target 0xeac0), taken when a5(=(a1 << 0xf)) < 0 (signed); falls through when a5(=(a1 << 0xf)) >= 0 (signed).
  At `bltz` at 0xeab0 (target 0xeabc), taken when a6(=(a1 << 0xa)) < 0 (signed); falls through when a6(=(a1 << 0xa)) >= 0 (signed).
  At `bgez` at 0xeab8 (target 0xe9c0), taken when a7(=(a1 << 0x19)) >= 0 (signed); falls through when a7(=(a1 << 0x19)) < 0 (signed).
  At `bne` at 0xeae4 (target 0xeaf4), taken when s5(?) < 0x30 (unsigned); falls through when s5(?) >= 0x30 (unsigned).
  At `bne` at 0xeaec (target 0xeafc), taken when a2(?) != 0; falls through when a2(?) == 0.
  At `beq` at 0xeaf4 (target 0xecbc), taken when s7(?) == 0; falls through when s7(?) != 0.
  At `beq` at 0xeafc (target 0xec7c), taken when s4(?) == 0; falls through when s4(?) != 0.
  At `beq` at 0xeb08 (target 0xecd4), taken when v0(=0x1) == s4(?); falls through when v0(=0x1) != s4(?).
  At `beq` at 0xeb14 (target 0xed2c), taken when s4(?) == a3(=0x4); falls through when s4(?) != a3(=0x4).
  At `beq` at 0xeb20 (target 0xeb78), taken when s4(?) == a4(=0x5); falls through when s4(?) != a4(=0x5).
  At `beq` at 0xeb78 (target 0xed8c), taken when s5(?) == a1(=0x20); falls through when s5(?) != a1(=0x20).
  At `beq` at 0xeb84 (target 0xed14), taken when s5(?) == a2(=0x21); falls through when s5(?) != a2(=0x21).
  At `beq` at 0xebb0 (target 0xebcc), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xebd0 (target 0xe948), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xebe4 (target 0xebcc), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xebfc (target 0xebcc), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xec14 (target 0xebcc), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xec2c (target 0xebcc), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xec44 (target 0xebcc), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xec5c (target 0xebcc), taken when condition not analyzed; falls through when condition not analyzed.
  At `bgez` at 0xec64 (target 0xea7c), taken when a1(=(a1 << 0xf)) >= 0 (signed); falls through when a1(=(a1 << 0xf)) < 0 (signed).
  At `bne` at 0xec7c (target 0xec94), taken when a2(?) != 0; falls through when a2(?) == 0.
  At `bne` at 0xec88 (target 0xedb0), taken when s5(?) < 0x40 (unsigned); falls through when s5(?) >= 0x40 (unsigned).
  At `beq` at 0xeca8 (target 0xed78), taken when a0(?) >= 0x26 (unsigned); falls through when a0(?) < 0x26 (unsigned).
  At `bgez` at 0xecbc (target 0xeafc), taken when a2(=(a1 << 0x19)) >= 0 (signed); falls through when a2(=(a1 << 0x19)) < 0 (signed).
  At `bne` at 0xecd4 (target 0xecec), taken when a3(?) != 0; falls through when a3(?) == 0.
  At `bne` at 0xece0 (target 0xedd8), taken when s5(?) < 0x40 (unsigned); falls through when s5(?) >= 0x40 (unsigned).
  At `beq` at 0xed00 (target 0xed9c), taken when a2(?) >= 0x26 (unsigned); falls through when a2(?) < 0x26 (unsigned).
  At `beq` at 0xed2c (target 0xf01c), taken when s5(?) == a1(=0x20); falls through when s5(?) != a1(=0x20).
  At `beq` at 0xed38 (target 0xed68), taken when s5(?) == a2(=0x21); falls through when s5(?) != a2(=0x21).
  At `beq` at 0xee10 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xee20 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xee34 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xee44 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xee58 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xee70 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xee90 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xeeb0 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xeed0 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xeeec (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xef0c (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xef2c (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xef4c (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xef68 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xef7c (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xefa4 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xefb8 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xefcc (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xefe4 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xeffc (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf014 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf03c (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf04c (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf060 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf070 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf084 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf0a0 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf0c0 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf0e0 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf0fc (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf118 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf138 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf158 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf174 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf190 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf1a4 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf1cc (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf1e0 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf1f4 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf20c (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf224 (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0xf23c (target 0xed20), taken when condition not analyzed; falls through when condition not analyzed.

- `illfpinst` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf244 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf244-0xf27c (56 bytes).
  Calls `softfp_psignal` via direct with a0=0x4, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3) (`jal` at 0xf258).
  Calls `checkfp` via direct with a0=[-0x3fe8]:8, a1=0x0, a2=?, a3=? (`jal` at 0xf264).
  Returns v0 = 0x1 (`jr` at 0xf274).

- `_rsqrt_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf27c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf27c-0xf5c0 (836 bytes).
  Stores 4 bytes from a0 to [-0x3fe8]:8 +0x53c  (`sw` at 0xf2e8).
  Stores 4 bytes from t0 to [-0x3fe8]:8 +0x53c  (`sw` at 0xf458).
  Stores 4 bytes from a4 to [-0x3fe8]:8 +0x53c  (`sw` at 0xf4c0).
  Calls `breakout_and_test_sd` via direct with a0=a0 at entry (arg0), a1=sp-8, a2=sp-96, a3=sp-92, a4=sp-88 (`jal` at 0xf2a0).
  Calls `post_sig` via direct with a0=0x8, a1=sym(QUIETNAN), a2=0x10040, a3=? (`jal` at 0xf300).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xf308).
  Calls `_div_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xf344).
  Calls `post_sig` via direct with a0=0x8, a1=sym(INFINITY), a2=?, a3=? (`jal` at 0xf470).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xf478).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=? (`jal` at 0xf494).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xf49c).
  Calls `post_sig` via direct with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=?, a4=([[-0x3fe8]:8+1340] | 0x10040), a5=[-0x3fe8]:8, a6=0x10040 (`jal` at 0xf4d8).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xf4e0).
  Calls `(unknown callee)` via register with a0=sp-88, a1=?, a2=((a0 << 0x3) + sym(IMP_1BIT)), a3=?, a4=0x1, a7=[((a0 << 0x3) + sym(renorm))]:8 (`jalr` at 0xf504).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=? (`jal` at 0xf53c).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xf544).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?, a4=([[-0x3fe8]:8+1340] | 0x10040), a5=[-0x3fe8]:8, a6=0x10040 (`jal` at 0xf560).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xf568).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))], a4=(a0 << 0x3) (`jal` at 0xf59c).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xf5a4).
  At `bne` at 0xf2a8 (target 0xf34c), taken when v0(=ret(breakout_and_test_sd)) != 0; falls through when v0(=ret(breakout_and_test_sd)) == 0.
  At `bne` at 0xf2c4 (target 0xf360), taken when at(=[((a0 << 0x2) + sym(EXP_INF))]) != t2(?); falls through when at(=[((a0 << 0x2) + sym(EXP_INF))]) == t2(?).
  At `beq` at 0xf2cc (target 0xf53c), taken when v0(?) == 0; falls through when v0(?) != 0.
  At `beq` at 0xf2f8 (target 0xf488), taken when (v1(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (v1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  At `beq` at 0xf360 (target 0xf440), taken when t2(?) == 0; falls through when t2(?) != 0.
  At `beq` at 0xf36c (target 0xf4ac), taken when a3(?) == a4(=0x1); falls through when a3(?) != a4(=0x1).
  At `beq` at 0xf38c (target 0xf4f8), taken when t2(?) == 0; falls through when t2(?) != 0.
  At `bltz` at 0xf3e8 (target 0xf4f0), taken when t0(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) < 0 (signed); falls through when t0(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) >= 0 (signed).
  At `bne` at 0xf418 (target 0xf318), taken when t0(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) < a2(?) (signed); falls through when t0(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) >= a2(?) (signed).
  At `bgez` at 0xf42c (target 0xf3fc), taken when a6(?) >= 0 (signed); falls through when a6(?) < 0 (signed).
  At `bne` at 0xf444 (target 0xf368), taken when a6(?) != 0; falls through when a6(?) == 0.
  At `beq` at 0xf468 (target 0xf578), taken when (a7(=[[-0x3fe8]:8+1340]) & 0x400) == 0; falls through when (a7(=[[-0x3fe8]:8+1340]) & 0x400) != 0.
  At `beq` at 0xf4d0 (target 0xf554), taken when (a3(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (a3(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  Returns v0 = ? (`jr` at 0xf358).

- `_cvtsd_l` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf5c0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf5c0-0xf71c (348 bytes).
  Calls `(unknown callee)` via register with a0=one of 0x0, 0x1, a1=?, a2=?, a3=?, a4=[((a0 << 0x3) + sym(round))]:8 (`jalr` at 0xf654).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[((a0 << 0x3) + sym(MTWOP63))]:8, a2=a1 at entry (arg1), a3=-0x1, a6=sym(.data)+7536 (`jal` at 0xf6b4).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xf6bc).
  Calls `renorm_d` via direct with a0=sp-8, a1=a1 at entry (arg1), a2=?, a3=-0x1, a6=sym(.data)+7536 (`jal` at 0xf6d0).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=-0x1, a6=sym(.data)+7536 (`jal` at 0xf704).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xf70c).
  At `beq` at 0xf5d8 (target 0xf700), taken when a1 == 0; falls through when a1 != 0.
  At `beq` at 0xf5e8 (target 0xf6a8), taken when a1 == at(=0x8000000000000000); falls through when a1 != at(=0x8000000000000000).
  At `bltz` at 0xf5f0 (target 0xf670), taken when a1 < 0 (signed); falls through when a1 >= 0 (signed).
  At `beq` at 0xf610 (target 0xf6cc), taken when (a2(?) & v0(=0xffe0000000000000)) == 0; falls through when (a2(?) & v0(=0xffe0000000000000)) != 0.
  At `beq` at 0xf624 (target 0xf67c), taken when (a2(?) & v1(=0xf000000000000000)) == 0; falls through when (a2(?) & v1(=0xf000000000000000)) != 0.
  At `beq` at 0xf688 (target 0xf6ec), taken when (a2(?) & a5(=0xff00000000000000)) == 0; falls through when (a2(?) & a5(=0xff00000000000000)) != 0.
  Returns v0 = ? (`jr` at 0xf668).

- `fpstore_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf71c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf71c-0xf768 (76 bytes).
  Calls `fpstore_d` via direct with a0=a1 at entry (arg1), a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=a3 at entry (arg3), a4=a1 at entry (arg1), a5=[[-0x3fe8]:8+1354]:1 (`jal` at 0xf740).
  Calls `fpstore_s` via direct with a0=a1 at entry (arg1), a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=a3 at entry (arg3), a4=a1 at entry (arg1), a5=[[-0x3fe8]:8+1354]:1 (`jal` at 0xf758).
  At `beq` at 0xf734 (target 0xf754), taken when a0 == 0; falls through when a0 != 0.
  Returns v0 = ? (`jr` at 0xf74c).

- `fpstore_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf768 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf768-0xf848 (224 bytes).
  Stores 8 bytes from s1 to ((a1 << 0x3) + [[-0x3fe8]:8+992]:8) +0x28  (`sd` at 0xf7c0).
  Stores 8 bytes from a4 to ((a1 << 0x3) + [[-0x3fe8]:8+992]:8) +0x28 (`sd` at 0xf828).
  Stores 8 bytes from a2 to ([[-0x3fe8]:8+992]:8 + (a1 << 0x3)) +0x30 (`sd` at 0xf844).
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xf788).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0xf7a4).
  Calls `getsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xf7e0).
  Calls `setsr` via direct with a0=(ret(getsr) | one of 0x20000000, 0x24000000), a1=0x20000000, a2=?, a3=? (`jal` at 0xf7f4).
  Calls `fpunit_fpstore_d` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jal` at 0xf804).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0xf80c).
  At `beq` at 0xf79c (target 0xf7e0), taken when at(=[-0x3fe8]:8) == v0(=[-0x3ba0]:8); falls through when at(=[-0x3fe8]:8) != v0(=[-0x3ba0]:8).
  At `beq` at 0xf7b8 (target 0xf81c), taken when s0(=a2) == 0; falls through when s0(=a2) != 0.
  Returns v0 = ? (`jr` at 0xf7d8).

- `fpstore_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf848 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf848-0xf8f0 (168 bytes).
  Stores 8 bytes from s0 to ([[-0x3fe8]:8+992]:8 + (a1 << 0x3)) +0x28  (`sd` at 0xf8d4).
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xf864).
  Calls `getsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xf880).
  Calls `setsr` via direct with a0=(ret(getsr) | one of 0x20000000, 0x24000000), a1=a2 at entry (arg2), a2=0x20000000, a3=? (`jal` at 0xf898).
  Calls `fpunit_fpstore_s` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0xf8a4).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0xf8ac).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0xf8bc).
  At `bne` at 0xf878 (target 0xf8bc), taken when at(=[-0x3fe8]:8) != v0(=[-0x3ba0]:8); falls through when at(=[-0x3fe8]:8) == v0(=[-0x3ba0]:8).
  Returns v0 = ret(splx) (`jr` at 0xf8e8).

- `fpload_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf8f0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf8f0-0xf9bc (204 bytes).
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xf908).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0xf924).
  Calls `getsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xf960).
  Calls `setsr` via direct with a0=(ret(getsr) | one of 0x20000000, 0x24000000), a1=0x20000000, a2=?, a3=? (`jal` at 0xf974).
  Calls `fpunit_fpload_d` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0xf980).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0xf98c).
  At `beq` at 0xf91c (target 0xf960), taken when at(=[-0x3fe8]:8) == v0(=[-0x3ba0]:8); falls through when at(=[-0x3fe8]:8) != v0(=[-0x3ba0]:8).
  At `beq` at 0xf93c (target 0xf99c), taken when s0(=a1) == 0; falls through when s0(=a1) != 0.
  Returns v0 = ? (`jr` at 0xf958).

- `fpload_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf9bc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf9bc-0xfa64 (168 bytes).
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xf9d0).
  Calls `getsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xf9ec).
  Calls `setsr` via direct with a0=(ret(getsr) | one of 0x20000000, 0x24000000), a1=a1 at entry (arg1), a2=0x20000000, a3=? (`jal` at 0xfa04).
  Calls `fpunit_fpload_s` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xfa0c).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0xfa18).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0xfa28).
  At `bne` at 0xf9e4 (target 0xfa28), taken when at(=[-0x3fe8]:8) != v0(=[-0x3ba0]:8); falls through when at(=[-0x3fe8]:8) == v0(=[-0x3ba0]:8).
  Returns v0 = ? (`jr` at 0xfa5c).

- `store_fpcsr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfa64 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfa64-0xfb18 (180 bytes).
  Stores 4 bytes from s0 to [[-0x3fe8]:8+992]:8 +0x130 (`sw` at 0xfaa4).
  Calls `splhi` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[-0x3fe8]:8 (`jal` at 0xfa84).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xfaac).
  Calls `getsr` via direct with a0=?, a1=[-0x3ba0]:8, a2=?, a3=[-0x3fe8]:8 (`jal` at 0xfacc).
  Calls `setsr` via direct with a0=(ret(getsr) | 0x20000000), a1=?, a2=?, a3=? (`jal` at 0xfad8).
  Calls `set_fpc_csr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xfae0).
  At `beq` at 0xfa7c (target 0xfaf0), taken when (at(=[[-0x3fe8]:8+1353]:1) & 0x10) == 0; falls through when (at(=[[-0x3fe8]:8+1353]:1) & 0x10) != 0.
  At `beq` at 0xfa98 (target 0xfac0), taken when (v1(=[[-0x3fe8]:8+1353]:1) & 0x10) == 0; falls through when (v1(=[[-0x3fe8]:8+1353]:1) & 0x10) != 0.
  At `bne` at 0xfac4 (target 0xfaa0), taken when a1(=[-0x3ba0]:8) != a3(=[-0x3fe8]:8); falls through when a1(=[-0x3ba0]:8) == a3(=[-0x3fe8]:8).
  At `beq` at 0xfafc (target 0xfa84), taken when a4(=[[-0x3fe8]:8+1336]) == 0; falls through when a4(=[[-0x3fe8]:8+1336]) != 0.
  Returns v0 = ret(splx) (`jr` at 0xfab8).

- `load_fpcsr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfb18 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfb18-0xfb88 (112 bytes).
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xfb24).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0xfb44).
  Calls `getsr` via direct with a0=[-0x3fe8]:8, a1=?, a2=?, a3=? (`jal` at 0xfb64).
  Calls `setsr` via direct with a0=(ret(getsr) | 0x20000000), a1=?, a2=?, a3=? (`jal` at 0xfb70).
  Calls `get_fpc_csr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xfb78).
  At `beq` at 0xfb34 (target 0xfb64), taken when at(=[-0x3ba0]:8) == a0(=[-0x3fe8]:8); falls through when at(=[-0x3ba0]:8) != a0(=[-0x3fe8]:8).
  Returns v0 = ? (`jr` at 0xfb5c).

- `post_sig` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfb88 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfb88-0xfbd8 (80 bytes).
  Stores 1 bytes from v0 to [-0x3fe8]:8 +0x549  (`sb` at 0xfbc0).
  Calls `softfp_psignal` via direct with a0=a0 at entry (arg0), a1=[[-0x3fe8]:8+1340], a2=[[-0x3fe8]:8+1328]:8, a3=a3 at entry (arg3), a4=[-0x3fe8]:8 (`jal` at 0xfbac).
  Calls `checkfp` via direct with a0=[-0x3fe8]:8, a1=0x0, a2=?, a3=? (`jal` at 0xfbc8).
  At `beq` at 0xfb98 (target 0xfba8), taken when (at(=[[-0x3fe8]:8+1353]:1) & 0x10) == 0; falls through when (at(=[[-0x3fe8]:8+1353]:1) & 0x10) != 0.
  Returns v0 = ? (`jr` at 0xfba0).

- `fp_init_glob` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfbd8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfbd8-0xfc20 (72 bytes).
  Stores 8 bytes from a0 to [-0x3fe8]:8 +0x530  (`sd` at 0xfbdc).
  Stores 4 bytes from a2 to [-0x3fe8]:8 +0x53c  (`sw` at 0xfbe4).
  Stores 4 bytes from a3 to [-0x3fe8]:8 +0x538  (`sw` at 0xfbec).
  Stores 1 bytes from v1 to [-0x3fe8]:8 +0x548 (`sb` at 0xfbfc).
  Stores 1 bytes from v0 to [-0x3fe8]:8 +0x549  (`sb` at 0xfc10).
  Stores 1 bytes from a5 to [-0x3fe8]:8 +0x54a  (`sb` at 0xfc1c).
  Returns v0 = ((a4 | one of 0x0, 0x20) | 0x4) (`jr` at 0xfc18).

- `breakout_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfc20 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfc20-0xfd00 (224 bytes).
  Stores 4 bytes from t2 to a3 (arg3 at entry) +0x0 (`sw` at 0xfc44).
  Stores 4 bytes from t1 to a3 (arg3 at entry) +0x0 (`sw` at 0xfc58).
  Stores 4 bytes from t2 to a2 (arg2 at entry) +0x0 (`sw` at 0xfc78).
  Stores 8 bytes from a6 to a4 (arg4 at entry) +0x0 (`sd` at 0xfc88).
  Stores 8 bytes from zero to a4 (arg4 at entry) +0x0  (`sd` at 0xfcb4).
  Stores 8 bytes from v0 to a1 (arg1 at entry) +0x0 (`sd` at 0xfcc4).
  Stores 4 bytes from at to [-0x3fe8]:8 +0x53c  (`sw` at 0xfcd4).
  Calls `post_sig` via direct with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=((a0 << 0x2) + sym(SIGN_SHIFT)) (`jal` at 0xfcec).
  At `beq` at 0xfc98 (target 0xfcf8), taken when (at(=[[-0x3fe8]:8+1353]:1) & 0x1) == 0; falls through when (at(=[[-0x3fe8]:8+1353]:1) & 0x1) != 0.
  At `bne` at 0xfca4 (target 0xfcf8), taken when t8(=[a3]) != 0; falls through when t8(=[a3]) == 0.
  At `beq` at 0xfcac (target 0xfcf8), taken when a6(?) == 0; falls through when a6(?) != 0.
  At `beq` at 0xfce4 (target 0xfcf8), taken when (t9(=[[-0x3fe8]:8+1340]) & 0x80) == 0; falls through when (t9(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  Returns v0 = ? (`jr` at 0xfcf8).

- `screen_nan_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfd00 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfd00-0xfdc8 (200 bytes).
  Stores 4 bytes from a2 to [-0x3fe8]:8 +0x53c  (`sw` at 0xfd48).
  Calls `post_sig` via direct with a0=0x8, a1=?, a2=([[-0x3fe8]:8+1340] | 0x10040), a3=[-0x3fe8]:8, a4=0x10040, a6=sym(SNANBIT_MASK) (`jal` at 0xfd60).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xfd68).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x10040, a6=sym(SNANBIT_MASK) (`jal` at 0xfd94).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xfd9c).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[((a0 << 0x3) + sym(QUIETNAN))]:8, a2=([[-0x3fe8]:8+1340] | 0x10040), a3=[-0x3fe8]:8, a4=0x10040, a6=sym(SNANBIT_MASK) (`jal` at 0xfdb8).
  At `bne` at 0xfd20 (target 0xfd80), taken when at(=[(sym(EXP_NAN) + (a0 << 0x2))]) != a2; falls through when at(=[(sym(EXP_NAN) + (a0 << 0x2))]) == a2.
  At `beq` at 0xfd34 (target 0xfd88), taken when (v1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & a3) == 0; falls through when (v1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & a3) != 0.
  At `beq` at 0xfd58 (target 0xfdb0), taken when (a1(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  At `beq` at 0xfd8c (target 0xfd78), taken when a3 == 0; falls through when a3 != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xfd78).

- `breakout_and_test_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfdc8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfdc8-0xfe28 (96 bytes).
  Calls `breakout_sd` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xfde0).
  Calls `screen_nan_sd` via direct with a0=a0 at entry (arg0), a1=[a1]:8, a2=[a3], a3=[a4]:8 (`jal` at 0xfe00).
  At `beq` at 0xfe0c (target 0xfe20), taken when v0(=ret(screen_nan_sd)) == 0; falls through when v0(=ret(screen_nan_sd)) != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xfe18).

- `breakout_and_test2_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfe28 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfe28-0xffc0 (408 bytes).
  Stores 4 bytes from t2 to [-0x3fe8]:8 +0x53c  (`sw` at 0xfefc).
  Calls `breakout_sd` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xfe5c).
  Calls `breakout_sd` via direct with a0=a0 at entry (arg0), a1=a5 at entry (arg5), a2=a6 at entry (arg6), a3=a7 at entry (arg7) (`jal` at 0xfe74).
  Calls `post_sig` via direct with a0=0x8, a1=sym(QUIETNAN), a2=(a0 << 0x3), a3=?, a4=sym(SNANBIT_MASK) (`jal` at 0xff14).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xff1c).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[a1]:8, a2=(a0 << 0x3), a3=[a7], a4=sym(SNANBIT_MASK) (`jal` at 0xff5c).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xff64).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[a5]:8, a2=?, a3=[a7], a4=sym(SNANBIT_MASK) (`jal` at 0xff88).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xff90).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[((a0 << 0x3) + sym(QUIETNAN))]:8, a2=(a0 << 0x3), a3=?, a4=sym(SNANBIT_MASK) (`jal` at 0xffb0).
  At `bne` at 0xfeb0 (target 0xfecc), taken when a1(=[a3]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]); falls through when a1(=[a3]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  At `bne` at 0xfec4 (target 0xfef0), taken when (a5(=[a4]:8) & a6(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0; falls through when (a5(=[a4]:8) & a6(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0.
  At `bne` at 0xfed0 (target 0xff44), taken when a3(=[a7]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]); falls through when a3(=[a7]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  At `beq` at 0xfee8 (target 0xff44), taken when (a7(?) & t0(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0; falls through when (a7(?) & t0(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0.
  At `beq` at 0xff0c (target 0xffa8), taken when (t1(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (t1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  At `bne` at 0xff44 (target 0xff74), taken when a1(=[a3]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]); falls through when a1(=[a3]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  At `beq` at 0xff50 (target 0xff74), taken when t9(=[a4]:8) == 0; falls through when t9(=[a4]:8) != 0.
  At `bne` at 0xff74 (target 0xffa0), taken when a3(=[a7]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]); falls through when a3(=[a7]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  At `beq` at 0xff80 (target 0xffa0), taken when a2(?) == 0; falls through when a2(?) != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xff3c).

- `breakout_and_test3_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xffc0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xffc0-0x101d0 (528 bytes).
  Stores 4 bytes from a5 to [-0x3fe8]:8 +0x53c  (`sw` at 0x10084).
  Calls `breakout_sd` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xfff4).
  Calls `breakout_sd` via direct with a0=a0 at entry (arg0), a1=a5 at entry (arg5), a2=a6 at entry (arg6), a3=a7 at entry (arg7) (`jal` at 0x1000c).
  Calls `breakout_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x10028).
  Calls `post_sig` via direct with a0=0x8, a1=sym(QUIETNAN), a2=(a0 << 0x3), a3=?, a5=([[-0x3fe8]:8+1340] | 0x10040), a6=[-0x3fe8]:8, a7=0x10040 (`jal` at 0x1009c).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x100a4).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[a1]:8, a2=(a0 << 0x3), a3=?, a5=[a7], a6=((a0 << 0x3) + sym(SNANBIT_MASK)) (`jal` at 0x1013c).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10144).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[a5]:8, a2=?, a3=?, a5=[a7], a6=((a0 << 0x3) + sym(SNANBIT_MASK)) (`jal` at 0x10168).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10170).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a7], a6=((a0 << 0x3) + sym(SNANBIT_MASK)) (`jal` at 0x10198).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x101a0).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[((a0 << 0x3) + sym(QUIETNAN))]:8, a2=(a0 << 0x3), a3=?, a5=([[-0x3fe8]:8+1340] | 0x10040), a6=[-0x3fe8]:8, a7=0x10040 (`jal` at 0x101c0).
  At `bne` at 0x10050 (target 0x100d0), taken when a0(=[a3]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]); falls through when a0(=[a3]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  At `beq` at 0x10068 (target 0x100d0), taken when (a1(=[a4]:8) & a3(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0; falls through when (a1(=[a4]:8) & a3(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0.
  At `beq` at 0x10094 (target 0x101b8), taken when (a4(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (a4(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  At `bne` at 0x100dc (target 0x100fc), taken when a5(=[a7]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]); falls through when a5(=[a7]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  At `bne` at 0x100f4 (target 0x10070), taken when (t0(?) & t1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0; falls through when (t0(?) & t1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0.
  At `bne` at 0x10108 (target 0x10124), taken when a7(?) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]); falls through when a7(?) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  At `bne` at 0x1011c (target 0x10070), taken when (t0(?) & t1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0; falls through when (t0(?) & t1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0.
  At `bne` at 0x10124 (target 0x10154), taken when a0(=[a3]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]); falls through when a0(=[a3]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  At `beq` at 0x10130 (target 0x10154), taken when t1(=[a4]:8) == 0; falls through when t1(=[a4]:8) != 0.
  At `bne` at 0x10154 (target 0x10180), taken when a5(=[a7]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]); falls through when a5(=[a7]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  At `beq` at 0x10160 (target 0x10180), taken when a2(?) == 0; falls through when a2(?) != 0.
  At `bne` at 0x10180 (target 0x101b0), taken when a7(?) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]); falls through when a7(?) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  At `beq` at 0x1018c (target 0x101b0), taken when a3(?) == 0; falls through when a3(?) != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x100c8).

- `_cvtsd_w` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x101d0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x101d0-0x10274 (164 bytes).
  Calls `renorm_d` via direct with a0=sp-8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jal` at 0x10204).
  Calls `(unknown callee)` via register with a0=one of 0x0, 0x1, a1=?, a2=?, a3=0x0, a4=[(sym(round) + (a0 << 0x3))]:8, a5=(a0 << 0x3) (`jalr` at 0x1022c).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a1 at entry (arg1) (`jal` at 0x1025c).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10264).
  At `beq` at 0x101e8 (target 0x10258), taken when a1 == 0; falls through when a1 != 0.
  At `bltz` at 0x101f8 (target 0x10248), taken when a3(?) < 0 (signed); falls through when a3(?) >= 0 (signed).
  Returns v0 = ? (`jr` at 0x10240).

- `_nmsub_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10274 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10274-0x10338 (196 bytes).
  Stores 1 bytes from t0 to [-0x3fe8]:8 +0x549 (`sb` at 0x102a8).
  Calls `breakout_and_test3_sd` via direct with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76 (`jal` at 0x102e0).
  Calls `madd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x10328).
  At `beq` at 0x102e8 (target 0x102fc), taken when v0(=ret(breakout_and_test3_sd)) == 0; falls through when v0(=ret(breakout_and_test3_sd)) != 0.
  Returns v0 = ? (`jr` at 0x102f4).
- `_cvtw_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10338 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10338-0x104f4 (444 bytes).
  Stores 4 bytes from a6 to [-0x3fe8]:8 +0x53c  (`sw` at 0x103a4).
  Calls `breakout_sd` via direct with a0=a0 at entry (arg0), a1=sp-8, a2=sp-64, a3=sp-60, a4=sp-56 (`jal` at 0x1035c).
  Calls `post_sig` via direct with a0=0x8, a1=?, a2=(a0 << 0x3), a3=[((a0 << 0x2) + sym(EXP_BIAS))], a4=[-0x3fe8]:8, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8 (`jal` at 0x103bc).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x103c4).
  Calls `round_w` via direct with a0=?, a1=?, a2=?, a3=0x34 (`jal` at 0x10438).
  Calls `(unknown callee)` via register with a0=sp-56, a1=?, a2=(a0 << 0x3), a3=[(sym(renorm) + (a0 << 0x3))]:8, a5=(a0 << 0x2), a6=(sym(IMP_1BIT) + (a0 << 0x3)), a7=sym(IMP_1BIT) (`jalr` at 0x10464).
  Calls `fpstore_s` via direct with a0=0x7fffffff, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[((a0 << 0x2) + sym(EXP_BIAS))], a4=[-0x3fe8]:8, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8 (`jal` at 0x104a4).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x104ac).
  Calls `fpstore_s` via direct with a0=0x0, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[((a0 << 0x2) + sym(EXP_BIAS))], a5=(a0 << 0x2), a6=(sym(IMP_1BIT) + (a0 << 0x3)), a7=sym(IMP_1BIT) (`jal` at 0x104dc).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x104e4).
  At `bne` at 0x10390 (target 0x103d4), taken when a4(?) < at(=[((a0 << 0x2) + sym(EXP_BIAS))]+32) (signed); falls through when a4(?) >= at(=[((a0 << 0x2) + sym(EXP_BIAS))]+32) (signed).
  At `beq` at 0x103b4 (target 0x10498), taken when (a5(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (a5(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  At `beq` at 0x103d8 (target 0x10450), taken when a4(?) == 0; falls through when a4(?) != 0.
  At `beq` at 0x103f0 (target 0x10488), taken when s0(=a0) == 0; falls through when s0(=a0) != 0.
  At `beq` at 0x1040c (target 0x1041c), taken when a4(?) >= -0x1 (signed); falls through when a4(?) < -0x1 (signed).
  At `beq` at 0x10424 (target 0x104bc), taken when a4(?) == a6(=-0x1); falls through when a4(?) != a6(=-0x1).
  At `beq` at 0x10450 (target 0x104cc), taken when a1(?) == 0; falls through when a1(?) != 0.
  At `bne` at 0x10480 (target 0x103f8), taken when s0(=a0) != 0; falls through when s0(=a0) == 0.
  Returns v0 = ? (`jr` at 0x10448).

- `_cvtl_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x104f4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x104f4-0x10714 (544 bytes).
  Stores 4 bytes from a6 to [-0x3fe8]:8 +0x53c  (`sw` at 0x10578).
  Calls `breakout_sd` via direct with a0=a0 at entry (arg0), a1=sp-8, a2=sp-64, a3=sp-60, a4=sp-56 (`jal` at 0x10518).
  Calls `post_sig` via direct with a0=0x8, a1=?, a2=((a0 << 0x3) + sym(IMP_1BIT)), a3=[((a0 << 0x2) + sym(EXP_BIAS))], a4=[-0x3fe8]:8, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8 (`jal` at 0x10590).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10598).
  Calls `round_l` via direct with a0=?, a1=?, a2=?, a3=0x34 (`jal` at 0x105e8).
  Calls `(unknown callee)` via register with a0=sp-56, a1=?, a2=((a0 << 0x3) + sym(IMP_1BIT)), a3=[((a0 << 0x3) + sym(renorm))]:8, a5=(a0 << 0x3), a6=(a0 << 0x2), a7=sym(IMP_1BIT) (`jalr` at 0x1063c).
  Calls `fpstore_d` via direct with a0=0x8000000000000000, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a5=(a0 << 0x3), a7=sym(IMP_1BIT) (`jal` at 0x106a0).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x106a8).
  Calls `fpstore_d` via direct with a0=0x7fffffffffffffff, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[((a0 << 0x2) + sym(EXP_BIAS))], a4=[-0x3fe8]:8, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8 (`jal` at 0x106c4).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x106cc).
  Calls `fpstore_d` via direct with a0=0x0, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[((a0 << 0x2) + sym(EXP_BIAS))], a5=(a0 << 0x3), a6=(a0 << 0x2), a7=sym(IMP_1BIT) (`jal` at 0x106fc).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10704).
  At `beq` at 0x10538 (target 0x1068c), taken when at(=[((a0 << 0x3) + sym(MTWOP63))]:8) == v0(=a1); falls through when at(=[((a0 << 0x3) + sym(MTWOP63))]:8) != v0(=a1).
  At `bne` at 0x1055c (target 0x105a8), taken when a4(?) < v0(=[((a0 << 0x2) + sym(EXP_BIAS))]+63) (signed); falls through when a4(?) >= v0(=[((a0 << 0x2) + sym(EXP_BIAS))]+63) (signed).
  At `beq` at 0x10588 (target 0x106b8), taken when (a5(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (a5(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  At `beq` at 0x105a8 (target 0x10628), taken when a4(?) == 0; falls through when a4(?) != 0.
  At `beq` at 0x105c0 (target 0x10660), taken when s0(=a0) == 0; falls through when s0(=a0) != 0.
  At `beq` at 0x105dc (target 0x10600), taken when a4(?) >= -0x1 (signed); falls through when a4(?) < -0x1 (signed).
  At `beq` at 0x1060c (target 0x106dc), taken when a4(?) == a6(=-0x1); falls through when a4(?) != a6(=-0x1).
  At `beq` at 0x10614 (target 0x10670), taken when a7(?) == 0; falls through when a7(?) != 0.
  At `beq` at 0x10628 (target 0x106ec), taken when a1(?) == 0; falls through when a1(?) != 0.
  At `bne` at 0x10658 (target 0x105c8), taken when s0(=a0) != 0; falls through when s0(=a0) == 0.
  At `beq` at 0x10670 (target 0x105e8), taken when a4(?) == a3(=0x34); falls through when a4(?) != a3(=0x34).
  Returns v0 = ? (`jr` at 0x105f8).

- `_comp_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10714 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10714-0x10954 (576 bytes).
  7 such stores of 4 bytes through a6 ([-0x3fe8]:8) to [-0x3fe8]:8 +0x53c, including `sw` at 0x107e4, 0x108c4, 0x108f4.
  Stores 4 bytes from t2 to [-0x3fe8]:8 +0x53c  (`sw` at 0x10848).
  Calls `post_sig` via direct with a0=0x8, a1=sym(SNANBIT_MASK), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[((a0 << 0x2) + sym(EXP_NAN))] (`jal` at 0x10860).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10868).
  Calls `store_fpcsr` via direct with a0=[[-0x3fe8]:8+1340], a1=?, a2=?, a3=a3 at entry (arg3), a6=[-0x3fe8]:8 (`jal` at 0x108c8).
  At `beq` at 0x10788 (target 0x10794), taken when a4 == 0; falls through when a4 != 0.
  At `bne` at 0x107a4 (target 0x107b4), taken when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) != t0(?); falls through when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) == t0(?).
  At `bne` at 0x107ac (target 0x107cc), taken when t2(?) != 0; falls through when t2(?) == 0.
  At `bne` at 0x107b8 (target 0x10878), taken when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) != t1(?); falls through when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) == t1(?).
  At `beq` at 0x107c0 (target 0x10878), taken when t8(?) == 0; falls through when t8(?) != 0.
  At `beq` at 0x107d8 (target 0x108f8), taken when (a3 & 0x1) == 0; falls through when (a3 & 0x1) != 0.
  At `bne` at 0x107f4 (target 0x10810), taken when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) != t0(?); falls through when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) == t0(?).
  At `bne` at 0x10808 (target 0x10834), taken when (a7(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & t2(?)) != 0; falls through when (a7(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & t2(?)) == 0.
  At `bne` at 0x10810 (target 0x1082c), taken when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) != t1(?); falls through when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) == t1(?).
  At `bne` at 0x10824 (target 0x10834), taken when (t0(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & t8(?)) != 0; falls through when (t0(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & t8(?)) == 0.
  At `beq` at 0x1082c (target 0x10868), taken when a0(?) == 0; falls through when a0(?) != 0.
  At `beq` at 0x10858 (target 0x10868), taken when (t1(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (t1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  At `beq` at 0x1087c (target 0x10908), taken when a0 == 0; falls through when a0 != 0.
  At `beq` at 0x10884 (target 0x10914), taken when t9(?) == 0; falls through when t9(?) != 0.
  At `beq` at 0x10890 (target 0x108a8), taken when a5(?) == 0; falls through when a5(?) != 0.
  At `beq` at 0x108b0 (target 0x108dc), taken when t1(?) == 0; falls through when t1(?) != 0.
  At `beq` at 0x108bc (target 0x10938), taken when (a3 & 0x4) == 0; falls through when (a3 & 0x4) != 0.
  At `bne` at 0x108dc (target 0x10928), taken when a1(?) != a2(?); falls through when a1(?) == a2(?).
  At `beq` at 0x108e8 (target 0x10948), taken when (a3 & 0x2) == 0; falls through when (a3 & 0x2) != 0.
  At `bne` at 0x1090c (target 0x10888), taken when t9(?) != 0; falls through when t9(?) == 0.
  At `bne` at 0x10918 (target 0x1089c), taken when ra(?) != 0; falls through when ra(?) == 0.
  Returns v0 = ret(store_fpcsr) (`jr` at 0x108d4).

- `_nmadd_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10954 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10954-0x10a1c (200 bytes).
  Stores 1 bytes from t0 to [-0x3fe8]:8 +0x549 (`sb` at 0x10988).
  Calls `breakout_and_test3_sd` via direct with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76 (`jal` at 0x109c0).
  Calls `madd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x10a0c).
  At `beq` at 0x109c8 (target 0x109dc), taken when v0(=ret(breakout_and_test3_sd)) == 0; falls through when v0(=ret(breakout_and_test3_sd)) != 0.
  Returns v0 = ? (`jr` at 0x109d4).

- `_madd_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10a1c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10a1c-0x10adc (192 bytes).
  Stores 1 bytes from t0 to [-0x3fe8]:8 +0x549 (`sb` at 0x10a50).
  Calls `breakout_and_test3_sd` via direct with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76 (`jal` at 0x10a88).
  Calls `madd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x10acc).
  At `beq` at 0x10a90 (target 0x10aa4), taken when v0(=ret(breakout_and_test3_sd)) == 0; falls through when v0(=ret(breakout_and_test3_sd)) != 0.
  Returns v0 = ? (`jr` at 0x10a9c).

- `_sqrt_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10adc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10adc-0x10dc8 (748 bytes).
  Stores 4 bytes from a0 to [-0x3fe8]:8 +0x53c  (`sw` at 0x10b44).
  Stores 4 bytes from a4 to [-0x3fe8]:8 +0x53c  (`sw` at 0x10d14).
  Calls `breakout_and_test_sd` via direct with a0=a0 at entry (arg0), a1=sp-8, a2=sp-64, a3=sp-60, a4=sp-56 (`jal` at 0x10b00).
  Calls `post_sig` via direct with a0=0x8, a1=sym(QUIETNAN), a2=0x10040, a3=? (`jal` at 0x10b5c).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10b64).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=?, a6=sym(round) (`jalr` at 0x10ba4).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=? (`jal` at 0x10cc4).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10ccc).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=? (`jal` at 0x10ce8).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10cf0).
  Calls `post_sig` via direct with a0=0x8, a1=sym(QUIETNAN), a2=(a0 << 0x2), a3=?, a4=([[-0x3fe8]:8+1340] | 0x10040), a5=[-0x3fe8]:8, a6=0x10040, a7=0x1 (`jal` at 0x10d2c).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10d34).
  Calls `(unknown callee)` via register with a0=sp-56, a1=?, a2=(a0 << 0x2), a3=?, a7=[((a0 << 0x3) + sym(renorm))]:8 (`jalr` at 0x10d58).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=? (`jal` at 0x10d84).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10d8c).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?, a4=([[-0x3fe8]:8+1340] | 0x10040), a5=[-0x3fe8]:8, a6=0x10040, a7=0x1 (`jal` at 0x10da8).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10db0).
  At `bne` at 0x10b08 (target 0x10bac), taken when v0(=ret(breakout_and_test_sd)) != 0; falls through when v0(=ret(breakout_and_test_sd)) == 0.
  At `bne` at 0x10b20 (target 0x10bbc), taken when at(=[((a0 << 0x2) + sym(EXP_INF))]) != a1(?); falls through when at(=[((a0 << 0x2) + sym(EXP_INF))]) == a1(?).
  At `beq` at 0x10b28 (target 0x10d84), taken when v0(?) == 0; falls through when v0(?) != 0.
  At `beq` at 0x10b54 (target 0x10cdc), taken when (v1(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (v1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  At `beq` at 0x10b7c (target 0x10c9c), taken when a6(?) == 0; falls through when a6(?) != 0.
  At `beq` at 0x10b8c (target 0x10ca4), taken when s0(=a0) == 0; falls through when s0(=a0) != 0.
  At `beq` at 0x10bbc (target 0x10cb8), taken when a1(?) == 0; falls through when a1(?) != 0.
  At `beq` at 0x10bc8 (target 0x10d00), taken when t3(?) == a7(=0x1); falls through when t3(?) != a7(=0x1).
  At `beq` at 0x10bd4 (target 0x10d4c), taken when a1(?) == 0; falls through when a1(?) != 0.
  At `bltz` at 0x10c48 (target 0x10d44), taken when t1(?) < 0 (signed); falls through when t1(?) >= 0 (signed).
  At `bne` at 0x10c74 (target 0x10b74), taken when t1(?) < a2(?) (signed); falls through when t1(?) >= a2(?) (signed).
  At `bgez` at 0x10c88 (target 0x10c58), taken when a7(?) >= 0 (signed); falls through when a7(?) < 0 (signed).
  At `bne` at 0x10c9c (target 0x10b98), taken when s0(=a0) != 0; falls through when s0(=a0) == 0.
  At `bne` at 0x10cbc (target 0x10bc0), taken when a3(?) != 0; falls through when a3(?) == 0.
  At `beq` at 0x10d24 (target 0x10d9c), taken when (a3(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (a3(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  Returns v0 = ? (`jr` at 0x10bb4).

- `_msub_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10dc8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10dc8-0x10e8c (196 bytes).
  Stores 1 bytes from t0 to [-0x3fe8]:8 +0x549 (`sb` at 0x10dfc).
  Calls `breakout_and_test3_sd` via direct with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76 (`jal` at 0x10e34).
  Calls `madd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x10e7c).
  At `beq` at 0x10e3c (target 0x10e50), taken when v0(=ret(breakout_and_test3_sd)) == 0; falls through when v0(=ret(breakout_and_test3_sd)) != 0.
  Returns v0 = ? (`jr` at 0x10e48).

- `_cvts_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10e8c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10e8c-0x11048 (444 bytes).
  Stores 4 bytes from a0 to [-0x3fe8]:8 +0x53c  (`sw` at 0x10f1c).
  Calls `breakout_sd` via direct with a0=0x1, a1=sp-16, a2=sp-48, a3=sp-44, a4=sp-40 (`jal` at 0x10ea8).
  Calls `round_s` via direct with a0=?, a1=?, a2=?, a3=0x0 (`jal` at 0x10ee0).
  Calls `post_sig` via direct with a0=0x8, a1=[-0x3fe8]:8, a2=0x10040, a3=?, a4=[-0x3fe8]:8 (`jal` at 0x10f34).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10f3c).
  Calls `renorm_d` via direct with a0=sp-40, a1=?, a2=?, a3=?, a4=0x1 (`jal` at 0x10f54).
  Calls `fpstore_s` via direct with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a4=0x1 (`jal` at 0x10fa4).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10fac).
  Calls `fpstore_s` via direct with a0=0x7fbfffff, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a4=[-0x3fe8]:8 (`jal` at 0x10fc8).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10fd0).
  Calls `fpstore_s` via direct with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a4=0x1 (`jal` at 0x10ff4).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x10ffc).
  Calls `fpstore_s` via direct with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=0x7f800000, a4=0x1 (`jal` at 0x11030).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11038).
  At `beq` at 0x10ec0 (target 0x10ef4), taken when a1(?) == at(=0x7ff); falls through when a1(?) != at(=0x7ff).
  At `beq` at 0x10ec8 (target 0x10f4c), taken when a1(?) == 0; falls through when a1(?) != 0.
  At `beq` at 0x10f00 (target 0x10f70), taken when (a2(?) & v0(=0x8000000000000)) == 0; falls through when (a2(?) & v0(=0x8000000000000)) != 0.
  At `beq` at 0x10f2c (target 0x10fbc), taken when (v1(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (v1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  At `beq` at 0x10f4c (target 0x10fe0), taken when a2(?) == 0; falls through when a2(?) != 0.
  At `beq` at 0x10f70 (target 0x11018), taken when a2(?) == 0; falls through when a2(?) != 0.
  At `beq` at 0x10f7c (target 0x1100c), taken when a2(?) == 0; falls through when a2(?) != 0.
  Returns v0 = ? (`jr` at 0x10eec).

- `checkfp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11050 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11050-0x11228 (472 bytes).
  Stores 4 bytes from v0 to [a0+992]:8 +0x130 (`sw` at 0x110cc).
  Stores 4 bytes from $f31 to [a0+992]:8 +0x124  (`swc1` at 0x110d8).
  Stores 4 bytes from $f30 to [a0+992]:8 +0x11c  (`swc1` at 0x110dc).
  Stores 4 bytes from $f29 to [a0+992]:8 +0x114  (`swc1` at 0x110e0).
  Stores 4 bytes from $f28 to [a0+992]:8 +0x10c  (`swc1` at 0x110e4).
  Stores 4 bytes from $f27 to [a0+992]:8 +0x104  (`swc1` at 0x110e8).
  Stores 4 bytes from $f26 to [a0+992]:8 +0xfc  (`swc1` at 0x110ec).
  Stores 4 bytes from $f25 to [a0+992]:8 +0xf4  (`swc1` at 0x110f0).
  Stores 4 bytes from $f24 to [a0+992]:8 +0xec  (`swc1` at 0x110f4).
  Stores 4 bytes from $f23 to [a0+992]:8 +0xe4  (`swc1` at 0x110f8).
  Stores 4 bytes from $f22 to [a0+992]:8 +0xdc  (`swc1` at 0x110fc).
  Stores 4 bytes from $f21 to [a0+992]:8 +0xd4  (`swc1` at 0x11100).
  Stores 4 bytes from $f20 to [a0+992]:8 +0xcc  (`swc1` at 0x11104).
  Stores 4 bytes from $f19 to [a0+992]:8 +0xc4 (`swc1` at 0x11108).
  Stores 4 bytes from $f18 to [a0+992]:8 +0xbc (`swc1` at 0x1110c).
  Stores 4 bytes from $f17 to [a0+992]:8 +0xb4 (`swc1` at 0x11110).
  Stores 4 bytes from $f16 to [a0+992]:8 +0xac (`swc1` at 0x11114).
  Stores 4 bytes from $f15 to [a0+992]:8 +0xa4 (`swc1` at 0x11118).
  Stores 4 bytes from $f14 to [a0+992]:8 +0x9c (`swc1` at 0x1111c).
  Stores 4 bytes from $f13 to [a0+992]:8 +0x94 (`swc1` at 0x11120).
  Stores 4 bytes from $f12 to [a0+992]:8 +0x8c (`swc1` at 0x11124).
  Stores 4 bytes from $f11 to [a0+992]:8 +0x84 (`swc1` at 0x11128).
  Stores 4 bytes from $f10 to [a0+992]:8 +0x7c (`swc1` at 0x1112c).
  Stores 4 bytes from $f9 to [a0+992]:8 +0x74 (`swc1` at 0x11130).
  Stores 4 bytes from $f8 to [a0+992]:8 +0x6c (`swc1` at 0x11134).
  Stores 4 bytes from $f7 to [a0+992]:8 +0x64 (`swc1` at 0x11138).
  Stores 4 bytes from $f6 to [a0+992]:8 +0x5c (`swc1` at 0x1113c).
  Stores 4 bytes from $f5 to [a0+992]:8 +0x54 (`swc1` at 0x11140).
  Stores 4 bytes from $f4 to [a0+992]:8 +0x4c (`swc1` at 0x11144).
  Stores 4 bytes from $f3 to [a0+992]:8 +0x44 (`swc1` at 0x11148).
  Stores 4 bytes from $f2 to [a0+992]:8 +0x3c (`swc1` at 0x1114c).
  Stores 4 bytes from $f1 to [a0+992]:8 +0x34 (`swc1` at 0x11150).
  Stores 4 bytes from $f0 to [a0+992]:8 +0x2c  (`swc1` at 0x11158).
  Stores 8 bytes from $f31 to [a0+992]:8 +0x120  (`sdc1` at 0x1115c).
  Stores 8 bytes from $f30 to [a0+992]:8 +0x118  (`sdc1` at 0x11160).
  Stores 8 bytes from $f29 to [a0+992]:8 +0x110  (`sdc1` at 0x11164).
  Stores 8 bytes from $f28 to [a0+992]:8 +0x108  (`sdc1` at 0x11168).
  Stores 8 bytes from $f27 to [a0+992]:8 +0x100  (`sdc1` at 0x1116c).
  Stores 8 bytes from $f26 to [a0+992]:8 +0xf8  (`sdc1` at 0x11170).
  Stores 8 bytes from $f25 to [a0+992]:8 +0xf0  (`sdc1` at 0x11174).
  Stores 8 bytes from $f24 to [a0+992]:8 +0xe8  (`sdc1` at 0x11178).
  Stores 8 bytes from $f23 to [a0+992]:8 +0xe0  (`sdc1` at 0x1117c).
  Stores 8 bytes from $f22 to [a0+992]:8 +0xd8  (`sdc1` at 0x11180).
  Stores 8 bytes from $f21 to [a0+992]:8 +0xd0  (`sdc1` at 0x11184).
  Stores 8 bytes from $f20 to [a0+992]:8 +0xc8  (`sdc1` at 0x11188).
  Stores 8 bytes from $f19 to [a0+992]:8 +0xc0 (`sdc1` at 0x1118c).
  Stores 8 bytes from $f18 to [a0+992]:8 +0xb8 (`sdc1` at 0x11190).
  Stores 8 bytes from $f17 to [a0+992]:8 +0xb0 (`sdc1` at 0x11194).
  Stores 8 bytes from $f16 to [a0+992]:8 +0xa8 (`sdc1` at 0x11198).
  Stores 8 bytes from $f15 to [a0+992]:8 +0xa0 (`sdc1` at 0x1119c).
  Stores 8 bytes from $f14 to [a0+992]:8 +0x98 (`sdc1` at 0x111a0).
  Stores 8 bytes from $f13 to [a0+992]:8 +0x90 (`sdc1` at 0x111a4).
  Stores 8 bytes from $f12 to [a0+992]:8 +0x88 (`sdc1` at 0x111a8).
  Stores 8 bytes from $f11 to [a0+992]:8 +0x80 (`sdc1` at 0x111ac).
  Stores 8 bytes from $f10 to [a0+992]:8 +0x78 (`sdc1` at 0x111b0).
  Stores 8 bytes from $f9 to [a0+992]:8 +0x70 (`sdc1` at 0x111b4).
  Stores 8 bytes from $f8 to [a0+992]:8 +0x68 (`sdc1` at 0x111b8).
  Stores 8 bytes from $f7 to [a0+992]:8 +0x60 (`sdc1` at 0x111bc).
  Stores 8 bytes from $f6 to [a0+992]:8 +0x58 (`sdc1` at 0x111c0).
  Stores 8 bytes from $f5 to [a0+992]:8 +0x50 (`sdc1` at 0x111c4).
  Stores 8 bytes from $f4 to [a0+992]:8 +0x48 (`sdc1` at 0x111c8).
  Stores 8 bytes from $f3 to [a0+992]:8 +0x40 (`sdc1` at 0x111cc).
  Stores 8 bytes from $f2 to [a0+992]:8 +0x38 (`sdc1` at 0x111d0).
  Stores 8 bytes from $f1 to [a0+992]:8 +0x30 (`sdc1` at 0x111d4).
  Stores 8 bytes from $f0 to [a0+992]:8 +0x28  (`sdc1` at 0x111d8).
  Stores 8 bytes from zero to abs 0xffffffffffffc460  (`sd` at 0x111e8).
  Stores 8 bytes from a1 to [[-0x3fe8]:8+992]:8 +0x260 (`sd` at 0x1120c).
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1105c).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x11210).
  At `beq` at 0x11074 (target 0x11210), taken when v0(=[-0x3ba0]:8) == 0; falls through when v0(=[-0x3ba0]:8) != 0.
  At `bne` at 0x1107c (target 0x11210), taken when a0 != v0(=[-0x3ba0]:8); falls through when a0 == v0(=[-0x3ba0]:8).
  At `beq` at 0x11084 (target 0x111e4), taken when a1 == at(=0x1); falls through when a1 != at(=0x1).
  At `beq` at 0x1109c (target 0x110a8), taken when (t0(=[[a0+792]:8+156]:1) & 0xc) == 0; falls through when (t0(=[[a0+792]:8+156]:1) & 0xc) != 0.
  At `beq` at 0x110c0 (target 0x110d0), taken when a1 == at(=0x2); falls through when a1 != at(=0x2).
  At `bne` at 0x110d0 (target 0x1115c), taken when t0(?) != 0; falls through when t0(?) == 0.
  At `beq` at 0x111ec (target 0x11210), taken when t1(=[-0x3fe8]:8) == 0; falls through when t1(=[-0x3fe8]:8) != 0.
  Returns v0 = ret(splx) (`jr` at 0x11220).

- `fpunit_fpstore_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11230 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11230-0x113dc (428 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x11254).

- `fpunit_fpstore_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x113e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x113e0-0x116fc (796 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x11434).
  At `bne` at 0x113e0 (target 0x11414), taken when a2 != 0; falls through when a2 == 0.

- `longway` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11700 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11700-0x11980 (640 bytes).
  6 such stores of 8 bytes through k0 (?) to ? (base unknown) , including `sd` at 0x11734, 0x11744, 0x1175c.
  Stores 8 bytes from k1 to ? (base unknown) (`sd` at 0x1173c).
  Stores 8 bytes from k1 to ? (base unknown) (`sd` at 0x11764).
  Stores 8 bytes from k1 to ? (base unknown) (`sd` at 0x117fc).
  Stores 8 bytes from k1 to [[-0x3fe8]:8+992]:8 +0x238 (`sd` at 0x1181c).
  Stores 8 bytes from gp to [[-0x3fe8]:8+992]:8 +0x240  (`sd` at 0x11828).
  Stores 8 bytes from sp to [[-0x3fe8]:8+992]:8 +0x248  (`sd` at 0x11830).
  Stores 1 bytes from k0 to abs 0xffffffffffffc04f  (`sb` at 0x1183c).
  Stores 1 bytes from k0 to abs 0xffffffffffffc04f  (`sb` at 0x11910).
  Stores 4 bytes from sp to sym(ovflwword) +0x0  (`sw` at 0x118f8).
  Calls `keruliframe` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1171c).
  Calls `ecommon` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x11748).
  Calls `ecommon` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x11770).
  Calls `ecommon` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x11808).
  Calls `ecommon` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1184c).
  Calls `printf` via direct with a0=sym(cache_desc+456), a1=?, a2=sp, a3=? (`jal` at 0x11918).
  Calls `printf` via direct with a0=sym(scache_data_ecc+144), a1=ra at entry, a2=[-0x3fb1]:1, a3=? (`jal` at 0x1193c).
  Calls `panic` via direct with a0=sym(scache_data_ecc+184), a1=?, a2=?, a3=? (`jal` at 0x11970).
  Calls `_baduk` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x11978).
  At `beq` at 0x11704 (target 0x11810), taken when k0(=[-0x3fb1]:1) == 0; falls through when k0(=[-0x3fb1]:1) != 0.
  At `beq` at 0x1170c (target 0x117a8), taken when k0(=[-0x3fb1]:1-1) == 0; falls through when k0(=[-0x3fb1]:1-1) != 0.
  At `bnel` at 0x11714 (target 0x11724), taken when k0(=[-0x3fb1]:1-4) != 0; falls through when k0(=[-0x3fb1]:1-4) == 0.
  At `bne` at 0x11724 (target 0x11750), taken when k0(=[-0x3fb1]:1-2) != 0; falls through when k0(=[-0x3fb1]:1-2) == 0.
  At `bne` at 0x117c4 (target 0x117e8), taken when k0(=[sym(dump_in_progress)]) != 0; falls through when k0(=[sym(dump_in_progress)]) == 0.
  At `beq` at 0x117d0 (target 0x117e8), taken when k0(=[-0x3fe0]:8) == 0; falls through when k0(=[-0x3fe0]:8) != 0.
  At `beq` at 0x117e0 (target 0x11854), taken when k0(=[[-0x3fe0]:8+224]:8) >= sp(=sp) (unsigned); falls through when k0(=[[-0x3fe0]:8+224]:8) < sp(=sp) (unsigned).
  At `beq` at 0x11884 (target 0x118e0), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0x118a0 (target 0x118e0), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0x118bc (target 0x118e0), taken when condition not analyzed; falls through when condition not analyzed.
  At `beq` at 0x118d8 (target 0x118e0), taken when condition not analyzed; falls through when condition not analyzed.

- `stkovflw` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11854 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11854-0x11870 (28 bytes).
  Role: unknown; hostfacts reports no reached access, call, branch, or return in 0x11854-0x11870.

- `stkundflw` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11870 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11870-0x1188c (28 bytes).
  Role: unknown; hostfacts reports no reached access, call, branch, or return in 0x11870-0x1188c.

- `stkscr1` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1188c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1188c-0x118a8 (28 bytes).
  Role: unknown; hostfacts reports no reached access, call, branch, or return in 0x1188c-0x118a8.

- `stkscr2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x118a8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x118a8-0x118c4 (28 bytes).
  Role: unknown; hostfacts reports no reached access, call, branch, or return in 0x118a8-0x118c4.

- `stkscr3` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x118c4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x118c4-0x11980 (188 bytes).
  Stores 4 bytes from sp to sym(ovflwword) +0x0  (`sw` at 0x118f8).
  Stores 1 bytes from k0 to abs 0xffffffffffffc04f  (`sb` at 0x11910).
  Calls `printf` via direct with a0=sym(scache_data_ecc+14), a1=?, a2=sp, a3=? (`jal` at 0x11918).
  Calls `printf` via direct with a0=sym(scache_data_ecc+144), a1=ra at entry, a2=[-0x3fb1]:1, a3=? (`jal` at 0x1193c).
  Calls `panic` via direct with a0=sym(scache_data_ecc+184), a1=?, a2=?, a3=? (`jal` at 0x11970).
  Calls `_baduk` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x11978).

- `_cvtd_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11980 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11980-0x11b2c (428 bytes).
  Stores 4 bytes from a6 to [-0x3fe8]:8 +0x53c  (`sw` at 0x11a20).
  Calls `breakout_sd` via direct with a0=0x0, a1=sp-16, a2=sp-48, a3=sp-44, a4=sp-40 (`jal` at 0x1199c).
  Calls `fpstore_d` via direct with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=? (`jal` at 0x119e8).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x119f0).
  Calls `post_sig` via direct with a0=0x8, a1=0x10000, a2=?, a3=[-0x3fe8]:8, a4=[-0x3fe8]:8, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=0x10040 (`jal` at 0x11a38).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11a40).
  Calls `renorm_s` via direct with a0=sp-40, a1=?, a2=?, a3=? (`jal` at 0x11a58).
  Calls `fpstore_d` via direct with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[-0x3fe8]:8, a4=0x7ff0000000000000 (`jal` at 0x11aac).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11ab4).
  Calls `fpstore_d` via direct with a0=0x7ff7ffffffffffff, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[-0x3fe8]:8, a4=[-0x3fe8]:8, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=0x10040 (`jal` at 0x11ad0).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11ad8).
  Calls `fpstore_d` via direct with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=? (`jal` at 0x11afc).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11b04).
  Calls `fpstore_d` via direct with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[-0x3fe8]:8, a4=0x7ff0000000000000 (`jal` at 0x11b14).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11b1c).
  At `beq` at 0x119ac (target 0x11a04), taken when a4(?) == at(=0xff); falls through when a4(?) != at(=0xff).
  At `beq` at 0x119b4 (target 0x11a50), taken when a4(?) == 0; falls through when a4(?) != 0.
  At `bgez` at 0x11a0c (target 0x11a84), taken when a4(?) >= 0 (signed); falls through when a4(?) < 0 (signed).
  At `beq` at 0x11a30 (target 0x11ac4), taken when (a5(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (a5(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  At `beq` at 0x11a50 (target 0x11ae8), taken when a5(?) == 0; falls through when a5(?) != 0.
  At `beq` at 0x11a9c (target 0x11b14), taken when a5(?) == 0; falls through when a5(?) != 0.
  Returns v0 = ret(store_fpcsr) (`jr` at 0x119fc).

- `round_w` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11b2c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11b2c-0x11c90 (356 bytes).
  Stores 4 bytes from t0 to [-0x3fe8]:8 +0x53c  (`sw` at 0x11be8).
  Stores 4 bytes from t3 to [-0x3fe8]:8 +0x53c  (`sw` at 0x11c2c).
  Calls `post_sig` via direct with a0=0x8, a1=0xffffffff80000000, a2=?, a3=?, a4=[-0x3fe8]:8, a5=0x7fff0000 (`jal` at 0x11c00).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11c08).
  Calls `post_sig` via direct with a0=0x8, a1=0xffffffff80000000, a2=?, a3=?, a4=[-0x3fe8]:8, a5=0x7fff0000 (`jal` at 0x11c44).
  Calls `fpstore_s` via direct with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a4=[-0x3fe8]:8 (`jal` at 0x11c5c).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11c64).
  Calls `fpstore_s` via direct with a0=0x7fffffff, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a4=[-0x3fe8]:8, a5=0x7fff0000 (`jal` at 0x11c80).
  At `beq` at 0x11b48 (target 0x11b60), taken when (a2 & at(=0x7fffffffffffffff)) == 0; falls through when (a2 & at(=0x7fffffffffffffff)) != 0.
  At `beq` at 0x11bb4 (target 0x11bc0), taken when a0 == 0; falls through when a0 != 0.
  At `bne` at 0x11bd0 (target 0x11be0), taken when s0(?) < a1(=0xffffffff80000000) (signed); falls through when s0(?) >= a1(=0xffffffff80000000) (signed).
  At `beq` at 0x11bd8 (target 0x11c1c), taken when a6(?) == 0; falls through when a6(?) != 0.
  At `beq` at 0x11bf8 (target 0x11c74), taken when (a7(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (a7(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  At `beq` at 0x11c1c (target 0x11c50), taken when a2(?) == 0; falls through when a2(?) != 0.
  At `beq` at 0x11c3c (target 0x11c50), taken when (t2(=[[-0x3fe8]:8+1340]) & 0x80) == 0; falls through when (t2(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  Returns v0 = ret(store_fpcsr) (`jr` at 0x11c14).

- `round_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11c90 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11c90-0x12458 (1992 bytes).
  10 such stores of 4 bytes through a5 ([-0x3fe8]:8) to [-0x3fe8]:8 +0x53c , including `sw` at 0x11d78, 0x11e08, 0x11f54.
  Stores 8 bytes from a5 to [[-0x3fe8]:8+992]:8 +0x128 (`sd` at 0x11e64).
  Stores 8 bytes from s2 to [[-0x3fe8]:8+992]:8 +0x128  (`sd` at 0x120d4).
  Stores 4 bytes from a6 to [-0x3fe8]:8 +0x53c  (`sw` at 0x120ec).
  Stores 8 bytes from s1 to [[-0x3fe8]:8+992]:8 +0x128 (`sd` at 0x123d4).
  Calls `post_sig` via direct with a0=0x8, a1=?, a2=?, a3=a3 at entry (arg3), a5=[-0x3fe8]:8, a6=0x7fffffffffffffff (`jal` at 0x11d90).
  Calls `fpstore_s` via direct with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a5=[-0x3fe8]:8, a7=(a1 + one of 0xc0, 0xc1) (`jal` at 0x11e44).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11e68).
  Calls `post_sig` via direct with a0=0x8, a1=?, a2=?, a3=a3 at entry (arg3), a5=[-0x3fe8]:8, a6=0x7fffffffffffffff (`jal` at 0x11f6c).
  Calls `fpstore_s` via direct with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8 (`jal` at 0x11fa4).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11fac).
  Calls `post_sig` via direct with a0=0x8, a1=[[-0x3fe8]:8+1352]:1, a2=[[-0x3fe8]:8+1340], a3=?, a5=[-0x3fe8]:8 (`jal` at 0x12084).
  Calls `fpstore_s` via direct with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a5=[-0x3fe8]:8 (`jal` at 0x120c4).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x120f0).
  Calls `fpstore_s` via direct with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8 (`jal` at 0x12170).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x12178).
  Calls `post_sig` via direct with a0=0x8, a1=?, a2=?, a3=?, a5=[-0x3fe8]:8 (`jal` at 0x121e4).
  Calls `post_sig` via direct with a0=0x8, a1=[[-0x3fe8]:8+1352]:1, a2=[[-0x3fe8]:8+1340], a3=?, a5=[-0x3fe8]:8 (`jal` at 0x12220).
  Calls `fpstore_s` via direct with a0=entry(sym(.data)+7968), a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8 (`jal` at 0x12248).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x12250).
  Calls `post_sig` via direct with a0=0x8, a1=?, a2=([[-0x3fe8]:8+1340] | 0x2008), a3=?, a5=[-0x3fe8]:8 (`jal` at 0x12318).
  Calls `fpstore_s` via direct with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8, a7=(a1 + one of 0xc0, 0xc1) (`jal` at 0x123c4).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x123d8).
  At `beq` at 0x11cc8 (target 0x11ce8), taken when (a6(=0x7fffffffffffffff) & a3) == 0; falls through when (a6(=0x7fffffffffffffff) & a3) != 0.
  At `beq` at 0x11cfc (target 0x11d1c), taken when (a6(=0x7fffffffffffffff) & s1(?)) == 0; falls through when (a6(=0x7fffffffffffffff) & s1(?)) != 0.
  At `beq` at 0x11d34 (target 0x11ea0), taken when s2(=a1) >= -0x96 (signed); falls through when s2(=a1) < -0x96 (signed).
  At `beq` at 0x11d44 (target 0x12188), taken when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0; falls through when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  At `beq` at 0x11d88 (target 0x11f54), taken when (a0(=[[-0x3fe8]:8+1340]) & 0x100) == 0; falls through when (a0(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  At `bgez` at 0x11dec (target 0x121f4), taken when ra(?) >= 0 (signed); falls through when ra(?) < 0 (signed).
  At `beq` at 0x11df8 (target 0x11e10), taken when s4(?) == 0; falls through when s4(?) != 0.
  At `beq` at 0x11e18 (target 0x11e68), taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0; falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0.
  At `beq` at 0x11ea4 (target 0x11fbc), taken when s2(=a1) >= -0x7e (signed); falls through when s2(=a1) < -0x7e (signed).
  At `beq` at 0x11ecc (target 0x12260), taken when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0; falls through when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  At `bne` at 0x11ee0 (target 0x11d48), taken when s0(?) < t8(=0x7fffff) (unsigned); falls through when s0(?) >= t8(=0x7fffff) (unsigned).
  At `beq` at 0x11f30 (target 0x11d70), taken when a0(?) == 0; falls through when a0(?) != 0.
  At `beq` at 0x11f3c (target 0x12404), taken when a1(=0x1) == a0(?); falls through when a1(=0x1) != a0(?).
  At `beq` at 0x11f44 (target 0x11d70), taken when at(?) == a1(=0x1); falls through when at(?) != a1(=0x1).
  At `beq` at 0x11f64 (target 0x11f78), taken when (v0(=[[-0x3fe8]:8+1340]) & 0x80) == 0; falls through when (v0(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  At `bne` at 0x11f80 (target 0x11f94), taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0; falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0.
  At `bne` at 0x11f8c (target 0x11fac), taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) != 0; falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) == 0.
  At `beq` at 0x11fc0 (target 0x11fe0), taken when (a6(=0x7fffffffffffffff) & s1(?)) == 0; falls through when (a6(=0x7fffffffffffffff) & s1(?)) != 0.
  At `beq` at 0x1202c (target 0x122e8), taken when s2(=a1) == a2(=-0x7f); falls through when s2(=a1) != a2(=-0x7f).
  At `bgez` at 0x12038 (target 0x1204c), taken when t9(?) >= 0 (signed); falls through when t9(?) < 0 (signed).
  At `bne` at 0x1204c (target 0x12100), taken when ra(?) != 0; falls through when ra(?) == 0.
  At `beq` at 0x1207c (target 0x12204), taken when (a0(=[[-0x3fe8]:8+1340]) & 0x200) == 0; falls through when (a0(=[[-0x3fe8]:8+1340]) & 0x200) != 0.
  At `beq` at 0x12098 (target 0x120d8), taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0; falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0.
  At `beq` at 0x120d8 (target 0x120f0), taken when s1(?) == 0; falls through when s1(?) != 0.
  At `bne` at 0x12108 (target 0x12130), taken when s5(?) < -0x7e (signed); falls through when s5(?) >= -0x7e (signed).
  At `beq` at 0x12138 (target 0x123e8), taken when (a2(=[[-0x3fe8]:8+1340]) & 0x100) == 0; falls through when (a2(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  At `bne` at 0x12140 (target 0x12310), taken when a1(?) != 0; falls through when a1(?) == 0.
  At `beq` at 0x12148 (target 0x121c4), taken when a0(?) == a1(=0x1); falls through when a0(?) != a1(=0x1).
  At `bne` at 0x12158 (target 0x1216c), taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0; falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0.
  At `bne` at 0x12164 (target 0x12178), taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) != 0; falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) == 0.
  At `bgez` at 0x121b4 (target 0x12420), taken when t8(?) >= 0 (signed); falls through when t8(?) < 0 (signed).
  At `beq` at 0x121dc (target 0x12150), taken when (t8(=[[-0x3fe8]:8+1340]) & 0x80) == 0; falls through when (t8(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  At `bne` at 0x121f4 (target 0x11e00), taken when s4(?) != 0; falls through when s4(?) == 0.
  At `beq` at 0x12218 (target 0x1222c), taken when (ra(=[[-0x3fe8]:8+1340]) & 0x80) == 0; falls through when (ra(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  At `bne` at 0x12234 (target 0x12240), taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0; falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0.
  At `bne` at 0x1223c (target 0x12250), taken when a0(?) != 0; falls through when a0(?) == 0.
  At `beq` at 0x12274 (target 0x12284), taken when (a6(=0x7fffffffffffffff) & s1(?)) == 0; falls through when (a6(=0x7fffffffffffffff) & s1(?)) != 0.
  At `bltz` at 0x122d8 (target 0x122f4), taken when ra(?) < 0 (signed); falls through when ra(?) >= 0 (signed).
  At `bgez` at 0x122ec (target 0x12038), taken when v1(?) >= 0 (signed); falls through when v1(?) < 0 (signed).
  At `beq` at 0x12308 (target 0x123ec), taken when (a2(=[[-0x3fe8]:8+1340]) & 0x100) == 0; falls through when (a2(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  At `bgez` at 0x12374 (target 0x12448), taken when a3(?) >= 0 (signed); falls through when a3(?) < 0 (signed).
  At `beq` at 0x12380 (target 0x12398), taken when s4(?) == 0; falls through when s4(?) != 0.
  At `beq` at 0x123a0 (target 0x123d8), taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0; falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0.
  At `beq` at 0x123e8 (target 0x12440), taken when a1(?) == 0; falls through when a1(?) != 0.
  At `bne` at 0x123f0 (target 0x12150), taken when a0(?) != a1(=0x1); falls through when a0(?) == a1(=0x1).
  At `bltz` at 0x12408 (target 0x11f44), taken when a4(?) < 0 (signed); falls through when a4(?) >= 0 (signed).
  At `bne` at 0x12410 (target 0x11f44), taken when a2(?) != 0; falls through when a2(?) == 0.
  At `bne` at 0x12428 (target 0x12310), taken when (a2(=[[-0x3fe8]:8+1340]) & 0x100) != 0; falls through when (a2(=[[-0x3fe8]:8+1340]) & 0x100) == 0.
  At `bne` at 0x12448 (target 0x12388), taken when s4(?) != 0; falls through when s4(?) == 0.
  Returns v0 = ret(store_fpcsr) (`jr` at 0x11e98).

- `maddrnd_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x12458 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x12458-0x129a8 (1360 bytes).
  7 such stores of 4 bytes through a2 ([-0x3fe8]:8) to [-0x3fe8]:8 +0x53c , including `sw` at 0x12530, 0x126c0, 0x12788.
  Stores 1 bytes from ra to [-0x3fe8]:8 +0x549  (`sb` at 0x12708).
  Stores 4 bytes from at to [-0x3fe8]:8 +0x53c  (`sw` at 0x12718).
  Stores 4 bytes from v1 to [-0x3fe8]:8 +0x53c  (`sw` at 0x12730).
  Stores 1 bytes from a0 to [-0x3fe8]:8 +0x549  (`sb` at 0x12760).
  Stores 1 bytes from a6 to [-0x3fe8]:8 +0x549  (`sb` at 0x1279c).
  Calls `post_sig` via direct with a0=0x8, a1=?, a2=[-0x3fe8]:8, a3=?, a5=([[-0x3fe8]:8+1340] | 0x1004), a6=-0x7f (`jal` at 0x12548).
  Calls `post_sig` via direct with a0=0x8, a1=[[-0x3fe8]:8+1340], a2=[-0x3fe8]:8, a3=([[-0x3fe8]:8+1340] | 0x1004) (`jal` at 0x126f0).
  Calls `post_sig` via direct with a0=0x8, a1=?, a2=?, a3=? (`jal` at 0x12748).
  Calls `post_sig` via direct with a0=0x8, a1=[[-0x3fe8]:8+1340], a2=[-0x3fe8]:8, a3=?, a5=([[-0x3fe8]:8+1340] | 0x2008) (`jal` at 0x12784).
  Calls `post_sig` via direct with a0=0x8, a1=?, a2=[-0x3fe8]:8, a3=? (`jal` at 0x12834).
  Calls `post_sig` via direct with a0=0x8, a1=[[-0x3fe8]:8+1340], a2=[-0x3fe8]:8, a3=([[-0x3fe8]:8+1340] | 0x1004) (`jal` at 0x12864).
  At `beq` at 0x12484 (target 0x124a4), taken when (v0(=0x7fffffffffffffff) & a3) == 0; falls through when (v0(=0x7fffffffffffffff) & a3) != 0.
  At `beq` at 0x124b4 (target 0x124d4), taken when (v0(=0x7fffffffffffffff) & s1(?)) == 0; falls through when (v0(=0x7fffffffffffffff) & s1(?)) != 0.
  At `beq` at 0x124e4 (target 0x1257c), taken when s2(=a1) >= -0x96 (signed); falls through when s2(=a1) < -0x96 (signed).
  At `beq` at 0x124f4 (target 0x127e0), taken when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0; falls through when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  At `beq` at 0x12540 (target 0x12550), taken when (a4(=[[-0x3fe8]:8+1340]) & 0x80) == 0; falls through when (a4(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  At `beq` at 0x12550 (target 0x12724), taken when s1(?) == s2(=0x1); falls through when s1(?) != s2(=0x1).
  At `beq` at 0x12580 (target 0x12624), taken when s2(=a1) >= -0x7e (signed); falls through when s2(=a1) < -0x7e (signed).
  At `beq` at 0x125a4 (target 0x12874), taken when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0; falls through when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  At `bne` at 0x125b8 (target 0x124f8), taken when s0(?) < t9(=0x7fffff) (unsigned); falls through when s0(?) >= t9(=0x7fffff) (unsigned).
  At `beq` at 0x1260c (target 0x12920), taken when v0(?) == 0; falls through when v0(?) != 0.
  At `beq` at 0x12614 (target 0x12910), taken when s2(=0x1) == v0(?); falls through when s2(=0x1) != v0(?).
  At `beq` at 0x12628 (target 0x12648), taken when (v0(=0x7fffffffffffffff) & s1(?)) == 0; falls through when (v0(=0x7fffffffffffffff) & s1(?)) != 0.
  At `beq` at 0x12694 (target 0x128fc), taken when s2(=a1) == a6(=-0x7f); falls through when s2(=a1) != a6(=-0x7f).
  At `bgez` at 0x126a0 (target 0x126b4), taken when at(?) >= 0 (signed); falls through when at(?) < 0 (signed).
  At `bne` at 0x126b4 (target 0x12764), taken when v1(?) != 0; falls through when v1(?) == 0.
  At `beq` at 0x126e8 (target 0x1284c), taken when (a3(=[[-0x3fe8]:8+1340]) & 0x200) == 0; falls through when (a3(=[[-0x3fe8]:8+1340]) & 0x200) != 0.
  At `beq` at 0x12704 (target 0x1271c), taken when s1(?) == 0; falls through when s1(?) != 0.
  At `beq` at 0x12740 (target 0x12558), taken when (v0(=[[-0x3fe8]:8+1340]) & 0x100) == 0; falls through when (v0(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  At `beq` at 0x12768 (target 0x12930), taken when (a1(=[[-0x3fe8]:8+1340]) & 0x100) == 0; falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  At `beq` at 0x12770 (target 0x12844), taken when v0(?) == 0; falls through when v0(?) != 0.
  At `beq` at 0x127a0 (target 0x12928), taken when a3(?) == s1(=0x1); falls through when a3(?) != s1(=0x1).
  At `bne` at 0x127ac (target 0x127d4), taken when v1(?) != 0; falls through when v1(?) == 0.
  At `bgez` at 0x12808 (target 0x1294c), taken when a3(?) >= 0 (signed); falls through when a3(?) < 0 (signed).
  At `beq` at 0x1282c (target 0x127a8), taken when (t9(=[[-0x3fe8]:8+1340]) & 0x80) == 0; falls through when (t9(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  At `beq` at 0x1285c (target 0x1286c), taken when (at(=[[-0x3fe8]:8+1340]) & 0x80) == 0; falls through when (at(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  At `beq` at 0x12888 (target 0x12898), taken when (v0(=0x7fffffffffffffff) & s1(?)) == 0; falls through when (v0(=0x7fffffffffffffff) & s1(?)) != 0.
  At `bltz` at 0x128ec (target 0x12908), taken when v1(?) < 0 (signed); falls through when v1(?) >= 0 (signed).
  At `bgez` at 0x12900 (target 0x126a0), taken when a4(?) >= 0 (signed); falls through when a4(?) < 0 (signed).
  At `bltz` at 0x12910 (target 0x1261c), taken when a5(?) < 0 (signed); falls through when a5(?) >= 0 (signed).
  At `bne` at 0x12918 (target 0x1261c), taken when a1(?) != 0; falls through when a1(?) == 0.
  At `beq` at 0x12930 (target 0x1296c), taken when v0(?) == 0; falls through when v0(?) != 0.
  At `bne` at 0x12938 (target 0x127a8), taken when a3(?) != s1(=0x1); falls through when a3(?) == s1(=0x1).
  At `beq` at 0x12954 (target 0x12990), taken when (a1(=[[-0x3fe8]:8+1340]) & 0x100) == 0; falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  At `beq` at 0x1297c (target 0x129a0), taken when (a1(=[[-0x3fe8]:8+1340]) & 0x100) == 0; falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  Returns v0 = ? (`jr` at 0x12574).

- `round_l` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x129a8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x129a8-0x12a90 (232 bytes).
  Stores 4 bytes from t1 to [-0x3fe8]:8 +0x53c  (`sw` at 0x12a44).
  Calls `post_sig` via direct with a0=0x8, a1=a1 at entry (arg1), a2=?, a3=?, a4=[-0x3fe8]:8, a5=0x1, a6=0x8000000000000000 (`jal` at 0x12a5c).
  Calls `fpstore_d` via direct with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a4=[-0x3fe8]:8 (`jal` at 0x12a74).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x12a7c).
  At `beq` at 0x129d0 (target 0x129e4), taken when (a2 & at(=0x7fffffffffffffff)) == 0; falls through when (a2 & at(=0x7fffffffffffffff)) != 0.
  At `beq` at 0x12a28 (target 0x12a34), taken when a0 == 0; falls through when a0 != 0.
  At `beq` at 0x12a34 (target 0x12a68), taken when a2(?) == 0; falls through when a2(?) != 0.
  At `beq` at 0x12a54 (target 0x12a68), taken when (t0(=[[-0x3fe8]:8+1340]) & 0x80) == 0; falls through when (t0(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  Returns v0 = ret(store_fpcsr) (`jr` at 0x12a88).

- `round_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x12a90 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x12a90-0x1324c (1980 bytes).
  10 such stores of 4 bytes through a5 ([-0x3fe8]:8) to [-0x3fe8]:8 +0x53c , including `sw` at 0x12b54, 0x12bec, 0x12d40.
  Stores 8 bytes from a1 to [[-0x3fe8]:8+992]:8 +0x128  (`sd` at 0x12c34).
  Stores 4 bytes from a3 to [-0x3fe8]:8 +0x53c  (`sw` at 0x12c4c).
  Stores 8 bytes from s2 to [[-0x3fe8]:8+992]:8 +0x128  (`sd` at 0x12eb8).
  Stores 4 bytes from a5 to [-0x3fe8]:8 +0x53c  (`sw` at 0x12ed0).
  Stores 8 bytes from s1 to [[-0x3fe8]:8+992]:8 +0x128 (`sd` at 0x131c8).
  Calls `post_sig` via direct with a0=0x8, a1=?, a2=?, a3=?, a5=[-0x3fe8]:8, a6=0x7fffffffffffffff (`jal` at 0x12b6c).
  Calls `fpstore_d` via direct with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8, a7=(a1 + one of 0x600, 0x601) (`jal` at 0x12c20).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x12c50).
  Calls `post_sig` via direct with a0=0x8, a1=?, a2=?, a3=?, a5=[-0x3fe8]:8, a6=0x7fffffffffffffff (`jal` at 0x12d58).
  Calls `fpstore_d` via direct with a0=(one of 0x0, 0x10000000000000 | (a0 << 0x3f)), a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8 (`jal` at 0x12d88).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x12d90).
  Calls `post_sig` via direct with a0=0x8, a1=[[-0x3fe8]:8+1352]:1, a2=?, a3=[[-0x3fe8]:8+1340], a5=[-0x3fe8]:8 (`jal` at 0x12e70).
  Calls `fpstore_d` via direct with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a5=[-0x3fe8]:8 (`jal` at 0x12ea8).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x12ed4).
  Calls `fpstore_d` via direct with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8 (`jal` at 0x12f4c).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x12f54).
  Calls `post_sig` via direct with a0=0x8, a1=?, a2=?, a3=?, a5=[-0x3fe8]:8 (`jal` at 0x12fc4).
  Calls `post_sig` via direct with a0=0x8, a1=[[-0x3fe8]:8+1352]:1, a2=?, a3=[[-0x3fe8]:8+1340], a5=[-0x3fe8]:8 (`jal` at 0x13000).
  Calls `fpstore_d` via direct with a0=entry(sym(.data)+8000), a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8 (`jal` at 0x13028).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x13030).
  Calls `post_sig` via direct with a0=0x8, a1=?, a2=?, a3=[[-0x3fe8]:8+1340], a5=[-0x3fe8]:8 (`jal` at 0x13108).
  Calls `fpstore_d` via direct with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8, a7=(a1 + one of 0x600, 0x601) (`jal` at 0x131b8).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x131cc).
  At `beq` at 0x12ac8 (target 0x12ae8), taken when (a6(=0x7fffffffffffffff) & a3) == 0; falls through when (a6(=0x7fffffffffffffff) & a3) != 0.
  At `beq` at 0x12b04 (target 0x12c88), taken when s2(=a1) >= -0x433 (signed); falls through when s2(=a1) < -0x433 (signed).
  At `beq` at 0x12b14 (target 0x12f64), taken when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0; falls through when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  At `beq` at 0x12b64 (target 0x12d40), taken when (a0(=[[-0x3fe8]:8+1340]) & 0x100) == 0; falls through when (a0(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  At `beq` at 0x12bd0 (target 0x12fd4), taken when (a6(?) & ra(=0x20000000000000)) == 0; falls through when (a6(?) & ra(=0x20000000000000)) != 0.
  At `beq` at 0x12bdc (target 0x12bf4), taken when s4(?) == 0; falls through when s4(?) != 0.
  At `beq` at 0x12bfc (target 0x12c38), taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0; falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0.
  At `beq` at 0x12c38 (target 0x12c50), taken when s1(?) == 0; falls through when s1(?) != 0.
  At `beq` at 0x12c8c (target 0x12da0), taken when s2(=a1) >= -0x3fe (signed); falls through when s2(=a1) < -0x3fe (signed).
  At `beq` at 0x12cb4 (target 0x13040), taken when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0; falls through when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  At `bne` at 0x12cc8 (target 0x12b20), taken when s0(?) < t8(=0xfffffffffffff) (unsigned); falls through when s0(?) >= t8(=0xfffffffffffff) (unsigned).
  At `beq` at 0x12d1c (target 0x12b4c), taken when a0(?) == 0; falls through when a0(?) != 0.
  At `beq` at 0x12d28 (target 0x131f8), taken when a1(=0x1) == a0(?); falls through when a1(=0x1) != a0(?).
  At `beq` at 0x12d30 (target 0x12b4c), taken when at(?) == a1(=0x1); falls through when at(?) != a1(=0x1).
  At `beq` at 0x12d50 (target 0x12d64), taken when (v0(=[[-0x3fe8]:8+1340]) & 0x80) == 0; falls through when (v0(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  At `bne` at 0x12d6c (target 0x12d80), taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0; falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0.
  At `bne` at 0x12d78 (target 0x12d90), taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) != 0; falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) == 0.
  At `beq` at 0x12da4 (target 0x12dc4), taken when (a6(=0x7fffffffffffffff) & s1(?)) == 0; falls through when (a6(=0x7fffffffffffffff) & s1(?)) != 0.
  At `beq` at 0x12e10 (target 0x130d0), taken when s2(=a1) == a3(=-0x3ff); falls through when s2(=a1) != a3(=-0x3ff).
  At `beq` at 0x12e24 (target 0x12e38), taken when (s0(?) & t9(=0x20000000000000)) == 0; falls through when (s0(?) & t9(=0x20000000000000)) != 0.
  At `bne` at 0x12e38 (target 0x12ee4), taken when ra(?) != 0; falls through when ra(?) == 0.
  At `beq` at 0x12e68 (target 0x12fe4), taken when (a0(=[[-0x3fe8]:8+1340]) & 0x200) == 0; falls through when (a0(=[[-0x3fe8]:8+1340]) & 0x200) != 0.
  At `beq` at 0x12e84 (target 0x12ebc), taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0; falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0.
  At `beq` at 0x12ebc (target 0x12ed4), taken when s1(?) == 0; falls through when s1(?) != 0.
  At `bne` at 0x12ee8 (target 0x12f0c), taken when s6(?) < -0x3fe (signed); falls through when s6(?) >= -0x3fe (signed).
  At `beq` at 0x12f14 (target 0x131dc), taken when (a3(=[[-0x3fe8]:8+1340]) & 0x100) == 0; falls through when (a3(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  At `bne` at 0x12f1c (target 0x13100), taken when a1(?) != 0; falls through when a1(?) == 0.
  At `beq` at 0x12f24 (target 0x12fa4), taken when a0(?) == a1(=0x1); falls through when a0(?) != a1(=0x1).
  At `bne` at 0x12f34 (target 0x12f48), taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0; falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0.
  At `bne` at 0x12f40 (target 0x12f54), taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) != 0; falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) == 0.
  At `beq` at 0x12f94 (target 0x13214), taken when (a0(=0x10000000000000) & s0(?)) == 0; falls through when (a0(=0x10000000000000) & s0(?)) != 0.
  At `beq` at 0x12fbc (target 0x12f2c), taken when (t8(=[[-0x3fe8]:8+1340]) & 0x80) == 0; falls through when (t8(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  At `bne` at 0x12fd4 (target 0x12be4), taken when s4(?) != 0; falls through when s4(?) == 0.
  At `beq` at 0x12ff8 (target 0x1300c), taken when (ra(=[[-0x3fe8]:8+1340]) & 0x80) == 0; falls through when (ra(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  At `bne` at 0x13014 (target 0x13020), taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0; falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0.
  At `bne` at 0x1301c (target 0x13030), taken when a0(?) != 0; falls through when a0(?) == 0.
  At `beq` at 0x13054 (target 0x13064), taken when (a6(=0x7fffffffffffffff) & s1(?)) == 0; falls through when (a6(=0x7fffffffffffffff) & s1(?)) != 0.
  At `bne` at 0x130c0 (target 0x130e4), taken when (s0(?) & a3(=0x10000000000000)) != 0; falls through when (s0(?) & a3(=0x10000000000000)) == 0.
  At `beq` at 0x130dc (target 0x12e1c), taken when (s0(?) & a7(=0x10000000000000)) == 0; falls through when (s0(?) & a7(=0x10000000000000)) != 0.
  At `beq` at 0x130f8 (target 0x131e0), taken when (a3(=[[-0x3fe8]:8+1340]) & 0x100) == 0; falls through when (a3(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  At `beq` at 0x1316c (target 0x1323c), taken when (a6(?) & t2(=0x20000000000000)) == 0; falls through when (a6(?) & t2(=0x20000000000000)) != 0.
  At `beq` at 0x13178 (target 0x13190), taken when s4(?) == 0; falls through when s4(?) != 0.
  At `beq` at 0x13198 (target 0x131cc), taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0; falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0.
  At `beq` at 0x131dc (target 0x13234), taken when a1(?) == 0; falls through when a1(?) != 0.
  At `bne` at 0x131e4 (target 0x12f2c), taken when a0(?) != a1(=0x1); falls through when a0(?) == a1(=0x1).
  At `bltz` at 0x131fc (target 0x12d30), taken when a3(?) < 0 (signed); falls through when a3(?) >= 0 (signed).
  At `bne` at 0x13204 (target 0x12d30), taken when a2(?) != 0; falls through when a2(?) == 0.
  At `bne` at 0x1321c (target 0x13100), taken when (a3(=[[-0x3fe8]:8+1340]) & 0x100) != 0; falls through when (a3(=[[-0x3fe8]:8+1340]) & 0x100) == 0.
  At `bne` at 0x1323c (target 0x13180), taken when s4(?) != 0; falls through when s4(?) == 0.
  Returns v0 = ret(store_fpcsr) (`jr` at 0x12c80).

- `maddrnd_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1324c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1324c-0x13780 (1332 bytes).
  7 such stores of 4 bytes through a2 ([-0x3fe8]:8) to [-0x3fe8]:8 +0x53c , including `sw` at 0x132f4, 0x13490, 0x13558.
  Stores 1 bytes from ra to [-0x3fe8]:8 +0x549  (`sb` at 0x134d8).
  Stores 4 bytes from at to [-0x3fe8]:8 +0x53c  (`sw` at 0x134e8).
  Stores 4 bytes from v1 to [-0x3fe8]:8 +0x53c  (`sw` at 0x13500).
  Stores 1 bytes from a0 to [-0x3fe8]:8 +0x549  (`sb` at 0x13530).
  Stores 1 bytes from a5 to [-0x3fe8]:8 +0x549  (`sb` at 0x1356c).
  Calls `post_sig` via direct with a0=0x8, a1=?, a2=[-0x3fe8]:8, a3=?, a5=([[-0x3fe8]:8+1340] | 0x1004), a6=0x1 (`jal` at 0x1330c).
  Calls `post_sig` via direct with a0=0x8, a1=[[-0x3fe8]:8+1340], a2=[-0x3fe8]:8, a3=? (`jal` at 0x134c0).
  Calls `post_sig` via direct with a0=0x8, a1=?, a2=?, a3=?, a6=0x1 (`jal` at 0x13518).
  Calls `post_sig` via direct with a0=0x8, a1=[[-0x3fe8]:8+1340], a2=[-0x3fe8]:8, a3=?, a4=([[-0x3fe8]:8+1340] | 0x2008) (`jal` at 0x13554).
  Calls `post_sig` via direct with a0=0x8, a1=?, a2=[-0x3fe8]:8, a3=?, a6=one of 0x1, 0x7fffffffffffffff (`jal` at 0x13604).
  Calls `post_sig` via direct with a0=0x8, a1=[[-0x3fe8]:8+1340], a2=[-0x3fe8]:8, a3=? (`jal` at 0x13634).
  At `beq` at 0x13278 (target 0x13298), taken when (a6(=0x7fffffffffffffff) & a3) == 0; falls through when (a6(=0x7fffffffffffffff) & a3) != 0.
  At `beq` at 0x132a8 (target 0x13340), taken when s1(=a1) >= -0x433 (signed); falls through when s1(=a1) < -0x433 (signed).
  At `beq` at 0x132b8 (target 0x135ac), taken when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0; falls through when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  At `beq` at 0x13304 (target 0x13318), taken when (a4(=[[-0x3fe8]:8+1340]) & 0x80) == 0; falls through when (a4(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  At `beq` at 0x13318 (target 0x134f4), taken when s1(?) == a6(=0x1); falls through when s1(?) != a6(=0x1).
  At `beq` at 0x13344 (target 0x133ec), taken when s1(=a1) >= -0x3fe (signed); falls through when s1(=a1) < -0x3fe (signed).
  At `beq` at 0x13368 (target 0x13644), taken when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0; falls through when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  At `bne` at 0x1337c (target 0x132bc), taken when s0(?) < t9(=0xfffffffffffff) (unsigned); falls through when s0(?) >= t9(=0xfffffffffffff) (unsigned).
  At `beq` at 0x133d0 (target 0x13700), taken when v0(?) == 0; falls through when v0(?) != 0.
  At `beq` at 0x133dc (target 0x136f0), taken when v1(=0x1) == v0(?); falls through when v1(=0x1) != v0(?).
  At `beq` at 0x133f0 (target 0x13410), taken when (a6(=0x7fffffffffffffff) & s2(?)) == 0; falls through when (a6(=0x7fffffffffffffff) & s2(?)) != 0.
  At `beq` at 0x1345c (target 0x136d4), taken when s1(=a1) == a7(=-0x3ff); falls through when s1(=a1) != a7(=-0x3ff).
  At `beq` at 0x13470 (target 0x13484), taken when (s0(?) & at(=0x20000000000000)) == 0; falls through when (s0(?) & at(=0x20000000000000)) != 0.
  At `bne` at 0x13484 (target 0x13534), taken when v1(?) != 0; falls through when v1(?) == 0.
  At `beq` at 0x134b8 (target 0x1361c), taken when (v0(=[[-0x3fe8]:8+1340]) & 0x200) == 0; falls through when (v0(=[[-0x3fe8]:8+1340]) & 0x200) != 0.
  At `beq` at 0x134d4 (target 0x134ec), taken when s2(?) == 0; falls through when s2(?) != 0.
  At `beq` at 0x13510 (target 0x13320), taken when (v0(=[[-0x3fe8]:8+1340]) & 0x100) == 0; falls through when (v0(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  At `beq` at 0x13538 (target 0x13710), taken when (a1(=[[-0x3fe8]:8+1340]) & 0x100) == 0; falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  At `beq` at 0x13540 (target 0x13614), taken when a0(?) == 0; falls through when a0(?) != 0.
  At `beq` at 0x13574 (target 0x13708), taken when v0(?) == a6(=0x1); falls through when v0(?) != a6(=0x1).
  At `bne` at 0x1357c (target 0x135a0), taken when a7(?) != 0; falls through when a7(?) == 0.
  At `beq` at 0x135dc (target 0x13728), taken when (s0(?) & a1(=0x10000000000000)) == 0; falls through when (s0(?) & a1(=0x10000000000000)) != 0.
  At `beq` at 0x135fc (target 0x1357c), taken when (ra(=[[-0x3fe8]:8+1340]) & 0x80) == 0; falls through when (ra(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  At `beq` at 0x1362c (target 0x1363c), taken when (v1(=[[-0x3fe8]:8+1340]) & 0x80) == 0; falls through when (v1(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  At `beq` at 0x13658 (target 0x13668), taken when (a6(=0x7fffffffffffffff) & s2(?)) == 0; falls through when (a6(=0x7fffffffffffffff) & s2(?)) != 0.
  At `bne` at 0x136c4 (target 0x136e8), taken when (s0(?) & a4(=0x10000000000000)) != 0; falls through when (s0(?) & a4(=0x10000000000000)) == 0.
  At `beq` at 0x136e0 (target 0x13468), taken when (s0(?) & a6(=0x10000000000000)) == 0; falls through when (s0(?) & a6(=0x10000000000000)) != 0.
  At `bltz` at 0x136f0 (target 0x133e4), taken when a7(?) < 0 (signed); falls through when a7(?) >= 0 (signed).
  At `bne` at 0x136f8 (target 0x133e4), taken when a1(?) != 0; falls through when a1(?) == 0.
  At `beq` at 0x13710 (target 0x13744), taken when a0(?) == 0; falls through when a0(?) != 0.
  At `bne` at 0x13718 (target 0x13578), taken when v0(?) != t0(=0x1); falls through when v0(?) == t0(=0x1).
  At `beq` at 0x13730 (target 0x13764), taken when (a1(=[[-0x3fe8]:8+1340]) & 0x100) == 0; falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  At `beq` at 0x13754 (target 0x13778), taken when (a1(=[[-0x3fe8]:8+1340]) & 0x100) == 0; falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  Returns v0 = ? (`jr` at 0x13338).

- `VEC_unexp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13780 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13780-0x137a0 (32 bytes).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.data)+16128, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x13798).
- `slave_loop` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13800 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13800-0x13858 (88 bytes).
  Stores 1 bytes from t1 to ([a0+12] + sym(slave_loop_ready)) +0x0  (`sb` at 0x13824).
  Stores 8 bytes from zero to a0 (arg0 at entry) +0x18  (`sd` at 0x13848).
  Calls `(unknown callee)` via register with a0=[a0+72]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x13850).
  At `bne` at 0x13830 (target 0x13830), taken when t0(?) != 0; falls through when t0(?) == 0.
  At `beq` at 0x1383c (target 0x13828), taken when t0(=[a0+24]:8) == 0; falls through when t0(=[a0+24]:8) != 0.

- `start_slave_loop` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13880 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13880-0x138c8 (72 bytes).
  Stores 8 bytes from zero to ? (base unknown)  (`sd` at 0x138a8).
  Stores 8 bytes from t2 to ? (base unknown)  (`sd` at 0x138b0).
  Stores 8 bytes from t0 to ? (base unknown) (`sd` at 0x138ac).
  At `bne` at 0x138b8 (target 0x138a8), taken when t1(?) != 0; falls through when t1(?) == 0.
  Returns v0 = ? (`jr` at 0x138c0).

- `backtouser` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x138d0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x138d0-0x13950 (128 bytes).
  Stores 1 bytes from zero to abs 0xffffffffffffc04f  (`sb` at 0x138dc).
  Calls `ktimer_switch` via direct with a0=[-0x3fe0]:8, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x138d4).
  Calls `tfi_restore` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x138e4).

- `earlynofault` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13950 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13950-0x13984 (52 bytes).
  Calls `dobuserre` via direct with a0=a0 at entry (arg0), a1=[a0+288]:8, a2=0x1, a3=a3 at entry (arg3) (`jal` at 0x13970).
  At `beq` at 0x13958 (target 0x1396c), taken when a1 == at(=0x1c); falls through when a1 != at(=0x1c).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x13964).

- `idle_err` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13984 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13984-0x13a24 (160 bytes).
  Calls `dobuserre` via direct with a0=0x0, a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3), a4=0x1c (`jal` at 0x139c4).
  Calls `getbadvaddr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x139cc).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+5064, a2=a2 at entry (arg2), a3=a0 at entry (arg0), a4=a1 at entry (arg1), a5=a3 at entry (arg3), a6=ret(getbadvaddr) (`jal` at 0x139ec).
  Calls `dobuserr` via direct with a0=0x0, a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3), a4=0x1c (`jal` at 0x13a14).
  At `beq` at 0x139b0 (target 0x139bc), taken when a7(?) == at(=0x18); falls through when a7(?) != at(=0x18).
  At `bne` at 0x139b8 (target 0x13a08), taken when a7(?) != a4(=0x1c); falls through when a7(?) == a4(=0x1c).
  At `beq` at 0x13a08 (target 0x139cc), taken when t0(?) == 0; falls through when t0(?) != 0.
  Returns v0 = ret(cmn_err) (`jr` at 0x13a00).

- `dobuserre` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13a24 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13a24-0x13a40 (28 bytes).
  Calls `dobuserr_common` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1 (`jal` at 0x13a2c).
  Returns v0 = ret(dobuserr_common) (`jr` at 0x13a38).

- `dobuserr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13a40 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13a40-0x13a5c (28 bytes).
  Calls `dobuserr_common` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0 (`jal` at 0x13a48).
  Returns v0 = ret(dobuserr_common) (`jr` at 0x13a54).

- `hem_add_dimm` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13a5c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13a5c-0x13ae0 (132 bytes).
  Calls `maddr_to_dimm` via direct with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x13a78).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=a0 at entry (arg0), a3=a1 at entry (arg1) (`jal` at 0x13a94).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=ret(maddr_to_dimm), a3=? (`jal` at 0x13ac8).
  At `beq` at 0x13aa4 (target 0x13ac0), taken when s0(=ret(maddr_to_dimm)) == 0; falls through when s0(=ret(maddr_to_dimm)) != 0.
  At `beq` at 0x13ab0 (target 0x13ac0), taken when a2(=[ret(maddr_to_dimm)]:1) == 0; falls through when a2(=[ret(maddr_to_dimm)]:1) != 0.
  Returns v0 = ret(cmn_err) (`jr` at 0x13ad8).

- `hem_add_sync` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13ae0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13ae0-0x13bb4 (212 bytes).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=a0 at entry (arg0), a7=a0 at entry (arg0) (`jal` at 0x13b2c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=a1 at entry (arg1) (`jal` at 0x13b40).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=a2 at entry (arg2) (`jal` at 0x13b58).
  Calls `hem_add_dimm [0x13a5c]` via direct with a0=sym(.rodata)+5064, a1=a5 at entry (arg5), a2=?, a3=? (`jal` at 0x13b88).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=a3 at entry (arg3), a3=a4 at entry (arg4) (`jal` at 0x13ba4).
  At `bne` at 0x13b08 (target 0x13b1c), taken when a0 != 0; falls through when a0 == 0.
  At `beq` at 0x13b64 (target 0x13b84), taken when s0(=a3) == at(=0xfe); falls through when s0(=a3) != at(=0xfe).
  At `bne` at 0x13b6c (target 0x13b98), taken when s0(=a3) != a0(=0xff); falls through when s0(=a3) == a0(=0xff).
  Returns v0 = ? (`jr` at 0x13b7c).

- `hem_add_ioe` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13bb4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13bb4-0x13df4 (576 bytes).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=a3 at entry (arg3) (`jal` at 0x13bf0).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+72]:8 (`jal` at 0x13c8c).
  Calls `hem_add_dimm [0x13a5c]` via direct with a0=sym(.rodata)+5064, a1=[a0+56]:8, a2=?, a3=? (`jal` at 0x13ca0).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+4]:2 (`jal` at 0x13cb8).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+6]:2 (`jal` at 0x13cd0).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+8]:2 (`jal` at 0x13ce8).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+10]:2 (`jal` at 0x13d00).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+12]:2, a4=([a0] << 0x5) (`jal` at 0x13d1c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+14]:2, a4=([a0] << 0x5), a5=([a0] << 0x6) (`jal` at 0x13d38).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+16]:8, a5=([a0] << 0x6), a6=([a0] << 0x7) (`jal` at 0x13d54).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+24]:8, a6=([a0] << 0x7), a7=([a0] << 0x8) (`jal` at 0x13d70).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+32]:8, a7=([a0] << 0x8) (`jal` at 0x13d8c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+40]:8 (`jal` at 0x13da8).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+48]:8 (`jal` at 0x13dc4).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+64]:8 (`jal` at 0x13de4).
  At `bne` at 0x13bc8 (target 0x13be4), taken when at(=[sym(kdebug)]:2) != 0; falls through when at(=[sym(kdebug)]:2) == 0.
  At `bne` at 0x13c00 (target 0x13cb0), taken when v0(?) != 0; falls through when v0(?) == 0.
  At `bltz` at 0x13c0c (target 0x13cc8), taken when v1(=([a0] << 0x1)) < 0 (signed); falls through when v1(=([a0] << 0x1)) >= 0 (signed).
  At `bltz` at 0x13c18 (target 0x13ce0), taken when a1(=([a0] << 0x2)) < 0 (signed); falls through when a1(=([a0] << 0x2)) >= 0 (signed).
  At `bltz` at 0x13c24 (target 0x13cf8), taken when a2(=([a0] << 0x3)) < 0 (signed); falls through when a2(=([a0] << 0x3)) >= 0 (signed).
  At `bltz` at 0x13c30 (target 0x13d10), taken when a3(=([a0] << 0x4)) < 0 (signed); falls through when a3(=([a0] << 0x4)) >= 0 (signed).
  At `bltz` at 0x13c38 (target 0x13d2c), taken when a4(=([a0] << 0x5)) < 0 (signed); falls through when a4(=([a0] << 0x5)) >= 0 (signed).
  At `bltz` at 0x13c40 (target 0x13d48), taken when a5(=([a0] << 0x6)) < 0 (signed); falls through when a5(=([a0] << 0x6)) >= 0 (signed).
  At `bltz` at 0x13c48 (target 0x13d64), taken when a6(=([a0] << 0x7)) < 0 (signed); falls through when a6(=([a0] << 0x7)) >= 0 (signed).
  At `bltz` at 0x13c50 (target 0x13d80), taken when a7(=([a0] << 0x8)) < 0 (signed); falls through when a7(=([a0] << 0x8)) >= 0 (signed).
  At `bltz` at 0x13c58 (target 0x13d9c), taken when t0(=([a0] << 0x9)) < 0 (signed); falls through when t0(=([a0] << 0x9)) >= 0 (signed).
  At `bltz` at 0x13c60 (target 0x13db8), taken when t1(=([a0] << 0xa)) < 0 (signed); falls through when t1(=([a0] << 0xa)) >= 0 (signed).
  At `bltz` at 0x13c68 (target 0x13c9c), taken when t2(=([a0] << 0xb)) < 0 (signed); falls through when t2(=([a0] << 0xb)) >= 0 (signed).
  At `bltz` at 0x13c70 (target 0x13dd4), taken when t3(=([a0] << 0xc)) < 0 (signed); falls through when t3(=([a0] << 0xc)) >= 0 (signed).
  At `bgez` at 0x13c78 (target 0x13bd0), taken when t8(=([a0] << 0xd)) >= 0 (signed); falls through when t8(=([a0] << 0xd)) < 0 (signed).
  Returns v0 = ? (`jr` at 0x13bdc).

- `dobuserr_common` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13df4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13df4-0x162e8 (9460 bytes).
  Stores 4 bytes from v0 to sym(heart_error_cpumap) +0x0 (`sc` at 0x13e88).
  Stores 8 bytes from s7 to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x0  (`sd` at 0x13ee4).
  Stores 8 bytes from s7 to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x10  (`sd` at 0x13eec).
  Stores 8 bytes from s4 to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x20  (`sd` at 0x13ef4).
  Stores 8 bytes from t3 to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x30  (`sd` at 0x13f04).
  Stores 8 bytes from t2 to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x40  (`sd` at 0x13f1c).
  Stores 8 bytes from s4 to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x50  (`sd` at 0x13f24).
  Stores 8 bytes from t1 to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x60 (`sd` at 0x13f3c).
  Stores 8 bytes from t0 to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x70 (`sd` at 0x13f54).
  Stores 8 bytes from a7 to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x80 (`sd` at 0x13f70).
  Stores 8 bytes from a6 to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x90  (`sd` at 0x13f7c).
  Stores 8 bytes from a5 to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0xa0  (`sd` at 0x13f88).
  Stores 8 bytes from a3 to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0xb0  (`sd` at 0x13f94).
  Stores 8 bytes from a2 to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0xc0  (`sd` at 0x13fa0).
  Stores 8 bytes from v1 to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0xd0  (`sd` at 0x13fb4).
  Stores 4 bytes from a5 to sym(heart_error_cpumap) +0x0 (`sc` at 0x14330).
  Stores 4 bytes from zero to abs 0x9000000018000044  (`sw` at 0x14454).
  Stores 8 bytes from s3 to abs 0x9000000018000060 (`sd` at 0x14464).
  Stores 8 bytes from s1 to abs 0xffffffffaff10040 (`sd` at 0x1447c).
  Stores 8 bytes from a5 to abs 0xffffffffaff10020 (`sd` at 0x144dc).
  Stores 4 bytes from t9 to sym(heart_error_cpumap) +0x0 (`sc` at 0x144fc).
  Stores 4 bytes from t9 to sym(heart_error_cpumap) +0x0 (`sc` at 0x14534).
  Stores 4 bytes from a1 to (([-0x3c60]:2 << 0x2) + sym(heart_SysCorErr_count)) +0x0  (`sw` at 0x14bd0).
  Stores 4 bytes from a0 to sym(_prom_cleared) +0xe4  (`sw` at 0x14c7c).
  Stores 4 bytes from a4 to sym(_prom_cleared) +0xec  (`sw` at 0x14ca4).
  Stores 4 bytes from t0 to sym(_prom_cleared) +0xf4  (`sw` at 0x14ccc).
  Stores 4 bytes from t8 to sym(_prom_cleared) +0xfc  (`sw` at 0x14cf8).
  Stores 4 bytes from v1 to sym(_prom_cleared) +0x104  (`sw` at 0x14d2c).
  Stores 4 bytes from a4 to sym(LLPRxCnt255_count) +0x0  (`sw` at 0x14d58).
  Stores 4 bytes from a7 to sym(LLPTxCnt255_count) +0x0  (`sw` at 0x14d78).
  Stores 8 bytes from t2 to abs 0xffffffffaff10040  (`sd` at 0x14f0c).
  Stores 8 bytes from t8 to abs 0xffffffffaff00018  (`sd` at 0x14f40).
  Stores 8 bytes from t3 to ? (base unknown)  (`scd` at 0x14f5c).
  Stores 8 bytes from t3 to abs 0xffffffffaff00018 (`sd` at 0x14f9c).
  Stores 4 bytes from a4 to ? (base unknown)  (`sw` at 0x15b08).
  Stores 4 bytes from a2 to sym(_prom_cleared) +0x108  (`sw` at 0x16014).
  Stores 4 bytes from a2 to sym(_prom_cleared) +0xe8  (`sw` at 0x1604c).
  Stores 4 bytes from a2 to sym(_prom_cleared) +0xf0  (`sw` at 0x16084).
  Stores 4 bytes from a2 to sym(_prom_cleared) +0xf8  (`sw` at 0x160bc).
  Stores 4 bytes from a2 to sym(_prom_cleared) +0x100  (`sw` at 0x160f4).
  Calls `compare_and_swap_int` via direct with a0=sym(heart_error_cpumap), a1=[sym(heart_error_cpumap)], a2=?, a3=? (`jal` at 0x13ebc).
  Calls `heart_intr` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x14160).
  Calls `heart_paddr_to_port` via direct with a0=?, a1=sp-832, a2=sp-824, a3=? (`jal` at 0x141c0).
  Calls `heart_error_refine` via direct with a0=sym(.rodata)+5064, a1=?, a2=?, a3=sp-808, a5=0x20000000000 (`jal` at 0x1422c).
  Calls `hem_add_ioe [0x13bb4]` via direct with a0=sp-808, a1=?, a2=?, a3=? (`jal` at 0x14248).
  Calls `heart_error_refine` via direct with a0=sym(.rodata)+5064, a1=0x4, a2=?, a3=sp-808, a7=0x1000000 (`jal` at 0x143e0).
  Calls `hem_add_ioe [0x13bb4]` via direct with a0=sp-808, a1=?, a2=?, a3=? (`jal` at 0x143fc).
  Calls `cmn_err_tag` via direct with a0=0x44, a1=0x0, a2=sym(.rodata)+5064, a3=? (`jal` at 0x14434).
  Calls `heart_imr_bits_rmw` via direct with a0=[-0x3c60]:2, a1=0x0, a2=?, a3=0x8000000000000000, a4=0xffffffffaff10000 (`jal` at 0x144ac).
  Calls `heart_error_refine` via direct with a0=sym(.rodata)+5064, a1=one of 0x9, 0xa, a2=?, a3=sp-808, a5=0x1000000 (`jal` at 0x146a8).
  Calls `hem_add_ioe [0x13bb4]` via direct with a0=sp-808, a1=?, a2=?, a3=? (`jal` at 0x146c4).
  Calls `tlb_to_phys [0x162e8]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x14780).
  Calls `heart_error_refine` via direct with a0=sym(.rodata)+5064, a1=0x5, a2=?, a3=sp-808 (`jal` at 0x1480c).
  Calls `hem_add_ioe [0x13bb4]` via direct with a0=sp-808, a1=?, a2=?, a3=? (`jal` at 0x1486c).
  Calls `us_delay` via direct with a0=0x5, a1=?, a2=?, a3=? (`jal` at 0x14900).
  Calls `is_in_main_memory` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x14954).
  Calls `ldst_addr` via direct with a0=a0 at entry (arg0), a1=(([-0x3c60]:2 << 0x3) + sym(_heart_mode)), a2=a2 at entry (arg2), a3=?, a4=[a0+280]:8, a6=0x18, a7=0x1c (`jal` at 0x14974).
  Calls `heart_error_refine` via direct with a0=sym(.rodata)+5064, a1=one of 0x5, 0x6, a2=?, a3=sp-808 (`jal` at 0x149c4).
  Calls `log_dimmerr` via direct with a0=?, a1=?, a2=?, a3=?, a7=one of 0x0, 0x1 (`jal` at 0x14e80).
  Calls `__dcache_wb_inval` via direct with a0=?, a1=0x8, a2=?, a3=?, a6=table(sym(real_data_eccsyns)) (`jal` at 0x14f78).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x14fb8).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x14fe0).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15008).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x1502c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15050).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15074).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15098).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x150b8).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl) (`jal` at 0x150d4).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15110).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=a0 at entry (arg0) (`jal` at 0x15130).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=a1 at entry (arg1) (`jal` at 0x15150).
  Calls `hem_add_sync [0x13ae0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1516c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15180).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x1519c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl) (`jal` at 0x151b8).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x151d0).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x151e8).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x151fc).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0x9000000018000060]:8, a4=sym(h_mode_trig_tbl) (`jal` at 0x15214).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x1522c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x15244).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x1525c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x15274).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x1528c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x152a4).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x152bc).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x152d0).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x152ec).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x1530c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x1532c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x1534c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x1536c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x1538c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x153ac).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x153cc).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x153e8).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl) (`jal` at 0x15404).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0x9000000018000060]:8, a4=sym(h_mode_trig_tbl) (`jal` at 0x1541c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15464).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl) (`jal` at 0x15480).
  Calls `hem_add_sync [0x13ae0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x154a4).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x154bc).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x154d4).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x154f4).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15514).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15544).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a5=[-0x3c60]:2+24 (`jal` at 0x1557c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15590).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x155a4).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x155bc).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x155d0).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a5=0x9 (`jal` at 0x155e8).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x1560c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15630).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15654).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15678).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x1569c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=?, a3=? (`jal` at 0x156b8).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=?, a3=?, a4=sym(.rodata)+5064, a5=sym(.rodata)+5064, a6=sym(.rodata)+5064, a7=sym(.rodata)+5064 (`jal` at 0x15734).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15784).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl) (`jal` at 0x157a0).
  Calls `hem_add_sync [0x13ae0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x157c8).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x157e4).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x157fc).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15810).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15824).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15838).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+5064, a2=?, a3=? (`jal` at 0x1586c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+5064, a2=?, a3=? (`jal` at 0x1587c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=0x1 (`jal` at 0x158b0).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x158c4).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x158e4).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x158fc).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15910).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15928).
  Calls `hem_add_ioe [0x13bb4]` via direct with a0=sp-808, a1=?, a2=?, a3=? (`jal` at 0x15930).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=sym(.rodata)+5064, a4=[(sym(etstrings) + (entry(sym(real_data_eccsyns)) << 0x3))]:8, a5=sym(.rodata)+5064, a6=(entry(sym(real_data_eccsyns)) << 0x3) (`jal` at 0x159b8).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x159d0).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x159e4).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=sym(.rodata)+5064 (`jal` at 0x15a08).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15a24).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15a3c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=0x3ffffffff (`jal` at 0x15a5c).
  Calls `hem_add_sync [0x13ae0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x15a88).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[sym(time)], a4=sym(heart_SysCorErr_count) (`jal` at 0x15ab8).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl) (`jal` at 0x15ad4).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15aec).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a7=0x10000 (`jal` at 0x15b68).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl) (`jal` at 0x15b84).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x15b9c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15bb0).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15bc4).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=sym(.rodata)+5064 (`jal` at 0x15c04).
  Calls `hem_add_sync [0x13ae0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x15c34).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a5=[-0x3c60]:2+4 (`jal` at 0x15c84).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15ca8).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15ccc).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15cf0).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15d14).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15d38).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=?, a3=? (`jal` at 0x15d78).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=?, a3=?, a4=sym(.rodata)+5064, a5=sym(.rodata)+5064, a6=sym(.rodata)+5064, a7=sym(.rodata)+5064 (`jal` at 0x15e08).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15e88).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15eac).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15ed0).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x15ef4).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl) (`jal` at 0x15f10).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0x9000000018000060]:8, a4=sym(h_mode_trig_tbl) (`jal` at 0x15f28).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x15f40).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x15f58).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15f74).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15f88).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15fa4).
  Calls `hem_add_sync [0x13ae0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x15fd0).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x15fec).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[sym(.sdata)+260] (`jal` at 0x16000).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x16024).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[sym(.sdata)+228] (`jal` at 0x16038).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=[sym(.sdata)+236]+1, a6=[sym(.sdata)+240] (`jal` at 0x1605c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[sym(.sdata)+236] (`jal` at 0x16070).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x16094).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[sym(.sdata)+244] (`jal` at 0x160a8).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x160cc).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[sym(.sdata)+252] (`jal` at 0x160e0).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x16160).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl) (`jal` at 0x1617c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x16194).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=0x3ffffffff (`jal` at 0x161b4).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a5=[-0x3c60]:2+4 (`jal` at 0x161f8).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl) (`jal` at 0x16214).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl) (`jal` at 0x1622c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x16240).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=? (`jal` at 0x16254).
  Calls `hem_add_sync [0x13ae0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x16284).
  At `beq` at 0x13e6c (target 0x14520), taken when (s1(?) & at(=[sym(heart_error_cpumap)])) == 0; falls through when (s1(?) & at(=[sym(heart_error_cpumap)])) != 0.
  At `beql` at 0x13e8c (target 0x13e80), taken when v0(?) == 0; falls through when v0(?) != 0.
  At `bne` at 0x13ea4 (target 0x14150), taken when ra(=[sym(panicstr)]:8) != 0; falls through when ra(=[sym(panicstr)]:8) == 0.
  At `bne` at 0x13eb4 (target 0x13ea0), taken when (a1(=[sym(heart_error_cpumap)]) & 0xf) != 0; falls through when (a1(=[sym(heart_error_cpumap)]) & 0xf) == 0.
  At `beq` at 0x13ec4 (target 0x13ea0), taken when v0(=ret(compare_and_swap_int)) == 0; falls through when v0(=ret(compare_and_swap_int)) != 0.
  At `beq` at 0x13fb0 (target 0x14768), taken when a2 == 0; falls through when a2 != 0.
  At `beq` at 0x13fbc (target 0x14770), taken when s0(=0x1) == a3(=a2); falls through when s0(=0x1) != a3(=a2).
  At `beq` at 0x13fc8 (target 0x14778), taken when a4(=0x2) == a5(=a2); falls through when a4(=0x2) != a5(=a2).
  At `beq` at 0x13fd0 (target 0x14048), taken when s2(=a3) == 0; falls through when s2(=a3) != 0.
  At `beq` at 0x13fd8 (target 0x14048), taken when s5(=a0) == 0; falls through when s5(=a0) != 0.
  At `beq` at 0x13fec (target 0x14910), taken when v0(?) == a6(=0x18); falls through when v0(?) != a6(=0x18).
  At `beq` at 0x13ff8 (target 0x1496c), taken when v0(?) == a7(=0x1c); falls through when v0(?) != a7(=0x1c).
  At `bne` at 0x1401c (target 0x14170), taken when a0(?) < t1(=0x8000000000000000) (unsigned); falls through when a0(?) >= t1(=0x8000000000000000) (unsigned).
  At `beq` at 0x1402c (target 0x14174), taken when a0(?) >= t2(=0xc000000000000000) (unsigned); falls through when a0(?) < t2(=0xc000000000000000) (unsigned).
  At `beq` at 0x14054 (target 0x14070), taken when a0(=one of 0x0, 0x1) == 0; falls through when a0(=one of 0x0, 0x1) != 0.
  At `beq` at 0x14060 (target 0x14070), taken when (s4(=[0x9000000018000060]:8) & 0x8) == 0; falls through when (s4(=[0x9000000018000060]:8) & 0x8) != 0.
  At `beq` at 0x14074 (target 0x14758), taken when s1(?) == 0; falls through when s1(?) != 0.
  At `bne` at 0x140c8 (target 0x14fac), taken when (s1(?) & s8(?)) != 0; falls through when (s1(?) & s8(?)) == 0.
  At `bgez` at 0x140e0 (target 0x14100), taken when ra(=([0xffffffffaff10040]:8 << 0x2f)) >= 0 (signed); falls through when ra(=([0xffffffffaff10040]:8 << 0x2f)) < 0 (signed).
  At `bne` at 0x140f4 (target 0x152e0), taken when (s4(=[0x9000000018000060]:8) & at(=0x33062000)) != 0; falls through when (s4(=[0x9000000018000060]:8) & at(=0x33062000)) == 0.
  At `beq` at 0x14108 (target 0x145e0), taken when (v0(=0x300ff000000) & a4(?)) == 0; falls through when (v0(=0x300ff000000) & a4(?)) != 0.
  At `bne` at 0x1411c (target 0x14268), taken when s6(=[-0x3c60]:2) != a6(?); falls through when s6(=[-0x3c60]:2) == a6(?).
  At `beq` at 0x14130 (target 0x14560), taken when a7(=a1) == 0; falls through when a7(=a1) != 0.
  At `bne` at 0x14140 (target 0x14568), taken when s5(=a0) != 0; falls through when s5(=a0) == 0.
  At `beq` at 0x14158 (target 0x14900), taken when (s3(?) & t1(=[0xffffffffaff10030]:8)) == 0; falls through when (s3(?) & t1(=[0xffffffffaff10030]:8)) != 0.
  At `bne` at 0x14178 (target 0x14194), taken when a0(?) < t2(=0xffffffff80000000) (unsigned); falls through when a0(?) >= t2(=0xffffffff80000000) (unsigned).
  At `beq` at 0x14184 (target 0x141a0), taken when a0(?) >= v0(=0xffffffffa0000000) (unsigned); falls through when a0(?) < v0(=0xffffffffa0000000) (unsigned).
  At `bne` at 0x14198 (target 0x14780), taken when a0(?) < v0(=0xffffffffa0000000) (unsigned); falls through when a0(?) >= v0(=0xffffffffa0000000) (unsigned).
  At `beq` at 0x141a4 (target 0x14780), taken when a0(?) >= t9(=0xffffffffc0000000) (unsigned); falls through when a0(?) < t9(=0xffffffffc0000000) (unsigned).
  At `beq` at 0x14234 (target 0x14258), taken when v0(=ret(heart_error_refine)) == 0; falls through when v0(=ret(heart_error_refine)) != 0.
  At `beq` at 0x14240 (target 0x154cc), taken when v0(=ret(heart_error_refine)) == a2(=0x9); falls through when v0(=ret(heart_error_refine)) != a2(=0x9).
  At `beq` at 0x1426c (target 0x145dc), taken when a5(?) == 0; falls through when a5(?) != 0.
  At `beq` at 0x14274 (target 0x142cc), taken when a6(?) == 0; falls through when a6(?) != 0.
  At `bltz` at 0x14280 (target 0x142bc), taken when a0(?) < 0 (signed); falls through when a0(?) >= 0 (signed).
  At `beq` at 0x1428c (target 0x142b8), taken when a0(?) >= 0x10 (signed); falls through when a0(?) < 0x10 (signed).
  At `beq` at 0x14298 (target 0x1436c), taken when t0(=a1) == 0; falls through when t0(=a1) != 0.
  At `bne` at 0x142a8 (target 0x14374), taken when s5(=a0) != 0; falls through when s5(=a0) == 0.
  At `beq` at 0x142bc (target 0x14954), taken when a0(?) == t2(=0xfe); falls through when a0(?) != t2(=0xfe).
  At `bne` at 0x142c4 (target 0x15454), taken when t3(?) != 0; falls through when t3(?) == 0.
  At `beq` at 0x142d0 (target 0x14414), taken when t8(=0x1) == t9(=a2); falls through when t8(=0x1) != t9(=a2).
  At `beq` at 0x142d8 (target 0x14414), taken when ra(=[sym(kdebug)]:2) == 0; falls through when ra(=[sym(kdebug)]:2) != 0.
  At `bne` at 0x142e0 (target 0x150f8), taken when s2(?) != 0; falls through when s2(?) == 0.
  At `beq` at 0x142ec (target 0x14440), taken when at(=0x2) == v0(=a2); falls through when at(=0x2) != v0(=a2).
  At `beq` at 0x142fc (target 0x14440), taken when v1(=0x1) == a0(=a2); falls through when v1(=0x1) != a0(=a2).
  At `beq` at 0x14304 (target 0x14440), taken when s2(?) == 0; falls through when s2(?) != 0.
  At `beq` at 0x14310 (target 0x14430), taken when a1(=a3) == 0; falls through when a1(=a3) != 0.
  At `beql` at 0x14334 (target 0x14328), taken when (a2(=[sym(heart_error_cpumap)]) & a4(?)) == 0; falls through when (a2(=[sym(heart_error_cpumap)]) & a4(?)) != 0.
  At `beq` at 0x1436c (target 0x14388), taken when s5(=a0) == 0; falls through when s5(=a0) != 0.
  At `beq` at 0x143e8 (target 0x142cc), taken when v0(=ret(heart_error_refine)) == 0; falls through when v0(=ret(heart_error_refine)) != 0.
  At `beq` at 0x143f4 (target 0x154b4), taken when v0(=ret(heart_error_refine)) == t1(=0x9); falls through when v0(=ret(heart_error_refine)) != t1(=0x9).
  At `bne` at 0x1440c (target 0x142d4), taken when t2(=0x1) != t3(=a2); falls through when t2(=0x1) == t3(=a2).
  At `beq` at 0x14414 (target 0x142e8), taken when s2(?) == 0; falls through when s2(?) != 0.
  At `beq` at 0x14420 (target 0x142e8), taken when t8(?) == 0; falls through when t8(?) != 0.
  At `beq` at 0x1444c (target 0x14458), taken when (t9(?) & ra(=0x4f00000)) == 0; falls through when (t9(?) & ra(=0x4f00000)) != 0.
  At `beq` at 0x1445c (target 0x14468), taken when s3(?) == 0; falls through when s3(?) != 0.
  At `beq` at 0x1446c (target 0x14484), taken when s1(?) == 0; falls through when s1(?) != 0.
  At `beq` at 0x14484 (target 0x144b8), taken when v1(=a3) == 0; falls through when v1(=a3) != 0.
  At `beq` at 0x144c0 (target 0x144e4), taken when a4(=[0xffffffffaff10040]:8) == 0; falls through when a4(=[0xffffffffaff10040]:8) != 0.
  At `beql` at 0x14500 (target 0x144f4), taken when (t2(=[sym(heart_error_cpumap)]) & t8(?)) == 0; falls through when (t2(=[sym(heart_error_cpumap)]) & t8(?)) != 0.
  At `beq` at 0x14508 (target 0x14938), taken when t0(=0x1) == t1(=a2); falls through when t0(=0x1) != t1(=a2).
  At `beq` at 0x14510 (target 0x148f8), taken when s2(?) == 0; falls through when s2(?) != 0.
  At `beql` at 0x14538 (target 0x1452c), taken when t9(?) == 0; falls through when t9(?) != 0.
  At `beq` at 0x14560 (target 0x1457c), taken when s5(=a0) == 0; falls through when s5(=a0) != 0.
  At `beq` at 0x14598 (target 0x141d4), taken when t0(?) == 0; falls through when t0(?) != 0.
  At `bne` at 0x145a4 (target 0x141d4), taken when a5(?) != a4(?); falls through when a5(?) == a4(?).
  At `beq` at 0x145e8 (target 0x146f8), taken when (a5(=0x4f00000) & a0(?)) == 0; falls through when (a5(=0x4f00000) & a0(?)) != 0.
  At `beq` at 0x14600 (target 0x14620), taken when t3(=a1) == 0; falls through when t3(=a1) != 0.
  At `bne` at 0x14610 (target 0x14628), taken when s5(=a0) != 0; falls through when s5(=a0) == 0.
  At `beq` at 0x14620 (target 0x1463c), taken when s5(=a0) == 0; falls through when s5(=a0) != 0.
  At `beq` at 0x146b0 (target 0x146d4), taken when v0(=ret(heart_error_refine)) == 0; falls through when v0(=ret(heart_error_refine)) != 0.
  At `beq` at 0x146bc (target 0x155e0), taken when v0(=ret(heart_error_refine)) == a5(=0x9); falls through when v0(=ret(heart_error_refine)) != a5(=0x9).
  At `beq` at 0x146e0 (target 0x14940), taken when (s3(?) & a6(?)) == 0; falls through when (s3(?) & a6(?)) != 0.
  At `bne` at 0x146ec (target 0x14274), taken when t0(?) != 0; falls through when t0(?) == 0.
  At `beq` at 0x146f8 (target 0x148b0), taken when a6(?) == 0; falls through when a6(?) != 0.
  At `bne` at 0x14710 (target 0x148a0), taken when s6(=[-0x3c60]:2) != a4(?); falls through when s6(=[-0x3c60]:2) == a4(?).
  At `beq` at 0x1471c (target 0x1489c), taken when a7(?) == 0; falls through when a7(?) != 0.
  At `beq` at 0x14738 (target 0x14794), taken when t0(=a1) == 0; falls through when t0(=a1) != 0.
  At `bne` at 0x14748 (target 0x1479c), taken when s5(=a0) != 0; falls through when s5(=a0) == 0.
  At `beq` at 0x14794 (target 0x147b0), taken when s5(=a0) == 0; falls through when s5(=a0) != 0.
  At `beq` at 0x14814 (target 0x1487c), taken when v0(=ret(heart_error_refine)) == 0; falls through when v0(=ret(heart_error_refine)) != 0.
  At `beq` at 0x14840 (target 0x157d8), taken when v0(=ret(heart_error_refine)) == v1(=0x9); falls through when v0(=ret(heart_error_refine)) != v1(=0x9).
  At `bne` at 0x1484c (target 0x15860), taken when a1(?) != a4(?); falls through when a1(?) == a4(?).
  At `bne` at 0x14864 (target 0x1587c), taken when a3(?) != a4(?); falls through when a3(?) == a4(?).
  At `beq` at 0x14884 (target 0x14dcc), taken when (s3(?) & a5(?)) == 0; falls through when (s3(?) & a5(?)) != 0.
  At `bne` at 0x148a4 (target 0x14274), taken when t0(?) != 0; falls through when t0(?) == 0.
  At `beq` at 0x148b0 (target 0x14a00), taken when a4(?) == 0; falls through when a4(?) != 0.
  At `bne` at 0x148c4 (target 0x149f4), taken when s6(=[-0x3c60]:2) != a5(?); falls through when s6(=[-0x3c60]:2) == a5(?).
  At `beq` at 0x148d8 (target 0x14a78), taken when a6(=a1) == 0; falls through when a6(=a1) != 0.
  At `bne` at 0x148e8 (target 0x14a80), taken when s5(=a0) != 0; falls through when s5(=a0) == 0.
  At `beq` at 0x14924 (target 0x14a70), taken when (a4(=[a0+280]:8) & t1(=0x80000000)) == 0; falls through when (a4(=[a0+280]:8) & t1(=0x80000000)) != 0.
  At `bne` at 0x1495c (target 0x142c4), taken when v0(=ret(is_in_main_memory)) != 0; falls through when v0(=ret(is_in_main_memory)) == 0.
  At `bne` at 0x149cc (target 0x158d4), taken when v0(=ret(heart_error_refine)) != 0; falls through when v0(=ret(heart_error_refine)) == 0.
  At `beq` at 0x149e0 (target 0x14de0), taken when (s3(?) & v0(?)) == 0; falls through when (s3(?) & v0(?)) != 0.
  At `bne` at 0x149f4 (target 0x14274), taken when a0(?) != 0; falls through when a0(?) == 0.
  At `beq` at 0x14a00 (target 0x14b84), taken when a1(?) == 0; falls through when a1(?) != 0.
  At `beq` at 0x14a24 (target 0x14df4), taken when (v0(?) & a2(=0x200000000000)) == 0; falls through when (v0(?) & a2(=0x200000000000)) != 0.
  At `bne` at 0x14a2c (target 0x14b24), taken when s6(=[-0x3c60]:2) != v0(?); falls through when s6(=[-0x3c60]:2) == v0(?).
  At `beq` at 0x14a44 (target 0x14b28), taken when (v0(?) & s1(?)) == 0; falls through when (v0(?) & s1(?)) != 0.
  At `beq` at 0x14a50 (target 0x14b28), taken when (s1(?) & 0x1) == 0; falls through when (s1(?) & 0x1) != 0.
  At `bne` at 0x14a60 (target 0x14b2c), taken when a2(?) != 0; falls through when a2(?) == 0.
  At `beq` at 0x14a78 (target 0x14a94), taken when s5(=a0) == 0; falls through when s5(=a0) != 0.
  At `beq` at 0x14ac0 (target 0x14988), taken when a2(?) == 0; falls through when a2(?) != 0.
  At `bne` at 0x14acc (target 0x14988), taken when a0(?) != a4(?); falls through when a0(?) == a4(?).
  At `beq` at 0x14b28 (target 0x14b3c), taken when t1(?) == 0; falls through when t1(?) != 0.
  At `beq` at 0x14b34 (target 0x14e94), taken when t2(?) == t3(=0xfe); falls through when t2(?) != t3(=0xfe).
  At `beq` at 0x14b50 (target 0x14e04), taken when (a5(?) & a6(=0x40000000000)) == 0; falls through when (a5(?) & a6(=0x40000000000)) != 0.
  At `beq` at 0x14b60 (target 0x15950), taken when v0(?) == 0; falls through when v0(?) != 0.
  At `bne` at 0x14b78 (target 0x14274), taken when t1(?) != 0; falls through when t1(?) == 0.
  At `beq` at 0x14b90 (target 0x14bec), taken when (v0(?) & s1(?)) == 0; falls through when (v0(?) & s1(?)) != 0.
  At `beq` at 0x14bcc (target 0x15aac), taken when a0(=[(([-0x3c60]:2 << 0x2) + sym(heart_SysCorErr_ptime))]) >= a3(=[sym(time)]) (signed); falls through when a0(=[(([-0x3c60]:2 << 0x2) + sym(heart_SysCorErr_ptime))]) < a3(=[sym(time)]) (signed).
  At `bne` at 0x14be0 (target 0x14274), taken when s1(?) < 0x1 (unsigned); falls through when s1(?) >= 0x1 (unsigned).
  At `beq` at 0x14bf4 (target 0x14c1c), taken when (s7(=[0xffffffffaff10040]:8) & a4(=0x40000000000)) == 0; falls through when (s7(=[0xffffffffaff10040]:8) & a4(=0x40000000000)) != 0.
  At `beq` at 0x14c08 (target 0x15b0c), taken when s6(=[-0x3c60]:2) == a5(?); falls through when s6(=[-0x3c60]:2) != a5(?).
  At `bne` at 0x14c10 (target 0x14274), taken when a6(?) != 0; falls through when a6(?) == 0.
  At `beq` at 0x14c20 (target 0x14da8), taken when (a7(=0x10000) & s1(?)) == 0; falls through when (a7(=0x10000) & s1(?)) != 0.
  At `beq` at 0x14c28 (target 0x14d9c), taken when s3(?) == 0; falls through when s3(?) != 0.
  At `bne` at 0x14c40 (target 0x15c78), taken when (t0(=0x4f00000) & t1(?)) != 0; falls through when (t0(=0x4f00000) & t1(?)) == 0.
  At `beq` at 0x14c54 (target 0x14d08), taken when (s3(?) & v0(=0x1d000)) == 0; falls through when (s3(?) & v0(=0x1d000)) != 0.
  At `beq` at 0x14c5c (target 0x14c80), taken when v1(?) == 0; falls through when v1(?) != 0.
  At `beq` at 0x14c78 (target 0x16018), taken when a1(=[sym(time)]) >= a2(=[sym(.sdata)+232]) (signed); falls through when a1(=[sym(time)]) < a2(=[sym(.sdata)+232]) (signed).
  At `beq` at 0x14c84 (target 0x14cac), taken when (s3(?) & 0x4000) == 0; falls through when (s3(?) & 0x4000) != 0.
  At `beq` at 0x14ca0 (target 0x16050), taken when a5(=[sym(time)]) >= a6(=[sym(.sdata)+240]) (signed); falls through when a5(=[sym(time)]) < a6(=[sym(.sdata)+240]) (signed).
  At `beq` at 0x14cac (target 0x14cd4), taken when a7(?) == 0; falls through when a7(?) != 0.
  At `beq` at 0x14cc8 (target 0x16088), taken when t1(=[sym(time)]) >= t2(=[sym(.sdata)+248]) (signed); falls through when t1(=[sym(time)]) < t2(=[sym(.sdata)+248]) (signed).
  At `beq` at 0x14cd8 (target 0x14d00), taken when (t3(=0x10000) & s3(?)) == 0; falls through when (t3(=0x10000) & s3(?)) != 0.
  At `beq` at 0x14cf4 (target 0x160c0), taken when t9(=[sym(time)]) >= ra(=[sym(.sdata)+256]) (signed); falls through when t9(=[sym(time)]) < ra(=[sym(.sdata)+256]) (signed).
  At `bgez` at 0x14d0c (target 0x14d40), taken when v0(?) >= 0 (signed); falls through when v0(?) < 0 (signed).
  At `beq` at 0x14d28 (target 0x15fe0), taken when a0(=[sym(time)]) >= a1(=[sym(.sdata)+264]) (signed); falls through when a0(=[sym(time)]) < a1(=[sym(.sdata)+264]) (signed).
  At `beq` at 0x14d40 (target 0x14d60), taken when a3(?) == 0; falls through when a3(?) != 0.
  At `beq` at 0x14d60 (target 0x14d80), taken when a6(?) == 0; falls through when a6(?) != 0.
  At `bne` at 0x14d84 (target 0x15e24), taken when (v0(?) & 0x7) != 0; falls through when (v0(?) & 0x7) == 0.
  At `beq` at 0x14d8c (target 0x14edc), taken when s3(?) == 0; falls through when s3(?) != 0.
  At `bne` at 0x14d9c (target 0x14274), taken when a0(?) != 0; falls through when a0(?) == 0.
  At `bne` at 0x14db4 (target 0x160f8), taken when (s1(?) & a4(?)) != 0; falls through when (s1(?) & a4(?)) == 0.
  At `beq` at 0x14dbc (target 0x14274), taken when v0(?) == 0; falls through when v0(?) != 0.
  At `bne` at 0x14df4 (target 0x14b78), taken when s6(=[-0x3c60]:2) != v0(?); falls through when s6(=[-0x3c60]:2) == v0(?).
  At `beq` at 0x14e20 (target 0x14ec0), taken when v0(=entry(sym(real_data_eccsyns))) == t3(=0x1); falls through when v0(=entry(sym(real_data_eccsyns))) != t3(=0x1).
  At `beq` at 0x14e28 (target 0x14ecc), taken when v0(=entry(sym(real_data_eccsyns))) == t0(=0x2); falls through when v0(=entry(sym(real_data_eccsyns))) != t0(=0x2).
  At `beq` at 0x14e50 (target 0x14ef4), taken when t1(=0x1) == t2(?); falls through when t1(=0x1) != t2(?).
  At `bne` at 0x14eac (target 0x14b3c), taken when a0(?) != a1(?); falls through when a0(?) == a1(?).
  At `bne` at 0x14ec4 (target 0x14e30), taken when v0(=entry(sym(real_data_eccsyns))) != a4(=0x2); falls through when v0(=entry(sym(real_data_eccsyns))) == a4(=0x2).
  At `beql` at 0x14f60 (target 0x14f50), taken when t3(=table(0x0)) == 0; falls through when t3(=table(0x0)) != 0.
  At `beq` at 0x14fcc (target 0x14fec), taken when (s8(?) & ra(=0x100000000000)) == 0; falls through when (s8(?) & ra(=0x100000000000)) != 0.
  At `beq` at 0x14ff4 (target 0x15014), taken when (s8(?) & a2(=0x80000000000)) == 0; falls through when (s8(?) & a2(=0x80000000000)) != 0.
  At `beq` at 0x15018 (target 0x15038), taken when (a2(?) & s8(?)) == 0; falls through when (a2(?) & s8(?)) != 0.
  At `beq` at 0x1503c (target 0x1505c), taken when (a2(?) & s8(?)) == 0; falls through when (a2(?) & s8(?)) != 0.
  At `beq` at 0x15060 (target 0x15080), taken when (a2(?) & s8(?)) == 0; falls through when (a2(?) & s8(?)) != 0.
  At `beq` at 0x15084 (target 0x150a0), taken when (a2(?) & s8(?)) == 0; falls through when (a2(?) & s8(?)) != 0.
  At `beq` at 0x150e8 (target 0x15744), taken when (s1(?) & a3(?)) == 0; falls through when (s1(?) & a3(?)) != 0.
  At `beq` at 0x150fc (target 0x15178), taken when a4(?) == 0; falls through when a4(?) != 0.
  At `beq` at 0x15118 (target 0x1513c), taken when s5(=a0) == 0; falls through when s5(=a0) != 0.
  At `beq` at 0x1513c (target 0x1515c), taken when a3(=a1) == 0; falls through when a3(=a1) != 0.
  At `bgez` at 0x152f8 (target 0x15318), taken when a2(=([0x9000000018000060]:8 << 0x22)) >= 0 (signed); falls through when a2(=([0x9000000018000060]:8 << 0x22)) < 0 (signed).
  At `bgez` at 0x15318 (target 0x15338), taken when a2(=([0x9000000018000060]:8 << 0x23)) >= 0 (signed); falls through when a2(=([0x9000000018000060]:8 << 0x23)) < 0 (signed).
  At `bgez` at 0x15338 (target 0x15358), taken when a2(=([0x9000000018000060]:8 << 0x26)) >= 0 (signed); falls through when a2(=([0x9000000018000060]:8 << 0x26)) < 0 (signed).
  At `bgez` at 0x15358 (target 0x15378), taken when a2(=([0x9000000018000060]:8 << 0x27)) >= 0 (signed); falls through when a2(=([0x9000000018000060]:8 << 0x27)) < 0 (signed).
  At `bgez` at 0x15378 (target 0x15398), taken when a2(=([0x9000000018000060]:8 << 0x2d)) >= 0 (signed); falls through when a2(=([0x9000000018000060]:8 << 0x2d)) < 0 (signed).
  At `bgez` at 0x15398 (target 0x153b8), taken when a2(=([0x9000000018000060]:8 << 0x2e)) >= 0 (signed); falls through when a2(=([0x9000000018000060]:8 << 0x2e)) < 0 (signed).
  At `beq` at 0x153b8 (target 0x153d8), taken when a2(?) == 0; falls through when a2(?) != 0.
  At `bne` at 0x15430 (target 0x140fc), taken when (s4(=[0x9000000018000060]:8) & s3(?)) != 0; falls through when (s4(=[0x9000000018000060]:8) & s3(?)) == 0.
  At `bne` at 0x15444 (target 0x14100), taken when (s1(?) & t8(=0xfffffffffffeffff)) != 0; falls through when (s1(?) & t8(=0xfffffffffffeffff)) == 0.
  At `beq` at 0x1548c (target 0x142c8), taken when a3(?) == 0; falls through when a3(?) != 0.
  At `beq` at 0x154e0 (target 0x15500), taken when a2(?) == 0; falls through when a2(?) != 0.
  At `beq` at 0x15500 (target 0x15520), taken when a2(?) == 0; falls through when a2(?) != 0.
  At `beq` at 0x15530 (target 0x15550), taken when (a2(=0x300ff000000) & a3(?)) == 0; falls through when (a2(=0x300ff000000) & a3(?)) != 0.
  At `beq` at 0x15568 (target 0x15588), taken when (a2(=0x300ff000000) & a3(?)) == 0; falls through when (a2(=0x300ff000000) & a3(?)) != 0.
  At `bgez` at 0x155f8 (target 0x15618), taken when a2(?) >= 0 (signed); falls through when a2(?) < 0 (signed).
  At `bgez` at 0x1561c (target 0x1563c), taken when a2(?) >= 0 (signed); falls through when a2(?) < 0 (signed).
  At `bgez` at 0x15640 (target 0x15660), taken when a2(?) >= 0 (signed); falls through when a2(?) < 0 (signed).
  At `bgez` at 0x15664 (target 0x15684), taken when a2(?) >= 0 (signed); falls through when a2(?) < 0 (signed).
  At `bgez` at 0x15688 (target 0x156a8), taken when a2(?) >= 0 (signed); falls through when a2(?) < 0 (signed).
  At `bltz` at 0x156cc (target 0x1574c), taken when a4(?) < 0 (signed); falls through when a4(?) >= 0 (signed).
  At `bltz` at 0x156dc (target 0x15754), taken when a5(?) < 0 (signed); falls through when a5(?) >= 0 (signed).
  At `bltz` at 0x156ec (target 0x1575c), taken when a6(?) < 0 (signed); falls through when a6(?) >= 0 (signed).
  At `bltz` at 0x156fc (target 0x15764), taken when a7(?) < 0 (signed); falls through when a7(?) >= 0 (signed).
  At `bltz` at 0x1570c (target 0x1576c), taken when t0(?) < 0 (signed); falls through when t0(?) >= 0 (signed).
  At `beq` at 0x157ac (target 0x142cc), taken when a3(?) == 0; falls through when a3(?) != 0.
  At `bne` at 0x1584c (target 0x1588c), taken when (v0(?) & 0x3) != 0; falls through when (v0(?) & 0x3) == 0.
  At `bne` at 0x1588c (target 0x15940), taken when a3(=0x1) != v0(?); falls through when a3(=0x1) == v0(?).
  At `bne` at 0x158d4 (target 0x158ec), taken when v0(=ret(heart_error_refine)) != a2(=0x9); falls through when v0(=ret(heart_error_refine)) == a2(=0x9).
  At `bne` at 0x15940 (target 0x158a0), taken when a4(=0x2) != v0(?); falls through when a4(=0x2) == v0(?).
  At `beq` at 0x15954 (target 0x15964), taken when (s1(?) & 0x2) == 0; falls through when (s1(?) & 0x2) != 0.
  At `beq` at 0x1596c (target 0x15a98), taken when (s1(?) & 0x1) == 0; falls through when (s1(?) & 0x1) != 0.
  At `bne` at 0x15974 (target 0x15aa0), taken when a5(?) != 0; falls through when a5(?) == 0.
  At `beq` at 0x159f0 (target 0x15a18), taken when t0(?) == 0; falls through when t0(?) != 0.
  At `beq` at 0x15a68 (target 0x15a90), taken when a5(?) == 0; falls through when a5(?) != 0.
  At `beq` at 0x15a70 (target 0x15a90), taken when a6(?) == 0; falls through when a6(?) != 0.
  At `beq` at 0x15a98 (target 0x1597c), taken when a5(?) == 0; falls through when a5(?) != 0.
  At `beq` at 0x15b24 (target 0x15b50), taken when a6(?) == 0; falls through when a6(?) != 0.
  At `bne` at 0x15b38 (target 0x15b50), taken when a0(?) != a1(?); falls through when a0(?) == a1(?).
  At `bgez` at 0x15bd8 (target 0x15c54), taken when a0(?) >= 0 (signed); falls through when a0(?) < 0 (signed).
  At `beq` at 0x15be8 (target 0x15c64), taken when a4(=sym(.rodata)+5064) == 0; falls through when a4(=sym(.rodata)+5064) != 0.
  At `beq` at 0x15bf0 (target 0x15c6c), taken when v0(?) == 0; falls through when v0(?) != 0.
  At `beq` at 0x15c10 (target 0x15c40), taken when a4(?) == 0; falls through when a4(?) != 0.
  At `beq` at 0x15c1c (target 0x15c3c), taken when a5(?) == 0; falls through when a5(?) != 0.
  At `bne` at 0x15c5c (target 0x15bf0), taken when t0(=sym(.rodata)+5064) != 0; falls through when t0(=sym(.rodata)+5064) == 0.
  At `bne` at 0x15c64 (target 0x15bf8), taken when v0(?) != 0; falls through when v0(?) == 0.
  At `bgez` at 0x15c94 (target 0x15cb4), taken when a2(?) >= 0 (signed); falls through when a2(?) < 0 (signed).
  At `bgez` at 0x15cb8 (target 0x15cd8), taken when a2(?) >= 0 (signed); falls through when a2(?) < 0 (signed).
  At `bgez` at 0x15cdc (target 0x15cfc), taken when a2(?) >= 0 (signed); falls through when a2(?) < 0 (signed).
  At `bgez` at 0x15d00 (target 0x15d20), taken when a2(?) >= 0 (signed); falls through when a2(?) < 0 (signed).
  At `bgez` at 0x15d24 (target 0x15d44), taken when a2(?) >= 0 (signed); falls through when a2(?) < 0 (signed).
  At `bltz` at 0x15d88 (target 0x162ac), taken when a7(?) < 0 (signed); falls through when a7(?) >= 0 (signed).
  At `bltz` at 0x15d9c (target 0x162b4), taken when a5(?) < 0 (signed); falls through when a5(?) >= 0 (signed).
  At `bltz` at 0x15db0 (target 0x162bc), taken when a6(?) < 0 (signed); falls through when a6(?) >= 0 (signed).
  At `bltz` at 0x15dc4 (target 0x162c4), taken when a7(?) < 0 (signed); falls through when a7(?) >= 0 (signed).
  At `bltz` at 0x15dd8 (target 0x162cc), taken when t0(?) < 0 (signed); falls through when t0(?) >= 0 (signed).
  At `beq` at 0x15e48 (target 0x15e68), taken when t2(?) == 0; falls through when t2(?) != 0.
  At `bne` at 0x15e54 (target 0x15e68), taken when ra(?) != t3(?); falls through when ra(?) == t3(?).
  At `beq` at 0x15e98 (target 0x15eb8), taken when (a4(?) & 0x4) == 0; falls through when (a4(?) & 0x4) != 0.
  At `beq` at 0x15ebc (target 0x15edc), taken when (a2(?) & 0x2) == 0; falls through when (a2(?) & 0x2) != 0.
  At `beq` at 0x15ee0 (target 0x15f00), taken when (a2(?) & 0x1) == 0; falls through when (a2(?) & 0x1) != 0.
  At `beq` at 0x15fb0 (target 0x14d8c), taken when a4(?) == 0; falls through when a4(?) != 0.
  At `beq` at 0x15fb8 (target 0x14d8c), taken when a5(?) == 0; falls through when a5(?) != 0.
  At `beq` at 0x16104 (target 0x161cc), taken when a3(?) == 0; falls through when a3(?) != 0.
  At `bne` at 0x16120 (target 0x162d8), taken when v1(?) != a0(=0xfe); falls through when v1(?) == a0(=0xfe).
  At `bne` at 0x16130 (target 0x16140), taken when s6(=[-0x3c60]:2) != a1(?); falls through when s6(=[-0x3c60]:2) == a1(?).
  At `bne` at 0x1613c (target 0x161e4), taken when a4(?) != a3(?); falls through when a4(?) == a3(?).
  At `beq` at 0x16260 (target 0x16290), taken when a3(?) == 0; falls through when a3(?) != 0.
  At `beq` at 0x1626c (target 0x1628c), taken when a4(?) == 0; falls through when a4(?) != 0.
  At `beq` at 0x1629c (target 0x14dbc), taken when s1(?) >= 0x1 (unsigned); falls through when s1(?) < 0x1 (unsigned).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x14364).

- `tlb_to_phys` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x162e8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x162e8-0x16378 (144 bytes).
  Calls `tlbgetpid` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x16320).
  Calls `tlb_probe` via direct with a0=?, a1=a0 at entry (arg0), a2=sp-32, a3=? (`jal` at 0x16330).
  At `bne` at 0x16308 (target 0x16320), taken when a0 < at(=0xc000000000000000) (unsigned); falls through when a0 >= at(=0xc000000000000000) (unsigned).
  At `beq` at 0x16310 (target 0x16320), taken when v0(?) == 0; falls through when v0(?) != 0.
  At `beq` at 0x16348 (target 0x16370), taken when v0(=ret(tlb_probe)) == a2(=-0x1); falls through when v0(=ret(tlb_probe)) != a2(=-0x1).
  Returns v0 = ? (`jr` at 0x16368).

- `_dummy_proc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16380 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16380-0x16388 (8 bytes).
  Returns v0 = ? (`jr` at 0x16380).

- `first_address` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16380 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16380-0x16390 (16 bytes).
  Returns v0 = ? (`jr` at 0x16380).

- `fpunit_fpload_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16390 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16390-0x166bc (812 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x163b4).

- `renorm_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x166bc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x166bc-0x167d4 (280 bytes).
  7 such stores of 8 bytes through a0 (a0) to a0 (arg0 at entry) +0x0, including `sd` at 0x1671c, 0x16734, 0x16750.
  At `beq` at 0x166d4 (target 0x167cc), taken when (a3(=[a0]:8) & v1(=0x1fffffffffffff)) == 0; falls through when (a3(=[a0]:8) & v1(=0x1fffffffffffff)) != 0.
  At `beq` at 0x166dc (target 0x166f0), taken when v0(?) == 0; falls through when v0(?) != 0.
  At `bne` at 0x16704 (target 0x1675c), taken when (a5(=0xfff0000000000) & a3(=[a0]:8)) != 0; falls through when (a5(=0xfff0000000000) & a3(=[a0]:8)) == 0.
  At `bne` at 0x16720 (target 0x16754), taken when (a5(=0xfff0000000000) & a3(?)) != 0; falls through when (a5(=0xfff0000000000) & a3(?)) == 0.
  At `bne` at 0x16738 (target 0x16754), taken when (a5(=0xfff0000000000) & a3(?)) != 0; falls through when (a5(=0xfff0000000000) & a3(?)) == 0.
  At `beq` at 0x1674c (target 0x16710), taken when (a5(=0xfff0000000000) & a3(?)) == 0; falls through when (a5(=0xfff0000000000) & a3(?)) != 0.
  At `bne` at 0x16760 (target 0x167ac), taken when t2(?) != 0; falls through when t2(?) == 0.
  At `bne` at 0x16778 (target 0x167ac), taken when (v0(=0xf000000000000) & a3(?)) != 0; falls through when (v0(=0xf000000000000) & a3(?)) == 0.
  At `bne` at 0x16790 (target 0x167ac), taken when (v0(=0xf000000000000) & a3(?)) != 0; falls through when (v0(=0xf000000000000) & a3(?)) == 0.
  At `beq` at 0x167a4 (target 0x16768), taken when (v0(=0xf000000000000) & a3(?)) == 0; falls through when (v0(=0xf000000000000) & a3(?)) != 0.
  Returns v0 = 0x0 (`jr` at 0x166e8).
  Returns v0 = ? (`jr` at 0x167c4).
  Returns v0 = 0x0 (`jr` at 0x167cc).

- `VEC_dbe` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x167e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x167e0-0x16838 (88 bytes).
  Stores 8 bytes from t3 to ([0xffffffffaff50000]:8 << 0x3) -0x500f0000 (`sd` at 0x16814).
  Stores 8 bytes from t0 to a0 (arg0 at entry) +0x140  (`sd` at 0x16834).
  Calls `VEC_trap` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x16830).

- `renorm_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16838 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16838-0x16904 (204 bytes).
  5 such stores of 8 bytes through a0 (a0) to a0 (arg0 at entry) +0x0, including `sd` at 0x16880, 0x16898, 0x168b4.
  At `beq` at 0x16848 (target 0x168fc), taken when (a3(=[a0]:8) & at(=0xffffff)) == 0; falls through when (a3(=[a0]:8) & at(=0xffffff)) != 0.
  At `bgez` at 0x16850 (target 0x16864), taken when a4(=([a0]:8 << 0x28)) >= 0 (signed); falls through when a4(=([a0]:8 << 0x28)) < 0 (signed).
  At `bne` at 0x16868 (target 0x168c0), taken when v1(?) != 0; falls through when v1(?) == 0.
  At `bne` at 0x16884 (target 0x168b8), taken when (v0(=0xff0000) & a3(?)) != 0; falls through when (v0(=0xff0000) & a3(?)) == 0.
  At `bne` at 0x1689c (target 0x168b8), taken when (v0(=0xff0000) & a3(?)) != 0; falls through when (v0(=0xff0000) & a3(?)) == 0.
  At `beq` at 0x168b0 (target 0x16874), taken when (v0(=0xff0000) & a3(?)) == 0; falls through when (v0(=0xff0000) & a3(?)) != 0.
  At `beq` at 0x168c4 (target 0x168ec), taken when a7(?) == 0; falls through when a7(?) != 0.
  Returns v0 = 0x0 (`jr` at 0x1685c).
  Returns v0 = ? (`jr` at 0x168e4).
  Returns v0 = 0x0 (`jr` at 0x168fc).

- `_get_count` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16910 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16910-0x1691c (12 bytes).
  Returns v0 = ? (`jr` at 0x16914).

- `get_r4k_counter` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16910 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16910-0x1691c (12 bytes).
  Returns v0 = ? (`jr` at 0x16914).

- `_get_compare` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1691c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1691c-0x16928 (12 bytes).
  Returns v0 = ? (`jr` at 0x16920).

- `_set_count` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16928 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16928-0x16934 (12 bytes).
  Returns v0 = ? (`jr` at 0x1692c).

- `_add_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16934 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16934-0x169a8 (116 bytes).
  Calls `breakout_and_test2_sd` via direct with a0=a0 at entry (arg0), a1=sp-24, a2=sp-80, a3=sp-76, a4=sp-72, a5=sp-16, a6=sp-64, a7=sp-60 (`jal` at 0x16968).
  Calls `add` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x16998).
  At `beq` at 0x16970 (target 0x16984), taken when v0(=ret(breakout_and_test2_sd)) == 0; falls through when v0(=ret(breakout_and_test2_sd)) != 0.
  Returns v0 = ? (`jr` at 0x1697c).

- `fpunit_fpload_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x169b0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x169b0-0x16e0c (1116 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x16a04).
  At `bne` at 0x169b0 (target 0x169e4), taken when a1 != 0; falls through when a1 == 0.

- `_sub_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16e0c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16e0c-0x16e84 (120 bytes).
  Calls `breakout_and_test2_sd` via direct with a0=a0 at entry (arg0), a1=sp-24, a2=sp-80, a3=sp-76, a4=sp-72, a5=sp-16, a6=sp-64, a7=sp-60 (`jal` at 0x16e40).
  Calls `add` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x16e74).
  At `beq` at 0x16e48 (target 0x16e5c), taken when v0(=ret(breakout_and_test2_sd)) == 0; falls through when v0(=ret(breakout_and_test2_sd)) != 0.
  Returns v0 = ? (`jr` at 0x16e54).
- `_mul_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16e84 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16e84-0x17258 (980 bytes).
  Stores 4 bytes from a3 to [-0x3fe8]:8 +0x53c  (`sw` at 0x16f1c).
  Stores 4 bytes from a6 to [-0x3fe8]:8 +0x53c  (`sw` at 0x16fb8).
  Calls `breakout_and_test2_sd` via direct with a0=a0 at entry (arg0), a1=sp-24, a2=sp-112, a3=sp-108, a4=sp-104, a5=sp-16, a6=sp-96, a7=sp-92 (`jal` at 0x16ec0).
  Calls `post_sig` via direct with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=([[-0x3fe8]:8+1340] | 0x10040), a4=[-0x3fe8]:8, a5=0x10040 (`jal` at 0x16f34).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x16f3c).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))] (`jal` at 0x16f68).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x16f70).
  Calls `post_sig` via direct with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=sym(SIGN_SHIFT), a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8 (`jal` at 0x16fd0).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x16fd8).
  Calls `mul64` via direct with a0=?, a1=?, a2=sp-80, a3=? (`jal` at 0x1706c).
  Calls `renorm_d` via direct with a0=sp-72, a1=?, a2=?, a3=? (`jal` at 0x17078).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=?, a6=[((a0 << 0x3) + sym(round))]:8 (`jalr` at 0x170c0).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))] (`jal` at 0x170ec).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x170f4).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))] (`jal` at 0x17120).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x17128).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=[((a0 << 0x2) + sym(SIGN_SHIFT))], a3=? (`jal` at 0x17178).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x17180).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=([[-0x3fe8]:8+1340] | 0x10040), a4=[-0x3fe8]:8, a5=0x10040 (`jal` at 0x171b0).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x171b8).
  Calls `(unknown callee)` via register with a0=sp-104, a1=?, a2=?, a3=[((a0 << 0x3) + sym(renorm))]:8 (`jalr` at 0x171d4).
  Calls `(unknown callee)` via register with a0=sp-88, a1=?, a2=sym(EXP_BIAS), a3=?, a7=[((a0 << 0x3) + sym(renorm))]:8 (`jalr` at 0x1720c).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=sym(SIGN_SHIFT), a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8 (`jal` at 0x17240).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x17248).
  At `bne` at 0x16ec8 (target 0x16f78), taken when v0(=ret(breakout_and_test2_sd)) != 0; falls through when v0(=ret(breakout_and_test2_sd)) == 0.
  At `bne` at 0x16ee4 (target 0x16f8c), taken when a0(=[((a0 << 0x2) + sym(EXP_INF))]) != a6(?); falls through when a0(=[((a0 << 0x2) + sym(EXP_INF))]) == a6(?).
  At `beq` at 0x16eec (target 0x17104), taken when a0(=[((a0 << 0x2) + sym(EXP_INF))]) == a3(?); falls through when a0(=[((a0 << 0x2) + sym(EXP_INF))]) != a3(?).
  At `bne` at 0x16ef4 (target 0x16f50), taken when a3(?) != 0; falls through when a3(?) == 0.
  At `bne` at 0x16f00 (target 0x16f50), taken when a1(?) != 0; falls through when a1(?) == 0.
  At `beq` at 0x16f2c (target 0x171a4), taken when (a2(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (a2(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  At `bne` at 0x16f8c (target 0x16fe8), taken when a0(=[((a0 << 0x2) + sym(EXP_INF))]) != a3(?); falls through when a0(=[((a0 << 0x2) + sym(EXP_INF))]) == a3(?).
  At `bne` at 0x16f94 (target 0x170d4), taken when a6(?) != 0; falls through when a6(?) == 0.
  At `bne` at 0x16fa0 (target 0x170d0), taken when a4(?) != 0; falls through when a4(?) == 0.
  At `beq` at 0x16fc8 (target 0x17234), taken when (a5(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (a5(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  At `beq` at 0x16fe8 (target 0x17138), taken when a6(?) == 0; falls through when a6(?) != 0.
  At `beq` at 0x16ff0 (target 0x17148), taken when a3(?) == 0; falls through when a3(?) != 0.
  At `beq` at 0x16ff8 (target 0x171c8), taken when a6(?) == 0; falls through when a6(?) != 0.
  At `beq` at 0x17028 (target 0x17200), taken when a3(?) == 0; falls through when a3(?) != 0.
  At `beq` at 0x17054 (target 0x17190), taken when s0(=a0) == 0; falls through when s0(=a0) != 0.
  At `bne` at 0x170a4 (target 0x170b0), taken when v0(=ret(renorm_d)) != t9(=0xb); falls through when v0(=ret(renorm_d)) == t9(=0xb).
  At `bne` at 0x17138 (target 0x16ff0), taken when a4(?) != 0; falls through when a4(?) == 0.
  At `bne` at 0x1714c (target 0x16ff8), taken when a5(?) != 0; falls through when a5(?) == 0.
  At `bne` at 0x171f8 (target 0x17030), taken when a3(?) != 0; falls through when a3(?) == 0.
  Returns v0 = ? (`jr` at 0x16f84).

- `_abs_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17258 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17258-0x172f4 (156 bytes).
  Calls `screen_nan_sd` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a5=a1 at entry (arg1), a6=sym(EXP_MASK) (`jal` at 0x172a8).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=sym(SIGNBIT) (`jal` at 0x172dc).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x172e4).
  At `beq` at 0x172b0 (target 0x172c4), taken when v0(=ret(screen_nan_sd)) == 0; falls through when v0(=ret(screen_nan_sd)) != 0.
  Returns v0 = ? (`jr` at 0x172bc).

- `_neg_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x172f4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x172f4-0x1738c (152 bytes).
  Calls `screen_nan_sd` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a5=a1 at entry (arg1), a6=sym(EXP_MASK) (`jal` at 0x17344).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=? (`jal` at 0x17374).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1737c).
  At `beq` at 0x1734c (target 0x17360), taken when v0(=ret(screen_nan_sd)) == 0; falls through when v0(=ret(screen_nan_sd)) != 0.
  Returns v0 = ? (`jr` at 0x17358).

- `_div_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1738c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1738c-0x17838 (1196 bytes).
  Stores 4 bytes from a3 to [-0x3fe8]:8 +0x53c  (`sw` at 0x17410).
  Stores 4 bytes from a3 to [-0x3fe8]:8 +0x53c  (`sw` at 0x17668).
  Stores 4 bytes from a5 to [-0x3fe8]:8 +0x53c  (`sw` at 0x17788).
  Calls `breakout_and_test2_sd` via direct with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76 (`jal` at 0x173c8).
  Calls `post_sig` via direct with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=([[-0x3fe8]:8+1340] | 0x10040), a4=[-0x3fe8]:8, a5=0x10040 (`jal` at 0x17428).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x17430).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=?, a6=sym(round), a7=[((a0 << 0x2) + sym(MANTWIDTH))] (`jalr` at 0x17470).
  Calls `(unknown callee)` via register with a0=sp-88, a1=?, a2=?, a3=[((a0 << 0x3) + sym(renorm))]:8, a4=sym(renorm) (`jalr` at 0x175e8).
  Calls `(unknown callee)` via register with a0=sp-72, a1=sym(EXP_BIAS), a2=?, a3=?, a4=sym(renorm) (`jalr` at 0x17624).
  Calls `post_sig` via direct with a0=0x8, a1=?, a2=?, a3=([[-0x3fe8]:8+1340] | 0x8020), a4=[-0x3fe8]:8 (`jal` at 0x17680).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x17688).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=([[-0x3fe8]:8+1340] | 0x10040), a4=[-0x3fe8]:8, a5=0x10040 (`jal` at 0x176a4).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x176ac).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))] (`jal` at 0x176d4).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x176dc).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=[((a0 << 0x2) + sym(SIGN_SHIFT))], a3=? (`jal` at 0x17710).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x17718).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=[((a0 << 0x2) + sym(SIGN_SHIFT))], a3=?, a4=sym(renorm) (`jal` at 0x17754).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1775c).
  Calls `post_sig` via direct with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=?, a5=([[-0x3fe8]:8+1340] | 0x10040), a6=[-0x3fe8]:8, a7=0x10040 (`jal` at 0x177a0).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x177a8).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))], a4=(a0 << 0x3) (`jal` at 0x177ec).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x177f4).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?, a5=([[-0x3fe8]:8+1340] | 0x10040), a6=[-0x3fe8]:8, a7=0x10040 (`jal` at 0x17810).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x17818).
  At `bne` at 0x173d0 (target 0x17478), taken when v0(=ret(breakout_and_test2_sd)) != 0; falls through when v0(=ret(breakout_and_test2_sd)) == 0.
  At `bne` at 0x173ec (target 0x1748c), taken when a1(=[((a0 << 0x2) + sym(EXP_INF))]) != a2(?); falls through when a1(=[((a0 << 0x2) + sym(EXP_INF))]) == a2(?).
  At `bne` at 0x173f4 (target 0x176bc), taken when a1(=[((a0 << 0x2) + sym(EXP_INF))]) != a0(?); falls through when a1(=[((a0 << 0x2) + sym(EXP_INF))]) == a0(?).
  At `beq` at 0x17420 (target 0x17698), taken when (a2(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (a2(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  At `beq` at 0x17440 (target 0x175b4), taken when a5(?) == 0; falls through when a5(?) != 0.
  At `beq` at 0x17450 (target 0x175bc), taken when s0(=a0) == 0; falls through when s0(=a0) != 0.
  At `beq` at 0x1748c (target 0x176ec), taken when a1(=[((a0 << 0x2) + sym(EXP_INF))]) == a0(?); falls through when a1(=[((a0 << 0x2) + sym(EXP_INF))]) != a0(?).
  At `beq` at 0x17494 (target 0x1764c), taken when a0(?) == 0; falls through when a0(?) != 0.
  At `beq` at 0x1749c (target 0x175d0), taken when a2(?) == 0; falls through when a2(?) != 0.
  At `beq` at 0x174d0 (target 0x17614), taken when a0(?) == 0; falls through when a0(?) != 0.
  At `beq` at 0x17508 (target 0x1751c), taken when a5(?) >= a6(?) (unsigned); falls through when a5(?) < a6(?) (unsigned).
  At `bltz` at 0x17528 (target 0x17728), taken when a7(=[((a0 << 0x2) + sym(MANTWIDTH))]) < 0 (signed); falls through when a7(=[((a0 << 0x2) + sym(MANTWIDTH))]) >= 0 (signed).
  At `bne` at 0x17544 (target 0x17594), taken when t0(?) != 0; falls through when t0(?) == 0.
  At `bne` at 0x17554 (target 0x17568), taken when a4(?) != 0; falls through when a4(?) == 0.
  At `bne` at 0x17570 (target 0x17594), taken when t0(?) != 0; falls through when t0(?) == 0.
  At `bne` at 0x1757c (target 0x17538), taken when t1(?) != 0; falls through when t1(?) == 0.
  At `bne` at 0x17598 (target 0x17440), taken when a5(?) < a6(?) (unsigned); falls through when a5(?) >= a6(?) (unsigned).
  At `bne` at 0x175ac (target 0x17448), taken when a5(?) != 0; falls through when a5(?) == 0.
  At `bne` at 0x175b4 (target 0x1745c), taken when s0(=a0) != 0; falls through when s0(=a0) == 0.
  At `beq` at 0x175d0 (target 0x17730), taken when a5(?) == 0; falls through when a5(?) != 0.
  At `bne` at 0x1760c (target 0x174d8), taken when a0(?) != 0; falls through when a0(?) == 0.
  At `bne` at 0x1764c (target 0x1749c), taken when a1(?) != 0; falls through when a1(?) == 0.
  At `beq` at 0x17654 (target 0x1776c), taken when a2(?) == 0; falls through when a2(?) != 0.
  At `beq` at 0x17678 (target 0x177b8), taken when (a2(=[[-0x3fe8]:8+1340]) & 0x400) == 0; falls through when (a2(=[[-0x3fe8]:8+1340]) & 0x400) != 0.
  At `bne` at 0x1776c (target 0x1765c), taken when a3(?) != 0; falls through when a3(?) == 0.
  At `beq` at 0x17798 (target 0x17804), taken when (a4(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (a4(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  Returns v0 = ? (`jr` at 0x17484).

- `ecc_cacheOp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17838 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17838-0x1786c (52 bytes).
  Calls `cacheOP` via direct with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x17848).
  Returns v0 = ? (`jr` at 0x17864).

- `ecc_cacheop_get` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1786c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1786c-0x17890 (36 bytes).
  Stores 8 bytes from a1 to a2 (arg2 at entry) +0x0  (`sd` at 0x1786c).
  Stores 4 bytes from a0 to a2 (arg2 at entry) +0x8  (`sw` at 0x17870).
  Calls `cacheOP` via direct with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1787c).
  Returns v0 = ret(cacheOP) (`jr` at 0x17888).

- `ecc_display` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17890 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17890-0x17c48 (952 bytes).
  Calls `cmn_err_tag` via direct with a0=0xb91, a1=a0 at entry (arg0), a2=sym(type_values), a3=a1 at entry (arg1), a5=sym(type_values), a6=a3 at entry (arg3) (`jal` at 0x17970).
  Calls `cmn_err_tag` via direct with a0=0xb90, a1=a0 at entry (arg0), a2=sym(type_values), a3=a1 at entry (arg1), a5=sym(type_values), a6=a3 at entry (arg3) (`jal` at 0x17a50).
  Calls `cmn_err_tag` via direct with a0=0xb92, a1=a0 at entry (arg0), a2=sym(type_values), a3=a1 at entry (arg1), a5=sym(type_values), a6=a3 at entry (arg3) (`jal` at 0x17b34).
  Calls `cmn_err_tag` via direct with a0=0xb93, a1=a0 at entry (arg0), a2=sym(type_values), a3=a1 at entry (arg1), a5=sym(type_values), a6=a3 at entry (arg3) (`jal` at 0x17c14).
  At `beq` at 0x178ec (target 0x179f0), taken when (t2(=0xffffffffc0000000) & a2) == 0; falls through when (t2(=0xffffffffc0000000) & a2) != 0.
  At `bne` at 0x17904 (target 0x17aa4), taken when a6(?) != t1(=0x40000000); falls through when a6(?) == t1(=0x40000000).
  At `beq` at 0x17988 (target 0x179c0), taken when t9(?) >= 0x2 (signed); falls through when t9(?) < 0x2 (signed).
  At `beq` at 0x179a4 (target 0x17978), taken when a7(?) == 0; falls through when a7(?) != 0.
  At `bne` at 0x179ac (target 0x17944), taken when a0(?) != 0; falls through when a0(?) == 0.
  At `beq` at 0x17a68 (target 0x17a9c), taken when t9(?) >= 0x2 (signed); falls through when t9(?) < 0x2 (signed).
  At `beq` at 0x17a80 (target 0x17a58), taken when a7(?) == 0; falls through when a7(?) != 0.
  At `bne` at 0x17a88 (target 0x17a24), taken when a0(?) != 0; falls through when a0(?) == 0.
  At `bne` at 0x17ab8 (target 0x17b80), taken when a6(?) != t8(=0xffffffff80000000); falls through when a6(?) == t8(=0xffffffff80000000).
  At `beq` at 0x17b48 (target 0x17b78), taken when s4(?) >= 0x2 (signed); falls through when s4(?) < 0x2 (signed).
  At `beq` at 0x17b5c (target 0x17b3c), taken when a7(?) == 0; falls through when a7(?) != 0.
  At `bne` at 0x17b64 (target 0x17b04), taken when a0(?) != 0; falls through when a0(?) == 0.
  At `bne` at 0x17b80 (target 0x179c0), taken when t2(=0xffffffffc0000000) != a6(?); falls through when t2(=0xffffffffc0000000) == a6(?).
  At `beq` at 0x17be0 (target 0x17c1c), taken when a7(?) == 0; falls through when a7(?) != 0.
  At `bne` at 0x17c28 (target 0x17bdc), taken when s4(?) < 0x2 (signed); falls through when s4(?) >= 0x2 (signed).
  Returns v0 = ? (`jr` at 0x179e8).

- `ecc_cleanRegion` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17c48 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17c48-0x17c90 (72 bytes).
  Calls `ecc_cacheOp [0x17838]` via direct with a0=0x17, a1=?, a2=?, a3=? (`jal` at 0x17c68).
  At `blez` at 0x17c5c (target 0x17c7c), taken when a1 <= 0 (signed); falls through when a1 > 0 (signed).
  At `bgtz` at 0x17c74 (target 0x17c64), taken when s1(?) > 0 (signed); falls through when s1(?) <= 0 (signed).
  Returns v0 = ? (`jr` at 0x17c88).

- `ecc_init` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17c90 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17c90-0x17d5c (204 bytes).
  Stores 8 bytes from at to table(sym(cacheErr_frames)) +0x0 (`sd` at 0x17d20).
  Stores 8 bytes from at to ? (base unknown) (`sd` at 0x17d2c).
  Calls `kmem_zalloc` via direct with a0=0x1000, a1=0x900, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x17ca8).
  Calls `ecc_cleanRegion [0x17c48]` via direct with a0=ret(kmem_zalloc), a1=0x1000, a2=?, a3=? (`jal` at 0x17cbc).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+11680, a2=sym(.rodata)+23360, a3=? (`jal` at 0x17d4c).
  At `beq` at 0x17cb0 (target 0x17d30), taken when v0(=ret(kmem_zalloc)) == 0; falls through when v0(=ret(kmem_zalloc)) != 0.
  Returns v0 = ? (`jr` at 0x17d28).

- `ecc_force_cache_line_invalid` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17d5c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17d5c-0x17db0 (84 bytes).
  Calls `cacheOP` via direct with a0=sp-48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x17d88).
  Calls `cacheOP` via direct with a0=sp-48, a1=?, a2=?, a3=? (`jal` at 0x17d98).
  Returns v0 = ret(cacheOP) (`jr` at 0x17da8).

- `cer_to_hex` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17db0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17db0-0x17e54 (164 bytes).
  Stores 1 bytes from t0 to ? (base unknown) (`sb` at 0x17df0).
  Stores 1 bytes from t1 to ? (base unknown) (`sb` at 0x17e10).
  Stores 1 bytes from a6 to ? (base unknown)  (`sb` at 0x17e14).
  Stores 1 bytes from a7 to ? (base unknown)  (`sb` at 0x17e18).
  Stores 1 bytes from t3 to ? (base unknown) (`sb` at 0x17e2c).
  Stores 1 bytes from t8 to ? (base unknown) (`sb` at 0x17e48).
  At `beq` at 0x17df4 (target 0x17e14), taken when a1(?) == 0; falls through when a1(?) != 0.
  At `bne` at 0x17e0c (target 0x17ddc), taken when a1(?) != 0; falls through when a1(?) == 0.
  At `beq` at 0x17e30 (target 0x17e4c), taken when a4(=sp-16) >= a3(?) (unsigned); falls through when a4(=sp-16) < a3(?) (unsigned).
  At `bne` at 0x17e44 (target 0x17e20), taken when a4(=sp-16) < a3(?) (unsigned); falls through when a4(=sp-16) >= a3(?) (unsigned).
  Returns v0 = ? (`jr` at 0x17e4c).

- `ecc_handler` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17e54 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17e54-0x18544 (1776 bytes).
  Stores 4 bytes from s0 to ? (base unknown)  (`sw` at 0x17f08).
  Stores 8 bytes from at to ? (base unknown)  (`sd` at 0x17f10).
  Stores 8 bytes from v1 to ? (base unknown)  (`sd` at 0x1802c).
  Stores 8 bytes from at to ? (base unknown)  (`sd` at 0x18034).
  Stores 4 bytes from ra to a1 (arg1 at entry) +0x238 (`sw` at 0x17f24).
  Stores 8 bytes from zero to a1 (arg1 at entry) +0x8  (`sd` at 0x17f38).
  Stores 8 bytes from zero to a1 (arg1 at entry) +0x10  (`sd` at 0x17f40).
  Stores 8 bytes from v0 to ? (base unknown)  (`sd` at 0x17fb0).
  Stores 8 bytes from v0 to ? (base unknown)  (`sd` at 0x181dc).
  Stores 1 bytes from v1 to abs 0xffffffffffffc6e0  (`sb` at 0x18044).
  Stores 1 bytes from v0 to a1 (arg1 at entry) +0x26  (`sb` at 0x18058).
  Stores 8 bytes from a6 to a0 (arg0 at entry) +0x3b8  (`sd` at 0x18070).
  Stores 8 bytes from t2 to ? (base unknown) (`sd` at 0x1808c).
  Stores 8 bytes from t0 to ? (base unknown) (`sd` at 0x180a0).
  Stores 4 bytes from a3 to a1 (arg1 at entry) +0x28  (`sw` at 0x18128).
  Stores 4 bytes from t8 to a1 (arg1 at entry) +0x2c  (`sw` at 0x18144).
  Stores 4 bytes from t8 to a1 (arg1 at entry) +0x30  (`sw` at 0x18294).
  Stores 4 bytes from t8 to a1 (arg1 at entry) +0x34  (`sw` at 0x182f0).
  Stores 8 bytes from v0 to ? (base unknown)  (`sd` at 0x18494).
  Calls `cer_to_hex` via direct with a0=sym(.rodata)+11680, a1=([a1+24] << 0x0), a2=0x0, a3=a3 at entry (arg3), a5=0x0 (`jal` at 0x17eb0).
  Calls `ecc_cacheOp [0x17838]` via direct with a0=0x4, a1=?, a2=?, a3=? (`jal` at 0x17f94).
  Calls `ecc_cacheOp [0x17838]` via direct with a0=0x0, a1=?, a2=?, a3=? (`jal` at 0x17fe0).
  Calls `ecc_cacheOp [0x17838]` via direct with a0=0x0, a1=?, a2=?, a3=? (`jal` at 0x17ff0).
  Calls `ecc_force_cache_line_invalid` via direct with a0=?, a1=0x0, a2=0x0, a3=? (`jal` at 0x18000).
  Calls `ecc_force_cache_line_invalid` via direct with a0=?, a1=0x1, a2=0x0, a3=? (`jal` at 0x18010).
  Calls `ecc_cacheOp [0x17838]` via direct with a0=0x13, a1=?, a2=?, a3=? (`jal` at 0x180b0).
  Calls `ecc_cacheOp [0x17838]` via direct with a0=0x1, a1=?, a2=0x3, a3=? (`jal` at 0x1818c).
  Calls `ecc_cacheOp [0x17838]` via direct with a0=0x5, a1=?, a2=?, a3=? (`jal` at 0x181bc).
  Calls `maddr_to_dimm` via direct with a0=?, a1=0xc0000000, a2=0x0, a3=0x40000000, a4=0x80000000, a5=0x0 (`jal` at 0x183d8).
  Calls `sprintf` via direct with a0=sym(cacheErr_frames), a1=sym(.rodata)+11680, a2=?, a3=ret(maddr_to_dimm) (`jal` at 0x1841c).
  Calls `ecc_cacheOp [0x17838]` via direct with a0=0x7, a1=?, a2=?, a3=? (`jal` at 0x18480).
  Calls `ecc_cacheOp [0x17838]` via direct with a0=0x3, a1=?, a2=0x3, a3=? (`jal` at 0x184a4).
  Calls `ecc_force_cache_line_invalid` via direct with a0=?, a1=?, a2=0x3, a3=? (`jal` at 0x184b4).
  At `bgez` at 0x17e8c (target 0x17ec0), taken when at(=([a1+24] << 0x22)) >= 0 (signed); falls through when at(=([a1+24] << 0x22)) < 0 (signed).
  At `beq` at 0x17ed4 (target 0x17f28), taken when t8(=[a1+572]) == t9(?); falls through when t8(=[a1+572]) != t9(?).
  At `bne` at 0x17ee0 (target 0x17f00), taken when v0(=[a1+568]) < 0x11 (signed); falls through when v0(=[a1+568]) >= 0x11 (signed).
  At `beq` at 0x17f3c (target 0x180f8), taken when (a1(=0xc0000000) & s0(=[a1+24])) == 0; falls through when (a1(=0xc0000000) & s0(=[a1+24])) != 0.
  At `beq` at 0x17f48 (target 0x1812c), taken when v0(?) == a3(=0x40000000); falls through when v0(?) != a3(=0x40000000).
  At `beq` at 0x17f54 (target 0x18270), taken when v0(?) == a4(=0x80000000); falls through when v0(?) != a4(=0x80000000).
  At `beq` at 0x17f5c (target 0x182e0), taken when a1(=0xc0000000) == v0(?); falls through when a1(=0xc0000000) != v0(?).
  At `bgez` at 0x17f84 (target 0x18020), taken when s8(?) >= 0 (signed); falls through when s8(?) < 0 (signed).
  At `beq` at 0x17fac (target 0x17fdc), taken when s2(?) >= 0x2 (unsigned); falls through when s2(?) < 0x2 (unsigned).
  At `bne` at 0x17fc0 (target 0x17f94), taken when (s0(=[a1+24]) & t9(=one of 0x5500000, 0xaa00000)) != 0; falls through when (s0(=[a1+24]) & t9(=one of 0x5500000, 0xaa00000)) == 0.
  At `bne` at 0x17fd4 (target 0x17fb4), taken when s2(?) < 0x2 (unsigned); falls through when s2(?) >= 0x2 (unsigned).
  At `bltz` at 0x1801c (target 0x18038), taken when s8(?) < 0 (signed); falls through when s8(?) >= 0 (signed).
  At `beq` at 0x18040 (target 0x180a4), taken when s3(?) == 0; falls through when s3(?) != 0.
  At `beq` at 0x18050 (target 0x180a4), taken when v0(=0x2) == a0(=[a1+38]:1); falls through when v0(=0x2) != a0(=[a1+38]:1).
  At `bgtz` at 0x1809c (target 0x18074), taken when a5(?) > 0 (signed); falls through when a5(?) <= 0 (signed).
  At `bne` at 0x180c0 (target 0x180ac), taken when s0(?) < 0x1000 (unsigned); falls through when s0(?) >= 0x1000 (unsigned).
  At `beq` at 0x18140 (target 0x18360), taken when (s7(=0x5500000) & s0(=[a1+24])) == 0; falls through when (s7(=0x5500000) & s0(=[a1+24])) != 0.
  At `beq` at 0x181a0 (target 0x18240), taken when s3(?) >= 0x2 (unsigned); falls through when s3(?) < 0x2 (unsigned).
  At `beq` at 0x181b4 (target 0x18194), taken when (s0(=[a1+24]) & v0(=one of 0x5500000, 0xaa00000)) == 0; falls through when (s0(=[a1+24]) & v0(=one of 0x5500000, 0xaa00000)) != 0.
  At `beq` at 0x181d8 (target 0x181f0), taken when v1(?) == 0; falls through when v1(?) != 0.
  At `beq` at 0x181e8 (target 0x182a0), taken when a2(=0x3) == a0(?); falls through when a2(=0x3) != a0(?).
  At `beq` at 0x181f0 (target 0x18200), taken when a3(?) == 0; falls through when a3(?) != 0.
  At `beq` at 0x181f8 (target 0x182c0), taken when a1(=0x2) == a4(?); falls through when a1(=0x2) != a4(?).
  At `beq` at 0x18200 (target 0x1818c), taken when a5(?) == 0; falls through when a5(?) != 0.
  At `bne` at 0x18210 (target 0x18188), taken when a2(=0x3) != a6(?); falls through when a2(=0x3) == a6(?).
  At `bne` at 0x18218 (target 0x1818c), taken when a1(=0x2) != a7(?); falls through when a1(=0x2) == a7(?).
  At `beq` at 0x182ec (target 0x1839c), taken when (s0(=[a1+24]) & t9(=0x12000000)) == 0; falls through when (s0(=[a1+24]) & t9(=0x12000000)) != 0.
  At `beq` at 0x18300 (target 0x18430), taken when (ra(=[0xffffffffaff10040]:8) & 0x2) == 0; falls through when (ra(=[0xffffffffaff10040]:8) & 0x2) != 0.
  At `beq` at 0x18328 (target 0x183d8), taken when at(?) == v0(?); falls through when at(?) != v0(?).
  At `beq` at 0x1834c (target 0x183bc), taken when a2(=one of 0x0, 0x1) == 0; falls through when a2(=one of 0x0, 0x1) != 0.
  At `bne` at 0x18364 (target 0x18148), taken when (s5(=0xaa00000) & s0(=[a1+24])) != 0; falls through when (s5(=0xaa00000) & s0(=[a1+24])) == 0.
  At `bgez` at 0x1836c (target 0x18510), taken when t9(=([a1+24] << 0x23)) >= 0 (signed); falls through when t9(=([a1+24] << 0x23)) < 0 (signed).
  At `beq` at 0x183c0 (target 0x18450), taken when (s0(=[a1+24]) & t8(=0x3800000)) == 0; falls through when (s0(=[a1+24]) & t8(=0x3800000)) != 0.
  At `bgez` at 0x18450 (target 0x1852c), taken when t8(=([a1+24] << 0x25)) >= 0 (signed); falls through when t8(=([a1+24] << 0x25)) < 0 (signed).
  At `beq` at 0x18490 (target 0x184bc), taken when (a1(?) & 0x3) == 0; falls through when (a1(?) & 0x3) != 0.
  At `beq` at 0x1849c (target 0x18508), taken when a2(=0x3) == a1(?); falls through when a2(=0x3) != a1(?).
  At `beq` at 0x184c8 (target 0x1801c), taken when s5(?) >= 0x2 (unsigned); falls through when s5(?) < 0x2 (unsigned).
  At `bne` at 0x184e4 (target 0x18480), taken when (s0(=[a1+24]) & a4(=one of 0x4000000, 0x8000000)) != 0; falls through when (s0(=[a1+24]) & a4(=one of 0x4000000, 0x8000000)) == 0.
  At `bne` at 0x184f8 (target 0x184d0), taken when s5(?) < 0x2 (unsigned); falls through when s5(?) >= 0x2 (unsigned).
  At `bltz` at 0x1852c (target 0x1845c), taken when t8(=([a1+24] << 0x24)) < 0 (signed); falls through when t8(=([a1+24] << 0x24)) >= 0 (signed).
  Returns v0 = ? (`jr` at 0x180f0).

- `ecc_panic` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18544 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18544-0x185b4 (112 bytes).
  Calls `ecc_display [0x17890]` via direct with a0=0x14, a1=a0 at entry (arg0), a2=[a2+24], a3=[a2]:8, a4=a2+8 (`jal` at 0x1856c).
  Calls `cmn_err` via direct with a0=0x10, a1=sym(.rodata)+11680, a2=a0 at entry (arg0), a3=a1+952, a4=sym(.rodata)+23360 (`jal` at 0x1859c).
  Returns v0 = ret(cmn_err) (`jr` at 0x185ac).

- `ecc_log` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x185b4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x185b4-0x185bc (8 bytes).
  Returns v0 = ? (`jr` at 0x185b4).

- `ecc_printPending` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x185bc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x185bc-0x186ec (304 bytes).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+11680, a1=?, a2=?, a3=? (`jalr` at 0x18650).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+11680, a1=?, a2=?, a3=? (`jalr` at 0x18680).
  At `beq` at 0x18624 (target 0x186b8), taken when s4(?) >= 0x80 (signed); falls through when s4(?) < 0x80 (signed).
  At `beq` at 0x18630 (target 0x18618), taken when a7(?) == 0; falls through when a7(?) != 0.
  At `beq` at 0x18660 (target 0x18618), taken when s1(?) == t0(?); falls through when s1(?) != t0(?).
  At `bne` at 0x186a8 (target 0x1866c), taken when s1(?) != a2(?); falls through when s1(?) == a2(?).
  Returns v0 = ? (`jr` at 0x186d4).

- `ecc_compute_sctag_ecc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x186ec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x186ec-0x1877c (144 bytes).
  Calls `ecc_bitcount` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x18738).
  At `beq` at 0x18748 (target 0x18754), taken when (v0(=ret(ecc_bitcount)) & 0x1) == 0; falls through when (v0(=ret(ecc_bitcount)) & 0x1) != 0.
  At `bne` at 0x18754 (target 0x1872c), taken when a3(?) != 0; falls through when a3(?) == 0.
  Returns v0 = ? (`jr` at 0x18774).

- `scache_data_bit_error` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1877c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1877c-0x188a4 (296 bytes).
  At `beq` at 0x187c0 (target 0x1886c), taken when s2(?) == a4(?); falls through when s2(?) != a4(?).
  At `beq` at 0x187dc (target 0x18874), taken when v0(?) >= 0x88 (signed); falls through when v0(?) < 0x88 (signed).
  At `beq` at 0x1880c (target 0x187c0), taken when a6(?) == 0; falls through when a6(?) != 0.
  At `bne` at 0x18830 (target 0x187fc), taken when t1(?) != 0; falls through when t1(?) == 0.
  At `beq` at 0x18838 (target 0x18854), taken when t3(?) == 0; falls through when t3(?) != 0.
  At `beq` at 0x1885c (target 0x1880c), taken when (v1(?) & t9(?)) == 0; falls through when (v1(?) & t9(?)) != 0.
  Returns v0 = ? (`jr` at 0x18888).

- `ecc_compute_scdata_ecc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x188a4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x188a4-0x18968 (196 bytes).
  Calls `ecc_bitcount` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1890c).
  Calls `ecc_bitcount` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x18930).
  At `beq` at 0x1891c (target 0x18928), taken when (v0(=ret(ecc_bitcount)) & 0x1) == 0; falls through when (v0(=ret(ecc_bitcount)) & 0x1) != 0.
  At `bne` at 0x18928 (target 0x188e8), taken when a4(?) != 0; falls through when a4(?) == 0.
  At `beq` at 0x1894c (target 0x18958), taken when (v0(=ret(ecc_bitcount)) & 0x1) == 0; falls through when (v0(=ret(ecc_bitcount)) & 0x1) != 0.
  Returns v0 = ? (`jr` at 0x18960).

- `ecc_bitcount` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18968 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18968-0x18994 (44 bytes).
  At `beq` at 0x18968 (target 0x18988), taken when a0 == 0; falls through when a0 != 0.
  At `bne` at 0x18978 (target 0x18970), taken when (a0(?) & at(?)) != 0; falls through when (a0(?) & at(?)) == 0.
  Returns v0 = ? (`jr` at 0x18980).
  Returns v0 = 0x0 (`jr` at 0x1898c).

- `ecc_scache_bits_in_error` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18994 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18994-0x189e8 (84 bytes).
  Calls `ecc_bitcount` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x189ac).
  At `beq` at 0x189a0 (target 0x189d8), taken when a0 == 0; falls through when a0 != 0.
  At `beq` at 0x189c0 (target 0x189e0), taken when v0(=ret(ecc_bitcount)) == a1(=0x1); falls through when v0(=ret(ecc_bitcount)) != a1(=0x1).
  At `beq` at 0x189c8 (target 0x189e0), taken when v0(=ret(ecc_bitcount)) == a0(=0x3); falls through when v0(=ret(ecc_bitcount)) != a0(=0x3).
  At `beq` at 0x189d0 (target 0x189e0), taken when v0(=ret(ecc_bitcount)) == a3(=0x5); falls through when v0(=ret(ecc_bitcount)) != a3(=0x5).
  Returns v0 = one of 0x0, 0x1, 0x2 (`jr` at 0x189d8).

- `warn` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x189e8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x189e8-0x18a34 (76 bytes).
  Calls `icmn_err_tag` via direct with a0=0x0, a1=0x14, a2=a0 at entry (arg0), a3=sp-56 (`jal` at 0x18a20).
  Returns v0 = ret(icmn_err_tag) (`jr` at 0x18a2c).

- `engr_dvt_thread` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18a34 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18a34-0x18a74 (64 bytes).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+11680, a2=sym(.rodata)+23360, a3=a3 at entry (arg3) (`jal` at 0x18a58).
  Calls `sthread_exit` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x18a60).
  Returns v0 = ret(sthread_exit) (`jr` at 0x18a6c).

- `dumptlb` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18a74 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18a74-0x18b00 (140 bytes).
  Stores 4 bytes from a3 to ? (base unknown)  (`sw` at 0x18ae8).
  Calls `tlbgetent` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x18ac8).
  At `beq` at 0x18a98 (target 0x18aec), taken when a3(=[sym(tlbdumptbl)]:8) == 0; falls through when a3(=[sym(tlbdumptbl)]:8) != 0.
  At `bne` at 0x18ad8 (target 0x18aac), taken when s0(?) < 0x40 (signed); falls through when s0(?) >= 0x40 (signed).
  Returns v0 = ? (`jr` at 0x18af8).

- `checkAllTlbsDumped` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18b00 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18b00-0x18b9c (156 bytes).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x18b40).
  Calls `printf` via direct with a0=sym(.rodata)+12680, a1=?, a2=?, a3=? (`jal` at 0x18b7c).
  At `beq` at 0x18b10 (target 0x18b8c), taken when at(=[sym(tlbdumptbl)]:8) == 0; falls through when at(=[sym(tlbdumptbl)]:8) != 0.
  At `blez` at 0x18b18 (target 0x18b90), taken when a1(=[sym(maxcpus)]) <= 0 (signed); falls through when a1(=[sym(maxcpus)]) > 0 (signed).
  At `beq` at 0x18b38 (target 0x18b8c), taken when s0(?) >= v0(=[sym(maxcpus)]) (signed); falls through when s0(?) < v0(=[sym(maxcpus)]) (signed).
  At `beq` at 0x18b48 (target 0x18b30), taken when v0(=ret(cpu_enabled)) == 0; falls through when v0(=ret(cpu_enabled)) != 0.
  At `bne` at 0x18b70 (target 0x18b30), taken when a1(?) != 0; falls through when a1(?) == 0.
  Returns v0 = ? (`jr` at 0x18b94).

- `VEC_nofault` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18ba0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18ba0-0x18bb4 (20 bytes).
  Calls `trap_nofault` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3) (`jal` at 0x18ba4).
  Calls `exception_exit` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x18bac).
- `VEC_cpfault` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18bc0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18bc0-0x18f28 (872 bytes).
  Stores 4 bytes from gp to [[-0x3fe8]:8+992]:8 +0x138  (`sw` at 0x18bf4).
  Stores 8 bytes from a2 to ? (base unknown)  (`sd` at 0x18bfc).
  Stores 4 bytes from a1 to [[-0x3ba0]:8+992]:8 +0x130 (`sw` at 0x18c48).
  Stores 4 bytes from $f31 to [[-0x3ba0]:8+992]:8 +0x124  (`swc1` at 0x18c54).
  Stores 4 bytes from $f30 to [[-0x3ba0]:8+992]:8 +0x11c  (`swc1` at 0x18c58).
  Stores 4 bytes from $f29 to [[-0x3ba0]:8+992]:8 +0x114  (`swc1` at 0x18c5c).
  Stores 4 bytes from $f28 to [[-0x3ba0]:8+992]:8 +0x10c  (`swc1` at 0x18c60).
  Stores 4 bytes from $f27 to [[-0x3ba0]:8+992]:8 +0x104  (`swc1` at 0x18c64).
  Stores 4 bytes from $f26 to [[-0x3ba0]:8+992]:8 +0xfc  (`swc1` at 0x18c68).
  Stores 4 bytes from $f25 to [[-0x3ba0]:8+992]:8 +0xf4  (`swc1` at 0x18c6c).
  Stores 4 bytes from $f24 to [[-0x3ba0]:8+992]:8 +0xec  (`swc1` at 0x18c70).
  Stores 4 bytes from $f23 to [[-0x3ba0]:8+992]:8 +0xe4  (`swc1` at 0x18c74).
  Stores 4 bytes from $f22 to [[-0x3ba0]:8+992]:8 +0xdc  (`swc1` at 0x18c78).
  Stores 4 bytes from $f21 to [[-0x3ba0]:8+992]:8 +0xd4  (`swc1` at 0x18c7c).
  Stores 4 bytes from $f20 to [[-0x3ba0]:8+992]:8 +0xcc  (`swc1` at 0x18c80).
  Stores 4 bytes from $f19 to [[-0x3ba0]:8+992]:8 +0xc4  (`swc1` at 0x18c84).
  Stores 4 bytes from $f18 to [[-0x3ba0]:8+992]:8 +0xbc  (`swc1` at 0x18c88).
  Stores 4 bytes from $f17 to [[-0x3ba0]:8+992]:8 +0xb4  (`swc1` at 0x18c8c).
  Stores 4 bytes from $f16 to [[-0x3ba0]:8+992]:8 +0xac  (`swc1` at 0x18c90).
  Stores 4 bytes from $f15 to [[-0x3ba0]:8+992]:8 +0xa4  (`swc1` at 0x18c94).
  Stores 4 bytes from $f14 to [[-0x3ba0]:8+992]:8 +0x9c  (`swc1` at 0x18c98).
  Stores 4 bytes from $f13 to [[-0x3ba0]:8+992]:8 +0x94  (`swc1` at 0x18c9c).
  Stores 4 bytes from $f12 to [[-0x3ba0]:8+992]:8 +0x8c  (`swc1` at 0x18ca0).
  Stores 4 bytes from $f11 to [[-0x3ba0]:8+992]:8 +0x84 (`swc1` at 0x18ca4).
  Stores 4 bytes from $f10 to [[-0x3ba0]:8+992]:8 +0x7c (`swc1` at 0x18ca8).
  Stores 4 bytes from $f9 to [[-0x3ba0]:8+992]:8 +0x74 (`swc1` at 0x18cac).
  Stores 4 bytes from $f8 to [[-0x3ba0]:8+992]:8 +0x6c (`swc1` at 0x18cb0).
  Stores 4 bytes from $f7 to [[-0x3ba0]:8+992]:8 +0x64 (`swc1` at 0x18cb4).
  Stores 4 bytes from $f6 to [[-0x3ba0]:8+992]:8 +0x5c (`swc1` at 0x18cb8).
  Stores 4 bytes from $f5 to [[-0x3ba0]:8+992]:8 +0x54 (`swc1` at 0x18cbc).
  Stores 4 bytes from $f4 to [[-0x3ba0]:8+992]:8 +0x4c (`swc1` at 0x18cc0).
  Stores 4 bytes from $f3 to [[-0x3ba0]:8+992]:8 +0x44 (`swc1` at 0x18cc4).
  Stores 4 bytes from $f2 to [[-0x3ba0]:8+992]:8 +0x3c (`swc1` at 0x18cc8).
  Stores 4 bytes from $f1 to [[-0x3ba0]:8+992]:8 +0x34 (`swc1` at 0x18ccc).
  Stores 4 bytes from $f0 to [[-0x3ba0]:8+992]:8 +0x2c (`swc1` at 0x18cd0).
  Stores 8 bytes from $f31 to [[-0x3ba0]:8+992]:8 +0x120  (`sdc1` at 0x18cdc).
  Stores 8 bytes from $f30 to [[-0x3ba0]:8+992]:8 +0x118  (`sdc1` at 0x18ce0).
  Stores 8 bytes from $f29 to [[-0x3ba0]:8+992]:8 +0x110  (`sdc1` at 0x18ce4).
  Stores 8 bytes from $f28 to [[-0x3ba0]:8+992]:8 +0x108  (`sdc1` at 0x18ce8).
  Stores 8 bytes from $f27 to [[-0x3ba0]:8+992]:8 +0x100  (`sdc1` at 0x18cec).
  Stores 8 bytes from $f26 to [[-0x3ba0]:8+992]:8 +0xf8  (`sdc1` at 0x18cf0).
  Stores 8 bytes from $f25 to [[-0x3ba0]:8+992]:8 +0xf0  (`sdc1` at 0x18cf4).
  Stores 8 bytes from $f24 to [[-0x3ba0]:8+992]:8 +0xe8  (`sdc1` at 0x18cf8).
  Stores 8 bytes from $f23 to [[-0x3ba0]:8+992]:8 +0xe0  (`sdc1` at 0x18cfc).
  Stores 8 bytes from $f22 to [[-0x3ba0]:8+992]:8 +0xd8  (`sdc1` at 0x18d00).
  Stores 8 bytes from $f21 to [[-0x3ba0]:8+992]:8 +0xd0  (`sdc1` at 0x18d04).
  Stores 8 bytes from $f20 to [[-0x3ba0]:8+992]:8 +0xc8  (`sdc1` at 0x18d08).
  Stores 8 bytes from $f19 to [[-0x3ba0]:8+992]:8 +0xc0  (`sdc1` at 0x18d0c).
  Stores 8 bytes from $f18 to [[-0x3ba0]:8+992]:8 +0xb8  (`sdc1` at 0x18d10).
  Stores 8 bytes from $f17 to [[-0x3ba0]:8+992]:8 +0xb0  (`sdc1` at 0x18d14).
  Stores 8 bytes from $f16 to [[-0x3ba0]:8+992]:8 +0xa8  (`sdc1` at 0x18d18).
  Stores 8 bytes from $f15 to [[-0x3ba0]:8+992]:8 +0xa0  (`sdc1` at 0x18d1c).
  Stores 8 bytes from $f14 to [[-0x3ba0]:8+992]:8 +0x98  (`sdc1` at 0x18d20).
  Stores 8 bytes from $f13 to [[-0x3ba0]:8+992]:8 +0x90  (`sdc1` at 0x18d24).
  Stores 8 bytes from $f12 to [[-0x3ba0]:8+992]:8 +0x88  (`sdc1` at 0x18d28).
  Stores 8 bytes from $f11 to [[-0x3ba0]:8+992]:8 +0x80 (`sdc1` at 0x18d2c).
  Stores 8 bytes from $f10 to [[-0x3ba0]:8+992]:8 +0x78 (`sdc1` at 0x18d30).
  Stores 8 bytes from $f9 to [[-0x3ba0]:8+992]:8 +0x70 (`sdc1` at 0x18d34).
  Stores 8 bytes from $f8 to [[-0x3ba0]:8+992]:8 +0x68 (`sdc1` at 0x18d38).
  Stores 8 bytes from $f7 to [[-0x3ba0]:8+992]:8 +0x60 (`sdc1` at 0x18d3c).
  Stores 8 bytes from $f6 to [[-0x3ba0]:8+992]:8 +0x58 (`sdc1` at 0x18d40).
  Stores 8 bytes from $f5 to [[-0x3ba0]:8+992]:8 +0x50 (`sdc1` at 0x18d44).
  Stores 8 bytes from $f4 to [[-0x3ba0]:8+992]:8 +0x48 (`sdc1` at 0x18d48).
  Stores 8 bytes from $f3 to [[-0x3ba0]:8+992]:8 +0x40 (`sdc1` at 0x18d4c).
  Stores 8 bytes from $f2 to [[-0x3ba0]:8+992]:8 +0x38 (`sdc1` at 0x18d50).
  Stores 8 bytes from $f1 to [[-0x3ba0]:8+992]:8 +0x30 (`sdc1` at 0x18d54).
  Stores 8 bytes from $f0 to [[-0x3ba0]:8+992]:8 +0x28 (`sdc1` at 0x18d58).
  Stores 8 bytes from a3 to abs 0xffffffffffffc460  (`sd` at 0x18edc).
  Calls `exception_exit` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[-0x3fe8]:8 (`j` at 0x18ee8).
  Calls `exception_exit` via direct with a0=a0 at entry (arg0), a1=[-0x3fe8]:8, a2=[-0x3ba0]:8, a3=a3 at entry (arg3) (`j` at 0x18ef0).
  Calls `VEC_trap` via direct with a0=a0 at entry (arg0), a1=0x8c, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x18ef8).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.data)+31904, a2=?, a3=? (`jal` at 0x18f20).
  At `beq` at 0x18bc4 (target 0x18f00), taken when (s0 & 0x18) == 0; falls through when (s0 & 0x18) != 0.
  At `bne` at 0x18bdc (target 0x18ef8), taken when a1(?) != at(=0x1); falls through when a1(?) == at(=0x1).
  At `beq` at 0x18c04 (target 0x18ef0), taken when a2(=[-0x3ba0]:8) == a1(=[-0x3fe8]:8); falls through when a2(=[-0x3ba0]:8) != a1(=[-0x3fe8]:8).
  At `beq` at 0x18c0c (target 0x18d5c), taken when a2(=[-0x3ba0]:8) == 0; falls through when a2(=[-0x3ba0]:8) != 0.
  At `beq` at 0x18c20 (target 0x18c2c), taken when (t0(=[[[-0x3ba0]:8+792]:8+156]:1) & 0xc) == 0; falls through when (t0(=[[[-0x3ba0]:8+792]:8+156]:1) & 0xc) != 0.
  At `bne` at 0x18c4c (target 0x18cdc), taken when t0(?) != 0; falls through when t0(?) == 0.
  At `beq` at 0x18d74 (target 0x18d80), taken when (t0(=[[[-0x3fe8]:8+792]:8+156]:1) & 0xc) == 0; falls through when (t0(=[[[-0x3fe8]:8+792]:8+156]:1) & 0xc) != 0.
  At `bne` at 0x18d94 (target 0x18e24), taken when t0(?) != 0; falls through when t0(?) == 0.

- `hwperf_init` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18f28 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18f28-0x19038 (272 bytes).
  Stores 4 bytes from zero to sym(processor_enabled) +0x114  (`sw` at 0x18f4c).
  Stores 4 bytes from zero to sym(pdaindr) +0xf40  (`sw` at 0x18f60).
  Stores 2 bytes from zero to sym(pdaindr) +0xf3e  (`sh` at 0x18f68).
  Stores 2 bytes from a3 to sym(pdaindr) +0xf3c  (`sh` at 0x18f70).
  Stores 8 bytes from zero to sym(pdaindr) +0xf30  (`sd` at 0x18f7c).
  Stores 8 bytes from v0 to ? (base unknown)  (`sd` at 0x18fe0).
  Stores 8 bytes from v0 to sym(sys_hwperf_mon) +0x0  (`sd` at 0x18ffc).
  Calls `spinlock_init` via direct with a0=sym(.bss)+3888, a1=sym(.rodata)+12728, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x18f44).
  Calls `init_mutex` via direct with a0=?, a1=0x0, a2=sym(.rodata)+12728, a3=? (`jal` at 0x18f9c).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x18fb8).
  Calls `hwperf_cpu_monitor_info_alloc [0x1a720]` via direct with a0=?, a1=[sym(maxcpus)], a2=?, a3=? (`jal` at 0x18fc8).
  Calls `hwperf_cpu_monitor_info_alloc [0x1a720]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x18ff0).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+12728, a2=?, a3=? (`jal` at 0x19014).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+12728, a2=?, a3=? (`jal` at 0x19028).
  At `blez` at 0x18f78 (target 0x18fec), taken when a1(=[sym(maxcpus)]) <= 0 (signed); falls through when a1(=[sym(maxcpus)]) > 0 (signed).
  At `beq` at 0x18fb0 (target 0x18fec), taken when s0(?) >= a1(=[sym(maxcpus)]) (signed); falls through when s0(?) < a1(=[sym(maxcpus)]) (signed).
  At `beq` at 0x18fc0 (target 0x18fa8), taken when v0(=ret(cpu_enabled)) == 0; falls through when v0(=ret(cpu_enabled)) != 0.
  At `bne` at 0x18fdc (target 0x18f88), taken when v0(=ret(hwperf_cpu_monitor_info_alloc)) != 0; falls through when v0(=ret(hwperf_cpu_monitor_info_alloc)) == 0.
  At `beq` at 0x18ff8 (target 0x19024), taken when v0(=ret(hwperf_cpu_monitor_info_alloc)) == 0; falls through when v0(=ret(hwperf_cpu_monitor_info_alloc)) != 0.
  Returns v0 = ? (`jr` at 0x1900c).

- `hwperf_enable_sys_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19088 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19088-0x190bc (52 bytes).
  Calls `hwperf_enable_counters` via direct with a0=[sym(sys_hwperf_mon)]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=(a2 | 0x8), a4=a3 at entry (arg3) (`jal` at 0x190a8).
  Returns v0 = ret(hwperf_enable_counters) (`jr` at 0x190b4).

- `hwperf_enable_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x190bc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x190bc-0x19274 (440 bytes).
  Stores 2 bytes from ra to a0 (arg0 at entry) +0x16  (`sh` at 0x191e8).
  Stores 2 bytes from at to a0 (arg0 at entry) +0xc  (`sh` at 0x191ec).
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x18 (`sw` at 0x19204).
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x18 (`sw` at 0x19268).
  Stores 2 bytes from v0 to a0 (arg0 at entry) +0x0  (`sh` at 0x19214).
  Stores 2 bytes from v0 to a0 (arg0 at entry) +0x0  (`sh` at 0x19220).
  Stores 2 bytes from a2 to a0 (arg0 at entry) +0x0 (`sh` at 0x19238).
  Stores 4 bytes from a4 to a4 (arg4 at entry) +0x0  (`sw` at 0x19254).
  Calls `cap_able` via direct with a0=0x2000000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x190ec).
  Calls `mutex_lock` via direct with a0=a0+32, a1=0x19, a2=?, a3=? (`jal` at 0x19150).
  Calls `mutex_unlock` via direct with a0=a0+32, a1=?, a2=?, a3=? (`jal` at 0x19168).
  Calls `hwperf_get_access` via direct with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=? (`jal` at 0x19184).
  Calls `mutex_unlock` via direct with a0=a0+32, a1=?, a2=?, a3=? (`jal` at 0x19194).
  Calls `r1nk_perf_init_counters` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x191b4).
  Calls `hwperf_release_access` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=0x81 (`jal` at 0x191c8).
  Calls `mutex_unlock` via direct with a0=a0+32, a1=?, a2=?, a3=? (`jal` at 0x191d0).
  Calls `hwperf_initiate_startup` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=-0x11, a7=0x81 (`jal` at 0x19234).
  Calls `mutex_unlock` via direct with a0=a0+32, a1=?, a2=?, a3=? (`jal` at 0x19240).
  At `beq` at 0x190f8 (target 0x19108), taken when (s1(=a3) & 0x8) == 0; falls through when (s1(=a3) & 0x8) != 0.
  At `beq` at 0x19100 (target 0x191a4), taken when v0(=ret(cap_able)) == 0; falls through when v0(=ret(cap_able)) != 0.
  At `beq` at 0x19108 (target 0x19178), taken when s3(=a2) == 0; falls through when s3(=a2) != 0.
  At `bltz` at 0x19114 (target 0x19124), taken when v0(=[a1+192]) < 0 (signed); falls through when v0(=[a1+192]) >= 0 (signed).
  At `bne` at 0x1911c (target 0x19148), taken when a1(?) != 0; falls through when a1(?) == 0.
  At `beq` at 0x19160 (target 0x19184), taken when (a2(=[a0]:2) & 0x8) == 0; falls through when (a2(=[a0]:2) & 0x8) != 0.
  At `beq` at 0x1918c (target 0x191ac), taken when v0(=ret(hwperf_get_access)) == 0; falls through when v0(=ret(hwperf_get_access)) != 0.
  At `beq` at 0x191c0 (target 0x191e0), taken when v0(=ret(r1nk_perf_init_counters)) == 0; falls through when v0(=ret(r1nk_perf_init_counters)) != 0.
  At `beq` at 0x191fc (target 0x19258), taken when a0(?) == 0; falls through when a0(?) != 0.
  At `beq` at 0x19210 (target 0x19224), taken when a1(?) == 0; falls through when a1(?) != 0.
  At `bltz` at 0x1925c (target 0x1926c), taken when a2(=[a0+24]) < 0 (signed); falls through when a2(=[a0+24]) >= 0 (signed).
  Returns v0 = ? (`jr` at 0x19140).

- `hwperf_disable_sys_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19274 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19274-0x19290 (28 bytes).
  Calls `hwperf_disable_counters` via direct with a0=[sym(sys_hwperf_mon)]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1927c).
  Returns v0 = ret(hwperf_disable_counters) (`jr` at 0x19288).

- `hwperf_disable_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19290 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19290-0x193b0 (288 bytes).
  Stores 2 bytes from v0 to a0 (arg0 at entry) +0x0 (`sh` at 0x192e8).
  Stores 2 bytes from a1 to ? (base unknown) (`sh` at 0x19320).
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x18  (`sw` at 0x19368).
  Stores 2 bytes from v0 to a0 (arg0 at entry) +0x0  (`sh` at 0x1939c).
  Calls `mutex_lock` via direct with a0=a0+32, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x192b4).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x192fc).
  Calls `hwperf_read_counters` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x19338).
  Calls `hwperf_check_release` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x19340).
  Calls `hwperf_release_access` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x19348).
  Calls `mutex_unlock` via direct with a0=a0+32, a1=?, a2=?, a3=? (`jal` at 0x1936c).
  Calls `mutex_unlock` via direct with a0=a0+32, a1=?, a2=?, a3=? (`jal` at 0x193a0).
  At `beq` at 0x192d8 (target 0x193a0), taken when (v0(=[a0]:2) & 0xf) == 0; falls through when (v0(=[a0]:2) & 0xf) != 0.
  At `beq` at 0x192e4 (target 0x19338), taken when (v0(?) & 0x2) == 0; falls through when (v0(?) & 0x2) != 0.
  At `blez` at 0x192f0 (target 0x19338), taken when a1(=[sym(maxcpus)]) <= 0 (signed); falls through when a1(=[sym(maxcpus)]) > 0 (signed).
  At `beq` at 0x19304 (target 0x19324), taken when v0(=ret(cpu_enabled)) == 0; falls through when v0(=ret(cpu_enabled)) != 0.
  At `bne` at 0x19330 (target 0x192fc), taken when s0(?) < a3(=[sym(maxcpus)]) (signed); falls through when s0(?) >= a3(=[sym(maxcpus)]) (signed).
  At `beq` at 0x19358 (target 0x19398), taken when (v0(=[a0]:2) & 0x40) == 0; falls through when (v0(=[a0]:2) & 0x40) != 0.
  Returns v0 = 0x0 (`jr` at 0x19390).

- `hwperf_parent_accumulates` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x193b0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x193b0-0x193e4 (52 bytes).
  Stores 2 bytes from a3 to a0 (arg0 at entry) +0x0  (`sh` at 0x193c8).
  Stores 4 bytes from a5 to a1 (arg1 at entry) +0x0  (`sw` at 0x193d0).
  Stores 4 bytes from a3 to a1 (arg1 at entry) +0x0  (`sw` at 0x193e0).
  At `beq` at 0x193b0 (target 0x193dc), taken when a0 == 0; falls through when a0 != 0.
  At `beq` at 0x193c0 (target 0x193cc), taken when (a3(=[a0]:2) & 0xf) == 0; falls through when (a3(=[a0]:2) & 0xf) != 0.
  Returns v0 = 0x0 (`jr` at 0x193d4).

- `hwperf_change_sys_control` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x193e4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x193e4-0x19414 (48 bytes).
  Calls `hwperf_change_control` via direct with a0=[sym(sys_hwperf_mon)]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2) (`jal` at 0x19400).
  Returns v0 = ret(hwperf_change_control) (`jr` at 0x1940c).

- `cpumon_alloc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19414 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19414-0x19528 (276 bytes).
  Stores 8 bytes from s3 to a0 (arg0 at entry) +0x478  (`sd` at 0x19460).
  Stores 4 bytes from at to ret(hwperf_cpu_monitor_info_alloc) +0x4  (`sw` at 0x194c4).
  Stores 2 bytes from v0 to ret(hwperf_cpu_monitor_info_alloc) +0x0  (`sh` at 0x194d0).
  Stores 8 bytes from s3 to ? (base unknown)  (`sd` at 0x194d4).
  Calls `hwperf_cpu_monitor_info_alloc [0x1a720]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x19478).
  Calls `mutex_bitlock` via direct with a0=[a0+792]:8+148, a1=0x1, a2=?, a3=? (`jal` at 0x19490).
  Calls `mutex_bitunlock` via direct with a0=[a0+792]:8+148, a1=0x1, a2=ret(mutex_bitlock), a3=? (`jal` at 0x194d8).
  Calls `mutex_bitunlock` via direct with a0=[a0+792]:8+148, a1=0x1, a2=ret(mutex_bitlock), a3=? (`jal` at 0x194ec).
  Calls `hwperf_cpu_monitor_info_free` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x194fc).
  At `beq` at 0x19424 (target 0x19438), taken when v0(=[a0+1144]:8) == 0; falls through when v0(=[a0+1144]:8) != 0.
  At `beq` at 0x1946c (target 0x194e8), taken when s0(=one of 0x0, 0x1) == 0; falls through when s0(=one of 0x0, 0x1) != 0.
  At `beq` at 0x19484 (target 0x19474), taken when v0(=ret(hwperf_cpu_monitor_info_alloc)) == 0; falls through when v0(=ret(hwperf_cpu_monitor_info_alloc)) != 0.
  At `bne` at 0x194a0 (target 0x1946c), taken when t8(=[a0+1144]:8) != 0; falls through when t8(=[a0+1144]:8) == 0.
  At `bne` at 0x194ac (target 0x19460), taken when t9(?) != 0; falls through when t9(?) == 0.
  At `beq` at 0x194f4 (target 0x19508), taken when s1(?) == 0; falls through when s1(?) != 0.
  Returns v0 = [a0+1144]:8 (`jr` at 0x19430).

- `hwperf_change_control` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19528 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19528-0x19584 (92 bytes).
  Calls `hwperf_disable_counters` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1953c).
  Calls `hwperf_enable_counters` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=a2 at entry (arg2), a4=a3 at entry (arg3) (`jal` at 0x19564).
  At `beq` at 0x19544 (target 0x19558), taken when v0(=ret(hwperf_disable_counters)) == 0; falls through when v0(=ret(hwperf_disable_counters)) != 0.
  At `beq` at 0x1956c (target 0x1957c), taken when v0(=ret(hwperf_enable_counters)) == 0; falls through when v0(=ret(hwperf_enable_counters)) != 0.
  Returns v0 = ? (`jr` at 0x19550).

- `hwperf_sys_control_info` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19584 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19584-0x195b4 (48 bytes).
  Calls `hwperf_control_info` via direct with a0=[sym(sys_hwperf_mon)]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2) (`jal` at 0x195a0).
  Returns v0 = ret(hwperf_control_info) (`jr` at 0x195ac).

- `hwperf_control_info` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x195b4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x195b4-0x19704 (336 bytes).
  Stores 2 bytes from a0 to ? (base unknown) (`sh` at 0x19618).
  Stores 2 bytes from a4 to ? (base unknown) (`sh` at 0x1963c).
  Stores 4 bytes from a7 to a2 (arg2 at entry) +0x0  (`sw` at 0x19660).
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0x1967c).
  Stores 4 bytes from t0 to a3 (arg3 at entry) +0x0  (`sw` at 0x196c0).
  Calls `mutex_lock` via direct with a0=a0+32, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x195e4).
  Calls `mutex_unlock` via direct with a0=a0+32, a1=?, a2=0xffffffff80000000, a3=? (`jal` at 0x196bc).
  Calls `mutex_unlock` via direct with a0=a0+32, a1=?, a2=0xffffffff80000000, a3=? (`jal` at 0x196e4).
  At `beq` at 0x195f4 (target 0x196e4), taken when (at(=[a0]:2) & 0xf) == 0; falls through when (at(=[a0]:2) & 0xf) != 0.
  At `blez` at 0x19600 (target 0x19654), taken when v0(=[a0+112]:2) <= 0 (signed); falls through when v0(=[a0+112]:2) > 0 (signed).
  At `beq` at 0x19628 (target 0x19654), taken when v0(?) >= v1(=[a0+112]:2) (signed); falls through when v0(?) < v1(=[a0+112]:2) (signed).
  At `bne` at 0x1964c (target 0x1960c), taken when v0(?) < a3(=[a0+112]:2) (signed); falls through when v0(?) >= a3(=[a0+112]:2) (signed).
  At `beq` at 0x19654 (target 0x196b4), taken when s1(=a2) == 0; falls through when s1(=a2) != 0.
  At `blez` at 0x19668 (target 0x196b0), taken when a6(=[a0+112]:2) <= 0 (signed); falls through when a6(=[a0+112]:2) > 0 (signed).
  At `beq` at 0x1968c (target 0x196b0), taken when v0(?) >= t1(=[a0+112]:2) (signed); falls through when v0(?) < t1(=[a0+112]:2) (signed).
  At `bne` at 0x196a0 (target 0x19678), taken when a7(?) != 0; falls through when a7(?) == 0.
  Returns v0 = one of 0x0, 0x16 (`jr` at 0x196dc).

- `hwperf_get_cpu_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19704 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19704-0x1978c (136 bytes).
  Calls `cpu_enabled` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x16 (`jal` at 0x19740).
  Calls `hwperf_get_counters` via direct with a0=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1744]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a5=sym(pdaindr) (`jal` at 0x19778).
  At `beq` at 0x19724 (target 0x19738), taken when at(=[sym(.bss)+3900]:2) == v0(=0x8); falls through when at(=[sym(.bss)+3900]:2) != v0(=0x8).
  At `beq` at 0x19748 (target 0x19768), taken when v0(=ret(cpu_enabled)) == 0; falls through when v0(=ret(cpu_enabled)) != 0.
  At `bne` at 0x19764 (target 0x19774), taken when a0(=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1744]:8) != 0; falls through when a0(=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1744]:8) == 0.
  Returns v0 = ? (`jr` at 0x19730).

- `hwperf_get_sys_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1978c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1978c-0x197b4 (40 bytes).
  Calls `hwperf_get_counters` via direct with a0=[sym(sys_hwperf_mon)]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3) (`jal` at 0x197a0).
  Returns v0 = ret(hwperf_get_counters) (`jr` at 0x197ac).

- `hwperf_get_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x197b4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x197b4-0x19884 (208 bytes).
  Stores 8 bytes from a7 to ? (base unknown) (`sd` at 0x19814).
  Stores 8 bytes from t0 to ? (base unknown) (`sd` at 0x19838).
  Stores 4 bytes from t2 to a2 (arg2 at entry) +0x0  (`sw` at 0x19868).
  Calls `mutex_lock` via direct with a0=a0+32, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x197dc).
  Calls `hwperf_read_counters` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x197e4).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x19864).
  At `blez` at 0x197f4 (target 0x1985c), taken when at(=[a0+112]:2) <= 0 (signed); falls through when at(=[a0+112]:2) > 0 (signed).
  At `beq` at 0x1981c (target 0x1983c), taken when a6(?) == 0; falls through when a6(?) != 0.
  At `bne` at 0x19854 (target 0x19810), taken when a3(?) < t1(=[a0+112]:2) (signed); falls through when a3(?) >= t1(=[a0+112]:2) (signed).
  Returns v0 = 0x0 (`jr` at 0x1987c).

- `hwperf_plus_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19884 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19884-0x1996c (232 bytes).
  Stores 8 bytes from a3 to ? (base unknown) (`sd` at 0x19904).
  Stores 8 bytes from t8 to ? (base unknown) (`sd` at 0x19914).
  Stores 4 bytes from a0 to a2 (arg2 at entry) +0x0  (`sw` at 0x19948).
  Calls `mutex_lock` via direct with a0=a0+32, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x198b0).
  Calls `hwperf_read_counters` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x198b8).
  Calls `mutex_unlock` via direct with a0=a0+32, a1=?, a2=?, a3=? (`jal` at 0x19954).
  At `blez` at 0x198c4 (target 0x19934), taken when at(=[a0+112]:2) <= 0 (signed); falls through when at(=[a0+112]:2) > 0 (signed).
  At `beq` at 0x198e8 (target 0x19908), taken when t0(?) == 0; falls through when t0(?) != 0.
  At `bne` at 0x1992c (target 0x198e0), taken when a4(?) < t3(=[a0+112]:2) (signed); falls through when a4(?) >= t3(=[a0+112]:2) (signed).
  At `beq` at 0x19940 (target 0x1994c), taken when t9(=[a2]) >= a0(=[a0+24]) (signed); falls through when t9(=[a2]) < a0(=[a0+24]) (signed).
  Returns v0 = ret(mutex_unlock) (`jr` at 0x19964).

- `hwperf_set_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1996c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1996c-0x19a30 (196 bytes).
  Stores 8 bytes from v1 to ? (base unknown) (`sd` at 0x199bc).
  Stores 8 bytes from a2 to ? (base unknown) (`sd` at 0x199e0).
  Stores 4 bytes from a0 to a2 (arg2 at entry) +0x0  (`sw` at 0x19a0c).
  Calls `mutex_lock` via direct with a0=a0+32, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x19998).
  Calls `mutex_unlock` via direct with a0=a0+32, a1=?, a2=?, a3=? (`jal` at 0x19a18).
  At `blez` at 0x199a4 (target 0x199f8), taken when at(=[a0+112]:2) <= 0 (signed); falls through when at(=[a0+112]:2) > 0 (signed).
  At `beq` at 0x199cc (target 0x199f8), taken when a3(?) >= v0(=[a0+112]:2) (signed); falls through when a3(?) < v0(=[a0+112]:2) (signed).
  At `bne` at 0x199f0 (target 0x199b0), taken when a3(?) < a1(=[a0+112]:2) (signed); falls through when a3(?) >= a1(=[a0+112]:2) (signed).
  At `beq` at 0x19a04 (target 0x19a10), taken when a5(=[a2]) >= a0(=[a0+24]) (signed); falls through when a5(=[a2]) < a0(=[a0+24]) (signed).
  Returns v0 = ret(mutex_unlock) (`jr` at 0x19a28).

- `hwperf_setup_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19a30 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19a30-0x19a80 (80 bytes).
  Stores 4 bytes from v1 to a0 (arg0 at entry) +0x18  (`sw` at 0x19a54).
  Stores 2 bytes from v0 to a0 (arg0 at entry) +0x0 (`sh` at 0x19a64).
  Stores 8 bytes from a0 to abs 0xffffffffffffc6d8  (`sd` at 0x19a74).
  Calls `r1nk_perf_start_counters` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x19a70).
  At `beq` at 0x19a40 (target 0x19a70), taken when at(=[sym(.bss)+3900]:2) == v0(=0x4); falls through when at(=[sym(.bss)+3900]:2) != v0(=0x4).
  Returns v0 = ? (`jr` at 0x19a68).

- `hwperf_multiplex_events` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19a80 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19a80-0x19b48 (200 bytes).
  Stores 2 bytes from v0 to ? (base unknown)  (`sh` at 0x19adc).
  Calls `r1nk_perf_update_counters` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x19a8c).
  Calls `hwperf_multiplex_counter_check [0x1a7d4]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x19a94).
  Calls `hwperf_next_event_index_get [0x1a818]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x19ad4).
  Calls `r1nk_perf_start_counters` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x19b28).
  At `beq` at 0x19aa4 (target 0x19b30), taken when v0(=ret(hwperf_multiplex_counter_check)) == 0; falls through when v0(=ret(hwperf_multiplex_counter_check)) != 0.
  At `beq` at 0x19ab4 (target 0x19b34), taken when (at(=[a0]:2) & 0x8) == 0; falls through when (at(=[a0]:2) & 0x8) != 0.
  At `blez` at 0x19ac0 (target 0x19b28), taken when a0(=[a0+48]:2) <= 0 (signed); falls through when a0(=[a0+48]:2) > 0 (signed).
  At `beq` at 0x19af4 (target 0x19b28), taken when s0(?) >= a0(=[a0+48]:2) (signed); falls through when s0(?) < a0(=[a0+48]:2) (signed).
  At `beq` at 0x19b08 (target 0x19ad0), taken when t8(?) >= 0x2 (signed); falls through when t8(?) < 0x2 (signed).
  At `bne` at 0x19b20 (target 0x19afc), taken when s0(?) < a0(=[a0+48]:2) (signed); falls through when s0(?) >= a0(=[a0+48]:2) (signed).
  Returns v0 = ? (`jr` at 0x19b40).

- `hwperf_add_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19b48 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19b48-0x19bc4 (124 bytes).
  Stores 8 bytes from t9 to ? (base unknown) (`scd` at 0x19b9c).
  At `blez` at 0x19b4c (target 0x19bbc), taken when at(=[a0+112]:2) <= 0 (signed); falls through when at(=[a0+112]:2) > 0 (signed).
  At `beq` at 0x19b74 (target 0x19b90), taken when a7(?) == 0; falls through when a7(?) != 0.
  At `beql` at 0x19ba0 (target 0x19b90), taken when t9(?) == 0; falls through when t9(?) != 0.
  At `bne` at 0x19bb4 (target 0x19b5c), taken when a4(?) < t3(=[a0+112]:2) (signed); falls through when a4(?) >= t3(=[a0+112]:2) (signed).
  Returns v0 = ? (`jr` at 0x19bbc).

- `hwperf_fork_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19bc4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19bc4-0x19c84 (192 bytes).
  Stores 2 bytes from a1 to ? (base unknown)  (`sh` at 0x19c28).
  Stores 2 bytes from v0 to ? (base unknown) (`sh` at 0x19c30).
  Stores 4 bytes from a5 to sym(pdaindr) +0xf30  (`sc` at 0x19c54).
  Calls `mutex_lock` via direct with a0=[a0+1144]:8+32, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x19be8).
  Calls `cpumon_alloc` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x19c00).
  Calls `hwperf_copy_cmp` via direct with a0=[a0+1144]:8, a1=ret(cpumon_alloc), a2=?, a3=? (`jal` at 0x19c10).
  Calls `mutex_unlock` via direct with a0=[a0+1144]:8+32, a1=-0x1, a2=?, a3=? (`jal` at 0x19c34).
  Calls `mutex_unlock` via direct with a0=[a0+1144]:8+32, a1=?, a2=?, a3=? (`jal` at 0x19c74).
  At `beq` at 0x19bd8 (target 0x19c60), taken when s0(=[a0+1144]:8) == 0; falls through when s0(=[a0+1144]:8) != 0.
  At `beq` at 0x19bf8 (target 0x19c74), taken when (at(=[[a0+1144]:8]:2) & 0xf) == 0; falls through when (at(=[[a0+1144]:8]:2) & 0xf) != 0.
  At `beql` at 0x19c58 (target 0x19c48), taken when a5(=[sym(.bss)+3888]+1) == 0; falls through when a5(=[sym(.bss)+3888]+1) != 0.
  Returns v0 = ? (`jr` at 0x19c6c).

- `hwperf_sys_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19ca0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19ca0-0x19d5c (188 bytes).
  Stores 2 bytes from v1 to [-0x3928]:8 +0x0 (`sh` at 0x19cd8).
  Stores 4 bytes from v0 to [-0x3928]:8 +0x18  (`sw` at 0x19ce0).
  Stores 8 bytes from a1 to abs 0xffffffffffffc6d8  (`sd` at 0x19cfc).
  Stores 2 bytes from a3 to ? (base unknown) (`sh` at 0x19d1c).
  Stores 4 bytes from t0 to sym(processor_enabled) +0x110 (`sc` at 0x19d48).
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x19ca8).
  Calls `r1nk_perf_update_counters` via direct with a0=[-0x3928]:8, a1=[[-0x3928]:8]:2, a2=-0x9, a3=? (`jal` at 0x19ce4).
  Calls `hwperf_copy_cmp` via direct with a0=a0 at entry (arg0), a1=[-0x3930]:8, a2=?, a3=? (`jal` at 0x19cf8).
  Calls `r1nk_perf_start_counters` via direct with a0=?, a1=?, a2=?, a3=?, a4=-0x3 (`jal` at 0x19d18).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x19d20).
  At `beq` at 0x19cb4 (target 0x19cec), taken when a0(=[-0x3928]:8) == 0; falls through when a0(=[-0x3928]:8) != 0.
  At `beq` at 0x19cc4 (target 0x19ce4), taken when (a1(=[[-0x3928]:8]:2) & 0x8) == 0; falls through when (a1(=[[-0x3928]:8]:2) & 0x8) != 0.
  At `beql` at 0x19d4c (target 0x19d40), taken when (a5(=[sym(.sbss)+272]) & a7(?)) == 0; falls through when (a5(=[sym(.sbss)+272]) & a7(?)) != 0.
  Returns v0 = ret(splx) (`jr` at 0x19d54).

- `hwperf_get_access` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19d5c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19d5c-0x19e4c (240 bytes).
  Stores 2 bytes from a5 to sym(pdaindr) +0xf3c  (`sh` at 0x19e0c).
  Stores 2 bytes from t1 to sym(pdaindr) +0xf3c  (`sh` at 0x19e24).
  Stores 8 bytes from a6 to sym(pdaindr) +0xf30  (`sd` at 0x19e1c).
  Stores 4 bytes from s0 to sym(pdaindr) +0xf30  (`sc` at 0x19e38).
  Calls `mutex_spinlock` via direct with a0=sym(.bss)+3888, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x19d78).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=one of 0x2, 0x8, a7=sym(.bss)+3888 (`jal` at 0x19dbc).
  At `beq` at 0x19da0 (target 0x19dd8), taken when (s0(=a1) & 0x8) == 0; falls through when (s0(=a1) & 0x8) != 0.
  At `beq` at 0x19da8 (target 0x19df0), taken when a4(=[sym(.bss)+3900]:2) == a5(=0x2); falls through when a4(=[sym(.bss)+3900]:2) != a5(=0x2).
  At `beq` at 0x19db0 (target 0x19e0c), taken when a4(=[sym(.bss)+3900]:2) == a6(=0x1); falls through when a4(=[sym(.bss)+3900]:2) != a6(=0x1).
  At `beq` at 0x19dd8 (target 0x19e24), taken when a4(=[sym(.bss)+3900]:2) == t0(=0x1); falls through when a4(=[sym(.bss)+3900]:2) != t0(=0x1).
  At `beq` at 0x19de0 (target 0x19e20), taken when t1(=0x4) == a4(=[sym(.bss)+3900]:2); falls through when t1(=0x4) != a4(=[sym(.bss)+3900]:2).
  At `beq` at 0x19df8 (target 0x19e08), taken when a3(=[sym(.bss)+3888]:8) == a4(=a0); falls through when a3(=[sym(.bss)+3888]:8) != a4(=a0).
  At `beql` at 0x19e3c (target 0x19e2c), taken when s0(=[sym(.bss)+3888]+1) == 0; falls through when s0(=[sym(.bss)+3888]+1) != 0.
  Returns v0 = one of 0x0, 0x10 (`jr` at 0x19dd0).

- `hwperf_check_release` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19e4c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19e4c-0x19fb4 (360 bytes).
  Calls `nano_delay` via direct with a0=sp-48, a1=a1 at entry (arg1), a2=[a0]:2, a3=a3 at entry (arg3) (`jal` at 0x19e8c).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x19efc).
  Calls `nano_delay` via direct with a0=sp-48, a1=?, a2=?, a3=-0x1 (`jal` at 0x19f40).
  Calls `assfail` via direct with a0=sym(.rodata)+12728, a1=sym(.rodata)+12728, a2=0x378, a3=? (`jal` at 0x19f78).
  Calls `assfail` via direct with a0=sym(.rodata)+12728, a1=sym(.rodata)+12728, a2=0x384, a3=-0x1 (`jal` at 0x19f90).
  Calls `assfail` via direct with a0=sym(.rodata)+12728, a1=sym(.rodata)+12728, a2=0x389, a3=?, a4=sym(.rodata)+12728 (`jal` at 0x19fa4).
  At `beq` at 0x19e74 (target 0x19eb0), taken when (a2(=[a0]:2) & 0x1) == 0; falls through when (a2(=[a0]:2) & 0x1) != 0.
  At `beq` at 0x19e84 (target 0x19ea0), taken when v1(=[a0+22]:2) == s0(=-0x1); falls through when v1(=[a0+22]:2) != s0(=-0x1).
  At `bne` at 0x19e98 (target 0x19f6c), taken when a0(=[a0+22]:2) != s0(=-0x1); falls through when a0(=[a0+22]:2) == s0(=-0x1).
  At `beq` at 0x19ec0 (target 0x19f5c), taken when (a2(=[a0]:2) & 0x2) == 0; falls through when (a2(=[a0]:2) & 0x2) != 0.
  At `blez` at 0x19ec8 (target 0x19ea0), taken when a0(=[sym(maxcpus)]) <= 0 (signed); falls through when a0(=[sym(maxcpus)]) > 0 (signed).
  At `bne` at 0x19ee0 (target 0x19f88), taken when a2(=[a0+22]:2) != a3(=-0x1); falls through when a2(=[a0+22]:2) == a3(=-0x1).
  At `beq` at 0x19ef4 (target 0x19f54), taken when s0(?) >= a4(=[sym(maxcpus)]) (signed); falls through when s0(?) < a4(=[sym(maxcpus)]) (signed).
  At `beq` at 0x19f08 (target 0x19ee8), taken when v0(=ret(cpu_enabled)) == 0; falls through when v0(=ret(cpu_enabled)) != 0.
  At `beq` at 0x19f20 (target 0x19eec), taken when a0(?) == 0; falls through when a0(?) != 0.
  At `beq` at 0x19f2c (target 0x19eec), taken when a2(?) == a3(=-0x1); falls through when a2(?) != a3(=-0x1).
  At `bne` at 0x19f38 (target 0x19ed8), taken when a4(?) != 0; falls through when a4(?) == 0.
  At `bne` at 0x19f5c (target 0x19ea0), taken when a3(?) != 0; falls through when a3(?) == 0.
  Returns v0 = ? (`jr` at 0x19ea8).

- `hwperf_release_access` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19fb4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19fb4-0x1a094 (224 bytes).
  Stores 2 bytes from a4 to sym(pdaindr) +0xf3c  (`sh` at 0x1a004).
  Stores 2 bytes from v0 to a0 (arg0 at entry) +0x0 (`sh` at 0x1a010).
  Stores 2 bytes from a6 to a0 (arg0 at entry) +0x0 (`sh` at 0x1a078).
  Stores 8 bytes from zero to sym(pdaindr) +0xf30  (`sd` at 0x1a014).
  Stores 4 bytes from a5 to sym(pdaindr) +0xf30  (`sc` at 0x1a058).
  Stores 2 bytes from t0 to sym(pdaindr) +0xf3c (`sh` at 0x1a090).
  Calls `mutex_spinlock` via direct with a0=sym(.bss)+3888, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x19fd4).
  Calls `mutex_spinunlock` via direct with a0=sym(.bss)+3888, a1=ret(mutex_spinlock), a2=0x1, a3=? (`jal` at 0x1a020).
  At `beq` at 0x19ff8 (target 0x1a038), taken when (a5(=[a0]:2) & 0x2) == 0; falls through when (a5(=[a0]:2) & 0x2) != 0.
  At `beq` at 0x1a044 (target 0x1a018), taken when (a5(=[a0]:2) & 0x1) == 0; falls through when (a5(=[a0]:2) & 0x1) != 0.
  At `beql` at 0x1a05c (target 0x1a04c), taken when a5(=[sym(.bss)+3888]-1) == 0; falls through when a5(=[sym(.bss)+3888]-1) != 0.
  At `beq` at 0x1a064 (target 0x1a07c), taken when a4(=[sym(.bss)+3888]-1) == 0; falls through when a4(=[sym(.bss)+3888]-1) != 0.
  Returns v0 = ret(mutex_spinunlock) (`jr` at 0x1a030).
- `hwperf_find_cpu` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a094 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a094-0x1a12c (152 bytes).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1a0d4).
  At `blez` at 0x1a0b0 (target 0x1a110), taken when at(=[sym(maxcpus)]) <= 0 (signed); falls through when at(=[sym(maxcpus)]) > 0 (signed).
  At `beq` at 0x1a0c8 (target 0x1a114), taken when s0(?) >= a3(=[sym(maxcpus)]) (signed); falls through when s0(?) < a3(=[sym(maxcpus)]) (signed).
  At `beq` at 0x1a0dc (target 0x1a0c0), taken when v0(=ret(cpu_enabled)) == 0; falls through when v0(=ret(cpu_enabled)) != 0.
  At `beq` at 0x1a0f4 (target 0x1a0c0), taken when v0(?) == 0; falls through when v0(?) != 0.
  At `bne` at 0x1a100 (target 0x1a0c0), taken when v1(?) != s1(=a0); falls through when v1(?) == s1(=a0).
  Returns v0 = ? (`jr` at 0x1a124).

- `hwperf_initiate_startup` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a12c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a12c-0x1a288 (348 bytes).
  Stores 4 bytes from zero to sym(processor_enabled) +0x110  (`sw` at 0x1a160).
  Stores 4 bytes from v0 to sym(processor_enabled) +0x110 (`sc` at 0x1a1c4).
  Calls `hwperf_sys_counters` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1a174).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1a194).
  Calls `cpuaction` via direct with a0=?, a1=sym(hwperf_sys_counters), a2=0x1, a3=a0 at entry (arg0) (`jal` at 0x1a1e4).
  Calls `hwperf_find_cpu` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1a240).
  Calls `hwperf_proc_counters` via direct with a0=(ret(hwperf_find_cpu) << 0x30), a1=?, a2=-0x1, a3=[-0x3c60]:2 (`jal` at 0x1a260).
  Calls `cpuaction` via direct with a0=?, a1=sym(hwperf_proc_counters), a2=0x1, a3=[-0x3c60]:2 (`jal` at 0x1a278).
  At `beq` at 0x1a154 (target 0x1a240), taken when (at(=[a0]:2) & 0x2) == 0; falls through when (at(=[a0]:2) & 0x2) != 0.
  At `blez` at 0x1a164 (target 0x1a1f4), taken when v1(=[sym(maxcpus)]) <= 0 (signed); falls through when v1(=[sym(maxcpus)]) > 0 (signed).
  At `beq` at 0x1a188 (target 0x1a1f4), taken when s0(?) >= a0(=[sym(maxcpus)]) (signed); falls through when s0(?) < a0(=[sym(maxcpus)]) (signed).
  At `beq` at 0x1a19c (target 0x1a180), taken when v0(=ret(cpu_enabled)) == 0; falls through when v0(=ret(cpu_enabled)) != 0.
  At `beql` at 0x1a1c8 (target 0x1a1bc), taken when v0(?) == 0; falls through when v0(?) != 0.
  At `beq` at 0x1a1d4 (target 0x1a174), taken when t8(=[-0x3c60]:2) == s0(?); falls through when t8(=[-0x3c60]:2) != s0(?).
  At `beq` at 0x1a1f8 (target 0x1a224), taken when v0(=[sym(.sbss)+272]) == 0; falls through when v0(=[sym(.sbss)+272]) != 0.
  At `beq` at 0x1a204 (target 0x1a224), taken when v1(=[sym(.sbss)+272]) == 0; falls through when v1(=[sym(.sbss)+272]) != 0.
  At `beq` at 0x1a210 (target 0x1a224), taken when a0(=[sym(.sbss)+272]) == 0; falls through when a0(=[sym(.sbss)+272]) != 0.
  At `bne` at 0x1a21c (target 0x1a200), taken when a1(=[sym(.sbss)+272]) != 0; falls through when a1(=[sym(.sbss)+272]) == 0.
  At `beq` at 0x1a24c (target 0x1a228), taken when v0(=ret(hwperf_find_cpu)) == a2(=-0x1); falls through when v0(=ret(hwperf_find_cpu)) != a2(=-0x1).
  At `bne` at 0x1a258 (target 0x1a270), taken when a3(=[-0x3c60]:2) != v0(=ret(hwperf_find_cpu)); falls through when a3(=[-0x3c60]:2) == v0(=ret(hwperf_find_cpu)).
  Returns v0 = ? (`jr` at 0x1a238).

- `hwperf_proc_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a288 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a288-0x1a2f4 (108 bytes).
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1a290).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x1a2cc).
  Calls `hwperf_setup_counters` via direct with a0=[[-0x3fe8]:8+1144]:8, a1=?, a2=?, a3=[-0x3fe8]:8 (`jal` at 0x1a2e4).
  At `beq` at 0x1a29c (target 0x1a2cc), taken when a3(=[-0x3fe8]:8) == 0; falls through when a3(=[-0x3fe8]:8) != 0.
  At `beq` at 0x1a2a8 (target 0x1a2cc), taken when a0(=[[-0x3fe8]:8+1144]:8) == 0; falls through when a0(=[[-0x3fe8]:8+1144]:8) != 0.
  At `beq` at 0x1a2b8 (target 0x1a2cc), taken when (at(=[[[-0x3fe8]:8+1144]:8]:2) & 0x8) == 0; falls through when (at(=[[[-0x3fe8]:8+1144]:8]:2) & 0x8) != 0.
  At `beq` at 0x1a2c4 (target 0x1a2e4), taken when v0(=[-0x3928]:8) == 0; falls through when v0(=[-0x3928]:8) != 0.
  Returns v0 = ret(splx) (`jr` at 0x1a2dc).

- `hwperf_update_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a2f4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a2f4-0x1a338 (68 bytes).
  Stores 4 bytes from a0 to sym(processor_enabled) +0x110 (`sc` at 0x1a324).
  Calls `r1nk_perf_update_counters` via direct with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1a2fc).
  At `beql` at 0x1a328 (target 0x1a31c), taken when (at(=[sym(.sbss)+272]) & v1(?)) == 0; falls through when (at(=[sym(.sbss)+272]) & v1(?)) != 0.
  Returns v0 = sym(.sbss)+272 (`jr` at 0x1a330).

- `hwperf_update_counters_async` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a338 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a338-0x1a37c (68 bytes).
  Stores 4 bytes from a0 to sym(processor_enabled) +0x114 (`sc` at 0x1a368).
  Calls `r1nk_perf_update_counters` via direct with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1a340).
  At `beql` at 0x1a36c (target 0x1a360), taken when (at(=[sym(.sbss)+276]) & v1(?)) == 0; falls through when (at(=[sym(.sbss)+276]) & v1(?)) != 0.
  Returns v0 = sym(.sbss)+276 (`jr` at 0x1a374).

- `hwperf_read_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a37c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a37c-0x1a638 (700 bytes).
  Stores 4 bytes from zero to sym(processor_enabled) +0x110  (`sw` at 0x1a3b8).
  Stores 4 bytes from v0 to sym(processor_enabled) +0x110 (`sc` at 0x1a418).
  Stores 8 bytes from zero to ? (base unknown)  (`sd` at 0x1a494).
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0x1a49c).
  Stores 8 bytes from a6 to ? (base unknown) (`sd` at 0x1a504).
  Stores 4 bytes from t1 to ? (base unknown) (`sw` at 0x1a530).
  Stores 4 bytes from a2 to sym(processor_enabled) +0x114 (`sc` at 0x1a5f0).
  Calls `hwperf_update_counters` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1a3c8).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1a3e8).
  Calls `cpuaction` via direct with a0=?, a1=sym(hwperf_update_counters), a2=0x1, a3=0x0 (`jal` at 0x1a438).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1a568).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1a578).
  Calls `cpuaction` via direct with a0=[a0+22]:2, a1=sym(hwperf_update_counters_async), a2=0x1, a3=0x0, a4=sym(pdaindr) (`jal` at 0x1a618).
  Calls `r1nk_perf_update_counters` via direct with a0=0x0, a1=([a0+22]:2 << 0x4), a2=a2 at entry (arg2), a3=(sym(pdaindr) + ([a0+22]:2 << 0x4)), a4=sym(pdaindr) (`jal` at 0x1a628).
  At `beq` at 0x1a3a8 (target 0x1a5b4), taken when (at(=[a0]:2) & 0x2) == 0; falls through when (at(=[a0]:2) & 0x2) != 0.
  At `blez` at 0x1a3b4 (target 0x1a448), taken when a0(=[sym(maxcpus)]) <= 0 (signed); falls through when a0(=[sym(maxcpus)]) > 0 (signed).
  At `beq` at 0x1a3dc (target 0x1a448), taken when s1(?) >= a0(=[sym(maxcpus)]) (signed); falls through when s1(?) < a0(=[sym(maxcpus)]) (signed).
  At `beq` at 0x1a3f0 (target 0x1a3d4), taken when v0(=ret(cpu_enabled)) == 0; falls through when v0(=ret(cpu_enabled)) != 0.
  At `beql` at 0x1a41c (target 0x1a410), taken when v0(?) == 0; falls through when v0(?) != 0.
  At `beq` at 0x1a428 (target 0x1a3c8), taken when t8(=[-0x3c60]:2) == s1(?); falls through when t8(=[-0x3c60]:2) != s1(?).
  At `beq` at 0x1a450 (target 0x1a47c), taken when v0(=[sym(.sbss)+272]) == 0; falls through when v0(=[sym(.sbss)+272]) != 0.
  At `beq` at 0x1a45c (target 0x1a47c), taken when v1(=[sym(.sbss)+272]) == 0; falls through when v1(=[sym(.sbss)+272]) != 0.
  At `beq` at 0x1a468 (target 0x1a47c), taken when a2(=[sym(.sbss)+272]) == 0; falls through when a2(=[sym(.sbss)+272]) != 0.
  At `bne` at 0x1a474 (target 0x1a458), taken when a3(=[sym(.sbss)+272]) != 0; falls through when a3(=[sym(.sbss)+272]) == 0.
  At `blez` at 0x1a47c (target 0x1a4b8), taken when a1(=[a0+112]:2) <= 0 (signed); falls through when a1(=[a0+112]:2) > 0 (signed).
  At `bne` at 0x1a4ac (target 0x1a488), taken when a1(?) < a4(=[a0+112]:2) (signed); falls through when a1(?) >= a4(=[a0+112]:2) (signed).
  At `blez` at 0x1a4b8 (target 0x1a594), taken when a0(=[sym(maxcpus)]) <= 0 (signed); falls through when a0(=[sym(maxcpus)]) > 0 (signed).
  At `blez` at 0x1a4d8 (target 0x1a554), taken when a0(=[a0+112]:2) <= 0 (signed); falls through when a0(=[a0+112]:2) > 0 (signed).
  At `beq` at 0x1a514 (target 0x1a534), taken when a5(?) == 0; falls through when a5(?) != 0.
  At `bne` at 0x1a548 (target 0x1a4f8), taken when a1(?) < t8(=[a0+112]:2) (signed); falls through when a1(?) >= t8(=[a0+112]:2) (signed).
  At `beq` at 0x1a55c (target 0x1a594), taken when s1(?) >= t9(=[sym(maxcpus)]) (signed); falls through when s1(?) < t9(=[sym(maxcpus)]) (signed).
  At `beq` at 0x1a570 (target 0x1a554), taken when v0(=ret(cpu_enabled)) == 0; falls through when v0(=ret(cpu_enabled)) != 0.
  At `bne` at 0x1a584 (target 0x1a4c8), taken when v0(=ret(cpu_enabled)) != 0; falls through when v0(=ret(cpu_enabled)) == 0.
  At `beq` at 0x1a5c8 (target 0x1a594), taken when a0(=[a0+22]:2) == t8(=-0x1); falls through when a0(=[a0+22]:2) != t8(=-0x1).
  At `beq` at 0x1a5d4 (target 0x1a628), taken when t9(=[-0x3c60]:2) == a0(=[a0+22]:2); falls through when t9(=[-0x3c60]:2) != a0(=[a0+22]:2).
  At `beql` at 0x1a5f4 (target 0x1a5e8), taken when a2(?) == 0; falls through when a2(?) != 0.
  At `bne` at 0x1a60c (target 0x1a594), taken when (ra(=[sym(.sbss)+276]) & at(?)) != 0; falls through when (ra(=[sym(.sbss)+276]) & at(?)) == 0.
  Returns v0 = ? (`jr` at 0x1a5ac).

- `hwperf_copy_cmp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a638 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a638-0x1a6f4 (188 bytes).
  Stores 4 bytes from a7 to ? (base unknown) (`sw` at 0x1a654).
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0x1a668).
  Stores 8 bytes from zero to ? (base unknown)  (`sd` at 0x1a670).
  Stores 2 bytes from v1 to ? (base unknown) (`sh` at 0x1a67c).
  Stores 4 bytes from t1 to a1 (arg1 at entry) +0x18  (`sw` at 0x1a69c).
  Stores 2 bytes from a7 to a1 (arg1 at entry) +0xc  (`sh` at 0x1a6ac).
  Stores 2 bytes from at to ? (base unknown) (`sh` at 0x1a6c0).
  Stores 2 bytes from t9 to ? (base unknown) (`sh` at 0x1a6c8).
  Stores 2 bytes from t3 to ? (base unknown) (`sh` at 0x1a6d0).
  Stores 2 bytes from t9 to a1 (arg1 at entry) +0x0  (`sh` at 0x1a6f0).
  At `blez` at 0x1a63c (target 0x1a694), taken when at(=[a1+112]:2) <= 0 (signed); falls through when at(=[a1+112]:2) > 0 (signed).
  At `bne` at 0x1a68c (target 0x1a648), taken when a3(?) < v0(=[a1+112]:2) (signed); falls through when a3(?) >= v0(=[a1+112]:2) (signed).
  At `blez` at 0x1a6a8 (target 0x1a6e8), taken when t0(=[a1+48]:2) <= 0 (signed); falls through when t0(=[a1+48]:2) > 0 (signed).
  At `bne` at 0x1a6e0 (target 0x1a6b4), taken when a3(?) < t2(=[a1+48]:2) (signed); falls through when a3(?) >= t2(=[a1+48]:2) (signed).
  Returns v0 = ? (`jr` at 0x1a6ec).

- `hwperf_arch_nosupport` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a6f4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a6f4-0x1a6fc (8 bytes).
  Returns v0 = 0x59 (`jr` at 0x1a6f4).

- `hwperf_arch_fatal` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a6fc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a6fc-0x1a720 (36 bytes).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+12728, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1a70c).
  Returns v0 = ret(cmn_err) (`jr` at 0x1a718).

- `hwperf_cpu_monitor_info_alloc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a720 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a720-0x1a7b0 (144 bytes).
  Stores 2 bytes from v0 to ret(kmem_zalloc) +0x70  (`sh` at 0x1a74c).
  Stores 2 bytes from at to ret(kmem_zalloc) +0x30  (`sh` at 0x1a758).
  Stores 4 bytes from v0 to ret(kmem_zalloc) +0x8  (`sw` at 0x1a75c).
  Stores 4 bytes from v0 to ret(kmem_zalloc) +0x10 (`sw` at 0x1a77c).
  Stores 8 bytes from v1 to ret(kmem_zalloc) +0x38  (`sd` at 0x1a784).
  Stores 8 bytes from v1 to ret(kmem_zalloc) +0x40  (`sd` at 0x1a78c).
  Stores 2 bytes from a0 to ret(kmem_zalloc) +0x14  (`sh` at 0x1a790).
  Calls `kmem_zalloc` via direct with a0=0x2b8, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1a730).
  Calls `r1nk_perf_architecture` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1a754).
  At `bne` at 0x1a738 (target 0x1a748), taken when v0(=ret(kmem_zalloc)) != 0; falls through when v0(=ret(kmem_zalloc)) == 0.
  At `beq` at 0x1a764 (target 0x1a7a8), taken when a2(=[-0x3fe8]:8) == 0; falls through when a2(=[-0x3fe8]:8) != 0.
  At `beq` at 0x1a770 (target 0x1a7a8), taken when a3(=[[-0x3fe8]:8+752]:8) == 0; falls through when a3(=[[-0x3fe8]:8+752]:8) != 0.
  Returns v0 = ? (`jr` at 0x1a7a0).

- `hwperf_cpu_monitor_info_free` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a7b0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a7b0-0x1a7d4 (36 bytes).
  Calls `kern_free` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1a7c4).
  At `bne` at 0x1a7b4 (target 0x1a7c4), taken when a0 != 0; falls through when a0 == 0.
  Returns v0 = ? (`jr` at 0x1a7bc).

- `hwperf_multiplex_counter_check` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a7d4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a7d4-0x1a818 (68 bytes).
  At `blez` at 0x1a7d8 (target 0x1a804), taken when a4(=[a0+48]:2) <= 0 (signed); falls through when a4(=[a0+48]:2) > 0 (signed).
  At `beq` at 0x1a7f4 (target 0x1a810), taken when at(?) >= 0x2 (signed); falls through when at(?) < 0x2 (signed).
  At `bne` at 0x1a7fc (target 0x1a7e4), taken when a3(?) != 0; falls through when a3(?) == 0.
  Returns v0 = 0x0 (`jr` at 0x1a808).
  Returns v0 = 0x1 (`jr` at 0x1a810).

- `hwperf_next_event_index_get` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a818 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a818-0x1a890 (120 bytes).
  At `beq` at 0x1a86c (target 0x1a880), taken when (a5(=[(a0 + (a1 << 0x3))+56]:8) & t0(?)) == 0; falls through when (a5(=[(a0 + (a1 << 0x3))+56]:8) & t0(?)) != 0.
  At `bne` at 0x1a878 (target 0x1a888), taken when v1(?) != 0; falls through when v1(?) == 0.
  At `bne` at 0x1a880 (target 0x1a848), taken when a6(=[(a0 + (a1 + a1))+96]:2) != v0(?); falls through when a6(=[(a0 + (a1 + a1))+96]:2) == v0(?).
  Returns v0 = ? (`jr` at 0x1a888).

- `r1nk_perf_update_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1ab50 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1ab50-0x1acc4 (372 bytes).
  Stores 4 bytes from v0 to ? (base unknown)  (`sw` at 0x1aba8).
  Stores 8 bytes from at to ? (base unknown) (`scd` at 0x1ac40).
  Stores 2 bytes from v0 to ? (base unknown) (`sh` at 0x1aca8).
  Stores 8 bytes from zero to abs 0xffffffffffffc6d8  (`sd` at 0x1acb0).
  Calls `r1nk_perf_check_architecture` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1ab70).
  Calls `r1nkperf_data_register_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1ab8c).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1ac08).
  Calls `r1nkperf_data_register_set` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x1ac4c).
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1ac5c).
  Calls `r1nk_perf_stop_counters` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1ac8c).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x1acb4).
  At `beq` at 0x1ab64 (target 0x1ac5c), taken when a0 == 0; falls through when a0 != 0.
  At `blez` at 0x1ab7c (target 0x1abf0), taken when v0(?) <= 0 (signed); falls through when v0(?) > 0 (signed).
  At `beq` at 0x1aba0 (target 0x1ac28), taken when at(?) == 0; falls through when at(?) != 0.
  At `beq` at 0x1abc0 (target 0x1abf0), taken when s0(?) >= v0(?) (signed); falls through when s0(?) < v0(?) (signed).
  At `bgez` at 0x1abd0 (target 0x1ab8c), taken when s2(?) >= 0 (signed); falls through when s2(?) < 0 (signed).
  At `bne` at 0x1abe8 (target 0x1abc8), taken when s0(?) < v0(?) (signed); falls through when s0(?) >= v0(?) (signed).
  At `beq` at 0x1abf8 (target 0x1ac8c), taken when (t8(?) & 0x8) == 0; falls through when (t8(?) & 0x8) != 0.
  At `beq` at 0x1ac00 (target 0x1ac10), taken when s3(=one of 0x0, 0x1) == 0; falls through when s3(=one of 0x0, 0x1) != 0.
  At `beql` at 0x1ac44 (target 0x1ac34), taken when at(?) == 0; falls through when at(?) != 0.
  At `beq` at 0x1ac6c (target 0x1acb4), taken when s1(=[-0x3928]:8) == 0; falls through when s1(=[-0x3928]:8) != 0.
  At `beq` at 0x1ac7c (target 0x1acb4), taken when (at(=[[-0x3928]:8]:2) & 0xf) == 0; falls through when (at(=[[-0x3928]:8]:2) & 0xf) != 0.
  At `beq` at 0x1aca0 (target 0x1acac), taken when (v0(?) & 0x4) == 0; falls through when (v0(?) & 0x4) != 0.
  Returns v0 = ? (`jr` at 0x1ac20).

- `r1nk_perf_start_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1acc4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1acc4-0x1ae40 (380 bytes).
  Stores 2 bytes from a2 to a0 (arg0 at entry) +0x16  (`sh` at 0x1ad28).
  Calls `getsr` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1acd0).
  Calls `issplhi` via direct with a0=(ret(getsr) << 0x0), a1=?, a2=?, a3=? (`jal` at 0x1acd8).
  Calls `r1nk_perf_check_architecture` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1ad04).
  Calls `r1nkperf_control_register_set` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1ad38).
  Calls `r1nkperf_data_register_set` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1ad58).
  Calls `assfail` via direct with a0=sym(.rodata)+12952, a1=sym(.rodata)+12952, a2=0x119, a3=? (`jal` at 0x1ae30).
  At `beq` at 0x1acec (target 0x1ae24), taken when v0(=ret(issplhi)) == 0; falls through when v0(=ret(issplhi)) != 0.
  At `beq` at 0x1acfc (target 0x1ae00), taken when (at(=[a0]:2) & 0x8) == 0; falls through when (at(=[a0]:2) & 0x8) != 0.
  At `blez` at 0x1ad24 (target 0x1adfc), taken when a0(=[a0+48]:2) <= 0 (signed); falls through when a0(=[a0+48]:2) > 0 (signed).
  At `beq` at 0x1ad4c (target 0x1ae1c), taken when a3(?) == 0; falls through when a3(?) != 0.
  At `beq` at 0x1ad74 (target 0x1adfc), taken when s0(?) >= a0(=[a0+48]:2) (signed); falls through when s0(?) < a0(=[a0+48]:2) (signed).
  At `bltz` at 0x1ad84 (target 0x1ade4), taken when s2(?) < 0 (signed); falls through when s2(?) >= 0 (signed).
  At `beq` at 0x1ad98 (target 0x1ada4), taken when a1(?) == s3(=0xe); falls through when a1(?) != s3(=0xe).
  At `bne` at 0x1ada0 (target 0x1ad34), taken when a1(?) != s4(=0xf); falls through when a1(?) == s4(=0xf).
  At `bne` at 0x1ada8 (target 0x1ad34), taken when s0(?) != a2(=0x1); falls through when s0(?) == a2(=0x1).
  At `bne` at 0x1adf4 (target 0x1ad7c), taken when s0(?) < a0(=[a0+48]:2) (signed); falls through when s0(?) >= a0(=[a0+48]:2) (signed).
  Returns v0 = ? (`jr` at 0x1ae14).

- `r1nk_perf_stop_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1ae40 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1ae40-0x1aed8 (152 bytes).
  Stores 2 bytes from v0 to a0 (arg0 at entry) +0x16  (`sh` at 0x1ae74).
  Calls `getsr` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1ae4c).
  Calls `issplhi` via direct with a0=(ret(getsr) << 0x0), a1=?, a2=?, a3=? (`jal` at 0x1ae54).
  Calls `r1nk_perf_check_architecture` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1ae64).
  Calls `r1nkperf_control_register_set` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x1ae88).
  Calls `assfail` via direct with a0=sym(.rodata)+12952, a1=sym(.rodata)+12952, a2=0x15e, a3=? (`jal` at 0x1aec8).
  At `beq` at 0x1ae5c (target 0x1aec0), taken when v0(=ret(issplhi)) == 0; falls through when v0(=ret(issplhi)) != 0.
  At `blez` at 0x1ae78 (target 0x1aeac), taken when at(=[a0+48]:2) <= 0 (signed); falls through when at(=[a0+48]:2) > 0 (signed).
  At `bne` at 0x1aea4 (target 0x1ae88), taken when s0(?) < v1(=[a0+48]:2) (signed); falls through when s0(?) >= v1(=[a0+48]:2) (signed).
  Returns v0 = ? (`jr` at 0x1aeb8).

- `r1nk_perf_init_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1aed8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1aed8-0x1b130 (600 bytes).
  4 such stores of 2 bytes through a5 (?) to ? (base unknown) , including `sh` at 0x1af34, 0x1af3c, 0x1af5c.
  Stores 2 bytes from a5 to ? (base unknown) (`sh` at 0x1afd8).
  Stores 2 bytes from zero to ? (base unknown)  (`sh` at 0x1afe0).
  Stores 4 bytes from zero to ? (base unknown)  (`sw` at 0x1afec).
  Stores 8 bytes from t2 to ? (base unknown) (`sd` at 0x1affc).
  Stores 2 bytes from a5 to ? (base unknown) (`sh` at 0x1b044).
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0x1b04c).
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0x1b050).
  Stores 2 bytes from a7 to ? (base unknown) (`sh` at 0x1b078).
  Stores 2 bytes from v1 to ? (base unknown) (`sh` at 0x1b080).
  Stores 2 bytes from a7 to ? (base unknown) (`sh` at 0x1b0c8).
  Calls `cap_able` via direct with a0=0x2000000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1aefc).
  At `blez` at 0x1af24 (target 0x1af80), taken when a1(=[a0+48]:2) <= 0 (signed); falls through when a1(=[a0+48]:2) > 0 (signed).
  At `beq` at 0x1af50 (target 0x1af80), taken when a4(?) >= a2(=[a0+48]:2) (signed); falls through when a4(?) < a2(=[a0+48]:2) (signed).
  At `bne` at 0x1af78 (target 0x1af30), taken when a4(?) < a6(=[a0+48]:2) (signed); falls through when a4(?) >= a6(=[a0+48]:2) (signed).
  At `blez` at 0x1af88 (target 0x1b0fc), taken when a6(=[a0+112]:2) <= 0 (signed); falls through when a6(=[a0+112]:2) > 0 (signed).
  At `beq` at 0x1afb8 (target 0x1b0fc), taken when a7(?) >= t0(=[a0+112]:2) (signed); falls through when a7(?) < t0(=[a0+112]:2) (signed).
  At `beq` at 0x1b000 (target 0x1af98), taken when a5(?) == 0; falls through when a5(?) != 0.
  At `beq` at 0x1b010 (target 0x1b01c), taken when (a5(?) & 0x2) == 0; falls through when (a5(?) & 0x2) != 0.
  At `beq` at 0x1b018 (target 0x1b104), taken when v0(=ret(cap_able)) == 0; falls through when v0(=ret(cap_able)) != 0.
  At `bltz` at 0x1b020 (target 0x1b0d4), taken when t2(?) < 0 (signed); falls through when t2(?) >= 0 (signed).
  At `beq` at 0x1b028 (target 0x1b0d4), taken when a6(?) == 0; falls through when a6(?) != 0.
  At `beq` at 0x1b030 (target 0x1b0d4), taken when t8(?) == 0; falls through when t8(?) != 0.
  At `bltz` at 0x1b038 (target 0x1b0d4), taken when a4(?) < 0 (signed); falls through when a4(?) >= 0 (signed).
  At `beq` at 0x1b040 (target 0x1b0cc), taken when a4(?) == 0; falls through when a4(?) != 0.
  At `blez` at 0x1b064 (target 0x1af98), taken when a6(=[a0+48]:2) <= 0 (signed); falls through when a6(=[a0+48]:2) > 0 (signed).
  At `beq` at 0x1b090 (target 0x1af98), taken when a4(?) >= a6(=[a0+48]:2) (signed); falls through when a4(?) < a6(=[a0+48]:2) (signed).
  At `beq` at 0x1b0b0 (target 0x1b088), taken when (a3(?) & t0(?)) == 0; falls through when (a3(?) & t0(?)) != 0.
  At `bne` at 0x1b0bc (target 0x1b074), taken when a6(?) != t3(=-0x1); falls through when a6(?) == t3(=-0x1).
  Returns v0 = one of 0x0, 0x1, 0x16 (`jr` at 0x1b0f4).

- `r1nk_perf_architecture` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b130 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b130-0x1b1a4 (116 bytes).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+12952, a2=[-0x3c60]:2, a3=[-0x3c04], a4=0x9, a5=0x2 (`jal` at 0x1b194).
  At `beq` at 0x1b154 (target 0x1b180), taken when v0(?) == at(=0xe); falls through when v0(?) != at(=0xe).
  At `beq` at 0x1b15c (target 0x1b180), taken when v0(?) == a2(=0xf); falls through when v0(?) != a2(=0xf).
  At `bne` at 0x1b164 (target 0x1b188), taken when v0(?) != a4(=0x9); falls through when v0(?) == a4(=0x9).
  Returns v0 = ? (`jr` at 0x1b178).

- `r1nk_perf_check_architecture` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b1a4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b1a4-0x1b228 (132 bytes).
  Stores 4 bytes from v1 to a0 (arg0 at entry) +0x4  (`sw` at 0x1b1fc).
  Calls `r1nk_perf_architecture` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1b1b0).
  Calls `signal` via direct with a0=[a0+16], a1=[a0+20]:2, a2=[a0+20]:2, a3=? (`jal` at 0x1b1ec).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+12952, a2=[a0+20]:2, a3=[a0+16] (`jal` at 0x1b218).
  At `beq` at 0x1b1bc (target 0x1b200), taken when at(=[a0+8]) == v0(=ret(r1nk_perf_architecture)); falls through when at(=[a0+8]) != v0(=ret(r1nk_perf_architecture)).
  At `beq` at 0x1b1c8 (target 0x1b204), taken when a2(=[a0+20]:2) == 0; falls through when a2(=[a0+20]:2) != 0.
  At `bne` at 0x1b1d8 (target 0x1b204), taken when (v0(=[a0+4]) & 0x1) != 0; falls through when (v0(=[a0+4]) & 0x1) == 0.
  At `bne` at 0x1b1e0 (target 0x1b210), taken when a0(=[sym(perfcnt_arch_swtch_msg)]) != 0; falls through when a0(=[sym(perfcnt_arch_swtch_msg)]) == 0.
  Returns v0 = ? (`jr` at 0x1b208).

- `mul64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b230 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b230-0x1b248 (24 bytes).
  Stores 8 bytes from v0 to a2 (arg2 at entry) +0x0 (`sd` at 0x1b238).
  Returns v0 = ? (`jr` at 0x1b240).

- `madd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b248 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b248-0x1b818 (1488 bytes).
  Stores 4 bytes from t3 to [-0x3fe8]:8 +0x53c  (`sw` at 0x1b2cc).
  Stores 4 bytes from a6 to [-0x3fe8]:8 +0x53c  (`sw` at 0x1b36c).
  Stores 4 bytes from t0 to [-0x3fe8]:8 +0x53c  (`sw` at 0x1b508).
  Calls `post_sig` via direct with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=sym(EXP_SHIFT) (`jal` at 0x1b2e4).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b2ec).
  Calls `post_sig` via direct with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=?, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8 (`jal` at 0x1b384).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b38c).
  Calls `mul64` via direct with a0=?, a1=?, a2=sp-144, a3=? (`jal` at 0x1b424).
  Calls `renorm_d` via direct with a0=sp-152, a1=?, a2=?, a3=? (`jal` at 0x1b434).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=?, a6=[((a0 << 0x3) + sym(maddrnd))]:8 (`jalr` at 0x1b47c).
  Calls `breakout_sd` via direct with a0=a0 at entry (arg0), a1=sp-160, a2=sp-52, a3=sp-44, a4=sp-40 (`jal` at 0x1b49c).
  Calls `add` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=a7 at entry (arg7) (`jal` at 0x1b4bc).
  Calls `post_sig` via direct with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=? (`jal` at 0x1b520).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b528).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))] (`jal` at 0x1b56c).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b574).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=[((a0 << 0x2) + sym(SIGN_SHIFT))], a3=[[-0x3fe8]:8+1352]:1, a4=0x3 (`jal` at 0x1b5e4).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b5ec).
  Calls `(unknown callee)` via register with a0=sp-40, a1=a1 at entry (arg1), a2=[((a0 << 0x3) + sym(renorm))]:8, a3=? (`jalr` at 0x1b61c).
  Calls `(unknown callee)` via register with a0=sp-16, a1=sym(EXP_BIAS), a2=sym(renorm), a3=? (`jalr` at 0x1b650).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=sym(EXP_SHIFT) (`jal` at 0x1b67c).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b684).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8 (`jal` at 0x1b6b0).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b6b8).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(EXP_SHIFT))], a4=[((a0 << 0x2) + sym(SIGN_SHIFT))] (`jal` at 0x1b6f0).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b6f8).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))], a4=((a0 << 0x2) + sym(SIGN_SHIFT)) (`jal` at 0x1b734).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b73c).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(EXP_SHIFT))], a4=[((a0 << 0x2) + sym(SIGN_SHIFT))] (`jal` at 0x1b778).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b780).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=? (`jal` at 0x1b79c).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b7a4).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[((a0 << 0x2) + sym(EXP_SHIFT))], a5=[((a0 << 0x2) + sym(SIGN_SHIFT))] (`jal` at 0x1b7e8).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b7f0).
  At `bne` at 0x1b298 (target 0x1b2fc), taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a2; falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a2.
  At `bne` at 0x1b2a0 (target 0x1b338), taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a5; falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a5.
  At `bne` at 0x1b2a8 (target 0x1b708), taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a2(?); falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a2(?).
  At `beq` at 0x1b2b0 (target 0x1b6c8), taken when a3(?) == a7; falls through when a3(?) != a7.
  At `beq` at 0x1b2dc (target 0x1b674), taken when (t2(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (t2(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  At `bne` at 0x1b2fc (target 0x1b338), taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a5; falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a5.
  At `bne` at 0x1b338 (target 0x1b39c), taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != t2(?); falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == t2(?).
  At `bne` at 0x1b340 (target 0x1b4e4), taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a2(?); falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a2(?).
  At `beq` at 0x1b348 (target 0x1b694), taken when s0(?) == 0; falls through when s0(?) != 0.
  At `beq` at 0x1b350 (target 0x1b74c), taken when s4(=a7) == a4(?); falls through when s4(=a7) != a4(?).
  At `beq` at 0x1b37c (target 0x1b6a4), taken when (a5(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (a5(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  At `beq` at 0x1b39c (target 0x1b584), taken when t2(?) == 0; falls through when t2(?) != 0.
  At `beq` at 0x1b3a4 (target 0x1b594), taken when s0(?) == 0; falls through when s0(?) != 0.
  At `beq` at 0x1b3ac (target 0x1b610), taken when t2(?) == 0; falls through when t2(?) != 0.
  At `beq` at 0x1b3dc (target 0x1b648), taken when s0(?) == 0; falls through when s0(?) != 0.
  At `beq` at 0x1b404 (target 0x1b5fc), taken when s1(=a0) == 0; falls through when s1(=a0) != 0.
  At `bne` at 0x1b460 (target 0x1b46c), taken when v0(=ret(renorm_d)) != t0(=0xb); falls through when v0(=ret(renorm_d)) == t0(=0xb).
  At `bne` at 0x1b4e4 (target 0x1b53c), taken when s0(?) != 0; falls through when s0(?) == 0.
  At `bne` at 0x1b4ec (target 0x1b53c), taken when a6(?) != 0; falls through when a6(?) == 0.
  At `beq` at 0x1b518 (target 0x1b790), taken when (a7(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (a7(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  At `bne` at 0x1b584 (target 0x1b3a4), taken when a3(?) != 0; falls through when a3(?) == 0.
  At `bne` at 0x1b594 (target 0x1b3ac), taken when a6(?) != 0; falls through when a6(?) == 0.
  At `bne` at 0x1b5a0 (target 0x1b7b4), taken when a2(?) != 0; falls through when a2(?) == 0.
  At `bne` at 0x1b5a8 (target 0x1b7b8), taken when a3(?) != 0; falls through when a3(?) == 0.
  At `beq` at 0x1b5c8 (target 0x1b800), taken when a3(=[[-0x3fe8]:8+1352]:1) == a4(=0x3); falls through when a3(=[[-0x3fe8]:8+1352]:1) != a4(=0x3).
  At `bne` at 0x1b640 (target 0x1b3e4), taken when s0(?) != 0; falls through when s0(?) == 0.
  At `bne` at 0x1b694 (target 0x1b350), taken when a6(?) != 0; falls through when a6(?) == 0.
  Returns v0 = ? (`jr` at 0x1b4dc).

- `add` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b818 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b818-0x1bd88 (1392 bytes).
  Stores 4 bytes from a0 to [-0x3fe8]:8 +0x53c  (`sw` at 0x1b890).
  Calls `post_sig` via direct with a0=0x8, a1=sym(QUIETNAN), a2=0x10040, a3=a3 at entry (arg3) (`jal` at 0x1b8a8).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b8b0).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1b91c).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b924).
  Calls `renorm_d` via direct with a0=sp-144, a1=?, a2=?, a3=? (`jal` at 0x1b9c8).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x1ba0c).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=sym(SIGN_SHIFT) (`jal` at 0x1bb4c).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1bb54).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=a3 at entry (arg3), a4=[((a0 << 0x2) + sym(SIGN_SHIFT))] (`jal` at 0x1bb98).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1bba0).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=a3 at entry (arg3) (`jal` at 0x1bbbc).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1bbc4).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))] (`jal` at 0x1bbf8).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1bc00).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))] (`jal` at 0x1bc64).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1bc6c).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))] (`jal` at 0x1bca4).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1bcac).
  Calls `(unknown callee)` via register with a0=sp-40, a1=a1 at entry (arg1), a2=[((a0 << 0x3) + sym(renorm))]:8, a3=a3 at entry (arg3) (`jalr` at 0x1bcc8).
  Calls `(unknown callee)` via register with a0=sp-16, a1=sym(IMP_1BIT), a2=?, a3=? (`jalr` at 0x1bcf8).
  Calls `fpstore_sd` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))] (`jal` at 0x1bd5c).
  Calls `store_fpcsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1bd64).
  At `bne` at 0x1b864 (target 0x1b8c0), taken when v0(=[((a0 << 0x2) + sym(EXP_INF))]) != a2; falls through when v0(=[((a0 << 0x2) + sym(EXP_INF))]) == a2.
  At `bne` at 0x1b86c (target 0x1bc3c), taken when v0(=[((a0 << 0x2) + sym(EXP_INF))]) != a5; falls through when v0(=[((a0 << 0x2) + sym(EXP_INF))]) == a5.
  At `beq` at 0x1b874 (target 0x1bbd4), taken when a1 == a4; falls through when a1 != a4.
  At `beq` at 0x1b8a0 (target 0x1bbb0), taken when (v1(=[[-0x3fe8]:8+1340]) & 0x800) == 0; falls through when (v1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  At `beq` at 0x1b8c0 (target 0x1bc7c), taken when v0(=[((a0 << 0x2) + sym(EXP_INF))]) == a5; falls through when v0(=[((a0 << 0x2) + sym(EXP_INF))]) != a5.
  At `beq` at 0x1b8c8 (target 0x1bb08), taken when a2 == 0; falls through when a2 != 0.
  At `beq` at 0x1b8d0 (target 0x1bb64), taken when s0(=a5) == 0; falls through when s0(=a5) != 0.
  At `beq` at 0x1b8d8 (target 0x1ba3c), taken when s2(=a1) == s3(=a4); falls through when s2(=a1) != s3(=a4).
  At `bne` at 0x1b8e0 (target 0x1ba3c), taken when s1(=a2) != s0(=a5); falls through when s1(=a2) == s0(=a5).
  At `bne` at 0x1b8e8 (target 0x1ba3c), taken when a6 != a3; falls through when a6 == a3.
  At `beq` at 0x1b904 (target 0x1bd18), taken when v1(=[[-0x3fe8]:8+1352]:1) == a0(=0x3); falls through when v1(=[[-0x3fe8]:8+1352]:1) != a0(=0x3).
  At `beq` at 0x1b950 (target 0x1baf8), taken when v0(?) == 0; falls through when v0(?) != 0.
  At `beq` at 0x1b96c (target 0x1b990), taken when s2(=a1) == s3(=a4); falls through when s2(=a1) != s3(=a4).
  At `beq` at 0x1b994 (target 0x1bc24), taken when a2(?) == 0; falls through when a2(?) != 0.
  At `beq` at 0x1b9a8 (target 0x1b9c8), taken when (a2(?) & a6(=0xffe0000000000000)) == 0; falls through when (a2(?) & a6(=0xffe0000000000000)) != 0.
  At `beq` at 0x1b9d4 (target 0x1b9fc), taken when v0(=ret(renorm_d)) == 0; falls through when v0(=ret(renorm_d)) != 0.
  At `beq` at 0x1ba3c (target 0x1bcbc), taken when s1(=a2) == 0; falls through when s1(=a2) != 0.
  At `beq` at 0x1ba64 (target 0x1bcec), taken when s0(=a5) == 0; falls through when s0(=a5) != 0.
  At `beq` at 0x1ba8c (target 0x1bc10), taken when s5(=a0) == 0; falls through when s5(=a0) != 0.
  At `beq` at 0x1ba9c (target 0x1baa8), taken when s0(?) >= v0(?) (signed); falls through when s0(?) < v0(?) (signed).
  At `beq` at 0x1bab0 (target 0x1bac0), taken when s1(?) >= v0(?) (signed); falls through when s1(?) < v0(?) (signed).
  At `bne` at 0x1bac0 (target 0x1bae0), taken when t1(?) != 0; falls through when t1(?) == 0.
  At `bne` at 0x1bac8 (target 0x1b938), taken when s1(?) != s0(?); falls through when s1(?) == s0(?).
  At `bne` at 0x1bad4 (target 0x1b938), taken when a3(?) < a6(?) (unsigned); falls through when a3(?) >= a6(?) (unsigned).
  At `beq` at 0x1baf8 (target 0x1b990), taken when s2(=a1) == s3(=a4); falls through when s2(=a1) != s3(=a4).
  At `bne` at 0x1bb08 (target 0x1b8d0), taken when a3 != 0; falls through when a3 == 0.
  At `bne` at 0x1bb10 (target 0x1bd30), taken when a5 != 0; falls through when a5 == 0.
  At `bne` at 0x1bb18 (target 0x1bd30), taken when a6 != 0; falls through when a6 == 0.
  At `beq` at 0x1bb34 (target 0x1bd74), taken when v1(=[[-0x3fe8]:8+1352]:1) == a0(=0x3); falls through when v1(=[[-0x3fe8]:8+1352]:1) != a0(=0x3).
  At `bne` at 0x1bb64 (target 0x1b8d8), taken when a6 != 0; falls through when a6 == 0.
  At `bne` at 0x1bce4 (target 0x1ba6c), taken when s0(=a5) != 0; falls through when s0(=a5) == 0.
  Returns v0 = ? (`jr` at 0x1ba34).

- `VEC_tlbmod` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bd90 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bd90-0x1bdd0 (64 bytes).
  Calls `tlbmod` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3) (`jal` at 0x1bda0).
  Calls `exception_exit` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x1bdb8).
  Calls `soft_trap` via direct with a0=a0 at entry (arg0), a1=ret(tlbmod), a2=?, a3=[a0+280]:8 (`j` at 0x1bdc8).
  At `bne` at 0x1bda8 (target 0x1bdc0), taken when v0(=ret(tlbmod)) != 0; falls through when v0(=ret(tlbmod)) == 0.

- `readadapters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bdd0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bdd0-0x1bdd8 (8 bytes).
  Returns v0 = 0x0 (`jr` at 0x1bdd0).

- `pio_mapalloc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bdd8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bdd8-0x1bde0 (8 bytes).
  Returns v0 = 0x0 (`jr` at 0x1bdd8).
- `pio_mapaddr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bde0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bde0-0x1bde8 (8 bytes).
  Returns v0 = 0x0 (`jr` at 0x1bde0).

- `pio_mapfree` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bde8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bde8-0x1bdf0 (8 bytes).
  Returns v0 = ? (`jr` at 0x1bde8).

- `VEC_ibe` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bdf0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bdf0-0x1be60 (112 bytes).
  Stores 8 bytes from a2 to ? (base unknown) (`sd` at 0x1be08).
  Stores 8 bytes from t3 to ([0xffffffffaff50000]:8 << 0x3) -0x500f0000 (`sd` at 0x1be3c).
  Stores 8 bytes from t0 to a0 (arg0 at entry) +0x140  (`sd` at 0x1be5c).
  Calls `VEC_trap` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3) (`j` at 0x1be58).
  At `bgez` at 0x1bdf8 (target 0x1be04), taken when ra(?) >= 0 (signed); falls through when ra(?) < 0 (signed).

- `btool_size` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1be60 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1be60-0x1be68 (8 bytes).
  Returns v0 = 0x0 (`jr` at 0x1be60).

- `btool_getinfo` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1be68 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1be68-0x1be70 (8 bytes).
  Returns v0 = 0x16 (`jr` at 0x1be68).

- `btool_reinit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1be70 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1be70-0x1be78 (8 bytes).
  Returns v0 = ? (`jr` at 0x1be70).

- `other_prda` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1be80 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1be80-0x1be9c (28 bytes).
  Stores 4 bytes from a2 to a0 (arg0 at entry) +0x800  (`sw` at 0x1be90).
  At `beq` at 0x1be88 (target 0x1be94), taken when at(=[a0+2048]) == v0(=[sym(.sbss)+280]); falls through when at(=[a0+2048]) != v0(=[sym(.sbss)+280]).
  Returns v0 = [sym(.sbss)+280] (`jr` at 0x1be94).

- `otherprda` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1be9c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1be9c-0x1bee4 (72 bytes).
  Stores 4 bytes from a2 to a0 (arg0 at entry) +0x800  (`sw` at 0x1beac).
  Stores 4 bytes from at to sym(processor_enabled) +0x118 (`sw` at 0x1bee0).
  Calls `get_host_id` via direct with a0=sp-80, a1=sp-16, a2=0x0, a3=a3 at entry (arg3) (`jal` at 0x1bec0).
  At `beq` at 0x1bea4 (target 0x1beb8), taken when a0 == 0; falls through when a0 != 0.
  Returns v0 = ? (`jr` at 0x1beb0).

- `getrand` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xd30 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xd30-0xd3c (12 bytes).
  Returns v0 = ? (`jr` at 0xd34).

- `tlbgetrand` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xd30 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xd30-0xd3c (12 bytes).
  Returns v0 = ? (`jr` at 0xd34).

- `he_arcs_set_vectors` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10b4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10b4-0x10c0 (12 bytes).
  Stores 4 bytes from at to sym(_prom_cleared) +0x0  (`sw` at 0x10bc).
  Returns v0 = ? (`jr` at 0x10b8).

- `restart` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10c0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10c0-0x1238 (376 bytes).
  Stores 8 bytes from a0 to ? (base unknown) (`sd` at 0x1100).
  Stores 8 bytes from a0 to ? (base unknown) (`sd` at 0x1128).
  Stores 8 bytes from a0 to abs 0x9200000001680010  (`sd` at 0x121c).
  Stores 8 bytes from v0 to abs 0x9200000001680008  (`sd` at 0x1228).
  Calls `us_delay` via direct with a0=0xf4240, a1=?, a2=0x9200000001e10000, a3=sym(compact_to_nasid_node) (`jal` at 0x114c).
  Calls `get_elsc` via direct with a0=?, a1=?, a2=[sym(power_off_flag)], a3=? (`jal` at 0x1178).
  Calls `sc_power_down_all` via direct with a0=ret(get_elsc), a1=?, a2=?, a3=? (`jal` at 0x1180).
  Calls `us_delay` via direct with a0=0x2dc6c0, a1=?, a2=?, a3=? (`jal` at 0x1188).
  Calls `ni_reset_port` via direct with a0=?, a1=?, a2=[sym(power_off_flag)], a3=? (`jal` at 0x11b8).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11d0).
  Calls `elsc_init` via direct with a0=sp-2416, a1=ret(get_nasid), a2=?, a3=? (`jal` at 0x11dc).
  Calls `elsc_system_reset` via direct with a0=sp-2416, a1=?, a2=?, a3=? (`jal` at 0x11e4).
  Calls `printf` via direct with a0=sym(.rodata)+120, a1=?, a2=?, a3=? (`jal` at 0x1200).
  Calls `us_delay` via direct with a0=0xf4240, a1=?, a2=?, a3=? (`jal` at 0x1208).
  At `beq` at 0x10d8 (target 0x11c8), taken when at(=[sym(panic_level)]) == 0; falls through when at(=[sym(panic_level)]) != 0.
  At `blez` at 0x10e0 (target 0x1144), taken when a4(=[sym(maxnodes)]) <= 0 (signed); falls through when a4(=[sym(maxnodes)]) > 0 (signed).
  At `beq` at 0x1110 (target 0x1140), taken when s0(?) >= v0(=[sym(maxnodes)]) (signed); falls through when s0(?) < v0(=[sym(maxnodes)]) (signed).
  At `bne` at 0x1138 (target 0x10f0), taken when s0(?) < a1(=[sym(maxnodes)]) (signed); falls through when s0(?) >= a1(=[sym(maxnodes)]) (signed).
  At `beq` at 0x1160 (target 0x11d0), taken when t8(=[sym(reboot_on_panic)]) == t9(=0x2); falls through when t8(=[sym(reboot_on_panic)]) != t9(=0x2).
  At `beq` at 0x1170 (target 0x11b8), taken when a2(=[sym(power_off_flag)]) == 0; falls through when a2(=[sym(power_off_flag)]) != 0.
  At `beq` at 0x11a0 (target 0x1170), taken when ra(=[-0x3bd8]:2) == at(=[sym(master_procid)]:2); falls through when ra(=[-0x3bd8]:2) != at(=[sym(master_procid)]:2).
  At `bgtz` at 0x11a8 (target 0x1170), taken when s0(?) > 0 (signed); falls through when s0(?) <= 0 (signed).
  At `bltz` at 0x11ec (target 0x1200), taken when v0(=ret(elsc_system_reset)) < 0 (signed); falls through when v0(=ret(elsc_system_reset)) >= 0 (signed).
  Returns v0 = ? (`jr` at 0x11f8).

- `he_arcs_restart` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1238 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1238-0x1258 (32 bytes).
  Calls `restart [0x10c0]` via direct with a0=0xead0030, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1244).
  Returns v0 = ret(restart) (`jr` at 0x1250).

- `he_arcs_reboot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1258 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1258-0x1278 (32 bytes).
  Calls `restart [0x10c0]` via direct with a0=0xead0040, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1264).
  Returns v0 = ret(restart) (`jr` at 0x1270).

- `he_arcs_write` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1278 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1278-0x129c (36 bytes).
  Stores 8 bytes from a1 to a2 (arg2 at entry) +0x0  (`sd` at 0x1278).
  Calls `ducons_write` via direct with a0=a0 at entry (arg0), a1=(a1 << 0x0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1284).
  Returns v0 = 0x0 (`jr` at 0x1294).

- `hub_widget_id` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x129c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x129c-0x12b4 (24 bytes).
  Returns v0 = ? (`jr` at 0x12ac).

- `get_nasid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12b4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12b4-0x12d0 (28 bytes).
  Returns v0 = ? (`jr` at 0x12c8).

- `get_slice` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12d0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12d0-0x12e0 (16 bytes).
  Returns v0 = ([0x9200000001000020]:8 << 0x0) (`jr` at 0x12d8).

- `is_fine_dirmode` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12e0-0x12f8 (24 bytes).
  Returns v0 = ? (`jr` at 0x12f0).

- `get_hub_chiprev` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12f8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12f8-0x1314 (28 bytes).
  Returns v0 = ? (`jr` at 0x130c).

- `verify_snchip_rev` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1314 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1314-0x13b4 (160 bytes).
  Stores 4 bytes from a3 to sym(_prom_cleared) +0x8  (`sw` at 0x1388).
  Stores 4 bytes from zero to sym(_prom_cleared) +0xc  (`sw` at 0x138c).
  Calls `get_hub_chiprev` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1364).
  At `beq` at 0x132c (target 0x13a8), taken when at(=[sym(.sdata)+12]) == 0; falls through when at(=[sym(.sdata)+12]) != 0.
  At `blez` at 0x1334 (target 0x138c), taken when v0(=[sym(maxnodes)]) <= 0 (signed); falls through when v0(=[sym(maxnodes)]) > 0 (signed).
  At `beq` at 0x1348 (target 0x1380), taken when s0(?) == 0; falls through when s0(?) != 0.
  At `beq` at 0x1358 (target 0x138c), taken when s0(?) >= a2(=[sym(maxnodes)]) (signed); falls through when s0(?) < a2(=[sym(maxnodes)]) (signed).
  At `beq` at 0x1378 (target 0x1348), taken when a1(=(ret(get_hub_chiprev) << 0x0)) >= a3(=[sym(.sdata)+8]) (signed); falls through when a1(=(ret(get_hub_chiprev) << 0x0)) < a3(=[sym(.sdata)+8]) (signed).
  Returns v0 = ? (`jr` at 0x13a0).

- `ni_reset_port` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13b4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13b4-0x13d0 (28 bytes).
  Stores 8 bytes from v1 to abs 0x9200000001680010  (`sd` at 0x13c0).
  Stores 8 bytes from at to abs 0x9200000001680008  (`sd` at 0x13cc).
  Returns v0 = 0x9200000001680008 (`jr` at 0x13c8).

- `set_sn12_type` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13d0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13d0-0x14fc (300 bytes).
  Stores 1 bytes from a0 to (a0 + sym(.bss)) +0x80  (`sb` at 0x1420).
  Stores 1 bytes from a4 to (a0 + sym(.bss)) +0x0  (`sb` at 0x14a4).
  Stores 1 bytes from a6 to (a0 + sym(.bss)) +0x0  (`sb` at 0x14b4).
  Stores 1 bytes from t0 to (a0 + sym(.bss)) +0x0  (`sb` at 0x14c0).
  Stores 1 bytes from t2 to (a0 + sym(.bss)) +0x0  (`sb` at 0x14d0).
  Stores 1 bytes from t8 to (a0 + sym(.bss)) +0x0  (`sb` at 0x14dc).
  Calls `elsc_cbrick_type_get` via direct with a0=a0 at entry (arg0), a1=sp-32, a2=?, a3=0xc000 (`jal` at 0x144c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+168, a2=a0 at entry (arg0), a3=ret(elsc_cbrick_type_get), a5=0x38, a6=0x39, a7=0x51 (`jal` at 0x14ec).
  At `beq` at 0x13e8 (target 0x13fc), taken when at(=[(a0 + sym(.bss))+128]:1) == 0; falls through when at(=[(a0 + sym(.bss))+128]:1) != 0.
  At `beq` at 0x141c (target 0x13f0), taken when v1(?) == a1(=0x8000); falls through when v1(?) != a1(=0x8000).
  At `beq` at 0x1430 (target 0x13f0), taken when a1(?) == a2(=0x4000); falls through when a1(?) != a2(=0x4000).
  At `beq` at 0x1440 (target 0x13f0), taken when a2(?) == a3(=0xc000); falls through when a2(?) != a3(=0xc000).
  At `bltz` at 0x1468 (target 0x14e0), taken when v0(=ret(elsc_cbrick_type_get)) < 0 (signed); falls through when v0(=ret(elsc_cbrick_type_get)) >= 0 (signed).
  At `beq` at 0x1474 (target 0x14a8), taken when v0(?) == a2(=0x37); falls through when v0(?) != a2(=0x37).
  At `beq` at 0x147c (target 0x14b8), taken when v0(?) == a5(=0x38); falls through when v0(?) != a5(=0x38).
  At `beq` at 0x1484 (target 0x14c4), taken when v0(?) == a6(=0x39); falls through when v0(?) != a6(=0x39).
  At `beq` at 0x148c (target 0x14d4), taken when v0(?) == a3(=0x30); falls through when v0(?) != a3(=0x30).
  At `bne` at 0x1494 (target 0x13f0), taken when v0(?) != a7(=0x51); falls through when v0(?) == a7(=0x51).
  Returns v0 = ? (`jr` at 0x13f4).

- `get_chimera_type` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x14fc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x14fc-0x1560 (100 bytes).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+168, a2=a0 at entry (arg0), a3=ra at entry, a5=sym(.bss) (`jal` at 0x1548).
  Calls `set_sn12_type` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1550).
  At `beq` at 0x1518 (target 0x1538), taken when at(=[(a0 + sym(.bss))+128]:1) == 0; falls through when at(=[(a0 + sym(.bss))+128]:1) != 0.
  Returns v0 = [(a0 + sym(.bss))]:1 (`jr` at 0x1530).

- `silence_all_audio` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1c58 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1c58-0x1c60 (8 bytes).
  Returns v0 = ? (`jr` at 0x1c58).
- `silence_bell` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1c58 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1c58-0x1c60 (8 bytes).
  Returns v0 = ? (`jr` at 0x1c58).

- `clear_promlog` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20f8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20f8-0x2144 (76 bytes).
  Calls `ip27log_setup` via direct with a0=sp-256, a1=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a2=one of 0x1, 0x10, a3=(a0 + a0), a4=a1 at entry (arg1), a5=0x1 (`jal` at 0x2120).
  At `bltz` at 0x2128 (target 0x213c), taken when v0(=ret(ip27log_setup)) < 0 (signed); falls through when v0(=ret(ip27log_setup)) >= 0 (signed).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x2134).

- `get_prom_messages` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2144 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2144-0x2324 (480 bytes).
  Stores 1 bytes from zero to a2 (arg2 at entry) +0x0  (`sb` at 0x2190).
  Calls `ip27log_setup` via direct with a0=sp-368, a1=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a2=0x0, a3=(a0 + a0), a4=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968], a5=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8, a6=(a0 << 0x3) (`jal` at 0x2198).
  Calls `promlog_first` via direct with a0=sp-368, a1=0x3, a2=?, a3=? (`jal` at 0x21b4).
  Calls `promlog_get` via direct with a0=sp-368, a1=sp-120, a2=sp-104, a3=? (`jal` at 0x21c4).
  Calls `sprintf` via direct with a0=?, a1=sym(.rodata)+304, a2=?, a3=sp-120, a4=sp-104 (`jal` at 0x21f8).
  Calls `strlen` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2200).
  Calls `promlog_next` via direct with a0=sp-368, a1=0x3, a2=?, a3=? (`jal` at 0x2214).
  Calls `promlog_get` via direct with a0=sp-368, a1=sp-120, a2=sp-104, a3=? (`jal` at 0x2224).
  Calls `strncmp` via direct with a0=sp-120, a1=sym(.rodata)+304, a2=0xe, a3=? (`jal` at 0x223c).
  Calls `sprintf` via direct with a0=?, a1=sym(.rodata)+304, a2=sp-104, a3=? (`jal` at 0x2258).
  Calls `promlog_last` via direct with a0=sp-368, a1=0x3, a2=?, a3=? (`jal` at 0x2294).
  Calls `promlog_prev` via direct with a0=sp-368, a1=0x3, a2=?, a3=? (`jal` at 0x22a8).
  Calls `promlog_get` via direct with a0=sp-368, a1=sp-120, a2=sp-104, a3=? (`jal` at 0x22c0).
  Calls `strncmp` via direct with a0=sp-104, a1=sym(.rodata)+584, a2=0x2f, a3=? (`jal` at 0x22d8).
  Calls `promlog_next` via direct with a0=sp-368, a1=0x3, a2=?, a3=? (`jal` at 0x22e8).
  Calls `sprintf` via direct with a0=a2 at entry (arg2), a1=sym(.rodata)+304, a2=?, a3=? (`jal` at 0x2304).
  Calls `strlen` via direct with a0=a2 at entry (arg2), a1=?, a2=?, a3=? (`jal` at 0x230c).
  At `bltz` at 0x21a4 (target 0x22f8), taken when v0(=ret(ip27log_setup)) < 0 (signed); falls through when v0(=ret(ip27log_setup)) >= 0 (signed).
  At `beq` at 0x21ac (target 0x2294), taken when s0(=a1) == 0; falls through when s0(=a1) != 0.
  At `bltz` at 0x21cc (target 0x2288), taken when v0(=ret(promlog_get)) < 0 (signed); falls through when v0(=ret(promlog_get)) >= 0 (signed).
  At `bltz` at 0x222c (target 0x2268), taken when v0(=ret(promlog_get)) < 0 (signed); falls through when v0(=ret(promlog_get)) >= 0 (signed).
  At `bne` at 0x2244 (target 0x21dc), taken when v0(=ret(strncmp)) != 0; falls through when v0(=ret(strncmp)) == 0.
  At `bltz` at 0x229c (target 0x231c), taken when v0(=ret(promlog_last)) < 0 (signed); falls through when v0(=ret(promlog_last)) >= 0 (signed).
  At `bltz` at 0x22b0 (target 0x22e8), taken when v0(=ret(promlog_prev)) < 0 (signed); falls through when v0(=ret(promlog_prev)) >= 0 (signed).
  At `bltz` at 0x22c8 (target 0x22e8), taken when v0(=ret(promlog_get)) < 0 (signed); falls through when v0(=ret(promlog_get)) >= 0 (signed).
  At `bne` at 0x22e0 (target 0x22a4), taken when v0(=ret(strncmp)) != 0; falls through when v0(=ret(strncmp)) == 0.
  Returns v0 = ? (`jr` at 0x2280).

- `insert_log_sync` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2324 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2324-0x2344 (32 bytes).
  Calls `ip27log_printf_nasid` via direct with a0=a0 at entry (arg0), a1=0x0, a2=sym(.rodata)+584, a3=a3 at entry (arg3) (`jal` at 0x2330).
  Returns v0 = ret(ip27log_printf_nasid) (`jr` at 0x233c).

- `numalinkstats_up2date` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2344 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2344-0x2424 (224 bytes).
  At `blez` at 0x2350 (target 0x23d0), taken when t3(=[sym(numnodes)]) <= 0 (signed); falls through when t3(=[sym(numnodes)]) > 0 (signed).
  At `beq` at 0x2388 (target 0x23bc), taken when a2(?) == 0; falls through when a2(?) != 0.
  At `beq` at 0x2394 (target 0x23b0), taken when a3(?) == 0; falls through when a3(?) != 0.
  At `beq` at 0x23a4 (target 0x23b0), taken when a4(?) >= a5(?) (unsigned); falls through when a4(?) < a5(?) (unsigned).
  At `bne` at 0x23b4 (target 0x2390), taken when a2(?) != 0; falls through when a2(?) == 0.
  At `bne` at 0x23c8 (target 0x2378), taken when a6(?) < t3(=[sym(numnodes)]) (signed); falls through when a6(?) >= t3(=[sym(numnodes)]) (signed).
  Returns v0 = ? (`jr` at 0x241c).

- `external_router_port` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2424 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2424-0x24c8 (164 bytes).
  Calls `find_first_component` via direct with a0=[a0+584]:8, a1=0x9, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x1 (`jal` at 0x2444).
  At `beq` at 0x2438 (target 0x24ac), taken when v0(=[a0+584]:8) == 0; falls through when v0(=[a0+584]:8) != 0.
  At `beq` at 0x2450 (target 0x24b8), taken when v0(=ret(find_first_component)) == 0; falls through when v0(=ret(find_first_component)) != 0.
  At `beq` at 0x2470 (target 0x24c0), taken when a5(=[(ret(find_first_component) + (a1 << 0x3))+72]:2) == v1(=-0x1); falls through when a5(=[(ret(find_first_component) + (a1 << 0x3))+72]:2) != v1(=-0x1).
  Returns v0 = ? (`jr` at 0x24b0).

- `get_router_invent_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24c8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24c8-0x25d8 (272 bytes).
  Stores 4 bytes from a2 to [a0]:8 +0x88 (`sw` at 0x25b0).
  Calls `sprintf` via direct with a0=[a0]:8+12, a1=sym(.rodata)+616, a2=sym(.rodata)+616, a3=a3 at entry (arg3) (`jal` at 0x2500).
  Calls `sprintf` via direct with a0=sp-80, a1=sym(.rodata)+616, a2=?, a3=? (`jal` at 0x2530).
  Calls `strcat` via direct with a0=[a0]:8+12, a1=sp-80, a2=?, a3=? (`jal` at 0x253c).
  Calls `strcat` via direct with a0=[a0]:8+12, a1=sym(.rodata)+616, a2=?, a3=? (`jal` at 0x2580).
  Calls `sprintf` via direct with a0=sp-80, a1=sym(.rodata)+616, a2=?, a3=? (`jal` at 0x25c8).
  At `beq` at 0x251c (target 0x25c0), taken when s0(?) == s5(=0x8); falls through when s0(?) != s5(=0x8).
  At `beq` at 0x254c (target 0x2578), taken when s0(?) >= 0x9 (signed); falls through when s0(?) < 0x9 (signed).
  At `bne` at 0x2564 (target 0x251c), taken when (a2(=[a1+8]:1) & a3(?)) != 0; falls through when (a2(=[a1+8]:1) & a3(?)) == 0.
  At `bne` at 0x2570 (target 0x2558), taken when a3(?) != 0; falls through when a3(?) == 0.
  Returns v0 = ret(strcat) (`jr` at 0x25b8).

- `build_router_invent_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25d8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x25d8-0x266c (148 bytes).
  Stores 1 bytes from at to ret(klhwg_invent_alloc) +0x4  (`sb` at 0x261c).
  Calls `mutex_spinlock` via direct with a0=a0+572, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x25f0).
  Calls `klhwg_invent_alloc` via direct with a0=[a0+2]:2, a1=0x6, a2=0x8c, a3=? (`jal` at 0x2604).
  Calls `get_router_invent_info` via direct with a0=sp-48, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x2620).
  Calls `hwgraph_info_add_LBL` via direct with a0=[a0+528], a1=sym(.rodata)+616, a2=?, a3=? (`jal` at 0x2634).
  Calls `hwgraph_info_export_LBL` via direct with a0=[a0+528], a1=sym(.rodata)+616, a2=0x8c, a3=? (`jal` at 0x2648).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2658).
  At `beq` at 0x260c (target 0x2650), taken when v0(=ret(klhwg_invent_alloc)) == 0; falls through when v0(=ret(klhwg_invent_alloc)) != 0.
  Returns v0 = ret(mutex_spinunlock) (`jr` at 0x2664).

- `router_reg_read` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x266c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x266c-0x269c (48 bytes).
  Calls `hub_vector_read` via direct with a0=[a0+2]:2, a1=[a0+24]:8, a2=[a0+32], a3=a1 at entry (arg1), a4=a2 at entry (arg2) (`jal` at 0x2688).
  Returns v0 = ret(hub_vector_read) (`jr` at 0x2694).

- `router_reg_write` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x269c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x269c-0x26cc (48 bytes).
  Calls `hub_vector_write` via direct with a0=[a0+2]:2, a1=[a0+24]:8, a2=[a0+32], a3=a1 at entry (arg1), a4=a2 at entry (arg2) (`jal` at 0x26b8).
  Returns v0 = ret(hub_vector_write) (`jr` at 0x26c4).

- `router_set_leds` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26cc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x26cc-0x270c (64 bytes).
  Stores 1 bytes from v0 to a0 (arg0 at entry) +0x6  (`sb` at 0x26fc).
  Calls `router_reg_write` via direct with a0=a0 at entry (arg0), a1=0x200, a2=[a0+7]:1, a3=a3 at entry (arg3) (`jal` at 0x26f8).
  At `bne` at 0x26d8 (target 0x26f0), taken when at(=[a0+6]:1) != v0(=[a0+7]:1); falls through when at(=[a0+6]:1) == v0(=[a0+7]:1).
  Returns v0 = ? (`jr` at 0x26e8).

- `router_decode_port_errors` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x270c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x270c-0x27bc (176 bytes).
  Stores 4 bytes from a4 to a1 (arg1 at entry) +0x0  (`sw` at 0x2724).
  Stores 4 bytes from a7 to a0 (arg0 at entry) +0x18 (`sw` at 0x2734).
  Stores 4 bytes from t0 to a0 (arg0 at entry) +0x18 (`sw` at 0x2790).
  Stores 4 bytes from a4 to a1 (arg1 at entry) +0x4  (`sw` at 0x2744).
  Stores 4 bytes from t0 to a0 (arg0 at entry) +0x1c (`sw` at 0x2750).
  Stores 4 bytes from t1 to a0 (arg0 at entry) +0x1c (`sw` at 0x27a4).
  Stores 4 bytes from a4 to a1 (arg1 at entry) +0x8  (`sw` at 0x2764).
  Stores 4 bytes from a7 to a0 (arg0 at entry) +0x20 (`sw` at 0x2774).
  Stores 4 bytes from t2 to a0 (arg0 at entry) +0x20 (`sw` at 0x27b8).
  At `beq` at 0x271c (target 0x2780), taken when a5(=0xff) == a6(?); falls through when a5(=0xff) != a6(?).
  At `beq` at 0x273c (target 0x2794), taken when a5(=0xff) == a6(?); falls through when a5(=0xff) != a6(?).
  At `beq` at 0x275c (target 0x27a8), taken when a5(=0xff) == a6(?); falls through when a5(=0xff) != a6(?).
  Returns v0 = ? (`jr` at 0x2778).
  Returns v0 = ? (`jr` at 0x27b4).

- `router_acquire_port_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27bc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x27bc-0x2a1c (608 bytes).
  Stores 1 bytes from t9 to a0 (arg0 at entry) +0x7 (`sb` at 0x2814).
  Stores 1 bytes from a2 to a0 (arg0 at entry) +0x7 (`sb` at 0x2930).
  Stores 1 bytes from t3 to a0 (arg0 at entry) +0x7 (`sb` at 0x29e4).
  Stores 2 bytes from a3 to ? (base unknown) (`sh` at 0x2880).
  Stores 8 bytes from a3 to ? (base unknown) (`sd` at 0x28e8).
  4 such stores of 2 bytes through s1 (?) to ? (base unknown), including `sh` at 0x2948, 0x2998, 0x29a0.
  Stores 4 bytes from t9 to sym(sc_errors) +0x0  (`sw` at 0x29f4).
  Stores 4 bytes from ra to sym(sc_errors) +0x0  (`sw` at 0x2a08).
  Calls `read_rr_reg` via direct with a0=[a0+4]:2, a1=[a0+504]:2, a2=(a1 + a1)-1, a3=?, a4=sp-336 (`jal` at 0x28ac).
  Calls `read_rr_reg` via direct with a0=[a0+4]:2, a1=[a0+504]:2, a2=?, a3=sp-80, a4=sp-336 (`jal` at 0x28d0).
  Calls `mutex_spinlock` via direct with a0=a0+572, a1=?, a2=?, a3=? (`jal` at 0x28e4).
  Calls `router_decode_port_errors` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2904).
  Calls `mutex_spinunlock` via direct with a0=a0+572, a1=?, a2=?, a3=[a0+7]:1 (`jal` at 0x292c).
  Calls `mutex_spinunlock` via direct with a0=a0+572, a1=?, a2=[a0+552]:1, a3=? (`jal` at 0x2a0c).
  At `beq` at 0x27ec (target 0x2894), taken when a2 == 0; falls through when a2 != 0.
  At `beq` at 0x27fc (target 0x2834), taken when t8(?) == 0; falls through when t8(?) != 0.
  At `beq` at 0x2808 (target 0x2914), taken when s3(=a2) == 0; falls through when s3(=a2) != 0.
  At `beq` at 0x283c (target 0x293c), taken when v0(=0x1) == a2(=[a0+552]:1); falls through when v0(=0x1) != a2(=[a0+552]:1).
  At `bne` at 0x287c (target 0x2848), taken when v0(?) < 0x4 (signed); falls through when v0(?) >= 0x4 (signed).
  At `beq` at 0x2884 (target 0x2a0c), taken when s3(=a2) == 0; falls through when s3(=a2) != 0.
  At `beq` at 0x28b4 (target 0x29e8), taken when v0(=ret(read_rr_reg)) == 0; falls through when v0(=ret(read_rr_reg)) != 0.
  At `beq` at 0x28d8 (target 0x29f8), taken when v0(=ret(read_rr_reg)) == 0; falls through when v0(=ret(read_rr_reg)) != 0.
  At `beq` at 0x2944 (target 0x29b4), taken when a1(?) == 0; falls through when a1(?) != 0.
  At `beq` at 0x29bc (target 0x29d4), taken when t1(?) >= 0x14 (signed); falls through when t1(?) < 0x14 (signed).
  At `bne` at 0x29cc (target 0x2884), taken when t2(?) < 0x14 (signed); falls through when t2(?) >= 0x14 (signed).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x282c).

- `router_acquire_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2a1c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2a1c-0x2b3c (288 bytes).
  Stores 1 bytes from v1 to a0 (arg0 at entry) +0x7 (`sb` at 0x2ae8).
  Stores 1 bytes from zero to a0 (arg0 at entry) +0x7  (`sb` at 0x2b30).
  Stores 8 bytes from a0 to a0 (arg0 at entry) +0x30  (`sd` at 0x2b38).
  Calls `mutex_spinlock` via direct with a0=a0+572, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2a44).
  Calls `mutex_spinunlock` via direct with a0=a0+572, a1=ret(mutex_spinlock), a2=?, a3=?, a7=[a0+8]:1 (`jal` at 0x2a9c).
  Calls `router_acquire_port_info` via direct with a0=a0 at entry (arg0), a1=?, a2=[a0+569]:1, a3=? (`jal` at 0x2aac).
  Calls `mutex_spinlock` via direct with a0=a0+572, a1=?, a2=?, a3=? (`jal` at 0x2ab8).
  Calls `router_set_leds` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+8]:1 (`jal` at 0x2ae4).
  Calls `mutex_spinunlock` via direct with a0=a0+572, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x2afc).
  At `beq` at 0x2a64 (target 0x2b28), taken when s7(=[a0+569]:1) == 0; falls through when s7(=[a0+569]:1) != 0.
  At `beq` at 0x2a7c (target 0x2ad8), taken when a6(?) == 0; falls through when a6(?) != 0.
  At `beq` at 0x2a90 (target 0x2a78), taken when (a7(=[a0+8]:1) & at(?)) == 0; falls through when (a7(=[a0+8]:1) & at(?)) != 0.
  At `bne` at 0x2acc (target 0x2a70), taken when s1(?) < 0x9 (signed); falls through when s1(?) >= 0x9 (signed).
  Returns v0 = ? (`jr` at 0x2b20).

- `error_flag_to_type` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b3c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b3c-0x2b84 (72 bytes).
  At `beq` at 0x2b58 (target 0x2b70), taken when a0 == at(=0x1); falls through when a0 != at(=0x1).
  At `beq` at 0x2b60 (target 0x2b70), taken when a0 == a4(=0x2); falls through when a0 != a4(=0x2).
  At `beq` at 0x2b68 (target 0x2b78), taken when a0 == a5(=0x4); falls through when a0 != a5(=0x4).
  Returns v0 = sym(.rodata)+616 (`jr` at 0x2b70).
  Returns v0 = sym(.rodata)+616 (`jr` at 0x2b7c).

- `router_check_port` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2c5c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2c5c-0x2d04 (168 bytes).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x2cf0).
  Calls `external_router_port [0x2424]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2c88).
  Calls `router_print_error [0x2b84]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1, a4=a1 at entry (arg1) (`jal` at 0x2cb8).
  Calls `router_print_error [0x2b84]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x4, a4=a1 at entry (arg1) (`jal` at 0x2cd4).
  At `beq` at 0x2ca0 (target 0x2cc4), taken when v0(=ret(external_router_port)) == 0; falls through when v0(=ret(external_router_port)) != 0.
  Returns v0 = ? (`jr` at 0x2cfc).

- `router_check_errors` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d04 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d04-0x2d5c (88 bytes).
  Calls `router_check_port` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x2d28).
  At `bne` at 0x2d38 (target 0x2d24), taken when s0(?) < 0x9 (signed); falls through when s0(?) >= 0x9 (signed).
  Returns v0 = ? (`jr` at 0x2d54).

- `router_port_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d5c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d5c-0x2e10 (180 bytes).
  Calls `router_reg_read` via direct with a0=a0 at entry (arg0), a1=?, a2=sp-48, a3=a3 at entry (arg3) (`jal` at 0x2d90).
  Calls `router_reg_write` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x140000 (`jal` at 0x2db8).
  Calls `router_reg_write` via direct with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=? (`jal` at 0x2dcc).
  Calls `router_reg_write` via direct with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=? (`jal` at 0x2ddc).
  Calls `router_reg_read` via direct with a0=a0 at entry (arg0), a1=?, a2=sp-48, a3=? (`jal` at 0x2dec).
  Returns v0 = ret(router_reg_write) (`jr` at 0x2e08).

- `router_port_hist_reselect` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e10 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e10-0x2f1c (268 bytes).
  Calls `setnoderun` via direct with a0=[a0+2]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[a0+2]:2 (`jal` at 0x2e5c).
  Calls `router_reg_read` via direct with a0=a0 at entry (arg0), a1=?, a2=sp-64, a3=? (`jal` at 0x2ea0).
  Calls `router_reg_write` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=(a2 << 0x12) (`jal` at 0x2ecc).
  Calls `router_reg_write` via direct with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=? (`jal` at 0x2ee0).
  Calls `router_reg_write` via direct with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=? (`jal` at 0x2ef0).
  Calls `restorenoderun` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2f00).
  At `beq` at 0x2e50 (target 0x2f10), taken when at(=[[([[-0x3c00]:8]:8 + ([a0+2]:2 << 0x3))]:8+34198]:2) == v1(=-0x1); falls through when at(=[[([[-0x3c00]:8]:8 + ([a0+2]:2 << 0x3))]:8+34198]:2) != v1(=-0x1).
  Returns v0 = ? (`jr` at 0x2f14).

- `router_hist_reselect` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f1c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f1c-0x2fcc (176 bytes).
  Stores 1 bytes from s2 to a0 (arg0 at entry) +0x228  (`sb` at 0x2f74).
  Calls `router_port_hist_reselect` via direct with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=? (`jal` at 0x2f54).
  Calls `net_errmsg` via direct with a0=ret(router_port_hist_reselect), a1=?, a2=?, a3=? (`jal` at 0x2f98).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+616, a2=[a0+2]:2, a3=[a0+592]:8, a5=ret(router_port_hist_reselect), a6=ret(net_errmsg) (`jal` at 0x2fbc).
  At `beq` at 0x2f44 (target 0x2f7c), taken when a1 == at(=[a0+552]:1); falls through when a1 != at(=[a0+552]:1).
  At `bne` at 0x2f5c (target 0x2f98), taken when v0(=ret(router_port_hist_reselect)) != 0; falls through when v0(=ret(router_port_hist_reselect)) == 0.
  At `bne` at 0x2f6c (target 0x2f50), taken when s0(?) < 0x9 (signed); falls through when s0(?) >= 0x9 (signed).
  Returns v0 = 0x0 (`jr` at 0x2f90).

- `router_set_fences` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2fcc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2fcc-0x3104 (312 bytes).
  Stores 8 bytes from at to a0 (arg0 at entry) +0x218 (`sd` at 0x30d0).
  Calls `router_reg_read` via direct with a0=a0 at entry (arg0), a1=0x10, a2=sp-80, a3=a3 at entry (arg3) (`jal` at 0x2ff0).
  Calls `router_reg_read` via direct with a0=a0 at entry (arg0), a1=?, a2=sp-72, a3=? (`jal` at 0x3068).
  Calls `router_reg_write` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x30b8).
  Calls `router_reg_write` via direct with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=? (`jal` at 0x30d8).
  At `beq` at 0x3028 (target 0x30c8), taken when s4(?) >= 0x9 (signed); falls through when s4(?) < 0x9 (signed).
  At `beq` at 0x3040 (target 0x3010), taken when (v1(=[a0+8]:1) & a0(?)) == 0; falls through when (v1(=[a0+8]:1) & a0(?)) != 0.
  At `beq` at 0x3080 (target 0x30b4), taken when a6(?) == 0; falls through when a6(?) != 0.
  At `bne` at 0x3098 (target 0x3080), taken when (t8(=[a0+8]:1) & t9(?)) != 0; falls through when (t8(=[a0+8]:1) & t9(?)) == 0.
  Returns v0 = ret(router_reg_write) (`jr` at 0x30fc).

- `capture_router_stats` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3104 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3104-0x31c8 (196 bytes).
  Stores 1 bytes from a0 to a0 (arg0 at entry) +0x239 (`sb` at 0x3130).
  Stores 1 bytes from zero to a0 (arg0 at entry) +0x238  (`sb` at 0x3154).
  Stores 1 bytes from v0 to a0 (arg0 at entry) +0x238  (`sb` at 0x3184).
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x230  (`sd` at 0x315c).
  Stores 4 bytes from v0 to sym(p_routertick) +0x0 (`sw` at 0x31a4).
  Calls `router_acquire_info` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3114).
  Calls `router_check_errors [0x2d04]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+569]:1, a4=0x9200000001030100 (`jal` at 0x3140).
  At `beq` at 0x3128 (target 0x31b8), taken when a3(=[a0+569]:1) == 0; falls through when a3(=[a0+569]:1) != 0.
  At `beq` at 0x3138 (target 0x3168), taken when at(=[a0+568]:1) == 0; falls through when at(=[a0+568]:1) != 0.
  At `beq` at 0x3148 (target 0x3188), taken when v0(=ret(router_check_errors)) == 0; falls through when v0(=ret(router_check_errors)) != 0.
  At `bne` at 0x3158 (target 0x3190), taken when s1(=ret(router_acquire_info)) != 0; falls through when s1(=ret(router_acquire_info)) == 0.
  At `beq` at 0x317c (target 0x3188), taken when v1(=[sym(router_print_usecs)]) >= a0(?) (unsigned); falls through when v1(=[sym(router_print_usecs)]) < a0(?) (unsigned).
  At `beq` at 0x3188 (target 0x3160), taken when s1(=ret(router_acquire_info)) == 0; falls through when s1(=ret(router_acquire_info)) != 0.
  At `bne` at 0x31b8 (target 0x3130), taken when v0(=ret(router_acquire_info)) != 0; falls through when v0(=ret(router_acquire_info)) == 0.
  Returns v0 = ? (`jr` at 0x31b0).

- `vertex_to_router_board_nasid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x31c8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x31c8-0x3300 (312 bytes).
  Calls `find_lboard_class` via direct with a0=?, a1=0x31, a2=?, a3=? (`jal` at 0x323c).
  Calls `find_lboard_class` via direct with a0=?, a1=0x31, a2=?, a3=? (`jal` at 0x3288).
  Calls `board_to_path` via direct with a0=ret(find_lboard_class), a1=sp-176, a2=?, a3=? (`jal` at 0x329c).
  Calls `hwgraph_path_to_vertex` via direct with a0=sp-176, a1=?, a2=?, a3=? (`jal` at 0x32a4).
  Calls `chk_for_pebrick` via direct with a0=a0 at entry (arg0), a1=0xffffffffff, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=(a0 << 0x21)+0x9600000000000000, a5=(a0 << 0x21) (`jal` at 0x32f0).
  At `beq` at 0x3210 (target 0x32f0), taken when at(?) == v1(=0xc000); falls through when at(?) != v1(=0xc000).
  At `beq` at 0x3230 (target 0x323c), taken when a3(?) == 0; falls through when a3(?) != 0.
  At `beq` at 0x3248 (target 0x32cc), taken when v0(=ret(find_lboard_class)) == 0; falls through when v0(=ret(find_lboard_class)) != 0.
  At `beq` at 0x3268 (target 0x3288), taken when v0(=[ret(find_lboard_class)]) == 0; falls through when v0(=[ret(find_lboard_class)]) != 0.
  At `beq` at 0x3290 (target 0x32cc), taken when v0(=ret(find_lboard_class)) == 0; falls through when v0(=ret(find_lboard_class)) != 0.
  At `bne` at 0x32ac (target 0x3264), taken when v0(=ret(hwgraph_path_to_vertex)) != s3(=a1); falls through when v0(=ret(hwgraph_path_to_vertex)) == s3(=a1).
  At `bne` at 0x32bc (target 0x3264), taken when (a1(=[ret(find_lboard_class)+9]:1) & 0x4) != 0; falls through when (a1(=[ret(find_lboard_class)+9]:1) & 0x4) == 0.
  Returns v0 = ? (`jr` at 0x32e8).

- `vertex_to_router_board` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3300 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3300-0x3380 (128 bytes).
  Calls `vertex_to_router_board_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x330c).
  Calls `vertex_to_router_board_nasid` via direct with a0=?, a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x3338).
  At `bne` at 0x3314 (target 0x3364), taken when v0(=ret(vertex_to_router_board_nasid)) != 0; falls through when v0(=ret(vertex_to_router_board_nasid)) == 0.
  At `blez` at 0x3320 (target 0x3360), taken when at(=[sym(numnodes)]) <= 0 (signed); falls through when at(=[sym(numnodes)]) > 0 (signed).
  At `bne` at 0x3340 (target 0x3378), taken when v0(=ret(vertex_to_router_board_nasid)) != 0; falls through when v0(=ret(vertex_to_router_board_nasid)) == 0.
  At `bne` at 0x3358 (target 0x332c), taken when s0(?) < a2(=[sym(numnodes)]) (signed); falls through when s0(?) >= a2(=[sym(numnodes)]) (signed).
  Returns v0 = ? (`jr` at 0x3370).

- `router_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3380 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3380-0x3890 (1296 bytes).
  Stores 8 bytes from v0 to a2 (arg2 at entry) +0x18  (`sd` at 0x33cc).
  Stores 8 bytes from zero to a2 (arg2 at entry) +0x18  (`sd` at 0x3828).
  Stores 2 bytes from s7 to ret(kmem_zalloc_node) +0x2  (`sh` at 0x33fc).
  Stores 1 bytes from s4 to ret(kmem_zalloc_node) +0x6  (`sb` at 0x3408).
  Stores 2 bytes from t2 to ret(kmem_zalloc_node) +0x4  (`sh` at 0x3414).
  Stores 4 bytes from s3 to ret(kmem_zalloc_node) +0x20  (`sw` at 0x3440).
  Stores 8 bytes from s2 to ret(kmem_zalloc_node) +0x18  (`sd` at 0x3444).
  Stores 4 bytes from t0 to ret(kmem_zalloc_node) +0x22c  (`sw` at 0x3448).
  Stores 4 bytes from s5 to ret(kmem_zalloc_node) +0x210  (`sw` at 0x3450).
  Stores 8 bytes from a7 to ret(kmem_zalloc_node) +0x30  (`sd` at 0x3454).
  Stores 8 bytes from a7 to ret(kmem_zalloc_node) +0x28  (`sd` at 0x3458).
  Stores 1 bytes from s4 to ret(kmem_zalloc_node) +0x228  (`sb` at 0x34a0).
  Stores 8 bytes from a3 to ret(kmem_zalloc_node) +0x220 (`sd` at 0x34b0).
  Stores 8 bytes from v0 to ret(kmem_zalloc_node) +0x200 (`sd` at 0x3504).
  Stores 8 bytes from a2 to ret(kmem_zalloc_node) +0x200 (`sd` at 0x354c).
  Stores 8 bytes from a4 to ret(kmem_zalloc_node) +0x208 (`sd` at 0x353c).
  Stores 2 bytes from a7 to a2 (arg2 at entry) +0x4 (`sh` at 0x3578).
  Stores 1 bytes from a2 to ret(kmem_zalloc_node) +0x1fa  (`sb` at 0x3598).
  Stores 2 bytes from a1 to ret(kmem_zalloc_node) +0x1f8  (`sh` at 0x35a0).
  Stores 8 bytes from v0 to ret(kmem_zalloc_node) +0x240  (`sd` at 0x35bc).
  Stores 8 bytes from v0 to ret(kmem_zalloc_node) +0x248  (`sd` at 0x35d0).
  Stores 8 bytes from v0 to ret(kmem_zalloc_node) +0x250  (`sd` at 0x35e4).
  Stores 4 bytes from a4 to ? (base unknown)  (`swl` at 0x35f4).
  Stores 4 bytes from a4 to ? (base unknown)  (`swr` at 0x35f8).
  Stores 1 bytes from a3 to ? (base unknown)  (`sb` at 0x35fc).
  Stores 8 bytes from zero to ? (base unknown)  (`sd` at 0x3674).
  Stores 1 bytes from zero to ret(kmem_zalloc_node) +0x8  (`sb` at 0x367c).
  Stores 1 bytes from t0 to ret(kmem_zalloc_node) +0x8 (`sb` at 0x36ac).
  Stores 1 bytes from zero to ? (base unknown)  (`sb` at 0x36e0).
  Stores 1 bytes from t8 to ret(kmem_zalloc_node) +0x0  (`sb` at 0x370c).
  Stores 4 bytes from t9 to sym(p_routertick) +0x0  (`sw` at 0x3728).
  Calls `kmem_zalloc_node` via direct with a0=0x2c0, a1=0x101, a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jal` at 0x33bc).
  Calls `hwgraph_info_add_LBL` via direct with a0=[a2], a1=sym(.rodata)+616, a2=ret(kmem_zalloc_node), a3=? (`jal` at 0x33dc).
  Calls `spinlock_init` via direct with a0=ret(kmem_zalloc_node)+572, a1=sym(.rodata)+616, a2=?, a3=? (`jal` at 0x33f0).
  Calls `router_reg_read` via direct with a0=ret(kmem_zalloc_node), a1=0x0, a2=ret(kmem_zalloc_node)+16, a3=?, a6=0x3b9aca00, a7=[0x9200000001030100]:8 (`jal` at 0x34ac).
  Calls `router_reg_read` via direct with a0=ret(kmem_zalloc_node), a1=0x20, a2=ret(kmem_zalloc_node)+512, a3=? (`jal` at 0x34c4).
  Calls `router_reg_read` via direct with a0=ret(kmem_zalloc_node), a1=0x28, a2=ret(kmem_zalloc_node)+520, a3=? (`jal` at 0x34d8).
  Calls `router_reg_write` via direct with a0=ret(kmem_zalloc_node), a1=0x20, a2=?, a3=-0x1e1, a5=0x40000000 (`jal` at 0x3548).
  Calls `router_reg_write` via direct with a0=ret(kmem_zalloc_node), a1=0x28, a2=[ret(kmem_zalloc_node)+520]:8, a3=? (`jal` at 0x355c).
  Calls `kmem_alloc_node` via direct with a0=([sym(numnodes)] << 0x3), a1=0x101, a2=a0 at entry (arg0), a3=? (`jal` at 0x35b0).
  Calls `vertex_to_router_board` via direct with a0=[ret(kmem_zalloc_node)+4]:2, a1=[a2], a2=?, a3=? (`jal` at 0x35c4).
  Calls `kern_malloc_node` via direct with a0=0x50, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x35d4).
  Calls `strlen` via direct with a0=[ret(kmem_zalloc_node)+592]:8, a1=?, a2=?, a3=0x0, a4=0x2f68772f (`jal` at 0x3600).
  Calls `board_to_path` via direct with a0=[ret(kmem_zalloc_node)+584]:8, a1=([ret(kmem_zalloc_node)+592]:8 + ret(strlen)), a2=?, a3=? (`jal` at 0x3610).
  Calls `router_port_init` via direct with a0=ret(kmem_zalloc_node), a1=?, a2=?, a3=? (`jal` at 0x36b4).
  Calls `router_set_fences` via direct with a0=ret(kmem_zalloc_node), a1=?, a2=?, a3=? (`jal` at 0x36e4).
  Calls `eeprom_vertex_info_set` via direct with a0=0x200, a1=[ret(kmem_zalloc_node)+4]:2, a2=[a2], a3=[ret(kmem_zalloc_node)+24]:8, a4=0x0 (`jal` at 0x3700).
  Calls `build_router_invent_info` via direct with a0=ret(kmem_zalloc_node), a1=?, a2=?, a3=? (`jal` at 0x3710).
  Calls `sndrv_attach` via direct with a0=[a2], a1=?, a2=?, a3=? (`jal` at 0x3718).
  Calls `net_errmsg` via direct with a0=ret(router_port_init), a1=?, a2=?, a3=? (`jal` at 0x3760).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+616, a2=a0 at entry (arg0), a3=[a2], a5=ret(router_port_init), a6=ret(net_errmsg) (`jal` at 0x3780).
  Calls `net_errmsg` via direct with a0=0x1, a1=?, a2=?, a3=? (`jal` at 0x3790).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata)+616, a2=[a2], a3=0x1, a4=ret(net_errmsg) (`jal` at 0x37a8).
  Calls `net_errmsg` via direct with a0=0x1, a1=?, a2=?, a3=? (`jal` at 0x37b8).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata)+616, a2=[a2], a3=0x1, a4=ret(net_errmsg) (`jal` at 0x37d0).
  Calls `net_errmsg` via direct with a0=ret(router_reg_read), a1=?, a2=?, a3=? (`jal` at 0x37e0).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata)+616, a2=[a2], a3=a0 at entry (arg0), a4=[a2+16]:8, a5=ret(router_reg_read), a6=ret(net_errmsg) (`jal` at 0x3800).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+616, a2=[a2], a3=?, a7=0x3017 (`jal` at 0x3814).
  Calls `kmem_free` via direct with a0=ret(kmem_zalloc_node), a1=0x2c0, a2=?, a3=? (`jal` at 0x3824).
  Calls `assfail` via direct with a0=sym(.rodata)+616, a1=sym(.rodata)+616, a2=0x46b, a3=? (`jal` at 0x383c).
  Calls `assfail` via direct with a0=sym(.rodata)+616, a1=sym(.rodata)+616, a2=0x470, a3=? (`jal` at 0x3854).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+616, a2=[a2], a3=? (`jal` at 0x386c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+616, a2=[a2], a3=? (`jal` at 0x3880).
  At `bne` at 0x34b4 (target 0x37e0), taken when v0(=ret(router_reg_read)) != 0; falls through when v0(=ret(router_reg_read)) == 0.
  At `bne` at 0x34cc (target 0x3790), taken when v0(=ret(router_reg_read)) != 0; falls through when v0(=ret(router_reg_read)) == 0.
  At `bne` at 0x34e0 (target 0x3790), taken when v0(=ret(router_reg_read)) != 0; falls through when v0(=ret(router_reg_read)) == 0.
  At `beq` at 0x34e8 (target 0x3758), taken when t8(=[sym(craylnk_bypass_disable)]) == 0; falls through when t8(=[sym(craylnk_bypass_disable)]) != 0.
  At `bne` at 0x34f0 (target 0x387c), taken when t9(=[sym(kdebug)]:2) != 0; falls through when t9(=[sym(kdebug)]:2) == 0.
  At `bne` at 0x3550 (target 0x37b8), taken when v0(=ret(router_reg_write)) != 0; falls through when v0(=ret(router_reg_write)) == 0.
  At `bne` at 0x3564 (target 0x37b8), taken when v0(=ret(router_reg_write)) != 0; falls through when v0(=ret(router_reg_write)) == 0.
  At `bne` at 0x358c (target 0x3810), taken when a6(?) != a7(=0x3017); falls through when a6(?) == a7(=0x3017).
  At `beq` at 0x35b8 (target 0x3834), taken when v0(=ret(kmem_alloc_node)) == 0; falls through when v0(=ret(kmem_alloc_node)) != 0.
  At `beq` at 0x35e0 (target 0x384c), taken when v0(=ret(kern_malloc_node)) == 0; falls through when v0(=ret(kern_malloc_node)) != 0.
  At `beq` at 0x361c (target 0x3864), taken when a1(=[ret(kmem_zalloc_node)+584]:8) == 0; falls through when a1(=[ret(kmem_zalloc_node)+584]:8) != 0.
  At `bne` at 0x3670 (target 0x3660), taken when v0(?) < 0x9 (signed); falls through when v0(?) >= 0x9 (signed).
  At `beq` at 0x369c (target 0x36b4), taken when (a6(=[ret(kmem_zalloc_node)+16]:8) & a7(?)) == 0; falls through when (a6(=[ret(kmem_zalloc_node)+16]:8) & a7(?)) != 0.
  At `bne` at 0x36bc (target 0x3760), taken when v0(=ret(router_port_init)) != 0; falls through when v0(=ret(router_port_init)) == 0.
  At `bne` at 0x36dc (target 0x3690), taken when s1(?) < 0x9 (signed); falls through when s1(?) >= 0x9 (signed).
  Returns v0 = ? (`jr` at 0x3750).
- `router_get_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3890 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3890-0x3914 (132 bytes).
  Calls `hwgraph_info_get_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+616, a2=sp-48, a3=a3 at entry (arg3) (`jal` at 0x38bc).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x38c8).
  Calls `bcopy` via direct with a0=?, a1=a1 at entry (arg1), a2=?, a3=?, a4=0x2c0 (`jal` at 0x38ec).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x38fc).
  At `bne` at 0x38a4 (target 0x38b4), taken when a0 != at(=-0x1); falls through when a0 == at(=-0x1).
  Returns v0 = one of 0x0, 0x13 (`jr` at 0x390c).

- `timeout_poll` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3914 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3914-0x399c (136 bytes).
  Calls `us_delay` via direct with a0=(a4 << 0x0), a1=?, a2=?, a3=? (`jal` at 0x3960).
  At `blez` at 0x393c (target 0x397c), taken when a3 <= 0 (signed); falls through when a3 > 0 (signed).
  At `beq` at 0x3958 (target 0x397c), taken when a1(?) == 0; falls through when a1(?) != 0.
  At `beq` at 0x3974 (target 0x3958), taken when (s1(=a2) & t8(=[(a1 + (a0 << 0x21))-7926335344146907136]:8)) == 0; falls through when (s1(=a2) & t8(=[(a1 + (a0 << 0x21))-7926335344146907136]:8)) != 0.
  Returns v0 = ? (`jr` at 0x3994).

- `router_state_empty` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x399c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x399c-0x3ae4 (328 bytes).
  Calls `router_reg_read` via direct with a0=a0 at entry (arg0), a1=0x0, a2=sp-80, a3=a3 at entry (arg3) (`jal` at 0x39d0).
  Calls `router_reg_read` via direct with a0=a0 at entry (arg0), a1=?, a2=sp-80, a3=? (`jal` at 0x3a90).
  At `beq` at 0x3a1c (target 0x3a28), taken when (v0(=[a0+8]:1) & at(?)) == 0; falls through when (v0(=[a0+8]:1) & at(?)) != 0.
  At `bne` at 0x3a28 (target 0x3a04), taken when a6(?) != 0; falls through when a6(?) == 0.
  At `beq` at 0x3a54 (target 0x3ab8), taken when a4(?) == 0; falls through when a4(?) != 0.
  At `beq` at 0x3a68 (target 0x3a4c), taken when (v0(=[a0+8]:1) & t8(?)) == 0; falls through when (v0(=[a0+8]:1) & t8(?)) != 0.
  At `bne` at 0x3ab0 (target 0x3a44), taken when s3(?) < 0x9 (signed); falls through when s3(?) >= 0x9 (signed).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x3adc).

- `get_routername` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3db0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3db0-0x3e98 (232 bytes).
  5 such stores of 8 bytes through a1 (a1) to a1 (arg1 at entry) +0x0 , including `sdl` at 0x3df4, 0x3e20, 0x3e44.
  5 such stores of 8 bytes through a1 (a1) to a1 (arg1 at entry) +0x7 , including `sdr` at 0x3df8, 0x3e24, 0x3e48.
  4 such stores of 4 bytes through a1 (a1) to a1 (arg1 at entry) +0x8 , including `swl` at 0x3dfc, 0x3e4c, 0x3e70.
  4 such stores of 4 bytes through a1 (a1) to a1 (arg1 at entry) +0xb , including `swr` at 0x3e00, 0x3e50, 0x3e78.
  Stores 1 bytes from a0 to a1 (arg1 at entry) +0xe  (`sb` at 0x3e04).
  Stores 1 bytes from v1 to a1 (arg1 at entry) +0xd  (`sb` at 0x3e08).
  Stores 1 bytes from a7 to a1 (arg1 at entry) +0xd  (`sb` at 0x3e54).
  Stores 1 bytes from v0 to a1 (arg1 at entry) +0xc  (`sb` at 0x3e0c).
  Stores 1 bytes from a6 to a1 (arg1 at entry) +0xc  (`sb` at 0x3e5c).
  Stores 8 bytes from a4 to a1 (arg1 at entry) +0x8  (`sdl` at 0x3e28).
  Stores 8 bytes from a4 to a1 (arg1 at entry) +0xf  (`sdr` at 0x3e30).
  At `beq` at 0x3dc0 (target 0x3e34), taken when a0 == at(=0x31); falls through when a0 != at(=0x31).
  At `beq` at 0x3dc8 (target 0x3e60), taken when a0 == a3(=0x32); falls through when a0 != a3(=0x32).
  At `beq` at 0x3dd0 (target 0x3e7c), taken when a0 == a4(=0x33); falls through when a0 != a4(=0x33).
  At `beq` at 0x3dd8 (target 0x3e18), taken when a0 == a5(=0x34); falls through when a0 != a5(=0x34).
  Returns v0 = 0x65 (`jr` at 0x3e10).
  Returns v0 = ? (`jr` at 0x3e2c).
  Returns v0 = ? (`jr` at 0x3e58).
  Returns v0 = ? (`jr` at 0x3e74).
  Returns v0 = ? (`jr` at 0x3e90).

- `try_router` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3e98 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3e98-0x409c (516 bytes).
  Stores 4 bytes from t9 to a4 (arg4 at entry) +0x0  (`sw` at 0x3f7c).
  Stores 8 bytes from t0 to ? (base unknown) (`sd` at 0x3fec).
  Calls `find_first_component` via direct with a0=a0 at entry (arg0), a1=0x9, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3ebc).
  Calls `vector_concat` via direct with a0=?, a1=a3 at entry (arg3), a2=?, a3=?, a4=0x30 (`jal` at 0x4004).
  Calls `try_router [0x3e98]` via direct with a0=?, a1=a1 at entry (arg1), a2=?, a3=ret(vector_concat) (`jal` at 0x401c).
  Calls `vector_concat` via direct with a0=?, a1=a3 at entry (arg3), a2=?, a3=?, a4=0x30, a7=0x0 (`jal` at 0x4084).
  At `beq` at 0x3ee8 (target 0x4094), taken when v0(=ret(find_first_component)) == 0; falls through when v0(=ret(find_first_component)) != 0.
  At `beq` at 0x3f2c (target 0x4078), taken when s0(?) == 0; falls through when s0(?) != 0.
  At `blez` at 0x3f38 (target 0x4040), taken when s2(?) <= 0 (signed); falls through when s2(?) > 0 (signed).
  At `beq` at 0x3f48 (target 0x3f34), taken when a0(?) == s6(=-0x1); falls through when a0(?) != s6(=-0x1).
  At `bne` at 0x3f68 (target 0x3f80), taken when t0(=[a1+24]:8) != t1(?); falls through when t0(=[a1+24]:8) == t1(?).
  At `beq` at 0x3f78 (target 0x4080), taken when t9(=[a4]-1) == s6(=-0x1); falls through when t9(=[a4]-1) != s6(=-0x1).
  At `blez` at 0x3f80 (target 0x3f2c), taken when s0(?) <= 0 (signed); falls through when s0(?) > 0 (signed).
  At `beq` at 0x3f98 (target 0x3fd4), taken when ra(?) == t0(?); falls through when ra(?) != t0(?).
  At `beq` at 0x3fac (target 0x3fd4), taken when a7(?) >= s0(?) (signed); falls through when a7(?) < s0(?) (signed).
  At `beq` at 0x3fb8 (target 0x3fd4), taken when t3(?) == t0(?); falls through when t3(?) != t0(?).
  At `bne` at 0x3fcc (target 0x3f94), taken when a7(?) < s0(?) (signed); falls through when a7(?) >= s0(?) (signed).
  At `bne` at 0x3fd4 (target 0x3f34), taken when a7(?) != s0(?); falls through when a7(?) == s0(?).
  At `beq` at 0x3fe8 (target 0x3f34), taken when a3(?) == 0; falls through when a3(?) != 0.
  At `bne` at 0x3ff8 (target 0x3f34), taken when a4(=0x30) != ra(?); falls through when a4(=0x30) == ra(?).
  At `beq` at 0x4030 (target 0x3f34), taken when s6(=-0x1) == v0(=ret(try_router)); falls through when s6(=-0x1) != v0(=ret(try_router)).
  Returns v0 = ? (`jr` at 0x4070).

- `klcfg_discover_route` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x409c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x409c-0x41f0 (340 bytes).
  Calls `try_router [0x3e98]` via direct with a0=?, a1=a1 at entry (arg1), a2=?, a3=0x0, a4=sp-48 (`jal` at 0x4110).
  Calls `vector_reverse` via direct with a0=ret(try_router), a1=?, a2=a2 at entry (arg2), a3=? (`jal` at 0x4168).
  Calls `find_first_component` via direct with a0=a0 at entry (arg0), a1=0x2, a2=0x11, a3=a3 at entry (arg3), a5=[a1+24]:8 (`jal` at 0x4180).
  Calls `printf` via direct with a0=sym(.rodata)+616, a1=[a0+32]:2, a2=?, a3=? (`jal` at 0x41d8).
  At `beq` at 0x40c4 (target 0x4160), taken when at(=[a0+24]:8) == a5(=[a1+24]:8); falls through when at(=[a0+24]:8) != a5(=[a1+24]:8).
  At `beq` at 0x40d4 (target 0x4180), taken when a2(=0x11) == v0(=[a0+5]:1); falls through when a2(=0x11) != v0(=[a0+5]:1).
  At `bne` at 0x40e0 (target 0x40f0), taken when v1(?) != a5(=[a1+24]:8); falls through when v1(?) == a5(=[a1+24]:8).
  At `beq` at 0x40e8 (target 0x41c8), taken when s1(=a2) == 0; falls through when s1(=a2) != 0.
  At `beq` at 0x40f4 (target 0x4178), taken when a2(=0x11) == a0(?); falls through when a2(=0x11) != a0(?).
  At `bne` at 0x4120 (target 0x4168), taken when a0(=-0x1) != v0(=ret(try_router)); falls through when a0(=-0x1) == v0(=ret(try_router)).
  At `bne` at 0x412c (target 0x4140), taken when a2 < s1(=a2) (signed); falls through when a2 >= s1(=a2) (signed).
  At `bne` at 0x4138 (target 0x40fc), taken when s0(?) < 0xf (signed); falls through when s0(?) >= 0xf (signed).
  At `beq` at 0x4188 (target 0x41d0), taken when v0(=ret(find_first_component)) == 0; falls through when v0(=ret(find_first_component)) != 0.
  At `beq` at 0x4194 (target 0x41e8), taken when a1(=[ret(find_first_component)+60]:2) == a0(=-0x1); falls through when a1(=[ret(find_first_component)+60]:2) != a0(=-0x1).
  Returns v0 = ? (`jr` at 0x4158).

- `find_lboard` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x41f0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x41f0-0x4254 (100 bytes).
  At `beq` at 0x41f4 (target 0x4248), taken when a0 == 0; falls through when a0 != 0.
  At `beq` at 0x4210 (target 0x4248), taken when a0(?) == 0; falls through when a0(?) != 0.
  At `beq` at 0x4224 (target 0x424c), taken when t1(?) == a1; falls through when t1(?) != a1.
  At `bne` at 0x4238 (target 0x420c), taken when t1(?) != 0; falls through when t1(?) == 0.
  Returns v0 = ? (`jr` at 0x424c).

- `find_lboard_class` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4254 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4254-0x42c0 (108 bytes).
  At `beq` at 0x4258 (target 0x42b4), taken when a0 == 0; falls through when a0 != 0.
  At `beq` at 0x4278 (target 0x42b4), taken when a0(?) == 0; falls through when a0(?) != 0.
  At `beq` at 0x4290 (target 0x42b8), taken when a5(?) == t1(?); falls through when a5(?) != t1(?).
  At `bne` at 0x42a4 (target 0x4274), taken when a2(?) != 0; falls through when a2(?) == 0.
  Returns v0 = ? (`jr` at 0x42b8).

- `find_lboard_slot_class` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42c0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42c0-0x4338 (120 bytes).
  At `beq` at 0x42c4 (target 0x432c), taken when a0 == 0; falls through when a0 != 0.
  At `beq` at 0x42ec (target 0x42f8), taken when a3(?) == 0; falls through when a3(?) != 0.
  At `beq` at 0x42f8 (target 0x432c), taken when a0(?) == 0; falls through when a0(?) != 0.
  At `bne` at 0x4310 (target 0x42e0), taken when a7(?) != a4(?); falls through when a7(?) == a4(?).
  At `bne` at 0x431c (target 0x42e0), taken when t2(?) != a2; falls through when t2(?) == a2.
  Returns v0 = ? (`jr` at 0x4330).

- `find_component` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4338 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4338-0x4480 (328 bytes).
  Calls `dprintf` via direct with a0=sym(.rodata)+1440, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=one of -0x1, 0xffffffffff (`jal` at 0x4458).
  At `bne` at 0x4344 (target 0x435c), taken when a1 != 0; falls through when a1 == 0.
  At `blez` at 0x434c (target 0x4444), taken when t1(=[a0+23]:1) <= 0 (signed); falls through when t1(=[a0+23]:1) > 0 (signed).
  At `blez` at 0x435c (target 0x446c), taken when t1(=[a0+23]:1) <= 0 (signed); falls through when t1(=[a0+23]:1) > 0 (signed).
  At `beq` at 0x4398 (target 0x43e0), taken when v0(=a1) == a7(?); falls through when v0(=a1) != a7(?).
  At `beq` at 0x43ac (target 0x43e0), taken when t0(?) >= t1(=[a0+23]:1) (signed); falls through when t0(?) < t1(=[a0+23]:1) (signed).
  At `beq` at 0x43c4 (target 0x43e0), taken when v0(=a1) == t3(?); falls through when v0(=a1) != t3(?).
  At `bne` at 0x43d8 (target 0x4388), taken when t0(?) < t1(=[a0+23]:1) (signed); falls through when t0(?) >= t1(=[a0+23]:1) (signed).
  At `beq` at 0x43e0 (target 0x4454), taken when t0(?) == t1(=[a0+23]:1); falls through when t0(?) != t1(=[a0+23]:1).
  At `beq` at 0x43f0 (target 0x4440), taken when a7(?) >= t1(=[a0+23]:1) (signed); falls through when a7(?) < t1(=[a0+23]:1) (signed).
  At `beq` at 0x4430 (target 0x444c), taken when t0(?) == a2; falls through when t0(?) != a2.
  At `bne` at 0x4438 (target 0x4414), taken when t0(?) != 0; falls through when t0(?) == 0.
  At `beq` at 0x4470 (target 0x4454), taken when t1(=[a0+23]:1) == 0; falls through when t1(=[a0+23]:1) != 0.
  Returns v0 = ? (`jr` at 0x4444).

- `find_first_component` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4480 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4480-0x44a0 (32 bytes).
  Calls `find_component` via direct with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=a3 at entry (arg3) (`jal` at 0x448c).
  Returns v0 = ret(find_component) (`jr` at 0x4498).

- `find_lboard_modslot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x44a0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x44a0-0x451c (124 bytes).
  At `beq` at 0x44a4 (target 0x4510), taken when a0 == 0; falls through when a0 != 0.
  At `beq` at 0x44c0 (target 0x4510), taken when a0(?) == 0; falls through when a0(?) != 0.
  At `beq` at 0x44d8 (target 0x44fc), taken when t2(?) == 0; falls through when t2(?) != 0.
  At `bne` at 0x44ec (target 0x44bc), taken when t2(?) != 0; falls through when t2(?) == 0.
  At `bne` at 0x4500 (target 0x44e0), taken when t3(?) != a2; falls through when t3(?) == a2.
  Returns v0 = ? (`jr` at 0x4514).

- `find_lboard_module` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x451c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x451c-0x4584 (104 bytes).
  At `beq` at 0x4520 (target 0x4578), taken when a0 == 0; falls through when a0 != 0.
  At `beq` at 0x453c (target 0x4578), taken when a0(?) == 0; falls through when a0(?) != 0.
  At `beq` at 0x4554 (target 0x457c), taken when t1(?) == 0; falls through when t1(?) != 0.
  At `bne` at 0x4568 (target 0x4538), taken when t1(?) != 0; falls through when t1(?) == 0.
  Returns v0 = ? (`jr` at 0x457c).

- `find_lboard_module_class` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4584 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4584-0x4608 (132 bytes).
  At `beq` at 0x4588 (target 0x45fc), taken when a0 == 0; falls through when a0 != 0.
  At `beq` at 0x45a8 (target 0x45fc), taken when a0(?) == 0; falls through when a0(?) != 0.
  At `beq` at 0x45c0 (target 0x45e4), taken when t2(?) == 0; falls through when t2(?) != 0.
  At `bne` at 0x45d4 (target 0x45a4), taken when a3(?) != 0; falls through when a3(?) == 0.
  At `bne` at 0x45ec (target 0x45c8), taken when t1(?) != a4(?); falls through when t1(?) == a4(?).
  Returns v0 = ? (`jr` at 0x4600).

- `nic_name_convert` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4608 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4608-0x47bc (436 bytes).
  Stores 1 bytes from a3 to ? (base unknown) (`sb` at 0x465c).
  Stores 1 bytes from a1 to ? (base unknown) (`sb` at 0x46b4).
  Stores 1 bytes from zero to ? (base unknown)  (`sb` at 0x46c0).
  Stores 8 bytes from a2 to a1 (arg1 at entry) +0x0  (`sdl` at 0x474c).
  Stores 8 bytes from a2 to a1 (arg1 at entry) +0x7  (`sdr` at 0x4754).
  Stores 4 bytes from a6 to a1 (arg1 at entry) +0x0  (`swl` at 0x476c).
  Stores 4 bytes from t1 to a1 (arg1 at entry) +0x0  (`swl` at 0x4794).
  Stores 4 bytes from a6 to a1 (arg1 at entry) +0x3  (`swr` at 0x4770).
  Stores 4 bytes from t1 to a1 (arg1 at entry) +0x3  (`swr` at 0x4798).
  Stores 1 bytes from a5 to a1 (arg1 at entry) +0x6  (`sb` at 0x4774).
  Stores 1 bytes from a4 to a1 (arg1 at entry) +0x5  (`sb` at 0x4778).
  Stores 1 bytes from a3 to a1 (arg1 at entry) +0x4  (`sb` at 0x4780).
  Stores 1 bytes from t0 to a1 (arg1 at entry) +0x4  (`sb` at 0x47a0).
  Stores 1 bytes from a7 to ? (base unknown)  (`sb` at 0x4788).
  Calls `strlen` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sym(.rodata)+1440 (`jal` at 0x463c).
  Calls `strlen` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x4664).
  Calls `strncmp` via direct with a0=a1 at entry (arg1), a1=sym(.rodata)+1440, a2=0x3, a3=? (`jal` at 0x46d0).
  Calls `strncmp` via direct with a0=a1 at entry (arg1), a1=sym(.rodata)+1440, a2=0x3, a3=sym(.rodata)+1440 (`jal` at 0x46ec).
  Calls `strncmp` via direct with a0=a1 at entry (arg1), a1=sym(.rodata)+1440, a2=0x8, a3=sym(.rodata)+1440 (`jal` at 0x4708).
  Calls `strncmp` via direct with a0=a1 at entry (arg1), a1=sym(.rodata)+1440, a2=0x4, a3=? (`jal` at 0x4720).
  At `beq` at 0x4628 (target 0x4748), taken when at(=[a0]:1) == 0; falls through when at(=[a0]:1) != 0.
  At `beq` at 0x4634 (target 0x4748), taken when v0(=[a0+1]:1) == 0; falls through when v0(=[a0+1]:1) != 0.
  At `beq` at 0x4648 (target 0x47a4), taken when v0(=ret(strlen)) == 0; falls through when v0(=ret(strlen)) != 0.
  At `beq` at 0x4674 (target 0x46b8), taken when s0(?) >= v0(=ret(strlen)) (unsigned); falls through when s0(?) < v0(=ret(strlen)) (unsigned).
  At `beq` at 0x4690 (target 0x46a8), taken when (a3(?) & 0x4003) == 0; falls through when (a3(?) & 0x4003) != 0.
  At `bne` at 0x4698 (target 0x465c), taken when a3(?) != 0; falls through when a3(?) == 0.
  At `beq` at 0x46a8 (target 0x4784), taken when a4(?) == 0; falls through when a4(?) != 0.
  At `beq` at 0x46d8 (target 0x475c), taken when v0(=ret(strncmp)) == 0; falls through when v0(=ret(strncmp)) != 0.
  At `beq` at 0x46f4 (target 0x475c), taken when v0(=ret(strncmp)) == 0; falls through when v0(=ret(strncmp)) != 0.
  At `beq` at 0x4710 (target 0x4758), taken when v0(=ret(strncmp)) == 0; falls through when v0(=ret(strncmp)) != 0.
  At `beq` at 0x4728 (target 0x478c), taken when v0(=ret(strncmp)) == 0; falls through when v0(=ret(strncmp)) != 0.
  Returns v0 = ret(strncmp) (`jr` at 0x4740).

- `is_master_baseio` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x47bc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x47bc-0x491c (352 bytes).
  Calls `find_lboard_module` via direct with a0=?, a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x482c).
  Calls `find_lboard_module` via direct with a0=?, a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x48cc).
  Calls `chk_for_pebrick` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=(a0 << 0x21)+0x9600000000000000, a5=(a0 << 0x21), a6=((a0 << 0x21)+0x9600000000000000 | 0x2000), a7=0xc000 (`jal` at 0x48fc).
  Calls `chk_for_pebrick` via direct with a0=[[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2, a1=([[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2 << 0x21), a2=[[-0x3c00]:8]:8, a3=0xc000, a5=([[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2 << 0x21)+0x9600000000000000, a6=0xffffffffff, a7=-0x35 (`jal` at 0x490c).
  At `beq` at 0x47f8 (target 0x48fc), taken when a7(=0xc000) == at(?); falls through when a7(=0xc000) != at(?).
  At `beq` at 0x4820 (target 0x482c), taken when v1(?) == 0; falls through when v1(?) != 0.
  At `bne` at 0x4854 (target 0x48d8), taken when v0(=ret(find_lboard_module)) != 0; falls through when v0(=ret(find_lboard_module)) == 0.
  At `beq` at 0x4884 (target 0x48d8), taken when a0(=[[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2) == t0(=-0x1); falls through when a0(=[[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2) != t0(=-0x1).
  At `beq` at 0x48a0 (target 0x490c), taken when a3(=0xc000) == a4(?); falls through when a3(=0xc000) != a4(?).
  At `beq` at 0x48c0 (target 0x48cc), taken when t1(?) == 0; falls through when t1(?) != 0.
  At `beq` at 0x48e4 (target 0x48f4), taken when a4(=ret(find_lboard_module)) == 0; falls through when a4(=ret(find_lboard_module)) != 0.
  Returns v0 = ? (`jr` at 0x48f4).

- `get_board_name` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x491c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x491c-0x4b28 (524 bytes).
  Stores 8 bytes from t0 to a3 (arg3 at entry) +0x0  (`sdl` at 0x4a74).
  Stores 8 bytes from t0 to a3 (arg3 at entry) +0x7  (`sdr` at 0x4a7c).
  Calls `find_lboard_modslot` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jal` at 0x49a4).
  Calls `find_lboard_modslot` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jal` at 0x4a48).
  Calls `strcmp` via direct with a0=a3 at entry (arg3), a1=sym(.rodata)+1440, a2=?, a3=? (`jal` at 0x4a98).
  Calls `sort_nic_names [0x5c9c]` via direct with a0=ret(find_lboard_modslot), a1=?, a2=?, a3=? (`jal` at 0x4ad4).
  Calls `nic_name_convert` via direct with a0=ret(find_lboard_modslot)+153, a1=a3 at entry (arg3), a2=?, a3=? (`jal` at 0x4ae0).
  Calls `nic_name_convert` via direct with a0=ret(find_lboard_modslot)+153, a1=a3 at entry (arg3), a2=?, a3=? (`jal` at 0x4af8).
  Calls `chk_for_pebrick` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=(a0 << 0x21), a7=0xc000 (`jal` at 0x4b08).
  Calls `chk_for_pebrick` via direct with a0=[[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2, a1=([[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2 << 0x21), a2=([[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2 << 0x21)+0x9600000000000000, a3=?, a4=0xc000, a6=0xffffffffff, a7=-0x35 (`jal` at 0x4b18).
  At `beq` at 0x495c (target 0x4b08), taken when a7(=0xc000) == at(?); falls through when a7(=0xc000) != at(?).
  At `beq` at 0x4994 (target 0x49a0), taken when v1(?) == 0; falls through when v1(?) != 0.
  At `bne` at 0x49d0 (target 0x4a54), taken when v0(=ret(find_lboard_modslot)) != 0; falls through when v0(=ret(find_lboard_modslot)) == 0.
  At `beq` at 0x49fc (target 0x4a54), taken when a0(=[[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2) == a4(=-0x1); falls through when a0(=[[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2) != a4(=-0x1).
  At `beq` at 0x4a18 (target 0x4b18), taken when a4(=0xc000) == a5(?); falls through when a4(=0xc000) != a5(?).
  At `beq` at 0x4a38 (target 0x4a44), taken when t1(?) == 0; falls through when t1(?) != 0.
  At `beq` at 0x4a54 (target 0x4a70), taken when s0(=ret(find_lboard_modslot)) == 0; falls through when s0(=ret(find_lboard_modslot)) != 0.
  At `beq` at 0x4a64 (target 0x4af8), taken when a7(=[ret(find_lboard_modslot)+6]:1) >= 0x2 (signed); falls through when a7(=[ret(find_lboard_modslot)+6]:1) < 0x2 (signed).
  At `beq` at 0x4a78 (target 0x4a90), taken when s0(=ret(find_lboard_modslot)) == 0; falls through when s0(=ret(find_lboard_modslot)) != 0.
  At `beq` at 0x4a8c (target 0x4af0), taken when t1(?) == t2(=0x50); falls through when t1(?) != t2(=0x50).
  At `beq` at 0x4aa0 (target 0x4ab0), taken when v0(=ret(strcmp)) == 0; falls through when v0(=ret(strcmp)) != 0.
  At `bne` at 0x4aa8 (target 0x4ad4), taken when s0(=ret(find_lboard_modslot)) != 0; falls through when s0(=ret(find_lboard_modslot)) == 0.
  Returns v0 = ret(find_lboard_modslot) (`jr` at 0x4acc).

- `get_cnode_cpu` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4b28 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4b28-0x4c70 (328 bytes).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4b40).
  Calls `nasid_slice_to_cpuinfo` via direct with a0=[([((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 + (a0 + a0))+128]:2, a1=?, a2=?, a3=? (`jal` at 0x4bc0).
  Calls `dprintf` via direct with a0=sym(.rodata)+1440, a1=a0 at entry (arg0), a2=[ret(nasid_slice_to_cpuinfo)+28], a3=0x200 (`jal` at 0x4bfc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+1440, a2=a0 at entry (arg0), a3=? (`jal` at 0x4c60).
  At `beq` at 0x4b80 (target 0x4c2c), taken when s4(=[([((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 + (a0 + a0))+128]:2) == at(=-0x1); falls through when s4(=[([((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 + (a0 + a0))+128]:2) != at(=-0x1).
  At `beq` at 0x4ba0 (target 0x4bac), taken when t8(?) == 0; falls through when t8(?) != 0.
  At `beq` at 0x4bb8 (target 0x4c0c), taken when s0(?) >= 0x4 (signed); falls through when s0(?) < 0x4 (signed).
  At `beq` at 0x4bc8 (target 0x4bb0), taken when v0(=ret(nasid_slice_to_cpuinfo)) == 0; falls through when v0(=ret(nasid_slice_to_cpuinfo)) != 0.
  At `beq` at 0x4bd8 (target 0x4bb0), taken when (ra(=[ret(nasid_slice_to_cpuinfo)+2]:1) & 0x1) == 0; falls through when (ra(=[ret(nasid_slice_to_cpuinfo)+2]:1) & 0x1) != 0.
  At `bne` at 0x4be8 (target 0x4b9c), taken when a2(=[ret(nasid_slice_to_cpuinfo)+28]) < 0x200 (unsigned); falls through when a2(=[ret(nasid_slice_to_cpuinfo)+28]) >= 0x200 (unsigned).
  At `bne` at 0x4c0c (target 0x4c54), taken when s3(?) != s2(?); falls through when s3(?) == s2(?).
  At `beq` at 0x4c1c (target 0x4c4c), taken when s5(=0x200) == s2(?); falls through when s5(=0x200) != s2(?).
  Returns v0 = ? (`jr` at 0x4c44).

- `get_cpu_cnode` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4c70 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4c70-0x4c84 (20 bytes).
  Returns v0 = [(sym(cpuid_to_compact_node) + (a0 + a0))]:2 (`jr` at 0x4c7c).

- `get_cpu_slice` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4c84 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4c84-0x4cb4 (48 bytes).
  Calls `get_cpuinfo` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4c8c).
  At `bne` at 0x4c98 (target 0x4ca8), taken when v0(=ret(get_cpuinfo)) != 0; falls through when v0(=ret(get_cpuinfo)) == 0.
  Returns v0 = ? (`jr` at 0x4cac).

- `get_cpuinfo` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4cb4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4cb4-0x4da8 (244 bytes).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4cc0).
  Calls `get_cpu_cnode` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x4cf4).
  Calls `nasid_slice_to_cpuinfo` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4d44).
  Calls `dprintf` via direct with a0=sym(.rodata)+1440, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x4d88).
  At `beq` at 0x4cec (target 0x4d80), taken when s1(=a0) >= 0x200 (signed); falls through when s1(=a0) < 0x200 (signed).
  At `beq` at 0x4d18 (target 0x4da0), taken when a3(?) == a1(=-0x1); falls through when a3(?) != a1(=-0x1).
  At `beq` at 0x4d24 (target 0x4d98), taken when s2(?) == a1(=-0x1); falls through when s2(?) != a1(=-0x1).
  At `beq` at 0x4d38 (target 0x4d68), taken when a4(?) == 0; falls through when a4(?) != 0.
  At `beq` at 0x4d4c (target 0x4d34), taken when v0(=ret(nasid_slice_to_cpuinfo)) == 0; falls through when v0(=ret(nasid_slice_to_cpuinfo)) != 0.
  At `bne` at 0x4d58 (target 0x4d38), taken when s1(=a0) != a5(=[ret(nasid_slice_to_cpuinfo)+28]); falls through when s1(=a0) == a5(=[ret(nasid_slice_to_cpuinfo)+28]).
  Returns v0 = ? (`jr` at 0x4d78).

- `get_actual_nasid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4da8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4da8-0x4e0c (100 bytes).
  Calls `find_first_component` via direct with a0=a0 at entry (arg0), a1=0x2, a2=a2 at entry (arg2), a3=-0x1 (`jal` at 0x4dd0).
  At `bne` at 0x4db8 (target 0x4dd0), taken when a0 != 0; falls through when a0 == 0.
  At `beq` at 0x4ddc (target 0x4dfc), taken when v0(=ret(find_first_component)) == 0; falls through when v0(=ret(find_first_component)) != 0.
  At `beq` at 0x4dec (target 0x4e04), taken when (at(=[ret(find_first_component)+2]:1) & 0x1) == 0; falls through when (at(=[ret(find_first_component)+2]:1) & 0x1) != 0.
  Returns v0 = ? (`jr` at 0x4dc8).

- `nasid_slice_to_cpuinfo` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4e0c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4e0c-0x4f04 (248 bytes).
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=?, a3=? (`jal` at 0x4e78).
  Calls `find_first_component` via direct with a0=ret(find_lboard), a1=0x1, a2=?, a3=? (`jal` at 0x4ea8).
  Calls `find_component` via direct with a0=ret(find_lboard), a1=?, a2=0x1, a3=? (`jal` at 0x4ec0).
  Calls `chk_for_pebrick` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=((a0 << 0x21)+0x9600000000000000 | 0x2000), a5=(a0 << 0x21), a6=0x9600000000000000 (`jal` at 0x4eec).
  At `beq` at 0x4e44 (target 0x4eec), taken when at(?) == v1(=0xc000); falls through when at(?) != v1(=0xc000).
  At `beq` at 0x4e6c (target 0x4e78), taken when a3(?) == 0; falls through when a3(?) != 0.
  At `bne` at 0x4e80 (target 0x4ea4), taken when v0(=ret(find_lboard)) != 0; falls through when v0(=ret(find_lboard)) == 0.
  At `beq` at 0x4eb0 (target 0x4efc), taken when v0(=ret(find_first_component)) == 0; falls through when v0(=ret(find_first_component)) != 0.
  At `beq` at 0x4ec8 (target 0x4ee4), taken when v0(=ret(find_component)) == 0; falls through when v0(=ret(find_component)) != 0.
  At `bne` at 0x4ed4 (target 0x4ec0), taken when s1(=a1) != a2(?); falls through when s1(=a1) == a2(?).
  Returns v0 = ? (`jr` at 0x4e9c).

- `xbow_port_io_enabled` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4f04 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4f04-0x4fe8 (228 bytes).
  Calls `find_lboard` via direct with a0=?, a1=0x42, a2=?, a3=? (`jal` at 0x4f68).
  Calls `find_component` via direct with a0=ret(find_lboard), a1=0x0, a2=0x4, a3=? (`jal` at 0x4f8c).
  Calls `chk_for_pebrick` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=(a0 << 0x21)+0x9600000000000000, a5=((a0 << 0x21)+0x9600000000000000 | 0x2000), a6=0xffffffffff, a7=0x9600000000000000 (`jal` at 0x4fd8).
  At `beq` at 0x4f3c (target 0x4fd8), taken when at(?) == v1(=0xc000); falls through when at(?) != v1(=0xc000).
  At `beq` at 0x4f5c (target 0x4f68), taken when t1(?) == 0; falls through when t1(?) != 0.
  At `bne` at 0x4f70 (target 0x4f88), taken when v0(=ret(find_lboard)) != 0; falls through when v0(=ret(find_lboard)) == 0.
  At `beq` at 0x4f98 (target 0x4fc8), taken when v0(=ret(find_component)) == 0; falls through when v0(=ret(find_component)) != 0.
  At `beq` at 0x4fb0 (target 0x4fd0), taken when (a1(=[(ret(find_component) + (a1 << 0x3))-6]:1) & 0x1) == 0; falls through when (a1(=[(ret(find_component) + (a1 << 0x3))-6]:1) & 0x1) != 0.
  At `beq` at 0x4fb8 (target 0x4fd0), taken when a1(?) == 0; falls through when a1(?) != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x4f80).

- `board_to_full_path` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4fe8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4fe8-0x5078 (144 bytes).
  Calls `board_to_path` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0 at entry (arg0) (`jal` at 0x5010).
  Calls `sprintf` via direct with a0=a1 at entry (arg1), a1=sym(.rodata)+1440, a2=?, a3=? (`jal` at 0x5030).
  Calls `elsc_init` via direct with a0=sp-2424, a1=[a0+32]:2, a2=a2 at entry (arg2), a3=a0 at entry (arg0) (`jal` at 0x5058).
  Calls `elsc_module_slab_get` via direct with a0=sp-2424, a1=sp-40, a2=sp-36, a3=? (`jal` at 0x5068).
  At `beq` at 0x5008 (target 0x504c), taken when at(?) == v0(=0x10); falls through when at(?) != v0(=0x10).
  Returns v0 = ret(sprintf) (`jr` at 0x5044).
