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

Notes on individual rows:

- `__glOdysseyValidateClipPlanes`: objdump prints `...` in place of two zero words at 0xd967f38 and 0xd967f3c, in the N32 build and in both copies. Those two words are not in the comparison. The 206 words shown match word for word.

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
