# Published sources: patents, white papers and service references

What the published primary sources say about VPro (Odyssey: the BUZZ chip and the PB&J display chip; V6, V8, V10 and V12), one entry per source. Each entry gives the source's identity, what it describes, how closely it matches the shipped board, and the facts it gives. Authors are left out on purpose; the title and number identify each source.

Labels follow [AGENTS.md](../AGENTS.md) section 6, with one addition for published material:

- **established (published)**: a first-party SGI manual or white paper about the shipped product says it. It is a designers' statement, not a read of the device.
- **inferred**: a patent says it. A patent describes a design and does not prove the shipped chip. A patent fact becomes established only where a binary or a stored test output agrees, and then the entry cites that binary and the owning chapter.
- **unknown**: the source does not say.

## Is the patent family the BUZZ chip?

Four patents filed in 1998 describe a single-chip OpenGL graphics subsystem: a "graphics chip" plus SDRAM, a host link the text calls CROSSTALK (SGI's name for the XIO link the board uses), and, inside the chip, a front end, a transform engine, a raster unit, a texture unit, a shader unit and a display unit. None names a product. They are matched to BUZZ by agreement with first-party text, **inferred**, because nothing names the chip:

- The porting guide (source 5) says the command FIFO holds about 1 ms of commands; the patent (source 2) says "nominally 1 ms. worth of latency", in the same words.
- The white paper (source 6) names the same blocks, a command FIFO, a graphics front end, a transform engine and a rasterisation, texture and shading engine, on one chip with a back-end video chip.
- The patents' transform engine has no conditional branches and runs fragments of microcode chosen from a program table, which is what the 24-record program table of [ucode/buzz_routines.md](../ucode/buzz_routines.md) shows.
- The patents' scalar stage offers an inverse square root, a negate, an exponent and an arc-sine; the shipped microcode has an inverse square root, a negate and a table function ([ucode/buzz_isa.md](../ucode/buzz_isa.md), "Scalar codes").
- The porting guide's depth buffer is in eye space and its transform output is 12 bits per component; the shader in source 3 interpolates depth with floating-point barycentrics and colour in 12-bit modules.

A wrong match would show as a patent fact the binaries contradict. None was found.

## Sources at a glance

| # | Source | Kind | Describes | Match |
|---|---|---|---|---|
| 1 | US 6,417,858, processor for geometry transformations and lighting | patent | the transform engine and colour unit | high, inferred |
| 2 | US 6,104,415, minified texture cache access | patent | the whole chip; the texture cache | high, inferred |
| 3 | US 6,259,460, texture cache misses by recirculation | patent | the raster unit, shader unit, texture path | high, inferred |
| 4 | US 6,232,981, diagonal level of detail | patent | level of detail of a pixel quad | high, inferred |
| 5 | VPro for Octane Porting Guide 007-4271-001 | SGI manual | V6 and V8 | exact |
| 6 | VPro 12-bit architecture white paper | SGI white paper | VPro, Octane2, Fuel, Onyx 3000 | exact |
| 7 | VPro Odyssey Graphics Diagnostic Reference 108-0314-001 | SGI service reference | the Octane2 board | exact |

Reviewed and set aside, because they do not describe BUZZ: US 6,650,327 and its continuations (floating-point rasterisation and frame buffer, filed 1998; BUZZ keeps 12-bit components, source 6); EP 1,173,829 and US 6,760,033 (logic and frame buffer on one chip, filed 1999; BUZZ uses external SDRAM and 1.5 million bits of on-chip SRAM, source 7); US 5,548,709 and US 5,490,240 (texture memory with interpolation and three-dimensional textures, earlier generations); the single-semiconductor-platform patents of another vendor (US 6,198,488 and continuations). The Nintendo 64 signal-processor patents (US 6,342,892) share a co-inventor with source 1 and a vector-unit lineage but describe a different part. Searches of patent databases found no SGI patent on the BUZZ microcode word, the PB&J chip or the board's XIO register file.

## 1. US 6,417,858, processor for geometry transformations and lighting

- Identity: US 6,417,858 B1, "Processor for geometry transformations and lighting calculations", filed 1998-12-23, granted 2002-07-09, assigned to SGI by its inventors. https://patents.google.com/patent/US6417858B1/en
- Stored copy: [docs/sources/patents/US6417858.pdf](sources/patents/US6417858.pdf), SHA-256 `e1ecef98e53ed1c95da5d6cff0725ed6f344ee698eb6c54ef30e832bdd4de119`.
- Covers: a single integrated circuit with a graphics front end, transform engine, raster unit, texture unit and shader unit, an SDRAM command FIFO and an SDRAM texture cache; the transform engine and colour unit in detail.
- Match: high. Facts **inferred**.

Facts:

- **Stage structure.** Stage 1 is a vector unit with two operand registers that forms four dot products, one per row of a 4x4 matrix (the model-view-projection, model-view or texture matrix) with a fused multiply and add, fully pipelined at one result per clock, with a pass-through mode. Stage 2 is a scalar element that multiplies a single value by another where Stage 1 did no dot product, plus look-up tables for four functions: arc-sine, exponent, inverse square root and negate. Stage 3 divides x, y and z by w. A colour unit does per-vertex lighting for up to eight lights with a multiplier followed by an accumulating adder and a local register file, and a latency-matching pipeline aligns its output with Stage 3. This is the vector-lane, scalar-code, 1/w and colour-unit structure that [ucode/buzz_isa.md](../ucode/buzz_isa.md) reads from the shipped microcode: four-lane dot products, scalar codes, the 1/w word and the colour unit with its own address, store and operation bits. **Inferred** agreement, not an established match.
- **The scalar codes.** buzz_isa.md reads code 1 as the reciprocal square root and codes 4 and 0xc as negation (established or inferred there, with run evidence), and codes 3 and 0xb as one table function sampled at x and x + 1/32 in the spot-interpolation routine. The patent's four table functions are exactly the set that contains those three. **Inferred:** the table function behind codes 3 and 0xb is the exponent (the spot-light and specular power) or the arc-sine, and the patent does not say which a given routine uses. The routine-792 run, whose weight rises as the angle between the light and the spot axis grows, would discriminate: an exponent table gives a smooth falloff, an arc-sine table an angle. Codes 2, 5, 6 and the multiply-by-factor codes 0xd and 0xe are consistent with the patent's scalar multiply ("a single value by another"), which agrees with the multiply-by-K reading of code 5.
- **No branches, a program table.** The datapath is microcode controlled by decoders that drive microcode bits straight onto control lines and hold preset values when idle; a program table lists the addresses of microcode fragments, assembled into custom instructions, so no conditional branches are needed. The worked example is a normalise fragment included only when needed. This agrees with the program table and the value-3 marks of [ucode/buzz_routines.md](../ucode/buzz_routines.md). **Bearing on the "value-3 marks" open question:** the patent has no run-time branch, so a mark that "decides between the loop and the alternate entry" is more likely a table-construction step than a condition tested per vertex. Not established; route: read `AddProgram`'s use of the mark when it builds a program.
- **Number handling.** Single-precision floats are converted to an internal format in the front end; NaN and infinity become the largest value, which removes branches. The shipped register 0x26 holds a maximum exponent for w (127 at start-up, [ucode/buzz_isa.md](../ucode/buzz_isa.md)). **Inferred:** the internal format has a bounded exponent and 0x26 is where the bound is set. The widths are not given.
- **Vertex state.** Two single-vertex buffers, one read while one fills, with the front end keeping the shadow state of the current vertex and the three before it; attributes can be copied so a vertex inherits from its predecessor.
- Not in the text: microword width, register counts, latencies, table sizes, interpolation of the tables, colour-unit widths, clamping.

## 2. US 6,104,415, minified texture cache access

- Identity: US 6,104,415, "Method for accelerating minified textured cache access", filed 1998-03-26, granted 2000-08-15, assigned to SGI. https://patents.google.com/patent/US6104415A/en
- Stored copy: [docs/sources/patents/US6104415.pdf](sources/patents/US6104415.pdf), SHA-256 `410d216357efc33bce3b64d6bcef52e5ddcafadb65c1456e307c659c86f37c45`.
- Covers: the whole chip as background (system and chip level), then the texture cache and a way to serve minified textures. Related applications named in the text became sources 3 and 4.
- Match: high. Facts **inferred**.

Facts:

- **System.** CPUs reach one or more graphics subsystems through a crossbar; each graphics subsystem is one chip plus SDRAM; a display back end merges subsystems and drives up to four DACs. This is the Onyx 3000 InfinitePerformance arrangement of V12 pipes feeding compositor and DAC, and the Octane2 arrangement of BUZZ plus PB&J.
- **Front end.** A peer-to-peer link, a DMA engine with formatting, and a command FIFO held in SDRAM of nominally 1 ms of latency, with chained-subsystem, context-switch, register-read and display-access functions. The model is a push one: commands map to integer tokens. [docs/buzz.md](buzz.md) reads a 128 KB command FIFO (base tile 0x6b0, size 256 two-bit-per-pixel tiles); 131072 bytes in 1 ms is 131 MB/s, **inferred** as the rate "nominally" assumed, not a measurement.
- **Raster unit.** Parses command tokens and schedules every SDRAM transaction; rasterises by recursive subdivision in Hilbert-curve order; makes perspective-corrected barycentric parameters used to interpolate among a triangle's three vertices; holds the frame-buffer cache and line and point antialiasing; frustum clipping falls out of the subdivision; user clip planes use the sign of a texture-coordinate interpolation.
- **Texture cache.** On-chip SRAM of 16 banks x 512 words x 48 bits (393,216 bits, 48 KB), direct mapped and hashed, 32 tiles of 16 x 16 texels, read as a 4 x 4 block (16 adjacent texels). A texture mux picks four 2 x 2 subregions and outputs 16 RGBA values. Fills come from SDRAM over a 256-bit bus through a format unit that expands or compresses formats. The unit also does 1D, 2D and 3D textures, convolutions, FFTs and pixel textures. The porting guide's limits (source 5) agree: 3D textures, no mipmaps for 3D, 12-bit look-up tables.
- **Minified textures.** A "fake mipmap": the stride between sampled texels is 2^LOD, so a minified texture is sampled every nth texel and the tiles are assembled in the cache; eight levels can share one SDRAM start address with different strides; the fractional level of detail is bit-reversed or hashed and added back (dither). Texture level words in [BUZZ.h](../BUZZ.h) sections 2 and 3 can be checked for a stride field that supports this. Not done in this pass.

## 3. US 6,259,460, texture cache misses by recirculation

- Identity: US 6,259,460 B1, "Method for efficient handling of texture cache misses by recirculation", filed 1998-03-26, granted 2001-07-10, assigned to SGI. https://patents.google.com/patent/US6259460B1/en
- Stored copy: [docs/sources/patents/US6259460.pdf](sources/patents/US6259460.pdf), SHA-256 `9bb4e23578a1ecd82e8f80d227a692241a2f3ef71ab089113e8119e81a9b8364`.
- Covers: the raster, shader and texture path in detail, with the recirculation scheme.
- Match: high. Facts **inferred**.

Facts:

- **Rasterisation.** A subdivider cuts the largest region (4K x 4K) down to 2 x 2 quads in a Hilbert-curve pattern; at the 16 x 16 tile level all levels down to the quad are processed in parallel; the parser snaps vertices to a grid (the grid is not stated); the line-equation block produces 12 mantissas with only 3 distinct exponents (the edge equations are floating point with shared exponents). Barycentric unit: the reciprocal of the triangle area, then each of two edge-equation signed distances times that reciprocal, gives two barycentrics of three that sum to one; a unit bilinearly interpolates 1/w from them and a second unit corrects the barycentrics with it (perspective correction). Two pixels leave per clock, with the same attributes but different barycentric coordinates. The drawable limit in the porting guide, 4096 x 4096, is the subdivider's top level.
- **Coverage.** Coverage recursively subdivides from the quad to the subpixel level, tested by the signs of the edge distances; when an edge value is exactly zero the neighbouring pixels of the quad are checked so that only one primitive covers a shared subpixel, and no epsilon offset is needed for pinwheel vertex arrangements. Antialiasing uses 8 subpixels per pixel in a staggered pattern; points have all 8 at the pixel centre; the nearest-in-depth covered subpixel supplies depth, with dz/dx and dz/dy computed. **Bearing on the raster rules:** [docs/raster.md](raster.md) establishes centre sampling for triangles and quads and leaves the tie rule for a centre exactly on an edge untested. The patent says ties are resolved by consulting the neighbouring pixels of the quad, which gives one consistent owner per shared edge. **Inferred:** a centre on an edge belongs to exactly one of two abutting primitives, as in any consistent top-left rule; which side owns it is not stated. The "all 8 at the centre" rule for points agrees with the established point rule.
- **Shader.** Shading and depth interpolation, per-pixel lighting, texture environments before and after lighting, fog, multi-fragment polygon antialiasing and the per-fragment tests. Eight identical 12-bit "bilerp" modules generate four 12-bit colour components, or one 24-bit monochrome component, for two fragments each cycle. The depth interpolator has two sub-blocks, one per pixel, each taking three floating-point inputs and two 32-bit floating-point perspective-corrected barycentrics and giving one floating-point output.
- **Texture path.** Address reformatter (float to fixed), level of detail per quad, address unit, cache with tag table, format unit, 2 x 2 subregion mux, then "texture tree filter" and look-up tables; a miss recirculates the quad through about 150 pipeline stages while the cache fills, with a sleep bit per pixel, 30 logical bins and a 4-bit primitive id keeping primitives in order. Level of detail and s, t, r are recomputed after recirculation.

Bearing on the open entries:

- **Colour interpolation arithmetic** (Raster rules in [open-questions.md](open-questions.md)). The existing fit, perspective-correct colour from per-vertex values and 1/w with floor(256 c), leaves 1090 pixels one step off in `blend.SUM`, with a deviation that is linear in x along each row, changes from row to row and depends on screen position. The patent gives three mechanisms that would produce this and that earlier attempts did not model: (a) colours are interpolated by 12-bit modules from barycentrics, so the intermediate is 12 bits wide per component and the weights are products of a reciprocal-area scale and edge distances, not plane coefficients; (b) the barycentrics are corrected by a bilinearly interpolated 1/w, so the divide is by an interpolated value of limited precision; (c) the edge distances come from a recursive subdivision from 4K x 4K, so the value at a pixel is reached by halving steps from a coarse corner, and its rounding depends on the pixel's place in the subdivision tree rather than on its row. (c) fits "depends on screen position" and the per-row linear structure only if the halving is exact in binary but the reciprocal of the area is rounded. **Inferred** candidates. **Tested, 2026-10-29, and not confirmed:** the first panel of `blend.SUM` (both quads, 13,935 pixels counted from the replay's coverage; the baseline model leaves about 1,100 of them different) was rebuilt with the exact model changed in one place at a time, using `scripts/odydiags_frame_check.py`'s own build with a replaced interpolation: (1) the two barycentrics rounded or truncated to 8 to 20 fraction bits; (2) the three weights (barycentric times 1/w) rounded, truncated or rounded up to 10 to 14 mantissa bits; (3) the denominator the same, 9 to 13 bits; (4) the reciprocal of the denominator the same, 9 to 14 bits; (5) the numerator and denominator formed as planes whose x and y slopes are cut to 8 to 24 mantissa bits (the incremental form a stepper would use); (6) a uniform relative error of -2 x 10^-3 to +3 x 10^-3 on the result. None leaves fewer than 1,082 different; the smallest-error variants (14 to 16 bits on the weights, planes or reciprocal) match the baseline within 20 pixels and every coarser one is worse (for example 10 bits: 1,600 to 5,000). So the residue is not a precision limit at any of these points. What is left from the patents: the 12-bit module width itself (colour, not weights, quantised), and the subdivision-order evaluation (c), neither tested. Stored bytes sit above the exact floor about six times as often as below it in red and blue (3,827 against 624 and 3,938 against 565 over the one-step pixels of the whole frame), so the hardware's value runs slightly high rather than noisy; a pixel such as x = 100 of row 161, whose exact value is 224.988 and whose stored byte is 225, shows it. A bias that fits has not been found: a uniform one is worse than none (above, 6).
- **Texture arithmetic.** Widths of the filter weights and the sub-texel position are not given: the text names the "texture tree filter" (a tree of linear interpolations) and the 4 x 4 read, nothing more. The 12-bit module width bounds the colour path after the filter.

## 4. US 6,232,981, diagonal level of detail

- Identity: US 6,232,981 B1, "Method for improving texture locality for pixel quads by diagonal level-of-detail calculation", filed 1998-03-26, granted 2001-05-15, assigned to SGI. https://patents.google.com/patent/US6232981B1/en
- Stored copy: [docs/sources/patents/US6232981.pdf](sources/patents/US6232981.pdf), SHA-256 `f464ced09e61af6021e865c9fcd8e181c62d32aa23fb09e246624e7a6dfed046`.
- Covers: how the texture unit picks one level of detail for a 2 x 2 quad. Match: high; facts **inferred**.

Facts:

- A quad arrives as two cycles of two pixels. The level of detail is the base-2 logarithm of the largest absolute difference in s and t taken along the two diagonals of the quad, one diagonal from pixel 1 to pixel 4 and the other from pixel 2 to pixel 3, so one value serves all four pixels and the four s, t pairs pass through unchanged. It lies between the two OpenGL limits (the larger of the two axis derivatives and their sum), meeting the lower limit when texels and pixels align at 90 degrees and the upper at 45 degrees. A footprint of 4 x 4 texels (a toroidal wrap of it) is virtually guaranteed; a texel outside it counts as a cache miss and the quad recirculates. The text gives a hardware form and says the C simulation of the arithmetic is in the patent; the equation image and the widths were not in the text read.
- Mipmap blending is between two integer levels, a level of 1.3 being 0.3 of level 2 and 0.7 of level 1.

Bearing: the diagonal method is the level of detail candidate for the BUZZ texture words and for any texture frame beyond the nearest-texel `checkr3d`. It does not change the nearest-texel result already established.

## 5. VPro for Octane Porting Guide (007-4271-001)

- Identity: SGI, "VPro for Silicon Graphics Octane Porting Guide", document 007-4271-001, version 001, April 2000, 56 pages. https://irix7.com/techpubs/007-4271-001.pdf (SHA-256 `1c14bb65e309431a45f53fe1f6331ae5ae4508f8a2ef07e159d6fa5fff8fb86e`); also https://techpubs.jurassic.nl/manuals/hdwr/enduser/VPro_Octane_PG/sgi_html/index.html.
- Stored copy: [docs/sources/manuals/007-4271-001-vpro-octane-porting-guide.pdf](sources/manuals/007-4271-001-vpro-octane-porting-guide.pdf), SHA-256 `1c14bb65e309431a45f53fe1f6331ae5ae4508f8a2ef07e159d6fa5fff8fb86e`.
- Covers: V6 (32 MB) and V8 (128 MB), and a "Next Generation VPro" with 12-bit RGBA and 16-bit z.
- Match: exact for those boards.

Facts (established, published):

- Two chips, BUZZ for transform and rasterisation and PB&J for video, with a RISC-like design at high clocks, no full geometry engine but "a simple, fast transform engine", 12 bits per component or better from geometry through rasterisation including blending, texturing and lighting.
- One shared pool of board memory for the command FIFO, framebuffer, textures, pbuffers and accumulation buffer; the largest drawable is 4096 x 4096; an 8-byte or 16-byte framebuffer fixed at X start-up; the on-screen memory is pixels x 10 or 18 bytes with 12 more per pixel for a hardware accumulation buffer; the command FIFO holds about 1 ms of commands.
- **Depth.** "The depth buffer is in eye space instead of the traditional screen space. Depth is calculated before the projection matrix", for precision; depth and stencil use an internal floating-point format, which makes read-back slower and needs a conversion from eye space to screen space; depth and stencil pack in 4 bytes. Compare source 3's floating-point barycentric depth: **inferred**, depth is an interpolated eye-space float. No `odydiags` frame tests depth ([docs/raster.md](raster.md)), so this is untested against the stored frames.
- **Blend and logic.** All OpenGL 1.2 blends plus constant colour and alpha, minimum and maximum, a minimum-and-maximum-by-alpha extension, subtract, reverse subtract and all 16 logic operations; blend constants are 12 bits ([11:0]). That the logic operations are available inside the blend path agrees with the inferred blend-equation form of the logic operation in [docs/raster.md](raster.md).
- **Texture.** Internal formats from 4 to 16 bits per component, R3_G3_B2, up to RGBA16; 1D, 2D and 3D with borders; point, bilinear and trilinear (hardware); 12-bit post-interpolation look-up tables; maximum dimension 32K; perspective correct; no mipmaps for 3D; no 24-bit textures; no multitexture; a default border colour (0, 0, 0, 0).
- **Lighting.** Gouraud and Phong shading in hardware, perspective correct; one per-fragment light plus eight per-vertex lights; local lights, local viewer and two-sided lighting in hardware; the fast paths are two lights (one of each kind), four infinite lights or two double-sided lights.
- **Antialiasing and lines.** Non-antialiased lines and points in hardware up to width 10; antialiased points and lines to width 2.0 (wider is clamped), with end caps that are "French-cut", not antialiased; full-scene antialiasing is multi-pass through the accumulation buffer. No multisample visual is listed. The patent's 8 staggered subpixels (source 3) are for polygon antialiasing inside a pass; the porting guide lists none as a visual. How the two fit is **unknown**.
- Accumulation: 16 bits per component in software, 24 in hardware (128 MB boards only); convolutions up to 7 x 7 in hardware; six clip planes of which three are hardware and share the texture hardware (each enabled texture dimension moves one hardware plane to software). Strips pay off from four or five triangles.

## 6. VPro 12-bit architecture white paper

- Identity: SGI, "Benefits of VPro Graphics Architecture with 12-Bit Component Support", white paper, 2002 (document J13937, 3/02), 8 pages. Copy read: the SGI PDF as archived at https://web.archive.org/web/2003id_/http://sgi.com/newsroom/virt_presskit/nab2002/pdf/vpro_graphics_arch_whitepaper.pdf, SHA-256 `895bce8154ac111297a63fd4bbd23c8b3befcd3aaef615e19be826cc9b72065d`.
- Stored copy: [docs/sources/reports/vpro-12bit-architecture-whitepaper-j13937.pdf](sources/reports/vpro-12bit-architecture-whitepaper-j13937.pdf), SHA-256 `895bce8154ac111297a63fd4bbd23c8b3befcd3aaef615e19be826cc9b72065d`.
- Covers: VPro on Octane2, Fuel and the Onyx 3000 with InfinitePerformance. Match: exact (generation after source 5).

Facts (established, published):

- Two ASICs, the chip that does transformation and rasterisation, with a command FIFO, a graphics front end, a transform engine and a rasterisation, texture and shading engine, and a back-end video chip, linked by a dedicated bus; the host link is a 16-bit, 800 MB/s bidirectional XTALK interface. Compare 710 MB/s in source 7; the two figures differ and neither states its clock, so the link rate is **unknown** to better than that range.
- **Precision.** The whole OpenGL pipeline runs at 12 bits per component or better from geometry through rasterisation; blending is done with 12 bits per component (4096 distinct alpha values); the colour values the transform unit computes for lighting have 12 bits per component; the transform unit computes in 32-bit floating point "with certain limited-precision approximations" whose accuracy "is variable depending upon the input data" (a footnote). The footnote is the only first-party statement that the lighting arithmetic is not exact; it fits the limited-precision table functions of source 1.
- Buffers: colour up to 48-bit RGBA, a 96-bit accumulation buffer (24 bits per component), drawables up to 4096 x 4096, textures up to 32,768 on a side if they fit, a 48-bit texture look-up table, 3D textures, up to 128 MB of board memory (104 MB of texture); imaging with 7 x 7 convolution.
- Bearing: the 12-bit blend and 12-bit colour path are the widths to try for the colour interpolation arithmetic (source 3) and for the blend panels of [docs/raster.md](raster.md); the frames store 8 bits, so a 12-bit intermediate converts to floor(256 c) only if the conversion takes the top 8 bits.

## 7. VPro Odyssey Graphics Diagnostic Reference (108-0314-001)

- Identity: SGI, "VPro Odyssey Graphics Diagnostic Reference", document 108-0314-001, 51 pages. https://techpubs.jurassic.nl/manuals/hdwr/service/108-0314-001.pdf (SHA-256 `19033a394f769eed0fea176a5023d90116d8eddd37d650db5bf53507c4779ff6`).
- Stored copy: [docs/sources/manuals/108-0314-001-vpro-odyssey-diagnostic-reference.pdf](sources/manuals/108-0314-001-vpro-odyssey-diagnostic-reference.pdf), SHA-256 `19033a394f769eed0fea176a5023d90116d8eddd37d650db5bf53507c4779ff6`.
- Covers: the `odydiags` test program and the Octane2 board. Match: exact.

Facts (established, published):

- **The chip.** BUZZ is "a single-chip RealityEngine graphics subsystem", a 0.25 micron CMOS ASIC at 266 MHz with 1.5 million bits of on-chip SRAM, interfacing 32 or 128 MB of SDRAM (stated as 512 address bits) that runs at 133 MHz, a dedicated bus to the DAC or to PB&J, and a 16-bit 710 MB/s XIO link. The SDRAM clock is half the core clock, as the memory bus is reported elsewhere. PB&J is the display back-end chip; it is required in multi-raster systems to merge the pixel streams of the raster units and drives a DAC or the next board. None of these figures was in [docs/board.md](board.md) or [docs/buzz.md](buzz.md).
- **The tests.** Register test: walking patterns over seven registers whose names are given (`XT_REQ_TIMEOUT`, `XT_INTR_DST_ADDR_HI`, `XT_INTR_DST_ADDR_LO`, `FLCTL_CONFIG`, `FLAG_USER_EN_SET`, `FLAG_INTR_ENAB_SET`, `FLAG_SET_PRIV`); a reset is needed after the board manager because the manager clears the shadow state. Formatter tests send DMA parameter files (input and output formatters of the "GFE"): transfer mode, host format, host data type, graphics format, byte swap, expansion and image size. Raster, shader and texture tests: points, lines, anti-aliased points, anti-aliased lines, triangles, alpha function, blending logic and the 3D checkerboard (`-rts`, `-raster`, `-shader`, `-texture`), with CRC and pixel read-back that `-noverify` disables. Display tests compare colour-map CRCs to known values.
- Bearing: these are the tests whose stored frames and CRC lists [docs/raster.md](raster.md) rebuilds. The manual calls the checks "known value" comparisons and does not say where the known values come from; the stored frames are therefore the diagnostic's expected output and are not measurements, which is how raster.md already treats them. The register names of the first bullet are a published list of BUZZ registers the diagnostic writes by name; matching them to [docs/registers.md](registers.md) is not done in this pass.

## Further stored documents

Every document below is stored in full under [docs/sources/](sources/README.md); the table gives the repo path and SHA-256 of each copy. A page of an SGI guide is cited by its printed number, and by PDF page where the guide has none.

| Repo path | Document | Bytes | SHA-256 |
|---|---|---|---|
| [manuals/007-2392-003-opengl-on-silicon-graphics-systems.pdf](sources/manuals/007-2392-003-opengl-on-silicon-graphics-systems.pdf) | OpenGL on Silicon Graphics Systems, 007-2392-003 | 4703042 | `6565e36a749d12aa77b48f706430ee7acd30e803f772855ea0d6830421575879` |
| [manuals/007-3897-007-irix-6.5.8-update-guide.pdf](sources/manuals/007-3897-007-irix-6.5.8-update-guide.pdf) | IRIX 6.5.8 Update Guide, 007-3897-007 | 135309 | `884452a0fc12b46fbb96c83482fbaa5fc6ca35c5fe57e97baf6f9a12fe8febcf` |
| [manuals/007-3897-008-irix-6.5.9-update-guide.pdf](sources/manuals/007-3897-008-irix-6.5.9-update-guide.pdf) | IRIX 6.5.9 Update Guide, 007-3897-008 | 149056 | `41c251a71058841e00dca86ddbc8a98f30bf3f83eb40cc7af563d06ca5070cd7` |
| [manuals/007-3897-009-irix-6.5.10-update-guide.pdf](sources/manuals/007-3897-009-irix-6.5.10-update-guide.pdf) | IRIX 6.5.10 Update Guide, 007-3897-009 | 161731 | `fde6a3137d159a6596d96e456b9ccc29eef428a52bf1c7f68fca6959ec7b337a` |
| [manuals/007-3897-012-irix-6.5.13-update-guide.pdf](sources/manuals/007-3897-012-irix-6.5.13-update-guide.pdf) | IRIX 6.5.13 Update Guide, 007-3897-012 | 248096 | `eee998460fb1ae6cc532994bb95a27708c9d6f558eca34c8254c6356501acc72` |
| [manuals/007-3897-015-irix-6.5.15-update-guide.pdf](sources/manuals/007-3897-015-irix-6.5.15-update-guide.pdf) | IRIX 6.5.15 Update Guide, 007-3897-015 | 308212 | `a9fe188370e9b9ed83180e4434eb6515ff970dc123abff80f165c9e366fe6848` |
| [manuals/007-4207-001-octane2-owners-guide.pdf](sources/manuals/007-4207-001-octane2-owners-guide.pdf) | Octane2 Workstation Owner's Guide, 007-4207-001 | 5082303 | `1f236d3f2992b65c19f69e19774320f28022ee28138039e6294ed60006ee9ab4` |
| [manuals/007-4207-002-octane2-owners-guide.pdf](sources/manuals/007-4207-002-octane2-owners-guide.pdf) | Octane2 Workstation Owner's Guide, 007-4207-002 | 6255596 | `03ffca17d27722d67e0c5257459e5e5535b07a6a1e800eba6925b77150de2323` |
| [manuals/007-4208-001-octane-vpro-power-supply-upgrade.pdf](sources/manuals/007-4208-001-octane-vpro-power-supply-upgrade.pdf) | Octane VPro Graphics Power Supply Upgrade Instructions, 007-4208-001 | 518919 | `2647dc0df5da990578727bbf77edfea82b98a9805fca7006ce8bd96deab8383b` |
| [manuals/007-4209-001-octane2-display-option-board-owners-guide.pdf](sources/manuals/007-4209-001-octane2-display-option-board-owners-guide.pdf) | Octane2 Display Option Board Owner's Guide, 007-4209-001 | 2022881 | `30c03cc0c6e8158956aa6184d684f7473926face6cb521b2b82860ec65a98098` |
| [manuals/007-4209-002-octane2-dual-channel-display-installation-guide.pdf](sources/manuals/007-4209-002-octane2-dual-channel-display-installation-guide.pdf) | Octane2 Dual Channel Display Installation Guide, 007-4209-002 | 5782540 | `442b85225481e9d3009d5870a015773894ac72d7968509c614888c55aafd8db1` |
| [manuals/007-4209-003-dual-channel-display-guide-octane2-fuel.pdf](sources/manuals/007-4209-003-dual-channel-display-guide-octane2-fuel.pdf) | Dual Channel Display Guide for Octane2 and Fuel, 007-4209-003 | 5907837 | `883ee4d05e31731078f37f89d23c40e7f7bcb70d74743020b44529a6ddabc0bf` |
| [manuals/007-4210-001-octane-vpro-upgrade-kit-installation-guide.pdf](sources/manuals/007-4210-001-octane-vpro-upgrade-kit-installation-guide.pdf) | Octane VPro Graphics Upgrade Kit Installation Guide, 007-4210-001 | 735805 | `830d16a097dfe09d74ab960b7d89e973c725f2de34bae1deaee0d5e6a3c56d4d` |
| [manuals/007-4210-002-octane-octane2-vpro-upgrade-kit-installation-guide.pdf](sources/manuals/007-4210-002-octane-octane2-vpro-upgrade-kit-installation-guide.pdf) | Octane and Octane2 VPro Graphics Upgrade Kit Installation Guide, 007-4210-002 | 938312 | `fdd01feb66f139b05ce4cd3984277529bff1685bf152a372b4e9c54e72e00583` |
| [manuals/007-4210-003-octane-octane2-vpro-upgrade-kit-installation-guide.pdf](sources/manuals/007-4210-003-octane-octane2-vpro-upgrade-kit-installation-guide.pdf) | Octane/Octane2 VPro Graphics Upgrade Kit Installation Guide, 007-4210-003 | 834332 | `42ef1c88ff18c772f184e1af82c7cdae95ebd902fbae21b37a5986e1b16b5768` |
| [manuals/007-4239-004-opengl-multipipe-sdk-users-guide.pdf](sources/manuals/007-4239-004-opengl-multipipe-sdk-users-guide.pdf) | OpenGL Multipipe SDK User's Guide, 007-4239-004 | 3034454 | `25ff61ecf86e146244c30451bf79fd1660f75d784b1d525eb5964acf1530f1ff` |
| [manuals/007-4527-003-opengl-multipipe-sdk-programmers-guide.pdf](sources/manuals/007-4527-003-opengl-multipipe-sdk-programmers-guide.pdf) | OpenGL Multipipe SDK Programmer's Guide, 007-4527-003 | 2051591 | `0f1e01b7cb105195cd2bbb492e80b8fd05e0b3dd666e5daa64db2aa24f3d477a` |
| [manuals/007-4264-002-onyx-3000-graphics-system-hardware-owners-guide.pdf](sources/manuals/007-4264-002-onyx-3000-graphics-system-hardware-owners-guide.pdf) | Onyx 3000 Series Graphics System Hardware Owner's Guide, 007-4264-002 | 13692152 | `f80ffeb747fb935018f62cf80114a76e7d32d5967a26633b9dff25ea8ff5ef23` |
| [manuals/007-4331-001-octane2-welcome-letter.pdf](sources/manuals/007-4331-001-octane2-welcome-letter.pdf) | Octane2 welcome letter (patch notes for V6 and V8), 007-4331-001 | 18226 | `a8141b9295de654a84fad438c80850c94c62644af6f9a8d9c4369094d1a9794f` |
| [manuals/007-4480-001-fuel-hardware-users-guide.pdf](sources/manuals/007-4480-001-fuel-hardware-users-guide.pdf) | Fuel Visual Workstation Hardware User's Guide, 007-4480-001 | 12412253 | `7bde9ffe3a65b0db075ff4a49ee79243b488d02b4500685cb760f527f5fe0b43` |
| [manuals/007-4489-001-infiniteperformance-scalable-graphics-compositor-users-guide.pdf](sources/manuals/007-4489-001-infiniteperformance-scalable-graphics-compositor-users-guide.pdf) | InfinitePerformance Scalable Graphics Compositor User's Guide, 007-4489-001 | 1545514 | `4e214d0cda2da6bff50cc7314d80d62b564c781bbc364c002c210e6723ae2d34` |
| [manuals/007-4602-001-scalable-graphics-compositor-rev-b-users-guide.pdf](sources/manuals/007-4602-001-scalable-graphics-compositor-rev-b-users-guide.pdf) | Scalable Graphics Compositor rev. B User's Guide, 007-4602-001 | 1923549 | `56c165808227c75f4436bb7e950aa4ac00fca39f4395f56c37c4edc68b98e0ae` |
| [manuals/007-4602-002-scalable-graphics-compositor-users-guide.pdf](sources/manuals/007-4602-002-scalable-graphics-compositor-users-guide.pdf) | Scalable Graphics Compositor User's Guide, 007-4602-002 | 2534020 | `4f47fb7bbd71120bd39f7a9e55905193cd4553f6f66bb44bba437c70121dbcf5` |
| [manuals/007-4602-003-scalable-graphics-compositor-users-guide.pdf](sources/manuals/007-4602-003-scalable-graphics-compositor-users-guide.pdf) | Scalable Graphics Compositor User's Guide, 007-4602-003 | 2464460 | `1ae05a05a07399cfa5d55186147d992d08e5bb31c147ba6eceed0bb09f15f389` |
| [manuals/007-4493-001-octane2-dual-head-installation-guide.pdf](sources/manuals/007-4493-001-octane2-dual-head-installation-guide.pdf) | Octane2 Dual Head Installation Guide, 007-4493-001 | 1432191 | `b65945a0a2c29308cce3cc711527cfc11577561558be8e8099725c8cbeca8b84` |
| [manuals/007-4506-001-octane2-duo-installation-guide.pdf](sources/manuals/007-4506-001-octane2-duo-installation-guide.pdf) | Octane2 Duo Installation Guide, 007-4506-001 | 543044 | `dd82bd5f2bd44cd52707f09ba02c643bf7e03b1f1a307cd3bfef411532212f56` |
| [manuals/007-4515-001-dmediapro-dm5-graphics-to-video-out-users-guide.pdf](sources/manuals/007-4515-001-dmediapro-dm5-graphics-to-video-out-users-guide.pdf) | DMediaPro DM5 Graphics-to-Video-Out User's Guide, 007-4515-001 | 440493 | `e6000f9a5531aeabbf1e04424aa3b9a241f45396626a3dbbfa289f20c54b267b` |
| [manuals/007-4572-001-cx-brick-addendum.pdf](sources/manuals/007-4572-001-cx-brick-addendum.pdf) | Cx-brick Addendum, 007-4572-001 | 4041438 | `7c75a31959ce530f00c5e000816a4a26b00c052a58c94125c019b771e99f1e41` |
| [manuals/007-4632-001-onyx-350-visualization-system-users-guide.pdf](sources/manuals/007-4632-001-onyx-350-visualization-system-users-guide.pdf) | Onyx 350 Visualization System User's Guide, 007-4632-001 | 19510663 | `4adc0c159a99ba8696edb5513bc5992d5badca33820a6cb10f0702520a6d4ada` |
| [manuals/007-4643-001-tezro-rackmount-hardware-users-guide.pdf](sources/manuals/007-4643-001-tezro-rackmount-hardware-users-guide.pdf) | Tezro (rackmount) Hardware User's Guide, 007-4643-001 | 16914795 | `cc0606674d9b0f5b0ea7d59a00585ae686204584072172cb69de454dc583d82e` |
| [manuals/007-4643-002-tezro-rackmount-hardware-users-guide.pdf](sources/manuals/007-4643-002-tezro-rackmount-hardware-users-guide.pdf) | Tezro Hardware User's Guide, Rackmount Configuration, 007-4643-002 | 17855897 | `8a8bb5098bd28d91c964617c0ecf857bf979bce788300cc9ec84b871eff07283` |
| [manuals/007-4643-003-tezro-rackmount-hardware-users-guide.pdf](sources/manuals/007-4643-003-tezro-rackmount-hardware-users-guide.pdf) | Tezro Hardware User's Guide, Rackmount Configuration, 007-4643-003 | 17742804 | `42273465e9199d45c2738023003798066b628cff5b9c9a6fd2355fac03030e4c` |
| [manuals/108-0314-003-vpro-odyssey-diagnostic-reference.pdf](sources/manuals/108-0314-003-vpro-odyssey-diagnostic-reference.pdf) | VPro Odyssey Graphics Diagnostic Reference, 108-0314-003 (revision 003, April 2002) | 651245 | `8f92dddb46bf80d6a2fb0c0f4170a5c66daff443d76ed84d713b599fdaa897b0` |
| [manuals/108-0350-001-fuel-diagnostic-reference.pdf](sources/manuals/108-0350-001-fuel-diagnostic-reference.pdf) | Fuel Visual Workstation Diagnostic Reference, 108-0350-001 | 2416409 | `7e328ff924d30797923eda0d6d63dd8376704109986a71fb49d59e5d21ea6eca` |
| [manuals/108-0350-002-fuel-diagnostic-reference.pdf](sources/manuals/108-0350-002-fuel-diagnostic-reference.pdf) | Fuel Visual Workstation Diagnostic Reference, 108-0350-002 | 2722174 | `7a49520f25363fcb8a9278c013dc327809ddf5e947dcf1c937eac24f36e058e1` |
| [manuals/108-0263-004-scan-tools-origin-300-and-3000-family.pdf](sources/manuals/108-0263-004-scan-tools-origin-300-and-3000-family.pdf) | Scan Tools (Origin 300 and 3000 family), 108-0263-004 | 1749508 | `c313d3229f2720a39c9d33f5135715acf032552eaf2dda80307bc4f77dd7404a` |
| [manuals/hardware-developer-handbook-2.0.pdf](sources/manuals/hardware-developer-handbook-2.0.pdf) | Hardware Developer Handbook, release 2.0 (May 1997) | 5942934 | `3da04c67414ac5794a1f04cb4a207e68919db25d10f518c9b599adb7a3805d8d` |
| [manuals/autodesk-effects-editing-2007-tezro-octane2-setup.pdf](sources/manuals/autodesk-effects-editing-2007-tezro-octane2-setup.pdf) | Autodesk Effects and Editing 2007 hardware setup for SGI Tezro and Octane2 | 1243019 | `65b2e472deef1a93842c6f5e3eb64dde73e44c098d1346586c53426acc2f74b5` |
| [specs/octane2-datasheet-vpro.pdf](sources/specs/octane2-datasheet-vpro.pdf) | Octane2 Visual Workstation with Advanced VPro Graphics, datasheet | 300238 | `2b50fcd5737881cd63550eba5b7bb899ef707d72c7a6edc3faa58e8a808cfb33` |
| [specs/fuel-datasheet-3215.pdf](sources/specs/fuel-datasheet-3215.pdf) | Silicon Graphics Fuel Visual Workstation, datasheet 3215 | 358874 | `58023593cc26ffa0a0499e54162873f141b5a711a0c6550cbd72ec8083bb2d66` |
| [specs/onyx-family-datasheet.pdf](sources/specs/onyx-family-datasheet.pdf) | SGI Onyx family datasheet (InfiniteReality and InfinitePerformance) | 437064 | `df3fe2684067cea6617631bee604e8b38708e9e501b00e06ea0de68867e31656` |
| [specs/octane2-vpro-brochure-german.pdf](sources/specs/octane2-vpro-brochure-german.pdf) | Octane2 with advanced VPro graphics, German brochure (scanned) | 2436444 | `ddcc18b40187fa3362ea6fc60b2a2aa9f7d1aa190fe19247497c5faa76d005c5` |
| [reports/sgi-periodic-table-2001-06.pdf](sources/reports/sgi-periodic-table-2001-06.pdf) | SGI Desktop Periodic Table, O2, Octane, Octane2 (May 2001, rev 1.5.1) | 134566 | `d38aa3f47e94ae2e766af04d3d124134fdf13996b6f65f8c57598a3b42eddd15` |
| [reports/sgistuff-odyssey-page.html](sources/reports/sgistuff-odyssey-page.html) | sgistuff.net page on the Odyssey (VPro) boards | 11849 | `04a0776d2669a5e9093f91afdf95e052b86ca631c18f93c1ca4c1fe798975003` |
| [reports/fxguide-sgi-2003-tezro-hardware.html](sources/reports/fxguide-sgi-2003-tezro-hardware.html) | fxguide 2003 article on Tezro hardware | 202546 | `a5bf2d0e91974caf0956f78e62ef20826335dbffffbf129635e62386e7905e10` |
| [reports/sgidepot-fuel-overview.html](sources/reports/sgidepot-fuel-overview.html) | sgidepot.co.uk Fuel overview with VPro board part numbers | 36084 | `c79f4a366612dffe0dbdbde05b3c1b6d122acaf14ca05d4fe6d1784b8c2d61ba` |
| [reports/irixnet-vpro-odyssey-diagnostic-thread-1573.html](sources/reports/irixnet-vpro-odyssey-diagnostic-thread-1573.html) | IRIX Network forum thread 1573, a failing V12 and the odydiags CD | 76727 | `efb1c360dfdddba8abf6326c93acb03cff893de8a1e6f60bd4919a548a5f6916` |
| [reports/ist-2.7-info_qrg_odydiags.html](sources/reports/ist-2.7-info_qrg_odydiags.html) | Internal Support Tools 2.7 odydiags quick reference (frame page) | 993 | `28c663c4fc34264251856ba91e7af6450c70424055119eb36f1056315ef3fde6` |
| [reports/ist-2.7-info_qrg_odydiags_side.html](sources/reports/ist-2.7-info_qrg_odydiags_side.html) | Internal Support Tools 2.7 odydiags quick reference (side page) | 1526 | `3d39b0cee55d3151846d5d5f59b252acd9603ab03ddd05e49fdd9fb60c0b8a28` |
| [reports/ist-2.7-instructions_odydiags.html](sources/reports/ist-2.7-instructions_odydiags.html) | Internal Support Tools 2.7 odydiags quick reference (instructions) | 2232 | `11084951a50b38c1dd5f1690a429611f07872c175a3645f0a5b4d52e334d919d` |

Documents that were read and carry nothing about VPro are stored anyway when they sit in the same family or were named in the search: the 1997 hardware developer handbook predates the board (it covers Octane-era interfaces and never names VPro, Odyssey or BUZZ), and the Origin 350 datasheet found in the same search was left out for the same reason. Two guides were found and are **not yet stored** because each is over 20 MB: the Tezro tower guide 007-4564-001 (21,348,927 bytes) and the Origin 350 server guide 007-4566-001 (23,281,187 bytes, which places a V12 slot on the back of the PCI riser). Nothing in this repository cites either one.

Two other documents named "VPro" are a different product: the Visual Workstation 330 and Visual Workstation Environment guides (007-4278-001, 007-4203-003) use the word for an Intel-platform graphics option that runs Linux with a third-party OpenGL, not for the Odyssey boards.

## 8. VPro Odyssey Graphics Diagnostic Reference, revision 003 (108-0314-003)

- Identity: SGI Internal Support Tools 2.7 document 108-0314-003, April 2002, 53 pages. Revision 001 (February 2001) is source 7; revision 002 (November 2001) added the V12 in a V-brick of the 3000 family and the colour-map pattern test; revision 003 added the Fuel (p. iii).
- Stored copy: [docs/sources/manuals/108-0314-003-vpro-odyssey-diagnostic-reference.pdf](sources/manuals/108-0314-003-vpro-odyssey-diagnostic-reference.pdf), SHA-256 `8f92dddb46bf80d6a2fb0c0f4170a5c66daff443d76ed84d713b599fdaa897b0`.
- Covers: the `odydiags` program for the Octane2, the Fuel and a V-brick V12. Match: exact.

Facts (established, published unless marked):

- **PB&J is the "pixel blaster and jammer"** chip, the display back end of the board (introduction p. 1, glossary p. Glossary-2). The text calls it one ASIC. This answers the open entry "what PB&J stands for" in [docs/pbj.md](pbj.md).
- **The BUZZ to PB&J control path is the display control bus (DCB),** an 8-bit wide bidirectional bus (glossary p. Glossary-1; the test sends walking one and zero patterns across it by writing a PB&J register, p. 18). That agrees with the DCB clock-speed field the timing table sends to display address 0x2b00 ([docs/pbj.md](pbj.md)). It does not say how pixels travel: source 7 says a "dedicated bus" joins the chips.
- **Host link.** "16-bit, 400-MHz peer-to-peer XIO interface" (p. 1). Source 7 says 710 MB/s for the same link and source 6 says 800 MB/s. A 16-bit link at 400 MHz moving a byte pair per cycle is 800 MB/s, which matches source 6 and the 800 MB/s port rate of the V-brick (source 12); 710 MB/s stays unexplained ([docs/open-questions.md](open-questions.md)).
- **Colour map.** At most 8192 entries (the pattern test increments the red, green and blue index from 0 to 8191, p. 19); the XMAP block turns frame-buffer pixels into colour-map addresses and has a pixel override that the tests use to force index values; the map's output is checked by a CRC against stored values; the analog test reads three comparator bits of the DAC control register for the three PB&J analog outputs (pp. 18-19).
- **Board identity sample.** On a V12 in an IP35 system running IRIX 6.5.10m, `-getinfo` printed "buzz revision is 10", SDRAM 128 MB, 4 banks, CAS latency 3, board version 1 and PB&J version 1 (p. 23). The same fields are decoded by `odsyGatherInfo` ([docs/board.md](board.md)); raw type 10 is 2 with the variant flag, which `gfxinit` prints as BUZZ B.1 (inferred from that decode).
- **Register windows.** The register read tool accepts the display-chip range 0x220000 to 0x23ffff and says to enter 0x222580 for display register 0x2580, so the tool takes the display address as the offset from 0x220000; its write tool starts at 0x400000 and, for a zero written at 0x400000, prints the 64-bit word 0x3000000100000000 (p. 22). Both agree with the display FIFO and read window of [PBJ.h](../PBJ.h); the printed word is a type-3 header for address 0 with count 1 followed by a zero data word.
- **Memory.** Board memory is addressed in tiles that are 16 pixels wide, with a stride counted in tiles (Table 7, p. 31). The address-unique test needs "more than 65,000" DMA operations for 32 MB because it works per tile (p. 16): 32 MB / 65,536 tiles is 512 bytes, which is 16 x 16 pixels at 2 bytes, matching the 16 x 16-pixel tile of [docs/board.md](board.md) (inferred arithmetic). A 4-byte pixel is split over two memory chips, the upper 16 bits (components 2 and 3) in one and the lower 16 bits in the other (pp. 31 and 35); chips are named by bank and letter ("SDRAM Bank 2_A", "Bank 2_B") and numbered 0 to 15 for software.
- **Error reporting.** Correctable and uncorrectable memory errors in the command FIFO are reported (pp. 27 and 33), matching the three ECC flags of the flags register in [BUZZ.h](../BUZZ.h).
- **Microcode.** The loader refuses a microcode image that is not a whole number of 12-byte (96-bit) lines (error 000021, p. 28), the record size of the kernel's microcode shadow ([ucode/buzz_ucode.md](../ucode/buzz_ucode.md)).
- **Formats.** The DMA parameter files name the host-side pixel types, including a 12-12-12-12 six-byte type, and the memory-side formats of 1, 2, 4, 6, 8, 16 and 32 bytes per pixel, with output conversions to and from RGBA12 and RGBA16 (pp. 13-15). Names only; none is mapped to a field of [docs/buzz.md](buzz.md).
- **Software.** `run.pl` in `/usr/diags/ody` runs the suite; on IRIX 6.5.9 and 6.5.10 the window system must be off and the console on a serial line, from 6.5.11 on the tests run with the graphics console enabled (pp. 2-6); the diagnostic harness first runs `gfxinit` and downloads a timing table, and the register test panics the system after it unless the board is reset (p. 12).

## 9. Octane and Octane2 VPro guides (007-4207, 007-4208, 007-4209, 007-4210, 007-4331, 007-4493, 007-4506)

- Identity: SGI owner, upgrade and option guides, 2000 to 2002; stored copies and hashes are in the table above (three revisions of the upgrade guide, 007-4210-001 to -003, and of the dual channel guide, 007-4209-001 to -003).
- Covers: V6, V8, V10 and V12 in the Octane and Octane2. Match: exact for the revision.

Facts (established, published):

- **Host requirements.** V10 and V12 need a Crossbow ("xbow") of revision 1.4 or later; V6 and V8 do not (007-4210-003 p. 2). An Octane without VPro needs power supply part 060-0035-00x (x 1 or higher), IRIX 6.5 or later and a miniroot install (p. 4). The graphics board needs IRIX 6.5.10 or later; V6 and V8 need PROM 4.0 or later, V10 and V12 need PROM 4.5 or later; V10 and V12 on 6.5.10 need a patch that 6.5.11 does not (pp. 6-7).
- **Packaging.** The board is the first slot of an XIO tri-module (slots A and B, where B is a daughterboard slot on the far side of the board); option boards go in slots B, C or D and every slot must be filled for cooling (007-4207-002 ch. 5, 007-4210-003 p. 27).
- **Ports.** Monitor, genlock, StereoView and swap-ready connectors. The StereoView port supplies 12 V and carries a left/right eye signal (1 for left); the genlock port is one signal pin and a return, 3.3 V TTL or video; swap-ready is an open-collector gang sync pin and a return (007-4210-003 pp. 30-31). The 13W3 monitor connector carries analog RGB, sync lines and four monitor-ID bits; the DDC form replaces the ID bits with clock and data (pp. 32-33). V10 and V12 support more scan rates than V6 and V8 (p. 32).
- **Scan rates.** At 1280 x 1024 the Octane2 guide allows only the 96 Hz Sony G1 monitors; the table lists 640 x 480 through 1920 x 1200, including 1600 x 1024 at 82.98 Hz and a 1280 x 1024 stereo mode at 50 Hz per eye (007-4207-002 pp. 237-239).
- **Dual Channel Display (DCD).** A daughterboard that seats under the VPro board and adds two monitors; the system then sees one logical screen across both (for example 2560 x 1024); dual channel settings in the format list carry a "2@" prefix and take effect at the next login unless marked (007-4209-003 pp. 105-110).
- **Dual head.** The primary graphics head is the upper one and the secondary head the lower one, each with its own DCD option (007-4209-003 contents, 007-4506-001, 007-4493-001).
- **Patches.** The 2000 welcome letter lists patches 4017 and 4018 for 6.5.9 on V6 and V8 (007-4331-001), consistent with the 6.5.8 start of VPro support in source 14.

## 10. Fuel documents (007-4480-001, 108-0350-001 and -002, datasheet 3215, sgidepot page)

- Identity: Silicon Graphics Fuel Hardware User's Guide, the Fuel diagnostic reference (two revisions), the Fuel datasheet and a retailer overview; hashes in the table above.
- Covers: V10 and V12 in the Fuel (IP35 system board, called "Asterix" in the scan tools). Match: exact.

Facts (established, published):

- V10 has 32 MB and V12 128 MB of SDRAM; the board has one DVI-I port carrying analog RGB and digital video, plus swap-ready, StereoView and genlock; the swap-ready feature "is not functional at this time" (007-4480-001 p. 35); the optional DCD daughterboard adds two DVI-I ports (p. 35).
- The diagnostic reference lists the field-replaceable boards: VPro V10 as part 013-3513-00x (32 MB), VPro V12 as 013-3416-00x (128 MB) and an "X2-brick dual channel" board 030-1713-00x, tested by `odydiags` and by the scan chain that includes the graphics card (108-0350-002, the hardware inventory and scan sections); the scan tools can include or skip the "Odyssey" slot (108-0263-004 pp. 24-25).
- The datasheet lists V10 (32 MB, up to 8 MB of it for textures) and V12 (128 MB, up to 104 MB for textures; 80 MB when the DCD is used), 12 bits per component and alpha double-buffered, a 10-bit DAC interface, 8-bit window ids, a 96-bit hardware accumulation buffer and, for the 48-bit RGBA visual, double buffering and a 16-bit Z buffer on V12 only. It also states a 24-bit eye-space Z buffer with 8-bit stencil for the 32-bit visuals (specs/fuel-datasheet-3215.pdf). The 80 MB figure under the DCD suggests the second channel's output memory comes out of the texture share; **inferred**.

## 11. Tezro documents (007-4643-001 to -003, Autodesk setup guide, fxguide article)

Facts (established, published unless marked):

- The Tezro rackmount guides describe one VPro board (128 MB of SDRAM) on the back of the PCI riser, analog RGB and digital video on one DVI-I port, swap-ready, StereoView and genlock ports, and the same optional DCD daughterboard (007-4643-003 p. 32). Revisions -001 to -003 agree on these points.
- The fxguide article (secondary) says the Tezro V12 has a better connection to the crossbar than the Octane2 and moves images into graphics 15 to 25 percent faster; that is a magazine claim, not an SGI figure, and the manuals give no rate (**unknown**).

## 12. Onyx 3000 and Onyx 350 documents (007-4264-002, 007-4632-001, compositor guides, Cx-brick addendum, Onyx family datasheet)

Facts (established, published):

- **V-brick.** A V-brick holds one or two InfinitePerformance pipes; each pipe is one V12 board occupying two of four slots. The midplane carries an Xbridge ASIC that connects the brick's two ports (A and B, 800 MB/s each, shown as XIO 10 and XIO 11) to the V12 boards. With one pipe installed, the second port may go to another compute brick for more bandwidth (007-4264-002 pp. 52-56).
- **V12 board connectors in a V-brick.** Two DVI-I connectors, a 13W3 analog connector that is blocked, genlock, swap-ready and stereo (pp. 56-57). The swap-ready lines synchronise buffer swaps across up to four V-bricks and four V12 boards (p. 56).
- **Onyx 350.** An Onyx 350 "IP graphics and compute module" puts one InfinitePerformance pipe in a compute module; the compositor can direct two or more such pipes to one display (p. 73); it offers the DCD option and no redundant fan or DM3 option because of where the board sits (007-4632-001 pp. 5 and 73-79).
- The compositor guides (007-4489-001, 007-4602-001 to -003) call each input an InfinitePerformance pipe and a V12 board in a V-brick, and expose a "VPro video format" setting; the Cx-brick addendum mentions pipes of two V12 boards each (007-4572-001).

## 13. Datasheets, brochure and product tables (Octane2 datasheet, German brochure, SGI Periodic Table, sgistuff page)

Facts (established, published):

- The Octane2 datasheet and the May 2001 desktop table agree with source 5: V6 and V10 have 32 MB with 8 MB for textures; V8 and V12 have 128 MB with 104 MB for textures; all are 48-bit RGBA; the table marks V8 and V12 double buffered; the descriptor "OpenGL on a chip" is SGI's. The table, last updated 21 May 2001, already lists V10.
- The German brochure repeats 128 MB, 104 MB of textures, a 96-bit accumulation buffer and OpenGL on a Chip for the Octane2 V12 (scanned; read from its archive text).
- The sgistuff page (secondary) lists the Octane2, Fuel, Tezro and Onyx 350 as hosts and says the Octane2 and Tezro or Fuel boards are not interchangeable; no manual in this set says why beyond form factor.

## 14. IRIX release guides, OpenGL on Silicon Graphics Systems, Multipipe SDK (007-3897-*, 007-2392-003, 007-4239-004, 007-4527-003)

Facts (established, published):

- VPro support begins in IRIX 6.5.8 (the 6.5.8 update guide, 007-3897-007, "support initiated for VPro graphics, the next generation graphics for Octane"); later guides record performance work for VPro on Octane: 25 percent better X window speed by x11perf and a faster `glCopyPixels` (6.5.13, 007-3897-012). Source 5 dates the board to 2000.
- OpenGL on Silicon Graphics Systems lists OpenGL 1.2 and GLX 1.3 for Fuel, Tezro and InfinitePerformance systems using VPro graphics, with many EXT and SGI extensions (007-2392-003, appendix C, table C-1). The per-extension table survived text extraction without its columns and is not used.
- The Multipipe SDK guides name VPro in a few pixel-format notes, for example the default read type for colour is unsigned integer on VPro and float elsewhere (007-4239-004).

## 15. Recollection: a Hacker News comment on the rasteriser and clipping (lead, unverified)

- Identity: a comment on the Hacker News thread https://news.ycombinator.com/item?id=30920824, posted April 2022 by a person who says they were an SGI advanced-graphics engineer. Nothing independent confirms who wrote it. It is a recollection, not a document, and every claim below stays **unverified** until software or a published source corroborates it.
- Claims, as the comment states them:
  1. VPro's raster unit subdivided triangles recursively while walking frame-buffer memory along a Hilbert curve. (A reply to it doubts the curve is Hilbert and suggests interleaved x and y bits, a Morton order; that is a guess by another commenter.)
  2. The design let the recursion bottom out instead of clipping triangles, because clipping was expensive in hardware then.
  3. Polygons close to w = 0 after the perspective divide produced huge unclipped coordinates that exhausted the interpolators' precision; a sky polygon and a ground polygon could then fight in depth.
  4. SGI shipped an extension, `SGIX_vertex_preclip`, with which an application chose fast hardware handling (fast and wrong) or accurate clipping on the host CPU.
- What software and published sources say so far (2026-10-30), claim by claim:
  - Claim 1, recursion: **corroborated** (inferred) by sources 2 and 3, which describe a subdivider cutting a 4K x 4K region down to 2 x 2 quads in a Hilbert-curve pattern. Source 3 also says frustum clipping "is effectively performed by the recursive subdivision rasterization". The patents describe a design, not the shipped chip. The same patents are the better citation; the comment adds nothing to them.
  - Claim 1, memory order: **not corroborated**. The Hilbert order the patents give is the order the raster unit visits regions, not a stated frame-buffer address layout. The shipped driver sizes buffers in 16 x 16 pixel tiles ([display.md](display.md), frame buffer) and the shipped library and kernel move pixels only through command-stream transfers and ioctls; the windows a client maps are registers, command entries and the display FIFO ([buzz.md](buzz.md), `gf_OdsyMapGfx`), none a known frame-buffer aperture (what three of those windows hold beyond a command entry and one register is open). No address layout is visible to a guest in anything read.
  - Claim 2: **consistent** with source 3 and with the library, which sends vertices straight to the board unless its guard routines divert them ([raster.md](raster.md)). What the board does with a vertex outside the guard is not in any source ([open-questions.md](open-questions.md), Raster rules).
  - Claim 3: **not testable from software.** The library's guard limits (|w| below 1/16, window coordinates beyond 8192 pixels) are the only numbers the shipped software gives, and they are consistent with a precision limit but do not state one.
  - Claim 4: **corroborated in part.** The extension exists (`GL_SGIX_vertex_preclip`, `GL_SGIX_vertex_preclip_hint`) and the shipped library implements it with a host path. The library has two controls, an enable and a three-valued hint, and the "fast" setting still checks w; see [raster.md](raster.md).
- The public registry text of `SGIX_vertex_preclip` (status "incomplete", last modified 2000-04-19) defines the enable `VERTEX_PRECLIP_SGIX` (0x83EE), the hint `VERTEX_PRECLIP_HINT_SGIX` (0x83EF) and an "extended rasterizable view volume", a region larger than the clip volume in which hardware rejects fragments faster than the host can re-clip. It does not name VPro or any other hardware, and gives no sizes. Default state: enable false, hint DONT_CARE. The registry copy linked into this repository as a submodule was not checked out when this was written; the text was read from the public registry.

## Recollections and history (leads, unverified)

Leads from Usenet, mailing lists, forums, a blog, a Hacker News thread, a registry text and two archives. They are here to be tested against the board, the binaries and the diagnostics. None is evidence yet, and each claim below is **unverified** until software corroborates it. `usenet-comp:` marks a Usenet message-id, written as the archive gives it. "Who" gives the author's role only. Where a point is already in this file, the entry says where.

- **Framebuffer size: 8 or 16 bytes per pixel, and the V6 budget.** Identity: `usenet-comp:7jvgfb.j4c9.ln@tankgirl.kanera.local` (reply chain); follow-up `usenet-comp:bfhbfh$5v9a1$1@bongo.munich.sgi.com`; related `usenet-comp:1127246162.808537@erwin.inf.tu-dresden.de`. Date: 2003-07-20 and 21; V10 thread 2005-09-20. Kind: Usenet. Who: an SGI-Germany-hosted poster with detailed board knowledge (role unverified, probably field or support), and experienced hobbyist users.
  - Unverified: VPro takes only two framebuffer configurations, 8 or 16 bytes per pixel, counting colour and all auxiliary buffers. The manual's bpp column means bytes per pixel. [docs/raster.md](raster.md) already cites a 2005 post for the 8 or 16 byte point.
  - Unverified: V6 has 32 MiB of board memory. Usable framebuffer is about 32 MiB, less 4 MiB of texture and 2 MiB of scratch, less x times y times bytes per pixel, less x times y times 3 when hardware accumulation is on (not on V6). 1600x1200 fits at 8 bytes per pixel (15.36 MB) and not at 16 (30.72 MB).
  - Unverified: maximum refresh does not depend on framebuffer size. The DAC behind the analog 13W3 runs at 220 MHz, enough for 1600x1200 at 75 Hz and 1920x1080 at 72 Hz.
  - Unverified: at 8 bytes per pixel, colour is 32-bit double-buffered without depth, or single-buffered with depth. Double buffering with depth needs 16 bytes per pixel or a V12.
  - Test from software: run `setmon` or `xsetmon` with each `.vfo` and each framebuffer configuration and record which the driver accepts. Check that the model's allocator accepts 1600x1200 at 8 bytes per pixel and refuses 16 on a 32 MiB board, and that mode validation caps the pixel clock at 220 MHz.

- **Accumulation buffer: main memory by default, 12 bytes per pixel from the pool when enabled, 24 bits per component on V8 and V12.** Identity: `usenet-comp:942dpm$pq95t$1@fido.engr.sgi.com`; `usenet-comp:93nv0u$ojthh$1@fido.engr.sgi.com`. Date: 2001-01-16 and shortly after. Kind: Usenet. Who: an SGI principal engineer on the OpenGL team, posting from an SGI news host.
  - Unverified: even on Octane2 V8 and V12 the accumulation buffer is in main memory by default. `xsetmon` must reconfigure the framebuffer to put it in hardware.
  - Unverified: hardware accumulation takes 12 bytes per pixel from the texture pool, 15 MB at 1280x1024.
  - Unverified: on V8 the hardware accumulation buffer has 24 bits per R, G, B and A component, and plenty of memory remains for pbuffers.
  - Unverified: without hardware accumulation, the method is a single-buffered pbuffer, `glXMakeContextCurrent(draw=window, read=pbuffer)`, `glBlendColor(1/n)` with `GL_CONSTANT_COLOR` and `GL_ONE`, and `glCopyPixels`.
  - Test from software: run an accumulation test under both `xsetmon` framebuffer configurations. Check `GL_ACCUM_*_BITS` (0 for software, 24 for hardware) and that pool use equals width x height x 12 when hardware accumulation is on.

- **No dedicated texture RAM on VPro; one shared pool; 8 MB single-texture limit.** Identity: `usenet-comp:9338rk$l5t8e$1@fido.engr.sgi.com`; `usenet-comp:92tvs7$kf44k$1@fido.engr.sgi.com`; `usenet-comp:9351ud$lkvoi$1@fido.engr.sgi.com`. Date: 2000-12 to 2001-01, approximate. Kind: Usenet. Who: an SGI OpenGL engineer, posting from an SGI news host.
  - Unverified: there is no dedicated texture RAM on these boards. Memory is split between the framebuffer, textures and a few other uses, so a smaller framebuffer or less depth frees texture space.
  - Unverified: unless a single texture is larger than 8 MB, the V6 pool is not a problem. This implies an 8 MB single-texture ceiling.
  - Unverified: V6 is the low-end unit. V8 has more buffer space and more features.
  - Test from software: allocate textures of increasing size, up to and past 8 MB, on a V6 guest. Record where `glTexImage2D` fails or falls back, and compare with the model's single-pool accounting. The shared pool already rests on other Usenet posts; the 8 MB figure is new.

- **10 and 12-bit colour, per-pixel (fragment) lighting, V6 against V8.** Identity: `usenet-comp:3A4DE445.8536B201@sgi.com`. Date: 2000-12-30. Kind: Usenet. Who: an SGI employee posting from an sgi.com address, on the product side.
  - Unverified: VPro has 10 and 12 bits of colour precision, against 8 on PC cards. V8 gives 12 bits each for R, G, B and alpha.
  - Unverified: hardware per-pixel lighting, which SGI calls fragment lighting, computes Phong specular from the polygon normals already present under Gouraud shading.
  - Unverified: hundreds of MB/s can be read from external devices into system memory while hundreds of MB/s are written to the card, without a stall.
  - Test from software: `glXGetConfig` for RGBA 12/12/12/12 on V6 and on V8. Check `GL_EXTENSIONS` for `GL_SGIX_fragment_lighting`. Render a lit sphere with `glFragmentLight*SGIX` and compare it with vertex lighting to see whether the lighting is per pixel. [docs/libglcore-odyssey-reads.md](libglcore-odyssey-reads.md) already reads the fragment-lighting enable state.

- **GL_SGIX_fragment_lighting is the Octane2 specular feature; sample code and entry-point list.** Identity: question `usenet-comp:pan.2001.11.15.02.41.19.699.12502@umbc.edu`; answer `usenet-comp:gregc.1005849254@cgl.ucsf.edu`. Date: 2001-11-15. Kind: Usenet. Who: an academic graphics-lab researcher outside SGI, who posted a working example and the `man -k frag` list.
  - Unverified: the advertised per-pixel specular is the experimental GL_SGIX_fragment_lighting extension, not ordinary `GL_SPECULAR`.
  - Unverified: the entry points are `glFragmentColorMaterialSGIX`, `glFragmentLight*SGIX`, `glFragmentLightModel*SGIX`, `glFragmentMaterial*SGIX`, `glGetFragmentLightSGIX` and `glGetFragmentMaterialSGIX`, `glLightEnviSGIX` and `glSampleMaskSGIS`.
  - Unverified: a reader replied that he had no sample code for the extension until this post.
  - Test from software: build the posted modified `movelight.c` against the guest libGL. Check that the extension is exposed and that each entry point resolves.

- **OpenGL 1.2 on VPro only; older hardware lacks separate specular colour.** Identity: `usenet-comp:966id6$3da62$1@fido.engr.sgi.com`; `usenet-comp:3F27D020.5080109@brussels.sgi.com`. Date: 2001-01 (approximate) and 2003-07-30. Kind: Usenet. Who: an SGI OpenGL engineer; an SGI Benelux senior systems engineer.
  - Unverified: on IRIX, OpenGL 1.2 and GLX 1.3 are supported on VPro only. MGRAS and IMPACT get about 90 percent of it as extensions but lack separate specular colour in hardware.
  - Unverified: a field engineer repeats that V6 to V12 have OpenGL 1.2 while O2 and IMPACT do not.
  - Test from software: `glGetString(GL_VERSION)` on a VPro guest should report 1.2. Separate specular colour (`GL_LIGHT_MODEL_COLOR_CONTROL`) should work, and the GLX version string should be 1.3.

- **SGIX_pbuffer works on VPro despite the man page; two 1280x1024 RGBA pbuffers do not fit V6 or V10.** Identity: `usenet-comp:a8ka56$190gp$1@bongo.munich.sgi.com`; `usenet-comp:3D2980A5.30A5E333@ono.com`. Date: 2002-04-05 and 2002-06-26 to 07-10. Kind: Usenet. Who: an SGI-Germany-hosted poster and an experienced OpenGL application developer.
  - Unverified: the `glXCreateGLXPbufferSGIX` man page omits VPro, but VPro supports both SGIX_pbuffer and GLX 1.3 pbuffers.
  - Unverified: two 1280x1024 RGBA pbuffers cannot be allocated on V6 or V10 with a 1280x1024 framebuffer at 16 bytes per pixel. They might fit at 8 bytes per pixel or at a lower resolution. V6 and V10 do not support 12-bit components.
  - Unverified: VPro pixel size is a multiple of 8 bytes, per the porting guide (source 5 above), and the pool is about 32 MB.
  - Test from software: a GLX test that allocates N pbuffers at 1280x1024 under the 16 and 8 bytes per pixel framebuffer configurations. Query `glXQueryExtensionsString` for `GLX_SGIX_pbuffer`, and compare the failure point with the model's pool.

- **VPro needs more pinned memory than MGRAS; the `gfxlockablemem` tunable and DMA warnings.** Identity: `usenet-comp:39EA0B49.EF3304AC@brussels.sgi.com`. Date: 2000-10-15. Kind: Usenet. Who: an SGI Benelux senior systems engineer.
  - Unverified: Odyssey needs more memory pinned at times than SE, SSE or MXE. On small-memory machines (128 MB, for example), raise `gfxlockablemem` and its `_gt64` sibling with `systune` to stop DMA warnings after a VPro upgrade.
  - Test from software: boot a small-memory IP30 guest with VPro and look for DMA or lockable-memory warnings in SYSLOG. Raise `gfxlockablemem` with `systune` and confirm the warnings stop. This would give the DMA path a pinned-page demand profile. The repo does not yet mention `gfxlockablemem`.

- **odysdiags is an internal tool; `ide` cannot test Odyssey; a single-chip board cannot show its own diagnostic results.** Identity: `usenet-comp:bqfg34$l9e9$1@bongo.munich.sgi.com`. Date: 2003-12-01. Kind: Usenet. Who: an SGI-Germany-hosted poster.
  - Unverified: `ide -fe` on an Octane V6 prints "Diagnostic for Odyssey graphics boards is not supported on this tool. Please refer to the Unix-base odysdiags tool."
  - Unverified: `odysdiags` was never released (internal only). It needs a tty console while it runs, because a single-chip solution cannot run diagnostics and display results on the same head.
  - Unverified: unsupported modes such as 1280x1024_59 at some depths show coloured stripes.
  - Test from software: run the PROM `ide` against the emulated board and compare the message text. The repo already stores the published diagnostic reference (source 7 above). The thread would confirm the `odysdiags` name and the console-only need from a second source, if it holds.

- **Mode files live in `/usr/gfx/ucode/ODSY/vof`; `setmon 1600x1024_60`.** Identity: `usenet-comp:d0n739$392u1k$1@fido.engr.sgi.com`; related `usenet-comp:d1c1ao$3b6d6g$1@fido.engr.sgi.com`. Date: 2005-03-03 to 05. Kind: Usenet. Who: an IRIX user (peer helper) posting a directory listing from a V12 machine.
  - Unverified: the V12 mode files live in `/usr/gfx/ucode/ODSY/vof`. The listing shows 1600x1024_60, _72 and _83; 1600x1200_60, _72 and _75; 1920x1080_72; 1920x1200_60 and _60p; and 2@ dual-channel variants such as `2@1600x1024_60_ds`.
  - Unverified: `/usr/gfx/setmon 1600x1024_60` selects a mode. Modes can exist without appearing in the preferences panel. A VFC blocksync template builds extra modes.
  - Test from software: compare the guest's `/usr/gfx/ucode/ODSY/vof` listing with this one, and drive `setmon` on each `.vfo`. The timing generator should accept or reject them consistently. [docs/display-files.md](display-files.md) already tabulates these files; this adds the mode inventory and the 2@ naming.

- **Default visual is 30-bit (0x40) on V6; applications expecting 24-bit (0x3d) get BadMatch.** Identity: `usenet-comp:d7kmcv$2fi$1@reader13.wxs.nl`; `usenet-comp:yqwyirupztky.fsf@Octane2.uci.edu`; `usenet-comp:3A643CA5.5060200@brussels.sgi.com`. Date: 2005-06-01; 2005-11-18; 2001-01-16. Kind: Usenet. Who: IRIX application developers and administrators; an SGI Benelux senior systems engineer for the pixel-packing remark.
  - Unverified: on V6 the default X visual has 30 bit planes (ID 0x40), against 24-bit (0x3d) on IMPACT. Applications that assume 24 get BadMatch on `X_PutImage` (opcode 72).
  - Unverified: `-depth 24` in xdm Xservers did not change the default visual. rdesktop on V12 falls back to 16 bits and shows a black window.
  - Unverified: X pixel packing is 10 bits per component. Changing the default visual (PseudoColor 12-bit, for example) changes behaviour.
  - Test from software: `xdpyinfo` or `xwininfo` on the emulated V6 X server, checking the visual ID and depth tables (0x40 at 30 bits by default, 0x3d at 24 bits available). Reproduce the BadMatch with `XPutImage` at depth 24 on a 30-bit window.

- **Odyssey is SGI-designed, not NVIDIA; even V numbers are Octane (Odyssey), odd ones are IA32 (NVIDIA).** Identity: `usenet-comp:3B98D81C.3000809@brussels.sgi.com`; `usenet-comp:942v4t$19t0$1@fido.engr.sgi.com`; `usenet-comp:bhfcog$9op$1@bongo.munich.sgi.com`. Date: 2001-09-07, 2001-01-17, 2003-08-09. Kind: Usenet. Who: an SGI Benelux senior systems engineer; an SGI OpenGL engineer; users.
  - Unverified: Octane boards use even VPro numbers (V6, V8, V10, V12). IA32 workstations use odd ones (V3, V5, V7). Marketing reused the VPro name.
  - Unverified: VPro in Octane2 is unrelated to NVIDIA and entirely SGI-developed. One 2003 reply says "confirmed" to the GeForce claim, and a later poster contradicts it. Do not use that reply as evidence.
  - Unverified: SGI's stated differences from IMPACT, V12 and Infinite Reality are clip textures, multisampling, multipipe and Origin 3000 scalability.
  - Provenance only. This keeps IA32 VPro and NVIDIA material out of the Odyssey evidence. Test from software: check that the board identity strings carry even V numbers only.

- **VPro hardware layout: two XIO quadrants; a second head needs another XIO widget; DCD; Tezro as an Origin 350 with XIO.** Identity: `usenet-comp:3CA9CB43.6080902@brussels.sgi.com`; `usenet-comp:3F15C0C4.40600@brussels.sgi.com`; `usenet-comp:3C5039F4.5060409@brussels.sgi.com`; `usenet-comp:3B6FD660.5000908@brussels.sgi.com`. Date: 2002-04-02, 2003-07-16, 2002-01-24, 2001-08-07. Kind: Usenet. Who: an SGI Benelux senior systems engineer.
  - Unverified: a VPro board occupies two of the four XIO quadrants. A second VPro (dual head, DUO upgrade) needs another XIO widget. The DUO upgrade brings a PCI shoebox and an extra mouse and keyboard card.
  - Unverified: DCD (Dual Channel Display) is one head with two outputs, unlike Octane2 Duo.
  - Unverified: Tezro is an Origin 350 base module with two PCI slots swapped for two XIO slots that hold a V12. One PCI slot is taken by IO9. It uses the same 200 MHz SysAD as other Origin 3000 systems.
  - Unverified: with one head and DCD, depending on PROM, IRIX and what was done to the VPro EEPROM, digital DVI may need an analog cable or removal of the 13W3 blanking panel.
  - Test from software: check the Tezro and Onyx 350 topology against the model's XIO widget count and enumeration (`hinv` or `ioconfig` in the guest). Two VPro heads need a second XIO widget. EEPROM and cable behaviour is visible to the PROM.

- **Linux IP30 list: VPro has dedicated memory; DMA image loading unknown outside SGI; widget IDs.** Identity: `linux-mips-list:47033156.7090703@gentoo.org` (thread with `4704DB98.1070905@gentoo.org`); `linux-mips-list:5562AF9F.3090900@gentoo.org`; `linux-mips-list:Pine.GSO.4.10.10404162305570.25696-100000@helios.et.put.poznan.pl`. Date: 2007-10-03, 2015-05-24, 2004-04-16. Kind: mailing list. Who: Linux/MIPS kernel developers and Gentoo port maintainers, not SGI insiders.
  - Unverified: VPro and IMPACT have dedicated memory separate from system memory, so fbdev cannot drive X. Nobody outside SGI had worked out loading images into video memory by DMA, so IMPACT's shadow-framebuffer approach is not available.
  - Unverified: the Odyssey xtalk widget has manufacturer 0x023 and part 0xc013 (Kona is 0x2aa and 0xc102). Odyssey is two XIO slots wide but plugs into one connector, usually A and B.
  - Unverified: the 2004 IP30 port author calls VPro's architecture vastly different from MGRAS.
  - Test from software: read the emulated widget ID register and compare it with 0x023 and 0xc013. The datasheet already carries 0xc013 ([docs/registers.md](registers.md)). The DMA statement is a gap marker, not a fact.

- **Reported V8 OpenGL bug: orthographic projection without depth misdraws under IRIX 6.5.9m.** Identity: `usenet-comp:39C28490.928B5A73@mail.arc.nasa.gov`. Date: 2000-09-15. Kind: Usenet. Who: an application user at a government lab, on a V8. Not an insider. The only reply suggests a bad OS load.
  - Unverified: orthographic projections with no depth buffering that worked on Octane and MXI lose clipping and draw lines and polygons in front of the viewer on V8 under IRIX 6.5.9m. The flight demo shows the same.
  - Unverified: the reply blames a bad OS load, so the root cause is unresolved in the thread.
  - Test from software: run an ortho no-depth test and the flight demo on a 6.5.9m-era VPro guest. A weak lead: unconfirmed and specific to an early driver.

- **Hacker News, an ex-SGI advanced-graphics researcher on why VPro was "fatally broken".** Identity: https://news.ycombinator.com/item?id=30918654 (the same text at item?id=30920084 and item?id=30920824). Date: 2022-04-05. Kind: Hacker News comment. Who: a self-described former SGI junior researcher in the advanced graphics division. This lead is already recorded, with its claims tested against the shipped library, as [source 15](#15-recollection-a-hacker-news-comment-on-the-rasteriser-and-clipping-lead-unverified) above; the claims are not repeated here.

- **Weird SGI VPro bug: long thin quads from Z=0 vanish on a V6; the `vpro_z0bug` reproducer; fixed by SGIX_vertex_preclip.** Identity: http://nuclear.mutantstargoat.com/blog/105-sgi_vpro_bug.html. The post includes a standalone test program named `vpro_z0bug`. Date: 2024-04-20. Kind: blog. Who: a retro-graphics hobbyist developer, with hands-on measurement; relays the ex-SGI researcher's account ([source 15](#15-recollection-a-hacker-news-comment-on-the-rasteriser-and-clipping-lead-unverified) above).
  - Unverified: long thin quads that start at view-space Z=0 and run out to the far plane do not render on an Octane2 with a V6.
  - Unverified: starting the quad at about Z=-0.01 makes it render.
  - Unverified: `glEnable(GL_VERTEX_PRECLIP_SGIX)` with `glHint(GL_VERTEX_PRECLIP_HINT_SGIX, GL_FASTEST)` fixes it. `GL_NICEST` also works. `GL_DONT_CARE` does not.
  - Unverified: per the spec, the hint only changes how the driver decides which polygons need software pre-clipping, yet the choice made no difference in the author's tunnel.
  - Unverified: the post speculates that Quake III skybox rendering may hit the same bug.
  - Observed on V6 only, by one author. V8, V10, V12 and Fuel or Tezro boards are untested, and whether BUZZ revisions differ is unknown.
  - Test from software: run `vpro_z0bug` in the emulator and on a model for each board profile (V6, V8, V10, V12), with and without pre-clip, and with Z=0 against Z=-0.01. A model that renders the Z=0 quad correctly has not reproduced the hardware limitation. The result shows whether the limit is in BUZZ geometry or in the raster, and which boards have it.

- **GL_SGIX_vertex_preclip and its hint: SGI-authored registry text.** Identity: https://registry.khronos.org/OpenGL/extensions/SGIX/SGIX_vertex_preclip.txt. A mirror on a personal freedesktop.org page returned HTTP 403 when fetched and was not read. Date: undated, circa 1999 to 2000 (not verified). Kind: extension registry text. Who: SGI OpenGL extension authors.
  - Unverified: the extension defines an "extended rasterizable view volume", an expansion of the clip-space volume, for subsystems that can scissor in 2D or 3D faster than the host can re-tessellate clipped primitives. The lead gave this from a search snippet; [source 15](#15-recollection-a-hacker-news-comment-on-the-rasteriser-and-clipping-lead-unverified) above reports the registry text itself.
  - Unverified: the hint selects how the driver detects primitives that need software pre-clipping.
  - Unverified: OpenGL on Silicon Graphics Systems (007-2392-003, source 14 above) lists the extension among deprecated extensions kept for older systems, including VPro, InfinitePerformance and InfiniteReality. Whether that guide cites this passage is not checked.
  - Test from software: `glGetString(GL_EXTENSIONS)` on each board must advertise the extension. Take the extended-volume bounds from the registry text, which source 15 summarises without numbers, and place vertices at, just inside and just outside them, and see what the driver software pre-clips. A guest trace can show whether the driver sends pre-clip work to the CPU or to BUZZ.

- **IRIX Network forum thread 798: a V6 and V8 pixel-clock bug that causes artifacts.** Identity: https://forums.irixnet.org/thread-798.html. Date: 2018-12 to 2019-02. Kind: forum. Who: a hobbyist owner of a V8 board, quoting an old Nekochan wiki entry (the wiki's author is unknown).
  - Unverified: the old Nekochan wiki says the first-generation VPro boards for Octane2 have a hardware bug that "causes flickering and artifacts when there is more than one OpenGL rendering context on the screen". Its workaround is to "underclock" the RAMDAC.
  - Unverified: the owner saw no artifacts at 1280x720_60 at 16 bpp (a low pixel clock), and artifacts at higher pixel clocks and at the other end of the problem range.
  - Unverified: a V6 "will happily do 1920x1200_60 at 8bpp". 16 bpp on the V8 showed problems.
  - Unverified: the owner later said the card was dying, so some artifacts may come from a failing board rather than the design bug.
  - Unverified: `odydiags` may be in `/usr/diags/bin` on the Customer Diagnostics 1.0 CD (SGI part 812-1122-001), and may have shipped only with Fuel. The poster was unsure.
  - Test from software: set video formats on each V6 and V8 profile across the pixel-clock range and the bytes-per-pixel setting. Run two or more GL contexts at once (two `powerflip` instances, for example) and check whether the model reproduces the window the Higher Intellect page forbids (see the next entry). Look at the format-compiler files for the pixel-clock limits and at what the driver does at the edges. The repo stores a different thread from this forum (1573), not 798.

- **Higher Intellect Vintage Wiki "VPro": the V6 and V8 pixel-clock section, resolution tables and BUZZ revision strings.** Identity: https://wiki.preterhuman.net/VPro (HTTP 403 on the fetch; the content was seen only through search snippets). Related: https://wiki.preterhuman.net/Octane_Graphics_Boards. Date: undated. Kind: community wiki. Who: a community wiki, apparently derived from the old Nekochan wiki (unverified).
  - Unverified: on V6 and V8, modes in the 109 to 193 MHz range cannot be selected.
  - Unverified: modes near the low edge (1280x1024_59 and _60, for example) are allowed only at 8 bytes per pixel framebuffer size, and some users report noise or flicker.
  - Unverified: 1280x1024 at 60, 72, 75 and 85 Hz is listed as an "Additional V10/V12 Resolution". V6 and V8 get 1280x1024 at 96 and 100 Hz (quad stereo) instead.
  - Unverified: one user's V6 reports "BUZZ version B.1, PB&J version 1, 32MB" and runs 1280x1024_60.
  - Unverified: no source given on the page states the root cause (PLL, DAC range or PB&J).
  - Test from software: this is a mixed-authorship secondary source and the full text was not read, so re-fetch it before relying on it. Verify against the format-compiler output, the video-format files shipped with IRIX and the model's video-timing path for each board profile. The BUZZ and PB&J revision strings come from `gfxinfo`, which can be checked against the model's identity registers.

- **Wikipedia "SGI VPro" and its Usenet reference, "Octane2 Vpro based on GeForce2?" (comp.sys.sgi.hardware).** Identity: https://en.wikipedia.org/wiki/SGI_VPro; http://comp.sys.sgi.hardware.narkive.com/gZNH1I8g/octane2-vpro-based-on-geforce2 (the archive returned HTTP 503, so the thread was not read). Date: undated; the thread date was not retrieved. Kind: encyclopedia article and Usenet thread. Who: Usenet posters of unknown role. The article cites no interviews or insider sources.
  - Unverified: the article gives BUZZ at 251 MHz with the memory bus at half that. It says an SGI service manual gives 266 MHz; that is a secondary report. [source 7 above](#7-vpro-odyssey-graphics-diagnostic-reference-108-0314-001) gives 266 MHz.
  - Unverified: V10 and V12 boards for Fuel, Tezro and Onyx 3000 use a different XIO connector from the Octane2 boards (no citation given).
  - Unverified: the V3, VR3, V7 and VR7 "VPro" cards are NVIDIA-based and unrelated to Odyssey.
  - Unverified: the article gives texture memory as 104 MB in one place and 108 MB in another, so the page contradicts itself. [source 13 above](#13-datasheets-brochure-and-product-tables-octane2-datasheet-german-brochure-sgi-periodic-table-sgistuff-page) gives 104 MB for V8 and V12.
  - Test from software: check the BUZZ and SDRAM clocks against the diagnostic manual and the PROM or driver clock-programming values. For the texture-memory split (24 MB of buffers and 8 MB of texture on V6, per a retro.swarm.cz report; 104 against 108 MB on V8 and V12), query the GL texture limits and `gfxinfo` on each board profile. Re-fetch the narkive thread later, since the 503 was probably temporary.

- **HN comment attributing NVIDIA's talent acquisition and the Octane2, Fuel and Tezro decline to the advanced graphics division.** Identity: https://news.ycombinator.com/item?id=542017. Date: 2009 (month not retrieved). Kind: Hacker News comment. Who: an anonymous commenter, role unknown, second-hand.
  - Unverified: NVIDIA was "hard pressed into buying talent", mostly from SGI's advanced graphics division, and this hurt SGI's new workstation lines (Octane2, Fuel, Tezro).
  - Only a search-engine summary was seen, not the page. It has no technical content.
  - Test from software: not testable. Listed so nobody spends time on it.

- **SGI launch release and the UCSF graphics-board table.** Identity: https://www.thefreelibrary.com/SGI+DEBUTS+ADVANCED+GRAPHICS+OCTANE2+WORKSTATION.-a070735172; https://www.cgl.ucsf.edu/Resources/graphperf.html. Date: 2001 for the release (V10 and V12 announcement, per the sgistuff page); the UCSF table is undated. Kind: press release; academic lab page. Who: an SGI marketing release; an academic lab page that warns some of its figures are vendor numbers.
  - Unverified: the launch figures are over 18 million 1-pixel lit, depth-buffered, Gouraud-shaded triangles per second and 448 megapixels per second of fill, measured with trilinear mipmapping and depth buffering.
  - Unverified: hardware specular shading with normal interpolation "without a performance penalty".
  - Unverified: the UCSF table lists the Octane2 V12 at 18.1 M polygons/s, against 31 M for a Quadro2 Pro.
  - Neither source is an engineering account.
  - Test from software: 448 Mpix/s and 18 M tri/s are marketing peaks, to be used only as upper bounds for a rate-limited model. A guest fill-rate test (trilinear plus depth) gives a per-clock figure to compare against.

- **SPEC Viewperf 6.1.1 on SGI Octane2 with V6.** Identity: https://retro.swarm.cz/20180413/aaa-11/. Date: 2018-04-13. Kind: blog. Who: a hobbyist owner running a measurement.
  - Unverified: V6 has 32 MB, with 24 MB for buffers and 8 MB for textures. [source 13 above](#13-datasheets-brochure-and-product-tables-octane2-datasheet-german-brochure-sgi-periodic-table-sgistuff-page) already gives the 8 MB texture figure from the datasheet.
  - Unverified: the post gives V6 Viewperf results. These are a measured data point, not a design statement.
  - Test from software: run the same Viewperf 6.1.1 datasets on the model and compare relative scores across tests. This exercises the texture-memory limit and lighting. Only a search summary was seen, so re-fetch the numbers before use.

- **McCool et al., "Incremental and Hierarchical Hilbert Order Edge Equation Polygon Rasterization" (Graphics Hardware 2001).** Identity: https://dl.acm.org/doi/10.1145/383507.383528. Date: 2001. Kind: paper. Who: academic authors, not SGI.
  - Unverified: Hilbert-order rasterisation improves texture-cache locality and can work in homogeneous coordinates with no clipper.
  - The paper matches the ex-SGI account of "no clipping", but it is an independent academic design. It is not evidence of what BUZZ does.
  - Test from software: a contrast case only. If the model's raster loop is homogeneous with no clipper, [source 15](#15-recollection-a-hacker-news-comment-on-the-rasteriser-and-clipping-lead-unverified) above says that should show precision loss near W=0.

- **Nekonomicon forum thread, "SGI VPro VR3 vs Odyssey VPro".** Identity: gainos.org forum thread 16724722. The full URL has a personal user segment and was not fetched (DNS failure). Date: undated. Kind: forum. Who: a hobbyist.
  - Unverified, per a search summary: the poster says BUZZ holds most of the graphics pipeline and PB&J is "primarily the DG portion". The poster says they found no information on PB&J and is guessing.
  - Test from software: not testable. Low value. Settle it from the diagnostic manual and the model's own block diagram.

- **Oral histories: CHM catalogue for graphics architects; the 3dfx panel; the SIGGRAPH 2021 SGI retrospective.** Identity: https://www.computerhistory.org/collections/catalog/102746834; https://f0lkl0r3.dev/welcome (index of CHM oral histories). Date: 2013 (3dfx panel); 2021 (SIGGRAPH retrospective). Kind: oral history. Who: graphics company founders and architects; none was identified as a VPro engineer.
  - Unverified: no CHM oral history covering Odyssey, BUZZ, PB&J or Octane2 graphics was found. The 3dfx panel touches SGI only in passing.
  - Unverified: the index lists SGI-related interviews (graphics architects and MIPS or SGI founders) that were not opened, so any VPro content in them is unknown.
  - Test from software: not testable. This records a negative result for the CHM route. It stands unless a full-text search of the listed SGI-architect transcripts finds otherwise.
 (docs: add unverified VPro history leads to published sources)

## What these sources settle, by open question

- **Colour interpolation arithmetic.** Candidates only: a 12-bit bilerp of vertex colours from reciprocal-area-scaled edge distances, perspective-corrected by an interpolated 1/w, evaluated through a 4K x 4K recursive subdivision (sources 1, 3 and 6, inferred). A numeric test of the candidate against the 1090 residual pixels is the next route.
- **Remaining operation codes and the scalar unit.** Source 1 gives the set of scalar-stage functions; three of the four match the shipped codes already read. The fourth, the arc-sine, and whether codes 3 and 0xb are the exponent, stay open.
- **Texture arithmetic.** Source 4 gives the quad level-of-detail rule; no source gives weight or sub-texel widths.
- **Raster tie rule.** Source 3 says shared edges have exactly one owner; the side stays unknown.
- **Board facts.** The clock, memory clock, on-chip memory and link figures of source 7 are new to the board chapter.
- **What PB&J is and how it joins BUZZ.** The revision-003 diagnostic reference expands the name and gives an 8-bit bidirectional control bus (source 8); [docs/pbj.md](pbj.md) records it. Pixel transfer to the chip is still unpublished.
- **Colour-map size.** 8192 entries (source 8).
- **Host link rate.** Sources 6, 7, 8 and 12 give 800 MB/s, 710 MB/s, 16-bit at 400 MHz and 800 MB/s per V-brick port; [docs/open-questions.md](open-questions.md) holds the disagreement.
