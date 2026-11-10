/*
 * PBJ_DECODE.h - VPro (Odyssey) PB&J display back end (publish-safe subset)
 *
 * Purpose: the register contract an emulator needs for the display back-
 * end chip behind the display FIFO: the FIFO header word, the
 * identification word, the host-interface control, the two I2C controllers
 * and the scanout buffer registers. Meant to be consumed by public
 * projects, so it carries register offsets only inside REG lines, bit
 * positions and enum values. No binary symbols, no code addresses, no
 * vendor identifiers.
 *
 * Derivation: derived from odsy RE binary analysis of the VPro display
 * path (display FIFO writers, start-up, frame-buffer set-up and blanking),
 * cross-read against vendor driver behaviour and the published diagnostic
 * reference; see the odsy RE notes. Every fact is restated in our own
 * words. The odsy publish-safe check verifies this file against those
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
#ifndef PBJ_DECODE_H
#define PBJ_DECODE_H

#include <stdint.h>

/*
 * Where this block sits. PB&J (published as "pixel blaster and jammer") is
 * the display back-end chip of the VPro board: the part behind the display
 * FIFO. Everything the host does to it goes through the graphics ASIC's
 * register window: stores to the display FIFO port, reads from the read-
 * back window. How the ASIC and this chip are connected and how pixels
 * reach the chip for scanout: unknown; no shipped software starts a
 * transfer to or from it. The display registers (colour map, cursor, DAC,
 * timing, genlock, mode table) are in DISPLAY_DECODE.h.
 */

/* ===================================================================
 * 1. Display FIFO word
 * =================================================================== */
/*
 * A write is a header word followed by COUNT data words that go to
 * consecutive register addresses. The kernel normally sends the header and
 * one data word together as one 64-bit store, header in the high half, and
 * it pairs any two consecutive words into one doubleword wherever a header
 * falls, so a decoder must treat the stream as a run of 32-bit words and
 * not as aligned pairs. established.
 *
 * The FIFO holds 24 doublewords (the driver waits until the level is at or
 * below 24 minus the entries it needs). The level is a 7-bit field of a
 * graphics-ASIC register. established. How deep the hardware really is:
 * unknown.
 *
 * Type. Only 3 and 7 are ever sent. Type 7 is used for the display-mode
 * words, the cursor control word, X server colour-map loads and the cursor
 * position when cursor control bit 2 is set; type 3 for everything the
 * kernel loads at start-up or mode set and for the textport colour map.
 * established as uses. So type 3
 * is read as apply at once and type 7 as apply at the next vertical blank,
 * inferred from the pairing of uses. Bits 29:28 are set in both types and
 * are probably a per-chip target select, one bit each for the two ASICs of
 * a two-ASIC board (inferred from the name "all" in that driver). Bit 31
 * is never set. What the part does with a type nibble no software sends:
 * unknown.
 *
 * Read-back. Each register address has an eight-byte slot in the window;
 * the value is in the second 32-bit word of the slot (the I2C routines
 * read the first word; whether the board returns the value in both halves
 * is unknown). The window returns what the FIFO last wrote at that
 * address. A read does not wait for earlier FIFO writes (inferred); the
 * driver reads only after the FIFO has drained.
 */
/* FIELD: FIFO_HDR.count 13:0 established */
/* FIELD: FIFO_HDR.address 27:14 established */
/* FIELD: FIFO_HDR.type 31:28 established */
#define PBJ_FIFO_HDR_COUNT_SHIFT   0
#define PBJ_FIFO_HDR_COUNT_MASK    0x3fffu
#define PBJ_FIFO_HDR_ADDRESS_SHIFT 14
#define PBJ_FIFO_HDR_ADDRESS_MASK  0x3fffu
#define PBJ_FIFO_HDR_TYPE_SHIFT    28
#define PBJ_FIFO_HDR_TYPE_MASK     0xfu
/* ENUM: FIFO_HDR.type 3 now inferred */
/* ENUM: FIFO_HDR.type 7 synced inferred */
#define PBJ_FIFO_HDR_TYPE_NOW      3
#define PBJ_FIFO_HDR_TYPE_SYNCED   7
#define PBJ_FIFO_HDR(type, addr, count) \
    ((((uint32_t)(type) & PBJ_FIFO_HDR_TYPE_MASK) << PBJ_FIFO_HDR_TYPE_SHIFT) | \
     (((uint32_t)(addr) & PBJ_FIFO_HDR_ADDRESS_MASK) << PBJ_FIFO_HDR_ADDRESS_SHIFT) | \
     ((uint32_t)(count) & PBJ_FIFO_HDR_COUNT_MASK))
#define PBJ_FIFO_DEPTH_DWORDS      24 /* established */
#define PBJ_READ_SLOT_BYTES        8  /* established */
#define PBJ_ADDR_BITS              14 /* established */

/*
 * The count in a header is the number of 32-bit data words that follow.
 * The counts the software uses reach 1024 (clearing the line table).
 * Whether the field is really 14 bits wide is inferred from the header
 * layout; no count above 1024 is sent.
 */

/* ===================================================================
 * 2. Clock parts on the I2C ports
 * =================================================================== */
/*
 * Two I2C controllers, each a pair of registers: the option port and the
 * main port. A programmable video clock part sits on these ports and is
 * reprogrammed from timing-structure words, with eight register bytes
 * written in a fixed order; the genlock handler rewrites some of the same
 * registers to lock to an external reference. Two parts are used: for the
 * older board revision an eight-register clock synthesiser with dynamic
 * phase adjust that matches the published ICS1523 register map, and for
 * later revisions an eight-byte sequentially written clock generator of
 * the AMI FS family (exact part number unknown). Both identifications are
 * inferred from register-name order and write order against the published
 * datasheets. The monitor DDC channel, a compositor and the dual-channel
 * option are on the same ports. The register meanings of each part are in
 * those datasheets, not here.
 */

/*
 * Which part is used follows a board clock variant that the driver reads
 * from its board record: a variant of zero or less selects the part at
 * I2C address 0x26, a positive variant the part at 0x58. established.
 * Each is programmed with eight register bytes taken from the timing
 * structure. The part at 0x26 gets them in the order registers 5, 4, 2,
 * 3, 0, 1, 7, 6; the part at 0x58 gets them as registers 0 to 7 in order.
 * established, from the order of the eight bus writes in the timing load.
 * The register numbers of the part at 0x26, by the names the driver's
 * failure messages give them (established, the k-th write's message names
 * the k-th register of the order above, and two of the numbers are fixed
 * independently by the genlock code): input control 0, loop control 1,
 * feedback divider 0 at 2, feedback divider 1 at 3, DPA offset 4, DPA
 * control 5, output enable 6 and oscillator divider 7. Those names match the
 * published register map of the part; the message names do not label the
 * registers of the part at 0x58.
 */
#define PBJ_CLOCK_I2C_ADDR_A               0x26 /* established: variant <= 0 */
#define PBJ_CLOCK_I2C_ADDR_B               0x58 /* established: variant > 0 */
#define PBJ_CLOCK_A_REG_INPUT_CONTROL      0 /* established */
#define PBJ_CLOCK_A_REG_LOOP_CONTROL       1 /* established */
#define PBJ_CLOCK_A_REG_FEEDBACK_DIV0      2 /* established */
#define PBJ_CLOCK_A_REG_FEEDBACK_DIV1      3 /* established */
#define PBJ_CLOCK_A_REG_DPA_OFFSET         4 /* established */
#define PBJ_CLOCK_A_REG_DPA_CONTROL        5 /* established */
#define PBJ_CLOCK_A_REG_OUTPUT_ENABLE      6 /* established */
#define PBJ_CLOCK_A_REG_OSC_DIV            7 /* established */
#define PBJ_CLOCK_WRITE_COUNT              8 /* established */

/* ===================================================================
 * 3. Start-up order
 * =================================================================== */
/*
 * The start-up routine, in order (established): wait for the FIFO level to
 * fall to 10 or less; write the back-end interface configuration (dcb_ctl)
 * with 0 five times; write hif_ctl with its start value; wait for the FIFO
 * to drain; read back the two timing-generator shadows (vtg_init_state and
 * vtg_chan_en); set up both I2C ports and probe the option card (id bit
 * 10); probe the attached parts over I2C; configure the frame buffer for
 * 1280 by 1024 at 8 bits; then either write 0 to the two scan size
 * registers (quick form) or write 1280 and 1024 and load the default
 * timing. Blanking (mode 2, no dual-channel option): dac_ctl bit 0 set,
 * vtg_init_state bit 5 cleared, vtg_chan_en bits 5, 1 and 0 cleared;
 * unblanking sets the last three again. established. The reset: no chip-
 * specific reset register was found, and the board-level reset is the only
 * reset: unknown.
 */

/* ===================================================================
 * REGISTERS
 * =================================================================== */

/*
 * Host-interface control of the display chip. The timing load puts the
 * first clock-select field of the timing load in bits 14:12 and the second
 * in bits 17:15 of the word read back from this register, then writes it
 * twice: with bit 18 clear before the clock is programmed and with bit 18
 * set after a 100 ms wait. Start-up first writes 0x0006d3e0 (both selects
 * 5, bit 18 set, low bits 0x3e0); that is a driver-written start value,
 * not a reset value.
 */
/* REG: PBJ.hif_ctl 0x2700 rw32 reset=unknown established */
/* FIELD: PBJ.hif_ctl.clock_run 18:18 established */
/* FIELD: PBJ.hif_ctl.clock_sel_b 17:15 established */
/* FIELD: PBJ.hif_ctl.clock_sel_a 14:12 established */
/* FIELD: PBJ.hif_ctl.low_bits 11:0 unknown */
#define PBJ_HIF_CTL_CLOCK_RUN_SHIFT 18
#define PBJ_HIF_CTL_CLOCK_RUN_MASK  0x1u
#define PBJ_HIF_CTL_CLOCK_SEL_B_SHIFT 15
#define PBJ_HIF_CTL_CLOCK_SEL_B_MASK  0x7u
#define PBJ_HIF_CTL_CLOCK_SEL_A_SHIFT 12
#define PBJ_HIF_CTL_CLOCK_SEL_A_MASK  0x7u
#define PBJ_HIF_CTL_LOW_BITS_SHIFT 0
#define PBJ_HIF_CTL_LOW_BITS_MASK  0xfffu

/*
 * Identification word. Bits 2:0 are the chip version the board information
 * block reports. Bit 10 is tested at start-up: when it is clear, the
 * driver probes the option port on the second I2C controller for a dual-
 * channel display option, so a set bit 10 is read as "no option card"
 * (inferred).
 */
/* REG: PBJ.id 0x2701 r32 reset=unknown established */
/* FIELD: PBJ.id.version 2:0 established */
/* FIELD: PBJ.id.no_option 10:10 inferred */
#define PBJ_ID_VERSION_SHIFT 0
#define PBJ_ID_VERSION_MASK  0x7u
#define PBJ_ID_NO_OPTION_SHIFT 10
#define PBJ_ID_NO_OPTION_MASK  0x1u

/*
 * I2C controller control register, option port (first of the port's two
 * registers). The register-read routine reads it, clears bits 12, 8 and 10
 * of its shadow and writes it back as an immediate update. The driver
 * reads this register at the first word of the read-back slot, not the
 * second. Bit meanings are unknown.
 */
/* REG: PBJ.i2c_opt_ctl 0x2740 rw32 reset=unknown established */
/* FIELD: PBJ.i2c_opt_ctl.bit8 8:8 unknown */
/* FIELD: PBJ.i2c_opt_ctl.bit10 10:10 unknown */
/* FIELD: PBJ.i2c_opt_ctl.bit12 12:12 unknown */
#define PBJ_I2C_OPT_CTL_BIT8_SHIFT 8
#define PBJ_I2C_OPT_CTL_BIT8_MASK  0x1u
#define PBJ_I2C_OPT_CTL_BIT10_SHIFT 10
#define PBJ_I2C_OPT_CTL_BIT10_MASK  0x1u
#define PBJ_I2C_OPT_CTL_BIT12_SHIFT 12
#define PBJ_I2C_OPT_CTL_BIT12_MASK  0x1u

/*
 * I2C controller status/data register, option port. The register-read
 * routine polls it for bit 9, up to 133 times. Bit meanings are unknown.
 */
/* REG: PBJ.i2c_opt_data 0x2741 r32 reset=unknown established */
/* FIELD: PBJ.i2c_opt_data.bit9 9:9 unknown */
#define PBJ_I2C_OPT_DATA_BIT9_SHIFT 9
#define PBJ_I2C_OPT_DATA_BIT9_MASK  0x1u

/*
 * I2C controller control register, main port (first of the port's two
 * registers). The register-read routine reads it, clears bits 12, 8 and 10
 * of its shadow and writes it back as an immediate update. The driver
 * reads this register at the first word of the read-back slot, not the
 * second. Bit meanings are unknown.
 */
/* REG: PBJ.i2c_main_ctl 0x2780 rw32 reset=unknown established */
/* FIELD: PBJ.i2c_main_ctl.bit8 8:8 unknown */
/* FIELD: PBJ.i2c_main_ctl.bit10 10:10 unknown */
/* FIELD: PBJ.i2c_main_ctl.bit12 12:12 unknown */
#define PBJ_I2C_MAIN_CTL_BIT8_SHIFT 8
#define PBJ_I2C_MAIN_CTL_BIT8_MASK  0x1u
#define PBJ_I2C_MAIN_CTL_BIT10_SHIFT 10
#define PBJ_I2C_MAIN_CTL_BIT10_MASK  0x1u
#define PBJ_I2C_MAIN_CTL_BIT12_SHIFT 12
#define PBJ_I2C_MAIN_CTL_BIT12_MASK  0x1u

/*
 * I2C controller status/data register, main port. The register-read
 * routine polls it for bit 9, up to 133 times. Bit meanings are unknown.
 */
/* REG: PBJ.i2c_main_data 0x2781 r32 reset=unknown established */
/* FIELD: PBJ.i2c_main_data.bit9 9:9 unknown */
#define PBJ_I2C_MAIN_DATA_BIT9_SHIFT 9
#define PBJ_I2C_MAIN_DATA_BIT9_MASK  0x1u

/*
 * Scanout base of the second buffer region, written by the frame-buffer
 * set-up as a tile count shifted left 9, after rounding the region start
 * up to a multiple of four. A tile is 16 by 16 pixels. Reading as a
 * scanout base address is inferred.
 */
/* REG: PBJ.fb_base_b 0x2800 w32 reset=unknown established */

/*
 * Scanout base of the first buffer region, same encoding as the second.
 */
/* REG: PBJ.fb_base_a 0x2801 w32 reset=unknown established */

/*
 * Written 0 by the frame-buffer set-up, 0 or 1280 by start-up, and the
 * timing load's active-width value (1280 in the built-in timings, twice
 * that on one path) by the timing load. Active width in pixels is one
 * reading; a pan offset fits the same writes (inferred).
 */
/* REG: PBJ.scan_width 0x2802 w32 reset=unknown inferred */

/*
 * Companion of the width register: 0, 1024 in the full-size form, or the
 * timing load's active-height value. Active height in lines (inferred,
 * same caveat).
 */
/* REG: PBJ.scan_height 0x2803 w32 reset=unknown inferred */

/*
 * Written from the low two bits of a timing load value by the timing load.
 * Meaning unknown.
 */
/* REG: PBJ.scan_cfg_a 0x2804 w32 reset=unknown established */

/*
 * Listed among the addresses the kernel writes; no read of the source of
 * its value was completed. Meaning unknown.
 */
/* REG: PBJ.scan_cfg_b 0x2805 w32 reset=unknown unknown */

/*
 * Written from one flag bit of a timing load value by the timing load (the
 * same flag as the colour-map unit configuration). Meaning unknown.
 */
/* REG: PBJ.scan_cfg_c 0x2806 w32 reset=unknown established */

/*
 * Scanout pitch: the frame-buffer width in 16-pixel tiles, rounded up to
 * an even count. Reading as pitch is inferred from the arithmetic.
 */
/* REG: PBJ.fb_pitch 0x2807 w32 reset=unknown inferred */

/*
 * Scanout pixel size code. The codes the set-up writes are 2 for 8 bits a
 * pixel, 3 for 16 and 4 for 32 (established as values). The field width is
 * not known; three bits is the least that holds them, so the field range
 * is inferred.
 */
/* REG: PBJ.fb_depth 0x2809 w32 reset=unknown inferred */
/* FIELD: PBJ.fb_depth.code 2:0 inferred */
#define PBJ_FB_DEPTH_CODE_SHIFT 0
#define PBJ_FB_DEPTH_CODE_MASK  0x7u
/* ENUM: PBJ.fb_depth.code 2 bpp8 established */
#define PBJ_FB_DEPTH_CODE_BPP8 2
/* ENUM: PBJ.fb_depth.code 3 bpp16 established */
#define PBJ_FB_DEPTH_CODE_BPP16 3
/* ENUM: PBJ.fb_depth.code 4 bpp32 established */
#define PBJ_FB_DEPTH_CODE_BPP32 4

/*
 * Back-end interface configuration. The timing load stores a 3-bit timing
 * load value here; its role is unknown (the field name is a placeholder).
 * Start-up first writes 0 five times, which may
 * be a reset or a flush of this register's function (unknown). Nothing
 * reads it back.
 */
/* REG: PBJ.dcb_ctl 0x2b00 w32 reset=unknown inferred */
/* FIELD: PBJ.dcb_ctl.dcb_clock 2:0 inferred */
#define PBJ_DCB_CTL_DCB_CLOCK_SHIFT 0
#define PBJ_DCB_CTL_DCB_CLOCK_MASK  0x7u

/* ===================================================================
 * TEST VECTORS
 * =================================================================== */
/*
 * TESTVEC lines: known real values and their decode. Format is fixed; a
 * consumer may assert against them. Each value is one the RE notes
 * record from the shipped drivers' headers. address=@<REG> stands for
 * that register's offset (here the registers of DISPLAY_DECODE.h).
 *
 * Display FIFO headers (type 3 immediate, type 7 retrace-synchronised):
 * TESTVEC: 0x38000400 as FIFO_HDR => count=1024, address=@DISPLAY.line_table, type=3
 * TESTVEC: 0x39000080 as FIFO_HDR => count=128, address=@DISPLAY.frame_table, type=3
 * TESTVEC: 0x39400080 as FIFO_HDR => count=128, address=@DISPLAY.cursor_image_a, type=3
 * TESTVEC: 0x39600001 as FIFO_HDR => count=1, address=@DISPLAY.cursor_pos, type=3
 * TESTVEC: 0x79600001 as FIFO_HDR => count=1, address=@DISPLAY.cursor_pos, type=7
 * TESTVEC: 0x79604001 as FIFO_HDR => count=1, address=@DISPLAY.cursor_ctl, type=7
 * TESTVEC: 0x3964000f as FIFO_HDR => count=15, address=@DISPLAY.cursor_colors, type=3
 * TESTVEC: 0x39700040 as FIFO_HDR => count=64, address=@DISPLAY.cursor_image_b, type=3
 * TESTVEC: 0x39b00001 as FIFO_HDR => count=1, address=@DISPLAY.dac_ctl, type=3
 *
 * The start value the driver writes to the host-interface control:
 * TESTVEC: 0x0006d3e0 as PBJ.hif_ctl => clock_run=1, clock_sel_b=5, clock_sel_a=5, low_bits=0x3e0
 *
 * Layout-only example, constructed from the header layout and not read
 * from software. Do not assert a generator against it.
 * EXAMPLE (unverified): 0x70000001 as FIFO_HDR => count=1, address=0, type=7
 */

#endif /* PBJ_DECODE_H */
