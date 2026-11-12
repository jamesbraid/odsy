# Tier-2 routine roles, odsy recovered batch 2

- `cacheOP` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10bb8
  **Inferred.** Reads a descriptor passed in a0, with fields at +0x0, +0x8, +0xc, +0x10 and +0x14, and writes three words at 0x10c1c, 0x10c24 and 0x10c30. Its one indirect call at 0x10c10 has no resolved target, and a2 is set to the constant 0x10c18, a code address inside this routine.
  Reviewed: 2026-11-12 (sonnet)

- `__prefetch_store` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10d34
  **Inferred.** Tests a1 with `blez` at 0x10d34, which sends a1 at or below zero to the return at 0x10d5c, and tests the sign again with `bgez` at 0x10d54, which loops back to 0x10d48. The rendered facts show no memory access, cache operation or call, so nothing here confirms the prefetch named in the routine.
  Reviewed: 2026-11-12 (sonnet)

- `__prefetch_load` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10d64
  **Inferred.** Has the same shape as the store variant 48 bytes earlier: `blez` at 0x10d64 sends a1 at or below zero to the return at 0x10d8c, and `bgez` at 0x10d84 loops back to 0x10d78. The rendered facts show no memory access or cache operation, so the prefetch named in the routine is not confirmed.
  Reviewed: 2026-11-12 (sonnet)

- `cache_tag_ecc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10d94
  **Inferred.** Compares a1, which holds the address sym(.data)+0x6f8, with the address of the symbol `pi_err_status_cmd` at 0x10dc8, leaving through 0x10e0c when they are equal. It loads a word at +0x6f8 at 0x10dd4 from a base the facts do not name, and tests a2 against zero at 0x10ddc, branching to 0x10df4 when it is zero. The name suggests an ECC check on cache tags, but no cache-tag instruction appears in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `dobuserre` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1c120
  **Inferred.** This looks like a bus-error dispatcher. It calls `check_ni_errors` at 0x1c17c, `hubni_error_handler` at 0x1c18c when `check_ni_errors` returns nonzero, and `vtop_attr_get` at 0x1c1a4; the facts do not give the conditions for the first and third calls. The beq at 0x1c184 skips the `hubni_error_handler` call when `check_ni_errors` returns zero. It then branches on a3 against 0x2, 0x4, 0x5 and 0x7 and on the word at -0x3fe0. Per-class handlers are called by name: `handle_uncac_buserr` at 0x1c404, `handle_cac_buserr` at 0x1c434, `handle_hspec_buserr` at 0x1c4c0, `handle_mspec_buserr` at 0x1c50c and `handle_io_buserr` at 0x1c53c. Some paths log through `cmn_err_tag` with message IDs between 0xb58 and 0xb5c, and some reach `kl_panic` or `assfail`; the facts do not show which conditions lead to each. The meaning of the a3 codes is inferred from the callee names.
  Reviewed: 2026-11-12 (sonnet)

- `intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2033c
  **Inferred.** Looks like an interrupt dispatcher. Its branch chain tests a3 (held in s0) against the masks 0x4000, 0x800, 0x2000, 0x8000, 0x100, 0x400 and 0x200, tests the word at -0x3d80 against 0x20, compares a value with 0x30 at 0x20364 and tests a value against 0xff00 at 0x2038c. When the 0x4000, 0x800, 0x2000, 0x8000, 0x100, 0x400 or 0x200 bit is set, the code calls `splx` with a0 loaded from `cause_intr_tbl` and then makes a handler call: unresolved indirect calls at 0x203c0, 0x20460 and 0x20560, and calls shown as `early_counter_intr` at 0x204a0 and `timein` at 0x204dc and 0x20508. It calls `intr_stray` at 0x20570, the target taken when the test of 0x200 at 0x20548 finds the bit clear. It also calls `log_tstamp_event` with a0 = 0x66 at 0x2058c and with a0 = 0x65 at 0x205a8; the facts do not show the conditions for these.
  Reviewed: 2026-11-12 (sonnet)

- `idle_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20600
  **Inferred.** Calls `dobuserre` at 0x20640 with a2 set to zero. The branches at 0x2062c (a4 == 0x18, jumping to 0x20638) and 0x20634 (a4 != 0x1c, jumping to 0x20648) decide whether the call is reached; the jump at 0x20634 skips it. Then it reads the bad virtual address with `getbadvaddr` at 0x20648 and reports it through `cmn_err` at 0x2066c. The facts show a7 = 0x1c at the `dobuserre` call, the same 0x1c that `dobuserre` holds in s7 and compares against. The facts do not show when this runs, so its place in the idle path is inferred from the calls.
  Reviewed: 2026-11-12 (sonnet)

- `earlynofault` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2068c
  **Inferred.** Compares a1 with the constant 0x1c at 0x20690 and returns through 0x2069c with v0 equal to 0 or 1. The facts do not show which value the taken branch selects, so the meaning of the result is not settled. The name suggests an early no-fault check, which these facts neither confirm nor refute.
  Reviewed: 2026-11-12 (sonnet)

- `sendintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x206a4
  **Inferred.** Loads a byte at +0x528 and a halfword at +0x42c, and a doubleword at +0x8 earlier, from a base the facts do not name. It stores a doubleword at 0x20700, and compares a1 with 0xab at 0x206dc, jumping to 0x20704 when equal. The return at 0x206fc gives v0 = 0. The facts do not show the stored value, the store target or what the 0xab test selects, so the mechanism is not settled.
  Reviewed: 2026-11-12 (sonnet)

- `debug_stop_all_cpus` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20c74
  **Inferred.** Loops over a counter against the `maxcpus` symbol: the routine returns when `maxcpus` is at or below zero (blez at 0x20c90) and when the counter reaches `maxcpus` (0x20cfc). It calls `get_cpu_slice` at 0x20ca4 and `cpu_enabled` at 0x20d14, and branches on the result of `cpu_enabled` at 0x20d28. It compares a halfword at -0x3bd8 with the counter at 0x20d08, and stores a doubleword at 0x20cec, with a target the facts do not resolve. The name suggests it halts every CPU for debugging, but the stop mechanism is not visible in the rendered facts.
  Reviewed: 2026-11-12 (sonnet)

- `tfi_save` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21800
  **Inferred.** Its 56-byte body holds eleven doubleword stores, from 0x21800 onward, through a base register the facts do not name. It reads as a register save block. The return at 0x21830 gives an unknown v0, and the facts do not show which registers are saved.
  Reviewed: 2026-11-12 (sonnet)

- `tfi_restore` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21838
  **Inferred.** Its 56-byte body holds eleven doubleword loads, from 0x21838 onward, from an unnamed base. Read against `tfi_save` at 0x21800, it looks like the restore half of a save and restore pair. The facts show the loads but not the base or the restored set, and the return at 0x21868 gives an unknown v0.
  Reviewed: 2026-11-12 (sonnet)

- `assfail` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21874
  **Inferred.** Stores doublewords at offsets from +0x8 up to +0x160 of a base the facts do not name; the name `_assregs` is not in the facts. It loads the word `panic_cpu` at 0x218ac and stores a word at 0x218d0 whose base the facts do not name. When `panic_cpu` holds a value other than -1, the branch at 0x218b0 jumps to 0x21ca8. At 0x21ca8 it tail-calls `_assfail` with its own a0 to a3 unchanged.
  Reviewed: 2026-11-12 (sonnet)

- `getpc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21ccc
  **Established.** The body is 8 bytes. The return at 0x21ccc sets `v0` from `ra`, and no callee or constant appears, so it returns the return-address register.
  Reviewed: 2026-11-12 (sonnet)

- `getsp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21cd4
  **Established.** The body is 8 bytes. The return at 0x21cd4 sets `v0` from `sp`, and no callee or constant appears, so it returns the stack pointer.
  Reviewed: 2026-11-12 (sonnet)

- `getpcsp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21cdc
  **Inferred.** Stores doublewords at 0x21cdc and 0x21ce4, each at offset 0 of a base the facts do not name, and returns at 0x21ce0 with an unknown v0. Its neighbours `getpc` and `getsp` suggest the stores write the return address and stack pointer through a0 and a1, but neither the bases nor the stored values are shown in the rendered facts.
  Reviewed: 2026-11-12 (sonnet)

- `getgp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21ce8
  **Established.** The body is 8 bytes. The return at 0x21ce8 sets `v0` from `gp`, and no callee or constant appears, so it returns the global pointer.
  Reviewed: 2026-11-12 (sonnet)

- `get_sr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d14
  **Inferred.** Not derived. The facts give a 12-byte body and one return at 0x21d18 with v0 unknown. No register or memory operation is decoded, so the role is not settled and the name is not evidence.
  Reviewed: 2026-11-12 (sonnet)

- `set_sr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d20
  **Inferred.** Not derived. The facts give a 12-byte body and one return at 0x21d24 with v0 unknown. No operation is decoded, so the role is not settled.
  Reviewed: 2026-11-12 (sonnet)

- `get_lladdr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d2c
  **Inferred.** Not derived. The facts give a 12-byte body and one return at 0x21d30 with v0 unknown. No operation is decoded, so the role is not settled.
  Reviewed: 2026-11-12 (sonnet)

- `set_lladdr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d38
  **Inferred.** Not derived. The facts give a 12-byte body and one return at 0x21d3c with v0 unknown. No operation is decoded, so the role is not settled.
  Reviewed: 2026-11-12 (sonnet)

- `do_sync_instruction` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d44
  **Inferred.** Not derived. The facts give a 12-byte body and one return at 0x21d48 with v0 unknown. No operation is decoded, so the role is not settled.
  Reviewed: 2026-11-12 (sonnet)

- `siron` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d50
  **Inferred.** Not derived. The facts give a 40-byte body and one return at 0x21d70 with v0 unknown. No operation is decoded, so the role is not settled.
  Reviewed: 2026-11-12 (sonnet)

- `siroff` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21d78
  **Inferred.** Not derived. The facts give a 44-byte body and one return at 0x21d9c with v0 unknown. No operation is decoded, so the role is not settled.
  Reviewed: 2026-11-12 (sonnet)

- `flushbus` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21da4
  **Inferred.** Not derived. The facts give a 16-byte body and one return at 0x21dac with v0 unknown. No operation is decoded, so the role is not settled.
  Reviewed: 2026-11-12 (sonnet)
