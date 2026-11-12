"""generated from defs/pbj.toml by defs-gen - do not edit, change the source
VPro (Odyssey) PB&J display back end (publish-safe subset)"""

UNIT = 'pbj'
REGISTERS = {'hif_ctl': {'offset': 9984, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pbj_regs', 'reset': 'unknown', 'grade': 'established'}, 'id': {'offset': 9985, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pbj_regs', 'reset': 'unknown', 'grade': 'established'}, 'i2c_opt_ctl': {'offset': 10048, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pbj_regs', 'reset': 'unknown', 'grade': 'established'}, 'i2c_opt_data': {'offset': 10049, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pbj_regs', 'reset': 'unknown', 'grade': 'established'}, 'i2c_main_ctl': {'offset': 10112, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pbj_regs', 'reset': 'unknown', 'grade': 'established'}, 'i2c_main_data': {'offset': 10113, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pbj_regs', 'reset': 'unknown', 'grade': 'established'}, 'fb_base_b': {'offset': 10240, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pbj_regs', 'reset': 'unknown', 'grade': 'established'}, 'fb_base_a': {'offset': 10241, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pbj_regs', 'reset': 'unknown', 'grade': 'established'}, 'scan_width': {'offset': 10242, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pbj_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'scan_height': {'offset': 10243, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pbj_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'scan_cfg_a': {'offset': 10244, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pbj_regs', 'reset': 'unknown', 'grade': 'established'}, 'scan_cfg_b': {'offset': 10245, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pbj_regs', 'reset': 'unknown', 'grade': 'unknown'}, 'scan_cfg_c': {'offset': 10246, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pbj_regs', 'reset': 'unknown', 'grade': 'established'}, 'fb_pitch': {'offset': 10247, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pbj_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'fb_depth': {'offset': 10249, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pbj_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'dcb_ctl': {'offset': 11008, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pbj_regs', 'reset': 'unknown', 'grade': 'inferred'}}
WORDS = {'FIFO_HDR': {'width': 32, 'grade': 'established'}}
FIELDS = {'hif_ctl': {'clock_run': (18, 18), 'clock_sel_b': (17, 15), 'clock_sel_a': (14, 12), 'low_bits': (11, 0)}, 'id': {'no_option': (10, 10), 'version': (2, 0)}, 'i2c_opt_ctl': {'bit12': (12, 12), 'bit10': (10, 10), 'bit8': (8, 8)}, 'i2c_opt_data': {'bit9': (9, 9)}, 'i2c_main_ctl': {'bit12': (12, 12), 'bit10': (10, 10), 'bit8': (8, 8)}, 'i2c_main_data': {'bit9': (9, 9)}, 'fb_base_b': {}, 'fb_base_a': {}, 'scan_width': {}, 'scan_height': {}, 'scan_cfg_a': {}, 'scan_cfg_b': {}, 'scan_cfg_c': {}, 'fb_pitch': {}, 'fb_depth': {'code': (2, 0)}, 'dcb_ctl': {'dcb_clock': (2, 0)}, 'FIFO_HDR': {'type': (31, 28), 'address': (27, 14), 'count': (13, 0)}}
ENUMS = {'fb_depth.code': {2: 'bpp8', 3: 'bpp16', 4: 'bpp32'}, 'FIFO_HDR.type': {3: 'now', 7: 'synced'}}
FIELD_ENUM = {'fb_depth.code': 'fb_depth.code', 'FIFO_HDR.type': 'FIFO_HDR.type'}
CONSTANTS = {'ADDR_BITS': {'value': 14, 'count': 1, 'stride': 1}, 'CLOCK_A_REG_DPA_CONTROL': {'value': 5, 'count': 1, 'stride': 1}, 'CLOCK_A_REG_DPA_OFFSET': {'value': 4, 'count': 1, 'stride': 1}, 'CLOCK_A_REG_FEEDBACK_DIV0': {'value': 2, 'count': 1, 'stride': 1}, 'CLOCK_A_REG_FEEDBACK_DIV1': {'value': 3, 'count': 1, 'stride': 1}, 'CLOCK_A_REG_INPUT_CONTROL': {'value': 0, 'count': 1, 'stride': 1}, 'CLOCK_A_REG_LOOP_CONTROL': {'value': 1, 'count': 1, 'stride': 1}, 'CLOCK_A_REG_OSC_DIV': {'value': 7, 'count': 1, 'stride': 1}, 'CLOCK_A_REG_OUTPUT_ENABLE': {'value': 6, 'count': 1, 'stride': 1}, 'CLOCK_I2C_ADDR_A': {'value': 38, 'count': 1, 'stride': 1}, 'CLOCK_I2C_ADDR_B': {'value': 88, 'count': 1, 'stride': 1}, 'CLOCK_WRITE_COUNT': {'value': 8, 'count': 1, 'stride': 1}, 'FIFO_DEPTH_DWORDS': {'value': 24, 'count': 1, 'stride': 1}, 'READ_SLOT_BYTES': {'value': 8, 'count': 1, 'stride': 1}}
TESTS = [('hif_ctl', 447456, {'clock_run': 1, 'clock_sel_b': 5, 'clock_sel_a': 5, 'low_bits': 992}), ('FIFO_HDR', 939525120, {'count': 1024, 'address': 8192, 'type': 3}), ('FIFO_HDR', 956301440, {'count': 128, 'address': 9216, 'type': 3}), ('FIFO_HDR', 960495744, {'count': 128, 'address': 9472, 'type': 3}), ('FIFO_HDR', 962592769, {'count': 1, 'address': 9600, 'type': 3}), ('FIFO_HDR', 962854927, {'count': 15, 'address': 9616, 'type': 3}), ('FIFO_HDR', 963641408, {'count': 64, 'address': 9664, 'type': 3}), ('FIFO_HDR', 967835649, {'count': 1, 'address': 9920, 'type': 3}), ('FIFO_HDR', 2036334593, {'count': 1, 'address': 9600, 'type': 7}), ('FIFO_HDR', 2036350977, {'count': 1, 'address': 9601, 'type': 7})]


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
