# Routine roles, odsy kernel IP35boot, batch 6

Routines at ranks 150 to 174 of the located and named reading list for the odsy repository. All 25 are in `usr/cpu/sysgen/IP35boot/kernel.o`. Every grade is inferred: the rendered facts give offsets, callees, constants and branch targets, not the meaning of the registers they touch. Where the facts stop short of a role, the entry says so.

- `hwperf_sys_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x403a4
  **Inferred.** Runs under splhi (0x403ac) and restores the level with splx (0x40424). It tests the pointer at [-0x38d0]:8 (0x403b8); when it is nonzero it also tests bit 0x8 of the halfword behind it (0x403c8), and both outcomes of that bit test lead to the call to r1nk_perf_update_counters (0x403e8), the clear-bit path skipping a load and two stores (0x403d4 to 0x403e4). It then calls hwperf_copy_cmp (0x403fc) and r1nk_perf_start_counters (0x4041c), and retries an lld/scd pair on the word at sym(.bss)+60648 (0x40454, 0x4045c). The callee names suggest a system-wide counter sample and restart; the facts show only the calls.
  Reviewed: 2026-11-12

- `hwperf_get_access` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40470
  **Inferred.** Takes the spinlock on sym(.bss)+60648 with mutex_spinlock (0x4048c) and releases it through mutex_spinunlock (0x404d0). It reads the halfword state at sym(.bss)+60660 and compares it with the constants 0x1, 0x2 and 0x4 (0x404bc, 0x404c4, 0x404f4), then updates that halfword (0x40520, 0x40538) and the word at sym(.bss)+0xece8 (the same address as the lock word, 60648) with an ll/sc pair (0x40540, 0x4054c). It returns one of 0x0 or 0x10; which path yields which is not decoded here. Role (from name): the acquire side of an access right, paired with hwperf_release_access.
  Reviewed: 2026-11-12

- `hwperf_check_release` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40560
  **Inferred.** Reads halfwords at a0+0x0 and a0+0x16 and tests bits 0x1 and 0x2 (0x40588, 0x405d8). It loops over CPUs up to the count at sym(maxcpus), calling cpu_enabled (0x40614), and calls nano_delay (0x405a0, 0x40658) with a stack address (sp-48) as its first argument; the size of that buffer is not shown. Three paths call assfail with the same a0 and a1 (sym(.rodata)+65376) and different a2 values 0x378, 0x384 and 0x389 (0x4068c, 0x406a4, 0x406b8). The return values include the constant 0x2faf080 (50,000,000 in decimal), the result of nano_delay, the result of assfail, and one unresolved value. Role (from name): a check that the access has been released, with bounded waiting.
  Reviewed: 2026-11-12

- `hwperf_release_access` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x406c8
  **Inferred.** Role (from name): the release counterpart of hwperf_get_access, which uses the same lock address. It takes the spinlock on sym(.bss)+60648 (mutex_spinlock at 0x406e8) and calls mutex_spinunlock at 0x40734, returning its result. It tests bits 0x2 and 0x1 of the halfword at a0+0x0 (0x4070c, 0x40758), stores halfwords at +0x0 (0x40724, 0x4078c; the base register is not rendered) and writes the halfword at sym(.bss)+0xecf4 (0x40718, 0x407a4). When bit 0x1 is set (the fall-through of 0x40758), an ll/sc pair at 0x40760 and 0x4076c adds -1 to the word at sym(.bss)+0xece8, the same address as the lock word. Whether that decrement runs before the unlock is not shown by these facts.
  Reviewed: 2026-11-12

- `hwperf_find_cpu` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x407a8
  **Inferred.** Walks CPU indices up to the count at sym(maxcpus) (0x407c4, 0x407dc); the starting index is not shown. It calls cpu_enabled (0x407e8) for each index, skips disabled CPUs (0x407f0), and compares a loaded per-CPU value with its argument a0 (0x40814). One return value is -1 (0x40838), which the loop-exit branches (0x407c4, 0x407dc) lead to; the other return value is not resolved in these facts.
  Reviewed: 2026-11-12

- `hwperf_initiate_startup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40840
  **Inferred.** Tests bit 0x2 of the halfword at a0+0x0 (0x40878). When the bit is set it goes on to a loop over CPU indices up to sym(maxcpus): it calls hwperf_sys_counters directly (0x408b8) when the index equals the halfword at [-0x3bd8] (0x40924), and otherwise calls cpuaction (0x40934) with hwperf_sys_counters as the action and a2=0x1, after cpu_enabled (0x408d8) has passed. When the bit is clear (0x40878 taken), it calls hwperf_find_cpu (0x409a4) with its own arguments, calls hwperf_proc_counters directly (0x409c4) when the found index equals [-0x3bd8], and otherwise calls cpuaction (0x409fc) with hwperf_proc_counters as the action. An lld/scd pair at 0x4090c and 0x40914 on a word at +0x18 (base not rendered) is retried in the loop. The cpuaction calls suggest the work is run on each CPU in turn.
  Reviewed: 2026-11-12

- `hwperf_proc_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40a0c
  **Inferred.** Runs under splhi (0x40a14) and restores with splx (0x40a50). It loads the pointer at [-0x3fe8]:8, then the pointer at +0x488 (1160) behind it (0x40a28), and needs both non-null (0x40a20, 0x40a2c). It calls hwperf_setup_counters (0x40a68) only when bit 0x8 of the halfword at the second pointer is set (0x40a3c) and the word at [-0x38d0]:8 is zero (0x40a48). hwperf_initiate_startup passes this routine to cpuaction (0x409fc). Role (from name): the per-CPU counter setup step.
  Reviewed: 2026-11-12

- `hwperf_update_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40a78
  **Inferred.** Calls r1nk_perf_update_counters with a0=0 (0x40a80), then reads the halfword at abs 0xffffffffffffc428 (0x40a88). It retries an lld/scd update of the word at sym(.bss)+60648 (0x40ab0, 0x40ab8) and returns a value derived from that word. The same global at 0xffffffffffffc428 is read by other counter routines in this batch. The role of the lld/scd update is not decoded here.
  Reviewed: 2026-11-12

- `hwperf_update_counters_async` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40acc
  **Inferred.** Calls r1nk_perf_update_counters with a0=0 (0x40ad4), reads the halfword at abs 0xffffffffffffc428 (0x40adc), and retries the lld/scd update of sym(.bss)+60648 (0x40b04, 0x40b0c) before returning that word. Its body matches hwperf_update_counters, so the name's async meaning is not visible in the facts.
  Reviewed: 2026-11-12

- `hwperf_read_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40b20
  **Inferred.** Tests bit 0x2 of the halfword at a0+0x0 (0x40b58). When it is set, it walks the CPUs up to sym(maxcpus), calling hwperf_update_counters (0x40b94) and, after cpu_enabled (0x40bb4) and a compare of the index with the halfword at [-0x3bd8] (0x40c00), cpuaction (0x40c10) with hwperf_update_counters as the action. A second stage is reached directly when the bit is clear (0x40b58 taken) and, as far as the branch targets show, after the first loop; it skips entries whose halfword at a0+0x16 is -1 (0x40cdc). For an entry equal to [-0x3bd8] it calls r1nk_perf_update_counters with a0=0 and a1 = the a0+0x16 halfword shifted left 4 (0x40d64), and otherwise dispatches hwperf_update_counters_async through cpuaction (0x40d78); sym(pdaindr) is indexed by that shifted halfword. Loops bounded by the halfword at a0+0x70 (0x40c80, 0x40d9c) move values with loads and stores whose base registers are not rendered. Role (from name): the reader that refreshes the counters of the CPUs.
  Reviewed: 2026-11-12

- `hwperf_copy_cmp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40e5c
  **Inferred.** Moves values between two records, a0 and a1. The facts show halfword moves at +0x0 and +0xc (0x40f0c to 0x40f14, 0x40ec4 to 0x40ed0) and a word move at +0x18 (0x40eb8, 0x40ec0), but not which record is the source; the loop bounds are the halfwords at a1+0x70 and a1+0x30 (0x40e60, 0x40ecc, 0x40eb0, 0x40f04), with per-entry stores at 0x40e78, 0x40e8c, 0x40e94, 0x40ea0 and 0x40ee4. hwperf_sys_counters calls it (0x403fc), passing [-0x38d8]:8 as a1. Role (from name): a copy or compare of counter records.
  Reviewed: 2026-11-12

- `hwperf_arch_nosupport` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40f18
  **Inferred.** Returns the constant 0x59 with no calls and no memory access. Role (from name): a fixed answer for an unsupported counter architecture; the facts show no caller behaviour.
  Reviewed: 2026-11-12

- `hwperf_arch_fatal` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40f20
  **Inferred.** Calls cmn_err (0x40f30) with a0=0x0 and a fixed message at sym(.rodata)+65376 as a1, forwards its own a2 and a3 arguments, then returns cmn_err's result. Role (from name): a report for an unsupported counter architecture; the facts do not show the severity of a0=0x0.
  Reviewed: 2026-11-12

- `hwperf_cpu_monitor_info_alloc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x40f44
  **Inferred.** Allocates a 0x2b8-byte block with kmem_zalloc (0x40f54) and returns 0 when the allocation fails (branch at 0x40f60 to 0x41034). It stores halfwords at +0x30 and +0x70, words at +0x8 and +0x10, a halfword at +0x14, and doublewords at +0x38 and +0x40. It compares sn1_hwperf_num_counters with 2 and 3 (0x40f70, 0x40fc8), calls r1nk_perf_architecture with a0=0x20 and a2=0x2 (0x40f88), and loops over the entries bounded by the halfword at +0x30 (0x40fd4, 0x40ff4). It returns either the block pointer or 0.
  Reviewed: 2026-11-12

- `hwperf_cpu_monitor_info_free` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4103c
  **Inferred.** Frees a non-null pointer by calling kern_free (0x41050) with the arguments it received, and does nothing when the pointer is zero (0x41040). Its shape pairs it with hwperf_cpu_monitor_info_alloc.
  Reviewed: 2026-11-12

- `hwperf_multiplex_counter_check` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x41060
  **Inferred.** Reads the halfword at a0+0x30 and returns 0 when that value is not positive (0x41064, return at 0x41094). Otherwise it compares a loaded halfword with 2 (0x41080): at least 2 returns 1 (0x4109c), and below 2 it loops while the flag a3 is nonzero (0x41088). Role (from name): whether multiplexing applies to the counter set at a0.
  Reviewed: 2026-11-12

- `hwperf_next_event_index_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x410a4
  **Inferred.** Scans a table indexed by a1, reading the halfwords at a0+2*a1+0x68 and a0+2*a1+0x60 (0x410ac, 0x410b8) and the doubleword at a0+8*a1+0x38 (0x410c8). It tests a mask bit against t0 (0x410f8) and compares the halfword at +0x60 with a value held in v0 (0x4110c), stepping on until a compare matches. The return value is not resolved. Role (from name): a search for the next event index.
  Reviewed: 2026-11-12

- `mul64` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x41120
  **Inferred.** Stores one doubleword (0x41128) and returns (0x41130); the base register of the store and the return value are not rendered. The rendered facts list no arithmetic, so whether the routine multiplies is not shown. madd calls it with a2=sp-144 (0x4150c).
  Reviewed: 2026-11-12

- `madd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x41330
  **Inferred.** Role (from name): double-precision multiply-add for the emulated floating-point unit. It indexes per-format tables by a0 (EXP_INF, EXP_SHIFT, SIGN_SHIFT, QUIETNAN, renorm, maddrnd) and passes the address sym(EXP_BIAS) to an unnamed callee (0x41738). It calls mul64 (0x4150c) with a2=sp-144, renorm_d (0x4151c) and breakout_sd (0x41584), then add (0x415a4). It calls post_sig with a0=0x8 (0x413cc, 0x4146c, 0x41608), each guarded by a test of bit 0x800 in the word at +1356 of the structure behind [-0x3fe8]:8, and writes through fpstore_sd and store_fpcsr on many paths.
  Reviewed: 2026-11-12

- `add` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x41900
  **Inferred.** Role (from name): double-precision add for the emulated floating-point unit. It indexes tables by a0 (EXP_INF, SIGN_SHIFT, EXP_SHIFT, QUIETNAN, renorm) and compares the infinity exponent (0x4194c, 0x41954, 0x419a8). It tests the operand a2 against the mask constant 0xffe0000000000000 (0x41a90) and calls renorm_d (0x41ab0) on a stack operand. It calls post_sig with a0=0x8 (0x41990) only when bit 0x800 of the word at +1356 behind [-0x3fe8]:8 is set (0x41988), and stores results with fpstore_sd and the status with store_fpcsr.
  Reviewed: 2026-11-12

- `VEC_tlbmod` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x41e70
  **Inferred.** Calls tlbmod (0x41e80) with a0 and a1. When it returns zero the routine tail-calls exception_exit (0x41e98). When it returns nonzero it tail-calls soft_trap (0x41ea8) with a1 = that return value and a3 = the doubleword at a0+0x118 (0x41eac, a0+280). Role (from name): the vector for a TLB-modified fault, which tries a fix first and otherwise hands the fault to the generic trap path.
  Reviewed: 2026-11-12

- `VEC_ibe` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x439b0
  **Inferred.** Loads two doublewords (0x439b0, 0x439b4), tests the sign of ra (0x439b8) and stores a doubleword at 0x439c4; the delay-slot store at +0x140 (0x439d0) follows the tail jump to VEC_trap (0x439cc) with a0 and a1 unchanged. Which value is stored depends on facts not rendered here. Role (from name): the vector for an instruction bus error.
  Reviewed: 2026-11-12

- `btool_size` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x439f4
  **Inferred.** Returns the constant 0 with no calls and no memory access. The routine spans eight bytes (0x439f4 to 0x439fc). Role (from name): a size query; the name is the only evidence for the role.
  Reviewed: 2026-11-12

- `btool_getinfo` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x439fc
  **Inferred.** Returns the constant 0x16 with no calls and no memory access. 0x16 (22) is the usual Unix code for an invalid argument, which suggests a refusal, but the facts show no argument check.
  Reviewed: 2026-11-12

- `btool_reinit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43a04
  **Inferred.** The routine is eight bytes long (0x43a04 to 0x43a0c) and holds only a return, whose value is not resolved here, so it has no visible effect. Its role is not shown by these facts.
  Reviewed: 2026-11-12
