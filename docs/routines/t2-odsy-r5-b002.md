# Tier-2 routine roles, odsy round r5 batch 2

- `VEC_fpe` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25b90
  **Inferred.** When bits 0x18 of s0 are zero it calls trap [call 1, @0x25b94 fall zero]. It then calls fp_intr [call 2] and leaves through exception_exit [call 3].
  Role (from facts): floating-point exception entry that hands the exception to trap [call 1, @0x25b94 fall zero] and to fp_intr [call 2].
  Reviewed: 2026-11-12

- `cboot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26318
  **Inferred.** It identifies the CPU with getcpuid [@0x26328] and calls wirepda [@0x26348]. It calls getcachesz [@0x2635c], then runs a loop that branches back [@0x26378 taken] and stores to eight doublewords [@0x2637c].
  It runs one-time initialisers, including ecc_init [@0x264b0], spinlock_init [@0x264d4] and tlbinfo_init [@0x264dc], and enters the idle loop through resumeidle [@0x26548].
  Role (from facts): boot-time bring-up of one processor, from CPU identification to the idle loop [@0x26328, @0x26548].
  Reviewed: 2026-11-12

- `clean_dcache` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26f58
  **Inferred.** When a1 is zero [@0x26f68 taken zero] it calls nothing. Otherwise it calls exactly one of four helpers: __dcache_inval [call 1, @0x26f68 fall nonzero], __dcache_wb [call 2], __cache_wb_inval [call 3] or __dcache_wb_inval [call 4]. It returns [@0x26ffc].
  Role (from facts): picks one of four cache write-back or invalidate helpers from the a3 flag bits and the address in a0, and does nothing when a1 is zero [@0x26f68 taken zero].
  Reviewed: 2026-11-12

- `sync_dcaches_excl` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27030
  **Inferred.** It calls splhi [call 1, @0x27064 fall] and then __dcache_wb_inval [call 2]. It reads memory in a loop that branches back [@0x270e8 taken]. It restores the level with splx [call 3, @0x270fc fall]. It returns 0x1 [@0x27124].
  When the byte at [-0x3fb1] is 0x2 [@0x27064 taken] it calls rt_pin_thread [call 5] in place of splhi, and it calls rt_unpin_thread [call 4, @0x270fc taken] in place of splx.
  Role (from facts): flushes the data cache of a range, holding the level raised with splhi [call 1] and splx [call 3], or the thread pinned with rt_pin_thread [call 5] and rt_unpin_thread [call 4], around it.
  Reviewed: 2026-11-12

- `stopclocks` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x272c4
  **Inferred.** It calls slowkgclock [@0x272cc], acktmoclock [@0x272dc] and ackkgclock [@0x272e4] in that order, and stores to two words [@0x272d4, @0x272e0]. It returns the result of ackkgclock [@0x272f0].
  Role (from name): stops the clocks; it calls the slow-clock and acknowledge routines for the kg and timeout clocks [@0x272cc, @0x272dc, @0x272e4].
  Reviewed: 2026-11-12

- `startrtclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27630
  **Inferred.** It calls findcpufreq_cycles [@0x27638] before it tests the word at sym(.sbss) +184 [@0x27650]. When that word is zero [@0x27650 taken zero] it calls setrtvector with a0 = sym(counter_intr) [call 3]. It calls resetcounter [call 2] and returns its result [@0x27664].
  Role (from name): starts the real-time clock; it derives the frequency first [@0x27638], hooks counter_intr through setrtvector when the word is zero [call 3, @0x27650 taken zero] and then resets the counter [call 2].
  Reviewed: 2026-11-12

- `stopaudioclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2771c
  **Inferred.** When the audio clock word is nonzero [@0x27724 fall nonzero] it calls setmustrun [call 1] with a0 = master_procid. It calls slowkgclock [call 3] only when the word at [-0x3a68] is zero [@0x27750 taken zero]. It calls restoremustrun [call 2, @0x27724 fall nonzero].
  Role (from name): stops the audio clock; it pins the run to the master processor with setmustrun [call 1, @0x27724 fall nonzero] and releases the pin with restoremustrun [call 2, @0x27724 fall nonzero].
  Reviewed: 2026-11-12

- `init_timebase` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27864
  **Inferred.** It reads the time-of-day clock with rtodc [@0x2786c] and stores to sym(.bss) +0xa830 [@0x27894] and sym(.bss) +0xa838 [@0x27898].
  Role (from facts): sets the software time base from the time-of-day clock [@0x2786c, @0x27894].
  Reviewed: 2026-11-12

- `inittodr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x279b0
  **Inferred.** When sym(miniroot) is nonzero [@0x279d0 taken nonzero] it jumps to the return at 0x27a7c. Otherwise it compares a0 with 0x9660180 [@0x279f8]. When a0 is below that value [@0x279f8 taken] it calls cmn_err_tag with a0 = 0x34 [call 3] and then with a0 = 0x36 [call 2]. It also calls cmn_err_tag with a0 = 0x35 [call 1].
  Role (from name): sets the system time from the time-of-day value in a0, skipping the work when the miniroot flag is set [@0x279d0 taken nonzero] and reporting a bad or distant value through cmn_err_tag [call 1, call 2, call 3].
  Reviewed: 2026-11-12

- `onesec_maint` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27c90
  **Inferred.** It calls tlb_onesec_actions [call 1] and part_heart_beater [call 2]. It calls wtodc [call 3, @0x27d1c fall nonzero] only when that branch falls through. It calls set_pwr_fail [call 4] only when record_uptime is nonzero [@0x27d48 fall nonzero].
  Role (from name): once-a-second maintenance; it runs the TLB once-a-second actions [call 1] and the partition heartbeat [call 2], calls wtodc [call 3, @0x27d1c fall nonzero] for the time-of-day clock and calls set_pwr_fail [call 4, @0x27d48 fall nonzero] for power-fail state.
  Reviewed: 2026-11-12

- `tick_actions` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27d90
  **Inferred.** It calls ecc_log [call 1, @0x27d98 fall nonzero] only when the flag byte at [-0x38c8] is nonzero. It calls tlb_tick_actions [call 2] and cnodetocpu [call 3]. It reaches wards_tick [@0x27df4] only when the halfword at [-0x3bd8] equals the result of cnodetocpu [@0x27dbc fall].
  Role (from facts): per-tick work; it runs the TLB tick actions [call 2] and a conditional error-log call [call 1, @0x27d98 fall nonzero], and on the CPU whose halfword at [-0x3bd8] equals the cnodetocpu result [@0x27dbc fall] it also reaches wards_tick [@0x27df4].
  Reviewed: 2026-11-12

- `fast_timeout` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x284dc
  **Inferred.** It calls callout_get_pri [call 1] and then dotimeout [call 2], passing it the callout_get_pri result, and returns the result of dotimeout [@0x28534].
  It calls cmn_err [call 3] when dotimeout returns zero [@0x28528 taken zero].
  Role (from facts): queues a callout through dotimeout [call 2] at the priority callout_get_pri returns [call 1] and reports a zero result through cmn_err [call 3, @0x28528 taken zero].
  Reviewed: 2026-11-12

- `timein` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x287dc
  **Inferred.** It calls frs_handle_timein [call 1, @0x287f8 fall] when the word at [-0x3958] is nonzero. It calls init_fasthz_variables [call 5, @0x28810 taken] when fasthz differs from sym(.sbss) +164. When the word at [-0x3958] is zero [@0x287f8 taken zero] it calls acktmoclock [call 2] and timein_body [call 4].
  Role (from facts): handles a time-in event; the word at [-0x3958] selects frs_handle_timein [call 1, @0x287f8 fall nonzero] or the path that acknowledges the timeout clock [call 2] and runs timein_body [call 4], and fasthz differing from sym(.sbss) +164 updates the fast-hz variables [call 5, @0x28810 taken].
  Reviewed: 2026-11-12

- `settimetrim` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28b08
  **Inferred.** It checks the capability with cap_able [call 1]. When cap_able returns zero [@0x28b20 taken zero] it returns without taking the lock. It takes timelock with mutex_spinlock_spl [call 2, @0x28b44 taken] only when a0 is within the two bounds it compares [@0x28b34, @0x28b44], and releases it with mutex_spinunlock [call 3]. It returns one of 0x0, 0x1 or 0x16 [@0x28b54].
  Role (from facts): sets the time trim to a0 under timelock [call 2, call 3] when cap_able returns nonzero [@0x28b20 fall nonzero] and a0 is within the compared bounds [@0x28b44 taken].
  Reviewed: 2026-11-12

- `nanotime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x292ec
  **Inferred.** When the word at sym(.sbss) +112 is zero [@0x292f0 taken zero] it stores zero to two words of the structure at a0 and returns [@0x29414]. Otherwise it reads the time-base words at sym(.bss) +0xa830 [@0x29304] and +0xa838 [@0x29308], retrying while the version words differ [@0x29314 taken]. It stores an 8-byte word at +0x8 [@0x293cc] and a 4-byte word at +0x0 [@0x293d0] of the structure at a0.
  Role (from name): returns the current time as seconds and nanoseconds in the structure at a0 [@0x293cc, @0x293d0].
  Reviewed: 2026-11-12

- `irix5_microtime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2941c
  **Inferred.** It calls nanotime_syscall [@0x2942c] and stores two 4-byte fields at +0x0 [@0x29438] and +0x4 [@0x29450] of the structure at a0.
  Role (from name): returns the time as seconds and microseconds in the structure at a0; it gets the nanosecond time through nanotime_syscall [@0x2942c] and stores the pair [@0x29438, @0x29450].
  Reviewed: 2026-11-12

- `local_settime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x294a4
  **Inferred.** It takes timelock with mutex_spinlock_spl [@0x294c0] and stores the time-base words at sym(.bss) +0xa830 [@0x29538] and +0xa838 [@0x29544]. It releases the lock with mutex_spinunlock [@0x29560].
  Role (from facts): sets the time base under timelock [@0x294c0, @0x29538, @0x29560].
  Reviewed: 2026-11-12

- `cache_preempt_limit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x295e4
  **Inferred.** It calls findcpufreq_cycles [@0x295ec] and returns its result [@0x295f8].
  Role (from facts): passes the result of findcpufreq_cycles back to the caller [@0x295ec, @0x295f8].
  Reviewed: 2026-11-12

- `tstoclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29628
  **Inferred.** It reads the word at a0 +0x0 [@0x29628] and the word at a0 +0x8 [@0x2964c]. It reads the counter at abs 0x9200000001030100 [@0x29688] only when a1 equals 1 [@0x29674 taken].
  Role (from name): converts the time structure at a0 into a clock tick value [@0x29628, @0x2964c]; the counter read [@0x29688] happens only when a1 equals 1 [@0x29674 taken].
  Reviewed: 2026-11-12

- `findcpufreq_cycles` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2973c
  **Inferred.** When the word at [-0x38b4] is nonzero [@0x29744 fall nonzero] it returns that word [@0x2974c]. When it is zero [@0x29744 taken zero] it raises the interrupt level with splhi [call 1] and sets the count with _set_count [call 2]. On that path it reads the count with _get_count [call 3, @0x29744 taken zero], passes it to cpu_cycles_adjust [call 4, @0x29744 taken zero], stores to a word [@0x29820] and restores the level with splx [call 5, @0x29744 taken zero].
  Role (from facts): measures the CPU cycle count for the frequency calculation with the interrupt level held raised [@0x29754, @0x2976c, @0x2980c], and returns the word at [-0x38b4] directly when it is nonzero [@0x29744 fall nonzero].
  Reviewed: 2026-11-12

- `us_delay` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x298cc
  **Inferred.** It reads the counter at abs 0x9200000001030100 [@0x298d4] and returns when the count reaches the target [@0x29944 taken]. Otherwise it loops back [@0x29994 taken].
  Role (from name): busy-waits on the free-running counter for the number of microseconds in a0 [@0x29944 taken, @0x29994 taken].
  Reviewed: 2026-11-12

- `atomicSetCpumask` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x299ec
  **Inferred.** It loads the word at a1 [@0x299ec]. It loads the word at a0 with lld [@0x299f0] and stores to the same address with scd [@0x299f8]. The loop repeats while the branch at 0x299fc is taken [@0x299fc taken zero]. It returns the word loaded from a0 [@0x29a04].
  Role (from facts): ORs the word at a1 into the word at a0 with an lld and scd retry loop [@0x299f0, @0x299f8, @0x299fc taken zero].
  Reviewed: 2026-11-12
