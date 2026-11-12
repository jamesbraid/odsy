# Tier-2 routine roles, odsy batch 5

Targets 126 to 150 of the ranked located, hardware-only reading list (`t2list`). All 25 are in the IP35boot `kernel.o`. The renderer's facts were read for each; every grade is inferred, because the facts show what the code does but not the intent behind it.

- `badaddr_val` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ebcc
  **Inferred.** A thin wrapper. It sets its first argument to sp-48, passes its own a1 to a3 through, and calls `probe_common` at 0x3ec6c (jal at 0x3ebe8). It returns the callee's v0 at 0x3ebf4. The name points at a bad-address probe, but the rendered code shows only the call, not what the probe tests.
  Reviewed: 2026-11-12 (sonnet)

- `wbadaddr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ebfc
  **Inferred.** The same shape as `badaddr_val`: sp-48 as a0, a1 to a3 passed through, a call to `probe_common` at 0x3ec6c (jal at 0x3ec20), and the callee's v0 returned at 0x3ec2c. The name suggests a write-side probe; the call alone does not confirm it.
  Reviewed: 2026-11-12 (sonnet)

- `wbadaddr_val` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ec34
  **Inferred.** The same wrapper again, with its call to `probe_common` at 0x3ec6c (jal at 0x3ec50) and the return at 0x3ec5c. The three probes in this run share that one helper.
  Reviewed: 2026-11-12 (sonnet)

- `VEC_cpfault` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3f2a0
  **Inferred.** Role (from name): a CPU-fault exception vector. The facts show two early tests, `s0 & 0x18` at 0x3f2a4 and a1 against 1 at 0x3f2bc. They also show a run of swc1 stores (0x3f334 to 0x3f3b0) and sdc1 stores (0x3f3bc to 0x3f438) at offsets from +0x28 to +0x124. Those stores run only when the branches at 0x3f2ec (a loaded word equal to 0 skips to 0x3f43c), 0x3f300 and 0x3f32c let them; the base register of the stores is not shown. A matching run of lwc1 loads (0x3f47c to 0x3f4f8) and ldc1 loads (0x3f504 to 0x3f580) follows, selected by the branches at 0x3f454 and 0x3f474. The routine leaves through tail jumps to exception_exit (0x3f5c8 and 0x3f5d0) or to VEC_trap with a1 = 0x8c (0x3f5d8). The path that reaches cmn_err at 0x3f600 is not traced here.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3f608
  **Inferred.** Role (from name): initialization of the hardware performance-counter code. The facts show a 64-bit store at .bss+0xece8, 16-bit stores at +0xecf4 and +0xecf6 and a 32-bit store at +0xecf8, and spinlock_init (jal at 0x3f628) on .bss+0xece8. When `maxcpus` is above 0 (blez at 0x3f66c) it calls init_mutex (jal at 0x3f690), then loops over CPU numbers below `maxcpus`. For each CPU that cpu_enabled (jal at 0x3f6ac) accepts it calls hwperf_cpu_monitor_info_alloc [0x40f44] (jal at 0x3f6bc), and the loop continues only while that call returns nonzero (bne at 0x3f6d0). The code after the loop calls md_perf_init (0x3f6e4), io_perf_init (0x3f6ec) and hwperf_cpu_monitor_info_alloc again (0x3f6f4). It has two cmn_err calls with a0 = 0, at 0x3f718 and 0x3f72c; which conditions reach them is not traced, beyond the beq at 0x3f6fc testing the result of the call at 0x3f6f4.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_overflowed_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3f73c
  **Inferred.** Role (from name): an interrupt handler for counter overflow. A branch at 0x3f750 tests a2 against 0xe and one at 0x3f758 tests a2 against 0xf. Equal to either goes to r12k_perf_overflow_intr (jal at 0x3f77c); any other value goes to r10k_perf_overflow_intr (jal at 0x3f760). Both calls pass a0, a1 and a3 through, and the return value is the callee's v0. The only load shown, a `lw +0x0` at 0x3f73c, is not tied to a2 in the facts, so where the selector comes from is not settled.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_enable_sys_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3f78c
  **Inferred.** Role (from name): a wrapper for enabling the system-wide monitor. It calls hwperf_enable_counters (jal at 0x3f7ac) with the `sys_hwperf_mon` pointer as a0, its own a0 as a1, its own a1 as a2, its own a2 ORed with 0x8 as a3 (the fourth argument) and its own a3 as a4 (the fifth). It returns the callee's v0 at 0x3f7b8.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_enable_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3f7c0
  **Inferred.** Role (from name): turns on counting for one monitor object. Calls in address order: cap_able(0x2000000000) (jal at 0x3f7f0), mutex_lock on a0+32 (0x3f854, reached only on some paths), hwperf_get_access (0x3f888), r1nk_perf_init_counters (0x3f8b8) and hwperf_initiate_startup (0x3f938, a3 = -0x11, the complement of 0x10). Branches at 0x3f7fc and 0x3f80c decide which of these a given call reaches. A nonzero result from hwperf_get_access reaches a mutex_unlock (0x3f898). A nonzero result from r1nk_perf_init_counters reaches hwperf_release_access (0x3f8cc) and a mutex_unlock (0x3f8d4). The return value is one of 0x16, 0x10, 0x1, 0x0, the result of hwperf_get_access or the result of r1nk_perf_init_counters.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_disable_sys_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3f978
  **Inferred.** A wrapper that disables the system-wide monitor. It passes the `sys_hwperf_mon` pointer as a0 to hwperf_disable_counters (jal at 0x3f980), forwards a1 to a3 unchanged, and returns the callee's v0 at 0x3f98c.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_disable_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3f994
  **Inferred.** Role (from name): stops counting on one monitor object. It calls mutex_lock on a0+32 (jal at 0x3f9b8), then tests bits of the 16-bit word at a0: `& 0xf` at 0x3f9dc (zero skips to a mutex_unlock at 0x3faa4) and `& 0x2` at 0x3f9e8 (zero skips the CPU loop). The loop runs while the index is below `maxcpus` (0x3f9f4, 0x3fa34). For each CPU that cpu_enabled (jal at 0x3fa00) accepts it does loads and a 16-bit store (0x3fa14 to 0x3fa24); it makes no calls other than cpu_enabled. After the loop, one time, it calls hwperf_read_counters (0x3fa3c), hwperf_check_release (0x3fa44) and hwperf_release_access (0x3fa4c). It then tests bit 0x40 of the word at a0 (0x3fa5c) and only when that bit is set does it do a 32-bit load and store at +0x18 (0x3fa64, 0x3fa6c). It calls mutex_unlock (0x3fa70) and returns 0 at 0x3fa94.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_parent_accumulates` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3fab4
  **Inferred.** Role (from name): a helper for accumulating into a parent record; the facts do not settle it. A null a0 branches at 0x3fab4 to 0x3fae0, where a 32-bit store at 0x3fae4 appears; the value returned on that path is not shown. With a0 nonzero it reads the 16-bit word at offset 0 (0x3fabc) and tests its low nibble (0x3fac4). A 16-bit store at 0x3facc runs only when the nibble is nonzero. It then does a 32-bit load at +0x18 (0x3fad0) and a 32-bit store (0x3fad4), and returns 0 at 0x3fad8. No operation on a second object is shown.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_change_sys_control` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3fae8
  **Inferred.** A wrapper that changes the control settings of the system-wide monitor. It passes the `sys_hwperf_mon` pointer as a0 to hwperf_change_control (jal at 0x3fb04), shifts the caller's a0 to a2 into a1 to a3, and returns the callee's v0 at 0x3fb10.
  Reviewed: 2026-11-12 (sonnet)

- `cpumon_alloc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3fb18
  **Inferred.** Role (from name): finds or creates a per-CPU monitor record. It loads the pointer at a0+1160 and returns it (0x3fb34) when it is nonzero. When it is zero the routine calls hwperf_cpu_monitor_info_alloc [0x40f44] (jal at 0x3fb7c), takes mutex_bitlock with a1 = 1 on [a0+808]+148 (jal at 0x3fb94), and re-checks the slot at a0+1160 (0x3fb9c, bne at 0x3fba4). Depending on those loads and branches it does 64-bit stores at +0x488 (0x3fb64) and +0xa8 (0x3fbd8) with bases not shown, and does a 32-bit and a 16-bit store (0x3fbc8, 0x3fbd4) whose base is not shown. It releases the bit lock with mutex_bitunlock (0x3fbdc, 0x3fbf0). When a register tested at 0x3fbf8 is nonzero it calls hwperf_cpu_monitor_info_free (0x3fc00). A final load of +0x488 at 0x3fc28 follows.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_change_control` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3fc2c
  **Inferred.** Role (from name): reconfigures a monitor object. It calls hwperf_disable_counters (jal at 0x3fc40) with its own a0 to a3. When that returns 0 (beq at 0x3fc48) it calls hwperf_enable_counters (jal at 0x3fc68) with a0 and a1 as received, a2 = 0, its own a2 as a3 and its own a3 as a4. The return value is one of the enable call's result and a value the facts leave unresolved, so which path returns which is not settled.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_sys_control_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3fc88
  **Inferred.** A wrapper that reports control information for the system-wide monitor. It passes the `sys_hwperf_mon` pointer as a0 to hwperf_control_info (jal at 0x3fca4), shifts the caller's a0 to a2 into a1 to a3, and returns the callee's v0 at 0x3fcb0.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_control_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3fcb8
  **Inferred.** Role (from name): reports control information for one monitor object. It calls mutex_lock on a0+32 (jal at 0x3fce8). It tests the low nibble of the 16-bit word at a0 (0x3fcf8); zero skips to mutex_unlock at 0x3fde8. Otherwise it loops over indices below the 16-bit count at a0+112 (0x3fd04 to 0x3fd50, with 16-bit loads and stores in the loop). When a2 is nonzero (beq at 0x3fd58) it does 32-bit stores (0x3fd64, 0x3fd80) whose base registers are not shown, in a second loop bounded by the same count. It calls mutex_unlock (0x3fdc0). The return value is 0x0 or 0x16. The buffer layout and what the slots mean are not settled here.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_get_cpu_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3fe08
  **Inferred.** Role (from name): reads counters for one CPU. It loads the 16-bit word at .bss+0xecf4 and branches on equality with 0x8 (0x3fe28); the return at 0x3fe34 is one of 0x16 or the result of hwperf_get_counters. On the equal path it calls cpu_enabled (jal at 0x3fe44); zero skips to 0x3fe6c. It indexes `pdaindr` with 16-byte entries (shift by 4), loads a pointer at +8 and then a pointer at +1832 (0x3fe60, 0x3fe64). When that pointer is nonzero (bne at 0x3fe68) it calls hwperf_get_counters (jal at 0x3fe7c) with it as a0, and a1 and a2 as received.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_get_sys_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3fe90
  **Inferred.** A wrapper that reads the system-wide monitor. It passes the `sys_hwperf_mon` pointer as a0 to hwperf_get_counters (jal at 0x3fea4), shifts the caller's a0 and a1 into a1 and a2, and returns the callee's v0 at 0x3feb0.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_get_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3feb8
  **Inferred.** Role (from name): reads the counter block of one monitor object. It calls mutex_lock on a0+32 (jal at 0x3fee0) and hwperf_read_counters (jal at 0x3fee8). It then loops over slots bounded by the 16-bit count at a0+112 (0x3fef8 to 0x3ff58), with 64-bit loads and stores in the loop; a 32-bit word at +0x18 is loaded (0x3ff64). It calls mutex_unlock (0x3ff68), does a 32-bit store at 0x3ff6c whose base register is not shown, and returns 0 at 0x3ff80.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_plus_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ff88
  **Inferred.** Role (from name): adds a monitor object's counters into a total; the facts do not show the addition. It calls mutex_lock on a0+32 (jal at 0x3ffb4) and hwperf_read_counters (jal at 0x3ffbc), then loops over the 16-bit count at a0+112 with 64-bit loads and stores (0x3ffc8 to 0x40030). It loads the word at a0+24 and the 32-bit word at a2 (0x40038, 0x4003c). The 32-bit store at 0x4004c runs only when the word at a2 is below the word at a0+24 (signed, beq at 0x40044); the value stored is not shown. It calls mutex_unlock (0x40058) and returns that call's v0.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_set_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40070
  **Inferred.** Role (from name): sets a monitor object's counters. It calls mutex_lock on a0+32 (jal at 0x4009c), then loops over the 16-bit count at a0+112 with 64-bit loads and stores (0x400a8 to 0x400f4). It loads the 32-bit word at a0+24 and the word at a2 (0x400fc, 0x40100). The 32-bit store at 0x40110 runs only when the word at a2 is below the word at a0+24 (signed, beq at 0x40108); the stored value and the store's base register are not shown. It calls mutex_unlock (0x4011c) and returns that call's v0.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_setup_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40134
  **Inferred.** Role (from name): starts counting. It loads the 16-bit word at .bss+0xecf4 and calls r1nk_perf_start_counters with its own a0 to a3 only when that word equals 0x4 (beq at 0x40144, jal at 0x40174). On the other path it does a 32-bit load and store at +0x18 and a 16-bit load and store (0x4014c to 0x40168) with bases not shown, and the start call is skipped. The return value merges the start call's result with a value the facts leave unresolved. Whether the 0x4 comes from what hwperf_init stores at that address is not shown.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_multiplex_events` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40184
  **Inferred.** Role (from name): rotates the event set on a multiplexed monitor. It calls r1nk_perf_update_counters (jal at 0x40190) and hwperf_multiplex_counter_check [0x41060] (jal at 0x40198). A zero result from the check skips to 0x40234 (beq at 0x401a8), and bit 0x8 of the 16-bit word at offset 0 being clear skips to 0x40238 (beq at 0x401b8). Otherwise it loads the 16-bit count at a0+48 (0x401c0). When that count is positive it loops, calling hwperf_next_event_index_get [0x410a4] (jal at 0x401d8) and doing a 16-bit store (0x401e0) whose base is not shown. r1nk_perf_start_counters (jal at 0x4022c) is reached after the loop and also directly when the count is not positive. The return value is one of the check's result and a value the facts leave unresolved.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_add_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4024c
  **Inferred.** Role (from name): adds into counters; the add itself is not in the facts. The facts show a loop over slots below the 16-bit count at a0+112 (0x40250 to 0x402b8) with a load-linked 64-bit load (lld at 0x40294) and a store-conditional (scd at 0x402a0). The beql at 0x402a4 branches back to 0x40294 when the store-conditional's result is zero, so it is the retry. The beq at 0x40278 sends a zero value in a7 to 0x40294 and skips a 32-bit load at 0x40280. The routine returns at 0x402c0 with v0 unresolved.
  Reviewed: 2026-11-12 (sonnet)

- `hwperf_fork_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x402c8
  **Inferred.** Role (from name): duplicates a monitor's per-CPU record for a fork. It loads the pointer at a0+1160 (0x402d0). When that pointer is zero it skips to 0x40364 and takes no lock. When it is nonzero it calls mutex_lock on that record's +32 (jal at 0x402ec) and tests the low nibble of its 16-bit word (0x402fc); zero skips to mutex_unlock at 0x40378. Otherwise it calls cpumon_alloc with its own a1 as a0 (jal at 0x40304) and then hwperf_copy_cmp (jal at 0x40314) with a0 = the record at a0+1160 and a1 = the result of cpumon_alloc. Which is source and which is destination is inferred from the callee's name. It then does 16-bit stores at 0x4032c and 0x40334 (offsets +0x16 and +0x0, bases not shown) and calls mutex_unlock (0x40338). At 0x4034c to 0x4035c a load-linked and store-conditional (ll and sc) retry loop updates .bss+0xece8.
  Reviewed: 2026-11-12 (sonnet)
