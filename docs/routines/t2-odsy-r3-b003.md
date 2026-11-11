# Tier-2 routine roles, odsy round 3 batch 3

- `query_cyclecntr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27aa4
  **Inferred.** Makes no calls. It stores a 4-byte value through the pointer in a0 (`sw` at 0x27ac4) and returns the constant 0x9200000001030100 in v0 (return at 0x27ac0). That is the same address `rtc_read` and `set_timer_intr` load from, so it probably reports the location of a cycle counter; the facts do not show what gets stored.

- `query_fasttimer` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27ac8
  **Inferred.** Makes no calls. It loads 8 bytes from the fixed address 0x9200000001604200 (`ld` at 0x27acc) and returns with v0 unresolved (return at 0x27ae4). The same address is read by `tick_maint`, `init_fasthz_variables` and `rtc_resolution`, so this is probably a fast-timer counter query; the facts do not show the returned value.

- `query_cyclecntr_size` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27aec
  **Inferred.** Makes no calls and touches no memory. It returns the constant 0x40 in v0 at 0x27aec. The name and the value suggest a 64-bit counter width, which the facts do not establish.

- `tick_maint` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27af4
  **Inferred.** Reads the global `lbolt` and the word at `.sbss`+144, and calls `__nanotime` at 0x27b88 with `.sbss`+144 as a1. It also loads the 8-byte counters at 0x9200000001030100 (0x27b34) and 0x9200000001604200 (0x27b38), and tests a halfword at -0x3bd8 (`bne` at 0x27b24). The periodic-tick reading fits the name and the `lbolt` test, but the facts do not give the units of `.sbss`+144.

- `fastick_maint` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27b98
  **Inferred.** Calls `ackkgclock` at 0x27ba4 and, under the profiling tests at 0x27bd0 and 0x27bd8 to 0x27be8, `fast_user_prof` at 0x27bc4 and `prfintr` at 0x27be4 with fields of a0. It also calls through two optional callback pointers, `midi_timercallback_ptr` at 0x27c08 and `ieee1394_timercallback_ptr` at 0x27c1c, skipping each when its pointer is zero. The branch at 0x27bbc compares the CPU id with `master_procid`, which suggests only one CPU does the clock acknowledgment; the facts do not show which side of that branch is the master path.

- `chktimedrift` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27c2c
  **Inferred.** Calls `rtodc` at 0x27c34 and `doadjtime` at 0x27c80. The tests at 0x27c48 (on a3) and 0x27c50 (on a2) choose between the two paths that end at 0x27c58, whose return value comes from one of those two calls. The name points to a clock drift check against the hardware time-of-day, but the drift units and thresholds are not in the facts.

- `onesec_maint` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27c90
  **Inferred.** Once-per-second maintenance. It calls `tlb_onesec_actions` at 0x27c98, `part_heart_beater` at 0x27ce0, `wtodc` at 0x27d30 (writing a1 from `.sdata`+316, a2 from `lastadjtod` and a3 from `lbolt`), `set_pwr_fail` at 0x27d70 with the constant 0x3c, and `chktimedrift` at 0x27d80. The branches at 0x27cc8 to 0x27d88 gate each call on `.sdata`+316, `.sdata`+308, `lastadjtime` and `adjtime_delta`; the facts do not name those fields, so each call's trigger is inferred only from its callee name.

- `tick_actions` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27d90
  **Inferred.** Error-service pass for the tick. It calls `ecc_log` at 0x27da0 and `tlb_tick_actions` at 0x27da8, gated by a byte at -0x38c8 (`beq` at 0x27d98). It then compares the CPU id at -0x3bd6 with `cnodetocpu` (0x27db0, branch at 0x27dbc), calls `wards_tick` at 0x27df4, and on the memory-error path calls `memerror_sbe_intr` (0x27e5c), `capture_hub_stats` (0x27e6c) and `probe_md_errors` (0x27e84, 0x27ea4) on the node id from `get_nasid`. The callee names give the role; the facts do not show what those routines do with their arguments.

- `init_fasthz_variables` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27ebc
  **Inferred.** Makes no calls. It reads the 8-byte counter at 0x9200000001604200 twice (`ld` at 0x27ec0 and 0x27efc) and has no stores in the facts. The name suggests it sets up the fast-timer frequency variables, but the facts show the reads and not the values it derives or writes.

- `rtc_read` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27f5c
  **Inferred.** A single 8-byte load from 0x9200000001030100 (`ld` at 0x27f64) that becomes the return value in v0 (return at 0x27f60). The address is the one `query_cyclecntr`, `set_timer_intr` and `__nanotime` use, which suggests a shared time register; the address reuse is the only evidence.

- `rtc_resolution` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27f68
  **Inferred.** Makes no calls. It loads 8 bytes from 0x9200000001604200 (`ld` at 0x27f6c) and returns with v0 unresolved (return at 0x27f84). The name suggests the tick resolution of the RTC; the facts do not show how the loaded value becomes the result.

- `normalize_RTC_value` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27f8c
  **Inferred.** Compares `fasthz` with `.sbss`+164 (`bne` at 0x27fa0). When they differ it calls `init_fasthz_variables` at 0x27fd4 with its arguments passed through, then branches back to the compare at 0x27fa8 (`beq` at 0x27fdc). That reads as a loop that resets the fast-tick variables until the stored frequency matches, but the return value at 0x27fcc is unresolved in the facts.

- `set_timer_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27fe4
  **Inferred.** Indexes the per-CPU table `pdaindr` by a0 (`ld` at 0x2801c), then writes two 8-byte compare values to hub addresses 0x9200000001800108 and 0x9200000001800110, or to 0x9200000001a00108 and 0x9200000001a00110, selected by a node field (`sd` at 0x28050 and 0x280cc). It calls `timepoke` at 0x280a4 and 0x280e8 and `cpuaction` at 0x280d8 and 0x28104. This looks like the per-CPU compare update that `timein` and `migrate_timeouts` depend on; the names of the hub registers are not established by these facts.

- `timeout_get_queuehead` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28114
  **Inferred.** Finds the per-CPU timeout record through `pdaindr` (`ld` at 0x28128) and updates its fields at offsets 0x5f8, 0x650 and 0x5f0 (stores at 0x28180, 0x281b8, 0x282f0). It converts the RTC value at 0x9200000001030100 with `normalize_RTC_value` at 0x282b0 and 0x28320, then walks the queue through the a1 argument (loop around 0x28250 to 0x28294). The field offsets and callee names are the only basis for the queue reading; the facts do not name the structures.

- `chktimeout_tick` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28358
  **Inferred.** Calls `do_chktimeout_tick` at 0x283b8 and again at 0x28414, and `cpu_enabled` at 0x283dc. A loop over the CPU index runs up to `maxcpus` (`bne` at 0x284cc back to 0x283dc), so the routine checks timeouts on each enabled CPU. The branches at 0x28438 to 0x28454 select on a0 against 0, 1, 3 and 4, which the facts do not name.

- `fast_timeout` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x284dc
  **Inferred.** Calls `callout_get_pri` at 0x28500, then `dotimeout` at 0x28520 with the CPU id from -0x3bd8, the entry arguments and the callout priority in a4, and the constant 1 in a5. The return value of `dotimeout` picks one of two paths at 0x28528, and the failure path calls `cmn_err` at 0x28544. The shape matches a fast timeout insertion; `fast_timeout_nothrd` at 0x28554 is the variant without the priority lookup.

- `fast_timeout_nothrd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28554
  **Inferred.** Skips `callout_get_pri` and calls `dotimeout` at 0x28594 with the CPU id from -0x3bd8, a4 set to 0 and a5 set to 4, and branches to `cmn_err` at 0x285b8 on the failure path selected at 0x2859c. It reads the same halfword at abs 0xffffffffffffc428 that `fast_timeout` reads at 0x28514. The no-thread name and the constant 4 suggest a different insertion mode, which the facts do not settle.

- `callout_time_to_hz` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x285c8
  **Inferred.** Loads 8 bytes from 0x9200000001030100 (`ld` at 0x285cc) and returns with v0 unresolved (return at 0x285f0). The name suggests a conversion from callout time to ticks, but the facts show only the load, with no arithmetic that would confirm it.

- `timein_body` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x285f8
  **Inferred.** Takes the lock at a0+8 with `mutex_spinlock_spl` (0x2869c) and tests a flag at offset 70 of the object at [a0+24] (`beq` at 0x2865c). It calls `test_and_set_int64` at 0x28688 on a0+88, then calls either `timein_entry` at 0x2867c or `timein_entry_ithrd` at 0x2877c, re-arms the timer with `set_timer_intr` at 0x286cc, and wakes waiters on a0+112 with `sv_broadcast` at 0x287c0. The object layout is not named in the facts, so the role rests on the callee names.

- `timein` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x287dc
  **Inferred.** Entry point for a timer-time event. It calls `frs_handle_timein` at 0x28800, `acktmoclock` at 0x28818 and `siroff` with the constant 0x100 at 0x28820, then calls `timein_body` at 0x2883c with the per-CPU entry from `pdaindr`. It re-runs `init_fasthz_variables` at 0x28860 when `fasthz` differs from `.sbss`+164 (`bne` at 0x28810), and logs two timestamp events with codes 0x6d and 0x65 at 0x28880 and 0x2889c. The facts do not show what mask 0x100 selects.

- `migrate_timeouts` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x288ac
  **Inferred.** Branches first on whether a0 equals a1 (`beq` at 0x288d8). It then, under the lock taken with `mutex_spinlock_spl` at 0x289a4, allocates a migrate record with `allocate_migrate_timeout` at 0x28988, adds it with `add_migrated_timeout` at 0x28a48 and frees it with `free_migrate_timeout` at 0x28aa8. It calls `callout_free` at 0x289f4 and the `clock_prtimeout` pair at 0x28970 and 0x28a84. The name suggests moving one CPU's timeouts to another, but the migration rule is not established by the facts.

- `settimetrim` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28b08
  **Inferred.** Calls `cap_able` at 0x28b18 with the constant 0x8000000 and returns early on its failure path. Otherwise it bounds-checks the argument in a0 against 0xffffffffffd23940 and 0x2dc6c0 (`bne` at 0x28b34, `beq` at 0x28b44), with the update path inside the `timelock` region taken at 0x28b5c and released at 0x28b6c. The return codes 0x0, 0x1 and 0x16 appear in the facts, but no store to `timetrim` does, so the write is not confirmed.

- `gettimetrim` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28b84
  **Inferred.** A one-instruction reader: the return at 0x28b84 yields the global `timetrim` in v0. Its name pairs it with `settimetrim` at 0x28b08, but the facts show only the read.

- `doadjtime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28b8c
  **Inferred.** Applies a time adjustment under the `timelock` region. It takes the lock with `nested_spinlock` at 0x28c2c and 0x28dc4, reads the current time with `__nanotime` at 0x28c1c and 0x28db8, and releases with `mutex_spinunlock` at 0x28cd4 and 0x28e24, with `splprof` calls at 0x28c14 and 0x28db0. The constants 0x3e8 and 0xf4240 in the comparisons at 0x28bd0 and 0x28d00 suggest a scale from microseconds to nanoseconds, which is not established by the facts.

- `__nanotime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28e3c
  **Inferred.** Takes the `timelock` region with `mutex_spinlock_spl` at 0x28e48 and releases it at 0x29034 or 0x290c4. In between it reads the counters at 0x9200000001030100 (0x28e64) and 0x9200000001604200 (four loads) and the cached words at `.bss`+0xa838 and `.bss`+0xa830. The constant 0x3b9aca00 (one billion) is the carry bound in the compares at 0x28f94 and 0x28fec, which suggests a nanoseconds-per-second split; the facts do not show the layout of the returned value.
