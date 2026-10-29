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
| Registers and fields | partial | `BUZZ.h`, `docs/buzz.md` | direct XIO interface | Pass 7 (`docs/buzz.md` section 8): every PIO offset the kernel loads or stores, with access type and users; the complete list of command-stream register blocks the kernel replays as context, with operand counts and shadow offsets; a second three-layout block set (0x028-0x02b, 0x03a, 0x038). Missing: field layouts of most blocks and of the 0x4000 group, contents of the +0x100000/+0x120000/+0x200000 windows |
| Command and FIFO formats | partial | `BUZZ.h`, `docs/buzz.md` | direct XIO interface | posted-write and textport submission reported by prior work. Written: class-1 word layout and COUNT (15 = 16 operands), kernel CFIFO and DFIFO ports, store ordering, settle sequence, textport primitives, flags/status0 bit names, FIFO level register, flow-control registers. Pass 2: settle sequence tied to glFlush and to the primitive-to-state boundary, per-vertex word family, user mapping table, doubleword register writes with water-mark candidates 0x6b0-0x6b3. Pass 3: post-filter scale/bias corrected to block 0x3b with its two other modes (0x30-0x33 set of four, 0x3d identity pair) selected by the context mode word 0x8ce8; the 0x3e offset block shown to carry zeros and the border flag tied to the level border; the five 256-word table uploads 0x200-0x24f mapped to context offsets and dirty bits; ids 0x230-0x23f are never fed by libGLcore. Pass 4: attribute and vertex word family decoded (slot, count and type id; `BUZZ_ATTR_WORD`, `docs/buzz.md` section 2). IP35 programs the same water-mark values and the same board-side flow registers, with a different host credit source (`docs/buzz.md` section 1). Pass 7: per-slot default attribute words from odsyResetHwShadow, adding opcodes 0x1c, 0x26, 0x33, 0x34, 0x39, 0x3a (`docs/buzz.md` section 8); the 0x230 table's place in the shadow and its sharpen-table candidate (`BUZZ.h` section 2). Missing: COUNT 8-14, hardware meaning of 0x043/0x046/0x019, confirmation of the water marks (see Reset), what the 0x230 and 0x220 tables hold, ids 0x1a-0x1d and 0x26-0x2e of the attribute family, the 0x8e/0x90 state words |
| DMA | partial | `BUZZ.h`, `docs/buzz.md` | direct XIO interface | Written (pass 3): the two-doubleword physical-address kick with its address packing, odsyDMAOp's order of operations, the page-list entry format. Missing: meaning of ids 0xe01/0xe03 and block 0x5a, DMA wake-up logic, odsyDMAOps (the multi-op path), 128-byte entry layout |
| Interrupts | partial | `BUZZ.h`, `docs/buzz.md` | direct XIO interface | Flags register bit names written. Pass 3: flags handler decoded (enable register 0x1034, teardown set, initial enable mask, crossbar error handler). Pass 6: the five interrupt sources and their handlers named; routing registers 0x34, 0x3c, 0x5c, 0x1044-0x105c; DMA-done, sync and retrace handler bodies (`docs/buzz.md` section 6). Missing: what bit 26 and bit 12 do, the routing registers' bit meanings, IP35 diff |
| Reset | partial | `BUZZ.h`, `docs/buzz.md` | direct XIO interface | initialisation sequence reported by prior work. Written: odsyInitCfifo step by step (block 0x054, the five direct register writes, board-ID read at +0x201594, 12288-word microcode load from the kernel's buzz_ucode array). Pass 4: IP35 `odsyInitCfifo` compared: same stores and values, same 12288-word load. Missing: meaning of block 0x054, register 0x7f0 and the ID word, the water-mark registers' units |
| Context save and restore | partial | `BUZZ.h`, `docs/buzz.md` | direct XIO interface | Written (pass 4): the save request doubleword at +0x118000, its slot field and null value, the +2300 completion word and timeout, the save-area address registers +0x4004/+0x400c, the block 0x050 select, the list of blocks odsyRestoreRaster/Gfe/RestartContext replay. Pass 5 (`docs/buzz.md` section 4): save request carries the incoming slot (corrected); completion word written by no kernel code, inferred board-written; block 0x5a tag write-back; saved record's vertex ring and command-word offsets as the restore walkers read them; the four words after block 0x050 are class-0 writes; libGLcore's glGet path through `__glOdyGetFromHardware`. Pass 6 (`docs/buzz.md` section 7): IP35 diffed against IP30, protocol and constants identical, differences are the read-back address and credit waits; make-current path in `docs/opengl.md`. Missing: hardware confirmation of the save target and completion write, remaining `odsyRestoreVB` slots and `odsyRestoreXform` words |
| Texture formats and filtering (incl. precision) | partial | `BUZZ.h`, `docs/buzz.md` | direct XIO interface | checked partial-window draw behaviour reported by prior work. Written: texture register blocks 0x16/0x13/0x30/0x1b/0x280+i, filter and wrap codes, LOD fields (S5.8), 12-bit border/env colour, S3.12 scale/bias, detail table (LOD -i/32, 0.12 weights), texel format table. Pass 2: detail table travels as ids 0x240-0x24f. Pass 3: post-filter block id corrected, see BUZZ.h. Pass 4: max-clamp field (TEXMODE1-3 bits 16:0) derivation, default and wrap-not-saturate behaviour written. Missing: sub-texel and filter-weight widths (not visible in the driver), level descriptor words, the second 256-word table at 0x230-0x23f, how the board uses the clamp value |
| Display and scanout | partial | `BUZZ.h`, `docs/display.md` | direct XIO interface | Pass 7 (`docs/display.md`, scanout path): BUZZ carries the display FIFO, its level and the PB&J read-back; per-WID swap registers 0x10b4-0x10d4 decoded from odsySwapBuffer with the 32-WID limit and the retrace-count hold; frame buffer layout in 16 x 16 tiles from odsyConfigFb. Missing: how pixels move from BUZZ memory to PB&J, register-level confirmation of the swap bits |

### PB&J

Second chip named in the board inventory (gfxinit prints "PB&J version" from bits 2:0 of display address 0x2701). Inferred to be the display back end the display FIFO feeds (`PBJ.h` section 1).

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | partial | `PBJ.h`, `docs/pbj.md` | direct XIO interface | Pass 7: identification, the 14-bit display address space with its read-back window (board +0x220000 + 8a + 4), the address list from every kernel header, identification word 0x2701, I2C register pairs, blanking and DAC bits, scanout base, pitch and depth registers (`PBJ.h` sections 1-4, 6). Missing: most bit fields, top of the colour map, 0x2600/0x2680/0x27c0-0x27cb/0x2b00 |
| Command and FIFO formats | partial | `PBJ.h`, `docs/pbj.md` | direct XIO interface | Pass 7: the display FIFO as a 32-bit word stream with multi-word headers packed two words per doubleword (setColors, timing tables); type 3 against type 7 uses, with a weak inferred vertical-blank reading (`PBJ.h` section 2). Missing: confirmation of type 7, other type values, FIFO depth |
| DMA | partial | `PBJ.h`, `docs/pbj.md` | direct XIO interface | Pass 7: negative result, no kernel path moves data to or from PB&J except by PIO; scanout source registers only (`PBJ.h` section 7). Missing: how PB&J fetches pixels from BUZZ memory |
| Interrupts | partial | `PBJ.h`, `docs/pbj.md` | direct XIO interface | Pass 7: genlock handler decoded with its status and control registers 0x27cd/0x27cc and the lost/got clock programming; the flags bits that concern the display (`PBJ.h` sections 5, 7). Missing: what raises GEN_LOCK, DBE_OFLOW and retrace on the chip |
| Reset | partial | `PBJ.h`, `docs/pbj.md` | direct XIO interface | Pass 7: odsyInitDBE start-up order and odsyConfigFb's scanout writes (`PBJ.h` section 6). Missing: any PB&J-specific reset, meaning of the 0x2b00 writes and of 0x2700 = 0x6d3e0 |

### Board memory

On-board memory: banks, timing and addressing as software sees them.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | partial | `BUZZ.h`, `docs/board.md` | direct XIO interface | bank count and CAS latency come from board inventory reports. Pass 6: both read from the strap word 0x106c bits 31:24 with size and clock variant; revision word +4; memory configuration word 0x1004 (`docs/board.md`). Missing: memory organisation and addressing, other bits of 0x1004, identity of +0x23380c |
| Reset | partial | `BUZZ.h`, `docs/board.md` | direct XIO interface | Pass 6: the 0x1004 write sequence with its bit 5 pulse and 400 us delays (`docs/board.md`). Missing: what bit 5 and bit 8 do in hardware |

### Display output

Display channels, colour formats, cursor and scanout (single and dual channel).

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | partial | `DISPLAY.h`, `docs/display.md` | display, colour and cursor | Display-mode table address and colour-map entry format written |
| Command and FIFO formats | partial | `DISPLAY.h`, `docs/display.md` | display, colour and cursor | Pass 6 (`docs/display.md`, cursor section): the cursor request and its display-FIFO words (position 0x2580, control 0x2581, image 0x2500 and 0x25c0, colours 0x2590) with the X module's 32 x 32 buffer and colour packing. Pass 7: an overlay search of the X module, its conclusion withdrawn against an observed overlay visual (`docs/display.md`, overlay section). Missing: image pixel encoding, control word bits, the two ddx overlay flags' fields |
| Interrupts | partial | `DISPLAY.h`, `docs/display.md` | display, colour and cursor | Pass 6: retrace interrupt is source 3 of five; its handler reads +0x10d4 and drives per-slot swap registers +0x10b4/+0x10bc/+0x10c4/+0x10cc (`docs/buzz.md` section 6). Pass 7: genlock handler in `PBJ.h` section 5. Missing: what raises it, register semantics |
| Display and scanout | partial | `DISPLAY.h`, `docs/display.md` | display, colour and cursor | display-mode word with visual-format bits reported by prior work. Written: display FIFO word, mode table constants from odyssey.so, field split, X pixel encoding for 12/15-bit TrueColor; narrow reading confirmed as inferred (top N bits widened before the shared gamma map). Pass 2: id-to-depth binding from odsyVisuals/odsyVisualPrivs; the X module's pixel-to-RGB conversion repeats top bits. Pass 4 (timing, `docs/display.md`): the `.vfo` container and field names, the 320-byte kernel timing structure and the two built-in timings, the load and VTG-control entry points. Pass 5 (`docs/display.md`): 320-byte structure fields tied to display-FIFO addresses and clock registers through `odsyLoadTimingTable`; frame table format and line-table packing and addresses; `.vfo` offsets of the geometry and clock values. Pass 6 (`docs/display.md`, line-table structure): end bit and trailer, the types' mapping to vertical sync, back porch, active and front porch checked on both built-in timings, entry duration rule with its counter-evidence, bit 13 candidate. Pass 7: `.vfo` field names tie timing words 236-248 to the genlock clock fields and suggest a signal-level reading of the line-table low byte (`docs/display.md`). Missing: hardware confirmation of repeat versus scale, bits 23:12 and 3:0, which signal each low-byte bit drives, the event entries' meaning, the unread structure words and branches, `.vfo` to structure conversion in the X module, retrace and genlock handlers, `odsy_dvi` (IP35) |

### Kernel driver

The IP30 kernel graphics driver and resource manager: attach, ioctls, context and swap handling.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | partial | `odsy_kernel/include/odsy_kern.h`, `docs/kernel.md` | direct XIO interface | Board record offsets used by the flow, display-mode and textport paths written |
| Command and FIFO formats | partial | `odsy_kernel/include/odsy_kern.h`, `docs/kernel.md` | direct XIO interface | Kernel textport and flow-control paths written in `BUZZ.h` section 5 |
| DMA | partial | `odsy_kernel/include/odsy_kern.h`, `docs/kernel.md` | direct XIO interface | Kernel DMA kick and page list written in `BUZZ.h` (pass 3). Missing: region record layout, odsyDMAWait/Done/Finish, diagnostic DMA (gfP_OdsyDIAGdma) |
| Interrupts | partial | `odsy_kernel/include/odsy_kern.h`, `docs/kernel.md` | direct XIO interface | High- and low-water handlers written. Pass 3: odsyFlagInterrupt, odsyXtErrorInterrupt and the start-up enable mask written in `BUZZ.h`. Pass 6: odsyDmaInterrupt, odsySsyncInterrupt, odsyDMAWakeup, odsyDMAIrptWakeup and odsyRetraceHandler bodies written (`docs/buzz.md` section 6). Pass 7: odsyGenlockInterrupt decoded, its clock values come from the timing structure (`PBJ.h` section 5). Missing: odsy_teardown, rrm retrace callbacks |
| Reset | partial | `odsy_kernel/include/odsy_kern.h`, `docs/kernel.md` | direct XIO interface | Pass 6: attach and probe (`docs/kernel.md`), odsyReset order of operations including the register zeroing list and the 0x1004 and 0x100c writes. Missing: bit meanings of 0x100c, 0x4014, 0x4044, host-chip widget words, odsyInitDBE, gf_OdsyInitialize/Start, IP35 diff |
| Context save and restore | partial | `odsy_kernel/include/odsy_kern.h`, `docs/kernel.md` | direct XIO interface | Save and switch protocol written in `BUZZ.h` and `docs/buzz.md` section 4 (pass 4). Pass 5: walker vertex selection and the record offsets they read. Missing: full record layout, `odsyRestoreXform` |

### OpenGL core and X module

Userspace drivers: libGLcore command emission and the X server module (odyssey.so, glx.so).

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Command and FIFO formats | partial | `libglcore/include/glcore_odsy.h, ddx/include/odsy_ddx.h`, `docs/opengl.md` | direct XIO interface | Pass 6 (`docs/opengl.md`): X module 2D paths. Solid rectangle fill (quads of Vertex2 words), rectangle copy (blocks 0x058/0x053 and the 8-operand class-0 id 0x031 write), terminal-emulator text (stipple blocks 0x04e/0x04f plus quads), window descriptor block 0x04b, colour index versus RGB forms and the 0x22/0x23 sequencer pair. Missing: image, mono-image and ImageGlyphBlt paths, begin operands of the fill, fields of blocks 0x022/0x017/0x04b, libGLcore sender catalogue |
| Context save and restore | partial | `libglcore/include/glcore_odsy.h, ddx/include/odsy_ddx.h`, `docs/buzz.md` section 4 | direct XIO interface | Pass 5: hardware-shadow ioctl and the glGet read-back through block 0x5a. Pass 6 (`docs/opengl.md`): make-current and lose-current both sides, the private ioctl table. Missing: the 20-byte shadow descriptors, argument layouts of the ioctls, the fields of block 0x017 |
| Texture formats and filtering (incl. precision) | partial | `libglcore/include/glcore_odsy.h, ddx/include/odsy_ddx.h`, `docs/opengl.md` | direct XIO interface | Written: texture object shadow layout and context mirrors. Missing: level records, texture memory allocation |
| Display and scanout | partial | `libglcore/include/glcore_odsy.h, ddx/include/odsy_ddx.h`, `docs/display.md` | direct XIO interface | Pass 7 (`docs/display.md`, scanout path): the X module's scanout functions and the private ioctl each sends; libGLcore's buffer-swap FIFO sequence and ioctl 1005. Missing: the kernel handler of 1005, WID assignment, bit 23 of block 0x017 word 3 |

## Microcode (lower priority)

Rows for each microcoded engine. They rank below the Priority items: take them when a Priority item needs the program behind a command, or when the block rows above are done.

| Program | Behaviour to cover | Status | Owner | Datasheet topic |
|---|---|---|---|---|
| buzz_xform.bin | Transform program uploaded by the guest: instruction format, entry points, what it computes | partial | `ucode/buzz_isa.md`, `ucode/disasm/buzz_xform.lst` | direct XIO interface |
| buzz_ucode (kernel array) | Older build of the same program as buzz_xform.bin (99 records fewer at 792, 429 fewer at the end). Written: 96-bit word (94 bits used), 2048-word RAM, load words 0x27/0x40, sequencer registers 0x20-0x35, AddProgram entry lists, overlay window 1848-2047, end mark in bits 1:0 with four delay slots, provisional field split, listing. The unloaded tail (records 2048-2265) is overlay code that no kernel path sends (`ucode/buzz_ucode.md`). Pass 6 (`ucode/buzz_isa.md`): sequencer registers 0x22/0x23 read as a colour-mode pair from host-side use; no operation named, with the failed attempts recorded. Pass 7 (`ucode/buzz_isa.md`): gfxinit identified as the loader of buzz_xform.bin through ioctl 108; why no host routine can name an operation, with two candidate stones. Missing: any operation's meaning, the list's path to the board, token-to-entry dispatch, bits 1:0 = 3, the `ffffffff` trailer | partial | `ucode/buzz_ucode.md`, `ucode/buzz_isa.md`, `ucode/disasm/buzz_ucode_kernel.lst` | direct XIO interface |

Rows: 31.
