# X module (`odyssey.so`) functions by role

Release IRIX 6.5.30m, `usr/lib/X11/dyDDX/odyssey.so`. The disassembly is `ddx/asm/odyssey/`, split by function-name prefix by `retools/tools/odsy/extract_odsy_ddx.py`. The module carries the board driver (`odsy*`), the resource-manager client (`rrm*`) and large parts of the MIT X sample server (`mi*`, `mfb*`, `cfb*`) plus an SGI frame-buffer layer (`nfb*`), the video-format symbol database and a copy of the audio library.

Labels: every function name is **established** from the module's symbol table; the roles are **inferred** from the names, since the module's sample-server code is the public X11 code. The lists name functions and say nothing about what any one of them does, except for the functions read in full in `opengl/opengl.md`, `display/README.md` and the audio paragraph below.

## Functions

### Driver (`odsy`)

Functions named `odsy*`, the board driver of the X module (`ddx/asm/odyssey/odsy/odsy.s`). The role is **inferred** from each name; functions read in full are in `opengl/opengl.md` and `display/README.md`.

video timing, monitor and format files.

`odsyInitMonitorProtocol..CD`, `odsyGetDimensionsFromTTFile`, `odsyListFormatsInComb..IB`, `odsyMonitorCommand..BD`, `odsyReadTTfilename`, `odsyLdFmtByName..OC`, `odsyCheckCorona`, `odsyLstVideoFmtCombs..BC`, `odsyValidateReservedMode`, `odsyDefaultTTExists`, `odsyWriteTTfilename`, `odsyReadVideoFormat..MB`, `odsyValidateBoardConfig`, `odsyLstVideoFmt`, `odsyLoadTimingTable..CC`, `odsyLoadCompositorTiming..LC`, `odsyProbe`, `odsyQryMonitor`

hyperpipe, pbuffers and buffer swap.

`odsyValidateSwapbuf`, `odsyDestroyHyperpipeConfig`, `odsyDeallocatePbuffer`, `odsyGenlockHandler..FD`, `odsyQueryMaxSwapBarrier`, `odsyInitiateBufferSwap`, `odsyQueryHyperpipeConfig`, `odsyQueryHyperpipeNetwork`, `odsyAllocatePbuffer`, `odsyHyperpipeConfig`

compositor and cross-screen video context.

`odsyProgramCompositors..GC`, `odsyAttachXvc`, `odsyInitDIDState`, `odsyDetachXvc`, `odsySetupCompositorInfo`, `odsyChangeDIDCmap`, `odsyQueryCompositors..DC`, `odsyCompositorConfigurePLL..MC`, `odsyCmpIoctl`, `odsySetCompositorTiling..PC`, `odsyCompositorExternalWrite..KC`

cursor.

`odsyRealizeCursor`, `odsySetCursorColor..CB`, `odsyInstallCursor`, `odsyCursorInit`, `odsyDisplayCursor`, `odsyCursorOn`

colour maps and gamma.

`odsyStoreGamma16`, `odsyInitGammaMap..ED`, `odsyQueryGammaColors`, `odsyQryPltParam`, `odsyLoadGamma0`, `odsyStoreFakeColors`, `odsyInstallFakeColormap`, `odsyCreateColormap`, `odsyStoreCompGamma`, `odsySetPltParam`, `odsyInstallColormap`, `odsyBlackCmap`, `odsyStoreGamma8`, `odsyStoreColors`, `odsyLoadCmap`, `odsyGammaFit`, `odsySetColor`

glyph and text drawing.

`odsyPolyGlyphBltTE6`, `odsyPolyGlyphBltTE8`, `odsyPolyGlyphBltTE9`, `odsyImageGlyphBlt`, `odsyPolyGlyphBlt`, `odsyImageGlyphBltTE6`, `odsyImageGlyphBltTE8`, `odsyImageGlyphBltTE9`

lines, arcs, polygons and spans.

`odsyPolyFillRectSolid`, `odsyDrawSolidRectsSingleBuffer..HE`, `odsySegmentSD`, `odsySegmentSS`, `odsyZeroPolyArc`, `odsyFillPolygonSolid`, `odsyLineSD`, `odsyLineSS`, `odsyPolyArc`, `odsyPolyFillRectStippled`, `odsyPolyPnt`, `odsySolidSpans`, `odsySolidFillSpans`, `odsyZeroArcPts..FE`, `odsyPolyFillRectStippled32x32`, `odsyFillPolygon`, `odsyDrawSolidRects`, `odsyTileRects`, `odsyStippledFS`, `odsyDrawPoints`, `odsyClearPlanes`, `odsyWideDash`, `odsyFillPolygonStippled`

copy and image transfer.

`odsyDrawMonoPixels`, `odsyReadImage`, `odsyDrawImage`, `odsyReadConvertPixels`, `odsyDrawImageSingleBuffer..J`, `odsyDrawSmallCI8Image..I`, `odsyDrawImagePIO..G`, `odsyGrowBitmap`, `odsyDrawImageDMA..H`, `odsyCopyRectBody`, `odsyCopyRectSingleBuffer..F`, `odsyReadDeepImage..GE`, `odsyDrawOpaqueMonoImage`, `odsyCopyRect`, `odsyReadPFDArgs..LD`, `odsyCopySDRAM..AB`, `odsyCopyWindow`, `odsyDrawMonoImage`

validation of windows, GCs and visuals.

`odsyValidateReducedGC`, `odsyValidateWindowPriv`, `odsyValidateWindowGC`, `odsyValidateMode`, `odsyValidateVisual`, `odsyValidateClip`

screen set-up, tear-down and allocation.

`odsyPostInit`, `odsyCloseScreen`, `odsyInit`, `odsyInitRootWindow`, `odsyInitDefaultHW..N`, `odsyKernInit..O`, `odsyInitWindowType`, `odsyResetProc`, `odsyCanLoadOptionHW..LB`, `odsyInitAllocator`, `odsyDisplayInit`, `odsyLoadDenali..NC`, `odsyLoadAndFree`

other driver entry points.

`odsySetChannelInputRectangle..IC`, `odsyBuildFmtList..NB`, `odsyBuildCmbList..OB`, `odsyWakeupHandler..M`, `odsyScanAudioInventory..K`, `odsyQryExtSyncNm..HD`, `odsyQueryBestSize`, `odsyFastZeroCircle..EE`, `odsySetFBConfig..KD`, `odsyPowerSaver..IE`, `odsyBuildFmtInfoArray..HB`, `odsySetExternalLock..GD`, `odsyNewGCOps..E`, `odsyBlockHandler..L`, `odsyEnumDir..FB`, `odsySetScrnGlock`, `odsySetCntrl..ID`, `odsyLdCombination..AD`, `odsyMakeFileName..EB`, `odsyBell`, `odsyGetSampleRate..AE`, `odsyQryCntrl..JD`, `odsyFreeFmtInfoArray..GB`, `odsyKeyClick`, `odsyBlankScreen`, `odsyQueryBestChannelRectangle..HC`, `odsyDoBitBltSS..BB`


### Resource-manager client (`rrm`)

Window, clip and drawable bookkeeping that talks to the kernel resource manager (`rrm*`).

window and drawable lifecycle.

`rrmMapWindow`, `rrmDestroyDrawable`, `rrmUnmapWindow`, `rrmInvalidateWindowTree..PF`, `rrmCreateWindow`, `rrmDoubleBufferWindow`, `rrmUndoubleBufferWindow`, `rrmDestroyWindow`, `rrmCreateDefColormap`, `rrmCopyWindow`, `rrmInitRootWindow..AG`

clip and render-node binding.

`rrmNeedCID`, `rrmUnbindRNFromClip`, `rrmValidateCID`, `rrmDisposeClip`, `rrmInvalidate`, `rrmValidateTree`, `rrmOGLBindRNToClip`, `rrmOGLUnbindRNFromClip`, `rrmBindRNToClip`

queue, handlers and colormap.

`rrmWakeupHandler..PE`, `rrmProcessRequestQueue`, `rrmWorkProc`, `rrmBlockHandler..OE`


### Symbol database and audio library (`other`)

The video-format symbol database reader (`SDB*`) and a copy of the audio library (`AL*`, `_AL*`) linked into the module, plus the module's window-identifier and swap bookkeeping with doubly-underscored names.

symbol database (SDB).

`SDBaddNewArraySymbol`, `SDBaddNewScalarSymbol`, `SDBcloseNewDatabase`, `SDBopenNewDatabase`, `SDBsetHeader`, `SDBgetSymbolDataAddress`, `SDBgetSymbolDatatype`, `SDBgetSymbolElementCount`, `SDBgetSymbolValueArray`, `SDBgetSymbolValueScalar`, `SDBcloseReadDatabase`, `SDBreadOpenDatabase`, `SDBprocessOneUserMethod`, `SDBinitializeSymbolTableEntries`, `SDBsetupMemoryInterface`

audio library (AL) (part 1).

`ALgetqueuesize`, `ALsetqueuesize`, `ALreadsamps`, `ALwritesamps`, `ALgetfillable`, `ALgetfilled`, `ALgetfillpoint`, `ALsetfillpoint`, `ALnewconfig`, `ALfreeconfig`, `ALsetconfig`, `ALgetconfig`, `ALsetwidth`, `ALgetwidth`, `ALsetsampfmt`, `ALgetsampfmt`, `ALsetchannels`, `ALgetchannels`, `ALsetfloatmax`, `ALgetfloatmax`, `ALcloseport`, `ALopenport`, `ALgetfd`, `ALgetframenumber`, `ALgetframetime`, `ALgetparams`, `ALsetparams`, `ALseterrorhandler`, `_AL2assignfuncs`, `_AL2recalcscalefactors`, `_AL2WriteMonoToStereo_8`, `_AL2WriteMonoToStereo_16`, `_AL2WriteMonoToStereo_24`, `_AL2WriteMonoToStereo_f`, `_AL2WriteMonoToStereo_d`, `_AL2ReadMonoFromStereo_8`, `_AL2ReadMonoFromStereo_16`, `_AL2ReadMonoFromStereo_24`, `_AL2ReadMonoFromStereo_f`, `_AL2ReadMonoFromStereo_d`

audio library (AL) (part 2).

`_AL2WriteNToN_8`, `_AL2WriteNToN_16`, `_AL2WriteNToN_AES`, `_AL2WriteNToN_ADAT`, `_AL2WriteNToN_24`, `_AL2WriteNToN_f`, `_AL2WriteNToN_fnl`, `_AL2WriteNToN_d`, `_AL2WriteNToN_dnl`, `_AL2ReadNFromN_8`, `_AL2ReadNFromN_16`, `_AL2ReadNFromN_AES`, `_AL2ReadNFromN_ADAT`, `_AL2ReadNFromN_24`, `_AL2ReadNFromN_f`, `_AL2ReadNFromN_d`, `_AL2Write4ChanTo2Chan_8`, `_AL2Write4ChanTo2Chan_16`, `_AL2Write4ChanTo2Chan_24`, `_AL2Write4ChanTo2Chan_f`, `_AL2Write4ChanTo2Chan_d`, `_AL2Read4ChanFromStereo_24`, `_AL2Read4ChanFromStereo_16`, `_AL2Read4ChanFromStereo_8`, `_AL2Read4ChanFromStereo_f`, `_AL2Read4ChanFromStereo_d`, `_AL2WriteNToN_ADATv`, `_AL2WriteNToN_AESv`, `_AL2WriteNToN_24v`, `_AL2WriteNToN_16v`, `_AL2WriteNToN_8v`, `_AL2WriteNToN_fv`, `_AL2WriteNToN_dv`, `_AL2WriteNToN_fvnl`, `_AL2WriteNToN_dvnl`, `_AL2ReadNFromN_ADATv`, `_AL2ReadNFromN_AESv`, `_AL2ReadNFromN_24v`, `_AL2ReadNFromN_16v`, `_AL2ReadNFromN_8v`

audio library (AL) (part 3).

`_AL2ReadNFromN_fv`, `_AL2ReadNFromN_dv`, `_AL2WriteMonoToStereo_8v`, `_AL2WriteMonoToStereo_16v`, `_AL2WriteMonoToStereo_24v`, `_AL2WriteMonoToStereo_fv`, `_AL2WriteMonoToStereo_dv`, `_AL2ReadMonoFromStereo_8v`, `_AL2ReadMonoFromStereo_16v`, `_AL2ReadMonoFromStereo_24v`, `_AL2ReadMonoFromStereo_fv`, `_AL2ReadMonoFromStereo_dv`

window id, clip and swap bookkeeping.

`StealID`, `FindBestID`, `BindToClip..BF`, `Fullscreen..KF`, `ZBuffer..LF`, `FindFreeCID`, `Dontfreeze..JF`, `AssignID..FG`, `Unbind..FF`, `QuickSortSpansX..CCB`, `NewID..GG`, `RecomputeExposures..NG`, `SwapDone..MF`, `QuickSortRects..LAB`, `DelayValidateClip..EF`, `ValidateSwapbuf..GF`, `SetDIDMode`, `SwapInitiated..NF`, `DelayValidateClipCallback..DF`, `ValidateSwapNClip..IF`, `QuickSortSpans..NAB`, `ValidateClip..CF`, `GenlockNotify..OF`, `RecomputeLayeredExposures..OG`, `SetReservedID`, `ValidateMode..HF`, `FindFreeID`


### Video format files (`vfmt`) and XDR (`xdr`)

Reading and writing the format and combination files under `/usr/gfx/ucode` (`vfmt*`) and the XDR codecs the symbol database uses (`xdr_*`).

video format and combination files.

`vfmtReadCmp1Format`, `vfmtReadCmp1OdyFormat`, `vfmtReadCmp1SG2Format`, `vfmtFindFormatFile`, `vfmtFindKonaFormatFile`, `vfmtFindCmpFormatFile`, `vfmtFindOdyFormatFile`, `vfmtFindSG2FormatFile`, `vfmtFindKonaCombinationFile`, `vfmtFindCmpCombinationFile`, `vfmtGetLastKonaFileStat`, `vfmtReadCmp1Combination`, `vfmtWriteCmp1Combination`

XDR codecs.

`xdr_SDBelementIndex`, `xdr_SDBfileOffset`, `xdr_typedData`, `xdr_SDBfileHeader`, `xdr_SDBdataType`, `xdr_SDBsymbolName`, `xdr_SDBsymbolTableEntry`, `xdr_SDBversionNumber`


### Audio library (`al`)

The `al*` functions of the audio library copy: configuration and port accessors, and the frame transfer and resource lookup calls read in full below.

accessors and config.

`alGetFrameNumber`, `alSetErrorHandler`, `alGetErrorString`, `alNewConfig`, `alFreeConfig`, `alClosePort`, `alSetChannels`, `alGetChannels`, `alGetFD`, `alGetFrameTime`, `alSetConfig`, `alGetConfig`, `alSetSampFmt`, `alGetSampFmt`, `alOpenPort`, `alSetWidth`, `alSetFloatMax`, `alGetFloatMax`, `alGetWidth`, `__alParams`, `_alGetResourceValue`, `alGetParams`, `alIsSubtype`

port data transfer: blocking reads and writes of sample frames.

`alReadFrames`, `alWriteFrames`

resource lookup by name.

`alGetResourceByName`


Read in full (**established** from the disassembly, release IRIX 6.5.30m `odyssey.so`):

- `alReadFrames` (0x1551bb0, 668 bytes) moves sample frames out of a port's ring buffer in chunks of at most 256 frames. Each chunk goes through a function pointer stored at +112 of the port structure. Between chunks it sets the bit for the port's file descriptor (+36) in a one-descriptor read set and calls `select` with no timeout, so the call blocks. It transfers data and is not an accessor; an earlier version of this chapter filed it with the accessors.
- `alWriteFrames` has the same shape (the same 256-frame cap and the same `select` call), so it is the write-side twin. **inferred** from that match; the direction of the copy was not traced.
- `alGetResourceByName` (0x1562b30, 1248 bytes) calls `alGetParams`, `_alGetResourceValue`, `__alParams` and `alIsSubtype` while it scans resources. **inferred** that it finds a resource by name and returns its identifier; the return convention was not traced.

### Arcs and miscellaneous (`misc`)

Ellipse and arc scan conversion helpers from the X sample server, XDR type mapping, RRM private bookkeeping and the capability stubs.

arc and ellipse scan conversion.

`drawZeroArc..AP`, `tailX..LN`, `drawQuadrant..FAB`, `computeBound..JP`, `tailSpan..OP`, `arcSpan0..NP`, `hookEllipseY..KP`, `tailEllipseY..BP`, `drawArc..EAB`, `realAllocSpan`, `newFinalSpan..CAB`, `fillSpans..AAB`, `realFindSpan..BAB`, `hookX..LP`, `arcSpan..MP`

XDR, debug and capability stubs.

`compareSTEName`, `mapTypeToXDRPROC`, `mergeDIDLists..EG`, `incrRRMpriv`, `appendRequestQueue..AF`, `cmapDID`, `_odyDebugf..MD`, `sgiReleaseCapabilityUnsupported`, `sgiEnableCapabilityUnsupported`

other.

`computeDashMap..LO`


### Frame-buffer layer (`nfb`)

The `nfb*` layer between the X core and the board: fill, copy and ROP loops with software fallbacks, window and colormap validation. Depth-specific names (`nfb8`, `nfb10`, `nfb1`) are the 8-bit, 10-bit and 1-bit variants (inferred from the numbers).

ROP loops by depth.

`nfb13RopLoop..NH`, `nfb11MaskRopLoop..LI`, `nfb13MaskRopLoop..NI`, `nfb15MaskRopLoop..PI`, `nfb8RopLoop..IH`, `nfb4RopLoop..EH`, `nfb1RopLoop..BH`, `nfb14RopLoop..OH`, `nfb10RopLoop..KH`, `nfb9RopLoop..JH`, `nfb15RopLoop..PH`, `nfb2MaskRopLoop..CI`, `nfb0MaskRopLoop..AI`, `nfb4MaskRopLoop..EI`, `nfb2RopLoop..CH`, `nfb5RopLoop..FH`, `nfb6MaskRopLoop..GI`, `nfb8MaskRopLoop..II`, `nfb10MaskRopLoop..KI`, `nfb11RopLoop..LH`, `nfb14MaskRopLoop..OI`, `nfb12MaskRopLoop..MI`, `nfb6RopLoop..GH`, `nfb3RopLoop..DH`, `nfb12RopLoop..MH`, `nfb7RopLoop..HH`, `nfb1MaskRopLoop..BI`, `nfb3MaskRopLoop..DI`, `nfb5MaskRopLoop..FI`, `nfb9MaskRopLoop..JI`, `nfb7MaskRopLoop..HI`, `nfb0RopLoop..AH`

the nfbInf* drawing variants (what "Inf" abbreviates: **unknown**).

`nfbInfPolyFillRect..AL`, `nfbInfFillSpans..FK`, `nfbInfPolySegment..MK`, `nfbInfPolyArc..OK`, `nfbInfPolyText16..DL`, `nfbInfImageText8..EL`, `nfbInfCopyPlane..JK`, `nfbInfImageGlyphBlt..GL`, `nfbInfSetSpans..GK`, `nfbInfCopyArea..IK`, `nfbInfPolyRectangle..NK`, `nfbInfRender..EK`, `nfbInfPolyPoint..KK`, `nfbInfPolyFillArc..BL`, `nfbInfPolyText8..CL`, `nfbInfPutImage..HK`, `nfbInfPushPixels..IL`, `nfbInfPolylines..LK`, `nfbInfImageText16..FL`, `nfbInfFillPolygon..PK`, `nfbInfPolyGlyphBlt..HL`

window, colormap and visual management.

`nfbCheckSubSaveUnder..MG`, `nfbStereoPaintWindowBackground..BJ`, `nfbRealizeWindow`, `nfbGetBestVisualForPEX`, `nfbInstallHWColormap`, `nfbValidateWindowVisual`, `nfbAbort`, `nfbChangeWindowAttributes`, `nfbGetLayerWindow`, `nfbMoveWindow`, `nfbSlideAndSizeWindow`, `nfbStereoCopyWindow..CJ`, `nfbChangeSaveUnder`, `nfbInitServerOverlayVisualsProperty..JG`, `nfbPostChangeSaveUnder`, `nfbPaintWindowBorder`, `nfbMarkOverlappedWindows`, `nfbStereoPaintWindowBorder..AJ`, `nfbCreateWindow`, `nfbPaintWindowBackground`, `nfbCreateHWColormap`, `nfbHWColormapScreenInit`, `nfbMarkUnrealizedWindow`, `nfbPositionWindow`, `nfbListInstalledHWColormaps`, `nfbDestroyWindow`, `nfbInitRootWindow`, `nfbUnrealizeWindow`, `nfbUninstallHWColormap`, `nfbMarkWindow`, `nfbDestroyHWColormap`

spans and images.

`nfbStereoImageText16`, `nfbGetImage`, `nfbStereoPutImage`, `nfbSetSpans`, `nfbFillSpans`, `nfbImageGlyphBlt`, `nfbGetSpans`, `nfbCopyClip..AK`, `nfbCopyPlane`, `nfbStereoImageText8`, `nfbStereoCopyArea`, `nfbCopyGC..BK`, `nfbStereoImageGlyphBlt`, `nfbShmPutImage`, `nfbStereoSetSpans`, `nfbStereoFillSpans`, `nfbStereoCopyPlane`, `nfbCopyArea`, `nfbPutPlane..PG`, `nfbShmPutXYImage..KJ`, `nfbPutImage`

other nfb entry points (part 1).

`nfbTiledFillRects`, `nfbLineSD`, `nfbPolyFillRect`, `nfbSetStereoMode`, `nfbHWStoreColors`, `nfbStereoPolyFillArc`, `nfbStereoPolyText16`, `nfbValidateGC..CK`, `nfbTellGainedMap`, `nfbShmCreatePixmap`, `nfbCloseScreen`, `nfbStereoPolyText8`, `nfbLayerValidateTreeSL`, `nfbNoopDDATranslateBackingStore`, `nfbStereoValidateSwapbuf..FJ`, `nfbStereoFillPolygon`, `nfbStippledFS`, `nfbChangeGC..LJ`, `nfbUnmapTree`, `nfbRecolorCursor`, `nfbFreeHWCmapArrays`, `nfbSolidFillRects`, `nfbSolidZeroSeg`, `nfbSetStereoBuffer`, `nfbStereoPolyGlyphBlt`, `nfbStereoPolySegment`, `nfbOpStippledFillRects`, `nfbSaveScreen`, `nfbOpStippledFS`, `nfbComputeDidFlag..IG`, `nfbPolyPoint`, `nfbComputeUniverseSL..GJ`, `nfbSetDidFlags`, `nfbSolidPolyGlyphBlt`, `nfbPostValidateTree`, `nfbSaveAreas`, `nfbUnrealizeCursor`, `nfbZeroArcPts`, `nfbReadDisplay`, `nfbReadDisplayShutdown..IJ`

other nfb entry points (part 2).

`nfbTiledFS`, `nfbStereoValidateClip..DJ`, `nfbStereoPolyPoint`, `nfbStereoPolyRectangle`, `nfbComputeClipsSL..HJ`, `nfbDestroyClip..NJ`, `nfbCursorLimits`, `nfbStereoPolyArc`, `nfbStereoPolyFillRect`, `nfbRestoreAreas`, `nfbStippledFillRects`, `nfbStereoPushPixels`, `nfbSolidFS`, `nfbGenericScreenInit`, `nfbStereoDrawCID..EJ`, `nfbStereoPolyline`, `nfbNoopDDACreateScreenResources`, `nfbDestroyGC..OJ`, `nfbCreateStereoGC`, `nfbDoBitBltPS`, `nfbChangeClip..PJ`, `nfbDoBitBltSP`, `nfbDoBitBltSS`, `nfbInitHWCmapArrays`, `nfbNoopDDAClearBackingStore`


### Machine-independent X code (`mi`, `mfb`)

The MIT X sample server's machine-independent routines (`mi*`: backing store, regions, arcs, polygon fill, exposures) and monochrome frame-buffer routines (`mfb*`), compiled into the module.

backing store (part 1).

`miBSCheapChangeGC..LCB`, `miInitializeBackingStore`, `miBSCheapChangeClip..OCB`, `miBSDestroyClip..IFB`, `miBSPutImage..FDB`, `miBSDoCopy..GDB`, `miBSValidateGC..CFB`, `miBSCheapCopyClip..PCB`, `miBSFillSpans..DDB`, `miBSSetSpans..EDB`, `miBSDestroyWindow..JCB`, `miBSCheapValidateGC..KCB`, `miBSPushPixels..HEB`, `miBSGetSpans..GCB`, `miBSFree..MEB`, `miBSCheapDestroyClip..ADB`, `miBSCopyGC..EFB`, `miBSRestoreAreas..PEB`, `miBSPolyArc..NDB`, `miBSFillVirtualBits..KEB`, `miBSDrawGuarantee..BFB`, `miBSPolyText8..BEB`, `miBSCopyClip..HFB`, `miBSClearBackingRegion..JEB`, `miBSAllocate..LEB`, `miResizeBackingStore..NEB`, `miBSPolyFillArc..AEB`, `miBSFillPolygon..ODB`, `miBSPolySegment..LDB`, `miBSChangeClip..GFB`, `miBSPolyPoint..JDB`, `miBSTranslateBackingStore..AFB`, `miBSGetImage..FCB`, `miBSCheapCopyGC..MCB`, `miBSCreateGC..ICB`, `miBSChangeGC..DFB`, `miBSDestroyGC..FFB`, `miBSExposeCopy..MFB`, `miBSSaveDoomedAreas..OEB`, `miBSPolyRectangle..MDB`

backing store (part 2).

`miBSImageText8..DEB`, `miBSClearBackingStore..IEB`, `miBSChangeWindowAttributes..HCB`, `miBSImageGlyphBlt..FEB`, `miBSCopyArea..HDB`, `miBSCopyPlane..IDB`, `miBSPolylines..KDB`, `miBSCloseScreen..ECB`, `miBSImageText16..EEB`, `miBSPolyFillRect..PDB`, `miBSCheapDestroyGC..NCB`, `miBSPolyGlyphBlt..GEB`, `miBSPolyText16..CEB`

arcs.

`miFreeArcs..KO`, `miLineArcD..OBB`, `miPolyFillArc`, `miGetArcPts..GO`, `miComputeArcs..MO`, `miFreeArcCache`, `miPolyArc`, `miZeroArcSetup`, `miFillArcSliceSetup`, `miLineArc..PBB`, `miZeroPolyArc`, `mfbPolyFillArcSolid`, `mfbZeroPolyArcSS`, `mfbZeroArcSS..FN`

polygons.

`miFillPolyHelper`, `miFillSppPoly`, `miFillGeneralPoly`, `miFillPolygon`, `miPolyText8`, `miPolyGlyphBlt`, `miFillRectPolyHelper..KBB`, `miPolyRectangle`, `miPolyText16`, `miPolyFillRect`, `miPolySegment`, `miFillConvexPoly`, `mfbFillPolyInvert`, `mfbFillPolyWhite`, `mfbPolyPoint`, `mfbPolyGlyphBltWhite`, `mfbFillPolyBlack`, `mfbPolyGlyphBltBlack`, `mfbPolyFillRect`, `mfbPolyGlyphBltInvert`

regions and exposures.

`miRegionReset`, `miTranslateRegion`, `miSendExposures`, `miRegionCreate`, `miSendGraphicsExpose`, `miHandleExposures`, `miRegionExtents`, `miRegionValidate`, `miRegionDestroy`, `miRecomputeExposures..PAB`, `miRegionAppend`, `miRegionUninit`, `miPointInRegion`, `miRegionEmpty`, `miWindowExposures`, `miRegionOp..IAB`, `miRectsToRegion`, `miRegionNotEmpty`, `miRegionInit`, `miHandleValidateExposures`, `miRegionCopy`, `mfbPixmapToRegion`

monochrome frame buffer (mfb) (part 1).

`mfbTEGlyphBltWhite`, `mfbCopyRotatePixmap`, `mfbBlackSolidFS`, `mfbPutImage`, `mfbGetImage`, `mfbLineSD`, `mfbLineSS`, `mfbUnrealizeFont`, `mfbDoBitbltGeneral`, `mfbSolidWhiteArea`, `mfbDoBitbltXor`, `mfbDoBitbltOr`, `mfbSolidInvertArea`, `mfbDoBitbltCopy`, `mfbCopyPlane`, `mfbSetSpans`, `mfbSolidPP`, `mfbInvertSolidFS`, `mfbValidateGC`, `mfbRealizeFont`, `mfbTileFS`, `mfbTileAreaPPWCopy`, `mfbUnnaturalTileFS`, `mfbTileAreaPPWGeneral`, `mfbDoBitbltCopyInverted`, `mfbBresS`, `mfbSegmentSS`, `mfbSegmentSD`, `mfbUnnaturalStippleFS`, `mfbSolidBlackArea`, `mfbAllocatePrivates`, `mfbReduceRop`, `mfbWhiteSolidFS`, `mfbXRotatePixmap`, `mfbWhiteStippleFS`, `mfbCopyArea`, `mfbStippleWhiteArea`, `mfbImageGlyphBltBlack`, `mfbTEGlyphBltBlack`, `mfbImageGlyphBltWhite`

monochrome frame buffer (mfb) (part 2).

`mfbDoBitblt`, `mfbStippleBlackArea`, `mfbSetScanline`, `mfbBlackStippleFS`, `mfbPushPixels`, `mfbStippleInvertArea`, `mfbInvertStippleFS`

other mi routines (part 1).

`miGetPlane..IBB`, `miIntersect`, `miWideSegment..ACB`, `miShapedWindowIn`, `miCleanupSpanData`, `miClearDrawable`, `miPostChangeSaveUnder`, `miComputeWideEllipse..MN`, `miSubtractO..MAB`, `miUnion`, `miFillUniqueSpanGroup`, `miZeroLine`, `miCopyArea`, `miImageText16`, `miChangeGC`, `miClipSpans`, `miLineProjectingCap`, `miPushPixels`, `miClearToBackground`, `miSubtract`, `miSubtractSpans`, `miRectIn`, `miTileVirtualBS..KFB`, `miLineOnePoint..LBB`, `miDcos..CO`, `miMarkOverlappedWindows`, `miImageText8`, `miCloseScreen`, `miCreateBSPixmap..LFB`, `miDasin..EO`, `miRectAlloc`, `miImageGlyphBlt`, `miZeroDashLine`, `miCreateScreenResources`, `miChangeClip`, `miMarkWindow`, `miComputeCompositeClip`, `miLineJoin..MBB`, `miMoveWindow`, `miRoundCap..BO`

other mi routines (part 2).

`miFillWideEllipse`, `miDestroyGC`, `miGetImage`, `miInverse`, `miDsin..DO`, `miIntersectO..JAB`, `miDatan2..FO`, `miCopyGC`, `miUnionO..KAB`, `miSlideAndSizeWindow`, `miAppendSpans`, `miGetLayerWindow`, `miModifyPixmapHeader`, `miEllipseAngleToSlope`, `miValidateTree`, `miOpqStipDrawable`, `miComputeEllipseSpans..KN`, `miWideLine`, `miWideDash`, `miSetShape`, `miDestroyClip`, `miCopyClip`, `miMarkUnrealizedWindow`, `miChangeSaveUnder`, `miComputeClips..ABB`, `miChangeBorderWidth`, `miCreateETandAET`, `miCopyPlane`, `miCheckSubSaveUnder..OAB`


### Colour frame-buffer code (`cfb`)

The MIT X sample server's colour frame-buffer routines in the 8, 16 and 32-bit depth variants (`cfb8*`, `cfb16*`, `cfb32*`): blits, lines, fills, glyphs and arcs.

bit blits.

`cfbBitBlt`, `cfb16DoBitbltXor`, `cfbDoBitbltCopy`, `cfb32DoBitblt`, `cfb16DoBitbltOr`, `cfb32BitBlt`, `cfb16BitBlt`, `cfb32DoBitbltXor`, `cfbDoBitbltGeneral`, `cfb32DoBitbltOr`, `cfbDoBitblt`, `cfbDoBitbltXor`, `cfb32DoBitbltGeneral`, `cfb16DoBitbltGeneral`, `cfbDoBitbltOr`, `cfb16DoBitbltCopy`, `cfb16DoBitblt`, `cfb32DoBitbltCopy`

lines and segments (part 1).

`cfb8ClippedLineCopy`, `cfb32SegmentSS1RectGeneral`, `cfb16SegmentSS1Rect`, `cfb16SegmentSS1RectGeneral`, `cfb32SegmentSD`, `cfb8ClippedLineGeneral`, `cfb16SegmentSD`, `cfb32SegmentSS`, `cfb32ClippedLineGeneral`, `cfb16SegmentSS`, `cfb16LineSS1RectPreviousCopy`, `cfb16ClippedLineGeneral`, `cfb32LineSS`, `cfb32LineSD`, `cfb16SegmentSS1RectXor`, `cfb8LineSS1RectXor`, `cfb32ClippedLineCopy`, `cfb16SegmentSS1RectCopy`, `cfb16ClippedLineCopy`, `cfb16LineSS`, `cfb16LineSD`, `cfb8SegmentSS1RectGeneral`, `cfb16LineSS1Rect`, `cfb32SegmentSS1RectCopy`, `cfb16LineSS1RectCopy`, `cfbLineSD`, `cfb32LineSS1RectCopy`, `cfbLineSS`, `cfb32SegmentSS1Rect`, `cfb32LineSS1RectPreviousCopy`, `cfb32SegmentSS1RectXor`, `cfbSegmentSS`, `cfbSegmentSD`, `cfb8SegmentSS1RectCopy`, `cfb8ClippedLineXor`, `cfb8LineSS1RectCopy`, `cfb32ClippedLineXor`, `cfb8LineSS1Rect`, `cfb16LineSS1RectXor`, `cfb8SegmentSS1RectXor`

lines and segments (part 2).

`cfb8SegmentSS1Rect`, `cfb16LineSS1RectGeneral`, `cfb8LineSS1RectPreviousCopy`, `cfb16ClippedLineXor`, `cfb8LineSS1RectGeneral`, `cfb32LineSS1RectGeneral`, `cfb32LineSS1RectXor`, `cfb32LineSS1Rect`

arcs.

`cfb32PolyFillArcSolidGeneral`, `cfb32ZeroPolyArcSSCopy`, `cfbPolyFillArcSolidGeneral`, `cfb16PolyFillArcSolidCopy`, `cfb16PolyFillArcSolidGeneral`, `cfbPolyFillArcSolidCopy`, `cfb16ZeroPolyArcSSXor`, `cfb32ZeroPolyArcSSXor`, `cfbZeroPolyArcSS8Xor`, `cfbZeroPolyArcSS8General`, `cfb32ZeroPolyArcSSGeneral`, `cfb16ZeroPolyArcSSCopy`, `cfbZeroArcSS8Copy..JM`, `cfbZeroArcSS8Xor..AN`, `cfbZeroArcSS8Copy..BM`, `cfbZeroArcSS8Copy..BN`, `cfbZeroArcSS8Xor..IM`, `cfb16ZeroPolyArcSSGeneral`, `cfbZeroArcSS8Xor..ML`, `cfb32PolyFillArcSolidCopy`, `cfbZeroPolyArcSS8Copy`, `cfbZeroArcSS8General..EM`, `cfbZeroArcSS8General..LL`, `cfbZeroArcSS8General..NM`

polygons and rectangles (part 1).

`cfb16PolyGlyphBlt8`, `cfb32FillPoly1RectGeneral`, `cfb8FillRectOpaqueStippled32`, `cfb16FillRectSolidCopy`, `cfbFillRectSolidCopy`, `cfb8FillRectTransparentStippled32`, `cfbFillBoxTile32sGeneral`, `cfb16FillPoly1RectCopy`, `cfb16FillPoly1RectGeneral`, `cfbPolyGlyphRop8Clipped..JL`, `cfb16FillBoxTileOddGeneral`, `cfb16FillBoxTileOddCopy`, `cfb32FillRectTileOdd`, `cfb16FillRectSolidXor`, `cfb16FillRectTileOdd`, `cfb32FillRectTile32Copy`, `cfbPolyGlyphRop8`, `cfbFillPoly1RectGeneral`, `cfb16FillRectSolidGeneral`, `cfb16FillRectTile32Copy`, `cfb32PolyFillRect`, `cfb32FillPoly1RectCopy`, `cfb32FillBoxTile32sCopy`, `cfbFillBoxTileOddGeneral`, `cfb16PolyFillRect`, `cfbPolyGlyphBlt8`, `cfb32PolyPoint`, `cfb32FillRectSolidCopy`, `cfb16PolyPoint`, `cfb16FillBoxTile32sCopy`, `cfbPolyGlyphBlt8Clipped..FM`, `cfbPolyPoint`, `cfbPolyFillRect`, `cfbPolyGlyphBlt8Clipped..KL`, `cfbPolyGlyphBlt8Clipped..MM`, `cfbFillPoly1RectCopy`, `cfb32FillBoxTile32sGeneral`, `cfb32FillRectTile32General`, `cfbFillBoxTileOddCopy`, `cfb16FillRectTile32General`

polygons and rectangles (part 2).

`cfb32PolyGlyphBlt8`, `cfb32FillRectSolidXor`, `cfb32FillRectSolidGeneral`, `cfb16FillBoxTile32sGeneral`, `cfbFillRectSolidGeneral`, `cfbFillBoxTile32sCopy`, `cfbFillRectTile32Copy`, `cfbFillRectSolidXor`, `cfbFillRectTile32General`, `cfb8FillRectStippledUnnatural`, `cfbFillRectTileOdd`

spans, tiles and images (part 1).

`cfb16FillSpanTile32sGeneral`, `cfbFillSpanTile32sCopy`, `cfbYRotatePixmap`, `cfb32Tile32FSCopy`, `cfb32Tile32FSGeneral`, `cfb16Tile32FSCopy`, `cfbPutImage`, `cfb16Tile32FSGeneral`, `cfb16YRotatePixmap`, `cfbGetImage`, `cfb8Stipple32FS`, `cfbFillSpanTileOddGeneral`, `cfbSolidSpansGeneral`, `cfb32YRotatePixmap`, `cfb32ImageGlyphBlt8`, `cfb16SolidSpansCopy`, `cfb32GetImage`, `cfbUnnaturalTileFS`, `cfb32FillSpanTile32sGeneral`, `cfb32PutImage`, `cfb32SolidSpansGeneral`, `cfbCreatePixmap`, `cfb16FillSpanTileOddGeneral`, `cfb32CopyRotatePixmap`, `cfbSolidSpansCopy`, `cfbTile32FSGeneral`, `cfb16UnnaturalTileFS`, `cfbTile32FSCopy`, `cfb16GetImage`, `cfb16SolidSpansXor`, `cfb32UnnaturalTileFS`, `cfbCopyRotatePixmap`, `cfb16PutImage`, `cfbImageGlyphBlt8`, `cfb8SetOpaqueStipple`, `cfb32SolidSpansXor`, `cfb8OpaqueStipple32FS`, `cfb16FillSpanTile32sCopy`, `cfb16FillSpanTileOddCopy`, `cfbFillSpanTileOddCopy`

spans, tiles and images (part 2).

`cfb32GetSpans`, `cfb32SetSpans`, `cfb32SolidSpansCopy`, `cfb32FillSpanTile32sCopy`, `cfb16SolidSpansGeneral`, `cfbDestroyPixmap`, `cfb16GetSpans`, `cfbUnnaturalStippleFS`, `cfb16SetSpans`, `cfb16UnnaturalStippleFS`, `cfbXRotatePixmap`, `cfbFillSpanTile32sGeneral`, `cfbTEGlyphBlt8`, `cfb16CopyRotatePixmap`, `cfbSetSpans`, `cfb16XRotatePixmap`, `cfb16ImageGlyphBlt8`, `cfb32UnnaturalStippleFS`, `cfbGetSpans`, `cfb32XRotatePixmap`, `cfbSolidSpansXor`

other cfb routines.

`cfbAllocatePrivates`, `cfb32CopyArea`, `cfb16AllocatePrivates`, `cfbCopyPlane8to1`, `cfb32ValidateGC`, `cfbResolveColor`, `cfb32CopyPlane`, `cfb16CopyPlane`, `cfbCopyPlane`, `cfbPushPixels8`, `cfbCopyPlane1to8`, `cfb32AllocatePrivates`, `cfbCopyArea`, `cfbValidateGC`, `cfb16ValidateGC`, `cfb16CopyArea`
