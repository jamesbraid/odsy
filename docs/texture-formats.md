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
| 14, 15, 19 to 31, 34 to 47, 50 to 63 | none: `CalcTexelSizes` writes zero widths and leaves the size code unwritten | 0 | not written (the caller's value stays) | none | none | 0 | established for 14, 15, 19 to 31, 34 to 47, 50 and 51 (the sweep); 52 to 63 rest on the index < 50 bounds check at 0xd9d01e4, which was read but not run; unknown what the board does with them |

By grade, over the 50 indices the library's tables span (0 to 49) and the 14 values above them that the six-bit field can still hold:

- 16 rows are emitted by the library and established: 0, 2, 4, 8, 9, 10, 11, 12, 13, 16, 17, 18, 33, 48 and 49 from the GL selector, and 32 from the image move only. Rows 32, 48 and 49 carry an inferred part, noted in the table.
- 5 rows have a width entry but no emitter: 1, 3, 5, 6 and 7. The entry is established; what separates 1 from 0, 3 from 2 and 5 from 4, and why 3/3/2 has two indices and no selector, is unknown.
- 29 rows (14, 15, 19 to 31, 34 to 47) and the 14 values 50 to 63 have no entry: established that the library writes none of them for 14, 15, 19 to 31, 34 to 47, 50 and 51 (the sweep); 52 to 63 rest on the index < 50 bounds check at 0xd9d01e4, which was read but not run. Unknown what the board does with them. No shipped software depends on them.

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

## The class and index pair, the size code and the booked size

Three questions an emulator author asks of the table. All three were answered from the N32 library (IRIX 6.5.30m, `IP30ODSY32`) by reading the writers and the callers; the board's own behaviour is unknown in every case and is said so.

### Does anything check the class against the index?

Short answer: **unknown for the board**. **Established** that no software on the reference install checks it, and that the library itself sends pairs the texture path never produces.

Every store of the index (word 1 bits 25:20, mask `0x3f0` at bit 20) and of the class (TEXMODE4 bits 25:23) in the N32 library, by instruction scan of the whole extracted assembly (`lui 0x3f0`, `lui 0x380`, the shifts by 0x14 and 0x17):

| Writer | Index | Class | Pair |
|---|---|---|---|
| Activation, primary levels (0xd9d1f90) | store 0xd9d217c, from the level-0 record's index for every primary entry | selector call 0xd9d2264 on the level-0 index and level-0 GL format, stored to the object's mode word at 0xd9d22ac | Always a pair the class selector returns for that index. **Established**: the code was read in full. |
| Activation, detail levels | store 0xd9d23ec, from each detail level's own record | selector call 0xd9d2484 on the detail object's level-0 record, stored to the detail object's own mode word at 0xd9d24b4 | The detail object's word is never copied to the board; the validation routine copies only the bound primary object's mode word (load 0xd9d2cbc, store 0xd9d2cd8), so the class that reaches TEXMODE4 is the primary's. A detail level whose own index differs from the primary's level-0 index (the format test compares level 0 only) would pair with the primary's class. Whether a caller can build such a chain: **unknown** (not traced). |
| On-board mipmap builder (0xd9d11a0) | store 0xd9d14cc, from the level's index with 0 mapped to 4, 1 to 5 and 8 to 10 (the index is loaded at 0xd9d1244; the branches at 0xd9d1248 and 0xd9d1250 give 4 and 5, the select at 0xd9d1268 to 0xd9d1270 gives 10) | selector call 0xd9d1404 on that mapped index, stored at 0xd9d1428 | A selector pair for the mapped index. **Established.** The mapping reads an alpha texture's source level as luminance. It is **inferred** that the alpha and luminance twins (0 and 4, 8 and 10) therefore describe one stored layout, since the same bytes are sampled under both indices. |
| Pixel-to-texture move (0xd9bbff0) | store 0xd9bc34c, from the pixel class table (0xd9beda0) | the constant `0x03000000` (class 6), 0xd9bc288 to 0xd9bc298, for every pixel class | Class 6 with whatever index the table gives. **Established.** |
| X server start-up (`odyssey.so`, default hardware set-up, 0x15c6d50 to 0x15c6d6c) | none: no level descriptor is sent there | class 6 in the shadow word at +348, sent in block 0x016 at 0x15c6d9c | Class 6 with whatever index the board already holds. **Established** for the class store; that no descriptor is sent there is **inferred** from an operand scan of the module. |

The move also computes the natural class for its index, the second output of the table routine (class 1 for pixel class 0, 4 for pixel class 1, and so on), and never reads it: the output slot is cleared at 0xd9bc004 and its address passed at 0xd9bc17c, and the routine has no other reference to it. **Established.** So for the indices whose class selector value is not 6 (every index except 12, 13, 17, 18, 32, 33 and 49) the move sends a pair the texture path cannot produce. Reachable examples, **established** from the code that builds the move's source object (`ImageChainValidateScratchBufferFormats`, 0xd98f810 to 0xd98f9a4, which stores four pixel-class and size-code pairs: class 12 with size code 2, class 10 with 1, class 17 with 0 and class 5 with 0): pixel classes 5 and 17 both give index 10 (12-bit luminance), whose selector class is 2, and the move sends class 6 with it. That a guest run reaches this chain step was not run; the code that selects each of the four cases was not traced.

Nothing else reads either field. The kernel driver, IP30 build: its context-restore routine replays block 0x016 (header 0x11c16, seven operands at shadow offsets 332 to 356, `odsy_ctxsw.o` 0x1004 to 0x105c) and the 64 level descriptors (header `0x10e80 | i`, three words each from shadow +360 + 12 i, 0x1acc to 0x1b1c) as plain loads and stores with no mask or compare. No object of `odyssey.a` has `lui` with 0x380, 0x3f0, 0xfc7f or 0xfc0f in a texture context (the one `0x380` in `odsy_init.o`, at 0x2940, sits inside `odsyInitInterrupts`, and the shifts by 0x14 in `odsy_ctxsw.o` pick vertex-attribute slot selectors). **Established** for the IP30 objects of this install; the IP35 and patch 4103 objects were not rescanned (**inferred** the same). The transform microcode takes vertex data and parameter memory ([buzz_isa.md](../ucode/buzz_isa.md)) and has no instruction that reads class-1 raster blocks; that it never sees these fields is **inferred**. No library or driver reads the state back to check it, and nothing tests an error status after sending it.

What the board does with a pair the table does not contain (class 1 with index 17, or class 6 with index 10): **unknown: no shipped software or published source depends on it** except the one case above, where the library relies on the board accepting it. Routes tried: every writer in the library (above), the X module, the kernel objects, the microcode documentation, the published patents (texture cache and texel sizes only). Next: a model of the board's texture unit run against the move path would show only the model's own choice; nothing in software settles it.

For an emulator, labelled as a model choice and not a finding: do not refuse or fault on any pair. The library's own move path sends class 6 with index 10, so a model that refused pairs outside the activation table would break the library's pixel-to-texture steps (**inferred**: it assumes that step runs on a working board). Take the stored layout and component widths from the index, and the component set the texture environment sees (alpha, luminance, luminance-alpha, intensity, RGB, RGBA) from the class. The class cannot be derived from the index: index 17 is sent with class 5 for `GL_RGB8` and with class 6 for `GL_RGBA8`, and the same four bytes are stored. A discriminating test sends the pair (class 6, index 10) and checks that the write is accepted and a nearest sample of a known 12-bit luminance texel returns the same value in the colour components; that the alpha of such a sample is 1 is a further model choice.

### Do bits 31:30 mean the same for the pixel-to-texture move?

Short answer: **yes as a quantity, inferred; unknown as board behaviour**. The field is the log2 of the bytes per texel the buffer holds, minus 1 (0 for 2 bytes, 1 for 4, 2 for 8), in both paths.

- Texture path, **established**: word 1 bits 31:30 take the level record's size code (object +1368 + 68 level), the `c` of `CalcTexelSizes` for the index (0 for indices 0 to 15 and 48, 1 for 16, 17, 18 and 49, 2 for 32 and 33; see the table). Stores at 0xd9d2194 (primary, level-0 record for every primary entry) and 0xd9d240c (detail, each detail level's own).
- Move path, **established**: word 1 bits 31:30 take the source buffer object's word at +40 (`lw` at 0xd9bc2e4, shift at 0xd9bc2f8, store 0xd9bc308). The buffer descriptor is the layout the texture upload builds for its destination (`LoadTextureFromHost`, 0xd9d08a0): the upload stores the record's size code (record +4) at the same +40 and +44, `CalcPixelModePixelFormat` of it (0xd9d0390: 1 when the code is 1, else 0) at +48, the pixel class from the index at +52 (call at 0xd9d0b40), the level's tile pitch at +28 and the width and height at +32 and +36. The move's offset helper reads +44 and +48 the same way.
- Value agreement, **established** for the cases that store the field: the four pixel-class and size-code pairs of the scratch-buffer routine above agree with the table (class 12 is index 33 with code 2, class 10 is index 17 with 1, class 17 and class 5 are index 10 with 0), and the window description (`__glOdysseyImageDescribeWindow`, 0xd989710 to 0xd989b34) stores to +40 the base-2 logarithm of a context value minus 1, the same form; that the value is the window's bytes per pixel is **inferred**. Not every routine that builds a move source (the stack descriptors in the colour-matrix, depth, stencil and convolution steps, and the host-image conversion) was read, so that the field equals the index's size code for every object is **inferred**.
- Difference: the texture path takes one value per level from the format, so every primary entry carries level 0's code. The move takes it from its own source object and writes it into descriptor slot 60 (block 0x2bc, `0x00010ebc`), which the on-board mipmap builder also uses for its temporary source descriptor (0xd9d1468 to 0xd9d14cc).

An emulator can derive bits 31:30 from the index in both paths. Whether the board reads the field as a size, as a layout selector or ignores it is **unknown**; see the next section for what the library sends elsewhere.

### Does anything on the board side depend on the booked bytes per texel?

Short answer: **yes**. The booked size is not library-side accounting. It reaches the board in four ways, and in one of them (3D uploads) the board's packing has to agree with it.

1. **Placement, established arithmetic.** The allocator (0xd9d03b0) sends the kernel a 72-byte request whose byte 1 is `2 << c`. The kernel's object constructor (`odsy_pmm.o` `odsy_mm_obj_new`, 0x2bc4) accepts only 2, 4, 8, 16 and 32, stores the size as the tile count times (depth plus its offset), shifted left by a table entry (0 for 2 bytes, 1 for 4, 2 for 8, 3 for 16, 4 for 32; `.data` +0 of `odsy_pmm.o`, read at 0x2d84 to 0x2da4), and the extent search (`mm_check_enode`, 0x6248) aligns the start to 2 shifted left by the table entry units and keeps objects of different element sizes out of one 32-unit block. The extent's start times 32 is the per-level value the library puts in word 0 bits 28:0. The kernel stores the extent's start times 32 as the object's board address, and the library's per-level values (word 0 bits 28:0) come from these objects; that link is **inferred** (the library's reference routine was not followed into the kernel's table), as is the board reading word 0 as an address (the level descriptor entry). If both hold, the per-level addresses the board receives depend on the booked bytes.
2. **Word 1 bits 31:30 are the size code.** The same `c` that is booked as `2 << c` is sent (above). **Established.**
3. **3D texture uploads, established library side, inferred board side.** For a 3D texture the upload computes each slice's offset itself: slice number times the record's tile count (record +16, rounded up to a power of two by the allocator at 0xd9d0784 for depth 2 or more) times `2 << c`, times 256, divided by 16 (0xd9d0ce8, 0xd9d0d3c, 0xd9d0dd8 and the loop step at 0xd9d0dec), and passes it as the destination object's offset (+24) in the unit of word 0. So the library stores slice k at k times a stride that uses the booked bytes. Activation sends word 2 bits 11:0 as the base-2 ceiling of the slice tile count (0xd9d21ec to 0xd9d224c, 3D targets only) and nothing else about the slice stride. For the board to find the slice the library wrote, its slice stride must be 2^word 2 tiles times the tile size of the index, and that tile size must be 256 texels times the booked bytes per texel (512 bytes for code 0, 1024 for code 1, 2048 for code 2). That the board derives its stride this way is **inferred**; it is the only reading under which an upload and a later sample agree. The same arithmetic fixes the kernel's unit: the library's per-tile step of 32 address units at 2 bytes per texel equals the kernel's start times 32 per tile, so the kernel's extent unit is one 16 by 16 tile at 2 bytes per texel (the kernel's own failure message counts "2Bpp tiles"). That the address unit is 16 bytes (as the DMA header divides by 16) and the tile is 16 by 16 texels are **inferred**.
4. **The on-board mipmap builder sends it again.** It writes the destination level's render-target words at context +0x969c to +0x96a4 with the size code at bits 12:10 and again at bits 15:13 (0xd9d15fc to 0xd9d1634) and the "4-byte" flag from `CalcPixelModePixelFormat` at bits 9:7 (0xd9d15e0 to 0xd9d15e8). **Established.**

What the booked size does not determine: the pitch. Word 1 bits 11:0 come from the width in 16-texel tiles rounded up to even and never from bytes (0xd9d20b0 to 0xd9d2110). So the board must know the bytes per texel from the index, and the library's booking is only a bound on it.

Evidence that booked bytes are an upper bound and not the packing:

- ICC formats (indices 48 and 49), **established**: activation computes the pitch from half the width, rounded up to a tile (0xd9d21b0 to 0xd9d21dc), while the allocator has no ICC case and books tiles for the full width. The board sees half the tile count the allocation holds.
- Image scratch buffers, **established** creation: the library books them at 8 bytes per pixel with kind 6 (0xd988ca8, 0xd988ccc, 0xd988dd8, 0xd988e04), while the size codes stored on the move's source object are 0, 1 or 2 (above). That the move's source objects live in those buffers is **inferred**.

So for 2D textures a model needs only self-consistency: upload and sample both go through the board with the same descriptor, and packing no larger than the booked bytes cannot overlap a neighbour. For 3D textures the booked bytes are a contract, as in item 3. A model may pack tighter than the booked bytes for 2D (nothing else observes the layout) but not for 3D. The packing of the board's 8-, 12- and 24-bit formats inside the booked 2 or 4 bytes stays **unknown**. Discriminating test for 3D: upload two slices of a 3D texture of index 17 and sample slice 1 with the third texture coordinate; the result must come from the second upload, and must not if the model's slice stride is not 2^word 2 times 1024 bytes.

## Other builds

`scripts/texfmt_sweep.py all` runs the same four routines in every build and prints only differences. All eight outputs are identical: IP30 and IP35 o32, N32 and 64-bit, and the patch 4103 o32 and 64-bit builds. The code hashes of the four routines in `docs/inventory/functions.tsv` also agree between the IP30 and IP35 builds of each ABI (the o32 and 64-bit hashes differ between ABIs because the code is compiled differently). The patch 4103 N32 library has no symbols for these routines and was not run.

## Routes tried

No table in libGLcore, the kernel driver or the X module maps an index to a board texel format beyond the four routines above (instruction scan of the last two, above). Published patents describe the texture cache and texel sizes but give no format codes ([published-sources.md](published-sources.md)). The question of the board's decoding therefore stays in [open-questions.md](open-questions.md).
