"""generated from devices/dma/registers.toml by defs-gen - do not edit, change the source
VPro (Odyssey) "Buzz" graphics ASIC: host DMA engine"""

UNIT = 'dma'
REGISTERS = {}
WORDS = {'ENTRY_W7': {'width': 32, 'grade': 'inferred'}, 'KICK_A_HI': {'width': 32, 'grade': 'established'}, 'KICK_A_LO': {'width': 32, 'grade': 'established'}, 'KICK_B_HI': {'width': 32, 'grade': 'established'}, 'KICK_B_LO': {'width': 32, 'grade': 'established'}, 'PAGE_W0': {'width': 32, 'grade': 'established'}, 'PAGE_W1': {'width': 32, 'grade': 'inferred'}, 'TAG_W0': {'width': 32, 'grade': 'inferred'}, 'TAG_W1': {'width': 32, 'grade': 'established'}}
FIELDS = {'ENTRY_W7': {'irq_after': (31, 31), 'differs': (30, 30), 'fixed29': (29, 29), 'fixed28': (28, 28), 'transform': (27, 27), 'fixed25': (25, 25), 'read_dir': (24, 24)}, 'KICK_A_HI': {'id': (11, 0)}, 'KICK_A_LO': {'addr_hi': (29, 23), 'addr_lo': (16, 0)}, 'KICK_B_HI': {'addr_hi': (29, 23), 'addr_lo': (16, 0)}, 'KICK_B_LO': {'zero': (31, 0)}, 'PAGE_W0': {'addr': (31, 0)}, 'PAGE_W1': {'addr_lo': (31, 16), 'count': (15, 0)}, 'TAG_W0': {'flag': (15, 15), 'slot': (14, 0)}, 'TAG_W1': {'marker': (15, 8), 'tag': (7, 0)}}
ENUMS = {'ENTRY_W7.transform': {0: 'plain', 1: 'transform'}, 'ENTRY_W7.read_dir': {0: 'write', 1: 'read'}, 'KICK_A_HI.id': {3585: 'plain', 3587: 'variant'}, 'TAG_W0.flag': {1: 'set'}, 'TAG_W1.marker': {90: 'tag'}}
FIELD_ENUM = {'ENTRY_W7.transform': 'ENTRY_W7.transform', 'ENTRY_W7.read_dir': 'ENTRY_W7.read_dir', 'KICK_A_HI.id': 'KICK_A_HI.id', 'TAG_W0.flag': 'TAG_W0.flag', 'TAG_W1.marker': 'TAG_W1.marker'}
CONSTANTS = {'DONE_FLAG_BIT': {'value': 11, 'count': 1, 'stride': 1}, 'ENTRY_BYTES': {'value': 128, 'count': 1, 'stride': 1}, 'ENTRY_HDR_BYTES': {'value': 32, 'count': 1, 'stride': 1}, 'ENTRY_MAX_BYTES': {'value': 147456, 'count': 1, 'stride': 1}, 'ENTRY_PAGES_MAX': {'value': 12, 'count': 1, 'stride': 1}, 'KICK_ADDR_BITS': {'value': 48, 'count': 1, 'stride': 1}, 'PAGE_CHUNK_BYTES': {'value': 16384, 'count': 1, 'stride': 1}, 'PAGE_ENTRY_BYTES': {'value': 8, 'count': 1, 'stride': 1}, 'TAG_CMD_COUNT': {'value': 2, 'count': 1, 'stride': 1}, 'TAG_CMD_ID': {'value': 602, 'count': 1, 'stride': 1}, 'TAG_CMD_LOW16': {'value': 2650, 'count': 1, 'stride': 1}}
TESTS = [('KICK_A_HI', 3585, {'id': 3585}), ('KICK_A_HI', 3587, {'id': 3587}), ('TAG_W1', 23040, {'marker': 90, 'tag': 0})]


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
