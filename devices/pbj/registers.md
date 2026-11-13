<!-- generated from devices/pbj/registers.toml by defs-gen - do not edit, change the source -->

# VPro (Odyssey) PB&J display back end (publish-safe subset)

Host-interface, I2C and scanout-buffer registers of the Odyssey board, and the header word that frames a display FIFO write.

Unit `pbj`, macro prefix `PBJ`.
Default source: odsy binary analysis of the shipped display driver.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Address spaces

| Space | Offset unit | Description |
|---|---|---|
| pbj_regs | register index |  |

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `hif_ctl` | 0x2700 | rw | 32 |  | pbj_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `id` | 0x2701 | r | 32 |  | pbj_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `i2c_opt_ctl` | 0x2740 | rw | 32 |  | pbj_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `i2c_opt_data` | 0x2741 | r | 32 |  | pbj_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `i2c_main_ctl` | 0x2780 | rw | 32 |  | pbj_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `i2c_main_data` | 0x2781 | r | 32 |  | pbj_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `fb_base_b` | 0x2800 | w | 32 |  | pbj_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `fb_base_a` | 0x2801 | w | 32 |  | pbj_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `scan_width` | 0x2802 | w | 32 |  | pbj_regs | unknown | inferred | odsy binary analysis of the shipped display driver |
| `scan_height` | 0x2803 | w | 32 |  | pbj_regs | unknown | inferred | odsy binary analysis of the shipped display driver |
| `scan_cfg_a` | 0x2804 | w | 32 |  | pbj_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `scan_cfg_b` | 0x2805 | w | 32 |  | pbj_regs | unknown | unknown | odsy binary analysis of the shipped display driver |
| `scan_cfg_c` | 0x2806 | w | 32 |  | pbj_regs | unknown | established | odsy binary analysis of the shipped display driver |
| `fb_pitch` | 0x2807 | w | 32 |  | pbj_regs | unknown | inferred | odsy binary analysis of the shipped display driver |
| `fb_depth` | 0x2809 | w | 32 |  | pbj_regs | unknown | inferred | odsy binary analysis of the shipped display driver |
| `dcb_ctl` | 0x2b00 | w | 32 |  | pbj_regs | unknown | inferred | odsy binary analysis of the shipped display driver |

### Register `hif_ctl`

Host-interface control of the display chip. The timing load puts the
first clock-select field of the timing load in bits 14:12 and the second
in bits 17:15 of the word read back from this register, then writes it
twice: with bit 18 clear before the clock is programmed and with bit 18
set after a 100 ms wait. Start-up first writes 0x0006d3e0 (both selects
5, bit 18 set, low bits 0x3e0); that is a driver-written start value,
not a reset value.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 18 | `clock_run` | established |  | odsy binary analysis of the shipped display driver |  |
| 17:15 | `clock_sel_b` | established |  | odsy binary analysis of the shipped display driver |  |
| 14:12 | `clock_sel_a` | established |  | odsy binary analysis of the shipped display driver |  |
| 11:0 | `low_bits` | unknown |  | odsy binary analysis of the shipped display driver |  |

### Register `id`

Identification word. Bits 2:0 are the chip version the board information
block reports. Bit 10 is tested at start-up: when it is clear, the
driver probes the option port on the second I2C controller for a dual-
channel display option, so a set bit 10 is read as "no option card"
(inferred).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 10 | `no_option` | inferred |  | odsy binary analysis of the shipped display driver |  |
| 2:0 | `version` | established |  | odsy binary analysis of the shipped display driver |  |

### Register `i2c_opt_ctl`

I2C controller control register, option port (first of the port's two
registers). The register-read routine reads it, clears bits 12, 8 and 10
of its shadow and writes it back as an immediate update. The driver
reads this register at the first word of the read-back slot, not the
second. Bit meanings are unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 12 | `bit12` | unknown |  | odsy binary analysis of the shipped display driver |  |
| 10 | `bit10` | unknown |  | odsy binary analysis of the shipped display driver |  |
| 8 | `bit8` | unknown |  | odsy binary analysis of the shipped display driver |  |

### Register `i2c_opt_data`

I2C controller status/data register, option port. The register-read
routine polls it for bit 9, up to 133 times. Bit meanings are unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 9 | `bit9` | unknown |  | odsy binary analysis of the shipped display driver |  |

### Register `i2c_main_ctl`

I2C controller control register, main port (first of the port's two
registers). The register-read routine reads it, clears bits 12, 8 and 10
of its shadow and writes it back as an immediate update. The driver
reads this register at the first word of the read-back slot, not the
second. Bit meanings are unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 12 | `bit12` | unknown |  | odsy binary analysis of the shipped display driver |  |
| 10 | `bit10` | unknown |  | odsy binary analysis of the shipped display driver |  |
| 8 | `bit8` | unknown |  | odsy binary analysis of the shipped display driver |  |

### Register `i2c_main_data`

I2C controller status/data register, main port. The register-read
routine polls it for bit 9, up to 133 times. Bit meanings are unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 9 | `bit9` | unknown |  | odsy binary analysis of the shipped display driver |  |

### Register `fb_base_b`

Scanout base of the second buffer region, written by the frame-buffer
set-up as a tile count shifted left 9, after rounding the region start
up to a multiple of four. A tile is 16 by 16 pixels. Reading as a
scanout base address is inferred.

### Register `fb_base_a`

Scanout base of the first buffer region, same encoding as the second.

### Register `scan_width`

Written 0 by the frame-buffer set-up, 0 or 1280 by start-up, and the
timing load's active-width value (1280 in the built-in timings, twice
that on one path) by the timing load. Active width in pixels is one
reading; a pan offset fits the same writes (inferred).

### Register `scan_height`

Companion of the width register: 0, 1024 in the full-size form, or the
timing load's active-height value. Active height in lines (inferred,
same caveat).

### Register `scan_cfg_a`

Written from the low two bits of a timing load value by the timing load.
Meaning unknown.

### Register `scan_cfg_b`

Listed among the addresses the kernel writes; no read of the source of
its value was completed. Meaning unknown.

### Register `scan_cfg_c`

Written from one flag bit of a timing load value by the timing load (the
same flag as the colour-map unit configuration). Meaning unknown.

### Register `fb_pitch`

Scanout pitch: the frame-buffer width in 16-pixel tiles, rounded up to
an even count. Reading as pitch is inferred from the arithmetic.

### Register `fb_depth`

Scanout pixel size code. The codes the set-up writes are 2 for 8 bits a
pixel, 3 for 16 and 4 for 32 (established as values). The field width is
not known; three bits is the least that holds them, so the field range
is inferred.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 2:0 | `code` | inferred | bpp8=2, bpp16=3, bpp32=4 | odsy binary analysis of the shipped display driver |  |

### Register `dcb_ctl`

Back-end interface configuration. The timing load stores a 3-bit timing
load value here; its role is unknown (the field name is a placeholder).
Start-up first writes 0 five times, which may
be a reset or a flush of this register's function (unknown). Nothing
reads it back.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 2:0 | `dcb_clock` | inferred |  | odsy binary analysis of the shipped display driver |  |

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `FIFO_HDR` | 32 | established | odsy binary analysis of the shipped display driver |

### Word `FIFO_HDR`

A write is a header word followed by COUNT data words that go to
consecutive register addresses. The kernel normally sends the header and
one data word together as one 64-bit store, header in the high half, and
it pairs any two consecutive words into one doubleword wherever a header
falls, so a decoder must treat the stream as a run of 32-bit words and
not as aligned pairs. established.

The FIFO holds 24 doublewords (the driver waits until the level is at or
below 24 minus the entries it needs). The level is a 7-bit field of a
graphics-ASIC register. established. How deep the hardware really is:
unknown.

Type. Only 3 and 7 are ever sent. Type 7 is used for the display-mode
words, the cursor control word, X server colour-map loads and the cursor
position when cursor control bit 2 is set; type 3 for everything the
kernel loads at start-up or mode set and for the textport colour map.
established as uses. So type 3
is read as apply at once and type 7 as apply at the next vertical blank,
inferred from the pairing of uses. Bits 29:28 are set in both types and
are probably a per-chip target select, one bit each for the two ASICs of
a two-ASIC board (inferred from the name "all" in that driver). Bit 31
is never set. What the part does with a type nibble no software sends:
unknown.

Read-back. Each register address has an eight-byte slot in the window;
the value is in the second 32-bit word of the slot (the I2C routines
read the first word; whether the board returns the value in both halves
is unknown). The window returns what the FIFO last wrote at that
address. A read does not wait for earlier FIFO writes (inferred); the
driver reads only after the FIFO has drained.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:28 | `type` | established | now=3, synced=7 | odsy binary analysis of the shipped display driver |  |
| 27:14 | `address` | established |  | odsy binary analysis of the shipped display driver |  |
| 13:0 | `count` | established |  | odsy binary analysis of the shipped display driver |  |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `ADDR_BITS` | 0xe | established | odsy binary analysis of the shipped display driver |  |
| `CLOCK_A_REG_DPA_CONTROL` | 0x5 | established | odsy binary analysis of the shipped display driver |  |
| `CLOCK_A_REG_DPA_OFFSET` | 0x4 | established | odsy binary analysis of the shipped display driver |  |
| `CLOCK_A_REG_FEEDBACK_DIV0` | 0x2 | established | odsy binary analysis of the shipped display driver |  |
| `CLOCK_A_REG_FEEDBACK_DIV1` | 0x3 | established | odsy binary analysis of the shipped display driver |  |
| `CLOCK_A_REG_INPUT_CONTROL` | 0x0 | established | odsy binary analysis of the shipped display driver |  |
| `CLOCK_A_REG_LOOP_CONTROL` | 0x1 | established | odsy binary analysis of the shipped display driver |  |
| `CLOCK_A_REG_OSC_DIV` | 0x7 | established | odsy binary analysis of the shipped display driver |  |
| `CLOCK_A_REG_OUTPUT_ENABLE` | 0x6 | established | odsy binary analysis of the shipped display driver |  |
| `CLOCK_I2C_ADDR_A` | 0x26 | established | odsy binary analysis of the shipped display driver | variant <= 0 |
| `CLOCK_I2C_ADDR_B` | 0x58 | established | odsy binary analysis of the shipped display driver | variant > 0 |
| `CLOCK_WRITE_COUNT` | 0x8 | established | odsy binary analysis of the shipped display driver |  |
| `FIFO_DEPTH_DWORDS` | 0x18 | inferred | odsy binary analysis of the shipped display driver |  |
| `READ_SLOT_BYTES` | 0x8 | established | odsy binary analysis of the shipped display driver |  |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `hif_ctl` | 0x6d3e0 | vector | clock_run=1, clock_sel_b=5, clock_sel_a=5, low_bits=992 |
| `FIFO_HDR` | 0x38000400 | vector | count=1024, address=8192, type=3 |
| `FIFO_HDR` | 0x39000080 | vector | count=128, address=9216, type=3 |
| `FIFO_HDR` | 0x39400080 | vector | count=128, address=9472, type=3 |
| `FIFO_HDR` | 0x39600001 | vector | count=1, address=9600, type=3 |
| `FIFO_HDR` | 0x3964000f | vector | count=15, address=9616, type=3 |
| `FIFO_HDR` | 0x39700040 | vector | count=64, address=9664, type=3 |
| `FIFO_HDR` | 0x39b00001 | vector | count=1, address=9920, type=3 |
| `FIFO_HDR` | 0x70000001 | example | count=1, address=0, type=7 |
| `FIFO_HDR` | 0x79600001 | vector | count=1, address=9600, type=7 |
| `FIFO_HDR` | 0x79604001 | vector | count=1, address=9601, type=7 |
