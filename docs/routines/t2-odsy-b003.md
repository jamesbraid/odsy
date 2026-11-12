# Tier-2 routine roles, odsy batch 3

Ranked targets 76 to 100 of the located list. Each role below comes from the rendered facts of the build under root/ (offsets, callees, constants and branch targets). Every role is inferred. Where the facts stop short of the meaning, the entry says so.

- `proc1` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b98
  **Inferred.** A 24-byte routine with no calls and one memory effect: the `sb` at 0x1ba4 stores one byte to the fixed address 0xffffffffffffc04f. The facts do not show what that address holds, so the only firm reading is that single store.
  Reviewed: 2026-11-12 (sonnet)

- `icode` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1c60
  **Inferred.** The `sw` at 0x1ce0 stores a word at offset 0 from a base the facts do not show. The `b` at 0x1cf4 (a `beq` on the zero register, always taken) branches to itself, so the routine never returns once it reaches that loop. The name suggests an early boot stub, but nothing in the facts shows that, and the instruction at 0x1cfc is not reached from the entry.
  Reviewed: 2026-11-12 (sonnet)

- `eicode` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1cfc
  **Inferred.** A 4-byte block with no branch, call or memory access of its own in the facts. It lies inside the range of icode (0x1c60 to 0x1d00), so it probably marks the end of that routine, but the facts give only its size and place.
  Reviewed: 2026-11-12 (sonnet)

- `getsysid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x690c
  **Inferred.** It zeroes 0x40 bytes at its first argument with the `jal` to bzero at 0x691c, then loads a halfword through nasid_to_compact_node indexed by master_nasid at 0x6938, and calls cmoduleid_lookup at 0x6934 and get_kmod_sys_snum at 0x6940. On the nonzero path from the `beq` at 0x694c it calls printf at 0x6958, and the return at 0x6970 yields either the get_kmod_sys_snum result or 0. The name suggests it reports a system id, which fits these calls, but the facts do not say what the returned value means.
  Reviewed: 2026-11-12 (sonnet)

- `copyin` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7420
  **Inferred.** The `bne` at 0x7434 on the byte at -0x3fe0 +0x70 and the `beq` at 0x7440 on the doubleword at +0x348 send the copy to do_ucopy_copyin at 0x7448 only when the byte is 1 and that doubleword is nonzero. Otherwise it runs the bounds checks (the `bltz` branches at 0x7458 and 0x7460 test a2 and a0 for sign, and the `bne` at 0x7478 compares 0x100000000000 with a0 plus a2) and then calls bcopy at 0x7488. It returns 0 at 0x74a4, and the failure branches all go to 0x7674, the same target that copyout, swcopyin, swcopyout and uzero use.
  Reviewed: 2026-11-12 (sonnet)

- `copyout` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x74ac
  **Inferred.** The same shape as copyin: the byte test at 0x74c0 and the doubleword test at 0x74cc choose do_ucopy_copyout at 0x74d4, and otherwise the bounds checks run and bcopy is called at 0x7514. The checks differ only in the registers, testing a2 and a1 for sign (0x74e4, 0x74ec) and comparing 0x100000000000 with a1 plus a2 at 0x7504. It returns 0 at 0x7530 and fails to 0x7674.
  Reviewed: 2026-11-12 (sonnet)

- `swcopyin` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7538
  **Inferred.** It has no byte or doubleword test of the kind copyin makes. It does the same sign checks on a2 and a0 (0x753c, 0x7544) and the limit compare at 0x755c, then delegates the copy to swbcopy at 0x756c. It loads a doubleword (`ld`) at 0x7564 and 0x7574, stores a halfword at +0xf6 at 0x7570 and 0x757c, and returns 0 at 0x7588.
  Reviewed: 2026-11-12 (sonnet)

- `swcopyout` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7590
  **Inferred.** The mirror of swcopyin: sign checks on a2 and a1 (0x7594, 0x759c), a limit compare on a1 plus a2 at 0x75b4, and a call to swbcopy at 0x75c4. It loads a doubleword (`ld`) at 0x75bc and 0x75cc, stores a halfword at +0xf6 at 0x75c8 and 0x75d4, and returns 0 at 0x75e0.
  Reviewed: 2026-11-12 (sonnet)

- `uzero` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x75e8
  **Inferred.** Role (from name): zero a user range of a1 bytes at a0. The facts show the same kinds of guards as copyout, on a1 and a0 instead of a2 and a1: sign checks at 0x7620 and 0x7628, and a limit compare of a0 plus a1 at 0x7640 against 0x100000000000. The byte test at 0x75fc and the doubleword test at 0x7608 lead to do_ucopy_zero at 0x7610 only when the byte is 1 and the doubleword is nonzero; otherwise the guards run and bzero is called at 0x7650 with a0 and a1 as its first two arguments. It returns 0 at 0x766c.
  Reviewed: 2026-11-12 (sonnet)

- `memset` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7688
  **Inferred.** It returns at 0x7794 with v0 equal to a0, and returns at once when a2 is zero (the `beq` at 0x7688). Otherwise it dispatches on the low bits of a0 (five tests from 0x76b0 to 0x76e0, masking 0x1f, 0xf, 0x7, 0x3 and 0x1) and stores with `sb` at 0x76ec, `sh` at 0x7708, `sw` at 0x7724 and seven `sd` instructions, in loops bounded by a2. The stored value is not visible in the facts. Role (from name): fill memory; the facts show only the stores and the return of a0.
  Reviewed: 2026-11-12 (sonnet)

- `bzero_pref` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x77d8
  **Inferred.** It makes no calls. Doubleword stores go to a0 at -0x8, +0x0 and +0x8 (0x77e0, 0x77f0, 0x77f4), and one more sd at 0x7804 and an sdr at 0x781c, the unaligned right-half store, complete the block. The `beq` at 0x77e8 on a1 bit 0x10 picks a path, and the returns at 0x7818 and 0x7838 give values the facts do not name. The pref suffix in the name is not explained by any instruction listed here.
  Reviewed: 2026-11-12 (sonnet)

- `addupc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7a0c
  **Inferred.** It reads four fields of the structure at a1 (+0x0, +0x8, +0x10, +0x18), loads and tests the word at +0x18 against 2 (0x7a24), and runs a bounds check of v0 against the word at a1+8 (0x7a64). It updates counters with ll/sc pairs at 0x7a98 and 0x7adc and stores halfwords at +0xf6 of the structure at -0x3fe0, then returns 0 at 0x7af4 or -1 at 0x7afc. The name suggests adding user PC samples into a histogram, which fits the bounds check and the atomic adds, but the facts do not name the fields.
  Reviewed: 2026-11-12 (sonnet)

- `adderr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7b04
  **Inferred.** A 12-byte leaf with no call and no branch: the `sw` at 0x7b0c stores a word at a1 +0x18, and it returns 0 at 0x7b08. The field it writes is the same +0x18 that addupc reads at 0x7a1c and tests at 0x7a24. The facts do not show what value is written.
  Reviewed: 2026-11-12 (sonnet)

- `upath` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7b2c
  **Inferred.** It rejects a negative a0 by branching to 0x7ccc (the `bltz` at 0x7b2c). Otherwise it runs a byte copy loop: the `lbu` at 0x7b40 and `sb` at 0x7b4c repeat while a2 is nonzero (the `bne` at 0x7b54), and the `beq` at 0x7b48 on v0 leaves early. The routine stores a halfword at +0xf6 of the structure at -0x3fe0 at 0x7b38 and 0x7b6c, and returns -0x2 or a value the facts do not name at 0x7b68.
  Reviewed: 2026-11-12 (sonnet)

- `sfu32v` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7bb0
  **Inferred.** A loop that reads a word at 0x7bc0 and writes it at 0x7bc8 while a3 is nonzero (the `bne` at 0x7bd0), and returns 1 at 0x7bdc. It rejects a negative a1 with a branch to 0x7c24, the start of suerror. The pointers used by the loop are not named in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `sfu32` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7be4
  **Inferred.** It reads one word at a1 +0x0 (0x7bf4) and returns it at 0x7bfc. A negative a1 branches to 0x7c24 (suerror). It stores halfwords at +0xf6 of the structure at -0x3fe0 at 0x7bf0 and 0x7bf8, on either side of the load.
  Reviewed: 2026-11-12 (sonnet)

- `spu32` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7c04
  **Inferred.** The counterpart of sfu32: it writes one word to a1 +0x0 (0x7c14) and returns 1 at 0x7c1c. A negative a1 branches to 0x7c24 (suerror), and it stores halfwords at +0xf6 of the structure at -0x3fe0 at 0x7c10 and 0x7c18.
  Reviewed: 2026-11-12 (sonnet)

- `suerror` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7c24
  **Inferred.** A 16-byte routine with no branch or call: it stores a word to a0 +0x0 at 0x7c30 and returns 0 at 0x7c2c. Three neighbouring access routines branch here for a negative address, which suggests an error path, but the stored value and its meaning are not visible in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `fulong` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7c34
  **Inferred.** It loads a doubleword at a0 +0x0 (0x7c44) and returns it at 0x7c4c, after a sign check on a0 that branches to 0x7ccc. It also stores halfwords at +0xf6 of the structure at -0x3fe0 at 0x7c40 and 0x7c48.
  Reviewed: 2026-11-12 (sonnet)

- `suhalf` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7c74
  **Inferred.** It stores a halfword to a0 +0x0 at 0x7c84 and returns 0 at 0x7c8c. A negative a0 branches to 0x7ccc, and it stores halfwords at +0xf6 of the structure at -0x3fe0 at 0x7c80 and 0x7c88.
  Reviewed: 2026-11-12 (sonnet)

- `sulong` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7c94
  **Inferred.** It stores a doubleword to a0 +0x0 at 0x7ca4 and returns 0 at 0x7cac. A negative a0 branches to 0x7ccc, and it stores halfwords at +0xf6 of the structure at -0x3fe0 at 0x7ca0 and 0x7ca8. It has the same shape as suhalf at a doubleword width.
  Reviewed: 2026-11-12 (sonnet)

- `fkiword` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7cb4
  **Inferred.** It loads a word from a0 +0x0 (0x7cbc) and returns it at 0x7cc4. It stores words to the fixed address 0xffffffffffffc48c at 0x7cb8 and 0x7cc0, on either side of the load. That address is not the -0x3fe0 block the neighbouring routines use, and the facts do not say what it is.
  Reviewed: 2026-11-12 (sonnet)

- `strlen` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7cd4
  **Inferred.** A byte loop: `lb` at 0x7cd8 repeats while the byte is nonzero (the `bne` at 0x7ce0). The loop shape matches the name, but the register that holds the count at the return at 0x7cec is not named in the facts (v0 is shown only as unknown).
  Reviewed: 2026-11-12 (sonnet)

- `uload_word` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7cf4
  **Inferred.** It loads a word from a0 with the unaligned pair `lwl` at 0x7d00 and `lwr` at 0x7d04 (the second reads from a0 +0x3), stores a doubleword at a1 +0x0 with the sd at 0x7d0c, and returns 0 at 0x7d10. It also stores halfwords at +0xf6 of the structure at -0x3fe0 at 0x7cfc and 0x7d08. The facts do not show whether the stored doubleword is sign-extended.
  Reviewed: 2026-11-12 (sonnet)

- `uload_half` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7d18
  **Inferred.** It reads a halfword from a0 using two byte loads, a signed `lb` at a0 +0x0 (0x7d24) and an unsigned `lbu` at a0 +0x1 (0x7d28). It stores a doubleword at a1 +0x0 with the sd at 0x7d38 and returns 0 at 0x7d3c. The facts list the two byte loads but not the shift and combine that would form the halfword, so the byte order and the result's sign are not established.
  Reviewed: 2026-11-12 (sonnet)
