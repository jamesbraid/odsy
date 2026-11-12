# Tier-1 routine roles, odsy batch 0

First 25 ranked targets from the located, hardware-only reading list. The grader accepted all 25 (3267 sentences, no mismatches, 449 calls checked with no problems), so nothing was rejected. Four of the 25 are dropped below, leaving 21 entries. Every grade below is inferred: the rendered facts give offsets, callees and constants, not the meaning of the registers they touch.

Dropped: the routine at 0x30 in `odsy_tport.o` that the inventory calls "the set graphics-context Odyssey driver request" (vendor request name `ODSY_SET_GC`), in the 6.5.30-media IP30boot, vpro-patch-4103, vpro-patch-4104 and IP35boot builds. The inventory writes that routine's name as a label with spaces, and the lint rejects a header with either the vendor name or the label, so no entry can credit it. The 6.5.30-media and IP35boot builds share one code hash and the two vpro-patch builds share another.

- `gfP_OdsyBRDMGRVTGcontrol` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x5e3c
  Evidence grade: inferred.
  It copies an 8-byte argument in with `copyin` (call at 0x5e68) and branches to the error path at 0x62d0 when the result is nonzero; that path ends in a `cmn_err` call at 0x62d8. It then calls `odsy_poll_dfifo_level` at 0x5e90 with level 0xd and again at 0x5f90 (and 0x6048) with level 0xc. State reached through a0+40 is guarded by `mutex_spinlock`/`mutex_spinunlock` on offset +34112 (calls at 0x5f64, 0x5f84, 0x6018, 0x603c and later) and a `psema`/`vsema` pair on +34096 (0x5fa0, 0x5fb4, 0x606c, 0x61a0). It also stores 0x400000 doublewords at 0x5f10, 0x5f3c, 0x6004 and later, which the facts do not explain. The routine has 20 calls and a return of 0x0, 0x5 or 0xe at 0x5ec8.
  Role (from name): the name suggests control of the video timing generator (VTG), but no timing register is visible in the facts, so the role is not derived.
  Reviewed: 2026-11-12

- `RRM_SwapBuf` in `usr/cpu/sysgen/IP30boot/rrm.o` at 0x3828
  Evidence grade: inferred.
  It calls `rrmGetResourceMask` first and branches past most of the routine to the final `rrmSetResourceMask` call when bit 0x8 of the result is clear. Otherwise it calls `rrmSwapWait` (returning early at 0x38bc when that returns nonzero), then `RRM_CheckValidFault`, which sends a negative result to a separate exit. Next come `invalidate_pane`, one call through an unnamed callee, `validate_pane_buffer`, `rrmUnMapGfx`, a `psema` and two `vsema` calls on a .bss semaphore, and `rrmSetResourceMask`. The return value is one of 0x0, 0x4, 0xe or a callee result. The unnamed callee is not resolved in the facts.
  Role (from name): the callee names suggest a buffer swap that waits for the swap, checks the fault state, refreshes the pane and drops the graphics mapping; the call order is the evidence and the arguments mostly are not followed.
  Reviewed: 2026-11-12

- `RRM_SwapBuf` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3838
  Evidence grade: inferred.
  The facts for this build match the IP30boot build at 0x3828 call for call, shifted by 0x10, so the description there holds here.
  It calls `rrmGetResourceMask` first and branches past most of the routine to the final `rrmSetResourceMask` call when bit 0x8 of the result is clear. Otherwise it calls `rrmSwapWait` (returning early at 0x38cc when that returns nonzero), then `RRM_CheckValidFault`, which sends a negative result to a separate exit. Next come `invalidate_pane`, one call through an unnamed callee, `validate_pane_buffer`, `rrmUnMapGfx`, a `psema` and two `vsema` calls on a .bss semaphore, and `rrmSetResourceMask`. The return value is one of 0x0, 0x4, 0xe or a callee result. The unnamed callee is not resolved in the facts.
  Role (from name): the callee names suggest a buffer swap that waits for the swap, checks the fault state, refreshes the pane and drops the graphics mapping; the call order is the evidence and the arguments mostly are not followed.
  Reviewed: 2026-11-12

- `GetFBConfigsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd838214
  Evidence grade: inferred.
  It calls `_XFlush` (0xd838290, behind a buffer-space branch) and `_XReply` (0xd838304) with a 0x0 argument. A nonzero `_XReply` result skips the unnamed-callee calls that follow it (0xd838328, 0xd838344). Two `malloc` calls (0xd838404, 0xd838484) are followed by a `free` on the second one's failure path (0xd8384a4) and a `memset` of a malloc'd block (0xd838504). A loop then calls `_XRead` (0xd83859c) and tests values against 0x8029, 0x186a0 and 0x186a1. At the end it calls `__glXOverrideVisualGetVisualInfo` (0xd838874), `free` (0xd8388a8) and `XFree` (0xd8388d0) and returns 0 or 1. It reads a word at +0x20 of an argument and context words at a0+0x4d0, a0+0x7c, a0+0x6c. Many other calls go through unnamed callees with a0 as the argument, each behind tests of a0+0x4d0 and a0+0x7c.
  Role (from name): the calls fit an X request, a reply read and a malloc'd list of FBConfig records, but the reply layout and the unnamed callees are not in the facts.
  Reviewed: 2026-11-12

- `ApplyParameterF` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd95e7cc
  Evidence grade: inferred.
  The range in the facts is 0xd95e7cc-0xd95ec9c (1232 bytes); the inventory row lists 1828, the gap to the next symbol. It loads the context pointer from abs 0x1010, then compares a1 with 0x1200, 0x1201 and further constants through 0x1603 and tests a byte at [0x1010]+0xc94. It loads a float from a2+0x0 with `lwc1` (0xd95e8e0), compares it with the value held at ([0x1010] + index*4)+0x9814 and, when they differ, stores it there with `swc1` (0xd95e9a0). It then stores 25 words to the fixed address 0x10000 (from 0xd95e9b4, among them 0x908091ea and floats re-read from +0x9814 and +0x9818) and calls `__glOdysseySetProgram` at 0xd95e9fc with a1=[[0x1010]+42664], a2=0x33 and a3=0x8000. The later blocks read a2+0x4, +0x8 and +0xc and compare floats.
  The role of the 0x10000 window and of the constants in a1 is not established.
  Reviewed: 2026-11-12

- `ApplyParameterI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd95eef0
  Evidence grade: inferred.
  The range in the facts is 0xd95eef0-0xd95f4dc (1516 bytes); the inventory row lists 12000, so the size is not the routine's own. It has the same shape as `ApplyParameterF`: a context pointer from abs 0x1010, a1 compared with 0x1200, 0x1201 and further constants, and an indexed slot at ([0x1010] + index*4)+0x9814 read with `lwc1` and written with `swc1`. It reads integers with `lw` from a2+0x0, +0x4, +0x8 and +0xc, stores 46 words to the fixed address 0x10000 and calls `__glOdysseySetProgram` once at 0xd95f0f4 with a2 equal to 0x33 or 0x39. It returns 0x0 or a callee value at 0xd95f4d4.
  The meaning of the 0x10000 window and of the a1 constants is not shown by the facts.
  Reviewed: 2026-11-12

- `LoadAndSendStippledQuads` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd961dd0
  Evidence grade: inferred.
  It calls `ceil` four times (0xd961e50, 0xd961f08, 0xd961fb8, 0xd9621a4), `memset` once (0xd962258, zeroing 4 bytes) and one call through an unresolved pointer at 0xd9625e4 with a0 equal to a0+0x8000. It reads words from a1 at +0x0 and +0x4 and floats from a1+0x8 and +0xc, and a word from a0+0xe4c (0xd962240, 0xd96232c). It stores 81 words to the fixed address 0x10000, with values such as 0x10443, 0xfa, 0x10046 and 0x1043f, and writes 0 to a0+0x9830.
  Role (from name): the name suggests building stipple quads and sending them, which the `ceil` rounding and the 0x10000 stores are consistent with; the facts do not show the quad layout or what the 0x10000 window is.
  Reviewed: 2026-11-12

- `DrawBitmapUsingPolyStipple` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd96284c
  Evidence grade: inferred.
  The range in the facts is 0xd96284c-0xd96358c (3392 bytes); the inventory row lists 16292. It reads a0+0x165c4 and a0+0x165bc early (0xd96289c, 0xd9628ac). The named calls come in this order: `__glOdysseyIoctl` (0xd9629e8), `__glOdysseyUpdateRasterPos` (0xd962a8c), `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` (0xd962a9c), 24 calls through unresolved pointers, `__glOdysseyGetNumHWClipPlanes` (0xd962f64), `__glOdysseyValidateHardware` (0xd963068), `LoadAndSendStippledQuads` (0xd9630a0), 12 more unresolved calls, and `__glSetError` (0xd96356c). It stores 96 words to the fixed address 0x10000.
  Role (from name): the order reads as raster-position setup, hardware validation, then delegation to the stipple sender; the context offsets and the 0x10000 window are not named in the facts.
  Reviewed: 2026-11-12

- `__glOdyim_Clear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd966bb0
  Evidence grade: inferred.
  It reads the context pointer from abs 0x1010 and a value from abs 0x1018, and a word at [0x1010]+0x16964 (0xd966be0, 0xd966d84, 0xd966e48). It reads and writes [0x1010]+0x7bfc and stores 0 and then 2 to abs 0x1018. It calls `__glSetError` with 0x502 (0xd966c54) and 0x501 (0xd966c7c), two unresolved calls (0xd966c2c, 0xd966ccc), `__glOdysseyIoctl` with request 0x6f64000d (0xd966e34), `__glOdysseyWindowToNormalizedEyeZ` (0xd967044), then `__glOdysseySetDrawbuf` (0xd967148) followed by `__glOdysseyClear` (0xd967184), and a second `__glOdysseySetDrawbuf` (0xd9671a4) followed by a second `__glOdysseyClear` (0xd9671e8). It stores 7 words to the fixed address 0x10000.
  Role (from name): the `__glOdyim_` prefix suggests an immediate-mode entry point for the clear, which fits the draw-buffer-then-clear pairs; the facts do not show what the two passes select.
  Reviewed: 2026-11-12

- `__glOdysseyClear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd967240
  Evidence grade: inferred.
  It calls `__glOdysseyValidateHardware` at 0xd9677d8, then `__glOdysseyIoctl` at 0xd96788c with request 0x6f64000e and a buffer at sp-136, then `__glOdysseyValidateHardware` again at 0xd967918. It reads a0+0x7bfc, +0x7c00 and +0x96a4 and also writes a0+0x7bfc (14 stores) and a0+0x7c00 (9 stores), and stores 57 words to the fixed address 0x10000. The return value is not followed.
  Role (from name): the ioctl and the 0x10000 stores suggest it submits the clear to the board; the field meanings are not named in the facts, so the clear scope and buffer are not shown.
  Reviewed: 2026-11-12

- `ApplyViewport` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd968540
  Evidence grade: inferred.
  It reads integers at a0+0x698, +0x69c, +0x6a0, +0x6a4, +0xe74 and +0xe78 and floats at +0xdd4, +0xe58 and +0xe5c, and writes floats to a0+0x6c0, +0x6c4 and +0x174. It calls `__glOdysseyFindWindowSize` (0xd968568), `__glUpdateViewport` (0xd96857c), `__glOdysseyImageDescribeWindow` four times (0xd968638, 0xd968658, 0xd968690, 0xd9686b0) and one call through an unresolved pointer at a0+0x2ec4 (0xd9686c4). It toggles a byte at a0+0x74c4, stores 2 to abs 0x1018, sets bit 0x1 in a0+0x2e24, and ends with 7 word stores to the fixed address 0x10000 (0xd968788 to 0xd9687a4, values 0x10443, 0xfa, 0x10046, 0x10046, 0x10456 and a word read from a0+0x9828).
  Role (from name): the routine takes the viewport from the context and sends it on; the 0x10000 window is where it ends up, but what that window is is not established.
  Reviewed: 2026-11-12

- `__glOdysseyInitDefaultValues` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd96c9a0
  Evidence grade: inferred.
  It calls `bzero` (0xd96cce0), 81 `__glOdyim_` setters (43 distinct, among them DrawBuffer, CullFace, FrontFace, ShadeModel, Fogfv, ColorMask, DepthMask, StencilOp, DepthFunc, BlendFunc, Materialfv and many Disable calls), `__glim_PolygonStipple`, `__glOdysseyImageInit` (0xd96d178), the four initialisers `__glOdysseyInitLighting`, `__glOdysseyInitFragmentLighting`, `__glOdysseyInitFragmentMaterial` and `__glOdysseyTextureDriverInit` (0xd96dae4 to 0xd96db20) and `getenv` (0xd96dcac). It stores a byte 1 at a0+0x16740, a double at a0+0x165d8 and the word 0x380 at a0+0xa20c, and 74 words to the fixed address 0x10000.
  Role (from name): the routine clears the context and then sets default GL state through the setters; the values passed to most setters are not followed by the facts.
  Reviewed: 2026-11-12

- `ApplyMaterialF` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd986c8c
  Evidence grade: inferred.
  The range in the facts is 0xd986c8c-0xd98849c (6160 bytes). It makes no calls. It loads floats from a2 at +0x0, +0x4, +0x8 and +0xc with `lwc1` and a series of float constants from abs 0xdaedea0 through 0xdaedec8, loads halfwords and words from a0, and writes words at a0+0x0 through +0x1c and halfwords at a0+0x2 through +0xe. It reads the context pointer from abs 0x1010, stores 21 words to the fixed address 0x10000 (values including 0x10046) and writes 0 to [0x1010]+0x9830.
  Role (from name): it applies a floating-point material parameter; what it writes through the 0x10000 window is not shown.
  Reviewed: 2026-11-12

- `ApplyMaterialI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd98849c
  Evidence grade: inferred.
  The range in the facts is 0xd98849c-0xd989f0c (6768 bytes); the inventory row lists 10020. It makes no calls. It reads the context pointer from abs 0x1010, loads 17 floats from [0x1010]+0xdf0 and 18 words from a2 at +0x0, +0x4, +0x8 and +0xc, and float constants from abs 0xdaeded0 onward. It writes 35 words and halfwords through a0 and 21 words to the fixed address 0x10000, and writes 0 to [0x1010]+0x9830.
  Role (from name): it is the integer-argument counterpart of `ApplyMaterialF`; the case structure and the 0x10000 window are not read here.
  Reviewed: 2026-11-12

- `AddConvolutionBorders` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9a6f0c
  Evidence grade: inferred.
  It calls `floorf` 100 times, `ceilf` 6 times, `__glOdysseyImageMovePixelsTexture` 26 times, `__glOdysseyProgramTexFilter` 7 times and `LoadTextureFilter` 6 times; the first are `__glOdysseyProgramTexFilter` at 0xd9a714c, `LoadTextureFilter` at 0xd9a7200 and `__glOdysseyImageMovePixelsTexture` at 0xd9a7298. It reads 12 float constants from abs 0xdafa680 through 0xdafa6ac and stores 12 words to the fixed address 0x10000.
  Role (from name): it works out the border pixels a convolution filter needs and moves them through the texture pixel-move path; the facts do not show the border rule.
  Reviewed: 2026-11-12

- `__glOdysseyImageMovePixelsCopy` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9c6490
  Evidence grade: inferred.
  It calls `OdysseyImageCalcXferCopyParams` (0xd9c6754), `ImageCalcDmaFieldOffsets` twice, `__glOdysseyOpenPMObjReference` (0xd9c69b8) and `__glOdysseyOpenPMObjWriteReference` (0xd9c6a2c), `__glOdysseyImageCalcPixelModeFields`, `__glOdysseyIoctl` (0xd9c71ec), `ImageUpdateRasterTokensForDrawable`, `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ`, `__glOdysseyValidateHardware` (0xd9c7598), then `ImageCopyPixelBody` eight times (0xd9c76a0 to 0xd9c8020), and finally `__glOdysseyClosePMObjReference` (0xd9c8098) and `__glOdysseyClosePMObjWriteReference` (0xd9c80d8). `__glSetError` is called after the open, calc and close calls. It also calls `memset` twice and `ceilf` four times early on, and stores 67 words to the fixed address 0x10000.
  Role (from name): a pixel-copy move that opens read and write pixel-memory references, copies the body in eight cases and closes both; the case selection is not shown.
  Reviewed: 2026-11-12

- `__glOdysseyImageMovePixelsDMAtoGfx` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9c8ba0
  Evidence grade: inferred.
  It calls `memset` twice and `ceilf`, then `__glOdysseyImageCalcXferWriteParams` (0xd9c8df4), `__glSpecElementsPerGroup` and `__glSpecBytesPerElement` (0xd9c8e88, 0xd9c8ea4), `ImageCalcDmaFieldOffsets` (0xd9c92f4), `__glOdysseyOpenPMObjWriteReference` (0xd9c944c), `ImageToDmaHostPixelSize` (0xd9c973c), `__glOdysseyImageCalcPixelModeFields`, `__glOdysseyIoctl` (0xd9c9c34), `ImageUpdateRasterTokensForDrawable`, `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` and `__glOdysseyValidateHardware` (0xd9c9f80). After the validate it calls `SendPixelsAsUserPIO` at 0xd9ca294, `__glOdysseyAssignToPMObj` at 0xd9ca334 and 0xd9ca528, `SendPixelsAsUserPIO` again at 0xd9ca764 and 0xd9caa60, and `__glOdysseyClosePMObjWriteReference` at 0xd9cab74. It stores 135 words to the fixed address 0x10000.
  Role (from name): the routine appears to prepare a DMA host-to-graphics move and send pixels by programmed I/O on some paths; the condition that picks between them is not visible in the facts.
  Reviewed: 2026-11-12

- `__glOdysseyCreatePMObj` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d83c8
  Evidence grade: inferred.
  It calls `__glOdysseyIoctl` first (0xd9d8458, request 0x6f640001, buffer at sp-72), then `InitCSetCursor` (0xd9d8498) on [a0+93332] (a0+0x16c94), `NextCSetElem` (0xd9d84b0), `LookupKnownGroup` (0xd9d84d4), `RemoveKnownGroup` (0xd9d84f4) and a second `NextCSetElem` (0xd9d850c).
  Role (from name): the name suggests it creates a pixel-memory object; the facts do not show what is allocated or why known groups are removed.
  Reviewed: 2026-11-12

- `__glOdysseyDestroyPMObjGroup` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d8598
  Evidence grade: inferred.
  It calls `InitCSetCursor` (0xd9d85d4) on [a0+93332] (a0+0x16c94), `NextCSetElem` (0xd9d85ec), `LookupKnownGroup` (0xd9d8610) with the word at a1, `RemoveKnownGroup` (0xd9d8630), a second `NextCSetElem` (0xd9d8648) and last `__glOdysseyIoctl` (0xd9d8678) with request 0x6f640002. It writes -1 to the word at a1 (0xd9d8694).
  Role (from name): the name suggests it tears down a group of pixel-memory objects; the facts show only the calls and the write of -1.
  Reviewed: 2026-11-12

- `__glOdysseyReadFromPMObj` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d89d0
  Evidence grade: inferred.
  It calls `CheckMMXfrArgs` (0xd9d8a88) with a0 equal to a stack block, then `__glOdysseyIoctl` (0xd9d8ab0) with request 0x6f640006 and the same stack block. It stores 0 to a0+0x21ee8 before the ioctl (0xd9d8ae8) and a second word there after it (0xd9d8af8).
  Role (from name): the name suggests it reads from a pixel-memory object; the facts do not show the transfer direction or the argument layout.
  Reviewed: 2026-11-12

- `OpenPipeMemReference` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d8b10
  Evidence grade: inferred.
  The range in the facts is 0xd9d8b10-0xd9d8d14 (516 bytes); the inventory row lists 2644. It stores 17 words to the fixed address 0x10000 in two groups (values such as 0x10443, 0xfa, 0x10046, 0x10019, 0x96, 0x10658 and 0x120000) with a word store to a0+0x9830 between them. It calls `__glOdysseyMIPS_SYNC` (0xd9d8c68, a0=-0x1, a1=0x8), then `__glOdysseyIoctl` (0xd9d8cbc, request 0x6f640003, buffer at sp-24), then `__glOdysseyMIPS_SYNC` again (0xd9d8ce8).
  Role (from name): the name suggests it opens a pipe-memory reference; the 0x10000 window recurs across this batch and its meaning is not established here.
  Reviewed: 2026-11-12
