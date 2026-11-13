# Routine roles, odsy round r5 batch 0

Entries for 15 of the first 25 targets of the ranked located list, read from the rendered instructions of each binary range. Every role below is inferred: the rendered facts give offsets, callees and constants, not what the registers or fields mean. Ten targets are not written here, listed at the end with the reason.

- `gfP_OdsyBRDMGRVTGcontrol` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x5e3c
  **Inferred.** It calls copyin first [call 1] and branches on its result [@0x5e70 taken nonzero]. A nonzero result takes the error path at 0x62d0, which calls cmn_err [call 20, @0x5e70 taken nonzero]. When copyin returns zero it calls odsy_poll_dfifo_level [call 2, @0x5e70 fall zero]; if the word at +46184 of the structure at [a0+40] is zero it first calls psema [call 7, @0x5e84 taken zero]. The routine makes 20 calls in all and returns 0x0, 0x5 or 0xe [@0x5ec8].
  Role (from facts): a request handler that copies its input in and then polls the DFIFO level on the success path [call 2, @0x5e70 fall zero].
  Reviewed: 2026-11-12

- `prom_has_vga_support` in `usr/cpu/sysgen/IP35boot/gfxs.a(klconfig.o)` at 0x330
  **Inferred.** It loads the word at abs 0x90000000180000a0 [@0x338] and the word at abs 0x90000000180000a4 [@0x33c]. The branch at 0x344 is taken when the first word is below 6 [@0x344 taken], and that path returns 0x0 at 0x360 [@0x360]. The branch at 0x34c is taken when the second word is below 0xab [@0x34c taken nonzero], which also returns 0x0. When that branch is not taken it returns 0x1 at 0x354 [@0x34c fall zero] [@0x354].
  Role (from facts): a yes-or-no test that answers 1 only when the first firmware word is 6 or more and the second is 0xab or more [@0x344] [@0x34c] [@0x354].
  Reviewed: 2026-11-12

- `klcheck_vga` in `usr/cpu/sysgen/IP35boot/gfxs.a(klconfig.o)` at 0xafc
  **Inferred.** It loads the word at +0x20008 of the record at a0 + (a1 << 0xc) + (a2 << 0x8) [@0xb14]. The branch at 0xb24 is taken when the top byte of that word is not 3 [@0xb24 taken], and the branch at 0xb2c is taken when the next byte down is zero [@0xb2c taken zero]. It returns 0x0 at 0xb38 when the top byte is not 3 [@0xb24 taken] or the next byte is nonzero [@0xb2c fall nonzero] [@0xb38]. When the top byte is 3 [@0xb24 fall] and the next byte is zero [@0xb2c taken zero] it reads the byte at +0x20007 [@0xb40], stores a byte back to the record [@0xb4c] and returns the record address plus 0x20000 [@0xb48].
  Role (from facts): a check on one indexed record that, when its top byte is 3 [@0xb24 fall] and the next byte is zero [@0xb2c taken zero], modifies a byte of the record in place and returns the record's address plus 0x20000, and otherwise returns 0 [@0xb14] [@0xb4c] [@0xb48] [@0xb38].
  Reviewed: 2026-11-12

- `arcs_write` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22c
  **Inferred.** It tests _prom_cleared first [@0x248]. When that is zero the branch at 0x248 is taken and it calls through an entry at +0xd8 of a table it loads [call 6, @0x248 taken zero]. When it is nonzero it tests L1_is_console [@0x250], and a nonzero value calls he_arcs_write [call 1, @0x250 fall nonzero]. When L1_is_console is zero it calls ioc_console_write [call 2, @0x250 taken zero] and then in_panic_mode [call 3, @0x250 taken zero]. The branch at 0x298 is taken when that check returns zero [@0x298 taken zero]; otherwise it calls brl1_port_ready [call 4, @0x298 fall nonzero] and, when that returns nonzero, du_down_write [call 5, @0x2a8 fall nonzero].
  Role (from facts): a console write dispatcher that sends output through an indirect call when _prom_cleared is zero [call 6, @0x248 taken zero], through he_arcs_write when L1_is_console is nonzero [call 1, @0x250 fall nonzero], and otherwise through ioc_console_write [call 2, @0x250 taken zero].
  Reviewed: 2026-11-12

- `arcs_load` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e0
  **Inferred.** It loads the pointer at abs 0xa800000000001040 [@0x304] and the doubleword at +0x0 of that pointer [@0x308]. When sym(_prom_cleared) is zero it calls through the loaded value [call 1, @0x2f8 fall zero]. When it is nonzero it calls cmn_err [call 2, @0x2f8 taken nonzero].
  Role (from facts): a loader that calls an indirect routine when sym(_prom_cleared) is zero [call 1, @0x2f8 fall zero] and calls cmn_err when it is nonzero [call 2, @0x2f8 taken nonzero].
  Reviewed: 2026-11-12

- `exception_leave` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8a0
  **Inferred.** It calls tfi_restore at its entry address [call 1]. It loads 8-byte words from an unresolved base 21 times, for example at 0x8a8 and 0x8ac [@0x8a8] [@0x8ac].
  Role (from name): the exception return path, since it restores saved state through tfi_restore [call 1].
  Reviewed: 2026-11-12

- `longjmp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1078
  **Inferred.** It loads 12 doublewords from the block at a0, from +0x0 to +0x58 [@0x1078] [@0x1084] [@0x10a0]. It returns 0x1 [@0x10ac].
  Role (from facts): a reload of the register block at a0 that ends by returning 0x1 [@0x1078] [@0x10ac].
  Reviewed: 2026-11-12

- `start` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1990
  **Inferred.** It loads the doubleword at abs 0x9200000001600000 [@0x19c0]. It calls mapped_kernel_setup_tlb [call 1, @0x19d8], then transfers to a fixed text address through the jump at 0x19f8 [call 2].
  Role (from facts): a start-up path that sets up the kernel TLB mapping and then jumps to a fixed text routine [call 1] [call 2].
  Reviewed: 2026-11-12

- `uzero` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x75e8
  **Inferred.** It calls do_ucopy_zero [call 1, @0x7608 fall nonzero] only when the byte flag is 1 [@0x75fc fall] and the word at +0x348 of the same record is nonzero [@0x7608 fall nonzero]; that path then jumps past the range checks to the epilogue [call 2]. Otherwise the range checks run: a negative a1 or a0 [@0x7620 taken] [@0x7628 taken], or an end address above 0x100000000000 [@0x7640 taken], leaves through the error exit at 0x7674 without calling bzero. A request that passes the checks calls bzero [call 3, @0x7608 taken zero] and returns 0x0 [@0x766c].
  Role (from facts): a range-zeroing routine that calls do_ucopy_zero when the flag and word allow it [call 1, @0x7608 fall nonzero], and otherwise range-checks and calls bzero [call 3, @0x7608 taken zero], returning 0x0 on that path [@0x766c].
  Reviewed: 2026-11-12

- `bzero_pref` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x77d8
  **Inferred.** It stores a doubleword at a0-0x8 [@0x77e0] in a loop that repeats while a0 differs from a3 [@0x77dc taken]. After the loop it stores two more doublewords at a0+0x0 and a0+0x8 [@0x77f0] [@0x77f4], unless bit 4 of a1 is clear, which skips them [@0x77e8 taken].
  Role (from facts): a doubleword store loop from a0 up to a3, followed by an optional pair of doublewords that is stored when bit 4 of a1 is set [@0x77dc taken] [@0x77e8 taken].
  Reviewed: 2026-11-12

- `uload_half` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7d18
  **Inferred.** It loads the byte at a0 +0x0 [@0x7d24] and the byte at a0 +0x1 [@0x7d28]. It stores halfwords at [-0x3fe0]:8 +0xf6 [@0x7d20] [@0x7d34] and 8 bytes at a1 [@0x7d38]. It returns 0x0 [@0x7d3c].
  Role (from name): an unaligned halfword load, built from the two bytes at a0 [@0x7d24] [@0x7d28]; the value stored at a1 is not shown.
  Reviewed: 2026-11-12

- `mlreset` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xd7cc
  **Inferred.** On the path that the branch at 0xd83c takes when s3 is zero [@0xd83c taken zero], it calls ioc3_mlreset [call 15, @0xd83c taken zero], ioc4_mlreset [call 16, @0xd83c taken zero] and l1_mlreset [call 17, @0xd83c taken zero] in that order, then nvram_baseinit [call 18, @0xd83c taken zero]. It calls cpu_node_probe [call 23, @0xd83c taken zero] and stores doublewords to sym(boot_cnodemask) [@0xda34] [@0xda40].
  Role (from name): the machine-level reset for the boards, since it calls the per-board reset routines [call 15, @0xd83c taken zero] [call 16, @0xd83c taken zero] [call 17, @0xd83c taken zero].
  Reviewed: 2026-11-12

- `szmem` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xec48
  **Inferred.** When numnodes is zero or below the branch at 0xec78 is taken [@0xec78 taken] and the routine calls assfail [call 2] before it tests numnodes again. Otherwise slot_psize_compute runs for each index below 8 inside the node loop [call 1] [@0xecec taken]. It stores 4-byte words [@0xecbc] [@0xeccc].
  Role (from name): sizes the memory of each node, which fits the node loop and the call to slot_psize_compute [call 1].
  Reviewed: 2026-11-12

- `pmem_getfirstclick` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf180
  **Inferred.** It calls get_lowest_nasid [call 1, @0xf188] and then shifts and rounds the result before returning: it keeps the low 16 bits, shifts them left by 33, adds 0x3fff and shifts right by 14. The return at 0xf1ac has an unresolved value [@0xf1ac].
  Role (from facts): a wrapper around get_lowest_nasid that shifts and rounds its result before returning [call 1] [@0xf1ac].
  Reviewed: 2026-11-12

- `node_getfirstfree` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf1b4
  **Inferred.** It calls get_freemem_start [call 1, @0xf1bc] and then adds 0x3fff to the result and shifts it right by 14, which rounds up to a multiple of 0x4000 in those units. The return at 0xf1d4 has an unresolved value [@0xf1d4].
  Role (from facts): a wrapper around get_freemem_start that rounds its result up and shifts it before returning [call 1] [@0xf1d4].
  Reviewed: 2026-11-12

Not written in this batch, by target number. Targets 1 to 3 are the ODSY_SET_GC routine at 0x30 in odsy_tport.o: the rendered name is the vendor request name, which the inventory row does not carry, so the header cannot match the row. Target 4 is RRM_SwapBuf in rrm.o, which already has an entry in the t1 batch. Target 7 is VEC_int, with more branches and nested calls than can be stated accurately here. Target 10 is arcs_to_dsk, a string parser with many branches. Target 12 is unmaptlb, with two branches and no callee to name its role. Target 13 is tlbdropin_lpgs, with two branches, an unresolved return and no calls. Target 19 is devnamefromarcs, with more than fifty branches and printf calls on several paths. Target 21 is allowintrs, a single return with an unresolved value.
