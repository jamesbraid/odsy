# Tier-2 routine roles, odsy batch 0

Entries for 18 of the first 25 targets of the ranked tier-2 list, read from the rendered instructions of each binary range. Every role below is inferred: the rendered facts give offsets, callees and constants, not the meaning of the fields. The other seven targets are not written here: three have a function-table name the entry header cannot match, and four have no rendered body beyond a return.

- `odsyInitInterrupts` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x2030
  **Inferred.** Reads and writes memory through pointers the rendering does not resolve: 12 doubleword loads (for example at 0x2044 and 0x2048), 25 word stores (for example at 0x2054 and 0x2058), and word and halfword loads from 0x2060 to 0x2100. It has no named callee in the rendered facts and returns v0 unresolved at 0x2318. The rendered facts do not tie it to an interrupt register, so the name is not confirmed here.
  Reviewed: 2026-11-12 (sonnet)

- `__prefetch_load` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10d64
  **Inferred.** A counted loop with no memory access in the rendered facts. It returns at once through 0x10d8c when the signed count in a1 is not positive (blez at 0x10d64), and the back edge at 0x10d84 (bgez) tests a register the rendering labels a1(?). The name suggests a prefetch over a range, but the rendering shows no prefetch instruction or address, so that role is not confirmed.
  Reviewed: 2026-11-12 (sonnet)

- `set_timer_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x27fe4
  **Inferred.** Works on the per-CPU record for the CPU in a0, found through sym(pdaindr) plus a0 shifted left by 4. A branch at 0x28008 on a1 == 0 skips to 0x28098, and a branch at 0x2803c tests bit 0 of a byte loaded from the record at +1320. It makes two 64-bit stores (at 0x28050 and 0x280cc) whose target addresses the rendering does not resolve. It calls timepoke at 0x280a4 and 0x280e8, and cpuaction at 0x280d8 and 0x28104 with a1 = sym(timepoke) and a2 = 1. One timepoke argument is a halfword loaded from the record at +1068, shifted left by 0x21. The name suggests timer interrupt programming, and the callees fit that, but the rendering does not establish which hardware registers the stores reach.
  Reviewed: 2026-11-12 (sonnet)

- `migrate_timeouts` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x288ac
  **Inferred.** Role (from name): migration of callout timeouts off the per-CPU list of the CPU in a0. The facts show a branch at 0x288d8 on a0 == a1 that skips to 0x28ab0, and get_nasid calls at 0x2891c and 0x28aec. The list head is at +1520 of the per-CPU record, and the lock at +1504 is taken with mutex_spinlock_spl at 0x289a4 and released with mutex_spinunlock at 0x289ec and 0x28a98. A loop around 0x289b8 to 0x289e0 walks the list while a3 is positive, with calls to clock_prtimeout_nothrd (0x28970), clock_prtimeout (0x28a84), add_migrated_timeout (0x28a48), allocate_migrate_timeout (0x28988), free_migrate_timeout (0x28aa8) and callout_free (0x289f4). The callees fit a migration of pending timeouts, but the rendering does not show what triggers the call.
  Reviewed: 2026-11-12 (sonnet)

- `settimetrim` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28b08
  **Inferred.** Compares the argument in a0 with plus and minus 3,000,000 (0x2dc6c0), with the two bounds compared at 0x28b34 and 0x28b44. It first calls cap_able with 0x8000000 at 0x28b18, and a zero result there branches to 0x28b7c, one of the return paths. Only when the value is within the bounds does it take sym(timelock) with mutex_spinlock_spl at 0x28b5c and release it with mutex_spinunlock at 0x28b6c; the bounds check itself runs before the lock. The rendered return values are 0, 1 and 0x16. The name suggests a trim of a time correction, and the bounds fit that, but the units and the effect on the clock are not shown.
  Reviewed: 2026-11-12 (sonnet)

- `doadjtime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x28b8c
  **Inferred.** Works around sym(timelock): it calls nested_spinlock on it at 0x28c2c and 0x28dc4 and calls mutex_spinunlock on it at 0x28cd4 and 0x28e24. It calls splprof at 0x28c14 and 0x28db0 and __nanotime at 0x28c1c and 0x28db8. A branch at 0x28bd0 compares a value with 0x3e8 (1000), and a branch at 0x28d00 compares a value with 0xf4240 (1,000,000). The name suggests an adjustment of the time of day, but the rendered facts do not show the adjusted quantity or its units.
  Reviewed: 2026-11-12 (sonnet)

- `irix5_microtime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2941c
  **Inferred.** A wrapper that gets the time through nanotime_syscall (call at 0x2942c) into a stack buffer at sp-32. It then makes two 32-bit stores at offsets +0x0 (0x29438) and +0x4 (0x29450) of a record; the rendering does not show the base register, so that it is the caller's record at a0, and that the values come from the buffer, are not confirmed. The record layout and the meaning of the two words are not shown in the rendered facts.
  Reviewed: 2026-11-12 (sonnet)

- `local_settime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x294a4
  **Inferred.** Role (from name): sets the local time. It takes sym(timelock) with mutex_spinlock_spl at 0x294c0 and releases it with mutex_spinunlock at 0x29560. It stores a 32-bit value at offset +0xa830 (0x29538) and a 64-bit value at offset +0xa838 (0x29544); the rendering does not show the base of either store. It makes a doubleword load at 0x29520 whose address the rendering does not resolve. A loop from 0x294dc to 0x29500 compares a value with 0xf4240 (1,000,000). The values stored and the exact way the loop ends are not derived in the rendered facts.
  Reviewed: 2026-11-12 (sonnet)

- `settime` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2957c
  **Inferred.** Calls local_settime with its own four arguments at 0x29584. It then calls vhost_local (0x2958c) and cellid (0x29594), and makes an indirect call at 0x295a8 through a pointer read from the vhost_local record at +0x0, +0x10 and +0x78. The identity of the indirect target is not named in the rendered facts, so the second step is only partly settled. The return value is whatever the indirect call leaves, and v0 at 0x295b8 is not resolved further.
  Reviewed: 2026-11-12 (sonnet)

- `cache_preempt_limit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x295e4
  **Inferred.** Passes its four arguments through to findcpufreq_cycles (call at 0x295ec) and returns that routine's result unchanged (return at 0x295f8). Nothing in the rendered facts ties it to a cache limit, so the name is not confirmed by this routine's own code.
  Reviewed: 2026-11-12 (sonnet)

- `get_realtime_ticks` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29600
  **Inferred.** Makes one 64-bit load (0x29608) and returns (0x29620); the rendering resolves neither the load address nor the return value. The name fits a free-running tick count, and no scaling is shown.
  Reviewed: 2026-11-12 (sonnet)

- `tstoclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29628
  **Inferred.** Takes a record and a flag in a1. The facts show a word load at +0x0 (0x29628), a doubleword load at +0x0 (0x2963c), a doubleword load at +0x8 (0x2964c) and a doubleword load at +0x0 (0x29688); the rendering does not resolve the addresses of these loads. A branch at 0x29674 on a1 == 1 chooses between two return paths at 0x2967c and 0x2968c, and both return values are unresolved. The name suggests a timestamp-to-ticks conversion, but the arithmetic is not shown.
  Reviewed: 2026-11-12 (sonnet)

- `tvtoclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29694
  **Inferred.** Has a similar shape to tstoclock: a word load at +0x4 (0x29694), a doubleword load at +0x8 (0x296a8), a doubleword load at +0x0 (0x296ac) and another at 0x29708, with load addresses unresolved. A branch on a1 == 1 at 0x296f4 chooses between two returns at 0x296fc and 0x2970c, with unresolved return values. The name suggests a microsecond-based conversion for a timeval-style record, but the rendered facts do not show the arithmetic.
  Reviewed: 2026-11-12 (sonnet)

- `findcpufreq_cycles` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2973c
  **Inferred.** Reads a 32-bit word at low address 0xffffffffffffc74c (0x2973c) and tests it for zero at 0x29744; when it is nonzero it returns at 0x2974c, with v0 one of that word or ret(cpu_cycles_adjust). When the word is zero it calls splhi (0x29754) and _set_count(0) (0x2976c), then polls the counter at 0x9200000001030100 in the loop from 0x297bc to 0x29804 against the value in a3. It finishes with _get_count (0x2980c), cpu_cycles_adjust (0x29814), a 32-bit store at 0x29820 (base not shown, so that it writes back the cached word is not confirmed) and splx (0x29824). The name suggests a measurement of counter ticks per interval. The loop's exit values and the meaning of a3 are not derived in the rendered facts.
  Reviewed: 2026-11-12 (sonnet)

- `us_delay` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x298cc
  **Inferred.** Busy-waits on the counter at 0x9200000001030100. It makes doubleword loads at 0x298d4, 0x298d8 and 0x29930 (addresses not resolved) and reads the counter in the loop from 0x2994c to 0x29994, and it leaves the loop when the counter value is not below a3 (the unsigned compares at 0x29944 to 0x29994). The value of a3 is not derived in the rendered facts, so the length of the delay is not shown. The name suggests a microsecond delay.
  Reviewed: 2026-11-12 (sonnet)

- `atomicFieldAssignLong` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a4c
  **Inferred.** Stores a 64-bit value into the word at a0 with a load-linked and store-conditional retry loop: lld at 0x29a50, scd at 0x29a5c, and a branch back to 0x29a50 at 0x29a60 when the store-conditional result is zero. It returns the 64-bit word at a0 (return at 0x29a68). The register that supplies the stored value is not named in the rendered facts.
  Reviewed: 2026-11-12 (sonnet)

- `atomicClearCpumask` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a94
  **Inferred.** Works on the 64-bit word at a0 with a load-linked and store-conditional retry loop: a 64-bit load at 0x29a94 (base not shown), lld on a0 at 0x29a9c, scd back to a0 at 0x29aa4, and a retry branch at 0x29aa8. The rendered branch condition there is written as (v0 & a1), which does not obviously match a store-conditional retry, so the exact operation is not confirmed. The name suggests clearing CPU mask bits, and the routine returns the word at a0 (0x29ab0).
  Reviewed: 2026-11-12 (sonnet)

- `atomicPush` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29af4
  **Inferred.** Loads the 64-bit head word at a0 (0x29af4) and tests its low bit at 0x29afc, branching to 0x29b20 when it is set (what 0x29b20 does is not in the rendered facts). It makes a doubleword store at 0x29b00 (base not shown), then load-links at 0x29b04 and store-conditionals at 0x29b10. The bne at 0x29b08 returns to 0x29af4 when the linked value differs from the first load, and the beq at 0x29b14 returns to 0x29af4 when t2, which holds a1, is zero. The routine returns the word at a0 (0x29b1c). The name fits a lock-free stack push, but the rendered facts do not show the node layout or what a1 holds.
  Reviewed: 2026-11-12 (sonnet)
