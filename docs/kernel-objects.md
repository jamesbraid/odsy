# The VPro driver archive, object by object

`odyssey.a` is the board driver of the IP30 and IP35 kernels, and the install tree holds four builds of it: the 6.5.30m media build (also the installed `IP30boot` archive), the IP35 build and two patch builds, 4103 and 4104, of the IP30 archive. Release IRIX 6.5.30m unless a row says a patch. Sizes, routine counts, offsets and the comparisons between builds are read from the symbol tables and code hashes of each member (**established**); the roles are **inferred** from those routine lists and from the routine-by-routine readings in `docs/driver-functions.md` and `docs/ioctls.md`, which give the argument layouts and register effects. Offsets are into each object's text. "Private request N" is the driver's own request number carried by an ioctl of the 0x6f64 family.

## Members of the 6.5.30m media build

Each entry names the member of the media archive.

- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)`: **inferred.**
  The front door of the driver. `gf_OdsyPrivate` at offset 0x84 (124 bytes) accepts a private request whose upper half is 0x6f64, masks the lower half and dispatches it to the handler for that number.
  A number with no handler reaches `gfP_OdsyInvalidIoctl` at 0x60 (36 bytes), which logs "odsy: Unknown ioctl" at severity 5 and does nothing else.
  `gf_OdsyInfo` at 0x0 copies the board's information block (board record +200, at most 588 bytes) out to the caller, which is the record `gfxinfo` asks for with ioctl 0x66.
  `odsyGctxFromRnid` at 0x100 (92 bytes) turns a rendering-resource number into the graphics context pointer after checking it against the manager's maximum.
  Nothing in this object touches a board register.
  The member is 13588 bytes with 4 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`: **inferred.**
  Bookkeeping containers that the other objects use for numbering and memory slots, with no board access.
  `OdsyAllocCSetId` at 0x604 (608 bytes) hands out the lowest free id in a chunked set, `OdsyAllocSpecificCSetId` at 0x42c stores an element at a chosen id and `OdsyDeallocCSetId` at 0x864 frees one.
  `OdsyAlloc32kSlot` at 0xadc takes the lowest free 32 KB slot from a bitmap of 512 doublewords, and `odsyHashAlloc` keeps small keyed records in a hash table.
  `odsy_map.o` walks the colour-set container with `OdsyInitCSetCursor` and `OdsyNextCSetElem` when it releases the surface-group mappings.
  The member is 16004 bytes with 18 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)`: **inferred.**
  Gives a process its view of the board. `gf_OdsyAttach` at 0x68 (384 bytes) maps the register and buffer windows at the address in its second argument, which must be 16 KB aligned (low 14 bits clear) or the call fails with 22.
  `gf_OdsyDetach` at 0x1e8 (124 bytes) undoes that for one board, first calling `odsyDiagExit` when the diagnostic bit of the flag word is set.
  `odsy_regmatch` is the callback `gf_OdsyAttach` hands to `gfxdd_recycle` to tear down an old mapping and install the new one.
  The member is 7620 bytes with 3 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`: **inferred.**
  The board manager: video timing, blanking, cursor, frame buffer layout and the digital-output option card.
  `odsyLoadTimingTable` at 0x3c4c (8392 bytes) programs a video timing from the 320-byte structure the X module supplies, after waiting for the display FIFO to drain.
  `odsyBlankScreen` at 0x21f8 (4580 bytes) takes a mode of 0, 1 or 2, `gfP_OdsyBRDMGRcursor` at 0x13d0 (3396 bytes) is private request 28 for the hardware cursor, and `gfP_OdsyBRDMGRVTGcontrol` at 0x5e3c is request 32 for the timing generator.
  `odsyConfigFb` at 0x824 (2148 bytes) lays out the board's SDRAM for a frame buffer size and refuses a configuration that would oversubscribe it.
  The member is 60580 bytes with 21 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)`: **inferred.**
  Clip regions and buffer clears for a client. `gfP_OdsyClearBuffer` at 0xc60 (2084 bytes) is private request 14, the clear, and checks the caller with `RRM_CheckValidFault` before it sends the clear commands.
  `odsyClipPush` at 0x728 (948 bytes) sends the clip record to the board through the command FIFO port at board +0x110000, in the word order described in `docs/opengl.md`.
  `odsyClipMask` at 0x520 (520 bytes) turns the record's four rectangles into the visible rectangles in drawable coordinates, `gfP_OdsySetClipMask` at 0xb1c sets a client's mask and `gfP_OdsyGetDrawableGeometry` at 0xbc4 returns a drawable's geometry.
  The member is 15844 bytes with 8 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_compositor.o)`: **inferred.**
  Access to a compositor board behind a VPro board, over the board's two-wire port.
  `odsyCompositorRegRead` at 0x8 (588 bytes) and `odsyCompositorRegWrite` at 0x254 (520 bytes) read and write one 32-bit compositor register, choosing the port by the halfword at board +296 and holding the bus mutex.
  `gfP_OdsyCompositorRegAccess` at 0xa5c (284 bytes) is private request 0x6f640025, the one the compositor diagnostic sends, and runs one of the two.
  `odsy_ReadCompositorNic` at 0x45c (1344 bytes) reads the identification strings stored on the compositor board, and `gfP_OdsyI2CPassthrough` at 0xb78 performs a DDC read or PLL writes on the compositor's port for the caller.
  The member is 14292 bytes with 8 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`: **inferred.**
  Saves and restores graphics contexts when the board is switched between clients.
  `gf_OdsyPcxSwap` at 0x458 (1536 bytes) saves the outgoing context, converts the incoming record's buffer with `kvtophys` and selects the incoming one.
  The restore routines replay saved state through the command FIFO port at board +0x110000: `odsyRestoreRaster` at 0xa58 (7468 bytes) the raster blocks, `odsyRestoreVB` at 0x31d8 (4076 bytes) the vertex attribute slots, `odsyRestoreXform` at 0x2784 (2644 bytes) the transform engine and `odsyRestartContext` at 0x4c34 (2884 bytes) an interrupted primitive.
  `odsyResetHwShadow` at 0x6100 resets the shadow to the default attribute words.
  The member is 49476 bytes with 26 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`: **inferred.**
  Finds and talks to the attached monitor over the board's two-wire ports.
  `odsy_i2cProbe2b` at 0x410 (6172 bytes) probes both ports for display-data and validates what it reads, `odsy_Probe2AB` at 0x3004 (728 bytes) finds a DDC2AB monitor and moves it to a bus address, and `odsy_i2c_cmd` at 0x2314 (3312 bytes) is the command switch (reset, start, stop, send, receive).
  `odsy_2abSendCmd` at 0x340c sends one framed command and `odsy_2abGetReply` at 0x3638 receives the reply as a bus slave.
  `odsy_i2cPLLRegRead` and `odsy_i2cPLLRegWrite` reach the programmable clock part on the same bus.
  The member is 42852 bytes with 25 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`: **inferred.**
  Creates and destroys the per-client context record when a process opens or closes the board.
  `gf_OdsyCreateDDRN` at 0x50 (1000 bytes) takes the board record and a resource node and returns 0 for success or 1 for failure, and `gf_OdsyDestroyDDRN` at 0x438 (656 bytes) frees the record, first running the manager's cleanup when the node is its first.
  `odsyInitDDRNs` at 0x0 gives a board a zeroed block of 1016 bytes for its counters. The routines allocate kernel memory only and touch no register.
  The member is 10372 bytes with 3 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_denali.o)`: **inferred.**
  Probes for the Denali part on the board's two-wire bus. `odsy_ProbeDenali` at 0x338 (124 bytes) clears its result word and calls `odsy_probeDenaliChannel` for channel 0, which tests one channel for a Denali-class device with the port chosen by its last argument.
  The member is 8084 bytes with 2 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`: **inferred.**
  The diagnostic and statistics requests of the driver.
  `gfP_OdsyDIAGgetShadowPtrs` at 0x2b8 (728 bytes) is private request 54, which maps the driver's shadow memory into a diagnostic client under the mutex at board +0xb370, and `gfP_OdsyDIAGreleaseShadowPtrs` at 0x590 releases it.
  `gfP_OdsyPerfStat` at 0x7c4 (492 bytes) is request 51 and creates, writes the control of or destroys the 16 KB statistics region that `odsyInitPfRgn` at 0x674 sets up.
  `gfP_OdsyDIAGfreeScanbuf` at 0x218 and `gfP_OdsyDIAGallocScanbuf` at 0x0 manage the diagnostic scan buffer.
  The member is 13348 bytes with 8 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`: **inferred.**
  The host-to-board DMA path for pixel transfers.
  `odsyDMAOps` at 0xb34 (4136 bytes) splits one pixel-transfer request into `odsyDMAOp` calls, and `odsyDMAOp` at 0x1b5c (2056 bytes) issues one operation after building the page table with `generatePageTable` at 0x558 (880 bytes).
  `odsyDMAWait` at 0x24a8 (940 bytes) waits for operations to finish and reaps their records, and `odsyDMAWakeup` at 0x2934 (724 bytes) completes the ones the board has finished by comparing the completion counter the board writes back with the issue counter.
  `gfP_OdsyDIAGdma` at 0x934 is the diagnostic transfer.
  The member is 36020 bytes with 22 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`: **inferred.**
  Binds a client to its drawables and sets the draw buffer.
  `gfP_OdsyMakeCurrent` at 0xa2c (756 bytes) is private request 8 and copies in an 80-byte argument, `gfP_OdsySetDrawBuffer` at 0x53c (520 bytes) is request 9, and `gfP_OdsyPbufAssoc` at 0xd20 (452 bytes) is request 36, which makes a pixel-buffer group addressable by a drawable id.
  `odsyBindDrawable` at 0x138 (692 bytes) fills one of a context's two binding records, and `odsyPushBufferSelect` at 0x744 (744 bytes) sends the draw-buffer mask to the board through the command FIFO port.
  The member is 17028 bytes with 11 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dvi.o)`: **inferred.**
  A 1220-byte object with no routine and no data: the IP30 build carries only the compilation record, which names the source `../graphics/ODYSSEY/odsy_dvi.c` and nothing else, because the digital video output is an IP35 feature.
  The IP35 build of the same object has 9 routines in 14676 bytes (see the IP35 table below).
  The member is 1220 bytes.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`: **inferred.**
  Flow control for the command FIFO. `odsyHiwaterInterrupt` at 0xcc (464 bytes) runs when the host's credits for the board fall below the bias and spins for credits before it marks the board backed up.
  `odsyLowaterInterrupt` at 0x29c (144 bytes) runs when the FIFO drains below its low-water mark, cancels the watchdog and writes 0x200 to board register 0x103c to stop the interrupt.
  `odsyFifoTimer` at 0x32c arms or cancels that watchdog and `odsyFifoTimeout` at 0x394 tears the board down when it fires.
  `odsy_poll_dfifo_level` at 0x0 waits for the display FIFO to reach a level, and `odsy_flow_am_i_attached` at 0x8c asks the flow-control layer whether the caller is attached.
  The member is 9556 bytes with 6 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`: **inferred.**
  Hyperpipe support: several boards driven as one tiled display through a compositor.
  `odsy_hpipe_discover` at 0x64 (1460 bytes) builds the global display-pipe table from the boards present, and `odsy_program_compositor_tiling` at 0x844 (1044 bytes) writes each member board's tile layout to the compositor.
  `gfP_OdsyHPconfig` at 0xc58 (712 bytes) is private request 40 and creates a configuration from a 524-byte argument, `gfP_OdsyHPqueryAttrib` at 0x13e8 is request 43 and `gfP_OdsyHPsetAttrib` at 0x17f4 is request 44.
  The member is 26356 bytes with 19 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`: **inferred.**
  The bus master for the board's two-wire ports. The routines drive control registers in the window at board +0x220000 and wait on busy and transfer-done bits.
  `odsy_i2c_start` at 0x40c8 (4912 bytes) sends a start and address byte, `odsy_i2c_sendbyte` at 0x5dc0 (3796 bytes) sends one data byte as master, and `odsy_i2c_recv_1byte` at 0x76e8 (3132 bytes) receives a single byte for the display-data routines.
  `odsy_i2c_write_denali_byte` at 0x2660 writes one byte to the Denali device at bus address 0x77 and `odsy_i2c_write_comp_reg4` at 0xaf4 writes a four-byte compositor register.
  `odsy_i2cReset` at 0xaab8 returns a port to idle.
  The member is 74308 bytes with 20 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_idbg.o)`: **inferred.**
  A 1236-byte object with no routine and no data, only the compilation record of the debugger-hook source.
  The patch builds carry a larger object of the same name (2804 and 2836 bytes) built with an older compiler, and the IP35 build has the same size as this one.
  The member is 1236 bytes.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`: **inferred.**
  Board bring-up. `odsyReset` at 0x1c04 (1800 bytes) takes a board from any state to idle, writing the widget control word around `odsyLowLevelReset`.
  `odsyGatherInfo` at 0xb84 (1440 bytes) reads the board's identity into the board record (the revision type is bits 31:28 of the widget word at +0x4), `odsyInitDBE` at 0x2c5c (4248 bytes) brings up the display back end and the two-wire ports, and `odsyInitInterrupts` at 0x275c (1032 bytes) programs the five interrupt sources.
  `gf_OdsyInitialize` at 0x1284 (1196 bytes) prepares flow control and the command FIFO after attach, and `odsyInitCfifo` at 0x230c (860 bytes) loads the kernel's copy of the transform microcode.
  The member is 81796 bytes with 29 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`: **inferred.**
  The interrupt service routines, one per source. `odsyGenlockInterrupt` at 0x5c0 (4064 bytes) handles the genlock source under the display-FIFO semaphore, `odsyFlagInterrupt` at 0x1ac (916 bytes) handles the flags source by reading the flags word at 0x1014 and calling the water-mark routines, and `odsyXtErrorInterrupt` at 0x0 handles the crossbar error source by reading the widget status word.
  `odsyDmaInterrupt` at 0x540 (56 bytes) and `odsySsyncInterrupt` at 0x578 (72 bytes) only wake the waiter on a DMA transfer and touch no register.
  The member is 20628 bytes with 5 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`: **inferred.**
  Maps board and shadow memory into client processes and releases the mappings. `gf_OdsyMapGfx` at 0x0 maps the eight windows of the board's PIO space, `odsyMapPages` at 0x8e4 maps kernel memory in 16 KB pages through `gfxdd_mmap_mem_ex`, and `gf_OdsyUnMapGfx` at 0x294 (384 bytes) removes a client's mappings.
  `odsyPinAndMapGctxSwShadowRgn` at 0x498 pins and maps the 11128-byte context-switch shadow area, and `gf_OdsyInvalTLB` at 0x414 invalidates the board's address translations afterwards.
  The member is 14756 bytes with 13 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`: **inferred.**
  The board memory manager: extents of board memory for textures, pixel buffers and other objects, with eviction to a backing store.
  `mm_get_extent` at 0x5800 (1580 bytes) finds board memory for an object in units of 32 bytes, `mm_shake` at 0x6410 (1696 bytes) makes a free extent by evicting objects, and `mm_release_extent` at 0x5e2c (1052 bytes) frees one.
  `gfP_OdsyMMxfr` at 0x1fa8 (1676 bytes) is private request 6, which moves pixels between a client and a memory object, and `odsy_mm_obj_xfr_bs` at 0x3e2c (972 bytes) copies an object between the board and its backing store through `odsyDMAOp`.
  The object holds 67 routines, the most of any in the archive.
  The member is 78372 bytes with 67 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_rainier.o)`: **inferred.**
  Access to a Rainier add-in board in the hardware graph. `odsy_ProbeRainier` at 0x9c (340 bytes) looks for such boards and prepares the first one.
  `odsy_rainier_read_rcx_reg` at 0x18 and `odsy_rainier_write_rcx_reg` at 0x0 read and write one 32-bit register of the board's window at the base pointer stored in the record, and `odsy_rainier_read_board_id` at 0x30 reads offset 0x330 for the identification word.
  `odsy_RainierRegRead` at 0x4c and `odsy_RainierRegWrite` at 0x7c are the entries of the callback table.
  The member is 8228 bytes with 6 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`: **inferred.**
  Buffer swaps and the retrace interrupt. `odsyRetraceHandler` at 0x1274 (716 bytes) handles retrace source 3, loading the buffer-select word at 0x10d4 and XOR-ing it with the record's copy.
  `gf_OdsySchedSwapBuf` at 0x380 (1108 bytes) schedules a swap for the manager, `odsySwapBuffer` at 0x13c (580 bytes) swaps the front and back buffers of one window id, and `gf_OdsySchedMGRSwapBuf` at 0x107c queues a swap of the console manager's buffer in one of 32 slots.
  `gf_OdsySetDisplayMode` at 0xbd4 (1192 bytes) sets a window id's display mode after waiting for display-FIFO level 15.
  The member is 19908 bytes with 13 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)`: **inferred.**
  Takes a client on and off the board. `gf_OdsyExit` at 0x1b0 (580 bytes) runs when the manager closes the board for one graphics object and calls `odsyDiagExit` when the diagnostic bit is set.
  `gf_OdsyResume` at 0xb8 (248 bytes) attaches the current owner to flow control with `gfx_flow_attach_me`, `gf_OdsySuspend` at 0x0 takes it off, and `gf_OdsyReleaseGfxSema` at 0x3f4 gives up the board's flow control for the caller.
  `odsyDiagExit` at 0x480 frees a diagnostics client's scan buffer.
  The member is 9364 bytes with 5 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sim.o)`: **inferred.**
  A 1252-byte object with no routine, holding the compilation record and an import of the node count `numnodes`.
  The patch builds carry larger objects of the same name (2836 and 2900 bytes) and the IP35 build matches this one in size.
  The member is 1252 bytes.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_timings.o)`: **inferred.**
  Built-in video timing data, 4340 bytes with no routine. Its `.data` section holds two 320-byte timing structures, `default_1280x1024_72_timing` and `odsy_default_timing1`, with the frame and line tables `ftab_1280x1024_72`, `ltab_1280x1024_72` and `ftab_default1` that they point to.
  The IP35 build has the same size, and the 320-byte layout is the one `odsyLoadTimingTable` takes, described in `docs/display.md`.
  The member is 4340 bytes.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`: **inferred.**
  Draws the console text port in the kernel and in diagnostics. `ODSY_SET_GC` at 0x30 (2440 bytes) sets up the graphics state with nine arguments (board base, colours and block words), `odsy_drawbitmap` at 0xf8c (1716 bytes) draws a glyph bitmap as filled boxes, `odsy_sboxfi` at 0xb90 (600 bytes) fills a box and `odsy_pnt2i` at 0xde8 (404 bytes) draws a point.
  Both send commands to the board through the command FIFO port under the text-port lock and do nothing while the mute word is set.
  `odsy_tpinit` at 0x1658 (492 bytes) resets the text port for use.
  The member is 38052 bytes with 11 routines.
- `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ucode.o)`: **inferred.**
  Loads transform microcode. `gf_OdsyDownload` at 0x130 (840 bytes) handles the private request that carries a client's microcode, checks that its byte length is 1 to 4093 whole lines of 12 bytes, and passes it on.
  `odsyDownloadUcode` at 0x0 writes the lines to the board through the command FIFO port at board +0x110000, an address word followed by six 16-bit words per instruction, with the starting line below 2047.
  The member is 8452 bytes with 2 routines.

## The other builds

One row per member with routines. "Shared with media build" counts routines of the same name in the media member, "Different code" those among them whose code differs, and "Added" and "Removed" the names present only in this member or only in the media member. The patch builds are older code, so most routines differ; the IP35 build differs where the host differs.

### Patch 4103

| File | Label | Role | Board access | Bytes | Routines | Shared with media build | Different code | Added | Removed | Largest routine |
|---|---|---|---|---|---|---|---|---|---|---|
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)` | established | private request front door | none of its own | 12660 | 4 | 4 | 4 | 0 | 0 | `gf_OdsyPrivate` at 0x80 |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` | established | id sets and slot tables | none, pure bookkeeping | 15444 | 18 | 18 | 17 | 0 | 0 | `OdsyAllocCSetId` at 0x56c |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)` | established | maps board windows to processes | page mapping only | 7284 | 3 | 3 | 3 | 0 | 0 | `gf_OdsyAttach` at 0x60 |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` | established | video timing and cursor manager | registers and display FIFO | 49076 | 19 | 18 | 18 | 1 | 3 | `odsyLoadTimingTable` at 0x3320 |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)` | established | clip regions and buffer clears | command FIFO port | 10916 | 6 | 6 | 5 | 0 | 2 | `gf_OdsyValidateClip` at 0x0 |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` | established | graphics context save and restore | command FIFO port | 45364 | 26 | 26 | 24 | 0 | 0 | `odsyRestoreRaster` at 0xa88 |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` | established | monitor probing over two-wire | two-wire bus port | 40484 | 24 | 24 | 22 | 0 | 1 | `odsy_i2cProbe2b` at 0x41c |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)` | established | per-client context records | none, kernel memory | 10068 | 3 | 3 | 3 | 0 | 0 | `gf_OdsyCreateDDRN` at 0x54 |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)` | established | diagnostic and statistics requests | shadow memory mappings | 12996 | 8 | 8 | 8 | 0 | 0 | `gfP_OdsyDIAGgetShadowPtrs` at 0x2a4 |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` | established | host to board DMA engine | registers and page tables | 32532 | 20 | 20 | 20 | 0 | 2 | `odsyDMAOps` at 0xaf4 |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` | established | drawable binding and buffer select | command FIFO port | 16900 | 11 | 11 | 11 | 0 | 0 | `gfP_OdsyMakeCurrent` at 0x9b0 |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)` | established | command FIFO flow control | interrupts and flow credits | 9460 | 6 | 6 | 6 | 0 | 0 | `odsyHiwaterInterrupt` at 0xdc |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` | established | two-wire bus master | control registers in window | 40756 | 12 | 12 | 12 | 0 | 8 | `odsy_i2c_start` at 0x0 |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` | established | board reset and start-up | registers and interrupt setup | 74804 | 26 | 26 | 26 | 0 | 3 | `odsyInitDBE` at 0x23f8 |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)` | established | interrupt service routines | status registers | 16132 | 5 | 5 | 5 | 0 | 0 | `odsyGenlockInterrupt` at 0x5bc |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` | established | maps board and shadow memory | page tables | 15156 | 13 | 13 | 13 | 0 | 0 | `gf_OdsyMapGfx` at 0x0 |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` | established | board memory manager | DMA to backing store | 69124 | 57 | 51 | 51 | 6 | 16 | `gfP_OdsyMMxfr` at 0x1e5c |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)` | established | swap and retrace scheduling | display FIFO | 19140 | 13 | 13 | 11 | 0 | 0 | `gf_OdsySetDisplayMode` at 0xb68 |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)` | established | suspend, resume and exit | flow control attach | 9284 | 5 | 5 | 5 | 0 | 0 | `gf_OdsyExit` at 0x1b8 |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)` | established | textport drawing | command FIFO port | 34804 | 11 | 11 | 9 | 0 | 0 | `ODSY_SET_GC` at 0x30 |
| `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ucode.o)` | established | microcode download | command FIFO port | 8468 | 2 | 2 | 2 | 0 | 0 | `gf_OdsyDownload` at 0x118 |

### Patch 4104

| File | Label | Role | Board access | Bytes | Routines | Shared with media build | Different code | Added | Removed | Largest routine |
|---|---|---|---|---|---|---|---|---|---|---|
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)` | established | private request front door | none of its own | 12692 | 4 | 4 | 4 | 0 | 0 | `gf_OdsyPrivate` at 0x80 |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` | established | id sets and slot tables | none, pure bookkeeping | 15476 | 18 | 18 | 17 | 0 | 0 | `OdsyAllocCSetId` at 0x56c |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)` | established | maps board windows to processes | page mapping only | 7316 | 3 | 3 | 3 | 0 | 0 | `gf_OdsyAttach` at 0x60 |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` | established | video timing and cursor manager | registers and display FIFO | 49108 | 19 | 18 | 18 | 1 | 3 | `odsyLoadTimingTable` at 0x3320 |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)` | established | clip regions and buffer clears | command FIFO port | 10932 | 6 | 6 | 5 | 0 | 2 | `gf_OdsyValidateClip` at 0x0 |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)` | established | graphics context save and restore | command FIFO port | 45396 | 26 | 26 | 24 | 0 | 0 | `odsyRestoreRaster` at 0xa88 |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` | established | monitor probing over two-wire | two-wire bus port | 40516 | 24 | 24 | 22 | 0 | 1 | `odsy_i2cProbe2b` at 0x41c |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)` | established | per-client context records | none, kernel memory | 10100 | 3 | 3 | 3 | 0 | 0 | `gf_OdsyCreateDDRN` at 0x54 |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)` | established | diagnostic and statistics requests | shadow memory mappings | 13028 | 8 | 8 | 8 | 0 | 0 | `gfP_OdsyDIAGgetShadowPtrs` at 0x2a4 |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` | established | host to board DMA engine | registers and page tables | 32564 | 20 | 20 | 20 | 0 | 2 | `odsyDMAOps` at 0xaf4 |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` | established | drawable binding and buffer select | command FIFO port | 16916 | 11 | 11 | 11 | 0 | 0 | `gfP_OdsyMakeCurrent` at 0x9b0 |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)` | established | command FIFO flow control | interrupts and flow credits | 9492 | 6 | 6 | 6 | 0 | 0 | `odsyHiwaterInterrupt` at 0xdc |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` | established | two-wire bus master | control registers in window | 40772 | 12 | 12 | 12 | 0 | 8 | `odsy_i2c_start` at 0x0 |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` | established | board reset and start-up | registers and interrupt setup | 74820 | 26 | 26 | 26 | 0 | 3 | `odsyInitDBE` at 0x23f8 |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)` | established | interrupt service routines | status registers | 16164 | 5 | 5 | 5 | 0 | 0 | `odsyGenlockInterrupt` at 0x5bc |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` | established | maps board and shadow memory | page tables | 15172 | 13 | 13 | 13 | 0 | 0 | `gf_OdsyMapGfx` at 0x0 |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` | established | board memory manager | DMA to backing store | 69156 | 57 | 51 | 51 | 6 | 16 | `gfP_OdsyMMxfr` at 0x1e5c |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)` | established | swap and retrace scheduling | display FIFO | 19172 | 13 | 13 | 11 | 0 | 0 | `gf_OdsySetDisplayMode` at 0xb68 |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)` | established | suspend, resume and exit | flow control attach | 9316 | 5 | 5 | 5 | 0 | 0 | `gf_OdsyExit` at 0x1b8 |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)` | established | textport drawing | command FIFO port | 34836 | 11 | 11 | 9 | 0 | 0 | `ODSY_SET_GC` at 0x30 |
| `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ucode.o)` | established | microcode download | command FIFO port | 8500 | 2 | 2 | 2 | 0 | 0 | `gf_OdsyDownload` at 0x118 |

### IP35 build

| File | Label | Role | Board access | Bytes | Routines | Shared with media build | Different code | Added | Removed | Largest routine |
|---|---|---|---|---|---|---|---|---|---|---|
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy.o)` | established | private request front door | none of its own | 13620 | 4 | 4 | 0 | 0 | 0 | `gf_OdsyPrivate` at 0x84 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)` | established | id sets and slot tables | none, pure bookkeeping | 16228 | 18 | 18 | 1 | 0 | 0 | `OdsyAllocCSetId` at 0x604 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_attach.o)` | established | maps board windows to processes | page mapping only | 7748 | 3 | 3 | 1 | 0 | 0 | `gf_OdsyAttach` at 0x68 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)` | established | video timing and cursor manager | registers and display FIFO | 61364 | 21 | 21 | 13 | 0 | 0 | `odsyLoadTimingTable` at 0x3cd0 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_clip.o)` | established | clip regions and buffer clears | command FIFO port | 16596 | 8 | 8 | 5 | 0 | 0 | `gfP_OdsyClearBuffer` at 0xccc |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_compositor.o)` | established | compositor register access | two-wire bus port | 14260 | 8 | 8 | 0 | 0 | 0 | `odsy_ReadCompositorNic` at 0x45c |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ctxsw.o)` | established | graphics context save and restore | command FIFO port | 49732 | 26 | 26 | 11 | 0 | 0 | `odsyRestoreRaster` at 0xc3c |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ddc.o)` | established | monitor probing over two-wire | two-wire bus port | 42820 | 25 | 25 | 1 | 0 | 0 | `odsy_i2cProbe2b` at 0x410 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ddrn.o)` | established | per-client context records | none, kernel memory | 10932 | 3 | 3 | 1 | 0 | 0 | `gf_OdsyCreateDDRN` at 0x50 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_denali.o)` | established | Denali part probe | two-wire bus port | 8052 | 2 | 2 | 0 | 0 | 0 | `odsy_probeDenaliChannel` at 0x0 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_diag.o)` | established | diagnostic and statistics requests | shadow memory mappings | 13316 | 8 | 8 | 0 | 0 | 0 | `gfP_OdsyDIAGgetShadowPtrs` at 0x2b8 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dma.o)` | established | host to board DMA engine | registers and page tables | 35716 | 22 | 22 | 6 | 0 | 0 | `odsyDMAOps` at 0xb34 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_drawable.o)` | established | drawable binding and buffer select | command FIFO port | 17892 | 11 | 11 | 5 | 0 | 0 | `gfP_OdsyMakeCurrent` at 0xab0 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dvi.o)` | established | digital video output set-up | two-wire bus and expander | 14676 | 9 | 0 | 0 | 9 | 0 | `odsy_read_XmitRegs` at 0x5d8 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_flow.o)` | established | command FIFO flow control | interrupts and flow credits | 12324 | 9 | 6 | 5 | 3 | 0 | `odsyHiwaterInterrupt` at 0x370 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` | established | multi-board display pipe tiling | compositor registers | 26324 | 19 | 19 | 11 | 0 | 0 | `odsy_hpipe_discover` at 0x64 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_i2c.o)` | established | two-wire bus master | control registers in window | 74276 | 20 | 20 | 19 | 0 | 0 | `odsy_i2c_start` at 0x40c8 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)` | established | board reset and start-up | registers and interrupt setup | 89076 | 32 | 29 | 20 | 3 | 0 | `odsyInitDBE` at 0x3600 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_intr.o)` | established | interrupt service routines | status registers | 20596 | 5 | 5 | 5 | 0 | 0 | `odsyGenlockInterrupt` at 0x5c0 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_map.o)` | established | maps board and shadow memory | page tables | 15572 | 13 | 13 | 4 | 0 | 0 | `gf_OdsyMapGfx` at 0x0 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_pmm.o)` | established | board memory manager | DMA to backing store | 78340 | 67 | 67 | 1 | 0 | 0 | `mm_shake` at 0x63fc |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_rainier.o)` | established | Rainier add-in board access | mapped register window | 8228 | 6 | 6 | 0 | 0 | 0 | `odsy_ProbeRainier` at 0x9c |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_retrace.o)` | established | swap and retrace scheduling | display FIFO | 20516 | 13 | 13 | 3 | 0 | 0 | `gf_OdsySchedSwapBuf` at 0x380 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_sched.o)` | established | suspend, resume and exit | flow control attach | 10148 | 5 | 5 | 3 | 0 | 0 | `gf_OdsyExit` at 0x248 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_tport.o)` | established | textport drawing | command FIFO port | 37668 | 11 | 11 | 6 | 0 | 0 | `ODSY_SET_GC` at 0x30 |
| `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_ucode.o)` | established | microcode download | command FIFO port | 9220 | 2 | 2 | 2 | 0 | 0 | `gf_OdsyDownload` at 0x120 |


## Members without routines in the other builds

- `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_idbg.o)`: **inferred.**
  The patch 4103 debugger-hook member, 2804 bytes with no routine; the media member is 1236 bytes, so this build's compilation record and options string are longer.
- `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sim.o)`: **inferred.**
  The patch 4103 simulator-hook member, 2836 bytes with no routine; the media member is 1252 bytes.
- `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_timings.o)`: **inferred.**
  The patch 4103 timing data, 7044 bytes with no routine. Its `.data` section holds 312-byte timing structures, among them `default_640x480`, `default_1600x1024_60p` and `odsy_default_timing1`, each 8 bytes shorter than the media build's 320-byte structures.
- `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_idbg.o)`: **inferred.**
  The patch 4104 debugger-hook member, 2836 bytes with no routine, 32 bytes larger than the patch 4103 member of the same name.
- `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sim.o)`: **inferred.**
  The patch 4104 simulator-hook member, 2900 bytes with no routine, 64 bytes larger than the patch 4103 member.
- `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_timings.o)`: **inferred.**
  The patch 4104 timing data, 7076 bytes with no routine, 32 bytes larger than the patch 4103 member of the same name, with the same 312-byte structure size.
- `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_idbg.o)`: **inferred.**
  The IP35 debugger-hook member, 1236 bytes with no routine, the same size as the media member.
- `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_sim.o)`: **inferred.**
  The IP35 simulator-hook member, 1252 bytes with no routine, the same size as the media member.
- `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_timings.o)`: **inferred.**
  The IP35 timing data, 4340 bytes with no routine, the same size as the media member and with the same two 320-byte structures `default_1280x1024_72_timing` and `odsy_default_timing1`.
