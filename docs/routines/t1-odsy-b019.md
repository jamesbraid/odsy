# Odyssey GL routines, read from machine code (set 19)

Role statements for 25 routines of the Odyssey GL libraries, taken from disassembly of the IP30 builds: `usr/gfx/arch/IP30ODSY32/libGLcore.so`, `usr/gfx/arch/IP30ODSY64/libGL.so` and `usr/gfx/arch/IP30ODSY64/libGLcore.so`. Each statement cites only the addresses, callees and constants of the rendered code. Every label here is **inferred**: the callees and constants are read, but the bodies of the called routines are not, and no entry is established from the whole body alone.

The binaries were read from the workspace copy under `root/`. The inventory lists that file name under 15 build directories, and this read does not show which build the copy belongs to, so the headers cannot name one build. The inventory check holds these entries at located for that reason. Entries whose own wording says a point is not confirmed or not decoded are also held at located.

- `__glOdyim_ScratchColor3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4840 (n32)
  **Inferred.** Writes four 4-byte words to the fixed address 0x10000, at 0xdad484c, 0xdad4850 and 0xdad4854, then returns 0x10000 in v0 at 0xdad4858. The values written are not traced, so the effect on color state is open. The name suggests a three-component unsigned-short color setter, which this read does not confirm.

- `__glOdyim_ScratchColor4b` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4940 (n32)
  **Inferred.** Writes five 4-byte words to the fixed address 0x10000, first at 0xdad494c, 0xdad4950 and 0xdad4954, then returns 0x10000 in v0 at 0xdad495c. The stored values are not traced here. The name suggests a signed-byte color setter, which is not confirmed.

- `__glOdyim_ScratchColor4dv` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4b00 (n32)
  **Inferred.** Loads four doubles from the argument pointer in a0 at offsets 0x0, 0x8, 0x10 and 0x18, then writes single-precision words to 0x10000: one word store at 0xdad4b24 and four `swc1` stores, including those at 0xdad4b2c, 0xdad4b34 and 0xdad4b38. It returns 0x10000 in v0 at 0xdad4b3c. The double-to-float conversion is not in the rendered facts, so the stored values are not confirmed.

- `__glOdyim_ScratchColor4i` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4cc0 (n32)
  **Inferred.** Writes five 4-byte words to the fixed address 0x10000, first at 0xdad4ccc, 0xdad4cd0 and 0xdad4cd4, then returns 0x10000 in v0 at 0xdad4cdc. The stored values are not traced. The name suggests a signed-int color setter, which is not confirmed.

- `__glOdyim_ScratchColor4s` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4dc0 (n32)
  **Inferred.** Writes five 4-byte words to the fixed address 0x10000, first at 0xdad4dcc, 0xdad4dd0 and 0xdad4dd4, then returns 0x10000 in v0 at 0xdad4ddc. The stored values are not traced. The name suggests a signed-short color setter, which is not confirmed.

- `__glOdyim_ScratchColor4ub` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4ec0 (n32)
  **Inferred.** Writes five 4-byte words to the fixed address 0x10000, first at 0xdad4ecc, 0xdad4ed0 and 0xdad4ed4, then returns 0x10000 in v0 at 0xdad4edc. The stored values are not traced. The name suggests an unsigned-byte color setter, which is not confirmed.

- `__glOdyim_ScratchColor4ui` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4fc0 (n32)
  **Inferred.** Writes five 4-byte words to the fixed address 0x10000, first at 0xdad4fcc, 0xdad4fd0 and 0xdad4fd4, then returns 0x10000 in v0 at 0xdad4fdc. The stored values are not traced. The name suggests an unsigned-int color setter, which is not confirmed.

- `__glOdyim_ScratchColor4us` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad50c0 (n32)
  **Inferred.** Writes five 4-byte words to the fixed address 0x10000, first at 0xdad50cc, 0xdad50d0 and 0xdad50d4, then returns 0x10000 in v0 at 0xdad50dc. The stored values are not traced. The name suggests an unsigned-short color setter, which is not confirmed.

- `__glOdyim_ScratchIndexd` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad51c0 (n32)
  **Inferred.** Makes one word store to 0x10000 at 0xdad51d0 and one `swc1` store to 0x10000 at 0xdad51d8, and returns 0x10000 in v0 at 0xdad51d4. The `swc1` follows the return, so it is probably the branch delay slot, but the rendered facts do not state that. The stored values are not traced, and the name suggests a double index setter, which is not confirmed.

- `__glXOpenGraphicsDevice` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x559300c (n64)
  **Inferred.** Opens a device node with `open` at 0x5593088 (flags 0x802) and sets flags with `fcntl` at 0x55930a4, then issues `ioctl` request 0x65 on the descriptor at 0x5593144, with a pointer read from the context at absolute 0x1028 (offset +0x104). Failure paths call `__glXFatal` at 0x559306c, 0x55930d4, 0x5593110, 0x5593128 and 0x5593188. The device path and the meaning of request 0x65 are not decoded, so what the device is stays open.

- `GetFBConfigsSGIX` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x559fe38 (n64)
  **Inferred.** Sends a request through `_XReply` at 0x559fef0 and reads a variable-length reply with `_XRead` at 0x55a01f8, using `malloc` and `free` for its buffers and `_XFlush` at 0x55a004c. A chain of comparisons tests a per-item code against many constants (0x3, 0x5, 0x7, 0xb, 0xe, 0xf and 0x23 to 0x28), which points to a table of attribute cases, but the case bodies are not traced. The visual lookup through `__glXOverrideVisualGetVisualInfo` at 0x55a0b7c and `XFree` at 0x55a0bc0 come near the end.

- `__glXGetDrawableAttributes` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55a8a04 (n64)
  **Inferred.** Sets up a command with `__glXSetupForCommand` at 0x55a8a38, then sends it through two `_XReply` paths (0x55a8ae4 and 0x55a8bd8) and reads the reply with `_XRead` at 0x55a8ca4 into a `malloc` buffer. It writes results through the output pointer in a2 at offsets 0x8, 0x18 and 0x28. A call at 0x55a8d68 passes -0x800c in a7, which this read does not decode.

- `glXGetVideoSyncSGI` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55a995c (n64)
  **Inferred.** Calls `ioctl` at 0x55a99b4 with request 0x3fe, an output buffer at sp-32, and a descriptor taken from the context at absolute 0x1028 through the pointer chain at offsets +264 and +280. The routine is a thin wrapper around that one call. What it returns to the caller is not traced.

- `glXDestroyGLXVideoSourceSGIX` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55a9ab0 (n64)
  **Inferred.** Calls `__glXAddDrawableInterest` at 0x55a9afc, drops that interest with `__glXRemoveDrawableInterest` at 0x55a9b0c and frees the drawable private at 0x55a9b18. It then sends a request with the argument words 0x10003 and 0x10 (call at 0x55a9ba8) and flushes at 0x55a9be0. The name points to destroying a video source, which the calls are consistent with, but the request code is not confirmed.

- `glXCreateGLXVideoSourceSGIX` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55a9cc4 (n64)
  **Inferred.** Initializes the video library through `__glXInitializeVideoLibrary` at 0x55a9d40, registers drawable interest with `__glXAddDrawableInterest` at 0x55a9d68 and creates a video-source private with `__glXCreateVideoSourcePrivate` at 0x55a9da8. It then makes three calls (0x55a9dd8, 0x55a9e18 and 0x55a9e4c) with the argument values 0x4, 0x6 and 0x7, and several failure paths drop the interest again through `__glXRemoveDrawableInterest` at 0x55a9f78 to 0x55a9ff8. The meaning of the three values is not confirmed.

- `glXSwapIntervalSGI` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55aa158 (n64)
  **Inferred.** Issues `ioctl` request 0x3ee at 0x55aa1bc on a descriptor read from the context at absolute 0x1028 (offsets +264 and +280). It then sends the value over the connection through `__glXSetupForCommand` at 0x55aa208 and flushes at 0x55aa2f4. The name points to setting the swap interval, but the interval argument is not traced here, and the stores at 0x55aa254 to 0x55aa290 go to addresses that are not resolved.

- `CreateContext` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55b7248 (n64)
  **Inferred.** Initializes the library through `__glXInitialize` at 0x55b7280, allocates a 0x1c8-byte context record with `calloc` at 0x55b729c and builds it through `__glXCreateDirectContext` at 0x55b7400 and `__glXInitVertexArrayState` at 0x55b74c4, which is passed the enum constants 0x85a2, 0x8430 and 0x842e. It reads environment variables with `getenv` at 0x55b7354 and 0x55b76c0, and one branch prints through `fprintf` at 0x55b7a98. The text of that message is not traced here.

- `glXCreateGLXPixmapWithConfigSGIX` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55bd8f0 (n64)
  **Inferred.** Sets up the command with `__glXSetupForCommand` at 0x55bd91c, then sends a request carrying the argument words 0x10006 and 0x10 (call at 0x55bd9c8) and flushes at 0x55bda1c. The callees at 0x55bd940 and 0x55bd9e8 are not resolved to names, so how the drawable is handled is open.

- `glXQueryMaxSwapBarriersSGIX` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55c0eb0 (n64)
  **Inferred.** Sets up the command with `__glXSetupForCommand` at 0x55c0ee0, sends it through `_XReply` at 0x55c0f74 with the argument word 0x1000d and reads the reply into a stack buffer at sp-80, then flushes at 0x55c0fd0. The value returned to the caller is not traced, and the reply layout is not decoded.

- `glXQueryHyperpipeNetworkSGIX` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55c187c (n64)
  **Inferred.** Sends a query through `_XReply` at 0x55c1944 with the argument word 0x1000e, then reads a variable-length reply: `_XEatData` at 0x55c1970 and 0x55c19fc skips unused data, `malloc` at 0x55c19e0 allocates the buffer and `_XRead` at 0x55c1a44 fills it. Five word stores go through the output pointer in a1 at offset 0. The record layout is not traced in detail.

- `glXDestroyHyperpipeConfigSGIX` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55c1db4 (n64)
  **Inferred.** Sets up the command with `__glXSetupForCommand` at 0x55c1de0, sends it through `_XReply` at 0x55c1e78 with the argument words 0x10011 and 0x11 and a reply buffer at sp-80, then flushes at 0x55c1ed4. The config identifier is read from the context and is not traced here. The name points to destroying a hyperpipe config, which is not confirmed.

- `glXQueryHyperpipeConfigSGIX` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55c1f28 (n64)
  **Inferred.** Sets up the command with `__glXSetupForCommand` at 0x55c1f58, sends it through `_XReply` at 0x55c1ff8 with the argument words 0x1000f and the caller's a1, then reads a variable-length reply using `malloc` at 0x55c207c, `_XEatData` at 0x55c2094 and `_XRead` at 0x55c20f8. Five word stores go through the output pointer in a2 at offset 0. Which fields those are is not traced.

- `ApplyParameterF` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x31f0650 (n64)
  **Inferred.** Reads four floats from the argument at a2 (offsets 0x0 to 0xc) and writes float words to the FIFO address 0x10000 (29 `swc1` and 14 `sw` accesses). It reads a flag byte at [0x1020]+0xde4 eleven times and ends with a call to `__glOdysseySetProgram` at 0x31f091c. The parameter code and its meaning are not decided from these facts.

- `ApplyParameterI` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x31f0d30 (n64)
  **Inferred.** The integer form of the same pattern: it reads integer words from the argument at a2 (offsets 0x0, 0x4 and 0x8) and writes FIFO words to 0x10000 (33 `sw` and 25 `swc1` accesses). It reads a flag byte at [0x1020]+0xde4 and a float at [0x1020]+0xf44, then calls `__glOdysseySetProgram` at 0x31f109c. The pairing with `ApplyParameterF` is read from the names, not from a shared code path.

- `DrawBitmapUsingPolyStipple` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x31f40d0 (n64)
  **Inferred.** Updates the raster position through `__glOdysseyUpdateRasterPos` at 0x31f4204 and `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` at 0x31f4210, then validates the hardware state with `__glOdysseyValidateHardware` at 0x31f4494. It writes many words to the FIFO address 0x10000 (95 `sw` accesses), makes an ioctl through `__glOdysseyIoctl` at 0x31f4958 (request 0x6f64000d) and reports errors with `__glSetError` at 0x31f48ec. Calls at 0x31f4868, 0x31f4890 and 0x31f48b8 pass 0x1701, 0x1700 and 0x1702 in a0, which this read does not interpret, and the stipple data path is not traced.
