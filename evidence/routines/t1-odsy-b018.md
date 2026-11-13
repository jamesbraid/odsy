# Routine role statements, tier-1 batch 18

Each entry is a role statement for one routine in `usr/gfx/arch/IP30ODSY32/libGLcore.so`, written from its rendered facts (registers, calls, constants) at the cited address. These describe software behavior in that build. They do not establish hardware behavior. Grades are inferred unless noted.

- `ApplyMaterialI` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd983df0
  Dispatches on the selector in a1. Its branches compare a1 against 0x1600 (0xd983df4), 0x1601 (0xd983e00 and 0xd984150), 0x1201 (0xd983e48), 0x1202 (0xd9842b0) and 0x1200 (0xd984108). It loads and stores words at small offsets (+0x0 to +0x1c, and +0x7c70 to +0x7cac on one path), and it loads a double-precision constant that the facts show as 1.0 (0x3ff0000000000000) in the comparisons at 0xd983e34, 0xd984224 and 0xd9844ec. It makes no calls. The two returns hand back a word loaded through [0x1010] at +31904 (0xd984028) and +31864 (0xd9840b0). The facts do not show which pointer each offset belongs to or what the selector codes mean, so the grade is unknown.
  Reviewed: 2026-11-12

- `AddConvolutionBorders` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd99e4b0
  **Inferred.** Role (from name): builds the border samples for a convolution pass. The routine contains 26 call sites of __glOdysseyImageMovePixelsTexture (0xd9bbff0), 7 of __glOdysseyProgramTexFilter (0xd9b6820), 6 of LoadTextureFilter (0xd99cb60), 100 of floorf and 6 of ceilf. They sit in code that branches on texture and filter enums (the word at [[[0x1010]+764]] against 0x8010 at 0xd99e798, and the word at [0x1010]+72660 against 0x8150 to 0x8153 at 0xd99e7a8 to 0xd99e7c4), so one invocation does not run every call site. The image-move calls shown at calls 3 and 6 pass sp-432 as a2. The facts do not establish the border rule or what the floor and ceil results feed.
  Reviewed: 2026-11-12

- `__glOdylc_Normal3b` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9c4d90
  **Inferred.** Tests the state word at 0x1034 [@0xd9c4db8 taken when zero] and compares the word at 0x1028 with 0x4 [@0xd9c4dc4 taken when it is 0x4 or more]. On the fall-through side of both branches it calls __glSPDlistSpace with a0 = 0x0 [call 1] and tests the result against zero [@0xd9c4e00 taken zero]. On the nonzero side it makes 5 stores from 0xd9c4e34 to 0xd9c4e48 and returns [@0xd9c4e60] a value that is either unresolved or 0x133800. On the zero side it returns the call's result [@0xd9c4ebc].
  Role (from name): records one Normal3b call into a display list, reserving space with __glSPDlistSpace.
  Reviewed: 2026-11-12

- `__glOdylc_Normal3s` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9c5770
  **Inferred.** Tests the state word at 0x1034 [@0xd9c5798 taken when zero] and compares the word at 0x1028 with 0x4 [@0xd9c57a4 taken when it is 0x4 or more]. On the fall-through side of both branches it calls __glSPDlistSpace with a0 = 0x0 [call 1] and tests the result against zero [@0xd9c57e0 taken zero]. On the nonzero side it makes 5 stores from 0xd9c5814 to 0xd9c5828 and returns [@0xd9c5840] a value that is either unresolved or 0x132e20. On the zero side it returns the call's result [@0xd9c589c].
  Role (from name): records one Normal3s call into a display list, reserving space with __glSPDlistSpace.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord2d` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9ccc50
  **Inferred.** Tests the state word at 0x1034 [@0xd9ccc80 taken when zero] and compares the word at 0x1028 with 0x3 [@0xd9ccc8c taken when it is 0x3 or more]. On the fall-through side of both branches it calls __glSPDlistSpace with a0 = 0x0 [call 1] and tests the result against zero [@0xd9cccc0 taken zero]. On the nonzero side it makes 4 stores from 0xd9cccf8 to 0xd9ccd0c and returns [@0xd9ccd24] a value that is either unresolved or 0x12b940. On the zero side it returns the call's result [@0xd9ccd7c].
  Role (from name): records one TexCoord2d call into a display list, reserving space with __glSPDlistSpace.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord2i` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9cd110
  **Inferred.** Tests the state word at 0x1034 [@0xd9cd138 taken when zero] and compares the word at 0x1028 with 0x3 [@0xd9cd144 taken when it is 0x3 or more]. On the fall-through side of both branches it calls __glSPDlistSpace with a0 = 0x0 [call 1] and tests the result against zero [@0xd9cd178 taken zero]. On the nonzero side it makes 4 stores from 0xd9cd1ac to 0xd9cd1bc and returns [@0xd9cd1d4] a value that is either unresolved or 0x12b480. On the zero side it returns the call's result [@0xd9cd22c].
  Role (from name): records one TexCoord2i call into a display list, reserving space with __glSPDlistSpace.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord3i` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9cdab0
  **Inferred.** Tests the state word at 0x1034 [@0xd9cdad8 taken when zero] and compares the word at 0x1028 with 0x4 [@0xd9cdae4 taken when it is 0x4 or more]. On the fall-through side of both branches it calls __glSPDlistSpace with a0 = 0x0 [call 1] and tests the result against zero [@0xd9cdb20 taken zero]. On the nonzero side it makes 5 stores from 0xd9cdb54 to 0xd9cdb68 and returns [@0xd9cdb80] a value that is either unresolved or 0x12aae0. On the zero side it returns the call's result [@0xd9cdbdc].
  Role (from name): records one TexCoord3i call into a display list, reserving space with __glSPDlistSpace.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord4i` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9ce4d0
  **Inferred.** Tests the state word at 0x1034 [@0xd9ce4f8 taken when zero] and compares the word at 0x1028 with 0x5 [@0xd9ce504 taken when it is 0x5 or more]. On the fall-through side of both branches it calls __glSPDlistSpace with a0 = 0x0 [call 1] and tests the result against zero [@0xd9ce548 taken zero]. On the nonzero side it makes 6 stores from 0xd9ce57c to 0xd9ce594 and returns [@0xd9ce5ac] a value that is either unresolved or 0x12a0c0. On the zero side it returns the call's result [@0xd9ce60c].
  Role (from name): records one TexCoord4i call into a display list, reserving space with __glSPDlistSpace.
  Reviewed: 2026-11-12

- `DownsampleTextureThruHW` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9d11a0
  **Inferred.** Role (from name): downsamples a texture through the hardware path. It reads per-texture table entries off a0 selected by a1 and a2 (stride 68 bytes, words at offsets 0x554 to 0x57c). The routine contains two calls to __glOdysseyImageLogBase2 (0xd9c1e40) and one call each to ChooseSuitableBuzzTexModeBaseFmt (0xd9cfc80), GetImageFmtEnumFromBuzzTexFormat (0xd9cfbd0) and __glOdysseyImageCalcFieldFormat (0xd9896a0, whose a0 is the previous call's result). It calls __glOdysseyValidateHardware (0xd968180) only when the word loaded from [0x1010]+92512 is nonzero (branch at 0xd9d1790, which skips the call when it is zero). The routine has several return paths, for example 0x7 at 0xd9d1980, and the branches decide which calls run. The facts do not show the downsample filter itself.
  Reviewed: 2026-11-12

- `__glOdysseyGetHardwareShadow` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9d93e0
  **Inferred.** Role (from name): queries the hardware shadow capability. It calls __glOdysseyIoctl (0xd9d9360) with a0 and a3 passed through, a1 = request 0x6f64000c and a2 = its own a1 [call 1], then branches on the result at 0xd9d9410. On a non-negative result it returns the ioctl result. Only when the result is negative does it load a pointer at a0 + 0x14 (0xd9d942c) and call it indirectly with a0 and a1 = 0xdae4dc8 [call 2]; that path rejoins the common return, so the value returned is either the ioctl result or the indirect call's result. The indirect callee is not resolved.
  Reviewed: 2026-11-12

- `__glOdysseyQueryHyperpipeLimit` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f47d0
  **Inferred.** Loads the field at +0x21ef0 [@0xd9f47e8], then calls __glOdysseyIoctl with a1 = 0x6f640018, a2 = sp-48, a3 = 0x2 and a5 = 0x103dc0 [call 1]. It returns either 0x0 or 0x1 [@0xd9f4840].
  Role (from name): asks the driver for the hyperpipe limit through ioctl request 0x6f640018.
  Reviewed: 2026-11-12

- `__glOdysseyHyperpipeRect` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f4850
  **Inferred.** Loads the field at +0x21ef0 [@0xd9f4868], then calls __glOdysseyIoctl with a1 = 0x6f640018, a2 = sp-48, a3 = 0x1 and a5 = 0x103d40 [call 1]. It returns either 0x0 or 0x1 [@0xd9f48c0].
  Role (from name): sets the hyperpipe rectangle through ioctl request 0x6f640018.
  Reviewed: 2026-11-12

- `__glOdysseyHyperpipeStereo` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f48d0
  **Inferred.** Loads the field at +0x21ef0 [@0xd9f48e4], then calls __glOdysseyIoctl with a1 = 0x6f640018, a2 = sp-48, a3 at entry and a4 = 0x103cc0 [call 1]. It returns either 0x0 or 0x1 [@0xd9f4944].
  Role (from name): sets hyperpipe stereo mode through ioctl request 0x6f640018.
  Reviewed: 2026-11-12

- `__glOdysseyQueryHyperpipePixelAverage` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f4a90
  **Inferred.** Loads the field at +0x21ef0 [@0xd9f4aa8], then calls __glOdysseyIoctl with a1 = 0x6f640016, a2 = sp-48, a3 = 0x4 and a5 = 0x103b00 [call 1]. It returns either 0x0 or 0x1 [@0xd9f4b00].
  Role (from name): asks the driver for the hyperpipe pixel average through ioctl request 0x6f640016.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex2d` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace5c0
  **Inferred.** Makes no calls. It issues three sw and swc1 stores [@0xdace5d4] [@0xdace5d8] [@0xdace5e0] and returns 0x10000 [@0xdace5dc].
  Role (from name): writes one vertex for the immediate-mode path, as the Vertex2d call.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex3d` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace7c0
  **Inferred.** Makes no calls. It issues four sw and swc1 stores [@0xdace7d8] [@0xdace7dc] [@0xdace7e0] [@0xdace7e8] and returns 0x10000 [@0xdace7e4].
  Role (from name): writes one vertex for the immediate-mode path, as the Vertex3d call.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex3i` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace8c0
  **Inferred.** Makes no calls. It issues four sw stores [@0xdace8e4] [@0xdace8e8] [@0xdace8ec] [@0xdace8f4] and returns 0x10000 [@0xdace8f0].
  Role (from name): writes one vertex for the immediate-mode path, as the Vertex3i call.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex4i` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaceb80
  **Inferred.** Makes no calls. It issues five sw stores [@0xdacebac] [@0xdacebb0] [@0xdacebb4] [@0xdacebb8] [@0xdacebc0] and returns 0x10000 [@0xdacebbc].
  Role (from name): writes one vertex for the immediate-mode path, as the Vertex4i call.
  Reviewed: 2026-11-12

- `__glOdyim_TexCoord3d` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3a40
  **Inferred.** Makes no calls. It issues four sw and swc1 stores [@0xdad3a58] [@0xdad3a5c] [@0xdad3a60] [@0xdad3a68] and returns 0x10000 [@0xdad3a64].
  Role (from name): writes one texture coordinate for the immediate-mode path, as the TexCoord3d call.
  Reviewed: 2026-11-12

- `__glOdyim_Color3d` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4200
  **Inferred.** Makes no calls. It issues four sw and swc1 stores [@0xdad4218] [@0xdad421c] [@0xdad4220] [@0xdad4228] and returns 0x10000 [@0xdad4224].
  Role (from name): writes one colour for the immediate-mode path, as the Color3d call.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3d` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4240
  **Inferred.** Makes no calls. It issues four sw and swc1 stores [@0xdad4258] [@0xdad425c] [@0xdad4260] [@0xdad4268] and returns 0x10000 [@0xdad4264].
  Role (from name): writes one scratch colour for the immediate-mode path, as the ScratchColor3d call.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3b` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4140
  **Inferred.** Makes no calls. It issues four sw stores [@0xdad414c] [@0xdad4150] [@0xdad4154] [@0xdad415c] and returns 0x10000 [@0xdad4158].
  Role (from name): writes one scratch colour for the immediate-mode path, as the ScratchColor3b call.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3i` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4440
  **Inferred.** Makes no calls. It issues four sw stores [@0xdad444c] [@0xdad4450] [@0xdad4454] [@0xdad445c] and returns 0x10000 [@0xdad4458].
  Role (from name): writes one scratch colour for the immediate-mode path, as the ScratchColor3i call.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3s` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4540
  **Inferred.** Makes no calls. It issues four sw stores [@0xdad454c] [@0xdad4550] [@0xdad4554] [@0xdad455c] and returns 0x10000 [@0xdad4558].
  Role (from name): writes one scratch colour for the immediate-mode path, as the ScratchColor3s call.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3ui` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4740
  **Inferred.** Makes no calls. It issues four sw stores [@0xdad474c] [@0xdad4750] [@0xdad4754] [@0xdad475c] and returns 0x10000 [@0xdad4758].
  Role (from name): writes one scratch colour for the immediate-mode path, as the ScratchColor3ui call.
  Reviewed: 2026-11-12

## Rejected entries

None. All 25 rendered entries passed the grader, so none were discarded.

## Open items

- The exact selector codes handled by ApplyMaterialI are not established.
- The border rule in AddConvolutionBorders and the layout of the stack scratch area are not established.
- The state words at abs 0x1028, 0x1030 and 0x1034 used by the display-list writers are not identified.
- The indirect callee in __glOdysseyGetHardwareShadow is unresolved.
- Whether 0x10000 is a hardware port is unknown from these facts alone.
