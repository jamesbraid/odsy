# libGLcore: the Odyssey driver routines in the other builds

The driver routines of [libglcore-odyssey-reads.md](libglcore-odyssey-reads.md) were read in the N32 build of the 6.5.30 `libGLcore.so` for IP30 (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`). The same names exist in the other builds listed in [docs/inventory/binaries.tsv](inventory/binaries.tsv): the o32 and 64-bit IP30 builds, the IP35 builds and the vpro-patch builds. Every row here gives one routine in one build, at that build's own address and size from the function table ([docs/inventory/functions.tsv](inventory/functions.tsv)). No N32 offset is copied into a row.

A copy is either identical to the N32 routine or it is not.

- **Identical copies** are listed in the first table. For each, the 32-bit instruction words of the copy were taken from the build's own disassembly (`objdump -d`) over the copy's address range and compared word for word with the N32 routine's words over its range. The function table gives the same code hash for both. The N32 routine was read in full, so an identical copy carries the same reading and is **established**. The row does not claim anything about the copy beyond its words matching.
- **Copies that differ** are in the second table, one row per build at that build's own address. Each row gives the body that was read in full and how it differs from the N32 routine, using the copy's own context offsets. Routines not yet in that table still have unread copies in the o32 and 64-bit IP30 builds, the IP35 o32 and 64-bit builds and the vpro-patch builds.

## Identical copies

Words compared: the number of instruction words in the routine, in N32 and in the copy, and how many matched. The function-table hash is the 12-digit code hash the inventory assigns to the routine in that build; it is the same for the N32 routine and for every identical copy.

| Routine | Binary | Address | Size | Words compared | Function-table hash | Label |
|---|---|---|---|---|---|---|
| `__glOdysseyValidateHardware` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd968180 | 4992 | 1238 of 1238 equal | 82cdffee9292 | Established |
| `__glOdysseyValidateHardware` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd968180 | 4992 | 1238 of 1238 equal | 82cdffee9292 | Established |
| `__glOdysseyInitDefaultValues` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd969ac0 | 3548 | 887 of 887 equal | d1e1ea6d4f27 | Established |
| `__glOdysseyInitDefaultValues` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd969ac0 | 3548 | 887 of 887 equal | d1e1ea6d4f27 | Established |
| `__glOdysseyValidateDispatchTable` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd970d30 | 1844 | 461 of 461 equal | f9fa0857f88d | Established |
| `__glOdysseyValidateDispatchTable` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd970d30 | 1844 | 461 of 461 equal | f9fa0857f88d | Established |
| `__glOdysseyValidateMatrixComb` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9e2f90 | 1652 | 413 of 413 equal | 4671e1c6aa6a | Established |
| `__glOdysseyValidateMatrixComb` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9e2f90 | 1652 | 413 of 413 equal | 4671e1c6aa6a | Established |
| `__glOdysseyUpdateTransform` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9e2980 | 1544 | 386 of 386 equal | dadbe1c4b2aa | Established |
| `__glOdysseyUpdateTransform` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9e2980 | 1544 | 386 of 386 equal | dadbe1c4b2aa | Established |
| `__glOdysseyValidateContext` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9697f0 | 716 | 179 of 179 equal | d314bfd3d91f | Established |
| `__glOdysseyValidateContext` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9697f0 | 716 | 179 of 179 equal | d314bfd3d91f | Established |
| `__glOdysseyValidateContextRasterMisc` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd969500 | 488 | 122 of 122 equal | f00cc2aeb347 | Established |
| `__glOdysseyValidateContextRasterMisc` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd969500 | 488 | 122 of 122 equal | f00cc2aeb347 | Established |
| `__glOdysseyValidateScissor` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9696f0 | 248 | 62 of 62 equal | ac34b9fa104a | Established |
| `__glOdysseyValidateScissor` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9696f0 | 248 | 62 of 62 equal | ac34b9fa104a | Established |
| `__glOdysseyValidateClipPlanes` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd967e40 | 832 | 206 of 206 equal | 2e84b1671c91 | Established |
| `__glOdysseyValidateClipPlanes` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd967e40 | 832 | 206 of 206 equal | 2e84b1671c91 | Established |
| `__glOdysseyValidateDepthRangeNewXform` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9e4d90 | 376 | 94 of 94 equal | c48c69279417 | Established |
| `__glOdysseyValidateDepthRangeNewXform` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9e4d90 | 376 | 94 of 94 equal | c48c69279417 | Established |
| `__glOdysseyValidateMatrixMV` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9e3610 | 368 | 92 of 92 equal | c6a31b6ebbf1 | Established |
| `__glOdysseyValidateMatrixMV` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9e3610 | 368 | 92 of 92 equal | c6a31b6ebbf1 | Established |
| `__glOdysseyValidateMatrixTex` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9e3a20 | 368 | 92 of 92 equal | d386314661ad | Established |
| `__glOdysseyValidateMatrixTex` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9e3a20 | 368 | 92 of 92 equal | d386314661ad | Established |
| `getCurrent` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9704c0 | 1800 | 450 of 450 equal | a876b3b63e4d | Inferred |
| `getCurrent` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9704c0 | 1800 | 450 of 450 equal | a876b3b63e4d | Inferred |
| `PreEvaluate` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd976a40 | 404 | 101 of 101 equal | b10361ae4235 | Established |
| `PreEvaluate` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd976a40 | 404 | 101 of 101 equal | b10361ae4235 | Established |
| `PreEvaluateWithDeriv` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd976be0 | 864 | 216 of 216 equal | 04c47a8dceb5 | Established |
| `PreEvaluateWithDeriv` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd976be0 | 864 | 216 of 216 equal | 04c47a8dceb5 | Established |
| `DoDomain1` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd976f40 | 1444 | 361 of 361 equal | 30df4761e784 | Established |
| `DoDomain1` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd976f40 | 1444 | 361 of 361 equal | 30df4761e784 | Established |
| `DoDomain2` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd977d80 | 8168 | 2042 of 2042 equal | fb1424ec1a73 | Established |
| `DoDomain2` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd977d80 | 8168 | 2042 of 2042 equal | fb1424ec1a73 | Established |
| `DoDomain2WithDerivs` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd979d70 | 10396 | 2599 of 2599 equal | 3177f071abb1 | Inferred |
| `DoDomain2WithDerivs` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd979d70 | 10396 | 2599 of 2599 equal | 3177f071abb1 | Inferred |
| `DoEvalCoord1` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd977830 | 948 | 237 of 237 equal | e739f970e953 | Established |
| `DoEvalCoord1` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd977830 | 948 | 237 of 237 equal | e739f970e953 | Established |
| `ComputeFirstPartials` | `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0x21bb670 | 156 | 39 of 39 equal | 6652c635ac34 | Established |
| `ComputeFirstPartials` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd977c70 | 156 | 39 of 39 equal | 6652c635ac34 | Established |
| `ComputeFirstPartials` | `usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0x320b670 | 156 | 39 of 39 equal | 6652c635ac34 | Established |
| `ComputeFirstPartials` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd977c70 | 156 | 39 of 39 equal | 6652c635ac34 | Established |
| `ComputeFirstPartials` | `usr/gfx/arch/IP35ODSY64/libGLcore.so` | 0x21bb670 | 156 | 39 of 39 equal | 6652c635ac34 | Established |
| `ComputeNormal2` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd977d10 | 100 | 25 of 25 equal | 673aa399880c | Established |
| `ComputeNormal2` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd977d10 | 100 | 25 of 25 equal | 673aa399880c | Established |
| `DoEvalCoord2` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd97c610 | 1484 | 371 of 371 equal | 839edc08cc3c | Established |
| `DoEvalCoord2` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd97c610 | 1484 | 371 of 371 equal | 839edc08cc3c | Established |
| `sendChange` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd97ced0 | 304 | 76 of 76 equal | 0ad41edb63cb | Established |
| `sendChange` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd97ced0 | 304 | 76 of 76 equal | 0ad41edb63cb | Established |
| `ApplyParameterF` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95c470 | 1168 | 292 of 292 equal | 1baf0b861e4b | Established |
| `ApplyParameterF` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95c470 | 1168 | 292 of 292 equal | 1baf0b861e4b | Established |
| `ApplyParameterI` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95cb50 | 1368 | 342 of 342 equal | e9aa2f3379b2 | Established |
| `ApplyParameterI` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95cb50 | 1368 | 342 of 342 equal | e9aa2f3379b2 | Established |
| `MakeCurrentRead` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd96af00 | 4500 | 1125 of 1125 equal | d3c6e613ab32 | Inferred |
| `MakeCurrentRead` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd96af00 | 4500 | 1125 of 1125 equal | d3c6e613ab32 | Inferred |
| `InitBuffers` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd967bc0 | 480 | 120 of 120 equal | 2732fd7816a5 | Established |
| `InitBuffers` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd967bc0 | 480 | 120 of 120 equal | 2732fd7816a5 | Established |
| `ApplyViewport` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd965ab0 | 616 | 154 of 154 equal | 813125eb34fd | Established |
| `ApplyViewport` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd965ab0 | 616 | 154 of 154 equal | 813125eb34fd | Established |

Notes on individual rows:

- `__glOdysseyValidateClipPlanes`: objdump prints `...` in place of two zero words at 0xd967f38 and 0xd967f3c, in the N32 build and in both copies. Those two words are not in the comparison. The 206 words shown match word for word.
- `getCurrent`, `MakeCurrentRead` and `DoDomain2WithDerivs` are **inferred** because their N32 entries are: the reads chapter says which parts were read in full. Their copies match the N32 words, so they take the N32 label.
- The copies under `usr/gfx/arch/IP30ODSY32` and `usr/gfx/arch/IP35ODSY32` (the paths without the `builds/6.5.30-media` prefix) call through their own `.got`. The IP35 copy's `.got` is word for word the N32 build's. The IP30 copy's `.got` differs in 36 words, all for imported symbols (dynamic symbol indexes 4283 to 4319, for example `bcopy` at 4300 and `floor` at 4319). The name at every GOT index from 4281 up is the same in the N32 build and in this copy, so each call through a gp slot reaches the same routine.
- The words in these rows were compared on the file bytes at each address, as 32-bit big-endian words, which are the words objdump prints. None of the routines has a direct `j` or `jal`, so no call target is an absolute address that could mean something else in another build.
- The 64-bit copies of `ComputeFirstPartials` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64` at 0x21bb670, and `usr/gfx/arch/IP30ODSY64` and `usr/gfx/arch/IP35ODSY64` at 0x320b670 and 0x21bb670) have the same 39 words as the N32 routine. Its body has no gp-relative load and no call, so the words are the whole comparison.

## Copies that differ

Each row is one routine in one build. "Body read" is the byte range of the routine's code that was disassembled and read in full, which ends at the return. Where a copy's table size runs past its return into the next routine, the table size is given with the body read. A row whose code hash equals the hash of an earlier row in this table reads the same bytes, so it takes that row's reading.

Context offsets are the copy's own. Several builds keep the context record with different field positions (the 64-bit builds use 8-byte pointers in it), so a copy's offsets are not the N32 offsets.

| Routine | Binary | Address | Table size | Body read | Function-table hash | Label | How it differs from the N32 routine |
|---|---|---|---|---|---|---|---|
| `__glOdysseyValidateScissor` | `usr/gfx/arch/IP30ODSY/libGLcore.so` (builds/6.5.30-media) | 0xd96c430 | 1392 | 360 bytes, 0xd96c430 to 0xd96c598 | dacb097cce56 | Established | Same steps as N32, and the same context offsets (shadow pair +0x7c20 and +0x7c24, saved pair +0x165b4 and +0x165b8, settle word +0x9830, bit-20 word +0x7b70). The routine starts with a PIC prologue that loads gp from t9 and saves gp and ra in a 56-byte frame. The ioctl argument block is copied from a zero-filled template in .data at 0xdaf8060 and each word's low 12 bits are then set to the field, so the four words sent equal the N32 block. The ioctl is called through the GOT slot at gp-30516, which holds 0xd9eb890, the address of `__glOdysseyIoctl` in this build. |
| `__glOdysseyValidateScissor` | `usr/gfx/arch/IP35ODSY/libGLcore.so` | 0xd96c430 | 1392 | same bytes as the IP30 o32 row | dacb097cce56 | Established | Same code hash as the IP30 o32 row above, so the same reading applies. |
| `__glOdysseyValidateScissor` | `usr/gfx/arch/IP30ODSY64/libGLcore.so` (builds/6.5.30-media) | 0x21ada40 | 256 | 256 bytes, all | b1229c1bfe60 | Established | Same steps as N32 in 64-bit code (ld, sd and daddu). Its own offsets: shadow pair +0x9f70 and +0x9f74, saved pair +0x18a24 and +0x18a28, settle word +0xbb80, bit-20 word +0x9ec0. The shadow is updated from the saved pair before the settle test, the settle block sends 0x10443, 250, 0x10046 and 0x10046, and the four ioctl fields are built as in N32. The ioctl is called through the GOT slot at gp-28272, which holds 0x221da60, the address of `__glOdysseyIoctl` in this build. |
| `__glOdysseyValidateScissor` | `usr/gfx/arch/IP35ODSY64/libGLcore.so` | 0x21ada40 | 256 | same bytes as the IP30 64-bit row | b1229c1bfe60 | Established | Same code hash as the IP30 64-bit row above, so the same reading applies. |
| `__glOdysseyValidateScissor` | `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` | 0xda48c88 | 1108 | 360 bytes, 0xda48c88 to 0xda48df0 | 0f6707a8cd52 | Established | Same steps as N32, with its own offsets: saved pair +0x16648 and +0x1664c, shadow pair +0x7b40 and +0x7b44, settle word +0x9750, bit-20 word +0x7a90. The FIFO stores go to absolute 0x4000 (`16384(zero)`), not to the 0x10000 window the IP30 builds use. The ioctl argument block comes from a zero-filled template in .data at 0xdbd1060, so the values equal the N32 values. The ioctl is called through the GOT slot at gp-30572, which holds 0xdabf6b0, the address of `__glOdysseyIoctl` in this build. |
| `__glOdysseyValidateScissor` | `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` | 0xda48c88 | 1108 | same bytes as the vpro-patch-4103 o32 row | 0f6707a8cd52 | Established | Same code hash as the vpro-patch-4103 o32 row above, so the same reading applies. |
| `__glOdysseyValidateScissor` | `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0xb33d140 | 268 | 268 bytes, all | 0461bc691e76 | Established | Same steps as N32 in 64-bit code. Its own offsets: shadow pair +0xa048 and +0xa04c, saved pair +0x18cd4 and +0x18cd8, settle word +0xbc58, bit-20 word +0x9f98. The FIFO stores go to absolute 0x4000. The ioctl is called through the GOT slot at gp-28400, which holds 0xb3a1ef0, the address of `__glOdysseyIoctl` in this build. |
| `__glOdysseyValidateScissor` | `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0xbd5d140 | 268 | same bytes as the vpro-patch-4103 64-bit row | 0461bc691e76 | Established | Same code hash as the vpro-patch-4103 64-bit row above, so the same reading applies. |
| `__glOdysseyValidateScissor` | `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` | none | none | none | none | Not located | No symbol of this name in the .dynsym or .symtab of this build, so the routine is not read here. |
| `__glOdysseyValidateScissor` | `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` | none | none | none | none | Not located | No symbol of this name in this build, as for vpro-patch-4103. |
| `Bogus` | `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` | 0xd976244 | 668 | 8 bytes, 0xd976244 to 0xd97624c | 2ea76de3acb7 | Established | Same two words as the N32 routine (`jr ra`, then `move v0,a0`), so it returns its argument unchanged as N32 does. The table size of 668 runs past the return into the following routines, and the hash covers those bytes too; that is why the hash differs from N32, not any difference in the body. |
| `__glOdysseyDlistOptimizer` | `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` | 0xd974948 | 12 | 12 bytes, 0xd974948 to 0xd974954 | 691e766163b1 | Established | Not an empty return as in N32. It stores a0 at 0(sp) and a1 at 4(sp), the caller's argument save words, with the second store in the delay slot of `jr ra`, and nothing else. The N32 routine is `jr ra` and a nop with no stores. |
| `InitialFree` | `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` | 0xd9687bc | 52 | 52 bytes, 0xd9687bc to 0xd9687f0 | 2f4829c14bb5 | Established | Not a thunk. It sets gp from t9 (lui 0x1a, addiu -9180, addu), saves ra and gp in a 32-byte frame, calls through the GOT slot at gp-32476 with `jalr t9`, restores ra and gp, pops the frame and returns. The slot holds `__glOdysseyFreeAttributeState` in this build (resolved from the build's GOT). a0 is not changed before the call. N32 jumps to the same callee with `jr t9`, so this copy returns through its own frame. |
| `InitialFree` | `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0x21aa0e0 | 12 | 12 bytes, 0x21aa0e0 to 0x21aa0ec | 356def7c4388 | Established | The same three-instruction thunk as N32, in 64-bit form: `ld t9,-32192(gp)`, `jr t9`, nop. The slot at gp-32192 (8-byte pointers in this build) holds `__glOdysseyFreeAttributeState`. N32 loads the slot at gp-32476. |
| `InitCSet` | `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` | 0xd9d9b58 | 20 | 20 bytes, 0xd9d9b58 to 0xd9d9b6c | eff91331ed67 | Established | Same stores to the same words as N32 (zero at +0, +8 and +12, a1 at +24), in a different order: zero at +0, +12 and +8, then `jr ra`, with `sw a1,24(a0)` in the delay slot. |
| `InitCSet` | `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0x220c420 | 20 | 20 bytes, 0x220c420 to 0x220c434 | 931c1c1883c7 | Established | 64-bit layout. `sw a1,32(a0)` stores the shift at +32 (N32 has it at +24), `sw zero` writes words at +16 and +20 (N32: +8 and +12), and the head is cleared by an 8-byte `sd zero,0(a0)` in the delay slot of `jr ra`. |
| `InitCSetCursor` | `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` | 0xd9d9f34 | 20 | 20 bytes, 0xd9d9f34 to 0xd9d9f48 | 2ab35aadc4ca | Established | Same stores as N32 (zero at +16 and +20, word 0 copied to word 4), in a different order: `lw t6,0(a0)`, `sw zero,16(a0)`, `sw zero,20(a0)`, `jr ra`, and `sw t6,4(a0)` in the delay slot. The copy uses t6 where N32 uses at. |
| `InitCSetCursor` | `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0x220c7f0 | 20 | 20 bytes, 0x220c7f0 to 0x220c804 | f3a5e060bb32 | Established | 64-bit layout. Zero words at +24 and +28 (N32: +16 and +20), then `ld at,0(a0)` and an 8-byte `sd at,8(a0)` in the delay slot of `jr ra`, so the first pointer-sized word is copied from +0 to +8 (N32: +0 to +4). |

## Copies with the same code hash

Each row is one routine in one build whose function-table code hash equals the hash of the N32 routine named in the reads chapter ([libglcore-odyssey-reads.md](libglcore-odyssey-reads.md)). The hash is the first 12 hex digits of the hash of the function's bytes, taken over the table size, and every row here has the same table size as its N32 routine. The inventory computed each hash over that build's own bytes, so an equal hash means equal bytes and the copy carries the N32 reading. The label is **Established** on the same terms as the first table. The matching was done by the inventory script; the copy was not disassembled row by row. One spot check was made by hand: `CheckMMXfrArgs`, 128 bytes at 0xd9c6ca0 in the N32 build and at 0x325b220 in the `usr/gfx/arch/IP30ODSY64` build, 32 words, equal in objdump. Copies whose hash differs from the N32 routine are not listed here.

| Routine | Binary | Address | Size | Function-table hash | Label |
|---|---|---|---|---|---|
| `__glOdysseyValidateMatrixNorm` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9e3780 | 660 | 59cb431d48d5 | Established |
| `__glOdysseyValidateMatrixNorm` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9e3780 | 660 | 59cb431d48d5 | Established |
| `__glOdysseyValidateFog` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd980cd0 | 1800 | c4e480869ca7 | Established |
| `__glOdysseyValidateFog` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd980cd0 | 1800 | c4e480869ca7 | Established |
| `__glOdysseyVertexWARClip` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9ef330 | 4452 | e1d6c1a3b302 | Established |
| `__glOdysseyVertexWARClip` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9ef330 | 4452 | e1d6c1a3b302 | Established |
| `__glOdysseySendShadowAttributes` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9eea40 | 1904 | 0324de302eed | Established |
| `__glOdysseySendShadowAttributes` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9eea40 | 1904 | 0324de302eed | Established |
| `__glOdysseySendShadowVertex` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9ef1b0 | 380 | a9db840c08c6 | Established |
| `__glOdysseySendShadowVertex` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9ef1b0 | 380 | a9db840c08c6 | Established |
| `__glOdysseySetProgram` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c9ee0 | 1220 | 29f0eda04415 | Established |
| `__glOdysseySetProgram` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c9ee0 | 1220 | 29f0eda04415 | Established |
| `__glOdysseyValidateProgram` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c9d90 | 332 | 3ce321b094d1 | Established |
| `__glOdysseyValidateProgram` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c9d90 | 332 | 3ce321b094d1 | Established |
| `__glOdysseyTextureActivate` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d1f90 | 1448 | 442445a773b0 | Established |
| `__glOdysseyTextureActivate` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d1f90 | 1448 | 442445a773b0 | Established |
| `__glOdysseyTextureDeactivate` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d2540 | 276 | 5fe5ff15c051 | Established |
| `__glOdysseyTextureDeactivate` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d2540 | 276 | 5fe5ff15c051 | Established |
| `__glOdysseyValidateTexture` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d26d0 | 1236 | 24aade9642b7 | Established |
| `__glOdysseyValidateTexture` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d26d0 | 1236 | 24aade9642b7 | Established |
| `__glOdysseyValidateTextureState` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d2bb0 | 1204 | 9ea9dc36b677 | Established |
| `__glOdysseyValidateTextureState` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d2bb0 | 1204 | 9ea9dc36b677 | Established |
| `__glOdysseyTextureDriverInit` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9cf7a0 | 460 | 719a52ce8cec | Established |
| `__glOdysseyTextureDriverInit` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9cf7a0 | 460 | 719a52ce8cec | Established |
| `__glOdysseyTextureSetMinFilter` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d5e40 | 860 | 57b25e635f18 | Established |
| `__glOdysseyTextureSetMinFilter` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d5e40 | 860 | 57b25e635f18 | Established |
| `__glOdysseyTextureSetMagFilter` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d61a0 | 356 | bacc497efeb5 | Established |
| `__glOdysseyTextureSetMagFilter` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d61a0 | 356 | bacc497efeb5 | Established |
| `__glOdysseyTextureSetOp` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d7ad0 | 616 | 758cba17c977 | Established |
| `__glOdysseyTextureSetOp` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d7ad0 | 616 | 758cba17c977 | Established |
| `__glOdysseyTextureSetDetailTable` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d8590 | 424 | a600f12341e2 | Established |
| `__glOdysseyTextureSetDetailTable` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d8590 | 424 | a600f12341e2 | Established |
| `__glOdysseyFindWindowSize` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9658c0 | 496 | e602dad60d9a | Established |
| `__glOdysseyFindWindowSize` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9658c0 | 496 | e602dad60d9a | Established |
| `__glOdysseyGetBoardInfoRaw` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d9b90 | 444 | 1b30721200f7 | Established |
| `__glOdysseyGetBoardInfoRaw` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d9b90 | 444 | 1b30721200f7 | Established |
| `__glOdysseyDriverMakeCurrent` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d9d50 | 604 | 4004b1e999e2 | Established |
| `__glOdysseyDriverMakeCurrent` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d9d50 | 604 | 4004b1e999e2 | Established |
| `__glOdysseyWindowToEyeZ` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9e4710 | 376 | 000aef98bfeb | Established |
| `__glOdysseyWindowToEyeZ` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9e4710 | 376 | 000aef98bfeb | Established |
| `__glOdysseyIsBboxClippedRange2` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd974500 | 280 | da9702aa9e2f | Established |
| `__glOdysseyIsBboxClippedRange2` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd974500 | 280 | da9702aa9e2f | Established |
| `__glOdysseyCreateContext` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd96c610 | 12648 | 070ef9c197f9 | Established |
| `__glOdysseyCreateContext` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd96c610 | 12648 | 070ef9c197f9 | Established |
| `ValidateLight` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c2ae0 | 776 | 46cfe56f96b8 | Established |
| `ValidateLight` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c2ae0 | 776 | 46cfe56f96b8 | Established |
| `ValidateLightColor` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c2df0 | 672 | 8d0eaf35912a | Established |
| `ValidateLightColor` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c2df0 | 672 | 8d0eaf35912a | Established |
| `ValidateFragmentLightColor` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c3090 | 1008 | aa532f58f4a6 | Established |
| `ValidateFragmentLightColor` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c3090 | 1008 | aa532f58f4a6 | Established |
| `__glOdysseyInitLighting` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c2230 | 856 | 39d2b8e9a6dd | Established |
| `__glOdysseyInitLighting` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c2230 | 856 | 39d2b8e9a6dd | Established |
| `__glOdysseyComputeLightState` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9f0bc0 | 764 | 0909844f8232 | Established |
| `__glOdysseyComputeLightState` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9f0bc0 | 764 | 0909844f8232 | Established |
| `__glOdysseyValidateFragment` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9821a0 | 760 | 10736c95818b | Established |
| `__glOdysseyValidateFragment` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9821a0 | 760 | 10736c95818b | Established |
| `ValidateFragmentColorMaterial` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd981fc0 | 468 | b469c1d09bff | Established |
| `ValidateFragmentColorMaterial` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd981fc0 | 468 | b469c1d09bff | Established |
| `__glOdysseyInitFragmentLighting` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9851c0 | 80 | d3f9dd643482 | Established |
| `__glOdysseyInitFragmentLighting` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9851c0 | 80 | d3f9dd643482 | Established |
| `__glOdysseyValidateSoftClipPlanes` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9ee360 | 1724 | 8daefb62c324 | Established |
| `__glOdysseyValidateSoftClipPlanes` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9ee360 | 1724 | 8daefb62c324 | Established |
| `__glOdysseySoftClipCalcRGBColor` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9f0fa0 | 2220 | 979fa9d13f1d | Established |
| `__glOdysseySoftClipCalcRGBColor` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9f0fa0 | 2220 | 979fa9d13f1d | Established |
| `__glOdysseySoftClipCalcCIColor` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9f1850 | 1564 | 9984c694488e | Established |
| `__glOdysseySoftClipCalcCIColor` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9f1850 | 1564 | 9984c694488e | Established |
| `__glOdysseySoftClipRenderTriangleFast` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9ea840 | 3852 | bc4716729bc4 | Established |
| `__glOdysseySoftClipRenderTriangleFast` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9ea840 | 3852 | bc4716729bc4 | Established |
| `__glOdysseyValidateTexGen` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9cf3e0 | 324 | 66ffb169751e | Established |
| `__glOdysseyValidateTexGen` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9cf3e0 | 324 | 66ffb169751e | Established |
| `updateTexGenCoord` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9cf240 | 408 | b8cfe36218cf | Established |
| `updateTexGenCoord` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9cf240 | 408 | b8cfe36218cf | Established |
| `__glOdysseyTextureSetMaxLOD` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d5de0 | 96 | 757294b5c1fd | Established |
| `__glOdysseyTextureSetMaxLOD` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d5de0 | 96 | 757294b5c1fd | Established |
| `__glOdysseyTextureSetRWrap` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d5d20 | 192 | 9659e76ab452 | Established |
| `__glOdysseyTextureSetRWrap` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d5d20 | 192 | 9659e76ab452 | Established |
| `SetTexOffsetValues` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d2660 | 108 | c999ad13a930 | Established |
| `SetTexOffsetValues` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d2660 | 108 | c999ad13a930 | Established |
| `SetDetailEntry` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d84c0 | 196 | 3b9db4a960bf | Established |
| `SetDetailEntry` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d84c0 | 196 | 3b9db4a960bf | Established |
| `__glOdysseyFinish` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d9800 | 788 | 4f334426caf0 | Established |
| `__glOdysseyFinish` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d9800 | 788 | 4f334426caf0 | Established |
| `__glOdysseySwapBuffers` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d9450 | 840 | 5e1af35a456f | Established |
| `__glOdysseySwapBuffers` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d9450 | 840 | 5e1af35a456f | Established |
| `__glOdysseySetDrawbuf` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d9fb0 | 808 | e78b75db3c9f | Established |
| `__glOdysseySetDrawbuf` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d9fb0 | 808 | e78b75db3c9f | Established |
| `__glOdysseyClear` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd964aa0 | 1996 | d9dde5ffa225 | Established |
| `__glOdysseyClear` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd964aa0 | 1996 | d9dde5ffa225 | Established |
| `__glOdyssey_FastDispatchEnd` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xdadc200 | 15872 | 4cab2551b407 | Established |
| `__glOdyssey_FastDispatchEnd` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xdadc200 | 15872 | 4cab2551b407 | Established |
| `__glOdyssey_FastDispatchEnd` | `usr/gfx/arch/IP30ODSY/libGLcore.so` | 0xdae4200 | 15872 | 4cab2551b407 | Established |
| `__glOdyssey_FastDispatchEnd` | `usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0x3378200 | 15872 | 4cab2551b407 | Established |
| `__glOdyssey_FastDispatchEnd` | `usr/gfx/arch/IP35ODSY/libGLcore.so` | 0xdae4200 | 15872 | 4cab2551b407 | Established |
| `__glOdyssey_FastDispatchEnd` | `usr/gfx/arch/IP35ODSY64/libGLcore.so` | 0x2328200 | 15872 | 4cab2551b407 | Established |
| `__glOdyssey_FastDispatchEnd` | `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` | 0xdae4200 | 15872 | 4cab2551b407 | Established |
| `__glOdyssey_FastDispatchEnd` | `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0x2328200 | 15872 | 4cab2551b407 | Established |
| `InitFastDispatch` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd967420 | 504 | 52bf50923ce9 | Established |
| `InitFastDispatch` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd967420 | 504 | 52bf50923ce9 | Established |
| `setCurrent` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd970bd0 | 340 | 6c21430b7038 | Established |
| `setCurrent` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd970bd0 | 340 | 6c21430b7038 | Established |
| `__glOdysseyInitKernel` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c63c0 | 656 | 5697524dc706 | Established |
| `__glOdysseyInitKernel` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c63c0 | 656 | 5697524dc706 | Established |
| `CheckMMXfrArgs` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c6ca0 | 128 | 650a3ab0f3c6 | Established |
| `CheckMMXfrArgs` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c6ca0 | 128 | 650a3ab0f3c6 | Established |
| `CheckMMXfrArgs` | `usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0x325b220 | 128 | 650a3ab0f3c6 | Established |
| `CheckMMXfrArgs` | `usr/gfx/arch/IP35ODSY64/libGLcore.so` | 0x220b220 | 128 | 650a3ab0f3c6 | Established |
| `CheckMMXfrArgs` | `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0x220b220 | 128 | 650a3ab0f3c6 | Established |
| `__glOdysseyPMObjGroupResident` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c7170 | 168 | 482da20895a6 | Established |
| `__glOdysseyPMObjGroupResident` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c7170 | 168 | 482da20895a6 | Established |
| `__glOdysseyOpenPMObjReference` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c7220 | 584 | e632a326416d | Established |
| `__glOdysseyOpenPMObjReference` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c7220 | 584 | e632a326416d | Established |
| `__glOdysseyOpenPMObjWriteReference` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c7470 | 564 | 7bf25cb6e047 | Established |
| `__glOdysseyOpenPMObjWriteReference` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c7470 | 564 | 7bf25cb6e047 | Established |
| `InitCSet` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c7f00 | 20 | db4eaf9c04ac | Established |
| `InitCSet` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c7f00 | 20 | db4eaf9c04ac | Established |
| `InitCSetCursor` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c82d0 | 20 | 32805a1ec840 | Established |
| `InitCSetCursor` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c82d0 | 20 | 32805a1ec840 | Established |
| `NewChunkNode` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c8070 | 240 | 184389f72b86 | Established |
| `NewChunkNode` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c8070 | 240 | 184389f72b86 | Established |
| `AllocSpecificCSetId` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c8160 | 360 | 996bdd4ddd81 | Established |
| `AllocSpecificCSetId` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c8160 | 360 | 996bdd4ddd81 | Established |
| `LookupCSetId` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c8470 | 108 | 024c7f1f971f | Established |
| `LookupCSetId` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c8470 | 108 | 024c7f1f971f | Established |
| `DeallocCSetId` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c8400 | 104 | 84d31a2275d9 | Established |
| `DeallocCSetId` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c8400 | 104 | 84d31a2275d9 | Established |
| `NextCSetElem` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c82f0 | 272 | 188836a6499a | Established |
| `NextCSetElem` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c82f0 | 272 | 188836a6499a | Established |
| `DestroyCSet` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c7f20 | 324 | e7a65ddd067d | Established |
| `DestroyCSet` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c7f20 | 324 | e7a65ddd067d | Established |
| `AddKnownGroup` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c7d90 | 68 | 0263b3e44086 | Established |
| `AddKnownGroup` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c7d90 | 68 | 0263b3e44086 | Established |
| `RemoveKnownGroup` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c7de0 | 212 | 60b2048dd90f | Established |
| `RemoveKnownGroup` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c7de0 | 212 | 60b2048dd90f | Established |
| `DestroyKnownGroup` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c7ec0 | 60 | cb9f5a4c8408 | Established |
| `DestroyKnownGroup` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c7ec0 | 60 | cb9f5a4c8408 | Established |
| `LookupKnownGroup` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c7960 | 388 | 8e0fc939bb46 | Established |
| `LookupKnownGroup` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c7960 | 388 | 8e0fc939bb46 | Established |
| `LookupCoresidRange` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c7af0 | 568 | ac7ff0a2b9d7 | Established |
| `LookupCoresidRange` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c7af0 | 568 | ac7ff0a2b9d7 | Established |
| `LookupCoresidRangeWithLevel` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c7d30 | 92 | 3b1b8b680232 | Established |
| `LookupCoresidRangeWithLevel` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c7d30 | 92 | 3b1b8b680232 | Established |
| `OpenPipeMemReference` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c6fb0 | 444 | ae27c1ced612 | Established |
| `OpenPipeMemReference` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c6fb0 | 444 | ae27c1ced612 | Established |
| `__glOdysseyClosePMObjReference` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c7800 | 352 | 58f500f50b8a | Established |
| `__glOdysseyClosePMObjReference` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c7800 | 352 | 58f500f50b8a | Established |
| `__glOdysseyClosePMObjWriteReference` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c76b0 | 324 | 367813893af3 | Established |
| `__glOdysseyClosePMObjWriteReference` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c76b0 | 324 | 367813893af3 | Established |
| `__glOdysseySharePM` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c6650 | 88 | 7118e50738fa | Established |
| `__glOdysseySharePM` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c6650 | 88 | 7118e50738fa | Established |
| `__glOdysseyUnSharePM` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c66b0 | 308 | 7a84340907ef | Established |
| `__glOdysseyUnSharePM` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c66b0 | 308 | 7a84340907ef | Established |
| `__glOdysseyCreatePMObj` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c67f0 | 508 | 811e64930fe0 | Established |
| `__glOdysseyCreatePMObj` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c67f0 | 508 | 811e64930fe0 | Established |
| `__glOdysseyDestroyPMObjGroup` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c69f0 | 344 | edb3b4cd502e | Established |
| `__glOdysseyDestroyPMObjGroup` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c69f0 | 344 | edb3b4cd502e | Established |
| `__glOdysseyDestroyPMObj` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c6b50 | 324 | edd8925fbbcb | Established |
| `__glOdysseyDestroyPMObj` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c6b50 | 324 | edd8925fbbcb | Established |
| `__glOdysseyAssignToPMObj` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c6d20 | 340 | dac3fb291529 | Established |
| `__glOdysseyAssignToPMObj` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c6d20 | 340 | dac3fb291529 | Established |
| `__glOdysseyReadFromPMObj` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c6e80 | 296 | 44071ce3af76 | Established |
| `__glOdysseyReadFromPMObj` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c6e80 | 296 | 44071ce3af76 | Established |
| `ChooseSuitableBuzzTexModeBaseFmt` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9cfc80 | 320 | d4819d12ff8c | Established |
| `ChooseSuitableBuzzTexModeBaseFmt` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9cfc80 | 320 | d4819d12ff8c | Established |
| `GetImageFmtEnumFromBuzzTexFormat` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9cfbd0 | 172 | b9eb423dfb29 | Established |
| `GetImageFmtEnumFromBuzzTexFormat` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9cfbd0 | 172 | b9eb423dfb29 | Established |
| `DoMipmapHackHW` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d1b30 | 644 | 101e104467e7 | Established |
| `DoMipmapHackHW` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d1b30 | 644 | 101e104467e7 | Established |
| `DoMipmapHack` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9d1dc0 | 452 | 0d5ff26fffeb | Established |
| `DoMipmapHack` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9d1dc0 | 452 | 0d5ff26fffeb | Established |
| `LoadAndSendStippledQuads` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95f560 | 2140 | 4531965207d1 | Established |
| `LoadAndSendStippledQuads` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95f560 | 2140 | 4531965207d1 | Established |
| `DrawBitmapUsingPolyStipple` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95fdc0 | 2784 | 9b6275bfd997 | Established |
| `DrawBitmapUsingPolyStipple` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95fdc0 | 2784 | 9b6275bfd997 | Established |
| `__glOdysseyRenderBitmap` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9608a0 | 232 | 35281d71b1da | Established |
| `__glOdysseyRenderBitmap` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9608a0 | 232 | 35281d71b1da | Established |
| `__glOdyim_Bitmap` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd960990 | 260 | 7af39bfc8084 | Established |
| `__glOdyim_Bitmap` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd960990 | 260 | 7af39bfc8084 | Established |
| `__glOdyim_Enable` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd956bc0 | 4920 | 01031b81a93f | Established |
| `__glOdyim_Enable` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd956bc0 | 4920 | 01031b81a93f | Established |
| `__glOdyim_Disable` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95dc70 | 5256 | 585317ae28cf | Established |
| `__glOdyim_Disable` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95dc70 | 5256 | 585317ae28cf | Established |
| `__glOdyim_IsEnabled` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd956830 | 680 | f90b36f42668 | Established |
| `__glOdyim_IsEnabled` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd956830 | 680 | f90b36f42668 | Established |
| `PushAttributes` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd957f00 | 3772 | c3b8f6340367 | Established |
| `PushAttributes` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd957f00 | 3772 | c3b8f6340367 | Established |
| `PopAttributes` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd958f60 | 7472 | f333a1a5c33c | Established |
| `PopAttributes` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd958f60 | 7472 | f333a1a5c33c | Established |
| `__glOdyim_PushAttrib` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd958dc0 | 212 | 1ca8bd287293 | Established |
| `__glOdyim_PushAttrib` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd958dc0 | 212 | 1ca8bd287293 | Established |
| `__glOdyim_PopAttrib` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95ad10 | 160 | d4fb6248b347 | Established |
| `__glOdyim_PopAttrib` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95ad10 | 160 | d4fb6248b347 | Established |
| `__glOdysseyFreeAttributeState` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95adb0 | 232 | d3314d395234 | Established |
| `__glOdysseyFreeAttributeState` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95adb0 | 232 | d3314d395234 | Established |
| `TargetIndexToTargetEnum` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd958f10 | 76 | 1f8620dc813b | Established |
| `TargetIndexToTargetEnum` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd958f10 | 76 | 1f8620dc813b | Established |
| `TargetIndexToTargetEnum` | `usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0x31ed090 | 76 | 1f8620dc813b | Established |
| `TargetIndexToTargetEnum` | `usr/gfx/arch/IP35ODSY64/libGLcore.so` | 0x219d090 | 76 | 1f8620dc813b | Established |
| `TargetIndexToTargetEnum` | `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0x219d090 | 76 | 1f8620dc813b | Established |
| `__glOdyssey_ResolveContext` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95ac90 | 128 | b84e76c00abf | Established |
| `__glOdyssey_ResolveContext` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95ac90 | 128 | b84e76c00abf | Established |
| `__glOdyim_EvalCoord1d` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd976520 | 56 | 0f1f34e37e92 | Established |
| `__glOdyim_EvalCoord1d` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd976520 | 56 | 0f1f34e37e92 | Established |
| `__glOdyim_EvalCoord1dv` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd976560 | 60 | 1356ad9c5b3a | Established |
| `__glOdyim_EvalCoord1dv` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd976560 | 60 | 1356ad9c5b3a | Established |
| `__glOdyim_EvalCoord1f` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9765a0 | 56 | 049b16a90477 | Established |
| `__glOdyim_EvalCoord1f` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9765a0 | 56 | 049b16a90477 | Established |
| `__glOdyim_EvalCoord1fv` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9765e0 | 60 | c7b16d33743e | Established |
| `__glOdyim_EvalCoord1fv` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9765e0 | 60 | c7b16d33743e | Established |
| `__glOdyim_EvalCoord2d` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd976620 | 64 | 64f591554a67 | Established |
| `__glOdyim_EvalCoord2d` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd976620 | 64 | 64f591554a67 | Established |
| `__glOdyim_EvalCoord2dv` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd976660 | 68 | ce0c7a711fde | Established |
| `__glOdyim_EvalCoord2dv` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd976660 | 68 | ce0c7a711fde | Established |
| `__glOdyim_EvalCoord2f` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9766b0 | 60 | 71339cdde033 | Established |
| `__glOdyim_EvalCoord2f` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9766b0 | 60 | 71339cdde033 | Established |
| `__glOdyim_EvalCoord2fv` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9766f0 | 64 | 181adc59842b | Established |
| `__glOdyim_EvalCoord2fv` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9766f0 | 64 | 181adc59842b | Established |
| `__glOdyim_EvalPoint1` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd976800 | 112 | 67e798ec2e8f | Established |
| `__glOdyim_EvalPoint1` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd976800 | 112 | 67e798ec2e8f | Established |
| `__glOdyim_EvalPoint2` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd976990 | 164 | 5995bf1104c3 | Established |
| `__glOdyim_EvalPoint2` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd976990 | 164 | 5995bf1104c3 | Established |
| `__glOdyim_EvalMesh1` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd976730 | 208 | 38e181936658 | Established |
| `__glOdyim_EvalMesh1` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd976730 | 208 | 38e181936658 | Established |
| `__glOdyim_EvalMesh2` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd976870 | 280 | b06c1337630a | Established |
| `__glOdyim_EvalMesh2` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd976870 | 280 | b06c1337630a | Established |
| `GetCurrentState` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9774f0 | 656 | 343e6a7eea27 | Established |
| `GetCurrentState` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9774f0 | 656 | 343e6a7eea27 | Established |
| `RestoreCurrentState` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd977780 | 172 | a0bc26a7a04d | Established |
| `RestoreCurrentState` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd977780 | 172 | a0bc26a7a04d | Established |
| `__glOdysseyDoEvalCoord1` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd977bf0 | 128 | 6ca0b9ad5b8a | Established |
| `__glOdysseyDoEvalCoord1` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd977bf0 | 128 | 6ca0b9ad5b8a | Established |
| `__glOdysseyDoEvalCoord2` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd97cbe0 | 140 | 049983bc4cd0 | Established |
| `__glOdysseyDoEvalCoord2` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd97cbe0 | 140 | 049983bc4cd0 | Established |
| `__glOdysseyEvalMesh1Line` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd97cc70 | 292 | f402502a867f | Established |
| `__glOdysseyEvalMesh1Line` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd97cc70 | 292 | f402502a867f | Established |
| `__glOdysseyEvalMesh1Point` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd97cda0 | 292 | 2e7ece53dc56 | Established |
| `__glOdysseyEvalMesh1Point` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd97cda0 | 292 | 2e7ece53dc56 | Established |
| `__glOdysseyEvalMesh2Point` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd97d2f0 | 476 | 8835e0b58c32 | Established |
| `__glOdysseyEvalMesh2Point` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd97d2f0 | 476 | 8835e0b58c32 | Established |
| `__glOdysseyInitAccum` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd955de0 | 224 | 2e94957ad3ba | Established |
| `__glOdysseyInitAccum` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd955de0 | 224 | 2e94957ad3ba | Established |
| `__glOdyim_Accum` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd955ec0 | 364 | d273b300ae9b | Established |
| `__glOdyim_Accum` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd955ec0 | 364 | d273b300ae9b | Established |
| `__glSoftAllocAccum` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9536f0 | 64 | b3b82113c34f | Established |
| `__glSoftAllocAccum` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9536f0 | 64 | b3b82113c34f | Established |
| `__glOdySoftAccum` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd953a10 | 240 | 9b9ee3185696 | Established |
| `__glOdySoftAccum` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd953a10 | 240 | 9b9ee3185696 | Established |
| `softClear` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd953730 | 728 | 0b7fdad1f7c3 | Established |
| `softClear` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd953730 | 728 | 0b7fdad1f7c3 | Established |
| `softMult` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd951d70 | 1764 | 707174b11883 | Established |
| `softMult` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd951d70 | 1764 | 707174b11883 | Established |
| `softAdd` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd952460 | 1656 | f4caced32510 | Established |
| `softAdd` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd952460 | 1656 | f4caced32510 | Established |
| `__glOdyHardAccum24` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd955c10 | 460 | cfb1f846c154 | Established |
| `__glOdyHardAccum24` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd955c10 | 460 | cfb1f846c154 | Established |
| `sendBlenderOpTokens` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd950000 | 104 | 5410e245fb56 | Established |
| `sendBlenderOpTokens` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd950000 | 104 | 5410e245fb56 | Established |
| `sendBlenderColorTokensAccum24` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd950070 | 116 | e9c2b689c0c7 | Established |
| `sendBlenderColorTokensAccum24` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd950070 | 116 | e9c2b689c0c7 | Established |
| `destroyScratchBufAccum` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9500f0 | 152 | 7577de491ca3 | Established |
| `destroyScratchBufAccum` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9500f0 | 152 | 7577de491ca3 | Established |
| `__glOdysseyAccumClose` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd950190 | 116 | 592637cdd2b6 | Established |
| `__glOdysseyAccumClose` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd950190 | 116 | 592637cdd2b6 | Established |
| `initScratchBufAccum` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd950210 | 776 | a68215b08521 | Established |
| `initScratchBufAccum` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd950210 | 776 | a68215b08521 | Established |
| `initVisualNumComp` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd950520 | 176 | 7eb498ec2b0d | Established |
| `initVisualNumComp` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd950520 | 176 | 7eb498ec2b0d | Established |
| `initAccumGfxImages` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9505d0 | 240 | 26225165fcb2 | Established |
| `initAccumGfxImages` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9505d0 | 240 | 26225165fcb2 | Established |
| `initBuffersForAccum` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9506c0 | 112 | 7accc27009dc | Established |
| `initBuffersForAccum` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9506c0 | 112 | 7accc27009dc | Established |
| `initGeomForAccum` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd950730 | 144 | 690e5f28100c | Established |
| `initGeomForAccum` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd950730 | 144 | 690e5f28100c | Established |
| `__glOdyim_BlendFunc` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95afe0 | 780 | 2964a3c2e1ee | Established |
| `__glOdyim_BlendFunc` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95afe0 | 780 | 2964a3c2e1ee | Established |
| `__glOdyim_BlendEquationEXT` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95b2f0 | 400 | e064ed14c085 | Established |
| `__glOdyim_BlendEquationEXT` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95b2f0 | 400 | e064ed14c085 | Established |
| `__glOdyim_AlphaFunc` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95aea0 | 320 | 0e9ec873355c | Established |
| `__glOdyim_AlphaFunc` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95aea0 | 320 | 0e9ec873355c | Established |
| `__glOdyim_DepthFunc` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95b780 | 244 | ed959cba68c4 | Established |
| `__glOdyim_DepthFunc` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95b780 | 244 | ed959cba68c4 | Established |
| `__glOdyim_LogicOp` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95c390 | 224 | a26caba94b4d | Established |
| `__glOdyim_LogicOp` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95c390 | 224 | a26caba94b4d | Established |
| `__glOdyim_StencilFunc` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95d830 | 284 | c215f1ee0839 | Established |
| `__glOdyim_StencilFunc` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95d830 | 284 | c215f1ee0839 | Established |
| `__glOdyim_StencilOp` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95da60 | 524 | 35226f40dd88 | Established |
| `__glOdyim_StencilOp` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95da60 | 524 | 35226f40dd88 | Established |
| `__glOdyim_StencilMask` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95d950 | 264 | b81da4837006 | Established |
| `__glOdyim_StencilMask` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95d950 | 264 | b81da4837006 | Established |
| `__glOdyim_ColorMask` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95b480 | 248 | 95cffdec8f1f | Established |
| `__glOdyim_ColorMask` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95b480 | 248 | 95cffdec8f1f | Established |
| `__glOdyim_DepthMask` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95b880 | 172 | 18e448e34eba | Established |
| `__glOdyim_DepthMask` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95b880 | 172 | 18e448e34eba | Established |
| `__glOdyim_IndexMask` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95c0f0 | 148 | a4467e6049f1 | Established |
| `__glOdyim_IndexMask` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95c0f0 | 148 | a4467e6049f1 | Established |
| `__glOdyim_CullFace` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95b690 | 236 | 10e182f8851b | Established |
| `__glOdyim_CullFace` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95b690 | 236 | 10e182f8851b | Established |
| `__glOdyim_FrontFace` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95c020 | 208 | 834f6306207c | Established |
| `__glOdyim_FrontFace` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95c020 | 208 | 834f6306207c | Established |
| `__glOdyim_ShadeModel` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95d750 | 212 | 0cf5dbd7f193 | Established |
| `__glOdyim_ShadeModel` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95d750 | 212 | 0cf5dbd7f193 | Established |
| `__glOdyim_PolygonMode` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95d3f0 | 392 | cbf995a0c65f | Established |
| `__glOdyim_PolygonMode` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95d3f0 | 392 | cbf995a0c65f | Established |
| `__glOdyim_LineStipple` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95c190 | 268 | 914e7cebb8ee | Established |
| `__glOdyim_LineStipple` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95c190 | 268 | 914e7cebb8ee | Established |
| `__glOdyim_LineWidth` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95c2a0 | 240 | acb92df53bbf | Established |
| `__glOdyim_LineWidth` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95c2a0 | 240 | acb92df53bbf | Established |
| `__glOdyim_PointSize` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95d300 | 240 | 6b688bd8b387 | Established |
| `__glOdyim_PointSize` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95d300 | 240 | 6b688bd8b387 | Established |
| `__glOdyim_Hint` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd956ae0 | 220 | 5ecfe1145825 | Established |
| `__glOdyim_Hint` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd956ae0 | 220 | 5ecfe1145825 | Established |
| `__glOdyim_ColorMaterial` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95b580 | 268 | f70ad42664cf | Established |
| `__glOdyim_ColorMaterial` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95b580 | 268 | f70ad42664cf | Established |
| `__glOdyim_ReadBuffer` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95b930 | 408 | b621a46228a3 | Established |
| `__glOdyim_ReadBuffer` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95b930 | 408 | b621a46228a3 | Established |
| `__glOdyim_DrawBuffer` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95bad0 | 1356 | b520127fd3b1 | Established |
| `__glOdyim_DrawBuffer` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95bad0 | 1356 | b520127fd3b1 | Established |
| `__glOdyim_Materialfv` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95c900 | 488 | 8c43a78a7568 | Established |
| `__glOdyim_Materialfv` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95c900 | 488 | 8c43a78a7568 | Established |
| `__glOdyim_Materialf` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95caf0 | 84 | 14675e34661c | Established |
| `__glOdyim_Materialf` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95caf0 | 84 | 14675e34661c | Established |
| `__glOdyim_Materialiv` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95d0b0 | 496 | aff27d9a0fd4 | Established |
| `__glOdyim_Materialiv` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95d0b0 | 496 | aff27d9a0fd4 | Established |
| `__glOdyim_Materiali` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95d2a0 | 84 | 4b729d34eb89 | Established |
| `__glOdyim_Materiali` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95d2a0 | 84 | 4b729d34eb89 | Established |
| `__glOdysseyConvertStipple` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95d580 | 456 | 8e5330818bcf | Established |
| `__glOdysseyConvertStipple` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95d580 | 456 | 8e5330818bcf | Established |
| `CopyColorIndexCode` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd966080 | 1032 | 9c7eebe775ff | Established |
| `CopyColorIndexCode` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd966080 | 1032 | 9c7eebe775ff | Established |
| `CopyNormalCode` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd966490 | 312 | 5e83dacc38a6 | Established |
| `CopyNormalCode` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd966490 | 312 | 5e83dacc38a6 | Established |
| `CopyTexCoordCode` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9665d0 | 840 | 4f14e4d39c6d | Established |
| `CopyTexCoordCode` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9665d0 | 840 | 4f14e4d39c6d | Established |
| `CopyVertexCode` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd966920 | 680 | 88d57901d79b | Established |
| `CopyVertexCode` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd966920 | 680 | 88d57901d79b | Established |
| `AllocInitFastDispatchCodeBuffers` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd966bd0 | 2124 | 3ef116ee9905 | Established |
| `AllocInitFastDispatchCodeBuffers` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd966bd0 | 2124 | 3ef116ee9905 | Established |
| `FastDispatchInstall` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd967620 | 724 | b94f8b126c6b | Established |
| `FastDispatchInstall` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd967620 | 724 | b94f8b126c6b | Established |
| `ConvertFromShadow` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd96fce0 | 2008 | 4351d3dfdf0b | Established |
| `ConvertFromShadow` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd96fce0 | 2008 | 4351d3dfdf0b | Established |
| `BeforeIgloo` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9da480 | 2776 | dd9e341f964e | Established |
| `BeforeIgloo` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9da480 | 2776 | dd9e341f964e | Established |
| `GetBoardInfo` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd965310 | 1448 | 0ddc1149b2bd | Established |
| `GetBoardInfo` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd965310 | 1448 | 0ddc1149b2bd | Established |
| `SWInit` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd96a950 | 1452 | 1d43fbe1dbe1 | Established |
| `SWInit` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd96a950 | 1452 | 1d43fbe1dbe1 | Established |
| `HWInit` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd96a8a0 | 176 | 8eaa6f0187e5 | Established |
| `HWInit` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd96a8a0 | 176 | 8eaa6f0187e5 | Established |
| `InitFunctionPtrs` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd967900 | 692 | cc71abf7fd3f | Established |
| `InitFunctionPtrs` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd967900 | 692 | cc71abf7fd3f | Established |
| `__glOdysseyValidate` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd967da0 | 152 | bcfcf556f4ad | Established |
| `__glOdysseyValidate` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd967da0 | 152 | bcfcf556f4ad | Established |
| `InitialFree` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd965d20 | 12 | f2aa07cfee56 | Established |
| `InitialFree` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd965d20 | 12 | f2aa07cfee56 | Established |
| `InitialDestroyContext` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd965d30 | 120 | 6d2b64015021 | Established |
| `InitialDestroyContext` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd965d30 | 120 | 6d2b64015021 | Established |
| `DestroyContext` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd965db0 | 292 | f18387db11c6 | Established |
| `DestroyContext` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd965db0 | 292 | f18387db11c6 | Established |
| `CopyContext` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd96c0a0 | 92 | 730d4bfab1e4 | Established |
| `CopyContext` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd96c0a0 | 92 | 730d4bfab1e4 | Established |
| `BindHyperpipe` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd96c370 | 128 | 092f1e308ca3 | Established |
| `BindHyperpipe` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd96c370 | 128 | 092f1e308ca3 | Established |
| `QueryHyperpipeBestAttrib` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd96c3f0 | 128 | fb04337a88d0 | Established |
| `QueryHyperpipeBestAttrib` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd96c3f0 | 128 | fb04337a88d0 | Established |
| `QueryHyperpipeAttrib` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd96c470 | 204 | 4d34d19036e8 | Established |
| `QueryHyperpipeAttrib` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd96c470 | 204 | 4d34d19036e8 | Established |
| `HyperpipeAttrib` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd96c540 | 208 | 233a7910d1ea | Established |
| `HyperpipeAttrib` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd96c540 | 208 | 233a7910d1ea | Established |
| `__glOdysseyInitIgloo` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd96fc70 | 108 | 4b8ca415748f | Established |
| `__glOdysseyInitIgloo` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd96fc70 | 108 | 4b8ca415748f | Established |
| `__glOdyim_RenderMode` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd96f780 | 1256 | d3cb9d96673d | Established |
| `__glOdyim_RenderMode` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd96f780 | 1256 | d3cb9d96673d | Established |
| `GetTexDim` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9852e0 | 148 | 9419f3448172 | Established |
| `GetTexDim` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9852e0 | 148 | 9419f3448172 | Established |
| `GetTexDim` | `usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0x3218e10 | 148 | 9419f3448172 | Established |
| `GetTexDim` | `usr/gfx/arch/IP35ODSY64/libGLcore.so` | 0x21c8e10 | 148 | 9419f3448172 | Established |
| `GetTexDim` | `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0x21c8e10 | 148 | 9419f3448172 | Established |
| `__glOdyim_GetTexLevelParameterfv` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd985380 | 848 | a5da2a87d6af | Established |
| `__glOdyim_GetTexLevelParameterfv` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd985380 | 848 | a5da2a87d6af | Established |
| `__glOdyim_GetTexLevelParameteriv` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9856d0 | 732 | ab4a36ae46f7 | Established |
| `__glOdyim_GetTexLevelParameteriv` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9856d0 | 732 | ab4a36ae46f7 | Established |
| `__glOdyim_GetClipPlane` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9859b0 | 232 | e0fc46ae7d05 | Established |
| `__glOdyim_GetClipPlane` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9859b0 | 232 | e0fc46ae7d05 | Established |
| `__glOdyGetFromHardware` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd985aa0 | 240 | 3f7e8d19e3ec | Established |
| `__glOdyGetFromHardware` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd985aa0 | 240 | 3f7e8d19e3ec | Established |
| `__glOdyGetFromShadow` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd986300 | 128 | 7107b70545e5 | Established |
| `__glOdyGetFromShadow` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd986300 | 128 | 7107b70545e5 | Established |
| `__glOdyim_GetDoublev` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd986c00 | 60 | c1a4a7a958f0 | Established |
| `__glOdyim_GetDoublev` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd986c00 | 60 | c1a4a7a958f0 | Established |
| `__glOdyim_GetFloatv` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd986c40 | 60 | e801425c8264 | Established |
| `__glOdyim_GetFloatv` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd986c40 | 60 | e801425c8264 | Established |
| `__glOdyim_GetIntegerv` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd986c80 | 60 | 89fc2c810bf9 | Established |
| `__glOdyim_GetIntegerv` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd986c80 | 60 | 89fc2c810bf9 | Established |
| `__glOdyim_GetBooleanv` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd986cc0 | 60 | 7cc27a220266 | Established |
| `__glOdyim_GetBooleanv` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd986cc0 | 60 | 7cc27a220266 | Established |
| `__glOdyim_GetTexEnvfv` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd987740 | 276 | 62e306317255 | Established |
| `__glOdyim_GetTexEnvfv` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd987740 | 276 | 62e306317255 | Established |
| `__glOdyim_GetTexEnviv` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd987860 | 260 | d82841c4efd4 | Established |
| `__glOdyim_GetTexEnviv` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd987860 | 260 | d82841c4efd4 | Established |
| `__glOdyim_GetDetailTexFuncSGIS` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd987970 | 152 | fca4aa77791b | Established |
| `__glOdyim_GetDetailTexFuncSGIS` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd987970 | 152 | fca4aa77791b | Established |
| `__glOdyim_GetMaterialfv` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd987a10 | 184 | 0aa29209e8da | Established |
| `__glOdyim_GetMaterialfv` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd987a10 | 184 | 0aa29209e8da | Established |
| `__glOdyim_GetMaterialiv` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd987ad0 | 184 | f395ca4a247f | Established |
| `__glOdyim_GetMaterialiv` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd987ad0 | 184 | f395ca4a247f | Established |
| `__glOdyim_GetFogFuncSGIS` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd987b90 | 112 | 8fef938f63c5 | Established |
| `__glOdyim_GetFogFuncSGIS` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd987b90 | 112 | 8fef938f63c5 | Established |
| `__glOdyim_ListParameterfvSGIX` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd973450 | 236 | c1737b5a69c0 | Established |
| `__glOdyim_ListParameterfvSGIX` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd973450 | 236 | c1737b5a69c0 | Established |
| `__glOdyim_ListParameterfSGIX` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd973540 | 56 | 54bb812bf200 | Established |
| `__glOdyim_ListParameterfSGIX` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd973540 | 56 | 54bb812bf200 | Established |
| `__glOdyim_ListParameterivSGIX` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd973580 | 68 | d6578a3c2e26 | Established |
| `__glOdyim_ListParameterivSGIX` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd973580 | 68 | d6578a3c2e26 | Established |
| `__glOdyim_ListParameteriSGIX` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9735d0 | 64 | c4acc27b2e21 | Established |
| `__glOdyim_ListParameteriSGIX` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9735d0 | 64 | c4acc27b2e21 | Established |
| `__glOdyim_GetListParameterfvSGIX` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd973610 | 204 | 36b9b2ded175 | Established |
| `__glOdyim_GetListParameterfvSGIX` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd973610 | 204 | 36b9b2ded175 | Established |
| `__glOdyim_GetListParameterivSGIX` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9736e0 | 92 | b7ae09681de0 | Established |
| `__glOdyim_GetListParameterivSGIX` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9736e0 | 92 | b7ae09681de0 | Established |
| `__glOdysseyDlistOptimizer` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd973740 | 8 | 78aa5094d5ec | Established |
| `__glOdysseyDlistOptimizer` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd973740 | 8 | 78aa5094d5ec | Established |
| `__glOdysseyDlistOptimizer` | `usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0x3207150 | 8 | 78aa5094d5ec | Established |
| `__glOdysseyDlistOptimizer` | `usr/gfx/arch/IP35ODSY64/libGLcore.so` | 0x21b7150 | 8 | 78aa5094d5ec | Established |
| `__glOdysseyDlistOptimizer` | `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xda5f980 | 8 | 78aa5094d5ec | Established |
| `__glOdysseyDlistOptimizer` | `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xda5f980 | 8 | 78aa5094d5ec | Established |
| `__glOdysseyDlistOptimizer` | `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0xb343e10 | 8 | 78aa5094d5ec | Established |
| `__glOdysseyDlistOptimizer` | `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0xbd63e10 | 8 | 78aa5094d5ec | Established |
| `__glOdysseyDlistOptimizer` | `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0x21b7150 | 8 | 78aa5094d5ec | Established |
| `Bogus` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd974980 | 8 | f211f0c174df | Established |
| `Bogus` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd974980 | 8 | f211f0c174df | Established |
| `Bogus` | `usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0x3208390 | 8 | f211f0c174df | Established |
| `Bogus` | `usr/gfx/arch/IP35ODSY64/libGLcore.so` | 0x21b8390 | 8 | f211f0c174df | Established |
| `Bogus` | `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0xb345040 | 8 | f211f0c174df | Established |
| `Bogus` | `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0xbd65040 | 8 | f211f0c174df | Established |
| `Bogus` | `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` | 0x21b8390 | 8 | f211f0c174df | Established |
| `callSetError` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd974c20 | 68 | 7584a8bf0634 | Established |
| `callSetError` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd974c20 | 68 | 7584a8bf0634 | Established |
| `__glOdyle_Begin` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9748f0 | 68 | 2a5538a4bc62 | Established |
| `__glOdyle_Begin` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9748f0 | 68 | 2a5538a4bc62 | Established |
| `__glOdyle_End` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd974940 | 64 | 9cd02fb90961 | Established |
| `__glOdyle_End` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd974940 | 64 | 9cd02fb90961 | Established |
| `__glsplc_AddSentinel` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd976070 | 156 | c8a561eaafb6 | Established |
| `__glsplc_AddSentinel` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd976070 | 156 | c8a561eaafb6 | Established |
| `__glOdylc_Error` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd974c70 | 364 | 4093e64139ba | Established |
| `__glOdylc_Error` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd974c70 | 364 | 4093e64139ba | Established |
| `__glOdyssey_CopyContext` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd958ea0 | 112 | 39d17880fb8b | Established |
| `__glOdyim_BlendColorEXT` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd95f100 | 472 | bb9efb60aca2 | Established |
| `__glOdysseyIsBboxClippedRange` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd973750 | 3496 | 33a20e3e8455 | Established |
| `__glOdysseyEvalMesh2Fill` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd97d000 | 744 | 27cd127da822 | Established |
| `__glOdysseyEvalMesh2Line` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd97d4d0 | 1336 | 3d7dd0d0edc5 | Established |
| `__glOdysseyValidateLighting` | `usr/gfx/arch/IP30ODSY32/libGLcore.so` | 0xd9c3480 | 1620 | 568f337856dd | Established |
| `__glOdyssey_CopyContext` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd958ea0 | 112 | 39d17880fb8b | Established |
| `__glOdyim_BlendColorEXT` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd95f100 | 472 | bb9efb60aca2 | Established |
| `__glOdysseyIsBboxClippedRange` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd973750 | 3496 | 33a20e3e8455 | Established |
| `__glOdysseyEvalMesh2Fill` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd97d000 | 744 | 27cd127da822 | Established |
| `__glOdysseyEvalMesh2Line` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd97d4d0 | 1336 | 3d7dd0d0edc5 | Established |
| `__glOdysseyValidateLighting` | `usr/gfx/arch/IP35ODSY32/libGLcore.so` | 0xd9c3480 | 1620 | 568f337856dd | Established |
