# Tier-2 routine readings, odsy batch 2

Role statements for 25 routines of the IP35 `kernel.o`, from the rendered facts of the reading tool. These are targets 50 to 74 of the tier-2 ranking, all in one binary. Every entry is graded inferred: the facts are call lists, branch targets and constants, and the callee names are the only labels the binary gives.

- `nmi_dump` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25460
  **Inferred.** Adds 1 to a shared word at [-0x3c00]+35992 with atomicAddInt (call at 0x25474). If the result is 1 it calls cont_nmi_dump at 0x254b8; the facts list no branch at 0x254c0, so a spin there is not shown. Otherwise it branches to 0x254c8. There the beq at 0x254e4 branches to itself when the tlbdumptbl pointer is zero, and a loop calls tlbgetent at 0x2551c until a compare with 0x40 (bne at 0x2552c) falls through. It then waits in a loop (bne at 0x25554) until a halfword at [-0x3bd8] equals nmi_helper_cpu, and calls dumpsys_helper at 0x25594. Which CPU takes which path is inferred from the branch sense only.
  Reviewed: 2026-11-12

- `dumptlb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x255a4
  **Inferred.** Loops over TLB indices below 0x40 (bne at 0x25608), calling tlbgetent at 0x255f8 for each index. When the tlbdumptbl pointer is zero (beq at 0x255c8) it branches to 0x2561c and skips that loop. The store at 0x25618 has no named target in the facts.
  Reviewed: 2026-11-12

- `checkAllTlbsDumped` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25630
  **Inferred.** When tlbdumptbl is zero (beq at 0x25640) it branches to 0x256bc, next to the return at 0x256c4. Otherwise it loops over CPU numbers below maxcpus and calls cpu_enabled at 0x25670 for each. For a CPU where cpu_enabled returns nonzero and a loaded word (lw at 0x2569c, address not in the facts) is zero, it calls printf at 0x256ac with the string at .rodata+45600. Role (from name): reports TLB dumps that are missing; the string text is not in the facts.
  Reviewed: 2026-11-12

- `add_cpuboard` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x258cc
  **Inferred.** Calls add_sidcache at 0x258e0 at entry, before any loop. It reads the boot CPU's per-CPU data through pdaindr and master_procid (0x25904 to 0x25910) and compares fields of CPUs below maxcpus against it (branches 0x2592c to 0x25984, operands mostly unknown). On the path at 0x25998 it calls get_cpu_freq at 0x259a0 with the boot CPU's data, then cpuboard at 0x259a8, then add_to_inventory with a0 = 1 and a1 = 1, 2 and 3 at 0x259c0, 0x259d8 and 0x259f0. A second section from 0x25a18 calls cpu_isvalid at 0x25a30 and cpu_enabled at 0x25aa4, then get_cpu_freq, cpuboard and add_to_inventory (a1 = 1) at 0x25ac0 to 0x25ae0, and further add_to_inventory calls with a1 = 2 and 3 at 0x25b1c to 0x25b70. The meaning of the inventory type codes 1, 2 and 3 is not given by the facts.
  Reviewed: 2026-11-12

- `VEC_fpe` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25b90
  **Inferred.** Role (from name): exception vector for a floating-point trap. The bne at 0x25b94 tests (s0 & 0x18). When that is zero it calls trap at 0x25ba8. When it is nonzero it goes to 0x25bb0, where a bgez at 0x25bc0 skips the sw +0x550 at 0x25bc4 for a nonnegative value, a second store sw +0x554 is at 0x25bcc, and fp_intr is called at 0x25be4. exception_exit is tail-called at 0x25bf4; the facts do not show which paths reach it. The base register of the stores is not in the facts.
  Reviewed: 2026-11-12

- `dobootduty` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25bfc
  **Inferred.** Per-CPU setup that indexes pdaindr by the value at .sdata+264 (0x25c3c). A value that is not positive (blez at 0x25c10) or that exceeds maxcpus (bne at 0x25c20) goes to the assfail call at 0x25cfc, whose third argument is 0x91. Otherwise it calls kvpalloc_node at 0x25c58 (third argument 0x101), kern_calloc_node(1, 0x538, ...) at 0x25c84 and kern_calloc_node(1, 0x13c8, ...) at 0x25c9c, then str_init_alloc_lfvec at 0x25cac and str_init_alloc_strstat at 0x25cbc, each guarded by a zero test of the previous result. It then calls str_init_slave at 0x25cd4 and returns its result. A zero result from either kern_calloc_node or from the two str_init_alloc calls branches to a cmn_err call at 0x25d1c, 0x25d3c, 0x25d5c or 0x25d7c. The kvpalloc_node result is not tested in the facts.
  Reviewed: 2026-11-12

- `allowboot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25ebc
  **Inferred.** Long bring-up routine. It calls init_timebase at 0x25ec4. When showconfig is zero (the bne at 0x25ef0 falls through) it calls sn_mp_setup, per_cpu_init, bte_lateinit, replicate_kernel_text and ecc_init (0x25ef8 to 0x25f18). It loops over CPUs below maxcpus; inside that loop dobootduty at 0x260a0 is called when the word at .sdata+264 is nonzero (beq at 0x26098), and when pokeboot is nonzero (beq at 0x2600c) it calls the unnamed address 0xbfc00038 at 0x26050 (the facts show it as a call target, not as a word read). A second loop calls cpu_enabled at 0x26154. It calls cpu_io_setup at 0x2619c, then loops over nodes below maxnodes calling cnodetocpu at 0x261b8; when that returns -1 (beq at 0x261c0) it goes to per_hub_init at 0x26254. Otherwise it calls init_mfhi_war at 0x261f8 and returns its result. Warnings and status lines go through cmn_err and dprintf. The order and the gating flags (showconfig, pokeboot) are read from the branches only.
  Reviewed: 2026-11-12

- `disallowboot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26310
  **Inferred.** The routine is 8 bytes, from 0x26310 to 0x26318, and holds only a return with no computed value. The next routine, cboot, starts at 0x26318. It looks like an empty stub, and whether callers rely on it is not in this binary's facts.
  Reviewed: 2026-11-12

- `cboot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26318
  **Inferred.** Role (from name): boot-CPU one-time bring-up. It calls getcpuid at 0x26328, wirepda at 0x26348 and getcachesz at 0x2635c, then get_except_norm, mlreset(1) at 0x263c0 and sc_set_system_state with a1 = 0x1e at 0x263d4. It goes on with _hook_exceptions, per_cpu_init, cache_preempt_limit, findcpufreq and coproc_find, takes bootlck with mutex_spinlock at 0x26404 and polls the word at .sdata+264 (branches at 0x2641c to 0x26440). It then calls ecc_init(1, ...) at 0x264b0, stopclocks, reset_leds, spinlock_init, tlbinfo_init, bte_lateinit and clkstart, releases bootlck with mutex_spinunlock, and calls allowintrs, joinrunq, init_mfhi_war, sc_set_system_state with a1 = 0xa, spl0, splhi and resumeidle at 0x26548. A cmn_err call follows at 0x26558 and its result is returned; the facts do not show whether resumeidle returns.
  Reviewed: 2026-11-12

- `cont_nmi_dump` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26894
  **Inferred.** Continuation of the NMI dump; nmi_dump calls it at 0x254b8. It calls getcpuid and wirepda, then enter_panic_mode at 0x268c4, then loops over nodes below numnodes. us_delay(0x2710) at 0x26a50 runs on the path where a counter compared with 0x3e8 at 0x26940 is not equal to it. An outer branch at 0x26a64 loops back to 0x268e8 while a counter is below 0x5dc (1500). After that it calls nmi_eframes_save at 0x26a78 and sn0_error_dump at 0x26a8c, then reports the CPU ID through cmn_err at 0x26aa8 (a2 = getcpuid result) and returns its result. The meaning of the constants is not in the facts.
  Reviewed: 2026-11-12

- `cpu_isvalid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26acc
  **Inferred.** Checks a CPU index. It returns 0 for a negative index or one at or above maxcpus (branches at 0x26ad0 and 0x26ae4). Otherwise it loads the word at pdaindr + (index << 4) and compares it with -1 (bne at 0x26af0). The returned 0 or 1 follows that compare, and the -1 is probably a sentinel for a missing entry, though the facts do not show the caller.
  Reviewed: 2026-11-12

- `clean_icache` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26ea4
  **Inferred.** Dispatches an instruction-cache clean over an address range. It chooses among __pdcache_wbinval (0x26f04, with pdcache_size), __cache_wb_inval (0x26f18), __cache_hwb_inval_pfn (0x26f38) and __picache_inval (0x26f48). The choice depends on the flag bit 0x100 in a3 (0x26ed0), the address against 0xa800000000000000 (0x26ee4) and a comparison with 0x2000 in a7 (0x26efc). Which helper runs for which flag combination is inferred from the branches.
  Reviewed: 2026-11-12

- `clean_dcache` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26f58
  **Inferred.** Dispatches a data-cache writeback or invalidate over an address range, as the counterpart of clean_icache. The routine returns early when a1 is zero (beq at 0x26f68). It calls __dcache_inval (0x26fd8), __dcache_wb (0x26ff0), __cache_wb_inval at 0x27010 (a5, a6 and a7 hold 0xa800010000000000, 1 and -11 at the call; whether they are arguments is not shown) and __dcache_wb_inval (0x27020). The selection uses a1, the flag 0x100 in a3 (0x26f80), compares of a0 with 0xa800000000000000 and 0x100000000000, and a value compared with 3 at 0x26fc8. The selection rules are inferred from the branches only.
  Reviewed: 2026-11-12

- `sync_dcaches_excl` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27030
  **Inferred.** Writes back and invalidates the data cache with __dcache_wb_inval at 0x27098 (a1 passed through) between splhi at 0x2706c and splx at 0x27104. A line loop compares a0 = a1 - 1 with a2 (0x270c4 to 0x270e8); a2 is not known, and whether the call at 0x27098 is inside that loop is not shown. When the word at [-0x3fe0] is nonzero and the byte at [-0x3fb1] equals 2 it calls rt_pin_thread at 0x2713c; at exit under the same two tests it calls rt_unpin_thread at 0x2712c. It then returns 1. The meaning of the "excl" suffix is not in the facts.
  Reviewed: 2026-11-12

- `sync_dcaches` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2714c
  **Inferred.** Tests bit 16 of a3 (a3 << 47 in the bgez at 0x27178). When the bit is set (the bgez falls through) it calls sync_dcaches_excl at 0x27180 and returns its result. When the bit is clear (branch taken to 0x27190) it runs a line loop of the same shape under splhi (0x271a8) and splx (0x27258), with rt_pin_thread at 0x27284 and rt_unpin_thread at 0x27248 used when the byte at [-0x3fb1] equals 2 (and, for the unpin, the word at [-0x3fe0] is nonzero). It returns 0 on that path. The line size and the role of the bit 16 test are inferred from the branch structure.
  Reviewed: 2026-11-12

- `getcachesz` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x272a0
  **Inferred.** Calls get_cpuinfo at 0x272a8 and returns the 16-bit field at offset 0x3e of its result, shifted left by 20 bits (lhu at 0x272b4). The field is probably a cache size, but its name and units are not in the facts.
  Reviewed: 2026-11-12

- `stopclocks` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x272c4
  **Inferred.** Role (from name): stops the periodic clocks. It calls slowkgclock at 0x272cc, stores a doubleword (sd at 0x272d4), calls acktmoclock at 0x272dc, stores a word (sw at 0x272e0) and calls ackkgclock at 0x272e4. It returns the value from ackkgclock. The addresses and values of the stores are not visible in the facts.
  Reviewed: 2026-11-12

- `counter_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x272f8
  **Inferred.** Interrupt handler for the counter-compare timer: startrtclock installs it with setrtvector, and it calls _get_count at 0x274c0 and _get_compare at 0x274c8. It calls frs_handle_counter_intr at 0x27320 when the word at [-0x3958] is nonzero (beq at 0x27318), and hwperf_overflowed_intr at 0x27348. When that returns nonzero it calls l2_sbe_intr at 0x27364 if the low byte of l2_sbe_check is nonzero (beq at 0x2735c) and hwperf_intr at 0x2737c. It calls resetcounter at 0x2739c and 0x274a8 with the word at [-0x3a94], and compares that word with 0xf0000000 at 0x27488. It calls clock at 0x274b0, log_tstamp_event at 0x2753c and 0x27558, and cmn_err at 0x27610 with counter_intr_warn_period read earlier (0x273dc, 0x273ec); a rate limit on that warning is inferred, not shown. The conditions that select each path are inferred from the flag reads.
  Reviewed: 2026-11-12

- `startrtclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27630
  **Inferred.** Role (from name): starts the real-time clock. It calls findcpufreq_cycles (target 0x2973c) at 0x27638. When a flag at .sbss+184 is nonzero (the beq at 0x27650 falls through) it stores a word, calls resetcounter at 0x27658 and returns its result. When the flag is zero it goes on to install counter_intr with setrtvector at 0x276b0, passing 1000000000 (0x3b9aca00) as the fifth argument (a4). That constant looks like a nanoseconds-per-second value, but the facts do not name it.
  Reviewed: 2026-11-12

- `stopaudioclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2771c
  **Inferred.** Role (from name): stops the audio clock. If the audioclock word is nonzero (beq at 0x27724 falls through) it calls setmustrun at 0x2772c with master_procid as the first argument. Then the word at [-0x3a68] decides: when it is nonzero (beq at 0x27750 falls through) it calls restoremustrun at 0x27758 and returns its result; when it is zero it calls slowkgclock at 0x2776c with the setmustrun result shifted left by 32 as a0. The facts show no path that runs both restoremustrun and slowkgclock. The zero-audioclock path (branch to 0x27760) is not described by the facts.
  Reviewed: 2026-11-12

- `startprfclk` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2777c
  **Inferred.** Starts the profiling clock with an ll/sc update of the word at [-0x3a68] (0x27794 to 0x277a0). It raises the interrupt priority with splprof at 0x27784 and restores it with splx at 0x277b8. When the word read back equals 1 (beq at 0x277b0) it calls startkgclock at 0x277cc instead. The counting meaning is inferred from the ll/sc pattern and the compare with 1.
  Reviewed: 2026-11-12

- `stopprfclk` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x277dc
  **Inferred.** Counterpart of startprfclk. Under splprof (0x277e4) it skips the update when the word at [-0x3a68] is zero (beq at 0x277f4), and otherwise decrements it with an ll/sc loop (0x277fc to 0x27808). When the word then reads zero (bne at 0x27818 falls through) it calls slowkgclock at 0x2784c if the CPU halfword at [-0x3bd8] differs from master_procid (bne at 0x27828) or the audioclock word is zero (beq at 0x27830); the arguments include audioclock and the decremented word. Otherwise it calls splx at 0x27838 and returns its result. The exact conditions are inferred from the branches only.
  Reviewed: 2026-11-12

- `ackrtclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2785c
  **Inferred.** The routine is 8 bytes, from 0x2785c to 0x27864, and holds only a return with no computed value. The next routine, init_timebase, starts at 0x27864. It looks like an empty stub that acknowledges nothing, and whether the real-time clock needs an acknowledge is not settled by this binary alone.
  Reviewed: 2026-11-12

- `init_timebase` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27864
  **Inferred.** Sets up the time base from an uncached I/O word at 0x9200000001030100. It calls rtodc at 0x2786c, and again at 0x2792c with 1000000000 (0x3b9aca00) as its third argument and .bss+43056 as its second. It stores a word at +0xa830 (sw at 0x27894) and a doubleword at +0xa838 (sd at 0x27898); the base is not shown. A loop at 0x278ec to 0x27924 compares successive reads of the I/O word against another value. After the second rtodc it compares sym(time) with the rtodc return (beq at 0x27938), and cmn_err_tag at 0x2798c and cmn_err at 0x279a0 are on the paths that follow; the facts do not say what condition reports the warning. Which device the I/O word belongs to is not named in the facts.
  Reviewed: 2026-11-12

- `inittodr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x279b0
  **Inferred.** Role (from name): sets the system time of day at boot. When the miniroot byte is nonzero (bne at 0x279d0) it goes to the return at 0x27a7c. It compares a0 with 0x9660180 (bne at 0x279f8, taken when a0 is less, signed) and a6 with 0x2a300 (bne at 0x27a1c, taken when a6 is less, signed). It calls cmn_err_tag with a0 = 0x34, 0x35 and 0x36 at 0x27a8c, 0x27a5c and 0x27a70, with a1 = 4. The calls with 0x34 and 0x35 pass the time global (a7); the one with 0x36 does not. The bounds are inferred from the compares only.
  Reviewed: 2026-11-12
