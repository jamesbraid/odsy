# Raster arithmetic reference

What the RE corpus and the manuals show about the arithmetic BUZZ itself uses, one stage at a time, for a reader who is building a model and needs to know which numbers are evidence. It adds no new finding: each row points at the page that holds the evidence ([raster.md](raster.md), [numeric-formats.md](numeric-formats.md), [tokens.md](tokens.md), [BUZZ.h](BUZZ.h), [measured.md](measured.md), [published-sources.md](../../references/documents/published-sources.md)). It gives no implementation advice.

## Grades

- **established**: read from a shipped binary, a published document or a measurement on a real V10, with the source named. A row says "(simulator)" when the only basis is a frame stored by the vendor's C simulator of the board, which [raster.md](raster.md) explains is the diagnostics' expected value, not a board capture. Such a fact is established for the simulator and, for the board, no better than **inferred**; the row gives both.
- **software expectation**: what the shipped driver encodes or assumes (a register layout, a clamp, a conversion). It shows what software sends, not what the board does with it.
- **inferred**: a reasoned reading, or a partial fit. The row gives the reasoning.
- **unknown**: no held evidence.

Clean-room note: every row rests on shipped binaries (6.5.30m N32 `libGLcore.so` and the kernel driver, with their line tables), the diagnostics package, published patents and manuals, and V10 and simulator runs recorded in this repository. No row rests on the 6.5.7 source readings that some pages cite (the pixel-mode block and frame-buffer layout in [measured.md](measured.md)), and no IRIX source was opened for this page. "Source line" in the cited pages means the line table of the 6.5.30m binary.

This pass replayed no frames: the replay script needs the diagnostics package under `root/`, which is not in this checkout. The grades below use the stored survey run, [odydiags-raster-survey.txt](../../software/ucode/runs/odydiags-raster-survey.txt), and the stored fit logs beside it.

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

So: f32 is supported for host input, transform and depth. For colour the published width is 12 bits, and the one frame that exercises interpolation (`blend`) is not reproduced by any exact (infinite-precision) perspective-correct model: 1070 of 13,934 pixels in panel 0 stay one 8-bit step off, and quantised variants (12-bit vertex colours, 10 to 16-bit weights, 6 to 14-bit 1/w) do not close it. The residue behaves like a value below 0.5 reading 1/16 of an output step high; 1/16 of an 8-bit step is one 12-bit step, which fits a 12-bit grid but is **inferred** from a fit only. No attempt in the repository tried f32 intermediates specifically, so f32 colour is neither shown nor excluded by a run; the published module width is the better-supported reading. Rounding of the stored 8-bit value is floor(256 c), clamped to 255 (established, simulator, `alpha` frames), not round(255 c).

## Summary

| Stage | Grade | One-line fact | How to settle |
|---|---|---|---|
| Vertex snap and setup | established (simulator), inferred (board) | Window x, y truncate toward minus infinity to 1/256; separated only by `checkr3d.sml` (rounding moves 5 px). Driver reports GL_SUBPIXEL_BITS 3, which conflicts | A frame with vertices between 1/256 steps, or a V10 readback of a sub-pixel-offset primitive |
| Edge and tie rule | established (simulator) for centre sampling; unknown for ties | Triangles light pixels whose centre is inside; no stored frame has a centre on an edge; patent says one owner per shared subpixel | The edge-tie test in [raster.md](raster.md), on a V10 |
| Colour and alpha interpolation | inferred | Perspective-correct, 12-bit modules; stored as floor(256 c); exact arithmetic unknown (1070 px residue) | Fit the three-vertex frames against patent forms; vendor simulator constants; capture |
| Depth interpolation and store | inferred (interpolation); established (software expectation) for the word | Float, perspective-corrected, eye-linear; host reads 24-bit exponent/mantissa word; board rounding unknown | A depth-test frame, or a V10 clear/draw/readback at a depth that needs rounding |
| Stencil | software expectation | One block carries function, reference, mask and three ops; stencil is 8 bits beside 24-bit depth; no arithmetic shown | V10 test of INCR/DECR at 255/0 and INVERT with masks |
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
- Antialiased: **inferred (simulator)**: coverage is a monotone curve G of exact pixel area (tabulated at 1/16 in [raster.md](raster.md)); line ends and oblique lines unfit. **Measured (V10)**: the line ends at its endpoint pixel at full coverage, and a width-1 line centred at y = 9.6 stores 219 and 42 of 255 in rows 9 and 10. Reading the simulator's table at the same areas (0.9 and 0.1) gives about 0.87 and 0.25, so the low-coverage tail disagrees (about 42 against about 64 of 255), unless the V10 values include a background blend not recorded. Treat the simulator's G as not confirmed for the board.
- Settle: repeat the V10 readbacks against a recorded background; reconcile the two aliased rules on an end that falls on a centre.

### Dither

- Grade: **unknown**. Enable is block 0x004 bit 18 (established, `__glOdyim_Enable`). No stored frame sets it; the flat-colour frames fit floor(256 c + b) for b from 0 to 0.2, so they show nothing. The patent's "dither" is the LOD fraction, not colour.
- Settle: V10 low-intensity gradient into an 8-bit and a 4:4:4:4 or 5:5:5:1 window with GL_DITHER on and off, compared pixel by pixel for the pattern.
