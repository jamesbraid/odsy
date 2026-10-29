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

Two examples were laid side by side (`odsy_timings.o`, words are big-endian 32-bit, offsets in bytes; the first is the 1280x1024 72 Hz default, the second `odsy_default_timing1`):

| Offset | 72 Hz default | `timing1` | Reading |
|---|---|---|---|
| 0x08, 0x14, 0x18, 0x1c | 0x18, 0x30, 0x116, 0x1f0 | 0x16, 0x3d0, 0x10e, 0x1b0 | **unknown.** Differ between the two; 0x04 and 0x14 of `timing1` look like offsets into the table block (0x3a0, 0x3d0) |
| 0x24 | 0x3fffff | 0x3fffff | **unknown** (a 22-bit all-ones mask) |
| 0xb0 | 0x500 (1280) | 0x500 | **inferred** active pixels per line: it equals the format name |
| 0xb4 | 0x400 (1024) | 0x400 | **inferred** active lines per frame |
| 0xb8 | 0x48 (72) | 0x3c (60) | **inferred** frame rate in Hz: the first structure is named `default_1280x1024_72_timing` and holds 72; the second's object name carries no rate, so its 60 is a value only |
| 0xa0, 0xa4, 0xa8 | 6, 0x306, 0x10120000 | same | **unknown**, equal in both |
| 0x118, 0x120 | 0x280, 0x40 | 0x280, 0x40 | **unknown**; 0x280 is half of 1280 |
| 0x68, 0x78, 0xc4, 0x10c to 0x114, 0x128 | differ | differ | **unknown** (porch and sync candidates: they change with the refresh rate) |

The loader reads offsets 128 to 156 and 208 to 216 of the structure (`odsyLoadTimingTable`, disassembly lines near `odsy_brdmgr.text.s` 4223 and following), the first of which holds small integers in both examples; their meaning is **unknown**. Do not use the table above as a field map.

### The `.vfo` container

- **established.** Big-endian. The file starts `00000004 'sdb ' 00000000 00000001 00000001 00000001 00000064`, then the tool name `VideoFormatCompiler`, padding to 0x80, then a record beginning `000000ae` (decimal 174) and `0000096c` (2412). The strings that follow are, in file order: `ODY_VTG`, the human name (for example `1280 x 1024 @ 72Hz  for Odyssey`), `None`, `VTG1`, then 181 NUL-terminated strings of which the field names below are the main part, ending with `yydebug` (a parser name left in the string table). Header layout beyond this: **unknown**.
- **established.** In `1280x1024_72.vfo` the words at 0x98 and 0x9c are 0x400 and 0x500 (1024 and 1280), and the doubles at 0xa0 and 0xa8 decode from `41ac9c3800000000` and `4168cba800000000` to 240000000.0 and 13000000.0. **inferred:** 1024 and 1280 are the active lines and pixels (they equal the format name). What the two doubles are (a 240 MHz and a 13 MHz frequency) is **unknown**; the string table has `DACRateMaximum`/`DACRateMinimum` and `SystemVideoClockRateMaximum`/`Minimum` but the file was not decoded far enough to match them.
- **established (names only).** The string table names these field groups. Geometry: `ActiveLinesPerFrame`, `ActivePixelsPerLine`, `TotalLinesPerFrame`, `TotalPixelsPerLine`, `HorizontalFrontPorch`, `HorizontalBackPorch`, `HorizontalSync`, `VerticalFrontPorch`, `VerticalBackPorch`, `VerticalSync`, `VSyncLines`, `FieldsPerFrame`, `FramesPerSecond`, `VerticalRetraceRate`, the `FormatInfo_*` set (porch, sync, stereo, interlace and dual-head fields), `FrameBufferWidth`, `FrameBufferHeight`, `ScreenHeight`. Clocking: `DesiredFrequency`, `AchievedFrequency`, `VideoClockRatio*`, `DCB_Freq`, `ODY_DCBClockSpeed`, `ODY_DDCClockSpeed`, `ODY_I2CClockSpeed`, `ODY_PLL_*` (`InputControl`, `LoopControl`, `Osc_Div`, `FdBkDiv0/1`, `DPAControl`, `DPAOffset`, `OutputEnables`), `ODY_AMI_PLL_0x0..0x7`, `ODY_2CHANNEL_PLL_reg0..7`. Output and mode: `ODY_VTG_Control`, `ODY_VTG_ChanEn`, `ODY_VTG_InitState`, `ODY_SM_Cntrl`, `ODY_Multibuzz_SM_Cntrl`, `ODY_DAC_Cntrl`, `ODY_DP_Cntrl`, `ODY_GENLOCK`, `ODY_GEN_*` (`BP_CLAMP`, `CONTROL`, `hPFD`, `lPFD`, `hPSD`, `lPSD`, `hHMASK`, `lHMASK`), `ODY_2CHANNEL_FPGA_0..5`, `ODY_2CHANNEL_RAMDAC_ctrl`, `ODY_2CHANNEL_TMDS_ctrl`, `CSync`, `TTL_Sync`, `RS343A_Levels`, `Enable_Stereo`, `FieldSequential`-style stereo fields, `FrameTab`, `LineSeqTab`. Values and their binary encoding: **unknown**; none was decoded.
- **inferred.** The file is a VTG (video timing generator) program: a table of line types (`LineTypeCount`, `LineSeqTab`, `FrameTab`, `VerticalStateCount`) plus register images for the clock parts and the output stage. Reason: those field names, and the 1840 bytes of `odsy_timings.o` `.data` before and between the two 320-byte structures are made of repeated 40-byte-stride blocks that look like per-line-type state records (for example `7f0a45cf 0d8a7f0a 458e...` repeating) — not decoded.
- **unknown.** How the 320-byte kernel structure maps to these fields, which part of the VPro board each register image feeds, and the pixel-clock to display-FIFO relation.

### Next steps for a reader of this

1. Decode the `.vfo` value block: write a parser over three files of the same size class (`1280x1024_60.vfo` and `_60_safe.vfo` are both 8440 bytes and should differ in few bytes) and diff to find which words carry porches and clock values; match against the known timing of the named mode.
2. Read `odsyLoadTimingTable` (`odsy_brdmgr.text.s` from line 4223, about 2000 lines) for the register offsets it writes and tie the structure offsets to them.
3. Read `odsyRetraceHandler` and `odsyGenlockInterrupt`.
