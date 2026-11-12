"""generated from defs/board.toml by defs-gen - do not edit, change the source
VPro (Odyssey) graphics board: widget identity, board"""

UNIT = 'board'
REGISTERS = {}
WORDS = {'HOST_FLOW_MODE': {'width': 32, 'grade': 'established'}, 'MASTER_ID': {'width': 32, 'grade': 'established'}, 'SDRAM_CFG': {'width': 32, 'grade': 'inferred'}, 'STATS_CTL': {'width': 32, 'grade': 'established'}, 'STRAP': {'width': 32, 'grade': 'inferred'}, 'WIDGET_CONTROL': {'width': 32, 'grade': 'established'}, 'WIDGET_ID': {'width': 32, 'grade': 'inferred'}}
FIELDS = {'HOST_FLOW_MODE': {'owner_cpu1': (13, 12), 'owner_cpu0': (11, 10), 'attach_cpu1': (9, 9), 'attach_cpu0': (8, 8)}, 'MASTER_ID': {'bit24': (24, 24), 'master': (23, 20), 'bit18': (18, 18), 'code': (15, 0)}, 'SDRAM_CFG': {'host_id': (22, 19), 'enable': (8, 8), 'reset': (5, 5), 'size': (4, 3), 'banks': (2, 2), 'cas': (1, 1)}, 'STATS_CTL': {'fixed_top': (31, 31), 'fixed_mid': (27, 27), 'select': (10, 8), 'flag_c': (6, 6), 'flag_b': (5, 5), 'flag_a': (4, 4), 'size_exp': (3, 0)}, 'STRAP': {'sdram_size': (31, 30), 'banks': (29, 29), 'cas': (28, 28), 'board_rev': (27, 24), 'command_level': (15, 7), 'display_level': (6, 0)}, 'WIDGET_CONTROL': {'credit': (15, 12), 'big_endian': (9, 9)}, 'WIDGET_ID': {'variant': (31, 31), 'revision': (30, 28)}}
ENUMS = {'SDRAM_CFG.size': {0: 'mb32', 1: 'mb64', 2: 'mb128'}, 'SDRAM_CFG.banks': {0: 'two', 1: 'four'}, 'SDRAM_CFG.cas': {0: 'cas3', 1: 'cas2'}, 'STRAP.sdram_size': {0: 'mb32', 1: 'mb64', 2: 'mb128', 3: 'mb32_alt'}, 'STRAP.banks': {0: 'two', 1: 'four'}, 'STRAP.cas': {0: 'cas3', 1: 'cas2'}}
FIELD_ENUM = {'SDRAM_CFG.size': 'SDRAM_CFG.size', 'SDRAM_CFG.banks': 'SDRAM_CFG.banks', 'SDRAM_CFG.cas': 'SDRAM_CFG.cas', 'STRAP.sdram_size': 'STRAP.sdram_size', 'STRAP.banks': 'STRAP.banks', 'STRAP.cas': 'STRAP.cas'}
CONSTANTS = {'BOARD_ABORT': {'value': 4108, 'count': 1, 'stride': 1}, 'BOARD_BUFFER_B_CLEAR': {'value': 4300, 'count': 1, 'stride': 1}, 'BOARD_BUFFER_B_SET': {'value': 4292, 'count': 1, 'stride': 1}, 'BOARD_BUFFER_B_STATE': {'value': 4308, 'count': 1, 'stride': 1}, 'BOARD_CMD_FIFO_PORT': {'value': 1114112, 'count': 1, 'stride': 1}, 'BOARD_CMD_WINDOW_2': {'value': 1179648, 'count': 1, 'stride': 1}, 'BOARD_CTX_SAVE_ADDR_HI': {'value': 16388, 'count': 1, 'stride': 1}, 'BOARD_CTX_SAVE_ADDR_LO': {'value': 16396, 'count': 1, 'stride': 1}, 'BOARD_CTX_SAVE_PORT': {'value': 1146880, 'count': 1, 'stride': 1}, 'BOARD_DIAG_ADDR_HI': {'value': 16460, 'count': 1, 'stride': 1}, 'BOARD_DIAG_ADDR_LO': {'value': 16468, 'count': 1, 'stride': 1}, 'BOARD_DIAG_MODE': {'value': 16476, 'count': 1, 'stride': 1}, 'BOARD_DISPLAY_FIFO_PORT': {'value': 4194304, 'count': 1, 'stride': 1}, 'BOARD_DISPLAY_ID_POS': {'value': 2308108, 'count': 1, 'stride': 1}, 'BOARD_DISPLAY_ID_VERSION_MASK': {'value': 7, 'count': 1, 'stride': 1}, 'BOARD_ERR_ADDR_HI': {'value': 20, 'count': 1, 'stride': 1}, 'BOARD_ERR_ADDR_LO': {'value': 28, 'count': 1, 'stride': 1}, 'BOARD_ERR_COMMAND': {'value': 68, 'count': 1, 'stride': 1}, 'BOARD_FLAGS': {'value': 4116, 'count': 1, 'stride': 1}, 'BOARD_FLAG_CLEAR': {'value': 4124, 'count': 1, 'stride': 1}, 'BOARD_FLAG_INTR_DISABLE': {'value': 4156, 'count': 1, 'stride': 1}, 'BOARD_FLAG_INTR_ENABLE': {'value': 4148, 'count': 1, 'stride': 1}, 'BOARD_FLOW_CLEAR': {'value': 4228, 'count': 1, 'stride': 1}, 'BOARD_FLOW_CONFIG': {'value': 4212, 'count': 1, 'stride': 1}, 'BOARD_FLOW_OFF': {'value': 4220, 'count': 1, 'stride': 1}, 'BOARD_INTR_CTL_HI': {'value': 4164, 'count': 1, 'stride': 1}, 'BOARD_INTR_CTL_LO': {'value': 4172, 'count': 1, 'stride': 1}, 'BOARD_INTR_DEST_HI': {'value': 52, 'count': 1, 'stride': 1}, 'BOARD_INTR_DEST_LO': {'value': 60, 'count': 1, 'stride': 1}, 'BOARD_INTR_HEADER': {'value': 4188, 'count': 1, 'stride': 1}, 'BOARD_INTR_VECTOR': {'value': 4180, 'count': 1, 'stride': 1}, 'BOARD_LEVELS_STRAPS': {'value': 4204, 'count': 1, 'stride': 1}, 'BOARD_MASTER_ID_A': {'value': 16404, 'count': 1, 'stride': 1}, 'BOARD_MASTER_ID_B': {'value': 16452, 'count': 1, 'stride': 1}, 'BOARD_REQ_TIMEOUT': {'value': 44, 'count': 1, 'stride': 1}, 'BOARD_REQ_TIMEOUT_BITS': {'value': 20, 'count': 1, 'stride': 1}, 'BOARD_REQ_TIMEOUT_MASK': {'value': 1048575, 'count': 1, 'stride': 1}, 'BOARD_SCAN_ADDR_HI': {'value': 4252, 'count': 1, 'stride': 1}, 'BOARD_SCAN_ADDR_LO': {'value': 4260, 'count': 1, 'stride': 1}, 'BOARD_SCAN_CONFIG': {'value': 4236, 'count': 1, 'stride': 1}, 'BOARD_SCAN_GO': {'value': 4268, 'count': 1, 'stride': 1}, 'BOARD_SDRAM_CONFIG': {'value': 4100, 'count': 1, 'stride': 1}, 'BOARD_SHADOW_ADDR_HI': {'value': 16436, 'count': 1, 'stride': 1}, 'BOARD_SHADOW_ADDR_LO': {'value': 16444, 'count': 1, 'stride': 1}, 'BOARD_STARTUP_PROBE_POS': {'value': 2102676, 'count': 1, 'stride': 1}, 'BOARD_STARTUP_PROBE_VALUE': {'value': 3997766, 'count': 1, 'stride': 1}, 'BOARD_STATS_ADDR_HI': {'value': 16412, 'count': 1, 'stride': 1}, 'BOARD_STATS_ADDR_LO': {'value': 16420, 'count': 1, 'stride': 1}, 'BOARD_STATS_CONTROL': {'value': 16428, 'count': 1, 'stride': 1}, 'BOARD_STATUS0': {'value': 4196, 'count': 1, 'stride': 1}, 'BOARD_SWAP_TIMING': {'value': 4284, 'count': 1, 'stride': 1}, 'BOARD_SWAP_TRIGGER': {'value': 4276, 'count': 1, 'stride': 1}, 'BOARD_WIDGET_CONTROL': {'value': 36, 'count': 1, 'stride': 1}, 'BOARD_WIDGET_ID': {'value': 4, 'count': 1, 'stride': 1}, 'BOARD_WIDGET_STATUS': {'value': 12, 'count': 1, 'stride': 1}, 'BOARD_XBAR_INTR_CONFIG': {'value': 92, 'count': 1, 'stride': 1}, 'HOST_FLOW_MODE_OFFSET': {'value': 64, 'count': 1, 'stride': 1}, 'MASTER_ID_CODE_VALUE': {'value': 18, 'count': 1, 'stride': 1}, 'PIO_WINDOW_BYTES': {'value': 4198400, 'count': 1, 'stride': 1}, 'REV_TYPE_B_BIAS': {'value': 8, 'count': 1, 'stride': 1}, 'RGBA12_MIN_MEMORY_MB': {'value': 128, 'count': 1, 'stride': 1}, 'STATS_CTL_FIXED_BITS': {'value': 2281701376, 'count': 1, 'stride': 1}, 'WIDGET_ID_TYPE_A_FIRST': {'value': 1, 'count': 1, 'stride': 1}, 'WIDGET_ID_TYPE_A_LAST': {'value': 3, 'count': 1, 'stride': 1}, 'WIDGET_ID_TYPE_B_FIRST': {'value': 9, 'count': 1, 'stride': 1}, 'WIDGET_ID_TYPE_B_LAST': {'value': 15, 'count': 1, 'stride': 1}, 'WIDGET_ID_TYPE_MASK': {'value': 15, 'count': 1, 'stride': 1}, 'WIDGET_ID_TYPE_SHIFT': {'value': 28, 'count': 1, 'stride': 1}, 'WIDGET_MFR': {'value': 35, 'count': 1, 'stride': 1}, 'WIDGET_PART': {'value': 49171, 'count': 1, 'stride': 1}}
TESTS = [('STATS_CTL', 2281701376, {'fixed_mid': 1, 'fixed_top': 1}), ('WIDGET_CONTROL', 16896, {'big_endian': 1, 'credit': 4})]


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
