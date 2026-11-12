/* generated from defs/display.toml by defs-gen - do not edit, change the source */
/* VPro (Odyssey) display registers (publish-safe subset) */
#ifndef DISPLAY_GEN_H
#define DISPLAY_GEN_H

#include <stdint.h>


/*
 * Colour map. One entry per register, indexed by the entry number in the
 * display FIFO header address. Each entry packs three 10-bit channels. The
 * software widens an 8-bit input channel c to 10 bits as (c << 2) | (c >>
 * 6), repeating the top two bits. The map has 8192 entries: the published
 * diagnostic reference steps the red, green and blue index to 8191 and
 * calls that the maximum size, and the line table begins where the map
 * ends. No X visual declares more than 4096 entries. Bits 31:30 are never
 * set by any shipped writer. The driver waits for the display FIFO to
 * drain before a textport write; the X server path loads runs of entries
 * as multi-word FIFO packets of the retrace-synchronised kind.
 */
/* cmap: w32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_CMAP_OFFSET                          0x0u /* established */
#define DISPLAY_CMAP_COUNT                           8192
#define DISPLAY_CMAP_STRIDE                          1
#define DISPLAY_CMAP_TOP_SHIFT                       30 /* unknown */
#define DISPLAY_CMAP_TOP_MASK                        0x3u
#define DISPLAY_CMAP_TOP_INPLACE                     (DISPLAY_CMAP_TOP_MASK << DISPLAY_CMAP_TOP_SHIFT)
#define DISPLAY_CMAP_R_SHIFT                         20 /* established */
#define DISPLAY_CMAP_R_MASK                          0x3ffu
#define DISPLAY_CMAP_R_INPLACE                       (DISPLAY_CMAP_R_MASK << DISPLAY_CMAP_R_SHIFT)
#define DISPLAY_CMAP_G_SHIFT                         10 /* established */
#define DISPLAY_CMAP_G_MASK                          0x3ffu
#define DISPLAY_CMAP_G_INPLACE                       (DISPLAY_CMAP_G_MASK << DISPLAY_CMAP_G_SHIFT)
#define DISPLAY_CMAP_B_SHIFT                         0 /* established */
#define DISPLAY_CMAP_B_MASK                          0x3ffu
#define DISPLAY_CMAP_B_INPLACE                       (DISPLAY_CMAP_B_MASK << DISPLAY_CMAP_B_SHIFT)

/*
 * Video timing line table, up to 2048 16-bit entries, two per word with
 * the even entry in the low half. A line type is a run of entries ending
 * at the first entry with bit 15 set. For the timed entries bits 14:8
 * behave as a duration in pixel clocks (the first timed run of the built-
 * in 1280 by 1024 timing is the horizontal sync width); this fails for
 * some later line types, so it is a partial reading. The low byte of an
 * entry is the output state for the span: which signal each bit drives is
 * unknown. The loader zeroes the whole table (1024 words) before it sends
 * a new one.
 */
/* line_table: w32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_LINE_TABLE_OFFSET                    0x2000u /* established */
#define DISPLAY_LINE_TABLE_COUNT                     1024
#define DISPLAY_LINE_TABLE_STRIDE                    1
#define DISPLAY_LINE_TABLE_E1_END_SHIFT              31 /* established */
#define DISPLAY_LINE_TABLE_E1_END_MASK               0x1u
#define DISPLAY_LINE_TABLE_E1_END_INPLACE            (DISPLAY_LINE_TABLE_E1_END_MASK << DISPLAY_LINE_TABLE_E1_END_SHIFT)
#define DISPLAY_LINE_TABLE_E1_DURATION_SHIFT         24 /* inferred */
#define DISPLAY_LINE_TABLE_E1_DURATION_MASK          0x7fu
#define DISPLAY_LINE_TABLE_E1_DURATION_INPLACE       (DISPLAY_LINE_TABLE_E1_DURATION_MASK << DISPLAY_LINE_TABLE_E1_DURATION_SHIFT)
#define DISPLAY_LINE_TABLE_E1_LEVELS_SHIFT           16 /* unknown */
#define DISPLAY_LINE_TABLE_E1_LEVELS_MASK            0xffu
#define DISPLAY_LINE_TABLE_E1_LEVELS_INPLACE         (DISPLAY_LINE_TABLE_E1_LEVELS_MASK << DISPLAY_LINE_TABLE_E1_LEVELS_SHIFT)
#define DISPLAY_LINE_TABLE_E0_END_SHIFT              15 /* established */
#define DISPLAY_LINE_TABLE_E0_END_MASK               0x1u
#define DISPLAY_LINE_TABLE_E0_END_INPLACE            (DISPLAY_LINE_TABLE_E0_END_MASK << DISPLAY_LINE_TABLE_E0_END_SHIFT)
#define DISPLAY_LINE_TABLE_E0_DURATION_SHIFT         8 /* inferred */
#define DISPLAY_LINE_TABLE_E0_DURATION_MASK          0x7fu
#define DISPLAY_LINE_TABLE_E0_DURATION_INPLACE       (DISPLAY_LINE_TABLE_E0_DURATION_MASK << DISPLAY_LINE_TABLE_E0_DURATION_SHIFT)
#define DISPLAY_LINE_TABLE_E0_LEVELS_SHIFT           0 /* unknown */
#define DISPLAY_LINE_TABLE_E0_LEVELS_MASK            0xffu
#define DISPLAY_LINE_TABLE_E0_LEVELS_INPLACE         (DISPLAY_LINE_TABLE_E0_LEVELS_MASK << DISPLAY_LINE_TABLE_E0_LEVELS_SHIFT)

/*
 * Video timing frame table, up to 256 16-bit entries, two per word like
 * the line table. Entries come in pairs: the position of a line type in
 * the line table (in 32-bit words) and how many consecutive lines use it.
 * The list ends with a (0, 0) pair. The counts of a timing add up to its
 * total lines per frame. The loader zeroes 128 words before it sends a new
 * table.
 */
/* frame_table: w32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_FRAME_TABLE_OFFSET                   0x2400u /* established */
#define DISPLAY_FRAME_TABLE_COUNT                    128
#define DISPLAY_FRAME_TABLE_STRIDE                   1
#define DISPLAY_FRAME_TABLE_REPEAT_SHIFT             16 /* inferred */
#define DISPLAY_FRAME_TABLE_REPEAT_MASK              0xffffu
#define DISPLAY_FRAME_TABLE_REPEAT_INPLACE           (DISPLAY_FRAME_TABLE_REPEAT_MASK << DISPLAY_FRAME_TABLE_REPEAT_SHIFT)
#define DISPLAY_FRAME_TABLE_POSITION_SHIFT           0 /* inferred */
#define DISPLAY_FRAME_TABLE_POSITION_MASK            0xffffu
#define DISPLAY_FRAME_TABLE_POSITION_INPLACE         (DISPLAY_FRAME_TABLE_POSITION_MASK << DISPLAY_FRAME_TABLE_POSITION_SHIFT)

/*
 * Video timing generator control word. The loader writes the timing
 * structure's control word with 0x42 ORed in, then writes 1 after the
 * clock is programmed. The genlock handler clears and sets bit 1 here as
 * the lock state changes (set while locked, inferred from the handler's
 * two branches).
 */
/* vtg_ctl: w32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_VTG_CTL_OFFSET                       0x2481u /* established */
#define DISPLAY_VTG_CTL_LOCKED_SHIFT                 1 /* inferred */
#define DISPLAY_VTG_CTL_LOCKED_MASK                  0x1u
#define DISPLAY_VTG_CTL_LOCKED_INPLACE               (DISPLAY_VTG_CTL_LOCKED_MASK << DISPLAY_VTG_CTL_LOCKED_SHIFT)

/*
 * Timing generator initial-state word. The driver reads it back once at
 * start-up as its shadow and clears bit 5 of the shadow to blank the
 * screen. The loader writes the timing structure's initial-state word
 * here.
 */
/* vtg_init_state: rw32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_VTG_INIT_STATE_OFFSET                0x2482u /* established */
#define DISPLAY_VTG_INIT_STATE_BLANK_GATE_SHIFT      5 /* established */
#define DISPLAY_VTG_INIT_STATE_BLANK_GATE_MASK       0x1u
#define DISPLAY_VTG_INIT_STATE_BLANK_GATE_INPLACE    (DISPLAY_VTG_INIT_STATE_BLANK_GATE_MASK << DISPLAY_VTG_INIT_STATE_BLANK_GATE_SHIFT)

/*
 * Timing generator channel-enable word. Blanking clears the three bits of
 * mask 0x23 (bits 5, 1 and 0) in the driver's shadow of it and unblanking
 * sets them again; the timing load writes the structure's word with the
 * driver's own bit 5 kept. The names are ours: what each bit gates is
 * unknown.
 */
/* vtg_chan_en: rw32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_VTG_CHAN_EN_OFFSET                   0x2483u /* established */
#define DISPLAY_VTG_CHAN_EN_BLANK_GATE_5_SHIFT       5 /* established */
#define DISPLAY_VTG_CHAN_EN_BLANK_GATE_5_MASK        0x1u
#define DISPLAY_VTG_CHAN_EN_BLANK_GATE_5_INPLACE     (DISPLAY_VTG_CHAN_EN_BLANK_GATE_5_MASK << DISPLAY_VTG_CHAN_EN_BLANK_GATE_5_SHIFT)
#define DISPLAY_VTG_CHAN_EN_BLANK_GATE_1_SHIFT       1 /* established */
#define DISPLAY_VTG_CHAN_EN_BLANK_GATE_1_MASK        0x1u
#define DISPLAY_VTG_CHAN_EN_BLANK_GATE_1_INPLACE     (DISPLAY_VTG_CHAN_EN_BLANK_GATE_1_MASK << DISPLAY_VTG_CHAN_EN_BLANK_GATE_1_SHIFT)
#define DISPLAY_VTG_CHAN_EN_BLANK_GATE_0_SHIFT       0 /* established */
#define DISPLAY_VTG_CHAN_EN_BLANK_GATE_0_MASK        0x1u
#define DISPLAY_VTG_CHAN_EN_BLANK_GATE_0_INPLACE     (DISPLAY_VTG_CHAN_EN_BLANK_GATE_0_MASK << DISPLAY_VTG_CHAN_EN_BLANK_GATE_0_SHIFT)

/*
 * Cursor image block A, 128 words. A 32 by 32 cursor at 4 bits a pixel is
 * 512 bytes, which is this block. Each pixel indexes the cursor colour
 * table; index 15 has no entry and inverts the pixel under the cursor. The
 * stored image is the bitmap with its two middle nibble columns swapped
 * and mirrored. The shipped driver names this block the glyph plane and
 * block B the alpha plane.
 */
/* cursor_image_a: w32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_CURSOR_IMAGE_A_OFFSET                0x2500u /* established */
#define DISPLAY_CURSOR_IMAGE_A_COUNT                 128
#define DISPLAY_CURSOR_IMAGE_A_STRIDE                1

/*
 * Cursor position word: the cursor x minus the hotspot x in the high half
 * and y minus the hotspot y in the low half. The write goes out as an
 * immediate update, or as a retrace-synchronised one when bit 2 of the
 * cursor control word is set.
 */
/* cursor_pos: w32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_CURSOR_POS_OFFSET                    0x2580u /* established */
#define DISPLAY_CURSOR_POS_X_SHIFT                   16 /* established */
#define DISPLAY_CURSOR_POS_X_MASK                    0xffffu
#define DISPLAY_CURSOR_POS_X_INPLACE                 (DISPLAY_CURSOR_POS_X_MASK << DISPLAY_CURSOR_POS_X_SHIFT)
#define DISPLAY_CURSOR_POS_Y_SHIFT                   0 /* established */
#define DISPLAY_CURSOR_POS_Y_MASK                    0xffffu
#define DISPLAY_CURSOR_POS_Y_INPLACE                 (DISPLAY_CURSOR_POS_Y_MASK << DISPLAY_CURSOR_POS_Y_SHIFT)

/*
 * Cursor control word. Five named fields live in bits 4:0: the firmware
 * textport clears 4:2 and sets 1:0, so enable and delay enable are in 1:0
 * and the other three in 4:2 (established). Which field is which bit is
 * unknown from the binaries read; the layout below lists the guessed fields
 * from high to low and is a guess, not evidence. The kernel also toggles bit 5 around cursor requests; what
 * it does on the board is unknown. Start-up writes 0.
 */
/* cursor_ctl: w32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_CURSOR_CTL_OFFSET                    0x2581u /* established */
#define DISPLAY_CURSOR_CTL_TOGGLE_SHIFT              5 /* unknown */
#define DISPLAY_CURSOR_CTL_TOGGLE_MASK               0x1u
#define DISPLAY_CURSOR_CTL_TOGGLE_INPLACE            (DISPLAY_CURSOR_CTL_TOGGLE_MASK << DISPLAY_CURSOR_CTL_TOGGLE_SHIFT)
#define DISPLAY_CURSOR_CTL_DUAL_HEAD_SHIFT           4 /* unknown */
#define DISPLAY_CURSOR_CTL_DUAL_HEAD_MASK            0x1u
#define DISPLAY_CURSOR_CTL_DUAL_HEAD_INPLACE         (DISPLAY_CURSOR_CTL_DUAL_HEAD_MASK << DISPLAY_CURSOR_CTL_DUAL_HEAD_SHIFT)
#define DISPLAY_CURSOR_CTL_FIELD_SEQ_SHIFT           3 /* unknown */
#define DISPLAY_CURSOR_CTL_FIELD_SEQ_MASK            0x1u
#define DISPLAY_CURSOR_CTL_FIELD_SEQ_INPLACE         (DISPLAY_CURSOR_CTL_FIELD_SEQ_MASK << DISPLAY_CURSOR_CTL_FIELD_SEQ_SHIFT)
#define DISPLAY_CURSOR_CTL_CROSSHAIR_SHIFT           2 /* unknown */
#define DISPLAY_CURSOR_CTL_CROSSHAIR_MASK            0x1u
#define DISPLAY_CURSOR_CTL_CROSSHAIR_INPLACE         (DISPLAY_CURSOR_CTL_CROSSHAIR_MASK << DISPLAY_CURSOR_CTL_CROSSHAIR_SHIFT)
#define DISPLAY_CURSOR_CTL_ENABLE_SHIFT              1 /* unknown */
#define DISPLAY_CURSOR_CTL_ENABLE_MASK               0x1u
#define DISPLAY_CURSOR_CTL_ENABLE_INPLACE            (DISPLAY_CURSOR_CTL_ENABLE_MASK << DISPLAY_CURSOR_CTL_ENABLE_SHIFT)
#define DISPLAY_CURSOR_CTL_DELAY_ENABLE_SHIFT        0 /* unknown */
#define DISPLAY_CURSOR_CTL_DELAY_ENABLE_MASK         0x1u
#define DISPLAY_CURSOR_CTL_DELAY_ENABLE_INPLACE      (DISPLAY_CURSOR_CTL_DELAY_ENABLE_MASK << DISPLAY_CURSOR_CTL_DELAY_ENABLE_SHIFT)

/*
 * Cursor colour table, 15 words for pixel values 0 to 14, in the colour-
 * map entry format. Software shifts an 8-bit value into the top eight bits
 * of each 10-bit field, leaving the low two bits zero.
 */
/* cursor_colors: w32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_CURSOR_COLORS_OFFSET                 0x2590u /* established */
#define DISPLAY_CURSOR_COLORS_COUNT                  15
#define DISPLAY_CURSOR_COLORS_STRIDE                 1
#define DISPLAY_CURSOR_COLORS_TOP_SHIFT              30 /* unknown */
#define DISPLAY_CURSOR_COLORS_TOP_MASK               0x3u
#define DISPLAY_CURSOR_COLORS_TOP_INPLACE            (DISPLAY_CURSOR_COLORS_TOP_MASK << DISPLAY_CURSOR_COLORS_TOP_SHIFT)
#define DISPLAY_CURSOR_COLORS_R_SHIFT                20 /* established */
#define DISPLAY_CURSOR_COLORS_R_MASK                 0x3ffu
#define DISPLAY_CURSOR_COLORS_R_INPLACE              (DISPLAY_CURSOR_COLORS_R_MASK << DISPLAY_CURSOR_COLORS_R_SHIFT)
#define DISPLAY_CURSOR_COLORS_G_SHIFT                10 /* established */
#define DISPLAY_CURSOR_COLORS_G_MASK                 0x3ffu
#define DISPLAY_CURSOR_COLORS_G_INPLACE              (DISPLAY_CURSOR_COLORS_G_MASK << DISPLAY_CURSOR_COLORS_G_SHIFT)
#define DISPLAY_CURSOR_COLORS_B_SHIFT                0 /* established */
#define DISPLAY_CURSOR_COLORS_B_MASK                 0x3ffu
#define DISPLAY_CURSOR_COLORS_B_INPLACE              (DISPLAY_CURSOR_COLORS_B_MASK << DISPLAY_CURSOR_COLORS_B_SHIFT)

/*
 * Cursor image block B, 64 words: 2 bits a pixel, the alpha plane that
 * decides where the cursor shows. Alpha 3 is an opaque cursor pixel and 0
 * transparent (inferred from the one shipped arrow image). Alpha 1 and 2
 * have no known fixed meaning.
 */
/* cursor_image_b: w32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_CURSOR_IMAGE_B_OFFSET                0x25c0u /* established */
#define DISPLAY_CURSOR_IMAGE_B_COUNT                 64
#define DISPLAY_CURSOR_IMAGE_B_STRIDE                1

/*
 * Data-path control of the display chip. The timing load writes the
 * structure's word here and sets bit 7 when bit 6 of that word is set. The
 * blanking routine reads it back. The role is inferred from the order of
 * the driver's stores; bit meanings beyond the two named are unknown.
 */
/* datapath_ctl: rw32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_DATAPATH_CTL_OFFSET                  0x2600u /* inferred */
#define DISPLAY_DATAPATH_CTL_BIT7_SHIFT              7 /* unknown */
#define DISPLAY_DATAPATH_CTL_BIT7_MASK               0x1u
#define DISPLAY_DATAPATH_CTL_BIT7_INPLACE            (DISPLAY_DATAPATH_CTL_BIT7_MASK << DISPLAY_DATAPATH_CTL_BIT7_SHIFT)
#define DISPLAY_DATAPATH_CTL_BIT6_SHIFT              6 /* unknown */
#define DISPLAY_DATAPATH_CTL_BIT6_MASK               0x1u
#define DISPLAY_DATAPATH_CTL_BIT6_INPLACE            (DISPLAY_DATAPATH_CTL_BIT6_MASK << DISPLAY_DATAPATH_CTL_BIT6_SHIFT)

/*
 * Written once per timing load from a word of the timing structure that
 * sits next to the DAC and data-path words. What it controls is unknown.
 */
/* aux_ctl: w32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_AUX_CTL_OFFSET                       0x2680u /* established */

/*
 * DAC control. Blanking sets bit 0; the DAC-gain routine sets or clears
 * bit 1 with a read-modify-write; the timing load writes the structure's
 * DAC word. That bit 0 blanks is established by the routine; the polarity
 * of the gain bit is not known, so its name is inferred.
 */
/* dac_ctl: rw32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_DAC_CTL_OFFSET                       0x26c0u /* established */
#define DISPLAY_DAC_CTL_GAIN_SHIFT                   1 /* inferred */
#define DISPLAY_DAC_CTL_GAIN_MASK                    0x1u
#define DISPLAY_DAC_CTL_GAIN_INPLACE                 (DISPLAY_DAC_CTL_GAIN_MASK << DISPLAY_DAC_CTL_GAIN_SHIFT)
#define DISPLAY_DAC_CTL_BLANK_SHIFT                  0 /* established */
#define DISPLAY_DAC_CTL_BLANK_MASK                   0x1u
#define DISPLAY_DAC_CTL_BLANK_INPLACE                (DISPLAY_DAC_CTL_BLANK_MASK << DISPLAY_DAC_CTL_BLANK_SHIFT)

/*
 * Twelve consecutive timing generator words, written in order from twelve
 * consecutive words of the timing structure. Bit meanings are unknown.
 */
/* vtg_misc: w32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_VTG_MISC_OFFSET                      0x27c0u /* established */
#define DISPLAY_VTG_MISC_COUNT                       12
#define DISPLAY_VTG_MISC_STRIDE                      1

/*
 * Genlock control. The timing load writes the structure's word here after
 * enabling the genlock interrupt source, and the genlock handler continues
 * only when bit 6 is set, which reads as a genlock-enabled flag (inferred).
 * While the clock is being reprogrammed
 * the word is held at 0.
 */
/* genlock_ctl: rw32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_GENLOCK_CTL_OFFSET                   0x27ccu /* established */
#define DISPLAY_GENLOCK_CTL_ENABLED_SHIFT            6 /* inferred */
#define DISPLAY_GENLOCK_CTL_ENABLED_MASK             0x1u
#define DISPLAY_GENLOCK_CTL_ENABLED_INPLACE          (DISPLAY_GENLOCK_CTL_ENABLED_MASK << DISPLAY_GENLOCK_CTL_ENABLED_SHIFT)

/*
 * Genlock status, read only. The handler returns if bit 0 is clear. Bit 1
 * selects the branch that reprograms the clock part: set takes the "lost"
 * branch, clear the "got" one. The handler's own message calls bit 0 the
 * generator state; what bit 1 means beyond selecting the branch is unknown,
 * so the name valid is a guess.
 */
/* genlock_status: r32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_GENLOCK_STATUS_OFFSET                0x27cdu /* inferred */
#define DISPLAY_GENLOCK_STATUS_LOST_SHIFT            1 /* inferred */
#define DISPLAY_GENLOCK_STATUS_LOST_MASK             0x1u
#define DISPLAY_GENLOCK_STATUS_LOST_INPLACE          (DISPLAY_GENLOCK_STATUS_LOST_MASK << DISPLAY_GENLOCK_STATUS_LOST_SHIFT)
#define DISPLAY_GENLOCK_STATUS_VALID_SHIFT           0 /* inferred */
#define DISPLAY_GENLOCK_STATUS_VALID_MASK            0x1u
#define DISPLAY_GENLOCK_STATUS_VALID_INPLACE         (DISPLAY_GENLOCK_STATUS_VALID_MASK << DISPLAY_GENLOCK_STATUS_VALID_SHIFT)

/*
 * Display-mode table: one mode word per display id, ids 0 to 36 seen in
 * the shipped tables (the upper bound is unknown). Type-7 (retrace-
 * synchronised) FIFO writes. Ids below 32 are the window ids that double-
 * buffer; bit 30 of the caller's mode is a software buffer flag the kernel
 * strips before the write. For ids below 32 the colour-map group is bits
 * 8:4, for ids from 32 up it is bits 7:3. Every colour-index mode seen has
 * pixel_format 0, 3, 6 or 7 (not a channel width); across the TrueColor
 * modes the codes below are established as values and their mapping to
 * depth is inferred from which visual each table row serves. Colour-map
 * group 26 appears on every TrueColor mode and is read as the gamma map. A
 * published driver sets two bits among 31:25 (bits 31 and 28) in the one
 * word it writes to all entries; no shipped mode word has either set and
 * what they do is unknown.
 */
/* mode_table: w32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_MODE_TABLE_OFFSET                    0x2900u /* established */
#define DISPLAY_MODE_TABLE_COUNT                     37
#define DISPLAY_MODE_TABLE_STRIDE                    1
#define DISPLAY_MODE_TABLE_TOP_SHIFT                 25 /* unknown */
#define DISPLAY_MODE_TABLE_TOP_MASK                  0x7fu
#define DISPLAY_MODE_TABLE_TOP_INPLACE               (DISPLAY_MODE_TABLE_TOP_MASK << DISPLAY_MODE_TABLE_TOP_SHIFT)
#define DISPLAY_MODE_TABLE_BIT24_SHIFT               24 /* unknown */
#define DISPLAY_MODE_TABLE_BIT24_MASK                0x1u
#define DISPLAY_MODE_TABLE_BIT24_INPLACE             (DISPLAY_MODE_TABLE_BIT24_MASK << DISPLAY_MODE_TABLE_BIT24_SHIFT)
#define DISPLAY_MODE_TABLE_LAYOUT_SHIFT              12 /* unknown */
#define DISPLAY_MODE_TABLE_LAYOUT_MASK               0xfffu
#define DISPLAY_MODE_TABLE_LAYOUT_INPLACE            (DISPLAY_MODE_TABLE_LAYOUT_MASK << DISPLAY_MODE_TABLE_LAYOUT_SHIFT)
#define DISPLAY_MODE_TABLE_PIXEL_FORMAT_SHIFT        9 /* inferred */
#define DISPLAY_MODE_TABLE_PIXEL_FORMAT_MASK         0x7u
#define DISPLAY_MODE_TABLE_PIXEL_FORMAT_INPLACE      (DISPLAY_MODE_TABLE_PIXEL_FORMAT_MASK << DISPLAY_MODE_TABLE_PIXEL_FORMAT_SHIFT)
#define DISPLAY_MODE_TABLE_PIXEL_FORMAT_RGB10        1 /* inferred */
#define DISPLAY_MODE_TABLE_PIXEL_FORMAT_RGB8         2 /* inferred */
#define DISPLAY_MODE_TABLE_PIXEL_FORMAT_RGB5         3 /* inferred */
#define DISPLAY_MODE_TABLE_PIXEL_FORMAT_RGB4         4 /* inferred */
#define DISPLAY_MODE_TABLE_PIXEL_FORMAT_RGB10_ALT    6 /* inferred */
#define DISPLAY_MODE_TABLE_CMAP_GROUP_SHIFT          4 /* established */
#define DISPLAY_MODE_TABLE_CMAP_GROUP_MASK           0x1fu
#define DISPLAY_MODE_TABLE_CMAP_GROUP_INPLACE        (DISPLAY_MODE_TABLE_CMAP_GROUP_MASK << DISPLAY_MODE_TABLE_CMAP_GROUP_SHIFT)
#define DISPLAY_MODE_TABLE_CMAP_GROUP_GAMMA          26 /* inferred */
#define DISPLAY_MODE_TABLE_LOW_CODE_SHIFT            0 /* unknown */
#define DISPLAY_MODE_TABLE_LOW_CODE_MASK             0xfu
#define DISPLAY_MODE_TABLE_LOW_CODE_INPLACE          (DISPLAY_MODE_TABLE_LOW_CODE_MASK << DISPLAY_MODE_TABLE_LOW_CODE_SHIFT)

/*
 * Colour-map unit configuration. Start-up writes 0; the timing load stores
 * a flag bit of the timing load, the same flag it stores to the second
 * scan configuration register in PBJ_DECODE.h.
 */
/* cmap_unit_ctl: w32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_CMAP_UNIT_CTL_OFFSET                 0x2929u /* inferred */

/*
 * Red, green and blue overrides of the colour-map unit, in that order.
 * Start-up writes 0 to each.
 */
/* cmap_override: w32, space display_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define DISPLAY_CMAP_OVERRIDE_OFFSET                 0x292au /* inferred */
#define DISPLAY_CMAP_OVERRIDE_COUNT                  3
#define DISPLAY_CMAP_OVERRIDE_STRIDE                 1

/* hand-written helper macros */
#include "../../defs/display_helpers.h"

#endif /* DISPLAY_GEN_H */
