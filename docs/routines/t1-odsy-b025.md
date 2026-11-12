# Routine roles: tier-1 batch 25

Role statements for 25 located routines from the odsy inventory, rendered from their facts
(registers, calls, constants) and graded by the reading round's grader. Every entry is
inferred: the names come from the binary's symbols, and the rendered facts do not settle
what the hardware-facing state means. The unclear parts are named in each entry.

Two notes that apply across the list. The request codes that start with 0x6f64 (0xd964988,
0xd9d9408, 0xd9f4824) share a prefix and look like one ioctl family, but the family is not
named anywhere in these facts. The `__glOdylc_` entries are the display-list forms of the
GL attribute calls; the `__glSPDlistSpace` callee is the shared call they make.

- `CreateContext` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd83269c
  **Inferred.** Creates the client-side GLX context. It callocs a 0x12c-byte record (call at 0xd8326f0), hands it to `__glXCreateDirectContext` at 0xd832854, and sets up vertex-array state through `__glXInitVertexArrayState` at 0xd832918 with the constants 0x85a2, 0x8430 and 0x842e. A `getenv` lookup at 0xd8327a8 has its first byte compared with 0x79 and 0x6e, and an `fprintf` with that 0x6e byte and an `exit` follow at 0xd832ef8 and 0xd832f04. Which variable this is, and whether it chooses direct or indirect rendering, is not visible from the facts.

- `glXCreateGLXPixmapWithConfigSGIX` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd838c8c
  **Inferred.** Sends a GLX request that creates a pixmap for a config. It calls `__glXSetupForCommand` at 0xd838cb8, and a zero low byte in its result returns 0 at 0xd838dd4. Along the path that does not take the branch at 0xd838cf4, it reads fields of the caller's argument (+0x24, +0x48) and sends a request through an unnamed callee at 0xd838d64 with the constants 0x10006 and 0x10. That branch goes to `_XFlush` at 0xd838db8 instead, which loops back to 0xd838cfc. The request code is not named by the facts, so the identity of the callee is open.

- `glXQueryMaxSwapBarriersSGIX` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd83c218
  **Inferred.** Asks the server for the maximum swap-barrier count. After `__glXSetupForCommand` at 0xd83c248 it does a request and reply through `_XReply` at 0xd83c2dc, with a reply buffer on the stack and the constants 0x11 and 0x1000d, then flushes with `_XFlush` at 0xd83c338. The result is stored through the output pointer a2 at 0xd83c320. It returns 0x1 on one path and 0x0 on the other, which suggests 0x1 is success, but the facts do not prove that.

- `__glOdylc_Color3s` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd961510
  **Inferred.** Display-list form of the three-component short color call. It reads the context pointer from the absolute global 0x1010 and a flag at 0x1034, and skips list recording when the flag is zero. Otherwise it compares the count at 0x1028 with 4 and calls `__glSPDlistSpace` at 0xd961578 with the argument registers, the context pointer and the count, then updates 0x1028, 0x1030 and 0x1034. The layout of the recorded list entry is not visible here.

- `__glOdylc_Color3ui` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd961a30
  **Inferred.** Display-list form of the three-component unsigned-int color call, with the same structure as `__glOdylc_Color3s`. Its call to `__glSPDlistSpace` is at 0xd961a98, and it uses the same 0x1010, 0x1028, 0x1030 and 0x1034 state. The open question is the same as for `__glOdylc_Color3s`: what the recorded entry holds.

- `__glOdylc_Color3us` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd961cc0
  **Inferred.** Display-list form of the three-component unsigned-short color call, with the same state and list-space call as its siblings, here at 0xd961d28. The routine does not differ from `__glOdylc_Color3s` in any fact the rendering shows, so the role statement is the shared one.

- `__glOdylc_Color4b` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd961f50
  **Inferred.** Display-list form of the four-component byte color call. Unlike the three-component forms, it passes the fourth argument register (a3) into the `__glSPDlistSpace` call at 0xd961fbc, with the context pointer in a4 and the count from 0x1028 in a6. The 344-byte body is larger than the three-component forms by the extra argument.

- `__glOdylc_Color4i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9627a0
  **Inferred.** Display-list form of the four-component int color call, with the same four-argument shape as `__glOdylc_Color4b`. Its `__glSPDlistSpace` call is at 0xd96280c.

- `__glOdylc_Color4s` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd962a50
  **Inferred.** Display-list form of the four-component short color call, with the same shape as `__glOdylc_Color4b`. Its `__glSPDlistSpace` call is at 0xd962abc.

- `__glOdylc_Color4ub` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd962d00
  **Inferred.** Display-list form of the four-component unsigned-byte color call, with the same shape as `__glOdylc_Color4b`. Its `__glSPDlistSpace` call is at 0xd962d6c.

- `__glOdylc_Color4ui` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd962fb0
  **Inferred.** Display-list form of the four-component unsigned-int color call, with the same shape as `__glOdylc_Color4b`. Its `__glSPDlistSpace` call is at 0xd96301c.

- `__glOdylc_Color4us` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd963260
  **Inferred.** Display-list form of the four-component unsigned-short color call, with the same shape as `__glOdylc_Color4b`. Its `__glSPDlistSpace` call is at 0xd9632cc.

- `__glOdyim_Clear` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9644d0
  **Inferred.** Clear entry point. It reports GL error 0x502 (invalid operation) through `__glSetError` at 0xd964520 and 0x501 (invalid value) at 0xd964570, and converts a depth value with `__glOdysseyWindowToNormalizedEyeZ` at 0xd9647bc. On the hardware path it sends an ioctl-style request with code 0x6f64000d at 0xd964988, selects the draw buffer through `__glOdysseySetDrawbuf` at 0xd9649dc and 0xd964a44, and calls `__glOdysseyClear` at 0xd964810 and 0xd964a28. The mask constants passed at 0xd9647bc are not labelled by the facts, so which buffers the hardware clears is unknown here.

- `ApplyMaterialF` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd983680
  **Inferred.** Material update for the float-valued call. It tests the parameter in a1 against 0x1200 to 0x1202 and 0x1600 to 0x1603, which match the GL material names (ambient, diffuse, specular, emission, shininess, ambient-and-diffuse, color indexes), and loads float values from the caller's vector in a2 for each branch. The results go into the context block reached through the global 0x1010, including the words at 0x1010+0x7c70 through 0x1010+0x7cac, and the routine writes the absolute address 0x10000 in 38 places. What the writes to 0x10000 mean is not visible here.

- `ApplyMaterialI` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd983df0
  **Inferred.** Material update for the integer-valued call, with the same parameter switch as `ApplyMaterialF` (0x1200 to 0x1603). Unlike the float form it loads float constants from the context block at 0x1010+0xdf0 (20 loads) and writes the same absolute address 0x10000 in 38 places. Whether the integer form converts before storing is only partly visible in the facts.

- `AddConvolutionBorders` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd99e4b0
  **Inferred.** Fills the border texels that a convolution filter needs at the image edges. It programs the texture filter through `__glOdysseyProgramTexFilter` at 0xd99e5fc and `LoadTextureFilter` at 0xd99e664, and moves edge strips with `__glOdysseyImageMovePixelsTexture` (first call at 0xd99e6f8, many more after it). The border extents are computed with repeated `floorf` and `ceilf` calls, which suggests scaled float bounds, but the exact arithmetic and strip order are not settled by the facts.

- `DownsampleTextureThruHW` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9d11a0
  **Inferred.** Downsamples a texture on the hardware path. It takes log2 sizes through `__glOdysseyImageLogBase2` at 0xd9d12cc and 0xd9d1300, chooses a hardware format through `ChooseSuitableBuzzTexModeBaseFmt` at 0xd9d1404 and `GetImageFmtEnumFromBuzzTexFormat` at 0xd9d15ac, and then calls `__glOdysseyImageCalcFieldFormat` at 0xd9d15bc and `__glOdysseyValidateHardware` at 0xd9d17a0. Several branches on the stored format decide whether the hardware path runs; the early return with 0x7 at 0xd9d1980 and the later return at 0xd9d1a34 are two exits whose conditions are unsettled here.

- `__glOdylc_Normal3b` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9c4d90
  **Inferred.** Display-list form of the three-byte normal call. It uses the same 0x1034 flag and 0x1028 count test as the color forms, and its `__glSPDlistSpace` call at 0xd9c4de4 passes the three value registers a1 to a3 and the count from 0x1028 in a5. The record layout the list entry takes is not visible here.

- `__glOdylc_Normal3s` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9c5770
  **Inferred.** Display-list form of the three-short normal call, with the same argument layout and the same 0x1034 and 0x1028 tests as `__glOdylc_Normal3b`. Its `__glSPDlistSpace` call is at 0xd9c57c4, and the count is compared with 4 at 0xd9c57a4.

- `__glOdylc_TexCoord2d` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9ccc50
  **Inferred.** Display-list form of the two-double texture coordinate call. Here the count from 0x1028 is passed as the second argument, not as an extra trailing one, and the count is compared with 3 at 0xd9ccc8c. The `__glSPDlistSpace` call is at 0xd9ccca8.

- `__glOdylc_TexCoord2i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9cd110
  **Inferred.** Display-list form of the two-int texture coordinate call. It passes the count from 0x1028 as the fourth argument to `__glSPDlistSpace` at 0xd9cd160 and compares it with 3 at 0xd9cd144.

- `__glOdylc_TexCoord3i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9cdab0
  **Inferred.** Display-list form of the three-int texture coordinate call, with the count from 0x1028 passed as the fifth argument to `__glSPDlistSpace` at 0xd9cdb04. The count is compared with 4 at 0xd9cdae4.

- `__glOdylc_TexCoord4i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9ce4d0
  **Inferred.** Display-list form of the four-int texture coordinate call, the widest of the group. It passes the count from 0x1028 as the sixth argument to `__glSPDlistSpace` at 0xd9ce528 and compares it with 5 at 0xd9ce504.

- `__glOdysseyGetHardwareShadow` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9d93e0
  **Inferred.** Asks the driver whether hardware shadow comparison is available. It calls `__glOdysseyIoctl` at 0xd9d9408 with request code 0x6f64000c and passes the caller's pointer on. A negative result takes the path at 0xd9d9424, which calls an unnamed callee with the constant 0xdae4dc8, so the value finally returned to the caller is open.

- `__glOdysseyQueryHyperpipeLimit` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9f47d0
  **Inferred.** Queries the hyperpipe limit from the driver. It makes one `__glOdysseyIoctl` call at 0xd9f4824 with request code 0x6f640018, a stack buffer at sp-48 and the constant 0x103dc0, and returns 0 or 1 at 0xd9f4840. The facts show no load from that stack buffer, so the limit value itself is not visible in this routine, and what the 0 and 1 returns mean is open.
