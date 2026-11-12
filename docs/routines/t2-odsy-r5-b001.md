# Routine readings, odsy round r5 batch 1

Role statements for 24 routines in the IP35 kernel object `usr/cpu/sysgen/IP35boot/kernel.o`. Each statement cites the rendered facts for its routine: instructions, calls, branch sides and return values. These describe software behavior, not hardware behavior. Where the facts show only a return and no body, the role comes from the routine's name and is labelled as such.

- `_c_hinv` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x107d8
  **Inferred.** Tests a0 below 1 (unsigned) and branches to 0x1080c when so [@0x107e4 taken]. Otherwise it tests a0 against 1 and branches to 0x10818 when they are equal [@0x107ec taken]. All three arms reach the return at 0x10804, which gives v0 as 0 or an unknown value [@0x10804].
  Role (from facts): a case on a0 for the values 0 and 1 [@0x107e4 taken] [@0x107ec taken], with every arm leaving through the return at 0x10804 [@0x10804].
  Reviewed: 2026-11-12

- `_write_tag` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x109c0
  **Inferred.** Loads a word through a2 at entry with no offset [@0x109c0]. It tests a0 below 1 (unsigned) and branches to 0x109ec when so [@0x109d0 taken], and tests a0 against 1 with a branch to 0x109f8 when they are equal [@0x109d8 taken]. All three arms lead to the return at 0x109e4, which gives v0 unknown [@0x109e4].
  Role (from facts): reads one word through a2 [@0x109c0] and then selects on a0 against 0 and 1 [@0x109d0 taken] [@0x109d8 taken].
  Reviewed: 2026-11-12

- `__prefetch_load` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10d64
  **Inferred.** Returns at once when a1 is at most zero (signed) [@0x10d64 taken]. Otherwise a backward branch on a1 at or above zero (signed) repeats the loop body [@0x10d84 taken]. The return at 0x10d8c gives v0 unknown [@0x10d8c].
  Role (from facts): a count loop on a1 that exits to the return at 0x10d8c [@0x10d84 taken].
  Reviewed: 2026-11-12

- `earlynofault` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2068c
  **Inferred.** Compares a1 with 0x1c and branches to 0x2069c when they are equal [@0x20690 taken]. The return at 0x2069c gives 1 when that branch is taken and 0 when it falls through, because the delay slot sets v0 to 1 and only the fall-through path sets it to 0 [@0x2069c] [@0x20690 taken].
  Role (from facts): a predicate that returns 1 exactly when a1 equals 0x1c [@0x20690 taken] [@0x2069c].
  Reviewed: 2026-11-12

- `getsr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21cb0
  **Inferred.** The facts show one return, at 0x21cb4, with v0 unknown [@0x21cb4].
  Role (from name): reads the processor status register and returns its value.
  Reviewed: 2026-11-12

- `setsr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21cbc
  **Inferred.** The facts show one return, at 0x21cc4, with v0 unknown [@0x21cc4].
  Role (from name): writes the processor status register from its argument; the disassembly shows the argument ORed with 0xa0 before the write.
  Reviewed: 2026-11-12

- `getcause` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21cf0
  **Inferred.** The facts show one return, at 0x21cf4, with v0 unknown [@0x21cf4].
  Role (from name): reads the exception cause register and returns it.
  Reviewed: 2026-11-12

- `setcause` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21cfc
  **Inferred.** The facts show one return, at 0x21d00, with v0 unknown [@0x21d00].
  Role (from name): writes the exception cause register from its argument.
  Reviewed: 2026-11-12

- `getbadvaddr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d08
  **Inferred.** The facts show one return, at 0x21d0c, with v0 unknown [@0x21d0c].
  Role (from name): reads the bad virtual address register and returns it.
  Reviewed: 2026-11-12

- `get_sr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d14
  **Inferred.** The facts show one return, at 0x21d18, with v0 unknown [@0x21d18].
  Role (from name): reads the processor status register under a second name.
  Reviewed: 2026-11-12

- `set_sr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d20
  **Inferred.** The facts show one return, at 0x21d24, with v0 unknown [@0x21d24].
  Role (from name): writes the processor status register under a second name.
  Reviewed: 2026-11-12

- `get_lladdr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d2c
  **Inferred.** The facts show one return, at 0x21d30, with v0 unknown [@0x21d30].
  Role (from name): reads the load-linked address register and returns it.
  Reviewed: 2026-11-12

- `set_lladdr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d38
  **Inferred.** The facts show one return, at 0x21d3c, with v0 unknown [@0x21d3c].
  Role (from name): writes the load-linked address register from its argument.
  Reviewed: 2026-11-12

- `do_sync_instruction` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d44
  **Inferred.** The facts show one return, at 0x21d48, with v0 unknown [@0x21d48].
  Role (from name): executes a sync instruction, which completes earlier loads and stores before later ones.
  Reviewed: 2026-11-12

- `siron` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d50
  **Inferred.** The facts show one return, at 0x21d70, with v0 unknown [@0x21d70].
  Role (from name): requests software interrupts: the disassembly shows it ORing its argument into the cause register, with the status register reduced to its 0x100a4 bits during the update, and returning the earlier status value in v0 (restored in the return delay slot).
  Reviewed: 2026-11-12

- `siroff` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d78
  **Inferred.** The facts show one return, at 0x21d9c, with v0 unknown [@0x21d9c].
  Role (from name): withdraws software interrupt requests: the disassembly shows it clearing the bits of its argument in the cause register, with the status register reduced to its 0x100a4 bits during the update, and returning the earlier status value in v0 (restored in the return delay slot).
  Reviewed: 2026-11-12

- `flushbus` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21da4
  **Inferred.** The facts show one return, at 0x21dac, with v0 unknown [@0x21dac].
  Role (from name): flushes pending bus writes; the body is one sync instruction, a nop and the return.
  Reviewed: 2026-11-12

- `wbflush` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21db4
  **Inferred.** The facts show one return, at 0x21db4, with v0 unknown [@0x21db4].
  Role (from name): flush the write buffer; the body is only the return, so it does nothing here.
  Reviewed: 2026-11-12

- `splecc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21eb4
  **Inferred.** The facts show one return, at 0x21ecc, with v0 unknown [@0x21ecc].
  Role (from name): changes the interrupt level for ECC handling, in the style of the other spl routines; the disassembly shows it keeping bits 0xa4 of the status register, setting bits 0x10001 and writing it back, and returning the earlier status value in v0.
  Reviewed: 2026-11-12

- `exception` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23580
  **Inferred.** Tests bit 0 of a flag word loaded into k0 and branches to 0x237a0 when that bit is clear [@0x23588 taken]. When that bit is set it calls getpc [call 1, @0x23588 fall], then stores 8 bytes at offsets +0x0 to +0x120 in the save block addressed through [-0x3000]:8 [@0x235b0] [@0x2366c]. It reloads the flag word and tests bit 1, branching to 0x23780 when that bit is clear [@0x235fc taken], then tests bit 2 with the same branch [@0x23678 taken]. It calls bcopy [call 2] on one path. At 0x237a0 it masks the cause register's exception code field and makes direct jumps to systrap [call 3, @0x237b0 fall], kmiss [call 4, @0x237d0 taken], longway [call 5, @0x237e0 fall], intrnorm [call 6, @0x237fc taken], handle_intr_wgflush [call 7, @0x237fc fall], handle_brkpt [call 8, @0x237e0 taken] and handle_watch [call 9, @0x237d8 taken].
  Role (from name): the general exception entry point.
  Role (from facts): saves state into a register block [@0x235b0], then branches on bits of k0 [@0x23588 taken] and hands off to one of the handlers [call 3] through [call 9].
  Reviewed: 2026-11-12

- `handle_watch` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23908
  **Inferred.** Loads a halfword from a fixed slot [@0x23908] and stores the word 1 into the flag_at_kernelbp array at that index [@0x23930]. It loads the doubleword pointer at sym(debugger_update) [@0x23938]. When that pointer is nonzero it loads the doubleword at sym(debugger_stopped) [@0x23948] and stores it through the pointer [@0x2393c fall nonzero] [@0x2394c]. It then loads a doubleword pointer from 0xa800000000001020 [@0x2395c] and a doubleword at offset +8 from it [@0x23968], and branches to 0x237e8 when the first or the second is zero [@0x23960 taken] [@0x2396c taken]. It ends in an indirect jump through the second value [call 1].
  Role (from name): the watchpoint handler.
  Role (from facts): marks its index in flag_at_kernelbp [@0x23930], copies the debugger_stopped value through the debugger_update pointer [@0x2394c] [@0x2393c fall nonzero], then tests two doublewords at 0xa800000000001020 before its indirect exit [call 1].
  Reviewed: 2026-11-12

- `kmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23980
  **Inferred.** Loads a doubleword from abs 0xffffffffffffc018 [@0x239c8] and a halfword at +0x588 from the pointer it holds [@0x239d8]. It stores 8 bytes into sym(_assregs) at offsets +0x18, +0x20 and +0x28 [@0x23fd4] [@0x23ff0] [@0x2400c]. It calls cmn_err [call 1] on one path, and calls assfail [call 2] and longway [call 3] as direct jumps.
  Role (from name): the kernel TLB-miss handler.
  Role (from facts): loads a doubleword [@0x239c8] and a halfword [@0x239d8], stores into sym(_assregs) [@0x23fd4], and calls cmn_err [call 1], assfail [call 2] or longway [call 3].
  Reviewed: 2026-11-12

- `nmi_dump` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25460
  **Inferred.** Calls atomicAddInt with a1 = 1 [call 1]. When its result is not 1 it branches to 0x254c8 [@0x25480 taken]. When the result is 1 it falls through to the call to cont_nmi_dump [call 2, @0x25480 fall]. The calls to tlbgetent [call 3, @0x25480 taken] and dumpsys_helper [call 4, @0x25480 taken] sit on the taken side.
  Role (from name): the non-maskable interrupt dump routine.
  Role (from facts): counts entries with atomicAddInt [call 1], and calls cont_nmi_dump [call 2, @0x25480 fall] only when that result is 1.
  Reviewed: 2026-11-12

- `checkAllTlbsDumped` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25630
  **Inferred.** Tests the pointer at sym(tlbdumptbl) and branches to 0x256bc when it is zero [@0x25640 taken]. The loop from 0x25660 ends when s0 is at least maxcpus [@0x25668 taken]. In the loop it calls cpu_enabled [call 1], and skips to the next index when the result is zero [@0x25678 taken]. It loads a word from the table entry for that index and goes back to 0x25660 when that word is nonzero [@0x256a0 taken]. Only an enabled CPU [@0x25678 fall] whose word is zero [@0x256a0 fall] reaches printf [call 2], with the index in a1. The return at 0x256c4 gives v0 unknown [@0x256c4].
  Role (from name): checks that every CPU's TLB has been dumped.
  Role (from facts): walks CPU indexes up to maxcpus, asks cpu_enabled [call 1] about each one, and calls printf [call 2] for an enabled CPU whose table word is zero.
  Reviewed: 2026-11-12
