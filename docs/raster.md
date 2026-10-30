# Raster rules

How BUZZ turns transformed vertices into pixels. No held document gives these rules. The VPro field diagnostics carry an expected value for them: each drawing test in `odydiags` (Internal Support Tools 2.7, 6.5.15 build) replays a command stream recorded from the board's C simulator, and `usr/diags/ody/checksum/<test>.SUM` (1280 x 1024) and `<test>.sml` (128 x 64) are the frames that simulator drew, with their CRC-32 in `csumlist` and `csumlist.sml` (`ucode/buzz_isa.md`, "Pass 18"). A rule set that rebuilds a stored frame from its stream, with the CRC-32 matching, reproduces the vendor's simulation of the board for that stream's state.

Labels. **established** means a rule set containing the rule rebuilds the named frame with its CRC matching, and changing that rule alone makes the frame differ (the count of differing pixels is given). It is established for the state the test draws under, which each entry names. **Not tested** means every alternative tried gives the same frame, so the frames do not choose. **inferred** means partial agreement or reasoning; the pixel-difference count is given. The stored frames are the simulator's output, not a board's; that the simulator matches the board is the premise the diagnostics were built on (`ogltests.htm`), not something these frames show.

Script: `scripts/odydiags_frame_check.py --test points|lines|triangle|alpha|checkr3d [--small --program 214,224,234]` rebuilds one frame; `--survey` rebuilds the nine matching frames once for each rule variant and prints the differing-pixel counts (`ucode/runs/odydiags-raster-survey.txt`). Match logs: `ucode/runs/odydiags-{points,lines,triangle,alpha}-{1280x1024,128x64}.txt` and `ucode/runs/odydiags-checkr3d-128x64.txt`; the unmatched runs are `ucode/runs/odydiags-blend-*.txt` and `ucode/runs/odydiags-checkr3d-1280x1024*.txt`.

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
| checkr3d | `__clog_chk3d_small` 0x1025f330 | `checkr3d.sml` | 4bb39aca | 4bb39aca | 0 |

The 128 x 64 streams name a microcode layout no held image has; the runs substitute routines 214, 224 and 234 of `diagxform.bin` (pass 18), and 243, 255 and 267 for the textured stream.

## The state these tests draw under

- **established** (stream decode, `--dump`): the points, lines and triangle tests use one transform program (214, 224, 234, unlit), flat white colour (1.0 in all four components, word 0xc580d015, sent before the primitives), every vertex at z = 0 with w = 1200 after the matrix, block 0x01d scissor boxes covering one screen quarter each, and the primitive word 0x00014400 with operand 0 (points: 15 vertices in six primitives), 1 (lines: 18 vertices, nine segments) or 4 (triangles: 27 vertices, nine triangles). The lines test sends no line-width word other than those the points test sends too, so its lines are the default width.
- The alpha test draws eight groups of four 26.625 x 21.3 pixel quads (primitive type 7), one group per screen ninth, each quad in one flat colour: (1, 0.1, 0.2, 0.3), (1, 0.5, 0.2, 0.5), (0.3, 1, 0.6, 0.7) and (0.1, 0.2, 1, 1), sent by word 0xc580d015 inside the primitive. Before each group it sets block 0x01e (`docs/tokens.md`) to one comparison with reference 0x800 (0.5): LEQUAL, EQUAL, GEQUAL, GREATER, NOTEQUAL, LESS, ALWAYS and NEVER in that order. Its x positions fall on multiples of 1/8 (186.375, 213.0, 239.625) and its y positions on 1/256 (150.18359375, 171.49609375).
- Window positions: x lands on whole numbers (320, 370, 420, 470, 1010, 1060, 1110 on the large screen; 32 to 47 on the small) and y lands 1/256 below a whole number (135.99609375) or, on the small screen, 1/256 below a half (8.49609375), from the driver's 1/256 bias in the matrix's y offset. Two lines end at y = 173.329427... and 685.329427..., and the small screen's at 10.829427... and 42.829427... .
- **Not modelled**: the clears (primitive type 0xa, word 0x8f80a92f) are taken to leave zero, which every stored frame's background shows; depth (every z is equal and no primitives overlap); colour reaching the frame other than through the vertex colour word (the reading of program 214 to 234 outputs no colour word, so colour takes a path these runs do not model).

## Rules

### Position precision

- **established**, `checkr3d.sml` (survey rows "positions to nearest 1/N" and "positions truncated to 1/N"): the rasteriser truncates each window x and y toward minus infinity to a multiple of 1/256 pixel, and uses that position both for coverage and for interpolation. Rounding to the nearest 1/256 instead moves 5 pixels, truncating to 1/128 moves 6, to 1/512 or 1/1024 moves 3, and leaving positions unrounded moves 4. Every moved pixel lies next to a texel boundary of the checkerboard, where a few thousandths of a pixel in a vertex position decide the texel.
- **established**, the eight earlier frames, as bounds that the rule above meets: rounding to the nearest 1/128 or coarser moves 22 pixels in `points.SUM` (y = 647.996 becomes 648), 5 to 10 in `points.sml` and `triangle.sml` (y = 8.496 becomes 8.5, a pixel centre on an edge), and 324 to 490 in `alpha.SUM`; truncation to 1/8 or coarser fails `triangle.SUM` (100 pixels), and coarser grids fail every lines, triangle and alpha frame. Those frames alone accept truncation to 1/16 or finer and rounding to 1/256 or finer.
- **established**, `points.SUM` and `points.sml` (row "positions one single step low, truncated 1/256"): x reaches the rasteriser as exactly 470.0 for the vertices that land on a whole column. One single-precision step below (469.99997, as a truncated 1/w would leave it) truncates to 469.99609 and moves 28 and 26 pixels. So the transform's 1/w and the window scale give these positions exactly.
- The data's own 1/256 offsets (the driver's y bias) sit on the grid, so truncation leaves them unchanged.

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

### Texturing

From the `checkr3d` frames (`--test checkr3d`, `ucode/runs/odydiags-checkr3d-*.txt`).

- The stream (`__clog_chk3d` 0x10231f40, `__clog_chk3d_small` 0x1025f330), **established** by stream decode: three squares, 40 units on a side at z = -20, 0 and 20, drawn as primitive type 9 in that order through program 243, 255, 267, with texture coordinates (0, 0), (1, 0), (1, 1), (0, 1) in s and t and r = 0, 0.5 and 1 (word 0xc380cc23). Block 0x016 sets TEXMODE0 0x080014a5 (log2 size 5 on all three axes), TEXMODE1 to 3 = 32 and TEXMODE4 0x13002a00: GL_CLAMP on s, t and r, filter field 0 (`BUZZ.h`, TEXMODE0 to TEXMODE4). No depth test applies; each square overwrites the one before where they overlap.
- The texture: **established** (`odydiags` data at `texbuf`, 0x1061fd00, 131072 bytes, which `chk3d_dmas` sends in 32 transfers): 32 x 32 x 32 texels, texel (s, t, r) at word s + 32 t + 1024 r, yellow 0xffff00ff where s/4 + t/4 + r/4 (integer division) is odd and blue 0x0000ffff where it is even.
- The program's output words: **established**, `checkr3d.sml`: words 3, 4 and 5 are s, t and r times 1/w, 7 the depth, 8 and 9 the window x and y, and each vertex's 1/w leaves as word 6 one pass ahead of its other words.
- Coverage: **established**, `checkr3d.sml` (147 pixels with the corner sample): polygons are drawn as the fans (0, 1, 2), (0, 2, 3), each covering the pixels whose centres are inside, as for triangles.
- Sampling: **established**, `checkr3d.sml`: each covered pixel takes the nearest texel, floor(32 u) on each axis, at the perspective-correct (s, t, r) of its centre, from the truncated vertex positions (above), and the pixel takes the texel's colour. The vertex colour is white, so replacing and modulating are **not tested**.
- Exactness of the divide: **established**, `checkr3d.sml`: where a coordinate is the same at all three vertices (r = 0.5 and r = 1 here), it reaches the sampler exactly. Evaluating s q, t q, r q and q as planes and dividing gives this, since the r q plane is then r times the q plane; summing weighted vertex values in double precision instead leaves r one step below 0.5 or 1 in 111 pixels, which then take slice 15 or 31.
- Index 32: **established**, `checkr3d.sml` (row "texture: index 32 limited to 31", 480 pixels): under GL_CLAMP with the clamp limit at the whole level (32, `BUZZ.h` TEXMODE1, "the default value is the whole level size, not size - 1"), r = 1.0 gives texel index 32, and the frame shows slice 0 there, as an index taken modulo 32 gives. Holding the index at 31 moves all 480 pixels of that square. This is the simulator's rule for an index of exactly 32 under this state; how the board treats a coordinate above 1 is **not tested** (no coordinate in either stream exceeds 1).

## Fitted without a match

### The large checkerboard frame

The same rules rebuild `checkr3d.SUM` with 76,795 pixels different, CRC-32 0x1a803799 against `csumlist` 0x2bb8d20c. The stored frame's own CRC is 0x1f9ba6f3, so the file and the list come from different runs of the simulator.

- **inferred**: the stored frame takes slice 31 for the r = 1 square, the opposite of `checkr3d.sml`. With the index limited to 31 (`--texel-edge`) the frame differs in 29 pixels (`ucode/runs/odydiags-checkr3d-1280x1024-texel-edge.txt`), and each of those lies within 0.0007 of a texel of a cell boundary, where single-precision rounding in the simulator decides the side. The stored frame therefore fits a simulator run that limited index 32 to 31; `checkr3d.sml` and the 128 x 64 list fit one that wrapped it.
- `csumlist`'s 0x2bb8d20c is not reached. The CRC is linear, so for any set of uncertain pixels it can be tested whether some choice among them gives the listed value. Tried and none does: the stored frame with any of its 20 pixels outside the r = 1 square changed to the rebuilt value, together with the r = 1 square in either slice; the rebuilt frame with any of the 23 pixels on which the stored frame or three arithmetic orders (planes about the first vertex or about the origin, and stepping along each row in single precision) disagree; and rebuilt frames whose divide uses a reciprocal held to 8 to 24 bits, rounded down, to nearest or up, which put the r = 1 square on slice 0, slice 31 or a mixture.

### The blend frames

These come from the `blend` frames, which the script does not rebuild exactly (`--test blend`: 12598 of 1,310,720 pixels differ in `blend.SUM`, CRC-32 0xb415d70e against 0x3d3662c0; 83 in `blend.sml`). They stay **inferred**, with the counts given.

The stream: nine panels, each two quads in perspective (1/w from 0.0138 to 0.0212) with a colour per vertex, the first in (0, 0, 0, 0), (1, 0, 0, 0.5), (0, 1, 0, 1), (0, 0, 1, 0.5) and the second, drawn about six rows higher, in (0, 0, 0, 0), (0.5, 0.5, 0.5, 0), (0.5, 0.5, 0.5, 1), (1, 1, 1, 1). The first quad of each panel is drawn with block 0x004 = 0x2200; the second with 0x22200 (bit 17 set) and block 0x022 set to 0 to 7 in turn, the first panel drawing both quads plainly. Depth word 0x020 is 1 throughout and bit 16 of block 0x004 is clear, so no depth test applies. The panels are whole-pixel translations of one another (426 and 341 pixels), and the stored frame repeats the first quad identically in all nine panels where nothing else is drawn over it, so the colour arithmetic depends on positions relative to the primitive, not on where it sits on the screen.

#### Colour interpolation

- **inferred**, `blend.SUM` first panel (13934 pixels, no logic operation): colour is interpolated with perspective correction from the vertex colours and 1/w, sampled at pixel centres from the truncated vertex positions, each quad as the triangles (0, 1, 2) and (0, 2, 3), then stored as floor(256 c). That model leaves 1070 pixels different, each by one step in one or more bytes; the truncated positions also settle the one coverage difference the rounded positions left (pixel (204, 214), 0.0008 pixel inside an edge). Interpolating linearly in screen space leaves 13927 different; splitting the quads as (0, 1, 3) and (1, 2, 3) leaves 13803; sampling 0.05 pixel off the centre in x or y leaves 1519 to 3276.
- **inferred**: the residue has a structure. `--residue` (`ucode/runs/odydiags-blend-residue.txt`) gives, per triangle and component of the first panel and split at the value 0.5, the range of offsets from the exact value (in output steps) that every stored byte allows. Alpha of the second quad's triangle (0, 2, 3), which is the whole weight of the two vertices other than the first, takes +0.060 to +0.062 below 0.5 and 0.000 from 0.5 (6284 pixels). Red, green and blue of the second quad's triangle (0, 1, 2), half that weight and all below 0.5, take +0.063 to +0.065 (5981 pixels). So a value below 0.5 reads 1/16 of a step higher than one from 0.5, as a value held in sixteenths of a step as a signed offset from 0.5 and truncated toward zero would read. Where the value is the weight of the quad's third vertex alone (the vertex with the largest 1/w and the lowest y in every panel: green of both first-quad triangles, alpha of the second quad's triangle (0, 1, 2)), the offset is about 0 below 0.5 and -0.056 to -0.073 from it (a few of the second quad's alpha pixels next to 0.5 fit neither), which is 1/16 of a step below what the truncation alone gives in both ranges. The components that mix that weight with others (red, blue and alpha of the first quad, red, green and blue of the second quad's triangle (0, 2, 3)) admit no single offset in either range.
- `--blend-fit` applies those two readings (the truncation about 0.5 in sixteenths, and 0.06/256 of weight moved from the third vertex to the other vertex that is not the first) and leaves 332 of the first panel's 13934 pixels different, 5015 in `blend.SUM` and 31 in `blend.sml` (`ucode/runs/odydiags-blend-fit-*.txt`). It is a fit, not a rule: the shift is not constant over a triangle (the second quad's second triangle, whose red, green and blue weigh it by one half, keeps 208 of the 332), and no arithmetic is known that produces it. Tried without a match: rounding biases from 0 to 0.08 of a step, 10- to 16-bit intermediates, 12-bit vertex colours, a per-vertex 1/w perturbation, 1/w normalised to the largest vertex value and held to 6 to 16 bits, perspective weights held to 10 to 16 bits with any one vertex taking the remainder, plane and per-row fits of the residue, and vertex positions snapped to coarser grids for interpolation only.

#### Logic operations

- **inferred**, `blend.SUM` (`--logic`, `ucode/runs/odydiags-blend-logic.txt`): with block 0x004 bit 17 set, the stream's fragments combine with the frame through the logic operation of block 0x022, bit by bit over the whole 32-bit word, alpha byte included. Taking the source words from the panel drawn with GL_COPY and the destination words from the panel drawn with GL_NOOP, the GL_CLEAR, GL_AND, GL_AND_REVERSE and GL_AND_INVERTED panels hold exactly op(source, destination) where the second quad covers and the destination elsewhere (25896 pixels each, none different). GL_XOR and GL_OR differ in 70 and 58 pixels, every one of which a source one step different in some byte explains, as the colour interpolation above produces. It is inferred, not established, because the frame as a whole does not match.
- The stream sets block 0x004 bit 17, which `docs/tokens.md` reads in the 6.5.30m library as "blending in use", and never bit 20 (`GL_COLOR_LOGIC_OP`). The test's name ("blend logic") and this behaviour fit the older blend-equation form of the logic operation (EXT_blend_logic_op), where blending is enabled and the blend equation selects the logic operation. Which word carries that equation in this stream: **unknown**; block 0x024 is 1 throughout the drawing. The OpenBSD driver (public source, `sys/arch/sgi/xbow/odyssey.c` 1.15, `odyssey_rop`) enables a logic operation the other way, writing 0x00100000 (bit 20 alone) to block 0x004 and the operation to block 0x022 before a GL_QUADS fill with whole-number corners, and restores GL_COPY after; that is the driver's expectation for bit 20, which no stored frame exercises.

## What the frames rule out together

One position rule (truncation to 1/256), one point rule (floor), one line rule (centre sampling along the major axis, ties to the lower pixel on the minor axis), one triangle, quad and polygon rule (centre sampling), one colour conversion (floor(256 c), limited to 255), the alpha test of block 0x01e and nearest-texel perspective sampling with an exact divide and index 32 wrapped rebuild nine frames. Each alternative in the survey moves at least one frame. Rules the survey lists as matching every frame are those these tests cannot see.

## Rules no stored frame tests

Each of these was looked for in every stream that has a stored frame (`points`, `lines`, `triangle`, `alpha`, `blend`, `checkr3d`, `aapts`, `aalines`).

- Triangle edge ties (a centre exactly on an edge): **not tested**. With positions truncated to 1/256 no pixel centre falls on an edge in `triangle`, `alpha`, `blend` or `checkr3d`: keeping or dropping every edge centre gives the same frames (survey rows "triangle: keep every edge centre" and "drop every edge centre").
- Whether a line's end pixel is drawn: **not tested** in `lines` (no end on a centre, above).
- Depth: **not tested**. `blend` sends depth word 0x020 = 1 with bit 16 of block 0x004 clear, `checkr3d` draws its squares with no depth test and lets each overwrite the last, and the points, lines and triangle tests draw at one depth.
- Dither: **not tested**. The flat-colour frames fit floor(256 c + b) for any b from 0 to 0.2; the blend residue is a fixed offset per value range, not a pattern that repeats with screen position.
- Perspective-correct colour: inferred from `blend` only (above).

## Remaining frames

- `checkr3d.SUM`: fitted without a match (above).
- `blend`: fitted without a match (above).
- `aapts` and `aalines` draw antialiased primitives on a grey background (0x333333ff). Not fitted.
