// generated from odsy e286fb271361 COMPOSITOR_DECODE.h - do not edit, regenerate in odsy
//!
//! Register numbers of the first compositor chip of a VPro compositor board,
//! with access direction and default value.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// established (direction inferred: write-only).
pub const VTC_VID_CNT: u32 = 0;
/// established (direction inferred: write-only).
pub const VTC_CLK_CNT: u32 = 1;
/// established (direction inferred: write-only).
pub const VTC_LINE_COUNT: u32 = 2;
/// established (direction inferred: write-only).
pub const VTC_LINE_TYPE: u32 = 3;
/// established (direction inferred: write-only).
pub const VTC_LINE_LENGTH: u32 = 4;
/// established (direction inferred: write-only).
pub const VTC_CSYNC_EDGE0: u32 = 5;
/// established (direction inferred: write-only).
pub const VTC_CSYNC_EDGE1: u32 = 6;
/// established (direction inferred: write-only).
pub const VTC_CSYNC_EDGE2: u32 = 7;
/// established (direction inferred: write-only).
pub const VTC_CSYNC_EDGE3: u32 = 8;
/// established (direction inferred: write-only).
pub const VTC_CSYNC_EDGE4: u32 = 9;
/// established (direction inferred: write-only).
pub const VTC_CSYNC_EDGE5: u32 = 10;
/// established (direction inferred: write-only).
pub const VTC_CSYNC_EDGE6: u32 = 11;
/// established (direction inferred: write-only).
pub const VTC_CBLANK_EDGE0: u32 = 12;
/// established (direction inferred: write-only).
pub const VTC_CBLANK_EDGE1: u32 = 13;
/// established (direction inferred: write-only).
pub const VTC_CBLANK_EDGE2: u32 = 14;
/// established (direction inferred: write-only).
pub const VTC_CBLANK_EDGE3: u32 = 15;
/// established (direction inferred: write-only).
pub const VTC_ACT_VID_EDGE0: u32 = 16;
/// established (direction inferred: write-only).
pub const VTC_ACT_VID_EDGE1: u32 = 17;
/// established (direction inferred: write-only).
pub const VTC_VBLANK_EDGE0: u32 = 18;
/// established (direction inferred: write-only).
pub const VTC_VBLANK_EDGE1: u32 = 19;
/// established (direction inferred: write-only).
pub const VTC_HSYNC_EDGE0: u32 = 20;
/// established (direction inferred: write-only).
pub const VTC_HSYNC_EDGE1: u32 = 21;
/// established (direction inferred: write-only).
pub const VTC_FIELD_EDGE0: u32 = 22;
/// established (direction inferred: write-only).
pub const VTC_VSYNC_EDGE0: u32 = 23;
/// established (direction inferred: write-only).
pub const VTC_VSYNC_EDGE1: u32 = 24;
/// established (direction inferred: write-only).
pub const VTC_THSYNC_EDGE0: u32 = 25;
/// established (direction inferred: write-only).
pub const VTC_THSYNC_EDGE1: u32 = 26;
/// established (direction inferred: write-only).
pub const VTC_HMASK_EDGE0: u32 = 27;
/// established (direction inferred: write-only).
pub const VTC_HMASK_EDGE1: u32 = 28;
/// established (direction inferred: write-only).
pub const VTC_PLLEN_EDGE0: u32 = 29;
/// established (direction inferred: write-only).
pub const VTC_PLLEN_EDGE1: u32 = 30;
/// established (direction inferred: write-only).
pub const VTC_GLOBAL_EDGE0: u32 = 31;
/// established (direction inferred: write-only).
pub const VTC_SPARE5_EDGE0: u32 = 32;
/// established (direction inferred: write-only).
pub const VTC_SPARE5_EDGE1: u32 = 33;
/// established (direction inferred: write-only).
pub const VTC_SPARE5_EDGE2: u32 = 34;
/// established (direction inferred: write-only).
pub const TILE_F0_X: u32 = 35;
/// established (direction inferred: write-only).
pub const TILE_F1_X: u32 = 36;
/// established (direction inferred: write-only).
pub const TILE_F2_X: u32 = 37;
/// established (direction inferred: write-only).
pub const TILE_F3_X: u32 = 38;
/// established (direction inferred: write-only).
pub const TILE_F0_Y: u32 = 39;
/// established (direction inferred: write-only).
pub const TILE_F1_Y: u32 = 40;
/// established (direction inferred: write-only).
pub const TILE_F2_Y: u32 = 41;
/// established (direction inferred: write-only).
pub const TILE_F3_Y: u32 = 42;
/// established (direction inferred: write-only).
pub const TILE_TILE_SPARE0: u32 = 43;
/// established (direction inferred: write-only).
pub const TILE_TILE_SPARE1: u32 = 44;
/// established (direction inferred: write-only).
pub const GAMMA_PROGRAM: u32 = 45;
/// established (direction inferred: write-only).
pub const GAMMA_WRITE_ALL: u32 = 46;
/// established (direction inferred: write-only).
pub const GAMMA_WRITE_RED_LUT: u32 = 47;
/// established (direction inferred: write-only).
pub const GAMMA_WRITE_GREEN_LUT: u32 = 48;
/// established (direction inferred: write-only).
pub const GAMMA_WRITE_BLUE_LUT: u32 = 49;
/// established (direction inferred: write-only).
pub const GAMMA_LOAD_CNT: u32 = 50;
/// established (direction inferred: read-only).
pub const GAMMA_READ_RED_LUT0: u32 = 51;
/// established (direction inferred: read-only).
pub const GAMMA_READ_RED_LUT1: u32 = 52;
/// established (direction inferred: read-only).
pub const GAMMA_READ_RED_LUT2: u32 = 53;
/// established (direction inferred: read-only).
pub const GAMMA_READ_RED_LUT3: u32 = 54;
/// established (direction inferred: read-only).
pub const GAMMA_READ_GREEN_LUT0: u32 = 55;
/// established (direction inferred: read-only).
pub const GAMMA_READ_GREEN_LUT1: u32 = 56;
/// established (direction inferred: read-only).
pub const GAMMA_READ_GREEN_LUT2: u32 = 57;
/// established (direction inferred: read-only).
pub const GAMMA_READ_GREEN_LUT3: u32 = 58;
/// established (direction inferred: read-only).
pub const GAMMA_READ_BLUE_LUT0: u32 = 59;
/// established (direction inferred: read-only).
pub const GAMMA_READ_BLUE_LUT1: u32 = 60;
/// established (direction inferred: read-only).
pub const GAMMA_READ_BLUE_LUT2: u32 = 61;
/// established (direction inferred: read-only).
pub const GAMMA_READ_BLUE_LUT3: u32 = 62;
/// established (direction inferred: write-only).
pub const DAC_CONFIG_DAC_CONFIG: u32 = 83;
/// established (direction inferred: write-only).
pub const I2C_CONTROL_LINK4: u32 = 85;
/// established (direction inferred: write-only).
pub const I2C_CONTROL_LINK5: u32 = 86;
/// established (read-only).
pub const I2C_PORT_ENUM: u32 = 87;
/// established (direction inferred: read-only).
pub const I2C_STATUS_LINK4: u32 = 88;
/// established (direction inferred: read-only).
pub const I2C_STATUS_LINK5: u32 = 89;
/// established (direction inferred: read-only), default 0x4b484837.
pub const NIC_0: u32 = 90;
/// established (direction inferred: read-only), default 0x3639.
pub const NIC_1: u32 = 91;
/// established (read-write), default 0x3fffffff.
pub const ATPG_FIRST_PIXEL: u32 = 92;
/// established (read-write), default 0x1.
pub const ATPG_OP_MODE: u32 = 93;
/// established (read-write), default 0x47.
pub const ATPG_RAMP: u32 = 94;
/// established (direction inferred: write-only).
pub const CRC_INPUT_CTRL: u32 = 95;
/// established (read-only).
pub const CRC_INPUT_STATUS: u32 = 96;
/// established (direction inferred: write-only).
pub const CRC_OUTPUT_CTRL: u32 = 97;
/// established (read-only).
pub const CRC_OUTPUT_STATUS: u32 = 98;
/// established (read-write).
pub const CRC_INPUT_0: u32 = 99;
/// established (read-write).
pub const CRC_INPUT_1: u32 = 100;
/// established (read-write).
pub const CRC_INPUT_2: u32 = 101;
/// established (read-write).
pub const CRC_INPUT_3: u32 = 102;
/// established (read-write).
pub const CRC_OUTPUT: u32 = 103;
