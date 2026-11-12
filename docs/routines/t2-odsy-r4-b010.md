# Tier-2 routine roles, odsy batch 10

Ranked targets 250 to 274 of the located, hardware-only reading list. All 25 rendered and passed the per-entry grader. Six entries (targets 250 to 255, the `usr/gfx/arch/IP30ODSY64` libGL and libGLcore copies at 0x55aa158 to 0x3289050) are dropped here: their header path is shared by builds with different code and no build row carries those addresses, so the lint holds them at located. The nineteen below are the accepted ones. Every role is inferred from the rendered facts; none is established.

- `glXDestroyGLXPbufferSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd8213d0
  **Inferred.** Calls `__glXSetupForCommand` at 0xd8213f4. A zero return branches at 0xd821400 to 0xd821534, past the calls below; a nonzero return falls through to `__glXAddDrawableInterest` at 0xd821410, then `__glXRemoveDrawableInterest` at 0xd821428 on the value `__glXAddDrawableInterest` returned, then `__glXFreeDrawablePrivate` at 0xd821450. It calls `_XFlush` at 0xd82149c only when the unsigned comparison at 0xd82148c falls through ([a0+112] below [a0+108]+16); when that branch is taken the call is skipped. Role (from name): destroys a pbuffer, which the add, remove and free sequence is consistent with.
  Reviewed: 2026-11-12

- `glXCreateGLXPbufferSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd823b00
  **Inferred.** Calls `__glXSetupForCommand` at 0xd823b30 (a nonzero return branches at 0xd823b40 to 0xd823b50) and `__glXAddDrawableInterest` at 0xd823b74. When `__glXAddDrawableInterest` returns zero (the `bne` at 0xd823b84 falls through) it calls `__glXPostError` at 0xd823b9c with a1=0xb, a2=0x10 and a3=0x0. Later it calls `_XFlush` at 0xd823c4c only when the unsigned comparison at 0xd823c34 falls through, then `_XReply` at 0xd823d2c. When `_XReply` returns zero it calls `__glXPostHiddenError` at 0xd823d88 with a2=0x11, then `__glXRemoveDrawableInterest` at 0xd823d9c and `__glXFreeDrawablePrivate` at 0xd823db8. `_XFlush` is not the last call. Role (from name): creates a pbuffer.
  Reviewed: 2026-11-12

- `ApplyParameterF` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd95e7cc
  **Inferred.** Compares its second argument against 0x1200, 0x1201, 0x1202, 0x1600, 0x1601, 0x1602 and 0x1603 with the `beq` chain at 0xd95e800 to 0xd95e848. Contains one call, `__glOdysseySetProgram` at 0xd95e9fc, with a0=[0x1010], a1=[[0x1010]+42664], a2=0x33 and a3=0x8000. It returns 0x0 at 0xd95ec94 or a value the facts leave unresolved. Role (from name): applies a floating-point parameter.
  Reviewed: 2026-11-12

- `__glOdylc_Normal3s` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9d72f4
  **Inferred.** Calls `__glSPDlistSpace` at 0xd9d735c with a0=0x0, a1 and a2 from entry and a3=[0x1028], only when the signed comparison at 0xd9d7348 falls through ([0x1028] below 0x4 or 0x5); when that branch is taken the call is skipped. The routine also loads and stores around the call (stores at 0xd9d73b8 to 0xd9d73f0). It returns the `__glSPDlistSpace` result or a value the facts leave unresolved at 0xd9d73fc. Role (from name): records a three-component short normal in a display list.
  Reviewed: 2026-11-12

- `__glOdysseyHyperpipeStereo` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda091f0
  **Inferred.** Makes one `__glOdysseyIoctl` call at 0xda0924c with a1=0x6f640018 and a2=sp-40. It branches at 0xda09254 on whether that call returned zero and returns 0x0 or 0x1 at 0xda09270. Role (from name): sets or queries the hyperpipe stereo setting.
  Reviewed: 2026-11-12

- `__glOdysseyQueryHyperpipePixelAverage` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda093b4
  **Inferred.** Makes one `__glOdysseyIoctl` call at 0xda0940c with a1=0x6f640016 and a2=sp-40. That constant is two below the 0x6f640018 passed by `__glOdysseyHyperpipeStereo` at 0xda0924c. It branches at 0xda09414 on whether the call returned zero and returns 0x0 or 0x1 at 0xda09430. Role (from name): queries the hyperpipe pixel-average setting.
  Reviewed: 2026-11-12

- `__glXGetDrawableAttributes` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd823fec
  **Inferred.** Calls `__glXSetupForCommand` at 0xd824020; a zero low byte of its return branches at 0xd82402c to 0xd8243a4. It calls `_XReply` at 0xd8240d0 with a1=sp-144, a2=0x0 and a3=0x0, and again at 0xd8241c4 with a1=sp-112. Registers a5=0x11 and a6=0x1000a are set at the first call, but `_XReply` takes four arguments, so they are likely not arguments. It calls `malloc` at 0xd8240f4, `_XRead` at 0xd824290 into the allocated block and `free` at 0xd824380. It returns 0x0 at 0xd824144, 0xd824224 and 0xd82427c and 0x1 at 0xd82439c. Role (from name): fetches the attributes of a drawable.
  Reviewed: 2026-11-12

- `glXSwapIntervalSGI` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x215a158
  **Inferred.** Loads the context pointer at [0x1028]. When [[0x1028]+280] is zero or a0 is not above zero it branches away (0x215a2e8, 0x215a308). Otherwise, when [[[0x1028]+280]+280] is nonzero it calls `ioctl` at 0x215a1bc with a1=0x3ee and returns 0x0 at 0x215a1d0. When that field is zero and [[[0x1028]+280]+312] is also zero it returns 0x5 at 0x215a1f0, and when that is nonzero it calls `__glXSetupForCommand` at 0x215a208 with a0 taken from the +312 field. The two calls are on exclusive paths. It returns one of 0x0, 0x5 or 0x6. Role (from name): sets the swap interval.
  Reviewed: 2026-11-12

- `__glOdylc_Color3s` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a5820
  **Inferred.** Loads the pointer at [0x1020] and stores a word at offset 0x15e4 from it (`sw` at 0x21a583c, after a load of the same offset at 0x21a582c). It loads, rather than stores, the globals at abs 0x1048 and 0x1060: [0x1060] is compared with zero at 0x21a585c and [0x1048] is compared with 0x4 at 0x21a5868. It calls `__glSPDlistSpace` at 0x21a5888 with a0=0x0, a1 and a2 from entry, a3=[0x1020], a4=0x10000 and a5=[0x1048], on paths that pass those comparisons. It returns the `__glSPDlistSpace` result at 0x21a5960 or other values. Role (from name): records a three-component short color in a display list.
  Reviewed: 2026-11-12

- `__glOdysseyHyperpipeStereo` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2239050
  **Inferred.** Makes one `__glOdysseyIoctl` call at 0x22390a0 with a1=0x6f640018 and a2=sp-48 and returns 0x0 or 0x1 at 0x22390bc. Role (from name): sets or queries the hyperpipe stereo setting.
  Reviewed: 2026-11-12

- `main` in `usr/gfx/setmon` at 0x10008e8c
  **Inferred.** Calls `getenv` at 0x10008eb4 and reads the first byte of the result at 0x10008ee0. Later calls include `strchr` at 0x10008f84 (a2=sym(server), a3=sym(set_screen)), `open` at 0x10008fe8 with a1=0x802, `ioctl` at 0x1000900c with a1=0x65 and `ioctl` at 0x100090c8 with a1=0x66. Plain stores at 0x10008f7c, 0x10008f88, 0x10008fb8, 0x10008ff8 and 0x10009038 write globals, and `set_screen`, `server`, `pipenum`, `gfxfd` and `info` appear in later call arguments, but the facts do not attribute each store to one global. It parses options with `getopt` at 0x10009240 and calls `vs2setmon`, `fglrxsetmon`, `odysetmon`, `crm_setmon`, `konasetmon`, `mgsetmon`, `npsetmon`, `xgsetmon` and `vensetmon`. Role (from name): a monitor-setup tool.
  Reviewed: 2026-11-12

- `main` in `usr/gfx/sgcombine` at 0x1000fba0
  **Inferred.** Calls `InitEZ__Gv` at 0x1000fbc0 and `vfcDoCommandLine` at 0x1000fbd8 with a0=sp-12, a1=sp-4, a2=sym(combination) and a3=sym(work_order). It then calls `setFallbacks__5VkAppSGPPc` at 0x1000fbe8 and `__nw__GUi` at 0x1000fbf8 with a0=0x80, followed by `__ct__5VkAppGPcPiPPcP16XrmOptionDescReci` at 0x1000fc2c when the allocation is nonzero. It allocates 0x84 and 0x9c bytes for `StcombineWindowClass` and `SmallFormatFileBrowser` constructors at 0x1000fc84 and 0x1000fce8. Stores at 0x1000fca4 and 0x1000fd08 follow those constructor calls and precede calls taking sym(stcombineWindow) and sym(sffb) as a1. Role (from name): the start of a command-line tool that builds an application object.
  Reviewed: 2026-11-12

- `DestroyContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8267a0
  **Inferred.** Calls `__glXSetupForCommand` at 0xd8267c4. A zero return branches at 0xd8267d4 to 0xd8268f0, skipping the rest; a1 equal to zero also skips it at 0xd8267dc. When [a1+216] is zero (the `bne` at 0xd8267f8 falls through) it calls `__glXFreeContext` at 0xd82680c with a0=a1, a1=0x1 and a2=a1; a nonzero return from it at 0xd82681c branches to 0xd8268f4, skipping the rest. It calls `_XFlush` at 0xd826864 only when the unsigned comparison at 0xd826854 falls through ([a0+112] below [a0+108]+8). Stores (`sw` +0x64 at 0xd826858 and 0xd826874, +0x6c, +0x60, `sh` +0x2, `sb` +0x0 and +0x1, `sw` +0x4, at 0xd826858 to 0xd8268b0) have base registers and values the facts leave unresolved. Role (from name): destroys a context.
  Reviewed: 2026-11-12

- `__glx_SelectBuffer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd831308
  **Inferred.** When the pointer at [[[0x1014]+276]+216] is nonzero (zero branches at 0xd83133c to 0xd83143c), calls `__glXFlushRenderBuffer` at 0xd831354 with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4] and a2 and a3 from entry. It calls `_XFlush` at 0xd8313a0 on that pointer only when the unsigned comparison at 0xd831390 falls through. Plain stores follow (`sw` +0x64, +0x6c, +0x60, +0x4, +0x8, +0x48, `sh` +0x2, `sb` +0x0 and +0x1, at 0xd831394 to 0xd831438); their base registers are unresolved, so the facts do not show which structure they update. Role (from name): the `glSelectBuffer` command.
  Reviewed: 2026-11-12

- `__glx_FeedbackBuffer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd831450
  **Inferred.** When the pointer at [[[0x1014]+276]+216] is nonzero (zero branches at 0xd831488 to 0xd831590), calls `__glXFlushRenderBuffer` at 0xd8314a0 with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4] and a2 and a3 from entry. It calls `_XFlush` at 0xd8314ec on that pointer only when the unsigned comparison at 0xd8314dc falls through. Plain stores follow (`sw` +0x64, +0x6c, +0x60, +0x4, +0x8, +0xc, +0x44, `sh` +0x2, `sb` +0x0 and +0x1, at 0xd8314e0 to 0xd83158c) with unresolved base registers. The call and store sequence has the same shape as `__glx_SelectBuffer` at 0xd831308. Role (from name): the `glFeedbackBuffer` command.
  Reviewed: 2026-11-12

- `glXGetCurrentDisplay` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd834660
  **Inferred.** Calls `__glXInitThread` at 0xd834678 with a0 to a3 passed through from entry, loads [[0x1014]+276], and returns [[[0x1014]+276]+216] when that pointer is nonzero (the `bnel` at 0xd834690) and 0x0 otherwise, at 0xd8346a4. Role (from name): the GLX query for the current display.
  Reviewed: 2026-11-12

- `glXGetFBConfigAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8346ac
  **Inferred.** Compares a2 against 0x8031, 0x186a0, 0x186a1 and 0x29 and against ranges at 0xd8346c0 to 0xd834730, and makes two tail calls (0xd83471c and 0xd83474c) through table loads with a0 to a3 passed through. It returns 0x0 at 0xd834964 and 0xd834974, each with a `sw` +0x0 in the delay slot whose base register is unresolved, and 0x2 at 0xd834a58. Role (from name): returns a framebuffer-config attribute, with 0x2 an error return.
  Reviewed: 2026-11-12

- `glXChooseFBConfigWithFltSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd834f20
  **Inferred.** Calls `__glXInitialize` at 0xd835568 and `malloc` at 0xd835674 with a0 = the field at +16 of the table entry at [ret(__glXInitialize)+32] + (a1 << 5), shifted left by 2, and again at 0xd835860 with the same size. When the second `malloc` returns zero it calls `free` at 0xd83587c on the first block. It calls `orderFBConfigSGIXs` at 0xd835c78 and calls `free` at 0xd835dd4 and 0xd835dfc. It also makes tail calls at 0xd8350dc and 0xd835488. Role (from name): chooses framebuffer configs matching a float attribute list, ordering candidates before freeing the temporary blocks.
  Reviewed: 2026-11-12

- `glXGetVisualFromFBConfig` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd835e44
  **Inferred.** Calls `__glXOverrideVisualGetVisualInfo` at 0xd835e84 with a0 from entry, a1=0x3, a2=sp-44 and a3=sp-48, only when [a1+32] is nonzero (zero branches at 0xd835e6c to 0xd835e94). It returns 0x0 or that call's result at 0xd835ea0. Role (from name): maps a framebuffer config to its visual.
  Reviewed: 2026-11-12
