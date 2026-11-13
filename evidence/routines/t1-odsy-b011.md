# Tier-1 reading batch 11 for odsy

Role statements for 25 located routines in two libGL builds for the IP30 odsy targets. Each statement comes from the rendered facts for that routine: registers, memory offsets, branches and callees. The grade is inferred for all 25, because none of the facts establish a hardware behavior. These are software observations about the library code, not hardware behavior.

Rejected by the grader: none. All 25 rendered entries passed.

- `CISendClippedBmFmN` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacc140 (n32).
  Evidence grade: inferred.
  The routine reads one byte at a0+0xb8 and a run of single-precision values from a0 at +0x10 to +0x1c, +0x90, +0xa0 and +0xc0 to +0xc8, plus one value from the fixed address 0xdbde448. It makes 11 integer and 39 single-precision stores to the fixed address 0x4000 in straight-line code with no calls. The render does not show the record layout, and what the byte at +0xb8 is used for is open. Role (from name): the name suggests a clipped bitmap send, so this is probably a per-primitive record going to a command port, but the facts do not name that port.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex2d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad880 (n32).
  Evidence grade: inferred.
  The routine is 32 bytes and has no argument loads in the facts. It makes one integer store and two single-precision stores to the fixed address 0x4000 at 0xdbad890, 0xdbad894 and 0xdbad89c. The source registers for those stores are not traced in the render, so the values written are unknown; the shape fits a two-coordinate vertex submission only loosely.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbada80 (n32).
  Evidence grade: inferred.
  The routine is 40 bytes and writes to the fixed address 0x4000 with one integer store at 0xdbada94 and three single-precision stores at 0xdbada98, 0xdbada9c and 0xdbadaa4. It has the same shape as `__glOdyim_Vertex2d` with one more value, which fits a three-coordinate vertex. The values are not traced, so the mapping to x, y and z is a guess from the name.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbadb80 (n32).
  Evidence grade: inferred.
  The routine is 52 bytes and makes four integer stores to 0x4000, at 0xdbadba0, 0xdbadba4 and 0xdbadba8 among them, with no single-precision stores in the facts. The integer-only form matches the name's integer type. The source of each store is not traced, so the field count is inferred from the store count alone.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbadd80 (n32).
  Evidence grade: inferred.
  The routine is 64 bytes and makes five integer stores to 0x4000, at 0xdbadda8, 0xdbaddac and 0xdbaddb0 among them. The store count fits a four-component integer vertex plus one leading word, but the render does not show the source registers. This is the largest of the four Vertex entries in the batch, and the extra store is not explained by the facts.
  Reviewed: 2026-11-12

- `__glOdyim_TexCoord3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb2a80 (n32).
  Evidence grade: inferred.
  The routine is 40 bytes and has the same store pattern as `__glOdyim_Vertex3d`: one integer store at 0xdbb2a94 and three single-precision stores to 0x4000 at 0xdbb2a98, 0xdbb2a9c and 0xdbb2aa4. The name points to texture coordinates, which would explain the three values, but the render does not show which registers hold them. Whether this is a separate command word or the same port is open.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3140 (n32).
  Evidence grade: inferred.
  The routine is 28 bytes and makes four integer stores to 0x4000 at 0xdbb3148, 0xdbb314c and 0xdbb3150 among them, with no argument loads in the facts. The name suggests a three-component byte color written through a scratch path, and the store count fits that loosely. The values stored are not traced, so the color layout is unconfirmed.
  Reviewed: 2026-11-12

- `__glOdyim_Color3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3200 (n32).
  Evidence grade: inferred.
  The routine is 40 bytes and writes one integer store at 0xdbb3214 and three single-precision stores to 0x4000 at 0xdbb3218, 0xdbb321c and 0xdbb3224. The shape matches a three-component double color, the same layout as `__glOdyim_TexCoord3d`. The render does not trace the source registers, so the three-value reading comes from the store count and the name.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3240 (n32).
  Evidence grade: inferred.
  The routine is 40 bytes and has the same store pattern as `__glOdyim_Color3d`: one integer store at 0xdbb3254 and three single-precision stores to 0x4000 at 0xdbb3258, 0xdbb325c and 0xdbb3264. The "Scratch" in the name suggests a variant that does not go through the main color state, but the facts do not show how it differs from `__glOdyim_Color3d`.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3440 (n32).
  Evidence grade: inferred.
  The routine is 28 bytes and makes four integer stores to 0x4000 at 0xdbb3448, 0xdbb344c and 0xdbb3450 among them, with no argument loads in the facts. It has the same size and store count as `__glOdyim_ScratchColor3ui` and `__glOdyim_ScratchColor3us`, which suggests the three integer variants share one layout. The stored sources are not traced.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3540 (n32).
  Evidence grade: inferred.
  The routine is 28 bytes and makes four integer stores to 0x4000 at 0xdbb3548, 0xdbb354c and 0xdbb3550 among them, with no argument loads in the facts. It matches the other 28-byte three-component Scratch entries in this batch. The render does not show what distinguishes the short-integer form from the other integer forms.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3740 (n32).
  Evidence grade: inferred.
  The routine is 28 bytes and makes four integer stores to 0x4000 at 0xdbb3748, 0xdbb374c and 0xdbb3750 among them. Its size and store count match `__glOdyim_ScratchColor3i`, so the two are probably the same path with different input types, but the render does not show the input conversion.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3840 (n32).
  Evidence grade: inferred.
  The routine is 28 bytes and makes four integer stores to 0x4000 at 0xdbb3848, 0xdbb384c and 0xdbb3850 among them. It matches the other 28-byte integer Scratch color entries. Whether the unsigned short input is widened before the store is not shown in the facts.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3940 (n32).
  Evidence grade: inferred.
  The routine is 32 bytes and makes five integer stores to 0x4000 at 0xdbb3948, 0xdbb394c and 0xdbb3950 among them, with no argument loads in the facts. The extra store compared with the three-component forms fits a four-component color. The byte type in the name is not visible in the render.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4dv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3ac0 (n32).
  Evidence grade: inferred.
  The routine is 64 bytes. It loads four 8-byte values (`ldc1`) from a0 at +0x0, +0x8, +0x10 and +0x18, makes one integer store at 0xdbb3ae0, and then makes four 4-byte single-precision stores (`swc1`) to 0x4000, at 0xdbb3ae8, 0xdbb3af0, 0xdbb3af4 and 0xdbb3afc. The facts list only loads and stores, so how the 8-byte values become the 4-byte stores is not shown. Role (from name): the name suggests a four-component double-vector color on a scratch path.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3c40 (n32).
  Evidence grade: inferred.
  The routine is 32 bytes and makes five integer stores to 0x4000 at 0xdbb3c48, 0xdbb3c4c and 0xdbb3c50 among them. It has the same shape as `__glOdyim_ScratchColor4b` and `__glOdyim_ScratchColor4s`. The four-component reading comes from the store count.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3d40 (n32).
  Evidence grade: inferred.
  The routine is 32 bytes and makes five integer stores to 0x4000 at 0xdbb3d48, 0xdbb3d4c and 0xdbb3d50 among them. It matches the other 32-byte four-component Scratch color entries. The short-integer input type is not visible in the render.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ub` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3e40 (n32).
  Evidence grade: inferred.
  The routine is 32 bytes and makes five integer stores to 0x4000 at 0xdbb3e48, 0xdbb3e4c and 0xdbb3e50 among them. Its layout matches the other 32-byte four-component Scratch color entries. The unsigned-byte input is not traced in the facts.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3f40 (n32).
  Evidence grade: inferred.
  The routine is 32 bytes and makes five integer stores to 0x4000 at 0xdbb3f48, 0xdbb3f4c and 0xdbb3f50 among them. It matches its 32-byte four-component neighbors, and the unsigned-int input is not visible in the render.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb4040 (n32).
  Evidence grade: inferred.
  The routine is 32 bytes and makes five integer stores to 0x4000 at 0xdbb4048, 0xdbb404c and 0xdbb4050 among them. It matches the other 32-byte four-component Scratch color entries in the batch. The unsigned-short input is not traced.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchIndexd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb4140 (n32).
  Evidence grade: inferred.
  The routine is 24 bytes and makes one integer store at 0xdbb414c and one single-precision store at 0xdbb4154, both to 0x4000. The facts do not show the source of either store. Role (from name): the name suggests a double color index on a scratch path; the two-store form would fit an index value with one extra word, but the single-precision store does not obviously match a double, so this stays open.
  Reviewed: 2026-11-12

- `__glXOpenGraphicsDevice` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf707bc (n64).
  Evidence grade: inferred.
  The routine is 408 bytes. It compares a0 against 0x41 (the branch at 0xcf707d8 is taken when a0 >= 0x41, signed) and indexes a table at [0x1028] by a0 shifted left 2. It calls `open` on a fixed path at 0xcfa35f0 with flags 0x802. It calls `fcntl` on the returned descriptor with arguments 0x2 and 0x5 only when `open` returned a non-negative value, and calls `ioctl` with request 0x65 on that descriptor only on the path where the word at [[0x1028]+260] is negative. A negative return from `open` or `fcntl`, or a non-positive return from `ioctl`, branches to code followed by a `__glXFatal` call (call 5 at 0xcf708c4, call 6 at 0xcf708e0 and call 8 at 0xcf70940); `__glXFatal` calls 1 and 4 are the other two sites and the facts do not give their conditions. The meaning of request 0x65 and of the `fcntl` arguments is not named in the facts, and the device behind the path is not established by the render.
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
