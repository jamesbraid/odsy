# Register tables of the compositor test program

The compositor diagnostic `usr/diags/compositor/bin/sting` carries one table per compositor chip, giving each register's name, a permission code, a default value and a shadow value (`docs/vpro-tool-functions.md`, "register tables and typed register access"). The registers are reached by number through a chip address byte (the read byte is the write byte plus 1) over the two-wire bus or the driver's compositor request. Release IRIX 6.5.30m; every row is read from the file's `CCX_regs`, `CTX_regs` and `CHIC_regs` objects by a script that walks the 16-byte records (name pointer at +0, permission byte at +4, default at +8, shadow at +0xc) and skips records named `void`. The permission codes 1 and 5 are **established** by `TEST_CHIC`, `TEST_CCXregs` and `TEST_CTXregs`: a register with code 5 is written with random data and read back and compared with the shadow, one with code 1 is read and compared with its default, and the tests touch no other code. What codes 2, 3 and 4 mean is **inferred** from the register names, as the column says. Names, numbers, codes and defaults are copied from the tables; what a register does is not in the file.

### CCX register table (chip address bytes 0xaa / 0xab)

The register numbers, access directions and non-zero defaults of this table, except the seven registers whose code is 0, are in [COMPOSITOR_DECODE.h](../COMPOSITOR_DECODE.h).

90 named registers of 257 records.

| Register | Number | Label | Code | Reading of the code | Default value |
|---|---|---|---|---|---|
| `CCX_VTC_VID_CNT` | 0x0 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_CLK_CNT` | 0x1 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_LINE_COUNT` | 0x2 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_LINE_TYPE` | 0x3 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_LINE_LENGTH` | 0x4 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_CSYNC_EDGE0` | 0x5 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_CSYNC_EDGE1` | 0x6 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_CSYNC_EDGE2` | 0x7 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_CSYNC_EDGE3` | 0x8 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_CSYNC_EDGE4` | 0x9 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_CSYNC_EDGE5` | 0xa | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_CSYNC_EDGE6` | 0xb | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_CBLANK_EDGE0` | 0xc | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_CBLANK_EDGE1` | 0xd | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_CBLANK_EDGE2` | 0xe | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_CBLANK_EDGE3` | 0xf | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_ACT_VID_EDGE0` | 0x10 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_ACT_VID_EDGE1` | 0x11 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_VBLANK_EDGE0` | 0x12 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_VBLANK_EDGE1` | 0x13 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_HSYNC_EDGE0` | 0x14 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_HSYNC_EDGE1` | 0x15 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_FIELD_EDGE0` | 0x16 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_VSYNC_EDGE0` | 0x17 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_VSYNC_EDGE1` | 0x18 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_THSYNC_EDGE0` | 0x19 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_THSYNC_EDGE1` | 0x1a | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_HMASK_EDGE0` | 0x1b | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_HMASK_EDGE1` | 0x1c | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_PLLEN_EDGE0` | 0x1d | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_PLLEN_EDGE1` | 0x1e | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_GLOBAL_EDGE0` | 0x1f | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_SPARE5_EDGE0` | 0x20 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_SPARE5_EDGE1` | 0x21 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_VTC_SPARE5_EDGE2` | 0x22 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_TILE_F0_X` | 0x23 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_TILE_F1_X` | 0x24 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_TILE_F2_X` | 0x25 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_TILE_F3_X` | 0x26 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_TILE_F0_Y` | 0x27 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_TILE_F1_Y` | 0x28 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_TILE_F2_Y` | 0x29 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_TILE_F3_Y` | 0x2a | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_TILE_TILE_SPARE0` | 0x2b | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_TILE_TILE_SPARE1` | 0x2c | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_GAMMA_PROGRAM` | 0x2d | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_GAMMA_WRITE_ALL` | 0x2e | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_GAMMA_WRITE_RED_LUT` | 0x2f | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_GAMMA_WRITE_GREEN_LUT` | 0x30 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_GAMMA_WRITE_BLUE_LUT` | 0x31 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_GAMMA_LOAD_CNT` | 0x32 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_GAMMA_READ_RED_LUT0` | 0x33 | established | 2 | not exercised by the register tests; read-only (inferred from the register being a read-back) | 0x0 |
| `CCX_GAMMA_READ_RED_LUT1` | 0x34 | established | 2 | not exercised by the register tests; read-only (inferred from the register being a read-back) | 0x0 |
| `CCX_GAMMA_READ_RED_LUT2` | 0x35 | established | 2 | not exercised by the register tests; read-only (inferred from the register being a read-back) | 0x0 |
| `CCX_GAMMA_READ_RED_LUT3` | 0x36 | established | 2 | not exercised by the register tests; read-only (inferred from the register being a read-back) | 0x0 |
| `CCX_GAMMA_READ_GREEN_LUT0` | 0x37 | established | 2 | not exercised by the register tests; read-only (inferred from the register being a read-back) | 0x0 |
| `CCX_GAMMA_READ_GREEN_LUT1` | 0x38 | established | 2 | not exercised by the register tests; read-only (inferred from the register being a read-back) | 0x0 |
| `CCX_GAMMA_READ_GREEN_LUT2` | 0x39 | established | 2 | not exercised by the register tests; read-only (inferred from the register being a read-back) | 0x0 |
| `CCX_GAMMA_READ_GREEN_LUT3` | 0x3a | established | 2 | not exercised by the register tests; read-only (inferred from the register being a read-back) | 0x0 |
| `CCX_GAMMA_READ_BLUE_LUT0` | 0x3b | established | 2 | not exercised by the register tests; read-only (inferred from the register being a read-back) | 0x0 |
| `CCX_GAMMA_READ_BLUE_LUT1` | 0x3c | established | 2 | not exercised by the register tests; read-only (inferred from the register being a read-back) | 0x0 |
| `CCX_GAMMA_READ_BLUE_LUT2` | 0x3d | established | 2 | not exercised by the register tests; read-only (inferred from the register being a read-back) | 0x0 |
| `CCX_GAMMA_READ_BLUE_LUT3` | 0x3e | established | 2 | not exercised by the register tests; read-only (inferred from the register being a read-back) | 0x0 |
| `CCX_PFD_CONTROL` | 0x40 | established | 0 | not implemented | 0x0 |
| `CCX_PFD_HI_PATTERN_LO` | 0x41 | established | 0 | not implemented | 0x0 |
| `CCX_PFD_HI_PATTERN_HI` | 0x42 | established | 0 | not implemented | 0x0 |
| `CCX_PFD_LO_PATTERN_LO` | 0x43 | established | 0 | not implemented | 0x0 |
| `CCX_PFD_LO_PATTERN_HI` | 0x44 | established | 0 | not implemented | 0x0 |
| `CCX_VERTICAL_RESET_CONTROL` | 0x50 | established | 0 | not implemented | 0x0 |
| `CCX_VERTICAL_RESET_ASYNC_DELAY` | 0x51 | established | 0 | not implemented | 0x0 |
| `CCX_DAC_CONFIG_DAC_CONFIG` | 0x53 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_I2C_CONTROL_LINK4` | 0x55 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_I2C_CONTROL_LINK5` | 0x56 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_I2C_PORT_ENUM` | 0x57 | established | 1 | read-only; read and compared with default | 0x0 |
| `CCX_I2C_STATUS_LINK4` | 0x58 | established | 2 | not exercised by the register tests; read-only (inferred from the register being a read-back) | 0x0 |
| `CCX_I2C_STATUS_LINK5` | 0x59 | established | 2 | not exercised by the register tests; read-only (inferred from the register being a read-back) | 0x0 |
| `CCX_NIC_0` | 0x5a | established | 2 | not exercised by the register tests; read-only (inferred from the register being a read-back) | 0x4b484837 |
| `CCX_NIC_1` | 0x5b | established | 2 | not exercised by the register tests; read-only (inferred from the register being a read-back) | 0x3639 |
| `CCX_ATPG_FIRST_PIXEL` | 0x5c | established | 5 | read-write; written with random data, read back and compared | 0x3fffffff |
| `CCX_ATPG_OP_MODE` | 0x5d | established | 5 | read-write; written with random data, read back and compared | 0x1 |
| `CCX_ATPG_RAMP` | 0x5e | established | 5 | read-write; written with random data, read back and compared | 0x47 |
| `CCX_CRC_INPUT_CTRL` | 0x5f | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_CRC_INPUT_STATUS` | 0x60 | established | 1 | read-only; read and compared with default | 0x0 |
| `CCX_CRC_OUTPUT_CTRL` | 0x61 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CCX_CRC_OUTPUT_STATUS` | 0x62 | established | 1 | read-only; read and compared with default | 0x0 |
| `CCX_CRC_INPUT_0` | 0x63 | established | 5 | read-write; written with random data, read back and compared | 0x0 |
| `CCX_CRC_INPUT_1` | 0x64 | established | 5 | read-write; written with random data, read back and compared | 0x0 |
| `CCX_CRC_INPUT_2` | 0x65 | established | 5 | read-write; written with random data, read back and compared | 0x0 |
| `CCX_CRC_INPUT_3` | 0x66 | established | 5 | read-write; written with random data, read back and compared | 0x0 |
| `CCX_CRC_OUTPUT` | 0x67 | established | 5 | read-write; written with random data, read back and compared | 0x0 |

### CTX register table (chip address bytes 0xac / 0xad)

7 named registers of 256 records.

| Register | Number | Label | Code | Reading of the code | Default value |
|---|---|---|---|---|---|
| `CTX_ID` | 0x0 | established | 1 | read-only; read and compared with default | 0x86b7 |
| `CTX_CRC_INPUT_CTRL` | 0x1 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CTX_CRC_INPUT_STATUS` | 0x2 | established | 1 | read-only; read and compared with default | 0x0 |
| `CTX_CRC_OUTPUT_CTRL` | 0x3 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CTX_CRC_OUTPUT_STATUS` | 0x4 | established | 1 | read-only; read and compared with default | 0x0 |
| `CTX_CRC_INPUT` | 0x5 | established | 5 | read-write; written with random data, read back and compared | 0x0 |
| `CTX_CRC_OUTPUT` | 0x6 | established | 5 | read-write; written with random data, read back and compared | 0x0 |

### CHIC register table (chip address bytes 0xd4 / 0xd5)

13 named registers of 257 records.

| Register | Number | Label | Code | Reading of the code | Default value |
|---|---|---|---|---|---|
| `CHIC_FLASH_START_ADDR` | 0x0 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CHIC_FLASH_START` | 0x1 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CHIC_FLASH_STOP` | 0x2 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CHIC_FLASH_WRITE_DATA` | 0x3 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CHIC_FLASH_READ_DATA` | 0x4 | established | 2 | not exercised by the register tests; read-only (inferred from the register being a read-back) | 0x0 |
| `CHIC_STATUS` | 0x5 | established | 1 | read-only; read and compared with default | 0x1b |
| `CHIC_CONFIG_CCX` | 0x6 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CHIC_CONFIG_CTX` | 0x7 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CHIC_STOP_CONFIG` | 0x8 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CHIC_MASTER_RESET` | 0x9 | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CHIC_CCX_RESET` | 0xa | established | 4 | not exercised by the register tests; write-only (inferred from the register being a load or control) | 0x0 |
| `CHIC_DUMMY_WRITE` | 0xff | established | 3 | not exercised; dummy write address | 0x0 |
| `CHIC_DYMMY_READ` | 0x100 | established | 1 | read-only; read and compared with default | 0x0 |
