#!/usr/bin/env python3
"""Decode the line and frame tables of every VPro .vfo file and check them against the file's own header.

A line type is a run of 16-bit entries ending at the first one with bit 15 set. A timed
entry holds a duration in pixels (bits 14:8) and a low byte; an entry that follows a
timed entry whose low byte has bit 7 clear is an event and takes no time. Bits 6:0 of a
timed entry's low byte are the levels of the generator outputs A14 to A20 of
usr/gfx/ucode/vfc/rules/VPro_Board.def (VINT, SWP_RDY_LCK, END_OF_LINE, HIF_V_UPDATE_EN,
XMP_CBLANK_N, END_OF_FIELD, REQUEST_SRC). The frame table gives (start, repeat) pairs.

    retools/tools/re-run python3 tools/vfo_line_tables.py [ROOT]

Per file it checks that every line type sums to TotalPixelsPerLine, that the repeats sum
to TotalLinesPerFrame, that VINT is one pulse from the start of line 1 to the start of
line 2 and SWP_RDY_LCK one from line 0 to line 3, and that END_OF_FIELD rises once per
field (once for full-screen stereo). Exit status 1 if any file fails.
"""
import glob
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.realpath(__file__)), "..", "retools", "tools", "odsy"))
import display_files  # noqa: E402

VINT, SWP_RDY_LCK, END_OF_FIELD = 0, 1, 5


def line_type(seq, start):
    ents = []
    while True:
        ents.append(seq[start + len(ents)])
        if ents[-1] & 0x8000:
            return ents


def timed_segments(ents):
    """Return (total pixels, [(start px, end px, low byte)]) with the events left out."""
    px, segs, event_next = 0, [], False
    for e in ents:
        if event_next:
            event_next = False
            continue
        segs.append((px, px + ((e >> 8) & 0x7F), e & 0xFF))
        px += (e >> 8) & 0x7F
        event_next = not e & 0x80
    return px, segs


def frame_lines(v):
    seq = [x & 0xFFFF for x in v["LineSeqTab"]]
    ft = v["FrameTab"]
    lines, bad = [], []
    for pos, rep in zip(ft[0::2], ft[1::2]):
        if (pos, rep) == (0, 0):
            break
        px, segs = timed_segments(line_type(seq, pos * 2))
        if px != v["TotalPixelsPerLine"]:
            bad.append((pos * 2, px))
        lines += [segs] * rep
    return lines, bad


def high_runs(lines, bit):
    """(line, pixel) of each rise and the next fall of one low-byte bit; None for a run still open at the end."""
    runs, level, start = [], 0, None
    for ln, segs in enumerate(lines):
        for px, _, low in segs:
            if (low >> bit) & 1 != level:
                level ^= 1
                if level:
                    start = (ln, px)
                else:
                    runs.append((start, (ln, px)))
    if level:
        runs.append((start, None))
    return runs


def main():
    root = sys.argv[1] if len(sys.argv) > 1 else "root"
    failed = 0
    for path in sorted(glob.glob(os.path.join(root, "usr/gfx/ucode/ODSY/vof/*.vfo"))):
        v = display_files.load(path)[4]
        lines, bad = frame_lines(v)
        vint, swp = high_runs(lines, VINT), high_runs(lines, SWP_RDY_LCK)
        eof = len(high_runs(lines, END_OF_FIELD))
        fields = 1 if v.get("FormatInfo_FullScreenStereo") else v["FieldsPerFrame"]
        problems = []
        if bad:
            problems.append("line types with the wrong pixel total %s" % bad)
        if len(lines) != v["TotalLinesPerFrame"]:
            problems.append("%d lines, header says %d" % (len(lines), v["TotalLinesPerFrame"]))
        if vint != [((1, 0), (2, 0))]:
            problems.append("VINT %s" % vint)
        if swp != [((0, 0), (3, 0))]:
            problems.append("SWP_RDY_LCK %s" % swp)
        if eof != fields:
            problems.append("END_OF_FIELD rises %d, expected %d" % (eof, fields))
        print(os.path.basename(path), "lines", len(lines), "fields", v["FieldsPerFrame"],
              "VINT per frame", len(vint), "END_OF_FIELD rises", eof, "FAIL " + "; ".join(problems) if problems else "ok")
        failed += bool(problems)
    return 1 if failed else 0


if __name__ == "__main__":
    sys.exit(main())
