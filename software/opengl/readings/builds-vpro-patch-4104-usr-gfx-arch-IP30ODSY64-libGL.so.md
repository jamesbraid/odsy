# Readings: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so`

One entry per routine, filed here from the reading batches by binary.

- `__glXOpenGraphicsDevice` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf707bc (n64).
  Evidence grade: inferred.
  The routine is 408 bytes. It compares a0 against 0x41 (the branch at 0xcf707d8 is taken when a0 >= 0x41, signed) and indexes a table at [0x1028] by a0 shifted left 2. It calls `open` on a fixed path at 0xcfa35f0 with flags 0x802. It calls `fcntl` on the returned descriptor with arguments 0x2 and 0x5 only when `open` returned a non-negative value, and calls `ioctl` with request 0x65 on that descriptor only on the path where the word at [[0x1028]+260] is negative. A negative return from `open` or `fcntl`, or a non-positive return from `ioctl`, branches to code followed by a `__glXFatal` call (call 5 at 0xcf708c4, call 6 at 0xcf708e0 and call 8 at 0xcf70940); `__glXFatal` calls 1 and 4 are the other two sites and the facts do not give their conditions. The meaning of request 0x65 and of the `fcntl` arguments is not named in the facts, and the device behind the path is not established by the render.
  Reviewed: 2026-11-12

- `__glXOpenGraphicsDevice` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf707bc
  **Inferred.** The branch at 0xcf707d8 goes to 0xcf70808 when a0 >= 0x41, and the routine reads the per-device table at `[0x1028]:8 + a0<<2` (word at +0x4, and +0x104 on the later path). It calls `open` at 0xcf70838 with the path at 0xcfa35f0 and flags 0x802, `fcntl` at 0xcf70858 on the descriptor with command 2 and argument 5, and `ioctl` at 0xcf708fc on the descriptor with request 0x65 and the table word at +0x104 as a3. It calls `__glXFatal` at 0xcf70818, 0xcf70890, 0xcf708c4, 0xcf708e0 and 0xcf70940, with messages at 0xcfa35d0 to 0xcfa3630. Role (from name): opens a graphics device by index.
  Reviewed: 2026-11-12

- `GetFBConfigsSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf7dd14 (n64).
  Evidence grade: inferred.
  The routine is 3788 bytes and reads a block of fields through a0, including loads at +0x968, +0xb0, +0xb8 and +0xd0 and a pointer chain through [a0+2408]. It calls `_XReply` (call 2), `_XRead` (call 18, with a4 0x8000 in the facts), `_XFlush`, `malloc`, `free` and `memset`. Late in the routine, shortly before the return of 1 at 0xcf7eae4, it calls `__glXOverrideVisualGetVisualInfo`, `free` and `XFree`. The name fits an X protocol request that fetches a list of framebuffer configurations, but the render does not show the opcode dispatch or the record layout. The routine has 125 integer stores (106 word, 14 byte, 4 doubleword and 1 halfword) and 8 double-precision stores, mostly to addresses whose base the facts do not resolve.
  Reviewed: 2026-11-12

- `__glXSendMakeCurrentRead` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8098c (n64).
  Evidence grade: inferred.
  The routine is 852 bytes. It calls `__glXSetupForCommand` first and then calls `_XReply` at two sites that sit on separate branches (call 3 at 0xcf80a94 and call 10 at 0xcf80bf4). After call 3 returns nonzero, when the word at [a3+4] is nonzero, it calls `malloc` with 0x10, `_XRead` into that buffer with a2 0x10, and `free`. `_XFlush` is called at two sites (calls 9 and 14), behind branches that compare [a0+184] with [a0+176] plus 24 or 20 (unsigned). It calls `__glXPostHiddenError` at two sites, with a2 0x11 (call 13) and a2 0x1a (call 17); both of those paths return 0, and the routine also returns 1 at 0xcf80b48. The name fits a make-current-read request, but the request body is not shown, the meaning of the two error codes is unknown, and the facts do not give every condition that reaches those sites.
  Reviewed: 2026-11-12

- `__glXGetDrawableAttributes` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf865dc (n64).
  Evidence grade: inferred.
  The routine is 1052 bytes. It calls `__glXSetupForCommand` first. It calls `_XReply` at two sites, call 3 at 0xcf866b4 and call 8 at 0xcf867a8 (the second with a5 0x1d); a branch on a3 == 0 at 0xcf86624 comes ahead of them, and the facts do not say whether one invocation can reach both. It calls `malloc` after call 3, calls `_XRead` (call 12) into the malloc result, and clears 48 bytes at a2 with `memset` (a0 is a2 at entry, a1 0, a2 0x30). It returns 1 only at 0xcf86930, after `free` (call 16), and returns 0 at the five other return sites; `_XFlush` is called at two sites (calls 11 and 19). The name fits a query for drawable attribute values, but the reply layout and the meaning of the second request are not shown, so the number of attributes returned is unknown.
  Reviewed: 2026-11-12

- `__glXGetDrawableAttributes` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf865dc
  **Inferred.** A request-and-reply routine over the X connection. It calls `__glXSetupForCommand` at 0xcf8660c and, when that returns nonzero, `_XReply` at 0xcf866b4 or 0xcf867a8 with a stack buffer as a1. When `malloc` (0xcf866d8) returns nonzero it reads into the result with `_XRead` (0xcf86830), clears a2 with `memset` (0x30 bytes), stores into a2 (words at +0x0, +0x10 and +0x14, doublewords at +0x8, +0x18 and +0x28, bytes at +0x20 and +0x21), and releases the buffer with `free` (0xcf86914). It returns 0x1 at 0xcf86930 and 0x0 on the failure exits. Role (from name): a drawable-attribute query.
  Reviewed: 2026-11-12

### `glXDestroyGLXPbufferSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf869f8`

`glXDestroyGLXPbufferSGIX` calls `__glXSetupForCommand` at 0xcf86a20 and skips the rest when the low byte of the result is zero (branch at 0xcf86a30). Otherwise it calls `__glXAddDrawableInterest` (0xcf86a40) and `__glXRemoveDrawableInterest` (0xcf86a50), and calls `__glXFreeDrawablePrivate` (0xcf86a64) only when the word at +0x20 of the `__glXAddDrawableInterest` result is nonzero (branch at 0xcf86a5c). It then writes a request header into the buffer at [a0+176] when the buffer has 16 bytes free; when it does not, it calls `_XFlush` at 0xcf86b3c and then branches back to the header write. The name points at a pbuffer destroy request, but the facts do not name the request fields.

Grade: inferred.

Reviewed: 2026-11-12

### `glXCreateGLXPbufferSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf872f4`

`glXCreateGLXPbufferSGIX` calls `__glXSetupForCommand` (0xcf87330) and `__glXAddDrawableInterest` (0xcf87360). It copies words from the argument block (a1 at +0x24 and +0x48, a4 at +0x0 and +0x4) into the request buffer at [a0+176], and it stores fields into the new drawable record. It calls `_XFlush` (0xcf875dc) only on the path where the buffer lacks space for the request, and reads a reply through `_XReply` (0xcf87554). `__glXPostHiddenError` (0xcf87628) is reached from the failed-reply path and `__glXPostError` (0xcf87680) when `__glXAddDrawableInterest` returns zero. The name suggests a create-pbuffer request with a reply, but the reply fields and the meaning of the argument words are not named.

Grade: inferred.

Reviewed: 2026-11-12

### `glXGetVideoSyncSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf876a8`

`glXGetVideoSyncSGI` follows a pointer chain from abs 0x1028 to a display record, reads fields at +0x118, +0x128 and +0x108, and takes a device handle from a table indexed at +264. It calls `ioctl` with request 0x3fe (0xcf87700) on a stack buffer at sp-48 and stores one word into a0 (0xcf87710). It returns 0 on the normal path and 5 on the error path (0xcf8772c). The name suggests a video sync count query, which the ioctl fits, but the driver side is not in the facts.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf87734`

`glXWaitVideoSyncSGI` uses the same display-record chain and handle table as the entry at 0xcf876a8. It calls `ioctl` with request 0x3ff (0xcf877d4) on a stack buffer at sp-80 and stores one word to a2 (0xcf877f8); the facts do not show where that word comes from. Signed checks on a0 and a1 (0xcf8776c, 0xcf87774) branch to a block away from the ioctl at 0xcf877d4; the facts give return codes 5 and 6 and a normal return of 0, but the trace does not connect each branch to a code. The name suggests a wait on a frame count with a divisor and a remainder, but the argument roles are not confirmed by the facts.

Grade: inferred.

Reviewed: 2026-11-12

- `glXWaitVideoSyncSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf87734
  **Inferred.** It loads the table pointer at `[0x1028]:8` and reads table words at +0x118 (a pointer, tested for zero, with a word at +0x118 inside it), +0x108 and +0x128. Early tests on the table entries and on a0 (<= 0) and a1 (< 0) lead to returns of 0x6 (0xcf8778c) or 0x5 (0xcf8779c) that do not reach the `ioctl`. Otherwise it calls `ioctl` at 0xcf877d4 with a descriptor read from the table, request 0x3ff and a stack buffer as a2, and returns 0x0 at 0xcf877f4. Role (from name): the SGI video-sync wait; the facts do not show what request 0x3ff means.
  Reviewed: 2026-11-12

### `CreateContext` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf956c8`

This is the row named `CreateContext`; the renderer left the symbol unnamed. It calls `__glXInitialize` (0xcf95700), allocates a 0x1c0-byte record with `calloc`, and fills it through `__glXCreateDirectContext` (0xcf958cc), `__glXInitVertexArrayState`, `__glXFindVisualConfig` and three calls to `__glXOverrideVisualsIdToXid` (0xcf95b88, 0xcf95c7c, 0xcf95ef8). It reads two environment strings with `getenv` (0xcf95800, 0xcf95dbc), and one error path prints with `fprintf` and calls `exit` with status 0 (0xcf95f74, 0xcf95f80). It returns the record pointer on success (0xcf95a14) and 0 on the other returns; the environment variable names are not in the facts.

Grade: inferred.

Reviewed: 2026-11-12

### `glXJoinSwapGroupSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf9eb34`

`glXJoinSwapGroupSGIX` calls `__glXSetupForCommand` (0xcf9eb60), then writes a request header into [a0+176], with a 2-byte field at +0x2, a 1-byte field at +0x1 and 4-byte words at +0x4, +0xc and +0x10. Between those steps it calls unnamed callees with [a0+2408] as an argument when that word is nonzero. It calls `_XFlush` at 0xcf9ec3c only on the path where the buffer lacks 20 bytes of space, and the normal path returns without it. No reply is read (no `_XReply` call), so the request looks one-way, but the field meanings are not named.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf9ec54`

`glXBindSwapBarrierSGIX` has the same shape as the join routine at 0xcf9eb34: `__glXSetupForCommand` at 0xcf9ec80, the same request header writes into [a0+176], unnamed callees with [a0+2408] when it is nonzero, and `_XFlush` at 0xcf9ed5c only on the path where the buffer lacks 20 bytes of space. It calls no `_XReply`. The name suggests a bind-swap-barrier request, and the one-way send fits, but the barrier and group identifiers are not in the facts.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at `0xcf9ed74`

`glXQueryMaxSwapBarriersSGIX` calls `__glXSetupForCommand` (0xcf9eda0) and writes a request header into [a0+176]. It calls `_XReply` at 0xcf9ee38 with a1 = a stack buffer at sp-112 and a2 = a3 = 0; [a0+176] and [a0+152]+1 appear in a6 and a7 at that call, which a four-argument call would not take. When `_XReply` returns nonzero it stores one word to a2 (0xcf9ee80) and returns 1 (0xcf9ee90); when it returns zero it returns 0 (0xcf9eeec). `_XFlush` (0xcf9ee9c) is on the path where the buffer lacks space. The name suggests a query for the maximum swap barrier count, which fits a read-and-return request, but the reply layout is not named.

Grade: inferred.

Reviewed: 2026-11-12
