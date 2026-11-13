# Instruction readings from hostfacts

Each entry reports selected non-stack accesses, calls with argument slots, conditional branches and return values from the exact binary build named in its header. Every claim cites its instruction address. These are software observations, graded Inferred; they do not establish hardware behaviour.

- `__glOdysseyWindowToNormalizedEyeZ` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9f8060 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9f8060-0xd9f8148 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0xd9f8070 loads 4 bytes from abs 0x1010.
  The `ldc1` at 0xd9f8098 loads 8 bytes from [0x1010] +0x165c8.
  The `ldc1` at 0xd9f809c loads 8 bytes from [0x1010] +0x165d0.
  The `jalr` at 0xd9f8080 calls __glOdysseyWindowToEyeZ [0xd9f7e0c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f8114 calls isnan with a0=?, a1=?, a2=?, a3=?.
  The `bc1fl` branch at 0xd9f80d0 targets 0xd9f80e8, is taken when not (f12 < f18 (c.lt.d at 0xd9f80c8)), and falls through when f12 < f18 (c.lt.d at 0xd9f80c8); its branch-likely delay slot `mtc1 at,$f5` at 0xd9f80d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9f80dc targets 0xd9f8138 and is always taken.
  The `bc1f` branch at 0xd9f80f8 targets 0xd9f810c, is taken when not (f4 < f12 (c.lt.d at 0xd9f80f0)), and falls through when f4 < f12 (c.lt.d at 0xd9f80f0).
  The `beq` branch at 0xd9f8104 targets 0xd9f8138 and is always taken.
  The `beq` branch at 0xd9f8120 targets 0xd9f8134, is taken when v0(=ret(isnan)) == 0, and falls through when v0(=ret(isnan)) != 0.
  The return at 0xd9f8140 has v0 = one of [0x1010]+91592, ret(isnan).
  The instructions from 0xd9f80e4 to 0xd9f80e4 are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseyWindowToNormalizedEyeZ` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9e4890 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9e4890-0xd9e4958 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd9e48b4 loads 4 bytes from abs 0x1010.
  The `ldc1` at 0xd9e48c0 loads 8 bytes from [0x1010] +0x165c8.
  The `ldc1` at 0xd9e48c8 loads 8 bytes from [0x1010] +0x165d0.
  The `bgezall` at 0xd9e48b0 calls __glOdysseyWindowToEyeZ [0xd9e4710] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e4930 calls isnan with a0=?, a1=?, a2=?, a3=?.
  The `bc1t` branch at 0xd9e48f4 targets 0xd9e4914, is taken when f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0xd9e48e8), and falls through when not (f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0xd9e48e8)).
  The `bc1f` branch at 0xd9e4900 targets 0xd9e492c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0xd9e490c has v0 = [0x1010]+65536.
  The return at 0xd9e4924 has v0 = [0x1010]+65536.
  The return at 0xd9e4950 has v0 = ret(isnan).
- `__glChangeReadWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda35140 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda35140-0xda3514c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xda35140 stores 4 bytes to a0 (arg0 at entry) +0xe80.
  The `sw` at 0xda35148 stores 4 bytes to a0 (arg0 at entry) +0xe7c.
  The return at 0xda35144 has v0 = ?.
- `__glChangeReadWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x227a400 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x227a400-0x227a40c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0x227a400 stores 4 bytes to a0 (arg0 at entry) +0xfe4.
  The `sw` at 0x227a408 stores 4 bytes to a0 (arg0 at entry) +0xfe0.
  The return at 0x227a404 has v0 = ?.
- `__glOdysseyWindowToNormalizedEyeZ` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac7ad0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac7ad0-0xdac7b60 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xdac7af4 loads 4 bytes from abs 0x1010.
  The `ldc1` at 0xdac7b00 loads 8 bytes from [0x1010] +0x16660.
  The `ldc1` at 0xdac7b08 loads 8 bytes from [0x1010] +0x16668.
  The `bgezall` at 0xdac7af0 calls __glOdysseyWindowToEyeZ [0xdac7940] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bc1t` branch at 0xdac7b34 targets 0xdac7b54, is taken when f6 < f0(=0x0) (c.lt.d at 0xdac7b28), and falls through when not (f6 < f0(=0x0) (c.lt.d at 0xdac7b28)).
  The `beq` branch at 0xdac7b58 targets 0xdac7b44 and is always taken.
  The return at 0xdac7b4c has v0 = [0x1010]+65536.
- `__glChangeWindowSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb12190 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb12190-0xdb12290 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0xdb121a0 loads 4 bytes from a0 (arg0 at entry) +0x7718.
  The `sw` at 0xdb121a4 stores 4 bytes to a0 (arg0 at entry) +0xe70.
  The `sw` at 0xdb121ac stores 4 bytes to a0 (arg0 at entry) +0xe6c.
  The `lw` at 0xdb121bc loads 4 bytes from [a0+30488] +0x38.
  The `lbu` at 0xdb121d4 loads 1 byte from a0 (arg0 at entry) +0xc8e.
  The `lw` at 0xdb121e0 loads 4 bytes from a0 (arg0 at entry) +0x771c.
  The `lw` at 0xdb121e4 loads 4 bytes from [a0+30492] +0x38.
  The `lbu` at 0xdb121f4 loads 1 byte from a0 (arg0 at entry) +0xc90.
  The `lw` at 0xdb12200 loads 4 bytes from a0 (arg0 at entry) +0x79e8.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc91, including `lbu` at 0xdb1220c, `lbu` at 0xdb1228c.
  The `lw` at 0xdb12218 loads 4 bytes from a0 (arg0 at entry) +0x798c.
  The `lbu` at 0xdb1222c loads 1 byte from a0 (arg0 at entry) +0xc92.
  The `lw` at 0xdb12238 loads 4 bytes from a0 (arg0 at entry) +0x7914.
  The `lw` at 0xdb1224c loads 4 bytes from a0 (arg0 at entry) +0x2de4.
  The `lw` at 0xdb12274 loads 4 bytes from a0 (arg0 at entry) +0x7a10.
  The `jalr` at 0xdb121cc calls (unknown callee) with a0=[a0+30488], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb121ec calls (unknown callee) with a0=[a0+30492], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xdb12224 calls (unknown callee) with a0=a0+31060, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xdb12244 calls (unknown callee) with a0=a0+30940, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xdb12258 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xdb12280 calls (unknown callee) with a0=a0+31192, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+31208].
  The `beq` branch at 0xdb121d8 targets 0xdb121f4, is taken when v0(=[a0+3214]:1) == 0, and falls through when v0(=[a0+3214]:1) != 0.
  The `beq` branch at 0xdb121f8 targets 0xdb1220c, is taken when v1(=[a0+3216]:1) == 0, and falls through when v1(=[a0+3216]:1) != 0.
  The `bne` branch at 0xdb12204 targets 0xdb12274, is taken when a3(=[a0+31208]) != 0, and falls through when a3(=[a0+31208]) == 0.
  The `beq` branch at 0xdb12210 targets 0xdb1222c, is taken when at(=[a0+3217]:1) == 0, and falls through when at(=[a0+3217]:1) != 0.
  The `beq` branch at 0xdb12230 targets 0xdb1224c, is taken when v0(=[a0+3218]:1) == 0, and falls through when v0(=[a0+3218]:1) != 0.
  The `beq` branch at 0xdb12288 targets 0xdb12210 and is always taken.
  The return at 0xdb1226c has v0 = ret(?).
- `__glChangeReadWindowSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb12290 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb12290-0xdb1229c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xdb12290 stores 4 bytes to a0 (arg0 at entry) +0xe78.
  The `sw` at 0xdb12298 stores 4 bytes to a0 (arg0 at entry) +0xe74.
  The return at 0xdb12294 has v0 = ?.
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
- `__glOdysseyWindowToNormalizedEyeZ` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac7ad0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac7ad0-0xdac7b60 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xdac7af4 loads 4 bytes from abs 0x1010.
  The `ldc1` at 0xdac7b00 loads 8 bytes from [0x1010] +0x16660.
  The `ldc1` at 0xdac7b08 loads 8 bytes from [0x1010] +0x16668.
  The `bgezall` at 0xdac7af0 calls __glOdysseyWindowToEyeZ [0xdac7940] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bc1t` branch at 0xdac7b34 targets 0xdac7b54, is taken when f6 < f0(=0x0) (c.lt.d at 0xdac7b28), and falls through when not (f6 < f0(=0x0) (c.lt.d at 0xdac7b28)).
  The `beq` branch at 0xdac7b58 targets 0xdac7b44 and is always taken.
  The return at 0xdac7b4c has v0 = [0x1010]+65536.
- `__glChangeWindowSize` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb12190 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb12190-0xdb12290 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0xdb121a0 loads 4 bytes from a0 (arg0 at entry) +0x7718.
  The `sw` at 0xdb121a4 stores 4 bytes to a0 (arg0 at entry) +0xe70.
  The `sw` at 0xdb121ac stores 4 bytes to a0 (arg0 at entry) +0xe6c.
  The `lw` at 0xdb121bc loads 4 bytes from [a0+30488] +0x38.
  The `lbu` at 0xdb121d4 loads 1 byte from a0 (arg0 at entry) +0xc8e.
  The `lw` at 0xdb121e0 loads 4 bytes from a0 (arg0 at entry) +0x771c.
  The `lw` at 0xdb121e4 loads 4 bytes from [a0+30492] +0x38.
  The `lbu` at 0xdb121f4 loads 1 byte from a0 (arg0 at entry) +0xc90.
  The `lw` at 0xdb12200 loads 4 bytes from a0 (arg0 at entry) +0x79e8.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc91, including `lbu` at 0xdb1220c, `lbu` at 0xdb1228c.
  The `lw` at 0xdb12218 loads 4 bytes from a0 (arg0 at entry) +0x798c.
  The `lbu` at 0xdb1222c loads 1 byte from a0 (arg0 at entry) +0xc92.
  The `lw` at 0xdb12238 loads 4 bytes from a0 (arg0 at entry) +0x7914.
  The `lw` at 0xdb1224c loads 4 bytes from a0 (arg0 at entry) +0x2de4.
  The `lw` at 0xdb12274 loads 4 bytes from a0 (arg0 at entry) +0x7a10.
  The `jalr` at 0xdb121cc calls (unknown callee) with a0=[a0+30488], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb121ec calls (unknown callee) with a0=[a0+30492], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xdb12224 calls (unknown callee) with a0=a0+31060, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xdb12244 calls (unknown callee) with a0=a0+30940, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xdb12258 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xdb12280 calls (unknown callee) with a0=a0+31192, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+31208].
  The `beq` branch at 0xdb121d8 targets 0xdb121f4, is taken when v0(=[a0+3214]:1) == 0, and falls through when v0(=[a0+3214]:1) != 0.
  The `beq` branch at 0xdb121f8 targets 0xdb1220c, is taken when v1(=[a0+3216]:1) == 0, and falls through when v1(=[a0+3216]:1) != 0.
  The `bne` branch at 0xdb12204 targets 0xdb12274, is taken when a3(=[a0+31208]) != 0, and falls through when a3(=[a0+31208]) == 0.
  The `beq` branch at 0xdb12210 targets 0xdb1222c, is taken when at(=[a0+3217]:1) == 0, and falls through when at(=[a0+3217]:1) != 0.
  The `beq` branch at 0xdb12230 targets 0xdb1224c, is taken when v0(=[a0+3218]:1) == 0, and falls through when v0(=[a0+3218]:1) != 0.
  The `beq` branch at 0xdb12288 targets 0xdb12210 and is always taken.
  The return at 0xdb1226c has v0 = ret(?).
- `__glChangeReadWindowSize` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb12290 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb12290-0xdb1229c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xdb12290 stores 4 bytes to a0 (arg0 at entry) +0xe78.
  The `sw` at 0xdb12298 stores 4 bytes to a0 (arg0 at entry) +0xe74.
  The return at 0xdb12294 has v0 = ?.
- `__glOdysseyWindowToNormalizedEyeZ` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdcd2f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbdcd2f0-0xbdcd380 (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0xbdcd314 loads 8 bytes from abs 0x1020.
  The `ldc1` at 0xbdcd320 loads 8 bytes from [0x1020]:8 +0x18ce8.
  The `ldc1` at 0xbdcd328 loads 8 bytes from [0x1020]:8 +0x18cf0.
  The `bgezall` at 0xbdcd310 calls __glOdysseyWindowToEyeZ [0xbdcd160] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bc1t` branch at 0xbdcd354 targets 0xbdcd374, is taken when f6 < f0(=0x0) (c.lt.d at 0xbdcd348), and falls through when not (f6 < f0(=0x0) (c.lt.d at 0xbdcd348)).
  The `beq` branch at 0xbdcd378 targets 0xbdcd364 and is always taken.
  The return at 0xbdcd36c has v0 = [0x1020]:8+131072.
- `__glChangeWindowSize` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbe18670 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbe18670-0xbe1878c (284 bytes).
  It occupies 284 bytes.
  The `sw` at 0xbe18678 stores 4 bytes to a0 (arg0 at entry) +0xfe0.
  The `sw` at 0xbe18680 stores 4 bytes to a0 (arg0 at entry) +0xfe4.
  The `ld` at 0xbe18698 loads 8 bytes from a0 (arg0 at entry) +0x9a28.
  The `ld` at 0xbe186a8 loads 8 bytes from [a0+39464]:8 +0x58.
  The `lbu` at 0xbe186c0 loads 1 byte from a0 (arg0 at entry) +0xdee.
  The `ld` at 0xbe186cc loads 8 bytes from a0 (arg0 at entry) +0x9a30.
  The `ld` at 0xbe186d0 loads 8 bytes from [a0+39472]:8 +0x58.
  The `lbu` at 0xbe186e0 loads 1 byte from a0 (arg0 at entry) +0xdf0.
  The `ld` at 0xbe186ec loads 8 bytes from a0 (arg0 at entry) +0x9ea0.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xdf1, including `lbu` at 0xbe186f8, `lbu` at 0xbe18788.
  The `ld` at 0xbe18704 loads 8 bytes from a0 (arg0 at entry) +0x9e10.
  The `lbu` at 0xbe1871c loads 1 byte from a0 (arg0 at entry) +0xdf2.
  The `ld` at 0xbe18728 loads 8 bytes from a0 (arg0 at entry) +0x9d38.
  The `ld` at 0xbe18740 loads 8 bytes from a0 (arg0 at entry) +0x46a8.
  The `ld` at 0xbe1876c loads 8 bytes from a0 (arg0 at entry) +0x9ee0.
  The `jalr` at 0xbe186b8 calls (unknown callee) with a0=[a0+39464]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xbe186d8 calls (unknown callee) with a0=[a0+39472]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xbe18714 calls (unknown callee) with a0=a0+40376, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+3569]:1.
  The `jalr` at 0xbe18738 calls (unknown callee) with a0=a0+40160, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+3570]:1.
  The `jalr` at 0xbe18750 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xbe1877c calls (unknown callee) with a0=a0+40584, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0xbe186c4 targets 0xbe186e0, is taken when at(=[a0+3566]:1) == 0, and falls through when at(=[a0+3566]:1) != 0.
  The `beq` branch at 0xbe186e4 targets 0xbe186f8, is taken when v0(=[a0+3568]:1) == 0, and falls through when v0(=[a0+3568]:1) != 0.
  The `bne` branch at 0xbe186f0 targets 0xbe1876c, is taken when v1(=[a0+40608]:8) != 0, and falls through when v1(=[a0+40608]:8) == 0.
  The `beq` branch at 0xbe186fc targets 0xbe1871c, is taken when a3(=[a0+3569]:1) == 0, and falls through when a3(=[a0+3569]:1) != 0.
  The `beq` branch at 0xbe18720 targets 0xbe18740, is taken when a3(=[a0+3570]:1) == 0, and falls through when a3(=[a0+3570]:1) != 0.
  The `beq` branch at 0xbe18784 targets 0xbe186fc and is always taken.
  The return at 0xbe18764 has v0 = ret(?).
- `__glChangeReadWindowSize` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbe18790 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbe18790-0xbe1879c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xbe18790 stores 4 bytes to a0 (arg0 at entry) +0xfec.
  The `sw` at 0xbe18798 stores 4 bytes to a0 (arg0 at entry) +0xfe8.
  The return at 0xbe18794 has v0 = ?.
- `dma_mapinit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.
- `r1nkperf_data_register_get` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x95f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x95f4-0x965c (104 bytes).
  It occupies 104 bytes.
  The `bne` branch at 0x95f4 targets 0x9608, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x960c targets 0x9620, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `bne` branch at 0x9624 targets 0x9638, is taken when a0 != at(=0x2), and falls through when a0 == at(=0x2).
  The `bne` branch at 0x963c targets 0x9650, is taken when a0 != at(=0x3), and falls through when a0 == at(=0x3).
  The return at 0x9600 has v0 = ?.
  The return at 0x9618 has v0 = ?.
  The return at 0x9630 has v0 = ?.
  The return at 0x9648 has v0 = ?.
  The return at 0x9654 has v0 = 0x0.
- `r1nkperf_control_register_get` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x965c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x965c-0x96c4 (104 bytes).
  It occupies 104 bytes.
  The `bne` branch at 0x965c targets 0x9670, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x9674 targets 0x9688, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `bne` branch at 0x968c targets 0x96a0, is taken when a0 != at(=0x2), and falls through when a0 == at(=0x2).
  The `bne` branch at 0x96a4 targets 0x96b8, is taken when a0 != at(=0x3), and falls through when a0 == at(=0x3).
  The return at 0x9668 has v0 = ?.
  The return at 0x9680 has v0 = ?.
  The return at 0x9698 has v0 = ?.
  The return at 0x96b0 has v0 = ?.
  The return at 0x96bc has v0 = 0x0.
- `r1nkperf_data_register_set` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x96c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x96c4-0x9728 (100 bytes).
  It occupies 100 bytes.
  The `bne` branch at 0x96c4 targets 0x96d8, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x96dc targets 0x96f0, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `bne` branch at 0x96f4 targets 0x9708, is taken when a0 != at(=0x2), and falls through when a0 == at(=0x2).
  The `bne` branch at 0x970c targets 0x9720, is taken when a0 != at(=0x3), and falls through when a0 == at(=0x3).
  The return at 0x96d0 has v0 = ?.
  The return at 0x96e8 has v0 = ?.
  The return at 0x9700 has v0 = ?.
  The return at 0x9718 has v0 = ?.
  The return at 0x9720 has v0 = ?.
- `r1nkperf_control_register_set` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9728 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9728-0x978c (100 bytes).
  It occupies 100 bytes.
  The `bne` branch at 0x9728 targets 0x973c, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x9740 targets 0x9754, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `bne` branch at 0x9758 targets 0x976c, is taken when a0 != at(=0x2), and falls through when a0 == at(=0x2).
  The `bne` branch at 0x9770 targets 0x9784, is taken when a0 != at(=0x3), and falls through when a0 == at(=0x3).
  The return at 0x9734 has v0 = ?.
  The return at 0x974c has v0 = ?.
  The return at 0x9764 has v0 = ?.
  The return at 0x977c has v0 = ?.
  The return at 0x9784 has v0 = ?.
- `klsave_md_registers` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x18f64 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x18f64-0x190d4 (368 bytes).
  It occupies 368 bytes.
  The `ld` at 0x18f80 loads 8 bytes from (a3 << 0x21) -0x6fffffffcc000000.
  The `ld` at 0x18fb8 loads 8 bytes from ((a3 << 0x21)+0x9600000000000000 | 0x2000) +0x48.
  The `lw` at 0x18fc8 loads 4 bytes from ?.
  The `lw` at 0x19014 loads 4 bytes from ret(find_first_component) +0x30.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x19080, `sd` at 0x1908c, `sd` at 0x19098.
  4 such `ld` accesses load 8 bytes from abs 0x9200000001030100, including `ld` at 0x19090, `ld` at 0x190a0, `ld` at 0x190b4.
  The `jal` at 0x18fdc calls find_lboard with a0=?, a1=0x11, a2=?, a3=?.
  The `jal` at 0x18ff0 calls find_first_component with a0=ret(find_lboard), a1=0x2, a2=?, a3=?.
  The `jal` at 0x19070 calls chk_for_pebrick with a0=a3 at entry (arg3), a1=a1 at entry (arg1), a2=-0x1, a3=a3 at entry (arg3), a6=(a3 << 0x21)+0x9600000000000000, a7=(a3 << 0x21).
  The `beq` branch at 0x18fac targets 0x19070, is taken when at(?) == v1(=0xc000), and falls through when at(?) != v1(=0xc000).
  The `beq` branch at 0x18fd0 targets 0x18fdc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x18fe4 targets 0x19058, is taken when v0(=ret(find_lboard)) == 0, and falls through when v0(=ret(find_lboard)) != 0.
  The `beq` branch at 0x19004 targets 0x19058, is taken when v0(=ret(find_first_component)) == 0, and falls through when v0(=ret(find_first_component)) != 0.
  The `beq` branch at 0x19034 targets 0x1905c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1903c targets 0x1909c, is taken when s0(=a2) == a3(=0x2), and falls through when s0(=a2) != a3(=0x2).
  The `beq` branch at 0x19044 targets 0x190ac, is taken when s0(=a2) == a6(=0x1), and falls through when s0(=a2) != a6(=0x1).
  The `beq` branch at 0x1904c targets 0x190c0, is taken when s0(=a2) == a2(=0x3), and falls through when s0(=a2) != a2(=0x3).
  The `beq` branch at 0x19054 targets 0x19080, is taken when s0(=a2) == a7(=0x4), and falls through when s0(=a2) != a7(=0x4).
  The `beq` branch at 0x19078 targets 0x18fdc and is always taken.
  The `beq` branch at 0x19094 targets 0x19058 and is always taken.
  The `beq` branch at 0x190a4 targets 0x19058 and is always taken.
  The `beq` branch at 0x190b8 targets 0x19058 and is always taken.
  The `beq` branch at 0x190cc targets 0x19058 and is always taken.
  The return at 0x19068 has v0 = one of ret(find_first_component), ?.
- `klsave_spool_registers` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1994c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1994c-0x19b20 (468 bytes).
  It occupies 468 bytes.
  The `ld` at 0x19964 loads 8 bytes from abs 0x9200000001000020.
  The `ld` at 0x19980 loads 8 bytes from (ret(get_nasid) << 0x21) -0x6fffffffcc000000.
  2 such `ld` accesses load 8 bytes from ((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000) +0x48, including `ld` at 0x199c4, `ld` at 0x19a20.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x199d8, `lw` at 0x19a34.
  The `lw` at 0x19a88 loads 4 bytes from ret(find_first_component) +0x30.
  6 such `sd` accesses store 8 bytes to ?, including `sd` at 0x19ac8, `sd` at 0x19acc, `sd` at 0x19ad4.
  2 such `ld` accesses load 8 bytes from abs 0x9200000001030100, including `ld` at 0x19ad0, `ld` at 0x19b14.
  The `jal` at 0x1996c calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19994 calls get_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1999c calls get_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x199e4 calls get_nasid with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x199ec calls get_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x199f4 calls get_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19a4c calls find_lboard with a0=?, a1=0x11, a2=?, a3=?.
  The `jal` at 0x19a60 calls find_first_component with a0=ret(find_lboard), a1=0x2, a2=?, a3=?.
  The `jal` at 0x19aec calls get_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19af4 calls chk_for_pebrick with a0=ret(get_nasid), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1998c targets 0x19aec, is taken when t8(?) == t9(=0xc000), and falls through when t8(?) != t9(=0xc000).
  The `beq` branch at 0x199dc targets 0x19a48, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x19a54 targets 0x19ad8, is taken when v0(=ret(find_lboard)) == 0, and falls through when v0(=ret(find_lboard)) != 0.
  The `beq` branch at 0x19a74 targets 0x19ad8, is taken when v0(=ret(find_first_component)) == 0, and falls through when v0(=ret(find_first_component)) != 0.
  The `beq` branch at 0x19aa8 targets 0x19b04, is taken when (t1(=a2) & 0x1) == 0, and falls through when (t1(=a2) & 0x1) != 0.
  The `beq` branch at 0x19ab4 targets 0x19ad8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bltz` branch at 0x19ac0 targets 0x19b0c, is taken when a7(=(([0x9200000001000020]:8 << 0x0) << 0x1e)) < 0 (signed), and falls through when a7(=(([0x9200000001000020]:8 << 0x0) << 0x1e)) >= 0 (signed).
  The `beq` branch at 0x19afc targets 0x19a48 and is always taken.
  The `beq` branch at 0x19b04 targets 0x19ab4 and is always taken.
  The `beq` branch at 0x19b18 targets 0x19ad8 and is always taken.
  The return at 0x19ae4 has v0 = one of ret(find_lboard), ret(find_first_component), ?.
- `hub_dma_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x225c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x225c4-0x225cc (8 bytes).
  It occupies 8 bytes.
  The return at 0x225c4 has v0 = ?.
- `hub_dmamap_alloc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x225cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x225cc-0x2264c (128 bytes).
  It occupies 128 bytes.
  The `sw` at 0x22610 stores 4 bytes to ret(kern_malloc) +0x0.
  2 such `sw` accesses store 4 bytes to ret(kern_malloc) +0xc, including `sw` at 0x22618, `sw` at 0x2263c.
  The `sw` at 0x22624 stores 4 bytes to ret(kern_malloc) +0x8.
  The `sb` at 0x22638 stores 1 byte to ret(kern_malloc) +0x4.
  The `jal` at 0x225dc calls xwidget_info_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x225e8 calls xwidget_info_id_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x225f4 calls xwidget_info_master_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x22604 calls kern_malloc with a0=0x10, a1=?, a2=?, a3=?.
  The `beq` branch at 0x22634 targets 0x22640, is taken when (at(=a3) & 0x1) == 0, and falls through when (at(=a3) & 0x1) != 0.
  The return at 0x22644 has v0 = ret(kern_malloc).
- `hub_dmamap_free` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2264c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2264c-0x22674 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0x22650 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x22664 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `jal` at 0x22660 calls kern_free with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2266c has v0 = ret(kern_free).
- `hub_dmamap_addr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22674 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22674-0x226d0 (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0x22674 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x226ac stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `lw` at 0x226b8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0x226bc calls cmn_err with a0=0x4, a1=sym(.rodata)+45112, a2=[a0], a3=a3 at entry (arg3), a5=a0 at entry (arg0), a6=([a0+12] | 0x2).
  The `beq` branch at 0x2268c targets 0x226a8, is taken when (a4(=[a0+12]) & 0x2) == 0, and falls through when (a4(=[a0+12]) & 0x2) != 0.
  The `beq` branch at 0x22698 targets 0x226b0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x226a8 targets 0x226a0 and is always taken.
  The `beq` branch at 0x226c8 targets 0x226a0 and is always taken.
  The return at 0x226a0 has v0 = a1.
- `hub_dmamap_list` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x226d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x226d0-0x2272c (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0x226d0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x22708 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `lw` at 0x22714 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0x22718 calls cmn_err with a0=0x4, a1=sym(.rodata)+45112, a2=[a0], a3=a3 at entry (arg3), a5=a0 at entry (arg0), a6=([a0+12] | 0x2).
  The `beq` branch at 0x226e8 targets 0x22704, is taken when (a4(=[a0+12]) & 0x2) == 0, and falls through when (a4(=[a0+12]) & 0x2) != 0.
  The `beq` branch at 0x226f4 targets 0x2270c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x22704 targets 0x226fc and is always taken.
  The `beq` branch at 0x22724 targets 0x226fc and is always taken.
  The return at 0x226fc has v0 = a1.
- `hub_dmamap_done` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2272c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2272c-0x2277c (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x2272c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x2274c stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `lw` at 0x22768 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0x2276c calls cmn_err with a0=0x4, a1=sym(.rodata)+45112, a2=[a0], a3=?, a4=a0 at entry (arg0), a5=-0x3.
  The `beq` branch at 0x22744 targets 0x22758, is taken when (a2(=[a0+12]) & 0x2) == 0, and falls through when (a2(=[a0+12]) & 0x2) != 0.
  The `bne` branch at 0x22758 targets 0x22750, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x22774 targets 0x22750 and is always taken.
  The return at 0x22750 has v0 = one of ?, ret(cmn_err).
- `hub_dmatrans_addr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2277c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2277c-0x22784 (8 bytes).
  It occupies 8 bytes.
  The return at 0x2277c has v0 = a2.
- `hub_dmatrans_list` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22784 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22784-0x2278c (8 bytes).
  It occupies 8 bytes.
  The return at 0x22784 has v0 = a2.
- `hub_dmamap_drain` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2278c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2278c-0x22794 (8 bytes).
  It occupies 8 bytes.
  The return at 0x2278c has v0 = ?.
- `hub_dmaaddr_drain` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22794 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22794-0x2279c (8 bytes).
  It occupies 8 bytes.
  The return at 0x22794 has v0 = ?.
- `hub_dmalist_drain` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2279c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2279c-0x227a4 (8 bytes).
  It occupies 8 bytes.
  The return at 0x2279c has v0 = ?.
- `hub_check_window_equiv` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22c6c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22c6c-0x22cd4 (104 bytes).
  It occupies 104 bytes.
  The `jal` at 0x22c7c calls hub_check_is_widget0 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x22c8c calls hub_check_is_widget0 with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x22c84 targets 0x22ca8, is taken when v0(=ret(hub_check_is_widget0)) == 0, and falls through when v0(=ret(hub_check_is_widget0)) != 0.
  The `beq` branch at 0x22c94 targets 0x22ca8, is taken when v0(=ret(hub_check_is_widget0)) == 0, and falls through when v0(=ret(hub_check_is_widget0)) != 0.
  The `beq` branch at 0x22c9c targets 0x22cc4 and is always taken.
  The `bne` branch at 0x22cb8 targets 0x22cc4, is taken when at(?) != v0(?), and falls through when at(?) == v0(?).
  The return at 0x22ccc has v0 = one of 0x0, 0x1.
  The instructions from 0x22ca4 to 0x22ca4 are not reached by any path from the entry, and their branches are not listed.
- `r1nkperf_data_register_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23394 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x23394-0x233fc (104 bytes).
  It occupies 104 bytes.
  The `bne` branch at 0x23394 targets 0x233a8, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x233ac targets 0x233c0, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `bne` branch at 0x233c4 targets 0x233d8, is taken when a0 != at(=0x2), and falls through when a0 == at(=0x2).
  The `bne` branch at 0x233dc targets 0x233f0, is taken when a0 != at(=0x3), and falls through when a0 == at(=0x3).
  The return at 0x233a0 has v0 = ?.
  The return at 0x233b8 has v0 = ?.
  The return at 0x233d0 has v0 = ?.
  The return at 0x233e8 has v0 = ?.
  The return at 0x233f4 has v0 = 0x0.
- `r1nkperf_control_register_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x233fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x233fc-0x23464 (104 bytes).
  It occupies 104 bytes.
  The `bne` branch at 0x233fc targets 0x23410, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x23414 targets 0x23428, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `bne` branch at 0x2342c targets 0x23440, is taken when a0 != at(=0x2), and falls through when a0 == at(=0x2).
  The `bne` branch at 0x23444 targets 0x23458, is taken when a0 != at(=0x3), and falls through when a0 == at(=0x3).
  The return at 0x23408 has v0 = ?.
  The return at 0x23420 has v0 = ?.
  The return at 0x23438 has v0 = ?.
  The return at 0x23450 has v0 = ?.
  The return at 0x2345c has v0 = 0x0.
- `r1nkperf_data_register_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23464 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x23464-0x234c8 (100 bytes).
  It occupies 100 bytes.
  The `bne` branch at 0x23464 targets 0x23478, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x2347c targets 0x23490, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `bne` branch at 0x23494 targets 0x234a8, is taken when a0 != at(=0x2), and falls through when a0 == at(=0x2).
  The `bne` branch at 0x234ac targets 0x234c0, is taken when a0 != at(=0x3), and falls through when a0 == at(=0x3).
  The return at 0x23470 has v0 = ?.
  The return at 0x23488 has v0 = ?.
  The return at 0x234a0 has v0 = ?.
  The return at 0x234b8 has v0 = ?.
  The return at 0x234c0 has v0 = ?.
- `r1nkperf_control_register_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x234c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x234c8-0x2352c (100 bytes).
  It occupies 100 bytes.
  The `bne` branch at 0x234c8 targets 0x234dc, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x234e0 targets 0x234f4, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `bne` branch at 0x234f8 targets 0x2350c, is taken when a0 != at(=0x2), and falls through when a0 == at(=0x2).
  The `bne` branch at 0x23510 targets 0x23524, is taken when a0 != at(=0x3), and falls through when a0 == at(=0x3).
  The return at 0x234d4 has v0 = ?.
  The return at 0x234ec has v0 = ?.
  The return at 0x23504 has v0 = ?.
  The return at 0x2351c has v0 = ?.
  The return at 0x23524 has v0 = ?.
- `hubdev_register` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d2fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d2fc-0x2d354 (88 bytes).
  It occupies 88 bytes.
  The `sd` at 0x2d334 stores 8 bytes to ret(kmem_zalloc) +0x8.
  The `sd` at 0x2d340 stores 8 bytes to ret(kmem_zalloc) +0x0.
  The `jal` at 0x2d310 calls kmem_zalloc with a0=0x10, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2d320 calls mutex_lock with a0=sym(hubdev_callout_mutex), a1=0x19, a2=?, a3=?.
  The `jal` at 0x2d33c calls mutex_unlock with a0=sym(hubdev_callout_mutex), a1=?, a2=?, a3=?.
  The return at 0x2d34c has v0 = ret(mutex_unlock).
- `hubdev_unregister` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d354 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d354-0x2d3d4 (128 bytes).
  It occupies 128 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2d37c, `ld` at 0x2d38c, `ld` at 0x2d3b4.
  The `sd` at 0x2d3c0 stores 8 bytes to ?.
  The `jal` at 0x2d368 calls mutex_lock with a0=sym(hubdev_callout_mutex), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2d398 calls mutex_unlock with a0=sym(hubdev_callout_mutex), a1=?, a2=?, a3=?.
  The `jal` at 0x2d3bc calls kmem_free with a0=?, a1=0x10, a2=?, a3=?.
  The `jal` at 0x2d3c4 calls mutex_unlock with a0=sym(hubdev_callout_mutex), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2d374 targets 0x2d398, is taken when a0(=[sym(hubdev_callout_list)]:8) == 0, and falls through when a0(=[sym(hubdev_callout_list)]:8) != 0.
  The `beq` branch at 0x2d380 targets 0x2d3b4, is taken when at(?) == s0(=a0), and falls through when at(?) != s0(=a0).
  The `bne` branch at 0x2d390 targets 0x2d37c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x2d3cc targets 0x2d3a4 and is always taken.
  The return at 0x2d3ac has v0 = one of 0x0, 0x2.
- `brick_register` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f440 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f440-0x2f530 (240 bytes).
  It occupies 240 bytes.
  4 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x2f448, `lw` at 0x2f4b8, `lw` at 0x2f4f0.
  The `sh` at 0x2f49c stores 2 bytes to ?.
  The `sh` at 0x2f4fc stores 2 bytes to (a1 + ([a2] + [a2])) +0x0.
  The `sw` at 0x2f510 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0x2f4a0 calls moduleid_to_decompressed_rack [0x2f334] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2f4b4 calls brick_lookup [0x2f3ac] with a0=ret(moduleid_to_decompressed_rack), a1=?, a2=a1 at entry (arg1), a3=[a2].
  The `jal` at 0x2f4c8 calls printf with a0=sym(.rodata)+49920, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x2f518 calls printf with a0=sym(.rodata)+49920, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2f46c targets 0x2f514, is taken when at(=[a2]) >= a3 (signed), and falls through when at(=[a2]) < a3 (signed).
  The `bne` branch at 0x2f474 targets 0x2f4a0, is taken when a2 != 0, and falls through when a2 == 0.
  The `blez` branch at 0x2f47c targets 0x2f528, is taken when a3 <= 0 (signed), and falls through when a3 > 0 (signed).
  The `bne` branch at 0x2f498 targets 0x2f484, is taken when v0(?) < a3 (signed), and falls through when v0(?) >= a3 (signed).
  The `beq` branch at 0x2f4bc targets 0x2f4f0, is taken when v0(=ret(brick_lookup)) == s1(=-0x1), and falls through when v0(=ret(brick_lookup)) != s1(=-0x1).
  The `beq` branch at 0x2f50c targets 0x2f4d4 and is always taken.
  The `beq` branch at 0x2f520 targets 0x2f4d4 and is always taken.
  The `beq` branch at 0x2f528 targets 0x2f4a0 and is always taken.
  The return at 0x2f4e8 has v0 = one of 0x0, 0x1.
- `rbrick_register` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f530 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f530-0x2f558 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x2f544 calls brick_register [0x2f440] with a0=a0 at entry (arg0), a1=sym(iobrick_moduleids), a2=sym(num_rbricks), a3=0x80.
  The return at 0x2f550 has v0 = ret(brick_register).
- `iobrick_register` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f57c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f57c-0x2f5a0 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x2f58c calls brick_register [0x2f440] with a0=a0 at entry (arg0), a1=sym(iobrick_moduleids), a2=sym(num_iobricks), a3=0x80.
  The return at 0x2f598 has v0 = ret(brick_register).
- `hub_dma_enabled` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x38f3c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x38f3c-0x39000 (196 bytes).
  It occupies 196 bytes.
  The `lh` at 0x38f98 loads 2 bytes from ?.
  The `ld` at 0x38fac loads 8 bytes from table(0x9200000001c00118) +0x0.
  The `jal` at 0x38f48 calls xwidget_info_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x38f54 calls xwidget_info_id_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x38f60 calls xwidget_info_master_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x38f7c calls hwgraph_info_get_LBL with a0=ret(xwidget_info_master_get), a1=sym(.rodata)+56232, a2=sp-48, a3=?.
  The `jal` at 0x38ff0 calls cmn_err with a0=0x6, a1=sym(.rodata)+56232, a2=?, a3=a0 at entry (arg0), a7=-0x1.
  The `beq` branch at 0x38f90 targets 0x38fd4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x38fa0 targets 0x38fdc, is taken when a4(?) == a7(=-0x1), and falls through when a4(?) != a7(=-0x1).
  The `beq` branch at 0x38fc0 targets 0x38fe4, is taken when (t1(=entry(0x9200000001c00118)) & t2(?)) == 0, and falls through when (t1(=entry(0x9200000001c00118)) & t2(?)) != 0.
  The `beq` branch at 0x38fd4 targets 0x38fc8 and is always taken.
  The `beq` branch at 0x38fdc targets 0x38fcc and is always taken.
  The `beq` branch at 0x38ff8 targets 0x38fc8 and is always taken.
  The return at 0x38fcc has v0 = one of 0x0, 0x1.
- `dma_geth` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x439dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x439dc-0x439e4 (8 bytes).
  It occupies 8 bytes.
  The return at 0x439dc has v0 = 0x0.
- `dmamap_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x439ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x439ec-0x439f4 (8 bytes).
  It occupies 8 bytes.
  The return at 0x439ec has v0 = 0x0.
- `__glOdysseyWindowToNormalizedEyeZ` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9e4890 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9e4890-0xd9e4958 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd9e48b4 loads 4 bytes from abs 0x1010.
  The `ldc1` at 0xd9e48c0 loads 8 bytes from [0x1010] +0x165c8.
  The `ldc1` at 0xd9e48c8 loads 8 bytes from [0x1010] +0x165d0.
  The `bgezall` at 0xd9e48b0 calls __glOdysseyWindowToEyeZ [0xd9e4710] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e4930 calls isnan with a0=?, a1=?, a2=?, a3=?.
  The `bc1t` branch at 0xd9e48f4 targets 0xd9e4914, is taken when f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0xd9e48e8), and falls through when not (f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0xd9e48e8)).
  The `bc1f` branch at 0xd9e4900 targets 0xd9e492c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0xd9e490c has v0 = [0x1010]+65536.
  The return at 0xd9e4924 has v0 = [0x1010]+65536.
  The return at 0xd9e4950 has v0 = ret(isnan).
- `__glChangeReadWindowSize` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda35140 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda35140-0xda3514c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xda35140 stores 4 bytes to a0 (arg0 at entry) +0xe80.
  The `sw` at 0xda35148 stores 4 bytes to a0 (arg0 at entry) +0xe7c.
  The return at 0xda35144 has v0 = ?.
- `__glChangeReadWindowSize` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x32ca400 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x32ca400-0x32ca40c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0x32ca400 stores 4 bytes to a0 (arg0 at entry) +0xfe4.
  The `sw` at 0x32ca408 stores 4 bytes to a0 (arg0 at entry) +0xfe0.
  The return at 0x32ca404 has v0 = ?.
- `__glOdysseyWindowToNormalizedEyeZ` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9f8060 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xd9f8060-0xd9f8148 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0xd9f8070 loads 4 bytes from abs 0x1010.
  The `ldc1` at 0xd9f8098 loads 8 bytes from [0x1010] +0x165c8.
  The `ldc1` at 0xd9f809c loads 8 bytes from [0x1010] +0x165d0.
  The `jalr` at 0xd9f8080 calls __glOdysseyWindowToEyeZ [0xd9f7e0c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f8114 calls isnan with a0=?, a1=?, a2=?, a3=?.
  The `bc1fl` branch at 0xd9f80d0 targets 0xd9f80e8, is taken when not (f12 < f18 (c.lt.d at 0xd9f80c8)), and falls through when f12 < f18 (c.lt.d at 0xd9f80c8); its branch-likely delay slot `mtc1 at,$f5` at 0xd9f80d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9f80dc targets 0xd9f8138 and is always taken.
  The `bc1f` branch at 0xd9f80f8 targets 0xd9f810c, is taken when not (f4 < f12 (c.lt.d at 0xd9f80f0)), and falls through when f4 < f12 (c.lt.d at 0xd9f80f0).
  The `beq` branch at 0xd9f8104 targets 0xd9f8138 and is always taken.
  The `beq` branch at 0xd9f8120 targets 0xd9f8134, is taken when v0(=ret(isnan)) == 0, and falls through when v0(=ret(isnan)) != 0.
  The return at 0xd9f8140 has v0 = one of [0x1010]+91592, ret(isnan).
  The instructions from 0xd9f80e4 to 0xd9f80e4 are not reached by any path from the entry, and their branches are not listed.
- `__glChangeWindowSize` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda4b65c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xda4b65c-0xda4b774 (280 bytes).
  It occupies 280 bytes.
  The `sw` at 0xda4b684 stores 4 bytes to a0 (arg0 at entry) +0xe74.
  The `sw` at 0xda4b688 stores 4 bytes to a0 (arg0 at entry) +0xe78.
  The `lw` at 0xda4b68c loads 4 bytes from a0 (arg0 at entry) +0x77f8.
  The `lw` at 0xda4b698 loads 4 bytes from [a0+30712] +0x38.
  The `lbu` at 0xda4b6a4 loads 1 byte from a0 (arg0 at entry) +0xc96.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc98, including `lbu` at 0xda4b6b0, `lbu` at 0xda4b6d0.
  The `lw` at 0xda4b6b4 loads 4 bytes from a0 (arg0 at entry) +0x77fc.
  The `lw` at 0xda4b6c0 loads 4 bytes from [a0+30716] +0x38.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc99, including `lbu` at 0xda4b6d8, `lbu` at 0xda4b6e4, `lbu` at 0xda4b700.
  The `lw` at 0xda4b6dc loads 4 bytes from a0 (arg0 at entry) +0x7ac8.
  The `lw` at 0xda4b6e8 loads 4 bytes from a0 (arg0 at entry) +0x7af0.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc9a, including `lbu` at 0xda4b708, `lbu` at 0xda4b724.
  The `lw` at 0xda4b70c loads 4 bytes from a0 (arg0 at entry) +0x7a6c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2ec4, including `lw` at 0xda4b72c, `lw` at 0xda4b748.
  The `lw` at 0xda4b730 loads 4 bytes from a0 (arg0 at entry) +0x79f4.
  The `jalr` at 0xda4b69c calls (unknown callee) with a0=[a0+30712], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4b6c4 calls (unknown callee) with a0=[a0+30716], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda4b6f4 calls (unknown callee) with a0=a0+31416, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda4b718 calls (unknown callee) with a0=a0+31284, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda4b73c calls (unknown callee) with a0=a0+31164, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda4b750 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xda4b6ac targets 0xda4b6d4, is taken when t6(=[a0+3222]:1) == 0, and falls through when t6(=[a0+3222]:1) != 0; its branch-likely delay slot `lbu t7,3224(s0)` at 0xda4b6b0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda4b6d4 targets 0xda4b704, is taken when t7(=[a0+3224]:1) == 0, and falls through when t7(=[a0+3224]:1) != 0; its branch-likely delay slot `lbu t0,3225(s0)` at 0xda4b6d8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda4b6e0 targets 0xda4b704, is taken when t8(=[a0+31432]) == 0, and falls through when t8(=[a0+31432]) != 0; its branch-likely delay slot `lbu t0,3225(s0)` at 0xda4b6e4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda4b704 targets 0xda4b728, is taken when t0(=[a0+3225]:1) == 0, and falls through when t0(=[a0+3225]:1) != 0; its branch-likely delay slot `lbu t1,3226(s0)` at 0xda4b708 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda4b728 targets 0xda4b74c, is taken when t1(=[a0+3226]:1) == 0, and falls through when t1(=[a0+3226]:1) != 0; its branch-likely delay slot `lw t9,11972(s0)` at 0xda4b72c runs only when taken and is annulled on fall-through.
  The return at 0xda4b76c has v0 = ret(?).
- `__glChangeReadWindowSize` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xda4b774 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xda4b774-0xda4b780 (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xda4b774 stores 4 bytes to a0 (arg0 at entry) +0xe7c.
  The `sw` at 0xda4b77c stores 4 bytes to a0 (arg0 at entry) +0xe80.
  The return at 0xda4b778 has v0 = ?.
- `__glOdysseyWindowToNormalizedEyeZ` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9e4890 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xd9e4890-0xd9e4958 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd9e48b4 loads 4 bytes from abs 0x1010.
  The `ldc1` at 0xd9e48c0 loads 8 bytes from [0x1010] +0x165c8.
  The `ldc1` at 0xd9e48c8 loads 8 bytes from [0x1010] +0x165d0.
  The `bgezall` at 0xd9e48b0 calls __glOdysseyWindowToEyeZ [0xd9e4710] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e4930 calls isnan with a0=?, a1=?, a2=?, a3=?.
  The `bc1t` branch at 0xd9e48f4 targets 0xd9e4914, is taken when f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0xd9e48e8), and falls through when not (f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0xd9e48e8)).
  The `bc1f` branch at 0xd9e4900 targets 0xd9e492c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0xd9e490c has v0 = [0x1010]+65536.
  The return at 0xd9e4924 has v0 = [0x1010]+65536.
  The return at 0xd9e4950 has v0 = ret(isnan).
- `__glChangeWindowSize` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xda35030 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xda35030-0xda35134 (260 bytes).
  It occupies 260 bytes.
  The `sw` at 0xda35038 stores 4 bytes to a0 (arg0 at entry) +0xe78.
  The `sw` at 0xda3503c stores 4 bytes to a0 (arg0 at entry) +0xe74.
  The `lw` at 0xda35040 loads 4 bytes from a0 (arg0 at entry) +0x77f8.
  The `lw` at 0xda35054 loads 4 bytes from [a0+30712] +0x38.
  The `lbu` at 0xda35078 loads 1 byte from a0 (arg0 at entry) +0xc96.
  The `lw` at 0xda35084 loads 4 bytes from a0 (arg0 at entry) +0x77fc.
  The `lw` at 0xda35088 loads 4 bytes from [a0+30716] +0x38.
  The `lbu` at 0xda35098 loads 1 byte from a0 (arg0 at entry) +0xc98.
  The `lw` at 0xda350a4 loads 4 bytes from a0 (arg0 at entry) +0x7ac8.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc99, including `lbu` at 0xda350b0, `lbu` at 0xda35130.
  The `lw` at 0xda350bc loads 4 bytes from a0 (arg0 at entry) +0x7a6c.
  The `lbu` at 0xda350d0 loads 1 byte from a0 (arg0 at entry) +0xc9a.
  The `lw` at 0xda350dc loads 4 bytes from a0 (arg0 at entry) +0x79f4.
  The `lw` at 0xda350f0 loads 4 bytes from a0 (arg0 at entry) +0x2ec4.
  The `lw` at 0xda35118 loads 4 bytes from a0 (arg0 at entry) +0x7af0.
  The `jalr` at 0xda35070 calls (unknown callee) with a0=[a0+30712], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda35090 calls (unknown callee) with a0=[a0+30716], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda350c8 calls (unknown callee) with a0=a0+31284, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda350e8 calls (unknown callee) with a0=a0+31164, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+3226]:1.
  The `jalr` at 0xda350fc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda35124 calls (unknown callee) with a0=a0+31416, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0xda3507c targets 0xda35098, is taken when v1(=[a0+3222]:1) == 0, and falls through when v1(=[a0+3222]:1) != 0.
  The `beq` branch at 0xda3509c targets 0xda350b0, is taken when a0(=[a0+3224]:1) == 0, and falls through when a0(=[a0+3224]:1) != 0.
  The `bne` branch at 0xda350a8 targets 0xda35118, is taken when a1(=[a0+31432]) != 0, and falls through when a1(=[a0+31432]) == 0.
  The `beq` branch at 0xda350b4 targets 0xda350d0, is taken when a2(=[a0+3225]:1) == 0, and falls through when a2(=[a0+3225]:1) != 0.
  The `beq` branch at 0xda350d4 targets 0xda350f0, is taken when a3(=[a0+3226]:1) == 0, and falls through when a3(=[a0+3226]:1) != 0.
  The `beq` branch at 0xda3512c targets 0xda350b4 and is always taken.
  The return at 0xda35110 has v0 = ret(?).
- `__glChangeReadWindowSize` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xda35140 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xda35140-0xda3514c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xda35140 stores 4 bytes to a0 (arg0 at entry) +0xe80.
  The `sw` at 0xda35148 stores 4 bytes to a0 (arg0 at entry) +0xe7c.
  The return at 0xda35144 has v0 = ?.
- `__glOdysseyWindowToNormalizedEyeZ` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2229060 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2229060-0x2229128 (200 bytes).
  It occupies 200 bytes.
  The `ld` at 0x2229084 loads 8 bytes from abs 0x1020.
  The `ldc1` at 0x2229090 loads 8 bytes from [0x1020]:8 +0x18a38.
  The `ldc1` at 0x2229098 loads 8 bytes from [0x1020]:8 +0x18a40.
  The `bgezall` at 0x2229080 calls __glOdysseyWindowToEyeZ [0x2228ee0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2229100 calls isnan with a0=?, a1=?, a2=?, a3=?.
  The `bc1t` branch at 0x22290c4 targets 0x22290e4, is taken when f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0x22290b8), and falls through when not (f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0x22290b8)).
  The `bc1f` branch at 0x22290d0 targets 0x22290fc, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0x22290dc has v0 = [0x1020]:8+131072.
  The return at 0x22290f4 has v0 = [0x1020]:8+131072.
  The return at 0x2229120 has v0 = ret(isnan).
- `__glChangeWindowSize` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x227a2e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x227a2e0-0x227a400 (288 bytes).
  It occupies 288 bytes.
  The `sw` at 0x227a2e8 stores 4 bytes to a0 (arg0 at entry) +0xfdc.
  The `sw` at 0x227a2f4 stores 4 bytes to a0 (arg0 at entry) +0xfd8.
  The `ld` at 0x227a300 loads 8 bytes from a0 (arg0 at entry) +0x9950.
  The `ld` at 0x227a310 loads 8 bytes from [a0+39248]:8 +0x58.
  The `lbu` at 0x227a334 loads 1 byte from a0 (arg0 at entry) +0xde6.
  The `ld` at 0x227a340 loads 8 bytes from a0 (arg0 at entry) +0x9958.
  The `ld` at 0x227a344 loads 8 bytes from [a0+39256]:8 +0x58.
  The `lbu` at 0x227a354 loads 1 byte from a0 (arg0 at entry) +0xde8.
  The `ld` at 0x227a360 loads 8 bytes from a0 (arg0 at entry) +0x9dc8.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xde9, including `lbu` at 0x227a36c, `lbu` at 0x227a3fc.
  The `ld` at 0x227a378 loads 8 bytes from a0 (arg0 at entry) +0x9d38.
  The `lbu` at 0x227a390 loads 1 byte from a0 (arg0 at entry) +0xdea.
  The `ld` at 0x227a39c loads 8 bytes from a0 (arg0 at entry) +0x9c60.
  The `ld` at 0x227a3b4 loads 8 bytes from a0 (arg0 at entry) +0x4850.
  The `ld` at 0x227a3e0 loads 8 bytes from a0 (arg0 at entry) +0x9e08.
  The `jalr` at 0x227a32c calls (unknown callee) with a0=[a0+39248]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x227a34c calls (unknown callee) with a0=[a0+39256]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x227a388 calls (unknown callee) with a0=a0+40160, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x227a3ac calls (unknown callee) with a0=a0+39944, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x227a3c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x227a3f0 calls (unknown callee) with a0=a0+40368, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0x227a338 targets 0x227a354, is taken when t8(=[a0+3558]:1) == 0, and falls through when t8(=[a0+3558]:1) != 0.
  The `beq` branch at 0x227a358 targets 0x227a36c, is taken when t9(=[a0+3560]:1) == 0, and falls through when t9(=[a0+3560]:1) != 0.
  The `bne` branch at 0x227a364 targets 0x227a3e0, is taken when ra(=[a0+40392]:8) != 0, and falls through when ra(=[a0+40392]:8) == 0.
  The `beq` branch at 0x227a370 targets 0x227a390, is taken when at(=[a0+3561]:1) == 0, and falls through when at(=[a0+3561]:1) != 0.
  The `beq` branch at 0x227a394 targets 0x227a3b4, is taken when a1(=[a0+3562]:1) == 0, and falls through when a1(=[a0+3562]:1) != 0.
  The `beq` branch at 0x227a3f8 targets 0x227a370 and is always taken.
  The return at 0x227a3d8 has v0 = ret(?).
- `__glChangeReadWindowSize` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x227a400 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x227a400-0x227a40c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0x227a400 stores 4 bytes to a0 (arg0 at entry) +0xfe4.
  The `sw` at 0x227a408 stores 4 bytes to a0 (arg0 at entry) +0xfe0.
  The return at 0x227a404 has v0 = ?.
- `__glOdysseySoftClipBeginTriangles` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9f9fc8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9f9fc8-0xd9f9ffc (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xd9f9fec stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9f9ff0 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9f9ff8 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The return at 0xd9f9ff4 has v0 = ?.
- `__glOdysseySoftClipBeginTriangles` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9e63c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9e63c0-0xd9e63f4 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xd9e63d4 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `lw` at 0xd9e63dc loads 4 bytes from abs 0xdaf10bc.
  The `lw` at 0xd9e63e0 loads 4 bytes from abs 0xdaf05cc.
  The `sw` at 0xd9e63e4 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The `sw` at 0xd9e63f0 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9e63ec has v0 = 0xd9e6380.
- `__glOdysseySoftClipBeginTriangles` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222ab80 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x222ab80-0x222abb4 (52 bytes).
  It occupies 52 bytes.
  The `sd` at 0x222ab94 stores 8 bytes to a0 (arg0 at entry) +0x4e30.
  The `ld` at 0x222ab9c loads 8 bytes from abs 0x2340508.
  The `ld` at 0x222aba0 loads 8 bytes from abs 0x233ef20.
  The `sd` at 0x222aba4 stores 8 bytes to a0 (arg0 at entry) +0x4920.
  The `sd` at 0x222abb0 stores 8 bytes to a0 (arg0 at entry) +0x4890.
  The return at 0x222abac has v0 = 0x222ab40.
- `__glOdysseySoftClipBeginTriangles` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacdb48 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacdb48-0xdacdb7c (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xdacdb6c stores 4 bytes to a0 (arg0 at entry) +0x30e8.
  The `sw` at 0xdacdb70 stores 4 bytes to a0 (arg0 at entry) +0x2e04.
  The `sw` at 0xdacdb78 stores 4 bytes to a0 (arg0 at entry) +0x2e4c.
  The return at 0xdacdb74 has v0 = ?.
- `__glOdysseySoftClipBeginTriangles` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac95e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac95e0-0xdac9614 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xdac95f4 stores 4 bytes to a0 (arg0 at entry) +0x30e8.
  The `lw` at 0xdac95fc loads 4 bytes from abs 0xdbdaaf8.
  The `lw` at 0xdac9600 loads 4 bytes from abs 0xdbda044.
  The `sw` at 0xdac9604 stores 4 bytes to a0 (arg0 at entry) +0x2e4c.
  The `sw` at 0xdac9610 stores 4 bytes to a0 (arg0 at entry) +0x2e04.
  The return at 0xdac960c has v0 = 0xdac95a0.
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
- `__glOdysseySoftClipBeginTriangles` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacdb48 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacdb48-0xdacdb7c (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xdacdb6c stores 4 bytes to a0 (arg0 at entry) +0x30e8.
  The `sw` at 0xdacdb70 stores 4 bytes to a0 (arg0 at entry) +0x2e04.
  The `sw` at 0xdacdb78 stores 4 bytes to a0 (arg0 at entry) +0x2e4c.
  The return at 0xdacdb74 has v0 = ?.
- `__glOdysseySoftClipBeginTriangles` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac95e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac95e0-0xdac9614 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xdac95f4 stores 4 bytes to a0 (arg0 at entry) +0x30e8.
  The `lw` at 0xdac95fc loads 4 bytes from abs 0xdbdaaf8.
  The `lw` at 0xdac9600 loads 4 bytes from abs 0xdbda044.
  The `sw` at 0xdac9604 stores 4 bytes to a0 (arg0 at entry) +0x2e4c.
  The `sw` at 0xdac9610 stores 4 bytes to a0 (arg0 at entry) +0x2e04.
  The return at 0xdac960c has v0 = 0xdac95a0.
- `__glOdysseySoftClipBeginTriangles` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdcede0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbdcede0-0xbdcee14 (52 bytes).
  It occupies 52 bytes.
  The `sd` at 0xbdcedf4 stores 8 bytes to a0 (arg0 at entry) +0x4c88.
  The `ld` at 0xbdcedfc loads 8 bytes from abs 0xbee8968.
  The `ld` at 0xbdcee00 loads 8 bytes from abs 0xbee73f8.
  The `sd` at 0xbdcee04 stores 8 bytes to a0 (arg0 at entry) +0x4778.
  The `sd` at 0xbdcee10 stores 8 bytes to a0 (arg0 at entry) +0x46e8.
  The return at 0xbdcee0c has v0 = 0xbdceda0.
- `__glOdysseySoftClipBeginTriangles` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9f9fc8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9f9fc8-0xd9f9ffc (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xd9f9fec stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9f9ff0 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9f9ff8 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The return at 0xd9f9ff4 has v0 = ?.
- `__glOdysseySoftClipBeginTriangles` in `usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9e63c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9e63c0-0xd9e63f4 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xd9e63d4 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `lw` at 0xd9e63dc loads 4 bytes from abs 0xdaf10bc.
  The `lw` at 0xd9e63e0 loads 4 bytes from abs 0xdaf05cc.
  The `sw` at 0xd9e63e4 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The `sw` at 0xd9e63f0 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9e63ec has v0 = 0xd9e6380.
- `__glOdysseySoftClipBeginTriangles` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9f9fc8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY/libGLcore.so`.
  Range: 0xd9f9fc8-0xd9f9ffc (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xd9f9fec stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9f9ff0 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9f9ff8 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The return at 0xd9f9ff4 has v0 = ?.
- `__glOdysseySoftClipBeginTriangles` in `usr/gfx/arch/IP35ODSY32/libGLcore.so` at 0xd9e63c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGLcore.so`.
  Range: 0xd9e63c0-0xd9e63f4 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xd9e63d4 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `lw` at 0xd9e63dc loads 4 bytes from abs 0xdaf10bc.
  The `lw` at 0xd9e63e0 loads 4 bytes from abs 0xdaf05cc.
  The `sw` at 0xd9e63e4 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The `sw` at 0xd9e63f0 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9e63ec has v0 = 0xd9e6380.
- `__glOdysseySoftClipBeginTriangles` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x222ab80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x222ab80-0x222abb4 (52 bytes).
  It occupies 52 bytes.
  The `sd` at 0x222ab94 stores 8 bytes to a0 (arg0 at entry) +0x4e30.
  The `ld` at 0x222ab9c loads 8 bytes from abs 0x2340508.
  The `ld` at 0x222aba0 loads 8 bytes from abs 0x233ef20.
  The `sd` at 0x222aba4 stores 8 bytes to a0 (arg0 at entry) +0x4920.
  The `sd` at 0x222abb0 stores 8 bytes to a0 (arg0 at entry) +0x4890.
  The return at 0x222abac has v0 = 0x222ab40.
- `gfxioctl` in `usr/cpu/sysgen/IP30boot/gfx.o` at 0x2b48 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/gfx.o`.
  Range: 0x2b48-0x331c (2004 bytes).
  It occupies 2004 bytes.
  The `lh` at 0x2b84 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x2b94 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0xc.
  The `sw` at 0x2ba8 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0xc.
  The `ld` at 0x2bd4 loads 8 bytes from table(sym(GfxDev)) +0x0.
  6 such `lw` accesses load 4 bytes from entry(sym(GfxDev)) +0x4, including `lw` at 0x2be8, `lw` at 0x2ccc, `lw` at 0x2d88.
  5 such `ld` accesses load 8 bytes from ret(gthread_find) +0x18, including `ld` at 0x2bf4, `ld` at 0x2cc0, `ld` at 0x2da4.
  2 such `ld` accesses load 8 bytes from ret(gthread_find) +0x0, including `ld` at 0x2c00, `ld` at 0x2e60.
  The `ld` at 0x2c04 loads 8 bytes from entry(sym(GfxDev)) +0x10.
  7 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x20, including `ld` at 0x2c64, `ld` at 0x2d70, `ld` at 0x2fe4.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x8, including `ld` at 0x2c98, `ld` at 0x32ec, `ld` at 0x3304.
  3 such `ld` accesses load 8 bytes from [entry(sym(GfxDev))+8]:8 +0x10, including `ld` at 0x2c9c, `ld` at 0x32f0, `ld` at 0x3308.
  2 such `sw` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `sw` at 0x2cbc, `sw` at 0x312c.
  The `ld` at 0x2d0c loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc8.
  The `ld` at 0x2d24 loads 8 bytes from entry(sym(GfxDev)) +0x48.
  17 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x28, including `ld` at 0x2d3c, `ld` at 0x2d48, `ld` at 0x2d60.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x30, including `ld` at 0x2d44, `ld` at 0x2d5c, `ld` at 0x2d90.
  4 such `ld` accesses load 8 bytes from [entry(sym(GfxDev))+40]:8 +0x48, including `ld` at 0x2d4c, `ld` at 0x2d64, `ld` at 0x2fbc.
  The `ld` at 0x2d74 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x60.
  2 such `sw` accesses store 4 bytes to entry(sym(GfxDev)) +0x4, including `sw` at 0x2d9c, `sw` at 0x2f7c.
  4 such `sd` accesses store 8 bytes to [entry(sym(GfxDev))+40]:8 +0x48, including `sd` at 0x2e0c, `sd` at 0x3000, `sd` at 0x3188.
  6 such `lw` accesses load 4 bytes from [entry(sym(GfxDev))+40]:8 +0x68, including `lw` at 0x2e14, `lw` at 0x2e2c, `lw` at 0x3190.
  The `ld` at 0x2fc8 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x18.
  The `sw` at 0x2fe0 stores 4 bytes to [entry(sym(GfxDev))+40]:8 +0x80.
  The `ld` at 0x2fe8 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc0.
  The `ld` at 0x3048 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x28.
  The `ld` at 0x3094 loads 8 bytes from [entry(sym(GfxDev))+8]:8 +0x0.
  6 such `ld` accesses load 8 bytes from table(sym(GfxBoards)) +0x0, including `ld` at 0x30f0, `ld` at 0x3110, `ld` at 0x313c.
  The `ld` at 0x311c loads 8 bytes from entry(sym(GfxBoards)) +0x8.
  5 such `ld` accesses load 8 bytes from entry(sym(GfxBoards)) +0x38, including `ld` at 0x31fc, `ld` at 0x322c, `ld` at 0x3244.
  The `ld` at 0x3200 loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x0.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxBoards)) +0x40, including `ld` at 0x3214, `ld` at 0x3224, `ld` at 0x32a8.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x8, including `sd` at 0x3220, `sd` at 0x326c, `sd` at 0x329c.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x28, including `sd` at 0x3228, `sd` at 0x3264, `sd` at 0x32ac.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x20, including `sd` at 0x3230, `sd` at 0x3260, `sd` at 0x32a4.
  2 such `ld` accesses load 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x8, including `ld` at 0x3248, `ld` at 0x32c4.
  The `ld` at 0x3274 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x20.
  2 such `sd` accesses store 8 bytes to [entry(sym(GfxDev))+8]:8 +0x10, including `sd` at 0x3300, `sd` at 0x3318.
  The `jal` at 0x2b70 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2b7c calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2c24 calls psema with a0=entry(sym(GfxDev))+80, a1=0x19, a2=0x1ffff, a3=[([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5))+12]+1, a4=([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)), a5=([-0x3c60]:2 << 0x5).
  The `jalr` at 0x2d20 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=[entry(sym(GfxDev))+72]:8, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a5 at entry (arg5).
  The `jal` at 0x2d40 calls ddv_unlock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2d58 calls ddv_lock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2d80 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=0x0, a2=-0x1, a3=?.
  The `jal` at 0x2d98 calls ddv_unlock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2db4 calls RRM_Dispatch with a0=entry(sym(GfxDev)), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a5 at entry (arg5), a6=0x6c.
  The `jal` at 0x2df0 calls cmn_err_tag with a0=0x850, a1=0x4, a2=sym(.rodata), a3=a1 at entry (arg1), a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x2e00 calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0x2e20 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x2e5c calls threadgroup_refcnt with a0=[ret(gthread_find)]:8, a1=0x67, a2=0x70, a3=0x71, a7=[ret(gthread_find)+24]:8.
  The `jal` at 0x2e78 calls curproc_abi with a0=0x69, a1=?, a2=?, a3=?.
  The `jal` at 0x2e98 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x18, a3=sym(irix5_to_gfx_getboardinfo_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2eb8 calls copyin with a0=a2 at entry (arg2), a1=sp-72, a2=0x4, a3=?.
  The `jal` at 0x2ed0 calls vsema with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=?.
  The `jal` at 0x2ee0 calls GfxDetach with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x2ef0 calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=?.
  The `jal` at 0x2f10 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2f28 calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2f48 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2f60 calls drv_priv with a0=a4 at entry (arg4), a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2f80 calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=0x71, a6=0x6c, a7=0x68.
  The `jal` at 0x2fa0 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x28, a3=sym(irix5_to_gfx_download_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jalr` at 0x2fcc calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x2fdc calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2ff4 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=[[entry(sym(GfxDev))+32]:8+192]:8, a2=?, a3=?.
  The `jal` at 0x3008 calls vsema with a0=[entry(sym(GfxDev))+40]:8+56, a1=[entry(sym(GfxDev))+40]:8, a2=?, a3=?.
  The `jal` at 0x3010 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x3028 calls rrmUnMapGfx with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jalr` at 0x304c calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?, a4=[[entry(sym(GfxDev))+32]:8+40]:8.
  The `jal` at 0x30a0 calls copyin with a0=a2 at entry (arg2), a1=[[entry(sym(GfxDev))+8]:8]:8+16, a2=0x10, a3=[entry(sym(GfxDev))+8]:8, a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x317c calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[entry(sym(GfxDev))+8]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x319c calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x31bc calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[[entry(sym(GfxDev))+40]:8+72]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x31dc calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x3210 calls (unknown callee) with a0=[entry(sym(GfxBoards))+64]:8, a1=?, a2=?, a3=a5 at entry (arg5), a4=entry(sym(GfxBoards)).
  The `jalr` at 0x3250 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards).
  The `jalr` at 0x327c calls (unknown callee) with a0=entry(sym(GfxDev)), a1=sp-112, a2=?, a3=?.
  The `jalr` at 0x32cc calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards), a4=[entry(sym(GfxDev))+32]:8.
  The `beq` branch at 0x2bc0 targets 0x2cb0, is taken when a1(?) >= at(=[sym(GfxDevLimit)]) (signed), and falls through when a1(?) < at(=[sym(GfxDevLimit)]) (signed).
  The `beq` branch at 0x2bd8 targets 0x2d04, is taken when s0(=entry(sym(GfxDev))) == 0, and falls through when s0(=entry(sym(GfxDev))) != 0.
  The `beq` branch at 0x2be0 targets 0x2cfc, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x2bf0 targets 0x2c18, is taken when (t9(=[entry(sym(GfxDev))+4]) & 0x8) == 0, and falls through when (t9(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` branch at 0x2bf8 targets 0x2c30, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2c08 targets 0x2c30, is taken when ra(=[ret(gthread_find)]:8) == at(=[entry(sym(GfxDev))+16]:8), and falls through when ra(=[ret(gthread_find)]:8) != at(=[entry(sym(GfxDev))+16]:8).
  The `beq` branch at 0x2c10 targets 0x2cdc and is always taken.
  The `beq` branch at 0x2c18 targets 0x2c30, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2c30 targets 0x2cb8, is taken when s1(=a1) == v0(=0x65), and falls through when s1(=a1) != v0(=0x65).
  The `beq` branch at 0x2c3c targets 0x2e78, is taken when s1(=a1) == v1(=0x66), and falls through when s1(=a1) != v1(=0x66).
  The `beq` branch at 0x2c44 targets 0x2eb0, is taken when s1(=a1) == a0(=0x69), and falls through when s1(=a1) != a0(=0x69).
  The `beq` branch at 0x2c4c targets 0x2ef0, is taken when s1(=a1) == a1(=0x67), and falls through when s1(=a1) != a1(=0x67).
  The `beq` branch at 0x2c54 targets 0x2f28, is taken when s1(=a1) == a2(=0x70), and falls through when s1(=a1) != a2(=0x70).
  The `beq` branch at 0x2c5c targets 0x2f60, is taken when s1(=a1) == a3(=0x71), and falls through when s1(=a1) != a3(=0x71).
  The `beq` branch at 0x2c68 targets 0x2d30, is taken when v0(=[entry(sym(GfxDev))+32]:8) == 0, and falls through when v0(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` branch at 0x2c70 targets 0x2d0c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x2c78 targets 0x2da8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2c80 targets 0x2f80, is taken when s1(=a1) == a6(=0x6c), and falls through when s1(=a1) != a6(=0x6c).
  The `beq` branch at 0x2c88 targets 0x2e40, is taken when s1(=a1) == a7(=0x68), and falls through when s1(=a1) != a7(=0x68).
  The `beq` branch at 0x2c90 targets 0x2d38, is taken when s1(=a1) == t0(=0x6e), and falls through when s1(=a1) != t0(=0x6e).
  The `beq` branch at 0x2ca0 targets 0x2dc4, is taken when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) == s0(=entry(sym(GfxDev))), and falls through when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) != s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2ca8 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2cb0 targets 0x2cdc and is always taken.
  The `beq` branch at 0x2cc4 targets 0x2cdc, is taken when t3(=[ret(gthread_find)+24]:8) == 0, and falls through when t3(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2cd4 targets 0x2ed0, is taken when (t8(=[entry(sym(GfxDev))+4]) & 0x8) == 0, and falls through when (t8(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` branch at 0x2cfc targets 0x2cdc and is always taken.
  The `beq` branch at 0x2d04 targets 0x2cdc and is always taken.
  The `beq` branch at 0x2d28 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2d30 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2d38 targets 0x2d4c and is always taken.
  The `bne` branch at 0x2d50 targets 0x2e00, is taken when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `bne` branch at 0x2d68 targets 0x2d40, is taken when at(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when at(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2da0 targets 0x2cc4 and is always taken.
  The `beq` branch at 0x2dbc targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2dc4 targets 0x2fb8, is taken when s1(=a1) == a0(=0x6a), and falls through when s1(=a1) != a0(=0x6a).
  The `beq` branch at 0x2dcc targets 0x3038, is taken when s1(=a1) == a1(=0x6b), and falls through when s1(=a1) != a1(=0x6b).
  The `beq` branch at 0x2dd4 targets 0x305c, is taken when s1(=a1) == a2(=0x6d), and falls through when s1(=a1) != a2(=0x6d).
  The `beq` branch at 0x2ddc targets 0x3094, is taken when s1(=a1) == a4(=0x6f), and falls through when s1(=a1) != a4(=0x6f).
  The `beq` branch at 0x2df8 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2e18 targets 0x2d58, is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x2e30 targets 0x2e20, is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x2e38 targets 0x2d58 and is always taken.
  The `bne` branch at 0x2e48 targets 0x2ee0, is taken when (a6(=[entry(sym(GfxDev))+4]) & 0x8) != 0, and falls through when (a6(=[entry(sym(GfxDev))+4]) & 0x8) == 0.
  The `beq` branch at 0x2e54 targets 0x2ee0, is taken when a7(=[ret(gthread_find)+24]:8) == 0, and falls through when a7(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2e68 targets 0x2ee0, is taken when v0(=ret(threadgroup_refcnt)) == t0(=0x1), and falls through when v0(=ret(threadgroup_refcnt)) != t0(=0x1).
  The `beq` branch at 0x2e70 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2ea0 targets 0x3064, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2ea8 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2ec0 targets 0x307c, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x2ec8 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2ed8 targets 0x2cdc and is always taken.
  The `beq` branch at 0x2ee8 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2f18 targets 0x30b4, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2f20 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2f50 targets 0x30cc, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2f58 targets 0x2cc0 and is always taken.
  The `bne` branch at 0x2f68 targets 0x2cc0, is taken when v0(=ret(drv_priv)) != 0, and falls through when v0(=ret(drv_priv)) == 0.
  The `beq` branch at 0x2f78 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2fa8 targets 0x3270, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2fb0 targets 0x2cc0 and is always taken.
  The `bne` branch at 0x2fc0 targets 0x317c, is taken when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2fec targets 0x2ffc, is taken when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) == 0, and falls through when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) != 0.
  The `beq` branch at 0x3020 targets 0x2cc0, is taken when (a2(=[entry(sym(GfxDev))+4]) & 0x1) == 0, and falls through when (a2(=[entry(sym(GfxDev))+4]) & 0x1) != 0.
  The `beq` branch at 0x3030 targets 0x2cc4 and is always taken.
  The `bne` branch at 0x3040 targets 0x31bc, is taken when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x3054 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x305c targets 0x2cc0 and is always taken.
  The `bne` branch at 0x306c targets 0x30e4, is taken when v0(?) < a5(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a5(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x3074 targets 0x2cc0 and is always taken.
  The `bne` branch at 0x3084 targets 0x3104, is taken when a0(?) < a6(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when a0(?) >= a6(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x308c targets 0x2cc0 and is always taken.
  The `beq` branch at 0x30ac targets 0x2cc0 and is always taken.
  The `bne` branch at 0x30bc targets 0x3130, is taken when v0(?) < a2(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a2(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x30c4 targets 0x2cc0 and is always taken.
  The `bne` branch at 0x30d4 targets 0x315c, is taken when v0(?) < a3(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a3(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x30dc targets 0x2cc0 and is always taken.
  The `bne` branch at 0x30f4 targets 0x31fc, is taken when a4(=entry(sym(GfxBoards))) != 0, and falls through when a4(=entry(sym(GfxBoards))) == 0.
  The `beq` branch at 0x30fc targets 0x2cc0 and is always taken.
  The `beq` branch at 0x3114 targets 0x328c, is taken when v0(=entry(sym(GfxBoards))) == 0, and falls through when v0(=entry(sym(GfxBoards))) != 0.
  The `beq` branch at 0x3128 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x3140 targets 0x3294, is taken when a2(=entry(sym(GfxBoards))) == 0, and falls through when a2(=entry(sym(GfxBoards))) != 0.
  The `beq` branch at 0x314c targets 0x329c, is taken when a4(=[entry(sym(GfxDev))+32]:8) == 0, and falls through when a4(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` branch at 0x3154 targets 0x2cc0 and is always taken.
  The `bne` branch at 0x316c targets 0x3220, is taken when a2(=entry(sym(GfxBoards))) != 0, and falls through when a2(=entry(sym(GfxBoards))) == 0.
  The `beq` branch at 0x3174 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x3194 targets 0x31b4, is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x31ac targets 0x319c, is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x31b4 targets 0x2fc8 and is always taken.
  The `beq` branch at 0x31d4 targets 0x31f4, is taken when a6(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a6(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x31ec targets 0x31dc, is taken when t0(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when t0(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x31f4 targets 0x3048 and is always taken.
  The `beq` branch at 0x3218 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x3258 targets 0x32ec, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x3268 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x3284 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x328c targets 0x2cc0 and is always taken.
  The `beq` branch at 0x3294 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x32d4 targets 0x3304, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x32e4 targets 0x2cc0 and is always taken.
  The `bne` branch at 0x32f4 targets 0x2cc0, is taken when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0, and falls through when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `beq` branch at 0x32fc targets 0x2cc0 and is always taken.
  The `bne` branch at 0x330c targets 0x2cc0, is taken when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0, and falls through when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `beq` branch at 0x3314 targets 0x2cc0 and is always taken.
  The return at 0x2cf4 has v0 = one of 0xd, 0x6, ?, 0x13.
- `gfxioctl` in `usr/cpu/sysgen/IP30boot/gfxs.a(gfx.o)` at 0x2b48 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/gfxs.a(gfx.o)`.
  Range: 0x2b48-0x331c (2004 bytes).
  It occupies 2004 bytes.
  The `lh` at 0x2b84 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x2b94 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0xc.
  The `sw` at 0x2ba8 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0xc.
  The `ld` at 0x2bd4 loads 8 bytes from table(sym(GfxDev)) +0x0.
  6 such `lw` accesses load 4 bytes from entry(sym(GfxDev)) +0x4, including `lw` at 0x2be8, `lw` at 0x2ccc, `lw` at 0x2d88.
  5 such `ld` accesses load 8 bytes from ret(gthread_find) +0x18, including `ld` at 0x2bf4, `ld` at 0x2cc0, `ld` at 0x2da4.
  2 such `ld` accesses load 8 bytes from ret(gthread_find) +0x0, including `ld` at 0x2c00, `ld` at 0x2e60.
  The `ld` at 0x2c04 loads 8 bytes from entry(sym(GfxDev)) +0x10.
  7 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x20, including `ld` at 0x2c64, `ld` at 0x2d70, `ld` at 0x2fe4.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x8, including `ld` at 0x2c98, `ld` at 0x32ec, `ld` at 0x3304.
  3 such `ld` accesses load 8 bytes from [entry(sym(GfxDev))+8]:8 +0x10, including `ld` at 0x2c9c, `ld` at 0x32f0, `ld` at 0x3308.
  2 such `sw` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `sw` at 0x2cbc, `sw` at 0x312c.
  The `ld` at 0x2d0c loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc8.
  The `ld` at 0x2d24 loads 8 bytes from entry(sym(GfxDev)) +0x48.
  17 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x28, including `ld` at 0x2d3c, `ld` at 0x2d48, `ld` at 0x2d60.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x30, including `ld` at 0x2d44, `ld` at 0x2d5c, `ld` at 0x2d90.
  4 such `ld` accesses load 8 bytes from [entry(sym(GfxDev))+40]:8 +0x48, including `ld` at 0x2d4c, `ld` at 0x2d64, `ld` at 0x2fbc.
  The `ld` at 0x2d74 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x60.
  2 such `sw` accesses store 4 bytes to entry(sym(GfxDev)) +0x4, including `sw` at 0x2d9c, `sw` at 0x2f7c.
  4 such `sd` accesses store 8 bytes to [entry(sym(GfxDev))+40]:8 +0x48, including `sd` at 0x2e0c, `sd` at 0x3000, `sd` at 0x3188.
  6 such `lw` accesses load 4 bytes from [entry(sym(GfxDev))+40]:8 +0x68, including `lw` at 0x2e14, `lw` at 0x2e2c, `lw` at 0x3190.
  The `ld` at 0x2fc8 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x18.
  The `sw` at 0x2fe0 stores 4 bytes to [entry(sym(GfxDev))+40]:8 +0x80.
  The `ld` at 0x2fe8 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc0.
  The `ld` at 0x3048 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x28.
  The `ld` at 0x3094 loads 8 bytes from [entry(sym(GfxDev))+8]:8 +0x0.
  6 such `ld` accesses load 8 bytes from table(sym(GfxBoards)) +0x0, including `ld` at 0x30f0, `ld` at 0x3110, `ld` at 0x313c.
  The `ld` at 0x311c loads 8 bytes from entry(sym(GfxBoards)) +0x8.
  5 such `ld` accesses load 8 bytes from entry(sym(GfxBoards)) +0x38, including `ld` at 0x31fc, `ld` at 0x322c, `ld` at 0x3244.
  The `ld` at 0x3200 loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x0.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxBoards)) +0x40, including `ld` at 0x3214, `ld` at 0x3224, `ld` at 0x32a8.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x8, including `sd` at 0x3220, `sd` at 0x326c, `sd` at 0x329c.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x28, including `sd` at 0x3228, `sd` at 0x3264, `sd` at 0x32ac.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x20, including `sd` at 0x3230, `sd` at 0x3260, `sd` at 0x32a4.
  2 such `ld` accesses load 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x8, including `ld` at 0x3248, `ld` at 0x32c4.
  The `ld` at 0x3274 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x20.
  2 such `sd` accesses store 8 bytes to [entry(sym(GfxDev))+8]:8 +0x10, including `sd` at 0x3300, `sd` at 0x3318.
  The `jal` at 0x2b70 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2b7c calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2c24 calls psema with a0=entry(sym(GfxDev))+80, a1=0x19, a2=0x1ffff, a3=[([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5))+12]+1, a4=([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)), a5=([-0x3c60]:2 << 0x5).
  The `jalr` at 0x2d20 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=[entry(sym(GfxDev))+72]:8, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a5 at entry (arg5).
  The `jal` at 0x2d40 calls ddv_unlock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2d58 calls ddv_lock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2d80 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=0x0, a2=-0x1, a3=?.
  The `jal` at 0x2d98 calls ddv_unlock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2db4 calls RRM_Dispatch with a0=entry(sym(GfxDev)), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a5 at entry (arg5), a6=0x6c.
  The `jal` at 0x2df0 calls cmn_err_tag with a0=0x850, a1=0x4, a2=sym(.rodata), a3=a1 at entry (arg1), a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x2e00 calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0x2e20 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x2e5c calls threadgroup_refcnt with a0=[ret(gthread_find)]:8, a1=0x67, a2=0x70, a3=0x71, a7=[ret(gthread_find)+24]:8.
  The `jal` at 0x2e78 calls curproc_abi with a0=0x69, a1=?, a2=?, a3=?.
  The `jal` at 0x2e98 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x18, a3=sym(irix5_to_gfx_getboardinfo_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2eb8 calls copyin with a0=a2 at entry (arg2), a1=sp-72, a2=0x4, a3=?.
  The `jal` at 0x2ed0 calls vsema with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=?.
  The `jal` at 0x2ee0 calls GfxDetach with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x2ef0 calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=?.
  The `jal` at 0x2f10 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2f28 calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2f48 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2f60 calls drv_priv with a0=a4 at entry (arg4), a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2f80 calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=0x71, a6=0x6c, a7=0x68.
  The `jal` at 0x2fa0 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x28, a3=sym(irix5_to_gfx_download_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jalr` at 0x2fcc calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x2fdc calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2ff4 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=[[entry(sym(GfxDev))+32]:8+192]:8, a2=?, a3=?.
  The `jal` at 0x3008 calls vsema with a0=[entry(sym(GfxDev))+40]:8+56, a1=[entry(sym(GfxDev))+40]:8, a2=?, a3=?.
  The `jal` at 0x3010 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x3028 calls rrmUnMapGfx with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jalr` at 0x304c calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?, a4=[[entry(sym(GfxDev))+32]:8+40]:8.
  The `jal` at 0x30a0 calls copyin with a0=a2 at entry (arg2), a1=[[entry(sym(GfxDev))+8]:8]:8+16, a2=0x10, a3=[entry(sym(GfxDev))+8]:8, a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x317c calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[entry(sym(GfxDev))+8]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x319c calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x31bc calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[[entry(sym(GfxDev))+40]:8+72]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x31dc calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x3210 calls (unknown callee) with a0=[entry(sym(GfxBoards))+64]:8, a1=?, a2=?, a3=a5 at entry (arg5), a4=entry(sym(GfxBoards)).
  The `jalr` at 0x3250 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards).
  The `jalr` at 0x327c calls (unknown callee) with a0=entry(sym(GfxDev)), a1=sp-112, a2=?, a3=?.
  The `jalr` at 0x32cc calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards), a4=[entry(sym(GfxDev))+32]:8.
  The `beq` branch at 0x2bc0 targets 0x2cb0, is taken when a1(?) >= at(=[sym(GfxDevLimit)]) (signed), and falls through when a1(?) < at(=[sym(GfxDevLimit)]) (signed).
  The `beq` branch at 0x2bd8 targets 0x2d04, is taken when s0(=entry(sym(GfxDev))) == 0, and falls through when s0(=entry(sym(GfxDev))) != 0.
  The `beq` branch at 0x2be0 targets 0x2cfc, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x2bf0 targets 0x2c18, is taken when (t9(=[entry(sym(GfxDev))+4]) & 0x8) == 0, and falls through when (t9(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` branch at 0x2bf8 targets 0x2c30, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2c08 targets 0x2c30, is taken when ra(=[ret(gthread_find)]:8) == at(=[entry(sym(GfxDev))+16]:8), and falls through when ra(=[ret(gthread_find)]:8) != at(=[entry(sym(GfxDev))+16]:8).
  The `beq` branch at 0x2c10 targets 0x2cdc and is always taken.
  The `beq` branch at 0x2c18 targets 0x2c30, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2c30 targets 0x2cb8, is taken when s1(=a1) == v0(=0x65), and falls through when s1(=a1) != v0(=0x65).
  The `beq` branch at 0x2c3c targets 0x2e78, is taken when s1(=a1) == v1(=0x66), and falls through when s1(=a1) != v1(=0x66).
  The `beq` branch at 0x2c44 targets 0x2eb0, is taken when s1(=a1) == a0(=0x69), and falls through when s1(=a1) != a0(=0x69).
  The `beq` branch at 0x2c4c targets 0x2ef0, is taken when s1(=a1) == a1(=0x67), and falls through when s1(=a1) != a1(=0x67).
  The `beq` branch at 0x2c54 targets 0x2f28, is taken when s1(=a1) == a2(=0x70), and falls through when s1(=a1) != a2(=0x70).
  The `beq` branch at 0x2c5c targets 0x2f60, is taken when s1(=a1) == a3(=0x71), and falls through when s1(=a1) != a3(=0x71).
  The `beq` branch at 0x2c68 targets 0x2d30, is taken when v0(=[entry(sym(GfxDev))+32]:8) == 0, and falls through when v0(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` branch at 0x2c70 targets 0x2d0c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x2c78 targets 0x2da8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2c80 targets 0x2f80, is taken when s1(=a1) == a6(=0x6c), and falls through when s1(=a1) != a6(=0x6c).
  The `beq` branch at 0x2c88 targets 0x2e40, is taken when s1(=a1) == a7(=0x68), and falls through when s1(=a1) != a7(=0x68).
  The `beq` branch at 0x2c90 targets 0x2d38, is taken when s1(=a1) == t0(=0x6e), and falls through when s1(=a1) != t0(=0x6e).
  The `beq` branch at 0x2ca0 targets 0x2dc4, is taken when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) == s0(=entry(sym(GfxDev))), and falls through when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) != s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2ca8 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2cb0 targets 0x2cdc and is always taken.
  The `beq` branch at 0x2cc4 targets 0x2cdc, is taken when t3(=[ret(gthread_find)+24]:8) == 0, and falls through when t3(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2cd4 targets 0x2ed0, is taken when (t8(=[entry(sym(GfxDev))+4]) & 0x8) == 0, and falls through when (t8(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` branch at 0x2cfc targets 0x2cdc and is always taken.
  The `beq` branch at 0x2d04 targets 0x2cdc and is always taken.
  The `beq` branch at 0x2d28 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2d30 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2d38 targets 0x2d4c and is always taken.
  The `bne` branch at 0x2d50 targets 0x2e00, is taken when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `bne` branch at 0x2d68 targets 0x2d40, is taken when at(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when at(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2da0 targets 0x2cc4 and is always taken.
  The `beq` branch at 0x2dbc targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2dc4 targets 0x2fb8, is taken when s1(=a1) == a0(=0x6a), and falls through when s1(=a1) != a0(=0x6a).
  The `beq` branch at 0x2dcc targets 0x3038, is taken when s1(=a1) == a1(=0x6b), and falls through when s1(=a1) != a1(=0x6b).
  The `beq` branch at 0x2dd4 targets 0x305c, is taken when s1(=a1) == a2(=0x6d), and falls through when s1(=a1) != a2(=0x6d).
  The `beq` branch at 0x2ddc targets 0x3094, is taken when s1(=a1) == a4(=0x6f), and falls through when s1(=a1) != a4(=0x6f).
  The `beq` branch at 0x2df8 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2e18 targets 0x2d58, is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x2e30 targets 0x2e20, is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x2e38 targets 0x2d58 and is always taken.
  The `bne` branch at 0x2e48 targets 0x2ee0, is taken when (a6(=[entry(sym(GfxDev))+4]) & 0x8) != 0, and falls through when (a6(=[entry(sym(GfxDev))+4]) & 0x8) == 0.
  The `beq` branch at 0x2e54 targets 0x2ee0, is taken when a7(=[ret(gthread_find)+24]:8) == 0, and falls through when a7(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2e68 targets 0x2ee0, is taken when v0(=ret(threadgroup_refcnt)) == t0(=0x1), and falls through when v0(=ret(threadgroup_refcnt)) != t0(=0x1).
  The `beq` branch at 0x2e70 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2ea0 targets 0x3064, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2ea8 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2ec0 targets 0x307c, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x2ec8 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2ed8 targets 0x2cdc and is always taken.
  The `beq` branch at 0x2ee8 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2f18 targets 0x30b4, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2f20 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2f50 targets 0x30cc, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2f58 targets 0x2cc0 and is always taken.
  The `bne` branch at 0x2f68 targets 0x2cc0, is taken when v0(=ret(drv_priv)) != 0, and falls through when v0(=ret(drv_priv)) == 0.
  The `beq` branch at 0x2f78 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x2fa8 targets 0x3270, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2fb0 targets 0x2cc0 and is always taken.
  The `bne` branch at 0x2fc0 targets 0x317c, is taken when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2fec targets 0x2ffc, is taken when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) == 0, and falls through when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) != 0.
  The `beq` branch at 0x3020 targets 0x2cc0, is taken when (a2(=[entry(sym(GfxDev))+4]) & 0x1) == 0, and falls through when (a2(=[entry(sym(GfxDev))+4]) & 0x1) != 0.
  The `beq` branch at 0x3030 targets 0x2cc4 and is always taken.
  The `bne` branch at 0x3040 targets 0x31bc, is taken when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x3054 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x305c targets 0x2cc0 and is always taken.
  The `bne` branch at 0x306c targets 0x30e4, is taken when v0(?) < a5(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a5(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x3074 targets 0x2cc0 and is always taken.
  The `bne` branch at 0x3084 targets 0x3104, is taken when a0(?) < a6(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when a0(?) >= a6(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x308c targets 0x2cc0 and is always taken.
  The `beq` branch at 0x30ac targets 0x2cc0 and is always taken.
  The `bne` branch at 0x30bc targets 0x3130, is taken when v0(?) < a2(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a2(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x30c4 targets 0x2cc0 and is always taken.
  The `bne` branch at 0x30d4 targets 0x315c, is taken when v0(?) < a3(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a3(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x30dc targets 0x2cc0 and is always taken.
  The `bne` branch at 0x30f4 targets 0x31fc, is taken when a4(=entry(sym(GfxBoards))) != 0, and falls through when a4(=entry(sym(GfxBoards))) == 0.
  The `beq` branch at 0x30fc targets 0x2cc0 and is always taken.
  The `beq` branch at 0x3114 targets 0x328c, is taken when v0(=entry(sym(GfxBoards))) == 0, and falls through when v0(=entry(sym(GfxBoards))) != 0.
  The `beq` branch at 0x3128 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x3140 targets 0x3294, is taken when a2(=entry(sym(GfxBoards))) == 0, and falls through when a2(=entry(sym(GfxBoards))) != 0.
  The `beq` branch at 0x314c targets 0x329c, is taken when a4(=[entry(sym(GfxDev))+32]:8) == 0, and falls through when a4(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` branch at 0x3154 targets 0x2cc0 and is always taken.
  The `bne` branch at 0x316c targets 0x3220, is taken when a2(=entry(sym(GfxBoards))) != 0, and falls through when a2(=entry(sym(GfxBoards))) == 0.
  The `beq` branch at 0x3174 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x3194 targets 0x31b4, is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x31ac targets 0x319c, is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x31b4 targets 0x2fc8 and is always taken.
  The `beq` branch at 0x31d4 targets 0x31f4, is taken when a6(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a6(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x31ec targets 0x31dc, is taken when t0(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when t0(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x31f4 targets 0x3048 and is always taken.
  The `beq` branch at 0x3218 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x3258 targets 0x32ec, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x3268 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x3284 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x328c targets 0x2cc0 and is always taken.
  The `beq` branch at 0x3294 targets 0x2cc0 and is always taken.
  The `beq` branch at 0x32d4 targets 0x3304, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x32e4 targets 0x2cc0 and is always taken.
  The `bne` branch at 0x32f4 targets 0x2cc0, is taken when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0, and falls through when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `beq` branch at 0x32fc targets 0x2cc0 and is always taken.
  The `bne` branch at 0x330c targets 0x2cc0, is taken when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0, and falls through when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `beq` branch at 0x3314 targets 0x2cc0 and is always taken.
  The return at 0x2cf4 has v0 = one of 0xd, 0x6, ?, 0x13.
- `gfxioctl` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2b94 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x2b94-0x3368 (2004 bytes).
  It occupies 2004 bytes.
  The `lh` at 0x2bd0 loads 2 bytes from abs 0xffffffffffffc428.
  The `lw` at 0x2be0 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0xc.
  The `sw` at 0x2bf4 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0xc.
  The `ld` at 0x2c20 loads 8 bytes from table(sym(GfxDev)) +0x0.
  6 such `lw` accesses load 4 bytes from entry(sym(GfxDev)) +0x4, including `lw` at 0x2c34, `lw` at 0x2d1c, `lw` at 0x2dd8.
  5 such `ld` accesses load 8 bytes from ret(gthread_find) +0x18, including `ld` at 0x2c40, `ld` at 0x2d10, `ld` at 0x2df4.
  2 such `ld` accesses load 8 bytes from ret(gthread_find) +0x0, including `ld` at 0x2c4c, `ld` at 0x2eac.
  The `ld` at 0x2c50 loads 8 bytes from entry(sym(GfxDev)) +0x10.
  7 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x20, including `ld` at 0x2cb0, `ld` at 0x2dc0, `ld` at 0x3030.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x8, including `ld` at 0x2ce8, `ld` at 0x3338, `ld` at 0x3350.
  3 such `ld` accesses load 8 bytes from [entry(sym(GfxDev))+8]:8 +0x10, including `ld` at 0x2cec, `ld` at 0x333c, `ld` at 0x3354.
  2 such `sw` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `sw` at 0x2d0c, `sw` at 0x3178.
  The `ld` at 0x2d5c loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc8.
  The `ld` at 0x2d74 loads 8 bytes from entry(sym(GfxDev)) +0x48.
  17 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x28, including `ld` at 0x2d8c, `ld` at 0x2d98, `ld` at 0x2db0.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x30, including `ld` at 0x2d94, `ld` at 0x2dac, `ld` at 0x2de0.
  4 such `ld` accesses load 8 bytes from [entry(sym(GfxDev))+40]:8 +0x48, including `ld` at 0x2d9c, `ld` at 0x2db4, `ld` at 0x3008.
  The `ld` at 0x2dc4 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x60.
  2 such `sw` accesses store 4 bytes to entry(sym(GfxDev)) +0x4, including `sw` at 0x2dec, `sw` at 0x2fc8.
  4 such `sd` accesses store 8 bytes to [entry(sym(GfxDev))+40]:8 +0x48, including `sd` at 0x2e58, `sd` at 0x304c, `sd` at 0x31d4.
  6 such `lw` accesses load 4 bytes from [entry(sym(GfxDev))+40]:8 +0x68, including `lw` at 0x2e60, `lw` at 0x2e78, `lw` at 0x31dc.
  The `ld` at 0x3014 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x18.
  The `sw` at 0x302c stores 4 bytes to [entry(sym(GfxDev))+40]:8 +0x80.
  The `ld` at 0x3034 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc0.
  The `ld` at 0x3094 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x28.
  The `ld` at 0x30e0 loads 8 bytes from [entry(sym(GfxDev))+8]:8 +0x0.
  6 such `ld` accesses load 8 bytes from table(sym(GfxBoards)) +0x0, including `ld` at 0x313c, `ld` at 0x315c, `ld` at 0x3188.
  The `ld` at 0x3168 loads 8 bytes from entry(sym(GfxBoards)) +0x8.
  5 such `ld` accesses load 8 bytes from entry(sym(GfxBoards)) +0x38, including `ld` at 0x3248, `ld` at 0x3278, `ld` at 0x3290.
  The `ld` at 0x324c loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x0.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxBoards)) +0x40, including `ld` at 0x3260, `ld` at 0x3270, `ld` at 0x32f4.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x8, including `sd` at 0x326c, `sd` at 0x32b8, `sd` at 0x32e8.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x28, including `sd` at 0x3274, `sd` at 0x32b0, `sd` at 0x32f8.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x20, including `sd` at 0x327c, `sd` at 0x32ac, `sd` at 0x32f0.
  2 such `ld` accesses load 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x8, including `ld` at 0x3294, `ld` at 0x3310.
  The `ld` at 0x32c0 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x20.
  2 such `sd` accesses store 8 bytes to [entry(sym(GfxDev))+8]:8 +0x10, including `sd` at 0x334c, `sd` at 0x3364.
  The `jal` at 0x2bbc calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2bc8 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2c70 calls psema with a0=entry(sym(GfxDev))+80, a1=0x19, a2=0x1ffff, a3=[([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5))+12]+1, a4=([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)), a5=([-0x3bd8]:2 << 0x5).
  The `jalr` at 0x2d70 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=[entry(sym(GfxDev))+72]:8, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a5 at entry (arg5).
  The `jal` at 0x2d90 calls ddv_unlock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2da8 calls ddv_lock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2dd0 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=0x0, a2=-0x1, a3=?.
  The `jal` at 0x2de8 calls ddv_unlock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2e00 calls RRM_Dispatch with a0=entry(sym(GfxDev)), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a5 at entry (arg5).
  The `jal` at 0x2e3c calls cmn_err_tag with a0=0x850, a1=0x4, a2=sym(.rodata), a3=a1 at entry (arg1), a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x2e4c calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0x2e6c calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x2ea8 calls threadgroup_refcnt with a0=[ret(gthread_find)]:8, a1=0x67, a2=0x70, a3=0x71, a7=[ret(gthread_find)+24]:8.
  The `jal` at 0x2ec4 calls curproc_abi with a0=0x69, a1=?, a2=?, a3=?.
  The `jal` at 0x2ee4 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x18, a3=sym(irix5_to_gfx_getboardinfo_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2f04 calls copyin with a0=a2 at entry (arg2), a1=sp-72, a2=0x4, a3=?.
  The `jal` at 0x2f1c calls vsema with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=?.
  The `jal` at 0x2f2c calls GfxDetach with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x2f3c calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=?.
  The `jal` at 0x2f5c calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2f74 calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2f94 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2fac calls drv_priv with a0=a4 at entry (arg4), a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2fcc calls curproc_abi with a0=entry(sym(GfxDev)), a1=0x67, a2=0x70, a3=0x71, a6=0x6c, a7=0x68.
  The `jal` at 0x2fec calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x28, a3=sym(irix5_to_gfx_download_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jalr` at 0x3018 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x3028 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x3040 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=[[entry(sym(GfxDev))+32]:8+192]:8, a2=?, a3=?.
  The `jal` at 0x3054 calls vsema with a0=[entry(sym(GfxDev))+40]:8+56, a1=[entry(sym(GfxDev))+40]:8, a2=?, a3=?.
  The `jal` at 0x305c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x3074 calls rrmUnMapGfx with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jalr` at 0x3098 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?, a4=[[entry(sym(GfxDev))+32]:8+40]:8.
  The `jal` at 0x30ec calls copyin with a0=a2 at entry (arg2), a1=[[entry(sym(GfxDev))+8]:8]:8+16, a2=0x10, a3=[entry(sym(GfxDev))+8]:8, a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x31c8 calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[entry(sym(GfxDev))+8]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x31e8 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x3208 calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[[entry(sym(GfxDev))+40]:8+72]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x3228 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x325c calls (unknown callee) with a0=[entry(sym(GfxBoards))+64]:8, a1=?, a2=?, a3=a5 at entry (arg5), a4=entry(sym(GfxBoards)).
  The `jalr` at 0x329c calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards).
  The `jalr` at 0x32c8 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=sp-112, a2=?, a3=?.
  The `jalr` at 0x3318 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards), a4=[entry(sym(GfxDev))+32]:8.
  The `beq` branch at 0x2c0c targets 0x2d00, is taken when a1(?) >= at(=[sym(GfxDevLimit)]) (signed), and falls through when a1(?) < at(=[sym(GfxDevLimit)]) (signed).
  The `beq` branch at 0x2c24 targets 0x2d54, is taken when s0(=entry(sym(GfxDev))) == 0, and falls through when s0(=entry(sym(GfxDev))) != 0.
  The `beq` branch at 0x2c2c targets 0x2d4c, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x2c3c targets 0x2c64, is taken when (t9(=[entry(sym(GfxDev))+4]) & 0x8) == 0, and falls through when (t9(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` branch at 0x2c44 targets 0x2c7c, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2c54 targets 0x2c7c, is taken when ra(=[ret(gthread_find)]:8) == at(=[entry(sym(GfxDev))+16]:8), and falls through when ra(=[ret(gthread_find)]:8) != at(=[entry(sym(GfxDev))+16]:8).
  The `beq` branch at 0x2c5c targets 0x2d2c and is always taken.
  The `beq` branch at 0x2c64 targets 0x2c7c, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2c7c targets 0x2d08, is taken when s1(=a1) == v0(=0x65), and falls through when s1(=a1) != v0(=0x65).
  The `beq` branch at 0x2c88 targets 0x2ec4, is taken when s1(=a1) == v1(=0x66), and falls through when s1(=a1) != v1(=0x66).
  The `beq` branch at 0x2c90 targets 0x2efc, is taken when s1(=a1) == a0(=0x69), and falls through when s1(=a1) != a0(=0x69).
  The `beq` branch at 0x2c98 targets 0x2f3c, is taken when s1(=a1) == a1(=0x67), and falls through when s1(=a1) != a1(=0x67).
  The `beq` branch at 0x2ca0 targets 0x2f74, is taken when s1(=a1) == a2(=0x70), and falls through when s1(=a1) != a2(=0x70).
  The `beq` branch at 0x2ca8 targets 0x2fac, is taken when s1(=a1) == a3(=0x71), and falls through when s1(=a1) != a3(=0x71).
  The `beq` branch at 0x2cb4 targets 0x2d80, is taken when v0(=[entry(sym(GfxDev))+32]:8) == 0, and falls through when v0(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` branch at 0x2cbc targets 0x2d5c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x2cc4 targets 0x2df8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2cd0 targets 0x2fcc, is taken when s1(=a1) == a6(=0x6c), and falls through when s1(=a1) != a6(=0x6c).
  The `beq` branch at 0x2cd8 targets 0x2e8c, is taken when s1(=a1) == a7(=0x68), and falls through when s1(=a1) != a7(=0x68).
  The `beq` branch at 0x2ce0 targets 0x2d88, is taken when s1(=a1) == t0(=0x6e), and falls through when s1(=a1) != t0(=0x6e).
  The `beq` branch at 0x2cf0 targets 0x2e10, is taken when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) == s0(=entry(sym(GfxDev))), and falls through when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) != s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2cf8 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2d00 targets 0x2d2c and is always taken.
  The `beq` branch at 0x2d14 targets 0x2d2c, is taken when t3(=[ret(gthread_find)+24]:8) == 0, and falls through when t3(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2d24 targets 0x2f1c, is taken when (t8(=[entry(sym(GfxDev))+4]) & 0x8) == 0, and falls through when (t8(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` branch at 0x2d4c targets 0x2d2c and is always taken.
  The `beq` branch at 0x2d54 targets 0x2d2c and is always taken.
  The `beq` branch at 0x2d78 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2d80 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2d88 targets 0x2d9c and is always taken.
  The `bne` branch at 0x2da0 targets 0x2e4c, is taken when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `bne` branch at 0x2db8 targets 0x2d90, is taken when at(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when at(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2df0 targets 0x2d14 and is always taken.
  The `beq` branch at 0x2e08 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2e10 targets 0x3004, is taken when s1(=a1) == a0(=0x6a), and falls through when s1(=a1) != a0(=0x6a).
  The `beq` branch at 0x2e18 targets 0x3084, is taken when s1(=a1) == a1(=0x6b), and falls through when s1(=a1) != a1(=0x6b).
  The `beq` branch at 0x2e20 targets 0x30a8, is taken when s1(=a1) == a2(=0x6d), and falls through when s1(=a1) != a2(=0x6d).
  The `beq` branch at 0x2e28 targets 0x30e0, is taken when s1(=a1) == a4(=0x6f), and falls through when s1(=a1) != a4(=0x6f).
  The `beq` branch at 0x2e44 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2e64 targets 0x2da8, is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x2e7c targets 0x2e6c, is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x2e84 targets 0x2da8 and is always taken.
  The `bne` branch at 0x2e94 targets 0x2f2c, is taken when (a6(=[entry(sym(GfxDev))+4]) & 0x8) != 0, and falls through when (a6(=[entry(sym(GfxDev))+4]) & 0x8) == 0.
  The `beq` branch at 0x2ea0 targets 0x2f2c, is taken when a7(=[ret(gthread_find)+24]:8) == 0, and falls through when a7(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2eb4 targets 0x2f2c, is taken when v0(=ret(threadgroup_refcnt)) == t0(=0x1), and falls through when v0(=ret(threadgroup_refcnt)) != t0(=0x1).
  The `beq` branch at 0x2ebc targets 0x2d10 and is always taken.
  The `beq` branch at 0x2eec targets 0x30b0, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2ef4 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2f0c targets 0x30c8, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x2f14 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2f24 targets 0x2d2c and is always taken.
  The `beq` branch at 0x2f34 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2f64 targets 0x3100, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2f6c targets 0x2d10 and is always taken.
  The `beq` branch at 0x2f9c targets 0x3118, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2fa4 targets 0x2d10 and is always taken.
  The `bne` branch at 0x2fb4 targets 0x2d10, is taken when v0(=ret(drv_priv)) != 0, and falls through when v0(=ret(drv_priv)) == 0.
  The `beq` branch at 0x2fc4 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2ff4 targets 0x32bc, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2ffc targets 0x2d10 and is always taken.
  The `bne` branch at 0x300c targets 0x31c8, is taken when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x3038 targets 0x3048, is taken when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) == 0, and falls through when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) != 0.
  The `beq` branch at 0x306c targets 0x2d10, is taken when (a2(=[entry(sym(GfxDev))+4]) & 0x1) == 0, and falls through when (a2(=[entry(sym(GfxDev))+4]) & 0x1) != 0.
  The `beq` branch at 0x307c targets 0x2d14 and is always taken.
  The `bne` branch at 0x308c targets 0x3208, is taken when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x30a0 targets 0x2d10 and is always taken.
  The `beq` branch at 0x30a8 targets 0x2d10 and is always taken.
  The `bne` branch at 0x30b8 targets 0x3130, is taken when v0(?) < a5(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a5(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x30c0 targets 0x2d10 and is always taken.
  The `bne` branch at 0x30d0 targets 0x3150, is taken when a0(?) < a6(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when a0(?) >= a6(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x30d8 targets 0x2d10 and is always taken.
  The `beq` branch at 0x30f8 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3108 targets 0x317c, is taken when v0(?) < a2(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a2(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x3110 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3120 targets 0x31a8, is taken when v0(?) < a3(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a3(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x3128 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3140 targets 0x3248, is taken when a4(=entry(sym(GfxBoards))) != 0, and falls through when a4(=entry(sym(GfxBoards))) == 0.
  The `beq` branch at 0x3148 targets 0x2d10 and is always taken.
  The `beq` branch at 0x3160 targets 0x32d8, is taken when v0(=entry(sym(GfxBoards))) == 0, and falls through when v0(=entry(sym(GfxBoards))) != 0.
  The `beq` branch at 0x3174 targets 0x2d10 and is always taken.
  The `beq` branch at 0x318c targets 0x32e0, is taken when a2(=entry(sym(GfxBoards))) == 0, and falls through when a2(=entry(sym(GfxBoards))) != 0.
  The `beq` branch at 0x3198 targets 0x32e8, is taken when a4(=[entry(sym(GfxDev))+32]:8) == 0, and falls through when a4(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` branch at 0x31a0 targets 0x2d10 and is always taken.
  The `bne` branch at 0x31b8 targets 0x326c, is taken when a2(=entry(sym(GfxBoards))) != 0, and falls through when a2(=entry(sym(GfxBoards))) == 0.
  The `beq` branch at 0x31c0 targets 0x2d10 and is always taken.
  The `beq` branch at 0x31e0 targets 0x3200, is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x31f8 targets 0x31e8, is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x3200 targets 0x3014 and is always taken.
  The `beq` branch at 0x3220 targets 0x3240, is taken when a6(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a6(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x3238 targets 0x3228, is taken when t0(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when t0(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x3240 targets 0x3094 and is always taken.
  The `beq` branch at 0x3264 targets 0x2d10 and is always taken.
  The `beq` branch at 0x32a4 targets 0x3338, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x32b4 targets 0x2d10 and is always taken.
  The `beq` branch at 0x32d0 targets 0x2d10 and is always taken.
  The `beq` branch at 0x32d8 targets 0x2d10 and is always taken.
  The `beq` branch at 0x32e0 targets 0x2d10 and is always taken.
  The `beq` branch at 0x3320 targets 0x3350, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x3330 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3340 targets 0x2d10, is taken when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0, and falls through when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `beq` branch at 0x3348 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3358 targets 0x2d10, is taken when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0, and falls through when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `beq` branch at 0x3360 targets 0x2d10 and is always taken.
  The return at 0x2d44 has v0 = one of 0xd, 0x6, ?, 0x13.
- `gfxioctl` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x2b94 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x2b94-0x3368 (2004 bytes).
  It occupies 2004 bytes.
  The `lh` at 0x2bd0 loads 2 bytes from abs 0xffffffffffffc428.
  The `lw` at 0x2be0 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0xc.
  The `sw` at 0x2bf4 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0xc.
  The `ld` at 0x2c20 loads 8 bytes from table(sym(GfxDev)) +0x0.
  6 such `lw` accesses load 4 bytes from entry(sym(GfxDev)) +0x4, including `lw` at 0x2c34, `lw` at 0x2d1c, `lw` at 0x2dd8.
  5 such `ld` accesses load 8 bytes from ret(gthread_find) +0x18, including `ld` at 0x2c40, `ld` at 0x2d10, `ld` at 0x2df4.
  2 such `ld` accesses load 8 bytes from ret(gthread_find) +0x0, including `ld` at 0x2c4c, `ld` at 0x2eac.
  The `ld` at 0x2c50 loads 8 bytes from entry(sym(GfxDev)) +0x10.
  7 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x20, including `ld` at 0x2cb0, `ld` at 0x2dc0, `ld` at 0x3030.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x8, including `ld` at 0x2ce8, `ld` at 0x3338, `ld` at 0x3350.
  3 such `ld` accesses load 8 bytes from [entry(sym(GfxDev))+8]:8 +0x10, including `ld` at 0x2cec, `ld` at 0x333c, `ld` at 0x3354.
  2 such `sw` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `sw` at 0x2d0c, `sw` at 0x3178.
  The `ld` at 0x2d5c loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc8.
  The `ld` at 0x2d74 loads 8 bytes from entry(sym(GfxDev)) +0x48.
  17 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x28, including `ld` at 0x2d8c, `ld` at 0x2d98, `ld` at 0x2db0.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x30, including `ld` at 0x2d94, `ld` at 0x2dac, `ld` at 0x2de0.
  4 such `ld` accesses load 8 bytes from [entry(sym(GfxDev))+40]:8 +0x48, including `ld` at 0x2d9c, `ld` at 0x2db4, `ld` at 0x3008.
  The `ld` at 0x2dc4 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x60.
  2 such `sw` accesses store 4 bytes to entry(sym(GfxDev)) +0x4, including `sw` at 0x2dec, `sw` at 0x2fc8.
  4 such `sd` accesses store 8 bytes to [entry(sym(GfxDev))+40]:8 +0x48, including `sd` at 0x2e58, `sd` at 0x304c, `sd` at 0x31d4.
  6 such `lw` accesses load 4 bytes from [entry(sym(GfxDev))+40]:8 +0x68, including `lw` at 0x2e60, `lw` at 0x2e78, `lw` at 0x31dc.
  The `ld` at 0x3014 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x18.
  The `sw` at 0x302c stores 4 bytes to [entry(sym(GfxDev))+40]:8 +0x80.
  The `ld` at 0x3034 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc0.
  The `ld` at 0x3094 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x28.
  The `ld` at 0x30e0 loads 8 bytes from [entry(sym(GfxDev))+8]:8 +0x0.
  6 such `ld` accesses load 8 bytes from table(sym(GfxBoards)) +0x0, including `ld` at 0x313c, `ld` at 0x315c, `ld` at 0x3188.
  The `ld` at 0x3168 loads 8 bytes from entry(sym(GfxBoards)) +0x8.
  5 such `ld` accesses load 8 bytes from entry(sym(GfxBoards)) +0x38, including `ld` at 0x3248, `ld` at 0x3278, `ld` at 0x3290.
  The `ld` at 0x324c loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x0.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxBoards)) +0x40, including `ld` at 0x3260, `ld` at 0x3270, `ld` at 0x32f4.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x8, including `sd` at 0x326c, `sd` at 0x32b8, `sd` at 0x32e8.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x28, including `sd` at 0x3274, `sd` at 0x32b0, `sd` at 0x32f8.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x20, including `sd` at 0x327c, `sd` at 0x32ac, `sd` at 0x32f0.
  2 such `ld` accesses load 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x8, including `ld` at 0x3294, `ld` at 0x3310.
  The `ld` at 0x32c0 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x20.
  2 such `sd` accesses store 8 bytes to [entry(sym(GfxDev))+8]:8 +0x10, including `sd` at 0x334c, `sd` at 0x3364.
  The `jal` at 0x2bbc calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2bc8 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2c70 calls psema with a0=entry(sym(GfxDev))+80, a1=0x19, a2=0x1ffff, a3=[([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5))+12]+1, a4=([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)), a5=([-0x3bd8]:2 << 0x5).
  The `jalr` at 0x2d70 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=[entry(sym(GfxDev))+72]:8, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a5 at entry (arg5).
  The `jal` at 0x2d90 calls ddv_unlock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2da8 calls ddv_lock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2dd0 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=0x0, a2=-0x1, a3=?.
  The `jal` at 0x2de8 calls ddv_unlock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2e00 calls RRM_Dispatch with a0=entry(sym(GfxDev)), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a5 at entry (arg5).
  The `jal` at 0x2e3c calls cmn_err_tag with a0=0x850, a1=0x4, a2=sym(.rodata), a3=a1 at entry (arg1), a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x2e4c calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0x2e6c calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x2ea8 calls threadgroup_refcnt with a0=[ret(gthread_find)]:8, a1=0x67, a2=0x70, a3=0x71, a7=[ret(gthread_find)+24]:8.
  The `jal` at 0x2ec4 calls curproc_abi with a0=0x69, a1=?, a2=?, a3=?.
  The `jal` at 0x2ee4 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x18, a3=sym(irix5_to_gfx_getboardinfo_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2f04 calls copyin with a0=a2 at entry (arg2), a1=sp-72, a2=0x4, a3=?.
  The `jal` at 0x2f1c calls vsema with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=?.
  The `jal` at 0x2f2c calls GfxDetach with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x2f3c calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=?.
  The `jal` at 0x2f5c calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2f74 calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2f94 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2fac calls drv_priv with a0=a4 at entry (arg4), a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2fcc calls curproc_abi with a0=entry(sym(GfxDev)), a1=0x67, a2=0x70, a3=0x71, a6=0x6c, a7=0x68.
  The `jal` at 0x2fec calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x28, a3=sym(irix5_to_gfx_download_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jalr` at 0x3018 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x3028 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x3040 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=[[entry(sym(GfxDev))+32]:8+192]:8, a2=?, a3=?.
  The `jal` at 0x3054 calls vsema with a0=[entry(sym(GfxDev))+40]:8+56, a1=[entry(sym(GfxDev))+40]:8, a2=?, a3=?.
  The `jal` at 0x305c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x3074 calls rrmUnMapGfx with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jalr` at 0x3098 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?, a4=[[entry(sym(GfxDev))+32]:8+40]:8.
  The `jal` at 0x30ec calls copyin with a0=a2 at entry (arg2), a1=[[entry(sym(GfxDev))+8]:8]:8+16, a2=0x10, a3=[entry(sym(GfxDev))+8]:8, a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x31c8 calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[entry(sym(GfxDev))+8]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x31e8 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x3208 calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[[entry(sym(GfxDev))+40]:8+72]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x3228 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x325c calls (unknown callee) with a0=[entry(sym(GfxBoards))+64]:8, a1=?, a2=?, a3=a5 at entry (arg5), a4=entry(sym(GfxBoards)).
  The `jalr` at 0x329c calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards).
  The `jalr` at 0x32c8 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=sp-112, a2=?, a3=?.
  The `jalr` at 0x3318 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards), a4=[entry(sym(GfxDev))+32]:8.
  The `beq` branch at 0x2c0c targets 0x2d00, is taken when a1(?) >= at(=[sym(GfxDevLimit)]) (signed), and falls through when a1(?) < at(=[sym(GfxDevLimit)]) (signed).
  The `beq` branch at 0x2c24 targets 0x2d54, is taken when s0(=entry(sym(GfxDev))) == 0, and falls through when s0(=entry(sym(GfxDev))) != 0.
  The `beq` branch at 0x2c2c targets 0x2d4c, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x2c3c targets 0x2c64, is taken when (t9(=[entry(sym(GfxDev))+4]) & 0x8) == 0, and falls through when (t9(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` branch at 0x2c44 targets 0x2c7c, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2c54 targets 0x2c7c, is taken when ra(=[ret(gthread_find)]:8) == at(=[entry(sym(GfxDev))+16]:8), and falls through when ra(=[ret(gthread_find)]:8) != at(=[entry(sym(GfxDev))+16]:8).
  The `beq` branch at 0x2c5c targets 0x2d2c and is always taken.
  The `beq` branch at 0x2c64 targets 0x2c7c, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2c7c targets 0x2d08, is taken when s1(=a1) == v0(=0x65), and falls through when s1(=a1) != v0(=0x65).
  The `beq` branch at 0x2c88 targets 0x2ec4, is taken when s1(=a1) == v1(=0x66), and falls through when s1(=a1) != v1(=0x66).
  The `beq` branch at 0x2c90 targets 0x2efc, is taken when s1(=a1) == a0(=0x69), and falls through when s1(=a1) != a0(=0x69).
  The `beq` branch at 0x2c98 targets 0x2f3c, is taken when s1(=a1) == a1(=0x67), and falls through when s1(=a1) != a1(=0x67).
  The `beq` branch at 0x2ca0 targets 0x2f74, is taken when s1(=a1) == a2(=0x70), and falls through when s1(=a1) != a2(=0x70).
  The `beq` branch at 0x2ca8 targets 0x2fac, is taken when s1(=a1) == a3(=0x71), and falls through when s1(=a1) != a3(=0x71).
  The `beq` branch at 0x2cb4 targets 0x2d80, is taken when v0(=[entry(sym(GfxDev))+32]:8) == 0, and falls through when v0(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` branch at 0x2cbc targets 0x2d5c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x2cc4 targets 0x2df8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2cd0 targets 0x2fcc, is taken when s1(=a1) == a6(=0x6c), and falls through when s1(=a1) != a6(=0x6c).
  The `beq` branch at 0x2cd8 targets 0x2e8c, is taken when s1(=a1) == a7(=0x68), and falls through when s1(=a1) != a7(=0x68).
  The `beq` branch at 0x2ce0 targets 0x2d88, is taken when s1(=a1) == t0(=0x6e), and falls through when s1(=a1) != t0(=0x6e).
  The `beq` branch at 0x2cf0 targets 0x2e10, is taken when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) == s0(=entry(sym(GfxDev))), and falls through when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) != s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2cf8 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2d00 targets 0x2d2c and is always taken.
  The `beq` branch at 0x2d14 targets 0x2d2c, is taken when t3(=[ret(gthread_find)+24]:8) == 0, and falls through when t3(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2d24 targets 0x2f1c, is taken when (t8(=[entry(sym(GfxDev))+4]) & 0x8) == 0, and falls through when (t8(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` branch at 0x2d4c targets 0x2d2c and is always taken.
  The `beq` branch at 0x2d54 targets 0x2d2c and is always taken.
  The `beq` branch at 0x2d78 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2d80 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2d88 targets 0x2d9c and is always taken.
  The `bne` branch at 0x2da0 targets 0x2e4c, is taken when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `bne` branch at 0x2db8 targets 0x2d90, is taken when at(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when at(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2df0 targets 0x2d14 and is always taken.
  The `beq` branch at 0x2e08 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2e10 targets 0x3004, is taken when s1(=a1) == a0(=0x6a), and falls through when s1(=a1) != a0(=0x6a).
  The `beq` branch at 0x2e18 targets 0x3084, is taken when s1(=a1) == a1(=0x6b), and falls through when s1(=a1) != a1(=0x6b).
  The `beq` branch at 0x2e20 targets 0x30a8, is taken when s1(=a1) == a2(=0x6d), and falls through when s1(=a1) != a2(=0x6d).
  The `beq` branch at 0x2e28 targets 0x30e0, is taken when s1(=a1) == a4(=0x6f), and falls through when s1(=a1) != a4(=0x6f).
  The `beq` branch at 0x2e44 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2e64 targets 0x2da8, is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x2e7c targets 0x2e6c, is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x2e84 targets 0x2da8 and is always taken.
  The `bne` branch at 0x2e94 targets 0x2f2c, is taken when (a6(=[entry(sym(GfxDev))+4]) & 0x8) != 0, and falls through when (a6(=[entry(sym(GfxDev))+4]) & 0x8) == 0.
  The `beq` branch at 0x2ea0 targets 0x2f2c, is taken when a7(=[ret(gthread_find)+24]:8) == 0, and falls through when a7(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2eb4 targets 0x2f2c, is taken when v0(=ret(threadgroup_refcnt)) == t0(=0x1), and falls through when v0(=ret(threadgroup_refcnt)) != t0(=0x1).
  The `beq` branch at 0x2ebc targets 0x2d10 and is always taken.
  The `beq` branch at 0x2eec targets 0x30b0, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2ef4 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2f0c targets 0x30c8, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x2f14 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2f24 targets 0x2d2c and is always taken.
  The `beq` branch at 0x2f34 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2f64 targets 0x3100, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2f6c targets 0x2d10 and is always taken.
  The `beq` branch at 0x2f9c targets 0x3118, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2fa4 targets 0x2d10 and is always taken.
  The `bne` branch at 0x2fb4 targets 0x2d10, is taken when v0(=ret(drv_priv)) != 0, and falls through when v0(=ret(drv_priv)) == 0.
  The `beq` branch at 0x2fc4 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2ff4 targets 0x32bc, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2ffc targets 0x2d10 and is always taken.
  The `bne` branch at 0x300c targets 0x31c8, is taken when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x3038 targets 0x3048, is taken when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) == 0, and falls through when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) != 0.
  The `beq` branch at 0x306c targets 0x2d10, is taken when (a2(=[entry(sym(GfxDev))+4]) & 0x1) == 0, and falls through when (a2(=[entry(sym(GfxDev))+4]) & 0x1) != 0.
  The `beq` branch at 0x307c targets 0x2d14 and is always taken.
  The `bne` branch at 0x308c targets 0x3208, is taken when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x30a0 targets 0x2d10 and is always taken.
  The `beq` branch at 0x30a8 targets 0x2d10 and is always taken.
  The `bne` branch at 0x30b8 targets 0x3130, is taken when v0(?) < a5(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a5(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x30c0 targets 0x2d10 and is always taken.
  The `bne` branch at 0x30d0 targets 0x3150, is taken when a0(?) < a6(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when a0(?) >= a6(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x30d8 targets 0x2d10 and is always taken.
  The `beq` branch at 0x30f8 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3108 targets 0x317c, is taken when v0(?) < a2(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a2(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x3110 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3120 targets 0x31a8, is taken when v0(?) < a3(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a3(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x3128 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3140 targets 0x3248, is taken when a4(=entry(sym(GfxBoards))) != 0, and falls through when a4(=entry(sym(GfxBoards))) == 0.
  The `beq` branch at 0x3148 targets 0x2d10 and is always taken.
  The `beq` branch at 0x3160 targets 0x32d8, is taken when v0(=entry(sym(GfxBoards))) == 0, and falls through when v0(=entry(sym(GfxBoards))) != 0.
  The `beq` branch at 0x3174 targets 0x2d10 and is always taken.
  The `beq` branch at 0x318c targets 0x32e0, is taken when a2(=entry(sym(GfxBoards))) == 0, and falls through when a2(=entry(sym(GfxBoards))) != 0.
  The `beq` branch at 0x3198 targets 0x32e8, is taken when a4(=[entry(sym(GfxDev))+32]:8) == 0, and falls through when a4(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` branch at 0x31a0 targets 0x2d10 and is always taken.
  The `bne` branch at 0x31b8 targets 0x326c, is taken when a2(=entry(sym(GfxBoards))) != 0, and falls through when a2(=entry(sym(GfxBoards))) == 0.
  The `beq` branch at 0x31c0 targets 0x2d10 and is always taken.
  The `beq` branch at 0x31e0 targets 0x3200, is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x31f8 targets 0x31e8, is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x3200 targets 0x3014 and is always taken.
  The `beq` branch at 0x3220 targets 0x3240, is taken when a6(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a6(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x3238 targets 0x3228, is taken when t0(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when t0(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x3240 targets 0x3094 and is always taken.
  The `beq` branch at 0x3264 targets 0x2d10 and is always taken.
  The `beq` branch at 0x32a4 targets 0x3338, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x32b4 targets 0x2d10 and is always taken.
  The `beq` branch at 0x32d0 targets 0x2d10 and is always taken.
  The `beq` branch at 0x32d8 targets 0x2d10 and is always taken.
  The `beq` branch at 0x32e0 targets 0x2d10 and is always taken.
  The `beq` branch at 0x3320 targets 0x3350, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x3330 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3340 targets 0x2d10, is taken when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0, and falls through when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `beq` branch at 0x3348 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3358 targets 0x2d10, is taken when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0, and falls through when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `beq` branch at 0x3360 targets 0x2d10 and is always taken.
  The return at 0x2d44 has v0 = one of 0xd, 0x6, ?, 0x13.
- `sndrv_ioctl_common` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1d00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1d00-0x20f8 (1016 bytes).
  It occupies 1016 bytes.
  The `ld` at 0x1d34 loads 8 bytes from (sym(.rodata)+304 + (a1 << 0x3)) +0x0.
  Calls (unknown callee) via register with a0=[(sym(.rodata)+304 + (a1 << 0x3))]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x1d38).
  The `beq` branch at 0x1d2c targets 0x1d40, is taken when a1 >= 0x1b (unsigned), and falls through when a1 < 0x1b (unsigned).
  The `beq` branch at 0x1d40 targets 0x1d5c and is always taken.
  The return at 0x1d6c has v0 = 0x16.
  The instructions from 0x1d48 to 0x1d58 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1d74 to 0x20f4 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x1d38 uses a jump table whose successors are unresolved.
- `glXChooseVisual` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd80e650 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd80e650-0xd80f0ec (2716 bytes).
  It occupies 2716 bytes.
  The `lw` at 0xd80e730 loads 4 bytes from a2 (arg2 at entry) +0x0.
  54 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd80e75c, `lw` at 0xd80e778, `lw` at 0xd80e7b0.
  The `lw` at 0xd80e7a0 loads 4 bytes from table(0xd840e84) +0x0.
  The `lw` at 0xd80e9bc loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd80e9cc loads 4 bytes from ret(__glXInitialize) +0x20.
  4 such `lw` accesses load 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x4, including `lw` at 0xd80e9e4, `lw` at 0xd80ea48, `lw` at 0xd80f058.
  27 such `lw` accesses load 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x8, including `lw` at 0xd80e9ec, `lw` at 0xd80eb2c, `lw` at 0xd80eb68.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd80ea9c, `lbu` at 0xd80eab4, `lbu` at 0xd80eac8.
  The `lw` at 0xd80ec7c loads 4 bytes from table(0xd840f24) +0x0.
  The `jalr` at 0xd80e994 calls __glXInitialize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80eaf8 calls AuxScore [0xd811c34] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80eb40 calls sampleBuffersScore [0xd8125e4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80eb7c calls SampleScore [0xd810484] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80ed44 calls ColorScore [0xd80ff2c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80ed7c calls ColorScore [0xd80ff2c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80edb4 calls ColorScore [0xd80ff2c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80edec calls ColorScore [0xd80ff2c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80ee24 calls AccumScore [0xd80ff48] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80ee5c calls AccumScore [0xd80ff48] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80ee94 calls AccumScore [0xd80ff48] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80eecc calls AccumScore [0xd80ff48] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80ef04 calls IndexScore [0xd826c7c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80ef3c calls DepthScore [0xd81163c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80ef74 calls StencilScore [0xd8125dc] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80f0b0 calls __glXOverrideVisualGetVisualInfo with a0=a0 at entry (arg0), a1=0x3, a2=sp-212, a3=sp-4.
  The `beq` branch at 0xd80e728 targets 0xd80e954, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0xd80e73c targets 0xd80e954, is taken when v1(=[a2]) == 0, and falls through when v1(=[a2]) != 0.
  The `bne` branch at 0xd80e750 targets 0xd80e768, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beql` branch at 0xd80e758 targets 0xd80e8b8, is taken when v1(?) == a0(=0x186a1), and falls through when v1(?) != a0(=0x186a1); its branch-likely delay slot `lw s7,0(a2)` at 0xd80e75c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80e760 targets 0xd80f0bc and is always taken.
  The `bnel` branch at 0xd80e76c targets 0xd80e788, is taken when v0(?) < 0x29 (signed), and falls through when v0(?) >= 0x29 (signed); its branch-likely delay slot `addiu t9,v0,-1` at 0xd80e770 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd80e774 targets 0xd80e898, is taken when v0(?) == a1(=0x186a0), and falls through when v0(?) != a1(=0x186a0); its branch-likely delay slot `lw t6,0(a2)` at 0xd80e778 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80e77c targets 0xd80f0bc and is always taken.
  The `beq` branch at 0xd80e78c targets 0xd80e938, is taken when t9(?) >= 0x28 (unsigned), and falls through when t9(?) < 0x28 (unsigned).
  The `beq` branch at 0xd80e7b8 targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e7c4 targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e7cc targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e7d4 targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e7dc targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e7ec targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e7fc targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e80c targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e81c targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e82c targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e83c targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e84c targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e85c targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e86c targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e87c targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e88c targets 0xd80e940 and is always taken.
  The `blez` branch at 0xd80e89c targets 0xd80e940, is taken when t6(?) <= 0 (signed), and falls through when t6(?) > 0 (signed).
  The `bne` branch at 0xd80e8a4 targets 0xd80e940, is taken when s7(?) != 0, and falls through when s7(?) == 0.
  The `beq` branch at 0xd80e8ac targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e8b8 targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e8c8 targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e8dc targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e8ec targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e8fc targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e90c targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e91c targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e930 targets 0xd80e940 and is always taken.
  The `beq` branch at 0xd80e938 targets 0xd80f0bc and is always taken.
  The `beq` branch at 0xd80e940 targets 0xd80e954, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bnel` branch at 0xd80e94c targets 0xd80e74c, is taken when v1(?) != 0, and falls through when v1(?) == 0; its branch-likely delay slot `slt at,v1,a0` at 0xd80e950 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd80e99c targets 0xd80e9ac, is taken when v0(=ret(__glXInitialize)) != 0, and falls through when v0(=ret(__glXInitialize)) == 0.
  The `beq` branch at 0xd80e9a4 targets 0xd80f0bc and is always taken.
  The `bltz` branch at 0xd80e9b4 targets 0xd80e9d0, is taken when t6(=a1) < 0 (signed), and falls through when t6(=a1) >= 0 (signed).
  The `bnel` branch at 0xd80e9c8 targets 0xd80e9dc, is taken when t6(=a1) < t8(=[a0+136]) (signed), and falls through when t6(=a1) >= t8(=[a0+136]) (signed); its branch-likely delay slot `lw t9,32(v0)` at 0xd80e9cc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80e9d0 targets 0xd80f0bc and is always taken.
  The `bnel` branch at 0xd80e9e8 targets 0xd80e9fc, is taken when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+4]) != 0, and falls through when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+4]) == 0; its branch-likely delay slot `lw v1,8(s2)` at 0xd80e9ec runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80e9f0 targets 0xd80f0bc and is always taken.
  The `blezl` branch at 0xd80ea00 targets 0xd80ea34, is taken when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+8]) <= 0 (signed), and falls through when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+8]) > 0 (signed); its branch-likely delay slot `lw t7,248(sp)` at 0xd80ea04 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd80ea18 targets 0xd80ea28, is taken when t8(?) >= v0(?) (signed), and falls through when t8(?) < v0(?) (signed); its branch-likely delay slot `slt at,s4,v1` at 0xd80ea1c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd80ea28 targets 0xd80ea08, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `blez` branch at 0xd80ea40 targets 0xd80f064, is taken when t9(?) <= 0 (signed), and falls through when t9(?) > 0 (signed).
  The `blez` branch at 0xd80ea54 targets 0xd80f024, is taken when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+8]) <= 0 (signed), and falls through when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+8]) > 0 (signed).
  The `bnel` branch at 0xd80ea68 targets 0xd80f018, is taken when t6(?) != t8(?), and falls through when t6(?) == t8(?); its branch-likely delay slot `addiu s4,s4,1` at 0xd80ea6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80ea7c targets 0xd80ea8c, is taken when v0(?) == at(=0x4), and falls through when v0(?) != at(=0x4).
  The `bnel` branch at 0xd80ea84 targets 0xd80ea94, is taken when v0(?) != at(=0x3), and falls through when v0(?) == at(=0x3); its branch-likely delay slot `lw t9,124(s1)` at 0xd80ea88 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd80ea94 targets 0xd80f018, is taken when t7(?) != t9(?), and falls through when t7(?) == t9(?); its branch-likely delay slot `addiu s4,s4,1` at 0xd80ea98 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd80eaac targets 0xd80f014, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `bne` branch at 0xd80eac0 targets 0xd80f014, is taken when t6(?) != t9(?), and falls through when t6(?) == t9(?).
  The `bnel` branch at 0xd80ead4 targets 0xd80f018, is taken when t6(?) != t8(?), and falls through when t6(?) == t8(?); its branch-likely delay slot `addiu s4,s4,1` at 0xd80ead8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd80eae8 targets 0xd80f014, is taken when a1(?) < t9(?) (signed), and falls through when a1(?) >= t9(?) (signed).
  The `bne` branch at 0xd80eb10 targets 0xd80eb28, is taken when v0(?) < s7(?) (unsigned), and falls through when v0(?) >= s7(?) (unsigned).
  The `bne` branch at 0xd80eb18 targets 0xd80eb30, is taken when s7(?) != 0, and falls through when s7(?) == 0.
  The `beq` branch at 0xd80eb20 targets 0xd80eb30, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd80eb28 targets 0xd80f014 and is always taken.
  The `beq` branch at 0xd80eb5c targets 0xd80eb6c, is taken when v0(?) >= t6(?) (unsigned), and falls through when v0(?) < t6(?) (unsigned).
  The `beq` branch at 0xd80eb64 targets 0xd80f014 and is always taken.
  The `beq` branch at 0xd80eb90 targets 0xd80ec54, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xd80eba4 targets 0xd80ebb4, is taken when t7(?) == t9(?), and falls through when t7(?) != t9(?).
  The `beq` branch at 0xd80ebac targets 0xd80f014 and is always taken.
  The `bne` branch at 0xd80ebb4 targets 0xd80ec24, is taken when t6(?) != at(=0x8008), and falls through when t6(?) == at(=0x8008).
  The `beq` branch at 0xd80ebc8 targets 0xd80ebe4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xd80ebd4 targets 0xd80ebe4, is taken when t7(?) == t9(?), and falls through when t7(?) != t9(?).
  The `beq` branch at 0xd80ebdc targets 0xd80f014 and is always taken.
  The `beq` branch at 0xd80ebe4 targets 0xd80ec00, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beql` branch at 0xd80ebf0 targets 0xd80ec04, is taken when t8(?) == t7(?), and falls through when t8(?) != t7(?); its branch-likely delay slot `lw t9,136(sp)` at 0xd80ebf4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80ebf8 targets 0xd80f014 and is always taken.
  The `beql` branch at 0xd80ec08 targets 0xd80ec58, is taken when t9(?) == 0, and falls through when t9(?) != 0; its branch-likely delay slot `lw t7,176(sp)` at 0xd80ec0c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd80ec14 targets 0xd80ec58, is taken when t6(?) == t8(?), and falls through when t6(?) != t8(?); its branch-likely delay slot `lw t7,176(sp)` at 0xd80ec18 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80ec1c targets 0xd80f014 and is always taken.
  The `bnel` branch at 0xd80ec28 targets 0xd80ec58, is taken when t7(?) != at(=0x8009), and falls through when t7(?) == at(=0x8009); its branch-likely delay slot `lw t7,176(sp)` at 0xd80ec2c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd80ec38 targets 0xd80ec58, is taken when t9(?) == 0, and falls through when t9(?) != 0; its branch-likely delay slot `lw t7,176(sp)` at 0xd80ec3c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd80ec44 targets 0xd80ec58, is taken when t6(?) == t8(?), and falls through when t6(?) != t8(?); its branch-likely delay slot `lw t7,176(sp)` at 0xd80ec48 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80ec4c targets 0xd80f014 and is always taken.
  The `beq` branch at 0xd80ec58 targets 0xd80eccc, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beql` branch at 0xd80ec68 targets 0xd80ecbc, is taken when t9(?) >= 0x6 (unsigned), and falls through when t9(?) < 0x6 (unsigned); its branch-likely delay slot `lw t6,172(sp)` at 0xd80ec6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80ec8c targets 0xd80ecb8 and is always taken.
  The `beq` branch at 0xd80ec94 targets 0xd80ecb8 and is always taken.
  The `beq` branch at 0xd80ec9c targets 0xd80ecb8 and is always taken.
  The `beq` branch at 0xd80eca4 targets 0xd80ecb8 and is always taken.
  The `beq` branch at 0xd80ecac targets 0xd80ecb8 and is always taken.
  The `beq` branch at 0xd80ecbc targets 0xd80ed14, is taken when t6(?) == s3(?), and falls through when t6(?) != s3(?).
  The `beq` branch at 0xd80ecc4 targets 0xd80f014 and is always taken.
  The `beql` branch at 0xd80eccc targets 0xd80ecf8, is taken when s8(=one of 0x0, 0x1) == 0, and falls through when s8(=one of 0x0, 0x1) != 0; its branch-likely delay slot `lw v0,0(s1)` at 0xd80ecd0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80ecdc targets 0xd80ed14, is taken when v0(?) == at(=0x4), and falls through when v0(?) != at(=0x4).
  The `beq` branch at 0xd80ece4 targets 0xd80ed14, is taken when v0(?) == at(=0x5), and falls through when v0(?) != at(=0x5).
  The `beq` branch at 0xd80ecec targets 0xd80f014 and is always taken.
  The `beq` branch at 0xd80ecfc targets 0xd80ed14, is taken when v0(?) == at(=0x3), and falls through when v0(?) != at(=0x3).
  The `beq` branch at 0xd80ed04 targets 0xd80ed14, is taken when v0(?) == at(=0x2), and falls through when v0(?) != at(=0x2).
  The `beq` branch at 0xd80ed0c targets 0xd80f014 and is always taken.
  The `beq` branch at 0xd80ed14 targets 0xd80eee0, is taken when s8(=one of 0x0, 0x1) == 0, and falls through when s8(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd80ed28 targets 0xd80ed38, is taken when a1(?) >= t8(?) (signed), and falls through when a1(?) < t8(?) (signed).
  The `beq` branch at 0xd80ed30 targets 0xd80f014 and is always taken.
  The `beq` branch at 0xd80ed60 targets 0xd80ed70, is taken when a1(?) >= t7(?) (signed), and falls through when a1(?) < t7(?) (signed).
  The `beq` branch at 0xd80ed68 targets 0xd80f014 and is always taken.
  The `beq` branch at 0xd80ed98 targets 0xd80eda8, is taken when a1(?) >= t9(?) (signed), and falls through when a1(?) < t9(?) (signed).
  The `beq` branch at 0xd80eda0 targets 0xd80f014 and is always taken.
  The `beq` branch at 0xd80edd0 targets 0xd80ede0, is taken when a1(?) >= t6(?) (signed), and falls through when a1(?) < t6(?) (signed).
  The `beq` branch at 0xd80edd8 targets 0xd80f014 and is always taken.
  The `beq` branch at 0xd80ee08 targets 0xd80ee18, is taken when a1(?) >= t8(?) (signed), and falls through when a1(?) < t8(?) (signed).
  The `beq` branch at 0xd80ee10 targets 0xd80f014 and is always taken.
  The `beq` branch at 0xd80ee40 targets 0xd80ee50, is taken when a1(?) >= t7(?) (signed), and falls through when a1(?) < t7(?) (signed).
  The `beq` branch at 0xd80ee48 targets 0xd80f014 and is always taken.
  The `beq` branch at 0xd80ee78 targets 0xd80ee88, is taken when a1(?) >= t9(?) (signed), and falls through when a1(?) < t9(?) (signed).
  The `beq` branch at 0xd80ee80 targets 0xd80f014 and is always taken.
  The `beq` branch at 0xd80eeb0 targets 0xd80eec0, is taken when a1(?) >= t6(?) (signed), and falls through when a1(?) < t6(?) (signed).
  The `beq` branch at 0xd80eeb8 targets 0xd80f014 and is always taken.
  The `beq` branch at 0xd80eed8 targets 0xd80ef14 and is always taken.
  The `beq` branch at 0xd80eee8 targets 0xd80eef8, is taken when a1(?) >= t8(?) (signed), and falls through when a1(?) < t8(?) (signed).
  The `beq` branch at 0xd80eef0 targets 0xd80f014 and is always taken.
  The `beq` branch at 0xd80ef20 targets 0xd80ef30, is taken when a1(?) >= t7(?) (signed), and falls through when a1(?) < t7(?) (signed).
  The `beq` branch at 0xd80ef28 targets 0xd80f014 and is always taken.
  The `beq` branch at 0xd80ef58 targets 0xd80ef68, is taken when a1(?) >= t9(?) (signed), and falls through when a1(?) < t9(?) (signed).
  The `beq` branch at 0xd80ef60 targets 0xd80f014 and is always taken.
  The `beq` branch at 0xd80ef88 targets 0xd80efa4, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xd80ef94 targets 0xd80eff8, is taken when t8(?) == t7(?), and falls through when t8(?) != t7(?).
  The `beq` branch at 0xd80ef9c targets 0xd80f014 and is always taken.
  The `beq` branch at 0xd80efac targets 0xd80efd8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0xd80efbc targets 0xd80efd8, is taken when t6(?) != at(=0x8000), and falls through when t6(?) == at(=0x8000).
  The `beq` branch at 0xd80efd0 targets 0xd80f014 and is always taken.
  The `bne` branch at 0xd80efd8 targets 0xd80eff8, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0xd80efe8 targets 0xd80eff8, is taken when t7(?) == at(=0x8000), and falls through when t7(?) != at(=0x8000).
  The `beq` branch at 0xd80eff0 targets 0xd80f014 and is always taken.
  The `bltz` branch at 0xd80eff8 targets 0xd80f008, is taken when s6(?) < 0 (signed), and falls through when s6(?) >= 0 (signed).
  The `beql` branch at 0xd80f000 targets 0xd80f014, is taken when at(?) == 0, and falls through when at(?) != 0; its branch-likely delay slot `lw v1,8(s2)` at 0xd80f004 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd80f01c targets 0xd80ea5c, is taken when s4(?) < v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+8]) (signed), and falls through when s4(?) >= v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+8]) (signed).
  The `bltzl` branch at 0xd80f024 targets 0xd80f038, is taken when s6(?) < 0 (signed), and falls through when s6(?) >= 0 (signed); its branch-likely delay slot `lw t6,276(sp)` at 0xd80f028 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd80f044 targets 0xd80f064, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `bnel` branch at 0xd80f054 targets 0xd80ea4c, is taken when t8(?) < t9(?) (signed), and falls through when t8(?) >= t9(?) (signed); its branch-likely delay slot `lw s1,4(s2)` at 0xd80f058 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xd80f06c targets 0xd80f07c, is taken when s6(?) >= 0 (signed), and falls through when s6(?) < 0 (signed).
  The `beq` branch at 0xd80f074 targets 0xd80f0bc and is always taken.
  The return at 0xd80f0e4 has v0 = one of 0x0, ret(__glXOverrideVisualGetVisualInfo).
  The instructions from 0xd80e784 to 0xd80e784 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd80e894 to 0xd80e894 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd80e8b4 to 0xd80e8b4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd80e9d8 to 0xd80e9d8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd80e9f8 to 0xd80e9f8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd80ecf4 to 0xd80ecf4 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80e7a8 uses the jump table at 0xd840e84 with targets 0xd80e940, 0xd80e7b0, 0xd80e7c0, 0xd80e7cc, 0xd80e7d4, 0xd80e7dc, 0xd80e7e4, 0xd80e7f4, 0xd80e804, 0xd80e814, 0xd80e824, 0xd80e834, 0xd80e844, 0xd80e854, 0xd80e864, 0xd80e874, 0xd80e884, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e938, 0xd80e924, 0xd80e938, 0xd80e8c0, 0xd80e8d0, 0xd80e8e4, 0xd80e8f4, 0xd80e904, 0xd80e914, 0xd80e940.
  The indirect jump at 0xd80ec84 uses the jump table at 0xd840f24 with targets 0xd80ecb4, 0xd80ecac, 0xd80eca4, 0xd80ec9c, 0xd80ec8c, 0xd80ec94.
  The indirect jump at 0xd80ec84 uses the jump table at 0xd840f24 with targets 0xd80ecb4, 0xd80ecac, 0xd80eca4, 0xd80ec9c, 0xd80ec8c, 0xd80ec94.
  The indirect jump at 0xd80ec84 uses the jump table at 0xd840f24 with targets 0xd80ecb4, 0xd80ecac, 0xd80eca4, 0xd80ec9c, 0xd80ec8c, 0xd80ec94.
  The indirect jump at 0xd80ec84 uses the jump table at 0xd840f24 with targets 0xd80ecb4, 0xd80ecac, 0xd80eca4, 0xd80ec9c, 0xd80ec8c, 0xd80ec94.
  The indirect jump at 0xd80ec84 uses the jump table at 0xd840f24 with targets 0xd80ecb4, 0xd80ecac, 0xd80eca4, 0xd80ec9c, 0xd80ec8c, 0xd80ec94.
- `AccumScore` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd80ff48 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd80ff48-0xd810484 (1340 bytes).
  It occupies 1340 bytes.
  The `beq` branch at 0xd80ff48 targets 0xd80ff58, is taken when a0 == 0, and falls through when a0 != 0.
  The return at 0xd80ff50 has v0 = ?.
  The return at 0xd80ff58 has v0 = ?.
  The instructions from 0xd80ff60 to 0xd810480 are not reached by any path from the entry, and their branches are not listed.
- `SampleScore` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd810484 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd810484-0xd810ad4 (1616 bytes).
  It occupies 1616 bytes.
  The `beq` branch at 0xd810488 targets 0xd810498, is taken when a0 >= a1 (signed), and falls through when a0 < a1 (signed).
  The `bne` branch at 0xd810498 targets 0xd8104a8, is taken when a1 != a0, and falls through when a1 == a0.
  The return at 0xd810490 has v0 = ?.
  The return at 0xd8104a0 has v0 = (a1 << 0x6).
  The return at 0xd8104a8 has v0 = 0x0.
  The instructions from 0xd8104b0 to 0xd810ad0 are not reached by any path from the entry, and their branches are not listed.
- `AllocAndFetchScreenConfigs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd810cc4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd810cc4-0xd8113d4 (1808 bytes).
  It occupies 1808 bytes.
  The `lw` at 0xd810cf8 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `sw` at 0xd810d40 stores 4 bytes to a1 (arg1 at entry) +0x20.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0xd810d4c, `lw` at 0xd810e5c.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0xd810d5c, `lw` at 0xd810e68.
  The `lw` at 0xd810d70 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `sw` at 0xd810d94 stores 4 bytes to ?.
  The `sb` at 0xd810db4 stores 1 byte to ?.
  The `jalr` at 0xd810d0c calls malloc with a0=([a0+136] << 0x5), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd810d34 calls memset with a0=ret(malloc), a1=0x0, a2=([a0+136] << 0x5), a3=?.
  The `jalr` at 0xd810d78 calls __glXQueryServerString with a0=a0 at entry (arg0), a1=[a1+4], a2=?, a3=0x3.
  The `jalr` at 0xd810da0 calls checkExtension [0xd838914] with a0=0xd841894, a1=ret(__glXQueryServerString), a2=?, a3=?.
  The `jalr` at 0xd810dc8 calls checkExtension [0xd838914] with a0=0xd8418b0, a1=ret(__glXQueryServerString), a2=?, a3=?.
  The `jalr` at 0xd810dec calls GetBoardNumber [0xd811418] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd810e08 calls FreeScreenConfigs [0xd81f210] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd810e2c calls GetVisualConfigs [0xd80e030] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd810e48 calls FreeScreenConfigs [0xd81f210] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd810e88 calls GetFBConfigs [0xd80d940] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd810ea4 calls FreeScreenConfigs [0xd81f210] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd810ed0 calls GetFBConfigsSGIX [0xd838214] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd810eec calls FreeScreenConfigs [0xd81f210] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd810f18 calls OverrideVisuals [0xd811c3c] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd810d18 targets 0xd810d28, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd810d20 targets 0xd810f28 and is always taken.
  The `blez` branch at 0xd810d44 targets 0xd810f0c, is taken when s6(=[a0+136]) <= 0 (signed), and falls through when s6(=[a0+136]) > 0 (signed).
  The `blez` branch at 0xd810d54 targets 0xd810ddc, is taken when t6(=[a1+16]) <= 0 (signed), and falls through when t6(=[a1+16]) > 0 (signed).
  The `blez` branch at 0xd810d64 targets 0xd810ddc, is taken when t7(=[a1+20]) <= 0 (signed), and falls through when t7(=[a1+20]) > 0 (signed).
  The `beq` branch at 0xd810d84 targets 0xd810ddc, is taken when v0(=ret(__glXQueryServerString)) == 0, and falls through when v0(=ret(__glXQueryServerString)) != 0.
  The `beq` branch at 0xd810da8 targets 0xd810db8, is taken when v0(=ret(checkExtension)) == 0, and falls through when v0(=ret(checkExtension)) != 0.
  The `beq` branch at 0xd810dd0 targets 0xd810ddc, is taken when v0(=ret(checkExtension)) == 0, and falls through when v0(=ret(checkExtension)) != 0.
  The `bne` branch at 0xd810df4 targets 0xd810e1c, is taken when v0(=ret(GetBoardNumber)) != 0, and falls through when v0(=ret(GetBoardNumber)) == 0.
  The `beq` branch at 0xd810e14 targets 0xd810f28 and is always taken.
  The `bne` branch at 0xd810e34 targets 0xd810e5c, is taken when v0(=ret(GetVisualConfigs)) != 0, and falls through when v0(=ret(GetVisualConfigs)) == 0.
  The `beq` branch at 0xd810e54 targets 0xd810f28 and is always taken.
  The `blez` branch at 0xd810e60 targets 0xd810eb8, is taken when t9(=[a1+16]) <= 0 (signed), and falls through when t9(=[a1+16]) > 0 (signed).
  The `bne` branch at 0xd810e70 targets 0xd810eb8, is taken when t0(=[a1+20]) < 0x3 (signed), and falls through when t0(=[a1+20]) >= 0x3 (signed).
  The `bne` branch at 0xd810e90 targets 0xd810f00, is taken when v0(=ret(GetFBConfigs)) != 0, and falls through when v0(=ret(GetFBConfigs)) == 0.
  The `beq` branch at 0xd810eb0 targets 0xd810f28 and is always taken.
  The `beql` branch at 0xd810eb8 targets 0xd810f04, is taken when s4(=one of 0x0, 0x1) == 0, and falls through when s4(=one of 0x0, 0x1) != 0; its branch-likely delay slot `addiu s1,s1,1` at 0xd810ebc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd810ed8 targets 0xd810f00, is taken when v0(=ret(GetFBConfigsSGIX)) != 0, and falls through when v0(=ret(GetFBConfigsSGIX)) == 0.
  The `beq` branch at 0xd810ef8 targets 0xd810f28 and is always taken.
  The `bne` branch at 0xd810f04 targets 0xd810d4c, is taken when s1(?) != s6(=[a0+136]), and falls through when s1(?) == s6(=[a0+136]).
  The return at 0xd810f48 has v0 = one of 0x0, 0x1.
  The instructions from 0xd810f50 to 0xd8113d0 are not reached by any path from the entry, and their branches are not listed.
- `OverrideVisuals` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd811c3c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd811c3c-0xd8125dc (2464 bytes).
  It occupies 2464 bytes.
  The `sw` at 0xd811cb0 stores 4 bytes to abs 0xd846770.
  The `lw` at 0xd811cf4 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0xd811cf8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  61 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd811d14, `sw` at 0xd811df0, `sw` at 0xd811e18.
  34 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd811d94, `lw` at 0xd811d98, `lw` at 0xd811dbc.
  10 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8121bc, `sb` at 0xd8121c0, `sb` at 0xd812210.
  8 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0xd812298, `sdc1` at 0xd8122a4, `sdc1` at 0xd8122b0.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd812338, `lbu` at 0xd812340, `lbu` at 0xd812478.
  The `jalr` at 0xd811c8c calls getenv with a0=0xd8418f4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd811cb4 calls fopen with a0=ret(getenv), a1=0xd841904, a2=?, a3=?.
  The `jalr` at 0xd811cd0 calls perror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd811ce4 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0xd811d00 calls glXGetClientString with a0=[a0], a1=0x3, a2=?, a3=?.
  The `jalr` at 0xd811d24 calls fgets with a0=sp-1040, a1=0x400, a2=?, a3=?.
  The `jalr` at 0xd811d40 calls sscanf with a0=sp-1040, a1=0xd841908, a2=sp-1052, a3=?.
  The `jalr` at 0xd811d70 calls fprintf with a0=sym(__iob)+32, a1=0xd84190c, a2=?, a3=?.
  The `jalr` at 0xd811d84 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0xd811e40 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd811e60 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd811e88 calls bzero with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd811f74 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd811fa0 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd811fc8 calls bzero with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd81201c calls fgets with a0=sp-1040, a1=0x400, a2=?, a3=?.
  The `jalr` at 0xd8120f8 calls sscanf with a0=sp-1040, a1=0xd841940, a2=sp-5248, a3=sp-5244.
  The `jalr` at 0xd812178 calls fprintf with a0=sym(__iob)+32, a1=0xd841984, a2=?, a3=?.
  The `jalr` at 0xd81218c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0xd812574 calls fprintf with a0=sym(__iob)+32, a1=0xd8419bc, a2=?, a3=?.
  The `jalr` at 0xd812588 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd811c98 targets 0xd812594, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `bne` branch at 0xd811cc0 targets 0xd811cf0, is taken when v0(=ret(fopen)) != 0, and falls through when v0(=ret(fopen)) == 0.
  The `bgtz` branch at 0xd811d54 targets 0xd811d94, is taken when a3(?) > 0 (signed), and falls through when a3(?) <= 0 (signed).
  The `blez` branch at 0xd811da8 targets 0xd811e38, is taken when v1(?) <= 0 (signed), and falls through when v1(?) > 0 (signed).
  The `bnel` branch at 0xd811dc4 targets 0xd811e28, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `slt at,s3,v1` at 0xd811dc8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd811dd4 targets 0xd811dfc, is taken when a0(=0x3) != v0(?), and falls through when a0(=0x3) == v0(?).
  The `beq` branch at 0xd811ddc targets 0xd811e24, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd811df4 targets 0xd811e24 and is always taken.
  The `bne` branch at 0xd811dfc targets 0xd811e24, is taken when a1(=0x4) != v0(?), and falls through when a1(=0x4) == v0(?).
  The `beq` branch at 0xd811e04 targets 0xd811e24, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd811e28 targets 0xd811dbc, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd811ebc targets 0xd811ff8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `blez` branch at 0xd811ecc targets 0xd811f6c, is taken when v1(?) <= 0 (signed), and falls through when v1(?) > 0 (signed).
  The `bnel` branch at 0xd811ee0 targets 0xd811f5c, is taken when t2(?) != 0, and falls through when t2(?) == 0; its branch-likely delay slot `slt at,s3,v1` at 0xd811ee4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd811ef0 targets 0xd811f5c, is taken when (t3(?) & 0x1) == 0, and falls through when (t3(?) & 0x1) != 0; its branch-likely delay slot `slt at,s3,v1` at 0xd811ef4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd811f00 targets 0xd811f30, is taken when a0(=0x8004) != v0(?), and falls through when a0(=0x8004) == v0(?).
  The `beq` branch at 0xd811f0c targets 0xd811f58, is taken when s5(?) >= 0x100 (signed), and falls through when s5(?) < 0x100 (signed).
  The `beq` branch at 0xd811f28 targets 0xd811f58 and is always taken.
  The `bne` branch at 0xd811f30 targets 0xd811f58, is taken when v0(?) != at(=0x8002), and falls through when v0(?) == at(=0x8002).
  The `beq` branch at 0xd811f38 targets 0xd811f58, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd811f5c targets 0xd811ed8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `blez` branch at 0xd812004 targets 0xd812558, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `bne` branch at 0xd812024 targets 0xd812034, is taken when v0(=ret(fgets)) != 0, and falls through when v0(=ret(fgets)) == 0.
  The `beq` branch at 0xd81202c targets 0xd812558 and is always taken.
  The `beq` branch at 0xd812040 targets 0xd812548, is taken when t2(?) == at(=0x23), and falls through when t2(?) != at(=0x23).
  The `beq` branch at 0xd812104 targets 0xd812128, is taken when v0(=ret(sscanf)) == at(=0x13), and falls through when v0(=ret(sscanf)) != at(=0x13).
  The `beq` branch at 0xd812110 targets 0xd812148, is taken when v0(=ret(sscanf)) == at(=0x14), and falls through when v0(=ret(sscanf)) != at(=0x14).
  The `beq` branch at 0xd812118 targets 0xd812198, is taken when v0(=ret(sscanf)) == at(=0x16), and falls through when v0(=ret(sscanf)) != at(=0x16).
  The `beq` branch at 0xd812120 targets 0xd812160 and is always taken.
  The `beq` branch at 0xd812140 targets 0xd812198 and is always taken.
  The `beq` branch at 0xd812158 targets 0xd812198 and is always taken.
  The `bnel` branch at 0xd81220c targets 0xd812230, is taken when 0 < v1(?) (signed), and falls through when 0 >= v1(?) (signed); its branch-likely delay slot `sb v1,48(s0)` at 0xd812210 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd81221c targets 0xd812230, is taken when 0 < v1(?) (signed), and falls through when 0 >= v1(?) (signed); its branch-likely delay slot `sb v1,48(s0)` at 0xd812220 runs only when taken and is annulled on fall-through.
  The `bc1t` branch at 0xd812308 targets 0xd812314, is taken when f8 == f16 (c.eq.d at 0xd812300), and falls through when not (f8 == f16 (c.eq.d at 0xd812300)).
  The `bne` branch at 0xd812314 targets 0xd812340, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `bc1tl` branch at 0xd812334 targets 0xd812344, is taken when f18 == f6 (c.eq.d at 0xd81232c), and falls through when not (f18 == f6 (c.eq.d at 0xd81232c)); its branch-likely delay slot `lbu t8,45(s0)` at 0xd812338 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd812348 targets 0xd81238c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0xd812350 targets 0xd812370, is taken when s7(?) != 0, and falls through when s7(?) == 0.
  The `beq` branch at 0xd812368 targets 0xd8123c4 and is always taken.
  The `beq` branch at 0xd812384 targets 0xd8123c4 and is always taken.
  The `bne` branch at 0xd81238c targets 0xd8123ac, is taken when s6(?) != 0, and falls through when s6(?) == 0.
  The `beq` branch at 0xd8123a4 targets 0xd8123c4 and is always taken.
  The `beq` branch at 0xd812424 targets 0xd812544, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0xd812454 targets 0xd812438, is taken when t4(?) != t2(?), and falls through when t4(?) == t2(?).
  The `beq` branch at 0xd8124ac targets 0xd8124f8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0xd8124b8 targets 0xd8124d8, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `beq` branch at 0xd8124d0 targets 0xd812540 and is always taken.
  The `beq` branch at 0xd8124f0 targets 0xd812540 and is always taken.
  The `bne` branch at 0xd8124f8 targets 0xd812518, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0xd812510 targets 0xd812534 and is always taken.
  The `bne` branch at 0xd812550 targets 0xd812010, is taken when s3(?) < a3(?) (signed), and falls through when s3(?) >= a3(?) (signed).
  The `beq` branch at 0xd812558 targets 0xd812594, is taken when s3(?) == a3(?), and falls through when s3(?) != a3(?).
  The return at 0xd8125bc has v0 = one of ret(getenv), ?, ret(exit).
  The instructions from 0xd8125c4 to 0xd8125d8 are not reached by any path from the entry, and their branches are not listed.
- `sampleBuffersScore` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8125e4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8125e4-0xd812668 (132 bytes).
  It occupies 132 bytes.
  The return at 0xd8125e4 has v0 = ?.
  The instructions from 0xd8125ec to 0xd812664 are not reached by any path from the entry, and their branches are not listed.
- `isLocal` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd812668 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd812668-0xd81ef28 (51392 bytes).
  It occupies 51392 bytes.
  The `lw` at 0xd812688 loads 4 bytes from a0 (arg0 at entry) +0x108.
  The `lw` at 0xd812698 loads 4 bytes from [a0+264] +0x8.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd81269c, `lw` at 0xd8126ac, `lw` at 0xd8126b4.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8126a8, `sw` at 0xd8126b0, `sw` at 0xd8126bc.
  The `jalr` at 0xd8126e4 calls getpeername with a0=[[a0+264]+8], a1=sp-24, a2=sp-556, a3=a3 at entry (arg3).
  The `jalr` at 0xd812720 calls isNotProxy [0xd8342dc] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd812748 calls fprintf with a0=sym(__iob)+32, a1=0xd840d14, a2=?, a3=?.
  The `jalr` at 0xd812778 calls ioctl with a0=?, a1=0xffffffffc0086914, a2=sp-32, a3=?.
  The `jalr` at 0xd8127bc calls isNotProxy [0xd8342dc] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8126b8 targets 0xd81269c, is taken when t8(?) != t1(=0xd8441f8), and falls through when t8(?) == t1(=0xd8441f8).
  The `beq` branch at 0xd8126f8 targets 0xd812714, is taken when a2(?) == at(=0x1), and falls through when a2(?) != at(=0x1).
  The `beq` branch at 0xd812704 targets 0xd812730, is taken when a2(?) == at(=0x2), and falls through when a2(?) != at(=0x2).
  The `beq` branch at 0xd81270c targets 0xd812738 and is always taken.
  The `beq` branch at 0xd812728 targets 0xd8127d8 and is always taken.
  The `beq` branch at 0xd812730 targets 0xd81275c and is always taken.
  The `beq` branch at 0xd812754 targets 0xd8127d8 and is always taken.
  The `beq` branch at 0xd812790 targets 0xd8127d4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xd8127a8 targets 0xd8127cc, is taken when v0(?) != a3(?), and falls through when v0(?) == a3(?).
  The `beq` branch at 0xd8127c4 targets 0xd8127d8 and is always taken.
  The `bne` branch at 0xd8127cc targets 0xd81279c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The return at 0xd8127e0 has v0 = one of ret(isNotProxy), 0x0.
  The instructions from 0xd8127e8 to 0xd81ef24 are not reached by any path from the entry, and their branches are not listed.
- `__glx_TexParameterfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81318c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81318c-0xd813264 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd8131c4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8131d8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8131e4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8131e8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8131ec stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8131f8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd813200 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd813220 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813234 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8131b8 calls __glXTexParameterfv_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd813210 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexParameterfv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd813244 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd813230 targets 0xd813250, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd81325c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_TexParameteriv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8132ec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8132ec-0xd8133c4 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd813324 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813338 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813344 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd813348 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81334c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd813358 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd813360 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd813380 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813394 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd813318 calls __glXTexParameteriv_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd813370 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexParameteriv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8133a4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd813390 targets 0xd8133b0, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd8133bc has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_PopName` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd813748 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd813748-0xd8137b4 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd813754 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813764 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813770 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd813774 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd813778 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81377c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813784 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd813798 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81378c targets 0xd8137a8, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+4) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+4) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd813790 runs only when taken and is annulled on fall-through.
  The return at 0xd8137ac has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_LightModeli` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd814010 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd814010-0xd81408c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd81401c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81402c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814038 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81403c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814040 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd814044 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd814048 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81404c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814054 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814070 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd81405c targets 0xd814080, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814060 runs only when taken and is annulled on fall-through.
  The return at 0xd814084 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_LightModelfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81408c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81408c-0xd814154 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd8140bc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8140d0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8140dc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8140e0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8140e4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8140f0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd814110 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814124 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8140b0 calls __glXLightModelfv_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd814100 calls memcpy with a0=[[[0x1014]+276]+4]+8, a1=a1 at entry (arg1), a2=(ret(__glXLightModelfv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd814134 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd814120 targets 0xd814140, is taken when t1(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd81414c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_TexEnvf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd814154 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd814154-0xd8141d8 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd814160 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814170 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81417c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814184 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd814188 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd81418c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd814190 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd814194 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd814198 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8141a0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8141bc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[[0x1014]+276]+4]+16, a3=[[0x1014]+276].
  The `beql` branch at 0xd8141a8 targets 0xd8141cc, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8141ac runs only when taken and is annulled on fall-through.
  The return at 0xd8141d0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexEnvi` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8141d8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8141d8-0xd814260 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd8141e8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8141f8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814204 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814208 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81420c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd814210 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd814214 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd814218 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd81421c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814224 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814240 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd81422c targets 0xd814250, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814230 runs only when taken and is annulled on fall-through.
  The return at 0xd814258 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Lightf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd814260 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd814260-0xd8142e4 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd81426c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81427c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814288 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814290 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd814294 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd814298 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81429c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd8142a0 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd8142a4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8142ac stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8142c8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[[0x1014]+276]+4]+16, a3=[[0x1014]+276].
  The `beql` branch at 0xd8142b4 targets 0xd8142d8, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8142b8 runs only when taken and is annulled on fall-through.
  The return at 0xd8142dc has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Hint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8142e4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8142e4-0xd814360 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd8142f0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814300 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81430c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814310 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814314 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd814318 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81431c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd814320 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814328 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814344 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd814330 targets 0xd814354, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814334 runs only when taken and is annulled on fall-through.
  The return at 0xd814358 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexGeniv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd814360 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd814360-0xd814438 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd814398 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8143ac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8143b8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8143bc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8143c0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8143cc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8143d4 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd8143f4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814408 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81438c calls __glXTexGeniv_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8143e4 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexGeniv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd814418 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd814404 targets 0xd814424, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd814430 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_FrontFace` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd814438 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd814438-0xd8144ac (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd814444 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814454 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814460 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814464 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814468 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81446c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd814470 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814478 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814490 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd814480 targets 0xd8144a0, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814484 runs only when taken and is annulled on fall-through.
  The return at 0xd8144a4 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Fogiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8144ac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8144ac-0xd814574 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd8144dc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8144f0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8144fc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814500 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814504 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd814510 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd814530 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814544 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8144d0 calls __glXFogiv_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd814520 calls memcpy with a0=[[[0x1014]+276]+4]+8, a1=a1 at entry (arg1), a2=(ret(__glXFogiv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd814554 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd814540 targets 0xd814560, is taken when t1(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd81456c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_Fogi` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd814574 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd814574-0xd8145f0 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd814580 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814590 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81459c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8145a0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8145a4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8145a8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8145ac stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd8145b0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8145b8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8145d4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd8145c0 targets 0xd8145e4, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8145c4 runs only when taken and is annulled on fall-through.
  The return at 0xd8145e8 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Materialiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8145f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8145f0-0xd8146c8 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd814628 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81463c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814648 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81464c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814650 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81465c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd814664 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd814684 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814698 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81461c calls __glXMaterialiv_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd814674 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXMaterialiv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8146a8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd814694 targets 0xd8146b4, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd8146c0 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_TexEnviv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8146c8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8146c8-0xd8147a0 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd814700 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814714 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814720 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814724 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814728 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd814734 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81473c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81475c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814770 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8146f4 calls __glXTexEnviv_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd81474c calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexEnviv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd814780 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd81476c targets 0xd81478c, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd814798 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_TexGend` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8147a0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8147a0-0xd814860 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xd8147b0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8147d0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8147dc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8147e8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8147ec stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd814814 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd81481c stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd814820 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814824 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8147fc calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp+8, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd814840 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=?, a3=[[[0x1014]+276]+4]+20.
  The `beql` branch at 0xd81482c targets 0xd814850, is taken when t1(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814830 runs only when taken and is annulled on fall-through.
  The return at 0xd814858 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_TexGendv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd814860 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd814860-0xd814938 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd814898 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8148ac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8148b8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8148bc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8148c0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8148cc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8148d4 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd8148f4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814908 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81488c calls __glXTexGendv_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8148e4 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexGendv_size) << 0x3), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd814918 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd814904 targets 0xd814924, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd814930 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_TexGenf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd814938 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd814938-0xd8149bc (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd814944 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814954 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814960 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814968 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd81496c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd814970 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd814974 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd814978 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd81497c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814984 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8149a0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[[0x1014]+276]+4]+16, a3=[[0x1014]+276].
  The `beql` branch at 0xd81498c targets 0xd8149b0, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814990 runs only when taken and is annulled on fall-through.
  The return at 0xd8149b4 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexGenfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8149bc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8149bc-0xd814a94 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd8149f4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814a08 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814a14 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814a18 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814a1c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd814a28 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd814a30 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd814a50 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814a64 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8149e8 calls __glXTexGenfv_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd814a40 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexGenfv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd814a74 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd814a60 targets 0xd814a80, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd814a8c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_Materiali` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd814a94 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd814a94-0xd814b1c (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd814aa4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814ab4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814ac0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814ac4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814ac8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd814acc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd814ad0 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd814ad4 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd814ad8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814ae0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814afc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd814ae8 targets 0xd814b0c, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814aec runs only when taken and is annulled on fall-through.
  The return at 0xd814b14 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Vertex3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd814b1c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd814b1c-0xd814bfc (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd814b2c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814b44 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814b50 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814b5c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814b60 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd814bbc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814bc0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814b70 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[0x1014]+276].
  The `jalr` at 0xd814b8c calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd814ba8 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd814bdc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=?, a3=[[0x1014]+276].
  The `beql` branch at 0xd814bc8 targets 0xd814bec, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814bcc runs only when taken and is annulled on fall-through.
  The return at 0xd814bf4 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_TexCoord1d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd814bfc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd814bfc-0xd814c9c (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xd814c0c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814c20 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814c2c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814c38 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814c3c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd814c58 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814c6c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814c4c calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd814c7c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12.
  The `beq` branch at 0xd814c68 targets 0xd814c88, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned).
  The return at 0xd814c94 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_Rectsv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd814c9c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd814c9c-0xd814d30 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd814ca8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814cb8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814cc4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814cc8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814ccc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd814cd0 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd814cd8 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd814cdc loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd814ce0 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lh` at 0xd814ce4 loads 2 bytes from a1 (arg1 at entry) +0x0.
  The `sh` at 0xd814ce8 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lh` at 0xd814cec loads 2 bytes from a1 (arg1 at entry) +0x2.
  The `sh` at 0xd814cf0 stores 2 bytes to [[[0x1014]+276]+4] +0xa.
  The `lw` at 0xd814cf4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814cf8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814d14 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd814d00 targets 0xd814d24, is taken when t3(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814d04 runs only when taken and is annulled on fall-through.
  The return at 0xd814d28 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Rects` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd814d30 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd814d30-0xd814df0 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xd814d40 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814d64 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814d70 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814d94 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd814d98 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814d9c stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd814da0 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `sh` at 0xd814da4 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `sh` at 0xd814da8 stores 2 bytes to [[[0x1014]+276]+4] +0xa.
  The `lw` at 0xd814dac loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814db4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814dd0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=?.
  The `beql` branch at 0xd814dbc targets 0xd814de0, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd814dc0 runs only when taken and is annulled on fall-through.
  The return at 0xd814de8 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Rectiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd814df0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd814df0-0xd814e84 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd814dfc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814e0c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814e18 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814e1c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814e20 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd814e24 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd814e2c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd814e30 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd814e34 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd814e38 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `sw` at 0xd814e3c stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd814e40 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `sw` at 0xd814e44 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd814e48 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814e4c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814e68 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[[0x1014]+276]+4]+20, a3=[[0x1014]+276].
  The `beql` branch at 0xd814e54 targets 0xd814e78, is taken when t3(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814e58 runs only when taken and is annulled on fall-through.
  The return at 0xd814e7c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Rectdv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd814e84 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd814e84-0xd814f80 (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xd814e94 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814eb0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814ebc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814ec4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814ec8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd814f3c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814f50 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814ed8 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd814ef8 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd814f14 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=a1 at entry (arg1), a2=0x8, a3=?.
  The `jalr` at 0xd814f34 calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=a1+8, a2=0x8, a3=?.
  The `jalr` at 0xd814f60 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=?.
  The `beq` branch at 0xd814f4c targets 0xd814f6c, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  The return at 0xd814f78 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_Rectf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd814f80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd814f80-0xd81500c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd814f90 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814fa4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814fb0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814fb4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814fb8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd814fbc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd814fc0 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd814fcc stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `swc1` at 0xd814fd4 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd814fd8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814fdc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814ff0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd814fe4 targets 0xd815000, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814fe8 runs only when taken and is annulled on fall-through.
  The return at 0xd815004 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Rectfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81500c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81500c-0xd8150a0 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd815018 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815028 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815034 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815038 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81503c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd815040 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd815048 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd81504c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd815050 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lwc1` at 0xd815054 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0xd815058 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lwc1` at 0xd81505c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xd815060 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd815064 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815068 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815084 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[[0x1014]+276]+4]+20, a3=[[0x1014]+276].
  The `beql` branch at 0xd815070 targets 0xd815094, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815074 runs only when taken and is annulled on fall-through.
  The return at 0xd815098 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Recti` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8150a0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8150a0-0xd815130 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd8150b0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8150c4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8150d0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8150d4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8150d8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8150dc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8150e0 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd8150e4 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd8150e8 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd8150ec loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8150f4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815110 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd8150fc targets 0xd815120, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd815100 runs only when taken and is annulled on fall-through.
  The return at 0xd815128 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord1dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd815130 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd815130-0xd8151cc (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd815140 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815150 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81515c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815168 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81516c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd815188 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81519c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81517c calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8151ac calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12.
  The `beq` branch at 0xd815198 targets 0xd8151b8, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned).
  The return at 0xd8151c4 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_TexCoord2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8151cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8151cc-0xd815288 (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0xd8151dc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8151f0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8151fc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815204 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815208 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd815244 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815258 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815218 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd815238 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd815268 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=?, a3=[[[0x1014]+276]+4]+20.
  The `beq` branch at 0xd815254 targets 0xd815274, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+20) (unsigned).
  The return at 0xd815280 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_TexCoord2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd815288 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd815288-0xd81534c (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xd815298 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8152b0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8152bc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8152c8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8152cc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd815308 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81531c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8152dc calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8152fc calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81532c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=?, a3=[[[0x1014]+276]+4]+20.
  The `beq` branch at 0xd815318 targets 0xd815338, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+20) (unsigned).
  The return at 0xd815344 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_TexCoord1sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81534c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81534c-0xd8153c4 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd815358 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815368 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815374 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815378 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81537c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd815380 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd815388 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81538c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815390 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8153a8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd815398 targets 0xd8153b8, is taken when t0(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81539c runs only when taken and is annulled on fall-through.
  The return at 0xd8153bc has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord1s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8153c4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8153c4-0xd815444 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd8153d4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8153e4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8153f0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8153fc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd815400 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815404 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd815408 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815410 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815428 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd815418 targets 0xd815438, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81541c runs only when taken and is annulled on fall-through.
  The return at 0xd81543c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord1f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd815444 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd815444-0xd8154b4 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd815450 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815460 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81546c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815470 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815474 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd815478 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81547c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815484 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815498 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81548c targets 0xd8154a8, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815490 runs only when taken and is annulled on fall-through.
  The return at 0xd8154ac has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord1fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8154b4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8154b4-0xd81552c (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd8154c0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8154d0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8154dc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8154e0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8154e4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd8154e8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd8154f0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd8154f4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8154f8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815510 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd815500 targets 0xd815520, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815504 runs only when taken and is annulled on fall-through.
  The return at 0xd815524 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord1i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81552c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81552c-0xd8155a0 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd815538 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815548 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815554 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815558 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81555c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd815560 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd815564 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81556c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815584 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd815574 targets 0xd815594, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815578 runs only when taken and is annulled on fall-through.
  The return at 0xd815598 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord1iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8155a0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8155a0-0xd815618 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd8155ac loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8155bc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8155c8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8155cc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8155d0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8155d4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd8155dc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd8155e0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8155e4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8155fc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd8155ec targets 0xd81560c, is taken when t0(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8155f0 runs only when taken and is annulled on fall-through.
  The return at 0xd815610 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Rectd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd815618 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd815618-0xd81570c (244 bytes).
  It occupies 244 bytes.
  The `lw` at 0xd815628 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815644 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815650 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81565c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815660 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8156c8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8156dc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81566c calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd815688 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd8156a4 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd8156c0 calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=sp+24, a2=0x8, a3=?.
  The `jalr` at 0xd8156ec calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=?.
  The `beq` branch at 0xd8156d8 targets 0xd8156f8, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  The return at 0xd815704 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_RasterPos3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81570c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81570c-0xd8157b8 (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xd81571c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815738 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815744 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815760 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd815764 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815768 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd81576c stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `sh` at 0xd815770 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd815774 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81577c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815798 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12.
  The `beql` branch at 0xd815784 targets 0xd8157a8, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815788 runs only when taken and is annulled on fall-through.
  The return at 0xd8157b0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_RasterPos3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8157b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8157b8-0xd815840 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd8157c4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8157d4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8157e0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8157e4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8157e8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8157ec loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd8157f4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd8157f8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd8157fc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd815800 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xd815804 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd815808 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81580c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815824 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd815814 targets 0xd815834, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815818 runs only when taken and is annulled on fall-through.
  The return at 0xd815838 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_RasterPos3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd815840 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd815840-0xd8158c8 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd815850 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815860 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81586c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815870 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815874 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd815878 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81587c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd815880 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd815884 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81588c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8158a8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd815894 targets 0xd8158b8, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815898 runs only when taken and is annulled on fall-through.
  The return at 0xd8158c0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_RasterPos3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8158c8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8158c8-0xd815950 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd8158d4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8158e4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8158f0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8158f4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8158f8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd8158fc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd815904 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd815908 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd81590c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lwc1` at 0xd815910 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xd815914 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd815918 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81591c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815934 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd815924 targets 0xd815944, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815928 runs only when taken and is annulled on fall-through.
  The return at 0xd815948 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_RasterPos2sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd815950 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd815950-0xd8159d0 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd81595c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81596c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815978 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81597c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815980 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd815984 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd81598c stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd815990 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd815994 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lw` at 0xd815998 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81599c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8159b4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd8159a4 targets 0xd8159c4, is taken when t1(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8159a8 runs only when taken and is annulled on fall-through.
  The return at 0xd8159c8 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_RasterPos3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8159d0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8159d0-0xd815ab0 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd8159e0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8159f8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815a04 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815a10 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815a14 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd815a70 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815a74 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815a24 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[0x1014]+276].
  The `jalr` at 0xd815a40 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd815a5c calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd815a90 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=?, a3=[[0x1014]+276].
  The `beql` branch at 0xd815a7c targets 0xd815aa0, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815a80 runs only when taken and is annulled on fall-through.
  The return at 0xd815aa8 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_RasterPos3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd815ab0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd815ab0-0xd815b90 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd815ac0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815ad4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815ae0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815ae8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815aec stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd815b50 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815b54 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815afc calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[0x1014]+276].
  The `jalr` at 0xd815b1c calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd815b3c calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=?.
  The `jalr` at 0xd815b70 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=?, a3=[[0x1014]+276].
  The `beql` branch at 0xd815b5c targets 0xd815b80, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815b60 runs only when taken and is annulled on fall-through.
  The return at 0xd815b88 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_RasterPos3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd815b90 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd815b90-0xd815c10 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd815ba0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815bb0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815bbc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815bc0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815bc4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd815bc8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd815bcc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd815bd8 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd815bdc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815be0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815bf4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd815be8 targets 0xd815c04, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815bec runs only when taken and is annulled on fall-through.
  The return at 0xd815c08 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_RasterPos3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd815c10 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd815c10-0xd815c98 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd815c1c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815c2c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815c38 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815c3c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815c40 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd815c44 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd815c4c stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd815c50 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd815c54 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lh` at 0xd815c58 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xd815c5c stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd815c60 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815c64 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815c7c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd815c6c targets 0xd815c8c, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815c70 runs only when taken and is annulled on fall-through.
  The return at 0xd815c90 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_RasterPos4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd815c98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd815c98-0xd815d28 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd815ca4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815cb4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815cc0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815cc4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815cc8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd815ccc loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd815cd4 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd815cd8 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd815cdc stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lh` at 0xd815ce0 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xd815ce4 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lh` at 0xd815ce8 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xd815cec stores 2 bytes to [[[0x1014]+276]+4] +0xa.
  The `lw` at 0xd815cf0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815cf4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815d0c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd815cfc targets 0xd815d1c, is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815d00 runs only when taken and is annulled on fall-through.
  The return at 0xd815d20 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_RasterPos4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd815d28 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd815d28-0xd815de8 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xd815d38 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815d5c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815d68 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815d8c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd815d90 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815d94 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd815d98 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `sh` at 0xd815d9c stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `sh` at 0xd815da0 stores 2 bytes to [[[0x1014]+276]+4] +0xa.
  The `lw` at 0xd815da4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815dac stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815dc8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=?.
  The `beql` branch at 0xd815db4 targets 0xd815dd8, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd815db8 runs only when taken and is annulled on fall-through.
  The return at 0xd815de0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_RasterPos4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd815de8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd815de8-0xd815e78 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd815df4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815e04 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815e10 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815e14 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815e18 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd815e1c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd815e24 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd815e28 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd815e2c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd815e30 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xd815e34 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd815e38 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xd815e3c stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd815e40 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815e44 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815e5c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd815e4c targets 0xd815e6c, is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815e50 runs only when taken and is annulled on fall-through.
  The return at 0xd815e70 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_RasterPos4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd815e78 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd815e78-0xd815f08 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd815e88 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815e9c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815ea8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815eac stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815eb0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd815eb4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd815eb8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd815ebc stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd815ec0 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd815ec4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815ecc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815ee8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd815ed4 targets 0xd815ef8, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd815ed8 runs only when taken and is annulled on fall-through.
  The return at 0xd815f00 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_RasterPos4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd815f08 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd815f08-0xd815ffc (244 bytes).
  It occupies 244 bytes.
  The `lw` at 0xd815f18 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815f34 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815f40 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815f4c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815f50 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd815fb8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815fcc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815f5c calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd815f78 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd815f94 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd815fb0 calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=sp+24, a2=0x8, a3=?.
  The `jalr` at 0xd815fdc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=?.
  The `beq` branch at 0xd815fc8 targets 0xd815fe8, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  The return at 0xd815ff4 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_RasterPos4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd815ffc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd815ffc-0xd8160f8 (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xd81600c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816024 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816030 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816038 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81603c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8160b4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8160c8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81604c calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd81606c calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd81608c calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=?.
  The `jalr` at 0xd8160ac calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=a0+24, a2=0x8, a3=?.
  The `jalr` at 0xd8160d8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=?.
  The `beq` branch at 0xd8160c4 targets 0xd8160e4, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  The return at 0xd8160f0 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_RasterPos4f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8160f8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8160f8-0xd816184 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd816108 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81611c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816128 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81612c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816130 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd816134 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd816138 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd816144 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `swc1` at 0xd81614c stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd816150 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816154 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816168 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81615c targets 0xd816178, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816160 runs only when taken and is annulled on fall-through.
  The return at 0xd81617c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_RasterPos4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816184 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816184-0xd816214 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd816190 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8161a0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8161ac loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8161b0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8161b4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd8161b8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd8161c0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd8161c4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd8161c8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lwc1` at 0xd8161cc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xd8161d0 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lwc1` at 0xd8161d4 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xd8161d8 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd8161dc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8161e0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8161f8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd8161e8 targets 0xd816208, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8161ec runs only when taken and is annulled on fall-through.
  The return at 0xd81620c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816214 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816214-0xd816288 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd816220 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816230 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81623c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816240 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816244 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd816248 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81624c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd816250 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816258 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81626c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd816260 targets 0xd81627c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816264 runs only when taken and is annulled on fall-through.
  The return at 0xd816280 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Vertex2iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816288 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816288-0xd816308 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd816294 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8162a4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8162b0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8162b4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8162b8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8162bc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd8162c4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd8162c8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd8162cc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd8162d0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8162d4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8162ec calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd8162dc targets 0xd8162fc, is taken when t1(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8162e0 runs only when taken and is annulled on fall-through.
  The return at 0xd816300 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Vertex2i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816308 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816308-0xd816384 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd816314 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816324 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816330 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816334 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816338 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81633c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd816340 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd816344 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81634c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816368 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd816354 targets 0xd816378, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816358 runs only when taken and is annulled on fall-through.
  The return at 0xd81637c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Vertex2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816384 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816384-0xd816404 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd816390 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8163a0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8163ac loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8163b0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8163b4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd8163b8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd8163c0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd8163c4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd8163c8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd8163cc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8163d0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8163e8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd8163d8 targets 0xd8163f8, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8163dc runs only when taken and is annulled on fall-through.
  The return at 0xd8163fc has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Vertex2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816404 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816404-0xd816478 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd816410 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816420 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81642c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816430 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816434 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd816438 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81643c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd816440 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816448 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81645c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd816450 targets 0xd81646c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816454 runs only when taken and is annulled on fall-through.
  The return at 0xd816470 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816478 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816478-0xd816538 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xd816488 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8164ac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8164b8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8164dc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd8164e0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8164e4 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd8164e8 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `sh` at 0xd8164ec stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `sh` at 0xd8164f0 stores 2 bytes to [[[0x1014]+276]+4] +0xa.
  The `lw` at 0xd8164f4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8164fc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816518 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=?.
  The `beql` branch at 0xd816504 targets 0xd816528, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd816508 runs only when taken and is annulled on fall-through.
  The return at 0xd816530 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord4sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816538 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816538-0xd8165c8 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd816544 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816554 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816560 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816564 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816568 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd81656c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd816574 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd816578 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd81657c stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lh` at 0xd816580 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xd816584 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lh` at 0xd816588 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xd81658c stores 2 bytes to [[[0x1014]+276]+4] +0xa.
  The `lw` at 0xd816590 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816594 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8165ac calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81659c targets 0xd8165bc, is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8165a0 runs only when taken and is annulled on fall-through.
  The return at 0xd8165c0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Vertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8165c8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8165c8-0xd81668c (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xd8165d8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8165f0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8165fc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816608 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81660c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd816648 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81665c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81661c calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81663c calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81666c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=?, a3=[[[0x1014]+276]+4]+20.
  The `beq` branch at 0xd816658 targets 0xd816678, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+20) (unsigned).
  The return at 0xd816684 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_Vertex2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81668c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81668c-0xd816748 (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0xd81669c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8166b0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8166bc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8166c4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8166c8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd816704 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816718 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8166d8 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8166f8 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd816728 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=?, a3=[[[0x1014]+276]+4]+20.
  The `beq` branch at 0xd816714 targets 0xd816734, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+20) (unsigned).
  The return at 0xd816740 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_Vertex2s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816748 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816748-0xd8167dc (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd816758 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81676c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816778 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81678c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd816790 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816794 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd816798 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lw` at 0xd81679c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8167a4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8167c0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[[0x1014]+276]+4]+8, a3=[[0x1014]+276].
  The `beql` branch at 0xd8167ac targets 0xd8167d0, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8167b0 runs only when taken and is annulled on fall-through.
  The return at 0xd8167d4 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Vertex3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8167dc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8167dc-0xd816864 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd8167e8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8167f8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816804 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816808 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81680c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd816810 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd816818 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd81681c loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd816820 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lh` at 0xd816824 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xd816828 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81682c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816830 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816848 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd816838 targets 0xd816858, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81683c runs only when taken and is annulled on fall-through.
  The return at 0xd81685c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Vertex3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816864 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816864-0xd816910 (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xd816874 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816890 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81689c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8168b8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd8168bc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8168c0 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd8168c4 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `sh` at 0xd8168c8 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd8168cc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8168d4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8168f0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12.
  The `beql` branch at 0xd8168dc targets 0xd816900, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8168e0 runs only when taken and is annulled on fall-through.
  The return at 0xd816908 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Vertex3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816910 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816910-0xd816998 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd81691c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81692c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816938 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81693c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816940 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd816944 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd81694c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd816950 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd816954 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd816958 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xd81695c stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd816960 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816964 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81697c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81696c targets 0xd81698c, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816970 runs only when taken and is annulled on fall-through.
  The return at 0xd816990 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Vertex3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816998 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816998-0xd816a20 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd8169a8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8169b8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8169c4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8169c8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8169cc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8169d0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8169d4 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd8169d8 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd8169dc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8169e4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816a00 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd8169ec targets 0xd816a10, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8169f0 runs only when taken and is annulled on fall-through.
  The return at 0xd816a18 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Vertex2sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816a20 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816a20-0xd816aa0 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd816a2c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816a3c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816a48 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816a4c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816a50 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd816a54 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd816a5c stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd816a60 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd816a64 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lw` at 0xd816a68 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816a6c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816a84 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd816a74 targets 0xd816a94, is taken when t1(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816a78 runs only when taken and is annulled on fall-through.
  The return at 0xd816a98 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Vertex3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816aa0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816aa0-0xd816b80 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd816ab0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816ac4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816ad0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816ad8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816adc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd816b40 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816b44 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816aec calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[0x1014]+276].
  The `jalr` at 0xd816b0c calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd816b2c calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=?.
  The `jalr` at 0xd816b60 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=?, a3=[[0x1014]+276].
  The `beql` branch at 0xd816b4c targets 0xd816b70, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816b50 runs only when taken and is annulled on fall-through.
  The return at 0xd816b78 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_Vertex3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816b80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816b80-0xd816c00 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd816b90 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816ba0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816bac loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816bb0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816bb4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd816bb8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd816bbc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd816bc8 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd816bcc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816bd0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816be4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd816bd8 targets 0xd816bf4, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816bdc runs only when taken and is annulled on fall-through.
  The return at 0xd816bf8 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Vertex3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816c00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816c00-0xd816c88 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd816c0c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816c1c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816c28 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816c2c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816c30 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd816c34 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd816c3c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd816c40 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd816c44 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lwc1` at 0xd816c48 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xd816c4c stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd816c50 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816c54 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816c6c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd816c5c targets 0xd816c7c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816c60 runs only when taken and is annulled on fall-through.
  The return at 0xd816c80 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord4iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816c88 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816c88-0xd816d18 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd816c94 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816ca4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816cb0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816cb4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816cb8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd816cbc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd816cc4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd816cc8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd816ccc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd816cd0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xd816cd4 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd816cd8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xd816cdc stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd816ce0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816ce4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816cfc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd816cec targets 0xd816d0c, is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816cf0 runs only when taken and is annulled on fall-through.
  The return at 0xd816d10 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord3f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816d18 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816d18-0xd816d98 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd816d28 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816d38 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816d44 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816d48 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816d4c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd816d50 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd816d54 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd816d60 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd816d64 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816d68 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816d7c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd816d70 targets 0xd816d8c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816d74 runs only when taken and is annulled on fall-through.
  The return at 0xd816d90 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord3dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816d98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816d98-0xd816e78 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd816da8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816dbc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816dc8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816dd0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816dd4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd816e38 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816e3c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816de4 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[0x1014]+276].
  The `jalr` at 0xd816e04 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd816e24 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=?.
  The `jalr` at 0xd816e58 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=?, a3=[[0x1014]+276].
  The `beql` branch at 0xd816e44 targets 0xd816e68, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816e48 runs only when taken and is annulled on fall-through.
  The return at 0xd816e70 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_TexCoord3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816e78 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816e78-0xd816f58 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd816e88 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816ea0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816eac loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816eb8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816ebc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd816f18 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816f1c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816ecc calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[0x1014]+276].
  The `jalr` at 0xd816ee8 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd816f04 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd816f38 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=?, a3=[[0x1014]+276].
  The `beql` branch at 0xd816f24 targets 0xd816f48, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816f28 runs only when taken and is annulled on fall-through.
  The return at 0xd816f50 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_TexCoord2sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816f58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816f58-0xd816fd8 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd816f64 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816f74 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816f80 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816f84 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816f88 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd816f8c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd816f94 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd816f98 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd816f9c stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lw` at 0xd816fa0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816fa4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816fbc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd816fac targets 0xd816fcc, is taken when t1(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816fb0 runs only when taken and is annulled on fall-through.
  The return at 0xd816fd0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd816fd8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd816fd8-0xd817058 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd816fe4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816ff4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817000 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817004 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817008 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd81700c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd817014 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd817018 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd81701c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd817020 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817024 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81703c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81702c targets 0xd81704c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd817030 runs only when taken and is annulled on fall-through.
  The return at 0xd817050 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord2i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd817058 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd817058-0xd8170d4 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd817064 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817074 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817080 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817084 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817088 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81708c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd817090 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd817094 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81709c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8170b8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd8170a4 targets 0xd8170c8, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8170a8 runs only when taken and is annulled on fall-through.
  The return at 0xd8170cc has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord2iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8170d4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8170d4-0xd817154 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd8170e0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8170f0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8170fc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817100 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817104 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd817108 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd817110 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd817114 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd817118 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81711c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817120 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817138 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd817128 targets 0xd817148, is taken when t1(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81712c runs only when taken and is annulled on fall-through.
  The return at 0xd81714c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord2s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd817154 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd817154-0xd8171e8 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd817164 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817178 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817184 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817198 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd81719c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8171a0 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd8171a4 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lw` at 0xd8171a8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8171b0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8171cc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[[0x1014]+276]+4]+8, a3=[[0x1014]+276].
  The `beql` branch at 0xd8171b8 targets 0xd8171dc, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8171bc runs only when taken and is annulled on fall-through.
  The return at 0xd8171e0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord3fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8171e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8171e8-0xd817270 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd8171f4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817204 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817210 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817214 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817218 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd81721c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd817224 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd817228 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd81722c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lwc1` at 0xd817230 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xd817234 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd817238 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81723c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817254 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd817244 targets 0xd817264, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd817248 runs only when taken and is annulled on fall-through.
  The return at 0xd817268 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd817270 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd817270-0xd81736c (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xd817280 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817298 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8172a4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8172ac stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8172b0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd817328 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81733c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8172c0 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd8172e0 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd817300 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=?.
  The `jalr` at 0xd817320 calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=a0+24, a2=0x8, a3=?.
  The `jalr` at 0xd81734c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=?.
  The `beq` branch at 0xd817338 targets 0xd817358, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  The return at 0xd817364 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_TexCoord4f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81736c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81736c-0xd8173f8 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd81737c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817390 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81739c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8173a0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8173a4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd8173a8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd8173ac stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd8173b8 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `swc1` at 0xd8173c0 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd8173c4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8173c8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8173dc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd8173d0 targets 0xd8173ec, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8173d4 runs only when taken and is annulled on fall-through.
  The return at 0xd8173f0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord4fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8173f8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8173f8-0xd817488 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd817404 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817414 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817420 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817424 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817428 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd81742c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd817434 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd817438 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd81743c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lwc1` at 0xd817440 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xd817444 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lwc1` at 0xd817448 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xd81744c stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd817450 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817454 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81746c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81745c targets 0xd81747c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd817460 runs only when taken and is annulled on fall-through.
  The return at 0xd817480 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd817488 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd817488-0xd817518 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd817498 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8174ac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8174b8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8174bc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8174c0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8174c4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8174c8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd8174cc stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd8174d0 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd8174d4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8174dc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8174f8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd8174e4 targets 0xd817508, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd8174e8 runs only when taken and is annulled on fall-through.
  The return at 0xd817510 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord4d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd817518 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd817518-0xd81760c (244 bytes).
  It occupies 244 bytes.
  The `lw` at 0xd817528 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817544 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817550 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81755c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817560 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8175c8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8175dc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81756c calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd817588 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd8175a4 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd8175c0 calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=sp+24, a2=0x8, a3=?.
  The `jalr` at 0xd8175ec calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=?.
  The `beq` branch at 0xd8175d8 targets 0xd8175f8, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  The return at 0xd817604 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_TexCoord3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81760c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81760c-0xd817694 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd81761c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81762c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817638 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81763c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817640 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd817644 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd817648 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd81764c stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd817650 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817658 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817674 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd817660 targets 0xd817684, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd817664 runs only when taken and is annulled on fall-through.
  The return at 0xd81768c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord3iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd817694 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd817694-0xd81771c (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd8176a0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8176b0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8176bc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8176c0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8176c4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8176c8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd8176d0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd8176d4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd8176d8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd8176dc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xd8176e0 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd8176e4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8176e8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817700 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd8176f0 targets 0xd817710, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8176f4 runs only when taken and is annulled on fall-through.
  The return at 0xd817714 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81771c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81771c-0xd8177c8 (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xd81772c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817748 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817754 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817770 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd817774 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817778 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd81777c stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `sh` at 0xd817780 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd817784 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81778c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8177a8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12.
  The `beql` branch at 0xd817794 targets 0xd8177b8, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd817798 runs only when taken and is annulled on fall-through.
  The return at 0xd8177c0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TexCoord3sv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8177c8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8177c8-0xd817850 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd8177d4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8177e4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8177f0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8177f4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8177f8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd8177fc loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd817804 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd817808 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd81780c stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lh` at 0xd817810 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xd817814 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd817818 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81781c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817834 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd817824 targets 0xd817844, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd817828 runs only when taken and is annulled on fall-through.
  The return at 0xd817848 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_EvalCoord1fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd817850 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd817850-0xd8178c8 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd81785c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81786c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817878 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81787c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817880 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd817884 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd81788c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd817890 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817894 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8178ac calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81789c targets 0xd8178bc, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8178a0 runs only when taken and is annulled on fall-through.
  The return at 0xd8178c0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_CopyTexSubImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8178c8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8178c8-0xd817978 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xd8178d8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8178ec loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8178f8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8178fc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817900 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd817904 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd817908 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd81790c stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd817910 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd81791c stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `sw` at 0xd817924 stores 4 bytes to [[[0x1014]+276]+4] +0x18.
  The `sw` at 0xd81792c stores 4 bytes to [[[0x1014]+276]+4] +0x1c.
  The `sw` at 0xd817934 stores 4 bytes to [[[0x1014]+276]+4] +0x20.
  The `lw` at 0xd817938 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81793c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817958 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd817944 targets 0xd817968, is taken when t3(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd817948 runs only when taken and is annulled on fall-through.
  The return at 0xd817970 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_CopyTexSubImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd817978 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd817978-0xd817a18 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xd817988 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81799c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8179a8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8179ac stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8179b0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8179b4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8179b8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd8179bc stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd8179c0 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd8179cc stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `sw` at 0xd8179d4 stores 4 bytes to [[[0x1014]+276]+4] +0x18.
  The `lw` at 0xd8179d8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8179dc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8179f8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd8179e4 targets 0xd817a08, is taken when t1(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd8179e8 runs only when taken and is annulled on fall-through.
  The return at 0xd817a10 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_CopyTexImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd817a18 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd817a18-0xd817ac8 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xd817a28 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817a3c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817a48 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817a4c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817a50 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd817a54 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd817a58 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd817a5c stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd817a60 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd817a6c stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `sw` at 0xd817a74 stores 4 bytes to [[[0x1014]+276]+4] +0x18.
  The `sw` at 0xd817a7c stores 4 bytes to [[[0x1014]+276]+4] +0x1c.
  The `sw` at 0xd817a84 stores 4 bytes to [[[0x1014]+276]+4] +0x20.
  The `lw` at 0xd817a88 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817a8c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817aa8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd817a94 targets 0xd817ab8, is taken when t3(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd817a98 runs only when taken and is annulled on fall-through.
  The return at 0xd817ac0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_CopyTexImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd817ac8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd817ac8-0xd817b70 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xd817ad8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817aec loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817af8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817afc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817b00 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd817b04 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd817b08 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd817b0c stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd817b10 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd817b1c stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `sw` at 0xd817b24 stores 4 bytes to [[[0x1014]+276]+4] +0x18.
  The `sw` at 0xd817b2c stores 4 bytes to [[[0x1014]+276]+4] +0x1c.
  The `lw` at 0xd817b30 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817b34 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817b50 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+32, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd817b3c targets 0xd817b60, is taken when t2(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+32) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+32) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd817b40 runs only when taken and is annulled on fall-through.
  The return at 0xd817b68 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_CopyColorTableSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd817b70 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd817b70-0xd817c08 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xd817b80 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817b94 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817ba0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817ba4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817ba8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd817bac stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd817bb0 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd817bb4 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd817bb8 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd817bc4 stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `lw` at 0xd817bc8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817bcc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817be8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+24, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd817bd4 targets 0xd817bf8, is taken when t0(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+24) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+24) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd817bd8 runs only when taken and is annulled on fall-through.
  The return at 0xd817c00 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_ColorTableParameterivSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd817c08 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd817c08-0xd817ce0 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd817c40 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817c54 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817c60 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817c64 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817c68 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd817c74 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd817c7c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd817c9c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817cb0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817c34 calls __glXColorTableParameterivSGI_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd817c8c calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXColorTableParameterivSGI_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd817cc0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd817cac targets 0xd817ccc, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd817cd8 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_CopyTexSubImage3DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd817ce0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd817ce0-0xd817d98 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xd817cf0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817d04 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817d10 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817d14 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817d18 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd817d1c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd817d20 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd817d24 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd817d28 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd817d34 stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `sw` at 0xd817d3c stores 4 bytes to [[[0x1014]+276]+4] +0x18.
  The `sw` at 0xd817d44 stores 4 bytes to [[[0x1014]+276]+4] +0x1c.
  The `sw` at 0xd817d4c stores 4 bytes to [[[0x1014]+276]+4] +0x20.
  The `sw` at 0xd817d54 stores 4 bytes to [[[0x1014]+276]+4] +0x24.
  The `lw` at 0xd817d58 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817d5c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817d78 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd817d64 targets 0xd817d88, is taken when t4(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+40) (unsigned), and falls through when t4(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+40) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd817d68 runs only when taken and is annulled on fall-through.
  The return at 0xd817d90 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_GetMapdv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd817d98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd817d98-0xd817f48 (432 bytes).
  It occupies 432 bytes.
  The `lw` at 0xd817da8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817dc8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817dcc loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd817dd0 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd817df0, `lw` at 0xd817ef8.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd817dfc, `lw` at 0xd817e14, `lw` at 0xd817e40.
  The `lw` at 0xd817e00 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd817e18 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd817e28, `sw` at 0xd817e44.
  The `sh` at 0xd817e4c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd817e50, `sb` at 0xd817e7c.
  The `lw` at 0xd817e54 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd817e68 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd817e6c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd817e70 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd817e74 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd817e80 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd817e8c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd817e98 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd817ea0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd817f00, `lw` at 0xd817f18.
  The `lw` at 0xd817f04 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd817de8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd817e08 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd817e34 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd817ea8 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd817ed0 calls memcpy with a0=a2 at entry (arg2), a1=sp-36, a2=0x8, a3=?.
  The `jalr` at 0xd817eec calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd817f0c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd817f28 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd817dd4 targets 0xd817f38, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd817dd8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd817df8 targets 0xd817e18, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd817dfc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd817e24 targets 0xd817e48, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd817e28 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd817ebc targets 0xd817ee0, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd817ed8 targets 0xd817ef8 and is always taken.
  The `beql` branch at 0xd817efc targets 0xd817f1c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd817f00 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd817f20 targets 0xd817f38, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd817f24 runs only when taken and is annulled on fall-through.
  The return at 0xd817f40 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetLightiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd817f48 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd817f48-0xd8180e8 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd817f58 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817f78 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817f7c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd817f80 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd817fa0, `lw` at 0xd818098.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd817fac, `lw` at 0xd817fc4, `lw` at 0xd817ff0.
  The `lw` at 0xd817fb0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd817fc8 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd817fd8, `sw` at 0xd817ff4.
  The `sh` at 0xd817ffc stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd818000, `sb` at 0xd81802c.
  The `lw` at 0xd818004 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd818018 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81801c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd818020 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd818024 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd818030 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81803c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd818048 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd818050 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81807c stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8180a0, `lw` at 0xd8180b8.
  The `lw` at 0xd8180a4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd817f98 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd817fb8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd817fe4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd818058 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81808c calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd8180ac calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8180c8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd817f84 targets 0xd8180d8, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd817f88 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd817fa8 targets 0xd817fc8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd817fac runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd817fd4 targets 0xd817ff8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd817fd8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81806c targets 0xd818080, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd818078 targets 0xd818098 and is always taken.
  The `beql` branch at 0xd81809c targets 0xd8180bc, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8180a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8180c0 targets 0xd8180d8, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8180c4 runs only when taken and is annulled on fall-through.
  The return at 0xd8180e0 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetLightfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8180e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8180e8-0xd818288 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd8180f8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818118 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81811c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd818120 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd818140, `lw` at 0xd818238.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81814c, `lw` at 0xd818164, `lw` at 0xd818190.
  The `lw` at 0xd818150 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd818168 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd818178, `sw` at 0xd818194.
  The `sh` at 0xd81819c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8181a0, `sb` at 0xd8181cc.
  The `lw` at 0xd8181a4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8181b8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8181bc stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd8181c0 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd8181c4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8181d0 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8181dc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd8181e8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8181f0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd81821c stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd818240, `lw` at 0xd818258.
  The `lw` at 0xd818244 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd818138 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd818158 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd818184 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8181f8 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81822c calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81824c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd818268 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd818124 targets 0xd818278, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd818128 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd818148 targets 0xd818168, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81814c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd818174 targets 0xd818198, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd818178 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81820c targets 0xd818220, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd818218 targets 0xd818238 and is always taken.
  The `beql` branch at 0xd81823c targets 0xd81825c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd818240 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd818260 targets 0xd818278, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd818264 runs only when taken and is annulled on fall-through.
  The return at 0xd818280 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GenLists` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd818288 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd818288-0xd8183fc (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0xd818298 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8182b0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8182b8 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8182bc loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8182d8, `lw` at 0xd818390.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8182e4, `lw` at 0xd8182fc, `lw` at 0xd818328.
  The `lw` at 0xd8182e8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd818300 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd818310, `sw` at 0xd81832c.
  The `sh` at 0xd818334 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd818338, `sb` at 0xd818364.
  The `lw` at 0xd81833c loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd818350 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd818354 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd818358 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81835c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd818368 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd818374 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd818380 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8183a0, `lw` at 0xd8183c0.
  The `lw` at 0xd8183a8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8182d0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8182f0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81831c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd818388 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd8183b0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8183d4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8182c0 targets 0xd8183e8, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8182c4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8182e0 targets 0xd818300, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8182e4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81830c targets 0xd818330, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd818310 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81839c targets 0xd8183c4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8183a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8183c8 targets 0xd8183e8, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8183cc runs only when taken and is annulled on fall-through.
  The return at 0xd8183f4 has v0 = one of 0x0, ?.
- `__glx_DeleteLists` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8183fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8183fc-0xd818554 (344 bytes).
  It occupies 344 bytes.
  The `lw` at 0xd81840c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818424 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818428 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81842c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81844c, `lw` at 0xd818504.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81845c, `lw` at 0xd81847c, `lw` at 0xd8184b0.
  The `lw` at 0xd818464 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd818480 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd818490, `sw` at 0xd8184b4.
  The `sh` at 0xd8184bc stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8184c0, `sb` at 0xd8184e8.
  The `lw` at 0xd8184c4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8184d8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8184dc stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd8184e0 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd8184e4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8184ec loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8184f0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd8184f8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd818500 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81850c, `lw` at 0xd818524.
  The `lw` at 0xd818510 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd818444 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81846c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd8184a0 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd818518 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd818534 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd818430 targets 0xd818544, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd818434 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd818458 targets 0xd818480, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd81845c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81848c targets 0xd8184b8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd818490 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd818508 targets 0xd818528, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81850c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81852c targets 0xd818544, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd818530 runs only when taken and is annulled on fall-through.
  The return at 0xd81854c has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_EndList` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd818554 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd818554-0xd818694 (320 bytes).
  It occupies 320 bytes.
  The `lw` at 0xd818564 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818574 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818578 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81857c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81859c, `lw` at 0xd818644.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8185ac, `lw` at 0xd8185cc, `lw` at 0xd818600.
  The `lw` at 0xd8185b4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8185d0 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8185e0, `sw` at 0xd818604.
  The `sh` at 0xd81860c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd818610, `sb` at 0xd818638.
  The `lw` at 0xd818614 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd818628 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81862c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd818630 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd818634 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81863c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd818640 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81864c, `lw` at 0xd818664.
  The `lw` at 0xd818650 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd818594 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `jalr` at 0xd8185bc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd8185f0 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd818658 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd818674 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd818580 targets 0xd818684, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd818584 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8185a8 targets 0xd8185d0, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8185ac runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8185dc targets 0xd818608, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8185e0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd818648 targets 0xd818668, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81864c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81866c targets 0xd818684, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd818670 runs only when taken and is annulled on fall-through.
  The return at 0xd81868c has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_NewList` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd818694 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd818694-0xd8187ec (344 bytes).
  It occupies 344 bytes.
  The `lw` at 0xd8186a4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8186bc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8186c0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8186c4 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8186e4, `lw` at 0xd81879c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8186f4, `lw` at 0xd818714, `lw` at 0xd818748.
  The `lw` at 0xd8186fc loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd818718 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd818728, `sw` at 0xd81874c.
  The `sh` at 0xd818754 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd818758, `sb` at 0xd818780.
  The `lw` at 0xd81875c loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd818770 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd818774 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd818778 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81877c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd818784 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd818788 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd818790 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd818798 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8187a4, `lw` at 0xd8187bc.
  The `lw` at 0xd8187a8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8186dc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd818704 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd818738 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd8187b0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd8187cc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8186c8 targets 0xd8187dc, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8186cc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8186f0 targets 0xd818718, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8186f4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd818724 targets 0xd818750, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd818728 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8187a0 targets 0xd8187c0, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8187a4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8187c4 targets 0xd8187dc, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8187c8 runs only when taken and is annulled on fall-through.
  The return at 0xd8187e4 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_ColorTableParameterfvSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8187ec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8187ec-0xd8188c4 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd818824 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818838 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818844 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818848 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81884c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd818858 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd818860 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd818880 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818894 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818818 calls __glXColorTableParameterfvSGI_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd818870 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXColorTableParameterfvSGI_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8188a4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd818890 targets 0xd8188b0, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd8188bc has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_CopyConvolutionFilter2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8188c4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8188c4-0xd818964 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xd8188d4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8188e8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8188f4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8188f8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8188fc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd818900 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd818904 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd818908 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd81890c stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd818918 stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `sw` at 0xd818920 stores 4 bytes to [[[0x1014]+276]+4] +0x18.
  The `lw` at 0xd818924 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818928 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818944 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd818930 targets 0xd818954, is taken when t1(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd818934 runs only when taken and is annulled on fall-through.
  The return at 0xd81895c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_CopyConvolutionFilter1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd818964 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd818964-0xd8189fc (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xd818974 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818988 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818994 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818998 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81899c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8189a0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8189a4 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd8189a8 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd8189ac stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd8189b8 stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `lw` at 0xd8189bc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8189c0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8189dc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+24, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd8189c8 targets 0xd8189ec, is taken when t0(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+24) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+24) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd8189cc runs only when taken and is annulled on fall-through.
  The return at 0xd8189f4 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_ConvolutionParameterivEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8189fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8189fc-0xd818ad4 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd818a34 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818a48 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818a54 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818a58 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd818a5c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd818a68 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd818a70 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd818a90 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818aa4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818a28 calls __glXConvolutionParameterivEXT_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd818a80 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXConvolutionParameterivEXT_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd818ab4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd818aa0 targets 0xd818ac0, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd818acc has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_ConvolutionParameteriEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd818ad4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd818ad4-0xd818b5c (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd818ae4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818af4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818b00 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818b04 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd818b08 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd818b0c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd818b10 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd818b14 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd818b18 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818b20 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818b3c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd818b28 targets 0xd818b4c, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd818b2c runs only when taken and is annulled on fall-through.
  The return at 0xd818b54 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_ConvolutionParameterfvEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd818b5c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd818b5c-0xd818c34 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd818b94 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818ba8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818bb4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818bb8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd818bbc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd818bc8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd818bd0 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd818bf0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818c04 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818b88 calls __glXConvolutionParameterfvEXT_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd818be0 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXConvolutionParameterfvEXT_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd818c14 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd818c00 targets 0xd818c20, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd818c2c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_ConvolutionParameterfEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd818c34 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd818c34-0xd818cb8 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd818c40 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818c50 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818c5c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818c64 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd818c68 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd818c6c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd818c70 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd818c74 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd818c78 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818c80 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818c9c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[[0x1014]+276]+4]+16, a3=[[0x1014]+276].
  The `beql` branch at 0xd818c88 targets 0xd818cac, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd818c8c runs only when taken and is annulled on fall-through.
  The return at 0xd818cb0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_TagSampleBufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd818cb8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd818cb8-0xd818d24 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd818cc4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818cd4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818ce0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818ce4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd818ce8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd818cec loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818cf4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818d08 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd818cfc targets 0xd818d18, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+4) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+4) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd818d00 runs only when taken and is annulled on fall-through.
  The return at 0xd818d1c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_HistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd818d24 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd818d24-0xd818db8 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd818d34 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818d4c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818d58 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818d5c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd818d60 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd818d64 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd818d68 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd818d6c stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sb` at 0xd818d70 stores 1 byte to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd818d74 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818d7c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818d98 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd818d84 targets 0xd818da8, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd818d88 runs only when taken and is annulled on fall-through.
  The return at 0xd818db0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_PrioritizeTexturesEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd818db8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd818db8-0xd818ea4 (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0xd818dc8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818de0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818de8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818e08 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd818e0c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd818e18 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd818e60 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818e74 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818e2c calls memcpy with a0=[[[0x1014]+276]+4]+8, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd818e50 calls memcpy with a0=([[[0x1014]+276]+4] + (a0 << 0x2))+8, a1=a2 at entry (arg2), a2=(a0 << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd818e84 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `bltz` branch at 0xd818de4 targets 0xd818e90, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bltz` branch at 0xd818dec targets 0xd818e90, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0xd818e70 targets 0xd818e90, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd818e9c has v0 = one of ?, ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_BindTextureEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd818ea4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd818ea4-0xd818f20 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd818eb0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818ec0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818ecc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818ed0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd818ed4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd818ed8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd818edc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd818ee0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818ee8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818f04 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd818ef0 targets 0xd818f14, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd818ef4 runs only when taken and is annulled on fall-through.
  The return at 0xd818f18 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_SharpenTexFuncSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd818f20 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd818f20-0xd818ff4 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xd818f30 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818f4c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818f58 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818f70 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd818f74 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd818f80 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd818f88 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd818fb0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818fc4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818fa0 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(a1 << 0x3), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd818fd4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `bltz` branch at 0xd818f54 targets 0xd818fe0, is taken when v0(=(a1 << 0x1)) < 0 (signed), and falls through when v0(=(a1 << 0x1)) >= 0 (signed).
  The `beq` branch at 0xd818fc0 targets 0xd818fe0, is taken when t0(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd818fec has v0 = one of (a1 << 0x1), ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_DetailTexFuncSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd818ff4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd818ff4-0xd8190c8 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xd819004 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819020 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81902c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd819044 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd819048 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd819054 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81905c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd819084 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd819098 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd819074 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(a1 << 0x3), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8190a8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `bltz` branch at 0xd819028 targets 0xd8190b4, is taken when v0(=(a1 << 0x1)) < 0 (signed), and falls through when v0(=(a1 << 0x1)) >= 0 (signed).
  The `beq` branch at 0xd819094 targets 0xd8190b4, is taken when t0(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd8190c0 has v0 = one of (a1 << 0x1), ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8190c8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8190c8-0xd81913c (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd8190d4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8190e4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8190f0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8190f4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8190f8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8190fc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd819100 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd819108 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd819120 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd819110 targets 0xd819130, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd819114 runs only when taken and is annulled on fall-through.
  The return at 0xd819134 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81913c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81913c-0xd8191b0 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd819148 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819158 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819164 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd819168 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81916c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd819170 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd819174 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81917c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd819194 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd819184 targets 0xd8191a4, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd819188 runs only when taken and is annulled on fall-through.
  The return at 0xd8191a8 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_MinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8191b0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8191b0-0xd81923c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd8191c0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8191d4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8191e0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8191e4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8191e8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8191ec stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8191f0 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sb` at 0xd8191f4 stores 1 byte to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd8191f8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd819200 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81921c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd819208 targets 0xd81922c, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81920c runs only when taken and is annulled on fall-through.
  The return at 0xd819234 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_GetMapfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81923c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81923c-0xd8193dc (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81924c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81926c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819270 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd819274 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819294, `lw` at 0xd81938c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8192a0, `lw` at 0xd8192b8, `lw` at 0xd8192e4.
  The `lw` at 0xd8192a4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8192bc loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8192cc, `sw` at 0xd8192e8.
  The `sh` at 0xd8192f0 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8192f4, `sb` at 0xd819320.
  The `lw` at 0xd8192f8 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81930c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd819310 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd819314 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd819318 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd819324 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd819330 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81933c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd819344 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd819370 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd819394, `lw` at 0xd8193ac.
  The `lw` at 0xd819398 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81928c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8192ac calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8192d8 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81934c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd819380 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd8193a0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8193bc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd819278 targets 0xd8193cc, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81927c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81929c targets 0xd8192bc, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8192a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8192c8 targets 0xd8192ec, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd8192cc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd819360 targets 0xd819374, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81936c targets 0xd81938c and is always taken.
  The `beql` branch at 0xd819390 targets 0xd8193b0, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd819394 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8193b4 targets 0xd8193cc, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8193b8 runs only when taken and is annulled on fall-through.
  The return at 0xd8193d4 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetDetailTexFuncSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8193dc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8193dc-0xd81957c (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd8193ec loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819408 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81940c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd819410 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819430, `lw` at 0xd81952c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81943c, `lw` at 0xd819454, `lw` at 0xd819480.
  The `lw` at 0xd819440 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd819458 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd819468, `sw` at 0xd819484.
  The `sh` at 0xd819490 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd819494, `sb` at 0xd8194c4.
  The `lw` at 0xd819498 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8194ac stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8194b0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd8194b4 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd8194bc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd8194c0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8194c8 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8194d4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8194e4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd819510 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd819534, `lw` at 0xd81954c.
  The `lw` at 0xd819538 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd819428 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd819448 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819474 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8194ec calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd819520 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd819540 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81955c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd819414 targets 0xd81956c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819418 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819438 targets 0xd819458, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81943c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819464 targets 0xd819488, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd819468 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd819500 targets 0xd819514, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81950c targets 0xd81952c and is always taken.
  The `beql` branch at 0xd819530 targets 0xd819550, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd819534 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819554 targets 0xd81956c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819558 runs only when taken and is annulled on fall-through.
  The return at 0xd819574 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetMinmaxParameterivEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81957c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81957c-0xd819728 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd81958c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8195ac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8195b0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8195b4 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8195d4, `lw` at 0xd8196d8.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8195e0, `lw` at 0xd8195f8, `lw` at 0xd819624.
  The `lw` at 0xd8195e4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8195fc loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81960c, `sw` at 0xd819628.
  The `sh` at 0xd819634 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd819638, `sb` at 0xd819668.
  The `lw` at 0xd81963c loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd819650 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd819654 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd819658 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd819660 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd819664 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81966c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd819678 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd819688 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd819690 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd8196bc stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8196e0, `lw` at 0xd8196f8.
  The `lw` at 0xd8196e4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8195cc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8195ec calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819618 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819698 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd8196cc calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd8196ec calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819708 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8195b8 targets 0xd819718, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8195bc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8195dc targets 0xd8195fc, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8195e0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819608 targets 0xd81962c, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81960c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8196ac targets 0xd8196c0, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd8196b8 targets 0xd8196d8 and is always taken.
  The `beql` branch at 0xd8196dc targets 0xd8196fc, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8196e0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819700 targets 0xd819718, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819704 runs only when taken and is annulled on fall-through.
  The return at 0xd819720 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetMinmaxParameterfvEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd819728 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd819728-0xd8198d4 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd819738 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819758 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81975c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd819760 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819780, `lw` at 0xd819884.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81978c, `lw` at 0xd8197a4, `lw` at 0xd8197d0.
  The `lw` at 0xd819790 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8197a8 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8197b8, `sw` at 0xd8197d4.
  The `sh` at 0xd8197e0 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8197e4, `sb` at 0xd819814.
  The `lw` at 0xd8197e8 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8197fc stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd819800 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd819804 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd81980c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd819810 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd819818 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd819824 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd819834 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81983c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `swc1` at 0xd819868 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81988c, `lw` at 0xd8198a4.
  The `lw` at 0xd819890 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd819778 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd819798 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8197c4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819844 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd819878 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd819898 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8198b4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd819764 targets 0xd8198c4, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819768 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819788 targets 0xd8197a8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81978c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8197b4 targets 0xd8197d8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd8197b8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd819858 targets 0xd81986c, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd819864 targets 0xd819884 and is always taken.
  The `beql` branch at 0xd819888 targets 0xd8198a8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81988c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8198ac targets 0xd8198c4, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8198b0 runs only when taken and is annulled on fall-through.
  The return at 0xd8198cc has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetHistogramParameterivEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8198d4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8198d4-0xd819a80 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd8198e4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819904 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819908 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81990c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81992c, `lw` at 0xd819a30.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd819938, `lw` at 0xd819950, `lw` at 0xd81997c.
  The `lw` at 0xd81993c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd819954 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd819964, `sw` at 0xd819980.
  The `sh` at 0xd81998c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd819990, `sb` at 0xd8199c0.
  The `lw` at 0xd819994 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8199a8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8199ac stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd8199b0 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd8199b8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd8199bc stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8199c4 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8199d0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8199e0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd8199e8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd819a14 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd819a38, `lw` at 0xd819a50.
  The `lw` at 0xd819a3c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd819924 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd819944 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819970 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8199f0 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd819a24 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd819a44 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819a60 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd819910 targets 0xd819a70, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819914 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819934 targets 0xd819954, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd819938 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819960 targets 0xd819984, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd819964 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd819a04 targets 0xd819a18, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd819a10 targets 0xd819a30 and is always taken.
  The `beql` branch at 0xd819a34 targets 0xd819a54, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd819a38 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819a58 targets 0xd819a70, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819a5c runs only when taken and is annulled on fall-through.
  The return at 0xd819a78 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetHistogramParameterfvEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd819a80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd819a80-0xd819c2c (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd819a90 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819ab0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819ab4 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd819ab8 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819ad8, `lw` at 0xd819bdc.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd819ae4, `lw` at 0xd819afc, `lw` at 0xd819b28.
  The `lw` at 0xd819ae8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd819b00 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd819b10, `sw` at 0xd819b2c.
  The `sh` at 0xd819b38 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd819b3c, `sb` at 0xd819b6c.
  The `lw` at 0xd819b40 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd819b54 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd819b58 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd819b5c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd819b64 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd819b68 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd819b70 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd819b7c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd819b8c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd819b94 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `swc1` at 0xd819bc0 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd819be4, `lw` at 0xd819bfc.
  The `lw` at 0xd819be8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd819ad0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd819af0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819b1c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819b9c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd819bd0 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd819bf0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819c0c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd819abc targets 0xd819c1c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819ac0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819ae0 targets 0xd819b00, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd819ae4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819b0c targets 0xd819b30, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd819b10 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd819bb0 targets 0xd819bc4, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd819bbc targets 0xd819bdc and is always taken.
  The `beql` branch at 0xd819be0 targets 0xd819c00, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd819be4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819c04 targets 0xd819c1c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819c08 runs only when taken and is annulled on fall-through.
  The return at 0xd819c24 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetConvolutionParameterivEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd819c2c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd819c2c-0xd819dd8 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd819c3c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819c5c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819c60 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd819c64 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819c84, `lw` at 0xd819d88.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd819c90, `lw` at 0xd819ca8, `lw` at 0xd819cd4.
  The `lw` at 0xd819c94 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd819cac loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd819cbc, `sw` at 0xd819cd8.
  The `sh` at 0xd819ce4 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd819ce8, `sb` at 0xd819d18.
  The `lw` at 0xd819cec loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd819d00 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd819d04 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd819d08 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd819d10 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd819d14 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd819d1c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd819d28 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd819d38 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd819d40 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd819d6c stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd819d90, `lw` at 0xd819da8.
  The `lw` at 0xd819d94 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd819c7c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd819c9c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819cc8 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819d48 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd819d7c calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd819d9c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819db8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd819c68 targets 0xd819dc8, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819c6c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819c8c targets 0xd819cac, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd819c90 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819cb8 targets 0xd819cdc, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd819cbc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd819d5c targets 0xd819d70, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd819d68 targets 0xd819d88 and is always taken.
  The `beql` branch at 0xd819d8c targets 0xd819dac, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd819d90 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819db0 targets 0xd819dc8, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819db4 runs only when taken and is annulled on fall-through.
  The return at 0xd819dd0 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetConvolutionParameterfvEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd819dd8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd819dd8-0xd819f84 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd819de8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819e08 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819e0c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd819e10 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819e30, `lw` at 0xd819f34.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd819e3c, `lw` at 0xd819e54, `lw` at 0xd819e80.
  The `lw` at 0xd819e40 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd819e58 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd819e68, `sw` at 0xd819e84.
  The `sh` at 0xd819e90 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd819e94, `sb` at 0xd819ec4.
  The `lw` at 0xd819e98 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd819eac stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd819eb0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd819eb4 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd819ebc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd819ec0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd819ec8 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd819ed4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd819ee4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd819eec stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `swc1` at 0xd819f18 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd819f3c, `lw` at 0xd819f54.
  The `lw` at 0xd819f40 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd819e28 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd819e48 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819e74 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819ef4 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd819f28 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd819f48 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819f64 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd819e14 targets 0xd819f74, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819e18 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819e38 targets 0xd819e58, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd819e3c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819e64 targets 0xd819e88, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd819e68 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd819f08 targets 0xd819f1c, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd819f14 targets 0xd819f34 and is always taken.
  The `beql` branch at 0xd819f38 targets 0xd819f58, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd819f3c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819f5c targets 0xd819f74, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819f60 runs only when taken and is annulled on fall-through.
  The return at 0xd819f7c has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetSharpenTexFuncSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd819f84 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd819f84-0xd81a124 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd819f94 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819fb0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819fb4 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd819fb8 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819fd8, `lw` at 0xd81a0d4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd819fe4, `lw` at 0xd819ffc, `lw` at 0xd81a028.
  The `lw` at 0xd819fe8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81a000 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a010, `sw` at 0xd81a02c.
  The `sh` at 0xd81a038 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81a03c, `sb` at 0xd81a06c.
  The `lw` at 0xd81a040 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81a054 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81a058 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81a05c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd81a064 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd81a068 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81a070 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81a07c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81a08c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd81a0b8 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81a0dc, `lw` at 0xd81a0f4.
  The `lw` at 0xd81a0e0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd819fd0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd819ff0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a01c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a094 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81a0c8 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd81a0e8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a104 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd819fbc targets 0xd81a114, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819fc0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819fe0 targets 0xd81a000, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd819fe4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a00c targets 0xd81a030, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81a010 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81a0a8 targets 0xd81a0bc, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81a0b4 targets 0xd81a0d4 and is always taken.
  The `beql` branch at 0xd81a0d8 targets 0xd81a0f8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81a0dc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a0fc targets 0xd81a114, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a100 runs only when taken and is annulled on fall-through.
  The return at 0xd81a11c has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetColorTableParameterivSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81a124 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81a124-0xd81a2d0 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd81a134 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81a154 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81a158 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81a15c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81a17c, `lw` at 0xd81a280.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81a188, `lw` at 0xd81a1a0, `lw` at 0xd81a1cc.
  The `lw` at 0xd81a18c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81a1a4 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a1b4, `sw` at 0xd81a1d0.
  The `sh` at 0xd81a1dc stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81a1e0, `sb` at 0xd81a210.
  The `lw` at 0xd81a1e4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81a1f8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81a1fc stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81a200 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd81a208 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd81a20c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81a214 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81a220 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81a230 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81a238 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd81a264 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81a288, `lw` at 0xd81a2a0.
  The `lw` at 0xd81a28c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81a174 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81a194 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a1c0 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a240 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81a274 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81a294 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a2b0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81a160 targets 0xd81a2c0, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a164 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a184 targets 0xd81a1a4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81a188 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a1b0 targets 0xd81a1d4, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81a1b4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81a254 targets 0xd81a268, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81a260 targets 0xd81a280 and is always taken.
  The `beql` branch at 0xd81a284 targets 0xd81a2a4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81a288 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a2a8 targets 0xd81a2c0, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a2ac runs only when taken and is annulled on fall-through.
  The return at 0xd81a2c8 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetColorTableParameterfvSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81a2d0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81a2d0-0xd81a47c (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd81a2e0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81a300 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81a304 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81a308 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81a328, `lw` at 0xd81a42c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81a334, `lw` at 0xd81a34c, `lw` at 0xd81a378.
  The `lw` at 0xd81a338 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81a350 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a360, `sw` at 0xd81a37c.
  The `sh` at 0xd81a388 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81a38c, `sb` at 0xd81a3bc.
  The `lw` at 0xd81a390 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81a3a4 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81a3a8 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81a3ac loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd81a3b4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd81a3b8 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81a3c0 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81a3cc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81a3dc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81a3e4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `swc1` at 0xd81a410 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81a434, `lw` at 0xd81a44c.
  The `lw` at 0xd81a438 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81a320 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81a340 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a36c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a3ec calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81a420 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81a440 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a45c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81a30c targets 0xd81a46c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a310 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a330 targets 0xd81a350, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81a334 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a35c targets 0xd81a380, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81a360 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81a400 targets 0xd81a414, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81a40c targets 0xd81a42c and is always taken.
  The `beql` branch at 0xd81a430 targets 0xd81a450, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81a434 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a454 targets 0xd81a46c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a458 runs only when taken and is annulled on fall-through.
  The return at 0xd81a474 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_IsTextureEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81a47c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81a47c-0xd81a5fc (384 bytes).
  It occupies 384 bytes.
  The `lw` at 0xd81a48c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81a4a4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81a4ac loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81a4b0 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81a4cc, `lw` at 0xd81a590.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81a4d8, `lw` at 0xd81a4f0, `lw` at 0xd81a51c.
  The `lw` at 0xd81a4dc loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81a4f4 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a504, `sw` at 0xd81a520.
  The `sh` at 0xd81a52c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81a530, `sb` at 0xd81a560.
  The `lw` at 0xd81a534 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81a548 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81a54c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81a550 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd81a558 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd81a55c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81a564 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81a570 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81a580 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81a5a0, `lw` at 0xd81a5c0.
  The `lw` at 0xd81a5a8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81a4c4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd81a4e4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a510 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a588 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81a5b0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a5d4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81a4b4 targets 0xd81a5e8, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a4b8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a4d4 targets 0xd81a4f4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81a4d8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a500 targets 0xd81a524, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81a504 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a59c targets 0xd81a5c4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81a5a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a5c8 targets 0xd81a5e8, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a5cc runs only when taken and is annulled on fall-through.
  The return at 0xd81a5f4 has v0 = one of 0x0, ?.
- `__glx_GenTexturesEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81a5fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81a5fc-0xd81a788 (396 bytes).
  It occupies 396 bytes.
  The `lw` at 0xd81a60c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81a628 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81a62c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81a630 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81a650, `lw` at 0xd81a734.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81a65c, `lw` at 0xd81a674, `lw` at 0xd81a6a0.
  The `lw` at 0xd81a660 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81a678 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a688, `sw` at 0xd81a6a4.
  The `sh` at 0xd81a6b0 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81a6b4, `sb` at 0xd81a6e4.
  The `lw` at 0xd81a6b8 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81a6cc stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81a6d0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81a6d4 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd81a6dc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd81a6e0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81a6e8 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81a6f4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81a704 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81a740, `lw` at 0xd81a758.
  The `lw` at 0xd81a744 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81a648 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd81a668 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a694 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a70c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-48, a2=0x0, a3=0x0.
  The `jalr` at 0xd81a72c calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0xd81a74c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a768 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81a634 targets 0xd81a778, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a638 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a658 targets 0xd81a678, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81a65c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a684 targets 0xd81a6a8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81a688 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a73c targets 0xd81a75c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81a740 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a760 targets 0xd81a778, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a764 runs only when taken and is annulled on fall-through.
  The return at 0xd81a780 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_DeleteTexturesEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81a788 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81a788-0xd81a91c (404 bytes).
  It occupies 404 bytes.
  The `lw` at 0xd81a798 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81a7b4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81a7b8 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81a7c0 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81a7e0, `lw` at 0xd81a8c8.
  The `lw` at 0xd81a7f0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81a808, `lw` at 0xd81a854, `lw` at 0xd81a870.
  The `lw` at 0xd81a818 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a830, `sw` at 0xd81a858.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81a868, `sb` at 0xd81a89c.
  The `sh` at 0xd81a86c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  The `lw` at 0xd81a874 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81a888 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81a88c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd81a890 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd81a894 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd81a898 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81a8a0 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81a8ac stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81a8b4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81a8d4, `lw` at 0xd81a8ec.
  The `lw` at 0xd81a8d8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81a7d8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd81a7f8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a840 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+108].
  The `jalr` at 0xd81a8c0 calls memcpy with a0=[[[[0x1014]+276]+216]+108]+16, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=[[[[0x1014]+276]+216]+108].
  The `jalr` at 0xd81a8e0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a8fc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `bltz` branch at 0xd81a7bc targets 0xd81a908, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beql` branch at 0xd81a7c4 targets 0xd81a90c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a7c8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a7e8 targets 0xd81a808, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw t0,72(sp)` at 0xd81a7ec runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a82c targets 0xd81a85c, is taken when t8(=[[[[0x1014]+276]+216]+112]) >= t3(?) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t3(?) (unsigned); its branch-likely delay slot `sw a3,100(s0)` at 0xd81a830 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a8d0 targets 0xd81a8f0, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81a8d4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a8f4 targets 0xd81a90c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a8f8 runs only when taken and is annulled on fall-through.
  The return at 0xd81a914 has v0 = one of ?, [[[[0x1014]+276]+216]+124].
- `__glx_AreTexturesResidentEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81a91c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81a91c-0xd81ab30 (532 bytes).
  It occupies 532 bytes.
  The `lw` at 0xd81a92c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81a94c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81a954 loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd81a95c loads 4 bytes from [[0x1014]+276] +0xd8.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81a984, `lw` at 0xd81aadc.
  The `lw` at 0xd81a994 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81a9ac, `lw` at 0xd81a9f8, `lw` at 0xd81aa14.
  The `lw` at 0xd81a9bc loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a9d4, `sw` at 0xd81a9fc.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81aa0c, `sb` at 0xd81aa44.
  The `sh` at 0xd81aa10 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  The `lw` at 0xd81aa18 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81aa2c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81aa30 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd81aa34 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd81aa3c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd81aa40 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81aa48 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81aa54 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81aa5c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81aae4, `lw` at 0xd81aafc.
  The `lw` at 0xd81aae8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81a97c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81a99c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a9e4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+108].
  The `jalr` at 0xd81aa68 calls memcpy with a0=[[[[0x1014]+276]+216]+108]+16, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=[[[[0x1014]+276]+216]+108].
  The `jalr` at 0xd81aa88 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-56, a2=0x0, a3=0x0.
  The `jalr` at 0xd81aaac calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0xd81aad0 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81aaf0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81ab0c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `bgez` branch at 0xd81a958 targets 0xd81a968, is taken when a0 >= 0 (signed), and falls through when a0 < 0 (signed).
  The `beq` branch at 0xd81a960 targets 0xd81ab1c and is always taken.
  The `beql` branch at 0xd81a968 targets 0xd81ab1c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lbu v0,99(sp)` at 0xd81a96c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a98c targets 0xd81a9ac, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw t0,120(sp)` at 0xd81a990 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a9d0 targets 0xd81aa00, is taken when t8(=[[[[0x1014]+276]+216]+112]) >= t2(?) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t2(?) (unsigned); its branch-likely delay slot `sw a3,100(s0)` at 0xd81a9d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd81aab8 targets 0xd81aadc, is taken when (s1(=a0) & 0x3) == 0, and falls through when (s1(=a0) & 0x3) != 0.
  The `beql` branch at 0xd81aae0 targets 0xd81ab00, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81aae4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81ab04 targets 0xd81ab1c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lbu v0,99(sp)` at 0xd81ab08 runs only when taken and is annulled on fall-through.
  The return at 0xd81ab28 has v0 = one of 0x0, ?.
## Skipped routines

Skipped routines from the first 250 targets: `odsy_usb_comp_update_tiles` in
`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this
binary/member); `usb_comp_update_tiles` in
`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this
binary/member); `odsy_usb_comp_readwrite_register` in
`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this
binary/member); `usb_comp_readwrite_register` in
`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this
binary/member); `odsy_usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already
documented for this binary/member); `usb_comp_update_tiles` in
`usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member);
`odsy_usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented
for this binary/member); `usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`
(already documented for this binary/member); `__glChangeWindowSize` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`__glChangeReadWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for
this binary/member); `__glChangeWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
(already documented for this binary/member); `__glOdysseyWindowToNormalizedEyeZ` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already documented for this binary/member);
`__glChangeWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already documented for
this binary/member); `__glOdysseyWindowToNormalizedEyeZ` in `builds/vpro-
patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`__glChangeWindowSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for
this binary/member); `__glChangeReadWindowSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`
(already documented for this binary/member); `__glOdysseyWindowToNormalizedEyeZ` in
`usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member); `__glChangeWindowSize` in
`usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member); `__glChangeReadWindowSize`
in `usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member); `__glChangeWindowSize` in
`usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member);
`__glOdysseyWindowToNormalizedEyeZ` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` (already documented for this
binary/member); `__glChangeWindowSize` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` (already documented for this
binary/member); `__glOdysseySoftClipBeginTriangles` in `usr/gfx/arch/IP30ODSY64/libGLcore.so` (already
documented for this binary/member).
