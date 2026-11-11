# Tier-2 routine roles, odsy round 3 batch 1

- `getpcsp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21cdc
  **Inferred.** Its two doubleword stores write through its arguments: the `sd` at 0x21cdc writes to a0+0 and the `sd` at 0x21ce4 writes to a1+0. The return at 0x21ce0 leaves v0 unresolved. The name points to returning the program counter and stack pointer through two pointers, which fits the two outputs, but the facts do not show what values are stored.

- `getcause` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21cf0
  **Inferred.** The rendered body has no loads or stores and a single return at 0x21cf4. The name points to reading the CPU cause register into v0, but the facts do not show the coprocessor move that would do it.

- `setcause` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21cfc
  **Inferred.** The body has no loads or stores and one return at 0x21d00. It is the write counterpart of `getcause` at 0x21cf0, and the name points to writing the cause register from its argument; the facts do not show the argument reaching a register.

- `getbadvaddr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d08
  **Inferred.** The body has no loads or stores and one return at 0x21d0c. The name points to reading the bad-address register into v0, the same shape as the cause reader at 0x21cf0.

- `get_sr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d14
  **Inferred.** The body is 12 bytes with no memory access and one return at 0x21d18. The name points to reading the status register, and it sits beside `set_sr` at 0x21d20 in the same run of accessors.

- `set_sr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d20
  **Inferred.** The body is 12 bytes with no memory access and one return at 0x21d24. It is the write side of `get_sr` at 0x21d14, and the name points to writing the status register from a0; the facts do not show that move.

- `get_lladdr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d2c
  **Inferred.** The body is 12 bytes with no memory access and one return at 0x21d30. The name points to reading the load-linked address register, which fits the group of single-register accessors from 0x21cf0 to 0x21d44.

- `set_lladdr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d38
  **Inferred.** The body is 12 bytes with no memory access and one return at 0x21d3c. It is the write side of `get_lladdr` at 0x21d2c, and the name points to setting the same register from its argument.

- `do_sync_instruction` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d44
  **Inferred.** The body is 12 bytes with no memory access and one return at 0x21d48. The name points to executing a sync instruction on behalf of the caller, and the facts show only the return, so the instruction itself is not visible here.

- `siron` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d50
  **Inferred.** The body is 40 bytes with no memory access and its return is at 0x21d70. The name points to setting interrupt-enable bits in the status register, the complement of `siroff` at 0x21d78; the facts do not show the bits.

- `siroff` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d78
  **Inferred.** The body is 44 bytes with no memory access and its return is at 0x21d9c. The name points to clearing the interrupt-enable bits that `siron` at 0x21d50 sets, and the facts show the size of the sequence but not its masks.

- `flushbus` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21da4
  **Inferred.** The body is 16 bytes with no memory access and one return at 0x21dac. The name points to draining outstanding bus traffic, which a body this small would do with a sync or a fence; the facts list no such instruction by name.

- `wbflush` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21db4
  **Inferred.** The body is 8 bytes and its only listed effect is the return at 0x21db4. The name points to flushing the write buffer, in the same family as `flushbus` at 0x21da4.

- `splecc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21eb4
  **Inferred.** The body is 32 bytes with no loads or stores listed and its return is at 0x21ecc. The name suggests an interrupt-level change around cache-error handling; the facts show only the return.

- `wgflush_start` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23868
  **Inferred.** Sixteen doubleword stores from 0x2386c to 0x238a8 write 128 bytes into a1 at offsets +0x0 through +0x78. It then loads from abs 0xffffffffffffc038 at 0x238b4 and jumps at 0x238b0 to `intrnorm` with a0 to a3 passed through. The name suggests a flush for a write gather, and the block write fits that, but the facts do not show what the block contains.

- `handle_brkpt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x238b8
  **Inferred.** It tests k0 with a `bne` at 0x238c0 on the mask 0x18 (target 0x237e8), with a `bgez` at 0x238d0 on the sign of k0 (target 0x238dc), and loads the word at sym(kernelbp) at 0x238fc, which a `bne` at 0x23900 compares with k0 before branching to 0x237e8. The name suggests a breakpoint exception path. The facts show the test structure but not the actions on each side of the branches.

- `get_fpc_irr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24304
  **Inferred.** Its only memory effect is two word stores to the fixed address 0xffffffffffffc48c, at 0x24318 and 0x24328, followed by a return at 0x24330. The name points to reading the floating-point interrupt-request state, and a body made of stores does not match a read, so the name may not describe what it does.

- `scache_ild` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2436c
  **Inferred.** The body stores a halfword at 0x24374 into a1+0 and returns at 0x24390. The name suggests a secondary-cache index load-tag operation, which would write a tag result through a pointer like this, but the facts show no cache instruction.

- `dLine` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24398
  **Inferred.** It stores a doubleword into a1+0 at 0x243b4 and a word and a byte at 0x243cc and 0x243d4, then loops with the `bne` at 0x243e4 back to 0x243c4 while a0 is below a2, which is a0+32. The 32-byte bound and the name suggest a per-line data-cache operation for 32-byte lines; the facts show the loop but not the cache instruction.

- `iLine` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24414
  **Inferred.** It stores a doubleword into a1+0 at 0x24430 and a doubleword and a byte at 0x2445c and 0x24464, then loops with the `bne` at 0x24474 back to 0x24440 while a0 is below a2, which is a0+64. The 64-byte bound and the name suggest a per-line instruction-cache operation, with the same loop shape as `dLine` at 0x24398.

- `sLine` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x244a8
  **Inferred.** It calls `sCacheSize` at 0x244cc, then loops with the `bgtz` at 0x24520 back to 0x244e4 while the returned v0 is positive. It also stores a doubleword into a1+0 at 0x244c4 and four words at 0x244ec to 0x24508 and a halfword at 0x244fc. The call to a size routine and the loop on its result suggest a line operation over the secondary cache, but the facts do not show the operation.

- `reset_leds` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24550
  **Inferred.** It stores word values to the fixed addresses 0xffffffffffffc518 at 0x24554 and 0xffffffffffffc51c at 0x24564, and returns the constant 0x1 at 0x24560. The name suggests clearing LED state, and the two fixed-address stores fit that, though the facts do not show the values written.

- `bump_leds` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24568
  **Inferred.** It reads and rewrites the LED word at 0xffffffffffffc518 (loads at 0x24568, stores at 0x2457c and 0x24594), calls `get_slice` at 0x2462c and `get_nasid` at 0x24634, and uses their results in the store at 0x24658. It also runs loops whose bounds come from `maxcpus` (branches at 0x246d4, 0x24704 and 0x24724) and compares `old_traplog_mask` with `traplog_mask` at 0x246cc. The name suggests advancing an LED pattern, but the body also carries trap-log bookkeeping, so the LED role is only part of what the facts show.

- `set_leds` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24748
  **Inferred.** It writes the LED word at 0xffffffffffffc51c at 0x24748 and reads it back at 0x24774, computes a node address from `get_slice` (call at 0x24758) and `get_nasid` (call at 0x24760), and checks `get_chimera_type` (call at 0x247a4) against the constant 3 at 0x247b0. Its ELSC calls are `elsc_led_set` with the values 0x102, 0x201, 0x101 and 0x200, and `elsc_display_mesg` at 0x247ec and 0x2484c. The name suggests setting the LED pattern through the controller, and the call sequence matches that, but the facts do not show what each value lights.

- `bootstrap` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x252e8
  **Inferred.** It loads a doubleword from abs 0x9200000001600000 at 0x25314 and two halfwords at 0x25334 and 0x25338, calls `mapped_kernel_setup_tlb` at 0x2533c with a2 and a3 passed through, and leaves through an indirect jump at 0x2535c to .text+152420. The name fits an early boot step that maps the kernel before handing off to the next stage, but the facts do not show the mapping arguments.
