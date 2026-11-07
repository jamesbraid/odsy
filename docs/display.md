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

`odsyLoadTimingTable` (`odsy_brdmgr.o`, IP30 6.5.30m, disassembly from line 4223 of the Odyssey kernel driver board manager assembly unit) is the consumer. It writes most fields to the display FIFO as type-3 words (header `(3 << 28) | (address << 14) | 1`, data in the low word; `DISPLAY.h` section 1). The headers are `.lit8` constants of `odsy_brdmgr.o`; their offsets were tied to the code by the `R_MIPS_GPREL16 .lit8` relocations and the object's GP0 of 0x7800. Offsets are decimal bytes; "word" means a 32-bit big-endian word.

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
| 220, 224 | 220 = -2 skips the mode-load steps from the `0x2481` rewrite on; 224 is stored in the board record at +0x10000 - 19504, which `odsyGenlockInterrupt` (`odsy_intr.o` .text 0x5c0-0x159f) tests before it services a genlock event | **established** |
| 236 to 248 | low bytes rewritten to clock registers 1, 2, 5, 6 on one later path; with 132, 136, 148 and 152 also kept in the board record | **established** |
| 264 to 280 | copied to the board record (+0x10000 - 31168 to - 31152) when the board-record halfword 298 matches the variant the loader is handling; `odsy_restoreDCD2FPGA` (`odsy_brdmgr.o` .text 0x67f4-0x6973) later sends the low and next bytes of word 280 over I2C as clock-part registers 4 and 5 | **established** |
| 92, 172, 184 to 196, 204, 228, 232, 252 to 260, 284 to 316 | not read by the kernel loader | **established** as unread there; what the X module puts in them is in the next table |

The built-in values, for reference: `default_1280x1024_72_timing` has clock bytes (128-156) 0x30, 0, 0, 5, 2, 0x10, 0, 0; `odsy_default_timing1` has 1, 0, 1, 9, 0, 0, 0, 0. Word 184 holds 72 or 60, the refresh rate, and is not read in the parts traced.

Clock part identity (pass 12):

- **inferred: the part at 0x26 is an ICS1523** (Integrated Circuit Systems, later IDT/Renesas, video clock synthesiser with dynamic phase adjust). Its published register map is 0 Input Control, 1 Loop Control, 2 and 3 Feedback Divider, 4 DPA Offset, 5 DPA Control, 6 Output Enables, 7 Oscillator Divider (8 is a write-only reset), and the 6.5.30 write order 5, 4, 2, 3, 0, 1, 7, 6 is exactly the registers 0 to 7 of that map. Datasheet: Renesas ICS1523 ("MDS ICS1523", Renesas document 1523-datasheet). Its seven-bit bus address, 0x26 (0x4c write), is from memory of the datasheet and not rechecked here.
- **inferred: the part at 0x58 is an AMI Semiconductor FS-family I2C clock generator** (later ON Semiconductor). The FS7140/FS7145 datasheet (ON Semiconductor publication FS7140/D, rev. 7) gives the family's slave address as 1011 0xx (0x58 to 0x5b, two address pins) and eight register bytes 0 to 7 written in sequence, matching the driver. The genlock path's need for a line-locked clock points to the FS6131 line-lock member, whose datasheet register map was not read: the exact part number is **unknown**.
- The genlock fields `GEN_PLL_InputControl` and `GEN_PLL_Osc_Div` (`PBJ.h` section 5) are ICS1523 register names, and `GEN_AMI_REG1/2/6` the AMI part's: the genlock handler reprograms the same clock part (registers 0 and 7, or 1, 2 and 6) to lock to an external sync. **inferred** from the names.

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

### Field names that bear on the line table and genlock (pass 7)

**established** (names in the `.vfo` string table, `1280x1024_60.vfo`): `GEN_AMI_REG1`, `GEN_AMI_REG2`, `GEN_AMI_REG5`, `GEN_AMI_REG6`, `GEN_PLL_InputControl`, `GEN_PLL_Osc_Div` and `GEN_Control_mask`; and for the timing generator `TotalSignalCount`, `SignalInitialStateValue`, `SignalInitialStateValid`, `TransitionDirectionHigh`, `TransitionDirectionLow`, `TransitionDirectionSupport`, `BeginTime`, `EndTime`, `HBlank`, `MinHBlank`, `HorizontalSync_P`, `CSync`, `FieldColor`, `FieldEye`, `StateRepetitionMaximum`, `FetchExtraClocks`.

- **established.** The four `GEN_AMI_REG` names match the four registers `odsyGenlockInterrupt` writes from timing-structure words 236-248 in its "got" case, and the two `GEN_PLL` names match the two registers it writes for the other clock part (`PBJ.h` section 5). So words 236-248 are these `.vfo` fields; their file offsets were not located.
- **inferred.** The compiler describes a line as a set of output signals, each with an initial state and transitions at begin and end times, repeated by state. That fits the reading that the low byte of a line-table entry holds the levels of up to eight such signals for the span the entry times, with bit 7 the one that steps once per line (the 0x0a to 0x8a change), and bits 0, 1 and 5 the ones that differ between sync, back-porch and active line types. Which signal each bit drives: **unknown**. The signal count of the shipped files was not decoded; it would bound how many low-byte bits are live.
- **unknown.** Event entries (bits 14:12 = 100): the field names offer `FetchExtraClocks` and `StateRepetitionMaximum` as candidates for the zero-time events in the active region, nothing more.

### Next steps for a reader of this

1. Decode the line-table entry bits: compare line types of one timing that differ only in sync or blanking, and the two built-in timings line by line.
2. Read `odsyReadVideoFormat` and `odsyLoadTimingTable` in `odyssey.so` for the `.vfo` to structure conversion.
3. Trace the branches of `odsyLoadTimingTable` for words 220, 224 and 264 to 280, and read `odsyRetraceHandler` and `odsyGenlockInterrupt`.

## Cursor and overlay planes (pass 6)

Release IRIX 6.5.30m, IP30. Sources: `gfP_OdsyBRDMGRcursor` and `gf_OdsyPositionCursor` (`odsy_brdmgr.o`, disassembly `odsy_kernel/disasm/odsy_brdmgr/`), and in `ddx/odyssey.so` `odsyRealizeCursor`, `odsySetCursorColor` (disassembly `ddx/asm/odyssey/odsy/odsy.s`). Header words are `.lit8` constants and `lui`/`ori` immediates; the display-FIFO header layout is in `DISPLAY.h` section 1.

### Kernel cursor request

- **established.** `gfP_OdsyBRDMGRcursor(dev, ..., arg, ...)` copies 40 bytes from the caller and acts on a flag word at offset 0, each flag in the order tested:

| Flag | Argument | Effect |
|---|---|---|
| 0x01 | words 1: hi16 and lo16 | stored in the board record at -19668 and -19666 (hotspot offsets, subtracted from the position) |
| 0x02 | word 2: hi16 = x, lo16 = y | `gf_OdsyPositionCursor`: stores x and y in the record (-19672, -19670) and writes the display-FIFO word `0x39600001` (or `0x79600001`) with data `((x - x0) << 16) | ((y - y0) & 0xffff)`, header address 0x2580, type 3 when record bit 2 of the control word (-19664) is 0, type 7 otherwise |
| 0x04 | word 3 | replaces the control word at record -19664 and writes it with header `0x79604001` (type 7, address 0x2581) |
| 0x08 | pointer in word 4 | copies 60 bytes in, writes them as 15 words with header `0x3964000f` (type 3, address 0x2590, count 15) |
| 0x10 | pointer in word 6 | copies 512 bytes in, writes 128 words with header `0x39400080` (type 3, address 0x2500) |
| 0x20 | pointer in word 8 | copies 256 bytes in, writes 64 words with header `0x39700040` (type 3, address 0x25c0) |

  (Pointer words are 64-bit and sit at offsets 16, 24 and 32 of the argument.) Before each write the driver waits for the display FIFO level to fall to 15 (7 before the colour block); a copyin failure returns 14, a FIFO timeout 5. An absent flag leaves that item untouched.
- **established.** `DISPLAY.h`'s `VTG_REG_2580` and `VTG_REG_2581` are these two words: 0x2580 is the cursor position, 0x2581 the control word the cursor request rewrites. Other display-FIFO writers in the driver wrap their stores with the same word (read the record's control word, compare its bit 5 against a record halfword, store `0x79604001 | word`, toggle bit 5, store again, then flush a queued pending doubleword at record -31416): **established** as a code pattern in `odsyGatherInfo`, `odsyGenlockInterrupt` and `gfP_OdsyBRDMGRcursor`; what bits 0, 1 and 5 do on the board: **unknown**.
- **inferred.** 0x2500 to 0x257f (128 words) and 0x25c0 to 0x25ff (64 words) hold the cursor image: 1024 pixels of a 32 x 32 cursor at 4 bits and 2 bits per pixel are exactly 512 and 256 bytes. The 15 words at 0x2590 are then the colours for pixel values 0 to 14, with 15 having no entry (`docs/odyssey-so-reads.md`, `odsySetCursorColor..CB`: word 0 is the cursor's background colour, word 1 its foreground; the X module gives background pixels glyph value 0 under alpha 3). Reason: sizes and the X module's 32-pixel clamp, below. Not confirmed on hardware; the first block's meaning versus the second's is **unknown**.
- **inferred (pass 12: the PROM textport's cursor set-up and the kernel cursor request).** The three blocks are glyph (0x2500, 4 bits a pixel), alpha (0x25c0, 2 bits a pixel) and cursor colour table (0x2590, 15 entries). A glyph pixel is an index into the colour table; what index 15 selects is **unknown** from the binaries read here. The alpha plane decides where the cursor shows: the PROM's arrow sets alpha 3 on every arrow pixel and 0 elsewhere, and its glyph uses index 2 for the outline and 1 for the fill. A colour-table entry is three 10-bit fields at 29:20, 19:10 and 9:0. The PROM builds each word from 8-bit values shifted left by 22, 12 and 2 (`firmware-images.md`, the cursor set-up), which puts each value in the top eight bits of the same three fields that the X module fills (`odsySetCursorColor` above), with the low two bits of each field zero. An earlier reading of this passage took the shifts as fields at 31:22, 21:12 and 11:2; an 8-bit value shifted left by 22 reaches only bit 29, so that reading was wrong and the two packings agree. The PROM also notes that the stored glyph is the image with its two middle nibble columns swapped and mirrored, the same nibble order as the X module's table below.
- **inferred.** Alpha 3 = opaque cursor pixel, 0 = transparent (from the PROM arrow, the only shipped image with a known look). Alpha 1 and 2: **unknown: no shipped software or published source depends on it** for a fixed meaning; the X module builds them from source and mask bits (below), and no blend levels are named. Routes tried: the PROM and kernel cursor code, `odsyRealizeCursor`, `gfP_OdsyBRDMGRcursor`.
- **inferred.** The control word 0x2581 has five fields. Their bit positions, from the IP30 PROM binary (`firmware/IP30prom.bin`, rev 4.17; `firmware-images.md`, the cursor set-up): the PROM's store of the word 0x2581 clears bits 4:2 and sets bits 1:0, so two fields sit in bits 1:0 and three in bits 4:2 (**established**). What each field is (the guesses are dual head, a second enable, cross-hair, cursor enable and a delay enable) and which bit is which: **unknown** from the binaries read here; the 6.5.30 kernel touches bits 0, 1 and 5 (above).

### X module

- **established.** `odsyRealizeCursor` allocates a 768-byte buffer (512 + 256, the two kernel copyin sizes), clamps the X cursor's width and height to 32, and fills it from the source and mask bitmaps by shifting 2-bit and 4-bit fields into 32-bit words (rows of 16 bytes for the first part, 8 bytes for the second, each starting at offset 512 of the buffer in the second case). The pixel-value mapping from source and mask bits: not traced, **unknown**.
- **established.** `odsySetCursorColor` takes 16-bit X colour components, shifts them right by 4 to a 12-bit value, indexes a 12-bit-in 16-bit-out table (the screen's gamma table, pointer at screen record +12) and packs the three results into one word with R in bits 29:20, G in 19:10, B in 9:0: the colour-map entry format (`DISPLAY.h` `CMAP_*`). It builds a foreground and a background word, and a third when the cursor has a second colour record. **established** for the packing; that these words are what the kernel's 15-word block holds is **inferred**.

### Overlay planes

Pass 7, corrected. This pass first concluded that the drivers model no overlay planes. That conclusion is withdrawn: a run of the X server under an emulator listed visual 0x23 in `SERVER_OVERLAY_VISUALS` with transparent pixel 0 in layer 1, and drew menus there, from a build of `odyssey.so` other than the one read here. An observation of the running server outweighs this negative search. What remains is a set of search results about the file read, all **established** as searches:

- The X server advertises overlay visuals through `nfbInitServerOverlayVisualsProperty` (`ddx/asm/odyssey/nfb/nfb.s`), which builds `SERVER_OVERLAY_VISUALS` from per-visual capabilities: for each visual it calls `nmbxLookupCapability` with the atoms `TRANSPARENT_PIXEL` and `FRAME_BUFFER_LAYER` and adds an entry only when one of them is present. The odsy code (`ddx/asm/odyssey/odsy/odsy.s`) registers capabilities only through the accumulation-buffer names (`nmbxAccRedSizeString` and its siblings, `nmbxAccumulationBufferString`); it never references `nmbxTransparentPixelString` and no odsy code names either atom. So no odsy visual carries a transparent pixel or a layer number, and the property lists none.
- The 53 entries of `odsyVisuals` (VA 0x017345f8) are PseudoColor 8 (256 entries) and 12 (4096 entries), StaticColor 8, TrueColor 12, 15, 24 and 30, and DirectColor 24 (class, bits per channel, colormap size and depth read from each 36-byte record). None is a 2- or 4-bit visual, the usual overlay depths on SGI hardware.
- The display-mode table (`DISPLAY.h` section 2) and the PB&J address list (`PBJ.h` section 3) hold no overlay or popup entry, and no display FIFO header in any kernel object targets an address outside that list.
- `ddxOverlayFlag` and `ddxNoOverlaysFlag` (from `Xsgi`) are read in the visual-building loop of `odsyInit`: with `ddxOverlayFlag` set the loop stores a register value (the one the loop also uses as the constant 1) into offset 56 of the record being built at `sp + 1344`, and with `ddxNoOverlaysFlag` set the loop skips a visual when the word at `.sdata` offset 0x35ec from its base register is zero (whether that base steps per visual was not settled). What those fields mean: **unknown**.
- **unknown.** Where the server registers the overlay capability, and how overlay pixels are stored and shown.

## Scanout path: what BUZZ and the host drivers do (pass 7)

IRIX 6.5.30m, IP30. Sources named per item. The chip-level registers are in `PBJ.h`; this section ties BUZZ and the drivers to them.

### BUZZ's part

- **established.** Every display-side write goes through BUZZ: the display FIFO port is BUZZ PIO +0x400000 and its fill level is bits 6:0 of BUZZ register 0x106c; the read-back of display registers is BUZZ PIO +0x220000 (`PBJ.h` section 2). The display-side interrupts (genlock, retrace, DBE overflow) are BUZZ interrupt sources and flags bits (`PBJ.h` section 7).
- **established.** Buffer swaps are BUZZ PIO writes, one bit per window id (WID). `odsySwapBuffer` (`odsy_retrace.o`) rejects an id of 32 or more ("wid %d is out of range"), and for the WIDs that swap now writes the ones whose new buffer bit (driver word at record +0x6f9c) is set to +0x10c4 and the others to +0x10cc; for the other WIDs being swapped it writes +0x10b4 with the bits where two driver masks (record +0x6f70 and +0x6f9c) differ, and +0x10bc with the remaining pending set (exact roles of those masks: **unknown**). `gf_OdsySetDisplayMode` uses the same +0x10c4/+0x10cc pair for the buffer flag of a display-mode write with an id below 32. The retrace handler compares +0x10d4 against its shadow (`docs/buzz.md` section 6). **inferred:** BUZZ (or PB&J through BUZZ) keeps one front/back select bit per WID, set by +0x10c4 and cleared by +0x10cc, latched at vertical retrace, and +0x10d4 reads the latched state.
- **established.** A swap is held until a retrace count is reached: `odsySwapBuffer` proceeds when the board's retrace counter (record +0x80) has reached the WID's target (per-WID record word +0x6fb4) or the WID is flagged; a WID still waiting after 301 attempts (`>= 0x12d`) is forced. **inferred:** this is the swap interval.
- **established.** The frame buffer lives in board memory in 16 x 16 pixel tiles: `odsyConfigFb` (`odsy_brdmgr.o`) sizes buffers as ceil(width/16) x ceil(height/16) tiles, with the tile row rounded up to even, and divides the tile count by 1, 2 or 4 for 32, 16 or 8 bits per pixel, so one allocation unit holds 16 x 16 x 4 bytes = 1 KB of pixels. Region starts are kept in those units, rounded to a multiple of four and shifted left 9 or 13 in the words handed back. The scanout base (0x2800, 0x2801), pitch (0x2807) and depth (0x2809) are written to PB&J from these values. **established** as arithmetic; that the unit is 1 KB of board memory is **inferred** from the division by bytes per pixel.

### Host software

- **established.** The X module (`odyssey.so`) drives scanout only through the kernel's private ioctls (number `0x6f640000 + n`, `docs/opengl.md`): `odsyLdFmtByName` and `odsySetFBConfig` send 27 (configure frame buffer), `odsyLoadTimingTable` sends 31, 32 and 33 (load timing table, VTG control, I2C), `odsyInitDefaultHW` 32, `odsyDisplayInit` 29 (display mode), `odsyBlankScreen` 30, `odsyLoadCmap` and `odsyLoadGamma0` 26 (colour maps, the multi-word type-7 path of `PBJ.h` section 2), and the cursor routines 28. It never stores to the display FIFO itself. **established** by the `lui 0x6f64` / `ori` pairs in each function of `ddx/asm/odyssey/odsy/odsy.s`.
- **established.** libGLcore's `__glOdysseySwapBuffers` (`ody_unixcontext.s`) sends, through the command FIFO: the settle sequence; block 0x5a with the context's write-back location ORed with 0x8000 and an incremented tag; the drawable descriptor block 0x017 three times (as held, with the third word 0, and with bit 23 ORed into the third word), with the reset sequence for blocks 0x041/0x04b/0x040 or the word `0x90008116` in front by bit 27 of the third word, as in make-current; then ioctl 1005 with a context word and two zeros. A failing ioctl takes an error path. **inferred:** the three 0x017 writes retarget drawing at the other buffer, and ioctl 1005 asks the kernel to schedule the display swap for the window (the kernel handler for 1005 was not traced; `gf_OdsySchedSwapBuf` is the candidate, by name).
- **unknown.** Which kernel entry handles ioctl 1005; the meaning of bit 23 of block 0x017's third word; how a WID is assigned to a GL window.

## Pass 10: the swap request in the kernel, window ids, cursor bitmaps and the IP35 digital output

Release IRIX 6.5.30m. Kernel objects `rrm.o`, `odsy_retrace.o`, `odsy_dvi.o` (IP35), and `odyssey.so`. Each item carries its label.

### The generic resource-manager ioctls (1000 to 1025)

**established.** `gfxioctl` (`gfx.o`) sends any command from 1000 up to 9999 that the driver does not take itself to `RRM_Dispatch` (`rrm.o`), which accepts 1000 to 1099 and calls a handler from a table of 24-byte entries in `rrm.o` `.data` (handler pointer, argument size and a flag word, name pointer; read from the `.rel.data` relocations and the data words). The numbers in use, with the handler:

| n | Handler | n | Handler |
|---|---|---|---|
| 1000 | `RRM_OpenRN` | 1013 | `RRM_SwapGroup` |
| 1001 | `RRM_CloseRN` | 1014 | `RRM_SwapUnGroup` |
| 1002 | `RRM_BindProcToRN` | 1015 | `RRM_ValidateMessage` |
| 1003 | `RRM_BindRNToClip` | 1016 | `RRM_GetDisplayModes` |
| 1004 | `RRM_UnbindRNFromClip` | 1017 | `RRM_LoadDisplayMode` |
| 1005 | `RRM_SwapBuf` | 1018 | `RRM_CushionBuffer` |
| 1006 | `RRM_SetSwapInterval` | 1019 | `RRM_SwapReady` |
| 1007 | `RRM_WaitForRetrace` | 1020 | `RRM_MGR_SwapBuf` |
| 1008 | `RRM_SetDisplayMode` | 1021 to 1023 | `RRM_SetVideoSync`, `RRM_GetVideoSync`, `RRM_WaitVideoSync` |
| 1009 | `RRM_Message` | 1024 | `RRM_BindRNToReadAndClip` |
| 1010 | `RRM_InvalidateRN` | 1025 | `RRM_MapClipToSwapbufID` |
| 1011, 1012 | `RRM_ValidateClip`, `RRM_ValidateSwapBuf` | | |

### Ioctl 1005, the kernel side of a buffer swap

**established** (`RRM_SwapBuf` in `rrm.o`, `gf_OdsySchedSwapBuf` in `odsy_retrace.o`; IP30). This answers the open question of which entry handles the call that libGLcore sends at the end of its swap sequence: ioctl 1005 with a 12-byte argument (the three words libGLcore sends, a context word and two zeros).

- `RRM_SwapBuf` marks the caller's resource node as having swapped (resource-mask bit 8), waits through `rrmSwapWait` when swap-interval mode is on and the retrace target has not been reached, checks the caller, then copies the node's swap record: its word at +20 becomes the node's swap-buffer id (`+28`, low byte; 255 means none). When the display is the caller's, it toggles the record's front/back halfword (+18) and copies it into bit 2 of the argument's third word. That word goes into the record (+32) and, for an id below the board's table size, into the board's per-id table. It raises the board record's in-flight request counter (+80, the same counter make-current raises), invalidates the window's pane, and calls the board driver's swap entry (slot 136 of the operation table in `odsy.o`, which is `gf_OdsySchedSwapBuf`), passing the node, the argument's second word and the id.
- `gf_OdsySchedSwapBuf(board, node, id)` rejects an id of 32 or more. It first makes the caller flow-control attached (`odsy_flow_am_i_attached`, with the attach bit in the process record's flags) and pushes the buffer select (`odsyPushBufferSelect`). Under the board's swap mutex it waits (`sv_wait`) while a swap for the same id is still pending (pending mask at record +28568, bit per id). It then sets the pending bit, builds the mask of ids that swap together with this one (the swap group's members, linked from the group at node+160/+168, each member's id at +20), and writes that mask to board +0x10bc (and record +28544) when the swap list is empty or its head is this group. It fills a 40-byte per-id record at +28584 + 40 x id: the drawable, the group, a halfword read from the drawable state, the group mask, a retrace target (the group's two counter words added, bounded below by the retrace counter plus the swap interval) and a zeroed repeat counter. It updates two 32-bit bitmaps (+28572 from the group's front/back halfword, +28576 from the drawable's word at +580, both shifted by the id), compares a per-drawable halfword of a table at +880 with the record's halfword, and then either calls `odsySwapBuffer(board, id)` at once (equal) or defers by setting the id's bit in +28548 (the retrace handler later calls `odsySwapBuffer`, `docs/buzz.md` section 6).
- **inferred.** The id the swap request names is the window id the retrace handler's per-id registers (0x10b4 to 0x10d4) use; the per-id record and bitmaps are the driver's shadow of what those registers hold.
- **established** (`odsy_retrace.o`, disassembly of `odsySwapBuffer`, `gf_OdsySchedSwapBuf`, `odsyRetraceHandler`). The swap path never waits for the board's queues. The only `odsy_poll_dfifo_level` calls in the object are in `gf_OdsySetDisplayMode` (a display-FIFO write), and the one load at +0x106c in `gf_OdsySchedSwapBuf` is the read-back after the flow-control detach, whose value goes to the stack and is not compared. The register stores of `odsySwapBuffer` are direct stores at board +0x10bc, +0x10c4, +0x10cc and +0x10b4 (displacements 4284, 4292, 4300, 4276), not FIFO words.
- **inferred.** The swap is ordered behind earlier drawing by a host-memory counter, not by a board wait. `__glOdysseySwapBuffers` sends block 0x5a (slot word | 0x8000, counter) after the frame's drawing. `gf_OdsySchedSwapBuf` takes its target halfword from the hardware-state block at context +176, offset 11068, and compares it with the halfword at table slot (context +244) of the host buffer at record +880 (cleared when the context is created). Equal: it calls `odsySwapBuffer` at once. Otherwise it sets the id's armed bit and `odsySwap_softsync_intr` calls `odsySwapBuffer` when the table halfword has reached the target. Reasoning: the library's counter at context +0xa6b4 is 11068 bytes after the hardware-state block address it passes to the kernel (0x7b78), and +244 is the 32 KB slot whose halfword block 0x5a writes. Earlier notes called this table a video line counter and the target a target line; that was a reading, and the counter reading fits better. Not shown: that the board writes the tag only after executing every earlier draw, which is what makes it a fence. A capture of one double-buffered swap with the timed host write and the +0x10d4 read-back would show it.

### Window ids

**established.** The window id (the "swap-buffer id") of a pane is not chosen by the kernel. `RRM_ValidateSwapBuf` (ioctl 1012) takes a clip id and an id from the caller's argument and `validate_pane_swapbuf` stores the id into the clip's pane (+20) and marks it valid; `RRM_MapClipToSwapbufID` (1025) returns that id for a clip, or -1 when there is no pane. The X module sends 1012 from `odsyValidateSwapbuf`. Panes live in an array of 184-byte records whose length is a driver constant. **inferred** that the X server hands out ids below 32 (the bound `gf_OdsySchedSwapBuf` and `odsySwapBuffer` test); the allocation policy inside the X server (which window gets which id) was not read: **unknown**, a trace of the 1012 calls of an X session with several windows would show it.

### Bit 23 of block 0x017's third word

**unknown** (`docs/open-questions.md`). `__glOdysseySwapBuffers` sends block 0x017 three times and ORs bit 23 into the third word of the last. No kernel code decodes that word, and the saved record only copies it. On a board it would show in: the command stream of a double-buffered swap together with the board's swap bit (the read-back through +0x10d4) after each of the three block writes.

### Cursor bitmaps (`odsyRealizeCursor`, `odyssey.so`)

**established** by reading the routine in full (disassembly `ddx/asm/odyssey/odsy/odsy.s`, 13454): it works on a 32-row cursor, clamping width and height to 32, and fills the 768-byte buffer in two parts per row.

- Part one, 16 bytes per row (32 rows, 512 bytes): the cursor's source row word masked by a left-aligned width mask is cut into eight nibbles; each nibble indexes a 16-entry table of 32-bit constants in the module's read-only data, and the eight results are packed two per word (the entry from the lower nibble in the low half) into four words. So each source pixel becomes four bits through a table lookup. The table (at 0x172b830, the GOT entry at `gp` - 28680 plus 2928; loads at 0x1582ca8-0x1582d20) is **established** as `0x0000, 0x1000, 0x0100, 0x1100, 0x0010, 0x1010, 0x0110, 0x1110, 0x0001, 0x1001, 0x0101, 0x1101, 0x0011, 0x1011, 0x0111, 0x1111`: each source bit becomes a 4-bit pixel of value 1 or 0, and the nibble's bit 3 (the leftmost pixel) lands in the lowest four bits. Part one therefore stores the source as colour index 1 on index 0.
- Part two, 8 bytes per row (256 bytes, written at offset 512 onward): each pixel gets two bits built from a source bit and a mask bit by conditional moves in a fixed pattern, two words per row. Which of the four codes means transparent or inverted: **unknown** (`docs/open-questions.md`) (the displayed result of each of the sixteen code pairs on a known background).

### Digital output on IP35 (`odsy_dvi.o`, IP35 only)

**established** (IP35 `odsy_dvi.o`, 580 lines of text, read in full): the IP35 driver programs a digital video output through I2C with three groups of routines. (1) An FPGA at I2C address 58 (0x3a) that has a single readable and writable byte: `odsy_dviFPGARegRead` and `odsy_dviFPGARegWrite` address it and move one byte; `odsy_setDVIFPGA(dev, mask, value)` does a read-modify-write of that byte (clear the mask bits, OR in the value); `odsy_loadDVIFPGA` polls the expander bits read through `elsc_ody_expander_get` (the value shifted right by 3, bit 0 tested) to see that the FPGA has loaded, with up to two tries 500000 us apart, and fails with an error message when bit 0 stays clear. (2) A transmitter at I2C addresses 56 and 57 (0x38 and 0x39: two instances), set up by `odsy_write_XmitRegs`, which writes register 8 = 49, 9 = 25, 10 = 112 (240 when the address is 56), 12 = 137, 13 = 128 and 51 = 0 through the clock-part register-write routine (`odsy_i2cPLLRegWrite`). `odsy_read_XmitRegs` reads registers 8, 9, 10, 12, 13 and 51 back with 10 ms between reads. (3) `odsy_setDVIRegs` ties them together: load the FPGA, clear bits 1:0 of its byte (`odsy_setDVIFPGA` with mask 3, value 0), then write the transmitter registers for address 56 and for 57. Nothing in the IP30 install calls any of it. The chips' identities and the registers' meanings: **unknown** (`docs/open-questions.md`) (an I2C trace of a mode set on an IP35 board with a digital monitor).

### The 320-byte structure builder in the X module

**established.** `odsyLoadTimingTable` in `odyssey.so` (disassembly `ddx/asm/odyssey/odsy/odsy.s`, 137839) clears a 320-byte local structure and fills it by calling `SDBgetSymbolValueScalar(file, name, &field)` once per `.vfo` field name (the main path makes 49 such calls, some into locals), then hands it to the kernel with the timing-table ioctl. An earlier pass decoded only some names from the module's strings: `FormatInfo_H_Active`, `ODY_AMI_PLL_0x0`, `ODY_AMI_PLL_0x4`, `ODY_PLL_OutputEnables`, `ODY_VTG_Control`, `ODY_VTG_InitState`, `ODY_VTG_ChanEn`, `TTL_Sync`, `LineSeqTab`, `FrameTab`, `FormatInfo_DualHead`, `ODY_I2CClockSpeed`, `DPAControl`, `DPAOffset` and `ODY_GEN_hPSD`. Two words come from the caller's format record instead: structure word 184 (the refresh rate, truncated from a floating-point value at record offset 272) and word 172 (record offset 300). The name-to-offset map, **established** by resolving each call's name argument through the module's global offset table (`gp` = 0x173a9c0, the `.got` start plus 0x7ff0; the names are offsets from the GOT entry at `gp` - 28680, 0x172acc0) and its destination from the `a2` argument, for the calls at 0x170a8cc to 0x170b86c of `odsyLoadTimingTable` (`odyssey.so` 0x170a7f0):

| Structure offset | Source |
|---|---|
| 0 and 8, 16 and 24 | `FrameTab` and `LineSeqTab`: a buffer allocated for each array and its length |
| 28, 32, 36 | `ODY_VTG_Control` (bit 1 also set when the screen record's word 136 is nonzero), `ODY_VTG_InitState`, `ODY_VTG_ChanEn` |
| 40 to 76 | when the screen record's word 136 is nonzero, its words 268 to 304; otherwise `ODY_GEN_lPFD`, `hPFD`, `lPFD_HI`, `hPFD_HI`, `lPFD_LO`, `hPFD_LO`, `lPSD`, `hPSD`, `lHMASK`, `hHMASK` |
| 80, 84 | `ODY_GEN_BP_CLAMP`, `ODY_GENLOCK` |
| 88 | `ODY_GEN_CONTROL` ORed with `GEN_Control_mask` |
| 96 to 124 | `ODY_PLL_DPAControl`, `DPAOffset`, `FdBkDiv0`, `FdBkDiv1`, `InputControl`, `LoopControl`, `Osc_Div`, `OutputEnables` |
| 128 to 156 | `ODY_AMI_PLL_0x0` to `ODY_AMI_PLL_0x7` |
| 160, 164, 168 | `ODY_DAC_Cntrl`, `ODY_DP_Cntrl`, `ODY_SM_Cntrl` |
| 172, 184 | the caller's format record (offset 300; offset 272 truncated, the refresh rate) |
| 176, 180 | `ActivePixelsPerLine`, `FrameBufferHeight` |
| 192 | `AchievedFrequency` |
| 200 | format flags: bit 0 `FormatInfo_Interlaced` (bit 1 also when the format record's word 304 points at a nonzero word), bit 2 `FormatInfo_Stereo`, bit 3 `FormatInfo_FullScreenStereo`, bit 4 `FormatInfo_DualHead`, bit 5 `FormatInfo_FieldSequential` |
| 208, 212, 216 | `ODY_DCBClockSpeed`, `ODY_DDCClockSpeed`, `ODY_I2CClockSpeed` |
| 220 | the routine's fifth argument |
| 224 | the screen record's word 136 |
| 236 to 248 | `GEN_AMI_REG1`, `GEN_AMI_REG2`, `GEN_AMI_REG5`, `GEN_AMI_REG6` |
| 252 | 1 when the board's halfword 58 is 3, else 0 |
| 256, 284, 312 | 0 |
| 260 | 255 or 187, by whether the computed pixel clock exceeds a constant |
| 264 | 240 when `TTL_Sync` is 3, else 0 |
| 268 to 280 | `DCDHorizontalFrontPorch`, `DCDHorizontalSync`, `DCDHorizontalBackPorch` and `ActivePixelsPerLine`, each halved |
| 288, 308 | 64, 142 |
| 292 | divider selection found by a search over a 4 x 4 table of ratios: index bits 1:0, 3:2 and 5:4 |
| 296, 300 | `DCDTotalPixelsPerLine` bits 7:0 and bits 13:8 |
| 304 | 3, 18 or 19 by the pixel clock (`DCDTotalPixelsPerLine` times `TotalLinesPerFrame` times `FramesPerSecond`, over a constant) |

Words 92, 188, 204, 228, 232 and 316 get no store after the routine clears the structure, so they reach the kernel as 0; word 196 is 0 too unless `AchievedFrequency` is an eight-byte value, which this reading does not settle. With the loader's table above this names every display-FIFO destination: 0x2481-0x2483 take the VTG control, initial state and channel enable; 0x27c0-0x27cc the genlock words and control; 0x26c0, 0x2600 and 0x2680 the DAC, data-path and SM controls; 0x2802 and 0x2803 the active width and frame-buffer height; 0x2b00 the DCB clock-speed code; 0x2700 bits 14:12 and 17:15 the DDC and I2C clock-speed codes. Words 264 to 304 are the timing of the digital (DCD) output, which reaches its FPGA over I2C. The names are the format compiler's; what each field does in the chip is still the hardware question below.

### What the display rows still lack

Everything left in the display rows is a property of the hardware that no software reads back, so each is an open question (`docs/open-questions.md`); what a board would show is named with it:

- **Registers, bit fields of the display registers and the colour-map top:** the read-backs in `docs/pbj.md` (last bullet).
- **Interrupts, what raises the retrace and genlock sources:** the flags register read at each event (`docs/buzz.md`, interrupts comparison; `docs/pbj.md`).
- **Line-table low-byte bits, event entries, bit 13 and the entry duration rule:** a logic-analyser capture of the video output signals (sync, blank, pixel data) with a known timing loaded, changing one table entry bit at a time and recording which output line moves.
- **Display-mode word bits 23:12 and 3:0 (`DISPLAY.h` section 2) and the repeat-versus-scale reading of the mode field:** the display-FIFO mode word for each id read back through +0x220000 (`docs/pbj.md`), with the displayed width of a known test image at each id.
- **Narrow-visual scanout and overlays:** a screenshot of a known 12-bit and 15-bit image through the real output (compare with the widened values in the tables above), and a run of the X server that lists overlay visuals with its call trace of the overlay capability registration.
- **Which pixels move from BUZZ memory to PB&J:** the bus trace named in `docs/pbj.md`.

## Published display facts (guides and datasheets)

**established (published)** unless marked; sources 8 to 13 of [published-sources.md](published-sources.md), printed pages.

- **Two-channel formats.** A dual channel option presents one logical screen across two monitors, for example 2560 x 1024, and the format list marks those settings with a "2@" prefix (007-4209-003 pp. 105-110). This is the same naming as the `2@...` files of the `.vfo` list above, so the file prefix is the product's own marker. Window sizes then need an application limit because some programs fill the whole logical screen (p. 109).
- **Scan-rate lists.** The Octane2 guide names 640 x 480, 800 x 600, 1024 x 768 (60 and 75 Hz), 1280 x 720 (60 and 72), 1280 x 1024 at 60 (safe) and 96 Hz, 1600 x 1024 at 82.98, 1600 x 1200 (72 and 75), 1920 x 1080 at 72, 1920 x 1200 at 60 and a 1280 x 1024 stereo mode at 50 Hz per eye (007-4207-002 p. 239); V10 and V12 support more rates than V6 and V8 (007-4210-003 p. 32). The Fuel guide adds interlaced 30 Hz modes at 1280 x 1024, 1280 x 960, 1920 x 1035 and 1920 x 1080, and a 1600 x 1200 row that V10 supports at 8 bits per pixel but not at 16 (007-4480-001 p. 138). Which of these rows correspond to which shipped `.vfo` file is not checked here.
- **Stereo.** The StereoView pin carries a left/right eye level (1 is left) with a 12 V supply (007-4210-003 p. 30); the swap-ready pin is an open-collector gang line for synchronising buffer swaps (p. 31); genlock is one signal pin and a return at 3.3 V TTL or video levels (p. 30). The genlock register sequence of `PBJ.h` section 5 is the software side.
- **Timing table state file.** A forum thread names the per-board timing-table file as `/var/X11/Xvc/Odyssey0_TimingTable`, and that clearing it forces the default resolution; the report is from a user and not from SGI (`docs/sources/reports/irixnet-vpro-odyssey-diagnostic-thread-1573.html`). Its format and its relation to the structure the kernel loads ([Pieces](#pieces)) were not checked: **unknown**.
- **DAC.** The Fuel datasheet gives a 10-bit digital-to-analog display interface and 8-bit window ids (specs/fuel-datasheet-3215.pdf), consistent with the window-id handling under "Window ids" above.


## Formats the X module refuses on a BUZZ A.1 board

Release 6.5.30m. **Established** arithmetic: the rule is the one in [board.md](board.md), "Board kinds seen by software" (a pixel clock strictly between 109.0 and 194.0 MHz is refused), applied to the pixel clocks of the table in [display-files.md](display-files.md). Dual-channel files also go through the option-card test, which this list does not model. Of the 71 shipped files 35 are refused:

`1280x1024_72` (129.25 MHz), `1280x1024_75` (134.956), `1280x1024_85` (157.455), `1280x1024_96s` (162.079), `1280x1024_100s_ds` (144.749), `1600x1024_60` (136.358), `1600x1024_72` (158.4), `1600x1200_60` (154.057), `1920x1200_25f` (152.579), `1920x1200_30f` (186.0), `1920x1200_60p` (157.386), the eleven `1920x1154` files from 130.771 to 163.641 MHz (`2398r2`, `24r2`, `25f`, `25r2`, `2997f`, `2997r2`, `30f`, `30r2`, `50`, `5994`, `60`), and in the dual-channel set `2@1280x1024_72`, `2@1280x1024_85`, `2@1600x1024_72`, `2@1600x1024_83_ds`, `2@1600x1200_60_ds`, `_72_ds`, `_75_ds`, `2@1920x1080_60_ds`, `_72_ds`, `2@1920x1200_50p`, `_60_ds`, `_60p`, `_72_ds`.

Accepted by that test: every format at or below 108.702 MHz and the ones at or above 194.394 MHz: `1280x1024_100s` (194.394), `1280x1024_96`, `1600x1024_83`, `1600x1200_72` and `1920x1200_60` (195.0 each), `1600x1200_75` (202.5) and `1920x1080_72` (199.987), plus the low-clock files (`640x480_60` to `1280x1024_60`, `1280x1024_59`, `1280x720_*` and the interlaced and 25 or 30 frame files). `1280x1024_60` and `1280x1024_60_safe` pass the clock test but are refused at depth 16. The fastest shipped clock is 202.5 MHz (`1600x1200_75`).
