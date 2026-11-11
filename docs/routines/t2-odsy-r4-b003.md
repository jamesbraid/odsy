# Tier-2 routine roles, odsy batch 3

Targets 76 to 100 of the ranked located reading list (`--from-grade located`, no hardware filter). The list was ranked by the round's tool, and the batch was rendered one routine at a time with `render_reading.py` because the tool has no list offset. Four of the 25 were dropped without an entry because their rendered facts show no role: `_get_compare`, `_set_count`, `resetcounter` and `initcounter`. Their facts list a few compares or a return with an unknown value and no callee. Every role below is inferred: the rendered facts give offsets, callees and constants, not the record or error meanings.

- `maddrnd_d` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x36e68
  **Inferred.** A 1332-byte double-precision helper. It reads a word at +0x54c and a byte at +0x559 through the pointer at [-0x3fe8]:8 (`lw` at 0x36f08, `lbu` at 0x36ecc) and tests bits 0x2 and 0x80 of flag values (branches at 0x36ed4 and 0x36f20). On its exit paths it calls `post_sig` with a0=0x8 at 0x36f28, 0x370dc, 0x37134, 0x37170, 0x37220 and 0x37250, so it reads as a helper that posts floating-point status after an operation. The value stored through a0 on those paths is unknown.

- `VEC_unexp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x373a0
  **Inferred.** A 32-byte exception vector stub. Its only call is `cmn_err` at 0x373b8 with a0=0x0 and a1 pointing at a fixed message at sym(.data)+20504, so it reports an unexpected exception through the kernel's error printer and ends there.

- `backtouser` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x373c0
  **Inferred.** A 128-byte return-to-user path. It loads a pointer from abs 0xffffffffffffc020 (`ld` at 0x373c0), clears a byte at abs 0xffffffffffffc04f (`sb` at 0x373cc), and calls `ktimer_switch` at 0x373c4 with a0 read through [-0x3fe0]:8 and a1=0. It then calls `tfi_restore` at 0x373d4 to restore saved trap state. The name fits a transition back to user mode after a kernel trap.

- `earlybadaddr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3773c
  **Inferred.** An early-boot probe for a bad address. It takes an address in a0 and an access width in a1, compared with 1, 2 and 4 at 0x37774, 0x3778c and 0x377a4. It reads through a0 with `lb`, `lh` or `lw` at 0x3777c, 0x37794 and 0x377ac, and stores to sym(nofault) at 0x3776c and 0x37804, the fault-catch slot a probe arms. A width that matches none of the three appears to go to the `cmn_err` call at 0x377d0. It returns 0 at 0x37814.

- `wbadmemaddr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3781c
  **Inferred.** The write-side counterpart of `earlybadaddr`. It arms sym(nofault) with stores at 0x3784c and 0x37870, stores through a0 at 0x37850, and reads the word back through a0 at 0x37854 (`lw`). It returns 0 at 0x37880. The stored value and its width are unknown.

- `baerror` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37888
  **Inferred.** Records a bus error. It loads a pointer from abs 0xffffffffffffc020 (`ld` at 0x3788c) and tests the word it points to at [-0x3fe0]:8 (`beq` at 0x37890). When that word is nonzero, it stores a halfword at +0xf6 of the pointer (`sh` at 0x37898), then stores a word to abs 0xffffffffffffc48c (`sw` at 0x378a4). It returns 1 at 0x378b0. The stored halfword value is unknown.

- `earlybaerror` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x378b8
  **Inferred.** The early-boot form of the bus-error handler. It writes a word to sym(nofault) at 0x378d8, the same fault-catch slot the probes use, and returns 1 at 0x378e4. The stored value is unknown.

- `cpu_waitforreset` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x378f8
  **Inferred.** An 8-byte spin. Its only instruction is a `beq` at 0x378f8 that branches to itself and is always taken, so it never returns. The name suggests it waits for a CPU reset, which the loop does not test.

- `fpunit_fpload_s` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x39150
  **Inferred.** A dispatcher for single-precision loads. It reads an 8-byte entry from the table at sym(.rodata)+61752, indexed by a0 << 3 (`ld` at 0x39170), and jumps through it with `jr` at 0x39174, so each case is one load form. The jump has unresolved successors in the facts, and the 812 bytes after it are not reached from the entry, so the individual cases are not described.

- `fpunit_fpload_d` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x396f0
  **Inferred.** The double-precision twin of `fpunit_fpload_s`, 1116 bytes. It branches on a1 at 0x396f0, reads 8-byte table entries from sym(.rodata)+62008 (`ld` at 0x39718) and from sym(.rodata)+62136 indexed by a0 << 3 (`ld` at 0x39740), and jumps through the second with `jr` at 0x39744. Like the single-precision version, its jump successors are unresolved in the facts.

- `renorm_d` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3947c
  **Inferred.** Normalizes a 64-bit double at a0 in place. It loads the value at 0x3947c and stores it back through a0 on several paths (`sd` at 0x394dc, 0x394f4 and 0x39510). It tests the mask 0x1fffffffffffff (branch at 0x39494), the mask 0xfff0000000000 (branches at 0x394c4 and 0x394e0) and the mask 0xf000000000000 (branch at 0x39538), and returns 0 at 0x394a8 and 0x3958c. `_mul_sd` calls it at 0x39db8 with a0 at sp-72.

- `renorm_s` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x395ac
  **Inferred.** The single-precision counterpart of `renorm_d`. It loads the 8-byte word at a0 (`ld` at 0x395ac), stores it back through a0 on five paths (`sd` at 0x395f4, 0x3960c and 0x39628), and tests the masks 0xffffff (branch at 0x395bc) and 0xff0000 (branches at 0x395f8 and 0x39610). A shift of that word left by 40 is tested at 0x395c4. It returns 0 at 0x395d0 and 0x39670.

- `_add_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x39678
  **Inferred.** An add helper. It calls `breakout_and_test2_sd` at 0x396ac with a1 pointing at a stack frame (sp-24 to sp-60), then branches on that result at 0x396b4. The two outcomes are the return value of `breakout_and_test2_sd` or the result of `add` called at 0x396dc, and both reach the return at 0x396c0.

- `_sub_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x39b4c
  **Inferred.** A subtract helper with the same shape as `_add_sd`. It calls `breakout_and_test2_sd` at 0x39b80, branches on its result at 0x39b88, and calls `add` at 0x39bb4 before returning at 0x39b94. The sign applied to the second operand is unknown.

- `_mul_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x39bc4
  **Inferred.** A multiply helper, 980 bytes. It calls `breakout_and_test2_sd` at 0x39c00 and, on its special-value paths, posts a quiet-NaN result through `post_sig` at 0x39c74 and 0x39d10. The mantissa product comes from `mul64` at 0x39dac, and the product is normalized by `renorm_d` at 0x39db8. It stores results with `fpstore_sd` at 0x39ca8, 0x39e2c, 0x39e60, 0x39eb8, 0x39ef0 and 0x39f80, each followed by `store_fpcsr`.

- `_div_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3a0cc
  **Inferred.** A divide helper, 1196 bytes. It calls `breakout_and_test2_sd` at 0x3a108 and posts a quiet-NaN result through `post_sig` at 0x3a168, 0x3a3c0 and 0x3a4e0. It stores results with `fpstore_sd` at 0x3a3e4, 0x3a414, 0x3a450, 0x3a494, 0x3a52c and 0x3a550, each followed by `store_fpcsr`. The infinity constant sym(INFINITY) is read at 0x3a51c. The indirect calls at 0x3a1b0, 0x3a328 and 0x3a364 have targets the facts do not resolve.

- `_abs_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x39f98
  **Inferred.** An absolute-value helper. It looks up exponent-shift, exponent-mask and fraction-mask constants for the operand by a0 (`lw` at 0x39fb8, `lw` at 0x39fd0, `ld` at 0x39fc8). It calls `screen_nan_sd` at 0x39fe8 to test for NaN, reads the table sym(SIGNBIT) at 0x3a00c, which the name suggests is the sign mask, and stores the result with `fpstore_sd` at 0x3a01c followed by `store_fpcsr` at 0x3a024.

- `_neg_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3a034
  **Inferred.** The sign-flip sibling of `_abs_sd`, with the same shape. It reads the same format tables indexed by a0 (`lw` at 0x3a054, `ld` at 0x3a064, `lw` at 0x3a06c), calls `screen_nan_sd` at 0x3a084, reads sym(SIGNBIT) at 0x3a0ac, and stores with `fpstore_sd` at 0x3a0b4 and `store_fpcsr` at 0x3a0bc. The name indicates negation, but the facts show no operation that flips the sign, so the negation rests on the name.

- `r1nk_perf_update_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3a838
  **Inferred.** Refreshes the hardware performance counter totals. It checks the architecture through `r1nk_perf_check_architecture` at 0x3a858 and reads a counter register through `r1nkperf_data_register_get` at 0x3a874. It raises the interrupt level with `splhi` at 0x3a944 around a 64-bit update: `lld` at 0x3a91c and `scd` at 0x3a928, retried through the branch-likely at 0x3a92c when the store-conditional fails. It calls `r1nk_perf_stop_counters` at 0x3a974 when bit 0x8 of t8 is clear (branch at 0x3a8e0), and restores the level with `splx` at 0x3a99c.

- `r1nk_perf_start_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3a9ac
  **Inferred.** Starts the hardware performance counters. It reads the halfwords at a0 +0x0, +0x30 and +0x60 (`lh` at 0x3a9dc, 0x3a9f4 and 0x3ab1c), checks the architecture with `r1nk_perf_check_architecture` at 0x3a9ec, and programs the control and data registers through `r1nkperf_control_register_set` at 0x3aa20 and `r1nkperf_data_register_set` at 0x3aa40. It reads the interrupt level with `getsr` at 0x3a9b8 and `issplhi` at 0x3a9c0. It calls `assfail` at 0x3ab04 with a2=0x119 on the failure path, and its loop bound is a global word loaded at 0x3aaa0.

- `VEC_dbe` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x395a0
  **Inferred.** A vector stub for a data-bus error trap. It loads a halfword from abs 0xffffffffffffc428 (`lh` at 0x395a0), stores a doubleword at a0 +0x140 (`sd` at 0x395a8), and jumps to `VEC_trap` at 0x395a4 with its four arguments unchanged. The stored doubleword value is unknown, and so is the halfword value loaded at 0x395a0.
