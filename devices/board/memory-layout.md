# Board memory: address units, the start-up layout and the allocation request

Release IRIX 6.5.30m, IP30 `odsy_brdmgr.o` (`odsyConfigFb`) and `odsy_pmm.o` (`odsyMMinit`, `mm_init_freespace`, `odsy_mm_obj_new`, `odsy_mm_reserve`, `odsy_mm_commit`, `mm_get_extent`, `mm_check_enode`), the N32 `libGLcore.so` senders named below, and the IRIX 6.5.7 standalone library read from the IRIX source tree (`irix-6.5.7/stand/arcs/lib/libsk/graphics/ODYSSEY/odsy_sdram.h`, `odsy_sdram.c`, `odsy_brdmgr.c`), restated in our words. Labels: **established** (whole routine or source passage read), **inferred**, **unknown**. The 6.5.7 library is the older and simpler memory manager of the same family, so it supports a layout the 6.5.30m binary was checked against, not a fact about the 6.5.30m allocator's internals. Written for a driver author who places window, texture and pixel buffers in board memory himself.

## Units

- **Pixel size is bytes per pixel, not bits. established.** The allocation request's pixel-size byte must be 2, 4, 8, 16 or 32 (`odsy_mm_obj_new` rejects anything else; the 6.5.7 library says the same and calls the field `bpp`). The frame buffer's depth argument is 8, 16 or 32 in the same unit, and its depth code is log2(bytes) - 1: 2, 3 or 4 (`odsyConfigFb`, [display/README.md](../display/README.md)). Earlier readings of bits per pixel were wrong.
- **A tile is 16 x 16 pixels, so 256 x bytes per pixel: 512 bytes at 2 bytes per pixel, 8 KB at 32. established.**
- **A board address is counted in 16-byte units, and 512 bytes is the unit of every extent and size. established** by three sites that agree: the 6.5.7 source turns a tile number into an address by shifting left 9 and a linear byte offset by shifting that left 4; `mm_init_freespace` turns the memory size in MB into extents with `size << 20 >> 9`, so one extent is 512 bytes; `odsy_mm_commit` stores the extent's start times 32 as the object's location, which is the same quantity in 16-byte units. The entries in [driver-functions.md](../../software/kernel/driver-functions.md) that call the extent size "32-byte units" mean this 512-byte unit (the diagnostic text "failed attempt to get %d free 2Bpp tiles" names it too); an object's size field is the tile count of its pixel size times the 2-byte-tile ratio (a left shift of 0 to 4 for 2 to 32 bytes).
- **inferred.** Location fields are 29 bits of these 16-byte units wherever a drawable or level descriptor carries them ([opengl/opengl.md](../../software/opengl/opengl.md): block 0x017 words 0 and 3 and level word 0 keep their top three bits for other use). A 29-bit field of 16-byte units spans 8 GB; the board's memory size (in MB, board record +252, from the strap that `odsyGatherInfo` decodes) is far below it.

## The layout `odsyConfigFb` makes, and what is reserved

Memory from address 0 up, set when the frame buffer is configured (`gfP_OdsyBRDMGRconfigFb`, private ioctl 27, 52-byte request) and, with an 8-bit depth at 1280 x 1024, at start-up. **established** (`odsyConfigFb` of 6.5.30m, [driver-functions.md](../../software/kernel/driver-functions.md), and the 6.5.7 `odsyConfigFb` with its start-up diagram).

| Region | Starts at | Size | Notes |
|---|---|---|---|
| Command FIFO | 0 | 128 KB (256 tiles of 512 bytes, 16 tiles of 8 KB) | fixed; the register 0x6b1 value 256 is this count ([interrupts-fifo-reset.md](interrupts-fifo-reset.md)) |
| Frame buffer | the next multiple of 4 tiles of 8 KB (so 128 KB) | `ceil(width/16)` columns, rounded up to even, times `ceil(height/16)` rows, in 8 KB tiles for depth 32, half that (rounded up) for 16, a quarter (rounded up) for 8 | one object for the whole screen; the scan-out base 0x2801, pitch 0x2807 (columns) and depth 0x2809 are written from it |
| Overlay and window-id buffer | the next 4-tile multiple | 2 bytes per pixel: the same tile count over 16, rounded up | scan-out base 0x2800 |
| Coarse Z | the next 4-tile multiple | zero in 6.5.30m and 6.5.7 (the slot is cleared) | nothing allocated |
| Accumulation buffers | the next 4-tile multiple | none, two or four buffers (request word +12 = 0, 1, 2), 8 bytes per pixel each, a quarter of the frame buffer's 32-byte tile count each | per-buffer start words from +1632 of the board record |
| Free zone | the next 4-tile multiple | the rest of the memory | pixmaps, textures, imaging scratch and pixel buffers, all by `MMalloc` below |

- **Worked case, established as arithmetic.** 1280 x 1024: 80 columns x 64 rows = 5120 tiles; frame buffer at depth 32 is 5120 tiles of 8 KB = 40 MB, at depth 8 it is 1280 tiles = 10 MB; the overlay buffer is 320 tiles = 2.5 MB; each accumulation buffer is 1280 tiles = 10 MB. A request whose end, in bytes, reaches the memory size is refused with no register written (6.5.30m: a severity 4 log and result -1).
- **What is reserved at the start. established** for the command FIFO. **inferred** for the memory manager's own figure: `odsyMMinit` stores 8192 at record +216 (and at +488 and +624), and `mm_init_freespace` takes the budget as memory size in extents less that figure divided by 32, which is 256 extents of 512 bytes = 128 KB, the command FIFO exactly. The binary never names the reservation; the equality of the numbers is the basis.
- **No allocation is made for a GL window. inferred.** The X module builds the drawable descriptor (block 0x017) for 2D drawing from the board record's words 1 and 2, the frame buffer start and the overlay start that `odsyConfigFb` returned in request words +20 and +24 ([xsgi/odyssey-so-reads.md](../../software/xsgi/odyssey-so-reads.md): "builds and sends the 0x11017 descriptor from board words 1 or 2"), and a window's front and back buffers are selected by the per-window-id buffer bits at +0x10c4 and +0x10cc ([display/README.md](../display/README.md)), not by separate objects. So a window needs the screen's frame buffer and overlay regions and a window id, and nothing else. Pixmaps, textures and pixel buffers are the objects that allocate. **Not read:** a make-current of a plain window, to see that the reply's first buffer word equals the frame buffer's start. **Would settle it:** `gfP_OdsyMakeCurrent`'s binding record for a window with no pixel buffer (the first buffer word at record offset 12) compared with the frame buffer start word at board record +1360.

## The allocation request (`MMalloc`, private ioctl 1, 72 bytes in and out)

The 40-byte description at request offsets 12 to 51 is the object's attribute set. Offsets and meanings **established** from `__glOdysseyCreatePMObj`, `AllocateGfxMemForTexture` and the kernel's `odsy_mm_obj_new`/`odsy_mm_obj_alloc`; field names are the 6.5.7 library's (`type`, `bpp`, offsets `ox`, `oy`, `oz`, extents `dx`, `dy`, `dz`, strides `stride_s`, `stride_t`), matched to the offsets by the order `odsy_mm_obj_new` copies them.

| Request offset | Field | Value a caller sends |
|---|---|---|
| 0 | -1 | |
| 4 | group (share group member) id | -1 for a new group, else the id a previous call returned |
| 8 | halfword: slot in the group's table of 16 objects (below 16) | the caller's fourth argument; 0 from every caller read |
| 12 | type byte | 3 pixel buffer, 4 image texture, 20 detail texture, 6 scratch (colour table, accumulation); any other type is refused with 12 (`odsy_mm_reserve`). The texture sender sends 20 for target 0x8095 and 4 for every other target |
| 13 | bytes per pixel | 2, 4, 8, 16 or 32; textures send `2 << c` for the size code `CalcTexelSizes` returns |
| 16, 20, 24 | offsets of the image inside its first tile, per axis | `(16 - border) & 15`, 0 with no border |
| 28, 32, 36 | extents in pixels, border included | the first at most 65536; all nonzero |
| 40 | tiles per row (`stride_s`) | 0 lets the kernel choose; else at least `ceil((dx + ox)/16)` rounded up to even |
| 44 | tiles per slice (`stride_t`) | 0 lets the kernel choose; else at least rows times `stride_s` |
| 52 | 0 in; flag word out, bit 1 set when the location at 56 is valid | |
| 56 | location out: the extent start times 32, in 16-byte units | stored only once the object is placed |
| 64 | halfword out: entry index | |

- **Note on the offsets.** The table gives request offsets, which are the description's offsets plus 12. [driver-functions.md](../../software/kernel/driver-functions.md) and [opengl/opengl.md](../../software/opengl/opengl.md) give the same fields relative to the description: type at +0, bytes per pixel at +1, tile offsets at +4, +8 and +12, extents at +16, +20 and +24, strides at +28 and +32. `odsy_mm_obj_new` copies them to object words +16 (bytes 0 to 3), +20, +24, +28, +32, +36, +40, +44 and +48 in that order.
- **Arithmetic. established.** Tiles per row: `ceil((dx + ox)/16)` rounded up to even. Tiles per slice: `ceil((dy + oy)/16)` times that. Tiles in the object: tiles per slice times `(dz + oz)`. The object's reserved size in extents is that tile count shifted left by 0 to 4 for 2 to 32 bytes per pixel, rounded up to a 16 KB multiple (32 extents) when it is 16 KB or more. A smaller caller-supplied stride than the minimum is refused (the 6.5.30m object logs and returns 0).
- **Placement. established.** `mm_get_extent` takes the first free extent that is at least the size and whose start, rounded up to an alignment of 2, 4, 8, 16 or 32 extents chosen by the pixel size, still leaves room; it refuses a node where a neighbour of a different pixel size would share a 32-extent block with either end (`mm_check_enode`), splits the node, and on failure evicts other objects (three passes, never a pixel buffer in the first two) before giving up. Which of the five alignments goes with which pixel size was not read.
- **Residency. established.** `MMalloc` only reserves budget (`odsy_mm_reserve`: the object's size against the memory budget, the host-lockable-page limit and a per-type share-group budget); `MMmakeResident` (ioctl 3, 8 bytes: the low and high slot of a range) calls `mm_get_extent` for every object in the range and restores a backing copy. A level descriptor or drawable descriptor may carry the location only after that call has stored it at request offset 56.

## What stays unknown

- **Which alignment goes with which pixel size,** and whether the 6.5.30m allocator keeps the 6.5.7 library's 8 KB placement unit for 32-byte pixels. **Would settle it:** the `.data` table that `mm_check_enode` indexes, read next to its index computation.
- **The layout of the 6.5.30m free zone's first free node** (`mm_init_freespace` writes one node at record +1640): start and size were read as arithmetic only; the start may be the end of the accumulation buffers and not 128 KB. **Would settle it:** a read of the node's first two words after `odsyConfigFb` has run.
- **The 6.5.30m extents of the screen group's five embedded objects** (slots 0 to 5 of `odsyMMinit`) against the regions above: only the 6.5.7 library's `screen_grp` binding of frame buffer, overlay, coarse Z and accumulation to slots is read.
