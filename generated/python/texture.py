"""generated from devices/texture/registers.toml by defs-gen - do not edit, change the source
VPro (Odyssey) "Buzz" texture state: environment,"""

UNIT = 'texture'
REGISTERS = {}
WORDS = {'CLASS': {'width': 32, 'grade': 'established'}, 'COLTAB_A': {'width': 32, 'grade': 'unknown'}, 'COLTAB_B': {'width': 32, 'grade': 'unknown'}, 'ENV_W0': {'width': 32, 'grade': 'unknown'}, 'ENV_W1': {'width': 32, 'grade': 'unknown'}, 'ENV_W2': {'width': 32, 'grade': 'unknown'}, 'ENV_W3': {'width': 32, 'grade': 'unknown'}, 'ENV_W4': {'width': 32, 'grade': 'unknown'}, 'FIRSTLEVEL': {'width': 32, 'grade': 'unknown'}, 'FMT': {'width': 32, 'grade': 'established'}, 'LEVEL3D_W2': {'width': 32, 'grade': 'established'}, 'LOD': {'width': 32, 'grade': 'established'}, 'MODE_W0': {'width': 32, 'grade': 'unknown'}, 'MODE_W1': {'width': 32, 'grade': 'unknown'}, 'MODE_W2': {'width': 32, 'grade': 'unknown'}, 'MODE_W3': {'width': 32, 'grade': 'unknown'}, 'MODE_W5': {'width': 32, 'grade': 'unknown'}, 'MODE_W6': {'width': 32, 'grade': 'unknown'}, 'OFFCODE': {'width': 32, 'grade': 'established'}, 'SIZE': {'width': 32, 'grade': 'established'}, 'TARGET': {'width': 32, 'grade': 'unknown'}, 'WRAPAUX': {'width': 32, 'grade': 'established'}}
FIELDS = {'CLASS': {'value': (2, 0)}, 'COLTAB_A': {'kept': (31, 24), 'red': (23, 12), 'green': (11, 0)}, 'COLTAB_B': {'kept': (31, 24), 'blue': (23, 12), 'alpha': (11, 0)}, 'ENV_W0': {'unwritten': (31, 3), 'mode': (2, 0)}, 'ENV_W1': {'top': (31, 24), 'red': (23, 12), 'green': (11, 0)}, 'ENV_W2': {'top': (31, 24), 'blue': (23, 12), 'alpha': (11, 0)}, 'ENV_W3': {'bits': (31, 0)}, 'ENV_W4': {'bits': (31, 0)}, 'FIRSTLEVEL': {'unwritten': (31, 6), 'index': (5, 0)}, 'FMT': {'index': (5, 0)}, 'LEVEL3D_W2': {'slice_exp': (11, 0)}, 'LOD': {'value': (13, 0)}, 'MODE_W0': {'detail_modulate': (31, 31), 'bit30': (30, 30), 'detail_level': (29, 25), 'unwritten': (24, 15), 'log2_s': (14, 10), 'log2_t': (9, 5), 'log2_r': (4, 0)}, 'MODE_W1': {'top': (31, 24), 'wrap_aux': (23, 18), 'bit17': (17, 17), 'max_clamp': (16, 0)}, 'MODE_W2': {'top': (31, 24), 'wrap_aux': (23, 18), 'bit17': (17, 17), 'max_clamp': (16, 0)}, 'MODE_W3': {'top': (31, 24), 'wrap_aux': (23, 18), 'bit17': (17, 17), 'max_clamp': (16, 0)}, 'MODE_W5': {'top': (31, 24), 'red': (23, 12), 'green': (11, 0)}, 'MODE_W6': {'top': (31, 25), 'has_offset': (24, 24), 'blue': (23, 12), 'alpha': (11, 0)}, 'OFFCODE': {'value': (2, 0)}, 'SIZE': {'code': (1, 0)}, 'TARGET': {'bit11': (11, 11), 'active': (10, 10), 'dim3': (5, 5), 'dim2': (4, 4), 'dim1': (3, 3)}, 'WRAPAUX': {'value': (5, 0)}}
ENUMS = {'CLASS.value': {0: 'none', 1: 'alpha', 2: 'luminance', 3: 'luminance_alpha', 4: 'intensity', 5: 'rgb', 6: 'rgba'}, 'ENV_W0.mode': {1: 'replace', 2: 'modulate', 3: 'decal', 4: 'blend', 5: 'add'}, 'FMT.index': {0: 'a8', 1: 'a8_alt', 2: 'i8', 3: 'i8_alt', 4: 'l8', 5: 'l8_alt', 6: 'r3g3b2', 7: 'r3g3b2_alt', 8: 'a12', 9: 'i12', 10: 'l12', 11: 'l8a8', 12: 'rgba4', 13: 'rgb5a1', 16: 'l12a12', 17: 'rgba8', 18: 'rgb10a2', 32: 'rgba12_move', 33: 'rgba12', 48: 'icc_rgb', 49: 'icc_rgba'}, 'OFFCODE.value': {0: 'none', 2: 'code2'}, 'SIZE.code': {0: 'b2', 1: 'b4', 2: 'b8'}, 'WRAPAUX.value': {0: 'repeat_clamp', 1: 'edge', 63: 'border'}}
FIELD_ENUM = {'CLASS.value': 'CLASS.value', 'ENV_W0.mode': 'ENV_W0.mode', 'FMT.index': 'FMT.index', 'OFFCODE.value': 'OFFCODE.value', 'SIZE.code': 'SIZE.code', 'WRAPAUX.value': 'WRAPAUX.value'}
CONSTANTS = {'BORDER_MAX': {'value': 1, 'count': 1, 'stride': 1}, 'COLOUR12_BITS': {'value': 12, 'count': 1, 'stride': 1}, 'COLOUR12_LANE_MASK': {'value': 4095, 'count': 1, 'stride': 1}, 'COLOUR12_MAX': {'value': 4095, 'count': 1, 'stride': 1}, 'COLOUR12_ROUND_SCALE': {'value': 4095, 'count': 1, 'stride': 1}, 'COLTAB_A_BASE': {'value': 15872, 'count': 1, 'stride': 1}, 'COLTAB_B_BASE': {'value': 15888, 'count': 1, 'stride': 1}, 'COLTAB_C_BASE': {'value': 15904, 'count': 1, 'stride': 1}, 'COLTAB_D_BASE': {'value': 15920, 'count': 1, 'stride': 1}, 'COLTAB_ENTRIES': {'value': 256, 'count': 1, 'stride': 1}, 'COLTAB_MAX_WIDTH': {'value': 256, 'count': 1, 'stride': 1}, 'COLTAB_UPLOAD_LAST': {'value': 15, 'count': 1, 'stride': 1}, 'COLTAB_UPLOAD_SHIFT': {'value': 4, 'count': 1, 'stride': 1}, 'COLTAB_UPLOAD_WORDS': {'value': 16, 'count': 1, 'stride': 1}, 'COLTAB_WORD_MASK': {'value': 15, 'count': 1, 'stride': 1}, 'DETAIL_COUNT_MAX': {'value': 15, 'count': 1, 'stride': 1}, 'DETAIL_FIRST': {'value': 49, 'count': 1, 'stride': 1}, 'ENV_WORDS': {'value': 5, 'count': 1, 'stride': 1}, 'FMT_INDEX_MAX_USED': {'value': 49, 'count': 1, 'stride': 1}, 'LEVEL_TABLE_ENTRIES': {'value': 64, 'count': 1, 'stride': 1}, 'LOD_BITS': {'value': 14, 'count': 1, 'stride': 1}, 'LOD_LIMIT': {'value': 15, 'count': 1, 'stride': 1}, 'LOD_MAX_DEFAULT': {'value': 3840, 'count': 1, 'stride': 1}, 'LOD_MIN_DEFAULT': {'value': 12544, 'count': 1, 'stride': 1}, 'LOD_WORDS': {'value': 4, 'count': 1, 'stride': 1}, 'MODE_WORDS': {'value': 7, 'count': 1, 'stride': 1}, 'OFFSET_WORDS': {'value': 3, 'count': 1, 'stride': 1}, 'OP_FIRSTLEVEL': {'value': 1030, 'count': 1, 'stride': 1}, 'OP_TARGET': {'value': 1029, 'count': 1, 'stride': 1}, 'OP_TEXENV': {'value': 5147, 'count': 1, 'stride': 1}, 'OP_TEXLOD': {'value': 4115, 'count': 1, 'stride': 1}, 'OP_TEXMODE': {'value': 7190, 'count': 1, 'stride': 1}, 'OP_TEXOFFSET': {'value': 3134, 'count': 1, 'stride': 1}, 'PIXCLASS_COUNT': {'value': 18, 'count': 1, 'stride': 1}, 'PRIMARY_LAST': {'value': 15, 'count': 1, 'stride': 1}, 'PRIMARY_LEVELS_MAX': {'value': 16, 'count': 1, 'stride': 1}, 'SCRATCH_LEVEL': {'value': 60, 'count': 1, 'stride': 1}, 'SIZE_MAX': {'value': 32768, 'count': 1, 'stride': 1}, 'SLICE_STRIDE_BASE': {'value': 32, 'count': 1, 'stride': 1}, 'TABLE_LAST': {'value': 63, 'count': 1, 'stride': 1}, 'TILE_TEXELS': {'value': 16, 'count': 1, 'stride': 1}, 'UNUSED_FIRST': {'value': 16, 'count': 1, 'stride': 1}, 'UNUSED_LAST': {'value': 48, 'count': 1, 'stride': 1}}
TESTS = [('ENV_W1', 16777215, {'red': 4095, 'green': 4095}), ('ENV_W2', 16777215, {'blue': 4095, 'alpha': 4095}), ('LOD', 3840, {'value': 3840}), ('LOD', 12544, {'value': 12544})]


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
