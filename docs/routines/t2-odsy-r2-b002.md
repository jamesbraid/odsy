# Tier-2 routine roles, odsy recovered batch 2

- `cacheOP` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10bb8
  **Inferred.** Reads a descriptor passed in a0, with fields at +0x0, +0x8, +0xc, +0x10 and +0x14, and writes three words at 0x10c1c, 0x10c24 and 0x10c30. Its one indirect call at 0x10c10 has no resolved target, and a2 is set to the constant 0x10c18, a code address inside this routine. The block from 0x10c34 to 0x10d30 is not reached from the entry, so this reading covers only the reached paths.

- `__prefetch_store` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10d34
  **Inferred.** Tests a1 with `blez` at 0x10d34, which sends a1 at or below zero to the return at 0x10d5c, and tests the sign again with `bgez` at 0x10d54, which loops back to 0x10d48. The rendered facts show no memory access, cache operation or call, so nothing here confirms the prefetch named in the routine.

- `__prefetch_load` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10d64
  **Inferred.** Has the same shape as the store variant 48 bytes earlier: `blez` at 0x10d64 sends a1 at or below zero to the return at 0x10d8c, and `bgez` at 0x10d84 loops back to 0x10d78. The rendered facts show no memory access or cache operation, so the prefetch named in the routine is not confirmed.

- `cache_tag_ecc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10d94
  **Inferred.** Loads a word from sym(.data)+0x6f8 at 0x10dd4 and compares a1 with the symbol `pi_err_status_cmd` at 0x10dc8, leaving through 0x10e0c when they are equal. A loop between 0x10db0 and 0x10e04 tests a2 against zero at 0x10ddc. The name suggests an ECC check on cache tags, but no cache-tag instruction appears in the facts.

- `dobuserre` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1c120
  **Inferred.** This looks like a bus-error dispatcher. It checks error state with `check_ni_errors` at 0x1c17c, `hubni_error_handler` at 0x1c18c and `vtop_attr_get` at 0x1c1a4, then branches on a3 against 0x4, 0x5 and 0x7 and on the word at -0x3fe0. Per-class handlers are called by name: `handle_uncac_buserr` at 0x1c404, `handle_cac_buserr` at 0x1c434, `handle_hspec_buserr` at 0x1c4c0, `handle_mspec_buserr` at 0x1c50c and `handle_io_buserr` at 0x1c53c. Error paths log through `cmn_err_tag` with message IDs 0xb58 to 0xb5c and end in `kl_panic` or `assfail`, and the meaning of the a3 codes is inferred from the callee names.

- `intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2033c
  **Inferred.** An interrupt dispatcher that tests cause bits against the masks 0x30, 0x20, 0x100, 0x200, 0x400, 0x800, 0x2000, 0x4000 and 0x8000 in its branch chain. For each set bit it calls `splx` with a value from `cause_intr_tbl` and then calls the handler from the same table through a `jalr`, for example at 0x203c0 and 0x20560. With no handler it calls `intr_stray` at 0x20570, and it logs timestamp events 0x66 and 0x65 at 0x2058c and 0x205a8.

- `idle_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20600
  **Inferred.** Calls `dobuserre` at 0x20640 with a7 set to 0x1c and a2 set to zero, then reads the bad virtual address with `getbadvaddr` at 0x20648 and reports it through `cmn_err` at 0x2066c. It branches on a4 against 0x18 at 0x2062c and against 0x1c at 0x20634, the same 0x1c code that `dobuserre` compares against. The facts do not show when this runs, so its place in the idle path is inferred from the calls.

- `earlynofault` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2068c
  **Inferred.** Compares a1 with the constant 0x1c at 0x20690 and returns through 0x2069c with v0 equal to 0 or 1. The facts do not show which value the taken branch selects, so the meaning of the result is not settled. The name suggests an early no-fault check, which these facts neither confirm nor refute.

- `sendintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x206a4
  **Inferred.** Looks up a per-CPU record in the `pdaindr` table at index a0 shifted left by 4, reads a byte at +0x528 and a halfword at +0x42c from it, and stores a doubleword at 0x20700. The stored address combines a 2-byte field with one of two constants, 0x9200000001800090 and 0x9200000001a00090, and a1 compared with 0xab at 0x206dc appears to choose between them. The return at 0x206fc gives v0 = 0, but the facts do not show the register the store targets, so the mechanism is not settled.

- `debug_stop_all_cpus` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20c74
  **Inferred.** Walks CPU slots from zero up to the `maxcpus` symbol, using `get_cpu_slice` at 0x20ca4 and `cpu_enabled` at 0x20d14 to skip slots that are not enabled. It compares a halfword at -0x3bd8 with the slot index at 0x20d08 and stores a doubleword for each visited slot at 0x20cec, with a target the facts do not resolve. The name suggests it halts every CPU for debugging, but the stop mechanism is not visible in the rendered facts.

- `tfi_save` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21800
  **Inferred.** Its 56-byte body holds eleven doubleword stores, from 0x21800 onward, through a base register the facts do not name. It reads as a register save block. The return at 0x21830 gives an unknown v0, and the facts do not show which registers are saved.

- `tfi_restore` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21838
  **Inferred.** Its 56-byte body holds eleven doubleword loads, from 0x21838 onward, from an unnamed base. Read against `tfi_save` at 0x21800, it looks like the restore half of a save and restore pair. The facts show the loads but not the base or the restored set, and the return at 0x21868 gives an unknown v0.

- `assfail` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21874
  **Inferred.** Saves register state into `_assregs`, with doubleword stores at offsets +0x8, +0x10, +0x30 through +0xf8. It reads and writes the word `panic_cpu` at 0x218ac and 0x218d0. When `panic_cpu` already holds a value other than -1, the branch at 0x218b0 jumps to 0x21ca8. The facts show no calls, so what happens after the save is not visible.

- `getpc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21ccc
  **Established.** The body is 8 bytes. The return at 0x21ccc sets `v0` from `ra`, and no callee or constant appears, so it returns the return-address register.

- `getsp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21cd4
  **Established.** The body is 8 bytes. The return at 0x21cd4 sets `v0` from `sp`, and no callee or constant appears, so it returns the stack pointer.

- `getpcsp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21cdc
  **Inferred.** Stores doublewords to a0 and a1 at 0x21cdc and 0x21ce4, its two arguments, then returns at 0x21ce0 with an unknown v0. Its neighbours `getpc` and `getsp` suggest the stores write the return address and stack pointer through those pointers, but the stored values are not shown in the rendered facts.

- `getgp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21ce8
  **Established.** The body is 8 bytes. The return at 0x21ce8 sets `v0` from `gp`, and no callee or constant appears, so it returns the global pointer.

- `get_sr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d14
  **Inferred.** Not derived. The facts give a 12-byte body and one return at 0x21d18 with v0 unknown. No register or memory operation is decoded, so the role is not settled and the name is not evidence.

- `set_sr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d20
  **Inferred.** Not derived. The facts give a 12-byte body and one return at 0x21d24 with v0 unknown. No operation is decoded, so the role is not settled.

- `get_lladdr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d2c
  **Inferred.** Not derived. The facts give a 12-byte body and one return at 0x21d30 with v0 unknown. No operation is decoded, so the role is not settled.

- `set_lladdr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d38
  **Inferred.** Not derived. The facts give a 12-byte body and one return at 0x21d3c with v0 unknown. No operation is decoded, so the role is not settled.

- `do_sync_instruction` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d44
  **Inferred.** Not derived. The facts give a 12-byte body and one return at 0x21d48 with v0 unknown. No operation is decoded, so the role is not settled.

- `siron` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d50
  **Inferred.** Not derived. The facts give a 40-byte body and one return at 0x21d70 with v0 unknown. No operation is decoded, so the role is not settled.

- `siroff` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d78
  **Inferred.** Not derived. The facts give a 44-byte body and one return at 0x21d9c with v0 unknown. No operation is decoded, so the role is not settled.

- `flushbus` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21da4
  **Inferred.** Not derived. The facts give a 16-byte body and one return at 0x21dac with v0 unknown. No operation is decoded, so the role is not settled.
