# Tier-2 routine roles, odsy recovered batch 1

- `szmem` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xec48
  **Inferred.** Walks the count in `numnodes`, leaving the loop at 0xed4c when the count is zero or less (`blez` at 0xec78). It calls `slot_psize_compute` at 0xecb8 inside the loop and makes word stores at 0xecbc and 0xeccc and a halfword store at 0xece0; a `beq` at 0xecd8 tests the call result against zero, and the facts do not show how it affects the stores. One path calls `assfail` at 0xed58 with a2 = 0x6a; the condition that reaches it is not shown. The name suggests it sizes memory per node; the stored fields and their values are not identified in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `setupbadmem` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xed7c
  **Inferred.** Tests `tigon2_war_enable` at 0xed94 and branches on whether it is zero. Its one call, `cmn_err` at 0xee3c, has a0 = 0x5 and a1 at the `.rodata` address plus 6840; the facts do not show which path reaches it or what it reports. The name suggests it records bad memory ranges and a workaround for one chip revision; the facts do not show which ranges are recorded or what the 2-byte store at 0xee28 writes.
  Reviewed: 2026-11-12 (sonnet)

- `pg_setcachable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xee50
  **Inferred.** Works on the 8-byte word at a0 with two `lld`/`scd` pairs, at 0xee60/0xee70 and 0xee90/0xeea0. The `scd` retries loop back until the store succeeds, and a compare of a1 with a3 at 0xee94 sits inside the second pair. The return at 0xeeb4 gives v0 equal to the doubleword at a0. The name suggests it sets cacheability bits in a page table entry; the mask and the value merged in are not visible in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `pte_cachebits` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xeebc
  **Inferred.** Returns the constant 0x28 in v0 at 0xeebc with no other effect. The name suggests it supplies the cache-attribute bits for a page table entry, so 0x28 is probably that field's value, but the facts do not show what the individual bits mean.
  Reviewed: 2026-11-12 (sonnet)

- `pmem_getfirstclick` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf180
  **Inferred.** Calls `get_lowest_nasid` at 0xf188 with its four argument registers passed through, then returns at 0xf1ac with v0 unknown: the facts do not show the return value to be the callee's result, so code after the call may transform it. The name suggests the first memory click of the physical memory; the facts do not show how the click number is formed.
  Reviewed: 2026-11-12 (sonnet)

- `node_getfirstfree` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf1b4
  **Inferred.** Calls `get_freemem_start` at 0xf1bc with its four argument registers passed through, then returns at 0xf1d4 with v0 unknown; the facts do not show the return value to be the callee's result, so code after the call may transform it. The name suggests the first free click on a node; the facts do not show how the start address is chosen or converted.
  Reviewed: 2026-11-12 (sonnet)

- `node_getmaxclick` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf1dc
  **Inferred.** Loops with a slot counter s0. It calls `slot_getsize` at 0xf1f8 and, when the result is zero, repeats while s0 is nonnegative (`bgez` at 0xf244). Otherwise it loads a halfword at 0xf210 and leaves through the return at 0xf238, whose v0 is either a value the facts do not show or 0. The name suggests it reports the highest click on the node, but the facts do not show how the maximum is formed.
  Reviewed: 2026-11-12 (sonnet)

- `__dcache_inval` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10260
  **Inferred.** Takes an address in a0 and a length in a1, and leaves at 0x103f4 when the length is zero or less (`blez` at 0x10260). It walks the range in 128-byte steps, the stride implied by the `& 0x7f` test at 0x10294 and the -128 offsets at 0x102a8 and 0x1030c. It loads a word from the fixed address at offset -0x3954 at 0x10268 and compares it with the length at 0x10270. The name suggests a data-cache invalidate over the range, but the cache operation it issues is not in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `__dcache_wb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10320
  **Inferred.** Has the same shape as `__dcache_inval`: the length check at 0x10320 (`blez` to 0x103f4), the word at offset -0x3954 loaded at 0x10328, the 128-byte stride tests at 0x10344 and 0x10360, and the table reference at 0x10394. The name suggests a data-cache writeback over the range. The facts do not show the cache operation code that would tell it apart from an invalidate.
  Reviewed: 2026-11-12 (sonnet)

- `__dcache_wb_inval` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x103a8
  **Inferred.** Has the same structure as `__dcache_wb` and `__dcache_inval`: the length check at 0x103a8, the word at offset -0x3954 loaded at 0x103b0, the 128-byte stride tests at 0x103cc and 0x103e8, and the table reference at 0x1041c. The name suggests a writeback-and-invalidate of the data cache over the range. The cache operation codes are not in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `__icache_inval` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10430
  **Inferred.** Uses the same range loop as the data-cache routines: the length check at 0x10430 leaving to 0x1056c, the word at offset -0x3954 at 0x10438, the stride tests at 0x10454 and 0x10470, and the table reference at 0x104a4. The name suggests an instruction-cache invalidate over a0 to a0 plus a1. The facts do not show the operation issued.
  Reviewed: 2026-11-12 (sonnet)

- `__cache_wb_inval` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x104b8
  **Inferred.** Reads the data-cache size from `pdcache_size` at 0x10514 and compares the length with a value derived from it (`beq` at 0x104ec, `bne` at 0x10524 and 0x1054c), so a large enough range appears to take a different path from a small one. Otherwise it walks lines as the routines above do. The name suggests a writeback-and-invalidate over the caches, but the facts contain no cache operation instructions to confirm it.
  Reviewed: 2026-11-12 (sonnet)

- `config_cache` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x105c0
  **Inferred.** Stores three configuration words: a size into `picache_size` at 0x10618, a size into `pdcache_size` at 0x1064c, and a mask into `scache_linemask` at 0x1066c. It returns at 0x10688 with v0 unknown. The name suggests it probes the cache sizes at startup, but the facts do not show how the values are derived.
  Reviewed: 2026-11-12 (sonnet)

- `size_2nd_cache` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10690
  **Inferred.** Reads a word at 0x106bc and compares it with the constant 0x1000000 (16 MiB) at 0x106c4 and 0x10714. It loops back to 0x106ec while the value stays below 0x1000000 and returns at 0x1071c with v0 unknown. The name suggests it measures the secondary cache size by stepping, but the facts do not show what is read or how it is stepped.
  Reviewed: 2026-11-12 (sonnet)

- `_c_hwb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10724
  **Inferred.** A case dispatch on a0 against the constants 0x1 (`bne` at 0x10730, `beq` at 0x10738) and 0x3 (`beq` at 0x10744). Every path ends at the return at 0x1075c, which yields -0x1, 0 or an unknown value. The name suggests a writeback entry that picks its case from a0, but the facts do not show what each case does.
  Reviewed: 2026-11-12 (sonnet)

- `_c_hwbinv` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10784
  **Inferred.** The same dispatch on a0 as `_c_hwb`, against 0x1 (`bne` at 0x10790, `beq` at 0x10798) and 0x3 (`beq` at 0x107a4). The return at 0x107bc gives -0x1, 0 or unknown. The name suggests the writeback-and-invalidate variant of `_c_hwb`, but the case actions are not in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `_c_hinv` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x107d8
  **Inferred.** Dispatches on a0 against 0x1 (`bne` at 0x107e4, `beq` at 0x107ec) and returns at 0x10804 with 0 or an unknown value. It has no stores or calls. The name suggests a hit-invalidate entry for one case, but the facts do not show which operation runs.
  Reviewed: 2026-11-12 (sonnet)

- `_c_ilt_n_ecc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10824
  **Inferred.** Dispatches on a0 against 0x1 (`bne` at 0x10830, `beq` at 0x10838), stores through the pointers in a2 and a3 (`sw` at 0x1084c and 0x10854), and returns 0 at 0x10850. The name suggests a tag read that also reports an ECC status through a3, but the facts do not show what the stored values are.
  Reviewed: 2026-11-12 (sonnet)

- `_c_ilt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10870
  **Inferred.** The same dispatch on a0 (`bne` at 0x1087c, `beq` at 0x10884), with one store through a2 at 0x10894 and a return of 0 at 0x10898. The name suggests the variant of `_c_ilt_n_ecc` without the ECC output. The stored value is not visible in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `_c_ist` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x108b8
  **Inferred.** Loads a word through a2 at 0x108bc, dispatches on a0 against 0x1 (`bne` at 0x108cc, `beq` at 0x108d4), and returns 0 on each of its three return paths (0x108e0, 0x108ec and 0x108f8). The name suggests a tag-store entry that takes its value from a2, but the facts do not show what is written where.
  Reviewed: 2026-11-12 (sonnet)

- `runcached` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10918
  **Inferred.** Forwards its four argument registers and jumps through a register at 0x1092c, so it is a tail call whose target is not in the facts. The name suggests it runs a routine from a cached address, possibly through a function pointer set elsewhere. The target is unknown.
  Reviewed: 2026-11-12 (sonnet)

- `uncached` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10934
  **Inferred.** Forwards its four argument registers and jumps through a register at 0x10948, the same indirect pattern as `runcached` at 0x10918. The name suggests it runs the routine through an uncached alias. The jump target is not in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `_read_tag` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10968
  **Inferred.** Dispatches on a0 against 0x1 (`bne` at 0x10974, `beq` at 0x1097c), stores a word through a2 at 0x1099c, and returns 0 at 0x109a0. The name suggests it reads a cache tag and copies it out through a2, but the facts do not show which tag or which case it reads.
  Reviewed: 2026-11-12 (sonnet)

- `_write_tag` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x109c0
  **Inferred.** Loads one word through a2 at 0x109c0 and branches on a0 against the constant 0x1 at 0x109d0 and 0x109d8. Both paths meet at the return at 0x109e4, whose v0 the facts do not settle. The rendered facts show no store, so the name `_write_tag` is not confirmed by this code.
  Reviewed: 2026-11-12 (sonnet)

- `flush_cache` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10a04
  **Inferred.** Loads a word from the fixed address 0xffffffffffffc6ac at 0x10a08, then calls `__cache_wb_inval` at 0x10a14 with a0 set to the constant 0xa800000000000000 and a1 taken from memory at [-0x3954]. It passes a2 and a3 through unchanged and returns the callee's result at 0x10a24. The callee name suggests a write-back and invalidate wrapper, but no cache instruction appears in the facts.
  Reviewed: 2026-11-12 (sonnet)
