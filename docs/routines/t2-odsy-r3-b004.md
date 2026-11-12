# Routine roles, odsy round 3 batch 4

Targets 100 to 124 of the ranked located, hardware-first reading list for odsy (0-based, the list in round t2list). All 25 are in `usr/cpu/sysgen/IP35boot/kernel.o`. Every grade below is inferred: the rendered facts give offsets, callees and constants, not the meaning of the registers they touch.

- `nanotime_syscall` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x290d4
  **Inferred.** Brackets its work with splprof at 0x290e0 and splx at 0x292a0. It loads the 64-bit counter at abs 0x9200000001030100 and compares it against the sum of sym(adjtime_delta) and sym(adjtime_RTC) (branches at 0x2918c and 0x29194), then compares a nanosecond value against 0x3b9aca00 (10^9) in branches at 0x29200, 0x29244 and 0x29254 (the last one jumps back to 0x29238). It stores a 64-bit word at +0x8 (0x2925c) and a 32-bit word at +0x0 (0x29264), which are probably the nanoseconds and seconds words at a0+0x8 and a0+0x0, though the facts do not show the store base. Those stores come before the lock. Depending on the compare at 0x29270 against sym(time), it either skips to splx at 0x292a0 or calls mutex_spinlock_spl on sym(timelock) at 0x29278, compares at 0x2928c, and calls mutex_spinunlock at 0x29298 before splx. The exact arithmetic is not fully shown in the facts.
  Reviewed: 2026-11-12 (sonnet)
- `nanotime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x292ec
  **Inferred.** Role (from name): the unlocked counterpart of nanotime_syscall. It makes no calls and takes no lock. When the word at sym(.sbss)+112 is zero (beq at 0x292f0) it jumps to 0x29410, which stores a 32-bit word at +0x0 and returns. Otherwise it loads at 0x29304 (+0xa830) and 0x29308 (+0xa838), compares sym(.sbss)+108 with sym(.sbss)+104 at 0x29314, and runs normalization branches against 0x3b9aca00 (10^9) at 0x2936c, 0x293b4 and 0x293c4, then stores a 64-bit word at +0x8 (0x293cc) and a 32-bit word at +0x0 (0x293d0). The facts do not show the counter address or the adjtime operands here, or what the store bases are.
  Reviewed: 2026-11-12 (sonnet)
- `irix5_microtime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2941c
  **Inferred.** A thin wrapper. It calls nanotime_syscall at 0x2942c with a 32-byte stack buffer (sp-32), then stores two 32-bit words to a0+0x0 (0x29438) and a0+0x4 (0x29450). The rendered facts do not show a division that turns nanoseconds into microseconds, so the unit change is not derived here. The name suggests an older binary-compatibility layout.
  Reviewed: 2026-11-12 (sonnet)
- `microtime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29460
  **Inferred.** A wrapper of the same shape as irix5_microtime. It calls nanotime_syscall at 0x29470 with the same sp-32 buffer, then stores a 32-bit word at a0+0x4 (0x2947c) and a 64-bit word at a0+0x8 (0x29494). The offsets differ from the irix5 variant, so the two do not share one output layout. No unit conversion is visible in the facts.
  Reviewed: 2026-11-12 (sonnet)
- `local_settime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x294a4
  **Inferred.** Calls mutex_spinlock_spl on sym(timelock) at 0x294c0 and mutex_spinunlock at 0x29560. Between them it compares a value (s0, copied from a1) against 0xf4240 (10^6) in branches at 0x294dc, 0x294f0 and 0x29500, loads a 64-bit word at 0x29520, and stores a 32-bit word at +0xa830 (0x29538) and a 64-bit word at +0xa838 (0x29544). The facts do not show the store base, what the loaded word is, or an error return, and the 10^6 bound being a microsecond limit is a guess from the constant. The exact math is not shown.
  Reviewed: 2026-11-12 (sonnet)
- `settime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2957c
  **Inferred.** Calls local_settime at 0x29584 with its own four arguments. It then calls vhost_local (0x2958c) and cellid (0x29594), loads words at offsets +0x0, +0x10 and +0x78 (0x2959c, 0x295a0, 0x295a4; the facts do not show the base register), and makes a call at 0x295a8 through an unnamed target with a0 = the 64-bit word at the vhost_local result and a1 = the cellid result. What the indirect call does is not derived.
  Reviewed: 2026-11-12 (sonnet)
- `enable_fastclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x295dc
  **Inferred.** The routine spans 8 bytes, 0x295dc to 0x295e4, and its only instruction is the return at 0x295dc. It has no loads, stores or calls, so in this build it does nothing observable. The name suggests it switches on a faster clock source, but no register or constant in the facts shows that. The name is the only evidence for the meaning.
  Reviewed: 2026-11-12 (sonnet)
- `cache_preempt_limit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x295e4
  **Inferred.** A forwarding wrapper: it calls findcpufreq_cycles at 0x2973c with its four arguments and returns that value. The name suggests a cache-preemption limit derived from CPU frequency, but no scaling constant appears in the facts, so that meaning comes from the name alone.
  Reviewed: 2026-11-12 (sonnet)
- `get_realtime_ticks` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29600
  **Inferred.** Has one 64-bit load at +0x0 (0x29608) and returns a value; the facts do not show the load address or the returned value. It makes no calls and takes no lock. The name suggests a read of a tick counter, but the facts do not show which one or its unit.
  Reviewed: 2026-11-12 (sonnet)
- `tstoclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29628
  **Inferred.** Role (from name): converts the time structure at a0 into a clock value. The facts show a 32-bit load at +0x0 (0x29628), 64-bit loads at 0x2963c and 0x2964c (+0x8) and 0x29688, a branch on a1 == 1 at 0x29674 that picks between the returns at 0x2967c and 0x2968c, and no calls. The facts do not show which addresses the loads read, so the two counters are not confirmed here, and the arithmetic is not shown.
  Reviewed: 2026-11-12 (sonnet)
- `tvtoclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29694
  **Inferred.** Role (from name): the timeval counterpart of tstoclock at 0x29628. The facts show a 32-bit load at +0x4 (0x29694), 64-bit loads at 0x296a8 (+0x8), 0x296ac and 0x29708, a branch on a1 == 1 at 0x296f4 that picks between the returns at 0x296fc and 0x2970c, and no calls. The facts do not show which addresses the loads read, and the conversion math is not shown.
  Reviewed: 2026-11-12 (sonnet)
- `timepoke` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29714
  **Inferred.** Reads a 32-bit word at the negative kernel offset -0x3958 (lw at 0x29714). When that word is zero (beq at 0x2971c), it calls siron at 0x2972c with the constant 0x100. The name suggests it raises a software interrupt to nudge the clock, but the facts do not show what bit 0x100 selects.
  Reviewed: 2026-11-12 (sonnet)
- `findcpufreq_cycles` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2973c
  **Inferred.** Loads a word at kernel offset -0x38b4 (0x2973c). When it is zero (beq at 0x29744) it calls splhi at 0x29754, calls _set_count with 0 at 0x2976c, polls the counter at 0x9200000001030100 against a3 in the loop ending at 0x29804, calls _get_count at 0x2980c, calls cpu_cycles_adjust on that result at 0x29814, stores a 32-bit word at 0x29820 (the facts do not show its base or value), and calls splx on the splhi result at 0x29824. When the word is nonzero it returns it (0x2974c). Role (from name): caches a CPU cycle figure; the threshold and the adjustment are not shown in the facts.
  Reviewed: 2026-11-12 (sonnet)
- `findcpufreq` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29838
  **Inferred.** A one-call wrapper: it calls findcpufreq_cycles at 0x29840 with its own four arguments and returns that value. The facts show no other work, so the frequency logic sits entirely in the callee.
  Reviewed: 2026-11-12 (sonnet)
- `delay_calibrate` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29890
  **Inferred.** The routine spans 8 bytes, 0x29890 to 0x29898, and its only instruction is the return at 0x29890. It has no loads, stores or calls, so in this build it does nothing. The name suggests it calibrates the busy-wait in us_delay, but no calibration constant appears in the facts.
  Reviewed: 2026-11-12 (sonnet)
- `us_delaybus` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29898
  **Inferred.** Calls flushbus at 0x298a4 with its entry arguments, before the test at 0x298ac. If a0 (copied to s0) is nonzero it then calls us_delay at 0x298b4 with a0 minus one; if it is zero the beq at 0x298ac jumps to the return at 0x298c0, so flushbus still ran. The facts do not show what flushbus waits on.
  Reviewed: 2026-11-12 (sonnet)
- `us_delay` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x298cc
  **Inferred.** A busy-wait on the counter at abs 0x9200000001030100. It reads that counter in a loop from 0x2994c to 0x29994 and keeps going while the value stays below the bound in a3 (the compares at 0x29944 to 0x29984). It also has one earlier 64-bit load at 0x298d8, whose address the facts do not show. The bound in a3 and the unit of a0 are not shown in the facts, so the microsecond meaning comes from the name.
  Reviewed: 2026-11-12 (sonnet)
- `atomicSetCpumask` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x299ec
  **Inferred.** Role (from name): ORs a mask into a CPU mask word. It runs a load-linked and store-conditional loop on a0 (lld at 0x299f0, scd at 0x299f8) with a retry branch at 0x299fc back to 0x299f0, and the facts show a value of [a0] | [a1] in the branch operand. It returns a 64-bit word at a0 in v0; the facts do not show whether that is the value from before or after the update.
  Reviewed: 2026-11-12 (sonnet)
- `atomicFieldAssignLong` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a4c
  **Inferred.** A 64-bit load-linked and store-conditional loop on the word at a0: lld at 0x29a50, scd at 0x29a5c, and a retry branch at 0x29a60 back to 0x29a50. It returns the 64-bit word at a0 in v0. The value written is not visible in the rendered facts, so the field-assign meaning comes from the name and the single-word loop shape.
  Reviewed: 2026-11-12 (sonnet)
- `atomicFieldAssignUint` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a70
  **Inferred.** The 32-bit form of atomicFieldAssignLong: ll at 0x29a74, sc at 0x29a80, and a retry at 0x29a84 when the store-conditional fails. It returns the word at a0. The value written is not in the facts, so the same caveat applies.
  Reviewed: 2026-11-12 (sonnet)
- `atomicClearCpumask` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a94
  **Inferred.** Role (from name): clears bits of a CPU mask word. It runs a 64-bit load-linked and store-conditional loop on a0 (lld at 0x29a9c, scd at 0x29aa4) with a retry branch at 0x29aa8 back to 0x29a9c, whose condition the facts render as (word & a1) == 0. It returns the 64-bit word at a0 in v0. The stored value is not shown in the facts, so whether the loop clears the a1 bits is inferred from the name.
  Reviewed: 2026-11-12 (sonnet)
- `atomicPush` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29af4
  **Inferred.** Role (from name): a lock-free push onto the list head at a0. It loads the head at 0x29af4. If its low bit is set (bne at 0x29afc) it jumps to 0x29b20, which the facts do not show. Otherwise it stores a 64-bit word at +0x0 (0x29b00; base not shown), then runs lld at 0x29b04 and retries from 0x29b08 back to 0x29af4 when the loaded word differs from the earlier head. The scd at 0x29b10 stores a1, and a failed scd retries at 0x29b14 back to 0x29af4. It returns the 64-bit word at a0 (0x29b1c). The facts do not show which register is the node being pushed, so the node-in-a2 reading is withdrawn.
  Reviewed: 2026-11-12 (sonnet)
- `atomicPull` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29b2c
  **Inferred.** Role (from name): a lock-free pop from the list head at a0. The facts show an lld at 0x29b2c, a branch at 0x29b34 to 0x29b4c when the low bit of the loaded word is set, and an scd at 0x29b3c. They show no retry branch and no return for this routine, and the value stored by the scd is not shown, so the pop is inferred from the name and the loop shape.
  Reviewed: 2026-11-12 (sonnet)
- `atomicIncWithWrap` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29b58
  **Inferred.** Atomically increments the 32-bit word at a0 with an ll and sc loop (0x29b58, 0x29b6c), retrying at 0x29b70 when the store-conditional fails. It compares the new value, [a0] plus one, with the limit in a1 at 0x29b60. When they are equal, the fall-through path wraps the value, and that stored value is not shown in the facts. It returns the word in v0.
  Reviewed: 2026-11-12 (sonnet)
- `atomicAddWithWrap` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29b80
  **Inferred.** Atomically adds the 32-bit addend in a1 to the word at a0 with an ll and sc loop (0x29b80, 0x29b98), retrying at 0x29b9c when the store-conditional fails. The sum is compared with the bound in a2 by a signed test at 0x29b8c. Below the bound the sum is stored. Otherwise the fall-through path handles the wrap, and the value it stores is not shown. It returns the word in v0.
  Reviewed: 2026-11-12 (sonnet)
