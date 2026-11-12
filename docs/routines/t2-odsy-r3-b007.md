# Tier-2 routine roles, odsy batch 7

Targets 175 to 199 of the t2list ranking are all in the IP35boot kernel object, `usr/cpu/sysgen/IP35boot/kernel.o`. The rendered facts give offsets, callees and constants but not the meaning of the code, so every role below is inferred unless marked otherwise. Names of routines and callees come from the binary's symbols.

- `utlbmissj` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e294
  **Inferred.** A 32-byte stub that jumps straight to `utlbmiss` with the `j` at 0x2e2a4, passing a0 to a3 unchanged. The two words at 0x2e2ac to 0x2e2b0 are not reached from entry, and the facts do not say what they are.
  Reviewed: 2026-11-12 (sonnet)

- `_ecc_errorvec` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e2c0
  **Inferred.** Executes three doubleword stores (`sd` at 0x2e2c0, 0x2e2c4 and 0x2e2c8) whose target addresses the facts do not resolve, then loads a doubleword from 0xfd8 and branches on it at 0x2e2f4 (`bne` to 0x2e304 when it is nonzero). It leaves through an indirect `jr` at 0x2e308 whose target the facts do not resolve, so the exit path is unknown. Role (from name): an ECC error vector. The stores and the load of 0xfd8 are the only part the facts settle.
  Reviewed: 2026-11-12 (sonnet)

- `set_nvram` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e5a8
  **Inferred.** A 636-byte string parser. It calls `strlen` at 0x2e5c4 and copies its second argument into a stack buffer with `strcpy` at 0x2e690. It calls `strcmp` 14 times against one `.rodata` string at offset 49640 (calls from 0x2e5d8 to 0x2e7d4) and once against a `.data` string at offset 15672 (0x2e6e0). It calls `inet_addr` on its second argument at 0x2e698 and takes a different branch when the result is -1 (`beq` at 0x2e6a4 to 0x2e7f4). It stores four single bytes at offsets 3, 2, 1 and 0 from a base the facts do not resolve (0x2e6ac to 0x2e6c8) and tests whether a loaded byte is 0x79 at 0x2e80c. It calls `set_nvram_offset` through the pointer at 0x2e4c0 at 0x2e758, and copies the stack buffer back to its second argument with `strcpy` at 0x2e7e4 on the path where a `strcmp` at 0x2e76c matches. The facts do not say which variable is set.
  Reviewed: 2026-11-12 (sonnet)

- `VEC_addrerr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f0b0
  **Established.** An 8-byte stub whose only action is a direct jump to `VEC_trap` at 0x2f0b0, with the argument registers passed through unchanged.
  Reviewed: 2026-11-12 (sonnet)

- `VEC_tlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f0c0
  **Inferred.** Calls `tlbmiss` at 0x2f0d0 with a0, a1 and a3 passed through. When `tlbmiss` returns zero it jumps to `exception_exit` at 0x2f0ec, and when it returns nonzero (`bne` at 0x2f0dc to 0x2f0f4) it jumps to `soft_trap` at 0x2f0fc, passing the return value and the doubleword at a0+0x118. It also loads from a0+0xf8 and from an unresolved base at 0x2f0c0.
  Reviewed: 2026-11-12 (sonnet)

- `dprintf` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f104
  **Inferred.** A 560-byte debug print helper (role from name). It checks that the doubleword at 0xa800000000001000 equals 0x53435241 (`bne` at 0x2f160), then loads the pointer at 0xa800000000001020, tests it for zero and compares the word it points to with the constant 0xfffffffffeeddead (`bne` at 0x2f174), and tests the doubleword at offset 0x18 of that structure for zero (`beq` at 0x2f180). One path makes an unresolved indirect call at 0x2f1cc. It calls `cn_is_inited` at 0x2f1dc and branches on the result (0x2f1e4), indexes a per-CPU table by `getcpuid` shifted left 4, and calls `spinlock_initialized` on `putbuflck` (0x2f218) and branches on the result (0x2f220). Its output calls are `arcs_printf` at 0x2f288 and `cmn_err` at 0x2f324, the latter with 0x6 as its first argument.
  Reviewed: 2026-11-12 (sonnet)

- `sendSIGFPE` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f614
  **Inferred.** An 80-byte routine that loads the per-CPU pointer from 0xffffffffffffc018 (written -0x3fe8 in the facts) and reads a word through it. It stores a word at offset 0x0 of the structure at +1008 only when that loaded value equals a0 (`bne` at 0x2f628). It calls `sigtouthread` with signal 8 (the usual SIGFPE number) at 0x2f640 and then `checkfp` at 0x2f64c, returning the result of `checkfp`.
  Reviewed: 2026-11-12 (sonnet)

- `softfp_dispatch` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f790
  **Inferred.** The software floating-point dispatcher (role from name), 2608 bytes. It calls `checkfp` at 0x2f7b4 only when the `force_checkfp` word is nonzero. It then calls `get_current_abi` (0x2f7d0) and `load_fpcsr` (0x2f7d8), and calls `fp_init_glob` at 0x2f84c; the facts show branches at 0x2f7f8 and 0x2f808 that go to 0x2f81c, so whether the `fp_init_glob` call is conditional is not settled. It shifts a1 by 0xf, 0xa, 0x14 and 0x19 and tests the results, which suggests a1 is the faulting instruction word, but the facts do not name the opcode fields. It calls `illfpinst` on many paths and `fpload_d`, `fpload_s`, `_cvtsd_l`, `_cvtsd_w` and `_comp_sd` on others. The loads at 0x2f9b0, 0x2fc2c and 0x2fc84 have unresolved bases, so the full case list is unknown.
  Reviewed: 2026-11-12 (sonnet)

- `illfpinst` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x301c0
  **Inferred.** The unimplemented-instruction path, 56 bytes long. It calls `softfp_psignal` with signal code 4 (the usual SIGILL number) at 0x301d4, then calls `checkfp` at 0x301e0, and returns the constant 1. The name fits the case.
  Reviewed: 2026-11-12 (sonnet)

- `_rsqrt_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x301f8
  **Inferred.** An 836-byte double-precision helper; the name suggests a reciprocal square root. It classifies its operand with `breakout_and_test_sd` at 0x3021c and branches on the result (0x30224). On several paths it tests a bit of the word at +1356 of the per-CPU block (0x800 at 0x30274 and 0x3044c, 0x400 at 0x303e4) and, depending on that test, calls `post_sig` with signal 8 (0x3027c, 0x303ec, 0x30454) and `store_fpcsr`, or calls `fpstore_sd` (0x30410, 0x304b8, 0x304dc, 0x30518). The stores at 0x30410 and 0x304dc pass an entry of the `QUIETNAN` table. A `_div_sd` call at 0x302c0 is on one path. Tables `EXP_INF`, `EXP_SHIFT`, `SIGN_SHIFT`, `QUIETNAN`, `IMP_1BIT` and `renorm` are indexed by a0, which selects a format or variant that the facts do not name.
  Reviewed: 2026-11-12 (sonnet)

- `_cvtsd_l` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3053c
  **Inferred.** A 348-byte routine, named as a conversion of a double to a 64-bit integer. It takes the operand bits in a1 and branches when a1 is zero (`beq` at 0x30554 to 0x3067c, which reaches `fpstore_sd` with 0 at 0x30680 and `store_fpcsr`) or equal to 0x8000000000000000 (0x30564 to 0x30624, which reaches `fpstore_sd` with the `MTWOP63` table entry at 0x30630 and `store_fpcsr`). On another path it makes an unresolved call at 0x305d0 through a function pointer from the `round` table indexed by a0, and on another it calls `renorm_d` at 0x3064c.
  Reviewed: 2026-11-12 (sonnet)

- `fpstore_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30698
  **Inferred.** A 76-byte selector. It reads two state bytes at offsets 0x559 and 0x55a from the per-CPU block, then tests a0 at 0x306b0. A nonzero a0 calls `fpstore_d` at 0x306bc, and a zero a0 calls `fpstore_s` at 0x306d4, both with the same registers. The facts do not say what a0 means, only which store it selects.
  Reviewed: 2026-11-12 (sonnet)

- `fpstore_d` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x306e4
  **Inferred.** The double-precision store from the FP unit, 224 bytes. It calls `splhi` at 0x30704, reads the doubleword at 0xffffffffffffc4e8 (written -0x3b18) and compares it with the per-CPU pointer at 0x30718. When they are equal (`beq` to 0x3075c) it calls `getsr` and `setsr` with 0x20000000 (the coprocessor 1 enable bit of the MIPS status register), then `fpunit_fpstore_d` at 0x30780, and restores the level with `splx`. When they differ it calls `splx` at 0x30720 and writes doublewords at +0x28 (0x3073c, 0x307a4) and +0x30 (0x307c0) of the save array reached through offset 0x3f0, for an index taken from a1.
  Reviewed: 2026-11-12 (sonnet)

- `fpstore_s` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x307c4
  **Inferred.** The single-precision counterpart of `fpstore_d`, 168 bytes. It uses the same level change, the same 0x20000000 status bit and the same ownership test at 0x307f4, then calls `fpunit_fpstore_s` at 0x30820. It writes one doubleword at +0x28 of the save array (the `sd` at 0x30850).
  Reviewed: 2026-11-12 (sonnet)

- `fpload_d` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3086c
  **Inferred.** The double-precision load into the FP unit, 204 bytes. It follows the `fpstore_d` pattern: `splhi`, the same ownership test at 0x30898, `getsr` and `setsr` with 0x20000000, then `fpunit_fpload_d` at 0x308fc and `splx`. It reads doublewords from the save array at +0x28 and +0x30 for the index in a0, and returns that value or the result of `fpunit_fpload_d`.
  Reviewed: 2026-11-12 (sonnet)

- `fpload_s` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30938
  **Inferred.** The single-precision load, 168 bytes. It follows the `fpload_d` pattern with the same level change and status bit, calls `fpunit_fpload_s` at 0x30988, and reads one doubleword from the save array at +0x28 (0x309c0).
  Reviewed: 2026-11-12 (sonnet)

- `store_fpcsr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x309e0
  **Inferred.** Role (from name): stores the FP control word; the facts show a call to `set_fpc_csr`, not which direction the word moves. It tests bit 0x10 of the byte at offset 0x559 (`beq` at 0x309f8 and 0x30a14) and stores a word at +0x130 of the save block (0x30a20). On one path it calls `splhi` and `splx`. The call to `set_fpc_csr` at 0x30a5c comes after `getsr` and `setsr` with the 0x20000000 status bit, and is reached only when the doubleword at 0xffffffffffffc4e8 equals the per-CPU pointer (`bne` at 0x30a40 not taken).
  Reviewed: 2026-11-12 (sonnet)

- `load_fpcsr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30a94
  **Inferred.** Calls `splhi` at 0x30aa0, then compares the doubleword at 0xffffffffffffc4e8 with the per-CPU pointer (`beq` at 0x30ab0). When they differ it reads the saved word at +0x130 of the save block (0x30abc) and restores the level with `splx`. When they are equal it calls `getsr` and `setsr` with the 0x20000000 status bit and then `get_fpc_csr` at 0x30af4. The facts show no call to `set_fpc_csr`, so the direction of the transfer is not settled.
  Reviewed: 2026-11-12 (sonnet)

- `post_sig` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30b04
  **Inferred.** An 80-byte signal poster (role from name). It tests bit 0x10 of the byte at +0x559 (`beq` at 0x30b14). When the bit is set it returns. When it is clear it loads the word at +0x54c, calls `softfp_psignal` at 0x30b28 with words from the per-CPU block at +1356 and +1344 and the caller's a0 and a3, stores a byte at +0x559 (`sb` at 0x30b3c), and calls `checkfp` at 0x30b44.
  Reviewed: 2026-11-12 (sonnet)

- `fp_init_glob` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30b54
  **Inferred.** Initializes the software FP state, 72 bytes. It stores a doubleword at +0x540, words at +0x54c and +0x548, and bytes at +0x558, +0x559 and +0x55a of the per-CPU block. It returns a4 with bit 0x4 set and bit 0x20 set or clear, and the facts do not say which.
  Reviewed: 2026-11-12 (sonnet)

- `breakout_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30b9c
  **Inferred.** A 224-byte unpacking helper (role from name). It takes a format index in a0; the facts show a `SIGN_SHIFT` table entry indexed by a0, and other table loads have unresolved bases. Its stores are words at 0x30bc0, 0x30bd4 and 0x30bf4 and doublewords at 0x30c04, 0x30c30 and 0x30c40, with base registers that the facts do not resolve. It may call `post_sig` with signal 8 at 0x30c68 on the path gated by the tests at 0x30c14 to 0x30c60.
  Reviewed: 2026-11-12 (sonnet)

- `screen_nan_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30c7c
  **Inferred.** A 200-byte NaN check (role from name). It compares a2 with the `EXP_NAN` table entry indexed by a0 (`bne` at 0x30c9c) and tests a3 against the `SNANBIT_MASK` entry (`beq` at 0x30cb0). When the mask test is nonzero and bit 0x800 of the word at +1356 of the per-CPU block is set it calls `post_sig` with signal 8 at 0x30cdc and `store_fpcsr`; when that bit is clear it calls `fpstore_sd` with the `QUIETNAN` table entry at 0x30d34. The mask-zero path at 0x30d04 can call `fpstore_sd` at 0x30d10. It returns 0 or 1 from one shared exit at 0x30cf4.
  Reviewed: 2026-11-12 (sonnet)

- `breakout_and_test_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30d44
  **Inferred.** A 96-byte wrapper. It calls `breakout_sd` at 0x30d5c with its own arguments, then calls `screen_nan_sd` at 0x30d7c with a0 and the values loaded through a1 (doubleword), a3 (word) and a4 (doubleword). It returns 0 or 1 from the result of `screen_nan_sd` (`beq` at 0x30d88).
  Reviewed: 2026-11-12 (sonnet)

- `breakout_and_test2_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30da4
  **Inferred.** A 408-byte routine that appears to unpack and screen two operands. It calls `breakout_sd` at 0x30dd8 for the first and at 0x30df0 for the second, with the arguments in a5 to a7. It compares exponent words against the `EXP_NAN` table and tests fractions against `SNANBIT_MASK` (0x30e2c to 0x30e64, 0x30ec0, 0x30ef0). On one path it calls `post_sig` with signal 8 at 0x30e90 and `store_fpcsr`, and it calls `fpstore_sd` at 0x30ed8, 0x30f04 and 0x30f2c. It returns 0 or 1 from the exit at 0x30eb8.
  Reviewed: 2026-11-12 (sonnet)
