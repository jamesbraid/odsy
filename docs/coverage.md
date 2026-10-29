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
| Command and FIFO formats | partial | `BUZZ.h`, `docs/buzz.md` | direct XIO interface | posted-write and textport submission reported by prior work. Written: class-1 word layout and COUNT (15 = 16 operands), kernel CFIFO and DFIFO ports, store ordering, settle sequence, textport primitives, flags/status0 bit names, FIFO level register, flow-control registers. Missing: user FIFO window, the second word family, COUNT 8-14, meaning of 0x043/0x046/0x019, water marks |
| DMA | none | `BUZZ.h`, `docs/buzz.md` | direct XIO interface |  |
| Interrupts | partial | `BUZZ.h`, `docs/buzz.md` | direct XIO interface | Flags register bit names written; interrupt routing not read |
| Reset | none | `BUZZ.h`, `docs/buzz.md` | direct XIO interface | initialisation sequence reported by prior work |
| Context save and restore | none | `BUZZ.h`, `docs/buzz.md` | direct XIO interface |  |
| Texture formats and filtering (incl. precision) | partial | `BUZZ.h`, `docs/buzz.md` | direct XIO interface | checked partial-window draw behaviour reported by prior work. Written: texture register blocks 0x16/0x13/0x30/0x1b/0x280+i, filter and wrap codes, LOD fields (S5.8), 12-bit border/env colour, S3.12 scale/bias, detail table (LOD -i/32, 0.12 weights), texel format table. Missing: sub-texel and filter-weight widths (not visible in the driver), level descriptor words, register carrying the detail table |
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
| Display and scanout | partial | `DISPLAY.h`, `docs/display.md` | display, colour and cursor | display-mode word with visual-format bits reported by prior work. Written: display FIFO word, mode table constants from odyssey.so, field split, X pixel encoding for 12/15-bit TrueColor; narrow reading confirmed as inferred (top N bits widened before the shared gamma map). Missing: id-to-depth binding, widening rule, bits 23:12 and 3:0 |

### Kernel driver

The IP30 kernel graphics driver and resource manager: attach, ioctls, context and swap handling.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | none | `odsy_kernel/include/odsy_kern.h`, `docs/kernel.md` | direct XIO interface |  |
| Command and FIFO formats | partial | `odsy_kernel/include/odsy_kern.h`, `docs/kernel.md` | direct XIO interface | Kernel textport and flow-control paths written in `BUZZ.h` section 5 |
| DMA | none | `odsy_kernel/include/odsy_kern.h`, `docs/kernel.md` | direct XIO interface |  |
| Interrupts | none | `odsy_kernel/include/odsy_kern.h`, `docs/kernel.md` | direct XIO interface |  |
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
