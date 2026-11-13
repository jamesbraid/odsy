#!/usr/bin/env python3
"""Check the line-table entry classification of devices/display/README.md against every .vfo file.

Each VPro .vfo file of the install stores its line table as 32-bit big-endian words,
one 16-bit table entry per word, after a count word. This script finds the table by
shape (a plausible count, entries that fit 16 bits, each line type ending at an
entry with bit 15 set and followed by a trailer equal to its own start), classifies
the entries into events and timed entries, and prints the timed total of every line
type next to the values of the file's header that equal it. It then reads the
frame table that follows (a count, position and repeat pairs ending in (0, 0), and
the pixel clock in hertz) and prints the frame rate clock / (lines x pixels).

    python3 tools/vfo_line_tables.py [ROOT]

ROOT defaults to root/. Files whose table this shape test does not find (the
dual-channel "2@" formats and a few others) are listed as "no table".
"""
import glob
import os
import struct
import sys


def is_event(entry):
    high = (entry >> 12) & 7
    low = entry & 0xFF
    return high != 0 and bool(low & 4 or (low & 0x18) == 0x18)


def timed_total(entries):
    total = 0
    for i, e in enumerate(entries):
        if is_event(e):
            continue
        # 0x458a is an event in the first half of a line (previous entry's low
        # byte has bit 7 clear) and a 69-pixel timed entry in the second half.
        if (e & 0x7FFF) == 0x458A and i and not entries[i - 1] & 0x80:
            continue
        total += (e >> 8) & 0x7F
    return total


def split_types(seq):
    types, i = [], 0
    while i < len(seq):
        start, ents = i, []
        while i < len(seq):
            ents.append(seq[i])
            i += 1
            if ents[-1] & 0x8000:
                break
        else:
            return None
        trailer = []
        while i < len(seq) and seq[i] < 0x400:
            trailer.append(seq[i])
            i += 1
        types.append((start, ents, trailer))
    for k, (start, _, trailer) in enumerate(types):
        if k and (not trailer or trailer[-1] != start):
            return None
    return types


def find_table(words):
    """Return (line types, index of the word after the table) or None."""
    for p, count in enumerate(words):
        end = p + 1 + count
        if not 40 <= count <= 2048 or end > len(words):
            continue
        seq = words[p + 1:end]
        if max(seq) >= 0x10000 or seq[0] < 0x400 or seq[0] & 0x8000:
            continue
        types = split_types(seq)
        if types and len(types) >= 3:
            return types, end
    return None


def main():
    root = sys.argv[1] if len(sys.argv) > 1 else "root"
    for path in sorted(glob.glob(os.path.join(root, "usr/gfx/ucode/ODSY/vof/*.vfo"))):
        data = open(path, "rb").read()
        words = struct.unpack(">%dI" % (len(data) // 4), data[:len(data) // 4 * 4])
        name = os.path.basename(path)
        found = find_table(words)
        if not found:
            print(name, "no table")
            continue
        types, after = found
        sums = [timed_total(e) for _, e, _ in types]
        common = max(set(sums), key=sums.count)
        in_header = common in words[0x1C0 // 4:0x2C0 // 4]
        # The frame table follows the line table: a word count, (position,
        # repeat) pairs ending with (0, 0), then the pixel clock in hertz.
        count = words[after]
        pairs = list(zip(words[after + 1:after + 1 + count:2],
                         words[after + 2:after + 1 + count:2]))
        lines = sum(rep for pos, rep in pairs if (pos, rep) != (0, 0))
        clock = words[after + 1 + count]
        print(name, "types", len(types), "common total", common,
              "in header" if in_header else "NOT in header",
              "uniform" if len(set(sums)) == 1 else "varies %s" % sorted(set(sums)),
              "lines", lines, "clock", clock,
              "rate %.4f" % (clock / (lines * common)))


if __name__ == "__main__":
    main()
