# Tier-2 routine roles, odsy batch 5

Targets 126 to 150 of the ranked located, hardware-only reading list (`t2list`). All 25 are in the IP35boot `kernel.o`. The renderer's facts were read for each; every grade is inferred, because the facts show what the code does but not the intent behind it.

- `badaddr_val` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ebcc
  **Inferred.** A thin wrapper. It sets its first argument to sp-48, passes its own a1 to a3 through, and calls `probe_common` at 0x3ec6c (jal at 0x3ebe8). It returns the callee's v0 at 0x3ebf4. The name points at a bad-address probe, but the rendered code shows only the call, not what the probe tests.

- `wbadaddr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ebfc
  **Inferred.** The same shape as `badaddr_val`: sp-48 as a0, a1 to a3 passed through, a call to `probe_common` at 0x3ec6c (jal at 0x3ec20), and the callee's v0 returned at 0x3ec2c. The name suggests a write-side probe; the call alone does not confirm it.

- `wbadaddr_val` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ec34
  **Inferred.** The same wrapper again, with its call to `probe_common` at 0x3ec6c (jal at 0x3ec50) and the return at 0x3ec5c. The three probes in this run share that one helper.

- `VEC_cpfault` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3f2a0
  **Inferred.** The CPU-fault exception vector. It saves the floating-point registers with a run of swc1 and sdc1 stores (0x3f334 to 0x3f438) into a frame reached through a pointer loaded from the base register. Two tests come first, the status word s0 & 0x18 at 0x3f2a4 and a1 against 1 at 0x3f2bc. It then leaves through exception_exit (j at 0x3f5c8 and 0x3f5d0) or VEC_trap with trap number 0x8c (j at 0x3f5d8). The floating-point restore run at 0x3f47c to 0x3f588 mirrors the save. The path that reaches cmn_err at 0x3f600 is not traced here.

- `hwperf_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3f608
  **Inferred.** Boot-time setup for the hardware performance-counter subsystem. It stores initial 16-bit and 32-bit state in the .bss block at +0xecf4 to +0xecf8, initializes a lock with spinlock_init (jal at 0x3f628) and a mutex with init_mutex (jal at 0x3f690). It then loops over CPUs up to `maxcpus`, skipping any that `cpu_enabled` rejects, and allocates per-CPU monitor info with hwperf_cpu_monitor_info_alloc [0x40f44]. After the loop it calls md_perf_init (0x3f6e4) and io_perf_init (0x3f6ec), and it reports failures through cmn_err at 0x3f718 and 0x3f72c.

- `hwperf_overflowed_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3f73c
  **Inferred.** The counter-overflow interrupt handler. It picks a chip-family handler from a value in a2: 0xe and 0xf go to r12k_perf_overflow_intr (0x3f77c), and any other value goes to r10k_perf_overflow_intr (0x3f760). Its own a0 and a1 are passed through, and it returns the callee's v0. The load at 0x3f73c, from abs 0xffffffffffffc484, is what feeds that value, but the destination register is not named in the facts, so the source of the selector is not settled here.

- `hwperf_enable_sys_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3f78c
  **Inferred.** A wrapper that enables the system-wide monitor. It passes the `sys_hwperf_mon` pointer as a0 to hwperf_enable_counters (jal at 0x3f7ac), forwards the caller's arg0 and arg1 as a1 and a2, and ORs 0x8 into the third argument (a3 = a2 | 0x8). It returns the callee's v0 at 0x3f7b8.

- `hwperf_enable_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3f7c0
  **Inferred.** Turns on counting for one monitor object. It checks a capability with cap_able(0x2000000000) (jal at 0x3f7f0), takes the object's mutex at a0+32, and gets hardware access through hwperf_get_access (jal at 0x3f888). It then initializes the chip counters with r1nk_perf_init_counters (jal at 0x3f8b8) and starts them through hwperf_initiate_startup (jal at 0x3f938) with a3 = -0x11, which clears bit 0x10 of the flag word. Failure paths release access with hwperf_release_access and unlock first. Its return values include 0x16, 0x10, 0x1 and 0x0.

- `hwperf_disable_sys_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3f978
  **Inferred.** A wrapper that disables the system-wide monitor. It passes the `sys_hwperf_mon` pointer as a0 to hwperf_disable_counters (jal at 0x3f980), forwards a1 to a3 unchanged, and returns the callee's v0 at 0x3f98c.

- `hwperf_disable_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3f994
  **Inferred.** Stops counting on one monitor object under its mutex at a0+32 (jal at 0x3f9b8). It tests the 16-bit state word at a0 against 0xf and 0x2 (0x3f9dc, 0x3f9e8). When the state allows, it loops over CPUs up to `maxcpus`, and for each enabled CPU it calls hwperf_read_counters, hwperf_check_release and hwperf_release_access (jal at 0x3fa3c to 0x3fa4c). It updates the 32-bit word at a0+24 (sw at 0x3fa6c) and returns 0 at 0x3fa94.

- `hwperf_parent_accumulates` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3fab4
  **Inferred.** A small helper. If its argument is null it returns 0 at once. Otherwise it reads the 16-bit word at offset 0 (0x3fabc), tests its low nibble (0x3fac4), stores a 16-bit value back at 0x3facc, and returns 0 at 0x3fad8. The name suggests it folds a child counter into a parent, but the rendered code shows no operation on a second object, so that role is not settled by this routine.

- `hwperf_change_sys_control` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3fae8
  **Inferred.** A wrapper that changes the control settings of the system-wide monitor. It passes the `sys_hwperf_mon` pointer as a0 to hwperf_change_control (jal at 0x3fb04), shifts the caller's a0 to a2 into a1 to a3, and returns the callee's v0 at 0x3fb10.

- `cpumon_alloc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3fb18
  **Inferred.** Returns the per-CPU monitor record hanging off the argument at +1160, and creates one when that slot is empty. The new record comes from hwperf_cpu_monitor_info_alloc [0x40f44] (jal at 0x3fb7c), and a bit lock at +148 of the structure at a0+808 is taken and released with mutex_bitlock and mutex_bitunlock (0x3fb94, 0x3fbdc, 0x3fbf0). The 16-bit and 32-bit fields of the new record are set at 0x3fbc8 to 0x3fbd4. The free path calls hwperf_cpu_monitor_info_free (0x3fc00). The record pointer is returned at 0x3fb34.

- `hwperf_change_control` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3fc2c
  **Inferred.** Reconfigures a monitor object by disabling and then re-enabling it. It calls hwperf_disable_counters with the caller's arguments (jal at 0x3fc40). When that returns 0, it calls hwperf_enable_counters (jal at 0x3fc68) with a2 set to 0 and the caller's a2 moved into a3. On the success path it returns the enable result.

- `hwperf_sys_control_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3fc88
  **Inferred.** A wrapper that reports control information for the system-wide monitor. It passes the `sys_hwperf_mon` pointer as a0 to hwperf_control_info (jal at 0x3fca4), shifts the caller's a0 to a2 into a1 to a3, and returns the callee's v0 at 0x3fcb0.

- `hwperf_control_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3fcb8
  **Inferred.** Reports control information for one monitor object under its mutex at a0+32 (jal at 0x3fce8). It checks a loop index against the 16-bit count at a0+112 (0x3fd04 to 0x3fd50), and writes 32-bit values through the caller's pointer at a2 (sw at 0x3fd64) and a second pointer (sw at 0x3fd80). It returns 0 on success or 0x16 on a bad argument. The buffer layout and what each slot means are not settled by this reading.

- `hwperf_get_cpu_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3fe08
  **Inferred.** Reads counters for one CPU. It compares the 16-bit mode word at .bss+0xecf4 with 0x8 (0x3fe28), then checks that the CPU is enabled with cpu_enabled (jal at 0x3fe44). It finds that CPU's monitor pointer in a per-CPU table (`pdaindr`, 16-byte entries, pointer at +8 then +1832) and passes it to hwperf_get_counters (jal at 0x3fe7c). On the not-enabled path it returns 0x16.

- `hwperf_get_sys_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3fe90
  **Inferred.** A wrapper that reads the system-wide monitor. It passes the `sys_hwperf_mon` pointer as a0 to hwperf_get_counters (jal at 0x3fea4), shifts the caller's a0 and a1 into a1 and a2, and returns the callee's v0 at 0x3feb0.

- `hwperf_get_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3feb8
  **Inferred.** Reads the counter block of one monitor object under its mutex at a0+32 (jal at 0x3fee0). It calls hwperf_read_counters (jal at 0x3fee8), then loops over the slots bounded by the 16-bit count at a0+112 (0x3fef8 to 0x3ff58). It writes a 32-bit result through the caller's a2 (sw at 0x3ff6c) and returns 0 at 0x3ff80.

- `hwperf_plus_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ff88
  **Inferred.** Adds one monitor object's counters into a running total. It takes the mutex at a0+32 (jal at 0x3ffb4), reads the counters with hwperf_read_counters (jal at 0x3ffbc), and loops over the count at a0+112. The 32-bit word at a2 is loaded (lw at 0x4003c) and stored back (sw at 0x4004c), so a2 is the accumulator. It unlocks at 0x40058 and returns that call's v0.

- `hwperf_set_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40070
  **Inferred.** The overwrite counterpart of hwperf_plus_counters. It takes the mutex at a0+32 (jal at 0x4009c), loops over the count at a0+112 (0x400a8 to 0x400f4), and stores the 32-bit value at a0+24 into the word at a2 (lw at 0x400fc, sw at 0x40110). It unlocks at 0x4011c and returns that call's v0.

- `hwperf_setup_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40134
  **Inferred.** Starts counting in the mode hwperf_init set up. It reads the 16-bit mode word at .bss+0xecf4 and calls r1nk_perf_start_counters with its own arguments only when that word equals 0x4 (beq at 0x40144, jal at 0x40174). On the other path the start call is skipped and v0 is not set here.

- `hwperf_multiplex_events` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40184
  **Inferred.** Rotates the active event set on a multiplexed monitor. It calls r1nk_perf_update_counters (jal at 0x40190) and hwperf_multiplex_counter_check (jal at 0x40198). When the rotation applies, which needs bit 0x8 of the flag word at offset 0 (branch at 0x401b8), it reads the 16-bit count at a0+48 and advances the event index through hwperf_next_event_index_get (jal at 0x401d8). It stores the new index with sh at 0x401e0 and restarts counting with r1nk_perf_start_counters (jal at 0x4022c).

- `hwperf_add_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4024c
  **Inferred.** Adds a value into 64-bit counters with a load-linked and store-conditional retry loop (lld at 0x40294, scd at 0x402a0, retried by beql at 0x402a4). It walks slots below the count at a0+112 (0x40250 to 0x402b8). It skips the add when the source value is zero (beq at 0x40278 and beql at 0x402a4), and returns from the loop at 0x402c0.

- `hwperf_fork_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x402c8
  **Inferred.** Makes a fork-style duplicate of a monitor's per-CPU record. It takes the lock at [a0+1160]+32 (jal at 0x402ec). If the record pointer is empty, it allocates a new one with cpumon_alloc (jal at 0x40304). It then copies the parent record into the child with hwperf_copy_cmp (jal at 0x40314) and writes 16-bit fields at +0x0 and +0x16 (sh at 0x4032c and 0x40334). It unlocks at 0x40338 and 0x40378. The copy direction is inferred from the callee's name.
