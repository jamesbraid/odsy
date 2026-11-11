# Tier-2 routine roles, odsy batch 0

Entries for 18 of the first 25 targets of the ranked tier-2 list, read from the rendered instructions of each binary range. Every role below is inferred: the rendered facts give offsets, callees and constants, not the meaning of the fields. The other seven targets are not written here: three have a function-table name the entry header cannot match, and four have no rendered body beyond a return.

- `odsyInitInterrupts` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x2030
  **Inferred.** Reads and writes memory through pointers the rendering does not resolve: 12 doubleword loads (for example at 0x2044 and 0x2048), 25 word stores (for example at 0x2054 and 0x2058), and word and halfword loads from 0x2060 to 0x2100. It has no named callee in the rendered facts and returns v0 unresolved at 0x2318. The rendered facts do not tie it to an interrupt register, so the name is not confirmed here.

- `__prefetch_load` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10d64
  **Inferred.** A counted loop with no memory access in the rendered facts. It returns at once through 0x10d8c when the signed count in a1 is not positive (blez at 0x10d64), and the back edge at 0x10d84 (bgez) tests a register the rendering labels a1(?). The name suggests a prefetch over a range, but the rendering shows no prefetch instruction or address, so that role is not confirmed.

- `set_timer_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27fe4
  **Inferred.** Works on the per-CPU record for the CPU in a0, found through sym(pdaindr) plus a0 shifted left by 4. It writes 64-bit values to one of two fixed addresses, 0x9200000001800110 or 0x9200000001a00110 (and the 0x...108 variants), chosen by a bit of a value loaded from that record at +1068. It calls timepoke at 0x280a4 and 0x280e8, and cpuaction at 0x280d8 and 0x28104 with timepoke as the handler (a1 = sym(timepoke), a2 = 1). The name suggests timer interrupt programming, and the callees fit that, but the rendering does not establish which hardware registers the 64-bit stores reach.

- `migrate_timeouts` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x288ac
  **Inferred.** Moves callout timeouts off the per-CPU list of the CPU in a0. The list head is at +1520 of the per-CPU record, and the lock at +1504 is taken with mutex_spinlock_spl at 0x289a4 and released at 0x289ec and 0x28a98. A loop around 0x289b8 to 0x289e0 walks the list while a3 is positive, calling clock_prtimeout_nothrd (0x28970) or clock_prtimeout (0x28a84), add_migrated_timeout (0x28a48), allocate_migrate_timeout (0x28988), free_migrate_timeout (0x28aa8) and callout_free (0x289f4). The callees fit a migration of pending timeouts, but the rendering does not show what triggers the call.

- `settimetrim` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28b08
  **Inferred.** Accepts the argument in a0 only when it lies within plus or minus 3,000,000 (0x2dc6c0), with the two bounds compared at 0x28b34 and 0x28b44. The check runs under sym(timelock), taken with mutex_spinlock_spl at 0x28b5c and released at 0x28b6c. It first calls cap_able with 0x8000000 at 0x28b18, and a zero result there branches to 0x28b7c, one of the return paths. The rendered return values are 0, 1 and 0x16. The name suggests a trim of a time correction, and the bounds fit that, but the units and the effect on the clock are not shown.

- `doadjtime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28b8c
  **Inferred.** Works under sym(timelock): it takes the lock with nested_spinlock at 0x28c2c and 0x28dc4 and releases it with mutex_spinunlock at 0x28cd4 and 0x28e24. It raises the priority with splprof at 0x28c14 and 0x28db0, using 0x3e8 (1000) as a count, and reads the time source through __nanotime at 0x28c1c and 0x28db8. Its loops compare values with 0xf4240 (1,000,000) at 0x28d00. The name suggests an adjustment of the time of day, but the rendered facts do not show the adjusted quantity or its units.

- `irix5_microtime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2941c
  **Inferred.** A wrapper that gets the time through nanotime_syscall (call at 0x2942c) into a stack buffer at sp-32. It then makes two 32-bit stores into the caller's record at a0+0x0 (store at 0x29438) and a0+0x4 (store at 0x29450), presumably taken from that buffer. The record layout and the meaning of the two words are not shown in the rendered facts.

- `local_settime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x294a4
  **Inferred.** Sets the local time under sym(timelock), taken with mutex_spinlock_spl at 0x294c0 and released with mutex_spinunlock at 0x29560. It stores a 32-bit value to .bss +0xa830 and a 64-bit value to .bss +0xa838, and reads the time counter at 0x9200000001030100 (load at 0x29520). A loop from 0x294dc to 0x29500 compares a value with 0xf4240 (1,000,000). The values stored and the exact way the loop ends are not fully derived in the rendered facts.

- `settime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2957c
  **Inferred.** Calls local_settime with its own four arguments at 0x29584. It then calls vhost_local (0x2958c) and cellid (0x29594), and makes an indirect call at 0x295a8 through a pointer read from the vhost_local record at +0x0, +0x10 and +0x78. The identity of the indirect target is not named in the rendered facts, so the second step is only partly settled. The return value is whatever the indirect call leaves, and v0 at 0x295b8 is not resolved further.

- `cache_preempt_limit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x295e4
  **Inferred.** Passes its four arguments through to findcpufreq_cycles (call at 0x295ec) and returns that routine's result unchanged (return at 0x295f8). Nothing in the rendered facts ties it to a cache limit, so the name is not confirmed by this routine's own code.

- `get_realtime_ticks` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29600
  **Inferred.** Loads one 64-bit word from the fixed address 0x9200000001030100 (at 0x29608) and returns. The name fits a free-running tick count, and the same address is read by other timing routines in this file, including local_settime and us_delay. The return value is not resolved in the rendered facts, and no scaling is shown.

- `tstoclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29628
  **Inferred.** Converts a record at a0 into clock ticks. It reads a 32-bit field at +0x0 and a 64-bit field at +0x8, and reads the fixed words 0x9200000001604200 (at 0x2963c) and 0x9200000001030100 (at 0x29688). A branch at 0x29674 on a1 == 1 chooses between two return paths at 0x2967c and 0x2968c. The name suggests a timestamp-to-ticks conversion, and the reads fit it, but the arithmetic is not shown.

- `tvtoclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29694
  **Inferred.** Has the same shape as tstoclock for a timeval-style record: a 32-bit field at a0+0x4, a 64-bit field at a0+0x8, the words 0x9200000001604200 (at 0x296ac) and 0x9200000001030100 (at 0x29708), and a branch on a1 == 1 at 0x296f4 that chooses between two returns at 0x296fc and 0x2970c. The name suggests a microsecond-based conversion, but the rendered facts do not show the arithmetic.

- `findcpufreq_cycles` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2973c
  **Inferred.** Measures counter ticks per interval and caches the result in the 32-bit word at low address 0xffffffffffffc74c (read at 0x2973c, written at 0x29820). When the cached word is zero (test at 0x29744), it raises the priority with splhi (0x29754), resets the count with _set_count(0) (0x2976c), and polls the counter at 0x9200000001030100 in the loop from 0x297bc to 0x29804 against the value in a3. It finishes with _get_count (0x2980c), cpu_cycles_adjust (0x29814) and splx (0x29824). The loop's exit values and the meaning of a3 are not derived in the rendered facts.

- `us_delay` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x298cc
  **Inferred.** Busy-waits on the counter at 0x9200000001030100. It reads that word at 0x298d4 and in the loop from 0x2994c to 0x29994, and it leaves the loop when the counter value is not below a3 (the unsigned compares at 0x29944 to 0x29984). The value of a3 is not derived in the rendered facts, so the length of the delay is not shown. The name suggests a microsecond delay.

- `atomicFieldAssignLong` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a4c
  **Inferred.** Stores a 64-bit value into the word at a0 with a load-linked and store-conditional retry loop: lld at 0x29a50, scd at 0x29a5c, and a branch back to 0x29a50 at 0x29a60 when the store-conditional result is zero. It returns the 64-bit word at a0 (return at 0x29a68). The register that supplies the stored value is not named in the rendered facts.

- `atomicClearCpumask` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a94
  **Inferred.** Clears bits in the 64-bit word at a0 with a load-linked and store-conditional retry loop: a 64-bit load through a1 at 0x29a94, lld on a0 at 0x29a9c, scd back to a0 at 0x29aa4, and a retry branch at 0x29aa8. The rendered branch condition there is written as (v0 & a1), which does not obviously match a store-conditional retry, so the exact clear operation is not confirmed. The name suggests clearing CPU mask bits, and the routine returns the word at a0 (0x29ab0).

- `atomicPush` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29af4
  **Inferred.** Pushes a node onto a 64-bit list head at a0 without a lock. It stores the current head into the word at a2 (sd at 0x29b00), then load-links the head (0x29b04) and store-conditionals a new head value (0x29b10), retrying when the head changed (bne at 0x29b08). A low bit of the head checked at 0x29afc sends the code to 0x29b20, which loops back to 0x29af4, and the routine returns the head word at a0 (0x29b1c). The name and the link store fit a lock-free stack push, but the rendered facts do not show the node layout or what a1 holds.
