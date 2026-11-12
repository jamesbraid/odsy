/* generated from defs/buzz.toml by defs-gen - do not edit, change the source */
/* VPro (Odyssey) "Buzz" graphics ASIC: command and image */
#ifndef BUZZ_GEN_H
#define BUZZ_GEN_H

#include <stdint.h>


/* enum fieldfmt: Pixel-mode field format (bits 6:4). */
#define BUZZ_FIELDFMT_INDEX                          0 /* established */
#define BUZZ_FIELDFMT_ONE                            2 /* established */
#define BUZZ_FIELDFMT_TWO                            3 /* established */
#define BUZZ_FIELDFMT_RGBA                           5 /* established */
#define BUZZ_FIELDFMT_RGBA_SHORT_A                   6 /* established */

/* enum fmt: Write header format code (bits 4:0). */
#define BUZZ_FMT_DEPTH_STENCIL                       0 /* established */
#define BUZZ_FMT_INDEX                               1 /* established */
#define BUZZ_FMT_LUMINANCE                           2 /* established */
#define BUZZ_FMT_INTENSITY                           3 /* established */
#define BUZZ_FMT_RED                                 4 /* established */
#define BUZZ_FMT_GREEN                               5 /* established */
#define BUZZ_FMT_BLUE                                6 /* established */
#define BUZZ_FMT_ALPHA                               7 /* established */
#define BUZZ_FMT_LUM_ALPHA                           8 /* established */
#define BUZZ_FMT_RGB                                 9 /* established */
#define BUZZ_FMT_RGBA                                11 /* established */
#define BUZZ_FMT_ABGR                                12 /* established */
#define BUZZ_FMT_BGR                                 13 /* established */
#define BUZZ_FMT_BGRA                                17 /* established */

/* enum psize: Pixel-size code (three bits, 18:16). */
#define BUZZ_PSIZE_2B                                0 /* established */
#define BUZZ_PSIZE_4B                                1 /* established */
#define BUZZ_PSIZE_8B                                2 /* established */
#define BUZZ_PSIZE_16B                               3 /* established */
#define BUZZ_PSIZE_12B                               4 /* established */
#define BUZZ_PSIZE_1B                                5 /* established */
#define BUZZ_PSIZE_6B                                6 /* established */
#define BUZZ_PSIZE_3B                                7 /* established */

/* enum sampler_mag: Sampler magnification mode (bits 4:1). */
#define BUZZ_SAMPLER_MAG_NEAREST                     0 /* established */
#define BUZZ_SAMPLER_MAG_LINEAR                      1 /* established */
#define BUZZ_SAMPLER_MAG_DETAIL                      2 /* established */
#define BUZZ_SAMPLER_MAG_DETAIL_ALPHA                3 /* established */
#define BUZZ_SAMPLER_MAG_DETAIL_COLOR                4 /* established */

/* enum sampler_min: Sampler minification filter (bits 7:5). */
#define BUZZ_SAMPLER_MIN_NEAREST                     0 /* established */
#define BUZZ_SAMPLER_MIN_LINEAR                      1 /* established */
#define BUZZ_SAMPLER_MIN_NEAREST_MIP_NEAREST         2 /* established */
#define BUZZ_SAMPLER_MIN_LINEAR_MIP_NEAREST          3 /* established */
#define BUZZ_SAMPLER_MIN_NEAREST_MIP_LINEAR          4 /* established */
#define BUZZ_SAMPLER_MIN_LINEAR_MIP_LINEAR           5 /* established */

/* enum sampler_wrap: Sampler wrap mode. */
#define BUZZ_SAMPLER_WRAP_REPEAT                     0 /* established */
#define BUZZ_SAMPLER_WRAP_EDGE                       1 /* established */
#define BUZZ_SAMPLER_WRAP_CLAMP                      2 /* established */
#define BUZZ_SAMPLER_WRAP_BORDER                     3 /* established */

/* enum type: Write header type code (bits 8:5). */
#define BUZZ_TYPE_BYTE                               2 /* established */
#define BUZZ_TYPE_SHORT                              3 /* established */
#define BUZZ_TYPE_INT                                4 /* established */
#define BUZZ_TYPE_332                                5 /* established */
#define BUZZ_TYPE_4444                               6 /* established */
#define BUZZ_TYPE_5551                               7 /* established */
#define BUZZ_TYPE_1010102                            8 /* established */
#define BUZZ_TYPE_565                                10 /* established */
#define BUZZ_TYPE_BYTE_12                            11 /* established */
#define BUZZ_TYPE_565_CLASS10                        12 /* established */

/* word ALPHA_TEST: 32 bits; odsy binary analysis of the shipped GL library and kernel command senders */
#define BUZZ_ALPHA_TEST_WIDTH                        32 /* established */
#define BUZZ_ALPHA_TEST_FUNC_SHIFT                   12 /* established */
#define BUZZ_ALPHA_TEST_FUNC_MASK                    0x7u
#define BUZZ_ALPHA_TEST_FUNC_INPLACE                 (BUZZ_ALPHA_TEST_FUNC_MASK << BUZZ_ALPHA_TEST_FUNC_SHIFT)
#define BUZZ_ALPHA_TEST_REFERENCE_SHIFT              0 /* established */
#define BUZZ_ALPHA_TEST_REFERENCE_MASK               0xfffu
#define BUZZ_ALPHA_TEST_REFERENCE_INPLACE            (BUZZ_ALPHA_TEST_REFERENCE_MASK << BUZZ_ALPHA_TEST_REFERENCE_SHIFT)

/*
 * COPY operand 2: the two window words and the destination's second field code.
 */
/* word COPY_W2: 32 bits; odsy binary analysis of the shipped GL library and kernel command senders */
#define BUZZ_COPY_W2_WIDTH                           32 /* established */
#define BUZZ_COPY_W2_DST_FRONT_SHIFT                 31 /* established */
#define BUZZ_COPY_W2_DST_FRONT_MASK                  0x1u
#define BUZZ_COPY_W2_DST_FRONT_INPLACE               (BUZZ_COPY_W2_DST_FRONT_MASK << BUZZ_COPY_W2_DST_FRONT_SHIFT)
#define BUZZ_COPY_W2_DST_WINDOW_SHIFT                16 /* established */
#define BUZZ_COPY_W2_DST_WINDOW_MASK                 0xfffu
#define BUZZ_COPY_W2_DST_WINDOW_INPLACE              (BUZZ_COPY_W2_DST_WINDOW_MASK << BUZZ_COPY_W2_DST_WINDOW_SHIFT)
#define BUZZ_COPY_W2_DST_FIELD_B_SHIFT               12 /* established */
#define BUZZ_COPY_W2_DST_FIELD_B_MASK                0xfu
#define BUZZ_COPY_W2_DST_FIELD_B_INPLACE             (BUZZ_COPY_W2_DST_FIELD_B_MASK << BUZZ_COPY_W2_DST_FIELD_B_SHIFT)
#define BUZZ_COPY_W2_SRC_WINDOW_SHIFT                0 /* established */
#define BUZZ_COPY_W2_SRC_WINDOW_MASK                 0xfffu
#define BUZZ_COPY_W2_SRC_WINDOW_INPLACE              (BUZZ_COPY_W2_SRC_WINDOW_MASK << BUZZ_COPY_W2_SRC_WINDOW_SHIFT)

/*
 * COPY operand 7 beyond the write header: flags set around the walk.
 */
/* word COPY_W7: 32 bits; odsy binary analysis of the shipped GL library and kernel command senders */
#define BUZZ_COPY_W7_WIDTH                           32 /* established */
#define BUZZ_COPY_W7_DST_X_IN_SRC_SHIFT              31 /* inferred */
#define BUZZ_COPY_W7_DST_X_IN_SRC_MASK               0x1u
#define BUZZ_COPY_W7_DST_X_IN_SRC_INPLACE            (BUZZ_COPY_W7_DST_X_IN_SRC_MASK << BUZZ_COPY_W7_DST_X_IN_SRC_SHIFT)
#define BUZZ_COPY_W7_DST_Y_IN_SRC_SHIFT              30 /* inferred */
#define BUZZ_COPY_W7_DST_Y_IN_SRC_MASK               0x1u
#define BUZZ_COPY_W7_DST_Y_IN_SRC_INPLACE            (BUZZ_COPY_W7_DST_Y_IN_SRC_MASK << BUZZ_COPY_W7_DST_Y_IN_SRC_SHIFT)
#define BUZZ_COPY_W7_CLAMP_OFF_SHIFT                 28 /* inferred */
#define BUZZ_COPY_W7_CLAMP_OFF_MASK                  0x3u
#define BUZZ_COPY_W7_CLAMP_OFF_INPLACE               (BUZZ_COPY_W7_CLAMP_OFF_MASK << BUZZ_COPY_W7_CLAMP_OFF_SHIFT)
#define BUZZ_COPY_W7_DST_FIELD_A_SHIFT               20 /* established */
#define BUZZ_COPY_W7_DST_FIELD_A_MASK                0xfu
#define BUZZ_COPY_W7_DST_FIELD_A_INPLACE             (BUZZ_COPY_W7_DST_FIELD_A_MASK << BUZZ_COPY_W7_DST_FIELD_A_SHIFT)
#define BUZZ_COPY_W7_SIZE_CODE_SHIFT                 16 /* established */
#define BUZZ_COPY_W7_SIZE_CODE_MASK                  0xfu
#define BUZZ_COPY_W7_SIZE_CODE_INPLACE               (BUZZ_COPY_W7_SIZE_CODE_MASK << BUZZ_COPY_W7_SIZE_CODE_SHIFT)

/*
 * Frame pixel as stored in the vendor simulator's reference frames: red in
 * bits 31:24, green 23:16, blue 15:8 and alpha 7:0, each component the
 * colour in 0..1 scaled as floor(256 c) and limited to 255. established
 * for the colours the reference frames draw (0.1 to 1.0), by rebuilding
 * the stored frames with a matching checksum; the frames are the
 * simulator's output, not a board's. Values below 0.1 are not tested.
 */
/* word FRAME_PIXEL: 32 bits; odsy binary analysis of the shipped GL library and kernel command senders */
#define BUZZ_FRAME_PIXEL_WIDTH                       32 /* established */
#define BUZZ_FRAME_PIXEL_RED_SHIFT                   24 /* established */
#define BUZZ_FRAME_PIXEL_RED_MASK                    0xffu
#define BUZZ_FRAME_PIXEL_RED_INPLACE                 (BUZZ_FRAME_PIXEL_RED_MASK << BUZZ_FRAME_PIXEL_RED_SHIFT)
#define BUZZ_FRAME_PIXEL_GREEN_SHIFT                 16 /* established */
#define BUZZ_FRAME_PIXEL_GREEN_MASK                  0xffu
#define BUZZ_FRAME_PIXEL_GREEN_INPLACE               (BUZZ_FRAME_PIXEL_GREEN_MASK << BUZZ_FRAME_PIXEL_GREEN_SHIFT)
#define BUZZ_FRAME_PIXEL_BLUE_SHIFT                  8 /* established */
#define BUZZ_FRAME_PIXEL_BLUE_MASK                   0xffu
#define BUZZ_FRAME_PIXEL_BLUE_INPLACE                (BUZZ_FRAME_PIXEL_BLUE_MASK << BUZZ_FRAME_PIXEL_BLUE_SHIFT)
#define BUZZ_FRAME_PIXEL_ALPHA_SHIFT                 0 /* established */
#define BUZZ_FRAME_PIXEL_ALPHA_MASK                  0xffu
#define BUZZ_FRAME_PIXEL_ALPHA_INPLACE               (BUZZ_FRAME_PIXEL_ALPHA_MASK << BUZZ_FRAME_PIXEL_ALPHA_SHIFT)

/*
 * Image header word 0: board reference.
 */
/* word HDR_W0: 32 bits; odsy binary analysis of the shipped GL library and kernel command senders */
#define BUZZ_HDR_W0_WIDTH                            32 /* established */
#define BUZZ_HDR_W0_KEPT_SHIFT                       30 /* inferred */
#define BUZZ_HDR_W0_KEPT_MASK                        0x3u
#define BUZZ_HDR_W0_KEPT_INPLACE                     (BUZZ_HDR_W0_KEPT_MASK << BUZZ_HDR_W0_KEPT_SHIFT)
#define BUZZ_HDR_W0_WINDOW_REL_SHIFT                 29 /* established */
#define BUZZ_HDR_W0_WINDOW_REL_MASK                  0x1u
#define BUZZ_HDR_W0_WINDOW_REL_INPLACE               (BUZZ_HDR_W0_WINDOW_REL_MASK << BUZZ_HDR_W0_WINDOW_REL_SHIFT)
#define BUZZ_HDR_W0_REF_SHIFT                        0 /* established */
#define BUZZ_HDR_W0_REF_MASK                         0x1fffffffu
#define BUZZ_HDR_W0_REF_INPLACE                      (BUZZ_HDR_W0_REF_MASK << BUZZ_HDR_W0_REF_SHIFT)

/*
 * Image header word 1: x and y of the smaller corner.
 */
/* word HDR_W1: 32 bits; odsy binary analysis of the shipped GL library and kernel command senders */
#define BUZZ_HDR_W1_WIDTH                            32 /* established */
#define BUZZ_HDR_W1_Y_SHIFT                          16 /* established */
#define BUZZ_HDR_W1_Y_MASK                           0xffffu
#define BUZZ_HDR_W1_Y_INPLACE                        (BUZZ_HDR_W1_Y_MASK << BUZZ_HDR_W1_Y_SHIFT)
#define BUZZ_HDR_W1_X_SHIFT                          0 /* established */
#define BUZZ_HDR_W1_X_MASK                           0xffffu
#define BUZZ_HDR_W1_X_INPLACE                        (BUZZ_HDR_W1_X_MASK << BUZZ_HDR_W1_X_SHIFT)

/*
 * Image header word 2: the window word.
 */
/* word HDR_W2: 32 bits; odsy binary analysis of the shipped GL library and kernel command senders */
#define BUZZ_HDR_W2_WIDTH                            32 /* established */
#define BUZZ_HDR_W2_WINDOW_WORD_SHIFT                0 /* established */
#define BUZZ_HDR_W2_WINDOW_WORD_MASK                 0xfffu
#define BUZZ_HDR_W2_WINDOW_WORD_INPLACE              (BUZZ_HDR_W2_WINDOW_WORD_MASK << BUZZ_HDR_W2_WINDOW_WORD_SHIFT)

/*
 * Image header word 3: width and height.
 */
/* word HDR_W3: 32 bits; odsy binary analysis of the shipped GL library and kernel command senders */
#define BUZZ_HDR_W3_WIDTH                            32 /* established */
#define BUZZ_HDR_W3_HEIGHT_SHIFT                     16 /* established */
#define BUZZ_HDR_W3_HEIGHT_MASK                      0xffffu
#define BUZZ_HDR_W3_HEIGHT_INPLACE                   (BUZZ_HDR_W3_HEIGHT_MASK << BUZZ_HDR_W3_HEIGHT_SHIFT)
#define BUZZ_HDR_W3_WIDTH_SHIFT                      0 /* established */
#define BUZZ_HDR_W3_WIDTH_MASK                       0xffffu
#define BUZZ_HDR_W3_WIDTH_INPLACE                    (BUZZ_HDR_W3_WIDTH_MASK << BUZZ_HDR_W3_WIDTH_SHIFT)

/*
 * Image header word 4: class and code, field geometry, pixel size.
 * The read header's word 4, and the COPY source description.
 */
/* word HDR_W4: 32 bits; odsy binary analysis of the shipped GL library and kernel command senders */
#define BUZZ_HDR_W4_WIDTH                            32 /* established */
#define BUZZ_HDR_W4_FRONT_SHIFT                      31 /* established */
#define BUZZ_HDR_W4_FRONT_MASK                       0x1u
#define BUZZ_HDR_W4_FRONT_INPLACE                    (BUZZ_HDR_W4_FRONT_MASK << BUZZ_HDR_W4_FRONT_SHIFT)
#define BUZZ_HDR_W4_DRAWABLE_SHIFT                   28 /* established */
#define BUZZ_HDR_W4_DRAWABLE_MASK                    0x1u
#define BUZZ_HDR_W4_DRAWABLE_INPLACE                 (BUZZ_HDR_W4_DRAWABLE_MASK << BUZZ_HDR_W4_DRAWABLE_SHIFT)
#define BUZZ_HDR_W4_FIELD_B_SHIFT                    24 /* established */
#define BUZZ_HDR_W4_FIELD_B_MASK                     0xfu
#define BUZZ_HDR_W4_FIELD_B_INPLACE                  (BUZZ_HDR_W4_FIELD_B_MASK << BUZZ_HDR_W4_FIELD_B_SHIFT)
#define BUZZ_HDR_W4_FIELD_A_SHIFT                    20 /* established */
#define BUZZ_HDR_W4_FIELD_A_MASK                     0xfu
#define BUZZ_HDR_W4_FIELD_A_INPLACE                  (BUZZ_HDR_W4_FIELD_A_MASK << BUZZ_HDR_W4_FIELD_A_SHIFT)
#define BUZZ_HDR_W4_PIXEL_SIZE_B19_SHIFT             19 /* unknown */
#define BUZZ_HDR_W4_PIXEL_SIZE_B19_MASK              0x1u
#define BUZZ_HDR_W4_PIXEL_SIZE_B19_INPLACE           (BUZZ_HDR_W4_PIXEL_SIZE_B19_MASK << BUZZ_HDR_W4_PIXEL_SIZE_B19_SHIFT)
#define BUZZ_HDR_W4_PIXEL_SIZE_SHIFT                 16 /* inferred */
#define BUZZ_HDR_W4_PIXEL_SIZE_MASK                  0x7u
#define BUZZ_HDR_W4_PIXEL_SIZE_INPLACE               (BUZZ_HDR_W4_PIXEL_SIZE_MASK << BUZZ_HDR_W4_PIXEL_SIZE_SHIFT)
#define BUZZ_HDR_W4_SIZE_FIELD_SHIFT                 13 /* established */
#define BUZZ_HDR_W4_SIZE_FIELD_MASK                  0x7u
#define BUZZ_HDR_W4_SIZE_FIELD_INPLACE               (BUZZ_HDR_W4_SIZE_FIELD_MASK << BUZZ_HDR_W4_SIZE_FIELD_SHIFT)
#define BUZZ_HDR_W4_BIT12_SHIFT                      12 /* established */
#define BUZZ_HDR_W4_BIT12_MASK                       0x1u
#define BUZZ_HDR_W4_BIT12_INPLACE                    (BUZZ_HDR_W4_BIT12_MASK << BUZZ_HDR_W4_BIT12_SHIFT)
#define BUZZ_HDR_W4_CODE_SHIFT                       3 /* established */
#define BUZZ_HDR_W4_CODE_MASK                        0x1fu
#define BUZZ_HDR_W4_CODE_INPLACE                     (BUZZ_HDR_W4_CODE_MASK << BUZZ_HDR_W4_CODE_SHIFT)
#define BUZZ_HDR_W4_CLASS_SHIFT                      0 /* established */
#define BUZZ_HDR_W4_CLASS_MASK                       0x7u
#define BUZZ_HDR_W4_CLASS_INPLACE                    (BUZZ_HDR_W4_CLASS_MASK << BUZZ_HDR_W4_CLASS_SHIFT)

/*
 * Image header word 6: row bytes.
 */
/* word HDR_W6: 32 bits; odsy binary analysis of the shipped GL library and kernel command senders */
#define BUZZ_HDR_W6_WIDTH                            32 /* established */
#define BUZZ_HDR_W6_ROW_BYTES_SHIFT                  0 /* established */
#define BUZZ_HDR_W6_ROW_BYTES_MASK                   0xfffffu
#define BUZZ_HDR_W6_ROW_BYTES_INPLACE                (BUZZ_HDR_W6_ROW_BYTES_MASK << BUZZ_HDR_W6_ROW_BYTES_SHIFT)

/*
 * Image header word 7: format, type, size and path control.
 * The write header's word 7, and the COPY destination control.
 */
/* word HDR_W7: 32 bits; odsy binary analysis of the shipped GL library and kernel command senders */
#define BUZZ_HDR_W7_WIDTH                            32 /* established */
#define BUZZ_HDR_W7_DIFFERS_SHIFT                    30 /* established */
#define BUZZ_HDR_W7_DIFFERS_MASK                     0x1u
#define BUZZ_HDR_W7_DIFFERS_INPLACE                  (BUZZ_HDR_W7_DIFFERS_MASK << BUZZ_HDR_W7_DIFFERS_SHIFT)
#define BUZZ_HDR_W7_TRANSFORM_SHIFT                  27 /* established */
#define BUZZ_HDR_W7_TRANSFORM_MASK                   0x1u
#define BUZZ_HDR_W7_TRANSFORM_INPLACE                (BUZZ_HDR_W7_TRANSFORM_MASK << BUZZ_HDR_W7_TRANSFORM_SHIFT)
#define BUZZ_HDR_W7_READ_DIR_SHIFT                   24 /* established */
#define BUZZ_HDR_W7_READ_DIR_MASK                    0x1u
#define BUZZ_HDR_W7_READ_DIR_INPLACE                 (BUZZ_HDR_W7_READ_DIR_MASK << BUZZ_HDR_W7_READ_DIR_SHIFT)
#define BUZZ_HDR_W7_PSIZE_SHIFT                      16 /* established */
#define BUZZ_HDR_W7_PSIZE_MASK                       0x7u
#define BUZZ_HDR_W7_PSIZE_INPLACE                    (BUZZ_HDR_W7_PSIZE_MASK << BUZZ_HDR_W7_PSIZE_SHIFT)
#define BUZZ_HDR_W7_SIZE_FIELD_SHIFT                 13 /* established */
#define BUZZ_HDR_W7_SIZE_FIELD_MASK                  0x7u
#define BUZZ_HDR_W7_SIZE_FIELD_INPLACE               (BUZZ_HDR_W7_SIZE_FIELD_MASK << BUZZ_HDR_W7_SIZE_FIELD_SHIFT)
#define BUZZ_HDR_W7_SWAP_SHIFT                       10 /* inferred */
#define BUZZ_HDR_W7_SWAP_MASK                        0x1u
#define BUZZ_HDR_W7_SWAP_INPLACE                     (BUZZ_HDR_W7_SWAP_MASK << BUZZ_HDR_W7_SWAP_SHIFT)
#define BUZZ_HDR_W7_EXPAND_SHIFT                     9 /* established */
#define BUZZ_HDR_W7_EXPAND_MASK                      0x1u
#define BUZZ_HDR_W7_EXPAND_INPLACE                   (BUZZ_HDR_W7_EXPAND_MASK << BUZZ_HDR_W7_EXPAND_SHIFT)
#define BUZZ_HDR_W7_TYPE_SHIFT                       5 /* established */
#define BUZZ_HDR_W7_TYPE_MASK                        0xfu
#define BUZZ_HDR_W7_TYPE_INPLACE                     (BUZZ_HDR_W7_TYPE_MASK << BUZZ_HDR_W7_TYPE_SHIFT)
#define BUZZ_HDR_W7_FORMAT_SHIFT                     0 /* established */
#define BUZZ_HDR_W7_FORMAT_MASK                      0x1fu
#define BUZZ_HDR_W7_FORMAT_INPLACE                   (BUZZ_HDR_W7_FORMAT_MASK << BUZZ_HDR_W7_FORMAT_SHIFT)

/*
 * A scale or bias word of the post-filter block.
 */
/* word PF: 32 bits; odsy binary analysis of the shipped GL library and kernel command senders */
#define BUZZ_PF_WIDTH                                32 /* established */
#define BUZZ_PF_VALUE_SHIFT                          0 /* established */
#define BUZZ_PF_VALUE_MASK                           0xffffu
#define BUZZ_PF_VALUE_INPLACE                        (BUZZ_PF_VALUE_MASK << BUZZ_PF_VALUE_SHIFT)

/*
 * Pixel-mode descriptor, first word.
 */
/* word PIXMODE_W0: 32 bits; odsy binary analysis of the shipped GL library and kernel command senders */
#define BUZZ_PIXMODE_W0_WIDTH                        32 /* established */
#define BUZZ_PIXMODE_W0_WINDOW_WORD_SHIFT            0 /* established */
#define BUZZ_PIXMODE_W0_WINDOW_WORD_MASK             0xfffu
#define BUZZ_PIXMODE_W0_WINDOW_WORD_INPLACE          (BUZZ_PIXMODE_W0_WINDOW_WORD_MASK << BUZZ_PIXMODE_W0_WINDOW_WORD_SHIFT)

/*
 * Pixel-mode descriptor, second word.
 */
/* word PIXMODE_W1: 32 bits; odsy binary analysis of the shipped GL library and kernel command senders */
#define BUZZ_PIXMODE_W1_WIDTH                        32 /* established */
#define BUZZ_PIXMODE_W1_BIT27_SHIFT                  27 /* unknown */
#define BUZZ_PIXMODE_W1_BIT27_MASK                   0x1u
#define BUZZ_PIXMODE_W1_BIT27_INPLACE                (BUZZ_PIXMODE_W1_BIT27_MASK << BUZZ_PIXMODE_W1_BIT27_SHIFT)
#define BUZZ_PIXMODE_W1_STORAGE3_SHIFT               22 /* inferred */
#define BUZZ_PIXMODE_W1_STORAGE3_MASK                0x1u
#define BUZZ_PIXMODE_W1_STORAGE3_INPLACE             (BUZZ_PIXMODE_W1_STORAGE3_MASK << BUZZ_PIXMODE_W1_STORAGE3_SHIFT)
#define BUZZ_PIXMODE_W1_BIT21_SHIFT                  21 /* unknown */
#define BUZZ_PIXMODE_W1_BIT21_MASK                   0x1u
#define BUZZ_PIXMODE_W1_BIT21_INPLACE                (BUZZ_PIXMODE_W1_BIT21_MASK << BUZZ_PIXMODE_W1_BIT21_SHIFT)
#define BUZZ_PIXMODE_W1_INDEX_CLASS_SHIFT            19 /* established */
#define BUZZ_PIXMODE_W1_INDEX_CLASS_MASK             0x1u
#define BUZZ_PIXMODE_W1_INDEX_CLASS_INPLACE          (BUZZ_PIXMODE_W1_INDEX_CLASS_MASK << BUZZ_PIXMODE_W1_INDEX_CLASS_SHIFT)
#define BUZZ_PIXMODE_W1_SIZE_FIELD_SHIFT             13 /* established */
#define BUZZ_PIXMODE_W1_SIZE_FIELD_MASK              0x7u
#define BUZZ_PIXMODE_W1_SIZE_FIELD_INPLACE           (BUZZ_PIXMODE_W1_SIZE_FIELD_MASK << BUZZ_PIXMODE_W1_SIZE_FIELD_SHIFT)
#define BUZZ_PIXMODE_W1_STORAGE_SHIFT                10 /* established */
#define BUZZ_PIXMODE_W1_STORAGE_MASK                 0x7u
#define BUZZ_PIXMODE_W1_STORAGE_INPLACE              (BUZZ_PIXMODE_W1_STORAGE_MASK << BUZZ_PIXMODE_W1_STORAGE_SHIFT)
#define BUZZ_PIXMODE_W1_LAYOUT_SHIFT                 7 /* established */
#define BUZZ_PIXMODE_W1_LAYOUT_MASK                  0x7u
#define BUZZ_PIXMODE_W1_LAYOUT_INPLACE               (BUZZ_PIXMODE_W1_LAYOUT_MASK << BUZZ_PIXMODE_W1_LAYOUT_SHIFT)
#define BUZZ_PIXMODE_W1_FIELD_FORMAT_SHIFT           4 /* established */
#define BUZZ_PIXMODE_W1_FIELD_FORMAT_MASK            0x7u
#define BUZZ_PIXMODE_W1_FIELD_FORMAT_INPLACE         (BUZZ_PIXMODE_W1_FIELD_FORMAT_MASK << BUZZ_PIXMODE_W1_FIELD_FORMAT_SHIFT)

/*
 * The sampler word: operand 4 of the texture-mode block.
 */
/* word SAMPLER: 32 bits; odsy binary analysis of the shipped GL library and kernel command senders */
#define BUZZ_SAMPLER_WIDTH                           32 /* established */
#define BUZZ_SAMPLER_NO_OFFSET_SHIFT                 28 /* established */
#define BUZZ_SAMPLER_NO_OFFSET_MASK                  0x1u
#define BUZZ_SAMPLER_NO_OFFSET_INPLACE               (BUZZ_SAMPLER_NO_OFFSET_MASK << BUZZ_SAMPLER_NO_OFFSET_SHIFT)
#define BUZZ_SAMPLER_ACTIVATION_SHIFT                23 /* established */
#define BUZZ_SAMPLER_ACTIVATION_MASK                 0x7u
#define BUZZ_SAMPLER_ACTIVATION_INPLACE              (BUZZ_SAMPLER_ACTIVATION_MASK << BUZZ_SAMPLER_ACTIVATION_SHIFT)
#define BUZZ_SAMPLER_TABLE_FMT_SHIFT                 20 /* established */
#define BUZZ_SAMPLER_TABLE_FMT_MASK                  0x7u
#define BUZZ_SAMPLER_TABLE_FMT_INPLACE               (BUZZ_SAMPLER_TABLE_FMT_MASK << BUZZ_SAMPLER_TABLE_FMT_SHIFT)
#define BUZZ_SAMPLER_IMAGE_FLAG18_SHIFT              18 /* established */
#define BUZZ_SAMPLER_IMAGE_FLAG18_MASK               0x1u
#define BUZZ_SAMPLER_IMAGE_FLAG18_INPLACE            (BUZZ_SAMPLER_IMAGE_FLAG18_MASK << BUZZ_SAMPLER_IMAGE_FLAG18_SHIFT)
#define BUZZ_SAMPLER_TRILINEAR_SHIFT                 17 /* established */
#define BUZZ_SAMPLER_TRILINEAR_MASK                  0x1u
#define BUZZ_SAMPLER_TRILINEAR_INPLACE               (BUZZ_SAMPLER_TRILINEAR_MASK << BUZZ_SAMPLER_TRILINEAR_SHIFT)
#define BUZZ_SAMPLER_IMAGE_FLAG14_SHIFT              14 /* established */
#define BUZZ_SAMPLER_IMAGE_FLAG14_MASK               0x1u
#define BUZZ_SAMPLER_IMAGE_FLAG14_INPLACE            (BUZZ_SAMPLER_IMAGE_FLAG14_MASK << BUZZ_SAMPLER_IMAGE_FLAG14_SHIFT)
#define BUZZ_SAMPLER_WRAP_S_SHIFT                    12 /* established */
#define BUZZ_SAMPLER_WRAP_S_MASK                     0x3u
#define BUZZ_SAMPLER_WRAP_S_INPLACE                  (BUZZ_SAMPLER_WRAP_S_MASK << BUZZ_SAMPLER_WRAP_S_SHIFT)
#define BUZZ_SAMPLER_WRAP_T_SHIFT                    10 /* established */
#define BUZZ_SAMPLER_WRAP_T_MASK                     0x3u
#define BUZZ_SAMPLER_WRAP_T_INPLACE                  (BUZZ_SAMPLER_WRAP_T_MASK << BUZZ_SAMPLER_WRAP_T_SHIFT)
#define BUZZ_SAMPLER_WRAP_R_SHIFT                    8 /* established */
#define BUZZ_SAMPLER_WRAP_R_MASK                     0x3u
#define BUZZ_SAMPLER_WRAP_R_INPLACE                  (BUZZ_SAMPLER_WRAP_R_MASK << BUZZ_SAMPLER_WRAP_R_SHIFT)
#define BUZZ_SAMPLER_MIN_SHIFT                       5 /* established */
#define BUZZ_SAMPLER_MIN_MASK                        0x7u
#define BUZZ_SAMPLER_MIN_INPLACE                     (BUZZ_SAMPLER_MIN_MASK << BUZZ_SAMPLER_MIN_SHIFT)
#define BUZZ_SAMPLER_MAG_SHIFT                       1 /* established */
#define BUZZ_SAMPLER_MAG_MASK                        0xfu
#define BUZZ_SAMPLER_MAG_INPLACE                     (BUZZ_SAMPLER_MAG_MASK << BUZZ_SAMPLER_MAG_SHIFT)
#define BUZZ_SAMPLER_COLOUR_TABLE_SHIFT              0 /* established */
#define BUZZ_SAMPLER_COLOUR_TABLE_MASK               0x1u
#define BUZZ_SAMPLER_COLOUR_TABLE_INPLACE            (BUZZ_SAMPLER_COLOUR_TABLE_MASK << BUZZ_SAMPLER_COLOUR_TABLE_SHIFT)

/*
 * Texture level descriptor, word 0.
 */
/* word TEXLEVEL_W0: 32 bits; odsy binary analysis of the shipped GL library and kernel command senders */
#define BUZZ_TEXLEVEL_W0_WIDTH                       32 /* established */
#define BUZZ_TEXLEVEL_W0_KEPT_SHIFT                  29 /* unknown */
#define BUZZ_TEXLEVEL_W0_KEPT_MASK                   0x7u
#define BUZZ_TEXLEVEL_W0_KEPT_INPLACE                (BUZZ_TEXLEVEL_W0_KEPT_MASK << BUZZ_TEXLEVEL_W0_KEPT_SHIFT)
#define BUZZ_TEXLEVEL_W0_ADDR_SHIFT                  0 /* established */
#define BUZZ_TEXLEVEL_W0_ADDR_MASK                   0x1fffffffu
#define BUZZ_TEXLEVEL_W0_ADDR_INPLACE                (BUZZ_TEXLEVEL_W0_ADDR_MASK << BUZZ_TEXLEVEL_W0_ADDR_SHIFT)

/*
 * Texture level descriptor, word 1.
 */
/* word TEXLEVEL_W1: 32 bits; odsy binary analysis of the shipped GL library and kernel command senders */
#define BUZZ_TEXLEVEL_W1_WIDTH                       32 /* established */
#define BUZZ_TEXLEVEL_W1_SIZE_CODE_SHIFT             30 /* established */
#define BUZZ_TEXLEVEL_W1_SIZE_CODE_MASK              0x3u
#define BUZZ_TEXLEVEL_W1_SIZE_CODE_INPLACE           (BUZZ_TEXLEVEL_W1_SIZE_CODE_MASK << BUZZ_TEXLEVEL_W1_SIZE_CODE_SHIFT)
#define BUZZ_TEXLEVEL_W1_OFFSET_CODE_SHIFT           26 /* established */
#define BUZZ_TEXLEVEL_W1_OFFSET_CODE_MASK            0x7u
#define BUZZ_TEXLEVEL_W1_OFFSET_CODE_INPLACE         (BUZZ_TEXLEVEL_W1_OFFSET_CODE_MASK << BUZZ_TEXLEVEL_W1_OFFSET_CODE_SHIFT)
#define BUZZ_TEXLEVEL_W1_FORMAT_INDEX_SHIFT          20 /* established */
#define BUZZ_TEXLEVEL_W1_FORMAT_INDEX_MASK           0x3fu
#define BUZZ_TEXLEVEL_W1_FORMAT_INDEX_INPLACE        (BUZZ_TEXLEVEL_W1_FORMAT_INDEX_MASK << BUZZ_TEXLEVEL_W1_FORMAT_INDEX_SHIFT)
#define BUZZ_TEXLEVEL_W1_PITCH_SHIFT                 0 /* established */
#define BUZZ_TEXLEVEL_W1_PITCH_MASK                  0xfffu
#define BUZZ_TEXLEVEL_W1_PITCH_INPLACE               (BUZZ_TEXLEVEL_W1_PITCH_MASK << BUZZ_TEXLEVEL_W1_PITCH_SHIFT)

/*
 * Texture level descriptor, word 2.
 */
/* word TEXLEVEL_W2: 32 bits; odsy binary analysis of the shipped GL library and kernel command senders */
#define BUZZ_TEXLEVEL_W2_WIDTH                       32 /* established */
#define BUZZ_TEXLEVEL_W2_BITS_SHIFT                  0 /* established */
#define BUZZ_TEXLEVEL_W2_BITS_MASK                   0xfffu
#define BUZZ_TEXLEVEL_W2_BITS_INPLACE                (BUZZ_TEXLEVEL_W2_BITS_MASK << BUZZ_TEXLEVEL_W2_BITS_SHIFT)

#define BUZZ_ALPHA_TEST_FUNC_ALWAYS                  0x7u /* established */
#define BUZZ_ALPHA_TEST_FUNC_EQUAL                   0x2u /* established */
#define BUZZ_ALPHA_TEST_FUNC_GEQUAL                  0x6u /* established */
#define BUZZ_ALPHA_TEST_FUNC_GREATER                 0x4u /* established */
#define BUZZ_ALPHA_TEST_FUNC_LEQUAL                  0x3u /* established */
#define BUZZ_ALPHA_TEST_FUNC_LESS                    0x1u /* established */
#define BUZZ_ALPHA_TEST_FUNC_NEVER                   0x0u /* established */
#define BUZZ_ALPHA_TEST_FUNC_NOTEQUAL                0x5u /* established */
#define BUZZ_ATTR_LOW_COUNT4_OP2F                    0xd02fu /* established */
#define BUZZ_ATTR_VERTEX3F_WORD                      0x8080cc03u /* established */
#define BUZZ_BLK_ALPHA_TEST                          0x1eu /* established */
#define BUZZ_BLK_GAMMA_FIT                           0x45u /* established */
#define BUZZ_BLK_IMAGE_SELECTS                       0x1du /* established */
#define BUZZ_BLK_PIO_PIXELS                          0x170u /* established */
#define BUZZ_BLK_SLOT_PAIR                           0x1eau /* established */
#define BUZZ_BLK_TABLE_DATA                          0x1a2u /* established */
#define BUZZ_CLASS0_CLEAR_ADDR                       0x1c0u /* established */
#define BUZZ_CLASS0_CLEAR_WORDS                      0x240u /* established */
#define BUZZ_CLASS0_ID_ADDR                          0x340u /* established */
#define BUZZ_CLASS0_ID_DATA                          0x341u /* established */
#define BUZZ_CLASS0_WRITE_ADDR                       0x740u /* established */
#define BUZZ_CLASS0_WRITE_DATA                       0x741u /* established */
#define BUZZ_CMD_ALPHA_TEST                          0x1041eu /* established */
#define BUZZ_CMD_BLK_01F                             0x1041fu /* established */
#define BUZZ_CMD_BLK_042                             0x10842u /* established */
#define BUZZ_CMD_BLK_047                             0x11847u /* established */
#define BUZZ_CMD_BLK_04C                             0x1044cu /* established */
#define BUZZ_CMD_BLK_04D                             0x13c4du /* established */
#define BUZZ_CMD_BLK_051                             0x10451u /* established */
#define BUZZ_CMD_BLK_056                             0x10456u /* established */
#define BUZZ_CMD_BLK_057                             0x10457u /* established */
#define BUZZ_CMD_BUFFER_SELECT                       0x10424u /* established */
#define BUZZ_CMD_CLASS1_PREFIX                       0x10000u /* established */
#define BUZZ_CMD_CLIP_ORIGIN_PAIR                    0x10840u /* established */
#define BUZZ_CMD_CONTEXT_SELECT                      0x10850u /* established */
#define BUZZ_CMD_DEPTH_FUNC                          0x10420u /* established */
#define BUZZ_CMD_DMA_PRELUDE                         0x10658u /* established */
#define BUZZ_CMD_DRAWABLE_ORIGIN                     0x10841u /* established */
#define BUZZ_CMD_FIRST_TEXLEVEL                      0x10406u /* established */
#define BUZZ_CMD_FLUSH                               0x10019u /* established */
#define BUZZ_CMD_FOG                                 0x1181au /* established */
#define BUZZ_CMD_FRAG_LIGHT_MODEL                    0x10c1cu /* established */
#define BUZZ_CMD_LINE_POINT_SIZE                     0x1084au /* established */
#define BUZZ_CMD_LINE_STIPPLE                        0x10c48u /* established */
#define BUZZ_CMD_LOD_LIMITS                          0x11013u /* established */
#define BUZZ_CMD_LOGIC_OP                            0x10422u /* established */
#define BUZZ_CMD_PAD                                 0x10046u /* established */
#define BUZZ_CMD_PATH_SELECT                         0x10405u /* established */
#define BUZZ_CMD_POLYGON_MODE                        0x10415u /* established */
#define BUZZ_CMD_POLYGON_OFFSET                      0x10458u /* established */
#define BUZZ_CMD_POSTFILTER_M1_0                     0x12030u /* established */
#define BUZZ_CMD_POSTFILTER_M1_1                     0x12031u /* established */
#define BUZZ_CMD_POSTFILTER_M1_2                     0x12032u /* established */
#define BUZZ_CMD_POSTFILTER_M1_3                     0x12033u /* established */
#define BUZZ_CMD_POSTFILTER_M3                       0x1083du /* established */
#define BUZZ_CMD_PRIM_BEGIN                          0x14400u /* established */
#define BUZZ_CMD_PRIM_END                            0x14001u /* established */
#define BUZZ_CMD_RANGE_BLOCK                         0x10854u /* established */
#define BUZZ_CMD_RASTER_ENABLE                       0x10404u /* established */
#define BUZZ_CMD_RECT_COPY                           0x11453u /* established */
#define BUZZ_CMD_REGION_BLOCK_0                      0x13c28u /* established */
#define BUZZ_CMD_REGION_BLOCK_1                      0x13c29u /* established */
#define BUZZ_CMD_REGION_BLOCK_2                      0x13c2au /* established */
#define BUZZ_CMD_REGION_BLOCK_3                      0x13c2bu /* established */
#define BUZZ_CMD_REGION_ONE_BLOCK                    0x13c38u /* established */
#define BUZZ_CMD_SCREEN_MASK                         0x1204bu /* established */
#define BUZZ_CMD_STIPPLE_MODE                        0x1043fu /* established */
#define BUZZ_CMD_STIPPLE_ROWS_HI                     0x13c4eu /* established */
#define BUZZ_CMD_STIPPLE_ROWS_LO                     0x13c4fu /* established */
#define BUZZ_CMD_WAIT                                0x10443u /* established */
#define BUZZ_CMD_WINDOW_DESC                         0x11017u /* established */
#define BUZZ_CMD_WRITE_MASKS                         0x10452u /* established */
#define BUZZ_INIT_DELAY_US                           0x7d0u /* established */
#define BUZZ_INIT_DW_6B0                             0x6b000000000ull /* established */
#define BUZZ_INIT_DW_6B1                             0x6b100000100ull /* established */
#define BUZZ_INIT_DW_6B2                             0x6b200007dc0ull /* established */
#define BUZZ_INIT_DW_6B3                             0x6b300005e50ull /* established */
#define BUZZ_INIT_DW_7B5                             0x7b500000001ull /* established */
#define BUZZ_INIT_DW_7F0                             0x7f03b9aca00ull /* established */
#define BUZZ_OP_COPY                                 0x2031u /* established */
#define BUZZ_OP_COPY_WORDS                           0x8u /* established */
#define BUZZ_OP_POSTFILTER                           0x203bu /* established */
#define BUZZ_OP_POSTFILTER_WORDS                     0x8u /* established */
#define BUZZ_OP_TEXMODE                              0x1c16u /* established */
#define BUZZ_PF_FRAC_BITS                            0xcu /* established */
#define BUZZ_PF_MAX_X4096                            0x7fffu /* inferred */
#define BUZZ_PF_ONE                                  0x1000u /* established */
#define BUZZ_RANGE_BLOCK_HIGH                        0xfffffffu /* established */
#define BUZZ_RANGE_BLOCK_LOW                         0x0u /* established */
#define BUZZ_RASTER_ENABLE_ALPHA_TEST                0x4000u /* established */
#define BUZZ_RASTER_ENABLE_BLEND                     0x20000u /* inferred */
#define BUZZ_RASTER_ENABLE_COLOUR_LOGIC_OP           0x100000u /* established */
#define BUZZ_RASTER_ENABLE_CULL                      0x100u /* inferred */
#define BUZZ_RASTER_ENABLE_CULL_BACK                 0x200u /* established */
#define BUZZ_RASTER_ENABLE_CULL_FRONT                0x400u /* established */
#define BUZZ_RASTER_ENABLE_DEPTH_TEST                0x10000u /* inferred */
#define BUZZ_RASTER_ENABLE_DITHER                    0x40000u /* established */
#define BUZZ_RASTER_ENABLE_FLAT_SHADE                0x1000u /* established */
#define BUZZ_RASTER_ENABLE_FOG                       0x400000u /* established */
#define BUZZ_RASTER_ENABLE_FRONT_CW                  0x800000u /* established */
#define BUZZ_RASTER_ENABLE_INDEX_LOGIC_OP            0x80000u /* established */
#define BUZZ_RASTER_ENABLE_LINE_SMOOTH               0x2u /* established */
#define BUZZ_RASTER_ENABLE_LINE_STIPPLE              0x8u /* established */
#define BUZZ_RASTER_ENABLE_OFFSET_FILL               0x80u /* established */
#define BUZZ_RASTER_ENABLE_OFFSET_LINE               0x40u /* established */
#define BUZZ_RASTER_ENABLE_OFFSET_POINT              0x20u /* established */
#define BUZZ_RASTER_ENABLE_POINT_SMOOTH              0x1u /* established */
#define BUZZ_RASTER_ENABLE_POLYGON_SMOOTH            0x4u /* established */
#define BUZZ_RASTER_ENABLE_POLYGON_STIPPLE           0x10u /* established */
#define BUZZ_RASTER_ENABLE_STENCIL_TEST              0x8000u /* inferred */
#define BUZZ_RASTER_ENABLE_TWO_SIDE_LIGHT            0x800u /* inferred */
#define BUZZ_RD_CODE_INDEX_BYTE                      0x1u /* established */
#define BUZZ_SAMPLER_IMAGE_DEFAULT                   0x3640000u /* established */
#define BUZZ_SEQ_COLOUR_MODE_A_INDEX                 0x1u /* established */
#define BUZZ_SEQ_COLOUR_MODE_A_RGB                   0x0u /* established */
#define BUZZ_SEQ_COLOUR_MODE_B_INDEX                 0x3u /* established */
#define BUZZ_SEQ_COLOUR_MODE_B_RGB                   0x2u /* established */
#define BUZZ_SEQ_REG_COLOUR_MODE_A                   0x22u /* established */
#define BUZZ_SEQ_REG_COLOUR_MODE_B                   0x23u /* established */
#define BUZZ_SEQ_REG_TABLE_INDEX                     0x31u /* established */
#define BUZZ_SEQ_WORD_COLOUR_A_INDEX                 0x22008001u /* established */
#define BUZZ_SEQ_WORD_COLOUR_A_RGB                   0x22008000u /* established */
#define BUZZ_SEQ_WORD_COLOUR_B_INDEX                 0x23008003u /* established */
#define BUZZ_SEQ_WORD_COLOUR_B_RGB                   0x23008002u /* established */
#define BUZZ_SLOT15_WORD_OP12F                       0xcf80a92fu /* established */
#define BUZZ_SLOT16_WORD_OP33                        0xd080c433u /* established */
#define BUZZ_SLOT16_WORD_OP34                        0xd080cc34u /* established */
#define BUZZ_SLOT2_WORD                              0xc280cc1cu /* established */
#define BUZZ_SLOT4_DEFAULT_WORD                      0xc480c426u /* established */
#define BUZZ_SYNC_WAIT_FIRST                         0xfau /* established */
#define BUZZ_SYNC_WAIT_SECOND                        0x96u /* established */
#define BUZZ_TEXLEVEL_COUNT                          0x40u /* inferred */
#define BUZZ_WORD_CLIP_STATE_A_LOW24                 0x8116u /* established */
#define BUZZ_WORD_CLIP_STATE_B_LOW24                 0xbda2u /* established */
#define BUZZ_WORD_DATA_LOAD4                         0x8e809015u /* established */
#define BUZZ_WORD_PROGRAM_SWITCH_LOW24               0x808800u /* established */
#define BUZZ_WORD_TABLE16_A_LOW24                    0x80bda2u /* established */
#define BUZZ_WORD_TABLE16_B_LOW24                    0x80bdc8u /* established */
#define BUZZ_WORD_TABLE4_A_LOW24                     0x8091dfu /* established */
#define BUZZ_WORD_TABLE4_B_LOW24                     0x8091eau /* established */
#define BUZZ_WORD_TOP_BYTE_90                        0x90u /* established */

/* hand-written helper macros */
#include "../../defs/buzz_helpers.h"

#endif /* BUZZ_GEN_H */
