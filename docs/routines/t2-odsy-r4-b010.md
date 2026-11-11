# Tier-2 routine roles, odsy batch 10

Ranked targets 250 to 274 of the located, hardware-only reading list. All 25 rendered and passed the per-entry grader. Six entries (targets 250 to 255, the `usr/gfx/arch/IP30ODSY64` libGL and libGLcore copies at 0x55aa158 to 0x3289050) are dropped here: their header path is shared by builds with different code and no build row carries those addresses, so the lint holds them at located. The nineteen below are the accepted ones. Every role is inferred from the rendered facts; none is established.

- `glXDestroyGLXPbufferSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd8213d0
  **Inferred.** Sets up the command with `__glXSetupForCommand` at 0xd8213f4, adds and then removes drawable interest through `__glXAddDrawableInterest` at 0xd821410 and `__glXRemoveDrawableInterest` at 0xd821428, and frees the private drawable state with `__glXFreeDrawablePrivate` at 0xd821450. It flushes the connection with `_XFlush` at 0xd82149c. The name says it destroys a pbuffer, and the free and flush sequence fits that.

- `glXCreateGLXPbufferSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd823b00
  **Inferred.** Sets up the command with `__glXSetupForCommand` at 0xd823b30 and adds drawable interest with `__glXAddDrawableInterest` at 0xd823b74. On a failure path it posts a GLX error through `__glXPostError` at 0xd823b9c with the constant arguments 0xb and 0x10, and it ends with `_XFlush` at 0xd823c4c. The name points to pbuffer creation.

- `ApplyParameterF` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd95e7cc
  **Inferred.** Calls `__glOdysseySetProgram` at 0xd95e9fc with the context block at [0x1010], a2 set to 0x33 or 0x39 and a3 set to 0x8000, then returns 0 or a second value at 0xd95ec94. The name and the parameter codes passed to `__glOdysseySetProgram` point to a floating-point parameter setter.

- `__glOdylc_Normal3s` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d72f4
  **Inferred.** Calls `__glSPDlistSpace` at 0xd9d735c with a0=0, a1 and a2 from entry and a3 from [0x1028], and returns that call's result at 0xd9d73fc. The name indicates the three-component normal entry compiled into a display list. It is a thin wrapper around the display-list space allocator.

- `__glOdysseyHyperpipeStereo` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda091f0
  **Inferred.** Makes one `__glOdysseyIoctl` call at 0xda0924c with request 0x6f640018 and returns 0 or 1 at 0xda09270. The name identifies the setting.

- `__glOdysseyQueryHyperpipePixelAverage` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda093b4
  **Inferred.** Makes one `__glOdysseyIoctl` call at 0xda0940c with request 0x6f640016, one below the 0x6f640018 the stereo setter uses, and returns 0 or 1 at 0xda09430. The name says it queries the hyperpipe pixel-average setting, and the 0/1 return fits a query that reports a flag.

- `__glXGetDrawableAttributes` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd823fec
  **Inferred.** Sets up the command with `__glXSetupForCommand` at 0xd824020, allocates a buffer with `malloc` at 0xd8240f4, and reads the server reply with `_XReply` at 0xd8240d0 using the request fields 0x11 and 0x1000a. The name points to a request that returns drawable attributes, and the reply read before the copy-out fits that.

- `glXSwapIntervalSGI` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x215a158
  **Inferred.** It loads the context through the global at abs 0x1028, issues an ioctl with request 0x3ee at 0x215a1bc, and passes the setup to `__glXSetupForCommand` at 0x215a208. The name suggests it sets the swap interval.

- `__glOdylc_Color3s` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a5820
  **Inferred.** Stores a value into the context block at [0x1020]:8 offset 0x15e4 (`sw` at 0x21a583c) and into the globals at abs 0x1048, 0x1058 and 0x1060, then calls `__glSPDlistSpace` at 0x21a5888 with a5 taken from [0x1048]. The name indicates the three-component short color entry compiled into a display list. The stores look like state updates made before the space request.

- `__glOdysseyHyperpipeStereo` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2239050
  **Inferred.** Makes one `__glOdysseyIoctl` call at 0x22390a0 with request 0x6f640018 and returns 0 or 1 at 0x22390bc. The name identifies the setting.

- `main` in `usr/gfx/setmon` at 0x10008e8c
  **Inferred.** Reads an environment variable through `getenv`, whose result is loaded at 0x10008ee0, and stores the parsed values into the globals `set_screen`, `server`, `pipenum`, `gfxfd` and `info` at 0x10008f7c, 0x10008f88, 0x10008fb8, 0x10008ff8 and 0x10009038. The name points to a monitor setup tool. The pipe number and file descriptor stores suggest it opens a graphics device.

- `main` in `usr/gfx/sgcombine` at 0x1000fba0
  **Inferred.** Stores to the globals `stcombineWindow` and `sffb` at 0x1000fca4 and 0x1000fd08. It calls `InitEZ__Gv` at 0x1000fbc0 and `vfcDoCommandLine` at 0x1000fbd8, passing the addresses of `combination` and `work_order`, then calls `setFallbacks__5VkAppSGPPc` at 0x1000fbe8 and allocates a 0x80-byte object with `__nw__GUi` at 0x1000fbf8. The sequence reads as the start of a command-line tool that builds an application object from its arguments.

- `DestroyContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8267a0
  **Inferred.** Calls `__glXSetupForCommand` at 0xd8267c4 and, when the field at [a1+216] is nonzero (`bne` at 0xd8267f8), frees the context through `__glXFreeContext` at 0xd82680c with a1=0x1. It then clears fields at a0+0x60, a0+0x64 and a0+0x6c and the halfword and byte at a0+108 (stores at 0xd826858 to 0xd82689c), and flushes with `_XFlush` at 0xd826864. The name and the teardown order fit a context destroy.

- `__glx_SelectBuffer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd831308
  **Inferred.** Flushes the render buffer through `__glXFlushRenderBuffer` at 0xd831354 using the pointer chain [[0x1014]+276], then stores into the buffer state at [[[0x1014]+276]+216] (offsets 0x60, 0x64 and 0x6c, and the halfword and byte at +108, stores at 0xd8313b0 to 0xd8313e0). It calls `_XFlush` at 0xd8313a0. The name matches glSelectBuffer, and the state stores fit switching the context into select mode.

- `__glx_FeedbackBuffer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd831450
  **Inferred.** Follows the same flush pattern as the select-buffer routine at 0xd831308: `__glXFlushRenderBuffer` at 0xd8314a0, stores into [[[0x1014]+276]+216] at offsets 0x60, 0x64 and 0x6c and +108 (0xd8314e0 to 0xd83152c), then `_XFlush` at 0xd8314ec. The name matches glFeedbackBuffer, and the stores mirror the select-buffer routine.

- `glXGetCurrentDisplay` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd834660
  **Inferred.** Calls `__glXInitThread` at 0xd834678 with its four arguments passed through, then returns either the value at [[[0x1014]+276]+216] or 0 at 0xd8346a4. The name is the standard GLX query for the current display. The thread-init call before the lookup suggests the per-thread state must be set up first.

- `glXGetFBConfigAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8346ac
  **Inferred.** Writes its result through the pointer in a3 (two `sw` stores to a3+0 at 0xd834968 and 0xd834978) and returns 0x0 at 0xd834964 and 0xd834974. A second path returns 0x2 at 0xd834a58, which suggests 0x2 is an error code.

- `glXChooseFBConfigWithFltSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd834f20
  **Inferred.** Calls `__glXInitialize` at 0xd835568 and allocates a temporary array with `malloc` at 0xd835674 and 0xd835860, with sizes taken from a table at ret(__glXInitialize)+32 indexed by a1 << 5. It sorts the candidates through `orderFBConfigSGIXs` at 0xd835c78 and frees the temporary blocks at 0xd83587c, 0xd835dd4 and 0xd835dfc. The name and the sort-then-free sequence point to choosing framebuffer configs that match a float attribute list.

- `glXGetVisualFromFBConfig` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd835e44
  **Inferred.** Calls `__glXOverrideVisualGetVisualInfo` at 0xd835e84 with a1=0x3 and returns either 0x0 or that call's result at 0xd835ea0. The name says it maps a framebuffer config to its visual. The routine is a thin wrapper around the visual-info helper.
