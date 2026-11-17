# Readings: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`

One entry per routine, filed here from the reading batches by binary.

- `__glOdylc_Color3b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda40620 (o32)
  **Inferred.** Tests [0x1034] against zero at 0xda40668 and bit 0x4 of [0x1030] at 0xda40674 and 0xda406dc, then compares [0x1028] with a register that is one of 0x4 or 0x5 (signed) at 0xda40688. When it is below that value it calls `__glSPDlistSpace` at 0xda4069c with a0 = 0 and a3 = [0x1028]. It then stores words at 0xda406f8 to 0xda4071c and further stores at 0xda40724 to 0xda40730; the base registers are not resolved, so the render does not show a store to the 0x1034 pointer. The return is the `__glSPDlistSpace` result or an unresolved value. Role (from name): the symbol suggests a display-list color compile; the facts do not show which flag state gives which count.
  Reviewed: 2026-11-12

- `__glOdylc_Color3ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda413fc (o32)
  **Inferred.** Has the same shape as `__glOdylc_Color3b`: tests [0x1034] against zero at 0xda41444 and bit 0x4 of [0x1030] at 0xda41450 and 0xda414b8, then compares [0x1028] with a register that is one of 0x4 or 0x5 (signed) at 0xda41464. When it is below that value it calls `__glSPDlistSpace` at 0xda41478 with a0 = 0 and a3 = [0x1028]. It stores words at 0xda414d4 to 0xda414f8 and further stores at 0xda41500 to 0xda4150c, base registers not resolved. The return is the `__glSPDlistSpace` result or an unresolved value. Role (from name): the symbol suggests a display-list color compile.
  Reviewed: 2026-11-12

- `__glOdylc_Color3us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41648 (o32)
  **Inferred.** Has the same shape as `__glOdylc_Color3b`: tests [0x1034] against zero at 0xda41690 and bit 0x4 of [0x1030] at 0xda4169c and 0xda41704, then compares [0x1028] with a register that is one of 0x4 or 0x5 (signed) at 0xda416b0. When it is below that value it calls `__glSPDlistSpace` at 0xda416c4 with a0 = 0 and a3 = [0x1028]. It stores words at 0xda41720 to 0xda41744 and further stores at 0xda4174c to 0xda41758, base registers not resolved. The return is the `__glSPDlistSpace` result or an unresolved value. Role (from name): the symbol suggests a display-list color compile.
  Reviewed: 2026-11-12

- `__glOdylc_Color4b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41894 (o32)
  **Inferred.** Tests [0x1034] against zero at 0xda418e0 and bit 0x4 of [0x1030] at 0xda418ec and 0xda41954, then compares [0x1028] with a register that is one of 0x5 or 0x6 (signed) at 0xda41900. When it is below that value it calls `__glSPDlistSpace` at 0xda41914 with a0 = 0 and the other arguments as at entry. It stores words at 0xda41970 to 0xda4199c and further stores at 0xda419a4 to 0xda419b0, base registers not resolved. The return is the `__glSPDlistSpace` result or an unresolved value. Role (from name): the symbol suggests a display-list color compile; the facts do not show which flag state gives which count.
  Reviewed: 2026-11-12

- `__glOdylc_Color4i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda41fd8 (o32)
  **Inferred.** Has the same shape as `__glOdylc_Color4b` at 0xda41894: tests [0x1034] against zero at 0xda42024 and bit 0x4 of [0x1030] at 0xda42030 and 0xda42098, then compares [0x1028] with a register that is one of 0x5 or 0x6 (signed) at 0xda42044. When it is below that value it calls `__glSPDlistSpace` at 0xda42058 with a0 = 0 and the other arguments as at entry. It stores words at 0xda420b4 to 0xda420e0 and further stores at 0xda420e8 to 0xda420f4, base registers not resolved. The return is the `__glSPDlistSpace` result or an unresolved value. Role (from name): the symbol suggests a display-list color compile.
  Reviewed: 2026-11-12

- `__glOdylc_Color4s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda4223c (o32)
  **Inferred.** Has the same shape as `__glOdylc_Color4b` at 0xda41894: tests [0x1034] against zero at 0xda42288 and bit 0x4 of [0x1030] at 0xda42294 and 0xda422fc, then compares [0x1028] with a register that is one of 0x5 or 0x6 (signed) at 0xda422a8. When it is below that value it calls `__glSPDlistSpace` at 0xda422bc with a0 = 0 and the other arguments as at entry. It stores words at 0xda42318 to 0xda42344 and further stores at 0xda4234c to 0xda42358, base registers not resolved. The return is the `__glSPDlistSpace` result or an unresolved value. Role (from name): the symbol suggests a display-list color compile.
  Reviewed: 2026-11-12

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

- `DownsampleTextureThruHW` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab7238
  `DownsampleTextureThruHW` reads through a pointer loaded from abs 0x1010 and writes 28 words and 14 floats to abs 0x4000, plus nine words to abs 0x1018. Its calls are `__glOdysseyImageLogBase2` (0xdab7408, 0xdab744c), `ChooseSuitableBuzzTexModeBaseFmt` (0xdab7628), `GetImageFmtEnumFromBuzzTexFormat` (0xdab7880), `__glOdysseyImageCalcFieldFormat` (0xdab7894) and `__glOdysseyValidateHardware` (0xdab7bd4). The callees point to format selection and validation around a texture downsample, but the facts show no filter arithmetic, so the downsample role is only suggested by the name.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdysseyWindowToNormalizedEyeZ` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacbc78 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacbc78-0xdacbd30 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xdacbc88 loads 4 bytes from abs 0x1010.
  The `ldc1` at 0xdacbcb0 loads 8 bytes from [0x1010] +0x16660.
  The `ldc1` at 0xdacbcb4 loads 8 bytes from [0x1010] +0x16668.
  The `jalr` at 0xdacbc98 calls __glOdysseyWindowToEyeZ [0xdacba24] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bc1fl` branch at 0xdacbcec targets 0xdacbd04, is taken when not (f12 < f18 (c.lt.d at 0xdacbce4)), and falls through when f12 < f18 (c.lt.d at 0xdacbce4); its branch-likely delay slot `mtc1 at,$f5` at 0xdacbcf0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdacbcf8 targets 0xdacbd28 and is always taken.
  The `bc1fl` branch at 0xdacbd14 targets 0xdacbd28, is taken when not (f4 < f12 (c.lt.d at 0xdacbd0c)), and falls through when f4 < f12 (c.lt.d at 0xdacbd0c); its branch-likely delay slot `mov.s $f0,$f14` at 0xdacbd18 runs only when taken and is annulled on fall-through.
  The return at 0xdacbd28 has v0 = [0x1010]+91744.
  The instructions from 0xdacbd00 to 0xdacbd00 are not reached by any path from the entry, and their branches are not listed.

- `__glOdysseySoftClipBeginTriangles` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacdb48 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacdb48-0xdacdb7c (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xdacdb6c stores 4 bytes to a0 (arg0 at entry) +0x30e8.
  The `sw` at 0xdacdb70 stores 4 bytes to a0 (arg0 at entry) +0x2e04.
  The `sw` at 0xdacdb78 stores 4 bytes to a0 (arg0 at entry) +0x2e4c.
  The return at 0xdacdb74 has v0 = ?.

- `RGBSendFc` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacec48
  `RGBSendFc` reads the byte at a0+0xb8 (0xdacec48) and tests a flag from [a0+184] at 0xdacec54. It loads eight floats from a0+0x10 to a0+0x1c and a0+0x90 to a0+0x9c, then stores them with three words to abs 0x4000. It returns 0xf or 0x10 at 0xdacecc8. Those values read like a status pair, but the facts do not say what they mean.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `RGBSendClippedBmFmTN` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacfde0
  `RGBSendClippedBmFmTN` is 744 bytes. It reads the byte at a0+0xb8 and the words at abs 0x1010 and [0x1010]+0x588, then loads floats from a0 offsets 0x10 to 0x1c, 0x30 to 0x3c, 0x90 to 0x9c, 0xa0 to 0xac, 0xc0 to 0xc8, 0x170 to 0x178 and 0x180 to 0x188. It stores 20 words and 75 floats to abs 0x4000 and returns the value loaded from [0x1010] at 0xdad00c0. The name suggests a clipped bitmap sent to the same store target, but the clipping logic is not visible in these facts.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `CISendClippedBmFmN` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0640
  `CISendClippedBmFmN` is 372 bytes. It reads the byte at a0+0xb8 (0xdad064c), tests the flag at 0xdad0658, and loads floats from a0+0x90, a0+0xa0, a0+0xc0 to a0+0xc8, and a0+0x10 to a0+0x1c. It stores 11 words and 39 floats to abs 0x4000 and returns 0xf or 0x10 at 0xdad07ac, chosen by the flag test. Like `RGBSendFc` it tests the byte at a0+0xb8 and returns 0xf or 0x10, but it stores fewer words and floats. The CI prefix suggests color-index data, but that comes from the name alone.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `CISendClippedBmFmN` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0640
  **Inferred.** Takes a record at a0 and loads float fields from +0x10, +0x14, +0x18, +0x1c, +0x90, +0xa0, +0xc0, +0xc4 and +0xc8, then issues 39 `swc1` and 11 `sw` stores to the fixed address 0x4000. A flag byte at a0+0xb8 selects a branch (0xdad0658). The identity of the fixed 0x4000 target is unknown; the name suggests a clipped bitmap send. The return is 0xf or 0x10 at 0xdad07ac.
  Reviewed: 2026-11-12

- `__glChangeWindowSize` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1aeb8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1aeb8-0xdb1afd0 (280 bytes).
  It occupies 280 bytes.
  The `sw` at 0xdb1aee0 stores 4 bytes to a0 (arg0 at entry) +0xe6c.
  The `sw` at 0xdb1aee4 stores 4 bytes to a0 (arg0 at entry) +0xe70.
  The `lw` at 0xdb1aee8 loads 4 bytes from a0 (arg0 at entry) +0x7718.
  The `lw` at 0xdb1aef4 loads 4 bytes from [a0+30488] +0x38.
  The `lbu` at 0xdb1af00 loads 1 byte from a0 (arg0 at entry) +0xc8e.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc90, including `lbu` at 0xdb1af0c, `lbu` at 0xdb1af2c.
  The `lw` at 0xdb1af10 loads 4 bytes from a0 (arg0 at entry) +0x771c.
  The `lw` at 0xdb1af1c loads 4 bytes from [a0+30492] +0x38.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc91, including `lbu` at 0xdb1af34, `lbu` at 0xdb1af40, `lbu` at 0xdb1af5c.
  The `lw` at 0xdb1af38 loads 4 bytes from a0 (arg0 at entry) +0x79e8.
  The `lw` at 0xdb1af44 loads 4 bytes from a0 (arg0 at entry) +0x7a10.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc92, including `lbu` at 0xdb1af64, `lbu` at 0xdb1af80.
  The `lw` at 0xdb1af68 loads 4 bytes from a0 (arg0 at entry) +0x798c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2de4, including `lw` at 0xdb1af88, `lw` at 0xdb1afa4.
  The `lw` at 0xdb1af8c loads 4 bytes from a0 (arg0 at entry) +0x7914.
  The `jalr` at 0xdb1aef8 calls (unknown callee) with a0=[a0+30488], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb1af20 calls (unknown callee) with a0=[a0+30492], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xdb1af50 calls (unknown callee) with a0=a0+31192, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xdb1af74 calls (unknown callee) with a0=a0+31060, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xdb1af98 calls (unknown callee) with a0=a0+30940, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xdb1afac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xdb1af08 targets 0xdb1af30, is taken when t6(=[a0+3214]:1) == 0, and falls through when t6(=[a0+3214]:1) != 0; its branch-likely delay slot `lbu t7,3216(s0)` at 0xdb1af0c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdb1af30 targets 0xdb1af60, is taken when t7(=[a0+3216]:1) == 0, and falls through when t7(=[a0+3216]:1) != 0; its branch-likely delay slot `lbu t0,3217(s0)` at 0xdb1af34 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdb1af3c targets 0xdb1af60, is taken when t8(=[a0+31208]) == 0, and falls through when t8(=[a0+31208]) != 0; its branch-likely delay slot `lbu t0,3217(s0)` at 0xdb1af40 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdb1af60 targets 0xdb1af84, is taken when t0(=[a0+3217]:1) == 0, and falls through when t0(=[a0+3217]:1) != 0; its branch-likely delay slot `lbu t1,3218(s0)` at 0xdb1af64 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdb1af84 targets 0xdb1afa8, is taken when t1(=[a0+3218]:1) == 0, and falls through when t1(=[a0+3218]:1) != 0; its branch-likely delay slot `lw t9,11748(s0)` at 0xdb1af88 runs only when taken and is annulled on fall-through.
  The return at 0xdb1afc8 has v0 = ret(?).

- `__glChangeReadWindowSize` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1afd0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1afd0-0xdb1afdc (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xdb1afd0 stores 4 bytes to a0 (arg0 at entry) +0xe74.
  The `sw` at 0xdb1afd8 stores 4 bytes to a0 (arg0 at entry) +0xe78.
  The return at 0xdb1afd4 has v0 = ?.

- `glBlendColorEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba69f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba69f0-0xdba69fc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba69f0 loads 4 bytes from abs 0x12f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba69f4).

- `glBlendEquationEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba69fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba69fc-0xdba6a08 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba69fc loads 4 bytes from abs 0x12f4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a00).

- `glTexSubImage1DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a14 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a14-0xdba6a20 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a14 loads 4 bytes from abs 0x12fc.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a18).

- `glTexSubImage2DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a20 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a20-0xdba6a2c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a20 loads 4 bytes from abs 0x1300.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a24).

- `glConvolutionFilter1DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a2c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a2c-0xdba6a38 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a2c loads 4 bytes from abs 0x1304.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a30).

- `glConvolutionFilter2DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a38-0xdba6a44 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a38 loads 4 bytes from abs 0x1308.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a3c).

- `glConvolutionParameterfEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a44 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a44-0xdba6a50 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a44 loads 4 bytes from abs 0x130c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a48).

- `glConvolutionParameterfvEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a50-0xdba6a5c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a50 loads 4 bytes from abs 0x1310.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a54).

- `glConvolutionParameteriEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a5c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a5c-0xdba6a68 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a5c loads 4 bytes from abs 0x1314.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a60).

- `glConvolutionParameterivEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a68 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a68-0xdba6a74 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a68 loads 4 bytes from abs 0x1318.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a6c).

- `glCopyConvolutionFilter1DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a74 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a74-0xdba6a80 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a74 loads 4 bytes from abs 0x131c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a78).

- `glCopyConvolutionFilter2DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a80-0xdba6a8c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a80 loads 4 bytes from abs 0x1320.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a84).

- `glGetConvolutionFilterEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a8c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a8c-0xdba6a98 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a8c loads 4 bytes from abs 0x1324.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a90).

- `glGetConvolutionParameterfvEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a98-0xdba6aa4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a98 loads 4 bytes from abs 0x1328.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a9c).

- `glGetConvolutionParameterivEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6aa4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6aa4-0xdba6ab0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6aa4 loads 4 bytes from abs 0x132c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6aa8).

- `glGetSeparableFilterEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6ab0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6ab0-0xdba6abc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6ab0 loads 4 bytes from abs 0x1330.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6ab4).

- `glSeparableFilter2DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6abc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6abc-0xdba6ac8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6abc loads 4 bytes from abs 0x1334.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6ac0).

- `glGetHistogramEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6ac8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6ac8-0xdba6ad4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6ac8 loads 4 bytes from abs 0x1338.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6acc).

- `glGetHistogramParameterfvEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6ad4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6ad4-0xdba6ae0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6ad4 loads 4 bytes from abs 0x133c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6ad8).

- `glGetHistogramParameterivEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6ae0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6ae0-0xdba6aec (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6ae0 loads 4 bytes from abs 0x1340.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6ae4).

- `glGetMinmaxEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6aec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6aec-0xdba6af8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6aec loads 4 bytes from abs 0x1344.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6af0).

- `glGetMinmaxParameterfvEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6af8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6af8-0xdba6b04 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6af8 loads 4 bytes from abs 0x1348.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6afc).

- `glGetMinmaxParameterivEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b04 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b04-0xdba6b10 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b04 loads 4 bytes from abs 0x134c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b08).

- `glHistogramEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b10 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b10-0xdba6b1c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b10 loads 4 bytes from abs 0x1350.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b14).

- `glMinmaxEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b1c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b1c-0xdba6b28 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b1c loads 4 bytes from abs 0x1354.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b20).

- `glResetHistogramEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b28 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b28-0xdba6b34 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b28 loads 4 bytes from abs 0x1358.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b2c).

- `glResetMinmaxEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b34 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b34-0xdba6b40 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b34 loads 4 bytes from abs 0x135c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b38).

- `glTexImage3DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b40-0xdba6b4c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b40 loads 4 bytes from abs 0x1360.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b44).

- `glTexSubImage3DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b4c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b4c-0xdba6b58 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b4c loads 4 bytes from abs 0x1364.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b50).

- `glArrayElementEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b58-0xdba6b64 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b58 loads 4 bytes from abs 0x1368.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b5c).

- `glDrawArraysEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b70 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b70-0xdba6b7c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b70 loads 4 bytes from abs 0x1370.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b74).

- `glGetPointervEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b88 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b88-0xdba6b94 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b88 loads 4 bytes from abs 0x1378.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b8c).

- `glAreTexturesResident` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bc4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bc4-0xdba6bd0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bc4 loads 4 bytes from abs 0x138c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bc8).

- `glAreTexturesResidentEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bc4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bc4-0xdba6bd0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bc4 loads 4 bytes from abs 0x138c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bc8).

- `glBindTexture` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bd0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bd0-0xdba6bdc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bd0 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bd4).

- `glBindTextureEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bd0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bd0-0xdba6bdc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bd0 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bd4).

- `glDeleteTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bdc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bdc-0xdba6be8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bdc loads 4 bytes from abs 0x1394.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6be0).

- `glDeleteTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bdc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bdc-0xdba6be8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bdc loads 4 bytes from abs 0x1394.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6be0).

- `glGenTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6be8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6be8-0xdba6bf4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6be8 loads 4 bytes from abs 0x1398.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bec).

- `glGenTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6be8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6be8-0xdba6bf4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6be8 loads 4 bytes from abs 0x1398.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bec).

- `glIsTexture` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bf4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bf4-0xdba6c00 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bf4 loads 4 bytes from abs 0x139c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bf8).

- `glIsTextureEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bf4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bf4-0xdba6c00 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bf4 loads 4 bytes from abs 0x139c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bf8).

- `glPrioritizeTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c00-0xdba6c0c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c00 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c04).

- `glPrioritizeTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c00-0xdba6c0c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c00 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c04).

- `glCopyTexImage1DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c0c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c0c-0xdba6c18 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c0c loads 4 bytes from abs 0x13a4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c10).

- `glCopyTexImage2DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c18 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c18-0xdba6c24 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c18 loads 4 bytes from abs 0x13a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c1c).

- `glCopyTexSubImage1DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c24 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c24-0xdba6c30 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c24 loads 4 bytes from abs 0x13ac.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c28).

- `glCopyTexSubImage2DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c30 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c30-0xdba6c3c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c30 loads 4 bytes from abs 0x13b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c34).

- `glCopyTexSubImage3DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c3c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c3c-0xdba6c48 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c3c loads 4 bytes from abs 0x13b4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c40).

- `glColorTableSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d38-0xdba6d44 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d38 loads 4 bytes from abs 0x1408.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d3c).

- `glColorTableParameterfvSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d44 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d44-0xdba6d50 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d44 loads 4 bytes from abs 0x140c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d48).

- `glColorTableParameterivSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d50-0xdba6d5c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d50 loads 4 bytes from abs 0x1410.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d54).

- `glCopyColorTableSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d5c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d5c-0xdba6d68 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d5c loads 4 bytes from abs 0x1414.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d60).

- `glGetColorTableSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d68 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d68-0xdba6d74 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d68 loads 4 bytes from abs 0x1418.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d6c).

- `glGetColorTableParameterfvSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d74 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d74-0xdba6d80 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d74 loads 4 bytes from abs 0x141c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d78).

- `glGetColorTableParameterivSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d80-0xdba6d8c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d80 loads 4 bytes from abs 0x1420.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d84).

- `glPointParameterfSGIS` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6df8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6df8-0xdba6e04 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6df8 loads 4 bytes from abs 0x1448.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6dfc).

- `glPointParameterfvSGIS` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6e04 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6e04-0xdba6e10 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6e04 loads 4 bytes from abs 0x144c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6e08).

- `__glOdyim_Vertex2d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba70c0
  `__glOdyim_Vertex2d` is a 32-byte routine with no loads and no calls in its facts. It makes three stores to abs 0x4000: one word at 0xdba70d0 and two floats at 0xdba70d4 and 0xdba70dc. Its return at 0xdba70d8 leaves v0 unknown. The name points to a 2D vertex submit that writes coordinates to the same target as the other immediate-mode routines.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex3d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba72c0
  `__glOdyim_Vertex3d` is 44 bytes with no loads and no calls. It stores one word at 0xdba72d8 and three floats at 0xdba72dc, 0xdba72e0 and 0xdba72e8, all to abs 0x4000. It returns at 0xdba72e4 with v0 unknown. Role (from name): a 3D vertex submit; the facts show three float stores and do not show that they are coordinates.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex3i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba73c0
  `__glOdyim_Vertex3i` is 52 bytes with no loads and no calls. It makes four word stores to abs 0x4000, including 0xdba73e0, 0xdba73e4 and 0xdba73e8, and returns at 0xdba73ec with v0 unknown. The stores are all words, not floats, which fits the integer name.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex3i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba73c0
  **Inferred.** A four-store leaf routine: `sw` at 0xdba73e0, 0xdba73e4 and 0xdba73e8 write words to the fixed address 0x4000, and it returns at 0xdba73ec. It makes no calls and reads no state. The name fits an immediate-mode three-integer vertex; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex4i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba75c0
  `__glOdyim_Vertex4i` is 64 bytes with no loads and no calls. It makes five word stores to abs 0x4000, including 0xdba75e8, 0xdba75ec and 0xdba75f0, and returns at 0xdba75f8 with v0 unknown. The extra store over the 3i form fits a fourth component.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex4i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba75c0
  **Inferred.** A leaf routine like `__glOdyim_Vertex3i` at 0xdba73c0, with five `sw` stores to the fixed address 0x4000 (at 0xdba75e8, 0xdba75ec and 0xdba75f0, among others) and a return at 0xdba75f8. No calls are made. The name suggests a four-integer vertex; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_TexCoord3d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbace80
  `__glOdyim_TexCoord3d` is 44 bytes with no loads and no calls. It stores one word at 0xdbace94 and three floats at 0xdbace9c, 0xdbacea0 and 0xdbacea8, all to abs 0x4000. Its return at 0xdbacea4 leaves v0 unknown. The name suggests a three-component texture coordinate setter.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad540
  `__glOdyim_ScratchColor3b` is 36 bytes with no loads and no calls. Its only memory activity is two doubleword stores to abs 0x4000 at 0xdbad558 and 0xdbad560, and its return at 0xdbad55c has v0 unknown. The byte-to-float step that the name suggests does not show up in these facts.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad540
  **Inferred.** A leaf routine that makes two 8-byte `sdc1` stores to the fixed address 0x4000 (at 0xdbad558 and 0xdbad560) and returns at 0xdbad55c. It makes no calls. The name points at a scratch-buffer color write for a byte-sized color; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_Color3d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad600
  `__glOdyim_Color3d` is 44 bytes with no loads and no calls. It stores one word at 0xdbad614 and three floats at 0xdbad61c, 0xdbad620 and 0xdbad628, all to abs 0x4000, and returns at 0xdbad624 with v0 unknown. Role (from name): an RGB color set from three double values; the facts show float stores and do not show the source type.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_Color3d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad600
  **Inferred.** A leaf routine with one `sw` at 0xdbad614 and three `swc1` stores (0xdbad61c, 0xdbad620, 0xdbad628) to the fixed address 0x4000, then a return at 0xdbad624. It makes no calls and reads no state. The name fits a double-precision RGB color send; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad640
  `__glOdyim_ScratchColor3d` is 44 bytes and has the same store pattern as `__glOdyim_Color3d` at 0xdbad600: one word at 0xdbad654 and three floats at 0xdbad65c, 0xdbad660 and 0xdbad668, all to abs 0x4000. It returns at 0xdbad664 with v0 unknown. The facts cannot separate the scratch variant from the plain one, so the difference, if any, is not established here.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad640
  **Inferred.** A leaf routine with the same store pattern as `__glOdyim_Color3d` at 0xdbad600: one `sw` at 0xdbad654 and three `swc1` (0xdbad65c, 0xdbad660, 0xdbad668) to the fixed address 0x4000, returning at 0xdbad664. The return value is unknown. Role (from name): a scratch variant of the Color3d send; what scratch means here is not shown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad840
  `__glOdyim_ScratchColor3i` is 36 bytes with no loads and no calls. It makes two doubleword stores to abs 0x4000 at 0xdbad858 and 0xdbad860, and returns at 0xdbad85c with v0 unknown. It has the same store shape as `__glOdyim_ScratchColor3b`.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad840
  **Inferred.** A leaf routine that makes two 8-byte `sdc1` stores to the fixed address 0x4000 (0xdbad858 and 0xdbad860) and returns at 0xdbad85c. It makes no calls. The name suggests a scratch integer-color write; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad940
  `__glOdyim_ScratchColor3s` is 36 bytes with no loads and no calls. It makes two doubleword stores to abs 0x4000 at 0xdbad958 and 0xdbad960, and returns at 0xdbad95c with v0 unknown. It matches the 3i form in its store shape.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbad940
  **Inferred.** A leaf routine with the same two `sdc1` stores to the fixed address 0x4000 (0xdbad958 and 0xdbad960) and a return at 0xdbad95c, as in `__glOdyim_ScratchColor3i`. The name suggests a short-integer color write. The return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadb40
  `__glOdyim_ScratchColor3ui` is 36 bytes with no loads and no calls. It makes two doubleword stores to abs 0x4000 at 0xdbadb58 and 0xdbadb60, and returns at 0xdbadb5c with v0 unknown. Its store shape matches the 3i and 3s forms.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadb40
  **Inferred.** A leaf routine with two `sdc1` stores to the fixed address 0x4000 (0xdbadb58 and 0xdbadb60) and a return at 0xdbadb5c. It makes no calls and reads no state. The name suggests an unsigned-integer color write; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadc40
  `__glOdyim_ScratchColor3us` is 36 bytes with no loads and no calls. It makes two doubleword stores to abs 0x4000 at 0xdbadc58 and 0xdbadc60, and returns at 0xdbadc5c with v0 unknown. Its store shape matches the 3b, 3i, 3s and 3ui forms.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadc40
  **Inferred.** A leaf routine with two `sdc1` stores to the fixed address 0x4000 (0xdbadc58 and 0xdbadc60) and a return at 0xdbadc5c, the same pattern as the other ScratchColor3 entries. The name suggests an unsigned-short color write; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadd40
  `__glOdyim_ScratchColor4b` is 40 bytes with no loads and no calls. It makes one doubleword store at 0xdbadd54 and three word stores at 0xdbadd58, 0xdbadd5c and 0xdbadd64, all to abs 0x4000. It returns at 0xdbadd60 with v0 unknown. The four stores fit a four-component color, but the facts do not show the byte packing.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4dv` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbadec0
  `__glOdyim_ScratchColor4dv` is 64 bytes. It reads four doublewords from a0 at offsets 0x0, 0x8, 0x10 and 0x18, then makes one word store at 0xdbadee0 and four float stores, including 0xdbadee8, 0xdbadef0 and 0xdbadef4, all to abs 0x4000. It returns at 0xdbadef8 with v0 unknown. All of its loads come from a0 at offsets 0x0 to 0x18, which fits a four-double argument, though the facts do not give the argument type.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae040
  `__glOdyim_ScratchColor4i` is 40 bytes with no loads and no calls. It makes one doubleword store at 0xdbae054 and three word stores at 0xdbae058, 0xdbae05c and 0xdbae064, all to abs 0x4000, and returns at 0xdbae060 with v0 unknown. The store pattern matches the 4b form.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae040
  **Inferred.** A leaf routine with one 8-byte `sdc1` at 0xdbae054 and three `sw` stores (0xdbae058, 0xdbae05c, 0xdbae064) to the fixed address 0x4000, returning at 0xdbae060. It makes no calls. The name suggests a four-component integer color; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae140
  `__glOdyim_ScratchColor4s` is 40 bytes with no loads and no calls. It makes one doubleword store at 0xdbae154 and three word stores at 0xdbae158, 0xdbae15c and 0xdbae164, all to abs 0x4000, and returns at 0xdbae160 with v0 unknown. The store pattern matches the 4i and 4b forms.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae140
  **Inferred.** The same store pattern as `__glOdyim_ScratchColor4i` at 0xdbae040: one `sdc1` at 0xdbae154 and three `sw` to the fixed address 0x4000 (0xdbae158, 0xdbae15c, 0xdbae164), returning at 0xdbae160. The name suggests a four-component short color; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ub` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae240
  `__glOdyim_ScratchColor4ub` is 40 bytes with no loads and no calls. It makes one doubleword store at 0xdbae254 and three word stores at 0xdbae258, 0xdbae25c and 0xdbae264, all to abs 0x4000, and returns at 0xdbae260 with v0 unknown. The store pattern matches the 4b, 4i and 4s forms.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ub` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae240
  **Inferred.** The same store pattern as `__glOdyim_ScratchColor4i`: one `sdc1` at 0xdbae254 and three `sw` to the fixed address 0x4000 (0xdbae258, 0xdbae25c, 0xdbae264), returning at 0xdbae260. The name suggests a four-component unsigned-byte color; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae340
  `__glOdyim_ScratchColor4ui` is 40 bytes with no loads and no calls. It makes one doubleword store at 0xdbae354 and three word stores at 0xdbae358, 0xdbae35c and 0xdbae364, all to abs 0x4000, and returns at 0xdbae360 with v0 unknown. The store pattern matches the 4b, 4i, 4s and 4ub forms.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae340
  **Inferred.** The same store pattern as `__glOdyim_ScratchColor4i`: one `sdc1` at 0xdbae354 and three `sw` to the fixed address 0x4000 (0xdbae358, 0xdbae35c, 0xdbae364), returning at 0xdbae360. The name suggests a four-component unsigned-integer color; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae440
  `__glOdyim_ScratchColor4us` is 40 bytes with no loads and no calls. It makes one doubleword store at 0xdbae454 and three word stores at 0xdbae458, 0xdbae45c and 0xdbae464, all to abs 0x4000, and returns at 0xdbae460 with v0 unknown. The store pattern matches the 4b, 4i, 4s, 4ub and 4ui forms.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae440
  **Inferred.** The same store pattern as `__glOdyim_ScratchColor4i`: one `sdc1` at 0xdbae454 and three `sw` to the fixed address 0x4000 (0xdbae458, 0xdbae45c, 0xdbae464), returning at 0xdbae460. The name suggests a four-component unsigned-short color; the return value is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchIndexd` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbae540
  `__glOdyim_ScratchIndexd` is 24 bytes with no loads and no calls. Its only memory access is one doubleword store to abs 0x4000 at 0xdbae554, in the delay slot of its return at 0xdbae550. The index name suggests a single color-index double, but the facts show no conversion step.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `glColor3b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbb0000 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbb0000-0xdbb0040 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdbb0000 loads 4 bytes from abs 0x1590.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbb0004).
  The instructions from 0xdbb000c to 0xdbb003c are not reached by any path from the entry, and their branches are not listed.

- `glVertex2d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbb1500 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbb1500-0xdbb1600 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0xdbb1500 loads 4 bytes from abs 0x1530.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbb1504).
  The instructions from 0xdbb150c to 0xdbb15fc are not reached by any path from the entry, and their branches are not listed.
