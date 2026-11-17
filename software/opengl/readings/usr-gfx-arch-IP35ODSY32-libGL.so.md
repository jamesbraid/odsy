# Readings: `usr/gfx/arch/IP35ODSY32/libGL.so`

One entry per routine, filed here from the reading batches by binary.

- `__glXOpenGraphicsDevice` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd80e4e4
  **Inferred.** Opens a device node: it passes the string at 0xd842828 to open with flags 0x802, runs fcntl with command 0x2 and argument 0x5 on the descriptor, and issues ioctl 0x65 on it. It reads a table through the global pointer at abs 0x1014, indexed by a0 (a0 >= 0x41 takes the path at 0xd80e538 instead of the lookup), and stores words at +0x4 (0xd80e5d8) and +0x104 (0xd80e640) from a base the facts do not name. Calls to __glXFatal use the messages at 0xd842808, 0xd842838, 0xd842858 and 0xd842868. What the device is and what ioctl 0x65 returns are not established by these facts.
  Reviewed: 2026-11-12

- `GetFBConfigsSGIX` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd81b210
  **Inferred.** Role (from name): a client-side query for framebuffer configurations. The facts show stores through a pointer loaded from a0+108 (a0+112 is compared against a0+108+16 first), a call to _XReply (a5=0x11, a6=0x10004), calls to malloc and memset, a call to _XRead whose buffer argument is unresolved, and a _XFlush on the short-buffer path. It calls __glXOverrideVisualGetVisualInfo (a1=0x3) and then free and XFree. The routine returns 0x0 or 0x1 on its exits. The request opcode and the reply fields are not established by these facts, and several indirect callees stay unresolved.
  Reviewed: 2026-11-12

- `__glXGetDrawableAttributes` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd823fec
  **Inferred.** Role (from name): query drawable attributes over the connection. After __glXSetupForCommand returns nonzero in its low byte, it calls _XReply (a5=0x11, a6=0x1000a at 0xd8240d0), mallocs a buffer, reads into it with _XRead (call 14), and calls _XFlush on some paths. A loop compares a loaded word biased by -0x800c against 0x1a (unsigned) and dispatches through a jump table (printed as table(-0x800c)), storing words at +0x4, +0x8, +0xc and +0x18 and bytes at +0x14 and +0x15 of a base the facts do not name. The second _XReply at 0xd8241c4 is passed no such constants. What the constants and the request are is not established by these facts.
  Reviewed: 2026-11-12

- `__glXGetDrawableAttributes` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd823fec
  **Inferred.** Calls `__glXSetupForCommand` at 0xd824020; a zero low byte of its return branches at 0xd82402c to 0xd8243a4. It calls `_XReply` at 0xd8240d0 with a1=sp-144, a2=0x0 and a3=0x0, and again at 0xd8241c4 with a1=sp-112. Registers a5=0x11 and a6=0x1000a are set at the first call, but `_XReply` takes four arguments, so they are likely not arguments. It calls `malloc` at 0xd8240f4, `_XRead` at 0xd824290 into the allocated block and `free` at 0xd824380. It returns 0x0 at 0xd824144, 0xd824224 and 0xd82427c and 0x1 at 0xd82439c. Role (from name): fetches the attributes of a drawable.
  Reviewed: 2026-11-12

- `glXWaitVideoSyncSGI` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd824ff0
  **Inferred.** Role (from name): wait for a video sync. It calls ioctl 0x3ff on a descriptor loaded through the table at abs 0x1014, indexed by [[0x1014]+264] (load at 0xd825094). It returns 0x6 at 0xd825048 when a0 <= 0 or a1 < 0 or the test at 0xd82503c is nonzero, 0x5 at 0xd825058 when [[0x1014]+276] or [[[0x1014]+276]+196] is zero, and 0x0 at 0xd8250b0. It stores a word at 0xd8250b4 through a base the facts do not name. What ioctl 0x3ff does and why the caller gets 5 or 6 are not established by these facts.
  Reviewed: 2026-11-12

- `glXDestroyGLXVideoSourceSGIX` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd8250b8
  **Inferred.** Role (from name): tear down a video source. It calls __glXSetupForCommand and, if the low byte of the result is nonzero and a1 is nonzero, calls __glXAddDrawableInterest with a1 as arg0, then __glXRemoveDrawableInterest and __glXFreeDrawablePrivate, both with the result of the Add call as arg0. It passes the constants 0x10003 and 0x10 (with a6=0x4) to an unresolved callee and calls _XFlush on the short-buffer path. The exit at 0xd8251e0 returns either the setup result or a value the facts do not resolve. The request code and the unresolved callee's role remain open.
  Reviewed: 2026-11-12

- `glXSwapIntervalSGI` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd825758
  **Inferred.** Role (from name): set a swap interval. The facts show an ioctl 0x3ee on a descriptor loaded through the table at abs 0x1014 (at 0xd8257bc, with a0 passed in the a5 slot) and, on another path, a request sent after __glXSetupForCommand. Several base pointers in the send path are unresolved (for example the loads at 0xd825814 and 0xd825820), and the routine calls XFlush and _XFlush. Its exits return 0x0 at 0xd8257d0, 0x5 at 0xd8257f0 and one of 0x0, 0x5 or 0x6 at 0xd8258e0. The meaning of the interval value and of the error codes is not established.
  Reviewed: 2026-11-12

- `isNotProxy` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd8323bc
  **Inferred.** Role (from name): decide whether a connection is a proxy. After a check of [a0+36] against 0x40 (which can exit early at 0xd8323dc), it opens the string at 0xd844560 with flags 0x802, runs fcntl and ioctl 0x65 on the result, and passes a stack buffer to a second ioctl 0x66 (a7=0x28). It calls strchr for ':' (0x3a) and compares characters against '.' (0x2e), which suggests it parses a host-style name. close is called on several paths (calls 4, 6, 8, 9 and 10), but not on the early exit at 0xd8323dc. The exits at 0xd832458, 0xd8324f0 and 0xd832500 return 0, and the shared exit at 0xd8323dc can return 0 or 1. The facts do not establish what "proxy" means here or what ioctl 0x66 reports.
  Reviewed: 2026-11-12

- `CreateContext` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd83269c
  **Inferred.** Role (from name): creates the client-side GLX context. The routine calls `calloc` with a0 = 0x1 and a1 = 0x12c (0xd8326f0) and, on paths gated by several tests, `__glXCreateDirectContext` (0xd832854) with that buffer in a0, and `__glXInitVertexArrayState` (0xd832918) with a2 = 0x85a2, a3 = 0x8430 and a4 = 0x842e. A `getenv` call at 0xd8327a8 has the first byte of its result compared with 0x79 (0xd8327c0) and 0x6e (0xd8327c8). A second `getenv` at 0xd832b14 has its first byte compared with 0x6e and 0x4e (0xd832b2c, 0xd832b38); when either matches, the routine calls `fprintf` (0xd832ef8) with that byte and the constant 0x6e, then `exit` with a0 = 0x0 (0xd832f04). The facts do not name either environment variable or show how the results choose between direct and indirect contexts.
  Reviewed: 2026-11-12

- `glXCreateGLXPixmapWithConfigSGIX` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd838c8c
  **Inferred.** Role (from name): sends a GLX request that creates a pixmap for a config. It calls `__glXSetupForCommand` at 0xd838cb8, and when the low byte of its result is zero it goes to a path that returns 0 at 0xd838dd4. When the unsigned test at 0xd838cf4 does not take its branch, it loads words at +0x24 and +0x48 of a1 and makes a call through an unnamed callee at 0xd838d64 with a2 passed through, a4 = 0x10006 and a5 = 0x10, after which a return of an unresolved call result appears at 0xd838db0. When the branch is taken it calls `_XFlush` at 0xd838db8; the facts do not show where control goes from there. The request code is not named by the facts, so the identity of the unnamed callee is open.
  Reviewed: 2026-11-12

- `glXQueryMaxSwapBarriersSGIX` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd83c218
  **Inferred.** Role (from name): asks the server for the maximum swap-barrier count. It calls `__glXSetupForCommand` at 0xd83c248. If the unsigned test at 0xd83c278 does not take its branch, it calls `_XReply` at 0xd83c2dc with a1 = sp-80, a6 = 0x11 and a7 = 0x1000d; when `_XReply` returns nonzero it performs a word store at 0xd83c320 (the base register is not shown) and returns 0x1. When the test at 0xd83c278 is taken it calls `_XFlush` at 0xd83c338 instead and does not reach `_XReply`; the facts show a return of 0x0 at 0xd83c384 on the paths that do not return 0x1. That 0x1 means success is not shown by the facts.
  Reviewed: 2026-11-12

- `_init` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd8427a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGL.so`.
  Range: 0xd8427a0-0xd8427d8 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd8427c0 calls __glXInit [0xd80dfd8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd8427d0 has v0 = ret(__glXInit).
