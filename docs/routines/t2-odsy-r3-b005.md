# Tier-2 routine roles, odsy round 3 batch 5

- `bitlock_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29bac
  **Inferred.** Sets bits in the word at a0 under an ll/sc loop. The bne at 0x29bb4 retries while the word ANDed with a1 is nonzero, so it waits for the a1 bits to clear. The beq at 0x29bc0 stores [a0] | a2 with sc at 0x29bbc and retries on failure. The return at 0x29bc8 gives the old word. The name suggests a lock bit, which the facts do not confirm.
  Reviewed: 2026-11-12

- `bitlock_clr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29bd0
  **Inferred.** Same ll/sc shape as bitlock_set: ll at 0x29bd4, sc at 0x29be4, and a retry while [a0] AND a1 is nonzero (bne at 0x29bdc). The stored value is not decoded, because the beq at 0x29be8 tests an unknown register. Which bits it clears is not derived. It returns the old word [a0] at 0x29bf0.
  Reviewed: 2026-11-12

- `bitlock_acquire` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29bf8
  **Inferred.** The 8-byte form of the bit-lock: lld at 0x29bf8 and scd at 0x29c08 on the doubleword at a0. It spins while the loaded word ANDed with a1 is nonzero (bne at 0x29c00). It stores [a0] | a1 and retries on failure (beq at 0x29c0c). It returns the old doubleword at 0x29c14.
  Reviewed: 2026-11-12

- `bitlock_acquire_32bit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29c1c
  **Inferred.** The 4-byte twin of bitlock_acquire, with ll at 0x29c1c and sc at 0x29c2c. It spins while [a0] AND a1 is nonzero (bne at 0x29c24) and stores [a0] | a1 with a retry (beq at 0x29c30). It returns the old word at 0x29c38.
  Reviewed: 2026-11-12

- `bitlock_condacq` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29c40
  **Inferred.** Role (from name): a conditional form of bitlock_acquire on a doubleword, using lld at 0x29c50 and scd at 0x29c60. It returns 1 at 0x29c8c when the bltz at 0x29c48 is taken, and 0 at 0x29c6c on the path that stores [a0] | a1 with the scd. The bne at 0x29c58 and the bgez at 0x29c7c lead to a separate path, and the sign tests on the unnamed registers are not decoded, so the exact failure condition is not derived.
  Reviewed: 2026-11-12

- `bitlock_condacq_32bit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29c94
  **Inferred.** The 4-byte form of bitlock_condacq, with ll at 0x29ca4 and sc at 0x29cb4. It returns 0 at 0x29cc0 or 1 at 0x29ce0 by the same branch structure: bltz at 0x29c9c, bne at 0x29cac, and bgez at 0x29cd0. The sign test on the unnamed register at 0x29c9c is not decoded, so the failure condition is not derived.
  Reviewed: 2026-11-12

- `mutex_set_always` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29ce8
  **Inferred.** Role (from name): an unconditional set. It loads the doubleword at a0 with lld at 0x29ce8 and stores with scd at 0x29cf0, whose source the facts show as a1. The beq at 0x29cf4 follows the scd on that same register: the facts render the register the beq tests with its pre-store value, but sc overwrites its source register with a success flag, so the beq is the store-conditional retry, not a test of a1. It returns the old doubleword [a0] at 0x29cfc, so it reads as a swap of a1 into [a0].
  Reviewed: 2026-11-12

- `test_and_set_int` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29d04
  **Inferred.** A 4-byte ll/sc loop on the word at a0. The sc at 0x29d0c has a1 as its source per the facts, and the beq at 0x29d10 is the store-conditional retry (the facts render the register the beq tests with its pre-store value, but sc overwrites its source register with a success flag, so the beq is the store-conditional retry, not a test of a1). It returns the old word [a0] at 0x29d18, so it reads as a swap of a1 into the word.
  Reviewed: 2026-11-12

- `swap_int` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29d3c
  **Inferred.** A 4-byte ll/sc loop on the word at a0. The sc at 0x29d44 has a1 as its source per the facts, and the beq at 0x29d48 is the store-conditional retry (the facts render the register the beq tests with its pre-store value, but sc overwrites its source register with a success flag, so the beq is the store-conditional retry, not a test of a1). It returns the old word [a0] at 0x29d50, which fits a swap of a1 into the word.
  Reviewed: 2026-11-12

- `compare_and_swap_int` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29d58
  **Inferred.** The ll at 0x29d58 loads [a0], and the bne at 0x29d5c returns 0 at 0x29d78 when [a0] differs from a1. When they match, sc at 0x29d64 stores a2 (the facts show a2 as its source), and the beq at 0x29d68 retries when the store fails. The return at 0x29d70 gives v0, the register sc used as source; the facts render it as a2, but sc overwrites it with a success flag, so the returned value is not derived from the facts.
  Reviewed: 2026-11-12

- `compare_and_inc_int_gt_zero` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29d80
  **Inferred.** The ll at 0x29d80 loads the int at a0. The blez at 0x29d84 returns 0 at 0x29da0 when the value is zero or negative. Otherwise sc at 0x29d8c stores [a0] + 1 (the facts show that as its source) and the beq at 0x29d90 retries on failure. The return at 0x29d98 gives v0, the sc source register; the facts render it as [a0] + 1, but sc overwrites it with a success flag, so the returned value is not derived from the facts.
  Reviewed: 2026-11-12

- `compare_and_dec_int_gt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29da8
  **Inferred.** The ll at 0x29da8 loads the int at a0. The bne at 0x29db4 returns 0 at 0x29dd0 when [a0] - 1 is below a1 (signed). Otherwise sc at 0x29dbc stores [a0] - 1 (the facts show that as its source) and the beq at 0x29dc0 retries on failure. The return at 0x29dc8 gives v0, the sc source register; the facts render it as [a0] - 1, but sc overwrites it with a success flag, so the returned value is not derived from the facts.
  Reviewed: 2026-11-12

- `compare_and_dec_int_gt_hot2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29dd8
  **Inferred.** The same compare-and-decrement loop as compare_and_dec_int_gt, at 0x29dd8 to 0x29e00, with the same bne at 0x29de4 returning 0 at 0x29e00. It adds a 4-byte store through a2 at 0x29df4, after the sc at 0x29dec. The "hot2" name is not explained by the facts, so the purpose of the extra store is not derived.
  Reviewed: 2026-11-12

- `comparegt_and_swap_int` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e4c
  **Inferred.** The ll at 0x29e4c loads the word at a0. The beq at 0x29e54 returns 0 at 0x29e70 when a1 is greater than or equal to the loaded value (signed). Otherwise sc at 0x29e5c stores a2 (the facts show a2 as its source) and the beq at 0x29e60 retries on failure. The return at 0x29e68 gives v0, the sc source register; the facts render it as a2, but sc overwrites it with a success flag, so the returned value is not derived from the facts.
  Reviewed: 2026-11-12

- `store_atomic` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e78
  **Inferred.** A 4-byte ll/sc loop on a0 at 0x29e78 to 0x29e88. The facts show the sc source as the register ll loaded (a4 = [a0]), and the beq at 0x29e80 follows the sc on that register, so it is the store-conditional retry, not a test of the loaded word for zero. The stored value and the return value are not decoded (the return is unknown), so the operation is not derived beyond its loop.
  Reviewed: 2026-11-12

- `atomicIncPort` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e90
  **Inferred.** A 4-byte ll/sc loop on the word at a0. The beq at 0x29e9c chooses the store at 0x29ea8 when a1 is at least [a0] + 1 (signed). The fall-through path is not in the facts, so the increment is only partly derived. The routine returns the original word [a0] at 0x29eb4, and the name suggests a port counter.
  Reviewed: 2026-11-12

- `ackkgclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29fc0
  **Inferred.** Role (from name): acknowledges the kernel clock for the calling CPU. It reads a halfword at 0xffffffffffffc428 and indexes a per-CPU table at sym(pdaindr) by that value (ld at 0x29fd0, lbu at 0x29fd4 from +0x528). The beq at 0x29fe0 tests bit 0x1 of that byte. When the bit is set, the sd at 0x29fe8 runs and the routine returns at 0x29fec; when it is clear, the beq goes to 0x29ff4, which returns with the sd at 0x29ff8 in its delay slot. So each path does one doubleword store. The store targets are not in the facts. Both paths return the same index value, and the hardware meaning of the stores is not derived.
  Reviewed: 2026-11-12

- `startkgclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29ffc
  **Inferred.** Role (from name): starts the kernel clock. It takes a spin lock at sym(.sbss) + 192 with mutex_spinlock_spl (jal at 0x2a008), calls cnodetocpu (jal at 0x2a104), then unlocks with mutex_spinunlock at 0x2a184 and 0x2a1b4. The beq at 0x2a020 jumps straight to setkgvector with prof_intr (jal at 0x2a1c4) when the word at sym(.sdata)+368 is zero. The facts show several loads and stores between these calls, including a branch on bit 0x1 of a per-CPU byte at 0x2a0e4, but not what they address, so what the routine does to the clock is not derived.
  Reviewed: 2026-11-12

- `slowkgclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2a1dc
  **Inferred.** Role (from name): the slower clock path. It takes the same lock at sym(.sbss) + 192 with mutex_spinlock_spl at 0x2a1f0. On the path where the flag at sym(.sdata)+376 is zero, the beq at 0x2a1e4 goes to a call to spinlock_init at 0x2a2a4. On the other path, the unlock at 0x2a220 is reached when master_procid equals the halfword at 0xffffffffffffc428 and audioclock is nonzero, and that path does not reach ackkgclock. The unlock at 0x2a27c is followed by ackkgclock at 0x2a284 on the remaining path. What the stores in between do is not explained by the facts.
  Reviewed: 2026-11-12

- `rtodc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2a2b8
  **Inferred.** Role (from name): reads the real-time-of-day clock. The facts show a branch at 0x2a2e0 on the doubleword at sym(.sbss)+200 and one at 0x2a350 on the word at sym(.sbss)+216, a run of byte loads, and comparisons of a6 with 0x310a9 and 0x100a10a9 (beq at 0x2a330, bne at 0x2a338). It calls cmn_err at 0x2a740 and 0x2a7a0, and calls wtodc at 0x2a5b4 on the path where the beq at 0x2a5a4 is not taken. The buffer the bytes come from and the field decode are not derived.
  Reviewed: 2026-11-12

- `wtodc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2a7e4
  **Inferred.** Role (from name): writes the time-of-day clock. It calls splprof at 0x2a90c, with a3 = sym(.data)+8712 in the facts, and splx at 0x2a93c with the splprof result as a0. It stores bytes at offsets 0x1, 0x2, 0x4, 0x8, 0x9, 0xa and 0xb (the last twice) and at 0x7ff8 to 0x7fff from a base register the facts do not name. It branches on the word at sym(.sbss)+216 against 1 and 2 (beq at 0x2a920, 0x2a928). The buffer layout and the meaning of the mode word are not derived.
  Reviewed: 2026-11-12

- `VEC_breakpoint` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2cf60
  **Inferred.** Role (from name): the breakpoint vector entry. Its only reached instruction is a jump at 0x2cf60 to VEC_trap, passing a0 to a3 unchanged.
  Reviewed: 2026-11-12

- `kernelbp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2cf68
  **Inferred.** Not derived. The rendered range is 4 bytes at 0x2cf68 to 0x2cf6c with no decoded instructions, so the facts do not show whether this is code or a data word.
  Reviewed: 2026-11-12

- `debug` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2cf6c
  **Inferred.** Reads the halfword at sym(kdebug) (lh at 0x2cf84). The blez at 0x2cf88 branches to 0x2cfdc when that value is zero or negative (signed). It stores a halfword at 0x2cfbc and a byte at 0x2cfd8; the facts do not name their targets or say which path each store sits on, so the routine's purpose is only partly derived.
  Reviewed: 2026-11-12

- `sstepbp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2cfe4
  **Inferred.** Not derived. The rendered range is 4 bytes at 0x2cfe4 to 0x2cfe8 with no decoded instructions, so the facts do not show what this word is.
  Reviewed: 2026-11-12
