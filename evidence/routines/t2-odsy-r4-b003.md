# Tier-2 routine roles, odsy batch 3

Targets 76 to 100 of the ranked located reading list (`--from-grade located`, no hardware filter). The list was ranked by the round's tool, and the batch was rendered one routine at a time with `render_reading.py` because the tool has no list offset. Four of the 25 were dropped without an entry because their rendered facts show no role: `_get_compare`, `_set_count`, `resetcounter` and `initcounter`. Their facts list a few compares or a return with an unknown value and no callee. Every role below is inferred: the rendered facts give offsets, callees and constants, not the record or error meanings.

- `maddrnd_d` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x36e68
  **Inferred.** A 1332-byte double-precision helper. It reads a word at +0x54c and a byte at +0x559 through the pointer at [-0x3fe8]:8 (`lw` at 0x36f08, `lbu` at 0x36ecc) and, among other tests, tests bit 0x2 of the byte (branch at 0x36ed4) and bit 0x80 of the word (branch at 0x36f20). It calls `post_sig` with a0=0x8 at 0x36f28, 0x370dc, 0x37134, 0x37170, 0x37220 and 0x37250; each call sits behind its own branch, so none is unconditional. Role (from name): the name and the `post_sig` calls suggest it posts floating-point status after an operation. The value stored through a0 on those paths is unknown.
  Reviewed: 2026-11-12

- `VEC_unexp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x373a0
  **Inferred.** A 32-byte stub. Its only call is `cmn_err` at 0x373b8 with a0=0x0 and a1 pointing at a fixed string at sym(.data)+20504 (its text was not read). Role (from name): the name suggests an unexpected-exception vector that reports through the kernel's error printer. The facts show no return after the call.
  Reviewed: 2026-11-12

- `backtouser` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x373c0
  **Inferred.** A 128-byte path. It loads a pointer from abs 0xffffffffffffc020 (`ld` at 0x373c0), clears a byte at abs 0xffffffffffffc04f (`sb` at 0x373cc), and calls `ktimer_switch` at 0x373c4 with a0 read through [-0x3fe0]:8 and a1=0. It then calls `tfi_restore` at 0x373d4 and afterwards reloads a run of doublewords (`ld` at 0x373d0 and 0x373dc to 0x37430). Role (from name): the names suggest a return to user mode after a kernel trap, with `tfi_restore` restoring saved trap state.
  Reviewed: 2026-11-12

- `earlybadaddr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3773c
  **Inferred.** An early-boot probe for a bad address. It takes an address in a0 and an access width in a1, compared with 1, 2 and 4 at 0x37774, 0x3778c and 0x377a4. It reads through a0 with `lb`, `lh` or `lw` at 0x3777c, 0x37794 and 0x377ac, and stores to sym(nofault) at 0x3776c and 0x37804, the fault-catch slot a probe arms. A width that matches none of the three appears to go to the `cmn_err` call at 0x377d0. It returns 0 at 0x37814.
  Reviewed: 2026-11-12

- `wbadmemaddr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3781c
  **Inferred.** Role (from name): the write-side counterpart of `earlybadaddr`. It stores a word at 0x3784c and again at 0x37870 (the sym(nofault) slot that `earlybadaddr` also writes), stores a word through a0 at 0x37850, and reads the word back through a0 at 0x37854 (`lw`). It returns 0 at 0x37880. The stored values and their widths are unknown.
  Reviewed: 2026-11-12

- `baerror` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37888
  **Inferred.** Role (from name): records a bus error. It loads a doubleword from abs 0xffffffffffffc020 (`ld` at 0x3788c) and tests that loaded value against zero (`beq` at 0x37890). When it is nonzero, it stores a halfword at +0xf6 of the loaded pointer (`sh` at 0x37898) and skips the word store. When it is zero, it stores a word to abs 0xffffffffffffc48c instead (`sw` at 0x378a4). Both paths return 1 at 0x378b0. The stored halfword value is unknown.
  Reviewed: 2026-11-12

- `earlybaerror` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x378b8
  **Inferred.** The early-boot form of the bus-error handler. It writes a word to sym(nofault) at 0x378d8, the same fault-catch slot the probes use, and returns 1 at 0x378e4. The stored value is unknown.
  Reviewed: 2026-11-12

- `cpu_waitforreset` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x378f8
  **Inferred.** An 8-byte spin. Its only branch is a `beq` at 0x378f8 that branches to itself and is always taken, followed by a delay-slot nop, so it never returns. The name suggests it waits for a CPU reset, which the loop does not test.
  Reviewed: 2026-11-12

- `fpunit_fpload_s` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x39150
  **Inferred.** Role (from name): a dispatcher for single-precision loads. It reads an 8-byte entry from the table at sym(.rodata)+61752, indexed by a0 << 3 (`ld` at 0x39170), and jumps through it with `jr` at 0x39174. The cases are presumably one load form each, but the jump has unresolved successors in the facts and the 812 bytes after it are not reached from the entry, so the individual cases are not described.
  Reviewed: 2026-11-12

- `fpunit_fpload_d` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x396f0
  **Inferred.** Role (from name): the double-precision twin of `fpunit_fpload_s`, 1116 bytes. It branches on a1 at 0x396f0 (a1 nonzero goes to 0x39724). The facts show an 8-byte table load at 0x39718 (table at sym(.rodata)+62008) on the a1 == 0 path and another at 0x39740 (table at sym(.rodata)+62136, indexed by a0 << 3) on the other, and one jump through the second with `jr` at 0x39744. The jump successors are unresolved in the facts, and the facts record no jump on the first path.
  Reviewed: 2026-11-12

- `renorm_d` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3947c
  **Inferred.** Normalizes a 64-bit double at a0 in place. It loads the value at 0x3947c and stores it back through a0 on several paths (`sd` at 0x394dc, 0x394f4 and 0x39510). It tests the mask 0x1fffffffffffff (branch at 0x39494), the mask 0xfff0000000000 (branches at 0x394c4 and 0x394e0) and the mask 0xf000000000000 (branch at 0x39538), and returns 0 at 0x394a8 and 0x3958c. `_mul_sd` calls it at 0x39db8 with a0 at sp-72.
  Reviewed: 2026-11-12

- `renorm_s` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x395ac
  **Inferred.** Role (from name): the single-precision counterpart of `renorm_d`. It loads the 8-byte word at a0 (`ld` at 0x395ac) and stores doublewords at five sites (`sd` at 0x395f4, 0x3960c, 0x39628, 0x3965c and 0x3966c), and tests the masks 0xffffff (branch at 0x395bc) and 0xff0000 (branches at 0x395f8 and 0x39610). A shift of that word left by 40 is tested at 0x395c4. It returns 0 at 0x395d0 and 0x39670, and a value the facts leave unknown at 0x39658.
  Reviewed: 2026-11-12

- `_add_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x39678
  **Inferred.** Role (from name): an add helper. It calls `breakout_and_test2_sd` at 0x396ac with a0 unchanged and stack addresses in a1 to a7 (a1=sp-24, a2=sp-80, a3=sp-76, a4=sp-72, a5=sp-16, a6=sp-64, a7=sp-60), then branches on its result at 0x396b4. A zero result goes on (via 0x396c8) to a call to `add` at 0x396dc; a nonzero result falls through. The return at 0x396c0 returns one of the two results.
  Reviewed: 2026-11-12

- `_sub_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x39b4c
  **Inferred.** Role (from name): a subtract helper with the same shape as `_add_sd`. It calls `breakout_and_test2_sd` at 0x39b80 and branches on its result at 0x39b88. A nonzero result falls through to the return at 0x39b94; a zero result goes to 0x39b9c, which leads to the call to `add` at 0x39bb4. The return value is one of the two results. The sign applied to the second operand is unknown.
  Reviewed: 2026-11-12

- `_mul_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x39bc4
  **Inferred.** Role (from name): a multiply helper, 980 bytes. It calls `breakout_and_test2_sd` at 0x39c00. On some conditional paths it calls `post_sig` with a0=0x8 and a1=sym(QUIETNAN) at 0x39c74 and 0x39d10, each behind a test of bit 0x800 of the word at +1356 of the pointer at [-0x3fe8]:8. It calls `mul64` at 0x39dac, whose name suggests the mantissa product, and `renorm_d` at 0x39db8 with a0=sp-72. It stores results with `fpstore_sd` at 0x39ca8, 0x39e2c, 0x39e60, 0x39eb8, 0x39ef0 and 0x39f80, each followed by `store_fpcsr`. The indirect calls at 0x39e00, 0x39f14 and 0x39f4c have targets the facts do not resolve.
  Reviewed: 2026-11-12

- `_div_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3a0cc
  **Inferred.** Role (from name): a divide helper, 1196 bytes. It calls `breakout_and_test2_sd` at 0x3a108. It calls `post_sig` with a0=0x8 at 0x3a168, 0x3a3c0 and 0x3a4e0, each behind its own flag test; the calls at 0x3a168 and 0x3a4e0 pass sym(QUIETNAN) in a1, while the call at 0x3a3c0 does not (its a1 is unknown). It stores results with `fpstore_sd` at 0x3a3e4, 0x3a414, 0x3a450, 0x3a494, 0x3a52c and 0x3a550, each followed by `store_fpcsr`. The infinity constant sym(INFINITY) is read at 0x3a51c. The indirect calls at 0x3a1b0, 0x3a328 and 0x3a364 have targets the facts do not resolve.
  Reviewed: 2026-11-12

- `_abs_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x39f98
  **Inferred.** Role (from name): an absolute-value helper. It loads three table entries indexed by a0 (`lw` at 0x39fb8, `ld` at 0x39fc8, `lw` at 0x39fd0) and calls `screen_nan_sd` at 0x39fe8. When that call returns nonzero it returns that value at 0x39ffc. When it returns zero it reads the table sym(SIGNBIT) at 0x3a00c (a3 of the `fpstore_sd` call at 0x3a01c), stores the result with `fpstore_sd` at 0x3a01c and calls `store_fpcsr` at 0x3a024. What the three table entries hold is unknown beyond their names.
  Reviewed: 2026-11-12

- `_neg_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3a034
  **Inferred.** Role (from name): the sign-flip sibling of `_abs_sd`, with the same shape. It reads the same format tables indexed by a0 (`lw` at 0x3a054, `ld` at 0x3a064, `lw` at 0x3a06c) and calls `screen_nan_sd` at 0x3a084. When that call returns nonzero it returns at 0x3a098; when it returns zero it loads a table word at 0x3a0ac, then calls `fpstore_sd` at 0x3a0b4 (a2 is the second argument at entry) and `store_fpcsr` at 0x3a0bc. The name indicates negation, but the facts show no operation that flips the sign, so the negation rests on the name.
  Reviewed: 2026-11-12

- `r1nk_perf_update_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3a838
  **Inferred.** Role (from name): refreshes the hardware performance counter totals. It tests a0 at 0x3a84c. When a0 is zero it goes to 0x3a944, calls `splhi`, loads a pointer from [-0x38d0]:8 and, when that pointer is nonzero and its halfword has a nonzero low nibble (bits 0xf), continues with the work below; otherwise it calls `splx` at 0x3a99c with the `splhi` result. When a0 is nonzero it calls `r1nk_perf_check_architecture` at 0x3a858 and reads a counter register through `r1nkperf_data_register_get` at 0x3a874 in a loop. A 64-bit update uses `lld` at 0x3a91c and `scd` at 0x3a928, retried through the branch-likely at 0x3a92c when the store-conditional fails, and is followed by `r1nkperf_data_register_set` at 0x3a934; it is not between the `splhi` and `splx` calls. It calls `r1nk_perf_stop_counters` at 0x3a974 when bit 0x8 of t8 is clear (branch at 0x3a8e0), and calls `splx` at 0x3a8f0 only when s3 is nonzero.
  Reviewed: 2026-11-12

- `r1nk_perf_start_counters` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3a9ac
  **Inferred.** Role (from name): starts the hardware performance counters. It reads the halfwords at a0 +0x0, +0x30 and +0x60 (`lh` at 0x3a9dc, 0x3a9f4 and 0x3ab1c), checks the architecture with `r1nk_perf_check_architecture` at 0x3a9ec, and programs the control and data registers through `r1nkperf_control_register_set` at 0x3aa20 and `r1nkperf_data_register_set` at 0x3aa40. It calls `getsr` at 0x3a9b8 and then `issplhi` at 0x3a9c0 with the result, and branches on `issplhi` at 0x3a9d4 (zero goes to 0x3aaf8). It calls `assfail` at 0x3ab04 with a2=0x119. It compares the global word sym(sn1_hwperf_num_counters) with 3 at 0x3aaa0 (branch back to 0x3aa1c when it is 3 or more), which is a comparison, not a loop bound the facts establish.
  Reviewed: 2026-11-12

- `VEC_dbe` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x395a0
  **Inferred.** Role (from name): a vector stub for a data-bus error trap. It loads a halfword from abs 0xffffffffffffc428 (`lh` at 0x395a0), stores a doubleword at a0 +0x140 (`sd` at 0x395a8), and jumps to `VEC_trap` at 0x395a4 with its four arguments unchanged. The stored doubleword value is unknown, and so is the halfword value loaded at 0x395a0.
  Reviewed: 2026-11-12
