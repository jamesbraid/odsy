# Tier-2 routine readings, odsy round 4, batch 1

Routines of `usr/cpu/sysgen/IP35boot/kernel.o` read from their rendered facts. Each
entry says what the facts show and marks the parts they leave open.

- `atomicPull` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29b2c
  **Inferred.** A load-linked/store-conditional loop on the doubleword at a0. It loads 8 bytes (lld at 0x29b2c), tests bit 0 of the loaded value (bne at 0x29b34, which goes to 0x29b4c when the bit is set), stores with scd at 0x29b3c, and retries from 0x29b2c while the store fails (beq at 0x29b40 and 0x29b50). The facts do not show which value the store writes or what 0x29b4c does, so the pull semantics are open.

- `atomicIncWithWrap` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29b58
  **Inferred.** A load-linked/store-conditional loop on the word at a0 (ll at 0x29b58, sc at 0x29b6c). The bne at 0x29b60 compares the word plus one with a1 and sends the unequal case to the store. The beq at 0x29b70 retries from 0x29b58 when the store fails, and the routine returns the word at a0 in v0 (0x29b78). The wrap action on the equal path is not in the facts, so the wrap reading stays open.

- `atomicAddWithWrap` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29b80
  **Inferred.** A load-linked/store-conditional loop on the word at a0 (ll at 0x29b80, sc at 0x29b98). It forms the sum of the word and a1 and compares it signed against a2 at 0x29b8c, branching to the store at 0x29b98 when the sum is below a2. The beq at 0x29b9c retries from 0x29b80 when the store fails, and the routine returns the word at a0 in v0 (0x29ba4). The path where the sum is not below a2 has no store in the facts, so the wrap action is open.

- `bitlock_clr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29bd0
  **Inferred.** A load-linked/store-conditional loop on the word at a0 (ll at 0x29bd4, sc at 0x29be4). The bne at 0x29bdc loops back to the load while the word has any bit of a1 set, and falls through to the store when those bits are clear. The beq at 0x29be8 retries from 0x29bd4 when the store fails, and the routine returns the word at a0 in v0 (0x29bf0). The value stored is not in the facts, so whether the routine clears the bits in a1 is open.

- `bitlock_condacq` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29c40
  **Inferred.** A conditional acquire on the doubleword at a0, using lld at 0x29c50 and scd at 0x29c60. The bne at 0x29c58 tests the loaded value against the mask in a1 and branches to 0x29c74 when those bits are set, so that attempt ends without a store. The routine returns 0 at 0x29c6c and 1 at 0x29c8c, the second reached through the sign test at 0x29c48. The facts do not settle which return value means the lock was taken.

- `bitlock_condacq_32bit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29c94
  **Inferred.** The 32-bit form of bitlock_condacq: a conditional acquire on the word at a0, using ll at 0x29ca4 and sc at 0x29cb4. The bne at 0x29cac tests the loaded word against the mask in a1 and branches to 0x29cc8 when those bits are set. The routine returns 0 at 0x29cc0 and 1 at 0x29ce0, reached through the sign test at 0x29c9c. The facts do not settle which return value means the lock was taken.

- `mutex_set_always` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29ce8
  **Inferred.** A load-linked/store-conditional loop on the doubleword at a0 (lld at 0x29ce8, scd at 0x29cf0). The beq at 0x29cf4 tests the value in a1 and retries from 0x29ce8 when a1 is zero. The routine returns the doubleword at a0 in v0 (0x29cfc). The stored value is not shown, so the reading that it sets the word to a1 is open.

- `test_and_set_int` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29d04
  **Inferred.** A load-linked/store-conditional loop on the word at a0 (ll at 0x29d04, sc at 0x29d0c). The value of a1, copied to t2, is the one the store-conditional writes, and the beq at 0x29d10 retries from 0x29d04 when that value is zero. The routine returns the word at a0 in v0 (0x29d18). The facts do not settle whether the returned value is the word from before the store.

- `swap_int` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29d3c
  **Inferred.** The same shape as test_and_set_int at 0x29d04: a load-linked/store-conditional loop on the word at a0 (ll at 0x29d3c, sc at 0x29d44). The beq at 0x29d48 tests a1, copied to t0, and retries from 0x29d3c when it is zero. The routine returns the word at a0 in v0 (0x29d50). The name suggests an exchange of a1 with the word, but the facts show the return as the word at a0 and not as the old value, so the exchange reading is open.

- `compare_and_dec_int_gt_hot2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29dd8
  **Inferred.** A load-linked/store-conditional loop on the word at a0 (ll at 0x29dd8, sc at 0x29dec). It computes the word minus one. The bne at 0x29de4 sends the case where that value is below a1 (signed) to 0x29e00, which returns 0 without a store. Otherwise the decremented value is stored at a0 and also written through a2 (sw at 0x29df4). The beq at 0x29df0 retries from 0x29dd8 when the decremented value is zero, and the routine returns the decremented value at 0x29df8. The meaning of the write through a2 is not in the facts.

- `store_atomic` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e78
  **Inferred.** A load-linked/store-conditional pair on the word at a0 (ll at 0x29e78, sc at 0x29e7c). The beq at 0x29e80 retries from 0x29e78 when the loaded value in a4 is zero. The routine returns an unknown value at 0x29e88, and the value it stores is not in the facts, so its role beyond the retry loop is open.

- `startkgclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29ffc
  **Inferred.** A kernel clock start routine that serializes on the spinlock at sym(.sbss)+192. It takes the lock with mutex_spinlock_spl at 0x2a008 and releases it with mutex_spinunlock at 0x2a184 and 0x2a1b4. It reads the CPU number from [-0x3bd8] and the per-CPU record through pdaindr, and it reads and writes addresses in the 0x9200000001... range, including 0x9200000001000158, 0x9200000001000118 and 0x9200000001000150. Its last call, at 0x2a1c4, passes prof_intr to setkgvector, which suggests it installs the profiling interrupt vector. The meaning of the registers at those addresses is not in the facts.

- `slowkgclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2a1dc
  **Inferred.** A second clock routine that uses the same spinlock at sym(.sbss)+192, taken with mutex_spinlock_spl at 0x2a1f0 and released at 0x2a220 and 0x2a27c. It reads the CPU number and per-CPU record as startkgclock does, compares master_procid with that CPU number (bne at 0x2a20c), and writes 0x9200000001000158 and 0x9200000001000150. It calls ackkgclock at 0x2a284, which suggests the clock interrupt is acknowledged on this path, and spinlock_init at 0x2a2a4 to reset the lock. The facts do not settle what the master-CPU branch does beyond that.

- `wtodc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2a7e4
  **Inferred.** The name suggests writing the time-of-day clock. The routine raises the interrupt priority with splprof at 0x2a90c and restores it with splx at 0x2a93c. Between those calls it writes single bytes through the pointer at [sym(.sbss)+208], at offsets 0x0 to 0xb and 0x7ff8 to 0x7fff (sb at 0x2aa80 through 0x2abfc). It also loads and stores words at sym(.data)+0x2208 and sym(.data)+0x220c (lw at 0x2a874, sw at 0x2a990). The chip and its register map are not named in the facts, so the register meanings are open.

- `breakout_and_test3_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30f3c
  **Inferred.** Floating-point exception handling for double operands. It reads the operand's exponent and fraction against the EXP_NAN and SNANBIT_MASK tables (for example at 0x30fbc and 0x30fe4), reads a quiet-NaN pattern from QUIETNAN indexed by a0 (ld at 0x31140), and calls breakout_sd at 0x30f70, 0x30f88 and 0x30fa4. Results are written with fpstore_sd at 0x310b8, 0x310e4, 0x31114 and 0x3113c, each followed by store_fpcsr. When bit 0x800 of the word at [-0x3fe8]:8+1356 is set (test at 0x31010, which skips to 0x31134 when the bit is clear), it posts signal 8 through post_sig at 0x31018, which is SIGFPE in the usual numbering. The routine returns 0 or 1 at 0x31044. The facts do not show the policy that picks between the NaN results.
