# Tier-2 routine roles, odsy round 3 batch 6

Targets 151 to 175 of the t2list ranking of located and named-only routines in the IP35boot kernel. Every role below is inferred from the rendered facts of that binary: addresses, callees and constants. Routines whose rendered facts show no role are left out and listed in the handoff.

- `ULIsystrap` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2cff0
  **Inferred.** Trap entry that chooses a path by comparing v0 with 0x410, a0 with 0xa8 and a1 with 3 (branches at 0x2cff4, 0x2cffc and 0x2d004). Matching paths call uli_setasids (jal at 0x2d0b4 and 0x2d114) and ULI_syscall (jal at 0x2d0d8), and the a1 = 3 path ends in uli_return (j at 0x2d038). A v0 or a0 mismatch branches into keruliframe at 0x2d140, and the entry ends in uli_badtrap (j at 0x2d1fc). The meaning of the constants is not settled by these facts.

- `keruliframe` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d140
  **Inferred.** Register-frame save entered from ULIsystrap on a mismatch. It stores 25 doublewords and one word through a pointer fetched from offset -0x3fd8 (sd at 0x2d154 to 0x2d1d0, sw at 0x2d1d4) and reads abs 0xffffffffffffc038 (ld at 0x2d15c). It calls tfi_save (jal at 0x2d1b8) unless the test of k1 at 0x2d148 is nonzero, which skips to 0x2d1d8, and it ends in uli_badtrap (j at 0x2d1fc).

- `add_ioboard` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d4cc
  **Inferred.** Eight-byte stub (8 bytes at 0x2d4cc) that is only a return. The rendered facts show no store, call or branch, and no instruction sets v0, so the caller gets whatever v0 already held. As far as these facts go, it does nothing.

- `readadapters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d4dc
  **Inferred.** Eight-byte stub (8 bytes at 0x2d4dc) that returns the constant 0 in v0 (v0 = 0x0 at the return). It makes no call and no memory access. The name suggests adapter probing, but the code does none of that and always returns zero.

- `_baduk` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d5f4
  **Inferred.** Assertion-failure stub. It loads one doubleword from abs 0xffffffffffffc448 (ld at 0x2d5f8), then tail-jumps to assfail (j at 0x2d628) with two addresses in .data (sym(.data)+9672 and +9685), a2 = 0 and a3 passed through. The code from 0x2d630 to 0x2d76c is not reached from the entry. The facts do not show what the loaded value means.

- `ecommon` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d770
  **Inferred.** Common exception-entry tail. It stores 23 doublewords (sd from 0x2d774) and calls tfi_save (jal at 0x2d7b8). It calls ktimer_switch (jal at 0x2d7e0) only when the pointer at -0x3fe0 is nonzero (beq at 0x2d7c8) and bit 0x100 of k0 is clear (bne at 0x2d7d8). It leaves through an indirect jump at 0x2d81c, whose target the facts do not resolve.

- `ecommon_allsaved` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d7c0
  **Inferred.** Second entry into the tail of ecommon at 0x2d7c0. It skips ecommon's register stores and its tfi_save call (jal at 0x2d7b8), and keeps the same ktimer_switch test (beq at 0x2d7c8, bne at 0x2d7d8, jal at 0x2d7e0) and the indirect jump at 0x2d81c. The name suggests the caller has already saved the frame, which the facts are consistent with but do not prove.

- `softfp_adderr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d824
  **Inferred.** Error reporter for a soft floating-point add path, judging by the name. It calls cmn_err (jal at 0x2d830) with level 0, the .rodata string at sym(.rodata)+48720, and a2 and a3 passed through. It then returns the constant 0 (return at 0x2d840).

- `softfp_insterr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d848
  **Inferred.** Error reporter for a soft floating-point instruction error, judging by the name. It calls cmn_err (jal at 0x2d858) with level 0 and the same .rodata string at sym(.rodata)+48720 that softfp_adderr uses at 0x2d824, then returns the constant 0 (return at 0x2d868).

- `ioerror_dump` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d870
  **Inferred.** Formatted dump of an error record in the structure passed in a3. Bits 0x4, 0x8, 0x1 and 0x2 of a1 gate four blocks (beq at 0x2d88c, 0x2d8a0, 0x2d8b4 and 0x2d8c8). The blocks call printf with a .rodata format at sym(.rodata)+48720 for halfword fields at a3+4 to a3+14 and doubleword fields at a3+16 to a3+72 (jal at 0x2d914 to 0x2db34). The table pdaindr, indexed by the halfword at a3+10 scaled by 16, supplies one more printed value (ld at 0x2d99c and 0x2d9a8), and a run of sign tests on the word at a3 (bltz at 0x2d924 to 0x2d984) guards the printf calls at 0x2d9f0 to 0x2db34. The field meanings are inferred from the offsets only.

- `error_mark_page` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2db44
  **Inferred.** Thin wrapper. It calls sn0_error_mark_page (jal at 0x2db4c) with its four argument registers passed through unchanged, and returns that callee's result in v0 (return at 0x2db58). The entry does no work of its own.

- `error_reclaim_page` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2db60
  **Inferred.** Thin wrapper. It calls sn0_error_reclaim_page (jal at 0x2db68) with its four argument registers passed through unchanged, and returns that callee's result in v0 (return at 0x2db74). The entry does no work of its own.

- `_hook_exceptions` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2db7c
  **Inferred.** Installs TLB-refill and exception-vector patches for the calling CPU. It takes the CPU number from getcpuid (jal at 0x2dbac, 0x2dccc and 0x2ddc8) and indexes the per-CPU table pdaindr with it (ld at 0x2dbc0). It copies words into the utlbmiss prolog range bounded by eutlbmiss_prolog_mp (sw at 0x2dc0c to 0x2dc3c) and into the _j_exceptnorm range (loop bounds at 0x2de00 to 0x2de24). It then calls get_nasid, flush_cache (jal at 0x2de80) and getsr and setsr (jal at 0x2de88 and 0x2de98). The constant 0xffffffff80000080 at 0x2ddc8 suggests the patched target is the general exception vector, and an assertion with argument 0x19e (jal at 0x2deb0) guards the failure path. The patch target rests on the constants and calls alone.

- `_j_exceptnorm` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2dec0
  **Inferred.** Trampoline. It loads a doubleword from abs 0xffffffffffffc000 (ld at 0x2dec0) and jumps through a register (jr at 0x2dec8) with its four argument registers unchanged. The facts do not show the register's source, so the destination is probably the loaded word.

- `utlbmiss2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e080
  **Inferred.** Second-level TLB-miss test. It loads two doublewords at 0x2e090 and 0x2e094, then tests kernel scratch register k1 (beq at 0x2e0a4, taken to 0x2e0bc when k1 is zero) and k0 (beq at 0x2e0ac, taken to 0x2e128 when k0 is zero). The 16 bytes from 0x2e080 to 0x2e090 show no memory access, call or branch in the facts. What the two targets do is not in this entry's facts.

- `utlbmiss2_not_large_page` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e090
  **Inferred.** Entry into utlbmiss2 at 0x2e090, skipping its first 16 bytes. It runs the same two doubleword loads and the same k1 and k0 tests (beq at 0x2e0a4 and 0x2e0ac). The name suggests the path for a page that is not a large page, but the facts show only the skipped bytes.

- `utlbmiss_sharedseg1` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e0c0
  **Inferred.** Shared-segment test in the TLB-miss path. It branches to 0x2e0fc when k0 is nonzero (bne at 0x2e0c0), and otherwise loads three doublewords through unresolved base registers (0x2e0e4, 0x2e0e8 and 0x2e118). The facts show no call or store. The name suggests a shared-segment check, and the target block at 0x2e0fc is not in this entry's facts.

- `lpg_overlay_utlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e158
  **Inferred.** Overlay of the TLB-miss path for large pages, by its name. It tests the low four bits of k1 and branches to utlbmiss2_not_large_page at 0x2e090 when they are zero (beq at 0x2e174). Otherwise it stores a value to abs 0xffffffffffffc038 (sd at 0x2e17c) and reads it back at 0x2e1d8 (ld). Three doubleword loads (0x2e168, 0x2e1b4 and 0x2e1c0) go through unresolved base registers.
