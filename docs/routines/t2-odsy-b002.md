# Tier-2 reading, batch 2 (odsy)

Role statements for 25 routines of the `usr/cpu/sysgen/IP35boot/kernel.o` build, taken from the rendered facts of the reading tool: targets 50 to 74 of the tier-2 ranking. All 25 rendered and passed the instruction grader, and none was rejected. Every entry is graded inferred. The facts are branch targets, constants, store and load summaries and callee lists, not full reads of the bodies, so where a role depends on a value the facts do not show, the entry says so.

- `invaltlb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x988
  **Inferred.** The 60-byte body has no call, branch or store in the rendered facts. Its only listed item is the return at 0x9bc, whose v0 is unknown. By its name it invalidates TLB entries, but the facts do not show the CP0 operation or which entries it touches.
  Reviewed: 2026-11-12 (sonnet)

- `tlbwired` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9c4
  **Inferred.** It branches on a1 == 0 at 0x9d4 to 0x9e8. When a1 != 0 it loads a halfword from the fixed address 0xffffffffffffc428 at 0x9dc and then a byte at 0x9e4 through a1. Its name suggests it works on wired TLB entries. The facts do not show what the halfword holds, so the wired-entry role is not settled.
  Reviewed: 2026-11-12 (sonnet)

- `tlbdropin` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa2c
  **Inferred.** It reads the same halfword at 0xffffffffffffc428 (at 0xa54) as `tlbwired`, tests a0 against 0 and 1 at 0xa3c and 0xa44, and then runs signed and zero tests on t3 and t2 at 0xa80, 0xa8c and 0xad4 before its returns at 0xacc and 0xb00. The return at 0xb00 has v0 = 0 and the return at 0xacc has v0 unknown. Its name suggests a TLB refill path that drops an entry in. The CP0 instruction that writes the entry is not in the rendered facts.
  Reviewed: 2026-11-12 (sonnet)

- `tlbdrop2in` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb08
  **Inferred.** It has a signed test on t3 at 0xb3c that picks between 0xb50 and the fall-through, and a return at 0xb5c with v0 = 0. Its name suggests a second variant of `tlbdropin`, but the facts show only the branch shape, not the entry values it writes.
  Reviewed: 2026-11-12 (sonnet)

- `tlbdropin_lpgs` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb64
  **Inferred.** It is 124 bytes with one signed test on t8 at 0xbb4 that selects 0xbc8 or the fall-through, and a return at 0xbd8 with v0 unknown. The `_lpgs` suffix suggests a large-page variant of `tlbdropin`. The facts do not show the page-size field it uses.
  Reviewed: 2026-11-12 (sonnet)

- `flush_tlb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xbe0
  **Inferred.** Its loop test at 0xc14 compares a0 with the constant 0x40 (64) and branches back to 0xc0c while they differ. The return at 0xc20 has v0 unknown. The name suggests a loop that invalidates TLB entries, with 0x40 as an entry count, but the facts do not show the CP0 writes in the loop body.
  Reviewed: 2026-11-12 (sonnet)

- `set_tlbpid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xc28
  **Inferred.** Its only compare is a signed test at 0xc60 of t3 (value 0x2) against t1, which branches to 0xc3c when t3 is less. The return at 0xc6c has v0 unknown. The name suggests it sets the address-space ID field of the TLB, but the write that does so is not in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `tlbfind` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xc74
  **Inferred.** A signed test on v0 at 0xc9c picks between 0xcc0 and the fall-through. On the fall-through path it stores 8 bytes through a2 and a3 at 0xcac and 0xcb4, so those two look like output pointers. The return is one of an unknown value or -1, which fits a search that returns an index or -1 on a miss.
  Reviewed: 2026-11-12 (sonnet)

- `tlbgetpid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xcdc
  **Inferred.** The 12-byte body is a single return at 0xce0 with v0 unknown, and no call, load or store appears in the facts. The name suggests it returns the current TLB address-space ID. The facts do not show where that value comes from.
  Reviewed: 2026-11-12 (sonnet)

- `tlbgetent` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xce8
  **Inferred.** It stores 8 bytes through each of its a1, a2 and a3 arguments at 0xd04, 0xd0c and 0xd14, so it writes three caller-supplied words. The return at 0xd28 has v0 unknown. The name suggests it reads one TLB entry into those three words, but the read instruction is not in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `tlb_probe` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xd3c
  **Inferred.** It stores 4 bytes through a2 at 0xd78, tests t1 for sign at 0xd68 to pick 0xd9c, and tests t1 & a1 for zero at 0xd90. Its return at 0xdac is one of -1 or an unknown value. The name suggests a probe of the TLB that returns -1 on no match, but the probe instruction itself is not listed.
  Reviewed: 2026-11-12 (sonnet)

- `save` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xdc0
  **Inferred.** It stores 8 bytes to a0 at each offset from +0x0 to +0x58 in steps of 8, which is 12 doublewords and 60 bytes of code. It returns 0 at 0xdf4. The name suggests it saves a register context into the block that `resume` reads back, but the facts do not name the registers stored.
  Reviewed: 2026-11-12 (sonnet)

- `resume` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xdfc
  **Inferred.** It loads the same twelve doublewords from a0 at +0x0 to +0x58 (loads at 0xe94 to 0xec0), stores fixed kernel words at 0xffffffffffffc020, c018 and c548, and tests a1 for zero at 0xe14. It compares t3 with the constant 0x7 in s0 at 0xe8c. Its return is the constant 0x1 at 0xec8. The matching offsets with `save` suggest a restore, but the facts do not settle the role.
  Reviewed: 2026-11-12 (sonnet)

- `resumethread` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xed0
  **Inferred.** It reloads the same a0 block (offsets +0x0 to +0x50) that `resume` uses, stores to a0 and a1 at +0x72 and to the fixed words at 0xffffffffffffc020, c018 and c04f, and branches at 0xef4 when a0 equals a1. The branch-likely store at 0xf00 runs only when a1 is non-zero. The name suggests it resumes a thread from a saved block, but this is inferred from the shared offsets.
  Reviewed: 2026-11-12 (sonnet)

- `restartxthread` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf38
  **Inferred.** It stores to a0 +0x72 and to the fixed words at 0xffffffffffffc020, c018 and c04f. It branches at 0xf5c when a0 == a2, and otherwise stores to a2 +0x72 at 0xf68 only when a2 is non-zero. It then tail-jumps at 0xf70 to `xthread_prologue` with a0 to a3 passed through unchanged. The name suggests it restarts an execution thread through that prologue.
  Reviewed: 2026-11-12 (sonnet)

- `loopxthread` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf78
  **Inferred.** The 8-byte body is a single tail jump at 0xf78 to `xthread_loop_prologue`, passing a0 to a3 unchanged. It looks like a trampoline into the loop prologue. The target body is not read here.
  Reviewed: 2026-11-12 (sonnet)

- `sthread_launch` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf80
  **Inferred.** It calls `spl0` at 0xf80 with its own arguments, makes an indirect call at 0xf94 with s0 to s3 as arguments, and then calls `sthread_exit` at 0xf9c. The name and the exit call suggest a thread launcher that runs a routine and then exits. Neither callee is read here.
  Reviewed: 2026-11-12 (sonnet)

- `p0_launch` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xfa4
  **Inferred.** It calls `spl0` at 0xfa4 with its arguments, calls `p0` at 0xfac, and tail-jumps to `proc1` at 0xfb4. The name suggests it starts process 0 and then hands off to a first process routine. The callees are not read here.
  Reviewed: 2026-11-12 (sonnet)

- `resumeidle` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xfbc
  **Inferred.** It loads the fixed word at 0xffffffffffffc448 (at 0xfd0) and stores to the fixed words at c04f, c020 and c018. It branches at 0xfd4 on a0 == 0, and the store to a0 +0x72 at 0xfdc runs only when a0 is non-zero. It calls `idle` at 0xfec, then calls `resumenewthread` at 0xff8 with the result of `idle` as a0. The name suggests it switches to a new thread when the idle routine returns one, but the callee bodies are not read.
  Reviewed: 2026-11-12 (sonnet)

- `toidlestk` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1000
  **Inferred.** It loads the fixed word at 0xffffffffffffc448 (at 0x1010), stores to the fixed words at c04f, c020 and c018, and stores to a0 +0x72. It ends in a register jump at 0x1034 to an unknown callee, with a2 and a3 passed through. The name suggests it moves execution onto the idle stack and transfers control there.
  Reviewed: 2026-11-12 (sonnet)

- `setjmp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x103c
  **Inferred.** It stores 8 bytes to a0 at each offset from +0x0 to +0x58, the same 12-doublewords layout as `save`, and returns 0 at 0x1070. The name suggests a setjmp that saves a resume point into the buffer for `longjmp`, but the register names are not in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `longjmp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1078
  **Inferred.** It loads the same twelve doublewords from a0 at +0x0 to +0x58 and returns the constant 1 at 0x10ac. The shared layout with `setjmp` fits a matching restore. The facts do not show the jump to the saved resume point, so the non-local jump is not confirmed.
  Reviewed: 2026-11-12 (sonnet)

- `in_cksum_sub` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1560
  **Inferred.** It reads bytes, halfwords, words and doublewords from a0 at 0x158c, 0x15b0, 0x15f4 and 0x1678, with length cases at a1 compared to 2, 4 and 0x80. When a1 is at least 0x80 the test at 0x166c falls through into the 128-byte block loop at 0x1674. Its early return at 0x156c returns a2 when a1 is zero. The name and the 2, 4 and 0x80 cases suggest an Internet checksum over a buffer, but the sum arithmetic is not in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `in_cksum_pref` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1674
  **Inferred.** Its range overlaps `in_cksum_sub`, and it is the loop head at 0x1674 that `in_cksum_sub` reaches when its test at 0x166c finds a1 at least 0x80. It loads doublewords from the buffer at 0x1678 and 0x1688, and the loop-back branch at 0x1780 returns to 0x1674 while a1 is at least 0x80. The tail at 0x1950 and the remainder branches at 0x1788 to 0x1930 are shared. The name suggests a checksum variant that prefetches or streams the block, but this is inferred from the shape.
  Reviewed: 2026-11-12 (sonnet)

- `start` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1990
  **Inferred.** It loads a doubleword from the fixed address 0x9200000001600000 at 0x19c0, calls `mapped_kernel_setup_tlb` at 0x19d8 with a2 and a3 passed through, and then jumps through a register at 0x19f8 to a target the facts name only as `.text+6656`. The name and the call sequence suggest the kernel entry that builds the mapped TLB before jumping to the next stage.
  Reviewed: 2026-11-12 (sonnet)
