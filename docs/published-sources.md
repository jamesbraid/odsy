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

## What these sources settle, by open question

- **Colour interpolation arithmetic.** Candidates only: a 12-bit bilerp of vertex colours from reciprocal-area-scaled edge distances, perspective-corrected by an interpolated 1/w, evaluated through a 4K x 4K recursive subdivision (sources 1, 3 and 6, inferred). A numeric test of the candidate against the 1090 residual pixels is the next route.
- **Remaining operation codes and the scalar unit.** Source 1 gives the set of scalar-stage functions; three of the four match the shipped codes already read. The fourth, the arc-sine, and whether codes 3 and 0xb are the exponent, stay open.
- **Texture arithmetic.** Source 4 gives the quad level-of-detail rule; no source gives weight or sub-texel widths.
- **Raster tie rule.** Source 3 says shared edges have exactly one owner; the side stays unknown.
- **Board facts.** The clock, memory clock, on-chip memory and link figures of source 7 are new to the board chapter.
