# Tier-1 routine roles, odsy batch 0

First 25 ranked targets from the located, hardware-only reading list. The grader accepted all 25 (3267 sentences, no mismatches, 449 calls checked with no problems), so nothing was rejected. Four of the 25 are dropped below, leaving 21 entries. Every grade below is inferred: the rendered facts give offsets, callees and constants, not the meaning of the registers they touch.

Dropped: the routine at 0x30 in `odsy_tport.o` that the inventory calls "the set graphics-context Odyssey driver request" (vendor request name `ODSY_SET_GC`), in the 6.5.30-media IP30boot, vpro-patch-4103, vpro-patch-4104 and IP35boot builds. The inventory writes that routine's name as a label with spaces, and the lint rejects a header with either the vendor name or the label, so no entry can credit it. The 6.5.30-media and IP35boot builds share one code hash and the two vpro-patch builds share another.

- `gfP_OdsyBRDMGRVTGcontrol` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)` at 0x5e3c
  `gfP_OdsyBRDMGRVTGcontrol`, 1200 bytes in the IP30boot odyssey.a. It copies an 8-byte argument in with `copyin` (jal at 0x5e68) and polls `odsy_poll_dfifo_level` at levels 0xd and 0xc. State at a0+40 is guarded by `mutex_spinlock` on offset +34112 and a psema/vsema pair on +34096. A failed copyin reaches a `cmn_err` call at 0x62d8. The name suggests VTG (video timing) control, but no timing register is visible in the facts, so that reading is inferred from the name.
  Evidence grade: inferred.

- `RRM_SwapBuf` in `usr/cpu/sysgen/IP30boot/rrm.o` at 0x3828
  `RRM_SwapBuf`, 668 bytes. It calls `rrmGetResourceMask`, `rrmSwapWait`, `RRM_CheckValidFault`, `invalidate_pane`, `validate_pane_buffer`, `rrmUnMapGfx` and `rrmSetResourceMask`, and uses psema/vsema. Read from the callee names, it gets a resource mask, waits for the swap, checks for a fault, invalidates and validates the pane buffer, unmaps the graphics mapping, and sets the mask again. The call order is the only evidence for that sequence; the arguments are not in the facts.
  Evidence grade: inferred.

- `RRM_SwapBuf` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3838
  `RRM_SwapBuf`, 668 bytes, the same callees as the IP30boot copy. The swap sequence above applies by the same callee evidence.
  Evidence grade: inferred.

- `GetFBConfigsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd838214
  `GetFBConfigsSGIX`, 1792 bytes, o32. It calls `_XFlush`, `_XReply`, `_XRead`, `malloc`, `memset`, `free`, `XFree` and `__glXOverrideVisualGetVisualInfo`. It reads the argument at a1+0x20 and context fields at a0+0x4d0 and a0+0x6c. The Xlib calls fit a request, a reply read and a malloc'd list of visual configs, but the reply layout is not in the facts.
  Evidence grade: inferred.

- `ApplyParameterF` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd95e7cc
  `ApplyParameterF`, 1828 bytes, o32. It loads a float value from a2 with `lwc1` and reads a context pointer from abs 0x1010. It stores through an indexed slot at [0x1010]+0x9814 and to the fixed address 0x10000 about 25 times. It calls `__glOdysseySetProgram`. The routine looks like it writes a program parameter into context state and then into the 0x10000 window. The meaning of that window is not established.
  Evidence grade: inferred.

- `ApplyParameterI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd95eef0
  `ApplyParameterI`, 12000 bytes, o32. It is the integer-argument counterpart of ApplyParameterF: it reads from a2 with `lw`, uses the same context pointer at abs 0x1010, and writes to the same indexed slot at +0x9814. It calls `__glOdysseySetProgram`. The larger size suggests more per-case handling; I read only the opening facts.
  Evidence grade: inferred.

- `LoadAndSendStippledQuads` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd961dd0
  `LoadAndSendStippledQuads`, 2684 bytes, o32. It calls `memset` and `ceil`, and reads words from a1 at offsets 0 and 4 and from a0 at +0xe4c. The name points at building stipple quads and sending them, which the `memset` and `ceil` calls are consistent with. The facts do not show the quad layout.
  Evidence grade: inferred.

- `DrawBitmapUsingPolyStipple` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd96284c
  `DrawBitmapUsingPolyStipple`, 16292 bytes, o32, the largest routine in this batch. It calls `__glOdysseyUpdateRasterPos`, `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ`, `__glOdysseyGetNumHWClipPlanes`, `__glOdysseyValidateHardware`, `__glOdysseyIoctl` and `LoadAndSendStippledQuads`. It reports errors through `__glSetError`. Its context reads at a0+0x165c4 and a0+0x165bc suggest a large per-context block, but the offsets are not named. The order reads as raster-position setup, hardware validation, then delegation to the stipple sender.
  Evidence grade: inferred.

- `__glOdyim_Clear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd966bb0
  `__glOdyim_Clear`, 1680 bytes, o32. It calls `__glOdysseyWindowToNormalizedEyeZ`, `__glOdysseySetDrawbuf`, `__glOdysseyClear`, `__glOdysseyIoctl` and `__glSetError`. It reads the context pointer from abs 0x1010 and 0x1018, and a table at [0x1010]+0x16964. The `__glOdyim_` prefix looks like an immediate-mode entry, and the callee list sets the draw buffer and then calls the clear routine. The dispatch role is inferred from the name.
  Evidence grade: inferred.

- `__glOdysseyClear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd967240
  `__glOdysseyClear`, 2324 bytes, o32. It calls `__glOdysseyValidateHardware` and `__glOdysseyIoctl`, and reads fields at a0+0x7bfc, +0x7c00 and +0x96a4. The sequence is validate, then an ioctl that performs the clear. The field meanings are not named in the facts, so the clear scope and buffer are unknown.
  Evidence grade: inferred.

- `ApplyViewport` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd968540
  `ApplyViewport`, 636 bytes, o32. It reads integer viewport fields at a0+0x698, +0x69c, +0x6a0, +0x6a4, +0xe74 and +0xe78, and float fields at +0xdd4 and +0xe5c. It calls `__glOdysseyFindWindowSize`, `__glUpdateViewport` and `__glOdysseyImageDescribeWindow`. The routine takes the viewport from the context, looks up the window size, and pushes the viewport state. The facts do not show whether the values are written to hardware.
  Evidence grade: inferred.

- `__glOdysseyInitDefaultValues` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd96c9a0
  `__glOdysseyInitDefaultValues`, 5000 bytes, o32. It calls `bzero`, `__glOdysseyImageInit` and about twenty `__glOdyim_` state setters, including DrawBuffer, CullFace, ShadeModel, Fogfv, ColorMask, DepthMask, StencilOp and DepthFunc. It stores a byte at a0+0x16740, a double at a0+0x165d8 and a word at a0+0xa20c. The routine clears the context and then sets the default GL state through those setters. The values it writes are not in the facts.
  Evidence grade: inferred.

- `ApplyMaterialF` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd986c8c
  `ApplyMaterialF`, 6160 bytes, o32. It makes no calls. It reads float material values from a2 at +0x0 and +0x4 with `lwc1`, reads a pair of constants from abs 0xdaedea0 and 0xdaedea4, and reads and writes words at a0+0x0 and halfwords at a0+0x2. The routine loads a float material parameter and stores it into the block at a0 without leaving the function.
  Evidence grade: inferred.

- `ApplyMaterialI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd98849c
  `ApplyMaterialI`, 10020 bytes, o32. It makes no calls. It reads 17 floats from a context block at [0x1010]+0xdf0 and six words from a2. It is the integer-argument counterpart of ApplyMaterialF, and the larger size reflects more cases. I did not read the case structure.
  Evidence grade: inferred.

- `AddConvolutionBorders` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9a6f0c
  `AddConvolutionBorders`, 11852 bytes, o32. It calls `__glOdysseyProgramTexFilter`, `LoadTextureFilter`, `__glOdysseyImageMovePixelsTexture`, `floorf` and `ceilf`. It reads constants from abs 0xdafa680 through 0xdafa68c. The routine works out the border pixels a convolution filter needs at the image edges and moves them through the texture pixel-move path.
  Evidence grade: inferred.

- `__glOdysseyImageMovePixelsCopy` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9c6490
  `__glOdysseyImageMovePixelsCopy`, 8040 bytes, o32. It computes transfer parameters (`OdysseyImageCalcXferCopyParams`, `ImageCalcDmaFieldOffsets`), opens read and write pixel-memory references, copies the pixel body with `ImageCopyPixelBody`, and then closes both references. It also calls `__glSetError` and `__glOdysseyIoctl`. The open, copy, close order is clear from the callees.
  Evidence grade: inferred.

- `__glOdysseyImageMovePixelsDMAtoGfx` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9c8ba0
  `__glOdysseyImageMovePixelsDMAtoGfx`, 8852 bytes, o32. It calculates write transfer parameters, sets up DMA host pixel sizes, and opens a write pixel-memory reference. It also has `SendPixelsAsUserPIO`, a programmed-I/O path, next to the DMA setup. The routine seems to choose between DMA and PIO for host-to-graphics pixel moves, but the selection condition is not visible in the facts.
  Evidence grade: inferred.

- `__glOdysseyCreatePMObj` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d83c8
  `__glOdysseyCreatePMObj`, 464 bytes, o32. It calls `__glOdysseyIoctl`, `InitCSetCursor`, `NextCSetElem`, `LookupKnownGroup` and `RemoveKnownGroup`. It uses the cursor helpers to walk a set, looks up a known group, and issues an ioctl. The object-creation reading comes from the name; the facts do not show what gets allocated.
  Evidence grade: inferred.

- `__glOdysseyDestroyPMObjGroup` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d8598
  `__glOdysseyDestroyPMObjGroup`, 284 bytes, o32. It walks a group with `InitCSetCursor` and `NextCSetElem`, calls `LookupKnownGroup` and `RemoveKnownGroup`, and issues `__glOdysseyIoctl`. It reads from a0+0x16c94 and writes once to the argument at a1. The group teardown reading comes from the callee names.
  Evidence grade: inferred.

- `__glOdysseyReadFromPMObj` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d89d0
  `__glOdysseyReadFromPMObj`, 320 bytes, o32. It calls `CheckMMXfrArgs` and `__glOdysseyIoctl`, and writes two words at a0+0x21ee8. The routine checks the transfer arguments and issues an ioctl to read from a pixel-memory object. The read direction comes from the name.
  Evidence grade: inferred.

- `OpenPipeMemReference` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d8b10
  `OpenPipeMemReference`, 2644 bytes, o32. It writes about 17 words to the fixed address 0x10000 and one word to a0+0x9830. It calls `__glOdysseyMIPS_SYNC` and `__glOdysseyIoctl`. The routine appears to set up a pipe-memory reference through the 0x10000 window, then issue a MIPS sync and an ioctl. The 0x10000 window recurs across this batch, and its meaning is not established here.
  Evidence grade: inferred.
