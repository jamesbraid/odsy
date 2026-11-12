# Routine role statements, tier-1 batch 18

Each entry is a role statement for one routine in `usr/gfx/arch/IP30ODSY32/libGLcore.so`, written from its rendered facts (registers, calls, constants) at the cited address. These describe software behavior in that build. They do not establish hardware behavior. Grades are inferred unless noted.

- `ApplyMaterialI` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd983df0

  Dispatches on the selector in a1, comparing it against 0x1200, 0x1201, 0x1202, 0x1600 and 0x1601 (branches at 0xd983df4, 0xd983e48, 0xd9842b0, 0xd984108, 0xd984150), and copies per-material fields from the pointer in a2 into fields of a0 at small offsets. It loads and stores float constants such as 1.0 (0x3ff0000000000000) and makes no calls. It also stores 38 times to the fixed address 0x10000, the same window that the immediate-mode writers in this batch use. The meaning of each selector code is not established by these facts, so the grade is unknown.

- `AddConvolutionBorders` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd99e4b0

  Builds the border samples for a convolution pass. The routine makes 26 calls to __glOdysseyImageMovePixelsTexture (0xd9bbff0), 7 calls to __glOdysseyProgramTexFilter (0xd9b6820), up to 6 conditional calls to LoadTextureFilter (0xd99cb60), and about 50 floorf or ceilf calls, with a stack scratch area at sp-432. The pattern suggests it computes integer texel bounds with floor and ceil and moves pixels into the texture through the image-move helper, but the exact border rule is not established here. Filter programming is delegated to __glOdysseyProgramTexFilter.

- `__glOdylc_Normal3b` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9c4d90
  **Inferred.** Tests the state word at 0x1034 [@0xd9c4db8 taken zero] and compares the word at 0x1028 with 0x4 [@0xd9c4dc4 taken]. It calls __glSPDlistSpace with a0 = 0x0 [call 1], tests the result against zero [@0xd9c4e00 taken zero], and on the nonzero side stores 5 words starting at 0xd9c4e34 [@0xd9c4e34] and returns [@0xd9c4e60] a value that is either unresolved or 0x133800. The other path returns the call's result [@0xd9c4ebc].
  Role (from name): records one Normal3b call into a display list, reserving space with __glSPDlistSpace.

- `__glOdylc_Normal3s` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9c5770
  **Inferred.** Tests the state word at 0x1034 [@0xd9c5798 taken zero] and compares the word at 0x1028 with 0x4 [@0xd9c57a4 taken]. It calls __glSPDlistSpace with a0 = 0x0 [call 1], tests the result against zero [@0xd9c57e0 taken zero], and on the nonzero side stores 5 words starting at 0xd9c5814 [@0xd9c5814] and returns [@0xd9c5840] a value that is either unresolved or 0x132e20. The other path returns the call's result [@0xd9c589c].
  Role (from name): records one Normal3s call into a display list, reserving space with __glSPDlistSpace.

- `__glOdylc_TexCoord2d` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9ccc50
  **Inferred.** Tests the state word at 0x1034 [@0xd9ccc80 taken zero] and compares the word at 0x1028 with 0x3 [@0xd9ccc8c taken]. It calls __glSPDlistSpace with a0 = 0x0 [call 1], tests the result against zero [@0xd9cccc0 taken zero], and on the nonzero side stores 4 words starting at 0xd9cccf8 [@0xd9cccf8] and returns [@0xd9ccd24] a value that is either unresolved or 0x12b940. The other path returns the call's result [@0xd9ccd7c].
  Role (from name): records one TexCoord2d call into a display list, reserving space with __glSPDlistSpace.

- `__glOdylc_TexCoord2i` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9cd110
  **Inferred.** Tests the state word at 0x1034 [@0xd9cd138 taken zero] and compares the word at 0x1028 with 0x3 [@0xd9cd144 taken]. It calls __glSPDlistSpace with a0 = 0x0 [call 1], tests the result against zero [@0xd9cd178 taken zero], and on the nonzero side stores 4 words starting at 0xd9cd1ac [@0xd9cd1ac] and returns [@0xd9cd1d4] a value that is either unresolved or 0x12b480. The other path returns the call's result [@0xd9cd22c].
  Role (from name): records one TexCoord2i call into a display list, reserving space with __glSPDlistSpace.

- `__glOdylc_TexCoord3i` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9cdab0
  **Inferred.** Tests the state word at 0x1034 [@0xd9cdad8 taken zero] and compares the word at 0x1028 with 0x4 [@0xd9cdae4 taken]. It calls __glSPDlistSpace with a0 = 0x0 [call 1], tests the result against zero [@0xd9cdb20 taken zero], and on the nonzero side stores 5 words starting at 0xd9cdb54 [@0xd9cdb54] and returns [@0xd9cdb80] a value that is either unresolved or 0x12aae0. The other path returns the call's result [@0xd9cdbdc].
  Role (from name): records one TexCoord3i call into a display list, reserving space with __glSPDlistSpace.

- `__glOdylc_TexCoord4i` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9ce4d0
  **Inferred.** Tests the state word at 0x1034 [@0xd9ce4f8 taken zero] and compares the word at 0x1028 with 0x5 [@0xd9ce504 taken]. It calls __glSPDlistSpace with a0 = 0x0 [call 1], tests the result against zero [@0xd9ce548 taken zero], and on the nonzero side stores 6 words starting at 0xd9ce57c [@0xd9ce57c] and returns [@0xd9ce5ac] a value that is either unresolved or 0x12a0c0. The other path returns the call's result [@0xd9ce60c].
  Role (from name): records one TexCoord4i call into a display list, reserving space with __glSPDlistSpace.

- `DownsampleTextureThruHW` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9d11a0

  Downsamples a texture through the hardware path. It reads per-texture table entries indexed by a1 and a2 (stride 68 bytes, offsets 0x554 to 0x57c), calls __glOdysseyImageLogBase2 (0xd9c1e40) twice, ChooseSuitableBuzzTexModeBaseFmt (0xd9cfc80), GetImageFmtEnumFromBuzzTexFormat (0xd9cfbd0) and __glOdysseyImageCalcFieldFormat (0xd9896a0), and calls __glOdysseyValidateHardware (0xd968180) before returning. The role is inferred from the callee names and the table layout, so the exact downsample filter is open.

- `__glOdysseyGetHardwareShadow` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9d93e0

  Queries the hardware shadow capability. It loads a field at a0 + 0x14, calls __glOdysseyIoctl (0xd9d9360) with request 0x6f64000c, and on a non-negative result makes an indirect call with a fixed argument at 0x0dae4dc8 whose callee is unknown. The return value is either the ioctl result or the indirect call's result. The indirect callee is not resolved.

- `__glOdysseyQueryHyperpipeLimit` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f47d0
  **Inferred.** Loads the field at +0x21ef0 [@0xd9f47e8], then calls __glOdysseyIoctl with a1 = 0x6f640018, a2 = sp-48, a3 = 0x2 and a5 = 0x103dc0 [call 1]. It returns either 0x0 or 0x1 [@0xd9f4840].
  Role (from name): asks the driver for the hyperpipe limit through ioctl request 0x6f640018.

- `__glOdysseyHyperpipeRect` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f4850
  **Inferred.** Loads the field at +0x21ef0 [@0xd9f4868], then calls __glOdysseyIoctl with a1 = 0x6f640018, a2 = sp-48, a3 = 0x1 and a5 = 0x103d40 [call 1]. It returns either 0x0 or 0x1 [@0xd9f48c0].
  Role (from name): sets the hyperpipe rectangle through ioctl request 0x6f640018.

- `__glOdysseyHyperpipeStereo` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f48d0
  **Inferred.** Loads the field at +0x21ef0 [@0xd9f48e4], then calls __glOdysseyIoctl with a1 = 0x6f640018, a2 = sp-48, a3 at entry and a4 = 0x103cc0 [call 1]. It returns either 0x0 or 0x1 [@0xd9f4944].
  Role (from name): sets hyperpipe stereo mode through ioctl request 0x6f640018.

- `__glOdysseyQueryHyperpipePixelAverage` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f4a90
  **Inferred.** Loads the field at +0x21ef0 [@0xd9f4aa8], then calls __glOdysseyIoctl with a1 = 0x6f640016, a2 = sp-48, a3 = 0x4 and a5 = 0x103b00 [call 1]. It returns either 0x0 or 0x1 [@0xd9f4b00].
  Role (from name): asks the driver for the hyperpipe pixel average through ioctl request 0x6f640016.

- `__glOdyim_Vertex2d` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace5c0
  **Inferred.** Makes no calls. It issues three sw and swc1 stores [@0xdace5d4] [@0xdace5d8] [@0xdace5e0] and returns 0x10000 [@0xdace5dc].
  Role (from name): writes one vertex for the immediate-mode path, as the Vertex2d call.

- `__glOdyim_Vertex3d` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace7c0
  **Inferred.** Makes no calls. It issues four sw and swc1 stores [@0xdace7d8] [@0xdace7dc] [@0xdace7e0] [@0xdace7e8] and returns 0x10000 [@0xdace7e4].
  Role (from name): writes one vertex for the immediate-mode path, as the Vertex3d call.

- `__glOdyim_Vertex3i` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace8c0
  **Inferred.** Makes no calls. It issues four sw stores [@0xdace8e4] [@0xdace8e8] [@0xdace8ec] [@0xdace8f4] and returns 0x10000 [@0xdace8f0].
  Role (from name): writes one vertex for the immediate-mode path, as the Vertex3i call.

- `__glOdyim_Vertex4i` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaceb80
  **Inferred.** Makes no calls. It issues five sw stores [@0xdacebac] [@0xdacebb0] [@0xdacebb4] [@0xdacebb8] [@0xdacebc0] and returns 0x10000 [@0xdacebbc].
  Role (from name): writes one vertex for the immediate-mode path, as the Vertex4i call.

- `__glOdyim_TexCoord3d` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad3a40
  **Inferred.** Makes no calls. It issues four sw and swc1 stores [@0xdad3a58] [@0xdad3a5c] [@0xdad3a60] [@0xdad3a68] and returns 0x10000 [@0xdad3a64].
  Role (from name): writes one texture coordinate for the immediate-mode path, as the TexCoord3d call.

- `__glOdyim_Color3d` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4200
  **Inferred.** Makes no calls. It issues four sw and swc1 stores [@0xdad4218] [@0xdad421c] [@0xdad4220] [@0xdad4228] and returns 0x10000 [@0xdad4224].
  Role (from name): writes one colour for the immediate-mode path, as the Color3d call.

- `__glOdyim_ScratchColor3d` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4240
  **Inferred.** Makes no calls. It issues four sw and swc1 stores [@0xdad4258] [@0xdad425c] [@0xdad4260] [@0xdad4268] and returns 0x10000 [@0xdad4264].
  Role (from name): writes one scratch colour for the immediate-mode path, as the ScratchColor3d call.

- `__glOdyim_ScratchColor3b` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4140
  **Inferred.** Makes no calls. It issues four sw stores [@0xdad414c] [@0xdad4150] [@0xdad4154] [@0xdad415c] and returns 0x10000 [@0xdad4158].
  Role (from name): writes one scratch colour for the immediate-mode path, as the ScratchColor3b call.

- `__glOdyim_ScratchColor3i` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4440
  **Inferred.** Makes no calls. It issues four sw stores [@0xdad444c] [@0xdad4450] [@0xdad4454] [@0xdad445c] and returns 0x10000 [@0xdad4458].
  Role (from name): writes one scratch colour for the immediate-mode path, as the ScratchColor3i call.

- `__glOdyim_ScratchColor3s` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4540
  **Inferred.** Makes no calls. It issues four sw stores [@0xdad454c] [@0xdad4550] [@0xdad4554] [@0xdad455c] and returns 0x10000 [@0xdad4558].
  Role (from name): writes one scratch colour for the immediate-mode path, as the ScratchColor3s call.

- `__glOdyim_ScratchColor3ui` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad4740
  **Inferred.** Makes no calls. It issues four sw stores [@0xdad474c] [@0xdad4750] [@0xdad4754] [@0xdad475c] and returns 0x10000 [@0xdad4758].
  Role (from name): writes one scratch colour for the immediate-mode path, as the ScratchColor3ui call.

## Rejected entries

None. All 25 rendered entries passed the grader, so none were discarded.

## Open items

- The exact selector codes handled by ApplyMaterialI are not established.
- The border rule in AddConvolutionBorders and the layout of the stack scratch area are not established.
- The state words at abs 0x1028, 0x1030 and 0x1034 used by the display-list writers are not identified.
- The indirect callee in __glOdysseyGetHardwareShadow is unresolved.
- Whether 0x10000 is a hardware port is unknown from these facts alone.
