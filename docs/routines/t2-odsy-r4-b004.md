# Routine roles, tier-2 reading batch 4

Role statements for 25 routines from `usr/cpu/sysgen/IP35boot/kernel.o`, the IP35 boot kernel build. Each statement comes only from the rendered facts (registers, calls, branches and constants) of the exact binary named in its header, and cites instruction addresses. Every grade is Inferred: the facts show what the code does, but callee bodies are not rendered, so the names of callees are taken from the symbol table and their behavior is not checked.

- `r1nk_perf_stop_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ab20
  **Inferred.** Stops the performance counters in a loop bounded by the halfword at a0+0x30 (loads at 0x3ab4c and 0x3ab74). It saves the interrupt state through getsr (0x3ab2c) and issplhi (0x3ab34), calls r1nk_perf_check_architecture (0x3ab44), and writes each counter's control through r1nkperf_control_register_set with a1=0x0 (0x3ab68). A zero interrupt-state result leads toward the assfail call at 0x3aba8 with line 0x15e; whether the zero write stops the hardware counter is not shown by these facts.

- `r1nk_perf_init_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3abb8
  **Inferred.** Initializes per-counter state for the counters in the table at a0, with bounds read from the halfwords at a0+0x30 and a0+0x70 (0x3abf0, 0x3ac64). It first asks cap_able for capability 0x2000000000 (0x3abdc) and branches on the result at 0x3ad50, and it compares the counter count in sn1_hwperf_num_counters with 3 (0x3ad9c). It returns 0, 1 or 0x16 at 0x3ae50; what each return means to callers is not shown.

- `r1nk_perf_architecture` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ae9c
  **Inferred.** Reads a halfword from the absolute address 0xffffffffffffc428 (0x3aefc) and a word from 0xffffffffffffc484 (0x3ae9c), then tests the halfword against 0xe, 0xf and 0x9 (0x3aec0, 0x3aec8, 0x3aed0). Its returns are 0x1, 0x2 or 0x4, and the fall-through case reports through cmn_err (0x3af00) with a format at .rodata+62392. The rendered facts do not show what the codes mean, so the classification is open.

- `r1nk_perf_check_architecture` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3af10
  **Inferred.** Compares the result of r1nk_perf_architecture (0x3af1c) with the word at a0+8 (0x3af28). When they differ it reports a mismatch through cmn_err at 0x3af84 with level 0x5, and it stores a word at a0+4 (0x3af68) after testing bit 0 of the word at a0+4 (0x3af44). It also calls signal with the record's fields at 0x3af58.

- `ecc_cacheOp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3b4f8
  **Inferred.** A short wrapper. It passes a pointer to a stack block at sp-32 and the caller's a1, a2 and a3 to cacheOP (call at 0x3b508), and returns the cacheOP result (0x3b524 returns an unresolved value). Callers pass the operation codes 0x17 (from ecc_cleanRegion at 0x3b9ec), 0x0, 0x1, 0x3, 0x4, 0x5 and 0x7 (from ecc_handler), so the codes select the cache operation inside cacheOP, which the facts do not expose.

- `ecc_cacheop_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3b52c
  **Inferred.** Stores an 8-byte value at a2+0 (0x3b52c) and a 4-byte value at a2+8 (0x3b530), then calls cacheOP with a2 as its first argument (0x3b53c) and returns that result. The routine looks like a helper that writes a small result record into the caller's buffer before a cache operation; the source of the stored values is not shown.

- `ecc_cleanRegion` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3b9cc
  **Inferred.** Loops over a region of a1 bytes, calling ecc_cacheOp with code 0x17 on each pass (0x3b9ec). The loop is skipped when a1 is zero or negative (0x3b9e0) and continues while the counter in s1 is positive (0x3b9f8). The step size and the start address are not visible in the facts.

- `ecc_compute_scdata_ecc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3c930
  **Inferred.** Computes an ECC check value for a secondary-cache data word by loading two doublewords (0x3c984, 0x3c988) and calling ecc_bitcount twice (0x3c998, 0x3c9bc). It tests the parity of each count (v0 & 1, at 0x3c9a8 and 0x3c9d4) and loops while a4 is nonzero (0x3c9b4). The table at sym(.data)+53376 passed at 0x3c998 is also read by scache_data_bit_error, and the masks are not shown.

- `ecc_compute_sctag_ecc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3c788
  **Inferred.** Computes a check value for a secondary-cache tag: it loads a doubleword (0x3c7cc), calls ecc_bitcount (0x3c7d4), and tests the parity of the count at 0x3c7e4. The loop repeats while a3 is nonzero (0x3c7f0). The tag layout and the value loaded are not visible in the facts.

- `ecc_display` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3b550
  **Inferred.** Prints the detail of an ECC error record through cmn_err_tag with message numbers 0xb90, 0xb91, 0xb92, 0xb94 and 0xb95 (calls at 0x3b64c, 0x3b740, 0x3b83c, 0x3b908, 0x3b998). It translates the address with mdir_xlate_addr_mem (0x3b95c) and decides from address-range masks (0xffffffffc0000000, 0x40000000, 0xffffffff80000000) and a node table indexed through nasid_to_compact_node whether to call error_page_discard (0x3b918), which it compares with 1 at 0x3b920. The exact fields of the record are not labeled in the facts.

- `ecc_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ba14
  **Inferred.** Allocates a 0x1000-byte block with kmem_zalloc (0x3ba24), clears it through ecc_cleanRegion with length 0x1000 (0x3ba38), and stores the block's address into the fixed words at 0x9000000000000fe0 and 0x9000000000000fd8 (0x3ba64, 0x3ba9c). A failed allocation branches to cmn_err (0x3bacc). The node-indexed reads from the table at 0xffffffffffffc400 (0x3ba68 to 0x3ba88) are part of the setup and are not labeled in the facts.

- `ecc_log` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3c4ec
  **Inferred.** Keeps a pair of counters at the fixed words 0x9000000000000820 and 0x9000000000000824 and compares them (0x3c52c, 0x3c55c, 0x3c5a8) before updating the second word (0x3c5c4). It reports through ecc_display with message 0x114 (0x3c594) and calls cmn_err at 0x3c5f4 with level 0x14. The purpose of the two counters is not shown in the facts, so the logging meaning is inferred from the call pattern only.

- `ecc_panic` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3c470
  **Inferred.** Calls machine_error_dump with its arguments (0x3c488), then passes fields of the record at a2 (the doubleword at +0x0, the word at +0x18 and the address a2+8) to ecc_display with message 0x14 (0x3c4a0), and finishes with cmn_err at level 0x10 (0x3c4d4). The routine returns the cmn_err result. The rendered facts show no panic call, so whether the caller panics is not shown.

- `ecc_printPending` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3c608
  **Inferred.** Walks pending error records, with a count bound of 0x200 (0x3c688), and prints each through three indirect calls with a0 set to the format at .rodata+63024 (0x3c6c0, 0x3c6dc, 0x3c714). It reads byte, halfword and word fields from addresses the facts do not resolve, and reads a doubleword from sym(pdaindr)+0x8 (0x3c784). The callees behind the indirect calls are not resolved, so the printing target is unknown.

- `ecc_scache_bits_in_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ca14
  **Inferred.** Counts set bits through ecc_bitcount (0x3ca2c) and compares the count with 1, 3 and 5 (0x3ca40, 0x3ca48, 0x3ca50). It returns 0, 1 or 2 (0x3ca58). The comparisons suggest it classifies an error by how many bits are set, but the mapping from those values to error kinds is not shown.

- `engr_dvt_thread` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d198
  **Inferred.** Logs a message through cmn_err at level 0x5 (0x3d1bc) and then calls sthread_exit (0x3d1c4), returning its result. The name suggests an engineering validation thread, but the rendered facts do not show the thread's work beyond the message.

- `warn` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d14c
  **Inferred.** Forwards its format and arguments to icmn_err_tag (0x3d184) with a constant 0x0 as the first argument, tag 0x14 as the second, and a3 set to a stack area at sp-56. It returns the icmn_err_tag result (0x3d190). The routine is a thin printing wrapper, and the constant 0x0 is passed as the first argument.

- `VEC_nofault` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3eb10
  **Inferred.** A fault-vector stub. It calls trap_nofault with its arguments and a2 taken from s0 (0x3eb14), then jumps to exception_exit (0x3eb1c). The rendered facts show no test of the fault itself, so the no-fault condition is handled inside trap_nofault.

- `dobuserr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3eb24
  **Inferred.** Handles a bus error. It loads a doubleword from a0+0xf8 (0x3eb54), decodes the faulting access with ldst_addr (0x3eb44), and branches on whether a2 equals 1 (0x3eb30). It reports through cmn_err at level 0xe with the decoded address (0x3eb7c) and at level 0 (0x3eb8c), and it loops back to 0x3eb3c (0x3eb94). The meaning of the field at +0xf8 is not shown.

- `badaddr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3eb9c
  **Inferred.** A wrapper that gives a probe routine a stack buffer at sp-48. It calls the routine stored at 0x3ec6c through probe_common (0x3ebb8) with the caller's a1, a2 and a3, and returns that result (0x3ebc4). The name suggests an address probe that tests for a fault, but the probe's own behavior is not rendered.

- `cer_to_hex` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3bbec
  **Inferred.** Copies bytes in a loop, reading them with lbu at four sites (0x3bc28, 0x3bc44, 0x3bc64) and writing with sb at six sites, while a counter in a4 is compared with a3 (0x3bc6c, 0x3bc80). The name suggests it prints a value in hexadecimal, but the facts show no digit or letter constants, so the conversion is unknown.

- `scache_data_bit_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3c818
  **Inferred.** Reads two doublewords from the table at sym(.data)+53376 (0x3c8d4, 0x3c8e8) and tests a value against 0x88 (0x3c858), looping over bit masks (0x3c8f0 and 0x3c8c4 test a0 and a7). It returns an unresolved value or -1 (0x3c914). The name suggests it identifies the failing bit in a secondary-cache data error, but the table contents and the returned bit numbering are not shown.

- `ecc_force_cache_line_invalid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3bb98
  **Inferred.** Builds a descriptor at sp-48 and calls cacheOP on it twice (0x3bbc4 with the caller's a1, a2 and a3, and 0x3bbd4 with the same descriptor), then returns a cacheOP result (0x3bbe4). The name and its callers in ecc_handler (0x3be80, 0x3be90, 0x3c328, each passing a line address and a flag) suggest it invalidates one cache line. The operation codes behind the two calls are not shown.

- `ecc_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3bc90
  **Inferred.** Handles a cache or memory error record at a1. It reads the error word at a1+0x18 and tests it against the masks 0x5500000, 0xaa00000, 0x3800000, 0x4000000 and 0x8000000 (for example at 0x3bfe4, 0x3c1b8 and 0x3c2cc), and it writes status words back into the record at a1+0x28 through a1+0x34. It calls cer_to_hex (0x3bcec), eccf_recoverable_threshold (0x3bd90), ecc_cacheOp with several codes (0x3be0c to 0x3c318), save_cache_error (0x3bf60), memerror_handle_uce (0x3c300) and failsoft_panic_check (0x3c21c), and it reports through cmn_err_tag message 0xb96 (0x3c3ec). The meaning of each mask is not shown, so the split between recoverable and fatal paths is only partly settled.

- `ecc_bitcount` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3c9f0
  **Inferred.** Counts the set bits of a0. It returns 0 when a0 is zero (branch at 0x3c9f0 to 0x3ca0c) and otherwise loops, testing a0 against a mask in at (branch at 0x3ca04 back to 0x3c9fc). The loop body is only partly visible, so the count it returns is not shown. The callers ecc_scache_bits_in_error, ecc_compute_scdata_ecc and ecc_compute_sctag_ecc use its parity.

Rejected by the reader: none. The lint holds nine entries at located because each says a sub-fact is not shown. Those entries pass the lint and are kept.
