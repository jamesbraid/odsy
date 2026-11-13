/* generated from devices/board/registers.toml by defs-gen - do not edit, change the source */
/* VPro (Odyssey) graphics board: widget identity, board */
#ifndef ODSY_GEN_H
#define ODSY_GEN_H

#include <stdint.h>


/* word HOST_FLOW_MODE: 32 bits; odsy binary analysis of the shipped kernel board routines */
#define ODSY_HOST_FLOW_MODE_WIDTH                    32 /* established */
#define ODSY_HOST_FLOW_MODE_OWNER_CPU1_SHIFT         12 /* established */
#define ODSY_HOST_FLOW_MODE_OWNER_CPU1_MASK          0x3u
#define ODSY_HOST_FLOW_MODE_OWNER_CPU1_INPLACE       (ODSY_HOST_FLOW_MODE_OWNER_CPU1_MASK << ODSY_HOST_FLOW_MODE_OWNER_CPU1_SHIFT)
#define ODSY_HOST_FLOW_MODE_OWNER_CPU0_SHIFT         10 /* established */
#define ODSY_HOST_FLOW_MODE_OWNER_CPU0_MASK          0x3u
#define ODSY_HOST_FLOW_MODE_OWNER_CPU0_INPLACE       (ODSY_HOST_FLOW_MODE_OWNER_CPU0_MASK << ODSY_HOST_FLOW_MODE_OWNER_CPU0_SHIFT)
#define ODSY_HOST_FLOW_MODE_ATTACH_CPU1_SHIFT        9 /* established */
#define ODSY_HOST_FLOW_MODE_ATTACH_CPU1_MASK         0x1u
#define ODSY_HOST_FLOW_MODE_ATTACH_CPU1_INPLACE      (ODSY_HOST_FLOW_MODE_ATTACH_CPU1_MASK << ODSY_HOST_FLOW_MODE_ATTACH_CPU1_SHIFT)
#define ODSY_HOST_FLOW_MODE_ATTACH_CPU0_SHIFT        8 /* established */
#define ODSY_HOST_FLOW_MODE_ATTACH_CPU0_MASK         0x1u
#define ODSY_HOST_FLOW_MODE_ATTACH_CPU0_INPLACE      (ODSY_HOST_FLOW_MODE_ATTACH_CPU0_MASK << ODSY_HOST_FLOW_MODE_ATTACH_CPU0_SHIFT)

/* word MASTER_ID: 32 bits; odsy binary analysis of the shipped kernel board routines */
#define ODSY_MASTER_ID_WIDTH                         32 /* established */
#define ODSY_MASTER_ID_BIT24_SHIFT                   24 /* established */
#define ODSY_MASTER_ID_BIT24_MASK                    0x1u
#define ODSY_MASTER_ID_BIT24_INPLACE                 (ODSY_MASTER_ID_BIT24_MASK << ODSY_MASTER_ID_BIT24_SHIFT)
#define ODSY_MASTER_ID_MASTER_SHIFT                  20 /* established */
#define ODSY_MASTER_ID_MASTER_MASK                   0xfu
#define ODSY_MASTER_ID_MASTER_INPLACE                (ODSY_MASTER_ID_MASTER_MASK << ODSY_MASTER_ID_MASTER_SHIFT)
#define ODSY_MASTER_ID_BIT18_SHIFT                   18 /* established */
#define ODSY_MASTER_ID_BIT18_MASK                    0x1u
#define ODSY_MASTER_ID_BIT18_INPLACE                 (ODSY_MASTER_ID_BIT18_MASK << ODSY_MASTER_ID_BIT18_SHIFT)
#define ODSY_MASTER_ID_CODE_SHIFT                    0 /* established */
#define ODSY_MASTER_ID_CODE_MASK                     0xffffu
#define ODSY_MASTER_ID_CODE_INPLACE                  (ODSY_MASTER_ID_CODE_MASK << ODSY_MASTER_ID_CODE_SHIFT)

/* word SDRAM_CFG: 32 bits; odsy binary analysis of the shipped kernel board routines */
#define ODSY_SDRAM_CFG_WIDTH                         32 /* inferred */
#define ODSY_SDRAM_CFG_HOST_ID_SHIFT                 19 /* established */
#define ODSY_SDRAM_CFG_HOST_ID_MASK                  0xfu
#define ODSY_SDRAM_CFG_HOST_ID_INPLACE               (ODSY_SDRAM_CFG_HOST_ID_MASK << ODSY_SDRAM_CFG_HOST_ID_SHIFT)
#define ODSY_SDRAM_CFG_ENABLE_SHIFT                  8 /* inferred */
#define ODSY_SDRAM_CFG_ENABLE_MASK                   0x1u
#define ODSY_SDRAM_CFG_ENABLE_INPLACE                (ODSY_SDRAM_CFG_ENABLE_MASK << ODSY_SDRAM_CFG_ENABLE_SHIFT)
#define ODSY_SDRAM_CFG_RESET_SHIFT                   5 /* inferred */
#define ODSY_SDRAM_CFG_RESET_MASK                    0x1u
#define ODSY_SDRAM_CFG_RESET_INPLACE                 (ODSY_SDRAM_CFG_RESET_MASK << ODSY_SDRAM_CFG_RESET_SHIFT)
#define ODSY_SDRAM_CFG_SIZE_SHIFT                    3 /* established */
#define ODSY_SDRAM_CFG_SIZE_MASK                     0x3u
#define ODSY_SDRAM_CFG_SIZE_INPLACE                  (ODSY_SDRAM_CFG_SIZE_MASK << ODSY_SDRAM_CFG_SIZE_SHIFT)
#define ODSY_SDRAM_CFG_SIZE_MB32                     0 /* established */
#define ODSY_SDRAM_CFG_SIZE_MB64                     1 /* established */
#define ODSY_SDRAM_CFG_SIZE_MB128                    2 /* established */
#define ODSY_SDRAM_CFG_BANKS_SHIFT                   2 /* established */
#define ODSY_SDRAM_CFG_BANKS_MASK                    0x1u
#define ODSY_SDRAM_CFG_BANKS_INPLACE                 (ODSY_SDRAM_CFG_BANKS_MASK << ODSY_SDRAM_CFG_BANKS_SHIFT)
#define ODSY_SDRAM_CFG_BANKS_TWO                     0 /* established */
#define ODSY_SDRAM_CFG_BANKS_FOUR                    1 /* established */
#define ODSY_SDRAM_CFG_CAS_SHIFT                     1 /* established */
#define ODSY_SDRAM_CFG_CAS_MASK                      0x1u
#define ODSY_SDRAM_CFG_CAS_INPLACE                   (ODSY_SDRAM_CFG_CAS_MASK << ODSY_SDRAM_CFG_CAS_SHIFT)
#define ODSY_SDRAM_CFG_CAS_CAS3                      0 /* established */
#define ODSY_SDRAM_CFG_CAS_CAS2                      1 /* established */

/* word STATS_CTL: 32 bits; odsy binary analysis of the shipped kernel board routines */
#define ODSY_STATS_CTL_WIDTH                         32 /* established */
#define ODSY_STATS_CTL_FIXED_TOP_SHIFT               31 /* established */
#define ODSY_STATS_CTL_FIXED_TOP_MASK                0x1u
#define ODSY_STATS_CTL_FIXED_TOP_INPLACE             (ODSY_STATS_CTL_FIXED_TOP_MASK << ODSY_STATS_CTL_FIXED_TOP_SHIFT)
#define ODSY_STATS_CTL_FIXED_MID_SHIFT               27 /* established */
#define ODSY_STATS_CTL_FIXED_MID_MASK                0x1u
#define ODSY_STATS_CTL_FIXED_MID_INPLACE             (ODSY_STATS_CTL_FIXED_MID_MASK << ODSY_STATS_CTL_FIXED_MID_SHIFT)
#define ODSY_STATS_CTL_SELECT_SHIFT                  8 /* established */
#define ODSY_STATS_CTL_SELECT_MASK                   0x7u
#define ODSY_STATS_CTL_SELECT_INPLACE                (ODSY_STATS_CTL_SELECT_MASK << ODSY_STATS_CTL_SELECT_SHIFT)
#define ODSY_STATS_CTL_FLAG_C_SHIFT                  6 /* established */
#define ODSY_STATS_CTL_FLAG_C_MASK                   0x1u
#define ODSY_STATS_CTL_FLAG_C_INPLACE                (ODSY_STATS_CTL_FLAG_C_MASK << ODSY_STATS_CTL_FLAG_C_SHIFT)
#define ODSY_STATS_CTL_FLAG_B_SHIFT                  5 /* established */
#define ODSY_STATS_CTL_FLAG_B_MASK                   0x1u
#define ODSY_STATS_CTL_FLAG_B_INPLACE                (ODSY_STATS_CTL_FLAG_B_MASK << ODSY_STATS_CTL_FLAG_B_SHIFT)
#define ODSY_STATS_CTL_FLAG_A_SHIFT                  4 /* established */
#define ODSY_STATS_CTL_FLAG_A_MASK                   0x1u
#define ODSY_STATS_CTL_FLAG_A_INPLACE                (ODSY_STATS_CTL_FLAG_A_MASK << ODSY_STATS_CTL_FLAG_A_SHIFT)
#define ODSY_STATS_CTL_SIZE_EXP_SHIFT                0 /* established */
#define ODSY_STATS_CTL_SIZE_EXP_MASK                 0xfu
#define ODSY_STATS_CTL_SIZE_EXP_INPLACE              (ODSY_STATS_CTL_SIZE_EXP_MASK << ODSY_STATS_CTL_SIZE_EXP_SHIFT)

/* word STRAP: 32 bits; odsy binary analysis of the shipped kernel board routines */
#define ODSY_STRAP_WIDTH                             32 /* inferred */
#define ODSY_STRAP_SDRAM_SIZE_SHIFT                  30 /* established */
#define ODSY_STRAP_SDRAM_SIZE_MASK                   0x3u
#define ODSY_STRAP_SDRAM_SIZE_INPLACE                (ODSY_STRAP_SDRAM_SIZE_MASK << ODSY_STRAP_SDRAM_SIZE_SHIFT)
#define ODSY_STRAP_SDRAM_SIZE_MB32                   0 /* established */
#define ODSY_STRAP_SDRAM_SIZE_MB64                   1 /* established */
#define ODSY_STRAP_SDRAM_SIZE_MB128                  2 /* established */
#define ODSY_STRAP_SDRAM_SIZE_MB32_ALT               3 /* established */
#define ODSY_STRAP_BANKS_SHIFT                       29 /* established */
#define ODSY_STRAP_BANKS_MASK                        0x1u
#define ODSY_STRAP_BANKS_INPLACE                     (ODSY_STRAP_BANKS_MASK << ODSY_STRAP_BANKS_SHIFT)
#define ODSY_STRAP_BANKS_TWO                         0 /* established */
#define ODSY_STRAP_BANKS_FOUR                        1 /* established */
#define ODSY_STRAP_CAS_SHIFT                         28 /* established */
#define ODSY_STRAP_CAS_MASK                          0x1u
#define ODSY_STRAP_CAS_INPLACE                       (ODSY_STRAP_CAS_MASK << ODSY_STRAP_CAS_SHIFT)
#define ODSY_STRAP_CAS_CAS3                          0 /* established */
#define ODSY_STRAP_CAS_CAS2                          1 /* established */
#define ODSY_STRAP_BOARD_REV_SHIFT                   24 /* established */
#define ODSY_STRAP_BOARD_REV_MASK                    0xfu
#define ODSY_STRAP_BOARD_REV_INPLACE                 (ODSY_STRAP_BOARD_REV_MASK << ODSY_STRAP_BOARD_REV_SHIFT)
#define ODSY_STRAP_COMMAND_LEVEL_SHIFT               7 /* inferred */
#define ODSY_STRAP_COMMAND_LEVEL_MASK                0x1ffu
#define ODSY_STRAP_COMMAND_LEVEL_INPLACE             (ODSY_STRAP_COMMAND_LEVEL_MASK << ODSY_STRAP_COMMAND_LEVEL_SHIFT)
#define ODSY_STRAP_DISPLAY_LEVEL_SHIFT               0 /* established */
#define ODSY_STRAP_DISPLAY_LEVEL_MASK                0x7fu
#define ODSY_STRAP_DISPLAY_LEVEL_INPLACE             (ODSY_STRAP_DISPLAY_LEVEL_MASK << ODSY_STRAP_DISPLAY_LEVEL_SHIFT)

/* word WIDGET_CONTROL: 32 bits; odsy binary analysis of the shipped kernel board routines */
#define ODSY_WIDGET_CONTROL_WIDTH                    32 /* established */
#define ODSY_WIDGET_CONTROL_CREDIT_SHIFT             12 /* established */
#define ODSY_WIDGET_CONTROL_CREDIT_MASK              0xfu
#define ODSY_WIDGET_CONTROL_CREDIT_INPLACE           (ODSY_WIDGET_CONTROL_CREDIT_MASK << ODSY_WIDGET_CONTROL_CREDIT_SHIFT)
#define ODSY_WIDGET_CONTROL_BIG_ENDIAN_SHIFT         9 /* established */
#define ODSY_WIDGET_CONTROL_BIG_ENDIAN_MASK          0x1u
#define ODSY_WIDGET_CONTROL_BIG_ENDIAN_INPLACE       (ODSY_WIDGET_CONTROL_BIG_ENDIAN_MASK << ODSY_WIDGET_CONTROL_BIG_ENDIAN_SHIFT)

/* word WIDGET_ID: 32 bits; odsy binary analysis of the shipped kernel board routines */
#define ODSY_WIDGET_ID_WIDTH                         32 /* inferred */
#define ODSY_WIDGET_ID_VARIANT_SHIFT                 31 /* inferred */
#define ODSY_WIDGET_ID_VARIANT_MASK                  0x1u
#define ODSY_WIDGET_ID_VARIANT_INPLACE               (ODSY_WIDGET_ID_VARIANT_MASK << ODSY_WIDGET_ID_VARIANT_SHIFT)
#define ODSY_WIDGET_ID_REVISION_SHIFT                28 /* inferred */
#define ODSY_WIDGET_ID_REVISION_MASK                 0x7u
#define ODSY_WIDGET_ID_REVISION_INPLACE              (ODSY_WIDGET_ID_REVISION_MASK << ODSY_WIDGET_ID_REVISION_SHIFT)

#define ODSY_BOARD_ABORT                             0x100cu /* inferred */
#define ODSY_BOARD_BUFFER_B_CLEAR                    0x10ccu /* established */
#define ODSY_BOARD_BUFFER_B_SET                      0x10c4u /* inferred */
#define ODSY_BOARD_BUFFER_B_STATE                    0x10d4u /* inferred */
#define ODSY_BOARD_CMD_FIFO_PORT                     0x110000u /* established */
#define ODSY_BOARD_CMD_WINDOW_2                      0x120000u /* inferred */
#define ODSY_BOARD_CTX_SAVE_ADDR_HI                  0x4004u /* established */
#define ODSY_BOARD_CTX_SAVE_ADDR_LO                  0x400cu /* established */
#define ODSY_BOARD_CTX_SAVE_PORT                     0x118000u /* established */
#define ODSY_BOARD_DIAG_ADDR_HI                      0x404cu /* inferred */
#define ODSY_BOARD_DIAG_ADDR_LO                      0x4054u /* inferred */
#define ODSY_BOARD_DIAG_MODE                         0x405cu /* inferred */
#define ODSY_BOARD_DISPLAY_FIFO_PORT                 0x400000u /* established */
#define ODSY_BOARD_DISPLAY_ID_POS                    0x23380cu /* established */
#define ODSY_BOARD_DISPLAY_ID_VERSION_MASK           0x7u /* established */
#define ODSY_BOARD_ERR_ADDR_HI                       0x14u /* established */
#define ODSY_BOARD_ERR_ADDR_LO                       0x1cu /* established */
#define ODSY_BOARD_ERR_COMMAND                       0x44u /* established */
#define ODSY_BOARD_FLAGS                             0x1014u /* established */
#define ODSY_BOARD_FLAG_CLEAR                        0x101cu /* established */
#define ODSY_BOARD_FLAG_INTR_DISABLE                 0x103cu /* established */
#define ODSY_BOARD_FLAG_INTR_ENABLE                  0x1034u /* established */
#define ODSY_BOARD_FLOW_CLEAR                        0x1084u /* established */
#define ODSY_BOARD_FLOW_CONFIG                       0x1074u /* established */
#define ODSY_BOARD_FLOW_OFF                          0x107cu /* inferred */
#define ODSY_BOARD_INTR_CTL_HI                       0x1044u /* established */
#define ODSY_BOARD_INTR_CTL_LO                       0x104cu /* established */
#define ODSY_BOARD_INTR_DEST_HI                      0x34u /* established */
#define ODSY_BOARD_INTR_DEST_LO                      0x3cu /* established */
#define ODSY_BOARD_INTR_HEADER                       0x105cu /* inferred */
#define ODSY_BOARD_INTR_VECTOR                       0x1054u /* established */
#define ODSY_BOARD_LEVELS_STRAPS                     0x106cu /* established */
#define ODSY_BOARD_MASTER_ID_A                       0x4014u /* established */
#define ODSY_BOARD_MASTER_ID_B                       0x4044u /* established */
#define ODSY_BOARD_REQ_TIMEOUT                       0x2cu /* established */
#define ODSY_BOARD_REQ_TIMEOUT_BITS                  0x14u /* established */
#define ODSY_BOARD_REQ_TIMEOUT_MASK                  0xfffffu /* established */
#define ODSY_BOARD_SCAN_ADDR_HI                      0x109cu /* established */
#define ODSY_BOARD_SCAN_ADDR_LO                      0x10a4u /* established */
#define ODSY_BOARD_SCAN_CONFIG                       0x108cu /* established */
#define ODSY_BOARD_SCAN_GO                           0x10acu /* established */
#define ODSY_BOARD_SDRAM_CONFIG                      0x1004u /* established */
#define ODSY_BOARD_SHADOW_ADDR_HI                    0x4034u /* established */
#define ODSY_BOARD_SHADOW_ADDR_LO                    0x403cu /* established */
#define ODSY_BOARD_STARTUP_PROBE_POS                 0x201594u /* established */
#define ODSY_BOARD_STARTUP_PROBE_VALUE               0x3d0046u /* established */
#define ODSY_BOARD_STATS_ADDR_HI                     0x401cu /* established */
#define ODSY_BOARD_STATS_ADDR_LO                     0x4024u /* established */
#define ODSY_BOARD_STATS_CONTROL                     0x402cu /* established */
#define ODSY_BOARD_STATUS0                           0x1064u /* established */
#define ODSY_BOARD_SWAP_TIMING                       0x10bcu /* inferred */
#define ODSY_BOARD_SWAP_TRIGGER                      0x10b4u /* inferred */
#define ODSY_BOARD_WIDGET_CONTROL                    0x24u /* established */
#define ODSY_BOARD_WIDGET_ID                         0x4u /* established */
#define ODSY_BOARD_WIDGET_STATUS                     0xcu /* established */
#define ODSY_BOARD_XBAR_INTR_CONFIG                  0x5cu /* inferred */
#define ODSY_HOST_FLOW_MODE_OFFSET                   0x40u /* established */
#define ODSY_MASTER_ID_CODE_VALUE                    0x12u /* established */
#define ODSY_PIO_WINDOW_BYTES                        0x401000u /* established */
#define ODSY_REV_TYPE_B_BIAS                         0x8u /* established */
#define ODSY_RGBA12_MIN_MEMORY_MB                    0x80u /* established */
#define ODSY_STATS_CTL_FIXED_BITS                    0x88000000u /* established */
#define ODSY_WIDGET_ID_TYPE_A_FIRST                  0x1u /* established */
#define ODSY_WIDGET_ID_TYPE_A_LAST                   0x3u /* established */
#define ODSY_WIDGET_ID_TYPE_B_FIRST                  0x9u /* established */
#define ODSY_WIDGET_ID_TYPE_B_LAST                   0xfu /* established */
#define ODSY_WIDGET_ID_TYPE_MASK                     0xfu /* established */
#define ODSY_WIDGET_ID_TYPE_SHIFT                    0x1cu /* established */
#define ODSY_WIDGET_MFR                              0x23u /* established */
#define ODSY_WIDGET_PART                             0xc013u /* established */

#endif /* ODSY_GEN_H */
