# Tier-2 routine roles, odsy batch 8

- `__glOdylc_Color4ub` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda424a0
  **Inferred.** Calls `__glSPDlistSpace` at 0xdadf11c (jalr at 0xda42520) with a0=0 and the entry arguments, then branches on its return at 0xda42538. It reads the context pointer at abs 0x1010 and its field at +0x13cc, and reads and writes the state words at abs 0x1028, 0x1030 and 0x1034, with bit 0x4 of 0x1030 and the value of 0x1028 against 5 or 6 selecting paths (0xda424f8, 0xda4250c). The routine has the same shape as `__glOdylc_Color4ui` and `__glOdylc_Color4us`, so it reads as one of a family of immediate-mode color entries that reserve list space first. The encoding of the color words is unknown.

- `__glOdylc_Color4ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda42704
  **Inferred.** Same layout as the Color4ub entry at 0xda424a0, offset by 0x264: the call to `__glSPDlistSpace` is at 0xda42784, the return branch at 0xda4279c, and the state words are the same three at abs 0x1028, 0x1030 and 0x1034. Its exit is the return at 0xda4282c. The facts show the list-space reservation and the state updates, but not the color conversion, which is unknown from this disassembly.

- `__glOdylc_Color4us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda42968
  **Inferred.** Same layout again: `__glSPDlistSpace` is called at 0xda429e8 with a0=0, the return is tested at 0xda42a00, and the context pointer is read at abs 0x1010 with the +0x13cc field. The state words at abs 0x1028, 0x1030 and 0x1034 are read and stored back on the exits at 0xda42a18 and 0xda42a90. The routine's job is taken from its sibling entries, and the value packing is unknown.

- `__glOdylc_TexCoord3i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab3864
  **Inferred.** Calls `__glSPDlistSpace` at 0xdab38cc with a0=0 and a3 loaded from abs 0x1028, then tests the return at 0xdab38e4. It reads and writes the state words at abs 0x1028, 0x1030 and 0x1034, and chooses a path by comparing a3 against 4 or 5 (beql at 0xdab38b8). Unlike the Color4 entries it does not touch the context pointer at 0x1010. It is a texture-coordinate sibling of the color entries; the coordinate encoding is unknown.

- `CISendClippedBmFmN` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0640
  **Inferred.** Takes a record at a0 and loads float fields from +0x10, +0x14, +0x18, +0x1c, +0x90, +0xa0, +0xc0, +0xc4 and +0xc8, then issues 39 `swc1` and 11 `sw` stores to the fixed address 0x4000. A flag byte at a0+0xb8 selects a branch (0xdad0658). The identity of the fixed 0x4000 target is unknown; the name suggests a clipped bitmap send. The return is 0xf or 0x10 at 0xdad07ac.

- `__glOdyim_Vertex3i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba73c0
  **Inferred.** A four-store leaf routine: `sw` at 0xdba73e0, 0xdba73e4 and 0xdba73e8 write words to the fixed address 0x4000, and it returns at 0xdba73ec. It makes no calls and reads no state. The name fits an immediate-mode three-integer vertex; the return value is unknown.

- `__glOdyim_Vertex4i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba75c0
  **Inferred.** A leaf routine like `__glOdyim_Vertex3i` at 0xdba73c0, with five `sw` stores to the fixed address 0x4000 (at 0xdba75e8, 0xdba75ec and 0xdba75f0, among others) and a return at 0xdba75f8. No calls are made. The name suggests a four-integer vertex; the return value is unknown.

- `__glOdyim_ScratchColor3b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad540
  **Inferred.** A leaf routine that makes two 8-byte `sdc1` stores to the fixed address 0x4000 (at 0xdbad558 and 0xdbad560) and returns at 0xdbad55c. It makes no calls. The name points at a scratch-buffer color write for a byte-sized color; the return value is unknown.

- `__glOdyim_Color3d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad600
  **Inferred.** A leaf routine with one `sw` at 0xdbad614 and three `swc1` stores (0xdbad61c, 0xdbad620, 0xdbad628) to the fixed address 0x4000, then a return at 0xdbad624. It makes no calls and reads no state. The name fits a double-precision RGB color send; the return value is unknown.

- `__glOdyim_ScratchColor3d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad640
  **Inferred.** A leaf routine with the same store pattern as `__glOdyim_Color3d` at 0xdbad600: one `sw` at 0xdbad654 and three `swc1` (0xdbad65c, 0xdbad660, 0xdbad668) to the fixed address 0x4000, returning at 0xdbad664. The scratch variant suggests it fills the same stream from a temporary copy. The return value is unknown.

- `__glOdyim_ScratchColor3i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad840
  **Inferred.** A leaf routine that makes two 8-byte `sdc1` stores to the fixed address 0x4000 (0xdbad858 and 0xdbad860) and returns at 0xdbad85c. It makes no calls. The name suggests a scratch integer-color write; the return value is unknown.

- `__glOdyim_ScratchColor3s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad940
  **Inferred.** A leaf routine with the same two `sdc1` stores to the fixed address 0x4000 (0xdbad958 and 0xdbad960) and a return at 0xdbad95c, as in `__glOdyim_ScratchColor3i`. The name suggests a short-integer color write. The return value is unknown.

- `__glOdyim_ScratchColor3ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadb40
  **Inferred.** A leaf routine with two `sdc1` stores to the fixed address 0x4000 (0xdbadb58 and 0xdbadb60) and a return at 0xdbadb5c. It makes no calls and reads no state. The name suggests an unsigned-integer color write; the return value is unknown.

- `__glOdyim_ScratchColor3us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadc40
  **Inferred.** A leaf routine with two `sdc1` stores to the fixed address 0x4000 (0xdbadc58 and 0xdbadc60) and a return at 0xdbadc5c, the same pattern as the other ScratchColor3 entries. The name suggests an unsigned-short color write; the return value is unknown.

- `__glOdyim_ScratchColor4i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae040
  **Inferred.** A leaf routine with one 8-byte `sdc1` at 0xdbae054 and three `sw` stores (0xdbae058, 0xdbae05c, 0xdbae064) to the fixed address 0x4000, returning at 0xdbae060. It makes no calls. The name suggests a four-component integer color; the return value is unknown.

- `__glOdyim_ScratchColor4s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae140
  **Inferred.** The same store pattern as `__glOdyim_ScratchColor4i` at 0xdbae040: one `sdc1` at 0xdbae154 and three `sw` to the fixed address 0x4000 (0xdbae158, 0xdbae15c, 0xdbae164), returning at 0xdbae160. The name suggests a four-component short color; the return value is unknown.

- `__glOdyim_ScratchColor4ub` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae240
  **Inferred.** The same store pattern as `__glOdyim_ScratchColor4i`: one `sdc1` at 0xdbae254 and three `sw` to the fixed address 0x4000 (0xdbae258, 0xdbae25c, 0xdbae264), returning at 0xdbae260. The name suggests a four-component unsigned-byte color; the return value is unknown.

- `__glOdyim_ScratchColor4ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae340
  **Inferred.** The same store pattern as `__glOdyim_ScratchColor4i`: one `sdc1` at 0xdbae354 and three `sw` to the fixed address 0x4000 (0xdbae358, 0xdbae35c, 0xdbae364), returning at 0xdbae360. The name suggests a four-component unsigned-integer color; the return value is unknown.

- `__glOdyim_ScratchColor4us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae440
  **Inferred.** The same store pattern as `__glOdyim_ScratchColor4i`: one `sdc1` at 0xdbae454 and three `sw` to the fixed address 0x4000 (0xdbae458, 0xdbae45c, 0xdbae464), returning at 0xdbae460. The name suggests a four-component unsigned-short color; the return value is unknown.

- `glXSelectEventSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b2728
  **Inferred.** Calls `__glXSetupForCommand` at 0xd8b2750 and returns early on a zero low byte of its result (beq at 0xd8b2764). It then fills a request buffer at the pointer in [a0+108] (sb, sh and sw stores at offsets 0x0 to 0x14, around 0xd8b279c to 0xd8b27f4), checks buffer space against [a0+112] (bne at 0xd8b2794), and calls `_XFlush` at 0xd8b2838. Three indirect calls (at 0xd8b277c, 0xd8b2808 and 0xd8b281c) go through unresolved pointers, and one passes the constant 0x801f. The name points to an SGIX event-select request; the rendered facts do not settle which event or which indirect callee.

- `glXGetVideoSyncSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b3aa8
  **Inferred.** Reads a pointer at abs 0x1014 and its fields at +0x108, +0x114 and +0xc4 and +0xcc. It calls `ioctl` at 0xd8b3b00 with a request of 0x3fe, a stack buffer at sp-48, and a device descriptor taken from an indexed table (`lw` at 0xd8b3b04). It stores the result word through a0 at 0xd8b3b10 and returns 0x0 at 0xd8b3b20 or 0x5 at 0xd8b3b2c, with the two null checks at 0xd8b3ac4 and 0xd8b3ad0 choosing the early exit. This reads as a video-sync count query on a device; the ioctl request 0x3fe has no name in these facts, and the return value 5 is an unknown sub-fact here.

- `glXCreateGLXVideoSourceSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b3e14
  **Inferred.** Creates a video source for a drawable. It calls `__glXSetupForCommand` (0xd8b3e48), `__glXInitializeVideoLibrary` (0xd8b3e94), `__glXAddDrawableInterest` (0xd8b3ec0) and `__glXCreateVideoSourcePrivate` (0xd8b3f30), then configures packing through a function pointer loaded from [0xd8b3d50] (bgezall at 0xd8b3fdc, named `videoPackingToInternalFormat` in the disassembly). On the failure paths it calls `__glXRemoveDrawableInterest` (0xd8b40e0, 0xd8b411c, 0xd8b4158, 0xd8b417c, 0xd8b41a0) and returns 0x0 at each visible exit. The request buffer at [a0+108] is filled with the same offsets as the other GLX requests. The return at 0xd8b40f8 has an unknown value.

- `isNotProxy` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c1618
  **Inferred.** Probes a device by name. It reads [a0+36] against 0x40 (bne at 0xd8c162c), opens the path at 0xd8e0538 with flags 0x802 (jalr at 0xd8c1650), sets descriptor flags with fcntl (0xd8c1674), and issues ioctl requests 0x65 and 0x66 (0xd8c168c and 0xd8c16e4) before closing the descriptor. It then splits the name on ':' with `strchr` (0xd8c1708) and compares characters against '.' (0x2e at 0xd8c1734). The return of 1 at 0xd8c1780 is the only non-zero exit; the facts do not show which device name or ioctl result maps to it, so the not-proxy meaning is a reading of the name.

- `glXBindSwapBarrierSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cae48
  **Inferred.** Calls `__glXSetupForCommand` at 0xd8cae74 and then tests the state at [a0+1232] (beq at 0xd8cae84). It writes a request header into the buffer at [a0+108] (sb and sh at offsets 0x0 and 0x2, sw at 0x4 to 0x10), checks buffer space against [a0+112] and [a0+108]+20 (bne at 0xd8caeb4), and calls an unresolved indirect callee at 0xd8caf1c with the constant 0x1000c as a3. It finishes with `_XFlush` at 0xd8caf54. The name suggests a swap-barrier bind request; the constant 0x1000c is probably a request code, which the facts do not establish.

- `glXQueryMaxSwapBarriersSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8caf6c
  **Inferred.** Calls `__glXSetupForCommand` at 0xd8caf98, writes a request into the buffer at [a0+108], and calls `_XReply` at 0xd8cb030 with a 4-byte reply buffer at sp-112 and a reply size of 0x10. If the reply call returns zero (beq at 0xd8cb038) it takes a separate path. On success it stores the reply word through the output pointer a2 at 0xd8cb078. The routine returns 1 at 0xd8cb088 and 0 at 0xd8cb0e4, and the name suggests it queries the maximum swap-barrier count; the reply field layout is unknown.
