# Routine role statements, tier-1 batch 21

Each entry is a role statement for one routine in `usr/gfx/arch/IP30ODSY64/libGLcore.so`, written from its rendered facts (registers, calls, constants) at the cited address. These describe software behavior in that build. They do not establish hardware behavior. Grades are inferred unless the facts fully establish them, and none of these do.

- `__glOdylc_TexCoord4i` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3262aa0
  **Inferred.** Role (from name): records a 4-component texture coordinate into a display list. It reads state words at abs 0x1048, 0x1058 and 0x1060. It calls __glSPDlistSpace (0x328fd50, jalr at 0x3262af8) with a0 = 0 and the caller's a1 to a3 passed through, but only on the paths where the branches on the words at 0x1060 and 0x1048 select it (a 0x1048 value below 5 is one such path). Five word stores at 0x3262b4c to 0x3262b5c go through a pointer built from the word at 0x1058, not to the fixed window at abs 0x10000, and sd/sw stores at 0x3262b64, 0x3262b70 and 0x3262b80 update the state words. The record layout and the meaning of the state words are not established. The return is either the constant 0x134418 (on the path that skips the call) or the __glSPDlistSpace result.
  Reviewed: 2026-11-12 (sonnet)

- `DownsampleTextureThruHW` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x32657f0
  **Inferred.** Role (from name): prepares a texture downsample on the hardware path. It reads per-texture table entries indexed by a1 and a2 (stride 68 bytes, offsets 0x568 to 0x590) and a large block through the pointer at abs 0x1020. Depending on branches on those entries it calls __glOdysseyImageLogBase2 (0x3256200) twice, ChooseSuitableBuzzTexModeBaseFmt (0x3264280), GetImageFmtEnumFromBuzzTexFormat (0x32641c0), __glOdysseyImageCalcFieldFormat (0x321d410) and __glOdysseyValidateHardware (0x31fc4a0, jalr at 0x3265dfc, reached when a word in the abs 0x1020 block is nonzero). It returns 0x7 or a value with bit 0x800 set. The filter used for the downsample itself is not established by these facts.
  Reviewed: 2026-11-12 (sonnet)

- `CISendFc` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x327e7b0
  **Inferred.** Loads one byte from a0 +0xc0, four floats from a0 at +0x18, +0x1c, +0x20 and +0x24, and a float at +0x98, and stores the floats to the fixed window at abs 0x10000. It stores eight values in total, and returns the constant 0xffffffff8080d005. What the byte at +0xc0 is used for and what the other stored words are is not shown by the facts. The "CI" and "Fc" parts of the name are not explained by the facts, so the purpose is open.
  Reviewed: 2026-11-12 (sonnet)

- `CISendClippedBmFmN` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x327ecd0
  **Inferred.** The longer sibling of CISendFc, at 352 bytes. It reads the same byte at +0xc0 and the same float fields, plus floats at +0xa8, +0xc8, +0xcc and +0xd0, and writes about 50 values into the window at abs 0x10000 before returning the same constant 0xffffffff8080d005. The name suggests a clipped bitmap send, but the clipping rule and the field meanings are not established.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyHyperpipeStereo` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3289050
  **Inferred.** Reads a context word at a0 +0x285d8 and a word at a3, then issues __glOdysseyIoctl (0x326da60, jalr at 0x32890a0) with request 0x6f640018, a stack buffer at sp-48 and a5 loaded from [a0 + 165336]. It returns 0 or 1 from that call. The facts do not name the request code, so the only evidence that this is the stereo setting is the routine's name. The meaning of the return values is not established.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Vertex2d` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3369380
  **Inferred.** Stores one word at 0x3369394 and two floats at 0x3369398 and 0x33693a0 into abs 0x10000, then returns that address from 0x336939c. The 36-byte body shows no argument loads, so where the operands come from is not visible here.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Vertex3d` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3369580
  **Inferred.** One word store at 0x3369598 and three float stores at 0x336959c, 0x33695a0 and 0x33695a8 fill abs 0x10000. The return at 0x33695a4 is the constant 0x10000.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Vertex3i` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3369680
  **Inferred.** Four word stores, three of them at 0x33696a4, 0x33696a8 and 0x33696ac, write abs 0x10000. The routine returns 0x10000 from 0x33696b0.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Vertex4i` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3369940
  **Inferred.** Five word stores, including those at 0x336996c, 0x3369970 and 0x3369974, go to abs 0x10000. The return at 0x336997c yields 0x10000.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_TexCoord3d` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x336e800
  **Inferred.** One word store at 0x336e818 and three float stores at 0x336e81c, 0x336e820 and 0x336e828 fill abs 0x10000. The return at 0x336e824 yields 0x10000.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor3b` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x336ef00
  **Inferred.** Four word stores, including 0x336ef0c, 0x336ef10 and 0x336ef14, write abs 0x10000. The return at 0x336ef18 gives 0x10000, and the facts show no loads from the 32-byte body.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_Color3d` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x336efc0
  **Inferred.** A word store at 0x336efd8 and float stores at 0x336efdc, 0x336efe0 and 0x336efe8 fill abs 0x10000. The return at 0x336efe4 is the constant 0x10000.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor3d` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x336f000
  **Inferred.** A word store at 0x336f018 and float stores at 0x336f01c, 0x336f020 and 0x336f028 fill abs 0x10000. The return at 0x336f024 is 0x10000, and the offsets match the Color3d entry at 0x336efc0 with a shift of 0x40.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor3i` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x336f200
  **Inferred.** Four word stores at 0x336f20c, 0x336f210 and 0x336f214 (and one more) write abs 0x10000. The return at 0x336f218 gives 0x10000.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor3s` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x336f300
  **Inferred.** Four word stores, including 0x336f30c, 0x336f310 and 0x336f314, write abs 0x10000. The return at 0x336f318 is 0x10000.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor3ui` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x336f500
  **Inferred.** Four word stores, with 0x336f50c, 0x336f510 and 0x336f514 among them, write abs 0x10000. The return at 0x336f518 yields 0x10000.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor3us` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x336f600
  **Inferred.** Four word stores, including 0x336f60c, 0x336f610 and 0x336f614, write abs 0x10000. The return at 0x336f618 is 0x10000.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4b` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x336f700
  **Inferred.** Five word stores, including 0x336f70c, 0x336f710 and 0x336f714, write abs 0x10000. The return at 0x336f71c is 0x10000.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4dv` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x336f8c0
  **Inferred.** Four doubles are loaded from a0 at offsets 0, 8, 0x10 and 0x18 (ldc1 at 0x336f8c0, 0x336f8cc, 0x336f8d4 and 0x336f8dc). The routine then writes one word at 0x336f8e4 and four float stores, three of them at 0x336f8ec, 0x336f8f4 and 0x336f8f8, into abs 0x10000, and returns 0x10000 from 0x336f8fc.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4i` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x336fa80
  **Inferred.** Five word stores, including 0x336fa8c, 0x336fa90 and 0x336fa94, write abs 0x10000. The return at 0x336fa9c is 0x10000.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4s` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x336fb80
  **Inferred.** Five word stores, including 0x336fb8c, 0x336fb90 and 0x336fb94, write abs 0x10000, and the return at 0x336fb9c gives 0x10000.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4ub` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x336fc80
  **Inferred.** Five word stores, with 0x336fc8c, 0x336fc90 and 0x336fc94 among them, write abs 0x10000. The return at 0x336fc9c is 0x10000.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4ui` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x336fd80
  **Inferred.** Five word stores, including 0x336fd8c, 0x336fd90 and 0x336fd94, write abs 0x10000. The return at 0x336fd9c is 0x10000.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchColor4us` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x336fe80
  **Inferred.** Five word stores, including 0x336fe8c, 0x336fe90 and 0x336fe94, write abs 0x10000. The return at 0x336fe9c is 0x10000.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdyim_ScratchIndexd` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x336ff80
  **Inferred.** One word store at 0x336ff90 and one float store at 0x336ff98 write abs 0x10000. The return at 0x336ff94 gives 0x10000. The body is 28 bytes.
  Reviewed: 2026-11-12 (sonnet)
