# Tier-2 routine roles, odsy round r5, batch 3

- `atomicClearCpumask` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a94
  **Inferred.** Loads the doubleword at a1 [@0x29a94] and loads the doubleword at a0 with `lld` [@0x29a9c], then stores with `scd` [@0x29aa4]. The branch at 0x29aa8 goes back to the `lld` while the register it tests is zero, which after the `scd` is the store-conditional result [@0x29aa8 taken zero]; otherwise it falls to the return of the loaded word [@0x29ab0].
  Role (from name): an atomic clear of the bits named by the mask doubleword at a1 from the word at a0; the mask is inverted with a `nor` and ANDed with the loaded word, and the facts do not show the value the `scd` stores.
  Reviewed: 2026-11-12

- `atomicPush` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29af4
  **Inferred.** Loads the doubleword at a0 [@0x29af4]; when its bit 0 is set the branch at 0x29afc is taken [@0x29afc taken nonzero] to a jump back to 0x29af4. The routine continues when that bit is clear [@0x29afc fall zero]. It stores to the record at a2 [@0x29b00]. It then loads a0 with `lld` [@0x29b04] and stores with `scd` [@0x29b10]. The branch at 0x29b08 goes back to 0x29af4 when the value read differs from the value first loaded [@0x29b08 taken], the branch at 0x29b14 goes back while the register it tests is zero, which after the `scd` is the store-conditional result [@0x29b14 taken zero], and the return at 0x29b1c gives the doubleword read by the `lld` [@0x29b1c].
  Role (from name): a lock-free push onto the list whose head word is at a0: the old head is saved at a2 and a1 becomes the new head; a head with bit 0 set makes it retry.
  Reviewed: 2026-11-12

- `mutex_set_always` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29ce8
  **Inferred.** Loads the doubleword at a0 with `lld` [@0x29ce8] and stores with `scd` [@0x29cf0]. The branch at 0x29cf4 goes back to the `lld` while the register it tests is zero, which after the `scd` is the store-conditional result [@0x29cf4 taken zero], and the return at 0x29cfc gives the loaded doubleword [@0x29cfc].
  Role (from name): a set of the mutex word at a0 to the value in a1 whatever its earlier value, returning the earlier value.
  Reviewed: 2026-11-12

- `compare_and_swap_int` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29d58
  **Inferred.** Loads the word at a0 with `ll` [@0x29d58]. The branch at 0x29d5c is taken when that word differs from a1 [@0x29d5c taken], and then the routine returns 0x0 [@0x29d78]. Otherwise it stores with `sc` [@0x29d64], and the branch at 0x29d68 goes back to the `ll` while the register it tests is zero, which after the `sc` is the store-conditional result [@0x29d68 taken zero]; when the store succeeded it returns that result, 1, not a2 [@0x29d70].
  Role (from name): a compare-and-swap on the word at a0 against a1, storing a2 on success; it returns 1 on a swap and 0 when the compare fails.
  Reviewed: 2026-11-12

- `compare_and_inc_int_gt_zero` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29d80
  **Inferred.** Loads the word at a0 with `ll` [@0x29d80]. When that word is zero or negative the branch at 0x29d84 is taken [@0x29d84 taken], and the routine returns 0x0 [@0x29da0]. Otherwise it stores the incremented word with `sc` [@0x29d8c], the branch at 0x29d90 goes back to the `ll` while the register it tests is zero, which after the `sc` is the store-conditional result [@0x29d90 taken zero], and the return at 0x29d98 gives that result, 1, not the incremented word [@0x29d98].
  Role (from name): an increment of the int at a0 that happens only while it is greater than zero; it returns 1 after an increment and 0 otherwise.
  Reviewed: 2026-11-12

- `compare_and_dec_int_gt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29da8
  **Inferred.** Loads the word at a0 with `ll` [@0x29da8]. When the word minus one is below a1, signed, the branch at 0x29db4 is taken [@0x29db4 taken] and the routine returns 0x0 [@0x29dd0]. Otherwise it stores the decremented word with `sc` [@0x29dbc]; the branch at 0x29dc0 goes back to the `ll` while the register it tests is zero, which after the `sc` is the store-conditional result [@0x29dc0 taken zero], and the return at 0x29dc8 gives that result, 1, not the decremented word [@0x29dc8].
  Role (from name): a decrement of the int at a0 that does not take it below a1; it returns 1 after a decrement and 0 otherwise.
  Reviewed: 2026-11-12

- `comparegt_and_swap_int` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e4c
  **Inferred.** Loads the word at a0 with `ll` [@0x29e4c]. The branch at 0x29e54 is taken when a1 is at least the loaded word, signed [@0x29e54 taken], and then the routine returns 0x0 [@0x29e70]. When the loaded word is greater than a1 [@0x29e54 fall], it stores with `sc` [@0x29e5c]; the branch at 0x29e60 goes back to the `ll` while the register it tests is zero, which after the `sc` is the store-conditional result [@0x29e60 taken zero], and otherwise it returns that result, 1, not a2 [@0x29e68].
  Role (from name): a compare-and-swap that only swaps when the word at a0 is above a1, storing a2; it returns 1 on a swap and 0 otherwise.
  Reviewed: 2026-11-12

- `store_atomic` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e78
  **Inferred.** Loads the word at a0 with `ll` [@0x29e78] and stores with `sc` [@0x29e7c]. The branch at 0x29e80 goes back to the `ll` while the register it tests is zero, which after the `sc` is the store-conditional result [@0x29e80 taken zero], and the return at 0x29e88 gives a value the facts do not resolve, because no instruction in the routine sets v0 [@0x29e88].
  Role (from name): an atomic store to the word at a0, although the `sc` writes register a4, which holds the word the `ll` just loaded, rather than a new value.
  Reviewed: 2026-11-12

- `ackkgclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29fc0
  **Inferred.** Loads a halfword from the absolute address 0xffffffffffffc428 [@0x29fc0] and a doubleword from a record selected by the halfword at [-0x3bd8] [@0x29fd0]. It loads a byte at offset 0x528 of that record [@0x29fd4], and the branch at 0x29fe0 is taken when bit 0 of that byte is zero [@0x29fe0 taken zero]. When the bit is set [@0x29fe0 fall nonzero] it stores a doubleword to 0x9200000001000138 [@0x29fe8]. The other path is the branch taken [@0x29fe0 taken zero]. It stores to the absolute address 0x9200000001000130 [@0x29ff8]. Either way it returns the selector value [@0x29fec] [@0x29ff4].
  Role (from name): a clock acknowledge; the facts show one absolute store, of zero in the instructions, chosen by that bit, and do not show what the target means.
  Reviewed: 2026-11-12

- `slowkgclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2a1dc
  **Inferred.** Loads a halfword from the absolute address 0xffffffffffffc428 [@0x2a1f8] and a doubleword from a record selected by the halfword at [-0x3bd8] [@0x2a234]. It takes `mutex_spinlock_spl` [call 1], calls `mutex_spinunlock` [call 2, @0x2a214 fall nonzero] and again [call 3], and calls `ackkgclock` [call 4]. The branch at 0x2a1e4 is taken when the word at sym(.sdata)+376 is zero [@0x2a1e4 taken zero], and then it calls `spinlock_init` [call 5]. It stores a doubleword to 0x9200000001000158 when bit 0 of the byte at offset 0x528 of the record is set [@0x2a244 fall nonzero] [@0x2a24c]. With that bit clear the branch at 0x2a244 is taken [@0x2a244 taken zero]. It stores to the absolute address 0x9200000001000150 [@0x2a29c]. It also stores to a word at 0xffffffffffffc53c [@0x2a280].
  Role (from name): the slow path of the kernel clock tick; the instructions store zero to each target, and the facts do not show what the targets mean.
  Reviewed: 2026-11-12

- `rtodc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2a2b8
  **Inferred.** Loads a doubleword from an address built from master_nasid [@0x2a2f8] and loads a word from sym(.data)+0x220c [@0x2a5f4]. It calls `wtodc` [call 1], and calls `cmn_err` [call 2, @0x2a460 taken] and again [call 3]. The branch at 0x2a2e0 is taken when the doubleword at sym(.sbss)+200 is nonzero [@0x2a2e0 taken nonzero]. The doubleword at sym(.sbss)+208 is a pointer, and bytes are loaded through it at several offsets [@0x2a368] [@0x2a37c].
  Role (from name): a read of the time-of-day clock; the facts show the calls and loads but not what the fields mean.
  Reviewed: 2026-11-12

- `wtodc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2a7e4
  **Inferred.** Loads a word from sym(.data)+0x2208 [@0x2a874]. It stores bytes at several offsets from the pointer held at sym(.sbss)+208, among them +0x1 [@0x2aa8c] and +0x7fff [@0x2abfc]. It calls `splprof` [call 1, @0x2a97c taken] and `splx` [call 2, @0x2a97c taken], both reached whichever way that branch goes because its fall side rejoins the taken path, and the return at 0x2a948 gives the result of `splx` [@0x2a948]. The branch at 0x2a8a8 is taken when the word a4 loads from sym(.data)+8712 is at least a1, signed [@0x2a8a8 taken].
  Role (from name): a write of the time-of-day clock inside an spl bracket; the facts show the byte stores but not the values they write.
  Reviewed: 2026-11-12

- `VEC_breakpoint` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2cf60
  **Inferred.** Its 12-byte range starts with a direct jump to VEC_trap [@0x2cf60].
  Role (from facts): a breakpoint vector stub that hands off to VEC_trap [@0x2cf60].
  Reviewed: 2026-11-12

- `softfp_adderr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d824
  **Inferred.** Calls `cmn_err` [call 1, @0x2d830] and returns 0x0 [@0x2d840].
  Role (from name): a soft-float error report, with the suffix of its name not decoded; its one call is `cmn_err` [call 1], and the facts do not show what the message carries.
  Reviewed: 2026-11-12

- `softfp_insterr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d848
  **Inferred.** Calls `cmn_err` [call 1, @0x2d858] and returns 0x0 [@0x2d868].
  Role (from name): a report of a soft-float instruction error; its one call is `cmn_err` [call 1], and the facts do not show what the message carries.
  Reviewed: 2026-11-12

- `ioerror_dump` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d870
  **Inferred.** Loads words from the record at a3 [@0x2d8fc], halfwords from it [@0x2d910], and doublewords at +0x10 through +0x48 [@0x2da78] [@0x2db30]. It tests bits 0x4, 0x8, 0x1 and 0x2 of a1 in turn [@0x2d88c taken zero] [@0x2d8a0 taken zero] [@0x2d8b4 taken zero] [@0x2d8c8 taken zero]. It calls `printf` [call 1], [call 2, @0x2d904 fall nonzero] and [call 17].
  Role (from facts): prints fields of the record at a3 with `printf` [call 1].
  Reviewed: 2026-11-12

- `_hook_exceptions` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2db7c
  **Inferred.** It calls `getcpuid` [call 1], `get_nasid` [call 4] and [call 5], `flush_cache` [call 6], `getsr` [call 7] and `setsr` [call 8], and calls `assfail` [call 9, @0x2dc88 taken]. It loads a word from sym(utlbmiss_prolog_mp) -4 [@0x2dc08] and stores words in a loop that repeats while the source pointer is below sym(eutlbmiss_prolog_mp) [@0x2dc0c] [@0x2dc24 taken]. The return at 0x2dea4 gives the result of `setsr` [@0x2dea4].
  Role (from name): installs the exception hooks; the facts show the copy loop, the cache flush and the status-register calls.
  Reviewed: 2026-11-12

- `utlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2df80
  **Inferred.** Loads two doublewords from a base the facts do not resolve [@0x2df90] [@0x2df94].
  Role (from name): the TLB refill entry point; the facts show only these loads, so the refill steps are not described.
  Reviewed: 2026-11-12

- `utlbmiss_not_large_page` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2df90
  **Inferred.** Loads two doublewords from a base the facts do not resolve [@0x2df90] [@0x2df94].
  Role (from name): the refill path for small pages; the facts show only these loads.
  Reviewed: 2026-11-12

- `utlbmiss2_not_large_page` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e090
  **Inferred.** Loads two doublewords from the base the facts do not resolve [@0x2e090] [@0x2e094]. The branch at 0x2e0a4 is taken when k1 is zero [@0x2e0a4 taken zero], and the branch at 0x2e0ac is taken when k0 is zero [@0x2e0ac taken zero]; k1 and k0 are the two loaded words after an exclusive-or with 0x100.
  Role (from name): a second-level TLB refill for small pages; the facts show the loads and the k0 and k1 tests only.
  Reviewed: 2026-11-12
