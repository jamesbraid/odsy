# Routine roles, tier-2 reading batch 4

Role statements for 25 routines from `usr/cpu/sysgen/IP35boot/kernel.o`, the IP35 boot kernel build. Each statement comes only from the rendered facts (registers, calls, branches and constants) of the exact binary named in its header, and cites instruction addresses. Every grade is Inferred: the facts show what the code does, but callee bodies are not rendered, so the names of callees are taken from the symbol table and their behavior is not checked.

- `r1nk_perf_stop_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ab20
  **Inferred.** Role (from name): stops the performance counters. It loops over the counters, bounded by the halfword at a0+0x30 (loads at 0x3ab4c and 0x3ab74). It calls getsr (0x3ab2c), issplhi (0x3ab34) and r1nk_perf_check_architecture (0x3ab44), and on each pass of the loop calls r1nkperf_control_register_set with a1=0x0 (0x3ab68). The beq at 0x3ab3c goes to 0x3aba0 when the issplhi result is zero, and the assfail call at 0x3aba8 passes line 0x15e; whether that call is reached only from that branch is not shown. What getsr and issplhi do to the interrupt state, and whether the zero write stops the hardware counter, are not shown by these facts.
  Reviewed: 2026-11-12

- `r1nk_perf_init_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3abb8
  **Inferred.** Initializes per-counter state for the counters in the table at a0, with bounds read from the halfwords at a0+0x30 and a0+0x70 (0x3abf0, 0x3ac64). It first asks cap_able for capability 0x2000000000 (0x3abdc) and branches on the result at 0x3ad50, and it compares the counter count in sn1_hwperf_num_counters with 3 (0x3ad9c). It returns 0, 1 or 0x16 at 0x3ae50; what each return means to callers is not shown.
  Reviewed: 2026-11-12

- `r1nk_perf_architecture` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ae9c
  **Inferred.** Loads a word at 0x3ae9c and a halfword at 0x3aefc; the cmn_err call at 0x3af00 passes the values at 0xffffffffffffc428 (halfword) and 0xffffffffffffc484 (word) as its a2 and a3. The branches at 0x3aec0, 0x3aec8 and 0x3aed0 compare v0 with 0xe, 0xf and 0x9. The only load before them is the word at 0x3ae9c, so that word is probably the value tested; the facts do not show which address it comes from. Its returns are 0x1, 0x2, 0x4 or the cmn_err result; the cmn_err call at 0x3af00 (format at .rodata+62392, with a4=0x9 and a5=0x2) is on the path where the bne at 0x3aed0 branches to 0x3aef4. The rendered facts do not show what the codes mean, so the classification is open.
  Reviewed: 2026-11-12

- `r1nk_perf_check_architecture` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3af10
  **Inferred.** Compares the result of r1nk_perf_architecture (0x3af1c) with the word at a0+8 (0x3af28). When they are equal the beq at 0x3af28 goes to 0x3af6c. When they differ it continues: the halfword at a0+0x14 (0x3af30) must be nonzero and bit 0 of the word at a0+4 (0x3af44) must be clear, otherwise the code branches to 0x3af70. Past those tests, the word perfcnt_arch_swtch_msg decides: when it is nonzero the code goes to 0x3af7c and calls cmn_err at 0x3af84 with level 0x5, a2 = the halfword at a0+0x14 and a3 = the word at a0+0x10; when it is zero it calls signal at 0x3af58 with the word at a0+0x10 and the halfword at a0+0x14, then loads the word at a0+4 (0x3af60) and stores a word at a0+4 (0x3af68). What the stored value is, and what the record fields mean, are not shown.
  Reviewed: 2026-11-12

- `ecc_cacheOp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3b4f8
  **Inferred.** A short wrapper. It calls cacheOP (0x3b508) with a0 = a pointer to a stack block at sp-32 and the caller's a1, a2 and a3, and returns a value the facts leave unresolved (0x3b524). Callers of ecc_cacheOp pass a0 = 0x17 (from ecc_cleanRegion at 0x3b9ec) and 0x4, 0x0, 0x1, 0x5, 0x3 and 0x7 (from ecc_handler). The facts show no store into the stack block and no use of the caller's a0, so how the code reaches cacheOP, and what cacheOP returns, is not shown.
  Reviewed: 2026-11-12

- `ecc_cacheop_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3b52c
  **Inferred.** Stores a doubleword at offset +0x0 (0x3b52c) and a word at offset +0x8 (0x3b530); the facts do not name the base register or the stored values, though the following cacheOP call takes a2 as its first argument (0x3b53c), so the base is probably a2. It then calls cacheOP with a0=a2 and the caller's a1 and a3 and returns the cacheOP result (0x3b548). The routine looks like a helper that fills a small record before a cache operation; that is a guess from the access pattern.
  Reviewed: 2026-11-12

- `ecc_cleanRegion` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3b9cc
  **Inferred.** Loops over a region whose size is a1, calling ecc_cacheOp with code 0x17 on each pass (0x3b9ec). The loop is skipped when a1 is zero or negative (the blez at 0x3b9e0) and repeats while the counter in s1 is positive (0x3b9f8). Whether a1 counts bytes, the step size and the start address are not visible in the facts. It returns an unresolved value or the last ecc_cacheOp result (0x3ba0c).
  Reviewed: 2026-11-12

- `ecc_compute_scdata_ecc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3c930
  **Inferred.** Role (from name): computes an ECC check value for secondary-cache data. It loads two doublewords (0x3c984, 0x3c988) and calls ecc_bitcount twice (0x3c998, 0x3c9bc). It tests the low bit of each count (v0 & 1, at 0x3c9a8 and 0x3c9d4) and loops while a4 is nonzero (0x3c9b4). The first call passes sym(.data)+53376 as a3 (0x3c998); scache_data_bit_error also reads a table at that address. The masks and the returned value are not shown.
  Reviewed: 2026-11-12

- `ecc_compute_sctag_ecc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3c788
  **Inferred.** Role (from name): computes a check value for a secondary-cache tag. It loads a doubleword (0x3c7cc), calls ecc_bitcount (0x3c7d4) and tests the low bit of the count at 0x3c7e4. The loop repeats while a3 is nonzero (0x3c7f0). The tag layout, the value loaded and the returned value are not visible in the facts.
  Reviewed: 2026-11-12

- `ecc_display` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3b550
  **Inferred.** Role (from name): prints the detail of an ECC error record. It calls cmn_err_tag with message numbers 0xb91 (0x3b64c), 0xb90 (0x3b740), 0xb92 (0x3b83c), 0xb94 (0x3b908) and 0xb95 (0x3b998). Branches compare values (a2 at 0x3b5b4, a6 at 0x3b5c0, 0x3b7a8 and 0x3b888) with the constants 0xffffffffc0000000, 0x40000000 and 0xffffffff80000000. It calls error_page_discard with a1=1 and a2=1 (0x3b918), compares its result with 1 (0x3b920), and calls mdir_xlate_addr_mem (0x3b95c) on a stack buffer at sp-144; a table indexed through nasid_to_compact_node is read near 0x3b8e4 to 0x3b8f8. Which conditions lead to each call is not worked out, and the fields of the record are not labeled in the facts.
  Reviewed: 2026-11-12

- `ecc_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ba14
  **Inferred.** Allocates a block with kmem_zalloc (a0=0x1000, 0x3ba24) and, when the result is nonzero, calls ecc_cleanRegion on it with a1=0x1000 (0x3ba38). A zero result branches (0x3ba2c) toward the cmn_err call at 0x3bacc. It stores doublewords at 0x3ba64 and 0x3ba9c and reads a halfword and several doublewords between them (0x3ba68 to 0x3ba88); the facts do not show the base addresses or stored values, so which fixed words receive the block address is not established. ecc_cleanRegion issues cache operation 0x17 per pass, so its effect on the block is a cache operation, not shown to be a memory clear. The return is 0x9000000000000000 or the cmn_err result (0x3baa8).
  Reviewed: 2026-11-12

- `ecc_log` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3c4ec
  **Inferred.** Reads the fixed words 0x9000000000000820 and 0x9000000000000824 and compares them (0x3c55c, 0x3c5a8); the beq at 0x3c52c compares the first word with a value the facts leave unresolved. It stores a word at 0x3c5c4, with a base the facts do not show. It calls ecc_display with a0=0x114 (0x3c594) and cmn_err with level 0x14 (0x3c5f4). The purpose of the two words and the conditions that select each call are not shown in the facts, so any logging role comes from the routine name only.
  Reviewed: 2026-11-12

- `ecc_panic` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3c470
  **Inferred.** Calls machine_error_dump with its arguments (0x3c488), then passes fields of the record at a2 (the doubleword at +0x0, the word at +0x18 and the address a2+8) to ecc_display with message 0x14 (0x3c4a0), and finishes with cmn_err at level 0x10 (0x3c4d4). The routine returns the cmn_err result. The rendered facts show no panic call, so whether the caller panics is not shown.
  Reviewed: 2026-11-12

- `ecc_printPending` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3c608
  **Inferred.** Role (from name): prints pending error records. It has a loop with a count bound of 0x200 (the beq at 0x3c688) and makes three indirect calls with a0 set to the format at .rodata+63024 (0x3c6c0, 0x3c6dc, 0x3c714). It loads a byte (0x3c69c), a halfword (0x3c6a0) and words and doublewords from addresses the facts do not resolve. The callees behind the indirect calls are not resolved, so the printing target and which calls run for each record are unknown.
  Reviewed: 2026-11-12

- `ecc_scache_bits_in_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ca14
  **Inferred.** Counts set bits through ecc_bitcount (0x3ca2c) and compares the count with 1, 3 and 5 (0x3ca40, 0x3ca48, 0x3ca50). It returns 0, 1 or 2 (0x3ca58). The comparisons suggest it classifies an error by how many bits are set, but the mapping from those values to error kinds is not shown.
  Reviewed: 2026-11-12

- `engr_dvt_thread` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d198
  **Inferred.** Logs a message through cmn_err at level 0x5 (0x3d1bc) and then calls sthread_exit (0x3d1c4), returning its result. The name suggests an engineering validation thread, but the rendered facts do not show the thread's work beyond the message.
  Reviewed: 2026-11-12

- `warn` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d14c
  **Inferred.** Calls icmn_err_tag (0x3d184) with a0=0x0, a1=0x14, a2 = its own a0 (probably the format) and a3 = a stack address at sp-56, and returns the icmn_err_tag result (0x3d190). Role (from name): a thin wrapper that prints a warning. What the stack area at sp-56 holds is not shown.
  Reviewed: 2026-11-12

- `VEC_nofault` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3eb10
  **Inferred.** Role (from name): a no-fault vector stub. It calls trap_nofault with its entry arguments and a2 taken from s0 (0x3eb14), then tail-jumps to exception_exit (0x3eb1c). The rendered facts show no test of the fault in this routine; what trap_nofault does is not shown.
  Reviewed: 2026-11-12

- `dobuserr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3eb24
  **Inferred.** Role (from name): bus error handler. The bne at 0x3eb30 compares a2 with 1 and goes to 0x3eb44 when they differ; the return at 0x3eb3c gives 0x0 or a cmn_err result. At 0x3eb44 it calls ldst_addr with its entry arguments, then loads a doubleword at +0xf8 (0x3eb54) and compares it with 0x10 (0x3eb60). It calls cmn_err at level 0xe with the ldst_addr result as a3 (0x3eb7c) and at level 0 (0x3eb8c); which comparison outcome reaches each call is not worked out. The meaning of the field at +0xf8 and the base it is read from are not shown.
  Reviewed: 2026-11-12

- `badaddr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3eb9c
  **Inferred.** A wrapper that calls probe_common (the routine at 0x3ec6c) at 0x3ebb8 with a0 = a stack address at sp-48 and the caller's a1, a2 and a3, and returns that result (0x3ebc4). The name suggests an address probe that tests for a fault, but the probe's own behavior is not rendered.
  Reviewed: 2026-11-12

- `cer_to_hex` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3bbec
  **Inferred.** Role (from name): converts a value to hexadecimal text. It loads bytes with lbu at four sites (0x3bc28, 0x3bc44, 0x3bc64, 0x3bc7c) and stores bytes with sb at six sites (0x3bc2c, 0x3bc4c, 0x3bc50, 0x3bc54, 0x3bc68, 0x3bc84), in loops. The pointer in a4 (sp-16 at the compare) is compared with a3 as unsigned values (0x3bc6c, 0x3bc80). The facts show no digit or letter constants, so the conversion is not established, and the return value is unresolved.
  Reviewed: 2026-11-12

- `scache_data_bit_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3c818
  **Inferred.** Reads two doublewords from the table at sym(.data)+53376 (0x3c8d4, 0x3c8e8) and tests a value against 0x88 (0x3c858), looping over bit masks (0x3c8f0 and 0x3c8c4 test a0 and a7). It returns an unresolved value or -1 (0x3c914). The name suggests it identifies the failing bit in a secondary-cache data error, but the table contents and the returned bit numbering are not shown.
  Reviewed: 2026-11-12

- `ecc_force_cache_line_invalid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3bb98
  **Inferred.** Calls cacheOP twice with a0 = a stack address at sp-48: at 0x3bbc4 with the caller's a1, a2 and a3, and at 0x3bbd4 with a1 to a3 unresolved. It returns the second cacheOP result (0x3bbe4). The facts show no stores into the stack block, so what it holds is not shown. ecc_handler calls it at 0x3be80 (a1=0x0, a2=0x0), 0x3be90 (a1=0x1, a2=0x0) and 0x3c328 (a2=0x3), with a0 a constant address 0xa800000000000000; the name suggests it invalidates one cache line, but the operation codes behind the two calls are not shown.
  Reviewed: 2026-11-12

- `ecc_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3bc90
  **Inferred.** Handles a cache or memory error record at a1. It reads the error word at a1+0x18 and tests it against the masks 0x5500000, 0xaa00000, 0x3800000, 0x4000000 and 0x8000000 (for example at 0x3bfe4, 0x3c1b8 and 0x3c2cc), and it writes status words back into the record at a1+0x28 through a1+0x34. It calls cer_to_hex (0x3bcec), eccf_recoverable_threshold (0x3bd90), ecc_cacheOp with several codes (0x3be0c to 0x3c318), save_cache_error (0x3bf60), memerror_handle_uce (0x3c300) and failsoft_panic_check (0x3c21c), and it reports through cmn_err_tag message 0xb96 (0x3c3ec). The meaning of each mask is not shown, so the split between recoverable and fatal paths is only partly settled.
  Reviewed: 2026-11-12

- `ecc_bitcount` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3c9f0
  **Inferred.** Role (from name): counts the set bits of a0. It returns 0 when a0 is zero (the beq at 0x3c9f0 goes to the return at 0x3ca0c) and otherwise loops, with a bne at 0x3ca04 back to 0x3c9fc while (a0 & at) is nonzero. The loop body is only partly visible, so the count it returns is not shown. ecc_compute_scdata_ecc and ecc_compute_sctag_ecc test the low bit of the result, and ecc_scache_bits_in_error compares it with 1, 3 and 5.
  Reviewed: 2026-11-12

Rejected by the reader: none. The lint holds nine entries at located because each says a sub-fact is not shown. Those entries pass the lint and are kept.
