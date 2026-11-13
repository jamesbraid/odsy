/* generated from devices/compositor/registers.toml by defs-gen - do not edit, change the source */
/* VPro (Odyssey) compositor chip: register numbers */
#ifndef CCX_GEN_H
#define CCX_GEN_H

#include <stdint.h>


#define CCX_ATPG_FIRST_PIXEL                         0x5cu /* established */
#define CCX_ATPG_OP_MODE                             0x5du /* established */
#define CCX_ATPG_RAMP                                0x5eu /* established */
#define CCX_CRC_INPUT_0                              0x63u /* established */
#define CCX_CRC_INPUT_1                              0x64u /* established */
#define CCX_CRC_INPUT_2                              0x65u /* established */
#define CCX_CRC_INPUT_3                              0x66u /* established */
#define CCX_CRC_INPUT_CTRL                           0x5fu /* established */
#define CCX_CRC_INPUT_STATUS                         0x60u /* established */
#define CCX_CRC_OUTPUT                               0x67u /* established */
#define CCX_CRC_OUTPUT_CTRL                          0x61u /* established */
#define CCX_CRC_OUTPUT_STATUS                        0x62u /* established */
#define CCX_DAC_CONFIG_DAC_CONFIG                    0x53u /* established */
#define CCX_GAMMA_LOAD_CNT                           0x32u /* established */
#define CCX_GAMMA_PROGRAM                            0x2du /* established */
#define CCX_GAMMA_READ_BLUE_LUT0                     0x3bu /* established */
#define CCX_GAMMA_READ_BLUE_LUT1                     0x3cu /* established */
#define CCX_GAMMA_READ_BLUE_LUT2                     0x3du /* established */
#define CCX_GAMMA_READ_BLUE_LUT3                     0x3eu /* established */
#define CCX_GAMMA_READ_GREEN_LUT0                    0x37u /* established */
#define CCX_GAMMA_READ_GREEN_LUT1                    0x38u /* established */
#define CCX_GAMMA_READ_GREEN_LUT2                    0x39u /* established */
#define CCX_GAMMA_READ_GREEN_LUT3                    0x3au /* established */
#define CCX_GAMMA_READ_RED_LUT0                      0x33u /* established */
#define CCX_GAMMA_READ_RED_LUT1                      0x34u /* established */
#define CCX_GAMMA_READ_RED_LUT2                      0x35u /* established */
#define CCX_GAMMA_READ_RED_LUT3                      0x36u /* established */
#define CCX_GAMMA_WRITE_ALL                          0x2eu /* established */
#define CCX_GAMMA_WRITE_BLUE_LUT                     0x31u /* established */
#define CCX_GAMMA_WRITE_GREEN_LUT                    0x30u /* established */
#define CCX_GAMMA_WRITE_RED_LUT                      0x2fu /* established */
#define CCX_I2C_CONTROL_LINK4                        0x55u /* established */
#define CCX_I2C_CONTROL_LINK5                        0x56u /* established */
#define CCX_I2C_PORT_ENUM                            0x57u /* established */
#define CCX_I2C_STATUS_LINK4                         0x58u /* established */
#define CCX_I2C_STATUS_LINK5                         0x59u /* established */
#define CCX_NIC_0                                    0x5au /* established */
#define CCX_NIC_1                                    0x5bu /* established */
#define CCX_TILE_F0_X                                0x23u /* established */
#define CCX_TILE_F0_Y                                0x27u /* established */
#define CCX_TILE_F1_X                                0x24u /* established */
#define CCX_TILE_F1_Y                                0x28u /* established */
#define CCX_TILE_F2_X                                0x25u /* established */
#define CCX_TILE_F2_Y                                0x29u /* established */
#define CCX_TILE_F3_X                                0x26u /* established */
#define CCX_TILE_F3_Y                                0x2au /* established */
#define CCX_TILE_TILE_SPARE0                         0x2bu /* established */
#define CCX_TILE_TILE_SPARE1                         0x2cu /* established */
#define CCX_VTC_ACT_VID_EDGE0                        0x10u /* established */
#define CCX_VTC_ACT_VID_EDGE1                        0x11u /* established */
#define CCX_VTC_CBLANK_EDGE0                         0xcu /* established */
#define CCX_VTC_CBLANK_EDGE1                         0xdu /* established */
#define CCX_VTC_CBLANK_EDGE2                         0xeu /* established */
#define CCX_VTC_CBLANK_EDGE3                         0xfu /* established */
#define CCX_VTC_CLK_CNT                              0x1u /* established */
#define CCX_VTC_CSYNC_EDGE0                          0x5u /* established */
#define CCX_VTC_CSYNC_EDGE1                          0x6u /* established */
#define CCX_VTC_CSYNC_EDGE2                          0x7u /* established */
#define CCX_VTC_CSYNC_EDGE3                          0x8u /* established */
#define CCX_VTC_CSYNC_EDGE4                          0x9u /* established */
#define CCX_VTC_CSYNC_EDGE5                          0xau /* established */
#define CCX_VTC_CSYNC_EDGE6                          0xbu /* established */
#define CCX_VTC_FIELD_EDGE0                          0x16u /* established */
#define CCX_VTC_GLOBAL_EDGE0                         0x1fu /* established */
#define CCX_VTC_HMASK_EDGE0                          0x1bu /* established */
#define CCX_VTC_HMASK_EDGE1                          0x1cu /* established */
#define CCX_VTC_HSYNC_EDGE0                          0x14u /* established */
#define CCX_VTC_HSYNC_EDGE1                          0x15u /* established */
#define CCX_VTC_LINE_COUNT                           0x2u /* established */
#define CCX_VTC_LINE_LENGTH                          0x4u /* established */
#define CCX_VTC_LINE_TYPE                            0x3u /* established */
#define CCX_VTC_PLLEN_EDGE0                          0x1du /* established */
#define CCX_VTC_PLLEN_EDGE1                          0x1eu /* established */
#define CCX_VTC_SPARE5_EDGE0                         0x20u /* established */
#define CCX_VTC_SPARE5_EDGE1                         0x21u /* established */
#define CCX_VTC_SPARE5_EDGE2                         0x22u /* established */
#define CCX_VTC_THSYNC_EDGE0                         0x19u /* established */
#define CCX_VTC_THSYNC_EDGE1                         0x1au /* established */
#define CCX_VTC_VBLANK_EDGE0                         0x12u /* established */
#define CCX_VTC_VBLANK_EDGE1                         0x13u /* established */
#define CCX_VTC_VID_CNT                              0x0u /* established */
#define CCX_VTC_VSYNC_EDGE0                          0x17u /* established */
#define CCX_VTC_VSYNC_EDGE1                          0x18u /* established */

#endif /* CCX_GEN_H */
