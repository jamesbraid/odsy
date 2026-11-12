# odsy kernel floating-point routine readings, batch 2

Role entries for the floating-point helpers in the IP35boot kernel object. Each role comes from the
rendered instruction facts of that routine: its calls, branches, constants and table reads. Sub-facts the
facts leave open are marked unknown.

- `_cvtsd_w` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3114c
  **Inferred.** Role (from name): converts a word to a double. When a1 is nonzero (the beq at 0x31164 jumps to
  0x311d4 when a1 is zero) it calls renorm_d at 0x31180, loads an entry of the sym(round) table at 0x31194 and
  makes an indirect call at 0x311a8 that has that entry in a4. It calls fpstore_sd at 0x311d8 and then
  store_fpcsr at 0x311e0. What the unknown callee at 0x311a8 does, and which value each path hands to
  fpstore_sd, are unknown sub-facts.
  Reviewed: 2026-11-12 (sonnet)

- `_nmsub_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x311f0
  **Inferred.** Role (from name): a negated multiply-subtract on doubles. It calls breakout_and_test3_sd at
  0x3125c with a0 unchanged and a1 through a7 set to stack addresses. When that call returns nonzero the value is
  returned as is (the beq at 0x31264 falls through); when it returns zero the routine calls madd at 0x312a4 and
  returns its result. The facts do not show the sign handling around the madd call, so it is an unknown
  sub-fact; it may sit inside madd.
  Reviewed: 2026-11-12 (sonnet)

- `_cvtw_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x312b4
  **Inferred.** Role (from name): converts a double to a 32-bit word. It calls breakout_sd at 0x312d8 with a0
  and stack addresses, calls round_w at 0x313b4, and loads from the sym(EXP_BIAS) table at 0x312ec (the value is
  compared against a4 at 0x3130c). It calls fpstore_s at 0x31420 (a0 = 0x7fffffff) and, on a separate path, at
  0x31458 (a0 = 0x0); those look like a saturation maximum and zero. It calls post_sig at 0x31338 only
  when bit 0x800 of the word at +0x54c off the pointer at abs 0xffffffffffffc018 is set (beq at 0x31330), with
  0x10040 ORed into the word it passes in a6. The call at 0x313e0 is indirect, with an entry of the sym(renorm)
  table in a3; what it does is an unknown sub-fact.
  Reviewed: 2026-11-12 (sonnet)

- `_cvtl_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x31470
  **Inferred.** Role (from name): converts a double to a 64-bit integer. It calls breakout_sd at 0x31494 and
  round_l at 0x31564. It calls post_sig at 0x3150c only when bit 0x800 of the word at +0x54c off the pointer at
  abs 0xffffffffffffc018 is set (beq at 0x31504), with 0x10040 ORed into the word it passes in a6. The beq at
  0x314b4 jumps to 0x31608, the block that calls fpstore_d with 0x8000000000000000, when a1 equals an entry of the
  sym(MTWOP63) table. The three fpstore_d calls at 0x3161c, 0x31640 and 0x31678 pass a0 = 0x8000000000000000,
  0x7fffffffffffffff and 0, the 64-bit minimum, maximum and zero.
  Reviewed: 2026-11-12 (sonnet)

- `_comp_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x31690
  **Inferred.** Role (from name): compares two doubles. It uses entries of the sym(SIGN_SHIFT), sym(EXP_SHIFT),
  sym(EXP_MASK) and sym(EXP_NAN) tables, which looks like operand classification, and masks values against
  sym(SNANBIT_MASK) at 0x31784 and 0x317a0. It calls post_sig at 0x317dc only when bit 0x800 of the word at
  +0x54c off the pointer at abs 0xffffffffffffc018 is set (beq at 0x317d4). It calls store_fpcsr at 0x317e4 and
  0x31844, and the return at 0x31850 returns the store_fpcsr result. Branches test bits 0x1, 0x4 and 0x2 of a3
  (0x31754, 0x31838, 0x31864); what they select is an unknown sub-fact.
  Reviewed: 2026-11-12 (sonnet)

- `_nmadd_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x318d0
  **Inferred.** Role (from name): a negated multiply-add on doubles with the same three-operand shape as the
  other wrappers. It calls breakout_and_test3_sd at 0x3193c; a nonzero result is returned directly (the beq at
  0x31944 falls through), and a zero result calls madd at 0x31988 and returns its value. The delay slot of the
  madd call runs `xori a7,a7,0x1`, which flips a bit of a7, but the facts do not say what a7 holds, so the sign
  handling is an unknown sub-fact.
  Reviewed: 2026-11-12 (sonnet)

- `_madd_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x31998
  **Inferred.** Role (from name): a multiply-add on doubles. It calls breakout_and_test3_sd at 0x31a04; a
  nonzero result is returned directly (the beq at 0x31a0c falls through), and a zero result calls madd at 0x31a48
  and returns its value. The global at abs 0xffffffffffffc018 that it loads at 0x319a8 is an unknown sub-fact.
  Reviewed: 2026-11-12 (sonnet)

- `_sqrt_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x31a58
  **Inferred.** Role (from name): square root of a double. It calls breakout_and_test_sd at 0x31a7c and branches
  on the result (bne at 0x31a84). It reads the sym(EXP_INF) table at 0x31a98 and the sym(EXP_BIAS) table at
  0x31b6c. It calls fpstore_sd with an entry of the sym(QUIETNAN) table in a1 at 0x31c64 and 0x31d24, and passes
  sym(QUIETNAN) in a1 to post_sig at 0x31ad8 and 0x31ca8, each only when bit 0x800 of the word at +0x54c is set
  (beq at 0x31ad0 and 0x31ca0). It makes an indirect call at 0x31cd4 with an entry of the sym(renorm) table in
  a7 and calls fpstore_sd at 0x31d00. The indirect call at 0x31b20, with sym(round) in a6, is an unknown
  sub-fact.
  Reviewed: 2026-11-12 (sonnet)

- `_msub_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x31d44
  **Inferred.** Role (from name): a multiply-subtract on doubles with the same shape as the other three-operand
  wrappers. It calls breakout_and_test3_sd at 0x31db0; a nonzero result is returned directly (the beq at 0x31db8
  falls through), and a zero result calls madd at 0x31df8 and returns its value. The facts do not show the sign
  handling around the madd call, so it is an unknown sub-fact.
  Reviewed: 2026-11-12 (sonnet)

- `_cvts_d` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x31e08
  **Inferred.** Role (from name): converts a double to a single. It calls breakout_sd at 0x31e24 with a0 = 1,
  round_s at 0x31e5c and renorm_d at 0x31ed0 (with a4 = 1), and calls fpstore_s at 0x31f20, 0x31f44, 0x31f70
  and 0x31fac, each followed by store_fpcsr. The call at 0x31f44 has a0 = 0x7fbfffff, a NaN-shaped single
  pattern. The call at 0x31fac has a3 = 0x7f800000, the single-precision infinity pattern; the facts do not show
  the value it passes in a0. post_sig at 0x31eb0 is called only when bit 0x800 of the word at +0x54c is set (beq
  at 0x31ea8).
  Reviewed: 2026-11-12 (sonnet)

- `checkfp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x31fd0
  **Inferred.** Role (from name): checks floating-point state; the facts show only that it is bracketed by
  interrupt-level calls. It calls splhi at 0x31fdc and returns the value of splx at 0x32190, whose a0 is the
  splhi result. After splhi it loads the 64-bit word at abs 0xffffffffffffc4e8 (0x31fe8); the beq at 0x31ff4
  jumps to the splx call when that word is zero, and the bne at 0x31ffc jumps there when a0 differs from it.
  The body between the two calls makes no named call; it holds swc1 and sdc1 stores (0x32058 to 0x32158) and an
  sd at 0x32168. Where those stores go and what the body tests are unknown sub-facts.
  Reviewed: 2026-11-12 (sonnet)

- `fpunit_fpstore_s` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x34800
  **Inferred.** Role (from name): stores a single-precision value. It loads an entry at 0x34820 from a table
  whose address is built at 0x34800-0x34818 from a .rodata relocation with addend 55488, indexed by a1 times 8
  (shift at 0x34808), and tail-jumps through it at 0x34824 with a0 to a3 unchanged. The jump-table targets are
  unknown sub-facts, so the width and destination of each store case are unknown.
  Reviewed: 2026-11-12 (sonnet)

- `fpunit_fpstore_d` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x34f80
  **Inferred.** Role (from name): stores a double-precision value. The bne at 0x34f80 branches on a2. The a2 != 0
  path jumps to 0x34fb4, loads an entry at 0x34fd0 and tail-jumps through it at 0x34fd4 with a0 to a3
  unchanged. The other path loads an entry at 0x34fa8 from a table whose address is built from a .rodata
  relocation with addend 55848. The jump-table targets are unknown sub-facts.
  Reviewed: 2026-11-12 (sonnet)

- `longway` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x352a0
  **Inferred.** Role (from name): unknown; the name gives no hint. It reads a flag byte at abs
  0xffffffffffffc04f (lb at 0x352a0) and branches on its value (beq at 0x352a4 and 0x352ac, bnel at 0x352b4, bne
  at 0x352c4). It contains tail calls to keruliframe (0x352bc) and to ecommon (0x352e8, 0x35310, 0x35424,
  0x35468). On another path it reads the dump-in-progress word (lw at 0x353dc), writes the sym(ovflwword) word
  (sw at 0x35514), calls printf at 0x35534 and 0x35558 and panic at 0x3558c, and ends in a tail call to _baduk
  at 0x35594. It also executes byte stores at 0x35458 and 0x3552c. What selects each path is an unknown
  sub-fact.
  Reviewed: 2026-11-12 (sonnet)

- `stkovflw` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x35470
  **Inferred.** Role (from name): reports a stack overflow, which fits the shared tail it branches to. A 28-byte
  stub whose branch at 0x35484 jumps unconditionally into 0x354fc, the shared error tail that prints and calls
  panic (see stkscr3). The facts list no calls, loads or stores for the stub itself, so its setup before the
  branch is unknown.
  Reviewed: 2026-11-12 (sonnet)

- `stkundflw` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3548c
  **Inferred.** Role (from name): reports a stack underflow, which fits the shared tail it branches to. A 28-byte
  stub whose branch at 0x354a0 jumps unconditionally into 0x354fc, the shared print-and-panic tail (see
  stkscr3). The facts list no calls, loads or stores for the stub itself, so its setup before the branch is
  unknown.
  Reviewed: 2026-11-12 (sonnet)

- `stkscr1` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x354a8
  **Inferred.** Role (from name): a stack-check report. A 28-byte stub whose branch at 0x354bc jumps
  unconditionally into 0x354fc, the shared print-and-panic tail (see stkscr3). The facts list no calls, loads or
  stores for the stub itself, so its setup before the branch is unknown.
  Reviewed: 2026-11-12 (sonnet)

- `stkscr2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x354c4
  **Inferred.** Role (from name): a stack-check report. A 28-byte stub whose branch at 0x354d8 jumps
  unconditionally into 0x354fc, the shared print-and-panic tail (see stkscr3). The facts list no calls, loads or
  stores for the stub itself, so its setup before the branch is unknown.
  Reviewed: 2026-11-12 (sonnet)

- `stkscr3` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x354e0
  **Inferred.** Role (from name): the stack-check error tail. The stubs stkovflw, stkundflw, stkscr1 and stkscr2
  branch into the code at 0x354fc, and the first 28 bytes of stkscr3 itself (0x354e0 to 0x354f8) end with a
  branch to 0x354fc as well. From there it writes sym(ovflwword) at 0x35514 (sw), reads the flag byte at abs
  0xffffffffffffc04f (lb at 0x35520), stores a byte at 0x3552c, calls printf at 0x35534 and 0x35558, calls panic
  at 0x3558c with a0 = .data offset 20368, and ends with a tail call to _baduk at 0x35594.
  Reviewed: 2026-11-12 (sonnet)

- `_cvtd_s` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3559c
  **Inferred.** Role (from name): converts a single to a double. It calls breakout_sd at 0x355b8 with a0 = 0 and
  renorm_s at 0x35674, and calls fpstore_d at 0x35604, 0x356c8, 0x356ec, 0x35718 and 0x35730, each followed by
  store_fpcsr. The call at 0x356ec has a0 = 0x7ff7ffffffffffff, a NaN-shaped double pattern. The calls at 0x356c8
  and 0x35730 have a4 = 0x7ff0000000000000, the double infinity pattern; the facts do not show their a0 values.
  post_sig at 0x35654 is called only when bit 0x800 of the word at +0x54c is set (beq at 0x3564c), with
  a1 = 0x10000.
  Reviewed: 2026-11-12 (sonnet)

- `round_w` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x35748
  **Inferred.** Role (from name): rounds to a 32-bit word with saturation; the facts do not show the input
  format. It calls post_sig at 0x3581c and 0x35860 with a1 = 0xffffffff80000000 (the sign-extended 32-bit
  minimum), the first only when bit 0x800 and the second only when bit 0x80 of the word at +0x54c is set (beq at
  0x35814 and 0x35858). It calls fpstore_s at 0x35878 and 0x3589c; the call at 0x3589c has a0 = 0x7fffffff, the
  32-bit maximum. The rounding step itself is an unknown sub-fact.
  Reviewed: 2026-11-12 (sonnet)

- `round_s` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x358ac
  **Inferred.** Role (from name): rounds a double to a single-precision result. It loads from a .data table at
  offset 20408 (lwu at 0x35c9c; an entry of it is passed as a0 to fpstore_s at 0x35e64) and does a byte-table
  lookup (lb +1 at 0x35dbc). It calls post_sig at 0x359ac, 0x35b88, 0x35ca0, 0x35e00, 0x35e3c and 0x35f34, and
  fpstore_s at 0x35a60, 0x35bc0, 0x35ce0, 0x35d8c, 0x35e64 and 0x35fe0. The per-rounding-mode case mapping and
  what the byte lookup selects are unknown sub-facts.
  Reviewed: 2026-11-12 (sonnet)

- `maddrnd_s` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x36074
  **Inferred.** Role (from name): a single-precision multiply-add with rounding. It calls post_sig at 0x36164,
  0x3630c, 0x36364, 0x363a0, 0x36450 and 0x36480. It loads from the same .data table at offset 20408 that
  round_s uses (lwu at 0x36300), and the return at 0x36190 returns either that table entry or an unknown value.
  The rounding decision is an unknown sub-fact.
  Reviewed: 2026-11-12 (sonnet)

- `round_l` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x365c4
  **Inferred.** Role (from name): rounds a double to a 64-bit integer. It calls post_sig at 0x36678 with
  a6 = 0x8000000000000000 (the 64-bit minimum) only when bit 0x80 of the word at +0x54c is set (beq at 0x36670).
  It calls fpstore_d at 0x36690 and store_fpcsr at 0x36698, and the return at 0x366a4 returns the store_fpcsr
  result. The rounding decision is an unknown sub-fact.
  Reviewed: 2026-11-12 (sonnet)

- `round_d` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x366ac
  **Inferred.** Role (from name): rounds a double to a double-format result. It does a byte-table lookup (lb +1
  at 0x36b9c) and loads an entry from a .data table at offset 20440 (ld at 0x36a88), which is passed as a0 to
  fpstore_d at 0x36c44. It calls fpstore_d at 0x3683c, 0x369a4, 0x36ac4, 0x36b68, 0x36c44 and 0x36dd4, and
  post_sig at 0x36788, 0x36974, 0x36a8c, 0x36be0, 0x36c1c and 0x36d24. The rounding-mode mapping and what the
  byte lookup selects are unknown sub-facts.
  Reviewed: 2026-11-12 (sonnet)
