# Routine roles: tier-1 batch 24

Roles for 25 routines, taken from their rendered facts (registers, calls, constants). Every grade here is inferred. Where the facts stop short of a role, the entry says so.

- `__glOdyim_Vertex3i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7d80
  **Inferred.** Stores four words to the absolute address 0x10000 (at 0xdad7da4, 0xdad7da8, 0xdad7dac and 0xdad7db4) and returns 0x10000 in v0 at 0xdad7db0. It makes no calls and the facts list no loads, so the stored values are not read from memory. The consumer of the fixed 0x10000 slot is not shown by these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Vertex4i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad8040
  **Inferred.** Stores five words to the absolute address 0x10000 (including 0xdad806c and 0xdad8074) and returns 0x10000 at 0xdad807c. It is the four-component sibling of the Vertex3i routine at 0xdad7d80, with one more word stored. No calls. Where the slot is read is open.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_TexCoord3d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdaddb40
  **Inferred.** Writes a three-component coordinate as one integer word store (0xdaddb58) and three single-float stores (0xdaddb60, 0xdaddb64, 0xdaddb6c), all to 0x10000, then returns it at 0xdaddb68. The name suggests double-precision input, but the stores are 4-byte and the facts list no loads, so the source width and the narrowing step are not established.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor3b` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade240
  **Inferred.** Writes a color value to 0x10000 with two 8-byte double stores (sdc1 at 0xdade25c and 0xdade264) and returns 0x10000 at 0xdade260. No calls and no argument loads. The "3b" suffix suggests a byte-component color, but these facts do not show how the components pack into the 8-byte stores.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Color3d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade300
  **Inferred.** Stores a color triple to 0x10000 as one word store (0xdade318) and three single-float stores (0xdade320, 0xdade324, 0xdade32c), then returns 0x10000 at 0xdade328. It has the same shape as the TexCoord3d routine at 0xdaddb40, with a different offset set. No calls, and the consumer of the slot is open.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor3d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade340
  **Inferred.** Stores a three-component double color to 0x10000 through one word store (0xdade358) and three single-float stores (0xdade360, 0xdade364, 0xdade36c), returning 0x10000 at 0xdade368. Same shape as Color3d at 0xdade300. The name suggests a scratch buffer, which the facts do not confirm.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor3i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade540
  **Inferred.** Writes two 8-byte doubles to 0x10000 (sdc1 at 0xdade55c and 0xdade564) and returns 0x10000 at 0xdade560. No calls or argument loads. The integer-component name is not reflected in the facts, which show only the double stores.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor3s` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade640
  **Inferred.** Writes two 8-byte doubles to 0x10000 (sdc1 at 0xdade65c and 0xdade664) and returns 0x10000 at 0xdade660. The routine has the same body as the 3i variant at 0xdade540 except for the offsets. The short-component name is not visible in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor3ui` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade840
  **Inferred.** Writes two 8-byte doubles to 0x10000 (sdc1 at 0xdade85c and 0xdade864) and returns 0x10000 at 0xdade860. Identical in shape to the 3i and 3s variants. No calls.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor3us` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade940
  **Inferred.** Writes two 8-byte doubles to 0x10000 (sdc1 at 0xdade95c and 0xdade964) and returns 0x10000 at 0xdade960. Same shape as the 3b, 3i, 3s and 3ui scratch variants, but not the ScratchColor3d routine at 0xdade340, which uses a word store and three single-float stores. No calls.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4b` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadea40
  **Inferred.** Writes one 8-byte double (sdc1 at 0xdadea58) and three word stores (0xdadea5c, 0xdadea60, 0xdadea68) to 0x10000, then returns 0x10000 at 0xdadea64. No calls. This is the four-component form of the scratch color family, and the split between the double and the words is not explained by the facts.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4dv` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadec00
  **Inferred.** Loads four doubles (ldc1 at offsets 0x0, 0x8, 0x10 and 0x18, at 0xdadec00, 0xdadec0c, 0xdadec14 and 0xdadec1c), then stores one word (0xdadec24) and four single-float values (0xdadec2c, 0xdadec34, 0xdadec38 and 0xdadec40) to 0x10000 and returns it at 0xdadec3c. The facts do not name the base register of the loads and do not show any conversion of the values. Role (from name): a four-component double color given by pointer. The consumer of the 0x10000 slot is not shown.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadedc0
  **Inferred.** Writes one 8-byte double (sdc1 at 0xdadedd8) and three word stores (0xdadeddc, 0xdadede0, 0xdadede8) to 0x10000 and returns 0x10000 at 0xdadede4. Same shape as ScratchColor4b at 0xdadea40. No calls.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4s` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadeec0
  **Inferred.** Writes one 8-byte double (sdc1 at 0xdadeed8) and three word stores (0xdadeedc, 0xdadeee0, 0xdadeee8) to 0x10000, returning it at 0xdadeee4. Same shape as the 4i variant. No calls.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4ub` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadefc0
  **Inferred.** Writes one 8-byte double (sdc1 at 0xdadefd8) and three word stores (0xdadefdc, 0xdadefe0, 0xdadefe8) to 0x10000, returning it at 0xdadefe4. Same shape as the 4i and 4s variants. The unsigned-byte name is not reflected in the stores.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4ui` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadf0c0
  **Inferred.** Writes one 8-byte double (sdc1 at 0xdadf0d8) and three word stores (0xdadf0dc, 0xdadf0e0, 0xdadf0e8) to 0x10000, returning it at 0xdadf0e4. Same shape as the other four-component variants. No calls.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4us` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadf1c0
  **Inferred.** Writes one 8-byte double (sdc1 at 0xdadf1d8) and three word stores (0xdadf1dc, 0xdadf1e0, 0xdadf1e8) to 0x10000, returning it at 0xdadf1e4. Same shape as the other four-component variants. No calls.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchIndexd` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadf2c0
  **Inferred.** Writes one 8-byte double to 0x10000 (sdc1 at 0xdadf2d8) and returns 0x10000 at 0xdadf2d4. It is the single-index form of the scratch family and has no calls or argument loads.
  Reviewed: 2026-11-12 (sonnet)

- `__glXOpenGraphicsDevice` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd80e4e4
  **Inferred.** Opens a device node: it passes the string at 0xd842828 to open with flags 0x802, runs fcntl with command 0x2 and argument 0x5 on the descriptor, and issues ioctl 0x65 on it. It reads a table through the global pointer at abs 0x1014, indexed by a0 (a0 >= 0x41 takes the path at 0xd80e538 instead of the lookup), and stores words at +0x4 (0xd80e5d8) and +0x104 (0xd80e640) from a base the facts do not name. Calls to __glXFatal use the messages at 0xd842808, 0xd842838, 0xd842858 and 0xd842868. What the device is and what ioctl 0x65 returns are not established by these facts.
  Reviewed: 2026-11-12 (sonnet)

- `GetFBConfigsSGIX` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd81b210
  **Inferred.** Role (from name): a client-side query for framebuffer configurations. The facts show stores through a pointer loaded from a0+108 (a0+112 is compared against a0+108+16 first), a call to _XReply (a5=0x11, a6=0x10004), calls to malloc and memset, a call to _XRead whose buffer argument is unresolved, and a _XFlush on the short-buffer path. It calls __glXOverrideVisualGetVisualInfo (a1=0x3) and then free and XFree. The routine returns 0x0 or 0x1 on its exits. The request opcode and the reply fields are not established by these facts, and several indirect callees stay unresolved.
  Reviewed: 2026-11-12 (sonnet)

- `__glXGetDrawableAttributes` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd823fec
  **Inferred.** Role (from name): query drawable attributes over the connection. After __glXSetupForCommand returns nonzero in its low byte, it calls _XReply (a5=0x11, a6=0x1000a at 0xd8240d0), mallocs a buffer, reads into it with _XRead (call 14), and calls _XFlush on some paths. A loop compares a loaded word biased by -0x800c against 0x1a (unsigned) and dispatches through a jump table (printed as table(-0x800c)), storing words at +0x4, +0x8, +0xc and +0x18 and bytes at +0x14 and +0x15 of a base the facts do not name. The second _XReply at 0xd8241c4 is passed no such constants. What the constants and the request are is not established by these facts.
  Reviewed: 2026-11-12 (sonnet)

- `glXWaitVideoSyncSGI` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd824ff0
  **Inferred.** Role (from name): wait for a video sync. It calls ioctl 0x3ff on a descriptor loaded through the table at abs 0x1014, indexed by [[0x1014]+264] (load at 0xd825094). It returns 0x6 at 0xd825048 when a0 <= 0 or a1 < 0 or the test at 0xd82503c is nonzero, 0x5 at 0xd825058 when [[0x1014]+276] or [[[0x1014]+276]+196] is zero, and 0x0 at 0xd8250b0. It stores a word at 0xd8250b4 through a base the facts do not name. What ioctl 0x3ff does and why the caller gets 5 or 6 are not established by these facts.
  Reviewed: 2026-11-12 (sonnet)

- `glXDestroyGLXVideoSourceSGIX` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd8250b8
  **Inferred.** Role (from name): tear down a video source. It calls __glXSetupForCommand and, if the low byte of the result is nonzero and a1 is nonzero, calls __glXAddDrawableInterest with a1 as arg0, then __glXRemoveDrawableInterest and __glXFreeDrawablePrivate, both with the result of the Add call as arg0. It passes the constants 0x10003 and 0x10 (with a6=0x4) to an unresolved callee and calls _XFlush on the short-buffer path. The exit at 0xd8251e0 returns either the setup result or a value the facts do not resolve. The request code and the unresolved callee's role remain open.
  Reviewed: 2026-11-12 (sonnet)

- `glXSwapIntervalSGI` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd825758
  **Inferred.** Role (from name): set a swap interval. The facts show an ioctl 0x3ee on a descriptor loaded through the table at abs 0x1014 (at 0xd8257bc, with a0 passed in the a5 slot) and, on another path, a request sent after __glXSetupForCommand. Several base pointers in the send path are unresolved (for example the loads at 0xd825814 and 0xd825820), and the routine calls XFlush and _XFlush. Its exits return 0x0 at 0xd8257d0, 0x5 at 0xd8257f0 and one of 0x0, 0x5 or 0x6 at 0xd8258e0. The meaning of the interval value and of the error codes is not established.
  Reviewed: 2026-11-12 (sonnet)

- `isNotProxy` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd8323bc
  **Inferred.** Role (from name): decide whether a connection is a proxy. After a check of [a0+36] against 0x40 (which can exit early at 0xd8323dc), it opens the string at 0xd844560 with flags 0x802, runs fcntl and ioctl 0x65 on the result, and passes a stack buffer to a second ioctl 0x66 (a7=0x28). It calls strchr for ':' (0x3a) and compares characters against '.' (0x2e), which suggests it parses a host-style name. close is called on several paths (calls 4, 6, 8, 9 and 10), but not on the early exit at 0xd8323dc. The exits at 0xd832458, 0xd8324f0 and 0xd832500 return 0, and the shared exit at 0xd8323dc can return 0 or 1. The facts do not establish what "proxy" means here or what ioctl 0x66 reports.
  Reviewed: 2026-11-12 (sonnet)
