# Measurements: a real V10, and the real driver traced in an emulator

This chapter collects findings that come from running software rather than
reading it, kept apart from the software-derived chapters so each claim's
evidence stays visible. Two kinds of evidence appear, and every item names
its kind:

- **measured (V10)**: on a real Octane2 (IP30, two R14000, V10 board
  "VPRO/B/32", 32 MB board memory, IRIX 6.5.22 with VPro patch 5578, X at
  1024 x 768 TrueColor depth 24), by small GL programs whose results are
  read back with glReadPixels, by `glxinfo`, `gfxinfo -vv` and by `dbx` on
  the shipped libGLcore.
- **traced (driver in IRIS)**: the unmodified IRIX 6.5.30m driver, X server
  and libGLcore running in the IRIS emulator's VPro model (board V12,
  "VPRO/B/128", 128 MB), with every command FIFO word, display FIFO store
  and DMA descriptor the software sent recorded by the emulator. What the
  software sent is established by this; what the emulator did with it is
  not evidence about the board.

The programs are in the IRIS repository under `test/gltest/` (`glprim`,
`pixtest`, `glstate`, `blendtest`, `vprolimits.c`, `sigtex.c`).

## 1. Visuals, limits and pbuffers (measured, V10)

- RGBA visuals: true-colour 4:4:4:4 and 5:5:5:1 (16 bits a pixel), 8:8:8:8
  and 10:10:10:2 (32 bits a pixel); pseudo-colour 8-bit and 12-bit RGB;
  colour index 8 and 12 bits. Each with and without double buffering,
  24-bit depth and 8-bit stencil. No 12:12:12:12 visual on this 32 MB
  board. No multisample visual; `GL_SGIS_multisample` is not in the
  extension string.
- Accumulation: 16 bits a component on the window visuals, 24 on the
  pbuffer-only fbconfigs (drawable type pixmap and pbuffer).
- Limits from an RGBA8888 pbuffer context: GL_MAX_VIEWPORT_DIMS 3840 x
  3840; GL_MAX_TEXTURE_SIZE 512; GL_SUBPIXEL_BITS 3; point size and line
  width 0.5 to 10, granularity 0.125; 6 clip planes; 8 lights.
- Pbuffers: every pbuffer-capable fbconfig reports GLX_MAX_PBUFFER_WIDTH
  and HEIGHT 1024 x 768 and 786432 pixels (the managed screen's size).
  512 x 512 and 1024 x 1024 pbuffers are created and read back correctly;
  2048 x 2048 and 4096 x 4096 fail with BadAlloc.
- The shipped libGLcore names a hardware 24-bit accumulation path
  (`__glOdyHardAccum24`, `hardLoadAccumulate24`,
  `sendBlenderColorTokensAccum24`, `initAccumGfxImages`) beside the
  software one (`__glOdySoftAccum`). (Symbol names, established.)

## 2. Aliased lines and points (measured, V10)

Lines of widths 1, 1.5, 2, 2.5, 3, 4, 5, 7 and 10 (horizontal, x-major and
y-major segments of one loop), line stipples (1, 0x0f0f), (3, 0x3333) and
(2, 0x0f0f) at width 3, points of sizes 1 to 10 (including 1.5 and 2.5),
and polygon modes line and point: the pixels drawn match, pixel for
pixel, the IRIS model's rules (diamond exit for thin lines, width
replicated along the minor axis, square points). Antialiased lines do not:
the board ends a line at its endpoint pixel at full coverage (no fade past
the end), and its coverage across the line is not the pixel's area (a
width-1 line centred at y = 9.6 gives 219 and 42 of 255 in rows 9 and 10;
the area would give 230 and 26).

## 3. Signed texel uploads

- **traced (driver in IRIS), established as the software's behaviour:**
  for `glTexImage2D(GL_RGBA8, ..., GL_RGBA, GL_BYTE, ...)` of a 4 x 4
  image, `__glOdyim_TexImage2D` calls `TexImage`, `LoadTextureFromHost` and
  `__glOdysseyImageXfer`, which builds an image chain of two operations,
  tiles the image as one 4 x 4 tile and runs it. On the board this is:
  block 0x017 selecting board address 0x16b000 (word 1 0x20, word 2
  0x08104851), an image primitive (begin 0xa) whose four rows arrive as
  image bursts of four words with image header 0x0f41116b (format 0x11);
  then block 0x017 selecting 0x16f000 (word 2 0x080024d0), block 0x03b
  with scale 0x2000 and bias 1 on all four channels (2.0 and 1/4096 in the
  3.12 layout), and a rectangle copy of 4 x 4 from 0x16b000 to 0x16f000.
  `__glOdysseyImageChainAddOpAcceptSignedDataFromHost` and
  `__glOdysseyImageMovePixelsTexture` are not called (dbx breakpoints, on
  6.5.30m in IRIS and on 6.5.22 on the V10 alike).
- **measured (V10):** the texture holds `max(0, 2c)` for a signed byte c
  as an 8-bit value: 64 gives 0x80, 127 gives 0xfe, 1 gives 0x02, 100
  gives 0xc8, every negative gives 0. GL 1.1's (2c + 1)/255 would give
  0x81, 0xff, 0x03 and 0xc9. **inferred:** the copy reads the scratch
  bytes as signed (c / 128) and the 0x03b scale doubles them, with the
  bias too small to show at 8 bits and the store clamping at zero.
- **measured (V10):** unsigned bytes arrive unchanged except 0x80, which
  reads back as 0x81.

## 4. The frame buffer the driver configures (traced, driver in IRIS)

Display FIFO stores decoded with the header layout of `PBJ.h` section 1:

| When | 0x2801 (first region) | 0x2800 (second region) | 0x2807 pitch | 0x2809 depth |
|---|---|---|---|---|
| kernel start-up (`odsyInitDBE`, 1280 x 1024 x 8) | 0x2000 | 0x0a2000 | 80 | 2 |
| X start, `-depth 24 -class TrueColor` | 0x2000 | 0x142000 | 80 | 3 |

The base words count 16-byte units (**established** by code: `mm_init_freespace`
sizes the free list in 512-byte extents, the board's megabytes shifted left 20
and right 9, less a reserved start of 8192 / 32 extents, and `odsy_mm_commit`
makes a buffer word from an extent by shifting it left 5). So 0x2000 is the
reserved start, 128 KB, where the first region begins.

**traced, and consistent with that unit:** the first region spans 0xa0000 units
(10 MB) at depth code 2 and 0x140000 (20 MB) at code 3, that is 8 and 16 bytes
a pixel over 1280 x 1024: the published "8-byte or 16-byte frame buffer". The
depth code is the frame buffer's bytes a pixel (2, 3, 4 for 8, 16, 32 bytes),
not a colour depth; X with `-depth 24` on the 128 MB board took 16. The second
region, at 0x142000, is followed by the first texture allocation at 0x16b000:
0x29000 units, of which 0x28000 are 2 bytes a pixel over 1280 x 1024, the
overlay and window-id buffer `odsyConfigFb` places after the pixels. Block
0x017 selects it with word 2 0x20080080, which is what libGLcore computes for a
level-1 colour-index visual (section 5). How the bytes of one pixel hold its
fields: **unknown**; nothing the host can read shows it (no CPU window onto
board memory is known; data moves only through the board's DMA and copies,
which convert).

Block 0x017 as the software sends it (traced): word 0 is 0x2000 for
nearly every GL and X drawing operation (the first region), 0x142000 for
the second, and 0x16b800 and 0x16f800 (above the frame buffer) for the
scratch image and the texture level of section 3; word 1 is the pitch in
16-pixel tiles (0x50 = 80 for the frame buffer, 0x20 and 0x02 for the
images); word 2 varies (0x69d0, 0x6950, 0x20006950, 0x200069d0,
0x008069d0, ...; 0x08104851 for the scratch image, 0x080024d0 for the
texture level), decoded in section 5.

## 5. Block 0x017, the pixel mode, and its status word

The 6.5.7 driver source names block 0x017 the pixel mode, with four operands:
origin, stride, status and coarse-Z origin. It names the status word's fields
PIXEL_FMT, WIN_DEPTH, FB_DEPTH, FIELD_FMT, PIXEL_INDEX, USE_CLEAR and
SCRATCH_BUFFER, and gives the two depths as bytes a pixel, 2^(code+1). Its
textport sets 8-byte frame-buffer and window depths with the C format and
RGBA field format (true colour), or the E format and index field format; the
overlay textport uses the B format at 2 bytes. The source has no register
header, so the bit positions below come from libGLcore.

Evidence here is of a third kind, **read**: the code of the 6.5.30m N32
libGLcore (`__glOdysseyImageDescribeWindow`, `__glOdysseyImageCalcFieldFormat`
and their jump tables in `.data`, the make-current descriptor build), checked
against the traced words of section 4.

`__glOdysseyImageDescribeWindow` turns the drawable's GL modes into a format
code, from the colour component sizes (bytes 43, 47, 51, 55 of the modes
record) or, in colour-index mode, the index size:

| Code | Visual | FIELD_FMT (bits 6:4) | WIN_DEPTH, PIXEL_FMT (bits 12:10, 9:7) |
|---|---|---|---|
| 2 | luminance 8 | 2 | level 1: 0, 1; otherwise 2, 4 |
| 5 | luminance 12 | 2 | A |
| 6 | luminance-alpha 8 | 3 | A |
| 7 | 4:4:4:4 | 5 | A |
| 8 | 5:5:5:1 | 6 | A |
| 9 | luminance-alpha 12 | 3 | B |
| 10 | 8:8:8:8 | 5 | B |
| 11 | 10:10:10:2 | 6 | B |
| 12 | 12:12:12:12 | 5 | single 2, 0; double 3, 1 |
| 16 (0x10) | colour index 8 | 0 | level 1: 0, 1; otherwise 2, 4 |
| 17 (0x11) | colour index 12 | 0 | A |

- A: not stereo 2, 3; stereo with the modes byte 9 set 3, 4, clear 2, 5.
- B: single-buffered 2, 2; double-buffered with byte 9 set 3, 2, clear 2, 1.
- "Level" is the modes word at +84, and bytes 6, 7 and 9 read as
  double-buffer, stereo and have-depth by the GL sample implementation's
  field order; both are **inferred** from that order.
- Codes 0, 1, 3, 4 and 13 to 15 give field format 2, 2, 2, 2, 5, -1, -1 and
  no window layout: they are image-only formats.

The make-current build of word 2 (**read**):

| Bits | Content |
|---|---|
| 31 | written by the clear path, no window case seen |
| 29 | set and cleared by the context validation, set in most of the traced GL draws |
| 27 | SCRATCH_BUFFER (**inferred** by its behaviour): off-screen: set by the texture-target and image paths; when clear, make-current and swap send the window-clip reset (blocks 0x041, 0x04b, 0x040) |
| 23 | the swap's transient bit (`display/README.md`) |
| 22 | set when bits 12:10 are 3 |
| 21 | from the make-current reply |
| 20 | seen only in the scratch image select (0x08104851) |
| 19 | PIXEL_INDEX: set for format codes 0x10 and 0x11 (colour index) |
| 15:13 | FB_DEPTH: bytes a memory pixel, 2^(code+1); the element size of the allocation, from the make-current reply (the binding record's byte 42, the `MMalloc` element-size byte) |
| 12:10 | WIN_DEPTH: bytes of the pixel the visual uses, 2^(code+1), from the table above |
| 9:7 | PIXEL_FMT, from the table above (the overlay's B format is 1) |
| 6:4 | FIELD_FMT, from the table above (index 0) |
| 0 | seen only in the scratch image select |

Checked against the traced words (section 4):

- 0x6950: FB_DEPTH 16 bytes, WIN_DEPTH 8, PIXEL_FMT 2, FIELD_FMT 5. That is a
  single-buffered 8:8:8:8 window on the 16-byte frame buffer.
- 0x20406d50: WIN_DEPTH 16 and bit 22, as a double-buffered 8:8:8:8 window
  with depth gives.
- 0x20080080: both depths 2 bytes, PIXEL_FMT 1 (B), FIELD_FMT 0 and
  PIXEL_INDEX. That is a level-1 colour-index 8 visual in the 2-byte overlay
  buffer, as the textport's overlay setting has it.
- 0x080024d0: the texture level. Both depths 4 bytes, SCRATCH_BUFFER.
- 0x08104851: the scratch image. Both depths 8 bytes, PIXEL_FMT 0,
  SCRATCH_BUFFER.

The texture-target path (used when drawing into a level) writes both depths
from the texture's one size field and PIXEL_FMT from another, clears
PIXEL_INDEX and sets SCRATCH_BUFFER.

**inferred:** a surface is (origin in 16-byte units, stride in 16-pixel
tiles, FB_DEPTH bytes a pixel). A window visual uses WIN_DEPTH bytes of each
8- or 16-byte frame-buffer pixel, arranged by PIXEL_FMT; the buffer select
(block 0x024, front 0x3, back 0xc in the textport) picks front or back inside
it. The 6.5.7 frame-buffer layout gives depth, stencil and the back buffer no
region of their own, so they sit in the same pixel. Which bytes each part
occupies: **unknown**. Only the board's own converters ever read them, so a
model may choose any assignment that keeps the sizes.

## 6. Texel storage precision (measured, V10; traced selects)

A 16 x 16 texture of each internal format, loaded from 8-bit RGBA and read
back with glGetTexImage (`glprim --scene tex --texifmt F --texread`):

| Internal format | Read back | Precision kept |
|---|---|---|
| rgba8, rgb10_a2, rgba12, rgba16 | unchanged | at least 8 bits |
| rgba4 | 0xa5 gives 0xaa, 0x20 gives 0x22 | 4 bits, replicated into the low nibble |
| rgb5_a1 | 0x20 gives 0x21 | 5 bits, replicated |
| alpha8, luminance8, luminance12, luminance8_alpha8 | the components GL drops are 0, the kept one unchanged | at least 8 bits |

**traced (driver in IRIS):** the destination select of each upload names the
texel's storage: alpha8 and luminance8 status 0x08000020 (2 bytes, FIELD_FMT
2) with level index 0 and 4; rgba4 0x08000050 (2 bytes, FIELD_FMT 5) with level
index 12, after a 4-byte scratch select; rgba8 0x080024d0 (4 bytes, FIELD_FMT 5)
with level index 17 (word 1 0x41100002). **inferred:** the board stores a texel
in the bytes the level's size code books, at the precision of its format, and
the 2-byte one-component formats hold at least 8 bits.

The full set traced (destination select status, level word 1, and the DMA
word 4 of the glGetTexImage read):

| Internal format | Status | Bytes, FIELD_FMT | Level word 1 (index) | Read word 4 |
|---|---|---|---|---|
| alpha8 | 0x08000020 | 2, 2 | 0x00000002 (0) | 0x80001008 |
| intensity8 | 0x08000020 | 2, 2 | 0x00200002 (2) | 0x80001008 |
| luminance8 | 0x08000020 | 2, 2 | 0x00400002 (4) | 0x80001008 |
| luminance8_alpha8 | 0x08000030 | 2, 3 | 0x00b00002 (11) | 0x80001001 |
| rgba4 | 0x08000050 | 2, 5 | 0x00c00002 (12) | via a 4-byte scratch, 0x80013042 |
| rgb5_a1 | 0x08000060 | 2, 6 | 0x00d00002 (13) | 0x80001009 |
| luminance16_alpha16 | 0x080024b0 | 4, 3 | 0x41000002 (16) | 0x8001302a |
| rgba8 | 0x080024d0 | 4, 5 | 0x41100002 (17) | 0x80013042 |
| rgb10_a2 | 0x080024e0 | 4, 6 | 0x41200002 (18) | via a 4-byte scratch, 0x80013042 |
| rgba12 | 0x08004850 | 8, 5 | 0x82100002 (33) | 0x8002500b |

So FIELD_FMT reads as the component arrangement: 2 one component, 3 two, 5
four of equal width (bytes x 2 bits each), 6 the packed 5:5:5:1 and 10:10:10:2.
The DMA word 4 carries the pixel size in bits 19:16 and the field size in bits
15:13 (codes 0 to 3 for 2 to 16 bytes); the frame buffer's colour upload
(0x8223305a) has pixel size 3 (16 bytes) and field size 1 (4 bytes), so bits
27:20 (2 and 2 there) are plausibly the field's place in the pixel
(**inferred**).

## 7. Write masks and plane masks (traced, driver in IRIS)

- Block 0x452, the GL write mask: bit 24 depth, bits 23:20 one enable a
  colour channel (glColorMask(1,0,1,0) sends 0x00500000; with every channel
  on, 0x00f00000), bits 19:12 the stencil mask, bits 11:0 the index mask.
  These are logical enables, one a channel, and say nothing about stored bit
  positions.
- Block 0x1023 (four operands), the plane mask, shifted left 12 as the model
  reads it. Values seen in an X start and GL runs: 0x00ff0ff0 0x00ff0ff0,
  0x00ffffff 0x00ffffff, 0x00f00f00 0x00f00f00, and for the window-id writes
  0x000f8000, 0x00007000, 0x000ff000 and 0xfffff000 (with second operand 1).
  **inferred:** the colour masks are 12-bit fields, two a word (R and G, then
  B and A): 0xff0 is the top 8 of 12 bits (the 8-bit visuals), 0xf00 the top
  4 (4:4:4:4). So the board's colour field holds 12 bits a channel, with a
  narrower visual's bits at the top. The window-id byte divides as bits 7:3
  the main window id (mask 0xf8, 32 ids) and bits 2:0 the overlay id (mask
  0x07).

## 8. Where a window's fields sit in the pixel (read, libGLcore)

`__glOdysseyImageCalcDmaFieldOffsets` (6.5.30m N32 libGLcore, 0x0d9beb40;
the decompiler fails on it, read by hand through its delay slots) takes the
window's WIN_DEPTH code, its PIXEL_FMT, a left-eye flag and a depth-or-
stencil flag, and returns the two field offsets the DMA header's word 4
carries in bits 23:20 (A) and 27:24 (B). Its table (**read**):

| WIN_DEPTH | PIXEL_FMT | colour (A, B) | depth/stencil |
|---|---|---|---|
| 0 | 0, 1, 3, 4 | (0, 0) | (0, 0) |
| 1 | 0 | (1, 0) | (1, 0) |
| 1 | 1 | (0, 0) | (0, 0) |
| 1 | 2, 3 | (1, 1) | (0, 0) |
| 2 | 0 | (0, 0) | (0, 0) |
| 2 | 1 | (2, 0) | (2, 0) |
| 2 | 2 | (2, 2) | (0, 0) |
| 2 | 3, 4 | (3, 2) | (0, 0) |
| 2 | 5 | left (3, 1), right (2, 0) | |
| 2 | 6 | (0, 0) | (0, 0) |
| 3 | 1 | (4, 0) | (4, 0) |
| 3 | 2 | (6, 2) | (4, 0) |
| 3 | 4 | left (7, 3), right (6, 2) | (4, 0) |

Any other pair is a GL invalid-operation. Word 4 bit 31 (front) is clear
for the back buffers and set otherwise, so front and back are chosen by
that bit, and the eye and depth by the offsets. Every pair the traced
reads carry is in the table: (6,2), (2,2), (3,2), (7,3), (2,0), (4,0), (0,0).

**inferred**, consistent with every row: A is the front field and B the
back field, in 2-byte units from the start of the pixel. A double-buffered
8:8:8:8 window with depth (WIN_DEPTH 16 bytes, PIXEL_FMT 2) has its front
colour in bytes 12-15, back colour 4-7, depth and stencil 8-11. A
single-buffered one (8 bytes, PIXEL_FMT 2) has colour 4-7 and depth 0-3.
A 4:4:4:4 window (PIXEL_FMT 3) has 2-byte colours at 6-7 and 4-5 and depth
0-3. The 12-bit visuals (PIXEL_FMT 0 and 1) have 8-byte colours. An
8-byte window in a 16-byte frame buffer uses the first 8 bytes, which is
why windows of either size share one frame buffer. **unknown:** how the
24 bits of depth and 8 of stencil divide their 4-byte field, how a 12-bit
colour packs its 8 bytes, and the pixel order inside a tile.

### Raw paths to board memory that could settle the rest

- `MMxfr` (ioctl 0x6f640006): the caller supplies the whole 32-byte DMA
  header. A nonzero origin is used as given, with no bounds check in the
  6.5.7 source, and the kernel's own paging uses word 4 in its raw form
  (no conversion, plain rows on the host side). A GL program with a bound
  context could read any board address raw at any pixel size. Shifting
  the origin by one 16-byte unit across a known pattern would show the
  pixel order inside a tile; reading a window's frame-buffer pixels at a
  16-byte pixel size would show the whole pixel. Not yet tried.
- `DIAGdma` (ioctl 0x6f64002e): a full header with no rewrite of word 7;
  on a timeout the kernel tears the board down.
- No CPU aperture onto board memory is known. +0x220000 reads PB&J state,
  not SDRAM.

## 9. The main display mode word places each window's colour (read; live values)

The 6.5.7 source names the fields of the main display mode word (backend
0x2900 + id) `pixel_field_format`, `pixel_display_format`, `clut_base`,
`gamma_comp`, `true_color` and `stereo`. The X module's `odsyValidateMode`
takes bits 24:9 and 3:0 from its per-visual table and bits 8:4 (the colour
map group) from the current word, which fixes the boundaries. The
6.5.30 kernel's textport word is 0x4b5e00. Live words from IRIX 6.5.30 on a
V12 with a 16-byte frame buffer, split as bits 24:13 in four 3-bit groups
(window pixel size, colour field size in 2-byte units, buffer A's colour
offset, buffer B's colour offset, the last three in 2-byte units) and bits
12:9 the display format:

| Bits 24:13 | Size, field, A, B | Mode ids | The library's field offsets (section 8) |
|---|---|---|---|
| 0x25a | 8 bytes, 1 unit, 3, 2 | 0-6, 8, 9, 14 | 8-byte window, PIXEL_FMT 3/4: (3, 2) |
| 0x290 | 8 bytes, 2 units, 2, 0 | 7, 10, 11, 13, 24 | 8-byte window, PIXEL_FMT 1: (2, 0); single-buffered at 2 |
| 0x300 | 8 bytes, 4 units, 0, 0 | 12 | 8-byte window, PIXEL_FMT 0: (0, 0), 12-bit |
| 0x4b2 | 16 bytes, 2 units, 6, 2 | 15-21, 23 | 16-byte window, PIXEL_FMT 2: (6, 2), depth at (4, 0) |
| 0x520 | 16 bytes, 4 units, 4, 0 | 22, 26 | 16-byte window, PIXEL_FMT 1: (4, 0), 12-bit |

Display formats (bits 12:9), **inferred** from the visuals bound to each id
(`odsyVisualPrivs`): 0xc RGB 4 bits, 0xb RGB 5, 0xa RGB 8, 0x9 RGB 10, 0x6
RGB 12, 0xf and 0x8 CI8, 0xe, 0x3 and 0x7 CI12. Bit 0 is set on the
second (stereo) id of the 8-, 12- and 15-bit visuals. Bits 2:1 are both set
on every TrueColor mode. Bit 30 is a software flag the kernel turns into the
window's displayed-buffer bit (BUZZ 0x10c4/0x10cc); bits 31:25 are
otherwise not written (the high bytes seen on unused ids are stack data).

So scan-out needs no knowledge of the visual: the window id picks the mode
word, the window's displayed bit picks A or B, and the word gives the
field's place, size and format. The two layouts the model checks both ways
(the X root, 0x005215a6, and a double-buffered 8:8:8:8 window with depth,
0x009655a6) put the colour exactly where the drawing side's pixel mode
writes it. **unknown:** the A/B polarity of the displayed bit (the model
shows A while it is clear), stereo placement in 1-unit fields, and what
separates the CI codes.

Overlay mode word (0x2920 + id): bits 7:3 the colour map group, bit 1
opaque (inferred), bit 0 enable.

## 10. The copy block 0x2031, from a raw recording (traced, driver in IRIS)

A raw recording of the command FIFO during the signed upload of section 3
(`vpro rec`, every store the host made) has the copy as block 0x2031 with
eight operands:

| Word | Value | Reading |
|---|---|---|
| 0 | 0x0016b800 | source address (the scratch image) |
| 1 | 0x00000000 | source x (15:0), y (31:16) |
| 2 | 0x80020020 | bit 31 destination front; 27:16 destination stride in tiles (2); 15:12 the destination's B field offset; 11:0 source stride in tiles (0x20) |
| 3 | 0x00040004 | width (15:0), height (31:16) |
| 4 | 0x8002500b | source format: bit 31 front, 30:28 the drawable-register selector, 27:24 B and 23:20 A field offsets, 19:16 pixel size (2: 8 bytes), 15:13 field size (2: 8 bytes), bit 12 set, 7:3 and 2:0 the field's code and class |
| 5 | 0x0016f800 | destination address (the texture level) |
| 6 | 0x00000000 | destination x, y |
| 7 | 0xb801204b | destination format: 31:24 the operation, 23:20 A field offset, 19:16 pixel size (1: 4 bytes), 15:13 field size (1: 4 bytes), 12:0 the field's format and type |

The fields are where libGLcore's copy builder (the Odyssey GL driver image move assembly unit) packs
them, and the destination's A and B offsets are split between word 7 and
word 2. A source or destination address of 0x10000019 or 0x10000010 (bit 28
set) is the current read or draw drawable rather than memory. Before the copy
the library points the pixel mode (block 0x017) at the destination, so the
destination's pixel layout is also the pixel mode's. (The IRIS trace of
these runs printed the eight operands as zero; the recording has them.)

## 11. piglit on a V10 and in IRIS (measured, V10; traced, driver in IRIS)

piglit's IRIX port (the `irix/` directory of the IRIS project's piglit
branch) ran 421 OpenGL 1.0 to 1.2 tests on the V10 above and on the IRIS
model of a 32 MB V10 under IRIX 6.5.30m, the same binaries on both. On the
V10: 146 pass, 38 fail, 19 end on an X error the IRIX server raises (GLX
pixmaps, context destruction), 216 skip (the extension or version is
absent), one runs out of time (`max-texture-size`). Results that bear on the
board:

- **FRONT_AND_BACK reaches both buffers (measured).** `gl-1.0-drawbuffer-modes`
  passes: on a double-buffered 8:8:8:8 visual (0x3e) a rectangle drawn after
  glDrawBuffer(GL_FRONT_AND_BACK) or GL_LEFT is in both buffers, one drawn
  after GL_FRONT only in the front, after GL_BACK only in the back.
  **traced:** the geometry for FRONT_AND_BACK is sent once, after draw mask
  0x424 = 1, with write mask 0x452 = 0x01f00000 and drawable words
  0x608/0x609 = 0x80002000, the same words as the later GL_FRONT
  rectangle; the clear before it is two passes, draw mask 4 then 1.
  **measured (V10, dbx on the 6.5.22 libGLcore):** on the V10 the library
  asks for both buffers, `__glOdysseySetDrawbuf(ctx, 1, 0, 1, 0)` (mask 5),
  and clears once. **read (6.5.30m libGLcore, the Odyssey GL driver clear assembly unit):** the clear
  splits into a back pass and a front pass, and leaves the front-only
  mask selected, when context +0x7b74 is zero; `MakeCurrent` (the Odyssey GL driver context assembly unit)
  sets that word to 1 unless the drawable's pixel-size field (context
  +0x11dc4, which feeds bits 12:10 of block 0x017 word 2) is 3, a 16-byte
  frame buffer. The V10's frame buffer is 8 bytes a pixel (its saved
  setting, `/var/X11/Xvc/Odyssey0_TimingTable`, reads `1024x768_60`, `8`,
  `0`, as `setmon -d 8` writes it; block 0x017 word 2 0x200048e0, code
  2). The emulated board had run with the X server's default, 16 bytes,
  and drew the FRONT_AND_BACK rectangle into the front only; with the
  V10's setting it passes. So on a 16-byte frame buffer the 6.5.30m
  library draws FRONT_AND_BACK geometry into the front only after a
  clear: **inferred** from the code; not measured on a board.
- **Stencil reads of an RGB window (measured).** `hiz-stencil-read-window-depth0`
  and `-depth1` pass: glReadPixels(GL_STENCIL_INDEX) of an RGBA window
  returns the stencil values drawn. **inferred:** the read header is the
  class-0 form whose field codes are (0,0), which the X module and
  libGLcore also use for a colour-index read of an index window
  (`opengl/opengl.md`); the window's display mode separates them.
- **Image pixels take the fragment operations (measured).**
  `gl-1.0-drawpixels-depth-test` passes: a pixel drawn by glDrawPixels at
  raster depth 1.0 under GL_LESS over a stored 0.5 is discarded.
  **traced:** glDrawPixels is the raster-position blocks 0x3cf8 to 0x3cfb
  (16 operands each), then a begin of primitive type 10, the image box, one
  `0x8080c800` corner at the window position, the image header 0x4570 and
  the pixel burst. The depth the board compares must come from state set
  by the raster-position blocks; nothing later in the stream carries it.
- **Lighting and texture generation (measured).** `two-sided-lighting`,
  `two-sided-lighting-separate-specular` (GL_SEPARATE_SPECULAR_COLOR with a
  white MODULATE texture: the specular is added after texturing),
  `gl-1.0-texgen` and `texgen` (GL_SPHERE_MAP among them) pass.
- **Edge flags (measured).** `gl-1.0-edgeflag`, `-edgeflag-const` and
  `-edgeflag-quads` pass: a polygon edge flagged false is not drawn in
  GL_LINE and GL_POINT modes (`buzz/words.md`, edge-flag words).
- **Window reads in the window's format (measured).** Every pixel-probing
  test on a 10:10:10:2 window passes, so a read of a window delivers the
  colour as the window stores it whatever packing the read header names
  (format byte 0x02 for RGBA, UNSIGNED_BYTE). **traced:** the same header
  serves a read of an 8:8:8:8 window; the board must take the field's
  layout from the window, as the scan-out does from the display mode
  (section 9).
- **Visual selection (measured).** glXChooseVisual asked for at least one
  bit of red, green and blue returns the smallest visual that has them, a
  4:4:4:4 or 5:5:5:1 one, where piglit's probes assume 8 bits; the port asks
  for 8 first.

## 12. Pixel transfer, texture generation, separate specular (traced, driver in IRIS)

- **glPixelTransfer scale and bias** reach the board as block 0x03b
  (`0x0001203b`), the texture unit's scale and bias, before a glDrawPixels
  image: red scale 0.5, green bias 0.25, blue scale 2 and bias -0.5, alpha
  scale 0.75 sent as 0x0800 0x0000, 0x1000 0x0400, 0x2000 0xf800, 0x0c00
  0x0000 (3.12). The image then goes through the texture path (block 0x005
  0x2400). The V10 applies them (pixtest `draw/RGBA/UNSIGNED_BYTE/scale-bias`
  passes).
- **Texture generation in the precompiled unlit programs**: the program's
  list continues at constant index 3 with routine 0x06b for S and T from
  their planes (GL_OBJECT_LINEAR and GL_EYE_LINEAR alike) or 0x06c for S
  and T by GL_SPHERE_MAP, then 0x077, 0x49a, 0x203, 0x4c5 (glprim
  `--scene tex --texgen obj|eye|sphere`).
- **Separate specular**: block 0x005 is 0x00084410 for the lit, textured
  draws of `two-sided-lighting-separate-specular` (bit 19 set, bits 15:13
  = 2, `buzz/tokens.md`); the lit program is uploaded into the program
  window rather than resident.

## 13. The depth of a glDrawPixels image (traced, driver in IRIS; measured, V10)

A probe draws a 1 x 1 RGBA float image under `glOrtho(0, 64, 0, 64, 2, -2)`
at raster z 0, 0.5 and 1 with the default depth range, at z 0 and 1 under
`glDepthRange(0.25, 0.75)`, and at z 0.5 with depth testing off, under
GL_ALWAYS, reading the depth back after each.

| raster z | depth range | box operands 6 and 9 | V10 stored depth |
|---|---|---|---|
| 0 | 0, 1 | 4294951000 | 0.5000010 |
| 0.5 | 0, 1 | 5368688600 | 0.6249990 |
| 1 | 0, 1 | 6442426400 | 0.7499999 |
| 0 | 0.25, 0.75 | 4294951000 | 0.5000010 |
| 1 | 0.25, 0.75 | 5368688600 | 0.6249990 |
| 0.5, depth test off | 0, 1 | 0 | 1.0 (left alone) |

The box carries normalised-device z as 4294950912 x (1 + z); the board
applies the depth range (`opengl/opengl.md`, "The raster position and the
depth of a glDrawPixels image"). A rectangle drawn at z 0 reads back
0.5000010 too.

