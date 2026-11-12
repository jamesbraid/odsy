# Tier-2 routine roles, odsy batch 8

- `__glOdylc_Color4ub` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda424a0
  **Inferred.** Role (from name): one of a family of immediate-mode color entries, like `__glOdylc_Color4ui` and `__glOdylc_Color4us`, which have the same shape. The routine reads the context pointer at abs 0x1010 and its field at +0x13cc (the field is read and stored back), and reads and writes the state words at abs 0x1028, 0x1030 and 0x1034, with bit 0x4 of 0x1030 and the value of 0x1028 against 5 or 6 selecting paths (0xda424f8, 0xda4250c). Only when the 0x1028 value is below that limit (beql at 0xda4250c) it calls `__glSPDlistSpace` at 0xdadf11c (jalr at 0xda42520) with a0=0 and a1 to a3 as at entry, then branches on its return at 0xda42538. The encoding of the color words is unknown.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda42704
  **Inferred.** Same layout as the Color4ub entry at 0xda424a0, offset by 0x264: the call to `__glSPDlistSpace` is at 0xda42784, the return branch at 0xda4279c, and the state words are the same three at abs 0x1028, 0x1030 and 0x1034. Its exit is the return at 0xda4282c. The facts show the list-space reservation and the state updates, but not the color conversion, which is unknown from this disassembly.
  Reviewed: 2026-11-12

- `__glOdylc_Color4us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda42968
  **Inferred.** Role (from name): another member of the immediate-mode color family; the routine has the same layout as `__glOdylc_Color4ub` and `__glOdylc_Color4ui`. `__glSPDlistSpace` is called at 0xda429e8 with a0=0 and its return is tested at 0xda42a00; the context pointer is read at abs 0x1010 with the +0x13cc field. The state words at abs 0x1028, 0x1030 and 0x1034 are read, and the facts show stores at 0xda42a10 and 0xda42a1c (the path where the return is zero) and at 0xda42a78 to 0xda42a84 before the return at 0xda42a90; which words those stores write is not shown. The value packing is unknown.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord3i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab3864
  **Inferred.** Calls `__glSPDlistSpace` at 0xdab38cc with a0=0 and a3 loaded from abs 0x1028, only when that value is below a limit of 4 or 5 (beql at 0xdab38b8), then tests the return at 0xdab38e4. It reads and writes the state words at abs 0x1028, 0x1030 and 0x1034, and bit 0x4 of 0x1030 and the value at 0x1028 select the paths. Role (from name): a texture-coordinate entry in the same family as the color entries; the coordinate encoding is unknown.
  Reviewed: 2026-11-12

- `CISendClippedBmFmN` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0640
  **Inferred.** Takes a record at a0 and loads float fields from +0x10, +0x14, +0x18, +0x1c, +0x90, +0xa0, +0xc0, +0xc4 and +0xc8, then issues 39 `swc1` and 11 `sw` stores to the fixed address 0x4000. A flag byte at a0+0xb8 selects a branch (0xdad0658). The identity of the fixed 0x4000 target is unknown; the name suggests a clipped bitmap send. The return is 0xf or 0x10 at 0xdad07ac.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex3i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba73c0
  **Inferred.** A four-store leaf routine: `sw` at 0xdba73e0, 0xdba73e4 and 0xdba73e8 write words to the fixed address 0x4000, and it returns at 0xdba73ec. It makes no calls and reads no state. The name fits an immediate-mode three-integer vertex; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex4i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba75c0
  **Inferred.** A leaf routine like `__glOdyim_Vertex3i` at 0xdba73c0, with five `sw` stores to the fixed address 0x4000 (at 0xdba75e8, 0xdba75ec and 0xdba75f0, among others) and a return at 0xdba75f8. No calls are made. The name suggests a four-integer vertex; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad540
  **Inferred.** A leaf routine that makes two 8-byte `sdc1` stores to the fixed address 0x4000 (at 0xdbad558 and 0xdbad560) and returns at 0xdbad55c. It makes no calls. The name points at a scratch-buffer color write for a byte-sized color; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_Color3d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad600
  **Inferred.** A leaf routine with one `sw` at 0xdbad614 and three `swc1` stores (0xdbad61c, 0xdbad620, 0xdbad628) to the fixed address 0x4000, then a return at 0xdbad624. It makes no calls and reads no state. The name fits a double-precision RGB color send; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad640
  **Inferred.** A leaf routine with the same store pattern as `__glOdyim_Color3d` at 0xdbad600: one `sw` at 0xdbad654 and three `swc1` (0xdbad65c, 0xdbad660, 0xdbad668) to the fixed address 0x4000, returning at 0xdbad664. The return value is unknown. Role (from name): a scratch variant of the Color3d send; what scratch means here is not shown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad840
  **Inferred.** A leaf routine that makes two 8-byte `sdc1` stores to the fixed address 0x4000 (0xdbad858 and 0xdbad860) and returns at 0xdbad85c. It makes no calls. The name suggests a scratch integer-color write; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad940
  **Inferred.** A leaf routine with the same two `sdc1` stores to the fixed address 0x4000 (0xdbad958 and 0xdbad960) and a return at 0xdbad95c, as in `__glOdyim_ScratchColor3i`. The name suggests a short-integer color write. The return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadb40
  **Inferred.** A leaf routine with two `sdc1` stores to the fixed address 0x4000 (0xdbadb58 and 0xdbadb60) and a return at 0xdbadb5c. It makes no calls and reads no state. The name suggests an unsigned-integer color write; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadc40
  **Inferred.** A leaf routine with two `sdc1` stores to the fixed address 0x4000 (0xdbadc58 and 0xdbadc60) and a return at 0xdbadc5c, the same pattern as the other ScratchColor3 entries. The name suggests an unsigned-short color write; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae040
  **Inferred.** A leaf routine with one 8-byte `sdc1` at 0xdbae054 and three `sw` stores (0xdbae058, 0xdbae05c, 0xdbae064) to the fixed address 0x4000, returning at 0xdbae060. It makes no calls. The name suggests a four-component integer color; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae140
  **Inferred.** The same store pattern as `__glOdyim_ScratchColor4i` at 0xdbae040: one `sdc1` at 0xdbae154 and three `sw` to the fixed address 0x4000 (0xdbae158, 0xdbae15c, 0xdbae164), returning at 0xdbae160. The name suggests a four-component short color; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ub` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae240
  **Inferred.** The same store pattern as `__glOdyim_ScratchColor4i`: one `sdc1` at 0xdbae254 and three `sw` to the fixed address 0x4000 (0xdbae258, 0xdbae25c, 0xdbae264), returning at 0xdbae260. The name suggests a four-component unsigned-byte color; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae340
  **Inferred.** The same store pattern as `__glOdyim_ScratchColor4i`: one `sdc1` at 0xdbae354 and three `sw` to the fixed address 0x4000 (0xdbae358, 0xdbae35c, 0xdbae364), returning at 0xdbae360. The name suggests a four-component unsigned-integer color; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae440
  **Inferred.** The same store pattern as `__glOdyim_ScratchColor4i`: one `sdc1` at 0xdbae454 and three `sw` to the fixed address 0x4000 (0xdbae458, 0xdbae45c, 0xdbae464), returning at 0xdbae460. The name suggests a four-component unsigned-short color; the return value is unknown.
  Reviewed: 2026-11-12

- `glXSelectEventSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b2728
  **Inferred.** Calls `__glXSetupForCommand` at 0xd8b2750 and returns its result at 0xd8b2850 when the low byte of that result is zero (beq at 0xd8b2764). Otherwise it checks buffer space against [a0+112] (bne at 0xd8b2794): when the buffer is short it calls `_XFlush` at 0xd8b2838 and then continues at 0xd8b279c. It fills a request at the pointer in [a0+108] (sb, sh and sw stores at offsets 0x0 to 0x14, around 0xd8b279c to 0xd8b27f4). Three indirect calls (at 0xd8b277c, 0xd8b2808 and 0xd8b281c) go through unresolved pointers, the first two only when [a0+1232] is nonzero and the third only when [a0+124] is nonzero, and the one at 0xd8b2808 passes the constant 0x801f as a3. Role (from name): an SGIX event-select request; the rendered facts do not settle which event or which indirect callee.
  Reviewed: 2026-11-12

- `glXGetVideoSyncSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b3aa8
  **Inferred.** Reads a context pointer at abs 0x1014 and its field at +0x114, and returns 0x5 at 0xd8b3b2c when that field is zero or when the word at +0xc4 of that record is zero (beq at 0xd8b3ac4 and 0xd8b3ad0). Otherwise it reads +0xcc of the record and the index at +0x108 of the context pointer, and calls `ioctl` at 0xd8b3b00 with a request of 0x3fe, a stack buffer at sp-48, and a descriptor taken from an indexed table at the context pointer (`lw` at 0xd8b3b04). It stores a word from that buffer through the pointer saved from a0 at 0xd8b3b10 and returns 0x0 at 0xd8b3b20. Role (from name): a video-sync count query on a device; the ioctl request 0x3fe has no name in these facts, and the meaning of the return value 5 is not shown.
  Reviewed: 2026-11-12

- `glXCreateGLXVideoSourceSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8b3e14
  **Inferred.** Role (from name): creates a video source for a drawable. It calls `__glXSetupForCommand` (0xd8b3e48), `__glXInitializeVideoLibrary` (0xd8b3e94, reached only when a4 is 0x2 or 0x5 at the branches at 0xd8b3e70 and 0xd8b3e78; otherwise the routine returns 0x0 at 0xd8b3e88), `__glXAddDrawableInterest` (0xd8b3ec0) and `__glXCreateVideoSourcePrivate` (0xd8b3f30). It makes a direct call (bgezall at 0xd8b3fdc) to the routine at 0xd8b3d50, which the facts name `videoPackingToInternalFormat`, and stores its result at +0x14 of a record. `__glXRemoveDrawableInterest` is called at 0xd8b411c, 0xd8b4158, 0xd8b417c and 0xd8b41a0, each followed by a return of 0x0, and at 0xd8b40e0 on the path that ends in the return at 0xd8b40f8, whose value is unknown. The exits at 0xd8b3e88, 0xd8b3ee4, 0xd8b3efc and 0xd8b4110 also return 0x0. The request buffer at [a0+108] is filled with stores at offsets 0x0 to 0x28; their meaning is not shown.
  Reviewed: 2026-11-12

- `isNotProxy` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c1618
  **Inferred.** Role (from name): a check on whether a device is not a proxy; the facts do not show what it tests. It reads [a0+36] against 0x40 (bne at 0xd8c162c) and returns 0x0 when it is at least 0x40. Otherwise it calls `open` with the constant path address 0xd8e0538 and flags 0x802 (jalr at 0xd8c1650), `fcntl` with a1=0x2 and a2=0x5 (0xd8c1674), and `ioctl` with requests 0x65 and 0x66 (0xd8c168c and 0xd8c16e4), the second only when the first returns above zero and [a0+36] is below that result. Failure paths call `close` and return 0x0. It then calls `strchr` with a1=0x3a (':') at 0xd8c1708 and compares bytes against '.' (0x2e at 0xd8c1734) in a loop. The return of 1 at 0xd8c1780 is the only non-zero exit; the facts do not show which device name or ioctl result leads to it.
  Reviewed: 2026-11-12

- `glXBindSwapBarrierSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cae48
  **Inferred.** Calls `__glXSetupForCommand` at 0xd8cae74 and then tests the state at [a0+1232] (beq at 0xd8cae84), calling an unresolved indirect callee at 0xd8cae94 when it is nonzero. It checks buffer space against [a0+112] and [a0+108]+20 (bne at 0xd8caeb4): when the buffer is short it calls `_XFlush` at 0xd8caf54 and then continues with the stores. It writes a request header into the buffer at [a0+108] (sb and sh at offsets 0x0 and 0x2, sw at 0x4 to 0x10) and, when [a0+1232] is nonzero, calls an unresolved indirect callee at 0xd8caf1c with the constant 0x1000c as a3. Role (from name): a swap-barrier bind request; the facts do not establish whether 0x1000c is a request code.
  Reviewed: 2026-11-12

- `glXQueryMaxSwapBarriersSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8caf6c
  **Inferred.** Calls `__glXSetupForCommand` at 0xd8caf98, writes request fields into the buffer at [a0+108] (a halfword 0x4 at +2 and a word 0x1000d at +4), and calls `_XReply` at 0xd8cb030 with a reply buffer at sp-112 and zero in a2 and a3. The 0x4 in a4 and 0x10 in a7 at that call are not `_XReply` arguments, so the reply size is not established. If the reply call returns zero (beq at 0xd8cb038) it takes a separate path. On success it stores the reply word through the output pointer a2 at 0xd8cb078. The routine returns 1 at 0xd8cb088 and 0 at 0xd8cb0e4, and the name suggests it queries the maximum swap-barrier count; the reply field layout is unknown.
  Reviewed: 2026-11-12
