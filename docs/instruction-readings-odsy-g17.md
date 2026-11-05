# Instruction readings from hostfacts

Each entry records selected memory accesses, calls and arguments, branch conditions, and return values from the exact binary range cited. The facts describe software behavior in the named build; they do not establish hardware behavior.

Routines with an exact binary/member/routine entry already documented were skipped: `sampleBuffersScore` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`; `__glx_DispatchNop` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`; `__glXError` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`; `__glXGetPipeAddress` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`; `orderSmaller` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`; `IndexScore` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`; `__glOdyim_TexCoord4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`; `__glOdyim_Color3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`; `__glOdyim_Color4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`; `__glOdyim_Color4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`; `getrand` in `usr/cpu/sysgen/IP30boot/kernel.o`; `tlbgetrand` in `usr/cpu/sysgen/IP30boot/kernel.o`; `ackkgclock` in `usr/cpu/sysgen/IP30boot/kernel.o`; `allowintrs` in `usr/cpu/sysgen/IP30boot/kernel.o`; `apsfail` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bump_leds` in `usr/cpu/sysgen/IP30boot/kernel.o`; `check_delay_iflush` in `usr/cpu/sysgen/IP30boot/kernel.o`; `disallowboot` in `usr/cpu/sysgen/IP30boot/kernel.o`; `dma_mapinit` in `usr/cpu/sysgen/IP30boot/kernel.o`; `dummy_func` in `usr/cpu/sysgen/IP30boot/kernel.o`; `heart_dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o`; `heart_dcache_wb_inval` in `usr/cpu/sysgen/IP30boot/kernel.o`; `heart_write_dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o`; `heart_write_dcache_wb_inval` in `usr/cpu/sysgen/IP30boot/kernel.o`; `stopkgclock` in `usr/cpu/sysgen/IP30boot/kernel.o`; `vme_init` in `usr/cpu/sysgen/IP30boot/kernel.o`; `vme_ivec_init` in `usr/cpu/sysgen/IP30boot/kernel.o`; `wd93_init` in `usr/cpu/sysgen/IP30boot/kernel.o`; `dcache_wb` in `usr/cpu/sysgen/IP30boot/kernel.o`; `dcache_wbinval` in `usr/cpu/sysgen/IP30boot/kernel.o`; `dki_dcache_wb` in `usr/cpu/sysgen/IP30boot/kernel.o`; `dki_dcache_wbinval` in `usr/cpu/sysgen/IP30boot/kernel.o`; `dummyret0_func` in `usr/cpu/sysgen/IP30boot/kernel.o`; `heart_need_flush` in `usr/cpu/sysgen/IP30boot/kernel.o`; `is_vme_space` in `usr/cpu/sysgen/IP30boot/kernel.o`; `vme_adapter` in `usr/cpu/sysgen/IP30boot/kernel.o`; `resetcounter` in `usr/cpu/sysgen/IP30boot/kernel.o`; `resetcounter_val` in `usr/cpu/sysgen/IP30boot/kernel.o`; `silence_all_audio` in `usr/cpu/sysgen/IP30boot/kernel.o`; `silence_bell` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicAddInt` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicAddUint` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicAddIntHot2` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicAddUintHot2` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicClearInt` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicClearUint` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bitlock_release_32bit` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicClearInt64` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicClearLong` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicClearUint64` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicClearUlong` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bitlock_release` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicAddInt64` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicAddUint64` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicAddInt64Hot2` in `usr/cpu/sysgen/IP30boot/kernel.o`; `atomicAddUint64Hot2` in `usr/cpu/sysgen/IP30boot/kernel.o`; `test_and_set_int64` in `usr/cpu/sysgen/IP30boot/kernel.o`; `test_and_set_long` in `usr/cpu/sysgen/IP30boot/kernel.o`; `test_and_set_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o`; `swap_int64` in `usr/cpu/sysgen/IP30boot/kernel.o`; `swap_long` in `usr/cpu/sysgen/IP30boot/kernel.o`; `swap_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o`; `compare_and_swap_int64` in `usr/cpu/sysgen/IP30boot/kernel.o`; `compare_and_swap_kt` in `usr/cpu/sysgen/IP30boot/kernel.o`; `compare_and_swap_long` in `usr/cpu/sysgen/IP30boot/kernel.o`; `compare_and_swap_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o`; `cerror` in `usr/cpu/sysgen/IP30boot/kernel.o`; `blkclr` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bzero` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bzero_end` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bzerror` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bcmp` in `usr/cpu/sysgen/IP30boot/kernel.o`; `memcmp` in `usr/cpu/sysgen/IP30boot/kernel.o`; `fubyte` in `usr/cpu/sysgen/IP30boot/kernel.o`; `fuibyte` in `usr/cpu/sysgen/IP30boot/kernel.o`; `subyte` in `usr/cpu/sysgen/IP30boot/kernel.o`; `suibyte` in `usr/cpu/sysgen/IP30boot/kernel.o`; `fuiword` in `usr/cpu/sysgen/IP30boot/kernel.o`; `fuword` in `usr/cpu/sysgen/IP30boot/kernel.o`; `suiword` in `usr/cpu/sysgen/IP30boot/kernel.o`; `suword` in `usr/cpu/sysgen/IP30boot/kernel.o`; `uerror` in `usr/cpu/sysgen/IP30boot/kernel.o`; `memcpy` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bcopy` in `usr/cpu/sysgen/IP30boot/kernel.o`; `ovbcopy` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bcopy_pref1` in `usr/cpu/sysgen/IP30boot/kernel.o`; `bcopy_end` in `usr/cpu/sysgen/IP30boot/kernel.o`; `swbcopy` in `usr/cpu/sysgen/IP30boot/kernel.o`; `timestamp_init` in `usr/cpu/sysgen/IP30boot/kernel.o`; `read_branch_diag` in `usr/cpu/sysgen/IP30boot/kernel.o`; `write_branch_diag` in `usr/cpu/sysgen/IP30boot/kernel.o`; `branch_prediction_off` in `usr/cpu/sysgen/IP30boot/kernel.o`; `branch_prediction_on` in `usr/cpu/sysgen/IP30boot/kernel.o`; `branch_prediction_taken` in `usr/cpu/sysgen/IP30boot/kernel.o`; `branch_prediction_fwd_not_taken` in `usr/cpu/sysgen/IP30boot/kernel.o`; `exception_endfast` in `usr/cpu/sysgen/IP30boot/kernel.o`; `nano_to_ust` in `usr/cpu/sysgen/IP30boot/kernel.o`; `ust_init` in `usr/cpu/sysgen/IP30boot/kernel.o`; `get_fpc_csr` in `usr/cpu/sysgen/IP30boot/kernel.o`; `set_fpc_csr` in `usr/cpu/sysgen/IP30boot/kernel.o`; `get_cpu_irr` in `usr/cpu/sysgen/IP30boot/kernel.o`; `reviderror` in `usr/cpu/sysgen/IP30boot/kernel.o`; `get_cpu_cnf` in `usr/cpu/sysgen/IP30boot/kernel.o`; `clear_sline` in `usr/cpu/sysgen/IP30boot/kernel.o`; `dCacheSize` in `usr/cpu/sysgen/IP30boot/kernel.o`; `iCacheSize` in `usr/cpu/sysgen/IP30boot/kernel.o`; `sCacheSize` in `usr/cpu/sysgen/IP30boot/kernel.o`; `getecc` in `usr/cpu/sysgen/IP30boot/kernel.o`; `setecc` in `usr/cpu/sysgen/IP30boot/kernel.o`; `_munge_decc` in `usr/cpu/sysgen/IP30boot/kernel.o`; `sw_cachesynch_patch_insts` in `usr/cpu/sysgen/IP30boot/kernel.o`; `cache_sync_bp_start` in `usr/cpu/sysgen/IP30boot/kernel.o`; `cache_sync` in `usr/cpu/sysgen/IP30boot/kernel.o`; `sw_cachesynch_op1` in `usr/cpu/sysgen/IP30boot/kernel.o`; `sw_cachesynch_op2` in `usr/cpu/sysgen/IP30boot/kernel.o`; `VEC_trap` in `usr/cpu/sysgen/IP30boot/kernel.o`; `soft_trap` in `usr/cpu/sysgen/IP30boot/kernel.o`; `uli_getasids` in `usr/cpu/sysgen/IP30boot/kernel.o`; `uli_setasids` in `usr/cpu/sysgen/IP30boot/kernel.o`; `uli_eret` in `usr/cpu/sysgen/IP30boot/kernel.o`; `spl0` in `usr/cpu/sysgen/IP30boot/kernel.o`; `spl1` in `usr/cpu/sysgen/IP30boot/kernel.o`; `spl3` in `usr/cpu/sysgen/IP30boot/kernel.o`; `spl5` in `usr/cpu/sysgen/IP30boot/kernel.o`; `spl6` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splgio0` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splgio1` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splgio2` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splhi` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splhi_relnet` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splimp` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splnet` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splretr` in `usr/cpu/sysgen/IP30boot/kernel.o`; `spltty` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splvme` in `usr/cpu/sysgen/IP30boot/kernel.o`; `spl65` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splprof` in `usr/cpu/sysgen/IP30boot/kernel.o`; `spl7` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splerr` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splx` in `usr/cpu/sysgen/IP30boot/kernel.o`; `splxecc` in `usr/cpu/sysgen/IP30boot/kernel.o`; `ip26_enable_ucmem` in `usr/cpu/sysgen/IP30boot/kernel.o`; `ip26_return_ucmem` in `usr/cpu/sysgen/IP30boot/kernel.o`; `ip28_enable_ucmem` in `usr/cpu/sysgen/IP30boot/kernel.o`; `ip28_return_ucmem` in `usr/cpu/sysgen/IP30boot/kernel.o`; `_j_endexceptnorm` in `usr/cpu/sysgen/IP30boot/kernel.o`; `_j_exceptnorm_nosymmon` in `usr/cpu/sysgen/IP30boot/kernel.o`; `eutlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o`; `lpg_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o`; `elpg_overlay_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o`; `utlbmiss1` in `usr/cpu/sysgen/IP30boot/kernel.o`; `eutlbmiss1` in `usr/cpu/sysgen/IP30boot/kernel.o`; `lpg_counting_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o`; `elpg_counting_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o`; `utlbmiss3` in `usr/cpu/sysgen/IP30boot/kernel.o`; `eutlbmiss3` in `usr/cpu/sysgen/IP30boot/kernel.o`; `lpg_overlay_counting_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o`; `elpg_overlay_counting_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o`; `utlbmiss_prolog_patch` in `usr/cpu/sysgen/IP30boot/kernel.o`; `_ecc_end` in `usr/cpu/sysgen/IP30boot/kernel.o`; `get_mem_conf` in `usr/cpu/sysgen/IP30boot/kernel.o`; `hub_dma_init` in `usr/cpu/sysgen/IP35boot/kernel.o`; `hub_dmatrans_addr` in `usr/cpu/sysgen/IP35boot/kernel.o`; `hub_dmatrans_list` in `usr/cpu/sysgen/IP35boot/kernel.o`; `hub_dmamap_drain` in `usr/cpu/sysgen/IP35boot/kernel.o`; `hub_dmaaddr_drain` in `usr/cpu/sysgen/IP35boot/kernel.o`; `hub_dmalist_drain` in `usr/cpu/sysgen/IP35boot/kernel.o`; `dma_geth` in `usr/cpu/sysgen/IP35boot/kernel.o`; `dmamap_init` in `usr/cpu/sysgen/IP35boot/kernel.o`; `odsyPolyFillRectSolid` in `usr/lib/X11/dyDDX/odyssey.so`.

- `odsy_usb_comp_update_tiles` in `usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` at 0x7f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x7f4-0x81c (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x804 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x814 has v0 = -0x1.
- `usb_comp_update_tiles` in `usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` at 0x7f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x7f4-0x81c (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x804 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x814 has v0 = -0x1.
- `odsy_usb_comp_readwrite_register` in `usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` at 0x81c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x81c-0x844 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x82c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x83c has v0 = -0x1.
- `usb_comp_readwrite_register` in `usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` at 0x81c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x81c-0x844 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x82c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x83c has v0 = -0x1.
- `odsy_usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` at 0x7f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x7f4-0x81c (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x804 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x814 has v0 = -0x1.
- `usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` at 0x7f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x7f4-0x81c (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x804 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x814 has v0 = -0x1.
- `odsy_usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` at 0x81c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x81c-0x844 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x82c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x83c has v0 = -0x1.
- `usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` at 0x81c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`.
  Range: 0x81c-0x844 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x82c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x83c has v0 = -0x1.
- `memmove` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x78b8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x78b8-0x78c4 (12 bytes).
  It occupies 12 bytes.
- `cache_sync_bp_end` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb6e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb6e0-0xb750 (112 bytes).
  It occupies 112 bytes.
  The `sd` at 0xb6e0 stores 8 bytes to abs 0xffffffffffffc040.
  Calls longway via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xb6f4).
  Calls longway via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xb710).
  The `blez` branch at 0xb6e4 targets 0xb7ac, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0xb6ec targets 0xb6fc, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xb708 targets 0xb718, is taken when t0(=(a0 + a1)-1) != 0, and falls through when t0(=(a0 + a1)-1) == 0.
  The `beq` branch at 0xb740 targets 0xb74c, is taken when a1 >= t0(?) (signed), and falls through when a1 < t0(?) (signed).
- `assbuffer` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbb10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbb10-0xbb14 (4 bytes).
  It occupies 4 bytes.
- `kernelbp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc858 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc858-0xc85c (4 bytes).
  It occupies 4 bytes.
- `sstepbp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc8d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc8d4-0xc8d8 (4 bytes).
  It occupies 4 bytes.
- `utlbmiss_prolog_up` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd800 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd800-0xd80c (12 bytes).
  It occupies 12 bytes.
- `eutlbmiss_prolog_up` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd80c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd80c-0xd81c (16 bytes).
  It occupies 16 bytes.
  The `beq` branch at 0xd80c targets 0xd818 and is always taken.
  The instructions from 0xd814 to 0xd814 are not reached by any path from the entry, and their branches are not listed.
- `utlbmiss_prolog_mp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd80c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd80c-0xd81c (16 bytes).
  It occupies 16 bytes.
  The `beq` branch at 0xd80c targets 0xd818 and is always taken.
  The instructions from 0xd814 to 0xd814 are not reached by any path from the entry, and their branches are not listed.
- `eutlbmiss2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd9bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd9bc-0xd9c0 (4 bytes).
  It occupies 4 bytes.
- `utlbmiss_sharedseg1a` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd9bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd9bc-0xd9c0 (4 bytes).
  It occupies 4 bytes.
- `utlbmiss_sharedseg2a` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xda20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xda20-0xda24 (4 bytes).
  It occupies 4 bytes.
- `maddr_to_dimm` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe4ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe4ac-0xe500 (84 bytes).
  It occupies 84 bytes.
  The `ld` at 0xe4ec loads 8 bytes from table(sym(.data)+7472) +0x0.
  The `jal` at 0xe4b8 calls addr_to_bank [0xdc98] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xe4d8 targets 0xe4f8, is taken when v0(=ret(addr_to_bank)) == a5(=-0x1), and falls through when v0(=ret(addr_to_bank)) != a5(=-0x1).
  The `beq` branch at 0xe4f8 targets 0xe4f0 and is always taken.
  The return at 0xe4f0 has v0 = one of entry(sym(.data)+7472), 0x0.
- `log_dimmerr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe500 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe500-0xe5e8 (232 bytes).
  It occupies 232 bytes.
  The `jal` at 0xe524 calls maddr_to_dimm with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe558 calls sprintf with a0=sp-64, a1=sym(.rodata)+3120, a2=one of 0x43, 0x44, a3=?, a5=0x43.
  The `jal` at 0xe5a0 calls cmn_err with a0=one of 0x1, 0x5, a1=sym(.rodata)+3120, a2=sym(.rodata)+3120, a3=sym(.rodata)+3120, a4=a0 at entry (arg0), a5=sym(.rodata)+3120, a7=sp-64.
  The `beq` branch at 0xe530 targets 0xe5bc, is taken when s3(=a1) == 0, and falls through when s3(=a1) != 0.
  The `bne` branch at 0xe568 targets 0xe5cc, is taken when s1(=a4) != 0, and falls through when s1(=a4) == 0.
  The `bne` branch at 0xe574 targets 0xe5d8, is taken when s0(=ret(maddr_to_dimm)) != 0, and falls through when s0(=ret(maddr_to_dimm)) == 0.
  The `beq` branch at 0xe5c4 targets 0xe570, is taken when s1(=a4) == 0, and falls through when s1(=a4) != 0.
  The `beq` branch at 0xe5d0 targets 0xe57c, is taken when s0(=ret(maddr_to_dimm)) == 0, and falls through when s0(=ret(maddr_to_dimm)) != 0.
  The `beq` branch at 0xe5e0 targets 0xe588 and is always taken.
  The return at 0xe5b4 has v0 = ret(maddr_to_dimm).
- `VEC_addrerr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe5f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe5f0-0xe5f8 (8 bytes).
  It occupies 8 bytes.
  Calls VEC_trap via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xe5f0).
- `VEC_tlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe600 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe600-0xe644 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0xe600 loads 8 bytes from ?.
  The `ld` at 0xe618 loads 8 bytes from a0 (arg0 at entry) +0xf8.
  The `ld` at 0xe640 loads 8 bytes from a0 (arg0 at entry) +0x118.
  The `jal` at 0xe610 calls tlbmiss with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xe62c).
  Calls soft_trap via direct with a0=a0 at entry (arg0), a1=ret(tlbmiss), a2=?, a3=[a0+280]:8 (`j` at 0xe63c).
  The `bne` branch at 0xe61c targets 0xe634, is taken when v0(=ret(tlbmiss)) != 0, and falls through when v0(=ret(tlbmiss)) == 0.
- `sendSIGFPE` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe698 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe698-0xe6e8 (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0xe698 loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0xe6b4 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `sw` at 0xe6b8 stores 4 bytes to [[-0x3fe8]:8+992]:8 +0x0.
  The `jal` at 0xe6c4 calls sigtouthread with a0=a0 at entry (arg0), a1=0x8, a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0xe6d0 calls checkfp with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `bne` branch at 0xe6ac targets 0xe6bc, is taken when a2(=[-0x3fe8]:8) != a0, and falls through when a2(=[-0x3fe8]:8) == a0.
  The return at 0xe6e0 has v0 = ret(checkfp).
- `softfp_dispatch` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe814 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe814-0xf244 (2608 bytes).
  It occupies 2608 bytes.
  8 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xe834, `ld` at 0xe864, `ld` at 0xed1c.
  The `ld` at 0xe868 loads 8 bytes from [-0x3fe8]:8 +0x318.
  The `ld` at 0xe86c loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `ld` at 0xe870 loads 8 bytes from [[-0x3fe8]:8+792]:8 +0x200.
  The `ld` at 0xe884 loads 8 bytes from [[-0x3fe8]:8+792]:8 +0x208.
  3 such `ld` accesses load 8 bytes from table(sym(.rodata)+3328) +0x0, including `ld` at 0xea34, `ld` at 0xecb0, `ld` at 0xed08.
  3 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0xed20, `lbu` at 0xedcc, `lbu` at 0xedf4.
  The `jal` at 0xe838 calls checkfp with a0=[-0x3fe8]:8, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe854 calls get_current_abi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe85c calls load_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe8d0 calls fp_init_glob with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=one of 0x0, 0x3.
  The `jal` at 0xe8f4 calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a6=0x13, a7=0x11.
  The `jal` at 0xe93c calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a6=0x13.
  The `jal` at 0xe98c calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a6=0x13.
  The `jal` at 0xe9a4 calls fpload_d with a0=?, a1=?, a2=?, a3=?, a6=0x13.
  The `jal` at 0xe9d8 calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a5=(a1 << 0xf).
  The `jal` at 0xe9ec calls fpload_d with a0=?, a1=?, a2=?, a3=?, a5=(a1 << 0xf).
  The `jal` at 0xea00 calls fpload_d with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xea48 calls fpload_s with a0=?, a1=?, a2=?, a3=?, a6=0x13.
  The `jal` at 0xea94 calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a4=0x1.
  The `jal` at 0xeac0 calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a5=(a1 << 0xf).
  The `jal` at 0xead4 calls fpload_d with a0=?, a1=?, a2=?, a3=?, a4=0x1.
  The `jal` at 0xeb2c calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=0x4, a4=0x5.
  The `jal` at 0xeb40 calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0xeb54 calls fpload_s with a0=?, a1=?, a2=?, a3=?, a5=(a1 << 0xf).
  The `jal` at 0xeb68 calls fpload_s with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xeb90 calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=0x21, a3=0x4, a4=0x5.
  The `jal` at 0xec6c calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0xecc4 calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=(a1 << 0x19), a3=?.
  The `jal` at 0xed14 calls _cvtsd_l with a0=0x1, a1=?, a2=0x21, a3=0x4, a4=0x5.
  The `jal` at 0xed44 calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=0x21, a3=0x4.
  The `jal` at 0xed58 calls fpload_s with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xed68 calls _cvtsd_w with a0=0x1, a1=?, a2=0x21, a3=0x4.
  The `jal` at 0xed7c calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0xed8c calls _cvtsd_l with a0=0x0, a1=?, a2=?, a3=0x4, a4=0x5.
  The `jal` at 0xeda0 calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0xedc0 calls _comp_sd with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0xede8 calls _comp_sd with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0xf01c calls _cvtsd_w with a0=0x0, a1=?, a2=?, a3=0x4.
  The `beq` branch at 0xe82c targets 0xe840, is taken when at(=[sym(force_checkfp)]) == 0, and falls through when at(=[sym(force_checkfp)]) != 0.
  The `bne` branch at 0xe87c targets 0xe8a0, is taken when a0(=[a0+288]:8) < t8(=[[[-0x3fe8]:8+792]:8+512]:8) (unsigned), and falls through when a0(=[a0+288]:8) >= t8(=[[[-0x3fe8]:8+792]:8+512]:8) (unsigned).
  The `bne` branch at 0xe88c targets 0xe8a0, is taken when a2(=[[[-0x3fe8]:8+792]:8+520]:8) < a0(=[a0+288]:8) (unsigned), and falls through when a2(=[[[-0x3fe8]:8+792]:8+520]:8) >= a0(=[a0+288]:8) (unsigned).
  The `beq` branch at 0xe898 targets 0xe8a4 and is always taken.
  The `beq` branch at 0xe8e0 targets 0xe978, is taken when v0(?) == a6(=0x13), and falls through when v0(?) != a6(=0x13).
  The `beq` branch at 0xe8ec targets 0xe904, is taken when v0(?) == a7(=0x11), and falls through when v0(?) != a7(=0x11).
  The `beq` branch at 0xe8fc targets 0xe948 and is always taken.
  The `beq` branch at 0xe90c targets 0xe980, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0xe914 targets 0xea40, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0xe91c targets 0xea44, is taken when s4(?) == t8(=0x4), and falls through when s4(?) != t8(=0x4).
  The `beq` branch at 0xe928 targets 0xe99c, is taken when s4(?) == t9(=0x1), and falls through when s4(?) != t9(=0x1).
  The `beq` branch at 0xe930 targets 0xe9a0, is taken when s4(?) == ra(=0x5), and falls through when s4(?) != ra(=0x5).
  The `bne` branch at 0xe978 targets 0xe914, is taken when s7(?) != 0, and falls through when s7(?) == 0.
  The `bgez` branch at 0xe984 targets 0xe914, is taken when at(=(a1 << 0x14)) >= 0 (signed), and falls through when at(=(a1 << 0x14)) < 0 (signed).
  The `beq` branch at 0xe994 targets 0xe948 and is always taken.
  The `beq` branch at 0xe9b0 targets 0xea58, is taken when s5(=one of 0x0, 0x1) == 0, and falls through when s5(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xe9b8 targets 0xeaa4, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0xe9c0 targets 0xeb50, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0xe9cc targets 0xe9e8, is taken when s4(?) == a1(=0x1), and falls through when s4(?) != a1(=0x1).
  The `beq` branch at 0xe9e0 targets 0xe948 and is always taken.
  The `beq` branch at 0xea2c targets 0xeb3c, is taken when a0(?) >= 0x1a (unsigned), and falls through when a0(?) < 0x1a (unsigned).
  The `beq` branch at 0xea50 targets 0xe9b0 and is always taken.
  The `bne` branch at 0xea5c targets 0xea74, is taken when s5(?) < 0x4 (unsigned), and falls through when s5(?) >= 0x4 (unsigned).
  The `bne` branch at 0xea64 targets 0xeaf4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0xea6c targets 0xeaf4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xea74 targets 0xec64, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0xea7c targets 0xed54, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0xea88 targets 0xead0, is taken when s4(?) == a4(=0x1), and falls through when s4(?) != a4(=0x1).
  The `beq` branch at 0xea9c targets 0xe948 and is always taken.
  The `bltz` branch at 0xeaa4 targets 0xeac0, is taken when a5(=(a1 << 0xf)) < 0 (signed), and falls through when a5(=(a1 << 0xf)) >= 0 (signed).
  The `bltz` branch at 0xeab0 targets 0xeabc, is taken when a6(=(a1 << 0xa)) < 0 (signed), and falls through when a6(=(a1 << 0xa)) >= 0 (signed).
  The `bgez` branch at 0xeab8 targets 0xe9c0, is taken when a7(=(a1 << 0x19)) >= 0 (signed), and falls through when a7(=(a1 << 0x19)) < 0 (signed).
  The `beq` branch at 0xeac8 targets 0xe948 and is always taken.
  The `bne` branch at 0xeae4 targets 0xeaf4, is taken when s5(?) < 0x30 (unsigned), and falls through when s5(?) >= 0x30 (unsigned).
  The `bne` branch at 0xeaec targets 0xeafc, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0xeaf4 targets 0xecbc, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0xeafc targets 0xec7c, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0xeb08 targets 0xecd4, is taken when v0(=0x1) == s4(?), and falls through when v0(=0x1) != s4(?).
  The `beq` branch at 0xeb14 targets 0xed2c, is taken when s4(?) == a3(=0x4), and falls through when s4(?) != a3(=0x4).
  The `beq` branch at 0xeb20 targets 0xeb78, is taken when s4(?) == a4(=0x5), and falls through when s4(?) != a4(=0x5).
  The `beq` branch at 0xeb34 targets 0xe948 and is always taken.
  The `beq` branch at 0xeb48 targets 0xe948 and is always taken.
  The `beq` branch at 0xeb70 targets 0xea0c and is always taken.
  The `beq` branch at 0xeb78 targets 0xed8c, is taken when s5(?) == a1(=0x20), and falls through when s5(?) != a1(=0x20).
  The `beq` branch at 0xeb84 targets 0xed14, is taken when s5(?) == a2(=0x21), and falls through when s5(?) != a2(=0x21).
  The `beq` branch at 0xeb98 targets 0xe948 and is always taken.
  The `bgez` branch at 0xec64 targets 0xea7c, is taken when a1(=(a1 << 0xf)) >= 0 (signed), and falls through when a1(=(a1 << 0xf)) < 0 (signed).
  The `beq` branch at 0xec74 targets 0xe948 and is always taken.
  The `bne` branch at 0xec7c targets 0xec94, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0xec88 targets 0xedb0, is taken when s5(?) < 0x40 (unsigned), and falls through when s5(?) >= 0x40 (unsigned).
  The `beq` branch at 0xeca8 targets 0xed78, is taken when a0(?) >= 0x26 (unsigned), and falls through when a0(?) < 0x26 (unsigned).
  The `bgez` branch at 0xecbc targets 0xeafc, is taken when a2(=(a1 << 0x19)) >= 0 (signed), and falls through when a2(=(a1 << 0x19)) < 0 (signed).
  The `beq` branch at 0xeccc targets 0xe948 and is always taken.
  The `bne` branch at 0xecd4 targets 0xecec, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0xece0 targets 0xedd8, is taken when s5(?) < 0x40 (unsigned), and falls through when s5(?) >= 0x40 (unsigned).
  The `beq` branch at 0xed00 targets 0xed9c, is taken when a2(?) >= 0x26 (unsigned), and falls through when a2(?) < 0x26 (unsigned).
  The `beq` branch at 0xed24 targets 0xe948 and is always taken.
  The `beq` branch at 0xed2c targets 0xf01c, is taken when s5(?) == a1(=0x20), and falls through when s5(?) != a1(=0x20).
  The `beq` branch at 0xed38 targets 0xed68, is taken when s5(?) == a2(=0x21), and falls through when s5(?) != a2(=0x21).
  The `beq` branch at 0xed4c targets 0xe948 and is always taken.
  The `beq` branch at 0xed60 targets 0xeae0 and is always taken.
  The `beq` branch at 0xed70 targets 0xed20 and is always taken.
  The `beq` branch at 0xed84 targets 0xe948 and is always taken.
  The `beq` branch at 0xed94 targets 0xed20 and is always taken.
  The `beq` branch at 0xeda8 targets 0xe948 and is always taken.
  The `beq` branch at 0xedd0 targets 0xe948 and is always taken.
  The `beq` branch at 0xedf8 targets 0xe948 and is always taken.
  The `beq` branch at 0xf024 targets 0xed20 and is always taken.
  The return at 0xe970 has v0 = one of ret(illfpinst), ?.
  The instructions from 0xeba0 to 0xec60 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xee00 to 0xf018 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xf02c to 0xf240 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xea38 uses a jump table whose successors are unresolved.
  The indirect jump at 0xecb4 uses a jump table whose successors are unresolved.
  The indirect jump at 0xed0c uses a jump table whose successors are unresolved.
- `illfpinst` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf244 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf244-0xf27c (56 bytes).
  It occupies 56 bytes.
  The `ld` at 0xf260 loads 8 bytes from abs 0xffffffffffffc018.
  The `jal` at 0xf258 calls softfp_psignal with a0=0x4, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jal` at 0xf264 calls checkfp with a0=[-0x3fe8]:8, a1=0x0, a2=?, a3=?.
  The return at 0xf274 has v0 = 0x1.
- `_rsqrt_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf27c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf27c-0xf5c0 (836 bytes).
  It occupies 836 bytes.
  The `lw` at 0xf2c0 loads 4 bytes from ((a0 << 0x2) + sym(EXP_INF)) +0x0.
  6 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xf2d4, `ld` at 0xf2ec, `ld` at 0xf44c.
  6 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0xf2dc, `lw` at 0xf2f0, `lw` at 0xf450.
  3 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0xf2e8, `sw` at 0xf458, `sw` at 0xf4c0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xf348, `ld` at 0xf520.
  The `ld` at 0xf394 loads 8 bytes from ((a0 << 0x3) + sym(IMP_1BIT)) +0x0.
  The `lw` at 0xf39c loads 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0.
  The `lw` at 0xf3c0 loads 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0.
  2 such `ld` accesses load 8 bytes from (sym(QUIETNAN) + (a0 << 0x3)) +0x0, including `ld` at 0xf498, `ld` at 0xf564.
  The `ld` at 0xf500 loads 8 bytes from ((a0 << 0x3) + sym(renorm)) +0x0.
  The `lw` at 0xf528 loads 4 bytes from ((a0 << 0x2) + sym(EXP_MIN)) +0x0.
  The `lw` at 0xf52c loads 4 bytes from ?.
  The `lw` at 0xf588 loads 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0.
  The `ld` at 0xf590 loads 8 bytes from (sym(INFINITY) + (a0 << 0x3)) +0x0.
  The `jal` at 0xf2a0 calls breakout_and_test_sd with a0=a0 at entry (arg0), a1=sp-8, a2=sp-96, a3=sp-92, a4=sp-88.
  The `jal` at 0xf300 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=0x10040, a3=?.
  The `jal` at 0xf308 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf344 calls _div_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xf470 calls post_sig with a0=0x8, a1=sym(INFINITY), a2=?, a3=?.
  The `jal` at 0xf478 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf494 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?.
  The `jal` at 0xf49c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf4d8 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=?, a4=([[-0x3fe8]:8+1340] | 0x10040), a5=[-0x3fe8]:8, a6=0x10040.
  The `jal` at 0xf4e0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf504 calls (unknown callee) with a0=sp-88, a1=?, a2=((a0 << 0x3) + sym(IMP_1BIT)), a3=?, a4=0x1, a7=[((a0 << 0x3) + sym(renorm))]:8.
  The `jal` at 0xf53c calls fpstore_sd with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0xf544 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf560 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?, a4=([[-0x3fe8]:8+1340] | 0x10040), a5=[-0x3fe8]:8, a6=0x10040.
  The `jal` at 0xf568 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf59c calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))], a4=(a0 << 0x3).
  The `jal` at 0xf5a4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xf2a8 targets 0xf34c, is taken when v0(=ret(breakout_and_test_sd)) != 0, and falls through when v0(=ret(breakout_and_test_sd)) == 0.
  The `bne` branch at 0xf2c4 targets 0xf360, is taken when at(=[((a0 << 0x2) + sym(EXP_INF))]) != t2(?), and falls through when at(=[((a0 << 0x2) + sym(EXP_INF))]) == t2(?).
  The `beq` branch at 0xf2cc targets 0xf53c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xf2f8 targets 0xf488, is taken when (v1(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (v1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0xf310 targets 0xf350 and is always taken.
  The `beq` branch at 0xf360 targets 0xf440, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xf36c targets 0xf4ac, is taken when a3(?) == a4(=0x1), and falls through when a3(?) != a4(=0x1).
  The `beq` branch at 0xf38c targets 0xf4f8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bltz` branch at 0xf3e8 targets 0xf4f0, is taken when t0(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) < 0 (signed), and falls through when t0(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) >= 0 (signed).
  The `beq` branch at 0xf3f4 targets 0xf5b4 and is always taken.
  The `bne` branch at 0xf418 targets 0xf318, is taken when t0(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) < a2(?) (signed), and falls through when t0(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) >= a2(?) (signed).
  The `bgez` branch at 0xf42c targets 0xf3fc, is taken when a6(?) >= 0 (signed), and falls through when a6(?) < 0 (signed).
  The `beq` branch at 0xf438 targets 0xf404 and is always taken.
  The `bne` branch at 0xf444 targets 0xf368, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xf468 targets 0xf578, is taken when (a7(=[[-0x3fe8]:8+1340]) & 0x400) == 0, and falls through when (a7(=[[-0x3fe8]:8+1340]) & 0x400) != 0.
  The `beq` branch at 0xf480 targets 0xf350 and is always taken.
  The `beq` branch at 0xf4a4 targets 0xf350 and is always taken.
  The `beq` branch at 0xf4d0 targets 0xf554, is taken when (a3(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a3(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0xf4e8 targets 0xf350 and is always taken.
  The `beq` branch at 0xf4f0 targets 0xf318 and is always taken.
  The `beq` branch at 0xf534 targets 0xf3b0 and is always taken.
  The `beq` branch at 0xf54c targets 0xf350 and is always taken.
  The `beq` branch at 0xf570 targets 0xf350 and is always taken.
  The `beq` branch at 0xf5ac targets 0xf350 and is always taken.
  The `beq` branch at 0xf5b8 targets 0xf424 and is always taken.
  The return at 0xf358 has v0 = one of ret(store_fpcsr), ?.
- `_cvtsd_l` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf5c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf5c0-0xf71c (348 bytes).
  It occupies 348 bytes.
  3 such `lb` accesses load 1 byte from ?, including `lb` at 0xf62c, `lb` at 0xf69c, `lb` at 0xf6fc.
  The `ld` at 0xf650 loads 8 bytes from ((a0 << 0x3) + sym(round)) +0x0.
  The `ld` at 0xf6b8 loads 8 bytes from ((a0 << 0x3) + sym(MTWOP63)) +0x0.
  The `jalr` at 0xf654 calls (unknown callee) with a0=one of 0x0, 0x1, a1=?, a2=?, a3=?, a4=[((a0 << 0x3) + sym(round))]:8.
  The `jal` at 0xf6b4 calls fpstore_sd with a0=a0 at entry (arg0), a1=[((a0 << 0x3) + sym(MTWOP63))]:8, a2=a1 at entry (arg1), a3=-0x1, a6=sym(.data)+7536.
  The `jal` at 0xf6bc calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf6d0 calls renorm_d with a0=sp-8, a1=a1 at entry (arg1), a2=?, a3=-0x1, a6=sym(.data)+7536.
  The `jal` at 0xf704 calls fpstore_sd with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=-0x1, a6=sym(.data)+7536.
  The `jal` at 0xf70c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xf5d8 targets 0xf700, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xf5e8 targets 0xf6a8, is taken when a1 == at(=0x8000000000000000), and falls through when a1 != at(=0x8000000000000000).
  The `bltz` branch at 0xf5f0 targets 0xf670, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `beq` branch at 0xf610 targets 0xf6cc, is taken when (a2(?) & v0(=0xffe0000000000000)) == 0, and falls through when (a2(?) & v0(=0xffe0000000000000)) != 0.
  The `beq` branch at 0xf624 targets 0xf67c, is taken when (a2(?) & v1(=0xf000000000000000)) == 0, and falls through when (a2(?) & v1(=0xf000000000000000)) != 0.
  The `beq` branch at 0xf674 targets 0xf5fc and is always taken.
  The `beq` branch at 0xf688 targets 0xf6ec, is taken when (a2(?) & a5(=0xff00000000000000)) == 0, and falls through when (a2(?) & a5(=0xff00000000000000)) != 0.
  The `beq` branch at 0xf6a0 targets 0xf634 and is always taken.
  The `beq` branch at 0xf6c4 targets 0xf660 and is always taken.
  The `beq` branch at 0xf6e4 targets 0xf648 and is always taken.
  The `beq` branch at 0xf6f8 targets 0xf634 and is always taken.
  The `beq` branch at 0xf714 targets 0xf660 and is always taken.
  The return at 0xf668 has v0 = one of ret(?), ret(store_fpcsr).
- `fpstore_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf71c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf71c-0xf768 (76 bytes).
  It occupies 76 bytes.
  The `ld` at 0xf71c loads 8 bytes from abs 0xffffffffffffc018.
  The `lbu` at 0xf724 loads 1 byte from [-0x3fe8]:8 +0x549.
  The `lbu` at 0xf730 loads 1 byte from [-0x3fe8]:8 +0x54a.
  The `jal` at 0xf740 calls fpstore_d with a0=a1 at entry (arg1), a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=a3 at entry (arg3), a4=a1 at entry (arg1), a5=[[-0x3fe8]:8+1354]:1.
  The `jal` at 0xf758 calls fpstore_s with a0=a1 at entry (arg1), a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=a3 at entry (arg3), a4=a1 at entry (arg1), a5=[[-0x3fe8]:8+1354]:1.
  The `beq` branch at 0xf734 targets 0xf754, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xf760 targets 0xf74c and is always taken.
  The return at 0xf74c has v0 = one of ret(fpstore_d), ret(fpstore_s).
- `fpstore_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf768 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf768-0xf848 (224 bytes).
  It occupies 224 bytes.
  The `ld` at 0xf794 loads 8 bytes from abs 0xffffffffffffc460.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xf798, `ld` at 0xf7ac, `ld` at 0xf82c.
  2 such `ld` accesses load 8 bytes from [-0x3fe8]:8 +0x3e0, including `ld` at 0xf7b0, `ld` at 0xf830.
  2 such `sd` accesses store 8 bytes to ((a1 << 0x3) + [[-0x3fe8]:8+992]:8) +0x28, including `sd` at 0xf7c0, `sd` at 0xf828.
  The `sd` at 0xf844 stores 8 bytes to ([[-0x3fe8]:8+992]:8 + (a1 << 0x3)) +0x30.
  The `jal` at 0xf788 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xf7a4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xf7e0 calls getsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf7f4 calls setsr with a0=(ret(getsr) | one of 0x20000000, 0x24000000), a1=0x20000000, a2=?, a3=?.
  The `jal` at 0xf804 calls fpunit_fpstore_d with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0xf80c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf79c targets 0xf7e0, is taken when at(=[-0x3fe8]:8) == v0(=[-0x3ba0]:8), and falls through when at(=[-0x3fe8]:8) != v0(=[-0x3ba0]:8).
  The `beq` branch at 0xf7b8 targets 0xf81c, is taken when s0(=a2) == 0, and falls through when s0(=a2) != 0.
  The `beq` branch at 0xf814 targets 0xf7c8 and is always taken.
  The `beq` branch at 0xf840 targets 0xf7c4 and is always taken.
  The return at 0xf7d8 has v0 = one of ((a1 << 0x3) + [[-0x3fe8]:8+992]:8), ret(splx).
- `fpstore_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf848 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf848-0xf8f0 (168 bytes).
  It occupies 168 bytes.
  The `ld` at 0xf870 loads 8 bytes from abs 0xffffffffffffc460.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xf874, `ld` at 0xf8c4.
  The `ld` at 0xf8c8 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `sd` at 0xf8d4 stores 8 bytes to ([[-0x3fe8]:8+992]:8 + (a1 << 0x3)) +0x28.
  The `jal` at 0xf864 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xf880 calls getsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf898 calls setsr with a0=(ret(getsr) | one of 0x20000000, 0x24000000), a1=a2 at entry (arg2), a2=0x20000000, a3=?.
  The `jal` at 0xf8a4 calls fpunit_fpstore_s with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xf8ac calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xf8bc calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `bne` branch at 0xf878 targets 0xf8bc, is taken when at(=[-0x3fe8]:8) != v0(=[-0x3ba0]:8), and falls through when at(=[-0x3fe8]:8) == v0(=[-0x3ba0]:8).
  The `beq` branch at 0xf8b4 targets 0xf8dc and is always taken.
  The return at 0xf8e8 has v0 = ret(splx).
- `fpload_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf8f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf8f0-0xf9bc (204 bytes).
  It occupies 204 bytes.
  The `ld` at 0xf914 loads 8 bytes from abs 0xffffffffffffc460.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xf918, `ld` at 0xf92c.
  The `ld` at 0xf930 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `ld` at 0xf940 loads 8 bytes from ((a0 << 0x3) + [[-0x3fe8]:8+992]:8) +0x28.
  The `ld` at 0xf9a0 loads 8 bytes from ((a0 << 0x3) + [[-0x3fe8]:8+992]:8) +0x30.
  The `jal` at 0xf908 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xf924 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xf960 calls getsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf974 calls setsr with a0=(ret(getsr) | one of 0x20000000, 0x24000000), a1=0x20000000, a2=?, a3=?.
  The `jal` at 0xf980 calls fpunit_fpload_d with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xf98c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf91c targets 0xf960, is taken when at(=[-0x3fe8]:8) == v0(=[-0x3ba0]:8), and falls through when at(=[-0x3fe8]:8) != v0(=[-0x3ba0]:8).
  The `beq` branch at 0xf93c targets 0xf99c, is taken when s0(=a1) == 0, and falls through when s0(=a1) != 0.
  The `beq` branch at 0xf994 targets 0xf948 and is always taken.
  The `beq` branch at 0xf9b4 targets 0xf948 and is always taken.
  The return at 0xf958 has v0 = one of [((a0 << 0x3) + [[-0x3fe8]:8+992]:8)+40]:8, ret(fpunit_fpload_d), ?.
- `fpload_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf9bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf9bc-0xfa64 (168 bytes).
  It occupies 168 bytes.
  The `ld` at 0xf9dc loads 8 bytes from abs 0xffffffffffffc460.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xf9e0, `ld` at 0xfa30.
  The `ld` at 0xfa34 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `ld` at 0xfa44 loads 8 bytes from ([[-0x3fe8]:8+992]:8 + (a0 << 0x3)) +0x28.
  The `jal` at 0xf9d0 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xf9ec calls getsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfa04 calls setsr with a0=(ret(getsr) | one of 0x20000000, 0x24000000), a1=a1 at entry (arg1), a2=0x20000000, a3=?.
  The `jal` at 0xfa0c calls fpunit_fpload_s with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xfa18 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xfa28 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `bne` branch at 0xf9e4 targets 0xfa28, is taken when at(=[-0x3fe8]:8) != v0(=[-0x3ba0]:8), and falls through when at(=[-0x3fe8]:8) == v0(=[-0x3ba0]:8).
  The `beq` branch at 0xfa20 targets 0xfa50 and is always taken.
  The return at 0xfa5c has v0 = one of ret(fpunit_fpload_s), ?.
- `store_fpcsr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfa64 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfa64-0xfb18 (180 bytes).
  It occupies 180 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xfa64, `ld` at 0xfa8c.
  2 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0xfa68, `lbu` at 0xfa90.
  The `lw` at 0xfa80 loads 4 bytes from [-0x3fe8]:8 +0x53c.
  The `ld` at 0xfaa0 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `sw` at 0xfaa4 stores 4 bytes to [[-0x3fe8]:8+992]:8 +0x130.
  The `ld` at 0xfac0 loads 8 bytes from abs 0xffffffffffffc460.
  The `lw` at 0xfaf0 loads 4 bytes from [-0x3fe8]:8 +0x538.
  The `jal` at 0xfa84 calls splhi with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[-0x3fe8]:8.
  The `jal` at 0xfaac calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfacc calls getsr with a0=?, a1=[-0x3ba0]:8, a2=?, a3=[-0x3fe8]:8.
  The `jal` at 0xfad8 calls setsr with a0=(ret(getsr) | 0x20000000), a1=?, a2=?, a3=?.
  The `jal` at 0xfae0 calls set_fpc_csr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xfa7c targets 0xfaf0, is taken when (at(=[[-0x3fe8]:8+1353]:1) & 0x10) == 0, and falls through when (at(=[[-0x3fe8]:8+1353]:1) & 0x10) != 0.
  The `beq` branch at 0xfa98 targets 0xfac0, is taken when (v1(=[[-0x3fe8]:8+1353]:1) & 0x10) == 0, and falls through when (v1(=[[-0x3fe8]:8+1353]:1) & 0x10) != 0.
  The `bne` branch at 0xfac4 targets 0xfaa0, is taken when a1(=[-0x3ba0]:8) != a3(=[-0x3fe8]:8), and falls through when a1(=[-0x3ba0]:8) == a3(=[-0x3fe8]:8).
  The `beq` branch at 0xfae8 targets 0xfaa8 and is always taken.
  The `beq` branch at 0xfafc targets 0xfa84, is taken when a4(=[[-0x3fe8]:8+1336]) == 0, and falls through when a4(=[[-0x3fe8]:8+1336]) != 0.
  The `beq` branch at 0xfb10 targets 0xfa84 and is always taken.
  The return at 0xfab8 has v0 = ret(splx).
- `load_fpcsr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfb18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfb18-0xfb88 (112 bytes).
  It occupies 112 bytes.
  The `ld` at 0xfb2c loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0xfb30 loads 8 bytes from abs 0xffffffffffffc460.
  The `ld` at 0xfb3c loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `lw` at 0xfb40 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x130.
  The `jal` at 0xfb24 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xfb44 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xfb64 calls getsr with a0=[-0x3fe8]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xfb70 calls setsr with a0=(ret(getsr) | 0x20000000), a1=?, a2=?, a3=?.
  The `jal` at 0xfb78 calls get_fpc_csr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xfb34 targets 0xfb64, is taken when at(=[-0x3ba0]:8) == a0(=[-0x3fe8]:8), and falls through when at(=[-0x3ba0]:8) != a0(=[-0x3fe8]:8).
  The `beq` branch at 0xfb80 targets 0xfb44 and is always taken.
  The return at 0xfb5c has v0 = ?.
- `post_sig` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfb88 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfb88-0xfbd8 (80 bytes).
  It occupies 80 bytes.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xfb88, `ld` at 0xfbb4, `ld` at 0xfbcc.
  2 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0xfb8c, `lbu` at 0xfbb8.
  The `lw` at 0xfba8 loads 4 bytes from [-0x3fe8]:8 +0x53c.
  The `ld` at 0xfbb0 loads 8 bytes from [-0x3fe8]:8 +0x530.
  The `sb` at 0xfbc0 stores 1 byte to [-0x3fe8]:8 +0x549.
  The `jal` at 0xfbac calls softfp_psignal with a0=a0 at entry (arg0), a1=[[-0x3fe8]:8+1340], a2=[[-0x3fe8]:8+1328]:8, a3=a3 at entry (arg3), a4=[-0x3fe8]:8.
  The `jal` at 0xfbc8 calls checkfp with a0=[-0x3fe8]:8, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0xfb98 targets 0xfba8, is taken when (at(=[[-0x3fe8]:8+1353]:1) & 0x10) == 0, and falls through when (at(=[[-0x3fe8]:8+1353]:1) & 0x10) != 0.
  The `beq` branch at 0xfbd0 targets 0xfba0 and is always taken.
  The return at 0xfba0 has v0 = one of ?, ret(checkfp).
- `fp_init_glob` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfbd8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfbd8-0xfc20 (72 bytes).
  It occupies 72 bytes.
  6 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xfbd8, `ld` at 0xfbe0, `ld` at 0xfbe8.
  The `sd` at 0xfbdc stores 8 bytes to [-0x3fe8]:8 +0x530.
  The `sw` at 0xfbe4 stores 4 bytes to [-0x3fe8]:8 +0x53c.
  The `sw` at 0xfbec stores 4 bytes to [-0x3fe8]:8 +0x538.
  The `sb` at 0xfbfc stores 1 byte to [-0x3fe8]:8 +0x548.
  The `sb` at 0xfc10 stores 1 byte to [-0x3fe8]:8 +0x549.
  The `sb` at 0xfc1c stores 1 byte to [-0x3fe8]:8 +0x54a.
  The return at 0xfc18 has v0 = ((a4 | one of 0x0, 0x20) | 0x4).
- `breakout_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfc20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfc20-0xfd00 (224 bytes).
  It occupies 224 bytes.
  3 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0xfc28, `ld` at 0xfc60, `ld` at 0xfc80.
  The `lw` at 0xfc30 loads 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xfc44, `sw` at 0xfc58.
  The `lw` at 0xfc48 loads 4 bytes from ((a0 << 0x2) + sym(EXP_MASK)) +0x0.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0, including `lw` at 0xfc5c, `lw` at 0xfcb8.
  The `sw` at 0xfc78 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `ld` at 0xfc7c loads 8 bytes from (sym(FRAC_MASK) + (a0 << 0x3)) +0x0.
  2 such `sd` accesses store 8 bytes to a4 (arg4 at entry) +0x0, including `sd` at 0xfc88, `sd` at 0xfcb4.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xfc8c, `ld` at 0xfcc8, `ld` at 0xfcd8.
  The `lbu` at 0xfc90 loads 1 byte from [-0x3fe8]:8 +0x549.
  The `lw` at 0xfca0 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lwu` at 0xfcbc loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sd` at 0xfcc4 stores 8 bytes to a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0xfccc, `lw` at 0xfcdc.
  The `sw` at 0xfcd4 stores 4 bytes to [-0x3fe8]:8 +0x53c.
  The `jal` at 0xfcec calls post_sig with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=((a0 << 0x2) + sym(SIGN_SHIFT)).
  The `beq` branch at 0xfc98 targets 0xfcf8, is taken when (at(=[[-0x3fe8]:8+1353]:1) & 0x1) == 0, and falls through when (at(=[[-0x3fe8]:8+1353]:1) & 0x1) != 0.
  The `bne` branch at 0xfca4 targets 0xfcf8, is taken when t8(=[a3]) != 0, and falls through when t8(=[a3]) == 0.
  The `beq` branch at 0xfcac targets 0xfcf8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xfce4 targets 0xfcf8, is taken when (t9(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (t9(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The return at 0xfcf8 has v0 = one of ?, [-0x3fe8]:8, ret(post_sig).
- `screen_nan_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfd00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfd00-0xfdc8 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xfd0c loads 4 bytes from (sym(EXP_NAN) + (a0 << 0x2)) +0x0.
  The `ld` at 0xfd2c loads 8 bytes from ((a0 << 0x3) + sym(SNANBIT_MASK)) +0x0.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xfd3c, `ld` at 0xfd4c.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0xfd40, `lw` at 0xfd50.
  The `sw` at 0xfd48 stores 4 bytes to [-0x3fe8]:8 +0x53c.
  The `ld` at 0xfdbc loads 8 bytes from ((a0 << 0x3) + sym(QUIETNAN)) +0x0.
  The `jal` at 0xfd60 calls post_sig with a0=0x8, a1=?, a2=([[-0x3fe8]:8+1340] | 0x10040), a3=[-0x3fe8]:8, a4=0x10040, a6=sym(SNANBIT_MASK).
  The `jal` at 0xfd68 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfd94 calls fpstore_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x10040, a6=sym(SNANBIT_MASK).
  The `jal` at 0xfd9c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfdb8 calls fpstore_sd with a0=a0 at entry (arg0), a1=[((a0 << 0x3) + sym(QUIETNAN))]:8, a2=([[-0x3fe8]:8+1340] | 0x10040), a3=[-0x3fe8]:8, a4=0x10040, a6=sym(SNANBIT_MASK).
  The `bne` branch at 0xfd20 targets 0xfd80, is taken when at(=[(sym(EXP_NAN) + (a0 << 0x2))]) != a2, and falls through when at(=[(sym(EXP_NAN) + (a0 << 0x2))]) == a2.
  The `beq` branch at 0xfd34 targets 0xfd88, is taken when (v1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & a3) == 0, and falls through when (v1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & a3) != 0.
  The `beq` branch at 0xfd58 targets 0xfdb0, is taken when (a1(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0xfd80 targets 0xfd78 and is always taken.
  The `beq` branch at 0xfd8c targets 0xfd78, is taken when a3 == 0, and falls through when a3 != 0.
  The `beq` branch at 0xfda8 targets 0xfd78 and is always taken.
  The `beq` branch at 0xfdc0 targets 0xfd68 and is always taken.
  The return at 0xfd78 has v0 = one of 0x0, 0x1.
- `breakout_and_test_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfdc8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfdc8-0xfe28 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0xfdf4 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xfdf8 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0xfe04 loads 8 bytes from a4 (arg4 at entry) +0x0.
  The `jal` at 0xfde0 calls breakout_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xfe00 calls screen_nan_sd with a0=a0 at entry (arg0), a1=[a1]:8, a2=[a3], a3=[a4]:8.
  The `beq` branch at 0xfe0c targets 0xfe20, is taken when v0(=ret(screen_nan_sd)) == 0, and falls through when v0(=ret(screen_nan_sd)) != 0.
  The `beq` branch at 0xfe20 targets 0xfe18 and is always taken.
  The return at 0xfe18 has v0 = one of 0x0, 0x1.
- `breakout_and_test2_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfe28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfe28-0xffc0 (408 bytes).
  It occupies 408 bytes.
  The `lw` at 0xfe90 loads 4 bytes from (sym(EXP_NAN) + (a0 << 0x2)) +0x0.
  The `lw` at 0xfe94 loads 4 bytes from a3 (arg3 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(SNANBIT_MASK)) +0x0, including `ld` at 0xfeb8, `ld` at 0xfee0.
  2 such `ld` accesses load 8 bytes from a4 (arg4 at entry) +0x0, including `ld` at 0xfebc, `ld` at 0xff4c.
  The `lw` at 0xfecc loads 4 bytes from a7 (arg7 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xfed8, `ld` at 0xff7c.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xfef0, `ld` at 0xff00.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0xfef4, `lw` at 0xff04.
  The `sw` at 0xfefc stores 4 bytes to [-0x3fe8]:8 +0x53c.
  The `ld` at 0xff60 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0xff8c loads 8 bytes from a5 (arg5 at entry) +0x0.
  The `ld` at 0xffb4 loads 8 bytes from ((a0 << 0x3) + sym(QUIETNAN)) +0x0.
  The `jal` at 0xfe5c calls breakout_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xfe74 calls breakout_sd with a0=a0 at entry (arg0), a1=a5 at entry (arg5), a2=a6 at entry (arg6), a3=a7 at entry (arg7).
  The `jal` at 0xff14 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=(a0 << 0x3), a3=?, a4=sym(SNANBIT_MASK).
  The `jal` at 0xff1c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xff5c calls fpstore_sd with a0=a0 at entry (arg0), a1=[a1]:8, a2=(a0 << 0x3), a3=[a7], a4=sym(SNANBIT_MASK).
  The `jal` at 0xff64 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xff88 calls fpstore_sd with a0=a0 at entry (arg0), a1=[a5]:8, a2=?, a3=[a7], a4=sym(SNANBIT_MASK).
  The `jal` at 0xff90 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xffb0 calls fpstore_sd with a0=a0 at entry (arg0), a1=[((a0 << 0x3) + sym(QUIETNAN))]:8, a2=(a0 << 0x3), a3=?, a4=sym(SNANBIT_MASK).
  The `bne` branch at 0xfeb0 targets 0xfecc, is taken when a1(=[a3]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a1(=[a3]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `bne` branch at 0xfec4 targets 0xfef0, is taken when (a5(=[a4]:8) & a6(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0, and falls through when (a5(=[a4]:8) & a6(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0.
  The `bne` branch at 0xfed0 targets 0xff44, is taken when a3(=[a7]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a3(=[a7]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0xfee8 targets 0xff44, is taken when (a7(?) & t0(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0, and falls through when (a7(?) & t0(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0.
  The `beq` branch at 0xff0c targets 0xffa8, is taken when (t1(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (t1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `bne` branch at 0xff44 targets 0xff74, is taken when a1(=[a3]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a1(=[a3]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0xff50 targets 0xff74, is taken when t9(=[a4]:8) == 0, and falls through when t9(=[a4]:8) != 0.
  The `beq` branch at 0xff6c targets 0xff28 and is always taken.
  The `bne` branch at 0xff74 targets 0xffa0, is taken when a3(=[a7]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a3(=[a7]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0xff80 targets 0xffa0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xff98 targets 0xff28 and is always taken.
  The `beq` branch at 0xffa0 targets 0xff28 and is always taken.
  The `beq` branch at 0xffb8 targets 0xff1c and is always taken.
  The return at 0xff3c has v0 = one of 0x0, 0x1.
- `breakout_and_test3_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xffc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xffc0-0x101d0 (528 bytes).
  It occupies 528 bytes.
  The `lw` at 0x10038 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lw` at 0x10040 loads 4 bytes from (sym(EXP_NAN) + (a0 << 0x2)) +0x0.
  2 such `ld` accesses load 8 bytes from a4 (arg4 at entry) +0x0, including `ld` at 0x10058, `ld` at 0x1012c.
  3 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(SNANBIT_MASK)) +0x0, including `ld` at 0x10060, `ld` at 0x100e8, `ld` at 0x10110.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x10070, `ld` at 0x10088.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x10078, `lw` at 0x1008c.
  The `sw` at 0x10084 stores 4 bytes to [-0x3fe8]:8 +0x53c.
  The `lw` at 0x100d0 loads 4 bytes from a7 (arg7 at entry) +0x0.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x100ec, `ld` at 0x10114, `ld` at 0x1015c.
  The `lw` at 0x100fc loads 4 bytes from ?.
  The `ld` at 0x10140 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x1016c loads 8 bytes from a5 (arg5 at entry) +0x0.
  The `ld` at 0x101c4 loads 8 bytes from ((a0 << 0x3) + sym(QUIETNAN)) +0x0.
  The `jal` at 0xfff4 calls breakout_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1000c calls breakout_sd with a0=a0 at entry (arg0), a1=a5 at entry (arg5), a2=a6 at entry (arg6), a3=a7 at entry (arg7).
  The `jal` at 0x10028 calls breakout_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1009c calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=(a0 << 0x3), a3=?, a5=([[-0x3fe8]:8+1340] | 0x10040), a6=[-0x3fe8]:8, a7=0x10040.
  The `jal` at 0x100a4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1013c calls fpstore_sd with a0=a0 at entry (arg0), a1=[a1]:8, a2=(a0 << 0x3), a3=?, a5=[a7], a6=((a0 << 0x3) + sym(SNANBIT_MASK)).
  The `jal` at 0x10144 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10168 calls fpstore_sd with a0=a0 at entry (arg0), a1=[a5]:8, a2=?, a3=?, a5=[a7], a6=((a0 << 0x3) + sym(SNANBIT_MASK)).
  The `jal` at 0x10170 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10198 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a7], a6=((a0 << 0x3) + sym(SNANBIT_MASK)).
  The `jal` at 0x101a0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x101c0 calls fpstore_sd with a0=a0 at entry (arg0), a1=[((a0 << 0x3) + sym(QUIETNAN))]:8, a2=(a0 << 0x3), a3=?, a5=([[-0x3fe8]:8+1340] | 0x10040), a6=[-0x3fe8]:8, a7=0x10040.
  The `bne` branch at 0x10050 targets 0x100d0, is taken when a0(=[a3]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a0(=[a3]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0x10068 targets 0x100d0, is taken when (a1(=[a4]:8) & a3(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0, and falls through when (a1(=[a4]:8) & a3(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0.
  The `beq` branch at 0x10094 targets 0x101b8, is taken when (a4(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a4(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `bne` branch at 0x100dc targets 0x100fc, is taken when a5(=[a7]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a5(=[a7]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `bne` branch at 0x100f4 targets 0x10070, is taken when (t0(?) & t1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0, and falls through when (t0(?) & t1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0.
  The `bne` branch at 0x10108 targets 0x10124, is taken when a7(?) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a7(?) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `bne` branch at 0x1011c targets 0x10070, is taken when (t0(?) & t1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0, and falls through when (t0(?) & t1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0.
  The `bne` branch at 0x10124 targets 0x10154, is taken when a0(=[a3]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a0(=[a3]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0x10130 targets 0x10154, is taken when t1(=[a4]:8) == 0, and falls through when t1(=[a4]:8) != 0.
  The `beq` branch at 0x1014c targets 0x100b0 and is always taken.
  The `bne` branch at 0x10154 targets 0x10180, is taken when a5(=[a7]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a5(=[a7]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0x10160 targets 0x10180, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10178 targets 0x100b0 and is always taken.
  The `bne` branch at 0x10180 targets 0x101b0, is taken when a7(?) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a7(?) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0x1018c targets 0x101b0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x101a8 targets 0x100b0 and is always taken.
  The `beq` branch at 0x101b0 targets 0x100b0 and is always taken.
  The `beq` branch at 0x101c8 targets 0x100a4 and is always taken.
  The return at 0x100c8 has v0 = one of 0x0, 0x1.
- `_cvtsd_w` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x101d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x101d0-0x10274 (164 bytes).
  It occupies 164 bytes.
  The `ld` at 0x10218 loads 8 bytes from (sym(round) + (a0 << 0x3)) +0x0.
  The `jal` at 0x10204 calls renorm_d with a0=sp-8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x1022c calls (unknown callee) with a0=one of 0x0, 0x1, a1=?, a2=?, a3=0x0, a4=[(sym(round) + (a0 << 0x3))]:8, a5=(a0 << 0x3).
  The `jal` at 0x1025c calls fpstore_sd with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a1 at entry (arg1).
  The `jal` at 0x10264 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x101e8 targets 0x10258, is taken when a1 == 0, and falls through when a1 != 0.
  The `bltz` branch at 0x101f8 targets 0x10248, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0x10250 targets 0x10204 and is always taken.
  The `beq` branch at 0x1026c targets 0x10238 and is always taken.
  The return at 0x10240 has v0 = one of ret(?), ret(store_fpcsr).
- `_nmsub_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10274 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10274-0x10338 (196 bytes).
  It occupies 196 bytes.
  The `ld` at 0x10284 loads 8 bytes from abs 0xffffffffffffc018.
  The `lbu` at 0x10290 loads 1 byte from [-0x3fe8]:8 +0x549.
  The `sb` at 0x102a8 stores 1 byte to [-0x3fe8]:8 +0x549.
  The `jal` at 0x102e0 calls breakout_and_test3_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76.
  The `jal` at 0x10328 calls madd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x102e8 targets 0x102fc, is taken when v0(=ret(breakout_and_test3_sd)) == 0, and falls through when v0(=ret(breakout_and_test3_sd)) != 0.
  The `beq` branch at 0x10330 targets 0x102f4 and is always taken.
  The return at 0x102f4 has v0 = one of ret(breakout_and_test3_sd), ret(madd).
- `_cvtw_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10338 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10338-0x104f4 (444 bytes).
  It occupies 444 bytes.
  The `lw` at 0x10370 loads 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x10398, `ld` at 0x103a8, `ld` at 0x104cc.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x1039c, `lw` at 0x103ac.
  The `sw` at 0x103a4 stores 4 bytes to [-0x3fe8]:8 +0x53c.
  The `ld` at 0x103e0 loads 8 bytes from (sym(IMP_1BIT) + (a0 << 0x3)) +0x0.
  The `ld` at 0x10460 loads 8 bytes from (sym(renorm) + (a0 << 0x3)) +0x0.
  The `lw` at 0x10478 loads 4 bytes from ?.
  2 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0x10498, `lbu` at 0x104d0.
  2 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x54a, including `lbu` at 0x104a0, `lbu` at 0x104d8.
  The `jal` at 0x1035c calls breakout_sd with a0=a0 at entry (arg0), a1=sp-8, a2=sp-64, a3=sp-60, a4=sp-56.
  The `jal` at 0x103bc calls post_sig with a0=0x8, a1=?, a2=(a0 << 0x3), a3=[((a0 << 0x2) + sym(EXP_BIAS))], a4=[-0x3fe8]:8, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8.
  The `jal` at 0x103c4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10438 calls round_w with a0=?, a1=?, a2=?, a3=0x34.
  The `jalr` at 0x10464 calls (unknown callee) with a0=sp-56, a1=?, a2=(a0 << 0x3), a3=[(sym(renorm) + (a0 << 0x3))]:8, a5=(a0 << 0x2), a6=(sym(IMP_1BIT) + (a0 << 0x3)), a7=sym(IMP_1BIT).
  The `jal` at 0x104a4 calls fpstore_s with a0=0x7fffffff, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[((a0 << 0x2) + sym(EXP_BIAS))], a4=[-0x3fe8]:8, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8.
  The `jal` at 0x104ac calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x104dc calls fpstore_s with a0=0x0, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[((a0 << 0x2) + sym(EXP_BIAS))], a5=(a0 << 0x2), a6=(sym(IMP_1BIT) + (a0 << 0x3)), a7=sym(IMP_1BIT).
  The `jal` at 0x104e4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x10390 targets 0x103d4, is taken when a4(?) < at(=[((a0 << 0x2) + sym(EXP_BIAS))]+32) (signed), and falls through when a4(?) >= at(=[((a0 << 0x2) + sym(EXP_BIAS))]+32) (signed).
  The `beq` branch at 0x103b4 targets 0x10498, is taken when (a5(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a5(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x103cc targets 0x10444 and is always taken.
  The `beq` branch at 0x103d8 targets 0x10450, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x103f0 targets 0x10488, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x1040c targets 0x1041c, is taken when a4(?) >= -0x1 (signed), and falls through when a4(?) < -0x1 (signed).
  The `beq` branch at 0x10414 targets 0x10438 and is always taken.
  The `beq` branch at 0x10424 targets 0x104bc, is taken when a4(?) == a6(=-0x1), and falls through when a4(?) != a6(=-0x1).
  The `beq` branch at 0x10450 targets 0x104cc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x10480 targets 0x103f8, is taken when s0(=a0) != 0, and falls through when s0(=a0) == 0.
  The `beq` branch at 0x10490 targets 0x103f8 and is always taken.
  The `beq` branch at 0x104b4 targets 0x10444 and is always taken.
  The `beq` branch at 0x104c4 targets 0x10438 and is always taken.
  The `beq` branch at 0x104ec targets 0x10444 and is always taken.
  The return at 0x10448 has v0 = one of ret(store_fpcsr), ret(round_w).
- `_cvtl_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x104f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x104f4-0x10714 (544 bytes).
  It occupies 544 bytes.
  The `ld` at 0x10530 loads 8 bytes from ((a0 << 0x3) + sym(MTWOP63)) +0x0.
  The `lw` at 0x1054c loads 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x10564, `ld` at 0x1057c, `ld` at 0x1068c.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x1056c, `lw` at 0x10580.
  The `sw` at 0x10578 stores 4 bytes to [-0x3fe8]:8 +0x53c.
  The `ld` at 0x105b0 loads 8 bytes from ((a0 << 0x3) + sym(IMP_1BIT)) +0x0.
  The `ld` at 0x10638 loads 8 bytes from ((a0 << 0x3) + sym(renorm)) +0x0.
  The `lw` at 0x10650 loads 4 bytes from ?.
  3 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0x10694, `lbu` at 0x106b8, `lbu` at 0x106f0.
  3 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x54a, including `lbu` at 0x1069c, `lbu` at 0x106c0, `lbu` at 0x106f8.
  The `jal` at 0x10518 calls breakout_sd with a0=a0 at entry (arg0), a1=sp-8, a2=sp-64, a3=sp-60, a4=sp-56.
  The `jal` at 0x10590 calls post_sig with a0=0x8, a1=?, a2=((a0 << 0x3) + sym(IMP_1BIT)), a3=[((a0 << 0x2) + sym(EXP_BIAS))], a4=[-0x3fe8]:8, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8.
  The `jal` at 0x10598 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x105e8 calls round_l with a0=?, a1=?, a2=?, a3=0x34.
  The `jalr` at 0x1063c calls (unknown callee) with a0=sp-56, a1=?, a2=((a0 << 0x3) + sym(IMP_1BIT)), a3=[((a0 << 0x3) + sym(renorm))]:8, a5=(a0 << 0x3), a6=(a0 << 0x2), a7=sym(IMP_1BIT).
  The `jal` at 0x106a0 calls fpstore_d with a0=0x8000000000000000, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a5=(a0 << 0x3), a7=sym(IMP_1BIT).
  The `jal` at 0x106a8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x106c4 calls fpstore_d with a0=0x7fffffffffffffff, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[((a0 << 0x2) + sym(EXP_BIAS))], a4=[-0x3fe8]:8, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8.
  The `jal` at 0x106cc calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x106fc calls fpstore_d with a0=0x0, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[((a0 << 0x2) + sym(EXP_BIAS))], a5=(a0 << 0x3), a6=(a0 << 0x2), a7=sym(IMP_1BIT).
  The `jal` at 0x10704 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10538 targets 0x1068c, is taken when at(=[((a0 << 0x3) + sym(MTWOP63))]:8) == v0(=a1), and falls through when at(=[((a0 << 0x3) + sym(MTWOP63))]:8) != v0(=a1).
  The `bne` branch at 0x1055c targets 0x105a8, is taken when a4(?) < v0(=[((a0 << 0x2) + sym(EXP_BIAS))]+63) (signed), and falls through when a4(?) >= v0(=[((a0 << 0x2) + sym(EXP_BIAS))]+63) (signed).
  The `beq` branch at 0x10588 targets 0x106b8, is taken when (a5(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a5(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x105a0 targets 0x105f4 and is always taken.
  The `beq` branch at 0x105a8 targets 0x10628, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x105c0 targets 0x10660, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x105dc targets 0x10600, is taken when a4(?) >= -0x1 (signed), and falls through when a4(?) < -0x1 (signed).
  The `beq` branch at 0x1060c targets 0x106dc, is taken when a4(?) == a6(=-0x1), and falls through when a4(?) != a6(=-0x1).
  The `beq` branch at 0x10614 targets 0x10670, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x10620 targets 0x105e8 and is always taken.
  The `beq` branch at 0x10628 targets 0x106ec, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x10658 targets 0x105c8, is taken when s0(=a0) != 0, and falls through when s0(=a0) == 0.
  The `beq` branch at 0x10668 targets 0x105c8 and is always taken.
  The `beq` branch at 0x10670 targets 0x105e8, is taken when a4(?) == a3(=0x34), and falls through when a4(?) != a3(=0x34).
  The `beq` branch at 0x10684 targets 0x105e8 and is always taken.
  The `beq` branch at 0x106b0 targets 0x105f4 and is always taken.
  The `beq` branch at 0x106d4 targets 0x105f4 and is always taken.
  The `beq` branch at 0x106e4 targets 0x105e8 and is always taken.
  The `beq` branch at 0x1070c targets 0x105f4 and is always taken.
  The return at 0x105f8 has v0 = one of ret(store_fpcsr), ret(round_l).
- `_comp_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10714 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10714-0x10954 (576 bytes).
  It occupies 576 bytes.
  The `lw` at 0x10724 loads 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0.
  The `lw` at 0x10734 loads 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0.
  The `ld` at 0x10750 loads 8 bytes from ((a0 << 0x3) + sym(FRAC_MASK)) +0x0.
  The `lw` at 0x10768 loads 4 bytes from ((a0 << 0x2) + sym(EXP_MASK)) +0x0.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_NAN)) +0x0, including `lw` at 0x107a0, `lw` at 0x107ec.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x107cc, `ld` at 0x10834, `ld` at 0x1084c.
  4 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x107dc, `lw` at 0x1083c, `lw` at 0x10850.
  8 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x107e4, `sw` at 0x10848, `sw` at 0x108c4.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(SNANBIT_MASK)) +0x0, including `ld` at 0x10800, `ld` at 0x1081c.
  The `jal` at 0x10860 calls post_sig with a0=0x8, a1=sym(SNANBIT_MASK), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[((a0 << 0x2) + sym(EXP_NAN))].
  The `jal` at 0x10868 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x108c8 calls store_fpcsr with a0=[[-0x3fe8]:8+1340], a1=?, a2=?, a3=a3 at entry (arg3), a6=[-0x3fe8]:8.
  The `beq` branch at 0x10788 targets 0x10794, is taken when a4 == 0, and falls through when a4 != 0.
  The `bne` branch at 0x107a4 targets 0x107b4, is taken when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) != t0(?), and falls through when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) == t0(?).
  The `bne` branch at 0x107ac targets 0x107cc, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x107b8 targets 0x10878, is taken when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) != t1(?), and falls through when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) == t1(?).
  The `beq` branch at 0x107c0 targets 0x10878, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x107d8 targets 0x108f8, is taken when (a3 & 0x1) == 0, and falls through when (a3 & 0x1) != 0.
  The `bne` branch at 0x107f4 targets 0x10810, is taken when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) != t0(?), and falls through when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) == t0(?).
  The `bne` branch at 0x10808 targets 0x10834, is taken when (a7(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & t2(?)) != 0, and falls through when (a7(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & t2(?)) == 0.
  The `bne` branch at 0x10810 targets 0x1082c, is taken when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) != t1(?), and falls through when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) == t1(?).
  The `bne` branch at 0x10824 targets 0x10834, is taken when (t0(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & t8(?)) != 0, and falls through when (t0(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & t8(?)) == 0.
  The `beq` branch at 0x1082c targets 0x10868, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10858 targets 0x10868, is taken when (t1(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (t1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x10870 targets 0x108d4 and is always taken.
  The `beq` branch at 0x1087c targets 0x10908, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10884 targets 0x10914, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x10890 targets 0x108a8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x108b0 targets 0x108dc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x108bc targets 0x10938, is taken when (a3 & 0x4) == 0, and falls through when (a3 & 0x4) != 0.
  The `bne` branch at 0x108dc targets 0x10928, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `beq` branch at 0x108e8 targets 0x10948, is taken when (a3 & 0x2) == 0, and falls through when (a3 & 0x2) != 0.
  The `beq` branch at 0x108f0 targets 0x108c8 and is always taken.
  The `beq` branch at 0x10900 targets 0x107e8 and is always taken.
  The `bne` branch at 0x1090c targets 0x10888, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `bne` branch at 0x10918 targets 0x1089c, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x10920 targets 0x108ac and is always taken.
  The `beq` branch at 0x10930 targets 0x108c8 and is always taken.
  The `beq` branch at 0x10940 targets 0x108c8 and is always taken.
  The `beq` branch at 0x1094c targets 0x108c8 and is always taken.
  The return at 0x108d4 has v0 = ret(store_fpcsr).
- `_nmadd_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10954 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10954-0x10a1c (200 bytes).
  It occupies 200 bytes.
  The `ld` at 0x10964 loads 8 bytes from abs 0xffffffffffffc018.
  The `lbu` at 0x10970 loads 1 byte from [-0x3fe8]:8 +0x549.
  The `sb` at 0x10988 stores 1 byte to [-0x3fe8]:8 +0x549.
  The `jal` at 0x109c0 calls breakout_and_test3_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76.
  The `jal` at 0x10a0c calls madd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x109c8 targets 0x109dc, is taken when v0(=ret(breakout_and_test3_sd)) == 0, and falls through when v0(=ret(breakout_and_test3_sd)) != 0.
  The `beq` branch at 0x10a14 targets 0x109d4 and is always taken.
  The return at 0x109d4 has v0 = one of ret(breakout_and_test3_sd), ret(madd).
- `_madd_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10a1c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10a1c-0x10adc (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0x10a2c loads 8 bytes from abs 0xffffffffffffc018.
  The `lbu` at 0x10a38 loads 1 byte from [-0x3fe8]:8 +0x549.
  The `sb` at 0x10a50 stores 1 byte to [-0x3fe8]:8 +0x549.
  The `jal` at 0x10a88 calls breakout_and_test3_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76.
  The `jal` at 0x10acc calls madd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10a90 targets 0x10aa4, is taken when v0(=ret(breakout_and_test3_sd)) == 0, and falls through when v0(=ret(breakout_and_test3_sd)) != 0.
  The `beq` branch at 0x10ad4 targets 0x10a9c and is always taken.
  The return at 0x10a9c has v0 = one of ret(breakout_and_test3_sd), ret(madd).
- `_sqrt_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10adc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10adc-0x10dc8 (748 bytes).
  It occupies 748 bytes.
  The `lw` at 0x10b1c loads 4 bytes from ((a0 << 0x2) + sym(EXP_INF)) +0x0.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x10b30, `ld` at 0x10b48, `ld` at 0x10d00.
  4 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x10b38, `lw` at 0x10b4c, `lw` at 0x10d08.
  2 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x10b44, `sw` at 0x10d14.
  The `ld` at 0x10ba0 loads 8 bytes from ?.
  The `lw` at 0x10bf0 loads 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0.
  The `ld` at 0x10bf8 loads 8 bytes from ((a0 << 0x3) + sym(IMP_1BIT)) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10c1c, `lw` at 0x10d70.
  2 such `ld` accesses load 8 bytes from (sym(QUIETNAN) + (a0 << 0x3)) +0x0, including `ld` at 0x10cec, `ld` at 0x10dac.
  The `ld` at 0x10d54 loads 8 bytes from ((a0 << 0x3) + sym(renorm)) +0x0.
  The `jal` at 0x10b00 calls breakout_and_test_sd with a0=a0 at entry (arg0), a1=sp-8, a2=sp-64, a3=sp-60, a4=sp-56.
  The `jal` at 0x10b5c calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=0x10040, a3=?.
  The `jal` at 0x10b64 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10ba4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a6=sym(round).
  The `jal` at 0x10cc4 calls fpstore_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jal` at 0x10ccc calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10ce8 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?.
  The `jal` at 0x10cf0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10d2c calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=(a0 << 0x2), a3=?, a4=([[-0x3fe8]:8+1340] | 0x10040), a5=[-0x3fe8]:8, a6=0x10040, a7=0x1.
  The `jal` at 0x10d34 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10d58 calls (unknown callee) with a0=sp-56, a1=?, a2=(a0 << 0x2), a3=?, a7=[((a0 << 0x3) + sym(renorm))]:8.
  The `jal` at 0x10d84 calls fpstore_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jal` at 0x10d8c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10da8 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?, a4=([[-0x3fe8]:8+1340] | 0x10040), a5=[-0x3fe8]:8, a6=0x10040, a7=0x1.
  The `jal` at 0x10db0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x10b08 targets 0x10bac, is taken when v0(=ret(breakout_and_test_sd)) != 0, and falls through when v0(=ret(breakout_and_test_sd)) == 0.
  The `bne` branch at 0x10b20 targets 0x10bbc, is taken when at(=[((a0 << 0x2) + sym(EXP_INF))]) != a1(?), and falls through when at(=[((a0 << 0x2) + sym(EXP_INF))]) == a1(?).
  The `beq` branch at 0x10b28 targets 0x10d84, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10b54 targets 0x10cdc, is taken when (v1(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (v1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x10b6c targets 0x10bb0 and is always taken.
  The `beq` branch at 0x10b7c targets 0x10c9c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x10b8c targets 0x10ca4, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x10bbc targets 0x10cb8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10bc8 targets 0x10d00, is taken when t3(?) == a7(=0x1), and falls through when t3(?) != a7(=0x1).
  The `beq` branch at 0x10bd4 targets 0x10d4c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bltz` branch at 0x10c48 targets 0x10d44, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `beq` branch at 0x10c50 targets 0x10dc0 and is always taken.
  The `bne` branch at 0x10c74 targets 0x10b74, is taken when t1(?) < a2(?) (signed), and falls through when t1(?) >= a2(?) (signed).
  The `bgez` branch at 0x10c88 targets 0x10c58, is taken when a7(?) >= 0 (signed), and falls through when a7(?) < 0 (signed).
  The `beq` branch at 0x10c94 targets 0x10c60 and is always taken.
  The `bne` branch at 0x10c9c targets 0x10b98, is taken when s0(=a0) != 0, and falls through when s0(=a0) == 0.
  The `beq` branch at 0x10cb0 targets 0x10b94 and is always taken.
  The `bne` branch at 0x10cbc targets 0x10bc0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x10cd4 targets 0x10bb0 and is always taken.
  The `beq` branch at 0x10cf8 targets 0x10bb0 and is always taken.
  The `beq` branch at 0x10d24 targets 0x10d9c, is taken when (a3(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a3(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x10d3c targets 0x10bb0 and is always taken.
  The `beq` branch at 0x10d44 targets 0x10b74 and is always taken.
  The `beq` branch at 0x10d7c targets 0x10c0c and is always taken.
  The `beq` branch at 0x10d94 targets 0x10bb0 and is always taken.
  The `beq` branch at 0x10db8 targets 0x10bb0 and is always taken.
  The `beq` branch at 0x10dc0 targets 0x10c80 and is always taken.
  The return at 0x10bb4 has v0 = one of ret(store_fpcsr), ?.
- `_msub_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10dc8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10dc8-0x10e8c (196 bytes).
  It occupies 196 bytes.
  The `ld` at 0x10dd8 loads 8 bytes from abs 0xffffffffffffc018.
  The `lbu` at 0x10de4 loads 1 byte from [-0x3fe8]:8 +0x549.
  The `sb` at 0x10dfc stores 1 byte to [-0x3fe8]:8 +0x549.
  The `jal` at 0x10e34 calls breakout_and_test3_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76.
  The `jal` at 0x10e7c calls madd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10e3c targets 0x10e50, is taken when v0(=ret(breakout_and_test3_sd)) == 0, and falls through when v0(=ret(breakout_and_test3_sd)) != 0.
  The `beq` branch at 0x10e84 targets 0x10e48 and is always taken.
  The return at 0x10e48 has v0 = one of ret(breakout_and_test3_sd), ret(madd).
- `_cvts_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10e8c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10e8c-0x11048 (444 bytes).
  It occupies 444 bytes.
  5 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x10f08, `ld` at 0x10f20, `ld` at 0x10f98.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x10f10, `lw` at 0x10f24.
  The `sw` at 0x10f1c stores 4 bytes to [-0x3fe8]:8 +0x53c.
  4 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0x10f9c, `lbu` at 0x10fbc, `lbu` at 0x10fe8.
  4 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x54a, including `lbu` at 0x10fa0, `lbu` at 0x10fc4, `lbu` at 0x10ff0.
  The `jal` at 0x10ea8 calls breakout_sd with a0=0x1, a1=sp-16, a2=sp-48, a3=sp-44, a4=sp-40.
  The `jal` at 0x10ee0 calls round_s with a0=?, a1=?, a2=?, a3=0x0.
  The `jal` at 0x10f34 calls post_sig with a0=0x8, a1=[-0x3fe8]:8, a2=0x10040, a3=?, a4=[-0x3fe8]:8.
  The `jal` at 0x10f3c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10f54 calls renorm_d with a0=sp-40, a1=?, a2=?, a3=?, a4=0x1.
  The `jal` at 0x10fa4 calls fpstore_s with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a4=0x1.
  The `jal` at 0x10fac calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10fc8 calls fpstore_s with a0=0x7fbfffff, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a4=[-0x3fe8]:8.
  The `jal` at 0x10fd0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10ff4 calls fpstore_s with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a4=0x1.
  The `jal` at 0x10ffc calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11030 calls fpstore_s with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=0x7f800000, a4=0x1.
  The `jal` at 0x11038 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10ec0 targets 0x10ef4, is taken when a1(?) == at(=0x7ff), and falls through when a1(?) != at(=0x7ff).
  The `beq` branch at 0x10ec8 targets 0x10f4c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10f00 targets 0x10f70, is taken when (a2(?) & v0(=0x8000000000000)) == 0, and falls through when (a2(?) & v0(=0x8000000000000)) != 0.
  The `beq` branch at 0x10f2c targets 0x10fbc, is taken when (v1(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (v1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x10f44 targets 0x10eec and is always taken.
  The `beq` branch at 0x10f4c targets 0x10fe0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10f68 targets 0x10edc and is always taken.
  The `beq` branch at 0x10f70 targets 0x11018, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10f7c targets 0x1100c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10fb4 targets 0x10eec and is always taken.
  The `beq` branch at 0x10fd8 targets 0x10eec and is always taken.
  The `beq` branch at 0x11004 targets 0x10eec and is always taken.
  The `beq` branch at 0x11010 targets 0x10f98 and is always taken.
  The `beq` branch at 0x11040 targets 0x10eec and is always taken.
  The return at 0x10eec has v0 = one of ret(round_s), ret(store_fpcsr).
- `checkfp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11050 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11050-0x11228 (472 bytes).
  It occupies 472 bytes.
  The `ld` at 0x11068 loads 8 bytes from abs 0xffffffffffffc460.
  The `ld` at 0x1108c loads 8 bytes from a0 (arg0 at entry) +0x318.
  The `ld` at 0x11090 loads 8 bytes from a0 (arg0 at entry) +0x3e0.
  The `lb` at 0x11094 loads 1 byte from [a0+792]:8 +0x9c.
  The `sw` at 0x110cc stores 4 bytes to [a0+992]:8 +0x130.
  The `swc1` at 0x110d8 stores 4 bytes to [a0+992]:8 +0x124.
  The `swc1` at 0x110dc stores 4 bytes to [a0+992]:8 +0x11c.
  The `swc1` at 0x110e0 stores 4 bytes to [a0+992]:8 +0x114.
  The `swc1` at 0x110e4 stores 4 bytes to [a0+992]:8 +0x10c.
  The `swc1` at 0x110e8 stores 4 bytes to [a0+992]:8 +0x104.
  The `swc1` at 0x110ec stores 4 bytes to [a0+992]:8 +0xfc.
  The `swc1` at 0x110f0 stores 4 bytes to [a0+992]:8 +0xf4.
  The `swc1` at 0x110f4 stores 4 bytes to [a0+992]:8 +0xec.
  The `swc1` at 0x110f8 stores 4 bytes to [a0+992]:8 +0xe4.
  The `swc1` at 0x110fc stores 4 bytes to [a0+992]:8 +0xdc.
  The `swc1` at 0x11100 stores 4 bytes to [a0+992]:8 +0xd4.
  The `swc1` at 0x11104 stores 4 bytes to [a0+992]:8 +0xcc.
  The `swc1` at 0x11108 stores 4 bytes to [a0+992]:8 +0xc4.
  The `swc1` at 0x1110c stores 4 bytes to [a0+992]:8 +0xbc.
  The `swc1` at 0x11110 stores 4 bytes to [a0+992]:8 +0xb4.
  The `swc1` at 0x11114 stores 4 bytes to [a0+992]:8 +0xac.
  The `swc1` at 0x11118 stores 4 bytes to [a0+992]:8 +0xa4.
  The `swc1` at 0x1111c stores 4 bytes to [a0+992]:8 +0x9c.
  The `swc1` at 0x11120 stores 4 bytes to [a0+992]:8 +0x94.
  The `swc1` at 0x11124 stores 4 bytes to [a0+992]:8 +0x8c.
  The `swc1` at 0x11128 stores 4 bytes to [a0+992]:8 +0x84.
  The `swc1` at 0x1112c stores 4 bytes to [a0+992]:8 +0x7c.
  The `swc1` at 0x11130 stores 4 bytes to [a0+992]:8 +0x74.
  The `swc1` at 0x11134 stores 4 bytes to [a0+992]:8 +0x6c.
  The `swc1` at 0x11138 stores 4 bytes to [a0+992]:8 +0x64.
  The `swc1` at 0x1113c stores 4 bytes to [a0+992]:8 +0x5c.
  The `swc1` at 0x11140 stores 4 bytes to [a0+992]:8 +0x54.
  The `swc1` at 0x11144 stores 4 bytes to [a0+992]:8 +0x4c.
  The `swc1` at 0x11148 stores 4 bytes to [a0+992]:8 +0x44.
  The `swc1` at 0x1114c stores 4 bytes to [a0+992]:8 +0x3c.
  The `swc1` at 0x11150 stores 4 bytes to [a0+992]:8 +0x34.
  The `swc1` at 0x11158 stores 4 bytes to [a0+992]:8 +0x2c.
  The `sdc1` at 0x1115c stores 8 bytes to [a0+992]:8 +0x120.
  The `sdc1` at 0x11160 stores 8 bytes to [a0+992]:8 +0x118.
  The `sdc1` at 0x11164 stores 8 bytes to [a0+992]:8 +0x110.
  The `sdc1` at 0x11168 stores 8 bytes to [a0+992]:8 +0x108.
  The `sdc1` at 0x1116c stores 8 bytes to [a0+992]:8 +0x100.
  The `sdc1` at 0x11170 stores 8 bytes to [a0+992]:8 +0xf8.
  The `sdc1` at 0x11174 stores 8 bytes to [a0+992]:8 +0xf0.
  The `sdc1` at 0x11178 stores 8 bytes to [a0+992]:8 +0xe8.
  The `sdc1` at 0x1117c stores 8 bytes to [a0+992]:8 +0xe0.
  The `sdc1` at 0x11180 stores 8 bytes to [a0+992]:8 +0xd8.
  The `sdc1` at 0x11184 stores 8 bytes to [a0+992]:8 +0xd0.
  The `sdc1` at 0x11188 stores 8 bytes to [a0+992]:8 +0xc8.
  The `sdc1` at 0x1118c stores 8 bytes to [a0+992]:8 +0xc0.
  The `sdc1` at 0x11190 stores 8 bytes to [a0+992]:8 +0xb8.
  The `sdc1` at 0x11194 stores 8 bytes to [a0+992]:8 +0xb0.
  The `sdc1` at 0x11198 stores 8 bytes to [a0+992]:8 +0xa8.
  The `sdc1` at 0x1119c stores 8 bytes to [a0+992]:8 +0xa0.
  The `sdc1` at 0x111a0 stores 8 bytes to [a0+992]:8 +0x98.
  The `sdc1` at 0x111a4 stores 8 bytes to [a0+992]:8 +0x90.
  The `sdc1` at 0x111a8 stores 8 bytes to [a0+992]:8 +0x88.
  The `sdc1` at 0x111ac stores 8 bytes to [a0+992]:8 +0x80.
  The `sdc1` at 0x111b0 stores 8 bytes to [a0+992]:8 +0x78.
  The `sdc1` at 0x111b4 stores 8 bytes to [a0+992]:8 +0x70.
  The `sdc1` at 0x111b8 stores 8 bytes to [a0+992]:8 +0x68.
  The `sdc1` at 0x111bc stores 8 bytes to [a0+992]:8 +0x60.
  The `sdc1` at 0x111c0 stores 8 bytes to [a0+992]:8 +0x58.
  The `sdc1` at 0x111c4 stores 8 bytes to [a0+992]:8 +0x50.
  The `sdc1` at 0x111c8 stores 8 bytes to [a0+992]:8 +0x48.
  The `sdc1` at 0x111cc stores 8 bytes to [a0+992]:8 +0x40.
  The `sdc1` at 0x111d0 stores 8 bytes to [a0+992]:8 +0x38.
  The `sdc1` at 0x111d4 stores 8 bytes to [a0+992]:8 +0x30.
  The `sdc1` at 0x111d8 stores 8 bytes to [a0+992]:8 +0x28.
  The `ld` at 0x111e4 loads 8 bytes from abs 0xffffffffffffc018.
  The `sd` at 0x111e8 stores 8 bytes to abs 0xffffffffffffc460.
  The `ld` at 0x111f4 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `ld` at 0x11200 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x260.
  The `sd` at 0x1120c stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x260.
  The `jal` at 0x1105c calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11210 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0x11074 targets 0x11210, is taken when v0(=[-0x3ba0]:8) == 0, and falls through when v0(=[-0x3ba0]:8) != 0.
  The `bne` branch at 0x1107c targets 0x11210, is taken when a0 != v0(=[-0x3ba0]:8), and falls through when a0 == v0(=[-0x3ba0]:8).
  The `beq` branch at 0x11084 targets 0x111e4, is taken when a1 == at(=0x1), and falls through when a1 != at(=0x1).
  The `beq` branch at 0x1109c targets 0x110a8, is taken when (t0(=[[a0+792]:8+156]:1) & 0xc) == 0, and falls through when (t0(=[[a0+792]:8+156]:1) & 0xc) != 0.
  The `beq` branch at 0x110c0 targets 0x110d0, is taken when a1 == at(=0x2), and falls through when a1 != at(=0x2).
  The `bne` branch at 0x110d0 targets 0x1115c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x11154 targets 0x111dc and is always taken.
  The `beq` branch at 0x111ec targets 0x11210, is taken when t1(=[-0x3fe8]:8) == 0, and falls through when t1(=[-0x3fe8]:8) != 0.
  The return at 0x11220 has v0 = ret(splx).
- `fpunit_fpstore_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11230 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11230-0x113dc (428 bytes).
  It occupies 428 bytes.
  The `ld` at 0x11250 loads 8 bytes from (sym(.rodata)+8848 + (a1 << 0x3)) +0x0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x11254).
  The instructions from 0x1125c to 0x113d8 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x11254 uses a jump table whose successors are unresolved.
- `fpunit_fpstore_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x113e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x113e0-0x116fc (796 bytes).
  It occupies 796 bytes.
  The `ld` at 0x11408 loads 8 bytes from table(sym(.rodata)+9360) +0x0.
  The `ld` at 0x11430 loads 8 bytes from (sym(.rodata)+9616 + (a1 << 0x3)) +0x0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x11434).
  The `bne` branch at 0x113e0 targets 0x11414, is taken when a2 != 0, and falls through when a2 == 0.
  The instructions from 0x1143c to 0x116f8 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x1140c uses a jump table whose successors are unresolved.
  The indirect jump at 0x11434 uses a jump table whose successors are unresolved.
- `longway` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11700 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11700-0x11980 (640 bytes).
  It occupies 640 bytes.
  2 such `lb` accesses load 1 byte from abs 0xffffffffffffc04f, including `lb` at 0x11700, `lb` at 0x11904.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x11734, `sd` at 0x1173c, `sd` at 0x11744.
  The `lw` at 0x117c0 loads 4 bytes from sym(dump_in_progress) +0x0.
  The `ld` at 0x117cc loads 8 bytes from abs 0xffffffffffffc020.
  The `ld` at 0x117d8 loads 8 bytes from [-0x3fe0]:8 +0xe0.
  The `ld` at 0x11810 loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0x11814 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `sd` at 0x1181c stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x238.
  The `sd` at 0x11828 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x240.
  The `sd` at 0x11830 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x248.
  2 such `sb` accesses store 1 byte to abs 0xffffffffffffc04f, including `sb` at 0x1183c, `sb` at 0x11910.
  The `sw` at 0x118f8 stores 4 bytes to sym(ovflwword) +0x0.
  The `ld` at 0x1190c loads 8 bytes from abs 0xffffffffffffc3c0.
  Calls keruliframe via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1171c).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x11748).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x11770).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x11808).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1184c).
  The `jal` at 0x11918 calls printf with a0=sym(cache_desc+456), a1=?, a2=sp, a3=?.
  The `jal` at 0x1193c calls printf with a0=sym(scache_data_ecc+144), a1=ra at entry, a2=[-0x3fb1]:1, a3=?.
  The `jal` at 0x11970 calls panic with a0=sym(scache_data_ecc+184), a1=?, a2=?, a3=?.
  Calls _baduk via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x11978).
  The `beq` branch at 0x11704 targets 0x11810, is taken when k0(=[-0x3fb1]:1) == 0, and falls through when k0(=[-0x3fb1]:1) != 0.
  The `beq` branch at 0x1170c targets 0x117a8, is taken when k0(=[-0x3fb1]:1-1) == 0, and falls through when k0(=[-0x3fb1]:1-1) != 0.
  The `bnel` branch at 0x11714 targets 0x11724, is taken when k0(=[-0x3fb1]:1-4) != 0, and falls through when k0(=[-0x3fb1]:1-4) == 0; its branch-likely delay slot `addi k0,k0,2` at 0x11718 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x11724 targets 0x11750, is taken when k0(=[-0x3fb1]:1-2) != 0, and falls through when k0(=[-0x3fb1]:1-2) == 0.
  The `bne` branch at 0x117c4 targets 0x117e8, is taken when k0(=[sym(dump_in_progress)]) != 0, and falls through when k0(=[sym(dump_in_progress)]) == 0.
  The `beq` branch at 0x117d0 targets 0x117e8, is taken when k0(=[-0x3fe0]:8) == 0, and falls through when k0(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x117e0 targets 0x11854, is taken when k0(=[[-0x3fe0]:8+224]:8) >= sp(=sp) (unsigned), and falls through when k0(=[[-0x3fe0]:8+224]:8) < sp(=sp) (unsigned).
  The `beq` branch at 0x11868 targets 0x118e0 and is always taken.
  The instructions from 0x11778 to 0x117a4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x11870 to 0x118dc are not reached by any path from the entry, and their branches are not listed.
- `stkovflw` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11854 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11854-0x11870 (28 bytes).
  It occupies 28 bytes.
  The `beq` branch at 0x11868 targets 0x118e0 and is always taken.
- `stkundflw` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11870 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11870-0x1188c (28 bytes).
  It occupies 28 bytes.
  The `beq` branch at 0x11884 targets 0x118e0 and is always taken.
- `stkscr1` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1188c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1188c-0x118a8 (28 bytes).
  It occupies 28 bytes.
  The `beq` branch at 0x118a0 targets 0x118e0 and is always taken.
- `stkscr2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x118a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x118a8-0x118c4 (28 bytes).
  It occupies 28 bytes.
  The `beq` branch at 0x118bc targets 0x118e0 and is always taken.
- `stkscr3` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x118c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x118c4-0x11980 (188 bytes).
  It occupies 188 bytes.
  The `sw` at 0x118f8 stores 4 bytes to sym(ovflwword) +0x0.
  The `lb` at 0x11904 loads 1 byte from abs 0xffffffffffffc04f.
  The `ld` at 0x1190c loads 8 bytes from abs 0xffffffffffffc3c0.
  The `sb` at 0x11910 stores 1 byte to abs 0xffffffffffffc04f.
  The `jal` at 0x11918 calls printf with a0=sym(scache_data_ecc+14), a1=?, a2=sp, a3=?.
  The `jal` at 0x1193c calls printf with a0=sym(scache_data_ecc+144), a1=ra at entry, a2=[-0x3fb1]:1, a3=?.
  The `jal` at 0x11970 calls panic with a0=sym(scache_data_ecc+184), a1=?, a2=?, a3=?.
  Calls _baduk via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x11978).
  The `beq` branch at 0x118d8 targets 0x118e0 and is always taken.
- `_cvtd_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11980 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11980-0x11b2c (428 bytes).
  It occupies 428 bytes.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x119c0, `ld` at 0x11a08, `ld` at 0x11a24.
  4 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0x119d4, `lbu` at 0x11a88, `lbu` at 0x11ac4.
  4 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x54a, including `lbu` at 0x119e4, `lbu` at 0x11a94, `lbu` at 0x11ac8.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x11a14, `lw` at 0x11a28.
  The `sw` at 0x11a20 stores 4 bytes to [-0x3fe8]:8 +0x53c.
  The `jal` at 0x1199c calls breakout_sd with a0=0x0, a1=sp-16, a2=sp-48, a3=sp-44, a4=sp-40.
  The `jal` at 0x119e8 calls fpstore_d with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?.
  The `jal` at 0x119f0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11a38 calls post_sig with a0=0x8, a1=0x10000, a2=?, a3=[-0x3fe8]:8, a4=[-0x3fe8]:8, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=0x10040.
  The `jal` at 0x11a40 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11a58 calls renorm_s with a0=sp-40, a1=?, a2=?, a3=?.
  The `jal` at 0x11aac calls fpstore_d with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[-0x3fe8]:8, a4=0x7ff0000000000000.
  The `jal` at 0x11ab4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11ad0 calls fpstore_d with a0=0x7ff7ffffffffffff, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[-0x3fe8]:8, a4=[-0x3fe8]:8, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=0x10040.
  The `jal` at 0x11ad8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11afc calls fpstore_d with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?.
  The `jal` at 0x11b04 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11b14 calls fpstore_d with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[-0x3fe8]:8, a4=0x7ff0000000000000.
  The `jal` at 0x11b1c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x119ac targets 0x11a04, is taken when a4(?) == at(=0xff), and falls through when a4(?) != at(=0xff).
  The `beq` branch at 0x119b4 targets 0x11a50, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bgez` branch at 0x11a0c targets 0x11a84, is taken when a4(?) >= 0 (signed), and falls through when a4(?) < 0 (signed).
  The `beq` branch at 0x11a30 targets 0x11ac4, is taken when (a5(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a5(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x11a48 targets 0x119fc and is always taken.
  The `beq` branch at 0x11a50 targets 0x11ae8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x11a7c targets 0x119c0 and is always taken.
  The `beq` branch at 0x11a9c targets 0x11b14, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x11abc targets 0x119fc and is always taken.
  The `beq` branch at 0x11ae0 targets 0x119fc and is always taken.
  The `beq` branch at 0x11b0c targets 0x119fc and is always taken.
  The `beq` branch at 0x11b24 targets 0x119fc and is always taken.
  The return at 0x119fc has v0 = ret(store_fpcsr).
- `round_w` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11b2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11b2c-0x11c90 (356 bytes).
  It occupies 356 bytes.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x11b70, `ld` at 0x11bec, `ld` at 0x11c30.
  The `lbu` at 0x11b80 loads 1 byte from [-0x3fe8]:8 +0x548.
  The `lb` at 0x11ba8 loads 1 byte from ?.
  4 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x11be0, `lw` at 0x11bf0, `lw` at 0x11c24.
  2 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x11be8, `sw` at 0x11c2c.
  2 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0x11c50, `lbu` at 0x11c74.
  2 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x54a, including `lbu` at 0x11c58, `lbu` at 0x11c7c.
  The `jal` at 0x11c00 calls post_sig with a0=0x8, a1=0xffffffff80000000, a2=?, a3=?, a4=[-0x3fe8]:8, a5=0x7fff0000.
  The `jal` at 0x11c08 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11c44 calls post_sig with a0=0x8, a1=0xffffffff80000000, a2=?, a3=?, a4=[-0x3fe8]:8, a5=0x7fff0000.
  The `jal` at 0x11c5c calls fpstore_s with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a4=[-0x3fe8]:8.
  The `jal` at 0x11c64 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11c80 calls fpstore_s with a0=0x7fffffff, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a4=[-0x3fe8]:8, a5=0x7fff0000.
  The `beq` branch at 0x11b48 targets 0x11b60, is taken when (a2 & at(=0x7fffffffffffffff)) == 0, and falls through when (a2 & at(=0x7fffffffffffffff)) != 0.
  The `beq` branch at 0x11bb4 targets 0x11bc0, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0x11bd0 targets 0x11be0, is taken when s0(?) < a1(=0xffffffff80000000) (signed), and falls through when s0(?) >= a1(=0xffffffff80000000) (signed).
  The `beq` branch at 0x11bd8 targets 0x11c1c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x11bf8 targets 0x11c74, is taken when (a7(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a7(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x11c1c targets 0x11c50, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x11c3c targets 0x11c50, is taken when (t2(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (t2(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `beq` branch at 0x11c6c targets 0x11c14 and is always taken.
  The `beq` branch at 0x11c88 targets 0x11c08 and is always taken.
  The return at 0x11c14 has v0 = ret(store_fpcsr).
- `round_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11c90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11c90-0x12458 (1992 bytes).
  It occupies 1992 bytes.
  20 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x11d24, `ld` at 0x11d7c, `ld` at 0x11da0.
  3 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x548, including `lbu` at 0x11d38, `lbu` at 0x11db0, `lbu` at 0x12338.
  10 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0x11d3c, `lbu` at 0x11e10, `lbu` at 0x11eb8.
  6 such `lb` accesses load 1 byte from ?, including `lb` at 0x11d60, `lb` at 0x11dd4, `lb` at 0x11f24.
  15 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x11d70, `lw` at 0x11d80, `lw` at 0x11e00.
  11 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x11d78, `sw` at 0x11e08, `sw` at 0x11f54.
  6 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x54a, including `lbu` at 0x11e40, `lbu` at 0x11fa0, `lbu` at 0x120c0.
  3 such `ld` accesses load 8 bytes from [-0x3fe8]:8 +0x3e0, including `ld` at 0x11e58, `ld` at 0x120d0, `ld` at 0x123d0.
  3 such `sd` accesses store 8 bytes to [[-0x3fe8]:8+992]:8 +0x128, including `sd` at 0x11e64, `sd` at 0x120d4, `sd` at 0x123d4.
  The `lwu` at 0x12080 loads 4 bytes from table(sym(.data)+7968) +0x0.
  The `lb` at 0x121a0 loads 1 byte from table(sym(round_bit)) +0x1.
  The `jal` at 0x11d90 calls post_sig with a0=0x8, a1=?, a2=?, a3=a3 at entry (arg3), a5=[-0x3fe8]:8, a6=0x7fffffffffffffff.
  The `jal` at 0x11e44 calls fpstore_s with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a5=[-0x3fe8]:8, a7=(a1 + one of 0xc0, 0xc1).
  The `jal` at 0x11e68 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11f6c calls post_sig with a0=0x8, a1=?, a2=?, a3=a3 at entry (arg3), a5=[-0x3fe8]:8, a6=0x7fffffffffffffff.
  The `jal` at 0x11fa4 calls fpstore_s with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8.
  The `jal` at 0x11fac calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12084 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1352]:1, a2=[[-0x3fe8]:8+1340], a3=?, a5=[-0x3fe8]:8.
  The `jal` at 0x120c4 calls fpstore_s with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a5=[-0x3fe8]:8.
  The `jal` at 0x120f0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12170 calls fpstore_s with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8.
  The `jal` at 0x12178 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x121e4 calls post_sig with a0=0x8, a1=?, a2=?, a3=?, a5=[-0x3fe8]:8.
  The `jal` at 0x12220 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1352]:1, a2=[[-0x3fe8]:8+1340], a3=?, a5=[-0x3fe8]:8.
  The `jal` at 0x12248 calls fpstore_s with a0=entry(sym(.data)+7968), a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8.
  The `jal` at 0x12250 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12318 calls post_sig with a0=0x8, a1=?, a2=([[-0x3fe8]:8+1340] | 0x2008), a3=?, a5=[-0x3fe8]:8.
  The `jal` at 0x123c4 calls fpstore_s with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8, a7=(a1 + one of 0xc0, 0xc1).
  The `jal` at 0x123d8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x11cc8 targets 0x11ce8, is taken when (a6(=0x7fffffffffffffff) & a3) == 0, and falls through when (a6(=0x7fffffffffffffff) & a3) != 0.
  The `beq` branch at 0x11cfc targets 0x11d1c, is taken when (a6(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (a6(=0x7fffffffffffffff) & s1(?)) != 0.
  The `beq` branch at 0x11d34 targets 0x11ea0, is taken when s2(=a1) >= -0x96 (signed), and falls through when s2(=a1) < -0x96 (signed).
  The `beq` branch at 0x11d44 targets 0x12188, is taken when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0, and falls through when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  The `beq` branch at 0x11d88 targets 0x11f54, is taken when (a0(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a0(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `bgez` branch at 0x11dec targets 0x121f4, is taken when ra(?) >= 0 (signed), and falls through when ra(?) < 0 (signed).
  The `beq` branch at 0x11df8 targets 0x11e10, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x11e18 targets 0x11e68, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0.
  The `beq` branch at 0x11ea4 targets 0x11fbc, is taken when s2(=a1) >= -0x7e (signed), and falls through when s2(=a1) < -0x7e (signed).
  The `beq` branch at 0x11ecc targets 0x12260, is taken when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0, and falls through when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  The `bne` branch at 0x11ee0 targets 0x11d48, is taken when s0(?) < t8(=0x7fffff) (unsigned), and falls through when s0(?) >= t8(=0x7fffff) (unsigned).
  The `beq` branch at 0x11f30 targets 0x11d70, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x11f3c targets 0x12404, is taken when a1(=0x1) == a0(?), and falls through when a1(=0x1) != a0(?).
  The `beq` branch at 0x11f44 targets 0x11d70, is taken when at(?) == a1(=0x1), and falls through when at(?) != a1(=0x1).
  The `beq` branch at 0x11f64 targets 0x11f78, is taken when (v0(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (v0(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `bne` branch at 0x11f80 targets 0x11f94, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0.
  The `bne` branch at 0x11f8c targets 0x11fac, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) == 0.
  The `beq` branch at 0x11fb4 targets 0x11e74 and is always taken.
  The `beq` branch at 0x11fc0 targets 0x11fe0, is taken when (a6(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (a6(=0x7fffffffffffffff) & s1(?)) != 0.
  The `beq` branch at 0x1202c targets 0x122e8, is taken when s2(=a1) == a2(=-0x7f), and falls through when s2(=a1) != a2(=-0x7f).
  The `bgez` branch at 0x12038 targets 0x1204c, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `bne` branch at 0x1204c targets 0x12100, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x1207c targets 0x12204, is taken when (a0(=[[-0x3fe8]:8+1340]) & 0x200) == 0, and falls through when (a0(=[[-0x3fe8]:8+1340]) & 0x200) != 0.
  The `beq` branch at 0x12098 targets 0x120d8, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0.
  The `beq` branch at 0x120d8 targets 0x120f0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x120f8 targets 0x11e74 and is always taken.
  The `bne` branch at 0x12108 targets 0x12130, is taken when s5(?) < -0x7e (signed), and falls through when s5(?) >= -0x7e (signed).
  The `beq` branch at 0x12128 targets 0x12134 and is always taken.
  The `beq` branch at 0x12138 targets 0x123e8, is taken when (a2(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a2(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `bne` branch at 0x12140 targets 0x12310, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x12148 targets 0x121c4, is taken when a0(?) == a1(=0x1), and falls through when a0(?) != a1(=0x1).
  The `bne` branch at 0x12158 targets 0x1216c, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0.
  The `bne` branch at 0x12164 targets 0x12178, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) == 0.
  The `beq` branch at 0x12180 targets 0x11e74 and is always taken.
  The `bgez` branch at 0x121b4 targets 0x12420, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `beq` branch at 0x121dc targets 0x12150, is taken when (t8(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (t8(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `beq` branch at 0x121ec targets 0x12150 and is always taken.
  The `bne` branch at 0x121f4 targets 0x11e00, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x121fc targets 0x11e14 and is always taken.
  The `beq` branch at 0x12218 targets 0x1222c, is taken when (ra(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (ra(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `bne` branch at 0x12234 targets 0x12240, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0.
  The `bne` branch at 0x1223c targets 0x12250, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x12258 targets 0x11e74 and is always taken.
  The `beq` branch at 0x12274 targets 0x12284, is taken when (a6(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (a6(=0x7fffffffffffffff) & s1(?)) != 0.
  The `bltz` branch at 0x122d8 targets 0x122f4, is taken when ra(?) < 0 (signed), and falls through when ra(?) >= 0 (signed).
  The `beq` branch at 0x122e0 targets 0x122fc and is always taken.
  The `bgez` branch at 0x122ec targets 0x12038, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `beq` branch at 0x122f4 targets 0x12048 and is always taken.
  The `beq` branch at 0x12308 targets 0x123ec, is taken when (a2(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a2(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `bgez` branch at 0x12374 targets 0x12448, is taken when a3(?) >= 0 (signed), and falls through when a3(?) < 0 (signed).
  The `beq` branch at 0x12380 targets 0x12398, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x123a0 targets 0x123d8, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0.
  The `beq` branch at 0x123e0 targets 0x11e74 and is always taken.
  The `beq` branch at 0x123e8 targets 0x12440, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x123f0 targets 0x12150, is taken when a0(?) != a1(=0x1), and falls through when a0(?) == a1(=0x1).
  The `beq` branch at 0x123fc targets 0x12148 and is always taken.
  The `bltz` branch at 0x12408 targets 0x11f44, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The `bne` branch at 0x12410 targets 0x11f44, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x12418 targets 0x11d74 and is always taken.
  The `bne` branch at 0x12428 targets 0x12310, is taken when (a2(=[[-0x3fe8]:8+1340]) & 0x100) != 0, and falls through when (a2(=[[-0x3fe8]:8+1340]) & 0x100) == 0.
  The `beq` branch at 0x12438 targets 0x121c4 and is always taken.
  The `beq` branch at 0x12440 targets 0x12148 and is always taken.
  The `bne` branch at 0x12448 targets 0x12388, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x12450 targets 0x1239c and is always taken.
  The return at 0x11e98 has v0 = ret(store_fpcsr).
- `maddrnd_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x12458 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x12458-0x129a8 (1360 bytes).
  It occupies 1360 bytes.
  13 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x124d4, `ld` at 0x12534, `ld` at 0x126c4.
  The `lbu` at 0x124e8 loads 1 byte from [-0x3fe8]:8 +0x548.
  5 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0x124ec, `lbu` at 0x1258c, `lbu` at 0x126fc.
  5 such `lb` accesses load 1 byte from ?, including `lb` at 0x12510, `lb` at 0x125fc, `lb` at 0x12684.
  12 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x12528, `lw` at 0x12538, `lw` at 0x126b8.
  9 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x12530, `sw` at 0x126c0, `sw` at 0x12718.
  The `lwu` at 0x126e4 loads 4 bytes from table(sym(.data)+7968) +0x0.
  3 such `sb` accesses store 1 byte to [-0x3fe8]:8 +0x549, including `sb` at 0x12708, `sb` at 0x12760, `sb` at 0x1279c.
  The `jal` at 0x12548 calls post_sig with a0=0x8, a1=?, a2=[-0x3fe8]:8, a3=?, a5=([[-0x3fe8]:8+1340] | 0x1004), a6=-0x7f.
  The `jal` at 0x126f0 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1340], a2=[-0x3fe8]:8, a3=([[-0x3fe8]:8+1340] | 0x1004).
  The `jal` at 0x12748 calls post_sig with a0=0x8, a1=?, a2=?, a3=?.
  The `jal` at 0x12784 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1340], a2=[-0x3fe8]:8, a3=?, a5=([[-0x3fe8]:8+1340] | 0x2008).
  The `jal` at 0x12834 calls post_sig with a0=0x8, a1=?, a2=[-0x3fe8]:8, a3=?.
  The `jal` at 0x12864 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1340], a2=[-0x3fe8]:8, a3=([[-0x3fe8]:8+1340] | 0x1004).
  The `beq` branch at 0x12484 targets 0x124a4, is taken when (v0(=0x7fffffffffffffff) & a3) == 0, and falls through when (v0(=0x7fffffffffffffff) & a3) != 0.
  The `beq` branch at 0x124b4 targets 0x124d4, is taken when (v0(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (v0(=0x7fffffffffffffff) & s1(?)) != 0.
  The `beq` branch at 0x124e4 targets 0x1257c, is taken when s2(=a1) >= -0x96 (signed), and falls through when s2(=a1) < -0x96 (signed).
  The `beq` branch at 0x124f4 targets 0x127e0, is taken when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0, and falls through when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  The `beq` branch at 0x12540 targets 0x12550, is taken when (a4(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (a4(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `beq` branch at 0x12550 targets 0x12724, is taken when s1(?) == s2(=0x1), and falls through when s1(?) != s2(=0x1).
  The `beq` branch at 0x12580 targets 0x12624, is taken when s2(=a1) >= -0x7e (signed), and falls through when s2(=a1) < -0x7e (signed).
  The `beq` branch at 0x125a4 targets 0x12874, is taken when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0, and falls through when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  The `bne` branch at 0x125b8 targets 0x124f8, is taken when s0(?) < t9(=0x7fffff) (unsigned), and falls through when s0(?) >= t9(=0x7fffff) (unsigned).
  The `beq` branch at 0x1260c targets 0x12920, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x12614 targets 0x12910, is taken when s2(=0x1) == v0(?), and falls through when s2(=0x1) != v0(?).
  The `beq` branch at 0x1261c targets 0x12528 and is always taken.
  The `beq` branch at 0x12628 targets 0x12648, is taken when (v0(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (v0(=0x7fffffffffffffff) & s1(?)) != 0.
  The `beq` branch at 0x12694 targets 0x128fc, is taken when s2(=a1) == a6(=-0x7f), and falls through when s2(=a1) != a6(=-0x7f).
  The `bgez` branch at 0x126a0 targets 0x126b4, is taken when at(?) >= 0 (signed), and falls through when at(?) < 0 (signed).
  The `bne` branch at 0x126b4 targets 0x12764, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x126e8 targets 0x1284c, is taken when (a3(=[[-0x3fe8]:8+1340]) & 0x200) == 0, and falls through when (a3(=[[-0x3fe8]:8+1340]) & 0x200) != 0.
  The `beq` branch at 0x12704 targets 0x1271c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1271c targets 0x12560 and is always taken.
  The `beq` branch at 0x12740 targets 0x12558, is taken when (v0(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (v0(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x1275c targets 0x12554 and is always taken.
  The `beq` branch at 0x12768 targets 0x12930, is taken when (a1(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x12770 targets 0x12844, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x127a0 targets 0x12928, is taken when a3(?) == s1(=0x1), and falls through when a3(?) != s1(=0x1).
  The `bne` branch at 0x127ac targets 0x127d4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x127cc targets 0x127d8 and is always taken.
  The `beq` branch at 0x127d8 targets 0x12560 and is always taken.
  The `bgez` branch at 0x12808 targets 0x1294c, is taken when a3(?) >= 0 (signed), and falls through when a3(?) < 0 (signed).
  The `beq` branch at 0x1282c targets 0x127a8, is taken when (t9(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (t9(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `beq` branch at 0x1283c targets 0x127a8 and is always taken.
  The `beq` branch at 0x12844 targets 0x127a0 and is always taken.
  The `beq` branch at 0x1285c targets 0x1286c, is taken when (at(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (at(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `beq` branch at 0x1286c targets 0x12560 and is always taken.
  The `beq` branch at 0x12888 targets 0x12898, is taken when (v0(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (v0(=0x7fffffffffffffff) & s1(?)) != 0.
  The `bltz` branch at 0x128ec targets 0x12908, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `beq` branch at 0x128f4 targets 0x12974 and is always taken.
  The `bgez` branch at 0x12900 targets 0x126a0, is taken when a4(?) >= 0 (signed), and falls through when a4(?) < 0 (signed).
  The `beq` branch at 0x12908 targets 0x126b0 and is always taken.
  The `bltz` branch at 0x12910 targets 0x1261c, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `bne` branch at 0x12918 targets 0x1261c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x12920 targets 0x12528 and is always taken.
  The `beq` branch at 0x12928 targets 0x12814 and is always taken.
  The `beq` branch at 0x12930 targets 0x1296c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x12938 targets 0x127a8, is taken when a3(?) != s1(=0x1), and falls through when a3(?) == s1(=0x1).
  The `beq` branch at 0x12944 targets 0x127a0 and is always taken.
  The `beq` branch at 0x12954 targets 0x12990, is taken when (a1(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x12964 targets 0x1277c and is always taken.
  The `beq` branch at 0x1296c targets 0x127a0 and is always taken.
  The `beq` branch at 0x1297c targets 0x129a0, is taken when (a1(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x12988 targets 0x1277c and is always taken.
  The `beq` branch at 0x12998 targets 0x12814 and is always taken.
  The `beq` branch at 0x129a0 targets 0x12934 and is always taken.
  The return at 0x12574 has v0 = one of ?, entry(sym(.data)+7968).
- `round_l` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x129a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x129a8-0x12a90 (232 bytes).
  It occupies 232 bytes.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x129f0, `ld` at 0x12a48, `ld` at 0x12a64.
  The `lbu` at 0x12a00 loads 1 byte from [-0x3fe8]:8 +0x548.
  The `lb` at 0x12a24 loads 1 byte from ?.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x12a3c, `lw` at 0x12a4c.
  The `sw` at 0x12a44 stores 4 bytes to [-0x3fe8]:8 +0x53c.
  The `lbu` at 0x12a68 loads 1 byte from [-0x3fe8]:8 +0x549.
  The `lbu` at 0x12a70 loads 1 byte from [-0x3fe8]:8 +0x54a.
  The `jal` at 0x12a5c calls post_sig with a0=0x8, a1=a1 at entry (arg1), a2=?, a3=?, a4=[-0x3fe8]:8, a5=0x1, a6=0x8000000000000000.
  The `jal` at 0x12a74 calls fpstore_d with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a4=[-0x3fe8]:8.
  The `jal` at 0x12a7c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x129d0 targets 0x129e4, is taken when (a2 & at(=0x7fffffffffffffff)) == 0, and falls through when (a2 & at(=0x7fffffffffffffff)) != 0.
  The `beq` branch at 0x12a28 targets 0x12a34, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x12a34 targets 0x12a68, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x12a54 targets 0x12a68, is taken when (t0(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (t0(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The return at 0x12a88 has v0 = ret(store_fpcsr).
- `round_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x12a90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x12a90-0x1324c (1980 bytes).
  It occupies 1980 bytes.
  21 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x12af4, `ld` at 0x12b58, `ld` at 0x12b7c.
  3 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x548, including `lbu` at 0x12b08, `lbu` at 0x12b8c, `lbu` at 0x13128.
  10 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0x12b0c, `lbu` at 0x12bf4, `lbu` at 0x12ca0.
  6 such `lb` accesses load 1 byte from ?, including `lb` at 0x12b38, `lb` at 0x12bb0, `lb` at 0x12d10.
  16 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x12b4c, `lw` at 0x12b5c, `lw` at 0x12be4.
  12 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x12b54, `sw` at 0x12bec, `sw` at 0x12c4c.
  6 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x54a, including `lbu` at 0x12c1c, `lbu` at 0x12d84, `lbu` at 0x12ea4.
  3 such `ld` accesses load 8 bytes from [-0x3fe8]:8 +0x3e0, including `ld` at 0x12c2c, `ld` at 0x12eb4, `ld` at 0x131c4.
  3 such `sd` accesses store 8 bytes to [[-0x3fe8]:8+992]:8 +0x128, including `sd` at 0x12c34, `sd` at 0x12eb8, `sd` at 0x131c8.
  The `ld` at 0x12e6c loads 8 bytes from table(sym(.data)+8000) +0x0.
  The `lb` at 0x12f80 loads 1 byte from table(sym(round_bit)) +0x1.
  The `jal` at 0x12b6c calls post_sig with a0=0x8, a1=?, a2=?, a3=?, a5=[-0x3fe8]:8, a6=0x7fffffffffffffff.
  The `jal` at 0x12c20 calls fpstore_d with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8, a7=(a1 + one of 0x600, 0x601).
  The `jal` at 0x12c50 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12d58 calls post_sig with a0=0x8, a1=?, a2=?, a3=?, a5=[-0x3fe8]:8, a6=0x7fffffffffffffff.
  The `jal` at 0x12d88 calls fpstore_d with a0=(one of 0x0, 0x10000000000000 | (a0 << 0x3f)), a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8.
  The `jal` at 0x12d90 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12e70 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1352]:1, a2=?, a3=[[-0x3fe8]:8+1340], a5=[-0x3fe8]:8.
  The `jal` at 0x12ea8 calls fpstore_d with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a5=[-0x3fe8]:8.
  The `jal` at 0x12ed4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12f4c calls fpstore_d with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8.
  The `jal` at 0x12f54 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12fc4 calls post_sig with a0=0x8, a1=?, a2=?, a3=?, a5=[-0x3fe8]:8.
  The `jal` at 0x13000 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1352]:1, a2=?, a3=[[-0x3fe8]:8+1340], a5=[-0x3fe8]:8.
  The `jal` at 0x13028 calls fpstore_d with a0=entry(sym(.data)+8000), a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8.
  The `jal` at 0x13030 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x13108 calls post_sig with a0=0x8, a1=?, a2=?, a3=[[-0x3fe8]:8+1340], a5=[-0x3fe8]:8.
  The `jal` at 0x131b8 calls fpstore_d with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8, a7=(a1 + one of 0x600, 0x601).
  The `jal` at 0x131cc calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x12ac8 targets 0x12ae8, is taken when (a6(=0x7fffffffffffffff) & a3) == 0, and falls through when (a6(=0x7fffffffffffffff) & a3) != 0.
  The `beq` branch at 0x12b04 targets 0x12c88, is taken when s2(=a1) >= -0x433 (signed), and falls through when s2(=a1) < -0x433 (signed).
  The `beq` branch at 0x12b14 targets 0x12f64, is taken when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0, and falls through when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  The `beq` branch at 0x12b64 targets 0x12d40, is taken when (a0(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a0(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x12bd0 targets 0x12fd4, is taken when (a6(?) & ra(=0x20000000000000)) == 0, and falls through when (a6(?) & ra(=0x20000000000000)) != 0.
  The `beq` branch at 0x12bdc targets 0x12bf4, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x12bfc targets 0x12c38, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0.
  The `beq` branch at 0x12c38 targets 0x12c50, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x12c8c targets 0x12da0, is taken when s2(=a1) >= -0x3fe (signed), and falls through when s2(=a1) < -0x3fe (signed).
  The `beq` branch at 0x12cb4 targets 0x13040, is taken when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0, and falls through when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  The `bne` branch at 0x12cc8 targets 0x12b20, is taken when s0(?) < t8(=0xfffffffffffff) (unsigned), and falls through when s0(?) >= t8(=0xfffffffffffff) (unsigned).
  The `beq` branch at 0x12d1c targets 0x12b4c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x12d28 targets 0x131f8, is taken when a1(=0x1) == a0(?), and falls through when a1(=0x1) != a0(?).
  The `beq` branch at 0x12d30 targets 0x12b4c, is taken when at(?) == a1(=0x1), and falls through when at(?) != a1(=0x1).
  The `beq` branch at 0x12d50 targets 0x12d64, is taken when (v0(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (v0(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `bne` branch at 0x12d6c targets 0x12d80, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0.
  The `bne` branch at 0x12d78 targets 0x12d90, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) == 0.
  The `beq` branch at 0x12d98 targets 0x12c5c and is always taken.
  The `beq` branch at 0x12da4 targets 0x12dc4, is taken when (a6(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (a6(=0x7fffffffffffffff) & s1(?)) != 0.
  The `beq` branch at 0x12e10 targets 0x130d0, is taken when s2(=a1) == a3(=-0x3ff), and falls through when s2(=a1) != a3(=-0x3ff).
  The `beq` branch at 0x12e24 targets 0x12e38, is taken when (s0(?) & t9(=0x20000000000000)) == 0, and falls through when (s0(?) & t9(=0x20000000000000)) != 0.
  The `bne` branch at 0x12e38 targets 0x12ee4, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x12e68 targets 0x12fe4, is taken when (a0(=[[-0x3fe8]:8+1340]) & 0x200) == 0, and falls through when (a0(=[[-0x3fe8]:8+1340]) & 0x200) != 0.
  The `beq` branch at 0x12e84 targets 0x12ebc, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0.
  The `beq` branch at 0x12ebc targets 0x12ed4, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x12edc targets 0x12c5c and is always taken.
  The `bne` branch at 0x12ee8 targets 0x12f0c, is taken when s6(?) < -0x3fe (signed), and falls through when s6(?) >= -0x3fe (signed).
  The `beq` branch at 0x12f04 targets 0x12f10 and is always taken.
  The `beq` branch at 0x12f14 targets 0x131dc, is taken when (a3(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a3(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `bne` branch at 0x12f1c targets 0x13100, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x12f24 targets 0x12fa4, is taken when a0(?) == a1(=0x1), and falls through when a0(?) != a1(=0x1).
  The `bne` branch at 0x12f34 targets 0x12f48, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0.
  The `bne` branch at 0x12f40 targets 0x12f54, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) == 0.
  The `beq` branch at 0x12f5c targets 0x12c5c and is always taken.
  The `beq` branch at 0x12f94 targets 0x13214, is taken when (a0(=0x10000000000000) & s0(?)) == 0, and falls through when (a0(=0x10000000000000) & s0(?)) != 0.
  The `beq` branch at 0x12fbc targets 0x12f2c, is taken when (t8(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (t8(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `beq` branch at 0x12fcc targets 0x12f2c and is always taken.
  The `bne` branch at 0x12fd4 targets 0x12be4, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x12fdc targets 0x12bf8 and is always taken.
  The `beq` branch at 0x12ff8 targets 0x1300c, is taken when (ra(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (ra(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `bne` branch at 0x13014 targets 0x13020, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0.
  The `bne` branch at 0x1301c targets 0x13030, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x13038 targets 0x12c5c and is always taken.
  The `beq` branch at 0x13054 targets 0x13064, is taken when (a6(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (a6(=0x7fffffffffffffff) & s1(?)) != 0.
  The `bne` branch at 0x130c0 targets 0x130e4, is taken when (s0(?) & a3(=0x10000000000000)) != 0, and falls through when (s0(?) & a3(=0x10000000000000)) == 0.
  The `beq` branch at 0x130c8 targets 0x130ec and is always taken.
  The `beq` branch at 0x130dc targets 0x12e1c, is taken when (s0(?) & a7(=0x10000000000000)) == 0, and falls through when (s0(?) & a7(=0x10000000000000)) != 0.
  The `beq` branch at 0x130e4 targets 0x12e34 and is always taken.
  The `beq` branch at 0x130f8 targets 0x131e0, is taken when (a3(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a3(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x1316c targets 0x1323c, is taken when (a6(?) & t2(=0x20000000000000)) == 0, and falls through when (a6(?) & t2(=0x20000000000000)) != 0.
  The `beq` branch at 0x13178 targets 0x13190, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x13198 targets 0x131cc, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0.
  The `beq` branch at 0x131d4 targets 0x12c5c and is always taken.
  The `beq` branch at 0x131dc targets 0x13234, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x131e4 targets 0x12f2c, is taken when a0(?) != a1(=0x1), and falls through when a0(?) == a1(=0x1).
  The `beq` branch at 0x131f0 targets 0x12f24 and is always taken.
  The `bltz` branch at 0x131fc targets 0x12d30, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `bne` branch at 0x13204 targets 0x12d30, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1320c targets 0x12b50 and is always taken.
  The `bne` branch at 0x1321c targets 0x13100, is taken when (a3(=[[-0x3fe8]:8+1340]) & 0x100) != 0, and falls through when (a3(=[[-0x3fe8]:8+1340]) & 0x100) == 0.
  The `beq` branch at 0x1322c targets 0x12fa4 and is always taken.
  The `beq` branch at 0x13234 targets 0x12f24 and is always taken.
  The `bne` branch at 0x1323c targets 0x13180, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x13244 targets 0x13194 and is always taken.
  The return at 0x12c80 has v0 = ret(store_fpcsr).
- `maddrnd_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1324c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1324c-0x13780 (1332 bytes).
  It occupies 1332 bytes.
  13 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x13298, `ld` at 0x132f8, `ld` at 0x13494.
  The `lbu` at 0x132ac loads 1 byte from [-0x3fe8]:8 +0x548.
  5 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0x132b0, `lbu` at 0x13350, `lbu` at 0x134cc.
  5 such `lb` accesses load 1 byte from ?, including `lb` at 0x132d4, `lb` at 0x133c4, `lb` at 0x1344c.
  12 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x132ec, `lw` at 0x132fc, `lw` at 0x13488.
  9 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x132f4, `sw` at 0x13490, `sw` at 0x134e8.
  The `ld` at 0x134b4 loads 8 bytes from table(sym(.data)+8000) +0x0.
  3 such `sb` accesses store 1 byte to [-0x3fe8]:8 +0x549, including `sb` at 0x134d8, `sb` at 0x13530, `sb` at 0x1356c.
  The `jal` at 0x1330c calls post_sig with a0=0x8, a1=?, a2=[-0x3fe8]:8, a3=?, a5=([[-0x3fe8]:8+1340] | 0x1004), a6=0x1.
  The `jal` at 0x134c0 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1340], a2=[-0x3fe8]:8, a3=?.
  The `jal` at 0x13518 calls post_sig with a0=0x8, a1=?, a2=?, a3=?, a6=0x1.
  The `jal` at 0x13554 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1340], a2=[-0x3fe8]:8, a3=?, a4=([[-0x3fe8]:8+1340] | 0x2008).
  The `jal` at 0x13604 calls post_sig with a0=0x8, a1=?, a2=[-0x3fe8]:8, a3=?, a6=one of 0x1, 0x7fffffffffffffff.
  The `jal` at 0x13634 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1340], a2=[-0x3fe8]:8, a3=?.
  The `beq` branch at 0x13278 targets 0x13298, is taken when (a6(=0x7fffffffffffffff) & a3) == 0, and falls through when (a6(=0x7fffffffffffffff) & a3) != 0.
  The `beq` branch at 0x132a8 targets 0x13340, is taken when s1(=a1) >= -0x433 (signed), and falls through when s1(=a1) < -0x433 (signed).
  The `beq` branch at 0x132b8 targets 0x135ac, is taken when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0, and falls through when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  The `beq` branch at 0x13304 targets 0x13318, is taken when (a4(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (a4(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `beq` branch at 0x13318 targets 0x134f4, is taken when s1(?) == a6(=0x1), and falls through when s1(?) != a6(=0x1).
  The `beq` branch at 0x13344 targets 0x133ec, is taken when s1(=a1) >= -0x3fe (signed), and falls through when s1(=a1) < -0x3fe (signed).
  The `beq` branch at 0x13368 targets 0x13644, is taken when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0, and falls through when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  The `bne` branch at 0x1337c targets 0x132bc, is taken when s0(?) < t9(=0xfffffffffffff) (unsigned), and falls through when s0(?) >= t9(=0xfffffffffffff) (unsigned).
  The `beq` branch at 0x133d0 targets 0x13700, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x133dc targets 0x136f0, is taken when v1(=0x1) == v0(?), and falls through when v1(=0x1) != v0(?).
  The `beq` branch at 0x133e4 targets 0x132ec and is always taken.
  The `beq` branch at 0x133f0 targets 0x13410, is taken when (a6(=0x7fffffffffffffff) & s2(?)) == 0, and falls through when (a6(=0x7fffffffffffffff) & s2(?)) != 0.
  The `beq` branch at 0x1345c targets 0x136d4, is taken when s1(=a1) == a7(=-0x3ff), and falls through when s1(=a1) != a7(=-0x3ff).
  The `beq` branch at 0x13470 targets 0x13484, is taken when (s0(?) & at(=0x20000000000000)) == 0, and falls through when (s0(?) & at(=0x20000000000000)) != 0.
  The `bne` branch at 0x13484 targets 0x13534, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x134b8 targets 0x1361c, is taken when (v0(=[[-0x3fe8]:8+1340]) & 0x200) == 0, and falls through when (v0(=[[-0x3fe8]:8+1340]) & 0x200) != 0.
  The `beq` branch at 0x134d4 targets 0x134ec, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x134ec targets 0x13324 and is always taken.
  The `beq` branch at 0x13510 targets 0x13320, is taken when (v0(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (v0(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x1352c targets 0x1331c and is always taken.
  The `beq` branch at 0x13538 targets 0x13710, is taken when (a1(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x13540 targets 0x13614, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x13574 targets 0x13708, is taken when v0(?) == a6(=0x1), and falls through when v0(?) != a6(=0x1).
  The `bne` branch at 0x1357c targets 0x135a0, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x13598 targets 0x135a4 and is always taken.
  The `beq` branch at 0x135a4 targets 0x13324 and is always taken.
  The `beq` branch at 0x135dc targets 0x13728, is taken when (s0(?) & a1(=0x10000000000000)) == 0, and falls through when (s0(?) & a1(=0x10000000000000)) != 0.
  The `beq` branch at 0x135fc targets 0x1357c, is taken when (ra(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (ra(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `beq` branch at 0x1360c targets 0x1357c and is always taken.
  The `beq` branch at 0x13614 targets 0x13574 and is always taken.
  The `beq` branch at 0x1362c targets 0x1363c, is taken when (v1(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (v1(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `beq` branch at 0x1363c targets 0x13324 and is always taken.
  The `beq` branch at 0x13658 targets 0x13668, is taken when (a6(=0x7fffffffffffffff) & s2(?)) == 0, and falls through when (a6(=0x7fffffffffffffff) & s2(?)) != 0.
  The `bne` branch at 0x136c4 targets 0x136e8, is taken when (s0(?) & a4(=0x10000000000000)) != 0, and falls through when (s0(?) & a4(=0x10000000000000)) == 0.
  The `beq` branch at 0x136cc targets 0x1374c and is always taken.
  The `beq` branch at 0x136e0 targets 0x13468, is taken when (s0(?) & a6(=0x10000000000000)) == 0, and falls through when (s0(?) & a6(=0x10000000000000)) != 0.
  The `beq` branch at 0x136e8 targets 0x13480 and is always taken.
  The `bltz` branch at 0x136f0 targets 0x133e4, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `bne` branch at 0x136f8 targets 0x133e4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x13700 targets 0x132ec and is always taken.
  The `beq` branch at 0x13708 targets 0x135e4 and is always taken.
  The `beq` branch at 0x13710 targets 0x13744, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x13718 targets 0x13578, is taken when v0(?) != t0(=0x1), and falls through when v0(?) == t0(=0x1).
  The `beq` branch at 0x13720 targets 0x13570 and is always taken.
  The `beq` branch at 0x13730 targets 0x13764, is taken when (a1(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x1373c targets 0x1354c and is always taken.
  The `beq` branch at 0x13744 targets 0x13574 and is always taken.
  The `beq` branch at 0x13754 targets 0x13778, is taken when (a1(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x1375c targets 0x1354c and is always taken.
  The `beq` branch at 0x13770 targets 0x135e4 and is always taken.
  The `beq` branch at 0x13778 targets 0x13714 and is always taken.
  The return at 0x13338 has v0 = one of (one of 0x0, 0x10000000000000 | (a0 << 0x3f)), entry(sym(.data)+8000), ?.
- `VEC_unexp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13780 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13780-0x137a0 (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0x13798 calls cmn_err with a0=0x0, a1=sym(.data)+16128, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
- `slave_loop` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13800 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13800-0x13858 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x13800 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sb` at 0x13824 stores 1 byte to ([a0+12] + sym(slave_loop_ready)) +0x0.
  The `ld` at 0x13838 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x13844 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `sd` at 0x13848 stores 8 bytes to a0 (arg0 at entry) +0x18.
  The `ld` at 0x1384c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `jalr` at 0x13850 calls (unknown callee) with a0=[a0+72]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x13830 targets 0x13830, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x1383c targets 0x13828, is taken when t0(=[a0+24]:8) == 0, and falls through when t0(=[a0+24]:8) != 0.
- `start_slave_loop` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13880 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13880-0x138c8 (72 bytes).
  It occupies 72 bytes.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x138a8, `sd` at 0x138ac, `sd` at 0x138b0.
  The `bne` branch at 0x138b8 targets 0x138a8, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The return at 0x138c0 has v0 = ?.
- `backtouser` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x138d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x138d0-0x13950 (128 bytes).
  It occupies 128 bytes.
  The `ld` at 0x138d0 loads 8 bytes from abs 0xffffffffffffc020.
  The `sb` at 0x138dc stores 1 byte to abs 0xffffffffffffc04f.
  22 such `ld` accesses load 8 bytes from ?, including `ld` at 0x138e0, `ld` at 0x138ec, `ld` at 0x138f0.
  The `jal` at 0x138d4 calls ktimer_switch with a0=[-0x3fe0]:8, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x138e4 calls tfi_restore with a0=?, a1=?, a2=?, a3=?.
- `earlynofault` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13950 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13950-0x13984 (52 bytes).
  It occupies 52 bytes.
  The `ld` at 0x1396c loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `jal` at 0x13970 calls dobuserre with a0=a0 at entry (arg0), a1=[a0+288]:8, a2=0x1, a3=a3 at entry (arg3).
  The `beq` branch at 0x13958 targets 0x1396c, is taken when a1 == at(=0x1c), and falls through when a1 != at(=0x1c).
  The `beq` branch at 0x1397c targets 0x13964 and is always taken.
  The return at 0x13964 has v0 = one of 0x0, 0x1.
- `idle_err` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13984 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13984-0x13a24 (160 bytes).
  It occupies 160 bytes.
  The `jal` at 0x139c4 calls dobuserre with a0=0x0, a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3), a4=0x1c.
  The `jal` at 0x139cc calls getbadvaddr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x139ec calls cmn_err with a0=0x0, a1=sym(.rodata)+5064, a2=a2 at entry (arg2), a3=a0 at entry (arg0), a4=a1 at entry (arg1), a5=a3 at entry (arg3), a6=ret(getbadvaddr).
  The `jal` at 0x13a14 calls dobuserr with a0=0x0, a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3), a4=0x1c.
  The `beq` branch at 0x139b0 targets 0x139bc, is taken when a7(?) == at(=0x18), and falls through when a7(?) != at(=0x18).
  The `bne` branch at 0x139b8 targets 0x13a08, is taken when a7(?) != a4(=0x1c), and falls through when a7(?) == a4(=0x1c).
  The `beq` branch at 0x13a08 targets 0x139cc, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x13a1c targets 0x139cc and is always taken.
  The return at 0x13a00 has v0 = ret(cmn_err).
- `dobuserre` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13a24 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13a24-0x13a40 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x13a2c calls dobuserr_common with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1.
  The return at 0x13a38 has v0 = ret(dobuserr_common).
- `dobuserr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13a40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13a40-0x13a5c (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x13a48 calls dobuserr_common with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0.
  The return at 0x13a54 has v0 = ret(dobuserr_common).
- `hem_add_dimm` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13a5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13a5c-0x13ae0 (132 bytes).
  It occupies 132 bytes.
  The `lbu` at 0x13aac loads 1 byte from ret(maddr_to_dimm) +0x0.
  The `jal` at 0x13a78 calls maddr_to_dimm with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x13a94 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jal` at 0x13ac8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=ret(maddr_to_dimm), a3=?.
  The `beq` branch at 0x13aa4 targets 0x13ac0, is taken when s0(=ret(maddr_to_dimm)) == 0, and falls through when s0(=ret(maddr_to_dimm)) != 0.
  The `beq` branch at 0x13ab0 targets 0x13ac0, is taken when a2(=[ret(maddr_to_dimm)]:1) == 0, and falls through when a2(=[ret(maddr_to_dimm)]:1) != 0.
  The `beq` branch at 0x13ab8 targets 0x13ac8 and is always taken.
  The return at 0x13ad8 has v0 = ret(cmn_err).
- `hem_add_sync` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13ae0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13ae0-0x13bb4 (212 bytes).
  It occupies 212 bytes.
  The `jal` at 0x13b2c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=a0 at entry (arg0), a7=a0 at entry (arg0).
  The `jal` at 0x13b40 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=a1 at entry (arg1).
  The `jal` at 0x13b58 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=a2 at entry (arg2).
  The `jal` at 0x13b88 calls hem_add_dimm [0x13a5c] with a0=sym(.rodata)+5064, a1=a5 at entry (arg5), a2=?, a3=?.
  The `jal` at 0x13ba4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=a3 at entry (arg3), a3=a4 at entry (arg4).
  The `bne` branch at 0x13b08 targets 0x13b1c, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0x13b14 targets 0x13b24 and is always taken.
  The `beq` branch at 0x13b64 targets 0x13b84, is taken when s0(=a3) == at(=0xfe), and falls through when s0(=a3) != at(=0xfe).
  The `bne` branch at 0x13b6c targets 0x13b98, is taken when s0(=a3) != a0(=0xff), and falls through when s0(=a3) == a0(=0xff).
  The `beq` branch at 0x13b90 targets 0x13b74 and is always taken.
  The `beq` branch at 0x13bac targets 0x13b74 and is always taken.
  The return at 0x13b7c has v0 = one of ret(cmn_err), ret(hem_add_dimm).
- `hem_add_ioe` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13bb4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13bb4-0x13df4 (576 bytes).
  It occupies 576 bytes.
  14 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x13bf8, `lw` at 0x13cac, `lw` at 0x13cc4.
  The `ld` at 0x13c88 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x13c9c loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `lh` at 0x13cb4 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `lh` at 0x13ccc loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `lh` at 0x13ce4 loads 2 bytes from a0 (arg0 at entry) +0x8.
  The `lh` at 0x13cfc loads 2 bytes from a0 (arg0 at entry) +0xa.
  The `lh` at 0x13d18 loads 2 bytes from a0 (arg0 at entry) +0xc.
  The `lh` at 0x13d34 loads 2 bytes from a0 (arg0 at entry) +0xe.
  The `ld` at 0x13d50 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x13d6c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x13d88 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x13da4 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x13dc0 loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `ld` at 0x13de0 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x13bf0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=a3 at entry (arg3).
  The `jal` at 0x13c8c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+72]:8.
  The `jal` at 0x13ca0 calls hem_add_dimm [0x13a5c] with a0=sym(.rodata)+5064, a1=[a0+56]:8, a2=?, a3=?.
  The `jal` at 0x13cb8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+4]:2.
  The `jal` at 0x13cd0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+6]:2.
  The `jal` at 0x13ce8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+8]:2.
  The `jal` at 0x13d00 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+10]:2.
  The `jal` at 0x13d1c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+12]:2, a4=([a0] << 0x5).
  The `jal` at 0x13d38 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+14]:2, a4=([a0] << 0x5), a5=([a0] << 0x6).
  The `jal` at 0x13d54 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+16]:8, a5=([a0] << 0x6), a6=([a0] << 0x7).
  The `jal` at 0x13d70 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+24]:8, a6=([a0] << 0x7), a7=([a0] << 0x8).
  The `jal` at 0x13d8c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+32]:8, a7=([a0] << 0x8).
  The `jal` at 0x13da8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+40]:8.
  The `jal` at 0x13dc4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+48]:8.
  The `jal` at 0x13de4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+64]:8.
  The `bne` branch at 0x13bc8 targets 0x13be4, is taken when at(=[sym(kdebug)]:2) != 0, and falls through when at(=[sym(kdebug)]:2) == 0.
  The `bne` branch at 0x13c00 targets 0x13cb0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bltz` branch at 0x13c0c targets 0x13cc8, is taken when v1(=([a0] << 0x1)) < 0 (signed), and falls through when v1(=([a0] << 0x1)) >= 0 (signed).
  The `bltz` branch at 0x13c18 targets 0x13ce0, is taken when a1(=([a0] << 0x2)) < 0 (signed), and falls through when a1(=([a0] << 0x2)) >= 0 (signed).
  The `bltz` branch at 0x13c24 targets 0x13cf8, is taken when a2(=([a0] << 0x3)) < 0 (signed), and falls through when a2(=([a0] << 0x3)) >= 0 (signed).
  The `bltz` branch at 0x13c30 targets 0x13d10, is taken when a3(=([a0] << 0x4)) < 0 (signed), and falls through when a3(=([a0] << 0x4)) >= 0 (signed).
  The `bltz` branch at 0x13c38 targets 0x13d2c, is taken when a4(=([a0] << 0x5)) < 0 (signed), and falls through when a4(=([a0] << 0x5)) >= 0 (signed).
  The `bltz` branch at 0x13c40 targets 0x13d48, is taken when a5(=([a0] << 0x6)) < 0 (signed), and falls through when a5(=([a0] << 0x6)) >= 0 (signed).
  The `bltz` branch at 0x13c48 targets 0x13d64, is taken when a6(=([a0] << 0x7)) < 0 (signed), and falls through when a6(=([a0] << 0x7)) >= 0 (signed).
  The `bltz` branch at 0x13c50 targets 0x13d80, is taken when a7(=([a0] << 0x8)) < 0 (signed), and falls through when a7(=([a0] << 0x8)) >= 0 (signed).
  The `bltz` branch at 0x13c58 targets 0x13d9c, is taken when t0(=([a0] << 0x9)) < 0 (signed), and falls through when t0(=([a0] << 0x9)) >= 0 (signed).
  The `bltz` branch at 0x13c60 targets 0x13db8, is taken when t1(=([a0] << 0xa)) < 0 (signed), and falls through when t1(=([a0] << 0xa)) >= 0 (signed).
  The `bltz` branch at 0x13c68 targets 0x13c9c, is taken when t2(=([a0] << 0xb)) < 0 (signed), and falls through when t2(=([a0] << 0xb)) >= 0 (signed).
  The `bltz` branch at 0x13c70 targets 0x13dd4, is taken when t3(=([a0] << 0xc)) < 0 (signed), and falls through when t3(=([a0] << 0xc)) >= 0 (signed).
  The `bgez` branch at 0x13c78 targets 0x13bd0, is taken when t8(=([a0] << 0xd)) >= 0 (signed), and falls through when t8(=([a0] << 0xd)) < 0 (signed).
  The `beq` branch at 0x13c94 targets 0x13bd4 and is always taken.
  The `beq` branch at 0x13ca8 targets 0x13c6c and is always taken.
  The `beq` branch at 0x13cc0 targets 0x13c08 and is always taken.
  The `beq` branch at 0x13cd8 targets 0x13c14 and is always taken.
  The `beq` branch at 0x13cf0 targets 0x13c20 and is always taken.
  The `beq` branch at 0x13d08 targets 0x13c2c and is always taken.
  The `beq` branch at 0x13d24 targets 0x13c34 and is always taken.
  The `beq` branch at 0x13d40 targets 0x13c3c and is always taken.
  The `beq` branch at 0x13d5c targets 0x13c44 and is always taken.
  The `beq` branch at 0x13d78 targets 0x13c4c and is always taken.
  The `beq` branch at 0x13d94 targets 0x13c54 and is always taken.
  The `beq` branch at 0x13db0 targets 0x13c5c and is always taken.
  The `beq` branch at 0x13dcc targets 0x13c64 and is always taken.
  The `beq` branch at 0x13dec targets 0x13c74 and is always taken.
  The return at 0x13bdc has v0 = one of ?, ret(cmn_err).
- `dobuserr_common` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13df4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13df4-0x162e8 (9460 bytes).
  It occupies 9460 bytes.
  3 such `lh` accesses load 2 bytes from abs 0xffffffffffffc3a0, including `lh` at 0x13e44, `lh` at 0x1448c, `lh` at 0x144c8.
  4 such `ll` accesses load 4 bytes from sym(heart_error_cpumap) +0x0, including `ll` at 0x13e80, `ll` at 0x14328, `ll` at 0x144f4.
  4 such `sc` accesses store 4 bytes to sym(heart_error_cpumap) +0x0, including `sc` at 0x13e88, `sc` at 0x14330, `sc` at 0x144fc.
  The `ld` at 0x13ed4 loads 8 bytes from abs 0xffffffffaff00000.
  The `sd` at 0x13ee4 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x0.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffaff10040, including `ld` at 0x13ee8, `ld` at 0x144bc, `ld` at 0x14f1c.
  The `sd` at 0x13eec stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x10.
  The `ld` at 0x13ef0 loads 8 bytes from abs 0xffffffffaff000a8.
  The `sd` at 0x13ef4 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x20.
  The `ld` at 0x13ef8 loads 8 bytes from abs 0xffffffffaff00090.
  The `sd` at 0x13f04 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x30.
  The `ld` at 0x13f08 loads 8 bytes from abs 0xffffffffaff00088.
  The `sd` at 0x13f1c stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x40.
  The `ld` at 0x13f20 loads 8 bytes from abs 0x9000000018000060.
  The `sd` at 0x13f24 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x50.
  The `lw` at 0x13f28 loads 4 bytes from abs 0x9000000018000044.
  The `sd` at 0x13f3c stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x60.
  The `lw` at 0x13f40 loads 4 bytes from abs 0x9000000018000014.
  The `sd` at 0x13f54 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x70.
  The `lw` at 0x13f58 loads 4 bytes from abs 0x900000001800001c.
  The `sd` at 0x13f70 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x80.
  The `ld` at 0x13f74 loads 8 bytes from abs 0x9000000018000090.
  The `sd` at 0x13f7c stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x90.
  The `ld` at 0x13f80 loads 8 bytes from abs 0x9000000018000070.
  The `sd` at 0x13f88 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0xa0.
  The `ld` at 0x13f8c loads 8 bytes from abs 0x9000000018000078.
  The `sd` at 0x13f94 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0xb0.
  The `ld` at 0x13f98 loads 8 bytes from abs 0xffffffffaff00098.
  The `sd` at 0x13fa0 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0xc0.
  The `ld` at 0x13fa8 loads 8 bytes from abs 0xffffffffaff000a0.
  The `sd` at 0x13fb4 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0xd0.
  The `ld` at 0x13fe0 loads 8 bytes from a0 (arg0 at entry) +0x118.
  The `ld` at 0x14150 loads 8 bytes from abs 0xffffffffaff10030.
  The `sw` at 0x14454 stores 4 bytes to abs 0x9000000018000044.
  The `sd` at 0x14464 stores 8 bytes to abs 0x9000000018000060.
  2 such `sd` accesses store 8 bytes to abs 0xffffffffaff10040, including `sd` at 0x1447c, `sd` at 0x14f0c.
  The `sd` at 0x144dc stores 8 bytes to abs 0xffffffffaff10020.
  The `ld` at 0x1491c loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `lw` at 0x14bb0 loads 4 bytes from (([-0x3c60]:2 << 0x2) + sym(heart_SysCorErr_ptime)) +0x0.
  The `lw` at 0x14bbc loads 4 bytes from (([-0x3c60]:2 << 0x2) + sym(heart_SysCorErr_count)) +0x0.
  The `sw` at 0x14bd0 stores 4 bytes to (([-0x3c60]:2 << 0x2) + sym(heart_SysCorErr_count)) +0x0.
  2 such `lw` accesses load 4 bytes from table(sym(real_data_eccsyns)) +0x0, including `lw` at 0x14e18, `lw` at 0x159a0.
  2 such `lbu` accesses load 1 byte from table(sym(real_data_eccsyns)) +0x4, including `lbu` at 0x14ec8, `lbu` at 0x14ecc.
  6 such `ld` accesses load 8 bytes from abs 0xffffffffaff60000, including `ld` at 0x14f10, `ld` at 0x14f24, `ld` at 0x14f4c.
  The `ld` at 0x14f18 loads 8 bytes from ?.
  The `ld` at 0x14f28 loads 8 bytes from abs 0xffffffffaff00018.
  2 such `sd` accesses store 8 bytes to abs 0xffffffffaff00018, including `sd` at 0x14f40, `sd` at 0x14f9c.
  The `lld` at 0x14f50 loads 8 bytes from ?.
  The `scd` at 0x14f5c stores 8 bytes to ?.
  The `ld` at 0x159bc loads 8 bytes from (sym(etstrings) + (entry(sym(real_data_eccsyns)) << 0x3)) +0x0.
  The `lw` at 0x15af0 loads 4 bytes from ?.
  The `sw` at 0x15b08 stores 4 bytes to ?.
  The `jal` at 0x13ebc calls compare_and_swap_int with a0=sym(heart_error_cpumap), a1=[sym(heart_error_cpumap)], a2=?, a3=?.
  The `jal` at 0x14160 calls heart_intr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x141c0 calls heart_paddr_to_port with a0=?, a1=sp-832, a2=sp-824, a3=?.
  The `jal` at 0x1422c calls heart_error_refine with a0=sym(.rodata)+5064, a1=?, a2=?, a3=sp-808, a5=0x20000000000.
  The `jal` at 0x14248 calls hem_add_ioe [0x13bb4] with a0=sp-808, a1=?, a2=?, a3=?.
  The `jal` at 0x143e0 calls heart_error_refine with a0=sym(.rodata)+5064, a1=0x4, a2=?, a3=sp-808, a7=0x1000000.
  The `jal` at 0x143fc calls hem_add_ioe [0x13bb4] with a0=sp-808, a1=?, a2=?, a3=?.
  The `jal` at 0x14434 calls cmn_err_tag with a0=0x44, a1=0x0, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x144ac calls heart_imr_bits_rmw with a0=[-0x3c60]:2, a1=0x0, a2=?, a3=0x8000000000000000, a4=0xffffffffaff10000.
  The `jal` at 0x146a8 calls heart_error_refine with a0=sym(.rodata)+5064, a1=one of 0x9, 0xa, a2=?, a3=sp-808, a5=0x1000000.
  The `jal` at 0x146c4 calls hem_add_ioe [0x13bb4] with a0=sp-808, a1=?, a2=?, a3=?.
  The `jal` at 0x14780 calls tlb_to_phys [0x162e8] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1480c calls heart_error_refine with a0=sym(.rodata)+5064, a1=0x5, a2=?, a3=sp-808.
  The `jal` at 0x1486c calls hem_add_ioe [0x13bb4] with a0=sp-808, a1=?, a2=?, a3=?.
  The `jal` at 0x14900 calls us_delay with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x14954 calls is_in_main_memory with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x14974 calls ldst_addr with a0=a0 at entry (arg0), a1=(([-0x3c60]:2 << 0x3) + sym(_heart_mode)), a2=a2 at entry (arg2), a3=?, a4=[a0+280]:8, a6=0x18, a7=0x1c.
  The `jal` at 0x149c4 calls heart_error_refine with a0=sym(.rodata)+5064, a1=one of 0x5, 0x6, a2=?, a3=sp-808.
  The `jal` at 0x14e80 calls log_dimmerr with a0=?, a1=?, a2=?, a3=?, a7=one of 0x0, 0x1.
  The `jal` at 0x14f78 calls __dcache_wb_inval with a0=?, a1=0x8, a2=?, a3=?, a6=table(sym(real_data_eccsyns)).
  The `jal` at 0x14fb8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x14fe0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15008 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1502c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15050 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15074 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15098 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x150b8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x150d4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15110 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15130 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=a0 at entry (arg0).
  The `jal` at 0x15150 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=a1 at entry (arg1).
  The `jal` at 0x1516c calls hem_add_sync [0x13ae0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x15180 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1519c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x151b8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x151d0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x151e8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x151fc calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15214 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0x9000000018000060]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x1522c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15244 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x1525c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15274 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x1528c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x152a4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x152bc calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x152d0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x152ec calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1530c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1532c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1534c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1536c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1538c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x153ac calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x153cc calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x153e8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15404 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x1541c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0x9000000018000060]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15464 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15480 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x154a4 calls hem_add_sync [0x13ae0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x154bc calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x154d4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x154f4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15514 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15544 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1557c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a5=[-0x3c60]:2+24.
  The `jal` at 0x15590 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x155a4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x155bc calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x155d0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x155e8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a5=0x9.
  The `jal` at 0x1560c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15630 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15654 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15678 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1569c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x156b8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=?, a3=?.
  The `jal` at 0x15734 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=?, a3=?, a4=sym(.rodata)+5064, a5=sym(.rodata)+5064, a6=sym(.rodata)+5064, a7=sym(.rodata)+5064.
  The `jal` at 0x15784 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x157a0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x157c8 calls hem_add_sync [0x13ae0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x157e4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x157fc calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15810 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15824 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15838 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1586c calls cmn_err with a0=0x4, a1=sym(.rodata)+5064, a2=?, a3=?.
  The `jal` at 0x1587c calls cmn_err with a0=0x4, a1=sym(.rodata)+5064, a2=?, a3=?.
  The `jal` at 0x158b0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=0x1.
  The `jal` at 0x158c4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x158e4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x158fc calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15910 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15928 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15930 calls hem_add_ioe [0x13bb4] with a0=sp-808, a1=?, a2=?, a3=?.
  The `jal` at 0x159b8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=sym(.rodata)+5064, a4=[(sym(etstrings) + (entry(sym(real_data_eccsyns)) << 0x3))]:8, a5=sym(.rodata)+5064, a6=(entry(sym(real_data_eccsyns)) << 0x3).
  The `jal` at 0x159d0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x159e4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15a08 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=sym(.rodata)+5064.
  The `jal` at 0x15a24 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15a3c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15a5c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=0x3ffffffff.
  The `jal` at 0x15a88 calls hem_add_sync [0x13ae0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x15ab8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[sym(time)], a4=sym(heart_SysCorErr_count).
  The `jal` at 0x15ad4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15aec calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15b68 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a7=0x10000.
  The `jal` at 0x15b84 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15b9c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15bb0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15bc4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15c04 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=sym(.rodata)+5064.
  The `jal` at 0x15c34 calls hem_add_sync [0x13ae0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x15c84 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a5=[-0x3c60]:2+4.
  The `jal` at 0x15ca8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15ccc calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15cf0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15d14 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15d38 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15d78 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=?, a3=?.
  The `jal` at 0x15e08 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=?, a3=?, a4=sym(.rodata)+5064, a5=sym(.rodata)+5064, a6=sym(.rodata)+5064, a7=sym(.rodata)+5064.
  The `jal` at 0x15e88 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15eac calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15ed0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15ef4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15f10 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15f28 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0x9000000018000060]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15f40 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15f58 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15f74 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15f88 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15fa4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15fd0 calls hem_add_sync [0x13ae0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x15fec calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x16000 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[sym(.sdata)+260].
  The `jal` at 0x16024 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x16038 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[sym(.sdata)+228].
  The `jal` at 0x1605c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=[sym(.sdata)+236]+1, a6=[sym(.sdata)+240].
  The `jal` at 0x16070 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[sym(.sdata)+236].
  The `jal` at 0x16094 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x160a8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[sym(.sdata)+244].
  The `jal` at 0x160cc calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x160e0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[sym(.sdata)+252].
  The `jal` at 0x16160 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1617c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x16194 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x161b4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=0x3ffffffff.
  The `jal` at 0x161f8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a5=[-0x3c60]:2+4.
  The `jal` at 0x16214 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x1622c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x16240 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x16254 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x16284 calls hem_add_sync [0x13ae0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x13e6c targets 0x14520, is taken when (s1(?) & at(=[sym(heart_error_cpumap)])) == 0, and falls through when (s1(?) & at(=[sym(heart_error_cpumap)])) != 0.
  The `beql` branch at 0x13e8c targets 0x13e80, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `nop` at 0x13e90 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x13e98 targets 0x13ec8 and is always taken.
  The `bne` branch at 0x13ea4 targets 0x14150, is taken when ra(=[sym(panicstr)]:8) != 0, and falls through when ra(=[sym(panicstr)]:8) == 0.
  The `bne` branch at 0x13eb4 targets 0x13ea0, is taken when (a1(=[sym(heart_error_cpumap)]) & 0xf) != 0, and falls through when (a1(=[sym(heart_error_cpumap)]) & 0xf) == 0.
  The `beq` branch at 0x13ec4 targets 0x13ea0, is taken when v0(=ret(compare_and_swap_int)) == 0, and falls through when v0(=ret(compare_and_swap_int)) != 0.
  The `beq` branch at 0x13fb0 targets 0x14768, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x13fbc targets 0x14770, is taken when s0(=0x1) == a3(=a2), and falls through when s0(=0x1) != a3(=a2).
  The `beq` branch at 0x13fc8 targets 0x14778, is taken when a4(=0x2) == a5(=a2), and falls through when a4(=0x2) != a5(=a2).
  The `beq` branch at 0x13fd0 targets 0x14048, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0x13fd8 targets 0x14048, is taken when s5(=a0) == 0, and falls through when s5(=a0) != 0.
  The `beq` branch at 0x13fec targets 0x14910, is taken when v0(?) == a6(=0x18), and falls through when v0(?) != a6(=0x18).
  The `beq` branch at 0x13ff8 targets 0x1496c, is taken when v0(?) == a7(=0x1c), and falls through when v0(?) != a7(=0x1c).
  The `bne` branch at 0x1401c targets 0x14170, is taken when a0(?) < t1(=0x8000000000000000) (unsigned), and falls through when a0(?) >= t1(=0x8000000000000000) (unsigned).
  The `beq` branch at 0x1402c targets 0x14174, is taken when a0(?) >= t2(=0xc000000000000000) (unsigned), and falls through when a0(?) < t2(=0xc000000000000000) (unsigned).
  The `beq` branch at 0x14040 targets 0x141b8 and is always taken.
  The `beq` branch at 0x14054 targets 0x14070, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x14060 targets 0x14070, is taken when (s4(=[0x9000000018000060]:8) & 0x8) == 0, and falls through when (s4(=[0x9000000018000060]:8) & 0x8) != 0.
  The `beq` branch at 0x14074 targets 0x14758, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x140c8 targets 0x14fac, is taken when (s1(?) & s8(?)) != 0, and falls through when (s1(?) & s8(?)) == 0.
  The `bgez` branch at 0x140e0 targets 0x14100, is taken when ra(=([0xffffffffaff10040]:8 << 0x2f)) >= 0 (signed), and falls through when ra(=([0xffffffffaff10040]:8 << 0x2f)) < 0 (signed).
  The `bne` branch at 0x140f4 targets 0x152e0, is taken when (s4(=[0x9000000018000060]:8) & at(=0x33062000)) != 0, and falls through when (s4(=[0x9000000018000060]:8) & at(=0x33062000)) == 0.
  The `beq` branch at 0x14108 targets 0x145e0, is taken when (v0(=0x300ff000000) & a4(?)) == 0, and falls through when (v0(=0x300ff000000) & a4(?)) != 0.
  The `bne` branch at 0x1411c targets 0x14268, is taken when s6(=[-0x3c60]:2) != a6(?), and falls through when s6(=[-0x3c60]:2) == a6(?).
  The `beq` branch at 0x14130 targets 0x14560, is taken when a7(=a1) == 0, and falls through when a7(=a1) != 0.
  The `bne` branch at 0x14140 targets 0x14568, is taken when s5(=a0) != 0, and falls through when s5(=a0) == 0.
  The `beq` branch at 0x14148 targets 0x1457c and is always taken.
  The `beq` branch at 0x14158 targets 0x14900, is taken when (s3(?) & t1(=[0xffffffffaff10030]:8)) == 0, and falls through when (s3(?) & t1(=[0xffffffffaff10030]:8)) != 0.
  The `beq` branch at 0x14168 targets 0x13eac and is always taken.
  The `bne` branch at 0x14178 targets 0x14194, is taken when a0(?) < t2(=0xffffffff80000000) (unsigned), and falls through when a0(?) >= t2(=0xffffffff80000000) (unsigned).
  The `beq` branch at 0x14184 targets 0x141a0, is taken when a0(?) >= v0(=0xffffffffa0000000) (unsigned), and falls through when a0(?) < v0(=0xffffffffa0000000) (unsigned).
  The `beq` branch at 0x1418c targets 0x141ac and is always taken.
  The `bne` branch at 0x14198 targets 0x14780, is taken when a0(?) < v0(=0xffffffffa0000000) (unsigned), and falls through when a0(?) >= v0(=0xffffffffa0000000) (unsigned).
  The `beq` branch at 0x141a4 targets 0x14780, is taken when a0(?) >= t9(=0xffffffffc0000000) (unsigned), and falls through when a0(?) < t9(=0xffffffffc0000000) (unsigned).
  The `beq` branch at 0x141cc targets 0x14048 and is always taken.
  The `beq` branch at 0x14234 targets 0x14258, is taken when v0(=ret(heart_error_refine)) == 0, and falls through when v0(=ret(heart_error_refine)) != 0.
  The `beq` branch at 0x14240 targets 0x154cc, is taken when v0(=ret(heart_error_refine)) == a2(=0x9), and falls through when v0(=ret(heart_error_refine)) != a2(=0x9).
  The `beq` branch at 0x1426c targets 0x145dc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x14274 targets 0x142cc, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bltz` branch at 0x14280 targets 0x142bc, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `beq` branch at 0x1428c targets 0x142b8, is taken when a0(?) >= 0x10 (signed), and falls through when a0(?) < 0x10 (signed).
  The `beq` branch at 0x14298 targets 0x1436c, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0.
  The `bne` branch at 0x142a8 targets 0x14374, is taken when s5(=a0) != 0, and falls through when s5(=a0) == 0.
  The `beq` branch at 0x142b0 targets 0x14388 and is always taken.
  The `beq` branch at 0x142bc targets 0x14954, is taken when a0(?) == t2(=0xfe), and falls through when a0(?) != t2(=0xfe).
  The `bne` branch at 0x142c4 targets 0x15454, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x142d0 targets 0x14414, is taken when t8(=0x1) == t9(=a2), and falls through when t8(=0x1) != t9(=a2).
  The `beq` branch at 0x142d8 targets 0x14414, is taken when ra(=[sym(kdebug)]:2) == 0, and falls through when ra(=[sym(kdebug)]:2) != 0.
  The `bne` branch at 0x142e0 targets 0x150f8, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x142ec targets 0x14440, is taken when at(=0x2) == v0(=a2), and falls through when at(=0x2) != v0(=a2).
  The `beq` branch at 0x142fc targets 0x14440, is taken when v1(=0x1) == a0(=a2), and falls through when v1(=0x1) != a0(=a2).
  The `beq` branch at 0x14304 targets 0x14440, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x14310 targets 0x14430, is taken when a1(=a3) == 0, and falls through when a1(=a3) != 0.
  The `beql` branch at 0x14334 targets 0x14328, is taken when (a2(=[sym(heart_error_cpumap)]) & a4(?)) == 0, and falls through when (a2(=[sym(heart_error_cpumap)]) & a4(?)) != 0; its branch-likely delay slot `nop` at 0x14338 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1436c targets 0x14388, is taken when s5(=a0) == 0, and falls through when s5(=a0) != 0.
  The `beq` branch at 0x143e8 targets 0x142cc, is taken when v0(=ret(heart_error_refine)) == 0, and falls through when v0(=ret(heart_error_refine)) != 0.
  The `beq` branch at 0x143f4 targets 0x154b4, is taken when v0(=ret(heart_error_refine)) == t1(=0x9), and falls through when v0(=ret(heart_error_refine)) != t1(=0x9).
  The `bne` branch at 0x1440c targets 0x142d4, is taken when t2(=0x1) != t3(=a2), and falls through when t2(=0x1) == t3(=a2).
  The `beq` branch at 0x14414 targets 0x142e8, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x14420 targets 0x142e8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x14428 targets 0x155b4 and is always taken.
  The `beq` branch at 0x1444c targets 0x14458, is taken when (t9(?) & ra(=0x4f00000)) == 0, and falls through when (t9(?) & ra(=0x4f00000)) != 0.
  The `beq` branch at 0x1445c targets 0x14468, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x1446c targets 0x14484, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x14484 targets 0x144b8, is taken when v1(=a3) == 0, and falls through when v1(=a3) != 0.
  The `beq` branch at 0x144c0 targets 0x144e4, is taken when a4(=[0xffffffffaff10040]:8) == 0, and falls through when a4(=[0xffffffffaff10040]:8) != 0.
  The `beql` branch at 0x14500 targets 0x144f4, is taken when (t2(=[sym(heart_error_cpumap)]) & t8(?)) == 0, and falls through when (t2(=[sym(heart_error_cpumap)]) & t8(?)) != 0; its branch-likely delay slot `nop` at 0x14504 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x14508 targets 0x14938, is taken when t0(=0x1) == t1(=a2), and falls through when t0(=0x1) != t1(=a2).
  The `beq` branch at 0x14510 targets 0x148f8, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x14518 targets 0x1433c and is always taken.
  The `beql` branch at 0x14538 targets 0x1452c, is taken when t9(?) == 0, and falls through when t9(?) != 0; its branch-likely delay slot `nop` at 0x1453c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x14558 targets 0x13eac and is always taken.
  The `beq` branch at 0x14560 targets 0x1457c, is taken when s5(=a0) == 0, and falls through when s5(=a0) != 0.
  The `beq` branch at 0x14598 targets 0x141d4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x145a4 targets 0x141d4, is taken when a5(?) != a4(?), and falls through when a5(?) == a4(?).
  The `beq` branch at 0x145d4 targets 0x141ec and is always taken.
  The `beq` branch at 0x145e8 targets 0x146f8, is taken when (a5(=0x4f00000) & a0(?)) == 0, and falls through when (a5(=0x4f00000) & a0(?)) != 0.
  The `beq` branch at 0x14600 targets 0x14620, is taken when t3(=a1) == 0, and falls through when t3(=a1) != 0.
  The `bne` branch at 0x14610 targets 0x14628, is taken when s5(=a0) != 0, and falls through when s5(=a0) == 0.
  The `beq` branch at 0x14618 targets 0x1463c and is always taken.
  The `beq` branch at 0x14620 targets 0x1463c, is taken when s5(=a0) == 0, and falls through when s5(=a0) != 0.
  The `beq` branch at 0x146b0 targets 0x146d4, is taken when v0(=ret(heart_error_refine)) == 0, and falls through when v0(=ret(heart_error_refine)) != 0.
  The `beq` branch at 0x146bc targets 0x155e0, is taken when v0(=ret(heart_error_refine)) == a5(=0x9), and falls through when v0(=ret(heart_error_refine)) != a5(=0x9).
  The `beq` branch at 0x146e0 targets 0x14940, is taken when (s3(?) & a6(?)) == 0, and falls through when (s3(?) & a6(?)) != 0.
  The `bne` branch at 0x146ec targets 0x14274, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x146f8 targets 0x148b0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x14710 targets 0x148a0, is taken when s6(=[-0x3c60]:2) != a4(?), and falls through when s6(=[-0x3c60]:2) == a4(?).
  The `beq` branch at 0x1471c targets 0x1489c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x14738 targets 0x14794, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0.
  The `bne` branch at 0x14748 targets 0x1479c, is taken when s5(=a0) != 0, and falls through when s5(=a0) == 0.
  The `beq` branch at 0x14750 targets 0x147b0 and is always taken.
  The `beq` branch at 0x14760 targets 0x14270 and is always taken.
  The `beq` branch at 0x14768 targets 0x13fd0 and is always taken.
  The `beq` branch at 0x14770 targets 0x13fd0 and is always taken.
  The `beq` branch at 0x14778 targets 0x13fd0 and is always taken.
  The `beq` branch at 0x1478c targets 0x141b8 and is always taken.
  The `beq` branch at 0x14794 targets 0x147b0, is taken when s5(=a0) == 0, and falls through when s5(=a0) != 0.
  The `beq` branch at 0x14814 targets 0x1487c, is taken when v0(=ret(heart_error_refine)) == 0, and falls through when v0(=ret(heart_error_refine)) != 0.
  The `beq` branch at 0x14840 targets 0x157d8, is taken when v0(=ret(heart_error_refine)) == v1(=0x9), and falls through when v0(=ret(heart_error_refine)) != v1(=0x9).
  The `bne` branch at 0x1484c targets 0x15860, is taken when a1(?) != a4(?), and falls through when a1(?) == a4(?).
  The `bne` branch at 0x14864 targets 0x1587c, is taken when a3(?) != a4(?), and falls through when a3(?) == a4(?).
  The `beq` branch at 0x14884 targets 0x14dcc, is taken when (s3(?) & a5(?)) == 0, and falls through when (s3(?) & a5(?)) != 0.
  The `bne` branch at 0x148a4 targets 0x14274, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x148b0 targets 0x14a00, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x148c4 targets 0x149f4, is taken when s6(=[-0x3c60]:2) != a5(?), and falls through when s6(=[-0x3c60]:2) == a5(?).
  The `beq` branch at 0x148d8 targets 0x14a78, is taken when a6(=a1) == 0, and falls through when a6(=a1) != 0.
  The `bne` branch at 0x148e8 targets 0x14a80, is taken when s5(=a0) != 0, and falls through when s5(=a0) == 0.
  The `beq` branch at 0x148f0 targets 0x14a94 and is always taken.
  The `beq` branch at 0x148f8 targets 0x1433c and is always taken.
  The `beq` branch at 0x14908 targets 0x13eac and is always taken.
  The `beq` branch at 0x14924 targets 0x14a70, is taken when (a4(=[a0+280]:8) & t1(=0x80000000)) == 0, and falls through when (a4(=[a0+280]:8) & t1(=0x80000000)) != 0.
  The `beq` branch at 0x14930 targets 0x14010 and is always taken.
  The `beq` branch at 0x14938 targets 0x1433c and is always taken.
  The `beq` branch at 0x1494c targets 0x146e8 and is always taken.
  The `bne` branch at 0x1495c targets 0x142c4, is taken when v0(=ret(is_in_main_memory)) != 0, and falls through when v0(=ret(is_in_main_memory)) == 0.
  The `beq` branch at 0x14964 targets 0x15778 and is always taken.
  The `beq` branch at 0x14980 targets 0x14010 and is always taken.
  The `bne` branch at 0x149cc targets 0x158d4, is taken when v0(=ret(heart_error_refine)) != 0, and falls through when v0(=ret(heart_error_refine)) == 0.
  The `beq` branch at 0x149e0 targets 0x14de0, is taken when (s3(?) & v0(?)) == 0, and falls through when (s3(?) & v0(?)) != 0.
  The `bne` branch at 0x149f4 targets 0x14274, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x14a00 targets 0x14b84, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x14a24 targets 0x14df4, is taken when (v0(?) & a2(=0x200000000000)) == 0, and falls through when (v0(?) & a2(=0x200000000000)) != 0.
  The `bne` branch at 0x14a2c targets 0x14b24, is taken when s6(=[-0x3c60]:2) != v0(?), and falls through when s6(=[-0x3c60]:2) == v0(?).
  The `beq` branch at 0x14a44 targets 0x14b28, is taken when (v0(?) & s1(?)) == 0, and falls through when (v0(?) & s1(?)) != 0.
  The `beq` branch at 0x14a50 targets 0x14b28, is taken when (s1(?) & 0x1) == 0, and falls through when (s1(?) & 0x1) != 0.
  The `bne` branch at 0x14a60 targets 0x14b2c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x14a68 targets 0x14b40 and is always taken.
  The `beq` branch at 0x14a70 targets 0x14010 and is always taken.
  The `beq` branch at 0x14a78 targets 0x14a94, is taken when s5(=a0) == 0, and falls through when s5(=a0) != 0.
  The `beq` branch at 0x14ac0 targets 0x14988, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x14acc targets 0x14988, is taken when a0(?) != a4(?), and falls through when a0(?) == a4(?).
  The `beq` branch at 0x14b1c targets 0x149a0 and is always taken.
  The `beq` branch at 0x14b28 targets 0x14b3c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x14b34 targets 0x14e94, is taken when t2(?) == t3(=0xfe), and falls through when t2(?) != t3(=0xfe).
  The `beq` branch at 0x14b50 targets 0x14e04, is taken when (a5(?) & a6(=0x40000000000)) == 0, and falls through when (a5(?) & a6(=0x40000000000)) != 0.
  The `beq` branch at 0x14b60 targets 0x15950, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x14b78 targets 0x14274, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x14b90 targets 0x14bec, is taken when (v0(?) & s1(?)) == 0, and falls through when (v0(?) & s1(?)) != 0.
  The `beq` branch at 0x14bcc targets 0x15aac, is taken when a0(=[(([-0x3c60]:2 << 0x2) + sym(heart_SysCorErr_ptime))]) >= a3(=[sym(time)]) (signed), and falls through when a0(=[(([-0x3c60]:2 << 0x2) + sym(heart_SysCorErr_ptime))]) < a3(=[sym(time)]) (signed).
  The `bne` branch at 0x14be0 targets 0x14274, is taken when s1(?) < 0x1 (unsigned), and falls through when s1(?) >= 0x1 (unsigned).
  The `beq` branch at 0x14bf4 targets 0x14c1c, is taken when (s7(=[0xffffffffaff10040]:8) & a4(=0x40000000000)) == 0, and falls through when (s7(=[0xffffffffaff10040]:8) & a4(=0x40000000000)) != 0.
  The `beq` branch at 0x14c08 targets 0x15b0c, is taken when s6(=[-0x3c60]:2) == a5(?), and falls through when s6(=[-0x3c60]:2) != a5(?).
  The `bne` branch at 0x14c10 targets 0x14274, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x14c20 targets 0x14da8, is taken when (a7(=0x10000) & s1(?)) == 0, and falls through when (a7(=0x10000) & s1(?)) != 0.
  The `beq` branch at 0x14c28 targets 0x14d9c, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x14c40 targets 0x15c78, is taken when (t0(=0x4f00000) & t1(?)) != 0, and falls through when (t0(=0x4f00000) & t1(?)) == 0.
  The `beq` branch at 0x14c54 targets 0x14d08, is taken when (s3(?) & v0(=0x1d000)) == 0, and falls through when (s3(?) & v0(=0x1d000)) != 0.
  The `beq` branch at 0x14c5c targets 0x14c80, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x14c78 targets 0x16018, is taken when a1(=[sym(time)]) >= a2(=[sym(.sdata)+232]) (signed), and falls through when a1(=[sym(time)]) < a2(=[sym(.sdata)+232]) (signed).
  The `beq` branch at 0x14c84 targets 0x14cac, is taken when (s3(?) & 0x4000) == 0, and falls through when (s3(?) & 0x4000) != 0.
  The `beq` branch at 0x14ca0 targets 0x16050, is taken when a5(=[sym(time)]) >= a6(=[sym(.sdata)+240]) (signed), and falls through when a5(=[sym(time)]) < a6(=[sym(.sdata)+240]) (signed).
  The `beq` branch at 0x14cac targets 0x14cd4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x14cc8 targets 0x16088, is taken when t1(=[sym(time)]) >= t2(=[sym(.sdata)+248]) (signed), and falls through when t1(=[sym(time)]) < t2(=[sym(.sdata)+248]) (signed).
  The `beq` branch at 0x14cd8 targets 0x14d00, is taken when (t3(=0x10000) & s3(?)) == 0, and falls through when (t3(=0x10000) & s3(?)) != 0.
  The `beq` branch at 0x14cf4 targets 0x160c0, is taken when t9(=[sym(time)]) >= ra(=[sym(.sdata)+256]) (signed), and falls through when t9(=[sym(time)]) < ra(=[sym(.sdata)+256]) (signed).
  The `bgez` branch at 0x14d0c targets 0x14d40, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0x14d28 targets 0x15fe0, is taken when a0(=[sym(time)]) >= a1(=[sym(.sdata)+264]) (signed), and falls through when a0(=[sym(time)]) < a1(=[sym(.sdata)+264]) (signed).
  The `beq` branch at 0x14d40 targets 0x14d60, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x14d60 targets 0x14d80, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x14d84 targets 0x15e24, is taken when (v0(?) & 0x7) != 0, and falls through when (v0(?) & 0x7) == 0.
  The `beq` branch at 0x14d8c targets 0x14edc, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x14d9c targets 0x14274, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0x14db4 targets 0x160f8, is taken when (s1(?) & a4(?)) != 0, and falls through when (s1(?) & a4(?)) == 0.
  The `beq` branch at 0x14dbc targets 0x14274, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x14dc4 targets 0x16150 and is always taken.
  The `beq` branch at 0x14dd8 targets 0x1488c and is always taken.
  The `beq` branch at 0x14dec targets 0x149e8 and is always taken.
  The `bne` branch at 0x14df4 targets 0x14b78, is taken when s6(=[-0x3c60]:2) != v0(?), and falls through when s6(=[-0x3c60]:2) == v0(?).
  The `beq` branch at 0x14dfc targets 0x14a38 and is always taken.
  The `beq` branch at 0x14e20 targets 0x14ec0, is taken when v0(=entry(sym(real_data_eccsyns))) == t3(=0x1), and falls through when v0(=entry(sym(real_data_eccsyns))) != t3(=0x1).
  The `beq` branch at 0x14e28 targets 0x14ecc, is taken when v0(=entry(sym(real_data_eccsyns))) == t0(=0x2), and falls through when v0(=entry(sym(real_data_eccsyns))) != t0(=0x2).
  The `beq` branch at 0x14e50 targets 0x14ef4, is taken when t1(=0x1) == t2(?), and falls through when t1(=0x1) != t2(?).
  The `beq` branch at 0x14e8c targets 0x14b60 and is always taken.
  The `bne` branch at 0x14eac targets 0x14b3c, is taken when a0(?) != a1(?), and falls through when a0(?) == a1(?).
  The `beq` branch at 0x14eb8 targets 0x14b40 and is always taken.
  The `bne` branch at 0x14ec4 targets 0x14e30, is taken when v0(=entry(sym(real_data_eccsyns))) != a4(=0x2), and falls through when v0(=entry(sym(real_data_eccsyns))) == a4(=0x2).
  The `beq` branch at 0x14ed4 targets 0x14e30 and is always taken.
  The `beq` branch at 0x14eec targets 0x14d90 and is always taken.
  The `beql` branch at 0x14f60 targets 0x14f50, is taken when t3(=table(0x0)) == 0, and falls through when t3(=table(0x0)) != 0; its branch-likely delay slot `nop` at 0x14f64 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x14fa4 targets 0x14e6c and is always taken.
  The `beq` branch at 0x14fcc targets 0x14fec, is taken when (s8(?) & ra(=0x100000000000)) == 0, and falls through when (s8(?) & ra(=0x100000000000)) != 0.
  The `beq` branch at 0x14ff4 targets 0x15014, is taken when (s8(?) & a2(=0x80000000000)) == 0, and falls through when (s8(?) & a2(=0x80000000000)) != 0.
  The `beq` branch at 0x15018 targets 0x15038, is taken when (a2(?) & s8(?)) == 0, and falls through when (a2(?) & s8(?)) != 0.
  The `beq` branch at 0x1503c targets 0x1505c, is taken when (a2(?) & s8(?)) == 0, and falls through when (a2(?) & s8(?)) != 0.
  The `beq` branch at 0x15060 targets 0x15080, is taken when (a2(?) & s8(?)) == 0, and falls through when (a2(?) & s8(?)) != 0.
  The `beq` branch at 0x15084 targets 0x150a0, is taken when (a2(?) & s8(?)) == 0, and falls through when (a2(?) & s8(?)) != 0.
  The `beq` branch at 0x150e8 targets 0x15744, is taken when (s1(?) & a3(?)) == 0, and falls through when (s1(?) & a3(?)) != 0.
  The `beq` branch at 0x150f0 targets 0x140dc and is always taken.
  The `beq` branch at 0x150fc targets 0x15178, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x15118 targets 0x1513c, is taken when s5(=a0) == 0, and falls through when s5(=a0) != 0.
  The `beq` branch at 0x1513c targets 0x1515c, is taken when a3(=a1) == 0, and falls through when a3(=a1) != 0.
  The `beq` branch at 0x152d8 targets 0x142e8 and is always taken.
  The `bgez` branch at 0x152f8 targets 0x15318, is taken when a2(=([0x9000000018000060]:8 << 0x22)) >= 0 (signed), and falls through when a2(=([0x9000000018000060]:8 << 0x22)) < 0 (signed).
  The `bgez` branch at 0x15318 targets 0x15338, is taken when a2(=([0x9000000018000060]:8 << 0x23)) >= 0 (signed), and falls through when a2(=([0x9000000018000060]:8 << 0x23)) < 0 (signed).
  The `bgez` branch at 0x15338 targets 0x15358, is taken when a2(=([0x9000000018000060]:8 << 0x26)) >= 0 (signed), and falls through when a2(=([0x9000000018000060]:8 << 0x26)) < 0 (signed).
  The `bgez` branch at 0x15358 targets 0x15378, is taken when a2(=([0x9000000018000060]:8 << 0x27)) >= 0 (signed), and falls through when a2(=([0x9000000018000060]:8 << 0x27)) < 0 (signed).
  The `bgez` branch at 0x15378 targets 0x15398, is taken when a2(=([0x9000000018000060]:8 << 0x2d)) >= 0 (signed), and falls through when a2(=([0x9000000018000060]:8 << 0x2d)) < 0 (signed).
  The `bgez` branch at 0x15398 targets 0x153b8, is taken when a2(=([0x9000000018000060]:8 << 0x2e)) >= 0 (signed), and falls through when a2(=([0x9000000018000060]:8 << 0x2e)) < 0 (signed).
  The `beq` branch at 0x153b8 targets 0x153d8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x15430 targets 0x140fc, is taken when (s4(=[0x9000000018000060]:8) & s3(?)) != 0, and falls through when (s4(=[0x9000000018000060]:8) & s3(?)) == 0.
  The `bne` branch at 0x15444 targets 0x14100, is taken when (s1(?) & t8(=0xfffffffffffeffff)) != 0, and falls through when (s1(?) & t8(=0xfffffffffffeffff)) == 0.
  The `beq` branch at 0x1544c targets 0x14274 and is always taken.
  The `beq` branch at 0x1548c targets 0x142c8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x154ac targets 0x142cc and is always taken.
  The `beq` branch at 0x154c4 targets 0x143fc and is always taken.
  The `beq` branch at 0x154e0 targets 0x15500, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x15500 targets 0x15520, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x15530 targets 0x15550, is taken when (a2(=0x300ff000000) & a3(?)) == 0, and falls through when (a2(=0x300ff000000) & a3(?)) != 0.
  The `beq` branch at 0x15568 targets 0x15588, is taken when (a2(=0x300ff000000) & a3(?)) == 0, and falls through when (a2(=0x300ff000000) & a3(?)) != 0.
  The `beq` branch at 0x155ac targets 0x14248 and is always taken.
  The `beq` branch at 0x155d8 targets 0x142e8 and is always taken.
  The `bgez` branch at 0x155f8 targets 0x15618, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bgez` branch at 0x1561c targets 0x1563c, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bgez` branch at 0x15640 targets 0x15660, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bgez` branch at 0x15664 targets 0x15684, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bgez` branch at 0x15688 targets 0x156a8, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bltz` branch at 0x156cc targets 0x1574c, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The `bltz` branch at 0x156dc targets 0x15754, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `bltz` branch at 0x156ec targets 0x1575c, is taken when a6(?) < 0 (signed), and falls through when a6(?) >= 0 (signed).
  The `bltz` branch at 0x156fc targets 0x15764, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `bltz` branch at 0x1570c targets 0x1576c, is taken when t0(?) < 0 (signed), and falls through when t0(?) >= 0 (signed).
  The `beq` branch at 0x1573c targets 0x146c4 and is always taken.
  The `beq` branch at 0x15744 targets 0x14270 and is always taken.
  The `beq` branch at 0x1574c targets 0x156d8 and is always taken.
  The `beq` branch at 0x15754 targets 0x156e8 and is always taken.
  The `beq` branch at 0x1575c targets 0x156f8 and is always taken.
  The `beq` branch at 0x15764 targets 0x15708 and is always taken.
  The `beq` branch at 0x15770 targets 0x15718 and is always taken.
  The `beq` branch at 0x157ac targets 0x142cc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x157d0 targets 0x142cc and is always taken.
  The `bne` branch at 0x1584c targets 0x1588c, is taken when (v0(?) & 0x3) != 0, and falls through when (v0(?) & 0x3) == 0.
  The `beq` branch at 0x15858 targets 0x158a8 and is always taken.
  The `beq` branch at 0x15874 targets 0x14854 and is always taken.
  The `beq` branch at 0x15884 targets 0x1486c and is always taken.
  The `bne` branch at 0x1588c targets 0x15940, is taken when a3(=0x1) != v0(?), and falls through when a3(=0x1) == v0(?).
  The `beq` branch at 0x15898 targets 0x158a8 and is always taken.
  The `beq` branch at 0x158cc targets 0x14848 and is always taken.
  The `bne` branch at 0x158d4 targets 0x158ec, is taken when v0(=ret(heart_error_refine)) != a2(=0x9), and falls through when v0(=ret(heart_error_refine)) == a2(=0x9).
  The `beq` branch at 0x15938 targets 0x149d4 and is always taken.
  The `bne` branch at 0x15940 targets 0x158a0, is taken when a4(=0x2) != v0(?), and falls through when a4(=0x2) == v0(?).
  The `beq` branch at 0x15948 targets 0x158a8 and is always taken.
  The `beq` branch at 0x15954 targets 0x15964, is taken when (s1(?) & 0x2) == 0, and falls through when (s1(?) & 0x2) != 0.
  The `beq` branch at 0x1595c targets 0x15968 and is always taken.
  The `beq` branch at 0x1596c targets 0x15a98, is taken when (s1(?) & 0x1) == 0, and falls through when (s1(?) & 0x1) != 0.
  The `bne` branch at 0x15974 targets 0x15aa0, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x159f0 targets 0x15a18, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x15a10 targets 0x15a2c and is always taken.
  The `beq` branch at 0x15a68 targets 0x15a90, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x15a70 targets 0x15a90, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x15a90 targets 0x14b64 and is always taken.
  The `beq` branch at 0x15a98 targets 0x1597c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x15aa4 targets 0x15984 and is always taken.
  The `beq` branch at 0x15b04 targets 0x14bd4 and is always taken.
  The `beq` branch at 0x15b24 targets 0x15b50, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x15b38 targets 0x15b50, is taken when a0(?) != a1(?), and falls through when a0(?) == a1(?).
  The `beq` branch at 0x15b48 targets 0x15b58 and is always taken.
  The `bgez` branch at 0x15bd8 targets 0x15c54, is taken when a0(?) >= 0 (signed), and falls through when a0(?) < 0 (signed).
  The `beq` branch at 0x15be8 targets 0x15c64, is taken when a4(=sym(.rodata)+5064) == 0, and falls through when a4(=sym(.rodata)+5064) != 0.
  The `beq` branch at 0x15bf0 targets 0x15c6c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x15c10 targets 0x15c40, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x15c1c targets 0x15c3c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x15c4c targets 0x14c0c and is always taken.
  The `bne` branch at 0x15c5c targets 0x15bf0, is taken when t0(=sym(.rodata)+5064) != 0, and falls through when t0(=sym(.rodata)+5064) == 0.
  The `bne` branch at 0x15c64 targets 0x15bf8, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x15c70 targets 0x15c00 and is always taken.
  The `bgez` branch at 0x15c94 targets 0x15cb4, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bgez` branch at 0x15cb8 targets 0x15cd8, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bgez` branch at 0x15cdc targets 0x15cfc, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bgez` branch at 0x15d00 targets 0x15d20, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bgez` branch at 0x15d24 targets 0x15d44, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bltz` branch at 0x15d88 targets 0x162ac, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `bltz` branch at 0x15d9c targets 0x162b4, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `bltz` branch at 0x15db0 targets 0x162bc, is taken when a6(?) < 0 (signed), and falls through when a6(?) >= 0 (signed).
  The `bltz` branch at 0x15dc4 targets 0x162c4, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `bltz` branch at 0x15dd8 targets 0x162cc, is taken when t0(?) < 0 (signed), and falls through when t0(?) >= 0 (signed).
  The `beq` branch at 0x15e1c targets 0x14c48 and is always taken.
  The `beq` branch at 0x15e48 targets 0x15e68, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x15e54 targets 0x15e68, is taken when ra(?) != t3(?), and falls through when ra(?) == t3(?).
  The `beq` branch at 0x15e60 targets 0x15e6c and is always taken.
  The `beq` branch at 0x15e98 targets 0x15eb8, is taken when (a4(?) & 0x4) == 0, and falls through when (a4(?) & 0x4) != 0.
  The `beq` branch at 0x15ebc targets 0x15edc, is taken when (a2(?) & 0x2) == 0, and falls through when (a2(?) & 0x2) != 0.
  The `beq` branch at 0x15ee0 targets 0x15f00, is taken when (a2(?) & 0x1) == 0, and falls through when (a2(?) & 0x1) != 0.
  The `beq` branch at 0x15fb0 targets 0x14d8c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x15fb8 targets 0x14d8c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x15fd8 targets 0x14d8c and is always taken.
  The `beq` branch at 0x16010 targets 0x14d30 and is always taken.
  The `beq` branch at 0x16048 targets 0x14c80 and is always taken.
  The `beq` branch at 0x16080 targets 0x14ca8 and is always taken.
  The `beq` branch at 0x160b8 targets 0x14cd0 and is always taken.
  The `beq` branch at 0x160f0 targets 0x14cfc and is always taken.
  The `beq` branch at 0x16104 targets 0x161cc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x16120 targets 0x162d8, is taken when v1(?) != a0(=0xfe), and falls through when v1(?) == a0(=0xfe).
  The `bne` branch at 0x16130 targets 0x16140, is taken when s6(=[-0x3c60]:2) != a1(?), and falls through when s6(=[-0x3c60]:2) == a1(?).
  The `bne` branch at 0x1613c targets 0x161e4, is taken when a4(?) != a3(?), and falls through when a4(?) == a3(?).
  The `beq` branch at 0x16148 targets 0x161e8 and is always taken.
  The `beq` branch at 0x161c4 targets 0x14270 and is always taken.
  The `beq` branch at 0x16260 targets 0x16290, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1626c targets 0x1628c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1629c targets 0x14dbc, is taken when s1(?) >= 0x1 (unsigned), and falls through when s1(?) < 0x1 (unsigned).
  The `beq` branch at 0x162a4 targets 0x14274 and is always taken.
  The `beq` branch at 0x162ac targets 0x15d94 and is always taken.
  The `beq` branch at 0x162b4 targets 0x15da8 and is always taken.
  The `beq` branch at 0x162bc targets 0x15dbc and is always taken.
  The `beq` branch at 0x162c4 targets 0x15dd0 and is always taken.
  The `beq` branch at 0x162d0 targets 0x15de4 and is always taken.
  The `beq` branch at 0x162e0 targets 0x161e4 and is always taken.
  The return at 0x14364 has v0 = one of 0x0, 0x1.
- `tlb_to_phys` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x162e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x162e8-0x16378 (144 bytes).
  It occupies 144 bytes.
  The `jal` at 0x16320 calls tlbgetpid with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x16330 calls tlb_probe with a0=?, a1=a0 at entry (arg0), a2=sp-32, a3=?.
  The `bne` branch at 0x16308 targets 0x16320, is taken when a0 < at(=0xc000000000000000) (unsigned), and falls through when a0 >= at(=0xc000000000000000) (unsigned).
  The `beq` branch at 0x16310 targets 0x16320, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x16318 targets 0x16330 and is always taken.
  The `beq` branch at 0x16348 targets 0x16370, is taken when v0(=ret(tlb_probe)) == a2(=-0x1), and falls through when v0(=ret(tlb_probe)) != a2(=-0x1).
  The `beq` branch at 0x16370 targets 0x16364 and is always taken.
  The return at 0x16368 has v0 = one of ?, -0x1.
- `_dummy_proc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16380 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16380-0x16388 (8 bytes).
  It occupies 8 bytes.
  The return at 0x16380 has v0 = ?.
- `first_address` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16380 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16380-0x16390 (16 bytes).
  It occupies 16 bytes.
  The return at 0x16380 has v0 = ?.
  The instructions from 0x16388 to 0x1638c are not reached by any path from the entry, and their branches are not listed.
- `fpunit_fpload_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16390 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16390-0x166bc (812 bytes).
  It occupies 812 bytes.
  The `ld` at 0x163b0 loads 8 bytes from (sym(.rodata)+22080 + (a0 << 0x3)) +0x0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x163b4).
  The instructions from 0x163bc to 0x166b8 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x163b4 uses a jump table whose successors are unresolved.
- `renorm_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x166bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x166bc-0x167d4 (280 bytes).
  It occupies 280 bytes.
  The `ld` at 0x166bc loads 8 bytes from a0 (arg0 at entry) +0x0.
  7 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x0, including `sd` at 0x1671c, `sd` at 0x16734, `sd` at 0x16750.
  The `lb` at 0x167b8 loads 1 byte from ?.
  The `beq` branch at 0x166d4 targets 0x167cc, is taken when (a3(=[a0]:8) & v1(=0x1fffffffffffff)) == 0, and falls through when (a3(=[a0]:8) & v1(=0x1fffffffffffff)) != 0.
  The `beq` branch at 0x166dc targets 0x166f0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x16704 targets 0x1675c, is taken when (a5(=0xfff0000000000) & a3(=[a0]:8)) != 0, and falls through when (a5(=0xfff0000000000) & a3(=[a0]:8)) == 0.
  The `bne` branch at 0x16720 targets 0x16754, is taken when (a5(=0xfff0000000000) & a3(?)) != 0, and falls through when (a5(=0xfff0000000000) & a3(?)) == 0.
  The `bne` branch at 0x16738 targets 0x16754, is taken when (a5(=0xfff0000000000) & a3(?)) != 0, and falls through when (a5(=0xfff0000000000) & a3(?)) == 0.
  The `beq` branch at 0x1674c targets 0x16710, is taken when (a5(=0xfff0000000000) & a3(?)) == 0, and falls through when (a5(=0xfff0000000000) & a3(?)) != 0.
  The `beq` branch at 0x16754 targets 0x16760 and is always taken.
  The `bne` branch at 0x16760 targets 0x167ac, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x16778 targets 0x167ac, is taken when (v0(=0xf000000000000) & a3(?)) != 0, and falls through when (v0(=0xf000000000000) & a3(?)) == 0.
  The `bne` branch at 0x16790 targets 0x167ac, is taken when (v0(=0xf000000000000) & a3(?)) != 0, and falls through when (v0(=0xf000000000000) & a3(?)) == 0.
  The `beq` branch at 0x167a4 targets 0x16768, is taken when (v0(=0xf000000000000) & a3(?)) == 0, and falls through when (v0(=0xf000000000000) & a3(?)) != 0.
  The return at 0x166e8 has v0 = 0x0.
  The return at 0x167c4 has v0 = ?.
  The return at 0x167cc has v0 = 0x0.
- `VEC_dbe` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x167e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x167e0-0x16838 (88 bytes).
  It occupies 88 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff50000, including `ld` at 0x167e4, `ld` at 0x1681c.
  The `ld` at 0x16800 loads 8 bytes from ([0xffffffffaff50000]:8 << 0x3) -0x500f0000.
  The `sd` at 0x16814 stores 8 bytes to ([0xffffffffaff50000]:8 << 0x3) -0x500f0000.
  The `ld` at 0x16824 loads 8 bytes from abs 0xffffffffb8000000.
  The `lh` at 0x1682c loads 2 bytes from abs 0xffffffffffffc3a0.
  The `sd` at 0x16834 stores 8 bytes to a0 (arg0 at entry) +0x140.
  Calls VEC_trap via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x16830).
- `renorm_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16838 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16838-0x16904 (204 bytes).
  It occupies 204 bytes.
  The `ld` at 0x16838 loads 8 bytes from a0 (arg0 at entry) +0x0.
  5 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x0, including `sd` at 0x16880, `sd` at 0x16898, `sd` at 0x168b4.
  The `lb` at 0x168d8 loads 1 byte from ?.
  The `beq` branch at 0x16848 targets 0x168fc, is taken when (a3(=[a0]:8) & at(=0xffffff)) == 0, and falls through when (a3(=[a0]:8) & at(=0xffffff)) != 0.
  The `bgez` branch at 0x16850 targets 0x16864, is taken when a4(=([a0]:8 << 0x28)) >= 0 (signed), and falls through when a4(=([a0]:8 << 0x28)) < 0 (signed).
  The `bne` branch at 0x16868 targets 0x168c0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x16884 targets 0x168b8, is taken when (v0(=0xff0000) & a3(?)) != 0, and falls through when (v0(=0xff0000) & a3(?)) == 0.
  The `bne` branch at 0x1689c targets 0x168b8, is taken when (v0(=0xff0000) & a3(?)) != 0, and falls through when (v0(=0xff0000) & a3(?)) == 0.
  The `beq` branch at 0x168b0 targets 0x16874, is taken when (v0(=0xff0000) & a3(?)) == 0, and falls through when (v0(=0xff0000) & a3(?)) != 0.
  The `beq` branch at 0x168b8 targets 0x168c4 and is always taken.
  The `beq` branch at 0x168c4 targets 0x168ec, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x168f4 targets 0x168cc and is always taken.
  The return at 0x1685c has v0 = 0x0.
  The return at 0x168e4 has v0 = ?.
  The return at 0x168fc has v0 = 0x0.
- `_get_count` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16910 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16910-0x1691c (12 bytes).
  It occupies 12 bytes.
  The return at 0x16914 has v0 = ?.
- `get_r4k_counter` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16910 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16910-0x1691c (12 bytes).
  It occupies 12 bytes.
  The return at 0x16914 has v0 = ?.
- `_get_compare` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1691c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1691c-0x16928 (12 bytes).
  It occupies 12 bytes.
  The return at 0x16920 has v0 = ?.
- `_set_count` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16928 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16928-0x16934 (12 bytes).
  It occupies 12 bytes.
  The return at 0x1692c has v0 = ?.
- `_add_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16934 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16934-0x169a8 (116 bytes).
  It occupies 116 bytes.
  The `jal` at 0x16968 calls breakout_and_test2_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-80, a3=sp-76, a4=sp-72, a5=sp-16, a6=sp-64, a7=sp-60.
  The `jal` at 0x16998 calls add with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x16970 targets 0x16984, is taken when v0(=ret(breakout_and_test2_sd)) == 0, and falls through when v0(=ret(breakout_and_test2_sd)) != 0.
  The `beq` branch at 0x169a0 targets 0x1697c and is always taken.
  The return at 0x1697c has v0 = one of ret(breakout_and_test2_sd), ret(add).
- `fpunit_fpload_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x169b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x169b0-0x16e0c (1116 bytes).
  It occupies 1116 bytes.
  The `ld` at 0x169d8 loads 8 bytes from table(sym(.rodata)+22592) +0x0.
  The `ld` at 0x16a00 loads 8 bytes from (sym(.rodata)+22848 + (a0 << 0x3)) +0x0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x16a04).
  The `bne` branch at 0x169b0 targets 0x169e4, is taken when a1 != 0, and falls through when a1 == 0.
  The instructions from 0x16a0c to 0x16e08 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x169dc uses a jump table whose successors are unresolved.
  The indirect jump at 0x16a04 uses a jump table whose successors are unresolved.
- `_sub_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16e0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16e0c-0x16e84 (120 bytes).
  It occupies 120 bytes.
  The `jal` at 0x16e40 calls breakout_and_test2_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-80, a3=sp-76, a4=sp-72, a5=sp-16, a6=sp-64, a7=sp-60.
  The `jal` at 0x16e74 calls add with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x16e48 targets 0x16e5c, is taken when v0(=ret(breakout_and_test2_sd)) == 0, and falls through when v0(=ret(breakout_and_test2_sd)) != 0.
  The `beq` branch at 0x16e7c targets 0x16e54 and is always taken.
  The return at 0x16e54 has v0 = one of ret(breakout_and_test2_sd), ret(add).
- `_mul_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16e84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16e84-0x17258 (980 bytes).
  It occupies 980 bytes.
  The `lw` at 0x16edc loads 4 bytes from ((a0 << 0x2) + sym(EXP_INF)) +0x0.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x16f08, `ld` at 0x16f20, `ld` at 0x16fa8.
  4 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x16f10, `lw` at 0x16f24, `lw` at 0x16fac.
  2 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x16f1c, `sw` at 0x16fb8.
  4 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0, including `lw` at 0x16f58, `lw` at 0x170dc, `lw` at 0x17110.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0, including `lw` at 0x17010, `lw` at 0x17040.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(IMP_1BIT)) +0x0, including `ld` at 0x17018, `ld` at 0x17034.
  The `ld` at 0x170b8 loads 8 bytes from ((a0 << 0x3) + sym(round)) +0x0.
  2 such `ld` accesses load 8 bytes from (sym(QUIETNAN) + (a0 << 0x3)) +0x0, including `ld` at 0x171b4, `ld` at 0x17244.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(renorm)) +0x0, including `ld` at 0x171d0, `ld` at 0x17208.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_MIN)) +0x0, including `lw` at 0x171e8, `lw` at 0x17220.
  The `jal` at 0x16ec0 calls breakout_and_test2_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-112, a3=sp-108, a4=sp-104, a5=sp-16, a6=sp-96, a7=sp-92.
  The `jal` at 0x16f34 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=([[-0x3fe8]:8+1340] | 0x10040), a4=[-0x3fe8]:8, a5=0x10040.
  The `jal` at 0x16f3c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x16f68 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x16f70 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x16fd0 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=sym(SIGN_SHIFT), a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8.
  The `jal` at 0x16fd8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1706c calls mul64 with a0=?, a1=?, a2=sp-80, a3=?.
  The `jal` at 0x17078 calls renorm_d with a0=sp-72, a1=?, a2=?, a3=?.
  The `jalr` at 0x170c0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a6=[((a0 << 0x3) + sym(round))]:8.
  The `jal` at 0x170ec calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x170f4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17120 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x17128 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17178 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=[((a0 << 0x2) + sym(SIGN_SHIFT))], a3=?.
  The `jal` at 0x17180 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x171b0 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=([[-0x3fe8]:8+1340] | 0x10040), a4=[-0x3fe8]:8, a5=0x10040.
  The `jal` at 0x171b8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x171d4 calls (unknown callee) with a0=sp-104, a1=?, a2=?, a3=[((a0 << 0x3) + sym(renorm))]:8.
  The `jalr` at 0x1720c calls (unknown callee) with a0=sp-88, a1=?, a2=sym(EXP_BIAS), a3=?, a7=[((a0 << 0x3) + sym(renorm))]:8.
  The `jal` at 0x17240 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=sym(SIGN_SHIFT), a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8.
  The `jal` at 0x17248 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x16ec8 targets 0x16f78, is taken when v0(=ret(breakout_and_test2_sd)) != 0, and falls through when v0(=ret(breakout_and_test2_sd)) == 0.
  The `bne` branch at 0x16ee4 targets 0x16f8c, is taken when a0(=[((a0 << 0x2) + sym(EXP_INF))]) != a6(?), and falls through when a0(=[((a0 << 0x2) + sym(EXP_INF))]) == a6(?).
  The `beq` branch at 0x16eec targets 0x17104, is taken when a0(=[((a0 << 0x2) + sym(EXP_INF))]) == a3(?), and falls through when a0(=[((a0 << 0x2) + sym(EXP_INF))]) != a3(?).
  The `bne` branch at 0x16ef4 targets 0x16f50, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x16f00 targets 0x16f50, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x16f2c targets 0x171a4, is taken when (a2(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a2(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x16f44 targets 0x16f7c and is always taken.
  The `bne` branch at 0x16f8c targets 0x16fe8, is taken when a0(=[((a0 << 0x2) + sym(EXP_INF))]) != a3(?), and falls through when a0(=[((a0 << 0x2) + sym(EXP_INF))]) == a3(?).
  The `bne` branch at 0x16f94 targets 0x170d4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x16fa0 targets 0x170d0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x16fc8 targets 0x17234, is taken when (a5(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a5(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x16fe0 targets 0x16f7c and is always taken.
  The `beq` branch at 0x16fe8 targets 0x17138, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x16ff0 targets 0x17148, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x16ff8 targets 0x171c8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x17028 targets 0x17200, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x17054 targets 0x17190, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `bne` branch at 0x170a4 targets 0x170b0, is taken when v0(=ret(renorm_d)) != t9(=0xb), and falls through when v0(=ret(renorm_d)) == t9(=0xb).
  The `beq` branch at 0x170c8 targets 0x16f78 and is always taken.
  The `beq` branch at 0x170fc targets 0x16f7c and is always taken.
  The `beq` branch at 0x17130 targets 0x16f7c and is always taken.
  The `bne` branch at 0x17138 targets 0x16ff0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x17140 targets 0x17158 and is always taken.
  The `bne` branch at 0x1714c targets 0x16ff8, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x17188 targets 0x16f7c and is always taken.
  The `beq` branch at 0x1719c targets 0x1705c and is always taken.
  The `beq` branch at 0x171c0 targets 0x16f7c and is always taken.
  The `bne` branch at 0x171f8 targets 0x17030, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1722c targets 0x17054 and is always taken.
  The `beq` branch at 0x17250 targets 0x16f7c and is always taken.
  The return at 0x16f84 has v0 = one of ret(store_fpcsr), ?.
  The instructions from 0x16f4c to 0x16f4c are not reached by any path from the entry, and their branches are not listed.
- `_abs_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17258 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17258-0x172f4 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x17278 loads 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0.
  The `ld` at 0x17288 loads 8 bytes from ((a0 << 0x3) + sym(FRAC_MASK)) +0x0.
  The `lw` at 0x17290 loads 4 bytes from ((a0 << 0x2) + sym(EXP_MASK)) +0x0.
  The `ld` at 0x172cc loads 8 bytes from ?.
  The `jal` at 0x172a8 calls screen_nan_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a5=a1 at entry (arg1), a6=sym(EXP_MASK).
  The `jal` at 0x172dc calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=sym(SIGNBIT).
  The `jal` at 0x172e4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x172b0 targets 0x172c4, is taken when v0(=ret(screen_nan_sd)) == 0, and falls through when v0(=ret(screen_nan_sd)) != 0.
  The `beq` branch at 0x172ec targets 0x172bc and is always taken.
  The return at 0x172bc has v0 = one of ret(screen_nan_sd), ret(store_fpcsr).
- `_neg_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x172f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x172f4-0x1738c (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x17314 loads 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0.
  The `ld` at 0x17324 loads 8 bytes from ((a0 << 0x3) + sym(FRAC_MASK)) +0x0.
  The `lw` at 0x1732c loads 4 bytes from ((a0 << 0x2) + sym(EXP_MASK)) +0x0.
  The `ld` at 0x1736c loads 8 bytes from ?.
  The `jal` at 0x17344 calls screen_nan_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a5=a1 at entry (arg1), a6=sym(EXP_MASK).
  The `jal` at 0x17374 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x1737c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1734c targets 0x17360, is taken when v0(=ret(screen_nan_sd)) == 0, and falls through when v0(=ret(screen_nan_sd)) != 0.
  The `beq` branch at 0x17384 targets 0x17358 and is always taken.
  The return at 0x17358 has v0 = one of ret(screen_nan_sd), ret(store_fpcsr).
- `_div_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1738c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1738c-0x17838 (1196 bytes).
  It occupies 1196 bytes.
  The `lw` at 0x173e4 loads 4 bytes from ((a0 << 0x2) + sym(EXP_INF)) +0x0.
  6 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x173fc, `ld` at 0x17414, `ld` at 0x1765c.
  6 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x17404, `lw` at 0x17418, `lw` at 0x17660.
  3 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x17410, `sw` at 0x17668, `sw` at 0x17788.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x17468, `ld` at 0x174ec, `ld` at 0x17620.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0, including `lw` at 0x174b8, `lw` at 0x174e4.
  The `ld` at 0x174c0 loads 8 bytes from ((a0 << 0x3) + sym(IMP_1BIT)) +0x0.
  The `lw` at 0x17524 loads 4 bytes from ((a0 << 0x2) + sym(MANTWIDTH)) +0x0.
  The `ld` at 0x175e4 loads 8 bytes from ((a0 << 0x3) + sym(renorm)) +0x0.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_MIN)) +0x0, including `lw` at 0x175fc, `lw` at 0x17638.
  2 such `ld` accesses load 8 bytes from (sym(QUIETNAN) + (a0 << 0x3)) +0x0, including `ld` at 0x176a8, `ld` at 0x17814.
  4 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0, including `lw` at 0x176c4, `lw` at 0x17708, `lw` at 0x1774c.
  The `ld` at 0x177dc loads 8 bytes from (sym(INFINITY) + (a0 << 0x3)) +0x0.
  The `jal` at 0x173c8 calls breakout_and_test2_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76.
  The `jal` at 0x17428 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=([[-0x3fe8]:8+1340] | 0x10040), a4=[-0x3fe8]:8, a5=0x10040.
  The `jal` at 0x17430 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x17470 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a6=sym(round), a7=[((a0 << 0x2) + sym(MANTWIDTH))].
  The `jalr` at 0x175e8 calls (unknown callee) with a0=sp-88, a1=?, a2=?, a3=[((a0 << 0x3) + sym(renorm))]:8, a4=sym(renorm).
  The `jalr` at 0x17624 calls (unknown callee) with a0=sp-72, a1=sym(EXP_BIAS), a2=?, a3=?, a4=sym(renorm).
  The `jal` at 0x17680 calls post_sig with a0=0x8, a1=?, a2=?, a3=([[-0x3fe8]:8+1340] | 0x8020), a4=[-0x3fe8]:8.
  The `jal` at 0x17688 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x176a4 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=([[-0x3fe8]:8+1340] | 0x10040), a4=[-0x3fe8]:8, a5=0x10040.
  The `jal` at 0x176ac calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x176d4 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x176dc calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17710 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=[((a0 << 0x2) + sym(SIGN_SHIFT))], a3=?.
  The `jal` at 0x17718 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17754 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=[((a0 << 0x2) + sym(SIGN_SHIFT))], a3=?, a4=sym(renorm).
  The `jal` at 0x1775c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x177a0 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=?, a5=([[-0x3fe8]:8+1340] | 0x10040), a6=[-0x3fe8]:8, a7=0x10040.
  The `jal` at 0x177a8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x177ec calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))], a4=(a0 << 0x3).
  The `jal` at 0x177f4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17810 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?, a5=([[-0x3fe8]:8+1340] | 0x10040), a6=[-0x3fe8]:8, a7=0x10040.
  The `jal` at 0x17818 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x173d0 targets 0x17478, is taken when v0(=ret(breakout_and_test2_sd)) != 0, and falls through when v0(=ret(breakout_and_test2_sd)) == 0.
  The `bne` branch at 0x173ec targets 0x1748c, is taken when a1(=[((a0 << 0x2) + sym(EXP_INF))]) != a2(?), and falls through when a1(=[((a0 << 0x2) + sym(EXP_INF))]) == a2(?).
  The `bne` branch at 0x173f4 targets 0x176bc, is taken when a1(=[((a0 << 0x2) + sym(EXP_INF))]) != a0(?), and falls through when a1(=[((a0 << 0x2) + sym(EXP_INF))]) == a0(?).
  The `beq` branch at 0x17420 targets 0x17698, is taken when (a2(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a2(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x17438 targets 0x1747c and is always taken.
  The `beq` branch at 0x17440 targets 0x175b4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x17450 targets 0x175bc, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x1748c targets 0x176ec, is taken when a1(=[((a0 << 0x2) + sym(EXP_INF))]) == a0(?), and falls through when a1(=[((a0 << 0x2) + sym(EXP_INF))]) != a0(?).
  The `beq` branch at 0x17494 targets 0x1764c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1749c targets 0x175d0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x174d0 targets 0x17614, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x17508 targets 0x1751c, is taken when a5(?) >= a6(?) (unsigned), and falls through when a5(?) < a6(?) (unsigned).
  The `bltz` branch at 0x17528 targets 0x17728, is taken when a7(=[((a0 << 0x2) + sym(MANTWIDTH))]) < 0 (signed), and falls through when a7(=[((a0 << 0x2) + sym(MANTWIDTH))]) >= 0 (signed).
  The `beq` branch at 0x17530 targets 0x17828 and is always taken.
  The `bne` branch at 0x17544 targets 0x17594, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x17554 targets 0x17568, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x17570 targets 0x17594, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x1757c targets 0x17538, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x1758c targets 0x17538 and is always taken.
  The `bne` branch at 0x17598 targets 0x17440, is taken when a5(?) < a6(?) (unsigned), and falls through when a5(?) >= a6(?) (unsigned).
  The `bne` branch at 0x175ac targets 0x17448, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x175b4 targets 0x1745c, is taken when s0(=a0) != 0, and falls through when s0(=a0) == 0.
  The `beq` branch at 0x175c8 targets 0x17458 and is always taken.
  The `beq` branch at 0x175d0 targets 0x17730, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x1760c targets 0x174d8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x17644 targets 0x17500 and is always taken.
  The `bne` branch at 0x1764c targets 0x1749c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x17654 targets 0x1776c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x17678 targets 0x177b8, is taken when (a2(=[[-0x3fe8]:8+1340]) & 0x400) == 0, and falls through when (a2(=[[-0x3fe8]:8+1340]) & 0x400) != 0.
  The `beq` branch at 0x17690 targets 0x1747c and is always taken.
  The `beq` branch at 0x176b4 targets 0x1747c and is always taken.
  The `beq` branch at 0x176e4 targets 0x1747c and is always taken.
  The `beq` branch at 0x17720 targets 0x1747c and is always taken.
  The `beq` branch at 0x17728 targets 0x17594 and is always taken.
  The `beq` branch at 0x17764 targets 0x1747c and is always taken.
  The `bne` branch at 0x1776c targets 0x1765c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x17798 targets 0x17804, is taken when (a4(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a4(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x177b0 targets 0x1747c and is always taken.
  The `beq` branch at 0x177fc targets 0x1747c and is always taken.
  The `beq` branch at 0x17820 targets 0x1747c and is always taken.
  The `beq` branch at 0x17830 targets 0x17550 and is always taken.
  The return at 0x17484 has v0 = one of ret(store_fpcsr), ?.
- `ecc_cacheOp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17838 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17838-0x1786c (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x17848 calls cacheOP with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x17864 has v0 = ?.
- `ecc_cacheop_get` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1786c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1786c-0x17890 (36 bytes).
  It occupies 36 bytes.
  The `sd` at 0x1786c stores 8 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0x17870 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `jal` at 0x1787c calls cacheOP with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x17888 has v0 = ret(cacheOP).
- `ecc_display` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17890 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17890-0x17c48 (952 bytes).
  It occupies 952 bytes.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x17998, `ld` at 0x17a78, `ld` at 0x17b50.
  The `ld` at 0x17c44 loads 8 bytes from a4 (arg4 at entry) +0x0.
  The `jal` at 0x17970 calls cmn_err_tag with a0=0xb91, a1=a0 at entry (arg0), a2=sym(type_values), a3=a1 at entry (arg1), a5=sym(type_values), a6=a3 at entry (arg3).
  The `jal` at 0x17a50 calls cmn_err_tag with a0=0xb90, a1=a0 at entry (arg0), a2=sym(type_values), a3=a1 at entry (arg1), a5=sym(type_values), a6=a3 at entry (arg3).
  The `jal` at 0x17b34 calls cmn_err_tag with a0=0xb92, a1=a0 at entry (arg0), a2=sym(type_values), a3=a1 at entry (arg1), a5=sym(type_values), a6=a3 at entry (arg3).
  The `jal` at 0x17c14 calls cmn_err_tag with a0=0xb93, a1=a0 at entry (arg0), a2=sym(type_values), a3=a1 at entry (arg1), a5=sym(type_values), a6=a3 at entry (arg3).
  The `beq` branch at 0x178ec targets 0x179f0, is taken when (t2(=0xffffffffc0000000) & a2) == 0, and falls through when (t2(=0xffffffffc0000000) & a2) != 0.
  The `bne` branch at 0x17904 targets 0x17aa4, is taken when a6(?) != t1(=0x40000000), and falls through when a6(?) == t1(=0x40000000).
  The `beq` branch at 0x1793c targets 0x1798c and is always taken.
  The `beq` branch at 0x17988 targets 0x179c0, is taken when t9(?) >= 0x2 (signed), and falls through when t9(?) < 0x2 (signed).
  The `beq` branch at 0x179a4 targets 0x17978, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x179ac targets 0x17944, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x179b8 targets 0x17944 and is always taken.
  The `beq` branch at 0x17a1c targets 0x17a6c and is always taken.
  The `beq` branch at 0x17a68 targets 0x17a9c, is taken when t9(?) >= 0x2 (signed), and falls through when t9(?) < 0x2 (signed).
  The `beq` branch at 0x17a80 targets 0x17a58, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x17a88 targets 0x17a24, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x17a94 targets 0x17a24 and is always taken.
  The `beq` branch at 0x17a9c targets 0x179c4 and is always taken.
  The `bne` branch at 0x17ab8 targets 0x17b80, is taken when a6(?) != t8(=0xffffffff80000000), and falls through when a6(?) == t8(=0xffffffff80000000).
  The `beq` branch at 0x17afc targets 0x17c38 and is always taken.
  The `beq` branch at 0x17b48 targets 0x17b78, is taken when s4(?) >= 0x2 (signed), and falls through when s4(?) < 0x2 (signed).
  The `beq` branch at 0x17b5c targets 0x17b3c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x17b64 targets 0x17b04, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x17b70 targets 0x17b04 and is always taken.
  The `beq` branch at 0x17b78 targets 0x179c4 and is always taken.
  The `bne` branch at 0x17b80 targets 0x179c0, is taken when t2(=0xffffffffc0000000) != a6(?), and falls through when t2(=0xffffffffc0000000) == a6(?).
  The `beq` branch at 0x17be0 targets 0x17c1c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x17c28 targets 0x17bdc, is taken when s4(?) < 0x2 (signed), and falls through when s4(?) >= 0x2 (signed).
  The `beq` branch at 0x17c30 targets 0x179c4 and is always taken.
  The `beq` branch at 0x17c40 targets 0x17b54 and is always taken.
  The return at 0x179e8 has v0 = ?.
- `ecc_cleanRegion` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17c48 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17c48-0x17c90 (72 bytes).
  It occupies 72 bytes.
  The `jal` at 0x17c68 calls ecc_cacheOp [0x17838] with a0=0x17, a1=?, a2=?, a3=?.
  The `blez` branch at 0x17c5c targets 0x17c7c, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bgtz` branch at 0x17c74 targets 0x17c64, is taken when s1(?) > 0 (signed), and falls through when s1(?) <= 0 (signed).
  The return at 0x17c88 has v0 = one of ?, ret(ecc_cacheOp).
- `ecc_init` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17c90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17c90-0x17d5c (204 bytes).
  It occupies 204 bytes.
  The `lh` at 0x17cac loads 2 bytes from abs 0xffffffffffffc3a0.
  The `sd` at 0x17d20 stores 8 bytes to table(sym(cacheErr_frames)) +0x0.
  The `sd` at 0x17d2c stores 8 bytes to ?.
  The `jal` at 0x17ca8 calls kmem_zalloc with a0=0x1000, a1=0x900, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x17cbc calls ecc_cleanRegion [0x17c48] with a0=ret(kmem_zalloc), a1=0x1000, a2=?, a3=?.
  The `jal` at 0x17d4c calls cmn_err with a0=0x0, a1=sym(.rodata)+11680, a2=sym(.rodata)+23360, a3=?.
  The `beq` branch at 0x17cb0 targets 0x17d30, is taken when v0(=ret(kmem_zalloc)) == 0, and falls through when v0(=ret(kmem_zalloc)) != 0.
  The `beq` branch at 0x17d54 targets 0x17cbc and is always taken.
  The return at 0x17d28 has v0 = ?.
- `ecc_force_cache_line_invalid` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17d5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17d5c-0x17db0 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x17d88 calls cacheOP with a0=sp-48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x17d98 calls cacheOP with a0=sp-48, a1=?, a2=?, a3=?.
  The return at 0x17da8 has v0 = ret(cacheOP).
- `cer_to_hex` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17db0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17db0-0x17e54 (164 bytes).
  It occupies 164 bytes.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x17dec, `lbu` at 0x17e08, `lbu` at 0x17e28.
  6 such `sb` accesses store 1 byte to ?, including `sb` at 0x17df0, `sb` at 0x17e10, `sb` at 0x17e14.
  The `beq` branch at 0x17df4 targets 0x17e14, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x17e0c targets 0x17ddc, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x17e30 targets 0x17e4c, is taken when a4(=sp-16) >= a3(?) (unsigned), and falls through when a4(=sp-16) < a3(?) (unsigned).
  The `bne` branch at 0x17e44 targets 0x17e20, is taken when a4(=sp-16) < a3(?) (unsigned), and falls through when a4(=sp-16) >= a3(?) (unsigned).
  The return at 0x17e4c has v0 = ?.
- `ecc_handler` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17e54 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17e54-0x18544 (1776 bytes).
  It occupies 1776 bytes.
  The `lwu` at 0x17e6c loads 4 bytes from a1 (arg1 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x238, including `lw` at 0x17ec0, `lw` at 0x17f14.
  The `lw` at 0x17ec4 loads 4 bytes from a1 (arg1 at entry) +0x23c.
  The `sw` at 0x17f08 stores 4 bytes to ?.
  The `ld` at 0x17f0c loads 8 bytes from a1 (arg1 at entry) +0x0.
  8 such `sd` accesses store 8 bytes to ?, including `sd` at 0x17f10, `sd` at 0x17fb0, `sd` at 0x1802c.
  The `sw` at 0x17f24 stores 4 bytes to a1 (arg1 at entry) +0x238.
  The `sd` at 0x17f38 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `sd` at 0x17f40 stores 8 bytes to a1 (arg1 at entry) +0x10.
  The `ld` at 0x18028 loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0x18030 loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `sb` at 0x18044 stores 1 byte to abs 0xffffffffffffc6e0.
  The `lbu` at 0x18048 loads 1 byte from a1 (arg1 at entry) +0x26.
  The `sb` at 0x18058 stores 1 byte to a1 (arg1 at entry) +0x26.
  The `ld` at 0x18064 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x18070 stores 8 bytes to a0 (arg0 at entry) +0x3b8.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x18080, `ld` at 0x18094.
  The `lw` at 0x1810c loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `sw` at 0x18128 stores 4 bytes to a1 (arg1 at entry) +0x28.
  The `lw` at 0x18130 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `sw` at 0x18144 stores 4 bytes to a1 (arg1 at entry) +0x2c.
  The `lw` at 0x18278 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `sw` at 0x18294 stores 4 bytes to a1 (arg1 at entry) +0x30.
  The `lw` at 0x182e0 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `sw` at 0x182f0 stores 4 bytes to a1 (arg1 at entry) +0x34.
  The `ld` at 0x182f8 loads 8 bytes from abs 0xffffffffaff10040.
  The `ld` at 0x18308 loads 8 bytes from abs 0xffffffffaff00098.
  The `jal` at 0x17eb0 calls cer_to_hex with a0=sym(.rodata)+11680, a1=([a1+24] << 0x0), a2=0x0, a3=a3 at entry (arg3), a5=0x0.
  The `jal` at 0x17f94 calls ecc_cacheOp [0x17838] with a0=0x4, a1=?, a2=?, a3=?.
  The `jal` at 0x17fe0 calls ecc_cacheOp [0x17838] with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x17ff0 calls ecc_cacheOp [0x17838] with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x18000 calls ecc_force_cache_line_invalid with a0=?, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x18010 calls ecc_force_cache_line_invalid with a0=?, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x180b0 calls ecc_cacheOp [0x17838] with a0=0x13, a1=?, a2=?, a3=?.
  The `jal` at 0x1818c calls ecc_cacheOp [0x17838] with a0=0x1, a1=?, a2=0x3, a3=?.
  The `jal` at 0x181bc calls ecc_cacheOp [0x17838] with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x183d8 calls maddr_to_dimm with a0=?, a1=0xc0000000, a2=0x0, a3=0x40000000, a4=0x80000000, a5=0x0.
  The `jal` at 0x1841c calls sprintf with a0=sym(cacheErr_frames), a1=sym(.rodata)+11680, a2=?, a3=ret(maddr_to_dimm).
  The `jal` at 0x18480 calls ecc_cacheOp [0x17838] with a0=0x7, a1=?, a2=?, a3=?.
  The `jal` at 0x184a4 calls ecc_cacheOp [0x17838] with a0=0x3, a1=?, a2=0x3, a3=?.
  The `jal` at 0x184b4 calls ecc_force_cache_line_invalid with a0=?, a1=?, a2=0x3, a3=?.
  The `bgez` branch at 0x17e8c targets 0x17ec0, is taken when at(=([a1+24] << 0x22)) >= 0 (signed), and falls through when at(=([a1+24] << 0x22)) < 0 (signed).
  The `beq` branch at 0x17eb8 targets 0x180c8 and is always taken.
  The `beq` branch at 0x17ed4 targets 0x17f28, is taken when t8(=[a1+572]) == t9(?), and falls through when t8(=[a1+572]) != t9(?).
  The `bne` branch at 0x17ee0 targets 0x17f00, is taken when v0(=[a1+568]) < 0x11 (signed), and falls through when v0(=[a1+568]) >= 0x11 (signed).
  The `beq` branch at 0x17f20 targets 0x17f2c and is always taken.
  The `beq` branch at 0x17f3c targets 0x180f8, is taken when (a1(=0xc0000000) & s0(=[a1+24])) == 0, and falls through when (a1(=0xc0000000) & s0(=[a1+24])) != 0.
  The `beq` branch at 0x17f48 targets 0x1812c, is taken when v0(?) == a3(=0x40000000), and falls through when v0(?) != a3(=0x40000000).
  The `beq` branch at 0x17f54 targets 0x18270, is taken when v0(?) == a4(=0x80000000), and falls through when v0(?) != a4(=0x80000000).
  The `beq` branch at 0x17f5c targets 0x182e0, is taken when a1(=0xc0000000) == v0(?), and falls through when a1(=0xc0000000) != v0(?).
  The `bgez` branch at 0x17f84 targets 0x18020, is taken when s8(?) >= 0 (signed), and falls through when s8(?) < 0 (signed).
  The `beq` branch at 0x17f8c targets 0x1803c and is always taken.
  The `beq` branch at 0x17fac targets 0x17fdc, is taken when s2(?) >= 0x2 (unsigned), and falls through when s2(?) < 0x2 (unsigned).
  The `bne` branch at 0x17fc0 targets 0x17f94, is taken when (s0(=[a1+24]) & t9(=one of 0x5500000, 0xaa00000)) != 0, and falls through when (s0(=[a1+24]) & t9(=one of 0x5500000, 0xaa00000)) == 0.
  The `bne` branch at 0x17fd4 targets 0x17fb4, is taken when s2(?) < 0x2 (unsigned), and falls through when s2(?) >= 0x2 (unsigned).
  The `bltz` branch at 0x1801c targets 0x18038, is taken when s8(?) < 0 (signed), and falls through when s8(?) >= 0 (signed).
  The `beq` branch at 0x18040 targets 0x180a4, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x18050 targets 0x180a4, is taken when v0(=0x2) == a0(=[a1+38]:1), and falls through when v0(=0x2) != a0(=[a1+38]:1).
  The `bgtz` branch at 0x1809c targets 0x18074, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `bne` branch at 0x180c0 targets 0x180ac, is taken when s0(?) < 0x1000 (unsigned), and falls through when s0(?) >= 0x1000 (unsigned).
  The `beq` branch at 0x18124 targets 0x17fb4 and is always taken.
  The `beq` branch at 0x18140 targets 0x18360, is taken when (s7(=0x5500000) & s0(=[a1+24])) == 0, and falls through when (s7(=0x5500000) & s0(=[a1+24])) != 0.
  The `beq` branch at 0x18180 targets 0x181a8 and is always taken.
  The `beq` branch at 0x181a0 targets 0x18240, is taken when s3(?) >= 0x2 (unsigned), and falls through when s3(?) < 0x2 (unsigned).
  The `beq` branch at 0x181b4 targets 0x18194, is taken when (s0(=[a1+24]) & v0(=one of 0x5500000, 0xaa00000)) == 0, and falls through when (s0(=[a1+24]) & v0(=one of 0x5500000, 0xaa00000)) != 0.
  The `beq` branch at 0x181d8 targets 0x181f0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x181e8 targets 0x182a0, is taken when a2(=0x3) == a0(?), and falls through when a2(=0x3) != a0(?).
  The `beq` branch at 0x181f0 targets 0x18200, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x181f8 targets 0x182c0, is taken when a1(=0x2) == a4(?), and falls through when a1(=0x2) != a4(?).
  The `beq` branch at 0x18200 targets 0x1818c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x18210 targets 0x18188, is taken when a2(=0x3) != a6(?), and falls through when a2(=0x3) == a6(?).
  The `bne` branch at 0x18218 targets 0x1818c, is taken when a1(=0x2) != a7(?), and falls through when a1(=0x2) == a7(?).
  The `beq` branch at 0x18238 targets 0x1825c and is always taken.
  The `beq` branch at 0x18268 targets 0x1801c and is always taken.
  The `beq` branch at 0x18298 targets 0x1801c and is always taken.
  The `beq` branch at 0x182b8 targets 0x1825c and is always taken.
  The `beq` branch at 0x182d8 targets 0x1825c and is always taken.
  The `beq` branch at 0x182ec targets 0x1839c, is taken when (s0(=[a1+24]) & t9(=0x12000000)) == 0, and falls through when (s0(=[a1+24]) & t9(=0x12000000)) != 0.
  The `beq` branch at 0x18300 targets 0x18430, is taken when (ra(=[0xffffffffaff10040]:8) & 0x2) == 0, and falls through when (ra(=[0xffffffffaff10040]:8) & 0x2) != 0.
  The `beq` branch at 0x18328 targets 0x183d8, is taken when at(?) == v0(?), and falls through when at(?) != v0(?).
  The `beq` branch at 0x1834c targets 0x183bc, is taken when a2(=one of 0x0, 0x1) == 0, and falls through when a2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x18358 targets 0x1801c and is always taken.
  The `bne` branch at 0x18364 targets 0x18148, is taken when (s5(=0xaa00000) & s0(=[a1+24])) != 0, and falls through when (s5(=0xaa00000) & s0(=[a1+24])) == 0.
  The `bgez` branch at 0x1836c targets 0x18510, is taken when t9(=([a1+24] << 0x23)) >= 0 (signed), and falls through when t9(=([a1+24] << 0x23)) < 0 (signed).
  The `beq` branch at 0x18394 targets 0x1801c and is always taken.
  The `beq` branch at 0x183c0 targets 0x18450, is taken when (s0(=[a1+24]) & t8(=0x3800000)) == 0, and falls through when (s0(=[a1+24]) & t8(=0x3800000)) != 0.
  The `beq` branch at 0x183d0 targets 0x1801c and is always taken.
  The `beq` branch at 0x18428 targets 0x18348 and is always taken.
  The `beq` branch at 0x18448 targets 0x1834c and is always taken.
  The `bgez` branch at 0x18450 targets 0x1852c, is taken when t8(=([a1+24] << 0x25)) >= 0 (signed), and falls through when t8(=([a1+24] << 0x25)) < 0 (signed).
  The `beq` branch at 0x18478 targets 0x184d0 and is always taken.
  The `beq` branch at 0x18490 targets 0x184bc, is taken when (a1(?) & 0x3) == 0, and falls through when (a1(?) & 0x3) != 0.
  The `beq` branch at 0x1849c targets 0x18508, is taken when a2(=0x3) == a1(?), and falls through when a2(=0x3) != a1(?).
  The `beq` branch at 0x184c8 targets 0x1801c, is taken when s5(?) >= 0x2 (unsigned), and falls through when s5(?) < 0x2 (unsigned).
  The `bne` branch at 0x184e4 targets 0x18480, is taken when (s0(=[a1+24]) & a4(=one of 0x4000000, 0x8000000)) != 0, and falls through when (s0(=[a1+24]) & a4(=one of 0x4000000, 0x8000000)) == 0.
  The `bne` branch at 0x184f8 targets 0x184d0, is taken when s5(?) < 0x2 (unsigned), and falls through when s5(?) >= 0x2 (unsigned).
  The `beq` branch at 0x18500 targets 0x1801c and is always taken.
  The `beq` branch at 0x18508 targets 0x1801c and is always taken.
  The `beq` branch at 0x18524 targets 0x18390 and is always taken.
  The `bltz` branch at 0x1852c targets 0x1845c, is taken when t8(=([a1+24] << 0x24)) < 0 (signed), and falls through when t8(=([a1+24] << 0x24)) >= 0 (signed).
  The `beq` branch at 0x1853c targets 0x1801c and is always taken.
  The return at 0x180f0 has v0 = one of sym(.rodata)+11680, ?.
- `ecc_panic` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18544 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18544-0x185b4 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x18548 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `ld` at 0x1854c loads 8 bytes from a2 (arg2 at entry) +0x0.
  The `jal` at 0x1856c calls ecc_display [0x17890] with a0=0x14, a1=a0 at entry (arg0), a2=[a2+24], a3=[a2]:8, a4=a2+8.
  The `jal` at 0x1859c calls cmn_err with a0=0x10, a1=sym(.rodata)+11680, a2=a0 at entry (arg0), a3=a1+952, a4=sym(.rodata)+23360.
  The return at 0x185ac has v0 = ret(cmn_err).
- `ecc_log` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x185b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x185b4-0x185bc (8 bytes).
  It occupies 8 bytes.
  The return at 0x185b4 has v0 = ?.
- `ecc_printPending` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x185bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x185bc-0x186ec (304 bytes).
  It occupies 304 bytes.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1862c, `ld` at 0x18670, `ld` at 0x18674.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x18638, `lw` at 0x1863c, `lw` at 0x18640.
  The `lwu` at 0x18684 loads 4 bytes from ?.
  The `ld` at 0x186e8 loads 8 bytes from sym(pdaindr) +0xa90.
  The `jalr` at 0x18650 calls (unknown callee) with a0=sym(.rodata)+11680, a1=?, a2=?, a3=?.
  The `jalr` at 0x18680 calls (unknown callee) with a0=sym(.rodata)+11680, a1=?, a2=?, a3=?.
  The `beq` branch at 0x18610 targets 0x186dc and is always taken.
  The `beq` branch at 0x18624 targets 0x186b8, is taken when s4(?) >= 0x80 (signed), and falls through when s4(?) < 0x80 (signed).
  The `beq` branch at 0x18630 targets 0x18618, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x18660 targets 0x18618, is taken when s1(?) == t0(?), and falls through when s1(?) != t0(?).
  The `bne` branch at 0x186a8 targets 0x1866c, is taken when s1(?) != a2(?), and falls through when s1(?) == a2(?).
  The `beq` branch at 0x186b0 targets 0x1861c and is always taken.
  The `beq` branch at 0x186e4 targets 0x18630 and is always taken.
  The return at 0x186d4 has v0 = ?.
- `ecc_compute_sctag_ecc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x186ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x186ec-0x1877c (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0x18730 loads 8 bytes from ?.
  The `jal` at 0x18738 calls ecc_bitcount with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x18748 targets 0x18754, is taken when (v0(=ret(ecc_bitcount)) & 0x1) == 0, and falls through when (v0(=ret(ecc_bitcount)) & 0x1) != 0.
  The `bne` branch at 0x18754 targets 0x1872c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The return at 0x18774 has v0 = ?.
- `scache_data_bit_error` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1877c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1877c-0x188a4 (296 bytes).
  It occupies 296 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x18800, `ld` at 0x18840, `ld` at 0x18854.
  The `beq` branch at 0x187b8 targets 0x18890 and is always taken.
  The `beq` branch at 0x187c0 targets 0x1886c, is taken when s2(?) == a4(?), and falls through when s2(?) != a4(?).
  The `beq` branch at 0x187dc targets 0x18874, is taken when v0(?) >= 0x88 (signed), and falls through when v0(?) < 0x88 (signed).
  The `beq` branch at 0x187f4 targets 0x18814 and is always taken.
  The `beq` branch at 0x1880c targets 0x187c0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x18830 targets 0x187fc, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x18838 targets 0x18854, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x1884c targets 0x1880c and is always taken.
  The `beq` branch at 0x1885c targets 0x1880c, is taken when (v1(?) & t9(?)) == 0, and falls through when (v1(?) & t9(?)) != 0.
  The `beq` branch at 0x18864 targets 0x1880c and is always taken.
  The `beq` branch at 0x1886c targets 0x1887c and is always taken.
  The `beq` branch at 0x1889c targets 0x187e8 and is always taken.
  The return at 0x18888 has v0 = one of ?, -0x1.
- `ecc_compute_scdata_ecc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x188a4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x188a4-0x18968 (196 bytes).
  It occupies 196 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x188f8, `ld` at 0x188fc.
  The `jal` at 0x1890c calls ecc_bitcount with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18930 calls ecc_bitcount with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1891c targets 0x18928, is taken when (v0(=ret(ecc_bitcount)) & 0x1) == 0, and falls through when (v0(=ret(ecc_bitcount)) & 0x1) != 0.
  The `bne` branch at 0x18928 targets 0x188e8, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x1894c targets 0x18958, is taken when (v0(=ret(ecc_bitcount)) & 0x1) == 0, and falls through when (v0(=ret(ecc_bitcount)) & 0x1) != 0.
  The return at 0x18960 has v0 = ?.
- `ecc_bitcount` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18968 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18968-0x18994 (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x18968 targets 0x18988, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0x18978 targets 0x18970, is taken when (a0(?) & at(?)) != 0, and falls through when (a0(?) & at(?)) == 0.
  The return at 0x18980 has v0 = ?.
  The return at 0x1898c has v0 = 0x0.
- `ecc_scache_bits_in_error` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18994 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18994-0x189e8 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x189ac calls ecc_bitcount with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x189a0 targets 0x189d8, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x189c0 targets 0x189e0, is taken when v0(=ret(ecc_bitcount)) == a1(=0x1), and falls through when v0(=ret(ecc_bitcount)) != a1(=0x1).
  The `beq` branch at 0x189c8 targets 0x189e0, is taken when v0(=ret(ecc_bitcount)) == a0(=0x3), and falls through when v0(=ret(ecc_bitcount)) != a0(=0x3).
  The `beq` branch at 0x189d0 targets 0x189e0, is taken when v0(=ret(ecc_bitcount)) == a3(=0x5), and falls through when v0(=ret(ecc_bitcount)) != a3(=0x5).
  The `beq` branch at 0x189e0 targets 0x189d8 and is always taken.
  The return at 0x189d8 has v0 = one of 0x0, 0x1, 0x2.
- `warn` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x189e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x189e8-0x18a34 (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0x18a20 calls icmn_err_tag with a0=0x0, a1=0x14, a2=a0 at entry (arg0), a3=sp-56.
  The return at 0x18a2c has v0 = ret(icmn_err_tag).
- `engr_dvt_thread` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18a34 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18a34-0x18a74 (64 bytes).
  It occupies 64 bytes.
  The `jal` at 0x18a58 calls cmn_err with a0=0x5, a1=sym(.rodata)+11680, a2=sym(.rodata)+23360, a3=a3 at entry (arg3).
  The `jal` at 0x18a60 calls sthread_exit with a0=?, a1=?, a2=?, a3=?.
  The return at 0x18a6c has v0 = ret(sthread_exit).
- `dumptlb` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18a74 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18a74-0x18b00 (140 bytes).
  It occupies 140 bytes.
  The `sw` at 0x18ae8 stores 4 bytes to ?.
  The `jal` at 0x18ac8 calls tlbgetent with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x18a98 targets 0x18aec, is taken when a3(=[sym(tlbdumptbl)]:8) == 0, and falls through when a3(=[sym(tlbdumptbl)]:8) != 0.
  The `bne` branch at 0x18ad8 targets 0x18aac, is taken when s0(?) < 0x40 (signed), and falls through when s0(?) >= 0x40 (signed).
  The return at 0x18af8 has v0 = one of ?, ret(tlbgetent).
- `checkAllTlbsDumped` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18b00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18b00-0x18b9c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x18b6c loads 4 bytes from ?.
  The `jal` at 0x18b40 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18b7c calls printf with a0=sym(.rodata)+12680, a1=?, a2=?, a3=?.
  The `beq` branch at 0x18b10 targets 0x18b8c, is taken when at(=[sym(tlbdumptbl)]:8) == 0, and falls through when at(=[sym(tlbdumptbl)]:8) != 0.
  The `blez` branch at 0x18b18 targets 0x18b90, is taken when a1(=[sym(maxcpus)]) <= 0 (signed), and falls through when a1(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x18b24 targets 0x18b40 and is always taken.
  The `beq` branch at 0x18b38 targets 0x18b8c, is taken when s0(?) >= v0(=[sym(maxcpus)]) (signed), and falls through when s0(?) < v0(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x18b48 targets 0x18b30, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x18b70 targets 0x18b30, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x18b84 targets 0x18b30 and is always taken.
  The return at 0x18b94 has v0 = ?.
  The instructions from 0x18b2c to 0x18b2c are not reached by any path from the entry, and their branches are not listed.
- `VEC_nofault` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18ba0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18ba0-0x18bb4 (20 bytes).
  It occupies 20 bytes.
  The `jal` at 0x18ba4 calls trap_nofault with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3).
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x18bac).
- `VEC_cpfault` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18bc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18bc0-0x18f28 (872 bytes).
  It occupies 872 bytes.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x18be4, `ld` at 0x18d5c, `ld` at 0x18ed4.
  2 such `ld` accesses load 8 bytes from [-0x3fe8]:8 +0x3e0, including `ld` at 0x18bf0, `ld` at 0x18d60.
  The `sw` at 0x18bf4 stores 4 bytes to [[-0x3fe8]:8+992]:8 +0x138.
  The `sd` at 0x18bfc stores 8 bytes to ?.
  The `ld` at 0x18c00 loads 8 bytes from abs 0xffffffffffffc460.
  The `ld` at 0x18c14 loads 8 bytes from [-0x3ba0]:8 +0x318.
  The `lb` at 0x18c18 loads 1 byte from [[-0x3ba0]:8+792]:8 +0x9c.
  The `ld` at 0x18c40 loads 8 bytes from [-0x3ba0]:8 +0x3e0.
  The `sw` at 0x18c48 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x130.
  The `swc1` at 0x18c54 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x124.
  The `swc1` at 0x18c58 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x11c.
  The `swc1` at 0x18c5c stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x114.
  The `swc1` at 0x18c60 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x10c.
  The `swc1` at 0x18c64 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x104.
  The `swc1` at 0x18c68 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xfc.
  The `swc1` at 0x18c6c stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xf4.
  The `swc1` at 0x18c70 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xec.
  The `swc1` at 0x18c74 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xe4.
  The `swc1` at 0x18c78 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xdc.
  The `swc1` at 0x18c7c stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xd4.
  The `swc1` at 0x18c80 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xcc.
  The `swc1` at 0x18c84 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xc4.
  The `swc1` at 0x18c88 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xbc.
  The `swc1` at 0x18c8c stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xb4.
  The `swc1` at 0x18c90 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xac.
  The `swc1` at 0x18c94 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xa4.
  The `swc1` at 0x18c98 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x9c.
  The `swc1` at 0x18c9c stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x94.
  The `swc1` at 0x18ca0 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x8c.
  The `swc1` at 0x18ca4 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x84.
  The `swc1` at 0x18ca8 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x7c.
  The `swc1` at 0x18cac stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x74.
  The `swc1` at 0x18cb0 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x6c.
  The `swc1` at 0x18cb4 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x64.
  The `swc1` at 0x18cb8 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x5c.
  The `swc1` at 0x18cbc stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x54.
  The `swc1` at 0x18cc0 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x4c.
  The `swc1` at 0x18cc4 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x44.
  The `swc1` at 0x18cc8 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x3c.
  The `swc1` at 0x18ccc stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x34.
  The `swc1` at 0x18cd0 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x2c.
  The `sdc1` at 0x18cdc stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x120.
  The `sdc1` at 0x18ce0 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x118.
  The `sdc1` at 0x18ce4 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x110.
  The `sdc1` at 0x18ce8 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x108.
  The `sdc1` at 0x18cec stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x100.
  The `sdc1` at 0x18cf0 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xf8.
  The `sdc1` at 0x18cf4 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xf0.
  The `sdc1` at 0x18cf8 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xe8.
  The `sdc1` at 0x18cfc stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xe0.
  The `sdc1` at 0x18d00 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xd8.
  The `sdc1` at 0x18d04 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xd0.
  The `sdc1` at 0x18d08 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xc8.
  The `sdc1` at 0x18d0c stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xc0.
  The `sdc1` at 0x18d10 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xb8.
  The `sdc1` at 0x18d14 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xb0.
  The `sdc1` at 0x18d18 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xa8.
  The `sdc1` at 0x18d1c stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xa0.
  The `sdc1` at 0x18d20 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x98.
  The `sdc1` at 0x18d24 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x90.
  The `sdc1` at 0x18d28 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x88.
  The `sdc1` at 0x18d2c stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x80.
  The `sdc1` at 0x18d30 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x78.
  The `sdc1` at 0x18d34 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x70.
  The `sdc1` at 0x18d38 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x68.
  The `sdc1` at 0x18d3c stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x60.
  The `sdc1` at 0x18d40 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x58.
  The `sdc1` at 0x18d44 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x50.
  The `sdc1` at 0x18d48 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x48.
  The `sdc1` at 0x18d4c stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x40.
  The `sdc1` at 0x18d50 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x38.
  The `sdc1` at 0x18d54 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x30.
  The `sdc1` at 0x18d58 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x28.
  The `ld` at 0x18d64 loads 8 bytes from [-0x3fe8]:8 +0x318.
  The `lb` at 0x18d68 loads 1 byte from [[-0x3fe8]:8+792]:8 +0x9c.
  The `lwc1` at 0x18d9c loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x2c.
  The `lwc1` at 0x18da0 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x34.
  The `lwc1` at 0x18da4 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x3c.
  The `lwc1` at 0x18da8 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x44.
  The `lwc1` at 0x18dac loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x4c.
  The `lwc1` at 0x18db0 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x54.
  The `lwc1` at 0x18db4 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x5c.
  The `lwc1` at 0x18db8 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x64.
  The `lwc1` at 0x18dbc loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x6c.
  The `lwc1` at 0x18dc0 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x74.
  The `lwc1` at 0x18dc4 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x7c.
  The `lwc1` at 0x18dc8 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x84.
  The `lwc1` at 0x18dcc loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x8c.
  The `lwc1` at 0x18dd0 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x94.
  The `lwc1` at 0x18dd4 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x9c.
  The `lwc1` at 0x18dd8 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xa4.
  The `lwc1` at 0x18ddc loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xac.
  The `lwc1` at 0x18de0 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xb4.
  The `lwc1` at 0x18de4 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xbc.
  The `lwc1` at 0x18de8 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xc4.
  The `lwc1` at 0x18dec loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xcc.
  The `lwc1` at 0x18df0 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xd4.
  The `lwc1` at 0x18df4 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xdc.
  The `lwc1` at 0x18df8 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xe4.
  The `lwc1` at 0x18dfc loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xec.
  The `lwc1` at 0x18e00 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xf4.
  The `lwc1` at 0x18e04 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xfc.
  The `lwc1` at 0x18e08 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x104.
  The `lwc1` at 0x18e0c loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x10c.
  The `lwc1` at 0x18e10 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x114.
  The `lwc1` at 0x18e14 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x11c.
  The `lwc1` at 0x18e18 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x124.
  The `ldc1` at 0x18e24 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x28.
  The `ldc1` at 0x18e28 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x30.
  The `ldc1` at 0x18e2c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x38.
  The `ldc1` at 0x18e30 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x40.
  The `ldc1` at 0x18e34 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x48.
  The `ldc1` at 0x18e38 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x50.
  The `ldc1` at 0x18e3c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x58.
  The `ldc1` at 0x18e40 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x60.
  The `ldc1` at 0x18e44 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x68.
  The `ldc1` at 0x18e48 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x70.
  The `ldc1` at 0x18e4c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x78.
  The `ldc1` at 0x18e50 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x80.
  The `ldc1` at 0x18e54 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x88.
  The `ldc1` at 0x18e58 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x90.
  The `ldc1` at 0x18e5c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x98.
  The `ldc1` at 0x18e60 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xa0.
  The `ldc1` at 0x18e64 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xa8.
  The `ldc1` at 0x18e68 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xb0.
  The `ldc1` at 0x18e6c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xb8.
  The `ldc1` at 0x18e70 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xc0.
  The `ldc1` at 0x18e74 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xc8.
  The `ldc1` at 0x18e78 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xd0.
  The `ldc1` at 0x18e7c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xd8.
  The `ldc1` at 0x18e80 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xe0.
  The `ldc1` at 0x18e84 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xe8.
  The `ldc1` at 0x18e88 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xf0.
  The `ldc1` at 0x18e8c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xf8.
  The `ldc1` at 0x18e90 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x100.
  The `ldc1` at 0x18e94 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x108.
  The `ldc1` at 0x18e98 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x110.
  The `ldc1` at 0x18e9c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x118.
  The `ldc1` at 0x18ea0 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x120.
  The `lw` at 0x18ea8 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x130.
  The `sd` at 0x18edc stores 8 bytes to abs 0xffffffffffffc460.
  The `ld` at 0x18f04 loads 8 bytes from ?.
  Calls exception_exit via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[-0x3fe8]:8 (`j` at 0x18ee8).
  Calls exception_exit via direct with a0=a0 at entry (arg0), a1=[-0x3fe8]:8, a2=[-0x3ba0]:8, a3=a3 at entry (arg3) (`j` at 0x18ef0).
  Calls VEC_trap via direct with a0=a0 at entry (arg0), a1=0x8c, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x18ef8).
  The `jal` at 0x18f20 calls cmn_err with a0=0x0, a1=sym(.data)+31904, a2=?, a3=?.
  The `beq` branch at 0x18bc4 targets 0x18f00, is taken when (s0 & 0x18) == 0, and falls through when (s0 & 0x18) != 0.
  The `bne` branch at 0x18bdc targets 0x18ef8, is taken when a1(?) != at(=0x1), and falls through when a1(?) == at(=0x1).
  The `beq` branch at 0x18c04 targets 0x18ef0, is taken when a2(=[-0x3ba0]:8) == a1(=[-0x3fe8]:8), and falls through when a2(=[-0x3ba0]:8) != a1(=[-0x3fe8]:8).
  The `beq` branch at 0x18c0c targets 0x18d5c, is taken when a2(=[-0x3ba0]:8) == 0, and falls through when a2(=[-0x3ba0]:8) != 0.
  The `beq` branch at 0x18c20 targets 0x18c2c, is taken when (t0(=[[[-0x3ba0]:8+792]:8+156]:1) & 0xc) == 0, and falls through when (t0(=[[[-0x3ba0]:8+792]:8+156]:1) & 0xc) != 0.
  The `bne` branch at 0x18c4c targets 0x18cdc, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x18cd4 targets 0x18d5c and is always taken.
  The `beq` branch at 0x18d74 targets 0x18d80, is taken when (t0(=[[[-0x3fe8]:8+792]:8+156]:1) & 0xc) == 0, and falls through when (t0(=[[[-0x3fe8]:8+792]:8+156]:1) & 0xc) != 0.
  The `bne` branch at 0x18d94 targets 0x18e24, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x18e1c targets 0x18ea4 and is always taken.
- `hwperf_init` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18f28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18f28-0x19038 (272 bytes).
  It occupies 272 bytes.
  The `sw` at 0x18f60 stores 4 bytes to sym(pdaindr) +0xf40.
  The `sh` at 0x18f68 stores 2 bytes to sym(pdaindr) +0xf3e.
  The `sh` at 0x18f70 stores 2 bytes to sym(pdaindr) +0xf3c.
  The `sd` at 0x18f7c stores 8 bytes to sym(pdaindr) +0xf30.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x18f88, `ld` at 0x18f90, `ld` at 0x18fd8.
  The `sd` at 0x18fe0 stores 8 bytes to ?.
  The `jal` at 0x18f44 calls spinlock_init with a0=sym(.bss)+3888, a1=sym(.rodata)+12728, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x18f9c calls init_mutex with a0=?, a1=0x0, a2=sym(.rodata)+12728, a3=?.
  The `jal` at 0x18fb8 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18fc8 calls hwperf_cpu_monitor_info_alloc [0x1a720] with a0=?, a1=[sym(maxcpus)], a2=?, a3=?.
  The `jal` at 0x18ff0 calls hwperf_cpu_monitor_info_alloc [0x1a720] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19014 calls cmn_err with a0=0x0, a1=sym(.rodata)+12728, a2=?, a3=?.
  The `jal` at 0x19028 calls cmn_err with a0=0x0, a1=sym(.rodata)+12728, a2=?, a3=?.
  The `blez` branch at 0x18f78 targets 0x18fec, is taken when a1(=[sym(maxcpus)]) <= 0 (signed), and falls through when a1(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x18f80 targets 0x18fb8 and is always taken.
  The `beq` branch at 0x18fb0 targets 0x18fec, is taken when s0(?) >= a1(=[sym(maxcpus)]) (signed), and falls through when s0(?) < a1(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x18fc0 targets 0x18fa8, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x18fdc targets 0x18f88, is taken when v0(=ret(hwperf_cpu_monitor_info_alloc)) != 0, and falls through when v0(=ret(hwperf_cpu_monitor_info_alloc)) == 0.
  The `beq` branch at 0x18fe4 targets 0x19014 and is always taken.
  The `beq` branch at 0x18ff8 targets 0x19024, is taken when v0(=ret(hwperf_cpu_monitor_info_alloc)) == 0, and falls through when v0(=ret(hwperf_cpu_monitor_info_alloc)) != 0.
  The `beq` branch at 0x1901c targets 0x18f8c and is always taken.
  The `beq` branch at 0x19030 targets 0x19004 and is always taken.
  The return at 0x1900c has v0 = one of ret(hwperf_cpu_monitor_info_alloc), ret(cmn_err).
- `hwperf_enable_sys_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19088 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19088-0x190bc (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x190a8 calls hwperf_enable_counters with a0=[sym(sys_hwperf_mon)]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=(a2 | 0x8), a4=a3 at entry (arg3).
  The return at 0x190b4 has v0 = ret(hwperf_enable_counters).
- `hwperf_enable_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x190bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x190bc-0x19274 (440 bytes).
  It occupies 440 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc0, including `lw` at 0x19110, `lw` at 0x191e0.
  The `lh` at 0x19158 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0x191e8 stores 2 bytes to a0 (arg0 at entry) +0x16.
  The `sh` at 0x191ec stores 2 bytes to a0 (arg0 at entry) +0xc.
  The `lw` at 0x191f0 loads 4 bytes from ?.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x19204, `sw` at 0x19268.
  3 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x0, including `sh` at 0x19214, `sh` at 0x19220, `sh` at 0x19238.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0x19248, `lw` at 0x19258.
  The `sw` at 0x19254 stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `jal` at 0x190ec calls cap_able with a0=0x2000000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19150 calls mutex_lock with a0=a0+32, a1=0x19, a2=?, a3=?.
  The `jal` at 0x19168 calls mutex_unlock with a0=a0+32, a1=?, a2=?, a3=?.
  The `jal` at 0x19184 calls hwperf_get_access with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=?.
  The `jal` at 0x19194 calls mutex_unlock with a0=a0+32, a1=?, a2=?, a3=?.
  The `jal` at 0x191b4 calls r1nk_perf_init_counters with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x191c8 calls hwperf_release_access with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=0x81.
  The `jal` at 0x191d0 calls mutex_unlock with a0=a0+32, a1=?, a2=?, a3=?.
  The `jal` at 0x19234 calls hwperf_initiate_startup with a0=a0 at entry (arg0), a1=?, a2=?, a3=-0x11, a7=0x81.
  The `jal` at 0x19240 calls mutex_unlock with a0=a0+32, a1=?, a2=?, a3=?.
  The `beq` branch at 0x190f8 targets 0x19108, is taken when (s1(=a3) & 0x8) == 0, and falls through when (s1(=a3) & 0x8) != 0.
  The `beq` branch at 0x19100 targets 0x191a4, is taken when v0(=ret(cap_able)) == 0, and falls through when v0(=ret(cap_able)) != 0.
  The `beq` branch at 0x19108 targets 0x19178, is taken when s3(=a2) == 0, and falls through when s3(=a2) != 0.
  The `bltz` branch at 0x19114 targets 0x19124, is taken when v0(=[a1+192]) < 0 (signed), and falls through when v0(=[a1+192]) >= 0 (signed).
  The `bne` branch at 0x1911c targets 0x19148, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x19160 targets 0x19184, is taken when (a2(=[a0]:2) & 0x8) == 0, and falls through when (a2(=[a0]:2) & 0x8) != 0.
  The `beq` branch at 0x19170 targets 0x19128 and is always taken.
  The `beq` branch at 0x1917c targets 0x19110 and is always taken.
  The `beq` branch at 0x1918c targets 0x191ac, is taken when v0(=ret(hwperf_get_access)) == 0, and falls through when v0(=ret(hwperf_get_access)) != 0.
  The `beq` branch at 0x1919c targets 0x19128 and is always taken.
  The `beq` branch at 0x191a4 targets 0x19128 and is always taken.
  The `beq` branch at 0x191c0 targets 0x191e0, is taken when v0(=ret(r1nk_perf_init_counters)) == 0, and falls through when v0(=ret(r1nk_perf_init_counters)) != 0.
  The `beq` branch at 0x191d8 targets 0x19128 and is always taken.
  The `beq` branch at 0x191fc targets 0x19258, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x19210 targets 0x19224, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x19250 targets 0x19128 and is always taken.
  The `bltz` branch at 0x1925c targets 0x1926c, is taken when a2(=[a0+24]) < 0 (signed), and falls through when a2(=[a0+24]) >= 0 (signed).
  The `beq` branch at 0x19264 targets 0x19208 and is always taken.
  The `beq` branch at 0x1926c targets 0x19264 and is always taken.
  The return at 0x19140 has v0 = one of 0x16, 0x10, ?, 0x1, 0x0.
- `hwperf_disable_sys_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19274 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19274-0x19290 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x1927c calls hwperf_disable_counters with a0=[sym(sys_hwperf_mon)]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x19288 has v0 = ret(hwperf_disable_counters).
- `hwperf_disable_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19290 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19290-0x193b0 (288 bytes).
  It occupies 288 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x0, including `lh` at 0x192bc, `lh` at 0x19350.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x0, including `sh` at 0x192e8, `sh` at 0x1939c.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x19310, `ld` at 0x19314.
  The `lh` at 0x19318 loads 2 bytes from ?.
  The `sh` at 0x19320 stores 2 bytes to ?.
  The `lw` at 0x19360 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0x19368 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `jal` at 0x192b4 calls mutex_lock with a0=a0+32, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x192fc calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19338 calls hwperf_read_counters with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x19340 calls hwperf_check_release with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x19348 calls hwperf_release_access with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1936c calls mutex_unlock with a0=a0+32, a1=?, a2=?, a3=?.
  The `jal` at 0x193a0 calls mutex_unlock with a0=a0+32, a1=?, a2=?, a3=?.
  The `beq` branch at 0x192d8 targets 0x193a0, is taken when (v0(=[a0]:2) & 0xf) == 0, and falls through when (v0(=[a0]:2) & 0xf) != 0.
  The `beq` branch at 0x192e4 targets 0x19338, is taken when (v0(?) & 0x2) == 0, and falls through when (v0(?) & 0x2) != 0.
  The `blez` branch at 0x192f0 targets 0x19338, is taken when a1(=[sym(maxcpus)]) <= 0 (signed), and falls through when a1(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x19304 targets 0x19324, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x19330 targets 0x192fc, is taken when s0(?) < a3(=[sym(maxcpus)]) (signed), and falls through when s0(?) >= a3(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x19358 targets 0x19398, is taken when (v0(=[a0]:2) & 0x40) == 0, and falls through when (v0(=[a0]:2) & 0x40) != 0.
  The `beq` branch at 0x19398 targets 0x19360 and is always taken.
  The `beq` branch at 0x193a8 targets 0x19378 and is always taken.
  The return at 0x19390 has v0 = 0x0.
- `hwperf_parent_accumulates` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x193b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x193b0-0x193e4 (52 bytes).
  It occupies 52 bytes.
  The `lh` at 0x193b8 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0x193c8 stores 2 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0x193cc loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x193d0, `sw` at 0x193e0.
  The `beq` branch at 0x193b0 targets 0x193dc, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x193c0 targets 0x193cc, is taken when (a3(=[a0]:2) & 0xf) == 0, and falls through when (a3(=[a0]:2) & 0xf) != 0.
  The `beq` branch at 0x193dc targets 0x193d4 and is always taken.
  The return at 0x193d4 has v0 = 0x0.
- `hwperf_change_sys_control` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x193e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x193e4-0x19414 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0x19400 calls hwperf_change_control with a0=[sym(sys_hwperf_mon)]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The return at 0x1940c has v0 = ret(hwperf_change_control).
- `cpumon_alloc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19414 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19414-0x19528 (276 bytes).
  It occupies 276 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x478, including `ld` at 0x19414, `ld` at 0x19498, `ld` at 0x19524.
  The `ld` at 0x1944c loads 8 bytes from a0 (arg0 at entry) +0x318.
  The `sd` at 0x19460 stores 8 bytes to a0 (arg0 at entry) +0x478.
  The `ld` at 0x194a8 loads 8 bytes from ?.
  The `lw` at 0x194b4 loads 4 bytes from ret(hwperf_cpu_monitor_info_alloc) +0x4.
  The `lh` at 0x194b8 loads 2 bytes from ret(hwperf_cpu_monitor_info_alloc) +0x0.
  The `sw` at 0x194c4 stores 4 bytes to ret(hwperf_cpu_monitor_info_alloc) +0x4.
  The `sh` at 0x194d0 stores 2 bytes to ret(hwperf_cpu_monitor_info_alloc) +0x0.
  The `sd` at 0x194d4 stores 8 bytes to ?.
  The `jal` at 0x19478 calls hwperf_cpu_monitor_info_alloc [0x1a720] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19490 calls mutex_bitlock with a0=[a0+792]:8+148, a1=0x1, a2=?, a3=?.
  The `jal` at 0x194d8 calls mutex_bitunlock with a0=[a0+792]:8+148, a1=0x1, a2=ret(mutex_bitlock), a3=?.
  The `jal` at 0x194ec calls mutex_bitunlock with a0=[a0+792]:8+148, a1=0x1, a2=ret(mutex_bitlock), a3=?.
  The `jal` at 0x194fc calls hwperf_cpu_monitor_info_free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x19424 targets 0x19438, is taken when v0(=[a0+1144]:8) == 0, and falls through when v0(=[a0+1144]:8) != 0.
  The `beq` branch at 0x19458 targets 0x19474 and is always taken.
  The `beq` branch at 0x1946c targets 0x194e8, is taken when s0(=one of 0x0, 0x1) == 0, and falls through when s0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x19484 targets 0x19474, is taken when v0(=ret(hwperf_cpu_monitor_info_alloc)) == 0, and falls through when v0(=ret(hwperf_cpu_monitor_info_alloc)) != 0.
  The `bne` branch at 0x194a0 targets 0x1946c, is taken when t8(=[a0+1144]:8) != 0, and falls through when t8(=[a0+1144]:8) == 0.
  The `bne` branch at 0x194ac targets 0x19460, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x194e0 targets 0x19468 and is always taken.
  The `beq` branch at 0x194f4 targets 0x19508, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x19520 targets 0x1942c and is always taken.
  The return at 0x19430 has v0 = [a0+1144]:8.
- `hwperf_change_control` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19528 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19528-0x19584 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x1953c calls hwperf_disable_counters with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19564 calls hwperf_enable_counters with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=a2 at entry (arg2), a4=a3 at entry (arg3).
  The `beq` branch at 0x19544 targets 0x19558, is taken when v0(=ret(hwperf_disable_counters)) == 0, and falls through when v0(=ret(hwperf_disable_counters)) != 0.
  The `beq` branch at 0x1956c targets 0x1957c, is taken when v0(=ret(hwperf_enable_counters)) == 0, and falls through when v0(=ret(hwperf_enable_counters)) != 0.
  The `beq` branch at 0x19574 targets 0x19550 and is always taken.
  The `beq` branch at 0x1957c targets 0x1954c and is always taken.
  The return at 0x19550 has v0 = one of ?, ret(hwperf_enable_counters).
- `hwperf_sys_control_info` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19584 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19584-0x195b4 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0x195a0 calls hwperf_control_info with a0=[sym(sys_hwperf_mon)]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The return at 0x195ac has v0 = ret(hwperf_control_info).
- `hwperf_control_info` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x195b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x195b4-0x19704 (336 bytes).
  It occupies 336 bytes.
  The `lh` at 0x195ec loads 2 bytes from a0 (arg0 at entry) +0x0.
  5 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x70, including `lh` at 0x195fc, `lh` at 0x1961c, `lh` at 0x19640.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x19614, `lhu` at 0x19638.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x19618, `sh` at 0x1963c.
  The `lh` at 0x1965c loads 2 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x19660 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0x1967c stores 4 bytes to ?.
  The `lw` at 0x19694 loads 4 bytes from ?.
  The `lw` at 0x196b4 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0x196c0 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0x19700 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `jal` at 0x195e4 calls mutex_lock with a0=a0+32, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x196bc calls mutex_unlock with a0=a0+32, a1=?, a2=0xffffffff80000000, a3=?.
  The `jal` at 0x196e4 calls mutex_unlock with a0=a0+32, a1=?, a2=0xffffffff80000000, a3=?.
  The `beq` branch at 0x195f4 targets 0x196e4, is taken when (at(=[a0]:2) & 0xf) == 0, and falls through when (at(=[a0]:2) & 0xf) != 0.
  The `blez` branch at 0x19600 targets 0x19654, is taken when v0(=[a0+112]:2) <= 0 (signed), and falls through when v0(=[a0+112]:2) > 0 (signed).
  The `beq` branch at 0x19628 targets 0x19654, is taken when v0(?) >= v1(=[a0+112]:2) (signed), and falls through when v0(?) < v1(=[a0+112]:2) (signed).
  The `bne` branch at 0x1964c targets 0x1960c, is taken when v0(?) < a3(=[a0+112]:2) (signed), and falls through when v0(?) >= a3(=[a0+112]:2) (signed).
  The `beq` branch at 0x19654 targets 0x196b4, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `blez` branch at 0x19668 targets 0x196b0, is taken when a6(=[a0+112]:2) <= 0 (signed), and falls through when a6(=[a0+112]:2) > 0 (signed).
  The `beq` branch at 0x19670 targets 0x196f4 and is always taken.
  The `beq` branch at 0x1968c targets 0x196b0, is taken when v0(?) >= t1(=[a0+112]:2) (signed), and falls through when v0(?) < t1(=[a0+112]:2) (signed).
  The `bne` branch at 0x196a0 targets 0x19678, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x196a8 targets 0x1967c and is always taken.
  The `beq` branch at 0x196ec targets 0x196c8 and is always taken.
  The `beq` branch at 0x196fc targets 0x19698 and is always taken.
  The return at 0x196dc has v0 = one of 0x0, 0x16.
- `hwperf_get_cpu_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19704 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19704-0x1978c (136 bytes).
  It occupies 136 bytes.
  The `lhu` at 0x19710 loads 2 bytes from sym(pdaindr) +0xf3c.
  The `ld` at 0x1975c loads 8 bytes from (sym(pdaindr) + (a0 << 0x4)) +0x8.
  The `ld` at 0x19760 loads 8 bytes from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x6d0.
  The `jal` at 0x19740 calls cpu_enabled with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x16.
  The `jal` at 0x19778 calls hwperf_get_counters with a0=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1744]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a5=sym(pdaindr).
  The `beq` branch at 0x19724 targets 0x19738, is taken when at(=[sym(.bss)+3900]:2) == v0(=0x8), and falls through when at(=[sym(.bss)+3900]:2) != v0(=0x8).
  The `beq` branch at 0x19748 targets 0x19768, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x19764 targets 0x19774, is taken when a0(=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1744]:8) != 0, and falls through when a0(=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1744]:8) == 0.
  The `beq` branch at 0x1976c targets 0x1972c and is always taken.
  The `beq` branch at 0x19784 targets 0x1972c and is always taken.
  The return at 0x19730 has v0 = one of 0x16, ret(hwperf_get_counters).
- `hwperf_get_sys_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1978c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1978c-0x197b4 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x197a0 calls hwperf_get_counters with a0=[sym(sys_hwperf_mon)]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The return at 0x197ac has v0 = ret(hwperf_get_counters).
- `hwperf_get_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x197b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x197b4-0x19884 (208 bytes).
  It occupies 208 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x70, including `lh` at 0x197ec, `lh` at 0x1983c.
  The `ld` at 0x19810 loads 8 bytes from ?.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x19814, `sd` at 0x19838.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x19818, `lw` at 0x19824.
  The `lw` at 0x19860 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0x19868 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0x197dc calls mutex_lock with a0=a0+32, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x197e4 calls hwperf_read_counters with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x19864 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x197f4 targets 0x1985c, is taken when at(=[a0+112]:2) <= 0 (signed), and falls through when at(=[a0+112]:2) > 0 (signed).
  The `beq` branch at 0x1981c targets 0x1983c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x19854 targets 0x19810, is taken when a3(?) < t1(=[a0+112]:2) (signed), and falls through when a3(?) >= t1(=[a0+112]:2) (signed).
  The return at 0x1987c has v0 = 0x0.
- `hwperf_plus_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19884 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19884-0x1996c (232 bytes).
  It occupies 232 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x70, including `lh` at 0x198c0, `lh` at 0x19918.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x198e0, `lw` at 0x198f0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x198ec, `ld` at 0x1990c.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x19904, `sd` at 0x19914.
  The `lw` at 0x19934 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x19938 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sw` at 0x19948 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0x198b0 calls mutex_lock with a0=a0+32, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x198b8 calls hwperf_read_counters with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x19954 calls mutex_unlock with a0=a0+32, a1=?, a2=?, a3=?.
  The `blez` branch at 0x198c4 targets 0x19934, is taken when at(=[a0+112]:2) <= 0 (signed), and falls through when at(=[a0+112]:2) > 0 (signed).
  The `beq` branch at 0x198e8 targets 0x19908, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x1992c targets 0x198e0, is taken when a4(?) < t3(=[a0+112]:2) (signed), and falls through when a4(?) >= t3(=[a0+112]:2) (signed).
  The `beq` branch at 0x19940 targets 0x1994c, is taken when t9(=[a2]) >= a0(=[a0+24]) (signed), and falls through when t9(=[a2]) < a0(=[a0+24]) (signed).
  The return at 0x19964 has v0 = ret(mutex_unlock).
- `hwperf_set_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1996c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1996c-0x19a30 (196 bytes).
  It occupies 196 bytes.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x70, including `lh` at 0x199a0, `lh` at 0x199c0, `lh` at 0x199e4.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x199b8, `ld` at 0x199dc.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x199bc, `sd` at 0x199e0.
  The `lw` at 0x199f8 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x199fc loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sw` at 0x19a0c stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0x19998 calls mutex_lock with a0=a0+32, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19a18 calls mutex_unlock with a0=a0+32, a1=?, a2=?, a3=?.
  The `blez` branch at 0x199a4 targets 0x199f8, is taken when at(=[a0+112]:2) <= 0 (signed), and falls through when at(=[a0+112]:2) > 0 (signed).
  The `beq` branch at 0x199cc targets 0x199f8, is taken when a3(?) >= v0(=[a0+112]:2) (signed), and falls through when a3(?) < v0(=[a0+112]:2) (signed).
  The `bne` branch at 0x199f0 targets 0x199b0, is taken when a3(?) < a1(=[a0+112]:2) (signed), and falls through when a3(?) >= a1(=[a0+112]:2) (signed).
  The `beq` branch at 0x19a04 targets 0x19a10, is taken when a5(=[a2]) >= a0(=[a0+24]) (signed), and falls through when a5(=[a2]) < a0(=[a0+24]) (signed).
  The return at 0x19a28 has v0 = ret(mutex_unlock).
- `hwperf_setup_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19a30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19a30-0x19a80 (80 bytes).
  It occupies 80 bytes.
  The `lhu` at 0x19a34 loads 2 bytes from sym(pdaindr) +0xf3c.
  The `lw` at 0x19a48 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lh` at 0x19a4c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x19a54 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `sh` at 0x19a64 stores 2 bytes to a0 (arg0 at entry) +0x0.
  The `sd` at 0x19a74 stores 8 bytes to abs 0xffffffffffffc6d8.
  The `jal` at 0x19a70 calls r1nk_perf_start_counters with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x19a40 targets 0x19a70, is taken when at(=[sym(.bss)+3900]:2) == v0(=0x4), and falls through when at(=[sym(.bss)+3900]:2) != v0(=0x4).
  The `beq` branch at 0x19a78 targets 0x19a68 and is always taken.
  The return at 0x19a68 has v0 = one of ?, ret(r1nk_perf_start_counters).
- `hwperf_multiplex_events` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19a80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19a80-0x19b48 (200 bytes).
  It occupies 200 bytes.
  The `lh` at 0x19aac loads 2 bytes from a0 (arg0 at entry) +0x0.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x30, including `lh` at 0x19abc, `lh` at 0x19ae4.
  The `sh` at 0x19adc stores 2 bytes to ?.
  The `lh` at 0x19b00 loads 2 bytes from ?.
  The `jal` at 0x19a8c calls r1nk_perf_update_counters with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19a94 calls hwperf_multiplex_counter_check [0x1a7d4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x19ad4 calls hwperf_next_event_index_get [0x1a818] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x19b28 calls r1nk_perf_start_counters with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x19aa4 targets 0x19b30, is taken when v0(=ret(hwperf_multiplex_counter_check)) == 0, and falls through when v0(=ret(hwperf_multiplex_counter_check)) != 0.
  The `beq` branch at 0x19ab4 targets 0x19b34, is taken when (at(=[a0]:2) & 0x8) == 0, and falls through when (at(=[a0]:2) & 0x8) != 0.
  The `blez` branch at 0x19ac0 targets 0x19b28, is taken when a0(=[a0+48]:2) <= 0 (signed), and falls through when a0(=[a0+48]:2) > 0 (signed).
  The `beq` branch at 0x19ac8 targets 0x19afc and is always taken.
  The `beq` branch at 0x19af4 targets 0x19b28, is taken when s0(?) >= a0(=[a0+48]:2) (signed), and falls through when s0(?) < a0(=[a0+48]:2) (signed).
  The `beq` branch at 0x19b08 targets 0x19ad0, is taken when t8(?) >= 0x2 (signed), and falls through when t8(?) < 0x2 (signed).
  The `bne` branch at 0x19b20 targets 0x19afc, is taken when s0(?) < a0(=[a0+48]:2) (signed), and falls through when s0(?) >= a0(=[a0+48]:2) (signed).
  The return at 0x19b40 has v0 = one of ret(hwperf_multiplex_counter_check), ?.
- `hwperf_add_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19b48 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19b48-0x19bc4 (124 bytes).
  It occupies 124 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x70, including `lh` at 0x19b48, `lh` at 0x19ba8.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x19b5c, `lw` at 0x19b7c.
  The `ld` at 0x19b70 loads 8 bytes from ?.
  The `lld` at 0x19b90 loads 8 bytes from ?.
  The `scd` at 0x19b9c stores 8 bytes to ?.
  The `blez` branch at 0x19b4c targets 0x19bbc, is taken when at(=[a0+112]:2) <= 0 (signed), and falls through when at(=[a0+112]:2) > 0 (signed).
  The `beq` branch at 0x19b74 targets 0x19b90, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beql` branch at 0x19ba0 targets 0x19b90, is taken when t9(?) == 0, and falls through when t9(?) != 0; its branch-likely delay slot `nop` at 0x19ba4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x19bb4 targets 0x19b5c, is taken when a4(?) < t3(=[a0+112]:2) (signed), and falls through when a4(?) >= t3(=[a0+112]:2) (signed).
  The return at 0x19bbc has v0 = ?.
- `hwperf_fork_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19bc4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19bc4-0x19c84 (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0x19bcc loads 8 bytes from a0 (arg0 at entry) +0x478.
  The `lh` at 0x19bf0 loads 2 bytes from [a0+1144]:8 +0x0.
  The `lh` at 0x19c1c loads 2 bytes from ?.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x19c28, `sh` at 0x19c30.
  The `ll` at 0x19c48 loads 4 bytes from sym(pdaindr) +0xf30.
  The `sc` at 0x19c54 stores 4 bytes to sym(pdaindr) +0xf30.
  The `jal` at 0x19be8 calls mutex_lock with a0=[a0+1144]:8+32, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19c00 calls cpumon_alloc with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x19c10 calls hwperf_copy_cmp with a0=[a0+1144]:8, a1=ret(cpumon_alloc), a2=?, a3=?.
  The `jal` at 0x19c34 calls mutex_unlock with a0=[a0+1144]:8+32, a1=-0x1, a2=?, a3=?.
  The `jal` at 0x19c74 calls mutex_unlock with a0=[a0+1144]:8+32, a1=?, a2=?, a3=?.
  The `beq` branch at 0x19bd8 targets 0x19c60, is taken when s0(=[a0+1144]:8) == 0, and falls through when s0(=[a0+1144]:8) != 0.
  The `beq` branch at 0x19bf8 targets 0x19c74, is taken when (at(=[[a0+1144]:8]:2) & 0xf) == 0, and falls through when (at(=[[a0+1144]:8]:2) & 0xf) != 0.
  The `beql` branch at 0x19c58 targets 0x19c48, is taken when a5(=[sym(.bss)+3888]+1) == 0, and falls through when a5(=[sym(.bss)+3888]+1) != 0; its branch-likely delay slot `nop` at 0x19c5c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x19c7c targets 0x19c64 and is always taken.
  The return at 0x19c6c has v0 = one of ?, ret(mutex_unlock).
- `hwperf_sys_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19ca0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19ca0-0x19d5c (188 bytes).
  It occupies 188 bytes.
  The `ld` at 0x19cb0 loads 8 bytes from abs 0xffffffffffffc6d8.
  The `lh` at 0x19cbc loads 2 bytes from [-0x3928]:8 +0x0.
  The `lw` at 0x19cd0 loads 4 bytes from [-0x3928]:8 +0x18.
  The `sh` at 0x19cd8 stores 2 bytes to [-0x3928]:8 +0x0.
  The `sw` at 0x19ce0 stores 4 bytes to [-0x3928]:8 +0x18.
  The `ld` at 0x19cf0 loads 8 bytes from abs 0xffffffffffffc6d0.
  The `sd` at 0x19cfc stores 8 bytes to abs 0xffffffffffffc6d8.
  The `lh` at 0x19d04 loads 2 bytes from ?.
  The `sh` at 0x19d1c stores 2 bytes to ?.
  The `lh` at 0x19d2c loads 2 bytes from abs 0xffffffffffffc3a0.
  The `ll` at 0x19d40 loads 4 bytes from sym(processor_enabled) +0x110.
  The `sc` at 0x19d48 stores 4 bytes to sym(processor_enabled) +0x110.
  The `jal` at 0x19ca8 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19ce4 calls r1nk_perf_update_counters with a0=[-0x3928]:8, a1=[[-0x3928]:8]:2, a2=-0x9, a3=?.
  The `jal` at 0x19cf8 calls hwperf_copy_cmp with a0=a0 at entry (arg0), a1=[-0x3930]:8, a2=?, a3=?.
  The `jal` at 0x19d18 calls r1nk_perf_start_counters with a0=?, a1=?, a2=?, a3=?, a4=-0x3.
  The `jal` at 0x19d20 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x19cb4 targets 0x19cec, is taken when a0(=[-0x3928]:8) == 0, and falls through when a0(=[-0x3928]:8) != 0.
  The `beq` branch at 0x19cc4 targets 0x19ce4, is taken when (a1(=[[-0x3928]:8]:2) & 0x8) == 0, and falls through when (a1(=[[-0x3928]:8]:2) & 0x8) != 0.
  The `beql` branch at 0x19d4c targets 0x19d40, is taken when (a5(=[sym(.sbss)+272]) & a7(?)) == 0, and falls through when (a5(=[sym(.sbss)+272]) & a7(?)) != 0; its branch-likely delay slot `nop` at 0x19d50 runs only when taken and is annulled on fall-through.
  The return at 0x19d54 has v0 = ret(splx).
- `hwperf_get_access` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19d5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19d5c-0x19e4c (240 bytes).
  It occupies 240 bytes.
  The `lhu` at 0x19da4 loads 2 bytes from sym(pdaindr) +0xf3c.
  The `ld` at 0x19df4 loads 8 bytes from sym(pdaindr) +0xf30.
  2 such `sh` accesses store 2 bytes to sym(pdaindr) +0xf3c, including `sh` at 0x19e0c, `sh` at 0x19e24.
  The `sd` at 0x19e1c stores 8 bytes to sym(pdaindr) +0xf30.
  The `ll` at 0x19e2c loads 4 bytes from sym(pdaindr) +0xf30.
  The `sc` at 0x19e38 stores 4 bytes to sym(pdaindr) +0xf30.
  The `jal` at 0x19d78 calls mutex_spinlock with a0=sym(.bss)+3888, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19dbc calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=one of 0x2, 0x8, a7=sym(.bss)+3888.
  The `beq` branch at 0x19da0 targets 0x19dd8, is taken when (s0(=a1) & 0x8) == 0, and falls through when (s0(=a1) & 0x8) != 0.
  The `beq` branch at 0x19da8 targets 0x19df0, is taken when a4(=[sym(.bss)+3900]:2) == a5(=0x2), and falls through when a4(=[sym(.bss)+3900]:2) != a5(=0x2).
  The `beq` branch at 0x19db0 targets 0x19e0c, is taken when a4(=[sym(.bss)+3900]:2) == a6(=0x1), and falls through when a4(=[sym(.bss)+3900]:2) != a6(=0x1).
  The `beq` branch at 0x19dd8 targets 0x19e24, is taken when a4(=[sym(.bss)+3900]:2) == t0(=0x1), and falls through when a4(=[sym(.bss)+3900]:2) != t0(=0x1).
  The `beq` branch at 0x19de0 targets 0x19e20, is taken when t1(=0x4) == a4(=[sym(.bss)+3900]:2), and falls through when t1(=0x4) != a4(=[sym(.bss)+3900]:2).
  The `beq` branch at 0x19de8 targets 0x19dbc and is always taken.
  The `beq` branch at 0x19df8 targets 0x19e08, is taken when a3(=[sym(.bss)+3888]:8) == a4(=a0), and falls through when a3(=[sym(.bss)+3888]:8) != a4(=a0).
  The `beq` branch at 0x19e00 targets 0x19dbc and is always taken.
  The `beq` branch at 0x19e18 targets 0x19dbc and is always taken.
  The `beql` branch at 0x19e3c targets 0x19e2c, is taken when s0(=[sym(.bss)+3888]+1) == 0, and falls through when s0(=[sym(.bss)+3888]+1) != 0; its branch-likely delay slot `nop` at 0x19e40 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x19e44 targets 0x19dbc and is always taken.
  The return at 0x19dd0 has v0 = one of 0x0, 0x10.
- `hwperf_check_release` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19e4c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19e4c-0x19fb4 (360 bytes).
  It occupies 360 bytes.
  The `lh` at 0x19e60 loads 2 bytes from a0 (arg0 at entry) +0x0.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x16, including `lh` at 0x19e7c, `lh` at 0x19e94, `lh` at 0x19ed8.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x19f18, `ld` at 0x19f1c.
  The `lh` at 0x19f28 loads 2 bytes from ?.
  The `jal` at 0x19e8c calls nano_delay with a0=sp-48, a1=a1 at entry (arg1), a2=[a0]:2, a3=a3 at entry (arg3).
  The `jal` at 0x19efc calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19f40 calls nano_delay with a0=sp-48, a1=?, a2=?, a3=-0x1.
  The `jal` at 0x19f78 calls assfail with a0=sym(.rodata)+12728, a1=sym(.rodata)+12728, a2=0x378, a3=?.
  The `jal` at 0x19f90 calls assfail with a0=sym(.rodata)+12728, a1=sym(.rodata)+12728, a2=0x384, a3=-0x1.
  The `jal` at 0x19fa4 calls assfail with a0=sym(.rodata)+12728, a1=sym(.rodata)+12728, a2=0x389, a3=?, a4=sym(.rodata)+12728.
  The `beq` branch at 0x19e74 targets 0x19eb0, is taken when (a2(=[a0]:2) & 0x1) == 0, and falls through when (a2(=[a0]:2) & 0x1) != 0.
  The `beq` branch at 0x19e84 targets 0x19ea0, is taken when v1(=[a0+22]:2) == s0(=-0x1), and falls through when v1(=[a0+22]:2) != s0(=-0x1).
  The `bne` branch at 0x19e98 targets 0x19f6c, is taken when a0(=[a0+22]:2) != s0(=-0x1), and falls through when a0(=[a0+22]:2) == s0(=-0x1).
  The `beq` branch at 0x19ec0 targets 0x19f5c, is taken when (a2(=[a0]:2) & 0x2) == 0, and falls through when (a2(=[a0]:2) & 0x2) != 0.
  The `blez` branch at 0x19ec8 targets 0x19ea0, is taken when a0(=[sym(maxcpus)]) <= 0 (signed), and falls through when a0(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x19ed0 targets 0x19ef8 and is always taken.
  The `bne` branch at 0x19ee0 targets 0x19f88, is taken when a2(=[a0+22]:2) != a3(=-0x1), and falls through when a2(=[a0+22]:2) == a3(=-0x1).
  The `beq` branch at 0x19ef4 targets 0x19f54, is taken when s0(?) >= a4(=[sym(maxcpus)]) (signed), and falls through when s0(?) < a4(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x19f08 targets 0x19ee8, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `beq` branch at 0x19f20 targets 0x19eec, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x19f2c targets 0x19eec, is taken when a2(?) == a3(=-0x1), and falls through when a2(?) != a3(=-0x1).
  The `bne` branch at 0x19f38 targets 0x19ed8, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x19f4c targets 0x19ed8 and is always taken.
  The `beq` branch at 0x19f54 targets 0x19ea0 and is always taken.
  The `bne` branch at 0x19f5c targets 0x19ea0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x19f64 targets 0x19fa0 and is always taken.
  The `beq` branch at 0x19f80 targets 0x19ea0 and is always taken.
  The `beq` branch at 0x19f98 targets 0x19eec and is always taken.
  The `beq` branch at 0x19fac targets 0x19ea0 and is always taken.
  The return at 0x19ea8 has v0 = one of 0x2faf080, ret(nano_delay), ?, ret(assfail).
- `hwperf_release_access` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19fb4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19fb4-0x1a094 (224 bytes).
  It occupies 224 bytes.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x0, including `lh` at 0x19fdc, `lh` at 0x1a008, `lh` at 0x1a06c.
  The `lw` at 0x19ff4 loads 4 bytes from sym(pdaindr) +0xf40.
  2 such `sh` accesses store 2 bytes to sym(pdaindr) +0xf3c, including `sh` at 0x1a004, `sh` at 0x1a090.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x0, including `sh` at 0x1a010, `sh` at 0x1a078.
  The `sd` at 0x1a014 stores 8 bytes to sym(pdaindr) +0xf30.
  The `ll` at 0x1a04c loads 4 bytes from sym(pdaindr) +0xf30.
  The `sc` at 0x1a058 stores 4 bytes to sym(pdaindr) +0xf30.
  The `lhu` at 0x1a068 loads 2 bytes from sym(pdaindr) +0xf3c.
  The `jal` at 0x19fd4 calls mutex_spinlock with a0=sym(.bss)+3888, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1a020 calls mutex_spinunlock with a0=sym(.bss)+3888, a1=ret(mutex_spinlock), a2=0x1, a3=?.
  The `beq` branch at 0x19ff8 targets 0x1a038, is taken when (a5(=[a0]:2) & 0x2) == 0, and falls through when (a5(=[a0]:2) & 0x2) != 0.
  The `beq` branch at 0x1a044 targets 0x1a018, is taken when (a5(=[a0]:2) & 0x1) == 0, and falls through when (a5(=[a0]:2) & 0x1) != 0.
  The `beql` branch at 0x1a05c targets 0x1a04c, is taken when a5(=[sym(.bss)+3888]-1) == 0, and falls through when a5(=[sym(.bss)+3888]-1) != 0; its branch-likely delay slot `nop` at 0x1a060 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1a064 targets 0x1a07c, is taken when a4(=[sym(.bss)+3888]-1) == 0, and falls through when a4(=[sym(.bss)+3888]-1) != 0.
  The `beq` branch at 0x1a074 targets 0x1a018 and is always taken.
  The `beq` branch at 0x1a08c targets 0x1a06c and is always taken.
  The return at 0x1a030 has v0 = ret(mutex_spinunlock).
- `hwperf_find_cpu` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a094 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a094-0x1a12c (152 bytes).
  It occupies 152 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1a0ec, `ld` at 0x1a0f0, `ld` at 0x1a0fc.
  The `jal` at 0x1a0d4 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x1a0b0 targets 0x1a110, is taken when at(=[sym(maxcpus)]) <= 0 (signed), and falls through when at(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x1a0b8 targets 0x1a0d0 and is always taken.
  The `beq` branch at 0x1a0c8 targets 0x1a114, is taken when s0(?) >= a3(=[sym(maxcpus)]) (signed), and falls through when s0(?) < a3(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x1a0dc targets 0x1a0c0, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `beq` branch at 0x1a0f4 targets 0x1a0c0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1a100 targets 0x1a0c0, is taken when v1(?) != s1(=a0), and falls through when v1(?) == s1(=a0).
  The `beq` branch at 0x1a108 targets 0x1a114 and is always taken.
  The return at 0x1a124 has v0 = one of -0x1, ?.
- `hwperf_initiate_startup` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a12c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a12c-0x1a288 (348 bytes).
  It occupies 348 bytes.
  The `lh` at 0x1a138 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x1a1b0 loads 8 bytes from ?.
  The `lh` at 0x1a1b4 loads 2 bytes from ?.
  The `ll` at 0x1a1bc loads 4 bytes from sym(processor_enabled) +0x110.
  The `sc` at 0x1a1c4 stores 4 bytes to sym(processor_enabled) +0x110.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc3a0, including `lh` at 0x1a1d0, `lh` at 0x1a254.
  The `jal` at 0x1a174 calls hwperf_sys_counters with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1a194 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a1e4 calls cpuaction with a0=?, a1=sym(hwperf_sys_counters), a2=0x1, a3=a0 at entry (arg0).
  The `jal` at 0x1a240 calls hwperf_find_cpu with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1a260 calls hwperf_proc_counters with a0=(ret(hwperf_find_cpu) << 0x30), a1=?, a2=-0x1, a3=[-0x3c60]:2.
  The `jal` at 0x1a278 calls cpuaction with a0=?, a1=sym(hwperf_proc_counters), a2=0x1, a3=[-0x3c60]:2.
  The `beq` branch at 0x1a154 targets 0x1a240, is taken when (at(=[a0]:2) & 0x2) == 0, and falls through when (at(=[a0]:2) & 0x2) != 0.
  The `blez` branch at 0x1a164 targets 0x1a1f4, is taken when v1(=[sym(maxcpus)]) <= 0 (signed), and falls through when v1(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x1a16c targets 0x1a18c and is always taken.
  The `beq` branch at 0x1a188 targets 0x1a1f4, is taken when s0(?) >= a0(=[sym(maxcpus)]) (signed), and falls through when s0(?) < a0(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x1a19c targets 0x1a180, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `beql` branch at 0x1a1c8 targets 0x1a1bc, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `nop` at 0x1a1cc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1a1d4 targets 0x1a174, is taken when t8(=[-0x3c60]:2) == s0(?), and falls through when t8(=[-0x3c60]:2) != s0(?).
  The `beq` branch at 0x1a1ec targets 0x1a180 and is always taken.
  The `beq` branch at 0x1a1f8 targets 0x1a224, is taken when v0(=[sym(.sbss)+272]) == 0, and falls through when v0(=[sym(.sbss)+272]) != 0.
  The `beq` branch at 0x1a204 targets 0x1a224, is taken when v1(=[sym(.sbss)+272]) == 0, and falls through when v1(=[sym(.sbss)+272]) != 0.
  The `beq` branch at 0x1a210 targets 0x1a224, is taken when a0(=[sym(.sbss)+272]) == 0, and falls through when a0(=[sym(.sbss)+272]) != 0.
  The `bne` branch at 0x1a21c targets 0x1a200, is taken when a1(=[sym(.sbss)+272]) != 0, and falls through when a1(=[sym(.sbss)+272]) == 0.
  The `beq` branch at 0x1a24c targets 0x1a228, is taken when v0(=ret(hwperf_find_cpu)) == a2(=-0x1), and falls through when v0(=ret(hwperf_find_cpu)) != a2(=-0x1).
  The `bne` branch at 0x1a258 targets 0x1a270, is taken when a3(=[-0x3c60]:2) != v0(=ret(hwperf_find_cpu)), and falls through when a3(=[-0x3c60]:2) == v0(=ret(hwperf_find_cpu)).
  The `beq` branch at 0x1a268 targets 0x1a228 and is always taken.
  The `beq` branch at 0x1a280 targets 0x1a228 and is always taken.
  The return at 0x1a238 has v0 = one of [sym(.sbss)+272], ret(hwperf_find_cpu), ret(hwperf_proc_counters), ret(cpuaction).
- `hwperf_proc_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a288 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a288-0x1a2f4 (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x1a298 loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0x1a2a4 loads 8 bytes from [-0x3fe8]:8 +0x478.
  The `lh` at 0x1a2b0 loads 2 bytes from [[-0x3fe8]:8+1144]:8 +0x0.
  The `ld` at 0x1a2c0 loads 8 bytes from abs 0xffffffffffffc6d8.
  The `jal` at 0x1a290 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1a2cc calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x1a2e4 calls hwperf_setup_counters with a0=[[-0x3fe8]:8+1144]:8, a1=?, a2=?, a3=[-0x3fe8]:8.
  The `beq` branch at 0x1a29c targets 0x1a2cc, is taken when a3(=[-0x3fe8]:8) == 0, and falls through when a3(=[-0x3fe8]:8) != 0.
  The `beq` branch at 0x1a2a8 targets 0x1a2cc, is taken when a0(=[[-0x3fe8]:8+1144]:8) == 0, and falls through when a0(=[[-0x3fe8]:8+1144]:8) != 0.
  The `beq` branch at 0x1a2b8 targets 0x1a2cc, is taken when (at(=[[[-0x3fe8]:8+1144]:8]:2) & 0x8) == 0, and falls through when (at(=[[[-0x3fe8]:8+1144]:8]:2) & 0x8) != 0.
  The `beq` branch at 0x1a2c4 targets 0x1a2e4, is taken when v0(=[-0x3928]:8) == 0, and falls through when v0(=[-0x3928]:8) != 0.
  The `beq` branch at 0x1a2ec targets 0x1a2cc and is always taken.
  The return at 0x1a2dc has v0 = ret(splx).
- `hwperf_update_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a2f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a2f4-0x1a338 (68 bytes).
  It occupies 68 bytes.
  The `lh` at 0x1a304 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `ll` at 0x1a31c loads 4 bytes from sym(processor_enabled) +0x110.
  The `sc` at 0x1a324 stores 4 bytes to sym(processor_enabled) +0x110.
  The `jal` at 0x1a2fc calls r1nk_perf_update_counters with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0x1a328 targets 0x1a31c, is taken when (at(=[sym(.sbss)+272]) & v1(?)) == 0, and falls through when (at(=[sym(.sbss)+272]) & v1(?)) != 0; its branch-likely delay slot `nop` at 0x1a32c runs only when taken and is annulled on fall-through.
  The return at 0x1a330 has v0 = sym(.sbss)+272.
- `hwperf_update_counters_async` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a338 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a338-0x1a37c (68 bytes).
  It occupies 68 bytes.
  The `lh` at 0x1a348 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `ll` at 0x1a360 loads 4 bytes from sym(processor_enabled) +0x114.
  The `sc` at 0x1a368 stores 4 bytes to sym(processor_enabled) +0x114.
  The `jal` at 0x1a340 calls r1nk_perf_update_counters with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0x1a36c targets 0x1a360, is taken when (at(=[sym(.sbss)+276]) & v1(?)) == 0, and falls through when (at(=[sym(.sbss)+276]) & v1(?)) != 0; its branch-likely delay slot `nop` at 0x1a370 runs only when taken and is annulled on fall-through.
  The return at 0x1a374 has v0 = sym(.sbss)+276.
- `hwperf_read_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a37c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a37c-0x1a638 (700 bytes).
  It occupies 700 bytes.
  The `lh` at 0x1a388 loads 2 bytes from a0 (arg0 at entry) +0x0.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1a404, `ld` at 0x1a4d0, `ld` at 0x1a4d4.
  The `lh` at 0x1a408 loads 2 bytes from ?.
  The `ll` at 0x1a410 loads 4 bytes from sym(processor_enabled) +0x110.
  The `sc` at 0x1a418 stores 4 bytes to sym(processor_enabled) +0x110.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc3a0, including `lh` at 0x1a424, `lh` at 0x1a5d0.
  4 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x70, including `lh` at 0x1a454, `lh` at 0x1a4a0, `lh` at 0x1a538.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1a494, `sd` at 0x1a504.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1a498, `lw` at 0x1a508, `lw` at 0x1a51c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1a49c, `sw` at 0x1a530.
  The `lh` at 0x1a5b4 loads 2 bytes from a0 (arg0 at entry) +0x16.
  2 such `ld` accesses load 8 bytes from (sym(pdaindr) + ([a0+22]:2 << 0x4)) +0x8, including `ld` at 0x1a5dc, `ld` at 0x1a5fc.
  2 such `lh` accesses load 2 bytes from [(sym(pdaindr) + ([a0+22]:2 << 0x4))+8]:8 +0x3a0, including `lh` at 0x1a5e0, `lh` at 0x1a600.
  The `ll` at 0x1a5e8 loads 4 bytes from sym(processor_enabled) +0x114.
  The `sc` at 0x1a5f0 stores 4 bytes to sym(processor_enabled) +0x114.
  The `jal` at 0x1a3c8 calls hwperf_update_counters with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a3e8 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a438 calls cpuaction with a0=?, a1=sym(hwperf_update_counters), a2=0x1, a3=0x0.
  The `jal` at 0x1a568 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a578 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a618 calls cpuaction with a0=[a0+22]:2, a1=sym(hwperf_update_counters_async), a2=0x1, a3=0x0, a4=sym(pdaindr).
  The `jal` at 0x1a628 calls r1nk_perf_update_counters with a0=0x0, a1=([a0+22]:2 << 0x4), a2=a2 at entry (arg2), a3=(sym(pdaindr) + ([a0+22]:2 << 0x4)), a4=sym(pdaindr).
  The `beq` branch at 0x1a3a8 targets 0x1a5b4, is taken when (at(=[a0]:2) & 0x2) == 0, and falls through when (at(=[a0]:2) & 0x2) != 0.
  The `blez` branch at 0x1a3b4 targets 0x1a448, is taken when a0(=[sym(maxcpus)]) <= 0 (signed), and falls through when a0(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x1a3c0 targets 0x1a3e4 and is always taken.
  The `beq` branch at 0x1a3dc targets 0x1a448, is taken when s1(?) >= a0(=[sym(maxcpus)]) (signed), and falls through when s1(?) < a0(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x1a3f0 targets 0x1a3d4, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `beql` branch at 0x1a41c targets 0x1a410, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `nop` at 0x1a420 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1a428 targets 0x1a3c8, is taken when t8(=[-0x3c60]:2) == s1(?), and falls through when t8(=[-0x3c60]:2) != s1(?).
  The `beq` branch at 0x1a440 targets 0x1a3d4 and is always taken.
  The `beq` branch at 0x1a450 targets 0x1a47c, is taken when v0(=[sym(.sbss)+272]) == 0, and falls through when v0(=[sym(.sbss)+272]) != 0.
  The `beq` branch at 0x1a45c targets 0x1a47c, is taken when v1(=[sym(.sbss)+272]) == 0, and falls through when v1(=[sym(.sbss)+272]) != 0.
  The `beq` branch at 0x1a468 targets 0x1a47c, is taken when a2(=[sym(.sbss)+272]) == 0, and falls through when a2(=[sym(.sbss)+272]) != 0.
  The `bne` branch at 0x1a474 targets 0x1a458, is taken when a3(=[sym(.sbss)+272]) != 0, and falls through when a3(=[sym(.sbss)+272]) == 0.
  The `blez` branch at 0x1a47c targets 0x1a4b8, is taken when a1(=[a0+112]:2) <= 0 (signed), and falls through when a1(=[a0+112]:2) > 0 (signed).
  The `bne` branch at 0x1a4ac targets 0x1a488, is taken when a1(?) < a4(=[a0+112]:2) (signed), and falls through when a1(?) >= a4(=[a0+112]:2) (signed).
  The `blez` branch at 0x1a4b8 targets 0x1a594, is taken when a0(=[sym(maxcpus)]) <= 0 (signed), and falls through when a0(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x1a4c0 targets 0x1a564 and is always taken.
  The `blez` branch at 0x1a4d8 targets 0x1a554, is taken when a0(=[a0+112]:2) <= 0 (signed), and falls through when a0(=[a0+112]:2) > 0 (signed).
  The `beq` branch at 0x1a514 targets 0x1a534, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x1a548 targets 0x1a4f8, is taken when a1(?) < t8(=[a0+112]:2) (signed), and falls through when a1(?) >= t8(=[a0+112]:2) (signed).
  The `beq` branch at 0x1a55c targets 0x1a594, is taken when s1(?) >= t9(=[sym(maxcpus)]) (signed), and falls through when s1(?) < t9(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x1a570 targets 0x1a554, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x1a584 targets 0x1a4c8, is taken when v0(=ret(cpu_enabled)) != 0, and falls through when v0(=ret(cpu_enabled)) == 0.
  The `beq` branch at 0x1a58c targets 0x1a4d8 and is always taken.
  The `beq` branch at 0x1a5c8 targets 0x1a594, is taken when a0(=[a0+22]:2) == t8(=-0x1), and falls through when a0(=[a0+22]:2) != t8(=-0x1).
  The `beq` branch at 0x1a5d4 targets 0x1a628, is taken when t9(=[-0x3c60]:2) == a0(=[a0+22]:2), and falls through when t9(=[-0x3c60]:2) != a0(=[a0+22]:2).
  The `beql` branch at 0x1a5f4 targets 0x1a5e8, is taken when a2(?) == 0, and falls through when a2(?) != 0; its branch-likely delay slot `nop` at 0x1a5f8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x1a60c targets 0x1a594, is taken when (ra(=[sym(.sbss)+276]) & at(?)) != 0, and falls through when (ra(=[sym(.sbss)+276]) & at(?)) == 0.
  The `beq` branch at 0x1a620 targets 0x1a598 and is always taken.
  The `beq` branch at 0x1a630 targets 0x1a598 and is always taken.
  The return at 0x1a5ac has v0 = one of ?, ret(cpuaction), ret(r1nk_perf_update_counters).
- `hwperf_copy_cmp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a638 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a638-0x1a6f4 (188 bytes).
  It occupies 188 bytes.
  2 such `lh` accesses load 2 bytes from a1 (arg1 at entry) +0x70, including `lh` at 0x1a638, `lh` at 0x1a680.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1a650, `lw` at 0x1a65c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1a654, `sw` at 0x1a668.
  The `sd` at 0x1a670 stores 8 bytes to ?.
  The `lhu` at 0x1a678 loads 2 bytes from ?.
  4 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1a67c, `sh` at 0x1a6c0, `sh` at 0x1a6c8.
  The `lw` at 0x1a694 loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `lh` accesses load 2 bytes from a1 (arg1 at entry) +0x30, including `lh` at 0x1a698, `lh` at 0x1a6d4.
  The `sw` at 0x1a69c stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `lh` at 0x1a6a0 loads 2 bytes from a0 (arg0 at entry) +0xc.
  The `sh` at 0x1a6ac stores 2 bytes to a1 (arg1 at entry) +0xc.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1a6bc, `lh` at 0x1a6c4, `lh` at 0x1a6cc.
  The `lh` at 0x1a6e8 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0x1a6f0 stores 2 bytes to a1 (arg1 at entry) +0x0.
  The `blez` branch at 0x1a63c targets 0x1a694, is taken when at(=[a1+112]:2) <= 0 (signed), and falls through when at(=[a1+112]:2) > 0 (signed).
  The `bne` branch at 0x1a68c targets 0x1a648, is taken when a3(?) < v0(=[a1+112]:2) (signed), and falls through when a3(?) >= v0(=[a1+112]:2) (signed).
  The `blez` branch at 0x1a6a8 targets 0x1a6e8, is taken when t0(=[a1+48]:2) <= 0 (signed), and falls through when t0(=[a1+48]:2) > 0 (signed).
  The `bne` branch at 0x1a6e0 targets 0x1a6b4, is taken when a3(?) < t2(=[a1+48]:2) (signed), and falls through when a3(?) >= t2(=[a1+48]:2) (signed).
  The return at 0x1a6ec has v0 = ?.
- `hwperf_arch_nosupport` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a6f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a6f4-0x1a6fc (8 bytes).
  It occupies 8 bytes.
  The return at 0x1a6f4 has v0 = 0x59.
- `hwperf_arch_fatal` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a6fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a6fc-0x1a720 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x1a70c calls cmn_err with a0=0x0, a1=sym(.rodata)+12728, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1a718 has v0 = ret(cmn_err).
- `hwperf_cpu_monitor_info_alloc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a720 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a720-0x1a7b0 (144 bytes).
  It occupies 144 bytes.
  The `sh` at 0x1a74c stores 2 bytes to ret(kmem_zalloc) +0x70.
  The `sh` at 0x1a758 stores 2 bytes to ret(kmem_zalloc) +0x30.
  The `sw` at 0x1a75c stores 4 bytes to ret(kmem_zalloc) +0x8.
  The `ld` at 0x1a760 loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0x1a76c loads 8 bytes from [-0x3fe8]:8 +0x2f0.
  The `lw` at 0x1a778 loads 4 bytes from [[-0x3fe8]:8+752]:8 +0x298.
  The `sw` at 0x1a77c stores 4 bytes to ret(kmem_zalloc) +0x10.
  The `sd` at 0x1a784 stores 8 bytes to ret(kmem_zalloc) +0x38.
  The `sd` at 0x1a78c stores 8 bytes to ret(kmem_zalloc) +0x40.
  The `sh` at 0x1a790 stores 2 bytes to ret(kmem_zalloc) +0x14.
  The `jal` at 0x1a730 calls kmem_zalloc with a0=0x2b8, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1a754 calls r1nk_perf_architecture with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1a738 targets 0x1a748, is taken when v0(=ret(kmem_zalloc)) != 0, and falls through when v0(=ret(kmem_zalloc)) == 0.
  The `beq` branch at 0x1a740 targets 0x1a794 and is always taken.
  The `beq` branch at 0x1a764 targets 0x1a7a8, is taken when a2(=[-0x3fe8]:8) == 0, and falls through when a2(=[-0x3fe8]:8) != 0.
  The `beq` branch at 0x1a770 targets 0x1a7a8, is taken when a3(=[[-0x3fe8]:8+752]:8) == 0, and falls through when a3(=[[-0x3fe8]:8+752]:8) != 0.
  The `beq` branch at 0x1a7a8 targets 0x1a77c and is always taken.
  The return at 0x1a7a0 has v0 = one of 0x0, ret(kmem_zalloc).
- `hwperf_cpu_monitor_info_free` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a7b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a7b0-0x1a7d4 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x1a7c4 calls kern_free with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1a7b4 targets 0x1a7c4, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0x1a7cc targets 0x1a7bc and is always taken.
  The return at 0x1a7bc has v0 = one of ?, ret(kern_free).
- `hwperf_multiplex_counter_check` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a7d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a7d4-0x1a818 (68 bytes).
  It occupies 68 bytes.
  The `lh` at 0x1a7d4 loads 2 bytes from a0 (arg0 at entry) +0x30.
  The `lh` at 0x1a7e8 loads 2 bytes from ?.
  The `blez` branch at 0x1a7d8 targets 0x1a804, is taken when a4(=[a0+48]:2) <= 0 (signed), and falls through when a4(=[a0+48]:2) > 0 (signed).
  The `beq` branch at 0x1a7f4 targets 0x1a810, is taken when at(?) >= 0x2 (signed), and falls through when at(?) < 0x2 (signed).
  The `bne` branch at 0x1a7fc targets 0x1a7e4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The return at 0x1a808 has v0 = 0x0.
  The return at 0x1a810 has v0 = 0x1.
- `hwperf_next_event_index_get` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a818 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a818-0x1a890 (120 bytes).
  It occupies 120 bytes.
  The `lh` at 0x1a820 loads 2 bytes from (a0 + (a1 + a1)) +0x68.
  The `lh` at 0x1a82c loads 2 bytes from (a0 + (a1 + a1)) +0x60.
  The `ld` at 0x1a83c loads 8 bytes from (a0 + (a1 << 0x3)) +0x38.
  The `lhu` at 0x1a874 loads 2 bytes from ?.
  The `beq` branch at 0x1a86c targets 0x1a880, is taken when (a5(=[(a0 + (a1 << 0x3))+56]:8) & t0(?)) == 0, and falls through when (a5(=[(a0 + (a1 << 0x3))+56]:8) & t0(?)) != 0.
  The `bne` branch at 0x1a878 targets 0x1a888, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x1a880 targets 0x1a848, is taken when a6(=[(a0 + (a1 + a1))+96]:2) != v0(?), and falls through when a6(=[(a0 + (a1 + a1))+96]:2) == v0(?).
  The return at 0x1a888 has v0 = ?.
- `r1nk_perf_update_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1ab50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1ab50-0x1acc4 (372 bytes).
  It occupies 372 bytes.
  5 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1ab78, `lh` at 0x1abb0, `lh` at 0x1abcc.
  The `lw` at 0x1ab9c loads 4 bytes from ?.
  The `sw` at 0x1aba8 stores 4 bytes to ?.
  The `lld` at 0x1ac34 loads 8 bytes from ?.
  The `scd` at 0x1ac40 stores 8 bytes to ?.
  The `ld` at 0x1ac64 loads 8 bytes from abs 0xffffffffffffc6d8.
  The `lh` at 0x1ac74 loads 2 bytes from [-0x3928]:8 +0x0.
  The `sh` at 0x1aca8 stores 2 bytes to ?.
  The `sd` at 0x1acb0 stores 8 bytes to abs 0xffffffffffffc6d8.
  The `jal` at 0x1ab70 calls r1nk_perf_check_architecture with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ab8c calls r1nkperf_data_register_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ac08 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ac4c calls r1nkperf_data_register_set with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1ac5c calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1ac8c calls r1nk_perf_stop_counters with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1acb4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1ab64 targets 0x1ac5c, is taken when a0 == 0, and falls through when a0 != 0.
  The `blez` branch at 0x1ab7c targets 0x1abf0, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `beq` branch at 0x1ab84 targets 0x1abc4 and is always taken.
  The `beq` branch at 0x1aba0 targets 0x1ac28, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1abc0 targets 0x1abf0, is taken when s0(?) >= v0(?) (signed), and falls through when s0(?) < v0(?) (signed).
  The `bgez` branch at 0x1abd0 targets 0x1ab8c, is taken when s2(?) >= 0 (signed), and falls through when s2(?) < 0 (signed).
  The `bne` branch at 0x1abe8 targets 0x1abc8, is taken when s0(?) < v0(?) (signed), and falls through when s0(?) >= v0(?) (signed).
  The `beq` branch at 0x1abf8 targets 0x1ac8c, is taken when (t8(?) & 0x8) == 0, and falls through when (t8(?) & 0x8) != 0.
  The `beq` branch at 0x1ac00 targets 0x1ac10, is taken when s3(=one of 0x0, 0x1) == 0, and falls through when s3(=one of 0x0, 0x1) != 0.
  The `beql` branch at 0x1ac44 targets 0x1ac34, is taken when at(?) == 0, and falls through when at(?) != 0; its branch-likely delay slot `nop` at 0x1ac48 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1ac54 targets 0x1abb0 and is always taken.
  The `beq` branch at 0x1ac6c targets 0x1acb4, is taken when s1(=[-0x3928]:8) == 0, and falls through when s1(=[-0x3928]:8) != 0.
  The `beq` branch at 0x1ac7c targets 0x1acb4, is taken when (at(=[[-0x3928]:8]:2) & 0xf) == 0, and falls through when (at(=[[-0x3928]:8]:2) & 0xf) != 0.
  The `beq` branch at 0x1ac84 targets 0x1ab70 and is always taken.
  The `beq` branch at 0x1aca0 targets 0x1acac, is taken when (v0(?) & 0x4) == 0, and falls through when (v0(?) & 0x4) != 0.
  The `beq` branch at 0x1acac targets 0x1ac00 and is always taken.
  The `beq` branch at 0x1acbc targets 0x1ac14 and is always taken.
  The return at 0x1ac20 has v0 = one of ?, ret(splx).
- `r1nk_perf_start_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1acc4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1acc4-0x1ae40 (380 bytes).
  It occupies 380 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x0, including `lh` at 0x1acf4, `lh` at 0x1ae3c.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x30, including `lh` at 0x1ad0c, `lh` at 0x1ad64.
  The `lh` at 0x1ad18 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `sh` at 0x1ad28 stores 2 bytes to a0 (arg0 at entry) +0x16.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x1ad34, `lhu` at 0x1adb4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1ad48, `lw` at 0x1ad54.
  The `lh` at 0x1ad80 loads 2 bytes from ?.
  The `lw` at 0x1ad8c loads 4 bytes from abs 0xffffffffffffc3fc.
  The `jal` at 0x1acd0 calls getsr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1acd8 calls issplhi with a0=(ret(getsr) << 0x0), a1=?, a2=?, a3=?.
  The `jal` at 0x1ad04 calls r1nk_perf_check_architecture with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1ad38 calls r1nkperf_control_register_set with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ad58 calls r1nkperf_data_register_set with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ae30 calls assfail with a0=sym(.rodata)+12952, a1=sym(.rodata)+12952, a2=0x119, a3=?.
  The `beq` branch at 0x1acec targets 0x1ae24, is taken when v0(=ret(issplhi)) == 0, and falls through when v0(=ret(issplhi)) != 0.
  The `beq` branch at 0x1acfc targets 0x1ae00, is taken when (at(=[a0]:2) & 0x8) == 0, and falls through when (at(=[a0]:2) & 0x8) != 0.
  The `blez` branch at 0x1ad24 targets 0x1adfc, is taken when a0(=[a0+48]:2) <= 0 (signed), and falls through when a0(=[a0+48]:2) > 0 (signed).
  The `beq` branch at 0x1ad2c targets 0x1ad7c and is always taken.
  The `beq` branch at 0x1ad4c targets 0x1ae1c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1ad74 targets 0x1adfc, is taken when s0(?) >= a0(=[a0+48]:2) (signed), and falls through when s0(?) < a0(=[a0+48]:2) (signed).
  The `bltz` branch at 0x1ad84 targets 0x1ade4, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `beq` branch at 0x1ad98 targets 0x1ada4, is taken when a1(?) == s3(=0xe), and falls through when a1(?) != s3(=0xe).
  The `bne` branch at 0x1ada0 targets 0x1ad34, is taken when a1(?) != s4(=0xf), and falls through when a1(?) == s4(=0xf).
  The `bne` branch at 0x1ada8 targets 0x1ad34, is taken when s0(?) != a2(=0x1), and falls through when s0(?) == a2(=0x1).
  The `beq` branch at 0x1addc targets 0x1ad38 and is always taken.
  The `bne` branch at 0x1adf4 targets 0x1ad7c, is taken when s0(?) < a0(=[a0+48]:2) (signed), and falls through when s0(?) >= a0(=[a0+48]:2) (signed).
  The `beq` branch at 0x1ae1c targets 0x1ad58 and is always taken.
  The `beq` branch at 0x1ae38 targets 0x1acf8 and is always taken.
  The return at 0x1ae14 has v0 = ?.
- `r1nk_perf_stop_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1ae40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1ae40-0x1aed8 (152 bytes).
  It occupies 152 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x30, including `lh` at 0x1ae6c, `lh` at 0x1ae94.
  The `sh` at 0x1ae74 stores 2 bytes to a0 (arg0 at entry) +0x16.
  The `jal` at 0x1ae4c calls getsr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1ae54 calls issplhi with a0=(ret(getsr) << 0x0), a1=?, a2=?, a3=?.
  The `jal` at 0x1ae64 calls r1nk_perf_check_architecture with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1ae88 calls r1nkperf_control_register_set with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1aec8 calls assfail with a0=sym(.rodata)+12952, a1=sym(.rodata)+12952, a2=0x15e, a3=?.
  The `beq` branch at 0x1ae5c targets 0x1aec0, is taken when v0(=ret(issplhi)) == 0, and falls through when v0(=ret(issplhi)) != 0.
  The `blez` branch at 0x1ae78 targets 0x1aeac, is taken when at(=[a0+48]:2) <= 0 (signed), and falls through when at(=[a0+48]:2) > 0 (signed).
  The `bne` branch at 0x1aea4 targets 0x1ae88, is taken when s0(?) < v1(=[a0+48]:2) (signed), and falls through when s0(?) >= v1(=[a0+48]:2) (signed).
  The `beq` branch at 0x1aed0 targets 0x1ae64 and is always taken.
  The return at 0x1aeb8 has v0 = one of -0x1, ret(r1nkperf_control_register_set).
- `r1nk_perf_init_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1aed8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1aed8-0x1b130 (600 bytes).
  It occupies 600 bytes.
  5 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x30, including `lh` at 0x1af04, `lh` at 0x1af44, `lh` at 0x1af6c.
  10 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1af34, `sh` at 0x1af3c, `sh` at 0x1af5c.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x70, including `lh` at 0x1af80, `lh` at 0x1af9c.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1afc4, `lh` at 0x1b074, `lh` at 0x1b0b8.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1afec, `sw` at 0x1b04c, `sw` at 0x1b050.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1aff0, `ld` at 0x1b098.
  The `sd` at 0x1affc stores 8 bytes to ?.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1b014, `lw` at 0x1b0d0.
  The `ld` at 0x1b110 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `jal` at 0x1aefc calls cap_able with a0=0x2000000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0x1af24 targets 0x1af80, is taken when a1(=[a0+48]:2) <= 0 (signed), and falls through when a1(=[a0+48]:2) > 0 (signed).
  The `beq` branch at 0x1af50 targets 0x1af80, is taken when a4(?) >= a2(=[a0+48]:2) (signed), and falls through when a4(?) < a2(=[a0+48]:2) (signed).
  The `bne` branch at 0x1af78 targets 0x1af30, is taken when a4(?) < a6(=[a0+48]:2) (signed), and falls through when a4(?) >= a6(=[a0+48]:2) (signed).
  The `blez` branch at 0x1af88 targets 0x1b0fc, is taken when a6(=[a0+112]:2) <= 0 (signed), and falls through when a6(=[a0+112]:2) > 0 (signed).
  The `beq` branch at 0x1af90 targets 0x1b114 and is always taken.
  The `beq` branch at 0x1afb8 targets 0x1b0fc, is taken when a7(?) >= t0(=[a0+112]:2) (signed), and falls through when a7(?) < t0(=[a0+112]:2) (signed).
  The `beq` branch at 0x1b000 targets 0x1af98, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1b010 targets 0x1b01c, is taken when (a5(?) & 0x2) == 0, and falls through when (a5(?) & 0x2) != 0.
  The `beq` branch at 0x1b018 targets 0x1b104, is taken when v0(=ret(cap_able)) == 0, and falls through when v0(=ret(cap_able)) != 0.
  The `bltz` branch at 0x1b020 targets 0x1b0d4, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `beq` branch at 0x1b028 targets 0x1b0d4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1b030 targets 0x1b0d4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bltz` branch at 0x1b038 targets 0x1b0d4, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The `beq` branch at 0x1b040 targets 0x1b0cc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `blez` branch at 0x1b064 targets 0x1af98, is taken when a6(=[a0+48]:2) <= 0 (signed), and falls through when a6(=[a0+48]:2) > 0 (signed).
  The `beq` branch at 0x1b06c targets 0x1b10c and is always taken.
  The `beq` branch at 0x1b090 targets 0x1af98, is taken when a4(?) >= a6(=[a0+48]:2) (signed), and falls through when a4(?) < a6(=[a0+48]:2) (signed).
  The `beq` branch at 0x1b0b0 targets 0x1b088, is taken when (a3(?) & t0(?)) == 0, and falls through when (a3(?) & t0(?)) != 0.
  The `bne` branch at 0x1b0bc targets 0x1b074, is taken when a6(?) != t3(=-0x1), and falls through when a6(?) == t3(=-0x1).
  The `beq` branch at 0x1b0c4 targets 0x1b074 and is always taken.
  The `beq` branch at 0x1b0cc targets 0x1b050 and is always taken.
  The `beq` branch at 0x1b0fc targets 0x1b0d8 and is always taken.
  The `beq` branch at 0x1b104 targets 0x1b0d8 and is always taken.
  The `beq` branch at 0x1b10c targets 0x1b09c and is always taken.
  The `beq` branch at 0x1b128 targets 0x1afc4 and is always taken.
  The return at 0x1b0f4 has v0 = one of 0x0, 0x1, 0x16.
- `r1nk_perf_architecture` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b130 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b130-0x1b1a4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0x1b130 loads 4 bytes from abs 0xffffffffffffc3fc.
  The `lh` at 0x1b190 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `jal` at 0x1b194 calls cmn_err with a0=0x0, a1=sym(.rodata)+12952, a2=[-0x3c60]:2, a3=[-0x3c04], a4=0x9, a5=0x2.
  The `beq` branch at 0x1b154 targets 0x1b180, is taken when v0(?) == at(=0xe), and falls through when v0(?) != at(=0xe).
  The `beq` branch at 0x1b15c targets 0x1b180, is taken when v0(?) == a2(=0xf), and falls through when v0(?) != a2(=0xf).
  The `bne` branch at 0x1b164 targets 0x1b188, is taken when v0(?) != a4(=0x9), and falls through when v0(?) == a4(=0x9).
  The `beq` branch at 0x1b180 targets 0x1b178 and is always taken.
  The `beq` branch at 0x1b19c targets 0x1b178 and is always taken.
  The return at 0x1b178 has v0 = one of 0x1, 0x2, 0x4, ret(cmn_err).
- `r1nk_perf_check_architecture` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b1a4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b1a4-0x1b228 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0x1b1b8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x14, including `lh` at 0x1b1c4, `lh` at 0x1b224.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x1b1d0, `lw` at 0x1b1f4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1b1e8, `lw` at 0x1b214.
  The `sw` at 0x1b1fc stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `jal` at 0x1b1b0 calls r1nk_perf_architecture with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1b1ec calls signal with a0=[a0+16], a1=[a0+20]:2, a2=[a0+20]:2, a3=?.
  The `jal` at 0x1b218 calls cmn_err with a0=0x5, a1=sym(.rodata)+12952, a2=[a0+20]:2, a3=[a0+16].
  The `beq` branch at 0x1b1bc targets 0x1b200, is taken when at(=[a0+8]) == v0(=ret(r1nk_perf_architecture)), and falls through when at(=[a0+8]) != v0(=ret(r1nk_perf_architecture)).
  The `beq` branch at 0x1b1c8 targets 0x1b204, is taken when a2(=[a0+20]:2) == 0, and falls through when a2(=[a0+20]:2) != 0.
  The `bne` branch at 0x1b1d8 targets 0x1b204, is taken when (v0(=[a0+4]) & 0x1) != 0, and falls through when (v0(=[a0+4]) & 0x1) == 0.
  The `bne` branch at 0x1b1e0 targets 0x1b210, is taken when a0(=[sym(perfcnt_arch_swtch_msg)]) != 0, and falls through when a0(=[sym(perfcnt_arch_swtch_msg)]) == 0.
  The `beq` branch at 0x1b220 targets 0x1b1e8 and is always taken.
  The return at 0x1b208 has v0 = one of ret(r1nk_perf_architecture), ?.
- `mul64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b230 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b230-0x1b248 (24 bytes).
  It occupies 24 bytes.
  The `sd` at 0x1b238 stores 8 bytes to a2 (arg2 at entry) +0x0.
  The return at 0x1b240 has v0 = ?.
- `madd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b248 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b248-0x1b818 (1488 bytes).
  It occupies 1488 bytes.
  The `lw` at 0x1b278 loads 4 bytes from ((a0 << 0x2) + sym(EXP_INF)) +0x0.
  8 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x1b2b8, `ld` at 0x1b2d0, `ld` at 0x1b358.
  6 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x1b2c0, `lw` at 0x1b2d4, `lw` at 0x1b360.
  3 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x1b2cc, `sw` at 0x1b36c, `sw` at 0x1b508.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0, including `lw` at 0x1b3c4, `lw` at 0x1b3f4.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(IMP_1BIT)) +0x0, including `ld` at 0x1b3cc, `ld` at 0x1b3e8.
  The `ld` at 0x1b474 loads 8 bytes from ((a0 << 0x3) + sym(maddrnd)) +0x0.
  5 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0, including `lw` at 0x1b550, `lw` at 0x1b6d8, `lw` at 0x1b71c.
  6 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0, including `lw` at 0x1b558, `lw` at 0x1b5cc, `lw` at 0x1b6e0.
  The `lbu` at 0x1b5b4 loads 1 byte from [-0x3fe8]:8 +0x548.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(renorm)) +0x0, including `ld` at 0x1b618, `ld` at 0x1b64c.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_MIN)) +0x0, including `lw` at 0x1b630, `lw` at 0x1b660.
  3 such `ld` accesses load 8 bytes from (sym(QUIETNAN) + (a0 << 0x3)) +0x0, including `ld` at 0x1b680, `ld` at 0x1b6b4, `ld` at 0x1b7a0.
  The `jal` at 0x1b2e4 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=sym(EXP_SHIFT).
  The `jal` at 0x1b2ec calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b384 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=?, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8.
  The `jal` at 0x1b38c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b424 calls mul64 with a0=?, a1=?, a2=sp-144, a3=?.
  The `jal` at 0x1b434 calls renorm_d with a0=sp-152, a1=?, a2=?, a3=?.
  The `jalr` at 0x1b47c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a6=[((a0 << 0x3) + sym(maddrnd))]:8.
  The `jal` at 0x1b49c calls breakout_sd with a0=a0 at entry (arg0), a1=sp-160, a2=sp-52, a3=sp-44, a4=sp-40.
  The `jal` at 0x1b4bc calls add with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=a7 at entry (arg7).
  The `jal` at 0x1b520 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=?.
  The `jal` at 0x1b528 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b56c calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1b574 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b5e4 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=[((a0 << 0x2) + sym(SIGN_SHIFT))], a3=[[-0x3fe8]:8+1352]:1, a4=0x3.
  The `jal` at 0x1b5ec calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1b61c calls (unknown callee) with a0=sp-40, a1=a1 at entry (arg1), a2=[((a0 << 0x3) + sym(renorm))]:8, a3=?.
  The `jalr` at 0x1b650 calls (unknown callee) with a0=sp-16, a1=sym(EXP_BIAS), a2=sym(renorm), a3=?.
  The `jal` at 0x1b67c calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=sym(EXP_SHIFT).
  The `jal` at 0x1b684 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b6b0 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8.
  The `jal` at 0x1b6b8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b6f0 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(EXP_SHIFT))], a4=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1b6f8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b734 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))], a4=((a0 << 0x2) + sym(SIGN_SHIFT)).
  The `jal` at 0x1b73c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b778 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(EXP_SHIFT))], a4=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1b780 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b79c calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?.
  The `jal` at 0x1b7a4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b7e8 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[((a0 << 0x2) + sym(EXP_SHIFT))], a5=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1b7f0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1b298 targets 0x1b2fc, is taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a2, and falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a2.
  The `bne` branch at 0x1b2a0 targets 0x1b338, is taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a5, and falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a5.
  The `bne` branch at 0x1b2a8 targets 0x1b708, is taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a2(?), and falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a2(?).
  The `beq` branch at 0x1b2b0 targets 0x1b6c8, is taken when a3(?) == a7, and falls through when a3(?) != a7.
  The `beq` branch at 0x1b2dc targets 0x1b674, is taken when (t2(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (t2(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x1b2f4 targets 0x1b4c8 and is always taken.
  The `bne` branch at 0x1b2fc targets 0x1b338, is taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a5, and falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a5.
  The `bne` branch at 0x1b338 targets 0x1b39c, is taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != t2(?), and falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == t2(?).
  The `bne` branch at 0x1b340 targets 0x1b4e4, is taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a2(?), and falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a2(?).
  The `beq` branch at 0x1b348 targets 0x1b694, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1b350 targets 0x1b74c, is taken when s4(=a7) == a4(?), and falls through when s4(=a7) != a4(?).
  The `beq` branch at 0x1b37c targets 0x1b6a4, is taken when (a5(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a5(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x1b394 targets 0x1b4c8 and is always taken.
  The `beq` branch at 0x1b39c targets 0x1b584, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x1b3a4 targets 0x1b594, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1b3ac targets 0x1b610, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x1b3dc targets 0x1b648, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1b404 targets 0x1b5fc, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `bne` branch at 0x1b460 targets 0x1b46c, is taken when v0(=ret(renorm_d)) != t0(=0xb), and falls through when v0(=ret(renorm_d)) == t0(=0xb).
  The `bne` branch at 0x1b4e4 targets 0x1b53c, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `bne` branch at 0x1b4ec targets 0x1b53c, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1b518 targets 0x1b790, is taken when (a7(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a7(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x1b530 targets 0x1b4c8 and is always taken.
  The `beq` branch at 0x1b57c targets 0x1b4c8 and is always taken.
  The `bne` branch at 0x1b584 targets 0x1b3a4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1b58c targets 0x1b5a0 and is always taken.
  The `bne` branch at 0x1b594 targets 0x1b3ac, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x1b5a0 targets 0x1b7b4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x1b5a8 targets 0x1b7b8, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1b5c8 targets 0x1b800, is taken when a3(=[[-0x3fe8]:8+1352]:1) == a4(=0x3), and falls through when a3(=[[-0x3fe8]:8+1352]:1) != a4(=0x3).
  The `beq` branch at 0x1b5f4 targets 0x1b4c8 and is always taken.
  The `beq` branch at 0x1b608 targets 0x1b40c and is always taken.
  The `bne` branch at 0x1b640 targets 0x1b3e4, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1b66c targets 0x1b404 and is always taken.
  The `beq` branch at 0x1b68c targets 0x1b4c8 and is always taken.
  The `bne` branch at 0x1b694 targets 0x1b350, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1b69c targets 0x1b35c and is always taken.
  The `beq` branch at 0x1b6c0 targets 0x1b4c8 and is always taken.
  The `beq` branch at 0x1b700 targets 0x1b4c8 and is always taken.
  The `beq` branch at 0x1b744 targets 0x1b4c8 and is always taken.
  The `beq` branch at 0x1b788 targets 0x1b4c8 and is always taken.
  The `beq` branch at 0x1b7ac targets 0x1b4c8 and is always taken.
  The `beq` branch at 0x1b7f8 targets 0x1b4c8 and is always taken.
  The `beq` branch at 0x1b810 targets 0x1b5e4 and is always taken.
  The return at 0x1b4dc has v0 = one of ret(store_fpcsr), ret(add).
  The instructions from 0x1b538 to 0x1b538 are not reached by any path from the entry, and their branches are not listed.
- `add` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b818 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b818-0x1bd88 (1392 bytes).
  It occupies 1392 bytes.
  The `lw` at 0x1b844 loads 4 bytes from ((a0 << 0x2) + sym(EXP_INF)) +0x0.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x1b87c, `ld` at 0x1b894, `ld` at 0x1b8f0.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x1b884, `lw` at 0x1b898.
  The `sw` at 0x1b890 stores 4 bytes to [-0x3fe8]:8 +0x53c.
  2 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x548, including `lbu` at 0x1b8f4, `lbu` at 0x1bb24.
  7 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0, including `lw` at 0x1b908, `lw` at 0x1bb38, `lw` at 0x1bb7c.
  The `ld` at 0x1ba04 loads 8 bytes from ((a0 << 0x3) + sym(round)) +0x0.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0, including `lw` at 0x1ba50, `lw` at 0x1ba7c.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(IMP_1BIT)) +0x0, including `ld` at 0x1ba58, `ld` at 0x1ba70.
  5 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0, including `lw` at 0x1bb84, `lw` at 0x1bbd8, `lw` at 0x1bc44.
  The `ld` at 0x1bbc0 loads 8 bytes from (sym(QUIETNAN) + (a0 << 0x3)) +0x0.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(renorm)) +0x0, including `ld` at 0x1bcc4, `ld` at 0x1bcf4.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_MIN)) +0x0, including `lw` at 0x1bcd8, `lw` at 0x1bd08.
  The `jal` at 0x1b8a8 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=0x10040, a3=a3 at entry (arg3).
  The `jal` at 0x1b8b0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b91c calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1b924 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b9c8 calls renorm_d with a0=sp-144, a1=?, a2=?, a3=?.
  The `jalr` at 0x1ba0c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1bb4c calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=sym(SIGN_SHIFT).
  The `jal` at 0x1bb54 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1bb98 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=a3 at entry (arg3), a4=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1bba0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1bbbc calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=a3 at entry (arg3).
  The `jal` at 0x1bbc4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1bbf8 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1bc00 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1bc64 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1bc6c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1bca4 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1bcac calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1bcc8 calls (unknown callee) with a0=sp-40, a1=a1 at entry (arg1), a2=[((a0 << 0x3) + sym(renorm))]:8, a3=a3 at entry (arg3).
  The `jalr` at 0x1bcf8 calls (unknown callee) with a0=sp-16, a1=sym(IMP_1BIT), a2=?, a3=?.
  The `jal` at 0x1bd5c calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1bd64 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1b864 targets 0x1b8c0, is taken when v0(=[((a0 << 0x2) + sym(EXP_INF))]) != a2, and falls through when v0(=[((a0 << 0x2) + sym(EXP_INF))]) == a2.
  The `bne` branch at 0x1b86c targets 0x1bc3c, is taken when v0(=[((a0 << 0x2) + sym(EXP_INF))]) != a5, and falls through when v0(=[((a0 << 0x2) + sym(EXP_INF))]) == a5.
  The `beq` branch at 0x1b874 targets 0x1bbd4, is taken when a1 == a4, and falls through when a1 != a4.
  The `beq` branch at 0x1b8a0 targets 0x1bbb0, is taken when (v1(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (v1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x1b8b8 targets 0x1ba18 and is always taken.
  The `beq` branch at 0x1b8c0 targets 0x1bc7c, is taken when v0(=[((a0 << 0x2) + sym(EXP_INF))]) == a5, and falls through when v0(=[((a0 << 0x2) + sym(EXP_INF))]) != a5.
  The `beq` branch at 0x1b8c8 targets 0x1bb08, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x1b8d0 targets 0x1bb64, is taken when s0(=a5) == 0, and falls through when s0(=a5) != 0.
  The `beq` branch at 0x1b8d8 targets 0x1ba3c, is taken when s2(=a1) == s3(=a4), and falls through when s2(=a1) != s3(=a4).
  The `bne` branch at 0x1b8e0 targets 0x1ba3c, is taken when s1(=a2) != s0(=a5), and falls through when s1(=a2) == s0(=a5).
  The `bne` branch at 0x1b8e8 targets 0x1ba3c, is taken when a6 != a3, and falls through when a6 == a3.
  The `beq` branch at 0x1b904 targets 0x1bd18, is taken when v1(=[[-0x3fe8]:8+1352]:1) == a0(=0x3), and falls through when v1(=[[-0x3fe8]:8+1352]:1) != a0(=0x3).
  The `beq` branch at 0x1b92c targets 0x1ba18 and is always taken.
  The `beq` branch at 0x1b950 targets 0x1baf8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1b96c targets 0x1b990, is taken when s2(=a1) == s3(=a4), and falls through when s2(=a1) != s3(=a4).
  The `beq` branch at 0x1b994 targets 0x1bc24, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1b9a8 targets 0x1b9c8, is taken when (a2(?) & a6(=0xffe0000000000000)) == 0, and falls through when (a2(?) & a6(=0xffe0000000000000)) != 0.
  The `beq` branch at 0x1b9d4 targets 0x1b9fc, is taken when v0(=ret(renorm_d)) == 0, and falls through when v0(=ret(renorm_d)) != 0.
  The `beq` branch at 0x1ba3c targets 0x1bcbc, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `beq` branch at 0x1ba64 targets 0x1bcec, is taken when s0(=a5) == 0, and falls through when s0(=a5) != 0.
  The `beq` branch at 0x1ba8c targets 0x1bc10, is taken when s5(=a0) == 0, and falls through when s5(=a0) != 0.
  The `beq` branch at 0x1ba9c targets 0x1baa8, is taken when s0(?) >= v0(?) (signed), and falls through when s0(?) < v0(?) (signed).
  The `beq` branch at 0x1bab0 targets 0x1bac0, is taken when s1(?) >= v0(?) (signed), and falls through when s1(?) < v0(?) (signed).
  The `bne` branch at 0x1bac0 targets 0x1bae0, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x1bac8 targets 0x1b938, is taken when s1(?) != s0(?), and falls through when s1(?) == s0(?).
  The `bne` branch at 0x1bad4 targets 0x1b938, is taken when a3(?) < a6(?) (unsigned), and falls through when a3(?) >= a6(?) (unsigned).
  The `beq` branch at 0x1baf0 targets 0x1b94c and is always taken.
  The `beq` branch at 0x1baf8 targets 0x1b990, is taken when s2(=a1) == s3(=a4), and falls through when s2(=a1) != s3(=a4).
  The `beq` branch at 0x1bb00 targets 0x1b978 and is always taken.
  The `bne` branch at 0x1bb08 targets 0x1b8d0, is taken when a3 != 0, and falls through when a3 == 0.
  The `bne` branch at 0x1bb10 targets 0x1bd30, is taken when a5 != 0, and falls through when a5 == 0.
  The `bne` branch at 0x1bb18 targets 0x1bd30, is taken when a6 != 0, and falls through when a6 == 0.
  The `beq` branch at 0x1bb34 targets 0x1bd74, is taken when v1(=[[-0x3fe8]:8+1352]:1) == a0(=0x3), and falls through when v1(=[[-0x3fe8]:8+1352]:1) != a0(=0x3).
  The `beq` branch at 0x1bb5c targets 0x1ba18 and is always taken.
  The `bne` branch at 0x1bb64 targets 0x1b8d8, is taken when a6 != 0, and falls through when a6 == 0.
  The `beq` branch at 0x1bba8 targets 0x1ba18 and is always taken.
  The `beq` branch at 0x1bbcc targets 0x1ba18 and is always taken.
  The `beq` branch at 0x1bc08 targets 0x1ba18 and is always taken.
  The `beq` branch at 0x1bc1c targets 0x1ba94 and is always taken.
  The `beq` branch at 0x1bc34 targets 0x1b99c and is always taken.
  The `beq` branch at 0x1bc74 targets 0x1ba18 and is always taken.
  The `beq` branch at 0x1bcb4 targets 0x1ba18 and is always taken.
  The `bne` branch at 0x1bce4 targets 0x1ba6c, is taken when s0(=a5) != 0, and falls through when s0(=a5) == 0.
  The `beq` branch at 0x1bd10 targets 0x1ba8c and is always taken.
  The `beq` branch at 0x1bd24 targets 0x1b91c and is always taken.
  The `beq` branch at 0x1bd6c targets 0x1ba18 and is always taken.
  The `beq` branch at 0x1bd80 targets 0x1bb4c and is always taken.
  The return at 0x1ba34 has v0 = one of ret(store_fpcsr), ret(?).
  The instructions from 0x1b934 to 0x1b934 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1bd2c to 0x1bd2c are not reached by any path from the entry, and their branches are not listed.
- `VEC_tlbmod` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bd90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bd90-0x1bdd0 (64 bytes).
  It occupies 64 bytes.
  The `ld` at 0x1bd90 loads 8 bytes from ?.
  The `ld` at 0x1bdcc loads 8 bytes from a0 (arg0 at entry) +0x118.
  The `jal` at 0x1bda0 calls tlbmod with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x1bdb8).
  Calls soft_trap via direct with a0=a0 at entry (arg0), a1=ret(tlbmod), a2=?, a3=[a0+280]:8 (`j` at 0x1bdc8).
  The `bne` branch at 0x1bda8 targets 0x1bdc0, is taken when v0(=ret(tlbmod)) != 0, and falls through when v0(=ret(tlbmod)) == 0.
- `readadapters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bdd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bdd0-0x1bdd8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1bdd0 has v0 = 0x0.
- `pio_mapalloc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bdd8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bdd8-0x1bde0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1bdd8 has v0 = 0x0.
- `pio_mapaddr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bde0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bde0-0x1bde8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1bde0 has v0 = 0x0.
- `pio_mapfree` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bde8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bde8-0x1bdf0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1bde8 has v0 = ?.
- `VEC_ibe` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bdf0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bdf0-0x1be60 (112 bytes).
  It occupies 112 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1bdf0, `ld` at 0x1bdf4.
  The `sd` at 0x1be08 stores 8 bytes to ?.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff50000, including `ld` at 0x1be10, `ld` at 0x1be44.
  The `ld` at 0x1be28 loads 8 bytes from ([0xffffffffaff50000]:8 << 0x3) -0x500f0000.
  The `sd` at 0x1be3c stores 8 bytes to ([0xffffffffaff50000]:8 << 0x3) -0x500f0000.
  The `ld` at 0x1be4c loads 8 bytes from abs 0xffffffffb8000000.
  The `lh` at 0x1be54 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `sd` at 0x1be5c stores 8 bytes to a0 (arg0 at entry) +0x140.
  Calls VEC_trap via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3) (`j` at 0x1be58).
  The `bgez` branch at 0x1bdf8 targets 0x1be04, is taken when ra(?) >= 0 (signed), and falls through when ra(?) < 0 (signed).
- `btool_size` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1be60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1be60-0x1be68 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1be60 has v0 = 0x0.
- `btool_getinfo` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1be68 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1be68-0x1be70 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1be68 has v0 = 0x16.
- `btool_reinit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1be70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1be70-0x1be78 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1be70 has v0 = ?.
- `other_prda` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1be80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1be80-0x1be9c (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0x1be84 loads 4 bytes from a0 (arg0 at entry) +0x800.
  The `sw` at 0x1be90 stores 4 bytes to a0 (arg0 at entry) +0x800.
  The `beq` branch at 0x1be88 targets 0x1be94, is taken when at(=[a0+2048]) == v0(=[sym(.sbss)+280]), and falls through when at(=[a0+2048]) != v0(=[sym(.sbss)+280]).
  The return at 0x1be94 has v0 = [sym(.sbss)+280].
- `otherprda` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1be9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1be9c-0x1bee4 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x1beac stores 4 bytes to a0 (arg0 at entry) +0x800.
  The `jal` at 0x1bec0 calls get_host_id with a0=sp-80, a1=sp-16, a2=0x0, a3=a3 at entry (arg3).
  The `beq` branch at 0x1bea4 targets 0x1beb8, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1bedc targets 0x1beb0 and is always taken.
  The return at 0x1beb0 has v0 = ?.
- `getrand` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xd30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xd30-0xd3c (12 bytes).
  It occupies 12 bytes.
  The return at 0xd34 has v0 = ?.
- `tlbgetrand` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xd30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xd30-0xd3c (12 bytes).
  It occupies 12 bytes.
  The return at 0xd34 has v0 = ?.
- `he_arcs_set_vectors` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10b4-0x10c0 (12 bytes).
  It occupies 12 bytes.
  The return at 0x10b8 has v0 = ?.
- `restart` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10c0-0x1238 (376 bytes).
  It occupies 376 bytes.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x10f4, `lh` at 0x111c.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1100, `sd` at 0x1128.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc428, including `lh` at 0x1198, `lh` at 0x1234.
  The `sd` at 0x121c stores 8 bytes to abs 0x9200000001680010.
  The `sd` at 0x1228 stores 8 bytes to abs 0x9200000001680008.
  The `jal` at 0x114c calls us_delay with a0=0xf4240, a1=?, a2=0x9200000001e10000, a3=sym(compact_to_nasid_node).
  The `jal` at 0x1178 calls get_elsc with a0=?, a1=?, a2=[sym(power_off_flag)], a3=?.
  The `jal` at 0x1180 calls sc_power_down_all with a0=ret(get_elsc), a1=?, a2=?, a3=?.
  The `jal` at 0x1188 calls us_delay with a0=0x2dc6c0, a1=?, a2=?, a3=?.
  The `jal` at 0x11b8 calls ni_reset_port with a0=?, a1=?, a2=[sym(power_off_flag)], a3=?.
  The `jal` at 0x11d0 calls get_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11dc calls elsc_init with a0=sp-2416, a1=ret(get_nasid), a2=?, a3=?.
  The `jal` at 0x11e4 calls elsc_system_reset with a0=sp-2416, a1=?, a2=?, a3=?.
  The `jal` at 0x1200 calls printf with a0=sym(.rodata)+120, a1=?, a2=?, a3=?.
  The `jal` at 0x1208 calls us_delay with a0=0xf4240, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10d8 targets 0x11c8, is taken when at(=[sym(panic_level)]) == 0, and falls through when at(=[sym(panic_level)]) != 0.
  The `blez` branch at 0x10e0 targets 0x1144, is taken when a4(=[sym(maxnodes)]) <= 0 (signed), and falls through when a4(=[sym(maxnodes)]) > 0 (signed).
  The `beq` branch at 0x1110 targets 0x1140, is taken when s0(?) >= v0(=[sym(maxnodes)]) (signed), and falls through when s0(?) < v0(=[sym(maxnodes)]) (signed).
  The `bne` branch at 0x1138 targets 0x10f0, is taken when s0(?) < a1(=[sym(maxnodes)]) (signed), and falls through when s0(?) >= a1(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x1160 targets 0x11d0, is taken when t8(=[sym(reboot_on_panic)]) == t9(=0x2), and falls through when t8(=[sym(reboot_on_panic)]) != t9(=0x2).
  The `beq` branch at 0x1168 targets 0x122c and is always taken.
  The `beq` branch at 0x1170 targets 0x11b8, is taken when a2(=[sym(power_off_flag)]) == 0, and falls through when a2(=[sym(power_off_flag)]) != 0.
  The `beq` branch at 0x11a0 targets 0x1170, is taken when ra(=[-0x3bd8]:2) == at(=[sym(master_procid)]:2), and falls through when ra(=[-0x3bd8]:2) != at(=[sym(master_procid)]:2).
  The `bgtz` branch at 0x11a8 targets 0x1170, is taken when s0(?) > 0 (signed), and falls through when s0(?) <= 0 (signed).
  The `beq` branch at 0x11b0 targets 0x1188 and is always taken.
  The `beq` branch at 0x11c0 targets 0x1188 and is always taken.
  The `beq` branch at 0x11c8 targets 0x10e0 and is always taken.
  The `bltz` branch at 0x11ec targets 0x1200, is taken when v0(=ret(elsc_system_reset)) < 0 (signed), and falls through when v0(=ret(elsc_system_reset)) >= 0 (signed).
  The `beq` branch at 0x1224 targets 0x11f0 and is always taken.
  The `beq` branch at 0x1230 targets 0x119c and is always taken.
  The return at 0x11f8 has v0 = one of ret(elsc_system_reset), ?.
- `he_arcs_restart` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1238 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1238-0x1258 (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0x1244 calls restart [0x10c0] with a0=0xead0030, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1250 has v0 = ret(restart).
- `he_arcs_reboot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1258 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1258-0x1278 (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0x1264 calls restart [0x10c0] with a0=0xead0040, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1270 has v0 = ret(restart).
- `he_arcs_write` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1278 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1278-0x129c (36 bytes).
  It occupies 36 bytes.
  The `sd` at 0x1278 stores 8 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0x1284 calls ducons_write with a0=a0 at entry (arg0), a1=(a1 << 0x0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1294 has v0 = 0x0.
- `hub_widget_id` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x129c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x129c-0x12b4 (24 bytes).
  It occupies 24 bytes.
  The `ld` at 0x12a8 loads 8 bytes from (a0 << 0x21) -0x6dfffffffe3fffe0.
  The return at 0x12ac has v0 = ?.
- `get_nasid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12b4-0x12d0 (28 bytes).
  It occupies 28 bytes.
  The `ld` at 0x12b8 loads 8 bytes from abs 0x9200000001600000.
  The return at 0x12c8 has v0 = ?.
- `get_slice` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12d0-0x12e0 (16 bytes).
  It occupies 16 bytes.
  The `ld` at 0x12d4 loads 8 bytes from abs 0x9200000001000020.
  The return at 0x12d8 has v0 = ([0x9200000001000020]:8 << 0x0).
- `is_fine_dirmode` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12e0-0x12f8 (24 bytes).
  It occupies 24 bytes.
  The `ld` at 0x12e4 loads 8 bytes from abs 0x9200000001600000.
  The return at 0x12f0 has v0 = ?.
- `get_hub_chiprev` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12f8-0x1314 (28 bytes).
  It occupies 28 bytes.
  The `ld` at 0x1304 loads 8 bytes from (a0 << 0x21) -0x6dfffffffe200000.
  The return at 0x130c has v0 = ?.
- `verify_snchip_rev` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1314 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1314-0x13b4 (160 bytes).
  It occupies 160 bytes.
  The `lh` at 0x1368 loads 2 bytes from ?.
  The `jal` at 0x1364 calls get_hub_chiprev with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x132c targets 0x13a8, is taken when at(=[sym(.sdata)+12]) == 0, and falls through when at(=[sym(.sdata)+12]) != 0.
  The `blez` branch at 0x1334 targets 0x138c, is taken when v0(=[sym(maxnodes)]) <= 0 (signed), and falls through when v0(=[sym(maxnodes)]) > 0 (signed).
  The `beq` branch at 0x1340 targets 0x1360 and is always taken.
  The `beq` branch at 0x1348 targets 0x1380, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1358 targets 0x138c, is taken when s0(?) >= a2(=[sym(maxnodes)]) (signed), and falls through when s0(?) < a2(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x1378 targets 0x1348, is taken when a1(=(ret(get_hub_chiprev) << 0x0)) >= a3(=[sym(.sdata)+8]) (signed), and falls through when a1(=(ret(get_hub_chiprev) << 0x0)) < a3(=[sym(.sdata)+8]) (signed).
  The `beq` branch at 0x1384 targets 0x1350 and is always taken.
  The `beq` branch at 0x13ac targets 0x1390 and is always taken.
  The return at 0x13a0 has v0 = one of ?, [sym(.sdata)+8].
- `ni_reset_port` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13b4-0x13d0 (28 bytes).
  It occupies 28 bytes.
  The `sd` at 0x13c0 stores 8 bytes to abs 0x9200000001680010.
  The `sd` at 0x13cc stores 8 bytes to abs 0x9200000001680008.
  The return at 0x13c8 has v0 = 0x9200000001680008.
- `set_sn12_type` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13d0-0x14fc (300 bytes).
  It occupies 300 bytes.
  The `lbu` at 0x13d8 loads 1 byte from (a0 + sym(.bss)) +0x80.
  3 such `ld` accesses load 8 bytes from (a0 << 0x21) -0x6fffffffcc000000, including `ld` at 0x1408, `ld` at 0x1424, `ld` at 0x1438.
  The `sb` at 0x1420 stores 1 byte to (a0 + sym(.bss)) +0x80.
  5 such `sb` accesses store 1 byte to (a0 + sym(.bss)) +0x0, including `sb` at 0x14a4, `sb` at 0x14b4, `sb` at 0x14c0.
  The `jal` at 0x144c calls elsc_cbrick_type_get with a0=a0 at entry (arg0), a1=sp-32, a2=?, a3=0xc000.
  The `jal` at 0x14ec calls cmn_err with a0=0x4, a1=sym(.rodata)+168, a2=a0 at entry (arg0), a3=ret(elsc_cbrick_type_get), a5=0x38, a6=0x39, a7=0x51.
  The `beq` branch at 0x13e8 targets 0x13fc, is taken when at(=[(a0 + sym(.bss))+128]:1) == 0, and falls through when at(=[(a0 + sym(.bss))+128]:1) != 0.
  The `beq` branch at 0x141c targets 0x13f0, is taken when v1(?) == a1(=0x8000), and falls through when v1(?) != a1(=0x8000).
  The `beq` branch at 0x1430 targets 0x13f0, is taken when a1(?) == a2(=0x4000), and falls through when a1(?) != a2(=0x4000).
  The `beq` branch at 0x1440 targets 0x13f0, is taken when a2(?) == a3(=0xc000), and falls through when a2(?) != a3(=0xc000).
  The `bltz` branch at 0x1468 targets 0x14e0, is taken when v0(=ret(elsc_cbrick_type_get)) < 0 (signed), and falls through when v0(=ret(elsc_cbrick_type_get)) >= 0 (signed).
  The `beq` branch at 0x1474 targets 0x14a8, is taken when v0(?) == a2(=0x37), and falls through when v0(?) != a2(=0x37).
  The `beq` branch at 0x147c targets 0x14b8, is taken when v0(?) == a5(=0x38), and falls through when v0(?) != a5(=0x38).
  The `beq` branch at 0x1484 targets 0x14c4, is taken when v0(?) == a6(=0x39), and falls through when v0(?) != a6(=0x39).
  The `beq` branch at 0x148c targets 0x14d4, is taken when v0(?) == a3(=0x30), and falls through when v0(?) != a3(=0x30).
  The `bne` branch at 0x1494 targets 0x13f0, is taken when v0(?) != a7(=0x51), and falls through when v0(?) == a7(=0x51).
  The `beq` branch at 0x14a0 targets 0x13f0 and is always taken.
  The `beq` branch at 0x14b0 targets 0x13f0 and is always taken.
  The `beq` branch at 0x14bc targets 0x13f0 and is always taken.
  The `beq` branch at 0x14cc targets 0x13f0 and is always taken.
  The `beq` branch at 0x14d8 targets 0x13f0 and is always taken.
  The `beq` branch at 0x14f4 targets 0x13f0 and is always taken.
  The return at 0x13f4 has v0 = one of ?, (a0 << 0x21)+0x9000000034000000, ret(cmn_err).
- `get_chimera_type` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x14fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x14fc-0x1560 (100 bytes).
  It occupies 100 bytes.
  The `lbu` at 0x150c loads 1 byte from (a0 + sym(.bss)) +0x80.
  The `lbu` at 0x152c loads 1 byte from (a0 + sym(.bss)) +0x0.
  The `jal` at 0x1548 calls cmn_err with a0=0x4, a1=sym(.rodata)+168, a2=a0 at entry (arg0), a3=ra at entry, a5=sym(.bss).
  The `jal` at 0x1550 calls set_sn12_type with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1518 targets 0x1538, is taken when at(=[(a0 + sym(.bss))+128]:1) == 0, and falls through when at(=[(a0 + sym(.bss))+128]:1) != 0.
  The `beq` branch at 0x1558 targets 0x1520 and is always taken.
  The return at 0x1530 has v0 = [(a0 + sym(.bss))]:1.
- `silence_all_audio` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1c58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1c58-0x1c60 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1c58 has v0 = ?.
- `silence_bell` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1c58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1c58-0x1c60 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1c58 has v0 = ?.
- `clear_promlog` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20f8-0x2144 (76 bytes).
  It occupies 76 bytes.
  The `lh` at 0x2124 loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  The `jal` at 0x2120 calls ip27log_setup with a0=sp-256, a1=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a2=one of 0x1, 0x10, a3=(a0 + a0), a4=a1 at entry (arg1), a5=0x1.
  The `bltz` branch at 0x2128 targets 0x213c, is taken when v0(=ret(ip27log_setup)) < 0 (signed), and falls through when v0(=ret(ip27log_setup)) >= 0 (signed).
  The `beq` branch at 0x213c targets 0x2134 and is always taken.
  The return at 0x2134 has v0 = one of 0x0, 0x1.
- `get_prom_messages` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2144 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2144-0x2324 (480 bytes).
  It occupies 480 bytes.
  The `ld` at 0x2148 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x2150 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x216c loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  The `lh` at 0x217c loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  The `lw` at 0x2184 loads 4 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8c80.
  The `sb` at 0x2190 stores 1 byte to a2 (arg2 at entry) +0x0.
  The `jal` at 0x2198 calls ip27log_setup with a0=sp-368, a1=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a2=0x0, a3=(a0 + a0), a4=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968], a5=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8, a6=(a0 << 0x3).
  The `jal` at 0x21b4 calls promlog_first with a0=sp-368, a1=0x3, a2=?, a3=?.
  The `jal` at 0x21c4 calls promlog_get with a0=sp-368, a1=sp-120, a2=sp-104, a3=?.
  The `jal` at 0x21f8 calls sprintf with a0=?, a1=sym(.rodata)+304, a2=?, a3=sp-120, a4=sp-104.
  The `jal` at 0x2200 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2214 calls promlog_next with a0=sp-368, a1=0x3, a2=?, a3=?.
  The `jal` at 0x2224 calls promlog_get with a0=sp-368, a1=sp-120, a2=sp-104, a3=?.
  The `jal` at 0x223c calls strncmp with a0=sp-120, a1=sym(.rodata)+304, a2=0xe, a3=?.
  The `jal` at 0x2258 calls sprintf with a0=?, a1=sym(.rodata)+304, a2=sp-104, a3=?.
  The `jal` at 0x2294 calls promlog_last with a0=sp-368, a1=0x3, a2=?, a3=?.
  The `jal` at 0x22a8 calls promlog_prev with a0=sp-368, a1=0x3, a2=?, a3=?.
  The `jal` at 0x22c0 calls promlog_get with a0=sp-368, a1=sp-120, a2=sp-104, a3=?.
  The `jal` at 0x22d8 calls strncmp with a0=sp-104, a1=sym(.rodata)+584, a2=0x2f, a3=?.
  The `jal` at 0x22e8 calls promlog_next with a0=sp-368, a1=0x3, a2=?, a3=?.
  The `jal` at 0x2304 calls sprintf with a0=a2 at entry (arg2), a1=sym(.rodata)+304, a2=?, a3=?.
  The `jal` at 0x230c calls strlen with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `bltz` branch at 0x21a4 targets 0x22f8, is taken when v0(=ret(ip27log_setup)) < 0 (signed), and falls through when v0(=ret(ip27log_setup)) >= 0 (signed).
  The `beq` branch at 0x21ac targets 0x2294, is taken when s0(=a1) == 0, and falls through when s0(=a1) != 0.
  The `bltz` branch at 0x21cc targets 0x2288, is taken when v0(=ret(promlog_get)) < 0 (signed), and falls through when v0(=ret(promlog_get)) >= 0 (signed).
  The `beq` branch at 0x21d4 targets 0x2230 and is always taken.
  The `bltz` branch at 0x222c targets 0x2268, is taken when v0(=ret(promlog_get)) < 0 (signed), and falls through when v0(=ret(promlog_get)) >= 0 (signed).
  The `bne` branch at 0x2244 targets 0x21dc, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x2260 targets 0x2200 and is always taken.
  The `beq` branch at 0x228c targets 0x2268 and is always taken.
  The `bltz` branch at 0x229c targets 0x231c, is taken when v0(=ret(promlog_last)) < 0 (signed), and falls through when v0(=ret(promlog_last)) >= 0 (signed).
  The `bltz` branch at 0x22b0 targets 0x22e8, is taken when v0(=ret(promlog_prev)) < 0 (signed), and falls through when v0(=ret(promlog_prev)) >= 0 (signed).
  The `bltz` branch at 0x22c8 targets 0x22e8, is taken when v0(=ret(promlog_get)) < 0 (signed), and falls through when v0(=ret(promlog_get)) >= 0 (signed).
  The `bne` branch at 0x22e0 targets 0x22a4, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x22f0 targets 0x21bc and is always taken.
  The `beq` branch at 0x2314 targets 0x2268 and is always taken.
  The `beq` branch at 0x231c targets 0x2268 and is always taken.
  The return at 0x2280 has v0 = one of ?, 0x0, (ret(strlen) << 0x0), 0x1.
- `insert_log_sync` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2324 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2324-0x2344 (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0x2330 calls ip27log_printf_nasid with a0=a0 at entry (arg0), a1=0x0, a2=sym(.rodata)+584, a3=a3 at entry (arg3).
  The return at 0x233c has v0 = ret(ip27log_printf_nasid).
- `numalinkstats_up2date` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2344 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2344-0x2424 (224 bytes).
  It occupies 224 bytes.
  The `ld` at 0x2358 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x2368 loads 8 bytes from [-0x3c00]:8 +0x0.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x237c, `ld` at 0x2384, `ld` at 0x2390.
  The `ld` at 0x23d0 loads 8 bytes from abs 0x9200000001030100.
  The `ld` at 0x23d4 loads 8 bytes from abs 0x9200000001604200.
  The `blez` branch at 0x2350 targets 0x23d0, is taken when t3(=[sym(numnodes)]) <= 0 (signed), and falls through when t3(=[sym(numnodes)]) > 0 (signed).
  The `beq` branch at 0x2388 targets 0x23bc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x2394 targets 0x23b0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x23a4 targets 0x23b0, is taken when a4(?) >= a5(?) (unsigned), and falls through when a4(?) < a5(?) (unsigned).
  The `bne` branch at 0x23b4 targets 0x2390, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x23c8 targets 0x2378, is taken when a6(?) < t3(=[sym(numnodes)]) (signed), and falls through when a6(?) >= t3(=[sym(numnodes)]) (signed).
  The return at 0x241c has v0 = ?.
- `external_router_port` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2424 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2424-0x24c8 (164 bytes).
  It occupies 164 bytes.
  The `ld` at 0x2428 loads 8 bytes from a0 (arg0 at entry) +0x248.
  The `lh` at 0x2468 loads 2 bytes from (ret(find_first_component) + (a1 << 0x3)) +0x48.
  The `lw` at 0x247c loads 4 bytes from (ret(find_first_component) + (a1 << 0x3)) +0x4c.
  The `lh` at 0x249c loads 2 bytes from ?.
  The `lh` at 0x24a0 loads 2 bytes from a0 (arg0 at entry) +0x1f8.
  The `jal` at 0x2444 calls find_first_component with a0=[a0+584]:8, a1=0x9, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x1.
  The `beq` branch at 0x2438 targets 0x24ac, is taken when v0(=[a0+584]:8) == 0, and falls through when v0(=[a0+584]:8) != 0.
  The `beq` branch at 0x2450 targets 0x24b8, is taken when v0(=ret(find_first_component)) == 0, and falls through when v0(=ret(find_first_component)) != 0.
  The `beq` branch at 0x2470 targets 0x24c0, is taken when a5(=[(ret(find_first_component) + (a1 << 0x3))+72]:2) == v1(=-0x1), and falls through when a5(=[(ret(find_first_component) + (a1 << 0x3))+72]:2) != v1(=-0x1).
  The `beq` branch at 0x24b8 targets 0x24b0 and is always taken.
  The `beq` branch at 0x24c0 targets 0x24b0 and is always taken.
  The return at 0x24b0 has v0 = one of ?, 0x1, 0x0.
- `get_router_invent_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24c8-0x25d8 (272 bytes).
  It occupies 272 bytes.
  The `ld` at 0x24e8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lbu` at 0x2554 loads 1 byte from a1 (arg1 at entry) +0x8.
  The `ld` at 0x259c loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `sw` at 0x25b0 stores 4 bytes to [a0]:8 +0x88.
  The `jal` at 0x2500 calls sprintf with a0=[a0]:8+12, a1=sym(.rodata)+616, a2=sym(.rodata)+616, a3=a3 at entry (arg3).
  The `jal` at 0x2530 calls sprintf with a0=sp-80, a1=sym(.rodata)+616, a2=?, a3=?.
  The `jal` at 0x253c calls strcat with a0=[a0]:8+12, a1=sp-80, a2=?, a3=?.
  The `jal` at 0x2580 calls strcat with a0=[a0]:8+12, a1=sym(.rodata)+616, a2=?, a3=?.
  The `jal` at 0x25c8 calls sprintf with a0=sp-80, a1=sym(.rodata)+616, a2=?, a3=?.
  The `beq` branch at 0x2514 targets 0x2554 and is always taken.
  The `beq` branch at 0x251c targets 0x25c0, is taken when s0(?) == s5(=0x8), and falls through when s0(?) != s5(=0x8).
  The `beq` branch at 0x254c targets 0x2578, is taken when s0(?) >= 0x9 (signed), and falls through when s0(?) < 0x9 (signed).
  The `bne` branch at 0x2564 targets 0x251c, is taken when (a2(=[a1+8]:1) & a3(?)) != 0, and falls through when (a2(=[a1+8]:1) & a3(?)) == 0.
  The `bne` branch at 0x2570 targets 0x2558, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x25d0 targets 0x253c and is always taken.
  The return at 0x25b8 has v0 = ret(strcat).
- `build_router_invent_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x25d8-0x266c (148 bytes).
  It occupies 148 bytes.
  The `lh` at 0x2600 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sb` at 0x261c stores 1 byte to ret(klhwg_invent_alloc) +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x210, including `lw` at 0x2630, `lw` at 0x2644.
  The `jal` at 0x25f0 calls mutex_spinlock with a0=a0+572, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2604 calls klhwg_invent_alloc with a0=[a0+2]:2, a1=0x6, a2=0x8c, a3=?.
  The `jal` at 0x2620 calls get_router_invent_info with a0=sp-48, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x2634 calls hwgraph_info_add_LBL with a0=[a0+528], a1=sym(.rodata)+616, a2=?, a3=?.
  The `jal` at 0x2648 calls hwgraph_info_export_LBL with a0=[a0+528], a1=sym(.rodata)+616, a2=0x8c, a3=?.
  The `jal` at 0x2658 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x260c targets 0x2650, is taken when v0(=ret(klhwg_invent_alloc)) == 0, and falls through when v0(=ret(klhwg_invent_alloc)) != 0.
  The return at 0x2664 has v0 = ret(mutex_spinunlock).
- `router_reg_read` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x266c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x266c-0x269c (48 bytes).
  It occupies 48 bytes.
  The `lh` at 0x2670 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `ld` at 0x267c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x268c loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `jal` at 0x2688 calls hub_vector_read with a0=[a0+2]:2, a1=[a0+24]:8, a2=[a0+32], a3=a1 at entry (arg1), a4=a2 at entry (arg2).
  The return at 0x2694 has v0 = ret(hub_vector_read).
- `router_reg_write` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x269c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x269c-0x26cc (48 bytes).
  It occupies 48 bytes.
  The `lh` at 0x26a0 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `ld` at 0x26ac loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x26bc loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `jal` at 0x26b8 calls hub_vector_write with a0=[a0+2]:2, a1=[a0+24]:8, a2=[a0+32], a3=a1 at entry (arg1), a4=a2 at entry (arg2).
  The return at 0x26c4 has v0 = ret(hub_vector_write).
- `router_set_leds` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x26cc-0x270c (64 bytes).
  It occupies 64 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x7, including `lbu` at 0x26cc, `lbu` at 0x26f0.
  The `lbu` at 0x26d0 loads 1 byte from a0 (arg0 at entry) +0x6.
  The `sb` at 0x26fc stores 1 byte to a0 (arg0 at entry) +0x6.
  The `jal` at 0x26f8 calls router_reg_write with a0=a0 at entry (arg0), a1=0x200, a2=[a0+7]:1, a3=a3 at entry (arg3).
  The `bne` branch at 0x26d8 targets 0x26f0, is taken when at(=[a0+6]:1) != v0(=[a0+7]:1), and falls through when at(=[a0+6]:1) == v0(=[a0+7]:1).
  The `beq` branch at 0x2704 targets 0x26e4 and is always taken.
  The return at 0x26e8 has v0 = one of 0x0, ret(router_reg_write).
- `router_decode_port_errors` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x270c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x270c-0x27bc (176 bytes).
  It occupies 176 bytes.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x270c, `ld` at 0x2728, `ld` at 0x2748.
  The `lw` at 0x2720 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0x2724 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x2734, `sw` at 0x2790.
  The `lw` at 0x2740 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `sw` at 0x2744 stores 4 bytes to a1 (arg1 at entry) +0x4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1c, including `sw` at 0x2750, `sw` at 0x27a4.
  The `lw` at 0x2760 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0x2764 stores 4 bytes to a1 (arg1 at entry) +0x8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x20, including `sw` at 0x2774, `sw` at 0x27b8.
  The `lw` at 0x2780 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x2794 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x27a8 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `beq` branch at 0x271c targets 0x2780, is taken when a5(=0xff) == a6(?), and falls through when a5(=0xff) != a6(?).
  The `beq` branch at 0x273c targets 0x2794, is taken when a5(=0xff) == a6(?), and falls through when a5(=0xff) != a6(?).
  The `beq` branch at 0x275c targets 0x27a8, is taken when a5(=0xff) == a6(?), and falls through when a5(=0xff) != a6(?).
  The `beq` branch at 0x278c targets 0x2738 and is always taken.
  The `beq` branch at 0x27a0 targets 0x2754 and is always taken.
  The return at 0x2778 has v0 = ?.
  The return at 0x27b4 has v0 = ?.
- `router_acquire_port_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x27bc-0x2a1c (608 bytes).
  It occupies 608 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x27f4, `lw` at 0x2910.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x7, including `lbu` at 0x2804, `lbu` at 0x29d4.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x7, including `sb` at 0x2814, `sb` at 0x2930, `sb` at 0x29e4.
  The `lbu` at 0x2834 loads 1 byte from a0 (arg0 at entry) +0x228.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2860, `ld` at 0x293c, `ld` at 0x2950.
  5 such `sh` accesses store 2 bytes to ?, including `sh` at 0x2880, `sh` at 0x2948, `sh` at 0x2998.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x1f8, including `lh` at 0x2898, `lh` at 0x28c8.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x4, including `lh` at 0x28a0, `lh` at 0x28cc.
  The `sd` at 0x28e8 stores 8 bytes to ?.
  The `lbu` at 0x2914 loads 1 byte from a0 (arg0 at entry) +0x6.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x29b4, `lhu` at 0x29c4.
  The `jal` at 0x28ac calls read_rr_reg with a0=[a0+4]:2, a1=[a0+504]:2, a2=(a1 + a1)-1, a3=?, a4=sp-336.
  The `jal` at 0x28d0 calls read_rr_reg with a0=[a0+4]:2, a1=[a0+504]:2, a2=?, a3=sp-80, a4=sp-336.
  The `jal` at 0x28e4 calls mutex_spinlock with a0=a0+572, a1=?, a2=?, a3=?.
  The `jal` at 0x2904 calls router_decode_port_errors with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x292c calls mutex_spinunlock with a0=a0+572, a1=?, a2=?, a3=[a0+7]:1.
  The `jal` at 0x2a0c calls mutex_spinunlock with a0=a0+572, a1=?, a2=[a0+552]:1, a3=?.
  The `beq` branch at 0x27ec targets 0x2894, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x27fc targets 0x2834, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x2808 targets 0x2914, is taken when s3(=a2) == 0, and falls through when s3(=a2) != 0.
  The `beq` branch at 0x283c targets 0x293c, is taken when v0(=0x1) == a2(=[a0+552]:1), and falls through when v0(=0x1) != a2(=[a0+552]:1).
  The `bne` branch at 0x287c targets 0x2848, is taken when v0(?) < 0x4 (signed), and falls through when v0(?) >= 0x4 (signed).
  The `beq` branch at 0x2884 targets 0x2a0c, is taken when s3(=a2) == 0, and falls through when s3(=a2) != 0.
  The `beq` branch at 0x288c targets 0x2818 and is always taken.
  The `beq` branch at 0x28b4 targets 0x29e8, is taken when v0(=ret(read_rr_reg)) == 0, and falls through when v0(=ret(read_rr_reg)) != 0.
  The `beq` branch at 0x28d8 targets 0x29f8, is taken when v0(=ret(read_rr_reg)) == 0, and falls through when v0(=ret(read_rr_reg)) != 0.
  The `beq` branch at 0x290c targets 0x27f8 and is always taken.
  The `beq` branch at 0x2934 targets 0x2818 and is always taken.
  The `beq` branch at 0x2944 targets 0x29b4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x29bc targets 0x29d4, is taken when t1(?) >= 0x14 (signed), and falls through when t1(?) < 0x14 (signed).
  The `bne` branch at 0x29cc targets 0x2884, is taken when t2(?) < 0x14 (signed), and falls through when t2(?) >= 0x14 (signed).
  The `beq` branch at 0x29e0 targets 0x2884 and is always taken.
  The `beq` branch at 0x29f0 targets 0x2818 and is always taken.
  The `beq` branch at 0x2a04 targets 0x2818 and is always taken.
  The `beq` branch at 0x2a14 targets 0x288c and is always taken.
  The return at 0x282c has v0 = one of 0x0, 0x1.
- `router_acquire_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2a1c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2a1c-0x2b3c (288 bytes).
  It occupies 288 bytes.
  The `lbu` at 0x2a2c loads 1 byte from a0 (arg0 at entry) +0x239.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x8, including `lbu` at 0x2a74, `lbu` at 0x2ad4.
  The `lbu` at 0x2ad8 loads 1 byte from a0 (arg0 at entry) +0x7.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x7, including `sb` at 0x2ae8, `sb` at 0x2b30.
  The `ld` at 0x2b2c loads 8 bytes from abs 0x9200000001030100.
  The `sd` at 0x2b38 stores 8 bytes to a0 (arg0 at entry) +0x30.
  The `jal` at 0x2a44 calls mutex_spinlock with a0=a0+572, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2a9c calls mutex_spinunlock with a0=a0+572, a1=ret(mutex_spinlock), a2=?, a3=?, a7=[a0+8]:1.
  The `jal` at 0x2aac calls router_acquire_port_info with a0=a0 at entry (arg0), a1=?, a2=[a0+569]:1, a3=?.
  The `jal` at 0x2ab8 calls mutex_spinlock with a0=a0+572, a1=?, a2=?, a3=?.
  The `jal` at 0x2ae4 calls router_set_leds with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+8]:1.
  The `jal` at 0x2afc calls mutex_spinunlock with a0=a0+572, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x2a64 targets 0x2b28, is taken when s7(=[a0+569]:1) == 0, and falls through when s7(=[a0+569]:1) != 0.
  The `beq` branch at 0x2a70 targets 0x2a84 and is always taken.
  The `beq` branch at 0x2a7c targets 0x2ad8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x2a90 targets 0x2a78, is taken when (a7(=[a0+8]:1) & at(?)) == 0, and falls through when (a7(=[a0+8]:1) & at(?)) != 0.
  The `bne` branch at 0x2acc targets 0x2a70, is taken when s1(?) < 0x9 (signed), and falls through when s1(?) >= 0x9 (signed).
  The `beq` branch at 0x2b34 targets 0x2a6c and is always taken.
  The return at 0x2b20 has v0 = ?.
- `error_flag_to_type` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b3c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b3c-0x2b84 (72 bytes).
  It occupies 72 bytes.
  The `beq` branch at 0x2b58 targets 0x2b70, is taken when a0 == at(=0x1), and falls through when a0 != at(=0x1).
  The `beq` branch at 0x2b60 targets 0x2b70, is taken when a0 == a4(=0x2), and falls through when a0 != a4(=0x2).
  The `beq` branch at 0x2b68 targets 0x2b78, is taken when a0 == a5(=0x4), and falls through when a0 != a5(=0x4).
  The return at 0x2b70 has v0 = sym(.rodata)+616.
  The return at 0x2b7c has v0 = sym(.rodata)+616.
- `router_check_port` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2c5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2c5c-0x2d04 (168 bytes).
  It occupies 168 bytes.
  The `ld` at 0x2c6c loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2c74 loads 8 bytes from a0 (arg0 at entry) +0x30.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2cb4, `lw` at 0x2cd0.
  The `sw` at 0x2cf0 stores 4 bytes to ?.
  The `jal` at 0x2c88 calls external_router_port [0x2424] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2cb8 calls router_print_error [0x2b84] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1, a4=a1 at entry (arg1).
  The `jal` at 0x2cd4 calls router_print_error [0x2b84] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x4, a4=a1 at entry (arg1).
  The `beq` branch at 0x2ca0 targets 0x2cc4, is taken when v0(=ret(external_router_port)) == 0, and falls through when v0(=ret(external_router_port)) != 0.
  The return at 0x2cfc has v0 = ?.
- `router_check_errors` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d04 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d04-0x2d5c (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x2d28 calls router_check_port with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x2d38 targets 0x2d24, is taken when s0(?) < 0x9 (signed), and falls through when s0(?) >= 0x9 (signed).
  The return at 0x2d54 has v0 = ?.
- `router_port_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d5c-0x2e10 (180 bytes).
  It occupies 180 bytes.
  The `jal` at 0x2d90 calls router_reg_read with a0=a0 at entry (arg0), a1=?, a2=sp-48, a3=a3 at entry (arg3).
  The `jal` at 0x2db8 calls router_reg_write with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x140000.
  The `jal` at 0x2dcc calls router_reg_write with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=?.
  The `jal` at 0x2ddc calls router_reg_write with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=?.
  The `jal` at 0x2dec calls router_reg_read with a0=a0 at entry (arg0), a1=?, a2=sp-48, a3=?.
  The return at 0x2e08 has v0 = ret(router_reg_write).
- `router_port_hist_reselect` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e10-0x2f1c (268 bytes).
  It occupies 268 bytes.
  The `ld` at 0x2e10 loads 8 bytes from abs 0xffffffffffffc400.
  The `lh` at 0x2e14 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `ld` at 0x2e18 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x2e24 loads 8 bytes from ([[-0x3c00]:8]:8 + ([a0+2]:2 << 0x3)) +0x0.
  The `lh` at 0x2e38 loads 2 bytes from [([[-0x3c00]:8]:8 + ([a0+2]:2 << 0x3))]:8 +0x8596.
  The `jal` at 0x2e5c calls setnoderun with a0=[a0+2]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[a0+2]:2.
  The `jal` at 0x2ea0 calls router_reg_read with a0=a0 at entry (arg0), a1=?, a2=sp-64, a3=?.
  The `jal` at 0x2ecc calls router_reg_write with a0=a0 at entry (arg0), a1=?, a2=?, a3=(a2 << 0x12).
  The `jal` at 0x2ee0 calls router_reg_write with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=?.
  The `jal` at 0x2ef0 calls router_reg_write with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=?.
  The `jal` at 0x2f00 calls restorenoderun with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2e50 targets 0x2f10, is taken when at(=[[([[-0x3c00]:8]:8 + ([a0+2]:2 << 0x3))]:8+34198]:2) == v1(=-0x1), and falls through when at(=[[([[-0x3c00]:8]:8 + ([a0+2]:2 << 0x3))]:8+34198]:2) != v1(=-0x1).
  The return at 0x2f14 has v0 = one of 0x16, ?.
- `router_hist_reselect` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f1c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f1c-0x2fcc (176 bytes).
  It occupies 176 bytes.
  The `lbu` at 0x2f28 loads 1 byte from a0 (arg0 at entry) +0x228.
  The `sb` at 0x2f74 stores 1 byte to a0 (arg0 at entry) +0x228.
  The `ld` at 0x2fac loads 8 bytes from a0 (arg0 at entry) +0x250.
  The `lh` at 0x2fb8 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `jal` at 0x2f54 calls router_port_hist_reselect with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x2f98 calls net_errmsg with a0=ret(router_port_hist_reselect), a1=?, a2=?, a3=?.
  The `jal` at 0x2fbc calls cmn_err with a0=0x4, a1=sym(.rodata)+616, a2=[a0+2]:2, a3=[a0+592]:8, a5=ret(router_port_hist_reselect), a6=ret(net_errmsg).
  The `beq` branch at 0x2f44 targets 0x2f7c, is taken when a1 == at(=[a0+552]:1), and falls through when a1 != at(=[a0+552]:1).
  The `bne` branch at 0x2f5c targets 0x2f98, is taken when v0(=ret(router_port_hist_reselect)) != 0, and falls through when v0(=ret(router_port_hist_reselect)) == 0.
  The `bne` branch at 0x2f6c targets 0x2f50, is taken when s0(?) < 0x9 (signed), and falls through when s0(?) >= 0x9 (signed).
  The `beq` branch at 0x2fc4 targets 0x2f68 and is always taken.
  The return at 0x2f90 has v0 = 0x0.
- `router_set_fences` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2fcc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2fcc-0x3104 (312 bytes).
  It occupies 312 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x8, including `lbu` at 0x3034, `lbu` at 0x3088.
  The `sd` at 0x30d0 stores 8 bytes to a0 (arg0 at entry) +0x218.
  The `jal` at 0x2ff0 calls router_reg_read with a0=a0 at entry (arg0), a1=0x10, a2=sp-80, a3=a3 at entry (arg3).
  The `jal` at 0x3068 calls router_reg_read with a0=a0 at entry (arg0), a1=?, a2=sp-72, a3=?.
  The `jal` at 0x30b8 calls router_reg_write with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x30d8 calls router_reg_write with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `beq` branch at 0x3008 targets 0x3030 and is always taken.
  The `beq` branch at 0x3028 targets 0x30c8, is taken when s4(?) >= 0x9 (signed), and falls through when s4(?) < 0x9 (signed).
  The `beq` branch at 0x3040 targets 0x3010, is taken when (v1(=[a0+8]:1) & a0(?)) == 0, and falls through when (v1(=[a0+8]:1) & a0(?)) != 0.
  The `beq` branch at 0x3078 targets 0x3088 and is always taken.
  The `beq` branch at 0x3080 targets 0x30b4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x3098 targets 0x3080, is taken when (t8(=[a0+8]:1) & t9(?)) != 0, and falls through when (t8(=[a0+8]:1) & t9(?)) == 0.
  The `beq` branch at 0x30ac targets 0x3080 and is always taken.
  The `beq` branch at 0x30c0 targets 0x3020 and is always taken.
  The return at 0x30fc has v0 = ret(router_reg_write).
- `capture_router_stats` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3104 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3104-0x31c8 (196 bytes).
  It occupies 196 bytes.
  The `lbu` at 0x311c loads 1 byte from a0 (arg0 at entry) +0x239.
  The `sb` at 0x3130 stores 1 byte to a0 (arg0 at entry) +0x239.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x238, including `lbu` at 0x3134, `lbu` at 0x31c4.
  2 such `ld` accesses load 8 bytes from abs 0x9200000001030100, including `ld` at 0x3150, `ld` at 0x3170.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x238, including `sb` at 0x3154, `sb` at 0x3184.
  The `sd` at 0x315c stores 8 bytes to a0 (arg0 at entry) +0x230.
  The `ld` at 0x3168 loads 8 bytes from a0 (arg0 at entry) +0x230.
  The `jal` at 0x3114 calls router_acquire_info with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3140 calls router_check_errors [0x2d04] with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+569]:1, a4=0x9200000001030100.
  The `beq` branch at 0x3128 targets 0x31b8, is taken when a3(=[a0+569]:1) == 0, and falls through when a3(=[a0+569]:1) != 0.
  The `beq` branch at 0x3138 targets 0x3168, is taken when at(=[a0+568]:1) == 0, and falls through when at(=[a0+568]:1) != 0.
  The `beq` branch at 0x3148 targets 0x3188, is taken when v0(=ret(router_check_errors)) == 0, and falls through when v0(=ret(router_check_errors)) != 0.
  The `bne` branch at 0x3158 targets 0x3190, is taken when s1(=ret(router_acquire_info)) != 0, and falls through when s1(=ret(router_acquire_info)) == 0.
  The `beq` branch at 0x3160 targets 0x31a0 and is always taken.
  The `beq` branch at 0x317c targets 0x3188, is taken when v1(=[sym(router_print_usecs)]) >= a0(?) (unsigned), and falls through when v1(=[sym(router_print_usecs)]) < a0(?) (unsigned).
  The `beq` branch at 0x3188 targets 0x3160, is taken when s1(=ret(router_acquire_info)) == 0, and falls through when s1(=ret(router_acquire_info)) != 0.
  The `bne` branch at 0x31b8 targets 0x3130, is taken when v0(=ret(router_acquire_info)) != 0, and falls through when v0(=ret(router_acquire_info)) == 0.
  The `beq` branch at 0x31c0 targets 0x3138 and is always taken.
  The return at 0x31b0 has v0 = one of [sym(router_poll_ticks)], ?.
- `vertex_to_router_board_nasid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x31c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x31c8-0x3300 (312 bytes).
  It occupies 312 bytes.
  The `ld` at 0x31e4 loads 8 bytes from (a0 << 0x21) -0x6fffffffcc000000.
  The `ld` at 0x3218 loads 8 bytes from ((a0 << 0x21)+0x9600000000000000 | 0x2000) +0x48.
  The `lw` at 0x3224 loads 4 bytes from ?.
  The `lw` at 0x3264 loads 4 bytes from ret(find_lboard_class) +0x0.
  The `lbu` at 0x32b4 loads 1 byte from ret(find_lboard_class) +0x9.
  The `jal` at 0x323c calls find_lboard_class with a0=?, a1=0x31, a2=?, a3=?.
  The `jal` at 0x3288 calls find_lboard_class with a0=?, a1=0x31, a2=?, a3=?.
  The `jal` at 0x329c calls board_to_path with a0=ret(find_lboard_class), a1=sp-176, a2=?, a3=?.
  The `jal` at 0x32a4 calls hwgraph_path_to_vertex with a0=sp-176, a1=?, a2=?, a3=?.
  The `jal` at 0x32f0 calls chk_for_pebrick with a0=a0 at entry (arg0), a1=0xffffffffff, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=(a0 << 0x21)+0x9600000000000000, a5=(a0 << 0x21).
  The `beq` branch at 0x3210 targets 0x32f0, is taken when at(?) == v1(=0xc000), and falls through when at(?) != v1(=0xc000).
  The `beq` branch at 0x3230 targets 0x323c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x3248 targets 0x32cc, is taken when v0(=ret(find_lboard_class)) == 0, and falls through when v0(=ret(find_lboard_class)) != 0.
  The `beq` branch at 0x3258 targets 0x3298 and is always taken.
  The `beq` branch at 0x3268 targets 0x3288, is taken when v0(=[ret(find_lboard_class)]) == 0, and falls through when v0(=[ret(find_lboard_class)]) != 0.
  The `beq` branch at 0x3290 targets 0x32cc, is taken when v0(=ret(find_lboard_class)) == 0, and falls through when v0(=ret(find_lboard_class)) != 0.
  The `bne` branch at 0x32ac targets 0x3264, is taken when v0(=ret(hwgraph_path_to_vertex)) != s3(=a1), and falls through when v0(=ret(hwgraph_path_to_vertex)) == s3(=a1).
  The `bne` branch at 0x32bc targets 0x3264, is taken when (a1(=[ret(find_lboard_class)+9]:1) & 0x4) != 0, and falls through when (a1(=[ret(find_lboard_class)+9]:1) & 0x4) == 0.
  The `beq` branch at 0x32c4 targets 0x32d4 and is always taken.
  The `beq` branch at 0x32f8 targets 0x323c and is always taken.
  The return at 0x32e8 has v0 = one of ret(find_lboard_class), 0x0.
  The instructions from 0x3260 to 0x3260 are not reached by any path from the entry, and their branches are not listed.
- `vertex_to_router_board` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3300 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3300-0x3380 (128 bytes).
  It occupies 128 bytes.
  The `lh` at 0x333c loads 2 bytes from ?.
  The `jal` at 0x330c calls vertex_to_router_board_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3338 calls vertex_to_router_board_nasid with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x3314 targets 0x3364, is taken when v0(=ret(vertex_to_router_board_nasid)) != 0, and falls through when v0(=ret(vertex_to_router_board_nasid)) == 0.
  The `blez` branch at 0x3320 targets 0x3360, is taken when at(=[sym(numnodes)]) <= 0 (signed), and falls through when at(=[sym(numnodes)]) > 0 (signed).
  The `bne` branch at 0x3340 targets 0x3378, is taken when v0(=ret(vertex_to_router_board_nasid)) != 0, and falls through when v0(=ret(vertex_to_router_board_nasid)) == 0.
  The `bne` branch at 0x3358 targets 0x332c, is taken when s0(?) < a2(=[sym(numnodes)]) (signed), and falls through when s0(?) >= a2(=[sym(numnodes)]) (signed).
  The `beq` branch at 0x3378 targets 0x3368 and is always taken.
  The return at 0x3370 has v0 = one of ?, ret(vertex_to_router_board_nasid).
- `router_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3380 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3380-0x3890 (1296 bytes).
  It occupies 1296 bytes.
  The `ld` at 0x338c loads 8 bytes from a2 (arg2 at entry) +0x10.
  The `lw` at 0x33b4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  2 such `sd` accesses store 8 bytes to a2 (arg2 at entry) +0x18, including `sd` at 0x33cc, `sd` at 0x3828.
  The `sh` at 0x33fc stores 2 bytes to ret(kmem_zalloc_node) +0x2.
  The `sb` at 0x3408 stores 1 byte to ret(kmem_zalloc_node) +0x6.
  The `lh` at 0x3410 loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  The `sh` at 0x3414 stores 2 bytes to ret(kmem_zalloc_node) +0x4.
  The `ld` at 0x3418 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x341c loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x3428 loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  The `lw` at 0x343c loads 4 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8c80.
  The `sw` at 0x3440 stores 4 bytes to ret(kmem_zalloc_node) +0x20.
  The `sd` at 0x3444 stores 8 bytes to ret(kmem_zalloc_node) +0x18.
  The `sw` at 0x3448 stores 4 bytes to ret(kmem_zalloc_node) +0x22c.
  The `ld` at 0x344c loads 8 bytes from abs 0x9200000001030100.
  The `sw` at 0x3450 stores 4 bytes to ret(kmem_zalloc_node) +0x210.
  The `sd` at 0x3454 stores 8 bytes to ret(kmem_zalloc_node) +0x30.
  The `sd` at 0x3458 stores 8 bytes to ret(kmem_zalloc_node) +0x28.
  The `ld` at 0x345c loads 8 bytes from abs 0x9200000001604200.
  The `sb` at 0x34a0 stores 1 byte to ret(kmem_zalloc_node) +0x228.
  The `sd` at 0x34b0 stores 8 bytes to ret(kmem_zalloc_node) +0x220.
  3 such `ld` accesses load 8 bytes from ret(kmem_zalloc_node) +0x200, including `ld` at 0x34f8, `ld` at 0x375c, `ld` at 0x388c.
  2 such `sd` accesses store 8 bytes to ret(kmem_zalloc_node) +0x200, including `sd` at 0x3504, `sd` at 0x354c.
  2 such `ld` accesses load 8 bytes from ret(kmem_zalloc_node) +0x208, including `ld` at 0x3514, `ld` at 0x3558.
  The `sd` at 0x353c stores 8 bytes to ret(kmem_zalloc_node) +0x208.
  3 such `ld` accesses load 8 bytes from ret(kmem_zalloc_node) +0x10, including `ld` at 0x356c, `ld` at 0x357c, `ld` at 0x3690.
  The `sh` at 0x3578 stores 2 bytes to a2 (arg2 at entry) +0x4.
  2 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0xa, including `lbu` at 0x3594, `lbu` at 0x3830.
  The `sb` at 0x3598 stores 1 byte to ret(kmem_zalloc_node) +0x1fa.
  The `lh` at 0x359c loads 2 bytes from a2 (arg2 at entry) +0x8.
  The `sh` at 0x35a0 stores 2 bytes to ret(kmem_zalloc_node) +0x1f8.
  The `sd` at 0x35bc stores 8 bytes to ret(kmem_zalloc_node) +0x240.
  3 such `lh` accesses load 2 bytes from ret(kmem_zalloc_node) +0x4, including `lh` at 0x35c0, `lh` at 0x36fc, `lh` at 0x3848.
  The `sd` at 0x35d0 stores 8 bytes to ret(kmem_zalloc_node) +0x248.
  The `sd` at 0x35e4 stores 8 bytes to ret(kmem_zalloc_node) +0x250.
  The `lbu` at 0x35ec loads 1 byte from sym(.rodata) +0x4d4.
  The `lw` at 0x35f0 loads 4 bytes from sym(.rodata) +0x4d0.
  The `swl` at 0x35f4 stores 4 bytes to ?.
  The `swr` at 0x35f8 stores 4 bytes to ?.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x35fc, `sb` at 0x36e0.
  3 such `ld` accesses load 8 bytes from ret(kmem_zalloc_node) +0x250, including `ld` at 0x3604, `ld` at 0x3608, `ld` at 0x3860.
  2 such `ld` accesses load 8 bytes from ret(kmem_zalloc_node) +0x248, including `ld` at 0x360c, `ld` at 0x3618.
  The `lw` at 0x3628 loads 4 bytes from [ret(kmem_zalloc_node)+584]:8 +0x24.
  The `lw` at 0x364c loads 4 bytes from ?.
  The `sd` at 0x3674 stores 8 bytes to ?.
  2 such `sb` accesses store 1 byte to ret(kmem_zalloc_node) +0x8, including `sb` at 0x367c, `sb` at 0x36ac.
  The `lbu` at 0x36a4 loads 1 byte from ret(kmem_zalloc_node) +0x8.
  The `ld` at 0x36f0 loads 8 bytes from ret(kmem_zalloc_node) +0x18.
  The `sb` at 0x370c stores 1 byte to ret(kmem_zalloc_node) +0x0.
  The `jal` at 0x33bc calls kmem_zalloc_node with a0=0x2c0, a1=0x101, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jal` at 0x33dc calls hwgraph_info_add_LBL with a0=[a2], a1=sym(.rodata)+616, a2=ret(kmem_zalloc_node), a3=?.
  The `jal` at 0x33f0 calls spinlock_init with a0=ret(kmem_zalloc_node)+572, a1=sym(.rodata)+616, a2=?, a3=?.
  The `jal` at 0x34ac calls router_reg_read with a0=ret(kmem_zalloc_node), a1=0x0, a2=ret(kmem_zalloc_node)+16, a3=?, a6=0x3b9aca00, a7=[0x9200000001030100]:8.
  The `jal` at 0x34c4 calls router_reg_read with a0=ret(kmem_zalloc_node), a1=0x20, a2=ret(kmem_zalloc_node)+512, a3=?.
  The `jal` at 0x34d8 calls router_reg_read with a0=ret(kmem_zalloc_node), a1=0x28, a2=ret(kmem_zalloc_node)+520, a3=?.
  The `jal` at 0x3548 calls router_reg_write with a0=ret(kmem_zalloc_node), a1=0x20, a2=?, a3=-0x1e1, a5=0x40000000.
  The `jal` at 0x355c calls router_reg_write with a0=ret(kmem_zalloc_node), a1=0x28, a2=[ret(kmem_zalloc_node)+520]:8, a3=?.
  The `jal` at 0x35b0 calls kmem_alloc_node with a0=([sym(numnodes)] << 0x3), a1=0x101, a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x35c4 calls vertex_to_router_board with a0=[ret(kmem_zalloc_node)+4]:2, a1=[a2], a2=?, a3=?.
  The `jal` at 0x35d4 calls kern_malloc_node with a0=0x50, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x3600 calls strlen with a0=[ret(kmem_zalloc_node)+592]:8, a1=?, a2=?, a3=0x0, a4=0x2f68772f.
  The `jal` at 0x3610 calls board_to_path with a0=[ret(kmem_zalloc_node)+584]:8, a1=([ret(kmem_zalloc_node)+592]:8 + ret(strlen)), a2=?, a3=?.
  The `jal` at 0x36b4 calls router_port_init with a0=ret(kmem_zalloc_node), a1=?, a2=?, a3=?.
  The `jal` at 0x36e4 calls router_set_fences with a0=ret(kmem_zalloc_node), a1=?, a2=?, a3=?.
  The `jal` at 0x3700 calls eeprom_vertex_info_set with a0=0x200, a1=[ret(kmem_zalloc_node)+4]:2, a2=[a2], a3=[ret(kmem_zalloc_node)+24]:8, a4=0x0.
  The `jal` at 0x3710 calls build_router_invent_info with a0=ret(kmem_zalloc_node), a1=?, a2=?, a3=?.
  The `jal` at 0x3718 calls sndrv_attach with a0=[a2], a1=?, a2=?, a3=?.
  The `jal` at 0x3760 calls net_errmsg with a0=ret(router_port_init), a1=?, a2=?, a3=?.
  The `jal` at 0x3780 calls cmn_err with a0=0x4, a1=sym(.rodata)+616, a2=a0 at entry (arg0), a3=[a2], a5=ret(router_port_init), a6=ret(net_errmsg).
  The `jal` at 0x3790 calls net_errmsg with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x37a8 calls cmn_err with a0=0x1, a1=sym(.rodata)+616, a2=[a2], a3=0x1, a4=ret(net_errmsg).
  The `jal` at 0x37b8 calls net_errmsg with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x37d0 calls cmn_err with a0=0x1, a1=sym(.rodata)+616, a2=[a2], a3=0x1, a4=ret(net_errmsg).
  The `jal` at 0x37e0 calls net_errmsg with a0=ret(router_reg_read), a1=?, a2=?, a3=?.
  The `jal` at 0x3800 calls cmn_err with a0=0x1, a1=sym(.rodata)+616, a2=[a2], a3=a0 at entry (arg0), a4=[a2+16]:8, a5=ret(router_reg_read), a6=ret(net_errmsg).
  The `jal` at 0x3814 calls cmn_err with a0=0x4, a1=sym(.rodata)+616, a2=[a2], a3=?, a7=0x3017.
  The `jal` at 0x3824 calls kmem_free with a0=ret(kmem_zalloc_node), a1=0x2c0, a2=?, a3=?.
  The `jal` at 0x383c calls assfail with a0=sym(.rodata)+616, a1=sym(.rodata)+616, a2=0x46b, a3=?.
  The `jal` at 0x3854 calls assfail with a0=sym(.rodata)+616, a1=sym(.rodata)+616, a2=0x470, a3=?.
  The `jal` at 0x386c calls cmn_err with a0=0x4, a1=sym(.rodata)+616, a2=[a2], a3=?.
  The `jal` at 0x3880 calls cmn_err with a0=0x4, a1=sym(.rodata)+616, a2=[a2], a3=?.
  The `bne` branch at 0x34b4 targets 0x37e0, is taken when v0(=ret(router_reg_read)) != 0, and falls through when v0(=ret(router_reg_read)) == 0.
  The `bne` branch at 0x34cc targets 0x3790, is taken when v0(=ret(router_reg_read)) != 0, and falls through when v0(=ret(router_reg_read)) == 0.
  The `bne` branch at 0x34e0 targets 0x3790, is taken when v0(=ret(router_reg_read)) != 0, and falls through when v0(=ret(router_reg_read)) == 0.
  The `beq` branch at 0x34e8 targets 0x3758, is taken when t8(=[sym(craylnk_bypass_disable)]) == 0, and falls through when t8(=[sym(craylnk_bypass_disable)]) != 0.
  The `bne` branch at 0x34f0 targets 0x387c, is taken when t9(=[sym(kdebug)]:2) != 0, and falls through when t9(=[sym(kdebug)]:2) == 0.
  The `bne` branch at 0x3550 targets 0x37b8, is taken when v0(=ret(router_reg_write)) != 0, and falls through when v0(=ret(router_reg_write)) == 0.
  The `bne` branch at 0x3564 targets 0x37b8, is taken when v0(=ret(router_reg_write)) != 0, and falls through when v0(=ret(router_reg_write)) == 0.
  The `bne` branch at 0x358c targets 0x3810, is taken when a6(?) != a7(=0x3017), and falls through when a6(?) == a7(=0x3017).
  The `beq` branch at 0x35b8 targets 0x3834, is taken when v0(=ret(kmem_alloc_node)) == 0, and falls through when v0(=ret(kmem_alloc_node)) != 0.
  The `beq` branch at 0x35e0 targets 0x384c, is taken when v0(=ret(kern_malloc_node)) == 0, and falls through when v0(=ret(kern_malloc_node)) != 0.
  The `beq` branch at 0x361c targets 0x3864, is taken when a1(=[ret(kmem_zalloc_node)+584]:8) == 0, and falls through when a1(=[ret(kmem_zalloc_node)+584]:8) != 0.
  The `bne` branch at 0x3670 targets 0x3660, is taken when v0(?) < 0x9 (signed), and falls through when v0(?) >= 0x9 (signed).
  The `beq` branch at 0x369c targets 0x36b4, is taken when (a6(=[ret(kmem_zalloc_node)+16]:8) & a7(?)) == 0, and falls through when (a6(=[ret(kmem_zalloc_node)+16]:8) & a7(?)) != 0.
  The `bne` branch at 0x36bc targets 0x3760, is taken when v0(=ret(router_port_init)) != 0, and falls through when v0(=ret(router_port_init)) == 0.
  The `bne` branch at 0x36dc targets 0x3690, is taken when s1(?) < 0x9 (signed), and falls through when s1(?) >= 0x9 (signed).
  The `beq` branch at 0x3758 targets 0x3508 and is always taken.
  The `beq` branch at 0x3788 targets 0x36c8 and is always taken.
  The `beq` branch at 0x37b0 targets 0x372c and is always taken.
  The `beq` branch at 0x37d8 targets 0x372c and is always taken.
  The `beq` branch at 0x3808 targets 0x372c and is always taken.
  The `beq` branch at 0x382c targets 0x3598 and is always taken.
  The `beq` branch at 0x3844 targets 0x35c4 and is always taken.
  The `beq` branch at 0x385c targets 0x35e8 and is always taken.
  The `beq` branch at 0x3874 targets 0x367c and is always taken.
  The `beq` branch at 0x3888 targets 0x34fc and is always taken.
  The return at 0x3750 has v0 = one of 0x0, 0x1, ret(router_reg_read).
- `router_get_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3890 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3890-0x3914 (132 bytes).
  It occupies 132 bytes.
  The `jal` at 0x38bc calls hwgraph_info_get_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+616, a2=sp-48, a3=a3 at entry (arg3).
  The `jal` at 0x38c8 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x38ec calls bcopy with a0=?, a1=a1 at entry (arg1), a2=?, a3=?, a4=0x2c0.
  The `jal` at 0x38fc calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x38a4 targets 0x38b4, is taken when a0 != at(=-0x1), and falls through when a0 == at(=-0x1).
  The `beq` branch at 0x38ac targets 0x390c and is always taken.
  The return at 0x390c has v0 = one of 0x0, 0x13.
- `timeout_poll` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3914 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3914-0x399c (136 bytes).
  It occupies 136 bytes.
  The `ld` at 0x3968 loads 8 bytes from (a1 + (a0 << 0x21)) -0x6dfffffffe800000.
  The `jal` at 0x3960 calls us_delay with a0=(a4 << 0x0), a1=?, a2=?, a3=?.
  The `blez` branch at 0x393c targets 0x397c, is taken when a3 <= 0 (signed), and falls through when a3 > 0 (signed).
  The `beq` branch at 0x3950 targets 0x3960 and is always taken.
  The `beq` branch at 0x3958 targets 0x397c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x3974 targets 0x3958, is taken when (s1(=a2) & t8(=[(a1 + (a0 << 0x21))-7926335344146907136]:8)) == 0, and falls through when (s1(=a2) & t8(=[(a1 + (a0 << 0x21))-7926335344146907136]:8)) != 0.
  The return at 0x3994 has v0 = one of ?, ret(us_delay).
- `router_state_empty` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x399c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x399c-0x3ae4 (328 bytes).
  It occupies 328 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x8, including `lbu` at 0x39f8, `lbu` at 0x3a48.
  The `jal` at 0x39d0 calls router_reg_read with a0=a0 at entry (arg0), a1=0x0, a2=sp-80, a3=a3 at entry (arg3).
  The `jal` at 0x3a90 calls router_reg_read with a0=a0 at entry (arg0), a1=?, a2=sp-80, a3=?.
  The `beq` branch at 0x3a1c targets 0x3a28, is taken when (v0(=[a0+8]:1) & at(?)) == 0, and falls through when (v0(=[a0+8]:1) & at(?)) != 0.
  The `bne` branch at 0x3a28 targets 0x3a04, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x3a44 targets 0x3a5c and is always taken.
  The `beq` branch at 0x3a54 targets 0x3ab8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x3a68 targets 0x3a4c, is taken when (v0(=[a0+8]:1) & t8(?)) == 0, and falls through when (v0(=[a0+8]:1) & t8(?)) != 0.
  The `bne` branch at 0x3ab0 targets 0x3a44, is taken when s3(?) < 0x9 (signed), and falls through when s3(?) >= 0x9 (signed).
  The return at 0x3adc has v0 = one of 0x0, 0x1.
- `get_routername` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3db0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3db0-0x3e98 (232 bytes).
  It occupies 232 bytes.
  The `lbu` at 0x3de0 loads 1 byte from sym(.rodata) +0x53c.
  The `lbu` at 0x3de4 loads 1 byte from sym(.rodata) +0x53d.
  The `lbu` at 0x3de8 loads 1 byte from sym(.rodata) +0x53e.
  The `lw` at 0x3dec loads 4 bytes from sym(.rodata) +0x538.
  The `ld` at 0x3df0 loads 8 bytes from sym(.rodata) +0x530.
  5 such `sdl` accesses store 8 bytes to a1 (arg1 at entry) +0x0, including `sdl` at 0x3df4, `sdl` at 0x3e20, `sdl` at 0x3e44.
  5 such `sdr` accesses store 8 bytes to a1 (arg1 at entry) +0x7, including `sdr` at 0x3df8, `sdr` at 0x3e24, `sdr` at 0x3e48.
  4 such `swl` accesses store 4 bytes to a1 (arg1 at entry) +0x8, including `swl` at 0x3dfc, `swl` at 0x3e4c, `swl` at 0x3e70.
  4 such `swr` accesses store 4 bytes to a1 (arg1 at entry) +0xb, including `swr` at 0x3e00, `swr` at 0x3e50, `swr` at 0x3e78.
  The `sb` at 0x3e04 stores 1 byte to a1 (arg1 at entry) +0xe.
  2 such `sb` accesses store 1 byte to a1 (arg1 at entry) +0xd, including `sb` at 0x3e08, `sb` at 0x3e54.
  2 such `sb` accesses store 1 byte to a1 (arg1 at entry) +0xc, including `sb` at 0x3e0c, `sb` at 0x3e5c.
  The `ld` at 0x3e18 loads 8 bytes from sym(.rodata) +0x548.
  The `ld` at 0x3e1c loads 8 bytes from sym(.rodata) +0x540.
  The `sdl` at 0x3e28 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `sdr` at 0x3e30 stores 8 bytes to a1 (arg1 at entry) +0xf.
  The `lbu` at 0x3e34 loads 1 byte from sym(.rodata) +0x57d.
  The `lw` at 0x3e38 loads 4 bytes from sym(.rodata) +0x578.
  The `ld` at 0x3e3c loads 8 bytes from sym(.rodata) +0x570.
  The `lbu` at 0x3e40 loads 1 byte from sym(.rodata) +0x57c.
  The `lw` at 0x3e60 loads 4 bytes from sym(.rodata) +0x568.
  The `ld` at 0x3e64 loads 8 bytes from sym(.rodata) +0x560.
  The `lw` at 0x3e7c loads 4 bytes from sym(.rodata) +0x558.
  The `ld` at 0x3e80 loads 8 bytes from sym(.rodata) +0x550.
  The `beq` branch at 0x3dc0 targets 0x3e34, is taken when a0 == at(=0x31), and falls through when a0 != at(=0x31).
  The `beq` branch at 0x3dc8 targets 0x3e60, is taken when a0 == a3(=0x32), and falls through when a0 != a3(=0x32).
  The `beq` branch at 0x3dd0 targets 0x3e7c, is taken when a0 == a4(=0x33), and falls through when a0 != a4(=0x33).
  The `beq` branch at 0x3dd8 targets 0x3e18, is taken when a0 == a5(=0x34), and falls through when a0 != a5(=0x34).
  The return at 0x3e10 has v0 = 0x65.
  The return at 0x3e2c has v0 = ?.
  The return at 0x3e58 has v0 = ?.
  The return at 0x3e74 has v0 = ?.
  The return at 0x3e90 has v0 = ?.
- `try_router` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3e98 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3e98-0x409c (516 bytes).
  It occupies 516 bytes.
  The `lh` at 0x3f44 loads 2 bytes from ?.
  The `lw` at 0x3f50 loads 4 bytes from ?.
  The `ld` at 0x3f5c loads 8 bytes from a1 (arg1 at entry) +0x18.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3f64, `ld` at 0x3f88, `ld` at 0x3f94.
  The `lw` at 0x3f70 loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `sw` at 0x3f7c stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `sd` at 0x3fec stores 8 bytes to ?.
  The `lbu` at 0x3ff0 loads 1 byte from ?.
  The `jal` at 0x3ebc calls find_first_component with a0=a0 at entry (arg0), a1=0x9, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4004 calls vector_concat with a0=?, a1=a3 at entry (arg3), a2=?, a3=?, a4=0x30.
  The `jal` at 0x401c calls try_router [0x3e98] with a0=?, a1=a1 at entry (arg1), a2=?, a3=ret(vector_concat).
  The `jal` at 0x4084 calls vector_concat with a0=?, a1=a3 at entry (arg3), a2=?, a3=?, a4=0x30, a7=0x0.
  The `beq` branch at 0x3ee8 targets 0x4094, is taken when v0(=ret(find_first_component)) == 0, and falls through when v0(=ret(find_first_component)) != 0.
  The `beq` branch at 0x3f24 targets 0x3f3c and is always taken.
  The `beq` branch at 0x3f2c targets 0x4078, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `blez` branch at 0x3f38 targets 0x4040, is taken when s2(?) <= 0 (signed), and falls through when s2(?) > 0 (signed).
  The `beq` branch at 0x3f48 targets 0x3f34, is taken when a0(?) == s6(=-0x1), and falls through when a0(?) != s6(=-0x1).
  The `bne` branch at 0x3f68 targets 0x3f80, is taken when t0(=[a1+24]:8) != t1(?), and falls through when t0(=[a1+24]:8) == t1(?).
  The `beq` branch at 0x3f78 targets 0x4080, is taken when t9(=[a4]-1) == s6(=-0x1), and falls through when t9(=[a4]-1) != s6(=-0x1).
  The `blez` branch at 0x3f80 targets 0x3f2c, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x3f98 targets 0x3fd4, is taken when ra(?) == t0(?), and falls through when ra(?) != t0(?).
  The `beq` branch at 0x3fac targets 0x3fd4, is taken when a7(?) >= s0(?) (signed), and falls through when a7(?) < s0(?) (signed).
  The `beq` branch at 0x3fb8 targets 0x3fd4, is taken when t3(?) == t0(?), and falls through when t3(?) != t0(?).
  The `bne` branch at 0x3fcc targets 0x3f94, is taken when a7(?) < s0(?) (signed), and falls through when a7(?) >= s0(?) (signed).
  The `bne` branch at 0x3fd4 targets 0x3f34, is taken when a7(?) != s0(?), and falls through when a7(?) == s0(?).
  The `beq` branch at 0x3fe8 targets 0x3f34, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x3ff8 targets 0x3f34, is taken when a4(=0x30) != ra(?), and falls through when a4(=0x30) == ra(?).
  The `beq` branch at 0x4030 targets 0x3f34, is taken when s6(=-0x1) == v0(=ret(try_router)), and falls through when s6(=-0x1) != v0(=ret(try_router)).
  The `beq` branch at 0x4038 targets 0x4048 and is always taken.
  The `beq` branch at 0x4078 targets 0x3fdc and is always taken.
  The `beq` branch at 0x408c targets 0x4044 and is always taken.
  The `beq` branch at 0x4094 targets 0x4048 and is always taken.
  The return at 0x4070 has v0 = one of ret(try_router), ?, -0x1.
- `klcfg_discover_route` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x409c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x409c-0x41f0 (340 bytes).
  It occupies 340 bytes.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x18, including `ld` at 0x40a8, `ld` at 0x41bc.
  The `ld` at 0x40ac loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lbu` at 0x40d0 loads 1 byte from a0 (arg0 at entry) +0x5.
  The `ld` at 0x40dc loads 8 bytes from ?.
  The `lbu` at 0x40f0 loads 1 byte from ?.
  The `lh` at 0x4190 loads 2 bytes from ret(find_first_component) +0x3c.
  The `lw` at 0x41a0 loads 4 bytes from ret(find_first_component) +0x40.
  The `lh` at 0x41d4 loads 2 bytes from a0 (arg0 at entry) +0x20.
  The `jal` at 0x4110 calls try_router [0x3e98] with a0=?, a1=a1 at entry (arg1), a2=?, a3=0x0, a4=sp-48.
  The `jal` at 0x4168 calls vector_reverse with a0=ret(try_router), a1=?, a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x4180 calls find_first_component with a0=a0 at entry (arg0), a1=0x2, a2=0x11, a3=a3 at entry (arg3), a5=[a1+24]:8.
  The `jal` at 0x41d8 calls printf with a0=sym(.rodata)+616, a1=[a0+32]:2, a2=?, a3=?.
  The `beq` branch at 0x40c4 targets 0x4160, is taken when at(=[a0+24]:8) == a5(=[a1+24]:8), and falls through when at(=[a0+24]:8) != a5(=[a1+24]:8).
  The `beq` branch at 0x40d4 targets 0x4180, is taken when a2(=0x11) == v0(=[a0+5]:1), and falls through when a2(=0x11) != v0(=[a0+5]:1).
  The `bne` branch at 0x40e0 targets 0x40f0, is taken when v1(?) != a5(=[a1+24]:8), and falls through when v1(?) == a5(=[a1+24]:8).
  The `beq` branch at 0x40e8 targets 0x41c8, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `beq` branch at 0x40f4 targets 0x4178, is taken when a2(=0x11) == a0(?), and falls through when a2(=0x11) != a0(?).
  The `bne` branch at 0x4120 targets 0x4168, is taken when a0(=-0x1) != v0(=ret(try_router)), and falls through when a0(=-0x1) == v0(=ret(try_router)).
  The `bne` branch at 0x412c targets 0x4140, is taken when a2 < s1(=a2) (signed), and falls through when a2 >= s1(=a2) (signed).
  The `bne` branch at 0x4138 targets 0x40fc, is taken when s0(?) < 0xf (signed), and falls through when s0(?) >= 0xf (signed).
  The `beq` branch at 0x4160 targets 0x4140 and is always taken.
  The `beq` branch at 0x4170 targets 0x4140 and is always taken.
  The `beq` branch at 0x4178 targets 0x4144 and is always taken.
  The `beq` branch at 0x4188 targets 0x41d0, is taken when v0(=ret(find_first_component)) == 0, and falls through when v0(=ret(find_first_component)) != 0.
  The `beq` branch at 0x4194 targets 0x41e8, is taken when a1(=[ret(find_first_component)+60]:2) == a0(=-0x1), and falls through when a1(=[ret(find_first_component)+60]:2) != a0(=-0x1).
  The `beq` branch at 0x41c0 targets 0x40dc and is always taken.
  The `beq` branch at 0x41c8 targets 0x4144 and is always taken.
  The `beq` branch at 0x41e0 targets 0x4140 and is always taken.
  The `beq` branch at 0x41e8 targets 0x4140 and is always taken.
  The return at 0x4158 has v0 = one of ?, -0x1, 0x0.
- `find_lboard` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x41f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x41f0-0x4254 (100 bytes).
  It occupies 100 bytes.
  The `lbu` at 0x4218 loads 1 byte from ?.
  The `lw` at 0x422c loads 4 bytes from ?.
  The `beq` branch at 0x41f4 targets 0x4248, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x4204 targets 0x4218 and is always taken.
  The `beq` branch at 0x4210 targets 0x4248, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x4224 targets 0x424c, is taken when t1(?) == a1, and falls through when t1(?) != a1.
  The `bne` branch at 0x4238 targets 0x420c, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x4240 targets 0x4210 and is always taken.
  The return at 0x424c has v0 = one of ?, 0x0.
- `find_lboard_class` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4254 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4254-0x42c0 (108 bytes).
  It occupies 108 bytes.
  The `lbu` at 0x4280 loads 1 byte from ?.
  The `lw` at 0x4298 loads 4 bytes from ?.
  The `beq` branch at 0x4258 targets 0x42b4, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x426c targets 0x4280 and is always taken.
  The `beq` branch at 0x4278 targets 0x42b4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x4290 targets 0x42b8, is taken when a5(?) == t1(?), and falls through when a5(?) != t1(?).
  The `bne` branch at 0x42a4 targets 0x4274, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x42ac targets 0x4278 and is always taken.
  The return at 0x42b8 has v0 = one of ?, 0x0.
- `find_lboard_slot_class` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42c0-0x4338 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x42e0 loads 4 bytes from ?.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x4300, `lbu` at 0x4318.
  The `beq` branch at 0x42c4 targets 0x432c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x42d8 targets 0x4300 and is always taken.
  The `beq` branch at 0x42ec targets 0x42f8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x42f8 targets 0x432c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x4310 targets 0x42e0, is taken when a7(?) != a4(?), and falls through when a7(?) == a4(?).
  The `bne` branch at 0x431c targets 0x42e0, is taken when t2(?) != a2, and falls through when t2(?) == a2.
  The `beq` branch at 0x4324 targets 0x4330 and is always taken.
  The return at 0x4330 has v0 = one of ?, 0x0.
- `find_component` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4338 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4338-0x4480 (328 bytes).
  It occupies 328 bytes.
  The `lbu` at 0x4348 loads 1 byte from a0 (arg0 at entry) +0x17.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4388, `lw` at 0x43b4, `lw` at 0x4418.
  The `lbu` at 0x4428 loads 1 byte from ?.
  The `jal` at 0x4458 calls dprintf with a0=sym(.rodata)+1440, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=one of -0x1, 0xffffffffff.
  The `bne` branch at 0x4344 targets 0x435c, is taken when a1 != 0, and falls through when a1 == 0.
  The `blez` branch at 0x434c targets 0x4444, is taken when t1(=[a0+23]:1) <= 0 (signed), and falls through when t1(=[a0+23]:1) > 0 (signed).
  The `beq` branch at 0x4354 targets 0x43f8 and is always taken.
  The `blez` branch at 0x435c targets 0x446c, is taken when t1(=[a0+23]:1) <= 0 (signed), and falls through when t1(=[a0+23]:1) > 0 (signed).
  The `beq` branch at 0x4398 targets 0x43e0, is taken when v0(=a1) == a7(?), and falls through when v0(=a1) != a7(?).
  The `beq` branch at 0x43ac targets 0x43e0, is taken when t0(?) >= t1(=[a0+23]:1) (signed), and falls through when t0(?) < t1(=[a0+23]:1) (signed).
  The `beq` branch at 0x43c4 targets 0x43e0, is taken when v0(=a1) == t3(?), and falls through when v0(=a1) != t3(?).
  The `bne` branch at 0x43d8 targets 0x4388, is taken when t0(?) < t1(=[a0+23]:1) (signed), and falls through when t0(?) >= t1(=[a0+23]:1) (signed).
  The `beq` branch at 0x43e0 targets 0x4454, is taken when t0(?) == t1(=[a0+23]:1), and falls through when t0(?) != t1(=[a0+23]:1).
  The `beq` branch at 0x43f0 targets 0x4440, is taken when a7(?) >= t1(=[a0+23]:1) (signed), and falls through when a7(?) < t1(=[a0+23]:1) (signed).
  The `beq` branch at 0x4430 targets 0x444c, is taken when t0(?) == a2, and falls through when t0(?) != a2.
  The `bne` branch at 0x4438 targets 0x4414, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x444c targets 0x4444 and is always taken.
  The `beq` branch at 0x4464 targets 0x4444 and is always taken.
  The `beq` branch at 0x4470 targets 0x4454, is taken when t1(=[a0+23]:1) == 0, and falls through when t1(=[a0+23]:1) != 0.
  The `beq` branch at 0x4478 targets 0x43ec and is always taken.
  The return at 0x4444 has v0 = one of 0x0, ?.
- `find_first_component` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4480 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4480-0x44a0 (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0x448c calls find_component with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The return at 0x4498 has v0 = ret(find_component).
- `find_lboard_modslot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x44a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x44a0-0x451c (124 bytes).
  It occupies 124 bytes.
  The `lh` at 0x44c8 loads 2 bytes from ?.
  The `lw` at 0x44e0 loads 4 bytes from ?.
  The `lbu` at 0x44fc loads 1 byte from ?.
  The `beq` branch at 0x44a4 targets 0x4510, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x44b4 targets 0x44c8 and is always taken.
  The `beq` branch at 0x44c0 targets 0x4510, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x44d8 targets 0x44fc, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x44ec targets 0x44bc, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x44f4 targets 0x44c0 and is always taken.
  The `bne` branch at 0x4500 targets 0x44e0, is taken when t3(?) != a2, and falls through when t3(?) == a2.
  The `beq` branch at 0x4508 targets 0x4514 and is always taken.
  The return at 0x4514 has v0 = one of ?, 0x0.
- `find_lboard_module` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x451c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x451c-0x4584 (104 bytes).
  It occupies 104 bytes.
  The `lh` at 0x4544 loads 2 bytes from ?.
  The `lw` at 0x455c loads 4 bytes from ?.
  The `beq` branch at 0x4520 targets 0x4578, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x4530 targets 0x4544 and is always taken.
  The `beq` branch at 0x453c targets 0x4578, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x4554 targets 0x457c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x4568 targets 0x4538, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x4570 targets 0x453c and is always taken.
  The return at 0x457c has v0 = one of ?, 0x0.
- `find_lboard_module_class` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4584 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4584-0x4608 (132 bytes).
  It occupies 132 bytes.
  The `lh` at 0x45b0 loads 2 bytes from ?.
  The `lw` at 0x45c8 loads 4 bytes from ?.
  The `lbu` at 0x45e4 loads 1 byte from ?.
  The `beq` branch at 0x4588 targets 0x45fc, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x459c targets 0x45b0 and is always taken.
  The `beq` branch at 0x45a8 targets 0x45fc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x45c0 targets 0x45e4, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x45d4 targets 0x45a4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x45dc targets 0x45a8 and is always taken.
  The `bne` branch at 0x45ec targets 0x45c8, is taken when t1(?) != a4(?), and falls through when t1(?) == a4(?).
  The `beq` branch at 0x45f4 targets 0x4600 and is always taken.
  The return at 0x4600 has v0 = one of ?, 0x0.
- `nic_name_convert` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4608 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4608-0x47bc (436 bytes).
  It occupies 436 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0x4614, `lbu` at 0x47b8.
  The `lbu` at 0x4630 loads 1 byte from a0 (arg0 at entry) +0x1.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0x465c, `sb` at 0x46b4, `sb` at 0x46c0.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x467c, `lbu` at 0x4684.
  The `ld` at 0x4748 loads 8 bytes from sym(.rodata) +0x5d8.
  The `sdl` at 0x474c stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `sdr` at 0x4754 stores 8 bytes to a1 (arg1 at entry) +0x7.
  The `lbu` at 0x475c loads 1 byte from sym(.rodata) +0x5ee.
  The `lw` at 0x4760 loads 4 bytes from sym(.rodata) +0x5e8.
  The `lbu` at 0x4764 loads 1 byte from sym(.rodata) +0x5ed.
  The `lbu` at 0x4768 loads 1 byte from sym(.rodata) +0x5ec.
  2 such `swl` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `swl` at 0x476c, `swl` at 0x4794.
  2 such `swr` accesses store 4 bytes to a1 (arg1 at entry) +0x3, including `swr` at 0x4770, `swr` at 0x4798.
  The `sb` at 0x4774 stores 1 byte to a1 (arg1 at entry) +0x6.
  The `sb` at 0x4778 stores 1 byte to a1 (arg1 at entry) +0x5.
  2 such `sb` accesses store 1 byte to a1 (arg1 at entry) +0x4, including `sb` at 0x4780, `sb` at 0x47a0.
  The `lbu` at 0x478c loads 1 byte from sym(.rodata) +0x5f4.
  The `lw` at 0x4790 loads 4 bytes from sym(.rodata) +0x5f0.
  The `jal` at 0x463c calls strlen with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sym(.rodata)+1440.
  The `jal` at 0x4664 calls strlen with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x46d0 calls strncmp with a0=a1 at entry (arg1), a1=sym(.rodata)+1440, a2=0x3, a3=?.
  The `jal` at 0x46ec calls strncmp with a0=a1 at entry (arg1), a1=sym(.rodata)+1440, a2=0x3, a3=sym(.rodata)+1440.
  The `jal` at 0x4708 calls strncmp with a0=a1 at entry (arg1), a1=sym(.rodata)+1440, a2=0x8, a3=sym(.rodata)+1440.
  The `jal` at 0x4720 calls strncmp with a0=a1 at entry (arg1), a1=sym(.rodata)+1440, a2=0x4, a3=?.
  The `beq` branch at 0x4628 targets 0x4748, is taken when at(=[a0]:1) == 0, and falls through when at(=[a0]:1) != 0.
  The `beq` branch at 0x4634 targets 0x4748, is taken when v0(=[a0+1]:1) == 0, and falls through when v0(=[a0+1]:1) != 0.
  The `beq` branch at 0x4648 targets 0x47a4, is taken when v0(=ret(strlen)) == 0, and falls through when v0(=ret(strlen)) != 0.
  The `beq` branch at 0x4654 targets 0x47ac and is always taken.
  The `beq` branch at 0x4674 targets 0x46b8, is taken when s0(?) >= v0(=ret(strlen)) (unsigned), and falls through when s0(?) < v0(=ret(strlen)) (unsigned).
  The `beq` branch at 0x4690 targets 0x46a8, is taken when (a3(?) & 0x4003) == 0, and falls through when (a3(?) & 0x4003) != 0.
  The `bne` branch at 0x4698 targets 0x465c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x46a0 targets 0x465c and is always taken.
  The `beq` branch at 0x46a8 targets 0x4784, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x46b0 targets 0x4660 and is always taken.
  The `beq` branch at 0x46d8 targets 0x475c, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x46f4 targets 0x475c, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x4710 targets 0x4758, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x4728 targets 0x478c, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x4750 targets 0x46c4 and is always taken.
  The `beq` branch at 0x477c targets 0x4730 and is always taken.
  The `beq` branch at 0x4784 targets 0x4660 and is always taken.
  The `beq` branch at 0x479c targets 0x4730 and is always taken.
  The `beq` branch at 0x47a4 targets 0x46bc and is always taken.
  The `beq` branch at 0x47b4 targets 0x4680 and is always taken.
  The return at 0x4740 has v0 = ret(strncmp).
- `is_master_baseio` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x47bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x47bc-0x491c (352 bytes).
  It occupies 352 bytes.
  The `ld` at 0x47d4 loads 8 bytes from (a0 << 0x21) -0x6fffffffcc000000.
  The `ld` at 0x4800 loads 8 bytes from ((a0 << 0x21)+0x9600000000000000 | 0x2000) +0x48.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4814, `lw` at 0x48b4.
  The `lh` at 0x4858 loads 2 bytes from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0.
  The `ld` at 0x4860 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x4864 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x4870 loads 8 bytes from (([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8) +0x0.
  The `lh` at 0x4878 loads 2 bytes from [(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8600.
  The `ld` at 0x4894 loads 8 bytes from ([[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2 << 0x21) -0x6fffffffcc000000.
  The `ld` at 0x48a8 loads 8 bytes from ?.
  The `lbu` at 0x48ec loads 1 byte from ret(find_lboard_module) +0x9.
  The `jal` at 0x482c calls find_lboard_module with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x48cc calls find_lboard_module with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x48fc calls chk_for_pebrick with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=(a0 << 0x21)+0x9600000000000000, a5=(a0 << 0x21), a6=((a0 << 0x21)+0x9600000000000000 | 0x2000), a7=0xc000.
  The `jal` at 0x490c calls chk_for_pebrick with a0=[[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2, a1=([[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2 << 0x21), a2=[[-0x3c00]:8]:8, a3=0xc000, a5=([[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2 << 0x21)+0x9600000000000000, a6=0xffffffffff, a7=-0x35.
  The `beq` branch at 0x47f8 targets 0x48fc, is taken when a7(=0xc000) == at(?), and falls through when a7(=0xc000) != at(?).
  The `beq` branch at 0x4820 targets 0x482c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x4854 targets 0x48d8, is taken when v0(=ret(find_lboard_module)) != 0, and falls through when v0(=ret(find_lboard_module)) == 0.
  The `beq` branch at 0x4884 targets 0x48d8, is taken when a0(=[[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2) == t0(=-0x1), and falls through when a0(=[[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2) != t0(=-0x1).
  The `beq` branch at 0x48a0 targets 0x490c, is taken when a3(=0xc000) == a4(?), and falls through when a3(=0xc000) != a4(?).
  The `beq` branch at 0x48c0 targets 0x48cc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x48e4 targets 0x48f4, is taken when a4(=ret(find_lboard_module)) == 0, and falls through when a4(=ret(find_lboard_module)) != 0.
  The `beq` branch at 0x4904 targets 0x482c and is always taken.
  The `beq` branch at 0x4914 targets 0x48cc and is always taken.
  The return at 0x48f4 has v0 = one of 0x0, ?.
- `get_board_name` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x491c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x491c-0x4b28 (524 bytes).
  It occupies 524 bytes.
  The `ld` at 0x4934 loads 8 bytes from (a0 << 0x21) -0x6fffffffcc000000.
  The `ld` at 0x4978 loads 8 bytes from ((a0 << 0x21)+0x9600000000000000 | 0x2000) +0x48.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4988, `lw` at 0x4a2c.
  The `lh` at 0x49d4 loads 2 bytes from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0.
  The `ld` at 0x49d8 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x49dc loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x49e8 loads 8 bytes from (([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8) +0x0.
  The `lh` at 0x49f0 loads 2 bytes from [(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8600.
  The `ld` at 0x4a08 loads 8 bytes from ([[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2 << 0x21) -0x6fffffffcc000000.
  The `ld` at 0x4a20 loads 8 bytes from ?.
  The `lbu` at 0x4a5c loads 1 byte from ret(find_lboard_modslot) +0x6.
  The `ld` at 0x4a70 loads 8 bytes from sym(.rodata) +0x5d8.
  The `sdl` at 0x4a74 stores 8 bytes to a3 (arg3 at entry) +0x0.
  The `sdr` at 0x4a7c stores 8 bytes to a3 (arg3 at entry) +0x7.
  2 such `lbu` accesses load 1 byte from ret(find_lboard_modslot) +0x5, including `lbu` at 0x4a80, `lbu` at 0x4b04.
  The `jal` at 0x49a4 calls find_lboard_modslot with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x4a48 calls find_lboard_modslot with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x4a98 calls strcmp with a0=a3 at entry (arg3), a1=sym(.rodata)+1440, a2=?, a3=?.
  The `jal` at 0x4ad4 calls sort_nic_names [0x5c9c] with a0=ret(find_lboard_modslot), a1=?, a2=?, a3=?.
  The `jal` at 0x4ae0 calls nic_name_convert with a0=ret(find_lboard_modslot)+153, a1=a3 at entry (arg3), a2=?, a3=?.
  The `jal` at 0x4af8 calls nic_name_convert with a0=ret(find_lboard_modslot)+153, a1=a3 at entry (arg3), a2=?, a3=?.
  The `jal` at 0x4b08 calls chk_for_pebrick with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=(a0 << 0x21), a7=0xc000.
  The `jal` at 0x4b18 calls chk_for_pebrick with a0=[[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2, a1=([[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2 << 0x21), a2=([[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2 << 0x21)+0x9600000000000000, a3=?, a4=0xc000, a6=0xffffffffff, a7=-0x35.
  The `beq` branch at 0x495c targets 0x4b08, is taken when a7(=0xc000) == at(?), and falls through when a7(=0xc000) != at(?).
  The `beq` branch at 0x4994 targets 0x49a0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x49d0 targets 0x4a54, is taken when v0(=ret(find_lboard_modslot)) != 0, and falls through when v0(=ret(find_lboard_modslot)) == 0.
  The `beq` branch at 0x49fc targets 0x4a54, is taken when a0(=[[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2) == a4(=-0x1), and falls through when a0(=[[(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2) != a4(=-0x1).
  The `beq` branch at 0x4a18 targets 0x4b18, is taken when a4(=0xc000) == a5(?), and falls through when a4(=0xc000) != a5(?).
  The `beq` branch at 0x4a38 targets 0x4a44, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x4a54 targets 0x4a70, is taken when s0(=ret(find_lboard_modslot)) == 0, and falls through when s0(=ret(find_lboard_modslot)) != 0.
  The `beq` branch at 0x4a64 targets 0x4af8, is taken when a7(=[ret(find_lboard_modslot)+6]:1) >= 0x2 (signed), and falls through when a7(=[ret(find_lboard_modslot)+6]:1) < 0x2 (signed).
  The `beq` branch at 0x4a78 targets 0x4a90, is taken when s0(=ret(find_lboard_modslot)) == 0, and falls through when s0(=ret(find_lboard_modslot)) != 0.
  The `beq` branch at 0x4a8c targets 0x4af0, is taken when t1(?) == t2(=0x50), and falls through when t1(?) != t2(=0x50).
  The `beq` branch at 0x4aa0 targets 0x4ab0, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x4aa8 targets 0x4ad4, is taken when s0(=ret(find_lboard_modslot)) != 0, and falls through when s0(=ret(find_lboard_modslot)) == 0.
  The `beq` branch at 0x4ae8 targets 0x4ab0 and is always taken.
  The `beq` branch at 0x4af0 targets 0x4ab4 and is always taken.
  The `beq` branch at 0x4b00 targets 0x4a84 and is always taken.
  The `beq` branch at 0x4b10 targets 0x49a0 and is always taken.
  The `beq` branch at 0x4b20 targets 0x4a44 and is always taken.
  The return at 0x4acc has v0 = ret(find_lboard_modslot).
- `get_cnode_cpu` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4b28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4b28-0x4c70 (328 bytes).
  It occupies 328 bytes.
  The `ld` at 0x4b5c loads 8 bytes from ((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000) +0xd0.
  The `lh` at 0x4b68 loads 2 bytes from ([((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 + (a0 + a0)) +0x80.
  The `lbu` at 0x4bd0 loads 1 byte from ret(nasid_slice_to_cpuinfo) +0x2.
  2 such `lw` accesses load 4 bytes from ret(nasid_slice_to_cpuinfo) +0x1c, including `lw` at 0x4be0, `lw` at 0x4c08.
  The `jal` at 0x4b40 calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4bc0 calls nasid_slice_to_cpuinfo with a0=[([((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 + (a0 + a0))+128]:2, a1=?, a2=?, a3=?.
  The `jal` at 0x4bfc calls dprintf with a0=sym(.rodata)+1440, a1=a0 at entry (arg0), a2=[ret(nasid_slice_to_cpuinfo)+28], a3=0x200.
  The `jal` at 0x4c60 calls cmn_err with a0=0x4, a1=sym(.rodata)+1440, a2=a0 at entry (arg0), a3=?.
  The `beq` branch at 0x4b80 targets 0x4c2c, is taken when s4(=[([((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 + (a0 + a0))+128]:2) == at(=-0x1), and falls through when s4(=[([((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 + (a0 + a0))+128]:2) != at(=-0x1).
  The `beq` branch at 0x4b90 targets 0x4bbc and is always taken.
  The `beq` branch at 0x4ba0 targets 0x4bac, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x4bb8 targets 0x4c0c, is taken when s0(?) >= 0x4 (signed), and falls through when s0(?) < 0x4 (signed).
  The `beq` branch at 0x4bc8 targets 0x4bb0, is taken when v0(=ret(nasid_slice_to_cpuinfo)) == 0, and falls through when v0(=ret(nasid_slice_to_cpuinfo)) != 0.
  The `beq` branch at 0x4bd8 targets 0x4bb0, is taken when (ra(=[ret(nasid_slice_to_cpuinfo)+2]:1) & 0x1) == 0, and falls through when (ra(=[ret(nasid_slice_to_cpuinfo)+2]:1) & 0x1) != 0.
  The `bne` branch at 0x4be8 targets 0x4b9c, is taken when a2(=[ret(nasid_slice_to_cpuinfo)+28]) < 0x200 (unsigned), and falls through when a2(=[ret(nasid_slice_to_cpuinfo)+28]) >= 0x200 (unsigned).
  The `beq` branch at 0x4c04 targets 0x4b98 and is always taken.
  The `bne` branch at 0x4c0c targets 0x4c54, is taken when s3(?) != s2(?), and falls through when s3(?) == s2(?).
  The `beq` branch at 0x4c1c targets 0x4c4c, is taken when s5(=0x200) == s2(?), and falls through when s5(=0x200) != s2(?).
  The `beq` branch at 0x4c4c targets 0x4c30 and is always taken.
  The `beq` branch at 0x4c68 targets 0x4c14 and is always taken.
  The return at 0x4c44 has v0 = one of ?, -0x1.
- `get_cpu_cnode` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4c70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4c70-0x4c84 (20 bytes).
  It occupies 20 bytes.
  The `lh` at 0x4c80 loads 2 bytes from (sym(cpuid_to_compact_node) + (a0 + a0)) +0x0.
  The return at 0x4c7c has v0 = [(sym(cpuid_to_compact_node) + (a0 + a0))]:2.
- `get_cpu_slice` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4c84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4c84-0x4cb4 (48 bytes).
  It occupies 48 bytes.
  The `lbu` at 0x4ca8 loads 1 byte from ret(get_cpuinfo) +0x18.
  The `jal` at 0x4c8c calls get_cpuinfo with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x4c98 targets 0x4ca8, is taken when v0(=ret(get_cpuinfo)) != 0, and falls through when v0(=ret(get_cpuinfo)) == 0.
  The `beq` branch at 0x4ca0 targets 0x4cac and is always taken.
  The return at 0x4cac has v0 = one of -0x1, [ret(get_cpuinfo)+24]:1.
- `get_cpuinfo` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4cb4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4cb4-0x4da8 (244 bytes).
  It occupies 244 bytes.
  The `ld` at 0x4ce8 loads 8 bytes from ((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000) +0xd0.
  The `lh` at 0x4d20 loads 2 bytes from ?.
  The `lw` at 0x4d54 loads 4 bytes from ret(nasid_slice_to_cpuinfo) +0x1c.
  The `jal` at 0x4cc0 calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4cf4 calls get_cpu_cnode with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x4d44 calls nasid_slice_to_cpuinfo with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4d88 calls dprintf with a0=sym(.rodata)+1440, a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x4cec targets 0x4d80, is taken when s1(=a0) >= 0x200 (signed), and falls through when s1(=a0) < 0x200 (signed).
  The `beq` branch at 0x4d18 targets 0x4da0, is taken when a3(?) == a1(=-0x1), and falls through when a3(?) != a1(=-0x1).
  The `beq` branch at 0x4d24 targets 0x4d98, is taken when s2(?) == a1(=-0x1), and falls through when s2(?) != a1(=-0x1).
  The `beq` branch at 0x4d2c targets 0x4d44 and is always taken.
  The `beq` branch at 0x4d38 targets 0x4d68, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x4d4c targets 0x4d34, is taken when v0(=ret(nasid_slice_to_cpuinfo)) == 0, and falls through when v0(=ret(nasid_slice_to_cpuinfo)) != 0.
  The `bne` branch at 0x4d58 targets 0x4d38, is taken when s1(=a0) != a5(=[ret(nasid_slice_to_cpuinfo)+28]), and falls through when s1(=a0) == a5(=[ret(nasid_slice_to_cpuinfo)+28]).
  The `beq` branch at 0x4d60 targets 0x4d6c and is always taken.
  The `beq` branch at 0x4d90 targets 0x4d68 and is always taken.
  The `beq` branch at 0x4d98 targets 0x4d6c and is always taken.
  The `beq` branch at 0x4da0 targets 0x4d6c and is always taken.
  The return at 0x4d78 has v0 = one of ret(nasid_slice_to_cpuinfo), 0x0.
- `get_actual_nasid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4da8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4da8-0x4e0c (100 bytes).
  It occupies 100 bytes.
  The `lbu` at 0x4de4 loads 1 byte from ret(find_first_component) +0x2.
  The `lh` at 0x4df8 loads 2 bytes from a0 (arg0 at entry) +0x20.
  The `lbu` at 0x4e08 loads 1 byte from ret(find_first_component) +0x18.
  The `jal` at 0x4dd0 calls find_first_component with a0=a0 at entry (arg0), a1=0x2, a2=a2 at entry (arg2), a3=-0x1.
  The `bne` branch at 0x4db8 targets 0x4dd0, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0x4ddc targets 0x4dfc, is taken when v0(=ret(find_first_component)) == 0, and falls through when v0(=ret(find_first_component)) != 0.
  The `beq` branch at 0x4dec targets 0x4e04, is taken when (at(=[ret(find_first_component)+2]:1) & 0x1) == 0, and falls through when (at(=[ret(find_first_component)+2]:1) & 0x1) != 0.
  The `beq` branch at 0x4df4 targets 0x4dc0 and is always taken.
  The `beq` branch at 0x4dfc targets 0x4dc4 and is always taken.
  The `beq` branch at 0x4e04 targets 0x4dc0 and is always taken.
  The return at 0x4dc8 has v0 = one of ?, -0x1.
- `nasid_slice_to_cpuinfo` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4e0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4e0c-0x4f04 (248 bytes).
  It occupies 248 bytes.
  The `ld` at 0x4e1c loads 8 bytes from (a0 << 0x21) -0x6fffffffcc000000.
  The `ld` at 0x4e4c loads 8 bytes from ((a0 << 0x21)+0x9600000000000000 | 0x2000) +0x48.
  The `lw` at 0x4e60 loads 4 bytes from ?.
  The `lbu` at 0x4ebc loads 1 byte from ret(find_first_component) +0x18.
  The `lbu` at 0x4ed0 loads 1 byte from ret(find_component) +0x18.
  The `jal` at 0x4e78 calls find_lboard with a0=?, a1=0x11, a2=?, a3=?.
  The `jal` at 0x4ea8 calls find_first_component with a0=ret(find_lboard), a1=0x1, a2=?, a3=?.
  The `jal` at 0x4ec0 calls find_component with a0=ret(find_lboard), a1=?, a2=0x1, a3=?.
  The `jal` at 0x4eec calls chk_for_pebrick with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=((a0 << 0x21)+0x9600000000000000 | 0x2000), a5=(a0 << 0x21), a6=0x9600000000000000.
  The `beq` branch at 0x4e44 targets 0x4eec, is taken when at(?) == v1(=0xc000), and falls through when at(?) != v1(=0xc000).
  The `beq` branch at 0x4e6c targets 0x4e78, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x4e80 targets 0x4ea4, is taken when v0(=ret(find_lboard)) != 0, and falls through when v0(=ret(find_lboard)) == 0.
  The `beq` branch at 0x4eb0 targets 0x4efc, is taken when v0(=ret(find_first_component)) == 0, and falls through when v0(=ret(find_first_component)) != 0.
  The `beq` branch at 0x4eb8 targets 0x4ed4 and is always taken.
  The `beq` branch at 0x4ec8 targets 0x4ee4, is taken when v0(=ret(find_component)) == 0, and falls through when v0(=ret(find_component)) != 0.
  The `bne` branch at 0x4ed4 targets 0x4ec0, is taken when s1(=a1) != a2(?), and falls through when s1(=a1) == a2(?).
  The `beq` branch at 0x4edc targets 0x4e90 and is always taken.
  The `beq` branch at 0x4ee4 targets 0x4e8c and is always taken.
  The `beq` branch at 0x4ef4 targets 0x4e78 and is always taken.
  The `beq` branch at 0x4efc targets 0x4e8c and is always taken.
  The return at 0x4e9c has v0 = one of 0x0, ?.
- `xbow_port_io_enabled` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4f04 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4f04-0x4fe8 (228 bytes).
  It occupies 228 bytes.
  The `ld` at 0x4f18 loads 8 bytes from (a0 << 0x21) -0x6fffffffcc000000.
  The `ld` at 0x4f44 loads 8 bytes from ((a0 << 0x21)+0x9600000000000000 | 0x2000) +0x48.
  The `lw` at 0x4f50 loads 4 bytes from ?.
  The `lbu` at 0x4fa4 loads 1 byte from (ret(find_component) + (a1 << 0x3)) -0x6.
  The `jal` at 0x4f68 calls find_lboard with a0=?, a1=0x42, a2=?, a3=?.
  The `jal` at 0x4f8c calls find_component with a0=ret(find_lboard), a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x4fd8 calls chk_for_pebrick with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=(a0 << 0x21)+0x9600000000000000, a5=((a0 << 0x21)+0x9600000000000000 | 0x2000), a6=0xffffffffff, a7=0x9600000000000000.
  The `beq` branch at 0x4f3c targets 0x4fd8, is taken when at(?) == v1(=0xc000), and falls through when at(?) != v1(=0xc000).
  The `beq` branch at 0x4f5c targets 0x4f68, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x4f70 targets 0x4f88, is taken when v0(=ret(find_lboard)) != 0, and falls through when v0(=ret(find_lboard)) == 0.
  The `beq` branch at 0x4f98 targets 0x4fc8, is taken when v0(=ret(find_component)) == 0, and falls through when v0(=ret(find_component)) != 0.
  The `beq` branch at 0x4fb0 targets 0x4fd0, is taken when (a1(=[(ret(find_component) + (a1 << 0x3))-6]:1) & 0x1) == 0, and falls through when (a1(=[(ret(find_component) + (a1 << 0x3))-6]:1) & 0x1) != 0.
  The `beq` branch at 0x4fb8 targets 0x4fd0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x4fc0 targets 0x4f80 and is always taken.
  The `beq` branch at 0x4fc8 targets 0x4f7c and is always taken.
  The `beq` branch at 0x4fd0 targets 0x4f7c and is always taken.
  The `beq` branch at 0x4fe0 targets 0x4f68 and is always taken.
  The return at 0x4f80 has v0 = one of 0x0, 0x1.
- `board_to_full_path` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4fe8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4fe8-0x5078 (144 bytes).
  It occupies 144 bytes.
  The `lbu` at 0x4fe8 loads 1 byte from a0 (arg0 at entry) +0x5.
  The `lh` at 0x5054 loads 2 bytes from a0 (arg0 at entry) +0x20.
  The `jal` at 0x5010 calls board_to_path with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jal` at 0x5030 calls sprintf with a0=a1 at entry (arg1), a1=sym(.rodata)+1440, a2=?, a3=?.
  The `jal` at 0x5058 calls elsc_init with a0=sp-2424, a1=[a0+32]:2, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jal` at 0x5068 calls elsc_module_slab_get with a0=sp-2424, a1=sp-40, a2=sp-36, a3=?.
  The `beq` branch at 0x5008 targets 0x504c, is taken when at(?) == v0(=0x10), and falls through when at(?) != v0(=0x10).
  The `beq` branch at 0x5070 targets 0x5020 and is always taken.
  The return at 0x5044 has v0 = ret(sprintf).
