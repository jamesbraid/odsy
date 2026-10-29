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

- **established.** `odsyCopyRectBody(ctx, srcrect, desc, ...)` takes a seven- or eight-word descriptor (a copy of the caller's block at argument +0 to +28) and a source and destination rectangle (four 16-bit values each). After sync it sends block 0x258 (`0x10658`; the id field of that word is 0x258, an earlier pass wrote 0x058) with operand 0x00120000, block 0x053 (`0x11453`) with five operands from context +6964 to +6980, and then one of two paths chosen by bit 27 of descriptor word 7:
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

- **established.** `MakeCurrent` does host-side work first (context validation, the dispatch-table copies, `__glMakeCurrentBuffers`, window size, colour scales and the shadow-register copies the decompiler shows as 64-byte block copies of a 236-doubleword (1888-byte) region) and only then touches the board: `__glOdysseyDriverMakeCurrent(ctx)` issues ioctl `0x6f640008` (`gfP_OdsyMakeCurrent`) with two flag words (0x2 when the buffer count is positive, 0x4 when double buffering is off, one word for each of the two buffer classes the context holds); on success the reply fills context words at +0x16d40 to +0x16db4 (two drawable descriptors with up to four entries each, chosen by a mode field of the reply) and +0x16d54 to +0x16d64. It then describes the window with `__glOdysseyImageDescribeWindow` twice (draw and read), builds four descriptor words at context +0x969c to +0x96a8, and writes one block to the FIFO. A failed ioctl is reported through a second call and make-current returns 0.
- **established.** The descriptor words (decompiled expressions in `MakeCurrent`): word at +0x96a0 takes its low 12 bits from the reply word at +0x16d4c; +0x969c and +0x96a8 take their low 29 bits from the replies +0x16d40 and +0x16d44 and keep their top three bits; +0x96a4 takes bit 21 from the reply +0x16d50, bits 15:13 from the described window's field at +0x11dc0, bits 12:10 from +0x11dc4, bit 19 set when the format code at +0x11dcc is 0x10 or 0x11, bit 22 set when +0x11dc4 equals 3, and bits 6:4 from `__glOdysseyImageCalcFieldFormat`. The meanings of the individual fields: **unknown**.
- **established.** FIFO sequence after the descriptors, identical to `__glOdysseySetDrawbuf` (which sends it after ioctl `0x6f640009`): the sync group `0x10443` 250, `0x10046` x2, `0x10019`; `0x10443` 150, `0x10046` x4; `0x10443` 250, `0x10046` x2; then, when bit 27 of +0x96a4 is clear, the state word `0x90008116`, otherwise block 0x041 (`0x10841`, two zero operands), block 0x04b with the reset form `0, 0xffffff, 0, 0, 0, 0, 0, 0` (the window descriptor of the X module section, reset) and block 0x040 (`0x10840`, two zero operands); then block 0x017 (`0x11017`) with the four words at +0x969c, +0x96a0, +0x96a4, +0x96a8; then the same two sync groups. **inferred** that block 0x017 is the drawable (framebuffer) descriptor: the X module also sends it with four context words (`odsyPolyFillRectSolid`, context +6948 to +6960) and `odsyRestoreRaster` replays it with four operands. Its fields: **unknown**.
- **established.** `LoseCurrent` is host-side only (and only when a context field at +3204 equals 7168; what that field is: **unknown**): it calls `__glLoseCurrentBuffers`, copies a 236-doubleword (1888-byte) region from the record at context +6132 to context +8032, and, when the word at +4988 is nonzero, copies four words from fixed addresses 0x1028 to 0x1034 of the process data area (the same four that `MakeCurrent` fills from context +0x13bc to +0x13c8) to context +5052 to +5064. It sends nothing to the board and issues no ioctl. The saved hardware state is therefore read back by the kernel's save request on the next switch (`docs/buzz.md` section 4), not by `LoseCurrent`.

### Kernel side (`gfP_OdsyMakeCurrent`)

- **established.** The handler copies 80 bytes in from the caller (two 40-byte descriptors, one per buffer class: the first word of each is the flag word above), validates the caller with `RRM_CheckValidFault`, increments a per-process counter at +80 of the process record, and if the process is not attached to flow control attaches it (`gfx_flow_attach_me`, then writes the board's flow-config register 0x1074 with the credit target number in bits 16:12 and clears 0x107c; see `docs/buzz.md` section 1). It then unbinds and binds both drawable classes (`odsyUnbindDrawable` and `odsyBindDrawable` for classes 1 and 2 with each descriptor's flag word), copies the bound drawable's geometry words (record +472 to +552) into the reply, calls `odsyClipPush`, decrements the counter and copies 80 bytes out. When the process was already attached it skips the flow-control attach; when the drawable pointer is missing it logs and returns 1.
- **unknown.** The layout of the 80-byte descriptors, what `odsyBindDrawable` writes to the board (it was not read), and the clip push's FIFO words.

## Pass 10: sender catalogue, image paths, ioctl argument sizes and texture memory

IRIX 6.5.30m, IP30, N32 libGLcore and `odyssey.so`. Labels as above.

### Which libGLcore file sends which block

**established** for constant forms only: every `lui`/`ori` class-1 word (`BUZZ.h` section 1) in `libglcore/asm/ODYSSEY/*.s`, kept when its id and count match a block the kernel replays or one of the table ranges (`docs/buzz.md` section 8), with words that are context offsets or address constants removed by hand (the words 0x1201c and 0x13420 of the accumulation and texture code are offsets, not commands; words with bit 14 set other than the primitive begin and end are offsets too). Words built by shifts and masks, such as the level descriptor ids 0x280 + i or the table ids 0x200 + i, show only as their base form. The per-vertex and attribute words are catalogued in `docs/buzz.md` section 2.

| File | Blocks sent |
|---|---|
| `ody_context.s` (`__glOdysseyValidateHardware`, make-current) | the full raster-state set: 0x004-0x007, 0x015, 0x01a, 0x01b, 0x01c, 0x01d, 0x01f, 0x021, 0x023, 0x03a, 0x03d, 0x03e, 0x047, 0x04a, 0x04c, 0x051, 0x052, 0x053, 0x056, 0x057, 0x013, 0x016, 0x017, 0x030-0x033, 0x03b, 0x028-0x02b, 0x038, the level descriptors, the five 256-word tables, the sync group |
| `ody_unixcontext.s` (swap) | 0x017, 0x25a, sync group |
| `ody_texture.s` | sync group, level descriptor words, 0x14400 |
| `ody_bitmap.s`, `ody_attrib.s` | stipple blocks 0x04e and 0x04f (and 0x04d), 0x01d, 0x03f, 0x004-0x005, 0x015, 0x056, 0x058, primitive begin and end |
| `ody_clear.s`, `ody_accumop.s`, `ody_fragment.s`, `ody_lighting.s`, `ody_image_chain.s`, `ody_image_move.s`, `ody_pmobj.s`, `ody_get.s` | sync group with one or more of 0x007, 0x015, 0x01d, 0x01f, 0x020, 0x022, 0x041, 0x053, 0x000 (six operands), 0x25a and, in the image-move code, a word of the 0x280 + i level-descriptor form with i = 60 (`0x10ebc`) (image move and chain, lighting, fragment and the memory-object code) |
| `ody_dlist.s`, `ody_linedraw.s`, `ody_pntdraw.s`, `ody_polydraw.s`, `ody_polyclip.s`, `ody_vertex.s`, `ody_prim.s` | primitive begin and end (0x14400, 0x14001) around vertex words, sync group |
| `ody_clip.s` | 0x044 |

This is the by-file view of the senders the earlier passes found by function; the by-block view is the table in `docs/buzz.md` section 8. Everything beyond this list is not a command word in libGLcore: **established** as a negative result of the scan above, **inferred** where a word is built at run time.

### The X module's image paths

**established** by reading the word families in `odsyDrawImageDMA`, `odsyDrawImagePIO`, `odsyReadImage`, `odsyReadDeepImage`, `odsyDrawSmallCI8Image`, `odsyDrawMonoImage`, `odsyDrawOpaqueMonoImage` and `odsyImageGlyphBlt` (`ddx/asm/odyssey/odsy/odsy.s`):

- **State words.** All of the drawing image routines send the sync group and the window descriptor block 0x04b, then blocks 0x405 (the textport's raster mode, here one operand), 0x422, 0x053 (five operands, as in the rectangle copy) and register 0x29 (`0x29008000 | enc(n)`, the routine-entry register). They then send the colour as in the fill path (the index and RGB forms and the 0x22/0x23 pair), and block 0x023 (`0x11023`, four operands).
- **DMA draw (`odsyDrawImageDMA`)** sends those words and the pixel data goes by kernel DMA: the ioctl is `0x6f640006` (`gfP_OdsyMMxfr`, 80-byte argument both ways), which `odsyReadImage` and `odsyReadDeepImage` use for reads. The request layout: **unknown, needs a capture** (the 80-byte argument of an XPutImage and an XGetImage of a known 8 x 8 image).
- **PIO draw (`odsyDrawImagePIO`)** sends the state words, a ten-operand state word `0xcf80a92f` with a Vertex2 `0x8080c800` (the destination quad), a word `0x00004570` (bit 14 set, one operand, id field 0x170) with one operand taken from a shadow word, then the bare word 0x71, and then the pixels in chunks of up to 15 words, each chunk led by a word built at run time as `0x00014000 | (count << 10) | id` and followed by `count` pixel words stored one at a time. So bit 14 (`BUZZ_CMD_PRIM`) is also set on the leading word of a pixel-data chunk. The id field of that word comes from a local variable: **unknown**; the meaning of the 0x170 block and of 0x71: **unknown, needs a hardware capture** (the FIFO stream of one small `XPutImage` with known pixel values).
- **Small CI8 images (`odsyDrawSmallCI8Image`)** use the fill path: primitive begin 0x14400, `0xce80cc08`, `0xc580c406` (index), Vertex2 words and end.
- **Mono and glyph images.** The text of `odsyDrawMonoImage` and `odsyDrawOpaqueMonoImage` (141 and 136 lines) sends only the window descriptor 0x04b (and the sync group in the first); the pixel work is in routines they call, which were not traced. `odsyImageGlyphBlt` sends the sync group and the window descriptor in its own text and delegates to the per-cell routines. The terminal-emulator variant `odsyImageGlyphBltTE8` sends the words of the polygon glyph path (blocks 0x03f, 0x04e and 0x04f, primitive begin 0x14400 with Vertex2 words and end 0x14001, `docs/opengl.md` text section) plus blocks 0x022, 0x021 (`0x10c21`) and 0x004 and both colour forms. **established** as the word set; the order, whether a background cell is drawn first, and the begin operand: **unknown** (not traced).

### Private ioctl argument sizes

**established** from the literal size in the `copyin` and `copyout` calls of each handler (`odsy_kernel/disasm`, IP30), bytes in and out; a blank means no copy, `var` means the size is a computed value:

| n | Handler | In | Out |
|---|---|---|---|
| 0 | `MMattach` | 72 | 72 |
| 1, 2 | `MMalloc`, `MMdealloc` | 72 | 72 |
| 3 | `MMmakeResident` | 8 | |
| 4 | `MMquery` | 40 | 40 |
| 6 | `MMxfr` | 80 | 80 |
| 7 | `GLGet` | 4 | |
| 8 | `MakeCurrent` | 80 | 80 |
| 9 | `SetDrawBuffer` | 4 | |
| 10, 11 | `MMdebug`, `MMwaitXfr` | 24, 8 | 4, |
| 12 | `SaveHwShadow` | | |
| 13 | `SetClipMask` | 16 | |
| 14 | `ClearBuffer` | 44 | |
| 15 | `GetDrawableGeometry` | | 16 |
| 16, 17 | `HPgetTopology`, `HPgetConfig` | , 524 | 388, 524 |
| 18 | `HPconfig` | 524 | 524 |
| 19, 20, 21 | `HPdestroyConfig`, `HPbind`, `HPunbind` | 4 each | |
| 22, 23, 24 | `HPqueryAttrib`, `HPqueryBestAttrib`, `HPsetAttrib` | 32 each (plus a variable tail) | 4, 4 (query) |
| 26 | `BRDMGRsetColors` | 16 (plus a variable tail) | |
| 27 | `BRDMGRconfigFb` | 52 | 52 |
| 28 | `BRDMGRcursor` | 40, 60, 512, 256 | |
| 29, 30 | `BRDMGRsetDpyMode`, `BRDMGRsetBlanking` | 8, 4 | |
| 31, 32 | `BRDMGRloadTimingTable`, `BRDMGRVTGcontrol` | 320, 8 | |
| 33 | `BRDMGRi2ccmd` | 48 | |
| 35 | `BRDMGRSetDACGain` | 4 | |
| 37 | `CompositorRegAccess` | 12 | 12 (twice) |
| 38, 39 | `I2CPassthrough`, `SetNicinfo` | 8, 80 | |
| 42, 43 | `PbufAssoc`, `PbufDeassoc` | 8, 8 | , 8 |
| 46 | `DIAGdma` | 48 | |
| 47, 48 | `DIAGallocScanbuf`, `DIAGfreeScanbuf` | 24, | 24, |
| 49 | `DIAGgetShadowPtrs` | 80 | 80 |
| 51 | `PerfStat` | 24 | 24 |

The generic resource-manager ioctls 1000 to 1025 take 4 to 64 bytes (`docs/display.md` pass 10). Field layouts: most are **unknown** here; known layouts are in the sections of `docs/display.md`, `docs/kernel.md` and `docs/buzz.md` that name each call (the cursor request, the timing structure, the performance-statistics argument, the DMA transfer and the swap request). For the memory-manager calls: `MMalloc` copies in 72 bytes and uses word 1 (a set id, -1 meaning none), a halfword at +8 below 16 (the object type), bytes at +12 and +13, and words at +16, +20, +24, +28, +32 and +36 as the description it compares with an existing object of that type before creating one (`odsy_mm_obj_new`); **established**. What each description field is (dimensions, format, level count): **unknown, needs a capture** (the 72-byte argument of one texture allocation of a known size and format).

### Texture level records and memory

**established** from `__glOdysseyTextureActivate` and `docs/buzz.md` section 9: a texture object keeps a 16-word array of per-level memory values at object offset 1300 and a 68-byte record per level from offset 1364 (record offset 0 and 4 feed the level descriptor's top bits, record offset 28 holds the level's width in texels). Texture memory itself is allocated by `MMalloc` above (the kernel's memory manager keeps an object per texture level group), made resident by `MMmakeResident` and filled by `MMxfr` transfers. The record's other fields and the allocation arguments: **unknown, needs a capture** (named above and in `docs/buzz.md` section 9).

### The 20-byte shadow descriptors

**established** from `__glOdyDecodeShadowFormat` (`ody_get.s`, jump tables read from `libGLcore_n32.so`): word 0 bits 5:0 select one of 59 decode forms (a value of 59 or more raises GL error 1280; bits 28:24 give an element count in kind 46); words 1 to 3 (and 4 in kind 15) are either indices (times four) into the array of shadow words at hardware-state offset 3824, or raw values held in the descriptor, depending on the form. A second table by the same kind number gives the result type code passed to `__glConvertResult`: 4 for the float forms, 3 for integer forms, 1 for a single value. Each form builds up to four values in a local buffer and a count code, then converts to the caller's type. The forms, by kind:

| Kinds | Form (established as code) |
|---|---|
| 0, 2, 4, 6, 26, 27, 28 | return the descriptor's own three words as the values (type 4 for 0, 2 and 4, type 1 for 6, type 3 for 26 to 28) |
| 1, 3, 5, 7 | no value (count zero) |
| 8 | three floats from the shadow array at the indices in words 1 to 3, plus the constant 1.0 |
| 15 | four floats from the shadow array at the indices in words 1 to 4 |
| 14 | three floats held in the descriptor, plus 1.0 |
| 11, 18, 22 | signed integers to colour range for the first colour scale: each word becomes `(2 x + 1)` times the hardware-state float at offset 3552 |
| 12, 19, 23 | the same with the scale at offset 3560 |
| 13, 20, 24 | the same with the scale at offset 3568 (kind 20 also folds the constant pair 1.0 and 2.0) |
| 9, 17, 10, 16 | unsigned integers times the scale at 3560 (9, 16) or 3568 (10, 17) |
| 30, 38 | the descriptor's first value as an integer, then 0, 0 and 1 |
| 31, 39 | one float from the descriptor, then 0.0, 0.0 and 1.0 |
| 32, 40 | two integer words, then 0 and 1 |
| 33, 41 | two floats, then 0.0 and 1.0 |
| 34, 42 | three integer words, then 1 |
| 35, 43 | three floats, then 1.0 |
| 36, 44 | no values loaded, count code 3 (the values are the descriptor's words) |
| 37, 45 | no value (count zero) |
| 46 | element count from bits 28:24 of word 0 (15 gives the single value 1, 16 gives 0, other counts the descriptor's words) |
| 21, 25, 29, 47 to 58 | no loads; the descriptor's words are returned with count code 5 (four values) |

**inferred** that the colour forms convert signed and unsigned integer colour state to the floats that glGet returns, with the three scale words being per-channel-group colour scales kept in the hardware-state area (`docs/opengl.md` make-current). Which GL query uses which descriptor lives in the context's initialisation tables, which this pass did not read; they are host software, not a hardware interface, and **unknown** here.
