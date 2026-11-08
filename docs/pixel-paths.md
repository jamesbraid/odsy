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
3, 4 and 13 are reached only by texture objects; 14 and 15 only as the destination class of an upload to an ICC texture (index 48 and 49), where the transfer sends plain components (see [texture-formats.md](texture-formats.md), "How an ICC level's texels are packed").

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
  stencil (4, 0) at layouts 2 and 4. Any other pair raises `GL_INVALID_OPERATION` (0x502). That the
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
    **established** (disassembly, N32 IP30 build; the IP35 build has the same bytes for both routines): bit 7 is set by
    `GetBoardInfo` (0xd965310, stores at 0xd9653dc and 0xd9653f8) exactly when the board kind at context +0x16a70 is
    nonzero. That word is the word at byte offset 80 of the 588-byte ioctl 0x66 reply (`__glOdysseyGetBoardInfoRaw` copies the reply
    to context +0x16a20), the kernel's variant flag (record +280): 0 for BUZZ revision nibbles 1 to 3, 1 for 9 to 15. So
    variant A boards (gfxinfo prints "A.1") leave it clear and the library converts on the host, and variant B boards
    ("B.1", "B.2") set it. No `GL_ODY_*` variable touches bit 7. Test sites: `RenderFunc_DownloadColor` 0xd9a3e74
    (clear bit plus a signed source clears the direct-transfer flag), `ImageChainCreate` 0xd98ee0c, the colour-chain
    builder 0xd990988 and `ImageChainAddOpScaleBias` 0xd996774, which with the bit set and a signed source installs
    `RenderFunc_ScaleBiasForSignedTypes` (0xd998010) in place of `RenderFunc_ScaleBias` (0xd9967e0) and sets a flag byte
    at op +0x3c (cleared for destination formats 0x1906, 0x1908, 0x190a and 0x8000). **unknown**: what the board does
    with a raw signed component. The type code in word 7 is shared with the unsigned type, and no routine read here
    **established** (disassembly of `RenderFunc_DownloadColor` 0xd9a3db0, `ImageChainAddOpScaleBias` 0xd996640,
    `RenderFunc_ScaleBiasForSignedTypes` 0xd998010, `SetupScaleBiasForTexFilter` 0xd99ca10, `__glOdysseyImageMovePixelsDMAtoGfx`
    0xd9b9e20, and a run of `__glOdysseyImageCalcXferWriteParams` 0xd9bd800 under the emulator over 14 formats, 18
    destination classes and the six component types, bit 7 set and clear): the parameter routine reads bit 7 itself.
    With it set, a signed type gets the same record as the unsigned type of that width (word 7 type code 2, 3 or 4,
    the same format code and fields) except byte 0 (accepted) and byte 4 (signed flag, 1). Signed `COLOR_INDEX` and
    `BGRA` bytes are refused (host conversion). The DMA writer never loads byte 4. The download step reads it only
    to leave the direct path when the context hint word at +0x784 is 0x1102 (+0x788 at 0x1102 does that for every
    type). **Sign reaches the board as a second pass.** The chain builder (0xd9907c0-0xd9909b0) appends
    `ImageChainAddOpScaleBias` with the pixel-transfer scale (context +0x280 to +0x28c) and bias (+0x294 to +0x2a0),
    the bias multiplied by 0.5 (.lit8 0xdaf4d88) when bit 19 of +0x7b70 is clear (kinds 0 and 1). For a signed source
    that op's render routine is `RenderFunc_ScaleBiasForSignedTypes`, which (1) applies the application's scale and
    bias, split into several passes when a scale lane exceeds the limit float at context +0x11e20 (each pass clamps
    every lane's scale to the limit and divides the remainder by pow(limit, k); read, **inferred** as to intent), and
    (2) at every exit (0xd998a64-0xd998adc) runs a final copy with scale 2.0 (.lit4 0xdaf4b40) and bias 1/4096
    (.lit4 0xdaf4b38) in all four lanes, which `SetupScaleBiasForTexFilter` writes as `trunc(x * 4096.0) & 0xffff`
    (4096.0 at .lit4 0xdaf4b18) into the eight words at context +0x8cec, order scale R, bias R, scale G, bias G, scale B,
    bias B, scale A, bias A, upper halves kept, mode word +0x8ce8 = 2: the words are 0x2000 and 0x0001, that is `2c + 1`
    in signed 3.12, GL's signed-to-normalised rule. When the op flag byte at +0x3c is set (source formats other than
    0x1906, 0x1908, 0x190a, 0x8000) the low half of the alpha bias word is then overwritten with 0x1000 (opaque).
    The plain `RenderFunc_ScaleBias` (0xd9967e0) never loads 2.0 or 1/4096. The unsigned download path loads identity.
    **inferred**: the combined result is `2(s*x + b/2) + 1/4096` with the application's s and b. A pass of `2x + 1/4096`
    on a raw byte read as unsigned gives GL's value for non-negative components but saturates every negative one, so
    the board has to read the raw signed bits as signed; how it does, and the 8- to 12-bit widening, is **unknown**.
    `0x042` is also written by `RenderFunc_Lut` (0xd991404) and `RenderFunc_ColorMatrix` (0xd99bb68); the
    scale-and-bias-shaped chain op `ImageChainAddOpAcceptSignedDataFromHost` (0xd99a950, render routine 0xd99aaa0)
    has no static caller found by page-relative or table search.
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

### A screen-to-screen copy inside an index window (block 0x2031)

The X server's window moves and tile doublings on an 8-bit colour-index window send the
eight-word copy block with one fixed set of format words: word 2 `0x80503050`, word 4
`0x83331008`, word 7 `0x32330041`, bracketed by block 0x017 whose third operand is
`0x20086a00`. The words below are decoded against the library's header tables above. The
question they answer is whether the board converts the pixel on the way (source field format,
then destination field format) or moves the field unchanged.

- **established** (a recorded IRIX 6.5.30 boot of a Fuel guest: 40 copy blocks, every one with
  word 4 `0x83331008`, word 7 low bits `0x0041` and destination mode `0x20086a00`; none preceded
  by block 0x203b, whose first appearance is later in the boot and carries the identity scale
  `0x1000` and bias 0): the copy source is a 16-byte pixel's field 3 (bytes 6 and 7), the
  destination the same field, and word 4 bits 19:16 and 15:13 give a 2-byte field in a 16-byte
  pixel on both sides. Word 4 bits 7:0 are `0x08`: class (bits 2:0) 0, code (bits 7:3) 1.
- **established** (`__glOdysseyImageCalcXferReadParams` and the description routine, table rows
  above): class 0 code 1 is the read pair the library sends for `COLOR_INDEX`/`UNSIGNED_BYTE`
  from a window whose storage code is non-zero. The 8-bit index window the description routine
  builds is storage 2 layout 4, fields (3, 2), and the library's own read header for it is
  `0x02301008` before the drawable and front bits. The copy's `0x83331008` agrees on the class,
  the code, bit 12 and field offset 3 for the colour field; it differs where the copy names its
  own geometry (bit 31 front, field offsets 3 and 3, pixel-size code 3 for a 16-byte pixel). The
  same pair is the one `OdysseyImageCalcXferCopyParams` returns for pixel class 16.
- **established** (`__glOdysseyImageCalcXferWriteParams`, last bullet of the format and type
  table above): word 7 low byte `0x41` is format code 1 (`COLOR_INDEX`), type code 2 (bytes).
  The destination mode word `0x20086a00` is the second operand word the library fills in
  `__glOdysseyImageCalcPixelModeFields`: bits 6:4 are 0 (the field format
  `__glOdysseyImageCalcFieldFormat` gives pixel classes 16 and 17, "index"), bits 9:7 are 4
  (layout), bits 12:10 are 2 (storage) and bit 19 is set (classes 16 and 17). So the
  destination mode independently names the same storage 2 layout 4 index window the source
  pair names.
- **Bit split of the write word's low byte** (word 7): format code in bits 4:0, type code in
  bits 8:5, so `0x41` is format 1 (bits 4:0 = 00001) and type 2 (bits 8:5 = 010). This is not
  the read byte's split (class in bits 2:0, code in bits 7:3): the write byte's type field
  starts at bit 5 and runs past the byte into bit 8, and bit 9 is the expand flag. The split
  is **established** from the header table above and the write-parameter routine's outputs
  (`0x42` luminance bytes = format 2 type 2, `0x4b` RGBA bytes = format 0xb type 2, `0x61`
  16-bit index = format 1 type 3, `0x6b` = format 0xb type 3), all consistent with it. In the
  copy block it is the same field, taken from the destination's write header.
- **established** (same recorded boot, DMA upload descriptor ahead of the first 256 x 256
  tile): the X server uploads the tile into this window with header word 4 `0x83331008` and
  write word 7 `0x32050041`, so the word 4 the later copies use as their source description is
  the one the host write used for the destination.
- **So the meaning of `0x08`** (answer to the source-format question): **established** as the
  library's class 0 code 1 pair, which is its index-byte read of a storage-2 index window;
  **inferred** that the pair means "one component held in the first byte of a 2-byte field"
  rather than "index" as such, because the same pair is also what the library sends for
  `ALPHA`/`UNSIGNED_BYTE` from an A8 texture (pixel class 0 above) and for the luminance
  classes 1 and 2 in `OdysseyImageCalcXferCopyParams`. What turns the component into an index, a luminance or an alpha is
  then the other half of the pair: the write header's format code in word 7 and the
  destination mode's field format in bits 6:4. For `0x08` with write format `COLOR_INDEX`
  (`0x41`) into field format 0, both halves say index, which is the pairing the library builds
  for an index-to-index `glCopyPixels` (chain type 3 in `ImageChainDetermineChainType`).
- **Convert or raw is not a decision any software or microcode exposes**: **unknown**. The
  short path (word 7 bit 27 clear) writes only block 0x2031 and no sequencer register, so it
  selects no microcode routine (`ucode/buzz_routines.md`, "How a command word reaches a
  routine"); the copy is executed by the board itself. No routine or address holds a
  format-compare for it, and the question stays under "What the board does with the read and
  write header fields" in [open-questions.md](open-questions.md). Why the earlier passes did
  not cover it: they read how the library and X module build the words (this file's header and
  copy sections, `odsyCopyRectBody` in [opengl.md](opengl.md)), and the board-side meaning of
  word 4's codes was listed as open without a case that discriminated raw from converted
  movement. This section adds the first such case, from the recorded boot.
- **inferred** (the identity rule): a copy whose source pair is class 0 code 1, whose write
  format is `COLOR_INDEX` bytes and whose destination mode names a 2-byte index field leaves
  the index value unchanged. Evidence: (1) the library builds exactly this pair for an
  index-to-index `glCopyPixels`, so the board must round-trip an index through it or index
  copies would corrupt; (2) the X server relies on it for every scroll and tile doubling, and
  uses the same word 4 for the upload that produced the data. Nothing board-visible shows how the board does it, so a model may
  implement it as a field copy or as a read-then-write of the index so long as the value that
  results is the same.
- **Where the rule stops** (what makes a copy convert): in the command words the board is
  given, three things select a different treatment, each **established** as a library
  behaviour and each **unknown** as to the board's arithmetic:
  1. A source pair and write pair that are not the same component class: a luminance, alpha or
     RGBA source into an index destination, or an index source into a colour destination.
     The library has a separate chain type for index into colour
     (`ImageChainDetermineChainType`, chain type 2); which steps that chain sends was not
     read here, and no recorded board copy of the case exists to decode.
  2. Word 7 bit 27 (the transform path) set: the library sets it for the scale and bias steps
     and flipped or zoomed copies, and `odsyCopyRectBody` then wraps the block in a textured
     rectangle (`0xcf80a92f`, vertex word `0x8080c800`) that runs through the transform
     microcode (routine 303). Zoom (`RenderFunc_ColorZoom`, `RenderFunc_IndexZoom`) reaches
     the board as a textured rectangle through `__glOdysseyImageMovePixelsTexture`, not a
     plain copy (**inferred**, the stores are folded in the decompiler).
  3. A non-identity scale or bias in block 0x203b ahead of the copy (the library programs it
     for pixel-transfer scale and bias, and signed-type reads). What block 0x203b does to an
     index copy is **unknown**: no recorded case has both.
  Different field widths on the two sides (for example a 2-byte index field to a 4-byte or
  8-byte one, as an index-to-texture copy would be) is also a converting case, since the
  component has to be widened and the write header's expand flag and type code then apply.
- **Bound the rule as**: raw (identity) when the source pair equals the write header's pair
  for the destination's field format, the field sizes agree (word 4 bits 15:13 against word 7
  bits 15:13), word 7 bit 27 is clear, and block 0x203b holds the identity scale and bias (or,
  for an index field, none is in force). Everything else keeps the converting path.
- **unknown**: the high byte of the 2-byte index field. A byte-index upload (`0x41`) and the
  class 0 code 1 read each carry 8 bits, while the destination field is 2 bytes. The
  recorded boot does not show whether the board copies both bytes or reads the low byte and
  writes it back the way the upload would. For pixels the same upload path wrote the two are
  equal; for a pixel written another way (a fill through a 12-bit index) they could differ.
  A discriminating test: copy a region that holds a pixel whose field value is above 0xff and
  read it back.

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
  bit 16 in the per-row operands; the first group is built at 0xd9b97b0 to 0xd9b9878, later groups at 0xd9b9900 to 0xd9b9994). It has no size field (word 7's
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

## Stencil word position, the DMA question, the move's sampler words and depth test on colour writes

Release IRIX 6.5.30m, IP30, N32 `libGLcore.so` (`root/usr/gfx/arch/IP30ODSY32/`). Routines were
disassembled in plain `objdump` and walked with `scripts/fifo_words.py`; callees were taken from target
addresses. No vendor source was read for any item here.

### Where the stencil index sits in a burst word

- **established.** `RenderFunc_DownloadStencil` (0x0d9a1c60) converts the image to `STENCIL_INDEX`/`UNSIGNED_INT` with
  `__glOdysseyImageConvertHostImage` (0x0d9a9e10; the constants 6401 and 5125 at 0xd9a1db8 and 0xd9a1dbc). In the
  stencil/unsigned-int branch of that routine (the branch at 0xd9ab054 to 0xd9abe7c) it installs
  `__glOdySpanPackPioStencil` (0x0d9a8d90) as the span packer when its flag register is nonzero. That packer saves the two
  floats at context +316 and +332, stores 16.0 and 0.0 there, calls `__glOdySpanShiftOffsetIndex` (0x0d9a8250) and restores
  them. The shift routine computes `(word << trunc(+316)) + trunc(+332)` on each 32-bit word with no mask. So each stencil word
  is `index << 16`: index 0x11 becomes `0x00110000`, in bits 23:16 (bits 31:24 take whatever is above the index).
- **established.** `SendPixelsAsUserPIO` (0x0d9b9680) copies the host words to the FIFO unchanged (the `lw`/`sw` pairs at
  0xd9b99d8 to 0xd9b9a18 and 0xd9b9c34 to 0xd9b9c60, plus a byte-copy realignment through a stack buffer at 0xd9b9aa0 to 0xd9b9ad8), so the burst word is the packed word.
- **inferred.** The flag register that selects the packer is initialised from the conversion's fifth argument
  (a stack pointer the download passes) and cleared on two other paths (0xd9aa8d4, 0xd9ab7a8); the walk did not prove
  it is nonzero for every stencil download. A guest run showing the shifted word agrees.
- **inferred.** The stencil write mask (block 0x052 bits 19:12) applies to the index, not to the word: the library keeps the
  application's mask there for a stencil download and the index sits in bits 23:16, four bits above the mask's own position.
  A literal `(word & mask) | (old & ~mask)` with the mask taken from 19:12 zeroes the index; the mask has to be applied to bits
  23:16 shifted down. How the board aligns them: **unknown**, in no software.

### Is there a depth/stencil write path other than the burst?

- **established.** Every call to the write routine (`__glOdysseyImageMovePixelsDMAtoGfx`, 0x0d9b9e20) from a depth or stencil
  step passes the transfer flag 1: `RenderFunc_DownloadDepth` and `RenderFunc_DownloadStencil` (two calls each) and
  `RenderFunc_CopyDepth` and `RenderFunc_CopyStencil` (two calls each). The only calls with the flag 0 are in the colour
  download step. In the routine the flag chooses the branch at 0xd9ba5ec: nonzero goes to the burst sequence (state flush,
  `0x00014400`, `0xcf80a92f` block, burst sender, `0x00014001`), zero goes to the DMA branch at 0xd9bafbc. So the library
  sends no depth or stencil by DMA.
- **established.** The DMA header's word 4 size field for depth and stencil (1 and 0) is built by the routine but, on the branch these steps take, no header
  is sent. The kernel's DMA transform path (`docs/kernel.md`, `odsyDMAOps` with word 7 bit 27) starts with the same
  `0xcf80a92f` and `0x00014400` prologue, so **inferred**: a DMA-fed depth or stencil word would go through the same
  rectangle primitive and the same block 0x052 enables. Whether the board takes the packed layout above from DMA data: **unknown**; the library never exercises it.

### The texture move's sampler words (`__glOdysseyImageMovePixelsTexture`, 0x0d9bbff0)

- **established**, stores at 0xd9bc1b8 to 0xd9bc36c. The move edits shadow words and leaves the rest as the context holds them:
  - Block 0x005 (+0x7c00) bit 4 is set (2D target); block 0x006 low six bits are 60.
  - Level descriptor 60 (context +32688, +32692, +32696, sent as block 0x2bc `0x00010ebc`): word 0 bits 28:0 are the object's board address from
    the write reference, bits 31:29 kept. Word 1 bits 31:30 are object +0x28 (storage class), bits 28:26 the result of
    `__glOdysseyImageCalcTexOffset` (0x0d9bef40), bits 25:20 the texel format index from `__glOdysseyImageCalcTexObjFormats` (0x0d9beda0), bits 11:0
    object +0x1c masked to 12 bits; other bits kept. Word 2 has bits 11:0 cleared and the rest kept.
  - The offset routine stores 0, or 2 only when object +44 and +48 are both 2 (the one nonzero store, `sw a3` at 0xd9bf064, with a3 = 2 from 0xd9bef74; every other pair stores 0, or raises
    `GL_INVALID_OPERATION` (0x502) for an unlisted pair), so with the field at bits 28:26 it sets **bit 27 and never bit 26**. The format table (class to format index, second output): 0 (0,1), 1 (2,4), 2 (4,2), 3 (8,1), 4 (9,4), 5 (10,2), 6 (11,3),
    7 (12,6), 8 (13,6), 9 (16,3), 10 (17,6), 11 (18,6), 12 (33,6), 13 (32,6), 14 (48,5), 15 (49,6), 16 (4,2), 17 (10,2) (jump table at 0x0dae927c).
  - Texture mode block 0x016 (words at +0x7cc4 to +0x7cd4, `BUZZ.h` TEXMODE0 to 4): TEXMODE0 bits 14:10 and 9:5 are log2 of object width (+0x20) and height (+0x24), bits 4:0 (R) cleared.
    TEXMODE1 bits 16:0 are the width and TEXMODE2 bits 16:0 the height, in texels as stored (not rounded); TEXMODE3 bits 16:0 are cleared (the depth word is 0). In TEXMODE1 to 3 the wrap auxiliary field 23:18 is also cleared; bits 31:24 and 17 are kept.
    TEXMODE4 bits 25:23 are set to 6 (the value the X server's start-up also writes). Dirty bits 0x200 (block 0x016) and 0x200000 (block 0x017) are raised.
- **established.** The move writes no other bit of TEXMODE4: wrap bits 13:8, trilinear bit 17, filter bits 7:1, bits 22:18 and 0 and bit 28 are not
  touched. So the wrap, the minification and magnification filter are whatever the context's block 0x016 shadow holds when the move runs.
  **inferred**: that is the shadow left by the last texture activation or the object-initialiser default (`TEXMODE4` = 0x82: mag filter linear), so the
  zoom's magnification filter is not chosen by the zoom step; bits 22:18 are the context-kept bits (`BUZZ.h`), and bit 28 (set when the active level has no border) is absent unless the context carries it.
  Meaning of bits 25:23 and 22:18: **unknown**.
- **established.** The four floats 0, 0, 0, 1 in each rectangle word are sent to the board; the move sets neither block 0x01b (texture environment) nor the raster
  colour, so whether they take part is decided by the context's texture-environment state: **unknown**.

### Depth test and colour image writes

- **established.** No routine that writes colour images (the write routine's transfer branch, the copy routine, the colour download step) has a header bit or
  register for the depth test. The stores to the raster-mode word (context +0x7bfc, block 0x004) that I read change only bit 18 (dither: cleared in the write
  routine at 0xd9ba970 to 0xd9ba97c and in the copy routine, when the context byte at +0x9dd0 is set and the source and destination pixel classes are equal),
  bit 17 (blend: cleared in one variant of the colour download step, which also sets TEXMODE4 bits 18 and 14) and, in the stencil steps, bit 15. The remaining
  stores restore saved copies. Bit 16 (depth test) and block 0x052 bit 24 (depth write) are left as the application set them.
- **established.** The transfer branch tests block 0x004 against the mask `0x0013c010` (bits 20, 17, 16, 15, 14, 4: logic op, blend, depth test, stencil test, alpha test, polygon stipple) at 0xd9ba934 to 0xd9ba944 and takes a
  0xd9bb598 when none is set, which tests the block 0x052 colour enables (bits 23:20) and rejoins at 0xd9ba94c (clears a local flag) or 0xd9ba954; what that flag selects was not traced. The colour burst is drawn as a primitive (`0x14400` operand 0xa and a ten-operand `0xcf80a92f` block).
- **inferred.** A colour `glDrawPixels` through the transfer branch is therefore subject to the depth test the application enabled (bit 16), with the raster position's depth, and to the depth write enable. 
- **established** that `RenderFunc_CopyColor` (0x0d990dd0) calls the copy routine with the transfer flag 0, so `glCopyPixels` of colour is the board's own block 0x031 copy and not a primitive. Whether that copy engine applies the depth test: **unknown**; the library sets no bit for it.

## The raster state an image transfer runs under, the zoom filter, the z of a colour write and stencil shift and offset

Release IRIX 6.5.30m, IP30, N32 `libGLcore.so`. Plain `objdump`, `scripts/fifo_words.py` and `scripts/glcore_probe.py`
(run on `__glOdysseyImageInit` with a zeroed context). No vendor source was read. **This section corrects two earlier
statements in this file's last section**: the transfer steps do not run under the application's raster state, and the
texture move's filter bits are not the application's.

- **established.** `__glOdysseyImageXfer` (0x0d9892d0, the driver of `glDrawPixels`, `glReadPixels` and `glCopyPixels`)
  calls `__glOdysseyImageSaveUserBuzzRasterState` (0x0d9c1e80) and then `__glOdysseyImageLoadBuzzRasterState` (0x0d9c1ff0) with
  argument 0, runs the chain, and ends with the loader with argument 1 (0xd989330 to 0xd989340; the end at 0xd98965c, 0xd9896a0). The saver copies the
  live state words (texture modes 0 to 4 and the rest of block 0x016, block 0x017's words, 0x004, 0x005, 0x021, the tables, 0x052) into a
  user save at context +0x11bf0; the loader copies a second block of the same layout at +0x11cc4 into the live state when its argument is 0
  and the user save when it is 1. So every step of a transfer runs under the library's own default block unless a step loads the user save itself.
- **established**, by running `__glOdysseyImageInit` (0x0d988ae0) on a zeroed context (`glcore_probe.py`): the default block is TEXMODE4 `0x03640000` (bits 25, 24, 22, 21 and 18),
  block 0x052 `0x01ffffff` (every write enable, depth write included) and block 0x005 `0x2400`; block 0x004 is not written, so it is 0 if the
  context starts zeroed (**inferred**: no depth test, blend, stencil test or alpha test during a transfer). The only users of the user save inside a step
  are the loader at 0x0d9bff00, which copies the user's 0x004, 0x021, 0x052 and descriptor word back (the texture move calls it, at 0xd9bc5c4; the write routine calls it at 0xd9bb2f4 on the path entered at 0xd9bb22c when the destination's byte +8 is set and the fifth argument matches), and the write
  routine's 0x052 replacement at 0xd9ba89c (destination byte +10). `__glOdysseyImageDescribeWindow` sets byte +9 for a window description and byte +8 for the other kind
  (0xd9899f8 to 0xd989a00) and zeroes byte +10.
- **established (corrects the zoom filter).** The texture move changes only the texture-mode bits listed above, so its TEXMODE4 is the default block's after
  the transfer's loader: `0x03640000`, with bits 25:23 then forced to 6 (`0x03000000` as written). Minification bits 7:5 and magnification bits 4:1 are 0 (NEAREST), wrap bits 13:8 are 0 (REPEAT), bit 17 and bit 28 are clear. The zoom
  samples nearest. The earlier reading of the application's texture state with an object default of `0x82` is wrong.
  The loader at 0xd9bff00 gives the zoom rectangle the application's block 0x004, 0x021 and 0x052, so its fragment operations are the application's.
- **inferred (z of a colour write).** The colour burst and the write routine's rectangle carry z in the ten-operand block `0xcf80a92f`: the first four floats are read from the record the context points to at +0xf8
  (0xd9ba7c0 to 0xd9ba7f4, stored at 0xd9baa94 to 0xd9baaa8), one z for the whole rectangle. The texture move instead computes z with
  `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` (0x0d9c21b0) when block 0x004 bit 16 is set: the raster position's clip-space vector at context +0x100 dotted
  with two rows of a matrix and divided, plus the constant 5e-7 (the double 0x3ea0c6f7a0b5ed8d in `.lit8`). That z is host state set when the raster position is set; the
  raster colour, index and texture coordinates are refreshed from the board by `__glOdysseyUpdateRasterPos` (called from `__glOdysseyImageXfer` at 0xd989644 under conditions on the enable word +0x700 and, for a depth-format image, two context words; the conditions were not fully traced), z is not. No header carries z.
  Whether the first four floats are the raster position's window x, y, z, w was not proved.
- **inferred.** For a window destination (byte +9) the burst runs with block 0x004 = 0, so the library asks for no depth test on a colour `glDrawPixels` and the application's depth test enable
  does not reach the board. Destination kinds other than windows were not all traced.
- **established.** Stencil index shift, offset and map are host steps: `__glOdysseyImageConvertHostImage` (0x0d9a9e10) installs `__glOdySpanShiftOffsetIndex` (0x0d9a8250) and `__glOdySpanMapStencil` (0x0d9a88f0) as span stages with the application's values,
  `RenderFunc_IndexShiftOffset` (0x0d9a62a0) is one call of the converter, and the pack stage at 0x0d9a8d90 reuses the shift routine with 16 and 0 (saving and restoring context +316 and +332). Nothing of the application's shift, offset or map reaches the board; it receives `value << 16`.
  The `stencil/draw/shift-offset-mask` result therefore depends on the value after the host steps and on the board's handling of bits above 23:16, which is **unknown**.

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

## When the raster colour is read, and what the stream tells the board

Release 6.5.30m, N32 `libGLcore.so` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`), listings `libglcore/asm/ODYSSEY/ody_rasterpos.s`, the Odyssey GL driver state query assembly unit, the Odyssey GL driver bitmap assembly unit, the Odyssey GL driver image assembly unit. Question: does the colour that a kind-3 query (`0x4c3 7 0x10a5a 7 6`) returns at shadow `+0x93c` (token `0xc580d015`, RGBA at `+0x940..+0x94c`) come from the colour current when glRasterPos ran, or when the query runs?

- `__glOdysseyRasterPosGeneral` (0x0d9ca3b0) sends no colour word. Its stream is a call through the context's validation pointer (the program and matrix upload, about 100 words), then four class-0 blocks `0x3cf8`, `0x3cf9`, `0x3cfa`, `0x3cfb`, each followed by sixteen zero operands (the raster-position module, constant stores of 15608 to 15611). A recorded command stream of the library running colour (.5,.25,1,.75), glRasterPos2f, colour (0,0,0,0), glGetFloatv(GL_CURRENT_RASTER_COLOR) shows the same: the 170-word raster-position block, in this case and in three other raster-position cases, holds no `0xc5......` word; the only colour words are the two glColor sends outside it. The kernel's context replay also sends a `0x3cf8` block after a replayed word (`odsy_ctxsw.o`, text 0x43dc to 0x4430); a scan of `li` immediates 15608 and 15609 over `libglcore/asm/` finds them only in the raster-position module.
- The library does not always query at glRasterPos time. After the block it sets a pending byte (context +0xa73c) and, in render mode (value 0x1c00 at +3204), calls `__glOdysseyUpdateRasterPos` straight away unless two things hold: `(word at +1792) & 0x3c0040` is zero and the 4x4 matrix at the pointer in +29736 equals the identity (that slot is the texture matrix stack pointer, not the modelview: the texture-matrix push advances it by 272 bytes and bounds it by the texture stack depth, and a recorded stream with a modelview translate before glRasterPos still shows no query) (sixteen `c.eq.d` tests in the raster-position module). Identity and zero mask: query deferred, pending byte stays 1. Anything else (a non-identity texture matrix or a set mask bit): the kind-3 query is issued at once.
- The deferred query is issued by `__glOdysseyDoGet` for the raster colour, index and texture-coordinate enumerants (the state-query module, enumerants 0xb04 to 0xb06, test of +0xa73c; 0xb07 and 0xb09 do not query), by the bitmap path (`DrawBitmapUsingPolyStipple`, the bitmap module lines 784 to 791) and by the pixel-transfer path when its need mask is set (the image module lines 1100 to 1125); each tests the pending byte first. `__glOdysseyUpdateRasterPos` clears the byte after decoding (the state-query module line 2575).
- **established.** No colour sender reads or writes the pending byte. The only references to context +0xa73c in all of `libglcore/asm/` are in the files above plus the attribute-pop routine and context creation, which clear it. So a glColor between glRasterPos and a deferred query never forces the query first. If the board returned the live colour, glRasterPos, glColor, glBitmap would draw in the later colour; the library has no code that prevents it. That the board instead returns a stored value is therefore **inferred**, not read.
- In feedback and select mode (the other branch of the 0x1c00 test) the library copies its own current colour (context +192, or +448 in colour-index mode) to the raster colour (+384) and the current texture coordinate (+224) to +288 at glRasterPos time (the raster-position module, the code after the zero blocks). The host path latches at glRasterPos time.
- **established.** The raster position, its valid flag and the distance never come from the board (see `__glOdysseyDoGet` above), so this stream does not hand the board a transformed position. How the board forms a raster colour at all, in particular the lit colour with lighting on, is **unknown**.
- The reply layout differs by kind. Kind 0 fills the shadow table's slots for index, colour, normal, texture coordinate and edge flag (offsets +0x900, +0x914, +0x928, +0x950, +0x978); kind 3 fills what the library reads at +0x928 (index), +0x93c (colour) and +0x950 (texture coordinate) (the state-query module 2520 to 2593: selector 3, record +40 or +60, then +80). That the +0x93c record is a stored value apart from the current-colour record at +0x914 is by inference from the two kinds using different slots.
- **unknown.** Which microcode routine or hardware path answers the class-0 words `0x4c0 + n`. The id (0xc0 + n) is below 0x100, so by the dispatch rule in `ucode/buzz_routines.md` ("How a command word reaches a routine") it names no routine entry. No routine in `buzz_xform.bin` or the kernel copy was found that writes to host memory, and `ucode/buzz_isa.md` ("Why no operation can be named from the host side") had already recorded that the answering routine was not identified. The reply reaches the host through the write-back area at register 0x4014 and block 0x5a's tag word (`docs/buzz.md` section 4). Whether the board copies a raster-colour slot written at glRasterPos time or the current colour when it processes the query is not visible in any host code. Routes tried: libGLcore sender and reader paths above, the routine map and listing, the kernel save and replay routines.
- **Result.** The board latches the colour at glRasterPos time: **inferred**, not established. For: the library never re-sends colour before the block and never forces the deferred query before a colour change, and its own feedback path latches at glRasterPos time. Against: nothing found. Which word in the block is the trigger (the `0x3cf8` to `0x3cfb` tail, which libGLcore sends only from this routine, is the one candidate) and the mechanism: **unknown**. Discriminating test: colour A, glRasterPos on the identity fast path, colour B, deferred query; the reply carries A. With a non-identity texture matrix the query follows the block at once and A and B readings agree.

## Related kernel and X module facts used above

- **established**, `odyssey.so` 0x15c6be8 in `odsyInitDefaultHW..N`: the X module sends block
  0x052 once, at screen start-up, with operand 0x01ffffff (every write enable, alpha included);
  no other X module routine stores the word 0x10452.
- **established**, `__glOdysseyCreateContext` (0x0d96c610) at 0x0d96f4f8: both integer viewport
  adjusts (context +0xe4c, +0xe50) are 6144, so the library's window coordinates are GL window
  coordinates plus 6144, with no window origin in them; the kernel's clip push sends the draw
  drawable's screen origin in block 0x041 ([opengl.md](opengl.md#the-clip-push-odsyclippush)).

## Pixel bursts, row ends, window-to-object copies and read conversion

Release IRIX 6.5.30m, IP30, N32 `libGLcore.so`. Listings `libglcore/asm/ODYSSEY/ody_image_move.s`,
the Odyssey GL driver image chain assembly unit, the Odyssey GL driver image API assembly unit, the Odyssey GL driver image conversion assembly unit and the Odyssey GL driver image assembly unit; routines run under Unicorn with
`scripts/write_burst_sweep.py` and the harness of `scripts/read_header_sweep.py`. No vendor source was read. Software
evidence only: it fixes the words the library sends and the bytes it expects, not what the board does with them.

### Which burst tag a write uses

- **`__glOdysseyImageCalcXferWriteParams`** (0x0d9bd800), **established**: its output record (fourth argument) holds, besides
  the format and type codes, a burst tag at byte 20 (and a second code at byte 21). `__glOdysseyImageMovePixelsDMAtoGfx` (0x0d9b9e20)
  stores byte 20 in the low bits of the shadow of the burst select word (`0x13c00 | tag`: the `lbu 68($sp)` feeding the store to context +0x9704 in its transfer branch), and the burst sender
  `SendPixelsAsUserPIO` (0x0d9b9680) reads it back (`context +0x9704 & 0x3ff`) as the tag of every burst word it emits
  (`0x14000 | tag | (words - words/16) << 10`).
- **established**, by running the routine for every format, type and destination pixel class (`scripts/write_burst_sweep.py`):
  - tag `0x10` for 1-byte index (`0x41`) and 16-bit index (`0x61`) sources, accepted only into classes 1, 2 and 4 to 17, and for
    `0x80` and `0x81` (index, depth and stencil with `UNSIGNED_INT`) into every class that accepts them;
  - class-dependent, `0x11` into the expand classes (7, 8, 10, 11, 12 and 13) and `0x10` into the others (0 to 6, 9, 14 to 17), for the
    byte forms `0x42`, `0x43` and `0x48`;
  - class-dependent, `0x12` into the expand classes and `0x10` into the others, for `0x62`, `0x63`, `0x68`, `0x82`, `0x83` and `0x88`;
  - tag `0x11` for the other byte forms (`0x44` to `0x47`, `0x49`, `0x4b` to `0x4d`, `0x50`, `0x51`, `0x16c`) and `0x12` for the other
    wider forms (`0x64` to `0x67`, `0x69`, `0x6b` to `0x6d`, `0x84` to `0x87`, `0x89`, `0x8b` to `0x8d`, `0x10b`, `0x10c`, `0x110`, `0x111`),
    into every class that accepts them.
  The sweep runs on a zeroed context. Which classes are RGBA windows is **inferred**; only class 10 is shown to be RGBA8.
  The tag follows the expand flag for luminance and intensity: byte sources 0x10 or 0x11, wider sources 0x10 or 0x12.
- **established** (`SendPixelsAsUserPIO`): the sender copies host words as 32-bit loads and stores. The bytes the board
  sees are the host image's bytes in memory order, so on this big-endian host the first of two 16-bit components sits in the
  high half of a word, and a byte pair `L, A` fills two adjacent bytes. A `0x68` pixel is one word; a `0x62` pixel is half a word.
- **established** (the same routine): the burst length is `min(64 / bytes-per-pixel, 16 >> (tag == 0x12))` pixels, or 48 /
  bytes-per-pixel when the pixel size is a multiple of 3, with the pixel size from the bytes-per-pixel code (word 7 bits 18:16)
  through the inverse of the kernel's table. The first header's bits 27:24 carry that length (15 stands for 16) and its bits 23:20
  are 0. Under tag `0x12` the length is doubled before encoding, so a header count is twice the pixel count (`5` pixels remaining
  are sent as count `10`).

### Row ends

- **established** (`SendPixelsAsUserPIO`, per-row loop): each row is sent on its own. A row of `n` pixels is `n / burst` full
  bursts, then one short burst of `ceil(remaining * bytes-per-pixel / 4)` words behind a new header; the next row's bursts
  start at the row's own start address plus the host skip (word 5), never inside the previous row's last word.
- **established**: the short burst's header is the first header with bit 16 set, bits 23:20 the remaining count (doubled
  under tag `0x12`) and bits 18:17 `(4 - row end address) & 3`, the number of unused bytes in the row's last word. A row
  that starts mid-word takes a separate path that copies the row to an aligned buffer first and sets bit 16 and bits
  18:17 from the start offset (not read further).
- **inferred**: bits 18:17 name the pad that the board must discard. Nothing in the library reads them back.
- The bytes in the pad are whatever follows the row in host memory (the next row, or a gap), or the aligned buffer's
  contents, so the board cannot treat them as pixels.

### Copying a window into a scratch object

- **`__glOdysseyRenderFunc_ReadbackColor`** (0x0d9a58c0), **established**: when `__glOdysseyImageCalcXferReadParams` (0x0d9bf200)
  reports no exact read and `__glOdysseyImageCalcSuitableGfxFormatForReadback` (0x0d9ac0d0) accepts the pair, it builds a
  scratch object description, copies the window rectangle into it with `__glOdysseyImageMovePixelsCopy` (transfer flag 1, so
  header word 7 bit 27 is set) and then reads the object's rectangle `(0, 0, w, h)` with `__glOdysseyImageMovePixelsDMAtoHost`.
  Pairs accepted (run through the routine): `RGBA`/`UNSIGNED_BYTE`, `RGBA`/`UNSIGNED_SHORT`, `RGBA` with 4/4/4/4 and 5/5/5/1 packing,
  `COLOR_INDEX`/`UNSIGNED_BYTE` and `UNSIGNED_SHORT`; `RGB` pairs are not. With context +1148 zero the object is read straight into the
  caller's image; otherwise it is read into a host scratch image and converted (what that word is: unknown). Read from the code path for
  pixel classes of 10 and above; classes below 10 go through a jump table that was not read. The source description byte +11, when set,
  draws a textured rectangle instead of copying.
- **established** (`__glOdysseyImageDescribeWindow`, 0x0d989710, store at its start): a window description's word +4 is 1. The
  read-image description `__glOdyim_ReadPixels` builds and the scratch object description have word +4 equal to 0.
- **established** (`DMAtoHost`): header word 7 bit 30 is set when the source and destination descriptions differ in word +4. A
  window read to client memory sets it; the object read above does not, so the object is read in its own row order, row 0 first.
- **established** (`ImageCopyPixelBody`, 0x0d9b73c0): the eight words of the `0x2031` block carry the source's smaller corner,
  the absolute width and height, and the destination's smaller corner (`slt` and `movz` choose minima; the size is a difference
  of ends). They cannot name a direction. With the transfer flag the routine first sends the ten-float record `0xcf80a92f`
  whose floats 4, 5 and 7, 8 are the destination's two corners; a mode argument (0 to 3) picks the corner order: 0 as given, 1
  with x reversed, 2 with y reversed, 3 with both.
- **established** (`__glOdysseyImageMovePixelsCopy`, 0x0d9b7820, the comparisons feeding the mode): mode = `2 * (Y xor S) + X`,
  where S is the source description's word +4, X is 1 when the destination x lies within the source's x range and Y is 1 when
  the destination y lies within the source's y range (the same two tests that become word 7 bits 31 and 30). A window source
  (S = 1) that does not overlap its destination (X = Y = 0) gives mode 2, the destination corners with y reversed.
- **inferred**: the board walks the destination corners as a directed rectangle, as it does for the image raster record, so
  reversed y puts the source's top window row last and its bottom row first, which is the order the object read (row 0 first,
  no bit 30) expects. Not read: what the board does with the record.
- **unknown**: `glCopyTexImage` reaches the same copy through the image chain's copy step (`RenderFunc_CopyColor`,
  0x0d990dd0, transfer flag 0), which sends no corner record; whether `MovePixelsCopy` forces the transfer path there is not resolved
  (the decompiler folds the branch). Settle by running `MovePixelsCopy` under the probe for a window-to-texture-object copy and
  listing its FIFO words with `scripts/fifo_words.py`.

### Read conversion on the host

- **established** (`__glOdysseyImageCalcXferReadParams` run on an RGBA8 window, class 10): `RGB`, `RED` and `GREEN` with `UNSIGNED_SHORT`, `SHORT` or
  `FLOAT`, and `RGBA` with `UNSIGNED_SHORT`, are not exact; the pair the library requests is `RGBA`/`UNSIGNED_BYTE` (class 2, code 8), four
  bytes a pixel, and it converts on the host. On an RGBA12 window (class 12) `RGB`/`UNSIGNED_SHORT` is exact (class 3, code 8).
- **established** (`__glOdysseyRenderFunc_ReadbackColor`): the scratch host image for that read has alignment 1 and image byte 0
  set, so `DMAtoHost` takes its row stride as the pixel row (`4 * width`) with no round-up and sends skip 0.
- **established** (`__glOdyim_ReadPixels`, 0x0d989ea0, source lines 247 to 250): the destination image's alignment field
  (+24) is `max(bytes per pixel, pack alignment)`, so 6 for `RGB`/`SHORT` and 4 for `RGB`/`UNSIGNED_BYTE`.
- **established** (`__glOdysseyImageConvertHostImage`, 0x0d9a9e10, opening lines): both images' row strides are recomputed from
  their own fields as `ceil(width * bytes_per_pixel / m) * m` with `m = max(alignment field, bytes per pixel)`; the routine never reads
  the context's pack alignment. A 13-pixel `RGB`/`SHORT` row is 78 bytes and `m` is 6, so rows are 78 bytes apart, not 80.
- **established** (`DMAtoHost`, 0x0d9bbf70): the direct DMA read path does the same `max(..)` stride and then rounds it up to the pack alignment
  for client memory, giving 80. So a direct read and a converted read of the same `RGB`/`SHORT` rectangle leave rows 80 and 78
  bytes apart; both are the library's own arithmetic, independent of the board's reply.
- **established**: the per-row loop of `ConvertHostImage` (0x0d9aa4d0 to 0x0d9aa55c) advances its two row pointers by exactly those
  two strides, doubling the step only when byte 28 of the user image is set (zero for a read). The mismatch needs an odd width at
  pack alignment 4; a 12-pixel row is 72 bytes under both rules.

## Object-to-window copies, the post-filter block and five state calls

Release IRIX 6.5.30m, IP30, N32 `libGLcore.so` (`root/builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/`). Read from the listing and
the objdump of the whole `.text`, with `scripts/fifo_words.py` for callees and `scripts/glcore_probe.py` for the default state
block. No vendor source was read. Software evidence only: nothing here says what the board does with a word.

### The copy routine's mode, re-derived

`__glOdysseyImageMovePixelsCopy` (0x0d9b7820) takes the destination description (a0), the source description (a1), a box of
eight floats (a2: source x0, y0, x1, y1 then destination x0, y0, x1, y1) and the transfer flag (a3).

- **established** (0xd9b8084 to 0xd9b8138, the branch tree, every leaf read): the mode handed to the copy body is
  `2 * (B xor S) + E`, with `S` the source description's word +4, `B` the flag held at stack +760 and `E` the flag held at stack
  +544. Leaf table (S, B, E to mode): 000 to 0, 001 to 1, 010 to 2, 011 to 3, 100 to 2, 101 to 3, 110 to 0, 111 to 1. An `S` other
  than 0 or 1 ends at `GL_INVALID_OPERATION` (0xd9b82e0).
- **established** (0xd9b7a54 to 0xd9b7ad8): `E` is 1 when the destination's x0 (box word 4, rounded up) lies in
  `[source x0, source x1]` (box words 0 and 2). `B` is 1 when the destination's box word 7 (rounded up) lies in
  `[source box word 3, source box word 1]`, in that order, so for an ordinary box with y0 below y1 it is 0 (the
  earlier reading "destination y within the source y range" was looser than the code). `E` and `B` become header word 7 bits 31
  and 30 as well. They compare numbers, not surfaces: an object box starts at 0, so a copy into a window at x 0 to the object
  width gives `E` 1 whatever the buffers hold.
- **established** (0xd9b7a2c to 0xd9b7a4c, 0xd9b8ac4 to 0xd9b8cd4): when the destination's byte +8 is set (the bound draw
  description; the read description sets byte +9 instead, `DescribeWindow` 0xd989794 and 0xd989a10) the routine sets the transfer
  flag to 1 whatever the caller passed. For an object destination it does the same when the destination's word +4 differs from
  the source's, when the destination's pixel class (+0x34) differs from a field of the copy-parameter result, or when the
  destination's byte +10 is set and the context words at +0x11cc0 and +0x11d94 differ (0xd9b8778 to 0xd9b8780); with byte +10
  clear the flag stays as passed (0xd9b9210). So the corner record
  below is sent for every window destination and for a window-to-object copy.
- **established** (the copy body 0x0d9b73c0, 0xd9b73e0 to 0xd9b7428 and 0xd9b7500 to 0xd9b75a8): with the transfer flag it sends
  `0x00010443 250 0x10046 0x10046`-style settle words, the four floats at the record the context points to at +0xf8, then
  `0xcf80a92f` with ten floats: those four, then two corners (x, y, z) and (x, y, z) from the destination box, z the
  caller's 0.0 (every call passes `$f15` = 0.0), then `0x8080c800 0 0`. Mode 0: corners (x0, y0) (x1, y1); mode 1: (x1, y0)
  (x0, y1); mode 2: (x0, y1) (x1, y0); mode 3: (x1, y1) (x0, y0). The mode is only read when the transfer flag is set.
  The `0x2031` block that follows holds the source and destination smaller corners and an absolute size, so it names no
  direction; header word 7 bits 31 and 30 are `E` and `B`.
- **established**: `RenderFunc_CopyColor` (0x0d990dd0) calls the routine with destination = chain +72, source = chain +68 and
  flag 0, so an object source can reach a window destination through it. The scale and bias steps call it with flag 1 and
  operands taken from the chain operation's own records (the call at 0xd9971cc); which object a pass names was not traced.
  The image set-up writes a scratch image at context +0x119e4 with byte 0 = 1 and word +4 = 0 (0xd988ec8, 0xd988ecc) and
  copies it on to +0x11a20 and +0x11a5c; no copy was shown to use it.
- **established** (non-overlapping, ordinary boxes, so `E` and `B` 0): a window source gives mode 2 for a window or an object
  destination; an object source gives mode 0 for a window destination. The two directions use opposite y order of the corner
  record.
- **inferred**: the `S` term exists so a window-to-object copy and the return copy are inverse in row order. Not read: what the
  board does with the record, or whether it reads the order from the record, from header word 7 bits 31 and 30, or from neither.
- Settle with: a library trace of an object-to-window copy listing the `0xcf80a92f` floats 4 to 9 (gives the mode the library
  sent), and board behaviour for the two corner orders, which no software here gives.

### Is the object read's bit 30 clear

- **established** (`__glOdysseyImageMovePixelsDMAtoHost` 0xd9bb8a0, 0xd9bba58 to 0xd9bba74, applied at 0xd9bbe84): header word 7
  bit 30 is 64 shifted by 24 when the source description's word +4 differs from the host image's word +4, else 0.
- **established**: `DescribeWindow` stores 1 at word +4 (0xd989724) after zeroing the rest; the read-back step
  (0x0d9a58c0) builds its scratch object description with word +4 zero (0xd9a5a18) and its host image description with word +4
  zero (0xd9a5c5c). So the object read has bit 30 clear and a window read to a host image has it set. The jump-table branch for
  pixel classes below 10 was not read.

### The post-filter block 0x203b

- **established**: one site sends it, in `__glOdysseyValidateHardware` (0xd969320 to 0xd969398): when bit 16 of the dirty word
  at context +0x16960 is set (test at 0xd96881c) and the mode word at context +0x8ce8 is 2, it sends the settle words if one is
  pending, then `0x0001203b` and the eight words at context +0x8cec to +0x8d08. Mode 1 sends four sets of eight to
  `0x2030` to `0x2033` (0xd968e00), mode 3 two words to `0x083d` (0xd969458).
- **established** (a search of every store to the mode word in the `.text`): the constant stored is 2 in the accumulation
  helpers, the convolution steps, the scale-and-bias steps, the colour matrix step, the signed-data steps, the two
  texture-filter helpers (0xd99cb44, 0xd99cc34) and texture state validation (0xd9d2ddc); 3 only in
  `__glOdysseyInitDefaultValues` (0xd969d5c); every other store restores a saved value. No store of 1 was found, so the
  earlier statement that image processing uses mode 1 is unverified.
- **established** (`__glOdysseyImageXfer` 0x0d9892d0, used by `glCopyPixels`, `glDrawPixels`, `glReadPixels`, texture loads
  and `glGetTexImage`): it saves the user's block, calls `__glOdysseyImageLoadBuzzRasterState` (0xd9c1ff0) with 0, which copies
  the library's default block at context +0x11cc4 over the live words, the mode and the filter words, and sets dirty bit 16
  among others (0xd9c2198), then builds and runs the chain, then reloads the user's block. Running `ImageInit` under
  `glcore_probe.py` leaves that default block with mode 2 and the four scale words 0x1000. It never writes the bias words, so bias 0 (the
  identity) holds only if the context starts zeroed: **inferred**.
  So every one of those transfers starts with a pending identity `0x203b`: unsigned copies too. The copy routine marks dirty
  bit 4 and calls validation before its `0x2031` block (0xd9b8274 to 0xd9b8294), so the pending block goes out first. Not
  observed in a run end to end.
- **established** (callees of each step by `fifo_words.py`): the helper that writes the eight words (0xd99ca10,
  `trunc(x * 4096) & 0xffff`, scale then bias per channel) is followed by `MovePixelsCopy` with flag 1 in the scale-and-bias
  steps (0xd9967e0, 0xd998010, 0xd999b20), by a host write (`MovePixelsDMAtoGfx`) in the colour download step (0xd9a3db0),
  and by the texture move in the convolution steps and the colour matrix (which also uses a copy). The rows beyond the
  scale-and-bias steps were read from the callee lists and not independently checked. The texture-filter loader
  copies a texture object's words in the same way. A pixel-texture step is added to a window-destination colour chain
  when bit 0x4000 of context +0x704 is set (0xd9905e0).
- **inferred**: the post-filter applies to the copy it precedes, because the library implements pixel-transfer scale and bias
  as this block followed by a copy. The board's effect on an identity block is nil, so only the signed pass (`2x + 1/4096`)
  distinguishes it.

### Five state calls

- **GL_FOG_INDEX**: `__glOdyim_Fogfv` (0xd9813e0, the branch at 0xd98156c) truncates the value to an integer, masks it with
  `(1 << context +0xcb4) - 1`, stores it as a float at context +0x658, and only when byte +0xc95 is set also puts it in bits
  23:12 of the word at +0x7c08 and, unconditionally, dirty mask 0x8, which validation sends as the six-word block `0x0001181a`
  (0xd968448), so a non-index context resends the unchanged block. In RGB mode bits 23:12 of +0x7c08 hold the first fog colour
  component (0xd9816d8 to 0xd981728). **established**. `glGet` returns the float (so_get 0xda42f70). That byte +0xc95 marks a colour-index context and that
  +0xcb4 is the index bit count is **inferred** from the test answer (7 asked, 0 returned on an RGB visual).
- **glIndexMask**: `__glOdyim_IndexMask` (0xd95c0f0) ANDs the argument with the word at context +0x7848, stores it at +0x758,
  replaces bits 11:0 of the word at +0x7c5c and sets dirty bit 0x80; validation sends the one-word block `0x00010452`
  (register 0x052, 0xd968aec). **established**. `glGet(INDEX_WRITEMASK)` returns the +0x758 word. No writer of +0x7848 was found
  in the library; from the test answers (0x1c asked, 0 returned) `w & 0x1c` must be 0: **inferred**.
- **glClearIndex**: the generic routine `__glim_ClearIndex` (0xda23730), no Odyssey routine of its own. It stores
  `(int)(c * 16) & ((context +0x7848 << 4) | 0xf)` over 16 as a float at +0x754 and sends nothing. `__glOdyim_Clear`
  (0xd9644d0) reads it only when byte +0xc94 is zero and uses it as the red clear component, with green, blue and alpha 0
  (0xd9648d4). **established**. Test answer (11 asked, 1 returned) needs `(w & 0xb) == 1` for the +0x7848 word `w`: **inferred**.
- **GL_PIXEL_TEXTURE_SGIS enable**: `__glOdyim_Enable` sets bit 0x4000 of context +0x704 (0xd9576a4) with no dirty bit and no
  word sent; `glDisable` clears it, `__glOdyim_IsEnabled` returns it (0xd956960). Its only reader is the colour chain builder
  (0xd9905e0, above). **established** for enable, disable and `glIsEnabled`. The generic getter has no case for 0x8353 in any
  immediate comparison, so `glGetBooleanv` leaves the output alone and raises an error: running the getter on 0x8353 under
  `glcore_probe.py` calls the error routine with 0x500 (`GL_INVALID_ENUM`). **established**.

## Image-write corner order, scissor words, paging header and colour operands

Release IRIX 6.5.30m, IP30, N32 `libGLcore.so` (`root/builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/`) and `odyssey.a` (`odsy_pmm.o`). Plain
`objdump` of the listed addresses and the committed decompilation; no vendor source was read for these entries.

- **`__glOdysseyImageMovePixelsDMAtoGfx`** (0x0d9b9e20, 6772 bytes), the y order of the corner record, **inferred** (the instructions at 0xd9ba7a8 to
  0xd9ba80c read; the box the caller passes was not traced). The routine loads the source description's second word (+4) into `a6`, and two `movz.s`
  (0xd9ba7f8 and 0xd9ba80c) pick which of the box's two destination y values goes first in the ten-operand block `0xcf80a92f` that
  the kernel sends ahead of a transform-path DMA (`odsyDMAOps` fills it from the same context words): the box's own order when
  `a6` is zero (host memory and scratch objects), the exchanged order when it is one (a window). The pixel zoom is not read in this routine, so a
  reversed corner order can come only from the box, which the colour download step builds from the zoom. Header word 7 bit 30 is the
  exclusive-or of the destination's and the source's word +4, so every write from host memory to a window carries it whatever its rows' order; it
  cannot be what separates one such write from another. `odsyMMxfr` keeps only bits 27 and 30 of word 7 from the caller (`docs/kernel.md`, `MMxfr`),
  so beyond the format and type codes in its low bits, bit 27 (the transform path) is the only caller bit left in word 7 that can tell two such writes apart.
- **`odsyDMAOps`** (`odsy_dma.o`, 0x0, entry at `.text` 0xb34), the clipped path's host row offset, **inferred** (the clipped path's instructions read and its registers traced by hand,
  not the whole routine). The path starts at 0x1484, clears header word 7 bit 27, keeps bit 30 (the `andi` with 0x40 at 0x14c4) and cuts the request into
  pieces at the context's clip rectangles. For each piece it rebuilds header words 1 and 3 from the piece's near corner and size, and picks the piece's
  host byte offset at 0x1808: with bit 30 clear, the host row stride (header word 5 plus the low 20 bits of word 6) times the piece's rows above the
  request's first y; with bit 30 set, that stride times the request's end y less the piece's end y (the code at 0x1670 to 0x1680), plus the x offset times the
  bytes a pixel. So with bit 30 set the host buffer's first row is the request's last row in the header's y axis, and with it clear the first row is the
  request's y. This is the only place the shipped software reads bit 30 as a row order. It holds for the clipped path only: the transform
  path (from 0xc5c) tests no bit 30 (the only `andi` with 0x40 in the routine is the one at 0x14c4), and what the board does with the
  bit on the plain path, where the kernel reads nothing, is **unknown**.
- **`__glOdysseyImageMovePixelsDMAtoGfx`**, block `0x01d`, **established** (instructions) for the selects, **inferred** for the roles. For a
  window destination reached with the fifth argument 1, the branch entered at 0xd9bb22c compares +0x7c20 and +0x7c24 (the operands of
  block `0x0001081d`) with +0x165bc and +0x165c0 and, on a difference, copies those two words in and sends the block, so the transfer is
  scissored by the window-relative scissor words that `__glOdysseyValidateScissor` (0xd9696f0, 248 bytes) and `ApplyScissor` build, not by the
  window-clip words at +0x165b4 and +0x165b8 that `ValidateScissor` sends for ordinary drawing. Each word is a 12-bit near value in bits 23:12 and a
  12-bit far value in bits 11:0, first the x range and then the y range. For any other destination the decompilation shows the routine
  storing the destination box into the same two words, near and far in that layout, and passing the four 12-bit values to ioctl 0x6f64000d
  (**inferred**: the decompiler folds those branches). The far values are the last pixel, since the kernel's clip push adds one to a far
  value (`docs/driver-functions.md`, `odsyClipPush`). Which rectangle the scissor words hold when the scissor test is off was not read:
  **unknown** (`ApplyScissor` takes a rectangle from the context at +0x743c, and where that rectangle starts out was not traced).
- **`SetupDMAParams`** (`odsy_pmm.o`, 0x3934, 540 bytes), the paging header's size ladder, **established** (whole routine read). The memory object's
  bytes-a-texel byte at +17 is compared with 16, 8, 4 and 2 in that order. 2 gives pixel-size code 0, 4 gives 1 and 8 gives 2
  (branch targets 0x3b0c, 0x3b20 and 0x3b18); 16 logs the severity-4 message and also uses 2 (0x3b28). Any other value, 32 included, falls to the join at 0x3a34 with
  the code taken from a stack word nothing stored, so the code, and with it word 4's low bits and word 7's size field, is whatever was on the stack. The
  object constructor accepts 32 (`docs/driver-functions.md`, `odsy_mm_obj_new`), and the library's texture allocator books at most 8, so only
  16 and 32 are affected. The kernel never reads a backing-store page's bytes: `odsy_mm_obj_alloc_bs`, `odsy_mm_obj_free_bs` and
  `odsy_mm_obj_xfr_bs` manage it and hand its address to `odsyDMAOp` as the transfer's host side, and the debug dump `SpewObjectToUser` writes a
  description, not texels (**inferred** from those routines; the other routines that mention offset +80 were not read for it).
- **`__glOdysseyImageMovePixelsTexture`** (0x0d9bbff0, 4284 bytes), the count-14 word's operand roles, **inferred**. The microcode routine that
  `0x8f80b968` selects (`ucode/buzz_routines.md`, routine 360) takes the four slot-15 operands, the way routine 303 takes them for the ten-operand
  rectangle word, and ten more. The library fills the word with (0, 0, 0, 1), then x0, y, z, x1, y, z, then s0, t0, s1, t1.
  Read against 303's use of the first group as colour and its next six as two (x, y, z) corners, the last four are the two
  corners' texture coordinates, (s0, t0) for the first corner and (s1, t1) for the second. The routine never reads a filter word from this
  block. The sampler it draws under is the context's, and the move's own stores change no filter bit (above), so the magnification
  filter is the one the transfer's default block carries: nearest (**established** for the library's request, as above).
- **`__glOdyim_Color3ub`** (0x0dad4600, 32 bytes) and **`__glOdyim_Color3ubv`** (0x0dad4680, 44 bytes), **established** (both read in full). The
  scalar emitter stores `0xc580cc08` and then its three argument registers unmasked, so a value above 255 reaches the board only
  from a caller that breaks the `GLubyte` prototype; the vector emitter loads each component with `lbu`, so it cannot send one. No shipped
  software is known to depend on what the board answers for a byte operand above 255: **unknown**. Routes tried: the two emitters and the
  four-component pair `__glOdyim_Color4ubv` (0x0dad4f00, 52 bytes), the kernel's textport colour store, and the OpenBSD driver's fill (three bytes).
