# Routine roles, odsy kernel IP35boot, batch 6

Routines at ranks 150 to 174 of the located and named reading list for the odsy repository. All 25 are in `usr/cpu/sysgen/IP35boot/kernel.o`. Every grade is inferred: the rendered facts give offsets, callees, constants and branch targets, not the meaning of the registers they touch. Where the facts stop short of a role, the entry says so.

- `hwperf_sys_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x403a4
  **Inferred.** Runs under splhi (0x403ac) and restores the level with splx (0x40424). It tests the pointer at [-0x38d0]:8 and bit 0x8 of the halfword behind it (0x403b8, 0x403c8), and when they allow it calls r1nk_perf_update_counters (0x403e8). It then copies a record through hwperf_copy_cmp (0x403fc), restarts the counters with r1nk_perf_start_counters (0x4041c), and retries an lld/scd pair on the word at sym(.bss)+60648 (0x40454, 0x4045c). The shape fits a system-wide counter sample and restart.

- `hwperf_get_access` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40470
  **Inferred.** Takes the spinlock on sym(.bss)+60648 with mutex_spinlock (0x4048c) and releases it through mutex_spinunlock (0x404d0). It reads the halfword state at sym(.bss)+60660 and compares it with the constants 0x1, 0x2 and 0x4 (0x404bc, 0x404c4, 0x404f4), then updates that halfword (0x40520, 0x40538) and the count word at sym(.bss)+0xece8 with an ll/sc pair (0x40540, 0x4054c). It returns 0x0 on the success path and 0x10 on the refusal path. It reads like the acquire side of a per-caller access right.

- `hwperf_check_release` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40560
  **Inferred.** Reads halfwords at a0+0x0 and a0+0x16 and tests bits 0x1 and 0x2 (0x40588, 0x405d8). It loops over CPUs up to the count at sym(maxcpus), calling cpu_enabled (0x40614), and waits with nano_delay (0x405a0, 0x40658) using a 48-byte stack buffer as the time value. Three paths call assfail with the same message (0x4068c, 0x406a4, 0x406b8), which marks them as consistency checks. One return path yields the constant 0x2faf080, which is 50,000,000 in decimal. It looks like a check that the access is released on every enabled CPU, with bounded waiting.

- `hwperf_release_access` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x406c8
  **Inferred.** The release half of hwperf_get_access. It takes the same spinlock on sym(.bss)+60648 (mutex_spinlock at 0x406e8) and releases it at 0x40734. It tests bits 0x2 and 0x1 of the halfword at a0+0x0 (0x4070c, 0x40758), stores back to a0+0x0 (0x40724, 0x4078c), and writes the halfword at sym(.bss)+0xecf4 (0x40718, 0x407a4). The word at sym(.bss)+60648 is decremented under the spinlock, with the ll/sc pair at 0x40760 and 0x4076c updating sym(.bss)+0xece8.

- `hwperf_find_cpu` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x407a8
  **Inferred.** Walks CPU indices from 0 up to the count at sym(maxcpus) (0x407c4, 0x407dc). It calls cpu_enabled (0x407e8) for each index, skips disabled CPUs (0x407f0), and compares a loaded per-CPU value with its argument a0 (0x40814). It returns -1 when no CPU matches (0x40838). The other return value is not resolved in these facts.

- `hwperf_initiate_startup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40840
  **Inferred.** Tests bit 0x2 of the halfword at a0+0x0 (0x40878). It starts the system-wide counters by calling hwperf_sys_counters (0x408b8), and for each enabled CPU up to sym(maxcpus) it calls cpuaction (0x40934) with hwperf_sys_counters as the action. For the local CPU it finds its index with hwperf_find_cpu (0x409a4) and runs hwperf_proc_counters through cpuaction (0x409fc). An lld/scd retry on sym(.bss)+60648 (0x4090c) guards the shared word. The cpuaction dispatch suggests the start is run on each CPU in turn.

- `hwperf_proc_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40a0c
  **Inferred.** Runs under splhi (0x40a14) and splx (0x40a50). It follows a pointer chain from [-0x3fe8]:8 through the words at +0x488 and +1160 (0x40a28, 0x40a34), and it needs both pointers non-null (0x40a20, 0x40a2c). It calls hwperf_setup_counters (0x40a68) only when bit 0x8 of the halfword in that chain is set (0x40a3c) and the word at [-0x38d0]:8 is zero (0x40a48). The routine is the per-CPU setup step that hwperf_initiate_startup dispatches to each CPU.

- `hwperf_update_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40a78
  **Inferred.** Calls r1nk_perf_update_counters with a0=0 (0x40a80), then reads the halfword at abs 0xffffffffffffc428 (0x40a88). It retries an lld/scd update of the word at sym(.bss)+60648 (0x40ab0, 0x40ab8) and returns that word. The same global at 0xffffffffffffc428 is read by the other counter routines, so the routine looks like a thin per-CPU wrapper that refreshes local counters and publishes the shared state word.

- `hwperf_update_counters_async` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40acc
  **Inferred.** Calls r1nk_perf_update_counters with a0=0 (0x40ad4), reads the halfword at abs 0xffffffffffffc428 (0x40adc), and retries the lld/scd update of sym(.bss)+60648 (0x40b04, 0x40b0c) before returning that word. Its body matches hwperf_update_counters, so the name's async meaning is not visible in the facts.

- `hwperf_read_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40b20
  **Inferred.** Tests bit 0x2 of the halfword at a0+0x0 (0x40b58) and then walks the CPUs up to sym(maxcpus), calling hwperf_update_counters (0x40b94) and cpuaction (0x40c10) with it as the action. For each per-CPU entry it indexes sym(pdaindr) by the halfword at a0+0x16 shifted left 4 (0x40cf0) and refreshes with r1nk_perf_update_counters (0x40d64), and it dispatches hwperf_update_counters_async through cpuaction (0x40d78). Loops bounded by the halfword at a0+0x70 (0x40c80, 0x40cbc, 0x40d9c) store counter values into the structure at a0, so it reads like the bulk reader that refreshes every CPU and copies the results out for the caller.

- `hwperf_copy_cmp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40e5c
  **Inferred.** Copies a record from a0 into a1. The halfwords at a0+0x0 and a0+0xc go to a1+0x0 and a1+0xc (0x40f14, 0x40ed0), and the word at a0+0x18 goes to a1+0x18 (0x40ec0). A counted block of entries is then copied in a loop bounded by the halfwords at a1+0x70 and a1+0x30 (0x40e60, 0x40ecc, 0x40f04), with stores at 0x40e78, 0x40e8c, 0x40ea0 and 0x40ee4 writing the per-entry values. It fits the copy step that hwperf_sys_counters calls with a1 as the destination.

- `hwperf_arch_nosupport` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40f18
  **Inferred.** Returns the constant 0x59 with no calls and no memory access. It is a fixed answer for a counter architecture the kernel does not support, so a caller that receives 0x59 can refuse the operation.

- `hwperf_arch_fatal` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40f20
  **Inferred.** Calls cmn_err (0x40f30) with level 0x0, a fixed message at sym(.rodata)+65376, and forwards its own a2 and a3 arguments, then returns cmn_err's result. A fixed-message log call for an unsupported counter architecture suggests a fatal report on that path.

- `hwperf_cpu_monitor_info_alloc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40f44
  **Inferred.** Allocates a 0x2b8-byte descriptor with kmem_zalloc (0x40f54) and returns 0 when the allocation fails (0x41034). It fills the new block: halfwords at +0x30 and +0x70, a word at +0x8 and +0x10, a halfword at +0x14, and doublewords at +0x38 and +0x40. It sets up per-counter entries from sn1_hwperf_num_counters (0x40f70, 0x40fc8), calls r1nk_perf_architecture with 0x20 and 0x2 (0x40f88), and returns the descriptor pointer on success.

- `hwperf_cpu_monitor_info_free` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4103c
  **Inferred.** Frees a non-null pointer by calling kern_free (0x41050) with the arguments it received, and does nothing when the pointer is zero (0x41040). Its shape pairs it with hwperf_cpu_monitor_info_alloc.

- `hwperf_multiplex_counter_check` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x41060
  **Inferred.** Reads the halfword at a0+0x30, the counter count, and returns 0 when that count is not positive (0x41064, return at 0x41094). Otherwise it compares a loaded value with 2 (0x41080): at least 2 returns 1 (0x4109c), and below 2 it loops on the flag a3 (0x41088). It answers whether multiplexing applies to the counter set at a0.

- `hwperf_next_event_index_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x410a4
  **Inferred.** Scans an event table indexed by a1, reading the halfwords at a0+2*a1+0x68 and a0+2*a1+0x60 (0x410ac, 0x410b8) and the doubleword at a0+8*a1+0x38 (0x410c8). It tests a mask bit against t0 (0x410f8) and compares the halfword at +0x60 with a value held in v0 (0x4110c), stepping on until it finds a match. The mask test together with the comparison suggests a search for the next enabled event index.

- `mul64` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x41120
  **Inferred.** Stores one doubleword through the pointer in a2 (0x41128) and returns. The rendered facts list no arithmetic, so whether the routine multiplies is not shown by these facts; only the store is.

- `madd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x41330
  **Inferred.** Double-precision multiply-add for the emulated floating-point unit. It reads per-format tables indexed by a0 (EXP_INF, EXP_BIAS, EXP_SHIFT, SIGN_SHIFT, EXP_MIN, renorm, round) and the quiet-NaN table, multiplies the mantissas with mul64 (0x4150c), renormalises with renorm_d (0x4151c), and splits the operands with breakout_sd (0x41584). It then calls add (0x415a4) for the final sum. Signals go out through post_sig with code 0x8 (0x413cc, 0x4146c), and the status word is written with store_fpcsr.

- `add` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x41900
  **Inferred.** Double-precision add for the emulated floating-point unit. It uses the same per-format tables as madd, tests the infinity exponent (0x4194c, 0x41954), and checks the mask constant 0xffe0000000000000 against the operand (0x41a90) for the exponent bits. It aligns and renormalises through renorm_d (0x41ab0), raises post_sig with code 0x8 (0x41990), and stores the result with fpstore_sd, with the status word written by store_fpcsr.

- `VEC_tlbmod` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x41e70
  **Inferred.** Exception vector for a TLB-modified fault. It calls tlbmod (0x41e80) with a0 and a1. When tlbmod returns zero it jumps to exception_exit (0x41e98). When it returns nonzero it jumps to soft_trap (0x41ea8) with that return value and the word at a0+0x118 (0x41eac). The routine tries the TLB fix first, then either resumes or hands the fault to the generic trap path.

- `VEC_ibe` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x439b0
  **Inferred.** Vector for an instruction bus error. It saves a doubleword into the frame at a0+0x140 (0x439d0) and jumps to VEC_trap (0x439cc). A sign test on ra at 0x439b8 chooses which of two doubleword values is stored (0x439c4). The name points to an instruction bus error, which fits a path that records the fault and passes it to the common trap code.

- `btool_size` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x439f4
  **Inferred.** Returns the constant 0 with no calls and no memory access. The routine spans eight bytes (0x439f4 to 0x439fc). A size query that always reports zero would match this, but the name is the only evidence for the role.

- `btool_getinfo` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x439fc
  **Inferred.** Returns the constant 0x16 with no calls and no memory access. 0x16 (22) is the usual Unix code for an invalid argument, which suggests a refusal, but the facts show no argument check.

- `btool_reinit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43a04
  **Inferred.** The routine is eight bytes long (0x43a04 to 0x43a0c) and holds only a return, whose value is not resolved here, so it has no visible effect. Its role is not shown by these facts.
