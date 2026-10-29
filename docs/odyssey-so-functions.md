# X module (`odyssey.so`) functions by role

Release IRIX 6.5.30m, `usr/lib/X11/dyDDX/odyssey.so`. The disassembly is `ddx/asm/odyssey/`, split by function-name prefix by `scripts/extract_odsy_ddx.py`. The module carries the board driver (`odsy*`), the resource-manager client (`rrm*`) and large parts of the MIT X sample server (`mi*`, `mfb*`, `cfb*`) plus an SGI frame-buffer layer (`nfb*`), the video-format symbol database and a copy of the audio library.

Labels: every function name is **established** from the module's symbol table; the roles are **inferred** from the names, since the module's sample-server code is the public X11 code. Functions read in full are described in `docs/opengl.md` and `docs/display.md` and are not repeated here.

## Functions

### Driver (`odsy`)

Functions named `odsy*`, the board driver of the X module (`ddx/asm/odyssey/odsy/odsy.s`). The role is **inferred** from each name; functions read in full are in `docs/opengl.md` and `docs/display.md`.

| Role | Functions |
|---|---|
| video timing, monitor and format files | `odsyGetDimensionsFromTTFile`, `odsyReadTTfilename`, `odsyCheckCorona`, `odsyValidateReservedMode`, `odsyDefaultTTExists`, `odsyWriteTTfilename`, `odsyValidateBoardConfig`, `odsyLstVideoFmt`, `odsyProbe`, `odsyQryMonitor` |
| hyperpipe, pbuffers and buffer swap | `odsyDestroyHyperpipeConfig`, `odsyDeallocatePbuffer`, `odsyQueryMaxSwapBarrier`, `odsyInitiateBufferSwap`, `odsyQueryHyperpipeConfig`, `odsyQueryHyperpipeNetwork`, `odsyAllocatePbuffer`, `odsyHyperpipeConfig` |
| compositor and cross-screen video context | `odsyAttachXvc`, `odsyInitDIDState`, `odsyDetachXvc`, `odsySetupCompositorInfo`, `odsyCmpIoctl` |
| cursor | `odsyInstallCursor`, `odsyCursorInit`, `odsyDisplayCursor`, `odsyCursorOn` |
| colour maps and gamma | `odsyStoreGamma16`, `odsyQueryGammaColors`, `odsyQryPltParam`, `odsyStoreFakeColors`, `odsyInstallFakeColormap`, `odsyCreateColormap`, `odsyStoreCompGamma`, `odsySetPltParam`, `odsyInstallColormap`, `odsyBlackCmap`, `odsyStoreGamma8`, `odsyStoreColors`, `odsySetColor` |
| glyph and text drawing | `odsyPolyGlyphBltTE6`, `odsyPolyGlyphBltTE9`, `odsyImageGlyphBltTE6`, `odsyImageGlyphBltTE9` |
| lines, arcs, polygons and spans | `odsySegmentSD`, `odsySegmentSS`, `odsyZeroPolyArc`, `odsyFillPolygonSolid`, `odsyLineSD`, `odsyLineSS`, `odsyPolyArc`, `odsyPolyFillRectStippled`, `odsyPolyPnt`, `odsySolidSpans`, `odsySolidFillSpans`, `odsyFillPolygon`, `odsyDrawSolidRects`, `odsyTileRects`, `odsyStippledFS`, `odsyDrawPoints`, `odsyClearPlanes`, `odsyWideDash`, `odsyFillPolygonStippled` |
| copy and image transfer | `odsyGrowBitmap`, `odsyCopyRect`, `odsyCopyWindow` |
| validation of windows, GCs and visuals | `odsyValidateReducedGC`, `odsyValidateWindowPriv`, `odsyValidateWindowGC`, `odsyValidateVisual` |
| screen set-up, tear-down and allocation | `odsyPostInit`, `odsyCloseScreen`, `odsyInitRootWindow`, `odsyInitWindowType`, `odsyResetProc`, `odsyInitAllocator`, `odsyLoadAndFree` |
| other driver entry points | `odsyQueryBestSize`, `odsySetScrnGlock`, `odsyBell`, `odsyKeyClick` |

### Resource-manager client (`rrm`)

Window, clip and drawable bookkeeping that talks to the kernel resource manager (`rrm*`).

| Role | Functions |
|---|---|
| window and drawable lifecycle | `rrmMapWindow`, `rrmDestroyDrawable`, `rrmUnmapWindow`, `rrmCreateWindow`, `rrmDoubleBufferWindow`, `rrmUndoubleBufferWindow`, `rrmDestroyWindow`, `rrmCreateDefColormap`, `rrmCopyWindow` |
| clip and render-node binding | `rrmNeedCID`, `rrmUnbindRNFromClip`, `rrmValidateCID`, `rrmDisposeClip`, `rrmInvalidate`, `rrmValidateTree`, `rrmOGLBindRNToClip`, `rrmOGLUnbindRNFromClip`, `rrmBindRNToClip` |
| queue, handlers and colormap | `rrmProcessRequestQueue`, `rrmWorkProc` |

### Symbol database and audio library (`other`)

The video-format symbol database reader (`SDB*`) and a copy of the audio library (`AL*`, `_AL*`) linked into the module, plus the module's window-identifier and swap bookkeeping with doubly-underscored names.

| Role | Functions |
|---|---|
| symbol database (SDB) | `SDBaddNewArraySymbol`, `SDBaddNewScalarSymbol`, `SDBcloseNewDatabase`, `SDBopenNewDatabase`, `SDBsetHeader`, `SDBgetSymbolDataAddress`, `SDBgetSymbolDatatype`, `SDBgetSymbolElementCount`, `SDBgetSymbolValueArray`, `SDBcloseReadDatabase`, `SDBreadOpenDatabase`, `SDBprocessOneUserMethod`, `SDBinitializeSymbolTableEntries`, `SDBsetupMemoryInterface` |
| audio library (AL) (part 1) | `ALgetqueuesize`, `ALsetqueuesize`, `ALreadsamps`, `ALwritesamps`, `ALgetfillable`, `ALgetfilled`, `ALgetfillpoint`, `ALsetfillpoint`, `ALnewconfig`, `ALfreeconfig`, `ALsetconfig`, `ALgetconfig`, `ALsetwidth`, `ALgetwidth`, `ALsetsampfmt`, `ALgetsampfmt`, `ALsetchannels`, `ALgetchannels`, `ALsetfloatmax`, `ALgetfloatmax`, `ALcloseport`, `ALopenport`, `ALgetfd`, `ALgetframenumber`, `ALgetframetime`, `ALgetparams`, `ALsetparams`, `ALseterrorhandler`, `_AL2assignfuncs`, `_AL2recalcscalefactors`, `_AL2WriteMonoToStereo_8`, `_AL2WriteMonoToStereo_16`, `_AL2WriteMonoToStereo_24`, `_AL2WriteMonoToStereo_f`, `_AL2WriteMonoToStereo_d`, `_AL2ReadMonoFromStereo_8`, `_AL2ReadMonoFromStereo_16`, `_AL2ReadMonoFromStereo_24`, `_AL2ReadMonoFromStereo_f`, `_AL2ReadMonoFromStereo_d` |
| audio library (AL) (part 2) | `_AL2WriteNToN_8`, `_AL2WriteNToN_16`, `_AL2WriteNToN_AES`, `_AL2WriteNToN_ADAT`, `_AL2WriteNToN_24`, `_AL2WriteNToN_f`, `_AL2WriteNToN_fnl`, `_AL2WriteNToN_d`, `_AL2WriteNToN_dnl`, `_AL2ReadNFromN_8`, `_AL2ReadNFromN_16`, `_AL2ReadNFromN_AES`, `_AL2ReadNFromN_ADAT`, `_AL2ReadNFromN_24`, `_AL2ReadNFromN_f`, `_AL2ReadNFromN_d`, `_AL2Write4ChanTo2Chan_8`, `_AL2Write4ChanTo2Chan_16`, `_AL2Write4ChanTo2Chan_24`, `_AL2Write4ChanTo2Chan_f`, `_AL2Write4ChanTo2Chan_d`, `_AL2Read4ChanFromStereo_24`, `_AL2Read4ChanFromStereo_16`, `_AL2Read4ChanFromStereo_8`, `_AL2Read4ChanFromStereo_f`, `_AL2Read4ChanFromStereo_d`, `_AL2WriteNToN_ADATv`, `_AL2WriteNToN_AESv`, `_AL2WriteNToN_24v`, `_AL2WriteNToN_16v`, `_AL2WriteNToN_8v`, `_AL2WriteNToN_fv`, `_AL2WriteNToN_dv`, `_AL2WriteNToN_fvnl`, `_AL2WriteNToN_dvnl`, `_AL2ReadNFromN_ADATv`, `_AL2ReadNFromN_AESv`, `_AL2ReadNFromN_24v`, `_AL2ReadNFromN_16v`, `_AL2ReadNFromN_8v` |
| audio library (AL) (part 3) | `_AL2ReadNFromN_fv`, `_AL2ReadNFromN_dv`, `_AL2WriteMonoToStereo_8v`, `_AL2WriteMonoToStereo_16v`, `_AL2WriteMonoToStereo_24v`, `_AL2WriteMonoToStereo_fv`, `_AL2WriteMonoToStereo_dv`, `_AL2ReadMonoFromStereo_8v`, `_AL2ReadMonoFromStereo_16v`, `_AL2ReadMonoFromStereo_24v`, `_AL2ReadMonoFromStereo_fv`, `_AL2ReadMonoFromStereo_dv` |
| window id, clip and swap bookkeeping | `StealID`, `FindBestID`, `FindFreeCID`, `SetDIDMode`, `SetReservedID`, `FindFreeID` |

### Video format files (`vfmt`) and XDR (`xdr`)

Reading and writing the format and combination files under `/usr/gfx/ucode` (`vfmt*`) and the XDR codecs the symbol database uses (`xdr_*`).

| Role | Functions |
|---|---|
| video format and combination files | `vfmtReadCmp1Format`, `vfmtReadCmp1OdyFormat`, `vfmtReadCmp1SG2Format`, `vfmtFindFormatFile`, `vfmtFindKonaFormatFile`, `vfmtFindCmpFormatFile`, `vfmtFindOdyFormatFile`, `vfmtFindSG2FormatFile`, `vfmtFindKonaCombinationFile`, `vfmtFindCmpCombinationFile`, `vfmtGetLastKonaFileStat`, `vfmtReadCmp1Combination`, `vfmtWriteCmp1Combination` |
| XDR codecs | `xdr_SDBelementIndex`, `xdr_SDBfileOffset`, `xdr_typedData`, `xdr_SDBfileHeader`, `xdr_SDBdataType`, `xdr_SDBsymbolName`, `xdr_SDBsymbolTableEntry`, `xdr_SDBversionNumber` |

### Audio library (`al`)

The `al*` configuration and port accessors of the audio library copy.

| Role | Functions |
|---|---|
| accessors and config | `alGetFrameNumber`, `alSetErrorHandler`, `alGetErrorString`, `alNewConfig`, `alFreeConfig`, `alClosePort`, `alReadFrames`, `alSetChannels`, `alGetChannels`, `alGetFD`, `alGetFrameTime`, `alSetConfig`, `alGetConfig`, `alSetSampFmt`, `alGetSampFmt`, `alOpenPort`, `alSetWidth`, `alWriteFrames`, `alSetFloatMax`, `alGetFloatMax`, `alGetWidth`, `__alParams`, `_alGetResourceValue`, `alGetParams`, `alGetResourceByName`, `alIsSubtype` |

### Arcs and miscellaneous (`misc`)

Ellipse and arc scan conversion helpers from the X sample server, XDR type mapping, RRM private bookkeeping and the capability stubs.

| Role | Functions |
|---|---|
| arc and ellipse scan conversion | `realAllocSpan` |
| XDR, debug and capability stubs | `compareSTEName`, `mapTypeToXDRPROC`, `incrRRMpriv`, `cmapDID`, `sgiReleaseCapabilityUnsupported`, `sgiEnableCapabilityUnsupported` |

### Frame-buffer layer (`nfb`)

The `nfb*` layer between the X core and the board: fill, copy and ROP loops with software fallbacks, window and colormap validation. Depth-specific names (`nfb8`, `nfb10`, `nfb1`) are the 8-bit, 10-bit and 1-bit variants (inferred from the numbers).

| Role | Functions |
|---|---|
| window, colormap and visual management | `nfbRealizeWindow`, `nfbGetBestVisualForPEX`, `nfbInstallHWColormap`, `nfbValidateWindowVisual`, `nfbAbort`, `nfbChangeWindowAttributes`, `nfbGetLayerWindow`, `nfbMoveWindow`, `nfbSlideAndSizeWindow`, `nfbChangeSaveUnder`, `nfbPostChangeSaveUnder`, `nfbPaintWindowBorder`, `nfbMarkOverlappedWindows`, `nfbCreateWindow`, `nfbPaintWindowBackground`, `nfbCreateHWColormap`, `nfbHWColormapScreenInit`, `nfbMarkUnrealizedWindow`, `nfbPositionWindow`, `nfbListInstalledHWColormaps`, `nfbDestroyWindow`, `nfbInitRootWindow`, `nfbUnrealizeWindow`, `nfbUninstallHWColormap`, `nfbMarkWindow`, `nfbDestroyHWColormap` |
| spans and images | `nfbStereoImageText16`, `nfbGetImage`, `nfbStereoPutImage`, `nfbSetSpans`, `nfbFillSpans`, `nfbImageGlyphBlt`, `nfbGetSpans`, `nfbCopyPlane`, `nfbStereoImageText8`, `nfbStereoCopyArea`, `nfbStereoImageGlyphBlt`, `nfbShmPutImage`, `nfbStereoSetSpans`, `nfbStereoFillSpans`, `nfbStereoCopyPlane`, `nfbCopyArea`, `nfbPutImage` |
| other nfb entry points (part 1) | `nfbTiledFillRects`, `nfbLineSD`, `nfbPolyFillRect`, `nfbSetStereoMode`, `nfbHWStoreColors`, `nfbStereoPolyFillArc`, `nfbStereoPolyText16`, `nfbTellGainedMap`, `nfbShmCreatePixmap`, `nfbCloseScreen`, `nfbStereoPolyText8`, `nfbLayerValidateTreeSL`, `nfbNoopDDATranslateBackingStore`, `nfbStereoFillPolygon`, `nfbStippledFS`, `nfbUnmapTree`, `nfbRecolorCursor`, `nfbFreeHWCmapArrays`, `nfbSolidFillRects`, `nfbSolidZeroSeg`, `nfbSetStereoBuffer`, `nfbStereoPolyGlyphBlt`, `nfbStereoPolySegment`, `nfbOpStippledFillRects`, `nfbSaveScreen`, `nfbOpStippledFS`, `nfbPolyPoint`, `nfbSetDidFlags`, `nfbSolidPolyGlyphBlt`, `nfbPostValidateTree`, `nfbSaveAreas`, `nfbUnrealizeCursor`, `nfbZeroArcPts`, `nfbReadDisplay`, `nfbTiledFS`, `nfbStereoPolyPoint`, `nfbStereoPolyRectangle`, `nfbCursorLimits`, `nfbStereoPolyArc`, `nfbStereoPolyFillRect` |
| other nfb entry points (part 2) | `nfbRestoreAreas`, `nfbStippledFillRects`, `nfbStereoPushPixels`, `nfbSolidFS`, `nfbGenericScreenInit`, `nfbStereoPolyline`, `nfbNoopDDACreateScreenResources`, `nfbCreateStereoGC`, `nfbDoBitBltPS`, `nfbDoBitBltSP`, `nfbDoBitBltSS`, `nfbInitHWCmapArrays`, `nfbNoopDDAClearBackingStore` |

### Machine-independent X code (`mi`, `mfb`)

The MIT X sample server's machine-independent routines (`mi*`: backing store, regions, arcs, polygon fill, exposures) and monochrome frame-buffer routines (`mfb*`), compiled into the module.

| Role | Functions |
|---|---|
| backing store | `miInitializeBackingStore` |
| arcs | `miPolyFillArc`, `miFreeArcCache`, `miPolyArc`, `miZeroArcSetup`, `miFillArcSliceSetup`, `miZeroPolyArc`, `mfbPolyFillArcSolid`, `mfbZeroPolyArcSS` |
| polygons | `miFillPolyHelper`, `miFillSppPoly`, `miFillGeneralPoly`, `miFillPolygon`, `miPolyText8`, `miPolyGlyphBlt`, `miPolyRectangle`, `miPolyText16`, `miPolyFillRect`, `miPolySegment`, `miFillConvexPoly`, `mfbFillPolyInvert`, `mfbFillPolyWhite`, `mfbPolyPoint`, `mfbPolyGlyphBltWhite`, `mfbFillPolyBlack`, `mfbPolyGlyphBltBlack`, `mfbPolyFillRect`, `mfbPolyGlyphBltInvert` |
| regions and exposures | `miRegionReset`, `miTranslateRegion`, `miSendExposures`, `miRegionCreate`, `miSendGraphicsExpose`, `miHandleExposures`, `miRegionExtents`, `miRegionValidate`, `miRegionDestroy`, `miRegionAppend`, `miRegionUninit`, `miPointInRegion`, `miRegionEmpty`, `miWindowExposures`, `miRectsToRegion`, `miRegionNotEmpty`, `miRegionInit`, `miHandleValidateExposures`, `miRegionCopy`, `mfbPixmapToRegion` |
| monochrome frame buffer (`mfb`) (part 1) | `mfbTEGlyphBltWhite`, `mfbCopyRotatePixmap`, `mfbBlackSolidFS`, `mfbPutImage`, `mfbGetImage`, `mfbLineSD`, `mfbLineSS`, `mfbUnrealizeFont`, `mfbDoBitbltGeneral`, `mfbSolidWhiteArea`, `mfbDoBitbltXor`, `mfbDoBitbltOr`, `mfbSolidInvertArea`, `mfbDoBitbltCopy`, `mfbCopyPlane`, `mfbSetSpans`, `mfbSolidPP`, `mfbInvertSolidFS`, `mfbValidateGC`, `mfbRealizeFont`, `mfbTileFS`, `mfbTileAreaPPWCopy`, `mfbUnnaturalTileFS`, `mfbTileAreaPPWGeneral`, `mfbDoBitbltCopyInverted`, `mfbBresS`, `mfbSegmentSS`, `mfbSegmentSD`, `mfbUnnaturalStippleFS`, `mfbSolidBlackArea`, `mfbAllocatePrivates`, `mfbReduceRop`, `mfbWhiteSolidFS`, `mfbXRotatePixmap`, `mfbWhiteStippleFS`, `mfbCopyArea`, `mfbStippleWhiteArea`, `mfbImageGlyphBltBlack`, `mfbTEGlyphBltBlack`, `mfbImageGlyphBltWhite` |
| monochrome frame buffer (`mfb`) (part 2) | `mfbDoBitblt`, `mfbStippleBlackArea`, `mfbSetScanline`, `mfbBlackStippleFS`, `mfbPushPixels`, `mfbStippleInvertArea`, `mfbInvertStippleFS` |
| other mi routines (part 1) | `miIntersect`, `miShapedWindowIn`, `miCleanupSpanData`, `miClearDrawable`, `miPostChangeSaveUnder`, `miUnion`, `miFillUniqueSpanGroup`, `miZeroLine`, `miCopyArea`, `miImageText16`, `miChangeGC`, `miClipSpans`, `miLineProjectingCap`, `miPushPixels`, `miClearToBackground`, `miSubtract`, `miSubtractSpans`, `miRectIn`, `miMarkOverlappedWindows`, `miImageText8`, `miCloseScreen`, `miRectAlloc`, `miImageGlyphBlt`, `miZeroDashLine`, `miCreateScreenResources`, `miChangeClip`, `miMarkWindow`, `miComputeCompositeClip`, `miMoveWindow`, `miFillWideEllipse`, `miDestroyGC`, `miGetImage`, `miInverse`, `miCopyGC`, `miSlideAndSizeWindow`, `miAppendSpans`, `miGetLayerWindow`, `miModifyPixmapHeader`, `miEllipseAngleToSlope`, `miValidateTree` |
| other mi routines (part 2) | `miOpqStipDrawable`, `miWideLine`, `miWideDash`, `miSetShape`, `miDestroyClip`, `miCopyClip`, `miMarkUnrealizedWindow`, `miChangeSaveUnder`, `miChangeBorderWidth`, `miCreateETandAET`, `miCopyPlane` |

### Colour frame-buffer code (`cfb`)

The MIT X sample server's colour frame-buffer routines in the 8, 16 and 32-bit depth variants (`cfb8*`, `cfb16*`, `cfb32*`): blits, lines, fills, glyphs and arcs.

| Role | Functions |
|---|---|
| bit blits | `cfbBitBlt`, `cfb16DoBitbltXor`, `cfbDoBitbltCopy`, `cfb32DoBitblt`, `cfb16DoBitbltOr`, `cfb32BitBlt`, `cfb16BitBlt`, `cfb32DoBitbltXor`, `cfbDoBitbltGeneral`, `cfb32DoBitbltOr`, `cfbDoBitblt`, `cfbDoBitbltXor`, `cfb32DoBitbltGeneral`, `cfb16DoBitbltGeneral`, `cfbDoBitbltOr`, `cfb16DoBitbltCopy`, `cfb16DoBitblt`, `cfb32DoBitbltCopy` |
| lines and segments (part 1) | `cfb8ClippedLineCopy`, `cfb32SegmentSS1RectGeneral`, `cfb16SegmentSS1Rect`, `cfb16SegmentSS1RectGeneral`, `cfb32SegmentSD`, `cfb8ClippedLineGeneral`, `cfb16SegmentSD`, `cfb32SegmentSS`, `cfb32ClippedLineGeneral`, `cfb16SegmentSS`, `cfb16LineSS1RectPreviousCopy`, `cfb16ClippedLineGeneral`, `cfb32LineSS`, `cfb32LineSD`, `cfb16SegmentSS1RectXor`, `cfb8LineSS1RectXor`, `cfb32ClippedLineCopy`, `cfb16SegmentSS1RectCopy`, `cfb16ClippedLineCopy`, `cfb16LineSS`, `cfb16LineSD`, `cfb8SegmentSS1RectGeneral`, `cfb16LineSS1Rect`, `cfb32SegmentSS1RectCopy`, `cfb16LineSS1RectCopy`, `cfbLineSD`, `cfb32LineSS1RectCopy`, `cfbLineSS`, `cfb32SegmentSS1Rect`, `cfb32LineSS1RectPreviousCopy`, `cfb32SegmentSS1RectXor`, `cfbSegmentSS`, `cfbSegmentSD`, `cfb8SegmentSS1RectCopy`, `cfb8ClippedLineXor`, `cfb8LineSS1RectCopy`, `cfb32ClippedLineXor`, `cfb8LineSS1Rect`, `cfb16LineSS1RectXor`, `cfb8SegmentSS1RectXor` |
| lines and segments (part 2) | `cfb8SegmentSS1Rect`, `cfb16LineSS1RectGeneral`, `cfb8LineSS1RectPreviousCopy`, `cfb16ClippedLineXor`, `cfb8LineSS1RectGeneral`, `cfb32LineSS1RectGeneral`, `cfb32LineSS1RectXor`, `cfb32LineSS1Rect` |
| arcs | `cfb32PolyFillArcSolidGeneral`, `cfb32ZeroPolyArcSSCopy`, `cfbPolyFillArcSolidGeneral`, `cfb16PolyFillArcSolidCopy`, `cfb16PolyFillArcSolidGeneral`, `cfbPolyFillArcSolidCopy`, `cfb16ZeroPolyArcSSXor`, `cfb32ZeroPolyArcSSXor`, `cfbZeroPolyArcSS8Xor`, `cfbZeroPolyArcSS8General`, `cfb32ZeroPolyArcSSGeneral`, `cfb16ZeroPolyArcSSCopy`, `cfb16ZeroPolyArcSSGeneral`, `cfb32PolyFillArcSolidCopy`, `cfbZeroPolyArcSS8Copy` |
| polygons and rectangles (part 1) | `cfb16PolyGlyphBlt8`, `cfb32FillPoly1RectGeneral`, `cfb8FillRectOpaqueStippled32`, `cfb16FillRectSolidCopy`, `cfbFillRectSolidCopy`, `cfb8FillRectTransparentStippled32`, `cfbFillBoxTile32sGeneral`, `cfb16FillPoly1RectCopy`, `cfb16FillPoly1RectGeneral`, `cfb16FillBoxTileOddGeneral`, `cfb16FillBoxTileOddCopy`, `cfb32FillRectTileOdd`, `cfb16FillRectSolidXor`, `cfb16FillRectTileOdd`, `cfb32FillRectTile32Copy`, `cfbPolyGlyphRop8`, `cfbFillPoly1RectGeneral`, `cfb16FillRectSolidGeneral`, `cfb16FillRectTile32Copy`, `cfb32PolyFillRect`, `cfb32FillPoly1RectCopy`, `cfb32FillBoxTile32sCopy`, `cfbFillBoxTileOddGeneral`, `cfb16PolyFillRect`, `cfbPolyGlyphBlt8`, `cfb32PolyPoint`, `cfb32FillRectSolidCopy`, `cfb16PolyPoint`, `cfb16FillBoxTile32sCopy`, `cfbPolyPoint`, `cfbPolyFillRect`, `cfbFillPoly1RectCopy`, `cfb32FillBoxTile32sGeneral`, `cfb32FillRectTile32General`, `cfbFillBoxTileOddCopy`, `cfb16FillRectTile32General`, `cfb32PolyGlyphBlt8`, `cfb32FillRectSolidXor`, `cfb32FillRectSolidGeneral`, `cfb16FillBoxTile32sGeneral` |
| polygons and rectangles (part 2) | `cfbFillRectSolidGeneral`, `cfbFillBoxTile32sCopy`, `cfbFillRectTile32Copy`, `cfbFillRectSolidXor`, `cfbFillRectTile32General`, `cfb8FillRectStippledUnnatural`, `cfbFillRectTileOdd` |
| spans, tiles and images (part 1) | `cfb16FillSpanTile32sGeneral`, `cfbFillSpanTile32sCopy`, `cfbYRotatePixmap`, `cfb32Tile32FSCopy`, `cfb32Tile32FSGeneral`, `cfb16Tile32FSCopy`, `cfbPutImage`, `cfb16Tile32FSGeneral`, `cfb16YRotatePixmap`, `cfbGetImage`, `cfb8Stipple32FS`, `cfbFillSpanTileOddGeneral`, `cfbSolidSpansGeneral`, `cfb32YRotatePixmap`, `cfb32ImageGlyphBlt8`, `cfb16SolidSpansCopy`, `cfb32GetImage`, `cfbUnnaturalTileFS`, `cfb32FillSpanTile32sGeneral`, `cfb32PutImage`, `cfb32SolidSpansGeneral`, `cfbCreatePixmap`, `cfb16FillSpanTileOddGeneral`, `cfb32CopyRotatePixmap`, `cfbSolidSpansCopy`, `cfbTile32FSGeneral`, `cfb16UnnaturalTileFS`, `cfbTile32FSCopy`, `cfb16GetImage`, `cfb16SolidSpansXor`, `cfb32UnnaturalTileFS`, `cfbCopyRotatePixmap`, `cfb16PutImage`, `cfbImageGlyphBlt8`, `cfb8SetOpaqueStipple`, `cfb32SolidSpansXor`, `cfb8OpaqueStipple32FS`, `cfb16FillSpanTile32sCopy`, `cfb16FillSpanTileOddCopy`, `cfbFillSpanTileOddCopy` |
| spans, tiles and images (part 2) | `cfb32GetSpans`, `cfb32SetSpans`, `cfb32SolidSpansCopy`, `cfb32FillSpanTile32sCopy`, `cfb16SolidSpansGeneral`, `cfbDestroyPixmap`, `cfb16GetSpans`, `cfbUnnaturalStippleFS`, `cfb16SetSpans`, `cfb16UnnaturalStippleFS`, `cfbXRotatePixmap`, `cfbFillSpanTile32sGeneral`, `cfbTEGlyphBlt8`, `cfb16CopyRotatePixmap`, `cfbSetSpans`, `cfb16XRotatePixmap`, `cfb16ImageGlyphBlt8`, `cfb32UnnaturalStippleFS`, `cfbGetSpans`, `cfb32XRotatePixmap`, `cfbSolidSpansXor` |
| other cfb routines | `cfbAllocatePrivates`, `cfb32CopyArea`, `cfb16AllocatePrivates`, `cfbCopyPlane8to1`, `cfb32ValidateGC`, `cfbResolveColor`, `cfb32CopyPlane`, `cfb16CopyPlane`, `cfbCopyPlane`, `cfbPushPixels8`, `cfbCopyPlane1to8`, `cfb32AllocatePrivates`, `cfbCopyArea`, `cfbValidateGC`, `cfb16ValidateGC`, `cfb16CopyArea` |
