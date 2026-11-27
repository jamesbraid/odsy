# Readings: `usr/gfx/arch/IP30ODSY64/libGLcore.so`

One entry per routine, filed here from the reading batches by binary.

- `ApplyParameterF` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x31f0650 (n64)
  **Inferred.** Reads up to four floats from the argument at a2 (offsets 0x0 to 0xc) and stores words through a register set to 0x10000 (29 `swc1` and 14 `sw` stores). It reads a flag byte at [0x1020]+0xde4 eleven times and calls `__glOdysseySetProgram` at 0x31f091c with a0 = the word at absolute 0x1020; the routine continues with more stores after that call. The parameter code in a1 is compared against 0x1600, 0x1601 and 0x1201 and its meaning is not decided from these facts. The role of the routine is not confirmed from these facts.
  Reviewed: 2026-11-12

- `ApplyParameterI` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x31f0d30 (n64)
  **Inferred.** Has a similar shape to `ApplyParameterF`; the pairing is read from the names, not from a shared code path. It reads integer words from the argument at a2 (offsets 0x0, 0x4, 0x8 and 0xc) and stores words through a register set to 0x10000 (33 `sw` and 25 `swc1` stores), with one further `sw` and one `swc1` elsewhere. It reads a flag byte at [0x1020]+0xde4 and a float at offset 0xf44 from a base the facts do not name, then calls `__glOdysseySetProgram` at 0x31f109c with a0 = the word at absolute 0x1020, a2 and a3 passed through; more code follows that call.
  Reviewed: 2026-11-12

- `DrawBitmapUsingPolyStipple` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x31f40d0 (n64)
  **Inferred.** Calls `__glOdysseyUpdateRasterPos` at 0x31f4204 and `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` at 0x31f4210, then `__glOdysseyGetNumHWClipPlanes` at 0x31f43c0, `__glOdysseyValidateHardware` at 0x31f4494 and `LoadAndSendStippledQuads` at 0x31f44bc. It makes 95 `sw` stores through a register set to 0x10000 (125 `sw` stores in all). Later it calls unresolved callees at 0x31f4868, 0x31f4890 and 0x31f48b8 with a0 = 0x1701, 0x1700 and 0x1702, which this read does not interpret, calls `__glSetError` at 0x31f48ec, and calls `__glOdysseyIoctl` at 0x31f4958 with a1 = 0x6f64000d. Which of these later calls run depends on branches that are not traced, and the stipple data path is not traced. The role of the routine is not confirmed from these facts.
  Reviewed: 2026-11-12

- `Store` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x31f8400 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x31f8400-0x31f849c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x31f8400 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0x31f8410 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0x31f8418 loads 4 bytes from [a0]:8 +0x7cc.
  The `lwc1` at 0x31f841c loads 4 bytes from [a0]:8 +0x7c8.
  The `lw` at 0x31f8428 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x31f842c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x31f8430 loads 4 bytes from [a0]:8 +0xf28.
  The `lwc1` at 0x31f8438 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0x31f843c loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x31f845c loads 4 bytes from [a0]:8 +0xfb0.
  The `jalr` at 0x31f8484 calls fprintf with a0=sym(__iob)+64, a1=0x337c000, a2=?, a3=?, a6=[[a0]:8+4020], a7=0x19eab8.
  The return at 0x31f8494 has v0 = ret(fprintf).

- `Pick` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x31f84a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x31f84a0-0x31f84a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x31f84a0 has v0 = ?.

- `Fetch` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x31f84b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x31f84b0-0x31f84b8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x31f84b0 has v0 = ?.

- `StoreStippledSpan` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x31f84c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x31f84c0-0x31f85f8 (312 bytes).
  It occupies 312 bytes.
  The `ld` at 0x31f84e0 loads 8 bytes from a0 (arg0 at entry) +0x9830.
  The `lw` at 0x31f84e8 loads 4 bytes from a0 (arg0 at entry) +0x9710.
  The `lw` at 0x31f84ec loads 4 bytes from a0 (arg0 at entry) +0x9740.
  The `ld` at 0x31f84f8 loads 8 bytes from a0 (arg0 at entry) +0x9840.
  The `ld` at 0x31f8500 loads 8 bytes from a0 (arg0 at entry) +0x9820.
  The `lw` at 0x31f850c loads 4 bytes from a0 (arg0 at entry) +0x970c.
  The `lw` at 0x31f8554 loads 4 bytes from ?.
  The `lwc1` at 0x31f857c loads 4 bytes from ?.
  The `ld` at 0x31f8584 loads 8 bytes from [a0+38976]:8 +0xe0.
  The `jalr` at 0x31f858c calls (unknown callee) with a0=[a0+38976]:8, a1=sp-160, a2=?, a3=?.
  The `beq` branch at 0x31f8508 targets 0x31f85d4, is taken when s7(=[a0+38720]) == 0, and falls through when s7(=[a0+38720]) != 0.
  The `bltz` branch at 0x31f8558 targets 0x31f85bc, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `beq` branch at 0x31f8570 targets 0x31f8594, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x31f85a4 targets 0x31f8570, is taken when s4(?) != s6(=-0x1), and falls through when s4(?) == s6(=-0x1).
  The `bne` branch at 0x31f85bc targets 0x31f8530, is taken when s7(?) != 0, and falls through when s7(?) == 0.
  The return at 0x31f85f0 has v0 = 0x0.

- `StoreSpan` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x31f8600 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x31f8600-0x31f86ac (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0x31f8618 loads 4 bytes from a0 (arg0 at entry) +0x9740.
  The `lw` at 0x31f861c loads 4 bytes from a0 (arg0 at entry) +0x9710.
  The `lw` at 0x31f8624 loads 4 bytes from a0 (arg0 at entry) +0x970c.
  The `ld` at 0x31f8644 loads 8 bytes from a0 (arg0 at entry) +0x9840.
  The `ld` at 0x31f864c loads 8 bytes from a0 (arg0 at entry) +0x9820.
  The `lwc1` at 0x31f8664 loads 4 bytes from ?.
  The `ld` at 0x31f866c loads 8 bytes from [a0+38976]:8 +0xe0.
  The `jalr` at 0x31f8678 calls (unknown callee) with a0=[a0+38976]:8, a1=sp-112, a2=?, a3=?.
  The `beq` branch at 0x31f8648 targets 0x31f868c, is taken when s0(=[a0+38668]) >= s3(=([a0+38668] + [a0+38720])) (signed), and falls through when s0(=[a0+38668]) < s3(=([a0+38668] + [a0+38720])) (signed).
  The `bne` branch at 0x31f8684 targets 0x31f8660, is taken when s3(=([a0+38668] + [a0+38720])) != s0(?), and falls through when s3(=([a0+38668] + [a0+38720])) == s0(?).
  The return at 0x31f86a4 has v0 = 0x0.

- `ApplyScissor` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x31fa2a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x31fa2a0-0x31fa448 (424 bytes).
  It occupies 424 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xfb4, including `lw` at 0x31fa2a0, `lw` at 0x31fa3e0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xfb0, including `lw` at 0x31fa2a8, `lw` at 0x31fa388.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x94f8, including `lw` at 0x31fa2b8, `lw` at 0x31fa34c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9500, including `lw` at 0x31fa2c4, `lw` at 0x31fa358.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9504, including `lw` at 0x31fa2cc, `lw` at 0x31fa3bc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x94fc, including `lw` at 0x31fa2ec, `lw` at 0x31fa3d0.
  The `sw` at 0x31fa31c stores 4 bytes to a0 (arg0 at entry) +0x18a30.
  The `sw` at 0x31fa32c stores 4 bytes to a0 (arg0 at entry) +0x18a2c.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x18a34, including `sb` at 0x31fa340, `sb` at 0x31fa444.
  The `lw` at 0x31fa344 loads 4 bytes from a0 (arg0 at entry) +0x9508.
  The `lw` at 0x31fa360 loads 4 bytes from a0 (arg0 at entry) +0x9510.
  The `swc1` at 0x31fa368 stores 4 bytes to a0 (arg0 at entry) +0x141c8.
  The `swc1` at 0x31fa370 stores 4 bytes to a0 (arg0 at entry) +0x141c0.
  The `swc1` at 0x31fa374 stores 4 bytes to a0 (arg0 at entry) +0x141c4.
  The `swc1` at 0x31fa37c stores 4 bytes to a0 (arg0 at entry) +0x141cc.
  The `lw` at 0x31fa39c loads 4 bytes from a0 (arg0 at entry) +0x18e58.
  The `lw` at 0x31fa3a8 loads 4 bytes from a0 (arg0 at entry) +0x9514.
  The `lw` at 0x31fa3c4 loads 4 bytes from a0 (arg0 at entry) +0x950c.
  The `sw` at 0x31fa414 stores 4 bytes to a0 (arg0 at entry) +0x18e58.
  The `sw` at 0x31fa420 stores 4 bytes to a0 (arg0 at entry) +0x18a24.
  The `sw` at 0x31fa430 stores 4 bytes to a0 (arg0 at entry) +0x18a28.
  The `sw` at 0x31fa43c stores 4 bytes to abs 0x1030.
  The `bne` branch at 0x31fa328 targets 0x31fa33c, is taken when a6(?) < a7(?) (signed), and falls through when a6(?) >= a7(?) (signed).
  The `beq` branch at 0x31fa334 targets 0x31fa440, is taken when a3(?) >= a2(?) (signed), and falls through when a3(?) < a2(?) (signed).
  The `beq` branch at 0x31fa440 targets 0x31fa344 and is always taken.
  The return at 0x31fa438 has v0 = ?.

- `LoseCurrent` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x32002f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x32002f0-0x3200494 (420 bytes).
  It occupies 420 bytes.
  The `lw` at 0x32002f4 loads 4 bytes from a0 (arg0 at entry) +0xdd4.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0x3200318, `lw` at 0x3200338.
  The `sw` at 0x3200340 stores 4 bytes to a0 (arg0 at entry) +0xdd0.
  The `sd` at 0x320034c stores 8 bytes to abs 0x1020.
  The `ld` at 0x3200350 loads 8 bytes from a0 (arg0 at entry) +0x1ad8.
  9 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3200384, `ld` at 0x32003ac, `ld` at 0x32003c0.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x3200390, `sd` at 0x32003b4, `sd` at 0x32003c8.
  The `lw` at 0x3200448 loads 4 bytes from a0 (arg0 at entry) +0x1540.
  The `lw` at 0x3200454 loads 4 bytes from abs 0x1048.
  The `sw` at 0x3200458 stores 4 bytes to a0 (arg0 at entry) +0x15b8.
  The `ld` at 0x320045c loads 8 bytes from abs 0x1050.
  The `sd` at 0x3200460 stores 8 bytes to a0 (arg0 at entry) +0x15c0.
  The `ld` at 0x3200464 loads 8 bytes from abs 0x1058.
  The `sd` at 0x3200468 stores 8 bytes to a0 (arg0 at entry) +0x15c8.
  The `lw` at 0x320046c loads 4 bytes from abs 0x1060.
  The `sw` at 0x3200470 stores 4 bytes to a0 (arg0 at entry) +0x15d0.
  The `jalr` at 0x320032c calls __glLoseCurrentBuffers [0x32ca6b0] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x3200348 calls FastDispatchInstall [0x31fb8e0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x3200310 targets 0x3200480, is taken when v0(=[a0+3540]) != v1(=0x1c00), and falls through when v0(=[a0+3540]) == v1(=0x1c00).
  The `beq` branch at 0x3200320 targets 0x3200480, is taken when v0(=[0x1030]) == v1(=0x1), and falls through when v0(=[0x1030]) != v1(=0x1).
  The `beq` branch at 0x320036c targets 0x3200448, is taken when a4(=[a0+6872]:8) == at(=a0+10656), and falls through when a4(=[a0+6872]:8) != at(=a0+10656).
  The `bne` branch at 0x320038c targets 0x3200374, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bgtz` branch at 0x3200440 targets 0x32003a0, is taken when a3(?) > 0 (signed), and falls through when a3(?) <= 0 (signed).
  The `beq` branch at 0x320044c targets 0x3200474, is taken when a1(=[a0+5440]) == 0, and falls through when a1(=[a0+5440]) != 0.
  The return at 0x3200478 has v0 = 0x1.
  The return at 0x320048c has v0 = 0x0.

- `PreEvaluate` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x320a440 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x320a440-0x320a5d4 (404 bytes).
  It occupies 404 bytes.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0x320a468, `swc1` at 0x320a598, `swc1` at 0x320a5c0.
  6 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0x320a474, `swc1` at 0x320a544, `swc1` at 0x320a554.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x320a498, `lwc1` at 0x320a4c0, `lwc1` at 0x320a4c4.
  6 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x320a4b0, `swc1` at 0x320a4f0, `swc1` at 0x320a4f4.
  The `lwc1` at 0x320a52c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `swc1` at 0x320a57c stores 4 bytes to a2 (arg2 at entry) +0xc.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0x320a590, `swc1` at 0x320a5ac.
  The `beq` branch at 0x320a444 targets 0x320a560, is taken when a0 == at(=0x4), and falls through when a0 != at(=0x4).
  The `beq` branch at 0x320a450 targets 0x320a59c, is taken when a0 == v0(=0x3), and falls through when a0 != v0(=0x3).
  The `beq` branch at 0x320a458 targets 0x320a5c4, is taken when a0 == v1(=0x2), and falls through when a0 != v1(=0x2).
  The `beq` branch at 0x320a460 targets 0x320a550, is taken when a0 == a1(=0x1), and falls through when a0 != a1(=0x1).
  The `bne` branch at 0x320a470 targets 0x320a558, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x320a484 targets 0x320a528 and is always taken.
  The `beq` branch at 0x320a490 targets 0x320a4b4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x320a4ac targets 0x320a498, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x320a4b8 targets 0x320a508, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x320a500 targets 0x320a4c0, is taken when a3(?) != a4(?), and falls through when a3(?) == a4(?).
  The `beq` branch at 0x320a520 targets 0x320a558, is taken when a0 == a5(?), and falls through when a0 != a5(?).
  The `beq` branch at 0x320a540 targets 0x320a490, is taken when a5(?) >= 0x2 (signed), and falls through when a5(?) < 0x2 (signed).
  The `beq` branch at 0x320a548 targets 0x320a50c and is always taken.
  The return at 0x320a550 has v0 = 0x3.
  The return at 0x320a558 has v0 = 0x3.
  The return at 0x320a594 has v0 = ?.
  The return at 0x320a5bc has v0 = 0x3.
  The return at 0x320a5cc has v0 = 0x3.
  The instructions from 0x320a48c to 0x320a48c are not reached by any path from the entry, and their branches are not listed.

- `PreEvaluateWithDeriv` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x320a5e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x320a5e0-0x320a940 (864 bytes).
  It occupies 864 bytes.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0x320a60c, `swc1` at 0x320a8c8, `swc1` at 0x320a908.
  7 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0x320a614, `swc1` at 0x320a6f4, `swc1` at 0x320a7c8.
  15 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x320a648, `lwc1` at 0x320a670, `lwc1` at 0x320a674.
  15 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x320a660, `swc1` at 0x320a6a0, `swc1` at 0x320a6a4.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0x320a6dc, `lwc1` at 0x320a704, `lwc1` at 0x320a73c.
  5 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `swc1` at 0x320a730, `swc1` at 0x320a888, `swc1` at 0x320a8e0.
  The `lwc1` at 0x320a740 loads 4 bytes from a2 (arg2 at entry) +0x4.
  4 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `swc1` at 0x320a750, `swc1` at 0x320a8d8, `swc1` at 0x320a918.
  The `swc1` at 0x320a8b4 stores 4 bytes to a2 (arg2 at entry) +0xc.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0x320a8c4, `swc1` at 0x320a8f4.
  The `swc1` at 0x320a8cc stores 4 bytes to a3 (arg3 at entry) +0xc.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x8, including `swc1` at 0x320a8d0, `swc1` at 0x320a910.
  The `beq` branch at 0x320a5e4 targets 0x320a88c, is taken when a0 == at(=0x4), and falls through when a0 != at(=0x4).
  The `beq` branch at 0x320a5f0 targets 0x320a8e4, is taken when a0 == v0(=0x3), and falls through when a0 != v0(=0x3).
  The `beq` branch at 0x320a5f8 targets 0x320a924, is taken when a0 == v1(=0x2), and falls through when a0 != v1(=0x2).
  The `beq` branch at 0x320a600 targets 0x320a87c, is taken when a0 == a1(=0x1), and falls through when a0 != a1(=0x1).
  The `bne` branch at 0x320a618 targets 0x320a874, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x320a62c targets 0x320a6d8 and is always taken.
  The `beq` branch at 0x320a640 targets 0x320a664, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x320a65c targets 0x320a648, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x320a668 targets 0x320a6b8, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x320a6b0 targets 0x320a670, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `beq` branch at 0x320a6d0 targets 0x320a700, is taken when t1(=a0-1) == a6(?), and falls through when t1(=a0-1) != a6(?).
  The `beq` branch at 0x320a6f0 targets 0x320a640, is taken when a6(?) >= 0x2 (signed), and falls through when a6(?) < 0x2 (signed).
  The `beq` branch at 0x320a6f8 targets 0x320a6bc and is always taken.
  The `beq` branch at 0x320a734 targets 0x320a754, is taken when (t0(?) & 0x1) == 0, and falls through when (t0(?) & 0x1) != 0.
  The `beq` branch at 0x320a758 targets 0x320a7a4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x320a798 targets 0x320a770, is taken when a4(?) < a5(=((a0-1 << 0x2) + a2)) (unsigned), and falls through when a4(?) >= a5(=((a0-1 << 0x2) + a2)) (unsigned).
  The `bne` branch at 0x320a7c4 targets 0x320a86c, is taken when a6(?) < 0x2 (signed), and falls through when a6(?) >= 0x2 (signed).
  The `beq` branch at 0x320a7dc targets 0x320a800, is taken when (a3(?) & 0x3) == 0, and falls through when (a3(?) & 0x3) != 0.
  The `bne` branch at 0x320a7f8 targets 0x320a7e4, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x320a804 targets 0x320a858, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x320a850 targets 0x320a810, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `beq` branch at 0x320a86c targets 0x320a85c and is always taken.
  The `beq` branch at 0x320a874 targets 0x320a708 and is always taken.
  The return at 0x320a864 has v0 = ?.
  The return at 0x320a884 has v0 = 0x3.
  The return at 0x320a8dc has v0 = ?.
  The return at 0x320a91c has v0 = 0x3.
  The return at 0x320a938 has v0 = 0x3.
  The instructions from 0x320a634 to 0x320a63c are not reached by any path from the entry, and their branches are not listed.

- `DoDomain1` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x320a940 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x320a940-0x320aee4 (1444 bytes).
  It occupies 1444 bytes.
  The `lwc1` at 0x320a940 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0x320a944 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x320a970 loads 4 bytes from a0 (arg0 at entry) +0x438.
  6 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x320a974, `lw` at 0x320a9b8, `lw` at 0x320a9c8.
  The `lw` at 0x320a98c loads 4 bytes from a0 (arg0 at entry) +0x6c0.
  The `sw` at 0x320a9b4 stores 4 bytes to a0 (arg0 at entry) +0x6c8.
  The `sw` at 0x320a9c0 stores 4 bytes to a0 (arg0 at entry) +0x6c0.
  The `swc1` at 0x320a9c4 stores 4 bytes to a0 (arg0 at entry) +0x438.
  The `lw` at 0x320a9d4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  20 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x320aa20, `swc1` at 0x320aa44, `swc1` at 0x320aa6c.
  51 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x320aa38, `lwc1` at 0x320aa3c, `lwc1` at 0x320aa60.
  15 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x444, including `lwc1` at 0x320aaec, `lwc1` at 0x320ab54, `lwc1` at 0x320ab88.
  18 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x440, including `lwc1` at 0x320aaf4, `lwc1` at 0x320ab5c, `lwc1` at 0x320ab90.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x448, including `lwc1` at 0x320aaf8, `lwc1` at 0x320ab60, `lwc1` at 0x320ab94.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x44c, including `lwc1` at 0x320ab08, `lwc1` at 0x320ab70, `lwc1` at 0x320aba4.
  The `lwc1` at 0x320ae8c loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `swc1` at 0x320aea0 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `bgezall` at 0x320a9a4 calls PreEvaluate [0x320a440] with a0=[a2+4], a1=a1 at entry (arg1), a2=a0+1088, a3=a3 at entry (arg3).
  The `bc1t` branch at 0x320a95c targets 0x320aa98, is taken when f5(=[a2+8]) == f4(=[a2+12]) (c.eq.s at 0x320a948), and falls through when not (f5(=[a2+8]) == f4(=[a2+12]) (c.eq.s at 0x320a948)).
  The `bc1f` branch at 0x320a984 targets 0x320a994, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0x320a990 targets 0x320a9cc, is taken when at(=[a0+1728]) == a0(=[a2+4]), and falls through when at(=[a0+1728]) != a0(=[a2+4]).
  The `beq` branch at 0x320a9d0 targets 0x320aaa8, is taken when a0(=[a2+4]) == v1(=0x4), and falls through when a0(=[a2+4]) != v1(=0x4).
  The `beq` branch at 0x320a9dc targets 0x320ac40, is taken when a0(=[a2+4]) == a1(=0x3), and falls through when a0(=[a2+4]) != a1(=0x3).
  The `beq` branch at 0x320a9e4 targets 0x320ad7c, is taken when a0(=[a2+4]) == a2(=0x2), and falls through when a0(=[a2+4]) != a2(=0x2).
  The `beq` branch at 0x320a9ec targets 0x320ae68, is taken when a0(=[a2+4]) == a3(=0x1), and falls through when a0(=[a2+4]) != a3(=0x1).
  The `blez` branch at 0x320a9f4 targets 0x320aa98, is taken when a5(=[a2]) <= 0 (signed), and falls through when a5(=[a2]) > 0 (signed).
  The `blez` branch at 0x320aa28 targets 0x320aa88, is taken when a1(=[a2+4]) <= 0 (signed), and falls through when a1(=[a2+4]) > 0 (signed).
  The `beq` branch at 0x320aa58 targets 0x320aa88, is taken when a4(?) >= t0(=[a2+4]) (signed), and falls through when a4(?) < t0(=[a2+4]) (signed).
  The `bne` branch at 0x320aa80 targets 0x320aa38, is taken when a4(?) < t1(=[a2+4]) (signed), and falls through when a4(?) >= t1(=[a2+4]) (signed).
  The `bne` branch at 0x320aa90 targets 0x320aa20, is taken when a7(?) != a0(=(([a2] << 0x2) + a4)), and falls through when a7(?) == a0(=(([a2] << 0x2) + a4)).
  The `blez` branch at 0x320aaa8 targets 0x320aa98, is taken when a5(=[a2]) <= 0 (signed), and falls through when a5(=[a2]) > 0 (signed).
  The `beq` branch at 0x320aae0 targets 0x320ab38, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x320ab30 targets 0x320aae8, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x320ab3c targets 0x320ac38, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x320ac30 targets 0x320ab50, is taken when a4(?) != a0(=((([a2] << 0x2) + a4) + ([a2] << 0x2))), and falls through when a4(?) == a0(=((([a2] << 0x2) + a4) + ([a2] << 0x2))).
  The `beq` branch at 0x320ac38 targets 0x320aa9c and is always taken.
  The `blez` branch at 0x320ac40 targets 0x320aa9c, is taken when a5(=[a2]) <= 0 (signed), and falls through when a5(=[a2]) > 0 (signed).
  The `beq` branch at 0x320ac6c targets 0x320acb4, is taken when (a5(=[a2]) & 0x3) == 0, and falls through when (a5(=[a2]) & 0x3) != 0.
  The `bne` branch at 0x320acac targets 0x320ac74, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x320acb8 targets 0x320ad74, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x320ad6c targets 0x320acc0, is taken when a4(?) != a0(=((([a2] << 0x2) + a4) + ([a2] << 0x2))), and falls through when a4(?) == a0(=((([a2] << 0x2) + a4) + ([a2] << 0x2))).
  The `beq` branch at 0x320ad74 targets 0x320aa9c and is always taken.
  The `blez` branch at 0x320ad7c targets 0x320aa98, is taken when a5(=[a2]) <= 0 (signed), and falls through when a5(=[a2]) > 0 (signed).
  The `beq` branch at 0x320ad94 targets 0x320adcc, is taken when (a5(=[a2]) & 0x3) == 0, and falls through when (a5(=[a2]) & 0x3) != 0.
  The `bne` branch at 0x320adc4 targets 0x320ad9c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x320add0 targets 0x320ae60, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x320ae58 targets 0x320ade0, is taken when a4(?) != a0(=((([a2] << 0x2) + a4) + ([a2] << 0x2))), and falls through when a4(?) == a0(=((([a2] << 0x2) + a4) + ([a2] << 0x2))).
  The `beq` branch at 0x320ae60 targets 0x320aa9c and is always taken.
  The `blez` branch at 0x320ae68 targets 0x320aa98, is taken when a5(=[a2]) <= 0 (signed), and falls through when a5(=[a2]) > 0 (signed).
  The `beq` branch at 0x320ae80 targets 0x320aea4, is taken when (a5(=[a2]) & 0x1) == 0, and falls through when (a5(=[a2]) & 0x1) != 0.
  The `beq` branch at 0x320aea8 targets 0x320aedc, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x320aed4 targets 0x320aeb0, is taken when a7(?) != a0(=(([a2] << 0x2) + a4)), and falls through when a7(?) == a0(=(([a2] << 0x2) + a4)).
  The `beq` branch at 0x320aedc targets 0x320aa9c and is always taken.
  The return at 0x320aaa0 has v0 = ?.

- `DoEvalCoord1` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x320b230 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x320b230-0x320b5e4 (948 bytes).
  It occupies 948 bytes.
  9 such `ld` accesses load 8 bytes from ?, including `ld` at 0x320b274, `ld` at 0x320b29c, `ld` at 0x320b2b0.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x320b280, `sd` at 0x320b2a4, `sd` at 0x320b2b8.
  The `lbu` at 0x320b338 loads 1 byte from a0 (arg0 at entry) +0xde5.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x818, including `lw` at 0x320b33c, `lw` at 0x320b38c, `lw` at 0x320b3d4.
  The `ld` at 0x320b36c loads 8 bytes from a0 (arg0 at entry) +0x90a8.
  9 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x1ad8, including `ld` at 0x320b37c, `ld` at 0x320b3c4, `ld` at 0x320b400.
  The `ld` at 0x320b380 loads 8 bytes from [a0+6872]:8 +0xc28.
  The `ld` at 0x320b3b4 loads 8 bytes from a0 (arg0 at entry) +0x90d0.
  4 such `ld` accesses load 8 bytes from [a0+6872]:8 +0xd88, including `ld` at 0x320b3c8, `ld` at 0x320b4dc, `ld` at 0x320b52c.
  The `ld` at 0x320b3f0 loads 8 bytes from a0 (arg0 at entry) +0x90b0.
  The `ld` at 0x320b404 loads 8 bytes from [a0+6872]:8 +0xc88.
  The `ld` at 0x320b42c loads 8 bytes from a0 (arg0 at entry) +0x90e0.
  The `ld` at 0x320b440 loads 8 bytes from [a0+6872]:8 +0xae8.
  The `ld` at 0x320b46c loads 8 bytes from a0 (arg0 at entry) +0x90d8.
  The `ld` at 0x320b480 loads 8 bytes from [a0+6872]:8 +0xaa8.
  The `ld` at 0x320b4c0 loads 8 bytes from a0 (arg0 at entry) +0x90c8.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf2c, including `lwc1` at 0x320b4d0, `lwc1` at 0x320b520, `lwc1` at 0x320b5c4.
  The `ld` at 0x320b508 loads 8 bytes from a0 (arg0 at entry) +0x90c0.
  The `ld` at 0x320b564 loads 8 bytes from a0 (arg0 at entry) +0x90a0.
  The `ld` at 0x320b578 loads 8 bytes from [a0+6872]:8 +0xbb8.
  The `ld` at 0x320b5a8 loads 8 bytes from a0 (arg0 at entry) +0x90b8.
  The `bgezall` at 0x320b374 calls DoDomain1 [0x320a940] with a0=sp-1856, a1=0x320a940, a2=a0+36336, a3=sp-112, a4=[a0+37032]:8, a5=sp-1856.
  The `jalr` at 0x320b384 calls (unknown callee) with a0=sp-112, a1=?, a2=?, a3=?.
  The `bgezall` at 0x320b3bc calls DoDomain1 [0x320a940] with a0=sp-1856, a1=?, a2=a0+36496, a3=sp-96, a4=[a0+37072]:8.
  The `jalr` at 0x320b3cc calls (unknown callee) with a0=sp-96, a1=?, a2=?, a3=?.
  The `bgezall` at 0x320b3f8 calls DoDomain1 [0x320a940] with a0=sp-1856, a1=?, a2=a0+36368, a3=sp-80, a4=[a0+37040]:8.
  The `jalr` at 0x320b408 calls (unknown callee) with a0=sp-80, a1=?, a2=?, a3=?.
  The `bgezall` at 0x320b434 calls DoDomain1 [0x320a940] with a0=sp-1856, a1=?, a2=a0+36560, a3=sp-64, a4=[a0+37088]:8.
  The `jalr` at 0x320b444 calls (unknown callee) with a0=sp-64, a1=?, a2=?, a3=?.
  The `bgezall` at 0x320b474 calls DoDomain1 [0x320a940] with a0=sp-1856, a1=?, a2=a0+36528, a3=sp-64, a4=[a0+37080]:8.
  The `jalr` at 0x320b484 calls (unknown callee) with a0=sp-64, a1=?, a2=?, a3=?.
  The `bgezall` at 0x320b4c8 calls DoDomain1 [0x320a940] with a0=sp-1856, a1=?, a2=a0+36464, a3=sp-96, a4=[a0+37064]:8.
  The `jalr` at 0x320b4e0 calls (unknown callee) with a0=sp-96, a1=?, a2=?, a3=?.
  The `bgezall` at 0x320b510 calls DoDomain1 [0x320a940] with a0=sp-1856, a1=?, a2=a0+36432, a3=sp-96, a4=[a0+37056]:8.
  The `jalr` at 0x320b530 calls (unknown callee) with a0=sp-96, a1=?, a2=?, a3=?.
  The `bgezall` at 0x320b56c calls DoDomain1 [0x320a940] with a0=sp-1856, a1=?, a2=a0+36304, a3=sp-112, a4=[a0+37024]:8, a5=sp-1856.
  The `jalr` at 0x320b57c calls (unknown callee) with a0=sp-112, a1=?, a2=?, a3=?.
  The `bgezall` at 0x320b5b0 calls DoDomain1 [0x320a940] with a0=sp-1856, a1=?, a2=a0+36400, a3=sp-96, a4=[a0+37048]:8.
  The `jalr` at 0x320b5d4 calls (unknown callee) with a0=sp-96, a1=?, a2=?, a3=?.
  The `bne` branch at 0x320b27c targets 0x320b264, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bgtz` branch at 0x320b330 targets 0x320b290, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `beq` branch at 0x320b344 targets 0x320b540, is taken when v0(=[a0+3557]:1) == 0, and falls through when v0(=[a0+3557]:1) != 0.
  The `beq` branch at 0x320b350 targets 0x320b390, is taken when (a0(=[a0+2072]) & 0x2) == 0, and falls through when (a0(=[a0+2072]) & 0x2) != 0.
  The `beq` branch at 0x320b39c targets 0x320b4a8, is taken when (a0(=[a0+2072]) & 0x40) == 0, and falls through when (a0(=[a0+2072]) & 0x40) != 0.
  The `beq` branch at 0x320b3dc targets 0x320b414, is taken when (a0(=[a0+2072]) & 0x4) == 0, and falls through when (a0(=[a0+2072]) & 0x4) != 0.
  The `beq` branch at 0x320b418 targets 0x320b454, is taken when (a0(=[a0+2072]) & 0x100) == 0, and falls through when (a0(=[a0+2072]) & 0x100) != 0.
  The `beq` branch at 0x320b44c targets 0x320b490 and is always taken.
  The `beq` branch at 0x320b458 targets 0x320b48c, is taken when (a0(=[a0+2072]) & 0x80) == 0, and falls through when (a0(=[a0+2072]) & 0x80) != 0.
  The `beq` branch at 0x320b4a8 targets 0x320b4f0, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x320b4e8 targets 0x320b3d8 and is always taken.
  The `beq` branch at 0x320b4f4 targets 0x320b594, is taken when (a0(=[a0+2072]) & 0x10) == 0, and falls through when (a0(=[a0+2072]) & 0x10) != 0.
  The `beq` branch at 0x320b538 targets 0x320b3d8 and is always taken.
  The `beq` branch at 0x320b544 targets 0x320b58c, is taken when (a0(=[a0+2072]) & 0x1) == 0, and falls through when (a0(=[a0+2072]) & 0x1) != 0.
  The `beq` branch at 0x320b58c targets 0x320b398 and is always taken.
  The `beq` branch at 0x320b594 targets 0x320b3d8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x320b5dc targets 0x320b3d8 and is always taken.
  The return at 0x320b4a0 has v0 = one of ret(?), ?.

- `DoDomain2` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x320b780 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x320b780-0x320d770 (8176 bytes).
  It occupies 8176 bytes.
  The `lwc1` at 0x320b78c loads 4 bytes from a3 (arg3 at entry) +0x10.
  The `lwc1` at 0x320b790 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0x320b7c0 loads 4 bytes from a3 (arg3 at entry) +0x14.
  The `lwc1` at 0x320b7c4 loads 4 bytes from a3 (arg3 at entry) +0x18.
  The `lwc1` at 0x320b7ec loads 4 bytes from a0 (arg0 at entry) +0x438.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0x320b7f0, `lw` at 0x320b834, `lw` at 0x320b88c.
  The `lw` at 0x320b80c loads 4 bytes from a0 (arg0 at entry) +0x6c0.
  The `sw` at 0x320b830 stores 4 bytes to a0 (arg0 at entry) +0x6c8.
  The `sw` at 0x320b83c stores 4 bytes to a0 (arg0 at entry) +0x6c0.
  The `swc1` at 0x320b840 stores 4 bytes to a0 (arg0 at entry) +0x438.
  The `lwc1` at 0x320b848 loads 4 bytes from a0 (arg0 at entry) +0x43c.
  17 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x320b854, `lw` at 0x320b87c, `lw` at 0x320b900.
  The `lw` at 0x320b860 loads 4 bytes from a0 (arg0 at entry) +0x6c4.
  The `sw` at 0x320b878 stores 4 bytes to a0 (arg0 at entry) +0x6cc.
  The `sw` at 0x320b884 stores 4 bytes to a0 (arg0 at entry) +0x6c4.
  The `swc1` at 0x320b888 stores 4 bytes to a0 (arg0 at entry) +0x43c.
  The `lw` at 0x320b898 loads 4 bytes from a3 (arg3 at entry) +0x0.
  84 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x320b8e0, `swc1` at 0x320b9b4, `swc1` at 0x320bbb4.
  267 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x320b934, `lwc1` at 0x320b938, `lwc1` at 0x320b960.
  29 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x444, including `lwc1` at 0x320bbac, `lwc1` at 0x320beac, `lwc1` at 0x320c19c.
  16 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x448, including `lwc1` at 0x320bc5c, `lwc1` at 0x320bf5c, `lwc1` at 0x320c3b8.
  7 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x44c, including `lwc1` at 0x320bd0c, `lwc1` at 0x320c3fc, `lwc1` at 0x320c6b4.
  46 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x440, including `lwc1` at 0x320bdcc, `lwc1` at 0x320c01c, `lwc1` at 0x320c0ec.
  54 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e4, including `lwc1` at 0x320c314, `lwc1` at 0x320c354, `lwc1` at 0x320c390.
  88 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e0, including `lwc1` at 0x320c31c, `lwc1` at 0x320c350, `lwc1` at 0x320c38c.
  30 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e8, including `lwc1` at 0x320c320, `lwc1` at 0x320c35c, `lwc1` at 0x320c398.
  12 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4ec, including `lwc1` at 0x320c330, `lwc1` at 0x320c36c, `lwc1` at 0x320c3a8.
  6 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + a5) +0x0, including `lwc1` at 0x320ca44, `lwc1` at 0x320cb8c, `lwc1` at 0x320cd4c.
  7 such `lwc1` accesses load 4 bytes from a5 (arg5 at entry) +0x0, including `lwc1` at 0x320ca50, `lwc1` at 0x320cb98, `lwc1` at 0x320cd58.
  4 such `lwc1` accesses load 4 bytes from ((([a3] + [a3]) << 0x2) + a5) +0x0, including `lwc1` at 0x320ca5c, `lwc1` at 0x320cba4, `lwc1` at 0x320cd7c.
  2 such `lwc1` accesses load 4 bytes from (a5 + ((([a3] + [a3]) + [a3]) << 0x2)) +0x0, including `lwc1` at 0x320ca64, `lwc1` at 0x320cbc4.
  16 such `swc1` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `swc1` at 0x320ca94, `swc1` at 0x320cbb8, `swc1` at 0x320cc08.
  The `lwc1` at 0x320cbbc loads 4 bytes from ((a5 + ((([a3] + [a3]) + [a3]) << 0x2)) + ([a3] << 0x2)) +0x0.
  The `lwc1` at 0x320cbd4 loads 4 bytes from ((a5 + ((([a3] + [a3]) + [a3]) << 0x2)) + (([a3] + [a3]) << 0x2)) +0x0.
  2 such `lwc1` accesses load 4 bytes from (((([a3] + [a3]) << 0x2) + a5) + ([a3] << 0x2)) +0x0, including `lwc1` at 0x320cd74, `lwc1` at 0x320d390.
  The `lwc1` at 0x320cd98 loads 4 bytes from ((((([a3] + [a3]) << 0x2) + a5) + (([a3] + [a3]) << 0x2)) + ([a3] << 0x2)) +0x0.
  The `lwc1` at 0x320cda0 loads 4 bytes from (((([a3] + [a3]) << 0x2) + a5) + (([a3] + [a3]) << 0x2)) +0x0.
  2 such `lwc1` accesses load 4 bytes from ((([a3] << 0x2) + a5) + ([a3] << 0x2)) +0x0, including `lwc1` at 0x320cf54, `lwc1` at 0x320d0ec.
  The `lwc1` at 0x320cf6c loads 4 bytes from (((([a3] << 0x2) + a5) + ([a3] << 0x2)) + ([a3] << 0x2)) +0x0.
  The `bgezall` at 0x320b824 calls PreEvaluate [0x320a440] with a0=[a3+4], a1=a1 at entry (arg1), a2=a0+1088, a3=a3 at entry (arg3).
  The `bgezall` at 0x320b86c calls PreEvaluate [0x320a440] with a0=[a3+8], a1=?, a2=a0+1248, a3=?.
  The `bc1t` branch at 0x320b7b8 targets 0x320b9d8, is taken when f4(=[a3+12]) == f5(=[a3+16]) (c.eq.s at 0x320b7a0), and falls through when not (f4(=[a3+12]) == f5(=[a3+16]) (c.eq.s at 0x320b7a0)).
  The `bc1t` branch at 0x320b7cc targets 0x320b9dc, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1f` branch at 0x320b804 targets 0x320b814, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0x320b810 targets 0x320b844, is taken when at(=[a0+1728]) == a0(=[a3+4]), and falls through when at(=[a0+1728]) != a0(=[a3+4]).
  The `bc1f` branch at 0x320b858 targets 0x320b868, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0x320b864 targets 0x320b88c, is taken when ra(=[a0+1732]) == a0(=[a3+8]), and falls through when ra(=[a0+1732]) != a0(=[a3+8]).
  The `beq` branch at 0x320b894 targets 0x320ba00, is taken when a0(=[a3+4]) == a2(=0x4), and falls through when a0(=[a3+4]) != a2(=0x4).
  The `beq` branch at 0x320b8a0 targets 0x320ba40, is taken when a0(=[a3+4]) == a3(=0x3), and falls through when a0(=[a3+4]) != a3(=0x3).
  The `beq` branch at 0x320b8a8 targets 0x320ba80, is taken when a0(=[a3+4]) == a6(=0x2), and falls through when a0(=[a3+4]) != a6(=0x2).
  The `beq` branch at 0x320b8b0 targets 0x320bac0, is taken when a0(=[a3+4]) == a7(=0x1), and falls through when a0(=[a3+4]) != a7(=0x1).
  The `blez` branch at 0x320b8b8 targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `blez` branch at 0x320b8ec targets 0x320b9cc, is taken when t9(=[a3+4]) <= 0 (signed), and falls through when t9(=[a3+4]) > 0 (signed).
  The `blez` branch at 0x320b908 targets 0x320b9ac, is taken when t1(=[a3+8]) <= 0 (signed), and falls through when t1(=[a3+8]) > 0 (signed).
  The `beq` branch at 0x320b92c targets 0x320b950, is taken when (t2(?) & 0x3) == 0, and falls through when (t2(?) & 0x3) != 0.
  The `bne` branch at 0x320b948 targets 0x320b934, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x320b950 targets 0x320b9ac, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x320b9a4 targets 0x320b960, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0x320b9c4 targets 0x320b900, is taken when a3(?) < a4(=[a3+4]) (signed), and falls through when a3(?) >= a4(=[a3+4]) (signed).
  The `bne` branch at 0x320b9d0 targets 0x320b8e0, is taken when a0(?) != t8(=(([a3] << 0x2) + a5)), and falls through when a0(?) == t8(=(([a3] << 0x2) + a5)).
  The `beq` branch at 0x320ba04 targets 0x320c298, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0x320ba0c targets 0x320c5a4, is taken when a0(=[a3+8]) == a5(=0x3), and falls through when a0(=[a3+8]) != a5(=0x3).
  The `beq` branch at 0x320ba14 targets 0x320c80c, is taken when a0(=[a3+8]) == a6(=0x2), and falls through when a0(=[a3+8]) != a6(=0x2).
  The `beq` branch at 0x320ba1c targets 0x320cee4, is taken when a0(=[a3+8]) == a7(=0x1), and falls through when a0(=[a3+8]) != a7(=0x1).
  The `blez` branch at 0x320ba24 targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x320ba38 targets 0x320bd24 and is always taken.
  The `beq` branch at 0x320ba44 targets 0x320c450, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0x320ba4c targets 0x320c700, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0x320ba54 targets 0x320cd00, is taken when a0(=[a3+8]) == t9(=0x2), and falls through when a0(=[a3+8]) != t9(=0x2).
  The `beq` branch at 0x320ba5c targets 0x320d084, is taken when a0(=[a3+8]) == ra(=0x1), and falls through when a0(=[a3+8]) != ra(=0x1).
  The `blez` branch at 0x320ba64 targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x320ba78 targets 0x320bf74 and is always taken.
  The `beq` branch at 0x320ba84 targets 0x320c90c, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0x320ba8c targets 0x320cb3c, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0x320ba94 targets 0x320d32c, is taken when a0(=[a3+8]) == a6(=0x2), and falls through when a0(=[a3+8]) != a6(=0x2).
  The `beq` branch at 0x320ba9c targets 0x320d590, is taken when a0(=[a3+8]) == t9(=0x1), and falls through when a0(=[a3+8]) != t9(=0x1).
  The `blez` branch at 0x320baa4 targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x320bab8 targets 0x320c1b4 and is always taken.
  The `beq` branch at 0x320bac4 targets 0x320ca00, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0x320bacc targets 0x320d1cc, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0x320bad4 targets 0x320d484, is taken when a0(=[a3+8]) == a6(=0x2), and falls through when a0(=[a3+8]) != a6(=0x2).
  The `beq` branch at 0x320badc targets 0x320d6d8, is taken when a0(=[a3+8]) == a7(=0x1), and falls through when a0(=[a3+8]) != a7(=0x1).
  The `blez` branch at 0x320bae4 targets 0x320b9dc, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x320bafc targets 0x320c284 and is always taken.
  The `beq` branch at 0x320bb28 targets 0x320bb4c, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x320bb44 targets 0x320bb30, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x320bb50 targets 0x320bbac, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x320bba4 targets 0x320bb60, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0x320bbbc targets 0x320bdf4, is taken when a7(=[a3+8]) <= 0 (signed), and falls through when a7(=[a3+8]) > 0 (signed).
  The `beq` branch at 0x320bbdc targets 0x320bc00, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x320bbf8 targets 0x320bbe4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x320bc04 targets 0x320bc5c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x320bc54 targets 0x320bc10, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0x320bc6c targets 0x320bdfc, is taken when a7(=[a3+8]) <= 0 (signed), and falls through when a7(=[a3+8]) > 0 (signed).
  The `beq` branch at 0x320bc8c targets 0x320bcb0, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x320bca8 targets 0x320bc94, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x320bcb4 targets 0x320bd0c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x320bd04 targets 0x320bcc0, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0x320bd1c targets 0x320b9d8, is taken when a0(?) == t8(=(([a3] << 0x2) + a5)), and falls through when a0(?) != t8(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0x320bd28 targets 0x320bdec, is taken when a7(=[a3+8]) <= 0 (signed), and falls through when a7(=[a3+8]) > 0 (signed).
  The `beq` branch at 0x320bd4c targets 0x320bd70, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x320bd68 targets 0x320bd54, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x320bd74 targets 0x320bdcc, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x320bdc4 targets 0x320bd80, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bgtz` branch at 0x320bddc targets 0x320bb10, is taken when a7(=[a3+8]) > 0 (signed), and falls through when a7(=[a3+8]) <= 0 (signed).
  The `beq` branch at 0x320bde4 targets 0x320bbac and is always taken.
  The `beq` branch at 0x320bdec targets 0x320bdcc and is always taken.
  The `beq` branch at 0x320bdf4 targets 0x320bc5c and is always taken.
  The `beq` branch at 0x320bdfc targets 0x320bd0c and is always taken.
  The `beq` branch at 0x320be28 targets 0x320be4c, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x320be44 targets 0x320be30, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x320be50 targets 0x320beac, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x320bea4 targets 0x320be60, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0x320bebc targets 0x320c044, is taken when a7(=[a3+8]) <= 0 (signed), and falls through when a7(=[a3+8]) > 0 (signed).
  The `beq` branch at 0x320bedc targets 0x320bf00, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x320bef8 targets 0x320bee4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x320bf04 targets 0x320bf5c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x320bf54 targets 0x320bf10, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0x320bf6c targets 0x320b9d8, is taken when a0(?) == t8(=(([a3] << 0x2) + a5)), and falls through when a0(?) != t8(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0x320bf78 targets 0x320c03c, is taken when a7(=[a3+8]) <= 0 (signed), and falls through when a7(=[a3+8]) > 0 (signed).
  The `beq` branch at 0x320bf9c targets 0x320bfc0, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x320bfb8 targets 0x320bfa4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x320bfc4 targets 0x320c01c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x320c014 targets 0x320bfd0, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bgtz` branch at 0x320c02c targets 0x320be10, is taken when a7(=[a3+8]) > 0 (signed), and falls through when a7(=[a3+8]) <= 0 (signed).
  The `beq` branch at 0x320c034 targets 0x320beac and is always taken.
  The `beq` branch at 0x320c03c targets 0x320c01c and is always taken.
  The `beq` branch at 0x320c044 targets 0x320bf5c and is always taken.
  The `beq` branch at 0x320c06c targets 0x320c090, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x320c088 targets 0x320c074, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x320c094 targets 0x320c0ec, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x320c0e4 targets 0x320c0a0, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0x320c0fc targets 0x320c1c8, is taken when a7(=[a3+8]) <= 0 (signed), and falls through when a7(=[a3+8]) > 0 (signed).
  The `beq` branch at 0x320c11c targets 0x320c140, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x320c138 targets 0x320c124, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x320c144 targets 0x320c19c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x320c194 targets 0x320c150, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0x320c1ac targets 0x320b9d8, is taken when a0(?) == t8(=(([a3] << 0x2) + a5)), and falls through when a0(?) != t8(=(([a3] << 0x2) + a5)).
  The `bgtz` branch at 0x320c1b8 targets 0x320c050, is taken when a7(=[a3+8]) > 0 (signed), and falls through when a7(=[a3+8]) <= 0 (signed).
  The `beq` branch at 0x320c1c0 targets 0x320c0ec and is always taken.
  The `beq` branch at 0x320c1c8 targets 0x320c19c and is always taken.
  The `beq` branch at 0x320c1ec targets 0x320c210, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x320c208 targets 0x320c1f4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x320c214 targets 0x320c26c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x320c264 targets 0x320c220, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0x320c27c targets 0x320b9d8, is taken when a0(?) == t8(=(([a3] << 0x2) + a5)), and falls through when a0(?) != t8(=(([a3] << 0x2) + a5)).
  The `bgtz` branch at 0x320c288 targets 0x320c1d0, is taken when a7(=[a3+8]) > 0 (signed), and falls through when a7(=[a3+8]) <= 0 (signed).
  The `beq` branch at 0x320c290 targets 0x320c26c and is always taken.
  The `blez` branch at 0x320c298 targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0x320c440 targets 0x320c310, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x320c448 targets 0x320b9dc and is always taken.
  The `blez` branch at 0x320c450 targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0x320c594 targets 0x320c4b0, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x320c59c targets 0x320b9dc and is always taken.
  The `blez` branch at 0x320c5a4 targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0x320c6f0 targets 0x320c600, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x320c6f8 targets 0x320b9dc and is always taken.
  The `blez` branch at 0x320c700 targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0x320c7fc targets 0x320c748, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x320c804 targets 0x320b9dc and is always taken.
  The `blez` branch at 0x320c80c targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0x320c8fc targets 0x320c84c, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x320c904 targets 0x320b9dc and is always taken.
  The `blez` branch at 0x320c90c targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0x320c9f0 targets 0x320c958, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x320c9f8 targets 0x320b9dc and is always taken.
  The `blez` branch at 0x320ca00 targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x320ca38 targets 0x320ca98, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x320ca9c targets 0x320cb34, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x320cb2c targets 0x320caa4, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x320cb34 targets 0x320b9dc and is always taken.
  The `blez` branch at 0x320cb3c targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x320cb80 targets 0x320cc0c, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0x320cc10 targets 0x320ccf8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x320ccf0 targets 0x320cc18, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x320ccf8 targets 0x320b9dc and is always taken.
  The `blez` branch at 0x320cd00 targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x320cd40 targets 0x320cdd8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x320cddc targets 0x320cedc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x320ced4 targets 0x320cde4, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x320cedc targets 0x320b9dc and is always taken.
  The `blez` branch at 0x320cee4 targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x320cf14 targets 0x320cf98, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0x320cf9c targets 0x320d07c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x320d074 targets 0x320cfa4, is taken when a4(?) != a6(=((((([a3] << 0x2) + a5) + ([a3] << 0x2)) + ([a3] << 0x2)) + ([a3] << 0x2))), and falls through when a4(?) == a6(=((((([a3] << 0x2) + a5) + ([a3] << 0x2)) + ([a3] << 0x2)) + ([a3] << 0x2))).
  The `beq` branch at 0x320d07c targets 0x320b9dc and is always taken.
  The `blez` branch at 0x320d084 targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x320d0ac targets 0x320d114, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0x320d118 targets 0x320d1c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x320d1bc targets 0x320d120, is taken when a3(?) != a6(=(((([a3] << 0x2) + a5) + ([a3] << 0x2)) + ([a3] << 0x2))), and falls through when a3(?) == a6(=(((([a3] << 0x2) + a5) + ([a3] << 0x2)) + ([a3] << 0x2))).
  The `beq` branch at 0x320d1c4 targets 0x320b9dc and is always taken.
  The `blez` branch at 0x320d1cc targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x320d1f4 targets 0x320d244, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x320d23c targets 0x320d1fc, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x320d248 targets 0x320d324, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x320d31c targets 0x320d250, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x320d324 targets 0x320b9dc and is always taken.
  The `blez` branch at 0x320d32c targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x320d360 targets 0x320d3c8, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0x320d3cc targets 0x320d47c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x320d474 targets 0x320d3d4, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x320d47c targets 0x320b9dc and is always taken.
  The `blez` branch at 0x320d484 targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x320d49c targets 0x320d4dc, is taken when (a4(=[a3]) & 0x3) == 0, and falls through when (a4(=[a3]) & 0x3) != 0.
  The `bne` branch at 0x320d4d4 targets 0x320d4a4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x320d4e0 targets 0x320d588, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x320d580 targets 0x320d4e8, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x320d588 targets 0x320b9dc and is always taken.
  The `blez` branch at 0x320d590 targets 0x320b9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x320d5a8 targets 0x320d5f4, is taken when (a4(=[a3]) & 0x3) == 0, and falls through when (a4(=[a3]) & 0x3) != 0.
  The `bne` branch at 0x320d5ec targets 0x320d5b0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x320d5f8 targets 0x320d6d0, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x320d6c8 targets 0x320d600, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x320d6d0 targets 0x320b9dc and is always taken.
  The `blez` branch at 0x320d6d8 targets 0x320b9dc, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x320d6f4 targets 0x320d720, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0x320d724 targets 0x320d768, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x320d760 targets 0x320d72c, is taken when a0(?) != t8(=(([a3] << 0x2) + a5)), and falls through when a0(?) == t8(=(([a3] << 0x2) + a5)).
  The `beq` branch at 0x320d768 targets 0x320b9dc and is always taken.
  The return at 0x320b9f8 has v0 = ?.
  The instructions from 0x320bb04 to 0x320bb0c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x320be04 to 0x320be0c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x320c04c to 0x320c04c are not reached by any path from the entry, and their branches are not listed.

- `DoDomain2WithDerivs` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x320d770 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x320d770-0x320fffc (10380 bytes).
  It occupies 10380 bytes.
  The `lwc1` at 0x320d784 loads 4 bytes from a3 (arg3 at entry) +0x10.
  The `lwc1` at 0x320d788 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0x320d7b8 loads 4 bytes from a3 (arg3 at entry) +0x14.
  The `lwc1` at 0x320d7bc loads 4 bytes from a3 (arg3 at entry) +0x18.
  The `lwc1` at 0x320d7e4 loads 4 bytes from a0 (arg0 at entry) +0x438.
  The `lw` at 0x320d808 loads 4 bytes from a0 (arg0 at entry) +0x6c8.
  6 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0x320d80c, `lw` at 0x320d82c, `lw` at 0x320d854.
  The `lw` at 0x320d818 loads 4 bytes from a0 (arg0 at entry) +0x6c0.
  The `sw` at 0x320d850 stores 4 bytes to a0 (arg0 at entry) +0x6c8.
  The `sw` at 0x320d85c stores 4 bytes to a0 (arg0 at entry) +0x6c0.
  The `swc1` at 0x320d860 stores 4 bytes to a0 (arg0 at entry) +0x438.
  The `lwc1` at 0x320d868 loads 4 bytes from a0 (arg0 at entry) +0x43c.
  The `lw` at 0x320d87c loads 4 bytes from a0 (arg0 at entry) +0x6cc.
  18 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x320d884, `lw` at 0x320d89c, `lw` at 0x320d8b4.
  The `lw` at 0x320d888 loads 4 bytes from a0 (arg0 at entry) +0x6c4.
  The `sw` at 0x320d8b0 stores 4 bytes to a0 (arg0 at entry) +0x6cc.
  The `sw` at 0x320d8bc stores 4 bytes to a0 (arg0 at entry) +0x6c4.
  The `swc1` at 0x320d8c0 stores 4 bytes to a0 (arg0 at entry) +0x43c.
  The `lw` at 0x320d8d0 loads 4 bytes from a3 (arg3 at entry) +0x0.
  391 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x320d9a0, `lwc1` at 0x320d9a8, `lwc1` at 0x320d9b8.
  45 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e4, including `lwc1` at 0x320d9a4, `lwc1` at 0x320da2c, `lwc1` at 0x320dabc.
  63 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e0, including `lwc1` at 0x320d9ac, `lwc1` at 0x320da28, `lwc1` at 0x320dab8.
  22 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e8, including `lwc1` at 0x320d9b0, `lwc1` at 0x320da34, `lwc1` at 0x320dac4.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4ec, including `lwc1` at 0x320d9c0, `lwc1` at 0x320da44, `lwc1` at 0x320dad4.
  66 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x440, including `lwc1` at 0x320d9d0, `lwc1` at 0x320da18, `lwc1` at 0x320df0c.
  180 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x320d9d8, `swc1` at 0x320d9e4, `swc1` at 0x320da20.
  33 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x580, including `lwc1` at 0x320d9dc, `lwc1` at 0x320df18, `lwc1` at 0x320e368.
  64 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x620, including `lwc1` at 0x320d9ec, `lwc1` at 0x320da78, `lwc1` at 0x320db08.
  45 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x624, including `lwc1` at 0x320d9f0, `lwc1` at 0x320da7c, `lwc1` at 0x320db0c.
  22 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x628, including `lwc1` at 0x320d9f8, `lwc1` at 0x320da84, `lwc1` at 0x320db14.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x62c, including `lwc1` at 0x320da08, `lwc1` at 0x320da94, `lwc1` at 0x320db24.
  28 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x444, including `lwc1` at 0x320da54, `lwc1` at 0x320daa4, `lwc1` at 0x320dfdc.
  14 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x584, including `lwc1` at 0x320da64, `lwc1` at 0x320dfe8, `lwc1` at 0x320e438.
  20 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x448, including `lwc1` at 0x320dae4, `lwc1` at 0x320db34, `lwc1` at 0x320e0ac.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x588, including `lwc1` at 0x320daf4, `lwc1` at 0x320e0b8, `lwc1` at 0x320e278.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x44c, including `lwc1` at 0x320db74, `lwc1` at 0x320dbd4, `lwc1` at 0x320e17c.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x58c, including `lwc1` at 0x320db84, `lwc1` at 0x320e188, `lwc1` at 0x320ebc0.
  4 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + a7) +0x0, including `lwc1` at 0x320f858, `lwc1` at 0x320f890, `lwc1` at 0x320fb24.
  8 such `lwc1` accesses load 4 bytes from a7 (arg7 at entry) +0x0, including `lwc1` at 0x320f860, `lwc1` at 0x320f898, `lwc1` at 0x320fb2c.
  2 such `lwc1` accesses load 4 bytes from ((([a3] + [a3]) << 0x2) + a7) +0x0, including `lwc1` at 0x320f86c, `lwc1` at 0x320f8a8.
  4 such `swc1` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `swc1` at 0x320f880, `swc1` at 0x320fb40, `swc1` at 0x320fc9c.
  4 such `swc1` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `swc1` at 0x320f88c, `swc1` at 0x320fb4c, `swc1` at 0x320fca8.
  4 such `swc1` accesses store 4 bytes to a6 (arg6 at entry) +0x0, including `swc1` at 0x320f8d8, `swc1` at 0x320fb88, `swc1` at 0x320fcc0.
  The `lwc1` at 0x320fcd4 loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `lwc1` at 0x320fce4 loads 4 bytes from a5 (arg5 at entry) +0x0.
  The `lwc1` at 0x320fd00 loads 4 bytes from a6 (arg6 at entry) +0x0.
  The `bgezall` at 0x320d848 calls PreEvaluateWithDeriv [0x320a5e0] with a0=[a3+4], a1=a1 at entry (arg1), a2=a0+1088, a3=a0+1408.
  The `bgezall` at 0x320d8a8 calls PreEvaluateWithDeriv [0x320a5e0] with a0=[a3+8], a1=?, a2=a0+1248, a3=a0+1568.
  The `bc1t` branch at 0x320d7b0 targets 0x320dc24, is taken when f4(=[a3+12]) == f5(=[a3+16]) (c.eq.s at 0x320d798), and falls through when not (f4(=[a3+12]) == f5(=[a3+16]) (c.eq.s at 0x320d798)).
  The `bc1t` branch at 0x320d7c4 targets 0x320dc24, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1f` branch at 0x320d800 targets 0x320d82c, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bne` branch at 0x320d810 targets 0x320d834, is taken when at(=[a0+1736]) != s2(=0x1), and falls through when at(=[a0+1736]) == s2(=0x1).
  The `beq` branch at 0x320d81c targets 0x320d868, is taken when v0(=[a0+1728]) == a0(=[a3+4]), and falls through when v0(=[a0+1728]) != a0(=[a3+4]).
  The `beq` branch at 0x320d824 targets 0x320d838 and is always taken.
  The `bc1f` branch at 0x320d874 targets 0x320d89c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bne` branch at 0x320d880 targets 0x320d8a0, is taken when ra(=[a0+1740]) != s2(=0x1), and falls through when ra(=[a0+1740]) == s2(=0x1).
  The `beq` branch at 0x320d88c targets 0x320d8c4, is taken when at(=[a0+1732]) == a0(=[a3+8]), and falls through when at(=[a0+1732]) != a0(=[a3+8]).
  The `beq` branch at 0x320d894 targets 0x320d8a4 and is always taken.
  The `beq` branch at 0x320d8cc targets 0x320dd9c, is taken when a0(=[a3+4]) == a2(=0x4), and falls through when a0(=[a3+4]) != a2(=0x4).
  The `beq` branch at 0x320d8d8 targets 0x320dde4, is taken when a0(=[a3+4]) == a3(=0x3), and falls through when a0(=[a3+4]) != a3(=0x3).
  The `beq` branch at 0x320d8e0 targets 0x320de2c, is taken when a0(=[a3+4]) == t0(=0x2), and falls through when a0(=[a3+4]) != t0(=0x2).
  The `beq` branch at 0x320d8e8 targets 0x320de74, is taken when a0(=[a3+4]) == s2(=0x1), and falls through when a0(=[a3+4]) != s2(=0x1).
  The `blez` branch at 0x320d8f0 targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `beq` branch at 0x320d914 targets 0x320dc74 and is always taken.
  The `blez` branch at 0x320d91c targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x320dc1c targets 0x320d9a0, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x320dc6c targets 0x320dc24, is taken when ra(?) == s2(=(([a3] << 0x2) + a7)), and falls through when ra(?) != s2(=(([a3] << 0x2) + a7)).
  The `blez` branch at 0x320dc84 targets 0x320dc60, is taken when a6(=[a3+4]) <= 0 (signed), and falls through when a6(=[a3+4]) > 0 (signed).
  The `beq` branch at 0x320dc90 targets 0x320fff0 and is always taken.
  The `beq` branch at 0x320dca0 targets 0x320dcec, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x320dce4 targets 0x320dcb0, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0x320dd20 targets 0x320dc60, is taken when a3(?) >= a4(=[a3+4]) (signed), and falls through when a3(?) < a4(=[a3+4]) (signed).
  The `bne` branch at 0x320dd50 targets 0x320dcec, is taken when a6(=[a3+8]) < 0x2 (signed), and falls through when a6(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x320dd74 targets 0x320dca0, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x320dd94 targets 0x320dca0 and is always taken.
  The `beq` branch at 0x320dda0 targets 0x320d91c, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0x320dda8 targets 0x320e9cc, is taken when a0(=[a3+8]) == v1(=0x3), and falls through when a0(=[a3+8]) != v1(=0x3).
  The `beq` branch at 0x320ddb0 targets 0x320ee34, is taken when a0(=[a3+8]) == a1(=0x2), and falls through when a0(=[a3+8]) != a1(=0x2).
  The `beq` branch at 0x320ddb8 targets 0x320f58c, is taken when a0(=[a3+8]) == s2(=0x1), and falls through when a0(=[a3+8]) != s2(=0x1).
  The `blez` branch at 0x320ddc0 targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `beq` branch at 0x320dddc targets 0x320e1b8 and is always taken.
  The `beq` branch at 0x320dde8 targets 0x320e770, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0x320ddf0 targets 0x320ec4c, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0x320ddf8 targets 0x320f408, is taken when a0(=[a3+8]) == a2(=0x2), and falls through when a0(=[a3+8]) != a2(=0x2).
  The `beq` branch at 0x320de00 targets 0x320f6fc, is taken when a0(=[a3+8]) == s2(=0x1), and falls through when a0(=[a3+8]) != s2(=0x1).
  The `blez` branch at 0x320de08 targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `beq` branch at 0x320de24 targets 0x320e2a8 and is always taken.
  The `beq` branch at 0x320de30 targets 0x320f028, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0x320de38 targets 0x320f2b0, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0x320de40 targets 0x320f9e4, is taken when a0(=[a3+8]) == t0(=0x2), and falls through when a0(=[a3+8]) != t0(=0x2).
  The `beq` branch at 0x320de48 targets 0x320fc60, is taken when a0(=[a3+8]) == s2(=0x1), and falls through when a0(=[a3+8]) != s2(=0x1).
  The `blez` branch at 0x320de50 targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `beq` branch at 0x320de6c targets 0x320e618 and is always taken.
  The `beq` branch at 0x320de78 targets 0x320f1c8, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0x320de80 targets 0x320f818, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0x320de88 targets 0x320faf4, is taken when a0(=[a3+8]) == t0(=0x2), and falls through when a0(=[a3+8]) != t0(=0x2).
  The `beq` branch at 0x320de90 targets 0x320fe50, is taken when a0(=[a3+8]) == s2(=0x1), and falls through when a0(=[a3+8]) != s2(=0x1).
  The `blez` branch at 0x320de98 targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `beq` branch at 0x320deb8 targets 0x320e708 and is always taken.
  The `beq` branch at 0x320dec4 targets 0x320df0c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x320df04 targets 0x320ded0, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0x320df4c targets 0x320dfdc, is taken when a6(=[a3+8]) < 0x2 (signed), and falls through when a6(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x320df70 targets 0x320df94, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x320df98 targets 0x320dfdc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x320dfd4 targets 0x320dfa0, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0x320e01c targets 0x320e0ac, is taken when a6(=[a3+8]) < 0x2 (signed), and falls through when a6(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x320e040 targets 0x320e064, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x320e068 targets 0x320e0ac, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x320e0a4 targets 0x320e070, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0x320e0ec targets 0x320e17c, is taken when a6(=[a3+8]) < 0x2 (signed), and falls through when a6(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x320e110 targets 0x320e134, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x320e138 targets 0x320e17c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x320e174 targets 0x320e140, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0x320e1b0 targets 0x320dc24, is taken when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `bne` branch at 0x320e1d4 targets 0x320df0c, is taken when a6(=[a3+8]) < 0x2 (signed), and falls through when a6(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x320e1f8 targets 0x320dec0, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x320e218 targets 0x320dec0 and is always taken.
  The `beq` branch at 0x320e224 targets 0x320e26c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x320e264 targets 0x320e230, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0x320e2a0 targets 0x320dc24, is taken when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `bne` branch at 0x320e2c4 targets 0x320e35c, is taken when a6(=[a3+8]) < 0x2 (signed), and falls through when a6(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x320e2e8 targets 0x320e30c, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x320e310 targets 0x320e35c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x320e354 targets 0x320e320, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0x320e39c targets 0x320e42c, is taken when a7(=[a3+8]) < 0x2 (signed), and falls through when a7(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x320e3c0 targets 0x320e3e4, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x320e3e8 targets 0x320e42c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x320e424 targets 0x320e3f0, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0x320e46c targets 0x320e26c, is taken when a7(=[a3+8]) < 0x2 (signed), and falls through when a7(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x320e490 targets 0x320e220, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x320e4b0 targets 0x320e220 and is always taken.
  The `beq` branch at 0x320e4bc targets 0x320e50c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x320e504 targets 0x320e4d0, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0x320e54c targets 0x320e5dc, is taken when a6(=[a3+8]) < 0x2 (signed), and falls through when a6(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x320e570 targets 0x320e594, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x320e598 targets 0x320e5dc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x320e5d4 targets 0x320e5a0, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0x320e610 targets 0x320dc24, is taken when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `bne` branch at 0x320e634 targets 0x320e50c, is taken when a6(=[a3+8]) < 0x2 (signed), and falls through when a6(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x320e658 targets 0x320e4b8, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x320e678 targets 0x320e4b8 and is always taken.
  The `beq` branch at 0x320e684 targets 0x320e6cc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x320e6c4 targets 0x320e690, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0x320e700 targets 0x320dc24, is taken when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `bne` branch at 0x320e724 targets 0x320e6cc, is taken when a6(=[a3+8]) < 0x2 (signed), and falls through when a6(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x320e748 targets 0x320e680, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x320e768 targets 0x320e680 and is always taken.
  The `blez` branch at 0x320e770 targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x320e9bc targets 0x320e7e0, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x320e9c4 targets 0x320dc28 and is always taken.
  The `blez` branch at 0x320e9cc targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x320ec3c targets 0x320ea30, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x320ec44 targets 0x320dc28 and is always taken.
  The `blez` branch at 0x320ec4c targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x320ee24 targets 0x320ec9c, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x320ee2c targets 0x320dc28 and is always taken.
  The `blez` branch at 0x320ee34 targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x320f018 targets 0x320ee7c, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x320f020 targets 0x320dc28 and is always taken.
  The `blez` branch at 0x320f028 targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x320f1b8 targets 0x320f07c, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x320f1c0 targets 0x320dc28 and is always taken.
  The `blez` branch at 0x320f1c8 targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x320f2a0 targets 0x320f204, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x320f2a8 targets 0x320dc28 and is always taken.
  The `blez` branch at 0x320f2b0 targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x320f3f8 targets 0x320f2f4, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x320f400 targets 0x320dc28 and is always taken.
  The `blez` branch at 0x320f408 targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x320f57c targets 0x320f448, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x320f584 targets 0x320dc28 and is always taken.
  The `blez` branch at 0x320f58c targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x320f6ec targets 0x320f5c0, is taken when a3(?) != t0(=((((([a3] << 0x2) + a7) + ([a3] << 0x2)) + ([a3] << 0x2)) + ([a3] << 0x2))), and falls through when a3(?) == t0(=((((([a3] << 0x2) + a7) + ([a3] << 0x2)) + ([a3] << 0x2)) + ([a3] << 0x2))).
  The `beq` branch at 0x320f6f4 targets 0x320dc28 and is always taken.
  The `blez` branch at 0x320f6fc targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x320f808 targets 0x320f728, is taken when a2(?) != a3(=(((([a3] << 0x2) + a7) + ([a3] << 0x2)) + ([a3] << 0x2))), and falls through when a2(?) == a3(=(((([a3] << 0x2) + a7) + ([a3] << 0x2)) + ([a3] << 0x2))).
  The `beq` branch at 0x320f810 targets 0x320dc28 and is always taken.
  The `blez` branch at 0x320f818 targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `beq` branch at 0x320f84c targets 0x320f8dc, is taken when (a6(=[a3]) & 0x1) == 0, and falls through when (a6(=[a3]) & 0x1) != 0.
  The `beq` branch at 0x320f8e0 targets 0x320f9dc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x320f9d4 targets 0x320f8e8, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x320f9dc targets 0x320dc28 and is always taken.
  The `blez` branch at 0x320f9e4 targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x320fae4 targets 0x320fa18, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x320faec targets 0x320dc28 and is always taken.
  The `blez` branch at 0x320faf4 targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `beq` branch at 0x320fb18 targets 0x320fb8c, is taken when (a6(=[a3]) & 0x1) == 0, and falls through when (a6(=[a3]) & 0x1) != 0.
  The `beq` branch at 0x320fb90 targets 0x320fc58, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x320fc50 targets 0x320fb98, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x320fc58 targets 0x320dc28 and is always taken.
  The `blez` branch at 0x320fc60 targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `beq` branch at 0x320fc80 targets 0x320fd20, is taken when (a6(=[a3]) & 0x1) == 0, and falls through when (a6(=[a3]) & 0x1) != 0.
  The `beq` branch at 0x320fd24 targets 0x320fe48, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x320fe40 targets 0x320fd2c, is taken when ra(?) != s2(=(([a3] << 0x2) + a7)), and falls through when ra(?) == s2(=(([a3] << 0x2) + a7)).
  The `beq` branch at 0x320fe48 targets 0x320dc28 and is always taken.
  The `blez` branch at 0x320fe50 targets 0x320dc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `beq` branch at 0x320fe70 targets 0x320fecc, is taken when (a6(=[a3]) & 0x3) == 0, and falls through when (a6(=[a3]) & 0x3) != 0.
  The `bne` branch at 0x320fec4 targets 0x320fe78, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x320fed0 targets 0x320ffdc, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x320ffd4 targets 0x320fed8, is taken when ra(?) != s2(=(([a3] << 0x2) + a7)), and falls through when ra(?) == s2(=(([a3] << 0x2) + a7)).
  The `beq` branch at 0x320ffdc targets 0x320dc28 and is always taken.
  The `beq` branch at 0x320fff4 targets 0x320dd2c and is always taken.
  The return at 0x320dc4c has v0 = ?.
  The instructions from 0x320dc54 to 0x320dc5c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x320dc98 to 0x320dc9c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x320ffe4 to 0x320ffec are not reached by any path from the entry, and their branches are not listed.

- `DoEvalCoord2` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3210000 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3210000-0x32105b4 (1460 bytes).
  It occupies 1460 bytes.
  9 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3210054, `ld` at 0x321007c, `ld` at 0x3210090.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x3210060, `sd` at 0x3210084, `sd` at 0x3210098.
  12 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x3210118, `sw` at 0x32101bc, `sw` at 0x3210214.
  The `lw` at 0x321011c loads 4 bytes from a0 (arg0 at entry) +0x808.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x81c, including `lw` at 0x3210120, `lw` at 0x32101c4, `lw` at 0x3210218.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x9128, including `ld` at 0x321016c, `ld` at 0x3210478.
  14 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x32101b0, `lw` at 0x321020c, `lw` at 0x3210248.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xde5, including `lbu` at 0x32101d0, `lbu` at 0x3210598.
  The `ld` at 0x32101fc loads 8 bytes from a0 (arg0 at entry) +0x90f0.
  The `ld` at 0x3210238 loads 8 bytes from a0 (arg0 at entry) +0x9118.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x1ad8, including `ld` at 0x3210260, `ld` at 0x3210280, `ld` at 0x32102a0.
  The `ld` at 0x3210264 loads 8 bytes from [a0+6872]:8 +0xbb8.
  The `ld` at 0x3210284 loads 8 bytes from [a0+6872]:8 +0xc28.
  The `ld` at 0x32102a4 loads 8 bytes from [a0+6872]:8 +0xc88.
  The `ld` at 0x32102c4 loads 8 bytes from [a0+6872]:8 +0xd88.
  The `ld` at 0x3210324 loads 8 bytes from a0 (arg0 at entry) +0x9110.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf2c, including `lwc1` at 0x3210338, `lwc1` at 0x32103f4, `lwc1` at 0x3210528.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x30, including `swc1` at 0x3210348, `swc1` at 0x3210404, `swc1` at 0x3210538.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x9120, including `ld` at 0x3210374, `ld` at 0x3210554.
  The `ld` at 0x32103d8 loads 8 bytes from a0 (arg0 at entry) +0x9108.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x2c, including `swc1` at 0x32103f0, `swc1` at 0x3210520.
  The `ld` at 0x321042c loads 8 bytes from a0 (arg0 at entry) +0x90f8.
  The `ld` at 0x32104bc loads 8 bytes from a0 (arg0 at entry) +0x90e8.
  The `ld` at 0x3210508 loads 8 bytes from a0 (arg0 at entry) +0x9100.
  The `swc1` at 0x3210524 stores 4 bytes to a3 (arg3 at entry) +0x28.
  The `ld` at 0x3210580 loads 8 bytes from [a0+6872]:8 +0xae8.
  The `ld` at 0x32105a0 loads 8 bytes from [a0+6872]:8 +0xaa8.
  The `bgezall` at 0x3210174 calls DoDomain2WithDerivs [0x320d770] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36976, a4=a3+52, a5=sp-128, a6=sp-112, a7=[a0+37160]:8.
  The `bgezall` at 0x321018c calls ComputeFirstPartials [0x320b670] with a0=a3+52, a1=sp-128, a2=sp-112, a3=?.
  The `bgezall` at 0x32101a8 calls ComputeNormal2 [0x320b710] with a0=a0 at entry (arg0), a1=a3+20, a2=sp-128, a3=sp-112.
  The `bgezall` at 0x3210204 calls DoDomain2 [0x320b780] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36640, a4=a3+4, a5=[a0+37104]:8.
  The `bgezall` at 0x3210240 calls DoDomain2 [0x320b780] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36880, a4=a3+36, a5=[a0+37144]:8.
  The `jalr` at 0x3210268 calls (unknown callee) with a0=a3+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x3210288 calls (unknown callee) with a0=a3+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x32102a8 calls (unknown callee) with a0=a3+20, a1=?, a2=?, a3=?.
  The `jalr` at 0x32102c8 calls (unknown callee) with a0=a3+36, a1=?, a2=?, a3=?.
  The `bgezall` at 0x321032c calls DoDomain2 [0x320b780] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36832, a4=a3+36, a5=[a0+37136]:8.
  The `bgezall` at 0x321037c calls DoDomain2WithDerivs [0x320d770] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36928, a4=a3+52, a5=sp-96, a6=sp-80, a7=[a0+37152]:8.
  The `bgezall` at 0x3210398 calls ComputeNormal2 [0x320b710] with a0=a0 at entry (arg0), a1=a3+20, a2=sp-96, a3=sp-80.
  The `bgezall` at 0x32103e0 calls DoDomain2 [0x320b780] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36784, a4=a3+36, a5=[a0+37128]:8.
  The `bgezall` at 0x3210434 calls DoDomain2 [0x320b780] with a0=sp-1872, a1=?, a2=0x320b780, a3=a0+36688, a4=a3+20, a5=[a0+37112]:8, a6=sp-1872.
  The `bgezall` at 0x3210480 calls DoDomain2 [0x320b780] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36976, a4=a3+52, a5=[a0+37160]:8.
  The `bgezall` at 0x32104c4 calls DoDomain2 [0x320b780] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36592, a4=a3+4, a5=[a0+37096]:8.
  The `bgezall` at 0x3210510 calls DoDomain2 [0x320b780] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36736, a4=a3+36, a5=[a0+37120]:8.
  The `bgezall` at 0x321055c calls DoDomain2 [0x320b780] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36928, a4=a3+52, a5=[a0+37152]:8.
  The `jalr` at 0x3210584 calls (unknown callee) with a0=a3+52, a1=?, a2=?, a3=?.
  The `jalr` at 0x32105a4 calls (unknown callee) with a0=a3+52, a1=?, a2=?, a3=?.
  The `bne` branch at 0x321005c targets 0x3210044, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `bgtz` branch at 0x3210110 targets 0x3210070, is taken when a4(?) > 0 (signed), and falls through when a4(?) <= 0 (signed).
  The `bgez` branch at 0x3210134 targets 0x3210408, is taken when v0(=([a0+2056] << 0x28)) >= 0 (signed), and falls through when v0(=([a0+2056] << 0x28)) < 0 (signed).
  The `beq` branch at 0x3210140 targets 0x321034c, is taken when (a2(=[a0+2076]) & 0x100) == 0, and falls through when (a2(=[a0+2076]) & 0x100) != 0.
  The `beq` branch at 0x32101d4 targets 0x32104a0, is taken when t8(=[a0+3557]:1) == 0, and falls through when t8(=[a0+3557]:1) != 0.
  The `beq` branch at 0x32101e0 targets 0x3210220, is taken when (a2(=[a0+2076]) & 0x2) == 0, and falls through when (a2(=[a0+2076]) & 0x2) != 0.
  The `beq` branch at 0x3210220 targets 0x3210308, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x3210258 targets 0x3210278, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x3210278 targets 0x3210298, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x3210298 targets 0x32102b8, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x32102b8 targets 0x32102d4, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x32102d4 targets 0x321059c, is taken when s4(=one of -0x1, 0x3, 0x4) == ra(=0x3), and falls through when s4(=one of -0x1, 0x3, 0x4) != ra(=0x3).
  The `beq` branch at 0x32102dc targets 0x321057c, is taken when s4(=one of -0x1, 0x3, 0x4) == at(=0x4), and falls through when s4(=one of -0x1, 0x3, 0x4) != at(=0x4).
  The `beq` branch at 0x321030c targets 0x32103bc, is taken when (a2(=[a0+2076]) & 0x20) == 0, and falls through when (a2(=[a0+2076]) & 0x20) != 0.
  The `beq` branch at 0x3210344 targets 0x3210254 and is always taken.
  The `beq` branch at 0x321034c targets 0x32104e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x32103b4 targets 0x32101c8 and is always taken.
  The `beq` branch at 0x32103c0 targets 0x32104e8, is taken when (a2(=[a0+2076]) & 0x10) == 0, and falls through when (a2(=[a0+2076]) & 0x10) != 0.
  The `beq` branch at 0x3210400 targets 0x3210254 and is always taken.
  The `beq` branch at 0x3210408 targets 0x321044c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x321045c targets 0x321053c, is taken when (a2(=[a0+2076]) & 0x100) == 0, and falls through when (a2(=[a0+2076]) & 0x100) != 0.
  The `beq` branch at 0x3210498 targets 0x32101d0 and is always taken.
  The `beq` branch at 0x32104a0 targets 0x3210220, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x32104d8 targets 0x321021c and is always taken.
  The `beq` branch at 0x32104e0 targets 0x32101c8 and is always taken.
  The `beq` branch at 0x32104ec targets 0x3210258, is taken when (a2(=[a0+2076]) & 0x8) == 0, and falls through when (a2(=[a0+2076]) & 0x8) != 0.
  The `beq` branch at 0x3210534 targets 0x3210254 and is always taken.
  The `beq` branch at 0x321053c targets 0x3210594, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x3210574 targets 0x32101d0 and is always taken.
  The `beq` branch at 0x321058c targets 0x32102e4 and is always taken.
  The `beq` branch at 0x3210594 targets 0x32101d4 and is always taken.
  The `beq` branch at 0x32105ac targets 0x32102e4 and is always taken.
  The return at 0x3210300 has v0 = one of ?, ret(?).

- `sendChange` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x32108b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x32108b0-0x32109e0 (304 bytes).
  It occupies 304 bytes.
  The `ld` at 0x32108b0 loads 8 bytes from a0 (arg0 at entry) +0x260.
  The `ld` at 0x32108b8 loads 8 bytes from a0 (arg0 at entry) +0x268.
  6 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x32108c0, `lw` at 0x32108f4, `lw` at 0x3210914.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x1ad8, including `ld` at 0x32108e4, `ld` at 0x3210904, `ld` at 0x3210924.
  The `ld` at 0x32108e8 loads 8 bytes from [a0+6872]:8 +0xbb8.
  The `ld` at 0x3210908 loads 8 bytes from [a0+6872]:8 +0xd88.
  The `ld` at 0x3210928 loads 8 bytes from [a0+6872]:8 +0xc88.
  The `ld` at 0x3210948 loads 8 bytes from [a0+6872]:8 +0xaa8.
  The `lw` at 0x3210964 loads 4 bytes from a0 (arg0 at entry) +0x808.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x48f8, including `ld` at 0x3210974, `ld` at 0x3210994.
  The `swc1` at 0x3210990 stores 4 bytes to a0 (arg0 at entry) +0x26c.
  The `swc1` at 0x3210998 stores 4 bytes to a0 (arg0 at entry) +0x268.
  The `swc1` at 0x321099c stores 4 bytes to a0 (arg0 at entry) +0x264.
  The `swc1` at 0x32109a8 stores 4 bytes to a0 (arg0 at entry) +0x260.
  The `ld` at 0x32109cc loads 8 bytes from [a0+6872]:8 +0xae8.
  The `jalr` at 0x32108ec calls (unknown callee) with a0=a1+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a1].
  The `jalr` at 0x321090c calls (unknown callee) with a0=a1+36, a1=?, a2=?, a3=[a1].
  The `jalr` at 0x321092c calls (unknown callee) with a0=a1+20, a1=?, a2=?, a3=[a1].
  The `jalr` at 0x321094c calls (unknown callee) with a0=a1+52, a1=?, a2=?, a3=[a1].
  The `jalr` at 0x3210978 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a1].
  The `jalr` at 0x32109a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x32109d0 calls (unknown callee) with a0=a1+52, a1=?, a2=?, a3=[a1].
  The `beq` branch at 0x32108dc targets 0x32108f8, is taken when (a3(=[a1]) & 0x1) == 0, and falls through when (a3(=[a1]) & 0x1) != 0.
  The `beq` branch at 0x32108fc targets 0x321091c, is taken when (a3(=[a1]) & 0x8) == 0, and falls through when (a3(=[a1]) & 0x8) != 0.
  The `beq` branch at 0x321091c targets 0x321093c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x321093c targets 0x32109c0, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x321095c targets 0x32109b0, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x321096c targets 0x32109b0, is taken when (at(=[a0+2056]) & 0x80) == 0, and falls through when (at(=[a0+2056]) & 0x80) != 0.
  The `beq` branch at 0x32109c0 targets 0x321095c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x32109d8 targets 0x3210958 and is always taken.
  The return at 0x32109b8 has v0 = one of ?, ret(?).

- `Clampf` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x326d7f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x326d7f0-0x326d814 (36 bytes).
  It occupies 36 bytes.
  The `bc1t` branch at 0x326d7f4 targets 0x326d80c, is taken when f12 < f13 (c.lt.s at 0x326d7f0), and falls through when not (f12 < f13 (c.lt.s at 0x326d7f0)).
  The return at 0x326d804 has v0 = ?.
  The return at 0x326d80c has v0 = ?.

- `__glOdysseyQueryHyperpipeBestRect` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3288e80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3288e80-0x3288ef4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0x3288e94 loads 4 bytes from a0 (arg0 at entry) +0x285d8.
  The `jalr` at 0x3288ed0 calls __glOdysseyIoctl [0x326da60] with a0=a0 at entry (arg0), a1=0x6f640016, a2=sp-48, a3=0x1, a5=0x10e038.
  The return at 0x3288eec has v0 = one of 0x0, 0x1.

- `__glOdysseyBindHyperpipe` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3289260 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3289260-0x32892cc (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x3289260 loads 8 bytes from abs 0x1020.
  The `lbu` at 0x3289264 loads 1 byte from [0x1020]:8 +0xde6.
  The `jalr` at 0x3289298 calls __glOdysseyIoctl [0x326da60] with a0=[0x1020]:8, a1=0x6f640014, a2=sp-32, a3=a3 at entry (arg3), a4=a1 at entry (arg1).
  The `beq` branch at 0x328927c targets 0x32892bc, is taken when v0(=[[0x1020]:8+3558]:1) == 0, and falls through when v0(=[[0x1020]:8+3558]:1) != 0.
  The return at 0x32892b4 has v0 = one of 0x0, 0x1.
  The return at 0x32892c4 has v0 = 0x1.

- `__glOdysseyUnbindHyperpipe` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x32892d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x32892d0-0x3289320 (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x32892e8 loads 8 bytes from abs 0x1020.
  The `jalr` at 0x32892fc calls __glOdysseyIoctl [0x326da60] with a0=[0x1020]:8, a1=0x6f640015, a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x3289318 has v0 = one of 0x0, 0x1.

- `Clear` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x32b75d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x32b75d0-0x32b7904 (820 bytes).
  It occupies 820 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x32b75e4, `ld` at 0x32b7900.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x18, including `ld` at 0x32b75f4, `ld` at 0x32b78f8.
  The `lw` at 0x32b7600 loads 4 bytes from [a0]:8 +0x9504.
  The `lw` at 0x32b760c loads 4 bytes from [a0]:8 +0x94fc.
  The `lw` at 0x32b7618 loads 4 bytes from [a0]:8 +0x94f8.
  The `lw` at 0x32b761c loads 4 bytes from [a0]:8 +0x9500.
  The `lwc1` at 0x32b7620 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lwc1` at 0x32b7624 loads 4 bytes from [a0]:8 +0x9a18.
  The `lwc1` at 0x32b7628 loads 4 bytes from [a0]:8 +0x77c.
  The `lwc1` at 0x32b762c loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lwc1` at 0x32b7630 loads 4 bytes from [a0]:8 +0x99f8.
  The `lwc1` at 0x32b7634 loads 4 bytes from [a0]:8 +0x778.
  The `lwc1` at 0x32b7638 loads 4 bytes from [a0]:8 +0x99f4.
  The `lw` at 0x32b763c loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x32b7640 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lwc1` at 0x32b7648 loads 4 bytes from [a0]:8 +0x774.
  The `lwc1` at 0x32b7654 loads 4 bytes from [a0]:8 +0x99f0.
  The `lwc1` at 0x32b7660 loads 4 bytes from [a0]:8 +0x770.
  The `lwc1` at 0x32b7668 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lwc1` at 0x32b7670 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x32b76ac loads 4 bytes from [a0]:8 +0xfb0.
  84 such `sh` accesses store 2 bytes to ?, including `sh` at 0x32b76f4, `sh` at 0x32b76f8, `sh` at 0x32b76fc.
  The `ld` at 0x32b78d0 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x32b78e4 calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x32b7614 targets 0x32b78d0, is taken when t0(=[a0+24]:8) == 0, and falls through when t0(=[a0+24]:8) != 0.
  The `beq` branch at 0x32b76d0 targets 0x32b78b4, is taken when s0(=[[a0]:8+38140]) >= s1(=[[a0]:8+38148]) (signed), and falls through when s0(=[[a0]:8+38140]) < s1(=[[a0]:8+38148]) (signed).
  The `beq` branch at 0x32b76e4 targets 0x32b7894 and is always taken.
  The `bne` branch at 0x32b7738 targets 0x32b76f0, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x32b7740 targets 0x32b785c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x32b7854 targets 0x32b7750, is taken when a0(?) != a1(=-0x1), and falls through when a0(?) == a1(=-0x1).
  The `bltz` branch at 0x32b7860 targets 0x32b788c, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `bne` branch at 0x32b7884 targets 0x32b7870, is taken when a0(?) != a1(=-0x1), and falls through when a0(?) == a1(=-0x1).
  The `beq` branch at 0x32b788c targets 0x32b78b4, is taken when s0(?) == s1(=[[a0]:8+38148]), and falls through when s0(?) != s1(=[[a0]:8+38148]).
  The `bltz` branch at 0x32b7894 targets 0x32b785c, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `bne` branch at 0x32b78a4 targets 0x32b76f0, is taken when (t1(?) & 0x3) != 0, and falls through when (t1(?) & 0x3) == 0.
  The `beq` branch at 0x32b78ac targets 0x32b7740 and is always taken.
  The `beq` branch at 0x32b78fc targets 0x32b761c and is always taken.
  The return at 0x32b78c8 has v0 = ?.
  The instructions from 0x32b76ec to 0x32b76ec are not reached by any path from the entry, and their branches are not listed.

- `__glChangeReadWindowSize` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x32ca400 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x32ca400-0x32ca40c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0x32ca400 stores 4 bytes to a0 (arg0 at entry) +0xfe4.
  The `sw` at 0x32ca408 stores 4 bytes to a0 (arg0 at entry) +0xfe0.
  The return at 0x32ca404 has v0 = ?.

- `Resize` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x32cd740 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x32cd740-0x32cd788 (72 bytes).
  It occupies 72 bytes.
  The `sb` at 0x32cd778 stores 1 byte to a0 (arg0 at entry) +0x90.
  The `jalr` at 0x32cd764 calls __glResizeBuffer [0x32c3580] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x32cd780 has v0 = 0x1.

- `Coverage` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x32f44e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x32f44e0-0x32f4630 (336 bytes).
  It occupies 336 bytes.
  The `bc1f` branch at 0x32f4520 targets 0x32f452c, is taken when not (f9 <= f5 (c.le.s at 0x32f4518)), and falls through when f9 <= f5 (c.le.s at 0x32f4518).
  The `bc1f` branch at 0x32f4530 targets 0x32f453c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x32f453c targets 0x32f4548, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x32f4548 targets 0x32f4554, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x32f4560 targets 0x32f456c, is taken when not (f9 <= f5 (c.le.s at 0x32f455c)), and falls through when f9 <= f5 (c.le.s at 0x32f455c).
  The `bc1f` branch at 0x32f4570 targets 0x32f457c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x32f4580 targets 0x32f458c, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x32f4590 targets 0x32f459c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x32f45ac targets 0x32f45b8, is taken when not (f9 <= f5 (c.le.s at 0x32f45a4)), and falls through when f9 <= f5 (c.le.s at 0x32f45a4).
  The `bc1f` branch at 0x32f45bc targets 0x32f45c8, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x32f45cc targets 0x32f45d8, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x32f45d8 targets 0x32f45e4, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x32f45e8 targets 0x32f45f4, is taken when not (f9 <= f5 (c.le.s at 0x32f45e4)), and falls through when f9 <= f5 (c.le.s at 0x32f45e4).
  The `bc1f` branch at 0x32f45f8 targets 0x32f4604, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x32f4608 targets 0x32f4614, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x32f4618 targets 0x32f4628, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The return at 0x32f4620 has v0 = ?.
  The return at 0x32f4628 has v0 = ?.

- `SetInitialParameters` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x32f6b60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x32f6b60-0x32f70fc (1436 bytes).
  It occupies 1436 bytes.
  The `lw` at 0x32f6b70 loads 4 bytes from a0 (arg0 at entry) +0x96d4.
  The `lw` at 0x32f6b74 loads 4 bytes from a0 (arg0 at entry) +0x96d0.
  The `lw` at 0x32f6b8c loads 4 bytes from a0 (arg0 at entry) +0x97fc.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9764, including `lwc1` at 0x32f6bcc, `lwc1` at 0x32f6db0, `lwc1` at 0x32f709c.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9774, including `lwc1` at 0x32f6bd0, `lwc1` at 0x32f6db4, `lwc1` at 0x32f70a0.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0x32f6bd4, `lwc1` at 0x32f6db8, `lwc1` at 0x32f70a4.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9778, including `lwc1` at 0x32f6be4, `lwc1` at 0x32f6dc8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9768, including `lwc1` at 0x32f6be8, `lwc1` at 0x32f6dcc.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9718, including `swc1` at 0x32f6bec, `swc1` at 0x32f6dd0, `swc1` at 0x32f70c4.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9744, including `swc1` at 0x32f6bf0, `swc1` at 0x32f6dd4, `swc1` at 0x32f70b4.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9754, including `swc1` at 0x32f6bf8, `swc1` at 0x32f6ddc, `swc1` at 0x32f70bc.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0x32f6bfc, `lwc1` at 0x32f6de0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x977c, including `lwc1` at 0x32f6c0c, `lwc1` at 0x32f6df0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x976c, including `lwc1` at 0x32f6c10, `lwc1` at 0x32f6df4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9748, including `swc1` at 0x32f6c14, `swc1` at 0x32f6dfc.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x971c, including `swc1` at 0x32f6c18, `swc1` at 0x32f6df8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9758, including `swc1` at 0x32f6c20, `swc1` at 0x32f6e04.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0x32f6c24, `lwc1` at 0x32f6e08.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9780, including `lwc1` at 0x32f6c34, `lwc1` at 0x32f6e18.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9770, including `lwc1` at 0x32f6c38, `lwc1` at 0x32f6e1c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x974c, including `swc1` at 0x32f6c3c, `swc1` at 0x32f6e24.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9720, including `swc1` at 0x32f6c40, `swc1` at 0x32f6e20.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x975c, including `swc1` at 0x32f6c48, `swc1` at 0x32f6e2c.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0x32f6c50, `lwc1` at 0x32f6e34.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9750, including `swc1` at 0x32f6c5c, `swc1` at 0x32f6e40.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9760, including `swc1` at 0x32f6c64, `swc1` at 0x32f6e48.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9724, including `swc1` at 0x32f6c68, `swc1` at 0x32f6e4c.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x94, including `lwc1` at 0x32f6c78, `lwc1` at 0x32f6e5c.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x38, including `lwc1` at 0x32f6c7c, `lwc1` at 0x32f6e60.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97c4, including `lwc1` at 0x32f6c80, `lwc1` at 0x32f6e64.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97d8, including `lwc1` at 0x32f6c84, `lwc1` at 0x32f6e68.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x979c, including `swc1` at 0x32f6c98, `swc1` at 0x32f6e80.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9728, including `swc1` at 0x32f6c9c, `swc1` at 0x32f6e7c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97b0, including `swc1` at 0x32f6ca4, `swc1` at 0x32f6e88.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x3c, including `lwc1` at 0x32f6ca8, `lwc1` at 0x32f6e8c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97c8, including `lwc1` at 0x32f6cac, `lwc1` at 0x32f6e90.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97dc, including `lwc1` at 0x32f6cb0, `lwc1` at 0x32f6e94.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97a0, including `swc1` at 0x32f6cc4, `swc1` at 0x32f6eac.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x972c, including `swc1` at 0x32f6cc8, `swc1` at 0x32f6ea8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97b4, including `swc1` at 0x32f6cd0, `swc1` at 0x32f6eb4.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x40, including `lwc1` at 0x32f6cd4, `lwc1` at 0x32f6eb8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97cc, including `lwc1` at 0x32f6cd8, `lwc1` at 0x32f6ebc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97e0, including `lwc1` at 0x32f6cdc, `lwc1` at 0x32f6ec0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97a4, including `swc1` at 0x32f6cf0, `swc1` at 0x32f6ed8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9730, including `swc1` at 0x32f6cf4, `swc1` at 0x32f6ed4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97b8, including `swc1` at 0x32f6cfc, `swc1` at 0x32f6ee0.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x44, including `lwc1` at 0x32f6d00, `lwc1` at 0x32f6ee4.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97d0, including `lwc1` at 0x32f6d04, `lwc1` at 0x32f6ee8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97e4, including `lwc1` at 0x32f6d08, `lwc1` at 0x32f6eec.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97e8, including `lwc1` at 0x32f6d1c, `lwc1` at 0x32f6f00.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97d4, including `lwc1` at 0x32f6d20, `lwc1` at 0x32f6f04.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97a8, including `swc1` at 0x32f6d24, `swc1` at 0x32f6f0c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9734, including `swc1` at 0x32f6d28, `swc1` at 0x32f6f08.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97bc, including `swc1` at 0x32f6d30, `swc1` at 0x32f6f14.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xbc, including `lwc1` at 0x32f6d38, `lwc1` at 0x32f6f1c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97ac, including `swc1` at 0x32f6d44, `swc1` at 0x32f6f28.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97c0, including `swc1` at 0x32f6d4c, `swc1` at 0x32f6f30.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9738, including `swc1` at 0x32f6d50, `swc1` at 0x32f6f34.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x808, including `lw` at 0x32f6d5c, `lw` at 0x32f6f40.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9794, including `lwc1` at 0x32f6d90, `lwc1` at 0x32f6f74, `lwc1` at 0x32f6f88.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9798, including `lwc1` at 0x32f6d94, `lwc1` at 0x32f6f78, `lwc1` at 0x32f6f84.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x9714, including `sw` at 0x32f6d9c, `sw` at 0x32f6f80, `sw` at 0x32f6fa0.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x90, including `lwc1` at 0x32f6f8c, `lwc1` at 0x32f7008.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9784, including `swc1` at 0x32f6fb0, `swc1` at 0x32f702c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9788, including `swc1` at 0x32f6fb8, `swc1` at 0x32f7034.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97f8, including `lwc1` at 0x32f6fc4, `lwc1` at 0x32f7040.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97f4, including `lwc1` at 0x32f6fc8, `lwc1` at 0x32f7044.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97ec, including `swc1` at 0x32f6fe4, `swc1` at 0x32f7060.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97f0, including `swc1` at 0x32f6fec, `swc1` at 0x32f7068.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x973c, including `swc1` at 0x32f6ff0, `swc1` at 0x32f706c.
  The `bgezall` at 0x32f6d7c calls __glPolygonOffsetZ [0x32f9130] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f14=f16, f15=f17.
  The `bgezall` at 0x32f6f60 calls __glPolygonOffsetZ [0x32f9130] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f14=f16, f15=f17.
  The `bc1f` branch at 0x32f6bb4 targets 0x32f6da0, is taken when not (f24 < f0 (c.lt.s at 0x32f6b90)), and falls through when f24 < f0 (c.lt.s at 0x32f6b90).
  The `beq` branch at 0x32f6bbc targets 0x32f7094, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x32f6bc4 targets 0x32f6c70, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x32f6c70 targets 0x32f6d54, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x32f6d54 targets 0x32f6fbc, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bgez` branch at 0x32f6d64 targets 0x32f6f84, is taken when t9(=([a0+2056] << 0x27)) >= 0 (signed), and falls through when t9(=([a0+2056] << 0x27)) < 0 (signed).
  The `beq` branch at 0x32f6d98 targets 0x32f6fa4 and is always taken.
  The `beq` branch at 0x32f6da0 targets 0x32f70c8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x32f6da8 targets 0x32f6e54, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x32f6e54 targets 0x32f6f38, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x32f6f38 targets 0x32f7038, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bgez` branch at 0x32f6f48 targets 0x32f7000, is taken when v0(=([a0+2056] << 0x27)) >= 0 (signed), and falls through when v0(=([a0+2056] << 0x27)) < 0 (signed).
  The `beq` branch at 0x32f6f7c targets 0x32f7020 and is always taken.
  The `beq` branch at 0x32f6fbc targets 0x32f707c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x32f7038 targets 0x32f707c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x32f7094 targets 0x32f6d54, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x32f70c0 targets 0x32f6d54 and is always taken.
  The `beq` branch at 0x32f70c8 targets 0x32f6f38, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x32f70f4 targets 0x32f6f38 and is always taken.
  The return at 0x32f6ff8 has v0 = ?.
  The return at 0x32f7074 has v0 = ?.
  The return at 0x32f708c has v0 = ?.

- `Store_8` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x333a1f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x333a1f0-0x333a36c (380 bytes).
  It occupies 380 bytes.
  The `ld` at 0x333a1f0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x333a1f4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x333a1f8 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x333a1fc loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x333a214 loads 4 bytes from [a0]:8 +0x80c.
  The `ld` at 0x333a224 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x333a230 loads 4 bytes from [a0]:8 +0x808.
  The `lw` at 0x333a234 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x333a248 loads 4 bytes from [a0]:8 +0xfb0.
  The `lb` at 0x333a280 loads 1 byte from table(0x33892d0) +0x0.
  The `ld` at 0x333a2b0 loads 8 bytes from [a0]:8 +0x4d08.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x333a2d4, `lwc1` at 0x333a2d8.
  The `lbu` at 0x333a2fc loads 1 byte from ?.
  The `lw` at 0x333a308 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x333a310 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x333a318 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x333a320 loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `lw` at 0x333a328 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `sb` at 0x333a34c stores 1 byte to ?.
  The `lwc1` at 0x333a360 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lwc1` at 0x333a368 loads 4 bytes from [a0]:8 +0xf28.
  The `jalr` at 0x333a2bc calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-64, a4=[[a0]:8+2056], a5=[a0]:8, a6=[a1], a7=[a1+4].
  The `beq` branch at 0x333a25c targets 0x333a364, is taken when (a4(=[[a0]:8+2056]) & 0x8) == 0, and falls through when (a4(=[[a0]:8+2056]) & 0x8) != 0.
  The `bne` branch at 0x333a2a0 targets 0x333a2b0, is taken when (a4(=[[a0]:8+2056]) & 0x2) != 0, and falls through when (a4(=[[a0]:8+2056]) & 0x2) == 0.
  The `beq` branch at 0x333a2a8 targets 0x333a35c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x333a35c targets 0x333a2d0 and is always taken.
  The `beq` branch at 0x333a364 targets 0x333a298 and is always taken.
  The return at 0x333a354 has v0 = ?.

- `Store_16` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x333a370 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x333a370-0x333a4f8 (392 bytes).
  It occupies 392 bytes.
  The `ld` at 0x333a370 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x333a374 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x333a378 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x333a37c loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x333a394 loads 4 bytes from [a0]:8 +0x80c.
  The `ld` at 0x333a3a8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x333a3b4 loads 4 bytes from [a0]:8 +0x808.
  The `lw` at 0x333a3bc loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x333a3c4 loads 4 bytes from [a0]:8 +0xfb0.
  The `lb` at 0x333a40c loads 1 byte from table(0x33892d0) +0x0.
  The `ld` at 0x333a43c loads 8 bytes from [a0]:8 +0x4d08.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x333a460, `lwc1` at 0x333a464.
  The `lhu` at 0x333a488 loads 2 bytes from ?.
  The `lw` at 0x333a494 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x333a49c loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x333a4a4 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x333a4ac loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `lw` at 0x333a4b4 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `sh` at 0x333a4d8 stores 2 bytes to ?.
  The `lwc1` at 0x333a4ec loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lwc1` at 0x333a4f4 loads 4 bytes from [a0]:8 +0xf28.
  The `jalr` at 0x333a448 calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-64, a4=[[a0]:8+2056], a5=[a0]:8, a6=[a1+4], a7=[a1].
  The `beq` branch at 0x333a3e8 targets 0x333a4f0, is taken when (a4(=[[a0]:8+2056]) & 0x8) == 0, and falls through when (a4(=[[a0]:8+2056]) & 0x8) != 0.
  The `bne` branch at 0x333a42c targets 0x333a43c, is taken when (a4(=[[a0]:8+2056]) & 0x2) != 0, and falls through when (a4(=[[a0]:8+2056]) & 0x2) == 0.
  The `beq` branch at 0x333a434 targets 0x333a4e8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x333a4e8 targets 0x333a45c and is always taken.
  The `beq` branch at 0x333a4f0 targets 0x333a424 and is always taken.
  The return at 0x333a4e0 has v0 = ?.

- `Store_32` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x333a670 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x333a670-0x333a7b8 (328 bytes).
  It occupies 328 bytes.
  The `ld` at 0x333a678 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x333a67c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x333a680 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x333a684 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x333a69c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x333a6a4 loads 4 bytes from [a0]:8 +0x80c.
  The `lw` at 0x333a6ac loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x333a6c0 loads 4 bytes from [a0]:8 +0x808.
  The `lw` at 0x333a6c8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x333a700 loads 8 bytes from [a0]:8 +0x4d08.
  The `lwc1` at 0x333a720 loads 4 bytes from [a0]:8 +0xf28.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x333a728, `lwc1` at 0x333a72c.
  The `lw` at 0x333a750 loads 4 bytes from ?.
  The `lw` at 0x333a75c loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x333a764 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x333a76c loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x333a774 loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `lw` at 0x333a77c loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `sw` at 0x333a7a0 stores 4 bytes to ?.
  The `lwc1` at 0x333a7b4 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `jalr` at 0x333a70c calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-64.
  The `bne` branch at 0x333a6ec targets 0x333a700, is taken when (at(=[[a0]:8+2056]) & 0x2) != 0, and falls through when (at(=[[a0]:8+2056]) & 0x2) == 0.
  The `beq` branch at 0x333a6f8 targets 0x333a7b0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x333a7b0 targets 0x333a720 and is always taken.
  The return at 0x333a7a8 has v0 = one of ret(?), ([[a0]:8+4016] << 0x2).

- `Fetch_8` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x333a7c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x333a7c0-0x333a868 (168 bytes).
  It occupies 168 bytes.
  The `ld` at 0x333a7c0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x333a7c4 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x333a7c8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x333a7d4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x333a7e0 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x333a7e8 loads 4 bytes from [a0]:8 +0xe18.
  The `lbu` at 0x333a7f0 loads 1 byte from ?.
  The `lw` at 0x333a7f4 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `swc1` at 0x333a810 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0x333a814 loads 4 bytes from [a0]:8 +0xe1c.
  The `lw` at 0x333a818 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `swc1` at 0x333a834 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0x333a838 loads 4 bytes from [a0]:8 +0xe20.
  The `lw` at 0x333a83c loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `swc1` at 0x333a858 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x333a85c loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `swc1` at 0x333a864 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0x333a860 has v0 = [a0+176].

- `Fetch_16` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x333a870 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x333a870-0x333a924 (180 bytes).
  It occupies 180 bytes.
  The `ld` at 0x333a870 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x333a874 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x333a878 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x333a884 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x333a88c loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x333a8a4 loads 4 bytes from [a0]:8 +0xe18.
  The `lhu` at 0x333a8ac loads 2 bytes from ?.
  The `lw` at 0x333a8b0 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `swc1` at 0x333a8cc stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0x333a8d0 loads 4 bytes from [a0]:8 +0xe1c.
  The `lw` at 0x333a8d4 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `swc1` at 0x333a8f0 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0x333a8f4 loads 4 bytes from [a0]:8 +0xe20.
  The `lw` at 0x333a8f8 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `swc1` at 0x333a914 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x333a918 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `swc1` at 0x333a920 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0x333a91c has v0 = [a0+176].

- `Fetch_32` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x333aa00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x333aa00-0x333aab4 (180 bytes).
  It occupies 180 bytes.
  The `ld` at 0x333aa00 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x333aa04 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x333aa08 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x333aa14 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x333aa1c loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x333aa38 loads 4 bytes from [a0]:8 +0xe18.
  The `lw` at 0x333aa3c loads 4 bytes from ?.
  The `lw` at 0x333aa40 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `swc1` at 0x333aa5c stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0x333aa60 loads 4 bytes from [a0]:8 +0xe1c.
  The `lw` at 0x333aa64 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `swc1` at 0x333aa80 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0x333aa84 loads 4 bytes from [a0]:8 +0xe20.
  The `lw` at 0x333aa88 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `swc1` at 0x333aaa4 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x333aaa8 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `swc1` at 0x333aab0 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0x333aaac has v0 = [a0+176].

- `glBlendColorEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368bc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368bc0-0x3368bcc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368bc0 loads 8 bytes from abs 0x15d0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368bc4).

- `glBlendEquationEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368bcc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368bcc-0x3368bd8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368bcc loads 8 bytes from abs 0x15d8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368bd0).

- `glTexSubImage1DEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368be4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368be4-0x3368bf0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368be4 loads 8 bytes from abs 0x15e8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368be8).

- `glTexSubImage2DEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368bf0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368bf0-0x3368bfc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368bf0 loads 8 bytes from abs 0x15f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368bf4).

- `glConvolutionFilter1DEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368bfc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368bfc-0x3368c08 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368bfc loads 8 bytes from abs 0x15f8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368c00).

- `glConvolutionFilter2DEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368c08 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368c08-0x3368c14 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368c08 loads 8 bytes from abs 0x1600.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368c0c).

- `glConvolutionParameterfEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368c14 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368c14-0x3368c20 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368c14 loads 8 bytes from abs 0x1608.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368c18).

- `glConvolutionParameterfvEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368c20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368c20-0x3368c2c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368c20 loads 8 bytes from abs 0x1610.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368c24).

- `glConvolutionParameteriEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368c2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368c2c-0x3368c38 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368c2c loads 8 bytes from abs 0x1618.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368c30).

- `glConvolutionParameterivEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368c38 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368c38-0x3368c44 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368c38 loads 8 bytes from abs 0x1620.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368c3c).

- `glCopyConvolutionFilter1DEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368c44 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368c44-0x3368c50 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368c44 loads 8 bytes from abs 0x1628.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368c48).

- `glCopyConvolutionFilter2DEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368c50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368c50-0x3368c5c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368c50 loads 8 bytes from abs 0x1630.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368c54).

- `glSeparableFilter2DEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368c8c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368c8c-0x3368c98 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368c8c loads 8 bytes from abs 0x1658.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368c90).

- `glHistogramEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368ce0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368ce0-0x3368cec (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368ce0 loads 8 bytes from abs 0x1690.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368ce4).

- `glMinmaxEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368cec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368cec-0x3368cf8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368cec loads 8 bytes from abs 0x1698.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368cf0).

- `glResetHistogramEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368cf8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368cf8-0x3368d04 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368cf8 loads 8 bytes from abs 0x16a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368cfc).

- `glResetMinmaxEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368d04 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368d04-0x3368d10 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368d04 loads 8 bytes from abs 0x16a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368d08).

- `glTexImage3DEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368d10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368d10-0x3368d1c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368d10 loads 8 bytes from abs 0x16b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368d14).

- `glTexSubImage3DEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368d1c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368d1c-0x3368d28 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368d1c loads 8 bytes from abs 0x16b8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368d20).

- `glArrayElementEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368d28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368d28-0x3368d34 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368d28 loads 8 bytes from abs 0x16c0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368d2c).

- `glGetPointervEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368d58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368d58-0x3368d64 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368d58 loads 8 bytes from abs 0x16e0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368d5c).

- `glCopyTexImage1DEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368ddc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368ddc-0x3368de8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368ddc loads 8 bytes from abs 0x1738.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368de0).

- `glCopyTexImage2DEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368de8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368de8-0x3368df4 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368de8 loads 8 bytes from abs 0x1740.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368dec).

- `glCopyTexSubImage1DEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368df4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368df4-0x3368e00 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368df4 loads 8 bytes from abs 0x1748.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368df8).

- `glCopyTexSubImage2DEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368e00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368e00-0x3368e0c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368e00 loads 8 bytes from abs 0x1750.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368e04).

- `glCopyTexSubImage3DEXT` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368e0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368e0c-0x3368e18 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368e0c loads 8 bytes from abs 0x1758.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368e10).

- `glColorTableSGI` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368f08 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368f08-0x3368f14 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368f08 loads 8 bytes from abs 0x1800.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368f0c).

- `glColorTableParameterfvSGI` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368f14 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368f14-0x3368f20 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368f14 loads 8 bytes from abs 0x1808.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368f18).

- `glColorTableParameterivSGI` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368f20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368f20-0x3368f2c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368f20 loads 8 bytes from abs 0x1810.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368f24).

- `glCopyColorTableSGI` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368f2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368f2c-0x3368f38 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368f2c loads 8 bytes from abs 0x1818.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368f30).

- `glPointParameterfSGIS` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368fc8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368fc8-0x3368fd4 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368fc8 loads 8 bytes from abs 0x1880.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368fcc).

- `glPointParameterfvSGIS` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3368fd4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3368fd4-0x3368fe0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x3368fd4 loads 8 bytes from abs 0x1888.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3368fd8).

- `glColor3b` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3374000 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3374000-0x3374080 (128 bytes).
  It occupies 128 bytes.
  The `ld` at 0x3374000 loads 8 bytes from abs 0x1ba0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3374004).
  The instructions from 0x337400c to 0x337407c are not reached by any path from the entry, and their branches are not listed.

- `glVertex2d` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x3376900 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x3376900-0x3376a00 (256 bytes).
  It occupies 256 bytes.
  The `ld` at 0x3376900 loads 8 bytes from abs 0x1ae0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x3376904).
  The instructions from 0x337690c to 0x33769fc are not reached by any path from the entry, and their branches are not listed.

## Entry stubs that jump through an absolute slot (n64 builds)

```family
binaries: *usr/gfx/arch/IP30ODSY64/libGLcore.so, *usr/gfx/arch/IP35ODSY64/libGLcore.so
members: gl*
match: dc 19 .. ..  03 20 00 08  00 00 00 00
field: slot = u16be@2
shape: Three words: ld t9 from an absolute address, jr t9, empty delay slot (nop).
varies: slot, the 16-bit absolute address the first word loads t9 from.
role: Inferred. Public GL entry stub: it loads the routine's pointer from a fixed low-memory slot and tail-jumps through it with no frame of its own, so each entry is one indirect jump. In IP30ODSY64, glNewList at 0x3368260 uses slot 0x1090 and glFlush at 0x3368794 uses slot 0x1308. IP35ODSY64 has them at 0x2318260 and 0x2318794 with the same slots.
```
