# Tier-2 routine roles, odsy batch 7

Targets 175 to 199 of the t2list ranking are all in the IP35boot kernel object, `usr/cpu/sysgen/IP35boot/kernel.o`. The rendered facts give offsets, callees and constants but not the meaning of the code, so every role below is inferred unless marked otherwise. Names of routines and callees come from the binary's symbols.

- `utlbmissj` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e294
  **Inferred.** A 32-byte stub that jumps straight to `utlbmiss` with the `j` at 0x2e2a4, passing a0 to a3 unchanged. The two words at 0x2e2ac to 0x2e2b0 are not reached from entry, and the facts do not say what they are.

- `_ecc_errorvec` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e2c0
  **Inferred.** Stores doublewords to fixed low addresses 0x4c8, 0x4d0 and 0x400 (the `sd` at 0x2e2c0 to 0x2e2c8), then loads a doubleword from 0xfd8 and branches on it at 0x2e2f4 (`bne` to 0x2e304). It leaves through an indirect `jr` at 0x2e308 whose target the facts do not resolve, so the exit path is unknown. The name points to an ECC error vector, and the saved words are the only part the facts settle.

- `set_nvram` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e5a8
  **Inferred.** A 636-byte string parser. It copies its argument into a stack buffer with `strcpy` at 0x2e690 and copies the buffer back out at 0x2e7e4, compares it with `strcmp` against one `.rodata` string at offset 49640 at about a dozen call sites from 0x2e5d8 to 0x2e7d4, and calls `inet_addr` at 0x2e698, testing the result against -1 at 0x2e6a4. It stores single bytes through a1 at offsets 0 to 3 and tests the byte 0x79 at 0x2e80c. A call through the pointer at 0x2e4c0 (0x2e758) suggests a table of setters, but the facts do not say which variable is set.

- `VEC_addrerr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f0b0
  **Established.** An 8-byte stub whose only action is a direct jump to `VEC_trap` at 0x2f0b0, with the argument registers passed through unchanged.

- `VEC_tlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f0c0
  **Inferred.** Calls `tlbmiss` at 0x2f0d0 with a0, a1 and a3 passed through. When `tlbmiss` returns zero it jumps to `exception_exit` at 0x2f0ec, and when it returns nonzero (`bne` at 0x2f0dc to 0x2f0f4) it jumps to `soft_trap` at 0x2f0fc, passing the return value and the doubleword at a0+0x118. It also loads from a0+0xf8 and from an unresolved base at 0x2f0c0.

- `dprintf` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f104
  **Inferred.** A 560-byte debug print helper. It checks the doubleword at 0xa800000000001000 against 0x53435241 (`bne` at 0x2f160), and checks the pointer at 0xa800000000001020 against the constant 0xfffffffffeeddead. It indexes a per-CPU table by `getcpuid` shifted left 4 and branches on `cn_is_inited` (0x2f1e4) and `spinlock_initialized` on `putbuflck` (0x2f220). Its output calls are `arcs_printf` at 0x2f288 and `cmn_err` at 0x2f324, the latter with 0x6 as its first argument.

- `sendSIGFPE` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f614
  **Inferred.** An 80-byte routine that loads the per-CPU pointer from 0xffffffffffffc018 (written -0x3fe8 in the facts) and reads a word through it. It stores a word at offset 0x0 of the structure at +1008 only when that loaded value equals a0 (`bne` at 0x2f628). It calls `sigtouthread` with signal 8 (the usual SIGFPE number) at 0x2f640 and then `checkfp` at 0x2f64c, returning the result of `checkfp`.

- `softfp_dispatch` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f790
  **Inferred.** The software floating-point dispatcher, 2608 bytes. It calls `checkfp` at 0x2f7b4 unless the `force_checkfp` word is zero, then `get_current_abi` (0x2f7d0), `load_fpcsr` (0x2f7d8) and `fp_init_glob` (0x2f84c). It shifts a1 by 0xf, 0xa, 0x14 and 0x19 and tests the results, which suggests a1 is the faulting instruction word, but the facts do not name the opcode fields. It calls `illfpinst` on many paths and `fpload_d`, `fpload_s`, `_cvtsd_l`, `_cvtsd_w` and `_comp_sd` on others. Three indirect jumps at 0x2f9b4, 0x2fc30 and 0x2fc88 use jump tables whose targets are unresolved, so the full case list is unknown.

- `illfpinst` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x301c0
  **Inferred.** The unimplemented-instruction path, 56 bytes long. It calls `softfp_psignal` with signal code 4 (the usual SIGILL number) at 0x301d4, then calls `checkfp` at 0x301e0, and returns the constant 1. The name fits the case.

- `_rsqrt_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x301f8
  **Inferred.** An 836-byte double-precision helper; the name suggests a reciprocal square root. It classifies its operand with `breakout_and_test_sd` at 0x3021c. On the NaN and infinity paths it posts signal 8 with `post_sig` and stores a quiet NaN or infinity with `fpstore_sd` (0x30410, 0x304dc). The main path calls `_div_sd` at 0x302c0. Its tables EXP_INF, EXP_BIAS, EXP_SHIFT, EXP_MIN and SIGN_SHIFT are indexed by a0, which selects a format or variant that the facts do not name.

- `_cvtsd_l` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3053c
  **Inferred.** A 348-byte routine, named as a conversion of a double to a 64-bit integer. It takes the operand bits in a1 and returns early when a1 is zero (`beq` at 0x30554) or equal to 0x8000000000000000 (0x30564). It rounds through a function pointer from the `round` table indexed by a0 (0x305d0), scales with the MTWOP63 table at 0x30634, and reports through `fpstore_sd` and `store_fpcsr`. It calls `renorm_d` on the normal path at 0x3064c.

- `fpstore_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30698
  **Inferred.** A 76-byte selector. It reads two state bytes at offsets 0x559 and 0x55a from the per-CPU block, then tests a0 at 0x306b0. A nonzero a0 calls `fpstore_d` at 0x306bc, and a zero a0 calls `fpstore_s` at 0x306d4, both with the same registers. The facts do not say what a0 means, only which store it selects.

- `fpstore_d` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x306e4
  **Inferred.** The double-precision store from the FP unit, 224 bytes. It raises the interrupt level with `splhi`, reads the doubleword at 0xffffffffffffc4e8 (written -0x3b18), and compares it with the per-CPU pointer at 0x30718, which skips part of the setup when they match. It calls `getsr` and `setsr` with 0x20000000 (the coprocessor 1 enable bit of the MIPS status register), then calls `fpunit_fpstore_d` at 0x30780 and restores the level with `splx`. It writes doublewords into the save array at +0x28 and +0x30 for an index taken from a1.

- `fpstore_s` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x307c4
  **Inferred.** The single-precision counterpart of `fpstore_d`, 168 bytes. It uses the same level change, the same 0x20000000 status bit and the same ownership test at 0x307f4, then calls `fpunit_fpstore_s` at 0x30820. It writes one doubleword at +0x28 of the save array (the `sd` at 0x30850).

- `fpload_d` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3086c
  **Inferred.** The double-precision load into the FP unit, 204 bytes. It follows the `fpstore_d` pattern: `splhi`, the same ownership test at 0x30898, `getsr` and `setsr` with 0x20000000, then `fpunit_fpload_d` at 0x308fc and `splx`. It reads doublewords from the save array at +0x28 and +0x30 for the index in a0, and returns that value or the result of `fpunit_fpload_d`.

- `fpload_s` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30938
  **Inferred.** The single-precision load, 168 bytes. It follows the `fpload_d` pattern with the same level change and status bit, calls `fpunit_fpload_s` at 0x30988, and reads one doubleword from the save array at +0x28 (0x309c0).

- `store_fpcsr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x309e0
  **Inferred.** Saves the FP control word, 180 bytes long. It tests bit 0x10 of the byte at offset 0x559 (`beq` at 0x309f8 and 0x30a14), stores a word at +0x130 of the save block (0x30a20), and calls `set_fpc_csr` at 0x30a5c after setting the 0x20000000 status bit with `setsr`. The name suggests the word goes to the FP control register, which the facts show only as a call.

- `load_fpcsr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30a94
  **Inferred.** Reads the saved FP control word at +0x130 of the per-CPU block (0x30abc) and calls `get_fpc_csr` at 0x30af4 after `splhi` and a status change. The facts show a read of the saved word and a call to `get_fpc_csr`, with no call to `set_fpc_csr`, so the direction of the transfer is not settled.

- `post_sig` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30b04
  **Inferred.** An 80-byte signal poster. It sets the flag byte at +0x559 (`sb` at 0x30b3c), calls `softfp_psignal` at 0x30b28 with words from the per-CPU block at +1356 and +1344 and the caller's a0 and a3, and calls `checkfp` at 0x30b44 on one path. A flag bit test at 0x30b14 chooses between the two paths.

- `fp_init_glob` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30b54
  **Inferred.** Initializes the software FP state, 72 bytes. It stores a doubleword at +0x540, words at +0x54c and +0x548, and bytes at +0x558, +0x559 and +0x55a of the per-CPU block. It returns a4 with bit 0x4 set and bit 0x20 set or clear, and the facts do not say which.

- `breakout_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30b9c
  **Inferred.** A 224-byte unpacking helper. It takes a format index in a0, with the table lookups for EXP_SHIFT, EXP_MASK, SIGN_SHIFT and FRAC_MASK indexed by a0, and writes results through its pointer arguments: words through a2 and a3, a doubleword through a4 (0x30c04, 0x30c30) and a doubleword through a1 (0x30c40). It may call `post_sig` with signal 8 at 0x30c68 on the paths gated by the tests at 0x30c14 to 0x30c60.

- `screen_nan_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30c7c
  **Inferred.** A 200-byte NaN check on the operand in a1. It compares the exponent field against the EXP_NAN table at 0x30c9c and tests the signalling bit through SNANBIT_MASK at 0x30cb0. For a signalling NaN it posts signal 8 through `post_sig` (0x30cdc) and stores the quiet NaN from the QUIETNAN table through `fpstore_sd` (0x30d10, 0x30d34). It returns 0 or 1 from one shared exit at 0x30cf4.

- `breakout_and_test_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30d44
  **Inferred.** A 96-byte wrapper. It calls `breakout_sd` at 0x30d5c with its own arguments, then calls `screen_nan_sd` at 0x30d7c with the loaded operand and the second and third pointer arguments. It returns 0 or 1 from the result of `screen_nan_sd` (`beq` at 0x30d88).

- `breakout_and_test2_sd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x30da4
  **Inferred.** A 408-byte routine that unpacks and screens two operands. It calls `breakout_sd` at 0x30dd8 for the first, and at 0x30df0 for the second with the arguments in a5 to a7. It checks both against the EXP_NAN table and SNANBIT_MASK, posts signal 8 through `post_sig` (0x30e90) when a signalling NaN is found, and stores results through `fpstore_sd` at 0x30ed8, 0x30f04 and 0x30f2c. It returns 0 or 1 from the exit at 0x30eb8.
