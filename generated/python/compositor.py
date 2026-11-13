"""generated from devices/compositor/registers.toml by defs-gen - do not edit, change the source
VPro (Odyssey) compositor chip: register numbers"""

UNIT = 'compositor'
REGISTERS = {}
WORDS = {}
FIELDS = {}
ENUMS = {}
FIELD_ENUM = {}
CONSTANTS = {'ATPG_FIRST_PIXEL': {'value': 92, 'count': 1, 'stride': 1}, 'ATPG_OP_MODE': {'value': 93, 'count': 1, 'stride': 1}, 'ATPG_RAMP': {'value': 94, 'count': 1, 'stride': 1}, 'CRC_INPUT_0': {'value': 99, 'count': 1, 'stride': 1}, 'CRC_INPUT_1': {'value': 100, 'count': 1, 'stride': 1}, 'CRC_INPUT_2': {'value': 101, 'count': 1, 'stride': 1}, 'CRC_INPUT_3': {'value': 102, 'count': 1, 'stride': 1}, 'CRC_INPUT_CTRL': {'value': 95, 'count': 1, 'stride': 1}, 'CRC_INPUT_STATUS': {'value': 96, 'count': 1, 'stride': 1}, 'CRC_OUTPUT': {'value': 103, 'count': 1, 'stride': 1}, 'CRC_OUTPUT_CTRL': {'value': 97, 'count': 1, 'stride': 1}, 'CRC_OUTPUT_STATUS': {'value': 98, 'count': 1, 'stride': 1}, 'DAC_CONFIG_DAC_CONFIG': {'value': 83, 'count': 1, 'stride': 1}, 'GAMMA_LOAD_CNT': {'value': 50, 'count': 1, 'stride': 1}, 'GAMMA_PROGRAM': {'value': 45, 'count': 1, 'stride': 1}, 'GAMMA_READ_BLUE_LUT0': {'value': 59, 'count': 1, 'stride': 1}, 'GAMMA_READ_BLUE_LUT1': {'value': 60, 'count': 1, 'stride': 1}, 'GAMMA_READ_BLUE_LUT2': {'value': 61, 'count': 1, 'stride': 1}, 'GAMMA_READ_BLUE_LUT3': {'value': 62, 'count': 1, 'stride': 1}, 'GAMMA_READ_GREEN_LUT0': {'value': 55, 'count': 1, 'stride': 1}, 'GAMMA_READ_GREEN_LUT1': {'value': 56, 'count': 1, 'stride': 1}, 'GAMMA_READ_GREEN_LUT2': {'value': 57, 'count': 1, 'stride': 1}, 'GAMMA_READ_GREEN_LUT3': {'value': 58, 'count': 1, 'stride': 1}, 'GAMMA_READ_RED_LUT0': {'value': 51, 'count': 1, 'stride': 1}, 'GAMMA_READ_RED_LUT1': {'value': 52, 'count': 1, 'stride': 1}, 'GAMMA_READ_RED_LUT2': {'value': 53, 'count': 1, 'stride': 1}, 'GAMMA_READ_RED_LUT3': {'value': 54, 'count': 1, 'stride': 1}, 'GAMMA_WRITE_ALL': {'value': 46, 'count': 1, 'stride': 1}, 'GAMMA_WRITE_BLUE_LUT': {'value': 49, 'count': 1, 'stride': 1}, 'GAMMA_WRITE_GREEN_LUT': {'value': 48, 'count': 1, 'stride': 1}, 'GAMMA_WRITE_RED_LUT': {'value': 47, 'count': 1, 'stride': 1}, 'I2C_CONTROL_LINK4': {'value': 85, 'count': 1, 'stride': 1}, 'I2C_CONTROL_LINK5': {'value': 86, 'count': 1, 'stride': 1}, 'I2C_PORT_ENUM': {'value': 87, 'count': 1, 'stride': 1}, 'I2C_STATUS_LINK4': {'value': 88, 'count': 1, 'stride': 1}, 'I2C_STATUS_LINK5': {'value': 89, 'count': 1, 'stride': 1}, 'NIC_0': {'value': 90, 'count': 1, 'stride': 1}, 'NIC_1': {'value': 91, 'count': 1, 'stride': 1}, 'TILE_F0_X': {'value': 35, 'count': 1, 'stride': 1}, 'TILE_F0_Y': {'value': 39, 'count': 1, 'stride': 1}, 'TILE_F1_X': {'value': 36, 'count': 1, 'stride': 1}, 'TILE_F1_Y': {'value': 40, 'count': 1, 'stride': 1}, 'TILE_F2_X': {'value': 37, 'count': 1, 'stride': 1}, 'TILE_F2_Y': {'value': 41, 'count': 1, 'stride': 1}, 'TILE_F3_X': {'value': 38, 'count': 1, 'stride': 1}, 'TILE_F3_Y': {'value': 42, 'count': 1, 'stride': 1}, 'TILE_TILE_SPARE0': {'value': 43, 'count': 1, 'stride': 1}, 'TILE_TILE_SPARE1': {'value': 44, 'count': 1, 'stride': 1}, 'VTC_ACT_VID_EDGE0': {'value': 16, 'count': 1, 'stride': 1}, 'VTC_ACT_VID_EDGE1': {'value': 17, 'count': 1, 'stride': 1}, 'VTC_CBLANK_EDGE0': {'value': 12, 'count': 1, 'stride': 1}, 'VTC_CBLANK_EDGE1': {'value': 13, 'count': 1, 'stride': 1}, 'VTC_CBLANK_EDGE2': {'value': 14, 'count': 1, 'stride': 1}, 'VTC_CBLANK_EDGE3': {'value': 15, 'count': 1, 'stride': 1}, 'VTC_CLK_CNT': {'value': 1, 'count': 1, 'stride': 1}, 'VTC_CSYNC_EDGE0': {'value': 5, 'count': 1, 'stride': 1}, 'VTC_CSYNC_EDGE1': {'value': 6, 'count': 1, 'stride': 1}, 'VTC_CSYNC_EDGE2': {'value': 7, 'count': 1, 'stride': 1}, 'VTC_CSYNC_EDGE3': {'value': 8, 'count': 1, 'stride': 1}, 'VTC_CSYNC_EDGE4': {'value': 9, 'count': 1, 'stride': 1}, 'VTC_CSYNC_EDGE5': {'value': 10, 'count': 1, 'stride': 1}, 'VTC_CSYNC_EDGE6': {'value': 11, 'count': 1, 'stride': 1}, 'VTC_FIELD_EDGE0': {'value': 22, 'count': 1, 'stride': 1}, 'VTC_GLOBAL_EDGE0': {'value': 31, 'count': 1, 'stride': 1}, 'VTC_HMASK_EDGE0': {'value': 27, 'count': 1, 'stride': 1}, 'VTC_HMASK_EDGE1': {'value': 28, 'count': 1, 'stride': 1}, 'VTC_HSYNC_EDGE0': {'value': 20, 'count': 1, 'stride': 1}, 'VTC_HSYNC_EDGE1': {'value': 21, 'count': 1, 'stride': 1}, 'VTC_LINE_COUNT': {'value': 2, 'count': 1, 'stride': 1}, 'VTC_LINE_LENGTH': {'value': 4, 'count': 1, 'stride': 1}, 'VTC_LINE_TYPE': {'value': 3, 'count': 1, 'stride': 1}, 'VTC_PLLEN_EDGE0': {'value': 29, 'count': 1, 'stride': 1}, 'VTC_PLLEN_EDGE1': {'value': 30, 'count': 1, 'stride': 1}, 'VTC_SPARE5_EDGE0': {'value': 32, 'count': 1, 'stride': 1}, 'VTC_SPARE5_EDGE1': {'value': 33, 'count': 1, 'stride': 1}, 'VTC_SPARE5_EDGE2': {'value': 34, 'count': 1, 'stride': 1}, 'VTC_THSYNC_EDGE0': {'value': 25, 'count': 1, 'stride': 1}, 'VTC_THSYNC_EDGE1': {'value': 26, 'count': 1, 'stride': 1}, 'VTC_VBLANK_EDGE0': {'value': 18, 'count': 1, 'stride': 1}, 'VTC_VBLANK_EDGE1': {'value': 19, 'count': 1, 'stride': 1}, 'VTC_VID_CNT': {'value': 0, 'count': 1, 'stride': 1}, 'VTC_VSYNC_EDGE0': {'value': 23, 'count': 1, 'stride': 1}, 'VTC_VSYNC_EDGE1': {'value': 24, 'count': 1, 'stride': 1}}
TESTS = []


def decode(name, value):
    """Field name -> value for a register or word."""
    return {f: (value >> lo) & ((1 << (hi - lo + 1)) - 1) for f, (hi, lo) in FIELDS[name].items()}


def encode(name, **fields):
    v = 0
    for f, x in fields.items():
        hi, lo = FIELDS[name][f]
        if x >> (hi - lo + 1):
            raise ValueError('%s.%s: %d does not fit' % (name, f, x))
        v |= x << lo
    return v


def describe(name, value):
    """decode, with enum labels where the field has an enum."""
    out = {}
    for f, x in decode(name, value).items():
        e = ENUMS.get(FIELD_ENUM.get('%s.%s' % (name, f)))
        out[f] = e.get(x, x) if e else x
    return out


def selftest():
    for name, value, expect in TESTS:
        got = decode(name, value)
        for f, want in expect.items():
            assert got[f] == want, (name, hex(value), f, got[f], want)
    return len(TESTS)


if __name__ == '__main__':
    print('%s: %d vectors ok' % (UNIT, selftest()))
