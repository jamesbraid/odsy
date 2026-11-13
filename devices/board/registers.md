<!-- generated from devices/board/registers.toml by defs-gen - do not edit, change the source -->

# VPro (Odyssey) graphics board: widget identity, board

Board identity on the crossbar, the register positions of the board window, and the identity, strap and memory-configuration words.

Unit `board`, macro prefix `ODSY`.
Default source: odsy binary analysis of the shipped kernel board routines.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `HOST_FLOW_MODE` | 32 | established | odsy binary analysis of the shipped kernel board routines |
| `MASTER_ID` | 32 | established | odsy binary analysis of the shipped kernel board routines |
| `SDRAM_CFG` | 32 | inferred | odsy binary analysis of the shipped kernel board routines |
| `STATS_CTL` | 32 | established | odsy binary analysis of the shipped kernel board routines |
| `STRAP` | 32 | inferred | odsy binary analysis of the shipped kernel board routines |
| `WIDGET_CONTROL` | 32 | established | odsy binary analysis of the shipped kernel board routines |
| `WIDGET_ID` | 32 | inferred | odsy binary analysis of the shipped kernel board routines |

### Word `HOST_FLOW_MODE`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 13:12 | `owner_cpu1` | established |  | odsy binary analysis of the shipped kernel board routines |  |
| 11:10 | `owner_cpu0` | established |  | odsy binary analysis of the shipped kernel board routines |  |
| 9 | `attach_cpu1` | established |  | odsy binary analysis of the shipped kernel board routines |  |
| 8 | `attach_cpu0` | established |  | odsy binary analysis of the shipped kernel board routines |  |

### Word `MASTER_ID`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 24 | `bit24` | established |  | odsy binary analysis of the shipped kernel board routines |  |
| 23:20 | `master` | established |  | odsy binary analysis of the shipped kernel board routines |  |
| 18 | `bit18` | established |  | odsy binary analysis of the shipped kernel board routines |  |
| 15:0 | `code` | established |  | odsy binary analysis of the shipped kernel board routines |  |

### Word `SDRAM_CFG`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 22:19 | `host_id` | established |  | odsy binary analysis of the shipped kernel board routines |  |
| 8 | `enable` | inferred |  | odsy binary analysis of the shipped kernel board routines |  |
| 5 | `reset` | inferred |  | odsy binary analysis of the shipped kernel board routines |  |
| 4:3 | `size` | established | mb32=0, mb64=1, mb128=2 | odsy binary analysis of the shipped kernel board routines |  |
| 2 | `banks` | established | two=0, four=1 | odsy binary analysis of the shipped kernel board routines |  |
| 1 | `cas` | established | cas3=0, cas2=1 | odsy binary analysis of the shipped kernel board routines |  |

### Word `STATS_CTL`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `fixed_top` | established |  | odsy binary analysis of the shipped kernel board routines |  |
| 27 | `fixed_mid` | established |  | odsy binary analysis of the shipped kernel board routines |  |
| 10:8 | `select` | established |  | odsy binary analysis of the shipped kernel board routines |  |
| 6 | `flag_c` | established |  | odsy binary analysis of the shipped kernel board routines |  |
| 5 | `flag_b` | established |  | odsy binary analysis of the shipped kernel board routines |  |
| 4 | `flag_a` | established |  | odsy binary analysis of the shipped kernel board routines |  |
| 3:0 | `size_exp` | established |  | odsy binary analysis of the shipped kernel board routines |  |

### Word `STRAP`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:30 | `sdram_size` | established | mb32=0, mb64=1, mb128=2, mb32_alt=3 | odsy binary analysis of the shipped kernel board routines |  |
| 29 | `banks` | established | two=0, four=1 | odsy binary analysis of the shipped kernel board routines |  |
| 28 | `cas` | established | cas3=0, cas2=1 | odsy binary analysis of the shipped kernel board routines |  |
| 27:24 | `board_rev` | established |  | odsy binary analysis of the shipped kernel board routines |  |
| 15:7 | `command_level` | inferred |  | odsy binary analysis of the shipped kernel board routines |  |
| 6:0 | `display_level` | established |  | odsy binary analysis of the shipped kernel board routines |  |

### Word `WIDGET_CONTROL`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:12 | `credit` | established |  | odsy binary analysis of the shipped kernel board routines |  |
| 9 | `big_endian` | established |  | odsy binary analysis of the shipped kernel board routines |  |

### Word `WIDGET_ID`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `variant` | inferred |  | odsy binary analysis of the shipped kernel board routines |  |
| 30:28 | `revision` | inferred |  | odsy binary analysis of the shipped kernel board routines |  |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `BOARD_ABORT` | 0x100c | inferred | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_BUFFER_B_CLEAR` | 0x10cc | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_BUFFER_B_SET` | 0x10c4 | inferred | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_BUFFER_B_STATE` | 0x10d4 | inferred | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_CMD_FIFO_PORT` | 0x110000 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_CMD_WINDOW_2` | 0x120000 | inferred | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_CTX_SAVE_ADDR_HI` | 0x4004 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_CTX_SAVE_ADDR_LO` | 0x400c | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_CTX_SAVE_PORT` | 0x118000 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_DIAG_ADDR_HI` | 0x404c | inferred | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_DIAG_ADDR_LO` | 0x4054 | inferred | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_DIAG_MODE` | 0x405c | inferred | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_DISPLAY_FIFO_PORT` | 0x400000 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_DISPLAY_ID_POS` | 0x23380c | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_DISPLAY_ID_VERSION_MASK` | 0x7 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_ERR_ADDR_HI` | 0x14 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_ERR_ADDR_LO` | 0x1c | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_ERR_COMMAND` | 0x44 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_FLAGS` | 0x1014 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_FLAG_CLEAR` | 0x101c | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_FLAG_INTR_DISABLE` | 0x103c | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_FLAG_INTR_ENABLE` | 0x1034 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_FLOW_CLEAR` | 0x1084 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_FLOW_CONFIG` | 0x1074 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_FLOW_OFF` | 0x107c | inferred | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_INTR_CTL_HI` | 0x1044 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_INTR_CTL_LO` | 0x104c | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_INTR_DEST_HI` | 0x34 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_INTR_DEST_LO` | 0x3c | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_INTR_HEADER` | 0x105c | inferred | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_INTR_VECTOR` | 0x1054 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_LEVELS_STRAPS` | 0x106c | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_MASTER_ID_A` | 0x4014 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_MASTER_ID_B` | 0x4044 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_REQ_TIMEOUT` | 0x2c | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_REQ_TIMEOUT_BITS` | 0x14 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_REQ_TIMEOUT_MASK` | 0xfffff | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_SCAN_ADDR_HI` | 0x109c | established | odsy binary analysis of the shipped kernel board routines | label only |
| `BOARD_SCAN_ADDR_LO` | 0x10a4 | established | odsy binary analysis of the shipped kernel board routines | label only |
| `BOARD_SCAN_CONFIG` | 0x108c | established | odsy binary analysis of the shipped kernel board routines | label only |
| `BOARD_SCAN_GO` | 0x10ac | established | odsy binary analysis of the shipped kernel board routines | label only |
| `BOARD_SDRAM_CONFIG` | 0x1004 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_SHADOW_ADDR_HI` | 0x4034 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_SHADOW_ADDR_LO` | 0x403c | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_STARTUP_PROBE_POS` | 0x201594 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_STARTUP_PROBE_VALUE` | 0x3d0046 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_STATS_ADDR_HI` | 0x401c | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_STATS_ADDR_LO` | 0x4024 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_STATS_CONTROL` | 0x402c | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_STATUS0` | 0x1064 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_SWAP_TIMING` | 0x10bc | inferred | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_SWAP_TRIGGER` | 0x10b4 | inferred | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_WIDGET_CONTROL` | 0x24 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_WIDGET_ID` | 0x4 | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_WIDGET_STATUS` | 0xc | established | odsy binary analysis of the shipped kernel board routines |  |
| `BOARD_XBAR_INTR_CONFIG` | 0x5c | inferred | odsy binary analysis of the shipped kernel board routines |  |
| `HOST_FLOW_MODE_OFFSET` | 0x40 | established | odsy binary analysis of the shipped kernel board routines |  |
| `MASTER_ID_CODE_VALUE` | 0x12 | established | odsy binary analysis of the shipped kernel board routines |  |
| `PIO_WINDOW_BYTES` | 0x401000 | established | odsy binary analysis of the shipped kernel board routines |  |
| `REV_TYPE_B_BIAS` | 0x8 | established | odsy binary analysis of the shipped kernel board routines |  |
| `RGBA12_MIN_MEMORY_MB` | 0x80 | established | odsy binary analysis of the shipped kernel board routines |  |
| `STATS_CTL_FIXED_BITS` | 0x88000000 | established | odsy binary analysis of the shipped kernel board routines |  |
| `WIDGET_ID_TYPE_A_FIRST` | 0x1 | established | odsy binary analysis of the shipped kernel board routines |  |
| `WIDGET_ID_TYPE_A_LAST` | 0x3 | established | odsy binary analysis of the shipped kernel board routines |  |
| `WIDGET_ID_TYPE_B_FIRST` | 0x9 | established | odsy binary analysis of the shipped kernel board routines |  |
| `WIDGET_ID_TYPE_B_LAST` | 0xf | established | odsy binary analysis of the shipped kernel board routines |  |
| `WIDGET_ID_TYPE_MASK` | 0xf | established | odsy binary analysis of the shipped kernel board routines |  |
| `WIDGET_ID_TYPE_SHIFT` | 0x1c | established | odsy binary analysis of the shipped kernel board routines |  |
| `WIDGET_MFR` | 0x23 | established | odsy binary analysis of the shipped kernel board routines |  |
| `WIDGET_PART` | 0xc013 | established | odsy binary analysis of the shipped kernel board routines |  |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `HOST_FLOW_MODE` | 0x1200 | example | attach_cpu0=0, attach_cpu1=1, owner_cpu0=0, owner_cpu1=1 |
| `MASTER_ID` | 0x1340012 | example | code=18, bit18=1, master=3, bit24=1 |
| `STATS_CTL` | 0x88000000 | vector | fixed_mid=1, fixed_top=1 |
| `STRAP` | 0xa1000000 | example | sdram_size=2, banks=1, cas=0, board_rev=1 |
| `WIDGET_CONTROL` | 0x4200 | vector | big_endian=1, credit=4 |
| `WIDGET_ID` | 0xa0000000 | example | variant=1, revision=2 |
