# Odsy routine roles, first batch

- `gfP_OdsyBRDMGRcursor` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x125c
  **Inferred.** Calls copyin four times, at 0x12a4 (0x28 bytes), 0x1374 (0x3c bytes), 0x1428 (0x200 bytes) and 0x1654 (0x100 bytes). The later three are reached after tests of bits 0x8, 0x10 and 0x20 of a value the facts leave unresolved. It calls gf_OdsyPositionCursor at 0x12ec only when the bit 0x2 test at 0x12d8 falls through. It uses mutex_spinlock with mutex_spinunlock and psema with vsema, and calls odsy_poll_dfifo_level with a1 values 0xc, 0xf, 0x7 and 0x0. One path calls cmn_err at 0x180c with severity 4. Role (from name): a cursor update. The facts show the copyin, locking and FIFO polling but no cursor register write.
  Reviewed: 2026-11-12 (sonnet)

- `odsyLoadTimingTable` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x3320
  **Inferred.** Loads words from fixed offsets of its second argument (for example +0x60 to +0xf0 and +0xb0, +0xc8) and from a0 +0x124, and stores several words at offsets +0x28fc to +0x2910 whose base register the facts do not resolve. It calls bzero at 0x35a8 (0x200 bytes) and 0x35b4 (0x1000 bytes) and stores many doublewords at offset 0x400000. It calls odsy_i2cPLLRegWrite repeatedly between 0x3524 and 0x4b5c; where the register number argument is resolved it is 0, 1, 2, 3, 6, 7 or 8. It calls odsy_usdelay at 0x3538 with 100000 (0x186a0), and odsy_LoadDCD2Regs at 0x4bdc. Role (from name): loading a video timing table. The facts do not show what the PLL register numbers mean.
  Reviewed: 2026-11-12 (sonnet)

- `odsyInitInterrupts` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x2030
  **Inferred.** The range makes no calls. It loads doublewords and halfwords and stores about 25 words, but the base registers of those accesses are not resolved in the facts, so the addresses it touches are unknown. The name suggests interrupt setup for the board, but nothing here shows which interrupt registers it writes. The role is only partly settled.
  Reviewed: 2026-11-12 (sonnet)

- `klcheck_vga` in `usr/cpu/sysgen/IP35boot/gfxs.a(klconfig.o)` at 0xafc
  **Inferred.** Computes an address from a0 plus (a1 << 12) plus (a2 << 8). It loads a word at +0x20008 (0xb14) and a byte at +0x20007 (0xb40). It tests a6 against 3 at 0xb24 and a5 against zero at 0xb2c. One path returns 0 at 0xb38; the other returns that address plus 0x20000 at 0xb48, and a byte store to +0x20007 at 0xb4c follows directly after that return, so it may be the return's delay slot and not a conditional update. The facts do not show the stored value. Role (from name): a VGA presence check in the configuration table.
  Reviewed: 2026-11-12 (sonnet)

- `unmaptlb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x910
  **Inferred.** Branches on a0 being zero at 0x91c and on the sign of t3 at 0x954, loads a halfword at 0x924 and a byte at 0x92c (the facts do not resolve the base registers), and returns 0 or an unresolved value at 0x980. Role (from name): removing TLB entries. The facts show no TLB instructions.
  Reviewed: 2026-11-12 (sonnet)

- `tlbdropin_lpgs` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb64
  **Inferred.** Its only listed branch tests the sign of t8 at 0xbb4. The return at 0xbd8 gives an unresolved v0. Role (from name): a TLB drop-in for large pages. The facts do not establish what t8 holds.
  Reviewed: 2026-11-12 (sonnet)

- `tlbgetpid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xcdc
  **Inferred.** A three-instruction leaf. Its only fact is the return at 0xce0 with an unresolved v0. The name suggests it returns the current TLB address-space identifier, but the facts list no coprocessor read that would show this.
  Reviewed: 2026-11-12 (sonnet)

- `longjmp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1078
  **Inferred.** Reloads saved state from the buffer at a0 with twelve doubleword loads at offsets 0x0 to 0x58 (0x1078 to 0x10a4). It returns 1 in v0 at 0x10ac. Role (from name): the restore half of a setjmp pair. The facts do not name the register restored from each offset.
  Reviewed: 2026-11-12 (sonnet)

- `start` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1990
  **Inferred.** Loads a doubleword at 0x19c0 (the facts do not resolve its base), calls mapped_kernel_setup_tlb at 0x19d8 with a2 and a3 passed through from entry, and then makes a tail jump to .text+6656 at 0x19f8. Role (from name): an entry stub that sets up mapped kernel TLB state before handing control on.
  Reviewed: 2026-11-12 (sonnet)

- `memset` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7688
  **Inferred.** Returns a0 at 0x7794, and exits at once when the length a2 is zero (0x7688). It tests a0 against 0x1f, 0xf, 0x7, 0x3 and 0x1 (0x76b0 to 0x76e0) and stores a byte (0x76ec), halfword (0x7708) and word (0x7724) on the lower-alignment paths. Seven doubleword stores sit at 0x7740, 0x775c, 0x7768, 0x777c, 0x7784, 0x7788 and 0x7790. The shape matches a fill routine, but the facts do not show the fill value register.
  Reviewed: 2026-11-12 (sonnet)

- `bzero_pref` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x77d8
  **Inferred.** A branch at 0x77dc goes to 0x77c8, outside this routine, when a0 differs from a3, so the loop it closes is not in these facts. It stores a doubleword at offset -8 (0x77e0), and stores at offsets 0 and 8 (0x77f0, 0x77f4) only when bit 0x10 of a1 is set (test at 0x77e8); the facts do not resolve the base register. An `sdr` at 0x781c is an unaligned-tail store. Role (from name): a zero fill with prefetch. The facts list no prefetch instruction and do not show the stored value.
  Reviewed: 2026-11-12 (sonnet)

- `uload_half` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7d18
  **Inferred.** Loads a doubleword at 0x7d18, loads a byte at offset 0 (`lb`, 0x7d24) and a byte at offset 1 (`lbu`, 0x7d28), stores halfwords at offset 0xf6 at 0x7d20 and 0x7d34, stores a doubleword at offset 0 at 0x7d38, and returns 0 at 0x7d3c. The facts do not resolve the base registers of these accesses and do not show how the two bytes are combined. Role (from name): an unaligned halfword load.
  Reviewed: 2026-11-12 (sonnet)

- `fixade_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7e24
  **Inferred.** The range is 8 bytes (0x7e24 to 0x7e2c), and its one listed return, at 0x7e24, gives v0 = gp, the global pointer. The name suggests a handler for unaligned access faults, but the facts show no call or store that would confirm it.
  Reviewed: 2026-11-12 (sonnet)

- `bcopy_pref2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7efc
  **Inferred.** The first loop body lists six doubleword loads at offsets 0x8, 0x18, 0x20, 0x30, 0x28 and 0x38 (0x7f00 to 0x7f1c) and eight doubleword stores at offsets 0x0 to 0x38 (0x7f20 to 0x7f40). A branch at 0x7f3c goes back to 0x7ea4 while a3 differs from a1 +64. A second loop of word loads and stores runs at 0x7f94 to 0x7fd8. The tail tests the low bits of a2 at 0x7fe4 (0x10), 0x8018 (0x8), 0x803c (0x4) and 0x8058 (0x3), with an unaligned `lwr` at 0x8060 and `swr` at 0x8070. Role (from name): a copy with prefetch. The facts list no prefetch instruction.
  Reviewed: 2026-11-12 (sonnet)

- `allowintrs` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe50c
  **Inferred.** An eight-byte leaf whose only fact is a return at 0xe50c with an unresolved v0. The name suggests it enables interrupts, but nothing in the range writes an interrupt mask, so the role is not established.
  Reviewed: 2026-11-12 (sonnet)

- `szmem` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xec48
  **Inferred.** Leaves at 0xed4c when numnodes is zero or less (`blez` at 0xec78), and loops back while a slot counter is below 8 (0xecec) and a node counter is below numnodes (0xecfc). It calls slot_psize_compute through the pointer at 0xf288 (0xecb8), and stores words at 0xecbc and 0xeccc and a halfword at 0xece0 (values unresolved). One path calls assfail at 0xed58 with a2 = 0x6a and a .rodata string. Role (from name): sizing memory per node. The facts show the loops and the callee but not the size arithmetic.
  Reviewed: 2026-11-12 (sonnet)

- `_c_hinv` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x107d8
  **Inferred.** Compares a0 with 1 at 0x107e4 (taken when a0 is 0, unsigned) and 0x107ec (taken when a0 equals 1), branching to 0x1080c and 0x10818. The return at 0x10804 gives an unresolved value or 0. Role (from name): a hardware inventory query keyed by a0. The facts show only the branches, not the calls or stores they lead to.
  Reviewed: 2026-11-12 (sonnet)

- `_write_tag` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x109c0
  **Inferred.** Loads a word at 0x109c0 (the base register is not resolved in the facts) and compares a0 with 1 at 0x109d0 (taken when a0 is 0, unsigned) and 0x109d8 (taken when a0 equals 1). The return at 0x109e4 gives an unresolved v0. Role (from name): writing a tag record. The facts show no store.
  Reviewed: 2026-11-12 (sonnet)

- `__prefetch_load` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10d64
  **Inferred.** A loop controlled by the count in a1: it returns at 0x10d8c when the count is zero or negative (`blez` at 0x10d64), and repeats at 0x10d78 while the count stays nonnegative (`bgez` at 0x10d84). The facts list only branches in the range and no load or prefetch instruction, so the prefetch the name suggests is not confirmed.
  Reviewed: 2026-11-12 (sonnet)

- `getsr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21cb0
  **Inferred.** A three-instruction leaf whose only fact is a return at 0x21cb4 with an unresolved v0. The name suggests reading the processor status register, but the facts show no coprocessor read, so the role is not established.
  Reviewed: 2026-11-12 (sonnet)

- `setsr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21cbc
  **Inferred.** A four-instruction leaf whose only fact is a return at 0x21cc4 with an unresolved v0. The name suggests writing the processor status register, but the facts show no coprocessor write, so the role is not established.
  Reviewed: 2026-11-12 (sonnet)
