# Ioctl entries, one per request

Release IRIX 6.5.30m, IP30 kernel objects (`odyssey.a` members, `gfx.o`, `rrm.o`). Three families reach the board driver: the generic graphics requests 101 to 113 handled in `gfxioctl` (`gfx.o`), the resource-manager requests 1000 to 1025 that `gfxioctl` forwards to `RRM_Dispatch` (`rrm.o`), and the private requests `0x6f640000` + n, n below 53, that `gf_OdsyPrivate` (`odsy.o`) takes from a 53-entry pointer table. Argument sizes are the literal lengths of the handlers' `copyin` and `copyout` calls. The labels are **established** (read from the code, with the callee that shows it) or **inferred** (a reading, with its reason). The numbers of the generic requests come from the shipped header the Odyssey stack header 2 (6.5.30), which names them.

## Generic graphics requests (101 to 113)

Each entry starts with the request number in hex. Every one of them reaches `gfxioctl` first; the argument handling below is read from its case code.

- 0x65 `GFX_GETNUM_BOARDS` (ioctl 101, `gfx.o`): **established.**
  The first comparison of `gfxioctl` takes it with no argument copy of its own; **inferred** from the header name that
  it reports how many boards the driver has registered through `GfxRegisterBoard`. The libGL open path and
  `ddxFindAvailableBoards` send it.
- 0x66 (ioctl 102, `gfx.o`).
  `gfxioctl` copies a 24-byte argument in through `copyin_xlate`, which converts the caller's ABI layout,
  so the request works from o32, N32 and 64-bit clients; by inference it returns the per-board record
  that `gfxinfo` prints.
- 0x67 `GFX_ATTACH_BOARD` (ioctl 103, `gfx.o`): **established.**
  A 16-byte argument is converted in through `copyin_xlate` before the board is attached to the calling
  thread group, and `diag_discover_boards` in the compositor diagnostic sends it.
- 0x68 `GFX_DETACH_BOARD` (ioctl 104, `gfx.o`): **established.**
  The case reads the thread group's reference count (`threadgroup_refcnt`) before it calls `GfxDetach`, so
  a detach with other threads attached is handled in the count first; **inferred** that the last thread
  detaches the board.
- 0x69 `GFX_IS_MANAGED` (ioctl 105, `gfx.o`): **established.**
  A 4-byte argument is copied in with plain `copyin`; **inferred** from the header name that the request
  tells the caller whether the board is under the graphics manager.
- 0x6a (ioctl 106, `gfx.o`).
  `gfxioctl` takes the board's `ddv` lock around the call into the board driver; for this board the
  driver's initialise entry is `gf_OdsyInitialize`, whose reset and flow-control work is in
  `docs/kernel.md`. `gfxinfo` and `gfxinit` send it.
- 0x6b (ioctl 107, `gfx.o`).
  Same locked call shape as 106, into the board driver's start entry, `gf_OdsyStart` (`odsy_init.o`),
  which hands the hardware-shadow cache region to the board at 0x4034 and 0x403c; `gfxinfo` sends it after
  the download.
- 0x6c (ioctl 108, `gfx.o`).
  A 40-byte argument is converted in with `copyin_xlate`; the board driver's download entry is
  `gf_OdsyDownload`. `gfxinfo`'s `odsy_init` and the other board initialisers send it.
- 0x6e `GFX_MAPALL` (ioctl 110, `gfx.o`): **inferred.**
  The request that maps the board windows into the caller; `gf_OdsyMapGfx` (`odsy_map.o`) is the board
  entry that maps eight windows of the PIO space (`docs/registers.md`), and this is the only number in the
  generic range left for it.
- 0x6f `GFX_LABEL` (ioctl 111, `gfx.o`): **established.**
  `gfxioctl` copies a 16-byte argument in with `copyin` and passes it on; the X server sends it from
  `irixKernInit`; **inferred** that it names the board for the hardware graph.
- 0x70 (ioctl 112, `gfx.o`).
  A 16-byte argument converted with `copyin_xlate`, the same layout size as the attach request;
  `ng1_setmon` sends it.
- 0x71 (ioctl 113, `gfx.o`).
  The case calls `drv_priv` first and, for a privileged caller, sets bit 2 of the board record's flag word at
  +4 without copying any argument; the compositor diagnostic and `saXSGIvcQueryChannelGammaMap` send it.

## Resource-manager requests (1000 to 1025)

`RRM_Dispatch` accepts numbers 1000 to 1099 and indexes a table of 24-byte entries in `rrm.o` `.data` (handler, argument size, flag word, name); the handler names are the table's own. Entries start with the handler.

- `RRM_OpenRN` (ioctl 1000, `rrm.o`): **established.**
  Takes the resource-manager semaphore (`psema`), zeroes a new resource-node record (`bzero`), allocates
  it with `kern_malloc` and sets up its condition variable and spin lock (`init_sv`, `spinlock_init`); on
  failure it destroys both again. The X server sends it from `irixKernInit` to get a node id.
- `RRM_CloseRN` (ioctl 1001, `rrm.o`): **established.**
  One call: it passes the node to `rrmCloseRN`, which tears the node down. The scan finds no sender in the
  shipped binaries.
- `RRM_BindProcToRN` (ioctl 1002, `rrm.o`): **established.**
  Makes the calling process the owner of a node: it takes the semaphore (`psema`), closes a node the
  process already holds (`rrmCloseRN`) and unbinds the process from its previous node
  (`rrmUnbindProcFromRN`), with a reschedule request (`force_resched`) when the node's use count says
  another user waits.
- `RRM_BindRNToClip` (ioctl 1003, `rrm.o`): **established.**
  A thin wrapper that calls `RRM_BindRNToReadAndClip` and then copies 12 bytes back to the caller;
  `xgsetmon` sends it to tie a node to a clip.
- `RRM_UnbindRNFromClip` (ioctl 1004, `rrm.o`): **established.**
  One call, `pane_cleanup`, which releases the pane the clip holds; `rrmDisposeClip` in the X module sends
  it.
- `RRM_SwapBuf` (ioctl 1005, `rrm.o`): **established.**
  IP30 entry: offset 0x3828, 668 bytes.
  The kernel side of a buffer swap, with a 12-byte argument: it marks the node as swapped, waits in
  `rrmSwapWait` for the retrace target, validates the pane's buffer and calls the board's swap entry
  `gf_OdsySchedSwapBuf`. The full path is in `docs/display.md`; the table slot has no sender in the
  shipped binaries other than libGLcore's swap sequence.
- `RRM_SwapBuf` (ioctl 1005, `rrm.o`, IP35): **established.**
  Entry offset 0x3838, 668 bytes. The IP35 body has the same request and return paths as IP30: it tests
  node flag bit 3 before the optional wait, rejects a failed caller check with 14, copies the pane's swap
  id into the node record, toggles pane halfword +18 when that flag is set, updates the board's in-flight
  count and per-id table, calls the board operation-table entry at +0x88 with the node, request word and
  id, and decrements the count on failure. It returns 0 on success, 4 when the optional swap validation
  returns zero, and 14 for the caller-check failure; the board callback's result is returned otherwise.
- `RRM_SetSwapInterval` (ioctl 1006, `rrm.o`): **established.**
  Calls nothing: it refuses a negative interval from argument word 1 with error 22 and otherwise stores
  the value in the node at +32 and in the node's second record at +24, which `RRM_SwapBuf` tests for nonzero before it calls `rrmSwapWait` (that routine itself reads the same record's +28 target count);
  `glXSwapIntervalSGI` in libGL sends it.
- `RRM_WaitForRetrace` (ioctl 1007, `rrm.o`): **established.**
  Checks the caller (`RRM_CheckValidFault`), invalidates the node (`rrmInvalidateRN`) and unmaps the
  graphics windows (`rrmUnMapGfx`); **inferred** that the caller then sleeps in its next graphics access
  until the retrace path revalidates it. The scan finds no sender in the shipped binaries.
- `RRM_SetDisplayMode` (ioctl 1008, `rrm.o`): **established.**
  After the caller check it posts a message to every attached client (`GfxMessage`), invalidates the
  affected pane (`invalidate_pane`) and unmaps the graphics windows (`rrmUnMapGfx`), which forces each
  client to reload its state after a mode change.
- `RRM_Message` (ioctl 1009, `rrm.o`): **established.**
  Under the pane spin lock (`mutex_spinlock`) it reads the pane's valid mask (`pane_validmask`), copies
  the caller's message into the node (`bcopy`), invalidates the node (`rrmInvalidateRN`) and sends the
  message on with `GfxMessage`.
- `RRM_InvalidateRN` (ioctl 1010, `rrm.o`): **established.**
  Invalidates the pane (`invalidate_pane`), finds the pane for a clip (`clip2pane`), revalidates its
  buffer (`validate_pane_buffer`) and copies 20 bytes back; `rrmInvalidate` in the X server sends it.
- `RRM_ValidateClip` (ioctl 1011, `rrm.o`): **established.**
  After the caller check it calls `validate_pane_clip`, which stores the clip's rectangles into its pane
  and marks them valid, retrying with a 2 microsecond wait (`us_delay`) while the pane is busy;
  `odsyValidateClip` in the X module sends it.
- `RRM_ValidateSwapBuf` (ioctl 1012, `rrm.o`): **established.**
  After the caller check it calls `validate_pane_swapbuf`, which stores the caller's window id in the
  clip's pane at +20 (`docs/display.md`, window ids); the X module sends it from `odsyValidateSwapbuf`.
- `RRM_SwapGroup` (ioctl 1013, `rrm.o`): **established.**
  Builds a swap group: it allocates the group record (`kern_malloc`, `bzero`), finds each member's pane
  (`clip2pane`) and leaves any previous group (`rrmSwapUnGroup`); `glxJoinSwapGroupSGIX` and
  `glxBindSwapBarrierSGIX` in the GLX module send it.
- `RRM_SwapUnGroup` (ioctl 1014, `rrm.o`): **established.**
  Takes the semaphore, finds the clip's pane with `clip2pane` and removes it from its swap group through
  `rrmSwapUnGroup`. The scan finds no sender in the shipped binaries.
- `RRM_ValidateMessage` (ioctl 1015, `rrm.o`): **established.**
  Under the pane spin lock it calls `rrmValidateBuffer`, the acknowledgement half of the `RRM_Message`
  exchange. The scan finds no sender in the shipped binaries.
- `RRM_GetDisplayModes` (ioctl 1016, `rrm.o`): **established.**
  One `copyout`: the driver's table of display-mode words (count at node +88, pointer at +96, four bytes
  each) goes to the caller's buffer, or error 22 when the caller's length in argument word 4 is too small;
  the table's layout is in `docs/display.md`.
- `RRM_LoadDisplayMode` (ioctl 1017, `rrm.o`): **established.**
  Finds the pane for argument word 1 (`clip2pane`) and refuses with error 22 when the pane has flag bit 3 set
  or the mode index in word 2 is negative or not below the node's mode count at +88. It then calls the board
  driver's `gf_OdsySetDisplayMode` through slot 160 of its operation table (`odsy.o` data, offset 0xa0) with the
  mode index and word 3, records word 4 in the pane (+32) and in the node's per-mode table (+96), and only when
  the call returns 1 does it invalidate the node (`rrmInvalidateRN`) and, when that returns 0, call slot 152
  (`gf_OdsySchedRetraceEvent`) and unmap the graphics windows (`rrmUnMapGfx`); `odsyValidateMode` and
  `odsyChangeDIDCmap` in the X module send it.
- `RRM_CushionBuffer` (ioctl 1018, `rrm.o`): **established.**
  Finds the pane (`clip2pane`) and sets or clears its byte at +177 from argument word 2, refusing a repeat
  set or clear and a pane that belongs to another node; the scan finds no sender, so what the board does
  with the flag is not exercised.
- `RRM_SwapReady` (ioctl 1019, `rrm.o`): **established.**
  Checks the id in argument word 1 against the node's table bound at +176 (error 37 when it is not below),
  finds the pane for word 0 (`clip2pane`) and then follows word 2: nonzero claims that id's slot in the node's
  per-id table at +184 with the pane's word at +160 (error 17 when that pane already holds it, 16 when another
  does; errors 2, 6 and 15 for a missing pane, a pane of another node and a pane with no +160 word),
  zero releases the slot if that pane holds it (error 9 otherwise); the GLX swap barrier code
  (`glxBindSwapBarrierSGIX`) sends it.
- `RRM_MGR_SwapBuf` (ioctl 1020, `rrm.o`): **established.**
  After the caller check it stores argument word 4 into the node's per-id table at +96 for the id in word
  1 (when the id is below the table bound at +88), then calls the board driver's swap entry through slot 168
  of its operation table (`gf_OdsySchedMGRSwapBuf`) with words 1, 2, 3 and 4 and looks the pane up with `clip2pane` for word 2;
  `odsyInitiateBufferSwap` in the X module sends it.
- `RRM_SetVideoSync` (ioctl 1021, `rrm.o`): **established.**
  Calls nothing and copies nothing: it stores argument word 1 in the process record at +128 and returns
  zero; `RRM_GetVideoSync` returns that same word. The scan finds no sender.
- `RRM_GetVideoSync` (ioctl 1022, `rrm.o`): **established.**
  Writes the process record's word at +128 into argument word 1 and copies 8 bytes out;
  `glXGetVideoSyncSGI` in libGL sends it.
- `RRM_WaitVideoSync` (ioctl 1023, `rrm.o`): **established.**
  Blocks in `rrmWaitVideoSync` until the retrace counter reaches the requested residue and then copies 16
  bytes back; `glXWaitVideoSyncSGI` sends it.
- `RRM_BindRNToReadAndClip` (ioctl 1024, `rrm.o`): **established.**
  Binds a node to a read clip and a draw clip: it validates the pane buffers (`validate_my_pane_buffer`),
  unbinds the old panes (`unbind_pane`), binds the new ones (`bind_pane`), unmaps the graphics windows
  (`rrmUnMapGfx`), posts `GfxMessage` and copies the result out.
- `RRM_MapClipToSwapbufID` (ioctl 1025, `rrm.o`): **established.**
  Finds the clip's pane with `clip2pane` and copies its window id back, or minus one when there is no
  pane; used with the window ids that `RRM_ValidateSwapBuf` stored.

## Private requests (0x6f640000 + n)

Each entry starts with the table's handler. The request number is in hex after it.

- `gfP_OdsyMMattach` (ioctl 0x6f640000, `odsy_pmm.o`): **established.**
  Copies a 72-byte argument in and out; finds the graphics context of the resource node
  (`odsyGctxFromRnid`), pins and maps its software-shadow region (`odsyPinAndMapGctxSwShadowRgn`), sets up
  the context's memory sets (`OdsyInitCSet`, `OdsyAllocCSetId`) and builds a scatter group
  (`odsy_mm_sg_new`). libGLcore sends it from dozens of its routines.
- `gfP_OdsyMMalloc` (ioctl 0x6f640001, `odsy_pmm.o`): **established.**
  72 bytes in and out; looks up the set id the caller names (`OdsyLookupCSetId`), creates a memory object
  (`odsy_mm_obj_new`) and its group (`odsy_mm_grp_new`), and destroys the object again when the group
  cannot be made. Pixel-buffer allocation sends it (`odsyAllocatePbuffer`).
- `gfP_OdsyMMdealloc` (ioctl 0x6f640002, `odsy_pmm.o`): **established.**
  Looks up the set (`OdsyLookupCSetId`), destroys the object (`odsy_mm_obj_destroy`) and its group
  (`odsy_mm_grp_destroy`) and copies 72 bytes back; the inverse of the allocate request.
- `gfP_OdsyMMmakeResident` (ioctl 0x6f640003, `odsy_pmm.o`): **established.**
  Copies in 8 bytes, checks the caller (`RRM_CheckValidFault`), finds the object's entry in its set
  (`OdsyFindMatchingCSetElem`) and commits board memory for it (`odsy_mm_commit`) under a kernel timeout;
  **inferred** that this is the point where an allocated object gets its board address.
- `gfP_OdsyMMquery` (ioctl 0x6f640004, `odsy_pmm.o`): **established.**
  Copies 40 bytes in and out around a lookup of the object in its set (`OdsyFindMatchingCSetElem`); when
  the object is missing it can allocate a new set element (`kmem_alloc`, `odsy_mm_cores_new`), so the
  reply describes the object or its fresh replacement.
- `gfP_OdsyMMxfr` (ioctl 0x6f640006, `odsy_pmm.o`): **established.**
  80 bytes in and out: looks up the drawable (`odsyHashLookup`) and the memory object, issues the transfer
  through `odsyDMAOps` and optionally waits with `odsyDMAWait`; the request layout is in `docs/kernel.md`.
  `__glOdysseyReadFromPMObj` and the image-drawing routines send it.
- `gfP_OdsyGLGet` (ioctl 0x6f640007, `odsy_ctxsw.o`): **inferred.**
  Copies in a 4-byte argument, checks the caller, then arms a kernel timeout (`timeout`, `untimeout_wait`)
  around a short wait loop; the timeout routine is the driver's `odsy_glget_timeout`, which makes this the
  request that waits for the board to deliver a value that glGet asked for.
- `gfP_OdsyMakeCurrent` (ioctl 0x6f640008, `odsy_drawable.o`): **established.**
  80 bytes in and out: binds the process to a drawable (`odsyBindDrawable`), unbinding the old one first
  (`odsyUnbindDrawable`), pushes the clip (`odsyClipPush`) and attaches the process to flow control
  (`gfx_flow_attach_me`). libGLcore sends it from `__glOdysseyDriverMakeCurrent`; the layout is in
  `docs/opengl.md`.
- `gfP_OdsySetDrawBuffer` (ioctl 0x6f640009, `odsy_drawable.o`): **established.**
  Takes a 4-byte buffer selector, pushes it to the drawable (`odsyPushBufferSelect`) after attaching the
  process to flow control, and sends the settle sequence; libGLcore sends it from `__glOdysseySetDrawbuf`.
- `gfP_OdsyMMdebug` (ioctl 0x6f64000a, `odsy_pmm.o`): **established.**
  Copies in 24 bytes, walks every memory set with the cursor routines (`OdsyInitCSetCursor`,
  `OdsyNextCSetElem`) and writes each object out with `SpewObjectToUser`, then copies 4 bytes back: a
  memory-manager dump request.
- `gfP_OdsyMMwaitXfr` (ioctl 0x6f64000b, `odsy_dma.o`): **established.**
  Copies in an 8-byte operation number and calls `odsyDMAWait` in mode 1; the sender is a DMA reader that
  deferred its wait (`docs/kernel.md`).
- `gfP_OdsySaveHwShadow` (ioctl 0x6f64000c, `odsy_ctxsw.o`): **established.**
  Takes no argument; checks the caller (`RRM_CheckValidFault`), attaches to flow control if needed, arms a
  timeout (`timeout`) and itself stores the save request doubleword to the board at 0x118000, the same
  request `gf_OdsyPcxSwap` makes (`docs/registers.md`). libGLcore sends it from
  `__glOdysseyGetHardwareShadow`.
- `gfP_OdsySetClipMask` (ioctl 0x6f64000d, `odsy_clip.o`).
  Copies in 16 bytes, checks the caller (`RRM_CheckValidFault`) and validates the clip through
  `gf_OdsyValidateClip`; the four words are the clip-mask fields that libGLcore hands over from
  the context module.
- `gfP_OdsyClearBuffer` (ioctl 0x6f64000e, `odsy_clip.o`): **established.**
  Copies in 44 bytes, checks the caller, and attaches the process to flow control before the clear is
  queued (`gfx_flow_attach_me`); the sender is `__glOdysseyClear`.
- `gfP_OdsyGetDrawableGeometry` (ioctl 0x6f64000f, `odsy_clip.o`): **established.**
  Takes no input and copies 16 bytes out after `RRM_CheckValidFault`; libGLcore sends it from
  `__glOdysseyFindWindowSize` to learn the window's position and size.
- `gfP_OdsyHPgetTopology` (ioctl 0x6f640010, `odsy_hpipe.o`): **established.**
  Runs the hyperpipe discovery (`odsy_hpipe_discover`) under a spin lock and copies the 388-byte result
  out; `odsyQueryHyperpipeNetwork` in the X module sends it.
- `gfP_OdsyHPgetConfig` (ioctl 0x6f640011, `odsy_hpipe.o`): **established.**
  Copies a 524-byte configuration record in, copies the 524 bytes back out after its lookup; sent by
  `odsyQueryHyperpipeConfig`.
- `gfP_OdsyHPconfig` (ioctl 0x6f640012, `odsy_hpipe.o`): **established.**
  Copies 524 bytes in, runs discovery again and programs the compositor's tiling
  (`odsy_program_compositor_tiling`) under a spin lock, then copies the 524 bytes back; sent by
  `odsyHyperpipeConfig`.
- `gfP_OdsyHPdestroyConfig` (ioctl 0x6f640013, `odsy_hpipe.o`): **established.**
  Takes a 4-byte configuration id, removes the configuration and reprograms the compositor tiling
  (`odsy_program_compositor_tiling`); sent by `odsyDestroyHyperpipeConfig`.
- `gfP_OdsyHPbind` (ioctl 0x6f640014, `odsy_hpipe.o`): **established.**
  Copies in a 4-byte configuration id and updates the hyperpipe bookkeeping for the calling process under
  the hyperpipe spin lock; sent from `__glOdysseyBindHyperpipe`.
- `gfP_OdsyHPunbind` (ioctl 0x6f640015, `odsy_hpipe.o`): **established.**
  The inverse of the bind request: a 4-byte id, and the same bookkeeping is undone under the same lock;
  sent from `__glOdysseyUnbindHyperpipe`.
- `gfP_OdsyHPqueryAttrib` (ioctl 0x6f640016, `odsy_hpipe.o`): **established.**
  Copies in a 32-byte request and answers with copies of 32 and 4 bytes, copying a name string with
  `strcpy` into the reply; sent from the `__glOdysseyQueryHyperpipe` routines for rectangle, stereo, pixel
  average and best rectangle.
- `gfP_OdsyHPqueryBestAttrib` (ioctl 0x6f640017, `odsy_hpipe.o`): **established.**
  Copies in 32-byte requests twice around a `kmem_alloc` scratch buffer, and copies 32 bytes back; the
  best-match counterpart of the attribute query. The scan finds no sender in the shipped binaries.
- `gfP_OdsyHPsetAttrib` (ioctl 0x6f640018, `odsy_hpipe.o`): **established.**
  Copies in two 32-byte requests, writes the compositor registers (`odsyCompositorRegWrite`) for the
  chosen attribute and reprograms the tiling; sent from `__glOdysseyHyperpipeRect`,
  `__glOdysseyHyperpipeStereo` and `__glOdysseyHyperpipePixelAverage`.
- `gfP_OdsyBRDMGRsetColors` (ioctl 0x6f64001a, `odsy_brdmgr.o`): **established.**
  Copies in a 16-byte header then the colour entries into a `kmem_alloc` buffer, and writes them to the
  display FIFO in runs, waiting for FIFO level with `odsy_poll_dfifo_level`; `odsyLoadCmap` and
  `odsyLoadGamma0` send it.
- `gfP_OdsyBRDMGRconfigFb` (ioctl 0x6f64001b, `odsy_brdmgr.o`): **established.**
  52 bytes in and out around `odsyConfigFb`, which writes the frame-buffer base, pitch, depth and size
  registers (`docs/display.md`); `odsySetFBConfig` sends it.
- `gfP_OdsyBRDMGRcursor` (ioctl 0x6f64001c, `odsy_brdmgr.o`): **established.**
  Calls `gf_OdsyPositionCursor` for the position request and takes four argument shapes of 40, 60, 512 and
  256 bytes for the cursor position, control word, glyph and colour table, and writes each to the display
  FIFO under its lock; the layouts are in `docs/display.md`.
- `gfP_OdsyBRDMGRsetDpyMode` (ioctl 0x6f64001d, `odsy_brdmgr.o`): **established.**
  Copies in an 8-byte request and calls `gf_OdsySetDisplayMode`, which writes the per-window display-mode
  word into the display FIFO and the buffer select into the 0x10c4 and 0x10cc registers; `odsyDisplayInit`
  sends it.
- `gfP_OdsyBRDMGRsetBlanking` (ioctl 0x6f64001e, `odsy_brdmgr.o`): **established.**
  A 4-byte mode copied in and passed to `odsyBlankScreen`, which clears or sets the enable and DAC bits of
  the display registers; sent from the X module's `odsyBlankScreen`.
- `gfP_OdsyBRDMGRloadTimingTable` (ioctl 0x6f64001f, `odsy_brdmgr.o`): **established.**
  Copies in the 320-byte timing structure and the frame and line tables (`odsy_copyin_frame_line_tables`)
  and calls `odsyLoadTimingTable`, which programs the clock, generator and scan-out registers
  (`docs/display.md`).
- `gfP_OdsyBRDMGRVTGcontrol` (ioctl 0x6f640020, `odsy_brdmgr.o`): **established.**
  Copies in 8 bytes and writes the video timing generator's control and enable words through the display
  FIFO, waiting for FIFO level first; sent from `odsyLoadTimingTable` and `odsyInitDefaultHW` in the X
  module.
- `gfP_OdsyBRDMGRi2ccmd` (ioctl 0x6f640021, `odsy_brdmgr.o`): **established.**
  Copies in a 48-byte command and passes it to `odsy_i2c_cmd`, which runs the transaction on the board's
  two-wire ports; the X module's monitor-protocol and PLL code sends it.
- `gfP_OdsyBRDMGRSetDACGain` (ioctl 0x6f640023, `odsy_brdmgr.o`): **established.**
  A 4-byte request passed to `odsySetDACGain`, which sets or clears bit 1 of the display chip's DAC
  register (0x26c0, `docs/pbj.md`); sent from `odsySetCntrl`.
- `gfP_OdsyLoadCompositorTiming` (ioctl 0x6f640024, `odsy_compositor.o`): **established.**
  The function, at offset 0x0 and 8 bytes long, is two instructions, unlike `gfP_OdsyCompositorRegAccess` beside it: it returns zero without reading its
  arguments, so the request succeeds and does nothing on this build.
- `gfP_OdsyCompositorRegAccess` (ioctl 0x6f640025, `odsy_compositor.o`): **established.**
  A 12-byte argument is copied in, and either `odsyCompositorRegRead` or `odsyCompositorRegWrite` runs on
  the compositor board's registers, with 12 bytes copied back on a read; `ody_comp_reg_access` in the
  compositor diagnostic sends it.
- `gfP_OdsyI2CPassthrough` (ioctl 0x6f640026, `odsy_compositor.o`): **established.**
  Copies in 8 bytes and, under the i2c mutex, performs a DDC register read (`odsy_i2cDDCRegRead`) or PLL
  register writes (`odsy_i2cPLLRegWrite`) on the compositor's port for the caller.
- `gfP_OdsySetNicinfo` (ioctl 0x6f640027, `odsy_compositor.o`): **established.**
  Copies in 80 bytes and stores their words into the board record starting at +712, a block of compositor
  board identity data; `odsySetupCompositorInfo` sends it.
- `gfP_OdsyPbufAssoc` (ioctl 0x6f64002a, `odsy_drawable.o`): **established.**
  Copies in 8 bytes (drawable id and memory-set id), looks up both (`odsyHashLookup`, `OdsyLookupCSetId`)
  and creates the drawable (`odsyCreateDrawable`) that a pixel buffer renders into; `odsyAllocatePbuffer`
  sends it. The record layout is in `docs/opengl.md`.
- `gfP_OdsyPbufDeassoc` (ioctl 0x6f64002b, `odsy_drawable.o`): **established.**
  Copies 8 bytes in and out around `odsyHashRemove` and `odsyDestroyDrawable`, undoing the association of
  a pixel buffer with its drawable; sent by `odsyDeallocatePbuffer`.
- `gfP_OdsyDIAGdma` (ioctl 0x6f64002e, `odsy_dma.o`): **established.**
  Reads a 48-byte argument, builds a region (`odsy_NewDmaRegion`), kicks a transfer
  (`odsy_DmaRegion_DoTransfer`) and polls with `DmaFinishedPollDelay`, tearing the board down on timeout;
  the loop-back test of `docs/kernel.md`.
- `gfP_OdsyDIAGallocScanbuf` (ioctl 0x6f64002f, `odsy_diag.o`): **established.**
  Copies in 24 bytes, allocates a kernel buffer (`kmem_alloc`), maps its pages for the caller
  (`odsyMapPages`), flushes the cache (`dki_dcache_wb`) and copies a 24-byte result out.
- `gfP_OdsyDIAGfreeScanbuf` (ioctl 0x6f640030, `odsy_diag.o`): **established.**
  Takes no argument: under the diagnostic mutex it unmaps the pages (`odsyUnmapPages`) and frees the
  buffer (`kmem_free`) that the allocate request made.
- `gfP_OdsyDIAGgetShadowPtrs` (ioctl 0x6f640031, `odsy_diag.o`): **established.**
  80 bytes in and out around calls to `odsyMapPages`; **inferred** from the name that the mapped pages are
  the board's hardware-shadow and software-shadow regions and that their addresses are what is copied
  back.
- `gfP_OdsyDIAGreleaseShadowPtrs` (ioctl 0x6f640032, `odsy_diag.o`): **established.**
  No argument; unmaps the two shadow regions (`odsyUnmapPages`) under the diagnostic mutex.
- `gfP_OdsyPerfStat` (ioctl 0x6f640033, `odsy_diag.o`): **established.**
  Copies in 24 bytes whose first word is a request mask (create, write control, destroy) and drives
  `odsyInitPfRgn` and `odsyDestroyPfRgn`; the control register layout is at 0x402c in `docs/registers.md`.
- `gfP_OdsyDIAGreset` (ioctl 0x6f640034, `odsy_diag.o`): **established.**
  No argument: it registers the board (`htp_register_board`), resets it (`odsyReset`) and reinitialises
  the display back end (`odsyInitDBE`), the only request that runs the full reset path from user space.
- `gfP_OdsyInvalidIoctl` (`odsy.o`): **established.**
  One `cmn_err` call and an error return. The table slots for private numbers 5, 25, 34, 40, 41, 44 and 45
  all point here, so those seven requests are refused.
