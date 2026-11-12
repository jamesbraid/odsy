# odsy kernel floating-point routine readings, batch 2

Role entries for the floating-point helpers in the IP35boot kernel object. Each role comes from the
rendered instruction facts of that routine: its calls, branches, constants and table reads. Sub-facts the
facts leave open are marked unknown.

- `_cvtsd_w` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3114c
  **Inferred.** Converts a word to a double, by the shape of the code: it normalises the value through
  renorm_d at 0x31180, looks up a rounding entry in the sym(round) table at 0x31194, and writes the result
  with fpstore_sd at 0x311d8 before store_fpcsr at 0x311e0. The branch on a1 at 0x31164 selects between the
  two store paths. The name points the same way. The indirect callee at 0x311a8 is an unknown sub-fact.

- `_nmsub_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x311f0
  **Inferred.** Runs a negated multiply-subtract on doubles. It calls breakout_and_test3_sd at 0x3125c with
  the operands on the stack. A nonzero result is returned as is (beq at 0x31264), and a zero result sends
  control to madd at 0x312a4, whose value is returned. The sign handling around the madd call is an unknown
  sub-fact; it may sit inside madd.

- `_cvtw_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x312b4
  **Inferred.** Converts a double to a 32-bit word with rounding and saturation. It splits the operand with
  breakout_sd at 0x312d8, rounds through round_w at 0x313b4, and reads the exponent limits from the
  EXP_BIAS table at 0x312ec. It writes the result with fpstore_s at 0x31420 and 0x31458; the constant
  0x7fffffff on one path and 0x0 on the other look like the saturation maximum and zero. Overflow is
  reported through post_sig at 0x31338. The indirect call at 0x313e0 through the renorm table is an unknown
  sub-fact.

- `_cvtl_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x31470
  **Inferred.** Converts a double to a 64-bit integer with rounding and saturation. It splits the operand with
  breakout_sd at 0x31494, rounds with round_l at 0x31564, and reports invalid results through post_sig at
  0x3150c. The three result stores at 0x3161c, 0x31640 and 0x31678 write 0x8000000000000000,
  0x7fffffffffffffff and 0, the 64-bit minimum, maximum and zero.

- `_comp_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x31690
  **Inferred.** Compares two doubles and reports the outcome through the FP status word. It reads the sign,
  exponent and fraction shifts and masks (sym(SIGN_SHIFT), sym(EXP_SHIFT), sym(FRAC_MASK), sym(EXP_MASK),
  sym(EXP_NAN)) to classify each operand, tests the signaling-NaN bit against sym(SNANBIT_MASK) at 0x31784
  and 0x317a0, and signals an invalid operation through post_sig at 0x317dc. The status is stored through
  store_fpcsr at 0x317e4 and 0x31844. The predicate chosen by the low bit of a3 at 0x31754 is an unknown
  sub-fact.

- `_nmadd_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x318d0
  **Inferred.** Runs a negated multiply-add on doubles with the same three-operand shape as the other
  wrappers. It calls breakout_and_test3_sd at 0x3193c; a nonzero result is returned directly (beq at
  0x31944), and a zero result calls madd at 0x31988 and returns its value. The name implies negation. The delay
  slot of the madd call runs `xori a7,a7,0x1`, which flips a bit of a7, but the facts do not say what a7 holds, so
  the sign handling is an unknown sub-fact.

- `_madd_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x31998
  **Inferred.** Runs a multiply-add on doubles. It calls breakout_and_test3_sd at 0x31a04; a nonzero result
  is returned directly (beq at 0x31a0c), and a zero result calls madd at 0x31a48 and returns its value. The
  global at abs 0xffffffffffffc018 that it loads at 0x319a8 is an unknown sub-fact.

- `_sqrt_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x31a58
  **Inferred.** Takes the square root of a double. It classifies the operand with breakout_and_test_sd at
  0x31a7c and the sym(EXP_INF) and sym(EXP_BIAS) tables (0x31a98, 0x31b6c). Special operands store the quiet
  NaN from sym(QUIETNAN) through fpstore_sd at 0x31c64, with post_sig at 0x31ad8. The normal result is
  normalised with the renorm table entry, called indirectly at 0x31cd4, and stored through fpstore_sd at
  0x31d00. The indirect call at 0x31b20 through sym(round) is an unknown sub-fact.

- `_msub_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x31d44
  **Inferred.** Runs a multiply-subtract on doubles with the same shape as the other three-operand wrappers.
  It calls breakout_and_test3_sd at 0x31db0; a nonzero result is returned directly (beq at 0x31db8), and a
  zero result calls madd at 0x31df8 and returns its value. The name implies subtraction, but no negation of
  the addend is visible, so the sign handling is an unknown sub-fact.

- `_cvts_d` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x31e08
  **Inferred.** Converts a double to a single. It splits the operand with breakout_sd at 0x31e24, rounds
  through round_s at 0x31e5c, normalises with renorm_d at 0x31ed0, and stores the single through fpstore_s
  at 0x31f20, 0x31f44, 0x31f70 and 0x31fac. The store at 0x31fac writes the single infinity pattern
  0x7f800000, and the store at 0x31f44 writes 0x7fbfffff, a NaN-shaped pattern.

- `checkfp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x31fd0
  **Inferred.** Wraps a body in an interrupt-level pair. It raises the level with splhi at 0x31fdc, saves a
  64-bit kernel global at abs 0xffffffffffffc4e8 (ld at 0x31fe8, written back by sd at 0x32168), and returns
  the value of splx at 0x32190. The body between those points makes no named call, so what it tests is an
  unknown sub-fact.

- `fpunit_fpstore_s` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x34800
  **Inferred.** Dispatches a store request on a1. It loads an entry from the .rodata table at offset 55488,
  indexed by a1 times 8 (0x34820), and jumps through it at 0x34824. The successors of that jump table are
  unknown sub-facts, so the width and destination of each store case are unknown.

- `fpunit_fpstore_d` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x34f80
  **Inferred.** Dispatches a double store request. It branches on a2 (bne at 0x34f80), loads a table base at
  .rodata offset 55848 (0x34fa8), and loads an entry indexed by a1 (0x34fd0) to jump through at 0x34fd4. The
  successors of both jump tables are unknown sub-facts.

- `longway` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x352a0
  **Inferred.** An error path that reports and halts. It reads the dump-in-progress word (lw at 0x353dc),
  sets the sym(ovflwword) word (sw at 0x35514), prints two messages with printf at 0x35534 and 0x35558, and
  calls panic at 0x3558c. It also keeps a flag byte at abs 0xffffffffffffc04f (sb at 0x35458 and 0x3552c).
  What triggers the path is an unknown sub-fact.

- `stkovflw` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x35470
  **Inferred.** A 28-byte stack-check stub. Its only instruction is an always-taken branch at 0x35484 into
  0x354fc, the shared error tail of stkscr3 that prints and calls panic. The name suggests a stack overflow
  report, which fits that tail.

- `stkundflw` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3548c
  **Inferred.** A 28-byte stack-check stub. Its only instruction is an always-taken branch at 0x354a0 into
  0x354fc, the shared print-and-panic tail of stkscr3. The name suggests a stack underflow report, which fits
  that tail.

- `stkscr1` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x354a8
  **Inferred.** A 28-byte stack-check stub. Its only instruction is an always-taken branch at 0x354bc into
  0x354fc, the shared print-and-panic tail of stkscr3. The name suggests a stack-check report, and the stub
  carries no other facts.

- `stkscr2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x354c4
  **Inferred.** A 28-byte stack-check stub. Its only instruction is an always-taken branch at 0x354d8 into
  0x354fc, the shared print-and-panic tail of stkscr3. The name suggests a stack-check report, and the stub
  carries no other facts.

- `stkscr3` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x354e0
  **Inferred.** The shared stack-check error tail for the four stubs before it. It writes sym(ovflwword) at
  0x35514, reads and writes the flag byte at abs 0xffffffffffffc04f (0x35520, 0x3552c), prints with printf at
  0x35534 and 0x35558, and calls panic at 0x3558c with the message at .data offset 20368. It ends with a jump
  to _baduk at 0x35594. The stubs branch into the code at 0x354fc.

- `_cvtd_s` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3559c
  **Inferred.** Converts a single to a double. It splits the operand with breakout_sd at 0x355b8 with
  argument 0, and renormalises with renorm_s at 0x35674. The
  results go through fpstore_d at 0x35604 and later stores. The double infinity 0x7ff0000000000000 is stored
  at 0x356c8 and 0x35730, and the NaN pattern 0x7ff7ffffffffffff at 0x356ec. post_sig at 0x35654 reports
  the invalid path.

- `round_w` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x35748
  **Inferred.** Rounds a single to a 32-bit word with saturation. It reports invalid results through post_sig
  at 0x3581c and 0x35860, passing the sign-extended 32-bit minimum 0xffffffff80000000, and stores single
  results with fpstore_s at 0x35878 and 0x3589c. The store at 0x3589c writes 0x7fffffff, the 32-bit maximum.
  The rounding step itself is an unknown sub-fact.

- `round_s` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x358ac
  **Inferred.** Rounds a double to a single-precision result. It reads a .data table at offset 20408 (lwu at
  0x35c9c) and a round_bit lookup (lb at 0x35dbc) to choose the rounding action. It reports exceptional
  results through post_sig at 0x359ac, 0x35b88, 0x35ca0, 0x35e00, 0x35e3c and 0x35f34, and stores singles
  through fpstore_s at 0x35a60, 0x35bc0, 0x35ce0, 0x35d8c, 0x35e64 and 0x35fe0. The per-rounding-mode case
  mapping is an unknown sub-fact.

- `maddrnd_s` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x36074
  **Inferred.** A single-precision multiply-add with rounding. It reports exceptional results through
  post_sig at 0x36164, 0x3630c, 0x36364, 0x363a0, 0x36450 and 0x36480, and reads the same .data table at
  offset 20408 that round_s uses (lwu at 0x36300). It returns the table entry or an unknown value at 0x36190.
  The rounding decision is an unknown sub-fact.

- `round_l` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x365c4
  **Inferred.** Rounds a double to a 64-bit integer. Its invalid-result path calls post_sig at 0x36678 with
  the 64-bit minimum 0x8000000000000000. The result is stored through fpstore_d at 0x36690 and the status
  through store_fpcsr at 0x36698. The rounding decision is an unknown sub-fact.

- `round_d` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x366ac
  **Inferred.** Rounds a double to a double-format result, which the name suggests is a round-to-integer
  operation. It looks up a round_bit entry (lb at 0x36b9c) and a .data entry at offset 20440 (ld at 0x36a88,
  stored at 0x36c44). It stores results through fpstore_d at 0x3683c, 0x369a4, 0x36ac4, 0x36b68, 0x36c44 and
  0x36dd4, and reports exceptional values through post_sig at 0x36788, 0x36974, 0x36a8c, 0x36c1c and 0x36d24.
  The rounding-mode mapping is an unknown sub-fact.
