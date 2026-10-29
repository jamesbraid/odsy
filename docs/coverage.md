# odsy coverage map

Map of what the VPro (Odyssey, `odsy`) workspace has covered. It is the index later readers fill: each row is one area of one block. Block names follow `AGENTS.md`; a block's facts are labelled established, inferred or unknown in its header and docs, and this file says how far each area has got.

## Status key

`none`: nothing derived yet. `partial`: some facts written with their derivation, gaps remain. `done`: every fact in the area is written and labelled, with nothing known to be missing. A reader who changes a row updates it in the same commit as the doc or header that backs it.

"Owner" is the header or doc that holds the facts (a planned name until the file exists). "Datasheet topic" is the kind of hardware specification the area feeds. "Seed" records what prior work already reports so a reader can aim at it: it is a lead to verify against the binaries, not a finding of this repository.


## Priority

Open problems, most important first. Opus readers take these in order.

1. **Texture filter precision and texel paths.** Arithmetic precision of each texture filter, and every path a texel takes from memory to the pixel (formats, wrap, mip selection, borders). Start from libGLcore texture state setup and the kernel driver's texture memory handling.
2. **Command-FIFO formats for the textport and posted writes.** Layout of words accepted through the textport and through posted writes: packing, ordering, completion and flow control.
3. **Narrow 12/15-bit visual scanout.** Confirm or refute the reading of the display-mode word's visual-format field (bits 11:9) that selects the narrow 12- and 15-bit visuals, from the X module and the kernel driver.

## Blocks

### BUZZ

Graphics ASIC named in the board inventory: command intake, rasterisation, texture and framebuffer interface.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | none | `BUZZ.h`, `docs/buzz.md` | direct XIO interface |  |
| Command and FIFO formats | partial | `BUZZ.h`, `docs/buzz.md` | direct XIO interface | posted-write and textport submission reported by prior work. Written: class-1 word layout and COUNT (15 = 16 operands), kernel CFIFO and DFIFO ports, store ordering, settle sequence, textport primitives, flags/status0 bit names, FIFO level register, flow-control registers. Pass 2: settle sequence tied to glFlush and to the primitive-to-state boundary, per-vertex word family, user mapping table, doubleword register writes with water-mark candidates 0x6b0-0x6b3. Pass 3: post-filter scale/bias corrected to block 0x3b with its two other modes (0x30-0x33 set of four, 0x3d identity pair) selected by the context mode word 0x8ce8; the 0x3e offset block shown to carry zeros and the border flag tied to the level border; the five 256-word table uploads 0x200-0x24f mapped to context offsets and dirty bits; ids 0x230-0x23f are never fed by libGLcore. Pass 4: IP35 programs the same water-mark values and the same board-side flow registers, with a different host credit source (`docs/buzz.md` section 1). Missing: COUNT 8-14, hardware meaning of 0x043/0x046/0x019, confirmation of the water marks (see Reset), what the 0x230 and 0x220 tables hold |
| DMA | partial | `BUZZ.h`, `docs/buzz.md` | direct XIO interface | Written (pass 3): the two-doubleword physical-address kick with its address packing, odsyDMAOp's order of operations, the page-list entry format. Missing: meaning of ids 0xe01/0xe03 and block 0x5a, DMA wake-up logic, odsyDMAOps (the multi-op path), 128-byte entry layout |
| Interrupts | partial | `BUZZ.h`, `docs/buzz.md` | direct XIO interface | Flags register bit names written. Pass 3: flags handler decoded (enable register 0x1034, teardown set, initial enable mask, crossbar error handler). Missing: DMA-done and sync handlers' register effects, what bit 26 and bit 12 do |
| Reset | partial | `BUZZ.h`, `docs/buzz.md` | direct XIO interface | initialisation sequence reported by prior work. Written: odsyInitCfifo step by step (block 0x054, the five direct register writes, board-ID read at +0x201594, 12288-word microcode load from the kernel's buzz_ucode array). Pass 4: IP35 `odsyInitCfifo` compared: same stores and values, same 12288-word load. Missing: meaning of block 0x054, register 0x7f0 and the ID word, the water-mark registers' units |
| Context save and restore | none | `BUZZ.h`, `docs/buzz.md` | direct XIO interface |  |
| Texture formats and filtering (incl. precision) | partial | `BUZZ.h`, `docs/buzz.md` | direct XIO interface | checked partial-window draw behaviour reported by prior work. Written: texture register blocks 0x16/0x13/0x30/0x1b/0x280+i, filter and wrap codes, LOD fields (S5.8), 12-bit border/env colour, S3.12 scale/bias, detail table (LOD -i/32, 0.12 weights), texel format table. Pass 2: detail table travels as ids 0x240-0x24f. Pass 3: post-filter block id corrected, see BUZZ.h. Missing: sub-texel and filter-weight widths (not visible in the driver), level descriptor words, the second 256-word table at 0x230-0x23f |
| Display and scanout | none | `BUZZ.h`, `docs/buzz.md` | direct XIO interface |  |

### PB&J

Second ASIC named in the board inventory (version 1): role unknown.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | none | `PBJ.h`, `docs/pb&j.md` | direct XIO interface |  |
| Command and FIFO formats | none | `PBJ.h`, `docs/pb&j.md` | direct XIO interface |  |
| DMA | none | `PBJ.h`, `docs/pb&j.md` | direct XIO interface |  |
| Interrupts | none | `PBJ.h`, `docs/pb&j.md` | direct XIO interface |  |
| Reset | none | `PBJ.h`, `docs/pb&j.md` | direct XIO interface |  |

### Board memory

On-board memory: banks, timing and addressing as software sees them.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | none | `BUZZ.h`, `docs/board.md` | direct XIO interface | bank count and CAS latency come from board inventory reports |
| Reset | none | `BUZZ.h`, `docs/board.md` | direct XIO interface |  |

### Display output

Display channels, colour formats, cursor and scanout (single and dual channel).

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | partial | `DISPLAY.h`, `docs/display.md` | display, colour and cursor | Display-mode table address and colour-map entry format written |
| Command and FIFO formats | none | `DISPLAY.h`, `docs/display.md` | display, colour and cursor |  |
| Interrupts | none | `DISPLAY.h`, `docs/display.md` | display, colour and cursor |  |
| Display and scanout | partial | `DISPLAY.h`, `docs/display.md` | display, colour and cursor | display-mode word with visual-format bits reported by prior work. Written: display FIFO word, mode table constants from odyssey.so, field split, X pixel encoding for 12/15-bit TrueColor; narrow reading confirmed as inferred (top N bits widened before the shared gamma map). Pass 2: id-to-depth binding from odsyVisuals/odsyVisualPrivs; the X module's pixel-to-RGB conversion repeats top bits. Missing: hardware confirmation of repeat versus scale, bits 23:12 and 3:0 |

### Kernel driver

The IP30 kernel graphics driver and resource manager: attach, ioctls, context and swap handling.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | partial | `odsy_kernel/include/odsy_kern.h`, `docs/kernel.md` | direct XIO interface | Board record offsets used by the flow, display-mode and textport paths written |
| Command and FIFO formats | partial | `odsy_kernel/include/odsy_kern.h`, `docs/kernel.md` | direct XIO interface | Kernel textport and flow-control paths written in `BUZZ.h` section 5 |
| DMA | partial | `odsy_kernel/include/odsy_kern.h`, `docs/kernel.md` | direct XIO interface | Kernel DMA kick and page list written in `BUZZ.h` (pass 3). Missing: region record layout, odsyDMAWait/Done/Finish, diagnostic DMA (gfP_OdsyDIAGdma) |
| Interrupts | partial | `odsy_kernel/include/odsy_kern.h`, `docs/kernel.md` | direct XIO interface | High- and low-water handlers written. Pass 3: odsyFlagInterrupt, odsyXtErrorInterrupt and the start-up enable mask written in `BUZZ.h`. Missing: odsyDmaInterrupt, odsySsyncInterrupt and the retrace handler bodies, odsyGenlockInterrupt PLL values, odsy_teardown |
| Reset | none | `odsy_kernel/include/odsy_kern.h`, `docs/kernel.md` | direct XIO interface |  |
| Context save and restore | none | `odsy_kernel/include/odsy_kern.h`, `docs/kernel.md` | direct XIO interface |  |

### OpenGL core and X module

Userspace drivers: libGLcore command emission and the X server module (odyssey.so, glx.so).

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Command and FIFO formats | none | `libglcore/include/glcore_odsy.h, ddx/include/odsy_ddx.h`, `docs/opengl.md` | direct XIO interface |  |
| Context save and restore | none | `libglcore/include/glcore_odsy.h, ddx/include/odsy_ddx.h`, `docs/opengl.md` | direct XIO interface |  |
| Texture formats and filtering (incl. precision) | partial | `libglcore/include/glcore_odsy.h, ddx/include/odsy_ddx.h`, `docs/opengl.md` | direct XIO interface | Written: texture object shadow layout and context mirrors. Missing: level records, texture memory allocation |
| Display and scanout | none | `libglcore/include/glcore_odsy.h, ddx/include/odsy_ddx.h`, `docs/opengl.md` | direct XIO interface |  |

## Microcode (lower priority)

Rows for each microcoded engine. They rank below the Priority items: take them when a Priority item needs the program behind a command, or when the block rows above are done.

| Program | Behaviour to cover | Status | Owner | Datasheet topic |
|---|---|---|---|---|
| buzz_xform.bin | Transform program uploaded by the guest: instruction format, entry points, what it computes | none | `ucode/buzz_xform.md, BUZZ.h` | direct XIO interface |

Rows: 30.
