# Video, sync and swap hooks

What the VPro (Odyssey) display side offers for swap groups, framelock, genlock, external status lines and video input, what the shipped software expects of each, and what SGI's own diagnostic exercises. Written for someone building a model that must pass `odydiags`.

Labels: **established** (read from a binary, a shipped data file or a published manual, with where), **inferred** (reasoned, with the reasoning), **unknown** (with the route tried). IRIX 6.5.30m, IP30 kernel objects, unless IP35 (Fuel, Tezro, Onyx 350) is named; `odydiags` is the Internal Support Tools 2.7 build, 6.5.15 (`usr/diags/ody/odydiags`). Addresses are image addresses of the binary named. Register numbers are display addresses, see [../pbj/README.md](../pbj/README.md).

## Summary

| Question | Answer | Grade |
|---|---|---|
| Swap group | Yes, per board. A group's windows swap on the same retrace through per-window registers 0x10b4, 0x10bc, 0x10c4, 0x10cc, 0x10d4. | established (kernel), inferred (register roles) |
| Swap barrier (across pipes or machines) | The software accepts one barrier per board and records it, but the swap scheduler never reads that record. The hardware line exists (swap-ready port, VTG output `SWP_RDY_LCK`) and what it does is unknown. The Fuel manual calls it not functional. | established / unknown |
| Genlock | Yes. PB&J has a genlock block (0x27c0 to 0x27cd) and the BUZZ flags register raises bit 31 when lock is gained or lost. The handler retunes the pixel clock part over I2C. | established |
| Framelock | A software mode of the same block: lock the generator to the sync pattern of another video format (`setmon` platform parameter 3), with no clock retune. Dual-head boards report a framelock master and slave. | established (software), inferred (hardware) |
| External status | Genlock state (0x27cd, flags bit 31), retrace (VINT), option-card and VBOB presence over I2C, monitor EDID. No swap-ready input status register was found. | established |
| Video into the framebuffer | None shipped. DM5 is graphics-to-video out. No driver or library path moves video data into board memory. | established |
| Diagnostics | `odydiags` has no genlock, swap-ready, stereo or video test. It exercises the DCB, the option I2C port, the DAC comparators and the VTG tables only incidentally. | established |

## 1. Swap group, swap barrier, framelock, genlock

### 1.1 Ports and published behaviour

- Octane2 and V-brick boards have a genlock port (one signal pin and a return, video or 3.3 V TTL levels), a StereoView port and a swap-ready port (one open-collector gang line and a return) (007-4210-003 pp. 30-31; 007-4264-002 p. 56). Fuel and Tezro boards carry the same three ports; the Fuel guide says the swap-ready feature is not functional at this time (007-4480-001 pp. 35 and 141); the Tezro guide lists the port without that note (007-4643-003 p. 105). **established (published)**.
- Semantics users expect: SGIX_swap_group makes the windows of a group swap together once every window has had a swap issued and its swap interval has elapsed; SGIX_swap_barrier makes all groups bound to one barrier swap together, concurrently only if the screens are genlocked; a barrier needs special hardware and a cable on the swap-ready port; glXQueryMaxSwapBarriersSGIX reports how many barriers a screen has (007-2392-003 pp. 289-294). The VPro porting guide lists both extensions as supported by VPro (007-4271-001 Table 3-1). **established (published)**.

### 1.2 Path from GLX to the board

All **established** by reading the named routines, objdump-checked where marked (*).

- `odyssey.so` advertises `GLX_SGIX_swap_barrier`, `GLX_SGIX_swap_group`, `GLX_SGI_swap_control` and `GLX_SGI_video_sync` (extension string in `usr/lib/X11/dyDDX/odyssey.so`).
- `glxJoinSwapGroupSGIX` (`glx.so` 0x29cddc0) sends kernel request 1013 (`RRM_SwapGroup`) with the two drawable ids when the member id is nonzero and request 1014 (`RRM_SwapUnGroup`) when it is zero (`li 1014` at 0x29ce1dc, `li 1013` at 0x29ce1ec)*. This corrects the earlier note that request 1014 has no sender ([../../software/kernel/ioctls.md](../../software/kernel/ioctls.md)). It always returns success to the client, whatever the ioctl returned.
- `glxBindSwapBarrierSGIX` (`glx.so` 0x2990830) first makes sure the drawable has a swap-group record on the board (request 1013 with a zero member), then sends request 1019 (`RRM_SwapReady`) with {drawable, barrier minus 1, 1} to bind or {drawable, 0, 0} to unbind. Kernel errors 16 and 37 become X error 2 to the client; anything else is ignored (`li 1019` at 0x2990abc, errno tests at 0x2990ae8 and 0x2990af4)*.
- `glxQueryMaxSwapBarriersSGIX` (`glx.so` 0x29d8290) calls a per-screen driver hook at offset 100 of the GLX screen record and returns its result, or 0 with no hook (0x29d8368 to 0x29d8398)*. The Odyssey hook (`odyssey.so` 0x1636cf0, 8 bytes) returns the constant 1. So the model reports one swap barrier.
- Kernel side, `rrm.o`: `RRM_SwapReady` (0x3d74) checks the barrier slot against the bound at node offset 176 (error 37 when out of range), then claims or releases an 8-byte slot in the table at node offset 184 with the pane's swap-group pointer (error 17 if that pane already owns the slot, 16 if another pane does; 2, 6, 15 for a missing pane, a pane of another node and a pane with no group)*. `odsyInitRetrace` (`odsy_retrace.o` 0x0, stores at 0x74 and 0x7c) sets the bound to 1 and points the table at one zeroed slot of the board record. **The bound is the constant 1, established for the IP30 6.5.30m kernel** (read 2026-11-21): the only 32-bit stores to board offset 176 in `odyssey.a`, `gfx.o`, `rrm.o` and `kernel.o` are that one and `odsyInitBoardGfx` (`odsy_init.o` 0xac8, the same value at board start); `RRM_SwapReady` (0x3d84) and `rrmSwapUnGroup` (0x3b24, 0x3b74, 0x3ba4) read it as `lw 176(*(node+40))`, the board record. Every other store at offset 176 is a different record: the memory manager (`odsyMMinit` 0x438, a byte at board +872+176), the context (`odsyPinAndMapGctxSwShadowRgn` 0x4f4 and its undo at `odsyUnpinAndUnmapGctxRegions` 0x5a8, a pointer to the mapped software shadow), a drawing-node record (`gf_OdsyCreateDDRN` 0x18c), the 2304-byte saved-state record (`odsyResetHwShadow` 0x6120, value 65) and a pane (`RRM_SwapGroup` 0x3ce0, a byte). **The table is bookkeeping only**: `rrmSwapUnGroup` clears slots, and nothing in `odsy_retrace.o` (the swap scheduler) reads it. So the shipped kernel makes no swap wait for another group or another pipe. How a barrier would be enforced is **unknown**.
- **Review note (2026-11-21, independent review).** The 32-bit stores at displacement 176 in the committed IP30 kernel listings are `odsyInitRetrace` (`odsy_retrace`, value 1), `odsyInitBoardGfx` (`odsy_init` 0xac8, 1) and a store in `odsy_ctxsw` (the saved-state record named in the bullet above); the other stores are 64-bit or byte stores to other records, including the head and tail pairs of the group lists in `odsy_pmm` (176 and 192, not named in the bullet above). The bound stays the constant 1 (**established**).
- A swap group within one board is enforced. `gf_OdsySchedSwapBuf` (`odsy_retrace.o`) builds the mask of the group's window ids, stores it to 0x10bc, and either swaps at once or arms the window for the retrace handler; `odsySwapBuffer` stores the ids to flip to 0x10c4 (buffer B) and 0x10cc (buffer A) and to 0x10b4 (trigger); `odsyRetraceHandler` reads 0x10d4 each retrace ([../board/board-registers.md](../board/board-registers.md), [../display/README.md](README.md) "Ioctl 1005"). Roles of the registers are **inferred** from the stores and the handler's use; the hardware behaviour behind them is **unknown**.
- `glXSwapIntervalSGI` uses request 0x3ee (1006, `RRM_SetSwapInterval`), `glXWaitVideoSyncSGI` request 1023 and `glXGetVideoSyncSGI` request 1022; the video-sync counter is the retrace count that the retrace handler advances. **established**.

### 1.3 Timing generator outputs

The format compiler's board rules (`usr/gfx/ucode/vfc/rules/VPro_Board.def`, shipped with the install) wire the timing generator's 21 outputs to named signals (the compiler adds two internal dummy signals) and give each one's timing in every compiled `.vfo` file. **established** as the rules; that the compiled line and frame tables carry the same edges is **inferred** from the first three lines of a frame being three single-line types in `1280x1024_60.vfo` (frame table rows at line-sequence offsets 0, 9 and 0x14).

| Output | Signal | Timing the rules produce |
|---|---|---|
| C0, C1 | `MON_HCSYNC`, `MON_VSYNC` | monitor sync pair |
| C2 | `XTK_KSYNC` | a frame-synchronous pulse train, high through the frame with short low notches (half, quarter and half a line) in the last three lines; the quarter and three-quarter offsets tell the two fields of an interlaced format apart; consumer unknown |
| C3 | `STEREO` | low during the left-eye field (`FieldEye` 1), high otherwise; drives the StereoView port |
| C4, C5 | `DAC_CSYNC_N`, `DAC_CBLANK_N` | DAC sync and blank |
| C6, B7 | `OPT_HDRIVE`, `OPT_VDRIVE` | option-card drive |
| B8, B9 | `GEN_PDEN`, `LOC_HSYNC` | genlock phase-detector enable, a window around the vertical sync interval with 1.5 lines of margin (1.75 lines plus the sync time for scan type 2), and a local horizontal sync 10 pixels after each line start inside that window, `HorizontalSync` wide |
| B10, B11 | `CURS_HPOS`, `CURS_VPOS` | cursor position strobes |
| B12, B13 | `DMA_RESET_N`, `HIF_H_UPDATE_EN` | DMA reset; host-interface update window, low from 46 pixels before each active line to 16 pixels before its end |
| A14 | `VINT` | a one-line pulse about one line from each frame boundary (the compiler's time direction was not checked); **inferred** to be the vertical retrace interrupt (source 3) |
| A15 | `SWP_RDY_LCK` | one three-line pulse at the frame boundary, in frame 1 of the format's frame sequence only; **inferred** to be the swap-ready and lock strobe |
| A16 to A20 | `END_OF_LINE`, `HIF_V_UPDATE_EN`, `XMP_CBLANK_N`, `END_OF_FIELD`, `REQUEST_SRC` | pixel-request and field boundaries |

Which of these outputs reach a pin, a PB&J register or the interrupt logic is **unknown**: no register read or write in any shipped driver names a generator output.

### 1.4 Genlock registers (display addresses 0x27c0 to 0x27cd)

`odsyLoadTimingTable` stores structure words 40 to 88 in order to 0x27c0 to 0x27cc (after setting bit 31 of 0x1034, the flags interrupt-enable mask); the packing is from the compiler rules above, **established** as the layout the shipped software writes, with the role of each field **inferred** from the compiler's variable names. Values below are those of every shipped `.vfo` (71 files, `usr/gfx/ucode/ODSY/vof`), grouped by `GENScanFormat` 1 to 5.

| Address | Word | Layout (bit ranges) | Shipped values |
|---|---|---|---|
| 0x27c0 | `ODY_GEN_lPFD` | 31:24 pulses to skip (half the active lines, at most 255); 23 first pulse level; 22 enable on high pulse; 21 enable on low pulse; 20:19 sync source (1); 18:1 compare tolerance, one fifth of the horizontal sync width in DCB clocks; 0 frame detect (0) | e.g. 1024x768_60: 0xff28001a |
| 0x27c1 | `ODY_GEN_hPFD` | level to phase detector (1) | 1 |
| 0x27c2, 0x27c3 | `ODY_GEN_lPFD_HI`, `hPFD_HI` | sync-pattern detect, high-going pattern, 24 and 14 bits | scan type 1: 0x355558, 0; types 3 to 5: 0xd56554, 0; type 2 (broadcast, two fields) 0x56554554, 0x3565 (30 Hz) or 0x55954558, 0x356 |
| 0x27c4, 0x27c5 | `ODY_GEN_lPFD_LO`, `hPFD_LO` | the same for the low-going pattern | type 1: 0x355552, 0; types 3 to 5: 0xd54556, 0; type 2: 0x54556554, 0x3565 (25 Hz: 0x95455954, 0xd5) |
| 0x27c6, 0x27c7 | `ODY_GEN_lPSD`, `hPSD` | phase detector: l, 31:24 low 8 bits of the line count that gains lock, 23:0 frame period in DCB clocks; h, bit 10 enable, 9:7 frames to lose lock (6), 6:4 frames to gain (3), 3:0 high bits of the line count | e.g. 1024x768_60: 0x4207f3c2, 0x731 |
| 0x27c8, 0x27c9 | `ODY_GEN_lHMASK`, `hHMASK` | horizontal mask: l, 31:24 start low byte, 23:16 divider (0), 15:1 line length in DCB clocks, 0 edge (0); h, 21:7 width (three sync widths), 6:0 start high bits | 1024x768_60: 0x4100050c, 0x6200 |
| 0x27ca | `ODY_GEN_BP_CLAMP` | back-porch clamp: 25:16 width (0), 15:1 delay (one sync width), 0 edge (1) | 1024x768_60: 0x83 |
| 0x27cb | `ODY_GENLOCK` | 2 horizontal-rate divide (0), 1:0 clocking (0) | 0 |
| 0x27cc | `ODY_GEN_CONTROL` ORed with 0x40 | 7 test, 6 enable, 5 and 4 source select, mux 3b from bit 2, mux 3a at bit 0 | 0x40 in every file |
| 0x27cd | read only | bit 0 valid, bit 1 lost | see below |

Lines to gain lock as a percentage of the frame (psd lines): scan type 1, 40; 2, 40; 3, 25; 4, 15; 5, 20. The rules take the DCB clock as 250 MHz divided by 8 and by the `ODY_DCBClockSpeed` power of two for these words, and as 266 MHz for the divider choice itself; which is right is **unknown**.

Other words in the same load: `ODY_VTG_Control` (0x2481) is 0x1f0 plus a frame-reset delay in bits 21:9; the rules export a second form, `VTG_Control_mask`, whose delay is the frame length minus (pattern-detect delay of 4 to 8 lines, plus 2, plus the vertical sync lines), the line count after which the generator restarts its frame when locked. The loader ORs 0x42 into word 28 before the store and sets bit 1 when a framelock target is active.

### 1.5 Genlock and framelock in software

- **Interrupt.** Flags bit 31 (GEN_LOCK_INTR) in 0x1014, enabled by bit 31 of 0x1034. `odsyGenlockInterrupt` (`odsy_intr.o` 0x5c0) reads 0x27cd: bit 0 clear logs "Invalid GenState" and returns. Control 0x27cc bit 6 clear returns. Otherwise, unless the record's framelock word (timing word 224) is nonzero, it retunes the clock part over I2C: "lost" (0x27cd bit 1 set) restores the free-running values (part at 0x58: registers 1, 2, 5, 6 from words 132, 136, 148, 152; part at 0x26: register 0 = 0x01, register 7 bit 7 set); "got" (bit 1 clear) loads the genlock values (part at 0x58 from words 236, 240, 244, 248 = `GEN_AMI_REG1/2/5/6`; part at 0x26: register 0 = 0x11, which equals `GEN_PLL_InputControl` in every `.vfo`, register 7 bit 7 cleared). It then clears or sets bit 1 of the 0x2481 shadow and writes it (bit 1 set while locked, inferred), and calls `rrmGenlockNotify` with 0 or 1. The X server's handler (`odyssey.so` 0x15ff550) stores the state in the video-control record and calls its blank routine; `GenlockNotify` (0x17034d0) sends `XvcSendScreenLockChangeEvent` to clients. The IP35 driver has the same routine. **established**.
- **Genlock source.** `setmon` passes `XSGIvcSetScreenInputSyncSource` -1 (internal) or -2 (external); `odyssey.so` stores it (`odsySetScrnGlock` 0x169c100, other values refused). `odsyQryExtSyncNm` names source 0 "Internal Option Board" and source 1 "External Sync Source". A format used for genlocking must carry the genlock flag, else "Format %s cannot be used for genlocking". **established**.
- **Framelock.** `setmon -F` (framelock; on a VPro board `odyDoFramelock`, `setmon` 0x1000d580, takes a format name) sets platform parameter 3 with a 260-byte block {1, format name}; `odsySetPltParam` stores it in the board record (+0x88, +0x8c) and reads the target format's detect arguments (`PFDClockSelect` and the PFD words) so that words 40 to 76 and 224 of the next timing load come from that format. `setmon` refuses framelock together with genlock. `setmon -c m|s` sets platform parameter 2 (request 0x6f640020 with {2, 0 or 1}, "csync_en" on for master). `gfxinfo` prints "Framelock master sync for dual-head", "Framelock slave sync for dual-head", "framelocked to lores sync source" and "Input Sync: Voltage - ...; Source - ...; Genlocked - ...". So framelock here locks the generator to a detected sync pattern without retuning the pixel clock, the dual-head option being the main user. **established** as software; how the hardware uses it is **inferred**.
- Fuel and Tezro: same kernel code, ports present, swap-ready declared not functional by the manuals. Octane2 and V-brick: swap-ready port cabled between pipes (007-4264-002). **established (published)**.

### 1.6 What the diagnostics expect

Nothing. `odydiags` has no genlock, framelock, swap-group, swap-ready or stereo test; its option and test tables (section 4) do not mention them, and the published diagnostic reference (108-0314-003) does not either. **established**.

## 2. External status lines

What software can learn about video, sync and option boards. **established** unless marked.

| Source | How software reads it |
|---|---|
| Genlock lock state | display register 0x27cd, bits 0 and 1; flags bit 31; `XvcSendScreenLockChangeEvent`; `gfxinfo` "Genlocked" |
| Genlock enable | 0x27cc bit 6 (set by the loader in every format) |
| Vertical retrace | interrupt source 3 (retrace); the counter behind `glXWaitVideoSyncSGI`; the per-window buffer read-back at 0x10d4 |
| Swap ready (gang line) | none found. The line is a timing generator output (A15); nothing reads an input |
| Stereo | output only (C3 to the StereoView port) |
| Display FIFO overflow | flags bit for DBE overflow |
| Board and option identity | 0x2701 (PB&J version, bit 10 no option), strap word 0x106c, the option card identity at I2C address 0x1f on the option port (low nibble 3 means dual channel), part presence words (compositor, DM5 video chip "Denali", "Rainier") from `odsy_Probe*` |
| DM5 and breakout box | the DM5 chip answers on the option I2C port at 0xef (read) and 0xee (write); the presence probe writes bytes 2, 0, 0x40 and polls for status 10. The X server's platform parameter 0x1f reads one word from it (command 15), "vbob" in its error message. `gfxinfo` prints "DM5 attached to Dual Channel %d" (and, from the published guide, "DM5 connected to port 0") |
| Monitor | DDC/EDID over the main I2C port; the identity feeds `odsyQryMonitor` |
| Input sync voltage and format | `gfxinfo` "Input Sync: Voltage - ... Level; Source - ...; Genlocked - ..." through the X video-control extension; its values come from the format and the stored genlock state, not from a status register |

Register 0x27cd bit semantics beyond the handler's use are **inferred** (see section 6, question 2).

## 3. Video into the framebuffer

- **DM5 is video out.** The DMediaPro DM5 is a daughterboard in the video breakout box that takes both DVI outputs of the Dual Channel Display board and produces SMPTE 259M or 292M serial video; it adds genlock and a DVI loop-through for the monitor; `dmconf` configures it (007-4515-001). `dmconf` also refuses a VPro format whose pixel clock is 165 MHz or more and an area not inside the VPro area ("DM5/DM7 area must be fully contained within VPro area"). **established (published, shipped tool)**.
- **Driver and VL path for DM5.** The X server programs the DM5 chip from a combination file with a fixed sequence of ten two-wire writes (`odsyLoadDenali`, `odyssey.so` 0x16e0390; request 0x6f640021, command 16, device bytes 0xa4, 0xa2, 0xa1, 0xa0, 0xa9, 0x9d, 0x99, 0x98), moves its input rectangle (`odsySetChannelInputRectangle`, device 0xa9) and blanks it (device 0x9b, "DM5 blanking"). No video-library code is involved. **established**.
- **Video source and DM buffers.** The porting guide lists `SGIX_video_source`, `SGIX_video_resize` and `SGIX_dmbuffer` among VPro's extensions (007-4271-001 Table 3-2). The binaries show far less. `libGL.so` loads `libvl.so` and calls `vlGetControl` while creating a video source (`glXCreateGLXVideoSourceSGIX`); `glx.so` (0x299aa80) only allocates and registers a record; no `glx.so`, `odyssey.so`, `libGLcore.so` or kernel routine reads video data; `libGLcore.so` lists no `GL_SGIX_dmbuffer` or video string; and `glXAssociateDMPbufferSGIX` is a stub that posts an error and returns 0 (`libGL.so` o32 0xd83a438, constants 9 and 16)*. **established**. The only way pixels reach VPro memory is the host-to-board DMA engine pulling from host memory and the pixel paths (`../buzz/pixel-paths.md`, `../dma/`), so video from any other board would arrive through host memory. That no board can write the VPro framebuffer directly (peer DMA) is **unknown**; nothing in any driver or tool attempts it.
- Which shipped programs use video with VPro: `dmconf`, `setmon`, `xsetmon` and the dual-channel confidence test (output side); no shipped program was found that reads video into a VPro window. **established** for the files held.

## 4. What the field diagnostics test

`odydiags` registers its tests in a table that starts near 0x1063ff18 (name, help text, error base, function, group mask per entry). The default run (`run.pl`) is `-registers -dcb -cfifomem`, `-i2c`, `-cmap_data_bus -cmap_addr_bus`, `-sdram`, then the raster and shader tests (`-all` adds `-input_fmt -output_fmt`). Each test group is run after `odydiags -reset` (ioctl 0x6f640034). `analog_out` and `load_cmap` are registered but not in `run.pl`. Four VTG memory tests (`ody_Vtg_AddrBus`, `AddrUniq`, `Patrns`, `DataBus`, 0x10520c40 onward) are in the binary but in no test table, and the helper they use to read display memory (`ody_ReadDBE`, 0x1051ec90) never reads the board, so they are dead code. **established**.

How the tool reaches the board: a mapping base `odsybase`; `remap_ody` (0x105323e0) turns a board offset into an offset from it (below 0x100000 add 0x8000; 0x220000 to 0x3fffff subtract 0x204000; 0x400000 up subtract 0x3c4000). Display writes are one 64-bit store of header and data to board offset 0x400000 (`odsybase` + 0x3c000); display reads load the word at board offset 0x220000 + 8 x address + 4. Header = type 3 (immediate) in bits 31:28, address in 27:14, count 1 (`ody_LoadDBE` uses type 7). Before each write that is not a straight register test it waits, in 1 microsecond steps, up to 300 times for the display FIFO level (0x106c bits 6:0) to fall below 11. **established** (objdump-checked at 0x1051eb70 and 0x1051e030).

| Test | What it does | A pass needs | Published |
|---|---|---|---|
| `-registers` (`odsy_reg_test` 0x10520820) | For BUZZ registers 0x28 (20 bits), 0x30 (32), 0x38 (32), 0x1070 (25): write walking 1s then walking 0s to the data word at +4 and compare the masked read-back; restore. | the four registers hold their bits independently (the published table also lists the flag registers; the 6.5.15 table has these four) | error 51 |
| `-dcb` (`dcb_test` 0x1051cbf0) | Write 0x01, 0x02 ... 0x80 then 0xfe, 0xfd ... 0x7f to the low byte of display register 0x2700 (header 0x39c00001), read it back after each, compare the low 8 bits; restore the original. | 0x2700 bits 7:0 read back what was written | error 3006; "walking 1 and walking 0 across the 8-bit DCB" |
| `-i2c` (`i2c_test` 0x1051e140) | On the option port (0x2740 control, 0x2741 data and status), talk to the clock part at address 0x26 (strap board version 0) or 0x58 (otherwise): for registers 0 and 1 write walking 1s and 0s and read each back. A transaction is a start word `0x1300 + 2 x address`, a register word `0x1200 + reg`, then a data word `0x1a00 + value` to write, or a repeated start `0x1300 + 2 x address + 1` and a read word 0x0e00 to read; the byte comes back in 0x2741 bits 7:0. Each word is sent with header 0x39d00001 (display address 0x2740), then the tool sleeps 100 microseconds and polls 0x2741 bits 13:10 up to 300 times until they read 10 or 0. | the controller reaches idle (10 or 0) within 300 microseconds after each word, and the clock part registers store and return the pattern | errors 3006, 3007 (idle timeout), 3008 (FIFO timeout) |
| `-analog_out` (`analog_out` 0x1051ce60) | Needs a monitor. Saves 0x26c0, 0x2600, 0x2680, 0x2481, 0x2482, 0x2483; writes 0x26c0 = 0, 0x2600 = 0, 0x2680 = 0x00020000, 0x2481 = 0, 0x2482 = 0xffffffff, 0x2483 = 0; then for each of five DAC input words writes it to display register 0x2601, sleeps one second, reads 0x26c0 and checks bits 4 (red), 5 (green), 6 (blue); restores the saved values. | comparators read 1 for a zero input and 0 for a full-scale input on that channel (table below) | errors 3010, 3011, 3012 |
| `-cmap_*`, `-load_cmap`, `-cfifomem`, `-sdram`, raster and shader tests, `-input_fmt`, `-output_fmt` | covered by the published reference and the frame replays | | |

Raster tests and readback: before each pixel readback (`diaglReadPixels`, 0x1052a650) the tool sends command word 0x10658 with operand 0x00120000, which its own symbol (`send_hw_sync_token`, 0x1052a5f0) calls a hardware sync token, then a framebuffer flush (`send_fb_flush`, 0x1052a530: wait 250 via 0x10443, two pad words 0x10046, flush 0x10019, then the same with wait 150), and reads the frame back by the diagnostic DMA. A model must have finished every earlier draw by the time that DMA completes. The token's operand is the one the kernel sends before a rectangle copy and DMA ([../buzz/words.md](../buzz/words.md)). **established**.

DAC input words for `-analog_out` (10 bits a channel, written to 0x2601: bits 31:22 green, 21:12 blue, 11:2 red), with the comparator bits expected back as {red, green, blue}: 0x00000000 gives {1,1,1}; 0xfffffffc gives {0,0,0}; 0x00000ffc (red full) gives {0,1,1}; 0xffc00000 (green full) gives {1,0,1}; 0x003ff000 (blue full) gives {1,1,0}. A comparator bit is therefore 0 when its channel is above threshold. Register 0x2601 is written by no kernel code; it is a DAC test input. **established** (words read from the table at 0x10614950 + 0x4950).

## 5. What a model must do to pass the diagnostic

For the default run and `-analog_out`; swap, genlock and video features are not tested.

1. Accept display-FIFO headers of type 3 and type 7 at board offset 0x400000 and serve reads at 0x220000 + 8 x address + 4 (and +0 for the I2C registers, as the kernel does). Keep the FIFO level in 0x106c bits 6:0 below 11 when the tool writes.
2. Make display register 0x2700 hold a byte (bits 7:0) that reads back what was written, and keep its documented clock-select bits.
3. Provide both I2C controllers (0x2740/0x2741 option, 0x2780/0x2781 main) with the word encodings above; the status nibble in bits 13:10 must settle to 10 or 0 within 300 microseconds of a word; model a clock part at I2C address 0x26 (board version 0) or 0x58 with at least registers 0 and 1 as byte storage; the option port must also answer the identity probe at 0x1f so the driver sees no option (0x2701 bit 10 set or no answer).
4. Provide BUZZ registers 0x28, 0x30, 0x38 and 0x1070 as read-write words with 20, 32, 32 and 25 significant bits at the second (low) word of the register slot.
5. For `-analog_out` (not run by default): a DAC with 10-bit inputs at 0x2601 and comparator outputs at 0x26c0 bits 4, 5, 6 that are 1 below threshold and 0 above, valid after the tool's one-second wait; 0x26c0, 0x2600, 0x2680, 0x2481, 0x2482, 0x2483 must read back what was written for the save and restore.
6. Treat command word 0x10658 as a fence: drawing issued before it must be complete before a later readback DMA returns data.
7. For the stack above the diagnostic (not required to pass it): report a swap barrier count of 1; run swap groups through 0x10b4 to 0x10d4; raise flags bit 31 only if genlock is modelled, with 0x27cc bit 6 set and 0x27cd bit 0 set, and no genlock input otherwise (the handler then never runs); raise the retrace interrupt once per frame.

## 6. Open questions and what would settle them

Written up with the evidence tried in [../../questions/README.md](../../questions/README.md), "Video, sync and swap hooks". In short: what the swap-ready port and the `SWP_RDY_LCK` output do on a board; what 0x27cd bits 0 and 1 mean; whether `XTK_KSYNC` reaches the crossbar; the DCB clock rate (250 or 266 MHz); and whether a peer can write VPro memory. All need a physical board or a datasheet; none blocks a model that passes the diagnostics.
