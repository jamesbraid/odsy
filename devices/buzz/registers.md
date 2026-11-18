<!-- generated from devices/buzz/registers.toml by defs-gen - do not edit, change the source -->
<!-- SPDX-License-Identifier: BSD-3-Clause -->
<!-- defs-gen 2 -->
<!-- input sha256 9212b1606db82cebfd4681c259fb3ac512901bc5b768a8ef4e3706b473697ffe -->

# VPro (Odyssey) "Buzz" graphics ASIC: command and image

Command opcodes and the image, copy, pixel-mode, texture-level and sampler words of the Odyssey geometry and pixel engine's command stream.

Unit `buzz`, macro prefix `BUZZ`.
Default source: odsy binary analysis of the shipped GL library and kernel command senders.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `ALPHA_TEST` | 32 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `COPY_CONTROL` | 32 | inferred | odsy binary analysis of the shipped GL library and kernel command senders |
| `COPY_WINDOWS` | 32 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `FRAME_PIXEL` | 32 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `IMAGE_BOARD_REF` | 32 | inferred | odsy binary analysis of the shipped GL library and kernel command senders |
| `IMAGE_CORNER` | 32 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `IMAGE_ROW_BYTES` | 32 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `IMAGE_SIZE` | 32 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `IMAGE_WINDOW` | 32 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `PIXEL_MODE_DESCRIPTOR_0` | 32 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `PIXEL_MODE_DESCRIPTOR_1` | 32 | unknown | odsy binary analysis of the shipped GL library and kernel command senders |
| `POST_FILTER_VALUE` | 32 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `READ_HEADER` | 32 | unknown | odsy binary analysis of the shipped GL library and kernel command senders |
| `SAMPLER` | 32 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `TEXTURE_LEVEL_DESCRIPTOR_0` | 32 | unknown | odsy binary analysis of the shipped GL library and kernel command senders |
| `TEXTURE_LEVEL_DESCRIPTOR_1` | 32 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `TEXTURE_LEVEL_DESCRIPTOR_2` | 32 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `WRITE_HEADER` | 32 | inferred | odsy binary analysis of the shipped GL library and kernel command senders |

### Word `ALPHA_TEST`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 14:12 | `func` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 11:0 | `reference` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |

### Word `COPY_CONTROL` (CopyControl)

COPY operand 7 beyond the write header: flags set around the walk. formerly COPY_W7.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `dst_x_in_src` | inferred |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 30 | `dst_y_in_src` | inferred |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 29:28 | `clamp_off` | inferred |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 23:20 | `dst_first_field_code` | established |  | odsy binary analysis of the shipped GL library and kernel command senders | formerly dst_field_a |
| 19:16 | `size_code` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |

### Word `COPY_WINDOWS` (CopyMixed)

COPY operand 2: the two window words and the destination's second field code. formerly COPY_W2.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `dst_front` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 27:16 | `dst_window` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 15:12 | `dst_second_field_code` | established |  | odsy binary analysis of the shipped GL library and kernel command senders | formerly dst_field_b |
| 11:0 | `src_window` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |

### Word `FRAME_PIXEL`

Frame pixel as stored in the vendor simulator's reference frames: red in
bits 31:24, green 23:16, blue 15:8 and alpha 7:0, each component the
colour in 0..1 scaled as floor(256 c) and limited to 255. established
for the colours the reference frames draw (0.1 to 1.0), by rebuilding
the stored frames with a matching checksum; the frames are the
simulator's output, not a board's. Values below 0.1 are not tested.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:24 | `red` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 23:16 | `green` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 15:8 | `blue` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 7:0 | `alpha` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |

### Word `IMAGE_BOARD_REF` (ImageWord0)

Image header word 0: board reference. formerly HDR_W0.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:30 | `kept` | inferred |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 29 | `window_rel` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 28:0 | `ref` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |

### Word `IMAGE_CORNER` (ImageWord1)

Image header word 1: x and y of the smaller corner. formerly HDR_W1.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `y` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 15:0 | `x` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |

### Word `IMAGE_ROW_BYTES` (ImageWord6)

Image header word 6: row bytes. formerly HDR_W6.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 19:0 | `row_bytes` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |

### Word `IMAGE_SIZE` (ImageWord3)

Image header word 3: width and height. formerly HDR_W3.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `height` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 15:0 | `width` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |

### Word `IMAGE_WINDOW` (ImageWord2)

Image header word 2: the window word. formerly HDR_W2.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:0 | `window_word` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |

### Word `PIXEL_MODE_DESCRIPTOR_0` (PixelModeW0)

Pixel-mode descriptor, first word. formerly PIXMODE_W0.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:0 | `window_word` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |

### Word `PIXEL_MODE_DESCRIPTOR_1` (PixelModeW1)

Pixel-mode descriptor, second word. formerly PIXMODE_W1.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 27 | `bit27` | unknown |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 22 | `storage_bit22` | inferred |  | odsy binary analysis of the shipped GL library and kernel command senders | formerly storage3 |
| 21 | `bit21` | unknown |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 19 | `index_class` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 15:13 | `size_field` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 12:10 | `storage` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 9:7 | `layout` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 6:4 | `field_format` | established | fieldfmt (index=0, one=2, two=3, rgba=5, rgba_short_a=6) | odsy binary analysis of the shipped GL library and kernel command senders |  |

### Word `POST_FILTER_VALUE` (PostFilterWord)

A scale or bias word of the post-filter block. formerly PF.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:0 | `value` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |

### Word `READ_HEADER` (ReadHeader)

Image header word 4: class and code, field geometry, pixel size.
The read header's word 4, and the COPY source description. formerly HDR_W4.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `front` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 28 | `drawable` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 27:24 | `second_field_code` | established |  | odsy binary analysis of the shipped GL library and kernel command senders | formerly field_b |
| 23:20 | `first_field_code` | established |  | odsy binary analysis of the shipped GL library and kernel command senders | formerly field_a |
| 19 | `pixel_size_bit19` | unknown |  | odsy binary analysis of the shipped GL library and kernel command senders | formerly pixel_size_b19 |
| 18:16 | `pixel_size` | inferred | psize (2b=0, 4b=1, 8b=2, 16b=3, 12b=4, 1b=5, 6b=6, 3b=7) | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 15:13 | `size_field` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 12 | `bit12` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 7:3 | `code` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 2:0 | `class` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |

### Word `SAMPLER` (SamplerWord)

The sampler word: operand 4 of the texture-mode block.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 28 | `no_offset` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 25:23 | `activation` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 22:20 | `table_format` | established |  | odsy binary analysis of the shipped GL library and kernel command senders | formerly table_fmt |
| 18 | `image_flag_bit18` | established |  | odsy binary analysis of the shipped GL library and kernel command senders | formerly image_flag18 |
| 17 | `trilinear` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 14 | `image_flag_bit14` | established |  | odsy binary analysis of the shipped GL library and kernel command senders | formerly image_flag14 |
| 13:12 | `wrap_s` | established | sampler_wrap (repeat=0, edge=1, clamp=2, border=3) | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 11:10 | `wrap_t` | established | sampler_wrap (repeat=0, edge=1, clamp=2, border=3) | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 9:8 | `wrap_r` | established | sampler_wrap (repeat=0, edge=1, clamp=2, border=3) | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 7:5 | `min` | established | sampler_min (nearest=0, linear=1, nearest_mip_nearest=2, linear_mip_nearest=3, nearest_mip_linear=4, linear_mip_linear=5) | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 4:1 | `mag` | established | sampler_mag (nearest=0, linear=1, detail=2, detail_alpha=3, detail_color=4) | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 0 | `colour_table` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |

### Word `TEXTURE_LEVEL_DESCRIPTOR_0` (TexLevelW0)

Texture level descriptor, word 0. formerly TEXLEVEL_W0.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:29 | `kept` | unknown |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 28:0 | `addr` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |

### Word `TEXTURE_LEVEL_DESCRIPTOR_1` (TexLevelW1)

Texture level descriptor, word 1. formerly TEXLEVEL_W1.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:30 | `size_code` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 28:26 | `offset_code` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 25:20 | `format_index` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 11:0 | `pitch` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |

### Word `TEXTURE_LEVEL_DESCRIPTOR_2` (TexLevelW2)

Texture level descriptor, word 2. formerly TEXLEVEL_W2.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:0 | `bits` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |

### Word `WRITE_HEADER` (WriteHeader)

Image header word 7: format, type, size and path control.
The write header's word 7, and the COPY destination control. formerly HDR_W7.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 30 | `differs` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 27 | `transform` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 24 | `read_dir` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 18:16 | `pixel_size` | established | psize (2b=0, 4b=1, 8b=2, 16b=3, 12b=4, 1b=5, 6b=6, 3b=7) | odsy binary analysis of the shipped GL library and kernel command senders | formerly psize |
| 15:13 | `size_field` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 10 | `swap` | inferred |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 9 | `expand` | established |  | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 8:5 | `type` | established | type (byte=2, short=3, int=4, 332=5, 4444=6, 5551=7, 1010102=8, 565=10, byte_12=11, 565_class10=12) | odsy binary analysis of the shipped GL library and kernel command senders |  |
| 4:0 | `format` | established | fmt (depth_stencil=0, index=1, luminance=2, intensity=3, red=4, green=5, blue=6, alpha=7, lum_alpha=8, rgb=9, rgba=11, abgr=12, bgr=13, bgra=17) | odsy binary analysis of the shipped GL library and kernel command senders |  |

## Enums

### Enum `fieldfmt`

Pixel-mode field format (bits 6:4).

| Label | Value | Grade | Source |
|---|---|---|---|
| `index` | 0 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `one` | 2 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `two` | 3 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `rgba` | 5 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `rgba_short_a` | 6 | established | odsy binary analysis of the shipped GL library and kernel command senders |

### Enum `fmt`

Write header format code (bits 4:0).

| Label | Value | Grade | Source |
|---|---|---|---|
| `depth_stencil` | 0 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `index` | 1 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `luminance` | 2 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `intensity` | 3 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `red` | 4 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `green` | 5 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `blue` | 6 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `alpha` | 7 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `lum_alpha` | 8 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `rgb` | 9 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `rgba` | 11 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `abgr` | 12 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `bgr` | 13 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `bgra` | 17 | established | odsy binary analysis of the shipped GL library and kernel command senders |

### Enum `psize`

Pixel-size code (three bits, 18:16).

| Label | Value | Grade | Source |
|---|---|---|---|
| `2b` | 0 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `4b` | 1 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `8b` | 2 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `16b` | 3 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `12b` | 4 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `1b` | 5 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `6b` | 6 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `3b` | 7 | established | odsy binary analysis of the shipped GL library and kernel command senders |

### Enum `sampler_mag`

Sampler magnification mode (bits 4:1).

| Label | Value | Grade | Source |
|---|---|---|---|
| `nearest` | 0 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `linear` | 1 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `detail` | 2 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `detail_alpha` | 3 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `detail_color` | 4 | established | odsy binary analysis of the shipped GL library and kernel command senders |

### Enum `sampler_min`

Sampler minification filter (bits 7:5).

| Label | Value | Grade | Source |
|---|---|---|---|
| `nearest` | 0 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `linear` | 1 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `nearest_mip_nearest` | 2 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `linear_mip_nearest` | 3 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `nearest_mip_linear` | 4 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `linear_mip_linear` | 5 | established | odsy binary analysis of the shipped GL library and kernel command senders |

### Enum `sampler_wrap`

Sampler wrap mode.

| Label | Value | Grade | Source |
|---|---|---|---|
| `repeat` | 0 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `edge` | 1 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `clamp` | 2 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `border` | 3 | established | odsy binary analysis of the shipped GL library and kernel command senders |

### Enum `type`

Write header type code (bits 8:5).

| Label | Value | Grade | Source |
|---|---|---|---|
| `byte` | 2 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `short` | 3 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `int` | 4 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `332` | 5 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `4444` | 6 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `5551` | 7 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `1010102` | 8 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `565` | 10 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `byte_12` | 11 | established | odsy binary analysis of the shipped GL library and kernel command senders |
| `565_class10` | 12 | established | odsy binary analysis of the shipped GL library and kernel command senders |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `ALPHA_TEST_FUNC_ALWAYS` | 0x7 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `ALPHA_TEST_FUNC_EQUAL` | 0x2 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `ALPHA_TEST_FUNC_GEQUAL` | 0x6 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `ALPHA_TEST_FUNC_GREATER` | 0x4 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `ALPHA_TEST_FUNC_LEQUAL` | 0x3 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `ALPHA_TEST_FUNC_LESS` | 0x1 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `ALPHA_TEST_FUNC_NEVER` | 0x0 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `ALPHA_TEST_FUNC_NOTEQUAL` | 0x5 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `ATTR_SLOT6_LOW_HALF` | 0xd02f | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly ATTR_LOW_COUNT4_OP2F. the low half (count 4, opcode 0x2f) of the clipped-vertex senders' slot 6 word; the four-operand words of slots 7 to 9 carry opcodes 0x30 to 0x32 |
| `ATTR_VERTEX3F_WORD` | 0x8080cc03 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `BLK_ALPHA_TEST` | 0x1e | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `BLK_GAMMA_FIT` | 0x45 | established | odsy binary analysis of the shipped GL library and kernel command senders | id, word 0x00010845, two operands; gamma-ramp fitting parameters, role inferred, field split unknown |
| `BLK_IMAGE_SELECTS` | 0x1d | established | odsy binary analysis of the shipped GL library and kernel command senders | id; sent to select the window destination of a host-to-board pixel move; roles of the selects inferred |
| `BLK_PIO_PIXELS` | 0x170 | established | odsy binary analysis of the shipped GL library and kernel command senders | id; leads a host-written pixel burst: the word 0x4570, then the bare word 0x71, then the pixel groups; fields unknown beyond the copied format and type bits of the image header's word 7 |
| `BLK_SLOT_PAIR` | 0x1ea | established | odsy binary analysis of the shipped GL library and kernel command senders | id, four operands (the first operand of two slot entries, each with bit 31 flipped as a second operand); role inferred |
| `BLK_TABLE_DATA` | 0x1a2 | established | odsy binary analysis of the shipped GL library and kernel command senders | id; the 16-word data port of the table that sequencer register 0x31 indexes |
| `CLASS0_CLEAR_ADDR` | 0x1c0 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `CLASS0_CLEAR_WORDS` | 0x240 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `CLASS0_ID_ADDR` | 0x340 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `CLASS0_ID_DATA` | 0x341 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `CLASS0_WRITE_ADDR` | 0x740 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `CLASS0_WRITE_DATA` | 0x741 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `CMD_ALPHA_TEST` | 0x1041e | established | odsy binary analysis of the shipped GL library and kernel command senders | see ALPHA_TEST above |
| `CMD_BUFFER_SELECT` | 0x10424 | established | odsy binary analysis of the shipped GL library and kernel command senders | one operand, role inferred as the draw-buffer select |
| `CMD_CLASS1_PREFIX` | 0x10000 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `CMD_CLIP_ORIGIN_PAIR` | 0x10840 | established | odsy binary analysis of the shipped GL library and kernel command senders | two operands, part of the clip push, fields unknown |
| `CMD_CONTEXT_SELECT` | 0x10850 | established | odsy binary analysis of the shipped GL library and kernel command senders | two operands: slot in bits 18:12 with the low bits 0xf, then 0 |
| `CMD_DEPTH_FUNC` | 0x10420 | established | odsy binary analysis of the shipped GL library and kernel command senders | one operand: bits 2:0 comparison (GL enum minus 0x200) |
| `CMD_DMA_PRELUDE` | 0x10658 | established | odsy binary analysis of the shipped GL library and kernel command senders | one operand, sent before a rectangle copy and DMA transfers |
| `CMD_DRAWABLE_ORIGIN` | 0x10841 | established | odsy binary analysis of the shipped GL library and kernel command senders | two operands: draw drawable x and y in the low 13 bits |
| `CMD_FIRST_TEXLEVEL` | 0x10406 | established | odsy binary analysis of the shipped GL library and kernel command senders | one operand: index of the first level descriptor read |
| `CMD_FLUSH` | 0x10019 | established | odsy binary analysis of the shipped GL library and kernel command senders | no operand, role inferred |
| `CMD_FOG` | 0x1181a | established | odsy binary analysis of the shipped GL library and kernel command senders | six operands: colour pair then function coefficients |
| `CMD_FRAG_LIGHT_MODEL` | 0x10c1c | established | odsy binary analysis of the shipped GL library and kernel command senders | three operands |
| `CMD_IMAGE_CHAIN_SETUP` | 0x10842 | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly CMD_BLK_042. two operands, image-chain set-up |
| `CMD_LINE_POINT_SIZE` | 0x1084a | established | odsy binary analysis of the shipped GL library and kernel command senders | word; two operands, role inferred |
| `CMD_LINE_STIPPLE` | 0x10c48 | established | odsy binary analysis of the shipped GL library and kernel command senders | three operands: 16-bit pattern twice, then repeat minus one |
| `CMD_LOD_LIMITS` | 0x11013 | established | odsy binary analysis of the shipped GL library and kernel command senders | four operands: S bias, T bias, minimum and maximum LOD |
| `CMD_LOGIC_OP` | 0x10422 | established | odsy binary analysis of the shipped GL library and kernel command senders | one operand: bits 3:0 (GL enum minus 0x1500) |
| `CMD_PAD` | 0x10046 | established | odsy binary analysis of the shipped GL library and kernel command senders | no operand, role inferred |
| `CMD_PATH_SELECT` | 0x10405 | established | odsy binary analysis of the shipped GL library and kernel command senders | one operand: clip planes, texture target, colour count |
| `CMD_POLYGON_MODE` | 0x10415 | established | odsy binary analysis of the shipped GL library and kernel command senders | one operand: bits 3:2 front, 1:0 back (GL enum minus 0x1b00) |
| `CMD_POLYGON_OFFSET` | 0x10458 | established | odsy binary analysis of the shipped GL library and kernel command senders | one operand: bits 24:0 signed depth offset |
| `CMD_POSTFILTER_SCALE_BIAS` | 0x1083d | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly CMD_POSTFILTER_M3. two operands, identity scale 0x1000 and bias 0 by default |
| `CMD_POSTFILTER_WORD_0` | 0x12030 | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly CMD_POSTFILTER_M1_0 |
| `CMD_POSTFILTER_WORD_1` | 0x12031 | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly CMD_POSTFILTER_M1_1 |
| `CMD_POSTFILTER_WORD_2` | 0x12032 | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly CMD_POSTFILTER_M1_2 |
| `CMD_POSTFILTER_WORD_3` | 0x12033 | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly CMD_POSTFILTER_M1_3 |
| `CMD_PRIM_BEGIN` | 0x14400 | established | odsy binary analysis of the shipped GL library and kernel command senders | bit 14 set, id 0, one operand: the primitive type |
| `CMD_PRIM_END` | 0x14001 | established | odsy binary analysis of the shipped GL library and kernel command senders | no operand |
| `CMD_RANGE_BLOCK` | 0x10854 | established | odsy binary analysis of the shipped GL library and kernel command senders | word; two operands. The operands sent at start-up are the pair below; the reading as the bounds of a range is inferred from the values alone |
| `CMD_RASTER_ENABLE` | 0x10404 | established | odsy binary analysis of the shipped GL library and kernel command senders | one operand, section 9 bits below |
| `CMD_RECT_COPY` | 0x11453 | established | odsy binary analysis of the shipped GL library and kernel command senders | five operands, sent ahead of a rectangle copy |
| `CMD_REGION_BLOCK_0` | 0x13c28 | established | odsy binary analysis of the shipped GL library and kernel command senders | sixteen operands |
| `CMD_REGION_BLOCK_1` | 0x13c29 | established | odsy binary analysis of the shipped GL library and kernel command senders | sixteen operands |
| `CMD_REGION_BLOCK_2` | 0x13c2a | established | odsy binary analysis of the shipped GL library and kernel command senders | sixteen operands |
| `CMD_REGION_BLOCK_3` | 0x13c2b | established | odsy binary analysis of the shipped GL library and kernel command senders | sixteen operands |
| `CMD_REGION_ONE_BLOCK` | 0x13c38 | established | odsy binary analysis of the shipped GL library and kernel command senders | sixteen operands |
| `CMD_SCREEN_MASK` | 0x1204b | established | odsy binary analysis of the shipped GL library and kernel command senders | word; eight operands: four min/max pairs, x in 23:12 and y in 11:0, role inferred |
| `CMD_STIPPLE_MODE` | 0x1043f | established | odsy binary analysis of the shipped GL library and kernel command senders | word; the operand's meaning is unknown |
| `CMD_STIPPLE_ROWS_HI` | 0x13c4e | established | odsy binary analysis of the shipped GL library and kernel command senders | sixteen operands: rows 31 down to 16 of the 32 by 32 polygon stipple |
| `CMD_STIPPLE_ROWS_LO` | 0x13c4f | established | odsy binary analysis of the shipped GL library and kernel command senders | sixteen operands: rows 15 down to 0 |
| `CMD_WAIT` | 0x10443 | established | odsy binary analysis of the shipped GL library and kernel command senders | one operand, role inferred |
| `CMD_WINDOW_DESC` | 0x11017 | established | odsy binary analysis of the shipped GL library and kernel command senders | four operands, role inferred |
| `CMD_WORD_1041F` | 0x1041f | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly CMD_BLK_01F. one operand |
| `CMD_WORD_1044C` | 0x1044c | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly CMD_BLK_04C. one operand |
| `CMD_WORD_10451` | 0x10451 | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly CMD_BLK_051. one operand: bit 0 and bit 1 are set from vertex pre-clip class and a reversed depth range (roles inferred) |
| `CMD_WORD_10456` | 0x10456 | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly CMD_BLK_056. one operand |
| `CMD_WORD_10457` | 0x10457 | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly CMD_BLK_057. one operand |
| `CMD_WORD_11847` | 0x11847 | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly CMD_BLK_047. six operands, only zeros are ever sent |
| `CMD_WORD_13C4D` | 0x13c4d | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly CMD_BLK_04D. sixteen operands |
| `CMD_WRITE_MASKS` | 0x10452 | established | odsy binary analysis of the shipped GL library and kernel command senders | one operand: index 11:0, stencil 19:12, RGBA enables 23:20, depth 24 |
| `INIT_DELAY_US` | 0x7d0 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `INIT_WORD_6B0` | 0x6b000000000 | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly INIT_DW_6B0. value 0 |
| `INIT_WORD_6B1` | 0x6b100000100 | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly INIT_DW_6B1. value 256 |
| `INIT_WORD_6B2` | 0x6b200007dc0 | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly INIT_DW_6B2. value 32192 |
| `INIT_WORD_6B3` | 0x6b300005e50 | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly INIT_DW_6B3. value 24144 |
| `INIT_WORD_7B5` | 0x7b500000001 | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly INIT_DW_7B5. value 1 |
| `INIT_WORD_7F0` | 0x7f03b9aca00 | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly INIT_DW_7F0 |
| `OP_COPY` | 0x2031 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `OP_COPY_WORDS` | 0x8 | established | odsy binary analysis of the shipped GL library and kernel command senders | operand count of the COPY command, always sent with eight operands |
| `OP_POSTFILTER` | 0x203b | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `OP_POSTFILTER_WORDS` | 0x8 | established | odsy binary analysis of the shipped GL library and kernel command senders | operand count of the POSTFILTER command, always sent with eight operands |
| `OP_TEXMODE` | 0x1c16 | established | odsy binary analysis of the shipped GL library and kernel command senders | command word low 16 bits of the sampler and texture-mode block, count 7 |
| `PF_FRAC_BITS` | 0xc | established | odsy binary analysis of the shipped GL library and kernel command senders | fractional bits of the 3.12 post-filter scale and bias; identity is 0x1000 |
| `PF_MAX_POSITIVE` | 0x7fff | inferred | odsy binary analysis of the shipped GL library and kernel command senders | formerly PF_MAX_X4096. largest positive value of the signed 16-bit post-filter field; the signed reading is inferred |
| `PF_ONE` | 0x1000 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RANGE_BLOCK_HIGH` | 0xfffffff | established | odsy binary analysis of the shipped GL library and kernel command senders | value |
| `RANGE_BLOCK_LOW` | 0x0 | established | odsy binary analysis of the shipped GL library and kernel command senders | value |
| `RASTER_ENABLE_ALPHA_TEST` | 0x4000 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_BLEND` | 0x20000 | inferred | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_COLOUR_LOGIC_OP` | 0x100000 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_CULL` | 0x100 | inferred | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_CULL_BACK` | 0x200 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_CULL_FRONT` | 0x400 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_DEPTH_TEST` | 0x10000 | inferred | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_DITHER` | 0x40000 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_FLAT_SHADE` | 0x1000 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_FOG` | 0x400000 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_FRONT_CW` | 0x800000 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_INDEX_LOGIC_OP` | 0x80000 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_LINE_SMOOTH` | 0x2 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_LINE_STIPPLE` | 0x8 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_OFFSET_FILL` | 0x80 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_OFFSET_LINE` | 0x40 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_OFFSET_POINT` | 0x20 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_POINT_SMOOTH` | 0x1 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_POLYGON_SMOOTH` | 0x4 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_POLYGON_STIPPLE` | 0x10 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_STENCIL_TEST` | 0x8000 | inferred | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RASTER_ENABLE_TWO_SIDE_LIGHT` | 0x800 | inferred | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `RD_CODE_INDEX_BYTE` | 0x1 | established | odsy binary analysis of the shipped GL library and kernel command senders | class 0 read code 1 as a pair; the reading as the first byte of a two-byte field is inferred |
| `SAMPLER_IMAGE_DEFAULT` | 0x3640000 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `SEQ_COLOUR_MODE_A_INDEX` | 0x1 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `SEQ_COLOUR_MODE_A_RGB` | 0x0 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `SEQ_COLOUR_MODE_B_INDEX` | 0x3 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `SEQ_COLOUR_MODE_B_RGB` | 0x2 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `SEQ_REG_COLOUR_MODE_A` | 0x22 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `SEQ_REG_COLOUR_MODE_B` | 0x23 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `SEQ_REG_TABLE_INDEX` | 0x31 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `SEQ_WORD_COLOUR_A_INDEX` | 0x22008001 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `SEQ_WORD_COLOUR_A_RGB` | 0x22008000 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `SEQ_WORD_COLOUR_B_INDEX` | 0x23008003 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `SEQ_WORD_COLOUR_B_RGB` | 0x23008002 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `SLOT15_WORD` | 0xcf80a92f | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly SLOT15_WORD_OP12F |
| `SLOT16_ONE_OPERAND_WORD` | 0xd080c433 | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly SLOT16_WORD_OP33. opcode 0x33, attribute slot 16, one operand |
| `SLOT16_THREE_OPERAND_WORD` | 0xd080cc34 | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly SLOT16_WORD_OP34. opcode 0x34, attribute slot 16, three operands |
| `SLOT2_THREE_OPERAND_WORD` | 0xc280cc1c | established | odsy binary analysis of the shipped GL library and kernel command senders | formerly SLOT2_WORD. opcode 0x1c, attribute slot 2, three operands |
| `SLOT4_DEFAULT_WORD` | 0xc480c426 | established | odsy binary analysis of the shipped GL library and kernel command senders | opcode 0x26, attribute slot 4, one operand; the word the driver stores as that slot's default; what slot 4 carries is unknown |
| `SYNC_WAIT_FIRST` | 0xfa | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `SYNC_WAIT_SECOND` | 0x96 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `TEXLEVEL_COUNT` | 0x40 | inferred | odsy binary analysis of the shipped GL library and kernel command senders | level descriptors 0 to 63 in the 0x280 + i block; the range is the header's reading, not a board limit |
| `WORD_CLIP_STATE_A_LOW24` | 0x8116 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `WORD_CLIP_STATE_B_LOW24` | 0xbda2 | established | odsy binary analysis of the shipped GL library and kernel command senders |  |
| `WORD_DATA_LOAD4` | 0x8e809015 | established | odsy binary analysis of the shipped GL library and kernel command senders | four operands, sent after the lighting data base register is set, once for entry 24 and then for entries 0 to 23 |
| `WORD_PROGRAM_SWITCH_LOW24` | 0x808800 | established | odsy binary analysis of the shipped GL library and kernel command senders | two zero operands follow, id 0; sent before the program registers are loaded |
| `WORD_TABLE16_A_LOW24` | 0x80bda2 | established | odsy binary analysis of the shipped GL library and kernel command senders | sixteen operands, id 0x1a2, sent ahead of each run of sixteen words of the 512-word table the table-index register selects (the id is the table data port's) |
| `WORD_TABLE16_B_LOW24` | 0x80bdc8 | established | odsy binary analysis of the shipped GL library and kernel command senders | sixteen operands, id 0x1c8, sent after the register-file base register is set to index 0 |
| `WORD_TABLE4_A_LOW24` | 0x8091df | established | odsy binary analysis of the shipped GL library and kernel command senders | four operands, id 0x1df, sent at register-file index 16 |
| `WORD_TABLE4_B_LOW24` | 0x8091ea | established | odsy binary analysis of the shipped GL library and kernel command senders | four operands, id 0x1ea (the slot pair block above), each of two saved words followed by a copy with bit 31 flipped |
| `WORD_TOP_BYTE_90` | 0x90 | established | odsy binary analysis of the shipped GL library and kernel command senders | top byte of the words below |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `ALPHA_TEST` | 0x3800 | vector | func=3, reference=2048 |
| `FRAME_PIXEL` | 0x8099b3ff | vector | red=128, green=153, blue=179, alpha=255 |
| `READ_HEADER` | 0x8 | vector | class=0, code=1 |
| `READ_HEADER` | 0x82233000 | example | class=0, code=0, bit12=1, size_field=1, pixel_size=3, first_field_code=2, second_field_code=2, drawable=0, front=1 |
| `READ_HEADER` | 0x83331008 | vector | class=0, code=1, bit12=1, size_field=0, pixel_size=3, first_field_code=3, second_field_code=3, drawable=0, front=1 |
| `SAMPLER` | 0x82 | vector | colour_table=0, mag=1, min=4 |
| `SAMPLER` | 0x3640000 | vector | colour_table=0, mag=0, min=0, image_flag_bit18=1, table_format=6, activation=6, no_offset=0 |
| `WRITE_HEADER` | 0x41 | vector | format=1, type=2, expand=0 |
| `WRITE_HEADER` | 0x42 | vector | format=2, type=2, expand=0 |
| `WRITE_HEADER` | 0x4b | vector | format=11, type=2, expand=0 |
| `WRITE_HEADER` | 0x61 | vector | format=1, type=3, expand=0 |
| `WRITE_HEADER` | 0x6b | vector | format=11, type=3, expand=0 |
| `WRITE_HEADER` | 0x16c | vector | format=12, type=11, expand=0 |
| `WRITE_HEADER` | 0x32050041 | vector | format=1, type=2, pixel_size=5, read_dir=0, transform=0, differs=0 |
