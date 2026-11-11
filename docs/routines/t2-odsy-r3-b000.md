# Odsy routine roles, first batch

- `gfP_OdsyBRDMGRcursor` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x125c
  **Inferred.** Copies up to 0x200 bytes of argument data from the caller through copyin at 0x12a4, 0x1374, 0x1428 and 0x1654, then calls gf_OdsyPositionCursor at 0x12ec to move the cursor. It serializes the work with mutex_spinlock and psema pairs and polls odsy_poll_dfifo_level with level codes 0xc, 0xf and 0x7. On an error it calls cmn_err at 0x180c with severity 4. The name suggests a hardware cursor update, but the facts show the FIFO and locking protocol and not the cursor register writes.

- `odsyLoadTimingTable` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x3320
  **Inferred.** Reads 4-byte fields from its second argument at offsets 0x60 to 0xf0 and stores several of them into a0 +0x28fc to +0x2910. It clears two buffers with bzero at 0x35a8 (0x200 bytes) and 0x35b4 (0x1000 bytes) and writes many doubleword entries to the table at 0x400000. It programs a PLL through odsy_i2cPLLRegWrite at 0x3524 and 0x3830 to 0x4b5c, using register numbers 0 to 8, with odsy_usdelay at 0x3538 (100000) between steps. The name suggests loading video timing values, but the facts do not show what the register numbers mean.

- `odsyInitInterrupts` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x2030
  **Inferred.** The range makes no calls. It loads doublewords and halfwords and stores about 25 words, but the base registers of those accesses are not resolved in the facts, so the addresses it touches are unknown. The name suggests interrupt setup for the board, but nothing here shows which interrupt registers it writes. The role is only partly settled.

- `klcheck_vga` in `usr/cpu/sysgen/IP35boot/gfxs.a(klconfig.o)` at 0xafc
  **Inferred.** Computes an address from a0 plus (a1 << 12) plus (a2 << 8), then reads a word at +0x20008 (0xb14) and a byte at +0x20007 (0xb40). It tests a6 against 3 at 0xb24 and a5 against zero at 0xb2c to choose whether it updates that byte at 0xb4c. It returns 0 at 0xb38 or that address plus 0x20000 at 0xb48. The name suggests a VGA presence check in the configuration table, but the facts do not show what the byte means.

- `unmaptlb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x910
  **Inferred.** Reads a halfword from the fixed address 0xffffffffffffc428 (0x924) and a byte from a table reached through a pointer at -0x3bd8, indexed by a0 (0x92c). It branches on a0 being zero (0x91c) and on the sign of t3 (0x954). It returns 0 or an unresolved value at 0x980. The name suggests removing TLB entries, but the facts do not show the TLB instructions themselves.

- `tlbdropin_lpgs` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb64
  **Inferred.** Its only branch tests the sign of t8 at 0xbb4, and an unconditional branch at 0xbc0 follows. The return at 0xbd8 gives an unresolved v0. The name suggests a TLB drop-in for large pages, which would fit the t8 test as a page-size check, but the facts do not establish what t8 holds.

- `tlbgetpid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xcdc
  **Inferred.** A three-instruction leaf. Its only fact is the return at 0xce0 with an unresolved v0. The name suggests it returns the current TLB address-space identifier, but the facts list no coprocessor read that would show this.

- `longjmp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1078
  **Inferred.** Reloads saved state from the buffer at a0 with eleven doubleword loads at offsets 0x0 to 0x58 (0x1078 to 0x10a4). It returns 1 in v0 at 0x10ac. The layout suggests the register save area of a setjmp pair, which the name implies, but the facts do not name the registers at each offset.

- `start` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1990
  **Inferred.** Loads the fixed 64-bit address 0x9200000001600000 at 0x19c0, calls mapped_kernel_setup_tlb at 0x19d8 with arguments 2 and 3 passed through, and then jumps through a relocation to .text+6656 at 0x19f8. The instructions from 0x1a00 on are not reached from the entry. The role is an entry stub that sets up mapped TLB state before handing control on.

- `memset` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7688
  **Inferred.** Returns a0 at 0x7794 and exits at once when the length a2 is zero (0x7688). It aligns the destination by testing a0 against 0x1f, 0xf, 0x7, 0x3 and 0x1 (0x76b0 to 0x76e0), then stores doublewords with seven `sd` instructions at 0x7740 to 0x7768, with byte, halfword and word stores on the tail. The shape matches a fill routine, but the facts do not show the fill value register.

- `bzero_pref` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x77d8
  **Inferred.** A loop from a0 to the end address in a3 (branch at 0x77dc) that stores doublewords at a0 -8, a0 and a0 +8 (0x77e0 to 0x77f4). It uses an `sdr` at 0x781c for an unaligned tail and tests bit 0x10 of a1 at 0x77e8 to choose a path. The name suggests a zero fill with prefetch, but the facts list no prefetch instruction and do not show the stored value.

- `uload_half` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7d18
  **Inferred.** Reads the byte at a0 +0 (`lb` at 0x7d24) and the byte at a0 +1 (`lbu` at 0x7d28), which is the usual shape of an unaligned halfword load. It stores 8 bytes to a1 at 0x7d38 and returns 0 at 0x7d3c. The facts do not show how the two bytes are combined, and two halfword stores at 0x7d20 and 0x7d34 go through a pointer loaded at 0x7d18.

- `fixade_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7e24
  **Inferred.** The range is 8 bytes (0x7e24 to 0x7e2c), and its one listed return, at 0x7e24, gives v0 = gp, the global pointer. The name suggests a handler for unaligned access faults, but the facts show no call or store that would confirm it.

- `bcopy_pref2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7efc
  **Inferred.** Copies in 64-byte chunks: eight doubleword loads from a0 at offsets up to 0x38 (0x7f00 to 0x7f1c) are matched by eight doubleword stores to a1 (0x7f20 to 0x7f40), and the loop repeats until the destination reaches a1 +64 (0x7f3c). The tail is handled by tests of the low bits of the remaining count at 0x7fe4, 0x8018, 0x803c and 0x8058, with an unaligned `lwr`/`swr` pair at 0x8060 and 0x8070. The name suggests a copy with prefetch, but the listed facts contain no prefetch instruction.

- `allowintrs` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe50c
  **Inferred.** An eight-byte leaf whose only fact is a return at 0xe50c with an unresolved v0. The name suggests it enables interrupts, but nothing in the range writes an interrupt mask, so the role is not established.

- `szmem` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xec48
  **Inferred.** Loops over the node count in numnodes, leaving at 0xed4c when the count is zero or less (`blez` at 0xec78). For each slot below 8 it calls slot_psize_compute through the pointer at 0xf288 (0xecb8), and it stores word and halfword results at 0xecbc, 0xeccc and 0xece0. A failed check reaches assfail at 0xed58 with line 0x6a and a .rodata string. The name suggests sizing memory per node, but the facts show the loop and callee, not the size arithmetic.

- `_c_hinv` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x107d8
  **Inferred.** Selects a path by comparing a0 with 0 and 1 (branches at 0x107e4 and 0x107ec). Both the 0 path (0x1080c) and the 1 path (0x10818) rejoin at the return at 0x10804, which gives an unresolved value or 0. The name suggests a hardware inventory query keyed by a0, but the facts show only the branches and not the calls or stores they lead to.

- `_write_tag` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x109c0
  **Inferred.** Loads one word from the address in a2 (0x109c0), then compares a0 with 1 to pick a path (0x109d0, 0x109d8). Its paths rejoin at the return at 0x109e4, which gives an unresolved v0. The name suggests writing a tag record, but the facts show no store to confirm it.

- `__prefetch_load` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10d64
  **Inferred.** A loop controlled by the count in a1: it returns at 0x10d8c when the count is zero or negative (`blez` at 0x10d64), and repeats at 0x10d78 while the count stays nonnegative (`bgez` at 0x10d84). The facts list only branches in the range and no load or prefetch instruction, so the prefetch the name suggests is not confirmed.

- `getsr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21cb0
  **Inferred.** A three-instruction leaf whose only fact is a return at 0x21cb4 with an unresolved v0. The name suggests reading the processor status register, but the facts show no coprocessor read, so the role is not established.

- `setsr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21cbc
  **Inferred.** A four-instruction leaf whose only fact is a return at 0x21cc4 with an unresolved v0. The name suggests writing the processor status register, but the facts show no coprocessor write, so the role is not established.
