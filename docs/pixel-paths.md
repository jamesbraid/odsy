# Pixel paths: read, write and copy headers

How the N32 libGLcore of IRIX 6.5.30 moves pixels between host memory and the board: the
32-byte DMA header it builds for `glReadPixels`, `glDrawPixels`, texture loads and
`glCopyPixels`, the tables behind each header field, where zoom and pixel transfer happen, and
where the raster distance comes from. Every address is in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`; the installed 6.5.30m copy has the
same code at the same addresses. Read with Ghidra (with `ghidra/scripts/IrixGp.java`, and the
switch tables of the four parameter routines forced from their `.rodata` words, because
`IrixJumpTables.java` does not follow their `la` table base) and against the committed assembly.

GL enum values are written in hex with their public names from the Khronos registry. "Pixel
class" is the value at drawable description +0x34 that `__glOdysseyImageDescribeWindow` derives
from the visual ([raster.md](raster.md#which-windows-carry-the-16-bit-word) has that table);
"storage code" and "layout code" are the description's +0x2c and +0x30.

Pixel classes, from that table and the read routine below: 2 L8, 5 L12, 6 LA8, 7 RGBA 4/4/4/4,
8 RGBA 5/5/5/1, 9 LA12, 10 RGBA8, 11 RGBA 10/10/10/2, 12 RGBA12, 16 CI8, 17 CI12. Classes 0, 1,
3, 4 and 13 are reached only by texture objects; 14 and 15 by nothing.

## The header

All three builders fill eight words; word 0 is lowest in memory.

| Word | Read (board to host) | Write (host to board) |
|---|---|---|
| 0 | bit 29 set and bits 28:0 = 0x10000019 for the bound read drawable, else the object's board address; bits 31:30 kept | the same with 0x10000010 for the bound draw drawable |
| 1 | x in bits 15:0, y in 31:16 (the smaller corner) | the same |
| 2 | description +0x1c in bits 11:0 (0x1000 sent as 1) | the same |
| 3 | width in bits 15:0, height in 31:16 | the same |
| 4 | bits 2:0 class, 7:3 code, 12 set, 15:13 the class field, 19:16 description +0x28, 23:20 and 27:24 the two field codes, 28 set for a drawable, 31 front | bits 2:0 and 7:3 zero, 12 set, 15:13 the write field, 19:16, 23:20, 27:24 and 31 as for a read |
| 5 | host row stride less the row bytes | the same |
| 6 | row bytes in bits 19:0 | the same |
| 7 | bits 18:16 the host bytes-per-pixel code, bit 30 when source and destination descriptions differ in word +4 | bits 4:0 format code, 8:5 type code, bit 9 expand, bit 10 unpack byte swap, 18:16 bytes-per-pixel code, bit 27 transfer path, bit 30 as for a read |

- **`__glOdysseyImageMovePixelsDMAtoHost`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0d9bb8a0, 1864 bytes), **established**, read in
  full. Builds the read header above and hands it to `__glOdysseyReadFromPMObj`; it refuses with
  `GL_INVALID_OPERATION` (0x501) unless `__glOdysseyImageCalcXferReadParams` reports an exact
  match for the destination image's format and type, so the bytes the board writes are always in
  the format and type that routine names. Word 4 bit 31 is clear for a read buffer of
  `GL_BACK` (0x405), `GL_BACK_LEFT` (0x402) or `GL_BACK_RIGHT` (0x403) and set for every other
  read buffer; for any source that is not the bound read drawable (description byte 9 clear,
  for example a texture object) it is forced to 1 whatever the read buffer. The left/right flag handed to
  `ImageCalcDmaFieldOffsets` is clear for `GL_RIGHT`, `GL_FRONT_RIGHT` and `GL_BACK_RIGHT`. The
  row stride is rounded up to the pack alignment (context +0x488) for client memory (image
  byte 0 clear).
- **`__glOdysseyImageMovePixelsDMAtoGfx`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0d9b9e20, 6772 bytes), **established** for the
  header (words 0 to 7) and the flag logic before it; **inferred** for the pixel-transfer
  branch, whose FIFO stores the decompiler folds, and for when that branch is taken (the
  decompiler's flow there overlaps instructions). Word 7 bit 10 is set when the context byte at
  +0x4a4 is set and the source is client memory; that the byte is the unpack swap-bytes mode is
  **inferred** from its place beside the unpack alignment at +0x4b4, which the routine uses to
  round the row stride. Bit 27 is set exactly when the caller's fourth argument is nonzero (the
  stores at 0x0d9ba264 to 0x0d9ba274); the same argument selects the transfer branch, and what
  each caller passes is unknown. When bit 12 of context +0xa6d8 is set, every x and y and the
  scissor words lose 0x2000 minus that word before masking to 12 bits; what the word holds is
  unknown. On that branch it saves the raster
  state, writes the pixel-mode fields with `__glOdysseyImageCalcPixelModeFields`, sends
  sequencer register 0x12f as 0x2900812f and fills the ten-word block at context +0x96c4 with
  the destination box. It
  never reads the pixel zoom (context +0x2e8, +0x2ec) into the header.
- **`ImageToDmaHostPixelSize`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0d9bf1e0, 24 bytes), **established**: a lookup of the host
  bytes per pixel in a word table; the result goes to word 7 bits 18:16 of both directions. The
  kernel's bytes-per-pixel table (2, 4, 8, 16, 12, 1, 6, 3 for codes 0 to 7, `docs/kernel.md`)
  is its exact inverse: the table at 0x0daec810, indexed by host bytes, gives 1→5, 2→0, 3→7,
  4→1, 6→6, 8→2, 12→4, 16→3 (**established**, dumped).

## Board-to-host table

- **`__glOdysseyImageCalcXferReadParams`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0d9bf200, 3324 bytes), **established**, read in
  full with its 18-entry table at 0x0dae92c4. For a requested (format, type) and the source's
  pixel class it returns the class (word 4 bits 2:0), the code (bits 7:3) and the (format,
  type) the board delivers. The read is direct only when the request equals that pair;
  otherwise the image chain reads that pair into a scratch image and converts on the host.
  The class field of word 4 bits 15:13 is 0 for classes 0 and 1, 1 for class 2 and 2 for
  classes 3 and 4. Image byte 0 (zero for `glReadPixels`) and a 4:2:2 flag (image +0x28 equal
  to 1, set by `__glOdyim_ReadPixels` when context +0x49c is 0x85a3) refine some rows. The rows
  by pixel class, first the pairs read as delivered, then the default:

  | Pixel class | Class | Pairs and codes |
  |---|---|---|
  | 0 (A8 texture) | 0 | ALPHA/UB code 1 (default) |
  | 1, 2 (L8) | 0 | LUMINANCE/UB code 1 for client memory, else RED/UB code 1 (default) |
  | 3 | 1 | ALPHA/US code 2 (default) |
  | 4, 5 (L12) | 1 | LUMINANCE/US code 2 for client memory, else RED/US code 2 (default) |
  | 6 (LA8) | 0 | LUMINANCE or RED /UB code 1 for client memory, ALPHA/UB code 0 |
  | 6 | 1 | LUMINANCE_ALPHA/UB code 0 for client memory, else the sample implementation's red-alpha format (value 1) /UB code 0 (default) |
  | 7 (4/4/4/4) | 1 | RGBA/US_4_4_4_4_REV and ABGR_EXT/US_4_4_4_4 code 6; BGRA/US_4_4_4_4 code 8; BGRA/US_4_4_4_4_REV code 7; RGBA/US_4_4_4_4 code 13 (default) |
  | 8 (5/5/5/1) | 1 | RGBA/UB, RGBA/UI_8_8_8_8 and ABGR_EXT/UI_8_8_8_8_REV code 1; BGRA/US_5_5_5_1 code 5; BGRA/US_1_5_5_5_REV code 3; RGBA/US_1_5_5_5_REV code 9; RGB/US_5_6_5 and BGR/US_5_6_5_REV code 10; BGR/US_5_6_5 and RGB/US_5_6_5_REV code 4; RGBA/US_5_5_5_1 code 12 (default) |
  | 9 (LA12) | 2 | LUMINANCE_ALPHA or red-alpha /UB code 6 for client memory; LUMINANCE_ALPHA/US code 5 for client memory, else red-alpha/US code 5 (default) |
  | 10 (RGBA8) | 2 | RGB/UB code 1; BGRA/UI_8_8_8_8_REV code 2; BGR/UB code 3; BGRA/UB code 4; RGB/US_5_6_5_REV and BGR/US_5_6_5 code 9; RGB/US_5_6_5 and BGR/US_5_6_5_REV code 10; RGBA/UI_8_8_8_8_REV, ABGR_EXT/UI_8_8_8_8 and ABGR_EXT/UB code 11; RGBA/UB code 8, or code 7 with the 4:2:2 flag (default) |
  | 11 (10/10/10/2) | 2 | RGBA/UI_2_10_10_10_REV code 12; RGBA/UI_10_10_10_2 code 0 (default) |
  | 12 (RGBA12) | 3 | RGBA/UB, RGBA/UI_8_8_8_8 and ABGR_EXT/UI_8_8_8_8_REV code 1; RGB/UB code 2; RGBA/UI_2_10_10_10_REV code 3; ABGR_EXT/US code 5; ABGR_EXT/UB, ABGR_EXT/UI_8_8_8_8 and RGBA/UI_8_8_8_8_REV code 6; BGR/UB code 7; RGB/US code 8; RGBA/US code 9, or code 10 with the 4:2:2 flag (default) |
  | 13 | 4 | RGBA/UB and RGBA/UI_8_8_8_8 code 2; RGBA/US code 0 (default) |
  | 14, 15 | none | refused |
  | 16 (CI8) | 0 | COLOR_INDEX/UB, code 0 when the storage code is 0, else code 1 |
  | 17 (CI12) | 1 | COLOR_INDEX/US code 14 |

  Depth and stencil do not use the pixel class but the storage and layout codes:
  `DEPTH_COMPONENT` is US (class 1, code 0) for (1, 2), (1, 3), (2, 0) and (3, 1), UI (class 2,
  code 2) for (2, 2), (2, 3), (2, 4), (3, 2) and (3, 4); `STENCIL_INDEX` is UB (class 0, code 0)
  for (2, 2), (2, 3), (2, 4), (3, 2) and (3, 4); any other pair is refused.
- **`ImageCalcDmaFieldOffsets`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0d9beb40, 604 bytes), **established**, read in full with its
  7-entry table at 0x0dae9260. From the storage code, the layout code, the left/right flag and a
  depth-or-stencil flag it gives the two field codes of word 4 (bits 23:20 first, 27:24 second),
  as (first, second): storage 0 with layout 0, 1, 3 or 4: (0, 0). Storage 1: layout 0 (1, 0),
  1 (0, 0), 2 and 3 (1, 1) for colour or (0, 0) for depth and stencil. Storage 2: layouts 0 and
  6 (0, 0), 1 (2, 0), 2 (2, 2) for colour, 3 and 4 (3, 2) for colour, 5 (3, 1) for the left
  buffer and (2, 0) for the right; depth and stencil (0, 0) at layouts 2 to 4. Storage 3:
  layout 1 (4, 0); 2 (6, 2) for colour; 4 (7, 3) left and (6, 2) right for colour; depth and
  stencil (4, 0) at layouts 2 and 4. Any other pair raises `GL_INVALID_ENUM` (0x502). That the
  codes place the colour, depth and stencil fields within the stored pixel is **inferred**; the
  board's meaning is unknown.
- **`__glOdysseyImageCalcFieldFormat`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0d9896a0, 100 bytes), **established**, read in full
  with its table at 0x0dae8f58: pixel classes 0 to 5 give 2, classes 6 and 9 give 3, 7, 10, 12
  and 13 give 5, 8 and 11 give 6, 16 and 17 give 0, 14, 15 and anything above 17 give -1. It
  feeds bits 6:4 of the pixel-mode word below. **inferred**: the value names the component
  layout (index, one channel, two channels, RGBA, RGBA with a short alpha).
- **`__glOdysseyImageCalcPixelModeFields`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0d9bf070, 356 bytes), **established**, read in
  full: fills the pixel-mode words at context +0x96a0 and +0x96a4 from a description: +0x96a0
  bits 11:0 the description's +0x1c; +0x96a4 bits 6:4 the field format above, 9:7 the layout
  code, 12:10 the storage code, 15:13 the description's +0x28, bit 19 for pixel classes 16 and
  17, bit 27 when description byte 0 or byte 10 is set.

## Telling a depth or stencil read from a colour read

Two class and code pairs in the board-to-host table are shared: class 0 code 0 (a stencil byte, and
colour index bytes on one kind of window) and class 2 code 2 (a 32-bit depth word and `BGRA`/
`UI_8_8_8_8_REV`). What separates them in the header the library sends is **established** by running
the shipped routines under `scripts/read_header_sweep.py` (the description routine, the read-parameter
routine and the field-offset routine, on a mode record filled for each window kind), and by reading
the read builder's call to the field-offset routine:

- **Word 4 bits 27:20, the two field codes, differ.** The read builder (0x0d9bb8a0) calls
  `ImageCalcDmaFieldOffsets` (0x0d9beb40; the listing labels the call with a wrong name, the target
  address is that routine's) with a fourth argument that is 1 exactly when the requested format is
  `GL_DEPTH_COMPONENT` (0x1902) or `GL_STENCIL_INDEX` (0x1901). The routine's table gives colour and
  depth-or-stencil different pairs at every storage and layout code where a window allows a depth or
  stencil read and a class 2 colour read: storage 2 layout 2 gives (2,2) for colour and (0,0) for depth
  or stencil; storage 3 layout 2 gives (6,2) and (4,0). Swept over every storage and layout code (left
  buffer, `scripts/read_header_sweep.py` run on the field routine): colour and depth-or-stencil differ
  at storage 1 layouts 2 and 3, storage 2 layouts 2, 3 and 4, and storage 3 layouts 2 and 4, which
  include every pair a window can have that allows a class 2 depth read or a stencil read. A `BGRA`
  read therefore never carries the depth read's field codes on the same window.
- **The code differs for colour index on a normal index window.** The read-parameter routine gives a
  colour index read class 0 code 1 when the description's storage code is non-zero and code 0 only
  when it is zero. The description routine gives an 8-bit index visual storage 2 layout 4, so code 1
  with fields (3,2), unless the mode record's word at +84 equals 1: then it gives storage 0 layout 1,
  code 0, fields (0,0). A stencil read on a storage-0 description is refused (the stencil branch
  accepts storage 2 and 3 only). So a stencil read and a colour index read never carry the same header
  on one window. What the word at +84 of the mode record is: **unknown** (the description routine
  compares it with 1; the context-bind routine tests it for greater than 0 and then stores a 2
  in the bind request).
- **No other word differs.** Word 0 (the sentinel), word 1 (box corner), word 2 (the window word the
  kernel returned at bind), word 3, the class field in bits 15:13 (1 for class 2, 0 for class 0),
  bit 12, bits 19:16, bit 28, bit 31, words 5 and 6 and word 7 come from the window, the box and the
  host bytes per pixel; none depends on colour against depth. Word 7 bits 18:16 are 1 for both
  4-byte reads and 5 for both 1-byte reads.
- **No command surrounds the read differently.** `__glOdyim_ReadPixels`, `ImageXfer`, the chain
  builder and the move routine store nothing to the command window (`scripts/fifo_words.py`: 0 window
  stores in each range) and the raster-state save and load routines store only to the context. The one
  request goes through `ReadFromPMObj` to the kernel's transfer ioctl, whose flag word does not depend
  on the format, and the kernel copies header word 4 into each entry unchanged (`kernel.md`, the
  entries section). No plane-select or buffer-select register is written for a depth or stencil read
  that is not written for a colour read.

Word 4 with bits 31, 28 and 19:16 removed (they come from the window and the read buffer), by window
and read; each row is printed by the sweep script:

| Window (class, storage, layout) | Read | Class, code | Fields | Word 4 less 31, 28, 19:16 |
|---|---|---|---|---|
| RGBA8, double-buffered with depth (10, 3, 2) | depth `UI` | 2, 2 | (4,0) | 0x00403012 |
| the same | stencil `UB` | 0, 0 | (4,0) | 0x00401000 |
| the same | `BGRA`/`UI_8_8_8_8_REV` | 2, 2 | (6,2) | 0x02603012 |
| RGBA8, single-buffered (10, 2, 2) | depth `UI` | 2, 2 | (0,0) | 0x00003012 |
| the same | stencil `UB` | 0, 0 | (0,0) | 0x00001000 |
| the same | `BGRA`/`UI_8_8_8_8_REV` | 2, 2 | (2,2) | 0x02203012 |
| RGBA8, double-buffered, no depth (10, 2, 1) | depth, stencil | refused | | |
| the same | `BGRA`/`UI_8_8_8_8_REV` | 2, 2 | (2,0) | 0x00203012 |
| index 8, normal (16, 2, 4) | stencil `UB` | 0, 0 | (0,0) | 0x00001000 |
| the same | colour index `UB` | 0, 1 | (3,2) | 0x02301008 |
| index 8, word at +84 equal to 1 (16, 0, 1) | colour index `UB` | 0, 0 | (0,0) | 0x00001000 |
| the same | stencil, depth | refused | | |
| index 12 (17, 2, 3) | colour index `US` | 1, 14 | (3,2) | 0x02301071 |

Two windows can send the same word, for example 0x00001000 for a stencil read on a normal index window
and for a colour index read on the +84 window; word 2 differs between windows. The `RGBA`/`UB` read on
RGBA8 is class 2 code 8 and shares nothing. A single-buffered RGBA8 window allows a depth read whatever
its depth flag (the description routine ignores the mode record's depth byte there). The sweep covers
window reads only: a texture object's description is built elsewhere and was not swept. What the
board does with the field codes is still unknown. **Inferred:** the board takes the two codes as the
offsets of the colour fields or of the depth and stencil fields within the stored pixel, so a depth
word and a colour word with the same class and code come from different parts of it.

## Host-to-board table

- **`__glOdysseyImageCalcXferWriteParams`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0d9bd800, 4924 bytes), **established**, read in
  full. From the source (format, type) and the destination pixel class it gives the format code
  (word 7 bits 4:0), the type code (bits 8:5), the expand flag (bit 9), the write field (word 4
  bits 15:13) and the pixel class of the source as the board holds it.
  - Format codes: `STENCIL_INDEX` and `DEPTH_COMPONENT` 0; `COLOR_INDEX` 1; `LUMINANCE` 2;
    `ALPHA` 2 into destination class 0 or 3, else 7; `INTENSITY` (0x8049) 3; `RED` 4;
    `GREEN` 5; `BLUE` 6; `LUMINANCE_ALPHA` 8; `RGB` 9, or 0xd with US_5_6_5_REV or
    UB_2_3_3_REV; `RGBA` 0xb, or 0xc with US_4_4_4_4_REV, US_1_5_5_5_REV, UI_8_8_8_8_REV or
    UI_2_10_10_10_REV, or 0xa (0xe when context +0x4cc is 0x842f) when context +0x4c8 is 0x85a3;
    `ABGR_EXT` 0xc, or 0xb with US_4_4_4_4_REV or UI_8_8_8_8_REV; `BGR` 0xd, or 9 with
    US_5_6_5_REV; `BGRA` 0x11, or 0x10 with the four REV types.
  - Type codes: byte types (BYTE, UB) and the 8-bit-per-component packed types (UI_8_8_8_8 and
    its REV) 2, or 0xb into destination class 12; short types 3; int types 4; UB_3_3_2 and
    UB_2_3_3_REV 5; US_4_4_4_4 and REV 6; US_5_5_5_1 and REV 7; UI_10_10_10_2 and REV 8;
    US_5_6_5 and REV 0xa, or 0xc into destination class 10. Depth and stencil sources accept
    only INT and UI (type code 4; the image chain converts everything else first). `ALPHA` into
    classes 0 and 3 and `COLOR_INDEX` take byte, short and int types only.
  - Expand flag: set for `LUMINANCE`, `LUMINANCE_ALPHA` and `INTENSITY` into destination classes
    7, 8, 10, 11, 12 and 13.
  - Write field: the read size field of the pixel class the routine gives the source on the
    board (after expansion to the destination layout), not of the source size: 0 for classes 1
    to 8, 16 and 17 (and stencil), 1 for classes 9 to 11 and depth, 2 for class 12. So
    LUMINANCE/UB into class 10 gives 1, US_4_4_4_4 into class 10 gives 0, RGBA/US gives 2, and
    LUMINANCE_ALPHA/UB into colour index gives 0. **established** as the routine's output for
    every format, type and destination; that it names the expanded pixel size is **inferred**.
  - Signed types (BYTE, SHORT, INT) are accepted for a direct transfer only when bit 7 of context
    +0x7b70 is set; otherwise the chain converts them on the host
    (`__glOdysseyImageChainAddOpAcceptSignedDataFromHost`).
  - So the word 7 low bytes seen in traces decode as format
    plus type: 0x41 index bytes, 0x42 luminance bytes, 0x48 luminance-alpha bytes, 0x49 RGB
    bytes, 0x4b RGBA bytes, 0x4c ABGR bytes, 0x61 16-bit index, 0x6b RGBA shorts, 0x6c ABGR
    shorts and 0x16c ABGR bytes into a 12-bit drawable.

## Zoom and pixel transfer

- **`ImageChainAddOpColorZoom`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0d9a5ea0, 132 bytes) and **`ImageChainAddOpIndexZoom`**
  (0x0d9a5f80, 132 bytes), **established**: add chain steps 0xc and 0xd whose render routines
  are **`RenderFunc_ColorZoom`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0d9a5f30, 72 bytes) and **`RenderFunc_IndexZoom`**
  (0x0d9a6010, 72 bytes), each one call of `__glOdysseyImageMovePixelsTexture` with its last
  argument 1. **established** from `ImageChainBuildColorChain` (0x0d98f9b0): the step is added
  for a drawable destination when context +0x704 bit 5 is clear and the zoom is not
  (1, 1) or (1, -1). **inferred** (the texture routine's FIFO stores are folded by the
  decompiler): a zoomed colour draw reaches the board as a textured rectangle drawn from a
  scratch texture, stepping by the absolute y zoom.
- **`ImageChainBuildDepthChain`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0d990a30, 180 bytes) and **`ImageChainBuildStencilChain`**
  (0x0d990af0, 184 bytes), **established**: a host source adds the download step (depth with the
  depth scale and bias, stencil with the index shift, offset and map flag), a board-to-board
  operation adds the copy step, a host destination the readback step. **established** from the
  render routines' call lists (0x0d9a1530, 0x0d9a1c60, 0x0d9a23a0, 0x0d9a2b40, 0x0d9a3400):
  depth and stencil draws convert the image to `DEPTH_COMPONENT`/UI or `STENCIL_INDEX`/UI and
  zoom it on the host (`__glOdysseyImageZoomHostImage`) before the DMA write; depth and stencil
  copies read to a host scratch image by DMA (depth as UI, stencil as UB) and write it back.
- **`ImageChainDetermineChainType`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0d98f690, 384 bytes), **established**: chain type 5 for
  depth, 4 for stencil, 3 for an index source into an index destination, 2 for index into
  colour, 1 for colour; a board-to-board copy takes 5 or 4 from the copy type (0x1801 depth,
  0x1802 stencil).
- **`__glOdyim_PixelZoom`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0d98abe0, 112 bytes), **established**: stores the x and y zoom at
  context +0x2e8 and +0x2ec and sets dirty bit 4 at +0x2e24; no FIFO word.

## Copies

- **`OdysseyImageCalcXferCopyParams`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0d9bd0b0, 1872 bytes), **established**, read in full
  with its table at 0x0dae9218. Pairs a read (class, code) with a write (format, type) per source
  pixel class: 10 reads class 2 code 8 and writes RGBA/UB; 12 reads class 3 code 1 and writes
  RGBA/UB into class 10, else code 9 and RGBA/US; 13 class 4 code 2 or 0 likewise; 11 class 2
  code 0, RGBA type 8; 8 class 1 code 12, RGBA type 7; 7 class 1 code 13, RGBA type 6; 9 class 2
  code 6 with LUMINANCE_ALPHA bytes into classes 6 and 10, else code 5 with shorts; 6 class 1 code
  1 into class 2, else code 0; 2 and 1 class 0 code 1 with format codes 2 and 3, 0 likewise
  with format 7 into class 10, else 2; 5, 4 and 3 class 1 code 2 with shorts and format codes 2,
  3 and 7 (2 unless into class 12), expanded into class 12; 16 class 0 code 0 or 1
  by the source storage code, index bytes; 17 class 1 code 14, index shorts. 14 and 15 refused.
- **`__glOdysseyImageMovePixelsCopy`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0d9b7820, 7764 bytes), **established** for the header
  words (the stores around 0x0d9b7c00), **inferred** for the overlap splitting. The eight words
  are a read header's words 0, 1, 3 and 4 and a write header's words 0, 1 and 7 interleaved:
  word 0 the source base (0x30000019 for the read drawable), word 1 source x and y, word 2 the
  destination description +0x1c in bits 27:16, the destination's second field code in bits 15:12
  and the source +0x1c in bits 11:0, with destination front in bit 31; word 3 width and height;
  word 4 the read header's word 4; word 5 the destination base (0x30000010 for the draw
  drawable); word 6 destination x and y; word 7 the write header's word 7 with bits 29:28 set
  when context +0x16a68 is zero, bit 27 exactly when the caller's fourth argument is nonzero (0x0d9b7aa8 to 0x0d9b7ab4), bit 30 when the destination y lies
  in the source's y range and bit 31 when the destination x lies in the source's x range.
- **`ImageCopyPixelBody`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0d9b73c0, 1120 bytes), **established**, read in full in the
  assembly: fills the per-piece corners and sends 0x2031 and the eight words to the FIFO; with
  the transfer path it first writes the box floats, and after the words sends 0x14001 and, when
  asked, the flush sequence followed by 0x10658 and 0x120000.

## Pixel-buffer swap state, depth and stencil by burst, and the zoom rectangle

Release IRIX 6.5.30m, IP30. Kernel members of `odyssey.a` (`rrm.o`, `odsy_drawable.o`), N32
`libGL.so` and N32 `libGLcore.so` (`root/usr/gfx/arch/IP30ODSY32/`). The FIFO word lists come
from `scripts/fifo_words.py` run on the routines named; callees were taken from the target
address, not the listing's label. No vendor source was read for these three items.

### Front and back of a pixel buffer: what writes 0x609 bit 31

- **established.** Nothing in libGLcore (the N32 listings and a constant search for 0x609, 1545 and
  the wide-form id) writes registers 0x608 or 0x609. The kernel writes them in exactly two places:
  `odsyPushBufferSelect` (`odsy_drawable.o` 0x744) and `odsyClipPush` (`odsy_clip.o` 0x728). The clip push only
  resends the context words at +140 and +144 as they stand. `odsyBindDrawable` (`odsy_drawable.o` 0x138)
  replaces the low 31 bits of those words with the drawable's first buffer and keeps their old
  bit 31. So bit 31 of 0x609 is whatever the last buffer-select push left in context +144.
- **established.** The push computes bit 31 of 0x609 from the read drawable's pane: set when the
  client has no read drawable or the pane's halfword +18 is zero, clear when it is nonzero (the
  `lh 18` of the pointer at +128 of the client record, `odsy_drawable.o` 0x744 to 0xa2b). Bit 31
  of 0x608 follows the draw pane the same way. The draw buffer mask sent in block 0x024 has its
  front and back pairs exchanged when the draw pane's halfword is nonzero. The mask bits are
  front-left, front-right, back-left, back-right in that order (**established** from
  `__glOdyim_DrawBuffer` 0x0d95bad0: `GL_FRONT_LEFT` sets the first argument of the draw-buffer
  routine, `GL_BACK_LEFT` the third, `GL_FRONT_AND_BACK` all four on a double-buffered visual), so
  the exchange `(1,2) <-> (4,8)` swaps front and back, not left and right.
- **established.** A pixel buffer's pane is an ordinary pane. `bind_pane` (`rrm.o` 0x178) finds or creates a pane for any
  drawable id (the pixel buffer's id too, through `RRM_BindRNToReadAndClip`, `rrm.o` 0x1554) and
  zeroes its halfwords +18 and +12 on creation. Nothing in the pane code, the buffer-select push or the bind looks at
  whether the id is a window or a pixel buffer (`gfP_OdsyPbufAssoc`, `odsy_drawable.o` 0xd20, only adds the
  drawable-hash entry with the buffer set and does not touch a pane).
- **established.** The writers of pane halfword +18, all in `rrm.o`: `bind_pane` (zero), `validate_pane_clip`
  (0x614; a pane whose flag +12 bit 3 is clear takes +18 = bit 2 of the clip request's word 56, a pane
  with the bit set keeps +18 and has bit 2 of word 56 rewritten from it), `RRM_LoadDisplayMode` (0x2c2c; refuses a pane with
  flag bit 3, else +18 = bit 2 of request word 16), `RRM_MGR_SwapBuf` (0x3f80, +18 = bit 2 of
  request word 16) and `RRM_SwapBuf` (0x3828, ioctl 1005). `validate_pane_swapbuf` (0x7d8) sets the flag bit 3 on a pane
  and is reached only from the X server's swap-id validation (ioctl 1012).
- **established.** `RRM_SwapBuf` toggles +18 (`xori 1`) when bit 3 of the word at +4 of its first argument is set,
  and then lets `gf_OdsySchedSwapBuf` (`odsy_retrace.o` 0x380) call `odsyPushBufferSelect` ahead of the swap, so a swap
  re-pushes 0x608/0x609 with the new bit 31. Bit 3 of that word is set by `gfxopen` (`gfx.o`) on the per-open record
  under a condition not traced (**unknown**; **inferred** to mark a process whose swaps the kernel keeps
  state for).
- **established.** `glXSwapBuffers` in N32 `libGL.so` (0x0d833d30) calls the current context's swap slot directly when
  the drawable equals the current draw drawable, whatever kind of drawable it is (the compare at 0xd833d68 and the
  call at 0xd833e7c to 0xd833e88). That slot is **inferred** to be `__glOdysseySwapBuffers`
  (0x0d9d9450), which returns without action unless the visual is double-buffered (byte +0xc96) and otherwise
  sends ioctl 1005. So a single-buffered pixel buffer never swaps, and a double-buffered one can: its +18 toggles on
  each swap and 0x609 bit 31 follows at the next buffer-select push. Nothing in the kernel or the libraries marks a pixel buffer as
  never swapping; its allocation only leaves the swap state at zero.
- **inferred.** The read path resolves front like the draw path: logical front (header word 4 bit 31 set) is the buffer
  a front draw mask writes. The kernel makes the draw select absolute (exchanged when +18 is nonzero) and the read
  register's bit 31 logical (set when +18 is zero), and uses the same pane state for both. What the board does with 0x609 bit 31
  itself is in no software: **unknown**.

### Depth and stencil by pixel burst: how the plane is chosen

- **established.** The burst's leading operand (block 0x170, word `0x4570`, then the bare word 0x71) is built in
  `SendPixelsAsUserPIO` (0x0d9b9680) from the write header's word 7: bits 4:0 and 8:5 (format and type), 9, 10 and 11
  copied and bit 12 set; the remaining bits are the pixel count of the group (bits 27:24 in the first operand, bits 23:20 and
  bit 16 in the per-row operands, stores at 0xd9b9864 to 0xd9b9a34 and 0xd9b9900 to 0xd9b9a1c). It has no size field (word 7's
  bits 15:13 are not copied) and no field codes. A depth write and a stencil write both
  carry format 0, type 4 (word 7 low bits 0x080), so their burst operands differ only in the pixel counts.
- **established.** The plane is selected by write-enable state sent before the burst, not by the burst. The depth download
  step (`RenderFunc_DownloadDepth` 0x0d9a1530) and the stencil download step (`RenderFunc_DownloadStencil` 0x0d9a1c60) change the shadow words, raise
  dirty bits and call `__glOdysseyImageMovePixelsDMAtoGfx` (0x0d9b9e20) with its fourth argument 1, the transfer-path flag; the
  transfer branch of that routine runs `__glOdysseyValidateHardware`, sends `0x00014400` and calls the burst sender before the
  primitive end. After the call both restore the words.
  In block terms (`docs/tokens.md`):
  - Depth (stores at 0xd9a19a8 to 0xd9a19dc, the unzoomed branch at 0xd9a1b24 to 0xd9a1b58; dirty bits 0x84): block 0x052's
    stencil write mask, bits 19:12, is cleared; block 0x005 bits 11:10 are cleared. Colour, index and depth
    write enables (0x052 bits 11:0, 23:20, 24) are left as the application set them.
  - Stencil (stores at 0xd9a20bc to 0xd9a212c; dirty bits 0x86): block 0x052 bits 11:0 (index mask), 20 to 23 (colour
    enables) and 24 (depth write) are cleared and the stencil write mask 19:12 is left as the application set it;
    block 0x005 bits 11:10 are cleared; block 0x004 bit 15 (stencil test) is set when the visual has stencil planes (byte
    +0xc9a) and cleared otherwise. Stencil function and operation blocks are not touched.
  - The depth and stencil copy steps (0x0d9a2b40 and 0x0d9a3400) change the same words the same way around their write-back call.
- **inferred.** A format-0 write targets the combined depth and stencil word, and the 0x052 enables decide which part
  lands: a depth download zeroes the stencil mask so only depth bits change; a stencil download switches off colour, index and depth
  so only the stencil byte can change. The board's use of the words is not in the software: **unknown**.
- **established.** The fifth argument of the move differs (1 for depth, 0 for stencil). What the move does with it was not traced:
  **unknown**.

### Pixel zoom: the texture move and the textured rectangle

- **established.** The zoom steps are `RenderFunc_ColorZoom` (0x0d9a5f30) and `RenderFunc_IndexZoom` (0x0d9a6010),
  chain ops 12 and 13 added by `ImageChainAddOpColorZoom` (0x0d9a5ea0) and `ImageChainAddOpIndexZoom` (0x0d9a5f80). Each is one
  call of `__glOdysseyImageMovePixelsTexture` (0x0d9bbff0, 4284 bytes) with arguments (destination at +72 of the chain record,
  source object at +68, the box floats, 1). The same routine is the draw step for interlace, LUT, convolution and colour
  matrix steps.
- **established** (`fifo_words.py` on 0x0d9bbff0 to 0x0d9bd0ac, one pass, no loop count): the sequence the move sends, in order:
  1. settle `0x10443` 250, `0x10046` x2; level descriptor 60: `0x00010ebc` and the three words at context +32688, +32692, +32696; the settle sequence again.
     **inferred**: the first descriptor word is the object's word at +31940 with bits 14:10 replaced by log2 of the object's
     width (`__glOdysseyImageLogBase2` of object +0x20); the other two words carry further log2 fields from +0x20 and +0x24 (the walk shows
     only the folded expression).
  2. `__glOdysseyImageCalcPixelModeFields` into context +0x969c; settle; block 0x01d `0x0001081d` with the scissor words +0x7c20 and +0x7c24.
  3. A state-loader (0x0d9bff00, 452 bytes) rewrites block 0x004's word (+0x7bfc, from +0x11c34 with bit 11 cleared when enable bit 6 is set), the three
     block 0x021 words (+0x7c34 to +0x7c3c, from +0x11c3c to +0x11c44) and the descriptor word at +0x96a4 from the snapshot words at context
     +0x11c28 to +0x11cc0, so the rectangle draws with a stored snapshot of raster state, not the application's. Dirty bits 0x200083 (blocks 0x021, 0x004, 0x052 and the descriptor block 0x017) are raised and
     `__glOdysseyValidateHardware` sends the changed blocks. Block 0x006's low six bits are 60 (level 60). If the depth test is on (block 0x004 bit 16) the routine
     calls `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` (0x0d9c21b0) for z; otherwise z is 0.0.
  4. `0x00014400` with operand 7 (primitive begin, type 7).
  5. Per rectangle: `0x8f80b968` (count field 14) and fourteen floats: 0.0, 0.0, 0.0, 1.0, x0, ya, z, x1, yb, z, s0, t0, s1, t1.
     x0 and x1 are the box's words +0x10 and +0x18 (destination x range), ya and yb the destination rows (yb = ya + step), z as above,
     s0 and s1 the box's source x range (words +0 and +8) over the object width rounded to a power of two, t0 and t1 the source
     y range over the height rounded up the same way, advanced by one source row per rectangle.
  6. `0x00014001` (primitive end), the settle sequence, then the saved shadow words of blocks 0x004, 0x021 and 0x052 are restored (dirty bits 0x83, or 0x80 on the early exit).
- **established.** Rectangles per call: one per source row, step +1 or -1 by the order of the destination y words (box +0x14 and +0x1c). With the destination's
  byte +8 set and the fourth argument 1, the loop reads |zoom y| (context +0x2ec) and accumulates it per source row
  (`add.s f14,f14,f16` at 0xd9bce28), emitting one unit-height rectangle for each whole destination row the sum passes, none when it does not
  advance; with x zoom the destination width is the box's, so x zoom is the ratio of the destination and source x ranges. With the destination's byte 12 set (copied from
  context +0x704 bit 5 by the callers) rows are taken two at a time with doubled steps. The first four zeros-and-one words and the repeated z are
  **unknown** in meaning; **inferred** to be a constant colour (0, 0, 0, 1) and the two corners' depth.
- **unknown.** Which texture filter the sampler uses for the magnification: the move sends no filter word of its own.

## Raster distance

- **`__glOdysseyDoGet`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0d986380, 2164 bytes), **established** for enums 0xb04 to 0xb09:
  `GL_CURRENT_RASTER_COLOR`, `INDEX` and `TEXTURE_COORDS` first call
  `__glOdysseyUpdateRasterPos` when the pending flag at context +0xa73c is set; the raster
  position, its valid flag and `GL_CURRENT_RASTER_DISTANCE` (0xb09) go straight to the generic
  get with no board query.
- **`__glOdysseyUpdateRasterPos`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0d986d00, 204 bytes), **established**: one kind-3 query
  through `__glOdyGetFromHardware`, then decodes the colour record (+60 in RGBA mode, +40 in index
  mode) into context +0x180 and the texture record (+80) into +0x120.
- The generic get (`__glDoGet`, 0x0da42f70) answers 0xb09 with the float at context +0x158.
  **`__glValidateVertex3`** in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (0x0dae120c, 452 bytes), **established**: with need bit 0x10 it
  writes the model-view product of the object position (vertex +0x10) to vertex +0x60; for the
  raster vertex at context +0xf0 that is +0x150, so +0x158 is the eye-space z, unnegated.
  `__glOdysseyRasterPosGeneral` (0x0d9ca3b0) asks for bit 0x10 (needs | 0x1d) unless it takes
  its identity fast path. So the distance is the eye z, negative in front of the eye, computed
  on the host; the sample implementation returns the same field.

## Related kernel and X module facts used above

- **established**, `odyssey.so` 0x15c6be8 in `odsyInitDefaultHW..N`: the X module sends block
  0x052 once, at screen start-up, with operand 0x01ffffff (every write enable, alpha included);
  no other X module routine stores the word 0x10452.
- **established**, `__glOdysseyCreateContext` (0x0d96c610) at 0x0d96f4f8: both integer viewport
  adjusts (context +0xe4c, +0xe50) are 6144, so the library's window coordinates are GL window
  coordinates plus 6144, with no window origin in them; the kernel's clip push sends the draw
  drawable's screen origin in block 0x041 ([opengl.md](opengl.md#the-clip-push-odsyclippush)).
