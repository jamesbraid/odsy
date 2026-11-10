/*
 * TEXTURE_DECODE.h - VPro (Odyssey) "Buzz" texture state: environment,
 *                    mode operands, format index table, colour table
 *                    (publish-safe subset)
 *
 * Purpose: the texture state an emulator has to decode beyond the level
 * descriptors and the sampler word: the texture-environment block, the
 * other operands of the texture-mode block, the level-table bounds, the
 * texel format index table with its size and class codes, the offset code
 * and offset flag pair, the texture colour-table uploads, the level-of-
 * detail block and the 3D slice and pitch arithmetic. Meant to be
 * consumed by public projects, so it carries bit positions, block ids and
 * enum values only. No binary symbols, no addresses, no vendor
 * identifiers.
 *
 * The texture LEVEL descriptors (blocks 0x280 + i) and the SAMPLER word
 * (operand 4 of the texture-mode block) are in BUZZ_DECODE.h and are not
 * repeated here. This file refers to them as "the level descriptor" and
 * "the sampler word".
 *
 * Derivation: derived from odsy RE binary analysis of the VPro texture
 * path (the texture setters, the level-table writer, the format-selection
 * routines run over every input, and the colour-table builders); see the
 * odsy repository's RE notes (docs/texture-state.md,
 * docs/texture-formats.md, docs/tokens.md, docs/buzz.md and the recorded
 * output of the format index sweep). Every fact is restated in our own
 * words. the shared decode-header check (defs.toml) checks this file against
 * those notes and against the publish-safe rules.
 *
 * Grades, on every field and value:
 *   established - read in full in the shipped software that builds or
 *                 consumes the word, and cross-checked where a second
 *                 reader exists. This is what the driver sends, not a
 *                 measurement of the silicon.
 *   inferred    - a reasoned reading; the reasoning is given.
 *   unknown     - not derived. No shipped software or published source
 *                 depends on it.
 * Board behaviour is never "established" here: nothing in this file was
 * measured on a board. A grade speaks about the word's layout and the
 * value the software sends, not about what the hardware does with it.
 * The software facts were read in one build; the other builds are
 * inferred the same except for the format selection routines, which the
 * notes ran in every build and found identical.
 *
 * Machine-parseable annotations (the shared decode-header check reads them):
 *   FIELD: <WORD>.<field> <hi>:<lo> <grade>      one per field
 *   ENUM: <WORD>.<field> <value> <label> <grade> one per enum value
 *   TESTVEC: <value> as <WORD> => field=val, ... a known real value
 *   EXAMPLE (unverified): <value> as <WORD> => ... layout only
 *   CALC: <function> <args> => <result>          a worked arithmetic case
 * A single bit is written <n>:<n>. Do not reformat these lines.
 * The format table rows (section 6) and the pixel class table are
 * parsed and compared with the notes as well.
 *
 * Words are 32 bits. Bit 31 is the most significant.
 */
#ifndef TEXTURE_DECODE_H
#define TEXTURE_DECODE_H

#include <stdint.h>

/* ===================================================================
 * 1. Blocks covered
 * ===================================================================
 *
 * A class-1 command word is 0x0001 in bits 31:16, a 4-bit operand count in
 * bits 13:10 and a block id in bits 9:0 (BUZZ_DECODE.h). The low 16 bits
 * below are count and id together. established for every block: the
 * library sends exactly this many operands, and the kernel's context
 * replay sends the same counts.
 *
 *   id      operands  contents                                  section
 *   0x016   7         texture-mode block: operands 0-3, 5, 6    3
 *                     (operand 4 is the sampler word, in
 *                     BUZZ_DECODE.h)
 *   0x01b   5         texture environment                       2
 *   0x013   4         level-of-detail bias and limits           4
 *   0x03e   3         texture offset words                      4
 *   0x006   1         first level descriptor index              5
 *   0x005   1         active texture target (shared word)       5
 *   0x280+i 3         level descriptors, i = 0..63              BUZZ_DECODE.h
 *   0x3e00+i, 0x3e10+i  16 words each: colour-table uploads    7
 */
#define TEX_OP_TEXENV      0x141bu /* established */
#define TEX_ENV_WORDS      5
#define TEX_OP_TEXMODE     0x1c16u /* established; same as BUZZ_OP_TEXMODE */
#define TEX_MODE_WORDS     7
#define TEX_OP_TEXLOD      0x1013u /* established */
#define TEX_LOD_WORDS      4
#define TEX_OP_TEXOFFSET   0x0c3eu /* established */
#define TEX_OFFSET_WORDS   3
#define TEX_OP_FIRSTLEVEL  0x0406u /* established */
#define TEX_OP_TARGET      0x0405u /* established */

/* ===================================================================
 * 2. Texture environment block (id 0x01b, count 5)
 * ===================================================================
 *
 * Word 0 bits 2:0 are the environment mode. established as the value the
 * setter writes. The setter accepts every base format for every mode, so
 * a decal of an alpha, luminance or intensity texture reaches the board;
 * what the board draws for that is unknown. The other bits of word 0 are
 * never written by the setter: unknown. The mode written when the
 * texture state is first initialised is 2 (modulate). established.
 */
/* FIELD: ENV_W0.mode 2:0 established */
/* FIELD: ENV_W0.unwritten 31:3 unknown */
#define TEX_ENV_W0_MODE_SHIFT       0
#define TEX_ENV_W0_MODE_MASK        0x7u
#define TEX_ENV_W0_UNWRITTEN_SHIFT  3
#define TEX_ENV_W0_UNWRITTEN_MASK   0x1fffffffu
/* ENUM: ENV_W0.mode 1 replace established */
#define TEX_ENV_W0_MODE_REPLACE     1 /* GL_REPLACE and GL_REPLACE_EXT */
/* ENUM: ENV_W0.mode 2 modulate established */
#define TEX_ENV_W0_MODE_MODULATE    2 /* the initial value */
/* ENUM: ENV_W0.mode 3 decal established */
#define TEX_ENV_W0_MODE_DECAL       3
/* ENUM: ENV_W0.mode 4 blend established */
#define TEX_ENV_W0_MODE_BLEND       4
/* ENUM: ENV_W0.mode 5 add established */
#define TEX_ENV_W0_MODE_ADD         5
/*
 * Values 0, 6 and 7 are never sent. GL_PHASE_SGIX is not an environment
 * mode: it is a filter, and sets bit 17 of the sampler word
 * (BUZZ_DECODE.h).
 *
 * Words 1 and 2 are the environment colour, four unsigned 12-bit
 * channels. The conversion from a float x is the same as for the border
 * colour (section 3): 0 for x <= 0, otherwise trunc(x * 4096) clamped to
 * 4095. established as the width and conversion. The channel order is
 * inferred: the notes say the words are packed like the border colour
 * (red high, green low in word 1; blue high, alpha low in word 2) and do
 * not read the order out of the store separately. Bits 31:24 of each
 * word: unknown (the setter's stores of the colour never name them).
 * Mode add overwrites all four channels with 4095, so both words carry
 * 0xffffff. established.
 */
/* FIELD: ENV_W1.green 11:0 inferred */
/* FIELD: ENV_W1.red 23:12 inferred */
/* FIELD: ENV_W1.top 31:24 unknown */
/* FIELD: ENV_W2.alpha 11:0 inferred */
/* FIELD: ENV_W2.blue 23:12 inferred */
/* FIELD: ENV_W2.top 31:24 unknown */
#define TEX_ENV_W1_GREEN_SHIFT      0
#define TEX_ENV_W1_GREEN_MASK       0xfffu
#define TEX_ENV_W1_RED_SHIFT        12
#define TEX_ENV_W1_RED_MASK         0xfffu
#define TEX_ENV_W1_TOP_SHIFT        24
#define TEX_ENV_W1_TOP_MASK         0xffu
#define TEX_ENV_W2_ALPHA_SHIFT      0
#define TEX_ENV_W2_ALPHA_MASK       0xfffu
#define TEX_ENV_W2_BLUE_SHIFT       12
#define TEX_ENV_W2_BLUE_MASK        0xfffu
#define TEX_ENV_W2_TOP_SHIFT        24
#define TEX_ENV_W2_TOP_MASK         0xffu
#define TEX_COLOUR12_BITS           12     /* established */
#define TEX_COLOUR12_MAX            0xfffu /* established */
/*
 * Words 3 and 4 are always zero for OpenGL texturing: the initialiser
 * stores zero in both and no texture setter writes either. established as
 * what is sent. Their meaning is unknown. The image-transfer steps save
 * and restore the whole block as a copy, so they cannot change it.
 */
/* FIELD: ENV_W3.bits 31:0 unknown */
/* FIELD: ENV_W4.bits 31:0 unknown */
#define TEX_ENV_W3_BITS_SHIFT       0
#define TEX_ENV_W3_BITS_MASK        0xffffffffu
#define TEX_ENV_W4_BITS_SHIFT       0
#define TEX_ENV_W4_BITS_MASK        0xffffffffu

/* ===================================================================
 * 3. Texture-mode block (id 0x016, count 7): operands 0-3, 5 and 6
 * ===================================================================
 *
 * The seven operands are, in order: 0 (size and detail), 1, 2 and 3
 * (the S, T and R axis words), 4 (the sampler word, BUZZ_DECODE.h), 5 and
 * 6 (the border colour). The axis order of operands 1-3 follows the
 * order of the object fields the library copies; the assignment of the
 * S, T and R axes to operands 1, 2 and 3 is inferred from that order and
 * from the wrap setters' per-axis stores.
 *
 * Operand 0. The detail fields are established as the setters' stores;
 * the three size exponents are established as widths, with the axis
 * assignment (S in 14:10, T in 9:5, R in 4:0) inferred from the object
 * field order. The exponent is log2 of the base level's size on that
 * axis relative to the base level, clamped at 0. Bit 27 is set when a
 * texture object is created (so a fresh word reads as detail level 4,
 * meaning unknown) and nothing in the library clears it. Bits 30 and
 * 24:15 are never written: unknown.
 */
/* FIELD: MODE_W0.log2_r 4:0 inferred */
/* FIELD: MODE_W0.log2_t 9:5 inferred */
/* FIELD: MODE_W0.log2_s 14:10 inferred */
/* FIELD: MODE_W0.unwritten 24:15 unknown */
/* FIELD: MODE_W0.detail_level 29:25 established */
/* FIELD: MODE_W0.bit30 30:30 unknown */
/* FIELD: MODE_W0.detail_modulate 31:31 established */
#define TEX_MODE_W0_LOG2_R_SHIFT         0
#define TEX_MODE_W0_LOG2_R_MASK          0x1fu
#define TEX_MODE_W0_LOG2_T_SHIFT         5
#define TEX_MODE_W0_LOG2_T_MASK          0x1fu
#define TEX_MODE_W0_LOG2_S_SHIFT         10
#define TEX_MODE_W0_LOG2_S_MASK          0x1fu
#define TEX_MODE_W0_UNWRITTEN_SHIFT      15
#define TEX_MODE_W0_UNWRITTEN_MASK       0x3ffu
#define TEX_MODE_W0_DETAIL_LEVEL_SHIFT   25
#define TEX_MODE_W0_DETAIL_LEVEL_MASK    0x1fu
#define TEX_MODE_W0_BIT30_SHIFT          30
#define TEX_MODE_W0_BIT30_MASK           0x1u
#define TEX_MODE_W0_DETAIL_MODULATE_SHIFT 31
#define TEX_MODE_W0_DETAIL_MODULATE_MASK 0x1u
/*
 * detail_level is the detail level as a positive count, min(-level, 15):
 * the field is five bits wide but the library never sends more than 15.
 * detail_modulate is 1 for the modulate detail function and 0 for add.
 * Detail texture entries sit at the top of the level table (section 5).
 *
 * Operands 1, 2 and 3 (S, T, R). established as widths and as the values
 * written.
 *   max_clamp  bits 16:0, whole texels: trunc(2^n * clamp), n the level
 *              size exponent less the base level (at least 0), clamp the
 *              per-axis maximum-clamp parameter (default 1.0). The
 *              default is therefore the whole level size, not size less
 *              one. The conversion truncates and the 17-bit mask wraps;
 *              it does not saturate. Bit 17 and bits 31:24 are kept from
 *              the previous word and never named by a store: unknown.
 *   wrap_aux   bits 23:18, a 6-bit value set together with that axis's
 *              wrap mode in the sampler word (see WRAPAUX below). Its
 *              meaning on the board is unknown.
 */
/* FIELD: MODE_W1.max_clamp 16:0 established */
/* FIELD: MODE_W1.bit17 17:17 unknown */
/* FIELD: MODE_W1.wrap_aux 23:18 established */
/* FIELD: MODE_W1.top 31:24 unknown */
/* FIELD: MODE_W2.max_clamp 16:0 established */
/* FIELD: MODE_W2.bit17 17:17 unknown */
/* FIELD: MODE_W2.wrap_aux 23:18 established */
/* FIELD: MODE_W2.top 31:24 unknown */
/* FIELD: MODE_W3.max_clamp 16:0 established */
/* FIELD: MODE_W3.bit17 17:17 unknown */
/* FIELD: MODE_W3.wrap_aux 23:18 established */
/* FIELD: MODE_W3.top 31:24 unknown */
#define TEX_MODE_W1_MAX_CLAMP_SHIFT 0
#define TEX_MODE_W1_MAX_CLAMP_MASK  0x1ffffu
#define TEX_MODE_W1_BIT17_SHIFT     17
#define TEX_MODE_W1_BIT17_MASK      0x1u
#define TEX_MODE_W1_WRAP_AUX_SHIFT  18
#define TEX_MODE_W1_WRAP_AUX_MASK   0x3fu
#define TEX_MODE_W1_TOP_SHIFT       24
#define TEX_MODE_W1_TOP_MASK        0xffu
#define TEX_MODE_W2_MAX_CLAMP_SHIFT 0
#define TEX_MODE_W2_MAX_CLAMP_MASK  0x1ffffu
#define TEX_MODE_W2_BIT17_SHIFT     17
#define TEX_MODE_W2_BIT17_MASK      0x1u
#define TEX_MODE_W2_WRAP_AUX_SHIFT  18
#define TEX_MODE_W2_WRAP_AUX_MASK   0x3fu
#define TEX_MODE_W2_TOP_SHIFT       24
#define TEX_MODE_W2_TOP_MASK        0xffu
#define TEX_MODE_W3_MAX_CLAMP_SHIFT 0
#define TEX_MODE_W3_MAX_CLAMP_MASK  0x1ffffu
#define TEX_MODE_W3_BIT17_SHIFT     17
#define TEX_MODE_W3_BIT17_MASK      0x1u
#define TEX_MODE_W3_WRAP_AUX_SHIFT  18
#define TEX_MODE_W3_WRAP_AUX_MASK   0x3fu
#define TEX_MODE_W3_TOP_SHIFT       24
#define TEX_MODE_W3_TOP_MASK        0xffu
/*
 * Wrap modes are independent per axis: each setter takes one enumerant,
 * writes one axis and looks at no other. The wrap codes themselves (0
 * repeat, 1 clamp to edge, 2 clamp, 3 clamp to border) are the sampler
 * word's wrap_s, wrap_t and wrap_r fields (BUZZ_DECODE.h). The value that
 * goes with each code in wrap_aux, established:
 */
/* FIELD: WRAPAUX.value 5:0 established */
#define TEX_WRAPAUX_VALUE_SHIFT        0
#define TEX_WRAPAUX_VALUE_MASK         0x3fu
/* ENUM: WRAPAUX.value 0 repeat_clamp established */
#define TEX_WRAPAUX_VALUE_REPEAT_CLAMP 0  /* for repeat and for clamp */
/* ENUM: WRAPAUX.value 1 edge established */
#define TEX_WRAPAUX_VALUE_EDGE         1  /* for clamp to edge */
/* ENUM: WRAPAUX.value 63 border established */
#define TEX_WRAPAUX_VALUE_BORDER       63 /* for clamp to border */
/*
 * The R axis setter writes repeat to the sampler for any target but 3D
 * (established). Any other wrap enumerant is refused by the library. The
 * library sends every combination of the four modes on the three axes; a
 * mixed state (for example S clamp, T repeat) reaches the board as the
 * per-axis fields and nothing else. What the board does with a mixed
 * state is unknown: every program the notes saw sets one wrap on all axes.
 *
 * Operands 5 and 6: the border colour, four unsigned 12-bit channels,
 * red in operand 5 bits 23:12, green in operand 5 bits 11:0, blue in
 * operand 6 bits 23:12 and alpha in operand 6 bits 11:0. A float x
 * converts as in section 2. established. Operand 5 bits 31:24 and
 * operand 6 bits 31:25 are unknown. Operand 6 bit 24 is the offset flag
 * (below). The default border colour the library writes: not recorded.
 */
/* FIELD: MODE_W5.green 11:0 established */
/* FIELD: MODE_W5.red 23:12 established */
/* FIELD: MODE_W5.top 31:24 unknown */
/* FIELD: MODE_W6.alpha 11:0 established */
/* FIELD: MODE_W6.blue 23:12 established */
/* FIELD: MODE_W6.has_offset 24:24 established */
/* FIELD: MODE_W6.top 31:25 unknown */
#define TEX_MODE_W5_GREEN_SHIFT     0
#define TEX_MODE_W5_GREEN_MASK      0xfffu
#define TEX_MODE_W5_RED_SHIFT       12
#define TEX_MODE_W5_RED_MASK        0xfffu
#define TEX_MODE_W5_TOP_SHIFT       24
#define TEX_MODE_W5_TOP_MASK        0xffu
#define TEX_MODE_W6_ALPHA_SHIFT     0
#define TEX_MODE_W6_ALPHA_MASK      0xfffu
#define TEX_MODE_W6_BLUE_SHIFT      12
#define TEX_MODE_W6_BLUE_MASK       0xfffu
#define TEX_MODE_W6_HAS_OFFSET_SHIFT 24
#define TEX_MODE_W6_HAS_OFFSET_MASK 0x1u
#define TEX_MODE_W6_TOP_SHIFT       25
#define TEX_MODE_W6_TOP_MASK        0x7fu
/*
 * The offset flag pair. Operand 6 bit 24 (has_offset) and the sampler
 * word's no_offset bit (bit 28, BUZZ_DECODE.h) are complements wherever
 * the texture code writes them: both are written from the border of
 * level 0 (no_offset clear and has_offset set when the border is
 * non-zero), on every validation and by the on-board mipmap builder.
 * established. The two can disagree only inside an image-transfer step:
 * the convolution steps build the sampler word with no_offset set
 * whatever the bound texture's border is and keep has_offset as the
 * context holds it, so a bound texture with a border leaves both set.
 * established for the two steps read, inferred for the other convolution
 * steps (same constants). The pixel-to-texture move writes neither. What
 * the board does with both set or both clear is unknown. A model that
 * takes the offset from bit 28 alone, or from bit 24 alone, agrees with
 * the library everywhere except those convolution draws.
 * The texture offset block (id 0x03e, three words) is always sent as
 * zero, zero, zero: established. Their meaning is unknown, as is what
 * the board does with the flag pair when they are zero.
 */

/* ===================================================================
 * 4. Level-of-detail block (id 0x013, count 4)
 * ===================================================================
 *
 * Four words, each a two's-complement fixed-point value with 8 fraction
 * bits in bits 13:0 (the library masks with 0x3fff; bits 31:14 are not
 * named by any store): word 0 the S bias, word 1 the T bias, word 2 the
 * minimum level of detail, word 3 the maximum. established. The value is
 * trunc(x * 256) & 0x3fff.
 *   biases: clamped to [-32, 31.99609375]; the R bias is kept in the
 *           texture object only and reaches no block.
 *   min/max: clamped to [-15, 15] before the conversion, so the library
 *           never sends a value in the 16..31 range that the 14-bit
 *           field could hold. The maximum is the smaller of the
 *           parameter and the level count above the base level.
 * Initial values: min -15 (0x3100), max +15 (0xf00), both biases 0.
 * established. What the board does with a value outside the clamped
 * range is unknown.
 */
/* FIELD: LOD.value 13:0 established */
#define TEX_LOD_VALUE_SHIFT      0
#define TEX_LOD_VALUE_MASK       0x3fffu
#define TEX_LOD_BITS             14
#define TEX_LOD_LIMIT            15     /* established, min/max clamp */
#define TEX_LOD_MIN_DEFAULT      0x3100u /* established */
#define TEX_LOD_MAX_DEFAULT      0xf00u  /* established */

/* ===================================================================
 * 5. Level-table bounds, active target, first level, 3D slices
 * ===================================================================
 *
 * The level table is 64 entries (BUZZ_DECODE.h, blocks 0x280 + i).
 * established as what the library writes:
 *   primary entries:  level - base level, for each level from the base
 *                     level up to the last level. The level number is
 *                     limited to 0..15 before it reaches the table, so a
 *                     primary level count is at most 16 and the entries
 *                     are 0..15.
 *   detail entries:   entries 64 - n .. 63 for a detail magnification
 *                     filter, n the negated detail level, at most 15,
 *                     so they sit at 49..63.
 *   entries 16..48 are never written by activation. The two used ranges
 *   cannot meet and no entry above 63 is written, so a model's refusal
 *   of an entry past the table is a model rule: no library state
 *   reaches it.
 * Entry 60 is also used by two library-internal operations: the on-board
 * mipmap builder and the pixel-to-texture move build a source or render
 * descriptor there (block 0x2bc), with the first-level index set to 60
 * for the builder's own draw and restored afterwards. established.
 * For a 3D target only entry 0 (the base level) is written.
 */
#define TEX_LEVEL_TABLE_ENTRIES   64 /* established */
#define TEX_PRIMARY_LEVELS_MAX    16 /* established */
#define TEX_PRIMARY_LAST          15 /* established */
#define TEX_UNUSED_FIRST          16 /* established */
#define TEX_UNUSED_LAST           48 /* established */
#define TEX_DETAIL_FIRST          49 /* established */
#define TEX_DETAIL_COUNT_MAX      15 /* established */
#define TEX_TABLE_LAST            63 /* established */
#define TEX_SCRATCH_LEVEL         60 /* established */
/*
 * The write coverage of the level descriptor words (the bits the library
 * writes in word 1 are the format index 25:20, size code 31:30, pitch
 * 11:0 and, from two internal paths only, the offset code 28:26) is
 * in BUZZ_DECODE.h and the offset code is in section 6. Word 1 bit 29
 * and bits 19:12 are established as never written by the three routines
 * that store level words, and inferred never written by any library
 * code. What the board does with them, or with a descriptor past entry
 * 63, is unknown.
 *
 * First level descriptor index (id 0x006, count 1): bits 5:0 name the
 * first level descriptor the texture unit reads. Activation writes 0
 * (the base level's descriptor); the on-board mipmap builder writes 60
 * (TEX_SCRATCH_LEVEL) and restores the saved word. Bits 31:6 have no
 * writer and stay 0. established.
 */
/* FIELD: FIRSTLEVEL.index 5:0 established */
/* FIELD: FIRSTLEVEL.unwritten 31:6 unknown */
#define TEX_FIRSTLEVEL_INDEX_SHIFT      0
#define TEX_FIRSTLEVEL_INDEX_MASK       0x3fu
#define TEX_FIRSTLEVEL_UNWRITTEN_SHIFT  6
#define TEX_FIRSTLEVEL_UNWRITTEN_MASK   0x3ffffffu
/*
 * Active texture target (id 0x005, count 1). The word is shared with the
 * clip-plane and path-selection bits of the same block; only the target
 * bits are listed. established as what the library sets: bit 5 for a
 * complete 3D texture, else bit 4 for a complete 2D texture, else bit 3
 * for a complete 1D texture; bit 10 together with any of them. When no
 * enabled target has a complete texture, bits 5:3 and 11:10 are cleared.
 * Bit 11 is only ever cleared: unknown.
 */
/* FIELD: TARGET.dim1 3:3 established */
/* FIELD: TARGET.dim2 4:4 established */
/* FIELD: TARGET.dim3 5:5 established */
/* FIELD: TARGET.active 10:10 established */
/* FIELD: TARGET.bit11 11:11 unknown */
#define TEX_TARGET_DIM1_SHIFT     3
#define TEX_TARGET_DIM1_MASK      0x1u
#define TEX_TARGET_DIM2_SHIFT     4
#define TEX_TARGET_DIM2_MASK      0x1u
#define TEX_TARGET_DIM3_SHIFT     5
#define TEX_TARGET_DIM3_MASK      0x1u
#define TEX_TARGET_ACTIVE_SHIFT   10
#define TEX_TARGET_ACTIVE_MASK    0x1u
#define TEX_TARGET_BIT11_SHIFT    11
#define TEX_TARGET_BIT11_MASK     0x1u
/*
 * 3D textures. established: the library fills one level-table entry
 * for a 3D target and does not change the filter, so a 3D texture whose
 * application asked for a mipmap filter reaches the board with a mipmap
 * filter code in the sampler word and a single level descriptor. The
 * board is inferred to read level 0 plainly (nearest or linear) for 3D:
 * the vendor's porting guide and a published patent both say 3D
 * mipmapping is not implemented. A model that derives further volume
 * levels from slice spacing goes beyond what the library names.
 *
 * Slice exponent (level descriptor word 2, 3D targets only). The notes
 * establish that activation writes level word 2 bits 11:0 for a 3D
 * target, as the base-2 ceiling of the slice tile count (0 for a count
 * below 2). BUZZ_DECODE.h lists that word as unknown because its sender
 * list there predates this finding; this file carries the field under
 * its own word name so the two do not overlap. Board reading: inferred
 * (the only reading under which a later sample finds what an upload
 * wrote).
 */
/* FIELD: LEVEL3D_W2.slice_exp 11:0 established */
#define TEX_LEVEL3D_W2_SLICE_EXP_SHIFT 0
#define TEX_LEVEL3D_W2_SLICE_EXP_MASK  0xfffu
/*
 * Placement of stored-border levels and 3D slices. All three sizes are
 * the level's stored size, border included; b is the border (0 or 1;
 * the library rejects other values). established as library arithmetic;
 * inferred that the board reads the stored data the way the library
 * places it.
 *  1. Origin. With a border b, the image starts (16 - b) & 15 texels
 *     from the object's start on each axis, so the interior begins on
 *     the 16-texel tile boundary: the first texel is at 15 for b = 1
 *     and the interior at 16. With b = 0 nothing shifts.
 *  2. Row pitch (level word 1 bits 11:0), in 16-texel tiles:
 *     round up to even of (ceil((W - 2b) / 16) + 2b); a result of 4096
 *     is stored as 1 (unreachable from a texture the library accepts).
 *  3. Slice tiles: pitch * (ceil((H - 2b) / 16) + 2b); the height term
 *     is not rounded to even. For a depth of 2 or more the allocator
 *     rounds that count up to a power of two S; for a depth of 1 it is
 *     kept. slice_exp is log2 S.
 *  4. Slice stride in address units: (32 << c) << slice_exp, where c is
 *     the size code of the format (section 6). The address unit is
 *     inferred to be 16 bytes (the DMA header divides by 16) and a tile
 *     16 by 16 texels. Slice z of the stored volume sits at address unit
 *     (z + ((16 - b) & 15)) * stride.
 *  5. ICC levels (indices 48 and 49): h = (W + 1) / 2 using the full
 *     stored width, tiles = (h + 15) >> 4, add 2 when the level has a
 *     border, round up to even, store 4096 as 1. The border is not
 *     subtracted. The detail-level loop does not halve the width. Whether
 *     half the width is the board's real row length is unknown (the
 *     published layout of the format is a quarter of the width).
 */
#define TEX_TILE_TEXELS          16 /* established */
#define TEX_SLICE_STRIDE_BASE    32 /* established arithmetic */

static inline uint32_t tex_round_even(uint32_t n)
{
    return (n + 1u) & ~1u;
}

/* Row pitch for an ordinary level of stored width w and border b. */
static inline uint32_t tex_pitch_tiles(uint32_t w, uint32_t b)
{
    uint32_t inner = w > 2u * b ? w - 2u * b : 0u;
    uint32_t t = tex_round_even((inner + 15u) / 16u + 2u * b);

    return t == 4096u ? 1u : t;
}

/* Row pitch for an ICC level (index 48 or 49). */
static inline uint32_t tex_pitch_tiles_icc(uint32_t w, uint32_t b)
{
    uint32_t t = ((w + 1u) / 2u + 15u) >> 4;

    if (b) {
        t += 2u;
    }
    t = tex_round_even(t);
    return t == 4096u ? 1u : t;
}

/* Tiles in one slice, before any rounding to a power of two. */
static inline uint32_t tex_slice_tiles(uint32_t pitch, uint32_t h, uint32_t b)
{
    uint32_t inner = h > 2u * b ? h - 2u * b : 0u;

    return pitch * ((inner + 15u) / 16u + 2u * b);
}

/* Slice tile count rounded up to a power of two, for depth >= 2. */
static inline uint32_t tex_slice_tiles_pow2(uint32_t tiles)
{
    uint32_t s = 1u;

    while (s < tiles) {
        s <<= 1;
    }
    return s;
}

/* Base-2 ceiling of a slice tile count; 0 for a count below 2. */
static inline uint32_t tex_slice_exp(uint32_t tiles)
{
    uint32_t e = 0u;

    while ((1u << e) < tiles) {
        e++;
    }
    return e;
}

/* Slice stride in address units for size code c and slice exponent e. */
static inline uint32_t tex_slice_stride(uint32_t c, uint32_t e)
{
    return (TEX_SLICE_STRIDE_BASE << c) << e;
}
/*
 * Worked cases, each stated in the notes. The pitch cases:
 * CALC: pitch w=4 b=1 => 4
 * CALC: pitch w=514 b=1 => 34
 * CALC: pitch w=17 b=1 => 4
 * CALC: pitch_icc w=64 b=0 => 2
 * CALC: pitch_icc w=17 b=0 => 2
 * CALC: pitch_icc w=512 b=0 => 16
 * CALC: pitch_icc w=1024 b=0 => 32
 * The stored 4x4x4 volume with a border of 1: pitch 4, 12 slice tiles,
 * S = 16, exponent 4, stride 0x400 at size code 1 (0x200 at code 0,
 * 0x800 at code 2), first slice at 15 strides. A 128x128x64 volume with
 * no border: pitch 8, 64 tiles, S = 64, stride 0x1000 at size code 1.
 * CALC: slice_tiles pitch=4 h=4 b=1 => 12
 * CALC: slice_pow2 tiles=12 => 16
 * CALC: slice_exp tiles=16 => 4
 * CALC: stride c=1 e=4 => 1024
 * CALC: stride c=0 e=4 => 512
 * CALC: stride c=2 e=4 => 2048
 * CALC: slice_tiles pitch=8 h=128 b=0 => 64
 * CALC: stride c=1 e=6 => 4096
 */

/* ===================================================================
 * 6. Texel format index table
 * ===================================================================
 *
 * The format index is the six-bit field in level descriptor word 1 bits
 * 25:20 (BUZZ_DECODE.h TEXLEVEL_W1.format_index). The library picks it
 * from the OpenGL internal format and never from the texel data. Four
 * routines that read no context turn it into everything else the library
 * knows about a format; the notes ran each for every input in every
 * build and all builds agree. The widths, size code, pixel class and
 * texture class columns below are established as what those routines
 * return. The component names (which width is red, green, blue, alpha,
 * luminance or intensity) are inferred from which OpenGL formats land on
 * the row. Two facts hold for every row and are unknown: how the board
 * packs a texel (bit order, whether a 12-bit value sits in 16 bits), and
 * whether the board reads the index as a layout code or an opaque number.
 */
/* FIELD: FMT.index 5:0 established */
#define TEX_FMT_INDEX_SHIFT        0
#define TEX_FMT_INDEX_MASK         0x3fu
#define TEX_FMT_INDEX_MAX_USED     49 /* established: 0..49 span the tables */
/* ENUM: FMT.index 0 a8 established */
#define TEX_FMT_INDEX_A8           0   /* GL_ALPHA, GL_ALPHA4, GL_ALPHA8; the default for every unlisted enumerant */
/* ENUM: FMT.index 1 a8_alt established */
#define TEX_FMT_INDEX_A8_ALT       1   /* no emitter; how it differs from 0: unknown */
/* ENUM: FMT.index 2 i8 established */
#define TEX_FMT_INDEX_I8           2   /* GL_INTENSITY, GL_INTENSITY4, GL_INTENSITY8 */
/* ENUM: FMT.index 3 i8_alt established */
#define TEX_FMT_INDEX_I8_ALT       3   /* no emitter */
/* ENUM: FMT.index 4 l8 established */
#define TEX_FMT_INDEX_L8           4   /* GL_LUMINANCE, GL_LUMINANCE4, GL_LUMINANCE8, 1 */
/* ENUM: FMT.index 5 l8_alt established */
#define TEX_FMT_INDEX_L8_ALT       5   /* no emitter */
/* ENUM: FMT.index 6 r3g3b2 established */
#define TEX_FMT_INDEX_R3G3B2       6   /* no emitter (GL_R3_G3_B2 selects 12) */
/* ENUM: FMT.index 7 r3g3b2_alt established */
#define TEX_FMT_INDEX_R3G3B2_ALT   7   /* no emitter */
/* ENUM: FMT.index 8 a12 established */
#define TEX_FMT_INDEX_A12          8   /* GL_ALPHA12, GL_ALPHA16 */
/* ENUM: FMT.index 9 i12 established */
#define TEX_FMT_INDEX_I12          9   /* GL_INTENSITY12, GL_INTENSITY16 */
/* ENUM: FMT.index 10 l12 established */
#define TEX_FMT_INDEX_L12          10  /* GL_LUMINANCE12, GL_LUMINANCE16 */
/* ENUM: FMT.index 11 l8a8 established */
#define TEX_FMT_INDEX_L8A8         11  /* GL_LUMINANCE_ALPHA and the 4/4, 6/2 and 8/8 variants, 2 */
/* ENUM: FMT.index 12 rgba4 established */
#define TEX_FMT_INDEX_RGBA4        12  /* GL_R3_G3_B2, GL_RGB2_EXT, GL_RGB4, GL_RGBA2, GL_RGBA4 */
/* ENUM: FMT.index 13 rgb5a1 established */
#define TEX_FMT_INDEX_RGB5A1       13  /* GL_RGB5, GL_RGB5_A1 */
/* ENUM: FMT.index 16 l12a12 established */
#define TEX_FMT_INDEX_L12A12       16  /* GL_LUMINANCE12_ALPHA4, _ALPHA12, GL_LUMINANCE16_ALPHA16 */
/* ENUM: FMT.index 17 rgba8 established */
#define TEX_FMT_INDEX_RGBA8        17  /* GL_RGB, GL_RGBA, GL_RGB8, GL_RGBA8, 3, 4 */
/* ENUM: FMT.index 18 rgb10a2 established */
#define TEX_FMT_INDEX_RGB10A2      18  /* GL_RGB10, GL_RGB10_A2 */
/* ENUM: FMT.index 32 rgba12_move inferred */
#define TEX_FMT_INDEX_RGBA12_MOVE  32  /* only the pixel-to-texture move emits it, for pixel class 13; reachability established, role inferred */
/* ENUM: FMT.index 33 rgba12 established */
#define TEX_FMT_INDEX_RGBA12       33  /* GL_RGB12, GL_RGB16, GL_RGBA12, GL_RGBA16 */
/* ENUM: FMT.index 48 icc_rgb established */
#define TEX_FMT_INDEX_ICC_RGB      48  /* GL_R5_G6_B5_ICC_SGIX; widths established, the stored 5/6/5 width inferred from the name */
/* ENUM: FMT.index 49 icc_rgba established */
#define TEX_FMT_INDEX_ICC_RGBA     49  /* GL_R5_G6_B5_A8_ICC_SGIX; as 48 */
/*
 * Indices 14, 15, 19 to 31, 34 to 47, 50 and 51 have no table entry:
 * the width routine writes zero widths and leaves the size code unwritten
 * (established by running them). Indices 52 to 63 rest on the routine's
 * bound check (index below 50), read but not run: inferred the same. The
 * library never sends any of them for a GL format (established). What
 * the board does with them: unknown.
 *
 * Row layout of the table below: present, then the six widths in bits in
 * the order red, green, blue, alpha, luminance, intensity, then the size
 * code c, the pixel class (-1: none, nothing in the pixel path maps to
 * this index), and the texture class (section 6, CLASS) for an RGB-family
 * and for an RGBA-family OpenGL internal format. Where the two classes
 * differ the class depends on the OpenGL format the application named,
 * not on the index: index 17 is sent with class 5 for GL_RGB8 and with
 * class 6 for GL_RGBA8 and the same four bytes are stored. The RGB
 * family is GL_R3_G3_B2, 3, GL_RGB and GL_RGB2_EXT to GL_RGB16. The
 * component bits are the sum of the widths; the booked size in bytes is
 * 2 << c (the allocator's unit, established, not a measured packing).
 */
struct tex_fmt_info {
    uint8_t present;
    uint8_t r, g, b, a, l, i;
    uint8_t size_code;
    int8_t  pixel_class;
    uint8_t class_rgb;
    uint8_t class_rgba;
};

static const struct tex_fmt_info tex_fmt_table[64] = {
    /*        present  r  g  b  a  l  i  c  pclass  rgb rgba */
    [0]  = { 1,  0, 0, 0, 8, 0, 0, 0,  0, 1, 1 }, /* established */
    [1]  = { 1,  0, 0, 0, 8, 0, 0, 0, -1, 1, 1 }, /* established */
    [2]  = { 1,  0, 0, 0, 0, 0, 8, 0,  1, 4, 4 }, /* established */
    [3]  = { 1,  0, 0, 0, 0, 0, 8, 0, -1, 4, 4 }, /* established */
    [4]  = { 1,  0, 0, 0, 0, 8, 0, 0,  2, 2, 2 }, /* established */
    [5]  = { 1,  0, 0, 0, 0, 8, 0, 0, -1, 2, 2 }, /* established */
    [6]  = { 1,  3, 3, 2, 0, 0, 0, 0, -1, 5, 5 }, /* established */
    [7]  = { 1,  3, 3, 2, 0, 0, 0, 0, -1, 5, 5 }, /* established */
    [8]  = { 1,  0, 0, 0, 12, 0, 0, 0,  3, 1, 1 }, /* established */
    [9]  = { 1,  0, 0, 0, 0, 0, 12, 0,  4, 4, 4 }, /* established */
    [10] = { 1,  0, 0, 0, 0, 12, 0, 0,  5, 2, 2 }, /* established */
    [11] = { 1,  0, 0, 0, 8, 8, 0, 0,  6, 3, 3 }, /* established */
    [12] = { 1,  4, 4, 4, 4, 0, 0, 0,  7, 5, 6 }, /* established */
    [13] = { 1,  5, 5, 5, 1, 0, 0, 0,  8, 5, 6 }, /* established */
    [16] = { 1,  0, 0, 0, 12, 12, 0, 1,  9, 3, 3 }, /* established */
    [17] = { 1,  8, 8, 8, 8, 0, 0, 1, 10, 5, 6 }, /* established */
    [18] = { 1, 10, 10, 10, 2, 0, 0, 1, 11, 5, 6 }, /* established */
    [32] = { 1, 12, 12, 12, 12, 0, 0, 2, 13, 5, 6 }, /* inferred role */
    [33] = { 1, 12, 12, 12, 12, 0, 0, 2, 12, 5, 6 }, /* established */
    [48] = { 1,  8, 8, 8, 0, 0, 0, 0, 14, 5, 5 }, /* established, stored width inferred */
    [49] = { 1,  8, 8, 8, 8, 0, 0, 1, 15, 5, 6 }, /* established, stored width inferred */
};

/*
 * Texture class (the "class" columns above): the component set the
 * environment sees, a 3-bit value stored in the sampler word bits 25:23
 * (BUZZ_DECODE.h SAMPLER.activation, which that file leaves as an
 * unexplained 3-bit value; this file gives its source). The library
 * returns it from the index and the OpenGL internal format the
 * application named, so the class cannot be derived from the index alone.
 * Established as the values returned; the names are inferred from the
 * formats that give each. The board's use of the field is unknown.
 */
/* FIELD: CLASS.value 2:0 established */
#define TEX_CLASS_VALUE_SHIFT       0
#define TEX_CLASS_VALUE_MASK        0x7u
/* ENUM: CLASS.value 0 none established */
#define TEX_CLASS_VALUE_NONE        0 /* an index with no table entry */
/* ENUM: CLASS.value 1 alpha inferred */
#define TEX_CLASS_VALUE_ALPHA       1
/* ENUM: CLASS.value 2 luminance inferred */
#define TEX_CLASS_VALUE_LUMINANCE   2
/* ENUM: CLASS.value 3 luminance_alpha inferred */
#define TEX_CLASS_VALUE_LUMINANCE_ALPHA 3
/* ENUM: CLASS.value 4 intensity inferred */
#define TEX_CLASS_VALUE_INTENSITY   4
/* ENUM: CLASS.value 5 rgb inferred */
#define TEX_CLASS_VALUE_RGB         5
/* ENUM: CLASS.value 6 rgba inferred */
#define TEX_CLASS_VALUE_RGBA        6
/*
 * Index 12 is RGBA 4/4/4/4 storage whatever the class: a GL_RGB4 texture
 * carries index 12 with class 5, a GL_RGBA4 texture index 12 with class
 * 6. GL_R3_G3_B2 is stored in the 4/4/4/4 layout, not in layouts 6 or 7.
 * What an RGB-family upload puts in the unused alpha field of index 12,
 * and whether the board forces alpha to 1 for class 5, are unknown.
 *
 * Does anything check the class against the index? Unknown for the
 * board. established that no software on the reference install checks
 * it, and that the library's pixel-to-texture move sends class 6 with
 * every index (including pairs the texture path never produces, such as
 * class 6 with index 10). A model that refuses a pair would break the
 * library's own pixel-to-texture steps. For an emulator (a model choice,
 * not a finding): accept any pair, take the stored layout and component
 * widths from the index, and take the component set from the class.
 *
 * Pixel class to index (the move path, established, every class run):
 * class 0 to 0, 1 to 2, 2 to 4, 3 to 8, 4 to 9, 5 to 10, 6 to 11, 7 to
 * 12, 8 to 13, 9 to 16, 10 to 17, 11 to 18, 12 to 33, 13 to 32, 14 to
 * 48, 15 to 49, 16 to 4 and 17 to 10; classes 18 and above fail.
 * The pixel classes are those of the image path (BUZZ_DECODE.h
 * HDR_W4.size_field and the pixel-mode field_format entries).
 */
#define TEX_PIXCLASS_COUNT 18
static const uint8_t tex_pixclass_to_index[TEX_PIXCLASS_COUNT] = {
    0, 2, 4, 8, 9, 10, 11, 12, 13, 16, 17, 18, 33, 32, 48, 49, 4, 10
};
/*
 * Size code c (level descriptor word 1 bits 31:30, BUZZ_DECODE.h
 * TEXLEVEL_W1.size_code): 0 for indices 0..15 and 48, 1 for 16, 17, 18
 * and 49, 2 for 32 and 33. The allocator books 2 << c bytes per texel;
 * the texture path and the pixel-to-texture move both send the same
 * quantity (log2 bytes per texel minus 1), inferred for the move's
 * every source object. Whether the board reads the field as a size, a
 * layout selector or ignores it is unknown. The booked bytes are an
 * upper bound for 2D textures (ICC levels book the full width while the
 * pitch halves it) and a contract for 3D slices (section 5).
 */
/* FIELD: SIZE.code 1:0 established */
#define TEX_SIZE_CODE_SHIFT        0
#define TEX_SIZE_CODE_MASK         0x3u
/* ENUM: SIZE.code 0 b2 established */
#define TEX_SIZE_CODE_B2           0 /* 2 bytes a texel booked */
/* ENUM: SIZE.code 1 b4 established */
#define TEX_SIZE_CODE_B4           1 /* 4 bytes */
/* ENUM: SIZE.code 2 b8 established */
#define TEX_SIZE_CODE_B8           2 /* 8 bytes */
/*
 * Code 3 is never sent (the allocator's table does accept element sizes
 * of 16 and 32 bytes, codes 3 and 4, but no format row uses them).
 *
 * Offset code (level descriptor word 1 bits 28:26,
 * BUZZ_DECODE.h TEXLEVEL_W1.offset_code). Two writers: the on-board
 * mipmap builder stores 2 only when the record's offset word equals 2,
 * which the allocator never produces, so it stores 0; the
 * pixel-to-texture move stores a value its helper derives from the
 * source object's size and pixel-mode words: 0 for six of the pairs
 * traced and 2 for exactly one pair; every other pair is a GL error. The
 * builders traced give only pairs that map to 0, so code 2 is the move's
 * only possible nonzero output and no traced path produces it: inferred
 * unreachable in the shipped software, not excluded. Whether the board
 * treats 1..7 differently from 0 is unknown. A model can carry the three
 * bits and give them no behaviour.
 */
/* FIELD: OFFCODE.value 2:0 established */
#define TEX_OFFCODE_VALUE_SHIFT    0
#define TEX_OFFCODE_VALUE_MASK     0x7u
/* ENUM: OFFCODE.value 0 none established */
#define TEX_OFFCODE_VALUE_NONE     0
/* ENUM: OFFCODE.value 2 code2 established */
#define TEX_OFFCODE_VALUE_CODE2    2 /* meaning unknown */

/* ===================================================================
 * 7. Texture colour table uploads (targets 0x3e00 + i and 0x3e10 + i)
 * ===================================================================
 *
 * The texture colour table is shared with the pixel colour-map lookup.
 * It is enabled by the sampler word's colour_table bit and described by
 * its table_fmt field (BUZZ_DECODE.h); both are kept from the context,
 * not from the texture object. The board always receives 256 entries:
 * the library expands a narrower table by replication on the host, so
 * entry k of a w-entry table covers outputs [256 k / w, 256 (k + 1) / w)
 * and the table is a step function. Whether the board interpolates
 * between its 256 entries or truncates the index is unknown. The
 * accepted width for this target is 0 or a power of two up to 256;
 * above 256 the library raises an error (the other colour-table targets
 * accept 4096).
 *
 * The 256 entries go out as 16 uploads of 16 words to each of two
 * target ranges: the first range carries the red and green lanes, the
 * second the blue and alpha lanes. Entry n is word (n & 15) of upload
 * (n >> 4) of BOTH ranges. All established as what the library sends
 * (the 256-entry branch read in full). The 4096-entry branch uses a
 * different, tiled order, was not read in full, and is not the texture
 * table.
 *
 * Each lane is 12 bits: trunc(4095 * x + 0.5) & 0xfff for a table value
 * x in [0, 1] (rounded, unlike the colour conversion of section 2). A
 * table whose format lacks a component gets an identity ramp in that
 * lane, not zero: trunc(0.5 + 4095 i / (n - 1)) for n entries, i the
 * first output index of the run that shares one table element. Alpha
 * tables: the red, green and blue lanes are the ramp and the alpha lane
 * the table; luminance: red, green, blue are the table and alpha the
 * ramp; RGB: alpha the ramp; luminance-alpha: red, green and blue the
 * luminance and alpha the table's alpha; intensity: all four lanes the
 * table; RGBA: four elements. established.
 */
#define TEX_COLTAB_A_BASE        0x3e00u /* established: red and green lanes */
#define TEX_COLTAB_B_BASE        0x3e10u /* established: blue and alpha lanes */
#define TEX_COLTAB_UPLOAD_LAST   15      /* i = 0..15 */
#define TEX_COLTAB_UPLOAD_WORDS  16
#define TEX_COLTAB_UPLOAD_SHIFT  4       /* upload = entry >> 4 */
#define TEX_COLTAB_WORD_MASK     15      /* word = entry & 15 */
#define TEX_COLTAB_ENTRIES       256     /* established */
#define TEX_COLTAB_MAX_WIDTH     256     /* established */
#define TEX_COLOUR12_ROUND_SCALE 4095    /* established */
#define TEX_COLOUR12_LANE_MASK   0xfffu  /* established */
/* FIELD: COLTAB_A.green 11:0 established */
/* FIELD: COLTAB_A.red 23:12 established */
/* FIELD: COLTAB_A.kept 31:24 unknown */
/* FIELD: COLTAB_B.alpha 11:0 established */
/* FIELD: COLTAB_B.blue 23:12 established */
/* FIELD: COLTAB_B.kept 31:24 unknown */
#define TEX_COLTAB_A_GREEN_SHIFT 0
#define TEX_COLTAB_A_GREEN_MASK  0xfffu
#define TEX_COLTAB_A_RED_SHIFT   12
#define TEX_COLTAB_A_RED_MASK    0xfffu
#define TEX_COLTAB_A_KEPT_SHIFT  24
#define TEX_COLTAB_A_KEPT_MASK   0xffu
#define TEX_COLTAB_B_ALPHA_SHIFT 0
#define TEX_COLTAB_B_ALPHA_MASK  0xfffu
#define TEX_COLTAB_B_BLUE_SHIFT  12
#define TEX_COLTAB_B_BLUE_MASK   0xfffu
#define TEX_COLTAB_B_KEPT_SHIFT  24
#define TEX_COLTAB_B_KEPT_MASK   0xffu
/*
 * Bits 31:24 of each word are kept from the library's own record, whose
 * value the notes do not give: unknown.
 *
 * Two more upload targets exist in the library: 0x3e20 and 0x3e30. The
 * code that sends them is only reached if the dirty word carries the
 * matching bit, and a scan of every store to that word finds none that
 * sets either bit. Inferred that the library never sends them (the dirty
 * word's initial value was not traced). What they hold: unknown.
 * Texture colour tables with a 3D texture are sent with the same two
 * fields as for 2D; the library does not look at the target. What the
 * board does for a 3D texel lookup: unknown.
 */
#define TEX_COLTAB_C_BASE        0x3e20u /* inferred never sent */
#define TEX_COLTAB_D_BASE        0x3e30u /* inferred never sent */

/* ===================================================================
 * 8. Limits the library applies
 * ===================================================================
 *
 * A level's size less twice its border must be zero or a power of two no
 * larger than 32768, else the library raises an invalid-value error; a
 * border other than 0 or 1 makes the check return false with no error.
 * The ceiling is the library's, not a board measurement (the vendor's
 * porting guide and white paper agree on 32768 or the board memory,
 * whichever is smaller). established.
 */
#define TEX_SIZE_MAX             0x8000u /* established */
#define TEX_BORDER_MAX           1       /* established */

/* ===================================================================
 * 9. Test vectors
 * ===================================================================
 *
 * TESTVEC lines: known real values and their decode. Format is fixed; a
 * consumer may assert against them. Each value is one the notes record.
 *
 * The environment colour the add mode writes (all four channels 4095):
 * TESTVEC: 0xffffff as ENV_W1 => red=4095, green=4095
 * TESTVEC: 0xffffff as ENV_W2 => blue=4095, alpha=4095
 * The level-of-detail defaults (minimum -15 and maximum +15; the
 * decode is the raw 14-bit field, -15 * 256 & 0x3fff):
 * TESTVEC: 0x3100 as LOD => value=12544
 * TESTVEC: 0xf00 as LOD => value=3840
 *
 * The format table rows are the vectors for the format index: every row
 * of tex_fmt_table is compared by the check with the exhaustive run of
 * the format routines recorded in the notes, and the pixel class table
 * with the move path's mapping.
 *
 * Layout-only examples, constructed from the header layout and not read
 * from software. Do not assert a generator against them.
 * A fresh texture object's operand 0 with only bit 27 set (the notes
 * state that this bit reads as detail level 4; that no other bit is set
 * in the whole word is not recorded):
 * EXAMPLE (unverified): 0x08000000 as MODE_W0 => detail_modulate=0, detail_level=4, log2_s=0, log2_t=0, log2_r=0
 * EXAMPLE (unverified): 0x00fc0000 as MODE_W1 => max_clamp=0, wrap_aux=63
 * EXAMPLE (unverified): 0x00123456 as COLTAB_A => red=291, green=1110, kept=0
 * EXAMPLE (unverified): 0x00abcdef as COLTAB_B => blue=2748, alpha=3567, kept=0
 */

#endif /* TEXTURE_DECODE_H */
