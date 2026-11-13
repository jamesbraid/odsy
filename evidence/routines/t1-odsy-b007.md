# Tier-1 reading batch 7 for odsy

Role statements for 25 routines from the ranked tier-1 target list, positions 175 to 199. The binaries are the Odyssey (IP30ODSY) builds under `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/`: `libGL.so` and `libGLcore.so`. Every statement is taken from the rendered facts (registers, calls, constants, branches) for that exact address range. Each grade is inferred from those facts. Names come from the binary's symbol table and are not confirmed. Nothing here establishes hardware behavior.

- `CreateContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8ae040 (2324 bytes).
  Evidence grade: inferred.
  It calls `__glXInitialize` at 0xd8ae070 and allocates a 0x128-byte record with `calloc` at 0xd8ae0a0, which it fills in field by field. It calls `getenv` at 0xd8ae1b4 early, before the lookups, and a second `getenv` at 0xd8ae3e8 after the `__glXCreateDirectContext` call at 0xd8ae39c. The lookups of visual and FBConfig records (`__glXFindFBConfigFromVid` at 0xd8ae2fc, `__glXFindVisualConfig` at 0xd8ae328) and the `__glXCreateDirectContext` call sit behind branches, so they run only on some paths. The `fprintf` and `exit` calls at 0xd8ae420 and 0xd8ae434 point to a fatal path, but the facts do not show which condition reaches it.
  Reviewed: 2026-11-12

- `__glXOpenGraphicsDevice` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8aeed8 (388 bytes).
  Evidence grade: inferred.
  It takes a screen index in a0 and calls `__glXFatal` at 0xd8aef08 when the index is 0x41 (65) or above. It looks up a per-index slot in the table at absolute 0x1014. Only when the word at +4 of that slot is negative does it call `open` at 0xd8aef40 (flags 0x802), then `fcntl` with arguments 2 and 5 at 0xd8aef78, and, only when the word at +0x104 of the table is negative, an `ioctl` with request 0x65 at 0xd8aefbc. Each failure path calls `__glXFatal` (0xd8aef60, 0xd8aef94, 0xd8aefe0, 0xd8af02c). The ioctl request is not named in the facts, and the device path string is not resolved.
  Reviewed: 2026-11-12

- `glXDestroyGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8bfdb0 (376 bytes).
  Evidence grade: inferred.
  It runs `__glXSetupForCommand` at 0xd8bfdd4 on the display. When that call returns nonzero, it adds a drawable interest (`__glXAddDrawableInterest`, 0xd8bfdf0), removes it with `__glXRemoveDrawableInterest` (0xd8bfe08), and frees the drawable private with `__glXFreeDrawablePrivate` (0xd8bfe30). A zero return branches at 0xd8bfde0 past those calls and the flush with `_XFlush` at 0xd8bfe7c. The name suggests it tears down a pbuffer, which fits the calls, but three callees are unnamed in the facts.
  Reviewed: 2026-11-12

- `__glXSendMakeCurrentRead` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c2d34 (2460 bytes).
  Evidence grade: inferred.
  It sets up a command with `__glXSetupForCommand` at 0xd8c2d60, then follows a request-and-reply pattern on the X connection: `_XFlush` (0xd8c2dbc, 0xd8c2ef8, each behind a buffer-space check), `_XReply` (0xd8c2e58, 0xd8c2f84), and `_XRead` (0xd8c3030). It calls `__glXPostHiddenError` (0xd8c2eb8, 0xd8c2fe4) when the matching `_XReply` returns zero. The 16-byte `malloc` at 0xd8c3010 and the `_XRead` into it run only when a word at +4 of the third-argument record is nonzero. The request opcode and the reply layout are not visible in the facts, so the exact protocol message stays open.
  Reviewed: 2026-11-12

- `glXCreateGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c3328 (936 bytes).
  Evidence grade: inferred.
  It calls `__glXSetupForCommand` at 0xd8c3358. It tests a value against 2 and 5, calls `__glXInitializeVideoLibrary` at 0xd8c3398, adds a drawable interest at 0xd8c33d0, and creates a video source private record with `__glXCreateVideoSourcePrivate` at 0xd8c3418. `__glXRemoveDrawableInterest` is called five times. Four calls (0xd8c3434, 0xd8c348c, 0xd8c34ec, 0xd8c3544) sit on paths after a failed result (a zero return from the create call, or a negative return from an unnamed call), so they look like failure cleanup. The fifth (0xd8c36ac) comes after the `_XFlush` at 0xd8c35cc. Role (from name): the call at 0xd8c356c goes through the pointer at 0xd8c36d0 and is named `videoPackingToInternalFormat`, which suggests a packing-mode conversion; the facts show only the call and its symbol name.
  Reviewed: 2026-11-12

- `glXSwapIntervalSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c38f8 (468 bytes).
  Evidence grade: inferred.
  It reads a per-screen record through the pointer at absolute 0x1014. The `ioctl` at 0xd8c3980 takes its file descriptor from that table and uses the constant request 0x3ee with a stack buffer and 0x1000; it runs only when a word at +0xc4 of the record at +0x114 is nonzero. It calls `__glXSetupForCommand` at 0xd8c39b4 on a display taken from that record (+0xd8) only when that display pointer is nonzero, then flushes with `_XFlush` (0xd8c3a04, behind a buffer-space check) and `XFlush` (0xd8c3aa8). The ioctl-based path is consistent with the name, which suggests a swap interval setting, but the facts do not name the request.
  Reviewed: 2026-11-12

- `isNotProxy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d2e68 (932 bytes).
  Evidence grade: inferred.
  It opens a fixed path string (0xd8dd42c) at 0xd8d2eb4, calls `fcntl` at 0xd8d2edc, and makes two `ioctl` calls (0xd8d2f14, 0xd8d2f8c). It closes the descriptor on several exits and calls `strchr` at 0xd8d2fd8. This looks like a probe of a device node, but the name's meaning (a proxy test of some kind) is not established by the facts.
  Reviewed: 2026-11-12

- `GetBoardName` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d339c (1528 bytes).
  Evidence grade: inferred.
  It opens a fixed path string (0xd8dd4bc) at 0xd8d33ec, runs `ioctl` on the descriptor at 0xd8d342c, and closes it at 0xd8d3444 and 0xd8d3490. It calls `strlen` at 0xd8d3460 on a stack buffer at sp-60 and copies the result into the caller's buffer (argument 2) with `strncpy` at 0xd8d347c. The ioctl request and the exact string it returns are not named in the facts.
  Reviewed: 2026-11-12

- `GetFBConfigsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d701c (1784 bytes).
  Evidence grade: inferred.
  It takes the display in a0 and runs a request-and-reply exchange: `_XFlush` at 0xd8d7098 and `_XReply` at 0xd8d710c, with many calls on the display pointer whose targets are unnamed. It allocates storage with `malloc` at 0xd8d720c and 0xd8d728c and releases a block with `free` at 0xd8d72ac. The shape suggests it builds an array of FBConfig records for the caller, but the facts do not confirm the record count or layout.
  Reviewed: 2026-11-12

- `glXHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d948c (744 bytes).
  Evidence grade: inferred.
  It calls `__glXSetupForCommand` at 0xd8d94b8, then follows the same flush and reply pattern as its neighbors: `_XFlush` at 0xd8d9564 and `_XReply` at 0xd8d9664, with several unnamed calls on the display. Which request it sends, and what the reply holds, is left open. The name points to hyperpipe configuration, but the facts do not show that directly.
  Reviewed: 2026-11-12

- `glXDestroyHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d9774 (416 bytes).
  Evidence grade: inferred.
  It is smaller than `glXHyperpipeConfigSGIX` (416 against 744 bytes). It calls `__glXSetupForCommand` at 0xd8d9798, makes one unnamed call on the display before flushing with `_XFlush` at 0xd8d97e8 (behind a buffer-space check), and reads a reply with `_XReply` at 0xd8d9864, with more unnamed display calls after the reply. Its role as a teardown is inferred from the name and the reply shape alone.
  Reviewed: 2026-11-12

- `LoadAndSendStippledQuads` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda3ef20 (2548 bytes).
  Evidence grade: inferred.
  It calls `ceil` four times (0xda3efa0, 0xda3f058, 0xda3f108, 0xda3f2f4), which suggests coordinates or sizes are rounded up before use. It clears a stack buffer at sp-68 with `memset` at 0xda3f3a0 and makes one unnamed call at 0xda3f724. The stipple and quad-send steps come from the name only, and the facts do not show the data it sends.
  Reviewed: 2026-11-12

- `__glOdylc_Color3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda40620 (292 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda4069c with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it.
  Reviewed: 2026-11-12

- `__glOdylc_Color3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda40f64 (292 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda40fe0 with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It has the same shape as `__glOdylc_Color3b` and the same 292-byte size, with the call at a different address.
  Reviewed: 2026-11-12

- `__glOdylc_Color3ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda413fc (292 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda41478 with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It has the same shape as `__glOdylc_Color3b`.
  Reviewed: 2026-11-12

- `__glOdylc_Color3us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41648 (292 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda416c4 with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It has the same shape as `__glOdylc_Color3b`.
  Reviewed: 2026-11-12

- `__glOdylc_Color4b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41894 (304 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda41914 with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It is 304 bytes and has the same shape as the other Color4 routines here.
  Reviewed: 2026-11-12

- `__glOdylc_Color4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41fd8 (304 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda42058 with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It is 304 bytes and has the same shape as the other Color4 routines here.
  Reviewed: 2026-11-12

- `__glOdylc_Color4s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda4223c (304 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda422bc with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It is 304 bytes and has the same shape as the other Color4 routines here.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ub` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda424a0 (304 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda42520 with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It is 304 bytes and has the same shape as the other Color4 routines here.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda42704 (304 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda42784 with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It is 304 bytes and has the same shape as the other Color4 routines here.
  Reviewed: 2026-11-12

- `__glOdylc_Color4us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda42968 (304 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xda429e8 with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It is 304 bytes and has the same shape as the other Color4 routines here.
  Reviewed: 2026-11-12

- `__glOdylc_Normal3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaab5a4 (272 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xdaab60c with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It is 272 bytes, smaller than the Color3 routines.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab3864 (272 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xdab38cc with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. It is 272 bytes, the same size as `__glOdylc_Normal3s`.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab413c (284 bytes).
  Evidence grade: inferred.
  It reads the state words at absolute 0x1034, 0x1030 (bit 0x4) and 0x1028 in branches before the call to `__glSPDlistSpace` at 0xdab41a8 with a0 set to 0, which runs only when the word at 0x1028 is below a constant and the earlier tests lead to it. The facts do not show which memory the later stores in the routine go to. Role (from name): `__glSPDlistSpace` suggests display-list space; the facts do not state it. The call passes the routine's own a1 to a3 through. It is 284 bytes.
  Reviewed: 2026-11-12

Rejected: none. All 25 targets rendered and passed the grader. Every entry is graded inferred. Callee roles rest on the symbol names the binary provides, and the family-level reads of the `__glOdylc_*` routines were checked on call and memory-access facts, not on every branch.
