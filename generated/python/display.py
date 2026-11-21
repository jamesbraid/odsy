"""generated from devices/display/registers.toml by defs-gen - do not edit, change the source
SPDX-License-Identifier: BSD-3-Clause
defs-gen 2
input sha256 4cc29ae5ce9f42cc9b5a6f5020f55ac0a52f4dace414858d2758b1deb2a71c60
VPro (Odyssey) display registers (publish-safe subset)"""

UNIT = 'display'
REGISTERS = {'cmap': {'offset': 0, 'access': 'w', 'width': 32, 'count': 8192, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'line_table': {'offset': 8192, 'access': 'w', 'width': 32, 'count': 1024, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'frame_table': {'offset': 9216, 'access': 'w', 'width': 32, 'count': 128, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'vtg_ctl': {'offset': 9345, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'vtg_init_state': {'offset': 9346, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'vtg_chan_en': {'offset': 9347, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'cursor_image_a': {'offset': 9472, 'access': 'w', 'width': 32, 'count': 128, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'cursor_pos': {'offset': 9600, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'cursor_ctl': {'offset': 9601, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'cursor_colors': {'offset': 9616, 'access': 'w', 'width': 32, 'count': 15, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'cursor_image_b': {'offset': 9664, 'access': 'w', 'width': 32, 'count': 64, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'datapath_ctl': {'offset': 9728, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'dac_data': {'offset': 9729, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'aux_ctl': {'offset': 9856, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'dac_ctl': {'offset': 9920, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'gen_sync_detect': {'offset': 10176, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'gen_sync_detect_level': {'offset': 10177, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'gen_pattern_hi_lo': {'offset': 10178, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'gen_pattern_hi_hi': {'offset': 10179, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'gen_pattern_lo_lo': {'offset': 10180, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'gen_pattern_lo_hi': {'offset': 10181, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'gen_phase_lo': {'offset': 10182, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'gen_phase_hi': {'offset': 10183, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'gen_hmask_lo': {'offset': 10184, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'gen_hmask_hi': {'offset': 10185, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'gen_bp_clamp': {'offset': 10186, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'gen_clocking': {'offset': 10187, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'genlock_ctl': {'offset': 10188, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'genlock_status': {'offset': 10189, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'mode_table': {'offset': 10496, 'access': 'w', 'width': 32, 'count': 37, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'established'}, 'cmap_unit_ctl': {'offset': 10537, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'cmap_override': {'offset': 10538, 'access': 'w', 'width': 32, 'count': 3, 'stride': 1, 'space': 'display_regs', 'reset': 'unknown', 'grade': 'inferred'}}
WORDS = {}
FIELDS = {'cmap': {'top': (31, 30), 'r': (29, 20), 'g': (19, 10), 'b': (9, 0)}, 'line_table': {'e1_end': (31, 31), 'e1_duration': (30, 24), 'e1_levels': (23, 16), 'e0_end': (15, 15), 'e0_duration': (14, 8), 'e0_levels': (7, 0)}, 'frame_table': {'repeat': (31, 16), 'position': (15, 0)}, 'vtg_ctl': {'locked': (1, 1)}, 'vtg_init_state': {'blank_gate': (5, 5)}, 'vtg_chan_en': {'blank_gate_5': (5, 5), 'blank_gate_1': (1, 1), 'blank_gate_0': (0, 0)}, 'cursor_image_a': {}, 'cursor_pos': {'x': (31, 16), 'y': (15, 0)}, 'cursor_ctl': {'toggle': (5, 5), 'dual_head': (4, 4), 'field_seq': (3, 3), 'crosshair': (2, 2), 'bit1': (1, 1), 'enable': (0, 0)}, 'cursor_colors': {'top': (31, 30), 'r': (29, 20), 'g': (19, 10), 'b': (9, 0)}, 'cursor_image_b': {}, 'datapath_ctl': {'bit7': (7, 7), 'bit6': (6, 6)}, 'dac_data': {'g': (31, 22), 'b': (21, 12), 'r': (11, 2)}, 'aux_ctl': {}, 'dac_ctl': {'comparator_b': (6, 6), 'comparator_g': (5, 5), 'comparator_r': (4, 4), 'gain': (1, 1), 'blank': (0, 0)}, 'gen_sync_detect': {'pulse_skip': (31, 24), 'first_pulse_level': (23, 23), 'enable_high_pulse': (22, 22), 'enable_low_pulse': (21, 21), 'sync_source': (20, 19), 'compare_tolerance': (18, 1), 'frame_detect': (0, 0)}, 'gen_sync_detect_level': {}, 'gen_pattern_hi_lo': {}, 'gen_pattern_hi_hi': {}, 'gen_pattern_lo_lo': {}, 'gen_pattern_lo_hi': {}, 'gen_phase_lo': {'lines_low': (31, 24), 'frame_period': (23, 0)}, 'gen_phase_hi': {'enable': (10, 10), 'frames_to_lose': (9, 7), 'frames_to_gain': (6, 4), 'lines_high': (3, 0)}, 'gen_hmask_lo': {'start_low': (31, 24), 'divider': (23, 16), 'line_length': (15, 1), 'edge': (0, 0)}, 'gen_hmask_hi': {'width': (21, 7), 'start_high': (6, 0)}, 'gen_bp_clamp': {'width': (25, 16), 'delay': (15, 1), 'edge': (0, 0)}, 'gen_clocking': {'hrate_div': (31, 2), 'clocking': (1, 0)}, 'genlock_ctl': {'test': (7, 7), 'enabled': (6, 6), 'source_select': (5, 4), 'mux_b': (3, 2), 'mux_a': (1, 0)}, 'genlock_status': {'lost': (1, 1), 'valid': (0, 0)}, 'mode_table': {'top': (31, 25), 'bit24': (24, 24), 'layout': (23, 12), 'pixel_format': (11, 9), 'cmap_group': (8, 4), 'low_code': (3, 0)}, 'cmap_unit_ctl': {}, 'cmap_override': {}}
ENUMS = {'mode_table.pixel_format': {1: 'rgb10', 2: 'rgb8', 3: 'rgb5', 4: 'rgb4', 6: 'rgb10_alt'}, 'mode_table.cmap_group': {26: 'gamma'}}
FIELD_ENUM = {'mode_table.pixel_format': 'mode_table.pixel_format', 'mode_table.cmap_group': 'mode_table.cmap_group'}
CONSTANTS = {}
TESTS = [('mode_table', 4938150, {'low_code': 6, 'cmap_group': 26, 'pixel_format': 4, 'layout': 1205}), ('mode_table', 4939520, {'low_code': 0, 'cmap_group': 16, 'pixel_format': 7, 'layout': 1205}), ('mode_table', 5378982, {'low_code': 6, 'cmap_group': 26, 'pixel_format': 1, 'layout': 1313}), ('mode_table', 5379472, {'low_code': 0, 'cmap_group': 25, 'pixel_format': 2, 'layout': 1313}), ('mode_table', 6294950, {'low_code': 6, 'cmap_group': 26, 'pixel_format': 6, 'layout': 1536}), ('mode_table', 9853351, {'low_code': 7, 'cmap_group': 26, 'pixel_format': 4, 'layout': 2405})]


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
