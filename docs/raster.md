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
- Depth: **not tested** (see [Depth](#depth) for what the library shows). `blend` sends depth word 0x020 = 1 with bit 16 of block 0x004 clear, `checkr3d` draws its squares with no depth test and lets each overwrite the last, and the points, lines and triangle tests draw at one depth.
- Dither: **not tested**. Bit 18 of block 0x004 (`GL_DITHER`, `docs/tokens.md`) is clear for every drawn primitive of every stream; only the set-up point primitive drawn under 0x42200 has it, and that primitive has no vertex. The flat-colour frames fit floor(256 c + b) for any b from 0 to 0.2.
- Perspective-correct colour: inferred from `blend` only (above).

## Depth

No stored frame tests depth (above), so this section rests on the N32 `libGLcore.so` of 6.5.30m
(addresses from `libglcore/asm/ODYSSEY/*.s`), the porting guide 007-4271-001 and the patents in
`docs/sources/` ([published-sources.md](published-sources.md)). `odydiags` 6.5.15 names `glDepthFunc`, `glClearDepth` and `glDepthMask` among



its GL entry points but stores no depth-tested frame.

### The depth word

What the library reads back from, and writes to, the depth part of a pixel. The porting guide says
depth is stored in eye space in an internal floating-point format, packed with stencil into four
bytes; a 2002 comp.sys.sgi.graphics post by an SGI engineer says the same of the format. The
library's conversion routines give its layout:

- **The 24-bit depth word**, **established** as the library's reading of the depth plane
  (`__glOdySpanEyeZ24ToFloat` and `__glOdySpanFloatToEyeZ24` below): bits 23:18 are an exponent e
  and bits 17:0 a mantissa m, with an implied leading one and no sign: the value is (1 + m / 2^18) x
  2^(e - 31). Bits 31:24 of the 32-bit word are not part of it (`__glOdySpanEyeZ16ToEyeZ24` clears
  them). The smallest non-zero value is 2^-31 and the largest just below 2^33, with 18 mantissa bits
  at every exponent: a relative step of 2^-18 everywhere. That the board's depth plane holds exactly
  these bits is **inferred**: the library moves the plane by DMA and converts on the host
  (`RenderFunc_ReadbackDepth`, 0x0d9a23a0, calls `__glOdysseyImageMovePixelsDMAtoHost` and then
  `__glOdysseyImageConvertHostImage`), so the bits are what the board's DMA hands over. Two
  further readings support an unconverting DMA, without proving it. The porting guide (sections "Stencil and
  Depth Buffers" and "Buffer Reads and Writes") says the board converts colour between internal and external pixel formats in hardware,
  but that depth and stencil, kept in an internal floating-point format, are slower to read and
  write "due to float conversions", which the library does on the host. Whether the board's DMA


  settle it. The library's own depth transfers use pixel-size code 1, four bytes a pixel
  ([kernel.md](kernel.md), DMA entry layout).
- **What the value means**, **established** from `__glOdyUpdateDepthSpanInfo` (0x0d9a6360) and
  `__glOdySpanEyeZ24ToWindowZ` (0x0d9a6530): the value is 2S x (d - n) / (f - n), where d is the
  distance in front of the eye, n and f are the eye distances the context keeps at +0x165c8 and
  +0x165d0, and 2S = 2^33 - 2^15 = 8589901824 (the constant 0x41fffff800000000). So it is linear in
  eye distance, 0 at n and 2S at f. 2S is the largest value with mantissa 0x3fffe at e = 63, one
  step below the top of the format.
- **A 16-bit depth word**, **established** as the library's reading (`__glOdySpanEyeZ16ToWindowZ`
  and `__glOdySpanEyeZ16ToEyeZ24` below): bits 15:10 the same exponent, bits 9:0 the top ten
  mantissa bits. The conversion routines take it when the board-side image's type is
  `GL_UNSIGNED_SHORT` (`__glOdysseyImageConvertHostImage`, source line around 3507); which windows
  have that type is in [Which windows carry the 16-bit word](#which-windows-carry-the-16-bit-word).
- **The fog scale shares the format**: block 0x01a operand 2 is an IEEE single with 96 taken from
  its exponent and shifted right five places ([tokens.md](tokens.md), block 0x01a), the same packing
  as `__glOdySpanFloatToEyeZ24`. **inferred**: fog is evaluated against the same eye-linear depth.

The conversion routines, all in `ody_image_convert.c` of the N32 library:

- **`__glOdySpanFloatToEyeZ24`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
  (0x0d9a6d80, 352 bytes), **established**, read in full: encodes a span of floats in [0, 1] as
  depth words for a draw. It multiplies by 2S in double, rounds to single, and keeps the single's
  exponent minus 96 and its top 18 mantissa bits (shift right 5, so the low five bits are truncated,
  not rounded). An exponent below 96 gives 0; an exponent of 160 or more gives 0x0fffffff, all 24
  depth bits set and bits 27:24 as well. The sign bit is ignored. Its caller picks it for an
  orthographic draw, where window depth is already linear in eye distance.
- **`__glOdySpanEyeZ24ToFloat`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
  (0x0d9a6960, 572 bytes), **established**, read in full: the inverse for a readback: rebuilds the
  single from e + 96 and m, fills the low five mantissa bits with the top five of m, multiplies by
  1/2S (1.1641576591783873e-10) and limits the result to [0, 1].
- **`__glOdySpanEyeZ24ToFloat2`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
  (0x0d9a6ba0, 468 bytes), **established**, read in full: the same rebuild, adding 0x30000000 (96 <<
  23) to the exponent field instead of building it from bytes, used for depth copies between board
  images.
- **`__glOdySpanEyeZ24ToWindowZ`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
  (0x0d9a6530, 348 bytes), **established**, read in full: a perspective readback. It turns the
  decoded value back into eye distance, d = n + v (f - n) / 2S (eye z = -d), and applies the
  projection's depth rows kept at +0x165f8 to +0x16610: window z = 0.5 + 0.5 (a z + b) / (c z + d),
  limited to [0, 1], or 1.0 where the w term is zero. The requested depth range does not enter this
  routine.
- **`__glOdySpanWindowZToEyeZ24`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
  (0x0d9a7120, 348 bytes), **established**, read in full: the inverse for a perspective draw, window
  z to eye z through the same rows, then the encoding of `__glOdySpanFloatToEyeZ24`; window values
  at or past the depth-range ends take the precomputed end values.
- **`__glOdySpanOrthoZToEyeZ24`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
  (0x0d9a6ee0, 568 bytes), **established**, read in full: the orthographic draw with a depth range:
  scales by 2S / (f - n) after the range offset, limits to [0, 2S] and encodes; with the flag at
  span-info +0x210 set (a degenerate range) every pixel takes the one value at +0x208.
- **`__glOdySpanEyeZ16ToEyeZ24`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
  (0x0d9a67f0, 360 bytes), **established**, read in full: widens 16-bit depth words to 24-bit ones,
  the exponent unchanged and the eight new low mantissa bits copied from the top eight.
- **`__glOdySpanEyeZ16ToWindowZ`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
  (0x0d9a6690, 352 bytes), **established**, read in full: the perspective readback of a 16-bit depth
  word, widening the ten mantissa bits to 23 by repetition before the steps of the 24-bit routine.
- **`__glOdyUpdateDepthSpanInfo`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
  (0x0d9a6360, 464 bytes), **established**, read in full: fills the span record the routines above
  read: the eye-distance pair, -d/c from the projection, the scale 2S / (n - f) (stored as a double
  at +0x200; the routines divide by it), and the encoded values of window 0 and 1 at +0x208 and
  +0x20c, each limited to [0, 2S].

### Which windows carry the 16-bit word

- **`__glOdysseyImageDescribeWindow`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
  (0x0d989710, 1060 bytes), **established**, read in full: fills a 60-byte description of the
  window's colour buffer (called with 0, record at context +0x11d98) or of its depth buffer (called
  with 1, record at +0x11dd4). It classifies the visual from the context's mode record at context
  +3376: RGBA with component sizes 12/12/12/12 gives code 12, 10/10/10/2 code 11, 8/8/8/8 code 10,
  5/5/5/1 code 8, 4/4/4/4 code 7, 8-bit luminance-alpha code 6, 12-bit luminance code 5, 12-bit
  luminance-alpha code 9, 8-bit luminance code 2, and colour index of 8 or 12 bits codes 16 and 17.
  A jump table (0x0dae8fa0, 18 entries) then sets two small fields, +44 and +48, per code and per
  the mode record's bytes +6, +7 and +9: code 12 gives (3, 1), or (2, 0) when byte +6 is clear;
  codes 9 to 11 give (3, 2), (2, 1) when byte +9 is clear, or (2, 2) when byte +6 is clear; codes
  5 to 8 and 17 give (3, 4), (2, 5) or (2, 3) by bytes +7 and +9; codes 2 and 16 give (2, 4).
- **`__glOdysseyImageCalcXferReadParams`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
  (0x0d9bf200, 3324 bytes), **established** for its `GL_DEPTH_COMPONENT` branch (source lines 5413
  to 5475), read in full: picks the board-side type of a depth readback from those two fields:
  `GL_UNSIGNED_SHORT` (the 16-bit word) for (1, 2), (1, 3), (2, 0) and (3, 1), `GL_UNSIGNED_INT`
  (the 24-bit word) for (2, 2), (2, 3), (2, 4), (3, 2) and (3, 4), and no readback for any other
  pair.
- So, **established** as the library's reading: a window whose visual is RGBA 12/12/12/12 has the
  16-bit depth word, and every other visual with depth has the 24-bit one. **inferred**: bytes +6
  and +9 of the mode record are the double-buffer and depth flags, since a double-buffered 8-bit
  RGBA visual with byte +9 clear gets no depth readback. Why the 48-bit colour visuals get the
  shorter word is not shown; the likely reason is room in the pixel, which a
  driver sizes at 8, 16 or 32 bytes and a
  2005 comp.sys.sgi.hardware post describes as 8 or 16 bytes holding colour and every auxiliary
  buffer. The porting guide's "packed into one 4-byte value on reads and writes" ("Stencil and
  Depth Buffers") is the host-side format, which the library builds from either width.

### Depth range

- **The eye-distance pair n, f** at context +0x165c8 and +0x165d0, **established** from
  `__glOdysseyUpdateTransform` (0x0d9e2980): the projection analysis writes them from the projection
  alone (falling back to the constants ±2S on some branches); the depth range does not enter. So n
  and f are the frustum's near and far distances.
- **`__glOdysseyValidateDepthRange`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
  (0x0d9e4b40, 584 bytes), **established** as software behaviour, read in full: it clamps the
  requested window range to [0, 1], turns each end into a normalized eye depth, (d - n) / (f - n)
  for the eye distance d whose default window depth is that end
  (`__glOdysseyWindowToNormalizedEyeZ`, 0x0d9e4890), and hands the pair to the generic
  `__glim_DepthRange`. When the near end lies strictly inside (0, 1) it puts the eye-space plane (0,
  0, s, s n) in clip-plane slot 7 (+0x70 of the record at context +1748) and sets bit 7 of the
  enable word at context +1804; when the far end does, the plane (0, 0, -s, -s f) in slot 6 (+0x60)
  and bit 6, with s = -1 when n < f and +1 otherwise. These keep n <= d <= f. An end at 0 or 1 adds
  no plane.
- **The window-z row**, **established** for its coefficients from `__glOdysseyValidateMatrixComb`
  (0x0d9e2f90, source lines 446 to 477, read in full) with `SetDepthRange` (0x0da9be70, the generic
  depth-range store, read in full) and the context set-up (`ody_context.s` source line 1680): the
  generic code keeps zScale = D (far - near) and zCenter = D (far + near) at context +1736 and +1740
  for the normalized ends, with D = 0.5 x 0x1ffff800 = (2^29 - 2^11) / 2, so 16 D = 2S / 2. The
  Odyssey routine builds the row that leaves as window z (output code 0x26 in routine 214) with
  slope 16 zScale / ((f - n) / 2) times 0.99999999 and offset 16 zCenter, combining the combined
  matrix's z and w columns with the projection's depth rows at +0x165f8 to +0x16610 so that the
  result is in eye distance. **inferred** from those coefficients: the transform program hands the
  rasteriser the same eye-linear value the library decodes, 2S (d - n) / (f - n) at the default
  range, with n landing at 2S x 5e-9 and f at 2S x (1 - 5e-9): the factor 0.99999999 pulls both
  planes just inside [0, 2S]. With an interior end the row maps the frustum onto the part of
  [0, 2S] the normalized ends select. With an interior end, geometry beyond the
  frustum's near or far distance would land inside [0, 2S], so the library removes it with the
  planes. At the default range nothing beyond the frustum lands inside [0, 2S], and the library adds
  no plane: the board must drop those fragments itself, by their depth value (below).

Block 0x051 bit 1 is set when the far end is below the near one ([tokens.md](tokens.md), block
0x051).

### Clipping at the near and far planes

- Published (US 6,259,460, columns on the raster unit): frustum clipping "is effectively performed
  by the recursive subdivision rasterization" in the raster unit, and user clip planes by the sign
  bit of interpolated texture coordinates. **inferred** for this board: there is no geometric
  far-plane clip; fragments beyond the frustum are dropped per pixel. The microcode agrees: every
  vertex routine computes the clip-space z row and passes it on with output code 0x08
  (`ucode/buzz_routines.md`, routine 214), and no routine compares it; the hardware clip-plane
  routine 0 sends plane distances to the output stage like texture coordinates.
- The library replays vertices through its own clipper when w changes sign or falls below a
  threshold ([opengl.md](opengl.md) and the vertex workaround routines), so the near side at w = 0
  is not left to the rasteriser.
- Published (US 6,259,460, the raster unit's description of pixels that are computed but not
  written): "dead pixels" are those not written "due to clipping with the near, the far, or one or
  more of the user-clipped planes". So the near and far cut is a per-pixel kill in the raster
  pipeline, the same mechanism as the user planes. **inferred** for this board.
- **inferred**, from the depth-range planes and the window-z row above: at the default range the
  board drops a fragment by its interpolated depth value, below 0 for the near side and above the
  top of the range for the far side. The library places n and f just inside [0, 2S] (the 0.99999999
  factor) and adds no plane, so it relies on that kill; with an interior end it adds planes because
  the kill would then come too late. The depth clear agrees: the simulator stream of the
  `checkr3d` test (`__clog_chk3d`, word 5099 of `scripts/odydiags_frame_check.py --test checkr3d
  --dump`) clears with the IEEE single 0x4fffffc0, which is
  2S, so a cleared pixel holds the far plane's value.
- Where exactly the far kill sits, at 2S, at 2S plus one step (0xffffff, the largest word) or at
  2^33 (where the 6-bit exponent overflows): **unknown: no shipped software or published source
  depends on it**. The three candidates differ by at most two steps of the top binade, (f - n) / 2^18
  of eye distance, and no shipped software reads depth back from that band: the library writes
  nothing above 2S and clears to 2S. Routes tried: the patents (US 6,104,415, 6,259,460 and
  6,417,858), the porting guide 007-4271-001, the white paper, the transform routines 214 to 234
  and the clip-plane routines (output code 0x08 consumes clip z with no compare; routine 0 sends
  plane distances like texture coordinates), the library's conversion, depth-range, window-z,
  clear and soft-clip routines above, the same routines in the 6.5.8 library (same constants), every

  `odydiags` stream (all draw at z = 0 except `checkr3d`, which draws with the depth test off and
  lies inside the frustum), the Internal Support Tools 2.7 OpenGL suite (below), and the
  comp.sys.sgi archives (a 2000 comp.sys.sgi.graphics report of orthographic programs losing their clipping on a
  V8 under 6.5.9 names no plane or value, and its one reply blames the factory install).

### Vertex pre-clip in the library

Release 6.5.30m, N32 `usr/gfx/arch/IP30ODSY32/libGLcore.so`. The question was whether the library, with `GL_SGIX_vertex_preclip` on, clips on the host and, with it off, sends unclipped geometry (a lead from a recollection, [published-sources.md](published-sources.md) source 15).

- **established.** State, set in the context-creation routine and `__glOdyim_Enable`, `__glOdyim_Disable` and `__glOdyim_Hint`: an enable byte (context +0x19db4, enumerant 0x83ee, **off at context creation**), the hint word (+0x19db8, enumerant 0x83ef, initially GL_DONT_CARE 0x1100) and a class word (+0x19dbc). The environment variable `GL_VERTEX_PRECLIP` set to `DISABLED`, `FASTEST` or `NICEST` replaces the initial enable and hint (any other value prints "legal values are DISABLED, FASTEST, or NICEST"). `__glOdysseyValidateMatrixComb` derives the class: 0 while the enable is off; with it on, 3 for GL_NICEST and 2 for GL_FASTEST or GL_DONT_CARE; a projection with zero in matrix elements 3 and 7 under GL_FASTEST drops the class to 1 (the case that cannot need it). Classes 2 and 3 set bit 4 of context word +0x16988 and bit 0 of the 0x051 block ([tokens.md](tokens.md)).
- **established.** The immediate-mode vertex entries (`__glOdyim_IglooVertex2d` to `4sv`, `ody_vapi.s`) switch on the class: 0 and 1 call the plain senders, 2 the `_smallw` senders, 3 the `_mag` senders, or the `_mag_line0` senders when bit 22 of the word at +0x7b70 is clear (inferred reading of that bit as a line-mode flag). The plain `__glOdyim_Vertex3f` (0xdace840, 32 bytes) stores the word `0x8080cc03` and three floats to the command FIFO and returns, with no test.
- **established.** `__glOdyim_Vertex3f_smallw` (0xdacf440, 124 bytes) and `__glOdyim_Vertex3f_mag` (0xdad06c0, 200 bytes) first transform the vertex by row 3 of the combined matrix at context +0x9588 (the clip-space w row, [ucode/buzz_isa.md](../ucode/buzz_isa.md)). They store that w in the pre-clip record (+0x19d98), and divert the vertex when the product of this w and the previous one in that record is negative (w changed sign); `_smallw` also diverts when |w| is below the record's first float (+0x19d90, **default 0.0625**), `_mag` when the homogeneous window x or y from rows 0 and 1 of the same matrix exceeds |w| times the record's second float (+0x19d94, **default 8192**), which is a window coordinate beyond 8192 pixels from the window origin. Every other vertex is sent with the same four stores as the plain sender. The fifo_words listing of the three routines (`scripts/fifo_words.py`) shows the identical word stream, `0x8080cc03` then three floats, on the pass path and, for the two checked forms, a branch to an indirect jump on the divert path.
- **established.** The divert target is the pointer at +0x19db0, set to `__glOdysseyVertexWARClip` at context creation; the vertex is passed to it with w = 1.0 in the fourth argument. That routine ends the board's primitive, rebuilds the state for the library's own clipper and replays the held vertices and the new one through the immediate-mode entries, so the clipped polygon is sent as clip-space vertices ([libglcore-odyssey-reads.md](libglcore-odyssey-reads.md), "Primitive replay for the clip path"). Under class 3 it also loads four extra clip planes at 1/0.9 of the x and y bounds of the volume. The three limits can be overridden through `GL_ODY_VERTEX_PRECLIP_W_LIMIT`, `GL_ODY_VERTEX_PRECLIP_MAG_LIMIT`, `GL_ODY_VERTEX_PRECLIP_LINE0_EPSILON` and `GL_ODY_VERTEX_PRECLIP_LINE0_LIMIT`.
- **established.** Display lists follow the same switch: the replay routine chosen at `__glOdysseyDlistInterpret`'s callers uses `__glOdysseyDlistInterpretPreclip` when bit 4 of +0x16988 is set (classes 2 and 3), so recorded position words reach the guarded entries one by one; with the bit clear the plain replay routine pushes the recorded words to the FIFO without per-vertex tests (**inferred** from the push-loop call in the decompilation). A recorded bounding box that lies inside the guard lets a list skip the per-vertex path (`__glOdysseyIsBboxClippedRange`; **inferred** from its name and two call sites that it tests the box against the guard).
- **Answer.** With the enable off (the default) the library tests nothing and sends the application's coordinates as given. With it on it clips on the host only for vertices that cross w = 0, come close to it (class 2 and 3) or land beyond 8192 pixels (class 3); it does not clip every primitive. The enable and the hint are two controls, and the fast setting still guards w, which differs from the recollection's single fast-or-accurate choice. **inferred:** the 8192 and 1/16 limits are the library's margin for the rasteriser, consistent with a 4K x 4K region plus guard (source 3); no source states the board's limit.
- **unknown: no shipped software or published source depends on it.** What the board does with a vertex that the guard does not divert but that is wildly out of range (the default), whether it produces the precision artifacts the recollection describes, and what bit 0 of the 0x051 block changes on the board.
- **Frame-buffer layout seen by a guest.** **established:** the kernel sizes frame buffers in 16 x 16 pixel tiles ([display.md](display.md)) and the library moves pixels by command-stream transfers whose host-side strides are in bytes ([pixel-paths.md](pixel-paths.md); the texture pitch word is in tiles, **inferred**, [buzz.md](buzz.md)); the client windows are registers, command entries and the display FIFO. **unknown:** the order of tiles or pixels in board memory (Hilbert, Morton or row-major tiles): nothing read addresses board memory by pixel position.

### The OpenGL test suite on the diagnostics disc

Internal Support Tools 2.7 ships the VPro field diagnostics twice (`octane/odydiags6510` and
`odydiags6515`, product `field_diags_odyssey`), and both carry `usr/tests/otest/`: the run scripts
`run_otest`, `odytest` and `odycmdfile`, a command file, the CRC reader `readcrc` (it reads the
board's Buzz and PB&J colour CRC registers), and five test lists. The lists name the regression
suite's tests by level: `RAS1` includes `polygon_offset`, `SHD1` `clear_depth`, `sk_DepthFuncEq`,
`sk_DepthFuncGt`, `sk_DepthFuncLt`, `sm_diff_z`, `sm_same_z` and the fragment-lighting tests, and
`XFM1` `clip_planes_buzz`, `material`, `normalize`, `one_sided_rgb`, `two_sided_rgb`,
`vertex_light`, `vertex_lights` and `vertex_spot_lights`. **established**: neither package holds
the `otest` program, the test sources or any expected checksum. `run_otest` names the golden CRC
file `fullcrc.ody` and writes it with `-cr`; the package's file list (`field_diags_odyssey.idb`,
211 entries, the same paths in both builds) has no such file and no test directory, and no other
package's file list on the disc installs anything under `usr/tests`. The Customer Diagnostics
disc for the Fuel holds system online tests and `pandora`, whose graphics test writes and compares
pixels; none draws a lit or depth-tested scene. So the suite gives test names, not expected values, for depth, offset and lighting.

### Interpolation

Published (US 6,104,415 and 6,259,460): the raster unit generates perspective-corrected barycentric
coordinates and the shader bilinearly interpolates depth with them. **inferred** for this board:
depth, being linear in eye distance, is interpolated with perspective correction, so each pixel's
depth is its own eye distance.

### Polygon offset

- **`__glOdyim_PolygonOffsetEXT`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
  (0x0d95f340, 536 bytes), **established**, read in full: builds block 0x058 from the factor and
  bias once, with no per-polygon slope. It finds the eye-space width of the view at the far distance
  f by unprojecting the clip x = +1 and x = -1 points at f's projected depth through the inverse of
  the projection (`__glInvertTransposeMatrix`), divides it by the window width (context +3700) times
  2^-23 times (f - n), and multiplies by tan(L) (context +0x21ef4). The offset is factor x that / 16
  + bias x 2 / 2^-23, limited to [-2^24, 2^24 - 1], truncated, and stored in bits 24:0 of block
  0x058 with bits 31:25 kept. `__glOdysseyUpdateTransform` (0x0d9e2980) calls it again whenever the
  projection changes and either term is non-zero.
- **`__glOdyim_PolygonOffset`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
  (0x0d95f2e0, 96 bytes), **established**, read in full: the core entry: passes the factor and units
  x 2^-23 (context +0x1fc, set by `SWInit`) to the routine above, so units count as 2 offset steps
  each.
- **The limit angle L**, **established** from `SWInit` (0x0d96a950): 70 degrees, or the value of the
  environment variable `GL_POLYGON_OFFSET_LIMIT_ANGLE` when it parses as a number in [0, 90). The
  library thus replaces OpenGL's per-polygon maximum depth slope by the slope of a surface tilted L
  from the view direction, one pixel wide at the far distance.
- In short: offset = factor x tan(L) x (pixel width at f) x 2^23 / (f - n) / 16 + 2 x units, which
  is factor x tan(L) x (pixel width at f) x 2^19 / (f - n) + 2 x units.
- **The 6.5.8 build** (`__glOdyim_PolygonOffsetEXT` at 0x0da5fb00 in the N32 library of the 6.5.8
  Installation Tools and Overlays disc), **established**, read in full: the same arithmetic with the
  same constants (0.0625, 2.0, -16777216.0 and 16777215.0 at gp -15320 to -15308), the tangent
  kept at context +0x21c40. The encoding did not change between 6.5.8 and 6.5.30m.
- **inferred**: the board adds the offset to the encoded 24-bit word, so an offset counts mantissa
  steps of the depth word, a fixed fraction (2^-19 to 2^-18) of the depth value, and not a fixed
  eye distance. Four readings point the same way and none the other:
  1. The field is a signed 25-bit integer limited to [-2^24, 2^24 - 1], exactly the difference of
     two 24-bit words. Steps of a fixed eye distance would need only [-2^19, 2^19], since 2S is
     about 2^19 of them.
  2. The library's unit is 2^14 of the depth value, (f - n) / 2^19 of eye distance: that is one
     mantissa step at f, the step of the top binade [2^32, 2^33). It counts in the word's own steps
     where the word is coarsest.
  3. The library computes the slope term once, at f. Added to the encoded word, k steps move a
     fragment at eye distance d by about k x 2^-19 x 2S (d - n) / (f - n) of value (between one
     and two times that, by where the value falls in its binade), so its eye offset shrinks
     toward the near plane in proportion to d - n. A pixel's eye width under perspective shrinks
     in proportion to d instead. The two agree only where n is small against d: the encoded
     offset is (d - n) / d x f / (f - n) of tan(L) times the local pixel width, times 1 to 2,
     which is between a half and two at d >= 2n when f >> n, and falls to zero as d approaches
     n. So near the near plane the encoded offset is smaller than the slope term asks. Added as
     a fixed eye distance instead, the far-plane offset would be f / d times too large at
     distance d: a decal at a hundredth of the far distance would sit a hundred pixel-depths in
     front of its surface. This ground favours the encoded word over most of the frustum but
     not near n; the conclusion rests on grounds 1, 2 and 4.
  4. The depth bilerp of US 6,259,460 takes three floating-point inputs and gives one
     floating-point output, so the offset meets a float, and a float's integer bit pattern is the
     natural place to add a count of steps. OpenGL later defines a floating-point depth buffer's
     offset unit the same way, as 2 to the power of the depth's exponent less the mantissa width.
  How a fixed offset behaves under an orthographic projection, where pixel width does not change
  with distance, follows from the same reading (the offset still shrinks toward n) and is not
  separately shown. Routes tried: the routines above in the 6.5.8 and 6.5.30m N32 libraries, the
  library's other callers of block 0x058 (`__glOdysseyRenderBitmap` and the stipple path in
  `ody_bitmap.s` call the same routine), the transform program (no routine reads block 0x058; it
  reaches the raster unit as a class-1 block), the patents, the porting guide (its "EXT polygon
  offset" entry restates the extension only), the field diagnostics (every stream sends block
  0x058 as 0, offset off) and the Internal
  Support Tools 2.7 OpenGL suite (its `polygon_offset` test ships without a program or checksum,
  below).

## Remaining frames

- `checkr3d.SUM`: fitted without a match (above).
- `blend`: fitted without a match (above).
- `aapts` and `aalines` draw antialiased primitives on a grey background (0x333333ff). Not fitted. Read so far from `aapts.SUM` (869 pixels differ from the background) and its stream, all **inferred**:
  - The drawn points carry block 0x004 = 0x23201: bit 0 (`GL_POINT_SMOOTH`), bit 17 (blending) and bits 9, 12 and 13; block 0x04a sends 0x80 for the point size (1.0) in the lower-left quarter and 0x100 (2.0) in the right half.
  - Blending: in the lower-left quarter every one of the 134 lit pixels around the white points fits result = a src + (1 - a) dst on all four bytes, with src (1, 1, 1, a) and dst the background (0.2, 0.2, 0.2, 1): alpha comes out as a² + (1 - a), so the factors are source alpha and one minus source alpha, alpha included.
  - Coverage a: about 0.784 (π/4) for a point near a pixel centre (pixel (2, 368), 0xd3d3d3d4, point at (2.559, 368.633)); 0.5 for each of the four pixels around a point on a pixel corner (the centre point at (320, 255.992): pixels (319, 255) 0x999999c0, (320, 255) 0x989898c0, (319, 256) 0x979797c0, (320, 256) 0x969696c0); and still about 0.15 at 0.95 pixel. So a point of size 1 reaches beyond the one-pixel disc. The coverage is not a function of the Euclidean distance from the pixel centre alone, nor of the max + min/2 or max + 3 min/8 approximations of it: 750 to 1191 pairs of pixels order the other way.

