# Raster rules

How BUZZ turns transformed vertices into pixels. No held document gives these rules. The VPro field diagnostics carry an expected value for them: each drawing test in `odydiags` (Internal Support Tools 2.7, 6.5.15 build) replays a command stream recorded from the board's C simulator, and `usr/diags/ody/checksum/<test>.SUM` (1280 x 1024) and `<test>.sml` (128 x 64) are the frames that simulator drew, with their CRC-32 in `csumlist` and `csumlist.sml` (`ucode/buzz_isa.md`, "Pass 18"). A rule set that rebuilds a stored frame from its stream, with the CRC-32 matching, reproduces the vendor's simulation of the board for that stream's state.

Labels. **established** means a rule set containing the rule rebuilds the named frame with its CRC matching, and changing that rule alone makes the frame differ (the count of differing pixels is given). It is established for the state the test draws under, which each entry names. **Not tested** means every alternative tried gives the same frame, so the frames do not choose. **inferred** means partial agreement or reasoning; the pixel-difference count is given. The stored frames are the simulator's output, not a board's; that the simulator matches the board is the premise the diagnostics were built on (`ogltests.htm`), not something these frames show.

Script: `scripts/odydiags_frame_check.py --test points|lines|triangle|alpha [--small --program 214,224,234]` rebuilds one frame; `--survey` rebuilds all eight frames once for each rule variant and prints the differing-pixel counts (`ucode/runs/odydiags-raster-survey.txt`). Match logs: `ucode/runs/odydiags-{points,lines,triangle,alpha}-{1280x1024,128x64}.txt`; the unmatched blend runs are `ucode/runs/odydiags-blend-*.txt`.

## Frames that match

| Test | Stream (`odydiags` 6.5.15) | Frame | CRC-32 built | `csumlist` | Pixels differing |
|---|---|---|---|---|---|
| points | `__clog_pts` 0x10459aa0 | `points.SUM` | 3f302c5b | 3f302c5b | 0 |
| points | `__clog_pts_small` 0x1048d330 | `points.sml` | f00fd871 | f00fd871 | 0 |
| lines | `__clog_lines` 0x103d2390 | `lines.SUM` | 19e3f918 | 19e3f918 | 0 |
| lines | `__clog_lines_small` 0x10405d00 | `lines.sml` | bad6d581 | bad6d581 | 0 |
| triangle | `__clog_tri` 0x104bb6f0 | `triangle.SUM` | 5f59f531 | 5f59f531 | 0 |
| triangle | `__clog_tri_small` 0x104eed60 | `triangle.sml` | 5cb6222e | 5cb6222e | 0 |
| alpha | `__clog_alpha` 0x100d8630 | `alpha.SUM` | ab42896a | ab42896a | 0 |
| alpha | `__clog_alpha_small` 0x101283a0 | `alpha.sml` | 3d08ff2d | 3d08ff2d | 0 |

The 128 x 64 streams name a microcode layout no held image has; the runs substitute routines 214, 224 and 234 of `diagxform.bin` (pass 18).

## The state these tests draw under

- **established** (stream decode, `--dump`): the points, lines and triangle tests use one transform program (214, 224, 234, unlit), flat white colour (1.0 in all four components, word 0xc580d015, sent before the primitives), every vertex at z = 0 with w = 1200 after the matrix, block 0x01d scissor boxes covering one screen quarter each, and the primitive word 0x00014400 with operand 0 (points: 15 vertices in six primitives), 1 (lines: 18 vertices, nine segments) or 4 (triangles: 27 vertices, nine triangles). The lines test sends no line-width word other than those the points test sends too, so its lines are the default width.
- The alpha test draws eight groups of four 26.625 x 21.3 pixel quads (primitive type 7), one group per screen ninth, each quad in one flat colour: (1, 0.1, 0.2, 0.3), (1, 0.5, 0.2, 0.5), (0.3, 1, 0.6, 0.7) and (0.1, 0.2, 1, 1), sent by word 0xc580d015 inside the primitive. Before each group it sets block 0x01e (`docs/tokens.md`) to one comparison with reference 0x800 (0.5): LEQUAL, EQUAL, GEQUAL, GREATER, NOTEQUAL, LESS, ALWAYS and NEVER in that order. Its x positions fall on multiples of 1/8 (186.375, 213.0, 239.625) and its y positions on 1/256 (150.18359375, 171.49609375).
- Window positions: x lands on whole numbers (320, 370, 420, 470, 1010, 1060, 1110 on the large screen; 32 to 47 on the small) and y lands 1/256 below a whole number (135.99609375) or, on the small screen, 1/256 below a half (8.49609375), from the driver's 1/256 bias in the matrix's y offset. Two lines end at y = 173.329427... and 685.329427..., and the small screen's at 10.829427... and 42.829427... .
- **Not modelled**: the clears (primitive type 0xa, word 0x8f80a92f) are taken to leave zero, which every stored frame's background shows; depth (every z is equal and no primitives overlap); colour reaching the frame other than through the vertex colour word (the reading of program 214 to 234 outputs no colour word, so colour takes a path these runs do not model).

## Rules

### Position precision

- **established**, all eight frames (survey rows "positions to nearest 1/N"): the rasteriser does not round window positions to the nearest point of a grid of 1/2 to 1/128 pixel. Rounding to nearest 1/128 or coarser moves 22 pixels in `points.SUM` (y = 647.996 becomes 648) 5 to 10 in `points.sml` and `triangle.sml` (y = 8.496 becomes 8.5, a pixel centre on an edge), and 324 to 490 in `alpha.SUM`. Nearest 1/256 or finer matches all eight.
- **established**, same frames (rows "positions truncated to 1/N"): truncation toward minus infinity to a grid of 1/8 or coarser fails `triangle.SUM` (100 pixels) and coarser grids fail every lines, triangle and alpha frame; truncation to 1/16 or finer matches all eight.
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
- **established**, `alpha.SUM` (702 pixels) and `alpha.sml` (62): the same centre rule covers quadrilaterals, drawn as the triangles (0, 1, 2) and (0, 2, 3); sampling the corner fails. The shared diagonal never passes through a centre, so how a quad's diagonal is tied is **not tested**.
- Fill colour: flat over the whole primitive in every fitted test. Colour interpolation, depth interpolation and their precision: **not tested** (one colour, one depth).
- Dither: **not tested** (one colour, at full intensity).

### Colour as stored

- **established**, `alpha.SUM` and `alpha.sml`: a frame pixel holds red in bits 31:24, green in 23:16, blue in 15:8 and alpha in 7:0. Each component is floor(256 c), limited to 255. The tested values give 0.1 -> 0x19, 0.2 -> 0x33, 0.3 -> 0x4c, 0.5 -> 0x80, 0.6 -> 0x99, 0.7 -> 0xb3 and 1.0 -> 0xff. Rounding 255 c to nearest instead moves 7020 and 60 pixels (0.1 would give 0x1a); floor(255 c) moves 4644 and 36 (0.5 would give 0x7f). 0.5 lands exactly on a step (256 x 0.5 = 128) and takes it; every other tested value lies at least 0.2 of a step from a boundary (25.6, 51.2, 76.8, 153.6, 179.2). So the frames fit floor(256 c + b) for any bias b from 0 up to 0.2, and values below 0.1 or above 1 are not tested.
- Flat colour comes from the last colour word before the vertex; every primitive in these tests has one colour, so which vertex supplies a flat primitive's colour is **not tested**.

### Alpha test

- **established**, `alpha.SUM` and `alpha.sml`: block 0x01e's comparison and reference act as `docs/tokens.md` reads them. Under reference 0.5, LEQUAL passes alphas 0.3 and 0.5, EQUAL passes 0.5 only, GEQUAL passes 0.5, 0.7 and 1.0, GREATER 0.7 and 1.0, NOTEQUAL 0.3, 0.7 and 1.0, LESS 0.3, ALWAYS all four and NEVER none; a rejected fragment leaves the frame unchanged. Alpha 0.5 equals reference 0x800.
- The precision at which alpha meets the reference: **not tested**. Comparing floor(256 a) with the reference's top eight bits and comparing the unconverted alpha with reference / 4096 give the same frames, since no tested alpha lies within 1/256 of 0.5 other than 0.5 itself.

## Fitted without a match

These rules come from the `blend` frames, which the script does not rebuild exactly (`--test blend`: 12757 of 1,310,720 pixels differ in `blend.SUM`, CRC-32 0x318a7eae against 0x3d3662c0; 139 in `blend.sml`). They stay **inferred**, with the counts given.

The stream: nine panels, each two quads in perspective (1/w from 0.0138 to 0.0212) with a colour per vertex, the first in (0, 0, 0, 0), (1, 0, 0, 0.5), (0, 1, 0, 1), (0, 0, 1, 0.5) and the second, drawn about six rows higher, in (0, 0, 0, 0), (0.5, 0.5, 0.5, 0), (0.5, 0.5, 0.5, 1), (1, 1, 1, 1). The first quad of each panel is drawn with block 0x004 = 0x2200; the second with 0x22200 (bit 17 set) and block 0x022 set to 0 to 7 in turn, the first panel drawing both quads plainly. Depth word 0x020 is 1 throughout and bit 16 of block 0x004 is clear, so no depth test applies.

### Colour interpolation

- **inferred**, `blend.SUM` first panel (13934 pixels, no logic operation): colour is interpolated with perspective correction from the vertex colours and 1/w, sampled at pixel centres, each quad as the triangles (0, 1, 2) and (0, 2, 3), then stored as floor(256 c). That model leaves 1090 pixels different, each by one step in one or more bytes. Interpolating linearly in screen space leaves 13927 different; splitting the quads as (0, 1, 3) and (1, 2, 3) leaves 13803; sampling 0.05 pixel off the centre in x or y leaves 1519 to 3276.
- **inferred**: the residue is the simulator's arithmetic, not a different rule. Wherever they differ, the exact value lies within 0.12 of a step of the stored byte's range. Along any one row of a triangle, the deviation from exact perspective fits a straight line in x, and the line changes from row to row; a single plane per triangle does not fit, nor does a rounding bias (floor(256 c + b) for b from 0 to 0.08, or a 10- to 16-bit intermediate rounded to nearest, all leave 1069 to 2944 pixels). A common relative error of the perspective divide fits 13867 of the 13934 pixels, but it would have to be about 10^-3 and not a function of 1/w alone. The deviation also depends on the screen position: the panels in the top row give some pixels a source one step different from the other panels' (below). Exact interpolation arithmetic: **not established**; the per-row structure points at values set up per span and stepped along x.

### Logic operations

- **inferred**, `blend.SUM` (`--logic`, `ucode/runs/odydiags-blend-logic.txt`): with block 0x004 bit 17 set, the stream's fragments combine with the frame through the logic operation of block 0x022, bit by bit over the whole 32-bit word, alpha byte included. Taking the source words from the panel drawn with GL_COPY and the destination words from the panel drawn with GL_NOOP, the GL_CLEAR, GL_AND, GL_AND_REVERSE and GL_AND_INVERTED panels hold exactly op(source, destination) where the second quad covers and the destination elsewhere (25896 pixels each, none different). GL_XOR and GL_OR differ in 70 and 58 pixels, every one of which a source one step different in some byte explains, as the colour interpolation above produces. It is inferred, not established, because the frame as a whole does not match.
- The stream sets block 0x004 bit 17, which `docs/tokens.md` reads in the 6.5.30m library as "blending in use", and never bit 20 (`GL_COLOR_LOGIC_OP`). The test's name ("blend logic") and this behaviour fit the older blend-equation form of the logic operation (EXT_blend_logic_op), where blending is enabled and the blend equation selects the logic operation. Which word carries that equation in this stream: **unknown**; block 0x024 is 1 throughout the drawing.

## What the frames rule out together

One position rounding (nearest on a grid of 1/256 or finer), one point rule (floor), one line rule (centre sampling along the major axis, ties to the lower pixel on the minor axis), one triangle and quad rule (centre sampling), one colour conversion (floor(256 c), limited to 255) and the alpha test of block 0x01e rebuild all eight frames. Each alternative in the survey moves at least one frame. Rules the survey lists as matching every frame are those these tests cannot see.

## Remaining frames

- `checkr3d.SUM` fails its own checksum (CRC-32 0x1f9ba6f3 against `csumlist` 0x2bb8d20c) while `checkr3d.sml` matches `csumlist.sml` (0x4bb39aca). See `docs/open-questions.md`, "The 3D checkerboard frame".
- `blend`: fitted without a match (above).
- `aapts` and `aalines` draw antialiased primitives on a grey background (0x333333ff). Not fitted.
