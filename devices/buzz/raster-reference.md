# Raster arithmetic reference

What the RE corpus and the manuals show about the arithmetic BUZZ itself uses, one stage at a time, for a reader who is building a model and needs to know which numbers are evidence. It adds no new finding: each row points at the page that holds the evidence ([raster.md](raster.md), [numeric-formats.md](numeric-formats.md), [tokens.md](tokens.md), [BUZZ.h](BUZZ.h), [measured.md](measured.md), [published-sources.md](../../references/documents/published-sources.md)). It gives no implementation advice.

## Grades

- **established**: read from a shipped binary, a published document or a measurement on a real V10, with the source named. A row says "(simulator)" when the only basis is a frame stored by the vendor's C simulator of the board, which [raster.md](raster.md) explains is the diagnostics' expected value, not a board capture. Such a fact is established for the simulator and, for the board, no better than **inferred**; the row gives both.
- **software expectation**: what the shipped driver encodes or assumes (a register layout, a clamp, a conversion). It shows what software sends, not what the board does with it.
- **inferred**: a reasoned reading, or a partial fit. The row gives the reasoning.
- **unknown**: no held evidence.

Clean-room note: every row rests on shipped binaries (6.5.30m N32 `libGLcore.so` and the kernel driver, with their line tables), the diagnostics package, published patents and manuals, and V10 and simulator runs recorded in this repository. No row rests on the 6.5.7 source readings that some pages cite (the pixel-mode block and frame-buffer layout in [measured.md](measured.md)), and no IRIX source was opened for this page. "Source line" in the cited pages means the line table of the 6.5.30m binary.

The replay tooling was run with the diagnostics package linked under `root/` (see "Replay results" below), so the counts in this page are reproduced, not only quoted.

## The f32 question

Does the evidence support f32 for the interpolators? **Not as stated.** By interpolator:

| Interpolant | What the evidence says | Grade |
|---|---|---|
| Host operands, transform, divide | 32-bit IEEE single from the host; 32-bit floating-point transform (published); reciprocal-then-multiply divide whose reciprocal is not truncated to 23 bits | established (library, white paper); simulator for the divide |
| Window x, y at the rasteriser | Fixed grid: truncation to 1/256 pixel, used for coverage and interpolation. Not a float position | established (simulator), inferred (board) |
| Edge equations | Floating point with one shared exponent per edge ("12 mantissas, 3 exponents", US 6,259,460); mantissa width unknown | established (published), widths unknown |
| Colour and alpha | Eight identical **12-bit** bilerp modules fed by perspective-corrected barycentrics; the pipeline is 12 bits per component from geometry through blending. Not f32 | established (published) for the width; arithmetic inferred |
| Depth | Two 32-bit floating-point perspective-corrected barycentrics in, one float out. This is the one place f32 is the published width | established (published), inferred for this board |
| Texture s, t, r | Interpolated as s/w, t/w, r/w and 1/w, divided per pixel; address then goes float to fixed. Width of the divide unknown | inferred |

A replay fit now bears on this directly (see "Replay results"): evaluating the perspective-correct colour in f32 leaves 1069 pixels of panel 0 different, in f64 1070, and the two forms disagree on 1 pixel of 13,934. The frame cannot tell f32 from exact arithmetic, and neither explains the residue.

The iris VPro colour path (f32 weights, 12-bit colour iteration, floor store) leaves 1073 pixels; see "The iris VPro colour path".

So: f32 is supported for host input, transform and depth. For colour the published width is 12 bits, and the one frame that exercises interpolation (`blend`) is not reproduced by any exact (infinite-precision) perspective-correct model: 1070 of 13,934 pixels in panel 0 stay one 8-bit step off, and quantised variants (12-bit vertex colours, 10 to 16-bit weights, 6 to 14-bit 1/w) do not close it. The residue behaves like a value below 0.5 reading 1/16 of an output step high; 1/16 of an 8-bit step is one 12-bit step, which fits a 12-bit grid but is **inferred** from a fit only. F32 colour is therefore not excluded by any run and not shown by one; the published module width is the better-supported reading, and a 12-bit readback (V12 test 1) is the direct test. Rounding of the stored 8-bit value is floor(256 c), clamped to 255 (established, simulator, `alpha` frames), not round(255 c).

## Summary

| Stage | Grade | One-line fact | How to settle |
|---|---|---|---|
| Vertex snap and setup | established (simulator), inferred (board) | Window x, y truncate toward minus infinity to 1/256; separated only by `checkr3d.sml` (rounding moves 5 px). Driver reports GL_SUBPIXEL_BITS 3, which conflicts | A frame with vertices between 1/256 steps, or a V10 readback of a sub-pixel-offset primitive |
| Edge and tie rule | established (simulator) for centre sampling; unknown for ties | Triangles light pixels whose centre is inside; no stored frame has a centre on an edge; patent says one owner per shared subpixel | The edge-tie test in [raster.md](raster.md), on a V10 |
| Colour and alpha interpolation | inferred | Perspective-correct, 12-bit modules; stored as floor(256 c); exact arithmetic unknown (1070 px residue) | Fit the three-vertex frames against patent forms; vendor simulator constants; capture |
| Depth interpolation and store | inferred (interpolation); established (software expectation) for the word | Float, perspective-corrected, eye-linear; host reads 24-bit exponent/mantissa word; board rounding unknown | A depth-test frame, or a V10 clear/draw/readback at a depth that needs rounding |
| Stencil | software expectation (layout corroborated by stream values) | One block carries function, reference, mask and three ops; stencil is 8 bits beside 24-bit depth; no arithmetic shown | V10 test of INCR/DECR at 255/0 and INVERT with masks |
| Alpha test | established (simulator) for the comparisons; inferred for precision | Eight comparisons act as GL; reference is 12 bits, compared in 12-bit steps rather than divided by 4095 | A frame with alpha within 1/256 of the reference |
| Blending arithmetic | inferred | 12 bits per component, 12-bit constant colour; AA frames fit source-over on all four bytes; rounding unknown | V10 blendtest readback with chosen values; blend diagnostic frames |
| Logic ops | inferred | Bitwise over the whole 32-bit word, alpha included; selected by blend bit 17 with equation 5 in the diagnostics | Same frame fixed by the colour residue; a V10 XOR test |
| Fog | software expectation (form); unknown (arithmetic) | Computed, not tabulated: a cubic through four 12-bit control values (8 fraction bits) over eye distance; scale is a depth-format float | A fogged V10 readback; any microcode or raster reading of block 0x01a |
| Texture coordinates and LOD | inferred | s/w, t/w, r/w, 1/w interpolated, exact divide in the simulator; per-quad diagonal LOD (patent); LOD fields 14-bit, 8 fraction bits | Diagnostic frame with minification; patent equation image |
| Texture filtering | unknown | Every stored texture frame is nearest; weights and sub-texel widths are not in any file | V10 ramp-texture readback with linear and mip filtering |
| Lines and points | established (V10 measurement) for aliased; established (simulator) for centre rule; inferred for AA | Aliased pixels match the IRIS model for widths 1 to 10; AA coverage is a fitted curve of pixel area | Reconcile the two line rules; AA cap and oblique residual |
| Dither | unknown | Enable bit exists (block 0x004 bit 18); no frame sets it | V10 low-intensity ramp with and without GL_DITHER |

## Rows in detail

### Vertex snap and setup

- Grade: established for the simulator, inferred for the board.
- Fact: window x and y are truncated toward minus infinity to a multiple of 1/256 pixel, then used for both coverage and interpolation. Only `checkr3d.sml` separates truncation from round-to-nearest (5 pixels differ). The other frames accept truncation to 1/16 or finer and rounding to 1/256 or finer. x must arrive as exactly 470.0 (one single step low moves 26 to 28 pixels), so the divide is exact there.
- Conflict to carry: the V10 driver reports GL_SUBPIXEL_BITS 3 ([measured.md](measured.md) section 1). Truncation to 1/8 fails `triangle.SUM` by 100 pixels in the simulator replay, so the report is not the simulator's grid. Which one the board uses is unknown.
- Source: [raster.md](raster.md) "Vertex snap"; survey rows "positions truncated to 1/N".
- Settle: another fractional-position diagnostic stream (none held), or a readback from a V10 of a triangle whose vertices sit between 1/8 and 1/256 offsets.

### Edge and tie rule

- Coverage: **established (simulator)**, `triangle`, `alpha` frames: a pixel is lit when its centre is inside. Quads are two triangles (0,1,2), (0,2,3).
- Ties: **unknown**. With positions on the 1/256 grid no centre falls on an edge in any stored frame, so keeping or dropping every edge centre gives the same frames (survey rows). The patent (US 6,259,460) says a zero edge value is resolved by checking the neighbouring pixels of the quad so one primitive owns a shared subpixel; it gives no side. **inferred** only that ownership is unique.
- Edge-equation arithmetic: floating point with a shared exponent per edge, mantissa width and reciprocal-of-area width unknown ([numeric-formats.md](numeric-formats.md) section 3).
- Settle: the silicon test in [raster.md](raster.md) "Rules no stored frame tests" (shared edges through half-integer centres, XOR fill, four orders). No held simulator frame can answer it.

### Colour and alpha interpolation

- Precision: **established (published)** 12-bit bilerp modules, four 12-bit components for two fragments per clock (US 6,259,460; white paper J13937).
- Perspective correction: **inferred (simulator, `blend` only)**: perspective-correct from vertex colours and 1/w fits; screen-linear interpolation leaves 13,927 pixels wrong; splitting quads the other way leaves 13,803.
- Rounding: **established (simulator)** floor(256 c) clamped to 255 on the stored frame ([raster.md](raster.md) "Colour as stored"; round(255 c) moves 7020 px, floor(255 c) 4644). Interpolation arithmetic: **unknown**; 1070 px residue in panel 0, never reduced to zero by the fits in [blend-residue-fit.md](blend-residue-fit.md).
- Flat colour source (which vertex supplies it): not tested.
- Settle: fit the three-vertex triangles of `blend` with the patent's weight form (reciprocal-area scale times edge distances), or read the interpolation constants in the vendor simulator binary, or capture a perspective-shaded polygon on a V10. [questions/README.md](../../questions/README.md) "Colour interpolation arithmetic".

### Depth interpolation, store format and rounding

- Interpolation: **inferred** float, perspective-corrected barycentrics, linear in eye distance (US 6,259,460, US 6,104,415; the fog scale and clear value use the same format).
- Store format: **software expectation**, 24-bit word, bits 23:18 exponent, 17:0 mantissa with implied one, value (1 + m/2^18) 2^(e-31), 2S = 2^33 - 2^15 at the far plane (`__glOdySpanFloatToEyeZ24` 0x0d9a6d80 truncates the low 5 bits of an IEEE single; decoders at 0x0d9a6960, 0x0d9a6ba0). That the board plane holds these bits is inferred.
- Rounding when the board stores a float depth, and the clear's single-to-word mapping: **unknown**. Polygon offset adds to the encoded word (inferred, four readings in [raster.md](raster.md) "Polygon offset"). Depth compare: block 0x020 bits 2:0 hold the GL comparison minus 0x200 (software expectation); no stored frame depth-tests.
- Measured (V10): a glDrawPixels depth probe reads back 0.5000010, 0.6249990, 0.7499999 ([measured.md](measured.md) section 13), which bounds the stored resolution near those values only.
- Settle: a clear at a depth whose float(d x 2S) has a bit below the 18th mantissa bit (0.3), read back through the library decoder; or diagnostic expected values (`sk_DepthFunc*`, `sm_diff_z` are named in the diagnostics test lists but ship no expected values).

### Stencil

- Grade: **software expectation**. Block 0x01f (word 0x0001041f, shadow word +0x7c2c) carries the mask in bits 15:8, reference in 7:0, function in 27:25 and operation codes KEEP 0, ZERO 1, REPLACE 2, INCR 3, DECR 4, INVERT 5 in bits 24:22 (stencil fail), 21:19 (depth fail) and 18:16 (depth pass), read from `__glOdyim_StencilFunc` (0xd95d830) and `__glOdyim_StencilOp` (0xd95da60); the write mask is block 0x052 bits 19:12, enable block 0x004 bit 15 ([libglcore-odyssey-reads.md](../../software/opengl/libglcore-odyssey-reads.md)). [tokens.md](tokens.md) still lists block 0x01f contents as unknown; the readings above supersede that row.
- Corroboration (replay): every diagnostic stream sends block 0x01f as 0x0e000000 and 0x0e92ff00 around its clears. Under the layout above these are function ALWAYS (7), reference 0, mask 0x00 and 0xff, with KEEP and REPLACE on all three outcomes. The values fit the layout; no frame draws under a stencil test (block 0x004 bit 15 is set only on the clear states, 0x1b200).
- Storage: stencil is 8 bits; depth and stencil share a 4-byte field (bytes 8 to 11 of the 16-byte pixel), division of the bits inferred ([measured.md](measured.md) section 8). A V10 readback of drawn stencil values passes.
- Unknown: whether INCR and DECR saturate, as GL requires, and the order of the stencil and depth tests; no frame or measurement.
- Settle: V10 test with INCR at 255, DECR at 0, INVERT under a partial mask.

### Alpha test

- Comparison: **established (simulator)**, eight functions act as GL under reference 0.5 ([raster.md](raster.md) "Alpha test").
- Reference encoding: **software expectation**: 12 bits, 1.0 sent as 4095, else truncation of ref x 4096 (`__glOdyim_AlphaFunc` 0xd95aea0).
- Precision of the comparison: **inferred**: field/4095 is rejected by the frames; field/4096 and a 12-bit comparison both pass. Whether alpha is truncated or rounded to 12 bits: unknown.
- Settle: a frame with alpha within 1/256 of a non-0.5 reference.

### Blending arithmetic

- Width: **established (published)** blending at 12 bits per component, constants 12 bits ([11:0]); register layout is **software expectation** (block 0x021, equation codes 0 to 7, factor codes six bits; [BUZZ.h](BUZZ.h) section 4).
- Constant colour: every diagnostic stream sends block 0x021 words 1 and 2 as zero, and every stream's post-filter block 0x03b as scale 1.0, bias 0 (replay of `__clog_*`). No frame exercises a non-zero constant colour. The antialiased frames send word 0 as 0x639, which is equation 0 with factor codes 0x18 and 0x39 (SRC_ALPHA, ONE_MINUS_SRC_ALPHA in the library's table), so the factor codes are corroborated for that pair.
- Arithmetic: **inferred (simulator)**: the antialiased frames fit source alpha over destination on all four bytes with alpha equal to coverage. Rounding of the product, the 12-bit intermediate, and the constant-colour factors: **unknown**. No stored frame blends with a non-trivial constant colour, and the `blend` frame's colour residue taints its other panels.
- Settle: the `blendtest` program in the IRIS repository, run on a V10 with chosen source and destination values and constant colours and read back with glReadPixels (needs agreement before a physical run); the AA frames already bound the 8-bit result.

### Logic operations

- Grade: **inferred (simulator)**. Taking source words from the COPY panel and destination from the NOOP panel, CLEAR, AND, AND_REVERSE and AND_INVERTED panels equal op(source, destination) over the whole 32-bit word with none different; XOR and OR differ by 70 and 58 pixels, each explained by the colour residue ([raster.md](raster.md) "Logic operations").
- Route: the diagnostics set block 0x004 bit 17 with block 0x021 equation 5; the library's own enable uses bit 20. That the board treats both alike, and what the factor codes do under equation 5, is unknown.
- Settle: remove the colour residue (above), or a V10 XOR test under each route.

### Fog

- Form: **software expectation**. `__glOdysseyValidateFog` (0xd980cd0) describes fog as a cubic through four control values over eye distance. For GL_EXP and GL_EXP2 it samples the exponential at the range start, one third, two thirds and end (range end limited to 3.912/density and 1.83096/density) and converts the four samples to cubic control values; GL_LINEAR is the straight line 1, 2/3, 1/3, 0. Control values and offset go out as signed 12-bit fields times 256, a 3-bit power-of-two exponent and a depth-format float scale (block 0x01a, [tokens.md](tokens.md)). So fog is computed from a curve, not a table, and the exponent curves are approximated by the host before the board sees them.
- Board evaluation: **unknown**: the cubic's evaluation precision, rounding, the colour blend width (12-bit fog colour is the register width), and whether per-vertex or per-pixel. The patent places fog in the shader. No stored frame is fogged.
- Settle: a V10 readback of fogged geometry at several depths; or a raster-unit reading of block 0x01a.

### Texture coordinate interpolation and LOD

- Interpolation: **established** that the transform emits s/w, t/w, r/w and 1/w; **inferred (simulator, `checkr3d.sml`)** that each pixel divides the plane of s/w by the plane of 1/w, exactly enough that a coordinate equal at all vertices arrives unchanged (summing weighted vertex values in double precision moves 111 pixels). Divide width: **unknown**. Address reformatter is float to fixed (published); widths unknown.
- Nearest sampling: floor(32 u) per axis; index 32 under GL_CLAMP wraps in the small frame and is limited to 31 in the large one, which come from different simulator runs ([raster.md](raster.md)). Treat the board's behaviour at exactly 1.0 as unknown.
- LOD: per-quad value from the larger of the two diagonal s, t differences (US 6,232,981), **inferred**; the equation and widths were not in the text read. Registers: bias, minimum, maximum are 14-bit two's complement with 8 fraction bits, detail weight table index is 1/32 level, weight 12 bits (**software expectation**, block 0x013, [BUZZ.h](BUZZ.h)). Computed LOD fraction width: unknown.
- Settle: a diagnostic frame with minification or perspective at a texel boundary; the patent figure.

### Texture filtering

- Grade: **unknown** for weights, sub-texel position and rounding. Published only: a "texture tree filter" (tree of linear interpolations) over a 4 x 4 read of 2 x 2 subregions, mip blending between two integer levels, the fractional LOD bit-reversed or hashed and added back (US 6,259,460, inferred), and the 12-bit colour path after the filter. Every stored texture frame is nearest ([numeric-formats.md](numeric-formats.md) section 4). V10 measurement: texels keep the precision of their format (rgba4 replicates its nibble, [measured.md](measured.md) section 6).
- Settle: a V10 test with a two-texel ramp texture under GL_LINEAR at chosen sub-texel offsets and under mip blending at chosen LODs, read back with glReadPixels.

### Line and point rules

- Aliased, **established (V10 measurement)**: widths 1 to 10, x- and y-major, stipples and polygon modes match pixel for pixel the IRIS model: diamond exit for thin lines, width replicated along the minor axis, square points ([measured.md](measured.md) section 2). The IRIS model's rule text is not held in this repository.
- Aliased, **established (simulator)**: a width-one line lights the columns (rows) whose centre lies between the ends, the row holding y at the column centre, exact crossings to the lower pixel on the minor axis; a point lights floor(x), floor(y); end-pixel inclusion and minor-axis ties on y are untested. Whether this and the diamond-exit rule are the same rule is not shown here and should not be assumed; an end that lands exactly on a centre separates them.
- Width encoding: **software expectation** 128 x width, truncated, 24 bits; aliased sizes rounded to integer, smoothed clamped (lines 0.5 to 10, points 0.5 to 2) (block 0x04a).
- Antialiased: **inferred (simulator)**: coverage is a monotone curve G of exact pixel area (tabulated at 1/16 in [raster.md](raster.md)); line ends and oblique lines unfit. Replay (new): extending the strip past each end by 0.5 pixel cuts the mean error over the 89 edge pixels within 1.5 of an end from 8.86 to 1.83 steps of 204, and any extension from 0.5 to 1.25 stays at 1.83 to 1.92. That agrees with the V10 note below and replaces the earlier statement in [raster.md](raster.md) that extending the strip is worse; the tool's output is the current evidence. The cap shape is still unfit. **Measured (V10)**: the line ends at its endpoint pixel at full coverage, and a width-1 line centred at y = 9.6 stores 219 and 42 of 255 in rows 9 and 10. Reading the simulator's table at the same areas (0.9 and 0.1) gives about 0.87 and 0.25, so the low-coverage tail disagrees (about 42 against about 64 of 255), unless the V10 values include a background blend not recorded. Treat the simulator's G as not confirmed for the board.
- Settle: repeat the V10 readbacks against a recorded background; reconcile the two aliased rules on an end that falls on a centre.

### Dither

- Grade: **unknown**. Replay of every stream's block 0x004 writes: bit 18 is set only in the state 0x42200, written twice in every stream beside the clears, and the blend stream's one begin/end pair under it has no vertex. No drawn primitive is dithered, and the clear colour is zero. Enable is block 0x004 bit 18 (established, `__glOdyim_Enable`). No stored frame sets it; the flat-colour frames fit floor(256 c + b) for b from 0 to 0.2, so they show nothing. The patent's "dither" is the LOD fraction, not colour.
- Settle: V10 low-intensity gradient into an 8-bit and a 4:4:4:4 or 5:5:5:1 window with GL_DITHER on and off, compared pixel by pixel for the pattern.

## Replay results

Run from a fresh clone with `root/` linked to the held RE root (`root/builds/odydiags-6.5.15`) and the pinned `retools` checked out, using only existing tools. Frame counts are pixels differing from the stored frame.

| Run | Result |
|---|---|
| `odydiags_frame_check.py --survey` | Byte-identical to the stored survey run, [odydiags-raster-survey.txt](../../software/ucode/runs/odydiags-raster-survey.txt) (152 s). |
| points, lines, triangle, alpha, large and small | 0 pixels, CRC matches `csumlist` and `csumlist.sml` in all eight. |
| `checkr3d` small | 0 pixels, CRC 4bb39aca matches. Large: 76,795 pixels differ; with the texel index limited to 31, 29. |
| `blend` | Large 12,598 pixels (CRC b415d70e against 3d3662c0); small 83. With `--blend-fit`: large 5015, small 31. |
| `--logic` | Operations 0 to 5 (CLEAR, AND, AND_REVERSE, COPY, AND_INVERTED, NOOP): 25,896 pixels each, 0 differ. XOR 70 and OR 58 differ, all 128 explained by a source one step off. |
| `odydiags_blend_fit.py panels` and `amplify` | Panel 0 and COPY 1070 differ; 1325 pixels over 3 steps, of which 1311 follow from the panel 0 residue. |
| `odydiags_blend_fit.py fit` | Reproduces the table in [blend-residue-fit.md](blend-residue-fit.md): baseline 1070; best quantised variants 774, 735, 729; RGB plus one 12-bit low bit 556, 500 with alpha as 4096; none reaches 0. |
| `odydiags_aa_fit.py` | Near-axis lines 4527 edge pixels, mean 0.41 steps, largest 4; 15-degree line 1367 pixels, mean 7.05, largest 26; size 1 points 49, mean 2.89; size 2 points 277, mean 2.35. |

New small fits (an ad hoc script, not committed; it imports `odydiags_blend_fit.samples` and does the arithmetic on the 13,934 pixels of panel 0):

| Fit | Pixels still different |
|---|---|
| exact perspective-correct colour, f64, floor(256 c) | 1070 |
| the same arithmetic in f32 (plane form) | 1069 |
| edge distances times a reciprocal area, 1/w bilerped, barycentrics corrected, in f32 (the form US 6,259,460 describes) | 1069 |
| the same in f64 | 1070 |
| weights floored to 12, 14, 16 bits, 12-bit vertex colours, then converted | 2321, 1676, 1539 |
| f32 against f64 results | differ on 1 pixel |
| iris VPro colour path (below) | 1073 (per channel 722, 714, 747, 253) |

### The iris VPro colour path

`odydiags_blend_fit.py iris` reproduces the arithmetic of iris's VPro quad pipeline (github.com/techomancer/iris, main at 9bc81b0, `src/dev/odyssey/pipe`; the name `upstream/main` in the request is not a branch of the jamesbraid fork, whose `main` d4fea4a has the same `interp.rs`, `fixed.rs`, `raster.rs`, `shader.rs`, `setup.rs` and `backend.rs`) in iris's own operation order, with numpy single-precision scalars so each step rounds as the Rust does. The steps and where iris does them:

1. Vertex position: 1/256 pixel integers, `raster.rs:26-28`, edge values by `raster.rs:330-343` and `357-359`, evaluated at the pixel centre; area and the swap to positive winding `raster.rs:303-316`. Input here is the builder's already-truncated position (every vertex sits on the 1/256 grid; largest distance 0.0).
2. Vertex colour: `fixed::from_f64`, truncation to 12.12 (`fixed.rs:31-39`, `setup.rs:443`).
3. Barycentrics: `l1 = f32(e1) x f32(1/area)`, `l2` likewise (`raster.rs:352`, `511-512`).
4. Weights: `w1 = l1 iw1`, `w2 = l2 iw2`, `sum = ((1 - l1 - l2) iw0 + w1) + w2` in single (`interp.rs:54-56`, with `iw` the 1/w narrowed to single, `setup.rs:507`); `r = 32768 / sum` (`interp.rs:59`); weights `trunc(w r + 0.5)` clamped, the third vertex taking the remainder so the three sum to 32768 (`interp.rs:61-64`).
5. Colour: each vertex value `>> 8` to 12.4, times its 0.15 weight, summed, `>> 7` to 12.12 (`fixed.rs:119-125`).
6. Store without a blend: 12.12 clamped to 12 bits (`backend.rs:213-215`, `setup.rs:570`), `>> 4` to 8 (`backend.rs:424`), which is floor(256 c).
7. Blend: 12-bit `mul12` and equation (`backend.rs:225-229`, `399-417`). Not reached by any blend frame: panel 0 has blending off, and panels 1 to 8 set block 0x004 bit 17 with equation 5, which iris routes to the logic operation instead (`backend.rs:301-307`). The 12-bit blend arithmetic is untested by these frames.

| Frame | iris pixels differing | existing rebuild |
|---|---|---|
| blend panel 0 (13,934 pixels) | 1073 (722, 714, 747, 253 per channel) | 1070 (730, 727, 751, 244); f32 plane 1069; f32 patent form 1069 |
| blend panels 0 to 8 | 1073, 181, 1645, 1825, 1073, 1575, 1447, 2223, 1742 | 1070, 177, 1623, 1792, 1070, 1549, 1390, 2204, 1723 |
| blend whole frame, large / small | 12,784 / 80 | 12,598 / 83 |
| points, lines, triangle, alpha, large and small; `checkr3d` small | 0 in all nine | 0 |

The model does not change the exact frames, and does not reduce the residue: it is 3 pixels worse than f64 on panel 0. Where iris's order differs from the patent form: iris takes edge values as exact integers and converts them to single once, where the patent's edge distances are floats with a shared exponent of unknown width; iris quantises the three perspective weights to 15 bits with the third as the remainder, where the patent keeps two 32-bit floating-point corrected barycentrics; iris truncates twice, the vertex colour to 12.12 and then to 12.4, and the weighted sum to 12.12. These are 2^-15 to 2^-16 effects against the 2^-12 (one 12-bit step) residue, which is why they do not move the count by more than a few pixels. Log: [odydiags-blend-iris.txt](../../software/ucode/runs/odydiags-blend-iris.txt).

### The same frame through iris's own back end

The table above is a NumPy transcription of iris's colour path. To check the transcription, the blend frame was also drawn through iris's VPro back end itself, `VproBack::draw`, from the fork branch `spike/board-crates` at commit 2ccd770fdf085a786a5592deaf1330f43e5fc6b2, on the CPU and on the GPU path (RTX 4090, Vulkan). The harness is local and not published. It takes the replay's window positions (already on the 1/256 grid), 1/w and vertex colours, converts them to clip-space vertices, and passes the block 0x004, 0x021 and 0x022 words and the scissor of each quad as the draw's state words. Quads are drawn as the triangles (0, 1, 2) and (0, 2, 3), as the fit script does. Coverage, the barycentric and weight arithmetic, the store and the logic operation are iris's own code; only the input vertices come from the replay. The triangle and alpha frames, which the odsy rules reproduce exactly, come out with 0 differing pixels as a check on the harness.

| Frame | CPU | GPU | NumPy model above |
|---|---|---|---|
| blend panel 0 (13,934 pixels) | 1073 (722, 714, 747, 253 per channel) | 1073 | 1073 |
| blend panels 0 to 8 | 1073, 181, 1645, 1825, 1073, 1575, 1447, 2223, 1742 | the same | the same |
| blend whole frame, large / small | 12,784 / 80 | 12,784 / 80 | 12,784 / 80 |
| triangle, alpha (large) | 0, 0 | 0, 0 | 0, 0 |

The CPU and GPU colour planes of the large frame are byte-identical, and every count equals the NumPy model's, including the eight panels that go through iris's logic route. So the transcription was faithful, and iris's actual colour path leaves 1073 pixels on panel 0, three more than exact arithmetic (observed, on the iris model at 2ccd770fd; not a statement about the board). One input differs from the board's own words: the harness takes 1/w from the replay and iris re-derives it as 1/(1/q) in single precision, which changed no pixel here. Log: [odydiags-blend-iris-backend.txt](../../software/ucode/runs/odydiags-blend-iris-backend.txt).

Line ends in the antialiased frames, extension of the strip past each end (mean error over 89 edge pixels, steps of 204): 0 gives 8.86, 0.25 gives 4.13, 0.5 gives 1.83, then 1.86, 1.92, 1.92, 1.92 at 0.625, 0.75, 1.0 and 1.25.

Streams: block 0x004 is 0x3200, 0x7200, 0x2200, 0x22200, 0x23201 or 0x23202 for every drawn primitive; bit 18 appears only in 0x42200. Block 0x020 (depth function) is 1 (LESS) or 7 (ALWAYS) with the depth test enable (bit 16) clear on every drawn primitive.

### What the replay settles

| Question | Result | Grade after |
|---|---|---|
| Snap between 1/256 steps | Nothing new: only `checkr3d.sml` has vertices off the 1/256 grid, and the survey rows are reproduced exactly (truncate 1/256: 0; round 1/256: 5; truncate 1/128: 6) | unchanged: established (simulator), inferred (board) |
| Colour and alpha interpolation arithmetic | f32 and f64 are indistinguishable on this frame (1069 against 1070); no form tried removes the 1070-pixel residue; 12-bit-quantised weights are worse | unchanged: unknown arithmetic; f32 not excluded |
| Blend rounding and constant colour | No stream has a non-zero constant colour or a blend of 8-bit destination other than the AA frames | unchanged: unknown |
| Logic operations | Reproduced exactly: 0 of 25,896 pixels in six panels, 128 of the other two explained | unchanged: inferred |
| Alpha-test rounding | No frame has alpha within 1/256 of the reference other than 0.5 | unchanged: inferred for the comparison width |
| Depth rounding | No drawn primitive has the depth test on | unchanged: unknown |
| Texture filtering | The one textured frame uses TEXMODE4 0x13002a00, filter field 0 (nearest) | unchanged: unknown |
| Dither | Only the begin/end with no vertex and the clears set bit 18 | unchanged: unknown |
| Stencil word layout | Stream values 0x0e000000 and 0x0e92ff00 fit the library layout | software expectation, now with stream values that fit |
| AA line ends | A strip extended by at least 0.5 pixel fits to 1.83 steps | unfit to inferred (cap extension of about half a pixel) |

### Tool changes that would help, not built

- `odydiags_blend_fit.py` has no f32 mode; the f32 fit above would be a `--precision f32` option on `fit`.
- `odydiags_aa_fit.py` takes its line-end extensions from a fixed tuple; making them an option would let the cap shape be fit directly.
- No frame can answer the remaining unknowns, so no tool change would; the diagnostics' stream set is fixed.

## V12 test candidates

The Octane2 in question has a V12. Nothing here has been run, and none of it is a register read: each test is a GL program with a pixel, depth or stencil readback (`glReadPixels`), or a diagnostic checksum. They are the cheapest ways to settle what no stored frame can. The same list is in [questions/README.md](../../questions/README.md).

What may not transfer from the V10 measurements ([measured.md](measured.md)):

- The V10 runs were on the 32 MB V10 (BUZZ type B, revision B.1 or B.2, 2 banks) under IRIX 6.5.22 with patch 5578, with an 8-byte frame buffer. A V12 is 128 MB, 4 banks, and the published V12 sample reads "buzz revision is 10", which this repository reads as type B, printed B.1; V12 boards in the published records are B.0, B.1 and B.2 ([board README](../board/README.md)). Whether B.0, B.1 and B.2 differ in arithmetic is unknown, so a result from one revision is not shown to hold for another.
- The V12 offers 12-bit colour visuals and accumulation type 1 that the 32 MB V10 does not ([display README](../display/README.md)). Tests of colour width need them, and nothing about the 12-bit paths has been measured on any board.
- The X server's default frame buffer is 16 bytes a pixel; the V10 runs set 8 bytes. The library takes different paths by frame-buffer size (the FRONT_AND_BACK clear, inferred in [measured.md](measured.md) section 11), so a V12 readback should record the frame-buffer setting.
- The aliased-line and point match, GL_SUBPIXEL_BITS 3, the antialiased line values and the depth probe came from the V10. Transfer to a V12 is expected, since both are BUZZ type B, but it is not shown.

| # | Unknown it settles | Program or diagnostic | Read back | Why the replay cannot |
|---|---|---|---|---|
| 1 | Colour and alpha interpolation arithmetic and width (f32 against 12-bit modules; the 1070-pixel residue) | One triangle with the vertices, 1/w and colours of blend panel 0, in a 12:12:12:12 window or pbuffer, flat shaded off; also one in 8:8:8:8 | `glReadPixels` RGBA `GL_UNSIGNED_SHORT` over the triangle, and `GL_UNSIGNED_BYTE` | Stored frames are 8-bit simulator output; a 12-bit readback shows the module output directly |
| 2 | Snap quantum and rounding; edge and shared-edge ties | A thin quad whose right edge sweeps 0 to 1/8 pixel past a pixel centre in 1/256 steps; then the shared-edge XOR test of [raster.md](raster.md) on half-integer centres, four orders | Lit or unlit per pixel; XOR white, black, or ADD grey for holes and doubles | No held stream has off-grid vertices or centres on edges; the simulator is not the board |
| 3 | Depth rounding, clear mapping, depth interpolation width | `glClearDepth` 0.3 and other values with bits below the 18th mantissa bit; a slanted triangle at depths between mantissa steps, perspective and orthographic | `glReadPixels` `GL_DEPTH_COMPONENT` as `GL_FLOAT` and `GL_UNSIGNED_INT` | No stored frame depth-tests |
| 4 | Stencil INCR/DECR saturation, INVERT under a mask, stencil against depth ordering | 8 quads under INCR at 255, DECR at 0, INVERT with mask 0x0f, and fail/depth-fail/pass combinations | `GL_STENCIL_INDEX` | No frame draws under a stencil test |
| 5 | Blend rounding, constant colour, alpha-test rounding | Grid of source alpha 0 to 255 by destination values; GL_CONSTANT_COLOR factors with 12-bit constants; alpha-tested quads at reference plus and minus 1/4096 | 8-bit and 12-bit readback; pass or fail per quad | Streams use zero constant colour and one alpha reference |
| 6 | Fog evaluation (exp, exp2, linear), the cubic's precision | A quad swept over depth under each fog mode, fog colour distinct from the quad | 12-bit readback against the exact formula | No stored frame is fogged |
| 7 | Texture filter weights and sub-texel width; LOD fraction; index at 1.0 | Two-texel ramp under GL_LINEAR at sub-texel offsets in 1/256 steps; a two-level mip at chosen LODs; GL_NEAREST at s = 1.0 under clamp | 12-bit readback | The only textured frame is nearest, with a 32-slice index case from two different simulator runs |
| 8 | Dither | Low-intensity gradient into 8:8:8:8, 4:4:4:4 and 5:5:5:1 windows, GL_DITHER on and off | Per-pixel difference pattern | No frame sets bit 18 on a drawn primitive |
| 9 | Antialiased line tail and ends | Width-1 lines at y = 9.6 and other fractions over a recorded background; an end on a pixel centre | 8-bit readback | The simulator curve and the V10 values disagree in the low-coverage tail |

Tests 1, 5, 6 and 7 can share one harness in the 12-bit visual. Test 2 also answers whether the aliased-line "diamond exit" rule and the simulator's centre-sampling rule agree where an end lands on a centre. Each physical run needs James's agreement first (proposal naming the unknown, evidence tried, smallest test and precautions).
