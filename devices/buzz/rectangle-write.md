# The shortest 32-bit rectangle write, by PIO and by DMA

What a client sends to put a rectangle of 32-bit pixels on a board that is already running (microcode loaded, command FIFO configured, 1280 x 1024 scan-out: [the PROM hand-off](../../software/firmware/prom-board-handoff.md)). The PIO sequence is the one OpenBSD's text console runs on real hardware, restated for a rectangle; the field readings come from the IRIX senders. Labels: **software expectation** (a public driver does it and works; not proof of the board's contract, [buzz/README.md](README.md) section 11), **established** (IRIX code read, address given), **inferred**, **unknown**. All words are 32-bit stores to the command FIFO port at board +0x110000 unless stated. Words are listed as `value` with the class-1 layout of [BUZZ.h](BUZZ.h) section 1 (bits 9:0 id, 13:10 operand count, bit 14 primitive bit).

A 32-bit pixel is one word, red in bits 7:0, green in 15:8, blue in 23:16, bits 31:24 zero (OpenBSD `ri_rpos` 0, `ri_gpos` 8, `ri_bpos` 16 for depth 32). That is "ABGR bytes": format 0xc, type 2 in the IRIX format and type codes ([pixel-paths.md](pixel-paths.md), "Host-to-board table"). **software expectation**, and **established** that IRIX's colour code 0xc is ABGR.

## By PIO

Per rectangle of width W, height H at (x, y). OpenBSD passes y counted from the top of the screen; the kernel textport sends `height - y + 1` ([BUZZ.h](BUZZ.h), "Textport primitives"), so the orientation follows the transform state each driver sets before drawing, not the PROM's (**inferred**).

1. **Wait for room.** Poll status0 (+0x1064) until bit 17 (command FIFO below low water) is set. OpenBSD times out after one second of 1-microsecond polls. **software expectation**; the bit is **established** ([BUZZ.h](BUZZ.h) `STATUS0_CFIFO_LW`).
2. **State block 0x053, then settle.** `0x00011453` then `2, 0, 0, 0, 0`. IRIX sends the same word with five operands from its context before every image draw ([opengl.md](../../software/opengl/opengl.md), "The X module's image paths"); the values OpenBSD sends are the ones it was tested with. Then the full settle: `0x00010443`, `0xfa`, two `0x00010046`, `0x00010019`, `0x00010443`, `0x96`, four `0x00010046`, `0x00010443`, `0xfa`, two `0x00010046`. **software expectation.**
3. **Select the microcode entry.** `0x2900812f` (sequencer register 0x29 = 0x12f, the routine entered by the ten-operand block below). **established** ([ucode/buzz_routines.md](../../software/ucode/buzz_routines.md), "How a command word reaches a routine").
4. **Begin.** `0x00014400`, `0x0000000a` (primitive begin, type 10).
5. **Destination.** `0xcf80a92f` followed by ten IEEE single words: `0, 0, 0, 0, x, y, 0, x + W, y + H, 0`. Operands 4 and 5 are one corner, 7 and 8 the opposite corner, 6 and 9 the depth (zero when depth testing is off). **established** for the operand roles in IRIX's DMA image path ([opengl.md](../../software/opengl/opengl.md), "The raster position and the depth of a glDrawPixels image"); the exact words are **software expectation** from OpenBSD.
6. **Anchor vertex.** `0x8080c800`, `0`, `0` (Vertex2 integer at the origin).
7. **The two unnamed set-up words, first form.** `0x00004570`, then operand A, then `0x00000071`. A = `0x0f00104c` for ABGR bytes.
8. **Rows.** For each of the H rows, the same pair in its row form, then the pixels: `0x00004570`, row operand R, `0x00000071`, then bursts: a lead word `0x00014011 | (n << 10)` followed by n pixel words, n at most 14 (OpenBSD) or 15 (IRIX), repeated until the row is done. R = `0x0fd1104c` for a row of 16 pixels or less in OpenBSD.
9. **End.** `0x00014001`, then the quick settle (`0x00010443`, `0xfa`, two `0x00010046`).
10. **Restore.** OpenBSD puts the entry register back and clears block 0x053: `0x290080d6`, `0x00011453`, five zero operands, `0x00010405`, `0x00002000`, settle. **software expectation.**

### What the fields are

- **established** (`odsyDrawImagePIO`, `odyssey.so` 6.5.30m, 0x167e5b4 to 0x167ee00, and `SendPixelsAsUserPIO`, libGLcore 0x0d9b9680; see [pixel-paths.md](pixel-paths.md)): the word `0x4570` is block id 0x170 with one operand; operand bits 4:0 are the format code and 8:5 the type code copied from the image header's word 7 (here format 0xc, type 2), bit 12 is always set, bit 16 and bits 23:20 appear in the per-row form, bits 18:17 hold the pad `(4 - row end address) & 3` (zero for whole words), and bits 27:24 the burst count field. The lead word's id (bits 9:0) is the per-visual format record's word 6 and its count is in bits 13:10.
- **The format record's id for 32-bit colour.** **established:** 0x11, the id of every 12-, 15- and 24-bit TrueColor and DirectColor visual (records 28 to 43 of the 53-entry table at `odyssey.so` 0x017373e0; 0x10 is the 8-bit colour-index id, 0x12 the 30-bit id). OpenBSD's lead word `0x00014011 | n << 10` is exactly id 0x11. The id picks the data port the burst is written to: 0x10, 0x11 and 0x12 are **inferred** to be three pixel-data ports (index, 8 bits per channel, 10 bits per channel).
- **The two unnamed words.** Block 0x170 (word `0x4570`) takes the operand described above; the bare word 0x71 follows it in every sender found (OpenBSD, `SendPixelsAsUserPIO`, `odsyDrawImagePIO`), both for the first group and for every row. **inferred** (no software names either): 0x170 sets the transfer format for the data that follows, and 0x71 is a class-0 word (bit 14 clear, no operands, id 0x71) that starts the host-fed transfer, by analogy with class-0 word 0x2031, which starts the board's own pixel copy. Treat both as a fixed pair: send them verbatim, once for the first group and once per row. **unknown** what the board does if the count fields disagree with the pixels sent.
- **The count fields.** OpenBSD sends 0x0f in bits 27:24 and 0x0d in bits 23:20 whatever the glyph width (8 to 16 pixels), and it works. IRIX computes them from the burst size (`n - (n >> 4)`, giving 15 for a 16-pixel burst), which does not give 0x0d for any width, so the board does not appear to use them as exact pixel counts. **established** for both senders' values; **unknown** how the board uses them.

### Safe generalisation

OpenBSD's glyph cell is a quad up to 16 pixels wide and one font height tall, with one row unit per pixel row. A rectangle wider than 16 pixels should be cut into cells of at most 16 pixels, each with its own steps 4 to 8 and its own destination quad: that is exactly the shape that has run on real boards. A single quad with W above 16 and rows of W pixels follows the IRIX senders (which send whole rows, up to 15 pixels per burst) but has no public driver behind it: **inferred**. The test that would settle it is a W = 17 to 64 case on an emulator model or board: the hardware contract is **unknown**.

## By DMA

The DMA path moves an image through the same pipeline as the PIO path and needs the same board state (steps 2 and 3 of the PIO list, and the window and clip state IRIX sends before an image draw: blocks 0x04b, 0x053 and 0x022, [opengl.md](../../software/opengl/opengl.md)). The part the NT driver adds is a host-memory descriptor and a kick.

1. **Descriptor.** One 128-byte entry per piece of at most 0x24000 bytes: a 32-byte header of eight words, then the page list, 8 bytes a page, at most twelve pages of at most 16 KB ([dma/README.md](../dma/README.md)).
   - word 0: bit 29 and the drawable code 0x10000010 for the bound draw drawable (0x10000019 for a read), bits 31:30 kept;
   - word 1: x in bits 15:0, y in 31:16; word 3: width and height the same way;
   - word 4: bit 12 set, bits 18:16 the destination pixel-size code, 23:20 and 27:24 the field codes, bit 28 for a drawable, bit 31 front; a recorded X server upload to a 24-bit window used `0x8223305a`;
   - word 5: host row stride less the row bytes; word 6: row bytes;
   - word 7: format in bits 4:0 (0xc), type in 8:5 (2), host bytes per pixel code in 18:16 (1 for 4 bytes), and the driver's forced top byte 0x32 for a write (bits 29, 28 and 25); the recorded upload used `0x3201004c`.
   **established** for the field layout of the libGLcore and kernel builders ([pixel-paths.md](pixel-paths.md), "The header"; [kernel.md](../../software/kernel/kernel.md), "The MMxfr request"); the recorded words are an **inferred** trace of Xsgi, not code.
2. **Sync words.** `0x00010658`, `0x00120000` (block 0x258), then store 0x800 to +0x101c to clear the done flag. **established** ([kernel.md](../../software/kernel/kernel.md), "128-byte entries").
3. **Kick**, one pair per entry: the two doublewords of [dma/README.md](../dma/README.md), "Kick, tag and address form".
4. **End of the request.** After the last kick, `0x00010a5a` with two operands: slot | 0x8000 and the tag `0x5a00 | (counter & 0xff)`. **established.**
5. **Wait.** Poll the halfword at the tag slot for the tag, or take the DMA interrupt for reads. **established** driver side; the board side is **inferred**.

What a DMA write needs and the PIO path does not: a drawable binding. The IRIX header names the bound draw drawable (word 0), which the kernel and library set up with block 0x017 and registers 0x608 to 0x60f at make-current ([opengl.md](../../software/opengl/opengl.md), "Drawable binding"). Whether a write with no binding, as in a boot console, lands in the displayed buffer is **unknown**; the NT design's choice of PIO first is the right one. What would settle it: a command-stream trace of the X server drawing one image on a board, with the drawable block in it, compared with a DMA header sent after only the PROM's state.

## Not covered

- Rows of 8-bit colour-index pixels (id 0x10) and 30-bit pixels (id 0x12) differ in the lead-word id and the shift applied to the counts (`odsyDrawImagePIO` stores 1 for id 0x12 and 0 for the others); only the 32-bit ABGR case is written out here.
- The glyph path's block 0x043/0x046 settle counts and the 0x04e and 0x04f stipple blocks belong to the text path ([opengl.md](../../software/opengl/opengl.md)).
