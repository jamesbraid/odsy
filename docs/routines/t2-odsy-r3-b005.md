# Tier-2 routine roles, odsy round 3 batch 5

- `bitlock_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29bac
  **Inferred.** Sets bits in the word at a0 under an ll/sc loop. The bne at 0x29bb4 retries while the word ANDed with a1 is nonzero, so it waits for the a1 bits to clear. The beq at 0x29bc0 stores [a0] | a2 with sc at 0x29bbc and retries on failure. The return at 0x29bc8 gives the old word. The name suggests a lock bit, which the facts do not confirm.

- `bitlock_clr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29bd0
  **Inferred.** Same ll/sc shape as bitlock_set: ll at 0x29bd4, sc at 0x29be4, and a retry while [a0] AND a1 is nonzero (bne at 0x29bdc). The stored value is not decoded, because the beq at 0x29be8 tests an unknown register. Which bits it clears is not derived. It returns the old word [a0] at 0x29bf0.

- `bitlock_acquire` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29bf8
  **Inferred.** The 8-byte form of the bit-lock: lld at 0x29bf8 and scd at 0x29c08 on the doubleword at a0. It spins while the loaded word ANDed with a1 is nonzero (bne at 0x29c00). It stores [a0] | a1 and retries on failure (beq at 0x29c0c). It returns the old doubleword at 0x29c14.

- `bitlock_acquire_32bit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29c1c
  **Inferred.** The 4-byte twin of bitlock_acquire, with ll at 0x29c1c and sc at 0x29c2c. It spins while [a0] AND a1 is nonzero (bne at 0x29c24) and stores [a0] | a1 with a retry (beq at 0x29c30). It returns the old word at 0x29c38.

- `bitlock_condacq` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29c40
  **Inferred.** A try-once form of bitlock_acquire on a doubleword, using lld at 0x29c50 and scd at 0x29c60. It returns 1 at 0x29c8c when the bltz at 0x29c48 is taken, and 0 at 0x29c6c on the path that acquires the bit. The bgez at 0x29c7c and the sign test on the unnamed register are not decoded, so the exact failure condition is not derived.

- `bitlock_condacq_32bit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29c94
  **Inferred.** The 4-byte form of bitlock_condacq, with ll at 0x29ca4 and sc at 0x29cb4. It returns 0 at 0x29cc0 or 1 at 0x29ce0 by the same branch structure: bltz at 0x29c9c, bne at 0x29cac, and bgez at 0x29cd0. The sign test on the unnamed register at 0x29c9c is not decoded, so the failure condition is not derived.

- `mutex_set_always` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29ce8
  **Inferred.** Swaps a doubleword with an lld/scd loop on a0. The beq at 0x29cf4 retries while a1 is zero, so the loop only completes for a nonzero a1. The value stored by scd is not shown in the facts. It returns the old doubleword [a0] at 0x29cfc, so it reads as a swap, not a confirmed one.

- `test_and_set_int` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29d04
  **Inferred.** A 4-byte ll/sc loop on the word at a0 with a retry while a1 is zero (beq at 0x29d10 on t2 = a1). It returns the old word [a0] at 0x29d18. The stored value is not shown separately, so the store is read as a1 from the retry test.

- `swap_int` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29d3c
  **Inferred.** A 4-byte ll/sc loop on the word at a0. The beq at 0x29d48 retries while a1 is zero. It returns the old word [a0] at 0x29d50, which fits a swap of a1 into the word, though the store is not shown directly.

- `compare_and_swap_int` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29d58
  **Inferred.** The ll at 0x29d58 loads [a0], and the bne at 0x29d5c returns 0 at 0x29d78 when [a0] differs from a1. When they match, sc at 0x29d64 stores a2, and the beq at 0x29d68 retries when the store fails. On success it returns the sc status register (v0 = a2) at 0x29d70, which is not the new value.

- `compare_and_inc_int_gt_zero` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29d80
  **Inferred.** The ll at 0x29d80 loads the int at a0. The blez at 0x29d84 returns 0 at 0x29da0 when the value is zero or negative. Otherwise the beq at 0x29d90 retries until the sc at 0x29d8c stores [a0] + 1, and it returns [a0] + 1 at 0x29d98.

- `compare_and_dec_int_gt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29da8
  **Inferred.** The ll at 0x29da8 loads the int at a0. The bne at 0x29db4 returns 0 at 0x29dd0 when [a0] - 1 is below a1 (signed). Otherwise sc at 0x29dbc stores [a0] - 1, and the beq at 0x29dc0 retries on failure. It returns [a0] - 1 at 0x29dc8.

- `compare_and_dec_int_gt_hot2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29dd8
  **Inferred.** The same compare-and-decrement loop as compare_and_dec_int_gt, at 0x29dd8 to 0x29e00, with the same bne at 0x29de4 returning 0 at 0x29e00. It adds a 4-byte store through a2 at 0x29df4, after the sc at 0x29dec. The "hot2" name is not explained by the facts, so the purpose of the extra store is not derived.

- `comparegt_and_swap_int` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e4c
  **Inferred.** The ll at 0x29e4c loads the word at a0. The beq at 0x29e54 returns 0 at 0x29e70 when a1 is greater than or equal to the loaded value (signed). Otherwise sc at 0x29e5c stores a2 and the beq at 0x29e60 retries on failure. On success it returns the sc status (v0 = a2) at 0x29e68.

- `store_atomic` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e78
  **Inferred.** A 4-byte ll/sc loop on a0 at 0x29e78 to 0x29e88. The beq at 0x29e80 retries while the loaded word is zero. The stored value and the return value are not decoded (the return is unknown), so the operation is not derived beyond its loop.

- `atomicIncPort` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e90
  **Inferred.** A 4-byte ll/sc loop on the word at a0. The beq at 0x29e9c chooses the store at 0x29ea8 when a1 is at least [a0] + 1 (signed). The fall-through path is not in the facts, so the increment is only partly derived. The routine returns the original word [a0] at 0x29eb4, and the name suggests a port counter.

- `ackkgclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29fc0
  **Inferred.** Acknowledges the kernel clock for the calling CPU. It reads a halfword at 0xffffffffffffc428 and indexes a per-CPU table at sym(pdaindr) by that value (ld at 0x29fd0, lbu at 0x29fd4 from +0x528). The beq at 0x29fe0 tests bit 0x1 of that byte. When the bit is set, the routine stores a doubleword to 0x9200000001000138 and then one to 0x9200000001000130; when it is clear, only the store to 0x9200000001000130 runs (the sd at 0x29ff8 sits in the return's delay slot on both paths). Both paths return the same index value, and the hardware meaning of those two addresses is not in the facts.

- `startkgclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29ffc
  **Inferred.** Starts the kernel clock. It takes a spin lock at sym(.sbss) + 192 with mutex_spinlock_spl (jal at 0x2a008), touches the clock registers at 0x9200000001000150, 0x9200000001000158, 0x9200000001000118 and 0x9200000001000130, and calls cnodetocpu (jal at 0x2a104), then unlocks with mutex_spinunlock at 0x2a184 and 0x2a1b4. The beq at 0x2a020 jumps straight to setkgvector with prof_intr (jal at 0x2a1c4) when the flag at sym(.sdata)+368 is zero. The register meanings are not derived.

- `slowkgclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2a1dc
  **Inferred.** The slower clock path, with the same lock at sym(.sbss) + 192 taken by mutex_spinlock_spl at 0x2a1f0. It calls mutex_spinunlock at 0x2a220 and 0x2a27c, then ackkgclock at 0x2a284. On the path where the flag at sym(.sdata)+376 is zero, it calls spinlock_init at 0x2a2a4 (beq at 0x2a1e4). The conditions on audioclock and master_procid are not explained by the facts.

- `rtodc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2a2b8
  **Inferred.** Reads the real-time-of-day clock. It loads from the xkphys-style address derived from master_nasid (ld at 0x2a2f8 from +0x48) and reads a series of bytes from the buffer at sym(.sbss)+208. It compares a6 with 0x310a9 and 0x100a10a9 (beq at 0x2a330, bne at 0x2a338), and reports errors with cmn_err at 0x2a740 and 0x2a7a0. It calls wtodc at 0x2a5b4 to write the value back. The field decode is not fully derived.

- `wtodc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2a7e4
  **Inferred.** Writes the time-of-day clock. It raises the priority with splprof at 0x2a90c, using the state at sym(.data)+8712, and restores it with splx at 0x2a93c. It stores bytes into the buffer at sym(.sbss)+208 at offsets 0x1 to 0xb and 0x7ff8 to 0x7fff, and branches on the mode word at sym(.sbss)+216 against 1 and 2 (beq at 0x2a920, 0x2a928). The buffer layout and the meaning of the mode word are not derived.

- `VEC_breakpoint` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2cf60
  **Inferred.** The breakpoint vector entry, a 12-byte body from 0x2cf60 to 0x2cf6c. Its only reached instruction is a jump at 0x2cf60 to VEC_trap, passing a0 to a3 unchanged. The breakpoint kind is decided in VEC_trap, not here.

- `kernelbp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2cf68
  **Inferred.** Not derived. The rendered range is 4 bytes at 0x2cf68 to 0x2cf6c with no decoded instructions, so the facts do not show whether this is code or a data word.

- `debug` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2cf6c
  **Inferred.** Reads the debug level word sym(kdebug) (lh at 0x2cf84). The blez at 0x2cf88 branches to 0x2cfdc when that level is zero or negative (signed). It writes kbdstate with sh at 0x2cfbc and kbdcntrlstate with sb at 0x2cfd8. The facts do not say which path each store sits on, so the routine's purpose is only partly derived.

- `sstepbp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2cfe4
  **Inferred.** Not derived. The rendered range is 4 bytes at 0x2cfe4 to 0x2cfe8 with no decoded instructions, so the facts do not show what this word is.
