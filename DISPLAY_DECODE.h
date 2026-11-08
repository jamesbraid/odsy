/*
 * DISPLAY_DECODE.h - VPro (Odyssey) display registers (publish-safe subset)
 *
 * Purpose: the register contract an emulator needs for the display half of
 * the VPro board: what each display-side register is called, how wide it
 * is, how the software reaches it, and the bit fields it decodes. Meant to
 * be consumed by public projects, so it carries register offsets only
 * inside REG lines, bit positions and enum values. No binary symbols, no
 * code addresses, no vendor identifiers.
 *
 * Derivation: derived from odsy RE binary analysis of the VPro display
 * path (kernel display set-up, timing load, cursor request and genlock
 * handling, and the X server mode tables), cross-read against vendor
 * driver behaviour; see the odsy RE notes. Every fact is restated in our
 * own words. The odsy publish-safe check verifies this file against those
 * notes.
 *
 * Grades, on every register, field and value:
 *   established - read in full in the shipped software that builds or
 *                 consumes the word, and cross-checked where a second
 *                 reader exists. This is what the driver does, not a
 *                 measurement of the silicon.
 *   inferred    - a reasoned reading; the reasoning is given.
 *   unknown     - not derived. No shipped software or published source
 *                 depends on it.
 * Board behaviour is never "established" here: nothing in this file was
 * measured on a board. A grade speaks about the layout and the role the
 * software gives a bit, not about what the hardware does with it.
 *
 * Machine-parseable annotations (the odsy publish-safe check reads them):
 *   REG: <BLOCK>.<name> <offset> <acc><width> [count=<n>] reset=<v> <grade>
 *   FIELD: <BLOCK>.<name>.<field> <hi>:<lo> <grade>     a register field
 *   FIELD: <WORD>.<field> <hi>:<lo> <grade>             a non-register word
 *   ENUM: <BLOCK>.<name>.<field> <value> <label> <grade>
 *   TESTVEC: <value> as <WORD or BLOCK.name> => field=val, ...
 *   EXAMPLE (unverified): <value> as <...> => ...       layout only
 * A single bit is written <n>:<n>. Do not reformat these lines.
 *
 * REG offsets. The offset is the display-space register address: the
 * 14-bit address a display FIFO word carries (see the FIFO header word
 * in PBJ_DECODE.h), one 32-bit register each. It is not a byte offset
 * and not a bus address. Offsets are written only inside REG lines; a
 * decoder that needs one reads it from there, and a TESTVEC that names
 * an address writes it as @<BLOCK>.<name>. <acc> is r, w or rw: what
 * the shipped software does with the register (a read-back or a store),
 * not a claim that the other direction is impossible; a read-back
 * returns what the FIFO last wrote to that address. count=<n> marks n
 * consecutive registers starting at the offset. reset=unknown means the
 * software never reads a power-on value; a value the driver writes at
 * start-up is not a reset value and is given in the register's note.
 *
 * Words are 32 bits. Bit 31 is the most significant.
 */
#ifndef DISPLAY_DECODE_H
#define DISPLAY_DECODE_H

#include <stdint.h>

/*
 * Where this block sits. The registers below are written by display FIFO
 * words (the header format is in PBJ_DECODE.h) and read back through the
 * chip's read-back window. They are the display half of the VPro board's
 * display back end: colour map, cursor, DAC, the video timing generator
 * and genlock, and the display-mode table. The scanout buffer registers,
 * the I2C controllers, identification and the host-interface control are
 * in PBJ_DECODE.h. Gamma is not a register: the software loads gamma
 * correction as ordinary colour-map entries in a colour-map group (see the
 * mode table).
 */

/* ===================================================================
 * REGISTERS
 * =================================================================== */

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
/* REG: DISPLAY.cmap 0x0000 w32 count=8192 reset=unknown established */
/* FIELD: DISPLAY.cmap.r 29:20 established */
/* FIELD: DISPLAY.cmap.g 19:10 established */
/* FIELD: DISPLAY.cmap.b 9:0 established */
/* FIELD: DISPLAY.cmap.top 31:30 unknown */
#define DISPLAY_CMAP_R_SHIFT 20
#define DISPLAY_CMAP_R_MASK  0x3ffu
#define DISPLAY_CMAP_G_SHIFT 10
#define DISPLAY_CMAP_G_MASK  0x3ffu
#define DISPLAY_CMAP_B_SHIFT 0
#define DISPLAY_CMAP_B_MASK  0x3ffu
#define DISPLAY_CMAP_TOP_SHIFT 30
#define DISPLAY_CMAP_TOP_MASK  0x3u
#define DISPLAY_CMAP_WIDEN8(c) \
    (((((uint32_t)(c)) & 0xffu) << 2) | ((((uint32_t)(c)) & 0xffu) >> 6)) /* established */

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
/* REG: DISPLAY.line_table 0x2000 w32 count=1024 reset=unknown established */
/* FIELD: DISPLAY.line_table.e0_end 15:15 established */
/* FIELD: DISPLAY.line_table.e0_duration 14:8 inferred */
/* FIELD: DISPLAY.line_table.e0_levels 7:0 unknown */
/* FIELD: DISPLAY.line_table.e1_end 31:31 established */
/* FIELD: DISPLAY.line_table.e1_duration 30:24 inferred */
/* FIELD: DISPLAY.line_table.e1_levels 23:16 unknown */
#define DISPLAY_LINE_TABLE_E0_END_SHIFT 15
#define DISPLAY_LINE_TABLE_E0_END_MASK  0x1u
#define DISPLAY_LINE_TABLE_E0_DURATION_SHIFT 8
#define DISPLAY_LINE_TABLE_E0_DURATION_MASK  0x7fu
#define DISPLAY_LINE_TABLE_E0_LEVELS_SHIFT 0
#define DISPLAY_LINE_TABLE_E0_LEVELS_MASK  0xffu
#define DISPLAY_LINE_TABLE_E1_END_SHIFT 31
#define DISPLAY_LINE_TABLE_E1_END_MASK  0x1u
#define DISPLAY_LINE_TABLE_E1_DURATION_SHIFT 24
#define DISPLAY_LINE_TABLE_E1_DURATION_MASK  0x7fu
#define DISPLAY_LINE_TABLE_E1_LEVELS_SHIFT 16
#define DISPLAY_LINE_TABLE_E1_LEVELS_MASK  0xffu

/*
 * Video timing frame table, up to 256 16-bit entries, two per word like
 * the line table. Entries come in pairs: the position of a line type in
 * the line table (in 32-bit words) and how many consecutive lines use it.
 * The list ends with a (0, 0) pair. The counts of a timing add up to its
 * total lines per frame. The loader zeroes 128 words before it sends a new
 * table.
 */
/* REG: DISPLAY.frame_table 0x2400 w32 count=128 reset=unknown established */
/* FIELD: DISPLAY.frame_table.position 15:0 inferred */
/* FIELD: DISPLAY.frame_table.repeat 31:16 inferred */
#define DISPLAY_FRAME_TABLE_POSITION_SHIFT 0
#define DISPLAY_FRAME_TABLE_POSITION_MASK  0xffffu
#define DISPLAY_FRAME_TABLE_REPEAT_SHIFT 16
#define DISPLAY_FRAME_TABLE_REPEAT_MASK  0xffffu

/*
 * Video timing generator control word. The loader writes the timing
 * structure's control word with 0x42 ORed in, then writes 1 after the
 * clock is programmed. The genlock handler clears and sets bit 1 here as
 * the lock state changes (set while locked, inferred from the handler's
 * two branches).
 */
/* REG: DISPLAY.vtg_ctl 0x2481 w32 reset=unknown established */
/* FIELD: DISPLAY.vtg_ctl.locked 1:1 inferred */
#define DISPLAY_VTG_CTL_LOCKED_SHIFT 1
#define DISPLAY_VTG_CTL_LOCKED_MASK  0x1u

/*
 * Timing generator initial-state word. The driver reads it back once at
 * start-up as its shadow and clears bit 5 of the shadow to blank the
 * screen. The loader writes the timing structure's initial-state word
 * here.
 */
/* REG: DISPLAY.vtg_init_state 0x2482 rw32 reset=unknown established */
/* FIELD: DISPLAY.vtg_init_state.blank_gate 5:5 established */
#define DISPLAY_VTG_INIT_STATE_BLANK_GATE_SHIFT 5
#define DISPLAY_VTG_INIT_STATE_BLANK_GATE_MASK  0x1u

/*
 * Timing generator channel-enable word. Blanking clears the three bits of
 * mask 0x23 (bits 5, 1 and 0) in the driver's shadow of it and unblanking
 * sets them again; the timing load writes the structure's word with the
 * driver's own bit 5 kept. The names are ours: what each bit gates is
 * unknown.
 */
/* REG: DISPLAY.vtg_chan_en 0x2483 rw32 reset=unknown established */
/* FIELD: DISPLAY.vtg_chan_en.blank_gate_5 5:5 established */
/* FIELD: DISPLAY.vtg_chan_en.blank_gate_1 1:1 established */
/* FIELD: DISPLAY.vtg_chan_en.blank_gate_0 0:0 established */
#define DISPLAY_VTG_CHAN_EN_BLANK_GATE_5_SHIFT 5
#define DISPLAY_VTG_CHAN_EN_BLANK_GATE_5_MASK  0x1u
#define DISPLAY_VTG_CHAN_EN_BLANK_GATE_1_SHIFT 1
#define DISPLAY_VTG_CHAN_EN_BLANK_GATE_1_MASK  0x1u
#define DISPLAY_VTG_CHAN_EN_BLANK_GATE_0_SHIFT 0
#define DISPLAY_VTG_CHAN_EN_BLANK_GATE_0_MASK  0x1u

/*
 * Cursor image block A, 128 words. A 32 by 32 cursor at 4 bits a pixel is
 * 512 bytes, which is this block. Each pixel indexes the cursor colour
 * table; index 15 has no entry and inverts the pixel under the cursor. The
 * stored image is the bitmap with its two middle nibble columns swapped
 * and mirrored. The shipped driver names this block the glyph plane and
 * block B the alpha plane.
 */
/* REG: DISPLAY.cursor_image_a 0x2500 w32 count=128 reset=unknown established */

/*
 * Cursor position word: the cursor x minus the hotspot x in the high half
 * and y minus the hotspot y in the low half. The write goes out as an
 * immediate update, or as a retrace-synchronised one when bit 2 of the
 * cursor control word is set.
 */
/* REG: DISPLAY.cursor_pos 0x2580 w32 reset=unknown established */
/* FIELD: DISPLAY.cursor_pos.x 31:16 established */
/* FIELD: DISPLAY.cursor_pos.y 15:0 established */
#define DISPLAY_CURSOR_POS_X_SHIFT 16
#define DISPLAY_CURSOR_POS_X_MASK  0xffffu
#define DISPLAY_CURSOR_POS_Y_SHIFT 0
#define DISPLAY_CURSOR_POS_Y_MASK  0xffffu

/*
 * Cursor control word. Five named fields live in bits 4:0: the firmware
 * textport clears 4:2 and sets 1:0, so enable and delay enable are in 1:0
 * and the other three in 4:2 (established). Which field is which bit is
 * inferred from the order the fields are declared and a big-endian bit-
 * field layout. The kernel also toggles bit 5 around cursor requests; what
 * it does on the board is unknown. Start-up writes 0.
 */
/* REG: DISPLAY.cursor_ctl 0x2581 w32 reset=unknown established */
/* FIELD: DISPLAY.cursor_ctl.dual_head 4:4 inferred */
/* FIELD: DISPLAY.cursor_ctl.field_seq 3:3 inferred */
/* FIELD: DISPLAY.cursor_ctl.crosshair 2:2 inferred */
/* FIELD: DISPLAY.cursor_ctl.enable 1:1 inferred */
/* FIELD: DISPLAY.cursor_ctl.delay_enable 0:0 inferred */
/* FIELD: DISPLAY.cursor_ctl.toggle 5:5 unknown */
#define DISPLAY_CURSOR_CTL_DUAL_HEAD_SHIFT 4
#define DISPLAY_CURSOR_CTL_DUAL_HEAD_MASK  0x1u
#define DISPLAY_CURSOR_CTL_FIELD_SEQ_SHIFT 3
#define DISPLAY_CURSOR_CTL_FIELD_SEQ_MASK  0x1u
#define DISPLAY_CURSOR_CTL_CROSSHAIR_SHIFT 2
#define DISPLAY_CURSOR_CTL_CROSSHAIR_MASK  0x1u
#define DISPLAY_CURSOR_CTL_ENABLE_SHIFT 1
#define DISPLAY_CURSOR_CTL_ENABLE_MASK  0x1u
#define DISPLAY_CURSOR_CTL_DELAY_ENABLE_SHIFT 0
#define DISPLAY_CURSOR_CTL_DELAY_ENABLE_MASK  0x1u
#define DISPLAY_CURSOR_CTL_TOGGLE_SHIFT 5
#define DISPLAY_CURSOR_CTL_TOGGLE_MASK  0x1u

/*
 * Cursor colour table, 15 words for pixel values 0 to 14, in the colour-
 * map entry format. Software shifts an 8-bit value into the top eight bits
 * of each 10-bit field, leaving the low two bits zero.
 */
/* REG: DISPLAY.cursor_colors 0x2590 w32 count=15 reset=unknown established */
/* FIELD: DISPLAY.cursor_colors.r 29:20 established */
/* FIELD: DISPLAY.cursor_colors.g 19:10 established */
/* FIELD: DISPLAY.cursor_colors.b 9:0 established */
/* FIELD: DISPLAY.cursor_colors.top 31:30 unknown */
#define DISPLAY_CURSOR_COLORS_R_SHIFT 20
#define DISPLAY_CURSOR_COLORS_R_MASK  0x3ffu
#define DISPLAY_CURSOR_COLORS_G_SHIFT 10
#define DISPLAY_CURSOR_COLORS_G_MASK  0x3ffu
#define DISPLAY_CURSOR_COLORS_B_SHIFT 0
#define DISPLAY_CURSOR_COLORS_B_MASK  0x3ffu
#define DISPLAY_CURSOR_COLORS_TOP_SHIFT 30
#define DISPLAY_CURSOR_COLORS_TOP_MASK  0x3u

/*
 * Cursor image block B, 64 words: 2 bits a pixel, the alpha plane that
 * decides where the cursor shows. Alpha 3 is an opaque cursor pixel and 0
 * transparent (inferred from the one shipped arrow image). Alpha 1 and 2
 * have no known fixed meaning.
 */
/* REG: DISPLAY.cursor_image_b 0x25c0 w32 count=64 reset=unknown established */

/*
 * Data-path control of the display chip. The timing load writes the
 * structure's word here and sets bit 7 when bit 6 of that word is set. The
 * blanking routine reads it back. The role is inferred from the order of
 * the driver's stores; bit meanings beyond the two named are unknown.
 */
/* REG: DISPLAY.datapath_ctl 0x2600 rw32 reset=unknown inferred */
/* FIELD: DISPLAY.datapath_ctl.bit6 6:6 unknown */
/* FIELD: DISPLAY.datapath_ctl.bit7 7:7 unknown */
#define DISPLAY_DATAPATH_CTL_BIT6_SHIFT 6
#define DISPLAY_DATAPATH_CTL_BIT6_MASK  0x1u
#define DISPLAY_DATAPATH_CTL_BIT7_SHIFT 7
#define DISPLAY_DATAPATH_CTL_BIT7_MASK  0x1u

/*
 * Written once per timing load from a word of the timing structure that
 * sits next to the DAC and data-path words. What it controls is unknown.
 */
/* REG: DISPLAY.aux_ctl 0x2680 w32 reset=unknown established */

/*
 * DAC control. Blanking sets bit 0; the DAC-gain routine sets or clears
 * bit 1 with a read-modify-write; the timing load writes the structure's
 * DAC word. That bit 0 blanks is established by the routine; the polarity
 * of the gain bit is not known, so its name is inferred.
 */
/* REG: DISPLAY.dac_ctl 0x26c0 rw32 reset=unknown established */
/* FIELD: DISPLAY.dac_ctl.blank 0:0 established */
/* FIELD: DISPLAY.dac_ctl.gain 1:1 inferred */
#define DISPLAY_DAC_CTL_BLANK_SHIFT 0
#define DISPLAY_DAC_CTL_BLANK_MASK  0x1u
#define DISPLAY_DAC_CTL_GAIN_SHIFT 1
#define DISPLAY_DAC_CTL_GAIN_MASK  0x1u

/*
 * Twelve consecutive timing generator words, written in order from twelve
 * consecutive words of the timing structure. Bit meanings are unknown.
 */
/* REG: DISPLAY.vtg_misc 0x27c0 w32 count=12 reset=unknown established */

/*
 * Genlock control. The timing load writes the structure's word here after
 * enabling the genlock interrupt source, and the genlock handler continues
 * only when bit 6 is set, which reads as a genlock-enabled flag (inferred).
 * While the clock is being reprogrammed
 * the word is held at 0.
 */
/* REG: DISPLAY.genlock_ctl 0x27cc rw32 reset=unknown established */
/* FIELD: DISPLAY.genlock_ctl.enabled 6:6 inferred */
#define DISPLAY_GENLOCK_CTL_ENABLED_SHIFT 6
#define DISPLAY_GENLOCK_CTL_ENABLED_MASK  0x1u

/*
 * Genlock status, read only. The handler returns if bit 0 is clear. Bit 1
 * selects the branch that reprograms the clock part: set takes the "lost"
 * branch, clear the "got" one. The handler's own message calls bit 0 the
 * generator state; what bit 1 means beyond selecting the branch is unknown,
 * so the name valid is a guess.
 */
/* REG: DISPLAY.genlock_status 0x27cd r32 reset=unknown inferred */
/* FIELD: DISPLAY.genlock_status.valid 0:0 inferred */
/* FIELD: DISPLAY.genlock_status.lost 1:1 inferred */
#define DISPLAY_GENLOCK_STATUS_VALID_SHIFT 0
#define DISPLAY_GENLOCK_STATUS_VALID_MASK  0x1u
#define DISPLAY_GENLOCK_STATUS_LOST_SHIFT 1
#define DISPLAY_GENLOCK_STATUS_LOST_MASK  0x1u

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
/* REG: DISPLAY.mode_table 0x2900 w32 count=37 reset=unknown established */
/* FIELD: DISPLAY.mode_table.low_code 3:0 unknown */
/* FIELD: DISPLAY.mode_table.cmap_group 8:4 established */
/* FIELD: DISPLAY.mode_table.pixel_format 11:9 inferred */
/* FIELD: DISPLAY.mode_table.layout 23:12 unknown */
/* FIELD: DISPLAY.mode_table.bit24 24:24 unknown */
/* FIELD: DISPLAY.mode_table.top 31:25 unknown */
#define DISPLAY_MODE_TABLE_LOW_CODE_SHIFT 0
#define DISPLAY_MODE_TABLE_LOW_CODE_MASK  0xfu
#define DISPLAY_MODE_TABLE_CMAP_GROUP_SHIFT 4
#define DISPLAY_MODE_TABLE_CMAP_GROUP_MASK  0x1fu
/* ENUM: DISPLAY.mode_table.cmap_group 26 gamma inferred */
#define DISPLAY_MODE_TABLE_CMAP_GROUP_GAMMA 26
#define DISPLAY_MODE_TABLE_PIXEL_FORMAT_SHIFT 9
#define DISPLAY_MODE_TABLE_PIXEL_FORMAT_MASK  0x7u
/* ENUM: DISPLAY.mode_table.pixel_format 1 rgb10 inferred */
#define DISPLAY_MODE_TABLE_PIXEL_FORMAT_RGB10 1
/* ENUM: DISPLAY.mode_table.pixel_format 2 rgb8 inferred */
#define DISPLAY_MODE_TABLE_PIXEL_FORMAT_RGB8 2
/* ENUM: DISPLAY.mode_table.pixel_format 3 rgb5 inferred */
#define DISPLAY_MODE_TABLE_PIXEL_FORMAT_RGB5 3
/* ENUM: DISPLAY.mode_table.pixel_format 4 rgb4 inferred */
#define DISPLAY_MODE_TABLE_PIXEL_FORMAT_RGB4 4
/* ENUM: DISPLAY.mode_table.pixel_format 6 rgb10_alt inferred */
#define DISPLAY_MODE_TABLE_PIXEL_FORMAT_RGB10_ALT 6
#define DISPLAY_MODE_TABLE_LAYOUT_SHIFT 12
#define DISPLAY_MODE_TABLE_LAYOUT_MASK  0xfffu
#define DISPLAY_MODE_TABLE_BIT24_SHIFT 24
#define DISPLAY_MODE_TABLE_BIT24_MASK  0x1u
#define DISPLAY_MODE_TABLE_TOP_SHIFT 25
#define DISPLAY_MODE_TABLE_TOP_MASK  0x7fu

/*
 * Colour-map unit configuration. Start-up writes 0; the timing load stores
 * a flag bit of the timing load, the same flag it stores to the second
 * scan configuration register in PBJ_DECODE.h.  */
/* REG: DISPLAY.cmap_unit_ctl 0x2929 w32 reset=unknown inferred */

/*
 * Red, green and blue overrides of the colour-map unit, in that order.
 * Start-up writes 0 to each.
 */
/* REG: DISPLAY.cmap_override 0x292a w32 count=3 reset=unknown inferred */

/* ===================================================================
 * TEST VECTORS
 * =================================================================== */
/*
 * TESTVEC lines: known real values and their decode. Format is fixed; a
 * consumer may assert against them. Each value is one the RE notes
 * record as read from the shipped tables. address=@<REG> stands for that
 * register's offset.
 *
 * Mode words (DISPLAY.mode_table):
 * TESTVEC: 0x4b5f00 as DISPLAY.mode_table => low_code=0, cmap_group=16, pixel_format=7, layout=0x4b5
 * TESTVEC: 0x4b59a6 as DISPLAY.mode_table => low_code=6, cmap_group=26, pixel_format=4, layout=0x4b5
 * TESTVEC: 0x5213a6 as DISPLAY.mode_table => low_code=6, cmap_group=26, pixel_format=1, layout=0x521
 * TESTVEC: 0x521590 as DISPLAY.mode_table => low_code=0, cmap_group=25, pixel_format=2, layout=0x521
 * TESTVEC: 0x600da6 as DISPLAY.mode_table => low_code=6, cmap_group=26, pixel_format=6, layout=0x600
 * TESTVEC: 0x9659a7 as DISPLAY.mode_table => low_code=7, cmap_group=26, pixel_format=4, layout=0x965
 *
 * Layout-only examples. These are constructed from the field layout, not
 * read from a board or from shipped software. Do not assert a generator
 * against them.
 * EXAMPLE (unverified): 0x00640032 as DISPLAY.cursor_pos => x=100, y=50
 * EXAMPLE (unverified): 0x3ff80000 as DISPLAY.cmap => r=1023, g=512, b=0, top=0
 */

#endif /* DISPLAY_DECODE_H */
