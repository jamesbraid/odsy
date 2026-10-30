# Raster rules

How BUZZ turns transformed vertices into pixels. No held document gives these rules. The VPro field diagnostics carry an expected value for them: each drawing test in `odydiags` (Internal Support Tools 2.7, 6.5.15 build) replays a command stream recorded from the board's C simulator, and `usr/diags/ody/checksum/<test>.SUM` (1280 x 1024) and `<test>.sml` (128 x 64) are the frames that simulator drew, with their CRC-32 in `csumlist` and `csumlist.sml` (`ucode/buzz_isa.md`, "Pass 18"). A rule set that rebuilds a stored frame from its stream, with the CRC-32 matching, reproduces the vendor's simulation of the board for that stream's state.

Labels. **established** means a rule set containing the rule rebuilds the named frame with its CRC matching, and changing that rule alone makes the frame differ (the count of differing pixels is given). It is established for the state the test draws under, which each entry names. **Not tested** means every alternative tried gives the same frame, so the frames do not choose. **inferred** means partial agreement or reasoning; the pixel-difference count is given. The stored frames are the simulator's output, not a board's; that the simulator matches the board is the premise the diagnostics were built on (`ogltests.htm`), not something these frames show.

Script: `scripts/odydiags_frame_check.py --test points|lines|triangle [--small --program 214,224,234]` rebuilds one frame; `--survey` rebuilds all six frames once for each rule variant and prints the differing-pixel counts (`ucode/runs/odydiags-raster-survey.txt`). Match logs: `ucode/runs/odydiags-{points,lines,triangle}-{1280x1024,128x64}.txt`.

## Frames that match

| Test | Stream (`odydiags` 6.5.15) | Frame | CRC-32 built | `csumlist` | Pixels differing |
|---|---|---|---|---|---|
| points | `__clog_pts` 0x10459aa0 | `points.SUM` | 3f302c5b | 3f302c5b | 0 |
| points | `__clog_pts_small` 0x1048d330 | `points.sml` | f00fd871 | f00fd871 | 0 |
| lines | `__clog_lines` 0x103d2390 | `lines.SUM` | 19e3f918 | 19e3f918 | 0 |
| lines | `__clog_lines_small` 0x10405d00 | `lines.sml` | bad6d581 | bad6d581 | 0 |
| triangle | `__clog_tri` 0x104bb6f0 | `triangle.SUM` | 5f59f531 | 5f59f531 | 0 |
| triangle | `__clog_tri_small` 0x104eed60 | `triangle.sml` | 5cb6222e | 5cb6222e | 0 |

The 128 x 64 streams name a microcode layout no held image has; the runs substitute routines 214, 224 and 234 of `diagxform.bin` (pass 18).

## The state these tests draw under

- **established** (stream decode, `--dump`): one transform program (214, 224, 234, unlit), flat white colour (1.0 in all four components, word 0xc580d015, sent before the primitives), every vertex at z = 0 with w = 1200 after the matrix, block 0x01d scissor boxes covering one screen quarter each, and the primitive word 0x00014400 with operand 0 (points: 15 vertices in six primitives), 1 (lines: 18 vertices, nine segments) or 4 (triangles: 27 vertices, nine triangles). The lines test sends no line-width word other than those the points test sends too, so its lines are the default width.
- Window positions: x lands on whole numbers (320, 370, 420, 470, 1010, 1060, 1110 on the large screen; 32 to 47 on the small) and y lands 1/256 below a whole number (135.99609375) or, on the small screen, 1/256 below a half (8.49609375), from the driver's 1/256 bias in the matrix's y offset. Two lines end at y = 173.329427... and 685.329427..., and the small screen's at 10.829427... and 42.829427... .
- **Not modelled**: the clears (primitive type 0xa, word 0x8f80a92f) are taken to leave zero, which every stored frame's background shows; colour packing beyond white = 0xffffffff; depth (every z is equal).

## Rules

### Position precision

- **established**, all six frames (survey rows "positions to nearest 1/N"): the rasteriser does not round window positions to the nearest point of a grid of 1/2 to 1/128 pixel. Rounding to nearest 1/128 or coarser moves 22 pixels in `points.SUM` (y = 647.996 becomes 648) and 5 to 10 in `points.sml` and `triangle.sml` (y = 8.496 becomes 8.5, a pixel centre on an edge). Nearest 1/256 or finer matches all six.
- **established**, same frames (rows "positions truncated to 1/N"): truncation toward minus infinity to a grid of 1/8 or coarser fails `triangle.SUM` (100 pixels) and coarser grids fail every lines and triangle frame; truncation to 1/16 or finer matches all six.
- **established**, `points.SUM` and `points.sml` against `lines.SUM` (rows "positions one single step low"): if x arrives one single-precision step below 470.0 (469.99997, as a truncated 1/w would leave it) and is not rounded, the points frames differ by 28 and 26 pixels. Rounded to nearest 1/256 it matches. So x reaches the rasteriser as exactly 470.0, either from an exact 1/w or from a position rounding of 1/256 or finer that absorbs the error; the frames do not choose between those.
- So: positions are kept on a grid of 1/256 pixel or finer if rounded to nearest, or 1/16 or finer if truncated. The data's own 1/256 offsets fit a 1/256 grid exactly. Which grid the board uses is **not tested** beyond these bounds.

### Points

- **established**, `points.SUM`, `points.sml` (pass 18): a point of the default size lights the one pixel (floor x, floor y). A point at x = 470.0 exactly lights column 470, so a point on a pixel's left edge belongs to that pixel.

### Line pixel selection

- **established**, `lines.SUM`, `lines.sml`: a one-pixel line lights one pixel per column if |dx| >= |dy| (x-major), else one per row (y-major). The columns (or rows) lit are those whose centre i + 0.5 lies between the two ends. Running instead from the pixel holding the first end to the one before the pixel holding the last end, as an integer line walk from truncated ends would, differs by 9 and 10 pixels.
- **established**, same frames: in each lit column the row is the one holding the line's y at that column's centre (and in each lit row, the column holding x at the row's centre).
- **established**, `lines.SUM` (491 pixels) and `lines.sml` (27 pixels): when the line crosses a centre exactly on a pixel edge, the lower pixel takes it: the vertical lines at x = 470.0, 420.0 and 370.0 light columns 469, 419 and 369. The pixel index is ceil(v) - 1, not floor(v). Points and lines therefore treat an exact edge oppositely: a point at x = 470.0 lights column 470, a line at x = 470.0 lights column 469. This holds given x arrives as exactly 470.0, which the points frames require (position precision, above); with x one single step low and unrounded, both line tie rules match and the points frames fail. Tested on the minor axis x of y-major lines only; no x-major line in these streams crosses a row edge exactly, so the tie on the minor axis y is **not tested**.
- Whether the end pixels are included when a centre falls exactly on an end: **not tested**. No end lies on a centre (ends are whole in x and 1/256 off a whole or half in y).
- **established** as a bound, `lines.SUM`: if the minor coordinate is stepped from the first end by a slope kept to n fraction bits, the frame needs n >= 12 (rows "line: slope to nearest 1/N": 20, 18 and 12 pixels differ at 6, 8 and 10 bits; 12 and 14 bits match; floored at 8 bits, 18 pixels). Exact arithmetic on the snapped ends matches. The slopes here are 0.8 and 0.5, so this bounds the step's precision only for those slopes, under that stepping model.
- Line width above one, stipple, and the last-pixel rule for connected strips: **not tested** (every test line is width one and the stream draws separate segments).

### Triangle coverage

- **established**, `triangle.SUM` (220 pixels) and `triangle.sml` (22 pixels): a triangle lights every pixel whose centre (i + 0.5, j + 0.5) is inside it. Sampling the pixel's lower-left corner instead fails.
- The rule for a centre exactly on an edge (top-left or another): **not tested**. With positions on the 1/256 grid no centre falls on an edge in either stream, and keeping or dropping every edge centre gives the same frames. The small stream would test it only under a coarse position grid, which the position rules above exclude.
- Fill colour: flat white over the whole triangle. Colour interpolation, depth interpolation and their precision: **not tested** (one colour, one depth).
- Dither: **not tested** (one colour, at full intensity).

## What the frames rule out together

One position rounding (nearest on a grid of 1/256 or finer), one point rule (floor), one line rule (centre sampling along the major axis, ties to the lower pixel on the minor axis) and one triangle rule (centre sampling) rebuild all six frames. Each alternative in the survey moves at least one frame. Rules the survey lists as matching every frame are those these tests cannot see.

## Remaining frames

- `checkr3d.SUM` fails its own checksum (CRC-32 0x1f9ba6f3 against `csumlist` 0x2bb8d20c) while `checkr3d.sml` matches `csumlist.sml` (0x4bb39aca). See `docs/open-questions.md`, "The 3D checkerboard frame".
- `aapts`, `aalines`, `alpha` and `blend` draw coloured, antialiased or blended primitives on a grey background (0x333333ff); they are where colour packing, coverage and blend arithmetic would be fitted. Not fitted yet.
