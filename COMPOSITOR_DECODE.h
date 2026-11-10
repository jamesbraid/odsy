/*
 * COMPOSITOR_DECODE.h - VPro (Odyssey) compositor chip: register numbers
 *                       (publish-safe subset)
 *
 * Purpose: the register map of the first compositor chip of a VPro
 * compositor board, the numbers a driver or emulator uses to address each
 * register over the chip's two-wire bus. Meant to be consumed by public
 * projects, so it carries register numbers, access directions and default
 * values only. No binary symbols, no addresses, no vendor identifiers.
 *
 * Scope: the first chip's table only; the diagnostic carries two further chips' tables, which are not in this file. The register numbers are positions in
 * the chip's own register space, reached through a chip address byte, not
 * offsets in the board window of ODSY_DECODE.h or in the display space of
 * PBJ_DECODE.h. The bit layout of any
 * register, and what a register does are not in this file: the source
 * table gives a name, a number, an access class and a default value, and
 * nothing more. Seven registers whose access class says "not implemented"
 * (the phase-detector and vertical-reset group, numbers 0x40 to 0x44 and
 * 0x50, 0x51) are left out.
 *
 * Derivation: derived from odsy RE analysis of the compositor diagnostic
 * program's register table and its register self-test; see the odsy
 * repository's compositor register notes. Every fact is restated in our
 * own words. The odsy publish-safe check verifies this file's form against
 * the publish-safe rules.
 *
 * Grades, on every number:
 *   established - read from the diagnostic's table in full. This is what
 *                 the software lists, not a measurement of the silicon.
 *   inferred    - a reasoned reading. Used for the direction of access of
 *                 a register the self-test never touches: the table's
 *                 access class says load-or-control or read-back, and the
 *                 direction is read from the register's name.
 * Register width is not stated by the table; the defaults that are
 * non-zero fit in 32 bits and no width is claimed here.
 *
 * Each line gives the register number, then in the trailing comment the
 * grade of the number, the access direction (with its grade where it is
 * inferred) and the default value when it is not zero. A register the
 * self-test writes with random data and reads back is read-write; one it
 * reads and compares with the default is read-only.
 */
#ifndef COMPOSITOR_DECODE_H
#define COMPOSITOR_DECODE_H

#include <stdint.h>


/* video timing generator group */
#define CCX_VTC_VID_CNT                0x0   /* established (direction inferred: write-only) */
#define CCX_VTC_CLK_CNT                0x1   /* established (direction inferred: write-only) */
#define CCX_VTC_LINE_COUNT             0x2   /* established (direction inferred: write-only) */
#define CCX_VTC_LINE_TYPE              0x3   /* established (direction inferred: write-only) */
#define CCX_VTC_LINE_LENGTH            0x4   /* established (direction inferred: write-only) */
#define CCX_VTC_CSYNC_EDGE0            0x5   /* established (direction inferred: write-only) */
#define CCX_VTC_CSYNC_EDGE1            0x6   /* established (direction inferred: write-only) */
#define CCX_VTC_CSYNC_EDGE2            0x7   /* established (direction inferred: write-only) */
#define CCX_VTC_CSYNC_EDGE3            0x8   /* established (direction inferred: write-only) */
#define CCX_VTC_CSYNC_EDGE4            0x9   /* established (direction inferred: write-only) */
#define CCX_VTC_CSYNC_EDGE5            0xa   /* established (direction inferred: write-only) */
#define CCX_VTC_CSYNC_EDGE6            0xb   /* established (direction inferred: write-only) */
#define CCX_VTC_CBLANK_EDGE0           0xc   /* established (direction inferred: write-only) */
#define CCX_VTC_CBLANK_EDGE1           0xd   /* established (direction inferred: write-only) */
#define CCX_VTC_CBLANK_EDGE2           0xe   /* established (direction inferred: write-only) */
#define CCX_VTC_CBLANK_EDGE3           0xf   /* established (direction inferred: write-only) */
#define CCX_VTC_ACT_VID_EDGE0          0x10  /* established (direction inferred: write-only) */
#define CCX_VTC_ACT_VID_EDGE1          0x11  /* established (direction inferred: write-only) */
#define CCX_VTC_VBLANK_EDGE0           0x12  /* established (direction inferred: write-only) */
#define CCX_VTC_VBLANK_EDGE1           0x13  /* established (direction inferred: write-only) */
#define CCX_VTC_HSYNC_EDGE0            0x14  /* established (direction inferred: write-only) */
#define CCX_VTC_HSYNC_EDGE1            0x15  /* established (direction inferred: write-only) */
#define CCX_VTC_FIELD_EDGE0            0x16  /* established (direction inferred: write-only) */
#define CCX_VTC_VSYNC_EDGE0            0x17  /* established (direction inferred: write-only) */
#define CCX_VTC_VSYNC_EDGE1            0x18  /* established (direction inferred: write-only) */
#define CCX_VTC_THSYNC_EDGE0           0x19  /* established (direction inferred: write-only) */
#define CCX_VTC_THSYNC_EDGE1           0x1a  /* established (direction inferred: write-only) */
#define CCX_VTC_HMASK_EDGE0            0x1b  /* established (direction inferred: write-only) */
#define CCX_VTC_HMASK_EDGE1            0x1c  /* established (direction inferred: write-only) */
#define CCX_VTC_PLLEN_EDGE0            0x1d  /* established (direction inferred: write-only) */
#define CCX_VTC_PLLEN_EDGE1            0x1e  /* established (direction inferred: write-only) */
#define CCX_VTC_GLOBAL_EDGE0           0x1f  /* established (direction inferred: write-only) */
#define CCX_VTC_SPARE5_EDGE0           0x20  /* established (direction inferred: write-only) */
#define CCX_VTC_SPARE5_EDGE1           0x21  /* established (direction inferred: write-only) */
#define CCX_VTC_SPARE5_EDGE2           0x22  /* established (direction inferred: write-only) */

/* tile positions group */
#define CCX_TILE_F0_X                  0x23  /* established (direction inferred: write-only) */
#define CCX_TILE_F1_X                  0x24  /* established (direction inferred: write-only) */
#define CCX_TILE_F2_X                  0x25  /* established (direction inferred: write-only) */
#define CCX_TILE_F3_X                  0x26  /* established (direction inferred: write-only) */
#define CCX_TILE_F0_Y                  0x27  /* established (direction inferred: write-only) */
#define CCX_TILE_F1_Y                  0x28  /* established (direction inferred: write-only) */
#define CCX_TILE_F2_Y                  0x29  /* established (direction inferred: write-only) */
#define CCX_TILE_F3_Y                  0x2a  /* established (direction inferred: write-only) */
#define CCX_TILE_TILE_SPARE0           0x2b  /* established (direction inferred: write-only) */
#define CCX_TILE_TILE_SPARE1           0x2c  /* established (direction inferred: write-only) */

/* gamma table group */
#define CCX_GAMMA_PROGRAM              0x2d  /* established (direction inferred: write-only) */
#define CCX_GAMMA_WRITE_ALL            0x2e  /* established (direction inferred: write-only) */
#define CCX_GAMMA_WRITE_RED_LUT        0x2f  /* established (direction inferred: write-only) */
#define CCX_GAMMA_WRITE_GREEN_LUT      0x30  /* established (direction inferred: write-only) */
#define CCX_GAMMA_WRITE_BLUE_LUT       0x31  /* established (direction inferred: write-only) */
#define CCX_GAMMA_LOAD_CNT             0x32  /* established (direction inferred: write-only) */
#define CCX_GAMMA_READ_RED_LUT0        0x33  /* established (direction inferred: read-only) */
#define CCX_GAMMA_READ_RED_LUT1        0x34  /* established (direction inferred: read-only) */
#define CCX_GAMMA_READ_RED_LUT2        0x35  /* established (direction inferred: read-only) */
#define CCX_GAMMA_READ_RED_LUT3        0x36  /* established (direction inferred: read-only) */
#define CCX_GAMMA_READ_GREEN_LUT0      0x37  /* established (direction inferred: read-only) */
#define CCX_GAMMA_READ_GREEN_LUT1      0x38  /* established (direction inferred: read-only) */
#define CCX_GAMMA_READ_GREEN_LUT2      0x39  /* established (direction inferred: read-only) */
#define CCX_GAMMA_READ_GREEN_LUT3      0x3a  /* established (direction inferred: read-only) */
#define CCX_GAMMA_READ_BLUE_LUT0       0x3b  /* established (direction inferred: read-only) */
#define CCX_GAMMA_READ_BLUE_LUT1       0x3c  /* established (direction inferred: read-only) */
#define CCX_GAMMA_READ_BLUE_LUT2       0x3d  /* established (direction inferred: read-only) */
#define CCX_GAMMA_READ_BLUE_LUT3       0x3e  /* established (direction inferred: read-only) */

/* DAC configuration group */
#define CCX_DAC_CONFIG_DAC_CONFIG      0x53  /* established (direction inferred: write-only) */

/* two-wire controllers group */
#define CCX_I2C_CONTROL_LINK4          0x55  /* established (direction inferred: write-only) */
#define CCX_I2C_CONTROL_LINK5          0x56  /* established (direction inferred: write-only) */
#define CCX_I2C_PORT_ENUM              0x57  /* established (read-only) */
#define CCX_I2C_STATUS_LINK4           0x58  /* established (direction inferred: read-only) */
#define CCX_I2C_STATUS_LINK5           0x59  /* established (direction inferred: read-only) */

/* chip identification words group */
#define CCX_NIC_0                      0x5a  /* established (direction inferred: read-only), default 0x4b484837 */
#define CCX_NIC_1                      0x5b  /* established (direction inferred: read-only), default 0x3639 */

/* test pattern generator group */
#define CCX_ATPG_FIRST_PIXEL           0x5c  /* established (read-write), default 0x3fffffff */
#define CCX_ATPG_OP_MODE               0x5d  /* established (read-write), default 0x1 */
#define CCX_ATPG_RAMP                  0x5e  /* established (read-write), default 0x47 */

/* checksum group */
#define CCX_CRC_INPUT_CTRL             0x5f  /* established (direction inferred: write-only) */
#define CCX_CRC_INPUT_STATUS           0x60  /* established (read-only) */
#define CCX_CRC_OUTPUT_CTRL            0x61  /* established (direction inferred: write-only) */
#define CCX_CRC_OUTPUT_STATUS          0x62  /* established (read-only) */
#define CCX_CRC_INPUT_0                0x63  /* established (read-write) */
#define CCX_CRC_INPUT_1                0x64  /* established (read-write) */
#define CCX_CRC_INPUT_2                0x65  /* established (read-write) */
#define CCX_CRC_INPUT_3                0x66  /* established (read-write) */
#define CCX_CRC_OUTPUT                 0x67  /* established (read-write) */

#endif /* COMPOSITOR_DECODE_H */
