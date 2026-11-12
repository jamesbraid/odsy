# Tier-1 reading batch 7 for odsy

Role statements for 25 routines from the ranked tier-1 target list, positions 175 to 199. The binaries are the Odyssey (IP30ODSY) builds under `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/`: `libGL.so` and `libGLcore.so`. Every statement is taken from the rendered facts (registers, calls, constants, branches) for that exact address range. Each grade is inferred from those facts. Names come from the binary's symbol table and are not confirmed. Nothing here establishes hardware behavior.

- `CreateContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8ae040 (2324 bytes).
  Evidence grade: inferred.
  It calls `__glXInitialize` at 0xd8ae070 and allocates a 0x128-byte record with `calloc` at 0xd8ae0a0, which it fills in field by field. It reads two environment variables through `getenv` at 0xd8ae1b4 and 0xd8ae3e8, then looks up visual and FBConfig records (`__glXFindVisualConfig` at 0xd8ae328, `__glXFindFBConfigFromVid` at 0xd8ae2fc) before creating the direct context with `__glXCreateDirectContext` at 0xd8ae39c. The `fprintf` and `exit` calls at 0xd8ae420 and 0xd8ae434 point to a fatal path, but the facts do not show which condition reaches it.

- `__glXOpenGraphicsDevice` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8aeed8 (388 bytes).
  Evidence grade: inferred.
  It takes a screen index in a0, rejects values at or above 0x41 (65), and looks up a per-index slot in the table at absolute 0x1014. It opens a device node with `open` at 0xd8aef40 (flags 0x802), calls `fcntl` with arguments 2 and 5 at 0xd8aef78, and issues an `ioctl` with request 0x65 at 0xd8aefbc. Each failure path calls `__glXFatal` (0xd8aef08, 0xd8aef60, 0xd8aef94, 0xd8aefe0, 0xd8af02c). The ioctl request is not named in the facts, and the device path string is not resolved.

- `glXDestroyGLXPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8bfdb0 (376 bytes).
  Evidence grade: inferred.
  It runs `__glXSetupForCommand` at 0xd8bfdd4 on the display. When that call returns nonzero, it adds a drawable interest (`__glXAddDrawableInterest`, 0xd8bfdf0), removes it with `__glXRemoveDrawableInterest` (0xd8bfe08), and frees the drawable private with `__glXFreeDrawablePrivate` (0xd8bfe30). A zero return branches at 0xd8bfde0 past those calls and the flush with `_XFlush` at 0xd8bfe7c. The name suggests it tears down a pbuffer, which fits the calls, but three callees are unnamed in the facts.

- `__glXSendMakeCurrentRead` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c2d34 (2460 bytes).
  Evidence grade: inferred.
  It sets up a command with `__glXSetupForCommand` at 0xd8c2d60, then follows a request-and-reply pattern on the X connection: `_XFlush` (0xd8c2dbc, 0xd8c2ef8), `_XReply` (0xd8c2e58, 0xd8c2f84), and `_XRead` (0xd8c3030). It allocates a 16-byte buffer with `malloc` at 0xd8c3010 and reports errors through `__glXPostHiddenError` (0xd8c2eb8, 0xd8c2fe4). The request opcode and the reply layout are not visible in the facts, so the exact protocol message stays open.

- `glXCreateGLXVideoSourceSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c3328 (936 bytes).
  Evidence grade: inferred.
  It initializes a video library through `__glXInitializeVideoLibrary` at 0xd8c3398, adds a drawable interest at 0xd8c33d0, and creates a video source private record with `__glXCreateVideoSourcePrivate` at 0xd8c3418. Four `__glXRemoveDrawableInterest` calls (0xd8c3434, 0xd8c348c, 0xd8c34ec, 0xd8c3544) look like cleanup on its failure paths. It converts a packing mode through `videoPackingToInternalFormat`, reached through the pointer at 0xd8c36d0 (call at 0xd8c356c).

- `glXSwapIntervalSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8c38f8 (468 bytes).
  Evidence grade: inferred.
  It reads a per-screen record through the pointer at absolute 0x1014, then issues an `ioctl` at 0xd8c3980 whose request argument is computed from that record. It runs `__glXSetupForCommand` at 0xd8c39b4 and flushes with `_XFlush` (0xd8c3a04) and `XFlush` (0xd8c3aa8). The ioctl-based path is consistent with the name, which suggests a swap interval setting, but the facts do not name the request.

- `isNotProxy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d2e68 (932 bytes).
  Evidence grade: inferred.
  It opens a fixed path string (0xd8dd42c) at 0xd8d2eb4, calls `fcntl` at 0xd8d2edc, and makes two `ioctl` calls (0xd8d2f14, 0xd8d2f8c). It closes the descriptor on several exits and calls `strchr` at 0xd8d2fd8. This looks like a probe of a device node, but the name's meaning (a proxy test of some kind) is not established by the facts.

- `GetBoardName` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d339c (1528 bytes).
  Evidence grade: inferred.
  It opens a fixed path string (0xd8dd4bc) at 0xd8d33ec, runs `ioctl` on the descriptor at 0xd8d342c, and closes it at 0xd8d3444 and 0xd8d3490. It calls `strlen` at 0xd8d3460 on a stack buffer at sp-60 and copies the result into the caller's buffer (argument 2) with `strncpy` at 0xd8d347c. The ioctl request and the exact string it returns are not named in the facts.

- `GetFBConfigsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d701c (1784 bytes).
  Evidence grade: inferred.
  It takes the display in a0 and runs a request-and-reply exchange: `_XFlush` at 0xd8d7098 and `_XReply` at 0xd8d710c, with many calls on the display pointer whose targets are unnamed. It allocates storage with `malloc` at 0xd8d720c and 0xd8d728c and releases a block with `free` at 0xd8d72ac. The shape suggests it builds an array of FBConfig records for the caller, but the facts do not confirm the record count or layout.

- `glXHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d948c (744 bytes).
  Evidence grade: inferred.
  It calls `__glXSetupForCommand` at 0xd8d94b8, then follows the same flush and reply pattern as its neighbors: `_XFlush` at 0xd8d9564 and `_XReply` at 0xd8d9664, with several unnamed calls on the display. Which request it sends, and what the reply holds, is left open. The name points to hyperpipe configuration, but the facts do not show that directly.

- `glXDestroyHyperpipeConfigSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d9774 (416 bytes).
  Evidence grade: inferred.
  It is the shortest of the hyperpipe group. It calls `__glXSetupForCommand` at 0xd8d9798, flushes with `_XFlush` at 0xd8d97e8, and reads a reply with `_XReply` at 0xd8d9864, with unnamed display calls between them. Its role as a teardown is inferred from the name and the reply shape alone.

- `LoadAndSendStippledQuads` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda3ef20 (2548 bytes).
  Evidence grade: inferred.
  It calls `ceil` four times (0xda3efa0, 0xda3f058, 0xda3f108, 0xda3f2f4), which suggests coordinates or sizes are rounded up before use. It clears a stack buffer at sp-68 with `memset` at 0xda3f3a0 and makes one unnamed call at 0xda3f724. The stipple and quad-send steps come from the name only, and the facts do not show the data it sends.

- `__glOdylc_Color3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda40620 (292 bytes).
  Evidence grade: inferred.
  It reads three state words at absolute 0x1028, 0x1030 and 0x1034 and tests them with `bne` and `beql` branches before deciding whether to call `__glSPDlistSpace` at 0xda4069c with a0 set to 0. It writes to the same words in several places, including the store to 0x1034 at 0xda40730. The helper's name suggests display-list space, which is an inference from the name and not something the facts state.

- `__glOdylc_Color3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda40f64 (292 bytes).
  Evidence grade: inferred.
  It has the same state-word shape as `__glOdylc_Color3b`: reads at absolute 0x1028, 0x1030 and 0x1034, a call to `__glSPDlistSpace` at 0xda40fe0 with a0 set to 0, and a store back to 0x1034 at 0xda41074. The size and call offsets differ, so this is a sibling routine, not a copy. I read its memory-access and call facts but not every branch.

- `__glOdylc_Color3ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda413fc (292 bytes).
  Evidence grade: inferred.
  It is in the same family as the other `__glOdylc_Color3*` routines, with the same `__glSPDlistSpace` call at 0xda41478 and a0 set to 0. I checked its call lines only and did not read the full branch and store facts, so the state-word details are not confirmed for this routine.

- `__glOdylc_Color3us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41648 (292 bytes).
  Evidence grade: inferred.
  It matches the Color3 family pattern: one `__glSPDlistSpace` call at 0xda416c4 with a0 set to 0, in the same 292-byte size class. I checked its call lines only, so the state-word details are not confirmed for this routine.

- `__glOdylc_Color4b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41894 (304 bytes).
  Evidence grade: inferred.
  It is in the Color4 family, one 304-byte routine with a single `__glSPDlistSpace` call at 0xda41914 and a0 set to 0. I checked its call lines only, so its branch and state-word details are not confirmed.

- `__glOdylc_Color4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41fd8 (304 bytes).
  Evidence grade: inferred.
  It is in the Color4 family, with one `__glSPDlistSpace` call at 0xda42058 and a0 set to 0. I checked its call lines only, so its branch and state-word details are not confirmed.

- `__glOdylc_Color4s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda4223c (304 bytes).
  Evidence grade: inferred.
  It is in the Color4 family, with one `__glSPDlistSpace` call at 0xda422bc and a0 set to 0. I checked its call lines only, so its branch and state-word details are not confirmed.

- `__glOdylc_Color4ub` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda424a0 (304 bytes).
  Evidence grade: inferred.
  It is in the Color4 family, with one `__glSPDlistSpace` call at 0xda42520 and a0 set to 0. I checked its call lines only, so its branch and state-word details are not confirmed.

- `__glOdylc_Color4ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda42704 (304 bytes).
  Evidence grade: inferred.
  It is in the Color4 family, with one `__glSPDlistSpace` call at 0xda42784 and a0 set to 0. I checked its call lines only, so its branch and state-word details are not confirmed.

- `__glOdylc_Color4us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda42968 (304 bytes).
  Evidence grade: inferred.
  It is in the Color4 family, with one `__glSPDlistSpace` call at 0xda429e8 and a0 set to 0. I checked its call lines only, so its branch and state-word details are not confirmed.

- `__glOdylc_Normal3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaab5a4 (272 bytes).
  Evidence grade: inferred.
  It uses the same state words as the Color3 routines (absolute 0x1028, 0x1030, 0x1034) and calls `__glSPDlistSpace` at 0xdaab60c with a0 set to 0. It stores back to 0x1028, 0x1030 and 0x1034 before returning (0xdaab6a0 is the last of them). The 272-byte size is smaller than the Color3 group, so the routine is shorter than its siblings.

- `__glOdylc_TexCoord3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab3864 (272 bytes).
  Evidence grade: inferred.
  It is in the same 272-byte class as `__glOdylc_Normal3s`, with one `__glSPDlistSpace` call at 0xdab38cc and a0 set to 0. I checked its call lines only, so its branch and state-word details are not confirmed.

- `__glOdylc_TexCoord4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab413c (284 bytes).
  Evidence grade: inferred.
  It uses the same state words (absolute 0x1028, 0x1030, 0x1034) and a single `__glSPDlistSpace` call at 0xdab41a8, passing its own arguments a1 to a3 through with a0 set to 0. It stores to 0x1034 at 0xdab4244. I read its memory-access and call facts but not every branch.

Rejected: none. All 25 targets rendered and passed the grader. Every entry is graded inferred. Callee roles rest on the symbol names the binary provides, and the family-level reads of the `__glOdylc_*` routines were checked on call and memory-access facts, not on every branch.
