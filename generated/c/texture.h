/* generated from devices/texture/registers.toml by defs-gen - do not edit, change the source */
/* VPro (Odyssey) "Buzz" texture state: environment, */
#ifndef TEX_GEN_H
#define TEX_GEN_H

#include <stdint.h>


/*
 * Texture class (the "class" columns above): the component set the
 * environment sees, a 3-bit value stored in the sampler word bits 25:23
 * (generated/c/buzz.h SAMPLER.activation, which that file leaves as an
 * unexplained 3-bit value; this file gives its source). The library
 * returns it from the index and the OpenGL internal format the
 * application named, so the class cannot be derived from the index alone.
 * Established as the values returned; the names are inferred from the
 * formats that give each. The board's use of the field is unknown.
 */
/* word CLASS: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_CLASS_WIDTH                              32 /* established */
#define TEX_CLASS_VALUE_SHIFT                        0 /* established */
#define TEX_CLASS_VALUE_MASK                         0x7u
#define TEX_CLASS_VALUE_INPLACE                      (TEX_CLASS_VALUE_MASK << TEX_CLASS_VALUE_SHIFT)
#define TEX_CLASS_VALUE_NONE                         0 /* established */
#define TEX_CLASS_VALUE_ALPHA                        1 /* inferred */
#define TEX_CLASS_VALUE_LUMINANCE                    2 /* inferred */
#define TEX_CLASS_VALUE_LUMINANCE_ALPHA              3 /* inferred */
#define TEX_CLASS_VALUE_INTENSITY                    4 /* inferred */
#define TEX_CLASS_VALUE_RGB                          5 /* inferred */
#define TEX_CLASS_VALUE_RGBA                         6 /* inferred */

/* word COLTAB_A: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_COLTAB_A_WIDTH                           32 /* unknown */
#define TEX_COLTAB_A_KEPT_SHIFT                      24 /* unknown */
#define TEX_COLTAB_A_KEPT_MASK                       0xffu
#define TEX_COLTAB_A_KEPT_INPLACE                    (TEX_COLTAB_A_KEPT_MASK << TEX_COLTAB_A_KEPT_SHIFT)
#define TEX_COLTAB_A_RED_SHIFT                       12 /* established */
#define TEX_COLTAB_A_RED_MASK                        0xfffu
#define TEX_COLTAB_A_RED_INPLACE                     (TEX_COLTAB_A_RED_MASK << TEX_COLTAB_A_RED_SHIFT)
#define TEX_COLTAB_A_GREEN_SHIFT                     0 /* established */
#define TEX_COLTAB_A_GREEN_MASK                      0xfffu
#define TEX_COLTAB_A_GREEN_INPLACE                   (TEX_COLTAB_A_GREEN_MASK << TEX_COLTAB_A_GREEN_SHIFT)

/* word COLTAB_B: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_COLTAB_B_WIDTH                           32 /* unknown */
#define TEX_COLTAB_B_KEPT_SHIFT                      24 /* unknown */
#define TEX_COLTAB_B_KEPT_MASK                       0xffu
#define TEX_COLTAB_B_KEPT_INPLACE                    (TEX_COLTAB_B_KEPT_MASK << TEX_COLTAB_B_KEPT_SHIFT)
#define TEX_COLTAB_B_BLUE_SHIFT                      12 /* established */
#define TEX_COLTAB_B_BLUE_MASK                       0xfffu
#define TEX_COLTAB_B_BLUE_INPLACE                    (TEX_COLTAB_B_BLUE_MASK << TEX_COLTAB_B_BLUE_SHIFT)
#define TEX_COLTAB_B_ALPHA_SHIFT                     0 /* established */
#define TEX_COLTAB_B_ALPHA_MASK                      0xfffu
#define TEX_COLTAB_B_ALPHA_INPLACE                   (TEX_COLTAB_B_ALPHA_MASK << TEX_COLTAB_B_ALPHA_SHIFT)

/* word ENV_W0: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_ENV_W0_WIDTH                             32 /* unknown */
#define TEX_ENV_W0_UNWRITTEN_SHIFT                   3 /* unknown */
#define TEX_ENV_W0_UNWRITTEN_MASK                    0x1fffffffu
#define TEX_ENV_W0_UNWRITTEN_INPLACE                 (TEX_ENV_W0_UNWRITTEN_MASK << TEX_ENV_W0_UNWRITTEN_SHIFT)
#define TEX_ENV_W0_MODE_SHIFT                        0 /* established */
#define TEX_ENV_W0_MODE_MASK                         0x7u
#define TEX_ENV_W0_MODE_INPLACE                      (TEX_ENV_W0_MODE_MASK << TEX_ENV_W0_MODE_SHIFT)
#define TEX_ENV_W0_MODE_REPLACE                      1 /* established */
#define TEX_ENV_W0_MODE_MODULATE                     2 /* established */
#define TEX_ENV_W0_MODE_DECAL                        3 /* established */
#define TEX_ENV_W0_MODE_BLEND                        4 /* established */
#define TEX_ENV_W0_MODE_ADD                          5 /* established */

/*
 * Values 0, 6 and 7 are never sent. GL_PHASE_SGIX is not an environment
 * mode: it is a filter, and sets bit 17 of the sampler word
 * (generated/c/buzz.h).
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
/* word ENV_W1: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_ENV_W1_WIDTH                             32 /* unknown */
#define TEX_ENV_W1_TOP_SHIFT                         24 /* unknown */
#define TEX_ENV_W1_TOP_MASK                          0xffu
#define TEX_ENV_W1_TOP_INPLACE                       (TEX_ENV_W1_TOP_MASK << TEX_ENV_W1_TOP_SHIFT)
#define TEX_ENV_W1_RED_SHIFT                         12 /* inferred */
#define TEX_ENV_W1_RED_MASK                          0xfffu
#define TEX_ENV_W1_RED_INPLACE                       (TEX_ENV_W1_RED_MASK << TEX_ENV_W1_RED_SHIFT)
#define TEX_ENV_W1_GREEN_SHIFT                       0 /* inferred */
#define TEX_ENV_W1_GREEN_MASK                        0xfffu
#define TEX_ENV_W1_GREEN_INPLACE                     (TEX_ENV_W1_GREEN_MASK << TEX_ENV_W1_GREEN_SHIFT)

/* word ENV_W2: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_ENV_W2_WIDTH                             32 /* unknown */
#define TEX_ENV_W2_TOP_SHIFT                         24 /* unknown */
#define TEX_ENV_W2_TOP_MASK                          0xffu
#define TEX_ENV_W2_TOP_INPLACE                       (TEX_ENV_W2_TOP_MASK << TEX_ENV_W2_TOP_SHIFT)
#define TEX_ENV_W2_BLUE_SHIFT                        12 /* inferred */
#define TEX_ENV_W2_BLUE_MASK                         0xfffu
#define TEX_ENV_W2_BLUE_INPLACE                      (TEX_ENV_W2_BLUE_MASK << TEX_ENV_W2_BLUE_SHIFT)
#define TEX_ENV_W2_ALPHA_SHIFT                       0 /* inferred */
#define TEX_ENV_W2_ALPHA_MASK                        0xfffu
#define TEX_ENV_W2_ALPHA_INPLACE                     (TEX_ENV_W2_ALPHA_MASK << TEX_ENV_W2_ALPHA_SHIFT)

/*
 * Words 3 and 4 are always zero for OpenGL texturing: the initialiser
 * stores zero in both and no texture setter writes either. established as
 * what is sent. Their meaning is unknown. The image-transfer steps save
 * and restore the whole block as a copy, so they cannot change it.
 */
/* word ENV_W3: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_ENV_W3_WIDTH                             32 /* unknown */
#define TEX_ENV_W3_BITS_SHIFT                        0 /* unknown */
#define TEX_ENV_W3_BITS_MASK                         0xffffffffu
#define TEX_ENV_W3_BITS_INPLACE                      (TEX_ENV_W3_BITS_MASK << TEX_ENV_W3_BITS_SHIFT)

/* word ENV_W4: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_ENV_W4_WIDTH                             32 /* unknown */
#define TEX_ENV_W4_BITS_SHIFT                        0 /* unknown */
#define TEX_ENV_W4_BITS_MASK                         0xffffffffu
#define TEX_ENV_W4_BITS_INPLACE                      (TEX_ENV_W4_BITS_MASK << TEX_ENV_W4_BITS_SHIFT)

/*
 * The write coverage of the level descriptor words (the bits the library
 * writes in word 1 are the format index 25:20, size code 31:30, pitch
 * 11:0 and, from two internal paths only, the offset code 28:26) is
 * in generated/c/buzz.h and the offset code is in section 6. Word 1 bit 29
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
/* word FIRSTLEVEL: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_FIRSTLEVEL_WIDTH                         32 /* unknown */
#define TEX_FIRSTLEVEL_UNWRITTEN_SHIFT               6 /* unknown */
#define TEX_FIRSTLEVEL_UNWRITTEN_MASK                0x3ffffffu
#define TEX_FIRSTLEVEL_UNWRITTEN_INPLACE             (TEX_FIRSTLEVEL_UNWRITTEN_MASK << TEX_FIRSTLEVEL_UNWRITTEN_SHIFT)
#define TEX_FIRSTLEVEL_INDEX_SHIFT                   0 /* established */
#define TEX_FIRSTLEVEL_INDEX_MASK                    0x3fu
#define TEX_FIRSTLEVEL_INDEX_INPLACE                 (TEX_FIRSTLEVEL_INDEX_MASK << TEX_FIRSTLEVEL_INDEX_SHIFT)

/* word FMT: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_FMT_WIDTH                                32 /* established */
#define TEX_FMT_INDEX_SHIFT                          0 /* established */
#define TEX_FMT_INDEX_MASK                           0x3fu
#define TEX_FMT_INDEX_INPLACE                        (TEX_FMT_INDEX_MASK << TEX_FMT_INDEX_SHIFT)
#define TEX_FMT_INDEX_A8                             0 /* established */
#define TEX_FMT_INDEX_A8_ALT                         1 /* established */
#define TEX_FMT_INDEX_I8                             2 /* established */
#define TEX_FMT_INDEX_I8_ALT                         3 /* established */
#define TEX_FMT_INDEX_L8                             4 /* established */
#define TEX_FMT_INDEX_L8_ALT                         5 /* established */
#define TEX_FMT_INDEX_R3G3B2                         6 /* established */
#define TEX_FMT_INDEX_R3G3B2_ALT                     7 /* established */
#define TEX_FMT_INDEX_A12                            8 /* established */
#define TEX_FMT_INDEX_I12                            9 /* established */
#define TEX_FMT_INDEX_L12                            10 /* established */
#define TEX_FMT_INDEX_L8A8                           11 /* established */
#define TEX_FMT_INDEX_RGBA4                          12 /* established */
#define TEX_FMT_INDEX_RGB5A1                         13 /* established */
#define TEX_FMT_INDEX_L12A12                         16 /* established */
#define TEX_FMT_INDEX_RGBA8                          17 /* established */
#define TEX_FMT_INDEX_RGB10A2                        18 /* established */
#define TEX_FMT_INDEX_RGBA12_MOVE                    32 /* inferred */
#define TEX_FMT_INDEX_RGBA12                         33 /* established */
#define TEX_FMT_INDEX_ICC_RGB                        48 /* established */
#define TEX_FMT_INDEX_ICC_RGBA                       49 /* established */

/*
 * 3D textures. established: the library fills one level-table entry
 * for a 3D target and does not change the filter, so a 3D texture whose
 * application asked for a mipmap filter reaches the board with a mipmap
 * filter code in the sampler word and a single level descriptor. The
 * board is inferred to read level 0 plainly (nearest or linear) for 3D:
 * the vendor's porting guide and a published patent both say 3D
 * mipmapping is not implemented. Deriving further volume
 * levels from slice spacing would go beyond what the library names.
 *
 * Slice exponent (level descriptor word 2, 3D targets only). The notes
 * establish that activation writes level word 2 bits 11:0 for a 3D
 * target, as the base-2 ceiling of the slice tile count (0 for a count
 * below 2). generated/c/buzz.h lists that word as unknown because its sender
 * list there predates this finding; this file carries the field under
 * its own word name so the two do not overlap. Board reading: inferred
 * (the only reading under which a later sample finds what an upload
 * wrote).
 */
/* word LEVEL3D_W2: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_LEVEL3D_W2_WIDTH                         32 /* established */
#define TEX_LEVEL3D_W2_SLICE_EXP_SHIFT               0 /* established */
#define TEX_LEVEL3D_W2_SLICE_EXP_MASK                0xfffu
#define TEX_LEVEL3D_W2_SLICE_EXP_INPLACE             (TEX_LEVEL3D_W2_SLICE_EXP_MASK << TEX_LEVEL3D_W2_SLICE_EXP_SHIFT)

/* word LOD: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_LOD_WIDTH                                32 /* established */
#define TEX_LOD_VALUE_SHIFT                          0 /* established */
#define TEX_LOD_VALUE_MASK                           0x3fffu
#define TEX_LOD_VALUE_INPLACE                        (TEX_LOD_VALUE_MASK << TEX_LOD_VALUE_SHIFT)

/* word MODE_W0: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_MODE_W0_WIDTH                            32 /* unknown */
#define TEX_MODE_W0_DETAIL_MODULATE_SHIFT            31 /* established */
#define TEX_MODE_W0_DETAIL_MODULATE_MASK             0x1u
#define TEX_MODE_W0_DETAIL_MODULATE_INPLACE          (TEX_MODE_W0_DETAIL_MODULATE_MASK << TEX_MODE_W0_DETAIL_MODULATE_SHIFT)
#define TEX_MODE_W0_BIT30_SHIFT                      30 /* unknown */
#define TEX_MODE_W0_BIT30_MASK                       0x1u
#define TEX_MODE_W0_BIT30_INPLACE                    (TEX_MODE_W0_BIT30_MASK << TEX_MODE_W0_BIT30_SHIFT)
#define TEX_MODE_W0_DETAIL_LEVEL_SHIFT               25 /* established */
#define TEX_MODE_W0_DETAIL_LEVEL_MASK                0x1fu
#define TEX_MODE_W0_DETAIL_LEVEL_INPLACE             (TEX_MODE_W0_DETAIL_LEVEL_MASK << TEX_MODE_W0_DETAIL_LEVEL_SHIFT)
#define TEX_MODE_W0_UNWRITTEN_SHIFT                  15 /* unknown */
#define TEX_MODE_W0_UNWRITTEN_MASK                   0x3ffu
#define TEX_MODE_W0_UNWRITTEN_INPLACE                (TEX_MODE_W0_UNWRITTEN_MASK << TEX_MODE_W0_UNWRITTEN_SHIFT)
#define TEX_MODE_W0_LOG2_S_SHIFT                     10 /* inferred */
#define TEX_MODE_W0_LOG2_S_MASK                      0x1fu
#define TEX_MODE_W0_LOG2_S_INPLACE                   (TEX_MODE_W0_LOG2_S_MASK << TEX_MODE_W0_LOG2_S_SHIFT)
#define TEX_MODE_W0_LOG2_T_SHIFT                     5 /* inferred */
#define TEX_MODE_W0_LOG2_T_MASK                      0x1fu
#define TEX_MODE_W0_LOG2_T_INPLACE                   (TEX_MODE_W0_LOG2_T_MASK << TEX_MODE_W0_LOG2_T_SHIFT)
#define TEX_MODE_W0_LOG2_R_SHIFT                     0 /* inferred */
#define TEX_MODE_W0_LOG2_R_MASK                      0x1fu
#define TEX_MODE_W0_LOG2_R_INPLACE                   (TEX_MODE_W0_LOG2_R_MASK << TEX_MODE_W0_LOG2_R_SHIFT)

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
/* word MODE_W1: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_MODE_W1_WIDTH                            32 /* unknown */
#define TEX_MODE_W1_TOP_SHIFT                        24 /* unknown */
#define TEX_MODE_W1_TOP_MASK                         0xffu
#define TEX_MODE_W1_TOP_INPLACE                      (TEX_MODE_W1_TOP_MASK << TEX_MODE_W1_TOP_SHIFT)
#define TEX_MODE_W1_WRAP_AUX_SHIFT                   18 /* established */
#define TEX_MODE_W1_WRAP_AUX_MASK                    0x3fu
#define TEX_MODE_W1_WRAP_AUX_INPLACE                 (TEX_MODE_W1_WRAP_AUX_MASK << TEX_MODE_W1_WRAP_AUX_SHIFT)
#define TEX_MODE_W1_BIT17_SHIFT                      17 /* unknown */
#define TEX_MODE_W1_BIT17_MASK                       0x1u
#define TEX_MODE_W1_BIT17_INPLACE                    (TEX_MODE_W1_BIT17_MASK << TEX_MODE_W1_BIT17_SHIFT)
#define TEX_MODE_W1_MAX_CLAMP_SHIFT                  0 /* established */
#define TEX_MODE_W1_MAX_CLAMP_MASK                   0x1ffffu
#define TEX_MODE_W1_MAX_CLAMP_INPLACE                (TEX_MODE_W1_MAX_CLAMP_MASK << TEX_MODE_W1_MAX_CLAMP_SHIFT)

/* word MODE_W2: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_MODE_W2_WIDTH                            32 /* unknown */
#define TEX_MODE_W2_TOP_SHIFT                        24 /* unknown */
#define TEX_MODE_W2_TOP_MASK                         0xffu
#define TEX_MODE_W2_TOP_INPLACE                      (TEX_MODE_W2_TOP_MASK << TEX_MODE_W2_TOP_SHIFT)
#define TEX_MODE_W2_WRAP_AUX_SHIFT                   18 /* established */
#define TEX_MODE_W2_WRAP_AUX_MASK                    0x3fu
#define TEX_MODE_W2_WRAP_AUX_INPLACE                 (TEX_MODE_W2_WRAP_AUX_MASK << TEX_MODE_W2_WRAP_AUX_SHIFT)
#define TEX_MODE_W2_BIT17_SHIFT                      17 /* unknown */
#define TEX_MODE_W2_BIT17_MASK                       0x1u
#define TEX_MODE_W2_BIT17_INPLACE                    (TEX_MODE_W2_BIT17_MASK << TEX_MODE_W2_BIT17_SHIFT)
#define TEX_MODE_W2_MAX_CLAMP_SHIFT                  0 /* established */
#define TEX_MODE_W2_MAX_CLAMP_MASK                   0x1ffffu
#define TEX_MODE_W2_MAX_CLAMP_INPLACE                (TEX_MODE_W2_MAX_CLAMP_MASK << TEX_MODE_W2_MAX_CLAMP_SHIFT)

/* word MODE_W3: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_MODE_W3_WIDTH                            32 /* unknown */
#define TEX_MODE_W3_TOP_SHIFT                        24 /* unknown */
#define TEX_MODE_W3_TOP_MASK                         0xffu
#define TEX_MODE_W3_TOP_INPLACE                      (TEX_MODE_W3_TOP_MASK << TEX_MODE_W3_TOP_SHIFT)
#define TEX_MODE_W3_WRAP_AUX_SHIFT                   18 /* established */
#define TEX_MODE_W3_WRAP_AUX_MASK                    0x3fu
#define TEX_MODE_W3_WRAP_AUX_INPLACE                 (TEX_MODE_W3_WRAP_AUX_MASK << TEX_MODE_W3_WRAP_AUX_SHIFT)
#define TEX_MODE_W3_BIT17_SHIFT                      17 /* unknown */
#define TEX_MODE_W3_BIT17_MASK                       0x1u
#define TEX_MODE_W3_BIT17_INPLACE                    (TEX_MODE_W3_BIT17_MASK << TEX_MODE_W3_BIT17_SHIFT)
#define TEX_MODE_W3_MAX_CLAMP_SHIFT                  0 /* established */
#define TEX_MODE_W3_MAX_CLAMP_MASK                   0x1ffffu
#define TEX_MODE_W3_MAX_CLAMP_INPLACE                (TEX_MODE_W3_MAX_CLAMP_MASK << TEX_MODE_W3_MAX_CLAMP_SHIFT)

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
/* word MODE_W5: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_MODE_W5_WIDTH                            32 /* unknown */
#define TEX_MODE_W5_TOP_SHIFT                        24 /* unknown */
#define TEX_MODE_W5_TOP_MASK                         0xffu
#define TEX_MODE_W5_TOP_INPLACE                      (TEX_MODE_W5_TOP_MASK << TEX_MODE_W5_TOP_SHIFT)
#define TEX_MODE_W5_RED_SHIFT                        12 /* established */
#define TEX_MODE_W5_RED_MASK                         0xfffu
#define TEX_MODE_W5_RED_INPLACE                      (TEX_MODE_W5_RED_MASK << TEX_MODE_W5_RED_SHIFT)
#define TEX_MODE_W5_GREEN_SHIFT                      0 /* established */
#define TEX_MODE_W5_GREEN_MASK                       0xfffu
#define TEX_MODE_W5_GREEN_INPLACE                    (TEX_MODE_W5_GREEN_MASK << TEX_MODE_W5_GREEN_SHIFT)

/* word MODE_W6: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_MODE_W6_WIDTH                            32 /* unknown */
#define TEX_MODE_W6_TOP_SHIFT                        25 /* unknown */
#define TEX_MODE_W6_TOP_MASK                         0x7fu
#define TEX_MODE_W6_TOP_INPLACE                      (TEX_MODE_W6_TOP_MASK << TEX_MODE_W6_TOP_SHIFT)
#define TEX_MODE_W6_HAS_OFFSET_SHIFT                 24 /* established */
#define TEX_MODE_W6_HAS_OFFSET_MASK                  0x1u
#define TEX_MODE_W6_HAS_OFFSET_INPLACE               (TEX_MODE_W6_HAS_OFFSET_MASK << TEX_MODE_W6_HAS_OFFSET_SHIFT)
#define TEX_MODE_W6_BLUE_SHIFT                       12 /* established */
#define TEX_MODE_W6_BLUE_MASK                        0xfffu
#define TEX_MODE_W6_BLUE_INPLACE                     (TEX_MODE_W6_BLUE_MASK << TEX_MODE_W6_BLUE_SHIFT)
#define TEX_MODE_W6_ALPHA_SHIFT                      0 /* established */
#define TEX_MODE_W6_ALPHA_MASK                       0xfffu
#define TEX_MODE_W6_ALPHA_INPLACE                    (TEX_MODE_W6_ALPHA_MASK << TEX_MODE_W6_ALPHA_SHIFT)

/*
 * Code 3 is never sent (the allocator's table does accept element sizes
 * of 16 and 32 bytes, codes 3 and 4, but no format row uses them).
 *
 * Offset code (level descriptor word 1 bits 28:26,
 * generated/c/buzz.h TEXLEVEL_W1.offset_code). Two writers: the on-board
 * mipmap builder stores 2 only when the record's offset word equals 2,
 * which the allocator never produces, so it stores 0; the
 * pixel-to-texture move stores a value its helper derives from the
 * source object's size and pixel-mode words: 0 for six of the pairs
 * traced and 2 for exactly one pair; every other pair is a GL error. The
 * builders traced give only pairs that map to 0, so code 2 is the move's
 * only possible nonzero output and no traced path produces it: inferred
 * unreachable in the shipped software, not excluded. Whether the board
 * treats 1..7 differently from 0 is unknown.
 */
/* word OFFCODE: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_OFFCODE_WIDTH                            32 /* established */
#define TEX_OFFCODE_VALUE_SHIFT                      0 /* established */
#define TEX_OFFCODE_VALUE_MASK                       0x7u
#define TEX_OFFCODE_VALUE_INPLACE                    (TEX_OFFCODE_VALUE_MASK << TEX_OFFCODE_VALUE_SHIFT)
#define TEX_OFFCODE_VALUE_NONE                       0 /* established */
#define TEX_OFFCODE_VALUE_CODE2                      2 /* established */

/*
 * Size code c (level descriptor word 1 bits 31:30, generated/c/buzz.h
 * TEXLEVEL_W1.size_code): 0 for indices 0..15 and 48, 1 for 16, 17, 18
 * and 49, 2 for 32 and 33. The allocator books 2 << c bytes per texel;
 * the texture path and the pixel-to-texture move both send the same
 * quantity (log2 bytes per texel minus 1), inferred for the move's
 * every source object. Whether the board reads the field as a size, a
 * layout selector or ignores it is unknown. The booked bytes are an
 * upper bound for 2D textures (ICC levels book the full width while the
 * pitch halves it) and a contract for 3D slices (section 5).
 */
/* word SIZE: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_SIZE_WIDTH                               32 /* established */
#define TEX_SIZE_CODE_SHIFT                          0 /* established */
#define TEX_SIZE_CODE_MASK                           0x3u
#define TEX_SIZE_CODE_INPLACE                        (TEX_SIZE_CODE_MASK << TEX_SIZE_CODE_SHIFT)
#define TEX_SIZE_CODE_B2                             0 /* established */
#define TEX_SIZE_CODE_B4                             1 /* established */
#define TEX_SIZE_CODE_B8                             2 /* established */

/*
 * Active texture target (id 0x005, count 1). The word is shared with the
 * clip-plane and path-selection bits of the same block; only the target
 * bits are listed. established as what the library sets: bit 5 for a
 * complete 3D texture, else bit 4 for a complete 2D texture, else bit 3
 * for a complete 1D texture; bit 10 together with any of them. When no
 * enabled target has a complete texture, bits 5:3 and 11:10 are cleared.
 * Bit 11 is only ever cleared: unknown.
 */
/* word TARGET: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_TARGET_WIDTH                             32 /* unknown */
#define TEX_TARGET_BIT11_SHIFT                       11 /* unknown */
#define TEX_TARGET_BIT11_MASK                        0x1u
#define TEX_TARGET_BIT11_INPLACE                     (TEX_TARGET_BIT11_MASK << TEX_TARGET_BIT11_SHIFT)
#define TEX_TARGET_ACTIVE_SHIFT                      10 /* established */
#define TEX_TARGET_ACTIVE_MASK                       0x1u
#define TEX_TARGET_ACTIVE_INPLACE                    (TEX_TARGET_ACTIVE_MASK << TEX_TARGET_ACTIVE_SHIFT)
#define TEX_TARGET_DIM3_SHIFT                        5 /* established */
#define TEX_TARGET_DIM3_MASK                         0x1u
#define TEX_TARGET_DIM3_INPLACE                      (TEX_TARGET_DIM3_MASK << TEX_TARGET_DIM3_SHIFT)
#define TEX_TARGET_DIM2_SHIFT                        4 /* established */
#define TEX_TARGET_DIM2_MASK                         0x1u
#define TEX_TARGET_DIM2_INPLACE                      (TEX_TARGET_DIM2_MASK << TEX_TARGET_DIM2_SHIFT)
#define TEX_TARGET_DIM1_SHIFT                        3 /* established */
#define TEX_TARGET_DIM1_MASK                         0x1u
#define TEX_TARGET_DIM1_INPLACE                      (TEX_TARGET_DIM1_MASK << TEX_TARGET_DIM1_SHIFT)

/*
 * Wrap modes are independent per axis: each setter takes one enumerant,
 * writes one axis and looks at no other. The wrap codes themselves (0
 * repeat, 1 clamp to edge, 2 clamp, 3 clamp to border) are the sampler
 * word's wrap_s, wrap_t and wrap_r fields (generated/c/buzz.h). The value that
 * goes with each code in wrap_aux, established:
 */
/* word WRAPAUX: 32 bits; odsy binary analysis of the shipped GL library texture routines */
#define TEX_WRAPAUX_WIDTH                            32 /* established */
#define TEX_WRAPAUX_VALUE_SHIFT                      0 /* established */
#define TEX_WRAPAUX_VALUE_MASK                       0x3fu
#define TEX_WRAPAUX_VALUE_INPLACE                    (TEX_WRAPAUX_VALUE_MASK << TEX_WRAPAUX_VALUE_SHIFT)
#define TEX_WRAPAUX_VALUE_REPEAT_CLAMP               0 /* established */
#define TEX_WRAPAUX_VALUE_EDGE                       1 /* established */
#define TEX_WRAPAUX_VALUE_BORDER                     63 /* established */

#define TEX_BORDER_MAX                               0x1u /* established */
#define TEX_COLOUR12_BITS                            0xcu /* established */
#define TEX_COLOUR12_LANE_MASK                       0xfffu /* established */
#define TEX_COLOUR12_MAX                             0xfffu /* established */
#define TEX_COLOUR12_ROUND_SCALE                     0xfffu /* established */
#define TEX_COLTAB_A_BASE                            0x3e00u /* established */
#define TEX_COLTAB_B_BASE                            0x3e10u /* established */
#define TEX_COLTAB_C_BASE                            0x3e20u /* inferred */
#define TEX_COLTAB_D_BASE                            0x3e30u /* inferred */
#define TEX_COLTAB_ENTRIES                           0x100u /* established */
#define TEX_COLTAB_MAX_WIDTH                         0x100u /* established */
#define TEX_COLTAB_UPLOAD_LAST                       0xfu /* established */
#define TEX_COLTAB_UPLOAD_SHIFT                      0x4u /* established */
#define TEX_COLTAB_UPLOAD_WORDS                      0x10u /* established */
#define TEX_COLTAB_WORD_MASK                         0xfu /* established */
#define TEX_DETAIL_COUNT_MAX                         0xfu /* established */
#define TEX_DETAIL_FIRST                             0x31u /* established */
#define TEX_ENV_WORDS                                0x5u /* established */
#define TEX_FMT_INDEX_MAX_USED                       0x31u /* established */
#define TEX_LEVEL_TABLE_ENTRIES                      0x40u /* established */
#define TEX_LOD_BITS                                 0xeu /* established */
#define TEX_LOD_LIMIT                                0xfu /* established */
#define TEX_LOD_MAX_DEFAULT                          0xf00u /* established */
#define TEX_LOD_MIN_DEFAULT                          0x3100u /* established */
#define TEX_LOD_WORDS                                0x4u /* established */
#define TEX_MODE_WORDS                               0x7u /* established */
#define TEX_OFFSET_WORDS                             0x3u /* established */
#define TEX_OP_FIRSTLEVEL                            0x406u /* established */
#define TEX_OP_TARGET                                0x405u /* established */
#define TEX_OP_TEXENV                                0x141bu /* established */
#define TEX_OP_TEXLOD                                0x1013u /* established */
#define TEX_OP_TEXMODE                               0x1c16u /* established */
#define TEX_OP_TEXOFFSET                             0xc3eu /* established */
#define TEX_PIXCLASS_COUNT                           0x12u /* established */
#define TEX_PRIMARY_LAST                             0xfu /* established */
#define TEX_PRIMARY_LEVELS_MAX                       0x10u /* established */
#define TEX_SCRATCH_LEVEL                            0x3cu /* established */
#define TEX_SIZE_MAX                                 0x8000u /* established */
#define TEX_SLICE_STRIDE_BASE                        0x20u /* established */
#define TEX_TABLE_LAST                               0x3fu /* established */
#define TEX_TILE_TEXELS                              0x10u /* established */
#define TEX_UNUSED_FIRST                             0x10u /* established */
#define TEX_UNUSED_LAST                              0x30u /* established */

/* hand-written helper macros */
#include "../../devices/texture/helpers.h"

#endif /* TEX_GEN_H */
