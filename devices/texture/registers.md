<!-- generated from devices/texture/registers.toml by defs-gen - do not edit, change the source -->

# VPro (Odyssey) "Buzz" texture state: environment,

Texture state words of the Odyssey command stream: environment, mode, LOD, offset and target blocks, and the opcodes that carry them.

Unit `texture`, macro prefix `TEX`.
Default source: odsy binary analysis of the shipped GL library texture routines.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `CLASS` | 32 | established | odsy binary analysis of the shipped GL library texture routines |
| `COLTAB_A` | 32 | unknown | odsy binary analysis of the shipped GL library texture routines |
| `COLTAB_B` | 32 | unknown | odsy binary analysis of the shipped GL library texture routines |
| `ENV_W0` | 32 | unknown | odsy binary analysis of the shipped GL library texture routines |
| `ENV_W1` | 32 | unknown | odsy binary analysis of the shipped GL library texture routines |
| `ENV_W2` | 32 | unknown | odsy binary analysis of the shipped GL library texture routines |
| `ENV_W3` | 32 | unknown | odsy binary analysis of the shipped GL library texture routines |
| `ENV_W4` | 32 | unknown | odsy binary analysis of the shipped GL library texture routines |
| `FIRSTLEVEL` | 32 | unknown | odsy binary analysis of the shipped GL library texture routines |
| `FMT` | 32 | established | odsy binary analysis of the shipped GL library texture routines |
| `LEVEL3D_W2` | 32 | established | odsy binary analysis of the shipped GL library texture routines |
| `LOD` | 32 | established | odsy binary analysis of the shipped GL library texture routines |
| `MODE_W0` | 32 | unknown | odsy binary analysis of the shipped GL library texture routines |
| `MODE_W1` | 32 | unknown | odsy binary analysis of the shipped GL library texture routines |
| `MODE_W2` | 32 | unknown | odsy binary analysis of the shipped GL library texture routines |
| `MODE_W3` | 32 | unknown | odsy binary analysis of the shipped GL library texture routines |
| `MODE_W5` | 32 | unknown | odsy binary analysis of the shipped GL library texture routines |
| `MODE_W6` | 32 | unknown | odsy binary analysis of the shipped GL library texture routines |
| `OFFCODE` | 32 | established | odsy binary analysis of the shipped GL library texture routines |
| `SIZE` | 32 | established | odsy binary analysis of the shipped GL library texture routines |
| `TARGET` | 32 | unknown | odsy binary analysis of the shipped GL library texture routines |
| `WRAPAUX` | 32 | established | odsy binary analysis of the shipped GL library texture routines |

### Word `CLASS`

Texture class (the "class" columns above): the component set the
environment sees, a 3-bit value stored in the sampler word bits 25:23
(BUZZ_DECODE.h SAMPLER.activation, which that file leaves as an
unexplained 3-bit value; this file gives its source). The library
returns it from the index and the OpenGL internal format the
application named, so the class cannot be derived from the index alone.
Established as the values returned; the names are inferred from the
formats that give each. The board's use of the field is unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 2:0 | `value` | established | none=0, alpha=1, luminance=2, luminance_alpha=3, intensity=4, rgb=5, rgba=6 | odsy binary analysis of the shipped GL library texture routines |  |

### Word `COLTAB_A`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:24 | `kept` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |
| 23:12 | `red` | established |  | odsy binary analysis of the shipped GL library texture routines |  |
| 11:0 | `green` | established |  | odsy binary analysis of the shipped GL library texture routines |  |

### Word `COLTAB_B`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:24 | `kept` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |
| 23:12 | `blue` | established |  | odsy binary analysis of the shipped GL library texture routines |  |
| 11:0 | `alpha` | established |  | odsy binary analysis of the shipped GL library texture routines |  |

### Word `ENV_W0`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:3 | `unwritten` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |
| 2:0 | `mode` | established | replace=1, modulate=2, decal=3, blend=4, add=5 | odsy binary analysis of the shipped GL library texture routines |  |

### Word `ENV_W1`

Values 0, 6 and 7 are never sent. GL_PHASE_SGIX is not an environment
mode: it is a filter, and sets bit 17 of the sampler word
(BUZZ_DECODE.h).

Words 1 and 2 are the environment colour, four unsigned 12-bit
channels. The conversion from a float x is the same as for the border
colour (section 3): 0 for x <= 0, otherwise trunc(x * 4096) clamped to
4095. established as the width and conversion. The channel order is
inferred: the notes say the words are packed like the border colour
(red high, green low in word 1; blue high, alpha low in word 2) and do
not read the order out of the store separately. Bits 31:24 of each
word: unknown (the setter's stores of the colour never name them).
Mode add overwrites all four channels with 4095, so both words carry
0xffffff. established.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:24 | `top` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |
| 23:12 | `red` | inferred |  | odsy binary analysis of the shipped GL library texture routines |  |
| 11:0 | `green` | inferred |  | odsy binary analysis of the shipped GL library texture routines |  |

### Word `ENV_W2`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:24 | `top` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |
| 23:12 | `blue` | inferred |  | odsy binary analysis of the shipped GL library texture routines |  |
| 11:0 | `alpha` | inferred |  | odsy binary analysis of the shipped GL library texture routines |  |

### Word `ENV_W3`

Words 3 and 4 are always zero for OpenGL texturing: the initialiser
stores zero in both and no texture setter writes either. established as
what is sent. Their meaning is unknown. The image-transfer steps save
and restore the whole block as a copy, so they cannot change it.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:0 | `bits` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |

### Word `ENV_W4`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:0 | `bits` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |

### Word `FIRSTLEVEL`

The write coverage of the level descriptor words (the bits the library
writes in word 1 are the format index 25:20, size code 31:30, pitch
11:0 and, from two internal paths only, the offset code 28:26) is
in BUZZ_DECODE.h and the offset code is in section 6. Word 1 bit 29
and bits 19:12 are established as never written by the three routines
that store level words, and inferred never written by any library
code. What the board does with them, or with a descriptor past entry
63, is unknown.

First level descriptor index (id 0x006, count 1): bits 5:0 name the
first level descriptor the texture unit reads. Activation writes 0
(the base level's descriptor); the on-board mipmap builder writes 60
(TEX_SCRATCH_LEVEL) and restores the saved word. Bits 31:6 have no
writer and stay 0. established.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:6 | `unwritten` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |
| 5:0 | `index` | established |  | odsy binary analysis of the shipped GL library texture routines |  |

### Word `FMT`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 5:0 | `index` | established | a8=0, a8_alt=1, i8=2, i8_alt=3, l8=4, l8_alt=5, r3g3b2=6, r3g3b2_alt=7, a12=8, i12=9, l12=10, l8a8=11, rgba4=12, rgb5a1=13, l12a12=16, rgba8=17, rgb10a2=18, rgba12_move=32, rgba12=33, icc_rgb=48, icc_rgba=49 | odsy binary analysis of the shipped GL library texture routines |  |

### Word `LEVEL3D_W2`

3D textures. established: the library fills one level-table entry
for a 3D target and does not change the filter, so a 3D texture whose
application asked for a mipmap filter reaches the board with a mipmap
filter code in the sampler word and a single level descriptor. The
board is inferred to read level 0 plainly (nearest or linear) for 3D:
the vendor's porting guide and a published patent both say 3D
mipmapping is not implemented. Deriving further volume
levels from slice spacing would go beyond what the library names.

Slice exponent (level descriptor word 2, 3D targets only). The notes
establish that activation writes level word 2 bits 11:0 for a 3D
target, as the base-2 ceiling of the slice tile count (0 for a count
below 2). BUZZ_DECODE.h lists that word as unknown because its sender
list there predates this finding; this file carries the field under
its own word name so the two do not overlap. Board reading: inferred
(the only reading under which a later sample finds what an upload
wrote).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:0 | `slice_exp` | established |  | odsy binary analysis of the shipped GL library texture routines |  |

### Word `LOD`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 13:0 | `value` | established |  | odsy binary analysis of the shipped GL library texture routines |  |

### Word `MODE_W0`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `detail_modulate` | established |  | odsy binary analysis of the shipped GL library texture routines |  |
| 30 | `bit30` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |
| 29:25 | `detail_level` | established |  | odsy binary analysis of the shipped GL library texture routines |  |
| 24:15 | `unwritten` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |
| 14:10 | `log2_s` | inferred |  | odsy binary analysis of the shipped GL library texture routines |  |
| 9:5 | `log2_t` | inferred |  | odsy binary analysis of the shipped GL library texture routines |  |
| 4:0 | `log2_r` | inferred |  | odsy binary analysis of the shipped GL library texture routines |  |

### Word `MODE_W1`

detail_level is the detail level as a positive count, min(-level, 15):
the field is five bits wide but the library never sends more than 15.
detail_modulate is 1 for the modulate detail function and 0 for add.
Detail texture entries sit at the top of the level table (section 5).

Operands 1, 2 and 3 (S, T, R). established as widths and as the values
written.
  max_clamp  bits 16:0, whole texels: trunc(2^n * clamp), n the level
             size exponent less the base level (at least 0), clamp the
             per-axis maximum-clamp parameter (default 1.0). The
             default is therefore the whole level size, not size less
             one. The conversion truncates and the 17-bit mask wraps;
             it does not saturate. Bit 17 and bits 31:24 are kept from
             the previous word and never named by a store: unknown.
  wrap_aux   bits 23:18, a 6-bit value set together with that axis's
             wrap mode in the sampler word (see WRAPAUX below). Its
             meaning on the board is unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:24 | `top` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |
| 23:18 | `wrap_aux` | established |  | odsy binary analysis of the shipped GL library texture routines |  |
| 17 | `bit17` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |
| 16:0 | `max_clamp` | established |  | odsy binary analysis of the shipped GL library texture routines |  |

### Word `MODE_W2`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:24 | `top` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |
| 23:18 | `wrap_aux` | established |  | odsy binary analysis of the shipped GL library texture routines |  |
| 17 | `bit17` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |
| 16:0 | `max_clamp` | established |  | odsy binary analysis of the shipped GL library texture routines |  |

### Word `MODE_W3`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:24 | `top` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |
| 23:18 | `wrap_aux` | established |  | odsy binary analysis of the shipped GL library texture routines |  |
| 17 | `bit17` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |
| 16:0 | `max_clamp` | established |  | odsy binary analysis of the shipped GL library texture routines |  |

### Word `MODE_W5`

The R axis setter writes repeat to the sampler for any target but 3D
(established). Any other wrap enumerant is refused by the library. The
library sends every combination of the four modes on the three axes; a
mixed state (for example S clamp, T repeat) reaches the board as the
per-axis fields and nothing else. What the board does with a mixed
state is unknown: every program the notes saw sets one wrap on all axes.

Operands 5 and 6: the border colour, four unsigned 12-bit channels,
red in operand 5 bits 23:12, green in operand 5 bits 11:0, blue in
operand 6 bits 23:12 and alpha in operand 6 bits 11:0. A float x
converts as in section 2. established. Operand 5 bits 31:24 and
operand 6 bits 31:25 are unknown. Operand 6 bit 24 is the offset flag
(below). The default border colour the library writes: not recorded.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:24 | `top` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |
| 23:12 | `red` | established |  | odsy binary analysis of the shipped GL library texture routines |  |
| 11:0 | `green` | established |  | odsy binary analysis of the shipped GL library texture routines |  |

### Word `MODE_W6`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:25 | `top` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |
| 24 | `has_offset` | established |  | odsy binary analysis of the shipped GL library texture routines |  |
| 23:12 | `blue` | established |  | odsy binary analysis of the shipped GL library texture routines |  |
| 11:0 | `alpha` | established |  | odsy binary analysis of the shipped GL library texture routines |  |

### Word `OFFCODE`

Code 3 is never sent (the allocator's table does accept element sizes
of 16 and 32 bytes, codes 3 and 4, but no format row uses them).

Offset code (level descriptor word 1 bits 28:26,
BUZZ_DECODE.h TEXLEVEL_W1.offset_code). Two writers: the on-board
mipmap builder stores 2 only when the record's offset word equals 2,
which the allocator never produces, so it stores 0; the
pixel-to-texture move stores a value its helper derives from the
source object's size and pixel-mode words: 0 for six of the pairs
traced and 2 for exactly one pair; every other pair is a GL error. The
builders traced give only pairs that map to 0, so code 2 is the move's
only possible nonzero output and no traced path produces it: inferred
unreachable in the shipped software, not excluded. Whether the board
treats 1..7 differently from 0 is unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 2:0 | `value` | established | none=0, code2=2 | odsy binary analysis of the shipped GL library texture routines |  |

### Word `SIZE`

Size code c (level descriptor word 1 bits 31:30, BUZZ_DECODE.h
TEXLEVEL_W1.size_code): 0 for indices 0..15 and 48, 1 for 16, 17, 18
and 49, 2 for 32 and 33. The allocator books 2 << c bytes per texel;
the texture path and the pixel-to-texture move both send the same
quantity (log2 bytes per texel minus 1), inferred for the move's
every source object. Whether the board reads the field as a size, a
layout selector or ignores it is unknown. The booked bytes are an
upper bound for 2D textures (ICC levels book the full width while the
pitch halves it) and a contract for 3D slices (section 5).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1:0 | `code` | established | b2=0, b4=1, b8=2 | odsy binary analysis of the shipped GL library texture routines |  |

### Word `TARGET`

Active texture target (id 0x005, count 1). The word is shared with the
clip-plane and path-selection bits of the same block; only the target
bits are listed. established as what the library sets: bit 5 for a
complete 3D texture, else bit 4 for a complete 2D texture, else bit 3
for a complete 1D texture; bit 10 together with any of them. When no
enabled target has a complete texture, bits 5:3 and 11:10 are cleared.
Bit 11 is only ever cleared: unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11 | `bit11` | unknown |  | odsy binary analysis of the shipped GL library texture routines |  |
| 10 | `active` | established |  | odsy binary analysis of the shipped GL library texture routines |  |
| 5 | `dim3` | established |  | odsy binary analysis of the shipped GL library texture routines |  |
| 4 | `dim2` | established |  | odsy binary analysis of the shipped GL library texture routines |  |
| 3 | `dim1` | established |  | odsy binary analysis of the shipped GL library texture routines |  |

### Word `WRAPAUX`

Wrap modes are independent per axis: each setter takes one enumerant,
writes one axis and looks at no other. The wrap codes themselves (0
repeat, 1 clamp to edge, 2 clamp, 3 clamp to border) are the sampler
word's wrap_s, wrap_t and wrap_r fields (BUZZ_DECODE.h). The value that
goes with each code in wrap_aux, established:

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 5:0 | `value` | established | repeat_clamp=0, edge=1, border=63 | odsy binary analysis of the shipped GL library texture routines |  |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `BORDER_MAX` | 0x1 | established | odsy binary analysis of the shipped GL library texture routines |  |
| `COLOUR12_BITS` | 0xc | established | odsy binary analysis of the shipped GL library texture routines |  |
| `COLOUR12_LANE_MASK` | 0xfff | established | odsy binary analysis of the shipped GL library texture routines |  |
| `COLOUR12_MAX` | 0xfff | established | odsy binary analysis of the shipped GL library texture routines |  |
| `COLOUR12_ROUND_SCALE` | 0xfff | established | odsy binary analysis of the shipped GL library texture routines |  |
| `COLTAB_A_BASE` | 0x3e00 | established | odsy binary analysis of the shipped GL library texture routines | red and green lanes |
| `COLTAB_B_BASE` | 0x3e10 | established | odsy binary analysis of the shipped GL library texture routines | blue and alpha lanes |
| `COLTAB_C_BASE` | 0x3e20 | inferred | odsy binary analysis of the shipped GL library texture routines | never sent |
| `COLTAB_D_BASE` | 0x3e30 | inferred | odsy binary analysis of the shipped GL library texture routines | never sent |
| `COLTAB_ENTRIES` | 0x100 | established | odsy binary analysis of the shipped GL library texture routines |  |
| `COLTAB_MAX_WIDTH` | 0x100 | established | odsy binary analysis of the shipped GL library texture routines |  |
| `COLTAB_UPLOAD_LAST` | 0xf | established | odsy binary analysis of the shipped GL library texture routines | last colour-table upload index, 0 to 15 |
| `COLTAB_UPLOAD_SHIFT` | 0x4 | established | odsy binary analysis of the shipped GL library texture routines | upload index is entry >> 4 |
| `COLTAB_UPLOAD_WORDS` | 0x10 | established | odsy binary analysis of the shipped GL library texture routines | words per colour-table upload |
| `COLTAB_WORD_MASK` | 0xf | established | odsy binary analysis of the shipped GL library texture routines | word index within an upload is entry & 15 |
| `DETAIL_COUNT_MAX` | 0xf | established | odsy binary analysis of the shipped GL library texture routines |  |
| `DETAIL_FIRST` | 0x31 | established | odsy binary analysis of the shipped GL library texture routines |  |
| `ENV_WORDS` | 0x5 | established | odsy binary analysis of the shipped GL library texture routines | operand count of the TEXENV command |
| `FMT_INDEX_MAX_USED` | 0x31 | established | odsy binary analysis of the shipped GL library texture routines | 0..49 span the tables |
| `LEVEL_TABLE_ENTRIES` | 0x40 | established | odsy binary analysis of the shipped GL library texture routines |  |
| `LOD_BITS` | 0xe | established | odsy binary analysis of the shipped GL library texture routines | width of the LOD value field, bits 13:0 |
| `LOD_LIMIT` | 0xf | established | odsy binary analysis of the shipped GL library texture routines | min/max clamp |
| `LOD_MAX_DEFAULT` | 0xf00 | established | odsy binary analysis of the shipped GL library texture routines |  |
| `LOD_MIN_DEFAULT` | 0x3100 | established | odsy binary analysis of the shipped GL library texture routines |  |
| `LOD_WORDS` | 0x4 | established | odsy binary analysis of the shipped GL library texture routines | operand count of the TEXLOD command |
| `MODE_WORDS` | 0x7 | established | odsy binary analysis of the shipped GL library texture routines | operand count of the TEXMODE command |
| `OFFSET_WORDS` | 0x3 | established | odsy binary analysis of the shipped GL library texture routines | operand count of the TEXOFFSET command |
| `OP_FIRSTLEVEL` | 0x406 | established | odsy binary analysis of the shipped GL library texture routines |  |
| `OP_TARGET` | 0x405 | established | odsy binary analysis of the shipped GL library texture routines |  |
| `OP_TEXENV` | 0x141b | established | odsy binary analysis of the shipped GL library texture routines |  |
| `OP_TEXLOD` | 0x1013 | established | odsy binary analysis of the shipped GL library texture routines |  |
| `OP_TEXMODE` | 0x1c16 | established | odsy binary analysis of the shipped GL library texture routines | same as BUZZ_OP_TEXMODE |
| `OP_TEXOFFSET` | 0xc3e | established | odsy binary analysis of the shipped GL library texture routines |  |
| `PIXCLASS_COUNT` | 0x12 | established | odsy binary analysis of the shipped GL library texture routines | pixel classes 0 to 17; classes 18 and above fail on the move path |
| `PRIMARY_LAST` | 0xf | established | odsy binary analysis of the shipped GL library texture routines |  |
| `PRIMARY_LEVELS_MAX` | 0x10 | established | odsy binary analysis of the shipped GL library texture routines |  |
| `SCRATCH_LEVEL` | 0x3c | established | odsy binary analysis of the shipped GL library texture routines |  |
| `SIZE_MAX` | 0x8000 | established | odsy binary analysis of the shipped GL library texture routines |  |
| `SLICE_STRIDE_BASE` | 0x20 | established | odsy binary analysis of the shipped GL library texture routines | arithmetic |
| `TABLE_LAST` | 0x3f | established | odsy binary analysis of the shipped GL library texture routines |  |
| `TILE_TEXELS` | 0x10 | established | odsy binary analysis of the shipped GL library texture routines |  |
| `UNUSED_FIRST` | 0x10 | established | odsy binary analysis of the shipped GL library texture routines |  |
| `UNUSED_LAST` | 0x30 | established | odsy binary analysis of the shipped GL library texture routines |  |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `COLTAB_A` | 0x123456 | example | red=291, green=1110, kept=0 |
| `COLTAB_B` | 0xabcdef | example | blue=2748, alpha=3567, kept=0 |
| `ENV_W1` | 0xffffff | vector | red=4095, green=4095 |
| `ENV_W2` | 0xffffff | vector | blue=4095, alpha=4095 |
| `LOD` | 0xf00 | vector | value=3840 |
| `LOD` | 0x3100 | vector | value=12544 |
| `MODE_W0` | 0x8000000 | example | detail_modulate=0, detail_level=4, log2_s=0, log2_t=0, log2_r=0 |
| `MODE_W1` | 0xfc0000 | example | max_clamp=0, wrap_aux=63 |
