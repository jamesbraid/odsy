# Routine role statements, tier-1 batch 21

Each entry is a role statement for one routine in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, written from its rendered facts (registers, calls, constants) at the cited address. These describe software behavior in that build. They do not establish hardware behavior. Grades are inferred unless the facts fully establish them, and none of these do.

- `__glOdylc_TexCoord4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2212aa0
  **Inferred.** Role (from name): records a 4-component texture coordinate into a display list. It reads state words at abs 0x1048, 0x1058 and 0x1060. It calls __glSPDlistSpace (0x223fd50, jalr at 0x2212af8) with a0 = 0 and the caller's a1 to a3 passed through, but only on the paths where the branches on the words at 0x1060 and 0x1048 select it (a 0x1048 value below 5 is one such path). Five word stores at 0x2212b4c to 0x2212b5c go through a pointer built from the word at 0x1058, not to the fixed window at abs 0x10000, and sd/sw stores at 0x2212b64, 0x2212b70 and 0x2212b80 update the state words. The record layout and the meaning of the state words are not established. The return is either the constant 0x134418 (on the path that skips the call) or the __glSPDlistSpace result.
  Reviewed: 2026-11-12

- `DownsampleTextureThruHW` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22157f0
  **Inferred.** Role (from name): prepares a texture downsample on the hardware path. It reads per-texture table entries indexed by a1 and a2 (stride 68 bytes, offsets 0x568 to 0x590) and a large block through the pointer at abs 0x1020. Depending on branches on those entries it calls __glOdysseyImageLogBase2 (0x2206200) twice, ChooseSuitableBuzzTexModeBaseFmt (0x2214280), GetImageFmtEnumFromBuzzTexFormat (0x22141c0), __glOdysseyImageCalcFieldFormat (0x21cd410) and __glOdysseyValidateHardware (0x21ac4a0, jalr at 0x2215dfc, reached when a word in the abs 0x1020 block is nonzero). It returns 0x7 or a value with bit 0x800 set. The filter used for the downsample itself is not established by these facts.
  Reviewed: 2026-11-12

- `CISendFc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222e7b0
  **Inferred.** Loads one byte from a0 +0xc0, four floats from a0 at +0x18, +0x1c, +0x20 and +0x24, and a float at +0x98, and stores the floats to the fixed window at abs 0x10000. It stores eight values in total, and returns the constant 0xffffffff8080d005. What the byte at +0xc0 is used for and what the other stored words are is not shown by the facts. The "CI" and "Fc" parts of the name are not explained by the facts, so the purpose is open.
  Reviewed: 2026-11-12

- `CISendClippedBmFmN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222ecd0
  **Inferred.** The longer sibling of CISendFc, at 352 bytes. It reads the same byte at +0xc0 and the same float fields, plus floats at +0xa8, +0xc8, +0xcc and +0xd0, and writes about 50 values into the window at abs 0x10000 before returning the same constant 0xffffffff8080d005. The name suggests a clipped bitmap send, but the clipping rule and the field meanings are not established.
  Reviewed: 2026-11-12

- `__glOdysseyHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239050
  **Inferred.** Reads a context word at a0 +0x285d8 and a word at a3, then issues __glOdysseyIoctl (0x221da60, jalr at 0x22390a0) with request 0x6f640018, a stack buffer at sp-48 and a5 loaded from [a0 + 165336]. It returns 0 or 1 from that call. The facts do not name the request code, so the only evidence that this is the stereo setting is the routine's name. The meaning of the return values is not established.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2319380
  **Inferred.** Stores one word at 0x2319394 and two floats at 0x2319398 and 0x23193a0 into abs 0x10000, then returns that address from 0x231939c. The 36-byte body shows no argument loads, so where the operands come from is not visible here.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2319580
  **Inferred.** One word store at 0x2319598 and three float stores at 0x231959c, 0x23195a0 and 0x23195a8 fill abs 0x10000. The return at 0x23195a4 is the constant 0x10000.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2319680
  **Inferred.** Four word stores, three of them at 0x23196a4, 0x23196a8 and 0x23196ac, write abs 0x10000. The routine returns 0x10000 from 0x23196b0.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2319940
  **Inferred.** Five word stores, including those at 0x231996c, 0x2319970 and 0x2319974, go to abs 0x10000. The return at 0x231997c yields 0x10000.
  Reviewed: 2026-11-12

- `__glOdyim_TexCoord3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231e800
  **Inferred.** One word store at 0x231e818 and three float stores at 0x231e81c, 0x231e820 and 0x231e828 fill abs 0x10000. The return at 0x231e824 yields 0x10000.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231ef00
  **Inferred.** Four word stores, including 0x231ef0c, 0x231ef10 and 0x231ef14, write abs 0x10000. The return at 0x231ef18 gives 0x10000, and the facts show no loads from the 32-byte body.
  Reviewed: 2026-11-12

- `__glOdyim_Color3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231efc0
  **Inferred.** A word store at 0x231efd8 and float stores at 0x231efdc, 0x231efe0 and 0x231efe8 fill abs 0x10000. The return at 0x231efe4 is the constant 0x10000.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231f000
  **Inferred.** A word store at 0x231f018 and float stores at 0x231f01c, 0x231f020 and 0x231f028 fill abs 0x10000. The return at 0x231f024 is 0x10000, and the offsets match the Color3d entry at 0x231efc0 with a shift of 0x40.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231f200
  **Inferred.** Four word stores at 0x231f20c, 0x231f210 and 0x231f214 (and one more) write abs 0x10000. The return at 0x231f218 gives 0x10000.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231f300
  **Inferred.** Four word stores, including 0x231f30c, 0x231f310 and 0x231f314, write abs 0x10000. The return at 0x231f318 is 0x10000.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231f500
  **Inferred.** Four word stores, with 0x231f50c, 0x231f510 and 0x231f514 among them, write abs 0x10000. The return at 0x231f518 yields 0x10000.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231f600
  **Inferred.** Four word stores, including 0x231f60c, 0x231f610 and 0x231f614, write abs 0x10000. The return at 0x231f618 is 0x10000.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231f700
  **Inferred.** Five word stores, including 0x231f70c, 0x231f710 and 0x231f714, write abs 0x10000. The return at 0x231f71c is 0x10000.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231f8c0
  **Inferred.** Four doubles are loaded from a0 at offsets 0, 8, 0x10 and 0x18 (ldc1 at 0x231f8c0, 0x231f8cc, 0x231f8d4 and 0x231f8dc). The routine then writes one word at 0x231f8e4 and four float stores, three of them at 0x231f8ec, 0x231f8f4 and 0x231f8f8, into abs 0x10000, and returns 0x10000 from 0x231f8fc.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231fa80
  **Inferred.** Five word stores, including 0x231fa8c, 0x231fa90 and 0x231fa94, write abs 0x10000. The return at 0x231fa9c is 0x10000.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231fb80
  **Inferred.** Five word stores, including 0x231fb8c, 0x231fb90 and 0x231fb94, write abs 0x10000, and the return at 0x231fb9c gives 0x10000.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231fc80
  **Inferred.** Five word stores, with 0x231fc8c, 0x231fc90 and 0x231fc94 among them, write abs 0x10000. The return at 0x231fc9c is 0x10000.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231fd80
  **Inferred.** Five word stores, including 0x231fd8c, 0x231fd90 and 0x231fd94, write abs 0x10000. The return at 0x231fd9c is 0x10000.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231fe80
  **Inferred.** Five word stores, including 0x231fe8c, 0x231fe90 and 0x231fe94, write abs 0x10000. The return at 0x231fe9c is 0x10000.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchIndexd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231ff80
  **Inferred.** One word store at 0x231ff90 and one float store at 0x231ff98 write abs 0x10000. The return at 0x231ff94 gives 0x10000. The body is 28 bytes.
  Reviewed: 2026-11-12
