<!-- generated from devices/compositor/registers.toml by defs-gen - do not edit, change the source -->

# VPro (Odyssey) compositor chip: register numbers

Unit `compositor`, macro prefix `CCX`.
Default source: odsy analysis of the compositor diagnostic table in the shipped tools.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `ATPG_FIRST_PIXEL` | 0x5c | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (read-write), default 0x3fffffff |
| `ATPG_OP_MODE` | 0x5d | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (read-write), default 0x1 |
| `ATPG_RAMP` | 0x5e | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (read-write), default 0x47 |
| `CRC_INPUT_0` | 0x63 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (read-write) |
| `CRC_INPUT_1` | 0x64 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (read-write) |
| `CRC_INPUT_2` | 0x65 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (read-write) |
| `CRC_INPUT_3` | 0x66 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (read-write) |
| `CRC_INPUT_CTRL` | 0x5f | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `CRC_INPUT_STATUS` | 0x60 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (read-only) |
| `CRC_OUTPUT` | 0x67 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (read-write) |
| `CRC_OUTPUT_CTRL` | 0x61 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `CRC_OUTPUT_STATUS` | 0x62 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (read-only) |
| `DAC_CONFIG_DAC_CONFIG` | 0x53 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `GAMMA_LOAD_CNT` | 0x32 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `GAMMA_PROGRAM` | 0x2d | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `GAMMA_READ_BLUE_LUT0` | 0x3b | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: read-only) |
| `GAMMA_READ_BLUE_LUT1` | 0x3c | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: read-only) |
| `GAMMA_READ_BLUE_LUT2` | 0x3d | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: read-only) |
| `GAMMA_READ_BLUE_LUT3` | 0x3e | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: read-only) |
| `GAMMA_READ_GREEN_LUT0` | 0x37 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: read-only) |
| `GAMMA_READ_GREEN_LUT1` | 0x38 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: read-only) |
| `GAMMA_READ_GREEN_LUT2` | 0x39 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: read-only) |
| `GAMMA_READ_GREEN_LUT3` | 0x3a | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: read-only) |
| `GAMMA_READ_RED_LUT0` | 0x33 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: read-only) |
| `GAMMA_READ_RED_LUT1` | 0x34 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: read-only) |
| `GAMMA_READ_RED_LUT2` | 0x35 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: read-only) |
| `GAMMA_READ_RED_LUT3` | 0x36 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: read-only) |
| `GAMMA_WRITE_ALL` | 0x2e | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `GAMMA_WRITE_BLUE_LUT` | 0x31 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `GAMMA_WRITE_GREEN_LUT` | 0x30 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `GAMMA_WRITE_RED_LUT` | 0x2f | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `I2C_CONTROL_LINK4` | 0x55 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `I2C_CONTROL_LINK5` | 0x56 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `I2C_PORT_ENUM` | 0x57 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (read-only) |
| `I2C_STATUS_LINK4` | 0x58 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: read-only) |
| `I2C_STATUS_LINK5` | 0x59 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: read-only) |
| `NIC_0` | 0x5a | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: read-only), default 0x4b484837 |
| `NIC_1` | 0x5b | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: read-only), default 0x3639 |
| `TILE_F0_X` | 0x23 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `TILE_F0_Y` | 0x27 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `TILE_F1_X` | 0x24 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `TILE_F1_Y` | 0x28 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `TILE_F2_X` | 0x25 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `TILE_F2_Y` | 0x29 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `TILE_F3_X` | 0x26 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `TILE_F3_Y` | 0x2a | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `TILE_TILE_SPARE0` | 0x2b | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `TILE_TILE_SPARE1` | 0x2c | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_ACT_VID_EDGE0` | 0x10 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_ACT_VID_EDGE1` | 0x11 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_CBLANK_EDGE0` | 0xc | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_CBLANK_EDGE1` | 0xd | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_CBLANK_EDGE2` | 0xe | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_CBLANK_EDGE3` | 0xf | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_CLK_CNT` | 0x1 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_CSYNC_EDGE0` | 0x5 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_CSYNC_EDGE1` | 0x6 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_CSYNC_EDGE2` | 0x7 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_CSYNC_EDGE3` | 0x8 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_CSYNC_EDGE4` | 0x9 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_CSYNC_EDGE5` | 0xa | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_CSYNC_EDGE6` | 0xb | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_FIELD_EDGE0` | 0x16 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_GLOBAL_EDGE0` | 0x1f | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_HMASK_EDGE0` | 0x1b | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_HMASK_EDGE1` | 0x1c | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_HSYNC_EDGE0` | 0x14 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_HSYNC_EDGE1` | 0x15 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_LINE_COUNT` | 0x2 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_LINE_LENGTH` | 0x4 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_LINE_TYPE` | 0x3 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_PLLEN_EDGE0` | 0x1d | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_PLLEN_EDGE1` | 0x1e | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_SPARE5_EDGE0` | 0x20 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_SPARE5_EDGE1` | 0x21 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_SPARE5_EDGE2` | 0x22 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_THSYNC_EDGE0` | 0x19 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_THSYNC_EDGE1` | 0x1a | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_VBLANK_EDGE0` | 0x12 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_VBLANK_EDGE1` | 0x13 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_VID_CNT` | 0x0 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_VSYNC_EDGE0` | 0x17 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
| `VTC_VSYNC_EDGE1` | 0x18 | established | odsy analysis of the compositor diagnostic table in the shipped tools | established (direction inferred: write-only) |
