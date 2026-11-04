# Kernel driver functions by object and role

Release IRIX 6.5.30m, the objects of `odyssey.a` and `tport.a` for IP30 and IP35 (`odsy_kernel/`, `odsy_kernel_ip35/`; the two sets share these function names). Disassembly is under `odsy_kernel/disasm/<object>/`.

Labels: the function names and their objects are **established** from the symbol tables. The role of an object is **inferred** from the names in it, and the lists below say nothing about what any one function does: a name there is a name only. Functions read in full are in `docs/kernel.md`, `docs/display.md`, `docs/buzz.md` and `docs/opengl.md`, and in the last section here. Each list is the set of functions of one object.

## Functions

`odsy.o`: driver entry points (information, private ioctl dispatch, the invalid-ioctl stub) and the lookup of a graphics context from a resource-node id.

`gfP_OdsyInvalidIoctl`, `gf_OdsyInfo`, `gf_OdsyPrivate`, `odsyGctxFromRnid`

`odsy_adt.o`: allocation tables: colour-set ids, 32 KB slots, and the hash table keyed by identifier.

`NewChunkNode`, `OdsyAlloc32kSlot`, `OdsyAllocCSetId`, `OdsyAllocSpecificCSetId`, `OdsyDeallocCSetId`, `OdsyDestroyCSet`, `OdsyFindMatchingCSetElem`, `OdsyFree32kSlot`, `OdsyInit32kSlotMask`, `OdsyInitCSet`, `OdsyInitCSetCursor`, `OdsyLookupCSetId`, `OdsyNextCSetElem`, `odsyHashAlloc`, `odsyHashDealloc`, `odsyHashInsert`, `odsyHashLookup`, `odsyHashRemove`

`odsy_attach.o`: device attach and detach, and register matching at attach.

`gf_OdsyAttach`, `gf_OdsyDetach`, `odsy_regmatch`

`odsy_brdmgr.o`: board manager: DAC gain and registers, video timing generator enable, display mode, blanking, frame-buffer configuration, I2C commands, DCD2 register load.

`gfP_OdsyBRDMGRSetDACGain`, `gfP_OdsyBRDMGRVTGcontrol`, `gfP_OdsyBRDMGRconfigFb`, `gfP_OdsyBRDMGRcursor`, `gfP_OdsyBRDMGRenableVTG`, `gfP_OdsyBRDMGRi2ccmd`, `gfP_OdsyBRDMGRloadTimingTable`, `gfP_OdsyBRDMGRsetBlanking`, `gfP_OdsyBRDMGRsetColors`, `gfP_OdsyBRDMGRsetDpyMode`, `gf_OdsyPositionCursor`, `odsyBlankScreen`, `odsyConfigFb`, `odsyLoadTimingTable`, `odsyProbeFb`, `odsySetDACGain`, `odsy_LoadDCD2Regs`, `odsy_copyin_frame_line_tables`, `odsy_initDCD2DAC`, `odsy_reconfigDCD2FPLD`, `odsy_restoreDCD2FPGA`, `setDACreg`

`odsy_clip.o`: drawable geometry, clip mask and bank validation.

`gfP_OdsyClearBuffer`, `gfP_OdsyGetDrawableGeometry`, `gfP_OdsySetClipMask`, `gf_OdsySetNullClip`, `gf_OdsyValidateBanks`, `gf_OdsyValidateClip`, `odsyClipMask`, `odsyClipPush`

`odsy_compositor.o`: compositor register access, I2C pass-through and NIC information (the timing-load entry is an empty stub, see the last section).

`gfP_OdsyCompositorRegAccess`, `gfP_OdsyI2CPassthrough`, `gfP_OdsyLoadCompositorTiming`, `gfP_OdsySetNicinfo`, `odsyCompositorRegRead`, `odsyCompositorRegWrite`, `odsy_ProbeCompositor`, `odsy_ReadCompositorNic`

`odsy_ctxsw.o`: graphics context switch and state restore helpers.

`gfP_OdsyGLGet`, `gfP_OdsySaveHwShadow`, `gf_OdsyPcxSwap`, `gf_OdsyPcxSwitch`, `odsyResetHwShadow`, `odsyRestartContext`, `odsyRestoreGfe`, `odsyRestorePIOPixel`, `odsyRestoreRaster`, `odsyRestoreVB`, `odsyRestoreVertex`, `odsyRestoreXform`, `odsySetProgram`, `odsy_ctxsw_timeout`, `odsy_glget_timeout`, `restoreLineLoop`, `restoreLineStrip`, `restoreLines`, `restorePoints`, `restorePolygon`, `restoreQuadStrip`, `restoreQuads`, `restoreRect`, `restoreTriFan`, `restoreTriStrip`, `restoreTriangles`

`odsy_ddc.o`: monitor probing: DDC and EDID reads over I2C, the 2AB bus commands and checksum and validity checks.

`odsy_2abCmdWrapper`, `odsy_2abGetReply`, `odsy_2abSendCmd`, `odsy_EdidCksum`, `odsy_Probe2AB`, `odsy_copyin_cmd`, `odsy_i2c2abAssignAddr`, `odsy_i2c2abAttention`, `odsy_i2c2abIDReply`, `odsy_i2c2abIDRequest`, `odsy_i2c2abPresencechk`, `odsy_i2c2abReset`, `odsy_i2cDDCRegRead`, `odsy_i2cFixupAfterErr`, `odsy_i2cPLLRegRead`, `odsy_i2cPLLRegWrite`, `odsy_i2cPLLSeqRegRead`, `odsy_i2cPLLSeqRegWrite`, `odsy_i2cProbe2ab`, `odsy_i2cProbe2b`, `odsy_i2cValidEdid`, `odsy_i2c_cmd`, `odsy_monitor_type`, `odsy_validate_ddc_data`, `sgiEdid`

`odsy_ddrn.o`: DDRN creation and teardown (gf_OdsyCreateDDRN, gf_OdsyDestroyDDRN); what DDRN abbreviates: **unknown**.

`gf_OdsyCreateDDRN`, `gf_OdsyDestroyDDRN`, `odsyInitDDRNs`

`odsy_denali.o`: probe of a Denali channel.

`odsy_ProbeDenali`, `odsy_probeDenaliChannel`

`odsy_diag.o`: diagnostic interface: scan buffers and shadow pointer access, reset.

`gfP_OdsyDIAGallocScanbuf`, `gfP_OdsyDIAGfreeScanbuf`, `gfP_OdsyDIAGgetShadowPtrs`, `gfP_OdsyDIAGreleaseShadowPtrs`, `gfP_OdsyDIAGreset`, `gfP_OdsyPerfStat`, `odsyDestroyPfRgn`, `odsyInitPfRgn`

`odsy_dma.o`: DMA regions (create, pin, unpin, delete), running a list of DMA operations, the poll timer and fetch-wait list release.

`ConstructTftchWarList`, `DmaFinishedPollDelay`, `ReleaseTftchWarList`, `generatePageTable`, `gfP_OdsyDIAGdma`, `gfP_OdsyMMwaitXfr`, `odsyDMADone`, `odsyDMAFinish`, `odsyDMAIrptWakeup`, `odsyDMAOp`, `odsyDMAOps`, `odsyDMAWait`, `odsyDMAWakeup`, `odsy_DeleteDmaRegion`, `odsy_DmaRegion_BuildXlatTbl`, `odsy_DmaRegion_DoTransfer`, `odsy_DmaRegion_Pin`, `odsy_DmaRegion_UnPin`, `odsy_NewDmaRegion`, `odsy_dma_poll_timer`, `odsy_dmawait_harmless_timeout`, `odsy_dmawait_timeout`

`odsy_drawable.o`: drawable creation, destruction, lookup and pbuffer de-association.

`gfP_OdsyMakeCurrent`, `gfP_OdsyPbufAssoc`, `gfP_OdsyPbufDeassoc`, `gfP_OdsySetDrawBuffer`, `odsyBindDrawable`, `odsyCreateDrawable`, `odsyDestroyDrawable`, `odsyFindDrawable`, `odsyInitDrawables`, `odsyPushBufferSelect`, `odsyUnbindDrawable`

`odsy_dvi.o`: DVI transmitter register reads over I2C.

`odsy_dviFPGARegRead`, `odsy_dviFPGARegWrite`, `odsy_i2cXmitRegRead`, `odsy_loadDVIFPGA`, `odsy_readDVIRegs`, `odsy_read_XmitRegs`, `odsy_setDVIFPGA`, `odsy_setDVIRegs`, `odsy_write_XmitRegs`

`odsy_flow.o`: FIFO flow control: credit waits, high and low water-mark interrupts, FIFO timeout and poll, and multi-pipe attach bookkeeping.

`gfx_flow_clean_up_other_gfxp`, `gfx_flow_pipe_head`, `odsyFifoTimeout`, `odsyFifoTimer`, `odsyHiwaterInterrupt`, `odsyLowaterInterrupt`, `odsy_flow_am_i_attached`, `odsy_flow_await_returned_credits`, `odsy_poll_dfifo_level`

`odsy_hpipe.o`: hyperpipe: configuration, topology, attributes, bind and unbind, and USB compositor tiling and register access.

`bdata_from_pipename`, `gfP_OdsyHPbind`, `gfP_OdsyHPconfig`, `gfP_OdsyHPdestroyConfig`, `gfP_OdsyHPgetConfig`, `gfP_OdsyHPgetTopology`, `gfP_OdsyHPqueryAttrib`, `gfP_OdsyHPqueryBestAttrib`, `gfP_OdsyHPsetAttrib`, `gfP_OdsyHPunbind`, `odsy_hpipe_cleanup`, `odsy_hpipe_discover`, `odsy_hpipe_invalidate`, `odsy_hpipe_sema_init`, `odsy_program_compositor_tiling`, `odsy_usb_comp_readwrite_register`, `odsy_usb_comp_update_tiles`, `usb_comp_readwrite_register`, `usb_comp_update_tiles`

`odsy_i2c.o`: bit-level I2C: start, stop, send and receive bytes, acknowledge, and Denali, Rainier and compositor register access.

`odsy_i2cReset`, `odsy_i2c_becomeSlaveRecv`, `odsy_i2c_busy_high_loop`, `odsy_i2c_init_port_handle`, `odsy_i2c_long_recvbyte`, `odsy_i2c_read_comp_reg4`, `odsy_i2c_read_denali`, `odsy_i2c_read_denali_byte`, `odsy_i2c_read_rainier_byte`, `odsy_i2c_recv_1byte`, `odsy_i2c_recv_ack`, `odsy_i2c_sendbyte`, `odsy_i2c_short_recvbyte`, `odsy_i2c_slave_recvbyte`, `odsy_i2c_start`, `odsy_i2c_stop`, `odsy_i2c_write_comp_reg4`, `odsy_i2c_write_denali`, `odsy_i2c_write_denali_byte`, `odsy_i2c_xfer_done_loop`

`odsy_init.o`: pipe discovery and board pointer checks, early init timeouts and flow-control attach.

`find_odsypipe`, `gf_OdsyInitialize`, `gf_OdsyStart`, `odsyCheckBoardPointer`, `odsyCheckBoardPointers`, `odsyDisableInterrupts`, `odsyFindBoardAddr`, `odsyGatherInfo`, `odsyInitBoardGfx`, `odsyInitCfifo`, `odsyInitDBE`, `odsyInitDMA`, `odsyInitHwWrRgn`, `odsyInitInterrupts`, `odsyInitIntr`, `odsyLLPReset`, `odsyLowLevelReset`, `odsyPipeNrFromBase`, `odsyPrintRegs`, `odsyReset`, `odsyZeroOut`, `odsy_DCDResetDone`, `odsy_attach`, `odsy_earlyinit`, `odsy_earlyinit_timeout`, `odsy_fc_attach`, `odsy_fc_detach`, `odsy_init`, `odsy_init_ddrncount_timeout`, `odsy_set_gfx_mfg_nic_name`, `odsy_teardown`, `odsy_usdelay`

`odsy_intr.o`: interrupt handlers: DMA, flags, genlock, swap-sync and crosstalk error.

`odsyDmaInterrupt`, `odsyFlagInterrupt`, `odsyGenlockInterrupt`, `odsySsyncInterrupt`, `odsyXtErrorInterrupt`

`odsy_map.o`: mapping and pinning of board and shadow regions into the user process.

`gf_OdsyInvalTLB`, `gf_OdsyMapGfx`, `gf_OdsyUnMapGfx`, `odsyMapPages`, `odsyPinAndMapASRegions`, `odsyPinAndMapGctxSwShadowRgn`, `odsyPinAndMapPfStatRegions`, `odsyUnmap`, `odsyUnmapPages`, `odsyUnpinAndUnmapASRegions`, `odsyUnpinAndUnmapGctxRegions`, `odsyUnpinAndUnmapPfStatRegions`, `odsyUnpinAndUnmapSGRegions`

`odsy_pmm.o`: pixel-memory manager: allocation, residency, extents, swapping and kernel-to-user mapping.

`CoresidRangeFinder`, `CoresidSubRangeFinder`, `MapKernelRegionIntoUserSpace`, `SetupDMAParams`, `SpewObjectToUser`, `gfP_OdsyMMalloc`, `gfP_OdsyMMattach`, `gfP_OdsyMMdealloc`, `gfP_OdsyMMdebug`, `gfP_OdsyMMmakeResident`, `gfP_OdsyMMquery`, `gfP_OdsyMMxfr`, `mm_as_remove_sg`, `mm_check_cond_list_cursor`, `mm_check_enode`, `mm_get_cond_list_cursor`, `mm_get_extent`, `mm_init_freespace`, `mm_okay_to_swap_in`, `mm_release_extent`, `mm_rewind_cond_list_cursor`, `mm_set_all_cond_list_cursor`, `mm_set_cond_list_cursor`, `mm_shake`, `odsyInitMM`, `odsyMMdetach`, `odsyMMinit`, `odsyMMvalidatePcxSwap`, `odsy_mm_B_okay`, `odsy_mm_B_warn`, `odsy_mm_B_warn1`, `odsy_mm_B_warn2`, `odsy_mm_check_for_mutations`, `odsy_mm_commit`, `odsy_mm_cores_destroy`, `odsy_mm_cores_exists`, `odsy_mm_cores_new`, `odsy_mm_cores_obj_in`, `odsy_mm_ctxsw_timeout`, `odsy_mm_decommit`, `odsy_mm_find_current_as`, `odsy_mm_grp_destroy`, `odsy_mm_grp_new`, `odsy_mm_insert_pbuffer_group_into_list`, `odsy_mm_jettison_freerun_backing_store`, `odsy_mm_jettison_freerun_bs`, `odsy_mm_mkres_timeout`, `odsy_mm_obj_alloc_bs`, `odsy_mm_obj_destroy`, `odsy_mm_obj_free_bs`, `odsy_mm_obj_new`, `odsy_mm_obj_xfr_backing_store`, `odsy_mm_obj_xfr_bs`, `odsy_mm_release`, `odsy_mm_release_pbuffer`, `odsy_mm_release_scratch`, `odsy_mm_release_texture`, `odsy_mm_remove_pbuffer_group_from_list`, `odsy_mm_reserve`, `odsy_mm_reserve_pbuffer`, `odsy_mm_reserve_scratch`, `odsy_mm_reserve_texture`, `odsy_mm_sg_add_grp`, `odsy_mm_sg_destroy`, `odsy_mm_sg_insert_detail_texture_group_into_list`, `odsy_mm_sg_insert_image_texture_group_into_list`, `odsy_mm_sg_insert_texture_group_into_list`, `odsy_mm_sg_new`, `odsy_mm_sg_remove_detail_texture_group_from_list`, `odsy_mm_sg_remove_gctx`, `odsy_mm_sg_remove_grp`, `odsy_mm_sg_remove_image_texture_group_from_list`, `odsy_mm_sg_remove_texture_group_from_list`

`odsy_rainier.o`: Rainier chip register read and write and board id.

`odsy_ProbeRainier`, `odsy_RainierRegRead`, `odsy_RainierRegWrite`, `odsy_rainier_read_board_id`, `odsy_rainier_read_rcx_reg`, `odsy_rainier_write_rcx_reg`

`odsy_retrace.o`: retrace-event scheduling and swap scheduling, and frame-rate scheduler install.

`gf_OdsyFrsInstall`, `gf_OdsyFrsUninstall`, `gf_OdsySchedMGRSwapBuf`, `gf_OdsySchedRetraceEvent`, `gf_OdsySchedSwapBuf`, `gf_OdsySetDisplayMode`, `gf_OdsyUnSchedRetraceEvent`, `gf_OdsyUnSchedSwapBuf`, `odsyInitRetrace`, `odsyRetraceHandler`, `odsySwapBuffer`, `odsySwap_softsync_intr`, `odsyValidateBuffer`

`odsy_sched.o`: driver exit, suspend, resume and graphics semaphore release.

`gf_OdsyExit`, `gf_OdsyReleaseGfxSema`, `gf_OdsyResume`, `gf_OdsySuspend`, `odsyDiagExit`

`odsy_tport.o`: text port: lock initialisation, descriptor lookup, colour move and unblank.

`ODSY_SET_GC`, `odsy_cmov2i`, `odsy_color`, `odsy_drawbitmap`, `odsy_getdesc`, `odsy_mapcolor`, `odsy_pnt2i`, `odsy_sboxfi`, `odsy_tpinit`, `odsy_tport_lock_init`, `odsy_unblank`

`odsy_ucode.o`: microcode download from a caller's image (ucode/buzz_isa.md, "Loading").

`gf_OdsyDownload`, `odsyDownloadUcode`

`tport.o`: the text-port STREAMS driver: open, close, read, write, queue service, GUI operations and console write.

`gfx_earlyinit`, `tp_close`, `tp_dogui`, `tp_flushr`, `tp_guiop`, `tp_gwinsize`, `tp_init`, `tp_initlock`, `tp_open`, `tp_rcv`, `tp_rcv_qenable`, `tp_rsrv`, `tp_rx`, `tp_start`, `tp_stop`, `tp_tx`, `tp_unblank`, `tp_wput`, `tp_write`, `tp_xmit`, `tp_xmit_qenable`, `tpcons_write`

## Functions read in full

Release IRIX 6.5.30m, `odyssey.a` for IP30 (the IP35 copy has the same size for the first of these). **established** from the disassembly of each function; the field offsets are those of the structure each function receives.

- `gfP_OdsyLoadCompositorTiming` (`odsy_compositor.o`, offset 0, 8 bytes) is two instructions: it returns zero and reads none of its arguments. It is the handler of private ioctl 0x6f640024, so that request succeeds and does nothing in the kernel. An earlier version of this chapter said the object loads timing; that was wrong.
- `gfP_OdsyInvalidIoctl` (`odsy.o`, 0x60, 36 bytes) writes one console message at severity 5 and returns 22, the invalid-argument error.
- `odsy_init_ddrncount_timeout` (`usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x1124, 56 bytes) is a timeout callback: it writes one console message at severity 4 and posts the semaphore at offset 696 of the structure it was given.
- `odsy_DeleteDmaRegion` (`odsy_dma.o`, 0x14c, 240 bytes) tears down an 88-byte DMA region structure. When the flag word at +52 is set it calls `unuseracc` on the user range whose start is at +32 and length at +40, with flag value 272. When the page array at +0 is set it overwrites the array with the byte 0x81 for the length held at +8, then frees it. It then overwrites the 88-byte structure with the byte 0x83 and frees it.
- `odsyDMAOps` (`odsy_dma.o`, 0xb34, 4072 bytes) is not a release function: it calls `odsyDMAOp` four times and `odsyDMAWait` twice, calls `useracc` once and `unuseracc` four times, and writes two console messages. **inferred** that it runs a list of DMA operations from user space; what the list entries contain: **unknown** until the operation structure is read.
