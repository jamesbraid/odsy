/* generated from defs/pbj.toml by defs-gen - do not edit, change the source */
/* VPro (Odyssey) PB&J display back end (publish-safe subset) */
#ifndef PBJ_GEN_H
#define PBJ_GEN_H

#include <stdint.h>


/*
 * Host-interface control of the display chip. The timing load puts the
 * first clock-select field of the timing load in bits 14:12 and the second
 * in bits 17:15 of the word read back from this register, then writes it
 * twice: with bit 18 clear before the clock is programmed and with bit 18
 * set after a 100 ms wait. Start-up first writes 0x0006d3e0 (both selects
 * 5, bit 18 set, low bits 0x3e0); that is a driver-written start value,
 * not a reset value.
 */
/* hif_ctl: rw32, space pbj_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define PBJ_HIF_CTL_OFFSET                           0x2700u /* established */
#define PBJ_HIF_CTL_CLOCK_RUN_SHIFT                  18 /* established */
#define PBJ_HIF_CTL_CLOCK_RUN_MASK                   0x1u
#define PBJ_HIF_CTL_CLOCK_RUN_INPLACE                (PBJ_HIF_CTL_CLOCK_RUN_MASK << PBJ_HIF_CTL_CLOCK_RUN_SHIFT)
#define PBJ_HIF_CTL_CLOCK_SEL_B_SHIFT                15 /* established */
#define PBJ_HIF_CTL_CLOCK_SEL_B_MASK                 0x7u
#define PBJ_HIF_CTL_CLOCK_SEL_B_INPLACE              (PBJ_HIF_CTL_CLOCK_SEL_B_MASK << PBJ_HIF_CTL_CLOCK_SEL_B_SHIFT)
#define PBJ_HIF_CTL_CLOCK_SEL_A_SHIFT                12 /* established */
#define PBJ_HIF_CTL_CLOCK_SEL_A_MASK                 0x7u
#define PBJ_HIF_CTL_CLOCK_SEL_A_INPLACE              (PBJ_HIF_CTL_CLOCK_SEL_A_MASK << PBJ_HIF_CTL_CLOCK_SEL_A_SHIFT)
#define PBJ_HIF_CTL_LOW_BITS_SHIFT                   0 /* unknown */
#define PBJ_HIF_CTL_LOW_BITS_MASK                    0xfffu
#define PBJ_HIF_CTL_LOW_BITS_INPLACE                 (PBJ_HIF_CTL_LOW_BITS_MASK << PBJ_HIF_CTL_LOW_BITS_SHIFT)

/*
 * Identification word. Bits 2:0 are the chip version the board information
 * block reports. Bit 10 is tested at start-up: when it is clear, the
 * driver probes the option port on the second I2C controller for a dual-
 * channel display option, so a set bit 10 is read as "no option card"
 * (inferred).
 */
/* id: r32, space pbj_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define PBJ_ID_OFFSET                                0x2701u /* established */
#define PBJ_ID_NO_OPTION_SHIFT                       10 /* inferred */
#define PBJ_ID_NO_OPTION_MASK                        0x1u
#define PBJ_ID_NO_OPTION_INPLACE                     (PBJ_ID_NO_OPTION_MASK << PBJ_ID_NO_OPTION_SHIFT)
#define PBJ_ID_VERSION_SHIFT                         0 /* established */
#define PBJ_ID_VERSION_MASK                          0x7u
#define PBJ_ID_VERSION_INPLACE                       (PBJ_ID_VERSION_MASK << PBJ_ID_VERSION_SHIFT)

/*
 * I2C controller control register, option port (first of the port's two
 * registers). The register-read routine reads it, clears bits 12, 8 and 10
 * of its shadow and writes it back as an immediate update. The driver
 * reads this register at the first word of the read-back slot, not the
 * second. Bit meanings are unknown.
 */
/* i2c_opt_ctl: rw32, space pbj_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define PBJ_I2C_OPT_CTL_OFFSET                       0x2740u /* established */
#define PBJ_I2C_OPT_CTL_BIT12_SHIFT                  12 /* unknown */
#define PBJ_I2C_OPT_CTL_BIT12_MASK                   0x1u
#define PBJ_I2C_OPT_CTL_BIT12_INPLACE                (PBJ_I2C_OPT_CTL_BIT12_MASK << PBJ_I2C_OPT_CTL_BIT12_SHIFT)
#define PBJ_I2C_OPT_CTL_BIT10_SHIFT                  10 /* unknown */
#define PBJ_I2C_OPT_CTL_BIT10_MASK                   0x1u
#define PBJ_I2C_OPT_CTL_BIT10_INPLACE                (PBJ_I2C_OPT_CTL_BIT10_MASK << PBJ_I2C_OPT_CTL_BIT10_SHIFT)
#define PBJ_I2C_OPT_CTL_BIT8_SHIFT                   8 /* unknown */
#define PBJ_I2C_OPT_CTL_BIT8_MASK                    0x1u
#define PBJ_I2C_OPT_CTL_BIT8_INPLACE                 (PBJ_I2C_OPT_CTL_BIT8_MASK << PBJ_I2C_OPT_CTL_BIT8_SHIFT)

/*
 * I2C controller status/data register, option port. The register-read
 * routine polls it for bit 9, up to 133 times. Bit meanings are unknown.
 */
/* i2c_opt_data: r32, space pbj_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define PBJ_I2C_OPT_DATA_OFFSET                      0x2741u /* established */
#define PBJ_I2C_OPT_DATA_BIT9_SHIFT                  9 /* unknown */
#define PBJ_I2C_OPT_DATA_BIT9_MASK                   0x1u
#define PBJ_I2C_OPT_DATA_BIT9_INPLACE                (PBJ_I2C_OPT_DATA_BIT9_MASK << PBJ_I2C_OPT_DATA_BIT9_SHIFT)

/*
 * I2C controller control register, main port (first of the port's two
 * registers). The register-read routine reads it, clears bits 12, 8 and 10
 * of its shadow and writes it back as an immediate update. The driver
 * reads this register at the first word of the read-back slot, not the
 * second. Bit meanings are unknown.
 */
/* i2c_main_ctl: rw32, space pbj_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define PBJ_I2C_MAIN_CTL_OFFSET                      0x2780u /* established */
#define PBJ_I2C_MAIN_CTL_BIT12_SHIFT                 12 /* unknown */
#define PBJ_I2C_MAIN_CTL_BIT12_MASK                  0x1u
#define PBJ_I2C_MAIN_CTL_BIT12_INPLACE               (PBJ_I2C_MAIN_CTL_BIT12_MASK << PBJ_I2C_MAIN_CTL_BIT12_SHIFT)
#define PBJ_I2C_MAIN_CTL_BIT10_SHIFT                 10 /* unknown */
#define PBJ_I2C_MAIN_CTL_BIT10_MASK                  0x1u
#define PBJ_I2C_MAIN_CTL_BIT10_INPLACE               (PBJ_I2C_MAIN_CTL_BIT10_MASK << PBJ_I2C_MAIN_CTL_BIT10_SHIFT)
#define PBJ_I2C_MAIN_CTL_BIT8_SHIFT                  8 /* unknown */
#define PBJ_I2C_MAIN_CTL_BIT8_MASK                   0x1u
#define PBJ_I2C_MAIN_CTL_BIT8_INPLACE                (PBJ_I2C_MAIN_CTL_BIT8_MASK << PBJ_I2C_MAIN_CTL_BIT8_SHIFT)

/*
 * I2C controller status/data register, main port. The register-read
 * routine polls it for bit 9, up to 133 times. Bit meanings are unknown.
 */
/* i2c_main_data: r32, space pbj_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define PBJ_I2C_MAIN_DATA_OFFSET                     0x2781u /* established */
#define PBJ_I2C_MAIN_DATA_BIT9_SHIFT                 9 /* unknown */
#define PBJ_I2C_MAIN_DATA_BIT9_MASK                  0x1u
#define PBJ_I2C_MAIN_DATA_BIT9_INPLACE               (PBJ_I2C_MAIN_DATA_BIT9_MASK << PBJ_I2C_MAIN_DATA_BIT9_SHIFT)

/*
 * Scanout base of the second buffer region, written by the frame-buffer
 * set-up as a tile count shifted left 9, after rounding the region start
 * up to a multiple of four. A tile is 16 by 16 pixels. Reading as a
 * scanout base address is inferred.
 */
/* fb_base_b: w32, space pbj_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define PBJ_FB_BASE_B_OFFSET                         0x2800u /* established */

/*
 * Scanout base of the first buffer region, same encoding as the second.
 */
/* fb_base_a: w32, space pbj_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define PBJ_FB_BASE_A_OFFSET                         0x2801u /* established */

/*
 * Written 0 by the frame-buffer set-up, 0 or 1280 by start-up, and the
 * timing load's active-width value (1280 in the built-in timings, twice
 * that on one path) by the timing load. Active width in pixels is one
 * reading; a pan offset fits the same writes (inferred).
 */
/* scan_width: w32, space pbj_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define PBJ_SCAN_WIDTH_OFFSET                        0x2802u /* inferred */

/*
 * Companion of the width register: 0, 1024 in the full-size form, or the
 * timing load's active-height value. Active height in lines (inferred,
 * same caveat).
 */
/* scan_height: w32, space pbj_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define PBJ_SCAN_HEIGHT_OFFSET                       0x2803u /* inferred */

/*
 * Written from the low two bits of a timing load value by the timing load.
 * Meaning unknown.
 */
/* scan_cfg_a: w32, space pbj_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define PBJ_SCAN_CFG_A_OFFSET                        0x2804u /* established */

/*
 * Listed among the addresses the kernel writes; no read of the source of
 * its value was completed. Meaning unknown.
 */
/* scan_cfg_b: w32, space pbj_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define PBJ_SCAN_CFG_B_OFFSET                        0x2805u /* unknown */

/*
 * Written from one flag bit of a timing load value by the timing load (the
 * same flag as the colour-map unit configuration). Meaning unknown.
 */
/* scan_cfg_c: w32, space pbj_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define PBJ_SCAN_CFG_C_OFFSET                        0x2806u /* established */

/*
 * Scanout pitch: the frame-buffer width in 16-pixel tiles, rounded up to
 * an even count. Reading as pitch is inferred from the arithmetic.
 */
/* fb_pitch: w32, space pbj_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define PBJ_FB_PITCH_OFFSET                          0x2807u /* inferred */

/*
 * Scanout pixel size code. The codes the set-up writes are 2 for 8 bits a
 * pixel, 3 for 16 and 4 for 32 (established as values). The field width is
 * not known; three bits is the least that holds them, so the field range
 * is inferred.
 */
/* fb_depth: w32, space pbj_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define PBJ_FB_DEPTH_OFFSET                          0x2809u /* inferred */
#define PBJ_FB_DEPTH_CODE_SHIFT                      0 /* inferred */
#define PBJ_FB_DEPTH_CODE_MASK                       0x7u
#define PBJ_FB_DEPTH_CODE_INPLACE                    (PBJ_FB_DEPTH_CODE_MASK << PBJ_FB_DEPTH_CODE_SHIFT)
#define PBJ_FB_DEPTH_CODE_BPP8                       2 /* established */
#define PBJ_FB_DEPTH_CODE_BPP16                      3 /* established */
#define PBJ_FB_DEPTH_CODE_BPP32                      4 /* established */

/*
 * Back-end interface configuration. The timing load stores a 3-bit timing
 * load value here; its role is unknown (the field name is a placeholder).
 * Start-up first writes 0 five times, which may
 * be a reset or a flush of this register's function (unknown). Nothing
 * reads it back.
 */
/* dcb_ctl: w32, space pbj_regs, reset unknown; odsy binary analysis of the shipped display driver */
#define PBJ_DCB_CTL_OFFSET                           0x2b00u /* inferred */
#define PBJ_DCB_CTL_DCB_CLOCK_SHIFT                  0 /* inferred */
#define PBJ_DCB_CTL_DCB_CLOCK_MASK                   0x7u
#define PBJ_DCB_CTL_DCB_CLOCK_INPLACE                (PBJ_DCB_CTL_DCB_CLOCK_MASK << PBJ_DCB_CTL_DCB_CLOCK_SHIFT)

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
/* word FIFO_HDR: 32 bits; odsy binary analysis of the shipped display driver */
#define PBJ_FIFO_HDR_WIDTH                           32 /* established */
#define PBJ_FIFO_HDR_TYPE_SHIFT                      28 /* established */
#define PBJ_FIFO_HDR_TYPE_MASK                       0xfu
#define PBJ_FIFO_HDR_TYPE_INPLACE                    (PBJ_FIFO_HDR_TYPE_MASK << PBJ_FIFO_HDR_TYPE_SHIFT)
#define PBJ_FIFO_HDR_TYPE_NOW                        3 /* inferred */
#define PBJ_FIFO_HDR_TYPE_SYNCED                     7 /* inferred */
#define PBJ_FIFO_HDR_ADDRESS_SHIFT                   14 /* established */
#define PBJ_FIFO_HDR_ADDRESS_MASK                    0x3fffu
#define PBJ_FIFO_HDR_ADDRESS_INPLACE                 (PBJ_FIFO_HDR_ADDRESS_MASK << PBJ_FIFO_HDR_ADDRESS_SHIFT)
#define PBJ_FIFO_HDR_COUNT_SHIFT                     0 /* established */
#define PBJ_FIFO_HDR_COUNT_MASK                      0x3fffu
#define PBJ_FIFO_HDR_COUNT_INPLACE                   (PBJ_FIFO_HDR_COUNT_MASK << PBJ_FIFO_HDR_COUNT_SHIFT)

#define PBJ_ADDR_BITS                                0xeu /* established */
#define PBJ_CLOCK_A_REG_DPA_CONTROL                  0x5u /* established */
#define PBJ_CLOCK_A_REG_DPA_OFFSET                   0x4u /* established */
#define PBJ_CLOCK_A_REG_FEEDBACK_DIV0                0x2u /* established */
#define PBJ_CLOCK_A_REG_FEEDBACK_DIV1                0x3u /* established */
#define PBJ_CLOCK_A_REG_INPUT_CONTROL                0x0u /* established */
#define PBJ_CLOCK_A_REG_LOOP_CONTROL                 0x1u /* established */
#define PBJ_CLOCK_A_REG_OSC_DIV                      0x7u /* established */
#define PBJ_CLOCK_A_REG_OUTPUT_ENABLE                0x6u /* established */
#define PBJ_CLOCK_I2C_ADDR_A                         0x26u /* established */
#define PBJ_CLOCK_I2C_ADDR_B                         0x58u /* established */
#define PBJ_CLOCK_WRITE_COUNT                        0x8u /* established */
#define PBJ_FIFO_DEPTH_DWORDS                        0x18u /* inferred */
#define PBJ_READ_SLOT_BYTES                          0x8u /* established */

/* hand-written helper macros */
#include "../../defs/pbj_helpers.h"

#endif /* PBJ_GEN_H */
