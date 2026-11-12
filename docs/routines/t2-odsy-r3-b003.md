# Tier-2 routine roles, odsy round 3 batch 3

- `query_cyclecntr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27aa4
  **Inferred.** Makes no calls. It makes a 4-byte store (`sw` at 0x27ac4) and returns the constant 0x9200000001030100 in v0 (return at 0x27ac0). That is the same address `rtc_read` and `set_timer_intr` load from, so it probably reports the location of a cycle counter; the facts do not show what gets stored or where.
  Reviewed: 2026-11-12 (sonnet)

- `query_fasttimer` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27ac8
  **Inferred.** Makes no calls. It loads 8 bytes from the fixed address 0x9200000001604200 (`ld` at 0x27acc) and returns with v0 unresolved (return at 0x27ae4). The same address is read by `tick_maint`, `init_fasthz_variables` and `rtc_resolution`, so this is probably a fast-timer counter query; the facts do not show the returned value.
  Reviewed: 2026-11-12 (sonnet)

- `query_cyclecntr_size` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27aec
  **Inferred.** Makes no calls and touches no memory. It returns the constant 0x40 in v0 at 0x27aec. The name and the value suggest a 64-bit counter width, which the facts do not establish.
  Reviewed: 2026-11-12 (sonnet)

- `tick_maint` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27af4
  **Inferred.** Loads the word at `.sbss`+144, subtracts 1 and returns the result unless it is zero (`beq` at 0x27b10); when it is zero it calls `__nanotime` at 0x27b88 with the loaded value as a1 and 1 as a2. The global `lbolt` is compared with 1 (`beq` at 0x27b00); in that case a halfword at -0x3bd8 is tested (`bne` at 0x27b24) and, when it is zero, the 8-byte values at 0x9200000001030100 (0x27b34) and 0x9200000001604200 (0x27b38) are loaded. The periodic-tick reading fits the name and the `lbolt` test, but the facts do not give the units of `.sbss`+144.
  Reviewed: 2026-11-12 (sonnet)

- `fastick_maint` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27b98
  **Inferred.** Calls `ackkgclock` at 0x27ba4 first, with its entry arguments passed through, then makes a byte store (`sb` at 0x27bb0). It loads a halfword at -0x3bd8 and compares it with `master_procid` (`beq` at 0x27bbc). When they are equal it goes to 0x27c00, which calls through the optional pointers `midi_timercallback_ptr` at 0x27c08 and `ieee1394_timercallback_ptr` at 0x27c1c, skipping each call when its pointer is zero. `fast_user_prof` at 0x27bc4 is reached from both sides of the compare, with a0 passed on. `prfintr` at 0x27be4 is called only when the word at -0x3a68 is nonzero (`beqz` at 0x27bd0), with arguments loaded from offsets 0x120, 0xe0, 0xf0 and 0xf8 of a0. The return value comes from `fast_user_prof` or `prfintr`. The facts do not name the word at -0x3a68, so the profiling reading is inferred only from the callee names.
  Reviewed: 2026-11-12 (sonnet)

- `chktimedrift` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27c2c
  **Inferred.** Calls `rtodc` at 0x27c34 and `doadjtime` at 0x27c80. The tests at 0x27c48 (on a3) and 0x27c50 (on a2) choose between the two paths that end at 0x27c58, whose return value comes from one of those two calls. The name points to a clock drift check against the hardware time-of-day, but the drift units and thresholds are not in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `onesec_maint` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27c90
  **Inferred.** Role (from name): once-per-second maintenance. Calls `tlb_onesec_actions` at 0x27c98 first, then branches on a value the facts leave unresolved (`beq` at 0x27cc8), on `.sdata`+316 (`beq` at 0x27cd4) and on `.sdata`+308 (`beq` at 0x27cf4). Calls `part_heart_beater` at 0x27ce0 and returns its value. Calls `wtodc` at 0x27d30 with `.sdata`+316 in a1, `lastadjtod` in a2 and `lbolt` in a3, after tests that include `lastadjtime` against `lbolt` (`beq` at 0x27d08). Calls `set_pwr_fail` at 0x27d70 with the constant 0x3c in a2 only when `record_uptime` is nonzero (`beq` at 0x27d48 skips it when zero). Calls `chktimedrift` at 0x27d80 when `adjtime_delta` is zero (`beq` at 0x27d14 taken). The facts do not name the `.sdata` fields, so what each call is for is inferred only from its callee name.
  Reviewed: 2026-11-12 (sonnet)

- `tick_actions` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27d90
  **Inferred.** Role (from name): per-tick error servicing. Loads a byte at -0x38c8 and skips `ecc_log` at 0x27da0 when it is zero (`beq` at 0x27d98); `tlb_tick_actions` at 0x27da8 is reached either way. It calls `cnodetocpu` at 0x27db0 with the halfword at -0x3bd6 as a0 and compares its result with the halfword at -0x3bd8 (`bne` at 0x27dbc). Further on it reads and writes word-sized values at offsets 0x8848 and 0x884c of a pointer at -0x3c00, branches on them and on `disable_sbe_polling`, and calls `wards_tick` at 0x27df4. Other paths call `memerror_sbe_intr` at 0x27e5c with a0 set to 1 and the `get_nasid` result in a1, `capture_hub_stats` at 0x27e6c, `probe_md_errors` at 0x27e84 and 0x27ea4 with the `get_nasid` result in a0, `md_int_unblock` at 0x27e8c and `probe_wards` at 0x27eac. The facts do not show what these routines do with their arguments.
  Reviewed: 2026-11-12 (sonnet)

- `init_fasthz_variables` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27ebc
  **Inferred.** Makes no calls. It reads the 8-byte counter at 0x9200000001604200 twice (`ld` at 0x27ec0 and 0x27efc) and has no stores in the facts. The name suggests it sets up the fast-timer frequency variables, but the facts show the reads and not the values it derives or writes.
  Reviewed: 2026-11-12 (sonnet)

- `rtc_read` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27f5c
  **Inferred.** A single 8-byte load from 0x9200000001030100 (`ld` at 0x27f64) that becomes the return value in v0 (return at 0x27f60). The address is the one `query_cyclecntr`, `set_timer_intr` and `__nanotime` use, which suggests a shared time register; the address reuse is the only evidence.
  Reviewed: 2026-11-12 (sonnet)

- `rtc_resolution` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27f68
  **Inferred.** Makes no calls. It loads 8 bytes from 0x9200000001604200 (`ld` at 0x27f6c) and returns with v0 unresolved (return at 0x27f84). The name suggests the tick resolution of the RTC; the facts do not show how the loaded value becomes the result.
  Reviewed: 2026-11-12 (sonnet)

- `normalize_RTC_value` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27f8c
  **Inferred.** Compares `fasthz` with `.sbss`+164 (`bne` at 0x27fa0). When they differ it calls `init_fasthz_variables` at 0x27fd4 with its entry arguments passed through. The return value at 0x27fcc is unresolved in the facts, and the facts show no branch back to the compare and no computation of the result. The name suggests it normalizes an RTC value; the facts do not show how.
  Reviewed: 2026-11-12 (sonnet)

- `set_timer_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27fe4
  **Inferred.** Indexes the per-CPU table `pdaindr` by a0 (`ld` at 0x2801c) and reads a halfword at offset 0x42c and a byte at offset 0x528 of the record (bit 0 of the byte tested by `beq` at 0x2803c). Branches on whether a1 is zero (`beq` at 0x28008) and on a value the facts leave unresolved (`blez` at 0x28014). Compares the 8-byte counter at 0x9200000001030100 with a1 (`bne` at 0x2806c and the test at 0x28084). Makes 8-byte stores at 0x28050 and 0x280cc whose target addresses the facts do not resolve. Calls `timepoke` at 0x280a4 and 0x280e8 and `cpuaction` at 0x280d8 and 0x28104, with `timepoke` as a1 of `cpuaction` and a2 set to 1. Returns 0 or 1. The facts do not name the stored registers or the meaning of the return value; the role of a per-CPU timer compare update is inferred from the name only.
  Reviewed: 2026-11-12 (sonnet)

- `timeout_get_queuehead` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28114
  **Inferred.** Role (from name): fetch a timeout queue head. Finds the per-CPU record through `pdaindr` (`ld` at 0x28128). Makes 4-byte stores at offset 0x5f8 (0x28180, 0x281b8, 0x282f0, 0x2830c) and at offset 0x650 (0x28224, 0x28228), and only loads offset 0x5f0 (0x2819c, 0x281bc). Passes the counter at 0x9200000001030100 as a0 to `normalize_RTC_value` at 0x282b0 and 0x28320 with a1 set to 4 and a3 set to 3. Loads the 8-byte value at a1 (0x2823c) and compares it with 0 and -0x64 (0x28250, 0x28294), and makes 8-byte stores at 0x2829c, 0x282dc, 0x2834c and 0x28354. The facts do not show a walk of a queue or name the structures, so the queue reading rests on the routine name.
  Reviewed: 2026-11-12 (sonnet)

- `chktimeout_tick` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28358
  **Inferred.** Calls `do_chktimeout_tick` at 0x283b8 on an address inside a per-CPU record from `pdaindr` (+1496) when bit 0 of a loaded word is set (`beq` at 0x283b0); a nonzero return goes to 0x28424. It then loops with `cpu_enabled` at 0x283dc up to `maxcpus` (`bne` at 0x284cc back to 0x283dc). For each index where `cpu_enabled` returns nonzero (`beq` at 0x283e4) and bit 0 of a loaded word is set (`beq` at 0x28400) it calls `do_chktimeout_tick` at 0x28414. When that call returns nonzero, the branches at 0x28438 to 0x28454 compare a value in s2 against 0, 3, 1 and 4. The facts do not name these values or the loaded words, so the role of per-CPU timeout checking is inferred from the callee names.
  Reviewed: 2026-11-12 (sonnet)

- `fast_timeout` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x284dc
  **Inferred.** Calls `callout_get_pri` at 0x28500, then `dotimeout` at 0x28520 with the halfword at -0x3bd8 as a0, the entry arguments in a1 to a3, the `callout_get_pri` result in a4 and the constant 1 in a5. When `dotimeout` returns nonzero that value is returned; when it returns zero (`beq` at 0x28528) control goes to 0x2853c, and the facts show a `cmn_err` call at 0x28544 with a0 zero and a message from `.rodata`. `fast_timeout_nothrd` at 0x28554 is the variant without the priority lookup. What the zero return and the constant 1 mean is not established by the facts.
  Reviewed: 2026-11-12 (sonnet)

- `fast_timeout_nothrd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28554
  **Inferred.** Skips `callout_get_pri` and calls `dotimeout` at 0x28594 with the halfword at -0x3bd8 as a0, the entry arguments in a1 to a3, a4 set to 0 and a5 set to 4. When `dotimeout` returns nonzero that value is returned; when it returns zero (`beq` at 0x2859c) control goes to 0x285b0, and the facts show a `cmn_err` call at 0x285b8 with a0 zero and a message from `.rodata`. It reads the same halfword at abs 0xffffffffffffc428 that `fast_timeout` reads at 0x28514. The no-thread name and the constant 4 suggest a different insertion mode, which the facts do not settle.
  Reviewed: 2026-11-12 (sonnet)

- `callout_time_to_hz` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x285c8
  **Inferred.** Loads 8 bytes from 0x9200000001030100 (`ld` at 0x285cc) and returns with v0 unresolved (return at 0x285f0). The name suggests a conversion from callout time to ticks, but the facts show only the load and an unresolved return, not how v0 is computed.
  Reviewed: 2026-11-12 (sonnet)

- `timein_body` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x285f8
  **Inferred.** Role (from names): handle a timein event. Tests bit 0x2 of the halfword at offset 70 of the object at [a0+24] (`beq` at 0x2865c). When it is clear control goes to 0x28778 and `timein_entry_ithrd` is called at 0x2877c. When it is set it calls `mutex_spinunlock` on a0+8 at 0x28674, `timein_entry` at 0x2867c and `test_and_set_int64` on a0+88 at 0x28688 with a1 zero. When that result equals 2 it goes to 0x287b4, which calls `mutex_spinlock_spl` on a0+8, `sv_broadcast` on a0+112 at 0x287c0 and `mutex_spinunlock` at 0x287cc. On the other path it takes the lock with `mutex_spinlock_spl` at 0x2869c, compares the counter at 0x9200000001030100 with the 8-byte value at [a0+24] (`beq` at 0x286bc), calls `set_timer_intr` at 0x286cc with that value as a1 and a2 zero, and releases the lock at 0x286dc. `get_nasid` is called at 0x28724 and 0x28798. The facts do not name the object layout, so the roles rest on callee names.
  Reviewed: 2026-11-12 (sonnet)

- `timein` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x287dc
  **Inferred.** Role (from name): timer-time event entry. Calls `frs_handle_timein` at 0x28800 only when bit 0x20 of the doubleword at -0x3d80 is clear (`bne` at 0x287e8) and the word at -0x3958 is nonzero (`beq` at 0x287f8). Calls `acktmoclock` at 0x28818 and `siroff` with the constant 0x100 at 0x28820, then `timein_body` at 0x2883c with the per-CPU entry from `pdaindr`. Calls `init_fasthz_variables` at 0x28860 when `fasthz` differs from `.sbss`+164 (`bne` at 0x28810). Calls `log_tstamp_event` with 0x6d at 0x28880 and with 0x65 (a1 0x6d) at 0x2889c, on paths where bit 0x20 of the doubleword at -0x3d80 is set (`bne` at 0x287e8 and 0x2884c). The facts do not show what mask 0x100 selects.
  Reviewed: 2026-11-12 (sonnet)

- `migrate_timeouts` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x288ac
  **Inferred.** Role (from name): move timeouts between CPUs. Branches first on whether a0 equals a1 (`beq` at 0x288d8), taken when equal. Otherwise, in address order, it calls `get_nasid` at 0x2891c, `clock_prtimeout_nothrd` at 0x28970, `splx` at 0x28980, `allocate_migrate_timeout` at 0x28988 and `splhi` at 0x28994, so the allocation comes before the lock. It then takes the lock with `mutex_spinlock_spl` at 0x289a4, releases it at 0x289ec, calls `callout_free` at 0x289f4, `add_migrated_timeout` at 0x28a48 with the allocated record in a2, `clock_prtimeout` at 0x28a84, a second `mutex_spinunlock` at 0x28a98, `splx` at 0x28aa0 and `free_migrate_timeout` at 0x28aa8. The migration rule is not established by the facts.
  Reviewed: 2026-11-12 (sonnet)

- `settimetrim` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28b08
  **Inferred.** Calls `cap_able` at 0x28b18 with the constant 0x8000000 and returns early on its failure path. Otherwise it bounds-checks the argument in a0 against 0xffffffffffd23940 and 0x2dc6c0 (`bne` at 0x28b34, `beq` at 0x28b44), with the update path inside the `timelock` region taken at 0x28b5c and released at 0x28b6c. The return codes 0x0, 0x1 and 0x16 appear in the facts, but no store to `timetrim` does, so the write is not confirmed.
  Reviewed: 2026-11-12 (sonnet)

- `gettimetrim` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28b84
  **Inferred.** A one-instruction reader: the return at 0x28b84 yields the global `timetrim` in v0. Its name pairs it with `settimetrim` at 0x28b08, but the facts show only the read.
  Reviewed: 2026-11-12 (sonnet)

- `doadjtime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28b8c
  **Inferred.** Role (from name): apply a time adjustment. It takes the lock with `nested_spinlock` at 0x28c2c and 0x28dc4, reads the current time with `__nanotime` at 0x28c1c and 0x28db8, and releases with `mutex_spinunlock` at 0x28cd4 and 0x28e24, with `splprof` calls at 0x28c14 and 0x28db0. The constants 0x3e8 and 0xf4240 in the comparisons at 0x28bd0 and 0x28d00 suggest a scale from microseconds to nanoseconds, which is not established by the facts.
  Reviewed: 2026-11-12 (sonnet)

- `__nanotime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28e3c
  **Inferred.** Takes the `timelock` region with `mutex_spinlock_spl` at 0x28e48 and releases it at 0x29034 or 0x290c4. In between it reads the counters at 0x9200000001030100 (0x28e64) and 0x9200000001604200 (four loads) and an 8-byte word at +0xa838 and a 4-byte word at +0xa830 from a base the facts do not name. The constant 0x3b9aca00 (one billion) is the carry bound in the compares at 0x28f94 and 0x28fec, which suggests a nanoseconds-per-second split; the facts do not show the layout of the returned value.
  Reviewed: 2026-11-12 (sonnet)
