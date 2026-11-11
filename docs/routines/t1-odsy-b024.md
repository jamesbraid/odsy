# Routine roles: tier-1 batch 24

Roles for 25 routines, taken from their rendered facts (registers, calls, constants). Every grade here is inferred. Where the facts stop short of a role, the entry says so.

- `__glOdyim_Vertex3i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad7d80
  **Inferred.** Stores four words to the absolute address 0x10000 (at 0xdad7da4, 0xdad7da8 and 0xdad7dac) and returns 0x10000 in v0 at 0xdad7db0. It makes no calls and loads nothing from its arguments, so the vertex values come straight from registers. The consumer of the fixed 0x10000 slot is not shown by these facts.

- `__glOdyim_Vertex4i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdad8040
  **Inferred.** Stores five words to the absolute address 0x10000 (including 0xdad806c and 0xdad8074) and returns 0x10000 at 0xdad807c. It is the four-component sibling of the Vertex3i routine at 0xdad7d80, with one more word stored. No calls. Where the slot is read is open.

- `__glOdyim_TexCoord3d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdaddb40
  **Inferred.** Writes a three-component coordinate as one integer word store (0xdaddb58) and three single-float stores (0xdaddb60, 0xdaddb64, 0xdaddb6c), all to 0x10000, then returns it at 0xdaddb68. The name suggests double-precision input, but the stores are 4-byte and nothing is loaded from the arguments, so the source width and the narrowing step are not established.

- `__glOdyim_ScratchColor3b` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade240
  **Inferred.** Writes a color value to 0x10000 with two 8-byte double stores (sdc1 at 0xdade25c and 0xdade264) and returns 0x10000 at 0xdade260. No calls and no argument loads. The "3b" suffix suggests a byte-component color, but these facts do not show how the components pack into the 8-byte stores.

- `__glOdyim_Color3d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade300
  **Inferred.** Stores a color triple to 0x10000 as one word store (0xdade318) and three single-float stores (0xdade320, 0xdade324, 0xdade32c), then returns 0x10000 at 0xdade328. It has the same shape as the TexCoord3d routine at 0xdaddb40, with a different offset set. No calls, and the consumer of the slot is open.

- `__glOdyim_ScratchColor3d` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade340
  **Inferred.** Stores a three-component double color to 0x10000 through one word store (0xdade358) and three single-float stores (0xdade360, 0xdade364, 0xdade36c), returning 0x10000 at 0xdade368. Same shape as Color3d at 0xdade300. The name suggests a scratch buffer, which the facts do not confirm.

- `__glOdyim_ScratchColor3i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade540
  **Inferred.** Writes two 8-byte doubles to 0x10000 (sdc1 at 0xdade55c and 0xdade564) and returns 0x10000 at 0xdade560. No calls or argument loads. The integer-component name is not reflected in the facts, which show only the double stores.

- `__glOdyim_ScratchColor3s` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade640
  **Inferred.** Writes two 8-byte doubles to 0x10000 (sdc1 at 0xdade65c and 0xdade664) and returns 0x10000 at 0xdade660. The routine has the same body as the 3i variant at 0xdade540 except for the offsets. The short-component name is not visible in the facts.

- `__glOdyim_ScratchColor3ui` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade840
  **Inferred.** Writes two 8-byte doubles to 0x10000 (sdc1 at 0xdade85c and 0xdade864) and returns 0x10000 at 0xdade860. Identical in shape to the 3i and 3s variants. No calls.

- `__glOdyim_ScratchColor3us` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdade940
  **Inferred.** Writes two 8-byte doubles to 0x10000 (sdc1 at 0xdade95c and 0xdade964) and returns 0x10000 at 0xdade960. Same shape as the other three-component scratch variants. No calls.

- `__glOdyim_ScratchColor4b` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadea40
  **Inferred.** Writes one 8-byte double (sdc1 at 0xdadea58) and three word stores (0xdadea5c, 0xdadea60, 0xdadea68) to 0x10000, then returns 0x10000 at 0xdadea64. No calls. This is the four-component form of the scratch color family, and the split between the double and the words is not explained by the facts.

- `__glOdyim_ScratchColor4dv` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadec00
  **Inferred.** The only routine in this batch that reads memory from its argument: it loads four doubles from the pointer in a0 at offsets 0x0, 0x8, 0x10 and 0x18 (0xdadec00 through 0xdadec1c). It then stores one word (0xdadec24) and four single-float values (0xdadec2c, 0xdadec34, 0xdadec38 among them) to 0x10000 and returns it at 0xdadec3c. So the input is a 32-byte vector passed by pointer, and the stored values are the converted components.

- `__glOdyim_ScratchColor4i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadedc0
  **Inferred.** Writes one 8-byte double (sdc1 at 0xdadedd8) and three word stores (0xdadeddc, 0xdadede0, 0xdadede8) to 0x10000 and returns 0x10000 at 0xdadede4. Same shape as ScratchColor4b at 0xdadea40. No calls.

- `__glOdyim_ScratchColor4s` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadeec0
  **Inferred.** Writes one 8-byte double (sdc1 at 0xdadeed8) and three word stores (0xdadeedc, 0xdadeee0, 0xdadeee8) to 0x10000, returning it at 0xdadeee4. Same shape as the 4i variant. No calls.

- `__glOdyim_ScratchColor4ub` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadefc0
  **Inferred.** Writes one 8-byte double (sdc1 at 0xdadefd8) and three word stores (0xdadefdc, 0xdadefe0, 0xdadefe8) to 0x10000, returning it at 0xdadefe4. Same shape as the 4i and 4s variants. The unsigned-byte name is not reflected in the stores.

- `__glOdyim_ScratchColor4ui` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadf0c0
  **Inferred.** Writes one 8-byte double (sdc1 at 0xdadf0d8) and three word stores (0xdadf0dc, 0xdadf0e0, 0xdadf0e8) to 0x10000, returning it at 0xdadf0e4. Same shape as the other four-component variants. No calls.

- `__glOdyim_ScratchColor4us` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadf1c0
  **Inferred.** Writes one 8-byte double (sdc1 at 0xdadf1d8) and three word stores (0xdadf1dc, 0xdadf1e0, 0xdadf1e8) to 0x10000, returning it at 0xdadf1e4. Same shape as the other four-component variants. No calls.

- `__glOdyim_ScratchIndexd` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xdadf2c0
  **Inferred.** Writes one 8-byte double to 0x10000 (sdc1 at 0xdadf2d8) and returns 0x10000 at 0xdadf2d4. It is the single-index form of the scratch family and has no calls or argument loads.

- `__glXOpenGraphicsDevice` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd80e4e4
  **Inferred.** Opens a device node: it passes the string at 0xd842828 to open with flags 0x802, runs fcntl with command 0x2 and argument 0x5 on the descriptor, and issues ioctl 0x65 on it. Results go into a table reached through the global pointer at abs 0x1014, indexed by a0 (a0 must be below 0x41 to reach the lookup, otherwise the path at 0xd80e538 is taken). Failures call __glXFatal with the messages at 0xd842808, 0xd842838, 0xd842858 and 0xd842868. What the device is and what ioctl 0x65 returns are not established by these facts.

- `GetFBConfigsSGIX` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd81b210
  **Inferred.** Looks like a client-side query for framebuffer configurations: it stores fields into the buffer at a0+108, exchanges with the server through _XReply (a6=0x10004), flushes with _XFlush and reads more data with _XRead into a malloc buffer. It converts entries with __glXOverrideVisualGetVisualInfo (called with a1=0x3) and releases memory with XFree and free. The routine returns 0x0 or 0x1 on its exits. The request opcode and the reply fields are not established by these facts, and several indirect callees stay unresolved.

- `__glXGetDrawableAttributes` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd823fec
  **Inferred.** Queries drawable attributes over the connection. It calls __glXSetupForCommand, waits for a reply through _XReply, reads the data with _XRead into a malloc buffer, and flushes with _XFlush. It dispatches on an attribute id that is bounded at 26 (t2 compared against 0x1a) through the jump table at 0xd844788, storing results at the a2 output offsets 0x0 through 0x18. The constants 0x11 and 0x1000a passed to _XReply at 0xd8240d0 and 0xd8241c4 are not explained by these facts.

- `glXWaitVideoSyncSGI` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd824ff0
  **Inferred.** Waits for a video sync by calling ioctl 0x3ff on a device descriptor taken from the per-device table at abs 0x1014 (the descriptor is read at 0xd825094 through [[0x1014]+264]). The routine stores to the caller's a2 at 0xd8250b4. Exits return 0x6 at 0xd825048, 0x5 at 0xd825058 and 0x0 at 0xd8250b0. What ioctl 0x3ff does and why the caller gets 5 or 6 are not established by these facts.

- `glXDestroyGLXVideoSourceSGIX` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd8250b8
  **Inferred.** Looks like a teardown routine for a video source. It calls __glXSetupForCommand, then __glXAddDrawableInterest, __glXRemoveDrawableInterest and __glXFreeDrawablePrivate on the drawable pointer. It passes the constants 0x10003 and 0x10 to an unresolved callee and flushes with _XFlush. The exit at 0xd8251e0 returns either the setup result or a value the facts do not resolve. The request code and the unresolved callee's role remain open.

- `glXSwapIntervalSGI` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd825758
  **Inferred.** Seems to set a swap interval, which the facts show only through an ioctl 0x3ee on a device descriptor (at 0xd8257bc, with the argument from a0 stored at a5) and a request sent after __glXSetupForCommand. Several base pointers in the send path are unresolved (for example the loads at 0xd825814 and 0xd825820), and the routine flushes with XFlush and _XFlush. Its exits return 0x0 at 0xd8257d0, 0x5 at 0xd8257f0 and one of 0x0, 0x5 or 0x6 at 0xd8258e0. The meaning of the interval value and of the error codes is not established.

- `isNotProxy` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd8323bc
  **Inferred.** Checks a device path: it opens the string at 0xd844560 with flags 0x802, runs fcntl and ioctl 0x65 on it, and reads a second ioctl 0x66 into a stack buffer. It scans a string with strchr for ':' (0x3a) and compares characters against '.' (0x2e), which suggests it parses a host-style name. It closes the descriptor on each path. The exits at 0xd832458, 0xd8324f0 and 0xd832500 return 0, and the shared exit at 0xd8323dc can return 0 or 1. The name suggests a proxy check, but the facts do not establish what "proxy" means here or what ioctl 0x66 reports.
