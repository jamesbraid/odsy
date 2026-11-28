# Retrace interrupt and video-sync count in a two-field format: per field or per frame

Question: for a VPro (Odyssey) format with two fields to a frame, such as `1920x1200_30f`, does the board raise its retrace interrupt, and does the counter that `glXGetVideoSyncSGI` returns advance, once per field or once per frame? A model that raised one per field made a 30 frame-per-second clip play at double speed.

Release IRIX 6.5.30m. Kernel objects `usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`, `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_retrace.o)`, `usr/cpu/sysgen/IP30boot/rrm.o`; library `usr/gfx/arch/IP30ODSY64/libGL.so`; X module `usr/lib/X11/dyDDX/odyssey.so`; format file `usr/gfx/ucode/ODSY/vof/1920x1200_30f.vfo`; compiler rules `usr/gfx/ucode/vfc/rules/VPro_Board.def`. Offsets are in the member or image named. Ratings: established, observed, software expectation, inferred, approximation, unknown. Nothing here is observed: no board was read.

## Answers

| # | Answer | Rating |
|---|---|---|
| 1 | `1920x1200_30f` is progressive, not interlaced. It has two fields per frame, each a full 1200-line scan of the same frame-buffer lines. Frame rate 29.8997 Hz, so each field (the monitor's vertical refresh) comes at 59.7994 Hz. | established (file fields, arithmetic); that the field rate is the monitor's refresh is inferred |
| 2a | The video-sync counter that `glXGetVideoSyncSGI` returns is raised once per retrace interrupt, unconditionally. The handler reads no field, frame or parity state. | established |
| 2b | The kernel cannot tell a field interrupt from a frame interrupt, so the interrupt rate is whatever the board's timing program makes it. The format compiler's rules put the only vertical-interrupt-named output (`VINT`) once per frame, not per field. If that output is the retrace interrupt, `1920x1200_30f` raises 29.9 a second and so does the counter. | inferred, and only if 2c holds |
| 2c | Whether `VINT` is what raises the retrace interrupt (source 3). | unknown |
| 3 | The two manuals state the counter, not the interrupt. The VPro guide (full frame) agrees with the shipped format rules read as in 2b; the OpenGL guide's generic per-retrace text does not address a progressive two-field format. | software expectation (manuals), inferred (match) |

## 1. What kind of format `1920x1200_30f` is

All values are **established**, read from the format file's name table (table at 0xd38, 180 fields; the container is described in [display-files.md](../../../video/display-files.md)). The three files compared are `1920x1200_30f.vfo`, `1920x1080_30i.vfo` (interlaced) and `1920x1200_60.vfo` (one field).

| Field (value offset in the file) | `1920x1200_30f` | `1920x1080_30i` | `1920x1200_60` |
|---|---|---|---|
| `FormatInfo_Interlaced` (0xd2c / 0x137c / 0xa84) | 0 | 1 | 0 |
| `FieldsPerFrame` (0xbc) | 2 | 2 | 1 |
| `FieldLineCount` (0xc0, count then values) | 1200, 1200 | 540, 540 | 1200 |
| `FieldLineOffset` (0xcc) | 0, 0 | 1, 0 | 0 |
| `FieldLineSkip` (0xd8) | 0, 0 | 1, 1 | 0 |
| `SwapsPerFrame` | 1 (0x198) | 2 (0x1a4) | 1 (0x180) |
| `FieldSwap` (0xe4) | 1, 0 | 1, 1 | 1 |
| `TotalLinesPerFrame` / `TotalPixelsPerLine` | 2592 / 2400 (0x1d8, 0x1dc) | 1125 / 2200 | 1242 / 2616 |
| pixel clock (`FormatInfo_PixelClock`) | 186 000 000 (0xce0) | 74 250 000 | 195 000 000 |
| `FramesPerSecond` and `VerticalRetraceRate` | 29.8997 (0x120, 0x1e0) | 30 | 60.017 |
| vertical front / sync / back porch (lines) | 30 / 6 / 60 (0x3a8 to 0x3b0) | | 3 / 3 / 36 |

- **established.** The 30f file is progressive (`FormatInfo_Interlaced` is 0) and its two fields do not interleave: both start at offset 0 with skip 0 and 1200 lines, where the interlaced file's fields start at 1 and 0 with skip 1 and 540 lines each. So each field repaints the whole frame-buffer image. The frame carries 2 x 1296 lines (1200 active, 30 + 6 + 60 porch and sync); both field-vertical-sync entries (`FormatInfo_F_0_V_Sync`, `FormatInfo_F_1_V_Sync`) are present and equal.
- **established (arithmetic).** 186 000 000 / (2400 x 2592) = 29.8997, the stored `FramesPerSecond`; 186 000 000 / (2400 x 1296) = 59.7994 per field. This is the monitor's vertical refresh, **inferred** from the two per-field vertical-sync entries.
- **established.** `VerticalRetraceRate` equals `FramesPerSecond` in all 71 files of `usr/gfx/ucode/ODSY/vof/`, including every two-field, stereo and interlaced one (a two-field 30i file stores 30, not 60). The compiler's "vertical retrace rate" is therefore a frame rate.
- **established.** The X module treats it that way: `odsyReadVideoFormat..MB` (`odyssey.so`, 0x16b3220) stores `VerticalRetraceRate` at node offset +0x218 (0x16b33f4 to 0x16b33fc) and sets the refresh rate at +0x214 to the same value when the format is interlaced (the branch at 0x16b3404), otherwise to `FieldsPerFrame` times it (0x16b3838 to 0x16b3858, `mul.s`). For the 30f file the refresh rate is 2 x 29.8997 = 59.8 Hz, the field rate.
- **established.** The kernel does not read the field count or the refresh rate: in `gfP_OdsyBRDMGRloadTimingTable` and `odsyLoadTimingTable` (`odsy_brdmgr.o`, IP30) no load touches words 172 (`FieldsPerFrame` as the X module stores it) or 184 (refresh rate) of the 320-byte structure. The frame and line tables carry the whole field structure to the timing generator.

## 2. The kernel side: what the counter counts

**established** (whole routines read; IP30 and IP35 listings compared, identical apart from one per-CPU index constant).

- `odsyRetraceHandler` (`odsy_retrace.o`, IP30 0x1274, 716 bytes; IP35 0x131c, same size): after `mutex_lock` on the retrace mutex it adds 1 to the board record's word at +128 (IP30 store at 0x12b8; IP35 0x1360) and 1 to the word at +124 (IP30 0x12c4; IP35 0x136c) on every entry. Nothing before those stores branches. The only board register the handler reads is +0x10d4 (IP30 0x12f8), the per-window buffer-select word; it reads no flags, status or timing-generator register, so it has no field or parity to test. Both counters therefore rise by one per interrupt. The handler runs only as the handler of interrupt source 3 (`devices/buzz/README.md` section 6).
- Nothing else in `odyssey.a` writes those two record words: a search of every `sw` or `sd` to offsets 124 and 128 in the IP30 objects finds the handler, `RRM_SetVideoSync` and `gfxioctl` (both below) and stores to other records (`odsy_ddrn.o`, `odsy_ctxsw.o`, other `rrm.o` routines; the 8-byte stores in `rrm.o` are a different field).
- `RRM_GetVideoSync` (`rrm.o`, IP30 0x431c; ioctl 1022) copies the word at +128 of the board record to the caller. `RRM_SetVideoSync` (0x4308, ioctl 1021) is the only other writer in `rrm.o`. `gfxioctl` (`gfx.o` 0x2b48, command 106, branch at 0x2dc4) also stores zero to +128 of the record at +40 of its device argument (0x2fe0, in the delay slot of a `splhi` call) before it clears that record's +72 pointer (0x3000), so the counter restarts at zero on that path. The record is the one `RRM_GetVideoSync` reads: **inferred**, since `RRM_Dispatch` is called with that same argument (0x2db4). The shipped binaries hold no sender of 1021 that the scan found, although both manuals say `gfxinit` initialises the counter: **unknown** who sets a nonzero value.
- `glXGetVideoSyncSGI` (`libGL.so` IP30ODSY64, 0x55a995c) sends ioctl 1022 (`li a1,1022` at 0x55a99b0) and returns the second word of the reply unchanged (load at 0x55a99cc, store at 0x55a99d8): no scaling or division.
- `rrmValidateVideoSync` (`rrm.o` 0x44a8; called only from the handler, when the waiter list at +136 is not empty) tests a waiter with `counter mod count == phase`, using +128 when bit 3 of the waiter's flags is set and +124 otherwise. Both counters move together, so `glXWaitVideoSyncSGI` also counts interrupts.

So the question reduces to the interrupt rate: the counter is exactly one per interrupt, and the kernel keeps no per-frame or per-parity state.

## 3. The board side: which timing output could be the interrupt

- **established.** The compiler rules `VPro_Board.def` give the timing generator these outputs (rule text near offset 10836, edge rules from offset 12557): `VINT` on A14, `SWP_RDY_LCK` on A15, `END_OF_FIELD` on A19. The edge rules, in the file's own scope words: `VINT` rises one line into each frame and falls one line later (`within each (frame)`); `SWP_RDY_LCK` pulses for three lines in the first frame only; `END_OF_FIELD` pulses low for 1.75 lines at the start of each field (`within each (frame)` containing `within each (field)`, so the field is the inner unit); `HIF_V_UPDATE_EN` is per field active area. A frame therefore contains all of a format's fields, as the format compiler guide says for multi-field formats (007-3402-003 printed p.20 to 22).
- **unknown.** Whether `VINT` is the vertical retrace interrupt of the board (source 3). Only the name and its being the only output the rules name for an interrupt point that way; it is already recorded under that reading in [video-sync-hooks.md](../../../../devices/display/video-sync-hooks.md). No register write or read in any shipped driver names a generator output (that page), so this is not read from the kernel.
- **established (arithmetic).** The 30f frame table is two runs of 1296 lines. The first opens with three one-line types (line-table starts 0, 24 and 50) found nowhere else; the second opens with two other one-line types (404 and 428), then type 74 three times and type 454, and goes on to repeat the first run. Both fields open with line types of their own, so the table alone does not show which opening carries a once-per-frame event. **inferred** only: the event entries of those lines were not decoded, so the compiled `VINT` edge is not located in the file ([questions/README.md](../../../../questions/README.md), line-table events).
- **established** (fields above): `SwapsPerFrame` is 1 and `FieldSwap` is 1, 0 in the 30f file, so the board takes one swap opportunity per frame, in field 0; the interlaced and stereo files have 2 and 1, 1. That fits one interrupt per frame for 30f, but it equally fits a design where the interrupt is per field and the swap only latches in field 0. Who reads `SwapsPerFrame` is **unknown**: the name sits in a table of format-field names in `odyssey.so` (.sdata, entry at 0x1738e34) whose reader was not traced, and the kernel loader does not read it.

Taken together: if `VINT` is the retrace interrupt, `1920x1200_30f` raises 29.9 interrupts a second and the counter advances 29.9 a second. Nothing in the shipped software contradicts this and nothing independently confirms it.

## 4. The published sources

Both were read in the Library by document number (`tools/library-pdf text`).

- 007-4271-001 (VPro porting guide), printed p.32, row "SGI video sync": the counter "is incremented upon the completion of the display of each full frame of video data", and for an interlaced monitor this is "typically the rate of displaying both the even and odd fields of a frame". **software expectation**, VPro-titled, per full frame. It matches section 2 (a counter per interrupt) plus section 3 (the interrupt per frame).
- 007-2392-003 (OpenGL on Silicon Graphics systems), printed p.288, "SGI_video_sync": "incremented upon each vertical retrace", and for an interlaced monitor "the synchronization is actually with the field rate instead". **software expectation**, platform-generic text. It does not address a progressive two-field format: counted per vertical retrace as the monitor sees it, `1920x1200_30f` would give 59.8 a second, counted per frame 29.9. The two manuals therefore disagree only if the interlaced sentences are carried over to formats like this one. Neither speaks of the interrupt itself.

## What is unknown, and what would settle it

- **Whether `VINT` drives source 3 (and so the rate).** Static routes tried: the whole handler, `odsyInitInterrupts`, the loader, the compiler rules, the format file. Settles it: a decode of the compiled line-table event entries that carry the `VINT` edge, together with any read of the board's interrupt-source selection, or a capture of the interrupt count against the frame rate on a real board (physical reads need the owner's approval, and none is assumed available).
- **Per-field retrace for interlaced and stereo formats.** `SwapsPerFrame` 2 and the 2 repeat count in the handler's forced-swap path (`odsyRetraceHandler`, the `sltiu ...,2` test) suggest per-field activity there, unread.
- **Who initialises the counter** (`gfxinit` per the manuals) and who reads `SwapsPerFrame`: no sender or reader found in the shipped binaries searched.
