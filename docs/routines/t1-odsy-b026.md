# Routine roles, tier-1 batch 26 (odsy)

Role statements for 25 routines in the IP35 GL libraries. Each statement comes from the rendered facts
(registers, calls, constants and branch targets) and is graded Inferred. None of these routines has a
grade that the facts fully establish, so every purpose stated below is a reading of the code, and the
open parts are named.

- `__glOdysseyHyperpipeRect` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9f4850
  **Inferred.** Passes its context pointer and the constant 0x6f640018 to `__glOdysseyIoctl` at 0xd9d9360 (the call at 0xd9f48a4), with a stack buffer at sp-48 and a3 = 0x1. It takes the context field at +0x21ef0 (lw at 0xd9f4868) and returns 0 or 1 at 0xd9f48c0. The name suggests a hyperpipe rectangle query, but the facts do not show whether the request reads or writes.

- `__glOdysseyHyperpipeStereo` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9f48d0
  **Inferred.** Makes the same ioctl call through `__glOdysseyIoctl` at 0xd9d9360 (jalr at 0xd9f4928), with the same request constant 0x6f640018 as the Rect routine at 0xd9f4850, but with a different payload: a3 is the caller's third argument, a4 = 0x103cc0, and a5 is loaded from the context field at +0x21ef0. It returns 0 or 1 at 0xd9f4944. The shared request and different argument registers suggest a sibling of the Rect routine; what the stereo payload carries is open.

- `__glOdysseyQueryHyperpipePixelAverage` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9f4a90
  **Inferred.** Calls `__glOdysseyIoctl` at 0xd9d9360 (jalr at 0xd9f4ae4) with the request constant 0x6f640016, a3 = 0x4 and a5 = 0x103b00, after loading the context field at +0x21ef0 (lw at 0xd9f4aa8). It returns 0 or 1 at 0xd9f4b00. The request differs from the 0x6f640018 used by the two routines above, and the name points to a pixel-average query; the facts do not show the request's direction or payload.

- `__glOdyim_Vertex2d` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdace5c0
  **Inferred.** Stores three words to the fixed address 0x10000: one `sw` at 0xdace5d4 and two `swc1` at 0xdace5d8 and 0xdace5e0. It returns the same constant 0x10000 at 0xdace5dc. The stored values come from registers the facts do not resolve, so the vertex layout is open. The name suggests an immediate-mode vertex entry point.

- `__glOdyim_Vertex3d` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdace7c0
  **Inferred.** Writes four words to the fixed address 0x10000: one `sw` at 0xdace7d8 and three `swc1` at 0xdace7dc, 0xdace7e0 and 0xdace7e8. It returns 0x10000 at 0xdace7e4. The shape matches the 2d variant at 0xdace5c0 with one more float, which fits a three-coordinate vertex; the source of the values is not in the facts.

- `__glOdyim_Vertex3i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdace8c0
  **Inferred.** Writes four integer words (`sw` at 0xdace8e4, 0xdace8e8, 0xdace8ec and one more) to the fixed address 0x10000 and returns 0x10000 at 0xdace8f0. It has no float stores, which matches an integer-coordinate variant of the vertex entry points. The argument registers are not resolved, so the exact field order is unknown.

- `__glOdyim_Vertex4i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdaceb80
  **Inferred.** Writes five integer words to the fixed address 0x10000 (`sw` at 0xdacebac, 0xdacebb0, 0xdacebb4 and two more) and returns 0x10000 at 0xdacebbc. The fifth word, relative to the 3i variant at 0xdace8c0, suggests the homogeneous w component. That reading is inferred from the store count only.

- `__glOdyim_TexCoord3d` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad3a40
  **Inferred.** Writes four words to the fixed address 0x10000: one `sw` at 0xdad3a58 and three `swc1` at 0xdad3a5c, 0xdad3a60 and 0xdad3a68. It returns 0x10000 at 0xdad3a64. The float store count fits three texture coordinates, but the facts do not show which registers those are.

- `__glOdyim_ScratchColor3b` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4140
  **Inferred.** Makes four `sw` stores to the fixed address 0x10000 (at 0xdad414c, 0xdad4150, 0xdad4154 and one more) and returns 0x10000 at 0xdad4158. It has no loads from its arguments, so the three byte components are not visible in the facts. The name suggests a color with three byte components written to a scratch slot.

- `__glOdyim_Color3d` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4200
  **Inferred.** Writes four words to the fixed address 0x10000: one `sw` at 0xdad4218 and three `swc1` at 0xdad421c, 0xdad4220 and 0xdad4228. It returns 0x10000 at 0xdad4224. Its shape matches the scratch variant at 0xdad4240, so the two differ only in some detail the facts do not show.

- `__glOdyim_ScratchColor3d` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4240
  **Inferred.** Writes four words to the fixed address 0x10000: one `sw` at 0xdad4258 and three `swc1` at 0xdad425c, 0xdad4260 and 0xdad4268. It returns 0x10000 at 0xdad4264. Its code shape is the same as the non-scratch Color3d at 0xdad4200, and the facts do not show what makes the scratch form different.

- `__glOdyim_ScratchColor3i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4440
  **Inferred.** Makes four integer stores to the fixed address 0x10000 (`sw` at 0xdad444c, 0xdad4450, 0xdad4454 and one more) and returns 0x10000 at 0xdad4458. It is the integer counterpart of the 3d scratch color at 0xdad4240. The argument registers are unresolved.

- `__glOdyim_ScratchColor3s` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4540
  **Inferred.** Makes four integer stores to the fixed address 0x10000 (`sw` at 0xdad454c, 0xdad4550, 0xdad4554 and one more) and returns 0x10000 at 0xdad4558. The shape matches the 3i variant at 0xdad4440. The short-integer width is named by the routine name only; the facts do not show any halfword handling.

- `__glOdyim_ScratchColor3ui` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4740
  **Inferred.** Makes four integer stores to the fixed address 0x10000 (`sw` at 0xdad474c, 0xdad4750, 0xdad4754 and one more) and returns 0x10000 at 0xdad4758. It matches the signed 3i variant at 0xdad4440 in shape. The unsigned name is the only source for that difference.

- `__glOdyim_ScratchColor3us` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4840
  **Inferred.** Makes four integer stores to the fixed address 0x10000 (`sw` at 0xdad484c, 0xdad4850, 0xdad4854 and one more) and returns 0x10000 at 0xdad4858. It matches the other three-component scratch colors in shape. Any sign or width handling is not visible in the facts.

- `__glOdyim_ScratchColor4b` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4940
  **Inferred.** Makes five integer stores to the fixed address 0x10000 (`sw` at 0xdad494c, 0xdad4950, 0xdad4954 and two more) and returns 0x10000 at 0xdad495c. Five stores fit a four-component color with an extra word, but the facts do not say what the extra word is.

- `__glOdyim_ScratchColor4dv` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4b00
  **Inferred.** Loads four doubles from the argument pointer at offsets +0x0, +0x8, +0x10 and +0x18 (`ldc1` at 0xdad4b00, 0xdad4b0c, 0xdad4b14 and 0xdad4b1c), then writes one `sw` at 0xdad4b24 and four `swc1` stores (0xdad4b2c, 0xdad4b34, 0xdad4b38 and one more) to the fixed address 0x10000. It returns 0x10000 at 0xdad4b3c. This is the one scratch-color routine that reads its arguments through memory, so it takes a vector pointer rather than register values.

- `__glOdyim_ScratchColor4i` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4cc0
  **Inferred.** Makes five integer stores to the fixed address 0x10000 (`sw` at 0xdad4ccc, 0xdad4cd0, 0xdad4cd4 and two more) and returns 0x10000 at 0xdad4cdc. It has the same store count as the other 4-component scratch colors, and the signed 4i name is the only source for its type.

- `__glOdyim_ScratchColor4s` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4dc0
  **Inferred.** Makes five integer stores to the fixed address 0x10000 (`sw` at 0xdad4dcc, 0xdad4dd0, 0xdad4dd4 and two more) and returns 0x10000 at 0xdad4ddc. It matches the 4i variant at 0xdad4cc0 in shape. The width of the short values is not visible in the facts.

- `__glOdyim_ScratchColor4ub` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4ec0
  **Inferred.** Makes five integer stores to the fixed address 0x10000 (`sw` at 0xdad4ecc, 0xdad4ed0, 0xdad4ed4 and two more) and returns 0x10000 at 0xdad4edc. It has the same shape as the other 4-component scratch colors. The unsigned byte type is named only by the routine name.

- `__glOdyim_ScratchColor4ui` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad4fc0
  **Inferred.** Makes five integer stores to the fixed address 0x10000 (`sw` at 0xdad4fcc, 0xdad4fd0, 0xdad4fd4 and two more) and returns 0x10000 at 0xdad4fdc. It matches the signed 4i variant at 0xdad4cc0 in shape. Its unsigned type is not visible in the facts.

- `__glOdyim_ScratchColor4us` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad50c0
  **Inferred.** Makes five integer stores to the fixed address 0x10000 (`sw` at 0xdad50cc, 0xdad50d0, 0xdad50d4 and two more) and returns 0x10000 at 0xdad50dc. It matches the other 4-component scratch colors. Width and sign are not shown by the facts.

- `__glOdyim_ScratchIndexd` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xdad51c0
  **Inferred.** Writes one `sw` at 0xdad51d0 and one `swc1` at 0xdad51d8 to the fixed address 0x10000 and returns 0x10000 at 0xdad51d4. It is the only routine in the batch that stores one integer and one float, which fits a single double-precision color index. The index value's source register is not resolved.

- `__glXOpenGraphicsDevice` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x214300c
  **Inferred.** Takes a device index in a0 and branches to a `__glXFatal` path at 0x2143060 when the index is at least 0x41 (beq at 0x214302c). For a valid index it reads a slot from the table pointed to by the word at abs 0x1028 (lw at 0x2143040), calls `open` with flags 0x802 (jalr at 0x2143088), then `fcntl` with arguments 0x2 and 0x5 (jalr at 0x21430a4), and `ioctl` with request 0x65 (jalr at 0x2143144). It stores the result back into that slot (sw at 0x2143100 and 0x2143168), and each failed step ends in a `__glXFatal` call (at 0x214306c, 0x21430d4, 0x2143110, 0x2143128 and 0x2143188). The open path string at 0x21773e0 is not resolved by the facts, and the meaning of request 0x65 and of the fcntl arguments is open.

- `GetFBConfigsSGIX` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x214fe38
  **Inferred.** The name suggests the GLX framebuffer-config query for the SGIX extension. The facts show it sends an X request through `_XReply` (jalr at 0x214fef0, with constants 0x11 and 0x10004 among its arguments), reads reply data with `_XRead` (jalr at 0x21501f8) and flushes with `_XFlush` (jalr at 0x215004c). It allocates with `malloc` (0x214ff64 and 0x214ffdc), clears with `memset` (0x21500b0) and frees through `free` and `XFree` (0x214fff4 and 0x2150bc0). A long chain of comparisons on values from 0x3 to 0x28, plus 0x801a and 0x8018 (for example at 0x2150254, 0x2150440 and 0x2150538), parses the reply, and the calls to `__glXOverrideVisualGetVisualInfo` at 0x2150b7c show a second source of visual data. The tags' meanings are not in the facts, so the parser's details stay open.
