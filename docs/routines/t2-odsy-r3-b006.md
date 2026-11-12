# Tier-2 routine roles, odsy round 3 batch 6

Targets 151 to 175 of the t2list ranking of located and named-only routines in the IP35boot kernel. Every role below is inferred from the rendered facts of that binary: addresses, callees and constants. Routines whose rendered facts show no role are left out and listed in the handoff.

- `ULIsystrap` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2cff0
  **Inferred.** Trap entry that compares v0 with 0x410 (bne at 0x2cff4), a0 with 0xa8 (bne at 0x2cffc) and a1 with 3 (bne at 0x2d004). A v0 or a0 mismatch branches to keruliframe at 0x2d140. When v0 and a0 match and a1 is 3, it tail-calls uli_return (j at 0x2d038). When v0 and a0 match and a1 is not 3, it goes to 0x2d040, calls uli_setasids (jal at 0x2d0b4), calls ULI_syscall (jal at 0x2d0d8) and calls uli_setasids again (jal at 0x2d114). uli_badtrap (j at 0x2d1fc) is reached only through keruliframe's code at 0x2d140. The meaning of the constants is not settled by these facts.
  Reviewed: 2026-11-12 (sonnet)

- `keruliframe` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d140
  **Inferred.** Register-frame save entered from ULIsystrap on a v0 or a0 mismatch. It loads a pointer from offset -0x3fd8 and tests the word at +0xe8 of it (bne at 0x2d148). When that word is nonzero it skips to 0x2d1d8, which skips every store and the tfi_save call. Otherwise it stores 25 doublewords and one word (sd at 0x2d154 to 0x2d1d0, sw at 0x2d1d4), reads abs 0xffffffffffffc038 (ld at 0x2d15c) and calls tfi_save (jal at 0x2d1b8). Both paths end in uli_badtrap (j at 0x2d1fc).
  Reviewed: 2026-11-12 (sonnet)

- `add_ioboard` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d4cc
  **Inferred.** Eight-byte stub (8 bytes at 0x2d4cc) that is only a return. The rendered facts show no store, call or branch, and no instruction sets v0, so the caller gets whatever v0 already held. As far as these facts go, it does nothing.
  Reviewed: 2026-11-12 (sonnet)

- `readadapters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d4dc
  **Inferred.** Eight-byte stub (8 bytes at 0x2d4dc) that returns the constant 0 in v0 (v0 = 0x0 at the return). It makes no call and no memory access. The name suggests adapter probing, but the code does none of that and always returns zero.
  Reviewed: 2026-11-12 (sonnet)

- `_baduk` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d5f4
  **Inferred.** Assertion-failure stub. It loads one doubleword from abs 0xffffffffffffc448 (ld at 0x2d5f8), then tail-jumps to assfail (j at 0x2d628) with two addresses in .data (sym(.data)+9672 and +9685), a2 = 0 and a3 passed through. The facts show no other path from the entry. They do not show what the loaded value means.
  Reviewed: 2026-11-12 (sonnet)

- `ecommon` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d770
  **Inferred.** Common exception-entry tail. It stores 23 doublewords (sd from 0x2d774) and calls tfi_save (jal at 0x2d7b8). It calls ktimer_switch (jal at 0x2d7e0) only when the pointer at -0x3fe0 is nonzero (beq at 0x2d7c8) and bit 0x100 of k0 is clear (bne at 0x2d7d8). It leaves through an indirect jump at 0x2d81c, whose target the facts do not resolve.
  Reviewed: 2026-11-12 (sonnet)

- `ecommon_allsaved` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d7c0
  **Inferred.** Second entry into the tail of ecommon at 0x2d7c0. It skips ecommon's register stores and its tfi_save call (jal at 0x2d7b8), and keeps the same ktimer_switch test (beq at 0x2d7c8, bne at 0x2d7d8, jal at 0x2d7e0) and the indirect jump at 0x2d81c. The name suggests the caller has already saved the frame, which the facts are consistent with but do not prove.
  Reviewed: 2026-11-12 (sonnet)

- `softfp_adderr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d824
  **Inferred.** Role (from name): error reporter for a soft floating-point add path. It calls cmn_err (jal at 0x2d830) with a0 = 0, an address rendered as sym(.rodata)+48720, and a2 and a3 passed through. It then returns the constant 0 (return at 0x2d840). Other routines render several different printf formats as the same sym(.rodata)+48720, so that address is not a reliable identity for the string.
  Reviewed: 2026-11-12 (sonnet)

- `softfp_insterr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d848
  **Inferred.** Role (from name): error reporter for a soft floating-point instruction error. It calls cmn_err (jal at 0x2d858) with a0 = 0, an address rendered as sym(.rodata)+48720, and a2 and a3 passed through, then returns the constant 0 (return at 0x2d868). softfp_adderr renders its string address the same way, but that rendering is not evidence of a shared string.
  Reviewed: 2026-11-12 (sonnet)

- `ioerror_dump` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d870
  **Inferred.** Formatted dump of an error record in the structure passed in a3. The branches at 0x2d88c, 0x2d8a0, 0x2d8b4 and 0x2d8c8 test bits 0x4, 0x8, 0x1 and 0x2 of a1 and skip to 0x2d9cc, 0x2d9d8, 0x2d9e0 and 0x2d9e8 when the bit is clear. The routine calls printf with format addresses rendered as sym(.rodata)+48720 (the same rendering for every call, so the formats are not identified). The arguments include halfword fields at a3+4 to a3+14 and doubleword fields at a3+16 to a3+72 (jal at 0x2d914 to 0x2db34). One printf takes a value loaded through pdaindr, indexed by the halfword at a3+10 scaled by 16 (ld at 0x2d99c and 0x2d9a8). A run of sign tests on the shifted word at a3 (bltz at 0x2d924 to 0x2d984) selects the printf calls at 0x2d9f0 to 0x2db34. Which bit gates which printf is not shown, and the field meanings are inferred from the offsets only.
  Reviewed: 2026-11-12 (sonnet)

- `error_mark_page` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2db44
  **Inferred.** Thin wrapper. It calls sn0_error_mark_page (jal at 0x2db4c) with its four argument registers passed through unchanged, and returns that callee's result in v0 (return at 0x2db58). The entry does no work of its own.
  Reviewed: 2026-11-12 (sonnet)

- `error_reclaim_page` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2db60
  **Inferred.** Thin wrapper. It calls sn0_error_reclaim_page (jal at 0x2db68) with its four argument registers passed through unchanged, and returns that callee's result in v0 (return at 0x2db74). The entry does no work of its own.
  Reviewed: 2026-11-12 (sonnet)

- `_hook_exceptions` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2db7c
  **Inferred.** Role (from name): installs exception-vector patches. It calls getcpuid (jal at 0x2dbac, 0x2dccc and 0x2ddc8) and uses the result scaled by 16 to index a table (ld +0x8 at 0x2dbc0). Word loops, lw from a range and sw to a computed address, run over the range bounded by utlbmiss_prolog_mp and eutlbmiss_prolog_mp (loop at 0x2dbf4 to 0x2dc28, sw at 0x2dc0c and 0x2dc3c) and over the range bounded by _j_exceptnorm and _j_endexceptnorm (loop at 0x2de00 to 0x2de24). It calls get_nasid (jal at 0x2de38 and 0x2de5c), flush_cache (jal at 0x2de80), getsr (jal at 0x2de88) and setsr (jal at 0x2de98), and returns the setsr result. assfail with a2 = 0x19e (jal at 0x2deb0) is called when a computed value tested by the beq at 0x2dc88 is not below 0x81. The facts show the value 0xffffffff80000080 in a register at 0x2ddc8 but not what it is used for.
  Reviewed: 2026-11-12 (sonnet)

- `_j_exceptnorm` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2dec0
  **Inferred.** Trampoline. It loads a doubleword from abs 0xffffffffffffc000 (ld at 0x2dec0) and jumps through a register (jr at 0x2dec8) with its four argument registers unchanged. The facts do not show the register's source, so the destination is probably the loaded word.
  Reviewed: 2026-11-12 (sonnet)

- `utlbmiss2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e080
  **Inferred.** Second-level TLB-miss test. It loads two doublewords at 0x2e090 and 0x2e094, then tests kernel scratch register k1 (beq at 0x2e0a4, taken to 0x2e0bc when k1 is zero) and k0 (beq at 0x2e0ac, taken to 0x2e128 when k0 is zero). The 16 bytes from 0x2e080 to 0x2e090 show no memory access, call or branch in the facts. What the two targets do is not in this entry's facts.
  Reviewed: 2026-11-12 (sonnet)

- `utlbmiss2_not_large_page` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e090
  **Inferred.** Entry into utlbmiss2 at 0x2e090, skipping its first 16 bytes. It runs the same two doubleword loads and the same k1 and k0 tests (beq at 0x2e0a4 and 0x2e0ac). Role (from name): the path for a page that is not a large page. The facts do not show what makes it that path.
  Reviewed: 2026-11-12 (sonnet)

- `utlbmiss_sharedseg1` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e0c0
  **Inferred.** Role (from name): shared-segment test in the TLB-miss path. It branches to 0x2e0fc when k0 is nonzero (bne at 0x2e0c0). When k0 is zero it loads two doublewords through unresolved base registers (0x2e0e4 and 0x2e0e8). A third such load at 0x2e118 lies after the branch target, so which paths reach it is not shown. The facts show no call or store, and the block at 0x2e0fc is not in this entry's facts.
  Reviewed: 2026-11-12 (sonnet)

- `lpg_overlay_utlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e158
  **Inferred.** Role (from name): overlay of the TLB-miss path for large pages. It tests the low four bits of k1 and branches to utlbmiss2_not_large_page at 0x2e090 when they are zero (beq at 0x2e174). Otherwise it stores a value to abs 0xffffffffffffc038 (sd at 0x2e17c). A load at 0x2e1d8 reads the same address, and the facts do not show that it follows the store on the same path. Three doubleword loads (0x2e168, 0x2e1b4 and 0x2e1c0) go through unresolved base registers.
  Reviewed: 2026-11-12 (sonnet)
