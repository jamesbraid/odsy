# Routine role statements, tier-1 batch 18

Each entry is a role statement for one routine in `usr/gfx/arch/IP30ODSY32/libGLcore.so`, written from its rendered facts (registers, calls, constants) at the cited address. These describe software behavior in that build. They do not establish hardware behavior. Grades are inferred unless noted.

- libGLcore.so at 0xd983df0: ApplyMaterialI

  Dispatches on the selector in a1, comparing it against 0x1200, 0x1201, 0x1202, 0x1600 and 0x1601 (branches at 0xd983df4, 0xd983e48, 0xd9842b0, 0xd984108, 0xd984150), and copies per-material fields from the pointer in a2 into fields of a0 at small offsets. It loads and stores float constants such as 1.0 (0x3ff0000000000000) and makes no calls. It also stores 38 times to the fixed address 0x10000, the same window that the immediate-mode writers in this batch use. The meaning of each selector code is not established by these facts, so the grade is unknown.

- libGLcore.so at 0xd99e4b0: AddConvolutionBorders

  Builds the border samples for a convolution pass. The routine makes 26 calls to __glOdysseyImageMovePixelsTexture (0xd9bbff0), 7 calls to __glOdysseyProgramTexFilter (0xd9b6820), up to 6 conditional calls to LoadTextureFilter (0xd99cb60), and about 50 floorf or ceilf calls, with a stack scratch area at sp-432. The pattern suggests it computes integer texel bounds with floor and ceil and moves pixels into the texture through the image-move helper, but the exact border rule is not established here. Filter programming is delegated to __glOdysseyProgramTexFilter.

- libGLcore.so at 0xd9c4d90: __glOdylc_Normal3b

- libGLcore.so at 0xd9c5770: __glOdylc_Normal3s

  Both are the same shape. Each reads a state word at abs 0x1028 and two others at 0x1030 and 0x1034, and calls __glSPDlistSpace (0xd9fb4b0) with a0 = 0 and the caller's arguments passed through. A branch tests whether the word at 0x1034 is zero, and another compares the word at 0x1028 against 4. The "odylc" name and the __glSPDlistSpace call suggest display-list recording of Normal3 calls. The meaning of the state words is inferred only.

- libGLcore.so at 0xd9ccc50: __glOdylc_TexCoord2d

- libGLcore.so at 0xd9cd110: __glOdylc_TexCoord2i

  Display-list recording variants for 2-component texture coordinates, with the same state-word pattern as the Normal3 pair. The compare threshold is 3 for each. Each calls __glSPDlistSpace, so the space-reservation role is the same as above. The exact per-call layout written is not established.

- libGLcore.so at 0xd9cdab0: __glOdylc_TexCoord3i

- libGLcore.so at 0xd9ce4d0: __glOdylc_TexCoord4i

  Display-list recording variants for 3- and 4-component texture coordinates. The compare thresholds are 4 for TexCoord3i and 5 for TexCoord4i. Both follow the same __glSPDlistSpace call pattern, so the space-reservation role matches the entries above.

- libGLcore.so at 0xd9d11a0: DownsampleTextureThruHW

  Downsamples a texture through the hardware path. It reads per-texture table entries indexed by a1 and a2 (stride 68 bytes, offsets 0x554 to 0x57c), calls __glOdysseyImageLogBase2 (0xd9c1e40) twice, ChooseSuitableBuzzTexModeBaseFmt (0xd9cfc80), GetImageFmtEnumFromBuzzTexFormat (0xd9cfbd0) and __glOdysseyImageCalcFieldFormat (0xd9896a0), and calls __glOdysseyValidateHardware (0xd968180) before returning. The role is inferred from the callee names and the table layout, so the exact downsample filter is open.

- libGLcore.so at 0xd9d93e0: __glOdysseyGetHardwareShadow

  Queries the hardware shadow capability. It loads a field at a0 + 0x14, calls __glOdysseyIoctl (0xd9d9360) with request 0x6f64000c, and on a non-negative result makes an indirect call with a fixed argument at 0x0dae4dc8 whose callee is unknown. The return value is either the ioctl result or the indirect call's result. The indirect callee is not resolved.

- libGLcore.so at 0xd9f47d0: __glOdysseyQueryHyperpipeLimit

- libGLcore.so at 0xd9f4850: __glOdysseyHyperpipeRect

- libGLcore.so at 0xd9f48d0: __glOdysseyHyperpipeStereo

- libGLcore.so at 0xd9f4a90: __glOdysseyQueryHyperpipePixelAverage

  Thin wrappers around __glOdysseyIoctl (0xd9d9360) that take a field at a0 + 0x21ef0. The ioctl request is 0x6f640018 in the limit, rect and stereo routines, and 0x6f640016 in the pixel-average query. A small constant in a3 (2, 1, pass-through, and 4 respectively) appears to select a sub-operation. The Query routines pass an output buffer at sp-48. The sub-operation numbering and the request meanings are inferred only.

- libGLcore.so at 0xdace5c0: __glOdyim_Vertex2d

- libGLcore.so at 0xdace7c0: __glOdyim_Vertex3d

- libGLcore.so at 0xdace8c0: __glOdyim_Vertex3i

- libGLcore.so at 0xdaceb80: __glOdyim_Vertex4i

  Immediate-mode vertex writers. Each stores its coordinates to the fixed address 0x10000 with sw or swc1 (2 to 5 stores depending on width) and returns 0x10000. They make no calls. Whether 0x10000 is a hardware port or a buffer is not established by these facts. The grade is inferred.

- libGLcore.so at 0xdad3a40: __glOdyim_TexCoord3d

- libGLcore.so at 0xdad4200: __glOdyim_Color3d

- libGLcore.so at 0xdad4240: __glOdyim_ScratchColor3d

  Immediate-mode writers for a 3-component texture coordinate and two color forms. Each writes its components to 0x10000 (one sw plus three swc1 stores) and returns 0x10000. They make no calls. The "Scratch" variants look like the same write without the state update, but that is inferred from the name only.

- libGLcore.so at 0xdad4140: __glOdyim_ScratchColor3b

- libGLcore.so at 0xdad4440: __glOdyim_ScratchColor3i

- libGLcore.so at 0xdad4540: __glOdyim_ScratchColor3s

- libGLcore.so at 0xdad4740: __glOdyim_ScratchColor3ui

  Four integer-component scratch color writers. Each stores four words to 0x10000 and returns 0x10000, with no calls. They match the integer-width vertex writers above.

## Rejected entries

None. All 25 rendered entries passed the grader, so none were discarded.

## Open items

- The exact selector codes handled by ApplyMaterialI are not established.
- The border rule in AddConvolutionBorders and the layout of the stack scratch area are not established.
- The state words at abs 0x1028, 0x1030 and 0x1034 used by the display-list writers are not identified.
- The indirect callee in __glOdysseyGetHardwareShadow is unresolved.
- Whether 0x10000 is a hardware port is unknown from these facts alone.
