# Texture format index: every value the library can emit

Release IRIX 6.5.30m, `libGLcore.so`, all six IP30 and IP35 builds (o32, N32, 64-bit) and the patch 4103 builds. Names are the routine names from the N32 library's debug information. Addresses are N32 (`usr/gfx/arch/IP30ODSY32/libGLcore.so`); the other builds are listed under "Other builds".

The index is the six-bit field in bits 25:20 of word 1 of a level descriptor (blocks 0x280 + level, [buzz.md](buzz.md#level-descriptor-words-blocks-0x280--i)). The library picks it from the GL internal format and never from the texel data. Four routines turn it into everything else the library knows about the format. They read no context and call nothing, so each was run under an emulator for every input (`scripts/texfmt_sweep.py`, output in `libglcore/runs/texture-format-index-sweep.txt`): 

| Routine | Address | Maps | Entry |
|---|---|---|---|
| `ChooseSuitableBuzzTexObjFormat` | 0xd9cfdc0 | GL internal format to index | [entry](libglcore-odyssey-reads.md#texture-format-class-codes-and-the-mipmap-fill-in) |
| `CalcTexelSizes` | 0xd9d01d0 | index to six component widths and a size code | same section |
| `ChooseSuitableBuzzTexModeBaseFmt` | 0xd9cfc80 | index and GL internal format to a 3-bit class | same section |
| `GetImageFmtEnumFromBuzzTexFormat` | 0xd9cfbd0 | index to the pixel class of [pixel-paths.md](pixel-paths.md) | same section |

## The table

Grades follow the repository rule. Each row's "selection", "widths" and "pixel class" columns are **established**: the routines were read in full and every input run. The component names in the widths column (which output is R, G, B, A, luminance or intensity) are **inferred** from which GL formats land on the row. Two facts hold for every row and are **unknown**: how the board packs the texel (bit order, whether a 12-bit value sits in 16 bits), and whether the board treats the index as a layout code or as an opaque number. The allocator sizes storage by the size code (`2 << c` bytes per texel, `AllocateGfxMemForTexture`, **established**), which is a unit the allocator uses, not a measured packing.

Widths are in bits, in the order the routine writes them: R, G, B, A, L, I. Component bits is their sum. "Class" is the 3-bit value `ChooseSuitableBuzzTexModeBaseFmt` returns: 1 alpha, 2 luminance, 3 luminance-alpha, 4 intensity, 5 RGB, 6 RGBA (names **inferred** from the formats that give each; the board's use of the value is **unknown**). Where a row has two classes, the first is for the listed RGB-family formats and the second for the RGBA-family ones.

| Index | Components (bits) | Component bits | Size code, bytes | Pixel class | GL internal formats that select it | Class | Grade |
|---|---|---|---|---|---|---|---|
| 0 | A8 | 8 | 0, 2 | 0 | `GL_ALPHA`, `GL_ALPHA4`, `GL_ALPHA8`; also the default for every enumerant the selector does not list | 1 | established |
| 1 | A8 | 8 | 0, 2 | none | none | 1 | established that nothing selects it; unknown what differs from 0 |
| 2 | I8 | 8 | 0, 2 | 1 | `GL_INTENSITY`, `GL_INTENSITY4`, `GL_INTENSITY8` | 4 | established |
| 3 | I8 | 8 | 0, 2 | none | none | 4 | as 1 |
| 4 | L8 | 8 | 0, 2 | 2 | 1, `GL_LUMINANCE`, `GL_LUMINANCE4`, `GL_LUMINANCE8`; the pixel-class 16 move | 2 | established |
| 5 | L8 | 8 | 0, 2 | none | none | 2 | as 1 |
| 6 | R3 G3 B2 | 8 | 0, 2 | none | none (`GL_R3_G3_B2` selects 12) | 5 | as 1 |
| 7 | R3 G3 B2 | 8 | 0, 2 | none | none | 5 | as 1 |
| 8 | A12 | 12 | 0, 2 | 3 | `GL_ALPHA12`, `GL_ALPHA16` | 1 | established |
| 9 | I12 | 12 | 0, 2 | 4 | `GL_INTENSITY12`, `GL_INTENSITY16` | 4 | established |
| 10 | L12 | 12 | 0, 2 | 5 | `GL_LUMINANCE12`, `GL_LUMINANCE16`; the pixel-class 17 move | 2 | established |
| 11 | L8 A8 | 16 | 0, 2 | 6 | 2, `GL_LUMINANCE_ALPHA`, `GL_LUMINANCE4_ALPHA4`, `GL_LUMINANCE6_ALPHA2`, `GL_LUMINANCE8_ALPHA8` | 3 | established |
| 12 | R4 G4 B4 A4 | 16 | 0, 2 | 7 | `GL_R3_G3_B2`, `GL_RGB2_EXT`, `GL_RGB4`, `GL_RGBA2`, `GL_RGBA4` | 5 for `GL_R3_G3_B2`, `GL_RGB2_EXT`, `GL_RGB4`; 6 for `GL_RGBA2`, `GL_RGBA4` | established |
| 13 | R5 G5 B5 A1 | 16 | 0, 2 | 8 | `GL_RGB5`, `GL_RGB5_A1` | 5 for `GL_RGB5`; 6 for `GL_RGB5_A1` | established |
| 16 | L12 A12 | 24 | 1, 4 | 9 | `GL_LUMINANCE12_ALPHA4`, `GL_LUMINANCE12_ALPHA12`, `GL_LUMINANCE16_ALPHA16` | 3 | established |
| 17 | R8 G8 B8 A8 | 32 | 1, 4 | 10 | 3, 4, `GL_RGB`, `GL_RGBA`, `GL_RGB8`, `GL_RGBA8` | 5 for 3, `GL_RGB`, `GL_RGB8`; 6 for 4, `GL_RGBA`, `GL_RGBA8` | established |
| 18 | R10 G10 B10 A2 | 32 | 1, 4 | 11 | `GL_RGB10`, `GL_RGB10_A2` | 5 for `GL_RGB10`; 6 for `GL_RGB10_A2` | established |
| 32 | R12 G12 B12 A12 | 48 | 2, 8 | 13 | none from a GL enumerant; only the image move, for pixel class 13 | 5 or 6 by format, as 33 | established for the reachability, inferred for the role (a 12-bit RGBA window source) |
| 33 | R12 G12 B12 A12 | 48 | 2, 8 | 12 | `GL_RGB12`, `GL_RGB16`, `GL_RGBA12`, `GL_RGBA16`; the pixel-class 12 move | 5 for `GL_RGB12`, `GL_RGB16`; 6 for `GL_RGBA12`, `GL_RGBA16` | established |
| 48 | R8 G8 B8 (ICC) | 24 | 0, 2 | 14 | `GL_R5_G6_B5_ICC_SGIX` (0x8466) | 5 | widths established; the 5/6/5 stored width is inferred from the enumerant name and the 2-byte size |
| 49 | R8 G8 B8 A8 (ICC) | 32 | 1, 4 | 15 | `GL_R5_G6_B5_A8_ICC_SGIX` (0x8467) | 6 | as 48 |
| 14, 15, 19 to 31, 34 to 47, 50 to 63 | none: `CalcTexelSizes` writes zero widths and size code 0 | 0 | 0, 2 | none | none | 0 | established that no libGLcore path emits them; unknown what the board does with them |

By grade, over the 50 indices the library's tables span (0 to 49) and the 14 values above them that the six-bit field can still hold:

- 16 rows are emitted by the library and established: 0, 2, 4, 8, 9, 10, 11, 12, 13, 16, 17, 18, 33, 48 and 49 from the GL selector, and 32 from the image move only. Rows 32, 48 and 49 carry an inferred part, noted in the table.
- 5 rows have a width entry but no emitter: 1, 3, 5, 6 and 7. The entry is established; what separates 1 from 0, 3 from 2 and 5 from 4, and why 3/3/2 has two indices and no selector, is unknown.
- 29 rows (14, 15, 19 to 31, 34 to 47) and the 14 values 50 to 63 have no entry: established that the library writes none of them, unknown what the board does with them. No shipped software depends on them.

Nothing is unknown about which index the library sends for a GL format. What the board does with an index is unknown for every row.

## Who writes the field

Three routines store the index into a descriptor word. The scan was every use in the N32 library of the mask for bits 25:20 (`lui 0x3f0`) and of the shift that places a field at bit 20; a store built another way would not show. The odyssey.so X module and the kernel's odyssey.a have no `lui 0x3f0` and no 0x10ebc operand word. The writers:

- `__glOdysseyTextureActivate` (0xd9d1f90): two loops, one for the primary levels (the field at 0xd9d216c) and one for the detail levels (0xd9d23dc). Each takes the per-level record's index at texture-object offset 1364 + 68 x level, which `AllocateGfxMemForTexture` (0xd9d03b0) filled from `ChooseSuitableBuzzTexObjFormat`.
- `DownsampleTextureThruHW` (0xd9d11a0), field at 0xd9d14b8: the same record, to render the next mipmap level on the board.
- `__glOdysseyImageMovePixelsTexture` (0xd9bbff0), field at 0xd9bc338: the index comes from `__glOdysseyImageCalcTexObjFormats` (0xd9beda0), a table from the pixel class of the source image: class 0 gives 0, 1 gives 2, 2 gives 4, 3 gives 8, 4 gives 9, 5 gives 10, 6 gives 11, 7 gives 12, 8 gives 13, 9 gives 16, 10 gives 17, 11 gives 18, 12 gives 33, 13 gives 32, 14 gives 48, 15 gives 49, 16 gives 4 and 17 gives 10; 18 and above fail. **Established** (the routine's 416 bytes read, every class run).

The detail-texture format test in `__glOdysseyValidateTexture` compares level-0 indices only, so `GL_RGBA4` and `GL_RGB4` count as one format for it.

## Index 12 is RGBA4444 storage; the RGB reading is the class

Both statements are right, because the library sends two different fields for one texture:

1. **Storage index** (level descriptor word 1 bits 25:20). Index 12 is always the 4/4/4/4 layout of `CalcTexelSizes` and pixel class 7, "RGBA 4/4/4/4". Four GL formats select it (`GL_RGB2_EXT`, `GL_RGB4`, `GL_RGBA2`, `GL_RGBA4`) and so does `GL_R3_G3_B2`, which the library stores in this layout and not in the 3/3/2 layouts 6 and 7. Established.
2. **Class** (mode word 4 bits 25:23, [BUZZ.h](../BUZZ.h) TEXMODE4). `ChooseSuitableBuzzTexModeBaseFmt` returns the class from the index and the GL internal format the application named: for an alpha-capable index (12, 13, 17, 18, 32, 33, 49) it returns 5 (RGB) when the format is `GL_R3_G3_B2`, 3, `GL_RGB`, or `GL_RGB2_EXT` to `GL_RGB16`, and 6 (RGBA) for any other format. So a `GL_RGB4` texture carries index 12 and class 5, a `GL_RGBA4` texture index 12 and class 6. Established; the calls are at 0xd9d2264 and 0xd9d247c in the activation routine, which stores the result through `sll 0x17` into the object's mode word at +180 and at 0xd9d13fc in the mipmap builder (stored at context +0x7cd4, shadow TEXMODE4).

So a template that pairs index 12 with an RGB component set was built from an RGB-family internal format: the index says "4/4/4/4 storage", the class says "no alpha". It is the combination (index, class), not a different meaning of 12. In the pixel path 12 is not a pixel class; the pixel class that index 12 maps to is 7.

What stays **unknown**: the meaning of TEXMODE4 bits 25:23 on the board (the library only stores them); what an RGB-family upload puts in the unused 4-bit alpha field of index 12 (the library's host-conversion path was not traced for this); whether the board forces alpha to 1 for class 5. A model that treats class 5 as "RGB, alpha 1" is making an **inferred** choice.

## Other builds

`scripts/texfmt_sweep.py all` runs the same four routines in every build and prints only differences. All eight outputs are identical: IP30 and IP35 o32, N32 and 64-bit, and the patch 4103 o32 and 64-bit builds. The code hashes of the four routines in `docs/inventory/functions.tsv` also agree between the IP30 and IP35 builds of each ABI (the o32 and 64-bit hashes differ between ABIs because the code is compiled differently). The patch 4103 N32 library has no symbols for these routines and was not run.

## Routes tried

No table in libGLcore, the kernel driver or the X module maps an index to a board texel format beyond the four routines above (instruction scan of the last two, above). Published patents describe the texture cache and texel sizes but give no format codes ([published-sources.md](published-sources.md)). The question of the board's decoding therefore stays in [open-questions.md](open-questions.md).
