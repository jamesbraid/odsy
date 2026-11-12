# Odyssey GL routines, read from machine code (set 19)

Role statements for 25 routines of the Odyssey GL libraries, taken from disassembly of the IP30 builds: `usr/gfx/arch/IP30ODSY32/libGLcore.so`, `usr/gfx/arch/IP30ODSY64/libGL.so` and `usr/gfx/arch/IP30ODSY64/libGLcore.so`. Each statement cites only the addresses, callees and constants of the rendered code. Every label here is **inferred**: the callees and constants are read, but the bodies of the called routines are not, and no entry is established from the whole body alone.

The binaries were read from the workspace copy under `root/`. The inventory lists that file name under 15 build directories, and this read does not show which build the copy belongs to, so the headers cannot name one build. The inventory check holds these entries at located for that reason. Entries whose own wording says a point is not confirmed or not decoded are also held at located.

- `__glOdyim_ScratchColor3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4840 (n32)
  **Inferred.** Writes four 4-byte words to the fixed address 0x10000, at 0xdad484c, 0xdad4850, 0xdad4854 and 0xdad485c, and returns 0x10000 in v0 at 0xdad4858 (the last store at 0xdad485c follows that return in the delay slot). The values written are not traced, so the effect on color state is open. The name suggests a three-component unsigned-short color setter, which this read does not confirm.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4b` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4940 (n32)
  **Inferred.** Writes five 4-byte words to the fixed address 0x10000, first at 0xdad494c, 0xdad4950 and 0xdad4954, then returns 0x10000 in v0 at 0xdad495c. The stored values are not traced here. The name suggests a signed-byte color setter, which is not confirmed.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4dv` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4b00 (n32)
  **Inferred.** Loads four doubles from the argument pointer in a0 at offsets 0x0, 0x8, 0x10 and 0x18, then writes single-precision words to 0x10000: one word store at 0xdad4b24 and four `swc1` stores, including those at 0xdad4b2c, 0xdad4b34 and 0xdad4b38. It returns 0x10000 in v0 at 0xdad4b3c. The double-to-float conversion is not in the rendered facts, so the stored values are not confirmed.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4i` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4cc0 (n32)
  **Inferred.** Writes five 4-byte words to the fixed address 0x10000, first at 0xdad4ccc, 0xdad4cd0 and 0xdad4cd4, then returns 0x10000 in v0 at 0xdad4cdc. The stored values are not traced. The name suggests a signed-int color setter, which is not confirmed.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4s` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4dc0 (n32)
  **Inferred.** Writes five 4-byte words to the fixed address 0x10000, first at 0xdad4dcc, 0xdad4dd0 and 0xdad4dd4, then returns 0x10000 in v0 at 0xdad4ddc. The stored values are not traced. The name suggests a signed-short color setter, which is not confirmed.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4ub` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4ec0 (n32)
  **Inferred.** Writes five 4-byte words to the fixed address 0x10000, first at 0xdad4ecc, 0xdad4ed0 and 0xdad4ed4, then returns 0x10000 in v0 at 0xdad4edc. The stored values are not traced. The name suggests an unsigned-byte color setter, which is not confirmed.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4ui` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4fc0 (n32)
  **Inferred.** Writes five 4-byte words to the fixed address 0x10000, first at 0xdad4fcc, 0xdad4fd0 and 0xdad4fd4, then returns 0x10000 in v0 at 0xdad4fdc. The stored values are not traced. The name suggests an unsigned-int color setter, which is not confirmed.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4us` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad50c0 (n32)
  **Inferred.** Writes five 4-byte words to the fixed address 0x10000, first at 0xdad50cc, 0xdad50d0 and 0xdad50d4, then returns 0x10000 in v0 at 0xdad50dc. The stored values are not traced. The name suggests an unsigned-short color setter, which is not confirmed.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchIndexd` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad51c0 (n32)
  **Inferred.** Makes one word store to 0x10000 at 0xdad51d0 and one `swc1` store to 0x10000 at 0xdad51d8, and returns 0x10000 in v0 at 0xdad51d4. The `swc1` follows the return, so it is probably the branch delay slot, but the rendered facts do not state that. The stored values are not traced, and the name suggests a double index setter, which is not confirmed.
  Reviewed: 2026-11-12 (sonnet)

- `__glXOpenGraphicsDevice` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x559300c (n64)
  **Inferred.** `__glXFatal` is called at five sites (0x559306c, 0x55930d4, 0x5593110, 0x5593128 and 0x5593188), each under a conditional that is not traced here. The routine also calls `open` at 0x5593088 with a0 = 0x55c73e0 and flags 0x802, `fcntl` at 0x55930a4 with a1 = 0x2 and a2 = 0x5, and `ioctl` at 0x5593144 on the descriptor from `open`, with request 0x65, a2 = 0, a3 = the 8-byte value at absolute address 0x1028 and a4 (the fifth argument) = the word at offset +0x104 from that value. The contents at 0x55c73e0 and the meaning of request 0x65 are not decoded, so what the device is stays open.
  Reviewed: 2026-11-12 (sonnet)

- `GetFBConfigsSGIX` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x559fe38 (n64)
  **Inferred.** Calls `_XReply` at 0x559fef0 and reads a variable-length reply with `_XRead` at 0x55a01f8, using `malloc` and `free` for its buffers. `_XFlush` at 0x55a004c is reached only when the buffer-end comparison at 0x559fe88 is taken. A chain of comparisons tests a per-item code against many constants, including 0x3, 0x5, 0x7, 0xb, 0xe, 0xf and 0x23 to 0x28, which points to a table of attribute cases, but the case bodies are not traced. `__glXOverrideVisualGetVisualInfo` at 0x55a0b7c and `XFree` at 0x55a0bc0 come near the end. The role of the routine is not confirmed from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `__glXGetDrawableAttributes` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55a8a04 (n64)
  **Inferred.** Calls `__glXSetupForCommand` at 0x55a8a38. When its result (low byte) is nonzero, the a3 argument selects between two paths that each call `_XReply` (0x55a8ae4 when a3 is nonzero, 0x55a8bd8 when it is zero). The reply is read with `_XRead` at 0x55a8ca4 into a `malloc` buffer. A loop over the reply words dispatches on a value through a jump table with 0x1a entries, and stores word and doubleword results at offsets 0x0 to 0x28 from a2 (the sd stores at 0x55a8d24 and 0x55a8d2c, at offsets 0x8 and 0x28, among them). `_XFlush` at 0x55a8c40 and 0x55a8dbc is reached only from the buffer-end comparisons at 0x55a8a7c and 0x55a8b84. A call at 0x55a8d68 passes -0x800c in a7, which this read does not decode. The role of the routine is not confirmed from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `glXGetVideoSyncSGI` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55a995c (n64)
  **Inferred.** Loads a pointer from absolute 0x1028 and a second pointer from offset +280 of it. When that second pointer is nonzero and the word at +280 from it is nonzero, it calls `ioctl` at 0x55a99b4 with request 0x3fe, a2 = sp-32, a3 = its own a3 argument, a descriptor taken from a table indexed by the word at +264 of the first pointer (a0), and a4 and a5 loaded from the +280 chain. If either test fails, it branches to 0x55a99dc and returns at 0x55a99e0 with v0 = 5; a return with v0 = 0 appears at 0x55a99d4. How the output buffer reaches the caller is not traced. The role of the routine is not confirmed from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `glXDestroyGLXVideoSourceSGIX` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55a9ab0 (n64)
  **Inferred.** Calls `__glXSetupForCommand` at 0x55a9adc. A zero low byte of its result branches at 0x55a9ae8 to 0x55a9bc8, near the return. Otherwise, when the second argument (a1) is nonzero, it calls `__glXAddDrawableInterest` at 0x55a9afc, then `__glXRemoveDrawableInterest` at 0x55a9b0c and `__glXFreeDrawablePrivate` at 0x55a9b18, each with the result of the first call as a0. A zero a1 branches at 0x55a9af0 to 0x55a9bc4 and skips these three calls. After that it stores header words, and calls an unresolved callee at 0x55a9ba8 with a3 = 0x10003 and a4 = 0x10, only when the word at [a0+2408] is nonzero; whether that call sends a request is not shown. `_XFlush` at 0x55a9be0 is reached only when the buffer-end comparison at 0x55a9b48 is taken. The name points to destroying a video source, which the calls are consistent with, but the request code is not confirmed.
  Reviewed: 2026-11-12 (sonnet)

- `glXCreateGLXVideoSourceSGIX` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55a9cc4 (n64)
  **Inferred.** Calls `__glXSetupForCommand` at 0x55a9cf8. When a4 is neither 2 nor 5 it returns at 0x55a9d34 (v0 is 0 or unknown); otherwise it calls `__glXInitializeVideoLibrary` at 0x55a9d40, registers drawable interest with `__glXAddDrawableInterest` at 0x55a9d68 and creates a video-source private with `__glXCreateVideoSourcePrivate` at 0x55a9da8 (a1 = 0x3). It then makes three calls to an unresolved callee (0x55a9dd8, 0x55a9e18 and 0x55a9e4c) with a3 = 0x4, 0x6 and 0x7, each followed by a negative-return test that branches to a `__glXRemoveDrawableInterest` call. `__glXRemoveDrawableInterest` is also called at 0x55a9f78 and 0x55a9fc4. The meaning of the three values is not confirmed.
  Reviewed: 2026-11-12 (sonnet)

- `glXSwapIntervalSGI` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55aa158 (n64)
  **Inferred.** Loads a pointer from absolute 0x1028 and a second pointer from offset +280 of it. When the second pointer is nonzero, the a0 argument is positive and the word at +280 from the second pointer is nonzero, it calls `ioctl` at 0x55aa1bc with request 0x3ee, a2 = sp-64, a3 and a5 = its a3 and a0 arguments, and a descriptor taken from a table indexed by the word at +264 of the first pointer, then returns 0 at 0x55aa1d0. Otherwise, when the word at +312 from the second pointer is nonzero, it calls `__glXSetupForCommand` at 0x55aa208 and stores header words at 0x55aa254 to 0x55aa294 to addresses that are not resolved. It calls `_XFlush` at 0x55aa2f4 only from the buffer-end comparison at 0x55aa240, and `XFlush` at 0x55aa2cc. Returns of 0x0, 0x5 and 0x6 appear. The name points to setting the swap interval, which is not confirmed.
  Reviewed: 2026-11-12 (sonnet)

- `CreateContext` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55b7248 (n64)
  **Inferred.** Calls `__glXInitialize` at 0x55b7280 and `calloc` with a0 = 1 and a1 = 0x1c8 at 0x55b729c. It calls `__glXCreateDirectContext` at 0x55b7400 with the calloc result as a0 and `__glXInitVertexArrayState` at 0x55b74c4 with a2 = 0x85a2, a3 = 0x8430 and a4 = 0x842e. It reads environment variables with `getenv` at 0x55b7354 and 0x55b76c0 and compares the first character of the value with 'y' (0x79) and 'n' (0x6e), and with 'n' and 'N' (0x4e) for the second. A branch from those comparisons reaches `fprintf` at 0x55b7a98, passing that first character as a2, and `exit` at 0x55b7aa4. The text of the message is not traced, and the conditions under which the calls above run are not traced here. The role of the routine is not confirmed from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `glXCreateGLXPixmapWithConfigSGIX` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55bd8f0 (n64)
  **Inferred.** Calls `__glXSetupForCommand` at 0x55bd91c. When its result (low byte) is nonzero and the buffer-end comparison at 0x55bd958 is not taken, it calls an unresolved callee at 0x55bd9c8 with a6 = 0x10006 and a7 = 0x10. `_XFlush` at 0x55bda1c is reached only when that buffer-end comparison is taken. The callees at 0x55bd940 and 0x55bd9e8 are not resolved to names, so how the drawable is handled is open. The role of the routine is not confirmed from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `glXQueryMaxSwapBarriersSGIX` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55c0eb0 (n64)
  **Inferred.** Calls `__glXSetupForCommand` at 0x55c0ee0. When the buffer-end comparison at 0x55c0f10 is not taken, it calls `_XReply` at 0x55c0f74 with a1 = sp-80 and a7 = 0x1000d. `_XFlush` at 0x55c0fd0 is reached only when that comparison is taken. A return of 1 at 0x55c0fc8 follows a nonzero `_XReply` result and a return of 0 at 0x55c101c follows a zero result. The value stored for the caller is not traced, and the reply layout is not decoded.
  Reviewed: 2026-11-12 (sonnet)

- `glXQueryHyperpipeNetworkSGIX` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55c187c (n64)
  **Inferred.** Calls `__glXSetupForCommand` at 0x55c18a8, then (when the buffer-end comparison at 0x55c18dc is not taken) `_XReply` at 0x55c1944 with a5 = 0x1000e and a7 = 0x11. It stores a word at offset 0 of a1 at 0x55c18b0, 0x55c195c, 0x55c19a4, 0x55c1a30 and 0x55c1ae0. Depending on a word read from the reply (a value at or below 0 or at or above 0x21 takes the `_XEatData` call at 0x55c1970 and a return of 0), it calls `malloc` at 0x55c19e0, `_XEatData` at 0x55c19fc and `_XRead` at 0x55c1a44 into the malloc buffer. `_XFlush` at 0x55c1a94 is reached only when the buffer-end comparison is taken. The record layout is not traced in detail. The role of the routine is not confirmed from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `glXDestroyHyperpipeConfigSGIX` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55c1db4 (n64)
  **Inferred.** Calls `__glXSetupForCommand` at 0x55c1de0. When the buffer-end comparison at 0x55c1e10 is not taken, it calls `_XReply` at 0x55c1e78 with a1 = sp-80, a5 = 0x10011 and a7 = 0x11. `_XFlush` at 0x55c1ed4 is reached only when that comparison is taken. The name points to destroying a hyperpipe config, which is not confirmed.
  Reviewed: 2026-11-12 (sonnet)

- `glXQueryHyperpipeConfigSGIX` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55c1f28 (n64)
  **Inferred.** Calls `__glXSetupForCommand` at 0x55c1f58. When the buffer-end comparison at 0x55c1f8c is not taken, it calls `_XReply` at 0x55c1ff8 with a1 = sp-96, a5 = its own a1 argument and a7 = 0x1000f, then reads a variable-length reply using `malloc` at 0x55c207c, `_XEatData` at 0x55c2094 and `_XRead` at 0x55c20f8. It stores a word at offset 0 of a2 at 0x55c1f60, 0x55c2014, 0x55c2018, 0x55c209c and 0x55c2158. `_XFlush` at 0x55c2148 is reached only when the buffer-end comparison is taken. Which fields those stores fill is not traced. The role of the routine is not confirmed from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `ApplyParameterF` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x31f0650 (n64)
  **Inferred.** Reads up to four floats from the argument at a2 (offsets 0x0 to 0xc) and stores words through a register set to 0x10000 (29 `swc1` and 14 `sw` stores). It reads a flag byte at [0x1020]+0xde4 eleven times and calls `__glOdysseySetProgram` at 0x31f091c with a0 = the word at absolute 0x1020; the routine continues with more stores after that call. The parameter code in a1 is compared against 0x1600, 0x1601 and 0x1201 and its meaning is not decided from these facts. The role of the routine is not confirmed from these facts.
  Reviewed: 2026-11-12 (sonnet)

- `ApplyParameterI` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x31f0d30 (n64)
  **Inferred.** Has a similar shape to `ApplyParameterF`; the pairing is read from the names, not from a shared code path. It reads integer words from the argument at a2 (offsets 0x0, 0x4, 0x8 and 0xc) and stores words through a register set to 0x10000 (33 `sw` and 25 `swc1` stores), with one further `sw` and one `swc1` elsewhere. It reads a flag byte at [0x1020]+0xde4 and a float at offset 0xf44 from a base the facts do not name, then calls `__glOdysseySetProgram` at 0x31f109c with a0 = the word at absolute 0x1020, a2 and a3 passed through; more code follows that call.
  Reviewed: 2026-11-12 (sonnet)

- `DrawBitmapUsingPolyStipple` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x31f40d0 (n64)
  **Inferred.** Calls `__glOdysseyUpdateRasterPos` at 0x31f4204 and `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` at 0x31f4210, then `__glOdysseyGetNumHWClipPlanes` at 0x31f43c0, `__glOdysseyValidateHardware` at 0x31f4494 and `LoadAndSendStippledQuads` at 0x31f44bc. It makes 95 `sw` stores through a register set to 0x10000 (125 `sw` stores in all). Later it calls unresolved callees at 0x31f4868, 0x31f4890 and 0x31f48b8 with a0 = 0x1701, 0x1700 and 0x1702, which this read does not interpret, calls `__glSetError` at 0x31f48ec, and calls `__glOdysseyIoctl` at 0x31f4958 with a1 = 0x6f64000d. Which of these later calls run depends on branches that are not traced, and the stipple data path is not traced. The role of the routine is not confirmed from these facts.
  Reviewed: 2026-11-12 (sonnet)
