# Tier-2 routine readings, odsy batch 2

Role statements for 25 routines of the IP35 `kernel.o`, from the rendered facts of the reading tool. These are targets 50 to 74 of the tier-2 ranking, all in one binary. Every entry is graded inferred: the facts are call lists, branch targets and constants, and the callee names are the only labels the binary gives.

- `nmi_dump` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25460
  **Inferred.** Bumps a shared word at [-0x3c00]+35992 with atomicAddInt (jal at 0x25474). If the result is 1 it calls cont_nmi_dump at 0x254b8 and then spins in the self-branch at 0x254c0. Otherwise it branches to 0x254c8, where it walks the TLB dump table (tlbdumptbl, beq at 0x254e4) through tlbgetent at 0x2551c, and waits on nmi_helper_cpu before calling dumpsys_helper at 0x25594. Which CPU takes which path is inferred from the branch sense only.

- `dumptlb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x255a4
  **Inferred.** Loops over TLB indices below 0x40 (bne at 0x25608), calling tlbgetent at 0x255f8 for each index. It does nothing when the tlbdumptbl pointer is zero (beq at 0x255c8). The store at 0x25618 has no named target in the facts.

- `checkAllTlbsDumped` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25630
  **Inferred.** Returns early when tlbdumptbl is zero (beq at 0x25640). Otherwise it loops over CPU numbers below maxcpus, calls cpu_enabled at 0x25670 for each, and prints a message through printf at 0x256ac from the string at .rodata+45600. The message most likely reports a CPU whose TLB dump is missing, but the string text is not in the facts.

- `add_cpuboard` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x258cc
  **Inferred.** Reads the boot CPU's per-CPU data through pdaindr and master_procid (0x25904 to 0x25910), then loops over CPUs below maxcpus. For each enabled CPU it calls add_sidcache at 0x258e0, get_cpu_freq at 0x259a0 and cpuboard at 0x259a8, and records entries with add_to_inventory in class 1 at 0x259c0, 0x259d8 and 0x259f0. A second loop at 0x25a9c to 0x25b88 repeats the same work for the remaining CPUs. The meaning of the inventory type codes 1, 2 and 3 is not given by the facts.

- `VEC_fpe` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25b90
  **Inferred.** Exception vector for a floating-point trap. It branches on the status bits in s0 (mask 0x18, bne at 0x25b94). On one path it calls trap at 0x25ba8, and on the other it stores two words through [-0x3fe8]+0x550 and +0x554 and calls fp_intr at 0x25be4. It leaves through exception_exit at 0x25bf4. The condition that selects each path is inferred from the mask only.

- `dobootduty` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25bfc
  **Inferred.** Per-CPU setup that indexes pdaindr by the value at .sdata+264 (0x25c3c) and allocates memory for that CPU: kvpalloc_node at 0x25c58 with flag 0x101, kern_calloc_node of 0x538 and 0x13c8 bytes at 0x25c84 and 0x25c9c, and str_init_alloc_lfvec and str_init_alloc_strstat at 0x25cac and 0x25cbc. It then calls str_init_slave at 0x25cd4. Failed allocations branch to cmn_err reports at 0x25d1c to 0x25d7c, and the assertion call at 0x25cfc passes line 0x91.

- `allowboot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25ebc
  **Inferred.** Long bring-up routine. It calls init_timebase at 0x25ec4, sn_mp_setup, per_cpu_init, bte_lateinit, replicate_kernel_text and ecc_init (0x25ef8 to 0x25f18), then loops over CPUs below maxcpus calling dobootduty at 0x260a0 and cpu_enabled at 0x26154. It makes an indirect call through the word at 0xbfc00038 (jalr at 0x26050) and calls per_hub_init at 0x26254 and cnodetocpu for each node below maxnodes. Warnings and status lines go through cmn_err and dprintf. The order and the gating flags (showconfig, pokeboot) are read from the branches only.

- `disallowboot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26310
  **Inferred.** The routine is 8 bytes, from 0x26310 to 0x26318, and holds only a return with no computed value. The next routine, cboot, starts at 0x26318. It looks like an empty stub, and whether callers rely on it is not in this binary's facts.

- `cboot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26318
  **Inferred.** Boot-CPU one-time bring-up. It identifies the CPU with getcpuid at 0x26328, sets up the PDA with wirepda at 0x26348, and reads cache sizes with getcachesz at 0x2635c. It calls mlreset(1), sc_set_system_state with codes 0x1e and 0xa, and sets up exceptions and per-CPU state (_hook_exceptions, per_cpu_init, cache_preempt_limit, findcpufreq). It then runs ecc_init (0x264b0), tlbinfo_init, clkstart and allowintrs, and ends with joinrunq and resumeidle. The routine stores to fixed low-memory words in the range 0xc000 to 0xc7xx.

- `cont_nmi_dump` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26894
  **Inferred.** Continuation of the NMI dump, run after nmi_dump. It calls enter_panic_mode at 0x268c4, then loops over the nodes below numnodes. It waits with us_delay(0x2710) at 0x26a50 and a bounded loop of 1000 steps (0x26940), calls nmi_eframes_save at 0x26a78 and sn0_error_dump at 0x26a8c, and reports the CPU ID through cmn_err at 0x26aa8. The wait limit of 1500 (0x5dc, branch at 0x26a64) is a constant in the loop.

- `cpu_isvalid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26acc
  **Inferred.** Checks a CPU index. It returns 0 for a negative index or one at or above maxcpus (branches at 0x26ad0 and 0x26ae4). Otherwise it loads the word at pdaindr + (index << 4) and compares it with -1 (bne at 0x26af0). The returned 0 or 1 follows that compare, and the -1 is probably a sentinel for a missing entry, though the facts do not show the caller.

- `clean_icache` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26ea4
  **Inferred.** Dispatches an instruction-cache clean over an address range. It chooses among __pdcache_wbinval (0x26f04, with pdcache_size), __cache_wb_inval (0x26f18), __cache_hwb_inval_pfn (0x26f38) and __picache_inval (0x26f48). The choice depends on the flag bit 0x100 in a3 (0x26ed0), the address against 0xa800000000000000 (0x26ee4) and a comparison with 0x2000 in a7 (0x26efc). Which helper runs for which flag combination is inferred from the branches.

- `clean_dcache` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26f58
  **Inferred.** Dispatches a data-cache writeback or invalidate over an address range, as the counterpart of clean_icache. It calls __dcache_inval (0x26fd8), __dcache_wb (0x26ff0), __cache_wb_inval with the constants 0xa800010000000000, 1 and -11 (0x27010), and __dcache_wb_inval (0x27020). The selection uses the range length in a1, the flag 0x100 in a3, and the cache-kind value 3 (0x26fc8). The selection rules are inferred from the branches only.

- `sync_dcaches_excl` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27030
  **Inferred.** Writes back and invalidates the data cache over a range of a1 bytes while interrupts are raised (splhi at 0x2706c, splx at 0x27104). It loops over cache lines with a0 = a1 - 1 compared against a2 (0x270c4 to 0x270e8), calling __dcache_wb_inval at 0x27098. It pins the thread to a CPU with rt_pin_thread at 0x2713c when a byte at [-0x3fb1] equals 2, and unpins it with rt_unpin_thread at 0x2712c, then returns 1. The meaning of the "excl" suffix is not in the facts.

- `sync_dcaches` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2714c
  **Inferred.** Wider variant of sync_dcaches_excl. When bit 16 of a3 is clear (bgez at 0x27178) it calls sync_dcaches_excl at 0x27180 and returns its result. Otherwise it runs the same kind of line loop under splhi (0x271a8), with a pin and unpin around it (rt_pin_thread at 0x27284, rt_unpin_thread at 0x27248). It returns 0 on the other path. The line size and the role of the bit 16 test are inferred from the branch structure.

- `getcachesz` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x272a0
  **Inferred.** Calls get_cpuinfo at 0x272a8 and returns the 16-bit field at offset 0x3e of its result, shifted left by 20 bits (lhu at 0x272b4). The field is probably a cache size, but its name and units are not in the facts.

- `stopclocks` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x272c4
  **Inferred.** Stops the periodic clocks. It stores to two fixed words (0xc5c0 by sd at 0x272d4 and 0xc56c by sw at 0x272e0) and calls slowkgclock at 0x272cc, acktmoclock at 0x272dc and ackkgclock at 0x272e4. It returns the value from ackkgclock. The stored values are not visible in the facts.

- `counter_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x272f8
  **Inferred.** Interrupt handler for the counter-compare timer. It calls frs_handle_counter_intr at 0x27320, hwperf_overflowed_intr at 0x27348, l2_sbe_intr at 0x27364 (gated by the flag at l2_sbe_check, 0x2735c) and hwperf_intr at 0x2737c. Its periodic path calls clock at 0x274b0, It calls resetcounter at 0x2739c and 0x274a8 with the word at [-0x3a94], and compares that word with 0xf0000000 at 0x27488. A rate-limited warning is printed through cmn_err at 0x27610 using counter_intr_warn_period. The dispatch conditions are inferred from the flag reads.

- `startrtclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27630
  **Inferred.** Starts the real-time clock. It gets the CPU frequency through the pointer at [0x2973c] (findcpufreq_cycles, jal at 0x27638), calls resetcounter at 0x27658 when a flag at .sbss+184 is zero, and installs counter_intr with setrtvector at 0x276b0. It passes the constant 1000000000 to setrtvector, which looks like a nanoseconds-per-second value but is not named in the facts.

- `stopaudioclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2771c
  **Inferred.** Stops the audio clock. If the audioclock word is nonzero (beq at 0x27724), it pins the caller to the master CPU with setmustrun (jal at 0x2772c, arg master_procid), calls slowkgclock with the result shifted into the high word (0x2776c), and then calls restoremustrun at 0x27758. The branch on the word at [-0x3a68] (0x27750) gates the slowkgclock call.

- `startprfclk` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2777c
  **Inferred.** Starts the profiling clock with an ll/sc update of the word at 0xc598 (0x27794 to 0x277a0). It raises the interrupt priority with splprof at 0x27784 and restores it with splx at 0x277b8. When the new count reaches 1 (beq at 0x277b0), it calls startkgclock at 0x277cc. The counting meaning is inferred from the ll/sc pattern and the compare with 1.

- `stopprfclk` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x277dc
  **Inferred.** Counterpart of startprfclk. It decrements the same word at 0xc598 with an ll/sc loop (0x277fc to 0x27808) under splprof (0x277e4), and calls slowkgclock at 0x2784c with audioclock and the decremented counter when the count reaches zero. A branch on master_procid (0x27828) chooses which path that call takes. The exact conditions are inferred from the branches only.

- `ackrtclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2785c
  **Inferred.** The routine is 8 bytes, from 0x2785c to 0x27864, and holds only a return with no computed value. The next routine, init_timebase, starts at 0x27864. It looks like an empty stub that acknowledges nothing, and whether the real-time clock needs an acknowledge is not settled by this binary alone.

- `init_timebase` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27864
  **Inferred.** Sets up the time base from an uncached I/O word at 0x9200000001030100. It calls rtodc at 0x2786c and again at 0x2792c with the constant 1000000000, and stores two words to .bss+0xa830 and +0xa838. It reads the I/O word and the word at 0x9200000001604200, and compares sym(time) with the rtodc return (beq at 0x27938). It reports a warning through cmn_err_tag at 0x2798c and cmn_err at 0x279a0 when the loop fails. Which device the I/O words belong to is not named in the facts.

- `inittodr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x279b0
  **Inferred.** Sets the system time of day at boot. It compares a0 with the lower bound 0x9660180 (bne at 0x279f8) and a6 with 0x2a300 (bne at 0x27a1c), and branches to a separate path when the miniroot word is nonzero (bne at 0x279d0). It prints diagnostics through cmn_err_tag with message IDs 0x34, 0x35 and 0x36 at 0x27a5c to 0x27a8c, passing the time global. The bounds are inferred from the compares only.
