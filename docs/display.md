# Display notes

Companion to `DISPLAY.h`. Labels: **established** (read from a binary, with where), **inferred** (reasoned), **unknown**. IRIX 6.5.30m; IP30 (Octane2) V12 unless a note says IP35.

## Display timing

This is a first pass over the pieces that carry timing. It names what exists and what each piece does; no register-level map of the video timing generator has been derived.

### Pieces

1. **Video format files, `usr/gfx/ucode/ODSY/vof/*.vfo`** (71 files, `ucode/ODSY/vof/`). **established.** Each file is a compiled video format, written by a tool named `dVideoFormatCompiler` for the target `ODY_VTG`. The shipped list covers 640x480 to 1920x1200, interlaced and field-sequential formats, and `2@...` names for two-channel modes. The X module reads the directory `/usr/gfx/ucode/ODSY/vof` and the suffix `.vfo` (strings of `ddx/odyssey.so`, together with `odsyReadVideoFormat`, `odsyLoadTimingTable` and `odsyLoadCompositorTiming` in the same module).
2. **Kernel timing table load.** **established.** `gfP_OdsyBRDMGRloadTimingTable` (`odsy_brdmgr.o`) copies exactly 320 bytes from the caller (`copyin`), calls `odsy_copyin_frame_line_tables` for the tables the structure points to, then `odsyLoadTimingTable`, which waits for the display FIFO to drain (`odsy_poll_dfifo_level`), programs the board and reports a status word to the caller. `gfP_OdsyBRDMGRVTGcontrol` copies eight bytes (a command word whose bits 0 and 1 are tested) and waits for display-FIFO level 13 or less. **inferred:** the 320-byte structure is the kernel's input form of a `.vfo`, produced by the X module; the conversion was not read.
3. **Built-in timings.** **established.** `odsy_timings.o` holds two 320-byte structures, `default_1280x1024_72_timing` at `.data` offset 0x260 and `odsy_default_timing1` at 0x5f0, and 1840 bytes of `.data` in all. Both are referenced from `odsy_init.o` `.data` (offsets 0x10/0x18 and 0x70/0x78 as pointers); `odsy_default_timing1` is also referenced from `odsy_tport.o`. IP35 has the same objects with the same reference pattern. **inferred:** these are the timings the kernel uses for the textport before the X server loads one.
4. **Programmable clock, I2C.** **established.** `odsy_i2cPLLRegWrite`, `odsy_i2cPLLRegRead`, `odsy_i2cPLLSeqRegWrite` and `odsy_i2cPLLSeqRegRead` (`odsy_ddc.o`) access a clock part over I2C; the `.vfo` files carry the register values (`ODY_PLL_*`, `ODY_AMI_PLL_0x0` to `0x7`, `ODY_2CHANNEL_PLL_reg0` to `reg7`). Which part, and the register meanings: **unknown**.
5. **Retrace and genlock.** **established.** `odsyInitRetrace`, `odsyRetraceHandler`, `gf_OdsySchedRetraceEvent` and `odsyGenlockInterrupt` exist (`odsy_retrace.o`, `odsy_intr.o`); the retrace handler body and the genlock PLL values are **not read**.
6. **IP35 only.** **established.** `odsy_dvi.o` has 580 lines of text on IP35 and none on IP30 (`odsy_kernel_ip35/disasm/odsy_dvi/`). Not read.

### The 320-byte timing structure

`odsyLoadTimingTable` (`odsy_brdmgr.o`, IP30 6.5.30m, disassembly from line 4223 of `odsy_brdmgr.text.s`) is the consumer. It writes most fields to the display FIFO as type-3 words (header `(3 << 28) | (address << 14) | 1`, data in the low word; `DISPLAY.h` section 1). The headers are `.lit8` constants of `odsy_brdmgr.o`; their offsets were tied to the code by the `R_MIPS_GPREL16 .lit8` relocations and the object's GP0 of 0x7800. Offsets are decimal bytes; "word" means a 32-bit big-endian word.

| Offset | Use in the loader | Label |
|---|---|---|
| 0 (8 bytes), 8 | pointer to the frame table and its length in 16-bit entries | **established** (`odsy_copyin_frame_line_tables` copies `length * 2` bytes from the pointer; the built-in timings carry `R_MIPS_64 .data` relocations here) |
| 16 (8 bytes), 24 | pointer to the line table and its length in 16-bit entries | **established**, as above |
| 28 | ORed with 0x42, written to display address 0x2481 | **established** |
| 32 | written to 0x2482 | **established** |
| 36 | bit 5 replaced by the driver's own bit 5, written to 0x2483 | **established** |
| 40 to 84 | twelve words written in order to 0x27c0 to 0x27cb | **established** |
| 88 | written to 0x27cc, after bit 31 of the board register at +0x1034 (the flags enable register, `BUZZ.h`) is set | **established** |
| 96 to 124 | eight clock-part register bytes, written over I2C as registers 5, 4, 2, 3, 0, 1, 7, 6 | **established**; used when board-record word 292 is zero or negative, with 0x26 stored in the I2C device record first |
| 128 to 156 | eight clock-part register bytes, written as registers 0 to 7 | **established**; used when word 292 is positive, with 0x58 stored in the device record |
| 160, 164, 168 | written to 0x26c0, 0x2600, 0x2680; bit 6 of word 164 also sets its bit 7 | **established** |
| 176, 180 | written to 0x2802, 0x2803 | **established**; the built-in timings hold 1280 and 1024 here, so **inferred** active pixels and active lines |
| 200 | bits 1:0 to 0x2804; bit 5 to 0x2806 and to 0x2929; bit 4 selects a branch | **established** |
| 208 | bits 2:0 to 0x2b00 | **established** |
| 212, 216 | bits 2:0 of each placed in bits 14:12 and 17:15 of the word read from board + 0x233804, then written to 0x2700 twice: with bit 18 clear before the clock is programmed and with bit 18 set after a 100 ms delay; 0x2481 = 1 follows | **established** |
| 220, 224 | 220 = -2 selects a path; 224 is kept in the board record | **established** (the paths were not traced) |
| 236 to 248 | low bytes rewritten to clock registers 1, 2, 5, 6 on one later path; with 132, 136, 148 and 152 also kept in the board record | **established** |
| 264 to 280 | read on another path | **established** as read; destination not traced |
| 92, 172, 184 to 196, 204, 228, 232, 252 to 260, 284 to 316 | not read in the parts traced | **unknown** |

The built-in values, for reference: `default_1280x1024_72_timing` has clock bytes (128-156) 0x30, 0, 0, 5, 2, 0x10, 0, 0; `odsy_default_timing1` has 1, 0, 1, 9, 0, 0, 0, 0. Word 184 holds 72 or 60, the refresh rate, and is not read in the parts traced.

Clock part identity: **unknown**. **inferred:** the bytes 0x58 and 0x26 the driver stores in its I2C device record are bus addresses, so two board variants carry different clock parts with different register orders.

### Frame and line tables

**established** from `odsyLoadTimingTable` and the two built-in timings:

- The loader first clears both tables: header `0x39000080` (type 3, address 0x2400, count 128) followed by 128 zero words, then `0x38000400` (address 0x2000, count 1024) and 1024 zero words. It then sends the frame table with header `0x39000000 | ceil(n/2)` and the line table with `0x38000000 | ceil(n/2)`. So the frame table lives at display address 0x2400 (up to 256 entries) and the line table at 0x2000 (up to 2048 entries). The header's low 14 bits count the 32-bit data words that follow.
- Entries are 16 bits, packed two per word with the even entry in the low half (`word = e[2k] | e[2k+1] << 16`); the header itself occupies the first pair, so the stream is a run of halfwords.
- **Frame table:** pairs (line-table position in 32-bit words, repeat count), ending with (0, 0). `odsy_default_timing1`: (0,1) (9,1) (20,1) (29,1) (38,1) (47,35) (58,1) (69,1023) (96,1) (124,1); the counts sum to 1066. `default_1280x1024_72_timing`: eleven pairs whose counts sum to 1065, with one of 1024. These sums equal the TotalLinesPerFrame values in `1280x1024_60.vfo` (1066) and `1280x1024_72.vfo` (1065).
- **Line table:** each line type is a run of 16-bit entries whose last has bit 15 set. In `odsy_default_timing1`, for the first five line types, bits 14:8 of the entries sum to exactly 1688 (TotalPixelsPerLine of `1280x1024_60.vfo`) when entries with bits 14:12 = 100 (0x4xxx) are left out; that rule does not hold for the later types, so which entries carry time and what bits 7:0 drive (sync, blank, DMA starts) is **unknown**. **inferred:** bits 14:8 are a duration in pixel clocks for timed entries and bits 7:0 the output states for that span.

### Line-table structure (pass 6)

Source: the two built-in timings in `odsy_timings.o` `.data` (`odsy_default_timing1` at 0x5f0, `default_1280x1024_72_timing` at 0x260), their frame and line table pointers from the 320-byte structure (offsets 0 to 27 above), checked by script over every line type of both. Positions below are halfword indices into the line table.

- **established.** A line type is a run of 16-bit entries ending at the first entry with bit 15 set; that entry belongs to the type. The frame table's position values (in 32-bit words) are twice the type's first halfword. After the end entry comes one or two halfwords before the next type: a zero pad when the next start would be odd, then a halfword equal to the type's own starting halfword index (for example type 1 of `odsy_default_timing1` starts at halfword 18 and the value 0x12 follows its end; every type of both timings obeys this, type 0 holds 0). **inferred** that the board's reader uses this trailer as a check or link; no code reads it.
- **established.** Frame-table counts group the types into the vertical regions, with the same sums as the `.vfo` values above. In both timings, types 0 to 2 are one line each (three lines, the vertical sync width of both `.vfo` files), the next types up to and including the last one before the long type are the back porch (1 + 1 + 35 + 1 = 38 lines in `odsy_default_timing1`, 1 + 1 + 32 + 1 = 35 in the 72 Hz timing, equal to the `.vfo` vertical back porch 38 and 35), the long type (1023 or 1024 lines, with 52 entries) is the active area (plus one more line in the 60 Hz timing, whose type 8 has 54 entries and a few different entries), and the remaining types are the vertical front porch (one line in the 60 Hz timing, three lines in the 72 Hz timing, equal to the remainders 1 and 3). **established** as arithmetic; that types 0 to 2 are the sync lines is **inferred** from the three-line count and from the order.
- **established.** In `odsy_default_timing1`, bits 14:8 of every entry whose bits 14:12 are not 100 (binary) sum to exactly 1688, the total pixels per line, for line types 0 to 5; bits 11:8 of the 100xxxxx entries are small numbers (2, 4, 5, 6) and the entries' low bytes differ from the timed ones. **inferred:** bits 14:8 are a duration in pixel clocks (7 bits, longest 127) for a timed entry, and an entry with bits 14:12 = 100 is an event that takes no time. Support: the first timed run of line types 0 to 5 is 112 pixels (0x70), the horizontal sync width of `1280x1024_60.vfo`, and in the 72 Hz timing the first runs 0x7f and 0x0d add to 140, the horizontal sync width of `1280x1024_72.vfo`. Counter-evidence: the same sum does not reach the line total for types 6 to 9 (1790, 2204 and others), so that rule is not complete: **unknown** which further entries are events.
- **established.** Type 6 of `odsy_default_timing1` (the last back-porch line) equals type 5 except that one entry reads 0x6698 where type 5 has 0x4698 (bit 13 set). **inferred**, weakly, that bit 13 turns an event into one that does something only on the line before the active area (for example arming pixel fetch); nothing else supports it.
- **established.** Low bytes: within one line type the low byte of the timed entries steps once from a value with bit 7 clear to the same value with bit 7 set, after the second event (`0x0a` to `0x8a` in type 0 of `odsy_default_timing1`). Between line types it differs in bits 0, 1 and 5: bit 0 is set only in type 1 of the 60 Hz timing, bit 5 is set from type 2 on. **unknown** what these drive (sync polarity, blanking, composite sync and DMA starts are candidates only).
- **established.** Active-area types carry a repeating pair `0x40f0 0x40b0` (zero-length-looking entries, bits 14:12 = 100) up to 16 times (`odsy_default_timing1` type 7), with the other entries `0a20`, `66cd`, `0da0`, `34e0`, ... around them. **unknown** their meaning; an eight-pixel-group fetch pattern is a guess only.

### The `.vfo` values

**established** by reading four files (`1024x768_60`, `1280x1024_60`, `1280x1024_72`, `1600x1200_60`), all of which put these values at the same offsets; the meanings are **inferred** by matching the public VESA timings for 1024x768 at 60 Hz (65 MHz, 1344 x 806, horizontal 24/136/160, vertical 3/6/29) and 1280x1024 at 60 Hz (108 MHz, 1688 x 1066, 48/112/248, 1/3/38):

| Offset | Type | 1024x768_60 | 1280x1024_60 | 1280x1024_72 | Reading |
|---|---|---|---|---|---|
| 0x98, 0x9c | word | 768, 1024 | 1024, 1280 | 1024, 1280 | active lines, active pixels |
| 0x114, 0x1d4, 0x280 | double | 59.963 | 60.0 | 72.239 | frame rate, Hz |
| 0x1cc, 0x1d0 | word | 806, 1344 | 1066, 1688 | 1065, 1680 | total lines, total pixels |
| 0x240, 0x278 | double | 64.956 | 107.964 | 129.25 | achieved pixel clock, MHz |
| 0x248 | double | 64.957 | 108.0 | 129.25 | requested pixel clock, MHz |
| 0x2a4, 0x3a0 | word | 6 | 3 | 3 | vertical sync, lines |
| 0x2a8, 0x2ac, 0x2b0 | word | 24, 136, 160 | 48, 112, 248 | 30, 140, 230 | horizontal front porch, sync, back porch |
| 0x2b4 | word | 1344 | 1688 | 1680 | total pixels again |
| 0x3a4 | word | 29 | 38 | 35 | vertical back porch |

The vertical front porch is not at a fixed offset found here; it is the remainder (806 - 768 - 6 - 29 = 3). The `1600x1200_60` file has 2060 x 1250 with 64/192/204, which is not the VESA timing; the rows above hold for it at the same offsets. Offsets differ in files with other layouts (stereo, two-channel) and were not checked. How the X module turns these into the 320-byte structure is **unknown** (`odsyReadVideoFormat` in `odyssey.so` not read).

### The `.vfo` container

- **established.** Big-endian. The file starts `00000004 'sdb ' 00000000 00000001 00000001 00000001 00000064`, then the tool name `VideoFormatCompiler`, padding to 0x80, then a record beginning `000000ae` (decimal 174) and `0000096c` (2412). The strings that follow are, in file order: `ODY_VTG`, the human name (for example `1280 x 1024 @ 72Hz  for Odyssey`), `None`, `VTG1`, then 181 NUL-terminated strings of which the field names below are the main part, ending with `yydebug` (a parser name left in the string table). Header layout beyond this: **unknown**.
- **established.** In `1280x1024_72.vfo` the words at 0x98 and 0x9c are 0x400 and 0x500 (1024 and 1280), and the doubles at 0xa0 and 0xa8 decode from `41ac9c3800000000` and `4168cba800000000` to 240000000.0 and 13000000.0. **inferred:** 1024 and 1280 are the active lines and pixels (they equal the format name). What the two doubles are (a 240 MHz and a 13 MHz frequency) is **unknown**; the string table has `DACRateMaximum`/`DACRateMinimum` and `SystemVideoClockRateMaximum`/`Minimum` but the file was not decoded far enough to match them.
- **established (names only).** The string table names these field groups. Geometry: `ActiveLinesPerFrame`, `ActivePixelsPerLine`, `TotalLinesPerFrame`, `TotalPixelsPerLine`, `HorizontalFrontPorch`, `HorizontalBackPorch`, `HorizontalSync`, `VerticalFrontPorch`, `VerticalBackPorch`, `VerticalSync`, `VSyncLines`, `FieldsPerFrame`, `FramesPerSecond`, `VerticalRetraceRate`, the `FormatInfo_*` set (porch, sync, stereo, interlace and dual-head fields), `FrameBufferWidth`, `FrameBufferHeight`, `ScreenHeight`. Clocking: `DesiredFrequency`, `AchievedFrequency`, `VideoClockRatio*`, `DCB_Freq`, `ODY_DCBClockSpeed`, `ODY_DDCClockSpeed`, `ODY_I2CClockSpeed`, `ODY_PLL_*` (`InputControl`, `LoopControl`, `Osc_Div`, `FdBkDiv0/1`, `DPAControl`, `DPAOffset`, `OutputEnables`), `ODY_AMI_PLL_0x0..0x7`, `ODY_2CHANNEL_PLL_reg0..7`. Output and mode: `ODY_VTG_Control`, `ODY_VTG_ChanEn`, `ODY_VTG_InitState`, `ODY_SM_Cntrl`, `ODY_Multibuzz_SM_Cntrl`, `ODY_DAC_Cntrl`, `ODY_DP_Cntrl`, `ODY_GENLOCK`, `ODY_GEN_*` (`BP_CLAMP`, `CONTROL`, `hPFD`, `lPFD`, `hPSD`, `lPSD`, `hHMASK`, `lHMASK`), `ODY_2CHANNEL_FPGA_0..5`, `ODY_2CHANNEL_RAMDAC_ctrl`, `ODY_2CHANNEL_TMDS_ctrl`, `CSync`, `TTL_Sync`, `RS343A_Levels`, `Enable_Stereo`, `FieldSequential`-style stereo fields, `FrameTab`, `LineSeqTab`. Values and their binary encoding: **unknown**; none was decoded.
- **inferred.** The file is a VTG (video timing generator) program: a table of line types (`LineTypeCount`, `LineSeqTab`, `FrameTab`, `VerticalStateCount`) plus register images for the clock parts and the output stage. Reason: those field names, and the 1840 bytes of `odsy_timings.o` `.data` before and between the two 320-byte structures are made of repeated 40-byte-stride blocks that look like per-line-type state records (for example `7f0a45cf 0d8a7f0a 458e...` repeating) — not decoded.
- **unknown.** How the 320-byte kernel structure maps to these fields, which part of the VPro board each register image feeds, and the pixel-clock to display-FIFO relation.

### Next steps for a reader of this

1. Decode the line-table entry bits: compare line types of one timing that differ only in sync or blanking, and the two built-in timings line by line.
2. Read `odsyReadVideoFormat` and `odsyLoadTimingTable` in `odyssey.so` for the `.vfo` to structure conversion.
3. Trace the branches of `odsyLoadTimingTable` for words 220, 224 and 264 to 280, and read `odsyRetraceHandler` and `odsyGenlockInterrupt`.
