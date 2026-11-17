# Readings: `usr/cpu/sysgen/IP35boot/gfxs.a(klconfig.o)`

One entry per routine, filed here from the reading batches by binary.

- `prom_has_vga_support` in `usr/cpu/sysgen/IP35boot/gfxs.a(klconfig.o)` at 0x330
  **Inferred.** Loads a word from the fixed address 0x90000000180000a0 (0x338) and a second word at 0x33c whose address the facts do not render. It returns 1 at 0x354 only when the first word is at least 6 (unsigned, branch at 0x344) and the second tests as zero (branch at 0x34c), and returns 0 at 0x360 otherwise. Role (from name): reports VGA support. The meaning of the two words is not in the facts.
  Reviewed: 2026-11-12

- `prom_has_vga_support` in `usr/cpu/sysgen/IP35boot/gfxs.a(klconfig.o)` at 0x330
  **Inferred.** It loads the word at abs 0x90000000180000a0 [@0x338] and the word at abs 0x90000000180000a4 [@0x33c]. The branch at 0x344 is taken when the first word is below 6 [@0x344 taken], and that path returns 0x0 at 0x360 [@0x360]. The branch at 0x34c is taken when the second word is below 0xab [@0x34c taken nonzero], which also returns 0x0. When that branch is not taken it returns 0x1 at 0x354 [@0x34c fall zero] [@0x354].
  Role (from facts): a yes-or-no test that answers 1 only when the first firmware word is 6 or more and the second is 0xab or more [@0x344] [@0x34c] [@0x354].
  Reviewed: 2026-11-12

- `klcheck_vga` in `usr/cpu/sysgen/IP35boot/gfxs.a(klconfig.o)` at 0xafc
  **Inferred.** Computes a byte address as a0 + (a1 << 12) + (a2 << 8). It loads a word at +0x20008 (`lw` at 0xb14) and a byte at +0x20007 (`lbu` at 0xb40). It compares a6 with 3 (branch at 0xb24) and a5 with 0 (branch at 0xb2c), returns 0 at 0xb38 on one path, and on the other returns the computed address plus 0x20000 at 0xb48 with a byte store (`sb`) at +0x20007 at 0xb4c. The fields it reads are not identified by the facts.
  Reviewed: 2026-11-12

- `klcheck_vga` in `usr/cpu/sysgen/IP35boot/gfxs.a(klconfig.o)` at 0xafc
  **Inferred.** Computes an address from a0 plus (a1 << 12) plus (a2 << 8). It loads a word at +0x20008 (0xb14) and a byte at +0x20007 (0xb40). It tests a6 against 3 at 0xb24 and a5 against zero at 0xb2c. One path returns 0 at 0xb38; the other returns that address plus 0x20000 at 0xb48, and a byte store to +0x20007 at 0xb4c follows directly after that return, so it may be the return's delay slot and not a conditional update. The facts do not show the stored value. Role (from name): a VGA presence check in the configuration table.
  Reviewed: 2026-11-12

- `klcheck_vga` in `usr/cpu/sysgen/IP35boot/gfxs.a(klconfig.o)` at 0xafc
  **Inferred.** It loads the word at +0x20008 of the record at a0 + (a1 << 0xc) + (a2 << 0x8) [@0xb14]. The branch at 0xb24 is taken when the top byte of that word is not 3 [@0xb24 taken], and the branch at 0xb2c is taken when the next byte down is zero [@0xb2c taken zero]. It returns 0x0 at 0xb38 when the top byte is not 3 [@0xb24 taken] or the next byte is nonzero [@0xb2c fall nonzero] [@0xb38]. When the top byte is 3 [@0xb24 fall] and the next byte is zero [@0xb2c taken zero] it reads the byte at +0x20007 [@0xb40], stores a byte back to the record [@0xb4c] and returns the record address plus 0x20000 [@0xb48].
  Role (from facts): a check on one indexed record that, when its top byte is 3 [@0xb24 fall] and the next byte is zero [@0xb2c taken zero], modifies a byte of the record in place and returns the record's address plus 0x20000, and otherwise returns 0 [@0xb14] [@0xb4c] [@0xb48] [@0xb38].
  Reviewed: 2026-11-12
