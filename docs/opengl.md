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

- **established.** After the state above the routine sends `0x00014400` (primitive begin) with one operand, then four vertex words per rectangle and `0x00014001` (primitive end). A vertex is `0x8080c800` (Vertex2, integer) followed by x and y. For a rectangle read from an array of four 16-bit values (x1, y1, x2, y2) the four vertices are (x1, y1), (x1, y2), (x2, y2), (x2, y1) (`odsyDrawSolidRectsSingleBuffer`, line 12199 on: the loop body at label `.L01581710` loads the halfwords at +0, +2, +4, +6 of each 8-byte entry and stores them in that order). All rectangles of a call share one begin and end. The begin operand is register `t9`, and every path into the store (`odsy.s` line 12207) last sets it with `li t9,7` (lines 11728, 12007, 12039 and 12386; the only call in between, at line 12028, comes before the last of these). So the operand is 7, the same as the glyph quads below: **established**.
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

- **established.** The handler copies 80 bytes in from the caller (two 40-byte descriptors, one per buffer class: the first word of each is the flag word above), validates the caller with `RRM_CheckValidFault`, increments a per-process counter at +80 of the process record, and if the process is not attached to flow control attaches it (`gfx_flow_attach_me`, then writes the board's flow-config register 0x1074 with the credit target number in bits 16:12 and clears 0x107c; see `docs/buzz.md` section 1). It then unbinds and binds both drawable classes (`odsyUnbindDrawable` and `odsyBindDrawable` for classes 1 and 2 with each descriptor's flag word), copies the two binding records (below) into the reply, calls `odsyClipPush`, decrements the counter and copies 80 bytes out. When the process was already attached it skips the flow-control attach; when the drawable pointer is missing it logs and returns 1.
- **established.** The 80-byte argument is two 40-byte halves. Going in, the kernel reads only the first word of each half (offset 0 for class 1, offset 40 for class 2) and passes it to `odsyBindDrawable`. Coming out, each half is a copy of bytes 8 to 47 of that class's binding record (below): class 1 from per-process record offsets 472-511, class 2 from 520-559 (five doubleword loads each after the second bind call, `gfP_OdsyMakeCurrent`, `odsy_drawable.o` .text 0xa2c-0xd1f). The reply therefore starts with the flag word the caller sent.
- **inferred.** Class 1 is the draw drawable and class 2 the read drawable. `gf_OdsyValidateClip` builds the clip rectangles from class 1 only (the drawable at offset 120 of the resource node), and libGLcore builds the two flag words from two separate buffer configurations (context +0xc94/+0xce4 for class 1, +0xd34/+0xd84 for class 2).

### Drawable binding (`odsyBindDrawable`, `odsyUnbindDrawable`)

Source: IP30 `odsy_drawable.o`: `odsyBindDrawable` .text 0x138-0x3eb, `odsyUnbindDrawable` 0x3ec-0x53b, `gfP_OdsyPbufAssoc` 0xd20-0xee3. Also `odsy_mm_obj_new` (.text 0x2bc4-0x2e8b) and `odsy_mm_commit` (0x55a0-0x579b) in `odsy_pmm.o`. Below, *R* is the per-process record the make-current handler works on (offset 112 of the resource node; *R* + 224 points back to the node).

- **established.** `odsyBindDrawable(board, R, class, flags)` makes no PIO store and sends no FIFO word. It fills a 48-byte binding record at *R* + 464 (class 1) or *R* + 512 (class 2), and patches one word of *R*:

| Record offset | Content |
|---|---|
| 0 | state bits: bit 0 set on entry; bit 2 set when the drawable id was found in the board's drawable hash; bit 1 set when the bind completed. All three are cleared when the id is 0 |
| 4 | drawable id, word 100 of the resource node's drawable object (node offset 120 for class 1, 128 for class 2). The hash index is `((id >> 16) \| (id & 0xffff)) mod 13`, over the table at board record +0x8658 |
| 8 | the caller's flag word |
| 12 | first buffer: word 56 of a memory object |
| 16 | second buffer: word 56 of another memory object, or 0 |
| 20-35 | four more buffer words (word 56 of each), or 0 |
| 36 | not written by any IP30 kernel object (no store to *R* + 500 or *R* + 548) |
| 40 | halfword 44 of the first buffer's memory object |
| 42 | byte 17 of the first buffer's memory object |
| 43 | always written 0 |
| 44, 45 | bytes 19 and 17 of the first extra buffer's object (two-buffer path only) |

- **established.** The drawable found in the hash points, at its offset 24, to a buffer-set object. `gfP_OdsyPbufAssoc` attaches it (8-byte argument: drawable id, then a context-set id looked up with `OdsyLookupCSetId`). When flag bit 1 is set, the record takes its first buffer from the set's entry at offset 24 and zeroes the second buffer and the four extras. When the bit is clear, the first buffer comes from entry 16, the second from entry 32 and the extras from entries 40-64. Bind also takes a reference on the drawable (its word 32). `odsyUnbindDrawable` drops the reference, removes the drawable from the hash and frees it when the count reaches zero, and clears the record's bits 1:0 and id.
- **established.** Bind copies the first buffer word's low 31 bits into *R* + 140 (class 1) or *R* + 144 (class 2), keeping bit 31 of the old value.
- **established.** A buffer word is a board-memory location. `odsy_mm_commit` stores word 56 of a memory object as the first word of its allocated extent shifted left by 5. `odsy_mm_obj_new` copies the allocation description of the `MMalloc` call (private ioctl argument sizes, below) into the object, so halfword 44 is the description's width in 16-texel tiles and byte 17 its element-size byte.
- **established, libGLcore.** `__glOdysseyDriverMakeCurrent` (`ody_unixcontext.s`, N32 0x0d9d9d50-0x0d9d9fac) reads these reply offsets within each 40-byte half, by its `lw`, `lhu` and `lbu` offsets: 4 and 8 (first and second buffer), 12-24 (the four extras), 32 (halfword, the tile width), bytes 34, 35 and 37, and byte 36 as the selector 0, 1 or 2 for how many extra descriptor sets it builds. It never reads offset 28. So the libGLcore descriptor words above take: context +0x969c and +0x96a8, the first and second buffer locations; +0x96a0, the tile width; +0x96a4 bit 21, reply byte 35, which is record byte 43 and so always 0 as shipped.
- **inferred.** Block 0x017 is the drawable's buffer descriptor: word 0 the draw buffer's location, word 1 its width in tiles, word 3 the second buffer's location, word 2 format and mode fields. Basis: the sources above. What the board does with each field: **unknown** (the swap-time capture in `docs/display.md`).

### The clip push (`odsyClipPush`)

Source: IP30 `odsy_clip.o`, `odsyClipPush` .text 0x728-0xadb and `gf_OdsyValidateClip` 0x0-0x51f. **established** as the FIFO word order. Every store goes to board +0x110000 and is followed by `sync`:

1. The settle sequence of `BUZZ.h` section 5 (0x10443/250, 0x10046 x2, 0x10019, 0x10443/150, 0x10046 x4, 0x10443/250, 0x10046 x2).
2. `0x31008140`, `0x9000bda2`, `0x00010019`.
3. Block 0x041 (`0x10841`) with *R* + 108 and *R* + 112. `gf_OdsyValidateClip` fills their low 13 bits from the draw drawable's x and y (drawable offsets 104 and 108) and mirrors them into hardware-state offsets 11104 and 11108, the block 0x041 shadow of `docs/buzz.md` section 8.
4. Block 0x040 (`0x10840`) with one doubleword: board record word +1496 high, *R* + 4 low. *R* + 4 bit 16 is set when the draw drawable's word at offset 144 is nonzero, and bits 15:0 are then built from its words at offsets 136 and 152; otherwise bit 16 is cleared.
5. Block 0x04b (`0x1204b`) with four doublewords from *R* + 8 to *R* + 39. They are four rectangles of two words each. The first word carries x0 in bits 23:12 and y0 in bits 11:0, the second x1 and y1, inclusive (origin plus size minus 1). The top byte of each word is kept. `gf_OdsyValidateClip` first resets all four to (1, 1)-(0, 0), an empty rectangle, and then fills them one of three ways. When drawable word 144 is nonzero, rectangle 0 is the drawable's extent (offsets 104-116: x, y, width, height) clamped to at least 0 and at most the screen size at offsets 32 and 36 of the structure at board record +2136. When it is zero, and word 140 is zero and the rectangle count (offset 120) is 1, rectangle 0 is the unclamped extent. Otherwise rectangles 0 to count - 2 come from the drawable's list (16-byte entries x, y, width, height at the pointer at offset 128), and the last entry's width and height go to *R* + 116 and *R* + 120 instead. The loop has no bound of its own, so a list of more than five entries would write past *R* + 39. **inferred** that the window system never hands the kernel more than five.
6. One word `0x31008000 | (v & 0x3ff) | ((v >> 10) << 23)`, where v is hardware-state word 9888 (the sequencer-register form of `ucode/buzz_isa.md`, register 0x31).
7. When bit 27 of hardware-state word 6956 is clear, the state word `0x90008116`. Otherwise block 0x041 with two zeros, block 0x04b in the reset form `0, 0xffffff, 0, 0, 0, 0, 0, 0`, and block 0x040 with two zeros. libGLcore makes the same choice at make-current (above).
8. The settle tail (0x10443/150, 0x10046 x4, 0x10443/250, 0x10046 x2).
9. Eight doubleword register writes in the wide form of `BUZZ.h` section 5 (register id high, value low): 0x608 from *R* + 140, 0x60a from *R* + 148, 0x609 from *R* + 144, 0x60b from *R* + 152, 0x60c from *R* + 156, 0x60d from *R* + 160, 0x60e from *R* + 164, 0x60f from *R* + 168. The ids are built as `193 << 35`, `773 << 33`, `1545 << 32`, `1547 << 32`, `387 << 34`, `1549 << 32`, `775 << 33` and `1551 << 32`.

- **established.** *R* + 140 and *R* + 144 are the class 1 and class 2 first-buffer locations from the bind. `odsyPushBufferSelect` sets their bit 31 when that class has no drawable object or the object's halfword 18 is zero. *R* + 148 and *R* + 152 are written by `gf_OdsyValidateClip` as `(x & 0xffff) | (y << 16)` from words 8 and 12 of the draw and read drawables' geometry (drawable offset 96 on). *R* + 156 to *R* + 168 have no store in any IP30 `odsy*.o`: the search covered every word and doubleword store at those offsets.
- **inferred.** Registers 0x608 and 0x609 select the draw and read buffers and 0x60a and 0x60b give their window origins. 0x60c-0x60f are sent with whatever the record holds there, which no kernel code sets. Basis: the sources above. What the board does with them: **unknown**, and the same swap-time FIFO capture in `docs/display.md` would show the values sent.
- **established.** `odsyPushBufferSelect` (`odsy_drawable.o` .text 0x744-0xa2b) is called by `gfP_OdsySetDrawBuffer` with the 4-byte draw-buffer mask the caller sends (stored at *R* + 568). It computes a 4-bit buffer select from the mask, stores it with four context words into shadow memory, sends the settle sequence, block 0x024 (`0x10424`) with the select, the settle sequence again, and then only the 0x608 and 0x609 writes. The select is the mask unchanged when there is no draw drawable object or its halfword 18 is zero. When that halfword is nonzero, the two bit pairs are exchanged (select bits 1:0 from mask bits 3:2, bits 3:2 from mask bits 1:0). When the draw object's word 32 has any of bits 13:10 set, the select is 12 if any mask bit is set and 0 otherwise.

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
- **DMA draw (`odsyDrawImageDMA`)** sends those words and the pixel data goes by kernel DMA: the ioctl is `0x6f640006` (`gfP_OdsyMMxfr`, 80-byte argument both ways), which `odsyReadImage` and `odsyReadDeepImage` use for reads. The request layout is in `docs/kernel.md` (the `MMxfr` request); for the libGLcore senders the direction is flag bit 0, which the kernel turns into bit 24 of the transfer header; the X module's flag values were not read.
- **PIO draw (`odsyDrawImagePIO`)** sends the state words, a ten-operand state word `0xcf80a92f` with a Vertex2 `0x8080c800` (the destination quad), a word `0x00004570` (bit 14 set, one operand, id field 0x170) with one operand taken from a shadow word, then the bare word 0x71, and then the pixels in chunks of up to 15 words, each chunk led by a word built at run time as `0x00014000 | (count << 10) | id` and followed by `count` pixel words stored one at a time. So bit 14 (`BUZZ_CMD_PRIM`) is also set on the leading word of a pixel-data chunk. The id field of that word comes from a local variable: **unknown**; the meaning of the 0x170 block and of 0x71: **unknown** (`docs/open-questions.md`) (the FIFO stream of one small `XPutImage` with known pixel values).
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

The generic resource-manager ioctls 1000 to 1025 take 4 to 64 bytes (`docs/display.md` pass 10). Field layouts: most are **unknown** here; known layouts are in the sections of `docs/display.md`, `docs/kernel.md` and `docs/buzz.md` that name each call (the cursor request, the timing structure, the performance-statistics argument, the DMA transfer and the swap request). For the memory-manager calls: `MMalloc` copies in 72 bytes and uses word 1 (a set id, -1 meaning none), a halfword at +8 below 16 (the object type), bytes at +12 and +13, and words at +16, +20, +24, +28, +32 and +36 as the description it compares with an existing object of that type before creating one (`odsy_mm_obj_new`); **established**. The fields, **established** from the libGLcore sender `__glOdysseyCreatePMObj` (`ody_pmobj.s`, N32 0x0d9c67f0-0x0d9c69ec), the kernel's `odsy_mm_obj_new` and the texture caller `AllocateGfxMemForTexture` (`ody_texture.s`, N32 0x0d9d03b0-0x0d9d089f):

| Offset | Going in | Coming out |
|---|---|---|
| 0 | -1 | |
| 4 | group (set) id, -1 for a new group | the group id assigned |
| 8 | halfword object type (the caller's fourth argument; 0 from every caller read) | |
| 12-51 | a 40-byte description, copied word for word from the caller | |
| 52 | 0 | flag word; bit 1 means the value at 56 is valid |
| 56 | | doubleword stored into the group's entry selected by the halfword at 64 |
| 64 | | halfword entry index |

`odsy_mm_obj_new` copies description bytes 0-3 into object bytes 16-19, words 4, 8 and 12 into object words 20, 24 and 28, words 16, 20 and 24 into 32, 36 and 40, word 28 into 44 and word 32 into 48. For a texture level, `AllocateGfxMemForTexture` fills the description as:

| Description offset | Texture value |
|---|---|
| byte 0 | 4 for the detail texture target (0x8095), 20 for every other target |
| byte 1 | element size, `2 << c` where c is the size code `CalcTexelSizes` returns |
| 4, 8, 12 | `(16 - b) & 15` for the border width b of each axis: the image's offset within its first 16-texel tile, 0 with no border |
| 16, 20, 24 | width, height and depth in texels, border included |
| 28 | width in 16-texel tiles: twice the border plus the interior width over 16 rounded up, then rounded up to even |
| 32 | tile count: the width in tiles times the height in tiles (computed the same way), scaled by a power of two from `__glOdysseyImageLogBase2` when the depth is 2 or more |

The colour-table caller (`ody_lut.s`) sends byte 0 = 6, byte 1 = 8, width 256, height 16, depth 1. The accumulation caller (`ody_accumop.s`) sends byte 0 = 6 and byte 1 = 8 with sizes from the window. **inferred** that byte 0 is a kind code the kernel uses to choose the free list (`odsy_mm_reserve_texture`, the detail and image texture lists).

### Texture level records and memory

**established** from `__glOdysseyTextureActivate` and `docs/buzz.md` section 9: a texture object keeps a 16-word array of per-level memory values at object offset 1300 and a 68-byte record per level from offset 1364 (record offset 0 and 4 feed the level descriptor's top bits, record offset 28 holds the level's width in texels). Texture memory itself is allocated by `MMalloc` above (the kernel's memory manager keeps an object per texture level group), made resident by `MMmakeResident` and filled by `MMxfr` transfers.

**established**, the record's fields as `AllocateGfxMemForTexture` stores them (`ody_texture.s`, N32 0x0d9d03b0-0x0d9d089f, the stores at offsets 1364-1428 of the texture object plus 68 times the level):

| Record offset | Content |
|---|---|
| 0 | the board texture format chosen by `ChooseSuitableBuzzTexObjFormat` for the internal format |
| 4 | the element-size code from `CalcTexelSizes` (the `c` of the description above) |
| 8 | `CalcPixelModePixelFormat` of that code |
| 12 | width in 16-texel tiles (description word 28) |
| 16 | tile count (description word 32) |
| 20 | not stored here; the routine compares it across levels to find levels already in one group (the memory value of the per-level array) |
| 24 | the internal format argument |
| 28, 32, 36 | width, height and depth in texels |
| 40 | border width |
| 44-64 | six further words returned by `CalcTexelSizes` |

What the board makes of each format code is the hardware question; the codes and where they go are not.

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

**inferred** that the colour forms convert signed and unsigned integer colour state to the floats that glGet returns, with the three scale words being per-channel-group colour scales kept in the hardware-state area (`docs/opengl.md` make-current). Which GL query uses which descriptor is **established** from the callers. `__glOdysseyDoGet` (`ody_get.s`, N32 0x0d986380-0x0d986bf3) calls `__glOdyGetFromShadow` (0x0d986300-0x0d98637f) with slot 0 for `GL_CURRENT_INDEX` (0x0b01), 1 for `GL_CURRENT_COLOR` (0x0b00), 2 for `GL_CURRENT_NORMAL` (0x0b02), 4 for `GL_CURRENT_TEXTURE_COORDS` (0x0b03) and 6 for `GL_EDGE_FLAG` (0x0b43). `__glOdysseyUpdateRasterPos` (0x0d986d00-0x0d986dcb) reads the board with selector 3 and decodes slot 2 or 3 (by the context byte at 3220) into context +384, then slot 4 into context +288. The slot table starts at the pointer held at context +0x16d24, the shared buffer whose word 124 is the read-back sequence number (`docs/buzz.md` section 4); slot 6 therefore overlaps that word. `__glOdysseyInitKernel` (`ody_pmobj.s`, N32 0x0d9c63c0-0x0d9c664f) takes the pointer from the reply of `MMattach` (ioctl `0x6f640000`, reply doubleword at offset 40) and stores the pointer minus 2304 at context +27944, so the table follows a 2304-byte area, the size of the saved record that the kernel's `odsyResetHwShadow` clears. No libGLcore code stores into the table: the pointer is loaded in four places (`__glOdyGetFromHardware`, `__glOdyGetFromShadow`, `__glOdysseyUpdateRasterPos` and one routine in `ody_eval.s`), and each only reads through it. **inferred** that the kernel or the board fills it. Who writes the descriptors, and their values, are **unknown** (`docs/open-questions.md`): a dump of the first 140 bytes of the buffer after one glGet of each of the five names.
