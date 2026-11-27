# Readings: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`

One entry per routine, filed here from the reading batches by binary.

- `ApplyParameterF` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb330e80 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb330e80-0xb3312a4 (1060 bytes).
  It occupies 1060 bytes.
  The `ld` at 0xb330eac loads 8 bytes from abs 0x1020.
  11 such `lbu` accesses load 1 byte from [0x1020]:8 +0xdec, including `lbu` at 0xb330ec0, `lbu` at 0xb330f98, `lbu` at 0xb330fb0.
  12 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xb330f04, `sw` at 0xb330f6c, `sw` at 0xb3310a0.
  5 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xb330f08, `lwc1` at 0xb331018, `lwc1` at 0xb331034.
  25 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xb330f0c, `swc1` at 0xb330f14, `swc1` at 0xb330f1c.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xb330f10, `lwc1` at 0xb331108.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xb330f18, `lwc1` at 0xb331000.
  The `lwc1` at 0xb330f20 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xb33106c loads 4 bytes from table(0xbc3c) +0x0.
  The `swc1` at 0xb331094 stores 4 bytes to table(0xbc3c) +0x0.
  2 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xbc3c, including `lwc1` at 0xb3310b8, `lwc1` at 0xb3310c0.
  2 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xbc40, including `lwc1` at 0xb3310cc, `lwc1` at 0xb3310d4.
  The `lw` at 0xb3310f0 loads 4 bytes from [0x1020]:8 +0xcad0.
  The `jalr` at 0xb3310ec calls __glOdysseySetProgram [0xb3929a0] with a0=[0x1020]:8, a1=[[0x1020]:8+51920], a2=0xffffffff908091ea, a3=(one of 0x33, 0x39 | 0xffffffffd080c400), a4=0x10000, a5=0xffffffffd080c400, a7=0x39.
  The `bne` branch at 0xb330eb0 targets 0xb330f84, is taken when a1 < 0x1600 (unsigned), and falls through when a1 >= 0x1600 (unsigned).
  The `beq` branch at 0xb330eb8 targets 0xb330fb4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xb330eec targets 0xb330f70, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xb330ef4 targets 0xb330f3c and is always taken.
  The `beq` branch at 0xb330f34 targets 0xb330f70, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xb330f4c targets 0xb330f28, is taken when (a6(?) & s0(?)) == 0, and falls through when (a6(?) & s0(?)) != 0.
  The `bne` branch at 0xb330f54 targets 0xb330f00, is taken when s1(=a0) != 0, and falls through when s1(=a0) == 0.
  The `beq` branch at 0xb330f68 targets 0xb330f08 and is always taken.
  The `bne` branch at 0xb330f84 targets 0xb330fa4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xb330f90 targets 0xb330fd0, is taken when a1 >= 0x1202 (unsigned), and falls through when a1 < 0x1202 (unsigned).
  The `beq` branch at 0xb330f9c targets 0xb330ec8 and is always taken.
  The `beq` branch at 0xb330fa4 targets 0xb33101c, is taken when a1 == v0(=0x1200), and falls through when a1 != v0(=0x1200).
  The `beq` branch at 0xb330fac targets 0xb330ec8 and is always taken.
  The `bne` branch at 0xb330fb4 targets 0xb330fe0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xb330fbc targets 0xb330ff0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xb330fc8 targets 0xb330ec8 and is always taken.
  The `beq` branch at 0xb330fd0 targets 0xb331028, is taken when a1 == at(=0x1202), and falls through when a1 != at(=0x1202).
  The `beq` branch at 0xb330fd8 targets 0xb330ec8 and is always taken.
  The `beq` branch at 0xb330fe0 targets 0xb331034, is taken when a1 == v0(=0x1601), and falls through when a1 != v0(=0x1601).
  The `beq` branch at 0xb330fe8 targets 0xb330ec8 and is always taken.
  The `bne` branch at 0xb330ff0 targets 0xb330ec8, is taken when a1 != v1(=0x1603), and falls through when a1 == v1(=0x1603).
  The `bne` branch at 0xb330ff8 targets 0xb330ecc, is taken when a2(=[[0x1020]:8+3564]:1) != 0, and falls through when a2(=[[0x1020]:8+3564]:1) == 0.
  The `bc1t` branch at 0xb33100c targets 0xb3310fc, is taken when f5(=[a2+8]) == f4(=0x0) (c.eq.s at 0xb331008), and falls through when not (f5(=[a2+8]) == f4(=0x0) (c.eq.s at 0xb331008)).
  The `beq` branch at 0xb331014 targets 0xb3310fc and is always taken.
  The `beq` branch at 0xb331020 targets 0xb330ec8 and is always taken.
  The `beq` branch at 0xb33102c targets 0xb330ec8 and is always taken.
  The `bc1f` branch at 0xb331044 targets 0xb331054, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xb331078 targets 0xb331088, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xb331080 targets 0xb330ec8 and is always taken.
  The `beq` branch at 0xb3310f4 targets 0xb331080 and is always taken.
  The `bc1t` branch at 0xb331100 targets 0xb331124, is taken when f5 == f4(=0x0) (c.eq.s at 0xb3310fc), and falls through when not (f5 == f4(=0x0) (c.eq.s at 0xb3310fc)).
  The `beq` branch at 0xb33111c targets 0xb331128 and is always taken.
  The `bc1t` branch at 0xb331130 targets 0xb331150, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `beq` branch at 0xb331148 targets 0xb331154 and is always taken.
  The `beq` branch at 0xb33117c targets 0xb331254, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xb3311b0 targets 0xb331268, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xb3311e8 targets 0xb33127c, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xb331220 targets 0xb331290, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xb33124c targets 0xb330ec8 and is always taken.
  The `beq` branch at 0xb331260 targets 0xb331190 and is always taken.
  The `beq` branch at 0xb331274 targets 0xb3311c8 and is always taken.
  The `beq` branch at 0xb331288 targets 0xb331200 and is always taken.
  The `beq` branch at 0xb33129c targets 0xb331238 and is always taken.
  The return at 0xb330f7c has v0 = ?.
  The instructions from 0xb330efc to 0xb330efc are not reached by any path from the entry, and their branches are not listed.

- `ApplyParameterI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb331510 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb331510-0xb331a7c (1388 bytes).
  It occupies 1388 bytes.
  The `ld` at 0xb331540 loads 8 bytes from abs 0x1020.
  The `lw` at 0xb331560 loads 4 bytes from [0x1020]:8 +0xbc58.
  The `sw` at 0xb33157c stores 4 bytes to [0x1020]:8 +0xbc58.
  33 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xb331580, `sw` at 0xb331584, `sw` at 0xb331588.
  The `lw` at 0xb33159c loads 4 bytes from [0x1020]:8 +0xa098.
  The `lw` at 0xb3315a4 loads 4 bytes from [0x1020]:8 +0xa09c.
  The `lw` at 0xb3315ac loads 4 bytes from [0x1020]:8 +0xa0a0.
  The `lw` at 0xb3315b4 loads 4 bytes from [0x1020]:8 +0xa0a4.
  The `lw` at 0xb3315bc loads 4 bytes from [0x1020]:8 +0xa0a8.
  The `lw` at 0xb3315c4 loads 4 bytes from [0x1020]:8 +0xa0ac.
  The `lw` at 0xb3315cc loads 4 bytes from [0x1020]:8 +0xa0b0.
  The `lw` at 0xb3315d4 loads 4 bytes from [0x1020]:8 +0xa0b4.
  The `lw` at 0xb3315dc loads 4 bytes from [0x1020]:8 +0xa0b8.
  The `lw` at 0xb3315e4 loads 4 bytes from [0x1020]:8 +0xa0bc.
  The `lw` at 0xb3315ec loads 4 bytes from [0x1020]:8 +0xa0c0.
  The `lw` at 0xb3315f4 loads 4 bytes from [0x1020]:8 +0xa0c4.
  The `lw` at 0xb3315fc loads 4 bytes from [0x1020]:8 +0xa0c8.
  The `lw` at 0xb331604 loads 4 bytes from [0x1020]:8 +0xa0cc.
  The `lw` at 0xb33160c loads 4 bytes from [0x1020]:8 +0xa0d0.
  The `lw` at 0xb331614 loads 4 bytes from [0x1020]:8 +0xa0d4.
  2 such `lbu` accesses load 1 byte from [0x1020]:8 +0xdec, including `lbu` at 0xb331620, `lbu` at 0xb331898.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0xb331668, `lw` at 0xb3317b4, `lw` at 0xb3318bc.
  4 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xf4c, including `lwc1` at 0xb331678, `lwc1` at 0xb331694, `lwc1` at 0xb3316b4.
  25 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xb331680, `swc1` at 0xb3316a0, `swc1` at 0xb3316c0.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0xb331684, `lw` at 0xb3318d0.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0xb3316a4, `lw` at 0xb3318b0.
  The `lw` at 0xb3316c4 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `swc1` at 0xb33180c stores 4 bytes to table(0xbc3c) +0x0.
  2 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xbc3c, including `lwc1` at 0xb331828, `lwc1` at 0xb331830.
  2 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xbc40, including `lwc1` at 0xb33183c, `lwc1` at 0xb331844.
  The `lw` at 0xb331860 loads 4 bytes from [0x1020]:8 +0xcad0.
  The `jalr` at 0xb33185c calls __glOdysseySetProgram [0xb3929a0] with a0=[0x1020]:8, a1=[[0x1020]:8+51920], a2=0xffffffffd080c400, a3=table(0x10000), a5=0x39, a6=0x10000.
  The `bne` branch at 0xb331544 targets 0xb331744, is taken when a1 < 0x1600 (unsigned), and falls through when a1 >= 0x1600 (unsigned).
  The `beq` branch at 0xb33154c targets 0xb331778, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xb331574 targets 0xb331590, is taken when v1(=[[0x1020]:8+48216]) == 0, and falls through when v1(=[[0x1020]:8+48216]) != 0.
  The `beq` branch at 0xb331650 targets 0xb33172c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xb331658 targets 0xb3316f8 and is always taken.
  The `beq` branch at 0xb3316f0 targets 0xb33172c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xb331708 targets 0xb3316e4, is taken when (a6(?) & s0(?)) == 0, and falls through when (a6(?) & s0(?)) != 0.
  The `bne` branch at 0xb331710 targets 0xb331660, is taken when s2(=a0) != 0, and falls through when s2(=a0) == 0.
  The `beq` branch at 0xb331724 targets 0xb331668 and is always taken.
  The `bne` branch at 0xb331744 targets 0xb331768, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xb331750 targets 0xb331798, is taken when a1 >= 0x1202 (unsigned), and falls through when a1 < 0x1202 (unsigned).
  The `beq` branch at 0xb331760 targets 0xb331560 and is always taken.
  The `beq` branch at 0xb331768 targets 0xb331880, is taken when a1 == v0(=0x1200), and falls through when a1 != v0(=0x1200).
  The `beq` branch at 0xb331770 targets 0xb331560 and is always taken.
  The `bne` branch at 0xb331778 targets 0xb3317a8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xb331780 targets 0xb33186c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xb331790 targets 0xb331560 and is always taken.
  The `beq` branch at 0xb331798 targets 0xb33188c, is taken when a1 == at(=0x1202), and falls through when a1 != at(=0x1202).
  The `beq` branch at 0xb3317a0 targets 0xb331560 and is always taken.
  The `bne` branch at 0xb3317ac targets 0xb331560, is taken when a1 != v0(=0x1601), and falls through when a1 == v0(=0x1601).
  The `bc1f` branch at 0xb3317cc targets 0xb3317e0, is taken when not (f4 < f5(=0x4004000000000000) (c.lt.d at 0xb3317c8)), and falls through when f4 < f5(=0x4004000000000000) (c.lt.d at 0xb3317c8).
  The `beq` branch at 0xb331864 targets 0xb331560 and is always taken.
  The `beq` branch at 0xb33186c targets 0xb331898, is taken when a1 == at(=0x1603), and falls through when a1 != at(=0x1603).
  The `beq` branch at 0xb331878 targets 0xb331560 and is always taken.
  The `beq` branch at 0xb331884 targets 0xb331560 and is always taken.
  The `beq` branch at 0xb331890 targets 0xb331560 and is always taken.
  The `beq` branch at 0xb33189c targets 0xb3318b0, is taken when v0(=[[0x1020]:8+3564]:1) == 0, and falls through when v0(=[[0x1020]:8+3564]:1) != 0.
  The `beq` branch at 0xb3318a8 targets 0xb331560 and is always taken.
  The `beq` branch at 0xb3318b4 targets 0xb331a14, is taken when a0(=[a2+8]) == 0, and falls through when a0(=[a2+8]) != 0.
  The `beq` branch at 0xb3318c8 targets 0xb331a1c, is taken when a0(=[a2+8]) == 0, and falls through when a0(=[a2+8]) != 0.
  The `beq` branch at 0xb3318f0 targets 0xb331a24, is taken when a0(=[a2+8]) == 0, and falls through when a0(=[a2+8]) != 0.
  The `beq` branch at 0xb33193c targets 0xb331a2c, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0xb331970 targets 0xb331a40, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0xb3319a8 targets 0xb331a54, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0xb3319e0 targets 0xb331a68, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0xb331a0c targets 0xb3318a4 and is always taken.
  The `beq` branch at 0xb331a14 targets 0xb3318c0 and is always taken.
  The `beq` branch at 0xb331a1c targets 0xb3318ec and is always taken.
  The `beq` branch at 0xb331a24 targets 0xb331910 and is always taken.
  The `beq` branch at 0xb331a38 targets 0xb331950 and is always taken.
  The `beq` branch at 0xb331a4c targets 0xb331988 and is always taken.
  The `beq` branch at 0xb331a60 targets 0xb3319c0 and is always taken.
  The `beq` branch at 0xb331a74 targets 0xb3319f8 and is always taken.
  The return at 0xb33173c has v0 = one of [[0x1020]:8+41160], ?.

- `LoadAndSendStippledQuads` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb334010 (n64).
  This is the n64 build of the stippled-quad routine. It calls ceil at 0xb334060, 0xb33408c, 0xb3340c4 and 0xb334570, and memset at 0xb334688. Its return value is either a ceil result or an unresolved value. The shape matches the o32 and n32 builds, so the three are probably one routine for three ABIs.
  Grade: inferred.
  Reviewed: 2026-11-12

- `DrawBitmapUsingPolyStipple` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb334830 (n64).
  This is the n64 build of the polygon-stipple bitmap routine. It calls __glOdysseyUpdateRasterPos (0xb3349b8), __glOdysseyImageCalcOdyEyeSpaceRasterPosZ (0xb3349c4), __glSetError (0xb334fb4) and __glOdysseyIoctl (0xb335038). Like the n32 build at 0xda50370, it has a run of thirty-five indirect calls with unresolved targets (0xb334f10 to 0xb3352a0). Its return value is unresolved, [a0+48208] or the __glSetError result.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb335390 (n64).
  Appends a four-word record (a header constant followed by the arguments a0, a1 and a2) at the position
  held in the doubleword at absolute 0x1058, after making sure the word at 0x1048 allows it, and sets a
  flag bit in a structure reached through the doubleword at 0x1020.
  The flag: the word at offset 0x15ec from the doubleword at 0x1020 is loaded at 0xb33539c, ORed with
  0x10000 and stored back by the `sw` at 0xb3353a8.
  Before the check the routine computes a pad of 1 or 0: 1 when bit 0x4 of the 0x1058 doubleword is set
  and the word at 0x1060 is zero, otherwise 0. The `beq` at 0xb3353dc is taken, straight to the record
  stores, when the 0x1048 word is at least that pad plus 4 (signed compare); otherwise `__glSPDlistSpace`
  is called with a0 zero (`jalr` at 0xb3353f8) after the arguments are parked in the frame.
  Inferred: the 0x1048 word is a count of remaining words and the pad is one word that rounds the record
  start up to an 8-byte boundary, because the check needs the pad plus 4 words, the pad is 1 only when the
  address has bit 0x4 set, and the record stores then reduce the word by 4 plus the pad.
  A zero result (`beq` at 0xb335418) goes to the `sd` at 0xb335484, which stores the old 0x1058 doubleword
  minus 4 back to 0x1058, and the `jr ra` at 0xb33549c whose delay slot `sw` at 0xb3354a0 stores the 0x1048
  word plus 1; no record is written on that path and v0 holds the callee's zero.
  A nonzero result reloads the 0x1058 doubleword (0xb335420) and sets the pad to 1 if bit 0x4 of it is set,
  keeping the earlier pad otherwise, then joins the direct path.
  The record starts at the 0x1058 doubleword plus 4 times the pad, not at the doubleword itself: the
  stores at 0xb335444, 0xb335448 and 0xb335450 put a2, a1 and a0 at +0xc, +0x8 and +0x4, and the `sw` at
  0xb335458 puts 0xffffffffc580cc0b (0xc580 and 0xcc0b built at 0xb33544c and 0xb335454) at +0x0.
  Afterwards the `sw` at 0xb335460 stores the 0x1048 word, or the callee result when the call ran, minus
  the pad minus 4; the `sd` at 0xb335468 stores the record address plus 0x10 into 0x1058; and the `sw` at
  0xb335480, which runs in the delay slot of the `jr ra` at 0xb33547c, raises the word at 0x1060 by 4.
  Per the existing note on `__glSPDlistSpace`, that callee reads the doubleword at 0x1020 and then makes
  an indirect call at 0x328fda0.
  Unknown: the target of that indirect call at 0x328fda0, whose result picks the zero or nonzero path in
  this routine; the entry for `__glSPDlistSpace` itself would settle it.
  Evidence grade: inferred.

- `__glOdylc_Color3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb335c70 (n64).
  The routine is 276 bytes long and makes one call, to __glSPDlistSpace (0xb335cd8), which is conditional on a compare against the value at abs 0x1048. Its return value is either that loaded value or the __glSPDlistSpace result. The name suggests a color setter that is compiled into a display list, and the single space-reservation call is consistent with that reading, but the facts do not show what is stored.
  Grade: inferred.
  Reviewed: 2026-11-12

## `__glOdylc_Color3us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb336300`
`__glOdylc_Color3us` (276 bytes) calls `__glSPDlistSpace` with a0 zero (`jalr` at 0xb336368), but only when the signed test at 0xb33634c on the word at abs 0x1048 falls through. A zero result goes to 0xb3363f4 and is returned at 0xb33640c. Otherwise, and when the call is skipped, it falls to a run of stores: four word stores at 0xb3363b4 to 0xb3363c8, a word store at 0xb3363d0 and a doubleword store at 0xb3363d8. The facts do not resolve their destinations, so they are not shown to land in the space the call returned. The return at 0xb3363ec is either the word at abs 0x1048 (call skipped) or the call's result. Role (from name): a color setter taking an unsigned-short triple; the facts show the reserve-then-store shape, not the operand layout. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb336530`
`__glOdylc_Color4b` (288 bytes) has the same shape as the Color3us entry above, with the call at
0xb33659c. The byte-sized operands come from the name only. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdylc_Color4b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb336530 (n64)
  **Inferred.** Compares [0x1048] with another value (signed) at 0xb33657c. When it is below that value it calls `__glSPDlistSpace` at 0xb33659c with a0 = 0 and the other arguments as at entry. A nonzero result continues to stores at 0xb3365ec to 0xb336614 and a return of [0x1048] or the `__glSPDlistSpace` result. A zero result stores at 0xb336630 and returns the `__glSPDlistSpace` result without those stores. Role (from name): the symbol suggests a display-list compile of glColor4b, which the facts do not show.
  Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb336c30`
`__glOdylc_Color4i` (288 bytes) matches the reserve-then-store shape, with the reservation call at
0xb336c9c. The signed-int operands come from the name only. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb336e70`
`__glOdylc_Color4s` (288 bytes) matches the same shape, with the reservation call at 0xb336edc.
The short operands come from the name only. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb3370b0`
`__glOdylc_Color4ub` (288 bytes) matches the same shape, with the reservation call at 0xb33711c.
The unsigned-byte operands come from the name only. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb3372f0`
`__glOdylc_Color4ui` (288 bytes) matches the same shape, with the reservation call at 0xb33735c.
The unsigned-int operands come from the name only. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb337530`
`__glOdylc_Color4us` (288 bytes) matches the same shape, with the reservation call at 0xb33759c.
The unsigned-short operands come from the name only. Grade: inferred.

Reviewed: 2026-11-12

- `Store` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb338190 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb338190-0xb33822c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xb338190 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0xb338198 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xb3381a4 loads 4 bytes from [a0]:8 +0x7d4.
  The `lwc1` at 0xb3381ac loads 4 bytes from [a0]:8 +0x7d0.
  The `lw` at 0xb3381b4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xb3381bc loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xb3381c0 loads 4 bytes from [a0]:8 +0xf30.
  The `lwc1` at 0xb3381cc loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xb3381d8 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb3381ec loads 4 bytes from [a0]:8 +0xfb8.
  The `jalr` at 0xb338214 calls fprintf with a0=sym(__iob)+64, a1=0xb4a8000, a2=?, a3=?, a6=[[a0]:8+4028], a7=0x197208.
  The return at 0xb338224 has v0 = ret(fprintf).

- `Pick` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb338230 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb338230-0xb338238 (8 bytes).
  It occupies 8 bytes.
  The return at 0xb338230 has v0 = ?.

- `Fetch` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb338240 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb338240-0xb338248 (8 bytes).
  It occupies 8 bytes.
  The return at 0xb338240 has v0 = ?.

- `StoreStippledSpan` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb338250 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb338250-0xb338388 (312 bytes).
  It occupies 312 bytes.
  The `ld` at 0xb338274 loads 8 bytes from a0 (arg0 at entry) +0x9908.
  The `lw` at 0xb338278 loads 4 bytes from a0 (arg0 at entry) +0x9818.
  The `lw` at 0xb33827c loads 4 bytes from a0 (arg0 at entry) +0x97e8.
  The `ld` at 0xb33828c loads 8 bytes from a0 (arg0 at entry) +0x9918.
  The `ld` at 0xb338294 loads 8 bytes from a0 (arg0 at entry) +0x98f8.
  The `lw` at 0xb3382a0 loads 4 bytes from a0 (arg0 at entry) +0x97e4.
  The `lw` at 0xb3382f4 loads 4 bytes from ?.
  The `lwc1` at 0xb338330 loads 4 bytes from ?.
  The `ld` at 0xb338338 loads 8 bytes from [a0+39192]:8 +0xe0.
  The `jalr` at 0xb338340 calls (unknown callee) with a0=[a0+39192]:8, a1=sp-176, a2=?, a3=?.
  The `beq` branch at 0xb33829c targets 0xb338364, is taken when s7(=[a0+38936]) == 0, and falls through when s7(=[a0+38936]) != 0.
  The `beq` branch at 0xb3382b4 targets 0xb3382d4 and is always taken.
  The `beq` branch at 0xb3382d0 targets 0xb338350, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bltz` branch at 0xb3382f8 targets 0xb3382d0, is taken when s3(?) < 0 (signed), and falls through when s3(?) >= 0 (signed).
  The `beq` branch at 0xb338308 targets 0xb33831c and is always taken.
  The `beq` branch at 0xb338314 targets 0xb3382c0, is taken when s3(?) == s5(=-0x1), and falls through when s3(?) != s5(=-0x1).
  The `beq` branch at 0xb338324 targets 0xb338310, is taken when (s4(?) & s0(?)) == 0, and falls through when (s4(?) & s0(?)) != 0.
  The `beq` branch at 0xb338348 targets 0xb338314 and is always taken.
  The return at 0xb338380 has v0 = 0x0.
  The instructions from 0xb3382bc to 0xb3382bc are not reached by any path from the entry, and their branches are not listed.

- `StoreSpan` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb338390 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb338390-0xb33843c (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xb3383a4 loads 4 bytes from a0 (arg0 at entry) +0x9818.
  The `lw` at 0xb3383a8 loads 4 bytes from a0 (arg0 at entry) +0x97e8.
  The `lw` at 0xb3383b4 loads 4 bytes from a0 (arg0 at entry) +0x97e4.
  The `ld` at 0xb3383d8 loads 8 bytes from a0 (arg0 at entry) +0x9918.
  The `ld` at 0xb3383e0 loads 8 bytes from a0 (arg0 at entry) +0x98f8.
  The `lwc1` at 0xb3383f0 loads 4 bytes from ?.
  The `ld` at 0xb3383f8 loads 8 bytes from [a0+39192]:8 +0xe0.
  The `jalr` at 0xb338408 calls (unknown callee) with a0=[a0+39192]:8, a1=sp-128, a2=?, a3=?.
  The `beq` branch at 0xb3383dc targets 0xb33841c, is taken when s0(=[a0+38884]) >= s5(=([a0+38884] + [a0+38936])) (signed), and falls through when s0(=[a0+38884]) < s5(=([a0+38884] + [a0+38936])) (signed).
  The `bnel` branch at 0xb338410 targets 0xb3383f0, is taken when s5(=([a0+38884] + [a0+38936])) != s0(?), and falls through when s5(=([a0+38884] + [a0+38936])) == s0(?); its branch-likely delay slot `sw s0,0(sp)` at 0xb338414 runs only when taken and is annulled on fall-through.
  The return at 0xb338434 has v0 = 0x0.

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb338560`
`__glOdyim_Clear` (1644 bytes) calls `__glSetError` with 0x502 (GL_INVALID_OPERATION) at 0xb338598 when the word at abs 0x1030 is neither 0 nor 2, and with 0x501 (GL_INVALID_VALUE) at 0xb3385f0 when a0 has any bit set outside 0x4700. It also calls `__glOdysseyClear` (0xb338904, 0xb338a40), `__glOdysseySetDrawbuf` (0xb3389f8, 0xb338a5c) and `__glOdysseyIoctl` at 0xb338b60 with request 0x6f64000d, whose high half 0x6f64 is the ASCII letters "od". The facts listed here do not show the order these run in or which paths reach each call. Role (from name): the driver-side clear entry; the error codes and the `__glOdysseyClear` callee are consistent with that, and what the ioctl does is open. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb338bd0`
`__glOdysseyClear` (1860 bytes) is called from the entry above at 0xb338904 and 0xb338a40. Its one call is `__glOdysseyValidateHardware` at 0xb338fc4, made only when the word at a0+102364 is nonzero. It passes 0x10415 as a2, the word at a0+47820 as a3, and as a6 the context word at a0+40996 ORed with 0x18000. The routine returns either 0x10000 or 0x10046 at 0xb3391bc. The render does not decode the mask bits, so what gets validated is unknown. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb3396d0`
`__glOdysseyFindWindowSize` (332 bytes) makes five calls. An unnamed callee at 0xb339710 receives four stack addresses (sp-72, sp-68, sp-80, sp-76) in a1 to a4, which look like out-parameters, and a second unnamed callee at 0xb339784 receives two (sp-64, sp-60). `__glChangeWindowSize` is called at 0xb339770 and 0xb3397cc, and `__glChangeReadWindowSize` at 0xb3397ac. The calls at 0xb339770 and 0xb3397ac are made when a context word at a0+4064 or a0+4068, respectively a0+4072 or a0+4076, differs from a value the facts do not resolve. The call at 0xb3397cc is guarded by an unresolved test at 0xb3397bc and is the one that passes the words at a0+1960 and a0+1964 as a1 and a2. The routine also stores two single-precision words (offsets +0x1c674 and +0x1c678) and a byte (+0x14588) whose base the facts do not resolve. Role (from name): reads the window size and records it in the context; the facts show comparisons and change calls, not how the size is read. Grade: inferred.

Reviewed: 2026-11-12

- `ApplyViewport` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb339820 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb339820-0xb339a20 (512 bytes).
  It occupies 512 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xfe4, including `lw` at 0xb33984c, `lw` at 0xb339860, `lw` at 0xb3399ac.
  The `lw` at 0xb339868 loads 4 bytes from a0 (arg0 at entry) +0x7a4.
  The `lw` at 0xb339870 loads 4 bytes from a0 (arg0 at entry) +0x7a0.
  The `lw` at 0xb339878 loads 4 bytes from a0 (arg0 at entry) +0x7ac.
  The `lw` at 0xb33987c loads 4 bytes from a0 (arg0 at entry) +0x7a8.
  The `lw` at 0xb339884 loads 4 bytes from a0 (arg0 at entry) +0xfe0.
  The `lwc1` at 0xb339890 loads 4 bytes from a0 (arg0 at entry) +0xf30.
  The `lwc1` at 0xb339898 loads 4 bytes from a0 (arg0 at entry) +0xfc8.
  The `lwc1` at 0xb3398ac loads 4 bytes from a0 (arg0 at entry) +0x228.
  The `lwc1` at 0xb3398d0 loads 4 bytes from a0 (arg0 at entry) +0xfc4.
  The `swc1` at 0xb3398e4 stores 4 bytes to a0 (arg0 at entry) +0x228.
  The `swc1` at 0xb3398f4 stores 4 bytes to a0 (arg0 at entry) +0x7c8.
  The `swc1` at 0xb339904 stores 4 bytes to a0 (arg0 at entry) +0x7cc.
  The `ld` at 0xb339924 loads 8 bytes from a0 (arg0 at entry) +0x46a8.
  The `lbu` at 0xb339950 loads 1 byte from a0 (arg0 at entry) +0x9668.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x9668, including `sb` at 0xb339984, `sb` at 0xb339994.
  The `sw` at 0xb33999c stores 4 bytes to abs 0x1030.
  The `lw` at 0xb3399a0 loads 4 bytes from a0 (arg0 at entry) +0x456c.
  The `sw` at 0xb3399a8 stores 4 bytes to a0 (arg0 at entry) +0x456c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xbc50, including `lw` at 0xb3399b4, `lw` at 0xb339a10.
  The `lw` at 0xb3399bc loads 4 bytes from a0 (arg0 at entry) +0xbc58.
  The `sw` at 0xb3399d8 stores 4 bytes to a0 (arg0 at entry) +0xbc50.
  The `sw` at 0xb3399e8 stores 4 bytes to a0 (arg0 at entry) +0xbc58.
  6 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xb3399ec, `sw` at 0xb3399f4, `sw` at 0xb3399fc.
  The `bgezall` at 0xb339848 calls __glOdysseyFindWindowSize [0xb3396d0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb339858 calls __glUpdateViewport [0xb4673f0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xb339900 calls __glOdysseyImageDescribeWindow [0xb35a420] with a0=a0+82424, a1=0x0, a2=[a0+1956], a3=[a0+4068].
  The `jalr` at 0xb33991c calls __glOdysseyImageDescribeWindow [0xb35a420] with a0=a0+82488, a1=0x1, a2=?, a3=?.
  The `jalr` at 0xb339928 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bltz` branch at 0xb33994c targets 0xb339990, is taken when a1(=[a0+1952]) < 0 (signed), and falls through when a1(=[a0+1952]) >= 0 (signed).
  The `bltz` branch at 0xb339958 targets 0xb339990, is taken when a1(=[a0+1956]) < 0 (signed), and falls through when a1(=[a0+1956]) >= 0 (signed).
  The `bne` branch at 0xb339968 targets 0xb339990, is taken when at(=[a0+4064]) < v0(=([a0+1960] + [a0+1952])) (signed), and falls through when at(=[a0+4064]) >= v0(=([a0+1960] + [a0+1952])) (signed).
  The `bne` branch at 0xb339978 targets 0xb339990, is taken when v1(=[a0+4068]) < a1(=([a0+1964] + [a0+1956])) (signed), and falls through when v1(=[a0+4068]) >= a1(=([a0+1964] + [a0+1956])) (signed).
  The `beq` branch at 0xb339980 targets 0xb3399ac, is taken when a2(=[a0+38504]:1) == a3(=0x1), and falls through when a2(=[a0+38504]:1) != a3(=0x1).
  The `beq` branch at 0xb339988 targets 0xb33999c and is always taken.
  The `beq` branch at 0xb339990 targets 0xb3399ac, is taken when a2(=[a0+38504]:1) == 0, and falls through when a2(=[a0+38504]:1) != 0.
  The `beq` branch at 0xb3399e0 targets 0xb339a08, is taken when v1(=[a0+48216]) == 0, and falls through when v1(=[a0+48216]) != 0.
  The return at 0xb339a18 has v0 = 0x10443.

- `ApplyScissor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb339bc0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb339bc0-0xb339d54 (404 bytes).
  It occupies 404 bytes.
  The `lw` at 0xb339bc0 loads 4 bytes from a0 (arg0 at entry) +0xfb8.
  The `lw` at 0xb339bc8 loads 4 bytes from a0 (arg0 at entry) +0xfbc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x95dc, including `lw` at 0xb339bd8, `lw` at 0xb339cb8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x95d0, including `lw` at 0xb339be4, `lw` at 0xb339c78.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x95d4, including `lw` at 0xb339bf4, `lw` at 0xb339ccc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x95d8, including `lw` at 0xb339c04, `lw` at 0xb339c68.
  The `sw` at 0xb339c3c stores 4 bytes to a0 (arg0 at entry) +0x18ce0.
  The `sw` at 0xb339c50 stores 4 bytes to a0 (arg0 at entry) +0x18cdc.
  The `sb` at 0xb339c60 stores 1 byte to a0 (arg0 at entry) +0x18ce4.
  The `lw` at 0xb339c64 loads 4 bytes from a0 (arg0 at entry) +0x95e0.
  The `lw` at 0xb339c70 loads 4 bytes from a0 (arg0 at entry) +0x95e8.
  The `swc1` at 0xb339c7c stores 4 bytes to a0 (arg0 at entry) +0x14290.
  The `swc1` at 0xb339c90 stores 4 bytes to a0 (arg0 at entry) +0x14294.
  The `swc1` at 0xb339c9c stores 4 bytes to a0 (arg0 at entry) +0x14298.
  The `lw` at 0xb339ca8 loads 4 bytes from a0 (arg0 at entry) +0x95ec.
  The `swc1` at 0xb339cc0 stores 4 bytes to a0 (arg0 at entry) +0x1429c.
  The `lw` at 0xb339cdc loads 4 bytes from a0 (arg0 at entry) +0x18fe0.
  The `lw` at 0xb339ce4 loads 4 bytes from a0 (arg0 at entry) +0x95e4.
  The `sw` at 0xb339d20 stores 4 bytes to a0 (arg0 at entry) +0x18fe0.
  The `sw` at 0xb339d2c stores 4 bytes to a0 (arg0 at entry) +0x18cd4.
  The `sw` at 0xb339d3c stores 4 bytes to a0 (arg0 at entry) +0x18cd8.
  The `sw` at 0xb339d48 stores 4 bytes to abs 0x1030.
  The `bne` branch at 0xb339c4c targets 0xb339c60, is taken when a4(?) < t0(?) (signed), and falls through when a4(?) >= t0(?) (signed).
  The `beq` branch at 0xb339c58 targets 0xb339d4c, is taken when a3(?) >= a2(?) (signed), and falls through when a3(?) < a2(?) (signed).
  The `beq` branch at 0xb339d4c targets 0xb339c60 and is always taken.
  The return at 0xb339d44 has v0 = 0x2.

- `InitBuffers` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb33b6b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb33b6b0-0xb33b8b4 (516 bytes).
  It occupies 516 bytes.
  The `sd` at 0xb33b6c8 stores 8 bytes to a0 (arg0 at entry) +0x9a28.
  The `lbu` at 0xb33b6cc loads 1 byte from a0 (arg0 at entry) +0xdee.
  The `sd` at 0xb33b6e4 stores 8 bytes to a0 (arg0 at entry) +0x4578.
  The `sd` at 0xb33b6e8 stores 8 bytes to a0 (arg0 at entry) +0x9a30.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xded, including `lbu` at 0xb33b6ec, `lbu` at 0xb33b770, `lbu` at 0xb33b838.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x4570, including `sd` at 0xb33b6f8, `sd` at 0xb33b844.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x9a30, including `ld` at 0xb33b718, `ld` at 0xb33b87c.
  The `lw` at 0xb33b720 loads 4 bytes from a0 (arg0 at entry) +0xe38.
  The `ld` at 0xb33b774 loads 8 bytes from a0 (arg0 at entry) +0x9cd8.
  The `lbu` at 0xb33b79c loads 1 byte from a0 (arg0 at entry) +0xdf0.
  The `sw` at 0xb33b7a4 stores 4 bytes to a0 (arg0 at entry) +0x1460.
  The `sb` at 0xb33b7b0 stores 1 byte to a0 (arg0 at entry) +0x145c.
  The `lbu` at 0xb33b7d0 loads 1 byte from a0 (arg0 at entry) +0xdf1.
  The `sw` at 0xb33b7f4 stores 4 bytes to a0 (arg0 at entry) +0x9e34.
  The `lbu` at 0xb33b7f8 loads 1 byte from a0 (arg0 at entry) +0xdf2.
  The `bgezall` at 0xb33b704 calls __glOdysseyInitCI [0xb338440] with a0=a0+39480, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39480.
  The `bgezall` at 0xb33b714 calls __glOdysseyInitCI [0xb338440] with a0=[a0+39472]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `bgezall` at 0xb33b754 calls __glOdysseyInitCI [0xb338440] with a0=?, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=?.
  The `jalr` at 0xb33b784 calls __glOdysseyInitRGB [0xb393720] with a0=?, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=?.
  The `jalr` at 0xb33b7c0 calls __glOdysseyInitAccum [0xb32ad90] with a0=a0+40584, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xb33b7e4 calls __glInitDepth [0xb3fc0a0] with a0=a0+40376, a1=a0 at entry (arg0), a2=[a0+3569]:1, a3=?.
  The `jalr` at 0xb33b80c calls __glInitStencil8 [0xb434f40] with a0=a0+40160, a1=a0 at entry (arg0), a2=[a0+3570]:1, a3=?.
  The `jalr` at 0xb33b818 calls __glUpdateDepthRange [0xb466170] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0xb33b850 calls __glOdysseyInitCI [0xb338440] with a0=a0+39480, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=a0+39480.
  The `jalr` at 0xb33b868 calls __glOdysseyInitRGB [0xb393720] with a0=a0+39480, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39480.
  The `jalr` at 0xb33b878 calls __glOdysseyInitRGB [0xb393720] with a0=[a0+39472]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xb33b8a4 calls __glOdysseyInitRGB [0xb393720] with a0=a0+39480, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=a0+39480.
  The `beq` branch at 0xb33b6e0 targets 0xb33b838, is taken when at(=[a0+3566]:1) == 0, and falls through when at(=[a0+3566]:1) != 0.
  The `beq` branch at 0xb33b6f4 targets 0xb33b860, is taken when at(=[a0+3565]:1) == 0, and falls through when at(=[a0+3565]:1) != 0.
  The `blez` branch at 0xb33b724 targets 0xb33b79c, is taken when a0(=[a0+3640]) <= 0 (signed), and falls through when a0(=[a0+3640]) > 0 (signed).
  The `beq` branch at 0xb33b748 targets 0xb33b770 and is always taken.
  The `beq` branch at 0xb33b760 targets 0xb33b794, is taken when s2(?) == s4(=((((([a0+3640] << 0x2) + [a0+3640]) << 0x2) + [a0+3640]) << 0x4)), and falls through when s2(?) != s4(=((((([a0+3640] << 0x2) + [a0+3640]) << 0x2) + [a0+3640]) << 0x4)).
  The `bne` branch at 0xb33b778 targets 0xb33b750, is taken when a2(=[a0+3565]:1) != 0, and falls through when a2(=[a0+3565]:1) == 0.
  The `beq` branch at 0xb33b78c targets 0xb33b760 and is always taken.
  The `beq` branch at 0xb33b7ac targets 0xb33b7d0, is taken when v0(=[a0+3568]:1) == 0, and falls through when v0(=[a0+3568]:1) != 0.
  The `beq` branch at 0xb33b7c8 targets 0xb33b888, is taken when v0(=ret(__glOdysseyInitAccum)) == 0, and falls through when v0(=ret(__glOdysseyInitAccum)) != 0.
  The `beq` branch at 0xb33b7d4 targets 0xb33b7ec, is taken when a2(=[a0+3569]:1) == 0, and falls through when a2(=[a0+3569]:1) != 0.
  The `beq` branch at 0xb33b7fc targets 0xb33b814, is taken when a2(=[a0+3570]:1) == 0, and falls through when a2(=[a0+3570]:1) != 0.
  The `beq` branch at 0xb33b840 targets 0xb33b89c, is taken when a2(=[a0+3565]:1) == 0, and falls through when a2(=[a0+3565]:1) != 0.
  The `beq` branch at 0xb33b858 targets 0xb33b720 and is always taken.
  The `beq` branch at 0xb33b880 targets 0xb33b720 and is always taken.
  The `beq` branch at 0xb33b8ac targets 0xb33b720 and is always taken.
  The return at 0xb33b830 has v0 = 0x1.
  The return at 0xb33b894 has v0 = 0x0.

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb33d4e0`
`__glOdysseyInitDefaultValues` (3472 bytes) has 89 call sites. One is `bzero` at 0xb33d74c with a1 = 0x40 over a0+45072. Eighty-one go to `__glOdyim_*` entry points (Disable, Enable, Materialfv, FragmentLightfvSGIX and others), using enum-like constants such as 0xb50 (GL_LIGHTING), 0xb71 (GL_DEPTH_TEST) and 0xb10 (GL_POINT_SMOOTH), each passed to `__glOdyim_Disable`. One is `__glim_PolygonStipple`. The rest are `__glOdysseyImageInit` (0xb33d9e0, early in the routine), `__glOdysseyInitLighting` (0xb33e014), `__glOdysseyInitFragmentLighting`, `__glOdysseyInitFragmentMaterial`, `__glOdysseyTextureDriverInit` and a `getenv` at 0xb33e164 whose string argument is not decoded. A few groups of calls are guarded by byte flags at a0+3564 and a0+3566. Role (from name): sets the context's default state; the constants match standard OpenGL enum values, but the render does not show what each setter stores. Grade: inferred.

Reviewed: 2026-11-12

- `LoseCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb33f430 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb33f430-0xb33f52c (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xb33f434 loads 4 bytes from a0 (arg0 at entry) +0xddc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xb33f458, `lw` at 0xb33f47c.
  The `sw` at 0xb33f484 stores 4 bytes to a0 (arg0 at entry) +0xdd8.
  The `sd` at 0xb33f490 stores 8 bytes to abs 0x1020.
  The `ld` at 0xb33f494 loads 8 bytes from a0 (arg0 at entry) +0x1ae0.
  The `ld` at 0xb33f4cc loads 8 bytes from ?.
  The `sd` at 0xb33f4d8 stores 8 bytes to ?.
  The `lw` at 0xb33f4dc loads 4 bytes from a0 (arg0 at entry) +0x1548.
  The `lw` at 0xb33f4e8 loads 4 bytes from abs 0x1048.
  The `sw` at 0xb33f4ec stores 4 bytes to a0 (arg0 at entry) +0x15c0.
  The `ld` at 0xb33f4f0 loads 8 bytes from abs 0x1050.
  The `sd` at 0xb33f4f4 stores 8 bytes to a0 (arg0 at entry) +0x15c8.
  The `ld` at 0xb33f4f8 loads 8 bytes from abs 0x1058.
  The `sd` at 0xb33f4fc stores 8 bytes to a0 (arg0 at entry) +0x15d0.
  The `lw` at 0xb33f500 loads 4 bytes from abs 0x1060.
  The `sw` at 0xb33f504 stores 4 bytes to a0 (arg0 at entry) +0x15d8.
  The `jalr` at 0xb33f470 calls __glLoseCurrentBuffers [0xb3f8a30] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xb33f48c calls FastDispatchInstall [0xb33b0e0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xb33f450 targets 0xb33f518, is taken when at(=[a0+3548]) != v0(=0x1c00), and falls through when at(=[a0+3548]) == v0(=0x1c00).
  The `beq` branch at 0xb33f460 targets 0xb33f518, is taken when a1(=[0x1030]) == at(=0x1), and falls through when a1(=[0x1030]) != at(=0x1).
  The `beq` branch at 0xb33f4b0 targets 0xb33f4dc, is taken when at(=a0+10520) == a5(=[a0+6880]:8), and falls through when at(=a0+10520) != a5(=[a0+6880]:8).
  The `bgtz` branch at 0xb33f4d4 targets 0xb33f4c0, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The `beq` branch at 0xb33f4e0 targets 0xb33f50c, is taken when v1(=[a0+5448]) == 0, and falls through when v1(=[a0+5448]) != 0.
  The return at 0xb33f510 has v0 = 0x1.
  The return at 0xb33f524 has v0 = 0x0.

- `MakeCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb33f530 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb33f530-0xb33f59c (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0xb33f544 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `ld` at 0xb33f55c loads 8 bytes from a0 (arg0 at entry) +0x80.
  The `jalr` at 0xb33f554 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb33f564 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0xb33f57c calls MakeCurrentRead [0xb33e8c0] with a0=a0 at entry (arg0), a1=ret(?), a2=ret(?), a3=?.
  The return at 0xb33f594 has v0 = ret(MakeCurrentRead).

- `__glsplc_Begin` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb345840 (n64).
  Makes no device access of its own: it works on the context pointer at absolute 0x1020 and on the
  fixed-address words 0x1048, 0x1058 and 0x1060, either by reusing the previous record or by allocating a
  new one, and then appends a three-word record at the cursor in the doubleword at 0x1058.
  The reuse test (branches 0xb345868 to 0xb3458dc) needs all of: the byte at context +0x1905c nonzero, the
  word at +0x19060 equal to 1, the word at 0x1060 zero, the word at +0x15f8 at least 3, the doubleword in
  the 16-byte table entry (table at +0x15f0, index that word minus 2) equal to the doubleword at +0x15b8,
  and the doubleword in entry index minus 1 equal to the doubleword at +0xb0 of the pointer at +0x15b0.
  Any failure goes to the allocation at 0xb345928, which calls `__glSPDlalloc` with 8, 3 and the context
  in `a3`. A zero return leaves at once with `v0` zero (0xb345998). Otherwise the saved entry argument `a0` is
  stored as the first word of the returned record (the `sw` at 0xb345940). The word at +0x19060 is then
  read: above zero, it is cleared and the byte at +0x1905c set to 1 (0xb345950, 0xb345954); zero or below,
  the byte is cleared (0xb3459a4). Next the byte at +0x19054 is tested (0xb345960). If it is nonzero, the
  words at +0x19004, +0x1900c and +0x19014 get 0x7f7fffff and those at +0x19008, +0x19010 and +0x19018 get
  0xff7fffff, from the literal pool words at 0xb4cfaac and 0xb4cfab0 (stores 0xb345968 to 0xb34597c). The
  routine then returns with `v0` not set by it.
  When the reuse test passes, the entry's pointer at +8 gives a record whose first word is a count; if that
  record's end (pointer plus 8 plus 4 per count) equals the cursor at 0x1058 (0xb3458fc), the cursor drops
  by 4 (the `sd` at 0xb3459b0), the word at 0x1060 gets the count added (the `sw` at 0xb3459c8) and the word
  at 0x1048 gets 1 added in the delay slot of the `RemoveIlists` call with 2 (0xb3459d0). If the ends differ,
  `RemoveIlists` is called with 1 (0xb34590c) and the count update is skipped. Both then join at 0xb3459dc.
  The join reads the cursor, the word at 0x1060 and the word at 0x1048. It needs 3 words of room, or 4 when
  bit 4 of the cursor is set and the word at 0x1060 is zero. When the word at 0x1048 is smaller than that
  (the `bnez` at 0xb3459fc), it calls `__glSPDlistSpace` with a0 zero (0xb345a5c). A zero return stores the
  cursor minus 4 to 0x1058, adds 1 to 0x1048 and returns with `v0` zero (0xb345aa8). A nonzero return rechecks
  the cursor bit and retries the room test at 0xb345a00.
  With enough room the three words 0x10001, 0x10400 and the saved entry argument go to cursor +0, +4 and +8,
  the cursor store at 0xb345a2c moves the cursor on by 0xc (plus 4 when the room test allowed for the extra
  word), 0x1048 drops by the allowance plus 3, 0x1060 gains 3 and the word at context +0x19060 is cleared
  (the `sw` at 0xb345a4c); it then falls into the float-limit test above.
  Inferred: the committed entry for `__glSPDlistSpace` reads the doubleword at absolute 0x1020 as a pointer
  to context memory, and the stores here go to ordinary words around that pointer; no linked row ties any
  of them to a device register.
  Unknown: the content and consumer of the three-word record 0x10001, 0x10400 and the entry argument; the
  committed entries for `__glSPDlalloc` and `RemoveIlists` and the reader of 0x1058 would settle it.
  Evidence grade: inferred.

- `PreEvaluate` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb346ff0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb346ff0-0xb347198 (424 bytes).
  It occupies 424 bytes.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xb347018, `swc1` at 0xb34715c, `swc1` at 0xb347184.
  6 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xb347028, `swc1` at 0xb347104, `swc1` at 0xb347118.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xb347038, `lwc1` at 0xb347070, `lwc1` at 0xb347074.
  6 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xb347050, `swc1` at 0xb34709c, `swc1` at 0xb3470a4.
  The `lwc1` at 0xb3470dc loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xb347114 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `swc1` at 0xb347140 stores 4 bytes to a2 (arg2 at entry) +0xc.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xb347150, `swc1` at 0xb347170.
  The `beq` branch at 0xb346ff4 targets 0xb347124, is taken when a0 == at(=0x4), and falls through when a0 != at(=0x4).
  The `beq` branch at 0xb347000 targets 0xb347160, is taken when a0 == v0(=0x3), and falls through when a0 != v0(=0x3).
  The `beq` branch at 0xb347008 targets 0xb347188, is taken when a0 == v1(=0x2), and falls through when a0 != v1(=0x2).
  The `beq` branch at 0xb347010 targets 0xb347118, is taken when a0 == a1(=0x1), and falls through when a0 != a1(=0x1).
  The `bne` branch at 0xb347024 targets 0xb34711c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xb347030 targets 0xb3470dc and is always taken.
  The `bne` branch at 0xb34704c targets 0xb347038, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xb347058 targets 0xb3470bc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xb3470b0 targets 0xb347070, is taken when a3(?) != a4(?), and falls through when a3(?) == a4(?).
  The `beq` branch at 0xb3470d4 targets 0xb34711c, is taken when a0 == a5(?), and falls through when a0 != a5(?).
  The `bne` branch at 0xb347100 targets 0xb3470c0, is taken when a5(?) < 0x2 (signed), and falls through when a5(?) >= 0x2 (signed).
  The `beq` branch at 0xb347108 targets 0xb347054, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xb347110 targets 0xb34703c and is always taken.
  The return at 0xb34711c has v0 = one of 0x3, ?.
  The return at 0xb347158 has v0 = ?.
  The return at 0xb347180 has v0 = 0x3.
  The return at 0xb347190 has v0 = 0x3.

- `PreEvaluateWithDeriv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3471a0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3471a0-0xb34752c (908 bytes).
  It occupies 908 bytes.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xb3471d0, `swc1` at 0xb34749c, `swc1` at 0xb3474ec.
  7 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xb3471e0, `swc1` at 0xb3472c4, `swc1` at 0xb3473ac.
  15 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xb3471f4, `lwc1` at 0xb347230, `lwc1` at 0xb347234.
  15 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xb34720c, `swc1` at 0xb34725c, `swc1` at 0xb347264.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xb34729c, `lwc1` at 0xb3472dc, `lwc1` at 0xb347318.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xb3472d4, `lwc1` at 0xb34731c.
  5 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `swc1` at 0xb347314, `swc1` at 0xb347474, `swc1` at 0xb3474cc.
  4 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `swc1` at 0xb34732c, `swc1` at 0xb3474c0, `swc1` at 0xb347500.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xb3474a4, `swc1` at 0xb3474f4.
  The `swc1` at 0xb3474ac stores 4 bytes to a2 (arg2 at entry) +0xc.
  The `swc1` at 0xb3474b0 stores 4 bytes to a3 (arg3 at entry) +0xc.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x8, including `swc1` at 0xb3474b8, `swc1` at 0xb3474f8.
  The `beq` branch at 0xb3471a4 targets 0xb347478, is taken when a0 == at(=0x4), and falls through when a0 != at(=0x4).
  The `beq` branch at 0xb3471b0 targets 0xb3474d0, is taken when a0 == v0(=0x3), and falls through when a0 != v0(=0x3).
  The `beq` branch at 0xb3471b8 targets 0xb347510, is taken when a0 == v1(=0x2), and falls through when a0 != v1(=0x2).
  The `beq` branch at 0xb3471c0 targets 0xb34746c, is taken when a0 == a1(=0x1), and falls through when a0 != a1(=0x1).
  The `bne` branch at 0xb3471dc targets 0xb347464, is taken when a0 < 0x4 (signed), and falls through when a0 >= 0x4 (signed).
  The `beq` branch at 0xb3471ec targets 0xb34729c and is always taken.
  The `bne` branch at 0xb347208 targets 0xb3471f4, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0xb347214 targets 0xb34727c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xb347270 targets 0xb347230, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `beq` branch at 0xb347294 targets 0xb3472d8, is taken when t3(=a0-1) == a6(?), and falls through when t3(=a0-1) != a6(?).
  The `bne` branch at 0xb3472c0 targets 0xb347280, is taken when a6(?) < 0x2 (signed), and falls through when a6(?) >= 0x2 (signed).
  The `beq` branch at 0xb3472c8 targets 0xb347210, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0xb3472d0 targets 0xb3471f8 and is always taken.
  The `beq` branch at 0xb347310 targets 0xb347330, is taken when (t1(?) & 0x1) == 0, and falls through when (t1(?) & 0x1) != 0.
  The `beq` branch at 0xb347338 targets 0xb347380, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xb347378 targets 0xb347350, is taken when a0(?) < a5(=((a0-1 << 0x2) + a2)) (unsigned), and falls through when a0(?) >= a5(=((a0-1 << 0x2) + a2)) (unsigned).
  The `bne` branch at 0xb3473a8 targets 0xb347450, is taken when a6(?) < 0x2 (signed), and falls through when a6(?) >= 0x2 (signed).
  The `beq` branch at 0xb3473c0 targets 0xb3473e4, is taken when (a3(?) & 0x3) == 0, and falls through when (a3(?) & 0x3) != 0.
  The `bne` branch at 0xb3473dc targets 0xb3473c8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xb3473ec targets 0xb34744c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xb347440 targets 0xb347400, is taken when a0(?) != a5(?), and falls through when a0(?) == a5(?).
  The `beq` branch at 0xb347464 targets 0xb3472e0 and is always taken.
  The return at 0xb34745c has v0 = one of a2+4, ?.
  The return at 0xb347470 has v0 = 0x3.
  The return at 0xb3474c8 has v0 = ?.
  The return at 0xb347508 has v0 = 0x3.
  The return at 0xb347524 has v0 = 0x3.

- `DoDomain1` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb347530 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb347530-0xb347874 (836 bytes).
  It occupies 836 bytes.
  The `lwc1` at 0xb347530 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xb347534 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xb347560 loads 4 bytes from a0 (arg0 at entry) +0x438.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0xb34756c, `lw` at 0xb3475b4, `lw` at 0xb3475c4.
  The `lw` at 0xb347570 loads 4 bytes from a0 (arg0 at entry) +0x6c0.
  The `sw` at 0xb3475ac stores 4 bytes to a0 (arg0 at entry) +0x6c8.
  The `swc1` at 0xb3475b8 stores 4 bytes to a0 (arg0 at entry) +0x438.
  The `sw` at 0xb3475bc stores 4 bytes to a0 (arg0 at entry) +0x6c0.
  The `lw` at 0xb3475d4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  7 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xb347618, `swc1` at 0xb34764c, `swc1` at 0xb347718.
  13 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xb347640, `lwc1` at 0xb347644, `lwc1` at 0xb3476d0.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x444, including `lwc1` at 0xb3476d4, `lwc1` at 0xb347754, `lwc1` at 0xb3477b4.
  6 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x440, including `lwc1` at 0xb3476dc, `lwc1` at 0xb34775c, `lwc1` at 0xb3477bc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x448, including `lwc1` at 0xb3476e0, `lwc1` at 0xb347760.
  The `lwc1` at 0xb3476f0 loads 4 bytes from a0 (arg0 at entry) +0x44c.
  The `lwc1` at 0xb347804 loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `swc1` at 0xb347818 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `bgezall` at 0xb347598 calls PreEvaluate [0xb346ff0] with a0=[a2+4], a1=a1 at entry (arg1), a2=a0+1088, a3=a3 at entry (arg3).
  The `bc1t` branch at 0xb34754c targets 0xb347680, is taken when f6(=[a2+8]) == f5(=[a2+12]) (c.eq.s at 0xb34753c), and falls through when not (f6(=[a2+8]) == f5(=[a2+12]) (c.eq.s at 0xb34753c)).
  The `bc1f` branch at 0xb347568 targets 0xb34757c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xb347574 targets 0xb3475c8, is taken when at(=[a0+1728]) == a0(=[a2+4]), and falls through when at(=[a0+1728]) != a0(=[a2+4]).
  The `beq` branch at 0xb3475d0 targets 0xb347690, is taken when a0(=[a2+4]) == v0(=0x4), and falls through when a0(=[a2+4]) != v0(=0x4).
  The `beq` branch at 0xb3475dc targets 0xb347724, is taken when a2(=[a2+4]) == v1(=0x3), and falls through when a2(=[a2+4]) != v1(=0x3).
  The `beq` branch at 0xb3475e4 targets 0xb347794, is taken when a2(=[a2+4]) == a1(=0x2), and falls through when a2(=[a2+4]) != a1(=0x2).
  The `beq` branch at 0xb3475ec targets 0xb3477e4, is taken when a2(=[a2+4]) == at(=0x1), and falls through when a2(=[a2+4]) != at(=0x1).
  The `blez` branch at 0xb3475f4 targets 0xb347670, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `beq` branch at 0xb347608 targets 0xb347618 and is always taken.
  The `beq` branch at 0xb347610 targets 0xb347670, is taken when a7(?) == t0(=(([a2] << 0x2) + a4)), and falls through when a7(?) != t0(=(([a2] << 0x2) + a4)).
  The `blez` branch at 0xb347630 targets 0xb347610, is taken when v0(=[a2+4]) <= 0 (signed), and falls through when v0(=[a2+4]) > 0 (signed).
  The `bne` branch at 0xb347660 targets 0xb347640, is taken when a0(?) < v1(=[a2+4]) (signed), and falls through when a0(?) >= v1(=[a2+4]) (signed).
  The `beq` branch at 0xb347668 targets 0xb347610 and is always taken.
  The `blez` branch at 0xb347690 targets 0xb347670, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `bne` branch at 0xb347714 targets 0xb3476d0, is taken when a0(?) != a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))), and falls through when a0(?) == a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))).
  The `beq` branch at 0xb34771c targets 0xb347674 and is always taken.
  The `blez` branch at 0xb347724 targets 0xb347670, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `bne` branch at 0xb347784 targets 0xb347750, is taken when a0(?) != a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))), and falls through when a0(?) == a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))).
  The `beq` branch at 0xb34778c targets 0xb347674 and is always taken.
  The `blez` branch at 0xb347794 targets 0xb347670, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `bne` branch at 0xb3477d4 targets 0xb3477b0, is taken when a0(?) != a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))), and falls through when a0(?) == a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))).
  The `beq` branch at 0xb3477dc targets 0xb347674 and is always taken.
  The `blez` branch at 0xb3477e4 targets 0xb347670, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `beq` branch at 0xb3477fc targets 0xb34781c, is taken when (t1(=[a2]) & 0x1) == 0, and falls through when (t1(=[a2]) & 0x1) != 0.
  The `beq` branch at 0xb347824 targets 0xb34786c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xb347864 targets 0xb347840, is taken when a0(?) != t0(=(([a2] << 0x2) + a4)), and falls through when a0(?) == t0(=(([a2] << 0x2) + a4)).
  The `beq` branch at 0xb34786c targets 0xb347674 and is always taken.
  The return at 0xb347678 has v0 = one of ?, 0x4.
  The return at 0xb347688 has v0 = ?.

- `DoEvalCoord1` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb347c00 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb347c00-0xb347f54 (852 bytes).
  It occupies 852 bytes.
  The `ld` at 0xb347c3c loads 8 bytes from ?.
  The `sd` at 0xb347c48 stores 8 bytes to ?.
  The `lbu` at 0xb347c4c loads 1 byte from a0 (arg0 at entry) +0xded.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x820, including `lw` at 0xb347c54, `lw` at 0xb347ca0, `lw` at 0xb347ce4.
  The `ld` at 0xb347c80 loads 8 bytes from a0 (arg0 at entry) +0x9180.
  9 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x1ae0, including `ld` at 0xb347c90, `ld` at 0xb347cd4, `ld` at 0xb347d18.
  The `ld` at 0xb347c94 loads 8 bytes from [a0+6880]:8 +0xb98.
  The `ld` at 0xb347cc4 loads 8 bytes from a0 (arg0 at entry) +0x91a8.
  4 such `ld` accesses load 8 bytes from [a0+6880]:8 +0xcf8, including `ld` at 0xb347cd8, `ld` at 0xb347e1c, `ld` at 0xb347e80.
  The `ld` at 0xb347d08 loads 8 bytes from a0 (arg0 at entry) +0x9188.
  The `ld` at 0xb347d1c loads 8 bytes from [a0+6880]:8 +0xbf8.
  The `ld` at 0xb347d50 loads 8 bytes from a0 (arg0 at entry) +0x91b8.
  The `ld` at 0xb347d64 loads 8 bytes from [a0+6880]:8 +0xa58.
  The `ld` at 0xb347d9c loads 8 bytes from a0 (arg0 at entry) +0x91b0.
  The `ld` at 0xb347db0 loads 8 bytes from [a0+6880]:8 +0xa18.
  The `ld` at 0xb347e00 loads 8 bytes from a0 (arg0 at entry) +0x91a0.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf34, including `lwc1` at 0xb347e10, `lwc1` at 0xb347e74, `lwc1` at 0xb347f24.
  The `ld` at 0xb347e5c loads 8 bytes from a0 (arg0 at entry) +0x9198.
  The `ld` at 0xb347ec0 loads 8 bytes from a0 (arg0 at entry) +0x9178.
  The `ld` at 0xb347ed4 loads 8 bytes from [a0+6880]:8 +0xb28.
  The `ld` at 0xb347f08 loads 8 bytes from a0 (arg0 at entry) +0x9190.
  The `bgezall` at 0xb347c88 calls DoDomain1 [0xb347530] with a0=sp-1872, a1=a1 at entry (arg1), a2=a0+36552, a3=sp-128, a4=[a0+37248]:8, a5=sp-1872.
  The `jalr` at 0xb347c98 calls (unknown callee) with a0=sp-128, a1=?, a2=?, a3=?.
  The `bgezall` at 0xb347ccc calls DoDomain1 [0xb347530] with a0=sp-1872, a1=?, a2=a0+36712, a3=sp-112, a4=[a0+37288]:8.
  The `jalr` at 0xb347cdc calls (unknown callee) with a0=sp-112, a1=?, a2=?, a3=?.
  The `bgezall` at 0xb347d10 calls DoDomain1 [0xb347530] with a0=sp-1872, a1=?, a2=a0+36584, a3=sp-96, a4=[a0+37256]:8.
  The `jalr` at 0xb347d20 calls (unknown callee) with a0=sp-96, a1=?, a2=?, a3=?.
  The `bgezall` at 0xb347d58 calls DoDomain1 [0xb347530] with a0=sp-1872, a1=?, a2=a0+36776, a3=sp-80, a4=[a0+37304]:8.
  The `jalr` at 0xb347d74 calls (unknown callee) with a0=sp-80, a1=?, a2=?, a3=?.
  The `bgezall` at 0xb347da4 calls DoDomain1 [0xb347530] with a0=sp-1872, a1=?, a2=a0+36744, a3=sp-80, a4=[a0+37296]:8.
  The `jalr` at 0xb347dc0 calls (unknown callee) with a0=sp-80, a1=?, a2=?, a3=?.
  The `bgezall` at 0xb347e08 calls DoDomain1 [0xb347530] with a0=sp-1872, a1=?, a2=a0+36680, a3=sp-112, a4=[a0+37280]:8.
  The `jalr` at 0xb347e20 calls (unknown callee) with a0=sp-112, a1=?, a2=?, a3=?.
  The `bgezall` at 0xb347e64 calls DoDomain1 [0xb347530] with a0=sp-1872, a1=?, a2=a0+36648, a3=sp-112, a4=[a0+37272]:8.
  The `jalr` at 0xb347e84 calls (unknown callee) with a0=sp-112, a1=?, a2=?, a3=?.
  The `bgezall` at 0xb347ec8 calls DoDomain1 [0xb347530] with a0=sp-1872, a1=a1 at entry (arg1), a2=a0+36520, a3=sp-128, a4=[a0+37240]:8, a5=sp-1872.
  The `jalr` at 0xb347ed8 calls (unknown callee) with a0=sp-128, a1=?, a2=?, a3=?.
  The `bgezall` at 0xb347f10 calls DoDomain1 [0xb347530] with a0=sp-1872, a1=?, a2=a0+36616, a3=sp-112, a4=[a0+37264]:8.
  The `jalr` at 0xb347f34 calls (unknown callee) with a0=sp-112, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0xb347c44 targets 0xb347c30, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `beq` branch at 0xb347c50 targets 0xb347e98, is taken when v0(=[a0+3565]:1) == 0, and falls through when v0(=[a0+3565]:1) != 0.
  The `beq` branch at 0xb347c5c targets 0xb347e34, is taken when (a0(=[a0+2080]) & 0x2) == 0, and falls through when (a0(=[a0+2080]) & 0x2) != 0.
  The `beq` branch at 0xb347cac targets 0xb347de4, is taken when (a0(=[a0+2080]) & 0x40) == 0, and falls through when (a0(=[a0+2080]) & 0x40) != 0.
  The `beq` branch at 0xb347cf0 targets 0xb347d30, is taken when (a0(=[a0+2080]) & 0x4) == 0, and falls through when (a0(=[a0+2080]) & 0x4) != 0.
  The `beq` branch at 0xb347d34 targets 0xb347d84, is taken when (a0(=[a0+2080]) & 0x100) == 0, and falls through when (a0(=[a0+2080]) & 0x100) != 0.
  The `beq` branch at 0xb347d7c targets 0xb347dcc and is always taken.
  The `beq` branch at 0xb347d84 targets 0xb347dcc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xb347de8 targets 0xb347e40, is taken when (a0(=[a0+2080]) & 0x20) == 0, and falls through when (a0(=[a0+2080]) & 0x20) != 0.
  The `beq` branch at 0xb347e2c targets 0xb347cec and is always taken.
  The `beq` branch at 0xb347e38 targets 0xb347ca8 and is always taken.
  The `beq` branch at 0xb347e44 targets 0xb347eec, is taken when (a0(=[a0+2080]) & 0x10) == 0, and falls through when (a0(=[a0+2080]) & 0x10) != 0.
  The `beq` branch at 0xb347e90 targets 0xb347cec and is always taken.
  The `beq` branch at 0xb347e9c targets 0xb347f48, is taken when (a0(=[a0+2080]) & 0x1) == 0, and falls through when (a0(=[a0+2080]) & 0x1) != 0.
  The `beq` branch at 0xb347ee4 targets 0xb347ca8 and is always taken.
  The `beq` branch at 0xb347ef0 targets 0xb347cec, is taken when (a0(=[a0+2080]) & 0x8) == 0, and falls through when (a0(=[a0+2080]) & 0x8) != 0.
  The `beq` branch at 0xb347f40 targets 0xb347cec and is always taken.
  The `beq` branch at 0xb347f4c targets 0xb347ca8 and is always taken.
  The return at 0xb347ddc has v0 = one of ret(?), ?.

- `ComputeFirstPartials` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb347fe0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb347fe0-0xb34807c (156 bytes).
  It occupies 156 bytes.
  The `lwc1` at 0xb347fe0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xb347fe4 loads 4 bytes from a1 (arg1 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lwc1` at 0xb347fe8, `lwc1` at 0xb348034.
  6 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lwc1` at 0xb347fec, `lwc1` at 0xb348004, `lwc1` at 0xb34801c.
  The `lwc1` at 0xb347ff8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xb347ffc stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lwc1` at 0xb348000, `lwc1` at 0xb34804c.
  The `lwc1` at 0xb348010 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xb348014 stores 4 bytes to a1 (arg1 at entry) +0x4.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lwc1` at 0xb348018, `lwc1` at 0xb348064.
  The `swc1` at 0xb348028 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lwc1` at 0xb34802c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xb348030 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xb348044 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `swc1` at 0xb348048 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xb34805c loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `swc1` at 0xb348060 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `swc1` at 0xb348078 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The return at 0xb348074 has v0 = ?.

- `ComputeNormal2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb348080 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb348080-0xb3480f8 (120 bytes).
  It occupies 120 bytes.
  2 such `lwc1` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lwc1` at 0xb348080, `lwc1` at 0xb3480a0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xb348084, `lwc1` at 0xb3480a8.
  2 such `lwc1` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lwc1` at 0xb348088, `lwc1` at 0xb3480c4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xb34808c, `lwc1` at 0xb3480bc.
  The `swc1` at 0xb348098 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lwc1` at 0xb34809c, `lwc1` at 0xb3480c0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xb3480a4, `lwc1` at 0xb3480b8.
  The `swc1` at 0xb3480b4 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xb3480d0 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `ld` at 0xb3480d8 loads 8 bytes from a0 (arg0 at entry) +0x4690.
  The `jalr` at 0xb3480e4 calls (unknown callee) with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xb3480f0 has v0 = ret(?).

- `DoDomain2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb348100 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb348100-0xb34a0e8 (8168 bytes).
  It occupies 8168 bytes.
  The `lwc1` at 0xb348100 loads 4 bytes from a3 (arg3 at entry) +0x10.
  The `lwc1` at 0xb348104 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0xb34812c loads 4 bytes from a3 (arg3 at entry) +0x14.
  The `lwc1` at 0xb348130 loads 4 bytes from a3 (arg3 at entry) +0x18.
  The `lwc1` at 0xb348158 loads 4 bytes from a0 (arg0 at entry) +0x438.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0xb348160, `lw` at 0xb3481cc, `lw` at 0xb348240.
  The `lw` at 0xb34816c loads 4 bytes from a0 (arg0 at entry) +0x6c0.
  The `lwc1` at 0xb348184 loads 4 bytes from a0 (arg0 at entry) +0x43c.
  17 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0xb348190, `lw` at 0xb3481c0, `lw` at 0xb348310.
  The `lw` at 0xb348194 loads 4 bytes from a0 (arg0 at entry) +0x6c4.
  The `sw` at 0xb3481b8 stores 4 bytes to a0 (arg0 at entry) +0x6cc.
  The `swc1` at 0xb3481c4 stores 4 bytes to a0 (arg0 at entry) +0x43c.
  The `sw` at 0xb3481c8 stores 4 bytes to a0 (arg0 at entry) +0x6c4.
  The `lw` at 0xb3481d8 loads 4 bytes from a3 (arg3 at entry) +0x0.
  69 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xb34823c, `swc1` at 0xb3482fc, `swc1` at 0xb348418.
  237 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xb34825c, `lwc1` at 0xb348260, `lwc1` at 0xb3482a0.
  76 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e0, including `lwc1` at 0xb348348, `lwc1` at 0xb3483e0, `lwc1` at 0xb348420.
  44 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e4, including `lwc1` at 0xb3483e8, `lwc1` at 0xb348428, `lwc1` at 0xb348470.
  24 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e8, including `lwc1` at 0xb3483f0, `lwc1` at 0xb348430, `lwc1` at 0xb348478.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4ec, including `lwc1` at 0xb348404, `lwc1` at 0xb348440, `lwc1` at 0xb348488.
  34 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x440, including `lwc1` at 0xb348410, `lwc1` at 0xb3489b4, `lwc1` at 0xb348c54.
  27 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x444, including `lwc1` at 0xb348454, `lwc1` at 0xb348734, `lwc1` at 0xb348aa4.
  16 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x448, including `lwc1` at 0xb34849c, `lwc1` at 0xb348804, `lwc1` at 0xb348b70.
  7 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x44c, including `lwc1` at 0xb348504, `lwc1` at 0xb3488d0, `lwc1` at 0xb34905c.
  The `sw` at 0xb348588 stores 4 bytes to a0 (arg0 at entry) +0x6c8.
  The `swc1` at 0xb348594 stores 4 bytes to a0 (arg0 at entry) +0x438.
  The `sw` at 0xb348598 stores 4 bytes to a0 (arg0 at entry) +0x6c0.
  7 such `lwc1` accesses load 4 bytes from a5 (arg5 at entry) +0x0, including `lwc1` at 0xb349578, `lwc1` at 0xb349740, `lwc1` at 0xb34995c.
  17 such `swc1` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `swc1` at 0xb34958c, `swc1` at 0xb3495a4, `swc1` at 0xb3495bc.
  6 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + a5) +0x0, including `lwc1` at 0xb349590, `lwc1` at 0xb349748, `lwc1` at 0xb349964.
  2 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + (([a3] << 0x2) + a5)) +0x0, including `lwc1` at 0xb3495a8, `lwc1` at 0xb349c00.
  The `lwc1` at 0xb3495c0 loads 4 bytes from (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5))) +0x0.
  3 such `lwc1` accesses load 4 bytes from (a5 + (([a3] + [a3]) << 0x2)) +0x0, including `lwc1` at 0xb349764, `lwc1` at 0xb349974, `lwc1` at 0xb349d5c.
  2 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + (a5 + (([a3] + [a3]) << 0x2))) +0x0, including `lwc1` at 0xb34976c, `lwc1` at 0xb349d64.
  The `lwc1` at 0xb349788 loads 4 bytes from ((([a3] + [a3]) << 0x2) + (a5 + (([a3] + [a3]) << 0x2))) +0x0.
  The `lwc1` at 0xb349790 loads 4 bytes from (([a3] << 0x2) + ((([a3] + [a3]) << 0x2) + (a5 + (([a3] + [a3]) << 0x2)))) +0x0.
  The `lwc1` at 0xb34998c loads 4 bytes from (a5 + ((([a3] + [a3]) + [a3]) << 0x2)) +0x0.
  The `lwc1` at 0xb349994 loads 4 bytes from (([a3] << 0x2) + (a5 + ((([a3] + [a3]) + [a3]) << 0x2))) +0x0.
  The `lwc1` at 0xb3499a4 loads 4 bytes from ((([a3] + [a3]) << 0x2) + (a5 + ((([a3] + [a3]) + [a3]) << 0x2))) +0x0.
  The `bgezall` at 0xb3481a8 calls PreEvaluate [0xb346ff0] with a0=[a3+8], a1=?, a2=a0+1248, a3=0xb346ff0.
  The `bgezall` at 0xb348578 calls PreEvaluate [0xb346ff0] with a0=[a3+4], a1=a1 at entry (arg1), a2=a0+1088, a3=a3 at entry (arg3).
  The `bc1t` branch at 0xb348124 targets 0xb348218, is taken when f5(=[a3+12]) == f6(=[a3+16]) (c.eq.s at 0xb348110), and falls through when not (f5(=[a3+12]) == f6(=[a3+16]) (c.eq.s at 0xb348110)).
  The `bc1t` branch at 0xb348138 targets 0xb348218, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1f` branch at 0xb348164 targets 0xb348564, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bne` branch at 0xb348170 targets 0xb348564, is taken when at(=[a0+1728]) != a0(=[a3+4]), and falls through when at(=[a0+1728]) == a0(=[a3+4]).
  The `bc1f` branch at 0xb34818c targets 0xb34819c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xb348198 targets 0xb3481cc, is taken when at(=[a0+1732]) == a0(=[a3+8]), and falls through when at(=[a0+1732]) != a0(=[a3+8]).
  The `beq` branch at 0xb3481d4 targets 0xb3485a8, is taken when a0(=[a3+4]) == a2(=0x4), and falls through when a0(=[a3+4]) != a2(=0x4).
  The `beq` branch at 0xb3481e0 targets 0xb3485ec, is taken when a0(=[a3+4]) == a3(=0x3), and falls through when a0(=[a3+4]) != a3(=0x3).
  The `beq` branch at 0xb3481e8 targets 0xb348630, is taken when a0(=[a3+4]) == a5(=0x2), and falls through when a0(=[a3+4]) != a5(=0x2).
  The `beq` branch at 0xb3481f0 targets 0xb348674, is taken when a0(=[a3+4]) == a6(=0x1), and falls through when a0(=[a3+4]) != a6(=0x1).
  The `blez` branch at 0xb3481f8 targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xb348210 targets 0xb34823c and is always taken.
  The `beq` branch at 0xb348234 targets 0xb348554, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xb34824c targets 0xb348230, is taken when at(=[a3+4]) <= 0 (signed), and falls through when at(=[a3+4]) > 0 (signed).
  The `beq` branch at 0xb348254 targets 0xb348310 and is always taken.
  The `bne` branch at 0xb348270 targets 0xb34825c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xb348284 targets 0xb3482f4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xb3482e4 targets 0xb3482a0, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xb348308 targets 0xb348230, is taken when t1(?) >= a1(=[a3+4]) (signed), and falls through when t1(?) < a1(=[a3+4]) (signed).
  The `blez` branch at 0xb348320 targets 0xb3482f4, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xb34833c targets 0xb348278, is taken when (t8(?) & 0x3) == 0, and falls through when (t8(?) & 0x3) != 0.
  The `beq` branch at 0xb348344 targets 0xb348260 and is always taken.
  The `blez` branch at 0xb348354 targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xb348544 targets 0xb3483e0, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xb3485a0 targets 0xb348180 and is always taken.
  The `beq` branch at 0xb3485ac targets 0xb34834c, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0xb3485b4 targets 0xb348f2c, is taken when a0(=[a3+8]) == at(=0x3), and falls through when a0(=[a3+8]) != at(=0x3).
  The `beq` branch at 0xb3485bc targets 0xb349220, is taken when a0(=[a3+8]) == v0(=0x2), and falls through when a0(=[a3+8]) != v0(=0x2).
  The `beq` branch at 0xb3485c4 targets 0xb34953c, is taken when a0(=[a3+8]) == v1(=0x1), and falls through when a0(=[a3+8]) != v1(=0x1).
  The `blez` branch at 0xb3485cc targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xb3485e4 targets 0xb3488e8 and is always taken.
  The `beq` branch at 0xb3485f0 targets 0xb3490a8, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0xb3485f8 targets 0xb349320, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0xb348600 targets 0xb3496fc, is taken when a0(=[a3+8]) == at(=0x2), and falls through when a0(=[a3+8]) != at(=0x2).
  The `beq` branch at 0xb348608 targets 0xb349b9c, is taken when a0(=[a3+8]) == v0(=0x1), and falls through when a0(=[a3+8]) != v0(=0x1).
  The `blez` branch at 0xb348610 targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xb348628 targets 0xb348b88 and is always taken.
  The `beq` branch at 0xb348634 targets 0xb349438, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0xb34863c targets 0xb349910, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0xb348644 targets 0xb349cfc, is taken when a0(=[a3+8]) == a5(=0x2), and falls through when a0(=[a3+8]) != a5(=0x2).
  The `beq` branch at 0xb34864c targets 0xb349eec, is taken when a0(=[a3+8]) == at(=0x1), and falls through when a0(=[a3+8]) != at(=0x1).
  The `blez` branch at 0xb348654 targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xb34866c targets 0xb348d28 and is always taken.
  The `beq` branch at 0xb348678 targets 0xb349b08, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0xb348680 targets 0xb349e74, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0xb348688 targets 0xb349fec, is taken when a0(=[a3+8]) == a5(=0x2), and falls through when a0(=[a3+8]) != a5(=0x2).
  The `beq` branch at 0xb348690 targets 0xb34a048, is taken when a0(=[a3+8]) == a6(=0x1), and falls through when a0(=[a3+8]) != a6(=0x1).
  The `blez` branch at 0xb348698 targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xb3486b0 targets 0xb348ed8 and is always taken.
  The `beq` branch at 0xb3486c4 targets 0xb348734, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xb348724 targets 0xb3486e0, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xb348744 targets 0xb348804, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xb348764 targets 0xb348788, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xb348780 targets 0xb34876c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xb348794 targets 0xb348804, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xb3487f4 targets 0xb3487b0, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xb348814 targets 0xb3488d0, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xb348834 targets 0xb348858, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xb348850 targets 0xb34883c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xb348864 targets 0xb3488d0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xb3488c4 targets 0xb348880, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xb3488e0 targets 0xb348554, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xb3488f0 targets 0xb3489b4, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xb348910 targets 0xb348934, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xb34892c targets 0xb348918, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xb348940 targets 0xb3489b4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xb3489a4 targets 0xb348960, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xb3489c4 targets 0xb348734, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xb3489e4 targets 0xb3486b8, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xb348a00 targets 0xb3489ec, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xb348a08 targets 0xb3486bc and is always taken.
  The `bne` branch at 0xb348a24 targets 0xb348a10, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xb348a38 targets 0xb348aa4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xb348a94 targets 0xb348a50, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xb348ab4 targets 0xb348b70, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xb348ad4 targets 0xb348af8, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xb348af0 targets 0xb348adc, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xb348b04 targets 0xb348b70, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xb348b64 targets 0xb348b20, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xb348b80 targets 0xb348554, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xb348b90 targets 0xb348c54, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xb348bb0 targets 0xb348bd4, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xb348bcc targets 0xb348bb8, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xb348be0 targets 0xb348c54, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xb348c44 targets 0xb348c00, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xb348c64 targets 0xb348aa4, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xb348c84 targets 0xb348a2c, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `beq` branch at 0xb348c8c targets 0xb348a14 and is always taken.
  The `beq` branch at 0xb348ca0 targets 0xb348d10, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xb348d04 targets 0xb348cc0, is taken when a0(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a0(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xb348d20 targets 0xb348554, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xb348d30 targets 0xb348df4, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xb348d50 targets 0xb348d74, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xb348d6c targets 0xb348d58, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xb348d80 targets 0xb348df4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xb348de4 targets 0xb348da0, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xb348e04 targets 0xb348d10, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xb348e24 targets 0xb348c94, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xb348e40 targets 0xb348e2c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xb348e48 targets 0xb348c98 and is always taken.
  The `beq` branch at 0xb348e5c targets 0xb348ec0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xb348eb4 targets 0xb348e70, is taken when a0(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a0(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xb348ed0 targets 0xb348554, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xb348ee0 targets 0xb348ec0, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xb348f00 targets 0xb348e50, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xb348f1c targets 0xb348f08, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xb348f24 targets 0xb348e54 and is always taken.
  The `blez` branch at 0xb348f2c targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xb349098 targets 0xb348f90, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xb3490a0 targets 0xb348558 and is always taken.
  The `blez` branch at 0xb3490ac targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xb34920c targets 0xb349110, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xb349218 targets 0xb348554 and is always taken.
  The `blez` branch at 0xb349220 targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xb349310 targets 0xb349260, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xb349318 targets 0xb348558 and is always taken.
  The `blez` branch at 0xb349320 targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xb349428 targets 0xb34936c, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xb349430 targets 0xb348558 and is always taken.
  The `blez` branch at 0xb349438 targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xb34952c targets 0xb349488, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xb349534 targets 0xb348558 and is always taken.
  The `blez` branch at 0xb34953c targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xb349570 targets 0xb3495ec, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xb349600 targets 0xb3496f4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xb3496ec targets 0xb34961c, is taken when a0(?) != a6(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5))))), and falls through when a0(?) == a6(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5))))).
  The `beq` branch at 0xb3496f4 targets 0xb348558 and is always taken.
  The `blez` branch at 0xb3496fc targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xb349738 targets 0xb3497c8, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xb3497ec targets 0xb349908, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xb349900 targets 0xb349810, is taken when t1(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when t1(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xb349908 targets 0xb348558 and is always taken.
  The `blez` branch at 0xb349910 targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xb349954 targets 0xb3499d8, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xb3499fc targets 0xb349b00, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xb349af8 targets 0xb349a20, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xb349b00 targets 0xb348558 and is always taken.
  The `blez` branch at 0xb349b08 targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xb349b8c targets 0xb349b40, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xb349b94 targets 0xb348558 and is always taken.
  The `blez` branch at 0xb349b9c targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xb349bc8 targets 0xb349c28, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xb349c38 targets 0xb349cf4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xb349cec targets 0xb349c50, is taken when a0(?) != a5(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5)))), and falls through when a0(?) == a5(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5)))).
  The `beq` branch at 0xb349cf4 targets 0xb348558 and is always taken.
  The `blez` branch at 0xb349cfc targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xb349d30 targets 0xb349d94, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xb349da8 targets 0xb349e6c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xb349e64 targets 0xb349dc4, is taken when a3(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a3(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xb349e6c targets 0xb348558 and is always taken.
  The `blez` branch at 0xb349e74 targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xb349edc targets 0xb349ea0, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xb349ee4 targets 0xb348558 and is always taken.
  The `blez` branch at 0xb349eec targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xb349f10 targets 0xb349f54, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xb349f60 targets 0xb349fe4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xb349fdc targets 0xb349f74, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xb349fe4 targets 0xb348558 and is always taken.
  The `blez` branch at 0xb349fec targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xb34a038 targets 0xb34a00c, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xb34a040 targets 0xb348558 and is always taken.
  The `blez` branch at 0xb34a048 targets 0xb348554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xb34a064 targets 0xb34a08c, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xb34a094 targets 0xb34a0e0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xb34a0d8 targets 0xb34a0a4, is taken when a2(?) != t2(=(([a3] << 0x2) + a5)), and falls through when a2(?) == t2(=(([a3] << 0x2) + a5)).
  The `beq` branch at 0xb34a0e0 targets 0xb348558 and is always taken.
  The return at 0xb348220 has v0 = ?.
  The return at 0xb34855c has v0 = one of ?, 0x2, (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5))), (([a3] << 0x2) + (([a3] << 0x2) + a5)), (([a3] << 0x2) + a5).
  The instructions from 0xb348228 to 0xb34822c are not reached by any path from the entry, and their branches are not listed.

- `DoDomain2WithDerivs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb34a0f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb34a0f0-0xb34cd0c (11292 bytes).
  It occupies 11292 bytes.
  The `lwc1` at 0xb34a0f0 loads 4 bytes from a3 (arg3 at entry) +0x10.
  The `lwc1` at 0xb34a0f8 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0xb34a124 loads 4 bytes from a3 (arg3 at entry) +0x14.
  The `lwc1` at 0xb34a128 loads 4 bytes from a3 (arg3 at entry) +0x18.
  The `lwc1` at 0xb34a150 loads 4 bytes from a0 (arg0 at entry) +0x438.
  The `lw` at 0xb34a168 loads 4 bytes from a0 (arg0 at entry) +0x6c8.
  6 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0xb34a170, `lw` at 0xb34a18c, `lw` at 0xb34a1bc.
  The `lw` at 0xb34a174 loads 4 bytes from a0 (arg0 at entry) +0x6c0.
  The `sw` at 0xb34a1b4 stores 4 bytes to a0 (arg0 at entry) +0x6c8.
  The `swc1` at 0xb34a1c0 stores 4 bytes to a0 (arg0 at entry) +0x438.
  The `sw` at 0xb34a1c4 stores 4 bytes to a0 (arg0 at entry) +0x6c0.
  The `lwc1` at 0xb34a1d4 loads 4 bytes from a0 (arg0 at entry) +0x43c.
  The `lw` at 0xb34a1e4 loads 4 bytes from a0 (arg0 at entry) +0x6cc.
  18 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0xb34a1ec, `lw` at 0xb34a208, `lw` at 0xb34a234.
  The `lw` at 0xb34a1f0 loads 4 bytes from a0 (arg0 at entry) +0x6c4.
  The `sw` at 0xb34a22c stores 4 bytes to a0 (arg0 at entry) +0x6cc.
  The `swc1` at 0xb34a238 stores 4 bytes to a0 (arg0 at entry) +0x43c.
  The `sw` at 0xb34a23c stores 4 bytes to a0 (arg0 at entry) +0x6c4.
  The `lw` at 0xb34a24c loads 4 bytes from a3 (arg3 at entry) +0x0.
  171 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xb34a2c4, `swc1` at 0xb34a2c8, `swc1` at 0xb34a2cc.
  385 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xb34a330, `lwc1` at 0xb34a334, `lwc1` at 0xb34a338.
  61 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x620, including `lwc1` at 0xb34a3b8, `lwc1` at 0xb34a50c, `lwc1` at 0xb34a5b0.
  61 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e0, including `lwc1` at 0xb34a3cc, `lwc1` at 0xb34a4c0, `lwc1` at 0xb34a554.
  45 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x624, including `lwc1` at 0xb34a408, `lwc1` at 0xb34a514, `lwc1` at 0xb34a5b8.
  45 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e4, including `lwc1` at 0xb34a40c, `lwc1` at 0xb34a4c8, `lwc1` at 0xb34a55c.
  22 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e8, including `lwc1` at 0xb34a4d0, `lwc1` at 0xb34a564, `lwc1` at 0xb34a60c.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4ec, including `lwc1` at 0xb34a4e4, `lwc1` at 0xb34a574, `lwc1` at 0xb34a61c.
  62 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x440, including `lwc1` at 0xb34a4f0, `lwc1` at 0xb34a540, `lwc1` at 0xb34aa98.
  31 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x580, including `lwc1` at 0xb34a4fc, `lwc1` at 0xb34aaa4, `lwc1` at 0xb34aeb4.
  22 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x628, including `lwc1` at 0xb34a51c, `lwc1` at 0xb34a5c0, `lwc1` at 0xb34a668.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x62c, including `lwc1` at 0xb34a52c, `lwc1` at 0xb34a5d0, `lwc1` at 0xb34a678.
  28 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x444, including `lwc1` at 0xb34a588, `lwc1` at 0xb34a5e4, `lwc1` at 0xb34ab98.
  14 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x584, including `lwc1` at 0xb34a59c, `lwc1` at 0xb34aba4, `lwc1` at 0xb34afb4.
  20 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x448, including `lwc1` at 0xb34a630, `lwc1` at 0xb34a68c, `lwc1` at 0xb34ac98.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x588, including `lwc1` at 0xb34a644, `lwc1` at 0xb34aca4, `lwc1` at 0xb34ada0.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x44c, including `lwc1` at 0xb34a6e8, `lwc1` at 0xb34a764, `lwc1` at 0xb34a984.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x58c, including `lwc1` at 0xb34a6fc, `lwc1` at 0xb34a990, `lwc1` at 0xb34b590.
  10 such `lwc1` accesses load 4 bytes from a7 (arg7 at entry) +0x0, including `lwc1` at 0xb34c680, `lwc1` at 0xb34c6bc, `lwc1` at 0xb34c864.
  4 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + a7) +0x0, including `lwc1` at 0xb34c688, `lwc1` at 0xb34c6c4, `lwc1` at 0xb34ca80.
  2 such `lwc1` accesses load 4 bytes from (a7 + (([a3] + [a3]) << 0x2)) +0x0, including `lwc1` at 0xb34c698, `lwc1` at 0xb34c6d4.
  5 such `swc1` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `swc1` at 0xb34c6ac, `swc1` at 0xb34c878, `swc1` at 0xb34c8b8.
  5 such `swc1` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `swc1` at 0xb34c6b8, `swc1` at 0xb34c884, `swc1` at 0xb34c8c8.
  5 such `swc1` accesses store 4 bytes to a6 (arg6 at entry) +0x0, including `swc1` at 0xb34c700, `swc1` at 0xb34c89c, `swc1` at 0xb34c8f4.
  The `lwc1` at 0xb34c8b0 loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `lwc1` at 0xb34c8c0 loads 4 bytes from a5 (arg5 at entry) +0x0.
  The `lwc1` at 0xb34c8dc loads 4 bytes from a6 (arg6 at entry) +0x0.
  The `bgezall` at 0xb34a1a4 calls PreEvaluateWithDeriv [0xb3471a0] with a0=[a3+4], a1=a1 at entry (arg1), a2=a0+1088, a3=a0+1408.
  The `bgezall` at 0xb34a21c calls PreEvaluateWithDeriv [0xb3471a0] with a0=[a3+8], a1=?, a2=a0+1248, a3=a0+1568.
  The `bc1t` branch at 0xb34a11c targets 0xb34a294, is taken when f4(=[a3+12]) == f5(=[a3+16]) (c.eq.s at 0xb34a108), and falls through when not (f4(=[a3+12]) == f5(=[a3+16]) (c.eq.s at 0xb34a108)).
  The `bc1t` branch at 0xb34a130 targets 0xb34a294, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1f` branch at 0xb34a160 targets 0xb34a188, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bne` branch at 0xb34a16c targets 0xb34a190, is taken when at(=[a0+1736]) != a2(=0x1), and falls through when at(=[a0+1736]) == a2(=0x1).
  The `bne` branch at 0xb34a178 targets 0xb34a190, is taken when v0(=[a0+1728]) != a0(=[a3+4]), and falls through when v0(=[a0+1728]) == a0(=[a3+4]).
  The `beq` branch at 0xb34a180 targets 0xb34a1d0 and is always taken.
  The `bc1f` branch at 0xb34a1dc targets 0xb34a204, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bne` branch at 0xb34a1e8 targets 0xb34a20c, is taken when at(=[a0+1740]) != a2(=0x1), and falls through when at(=[a0+1740]) == a2(=0x1).
  The `beq` branch at 0xb34a1f4 targets 0xb34a240, is taken when v0(=[a0+1732]) == a0(=[a3+8]), and falls through when v0(=[a0+1732]) != a0(=[a3+8]).
  The `beq` branch at 0xb34a1fc targets 0xb34a20c and is always taken.
  The `beq` branch at 0xb34a248 targets 0xb34a7d0, is taken when a0(=[a3+4]) == a3(=0x4), and falls through when a0(=[a3+4]) != a3(=0x4).
  The `beq` branch at 0xb34a254 targets 0xb34a820, is taken when a0(=[a3+4]) == a4(=0x3), and falls through when a0(=[a3+4]) != a4(=0x3).
  The `beq` branch at 0xb34a25c targets 0xb34a870, is taken when a0(=[a3+4]) == a5(=0x2), and falls through when a0(=[a3+4]) != a5(=0x2).
  The `beq` branch at 0xb34a264 targets 0xb34a8c0, is taken when a0(=[a3+4]) == a2(=0x1), and falls through when a0(=[a3+4]) != a2(=0x1).
  The `blez` branch at 0xb34a26c targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xb34a28c targets 0xb34a2c4 and is always taken.
  The `beq` branch at 0xb34a2bc targets 0xb34a7c0, is taken when t1(?) == t2(=(([a3] << 0x2) + a7)), and falls through when t1(?) != t2(=(([a3] << 0x2) + a7)).
  The `blez` branch at 0xb34a2d8 targets 0xb34a2b0, is taken when at(=[a3+4]) <= 0 (signed), and falls through when at(=[a3+4]) > 0 (signed).
  The `beq` branch at 0xb34a2e0 targets 0xb34a3b8 and is always taken.
  The `beq` branch at 0xb34a318 targets 0xb34a378, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xb34a364 targets 0xb34a330, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xb34a3b0 targets 0xb34a2b0, is taken when t3(?) >= a1(=[a3+4]) (signed), and falls through when t3(?) < a1(=[a3+4]) (signed).
  The `bne` branch at 0xb34a3ec targets 0xb34a378, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xb34a3fc targets 0xb34a2f0, is taken when (t9(?) & 0x1) == 0, and falls through when (t9(?) & 0x1) != 0.
  The `beq` branch at 0xb34a420 targets 0xb34a2f0 and is always taken.
  The `blez` branch at 0xb34a430 targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xb34a7b0 targets 0xb34a4c0, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xb34a7d4 targets 0xb34a428, is taken when a0(=[a3+8]) == a3(=0x4), and falls through when a0(=[a3+8]) != a3(=0x4).
  The `beq` branch at 0xb34a7dc targets 0xb34b358, is taken when a0(=[a3+8]) == a1(=0x3), and falls through when a0(=[a3+8]) != a1(=0x3).
  The `beq` branch at 0xb34a7e4 targets 0xb34b8dc, is taken when a0(=[a3+8]) == at(=0x2), and falls through when a0(=[a3+8]) != at(=0x2).
  The `beq` branch at 0xb34a7ec targets 0xb34beb0, is taken when a0(=[a3+8]) == a2(=0x1), and falls through when a0(=[a3+8]) != a2(=0x1).
  The `blez` branch at 0xb34a7f4 targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xb34a818 targets 0xb34a9c0 and is always taken.
  The `beq` branch at 0xb34a824 targets 0xb34b62c, is taken when a0(=[a3+8]) == a3(=0x4), and falls through when a0(=[a3+8]) != a3(=0x4).
  The `beq` branch at 0xb34a82c targets 0xb34bad0, is taken when a0(=[a3+8]) == a4(=0x3), and falls through when a0(=[a3+8]) != a4(=0x3).
  The `beq` branch at 0xb34a834 targets 0xb34c024, is taken when a0(=[a3+8]) == at(=0x2), and falls through when a0(=[a3+8]) != at(=0x2).
  The `beq` branch at 0xb34a83c targets 0xb34c40c, is taken when a0(=[a3+8]) == a2(=0x1), and falls through when a0(=[a3+8]) != a2(=0x1).
  The `blez` branch at 0xb34a844 targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xb34a868 targets 0xb34add0 and is always taken.
  The `beq` branch at 0xb34a874 targets 0xb34bcdc, is taken when a0(=[a3+8]) == a3(=0x4), and falls through when a0(=[a3+8]) != a3(=0x4).
  The `beq` branch at 0xb34a87c targets 0xb34c1a8, is taken when a0(=[a3+8]) == a4(=0x3), and falls through when a0(=[a3+8]) != a4(=0x3).
  The `beq` branch at 0xb34a884 targets 0xb34c52c, is taken when a0(=[a3+8]) == a5(=0x2), and falls through when a0(=[a3+8]) != a5(=0x2).
  The `beq` branch at 0xb34a88c targets 0xb34c838, is taken when a0(=[a3+8]) == a2(=0x1), and falls through when a0(=[a3+8]) != a2(=0x1).
  The `blez` branch at 0xb34a894 targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xb34a8b8 targets 0xb34b0e0 and is always taken.
  The `beq` branch at 0xb34a8c4 targets 0xb34c314, is taken when a0(=[a3+8]) == a3(=0x4), and falls through when a0(=[a3+8]) != a3(=0x4).
  The `beq` branch at 0xb34a8cc targets 0xb34c640, is taken when a0(=[a3+8]) == a4(=0x3), and falls through when a0(=[a3+8]) != a4(=0x3).
  The `beq` branch at 0xb34a8d4 targets 0xb34ca44, is taken when a0(=[a3+8]) == a5(=0x2), and falls through when a0(=[a3+8]) != a5(=0x2).
  The `beq` branch at 0xb34a8dc targets 0xb34cbd8, is taken when a0(=[a3+8]) == a2(=0x1), and falls through when a0(=[a3+8]) != a2(=0x1).
  The `blez` branch at 0xb34a8e4 targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xb34a908 targets 0xb34b2f0 and is always taken.
  The `beq` branch at 0xb34a924 targets 0xb34a984, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xb34a974 targets 0xb34a940, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xb34a9b8 targets 0xb34a7c0, is taken when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `bne` branch at 0xb34a9dc targets 0xb34aa98, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xb34aa00 targets 0xb34aa24, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xb34aa38 targets 0xb34aa98, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xb34aa84 targets 0xb34aa50, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xb34aad8 targets 0xb34ab98, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xb34aafc targets 0xb34ab20, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xb34ab34 targets 0xb34ab98, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xb34ab84 targets 0xb34ab50, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xb34abd8 targets 0xb34ac98, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xb34abfc targets 0xb34ac20, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xb34ac34 targets 0xb34ac98, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xb34ac84 targets 0xb34ac50, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xb34acd8 targets 0xb34a984, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xb34acfc targets 0xb34a910, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xb34ad1c targets 0xb34a910 and is always taken.
  The `beq` branch at 0xb34ad38 targets 0xb34ad94, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xb34ad84 targets 0xb34ad50, is taken when a0(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a0(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xb34adc8 targets 0xb34a7c0, is taken when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `bne` branch at 0xb34adec targets 0xb34aea8, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xb34ae10 targets 0xb34ae34, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xb34ae48 targets 0xb34aea8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xb34ae94 targets 0xb34ae60, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xb34aee8 targets 0xb34afa8, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xb34af0c targets 0xb34af30, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xb34af44 targets 0xb34afa8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xb34af94 targets 0xb34af60, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xb34afe8 targets 0xb34ad94, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xb34b00c targets 0xb34ad24, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xb34b02c targets 0xb34ad24 and is always taken.
  The `beq` branch at 0xb34b048 targets 0xb34b0a4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xb34b094 targets 0xb34b060, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xb34b0d8 targets 0xb34a7c0, is taken when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `bne` branch at 0xb34b0fc targets 0xb34b1b8, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xb34b120 targets 0xb34b144, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xb34b158 targets 0xb34b1b8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xb34b1a4 targets 0xb34b170, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xb34b1f8 targets 0xb34b0a4, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xb34b21c targets 0xb34b034, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xb34b23c targets 0xb34b034 and is always taken.
  The `beq` branch at 0xb34b258 targets 0xb34b2b4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xb34b2a4 targets 0xb34b270, is taken when a0(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a0(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xb34b2e8 targets 0xb34a7c0, is taken when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `bne` branch at 0xb34b30c targets 0xb34b2b4, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xb34b330 targets 0xb34b244, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xb34b350 targets 0xb34b244 and is always taken.
  The `blez` branch at 0xb34b358 targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xb34b61c targets 0xb34b3d0, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xb34b624 targets 0xb34a7c4 and is always taken.
  The `blez` branch at 0xb34b634 targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xb34b8c8 targets 0xb34b6b0, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xb34b8d4 targets 0xb34a7c0 and is always taken.
  The `blez` branch at 0xb34b8dc targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xb34bac0 targets 0xb34b924, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xb34bac8 targets 0xb34a7c4 and is always taken.
  The `blez` branch at 0xb34bad0 targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xb34bccc targets 0xb34bb24, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xb34bcd4 targets 0xb34a7c4 and is always taken.
  The `blez` branch at 0xb34bcdc targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xb34be9c targets 0xb34bd3c, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xb34bea8 targets 0xb34a7c0 and is always taken.
  The `blez` branch at 0xb34beb0 targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xb34c014 targets 0xb34bee8, is taken when a4(?) != a5(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a7))))), and falls through when a4(?) == a5(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a7))))).
  The `beq` branch at 0xb34c01c targets 0xb34a7c4 and is always taken.
  The `blez` branch at 0xb34c024 targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xb34c198 targets 0xb34c064, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xb34c1a0 targets 0xb34a7c4 and is always taken.
  The `blez` branch at 0xb34c1a8 targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xb34c304 targets 0xb34c1f0, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xb34c30c targets 0xb34a7c4 and is always taken.
  The `blez` branch at 0xb34c314 targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xb34c3fc targets 0xb34c354, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xb34c404 targets 0xb34a7c4 and is always taken.
  The `blez` branch at 0xb34c40c targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xb34c51c targets 0xb34c43c, is taken when a0(?) != a4(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a7)))), and falls through when a0(?) == a4(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a7)))).
  The `beq` branch at 0xb34c524 targets 0xb34a7c4 and is always taken.
  The `blez` branch at 0xb34c52c targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xb34c630 targets 0xb34c564, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xb34c638 targets 0xb34a7c4 and is always taken.
  The `blez` branch at 0xb34c640 targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xb34c678 targets 0xb34c704, is taken when (a7(=[a3]) & 0x1) == 0, and falls through when (a7(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xb34c71c targets 0xb34c830, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xb34c828 targets 0xb34c73c, is taken when a2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when a2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xb34c830 targets 0xb34a7c4 and is always taken.
  The `blez` branch at 0xb34c838 targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xb34c85c targets 0xb34c8f8, is taken when (a7(=[a3]) & 0x1) == 0, and falls through when (a7(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xb34c908 targets 0xb34ca3c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xb34ca34 targets 0xb34c920, is taken when a0(?) != t2(=(([a3] << 0x2) + a7)), and falls through when a0(?) == t2(=(([a3] << 0x2) + a7)).
  The `beq` branch at 0xb34ca3c targets 0xb34a7c4 and is always taken.
  The `blez` branch at 0xb34ca44 targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xb34ca70 targets 0xb34cae0, is taken when (a7(=[a3]) & 0x1) == 0, and falls through when (a7(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xb34caf4 targets 0xb34cbd0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xb34cbc8 targets 0xb34cb10, is taken when t0(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t0(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xb34cbd0 targets 0xb34a7c4 and is always taken.
  The `blez` branch at 0xb34cbd8 targets 0xb34a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xb34cbfc targets 0xb34cc50, is taken when (a7(=[a3]) & 0x1) == 0, and falls through when (a7(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xb34cc60 targets 0xb34cd04, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xb34ccfc targets 0xb34cc78, is taken when a3(?) != t2(=(([a3] << 0x2) + a7)), and falls through when a3(?) == t2(=(([a3] << 0x2) + a7)).
  The `beq` branch at 0xb34cd04 targets 0xb34a7c4 and is always taken.
  The return at 0xb34a29c has v0 = ?.
  The return at 0xb34a7c8 has v0 = one of ?, a7.
  The instructions from 0xb34a2a4 to 0xb34a2ac are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xb34a2e8 to 0xb34a2ec are not reached by any path from the entry, and their branches are not listed.

- `DoEvalCoord2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb34cd10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb34cd10-0xb34d280 (1392 bytes).
  It occupies 1392 bytes.
  The `ld` at 0xb34cd6c loads 8 bytes from ?.
  The `sd` at 0xb34cd78 stores 8 bytes to ?.
  12 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xb34cd7c, `sw` at 0xb34ce1c, `sw` at 0xb34ce78.
  The `lw` at 0xb34cd80 loads 4 bytes from a0 (arg0 at entry) +0x810.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x824, including `lw` at 0xb34cd98, `lw` at 0xb34ce28, `lw` at 0xb34ce80.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x9200, including `ld` at 0xb34cdcc, `ld` at 0xb34d128.
  14 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0xb34ce10, `lw` at 0xb34ce70, `lw` at 0xb34ceb4.
  The `lbu` at 0xb34ce38 loads 1 byte from a0 (arg0 at entry) +0xded.
  The `ld` at 0xb34ce60 loads 8 bytes from a0 (arg0 at entry) +0x91c8.
  The `ld` at 0xb34cea4 loads 8 bytes from a0 (arg0 at entry) +0x91f0.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x1ae0, including `ld` at 0xb34cedc, `ld` at 0xb34cf04, `ld` at 0xb34cf2c.
  The `ld` at 0xb34cee0 loads 8 bytes from [a0+6880]:8 +0xb28.
  The `ld` at 0xb34cf08 loads 8 bytes from [a0+6880]:8 +0xb98.
  The `ld` at 0xb34cf30 loads 8 bytes from [a0+6880]:8 +0xbf8.
  The `ld` at 0xb34cf58 loads 8 bytes from [a0+6880]:8 +0xcf8.
  The `ld` at 0xb34cfb4 loads 8 bytes from a0 (arg0 at entry) +0x91e8.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf34, including `lwc1` at 0xb34cfc4, `lwc1` at 0xb34d094, `lwc1` at 0xb34d1dc.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x30, including `swc1` at 0xb34cfdc, `swc1` at 0xb34d0a8, `swc1` at 0xb34d1f0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x91f8, including `ld` at 0xb34d00c, `ld` at 0xb34d214.
  The `ld` at 0xb34d078 loads 8 bytes from a0 (arg0 at entry) +0x91e0.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x2c, including `swc1` at 0xb34d090, `swc1` at 0xb34d1d4.
  The `ld` at 0xb34d0d8 loads 8 bytes from a0 (arg0 at entry) +0x91d0.
  The `ld` at 0xb34d174 loads 8 bytes from a0 (arg0 at entry) +0x91c0.
  The `ld` at 0xb34d1bc loads 8 bytes from a0 (arg0 at entry) +0x91d8.
  The `swc1` at 0xb34d1d8 stores 4 bytes to a3 (arg3 at entry) +0x28.
  The `ld` at 0xb34d244 loads 8 bytes from [a0+6880]:8 +0xa58.
  The `ld` at 0xb34d264 loads 8 bytes from [a0+6880]:8 +0xa18.
  The `bgezall` at 0xb34cdd4 calls DoDomain2WithDerivs [0xb34a0f0] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+37192, a4=a3+52, a5=sp-160, a6=sp-144, a7=[a0+37376]:8.
  The `bgezall` at 0xb34cdec calls ComputeFirstPartials [0xb347fe0] with a0=a3+52, a1=sp-160, a2=sp-144, a3=?.
  The `bgezall` at 0xb34ce08 calls ComputeNormal2 [0xb348080] with a0=a0 at entry (arg0), a1=a3+20, a2=sp-160, a3=sp-144.
  The `bgezall` at 0xb34ce68 calls DoDomain2 [0xb348100] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+36856, a4=a3+4, a5=[a0+37320]:8.
  The `bgezall` at 0xb34ceac calls DoDomain2 [0xb348100] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+37096, a4=a3+36, a5=[a0+37360]:8.
  The `jalr` at 0xb34cee8 calls (unknown callee) with a0=a3+4, a1=?, a2=?, a3=?.
  The `jalr` at 0xb34cf10 calls (unknown callee) with a0=a3+4, a1=?, a2=?, a3=?.
  The `jalr` at 0xb34cf38 calls (unknown callee) with a0=a3+20, a1=?, a2=?, a3=?.
  The `jalr` at 0xb34cf60 calls (unknown callee) with a0=a3+36, a1=?, a2=?, a3=?.
  The `bgezall` at 0xb34cfbc calls DoDomain2 [0xb348100] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+37048, a4=a3+36, a5=[a0+37352]:8.
  The `bgezall` at 0xb34d014 calls DoDomain2WithDerivs [0xb34a0f0] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+37144, a4=a3+52, a5=sp-128, a6=sp-112, a7=[a0+37368]:8.
  The `bgezall` at 0xb34d030 calls ComputeNormal2 [0xb348080] with a0=a0 at entry (arg0), a1=a3+20, a2=sp-128, a3=sp-112.
  The `bgezall` at 0xb34d080 calls DoDomain2 [0xb348100] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+37000, a4=a3+36, a5=[a0+37344]:8.
  The `bgezall` at 0xb34d0e0 calls DoDomain2 [0xb348100] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+36904, a4=a3+20, a5=[a0+37328]:8, a6=sp-1904.
  The `bgezall` at 0xb34d130 calls DoDomain2 [0xb348100] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+37192, a4=a3+52, a5=[a0+37376]:8.
  The `bgezall` at 0xb34d17c calls DoDomain2 [0xb348100] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+36808, a4=a3+4, a5=[a0+37312]:8.
  The `bgezall` at 0xb34d1c4 calls DoDomain2 [0xb348100] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+36952, a4=a3+36, a5=[a0+37336]:8.
  The `bgezall` at 0xb34d21c calls DoDomain2 [0xb348100] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+37144, a4=a3+52, a5=[a0+37368]:8.
  The `jalr` at 0xb34d250 calls (unknown callee) with a0=a3+52, a1=?, a2=?, a3=?.
  The `jalr` at 0xb34d270 calls (unknown callee) with a0=a3+52, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0xb34cd74 targets 0xb34cd60, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `beq` branch at 0xb34cd94 targets 0xb34d0ac, is taken when (v0(=[a0+2064]) & v1(=0x800000)) == 0, and falls through when (v0(=[a0+2064]) & v1(=0x800000)) != 0.
  The `beq` branch at 0xb34cda0 targets 0xb34cfe0, is taken when (a2(=[a0+2084]) & 0x100) == 0, and falls through when (a2(=[a0+2084]) & 0x100) != 0.
  The `beq` branch at 0xb34ce3c targets 0xb34d154, is taken when at(=[a0+3565]:1) == 0, and falls through when at(=[a0+3565]:1) != 0.
  The `beq` branch at 0xb34ce44 targets 0xb34ce84, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xb34ce88 targets 0xb34cf94, is taken when (a2(=[a0+2084]) & 0x40) == 0, and falls through when (a2(=[a0+2084]) & 0x40) != 0.
  The `beq` branch at 0xb34ced4 targets 0xb34cef8, is taken when (a0(?) & 0x1) == 0, and falls through when (a0(?) & 0x1) != 0.
  The `beq` branch at 0xb34cefc targets 0xb34cf24, is taken when (a0(?) & 0x2) == 0, and falls through when (a0(?) & 0x2) != 0.
  The `beq` branch at 0xb34cf24 targets 0xb34cf4c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xb34cf4c targets 0xb34cf70, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xb34cf74 targets 0xb34d260, is taken when s3(=one of -0x1, 0x3, 0x4) == at(=0x3), and falls through when s3(=one of -0x1, 0x3, 0x4) != at(=0x3).
  The `beq` branch at 0xb34cf7c targets 0xb34d240, is taken when v0(=one of -0x1, 0x3, 0x4) == v1(=0x4), and falls through when v0(=one of -0x1, 0x3, 0x4) != v1(=0x4).
  The `beq` branch at 0xb34cf98 targets 0xb34d058, is taken when (a2(=[a0+2084]) & 0x20) == 0, and falls through when (a2(=[a0+2084]) & 0x20) != 0.
  The `beq` branch at 0xb34cfd8 targets 0xb34cec4 and is always taken.
  The `beq` branch at 0xb34cfe4 targets 0xb34ce2c, is taken when (a2(=[a0+2084]) & 0x80) == 0, and falls through when (a2(=[a0+2084]) & 0x80) != 0.
  The `beq` branch at 0xb34d050 targets 0xb34ce2c and is always taken.
  The `beq` branch at 0xb34d05c targets 0xb34d19c, is taken when (a2(=[a0+2084]) & 0x10) == 0, and falls through when (a2(=[a0+2084]) & 0x10) != 0.
  The `beq` branch at 0xb34d0a4 targets 0xb34cec4 and is always taken.
  The `beq` branch at 0xb34d0b0 targets 0xb34d100, is taken when (a2(=[a0+2084]) & 0x4) == 0, and falls through when (a2(=[a0+2084]) & 0x4) != 0.
  The `beq` branch at 0xb34d0f8 targets 0xb34d108 and is always taken.
  The `beq` branch at 0xb34d10c targets 0xb34d1f4, is taken when (a2(=[a0+2084]) & 0x100) == 0, and falls through when (a2(=[a0+2084]) & 0x100) != 0.
  The `beq` branch at 0xb34d14c targets 0xb34ce38 and is always taken.
  The `beq` branch at 0xb34d158 targets 0xb34ce84, is taken when (a2(=[a0+2084]) & 0x1) == 0, and falls through when (a2(=[a0+2084]) & 0x1) != 0.
  The `beq` branch at 0xb34d194 targets 0xb34ce84 and is always taken.
  The `beq` branch at 0xb34d1a0 targets 0xb34cec4, is taken when (a2(=[a0+2084]) & 0x8) == 0, and falls through when (a2(=[a0+2084]) & 0x8) != 0.
  The `beq` branch at 0xb34d1ec targets 0xb34cec4 and is always taken.
  The `beq` branch at 0xb34d1f8 targets 0xb34ce38, is taken when (a2(=[a0+2084]) & 0x80) == 0, and falls through when (a2(=[a0+2084]) & 0x80) != 0.
  The `beq` branch at 0xb34d238 targets 0xb34ce38 and is always taken.
  The `beq` branch at 0xb34d258 targets 0xb34cf84 and is always taken.
  The `beq` branch at 0xb34d278 targets 0xb34cf84 and is always taken.
  The return at 0xb34cf8c has v0 = one of -0x1, 0x3, 0x4, ret(?).

- `sendChange` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb34d5b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb34d5b0-0xb34d714 (356 bytes).
  It occupies 356 bytes.
  The `lwc1` at 0xb34d5b0 loads 4 bytes from a0 (arg0 at entry) +0x268.
  The `lwc1` at 0xb34d5b4 loads 4 bytes from a0 (arg0 at entry) +0x26c.
  The `lwc1` at 0xb34d5b8 loads 4 bytes from a0 (arg0 at entry) +0x270.
  The `lwc1` at 0xb34d5bc loads 4 bytes from a0 (arg0 at entry) +0x274.
  6 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0xb34d5cc, `lw` at 0xb34d604, `lw` at 0xb34d62c.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x1ae0, including `ld` at 0xb34d5f0, `ld` at 0xb34d618, `ld` at 0xb34d640.
  The `ld` at 0xb34d5f4 loads 8 bytes from [a0+6880]:8 +0xb28.
  The `ld` at 0xb34d61c loads 8 bytes from [a0+6880]:8 +0xcf8.
  The `ld` at 0xb34d644 loads 8 bytes from [a0+6880]:8 +0xbf8.
  The `ld` at 0xb34d66c loads 8 bytes from [a0+6880]:8 +0xa18.
  The `lw` at 0xb34d690 loads 4 bytes from a0 (arg0 at entry) +0x810.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x4750, including `ld` at 0xb34d6a0, `ld` at 0xb34d6c4.
  The `swc1` at 0xb34d6c0 stores 4 bytes to a0 (arg0 at entry) +0x274.
  The `swc1` at 0xb34d6c8 stores 4 bytes to a0 (arg0 at entry) +0x270.
  The `swc1` at 0xb34d6cc stores 4 bytes to a0 (arg0 at entry) +0x26c.
  The `swc1` at 0xb34d6d8 stores 4 bytes to a0 (arg0 at entry) +0x268.
  The `ld` at 0xb34d6f8 loads 8 bytes from [a0+6880]:8 +0xa58.
  The `jalr` at 0xb34d5fc calls (unknown callee) with a0=a1+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a1].
  The `jalr` at 0xb34d624 calls (unknown callee) with a0=a1+36, a1=?, a2=?, a3=[a1].
  The `jalr` at 0xb34d64c calls (unknown callee) with a0=a1+20, a1=?, a2=?, a3=[a1].
  The `jalr` at 0xb34d674 calls (unknown callee) with a0=a1+52, a1=?, a2=?, a3=[a1].
  The `jalr` at 0xb34d6a8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a1].
  The `jalr` at 0xb34d6d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xb34d700 calls (unknown callee) with a0=a1+52, a1=?, a2=?, a3=[a1].
  The `beq` branch at 0xb34d5e8 targets 0xb34d60c, is taken when (a3(=[a1]) & 0x1) == 0, and falls through when (a3(=[a1]) & 0x1) != 0.
  The `beq` branch at 0xb34d610 targets 0xb34d638, is taken when (a3(=[a1]) & 0x8) == 0, and falls through when (a3(=[a1]) & 0x8) != 0.
  The `beq` branch at 0xb34d638 targets 0xb34d660, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xb34d660 targets 0xb34d6ec, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xb34d688 targets 0xb34d6e0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xb34d698 targets 0xb34d6e0, is taken when (v0(=[a0+2064]) & 0x80) == 0, and falls through when (v0(=[a0+2064]) & 0x80) != 0.
  The `beq` branch at 0xb34d6ec targets 0xb34d688, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xb34d70c targets 0xb34d684 and is always taken.
  The return at 0xb34d6e4 has v0 = one of ?, ret(?).

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb3541a0`
`ApplyMaterialF` (1764 bytes) makes no calls in the rendered facts. It compares a1 against 0x1200 to 0x1202 and 0x1600 to 0x1602, makes floating-point comparisons against 1.0 (`c.le.d` at 0xb3541e4), and at 0xb35434c returns the word at offset 41160 of the context pointer loaded from abs 0x1020. The first branch is at 0xb3541b0 on a1 below 0x1600. Role (from name): applies a float material parameter; the render does not resolve which material fields it touches, so the role stays partly open. Grade: inferred.

Reviewed: 2026-11-12

- `ApplyMaterialF` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3541a0 (n64)
  **Inferred.** The routine is 1764 bytes. Compares a1 with 0x1600 (unsigned) at 0xb3541b0 and then with 0x1602, 0x1201, 0x1202, 0x1200 and 0x1601, and the same enumerant values as `ApplyParameterF`. The facts do not list a compare with 0x1603. Paths load single-precision values at offsets 0, 4, 8 and 0xc, compare them and store words at offsets 0 to 0x1c; the base registers are not resolved. One path loads 16 words from [0x1020]+0xa098 to +0xa0d4 and stores them, and the only return listed is the word at [0x1020]+41160. The render does not resolve where those stores go.
  Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb354890`
`ApplyMaterialI` (2208 bytes) makes no calls in the rendered facts. It tests a1 against 0x1200, 0x1202, 0x1600, 0x1601 and 0x1603 and, at 0xb354a98, returns the word at offset 41160 of the context pointer loaded from abs 0x1020, as the entry above does. Role (from name): the integer-valued counterpart of `ApplyMaterialF`; the parameter types come from the name only. Grade: inferred.

Reviewed: 2026-11-12

- `ImageChainAddOpTextureColor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3613b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3613b0-0xb361438 (136 bytes).
  It occupies 136 bytes.
  The `sw` at 0xb3613f4 stores 4 bytes to ret(ImageChainOpCreate) +0x14.
  The `sw` at 0xb3613fc stores 4 bytes to ret(ImageChainOpCreate) +0x0.
  The `lw` at 0xb361408 loads 4 bytes from ret(ImageChainOpCreate) +0x10.
  The `sd` at 0xb361418 stores 8 bytes to ret(ImageChainOpCreate) +0x8.
  The `sw` at 0xb361424 stores 4 bytes to ret(ImageChainOpCreate) +0x10.
  The `bgezall` at 0xb3613c8 calls ImageChainOpCreate [0xb35f9b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xb361420 calls ImageChainAddOp [0xb35fd60] with a0=a0 at entry (arg0), a1=ret(ImageChainOpCreate), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `bne` branch at 0xb3613d0 targets 0xb3613e4, is taken when v0(=ret(ImageChainOpCreate)) != 0, and falls through when v0(=ret(ImageChainOpCreate)) == 0.
  The return at 0xb3613dc has v0 = 0x0.
  The return at 0xb361430 has v0 = 0x1.

- `RenderFunc_TextureColor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb361440 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb361440-0xb361484 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0xb36145c loads 8 bytes from a0 (arg0 at entry) +0x58.
  The `ld` at 0xb36146c loads 8 bytes from a0 (arg0 at entry) +0x60.
  The `jalr` at 0xb361468 calls __glOdysseyImageMovePixelsTexture [0xb3853e0] with a0=[a0+96]:8, a1=[a0+88]:8, a2=a1 at entry (arg1), a3=0x1.
  The return at 0xb36147c has v0 = 0x1.

- `LoadTextureFilter` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb369aa0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb369aa0-0xb369b90 (240 bytes).
  It occupies 240 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0xb369abc, `ld` at 0xb369b14, `ld` at 0xb369b54.
  The `ld` at 0xb369ac8 loads 8 bytes from abs 0x1020.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xb369afc, `lw` at 0xb369b3c, `lw` at 0xb369b5c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xb369b08, `sw` at 0xb369b48.
  The `sw` at 0xb369b10 stores 4 bytes to [0x1020]:8 +0xb00c.
  The `sw` at 0xb369b50 stores 4 bytes to [0x1020]:8 +0xb110.
  The `sw` at 0xb369b60 stores 4 bytes to [0x1020]:8 +0xb194.
  The `sw` at 0xb369b68 stores 4 bytes to [0x1020]:8 +0xb198.
  The `sw` at 0xb369b70 stores 4 bytes to [0x1020]:8 +0xb19c.
  The `lw` at 0xb369b78 loads 4 bytes from [0x1020]:8 +0x18fdc.
  The `sw` at 0xb369b84 stores 4 bytes to [0x1020]:8 +0x18fdc.
  The `sw` at 0xb369b8c stores 4 bytes to abs 0x1030.
  The `bgtz` branch at 0xb369b04 targets 0xb369af0, is taken when a4(?) > 0 (signed), and falls through when a4(?) <= 0 (signed).
  The `bgtz` branch at 0xb369b44 targets 0xb369b30, is taken when a3(?) > 0 (signed), and falls through when a3(?) <= 0 (signed).
  The return at 0xb369b88 has v0 = ([[0x1020]:8+102364] | 0x38000).

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb36ae00`
`AddConvolutionBorders` (9352 bytes) makes 145 calls: `__glOdysseyProgramTexFilter` 7 times (first at 0xb36af68), `LoadTextureFilter` 6 times (first at 0xb36afd0), `__glOdysseyImageMovePixelsTexture` 26 times (first at 0xb36b04c), `floorf` 100 times (first at 0xb36b21c) and `ceilf` 6 times (first at 0xb36b904). Role (from name): fills border texels for a convolution filter; the border layout is not resolved by the render. Grade: inferred.

Reviewed: 2026-11-12

- `ImageChainAddOpPixelTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb36d6c0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb36d6c0-0xb36d744 (132 bytes).
  It occupies 132 bytes.
  The `sw` at 0xb36d6f0 stores 4 bytes to ret(ImageChainOpCreate) +0x0.
  The `sw` at 0xb36d6f8 stores 4 bytes to ret(ImageChainOpCreate) +0x14.
  The `lw` at 0xb36d704 loads 4 bytes from ret(ImageChainOpCreate) +0x10.
  The `sw` at 0xb36d710 stores 4 bytes to ret(ImageChainOpCreate) +0x10.
  The `sd` at 0xb36d71c stores 8 bytes to ret(ImageChainOpCreate) +0x8.
  The `ld` at 0xb36d730 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `jalr` at 0xb36d6d0 calls ImageChainOpCreate [0xb35f9b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb36d72c calls ImageChainAddOp [0xb35fd60] with a0=a0 at entry (arg0), a1=ret(ImageChainOpCreate), a2=[a0+16]:8, a3=0x0.
  The `bne` branch at 0xb36d6d8 targets 0xb36d6ec, is taken when v0(=ret(ImageChainOpCreate)) != 0, and falls through when v0(=ret(ImageChainOpCreate)) == 0.
  The return at 0xb36d6e4 has v0 = 0x0.
  The return at 0xb36d73c has v0 = 0x1.

- `__glOdySpanPackPioStencil` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb373d90 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb373d90-0xb373dfc (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0xb373d90 loads 4 bytes from a1 (arg1 at entry) +0x178.
  The `lwc1` at 0xb373da4 loads 4 bytes from a1 (arg1 at entry) +0x168.
  2 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0x178, including `swc1` at 0xb373dcc, `swc1` at 0xb373dec.
  2 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0x168, including `swc1` at 0xb373dd4, `swc1` at 0xb373ddc.
  The `bgezall` at 0xb373dd0 calls __glOdySpanShiftOffsetIndex [0xb373190] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xb373df4 has v0 = ret(__glOdySpanShiftOffsetIndex).

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb380aa0`
`__glOdysseyImageMovePixelsCopy` (8280 bytes) clears two stack parameter blocks with `memset` (0xb380b14, 32 bytes; 0xb380b2c, 28 bytes) and makes four `ceilf` calls from 0xb380b4c. It then calls `OdysseyImageCalcXferCopyParams` (0xb380c88), `ImageCalcDmaFieldOffsets` twice, `__glOdysseyOpenPMObjReference` and `__glOdysseyOpenPMObjWriteReference`, `__glOdysseyValidateHardware` (0xb381514), `ImageCopyPixelBody` at nine sites, the matching close-reference calls and `__glOdysseyIoctl` at 0xb382ae8 with request 0x6f64000d. Some paths call `__glSetError` with 0x502 or 0x505. Role (from name): copies pixels within an image; the copy direction and layout are not in the rendered facts. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb383380`
`__glOdysseyImageMovePixelsDMAtoGfx` (6172 bytes) clears two stack blocks with `memset` (0xb383480, 32 bytes; 0xb383498, 20 bytes), makes `ceilf` calls from 0xb3834b4, then calls `__glOdysseyImageCalcXferWriteParams` (0xb383584). Later it calls `SendPixelsAsUserPIO` at 0xb38421c and 0xb384618, `__glOdysseyAssignToPMObj` and `__glOdysseyIoctl` at 0xb384b88 with request 0x6f64000d. Role (from name): the DMA-to-graphics variant of the copy routine above; the `SendPixelsAsUserPIO` calls show a programmed-I/O send in the body, and which DMA engine, if any, it drives is not visible in these facts. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb38ad80`
`__glOdysseyInitLighting` (788 bytes) is called from `__glOdysseyInitDefaultValues` at 0xb33e014. The rendered facts show no calls, one branch on a byte at a0+3564 and an unresolved return value at 0xb38b078. It makes 107 loads and stores in all, including stores at +0x18fe4 and +0x18fe8, whose bases the facts do not resolve. Role (from name): initialises lighting state; which fields it sets is open. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb38dbf0`
`__glOdylc_Normal3b` (256 bytes) has the reserve-then-store shape. It calls `__glSPDlistSpace` at
0xb38dc44 with a0 zero, and returns either the word at 0x1060 plus 4 or the reservation's
result. The byte operand type comes from the name only. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb38e430`
`__glOdylc_Normal3s` (256 bytes) has the same shape as the Normal3b entry above, with the
reservation call at 0xb38e484. The short operand type comes from the name only. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdylc_Normal3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb38e430 (n64)
  **Inferred.** Compares [0x1048] with another value (signed) at 0xb38e468. When it is below that value it calls `__glSPDlistSpace` at 0xb38e484 with a0 = 0 and the other arguments as at entry. A zero result goes to 0xb38e508 and returns that result without the stores below. Otherwise it stores four words at 0xb38e4d4 to 0xb38e4e0 and one at 0xb38e4f4, and the fast path returns [0x1060]+4. Role (from name): the symbol suggests a display-list compile of glNormal3s, which the facts do not show.
  Reviewed: 2026-11-12

- `__glOdysseyCreatePMObj` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb38f2f0 (n64).
  Fills a request block on its stack, submits it as private ioctl 0x6f640001 through `__glOdysseyIoctl`
  (a0 from entry, the block as a2, `jalr` at 0xb38f370), then either records the result in the caller's
  word at a2 and in a table reached through a0, or backs out by walking a set and removing a group.
  The block holds -1 at +0 (`sw` at 0xb38f328), a copy of the word at a2 at +0x4 (`sw` at 0xb38f334), the
  low halfword of a3 at +0x8 (`sh` at 0xb38f31c), and from +0xc a ten-pass copy of words from a1, the
  pointer stepping by 4 per pass (`sw` at 0xb38f358). The word at +0x34 is cleared first (0xb38f2fc).
  If the ioctl returns zero (`beq` at 0xb38f388): when the block word at +0x4, reloaded at 0xb38f37c, is
  still -1 the routine returns 0 (`beq` at 0xb38f470). Otherwise that word is stored to the caller's a2
  word (`sw` at 0xb38f478). Then, when bit 0x2 of the block word at +0x34 is set (`beq` at 0xb38f490),
  the doubleword at block +0x38 is stored (`sd` at 0xb38f4a8) at +0x28 of an entry selected in the
  table whose pointer is the doubleword at a0 + 0x192f8 (a3 from 0xb38f384, added to a0 and loaded at
  0xb38f49c); the entry is the halfword at block +0x40 times 8 past that pointer. It returns 1 either way.
  If the ioctl returns nonzero, the routine returns 0 at once when the reloaded block word at +0x4 is not
  -1 (`bne` at 0xb38f390) or when the word at a2 is already -1 (`beq` at 0xb38f39c). Otherwise it
  cleans up: `InitCSetCursor` starts a walk over the set at a0 + 0x192f8 (each of the five `bgezall` calls in this routine names the zero register, which makes it a plain call), then for
  each element returned by `NextCSetElem` (0xb38f3d0, 0xb38f428) it calls `LookupKnownGroup` with the
  word at a2 as a1 (0xb38f444) and, if that returns nonzero, `RemoveKnownGroup` with the element and
  the looked-up value (0xb38f460). When `NextCSetElem` returns zero (0xb38f3e0, 0xb38f430) the routine
  stores the block word at +0x4 (-1) into the word at a2 (`sw` at 0xb38f400) and returns 0.
  Inferred: the linked ioctl row ties 0x6f640001 to a handler called `gfP_OdsyMMalloc`, so this is an allocation request.
  Unknown: the internals of `InitCSetCursor`, `NextCSetElem`, `LookupKnownGroup` and `RemoveKnownGroup`,
  which no note covers; reading the routines at 0xb390f00, 0xb390f20, 0xb390500 and 0xb3909c0 settles it.
  Evidence grade: inferred.

- `__glOdysseyDestroyPMObjGroup` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb38f4d0 (n64).
  Loops over the elements reached through the pointer at a0+0x192f8 with `NextCSetElem`, calls
  `LookupKnownGroup` on each element with the word at a1 and a2 zero, calls `RemoveKnownGroup` on the
  element when that lookup returns nonzero, and then sends ioctl 0x6f640002 with a block built from the
  word at a1. Before the loop, `InitCSetCursor` is called at 0xb38f510 with a0 from the same pointer, and
  a zero result from the first `NextCSetElem` at 0xb38f528 skips the loop to the ioctl. The block at the
  stack pointer holds a copy of the word at a1 at +4 (`sw` at 0xb38f5c8) and zero at +0x34 (`sw` at
  0xb38f5a8). The `jalr` at 0xb38f5c4 passes the block address as a2 along with the entry a0. A zero ioctl result
  (`beq` at 0xb38f5d4) overwrites the word at a1 with -1 (`sw` at 0xb38f600) and returns 1 at 0xb38f610;
  a nonzero result returns 0 at 0xb38f5ec.
  The `bgezall` calls at 0xb38f510, 0xb38f528, 0xb38f558, 0xb38f574 and 0xb38f588 use the zero register
  as their test, so none is a real condition; the exits come from the `beq` tests on return values.
  Inferred: the linked ioctl row lists `gfP_OdsyMMdealloc` as the handler of 0x6f640002.
  Unknown: which group `LookupKnownGroup` returns for the id at a1 and how `RemoveKnownGroup` detaches it;
  the route is a reading of the routines at 0xb390500 and 0xb3909c0.
  Evidence grade: inferred.

- `__glOdysseyDestroyPMObj` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb38f620 (n64).
  Submits private ioctl 0x6f640002 through `__glOdysseyIoctl` for the object whose id is the word at a1,
  and, depending on a flag word in the request block that the call can return changed, also walks a set
  and removes the matching group. Arguments with a2 negative (`bltz` at 0xb38f64c) or a2 not below 0x11
  (the comparison feeding the `bne` at 0xb38f658) return 0 at 0xb38f668 with no request sent.
  The request block on the stack holds the word at a1 at +0x4 (`sw` at 0xb38f650), the low halfword of a2
  at +0x8 (`sh` at 0xb38f644) and 1 at +0x34 (`sw` at 0xb38f628, the value of a3 set at 0xb38f624). The
  `jalr` at 0xb38f684 passes a0 from entry, 0x6f640002 and the block as a2. A nonzero result returns 0
  (0xb38f69c).
  Inferred: `gfP_OdsyMMdealloc` is the handler for 0x6f640002 in the linked ioctl row, which makes this a release request.
  After a zero result the word at +0x34 is reloaded (0xb38f6a4); the `beq` at 0xb38f6a8 skips ahead when it
  is zero, and the delay slot sets v0 to 1 either way, so the routine returns 1 on both paths. When the
  reloaded word is nonzero it returns at once (0xb38f6b4). When it is zero, the routine runs
  `InitCSetCursor` on the set at a0 + 0x192f8 (a1 = 0x20000 at 0xb38f6c4) and loops over `NextCSetElem`
  results (0xb38f6e8, 0xb38f710). For each element it calls `LookupKnownGroup` with the element, the
  word at a1 and a2 zero (0xb38f734), and, if that returns nonzero, `RemoveKnownGroup` on the element
  with the looked-up value (0xb38f750). Once `NextCSetElem` returns zero, on the first call or a later one, the word at a1 is overwritten with
  -1 (`sw` at 0xb38f770). Every `bgezall` in the routine uses the zero register, so none of them is a real test.
  Unknown: whether the handler ever clears the block word at +0x34, since the stored 1 is the only value
  this routine writes there; the route is the board-side result of request 0x6f640002.
  Unknown: the element type that `NextCSetElem` returns and the group record `LookupKnownGroup` finds; the
  route is a reading of the routines at 0xb390f20 and 0xb390500.
  Evidence grade: inferred.

- `__glOdysseyAssignToPMObj` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb38f7f0 (n64).
  Builds a 0x50-byte request block on its stack from its arguments, validates it with `CheckMMXfrArgs`,
  and submits it as private ioctl 0x6f640006 through
  `__glOdysseyIoctl`, with a0 from entry and the block as a2 (`jalr` at 0xb38f8e4).
  Inferred: the board-side handler for 0x6f640006 is `gfP_OdsyMMxfr` according to the linked ioctl row, so the block describes a transfer.
  The block is zeroed first with `bzero` (a1 = 0x50, `jalr` at 0xb38f848). The routine then rewrites the
  word at +0x14 of the a7 record in place, keeping the low 17 bits (`and` with 0x1ffff, `sw` at 0xb38f86c).
  It fills the block with a2 as a halfword at +0x8 (`sh` at 0xb38f878), a1 as a word at +0x4 (0xb38f888),
  a3 as a doubleword at +0x10 (0xb38f880), a4 as a word at +0x18 (0xb38f8c4), the a5 argument ORed with 1
  as a word at +0x3c (0xb38f874) and the a6 argument as a word at +0x40 (0xb38f8b0). A loop of eight
  passes (counter from 0x8 down by one, `bgtz` at 0xb38f8a4) copies eight words of the a7 record, at
  offsets stepping by 4, into the block starting at +0x1c (the `sw` at 0xb38f8a8 stores through the
  block pointer stepped by 4 per pass).
  The `bgezall` at 0xb38f8c0 has zero as its tested register, so it always branches and links: it is an
  unconditional call of `CheckMMXfrArgs` with the block as a0, the a7 record as a1 and the block at +0x1c
  as a2. A zero return (`beq` at 0xb38f8cc) skips the ioctl and returns 0 at 0xb38f954.
  A zero ioctl result (`beq` at 0xb38f904) stores a word at a0 + 0x287d0 (`sw` at 0xb38f924): the block
  word at +0x48, or zero when bit 0x2 of the block word at +0x3c is set. The routine then returns 1. A
  nonzero ioctl result skips that store and returns 0 (`b` at 0xb38f90c with its delay slot).
  Unknown: the content of the block word at +0x48, which the routine zeroes and never writes; the route is
  the handling by `CheckMMXfrArgs` of the block.
  Evidence grade: inferred.

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb38f960`
`__glOdysseyReadFromPMObj` (268 bytes) calls `CheckMMXfrArgs` (0xb38f9e8); only when that returns nonzero does it call `__glOdysseyIoctl` at 0xb38fa08 with request 0x6f640006. A zero from the check goes to 0xb38fa54. The returns are 0 at 0xb38fa64 and 0 or 1 at 0xb38fa4c. Role (from name): reads from a PM object through the kernel; the "PM object" in the name is not decoded in these facts, so what it reads stays open. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb38fa70`
`OpenPipeMemReference` (496 bytes) calls `__glOdysseyMIPS_SYNC` at 0xb38fb7c and 0xb38fc08, and `__glOdysseyIoctl` at 0xb38fbe0 with request 0x6f640003, which sits between the two sync calls in address order. It returns 1 at 0xb38fbb0 and 0 at 0xb38fc24. Role (from name): opens a reference to a pipe-memory object; the sync calls may order memory access around the kernel request, but the facts do not show that. What "pipe memory" refers to here is not established. Grade: inferred.

Reviewed: 2026-11-12

- `OpenPipeMemReference` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb38fa70 (n64)
  **Inferred.** Reads halfwords at +0, +2 and +4 of the block at a2+48 and stores halfwords at +4 and +6 of it (0xb38fb64, 0xb38fb80, 0xb38fbfc, 0xb38fc0c). When a6 is nonzero it also performs a run of word stores through a base the render does not resolve, and it stores words at a2+0x20 and a2+0x24 at 0xb38fb20 and 0xb38fb24. It calls `__glOdysseyMIPS_SYNC` at 0xb38fb7c and 0xb38fc08. On one path it calls `__glOdysseyIoctl` at 0xb38fbe0 with request 0x6f640003 and a stack buffer at sp-96. It returns 1 at 0xb38fbb0 and 0 at 0xb38fc24, and the render does not show every condition that selects between them. Role (from name): the name suggests opening a memory reference for the pipe; the descriptor fields are not traced.
  Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb390500`
`LookupKnownGroup` (396 bytes) calls `LookupCSetId` (0xb39054c) and returns its result at 0xb390570 when that is nonzero. Otherwise, when a2 is nonzero, it calls an unnamed callee at 0xb390590 with a1 = 0x98, and raises error 0x505 (GL_OUT_OF_MEMORY) through `__glSetError` at 0xb390638 if that returns zero. On a nonzero result it clears 0x98 bytes with `bzero` (0xb3905b0), calls `AddKnownGroup` (0xb3905c8) and `LookupCoresidRange` (0xb3905e8), and calls `RemoveKnownGroup` (0xb390668) when `LookupCoresidRange` returns zero. Role (from name): looks up a group in a known-groups table and adds one when it is missing; the table layout is not in the rendered facts. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb390690`
`LookupCoresidRange` (592 bytes) calls an unnamed callee at 0xb3906fc with a1 = 0x40, only when a4 is nonzero, and raises error 0x505 (GL_OUT_OF_MEMORY) through `__glSetError` at 0xb3908c0 when that call returns zero. When it returns nonzero the routine clears 0x40 bytes at the result with `bzero` (0xb390714) and calls `__glOdysseyIoctl` at 0xb390774 with request 0x6f640004. Role (from name): looks up a co-resident range; the range layout and the ioctl's meaning are not decoded. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_Begin` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb391130 (n64).
  Begin request in the board library: the word at abs 0x1030, loaded at 0xb391150, is a state that this
  routine advances, and the context pointer is loaded from abs 0x1020 (`ld` at 0xb391130).
  When the context word at +0x18fe0 (`lw` at 0xb39113c) is nonzero and the state is zero, a conditional
  move at 0xb391164 makes the working state 2; a zero context word skips it (`beq` at 0xb391154).
  Working state 0: a0 is checked unsigned against 0xa (`sltiu` at 0xb39116c). Values of 0xa and above end in
  `__glSetError` with 0x500 (`jalr` at 0xb391218), whose result is returned.
  Smaller values store 1 to abs 0x1030 (`sw` at 0xb3911b4), 0x14400 to abs 0x4000 (`sw` at 0xb3911bc) and a0
  unchanged to abs 0x4000 (`sw` at 0xb3911c0). The `swc1` at 0xb3911cc sits in the return's delay slot and
  stores the single-precision zero from 0xb3911a8 at the context +0x1c670.
  Working state 2 (`beq` at 0xb39117c): a byte holding 1 goes to the context +0x18ff0 (`sb` at 0xb3911d4);
  the pointer at the context +0x45a0 is called with the context in a0 (`jalr` at 0xb3911e0); abs 0x1030 is
  cleared (`sw` at 0xb3911e8); then the pointer reached through the context +0x1ae0 and +0x38 is called
  with the original a0 (`jalr` at 0xb3911f8), and its result is returned.
  Working state 1 (the only other value) ends in `__glSetError` with 0x502 (`jalr` at 0xb391188).
  Inferred: both error codes go to `__glSetError`, the callee whose note says it keeps the context's first
  GL error code, so the 0x500 and 0x502 exits are error reports.
  Unknown: where the two indirect calls (0xb3911e0, 0xb3911f8) land; a callee note for those targets would settle it.
  Unknown: what owns abs 0x4000, the target of the two word writes at 0xb3911bc and 0xb3911c0; a linked register row for that address would settle it.
  Evidence grade: inferred.

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb3929a0`
`__glOdysseySetProgram` (1208 bytes) makes no calls in the rendered facts. It returns the constant 0x29808062 at 0xb3929cc when the byte at a0+165852 is nonzero and again at 0xb392e50 when the word at a0+51836 is zero, and an unresolved value at 0xb392e48. It compares a word in 32-byte slots from a0+51860 with the word at a0+51924. Role (from name): binds a program object; the constant is not decoded, so this entry stays weakly grounded. Grade: inferred.

Reviewed: 2026-11-12

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb394f40`
`__glOdylc_TexCoord1d` (240 bytes) has the reserve-then-store shape. It calls `__glSPDlistSpace` at
0xb394f90 with a0 zero, stores a word to `abs 0x1060` at 0xb395004, and returns either the word
at 0x1060 plus 2 or the reservation's result. The double-precision operand comes from the name
only. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdylc_TexCoord1d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb394f40 (n64)
  **Inferred.** Compares [0x1048] with another value (signed) at 0xb394f7c. When it is below that value it calls `__glSPDlistSpace` at 0xb394f90 with a0 = 0 and the other arguments as at entry. A zero result goes to 0xb395008 and returns that result. Otherwise it stores one word at 0xb394fdc and one single-precision value at 0xb394fe0, stores at 0xb394fe8 and 0xb394ff4, and on the fast path returns [0x1060]+2. Role (from name): the symbol suggests a display-list compile of glTexCoord1d, which the facts do not show.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord1dv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb395030 (n64).
  Takes a pointer in a0 to one double, and appends a two-word record to the area addressed by the
  doubleword at absolute 0x1058: a header constant, then that double narrowed to single precision. It
  calls `__glSPDlistSpace` first when the word at 0x1048 cannot hold the record.
  The pad and the test come before any call. The routine reads the 0x1058 doubleword (0xb395038), the word
  at 0x1060 and the word at 0x1048 (0xb39504c), then sets the pad to 1 if bit 0x4 of the 0x1058
  doubleword is set and the 0x1060 word is zero, else 0. The `beq` at 0xb395068 skips the call when the
  0x1048 word is at least the pad plus 2.
  Inferred: the pad is a word of alignment to an 8-byte boundary and the 0x1048 word is a tally of words
  left; the pad is 1 only when address bit 0x4 is set, and the 0x1048 word is lowered by the pad plus 2
  per record.
  Otherwise a0 is saved to the frame, and the `jalr` at 0xb39507c runs with a0 zero. A zero result (`beq`
  at 0xb39508c) goes to the `sd` at 0xb395100, which stores the earlier 0x1058 doubleword less 4, and the
  `sw` at 0xb39511c in the return's delay slot, which raises the 0x1048 word by 1; no record is written.
  A nonzero result reloads the 0x1058 doubleword (0xb395094) and makes the pad 1 if its bit 0x4 is set.
  Record writing then uses a1, the 0x1058 doubleword plus 4 times the pad: the `sw` at 0xb3950b4 stores
  0xffffffffc380c41f at +0x0, and the `swc1` at 0xb3950d0 stores at +0x4 the double loaded by the `ldc1`
  at 0xb3950b8 from a0 +0x0 and narrowed to single precision. The `sd` at 0xb3950d8 sets 0x1058 to a1 plus
  8, the `sw` at 0xb3950e4 stores the 0x1048 word (or the call result) less the pad and less 2, and the
  `sw` at 0xb3950f4, in the delay slot of the `jr ra`, adds 2 to the 0x1060 word, which is also left in v0.
  Unknown: the destination of the indirect call that `__glSPDlistSpace` makes at 0x328fda0, which gives
  this routine its zero or nonzero result; its own entry is the route.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1f` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb395120 (n64).
  Pushes a two-word record to a buffer whose fill pointer is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c41f (the `sw` at 0xb3951b8). Next in the record come the
  single-precision argument in f12 (the `swc1` at 0xb3951bc). Inferred: the word at absolute 0x1048
  counts free words, because the routine compares it with 2 plus a flag, calls `__glSPDlistSpace`
  when it is too small, and ends by lowering it by the 2 words written plus the flag. The flag is 1
  when bit 0x4 of the cursor is set, and falls back to 0 when the word at absolute 0x1060 is
  nonzero. The `beq` at 0xb39515c bypasses the call when the word at 0x1048 is at least flag plus
  2. Otherwise, f12 waits in the frame (the `sdc1` at 0xb39516c, reloaded by the `ldc1` at
  0xb395178), and the `jalr` at 0xb395170 calls `__glSPDlistSpace` with a0 zero in the delay slot.
  A zero return goes at 0xb395180 to the block at 0xb3951e4, which reduces the cursor by 4 (`sd` at
  0xb3951ec), raises the word at 0x1048 by 1 (`sw` at 0xb395208) and returns the call's zero with
  no record written. A nonzero return reloads the cursor at 0xb395188 and promotes the flag to 1
  when its bit 0x4 is set. The tail at 0xb395198 writes the record at cursor plus 4 times the flag,
  stores record plus 8 back to the cursor (`sd` at 0xb3951c4), stores the word at 0x1048 (its first
  value, or the call's return) minus the flag minus 2 (`sw` at 0xb3951d0), and adds 2 to the word
  at 0x1060 (`sw` at 0xb3951e0). That sum is passed out in v0 (`jr` at 0xb3951dc). Unknown: which
  structure of the absolute words 0x1048, 0x1058 and 0x1060 is unnamed, since neither a linked
  register row nor a datasheet excerpt lists them.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1fv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb395210 (n64).
  Appends a two-word record to a list whose fill pointer is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c41f (the `sw` at 0xb3952a0). The rest of the record is
  the single-precision value that a0 points to (the `lwc1` at 0xb3952a4, the `swc1` at 0xb3952ac).
  Inferred: the word at absolute 0x1048 counts free words, because the routine compares it with 2
  plus a flag, calls `__glSPDlistSpace` when it is smaller, and finally lowers it by the 2 words
  written plus the flag. The flag starts as 1 when bit 0x4 of the cursor is set, and is reset to 0
  when the word at absolute 0x1060 is nonzero. The `beq` at 0xb395248 skips the call when the word
  at 0x1048 is at least flag plus 2. If room is short, a0 is saved in the frame (0xb395254) and
  restored at 0xb395264, and the `jalr` at 0xb39525c invokes `__glSPDlistSpace` with a0 zero in the
  delay slot. A zero return goes at 0xb39526c to the block at 0xb3952d4, which reduces the cursor
  by 4 (`sd` at 0xb3952dc), bumps the word at 0x1048 by 1 (`sw` at 0xb3952f8) and returns the
  call's zero with no record written. A nonzero return reads back the cursor at 0xb395274 and sets
  the flag to 1 when its bit 0x4 is set. The tail at 0xb395284 emits the record at cursor plus 4
  times the flag, saves record plus 8 back to the cursor (`sd` at 0xb3952b4), stores the word at
  0x1048 (its first value, or the call's return) minus the flag minus 2 (`sw` at 0xb3952c0), and
  adds 2 to the word at 0x1060 (`sw` at 0xb3952d0). This total is passed out in v0 (`jr` at
  0xb3952cc). Unknown: the home of the absolute words 0x1048, 0x1058 and 0x1060 is not stated, as
  no linked register row or datasheet excerpt gives them.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb395300 (n64).
  Pushes a two-word record to a list whose fill pointer is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c41e (the `sw` at 0xb395394). The rest of the record is
  the integer argument a0 unchanged (the `sw` at 0xb395398). Inferred: the word at absolute 0x1048
  counts free words, because the routine compares it with 2 plus a flag, enters `__glSPDlistSpace`
  when it is too small, and ends by lowering it by the 2 words written plus the flag. The flag is 1
  when bit 0x4 of the cursor is set, and is cleared to 0 when the word at absolute 0x1060 is
  nonzero. The `beq` at 0xb395338 avoids the call when the word at 0x1048 is at least flag plus 2.
  With too little room, a0 is saved in the frame (0xb395344) and restored at 0xb395354, and the
  `jalr` at 0xb39534c calls `__glSPDlistSpace` with a0 zero in the delay slot. A zero return goes
  at 0xb39535c to the block at 0xb3953c0, which lowers the cursor by 4 (`sd` at 0xb3953c8),
  increments the word at 0x1048 by 1 (`sw` at 0xb3953e4) and hands back the zero with no record
  written. A nonzero return reads back the cursor at 0xb395364 and raises the flag to 1 when its
  bit 0x4 is set. The tail at 0xb395374 lays down the record at cursor plus 4 times the flag, saves
  record plus 8 back to the cursor (`sd` at 0xb3953a0), stores the word at 0x1048 (its first value,
  or the call's return) minus the flag minus 2 (`sw` at 0xb3953ac), and adds 2 to the word at
  0x1060 (`sw` at 0xb3953bc). That sum is handed back in v0 (`jr` at 0xb3953b8). Unknown: which
  structure of the absolute words 0x1048, 0x1058 and 0x1060 is not stated, as no linked register
  row or datasheet excerpt lists them.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3954e0 (n64).
  Adds a two-word record to a buffer whose fill pointer is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c41e (the `sw` at 0xb395574). It continues with the whole
  of a0 as a word (the `sw` at 0xb395578). Inferred: the word at absolute 0x1048 tracks free space
  in words, because the routine compares it with 2 plus a flag, calls `__glSPDlistSpace` when it is
  too small, and then reduces it by the 2 words written plus the flag. The flag begins as 1 when
  bit 0x4 of the cursor is set, and drops to 0 when the word at absolute 0x1060 is nonzero. The
  `beq` at 0xb395518 steps past the call when the word at 0x1048 is at least flag plus 2. When the
  room is short, a0 is saved in the frame (0xb395524) and restored at 0xb395534, and the `jalr` at
  0xb39552c calls `__glSPDlistSpace` with a0 zero in the delay slot. A zero return branches at
  0xb39553c to the block at 0xb3955a0, which steps back the cursor by 4 (`sd` at 0xb3955a8), bumps
  the word at 0x1048 by 1 (`sw` at 0xb3955c4) and returns the call's zero with no record written. A
  nonzero return fetches again the cursor at 0xb395544 and promotes the flag to 1 when its bit 0x4
  is set. The tail at 0xb395554 emits the record at cursor plus 4 times the flag, moves record plus
  8 back to the cursor (`sd` at 0xb395580), writes the word at 0x1048 (its first value, or the
  call's return) minus the flag minus 2 (`sw` at 0xb39558c), and adds 2 to the word at 0x1060 (`sw`
  at 0xb39559c). The updated count is handed back in v0 (`jr` at 0xb395598). Unknown: the owning
  structure of the absolute words 0x1048, 0x1058 and 0x1060 is unresolved, since none of the linked
  rows or excerpts names them.
  Evidence grade: inferred.

- `__glOdylc_TexCoord2d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3956c0 (n64).
  Adds a three-word record to a buffer whose write cursor is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c821 (the `sw` at 0xb395768). Next in the record come the
  two double-precision arguments, each narrowed to single precision: f12 at +4 (the `swc1` at
  0xb395770) and f13 at +8 (the `swc1` at 0xb395774). Inferred: the word at absolute 0x1048 holds
  the remaining room in words, because the routine compares it with 3 plus a flag, calls
  `__glSPDlistSpace` when it is too small, and then reduces it by the 3 words written plus the
  flag. The flag starts as 1 when bit 0x4 of the cursor is set, and is forced to 0 when the word at
  absolute 0x1060 is nonzero. The `beq` at 0xb395700 jumps over the call when the word at 0x1048 is
  at least flag plus 3. If room is short, both arguments are copied to the frame (0xb39570c,
  0xb395714) and reloaded afterwards, and the `jalr` at 0xb395718 calls `__glSPDlistSpace` with a0
  zero in the delay slot. A zero return branches at 0xb39572c to the block at 0xb39579c, which
  steps back the cursor by 4 (`sd` at 0xb3957a4), bumps the word at 0x1048 by 1 (`sw` at 0xb3957c0)
  and hands back the zero with no record written. A nonzero return reloads the cursor at 0xb395734
  and sets the flag to 1 when its bit 0x4 is set. The tail at 0xb395744 puts the record at cursor
  plus 4 times the flag, stores record plus 12 back to the cursor (`sd` at 0xb39577c), writes the
  word at 0x1048 (its first value, or the call's return) minus the flag minus 3 (`sw` at
  0xb395788), and adds 3 to the word at 0x1060 (`sw` at 0xb395798). This total is handed back in v0
  (`jr` at 0xb395794). Unknown: the owning structure of the absolute words 0x1048, 0x1058 and
  0x1060 is open, since no linked register row or datasheet excerpt lists them.
  Evidence grade: inferred.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb395ad0

`__glOdylc_TexCoord2i` (244 bytes) reads words at abs 0x1048 and 0x1060 and an 8-byte value at
0x1058. It calls `__glSPDlistSpace` at 0xb395b20 with a0 = 0 only on the path where the 0x1048 word is
below a limit the facts leave unresolved (branch at 0xb395b08); otherwise the call is skipped. After
the call it branches on the result at 0xb395b34 (taken when the result is zero). The routine returns
either the 0x1060 word plus 3 (0xb395b94) or, on the zero-result path, the call result (0xb395bbc). The name
suggests a texture-coordinate entry that compiles into a display list, but the facts do not show
what the 0x1048 and 0x1060 words hold, so the role is only partly clear.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb396310

`__glOdylc_TexCoord3i` (256 bytes) has the same shape as the 2i routine. It uses the same state
words at 0x1048, 0x1058 and 0x1060. It calls `__glSPDlistSpace` at 0xb396364 with a0 = 0 only on the
path where the 0x1048 word is below an unresolved limit (branch at 0xb396348), as in the 2i routine.
Its return adds 4 to the 0x1060 word (0xb3963e0), where the 2i routine adds 3. That fits one more
operand, but the facts do not confirm it.

Grade: inferred.

Reviewed: 2026-11-12

- `__glOdylc_TexCoord4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb396b90 (n64).
  Appends a five-word record to a buffer whose write pointer is the doubleword at absolute 0x1058: the
  constant 0xffffffffc380d024 (`sw` at 0xb396c3c) followed by the four incoming arguments a0 to a3 (`sw` at
  0xb396c40 to 0xb396c4c, offsets +0x4 to +0x10). Then it stores the pointer advanced by 0x14 (`sd` at
  0xb396c54). The record starts at the pointer plus 4 when a flag is set, otherwise at the pointer. The
  flag is 1 when bit 0x4 of the pointer is set and the word at 0x1060 is zero (the values are loaded at
  0xb396b98 and 0xb396ba0); it is recomputed from the reloaded pointer after the call (0xb396c18), and
  that second computation does not test 0x1060. The word at 0x1048 is a free-space count: the signed compare before the `beq` at 0xb396bc8 tests it against 5
  plus the flag, and the `beq` at 0xb396bc8 skips the space check when it is not lower. Otherwise the
  routine calls `__glSPDlistSpace` with a0 zero and the original a1 to a3 (`jalr` at 0xb396be8, target
  from 0xb4c9108). If that returns zero (`beq` at 0xb396c04), the record is not written: block 0xb396c74
  stores the pointer minus 4 (`sd` at 0xb396c7c), adds one to the word at 0x1048 (`sw` at 0xb396c98) and
  returns zero. On the write path the word at 0x1048 becomes the count (loaded value, or the call's
  return) minus the flag minus 5 (`sw` at 0xb396c60), the word at 0x1060 is increased by 5 (`sw` at
  0xb396c70), and that new 0x1060 value is returned.
  Unknown: what the three absolute locations hold and where the buffer lives; the route is the code that
  initialises 0x1048, 0x1058 and 0x1060.
  Evidence grade: established.

- `FreeTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb397be0 (n64).
  Does not touch the device directly; it calls up to two routines, one through a pointer loaded from memory and one through a pointer inside the object in a0.
  The `lw` at 0xb397be4 reads the word at +0x53c of the record in a1, and the `beq` at 0xb397c04 jumps past the first call when that word equals -1.
  Otherwise the first call goes to `__glOdysseyDestroyPMObjGroup` at 0xb38f4d0, through a target loaded from the absolute address 0xb4c8100 by the `ld` at 0xb397c0c, with a1 set to the record plus 0x53c in the delay slot and a0, a2 and a3 as they arrived.
  The `ld` at 0xb397c20 reloads a1 from the frame slot that the `sd` at 0xb397c14 wrote, so the second call receives the entry a1 on both paths.
  The second call goes through the 8-byte pointer at +0x18 of the object in a0 (the `ld` at 0xb397c24), with a0 set from s8 in its delay slot, and the `jr ra` at 0xb397c3c returns the v0 that call leaves.
  Unknown: the content of the routine at 0xb38f4d0; its only committed row is for the IP30ODSY32 binary at 0xd9c69f0, a different build, so a row for this build would settle it.
  Unknown: the target of the pointer at +0x18 of the object in a0 and the v0 it returns, since both are read from memory at run time; a run that records the target, or a committed row for it, would settle them.
  Evidence grade: established.

- `FreeTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb397be0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb397be0-0xb397c44 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xb397be4 loads 4 bytes from a1 (arg1 at entry) +0x53c.
  The `ld` at 0xb397c24 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `jalr` at 0xb397c18 calls __glOdysseyDestroyPMObjGroup [0xb38f4d0] with a0=a0 at entry (arg0), a1=a1+1340, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb397c28 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0xb397c04 targets 0xb397c24, is taken when at(=[a1+1340]) == v0(=-0x1), and falls through when at(=[a1+1340]) != v0(=-0x1).
  The return at 0xb397c3c has v0 = ret(?).

- `InitTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb397c50 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb397c50-0xb397e64 (532 bytes).
  It occupies 532 bytes.
  The `sw` at 0xb397c54 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0xb397c5c stores 4 bytes to a0 (arg0 at entry) +0x48.
  The `sw` at 0xb397c7c stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `sw` at 0xb397c80 stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `sw` at 0xb397c84 stores 4 bytes to a0 (arg0 at entry) +0x24.
  The `sw` at 0xb397c8c stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `sw` at 0xb397c94 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `sw` at 0xb397c98 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `sw` at 0xb397c9c stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `sw` at 0xb397ca0 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0xb397ca8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `swc1` at 0xb397cac stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `swc1` at 0xb397cb0 stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `swc1` at 0xb397cb4 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `swc1` at 0xb397cb8 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `swc1` at 0xb397cc4 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `sd` at 0xb397ccc stores 8 bytes to a0 (arg0 at entry) +0x8.
  13 such `sw` accesses store 4 bytes to ?, including `sw` at 0xb397ce0, `sw` at 0xb397ce4, `sw` at 0xb397ce8.
  The `sw` at 0xb397d24 stores 4 bytes to a0 (arg0 at entry) +0x560.
  The `sw` at 0xb397d28 stores 4 bytes to a0 (arg0 at entry) +0x550.
  The `sw` at 0xb397d2c stores 4 bytes to a0 (arg0 at entry) +0x54c.
  The `sw` at 0xb397d30 stores 4 bytes to a0 (arg0 at entry) +0xc8.
  The `sw` at 0xb397d34 stores 4 bytes to a0 (arg0 at entry) +0x540.
  The `sw` at 0xb397d3c stores 4 bytes to a0 (arg0 at entry) +0x53c.
  The `sd` at 0xb397d54 stores 8 bytes to a0 (arg0 at entry) +0x568.
  The `sd` at 0xb397d60 stores 8 bytes to a0 (arg0 at entry) +0x558.
  The `sw` at 0xb397d7c stores 4 bytes to a0 (arg0 at entry) +0x138.
  The `sw` at 0xb397d80 stores 4 bytes to a0 (arg0 at entry) +0x130.
  The `sw` at 0xb397d84 stores 4 bytes to a0 (arg0 at entry) +0x128.
  The `sw` at 0xb397d88 stores 4 bytes to a0 (arg0 at entry) +0x120.
  The `sw` at 0xb397d90 stores 4 bytes to a0 (arg0 at entry) +0x134.
  The `sw` at 0xb397d94 stores 4 bytes to a0 (arg0 at entry) +0x12c.
  The `sw` at 0xb397d98 stores 4 bytes to a0 (arg0 at entry) +0x124.
  The `sw` at 0xb397d9c stores 4 bytes to a0 (arg0 at entry) +0x11c.
  The `sw` at 0xb397da0 stores 4 bytes to a0 (arg0 at entry) +0xe4.
  The `sw` at 0xb397da4 stores 4 bytes to a0 (arg0 at entry) +0xe0.
  The `sw` at 0xb397da8 stores 4 bytes to a0 (arg0 at entry) +0xd8.
  The `sw` at 0xb397dac stores 4 bytes to a0 (arg0 at entry) +0xd4.
  The `sw` at 0xb397db0 stores 4 bytes to a0 (arg0 at entry) +0xd0.
  The `sw` at 0xb397db8 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0xb397dbc stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `sw` at 0xb397dc4 stores 4 bytes to a0 (arg0 at entry) +0x10c.
  The `sw` at 0xb397dcc stores 4 bytes to a0 (arg0 at entry) +0x108.
  The `sw` at 0xb397dd0 stores 4 bytes to a0 (arg0 at entry) +0x104.
  The `sw` at 0xb397dd4 stores 4 bytes to a0 (arg0 at entry) +0x100.
  The `sw` at 0xb397dd8 stores 4 bytes to a0 (arg0 at entry) +0xfc.
  The `sw` at 0xb397ddc stores 4 bytes to a0 (arg0 at entry) +0xf8.
  The `sw` at 0xb397de0 stores 4 bytes to a0 (arg0 at entry) +0xf4.
  The `sw` at 0xb397de4 stores 4 bytes to a0 (arg0 at entry) +0xf0.
  The `sw` at 0xb397de8 stores 4 bytes to a0 (arg0 at entry) +0xec.
  The `sw` at 0xb397dec stores 4 bytes to a0 (arg0 at entry) +0xe8.
  The `sw` at 0xb397df0 stores 4 bytes to a0 (arg0 at entry) +0x118.
  The `sw` at 0xb397df4 stores 4 bytes to a0 (arg0 at entry) +0x114.
  The `sw` at 0xb397df8 stores 4 bytes to a0 (arg0 at entry) +0x110.
  The `sw` at 0xb397e00 stores 4 bytes to a0 (arg0 at entry) +0xcc.
  The `swc1` at 0xb397e14 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `swc1` at 0xb397e18 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `swc1` at 0xb397e1c stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `swc1` at 0xb397e20 stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `swc1` at 0xb397e24 stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `swc1` at 0xb397e28 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `swc1` at 0xb397e2c stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `swc1` at 0xb397e30 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  The `swc1` at 0xb397e34 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `swc1` at 0xb397e38 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `swc1` at 0xb397e3c stores 4 bytes to a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xdc, including `sw` at 0xb397e40, `sw` at 0xb397e48.
  The `swc1` at 0xb397e50 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `swc1` at 0xb397e54 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xb397d5c calls bzero with a0=a0+316, a1=0x400, a2=a2 at entry (arg2), a3=-0x4, a5=0xb4c0e88, a6=-0x1, a7=0x2.
  The `jalr` at 0xb397d74 calls __glOdysseyTextureSetDetailTable [0xb3a0f80] with a0=a0 at entry (arg0), a1=0x2, a2=0xb4c0e88, a3=?.
  The `bne` branch at 0xb397d18 targets 0xb397ce0, is taken when a4(?) != a6(=a0+1088), and falls through when a4(?) == a6(=a0+1088).
  The return at 0xb397e5c has v0 = 0x3100.

- `__glOdysseyTextureDriverDestroy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb398040 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb398040-0xb398100 (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0xb398050 loads 8 bytes from a0 (arg0 at entry) +0x18b20.
  The `lw` at 0xb398054 loads 4 bytes from [a0+101152]:8 +0x10.
  The `ld` at 0xb398088 loads 8 bytes from a0 (arg0 at entry) +0x18b28.
  The `lw` at 0xb39808c loads 4 bytes from [a0+101160]:8 +0x10.
  The `ld` at 0xb3980a8 loads 8 bytes from a0 (arg0 at entry) +0x18b30.
  The `lw` at 0xb3980ac loads 4 bytes from [a0+101168]:8 +0x10.
  The `ld` at 0xb3980c8 loads 8 bytes from a0 (arg0 at entry) +0x18b38.
  The `lw` at 0xb3980cc loads 4 bytes from [a0+101176]:8 +0x10.
  The `jalr` at 0xb39807c calls __glNamesUnlockData [0xb420260] with a0=a0 at entry (arg0), a1=[a0+101152]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb39809c calls __glNamesUnlockData [0xb420260] with a0=a0 at entry (arg0), a1=[a0+101160]:8, a2=?, a3=?.
  The `jalr` at 0xb3980bc calls __glNamesUnlockData [0xb420260] with a0=a0 at entry (arg0), a1=[a0+101168]:8, a2=?, a3=?.
  The `jalr` at 0xb3980e4 calls __glNamesUnlockData [0xb420260] with a0=a0 at entry (arg0), a1=[a0+101176]:8, a2=?, a3=?.
  The `beq` branch at 0xb39806c targets 0xb398088, is taken when at(=[[a0+101152]:8+16]) == 0, and falls through when at(=[[a0+101152]:8+16]) != 0.
  The `beq` branch at 0xb398090 targets 0xb3980a8, is taken when at(=[[a0+101160]:8+16]) == 0, and falls through when at(=[[a0+101160]:8+16]) != 0.
  The `beq` branch at 0xb3980b0 targets 0xb3980c8, is taken when v0(=[[a0+101168]:8+16]) == 0, and falls through when v0(=[[a0+101168]:8+16]) != 0.
  The `beq` branch at 0xb3980d0 targets 0xb3980f0, is taken when v1(=[[a0+101176]:8+16]) == 0, and falls through when v1(=[[a0+101176]:8+16]) != 0.
  The return at 0xb3980f8 has v0 = one of ?, ret(__glNamesUnlockData).

- `__glOdysseyGetCurrentTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3981e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3981e0-0xb3982c0 (224 bytes).
  It occupies 224 bytes.
  The `ld` at 0xb39822c loads 8 bytes from a0 (arg0 at entry) +0x18b38.
  The `ld` at 0xb398288 loads 8 bytes from a0 (arg0 at entry) +0x18b30.
  The `ld` at 0xb3982a8 loads 8 bytes from a0 (arg0 at entry) +0x18b28.
  The `ld` at 0xb3982bc loads 8 bytes from a0 (arg0 at entry) +0x18b20.
  The `bne` branch at 0xb3981f4 targets 0xb398230, is taken when a1 < a3(=0x8064) (unsigned), and falls through when a1 >= a3(=0x8064) (unsigned).
  The `beq` branch at 0xb3981fc targets 0xb39828c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xb398208 targets 0xb398270, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xb398210 targets 0xb3982ac, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0xb398220 targets 0xb398268, is taken when a1 != at(=0x8095), and falls through when a1 == at(=0x8095).
  The `bne` branch at 0xb398230 targets 0xb398254, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xb398238 targets 0xb39829c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0xb398244 targets 0xb398268, is taken when a1 != at(=0x8063), and falls through when a1 == at(=0x8063).
  The `beq` branch at 0xb398260 targets 0xb3982b8, is taken when a1 == v1(=0xde0), and falls through when a1 != v1(=0xde0).
  The `bne` branch at 0xb39827c targets 0xb398268, is taken when a1 != a2(=0x806f), and falls through when a1 == a2(=0x806f).
  The return at 0xb398228 has v0 = [a0+101176]:8.
  The return at 0xb39824c has v0 = a0+93520.
  The return at 0xb398268 has v0 = 0x0.
  The return at 0xb398284 has v0 = [a0+101168]:8.
  The return at 0xb398294 has v0 = a0+96064.
  The return at 0xb3982a4 has v0 = [a0+101160]:8.
  The return at 0xb3982b0 has v0 = a0+98608.
  The return at 0xb3982b8 has v0 = [a0+101152]:8.

- `AllocateGfxMemForTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb398b00 (n64).
  Inferred: the routine fills a per-index slot of the current texture record with the entry arguments and the results of the format and size routines, and creates or replaces the PM object behind it, since its stores go to slots at a stride of 0x44 and it calls `__glOdysseyCreatePMObj`, `__glOdysseyDestroyPMObj` and `__glOdysseyDestroyPMObjGroup`. It gets the current texture record T from `__glOdysseyGetCurrentTexture` (`bgezall` at 0xb398b58, an unconditional call because its register is zero) with the 8-byte word at abs 0x1020 and its first argument, then calls `ChooseSuitableBuzzTexObjFormat` (`bgezall` at 0xb398b70) and `CalcTexelSizes` (`bgezall` at 0xb398ba4) with seven frame addresses from sp-288 to sp-264 as a1 to a7.
  Two `ceilf` calls (`jalr` at 0xb398bd0 and 0xb398c18) round the values a2 minus twice a5 and a3 minus twice a6, each scaled by the 0.0625 literal in the delay slot (`lwc1` at 0xb398bb8), and the two sizes are multiplied. With a4 below 2 (`beq` at 0xb398c40 not taken) the product is kept; with a4 of 2 or more that `beq` is taken and `__glOdysseyImageLogBase2` (`jalr` at 0xb398f20) is called on the product, which its committed entry gives as a rounded-up base-2 logarithm, and 1 shifted left by the result is kept instead. The kept value goes to frame +0x90.
  The routine then zeroes 0x28 bytes at frame +0x1c (`memset`, `jalr` at 0xb398c58) and fills them as a request block for `__glOdysseyCreatePMObj`: a4, a3 and a2 at +0x34, +0x30 and +0x2c, the kept value at +0x3c, byte 4 at +0x1c, and three more words at +0x20, +0x24 and +0x28 that are zero when a5 is zero (`beq` at 0xb398c94) and otherwise 0x10 minus a5, a6 and a7, each masked with 0xf. It picks the pointer v0 by the first argument: P+0x14acc, P+0x154bc or P+0x15eac for 0x8063, 0x8064 or 0x8070 (`beq` at 0xb398cc8, 0xb398cd0 and 0xb398cd8), where P is the 8-byte word at abs 0x1020, and T+0x53c otherwise (`daddiu` at 0xb398cdc).
  When a2 times a3 times a4 is nonzero (`bne` at 0xb398cf8) the routine calls `__glOdysseyCreatePMObj` with the word at abs 0x1020, the request block, v0 and the second argument (`jalr` at 0xb398dac). A zero return (`beq` at 0xb398db4) goes to the error path: for first argument 0x8063, 0x8064 or 0x8070 it clears 0x44 bytes at S+0x5b0 with `memset` (`jalr` at 0xb39903c), otherwise it calls `__glSetError` with 0x505 (`jalr` at 0xb398fa0), and both return 0 at 0xb398fd0. When the product is zero, the 4-byte word at v0 equal to -1 (`beq` at 0xb398d0c) or the word at S+0x5c4 not equal to 1 (`bne` at 0xb398d1c) skips straight to the stores. Otherwise the routine walks the records at stride 0x44, T+0xc4 of them, other than S, looking for another record whose word at +0x5c4 is 1; if one is found (`beq` at 0xb398d80) it calls `__glOdysseyDestroyPMObj` (`jalr` at 0xb399058) with v0 and the second argument, and if none is found it calls `__glOdysseyDestroyPMObjGroup` (`jalr` at 0xb398d8c) with v0, before the stores.
  On the paths that reach the stores, the slot S = T + (((a1<<4)+a1)<<2) receives a2, a3, a4 and a5 at S+0x5cc, S+0x5d0, S+0x5d4 and S+0x5d8 (`sw` at 0xb398dd8, 0xb398dd4, 0xb398dd0 and 0xb398dcc, 0xb398d98 or 0xb399064), the ninth argument at S+0x5c8 (`sw` at 0xb398de0), the return of `ChooseSuitableBuzzTexObjFormat` at S+0x5b0 (`sw` at 0xb398e14), the seven words that `CalcTexelSizes` left at frame +0 to +0x18 at S+0x5dc, S+0x5e0, S+0x5e4, S+0x5e8, S+0x5ec, S+0x5f0 and S+0x5b4 (`sw` at 0xb398de8 to 0xb398e28), the result of `CalcPixelModePixelFormat` at S+0x5b8 (`sw` at 0xb398e3c), and the descriptor words at frame +0x38 and +0x3c at S+0x5bc and S+0x5c0 (`sw` at 0xb398e48 and 0xb398e58).
  A nonzero second argument returns 1 at 0xb398f14 after those stores (`bne` at 0xb398e54). With a second argument of zero, three loops first halve the values a2 minus twice a5, a3 minus twice a6 and a4 minus twice a7 until they reach zero, counting the passes from 0 (loops at 0xb398e90, 0xb398eb0 and 0xb398ed0); the counts go to T+0xb8, T+0xbc and T+0xc0 in that order, and T+0xc4 takes the largest of the three (`sw` at 0xb398edc to 0xb398ef4), before the return of 1.
  Unknown: the content of the seven frame words that `CalcTexelSizes` writes and the arguments of `ChooseSuitableBuzzTexObjFormat`, since the bundle has no entry for either callee; their own entries would settle them.
  Evidence grade: inferred.

- `AllocateGfxMemForTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb398b00 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb398b00-0xb399068 (1384 bytes).
  It occupies 1384 bytes.
  The `ld` at 0xb398b50 loads 8 bytes from abs 0x1020.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xb398d00, `lw` at 0xb398fec, `lw` at 0xb399010.
  The `lw` at 0xb398d18 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c4.
  The `lw` at 0xb398d24 loads 4 bytes from ret(__glOdysseyGetCurrentTexture) +0xc4.
  The `lw` at 0xb398d64 loads 4 bytes from ret(__glOdysseyGetCurrentTexture) +0x5c4.
  3 such `sw` accesses store 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d8, including `sw` at 0xb398d98, `sw` at 0xb398dcc, `sw` at 0xb399064.
  The `sw` at 0xb398dd0 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d4.
  The `sw` at 0xb398dd4 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d0.
  The `sw` at 0xb398dd8 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5cc.
  The `sw` at 0xb398de0 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c8.
  The `sw` at 0xb398de8 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5dc.
  The `sw` at 0xb398df0 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5e0.
  The `sw` at 0xb398df8 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5e4.
  The `sw` at 0xb398e00 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5e8.
  The `sw` at 0xb398e08 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5ec.
  The `sw` at 0xb398e14 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b0.
  The `sw` at 0xb398e18 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5f0.
  The `sw` at 0xb398e28 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b4.
  The `sw` at 0xb398e3c stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b8.
  The `sw` at 0xb398e48 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5bc.
  The `sw` at 0xb398e58 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c0.
  The `sw` at 0xb398edc stores 4 bytes to ret(__glOdysseyGetCurrentTexture) +0xb8.
  The `sw` at 0xb398ee0 stores 4 bytes to ret(__glOdysseyGetCurrentTexture) +0xc0.
  The `sw` at 0xb398ee8 stores 4 bytes to ret(__glOdysseyGetCurrentTexture) +0xbc.
  The `sw` at 0xb398ef4 stores 4 bytes to ret(__glOdysseyGetCurrentTexture) +0xc4.
  The `bgezall` at 0xb398b58 calls __glOdysseyGetCurrentTexture [0xb3981e0] with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xb398b70 calls ChooseSuitableBuzzTexObjFormat [0xb3984c0] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xb398ba4 calls CalcTexelSizes [0xb398920] with a0=ret(ChooseSuitableBuzzTexObjFormat), a1=sp-288, a2=sp-284, a3=sp-280, a4=sp-276, a5=sp-272, a6=sp-268, a7=sp-264.
  The `jalr` at 0xb398bd0 calls ceilf with a0=?, a1=?, a2=?, a3=?; fp f13=0x3d800000.
  The `jalr` at 0xb398c18 calls ceilf with a0=?, a1=?, a2=?, a3=?; fp f13=0x3d800000.
  The `jalr` at 0xb398c58 calls memset with a0=sp-260, a1=0x0, a2=0x28, a3=?.
  The `jalr` at 0xb398d8c calls __glOdysseyDestroyPMObjGroup [0xb38f4d0] with a0=?, a1=?, a2=?, a3=?, a5=one of 0x0, 0x1, a7=(((a1 << 0x4) + a1) << 0x2).
  The `jalr` at 0xb398dac calls __glOdysseyCreatePMObj [0xb38f2f0] with a0=?, a1=sp-260, a2=?, a3=a1 at entry (arg1), a7=(a1 << 0x4).
  The `bgezall` at 0xb398e2c calls CalcPixelModePixelFormat [0xb398ae0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xb398f20 calls __glOdysseyImageLogBase2 [0xb38a9c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xb398fa0 calls __glSetError [0xb3f83f0] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xb39903c calls memset with a0=((((a1 << 0x4) + a1) << 0x2) + ret(__glOdysseyGetCurrentTexture))+1456, a1=0x0, a2=0x44, a3=?.
  The `jalr` at 0xb399058 calls __glOdysseyDestroyPMObj [0xb38f620] with a0=?, a1=?, a2=a1 at entry (arg1), a3=?, a5=one of 0x0, 0x1, a7=(((a1 << 0x4) + a1) << 0x2).
  The `beq` branch at 0xb398c40 targets 0xb398f1c, is taken when s0(=a4) >= 0x2 (signed), and falls through when s0(=a4) < 0x2 (signed).
  The `beq` branch at 0xb398c94 targets 0xb398f38, is taken when s3(=a5) == 0, and falls through when s3(=a5) != 0.
  The `beq` branch at 0xb398cc8 targets 0xb398f48, is taken when s6(=0x8063) == s4(=a0), and falls through when s6(=0x8063) != s4(=a0).
  The `beq` branch at 0xb398cd0 targets 0xb398f5c, is taken when s4(=a0) == t0(=0x8064), and falls through when s4(=a0) != t0(=0x8064).
  The `beq` branch at 0xb398cd8 targets 0xb398f70, is taken when s4(=a0) == t1(=0x8070), and falls through when s4(=a0) != t1(=0x8070).
  The `bne` branch at 0xb398cf8 targets 0xb398d9c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xb398d0c targets 0xb398dcc, is taken when t0(?) == t1(=-0x1), and falls through when t0(?) != t1(=-0x1).
  The `bne` branch at 0xb398d1c targets 0xb398dcc, is taken when t0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1476]) != t3(=0x1), and falls through when t0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1476]) == t3(=0x1).
  The `blez` branch at 0xb398d28 targets 0xb398d80, is taken when t8(=[ret(__glOdysseyGetCurrentTexture)+196]) <= 0 (signed), and falls through when t8(=[ret(__glOdysseyGetCurrentTexture)+196]) > 0 (signed).
  The `beq` branch at 0xb398d54 targets 0xb398d74, is taken when (t9(?) & 0x1) == 0, and falls through when (t9(?) & 0x1) != 0.
  The `beq` branch at 0xb398d5c targets 0xb398d70, is taken when a4(=ret(__glOdysseyGetCurrentTexture)) == a6(=(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))), and falls through when a4(=ret(__glOdysseyGetCurrentTexture)) != a6(=(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))).
  The `bne` branch at 0xb398d78 targets 0xb399008, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xb398d80 targets 0xb39904c, is taken when a5(=one of 0x0, 0x1) == 0, and falls through when a5(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xb398d94 targets 0xb398dd0 and is always taken.
  The `beq` branch at 0xb398db4 targets 0xb398f84, is taken when v0(=ret(__glOdysseyCreatePMObj)) == 0, and falls through when v0(=ret(__glOdysseyCreatePMObj)) != 0.
  The `bne` branch at 0xb398e54 targets 0xb398ef8, is taken when s5(=a1) != 0, and falls through when s5(=a1) == 0.
  The `beq` branch at 0xb398e7c targets 0xb398e9c, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0xb398e94 targets 0xb398e90, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0xb398ea0 targets 0xb398ebc, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0xb398eb4 targets 0xb398eb0, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0xb398ebc targets 0xb398edc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0xb398ed4 targets 0xb398ed0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xb398f30 targets 0xb398c4c and is always taken.
  The `beq` branch at 0xb398f40 targets 0xb398cc8 and is always taken.
  The `beq` branch at 0xb398f54 targets 0xb398ce0 and is always taken.
  The `beq` branch at 0xb398f68 targets 0xb398ce0 and is always taken.
  The `beq` branch at 0xb398f7c targets 0xb398ce0 and is always taken.
  The `beq` branch at 0xb398f84 targets 0xb399020, is taken when s6(=0x8063) == s4(=a0), and falls through when s6(=0x8063) != s4(=a0).
  The `beq` branch at 0xb398f8c targets 0xb399020, is taken when s4(=a0) == t0(=0x8064), and falls through when s4(=a0) != t0(=0x8064).
  The `beq` branch at 0xb398f94 targets 0xb399020, is taken when s4(=a0) == t1(=0x8070), and falls through when s4(=a0) != t1(=0x8070).
  The `beq` branch at 0xb398fe4 targets 0xb398ff8, is taken when a4(?) == a6(=(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))), and falls through when a4(?) != a6(=(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))).
  The `beq` branch at 0xb399000 targets 0xb398d80, is taken when a4(?) >= t2(=(ret(__glOdysseyGetCurrentTexture) + ((([ret(__glOdysseyGetCurrentTexture)+196] << 0x4) + [ret(__glOdysseyGetCurrentTexture)+196]) << 0x2))) (unsigned), and falls through when a4(?) < t2(=(ret(__glOdysseyGetCurrentTexture) + ((([ret(__glOdysseyGetCurrentTexture)+196] << 0x4) + [ret(__glOdysseyGetCurrentTexture)+196]) << 0x2))) (unsigned).
  The `beq` branch at 0xb399008 targets 0xb398fe0, is taken when a4(?) == a6(=(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))), and falls through when a4(?) != a6(=(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))).
  The `beq` branch at 0xb399018 targets 0xb398fe0 and is always taken.
  The `beq` branch at 0xb399044 targets 0xb398fa8 and is always taken.
  The `beq` branch at 0xb399060 targets 0xb398dd0 and is always taken.
  The return at 0xb398f14 has v0 = 0x1.
  The return at 0xb398fd0 has v0 = 0x0.
  The instructions from 0xb398fd8 to 0xb398fdc are not reached by any path from the entry, and their branches are not listed.

- `LoadTextureFromHost` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb399070 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb399070-0xb399608 (1432 bytes).
  It occupies 1432 bytes.
  The `ld` at 0xb3990b4 loads 8 bytes from abs 0x1020.
  The `ld` at 0xb3990e8 loads 8 bytes from [0x1020]:8 +0x18b48.
  The `sd` at 0xb399110 stores 8 bytes to ?.
  The `lw` at 0xb39913c loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d8.
  The `lw` at 0xb399210 loads 4 bytes from [0x1020]:8 +0x5c0.
  The `lw` at 0xb39922c loads 4 bytes from [0x1020]:8 +0x5a0.
  The `lw` at 0xb399240 loads 4 bytes from [0x1020]:8 +0x5b4.
  The `lw` at 0xb399254 loads 4 bytes from [0x1020]:8 +0x5ac.
  The `lw` at 0xb399268 loads 4 bytes from [0x1020]:8 +0x5a8.
  The `lw` at 0xb399284 loads 4 bytes from [0x1020]:8 +0x5a4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xb3992e4, `lw` at 0xb39945c.
  The `lw` at 0xb3992f4 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5bc.
  The `lw` at 0xb3992fc loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5cc.
  The `lw` at 0xb399304 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d0.
  The `lw` at 0xb39930c loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b8.
  3 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b4, including `lw` at 0xb399318, `lw` at 0xb399324, `lw` at 0xb39948c.
  2 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b0, including `lw` at 0xb39933c, `lw` at 0xb399358.
  The `lw` at 0xb39934c loads 4 bytes from [0x1020]:8 +0xa084.
  The `lw` at 0xb399350 loads 4 bytes from [0x1020]:8 +0x141f4.
  7 such `sw` accesses store 4 bytes to [0x1020]:8 +0xa084, including `sw` at 0xb399354, `sw` at 0xb399394, `sw` at 0xb3993bc.
  The `lbu` at 0xb399370 loads 1 byte from [0x1020]:8 +0xaf0.
  The `lbu` at 0xb399398 loads 1 byte from [0x1020]:8 +0xaf1.
  The `lbu` at 0xb3993c0 loads 1 byte from [0x1020]:8 +0xaf2.
  2 such `lbu` accesses load 1 byte from [0x1020]:8 +0xaf3, including `lbu` at 0xb3993ec, `lbu` at 0xb3995b8.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xb399468, `sw` at 0xb399488.
  The `sw` at 0xb39946c stores 4 bytes to abs 0x1030.
  The `sw` at 0xb399478 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c4.
  The `lw` at 0xb399490 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c0.
  The `lw` at 0xb399510 loads 4 bytes from [0x1020]:8 +0x5b0.
  The `bgezall` at 0xb399104 calls __glOdysseyTextureDeactivate [0xb39ac40] with a0=[0x1020]:8, a1=[[0x1020]:8+101192]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xb399130 calls __glOdysseyGetCurrentTexture [0xb3981e0] with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xb39916c calls __glSetError [0xb3f83f0] with a0=0x502, a1=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1496], a2=?, a3=?.
  The `jalr` at 0xb3991cc calls memset with a0=sp-384, a1=0x0, a2=0x40, a3=?.
  The `jalr` at 0xb3991f8 calls __glSpecElementsPerGroup [0xb3d72a0] with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xb399208 calls __glSpecBytesPerElement [0xb3d7470] with a0=a3 at entry (arg3), a1=?, a2=?, a3=?.
  The `jalr` at 0xb3992c4 calls memset with a0=sp-304, a1=0x0, a2=0x40, a3=?, a5=one of 0x0, 0x1.
  The `bgezall` at 0xb399338 calls GetImageFmtEnumFromBuzzTexFormat [0xb3982c0] with a0=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456], a1=?, a2=0x1, a3=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1460].
  The `jalr` at 0xb399430 calls __glOdysseyImageXfer [0xb359fd0] with a0=sp-304, a1=sp-384, a2=sp-320, a3=0x0, a4=sp-240.
  The `jalr` at 0xb3994ec calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xb399598 calls __glOdysseyImageXfer [0xb359fd0] with a0=sp-304, a1=sp-384, a2=sp-320, a3=0x0, a4=sp-240.
  The `beq` branch at 0xb3990cc targets 0xb3995e8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xb3990f4 targets 0xb399114, is taken when a1(=[[0x1020]:8+101192]:8) == 0, and falls through when a1(=[[0x1020]:8+101192]:8) != 0.
  The `beq` branch at 0xb399148 targets 0xb3991bc, is taken when a1(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1496]) == 0, and falls through when a1(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1496]) != 0.
  The `beq` branch at 0xb399150 targets 0xb39919c, is taken when s5(=0x806f) == s1(=a0), and falls through when s5(=0x806f) != s1(=a0).
  The `beq` branch at 0xb399158 targets 0xb3991a8, is taken when s1(=a0) == at(=0xde1), and falls through when s1(=a0) != at(=0xde1).
  The `beq` branch at 0xb399160 targets 0xb3991b0, is taken when s1(=a0) == v1(=0xde0), and falls through when s1(=a0) != v1(=0xde0).
  The `beq` branch at 0xb399360 targets 0xb3995b8, is taken when s6(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) == 0, and falls through when s6(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) != 0.
  The `beq` branch at 0xb399368 targets 0xb3995b8, is taken when s6(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) == at(=0x8), and falls through when s6(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) != at(=0x8).
  The `beq` branch at 0xb399410 targets 0xb39948c, is taken when s5(=0x806f) == s1(=a0), and falls through when s5(=0x806f) != s1(=a0).
  The `beq` branch at 0xb39953c targets 0xb39943c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xb3995a0 targets 0xb399570, is taken when s2(?) != s5(?), and falls through when s2(?) == s5(?).
  The `beq` branch at 0xb3995b0 targets 0xb39943c and is always taken.
  The `beq` branch at 0xb3995e0 targets 0xb399398 and is always taken.
  The return at 0xb399194 has v0 = ret(__glSetError).
  The return at 0xb399484 has v0 = ?.
  The return at 0xb399600 has v0 = a4.

- `LoadTextureFromReadable` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb399610 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb399610-0xb3999d4 (964 bytes).
  It occupies 964 bytes.
  The `ld` at 0xb399634 loads 8 bytes from abs 0x1020.
  The `ld` at 0xb399664 loads 8 bytes from [0x1020]:8 +0x18b48.
  The `sd` at 0xb39968c stores 8 bytes to ?.
  The `lw` at 0xb3996c0 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d8.
  The `lw` at 0xb3997ac loads 4 bytes from ret(__glOdysseyGetCurrentTexture) +0x53c.
  The `lw` at 0xb3997bc loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5bc.
  The `lw` at 0xb3997c4 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5cc.
  The `lw` at 0xb3997cc loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d0.
  The `lw` at 0xb3997d4 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b8.
  3 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b4, including `lw` at 0xb3997dc, `lw` at 0xb3997e8, `lw` at 0xb399958.
  2 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b0, including `lw` at 0xb399800, `lw` at 0xb39981c.
  The `lw` at 0xb399810 loads 4 bytes from [0x1020]:8 +0xa084.
  The `lw` at 0xb399814 loads 4 bytes from [0x1020]:8 +0x141f4.
  7 such `sw` accesses store 4 bytes to [0x1020]:8 +0xa084, including `sw` at 0xb399818, `sw` at 0xb399858, `sw` at 0xb399880.
  The `lbu` at 0xb399840 loads 1 byte from [0x1020]:8 +0xaf0.
  The `lbu` at 0xb39985c loads 1 byte from [0x1020]:8 +0xaf1.
  The `lbu` at 0xb399884 loads 1 byte from [0x1020]:8 +0xaf2.
  2 such `lbu` accesses load 1 byte from [0x1020]:8 +0xaf3, including `lbu` at 0xb3998ac, `lbu` at 0xb39998c.
  The `lw` at 0xb399920 loads 4 bytes from ?.
  The `sw` at 0xb39992c stores 4 bytes to ?.
  The `sw` at 0xb399934 stores 4 bytes to abs 0x1030.
  The `sw` at 0xb399940 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c4.
  The `sw` at 0xb399948 stores 4 bytes to ret(__glOdysseyGetCurrentTexture) +0x54c.
  The `lw` at 0xb39995c loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c0.
  The `bgezall` at 0xb399680 calls __glOdysseyTextureDeactivate [0xb39ac40] with a0=[0x1020]:8, a1=[[0x1020]:8+101192]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xb3996b0 calls __glOdysseyGetCurrentTexture [0xb3981e0] with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xb3996f8 calls __glSetError [0xb3f83f0] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xb399790 calls memset with a0=sp-272, a1=0x0, a2=0x40, a3=?.
  The `bgezall` at 0xb3997fc calls GetImageFmtEnumFromBuzzTexFormat [0xb3982c0] with a0=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456], a1=[ret(__glOdysseyGetCurrentTexture)+1340], a2=0x1, a3=?.
  The `jalr` at 0xb399900 calls __glOdysseyImageXfer [0xb359fd0] with a0=sp-272, a1=[0x1020]:8+82488, a2=sp-288, a3=0x0, a4=sp-208.
  The `beq` branch at 0xb39964c targets 0xb3999b8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xb399670 targets 0xb399690, is taken when a1(=[[0x1020]:8+101192]:8) == 0, and falls through when a1(=[[0x1020]:8+101192]:8) != 0.
  The `beq` branch at 0xb3996d4 targets 0xb39973c, is taken when a0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1496]) == 0, and falls through when a0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1496]) != 0.
  The `beq` branch at 0xb3996dc targets 0xb399728, is taken when s6(=0x806f) == s1(=a0), and falls through when s6(=0x806f) != s1(=a0).
  The `beq` branch at 0xb3996e4 targets 0xb39972c, is taken when s1(=a0) == at(=0xde1), and falls through when s1(=a0) != at(=0xde1).
  The `beq` branch at 0xb3996ec targets 0xb399734, is taken when s1(=a0) == v1(=0xde0), and falls through when s1(=a0) != v1(=0xde0).
  The `beq` branch at 0xb39982c targets 0xb39998c, is taken when a2(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) == 0, and falls through when a2(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) != 0.
  The `beq` branch at 0xb399838 targets 0xb39998c, is taken when a2(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) == at(=0x8), and falls through when a2(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) != at(=0x8).
  The `beq` branch at 0xb3998dc targets 0xb399958, is taken when t0(=0x806f) == s1(=a0), and falls through when t0(=0x806f) != s1(=a0).
  The `beq` branch at 0xb399984 targets 0xb3998e4 and is always taken.
  The `beq` branch at 0xb3999b0 targets 0xb39985c and is always taken.
  The return at 0xb399720 has v0 = ret(__glSetError).
  The return at 0xb399950 has v0 = ret(__glOdysseyImageXfer).
  The return at 0xb3999cc has v0 = ?.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3999e0

`DownsampleTextureThruHW` (2252 bytes) indexes tables behind a0 by its arguments a1 and a2, with a
stride of 68 bytes per index. Those indices look like a source and a destination
texture level, but the facts do not name them. It calls `__glOdysseyImageLogBase2` at 0xb399b28
and 0xb399b54, `ChooseSuitableBuzzTexModeBaseFmt` at 0xb399c50, `GetImageFmtEnumFromBuzzTexFormat`
at 0xb399e08 and `__glOdysseyImageCalcFieldFormat` at 0xb399e14. It calls `__glOdysseyValidateHardware`
at 0xb399ff0 only when a state word it loads through a context pointer is nonzero (branch at 0xb399fe8).
So it picks a format and, conditionally, validates hardware state. It stores 42 values to abs
0x4000 (28 integer, 14 float). The facts do not say
what that address is, so the hardware role and the exact downsampling method are not established.

Grade: inferred.

Reviewed: 2026-11-12

- `__glOdysseyTextureDeactivate` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb39ac40 (n64).
  Makes no device access of its own; it runs the same teardown on two records, the one passed in `a1` and
  the one whose pointer is stored at `a0` +0x18b38, and calls `__glOdysseyClosePMObjReference` for each.
  For the `a1` record it calls that routine with `a0` and the words at +0x53c, +0x544 and +0x548 (the
  `jalr` at 0xb39ac64). A zero return makes it call `__glSetError` with 0x505 (the `jalr` at 0xb39ad64);
  either way it then stores zero at +0x540 of the record (the `sw` at 0xb39ac7c) and writes
  0xffffffffdeadbeef to the sixteen words from +0x570 to +0x5ac (stores from 0xb39ac84 to 0xb39acc4).
  It then loads the second record's pointer (the `ld` at 0xb39acd0). If the word at +0x540 of that record
  is zero, the `beq` at 0xb39acd8 skips straight to the fill. Otherwise it calls
  `__glOdysseyClosePMObjReference` with the same three words (the `jalr` at 0xb39acec), calls
  `__glSetError` with 0x505 on a zero return (the `jalr` at 0xb39ad78), and stores zero at +0x540 (the
  `sw` at 0xb39ad00).
  Both paths of the second record then write 0xffffffffbaadcade to the sixteen words from +0x570 to +0x5ac
  (stores from 0xb39ad18 to 0xb39ad54, highest offset first) and return at the `jr` at 0xb39ad58.
  Inferred: the committed note on `__glSetError` says it records the first GL error code of the context,
  so the 0x505 calls record that code when a close returns zero.
  Inferred: the callee's name is the only basis for reading the pair of calls as releasing a reference held
  by each record.
  Unknown: the device-side result of each close, and which routine reads the 0xffffffffdeadbeef and
  0xffffffffbaadcade words back; the callee's committed entry and a listing of this routine's callers would
  settle both.
  Evidence grade: inferred.

- `IsLegalRange` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb39bad0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb39bad0-0xb39bb40 (112 bytes).
  It occupies 112 bytes.
  The `jalr` at 0xb39bb1c calls __glSetError [0xb3f83f0] with a0=0x501, a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `bltz` branch at 0xb39bad0 targets 0xb39bb34, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `beq` branch at 0xb39badc targets 0xb39bb34, is taken when a1 >= 0x2 (signed), and falls through when a1 < 0x2 (signed).
  The `bltz` branch at 0xb39baf0 targets 0xb39bb14, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bne` branch at 0xb39baf8 targets 0xb39bb14, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xb39bb04 targets 0xb39bb18, is taken when a2(=0x8000) < a0(?) (signed), and falls through when a2(=0x8000) >= a0(?) (signed).
  The return at 0xb39bb0c has v0 = 0x1.
  The return at 0xb39bb2c has v0 = 0x0.
  The return at 0xb39bb38 has v0 = 0x0.

- `__glOdyim_BindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1380 (n64).
  Binds the texture object with name a1 to the target a0 in the board library's context, whose pointer is
  loaded from abs 0x1020 (`ld` at 0xb3a13b4); it ends by marking state in the context and setting the word at abs 0x1030 to 2.
  If the word at abs 0x1030 equals 1 (`beq` at 0xb3a13b8) it calls `__glSetError` with 0x502 (`jalr` at
  0xb3a164c) and returns. Otherwise a0 selects a small slot number kept in the frame at sp+8: 0xde0 stores
  0 (`sd` at 0xb3a1450), 0xde1 stores 1 (0xb3a1558), 0x806f stores 2 (0xb3a1408) and 0x8095 stores 3
  (0xb3a1564). Any other a0 calls `__glSetError` with 0x500 (`jalr` at 0xb3a13e4) and returns.
  With name a1 nonzero, `__glNamesLockData` (`jalr` at 0xb3a1474) looks the name up in the table at the
  context plus 0x18b40 and the result becomes the object. With name zero the object is the default one at the
  context plus 0x14590 plus the slot number times 0x9f0 (the shift and add chain at 0xb3a1418 to 0xb3a1448).
  If no object is found, the routine calls the function pointer at the start of the context with 0x9f0
  (`jalr` at 0xb3a1574); a null result calls `__glSetError` with 0x505 (`jalr` at 0xb3a1620) and returns.
  Otherwise `InitTextureObject` (`jalr` at 0xb3a159c) initialises the new object with name a1 and target a0,
  and `__glNamesNewData` (`jalr` at 0xb3a15bc) registers it. A result whose low byte is zero returns at
  once (`beq` at 0xb3a15cc); otherwise the word at offset 0 of the new object is incremented by one
  (`lw` at 0xb3a15d8, `sw` at 0xb3a15e4) and binding continues.
  An existing object whose word at +0x14 differs from a0 (`bne` at 0xb3a1490) gets `__glSetError` with 0x502
  (`jalr` at 0xb3a15f4) and a return.
  The bind itself: the pointer held in the slot 0x74e0 below the context plus 0x20000, indexed by 8 times
  the slot number, is the previous object. If its word at +0x10 is nonzero (`beq` at 0xb3a14bc),
  `__glNamesUnlockData` is called (`jalr` at 0xb3a14c8). The new object pointer is stored in that slot
  (`sd` at 0xb3a14d4), the object's word at +0xc8 gets 0x116200 ORed in (`lw` at 0xb3a14dc, `sw` at 0xb3a14e8),
  the context word at +0x18fe0 gets 0x200 ORed in (`sw` at 0xb3a14f4), and abs 0x1030 is set to 2 (`sw` at 0xb3a14fc).
  Last, the pointer at the context plus 0x18b48 is loaded; if it is zero or equals the new object the routine
  returns. Otherwise it calls `__glOdysseyTextureDeactivate` (the `bgezall` on `zero` at 0xb3a153c always calls),
  clears the pointer at the context plus 0x18b48 (`sd` at 0xb3a1544) and returns.
  Unknown: the callee reached through the pointer at the start of the context (`jalr` at 0xb3a1574); the bundle has no callee note for it.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): which device or state the word at abs 0x1030 belongs to; no linked register row names that address.
  Evidence grade: established.

- `__glOdyim_BindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1380 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1380-0xb3a168c (780 bytes).
  It occupies 780 bytes.
  The `lw` at 0xb3a1398 loads 4 bytes from abs 0x1030.
  The `ld` at 0xb3a13b4 loads 8 bytes from abs 0x1020.
  2 such `ld` accesses load 8 bytes from [0x1020]:8 +0x18b40, including `ld` at 0xb3a1478, `ld` at 0xb3a15c0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xb3a148c, `lw` at 0xb3a14b8, `lw` at 0xb3a14dc.
  The `ld` at 0xb3a14b4 loads 8 bytes from ?.
  The `sd` at 0xb3a14d4 stores 8 bytes to ?.
  The `sw` at 0xb3a14e8 stores 4 bytes to ?.
  The `lw` at 0xb3a14ec loads 4 bytes from [0x1020]:8 +0x18fe0.
  The `sw` at 0xb3a14f4 stores 4 bytes to [0x1020]:8 +0x18fe0.
  The `sw` at 0xb3a14fc stores 4 bytes to abs 0x1030.
  The `ld` at 0xb3a1500 loads 8 bytes from [0x1020]:8 +0x18b48.
  The `sd` at 0xb3a1544 stores 8 bytes to [0x1020]:8 +0x18b48.
  The `ld` at 0xb3a1568 loads 8 bytes from [0x1020]:8 +0x0.
  The `lw` at 0xb3a15d8 loads 4 bytes from ret(?) +0x0.
  The `sw` at 0xb3a15e4 stores 4 bytes to ret(?) +0x0.
  The `jalr` at 0xb3a13e4 calls __glSetError [0xb3f83f0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x2, a5=0xde1.
  The `jalr` at 0xb3a1474 calls __glNamesLockData [0xb41f600] with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=a1 at entry (arg1), a3=a3 at entry (arg3), a4=one of 0x2, 0xde0, a5=0xde1.
  The `jalr` at 0xb3a14c8 calls __glNamesUnlockData [0xb420260] with a0=[0x1020]:8, a1=?, a2=?, a3=?.
  The `bgezall` at 0xb3a153c calls __glOdysseyTextureDeactivate [0xb39ac40] with a0=[0x1020]:8, a1=[[0x1020]:8+101192]:8, a2=?, a3=?, a4=0x116200.
  The `jalr` at 0xb3a1574 calls (unknown callee) with a0=[0x1020]:8, a1=0x9f0, a2=?, a3=?.
  The `jalr` at 0xb3a159c calls InitTextureObject [0xb397c50] with a0=ret(?), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=?, a4=ret(?).
  The `jalr` at 0xb3a15bc calls __glNamesNewData [0xb41f060] with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=a1 at entry (arg1), a3=ret(?).
  The `jalr` at 0xb3a15f4 calls __glSetError [0xb3f83f0] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xb3a1620 calls __glSetError [0xb3f83f0] with a0=0x505, a1=?, a2=?, a3=?, a4=ret(?).
  The `jalr` at 0xb3a164c calls __glSetError [0xb3f83f0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0xde0, a5=0xde1.
  The `beq` branch at 0xb3a13b8 targets 0xb3a1644, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0xb3a13c0 targets 0xb3a144c, is taken when s0(=a0) == a4(=0xde0), and falls through when s0(=a0) != a4(=0xde0).
  The `beq` branch at 0xb3a13c8 targets 0xb3a1550, is taken when s0(=a0) == a5(=0xde1), and falls through when s0(=a0) != a5(=0xde1).
  The `beq` branch at 0xb3a13d0 targets 0xb3a155c, is taken when s0(=a0) == at(=0x8095), and falls through when s0(=a0) != at(=0x8095).
  The `beq` branch at 0xb3a13d8 targets 0xb3a1408, is taken when s0(=a0) == v1(=0x806f), and falls through when s0(=a0) != v1(=0x806f).
  The `bne` branch at 0xb3a140c targets 0xb3a1458, is taken when s3(=a1) != 0, and falls through when s3(=a1) == 0.
  The `beq` branch at 0xb3a1444 targets 0xb3a1484 and is always taken.
  The `beq` branch at 0xb3a144c targets 0xb3a1414, is taken when s3(=a1) == 0, and falls through when s3(=a1) != 0.
  The `beq` branch at 0xb3a1484 targets 0xb3a1568, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0xb3a1490 targets 0xb3a15e8, is taken when a4(?) != s0(=a0), and falls through when a4(?) == s0(=a0).
  The `beq` branch at 0xb3a14bc targets 0xb3a14d4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xb3a1504 targets 0xb3a1514, is taken when a1(=[[0x1020]:8+101192]:8) == 0, and falls through when a1(=[[0x1020]:8+101192]:8) != 0.
  The `bne` branch at 0xb3a150c targets 0xb3a1530, is taken when a1(=[[0x1020]:8+101192]:8) != s2(?), and falls through when a1(=[[0x1020]:8+101192]:8) == s2(?).
  The `beq` branch at 0xb3a1548 targets 0xb3a1514 and is always taken.
  The `beq` branch at 0xb3a1554 targets 0xb3a140c and is always taken.
  The `beq` branch at 0xb3a1560 targets 0xb3a140c and is always taken.
  The `beq` branch at 0xb3a1584 targets 0xb3a1618, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xb3a15cc targets 0xb3a1670, is taken when (v0(=ret(__glNamesNewData)) & 0xff) == 0, and falls through when (v0(=ret(__glNamesNewData)) & 0xff) != 0.
  The `beq` branch at 0xb3a15e0 targets 0xb3a149c and is always taken.
  The return at 0xb3a1400 has v0 = ret(__glSetError).
  The return at 0xb3a1528 has v0 = one of ?, ret(__glOdysseyTextureDeactivate).
  The return at 0xb3a1610 has v0 = ret(__glSetError).
  The return at 0xb3a163c has v0 = ret(__glSetError).
  The return at 0xb3a1668 has v0 = ret(__glSetError).
  The return at 0xb3a1684 has v0 = ret(__glNamesNewData).

- `__glOdyim_DeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1690 (n64).
  Walks the caller's array of a0 32-bit names at a1 and drops them from the table of names kept at the context
  plus 0x18b40 in runs, then marks state in the context; the context pointer comes from abs 0x1020 (`ld` at 0xb3a16bc).
  If the word at abs 0x1030 is 1 (`beq` at 0xb3a16c0) the routine calls `__glSetError` with 0x502 (`jalr` at
  0xb3a18f8) and returns that result. A negative a0 (`bltz` at 0xb3a16c8) calls `__glSetError` with 0x501
  (`jalr` at 0xb3a18d8) and then carries on; since a0 is not positive the walk is skipped (`blez` at 0xb3a16f0).
  Each pass reads the name at s0, which starts at a1 and steps by 4 until it reaches a1 plus 4 times a0
  (`beq` at 0xb3a17a8). The first name seeds a running value s1 that increases by one per pass; the loop
  tracks a run start in the frame and, when the name read at 0xb3a1798 differs from the running value
  (`bne` at 0xb3a179c), flushes the run with `__glNamesDeleteRange` (`jalr` at 0xb3a1808), whose count argument is
  the running value minus the run start. A zero name flushes the same way (`jalr` at 0xb3a1850) and takes the
  next name from the following array word. After the last name a final `__glNamesDeleteRange` call covers the
  open run (`jalr` at 0xb3a188c), and its result is the routine's return value.
  Each name is also checked against the object pointer at the context plus 0x18b48: when that object's +0x10 field equals
  the name (`beq` at 0xb3a17c4), the `bgezall` on `zero` at 0xb3a1824 (always taken, so a plain call) calls
  `__glOdysseyTextureDeactivate` with the context, and the `sd` at 0xb3a182c then clears the pointer at +0x18b48.
  A second check scans the four 8-byte slots starting 0x18b20 into the context (`bne` at 0xb3a17e8 ends after four
  passes); a slot object whose +0x10 word equals the name (`beq` at 0xb3a17dc) is handed to `__glNamesUnlockData`
  (`jalr` at 0xb3a1730). The slot is then rewritten, twice (`sd` at 0xb3a1774 and 0xb3a1778), with the default object
  address: the context plus 0x14590 plus an offset scaled by the slot index (a shift-and-add chain ahead of the first store).
  The word at the context plus 0x18fdc gets 0x116200 ORed in (`lw` at 0xb3a1780, `sw` at 0xb3a178c) and abs 0x1030 is set to 2
  (`sw` at 0xb3a1794). On the way out the word at the context plus 0x18fe0 gets 0x200 ORed in (`lw` at 0xb3a189c, `sw` at
  0xb3a18a8) and abs 0x1030 is set to 2 again (`sw` at 0xb3a18bc).
  Inferred: the 0x501 and 0x502 exits are error reports, since `__glSetError` per its callee note records the first error code of the context.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): which device or state abs 0x1030 belongs to; the linked rows give it no name.
  Evidence grade: inferred.

- `__glOdyim_DeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1690 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1690-0xb3a191c (652 bytes).
  It occupies 652 bytes.
  The `lw` at 0xb3a16a0 loads 4 bytes from abs 0x1030.
  The `ld` at 0xb3a16bc loads 8 bytes from abs 0x1020.
  The `lw` at 0xb3a16d8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0xb3a16e8 loads 8 bytes from [0x1020]:8 +0x18b40.
  The `sd` at 0xb3a1774 stores 8 bytes to table(0x18b20) +0x0.
  The `sd` at 0xb3a1778 stores 8 bytes to ?.
  The `lw` at 0xb3a1780 loads 4 bytes from [0x1020]:8 +0x18fdc.
  The `sw` at 0xb3a178c stores 4 bytes to [0x1020]:8 +0x18fdc.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xb3a1794, `sw` at 0xb3a18bc.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0xb3a1798, `lw` at 0xb3a17bc, `lw` at 0xb3a17d8.
  The `ld` at 0xb3a17b0 loads 8 bytes from [0x1020]:8 +0x18b48.
  The `lw` at 0xb3a17c0 loads 4 bytes from [[0x1020]:8+101192]:8 +0x10.
  The `ld` at 0xb3a17d4 loads 8 bytes from ?.
  The `sd` at 0xb3a182c stores 8 bytes to [0x1020]:8 +0x18b48.
  The `lw` at 0xb3a189c loads 4 bytes from [0x1020]:8 +0x18fe0.
  The `sw` at 0xb3a18a8 stores 4 bytes to [0x1020]:8 +0x18fe0.
  The `jalr` at 0xb3a1730 calls __glNamesUnlockData [0xb420260] with a0=[0x1020]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0xb3a1808 calls __glNamesDeleteRange [0xb4207c0] with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=?, a3=?.
  The `bgezall` at 0xb3a1824 calls __glOdysseyTextureDeactivate [0xb39ac40] with a0=[0x1020]:8, a1=[[0x1020]:8+101192]:8, a2=?, a3=?.
  The `jalr` at 0xb3a1850 calls __glNamesDeleteRange [0xb4207c0] with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=?, a3=?.
  The `jalr` at 0xb3a188c calls __glNamesDeleteRange [0xb4207c0] with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=?, a3=?.
  The `jalr` at 0xb3a18d8 calls __glSetError [0xb3f83f0] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb3a18f8 calls __glSetError [0xb3f83f0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xb3a16c0 targets 0xb3a18f0, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `bltz` branch at 0xb3a16c8 targets 0xb3a18d4, is taken when s5(=a0) < 0 (signed), and falls through when s5(=a0) >= 0 (signed).
  The `blez` branch at 0xb3a16f0 targets 0xb3a18cc, is taken when s5(=a0) <= 0 (signed), and falls through when s5(=a0) > 0 (signed).
  The `beq` branch at 0xb3a1720 targets 0xb3a17b0 and is always taken.
  The `bne` branch at 0xb3a179c targets 0xb3a17f8, is taken when a0(?) != s1(?), and falls through when a0(?) == s1(?).
  The `beq` branch at 0xb3a17a8 targets 0xb3a1868, is taken when s0(?) == s8(=((a0 << 0x2) + a1)), and falls through when s0(?) != s8(=((a0 << 0x2) + a1)).
  The `beq` branch at 0xb3a17b8 targets 0xb3a17cc, is taken when a1(=[[0x1020]:8+101192]:8) == 0, and falls through when a1(=[[0x1020]:8+101192]:8) != 0.
  The `beq` branch at 0xb3a17c4 targets 0xb3a1820, is taken when at(=[[[0x1020]:8+101192]:8+16]) == a0(?), and falls through when at(=[[[0x1020]:8+101192]:8+16]) != a0(?).
  The `beq` branch at 0xb3a17cc targets 0xb3a183c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xb3a17dc targets 0xb3a1730, is taken when v0(?) == a0(?), and falls through when v0(?) != a0(?).
  The `bne` branch at 0xb3a17e8 targets 0xb3a17d4, is taken when s7(=0x4) != s6(?), and falls through when s7(=0x4) == s6(?).
  The `beq` branch at 0xb3a17f0 targets 0xb3a179c and is always taken.
  The `beq` branch at 0xb3a1818 targets 0xb3a17a4 and is always taken.
  The `bne` branch at 0xb3a1834 targets 0xb3a17d4, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xb3a1860 targets 0xb3a17a4 and is always taken.
  The `beq` branch at 0xb3a18cc targets 0xb3a1878 and is always taken.
  The `beq` branch at 0xb3a18e8 targets 0xb3a16d0 and is always taken.
  The return at 0xb3a18c4 has v0 = ret(__glNamesDeleteRange).
  The return at 0xb3a1914 has v0 = ret(__glSetError).
  The instructions from 0xb3a1728 to 0xb3a172c are not reached by any path from the entry, and their branches are not listed.

- `__glOdyim_GenTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1920 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1920-0xb3a19d8 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xb3a1928 loads 4 bytes from abs 0x1030.
  The `ld` at 0xb3a1940 loads 8 bytes from abs 0x1020.
  The `ld` at 0xb3a197c loads 8 bytes from [0x1020]:8 +0x18b40.
  The `jalr` at 0xb3a1978 calls __glNamesGenNames [0xb420d10] with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1020]:8.
  The `jalr` at 0xb3a19a4 calls __glSetError [0xb3f83f0] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1020]:8.
  The `jalr` at 0xb3a19c0 calls __glSetError [0xb3f83f0] with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1020]:8.
  The `beq` branch at 0xb3a1944 targets 0xb3a199c, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `bltz` branch at 0xb3a194c targets 0xb3a19bc, is taken when a2(=a0) < 0 (signed), and falls through when a2(=a0) >= 0 (signed).
  The `beq` branch at 0xb3a1954 targets 0xb3a1990, is taken when a3(=a1) == 0, and falls through when a3(=a1) != 0.
  The `beq` branch at 0xb3a195c targets 0xb3a1990, is taken when a2(=a0) == 0, and falls through when a2(=a0) != 0.
  The return at 0xb3a1988 has v0 = ret(__glNamesGenNames).
  The return at 0xb3a1994 has v0 = 0x1.
  The return at 0xb3a19b4 has v0 = ret(__glSetError).
  The return at 0xb3a19d0 has v0 = ret(__glSetError).

- `__glOdyim_AreTexturesResident` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1a50 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1a50-0xb3a1c60 (528 bytes).
  It occupies 528 bytes.
  The `lw` at 0xb3a1a68 loads 4 bytes from abs 0x1030.
  The `ld` at 0xb3a1a84 loads 8 bytes from abs 0x1020.
  The `lw` at 0xb3a1acc loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0xb3a1ae4 loads 8 bytes from [0x1020]:8 +0x18b40.
  The `sb` at 0xb3a1b28 stores 1 byte to ?.
  The `lw` at 0xb3a1b38 loads 4 bytes from ?.
  The `jalr` at 0xb3a1ae0 calls __glNamesLockData [0xb41f600] with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=?, a3=?.
  The `bgezall` at 0xb3a1af8 calls __glOdysseyIsTextureResident [0xb3a19e0] with a0=[0x1020]:8, a1=ret(__glNamesLockData), a2=?, a3=?.
  The `jalr` at 0xb3a1b24 calls __glNamesUnlockData [0xb420260] with a0=[0x1020]:8, a1=ret(__glNamesLockData), a2=one of 0x0, 0x1, a3=?, a4=0x1.
  The `jalr` at 0xb3a1b78 calls __glSetError [0xb3f83f0] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xb3a1bbc calls __glSetError [0xb3f83f0] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xb3a1c04 calls __glSetError [0xb3f83f0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb3a1c34 calls __glSetError [0xb3f83f0] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xb3a1a88 targets 0xb3a1bfc, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `bltz` branch at 0xb3a1a90 targets 0xb3a1c30, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `blez` branch at 0xb3a1abc targets 0xb3a1b3c, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xb3a1ad0 targets 0xb3a1b74, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xb3a1ae8 targets 0xb3a1bb8, is taken when v0(=ret(__glNamesLockData)) == 0, and falls through when v0(=ret(__glNamesLockData)) != 0.
  The `bnel` branch at 0xb3a1b34 targets 0xb3a1ad0, is taken when at(=((a0 << 0x2) + a1)) != s1(?), and falls through when at(=((a0 << 0x2) + a1)) == s1(?); its branch-likely delay slot `lw a2,0(s1)` at 0xb3a1b38 runs only when taken and is annulled on fall-through.
  The return at 0xb3a1b6c has v0 = one of 0x0, 0x1.
  The return at 0xb3a1bb0 has v0 = 0x0.
  The return at 0xb3a1bf4 has v0 = 0x0.
  The return at 0xb3a1c28 has v0 = 0x0.
  The return at 0xb3a1c58 has v0 = 0x0.

- `Clampf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1c60 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1c60-0xb3a1c90 (48 bytes).
  It occupies 48 bytes.
  The `bc1t` branch at 0xb3a1c64 targets 0xb3a1c88, is taken when f12 < f13 (c.lt.s at 0xb3a1c60), and falls through when not (f12 < f13 (c.lt.s at 0xb3a1c60)).
  The `bc1f` branch at 0xb3a1c70 targets 0xb3a1c80, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0xb3a1c78 has v0 = ?.
  The return at 0xb3a1c80 has v0 = ?.
  The return at 0xb3a1c88 has v0 = ?.

- `__glOdyim_PrioritizeTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1c90 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1c90-0xb3a1e14 (388 bytes).
  It occupies 388 bytes.
  The `lw` at 0xb3a1ca4 loads 4 bytes from abs 0x1030.
  The `ld` at 0xb3a1cc0 loads 8 bytes from abs 0x1020.
  The `swc1` at 0xb3a1d2c stores 4 bytes to ret(__glNamesLockData) +0x44.
  The `lw` at 0xb3a1d38 loads 4 bytes from ?.
  The `ld` at 0xb3a1d50 loads 8 bytes from [0x1020]:8 +0x18b40.
  The `lwc1` at 0xb3a1d5c loads 4 bytes from [0x1020]:8 +0xf34.
  The `lwc1` at 0xb3a1d70 loads 4 bytes from ?.
  The `lw` at 0xb3a1da0 loads 4 bytes from [0x1020]:8 +0x18fe0.
  The `sw` at 0xb3a1dac stores 4 bytes to [0x1020]:8 +0x18fe0.
  The `sw` at 0xb3a1dc0 stores 4 bytes to abs 0x1030.
  The `jalr` at 0xb3a1d28 calls __glNamesUnlockData [0xb420260] with a0=[0x1020]:8, a1=ret(__glNamesLockData), a2=?, a3=?.
  The `jalr` at 0xb3a1d4c calls __glNamesLockData [0xb41f600] with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=?, a3=?.
  The `bgezall` at 0xb3a1d6c calls Clampf [0xb3a1c60] with a0=?, a1=?, a2=?, a3=?; fp f13=0x0, f14=[[0x1020]:8+3892].
  The `jalr` at 0xb3a1dcc calls __glSetError [0xb3f83f0] with a0=0x501, a1=0x130000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb3a1df0 calls __glSetError [0xb3f83f0] with a0=0x502, a1=0x130000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xb3a1cc4 targets 0xb3a1de8, is taken when at(=[0x1030]) == v1(=0x1), and falls through when at(=[0x1030]) != v1(=0x1).
  The `bltz` branch at 0xb3a1ccc targets 0xb3a1dc4, is taken when s4(=a0) < 0 (signed), and falls through when s4(=a0) >= 0 (signed).
  The `blez` branch at 0xb3a1cd8 targets 0xb3a1de0, is taken when s4(=a0) <= 0 (signed), and falls through when s4(=a0) > 0 (signed).
  The `beq` branch at 0xb3a1d14 targets 0xb3a1d38 and is always taken.
  The `beq` branch at 0xb3a1d30 targets 0xb3a1d7c, is taken when s1(?) == s3(=((a0 << 0x2) + a1)), and falls through when s1(?) != s3(=((a0 << 0x2) + a1)).
  The `beq` branch at 0xb3a1d3c targets 0xb3a1d30, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xb3a1d54 targets 0xb3a1d30, is taken when v0(=ret(__glNamesLockData)) == 0, and falls through when v0(=ret(__glNamesLockData)) != 0.
  The `beq` branch at 0xb3a1d74 targets 0xb3a1d20 and is always taken.
  The `beq` branch at 0xb3a1dd8 targets 0xb3a1cd4 and is always taken.
  The `beq` branch at 0xb3a1de0 targets 0xb3a1d94 and is always taken.
  The return at 0xb3a1dbc has v0 = ([[0x1020]:8+102368] | 0x200).
  The return at 0xb3a1e0c has v0 = ret(__glSetError).
  The instructions from 0xb3a1d1c to 0xb3a1d1c are not reached by any path from the entry, and their branches are not listed.

- `__glOdyim_IsTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1e20 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1e20-0xb3a1ef0 (208 bytes).
  It occupies 208 bytes.
  The `lw` at 0xb3a1e24 loads 4 bytes from abs 0x1030.
  The `ld` at 0xb3a1e40 loads 8 bytes from abs 0x1020.
  The `ld` at 0xb3a1e6c loads 8 bytes from [0x1020]:8 +0x18b40.
  The `jalr` at 0xb3a1e68 calls __glNamesLockData [0xb41f600] with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xb3a1e94 calls __glNamesUnlockData [0xb420260] with a0=[0x1020]:8, a1=ret(__glNamesLockData), a2=?, a3=?.
  The `jalr` at 0xb3a1ed0 calls __glSetError [0xb3f83f0] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xb3a1e44 targets 0xb3a1ec8, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0xb3a1e4c targets 0xb3a1eb4, is taken when a2(=a0) == 0, and falls through when a2(=a0) != 0.
  The `bne` branch at 0xb3a1e70 targets 0xb3a1e8c, is taken when v0(=ret(__glNamesLockData)) != 0, and falls through when v0(=ret(__glNamesLockData)) == 0.
  The return at 0xb3a1e84 has v0 = 0x0.
  The return at 0xb3a1eac has v0 = 0x1.
  The return at 0xb3a1ec0 has v0 = 0x0.
  The return at 0xb3a1ee8 has v0 = 0x0.

- `__glOdysseyGetHardwareShadow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1f70 (n64).
  Wraps request 0x6f64000c to the board; a negative result makes it call a context callback with a failure string. The `bgezall` at 0xb3a1f98 tests the `zero` register, so it always branches and links: it is a plain call to `__glOdysseyIoctl` at 0xb3a1ef0, and its delay slot (0xb3a1f9c) saves a0 to the frame. The call carries a0, the request number (`lui` at 0xb3a1f8c, `ori` at 0xb3a1f94), the entry a1 copied into a2 and the entry a3 untouched. A zero or positive result falls through the `bltz` at 0xb3a1fa0 to the exit at 0xb3a1fac with v0 untouched. A negative one branches to 0xb3a1fb4, reloads the saved a0, loads the pointer at a0 +0x28 (0xb3a1fbc) and calls through it at 0xb3a1fc4. The first argument is a0 and the second is the failure message string at 0xb4a8690 (adjusted by the `daddiu` in the delay slot at 0xb3a1fc8). The routine then jumps back to the exit (0xb3a1fcc) and returns that callback's result.
  Inferred: the string and the handler `gfP_OdsySaveHwShadow` on the 0x6f64000c row both indicate a hardware-shadow save.
  Unknown: the routine at the pointer in a0 +0x28; its value comes only from run time.
  Evidence grade: inferred.

- `__glOdysseyDriverMakeCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a2920 (n64).
  Sends private ioctl 0x6f640008 for the context in a0, then copies the fields that come back in the
  request block into the context at offsets from 0x19430 up, and returns 1; on a negative ioctl result it
  reports a failure string through a function pointer in the context and returns 0.
  Before the call it fills two words of the block, both zeroed first (`sw` at 0xb3a2924 and 0xb3a2928).
  Block +0 is 2 when the context word at +0xe3c is above zero (`blez` at 0xb3a294c, `sw` at 0xb3a2958)
  and block +0x28 is 2 when the context word at +0xedc is above zero (`blez` at 0xb3a2960, `sw` at
  0xb3a296c). When the context byte at +0xdec is zero, block +0 is replaced by its value ORed with 4
  (`sw` at 0xb3a2a40, delay slot of the jump at 0xb3a2a3c); when the context byte at +0xe8c is zero,
  block +0x28 is replaced the same way (`sw` at 0xb3a2a4c, delay slot of the jump at 0xb3a2a48).
  The `bgezall` at 0xb3a299c has zero as its tested register, so the call of `__glOdysseyIoctl` (a0 =
  context, a1 = 0x6f640008, a2 = the block) is unconditional.
  Inferred: `gfP_OdsyMakeCurrent` is the handler row for 0x6f640008, and the string at 0xb4a86e8 reads as its failure message.
  If the result is negative (`bltz` at 0xb3a29a4), the routine calls the function pointer at context +0x28
  (`jalr` at 0xb3a2ae0) with the context and the string 'odsy: MakeCurrent ioctl failed' at 0xb4a86e8,
  then returns 0 at 0xb3a2af8. Otherwise the block words at +0x4, +0x8, +0x22 (byte), +0x20 (halfword)
  and +0x23 (byte) go to context +0x19430 to +0x19440, one word each (`sw` at 0xb3a29bc to 0xb3a29dc).
  The byte at block +0x24 (`lbu` at 0xb3a29e0) then picks one of three layouts. Value 0 zeroes 0x50
  bytes at context +0x19458 with `bzero` (0xb3a2b10). Value 1 copies eight block fields to +0x19458
  through +0x19478 (`sw` at 0xb3a2b20 to 0xb3a2b70) and zeroes 0x14 bytes at +0x19480 and at +0x19494
  (0xb3a2b6c, 0xb3a2b84). Value 2 copies block fields to +0x19458 through +0x194a0 (`sw` at 0xb3a2a54
  to 0xb3a2ad0). For any value, the path then copies the block words at +0x2c, +0x30, +0x4a (byte),
  +0x48 (halfword) and +0x4b (byte) to context +0x19444 through +0x19454 (`sw` at 0xb3a2a00 to
  0xb3a2a2c) and returns 1.
  Inferred: only block +0 and +0x28 are written before the call, so the handler behind the request must
  supply every other block field this routine copies out.
  Unknown: what values the handler returns in the block fields; the route is the board-side result of
  request 0x6f640008.
  Evidence grade: inferred.

- `__glOdysseySetDrawbuf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a2ba0 (n64).
  Packs four of its arguments into a flag word on the stack and hands that word to the private ioctl
  request 0x6f640009 (through `__glOdysseyIoctl`), then emits a fixed run of words, interleaved with copies
  of four context words, all to the one address 0x4000.
  The flag word at `sp` begins as 0. Bit values 1, 2, 4 and 8 are added in that order for each of `a1`,
  `a2`, `a3` and `a4` that is nonzero at entry (the branches at 0xb3a2bc0 to 0xb3a2be4 and 0xb3a2ed0 to
  0xb3a2ee0, each step followed by a `sw` to `sp`). The ioctl receives its address in `a2` (0xb3a2c00).
  If the ioctl returns nonzero (the `beq` at 0xb3a2c14 falls through), the pointer at `a0` +0x28 is called
  with the string at 0xb4a8708 (" can't set drawbuf") as `a1`; if it returns zero that call is skipped.
  Every store from here on is a `sw` with `zero` as base and displacement 0x4000, so the address never
  moves. The first run is 0x10443, 0xfa, 0x10046, 0x10019 and 0x96, with a `sw` of zero to `a0` +0xbc58
  inside it (0xb3a2c40, 0xb3a2c70, 0xb3a2c90) and again after later runs.
  The `beq` at 0xb3a2cc0 shifts the word at `a0` +0xbacc right by 0x1b and masks it with 1. Zero jumps to
  0xb3a2ef0, which writes the 0xffffffff90008116 value; one falls through to the block that writes 0x10841,
  0x1204b, 0xffffff and 0x10840 with zeros between. Both continue at the tail 0xb3a2d20.
  The tail copies `a0` +0xbac4, +0xbac8, +0xbacc and +0xbad0 more than once. In the second copy zero
  replaces the +0xbacc word (0xb3a2d88); in the third, 0x800000 is ORed into it (the `sw` at 0xb3a2db4).
  The same bit test at 0xb3a2e24 then selects, with a zero result, the 0xffffffff90008116 write at
  0xb3a2f10 or, with a one, the 0x10841 block, followed by one more copy of the four words. The routine
  returns the word at `a0` +0xbacc.
  Inferred: the inventory lists 0x4000 as an address outside the file (memory-mapped I/O) and links the
  request to a handler named `gfP_OdsySetDrawBuffer`; that is the only reason to read these stores as
  device commands, and no linked board window starts at 0x4000.
  Unknown: the bit layout of each constant word sent to 0x4000 (0x10443 and 0x10046 among them), since no
  register name is linked to that address, so only a datasheet row for 0x4000 can settle it.
  Evidence grade: inferred.

- `__glOdysseyWindowToNormalizedEyeZ` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3ad2f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3ad2f0-0xb3ad380 (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0xb3ad314 loads 8 bytes from abs 0x1020.
  The `ldc1` at 0xb3ad320 loads 8 bytes from [0x1020]:8 +0x18ce8.
  The `ldc1` at 0xb3ad328 loads 8 bytes from [0x1020]:8 +0x18cf0.
  The `bgezall` at 0xb3ad310 calls __glOdysseyWindowToEyeZ [0xb3ad160] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bc1t` branch at 0xb3ad354 targets 0xb3ad374, is taken when f6 < f0(=0x0) (c.lt.d at 0xb3ad348), and falls through when not (f6 < f0(=0x0) (c.lt.d at 0xb3ad348)).
  The `beq` branch at 0xb3ad378 targets 0xb3ad364 and is always taken.
  The return at 0xb3ad36c has v0 = [0x1020]:8+131072.

- `__glOdysseySoftClipBeginTriangles` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3aede0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3aede0-0xb3aee14 (52 bytes).
  It occupies 52 bytes.
  The `sd` at 0xb3aedf4 stores 8 bytes to a0 (arg0 at entry) +0x4c88.
  The `ld` at 0xb3aedfc loads 8 bytes from abs 0xb4c8968.
  The `ld` at 0xb3aee00 loads 8 bytes from abs 0xb4c73f8.
  The `sd` at 0xb3aee04 stores 8 bytes to a0 (arg0 at entry) +0x4778.
  The `sd` at 0xb3aee10 stores 8 bytes to a0 (arg0 at entry) +0x46e8.
  The return at 0xb3aee0c has v0 = 0xb3aeda0.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3b0090

`RGBSendFc` (132 bytes) reads one byte at a0 +0xc4 first. It then loads floats from a0 at +0x9c,
+0xa0, +0xa4, +0xa8 and +0x1c to +0x28, and writes 3 words and 8 floats to abs 0x4000. It makes no
calls and returns the constant 0xffffffffc580d015. The facts list no branch on the +0xc4 byte, so
its use is unknown. The name suggests an RGB send path, but nothing here confirms that.

Grade: inferred.

Reviewed: 2026-11-12

- `RGBSendClippedBmFmTN` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3b11c0 (n64).
  Writes one of two runs of words to the absolute address 0x4000, chosen by the word at +0x690 of the pointer stored at absolute 0x1020, and both runs take their float words from the record the caller passes in `a0`.
  The `ld` at 0xb3b1204 reads that pointer and the `lw` at 0xb3b122c reads its +0x690 word, and the `beq` at 0xb3b1244 jumps to 0xb3b1388 when that word equals 0x81fa (set at 0xb3b1230); otherwise it falls through to 0xb3b124c. The delay slot of that `beq` loads $f4 with 0.0 from the literal pool at 0xb4cfa14 (`lwc1` at 0xb3b1248) on both paths.
  The `sw` at 0xb3b1218 runs before the branch on both paths and writes a word that ORs 0x2000c02e into a selector shifted left by 0x18 (the shift at 0xb3b120c).
  The selector depends on the byte at record offset +0xc4 (`lbu` at 0xb3b11e8): it is 0xf (set at 0xb3b11f4) when the byte is nonzero and 0x10 (set at 0xb3b11f0) when the byte is zero.
  On the fall-through path the `sw` stores at 0xb3b124c, 0xb3b1260, 0xb3b1274, 0xb3b128c, 0xb3b12ac, 0xb3b12c0, 0xb3b12d4 and 0xb3b12ec write the constants 0xffffffffc680d02f, 0xffffffffc880d031, 0xffffffffc780d030, 0xffffffffc980d032, 0xffffffffca80d035, 0xffffffffcc80d037, 0xffffffffcb80d036 and 0xffffffffcd80d038 in that order, the `swc1` stores between them write float words from a0 at +0xa8, +0x9c, +0xa0, +0xa4, +0xb8, +0xac, +0xb0 and +0xb4, and the `swc1` stores of $f4 write 0.0.
  On the branch path the stores from 0xb3b1388 to 0xb3b1460 write the same eight constants in the same order, at 0xb3b1388, 0xb3b139c, 0xb3b13bc, 0xb3b13d4, 0xb3b13f4, 0xb3b1408, 0xb3b1428 and 0xb3b1440, with float words from a0 at +0x180, +0x184, +0x188, +0xa8, +0x9c, +0xa0, +0xa4, +0x190, +0x194, +0x198, +0xb8, +0xac, +0xb0 and +0xb4 between them, and the always-taken `beq` at 0xb3b145c sends it to the common tail at 0xb3b130c.
  The common tail writes the constant 0xffffffffc180cc19 at 0xb3b1310, the constant 0xffffffffc380d025 at 0xb3b1334 and 0xffffffff8080d005 at 0xb3b1360, with float words from a0 at +0xd0, +0xd4, +0xd8, +0x3c, +0x40, +0x44, +0x48, +0x1c, +0x20, +0x24 and +0x28 between them, and the `jr ra` at 0xb3b1380 returns v0 = 0xffffffff8080d005 on both paths.
  Unknown: the content of the pointer at absolute 0x1020, and what sits at 0x4000; no linked row covers either (the mmio rows start at 0x110000 and 0x120000), so a committed row for each, or a datasheet entry for the record, would settle them.
  Evidence grade: established.

- `CISendFc` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3b1470 (n64).
  Streams eight 4-byte words, one after another, to the single absolute address 0x4000 from a straight-line body with no branch or call; `a0` points at a caller record that supplies five of the words.
  The first word depends on the byte at record offset +0xc4 (`lbu` at 0xb3b1470): a selector starts as 0xf (set at 0xb3b1478) and is replaced by 0x10 (set at 0xb3b1474) when the byte is zero, so a nonzero byte keeps 0xf. The selector is shifted left by 0x18 (the shift at 0xb3b148c), ORed with 0x2000c02e, and stored by the `sw` at 0xb3b1498.
  Two constant words follow in fixed positions: the `sw` at 0xb3b14a0 stores 0xffffffffc580c407 as the second word, and the `sw` at 0xb3b14b4 stores 0xffffffff8080d005 as the fourth.
  The other five words are floating-point loads from the record written back out unchanged: +0x9c is the third word (`lwc1` at 0xb3b14a4, `swc1` at 0xb3b14ac), then +0x1c, +0x20, +0x24 and +0x28 are the fifth to eighth (`swc1` at 0xb3b14bc, 0xb3b14c4, 0xb3b14cc and the delay slot of the return at 0xb3b14d8).
  The return value in v0 is the constant 0xffffffffc580c407 set at 0xb3b149c, and f0 is the word loaded from +0x28.
  Unknown: which hardware register sits at the absolute address 0x4000, since no linked row or datasheet excerpt covers it; a register row or datasheet entry at that address would settle it.
  Evidence grade: established.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3b19b0

`CISendClippedBmFmN` (372 bytes) starts like `RGBSendFc`, reading the byte at a0 +0xc4. It streams
floats from a0 at +0x9c, +0xac, +0xd0 to +0xd8 and +0x1c to +0x28, writing 11 words and 39 floats to
abs 0x4000. It also loads one float at 0xb3b19f4 from a base the facts do not resolve. It
makes no calls, returns the
constant 0xffffffff8080d005, and has no branches in the facts. The name
suggests a color-index send of
a clipped bitmap, but the facts do not show that.

Grade: inferred.

Reviewed: 2026-11-12

- `__glOdysseySoftClipRenderPoint` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3b25f0 (n64).
  Writes control words to 0x4000 around one call through a function pointer at `a0` +0x1c760, and afterwards
  sets the word at `a0` +0xbc58 to 1.
  The `sw` at 0xb3b2600 writes 0x14400 to 0x4000, and the `sw` at 0xb3b2608 writes 0 there before the call.
  The `ld` at 0xb3b2620 loads the pointer from `a0` +0x1c760, and the `jalr` at 0xb3b2630 calls it with `a0`
  and `a1` both set to the argument `a1` (the `or` in its delay slot), and `a2` and `a3` passed unchanged.
  After the call, the `sw` at 0xb3b2658 writes 1 to the word at `a0` +0xbc58, and the return (the `jr` at
  0xb3b2660) has a `sw` in its delay slot that writes 0x14001 to 0x4000, and it returns 0x14001 in `v0`.
  Inferred: the address 0x4000 counts as a device address because the bundle's address list marks it
  memory-mapped I/O outside the file; the linked windows are elsewhere, at 0x110000 and 0x120000.
  Unknown: the target of the call through the pointer at `a0` +0x1c760, which the bundle does not name and
  no callee note covers.
  Unknown: which fields the words 0x14400, 0 and 0x14001 sent to 0x4000 carry; a datasheet table for that
  register or a device-side capture would settle it.
  Evidence grade: inferred.

- `vvec` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3b6070 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3b6070-0xb3b614c (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xb3b6070 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xb3b6078 loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xb3b6088, `lwc1` at 0xb3b612c.
  The `lwc1` at 0xb3b608c loads 4 bytes from a1 (arg1 at entry) +0xc.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xb3b6090, `lwc1` at 0xb3b6110, `lwc1` at 0xb3b6128.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xb3b6094, `lwc1` at 0xb3b6118, `lwc1` at 0xb3b6124.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `swc1` at 0xb3b60a4, `swc1` at 0xb3b60cc, `swc1` at 0xb3b60f8.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `swc1` at 0xb3b60a8, `swc1` at 0xb3b60d0, `swc1` at 0xb3b6100.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `swc1` at 0xb3b60ac, `swc1` at 0xb3b60d4, `swc1` at 0xb3b6108.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lwc1` at 0xb3b60b0, `lwc1` at 0xb3b60e4.
  The `lwc1` at 0xb3b60b4 loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lwc1` at 0xb3b60b8, `lwc1` at 0xb3b60ec.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lwc1` at 0xb3b60bc, `lwc1` at 0xb3b60e0.
  The `beq` branch at 0xb3b607c targets 0xb3b60e0, is taken when at(=([a1+12] << 0x1)) == 0, and falls through when at(=([a1+12] << 0x1)) != 0.
  The `beq` branch at 0xb3b6084 targets 0xb3b610c, is taken when a4(=([a2+12] << 0x1)) == 0, and falls through when a4(=([a2+12] << 0x1)) != 0.
  The `beq` branch at 0xb3b60e8 targets 0xb3b6124, is taken when a4(=([a2+12] << 0x1)) == 0, and falls through when a4(=([a2+12] << 0x1)) != 0.
  The return at 0xb3b60d8 has v0 = ?.
  The return at 0xb3b6104 has v0 = ?.
  The return at 0xb3b611c has v0 = ?.
  The return at 0xb3b6144 has v0 = ?.

- `Dot` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3b7080 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3b7080-0xb3b70a8 (40 bytes).
  It occupies 40 bytes.
  The `lwc1` at 0xb3b7080 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xb3b7084 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xb3b7088 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xb3b708c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xb3b7090 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xb3b7098 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The return at 0xb3b70a0 has v0 = ?.

- `SphereGen` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3b70b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3b70b0-0xb3b719c (236 bytes).
  It occupies 236 bytes.
  The `ld` at 0xb3b70bc loads 8 bytes from a0 (arg0 at entry) +0x4690.
  The `lwc1` at 0xb3b70f4 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lwc1` at 0xb3b70fc loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lwc1` at 0xb3b7100 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf30, including `lwc1` at 0xb3b714c, `lwc1` at 0xb3b716c, `lwc1` at 0xb3b7184.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xb3b7168, `swc1` at 0xb3b7180.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xb3b7178, `swc1` at 0xb3b7188.
  The `jalr` at 0xb3b70d8 calls (unknown callee) with a0=sp-80, a1=a1+108, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xb3b70ec calls Dot [0xb3b7080] with a0=a1+44, a1=sp-80, a2=?, a3=?.
  The `bc1t` branch at 0xb3b7154 targets 0xb3b717c, is taken when f6 == f0(=0x0) (c.eq.s at 0xb3b7148), and falls through when not (f6 == f0(=0x0) (c.eq.s at 0xb3b7148)).
  The `beq` branch at 0xb3b7174 targets 0xb3b718c and is always taken.
  The return at 0xb3b7194 has v0 = ret(Dot).

- `grow_region` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3c0c40 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3c0c40-0xb3c0e60 (544 bytes).
  It occupies 544 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xb3c0c40, `lw` at 0xb3c0c90.
  The `ld` at 0xb3c0c48 loads 8 bytes from abs 0x1020.
  The `ld` at 0xb3c0c54 loads 8 bytes from a0 (arg0 at entry) +0x28.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xb3c0c94, `lw` at 0xb3c0ce8, `lw` at 0xb3c0e10.
  The `lw` at 0xb3c0c9c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0xb3c0cb0 loads 8 bytes from [0x1020]:8 +0x10.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0xb3c0cc0, `ld` at 0xb3c0dbc, `ld` at 0xb3c0dd4.
  The `sd` at 0xb3c0cd8 stores 8 bytes to a0 (arg0 at entry) +0x20.
  The `lw` at 0xb3c0d14 loads 4 bytes from ?.
  13 such `sw` accesses store 4 bytes to ?, including `sw` at 0xb3c0d30, `sw` at 0xb3c0d38, `sw` at 0xb3c0d40.
  The `lw` at 0xb3c0dac loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0xb3c0dc0, `lw` at 0xb3c0dcc.
  The `sw` at 0xb3c0e14 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0xb3c0e18 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `lw` at 0xb3c0e24 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `sw` at 0xb3c0e28 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `sd` at 0xb3c0e30 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0xb3c0e3c stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `jalr` at 0xb3c0c68 calls (unknown callee) with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb3c0cd0 calls (unknown callee) with a0=[0x1020]:8, a1=[a0+32]:8, a2=?, a3=?, a4=a1 at entry (arg1), a5=[a0].
  The `bne` branch at 0xb3c0c70 targets 0xb3c0c8c, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0xb3c0ce0 targets 0xb3c0e4c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `bne` branch at 0xb3c0d10 targets 0xb3c0dac, is taken when a0(=([a0+4] + a1)) < a1(=[a0+4]) (signed), and falls through when a0(=([a0+4] + a1)) >= a1(=[a0+4]) (signed).
  The `beq` branch at 0xb3c0d28 targets 0xb3c0d54, is taken when (t0(?) & 0x1) == 0, and falls through when (t0(?) & 0x1) != 0.
  The `bltz` branch at 0xb3c0d34 targets 0xb3c0d44, is taken when a5(=-0x1) < 0 (signed), and falls through when a5(=-0x1) >= 0 (signed).
  The `beq` branch at 0xb3c0d54 targets 0xb3c0dac, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bltz` branch at 0xb3c0d68 targets 0xb3c0d78, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `bltz` branch at 0xb3c0d88 targets 0xb3c0d98, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `bne` branch at 0xb3c0da4 targets 0xb3c0d60, is taken when a6(=([a0+4] + a1)+1) != a1(?), and falls through when a6(=([a0+4] + a1)+1) == a1(?).
  The `beq` branch at 0xb3c0db4 targets 0xb3c0e10, is taken when v1(=[a0+24]) == 0, and falls through when v1(=[a0+24]) != 0.
  The return at 0xb3c0c84 has v0 = -0x1.
  The return at 0xb3c0e44 has v0 = 0x0.
  The return at 0xb3c0e58 has v0 = -0x1.

- `Clear` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3e5dd0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3e5dd0-0xb3e6078 (680 bytes).
  It occupies 680 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0xb3e5de4, `ld` at 0xb3e6068.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x18, including `ld` at 0xb3e5df8, `ld` at 0xb3e6064.
  The `lw` at 0xb3e5e04 loads 4 bytes from [a0]:8 +0x95dc.
  The `lw` at 0xb3e5e10 loads 4 bytes from [a0]:8 +0x95d4.
  The `lw` at 0xb3e5e1c loads 4 bytes from [a0]:8 +0x95d0.
  The `lw` at 0xb3e5e20 loads 4 bytes from [a0]:8 +0x95d8.
  The `lw` at 0xb3e5e24 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb3e5e28 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0xb3e5e2c loads 4 bytes from [a0]:8 +0xfbc.
  The `lwc1` at 0xb3e5e30 loads 4 bytes from [a0]:8 +0x780.
  The `lwc1` at 0xb3e5e34 loads 4 bytes from [a0]:8 +0x9ad0.
  The `lwc1` at 0xb3e5e38 loads 4 bytes from [a0]:8 +0x784.
  The `lwc1` at 0xb3e5e3c loads 4 bytes from [a0]:8 +0x9af0.
  The `lwc1` at 0xb3e5e40 loads 4 bytes from [a0]:8 +0x9acc.
  The `lwc1` at 0xb3e5e44 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lwc1` at 0xb3e5e4c loads 4 bytes from [a0]:8 +0x77c.
  The `lwc1` at 0xb3e5e54 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lwc1` at 0xb3e5e60 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lwc1` at 0xb3e5e6c loads 4 bytes from [a0]:8 +0x778.
  The `lwc1` at 0xb3e5e74 loads 4 bytes from [a0]:8 +0x9ac8.
  The `lwc1` at 0xb3e5e94 loads 4 bytes from a0 (arg0 at entry) +0x78.
  28 such `sh` accesses store 2 bytes to ?, including `sh` at 0xb3e5f64, `sh` at 0xb3e5f68, `sh` at 0xb3e5f6c.
  The `ld` at 0xb3e604c loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0xb3e605c calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=[a0]:8.
  The `beq` branch at 0xb3e5e18 targets 0xb3e604c, is taken when t1(=[a0+24]:8) == 0, and falls through when t1(=[a0+24]:8) != 0.
  The `beq` branch at 0xb3e5efc targets 0xb3e6034, is taken when s0(=[[a0]:8+38356]) >= s1(=[[a0]:8+38364]) (signed), and falls through when s0(=[[a0]:8+38356]) < s1(=[[a0]:8+38364]) (signed).
  The `beq` branch at 0xb3e5f34 targets 0xb3e5f98 and is always taken.
  The `beq` branch at 0xb3e5f44 targets 0xb3e5f90, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xb3e5f84 targets 0xb3e5f60, is taken when a0(?) != a7(=-0x1), and falls through when a0(?) == a7(=-0x1).
  The `beq` branch at 0xb3e5f90 targets 0xb3e6034, is taken when s0(?) == s1(=[[a0]:8+38364]), and falls through when s0(?) != s1(=[[a0]:8+38364]).
  The `beq` branch at 0xb3e5fa4 targets 0xb3e5ffc, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bne` branch at 0xb3e5ff4 targets 0xb3e5fb0, is taken when a1(?) != a7(=-0x1), and falls through when a1(?) == a7(=-0x1).
  The `beq` branch at 0xb3e5ffc targets 0xb3e5f90, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xb3e600c targets 0xb3e5f40, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xb3e602c targets 0xb3e5f3c and is always taken.
  The `beq` branch at 0xb3e6070 targets 0xb3e5e20 and is always taken.
  The return at 0xb3e6044 has v0 = ?.

- `__glim_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3e76f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3e76f0-0xb3e78dc (492 bytes).
  It occupies 492 bytes.
  The `lw` at 0xb3e76f4 loads 4 bytes from abs 0x1030.
  The `ld` at 0xb3e770c loads 8 bytes from abs 0x1020.
  2 such `lbu` accesses load 1 byte from [0x1020]:8 +0xdee, including `lbu` at 0xb3e7730, `lbu` at 0xb3e778c.
  5 such `sw` accesses store 4 bytes to [0x1020]:8 +0x870, including `sw` at 0xb3e773c, `sw` at 0xb3e779c, `sw` at 0xb3e77b8.
  The `sw` at 0xb3e7740 stores 4 bytes to [0x1020]:8 +0x874.
  The `sw` at 0xb3e7748 stores 4 bytes to abs 0x1030.
  The `lw` at 0xb3e774c loads 4 bytes from [0x1020]:8 +0x456c.
  The `sw` at 0xb3e7760 stores 4 bytes to [0x1020]:8 +0x456c.
  4 such `lw` accesses load 4 bytes from [0x1020]:8 +0xe38, including `lw` at 0xb3e77d0, `lw` at 0xb3e784c, `lw` at 0xb3e78a4.
  The `jalr` at 0xb3e7810 calls __glSetError [0xb3f83f0] with a0=0x500, a1=?, a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `jalr` at 0xb3e7864 calls __glSetError [0xb3f83f0] with a0=0x502, a1=?, a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `jalr` at 0xb3e78c4 calls __glSetError [0xb3f83f0] with a0=0x502, a1=?, a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `beq` branch at 0xb3e7710 targets 0xb3e78bc, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `bne` branch at 0xb3e7718 targets 0xb3e7764, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xb3e7728 targets 0xb3e77bc, is taken when a0 >= 0x407 (unsigned), and falls through when a0 < 0x407 (unsigned).
  The `bne` branch at 0xb3e7764 targets 0xb3e77a0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xb3e776c targets 0xb3e778c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0xb3e7774 targets 0xb3e787c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xb3e777c targets 0xb3e77b0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xb3e7784 targets 0xb3e780c, is taken when a0 != v1(=0x405), and falls through when a0 == v1(=0x405).
  The `beq` branch at 0xb3e7790 targets 0xb3e785c, is taken when a1(=[[0x1020]:8+3566]:1) == 0, and falls through when a1(=[[0x1020]:8+3566]:1) != 0.
  The `beq` branch at 0xb3e7798 targets 0xb3e7740 and is always taken.
  The `bne` branch at 0xb3e77a4 targets 0xb3e77ec, is taken when a0 < 0x400 (unsigned), and falls through when a0 >= 0x400 (unsigned).
  The `beq` branch at 0xb3e77ac targets 0xb3e77fc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xb3e77b4 targets 0xb3e7740 and is always taken.
  The `bne` branch at 0xb3e77c0 targets 0xb3e7828, is taken when a0 < 0x40a (unsigned), and falls through when a0 >= 0x40a (unsigned).
  The `beq` branch at 0xb3e77c8 targets 0xb3e7890, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xb3e77dc targets 0xb3e7860, is taken when v1(=a0-1033) >= a1(=[[0x1020]:8+3640]) (signed), and falls through when v1(=a0-1033) < a1(=[[0x1020]:8+3640]) (signed).
  The `beq` branch at 0xb3e77e4 targets 0xb3e7740 and is always taken.
  The `bne` branch at 0xb3e77ec targets 0xb3e780c, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0xb3e77f4 targets 0xb3e7740 and is always taken.
  The `beq` branch at 0xb3e7800 targets 0xb3e785c, is taken when a0 == at(=0x401), and falls through when a0 != at(=0x401).
  The `bne` branch at 0xb3e782c targets 0xb3e7850, is taken when a0 < 0x408 (unsigned), and falls through when a0 >= 0x408 (unsigned).
  The `bne` branch at 0xb3e7834 targets 0xb3e7730, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xb3e7840 targets 0xb3e780c, is taken when a0 != a1(=0x409), and falls through when a0 == a1(=0x409).
  The `beq` branch at 0xb3e7848 targets 0xb3e77d4 and is always taken.
  The `bne` branch at 0xb3e7854 targets 0xb3e7808, is taken when a0 != at(=0x407), and falls through when a0 == at(=0x407).
  The `bne` branch at 0xb3e7880 targets 0xb3e780c, is taken when a0 != v0(=0x403), and falls through when a0 == v0(=0x403).
  The `beq` branch at 0xb3e7888 targets 0xb3e785c and is always taken.
  The `bne` branch at 0xb3e7890 targets 0xb3e78a8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xb3e7898 targets 0xb3e780c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xb3e78a0 targets 0xb3e77d4 and is always taken.
  The `bne` branch at 0xb3e78ac targets 0xb3e780c, is taken when a0 != at(=0x40b), and falls through when a0 == at(=0x40b).
  The `beq` branch at 0xb3e78b4 targets 0xb3e77d4 and is always taken.
  The return at 0xb3e775c has v0 = 0x2.
  The return at 0xb3e7820 has v0 = ret(__glSetError).
  The return at 0xb3e7874 has v0 = ret(__glSetError).
  The return at 0xb3e78d4 has v0 = ret(__glSetError).

- `__glChangeWindowSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3f8670 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3f8670-0xb3f878c (284 bytes).
  It occupies 284 bytes.
  The `sw` at 0xb3f8678 stores 4 bytes to a0 (arg0 at entry) +0xfe0.
  The `sw` at 0xb3f8680 stores 4 bytes to a0 (arg0 at entry) +0xfe4.
  The `ld` at 0xb3f8698 loads 8 bytes from a0 (arg0 at entry) +0x9a28.
  The `ld` at 0xb3f86a8 loads 8 bytes from [a0+39464]:8 +0x58.
  The `lbu` at 0xb3f86c0 loads 1 byte from a0 (arg0 at entry) +0xdee.
  The `ld` at 0xb3f86cc loads 8 bytes from a0 (arg0 at entry) +0x9a30.
  The `ld` at 0xb3f86d0 loads 8 bytes from [a0+39472]:8 +0x58.
  The `lbu` at 0xb3f86e0 loads 1 byte from a0 (arg0 at entry) +0xdf0.
  The `ld` at 0xb3f86ec loads 8 bytes from a0 (arg0 at entry) +0x9ea0.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xdf1, including `lbu` at 0xb3f86f8, `lbu` at 0xb3f8788.
  The `ld` at 0xb3f8704 loads 8 bytes from a0 (arg0 at entry) +0x9e10.
  The `lbu` at 0xb3f871c loads 1 byte from a0 (arg0 at entry) +0xdf2.
  The `ld` at 0xb3f8728 loads 8 bytes from a0 (arg0 at entry) +0x9d38.
  The `ld` at 0xb3f8740 loads 8 bytes from a0 (arg0 at entry) +0x46a8.
  The `ld` at 0xb3f876c loads 8 bytes from a0 (arg0 at entry) +0x9ee0.
  The `jalr` at 0xb3f86b8 calls (unknown callee) with a0=[a0+39464]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb3f86d8 calls (unknown callee) with a0=[a0+39472]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xb3f8714 calls (unknown callee) with a0=a0+40376, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+3569]:1.
  The `jalr` at 0xb3f8738 calls (unknown callee) with a0=a0+40160, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+3570]:1.
  The `jalr` at 0xb3f8750 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xb3f877c calls (unknown callee) with a0=a0+40584, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0xb3f86c4 targets 0xb3f86e0, is taken when at(=[a0+3566]:1) == 0, and falls through when at(=[a0+3566]:1) != 0.
  The `beq` branch at 0xb3f86e4 targets 0xb3f86f8, is taken when v0(=[a0+3568]:1) == 0, and falls through when v0(=[a0+3568]:1) != 0.
  The `bne` branch at 0xb3f86f0 targets 0xb3f876c, is taken when v1(=[a0+40608]:8) != 0, and falls through when v1(=[a0+40608]:8) == 0.
  The `beq` branch at 0xb3f86fc targets 0xb3f871c, is taken when a3(=[a0+3569]:1) == 0, and falls through when a3(=[a0+3569]:1) != 0.
  The `beq` branch at 0xb3f8720 targets 0xb3f8740, is taken when a3(=[a0+3570]:1) == 0, and falls through when a3(=[a0+3570]:1) != 0.
  The `beq` branch at 0xb3f8784 targets 0xb3f86fc and is always taken.
  The return at 0xb3f8764 has v0 = ret(?).

- `__glChangeReadWindowSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3f8790 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3f8790-0xb3f879c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xb3f8790 stores 4 bytes to a0 (arg0 at entry) +0xfec.
  The `sw` at 0xb3f8798 stores 4 bytes to a0 (arg0 at entry) +0xfe8.
  The return at 0xb3f8794 has v0 = ?.

- `StoreGREATER` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fad20 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fad20-0xb3fad94 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0xb3fad20 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb3fad24 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb3fad28 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb3fad34 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb3fad48 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb3fad58 loads 4 bytes from [a0]:8 +0x9e40.
  The `lw` at 0xb3fad60 loads 4 bytes from [a0]:8 +0x9e38.
  The `lw` at 0xb3fad6c loads 4 bytes from ?.
  The `sw` at 0xb3fad88 stores 4 bytes to ?.
  The `beq` branch at 0xb3fad78 targets 0xb3fad8c, is taken when at(?) >= a5(?) (unsigned), and falls through when at(?) < a5(?) (unsigned).
  The return at 0xb3fad84 has v0 = 0x1.
  The return at 0xb3fad8c has v0 = 0x0.

- `StoreGREATER_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fada0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fada0-0xb3fae14 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0xb3fada0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb3fada4 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb3fada8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb3fadb4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb3fadc8 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb3fadd8 loads 4 bytes from [a0]:8 +0x9e40.
  The `lw` at 0xb3fade0 loads 4 bytes from [a0]:8 +0x9e38.
  The `lw` at 0xb3fadec loads 4 bytes from ?.
  The `sw` at 0xb3fae08 stores 4 bytes to ?.
  The `beq` branch at 0xb3fadf8 targets 0xb3fae0c, is taken when at(?) >= a5(?) (signed), and falls through when at(?) < a5(?) (signed).
  The return at 0xb3fae04 has v0 = 0x1.
  The return at 0xb3fae0c has v0 = 0x0.

- `StoreGEQUAL` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fae90 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fae90-0xb3faf04 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0xb3fae90 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb3fae94 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb3fae98 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb3faea8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb3faeb4 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb3faec8 loads 4 bytes from [a0]:8 +0x9e40.
  The `lw` at 0xb3faed0 loads 4 bytes from [a0]:8 +0x9e38.
  The `lw` at 0xb3faedc loads 4 bytes from ?.
  The `sw` at 0xb3faef8 stores 4 bytes to ?.
  The `bne` branch at 0xb3faee8 targets 0xb3faefc, is taken when a5(?) < at(?) (unsigned), and falls through when a5(?) >= at(?) (unsigned).
  The return at 0xb3faef4 has v0 = 0x1.
  The return at 0xb3faefc has v0 = 0x0.

- `StoreGEQUAL_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3faf10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3faf10-0xb3faf84 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0xb3faf10 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb3faf14 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb3faf18 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb3faf28 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb3faf34 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb3faf48 loads 4 bytes from [a0]:8 +0x9e40.
  The `lw` at 0xb3faf50 loads 4 bytes from [a0]:8 +0x9e38.
  The `lw` at 0xb3faf5c loads 4 bytes from ?.
  The `sw` at 0xb3faf78 stores 4 bytes to ?.
  The `bne` branch at 0xb3faf68 targets 0xb3faf7c, is taken when a5(?) < at(?) (signed), and falls through when a5(?) >= at(?) (signed).
  The return at 0xb3faf74 has v0 = 0x1.
  The return at 0xb3faf7c has v0 = 0x0.

- `StoreGREATER_W` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fb1d0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fb1d0-0xb3fb22c (92 bytes).
  It occupies 92 bytes.
  The `ld` at 0xb3fb1d0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb3fb1d4 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb3fb1d8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb3fb1e4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb3fb1f0 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb3fb20c loads 4 bytes from [a0]:8 +0x9e40.
  The `lw` at 0xb3fb210 loads 4 bytes from [a0]:8 +0x9e38.
  The `lw` at 0xb3fb218 loads 4 bytes from ?.
  The return at 0xb3fb224 has v0 = ?.

- `StoreGREATER_W_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fb230 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fb230-0xb3fb28c (92 bytes).
  It occupies 92 bytes.
  The `ld` at 0xb3fb230 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb3fb234 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb3fb238 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb3fb244 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb3fb250 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb3fb26c loads 4 bytes from [a0]:8 +0x9e40.
  The `lw` at 0xb3fb270 loads 4 bytes from [a0]:8 +0x9e38.
  The `lw` at 0xb3fb278 loads 4 bytes from ?.
  The return at 0xb3fb284 has v0 = ?.

- `StoreGEQUAL_W` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fb2f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fb2f0-0xb3fb350 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0xb3fb2f0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb3fb2f4 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb3fb2f8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb3fb308 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb3fb314 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb3fb324 loads 4 bytes from [a0]:8 +0x9e40.
  The `lw` at 0xb3fb330 loads 4 bytes from [a0]:8 +0x9e38.
  The `lw` at 0xb3fb33c loads 4 bytes from ?.
  The return at 0xb3fb348 has v0 = ?.

- `StoreGEQUAL_W_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fb350 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fb350-0xb3fb3b0 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0xb3fb350 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb3fb354 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb3fb358 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb3fb368 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb3fb374 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb3fb384 loads 4 bytes from [a0]:8 +0x9e40.
  The `lw` at 0xb3fb390 loads 4 bytes from [a0]:8 +0x9e38.
  The `lw` at 0xb3fb39c loads 4 bytes from ?.
  The return at 0xb3fb3a8 has v0 = ?.

- `Resize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fbcf0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fbcf0-0xb3fbd34 (68 bytes).
  It occupies 68 bytes.
  The `sb` at 0xb3fbd24 stores 1 byte to a0 (arg0 at entry) +0x90.
  The `jalr` at 0xb3fbd10 calls __glResizeBuffer [0xb3f17d0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xb3fbd2c has v0 = 0x1.

- `Coverage` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb423b50 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb423b50-0xb423c90 (320 bytes).
  It occupies 320 bytes.
  The `bc1f` branch at 0xb423b98 targets 0xb423ba4, is taken when not (f9 <= f5 (c.le.s at 0xb423b94)), and falls through when f9 <= f5 (c.le.s at 0xb423b94).
  The `bc1f` branch at 0xb423ba4 targets 0xb423bb0, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xb423bb0 targets 0xb423bbc, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xb423bc8 targets 0xb423bd4, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0xb423bd8 targets 0xb423be4, is taken when not (f9 <= f5 (c.le.s at 0xb423bd4)), and falls through when f9 <= f5 (c.le.s at 0xb423bd4).
  The `bc1f` branch at 0xb423be4 targets 0xb423bf0, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xb423bf0 targets 0xb423bfc, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xb423c08 targets 0xb423c14, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0xb423c1c targets 0xb423c28, is taken when not (f9 <= f5 (c.le.s at 0xb423c14)), and falls through when f9 <= f5 (c.le.s at 0xb423c14).
  The `bc1f` branch at 0xb423c28 targets 0xb423c34, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xb423c34 targets 0xb423c40, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xb423c44 targets 0xb423c50, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0xb423c58 targets 0xb423c64, is taken when not (f9 <= f5 (c.le.s at 0xb423c50)), and falls through when f9 <= f5 (c.le.s at 0xb423c50).
  The `bc1f` branch at 0xb423c64 targets 0xb423c70, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xb423c70 targets 0xb423c7c, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xb423c7c targets 0xb423c88, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The return at 0xb423c88 has v0 = ?.

- `SetInitialParameters` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb426290 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb426290-0xb426810 (1408 bytes).
  It occupies 1408 bytes.
  The `lw` at 0xb4262a0 loads 4 bytes from a0 (arg0 at entry) +0x97ac.
  The `lw` at 0xb4262a4 loads 4 bytes from a0 (arg0 at entry) +0x97a8.
  The `lw` at 0xb4262bc loads 4 bytes from a0 (arg0 at entry) +0x98d4.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x983c, including `lwc1` at 0xb426308, `lwc1` at 0xb4264e4, `lwc1` at 0xb4267b0.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x984c, including `lwc1` at 0xb42630c, `lwc1` at 0xb4264e8, `lwc1` at 0xb4267b4.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xb426310, `lwc1` at 0xb4264ec, `lwc1` at 0xb4267bc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9850, including `lwc1` at 0xb426320, `lwc1` at 0xb4264fc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9840, including `lwc1` at 0xb426324, `lwc1` at 0xb426500.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x981c, including `swc1` at 0xb426328, `swc1` at 0xb426508, `swc1` at 0xb4267c8.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97f0, including `swc1` at 0xb42632c, `swc1` at 0xb426504, `swc1` at 0xb4267d8.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x982c, including `swc1` at 0xb426334, `swc1` at 0xb426510, `swc1` at 0xb4267d0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xb426338, `lwc1` at 0xb426514.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9854, including `lwc1` at 0xb426348, `lwc1` at 0xb426524.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9844, including `lwc1` at 0xb42634c, `lwc1` at 0xb426528.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9820, including `swc1` at 0xb426350, `swc1` at 0xb426530.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97f4, including `swc1` at 0xb426354, `swc1` at 0xb42652c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9830, including `swc1` at 0xb42635c, `swc1` at 0xb426538.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xb426360, `lwc1` at 0xb42653c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9858, including `lwc1` at 0xb426370, `lwc1` at 0xb42654c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9848, including `lwc1` at 0xb426374, `lwc1` at 0xb426550.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9824, including `swc1` at 0xb426378, `swc1` at 0xb426558.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97f8, including `swc1` at 0xb42637c, `swc1` at 0xb426554.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9834, including `swc1` at 0xb426384, `swc1` at 0xb426560.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0xb42638c, `lwc1` at 0xb426568.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9828, including `swc1` at 0xb426398, `swc1` at 0xb426574.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9838, including `swc1` at 0xb4263a0, `swc1` at 0xb42657c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97fc, including `swc1` at 0xb4263a4, `swc1` at 0xb426580.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x98, including `lwc1` at 0xb4263b4, `lwc1` at 0xb426590.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x3c, including `lwc1` at 0xb4263b8, `lwc1` at 0xb426594.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x989c, including `lwc1` at 0xb4263bc, `lwc1` at 0xb426598.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98b0, including `lwc1` at 0xb4263c0, `lwc1` at 0xb42659c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9874, including `swc1` at 0xb4263d4, `swc1` at 0xb4265b4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9800, including `swc1` at 0xb4263d8, `swc1` at 0xb4265b0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9888, including `swc1` at 0xb4263e0, `swc1` at 0xb4265bc.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x40, including `lwc1` at 0xb4263e4, `lwc1` at 0xb4265c0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98a0, including `lwc1` at 0xb4263e8, `lwc1` at 0xb4265c4.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98b4, including `lwc1` at 0xb4263ec, `lwc1` at 0xb4265c8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9878, including `swc1` at 0xb426400, `swc1` at 0xb4265e0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9804, including `swc1` at 0xb426404, `swc1` at 0xb4265dc.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x988c, including `swc1` at 0xb42640c, `swc1` at 0xb4265e8.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x44, including `lwc1` at 0xb426410, `lwc1` at 0xb4265ec.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98a4, including `lwc1` at 0xb426414, `lwc1` at 0xb4265f0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98b8, including `lwc1` at 0xb426418, `lwc1` at 0xb4265f4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x987c, including `swc1` at 0xb42642c, `swc1` at 0xb42660c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9808, including `swc1` at 0xb426430, `swc1` at 0xb426608.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9890, including `swc1` at 0xb426438, `swc1` at 0xb426614.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x48, including `lwc1` at 0xb42643c, `lwc1` at 0xb426618.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98a8, including `lwc1` at 0xb426440, `lwc1` at 0xb42661c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98bc, including `lwc1` at 0xb426444, `lwc1` at 0xb426624.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98c0, including `lwc1` at 0xb426458, `lwc1` at 0xb426634.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98ac, including `lwc1` at 0xb42645c, `lwc1` at 0xb426638.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9880, including `swc1` at 0xb426460, `swc1` at 0xb426640.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x980c, including `swc1` at 0xb426464, `swc1` at 0xb42663c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9894, including `swc1` at 0xb42646c, `swc1` at 0xb426648.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xc0, including `lwc1` at 0xb426474, `lwc1` at 0xb426650.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9884, including `swc1` at 0xb426480, `swc1` at 0xb42665c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9898, including `swc1` at 0xb426488, `swc1` at 0xb426664.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9810, including `swc1` at 0xb42648c, `swc1` at 0xb426668.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x810, including `lw` at 0xb426498, `lw` at 0xb426674.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x986c, including `lwc1` at 0xb4264bc, `lwc1` at 0xb426698, `lwc1` at 0xb4266b4.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9870, including `lwc1` at 0xb4264c0, `lwc1` at 0xb42669c, `lwc1` at 0xb4266b0.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x97ec, including `sw` at 0xb4264c4, `sw` at 0xb4266a0, `sw` at 0xb4266cc.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x94, including `lwc1` at 0xb4266b8, `lwc1` at 0xb426728.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x985c, including `sw` at 0xb4266e4, `sw` at 0xb426754.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x9860, including `sw` at 0xb4266ec, `sw` at 0xb42675c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98d0, including `lwc1` at 0xb4266f8, `lwc1` at 0xb426768.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98cc, including `lwc1` at 0xb4266fc, `lwc1` at 0xb42676c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x98c4, including `swc1` at 0xb42670c, `swc1` at 0xb42677c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x98c8, including `swc1` at 0xb426714, `swc1` at 0xb426784.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9814, including `swc1` at 0xb42671c, `swc1` at 0xb426788.
  The `bgezall` at 0xb4264b4 calls __glPolygonOffsetZ [0xb428910] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=[a0+39124]; fp f14=f16, f15=f17.
  The `bgezall` at 0xb426690 calls __glPolygonOffsetZ [0xb428910] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a7=[a0+39124]; fp f14=f16, f15=f17.
  The `bc1f` branch at 0xb4262f0 targets 0xb4264d4, is taken when not (f24 < f0 (c.lt.s at 0xb4262c8)), and falls through when f24 < f0 (c.lt.s at 0xb4262c8).
  The `beq` branch at 0xb4262f8 targets 0xb4267a8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xb426300 targets 0xb4263ac, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xb4263ac targets 0xb426490, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xb426490 targets 0xb4266f0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xb4264a0 targets 0xb4266b0, is taken when (v0(=[a0+2064]) & v1(=0x1000000)) == 0, and falls through when (v0(=[a0+2064]) & v1(=0x1000000)) != 0.
  The `beq` branch at 0xb4264cc targets 0xb4266d0 and is always taken.
  The `beq` branch at 0xb4264d4 targets 0xb4267dc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xb4264dc targets 0xb426588, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xb426588 targets 0xb42666c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xb42666c targets 0xb426760, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xb42667c targets 0xb426720, is taken when (at(=[a0+2064]) & v0(=0x1000000)) == 0, and falls through when (at(=[a0+2064]) & v0(=0x1000000)) != 0.
  The `beq` branch at 0xb4266a8 targets 0xb426740 and is always taken.
  The `beq` branch at 0xb4266f0 targets 0xb42678c, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0xb426718 targets 0xb42678c and is always taken.
  The `beq` branch at 0xb426760 targets 0xb42678c, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0xb4267a8 targets 0xb426490, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xb4267d4 targets 0xb426490 and is always taken.
  The `beq` branch at 0xb4267dc targets 0xb42666c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xb426808 targets 0xb42666c and is always taken.
  The return at 0xb4267a0 has v0 = ?.

- `__glLookUpTextureParams` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4438a0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4438a0-0xb4438e8 (72 bytes).
  It occupies 72 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xac0, including `ld` at 0xb4438c8, `ld` at 0xb4438d8, `ld` at 0xb4438dc.
  The `beq` branch at 0xb4438a8 targets 0xb4438d4, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xb4438b0 targets 0xb4438dc, is taken when a1 == v0(=0xde1), and falls through when a1 != v0(=0xde1).
  The `beq` branch at 0xb4438b8 targets 0xb4438c8, is taken when a1 == v1(=0x806f), and falls through when a1 != v1(=0x806f).
  The return at 0xb4438c0 has v0 = 0x0.
  The return at 0xb4438cc has v0 = [a0+2752]:8+448.
  The return at 0xb4438d4 has v0 = [a0+2752]:8.
  The return at 0xb4438e0 has v0 = [a0+2752]:8+224.

- `__glLookUpTextureTexobjs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4438f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4438f0-0xb44393c (76 bytes).
  It occupies 76 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xac0, including `ld` at 0xb443918, `ld` at 0xb443924, `ld` at 0xb443930.
  The `beq` branch at 0xb4438f8 targets 0xb443924, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xb443900 targets 0xb443930, is taken when a1 == v0(=0xde1), and falls through when a1 != v0(=0xde1).
  The `beq` branch at 0xb443908 targets 0xb443918, is taken when a1 == v1(=0x806f), and falls through when a1 != v1(=0x806f).
  The return at 0xb443910 has v0 = 0x0.
  The return at 0xb44391c has v0 = [a0+2752]:8+664.
  The return at 0xb443928 has v0 = [a0+2752]:8+216.
  The return at 0xb443934 has v0 = [a0+2752]:8+440.

- `__glLookUpTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb443940 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb443940-0xb4439f8 (184 bytes).
  It occupies 184 bytes.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8e60, including `ld` at 0xb443988, `ld` at 0xb44399c, `ld` at 0xb4439b0.
  The `ld` at 0xb443990 loads 8 bytes from [a0+36448]:8 +0x28.
  The `ld` at 0xb4439a4 loads 8 bytes from [a0+36448]:8 +0x0.
  The `ld` at 0xb4439b8 loads 8 bytes from [a0+36448]:8 +0x8.
  The `ld` at 0xb4439cc loads 8 bytes from [a0+36448]:8 +0x10.
  The `ld` at 0xb4439e0 loads 8 bytes from [a0+36448]:8 +0x18.
  The `ld` at 0xb4439f4 loads 8 bytes from [a0+36448]:8 +0x20.
  The `beq` branch at 0xb44394c targets 0xb443994, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xb443954 targets 0xb4439a8, is taken when a1 == v0(=0xde1), and falls through when a1 != v0(=0xde1).
  The `beq` branch at 0xb44395c targets 0xb4439bc, is taken when a1 == v1(=0x806f), and falls through when a1 != v1(=0x806f).
  The `beq` branch at 0xb443964 targets 0xb4439d0, is taken when a1 == a2(=0x8063), and falls through when a1 != a2(=0x8063).
  The `beq` branch at 0xb44396c targets 0xb4439e4, is taken when a1 == at(=0x8064), and falls through when a1 != at(=0x8064).
  The `beq` branch at 0xb443974 targets 0xb443984, is taken when a1 == v0(=0x8070), and falls through when a1 != v0(=0x8070).
  The return at 0xb44397c has v0 = 0x0.
  The return at 0xb44398c has v0 = [[a0+36448]:8+40]:8.
  The return at 0xb4439a0 has v0 = [[a0+36448]:8]:8.
  The return at 0xb4439b4 has v0 = [[a0+36448]:8+8]:8.
  The return at 0xb4439c8 has v0 = [[a0+36448]:8+16]:8.
  The return at 0xb4439dc has v0 = [[a0+36448]:8+24]:8.
  The return at 0xb4439f0 has v0 = [[a0+36448]:8+32]:8.

- `__glLookUpTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb443a00 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb443a00-0xb443a60 (96 bytes).
  It occupies 96 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8e68, including `ld` at 0xb443a30, `ld` at 0xb443a44, `ld` at 0xb443a54.
  The `ld` at 0xb443a38 loads 8 bytes from [a0+36456]:8 +0x10.
  The `ld` at 0xb443a4c loads 8 bytes from [a0+36456]:8 +0x0.
  The `ld` at 0xb443a5c loads 8 bytes from [a0+36456]:8 +0x8.
  The `beq` branch at 0xb443a08 targets 0xb443a3c, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xb443a10 targets 0xb443a50, is taken when a1 == v0(=0xde1), and falls through when a1 != v0(=0xde1).
  The `beq` branch at 0xb443a18 targets 0xb443a28, is taken when a1 == v1(=0x806f), and falls through when a1 != v1(=0x806f).
  The return at 0xb443a20 has v0 = 0x0.
  The return at 0xb443a34 has v0 = [[a0+36456]:8+16]:8.
  The return at 0xb443a48 has v0 = [[a0+36456]:8]:8.
  The return at 0xb443a58 has v0 = [[a0+36456]:8+8]:8.

- `__glTexInitTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb443b10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb443b10-0xb443b4c (60 bytes).
  It occupies 60 bytes.
  The `sw` at 0xb443b10 stores 4 bytes to a1 (arg1 at entry) +0xf8.
  The `sb` at 0xb443b18 stores 1 byte to a1 (arg1 at entry) +0x14.
  The `sw` at 0xb443b20 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `ld` at 0xb443b28 loads 8 bytes from abs 0xb4cb6e8.
  The `ld` at 0xb443b2c loads 8 bytes from abs 0xb4cb1a0.
  The `ld` at 0xb443b30 loads 8 bytes from abs 0xb4cb1a8.
  The `sd` at 0xb443b34 stores 8 bytes to a1 (arg1 at entry) +0x128.
  The `sd` at 0xb443b38 stores 8 bytes to a1 (arg1 at entry) +0x120.
  The `lwc1` at 0xb443b3c loads 4 bytes from abs 0xb4cfa10.
  The `sd` at 0xb443b40 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `swc1` at 0xb443b48 stores 4 bytes to a1 (arg1 at entry) +0xfc.
  The return at 0xb443b44 has v0 = 0xb456aa0.

- `Store_8` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb469fe0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb469fe0-0xb46a168 (392 bytes).
  It occupies 392 bytes.
  The `ld` at 0xb469fe0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb469fe4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xb469fe8 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb469ff0 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0xb46a010 loads 4 bytes from [a0]:8 +0x810.
  The `ld` at 0xb46a018 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb46a01c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xb46a030 loads 4 bytes from [a0]:8 +0xfb8.
  The `lb` at 0xb46a064 loads 1 byte from table(0xb4c19f8) +0x0.
  The `lw` at 0xb46a088 loads 4 bytes from [a0]:8 +0x814.
  The `ld` at 0xb46a098 loads 8 bytes from [a0]:8 +0x4b60.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xb46a0c4, `lwc1` at 0xb46a0c8, `lwc1` at 0xb46a0d0.
  The `lw` at 0xb46a0f0 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0xb46a0fc loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0xb46a110 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lbu` at 0xb46a118 loads 1 byte from ?.
  The `lw` at 0xb46a124 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `lw` at 0xb46a12c loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `sb` at 0xb46a150 stores 1 byte to ?.
  The `lwc1` at 0xb46a15c loads 4 bytes from [a0]:8 +0xf30.
  The `jalr` at 0xb46a0b0 calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-80, a4=[[a0]:8+2064], a5=[a1], a6=[a0]:8, a7=[a1+4].
  The `beq` branch at 0xb46a044 targets 0xb46a15c, is taken when (a4(=[[a0]:8+2064]) & 0x8) == 0, and falls through when (a4(=[[a0]:8+2064]) & 0x8) != 0.
  The `bne` branch at 0xb46a080 targets 0xb46a098, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xb46a090 targets 0xb46a154, is taken when (at(=[[a0]:8+2068]) & 0x800) == 0, and falls through when (at(=[[a0]:8+2068]) & 0x800) != 0.
  The `beq` branch at 0xb46a154 targets 0xb46a0bc and is always taken.
  The `beq` branch at 0xb46a160 targets 0xb46a080 and is always taken.
  The return at 0xb46a14c has v0 = ?.

- `Store_16` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb46a170 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb46a170-0xb46a304 (404 bytes).
  It occupies 404 bytes.
  The `ld` at 0xb46a170 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb46a174 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xb46a178 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb46a17c loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb46a190 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb46a19c loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb46a1b0 loads 4 bytes from [a0]:8 +0x810.
  The `lw` at 0xb46a1b4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lb` at 0xb46a200 loads 1 byte from table(0xb4c19f8) +0x0.
  The `lw` at 0xb46a224 loads 4 bytes from [a0]:8 +0x814.
  The `ld` at 0xb46a234 loads 8 bytes from [a0]:8 +0x4b60.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xb46a260, `lwc1` at 0xb46a264, `lwc1` at 0xb46a26c.
  The `lw` at 0xb46a28c loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0xb46a298 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0xb46a2ac loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lhu` at 0xb46a2b4 loads 2 bytes from ?.
  The `lw` at 0xb46a2c0 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `lw` at 0xb46a2c8 loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `sh` at 0xb46a2ec stores 2 bytes to ?.
  The `lwc1` at 0xb46a2f8 loads 4 bytes from [a0]:8 +0xf30.
  The `jalr` at 0xb46a24c calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-80, a4=[[a0]:8+2064], a5=[a1+4], a6=[a0]:8, a7=[a1].
  The `beq` branch at 0xb46a1e0 targets 0xb46a2f8, is taken when (a4(=[[a0]:8+2064]) & 0x8) == 0, and falls through when (a4(=[[a0]:8+2064]) & 0x8) != 0.
  The `bne` branch at 0xb46a21c targets 0xb46a234, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xb46a22c targets 0xb46a2f0, is taken when (at(=[[a0]:8+2068]) & 0x800) == 0, and falls through when (at(=[[a0]:8+2068]) & 0x800) != 0.
  The `beq` branch at 0xb46a2f0 targets 0xb46a258 and is always taken.
  The `beq` branch at 0xb46a2fc targets 0xb46a21c and is always taken.
  The return at 0xb46a2e8 has v0 = ?.

- `Store_32` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb46a480 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb46a480-0xb46a5c8 (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0xb46a484 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `ld` at 0xb46a490 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb46a498 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb46a4a0 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb46a4b4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb46a4bc loads 4 bytes from [a0]:8 +0x810.
  The `lw` at 0xb46a4c4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xb46a4cc loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb46a4f4 loads 4 bytes from [a0]:8 +0x814.
  The `ld` at 0xb46a504 loads 8 bytes from [a0]:8 +0x4b60.
  The `lwc1` at 0xb46a52c loads 4 bytes from [a0]:8 +0xf30.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xb46a530, `lwc1` at 0xb46a538, `lwc1` at 0xb46a53c.
  The `lw` at 0xb46a554 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0xb46a568 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0xb46a570 loads 4 bytes from ?.
  The `lw` at 0xb46a57c loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0xb46a584 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `lw` at 0xb46a590 loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `sw` at 0xb46a5bc stores 4 bytes to ?.
  The `jalr` at 0xb46a51c calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-80.
  The `bne` branch at 0xb46a4ec targets 0xb46a504, is taken when (at(=[[a0]:8+2064]) & 0x2) != 0, and falls through when (at(=[[a0]:8+2064]) & 0x2) == 0.
  The `beq` branch at 0xb46a4fc targets 0xb46a5c0, is taken when (at(=[[a0]:8+2068]) & 0x800) == 0, and falls through when (at(=[[a0]:8+2068]) & 0x800) != 0.
  The `beq` branch at 0xb46a5c0 targets 0xb46a528 and is always taken.
  The return at 0xb46a5b8 has v0 = ?.

- `Fetch_8` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb46a5d0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb46a5d0-0xb46a678 (168 bytes).
  It occupies 168 bytes.
  The `ld` at 0xb46a5d0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb46a5d4 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb46a5d8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb46a5e4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb46a5f0 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb46a5f8 loads 4 bytes from [a0]:8 +0xe20.
  The `lbu` at 0xb46a600 loads 1 byte from ?.
  The `lw` at 0xb46a604 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `swc1` at 0xb46a620 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xb46a624 loads 4 bytes from [a0]:8 +0xe24.
  The `lw` at 0xb46a628 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `swc1` at 0xb46a644 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xb46a648 loads 4 bytes from [a0]:8 +0xe28.
  The `lw` at 0xb46a64c loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `swc1` at 0xb46a668 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xb46a66c loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `swc1` at 0xb46a674 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0xb46a670 has v0 = [a0+176].

- `Fetch_16` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb46a680 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb46a680-0xb46a734 (180 bytes).
  It occupies 180 bytes.
  The `ld` at 0xb46a680 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb46a684 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb46a688 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb46a694 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb46a69c loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb46a6b8 loads 4 bytes from [a0]:8 +0xe20.
  The `lhu` at 0xb46a6bc loads 2 bytes from ?.
  The `lw` at 0xb46a6c0 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `swc1` at 0xb46a6dc stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xb46a6e0 loads 4 bytes from [a0]:8 +0xe24.
  The `lw` at 0xb46a6e4 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `swc1` at 0xb46a700 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xb46a704 loads 4 bytes from [a0]:8 +0xe28.
  The `lw` at 0xb46a708 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `swc1` at 0xb46a724 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xb46a728 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `swc1` at 0xb46a730 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0xb46a72c has v0 = [a0+176].

- `Fetch_32` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb46a810 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb46a810-0xb46a8c4 (180 bytes).
  It occupies 180 bytes.
  The `ld` at 0xb46a810 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb46a814 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb46a818 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb46a824 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb46a82c loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb46a848 loads 4 bytes from [a0]:8 +0xe20.
  The `lw` at 0xb46a84c loads 4 bytes from ?.
  The `lw` at 0xb46a850 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `swc1` at 0xb46a86c stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xb46a870 loads 4 bytes from [a0]:8 +0xe24.
  The `lw` at 0xb46a874 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `swc1` at 0xb46a890 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xb46a894 loads 4 bytes from [a0]:8 +0xe28.
  The `lw` at 0xb46a898 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `swc1` at 0xb46a8b4 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xb46a8b8 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `swc1` at 0xb46a8c0 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0xb46a8bc has v0 = [a0+176].

- `__glOdysseyElementsInt_V3F` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4985f8 (n64).
  Streams a list of three-word vertices to one absolute address, 0x4000, four word writes per element.
  A0 is the element count and a1 points to an array of 32-bit indices. For each index (`lw` at 0xb49861c)
  the routine multiplies it by 0xc (set at 0xb498614), adds it to a2, and loads three consecutive words
  from there (`lw` at 0xb49862c, 0xb498630, 0xb498634), so a2 is the base of an array of 12-byte vertices.
  The four `sw` stores at 0xb498638 to 0xb498644 all target absolute 0x4000: first the constant
  0xffffffff8080cc03 (built at 0xb49860c and 0xb498610), then the three vertex words in order.
  The loop decrements a0 at the top of each pass (0xb498618) and the `bne` at 0xb498648 repeats while a0
  is nonzero, stepping a1 by 4 in its delay slot. The routine writes no return value to v0.
  Unknown: which register the writes to 0x4000 reach and what the leading word 0xffffffff8080cc03
  encodes; no linked row or datasheet excerpt covers that address, and the route is the datasheet for
  the window that contains it.
  Evidence grade: established.

- `glBlendColorEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499800 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499800-0xb49980c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499800 loads 8 bytes from abs 0x15d0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499804).

- `glBlendEquationEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49980c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb49980c-0xb499818 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb49980c loads 8 bytes from abs 0x15d8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499810).

- `glTexSubImage1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499824 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499824-0xb499830 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499824 loads 8 bytes from abs 0x15e8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499828).

- `glTexSubImage2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499830 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499830-0xb49983c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499830 loads 8 bytes from abs 0x15f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499834).

- `glConvolutionFilter1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49983c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb49983c-0xb499848 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb49983c loads 8 bytes from abs 0x15f8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499840).

- `glConvolutionFilter2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499848 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499848-0xb499854 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499848 loads 8 bytes from abs 0x1600.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb49984c).

- `glConvolutionParameterfEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499854 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499854-0xb499860 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499854 loads 8 bytes from abs 0x1608.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499858).

- `glConvolutionParameterfvEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499860 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499860-0xb49986c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499860 loads 8 bytes from abs 0x1610.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499864).

- `glConvolutionParameteriEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49986c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb49986c-0xb499878 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb49986c loads 8 bytes from abs 0x1618.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499870).

- `glConvolutionParameterivEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499878 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499878-0xb499884 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499878 loads 8 bytes from abs 0x1620.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb49987c).

- `glCopyConvolutionFilter1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499884 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499884-0xb499890 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499884 loads 8 bytes from abs 0x1628.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499888).

- `glCopyConvolutionFilter2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499890 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499890-0xb49989c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499890 loads 8 bytes from abs 0x1630.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499894).

- `glGetConvolutionFilterEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49989c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb49989c-0xb4998a8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb49989c loads 8 bytes from abs 0x1638.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4998a0).

- `glGetConvolutionParameterfvEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4998a8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4998a8-0xb4998b4 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4998a8 loads 8 bytes from abs 0x1640.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4998ac).

- `glGetConvolutionParameterivEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4998b4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4998b4-0xb4998c0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4998b4 loads 8 bytes from abs 0x1648.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4998b8).

- `glGetSeparableFilterEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4998c0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4998c0-0xb4998cc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4998c0 loads 8 bytes from abs 0x1650.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4998c4).

- `glSeparableFilter2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4998cc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4998cc-0xb4998d8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4998cc loads 8 bytes from abs 0x1658.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4998d0).

- `glGetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4998d8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4998d8-0xb4998e4 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4998d8 loads 8 bytes from abs 0x1660.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4998dc).

- `glGetHistogramParameterfvEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4998e4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4998e4-0xb4998f0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4998e4 loads 8 bytes from abs 0x1668.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4998e8).

- `glGetHistogramParameterivEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4998f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4998f0-0xb4998fc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4998f0 loads 8 bytes from abs 0x1670.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4998f4).

- `glGetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4998fc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4998fc-0xb499908 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4998fc loads 8 bytes from abs 0x1678.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499900).

- `glGetMinmaxParameterfvEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499908 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499908-0xb499914 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499908 loads 8 bytes from abs 0x1680.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb49990c).

- `glGetMinmaxParameterivEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499914 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499914-0xb499920 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499914 loads 8 bytes from abs 0x1688.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499918).

- `glHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499920 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499920-0xb49992c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499920 loads 8 bytes from abs 0x1690.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499924).

- `glMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49992c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb49992c-0xb499938 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb49992c loads 8 bytes from abs 0x1698.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499930).

- `glResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499938 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499938-0xb499944 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499938 loads 8 bytes from abs 0x16a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb49993c).

- `glResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499944 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499944-0xb499950 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499944 loads 8 bytes from abs 0x16a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499948).

- `glTexImage3DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499950 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499950-0xb49995c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499950 loads 8 bytes from abs 0x16b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499954).

- `glTexSubImage3DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49995c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb49995c-0xb499968 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb49995c loads 8 bytes from abs 0x16b8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499960).

- `glArrayElementEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499968 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499968-0xb499974 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499968 loads 8 bytes from abs 0x16c0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb49996c).

- `glDrawArraysEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499980 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499980-0xb49998c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499980 loads 8 bytes from abs 0x16d0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499984).

- `glGetPointervEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499998 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499998-0xb4999a4 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499998 loads 8 bytes from abs 0x16e0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb49999c).

- `glAreTexturesResident` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999d4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999d4-0xb4999e0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4999d4 loads 8 bytes from abs 0x1708.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999d8).

- `glAreTexturesResidentEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999d4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999d4-0xb4999e0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4999d4 loads 8 bytes from abs 0x1708.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999d8).

- `glBindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999e0-0xb4999ec (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4999e0 loads 8 bytes from abs 0x1710.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999e4).

- `glBindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999e0-0xb4999ec (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4999e0 loads 8 bytes from abs 0x1710.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999e4).

- `glDeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999ec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999ec-0xb4999f8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4999ec loads 8 bytes from abs 0x1718.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999f0).

- `glDeleteTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999ec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999ec-0xb4999f8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4999ec loads 8 bytes from abs 0x1718.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999f0).

- `glGenTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999f8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999f8-0xb499a04 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4999f8 loads 8 bytes from abs 0x1720.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999fc).

- `glGenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4999f8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4999f8-0xb499a04 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb4999f8 loads 8 bytes from abs 0x1720.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4999fc).

- `glIsTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499a04 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499a04-0xb499a10 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499a04 loads 8 bytes from abs 0x1728.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499a08).

- `glIsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499a04 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499a04-0xb499a10 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499a04 loads 8 bytes from abs 0x1728.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499a08).

- `glPrioritizeTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499a10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499a10-0xb499a1c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499a10 loads 8 bytes from abs 0x1730.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499a14).

- `glPrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499a10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499a10-0xb499a1c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499a10 loads 8 bytes from abs 0x1730.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499a14).

- `glCopyTexImage1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499a1c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499a1c-0xb499a28 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499a1c loads 8 bytes from abs 0x1738.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499a20).

- `glCopyTexImage2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499a28 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499a28-0xb499a34 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499a28 loads 8 bytes from abs 0x1740.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499a2c).

- `glCopyTexSubImage1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499a34 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499a34-0xb499a40 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499a34 loads 8 bytes from abs 0x1748.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499a38).

- `glCopyTexSubImage2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499a40 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499a40-0xb499a4c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499a40 loads 8 bytes from abs 0x1750.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499a44).

- `glCopyTexSubImage3DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499a4c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499a4c-0xb499a58 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499a4c loads 8 bytes from abs 0x1758.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499a50).

- `glColorTableSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499b48 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499b48-0xb499b54 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499b48 loads 8 bytes from abs 0x1800.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499b4c).

- `glColorTableParameterfvSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499b54 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499b54-0xb499b60 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499b54 loads 8 bytes from abs 0x1808.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499b58).

- `glColorTableParameterivSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499b60 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499b60-0xb499b6c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499b60 loads 8 bytes from abs 0x1810.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499b64).

- `glCopyColorTableSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499b6c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499b6c-0xb499b78 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499b6c loads 8 bytes from abs 0x1818.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499b70).

- `glGetColorTableSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499b78 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499b78-0xb499b84 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499b78 loads 8 bytes from abs 0x1820.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499b7c).

- `glGetColorTableParameterfvSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499b84 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499b84-0xb499b90 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499b84 loads 8 bytes from abs 0x1828.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499b88).

- `glGetColorTableParameterivSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499b90 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499b90-0xb499b9c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499b90 loads 8 bytes from abs 0x1830.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499b94).

- `glPointParameterfSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499c08 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499c08-0xb499c14 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499c08 loads 8 bytes from abs 0x1880.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499c0c).

- `glPointParameterfvSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499c14 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb499c14-0xb499c20 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xb499c14 loads 8 bytes from abs 0x1888.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb499c18).

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb499ec0

`__glOdyim_Vertex2d` (32 bytes) writes one integer word (0xb499ed0) and then two floats (0xb499ed4,
0xb499edc) to abs 0x4000. It has no loads and no calls. That is one word followed by two coordinates,
which fits a command word and two operands, but the facts do not name the word. The return value is not
visible in the facts.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49a0c0

`__glOdyim_Vertex3d` (40 bytes) writes one integer word (0xb49a0d4) and three floats (0xb49a0d8,
0xb49a0dc, 0xb49a0e4) to abs 0x4000. It has no loads and no calls. This is the Vertex2d layout with one
more coordinate. The return value is not visible in the facts.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49a1c0

`__glOdyim_Vertex3i` (52 bytes) writes four integer words to abs 0x4000 (0xb49a1e0, 0xb49a1e4,
0xb49a1e8 and one more). It has no loads and no calls. The count matches one word plus three operands,
the same layout as Vertex3d but with integer operands. The return value is not visible in the facts.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49a3c0

`__glOdyim_Vertex4i` (64 bytes) writes five integer words to abs 0x4000 (0xb49a3e8, 0xb49a3ec,
0xb49a3f0 and two more). It has no loads and no calls. That is one word plus four operands, the
Vertex3i layout extended by one. The return value is not visible in the facts.

Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_Vertex2f_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49a640 (n64).
  Starts from the entry floats `$f12` and `$f13` and, if they pass two float tests against the two
  records whose addresses are the doublewords at absolute 0x1038 and 0x1040, writes a constant word
  and the two floats to absolute 0x4000, and otherwise control leaves through a pointer from the
  second record.
  In turn, the 0x1038 record's word at +0x3c, plus `$f12` times its word at +0x30, plus `$f13` times
  its word at +0x34, forms a sum (a pair of multiply-add steps).
  Subsequently, the `swc1` at 0xb49a668 stores that sum, not the +0x3c word as loaded, to +0x8 of
  the 0x1040 record, after the old +0x8 word was loaded at 0xb49a658.
  Further on, the sum is multiplied by that old word, and the product is compared with its own
  absolute value (`c.ueq.s` at 0xb49a670); the `bc1f` at 0xb49a678 bails out to the path starting at
  0xb49a69c unless the two are equal or unordered, so it leaves when the product is negative.
  Then, the compare in the delay slot at 0xb49a67c, which runs on both paths, checks the absolute
  value of the sum against the word at +0x0 of the 0x1040 record (loaded at 0xb49a654); the `bc1t`
  at 0xb49a684 bails out to the register jump when the absolute sum is less than that word or
  unordered.
  Next, when both tests pass, the `sw` at 0xb49a68c writes 0xffffffff8080c801 to absolute 0x4000
  (0xffffffff80800000 built at 0xb49a680, 0xc801 ORed in at 0xb49a688 in the delay slot of the
  branch), the `swc1` at 0xb49a690 writes `$f12` there, and the `swc1` at 0xb49a698 in the delay
  slot of the return at 0xb49a694 writes `$f13`; the doubleword read from absolute 0x1038 is what
  the caller receives.
  The tail-jump path gets `t9` from +0x20 of the 0x1040 record at 0xb49a69c, clears `$f14`, and puts
  0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0xb49a6a8),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x4000 are one record, a header followed by the x and y
  words, on the grounds that they hit the same address and the second and third write the entry
  coordinates.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the device side of absolute 0x4000; no linked row covers it and the board windows begin
  at 0x110000; a reviewed board datasheet is the remaining route.
  Unknown: the entry point the `jr t9` at 0xb49a6a8 reaches; the destination waits on a trace of
  that jump.
  Evidence grade: inferred.

- `__glOdyim_Vertex3d_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49a9c0 (n64).
  Takes one vertex as three double-precision arguments, narrows them to single precision, and either
  writes them to the fixed address 0x4000 or tail-jumps to a handler pointer from the record at
  absolute 0x1040.
  Three multiply-adds build a sum in `f8` from the word at +0x3c of the record at absolute 0x1038
  (loaded at 0xb49a9d8) plus the narrowed `f12`, `f13` and `f14` times the words at +0x30, +0x34 and
  +0x38. The old word at +0x8 of the 0x1040 record (0xb49a9e8) is multiplied by that sum, and the
  `swc1` at 0xb49a9fc then overwrites +0x8 with the sum itself, on every path.
  The `bc1f` at 0xb49aa0c sends execution to the handler block at 0xb49aa34 when that product
  differs from its own absolute value, that is when it is negative. The `bc1t` at 0xb49aa18 sends it
  there when the absolute value of the sum is below the word at +0x0 of the 0x1040 record
  (0xb49a9e4) or the comparison is unordered.
  When both tests fall through, the `sw` at 0xb49aa20 stores 0xffffffff8080cc03 to absolute 0x4000
  (0xffffffff80800000 at 0xb49aa14 with 0xcc03 ORed in at 0xb49aa1c). The `swc1` stores at
  0xb49aa24, 0xb49aa28 and 0xb49aa30 (the last in the delay slot of the `jr ra` at 0xb49aa2c) then
  write the narrowed coordinates to the same address. The routine hands back the pointer it loaded
  from 0x1038 at 0xb49a9cc.
  The handler block loads `t9` from +0x20 of the 0x1040 record at 0xb49aa34, puts 0x3f800000 in `t0`
  (0xb49aa38) and jumps through `t9` at 0xb49aa3c, moving `t0` into `f15` in the delay slot.
  Inferred: the address 0x4000 takes the vertex as a port, since the command word and three
  coordinates go to it back to back with no pointer step between them.
  Unknown: the device register that the address 0x4000 stands for, since the only linked windows are
  0x110000 and 0x120000.
  Unknown: the handler reached through `t9` at 0xb49aa3c, whose pointer comes from the load at
  0xb49aa34 with no value in the bundle.
  Evidence grade: inferred.

- `__glOdyim_Vertex3dv_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49aa80 (n64).
  Reads three doubles from the array at `a0`, narrows them to single precision and, if two tests
  pass, writes them to the fixed address 0x4000; otherwise it tail-jumps through a pointer in the
  record at absolute 0x1040.
  The doubles at +0x0, +0x8 and +0x10 of `a0` go into `f12` to `f14` (0xb49aa80, 0xb49aa88,
  0xb49aa90), each narrowed straight after its load. The words at absolute 0x1038 and 0x1040 are
  then read into `v0` and `v1` (0xb49aa98, 0xb49aa9c).
  Three multiply-adds make `f8`: the word at +0x3c of the 0x1038 record (0xb49aaa4) plus each
  coordinate times the word at +0x30, +0x34 or +0x38. After the old +0x8 word of the 0x1040 record
  (0xb49aab4) has been multiplied by that sum, the `swc1` at 0xb49aac8 replaces it with the sum.
  Taken branches go to the handler block at 0xb49ab00: the `bc1f` at 0xb49aad8 when the product is
  negative (it differs from its absolute value), and the `bc1t` at 0xb49aae4 when the sum's absolute
  value is below the +0x0 word of the 0x1040 record (0xb49aab0) or unordered with it.
  On the write path the `sw` at 0xb49aaec stores 0xffffffff8080cc03 to 0x4000 (0xffffffff80800000
  from 0xb49aae0 plus 0xcc03 ORed in at 0xb49aae8), followed by `f12` and `f13` (0xb49aaf0,
  0xb49aaf4) and `f14` in the delay slot of the `jr ra` at 0xb49aaf8. The return value is the
  pointer loaded from 0x1038.
  The handler block loads `t9` from +0x20 of the 0x1040 record (0xb49ab00), sets `t0` to 0x3f800000
  (0xb49ab04) and jumps through `t9` at 0xb49ab08; the delay slot moves `t0` to `f15`.
  Inferred: the address 0x4000 receives the vertex as a port, because the command word and the three
  coordinates are stored there in one run.
  Unknown: the register or port at the address 0x4000; the machine's address map would settle it.
  Unknown: which routine the indirect jump at 0xb49ab08 enters; the word fetched at 0xb49ab00 is not
  resolved in the bundle.
  Evidence grade: inferred.

- `__glOdyim_Vertex3i_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49ac80 (n64).
  Takes a vertex as three 32-bit integers in `a0`, `a1` and `a2`, tests a float conversion of it,
  and then either writes the raw integers to the fixed address 0x4000 or tail-jumps through a
  pointer in the record at absolute 0x1040.
  The integers are moved into floating-point registers and converted to single precision in `f12` to
  `f14` for the tests only; the stores later use the original integer registers.
  A sum in `f8` is built from the word at +0x3c of the 0x1038 record (0xb49aca4), plus the converted
  values times the words at +0x30, +0x34 and +0x38. The `swc1` at 0xb49acc8 puts the sum into +0x8
  of the 0x1040 record after the old +0x8 word (0xb49acb4) has been multiplied by it.
  The `bc1f` at 0xb49acd8 jumps to the handler block at 0xb49ad00 when that product is negative; the
  `bc1t` at 0xb49ace4 jumps there when the absolute value of the sum is below the +0x0 word of the
  0x1040 record (0xb49acb0) or unordered.
  On the write path the `sw` at 0xb49acec stores 0xffffffff8080cc02, formed from 0xffffffff80800000
  at 0xb49ace0 and 0xcc02 ORed in at 0xb49ace8, to 0x4000. The `sw` instructions at 0xb49acf0 and
  0xb49acf4 write `a0` and `a1`, and the one at 0xb49acfc in the delay slot of the `jr ra` at
  0xb49acf8 writes `a2`. The return value is the pointer loaded from 0x1038 at 0xb49ac98.
  The handler block loads `t9` from +0x20 of the 0x1040 record (0xb49ad00), sets `t0` to 0x3f800000
  (0xb49ad04) and jumps through `t9` at 0xb49ad08, with `mtc1 t0,$f15` in the delay slot.
  Inferred: 0x4000 is a write port taking this vertex as one command word and three integer words,
  because they are stored back to back; the command word here is the constant stored by the `sw` at
  0xb49acec.
  Unknown: the hardware block behind the address 0x4000; the bundle's mmio rows stop at the windows
  0x110000 and 0x120000.
  Unknown: what code follows the `jr t9` at 0xb49ad08, given that the field loaded at 0xb49ad00 is
  absent from the bundle.
  Evidence grade: inferred.

- `__glOdyim_Vertex3iv_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49ad40 (n64).
  Runs bound checks on an integer vertex of three 32-bit words against two float bounds, then either
  writes a four-word packet to the fixed address 0x4000 and returns, or tail-jumps through a
  pointer.
  The three words at a0 (`lw` at 0xb49ad40, 0xb49ad44 and 0xb49ad48) also get a single-precision
  copy; the integer originals go to the packet.
  The doublewords at abs 0x1038 and 0x1040 (`ld` at 0xb49ad64 and 0xb49ad68) become base pointers. A
  value w is the float at +0x3c of the first block plus the converted words times the floats at
  +0x30, +0x34 and +0x38 (loads at 0xb49ad6c to 0xb49ad78). The `swc1` at 0xb49ad94 puts w at +0x8
  of the second block after the old float there was loaded at 0xb49ad80; the second block
  contributes its +0x0 float through the load at 0xb49ad7c.
  The `bc1f` at 0xb49ada4 exits to the tail jump when the absolute value of the product of w and the
  old +0x8 float is ordered and unequal to the product, in other words for a negative product. The
  `c.ult.s` in its delay slot at 0xb49ada8 sets the flag for the `bc1t` at 0xb49adb0, which jumps to
  the tail when the absolute value of w is less than, or unordered with, the float from +0x0 of the
  second block.
  With both tests passed, the `sw` at 0xb49adb8 writes the constant 0xffffffff8080cc02 (immediate
  0x8080 at 0xb49adac, `ori` of 0xcc02 in the delay slot at 0xb49adb4) to 0x4000. The `sw` at
  0xb49adbc and 0xb49adc0 emit the first two integers untouched and the delay slot of the `jr ra` at
  0xb49adc4 writes the third; v0 comes back as the doubleword at 0x1038.
  On the tail path t9 is read by the `ld` at 0xb49adcc from +0x20 of the block addressed by the
  doubleword at 0x1040 and jumps through the `jr t9` at 0xb49add4; the delay slot sets $f15 to
  0x3f800000.
  Unknown: the destination of the `jr t9` at 0xb49add4, because the pointer at +0x20 is read from
  memory the bundle does not resolve.
  Unknown: the fields of the blocks addressed by the doublewords at 0x1038 and 0x1040, because the
  layout appears only as the offsets above.
  Evidence grade: established.

- `__glOdyim_Vertex2f_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49b6c0 (n64).
  Takes the entry floats `$f12` and `$f13` and, if they pass three float tests against the two
  records whose addresses are the doublewords at absolute 0x1038 and 0x1040, writes a constant word
  and the two floats to absolute 0x4000, and otherwise it tail-jumps through a pointer held in the
  second record.
  Next, it computes a sum from the 0x1038 record: the word at +0x3c, plus `$f12` times the word at
  +0x30, plus `$f13` times the word at +0x34 (two multiply-adds).
  After that, the `swc1` at 0xb49b6e8 writes that sum, not the +0x3c word as loaded, to +0x8 of the
  0x1040 record, after the old +0x8 word has been read at 0xb49b6d8.
  From there, the sum is multiplied by that old word and by the +0x4 word of the 0x1040 record
  (loaded at 0xb49b6d4), and each product is then replaced by its absolute value.
  Following that, the `bc1f` at 0xb49b700 leaves for the path starting at 0xb49b758 unless the first
  product equals its own absolute value or the pair is unordered (`c.ueq.s` at 0xb49b6f8), that is,
  whenever that product is below zero.
  Beyond that, two more tests build a value from the 0x1038 record as the word at +0xc plus `$f12`
  times +0x0 plus `$f13` times +0x4, then the same with +0x1c, +0x10 and +0x14; each result is made
  absolute, and the `bc1t` at 0xb49b720 and at 0xb49b740 leaves for that path when the second
  product is less than that value or unordered (`c.ult.s` at 0xb49b718 and 0xb49b738).
  At this stage, with all three tests passed, the `sw` at 0xb49b748 writes 0xffffffff8080c801 to
  absolute 0x4000 (0xffffffff80800000 built at 0xb49b73c, 0xc801 ORed in at 0xb49b744), the `swc1`
  at 0xb49b74c writes `$f12` to the same address, and the `swc1` at 0xb49b754 in the delay slot of
  the return at 0xb49b750 writes `$f13`; the return value is the doubleword read from absolute
  0x1038.
  The tail-jump path loads `t9` from +0x20 of the 0x1040 record at 0xb49b758, clears `$f14`, and
  puts 0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0xb49b764),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x4000 are one record, a header word followed by the two
  coordinates, because they hit the same address and the second and third write the entry
  coordinates.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the board-side result of the stores to absolute 0x4000, since no linked row names that
  address and the linked board windows start at 0x110000; a reviewed datasheet would settle it.
  Unknown: where the `jr t9` at 0xb49b764 lands; a runtime trace of that jump would name it.
  Evidence grade: inferred.

- `__glOdyim_Vertex2fv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49b780 (n64).
  Reads two floats from `a0` +0x0 and +0x4 into `$f12` and `$f13` (the `lwc1` at 0xb49b780 and
  0xb49b784) and, when they clear three float tests against the records at absolute 0x1038 and
  0x1040, emits a constant word and both floats to absolute 0x4000, and if a test fails it jumps
  through a pointer held in the second record.
  After that, it forms a sum from the 0x1038 record: the word at +0x3c, plus `$f12` times the word
  at +0x30, plus `$f13` times the word at +0x34 (two multiply-adds).
  From there, the `swc1` at 0xb49b7b0 stores that sum, not the +0x3c word as loaded, to +0x8 of the
  0x1040 record, once the old +0x8 word was loaded at 0xb49b7a0.
  Following that, the sum is multiplied by that old word and by the +0x4 word of the 0x1040 record
  (loaded at 0xb49b79c), and each product is then replaced by its absolute value.
  Beyond that, the `bc1f` at 0xb49b7c8 jumps to the tail path that starts at 0xb49b820 unless the first product
  equals its own absolute value or the pair is unordered (`c.ueq.s` at 0xb49b7c0), that is, whenever
  that product is below zero.
  At this stage, two more tests build a value from the 0x1038 record as the word at +0xc plus `$f12`
  times +0x0 plus `$f13` times +0x4, then the same with +0x1c, +0x10 and +0x14; each is reduced to
  an absolute value, and the `bc1t` at 0xb49b7e8 and at 0xb49b808 jumps to the indirect jump when
  the second product is less than that value or unordered (`c.ult.s` at 0xb49b7e0 and 0xb49b800).
  In turn, once every test passes, the `sw` at 0xb49b810 writes 0xffffffff8080c801 to absolute
  0x4000 (0xffffffff80800000 built at 0xb49b804, 0xc801 ORed in at 0xb49b80c), the `swc1` at
  0xb49b814 follows with `$f12`, and the `swc1` at 0xb49b81c, in the delay slot of the return at
  0xb49b818, writes `$f13`; it returns the doubleword read from absolute 0x1038.
  The tail-jump path reads `t9` from +0x20 of the 0x1040 record at 0xb49b820, clears `$f14`, and
  puts 0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0xb49b82c),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x4000 are one record, one header word and then the two
  coordinates, since they hit the same address and the second and third write the entry coordinates.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the device-side result of the writes to absolute 0x4000; no linked row names it and the
  linked board windows start at 0x110000; only a datasheet entry for that address would answer it.
  Unknown: the destination of the `jr t9` at 0xb49b82c; only a run that records the jump would name
  the target.
  Evidence grade: inferred.

- `__glOdyim_Vertex2i_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49b840 (n64).
  Turns the integers in `a0` and `a1` into single-precision floats in `$f12` and `$f13` (two moves
  to the floating-point unit, then two word-to-single conversions) and, if those floats pass three
  tests against the records at absolute 0x1038 and 0x1040, writes a header word and the two original
  integers to absolute 0x4000, and any failure takes a pointer from the second record and jumps
  through it.
  Following that, it forms a sum from the 0x1038 record: the word at +0x3c, plus `$f12` times the
  word at +0x30, plus `$f13` times the word at +0x34 (a pair of multiply-add steps).
  Beyond that, the `swc1` at 0xb49b878 stores that sum, not the +0x3c word as loaded, to +0x8 of the
  0x1040 record, once the old +0x8 word has been read at 0xb49b868.
  At this stage, the sum is multiplied by that old word and by the +0x4 word of the 0x1040 record
  (loaded at 0xb49b864), and both products are reduced to absolute values.
  In turn, the `bc1f` at 0xb49b890 exits to the tail path that starts at 0xb49b8e8 unless the first product
  equals its own absolute value or the pair is unordered (`c.ueq.s` at 0xb49b888), so it leaves when
  that product is negative.
  Subsequently, two more tests build a value from the 0x1038 record as the word at +0xc plus `$f12`
  times +0x0 plus `$f13` times +0x4, then the same with +0x1c, +0x10 and +0x14; each is reduced to
  an absolute value, and the `bc1t` at 0xb49b8b0 and at 0xb49b8d0 exits to the tail call when the
  second product is less than that value or unordered (`c.ult.s` at 0xb49b8a8 and 0xb49b8c8).
  Further on, with the tests passed, the `sw` at 0xb49b8d8 writes 0xffffffff8080c800 to absolute
  0x4000 (0xffffffff80800000 built at 0xb49b8cc, 0xc800 ORed in at 0xb49b8d4), the `sw` at 0xb49b8dc
  writes `a0` as it came in, and the `sw` at 0xb49b8e4 in the delay slot of the return at 0xb49b8e0
  writes `a1` as it came in; the value returned is the doubleword read from absolute 0x1038.
  The tail-jump path pulls `t9` from +0x20 of the 0x1040 record at 0xb49b8e8, clears `$f14`, and
  puts 0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0xb49b8f4),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x4000 are one record, the header word first, then both
  coordinates, given that they hit the same address and the second and third write the incoming
  coordinates.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): how absolute 0x4000 is seen on the board side; the linked rows begin at 0x110000 and none
  names it; the route is a datasheet line naming the address.
  Unknown: which routine the `jr t9` at 0xb49b8f4 enters; tracing the jump at run time is the route.
  Evidence grade: inferred.

- `__glOdyim_Vertex2iv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49b900 (n64).
  Reads two 32-bit words from a0 (`lw` at 0xb49b900 and 0xb49b904) and, if three float tests pass, writes them
  to abs 0x4000 behind a constant header word. A failing test instead makes a tail call through a pointer held
  in the record at the doubleword abs 0x1040. Before the two record pointers are loaded (`ld` at 0xb49b918 and
  0xb49b91c), both words are converted to single precision into f12 and f13. The first sum is the word at +0x3c
  of the record at the doubleword abs 0x1038, plus the converted words times the words at +0x30 and +0x34
  (`lwc1` at 0xb49b920 to 0xb49b928). The `swc1` at 0xb49b940 stores that sum to +0x8 of the record at abs
  0x1040, after the old +0x8 word was loaded at 0xb49b930. The first test (`c.ueq.s` at 0xb49b950, `bc1f` at
  0xb49b958) leaves for the tail path when the product of the new sum and the old +0x8 word is negative. The
  second and third tests scale the sum by the word at +0x4 of the second record (`lwc1` at 0xb49b92c) and
  compare its absolute value with the absolute value of a sum built from +0xc, +0x0 and +0x4 of the first
  record, then of one built from +0x1c, +0x10 and +0x14; the `bc1t` at 0xb49b978 and 0xb49b998 leave when the
  scaled value is below that sum or unordered with it (`c.ult.s` at 0xb49b970 and 0xb49b990). When none leaves,
  the `sw` at 0xb49b9a0 writes the constant 0xffffffff8080c800 (0x8080 at 0xb49b994, `ori` of 0xc800 at
  0xb49b99c) to abs 0x4000. After that the `sw` at 0xb49b9a4 writes the word from a0+0 and the `sw` at
  0xb49b9ac, in the delay slot of the `jr ra` at 0xb49b9a8, writes the word from a0+4. The return value v0 is
  the doubleword loaded from abs 0x1038. On the tail path the `ld` at 0xb49b9b0 loads t9 from +0x20 of the
  second record; a4 and a5 still hold the two words, f12 and f13 the converted ones, and the delay slot of the
  `jr t9` at 0xb49b9bc moves t0 (0x3f800000, set at 0xb49b9b8) into f15. Unknown: the target of the `jr t9` at
  0xb49b9bc, which is the doubleword at +0x20 of the second record, and a run-time read of it would settle it.
  Unknown: the device-side result of the writes to abs 0x4000, since the bundle has no linked register row or
  datasheet excerpt for that address.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x4000 board +0x120000.
  Evidence grade: established.

- `__glOdyim_Vertex2sv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49bac0 (n64).
  Loads two sign-extended halfwords from a0 (`lh` at 0xb49bac0 and 0xb49bac4) and, if three float tests pass,
  writes them to abs 0x4000 behind a constant header word. A failed test sends control by tail call through a
  pointer held in the record at the doubleword abs 0x1040. Before the record pointers are loaded (`ld` at
  0xb49bad8 and 0xb49badc), both halfwords are converted to single precision into f12 and f13. The first sum is
  the word at +0x3c of the record at the doubleword abs 0x1038, plus the converted values times the words at
  +0x30 and +0x34 (`lwc1` at 0xb49bae0 to 0xb49bae8). The `swc1` at 0xb49bb00 stores that sum to +0x8 of the
  record at abs 0x1040, after the old +0x8 word was loaded at 0xb49baf0. The first test (`c.ueq.s` at 0xb49bb10,
  `bc1f` at 0xb49bb18) leaves for the tail path when the product of the new sum and the old +0x8 word is
  negative. The second and third tests scale the sum by the word at +0x4 of the second record (`lwc1` at
  0xb49baec) and compare its absolute value with the absolute value of a sum built from +0xc, +0x0 and +0x4 of
  the first record, then of one built from +0x1c, +0x10 and +0x14; the `bc1t` at 0xb49bb38 and 0xb49bb58 leave
  when the scaled value is below that sum or unordered with it (`c.ult.s` at 0xb49bb30 and 0xb49bb50). When none
  leaves, the `sw` at 0xb49bb60 writes the constant 0xffffffff8080c800 (0x8080 at 0xb49bb54, `ori` of 0xc800 at
  0xb49bb5c) to abs 0x4000. After that the `sw` at 0xb49bb64 writes the halfword from a0+0 and the `sw` at
  0xb49bb6c, in the delay slot of the `jr ra` at 0xb49bb68, writes the halfword from a0+2. The routine returns
  the doubleword that was loaded from abs 0x1038 in v0. On the tail path the `ld` at 0xb49bb70 loads t9 from
  +0x20 of the second record; a4 and a5 still hold the two halfwords, f12 and f13 the converted ones, and the
  delay slot of the `jr t9` at 0xb49bb7c moves t0 (0x3f800000, set at 0xb49bb78) into f15. Unknown: the address
  reached through the `jr t9` at 0xb49bb7c, which is the doubleword at +0x20 of the second record, and a
  run-time read of it would settle it. Unknown: the hardware-side result of the writes to abs 0x4000, since the
  bundle has no linked register row or datasheet excerpt for that address.
  Evidence grade: established.

- `__glOdyim_Vertex3d_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49bbc0 (n64).
  Accepts three double-precision arguments in f12 to f14 and narrows each to single precision in place and,
  provided three float tests pass, writes them to abs 0x4000 behind a constant header word. Any test that fails
  diverts to a tail call through a pointer kept in the second record, whose address is the doubleword at abs
  0x1040. The record pointers are loaded by the `ld` at 0xb49bbcc and 0xb49bbd0. The first sum is the word at
  +0x3c of the record at the doubleword abs 0x1038, plus the three narrowed values times the words at +0x30,
  +0x34 and +0x38 (`lwc1` at 0xb49bbd4 to 0xb49bbe0). The `swc1` at 0xb49bbfc stores that sum to +0x8 of the
  record at abs 0x1040, after the old +0x8 word was loaded into f7 at 0xb49bbe8. The first test (`c.ueq.s` at
  0xb49bc0c, `bc1f` at 0xb49bc14) leaves for the tail path at 0xb49bc80 when the product of the new sum and the
  old +0x8 word is negative. The second and third tests scale the sum by the word at +0x4 of the second record
  (`lwc1` at 0xb49bbe4) and compare its absolute value with the absolute value of a sum built from +0xc, +0x0,
  +0x4 and +0x8 of the first record, then of one built from +0x1c, +0x10, +0x14 and +0x18; the `bc1t` at
  0xb49bc3c and 0xb49bc64 leave when the scaled value is below that sum or unordered with it (`c.ult.s` at
  0xb49bc34 and 0xb49bc5c). When none leaves, the `sw` at 0xb49bc6c writes the constant 0xffffffff8080cc03
  (0x8080 at 0xb49bc60, `ori` of 0xcc03 at 0xb49bc68) to abs 0x4000, then the `swc1`s at 0xb49bc70, 0xb49bc74
  and 0xb49bc7c write the narrowed f12, f13 and f14, the last in the delay slot of the `jr ra` at 0xb49bc78. v0
  comes back as the doubleword taken from abs 0x1038. On the tail path the `ld` at 0xb49bc80 loads t9 from +0x20
  of the second record, f12 to f14 hold the narrowed values, and the delay slot of the `jr t9` at 0xb49bc88
  moves t0 (0x3f800000, set at 0xb49bc84) into f15. Unknown: the destination of the `jr t9` at 0xb49bc88, loaded
  from +0x20 of the second record, whose value a run-time read would settle. Unknown: the device-side outcome of
  the writes to abs 0x4000, because neither a linked register row nor a datasheet excerpt covers that address.
  Evidence grade: established.

- `__glOdyim_Vertex3fv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49bec0 (n64).
  Takes a pointer to three floats in `a0` and writes that vertex to the fixed address 0x4000 only if
  it passes three tests built from the records at absolute 0x1038 and 0x1040; any failed test makes
  it tail-jump through a pointer in the 0x1040 record instead.
  The floats at +0x0, +0x4 and +0x8 of `a0` go into `f12` to `f14` (0xb49bec0, 0xb49bec4,
  0xb49bec8). Then `v0` takes the pointer stored at absolute 0x1038 and `v1` the one at absolute
  0x1040 (0xb49becc, 0xb49bed0).
  Three multiply-adds make a sum in `f8` from the word at +0x3c of the 0x1038 record (0xb49bed8) and
  the coordinates times the words at +0x30, +0x34 and +0x38. The old word at +0x8 of the 0x1040
  record (0xb49bee8) is multiplied by that sum, and the `swc1` at 0xb49befc replaces it with the
  sum. The sum is also multiplied by the word at +0x4 of the 0x1040 record (0xb49bee4) and its
  absolute value kept as the bound for the next two tests.
  The first test, the `bc1f` at 0xb49bf14, goes to the handler block at 0xb49bf80 when the sum times
  the old +0x8 word is negative. The second and third tests each form a distance from four words of
  the 0x1038 record: the word at +0xc plus the coordinates times the words at +0x0, +0x4 and +0x8
  for the first, and the word at +0x1c plus the coordinates times the words at +0x10, +0x14 and
  +0x18 for the second. The `bc1t` at 0xb49bf3c and the one at 0xb49bf64 go to the handler block
  when the bound is less than the absolute value of that distance, or the compare is unordered.
  With all three passed, the `sw` at 0xb49bf6c stores 0xffffffff8080cc03 to 0x4000
  (0xffffffff80800000 from 0xb49bf60 and 0xcc03 ORed in at 0xb49bf68), `f12` and `f13` follow at
  0xb49bf70 and 0xb49bf74, and `f14` goes in the delay slot of the `jr ra` at 0xb49bf78. The return
  value is the pointer read from 0x1038.
  The handler block loads `t9` from +0x20 of the 0x1040 record (0xb49bf80), sets `t0` to 0x3f800000
  (0xb49bf84) and jumps via `t9` at 0xb49bf88, copying `t0` into `f15` in the delay slot.
  Inferred: the two distance tests read as plane checks against the 0x1038 record, because each
  combines three coordinate multiplies with a fourth additive word; the bundle holds no name for
  those planes.
  Unknown: which block owns the address 0x4000, since no linked row maps it.
  Unknown: the routine called by the final jump at 0xb49bf88; its address is the +0x20 field fetched
  at 0xb49bf80 and that field has no value in the bundle.
  Evidence grade: inferred.

- `__glOdyim_Vertex3i_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49bfc0 (n64).
  Takes a vertex as three 32-bit integers in `a0`, `a1` and `a2`, and writes the raw integers to the
  fixed address 0x4000 only if float conversions of them pass a sign test and two distance tests;
  otherwise it tail-jumps through a pointer from the record at absolute 0x1040.
  The integers are converted to single precision in `f12` to `f14` for the tests only, while the
  stores use the original integer registers. The pointers at absolute 0x1038 and 0x1040 load into
  `v0` and `v1` (0xb49bfd8, 0xb49bfdc).
  A sum in `f8` starts at the word at +0x3c of the 0x1038 record (0xb49bfe4) and adds each converted
  value times the words at +0x30, +0x34 and +0x38. The old +0x8 word of the 0x1040 record
  (0xb49bff4) is multiplied by it, then the `swc1` at 0xb49c008 overwrites +0x8 with the sum. The
  sum times the word at +0x4 of the 0x1040 record (0xb49bff0) gives a bound, kept as an absolute
  value.
  The `bc1f` at 0xb49c020 leaves for the handler block at 0xb49c08c when the first product is
  negative. Two distances follow: the word at +0xc plus the values times the words at +0x0, +0x4 and
  +0x8, and the word at +0x1c plus the values times the words at +0x10, +0x14 and +0x18, both of the
  0x1038 record. The `bc1t` at 0xb49c048 and the one at 0xb49c070 leave when the bound is less than
  the distance's absolute value, or the compare is unordered.
  The write path stores 0xffffffff8080cc02 with the `sw` at 0xb49c078 (0xffffffff80800000 at
  0xb49c06c, 0xcc02 ORed in at 0xb49c074), then `a0` at 0xb49c07c, `a1` at 0xb49c080 and `a2` in the
  delay slot of the `jr ra` at 0xb49c084, all to 0x4000. The return value is the pointer read from
  0x1038 at 0xb49bfd8.
  The handler block loads `t9` from +0x20 of the 0x1040 record (0xb49c08c), puts 0x3f800000 in `t0`
  (0xb49c090) and jumps through `t9` at 0xb49c094, with `t0` moved to `f15` in the delay slot.
  Inferred: the second and third tests are plane checks, since each is a sum of three coordinate
  products plus one word; the bundle does not name the planes.
  Unknown: the target register of the stores to the address 0x4000, as the datasheet excerpts do not
  mention it.
  Unknown: the continuation after 0xb49c094, whose pointer arrives from the load at 0xb49c08c and
  cannot be followed here.
  Evidence grade: inferred.

- `__glOdyim_Vertex3iv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49c0c0 (n64).
  Tests a vertex given as three 32-bit integers against float bounds, then either writes a four-word
  packet to the fixed address 0x4000 and returns, or tail-jumps through a pointer.
  The three words at a0 (`lw` at 0xb49c0c0, 0xb49c0c4 and 0xb49c0c8) are also converted to single
  precision; the integer originals are what get stored.
  The doublewords at abs 0x1038 and 0x1040 (`ld` at 0xb49c0e4 and 0xb49c0e8) serve as base pointers.
  A scalar w is the float at +0x3c of the first block plus the converted words times the floats at
  +0x30, +0x34 and +0x38 (loads at 0xb49c0ec to 0xb49c0f8), and the `swc1` at 0xb49c114 writes w to
  +0x8 of the second block after the old float there was loaded at 0xb49c100.
  The `bc1f` at 0xb49c12c leaves for the tail jump when the absolute value of the product of w and
  that old +0x8 float is ordered and unequal to the product, that is, when the product is negative.
  The bound is the absolute value of w times the float at +0x4 of the second block (loaded at
  0xb49c0fc). The `bc1t` at 0xb49c154 and the one at 0xb49c17c each jump to the tail when that bound
  is less than, or unordered with, the absolute value of a plane sum: the float at +0xc plus the
  converted words times the floats at +0x0, +0x4 and +0x8 for the first, and the float at +0x1c plus
  the converted words times the floats at +0x10, +0x14 and +0x18 for the second.
  When all three tests fall through, the `sw` at 0xb49c184 writes the constant 0xffffffff8080cc02
  (immediate 0x8080 at 0xb49c178, `ori` of 0xcc02 at 0xb49c180) to 0x4000. The `sw` at 0xb49c188 and
  0xb49c18c write the first two integers back unchanged and the delay slot of the `jr ra` at
  0xb49c190 writes the third; v0 on return is the doubleword at 0x1038.
  The tail route loads t9 with the `ld` at 0xb49c198 from +0x20 of the block addressed by the
  doubleword at 0x1040 and jumps through the `jr t9` at 0xb49c1a0 with a0 to a3 as at entry and a4
  to a6 holding the three integers; its delay slot loads $f15 with 0x3f800000.
  Unknown: the routine reached through the `jr t9` at 0xb49c1a0, because the pointer at +0x20 is
  read from memory the bundle does not resolve.
  Unknown: the content of the blocks addressed by the doublewords at 0x1038 and 0x1040, because
  their layout is visible only through the offsets above.
  Evidence grade: established.

- `__glOdyim_Vertex3sv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49c2c0 (n64).
  Filters a vertex of three signed 16-bit values against float bounds, then either writes a four-
  word packet to the fixed address 0x4000 and returns, or tail-jumps through a pointer.
  The halfwords at a0 (`lh` at 0xb49c2c0, 0xb49c2c4 and 0xb49c2c8, sign-extended) are additionally
  narrowed or converted to floats; each is stored later as a full word.
  The doublewords at abs 0x1038 and 0x1040 (`ld` at 0xb49c2e4 and 0xb49c2e8) are taken as base
  pointers. The value w is the float at +0x3c of the first block plus the converted values times the
  floats at +0x30, +0x34 and +0x38 (loads at 0xb49c2ec to 0xb49c2f8), and the `swc1` at 0xb49c314
  deposits w in +0x8 of the second block after the old float there was loaded at 0xb49c300.
  The `bc1f` at 0xb49c32c sends control to the tail jump when the absolute value of the product of w
  and that old float is ordered and unequal to the product, that is, for a product below zero.
  The reference value is the absolute value of w times the float at +0x4 of the second block (loaded
  at 0xb49c2fc). The `bc1t` at 0xb49c354 and the one at 0xb49c37c both divert to the tail if that
  bound is below, or unordered with, the absolute value of a plane sum: the float at +0xc plus the
  converted values times the floats at +0x0, +0x4 and +0x8 for the first, and the float at +0x1c
  plus the converted values times the floats at +0x10, +0x14 and +0x18 for the second.
  When all three tests fall through, the `sw` at 0xb49c384 writes the constant 0xffffffff8080cc02 to
  0x4000 (immediate 0x8080 at 0xb49c378, `ori` of 0xcc02 at 0xb49c380, which runs on both paths of
  the branch at 0xb49c37c). The `sw` at 0xb49c388 and 0xb49c38c then write the first two sign-
  extended values as words and the delay slot of the `jr ra` at 0xb49c390 writes the third; the
  return leaves v0 holding the doubleword at 0x1038.
  The other route fetches t9 with the `ld` at 0xb49c398 from +0x20 of the block addressed by the
  doubleword at 0x1040 and jumps through the `jr t9` at 0xb49c3a0; in the delay slot $f15 receives
  0x3f800000.
  Unknown: the target reached by the `jr t9` at 0xb49c3a0, because the pointer at +0x20 is read from
  memory the bundle does not resolve.
  Unknown: the stored values of the blocks addressed by the doublewords at 0x1038 and 0x1040,
  because nothing but the offsets above reveals the layout.
  Evidence grade: established.

- `__glOdyim_Vertex4f_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49c5c0 (n64).
  Vets a vertex whose four floats arrive in $f12 to $f15 against float bounds, then either writes a
  five-word packet to the fixed address 0x4000 and returns, or tail-jumps through a pointer.
  The doublewords at abs 0x1038 and 0x1040 (`ld` at 0xb49c5c0 and 0xb49c5c4) provide base pointers.
  A single float w is the four argument floats times the floats at +0x30, +0x34, +0x38 and +0x3c of
  the first block (loads at 0xb49c5c8 to 0xb49c5d4), and the `swc1` at 0xb49c5f4 copies w to +0x8 of
  the second block after the old float there was loaded at 0xb49c5ec.
  The `bc1f` at 0xb49c60c diverts to the tail jump when the absolute value of the product of w and
  that old float is ordered and unequal to the product, meaning the product is below zero.
  The comparison limit is the absolute value of the float at +0x4 of the second block (loaded at
  0xb49c5d8) times w. The `bc1t` at 0xb49c638 and the one at 0xb49c664 each send control to the tail
  when that bound is under, or unordered with, the absolute value of a plane sum: the four floats
  times the floats at +0x0, +0x4, +0x8 and +0xc for the first, and times the floats at +0x10, +0x14,
  +0x18 and +0x1c for the second.
  With every test passed, the `sw` at 0xb49c66c writes the constant 0xffffffff8080d005 (immediate
  0x8080 at 0xb49c660, `ori` of 0xd005 in the delay slot at 0xb49c668) to 0x4000. The `swc1` at
  0xb49c670, 0xb49c674, 0xb49c678 and 0xb49c680 commit $f12 to $f15 unchanged; the final write rides
  in the delay slot of the `jr ra` at 0xb49c67c, and the result left in v0 is the doubleword at
  0x1038.
  On the exit route t9 is fetched with the `ld` at 0xb49c684 from +0x20 of the block addressed by
  the doubleword at 0x1040 and jumps through the `jr t9` at 0xb49c688 with a0 to a3 and the argument
  floats as at entry.
  Unknown: the routine jumped to by the `jr t9` at 0xb49c688, because the pointer at +0x20 is read
  from memory the bundle does not resolve.
  Unknown: the record layout of the blocks addressed by the doublewords at 0x1038 and 0x1040,
  because the bundle gives their layout only as the offsets above.
  Evidence grade: established.

- `__glOdyim_Vertex4fv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49c6c0 (n64).
  Probes a vertex of four floats read from the array at a0 against float bounds, then either writes
  a five-word packet to the fixed address 0x4000 and returns, or tail-jumps through a pointer.
  The four floats at a0, +0x0, +0x4, +0x8 and +0xc, are placed in $f12 to $f15 (`lwc1` at 0xb49c6c0
  to 0xb49c6cc). The doublewords at abs 0x1038 and 0x1040 (`ld` at 0xb49c6d0 and 0xb49c6d4) work as
  base pointers.
  The quantity w is the four floats times the floats at +0x30, +0x34, +0x38 and +0x3c of the first
  block (loads at 0xb49c6d8 to 0xb49c6e4), and the `swc1` at 0xb49c704 leaves w at +0x8 of the
  second block after the old float there was loaded at 0xb49c6fc.
  The `bc1f` at 0xb49c71c takes the tail jump when the absolute value of the product of w and that
  old float is ordered and unequal to the product, hence a negative product takes the jump.
  The comparison threshold is the absolute value of the float at +0x4 of the second block (loaded at
  0xb49c6e8) times w. The `bc1t` at 0xb49c748 and the one at 0xb49c774 both leave for the tail when
  the bound is less than, or unordered with, the absolute value of a plane sum: the four floats
  times the floats at +0x0, +0x4, +0x8 and +0xc for the first, and times the floats at +0x10, +0x14,
  +0x18 and +0x1c for the second.
  With every test passed, the `sw` at 0xb49c77c writes the constant 0xffffffff8080d005 (`ori` of
  0xd005 in the delay slot at 0xb49c778) to 0x4000. The `swc1` at 0xb49c780, 0xb49c784, 0xb49c788
  and 0xb49c790 deposit the four floats read from a0 unchanged; the last store rides in the delay
  slot of the `jr ra` at 0xb49c78c, and the returned v0 is the doubleword at 0x1038.
  The remaining route takes t9 from the `ld` at 0xb49c794 from +0x20 of the block addressed by the
  doubleword at 0x1040 and jumps through the `jr t9` at 0xb49c798 with a0 to a3 as at entry.
  Unknown: the code entered via the `jr t9` at 0xb49c798, because the pointer at +0x20 is read from
  memory the bundle does not resolve.
  Unknown: the record format of the blocks addressed by the doublewords at 0x1038 and 0x1040,
  because their layout shows only in the offsets above.
  Evidence grade: established.

- `__glOdyim_Vertex4i_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49c7c0 (n64).
  Takes four integer arguments a0 to a3, converts each to single precision in the floating-point unit
  (four pairs of register moves and integer-to-single conversions at the top of the routine), tests that
  point against three groups of four floats, and either writes the raw integers to absolute 0x4000 or
  jumps through a routine pointer.
  The `ld` at 0xb49c7e0 loads the doubleword at 0x1038 into v0 and the `ld` at 0xb49c7e4 loads the
  doubleword at 0x1040 into v1; the three groups are the floats at v0 +0x30 to +0x3c, +0x0 to +0xc and
  +0x10 to +0x1c. Each group is combined with the four converted arguments as one multiply and three
  multiply-adds, one float per argument, giving a single float.
  The first group's result is stored by the `swc1` at 0xb49c814 to v1 +0x8, after the old word at v1 +0x8
  was loaded at 0xb49c80c and multiplied by it; the same result is also multiplied by the float at v1 +0x4
  to give the bound f8, whose absolute value is used by the two later tests.
  The `bc1f` at 0xb49c82c leaves for the jump unless the absolute value of the product with the old v1 +0x8
  word equals that product or is unordered (`c.ueq.s` at 0xb49c824).
  The `bc1t` at 0xb49c858 and 0xb49c884 leave for the jump when the bound is less than the absolute value
  of the second or third group's result, or unordered (`c.ult.s` at 0xb49c850 and 0xb49c87c).
  When all three tests fall through, the `sw` at 0xb49c88c stores the constant 0xffffffff8080d004 (0x8080
  set at 0xb49c880, 0xd004 ORed in by the instruction in the delay slot at 0xb49c888) to absolute 0x4000,
  then the `sw` instructions at 0xb49c890 to 0xb49c8a0 store a0, a1, a2 and a3 unchanged to the same
  address, the last in the delay slot of the `jr ra` at 0xb49c89c, which returns the doubleword at 0x1038.
  Inferred: the five stores to one address form a single command of a header word and four values, since
  the header constant is written first and the four argument words follow back to back.
  On the exit path the `ld` at 0xb49c8a4 loads t9 from the doubleword at v1 +0x20 and the `jr t9` at
  0xb49c8a8 jumps there with a0 to a3 as they arrived.
  Unknown: which routine the `jr t9` at 0xb49c8a8 enters, since the pointer comes from memory; a live read
  of the doubleword at 0x1040 plus 0x20 would name it.
  Evidence grade: inferred.

- `__glOdyim_Vertex4iv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49c8c0 (n64).
  Reads four integers through the pointer in a0, turns each into a single precision float, runs the
  resulting point past three float tests, and on success sends the raw integers to absolute 0x4000;
  on failure control moves to a routine pointer instead.
  The `lw` loads at 0xb49c8c0 to 0xb49c8cc put a0 +0x0, +0x4, +0x8 and +0xc in a4 to a7, and the
  conversion pairs that follow leave the floats in f12 to f15. The doubleword at 0x1038 goes to v0 (`ld`
  at 0xb49c8f0) and the one at 0x1040 to v1 (`ld` at 0xb49c8f4). Three float groups hang off v0, at +0x30
  to +0x3c, +0x0 to +0xc and +0x10 to +0x1c; each is reduced to one float by a multiply followed by
  three multiply-adds against f12 to f15.
  For the first group the result goes back out through the `swc1` at 0xb49c924, to v1 +0x8; before that
  the word there is loaded (0xb49c91c) and multiplied by the result, and the result is also multiplied
  by the float at v1 +0x4 and kept as an absolute value in f8.
  Test one is the `bc1f` at 0xb49c93c: it jumps to the pointer exit unless the absolute value of the
  v1 +0x8 product matches the product itself or is unordered (`c.ueq.s` at 0xb49c934).
  Tests two and three are the `bc1t` branches at 0xb49c968 and 0xb49c994, which take the exit when f8
  is below the absolute value of the second or third group's float, unordered included (`c.ult.s` at
  0xb49c960 and 0xb49c98c).
  Falling through all three, the routine builds 0xffffffff8080d004 (0x8080 at 0xb49c990, 0xd004 ORed in
  at 0xb49c998) and stores it to absolute 0x4000 with the `sw` at 0xb49c99c, then the `sw` stores at
  0xb49c9a0 to 0xb49c9b0 write a4 to a7, the words from a0 +0x0, +0x4, +0x8 and +0xc, as loaded; the last
  one sits in the delay slot of the `jr ra` at 0xb49c9ac, which hands back the doubleword at 0x1038.
  The exit loads t9 from v1 +0x20 (`ld` at 0xb49c9b4) and jumps with `jr t9` at 0xb49c9b8; a0 to a3 are
  untouched and a4 to a7 still hold the four words.
  Unknown: the destination of the `jr t9` at 0xb49c9b8, which depends on the word at 0x1040 plus 0x20 at
  run time; a live read of it would give the answer.
  Evidence grade: established.

- `__glOdyim_Vertex4sv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49cac0 (n64).
  Four halfwords come in through the pointer in a0; the routine floats them, checks them against three
  float tests, and either writes them as words to absolute 0x4000 or hands control to a routine pointer.
  Loads: `lh` at 0xb49cac0, 0xb49cac4, 0xb49cac8 and 0xb49cacc fetch a0 +0x0, +0x2, +0x4 and +0x6 into
  a4 to a7 with sign extension, and integer-to-single conversion then fills f12 to f15. v0 gets the
  doubleword at 0x1038 and v1 the one at 0x1040 (`ld` at 0xb49caf0 and 0xb49caf4). The float groups at
  v0 +0x30 to +0x3c, +0x0 to +0xc and +0x10 to +0x1c each collapse to one float: a multiply by f12, then
  multiply-adds with f13, f14 and f15.
  Group one has extra work. The `swc1` at 0xb49cb24 writes its result to v1 +0x8, once the previous word
  there (loaded at 0xb49cb1c) has been multiplied by it; the result is also scaled by the float at v1 +0x4
  and its absolute value kept in f8.
  The first branch, `bc1f` at 0xb49cb3c, goes to the exit unless the previous v1 +0x8 word times the
  group result has an absolute value equal to itself or is unordered (`c.ueq.s` at 0xb49cb34).
  The next two, `bc1t` at 0xb49cb68 and 0xb49cb94, go to the exit if f8 is smaller than the absolute value
  of group two's or group three's float, or unordered (`c.ult.s` at 0xb49cb60 and 0xb49cb8c).
  If none is taken, 0xffffffff8080d004 is formed (0x8080 at 0xb49cb90, 0xd004 ORed in by the delay slot
  at 0xb49cb98) and stored to absolute 0x4000 at 0xb49cb9c; the four sign-extended halfwords follow
  as words at 0xb49cba0, 0xb49cba4 and 0xb49cba8, and at 0xb49cbb0 in the delay slot of the
  `jr ra` at 0xb49cbac. The routine hands back the doubleword at 0x1038.
  The exit is `ld` t9 from v1 +0x20 at 0xb49cbb4, then `jr t9` at 0xb49cbb8, with a0 to a3 as called
  and the halfwords in a4 to a7.
  Unknown: the routine behind the `jr t9` at 0xb49cbb8; a run that dumps the doubleword at 0x1040 plus
  0x20 would settle it.
  Evidence grade: established.

- `__glOdyim_Vertex2d_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49cbc0 (n64).
  Takes two doubles in f12 and f13, narrows both to single precision, and runs a series of float tests against
  the blocks reached from the pointers at abs 0x1038 (P) and abs 0x1040 (Q). When every test passes it writes a
  header word and the two floats directly to abs 0x4000; when one fails it tail-calls the pointer at Q+0x20.
  Two multiply-add steps after the loads of P+0x30 and P+0x34 (`lwc1` at 0xb49cbd0 and 0xb49cbd8) give
  w = P+0x3c + f12 * P+0x30 + f13 * P+0x34. The `swc1` at 0xb49cbf4 stores w to Q+0x8, and w is kept in a
  second register. The first product, w times Q+0x8, and the second, w times Q+0x4, are formed and taken to absolute values.
  The `bc1f` at 0xb49cc0c bails out when the first product differs from its absolute value (`c.ueq.s` at 0xb49cc04),
  that is when it is negative; NaN passes.
  The first sum is P+0xc + f12 * P+0x0 + f13 * P+0x4. The `bc1t` at 0xb49cc30 bails out when the second
  product's absolute value is below the absolute value of that sum or the two are unordered (`c.ult.s` at 0xb49cc28).
  Next the sum plus w times Q+0xc is formed, and Q+0x18 times w is the bound. If that value is non-negative (`c.ueq.s`
  at 0xb49cc40, `bc1f` at 0xb49cc48 skips the step otherwise), `bc1t` at 0xb49cc58 bails out when it is below the
  bound or unordered (`c.ult.s` at 0xb49cc50).
  The same three steps repeat with the sum P+0x1c + f12 * P+0x10 + f13 * P+0x14 (`c.ult.s` at 0xb49cc7c, `bc1t` at
  0xb49cc84), then w times Q+0x10 added to it (`c.ueq.s` at 0xb49cc94, `bc1f` at 0xb49cc9c) and a final bound test
  against Q+0x18 times w (`c.ult.s` at 0xb49cca4, `bc1t` at 0xb49ccac).
  Once every test is passed, the `sw` at 0xb49ccbc stores the word 0xffffffff8080c801 to abs 0x4000, then the narrowed
  f12 and f13 values go to the same address (`swc1` at 0xb49ccc0 and, in the return's delay slot, 0xb49ccc8).
  Every bail-out lands at 0xb49cccc: t9 comes from Q+0x20, f14 is zeroed, f15 gets a single-precision one, and the
  `jr` at 0xb49ccd8 goes there with a0 to a3 as received.
  Unknown: the destination of the tail jump at 0xb49ccd8; its pointer is only known at run time.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the device behind abs 0x4000, where three words are stored; nothing in the linked rows labels it.
  Evidence grade: established.

- `__glOdyim_Vertex2i_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49d0c0 (n64).
  Converts the integers in `a0` and `a1` to single-precision floats in `$f12` and `$f13` and runs
  two rounds of float tests on them against the records at absolute 0x1038 and 0x1040; a full pass
  writes a header word and the two original integers to absolute 0x4000, and otherwise it leaves by
  an indirect jump whose pointer comes from the second record.
  Then, it forms a sum from the 0x1038 record: the word at +0x3c, plus `$f12` times the word at
  +0x30, plus `$f13` times the word at +0x34 (a pair of multiply-add steps), and keeps a copy of it.
  The `swc1` at 0xb49d0fc places that sum, not the +0x3c word as loaded, to +0x8 of the 0x1040
  record, after the old +0x8 word was loaded at 0xb49d0e8.
  Next, the sum is multiplied by that old word and by the +0x4 word of the 0x1040 record (loaded at
  0xb49d0e4), and the products become absolute values; the `bc1f` at 0xb49d114 transfers to the
  outgoing path starting at 0xb49d1d4 unless the first product equals its own absolute value or the pair is
  unordered, so it leaves when that product is negative.
  After that, the first of the later tests forms the 0x1038 record's word at +0xc plus `$f12` times
  +0x0 plus `$f13` times +0x4, keeps a copy, takes its absolute value, and the `bc1t` at 0xb49d138
  transfers to the outgoing jump when the second product is less than that value or unordered.
  From there, the word at +0xc of the 0x1040 record (loaded at 0xb49d134), times the kept first sum,
  is added to the kept copy of that value; a negative total takes the `bc1f` at 0xb49d150 past the
  next comparison, and otherwise the `bc1t` at 0xb49d160 transfers to the outgoing jump when the
  total is less than the +0x18 word of the 0x1040 record times the kept first sum, or unordered.
  Following that, a second round does the same with the 0x1038 words at +0x1c, +0x10 and +0x14 and
  the 0x1040 words at +0x10 and +0x18: the `bc1t` at 0xb49d18c leaves on its first comparison, the
  `bc1f` at 0xb49d1a4 skips the last comparison for a negative result and goes to the return block
  at 0xb49d1bc, and the `bc1t` at 0xb49d1b4 leaves on the last one.
  Beyond that, on a full pass the `sw` at 0xb49d1c4 writes 0xffffffff8080c800 to absolute 0x4000
  (0x8080 loaded at 0xb49d1bc, 0xc800 ORed in at 0xb49d1c0), the `sw` at 0xb49d1c8 writes `a0` as it
  came in, and the `sw` at 0xb49d1d0 in the delay slot of the return at 0xb49d1cc writes `a1`; the
  doubleword read from absolute 0x1038 is the returned value.
  The tail-jump path obtains `t9` from +0x20 of the 0x1040 record at 0xb49d1d4, clears `$f14`, and
  puts 0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0xb49d1e0),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x4000 form one record, a header with the two coordinate
  words trailing it, owing to the fact that they hit the same address and the second and third write
  the entry coordinates.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the board-side result of the three stores to absolute 0x4000, as no linked row covers it
  and the windows begin at 0x110000; a datasheet covering that address would close it.
  Unknown: the final target of the `jr t9` at 0xb49d1e0; a captured run of the jump is the remaining
  route.
  Evidence grade: inferred.

- `__glOdyim_Vertex2sv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49d480 (n64).
  Loads two sign-extended halfwords from a0 (`lh` at 0xb49d480 and 0xb49d484) and, once a chain of seven float
  tests has passed, writes them to abs 0x4000 behind a constant header word. A failed test sends control by tail
  call through a pointer stored in the record that the doubleword at abs 0x1040 addresses. Before the record
  pointers are loaded (`ld` at 0xb49d498 and 0xb49d49c), both halfwords are converted to single precision into
  f12 and f13. The first sum is the word at +0x3c of the record at the doubleword abs 0x1038, plus the converted
  values times the words at +0x30 and +0x34 (`lwc1` at 0xb49d4a0 to 0xb49d4a8). It is copied into f10 and the
  `swc1` at 0xb49d4c4 stores it to +0x8 of the record at abs 0x1040, after the old +0x8 word was loaded at
  0xb49d4b0. The first test (`c.ueq.s` at 0xb49d4d4, `bc1f` at 0xb49d4dc) leaves for the tail path at 0xb49d59c
  when the product of the sum and the old +0x8 word is negative. The second sum is built from +0xc, +0x0 and
  +0x4 of the first record; the `bc1t` at 0xb49d500 leaves when the absolute value of the first sum scaled by
  the word at +0x4 of the second record (`lwc1` at 0xb49d4ac) is below the absolute value of the second sum or
  unordered with it (`c.ult.s` at 0xb49d4f8). Then the word at +0xc of the second record (`lwc1` at 0xb49d4fc)
  times the first sum, plus the second sum, is formed. If that result is negative (`bc1f` at 0xb49d518 after
  `c.ueq.s` at 0xb49d510) the next test is skipped; otherwise the `bc1t` at 0xb49d528 leaves when it is below
  the word at +0x18 of the second record times f10 (the multiply in the delay slot at 0xb49d51c) or unordered
  with it (`c.ult.s` at 0xb49d520). The same two steps repeat with a third sum built from +0x1c, +0x10 and +0x14
  of the first record and the word at +0x10 of the second: the `bc1t` at 0xb49d554 (`c.ult.s` at 0xb49d54c),
  then the `bc1f` at 0xb49d56c that skips the last test when the result is negative (`c.ueq.s` at 0xb49d564),
  else the `bc1t` at 0xb49d57c (`c.ult.s` at 0xb49d574, multiply in the delay slot at 0xb49d570). When no test
  leaves, the `sw` at 0xb49d58c writes the constant 0xffffffff8080c800 (0x8080 at 0xb49d584, `ori` of 0xc800 at
  0xb49d588) to abs 0x4000. After that the `sw` at 0xb49d590 writes the halfword from a0+0 and the `sw` at
  0xb49d598, in the delay slot of the `jr ra` at 0xb49d594, writes the halfword from a0+2. On return v0 holds
  the doubleword read from abs 0x1038. On the tail path the `ld` at 0xb49d59c loads t9 from +0x20 of the second
  record, f12 and f13 hold the converted halfwords, and the delay slot of the `jr t9` at 0xb49d5a8 moves t0
  (0x3f800000, set at 0xb49d5a4) into f15. Unknown: the address reached through the `jr t9` at 0xb49d5a8, taken
  from the doubleword at +0x20 of the second record, so reading that doubleword in a live run would settle it.
  Unknown: the hardware-side result of the writes to abs 0x4000. No linked register row or datasheet excerpt in
  the bundle covers that address.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x4000 board +0x120000.
  Evidence grade: established.

- `__glOdyim_Vertex3iv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49dc80 (n64).
  Checks an integer vertex of three 32-bit words against float bounds with two extra offset tests,
  then either writes a four-word packet to the fixed address 0x4000 and returns, or tail-jumps
  through a pointer.
  The three words at a0 (`lw` at 0xb49dc80, 0xb49dc84 and 0xb49dc88) are also turned into single-
  precision floats; the stored words are the integer originals.
  The doublewords at abs 0x1038 and 0x1040 (`ld` at 0xb49dca4 and 0xb49dca8) act as the two base
  pointers. The scalar w is the float at +0x3c of the first block plus the converted words times the
  floats at +0x30, +0x34 and +0x38. It is copied to $f10, and the `swc1` at 0xb49dcd8 saves w at
  +0x8 of the second block after the old float there was loaded at 0xb49dcc0.
  The `bc1f` at 0xb49dcf0 goes to the tail jump when the absolute value of the product of w and that
  old float is ordered and unequal to the product, which means the product is negative. The `bc1t`
  at 0xb49dd1c next jumps to the tail if the absolute value of w times the float at +0x4 of the
  second block is less than, or unordered with, the absolute value of the plane sum built from the
  float at +0xc and the converted words times the floats at +0x0, +0x4 and +0x8.
  That signed plane sum then goes through a multiply-add with the float at +0xc of the second block
  and w. If the result is negative (`bc1f` at 0xb49dd34), the next test is skipped; otherwise the
  `bc1t` at 0xb49dd44 jumps to the tail when the result is less than, or unordered with, the float
  at +0x18 of the second block scaled by w (multiply in the delay slot at 0xb49dd38).
  The second plane (floats at +0x10, +0x14, +0x18 and +0x1c of the first block) repeats the pair:
  the `bc1t` at 0xb49dd78 against the same bound, then the multiply-add with +0x10 of the second
  block, the skip on a negative result at the `bc1f` at 0xb49dd90 and the `bc1t` at 0xb49dda0
  against +0x18 scaled by w.
  With every test passed, the `sw` at 0xb49ddb0 writes the constant 0xffffffff8080cc02 (immediate
  0x8080 at 0xb49dda8, `ori` of 0xcc02 at 0xb49ddac) to 0x4000. The `sw` at 0xb49ddb4 and 0xb49ddb8
  store the first two integers back as they were and the delay slot of the `jr ra` at 0xb49ddbc
  writes the third; the value returned in v0 is the doubleword at 0x1038.
  The fall-back route loads t9 with the `ld` at 0xb49ddc4 from +0x20 of the block addressed by the
  doubleword at 0x1040 and jumps through the `jr t9` at 0xb49ddcc; the delay slot loads $f15 with
  0x3f800000.
  Unknown: the routine entered through the `jr t9` at 0xb49ddcc, because the pointer at +0x20 is
  read from memory the bundle does not resolve.
  Unknown: the contents of the blocks addressed by the doublewords at 0x1038 and 0x1040, because
  only the offsets above show how they are laid out.
  Evidence grade: established.

- `__glOdyim_Vertex4sv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49eb40 (n64).
  Line-mode variant of the four-halfword vertex check: it floats the halfwords at a0, tests the point
  against three float groups with two extra sum tests that reuse the first group's result, and writes the
  vertex to absolute 0x4000 only if everything passes; any failure goes to a routine pointer.
  The `lh` loads at 0xb49eb40 to 0xb49eb4c read a0 +0x0, +0x2, +0x4 and +0x6 into a4 to a7, and the
  integer-to-single conversions that follow fill f12 to f15. v0 and v1 receive the doublewords at 0x1038
  and 0x1040 (`ld` at 0xb49eb70 and 0xb49eb74). The groups of four floats at v0 +0x30 to +0x3c, +0x0 to
  +0xc and +0x10 to +0x1c each become one number, a multiply and three multiply-adds against f12 to f15;
  call them d1, d2 and d3.
  d1 is copied into f10 (a register copy), written by the `swc1` at 0xb49eba8 to v1 +0x8 once the old
  v1 +0x8 word has been multiplied by it, and scaled by the float at v1 +0x4 into the bound f8, kept as an
  absolute value.
  The `bc1f` at 0xb49ebc0 exits unless the absolute value of the product with the old v1 +0x8 word equals
  the product or is unordered (`c.ueq.s` at 0xb49ebb8). The `bc1t` at 0xb49ebf0 exits when f8 is below the
  absolute value of d2 (`c.ult.s` at 0xb49ebe8), unordered included.
  For d2 a further sum follows: d2 plus the float at v1 +0xc times d1 (a multiply-add), then the float at
  v1 +0x18 times d1. The `bc1f` at 0xb49ec08 skips the next test, going to 0xb49ec20, when the sum is
  negative (`c.ueq.s` at 0xb49ec00); otherwise the `bc1t` at 0xb49ec18 exits if the sum is less than that
  scaled float or unordered with it (`c.ult.s` at 0xb49ec10).
  d3 repeats the pattern. The `bc1t` at 0xb49ec50 exits when f8 is below the absolute value of d3
  (`c.ult.s` at 0xb49ec48); the sum is d3 plus the float at v1 +0x10 times d1, tested by the `bc1f` at
  0xb49ec68 (`c.ueq.s` at 0xb49ec60), which on a negative sum jumps straight to the store block at
  0xb49ec80; otherwise the `bc1t` at 0xb49ec78 exits if the sum is less than the float at v1 +0x18 times
  d1 (`c.ult.s` at 0xb49ec70).
  The store block builds 0xffffffff8080d004 (0x8080 at 0xb49ec80, 0xd004 at 0xb49ec84), stores it to
  absolute 0x4000 at 0xb49ec88, then writes the four sign-extended halfwords at 0xb49ec8c, 0xb49ec90 and 0xb49ec94,
  and at 0xb49ec9c in the delay slot of the `jr ra` at 0xb49ec98; v0 comes back as the doubleword at 0x1038.
  All exits land on 0xb49eca0, which loads t9 from v1 +0x20; `jr t9` at 0xb49eca4 then runs with a0 to a3
  as received and a4 to a7 holding the halfwords.
  Unknown: where the `jr t9` at 0xb49eca4 goes, since it follows a pointer read at run time; dumping the
  doubleword at 0x1040 plus 0x20 from a live system would show it.
  Evidence grade: established.

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49f0c0

`__glOdyim_TexCoord3d` (40 bytes) writes one integer word (0xb49f0d4) and three floats (0xb49f0d8,
0xb49f0dc, 0xb49f0e4) to abs 0x4000. That is the same store pattern as Vertex3d. The facts show no
difference from Vertex3d, so the texture coordinate meaning of the name is not visible here.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49f780

`__glOdyim_ScratchColor3b` (28 bytes) writes four integer words to abs 0x4000 (0xb49f788, 0xb49f78c,
0xb49f790 and one more). It has no loads and no calls. The facts do not show where the stored values
come from or any conversion of the byte-typed arguments. This 28-byte shape
is shared with the 3i, 3s, 3ui and 3us variants.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49f840

`__glOdyim_Color3d` (40 bytes) writes one integer word (0xb49f854) and three floats (0xb49f858,
0xb49f85c, 0xb49f864) to abs 0x4000. It has no loads and no calls. This matches the Vertex3d and
TexCoord3d store pattern. The name suggests a color operand, but the facts show only the stores.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49f880

`__glOdyim_ScratchColor3d` (40 bytes) writes one integer word (0xb49f894) and three floats (0xb49f898,
0xb49f89c, 0xb49f8a4) to abs 0x4000. It has no loads and no calls. The store
pattern matches Color3d. What the Scratch prefix of the name means is not visible in the
facts.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49fa80

`__glOdyim_ScratchColor3i` (28 bytes) writes four integer words to abs 0x4000 (0xb49fa88, 0xb49fa8c,
0xb49fa90 and one more). It has no loads and no calls. This is the same shape as ScratchColor3b with
the same integer store count.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49fb80

`__glOdyim_ScratchColor3s` (28 bytes) writes four integer words to abs 0x4000 (0xb49fb88, 0xb49fb8c,
0xb49fb90 and one more). It has no loads and no calls. The shape matches ScratchColor3b and 3i.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49fd80

`__glOdyim_ScratchColor3ui` (28 bytes) writes four integer words to abs 0x4000 (0xb49fd88, 0xb49fd8c,
0xb49fd90 and one more). It has no loads and no calls. The shape matches the other 28-byte 3-operand
integer variants.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49fe80

`__glOdyim_ScratchColor3us` (28 bytes) writes four integer words to abs 0x4000 (0xb49fe88, 0xb49fe8c,
0xb49fe90 and one more). It has no loads and no calls. The shape matches the other 28-byte 3-operand
integer variants.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb49ff80

`__glOdyim_ScratchColor4b` (32 bytes) writes five integer words to abs 0x4000 (0xb49ff88, 0xb49ff8c,
0xb49ff90 and two more). It has no loads and no calls. That is one word plus four operands, the same
layout as ScratchColor4i, 4s, 4ub, 4ui and 4us.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4a0100

`__glOdyim_ScratchColor4dv` (64 bytes) loads four doubles from a0 at +0, +8, +0x10 and +0x18 (ldc1 at
0xb4a0100 to 0xb4a0118). It then writes one integer word (0xb4a0120) and four floats to abs 0x4000
(0xb4a0128, 0xb4a0130, 0xb4a0134 and one more). The pointer argument and four-double load fit a
vector form of a four-component color. The facts do not show the double-to-float conversion, and the
return value is not visible.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4a0280

`__glOdyim_ScratchColor4i` (32 bytes) writes five integer words to abs 0x4000 (0xb4a0288, 0xb4a028c,
0xb4a0290 and two more). It has no loads and no calls. The layout matches the other four-operand
integer variants.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4a0380

`__glOdyim_ScratchColor4s` (32 bytes) writes five integer words to abs 0x4000 (0xb4a0388, 0xb4a038c,
0xb4a0390 and two more). It has no loads and no calls. The layout matches the other four-operand
integer variants.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4a0480

`__glOdyim_ScratchColor4ub` (32 bytes) writes five integer words to abs 0x4000 (0xb4a0488, 0xb4a048c,
0xb4a0490 and two more). It has no loads and no calls. The layout matches the other four-operand
integer variants.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4a0580

`__glOdyim_ScratchColor4ui` (32 bytes) writes five integer words to abs 0x4000 (0xb4a0588, 0xb4a058c,
0xb4a0590 and two more). It has no loads and no calls. The layout matches the other four-operand
integer variants.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4a0680

`__glOdyim_ScratchColor4us` (32 bytes) writes five integer words to abs 0x4000 (0xb4a0688, 0xb4a068c,
0xb4a0690 and two more). It has no loads and no calls. The layout matches the other four-operand
integer variants.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4a0780

`__glOdyim_ScratchIndexd` (24 bytes) writes one integer word (0xb4a078c) and one float (0xb4a0794) to
abs 0x4000. It has no loads and no calls. The name suggests a double-typed index operand, but the
facts do not show the argument type or what the word means.
The return value is not visible in the facts.

Grade: inferred.

Reviewed: 2026-11-12

- `glColor3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4a4000 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4a4000-0xb4a4040 (64 bytes).
  It occupies 64 bytes.
  The `ld` at 0xb4a4000 loads 8 bytes from abs 0x1b10.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4a4004).
  The instructions from 0xb4a400c to 0xb4a403c are not reached by any path from the entry, and their branches are not listed.

- `glVertex2d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4a5500 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4a5500-0xb4a5600 (256 bytes).
  It occupies 256 bytes.
  The `ld` at 0xb4a5500 loads 8 bytes from abs 0x1a50.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb4a5504).
  The instructions from 0xb4a550c to 0xb4a55fc are not reached by any path from the entry, and their branches are not listed.

- `ApplyViewport` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb339820
  **Inferred.** The 64-bit patch viewport applier runs `__glOdysseyFindWindowSize` at 0xb339848 and `__glUpdateViewport` at 0xb339858, describes the window images at +82424 and +82488 with two calls at 0xb339900 and 0xb33991c, and finishes with the pause words, the header 0x10456 at 0xb339a0c and the shadow word at +48208, stored to the window at 0x4000.

- `ApplyParameterF` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb330e80
  **Inferred.** The 64-bit patch applier sends eight words (the four floats at a2 under a header) at 0xb330f04 to 0xb330f24, calls `__glOdysseySetProgram` at 0xb3310ec with the program number at +51920 and the word 0x908091ea, then stores the register headers 0xc680d02f through 0xcd80d038 with zero padding (13 zero words from 0xb33119c) to the window at 0x4000.

- `ApplyParameterI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb331510
  **Inferred.** Sends the pause words and the header 0x13c4d with the 16 words at +41112 of the context to 0x4000 (starting at 0xb331580), then reloads the program number at +51920 with `__glOdysseySetProgram` at 0xb33185c, passing 0xd080c400 and the kind 0x39.

- `__glOdysseyImageMovePixelsDMAtoGfx` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb383380
  **Inferred.** Same sequence as the n32 patch copy, in 64-bit form: `memset` of 0x20 and 0x14 bytes at 0xb383480 and 0xb383498, four `ceilf` calls from 0xb3834b4, `__glOdysseyImageCalcXferWriteParams` at 0xb383584, `__glOdysseyOpenPMObjWriteReference` at 0xb383948 with the context at 0x1020, `__glOdysseyImageCalcPixelModeFields` at 0xb383db0, `__glOdysseyValidateHardware` at 0xb383f74 and `SendPixelsAsUserPIO` at 0xb38421c and 0xb384618. The reference is closed at 0xb3842d8 and the request 0x6f64000d is issued at 0xb384b88.

- `__glOdysseyImageMovePixelsCopy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb380aa0
  **Inferred.** Copies a pixel rectangle inside the board's memory. It sizes the copy with `OdysseyImageCalcXferCopyParams` at 0xb380c88, computes source and destination field offsets with two `ImageCalcDmaFieldOffsets` calls at 0xb380da8 and 0xb380e20, and holds both memory objects with `__glOdysseyOpenPMObjReference` at 0xb380e44 and `__glOdysseyOpenPMObjWriteReference` at 0xb380e8c. After `__glOdysseyValidateHardware` at 0xb381514 it moves the pixels with `ImageCopyPixelBody`, called nine times from 0xb381734 to 0xb382a00, releases both references at 0xb3817b4 and 0xb3817d0, reports 0x502 and 0x505 through `__glSetError` and finishes with the driver request 0x6f64000d at 0xb382ae8.

- `DownsampleTextureThruHW` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3999e0
  **Inferred.** Shrinks a texture level with the board in the 64-bit patch build. `__glOdysseyImageLogBase2` at 0xb399b28 and 0xb399b54 work out the level sizes, `ChooseSuitableBuzzTexModeBaseFmt` at 0xb399c50 picks the texture mode, `GetImageFmtEnumFromBuzzTexFormat` at 0xb399e08 and `__glOdysseyImageCalcFieldFormat` at 0xb399e14 give the pixel format, and `__glOdysseyValidateHardware` at 0xb399ff0 checks the pipe before the draw.

- `AddConvolutionBorders` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb36ae00
  **Inferred.** Border fix-up for a convolution in the 64-bit patch build. It programs the filter with `__glOdysseyProgramTexFilter` at 0xb36af68 (seven calls in all), loads the taps with `LoadTextureFilter` at 0xb36afd0 (six calls), and moves the border strips with `__glOdysseyImageMovePixelsTexture` (26 calls, the first at 0xb36b04c). About 100 `floorf` and six `ceilf` calls round the strip rectangles.

- `LookupKnownGroup` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb390500
  **Inferred.** Finds the memory-object group for an id, creating it when asked. Ids -3 and -4 return zero at once; any other id goes through `LookupCSetId` and, when no group exists and a3 is set, a 152-byte record is allocated through the context hook at 0xb390590, cleared with `bzero` at 0xb3905b0 and added with `AddKnownGroup`. `LookupCoresidRange` at 0xb3905e8 then creates its first range (offset 0, length 15), and on failure `RemoveKnownGroup` undoes the add and `__glSetError` reports 0x505 at 0xb390638.

- `LookupCoresidRange` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb390690
  **Inferred.** Returns the resident-range record covering a position in a memory group, allocating one when asked. A 0x40-byte record comes from the context hook at 0xb3906fc and is cleared by `bzero` at 0xb390714; the driver is then asked to describe the range with the request 0x6f640004 at 0xb390774, and a refusal frees the record and raises 0x505 with `__glSetError` at 0xb3908c0.

- `__glOdysseyReadFromPMObj` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb38f960
  **Inferred.** Reads from a pixel-memory object in the 64-bit patch build. It builds the transfer block on the stack, validates it with `CheckMMXfrArgs` at 0xb38f9e8 and sends it with the request 0x6f640006 at 0xb38fa08. A failed check returns 0 at 0xb38fa64 and otherwise the result is 0 or 1 at 0xb38fa4c.

- `__glOdysseySetProgram` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3929a0
  **Inferred.** The patch-build microcode loader writes to the window at 0x4000. A set flag byte at +0x287dc ends the call with a single store of 0x29808062, which differs from the media build's word. Otherwise it walks the program slot of a1, sending headers of the form 0x27008000 plus a split record number and 27 data words from 0xb392a44, and closes with 0x90808800 at 0xb392da4 and two zero words.
