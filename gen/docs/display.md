# VPro (Odyssey) display registers (publish-safe subset)

<!-- generated from defs/display.toml by defs-gen - do not edit, change the source -->

Display-half registers of the Odyssey board: colour map, line and frame tables, cursor, DAC, timing generator, genlock and the display-mode table.

Unit `display`, macro prefix `DISPLAY`.
Default source: odsy binary analysis of the shipped display driver.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Address spaces

| Space | Offset unit | Description |
|---|---|---|
| display_regs | register index |  |

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `cmap` | 0x0 | w | 32 | 8192 | display_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `line_table` | 0x2000 | w | 32 | 1024 | display_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `frame_table` | 0x2400 | w | 32 | 128 | display_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `vtg_ctl` | 0x2481 | w | 32 |  | display_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `vtg_init_state` | 0x2482 | rw | 32 |  | display_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `vtg_chan_en` | 0x2483 | rw | 32 |  | display_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `cursor_image_a` | 0x2500 | w | 32 | 128 | display_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `cursor_pos` | 0x2580 | w | 32 |  | display_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `cursor_ctl` | 0x2581 | w | 32 |  | display_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `cursor_colors` | 0x2590 | w | 32 | 15 | display_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `cursor_image_b` | 0x25c0 | w | 32 | 64 | display_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `datapath_ctl` | 0x2600 | rw | 32 |  | display_regs | unknown | inferred | odsy binary analysis of the shipped display driver |
| `aux_ctl` | 0x2680 | w | 32 |  | display_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `dac_ctl` | 0x26c0 | rw | 32 |  | display_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `vtg_misc` | 0x27c0 | w | 32 | 12 | display_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `genlock_ctl` | 0x27cc | rw | 32 |  | display_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `genlock_status` | 0x27cd | r | 32 |  | display_regs | unknown | inferred | odsy binary analysis of the shipped display driver |
| `mode_table` | 0x2900 | w | 32 | 37 | display_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `cmap_unit_ctl` | 0x2929 | w | 32 |  | display_regs | unknown | inferred | odsy binary analysis of the shipped display driver |
| `cmap_override` | 0x292a | w | 32 | 3 | display_regs | unknown | inferred | odsy binary analysis of the shipped display driver |

### Register `cmap`

Colour map. One entry per register, indexed by the entry number in the
display FIFO header address. Each entry packs three 10-bit channels. The
software widens an 8-bit input channel c to 10 bits as (c << 2) | (c >>
6), repeating the top two bits. The map has 8192 entries: the published
diagnostic reference steps the red, green and blue index to 8191 and
calls that the maximum size, and the line table begins where the map
ends. No X visual declares more than 4096 entries. Bits 31:30 are never
set by any shipped writer. The driver waits for the display FIFO to
drain before a textport write; the X server path loads runs of entries
as multi-word FIFO packets of the retrace-synchronised kind.

Array of 8192 registers, stride 1.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:30 | `top` | unknown |  | odsy binary analysis of the shipped display driver |  |
| 29:20 | `r` | established |  | odsy binary analysis of the shipped display driver |  |
| 19:10 | `g` | established |  | odsy binary analysis of the shipped display driver |  |
| 9:0 | `b` | established |  | odsy binary analysis of the shipped display driver |  |

### Register `line_table`

Video timing line table, up to 2048 16-bit entries, two per word with
the even entry in the low half. A line type is a run of entries ending
at the first entry with bit 15 set. For the timed entries bits 14:8
behave as a duration in pixel clocks (the first timed run of the built-
in 1280 by 1024 timing is the horizontal sync width); this fails for
some later line types, so it is a partial reading. The low byte of an
entry is the output state for the span: which signal each bit drives is
unknown. The loader zeroes the whole table (1024 words) before it sends
a new one.

Array of 1024 registers, stride 1.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `e1_end` | established |  | odsy binary analysis of the shipped display driver |  |
| 30:24 | `e1_duration` | inferred |  | odsy binary analysis of the shipped display driver |  |
| 23:16 | `e1_levels` | unknown |  | odsy binary analysis of the shipped display driver |  |
| 15 | `e0_end` | established |  | odsy binary analysis of the shipped display driver |  |
| 14:8 | `e0_duration` | inferred |  | odsy binary analysis of the shipped display driver |  |
| 7:0 | `e0_levels` | unknown |  | odsy binary analysis of the shipped display driver |  |

### Register `frame_table`

Video timing frame table, up to 256 16-bit entries, two per word like
the line table. Entries come in pairs: the position of a line type in
the line table (in 32-bit words) and how many consecutive lines use it.
The list ends with a (0, 0) pair. The counts of a timing add up to its
total lines per frame. The loader zeroes 128 words before it sends a new
table.

Array of 128 registers, stride 1.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `repeat` | inferred |  | odsy binary analysis of the shipped display driver |  |
| 15:0 | `position` | inferred |  | odsy binary analysis of the shipped display driver |  |

### Register `vtg_ctl`

Video timing generator control word. The loader writes the timing
structure's control word with 0x42 ORed in, then writes 1 after the
clock is programmed. The genlock handler clears and sets bit 1 here as
the lock state changes (set while locked, inferred from the handler's
two branches).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1 | `locked` | inferred |  | odsy binary analysis of the shipped display driver |  |

### Register `vtg_init_state`

Timing generator initial-state word. The driver reads it back once at
start-up as its shadow and clears bit 5 of the shadow to blank the
screen. The loader writes the timing structure's initial-state word
here.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 5 | `blank_gate` | established |  | odsy binary analysis of the shipped display driver |  |

### Register `vtg_chan_en`

Timing generator channel-enable word. Blanking clears the three bits of
mask 0x23 (bits 5, 1 and 0) in the driver's shadow of it and unblanking
sets them again; the timing load writes the structure's word with the
driver's own bit 5 kept. The names are ours: what each bit gates is
unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 5 | `blank_gate_5` | established |  | odsy binary analysis of the shipped display driver |  |
| 1 | `blank_gate_1` | established |  | odsy binary analysis of the shipped display driver |  |
| 0 | `blank_gate_0` | established |  | odsy binary analysis of the shipped display driver |  |

### Register `cursor_image_a`

Cursor image block A, 128 words. A 32 by 32 cursor at 4 bits a pixel is
512 bytes, which is this block. Each pixel indexes the cursor colour
table; index 15 has no entry and inverts the pixel under the cursor. The
stored image is the bitmap with its two middle nibble columns swapped
and mirrored. The shipped driver names this block the glyph plane and
block B the alpha plane.

Array of 128 registers, stride 1.

### Register `cursor_pos`

Cursor position word: the cursor x minus the hotspot x in the high half
and y minus the hotspot y in the low half. The write goes out as an
immediate update, or as a retrace-synchronised one when bit 2 of the
cursor control word is set.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `x` | established |  | odsy binary analysis of the shipped display driver |  |
| 15:0 | `y` | established |  | odsy binary analysis of the shipped display driver |  |

### Register `cursor_ctl`

Cursor control word. Five named fields live in bits 4:0: the firmware
textport clears 4:2 and sets 1:0, so enable and delay enable are in 1:0
and the other three in 4:2 (established). Which field is which bit is
unknown from the binaries read; the layout below lists the guessed fields
from high to low and is a guess, not evidence. The kernel also toggles bit 5 around cursor requests; what
it does on the board is unknown. Start-up writes 0.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 5 | `toggle` | unknown |  | odsy binary analysis of the shipped display driver |  |
| 4 | `dual_head` | unknown |  | odsy binary analysis of the shipped display driver |  |
| 3 | `field_seq` | unknown |  | odsy binary analysis of the shipped display driver |  |
| 2 | `crosshair` | unknown |  | odsy binary analysis of the shipped display driver |  |
| 1 | `enable` | unknown |  | odsy binary analysis of the shipped display driver |  |
| 0 | `delay_enable` | unknown |  | odsy binary analysis of the shipped display driver |  |

### Register `cursor_colors`

Cursor colour table, 15 words for pixel values 0 to 14, in the colour-
map entry format. Software shifts an 8-bit value into the top eight bits
of each 10-bit field, leaving the low two bits zero.

Array of 15 registers, stride 1.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:30 | `top` | unknown |  | odsy binary analysis of the shipped display driver |  |
| 29:20 | `r` | established |  | odsy binary analysis of the shipped display driver |  |
| 19:10 | `g` | established |  | odsy binary analysis of the shipped display driver |  |
| 9:0 | `b` | established |  | odsy binary analysis of the shipped display driver |  |

### Register `cursor_image_b`

Cursor image block B, 64 words: 2 bits a pixel, the alpha plane that
decides where the cursor shows. Alpha 3 is an opaque cursor pixel and 0
transparent (inferred from the one shipped arrow image). Alpha 1 and 2
have no known fixed meaning.

Array of 64 registers, stride 1.

### Register `datapath_ctl`

Data-path control of the display chip. The timing load writes the
structure's word here and sets bit 7 when bit 6 of that word is set. The
blanking routine reads it back. The role is inferred from the order of
the driver's stores; bit meanings beyond the two named are unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7 | `bit7` | unknown |  | odsy binary analysis of the shipped display driver |  |
| 6 | `bit6` | unknown |  | odsy binary analysis of the shipped display driver |  |

### Register `aux_ctl`

Written once per timing load from a word of the timing structure that
sits next to the DAC and data-path words. What it controls is unknown.

### Register `dac_ctl`

DAC control. Blanking sets bit 0; the DAC-gain routine sets or clears
bit 1 with a read-modify-write; the timing load writes the structure's
DAC word. That bit 0 blanks is established by the routine; the polarity
of the gain bit is not known, so its name is inferred.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1 | `gain` | inferred |  | odsy binary analysis of the shipped display driver |  |
| 0 | `blank` | established |  | odsy binary analysis of the shipped display driver |  |

### Register `vtg_misc`

Twelve consecutive timing generator words, written in order from twelve
consecutive words of the timing structure. Bit meanings are unknown.

Array of 12 registers, stride 1.

### Register `genlock_ctl`

Genlock control. The timing load writes the structure's word here after
enabling the genlock interrupt source, and the genlock handler continues
only when bit 6 is set, which reads as a genlock-enabled flag (inferred).
While the clock is being reprogrammed
the word is held at 0.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 6 | `enabled` | inferred |  | odsy binary analysis of the shipped display driver |  |

### Register `genlock_status`

Genlock status, read only. The handler returns if bit 0 is clear. Bit 1
selects the branch that reprograms the clock part: set takes the "lost"
branch, clear the "got" one. The handler's own message calls bit 0 the
generator state; what bit 1 means beyond selecting the branch is unknown,
so the name valid is a guess.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1 | `lost` | inferred |  | odsy binary analysis of the shipped display driver |  |
| 0 | `valid` | inferred |  | odsy binary analysis of the shipped display driver |  |

### Register `mode_table`

Display-mode table: one mode word per display id, ids 0 to 36 seen in
the shipped tables (the upper bound is unknown). Type-7 (retrace-
synchronised) FIFO writes. Ids below 32 are the window ids that double-
buffer; bit 30 of the caller's mode is a software buffer flag the kernel
strips before the write. For ids below 32 the colour-map group is bits
8:4, for ids from 32 up it is bits 7:3. Every colour-index mode seen has
pixel_format 0, 3, 6 or 7 (not a channel width); across the TrueColor
modes the codes below are established as values and their mapping to
depth is inferred from which visual each table row serves. Colour-map
group 26 appears on every TrueColor mode and is read as the gamma map. A
published driver sets two bits among 31:25 (bits 31 and 28) in the one
word it writes to all entries; no shipped mode word has either set and
what they do is unknown.

Array of 37 registers, stride 1.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:25 | `top` | unknown |  | odsy binary analysis of the shipped display driver |  |
| 24 | `bit24` | unknown |  | odsy binary analysis of the shipped display driver |  |
| 23:12 | `layout` | unknown |  | odsy binary analysis of the shipped display driver |  |
| 11:9 | `pixel_format` | inferred | rgb10=1, rgb8=2, rgb5=3, rgb4=4, rgb10_alt=6 | odsy binary analysis of the shipped display driver |  |
| 8:4 | `cmap_group` | established | gamma=26 | odsy binary analysis of the shipped display driver |  |
| 3:0 | `low_code` | unknown |  | odsy binary analysis of the shipped display driver |  |

### Register `cmap_unit_ctl`

Colour-map unit configuration. Start-up writes 0; the timing load stores
a flag bit of the timing load, the same flag it stores to the second
scan configuration register in PBJ_DECODE.h.

### Register `cmap_override`

Red, green and blue overrides of the colour-map unit, in that order.
Start-up writes 0 to each.

Array of 3 registers, stride 1.

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `cmap` | 0x3ff80000 | example | r=1023, g=512, b=0, top=0 |
| `cursor_pos` | 0x640032 | example | x=100, y=50 |
| `mode_table` | 0x4b59a6 | vector | low_code=6, cmap_group=26, pixel_format=4, layout=1205 |
| `mode_table` | 0x4b5f00 | vector | low_code=0, cmap_group=16, pixel_format=7, layout=1205 |
| `mode_table` | 0x5213a6 | vector | low_code=6, cmap_group=26, pixel_format=1, layout=1313 |
| `mode_table` | 0x521590 | vector | low_code=0, cmap_group=25, pixel_format=2, layout=1313 |
| `mode_table` | 0x600da6 | vector | low_code=6, cmap_group=26, pixel_format=6, layout=1536 |
| `mode_table` | 0x9659a7 | vector | low_code=7, cmap_group=26, pixel_format=4, layout=2405 |
