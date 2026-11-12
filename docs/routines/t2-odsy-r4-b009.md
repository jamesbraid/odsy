# Tier-2 routine roles, odsy batch 9

Targets 225 to 249 of the t2list ranking (`--from-grade located`). Twelve are GLX client routines in the
Odyssey `libGL.so` and `libGLcore.so` builds for IP30ODSY32, IP30ODSY64 and IP30ODSY, one is the X server
`main` in `usr/gfx/arch/GENERIC/Xsgi`, and the rest are display-list and driver entry points in the same
libraries. Every role below comes from the rendered facts (offsets, callees, constants, return values).
The name is used only where it is cited as a hint, and each role is inferred.

- `glXQueryHyperpipeNetworkSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cb918
  **Inferred.** A GLX request routine that waits for a reply. It calls `__glXSetupForCommand` at 0xd8cb944, reads `[a0+1232]`, and stores request fields (byte, halfword and word stores at small offsets) once the buffer-room test at 0xd8cb978 passes; when the buffer lacks room it calls `_XFlush` at 0xd8cbb44. It calls `_XReply` at 0xd8cb9dc with a stack buffer as a1 and a2 and a3 zero. In the reply handling it calls `malloc` (0xd8cba7c) and reads into the result with `_XRead` (0xd8cbaf4), and calls `_XEatData` (0xd8cba0c, and 0xd8cba98 when `malloc` returns 0). Role (from name): a query of the hyperpipe network; the facts do not show the reply layout.
  Reviewed: 2026-11-12 (sonnet)

- `glXHyperpipeConfigSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cbba0
  **Inferred.** A GLX request routine with a prologue like `glXQueryHyperpipeNetworkSGIX`: it calls `__glXSetupForCommand` at 0xd8cbbdc and reads `[a0+1232]`. It branches on its arguments a2 (<= 0), a3 (zero) and a1 (< 0), stores request fields at small offsets, runs a byte-copy loop (`lbu` and `sb`), calls `_XReply` at 0xd8cbd50 with a stack buffer as a1, and calls `_XFlush` at 0xd8cbe44 when the buffer lacks room. It returns 0x0 at 0xd8cbdc8 and 0x5b at four other exits (for example 0xd8cbde8). Role (from name): setting the hyperpipe configuration.
  Reviewed: 2026-11-12 (sonnet)

- `glXQueryHyperpipeConfigSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cc044
  **Inferred.** A GLX query routine. It calls `__glXSetupForCommand` at 0xd8cc070 and `_XReply` at 0xd8cc118 (a stack buffer as a1, a2 and a3 zero). After a nonzero `_XReply` result it calls `malloc` at 0xd8cc19c; when that succeeds it reads into the result with `_XRead` at 0xd8cc214, and when it returns 0 it calls `_XEatData` at 0xd8cc1b4 instead. It calls `_XFlush` at 0xd8cc268 when the buffer lacks room for the request. It returns 0x0 on most exits; the return at 0xd8cc25c is unresolved. Role (from name): a query of the hyperpipe configuration.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color3s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51790
  **Inferred.** A display-list entry point that reserves space for its command. It loads through a pointer and tests `[0x1028]` against another value (branch at 0xda517dc); when `[0x1028]` is the lower one it calls `__glSPDlistSpace` at 0xda517f8 with a0=0, and the branch at 0xda51818 tests that result against zero. The return at 0xda5187c is either `[0x1028]` or the call's result, and the return at 0xda5189c is the call's result. Role (from name): `Color3s` fits a vertex-attribute entry point; the body shown here is the space-reservation path.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color4ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52e10
  **Inferred.** The same shape as `__glOdylc_Color3s` at 0xda51790: it tests `[0x1028]` (branch at 0xda52e5c) and, when that is the lower value, calls `__glSPDlistSpace` at 0xda52e7c with a0=0. The return at 0xda52f08 is either `[0x1028]` or the call's result, and the return at 0xda52f28 is the call's result.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Clear` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda54070
  **Inferred.** A clear entry point that works on the context through the pointer at abs 0x1010 (it reads fields at offsets 0x2d60, 0xc7c, 0xc90, 0x7a44 and 0x16658, and loads and stores at 0x9750). It calls `__glOdysseyClear` at 0xda543c8 and 0xda544fc, `__glOdysseySetDrawbuf` at 0xda544b4 and 0xda54518, `__glOdysseyWindowToNormalizedEyeZ` at 0xda54370 and `__glOdysseyIoctl` with request 0x6f64000d at 0xda54614, and calls `__glSetError` with 0x502 (0xda540a8) and 0x501 (0xda540f8). Role (from name): the `im` in the name suggests the immediate-mode variant; the facts do not show what the Z conversion is for.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyClear` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda54680
  **Inferred.** A 1832-byte routine that branches on context state before it returns. It calls `__glOdysseyValidateHardware` at 0xda54a6c when `[a0+92368]` is nonzero, with `[a0+38340]` as a1 and 0x10415 as a2. It also branches on `[a0+38736]` (zero or nonzero) and on `[a0+31376]` against bit 0x40, and on further values the facts leave unresolved. The one return shown (0xda54c5c) is 0x10000 or 0x10046.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyFindWindowSize` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda55150
  **Inferred.** A 328-byte routine. It loads a float from `a0+0x19cb4` and stores floats to `a0+0x19cac` and `a0+0x19cb0` (`swc1` at 0xda551b4 and 0xda551c8). It compares `[a0+3692]` and `[a0+3696]` with the results of an unresolved call (0xda55190), and calls `__glChangeWindowSize` at 0xda551e8 with a3 = `a0+0x20000` when either differs. It compares `[a0+3700]` and `[a0+3704]` with a second unresolved call's results and calls `__glChangeReadWindowSize` at 0xda55224 when either differs, and when `[a0+92400]` is nonzero it calls `__glChangeWindowSize` again at 0xda5524c with `[a0+1696]` and `[a0+1700]` as a1 and a2. Role (from name): finds the window size; the facts do not show what the unresolved calls return.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyDriverMakeCurrent` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabd290
  **Inferred.** It reads `[a0+0xcdc]` and `[a0+0xd7c]` (each tested against zero) and the bytes at `a0+0xc8c` and `a0+0xd2c`, and calls `__glOdysseyIoctl` at 0xdabd30c with request 0x6f640008 and a stack buffer as a2. When the result is not negative it stores words at `a0+0x16c50` through `a0+0x16c74` and returns 0x1 at 0xdabd3a4; other paths store further words from `a0+0x16c78` up to `a0+0x16cc0`. On a negative result it makes an unresolved call (0xdabd450) and returns 0x0. It calls `bzero` three times: 0x50 bytes at `a0+93304` (0xdabd480), 0x14 bytes at `a0+93344` (0xdabd4dc) and 0x14 bytes at `a0+93364` (0xdabd4f4). Role (from name): binds a drawable to the current context; the facts do not show where the stored words come from.
  Reviewed: 2026-11-12 (sonnet)

- `RGBSendClippedBmFmTN` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacb950
  **Inferred.** A 676-byte routine that makes no calls in the rendered body. It loads a byte at offset +0xb8 and floats with `lwc1` at offsets +0x10 to +0x1c, +0x30 to +0x3c and +0x90 to +0xc8, compares `[[0x1010]+1416]` with 0x81fa (branch at 0xdacb9d4), and loads further floats at +0x170 to +0x188 on the path that branch takes. It returns 0xffffffff8080d005 at 0xdacbb10. Role (from name): a clipped bitmap send to the RGB path; the facts do not show which structure the offsets belong to.
  Reviewed: 2026-11-12 (sonnet)

- `__glXOpenGraphicsDevice` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf707bc
  **Inferred.** The branch at 0xcf707d8 goes to 0xcf70808 when a0 >= 0x41, and the routine reads the per-device table at `[0x1028]:8 + a0<<2` (word at +0x4, and +0x104 on the later path). It calls `open` at 0xcf70838 with the path at 0xcfa35f0 and flags 0x802, `fcntl` at 0xcf70858 on the descriptor with command 2 and argument 5, and `ioctl` at 0xcf708fc on the descriptor with request 0x65 and the table word at +0x104 as a3. It calls `__glXFatal` at 0xcf70818, 0xcf70890, 0xcf708c4, 0xcf708e0 and 0xcf70940, with messages at 0xcfa35d0 to 0xcfa3630. Role (from name): opens a graphics device by index.
  Reviewed: 2026-11-12 (sonnet)

- `__glXGetDrawableAttributes` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf865dc
  **Inferred.** A request-and-reply routine over the X connection. It calls `__glXSetupForCommand` at 0xcf8660c and, when that returns nonzero, `_XReply` at 0xcf866b4 or 0xcf867a8 with a stack buffer as a1. When `malloc` (0xcf866d8) returns nonzero it reads into the result with `_XRead` (0xcf86830), clears a2 with `memset` (0x30 bytes), stores into a2 (words at +0x0, +0x10 and +0x14, doublewords at +0x8, +0x18 and +0x28, bytes at +0x20 and +0x21), and releases the buffer with `free` (0xcf86914). It returns 0x1 at 0xcf86930 and 0x0 on the failure exits. Role (from name): a drawable-attribute query.
  Reviewed: 2026-11-12 (sonnet)

- `glXWaitVideoSyncSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf87734
  **Inferred.** It loads the table pointer at `[0x1028]:8` and reads table words at +0x118 (a pointer, tested for zero, with a word at +0x118 inside it), +0x108 and +0x128. Early tests on the table entries and on a0 (<= 0) and a1 (< 0) lead to returns of 0x6 (0xcf8778c) or 0x5 (0xcf8779c) that do not reach the `ioctl`. Otherwise it calls `ioctl` at 0xcf877d4 with a descriptor read from the table, request 0x3ff and a stack buffer as a2, and returns 0x0 at 0xcf877f4. Role (from name): the SGI video-sync wait; the facts do not show what request 0x3ff means.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color4b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd56530
  **Inferred.** The same shape as `__glOdylc_Color3s`: it tests `[0x1048]` (branch at 0xbd5657c) and, when that is the lower value, calls `__glSPDlistSpace` at 0xbd5659c with a0=0. The return at 0xbd56628 is either `[0x1048]` or the call's result, and the return at 0xbd56648 is the call's result.
  Reviewed: 2026-11-12 (sonnet)

- `ApplyMaterialF` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd741a0
  **Inferred.** A 1764-byte routine that makes no calls in the rendered body. It compares a1 against 0x1200 to 0x1202 and 0x1600 to 0x1602, and tests floats loaded with `lwc1` against 1.0 with `c.le.d`. It loads words from +0xa098 through +0xa0d4 and stores them, and returns the word loaded from `[[0x1020]:8+41160]` at 0xbd7434c. Role (from name): a single-float material setter; the facts do not show which material fields it targets.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Normal3s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdae430
  **Inferred.** The reservation shape again: it calls `__glSPDlistSpace` at 0xbdae484 with a0=0 and returns
  either `[0x1060]+4` (at 0xbdae500) or the call's result (at 0xbdae528).
  Reviewed: 2026-11-12 (sonnet)

- `OpenPipeMemReference` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdafa70
  **Inferred.** A 496-byte routine. It calls `__glOdysseyMIPS_SYNC` at 0xbdafb7c, then `__glOdysseyIoctl` at 0xbdafbe0 with request 0x6f640003 and a stack buffer as a2, and calls `__glOdysseyMIPS_SYNC` again at 0xbdafc08 on the path where the ioctl result is nonzero. It returns 0x1 at 0xbdafbb0 and 0x0 at 0xbdafc24. The request number carries the ASCII bytes "od" in its high half, as the other Odyssey ioctls in this batch do.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_TexCoord1d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdb4f40
  **Inferred.** The reservation shape again: it calls `__glSPDlistSpace` at 0xbdb4f90 with a0=0 and returns
  either `[0x1060]+2` (at 0xbdb5000) or the call's result (at 0xbdb5028).
  Reviewed: 2026-11-12 (sonnet)

- `main` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10218270
  **Inferred.** The X server startup routine (role from name). It calls `ProcessCommandLine` at 0x102182f0 (past a test of the word at 0x102c5d74) and `OsInit` at 0x10218460. When `serverGeneration` is not 1 it calls `ResetWellKnownSockets` at 0x10218478. It calls `InitClientResources` (0x10218498) and, when that returns nonzero, `Xalloc` with 0x40 at 0x102184d8; when that returns nonzero it calls `InitAtoms` (0x10218504), `InitEvents` (0x1021850c) and `InitCallbackManager` (0x1021854c), then `InitOutput`, `InitExtensions` and `InitClientPrivates`. It calls `FatalError` at 0x102182a4 when the word at 0x102c5dac is nonzero, and on several later failure paths.
  Reviewed: 2026-11-12 (sonnet)

- `glXDestroyGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8213d0
  **Inferred.** It calls `__glXSetupForCommand` at 0xd8213f4; when that returns zero the branch at 0xd821400 skips to 0xd821534. Otherwise it calls `__glXAddDrawableInterest` (0xd821410, with its a1 as a0), `__glXRemoveDrawableInterest` on that result (0xd821428) and `__glXFreeDrawablePrivate` (0xd821450), then stores request fields and calls `_XFlush` at 0xd82149c only when the buffer lacks room (branch at 0xd82148c). Role (from name): destroys a GLX pbuffer.
  Reviewed: 2026-11-12 (sonnet)

- `glXCreateGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd823b00
  **Inferred.** It calls `__glXSetupForCommand` at 0xd823b30 and `__glXAddDrawableInterest` at 0xd823b74; when the latter returns 0 it calls `__glXPostError` with a1=0xb and a2=0x10 at 0xd823b9c. It stores request fields and calls `_XReply` at 0xd823d2c with a stack buffer as a1. When `_XReply` returns 0 it calls `__glXPostHiddenError` with a2=0x11 at 0xd823d88, then `__glXRemoveDrawableInterest` (0xd823d9c) and `__glXFreeDrawablePrivate` (0xd823db8). It calls `__glXRemoveDrawableInterest` again at 0xd823e10 before returning. Role (from name): creates a GLX pbuffer.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Normal3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d72f4
  **Inferred.** The same shape as the other `__glOdylc_` entry points: it tests `[0x1034]`, bit 0x4 of `[0x1030]` and `[0x1028]` against 4 or 5 (branches at 0xd9d7328, 0xd9d7334 and 0xd9d7348), and when `[0x1028]` is the lower value calls `__glSPDlistSpace` at 0xd9d735c with a0=0, a1 and a2 from its own arguments and `[0x1028]` as a3. The one return shown (0xd9d73fc) is either the call's result or an unresolved value.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda091f0
  **Inferred.** A 136-byte routine that calls `__glOdysseyIoctl` at 0xda0924c with request 0x6f640018, its own a0 and a3, and a stack buffer as a2. It returns 0x0 or 0x1 depending on whether the call returned zero (branch at 0xda09254). Role (from name): the hyperpipe stereo switch.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyQueryHyperpipePixelAverage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda093b4
  **Inferred.** A 132-byte routine that calls `__glOdysseyIoctl` at 0xda0940c with request 0x6f640016, its own a0 and a3, and a stack buffer as a2. It returns 0x0 or 0x1 depending on whether the call returned zero (branch at 0xda09414). Role (from name): a hyperpipe pixel-average query.
  Reviewed: 2026-11-12 (sonnet)

- `__glXGetDrawableAttributes` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd823fec
  **Inferred.** A request-and-reply routine with a call sequence like the IP30ODSY64 build's `__glXGetDrawableAttributes` at 0xcf865dc. It calls `__glXSetupForCommand` at 0xd824020 and `_XReply` at 0xd8240d0 and 0xd8241c4 (a stack buffer as a1). It calls `malloc` at 0xd8240f4 and reads into the result with `_XRead` at 0xd824290 when `malloc` returns nonzero, and releases the buffer with `free` at 0xd824380. It calls `_XFlush` at 0xd82422c and 0xd8243b0.
  Reviewed: 2026-11-12 (sonnet)
