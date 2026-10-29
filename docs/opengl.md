# OpenGL core and X module notes

Companion to `libglcore/include/glcore_odsy.h` and `ddx/include/odsy_ddx.h`. Labels: **established** (read from a binary, with where), **inferred**, **unknown**. IRIX 6.5.30m, IP30 V12. Disassembly of `ddx/odyssey.so` is `ddx/asm/odyssey/odsy/odsy.s` (functions below by name; the line numbers are for that file); libGLcore is `libglcore/asm/ODYSSEY/`. Words are written one 32-bit store at a time through a pointer the X module keeps in the screen record (every `sw ..., 0($s0)` below goes to the command FIFO window, `BUZZ.h` section 1).

## X server 2D drawing paths (odyssey.so)

The X module draws 2D by sending the same class-1 command words as the GL driver (`BUZZ.h` sections 1 and 2): it does not use a separate 2D engine path. Each routine below keeps a "settle needed" flag at gfx-context +7352 and a second flag at +7036; after a drawing sequence the first is set to 1 and, when +7036 is nonzero, the routine sends the settle group of `BUZZ.h` (`0x10443`, operand 250, two `0x10046`). **established** as the code pattern in every function listed here.

### State sent before any draw

- **established.** Sync pattern at the start of `odsyCopyRectBody` and of the fill and glyph routines: `0x10443` with operand 250, two `0x10046`, `0x10019` (flush), then `0x10443` with operand 150 and four `0x10046` (`odsyCopyRectBody`, line 113345 on). Those are the wait, pad and flush words of `BUZZ.h` (`BUZZ_REG_WAIT`, `BUZZ_REG_PAD`, `BUZZ_REG_FLUSH`).
- **established.** Window descriptor, block 0x04b (`0x1204b` or `0x204b`, COUNT 8, eight operands from context +11072 to +11100). `odsyDrawSolidRectsSingleBuffer` refreshes it only when the window's cached values (halfwords at window-record +96 to +114) changed: word 0 = (a halfword at +96) << 12 | (a halfword at +98 & 0xfff); word 1 = (halfword at +100 minus 1) << 12 | (halfword at +102 minus 1) & 0xfff; words 2 to 7 alternate 0x00ffffff and 0. **inferred**: a window rectangle (origin and last pixel, 12 bits each) followed by three mask pairs; the kernel's `odsyRestoreRaster` also replays block 0x04b with eight operands (`docs/buzz.md` section 4), which fits state that belongs to the context. The mask pairs' meaning: **unknown**.
- **established.** Block 0x022 (`0x10422`, one operand built from the GC state and the window by shifting fields, for example bit 18 and bits 12:10) and block 0x017 (`0x11017`, four operands copied from context +6948 to +6960) are sent when the GC or clip changes. `odsyValidateClip` in the kernel is the other writer of that family. Field meanings: **unknown**.
- **established.** Block 0x024 (`0x10424`): operand from context +11112, 12 by default or the value the GC selects (`odsy_kern.h` `TP_CTX_WORDS` comment records the same slot for the textport).
- **established.** Colour. Two forms, chosen by the visual's class:
  - Colour index: `0xce80cc08` (Color3 on slot 0xce) with three zero operands, then `0xc580c406` (Index, integer) with the pixel value.
  - RGB: `0xc580cc09` (Color3, unsigned short) with three operand words that the code builds from the 32-bit pixel by field shifts and masks (`odsyPolyFillRectSolid`, line 10749 on; the 12-bit variants use `0xc580cc08` and shifts of 4).
  Before the first colour word of a form the code writes the sequencer registers `0x22008001` and `0x23008003` for the index form, `0x22008000` and `0x23008002` for the RGB form, and caches the pair in context +9828 and +9832 so it only writes on a change. **established.** `ucode/buzz_isa.md` records registers 0x22 and 0x23; this pairs them with the colour form (index 1 and 3, RGB 0 and 2). **inferred**: they select the colour mode the transform program runs in (index against RGB), because the kernel's textport sets 1 and 3 (it draws with colour indices) and the GL default is 0 and 2 (`__glOdysseyInitDefaultValues`).

### Rectangle fill (`odsyDrawSolidRectsSingleBuffer`, `odsyPolyFillRectSolid`)

- **established.** After the state above the routine sends `0x00014400` (primitive begin) with one operand, then four vertex words per rectangle and `0x00014001` (primitive end). A vertex is `0x8080c800` (Vertex2, integer) followed by x and y. For a rectangle read from an array of four 16-bit values (x1, y1, x2, y2) the four vertices are (x1, y1), (x1, y2), (x2, y2), (x2, y1) (`odsyDrawSolidRectsSingleBuffer`, line 12199 on: the loop body at label `.L01581710` loads the halfwords at +0, +2, +4, +6 of each 8-byte entry and stores them in that order). All rectangles of a call share one begin and end. The begin operand in this routine is a register value: **unknown**.
- **inferred.** The board draws each four-vertex group as one quad and the fill is a solid-colour quad, because the same begin, vertex and end family draws GL quads in libGLcore; no 2D-specific word occurs.

### Rectangle copy (`odsyCopyRectBody`)

- **established.** `odsyCopyRectBody(ctx, srcrect, desc, ...)` takes a seven- or eight-word descriptor (a copy of the caller's block at argument +0 to +28) and a source and destination rectangle (four 16-bit values each). After sync it sends block 0x058 (`0x10658`) with operand 0x00120000, block 0x053 (`0x11453`) with five operands from context +6964 to +6980, and then one of two paths chosen by bit 27 of descriptor word 7:
  - bit 27 set: `0x00014400` with operand 10, a ten-operand state word `0xcf80a92f` (ten floats: four from context +6988 to +7000, then the source rectangle corners converted to float, two zeros, with the corners swapped in x or y by bits 31 and 30 of descriptor word 7 for a flipped copy), a Vertex2 word `0x8080c800` with operands 0, 0, then a class-0 write `0x00002031` (id 0x031, COUNT 8) with eight operands, then `0x00014001`;
  - bit 27 clear: only the class-0 write `0x00002031` with the eight operands.
  The eight operands are the descriptor's eight words, with word 1 merged with the source point (x low 16 bits, y high 16), word 3 with the width (low 16) and height (high 16), and word 6 with the destination point.
- **inferred.** The eight-word class-0 write is a pixel-copy command (source and destination points, size, plus caller flags) that the board executes itself; the primitive path with `0xcf80a92f` handles copies that need the transform engine (flipped or scaled). Reason: the second path has no vertices at all. Why 0x031 is also an id of the post-filter 4-set (`BUZZ.h`): **unknown**, since the class-0 and class-1 id spaces may differ.

### Text (`odsyPolyGlyphBlt` family, TE6, TE8 and TE9 variants)

- **established.** The terminal-emulator glyph routines (`odsyPolyGlyphBltTE8`, line 22493 on) send block 0x03f (`0x1043f`) with context +128 (5 for TE8), then 0x04e and 0x04f (`0x13c4e`, `0x13c4f`, COUNT 15, so 16 operands each) with 32 words read from a 128-byte staging buffer, then block 0x04b (above), and draw each glyph cell as a quad: `0x00014400` with operand 7, four `0x8080c800` vertices, `0x00014001`.
- **established.** libGLcore sends the same blocks for the polygon stipple (`LoadAndSendStippledQuads` and `DrawBitmapUsingPolyStipple`, `ody_bitmap.s`, and `PopAttributes`, `ody_attrib.s`, which writes `0x13c4e` and `0x13c4f` from context +31608 on).
- **inferred.** Blocks 0x04e and 0x04f hold a 32 x 32 one-bit pattern (the first 16 and last 16 rows, 32 words in all) used as a polygon stipple, and a glyph is drawn by loading its bitmap as the stipple and sending a stippled quad. Support: the 32-word total, the `odsyPolyFillRectStippled32x32` and `DrawBitmapUsingPolyStipple` names, and `odsy_kernel` replaying 0x04e and 0x04f as 16-operand state. Which pattern bit is which pixel: **unknown**.
- **unknown.** The other glyph variants (`odsyImageGlyphBlt`, opaque text), `odsyDrawMonoImage` and the image paths (`odsyDrawImage`, `odsyReadImage`) were not read in this pass.

## Private ioctl numbers

**established.** The kernel's private-ioctl entry `gf_OdsyPrivate` (`odsy.o`) accepts commands whose upper 16 bits are 0x6f64 and whose low bits are below 53, and calls the function in a 53-entry table (the `odsy.o` `.data` relocations at table offset 0xe0 on, one pointer per number). The table, by command number `0x6f640000 + n`:

| n | Function | n | Function |
|---|---|---|---|
| 0 | `gfP_OdsyMMattach` | 26 | `gfP_OdsyBRDMGRsetColors` |
| 1 to 4 | `MMalloc`, `MMdealloc`, `MMmakeResident`, `MMquery` | 27 | `BRDMGRconfigFb` |
| 6 | `MMxfr` | 28 | `BRDMGRcursor` (`docs/display.md`) |
| 7 | `gfP_OdsyGLGet` | 29, 30 | `BRDMGRsetDpyMode`, `BRDMGRsetBlanking` |
| 8 | `gfP_OdsyMakeCurrent` | 31, 32 | `BRDMGRloadTimingTable`, `BRDMGRVTGcontrol` |
| 9 | `gfP_OdsySetDrawBuffer` | 33 | `BRDMGRi2ccmd` |
| 10, 11 | `MMdebug`, `MMwaitXfr` | 35 | `BRDMGRSetDACGain` |
| 12 | `gfP_OdsySaveHwShadow` | 36, 37 | `LoadCompositorTiming`, `CompositorRegAccess` |
| 13, 14 | `SetClipMask`, `ClearBuffer` | 38, 39 | `I2CPassthrough`, `SetNicinfo` |
| 15 | `GetDrawableGeometry` | 42, 43 | `PbufAssoc`, `PbufDeassoc` |
| 16 to 24 | `HPgetTopology`, `HPgetConfig`, `HPconfig`, `HPdestroyConfig`, `HPbind`, `HPunbind`, `HPqueryAttrib`, `HPqueryBestAttrib`, `HPsetAttrib` | 46 to 50 | `DIAGdma`, `DIAGallocScanbuf`, `DIAGfreeScanbuf`, `DIAGgetShadowPtrs`, `DIAGreleaseShadowPtrs` |
| 5, 25, 34, 40, 41, 44, 45 | `gfP_OdsyInvalidIoctl` | 51, 52 | `PerfStat`, `DIAGreset` |

Numbers 8, 9 and 12 match what libGLcore sends (`0x6f640008`, `0x6f640009`, `0x6f64000c`, `ody_unixcontext.c`). **established** by the table relocations; what the argument layouts of most entries hold: **unknown** here.

## Make-current and lose-current

Sources: `MakeCurrentRead`, `MakeCurrent` and `LoseCurrent` in `libglcore/decomp/ODYSSEY/ody_context.c` (and `.s`), `__glOdysseyDriverMakeCurrent` and `__glOdysseySetDrawbuf` in `ody_unixcontext.c`, kernel `gfP_OdsyMakeCurrent` and `gfP_OdsySetDrawBuffer` (`odsy_drawable.o`). IP30, N32 libGLcore.

### libGLcore side

- **established.** `MakeCurrent` does host-side work first (context validation, the dispatch-table copies, `__glMakeCurrentBuffers`, window size, colour scales and the shadow-register copies the decompiler shows as 64-byte block copies of the context's 236-word hardware shadow) and only then touches the board: `__glOdysseyDriverMakeCurrent(ctx)` issues ioctl `0x6f640008` (`gfP_OdsyMakeCurrent`) with two flag words (0x2 when the buffer count is positive, 0x4 when double buffering is off, one word for each of the two buffer classes the context holds); on success the reply fills context words at +0x16d40 to +0x16db4 (two drawable descriptors with up to four entries each, chosen by a mode field of the reply) and +0x16d54 to +0x16d64. It then describes the window with `__glOdysseyImageDescribeWindow` twice (draw and read), builds four descriptor words at context +0x969c to +0x96a8, and writes one block to the FIFO. A failed ioctl is reported through a second call and make-current returns 0.
- **established.** The descriptor words (decompiled expressions in `MakeCurrent`): word at +0x96a0 takes its low 12 bits from the reply word at +0x16d4c; +0x969c and +0x96a8 take their low 29 bits from the replies +0x16d40 and +0x16d44 and keep their top three bits; +0x96a4 takes bit 21 from the reply +0x16d50, bits 15:13 from the described window's field at +0x11dc0, bits 12:10 from +0x11dc4, bit 19 set when the format code at +0x11dcc is 0x10 or 0x11, bit 22 set when +0x11dc4 equals 3, and bits 6:4 from `__glOdysseyImageCalcFieldFormat`. The meanings of the individual fields: **unknown**.
- **established.** FIFO sequence after the descriptors, identical to `__glOdysseySetDrawbuf` (which sends it after ioctl `0x6f640009`): the sync group `0x10443` 250, `0x10046` x2, `0x10019`; `0x10443` 150, `0x10046` x4; `0x10443` 250, `0x10046` x2; then, when bit 27 of +0x96a4 is clear, the state word `0x90008116`, otherwise block 0x041 (`0x10841`, two zero operands), block 0x04b with the reset form `0, 0xffffff, 0, 0, 0, 0, 0, 0` (the window descriptor of the X module section, reset) and block 0x040 (`0x10840`, two zero operands); then block 0x017 (`0x11017`) with the four words at +0x969c, +0x96a0, +0x96a4, +0x96a8; then the same two sync groups. **inferred** that block 0x017 is the drawable (framebuffer) descriptor: the X module also sends it with four context words (`odsyPolyFillRectSolid`, context +6948 to +6960) and `odsyRestoreRaster` replays it with four operands. Its fields: **unknown**.
- **established.** `LoseCurrent` is host-side only (when the dispatch table is the Odyssey one): it calls `__glLoseCurrentBuffers`, copies the 236-word context shadow block to a saved area at context +8032 (the loop of 64-byte copies from the record at +6132), and copies four words from the reply area (+0x1008..+0x1014) to context +5052 to +5064. It sends nothing to the board and issues no ioctl. The saved hardware state is therefore read back by the kernel's save request on the next switch (`docs/buzz.md` section 4), not by `LoseCurrent`.

### Kernel side (`gfP_OdsyMakeCurrent`)

- **established.** The handler copies 80 bytes in from the caller (two 40-byte descriptors, one per buffer class: the first word of each is the flag word above), validates the caller with `RRM_CheckValidFault`, increments a per-process counter at +80 of the process record, and if the process is not attached to flow control attaches it (`gfx_flow_attach_me`, then writes the board's flow-config register 0x1074 with the credit target number in bits 16:12 and clears 0x107c; see `docs/buzz.md` section 1). It then unbinds and binds both drawable classes (`odsyUnbindDrawable` and `odsyBindDrawable` for classes 1 and 2 with each descriptor's flag word), copies the bound drawable's geometry words (record +472 to +552) into the reply, calls `odsyClipPush`, decrements the counter and copies 80 bytes out. When the process was already attached it skips the flow-control attach; when the drawable pointer is missing it logs and returns 1.
- **unknown.** The layout of the 80-byte descriptors, what `odsyBindDrawable` writes to the board (it was not read), and the clip push's FIFO words.
