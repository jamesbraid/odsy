# Instruction readings from hostfacts

Each entry reports selected non-stack accesses, calls with argument slots, conditional branches and return values from the exact binary build named in its header. Every claim cites its instruction address. These are software observations, graded Inferred; they do not establish hardware behaviour.

- `__glOdysseyWindowToNormalizedEyeZ` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xd9f8060, 232 bytes) Inferred.
  Loads 4 bytes from abs 0xdafee94 into `t9` (`lw` at 0xd9f806c).
  Loads 4 bytes from abs 0x1010 into `t6` (`lw` at 0xd9f8070).
  Loads 8 bytes from table(0x165c8) +0x0 into `$f2` (`ldc1` at 0xd9f8098).
  Loads 8 bytes from table(0x165d0) +0x0 into `$f8` (`ldc1` at 0xd9f809c).
  Loads 4 bytes from abs 0xdb021e8 into `t9` (`lw` at 0xd9f810c).
  Calls `__glOdysseyWindowToEyeZ [0xd9f7e0c]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd9f8080).
  Calls `isnan` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd9f8114).
  The `bc1fl` at 0xd9f80d0 is taken when not (f12 < f18 (c.lt.d at 0xd9f80c8)) and falls through when f12 < f18 (c.lt.d at 0xd9f80c8).
  Its delay slot runs only when the branch at 0xd9f80d0 is taken and is annulled on fall-through.
  The `bc1f` at 0xd9f80f8 is taken when not (f4 < f12 (c.lt.d at 0xd9f80f0)) and falls through when f4 < f12 (c.lt.d at 0xd9f80f0).
  The `beq` at 0xd9f8120 is taken when v0(=ret(isnan)) == 0 and falls through when v0(=ret(isnan)) != 0.
  Returns with v0 = ? at `jr` at 0xd9f8140.

- `__glOdysseyWindowToNormalizedEyeZ` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd9e4890, 200 bytes) Inferred.
  Loads 4 bytes from abs 0xdaf1044 into `t9` (`lw` at 0xd9e48a4).
  Loads 4 bytes from abs 0x1010 into `s8` (`lw` at 0xd9e48b4).
  Loads 8 bytes from [0x1010] +0x165c8 into `$f6` (`ldc1` at 0xd9e48c0).
  Loads 8 bytes from [0x1010] +0x165d0 into `$f7` (`ldc1` at 0xd9e48c8).
  Loads 8 bytes from abs 0xdaf4d78 into `$f6` (`ldc1` at 0xd9e48f0).
  Performs 2 4-byte loads from abs 0xdaf4b00, including `lwc1` at 0xd9e48f8, `lwc1` at 0xd9e4940.
  Loads 4 bytes from abs 0xdaf4370 into `t9` (`lw` at 0xd9e492c).
  Calls `__glOdysseyWindowToEyeZ [0xd9e4710]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xd9e48b0).
  Calls `isnan` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd9e4930).
  The `bc1t` at 0xd9e48f4 is taken when f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0xd9e48e8) and falls through when not (f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0xd9e48e8)).
  The `bc1f` at 0xd9e4900 is taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  Returns with v0 = [0x1010]+65536; f0 = 0x3f800000 at `jr` at 0xd9e490c, `jr` at 0xd9e4924.
  Returns with v0 = ret(isnan) at `jr` at 0xd9e4950.

- `__glChangeReadWindowSize` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda35140, 12 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xe80 (`sw` at 0xda35140).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xe7c (`sw` at 0xda35148).
  Returns with v0 = ? at `jr` at 0xda35144.

- `__glChangeReadWindowSize` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x227a400, 12 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xfe4 (`sw` at 0x227a400).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xfe0 (`sw` at 0x227a408).
  Returns with v0 = ? at `jr` at 0x227a404.

- `__glOdysseyWindowToNormalizedEyeZ` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdac7ad0, 144 bytes) Inferred.
  Loads 4 bytes from abs 0xdbdaa80 into `t9` (`lw` at 0xdac7ae4).
  Loads 4 bytes from abs 0x1010 into `s8` (`lw` at 0xdac7af4).
  Loads 8 bytes from [0x1010] +0x16660 into `$f6` (`ldc1` at 0xdac7b00).
  Loads 8 bytes from [0x1010] +0x16668 into `$f0` (`ldc1` at 0xdac7b08).
  Loads 8 bytes from abs 0xdbde670 into `$f0` (`ldc1` at 0xdac7b1c).
  Loads 8 bytes from abs 0xdbde668 into `$f2` (`ldc1` at 0xdac7b24).
  Loads 4 bytes from abs 0xdbde444 into `$f1` (`lwc1` at 0xdac7b2c).
  Loads 4 bytes from abs 0xdbde448 into `$f5` (`lwc1` at 0xdac7b54).
  Calls `__glOdysseyWindowToEyeZ [0xdac7940]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xdac7af0).
  The `bc1t` at 0xdac7b34 is taken when f6 < f0(=0x0) (c.lt.d at 0xdac7b28) and falls through when not (f6 < f0(=0x0) (c.lt.d at 0xdac7b28)).
  Returns with v0 = [0x1010]+65536 at `jr` at 0xdac7b4c.

- `__glChangeWindowSize` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdb12190, 256 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x7718 into `a0` (`lw` at 0xdb121a0).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xe70 (`sw` at 0xdb121a4).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xe6c (`sw` at 0xdb121ac).
  Loads 4 bytes from [a0+30488] +0x38 into `t9` (`lw` at 0xdb121bc).
  Loads 1 byte from a0 (arg0 at entry) +0xc8e into `v0` (`lbu` at 0xdb121d4).
  Loads 4 bytes from a0 (arg0 at entry) +0x771c into `a0` (`lw` at 0xdb121e0).
  Loads 4 bytes from [a0+30492] +0x38 into `t9` (`lw` at 0xdb121e4).
  Loads 1 byte from a0 (arg0 at entry) +0xc90 into `v1` (`lbu` at 0xdb121f4).
  Loads 4 bytes from a0 (arg0 at entry) +0x79e8 into `a3` (`lw` at 0xdb12200).
  Performs 2 1-byte loads from a0 (arg0 at entry) +0xc91, including `lbu` at 0xdb1220c, `lbu` at 0xdb1228c.
  Loads 4 bytes from a0 (arg0 at entry) +0x798c into `t9` (`lw` at 0xdb12218).
  Loads 1 byte from a0 (arg0 at entry) +0xc92 into `v0` (`lbu` at 0xdb1222c).
  Loads 4 bytes from a0 (arg0 at entry) +0x7914 into `t9` (`lw` at 0xdb12238).
  Loads 4 bytes from a0 (arg0 at entry) +0x2de4 into `t9` (`lw` at 0xdb1224c).
  Loads 4 bytes from a0 (arg0 at entry) +0x7a10 into `t9` (`lw` at 0xdb12274).
  Calls `(unknown callee)` via register with a0=[a0+30488], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb121cc).
  Calls `(unknown callee)` via register with a0=[a0+30492], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xdb121ec).
  Calls `(unknown callee)` via register with a0=a0+31060, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xdb12224).
  Calls `(unknown callee)` via register with a0=a0+30940, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xdb12244).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xdb12258).
  Calls `(unknown callee)` via register with a0=a0+31192, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+31208] (`jalr` at 0xdb12280).
  The `beq` at 0xdb121d8 is taken when v0(=[a0+3214]:1) == 0 and falls through when v0(=[a0+3214]:1) != 0.
  The `beq` at 0xdb121f8 is taken when v1(=[a0+3216]:1) == 0 and falls through when v1(=[a0+3216]:1) != 0.
  The `bne` at 0xdb12204 is taken when a3(=[a0+31208]) != 0 and falls through when a3(=[a0+31208]) == 0.
  The `beq` at 0xdb12210 is taken when at(=[a0+3217]:1) == 0 and falls through when at(=[a0+3217]:1) != 0.
  The `beq` at 0xdb12230 is taken when v0(=[a0+3218]:1) == 0 and falls through when v0(=[a0+3218]:1) != 0.
  Returns with v0 = ret(?); f0 = ret(?) at `jr` at 0xdb1226c.

- `__glChangeReadWindowSize` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdb12290, 12 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xe78 (`sw` at 0xdb12290).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xe74 (`sw` at 0xdb12298).
  Returns with v0 = ? at `jr` at 0xdb12294.

- `__glOdysseyWindowToNormalizedEyeZ` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0xb3ad2f0, 144 bytes) Inferred.
  Loads 8 bytes from abs 0xb4c8878 into `t9` (`ld` at 0xb3ad304).
  Loads 8 bytes from abs 0x1020 into `s8` (`ld` at 0xb3ad314).
  Loads 8 bytes from [0x1020]:8 +0x18ce8 into `$f6` (`ldc1` at 0xb3ad320).
  Loads 8 bytes from [0x1020]:8 +0x18cf0 into `$f0` (`ldc1` at 0xb3ad328).
  Loads 8 bytes from abs 0xb4cfc70 into `$f0` (`ldc1` at 0xb3ad33c).
  Loads 8 bytes from abs 0xb4cfc68 into `$f2` (`ldc1` at 0xb3ad344).
  Loads 4 bytes from abs 0xb4cfa10 into `$f1` (`lwc1` at 0xb3ad34c).
  Loads 4 bytes from abs 0xb4cfa14 into `$f5` (`lwc1` at 0xb3ad374).
  Calls `__glOdysseyWindowToEyeZ [0xb3ad160]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xb3ad310).
  The `bc1t` at 0xb3ad354 is taken when f6 < f0(=0x0) (c.lt.d at 0xb3ad348) and falls through when not (f6 < f0(=0x0) (c.lt.d at 0xb3ad348)).
  Returns with v0 = [0x1020]:8+131072 at `jr` at 0xb3ad36c.

- `__glChangeWindowSize` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0xb3f8670, 284 bytes) Inferred.
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xfe0 (`sw` at 0xb3f8678).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xfe4 (`sw` at 0xb3f8680).
  Loads 8 bytes from a0 (arg0 at entry) +0x9a28 into `a0` (`ld` at 0xb3f8698).
  Loads 8 bytes from [a0+39464]:8 +0x58 into `t9` (`ld` at 0xb3f86a8).
  Loads 1 byte from a0 (arg0 at entry) +0xdee into `at` (`lbu` at 0xb3f86c0).
  Loads 8 bytes from a0 (arg0 at entry) +0x9a30 into `a0` (`ld` at 0xb3f86cc).
  Loads 8 bytes from [a0+39472]:8 +0x58 into `t9` (`ld` at 0xb3f86d0).
  Loads 1 byte from a0 (arg0 at entry) +0xdf0 into `v0` (`lbu` at 0xb3f86e0).
  Loads 8 bytes from a0 (arg0 at entry) +0x9ea0 into `v1` (`ld` at 0xb3f86ec).
  Performs 2 1-byte loads from a0 (arg0 at entry) +0xdf1, including `lbu` at 0xb3f86f8, `lbu` at 0xb3f8788.
  Loads 8 bytes from a0 (arg0 at entry) +0x9e10 into `t9` (`ld` at 0xb3f8704).
  Loads 1 byte from a0 (arg0 at entry) +0xdf2 into `a3` (`lbu` at 0xb3f871c).
  Loads 8 bytes from a0 (arg0 at entry) +0x9d38 into `t9` (`ld` at 0xb3f8728).
  Loads 8 bytes from a0 (arg0 at entry) +0x46a8 into `t9` (`ld` at 0xb3f8740).
  Loads 8 bytes from a0 (arg0 at entry) +0x9ee0 into `t9` (`ld` at 0xb3f876c).
  Calls `(unknown callee)` via register with a0=[a0+39464]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xb3f86b8).
  Calls `(unknown callee)` via register with a0=[a0+39472]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xb3f86d8).
  Calls `(unknown callee)` via register with a0=a0+40376, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+3569]:1 (`jalr` at 0xb3f8714).
  Calls `(unknown callee)` via register with a0=a0+40160, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+3570]:1 (`jalr` at 0xb3f8738).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xb3f8750).
  Calls `(unknown callee)` via register with a0=a0+40584, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xb3f877c).
  The `beq` at 0xb3f86c4 is taken when at(=[a0+3566]:1) == 0 and falls through when at(=[a0+3566]:1) != 0.
  The `beq` at 0xb3f86e4 is taken when v0(=[a0+3568]:1) == 0 and falls through when v0(=[a0+3568]:1) != 0.
  The `bne` at 0xb3f86f0 is taken when v1(=[a0+40608]:8) != 0 and falls through when v1(=[a0+40608]:8) == 0.
  The `beq` at 0xb3f86fc is taken when a3(=[a0+3569]:1) == 0 and falls through when a3(=[a0+3569]:1) != 0.
  The `beq` at 0xb3f8720 is taken when a3(=[a0+3570]:1) == 0 and falls through when a3(=[a0+3570]:1) != 0.
  Returns with v0 = ret(?); f0 = ret(?) at `jr` at 0xb3f8764.

- `__glChangeReadWindowSize` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0xb3f8790, 12 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xfec (`sw` at 0xb3f8790).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xfe8 (`sw` at 0xb3f8798).
  Returns with v0 = ? at `jr` at 0xb3f8794.

- `__glOdysseyWindowToNormalizedEyeZ` (`builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdacbc78, 184 bytes) Inferred.
  Loads 4 bytes from abs 0xdbd78bc into `t9` (`lw` at 0xdacbc84).
  Loads 4 bytes from abs 0x1010 into `t6` (`lw` at 0xdacbc88).
  Loads 8 bytes from table(0x16660) +0x0 into `$f2` (`ldc1` at 0xdacbcb0).
  Loads 8 bytes from table(0x16668) +0x0 into `$f8` (`ldc1` at 0xdacbcb4).
  Calls `__glOdysseyWindowToEyeZ [0xdacba24]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdacbc98).
  The `bc1fl` at 0xdacbcec is taken when not (f12 < f18 (c.lt.d at 0xdacbce4)) and falls through when f12 < f18 (c.lt.d at 0xdacbce4).
  Its delay slot runs only when the branch at 0xdacbcec is taken and is annulled on fall-through.
  The `bc1fl` at 0xdacbd14 is taken when not (f4 < f12 (c.lt.d at 0xdacbd0c)) and falls through when f4 < f12 (c.lt.d at 0xdacbd0c).
  Its delay slot runs only when the branch at 0xdacbd14 is taken and is annulled on fall-through.
  Returns with v0 = table(0x16660) at `jr` at 0xdacbd28.

- `__glChangeWindowSize` (`builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdb1aeb8, 280 bytes) Inferred.
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xe6c (`sw` at 0xdb1aee0).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xe70 (`sw` at 0xdb1aee4).
  Loads 4 bytes from a0 (arg0 at entry) +0x7718 into `a0` (`lw` at 0xdb1aee8).
  Loads 4 bytes from [a0+30488] +0x38 into `t9` (`lw` at 0xdb1aef4).
  Loads 1 byte from a0 (arg0 at entry) +0xc8e into `t6` (`lbu` at 0xdb1af00).
  Performs 2 1-byte loads from a0 (arg0 at entry) +0xc90, including `lbu` at 0xdb1af0c, `lbu` at 0xdb1af2c.
  Loads 4 bytes from a0 (arg0 at entry) +0x771c into `a0` (`lw` at 0xdb1af10).
  Loads 4 bytes from [a0+30492] +0x38 into `t9` (`lw` at 0xdb1af1c).
  Performs 3 1-byte loads from a0 (arg0 at entry) +0xc91, including `lbu` at 0xdb1af34, `lbu` at 0xdb1af40, `lbu` at 0xdb1af5c.
  Loads 4 bytes from a0 (arg0 at entry) +0x79e8 into `t8` (`lw` at 0xdb1af38).
  Loads 4 bytes from a0 (arg0 at entry) +0x7a10 into `t9` (`lw` at 0xdb1af44).
  Performs 2 1-byte loads from a0 (arg0 at entry) +0xc92, including `lbu` at 0xdb1af64, `lbu` at 0xdb1af80.
  Loads 4 bytes from a0 (arg0 at entry) +0x798c into `t9` (`lw` at 0xdb1af68).
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x2de4, including `lw` at 0xdb1af88, `lw` at 0xdb1afa4.
  Loads 4 bytes from a0 (arg0 at entry) +0x7914 into `t9` (`lw` at 0xdb1af8c).
  Calls `(unknown callee)` via register with a0=[a0+30488], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb1aef8).
  Calls `(unknown callee)` via register with a0=[a0+30492], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xdb1af20).
  Calls `(unknown callee)` via register with a0=a0+31192, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xdb1af50).
  Calls `(unknown callee)` via register with a0=a0+31060, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xdb1af74).
  Calls `(unknown callee)` via register with a0=a0+30940, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xdb1af98).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xdb1afac).
  The `beql` at 0xdb1af08 is taken when t6(=[a0+3214]:1) == 0 and falls through when t6(=[a0+3214]:1) != 0.
  Its delay slot runs only when the branch at 0xdb1af08 is taken and is annulled on fall-through.
  The `beql` at 0xdb1af30 is taken when t7(=[a0+3216]:1) == 0 and falls through when t7(=[a0+3216]:1) != 0.
  Its delay slot runs only when the branch at 0xdb1af30 is taken and is annulled on fall-through.
  The `beql` at 0xdb1af3c is taken when t8(=[a0+31208]) == 0 and falls through when t8(=[a0+31208]) != 0.
  Its delay slot runs only when the branch at 0xdb1af3c is taken and is annulled on fall-through.
  The `beql` at 0xdb1af60 is taken when t0(=[a0+3217]:1) == 0 and falls through when t0(=[a0+3217]:1) != 0.
  Its delay slot runs only when the branch at 0xdb1af60 is taken and is annulled on fall-through.
  The `beql` at 0xdb1af84 is taken when t1(=[a0+3218]:1) == 0 and falls through when t1(=[a0+3218]:1) != 0.
  Its delay slot runs only when the branch at 0xdb1af84 is taken and is annulled on fall-through.
  Returns with v0 = ret(?); f0 = ret(?) at `jr` at 0xdb1afc8.

- `__glChangeReadWindowSize` (`builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdb1afd0, 12 bytes) Inferred.
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xe74 (`sw` at 0xdb1afd0).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xe78 (`sw` at 0xdb1afd8).
  Returns with v0 = ? at `jr` at 0xdb1afd4.

- `__glOdysseyWindowToNormalizedEyeZ` (`builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdac7ad0, 144 bytes) Inferred.
  Loads 4 bytes from abs 0xdbdaa80 into `t9` (`lw` at 0xdac7ae4).
  Loads 4 bytes from abs 0x1010 into `s8` (`lw` at 0xdac7af4).
  Loads 8 bytes from [0x1010] +0x16660 into `$f6` (`ldc1` at 0xdac7b00).
  Loads 8 bytes from [0x1010] +0x16668 into `$f0` (`ldc1` at 0xdac7b08).
  Loads 8 bytes from abs 0xdbde670 into `$f0` (`ldc1` at 0xdac7b1c).
  Loads 8 bytes from abs 0xdbde668 into `$f2` (`ldc1` at 0xdac7b24).
  Loads 4 bytes from abs 0xdbde444 into `$f1` (`lwc1` at 0xdac7b2c).
  Loads 4 bytes from abs 0xdbde448 into `$f5` (`lwc1` at 0xdac7b54).
  Calls `__glOdysseyWindowToEyeZ [0xdac7940]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xdac7af0).
  The `bc1t` at 0xdac7b34 is taken when f6 < f0(=0x0) (c.lt.d at 0xdac7b28) and falls through when not (f6 < f0(=0x0) (c.lt.d at 0xdac7b28)).
  Returns with v0 = [0x1010]+65536 at `jr` at 0xdac7b4c.

- `__glChangeWindowSize` (`builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdb12190, 256 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x7718 into `a0` (`lw` at 0xdb121a0).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xe70 (`sw` at 0xdb121a4).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xe6c (`sw` at 0xdb121ac).
  Loads 4 bytes from [a0+30488] +0x38 into `t9` (`lw` at 0xdb121bc).
  Loads 1 byte from a0 (arg0 at entry) +0xc8e into `v0` (`lbu` at 0xdb121d4).
  Loads 4 bytes from a0 (arg0 at entry) +0x771c into `a0` (`lw` at 0xdb121e0).
  Loads 4 bytes from [a0+30492] +0x38 into `t9` (`lw` at 0xdb121e4).
  Loads 1 byte from a0 (arg0 at entry) +0xc90 into `v1` (`lbu` at 0xdb121f4).
  Loads 4 bytes from a0 (arg0 at entry) +0x79e8 into `a3` (`lw` at 0xdb12200).
  Performs 2 1-byte loads from a0 (arg0 at entry) +0xc91, including `lbu` at 0xdb1220c, `lbu` at 0xdb1228c.
  Loads 4 bytes from a0 (arg0 at entry) +0x798c into `t9` (`lw` at 0xdb12218).
  Loads 1 byte from a0 (arg0 at entry) +0xc92 into `v0` (`lbu` at 0xdb1222c).
  Loads 4 bytes from a0 (arg0 at entry) +0x7914 into `t9` (`lw` at 0xdb12238).
  Loads 4 bytes from a0 (arg0 at entry) +0x2de4 into `t9` (`lw` at 0xdb1224c).
  Loads 4 bytes from a0 (arg0 at entry) +0x7a10 into `t9` (`lw` at 0xdb12274).
  Calls `(unknown callee)` via register with a0=[a0+30488], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb121cc).
  Calls `(unknown callee)` via register with a0=[a0+30492], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xdb121ec).
  Calls `(unknown callee)` via register with a0=a0+31060, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xdb12224).
  Calls `(unknown callee)` via register with a0=a0+30940, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xdb12244).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xdb12258).
  Calls `(unknown callee)` via register with a0=a0+31192, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+31208] (`jalr` at 0xdb12280).
  The `beq` at 0xdb121d8 is taken when v0(=[a0+3214]:1) == 0 and falls through when v0(=[a0+3214]:1) != 0.
  The `beq` at 0xdb121f8 is taken when v1(=[a0+3216]:1) == 0 and falls through when v1(=[a0+3216]:1) != 0.
  The `bne` at 0xdb12204 is taken when a3(=[a0+31208]) != 0 and falls through when a3(=[a0+31208]) == 0.
  The `beq` at 0xdb12210 is taken when at(=[a0+3217]:1) == 0 and falls through when at(=[a0+3217]:1) != 0.
  The `beq` at 0xdb12230 is taken when v0(=[a0+3218]:1) == 0 and falls through when v0(=[a0+3218]:1) != 0.
  Returns with v0 = ret(?); f0 = ret(?) at `jr` at 0xdb1226c.

- `__glChangeReadWindowSize` (`builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdb12290, 12 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xe78 (`sw` at 0xdb12290).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xe74 (`sw` at 0xdb12298).
  Returns with v0 = ? at `jr` at 0xdb12294.

- `__glOdysseyWindowToNormalizedEyeZ` (`builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0xbdcd2f0, 144 bytes) Inferred.
  Loads 8 bytes from abs 0xbee8878 into `t9` (`ld` at 0xbdcd304).
  Loads 8 bytes from abs 0x1020 into `s8` (`ld` at 0xbdcd314).
  Loads 8 bytes from [0x1020]:8 +0x18ce8 into `$f6` (`ldc1` at 0xbdcd320).
  Loads 8 bytes from [0x1020]:8 +0x18cf0 into `$f0` (`ldc1` at 0xbdcd328).
  Loads 8 bytes from abs 0xbeefc70 into `$f0` (`ldc1` at 0xbdcd33c).
  Loads 8 bytes from abs 0xbeefc68 into `$f2` (`ldc1` at 0xbdcd344).
  Loads 4 bytes from abs 0xbeefa10 into `$f1` (`lwc1` at 0xbdcd34c).
  Loads 4 bytes from abs 0xbeefa14 into `$f5` (`lwc1` at 0xbdcd374).
  Calls `__glOdysseyWindowToEyeZ [0xbdcd160]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xbdcd310).
  The `bc1t` at 0xbdcd354 is taken when f6 < f0(=0x0) (c.lt.d at 0xbdcd348) and falls through when not (f6 < f0(=0x0) (c.lt.d at 0xbdcd348)).
  Returns with v0 = [0x1020]:8+131072 at `jr` at 0xbdcd36c.

- `__glChangeWindowSize` (`builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0xbe18670, 284 bytes) Inferred.
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xfe0 (`sw` at 0xbe18678).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xfe4 (`sw` at 0xbe18680).
  Loads 8 bytes from a0 (arg0 at entry) +0x9a28 into `a0` (`ld` at 0xbe18698).
  Loads 8 bytes from [a0+39464]:8 +0x58 into `t9` (`ld` at 0xbe186a8).
  Loads 1 byte from a0 (arg0 at entry) +0xdee into `at` (`lbu` at 0xbe186c0).
  Loads 8 bytes from a0 (arg0 at entry) +0x9a30 into `a0` (`ld` at 0xbe186cc).
  Loads 8 bytes from [a0+39472]:8 +0x58 into `t9` (`ld` at 0xbe186d0).
  Loads 1 byte from a0 (arg0 at entry) +0xdf0 into `v0` (`lbu` at 0xbe186e0).
  Loads 8 bytes from a0 (arg0 at entry) +0x9ea0 into `v1` (`ld` at 0xbe186ec).
  Performs 2 1-byte loads from a0 (arg0 at entry) +0xdf1, including `lbu` at 0xbe186f8, `lbu` at 0xbe18788.
  Loads 8 bytes from a0 (arg0 at entry) +0x9e10 into `t9` (`ld` at 0xbe18704).
  Loads 1 byte from a0 (arg0 at entry) +0xdf2 into `a3` (`lbu` at 0xbe1871c).
  Loads 8 bytes from a0 (arg0 at entry) +0x9d38 into `t9` (`ld` at 0xbe18728).
  Loads 8 bytes from a0 (arg0 at entry) +0x46a8 into `t9` (`ld` at 0xbe18740).
  Loads 8 bytes from a0 (arg0 at entry) +0x9ee0 into `t9` (`ld` at 0xbe1876c).
  Calls `(unknown callee)` via register with a0=[a0+39464]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xbe186b8).
  Calls `(unknown callee)` via register with a0=[a0+39472]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xbe186d8).
  Calls `(unknown callee)` via register with a0=a0+40376, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+3569]:1 (`jalr` at 0xbe18714).
  Calls `(unknown callee)` via register with a0=a0+40160, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+3570]:1 (`jalr` at 0xbe18738).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xbe18750).
  Calls `(unknown callee)` via register with a0=a0+40584, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xbe1877c).
  The `beq` at 0xbe186c4 is taken when at(=[a0+3566]:1) == 0 and falls through when at(=[a0+3566]:1) != 0.
  The `beq` at 0xbe186e4 is taken when v0(=[a0+3568]:1) == 0 and falls through when v0(=[a0+3568]:1) != 0.
  The `bne` at 0xbe186f0 is taken when v1(=[a0+40608]:8) != 0 and falls through when v1(=[a0+40608]:8) == 0.
  The `beq` at 0xbe186fc is taken when a3(=[a0+3569]:1) == 0 and falls through when a3(=[a0+3569]:1) != 0.
  The `beq` at 0xbe18720 is taken when a3(=[a0+3570]:1) == 0 and falls through when a3(=[a0+3570]:1) != 0.
  Returns with v0 = ret(?); f0 = ret(?) at `jr` at 0xbe18764.

- `__glChangeReadWindowSize` (`builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0xbe18790, 12 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xfec (`sw` at 0xbe18790).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xfe8 (`sw` at 0xbe18798).
  Returns with v0 = ? at `jr` at 0xbe18794.

- `dma_mapinit` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x1180, 8 bytes) Inferred.
  Returns with v0 = ? at `jr` at 0x1180.

- `r1nkperf_data_register_get` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x95f4, 104 bytes) Inferred.
  The `bne` at 0x95f4 is taken when a0 != 0 and falls through when a0 == 0.
  The `bne` at 0x960c is taken when a0 != at(=0x1) and falls through when a0 == at(=0x1).
  The `bne` at 0x9624 is taken when a0 != at(=0x2) and falls through when a0 == at(=0x2).
  The `bne` at 0x963c is taken when a0 != at(=0x3) and falls through when a0 == at(=0x3).
  Returns with v0 = ? at `jr` at 0x9600, `jr` at 0x9618, `jr` at 0x9630, `jr` at 0x9648.
  Returns with v0 = 0x0 at `jr` at 0x9654.

- `r1nkperf_control_register_get` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x965c, 104 bytes) Inferred.
  The `bne` at 0x965c is taken when a0 != 0 and falls through when a0 == 0.
  The `bne` at 0x9674 is taken when a0 != at(=0x1) and falls through when a0 == at(=0x1).
  The `bne` at 0x968c is taken when a0 != at(=0x2) and falls through when a0 == at(=0x2).
  The `bne` at 0x96a4 is taken when a0 != at(=0x3) and falls through when a0 == at(=0x3).
  Returns with v0 = ? at `jr` at 0x9668, `jr` at 0x9680, `jr` at 0x9698, `jr` at 0x96b0.
  Returns with v0 = 0x0 at `jr` at 0x96bc.

- `r1nkperf_data_register_set` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x96c4, 100 bytes) Inferred.
  The `bne` at 0x96c4 is taken when a0 != 0 and falls through when a0 == 0.
  The `bne` at 0x96dc is taken when a0 != at(=0x1) and falls through when a0 == at(=0x1).
  The `bne` at 0x96f4 is taken when a0 != at(=0x2) and falls through when a0 == at(=0x2).
  The `bne` at 0x970c is taken when a0 != at(=0x3) and falls through when a0 == at(=0x3).
  Returns with v0 = ? at `jr` at 0x96d0, `jr` at 0x96e8, `jr` at 0x9700, `jr` at 0x9718, `jr` at 0x9720.

- `r1nkperf_control_register_set` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x9728, 100 bytes) Inferred.
  The `bne` at 0x9728 is taken when a0 != 0 and falls through when a0 == 0.
  The `bne` at 0x9740 is taken when a0 != at(=0x1) and falls through when a0 == at(=0x1).
  The `bne` at 0x9758 is taken when a0 != at(=0x2) and falls through when a0 == at(=0x2).
  The `bne` at 0x9770 is taken when a0 != at(=0x3) and falls through when a0 == at(=0x3).
  Returns with v0 = ? at `jr` at 0x9734, `jr` at 0x974c, `jr` at 0x9764, `jr` at 0x977c, `jr` at 0x9784.

- `klsave_md_registers` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x18f64, 368 bytes) Inferred.
  Loads 8 bytes from sym(.lit8) +0x40 into `at` (`ld` at 0x18f64).
  Loads 8 bytes from (a3 << 0x21) -0x6fffffffcc000000 into `at` (`ld` at 0x18f80).
  Loads 8 bytes from ((a3 << 0x21)+0x9600000000000000 | 0x2000) +0x48 into `a4` (`ld` at 0x18fb8).
  Loads 4 bytes from ? (base unknown) into `a4` (`lw` at 0x18fc8).
  Loads 4 bytes from ret(find_first_component) +0x30 into `a0` (`lw` at 0x19014).
  Performs 4 8-byte loads from sym(.lit8) +0x48, including `ld` at 0x19040, `ld` at 0x19088, `ld` at 0x190ac.
  Performs 9 8-byte stores to ? (base unknown), including `sd` at 0x19080, `sd` at 0x1908c, `sd` at 0x19098.
  Loads 8 bytes from abs 0x9200000001030100 into `a3` (`ld` at 0x19090).
  Loads 8 bytes from abs 0x9200000001030100 into `a5` (`ld` at 0x190a0).
  Loads 8 bytes from abs 0x9200000001030100 into `a6` (`ld` at 0x190b4).
  Loads 8 bytes from abs 0x9200000001030100 into `a7` (`ld` at 0x190c8).
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=?, a3=? (`jal` at 0x18fdc).
  Calls `find_first_component` via direct with a0=ret(find_lboard), a1=0x2, a2=?, a3=? (`jal` at 0x18ff0).
  Calls `chk_for_pebrick` via direct with a0=a3 at entry (arg3), a1=a1 at entry (arg1), a2=-0x1, a3=a3 at entry (arg3), a6=(a3 << 0x21)+0x9600000000000000, a7=(a3 << 0x21) (`jal` at 0x19070).
  The `beq` at 0x18fac is taken when at(?) == v1(=0xc000) and falls through when at(?) != v1(=0xc000).
  The `beq` at 0x18fd0 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x18fe4 is taken when v0(=ret(find_lboard)) == 0 and falls through when v0(=ret(find_lboard)) != 0.
  The `beq` at 0x19004 is taken when v0(=ret(find_first_component)) == 0 and falls through when v0(=ret(find_first_component)) != 0.
  The `beq` at 0x19034 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x1903c is taken when s0(=a2) == a3(=0x2) and falls through when s0(=a2) != a3(=0x2).
  The `beq` at 0x19044 is taken when s0(=a2) == a6(=0x1) and falls through when s0(=a2) != a6(=0x1).
  The `beq` at 0x1904c is taken when s0(=a2) == a2(=0x3) and falls through when s0(=a2) != a2(=0x3).
  The `beq` at 0x19054 is taken when s0(=a2) == a7(=0x4) and falls through when s0(=a2) != a7(=0x4).
  Returns with v0 = ? at `jr` at 0x19068.

- `klsave_spool_registers` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x1994c, 468 bytes) Inferred.
  Loads 8 bytes from sym(.lit8) +0x30 into `s1` (`ld` at 0x1995c).
  Loads 8 bytes from abs 0x9200000001000020 into `s1` (`ld` at 0x19964).
  Loads 8 bytes from sym(.lit8) +0x40 into `t9` (`ld` at 0x19974).
  Loads 8 bytes from (ret(get_nasid) << 0x21) -0x6fffffffcc000000 into `t8` (`ld` at 0x19980).
  Loads 8 bytes from (table(0x9600000000000000) | 0x2000) +0x48 into `ra` (`ld` at 0x199c4).
  Loads 4 bytes from ? (base unknown) into `ra` (`lw` at 0x199d8).
  Loads 8 bytes from (table(0x9600000000000000) | 0x2000) +0x48 into `a2` (`ld` at 0x19a20).
  Loads 4 bytes from ? (base unknown) into `a2` (`lw` at 0x19a34).
  Loads 4 bytes from ret(find_first_component) +0x30 into `a5` (`lw` at 0x19a88).
  Loads 8 bytes from sym(.lit8) +0x48 into `a5` (`ld` at 0x19ab8).
  Performs 6 8-byte stores to ? (base unknown), including `sd` at 0x19ac8, `sd` at 0x19acc, `sd` at 0x19ad4.
  Performs 2 8-byte loads from abs 0x9200000001030100, including `ld` at 0x19ad0, `ld` at 0x19b14.
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1996c).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x19994).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1999c).
  Calls `get_nasid` via direct with a0=0x0, a1=?, a2=?, a3=? (`jal` at 0x199e4).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x199ec).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x199f4).
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=?, a3=? (`jal` at 0x19a4c).
  Calls `find_first_component` via direct with a0=ret(find_lboard), a1=0x2, a2=?, a3=? (`jal` at 0x19a60).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x19aec).
  Calls `chk_for_pebrick` via direct with a0=ret(get_nasid), a1=?, a2=?, a3=? (`jal` at 0x19af4).
  The `beq` at 0x1998c is taken when t8(?) == t9(=0xc000) and falls through when t8(?) != t9(=0xc000).
  The `beq` at 0x199dc is taken when ra(?) == 0 and falls through when ra(?) != 0.
  The `beq` at 0x19a54 is taken when v0(=ret(find_lboard)) == 0 and falls through when v0(=ret(find_lboard)) != 0.
  The `beq` at 0x19a74 is taken when v0(=ret(find_first_component)) == 0 and falls through when v0(=ret(find_first_component)) != 0.
  The `beq` at 0x19aa8 is taken when (t1(=a2) & 0x1) == 0 and falls through when (t1(=a2) & 0x1) != 0.
  The `beq` at 0x19ab4 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `bltz` at 0x19ac0 is taken when a7(=(([0x9200000001000020]:8 << 0x0) << 0x1e)) < 0 (signed) and falls through when a7(=(([0x9200000001000020]:8 << 0x0) << 0x1e)) >= 0 (signed).
  Returns with v0 = ? at `jr` at 0x19ae4.

- `hub_dma_init` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x225c4, 8 bytes) Inferred.
  Returns with v0 = ? at `jr` at 0x225c4.

- `hub_dmamap_alloc` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x225cc, 128 bytes) Inferred.
  Stores 4 bytes from `s8` to ret(kern_malloc) +0x0 (`sw` at 0x22610).
  Performs 2 4-byte stores to ret(kern_malloc) +0xc, including `sw` at 0x22618, `sw` at 0x2263c.
  Stores 4 bytes from `v1` to ret(kern_malloc) +0x8 (`sw` at 0x22624).
  Stores 1 byte from `v1` to ret(kern_malloc) +0x4 (`sb` at 0x22638).
  Calls `xwidget_info_get` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x225dc).
  Calls `xwidget_info_id_get` via direct with a0=ret(xwidget_info_get), a1=?, a2=?, a3=? (`jal` at 0x225e8).
  Calls `xwidget_info_master_get` via direct with a0=ret(xwidget_info_get), a1=?, a2=?, a3=? (`jal` at 0x225f4).
  Calls `kern_malloc` via direct with a0=0x10, a1=?, a2=?, a3=? (`jal` at 0x22604).
  The `beq` at 0x22634 is taken when (at(=a3) & 0x1) == 0 and falls through when (at(=a3) & 0x1) != 0.
  Returns with v0 = ret(kern_malloc); f0 = ret(kern_malloc) at `jr` at 0x22644.

- `hub_dmamap_free` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x2264c, 40 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0xc into `v0` (`lw` at 0x22650).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0xc (`sw` at 0x22664).
  Calls `kern_free` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x22660).
  Returns with v0 = ret(kern_free); f0 = ret(kern_free) at `jr` at 0x2266c.

- `hub_dmamap_addr` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x22674, 92 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0xc into `a4` (`lw` at 0x22674).
  Stores 4 bytes from `a6` to a0 (arg0 at entry) +0xc (`sw` at 0x226ac).
  Loads 8 bytes from sym(.srdata) +0x390 into `a1` (`ld` at 0x226b0).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `a2` (`lw` at 0x226b8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+45112, a2=[a0], a3=a3 at entry (arg3), a5=a0 at entry (arg0), a6=([a0+12] | 0x2) (`jal` at 0x226bc).
  The `beq` at 0x2268c is taken when (a4(=[a0+12]) & 0x2) == 0 and falls through when (a4(=[a0+12]) & 0x2) != 0.
  The `beq` at 0x22698 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  Returns with v0 = a1 at `jr` at 0x226a0.

- `hub_dmamap_list` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x226d0, 92 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0xc into `a4` (`lw` at 0x226d0).
  Stores 4 bytes from `a6` to a0 (arg0 at entry) +0xc (`sw` at 0x22708).
  Loads 8 bytes from sym(.srdata) +0x390 into `a1` (`ld` at 0x2270c).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `a2` (`lw` at 0x22714).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+45112, a2=[a0], a3=a3 at entry (arg3), a5=a0 at entry (arg0), a6=([a0+12] | 0x2) (`jal` at 0x22718).
  The `beq` at 0x226e8 is taken when (a4(=[a0+12]) & 0x2) == 0 and falls through when (a4(=[a0+12]) & 0x2) != 0.
  The `beq` at 0x226f4 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  Returns with v0 = a1 at `jr` at 0x226fc.

- `hub_dmamap_done` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x2272c, 80 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0xc into `a2` (`lw` at 0x2272c).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xc (`sw` at 0x2274c).
  Loads 8 bytes from sym(.srdata) +0x390 into `a1` (`ld` at 0x22760).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `a2` (`lw` at 0x22768).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+45112, a2=[a0], a3=?, a4=a0 at entry (arg0), a5=-0x3 (`jal` at 0x2276c).
  The `beq` at 0x22744 is taken when (a2(=[a0+12]) & 0x2) == 0 and falls through when (a2(=[a0+12]) & 0x2) != 0.
  The `bne` at 0x22758 is taken when a3(?) != 0 and falls through when a3(?) == 0.
  Returns with v0 = ? at `jr` at 0x22750.

- `hub_dmatrans_addr` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x2277c, 8 bytes) Inferred.
  Returns with v0 = a2 at `jr` at 0x2277c.

- `hub_dmatrans_list` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x22784, 8 bytes) Inferred.
  Returns with v0 = a2 at `jr` at 0x22784.

- `hub_dmamap_drain` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x2278c, 8 bytes) Inferred.
  Returns with v0 = ? at `jr` at 0x2278c.

- `hub_dmaaddr_drain` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x22794, 8 bytes) Inferred.
  Returns with v0 = ? at `jr` at 0x22794.

- `hub_dmalist_drain` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x2279c, 8 bytes) Inferred.
  Returns with v0 = ? at `jr` at 0x2279c.

- `hub_check_window_equiv` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x22c6c, 104 bytes) Inferred.
  Calls `hub_check_is_widget0` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x22c7c).
  Calls `hub_check_is_widget0` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x22c8c).
  The `beq` at 0x22c84 is taken when v0(=ret(hub_check_is_widget0)) == 0 and falls through when v0(=ret(hub_check_is_widget0)) != 0.
  The `beq` at 0x22c94 is taken when v0(=ret(hub_check_is_widget0)) == 0 and falls through when v0(=ret(hub_check_is_widget0)) != 0.
  The `bne` at 0x22cb8 is taken when at(?) != v0(?) and falls through when at(?) == v0(?).
  Returns with v0 = one of 0x0, 0x1; f0 = ret(hub_check_is_widget0) at `jr` at 0x22ccc.

- `r1nkperf_data_register_get` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x23394, 104 bytes) Inferred.
  The `bne` at 0x23394 is taken when a0 != 0 and falls through when a0 == 0.
  The `bne` at 0x233ac is taken when a0 != at(=0x1) and falls through when a0 == at(=0x1).
  The `bne` at 0x233c4 is taken when a0 != at(=0x2) and falls through when a0 == at(=0x2).
  The `bne` at 0x233dc is taken when a0 != at(=0x3) and falls through when a0 == at(=0x3).
  Returns with v0 = ? at `jr` at 0x233a0, `jr` at 0x233b8, `jr` at 0x233d0, `jr` at 0x233e8.
  Returns with v0 = 0x0 at `jr` at 0x233f4.

- `r1nkperf_control_register_get` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x233fc, 104 bytes) Inferred.
  The `bne` at 0x233fc is taken when a0 != 0 and falls through when a0 == 0.
  The `bne` at 0x23414 is taken when a0 != at(=0x1) and falls through when a0 == at(=0x1).
  The `bne` at 0x2342c is taken when a0 != at(=0x2) and falls through when a0 == at(=0x2).
  The `bne` at 0x23444 is taken when a0 != at(=0x3) and falls through when a0 == at(=0x3).
  Returns with v0 = ? at `jr` at 0x23408, `jr` at 0x23420, `jr` at 0x23438, `jr` at 0x23450.
  Returns with v0 = 0x0 at `jr` at 0x2345c.

- `r1nkperf_data_register_set` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x23464, 100 bytes) Inferred.
  The `bne` at 0x23464 is taken when a0 != 0 and falls through when a0 == 0.
  The `bne` at 0x2347c is taken when a0 != at(=0x1) and falls through when a0 == at(=0x1).
  The `bne` at 0x23494 is taken when a0 != at(=0x2) and falls through when a0 == at(=0x2).
  The `bne` at 0x234ac is taken when a0 != at(=0x3) and falls through when a0 == at(=0x3).
  Returns with v0 = ? at `jr` at 0x23470, `jr` at 0x23488, `jr` at 0x234a0, `jr` at 0x234b8, `jr` at 0x234c0.

- `r1nkperf_control_register_set` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x234c8, 100 bytes) Inferred.
  The `bne` at 0x234c8 is taken when a0 != 0 and falls through when a0 == 0.
  The `bne` at 0x234e0 is taken when a0 != at(=0x1) and falls through when a0 == at(=0x1).
  The `bne` at 0x234f8 is taken when a0 != at(=0x2) and falls through when a0 == at(=0x2).
  The `bne` at 0x23510 is taken when a0 != at(=0x3) and falls through when a0 == at(=0x3).
  Returns with v0 = ? at `jr` at 0x234d4, `jr` at 0x234ec, `jr` at 0x23504, `jr` at 0x2351c, `jr` at 0x23524.

- `hubdev_register` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x2d2fc, 88 bytes) Inferred.
  Performs 2 8-byte loads from sym(.srdata) +0x530, including `ld` at 0x2d324, `ld` at 0x2d328.
  Loads 8 bytes from sym(hubdev_callout_list) +0x0 into `v0` (`ld` at 0x2d330).
  Performs 2 8-byte stores to ? (base unknown), including `sd` at 0x2d334, `sd` at 0x2d340.
  Stores 8 bytes from `at` to sym(hubdev_callout_list) +0x0 (`sd` at 0x2d338).
  Calls `kmem_zalloc` via direct with a0=0x10, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2d310).
  Calls `mutex_lock` via direct with a0=sym(hubdev_callout_mutex), a1=0x19, a2=?, a3=? (`jal` at 0x2d320).
  Calls `mutex_unlock` via direct with a0=sym(hubdev_callout_mutex), a1=?, a2=?, a3=? (`jal` at 0x2d33c).
  Returns with v0 = ret(mutex_unlock); f0 = ret(mutex_unlock) at `jr` at 0x2d34c.

- `hubdev_unregister` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x2d354, 128 bytes) Inferred.
  Performs 3 8-byte loads from sym(.srdata) +0x530, including `ld` at 0x2d36c, `ld` at 0x2d39c, `ld` at 0x2d3c8.
  Loads 8 bytes from sym(hubdev_callout_list) +0x0 into `a0` (`ld` at 0x2d370).
  Performs 3 8-byte loads from ? (base unknown), including `ld` at 0x2d37c, `ld` at 0x2d38c, `ld` at 0x2d3b4.
  Stores 8 bytes from `v1` to ? (base unknown) (`sd` at 0x2d3c0).
  Calls `mutex_lock` via direct with a0=sym(hubdev_callout_mutex), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2d368).
  Calls `mutex_unlock` via direct with a0=sym(hubdev_callout_mutex), a1=?, a2=?, a3=? (`jal` at 0x2d398).
  Calls `kmem_free` via direct with a0=?, a1=0x10, a2=?, a3=? (`jal` at 0x2d3bc).
  Calls `mutex_unlock` via direct with a0=sym(hubdev_callout_mutex), a1=?, a2=?, a3=? (`jal` at 0x2d3c4).
  The `beq` at 0x2d374 is taken when a0(=[sym(hubdev_callout_list)]:8) == 0 and falls through when a0(=[sym(hubdev_callout_list)]:8) != 0.
  The `beq` at 0x2d380 is taken when at(?) == s0(=a0) and falls through when at(?) != s0(=a0).
  The `bne` at 0x2d390 is taken when a0(?) != 0 and falls through when a0(?) == 0.
  Returns with v0 = one of 0x0, 0x2; f0 = ret(mutex_unlock) at `jr` at 0x2d3ac.

- `brick_register` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x2f440, 240 bytes) Inferred.
  Loads 4 bytes from a2 (arg2 at entry) +0x0 into `at` (`lw` at 0x2f448).
  Stores 2 bytes from `s1` to ? (base unknown) (`sh` at 0x2f49c).
  Performs 3 4-byte loads from a2 (arg2 at entry) +0x0, including `lw` at 0x2f4b8, `lw` at 0x2f4f0, `lw` at 0x2f500.
  Performs 2 8-byte loads from sym(.srdata) +0x600, including `ld` at 0x2f4c0, `ld` at 0x2f514.
  Stores 2 bytes from `s2` to (a1 + ([a2] + [a2])) +0x0 (`sh` at 0x2f4fc).
  Stores 4 bytes from `a1` to a2 (arg2 at entry) +0x0 (`sw` at 0x2f510).
  Calls `moduleid_to_decompressed_rack [0x2f334]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2f4a0).
  Calls `brick_lookup [0x2f3ac]` via direct with a0=ret(moduleid_to_decompressed_rack), a1=?, a2=a1 at entry (arg1), a3=[a2] (`jal` at 0x2f4b4).
  Calls `printf` via direct with a0=sym(.rodata)+49920, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x2f4c8).
  Calls `printf` via direct with a0=sym(.rodata)+49920, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2f518).
  The `beq` at 0x2f46c is taken when at(=[a2]) >= a3 (signed) and falls through when at(=[a2]) < a3 (signed).
  The `bne` at 0x2f474 is taken when a2 != 0 and falls through when a2 == 0.
  The `blez` at 0x2f47c is taken when a3 <= 0 (signed) and falls through when a3 > 0 (signed).
  The `bne` at 0x2f498 is taken when v0(?) < a3 (signed) and falls through when v0(?) >= a3 (signed).
  The `beq` at 0x2f4bc is taken when v0(=ret(brick_lookup)) == s1(=-0x1) and falls through when v0(=ret(brick_lookup)) != s1(=-0x1).
  Returns with v0 = one of 0x0, 0x1 at `jr` at 0x2f4e8.

- `rbrick_register` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x2f530, 40 bytes) Inferred.
  Loads 8 bytes from sym(.srdata) +0x608 into `a1` (`ld` at 0x2f534).
  Calls `brick_register [0x2f440]` via direct with a0=a0 at entry (arg0), a1=sym(iobrick_moduleids), a2=sym(num_rbricks), a3=0x80 (`jal` at 0x2f544).
  Returns with v0 = ret(brick_register); f0 = ret(brick_register) at `jr` at 0x2f550.

- `iobrick_register` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x2f57c, 36 bytes) Inferred.
  Loads 8 bytes from sym(.srdata) +0x608 into `a1` (`ld` at 0x2f580).
  Calls `brick_register [0x2f440]` via direct with a0=a0 at entry (arg0), a1=sym(iobrick_moduleids), a2=sym(num_iobricks), a3=0x80 (`jal` at 0x2f58c).
  Returns with v0 = ret(brick_register); f0 = ret(brick_register) at `jr` at 0x2f598.

- `hub_dma_enabled` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x38f3c, 196 bytes) Inferred.
  Performs 2 8-byte loads from sym(.srdata) +0x798, including `ld` at 0x38f68, `ld` at 0x38fc4.
  Loads 8 bytes from sym(.lit8) +0x20 into `a2` (`ld` at 0x38f8c).
  Loads 2 bytes from ? (base unknown) into `a4` (`lh` at 0x38f98).
  Loads 8 bytes from table(0x9200000001c00118) +0x0 into `t1` (`ld` at 0x38fac).
  Calls `xwidget_info_get` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x38f48).
  Calls `xwidget_info_id_get` via direct with a0=ret(xwidget_info_get), a1=?, a2=?, a3=? (`jal` at 0x38f54).
  Calls `xwidget_info_master_get` via direct with a0=ret(xwidget_info_get), a1=?, a2=?, a3=? (`jal` at 0x38f60).
  Calls `hwgraph_info_get_LBL` via direct with a0=ret(xwidget_info_master_get), a1=sym(.rodata)+56232, a2=sp-48, a3=? (`jal` at 0x38f7c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+56232, a2=?, a3=a0 at entry (arg0), a7=-0x1 (`jal` at 0x38ff0).
  The `beq` at 0x38f90 is taken when t1(?) == 0 and falls through when t1(?) != 0.
  The `beq` at 0x38fa0 is taken when a4(?) == a7(=-0x1) and falls through when a4(?) != a7(=-0x1).
  The `beq` at 0x38fc0 is taken when (t1(=entry(0x9200000001c00118)) & t2(?)) == 0 and falls through when (t1(=entry(0x9200000001c00118)) & t2(?)) != 0.
  Returns with v0 = one of 0x0, 0x1 at `jr` at 0x38fcc.

- `dma_geth` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x439dc, 8 bytes) Inferred.
  Returns with v0 = 0x0 at `jr` at 0x439dc.

- `dmamap_init` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x439ec, 8 bytes) Inferred.
  Returns with v0 = 0x0 at `jr` at 0x439ec.

- `__glOdysseyWindowToNormalizedEyeZ` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd9e4890, 200 bytes) Inferred.
  Loads 4 bytes from abs 0xdaf1044 into `t9` (`lw` at 0xd9e48a4).
  Loads 4 bytes from abs 0x1010 into `s8` (`lw` at 0xd9e48b4).
  Loads 8 bytes from [0x1010] +0x165c8 into `$f6` (`ldc1` at 0xd9e48c0).
  Loads 8 bytes from [0x1010] +0x165d0 into `$f7` (`ldc1` at 0xd9e48c8).
  Loads 8 bytes from abs 0xdaf4d78 into `$f6` (`ldc1` at 0xd9e48f0).
  Performs 2 4-byte loads from abs 0xdaf4b00, including `lwc1` at 0xd9e48f8, `lwc1` at 0xd9e4940.
  Loads 4 bytes from abs 0xdaf4370 into `t9` (`lw` at 0xd9e492c).
  Calls `__glOdysseyWindowToEyeZ [0xd9e4710]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xd9e48b0).
  Calls `isnan` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd9e4930).
  The `bc1t` at 0xd9e48f4 is taken when f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0xd9e48e8) and falls through when not (f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0xd9e48e8)).
  The `bc1f` at 0xd9e4900 is taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  Returns with v0 = [0x1010]+65536; f0 = 0x3f800000 at `jr` at 0xd9e490c, `jr` at 0xd9e4924.
  Returns with v0 = ret(isnan) at `jr` at 0xd9e4950.

- `__glChangeReadWindowSize` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda35140, 12 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xe80 (`sw` at 0xda35140).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xe7c (`sw` at 0xda35148).
  Returns with v0 = ? at `jr` at 0xda35144.

- `__glChangeReadWindowSize` (`usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x32ca400, 12 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xfe4 (`sw` at 0x32ca400).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xfe0 (`sw` at 0x32ca408).
  Returns with v0 = ? at `jr` at 0x32ca404.

- `__glOdysseyWindowToNormalizedEyeZ` (`usr/gfx/arch/IP35ODSY/libGLcore.so`, 0xd9f8060, 232 bytes) Inferred.
  Loads 4 bytes from abs 0xdafee94 into `t9` (`lw` at 0xd9f806c).
  Loads 4 bytes from abs 0x1010 into `t6` (`lw` at 0xd9f8070).
  Loads 8 bytes from table(0x165c8) +0x0 into `$f2` (`ldc1` at 0xd9f8098).
  Loads 8 bytes from table(0x165d0) +0x0 into `$f8` (`ldc1` at 0xd9f809c).
  Loads 4 bytes from abs 0xdb021e8 into `t9` (`lw` at 0xd9f810c).
  Calls `__glOdysseyWindowToEyeZ [0xd9f7e0c]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd9f8080).
  Calls `isnan` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd9f8114).
  The `bc1fl` at 0xd9f80d0 is taken when not (f12 < f18 (c.lt.d at 0xd9f80c8)) and falls through when f12 < f18 (c.lt.d at 0xd9f80c8).
  Its delay slot runs only when the branch at 0xd9f80d0 is taken and is annulled on fall-through.
  The `bc1f` at 0xd9f80f8 is taken when not (f4 < f12 (c.lt.d at 0xd9f80f0)) and falls through when f4 < f12 (c.lt.d at 0xd9f80f0).
  The `beq` at 0xd9f8120 is taken when v0(=ret(isnan)) == 0 and falls through when v0(=ret(isnan)) != 0.
  Returns with v0 = ? at `jr` at 0xd9f8140.

- `__glChangeWindowSize` (`usr/gfx/arch/IP35ODSY/libGLcore.so`, 0xda4b65c, 280 bytes) Inferred.
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xe74 (`sw` at 0xda4b684).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xe78 (`sw` at 0xda4b688).
  Loads 4 bytes from a0 (arg0 at entry) +0x77f8 into `a0` (`lw` at 0xda4b68c).
  Loads 4 bytes from [a0+30712] +0x38 into `t9` (`lw` at 0xda4b698).
  Loads 1 byte from a0 (arg0 at entry) +0xc96 into `t6` (`lbu` at 0xda4b6a4).
  Performs 2 1-byte loads from a0 (arg0 at entry) +0xc98, including `lbu` at 0xda4b6b0, `lbu` at 0xda4b6d0.
  Loads 4 bytes from a0 (arg0 at entry) +0x77fc into `a0` (`lw` at 0xda4b6b4).
  Loads 4 bytes from [a0+30716] +0x38 into `t9` (`lw` at 0xda4b6c0).
  Performs 3 1-byte loads from a0 (arg0 at entry) +0xc99, including `lbu` at 0xda4b6d8, `lbu` at 0xda4b6e4, `lbu` at 0xda4b700.
  Loads 4 bytes from a0 (arg0 at entry) +0x7ac8 into `t8` (`lw` at 0xda4b6dc).
  Loads 4 bytes from a0 (arg0 at entry) +0x7af0 into `t9` (`lw` at 0xda4b6e8).
  Performs 2 1-byte loads from a0 (arg0 at entry) +0xc9a, including `lbu` at 0xda4b708, `lbu` at 0xda4b724.
  Loads 4 bytes from a0 (arg0 at entry) +0x7a6c into `t9` (`lw` at 0xda4b70c).
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x2ec4, including `lw` at 0xda4b72c, `lw` at 0xda4b748.
  Loads 4 bytes from a0 (arg0 at entry) +0x79f4 into `t9` (`lw` at 0xda4b730).
  Calls `(unknown callee)` via register with a0=[a0+30712], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda4b69c).
  Calls `(unknown callee)` via register with a0=[a0+30716], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xda4b6c4).
  Calls `(unknown callee)` via register with a0=a0+31416, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xda4b6f4).
  Calls `(unknown callee)` via register with a0=a0+31284, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xda4b718).
  Calls `(unknown callee)` via register with a0=a0+31164, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xda4b73c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xda4b750).
  The `beql` at 0xda4b6ac is taken when t6(=[a0+3222]:1) == 0 and falls through when t6(=[a0+3222]:1) != 0.
  Its delay slot runs only when the branch at 0xda4b6ac is taken and is annulled on fall-through.
  The `beql` at 0xda4b6d4 is taken when t7(=[a0+3224]:1) == 0 and falls through when t7(=[a0+3224]:1) != 0.
  Its delay slot runs only when the branch at 0xda4b6d4 is taken and is annulled on fall-through.
  The `beql` at 0xda4b6e0 is taken when t8(=[a0+31432]) == 0 and falls through when t8(=[a0+31432]) != 0.
  Its delay slot runs only when the branch at 0xda4b6e0 is taken and is annulled on fall-through.
  The `beql` at 0xda4b704 is taken when t0(=[a0+3225]:1) == 0 and falls through when t0(=[a0+3225]:1) != 0.
  Its delay slot runs only when the branch at 0xda4b704 is taken and is annulled on fall-through.
  The `beql` at 0xda4b728 is taken when t1(=[a0+3226]:1) == 0 and falls through when t1(=[a0+3226]:1) != 0.
  Its delay slot runs only when the branch at 0xda4b728 is taken and is annulled on fall-through.
  Returns with v0 = ret(?); f0 = ret(?) at `jr` at 0xda4b76c.

- `__glChangeReadWindowSize` (`usr/gfx/arch/IP35ODSY/libGLcore.so`, 0xda4b774, 12 bytes) Inferred.
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xe7c (`sw` at 0xda4b774).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xe80 (`sw` at 0xda4b77c).
  Returns with v0 = ? at `jr` at 0xda4b778.

- `__glOdysseyWindowToNormalizedEyeZ` (`usr/gfx/arch/IP35ODSY32/libGLcore.so`, 0xd9e4890, 200 bytes) Inferred.
  Loads 4 bytes from abs 0xdaf1044 into `t9` (`lw` at 0xd9e48a4).
  Loads 4 bytes from abs 0x1010 into `s8` (`lw` at 0xd9e48b4).
  Loads 8 bytes from [0x1010] +0x165c8 into `$f6` (`ldc1` at 0xd9e48c0).
  Loads 8 bytes from [0x1010] +0x165d0 into `$f7` (`ldc1` at 0xd9e48c8).
  Loads 8 bytes from abs 0xdaf4d78 into `$f6` (`ldc1` at 0xd9e48f0).
  Performs 2 4-byte loads from abs 0xdaf4b00, including `lwc1` at 0xd9e48f8, `lwc1` at 0xd9e4940.
  Loads 4 bytes from abs 0xdaf4370 into `t9` (`lw` at 0xd9e492c).
  Calls `__glOdysseyWindowToEyeZ [0xd9e4710]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xd9e48b0).
  Calls `isnan` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd9e4930).
  The `bc1t` at 0xd9e48f4 is taken when f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0xd9e48e8) and falls through when not (f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0xd9e48e8)).
  The `bc1f` at 0xd9e4900 is taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  Returns with v0 = [0x1010]+65536; f0 = 0x3f800000 at `jr` at 0xd9e490c, `jr` at 0xd9e4924.
  Returns with v0 = ret(isnan) at `jr` at 0xd9e4950.

- `__glChangeWindowSize` (`usr/gfx/arch/IP35ODSY32/libGLcore.so`, 0xda35030, 260 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xe78 (`sw` at 0xda35038).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xe74 (`sw` at 0xda3503c).
  Loads 4 bytes from a0 (arg0 at entry) +0x77f8 into `at` (`lw` at 0xda35040).
  Loads 4 bytes from [a0+30712] +0x38 into `t9` (`lw` at 0xda35054).
  Loads 1 byte from a0 (arg0 at entry) +0xc96 into `v1` (`lbu` at 0xda35078).
  Loads 4 bytes from a0 (arg0 at entry) +0x77fc into `a0` (`lw` at 0xda35084).
  Loads 4 bytes from [a0+30716] +0x38 into `t9` (`lw` at 0xda35088).
  Loads 1 byte from a0 (arg0 at entry) +0xc98 into `a0` (`lbu` at 0xda35098).
  Loads 4 bytes from a0 (arg0 at entry) +0x7ac8 into `a1` (`lw` at 0xda350a4).
  Performs 2 1-byte loads from a0 (arg0 at entry) +0xc99, including `lbu` at 0xda350b0, `lbu` at 0xda35130.
  Loads 4 bytes from a0 (arg0 at entry) +0x7a6c into `t9` (`lw` at 0xda350bc).
  Loads 1 byte from a0 (arg0 at entry) +0xc9a into `a3` (`lbu` at 0xda350d0).
  Loads 4 bytes from a0 (arg0 at entry) +0x79f4 into `t9` (`lw` at 0xda350dc).
  Loads 4 bytes from a0 (arg0 at entry) +0x2ec4 into `t9` (`lw` at 0xda350f0).
  Loads 4 bytes from a0 (arg0 at entry) +0x7af0 into `t9` (`lw` at 0xda35118).
  Calls `(unknown callee)` via register with a0=[a0+30712], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda35070).
  Calls `(unknown callee)` via register with a0=[a0+30716], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xda35090).
  Calls `(unknown callee)` via register with a0=a0+31284, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xda350c8).
  Calls `(unknown callee)` via register with a0=a0+31164, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+3226]:1 (`jalr` at 0xda350e8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xda350fc).
  Calls `(unknown callee)` via register with a0=a0+31416, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xda35124).
  The `beq` at 0xda3507c is taken when v1(=[a0+3222]:1) == 0 and falls through when v1(=[a0+3222]:1) != 0.
  The `beq` at 0xda3509c is taken when a0(=[a0+3224]:1) == 0 and falls through when a0(=[a0+3224]:1) != 0.
  The `bne` at 0xda350a8 is taken when a1(=[a0+31432]) != 0 and falls through when a1(=[a0+31432]) == 0.
  The `beq` at 0xda350b4 is taken when a2(=[a0+3225]:1) == 0 and falls through when a2(=[a0+3225]:1) != 0.
  The `beq` at 0xda350d4 is taken when a3(=[a0+3226]:1) == 0 and falls through when a3(=[a0+3226]:1) != 0.
  Returns with v0 = ret(?); f0 = ret(?) at `jr` at 0xda35110.

- `__glChangeReadWindowSize` (`usr/gfx/arch/IP35ODSY32/libGLcore.so`, 0xda35140, 12 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xe80 (`sw` at 0xda35140).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xe7c (`sw` at 0xda35148).
  Returns with v0 = ? at `jr` at 0xda35144.

- `__glOdysseyWindowToNormalizedEyeZ` (`usr/gfx/arch/IP35ODSY64/libGLcore.so`, 0x2229060, 200 bytes) Inferred.
  Loads 8 bytes from abs 0x2340418 into `t9` (`ld` at 0x2229074).
  Loads 8 bytes from abs 0x1020 into `s8` (`ld` at 0x2229084).
  Loads 8 bytes from [0x1020]:8 +0x18a38 into `$f6` (`ldc1` at 0x2229090).
  Loads 8 bytes from [0x1020]:8 +0x18a40 into `$f7` (`ldc1` at 0x2229098).
  Loads 8 bytes from abs 0x2347a18 into `$f6` (`ldc1` at 0x22290c0).
  Performs 2 4-byte loads from abs 0x23477a0, including `lwc1` at 0x22290c8, `lwc1` at 0x2229110.
  Loads 8 bytes from abs 0x2346880 into `t9` (`ld` at 0x22290fc).
  Calls `__glOdysseyWindowToEyeZ [0x2228ee0]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0x2229080).
  Calls `isnan` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x2229100).
  The `bc1t` at 0x22290c4 is taken when f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0x22290b8) and falls through when not (f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0x22290b8)).
  The `bc1f` at 0x22290d0 is taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  Returns with v0 = [0x1020]:8+131072; f0 = 0x3f800000 at `jr` at 0x22290dc, `jr` at 0x22290f4.
  Returns with v0 = ret(isnan) at `jr` at 0x2229120.

- `__glChangeWindowSize` (`usr/gfx/arch/IP35ODSY64/libGLcore.so`, 0x227a2e0, 288 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xfdc (`sw` at 0x227a2e8).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xfd8 (`sw` at 0x227a2f4).
  Loads 8 bytes from a0 (arg0 at entry) +0x9950 into `at` (`ld` at 0x227a300).
  Loads 8 bytes from [a0+39248]:8 +0x58 into `t9` (`ld` at 0x227a310).
  Loads 1 byte from a0 (arg0 at entry) +0xde6 into `t8` (`lbu` at 0x227a334).
  Loads 8 bytes from a0 (arg0 at entry) +0x9958 into `a0` (`ld` at 0x227a340).
  Loads 8 bytes from [a0+39256]:8 +0x58 into `t9` (`ld` at 0x227a344).
  Loads 1 byte from a0 (arg0 at entry) +0xde8 into `t9` (`lbu` at 0x227a354).
  Loads 8 bytes from a0 (arg0 at entry) +0x9dc8 into `ra` (`ld` at 0x227a360).
  Performs 2 1-byte loads from a0 (arg0 at entry) +0xde9, including `lbu` at 0x227a36c, `lbu` at 0x227a3fc.
  Loads 8 bytes from a0 (arg0 at entry) +0x9d38 into `t9` (`ld` at 0x227a378).
  Loads 1 byte from a0 (arg0 at entry) +0xdea into `a1` (`lbu` at 0x227a390).
  Loads 8 bytes from a0 (arg0 at entry) +0x9c60 into `t9` (`ld` at 0x227a39c).
  Loads 8 bytes from a0 (arg0 at entry) +0x4850 into `t9` (`ld` at 0x227a3b4).
  Loads 8 bytes from a0 (arg0 at entry) +0x9e08 into `t9` (`ld` at 0x227a3e0).
  Calls `(unknown callee)` via register with a0=[a0+39248]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x227a32c).
  Calls `(unknown callee)` via register with a0=[a0+39256]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0x227a34c).
  Calls `(unknown callee)` via register with a0=a0+40160, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0x227a388).
  Calls `(unknown callee)` via register with a0=a0+39944, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0x227a3ac).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x227a3c4).
  Calls `(unknown callee)` via register with a0=a0+40368, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0x227a3f0).
  The `beq` at 0x227a338 is taken when t8(=[a0+3558]:1) == 0 and falls through when t8(=[a0+3558]:1) != 0.
  The `beq` at 0x227a358 is taken when t9(=[a0+3560]:1) == 0 and falls through when t9(=[a0+3560]:1) != 0.
  The `bne` at 0x227a364 is taken when ra(=[a0+40392]:8) != 0 and falls through when ra(=[a0+40392]:8) == 0.
  The `beq` at 0x227a370 is taken when at(=[a0+3561]:1) == 0 and falls through when at(=[a0+3561]:1) != 0.
  The `beq` at 0x227a394 is taken when a1(=[a0+3562]:1) == 0 and falls through when a1(=[a0+3562]:1) != 0.
  Returns with v0 = ret(?); f0 = ret(?) at `jr` at 0x227a3d8.

- `__glChangeReadWindowSize` (`usr/gfx/arch/IP35ODSY64/libGLcore.so`, 0x227a400, 12 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0xfe4 (`sw` at 0x227a400).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0xfe0 (`sw` at 0x227a408).
  Returns with v0 = ? at `jr` at 0x227a404.

- `__glOdysseySoftClipBeginTriangles` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xd9f9fc8, 52 bytes) Inferred.
  Loads 4 bytes from abs 0xdafe420 into `t7` (`lw` at 0xd9f9fd4).
  Loads 4 bytes from abs 0xdafef0c into `t8` (`lw` at 0xd9f9fdc).
  Stores 4 bytes from `t6` to a0 (arg0 at entry) +0x31c8 (`sw` at 0xd9f9fec).
  Stores 4 bytes from `t7` to a0 (arg0 at entry) +0x2ee4 (`sw` at 0xd9f9ff0).
  Stores 4 bytes from `t8` to a0 (arg0 at entry) +0x2f2c (`sw` at 0xd9f9ff8).
  Returns with v0 = ? at `jr` at 0xd9f9ff4.

- `__glOdysseySoftClipBeginTriangles` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd9e63c0, 52 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x31c8 (`sw` at 0xd9e63d4).
  Loads 4 bytes from abs 0xdaf10bc into `v1` (`lw` at 0xd9e63dc).
  Loads 4 bytes from abs 0xdaf05cc into `v0` (`lw` at 0xd9e63e0).
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x2f2c (`sw` at 0xd9e63e4).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x2ee4 (`sw` at 0xd9e63f0).
  Returns with v0 = 0xd9e6380 at `jr` at 0xd9e63ec.

- `__glOdysseySoftClipBeginTriangles` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x222ab80, 52 bytes) Inferred.
  Stores 8 bytes from `a2` to a0 (arg0 at entry) +0x4e30 (`sd` at 0x222ab94).
  Loads 8 bytes from abs 0x2340508 into `v1` (`ld` at 0x222ab9c).
  Loads 8 bytes from abs 0x233ef20 into `v0` (`ld` at 0x222aba0).
  Stores 8 bytes from `v1` to a0 (arg0 at entry) +0x4920 (`sd` at 0x222aba4).
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x4890 (`sd` at 0x222abb0).
  Returns with v0 = 0x222ab40 at `jr` at 0x222abac.

- `__glOdysseySoftClipBeginTriangles` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdacdb48, 52 bytes) Inferred.
  Loads 4 bytes from abs 0xdbd6e80 into `t7` (`lw` at 0xdacdb54).
  Loads 4 bytes from abs 0xdbd7934 into `t8` (`lw` at 0xdacdb5c).
  Stores 4 bytes from `t6` to a0 (arg0 at entry) +0x30e8 (`sw` at 0xdacdb6c).
  Stores 4 bytes from `t7` to a0 (arg0 at entry) +0x2e04 (`sw` at 0xdacdb70).
  Stores 4 bytes from `t8` to a0 (arg0 at entry) +0x2e4c (`sw` at 0xdacdb78).
  Returns with v0 = ? at `jr` at 0xdacdb74.

- `__glOdysseySoftClipBeginTriangles` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdac95e0, 52 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x30e8 (`sw` at 0xdac95f4).
  Loads 4 bytes from abs 0xdbdaaf8 into `v1` (`lw` at 0xdac95fc).
  Loads 4 bytes from abs 0xdbda044 into `v0` (`lw` at 0xdac9600).
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x2e4c (`sw` at 0xdac9604).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x2e04 (`sw` at 0xdac9610).
  Returns with v0 = 0xdac95a0 at `jr` at 0xdac960c.

- `__glOdysseySoftClipBeginTriangles` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0xb3aede0, 52 bytes) Inferred.
  Stores 8 bytes from `a2` to a0 (arg0 at entry) +0x4c88 (`sd` at 0xb3aedf4).
  Loads 8 bytes from abs 0xb4c8968 into `v1` (`ld` at 0xb3aedfc).
  Loads 8 bytes from abs 0xb4c73f8 into `v0` (`ld` at 0xb3aee00).
  Stores 8 bytes from `v1` to a0 (arg0 at entry) +0x4778 (`sd` at 0xb3aee04).
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x46e8 (`sd` at 0xb3aee10).
  Returns with v0 = 0xb3aeda0 at `jr` at 0xb3aee0c.

- `__glOdysseySoftClipBeginTriangles` (`builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdacdb48, 52 bytes) Inferred.
  Loads 4 bytes from abs 0xdbd6e80 into `t7` (`lw` at 0xdacdb54).
  Loads 4 bytes from abs 0xdbd7934 into `t8` (`lw` at 0xdacdb5c).
  Stores 4 bytes from `t6` to a0 (arg0 at entry) +0x30e8 (`sw` at 0xdacdb6c).
  Stores 4 bytes from `t7` to a0 (arg0 at entry) +0x2e04 (`sw` at 0xdacdb70).
  Stores 4 bytes from `t8` to a0 (arg0 at entry) +0x2e4c (`sw` at 0xdacdb78).
  Returns with v0 = ? at `jr` at 0xdacdb74.

- `__glOdysseySoftClipBeginTriangles` (`builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdac95e0, 52 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x30e8 (`sw` at 0xdac95f4).
  Loads 4 bytes from abs 0xdbdaaf8 into `v1` (`lw` at 0xdac95fc).
  Loads 4 bytes from abs 0xdbda044 into `v0` (`lw` at 0xdac9600).
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x2e4c (`sw` at 0xdac9604).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x2e04 (`sw` at 0xdac9610).
  Returns with v0 = 0xdac95a0 at `jr` at 0xdac960c.

- `__glOdysseySoftClipBeginTriangles` (`builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0xbdcede0, 52 bytes) Inferred.
  Stores 8 bytes from `a2` to a0 (arg0 at entry) +0x4c88 (`sd` at 0xbdcedf4).
  Loads 8 bytes from abs 0xbee8968 into `v1` (`ld` at 0xbdcedfc).
  Loads 8 bytes from abs 0xbee73f8 into `v0` (`ld` at 0xbdcee00).
  Stores 8 bytes from `v1` to a0 (arg0 at entry) +0x4778 (`sd` at 0xbdcee04).
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x46e8 (`sd` at 0xbdcee10).
  Returns with v0 = 0xbdceda0 at `jr` at 0xbdcee0c.

- `__glOdysseySoftClipBeginTriangles` (`usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xd9f9fc8, 52 bytes) Inferred.
  Loads 4 bytes from abs 0xdafe420 into `t7` (`lw` at 0xd9f9fd4).
  Loads 4 bytes from abs 0xdafef0c into `t8` (`lw` at 0xd9f9fdc).
  Stores 4 bytes from `t6` to a0 (arg0 at entry) +0x31c8 (`sw` at 0xd9f9fec).
  Stores 4 bytes from `t7` to a0 (arg0 at entry) +0x2ee4 (`sw` at 0xd9f9ff0).
  Stores 4 bytes from `t8` to a0 (arg0 at entry) +0x2f2c (`sw` at 0xd9f9ff8).
  Returns with v0 = ? at `jr` at 0xd9f9ff4.

- `__glOdysseySoftClipBeginTriangles` (`usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd9e63c0, 52 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x31c8 (`sw` at 0xd9e63d4).
  Loads 4 bytes from abs 0xdaf10bc into `v1` (`lw` at 0xd9e63dc).
  Loads 4 bytes from abs 0xdaf05cc into `v0` (`lw` at 0xd9e63e0).
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x2f2c (`sw` at 0xd9e63e4).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x2ee4 (`sw` at 0xd9e63f0).
  Returns with v0 = 0xd9e6380 at `jr` at 0xd9e63ec.

- `__glOdysseySoftClipBeginTriangles` (`usr/gfx/arch/IP35ODSY/libGLcore.so`, 0xd9f9fc8, 52 bytes) Inferred.
  Loads 4 bytes from abs 0xdafe420 into `t7` (`lw` at 0xd9f9fd4).
  Loads 4 bytes from abs 0xdafef0c into `t8` (`lw` at 0xd9f9fdc).
  Stores 4 bytes from `t6` to a0 (arg0 at entry) +0x31c8 (`sw` at 0xd9f9fec).
  Stores 4 bytes from `t7` to a0 (arg0 at entry) +0x2ee4 (`sw` at 0xd9f9ff0).
  Stores 4 bytes from `t8` to a0 (arg0 at entry) +0x2f2c (`sw` at 0xd9f9ff8).
  Returns with v0 = ? at `jr` at 0xd9f9ff4.

- `__glOdysseySoftClipBeginTriangles` (`usr/gfx/arch/IP35ODSY32/libGLcore.so`, 0xd9e63c0, 52 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x31c8 (`sw` at 0xd9e63d4).
  Loads 4 bytes from abs 0xdaf10bc into `v1` (`lw` at 0xd9e63dc).
  Loads 4 bytes from abs 0xdaf05cc into `v0` (`lw` at 0xd9e63e0).
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x2f2c (`sw` at 0xd9e63e4).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x2ee4 (`sw` at 0xd9e63f0).
  Returns with v0 = 0xd9e6380 at `jr` at 0xd9e63ec.

- `__glOdysseySoftClipBeginTriangles` (`usr/gfx/arch/IP35ODSY64/libGLcore.so`, 0x222ab80, 52 bytes) Inferred.
  Stores 8 bytes from `a2` to a0 (arg0 at entry) +0x4e30 (`sd` at 0x222ab94).
  Loads 8 bytes from abs 0x2340508 into `v1` (`ld` at 0x222ab9c).
  Loads 8 bytes from abs 0x233ef20 into `v0` (`ld` at 0x222aba0).
  Stores 8 bytes from `v1` to a0 (arg0 at entry) +0x4920 (`sd` at 0x222aba4).
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x4890 (`sd` at 0x222abb0).
  Returns with v0 = 0x222ab40 at `jr` at 0x222abac.

- `gfxioctl` (`usr/cpu/sysgen/IP30boot/gfx.o`, 0x2b48, 2004 bytes) Inferred.
  Loads 2 bytes from abs 0xffffffffffffc3a0 into `a5` (`lh` at 0x2b84).
  Loads 8 bytes from sym(gfxinfo) +0x0 into `a4` (`ld` at 0x2b88).
  Loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0xc into `a3` (`lw` at 0x2b94).
  Stores 4 bytes from `a3` to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0xc (`sw` at 0x2ba8).
  Loads 4 bytes from sym(GfxDevLimit) +0x0 into `at` (`lw` at 0x2bb4).
  Loads 8 bytes from sym(.srdata) +0x28 into `s0` (`ld` at 0x2bc8).
  Loads 8 bytes from table(sym(GfxDev)) +0x0 into `s0` (`ld` at 0x2bd4).
  Performs 6 4-byte loads from entry(sym(GfxDev)) +0x4, including `lw` at 0x2be8, `lw` at 0x2ccc, `lw` at 0x2d88.
  Loads 8 bytes from ret(gthread_find) +0x18 into `v0` (`ld` at 0x2bf4).
  Performs 2 8-byte loads from ret(gthread_find) +0x0, including `ld` at 0x2c00, `ld` at 0x2e60.
  Loads 8 bytes from entry(sym(GfxDev)) +0x10 into `at` (`ld` at 0x2c04).
  Performs 5 4-byte loads from sym(GfxNumberOfBoards) +0x0, including `lw` at 0x2c34, `lw` at 0x3064, `lw` at 0x307c.
  Performs 7 8-byte loads from entry(sym(GfxDev)) +0x20, including `ld` at 0x2c64, `ld` at 0x2d70, `ld` at 0x2fe4.
  Performs 3 8-byte loads from entry(sym(GfxDev)) +0x8, including `ld` at 0x2c98, `ld` at 0x32ec, `ld` at 0x3304.
  Performs 3 8-byte loads from [entry(sym(GfxDev))+8]:8 +0x10, including `ld` at 0x2c9c, `ld` at 0x32f0, `ld` at 0x3308.
  Performs 2 4-byte stores to a5 (arg5 at entry) +0x0, including `sw` at 0x2cbc, `sw` at 0x312c.
  Performs 4 8-byte loads from ret(gthread_find) +0x18, including `ld` at 0x2cc0, `ld` at 0x2da4, `ld` at 0x2e50.
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc8 into `t9` (`ld` at 0x2d0c).
  Loads 8 bytes from entry(sym(GfxDev)) +0x48 into `a1` (`ld` at 0x2d24).
  Performs 17 8-byte loads from entry(sym(GfxDev)) +0x28, including `ld` at 0x2d3c, `ld` at 0x2d48, `ld` at 0x2d60.
  Performs 3 8-byte loads from entry(sym(GfxDev)) +0x30, including `ld` at 0x2d44, `ld` at 0x2d5c, `ld` at 0x2d90.
  Loads 8 bytes from [entry(sym(GfxDev))+40]:8 +0x48 into `ra` (`ld` at 0x2d4c).
  Loads 8 bytes from [entry(sym(GfxDev))+40]:8 +0x48 into `at` (`ld` at 0x2d64).
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x60 into `v0` (`ld` at 0x2d74).
  Performs 2 4-byte stores to entry(sym(GfxDev)) +0x4, including `sw` at 0x2d9c, `sw` at 0x2f7c.
  Loads 8 bytes from sym(.srdata) +0x0 into `a2` (`ld` at 0x2de4).
  Performs 2 8-byte stores to [entry(sym(GfxDev))+40]:8 +0x48, including `sd` at 0x2e0c, `sd` at 0x3188.
  Performs 2 4-byte loads from [entry(sym(GfxDev))+40]:8 +0x68, including `lw` at 0x2e14, `lw` at 0x3190.
  Performs 2 4-byte loads from [entry(sym(GfxDev))+40]:8 +0x68, including `lw` at 0x2e2c, `lw` at 0x31a8.
  Loads 8 bytes from sym(.srdata) +0x58 into `a3` (`ld` at 0x2e94).
  Performs 2 8-byte loads from sym(.srdata) +0x50, including `ld` at 0x2f0c, `ld` at 0x2f44.
  Loads 8 bytes from sym(.srdata) +0x48 into `a3` (`ld` at 0x2f9c).
  Performs 2 8-byte loads from [entry(sym(GfxDev))+40]:8 +0x48, including `ld` at 0x2fbc, `ld` at 0x303c.
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x18 into `t3` (`ld` at 0x2fc8).
  Stores 4 bytes from `zero` to [entry(sym(GfxDev))+40]:8 +0x80 (`sw` at 0x2fe0).
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc0 into `a1` (`ld` at 0x2fe8).
  Stores 8 bytes from `zero` to [entry(sym(GfxDev))+40]:8 +0x48 (`sd` at 0x3000).
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x28 into `a4` (`ld` at 0x3048).
  Performs 4 8-byte loads from sym(.srdata) +0x8, including `ld` at 0x3070, `ld` at 0x3088, `ld` at 0x30c0.
  Loads 8 bytes from [entry(sym(GfxDev))+8]:8 +0x0 into `a1` (`ld` at 0x3094).
  Loads 8 bytes from table(sym(GfxBoards)) +0x0 into `a4` (`ld` at 0x30f0).
  Loads 8 bytes from table(sym(GfxBoards)) +0x0 into `v0` (`ld` at 0x3110).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x8 into `a0` (`ld` at 0x311c).
  Performs 2 8-byte loads from table(sym(GfxBoards)) +0x0, including `ld` at 0x313c, `ld` at 0x3168.
  Stores 8 bytes from `s0` to [entry(sym(GfxDev))+40]:8 +0x48 (`sd` at 0x31c8).
  Loads 4 bytes from [entry(sym(GfxDev))+40]:8 +0x68 into `a6` (`lw` at 0x31d0).
  Loads 4 bytes from [entry(sym(GfxDev))+40]:8 +0x68 into `t0` (`lw` at 0x31e8).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x38 into `t1` (`ld` at 0x31fc).
  Loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x0 into `t1` (`ld` at 0x3200).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x40 into `a0` (`ld` at 0x3214).
  Performs 4 8-byte stores to entry(sym(GfxDev)) +0x8, including `sd` at 0x3220, `sd` at 0x326c, `sd` at 0x329c.
  Performs 2 8-byte loads from entry(sym(GfxBoards)) +0x40, including `ld` at 0x3224, `ld` at 0x32a8.
  Performs 4 8-byte stores to entry(sym(GfxDev)) +0x28, including `sd` at 0x3228, `sd` at 0x3264, `sd` at 0x32ac.
  Performs 2 8-byte loads from entry(sym(GfxBoards)) +0x38, including `ld` at 0x322c, `ld` at 0x32a0.
  Performs 4 8-byte stores to entry(sym(GfxDev)) +0x20, including `sd` at 0x3230, `sd` at 0x3260, `sd` at 0x32a4.
  Loads 8 bytes from table(sym(GfxBoards)) +0x0 into `t2` (`ld` at 0x3240).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x38 into `t2` (`ld` at 0x3244).
  Loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x8 into `t2` (`ld` at 0x3248).
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x20 into `t9` (`ld` at 0x3274).
  Loads 8 bytes from table(sym(GfxBoards)) +0x0 into `at` (`ld` at 0x32bc).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x38 into `at` (`ld` at 0x32c0).
  Loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x8 into `at` (`ld` at 0x32c4).
  Performs 2 8-byte stores to [entry(sym(GfxDev))+8]:8 +0x10, including `sd` at 0x3300, `sd` at 0x3318.
  Calls `curthreadhandle` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2b70).
  Calls `gthread_find` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=? (`jal` at 0x2b7c).
  Calls `psema` via direct with a0=entry(sym(GfxDev))+80, a1=0x19, a2=0x1ffff, a3=[([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5))+12]+1, a4=([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)), a5=([-0x3c60]:2 << 0x5) (`jal` at 0x2c24).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=[entry(sym(GfxDev))+72]:8, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a5 at entry (arg5) (`jalr` at 0x2d20).
  Calls `ddv_unlock` via direct with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=? (`jal` at 0x2d40).
  Calls `ddv_lock` via direct with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=? (`jal` at 0x2d58).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=0x0, a2=-0x1, a3=? (`jalr` at 0x2d80).
  Calls `ddv_unlock` via direct with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=? (`jal` at 0x2d98).
  Calls `RRM_Dispatch` via direct with a0=entry(sym(GfxDev)), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a5 at entry (arg5), a6=0x6c (`jal` at 0x2db4).
  Calls `cmn_err_tag` via direct with a0=0x850, a1=0x4, a2=sym(.rodata), a3=a1 at entry (arg1), a4=0x6f, a6=0x6c, a7=0x68 (`jal` at 0x2df0).
  Calls `psema` via direct with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=?, a3=? (`jal` at 0x2e00).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x2e20).
  Calls `threadgroup_refcnt` via direct with a0=[ret(gthread_find)]:8, a1=0x67, a2=0x70, a3=0x71, a7=[ret(gthread_find)+24]:8 (`jal` at 0x2e5c).
  Calls `curproc_abi` via direct with a0=0x69, a1=?, a2=?, a3=? (`jal` at 0x2e78).
  Calls `copyin_xlate` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x18, a3=sym(irix5_to_gfx_getboardinfo_args), a4=ret(curproc_abi), a5=0x4, a6=0x1 (`jal` at 0x2e98).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-72, a2=0x4, a3=? (`jal` at 0x2eb8).
  Calls `vsema` via direct with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=? (`jal` at 0x2ed0).
  Calls `GfxDetach` via direct with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=? (`jal` at 0x2ee0).
  Calls `curproc_abi` via direct with a0=0x69, a1=0x67, a2=0x70, a3=? (`jal` at 0x2ef0).
  Calls `copyin_xlate` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1 (`jal` at 0x2f10).
  Calls `curproc_abi` via direct with a0=0x69, a1=0x67, a2=0x70, a3=0x71 (`jal` at 0x2f28).
  Calls `copyin_xlate` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1 (`jal` at 0x2f48).
  Calls `drv_priv` via direct with a0=a4 at entry (arg4), a1=0x67, a2=0x70, a3=0x71 (`jal` at 0x2f60).
  Calls `curproc_abi` via direct with a0=0x69, a1=0x67, a2=0x70, a3=0x71, a6=0x6c, a7=0x68 (`jal` at 0x2f80).
  Calls `copyin_xlate` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x28, a3=sym(irix5_to_gfx_download_args), a4=ret(curproc_abi), a5=0x4, a6=0x1 (`jal` at 0x2fa0).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=? (`jalr` at 0x2fcc).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2fdc).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=[[entry(sym(GfxDev))+32]:8+192]:8, a2=?, a3=? (`jalr` at 0x2ff4).
  Calls `vsema` via direct with a0=[entry(sym(GfxDev))+40]:8+56, a1=[entry(sym(GfxDev))+40]:8, a2=?, a3=? (`jal` at 0x3008).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x3010).
  Calls `rrmUnMapGfx` via direct with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=? (`jal` at 0x3028).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?, a4=[[entry(sym(GfxDev))+32]:8+40]:8 (`jalr` at 0x304c).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=[[entry(sym(GfxDev))+8]:8]:8+16, a2=0x10, a3=[entry(sym(GfxDev))+8]:8, a4=0x6f, a6=0x6c, a7=0x68 (`jal` at 0x30a0).
  Calls `psema` via direct with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[entry(sym(GfxDev))+8]:8, a6=0x6c, a7=0x68 (`jal` at 0x317c).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x319c).
  Calls `psema` via direct with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[[entry(sym(GfxDev))+40]:8+72]:8, a6=0x6c, a7=0x68 (`jal` at 0x31bc).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x31dc).
  Calls `(unknown callee)` via register with a0=[entry(sym(GfxBoards))+64]:8, a1=?, a2=?, a3=a5 at entry (arg5), a4=entry(sym(GfxBoards)) (`jalr` at 0x3210).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards) (`jalr` at 0x3250).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=sp-112, a2=?, a3=? (`jalr` at 0x327c).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards), a4=[entry(sym(GfxDev))+32]:8 (`jalr` at 0x32cc).
  The `beq` at 0x2bc0 is taken when a1(?) >= at(=[sym(GfxDevLimit)]) (signed) and falls through when a1(?) < at(=[sym(GfxDevLimit)]) (signed).
  The `beq` at 0x2bd8 is taken when s0(=entry(sym(GfxDev))) == 0 and falls through when s0(=entry(sym(GfxDev))) != 0.
  The `beq` at 0x2be0 is taken when v0(=ret(gthread_find)) == 0 and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` at 0x2bf0 is taken when (t9(=[entry(sym(GfxDev))+4]) & 0x8) == 0 and falls through when (t9(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` at 0x2bf8 is taken when v0(=[ret(gthread_find)+24]:8) == 0 and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` at 0x2c08 is taken when ra(=[ret(gthread_find)]:8) == at(=[entry(sym(GfxDev))+16]:8) and falls through when ra(=[ret(gthread_find)]:8) != at(=[entry(sym(GfxDev))+16]:8).
  The `beq` at 0x2c18 is taken when v0(=[ret(gthread_find)+24]:8) == 0 and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` at 0x2c30 is taken when s1(=a1) == v0(=0x65) and falls through when s1(=a1) != v0(=0x65).
  The `beq` at 0x2c3c is taken when s1(=a1) == v1(=0x66) and falls through when s1(=a1) != v1(=0x66).
  The `beq` at 0x2c44 is taken when s1(=a1) == a0(=0x69) and falls through when s1(=a1) != a0(=0x69).
  The `beq` at 0x2c4c is taken when s1(=a1) == a1(=0x67) and falls through when s1(=a1) != a1(=0x67).
  The `beq` at 0x2c54 is taken when s1(=a1) == a2(=0x70) and falls through when s1(=a1) != a2(=0x70).
  The `beq` at 0x2c5c is taken when s1(=a1) == a3(=0x71) and falls through when s1(=a1) != a3(=0x71).
  The `beq` at 0x2c68 is taken when v0(=[entry(sym(GfxDev))+32]:8) == 0 and falls through when v0(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` at 0x2c70 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x2c78 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x2c80 is taken when s1(=a1) == a6(=0x6c) and falls through when s1(=a1) != a6(=0x6c).
  The `beq` at 0x2c88 is taken when s1(=a1) == a7(=0x68) and falls through when s1(=a1) != a7(=0x68).
  The `beq` at 0x2c90 is taken when s1(=a1) == t0(=0x6e) and falls through when s1(=a1) != t0(=0x6e).
  The `beq` at 0x2ca0 is taken when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) == s0(=entry(sym(GfxDev))) and falls through when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) != s0(=entry(sym(GfxDev))).
  The `beq` at 0x2cc4 is taken when t3(=[ret(gthread_find)+24]:8) == 0 and falls through when t3(=[ret(gthread_find)+24]:8) != 0.
  The `beq` at 0x2cd4 is taken when (t8(=[entry(sym(GfxDev))+4]) & 0x8) == 0 and falls through when (t8(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `bne` at 0x2d50 is taken when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) and falls through when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `bne` at 0x2d68 is taken when at(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) and falls through when at(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` at 0x2dc4 is taken when s1(=a1) == a0(=0x6a) and falls through when s1(=a1) != a0(=0x6a).
  The `beq` at 0x2dcc is taken when s1(=a1) == a1(=0x6b) and falls through when s1(=a1) != a1(=0x6b).
  The `beq` at 0x2dd4 is taken when s1(=a1) == a2(=0x6d) and falls through when s1(=a1) != a2(=0x6d).
  The `beq` at 0x2ddc is taken when s1(=a1) == a4(=0x6f) and falls through when s1(=a1) != a4(=0x6f).
  The `beq` at 0x2e18 is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0 and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` at 0x2e30 is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0 and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `bne` at 0x2e48 is taken when (a6(=[entry(sym(GfxDev))+4]) & 0x8) != 0 and falls through when (a6(=[entry(sym(GfxDev))+4]) & 0x8) == 0.
  The `beq` at 0x2e54 is taken when a7(=[ret(gthread_find)+24]:8) == 0 and falls through when a7(=[ret(gthread_find)+24]:8) != 0.
  The `beq` at 0x2e68 is taken when v0(=ret(threadgroup_refcnt)) == t0(=0x1) and falls through when v0(=ret(threadgroup_refcnt)) != t0(=0x1).
  The `beq` at 0x2ea0 is taken when v0(=ret(copyin_xlate)) == 0 and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` at 0x2ec0 is taken when v0(=ret(copyin)) == 0 and falls through when v0(=ret(copyin)) != 0.
  The `beq` at 0x2f18 is taken when v0(=ret(copyin_xlate)) == 0 and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` at 0x2f50 is taken when v0(=ret(copyin_xlate)) == 0 and falls through when v0(=ret(copyin_xlate)) != 0.
  The `bne` at 0x2f68 is taken when v0(=ret(drv_priv)) != 0 and falls through when v0(=ret(drv_priv)) == 0.
  The `beq` at 0x2fa8 is taken when v0(=ret(copyin_xlate)) == 0 and falls through when v0(=ret(copyin_xlate)) != 0.
  The `bne` at 0x2fc0 is taken when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) and falls through when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` at 0x2fec is taken when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) == 0 and falls through when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) != 0.
  The `beq` at 0x3020 is taken when (a2(=[entry(sym(GfxDev))+4]) & 0x1) == 0 and falls through when (a2(=[entry(sym(GfxDev))+4]) & 0x1) != 0.
  The `bne` at 0x3040 is taken when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) and falls through when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `bne` at 0x306c is taken when v0(?) < a5(=[sym(GfxNumberOfBoards)]) (unsigned) and falls through when v0(?) >= a5(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `bne` at 0x3084 is taken when a0(?) < a6(=[sym(GfxNumberOfBoards)]) (unsigned) and falls through when a0(?) >= a6(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `bne` at 0x30bc is taken when v0(?) < a2(=[sym(GfxNumberOfBoards)]) (unsigned) and falls through when v0(?) >= a2(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `bne` at 0x30d4 is taken when v0(?) < a3(=[sym(GfxNumberOfBoards)]) (unsigned) and falls through when v0(?) >= a3(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `bne` at 0x30f4 is taken when a4(=entry(sym(GfxBoards))) != 0 and falls through when a4(=entry(sym(GfxBoards))) == 0.
  The `beq` at 0x3114 is taken when v0(=entry(sym(GfxBoards))) == 0 and falls through when v0(=entry(sym(GfxBoards))) != 0.
  The `beq` at 0x3140 is taken when a2(=entry(sym(GfxBoards))) == 0 and falls through when a2(=entry(sym(GfxBoards))) != 0.
  The `beq` at 0x314c is taken when a4(=[entry(sym(GfxDev))+32]:8) == 0 and falls through when a4(=[entry(sym(GfxDev))+32]:8) != 0.
  The `bne` at 0x316c is taken when a2(=entry(sym(GfxBoards))) != 0 and falls through when a2(=entry(sym(GfxBoards))) == 0.
  The `beq` at 0x3194 is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0 and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` at 0x31ac is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0 and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` at 0x31d4 is taken when a6(=[[entry(sym(GfxDev))+40]:8+104]) == 0 and falls through when a6(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` at 0x31ec is taken when t0(=[[entry(sym(GfxDev))+40]:8+104]) != 0 and falls through when t0(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` at 0x3258 is taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  The `beq` at 0x32d4 is taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  The `bne` at 0x32f4 is taken when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0 and falls through when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `bne` at 0x330c is taken when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0 and falls through when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  Returns with v0 = ? at `jr` at 0x2cf4.

- `gfxioctl` (`usr/cpu/sysgen/IP30boot/gfxs.a(gfx.o)`, 0x2b48, 2004 bytes) Inferred.
  Loads 2 bytes from abs 0xffffffffffffc3a0 into `a5` (`lh` at 0x2b84).
  Loads 8 bytes from sym(gfxinfo) +0x0 into `a4` (`ld` at 0x2b88).
  Loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0xc into `a3` (`lw` at 0x2b94).
  Stores 4 bytes from `a3` to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0xc (`sw` at 0x2ba8).
  Loads 4 bytes from sym(GfxDevLimit) +0x0 into `at` (`lw` at 0x2bb4).
  Loads 8 bytes from sym(.srdata) +0x28 into `s0` (`ld` at 0x2bc8).
  Loads 8 bytes from table(sym(GfxDev)) +0x0 into `s0` (`ld` at 0x2bd4).
  Performs 6 4-byte loads from entry(sym(GfxDev)) +0x4, including `lw` at 0x2be8, `lw` at 0x2ccc, `lw` at 0x2d88.
  Loads 8 bytes from ret(gthread_find) +0x18 into `v0` (`ld` at 0x2bf4).
  Performs 2 8-byte loads from ret(gthread_find) +0x0, including `ld` at 0x2c00, `ld` at 0x2e60.
  Loads 8 bytes from entry(sym(GfxDev)) +0x10 into `at` (`ld` at 0x2c04).
  Performs 5 4-byte loads from sym(GfxNumberOfBoards) +0x0, including `lw` at 0x2c34, `lw` at 0x3064, `lw` at 0x307c.
  Performs 7 8-byte loads from entry(sym(GfxDev)) +0x20, including `ld` at 0x2c64, `ld` at 0x2d70, `ld` at 0x2fe4.
  Performs 3 8-byte loads from entry(sym(GfxDev)) +0x8, including `ld` at 0x2c98, `ld` at 0x32ec, `ld` at 0x3304.
  Performs 3 8-byte loads from [entry(sym(GfxDev))+8]:8 +0x10, including `ld` at 0x2c9c, `ld` at 0x32f0, `ld` at 0x3308.
  Performs 2 4-byte stores to a5 (arg5 at entry) +0x0, including `sw` at 0x2cbc, `sw` at 0x312c.
  Performs 4 8-byte loads from ret(gthread_find) +0x18, including `ld` at 0x2cc0, `ld` at 0x2da4, `ld` at 0x2e50.
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc8 into `t9` (`ld` at 0x2d0c).
  Loads 8 bytes from entry(sym(GfxDev)) +0x48 into `a1` (`ld` at 0x2d24).
  Performs 17 8-byte loads from entry(sym(GfxDev)) +0x28, including `ld` at 0x2d3c, `ld` at 0x2d48, `ld` at 0x2d60.
  Performs 3 8-byte loads from entry(sym(GfxDev)) +0x30, including `ld` at 0x2d44, `ld` at 0x2d5c, `ld` at 0x2d90.
  Loads 8 bytes from [entry(sym(GfxDev))+40]:8 +0x48 into `ra` (`ld` at 0x2d4c).
  Loads 8 bytes from [entry(sym(GfxDev))+40]:8 +0x48 into `at` (`ld` at 0x2d64).
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x60 into `v0` (`ld` at 0x2d74).
  Performs 2 4-byte stores to entry(sym(GfxDev)) +0x4, including `sw` at 0x2d9c, `sw` at 0x2f7c.
  Loads 8 bytes from sym(.srdata) +0x0 into `a2` (`ld` at 0x2de4).
  Performs 2 8-byte stores to [entry(sym(GfxDev))+40]:8 +0x48, including `sd` at 0x2e0c, `sd` at 0x3188.
  Performs 2 4-byte loads from [entry(sym(GfxDev))+40]:8 +0x68, including `lw` at 0x2e14, `lw` at 0x3190.
  Performs 2 4-byte loads from [entry(sym(GfxDev))+40]:8 +0x68, including `lw` at 0x2e2c, `lw` at 0x31a8.
  Loads 8 bytes from sym(.srdata) +0x58 into `a3` (`ld` at 0x2e94).
  Performs 2 8-byte loads from sym(.srdata) +0x50, including `ld` at 0x2f0c, `ld` at 0x2f44.
  Loads 8 bytes from sym(.srdata) +0x48 into `a3` (`ld` at 0x2f9c).
  Performs 2 8-byte loads from [entry(sym(GfxDev))+40]:8 +0x48, including `ld` at 0x2fbc, `ld` at 0x303c.
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x18 into `t3` (`ld` at 0x2fc8).
  Stores 4 bytes from `zero` to [entry(sym(GfxDev))+40]:8 +0x80 (`sw` at 0x2fe0).
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc0 into `a1` (`ld` at 0x2fe8).
  Stores 8 bytes from `zero` to [entry(sym(GfxDev))+40]:8 +0x48 (`sd` at 0x3000).
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x28 into `a4` (`ld` at 0x3048).
  Performs 4 8-byte loads from sym(.srdata) +0x8, including `ld` at 0x3070, `ld` at 0x3088, `ld` at 0x30c0.
  Loads 8 bytes from [entry(sym(GfxDev))+8]:8 +0x0 into `a1` (`ld` at 0x3094).
  Loads 8 bytes from table(sym(GfxBoards)) +0x0 into `a4` (`ld` at 0x30f0).
  Loads 8 bytes from table(sym(GfxBoards)) +0x0 into `v0` (`ld` at 0x3110).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x8 into `a0` (`ld` at 0x311c).
  Performs 2 8-byte loads from table(sym(GfxBoards)) +0x0, including `ld` at 0x313c, `ld` at 0x3168.
  Stores 8 bytes from `s0` to [entry(sym(GfxDev))+40]:8 +0x48 (`sd` at 0x31c8).
  Loads 4 bytes from [entry(sym(GfxDev))+40]:8 +0x68 into `a6` (`lw` at 0x31d0).
  Loads 4 bytes from [entry(sym(GfxDev))+40]:8 +0x68 into `t0` (`lw` at 0x31e8).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x38 into `t1` (`ld` at 0x31fc).
  Loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x0 into `t1` (`ld` at 0x3200).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x40 into `a0` (`ld` at 0x3214).
  Performs 4 8-byte stores to entry(sym(GfxDev)) +0x8, including `sd` at 0x3220, `sd` at 0x326c, `sd` at 0x329c.
  Performs 2 8-byte loads from entry(sym(GfxBoards)) +0x40, including `ld` at 0x3224, `ld` at 0x32a8.
  Performs 4 8-byte stores to entry(sym(GfxDev)) +0x28, including `sd` at 0x3228, `sd` at 0x3264, `sd` at 0x32ac.
  Performs 2 8-byte loads from entry(sym(GfxBoards)) +0x38, including `ld` at 0x322c, `ld` at 0x32a0.
  Performs 4 8-byte stores to entry(sym(GfxDev)) +0x20, including `sd` at 0x3230, `sd` at 0x3260, `sd` at 0x32a4.
  Loads 8 bytes from table(sym(GfxBoards)) +0x0 into `t2` (`ld` at 0x3240).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x38 into `t2` (`ld` at 0x3244).
  Loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x8 into `t2` (`ld` at 0x3248).
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x20 into `t9` (`ld` at 0x3274).
  Loads 8 bytes from table(sym(GfxBoards)) +0x0 into `at` (`ld` at 0x32bc).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x38 into `at` (`ld` at 0x32c0).
  Loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x8 into `at` (`ld` at 0x32c4).
  Performs 2 8-byte stores to [entry(sym(GfxDev))+8]:8 +0x10, including `sd` at 0x3300, `sd` at 0x3318.
  Calls `curthreadhandle` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2b70).
  Calls `gthread_find` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=? (`jal` at 0x2b7c).
  Calls `psema` via direct with a0=entry(sym(GfxDev))+80, a1=0x19, a2=0x1ffff, a3=[([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5))+12]+1, a4=([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)), a5=([-0x3c60]:2 << 0x5) (`jal` at 0x2c24).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=[entry(sym(GfxDev))+72]:8, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a5 at entry (arg5) (`jalr` at 0x2d20).
  Calls `ddv_unlock` via direct with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=? (`jal` at 0x2d40).
  Calls `ddv_lock` via direct with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=? (`jal` at 0x2d58).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=0x0, a2=-0x1, a3=? (`jalr` at 0x2d80).
  Calls `ddv_unlock` via direct with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=? (`jal` at 0x2d98).
  Calls `RRM_Dispatch` via direct with a0=entry(sym(GfxDev)), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a5 at entry (arg5), a6=0x6c (`jal` at 0x2db4).
  Calls `cmn_err_tag` via direct with a0=0x850, a1=0x4, a2=sym(.rodata), a3=a1 at entry (arg1), a4=0x6f, a6=0x6c, a7=0x68 (`jal` at 0x2df0).
  Calls `psema` via direct with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=?, a3=? (`jal` at 0x2e00).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x2e20).
  Calls `threadgroup_refcnt` via direct with a0=[ret(gthread_find)]:8, a1=0x67, a2=0x70, a3=0x71, a7=[ret(gthread_find)+24]:8 (`jal` at 0x2e5c).
  Calls `curproc_abi` via direct with a0=0x69, a1=?, a2=?, a3=? (`jal` at 0x2e78).
  Calls `copyin_xlate` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x18, a3=sym(irix5_to_gfx_getboardinfo_args), a4=ret(curproc_abi), a5=0x4, a6=0x1 (`jal` at 0x2e98).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-72, a2=0x4, a3=? (`jal` at 0x2eb8).
  Calls `vsema` via direct with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=? (`jal` at 0x2ed0).
  Calls `GfxDetach` via direct with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=? (`jal` at 0x2ee0).
  Calls `curproc_abi` via direct with a0=0x69, a1=0x67, a2=0x70, a3=? (`jal` at 0x2ef0).
  Calls `copyin_xlate` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1 (`jal` at 0x2f10).
  Calls `curproc_abi` via direct with a0=0x69, a1=0x67, a2=0x70, a3=0x71 (`jal` at 0x2f28).
  Calls `copyin_xlate` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1 (`jal` at 0x2f48).
  Calls `drv_priv` via direct with a0=a4 at entry (arg4), a1=0x67, a2=0x70, a3=0x71 (`jal` at 0x2f60).
  Calls `curproc_abi` via direct with a0=0x69, a1=0x67, a2=0x70, a3=0x71, a6=0x6c, a7=0x68 (`jal` at 0x2f80).
  Calls `copyin_xlate` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x28, a3=sym(irix5_to_gfx_download_args), a4=ret(curproc_abi), a5=0x4, a6=0x1 (`jal` at 0x2fa0).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=? (`jalr` at 0x2fcc).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2fdc).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=[[entry(sym(GfxDev))+32]:8+192]:8, a2=?, a3=? (`jalr` at 0x2ff4).
  Calls `vsema` via direct with a0=[entry(sym(GfxDev))+40]:8+56, a1=[entry(sym(GfxDev))+40]:8, a2=?, a3=? (`jal` at 0x3008).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x3010).
  Calls `rrmUnMapGfx` via direct with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=? (`jal` at 0x3028).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?, a4=[[entry(sym(GfxDev))+32]:8+40]:8 (`jalr` at 0x304c).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=[[entry(sym(GfxDev))+8]:8]:8+16, a2=0x10, a3=[entry(sym(GfxDev))+8]:8, a4=0x6f, a6=0x6c, a7=0x68 (`jal` at 0x30a0).
  Calls `psema` via direct with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[entry(sym(GfxDev))+8]:8, a6=0x6c, a7=0x68 (`jal` at 0x317c).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x319c).
  Calls `psema` via direct with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[[entry(sym(GfxDev))+40]:8+72]:8, a6=0x6c, a7=0x68 (`jal` at 0x31bc).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x31dc).
  Calls `(unknown callee)` via register with a0=[entry(sym(GfxBoards))+64]:8, a1=?, a2=?, a3=a5 at entry (arg5), a4=entry(sym(GfxBoards)) (`jalr` at 0x3210).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards) (`jalr` at 0x3250).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=sp-112, a2=?, a3=? (`jalr` at 0x327c).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards), a4=[entry(sym(GfxDev))+32]:8 (`jalr` at 0x32cc).
  The `beq` at 0x2bc0 is taken when a1(?) >= at(=[sym(GfxDevLimit)]) (signed) and falls through when a1(?) < at(=[sym(GfxDevLimit)]) (signed).
  The `beq` at 0x2bd8 is taken when s0(=entry(sym(GfxDev))) == 0 and falls through when s0(=entry(sym(GfxDev))) != 0.
  The `beq` at 0x2be0 is taken when v0(=ret(gthread_find)) == 0 and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` at 0x2bf0 is taken when (t9(=[entry(sym(GfxDev))+4]) & 0x8) == 0 and falls through when (t9(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` at 0x2bf8 is taken when v0(=[ret(gthread_find)+24]:8) == 0 and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` at 0x2c08 is taken when ra(=[ret(gthread_find)]:8) == at(=[entry(sym(GfxDev))+16]:8) and falls through when ra(=[ret(gthread_find)]:8) != at(=[entry(sym(GfxDev))+16]:8).
  The `beq` at 0x2c18 is taken when v0(=[ret(gthread_find)+24]:8) == 0 and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` at 0x2c30 is taken when s1(=a1) == v0(=0x65) and falls through when s1(=a1) != v0(=0x65).
  The `beq` at 0x2c3c is taken when s1(=a1) == v1(=0x66) and falls through when s1(=a1) != v1(=0x66).
  The `beq` at 0x2c44 is taken when s1(=a1) == a0(=0x69) and falls through when s1(=a1) != a0(=0x69).
  The `beq` at 0x2c4c is taken when s1(=a1) == a1(=0x67) and falls through when s1(=a1) != a1(=0x67).
  The `beq` at 0x2c54 is taken when s1(=a1) == a2(=0x70) and falls through when s1(=a1) != a2(=0x70).
  The `beq` at 0x2c5c is taken when s1(=a1) == a3(=0x71) and falls through when s1(=a1) != a3(=0x71).
  The `beq` at 0x2c68 is taken when v0(=[entry(sym(GfxDev))+32]:8) == 0 and falls through when v0(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` at 0x2c70 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x2c78 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x2c80 is taken when s1(=a1) == a6(=0x6c) and falls through when s1(=a1) != a6(=0x6c).
  The `beq` at 0x2c88 is taken when s1(=a1) == a7(=0x68) and falls through when s1(=a1) != a7(=0x68).
  The `beq` at 0x2c90 is taken when s1(=a1) == t0(=0x6e) and falls through when s1(=a1) != t0(=0x6e).
  The `beq` at 0x2ca0 is taken when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) == s0(=entry(sym(GfxDev))) and falls through when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) != s0(=entry(sym(GfxDev))).
  The `beq` at 0x2cc4 is taken when t3(=[ret(gthread_find)+24]:8) == 0 and falls through when t3(=[ret(gthread_find)+24]:8) != 0.
  The `beq` at 0x2cd4 is taken when (t8(=[entry(sym(GfxDev))+4]) & 0x8) == 0 and falls through when (t8(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `bne` at 0x2d50 is taken when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) and falls through when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `bne` at 0x2d68 is taken when at(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) and falls through when at(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` at 0x2dc4 is taken when s1(=a1) == a0(=0x6a) and falls through when s1(=a1) != a0(=0x6a).
  The `beq` at 0x2dcc is taken when s1(=a1) == a1(=0x6b) and falls through when s1(=a1) != a1(=0x6b).
  The `beq` at 0x2dd4 is taken when s1(=a1) == a2(=0x6d) and falls through when s1(=a1) != a2(=0x6d).
  The `beq` at 0x2ddc is taken when s1(=a1) == a4(=0x6f) and falls through when s1(=a1) != a4(=0x6f).
  The `beq` at 0x2e18 is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0 and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` at 0x2e30 is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0 and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `bne` at 0x2e48 is taken when (a6(=[entry(sym(GfxDev))+4]) & 0x8) != 0 and falls through when (a6(=[entry(sym(GfxDev))+4]) & 0x8) == 0.
  The `beq` at 0x2e54 is taken when a7(=[ret(gthread_find)+24]:8) == 0 and falls through when a7(=[ret(gthread_find)+24]:8) != 0.
  The `beq` at 0x2e68 is taken when v0(=ret(threadgroup_refcnt)) == t0(=0x1) and falls through when v0(=ret(threadgroup_refcnt)) != t0(=0x1).
  The `beq` at 0x2ea0 is taken when v0(=ret(copyin_xlate)) == 0 and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` at 0x2ec0 is taken when v0(=ret(copyin)) == 0 and falls through when v0(=ret(copyin)) != 0.
  The `beq` at 0x2f18 is taken when v0(=ret(copyin_xlate)) == 0 and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` at 0x2f50 is taken when v0(=ret(copyin_xlate)) == 0 and falls through when v0(=ret(copyin_xlate)) != 0.
  The `bne` at 0x2f68 is taken when v0(=ret(drv_priv)) != 0 and falls through when v0(=ret(drv_priv)) == 0.
  The `beq` at 0x2fa8 is taken when v0(=ret(copyin_xlate)) == 0 and falls through when v0(=ret(copyin_xlate)) != 0.
  The `bne` at 0x2fc0 is taken when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) and falls through when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` at 0x2fec is taken when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) == 0 and falls through when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) != 0.
  The `beq` at 0x3020 is taken when (a2(=[entry(sym(GfxDev))+4]) & 0x1) == 0 and falls through when (a2(=[entry(sym(GfxDev))+4]) & 0x1) != 0.
  The `bne` at 0x3040 is taken when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) and falls through when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `bne` at 0x306c is taken when v0(?) < a5(=[sym(GfxNumberOfBoards)]) (unsigned) and falls through when v0(?) >= a5(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `bne` at 0x3084 is taken when a0(?) < a6(=[sym(GfxNumberOfBoards)]) (unsigned) and falls through when a0(?) >= a6(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `bne` at 0x30bc is taken when v0(?) < a2(=[sym(GfxNumberOfBoards)]) (unsigned) and falls through when v0(?) >= a2(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `bne` at 0x30d4 is taken when v0(?) < a3(=[sym(GfxNumberOfBoards)]) (unsigned) and falls through when v0(?) >= a3(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `bne` at 0x30f4 is taken when a4(=entry(sym(GfxBoards))) != 0 and falls through when a4(=entry(sym(GfxBoards))) == 0.
  The `beq` at 0x3114 is taken when v0(=entry(sym(GfxBoards))) == 0 and falls through when v0(=entry(sym(GfxBoards))) != 0.
  The `beq` at 0x3140 is taken when a2(=entry(sym(GfxBoards))) == 0 and falls through when a2(=entry(sym(GfxBoards))) != 0.
  The `beq` at 0x314c is taken when a4(=[entry(sym(GfxDev))+32]:8) == 0 and falls through when a4(=[entry(sym(GfxDev))+32]:8) != 0.
  The `bne` at 0x316c is taken when a2(=entry(sym(GfxBoards))) != 0 and falls through when a2(=entry(sym(GfxBoards))) == 0.
  The `beq` at 0x3194 is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0 and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` at 0x31ac is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0 and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` at 0x31d4 is taken when a6(=[[entry(sym(GfxDev))+40]:8+104]) == 0 and falls through when a6(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` at 0x31ec is taken when t0(=[[entry(sym(GfxDev))+40]:8+104]) != 0 and falls through when t0(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` at 0x3258 is taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  The `beq` at 0x32d4 is taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  The `bne` at 0x32f4 is taken when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0 and falls through when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `bne` at 0x330c is taken when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0 and falls through when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  Returns with v0 = ? at `jr` at 0x2cf4.

- `gfxioctl` (`usr/cpu/sysgen/IP35boot/gfx.o`, 0x2b94, 2004 bytes) Inferred.
  Loads 2 bytes from abs 0xffffffffffffc428 into `a5` (`lh` at 0x2bd0).
  Loads 8 bytes from sym(gfxinfo) +0x0 into `a4` (`ld` at 0x2bd4).
  Loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0xc into `a3` (`lw` at 0x2be0).
  Stores 4 bytes from `a3` to ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0xc (`sw` at 0x2bf4).
  Loads 4 bytes from sym(GfxDevLimit) +0x0 into `at` (`lw` at 0x2c00).
  Loads 8 bytes from sym(.srdata) +0x28 into `s0` (`ld` at 0x2c14).
  Loads 8 bytes from table(sym(GfxDev)) +0x0 into `s0` (`ld` at 0x2c20).
  Performs 6 4-byte loads from entry(sym(GfxDev)) +0x4, including `lw` at 0x2c34, `lw` at 0x2d1c, `lw` at 0x2dd8.
  Loads 8 bytes from ret(gthread_find) +0x18 into `v0` (`ld` at 0x2c40).
  Performs 2 8-byte loads from ret(gthread_find) +0x0, including `ld` at 0x2c4c, `ld` at 0x2eac.
  Loads 8 bytes from entry(sym(GfxDev)) +0x10 into `at` (`ld` at 0x2c50).
  Performs 5 4-byte loads from sym(GfxNumberOfBoards) +0x0, including `lw` at 0x2c80, `lw` at 0x30b0, `lw` at 0x30c8.
  Performs 7 8-byte loads from entry(sym(GfxDev)) +0x20, including `ld` at 0x2cb0, `ld` at 0x2dc0, `ld` at 0x3030.
  Performs 3 8-byte loads from entry(sym(GfxDev)) +0x8, including `ld` at 0x2ce8, `ld` at 0x3338, `ld` at 0x3350.
  Performs 3 8-byte loads from [entry(sym(GfxDev))+8]:8 +0x10, including `ld` at 0x2cec, `ld` at 0x333c, `ld` at 0x3354.
  Performs 2 4-byte stores to a5 (arg5 at entry) +0x0, including `sw` at 0x2d0c, `sw` at 0x3178.
  Performs 4 8-byte loads from ret(gthread_find) +0x18, including `ld` at 0x2d10, `ld` at 0x2df4, `ld` at 0x2e9c.
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc8 into `t9` (`ld` at 0x2d5c).
  Loads 8 bytes from entry(sym(GfxDev)) +0x48 into `a1` (`ld` at 0x2d74).
  Performs 17 8-byte loads from entry(sym(GfxDev)) +0x28, including `ld` at 0x2d8c, `ld` at 0x2d98, `ld` at 0x2db0.
  Performs 3 8-byte loads from entry(sym(GfxDev)) +0x30, including `ld` at 0x2d94, `ld` at 0x2dac, `ld` at 0x2de0.
  Loads 8 bytes from [entry(sym(GfxDev))+40]:8 +0x48 into `ra` (`ld` at 0x2d9c).
  Loads 8 bytes from [entry(sym(GfxDev))+40]:8 +0x48 into `at` (`ld` at 0x2db4).
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x60 into `v0` (`ld` at 0x2dc4).
  Performs 2 4-byte stores to entry(sym(GfxDev)) +0x4, including `sw` at 0x2dec, `sw` at 0x2fc8.
  Loads 8 bytes from sym(.srdata) +0x0 into `a2` (`ld` at 0x2e30).
  Performs 2 8-byte stores to [entry(sym(GfxDev))+40]:8 +0x48, including `sd` at 0x2e58, `sd` at 0x31d4.
  Performs 2 4-byte loads from [entry(sym(GfxDev))+40]:8 +0x68, including `lw` at 0x2e60, `lw` at 0x31dc.
  Performs 2 4-byte loads from [entry(sym(GfxDev))+40]:8 +0x68, including `lw` at 0x2e78, `lw` at 0x31f4.
  Loads 8 bytes from sym(.srdata) +0x58 into `a3` (`ld` at 0x2ee0).
  Performs 2 8-byte loads from sym(.srdata) +0x50, including `ld` at 0x2f58, `ld` at 0x2f90.
  Loads 8 bytes from sym(.srdata) +0x48 into `a3` (`ld` at 0x2fe8).
  Performs 2 8-byte loads from [entry(sym(GfxDev))+40]:8 +0x48, including `ld` at 0x3008, `ld` at 0x3088.
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x18 into `t3` (`ld` at 0x3014).
  Stores 4 bytes from `zero` to [entry(sym(GfxDev))+40]:8 +0x80 (`sw` at 0x302c).
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc0 into `a1` (`ld` at 0x3034).
  Stores 8 bytes from `zero` to [entry(sym(GfxDev))+40]:8 +0x48 (`sd` at 0x304c).
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x28 into `a4` (`ld` at 0x3094).
  Performs 4 8-byte loads from sym(.srdata) +0x8, including `ld` at 0x30bc, `ld` at 0x30d4, `ld` at 0x310c.
  Loads 8 bytes from [entry(sym(GfxDev))+8]:8 +0x0 into `a1` (`ld` at 0x30e0).
  Loads 8 bytes from table(sym(GfxBoards)) +0x0 into `a4` (`ld` at 0x313c).
  Loads 8 bytes from table(sym(GfxBoards)) +0x0 into `v0` (`ld` at 0x315c).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x8 into `a0` (`ld` at 0x3168).
  Performs 2 8-byte loads from table(sym(GfxBoards)) +0x0, including `ld` at 0x3188, `ld` at 0x31b4.
  Stores 8 bytes from `s0` to [entry(sym(GfxDev))+40]:8 +0x48 (`sd` at 0x3214).
  Loads 4 bytes from [entry(sym(GfxDev))+40]:8 +0x68 into `a6` (`lw` at 0x321c).
  Loads 4 bytes from [entry(sym(GfxDev))+40]:8 +0x68 into `t0` (`lw` at 0x3234).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x38 into `t1` (`ld` at 0x3248).
  Loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x0 into `t1` (`ld` at 0x324c).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x40 into `a0` (`ld` at 0x3260).
  Performs 4 8-byte stores to entry(sym(GfxDev)) +0x8, including `sd` at 0x326c, `sd` at 0x32b8, `sd` at 0x32e8.
  Performs 2 8-byte loads from entry(sym(GfxBoards)) +0x40, including `ld` at 0x3270, `ld` at 0x32f4.
  Performs 4 8-byte stores to entry(sym(GfxDev)) +0x28, including `sd` at 0x3274, `sd` at 0x32b0, `sd` at 0x32f8.
  Performs 2 8-byte loads from entry(sym(GfxBoards)) +0x38, including `ld` at 0x3278, `ld` at 0x32ec.
  Performs 4 8-byte stores to entry(sym(GfxDev)) +0x20, including `sd` at 0x327c, `sd` at 0x32ac, `sd` at 0x32f0.
  Loads 8 bytes from table(sym(GfxBoards)) +0x0 into `t2` (`ld` at 0x328c).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x38 into `t2` (`ld` at 0x3290).
  Loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x8 into `t2` (`ld` at 0x3294).
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x20 into `t9` (`ld` at 0x32c0).
  Loads 8 bytes from table(sym(GfxBoards)) +0x0 into `at` (`ld` at 0x3308).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x38 into `at` (`ld` at 0x330c).
  Loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x8 into `at` (`ld` at 0x3310).
  Performs 2 8-byte stores to [entry(sym(GfxDev))+8]:8 +0x10, including `sd` at 0x334c, `sd` at 0x3364.
  Calls `curthreadhandle` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2bbc).
  Calls `gthread_find` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=? (`jal` at 0x2bc8).
  Calls `psema` via direct with a0=entry(sym(GfxDev))+80, a1=0x19, a2=0x1ffff, a3=[([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5))+12]+1, a4=([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)), a5=([-0x3bd8]:2 << 0x5) (`jal` at 0x2c70).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=[entry(sym(GfxDev))+72]:8, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a5 at entry (arg5) (`jalr` at 0x2d70).
  Calls `ddv_unlock` via direct with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=? (`jal` at 0x2d90).
  Calls `ddv_lock` via direct with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=? (`jal` at 0x2da8).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=0x0, a2=-0x1, a3=? (`jalr` at 0x2dd0).
  Calls `ddv_unlock` via direct with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=? (`jal` at 0x2de8).
  Calls `RRM_Dispatch` via direct with a0=entry(sym(GfxDev)), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a5 at entry (arg5) (`jal` at 0x2e00).
  Calls `cmn_err_tag` via direct with a0=0x850, a1=0x4, a2=sym(.rodata), a3=a1 at entry (arg1), a4=0x6f, a6=0x6c, a7=0x68 (`jal` at 0x2e3c).
  Calls `psema` via direct with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=?, a3=? (`jal` at 0x2e4c).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x2e6c).
  Calls `threadgroup_refcnt` via direct with a0=[ret(gthread_find)]:8, a1=0x67, a2=0x70, a3=0x71, a7=[ret(gthread_find)+24]:8 (`jal` at 0x2ea8).
  Calls `curproc_abi` via direct with a0=0x69, a1=?, a2=?, a3=? (`jal` at 0x2ec4).
  Calls `copyin_xlate` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x18, a3=sym(irix5_to_gfx_getboardinfo_args), a4=ret(curproc_abi), a5=0x4, a6=0x1 (`jal` at 0x2ee4).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-72, a2=0x4, a3=? (`jal` at 0x2f04).
  Calls `vsema` via direct with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=? (`jal` at 0x2f1c).
  Calls `GfxDetach` via direct with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=? (`jal` at 0x2f2c).
  Calls `curproc_abi` via direct with a0=0x69, a1=0x67, a2=0x70, a3=? (`jal` at 0x2f3c).
  Calls `copyin_xlate` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1 (`jal` at 0x2f5c).
  Calls `curproc_abi` via direct with a0=0x69, a1=0x67, a2=0x70, a3=0x71 (`jal` at 0x2f74).
  Calls `copyin_xlate` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1 (`jal` at 0x2f94).
  Calls `drv_priv` via direct with a0=a4 at entry (arg4), a1=0x67, a2=0x70, a3=0x71 (`jal` at 0x2fac).
  Calls `curproc_abi` via direct with a0=entry(sym(GfxDev)), a1=0x67, a2=0x70, a3=0x71, a6=0x6c, a7=0x68 (`jal` at 0x2fcc).
  Calls `copyin_xlate` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x28, a3=sym(irix5_to_gfx_download_args), a4=ret(curproc_abi), a5=0x4, a6=0x1 (`jal` at 0x2fec).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=? (`jalr` at 0x3018).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3028).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=[[entry(sym(GfxDev))+32]:8+192]:8, a2=?, a3=? (`jalr` at 0x3040).
  Calls `vsema` via direct with a0=[entry(sym(GfxDev))+40]:8+56, a1=[entry(sym(GfxDev))+40]:8, a2=?, a3=? (`jal` at 0x3054).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x305c).
  Calls `rrmUnMapGfx` via direct with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=? (`jal` at 0x3074).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?, a4=[[entry(sym(GfxDev))+32]:8+40]:8 (`jalr` at 0x3098).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=[[entry(sym(GfxDev))+8]:8]:8+16, a2=0x10, a3=[entry(sym(GfxDev))+8]:8, a4=0x6f, a6=0x6c, a7=0x68 (`jal` at 0x30ec).
  Calls `psema` via direct with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[entry(sym(GfxDev))+8]:8, a6=0x6c, a7=0x68 (`jal` at 0x31c8).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x31e8).
  Calls `psema` via direct with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[[entry(sym(GfxDev))+40]:8+72]:8, a6=0x6c, a7=0x68 (`jal` at 0x3208).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x3228).
  Calls `(unknown callee)` via register with a0=[entry(sym(GfxBoards))+64]:8, a1=?, a2=?, a3=a5 at entry (arg5), a4=entry(sym(GfxBoards)) (`jalr` at 0x325c).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards) (`jalr` at 0x329c).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=sp-112, a2=?, a3=? (`jalr` at 0x32c8).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards), a4=[entry(sym(GfxDev))+32]:8 (`jalr` at 0x3318).
  The `beq` at 0x2c0c is taken when a1(?) >= at(=[sym(GfxDevLimit)]) (signed) and falls through when a1(?) < at(=[sym(GfxDevLimit)]) (signed).
  The `beq` at 0x2c24 is taken when s0(=entry(sym(GfxDev))) == 0 and falls through when s0(=entry(sym(GfxDev))) != 0.
  The `beq` at 0x2c2c is taken when v0(=ret(gthread_find)) == 0 and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` at 0x2c3c is taken when (t9(=[entry(sym(GfxDev))+4]) & 0x8) == 0 and falls through when (t9(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` at 0x2c44 is taken when v0(=[ret(gthread_find)+24]:8) == 0 and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` at 0x2c54 is taken when ra(=[ret(gthread_find)]:8) == at(=[entry(sym(GfxDev))+16]:8) and falls through when ra(=[ret(gthread_find)]:8) != at(=[entry(sym(GfxDev))+16]:8).
  The `beq` at 0x2c64 is taken when v0(=[ret(gthread_find)+24]:8) == 0 and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` at 0x2c7c is taken when s1(=a1) == v0(=0x65) and falls through when s1(=a1) != v0(=0x65).
  The `beq` at 0x2c88 is taken when s1(=a1) == v1(=0x66) and falls through when s1(=a1) != v1(=0x66).
  The `beq` at 0x2c90 is taken when s1(=a1) == a0(=0x69) and falls through when s1(=a1) != a0(=0x69).
  The `beq` at 0x2c98 is taken when s1(=a1) == a1(=0x67) and falls through when s1(=a1) != a1(=0x67).
  The `beq` at 0x2ca0 is taken when s1(=a1) == a2(=0x70) and falls through when s1(=a1) != a2(=0x70).
  The `beq` at 0x2ca8 is taken when s1(=a1) == a3(=0x71) and falls through when s1(=a1) != a3(=0x71).
  The `beq` at 0x2cb4 is taken when v0(=[entry(sym(GfxDev))+32]:8) == 0 and falls through when v0(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` at 0x2cbc is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x2cc4 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x2cd0 is taken when s1(=a1) == a6(=0x6c) and falls through when s1(=a1) != a6(=0x6c).
  The `beq` at 0x2cd8 is taken when s1(=a1) == a7(=0x68) and falls through when s1(=a1) != a7(=0x68).
  The `beq` at 0x2ce0 is taken when s1(=a1) == t0(=0x6e) and falls through when s1(=a1) != t0(=0x6e).
  The `beq` at 0x2cf0 is taken when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) == s0(=entry(sym(GfxDev))) and falls through when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) != s0(=entry(sym(GfxDev))).
  The `beq` at 0x2d14 is taken when t3(=[ret(gthread_find)+24]:8) == 0 and falls through when t3(=[ret(gthread_find)+24]:8) != 0.
  The `beq` at 0x2d24 is taken when (t8(=[entry(sym(GfxDev))+4]) & 0x8) == 0 and falls through when (t8(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `bne` at 0x2da0 is taken when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) and falls through when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `bne` at 0x2db8 is taken when at(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) and falls through when at(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` at 0x2e10 is taken when s1(=a1) == a0(=0x6a) and falls through when s1(=a1) != a0(=0x6a).
  The `beq` at 0x2e18 is taken when s1(=a1) == a1(=0x6b) and falls through when s1(=a1) != a1(=0x6b).
  The `beq` at 0x2e20 is taken when s1(=a1) == a2(=0x6d) and falls through when s1(=a1) != a2(=0x6d).
  The `beq` at 0x2e28 is taken when s1(=a1) == a4(=0x6f) and falls through when s1(=a1) != a4(=0x6f).
  The `beq` at 0x2e64 is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0 and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` at 0x2e7c is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0 and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `bne` at 0x2e94 is taken when (a6(=[entry(sym(GfxDev))+4]) & 0x8) != 0 and falls through when (a6(=[entry(sym(GfxDev))+4]) & 0x8) == 0.
  The `beq` at 0x2ea0 is taken when a7(=[ret(gthread_find)+24]:8) == 0 and falls through when a7(=[ret(gthread_find)+24]:8) != 0.
  The `beq` at 0x2eb4 is taken when v0(=ret(threadgroup_refcnt)) == t0(=0x1) and falls through when v0(=ret(threadgroup_refcnt)) != t0(=0x1).
  The `beq` at 0x2eec is taken when v0(=ret(copyin_xlate)) == 0 and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` at 0x2f0c is taken when v0(=ret(copyin)) == 0 and falls through when v0(=ret(copyin)) != 0.
  The `beq` at 0x2f64 is taken when v0(=ret(copyin_xlate)) == 0 and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` at 0x2f9c is taken when v0(=ret(copyin_xlate)) == 0 and falls through when v0(=ret(copyin_xlate)) != 0.
  The `bne` at 0x2fb4 is taken when v0(=ret(drv_priv)) != 0 and falls through when v0(=ret(drv_priv)) == 0.
  The `beq` at 0x2ff4 is taken when v0(=ret(copyin_xlate)) == 0 and falls through when v0(=ret(copyin_xlate)) != 0.
  The `bne` at 0x300c is taken when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) and falls through when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` at 0x3038 is taken when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) == 0 and falls through when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) != 0.
  The `beq` at 0x306c is taken when (a2(=[entry(sym(GfxDev))+4]) & 0x1) == 0 and falls through when (a2(=[entry(sym(GfxDev))+4]) & 0x1) != 0.
  The `bne` at 0x308c is taken when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) and falls through when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `bne` at 0x30b8 is taken when v0(?) < a5(=[sym(GfxNumberOfBoards)]) (unsigned) and falls through when v0(?) >= a5(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `bne` at 0x30d0 is taken when a0(?) < a6(=[sym(GfxNumberOfBoards)]) (unsigned) and falls through when a0(?) >= a6(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `bne` at 0x3108 is taken when v0(?) < a2(=[sym(GfxNumberOfBoards)]) (unsigned) and falls through when v0(?) >= a2(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `bne` at 0x3120 is taken when v0(?) < a3(=[sym(GfxNumberOfBoards)]) (unsigned) and falls through when v0(?) >= a3(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `bne` at 0x3140 is taken when a4(=entry(sym(GfxBoards))) != 0 and falls through when a4(=entry(sym(GfxBoards))) == 0.
  The `beq` at 0x3160 is taken when v0(=entry(sym(GfxBoards))) == 0 and falls through when v0(=entry(sym(GfxBoards))) != 0.
  The `beq` at 0x318c is taken when a2(=entry(sym(GfxBoards))) == 0 and falls through when a2(=entry(sym(GfxBoards))) != 0.
  The `beq` at 0x3198 is taken when a4(=[entry(sym(GfxDev))+32]:8) == 0 and falls through when a4(=[entry(sym(GfxDev))+32]:8) != 0.
  The `bne` at 0x31b8 is taken when a2(=entry(sym(GfxBoards))) != 0 and falls through when a2(=entry(sym(GfxBoards))) == 0.
  The `beq` at 0x31e0 is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0 and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` at 0x31f8 is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0 and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` at 0x3220 is taken when a6(=[[entry(sym(GfxDev))+40]:8+104]) == 0 and falls through when a6(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` at 0x3238 is taken when t0(=[[entry(sym(GfxDev))+40]:8+104]) != 0 and falls through when t0(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` at 0x32a4 is taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  The `beq` at 0x3320 is taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  The `bne` at 0x3340 is taken when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0 and falls through when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `bne` at 0x3358 is taken when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0 and falls through when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  Returns with v0 = ? at `jr` at 0x2d44.

- `gfxioctl` (`usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`, 0x2b94, 2004 bytes) Inferred.
  Loads 2 bytes from abs 0xffffffffffffc428 into `a5` (`lh` at 0x2bd0).
  Loads 8 bytes from sym(gfxinfo) +0x0 into `a4` (`ld` at 0x2bd4).
  Loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0xc into `a3` (`lw` at 0x2be0).
  Stores 4 bytes from `a3` to ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0xc (`sw` at 0x2bf4).
  Loads 4 bytes from sym(GfxDevLimit) +0x0 into `at` (`lw` at 0x2c00).
  Loads 8 bytes from sym(.srdata) +0x28 into `s0` (`ld` at 0x2c14).
  Loads 8 bytes from table(sym(GfxDev)) +0x0 into `s0` (`ld` at 0x2c20).
  Performs 6 4-byte loads from entry(sym(GfxDev)) +0x4, including `lw` at 0x2c34, `lw` at 0x2d1c, `lw` at 0x2dd8.
  Loads 8 bytes from ret(gthread_find) +0x18 into `v0` (`ld` at 0x2c40).
  Performs 2 8-byte loads from ret(gthread_find) +0x0, including `ld` at 0x2c4c, `ld` at 0x2eac.
  Loads 8 bytes from entry(sym(GfxDev)) +0x10 into `at` (`ld` at 0x2c50).
  Performs 5 4-byte loads from sym(GfxNumberOfBoards) +0x0, including `lw` at 0x2c80, `lw` at 0x30b0, `lw` at 0x30c8.
  Performs 7 8-byte loads from entry(sym(GfxDev)) +0x20, including `ld` at 0x2cb0, `ld` at 0x2dc0, `ld` at 0x3030.
  Performs 3 8-byte loads from entry(sym(GfxDev)) +0x8, including `ld` at 0x2ce8, `ld` at 0x3338, `ld` at 0x3350.
  Performs 3 8-byte loads from [entry(sym(GfxDev))+8]:8 +0x10, including `ld` at 0x2cec, `ld` at 0x333c, `ld` at 0x3354.
  Performs 2 4-byte stores to a5 (arg5 at entry) +0x0, including `sw` at 0x2d0c, `sw` at 0x3178.
  Performs 4 8-byte loads from ret(gthread_find) +0x18, including `ld` at 0x2d10, `ld` at 0x2df4, `ld` at 0x2e9c.
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc8 into `t9` (`ld` at 0x2d5c).
  Loads 8 bytes from entry(sym(GfxDev)) +0x48 into `a1` (`ld` at 0x2d74).
  Performs 17 8-byte loads from entry(sym(GfxDev)) +0x28, including `ld` at 0x2d8c, `ld` at 0x2d98, `ld` at 0x2db0.
  Performs 3 8-byte loads from entry(sym(GfxDev)) +0x30, including `ld` at 0x2d94, `ld` at 0x2dac, `ld` at 0x2de0.
  Loads 8 bytes from [entry(sym(GfxDev))+40]:8 +0x48 into `ra` (`ld` at 0x2d9c).
  Loads 8 bytes from [entry(sym(GfxDev))+40]:8 +0x48 into `at` (`ld` at 0x2db4).
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x60 into `v0` (`ld` at 0x2dc4).
  Performs 2 4-byte stores to entry(sym(GfxDev)) +0x4, including `sw` at 0x2dec, `sw` at 0x2fc8.
  Loads 8 bytes from sym(.srdata) +0x0 into `a2` (`ld` at 0x2e30).
  Performs 2 8-byte stores to [entry(sym(GfxDev))+40]:8 +0x48, including `sd` at 0x2e58, `sd` at 0x31d4.
  Performs 2 4-byte loads from [entry(sym(GfxDev))+40]:8 +0x68, including `lw` at 0x2e60, `lw` at 0x31dc.
  Performs 2 4-byte loads from [entry(sym(GfxDev))+40]:8 +0x68, including `lw` at 0x2e78, `lw` at 0x31f4.
  Loads 8 bytes from sym(.srdata) +0x58 into `a3` (`ld` at 0x2ee0).
  Performs 2 8-byte loads from sym(.srdata) +0x50, including `ld` at 0x2f58, `ld` at 0x2f90.
  Loads 8 bytes from sym(.srdata) +0x48 into `a3` (`ld` at 0x2fe8).
  Performs 2 8-byte loads from [entry(sym(GfxDev))+40]:8 +0x48, including `ld` at 0x3008, `ld` at 0x3088.
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x18 into `t3` (`ld` at 0x3014).
  Stores 4 bytes from `zero` to [entry(sym(GfxDev))+40]:8 +0x80 (`sw` at 0x302c).
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc0 into `a1` (`ld` at 0x3034).
  Stores 8 bytes from `zero` to [entry(sym(GfxDev))+40]:8 +0x48 (`sd` at 0x304c).
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x28 into `a4` (`ld` at 0x3094).
  Performs 4 8-byte loads from sym(.srdata) +0x8, including `ld` at 0x30bc, `ld` at 0x30d4, `ld` at 0x310c.
  Loads 8 bytes from [entry(sym(GfxDev))+8]:8 +0x0 into `a1` (`ld` at 0x30e0).
  Loads 8 bytes from table(sym(GfxBoards)) +0x0 into `a4` (`ld` at 0x313c).
  Loads 8 bytes from table(sym(GfxBoards)) +0x0 into `v0` (`ld` at 0x315c).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x8 into `a0` (`ld` at 0x3168).
  Performs 2 8-byte loads from table(sym(GfxBoards)) +0x0, including `ld` at 0x3188, `ld` at 0x31b4.
  Stores 8 bytes from `s0` to [entry(sym(GfxDev))+40]:8 +0x48 (`sd` at 0x3214).
  Loads 4 bytes from [entry(sym(GfxDev))+40]:8 +0x68 into `a6` (`lw` at 0x321c).
  Loads 4 bytes from [entry(sym(GfxDev))+40]:8 +0x68 into `t0` (`lw` at 0x3234).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x38 into `t1` (`ld` at 0x3248).
  Loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x0 into `t1` (`ld` at 0x324c).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x40 into `a0` (`ld` at 0x3260).
  Performs 4 8-byte stores to entry(sym(GfxDev)) +0x8, including `sd` at 0x326c, `sd` at 0x32b8, `sd` at 0x32e8.
  Performs 2 8-byte loads from entry(sym(GfxBoards)) +0x40, including `ld` at 0x3270, `ld` at 0x32f4.
  Performs 4 8-byte stores to entry(sym(GfxDev)) +0x28, including `sd` at 0x3274, `sd` at 0x32b0, `sd` at 0x32f8.
  Performs 2 8-byte loads from entry(sym(GfxBoards)) +0x38, including `ld` at 0x3278, `ld` at 0x32ec.
  Performs 4 8-byte stores to entry(sym(GfxDev)) +0x20, including `sd` at 0x327c, `sd` at 0x32ac, `sd` at 0x32f0.
  Loads 8 bytes from table(sym(GfxBoards)) +0x0 into `t2` (`ld` at 0x328c).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x38 into `t2` (`ld` at 0x3290).
  Loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x8 into `t2` (`ld` at 0x3294).
  Loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x20 into `t9` (`ld` at 0x32c0).
  Loads 8 bytes from table(sym(GfxBoards)) +0x0 into `at` (`ld` at 0x3308).
  Loads 8 bytes from entry(sym(GfxBoards)) +0x38 into `at` (`ld` at 0x330c).
  Loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x8 into `at` (`ld` at 0x3310).
  Performs 2 8-byte stores to [entry(sym(GfxDev))+8]:8 +0x10, including `sd` at 0x334c, `sd` at 0x3364.
  Calls `curthreadhandle` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2bbc).
  Calls `gthread_find` via direct with a0=ret(curthreadhandle), a1=?, a2=?, a3=? (`jal` at 0x2bc8).
  Calls `psema` via direct with a0=entry(sym(GfxDev))+80, a1=0x19, a2=0x1ffff, a3=[([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5))+12]+1, a4=([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)), a5=([-0x3bd8]:2 << 0x5) (`jal` at 0x2c70).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=[entry(sym(GfxDev))+72]:8, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a5 at entry (arg5) (`jalr` at 0x2d70).
  Calls `ddv_unlock` via direct with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=? (`jal` at 0x2d90).
  Calls `ddv_lock` via direct with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=? (`jal` at 0x2da8).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=0x0, a2=-0x1, a3=? (`jalr` at 0x2dd0).
  Calls `ddv_unlock` via direct with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=? (`jal` at 0x2de8).
  Calls `RRM_Dispatch` via direct with a0=entry(sym(GfxDev)), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a5 at entry (arg5) (`jal` at 0x2e00).
  Calls `cmn_err_tag` via direct with a0=0x850, a1=0x4, a2=sym(.rodata), a3=a1 at entry (arg1), a4=0x6f, a6=0x6c, a7=0x68 (`jal` at 0x2e3c).
  Calls `psema` via direct with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=?, a3=? (`jal` at 0x2e4c).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x2e6c).
  Calls `threadgroup_refcnt` via direct with a0=[ret(gthread_find)]:8, a1=0x67, a2=0x70, a3=0x71, a7=[ret(gthread_find)+24]:8 (`jal` at 0x2ea8).
  Calls `curproc_abi` via direct with a0=0x69, a1=?, a2=?, a3=? (`jal` at 0x2ec4).
  Calls `copyin_xlate` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x18, a3=sym(irix5_to_gfx_getboardinfo_args), a4=ret(curproc_abi), a5=0x4, a6=0x1 (`jal` at 0x2ee4).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-72, a2=0x4, a3=? (`jal` at 0x2f04).
  Calls `vsema` via direct with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=? (`jal` at 0x2f1c).
  Calls `GfxDetach` via direct with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=? (`jal` at 0x2f2c).
  Calls `curproc_abi` via direct with a0=0x69, a1=0x67, a2=0x70, a3=? (`jal` at 0x2f3c).
  Calls `copyin_xlate` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1 (`jal` at 0x2f5c).
  Calls `curproc_abi` via direct with a0=0x69, a1=0x67, a2=0x70, a3=0x71 (`jal` at 0x2f74).
  Calls `copyin_xlate` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1 (`jal` at 0x2f94).
  Calls `drv_priv` via direct with a0=a4 at entry (arg4), a1=0x67, a2=0x70, a3=0x71 (`jal` at 0x2fac).
  Calls `curproc_abi` via direct with a0=entry(sym(GfxDev)), a1=0x67, a2=0x70, a3=0x71, a6=0x6c, a7=0x68 (`jal` at 0x2fcc).
  Calls `copyin_xlate` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x28, a3=sym(irix5_to_gfx_download_args), a4=ret(curproc_abi), a5=0x4, a6=0x1 (`jal` at 0x2fec).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=? (`jalr` at 0x3018).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3028).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=[[entry(sym(GfxDev))+32]:8+192]:8, a2=?, a3=? (`jalr` at 0x3040).
  Calls `vsema` via direct with a0=[entry(sym(GfxDev))+40]:8+56, a1=[entry(sym(GfxDev))+40]:8, a2=?, a3=? (`jal` at 0x3054).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x305c).
  Calls `rrmUnMapGfx` via direct with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=? (`jal` at 0x3074).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?, a4=[[entry(sym(GfxDev))+32]:8+40]:8 (`jalr` at 0x3098).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=[[entry(sym(GfxDev))+8]:8]:8+16, a2=0x10, a3=[entry(sym(GfxDev))+8]:8, a4=0x6f, a6=0x6c, a7=0x68 (`jal` at 0x30ec).
  Calls `psema` via direct with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[entry(sym(GfxDev))+8]:8, a6=0x6c, a7=0x68 (`jal` at 0x31c8).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x31e8).
  Calls `psema` via direct with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[[entry(sym(GfxDev))+40]:8+72]:8, a6=0x6c, a7=0x68 (`jal` at 0x3208).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x3228).
  Calls `(unknown callee)` via register with a0=[entry(sym(GfxBoards))+64]:8, a1=?, a2=?, a3=a5 at entry (arg5), a4=entry(sym(GfxBoards)) (`jalr` at 0x325c).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards) (`jalr` at 0x329c).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=sp-112, a2=?, a3=? (`jalr` at 0x32c8).
  Calls `(unknown callee)` via register with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards), a4=[entry(sym(GfxDev))+32]:8 (`jalr` at 0x3318).
  The `beq` at 0x2c0c is taken when a1(?) >= at(=[sym(GfxDevLimit)]) (signed) and falls through when a1(?) < at(=[sym(GfxDevLimit)]) (signed).
  The `beq` at 0x2c24 is taken when s0(=entry(sym(GfxDev))) == 0 and falls through when s0(=entry(sym(GfxDev))) != 0.
  The `beq` at 0x2c2c is taken when v0(=ret(gthread_find)) == 0 and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` at 0x2c3c is taken when (t9(=[entry(sym(GfxDev))+4]) & 0x8) == 0 and falls through when (t9(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` at 0x2c44 is taken when v0(=[ret(gthread_find)+24]:8) == 0 and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` at 0x2c54 is taken when ra(=[ret(gthread_find)]:8) == at(=[entry(sym(GfxDev))+16]:8) and falls through when ra(=[ret(gthread_find)]:8) != at(=[entry(sym(GfxDev))+16]:8).
  The `beq` at 0x2c64 is taken when v0(=[ret(gthread_find)+24]:8) == 0 and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` at 0x2c7c is taken when s1(=a1) == v0(=0x65) and falls through when s1(=a1) != v0(=0x65).
  The `beq` at 0x2c88 is taken when s1(=a1) == v1(=0x66) and falls through when s1(=a1) != v1(=0x66).
  The `beq` at 0x2c90 is taken when s1(=a1) == a0(=0x69) and falls through when s1(=a1) != a0(=0x69).
  The `beq` at 0x2c98 is taken when s1(=a1) == a1(=0x67) and falls through when s1(=a1) != a1(=0x67).
  The `beq` at 0x2ca0 is taken when s1(=a1) == a2(=0x70) and falls through when s1(=a1) != a2(=0x70).
  The `beq` at 0x2ca8 is taken when s1(=a1) == a3(=0x71) and falls through when s1(=a1) != a3(=0x71).
  The `beq` at 0x2cb4 is taken when v0(=[entry(sym(GfxDev))+32]:8) == 0 and falls through when v0(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` at 0x2cbc is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x2cc4 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x2cd0 is taken when s1(=a1) == a6(=0x6c) and falls through when s1(=a1) != a6(=0x6c).
  The `beq` at 0x2cd8 is taken when s1(=a1) == a7(=0x68) and falls through when s1(=a1) != a7(=0x68).
  The `beq` at 0x2ce0 is taken when s1(=a1) == t0(=0x6e) and falls through when s1(=a1) != t0(=0x6e).
  The `beq` at 0x2cf0 is taken when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) == s0(=entry(sym(GfxDev))) and falls through when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) != s0(=entry(sym(GfxDev))).
  The `beq` at 0x2d14 is taken when t3(=[ret(gthread_find)+24]:8) == 0 and falls through when t3(=[ret(gthread_find)+24]:8) != 0.
  The `beq` at 0x2d24 is taken when (t8(=[entry(sym(GfxDev))+4]) & 0x8) == 0 and falls through when (t8(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `bne` at 0x2da0 is taken when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) and falls through when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `bne` at 0x2db8 is taken when at(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) and falls through when at(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` at 0x2e10 is taken when s1(=a1) == a0(=0x6a) and falls through when s1(=a1) != a0(=0x6a).
  The `beq` at 0x2e18 is taken when s1(=a1) == a1(=0x6b) and falls through when s1(=a1) != a1(=0x6b).
  The `beq` at 0x2e20 is taken when s1(=a1) == a2(=0x6d) and falls through when s1(=a1) != a2(=0x6d).
  The `beq` at 0x2e28 is taken when s1(=a1) == a4(=0x6f) and falls through when s1(=a1) != a4(=0x6f).
  The `beq` at 0x2e64 is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0 and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` at 0x2e7c is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0 and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `bne` at 0x2e94 is taken when (a6(=[entry(sym(GfxDev))+4]) & 0x8) != 0 and falls through when (a6(=[entry(sym(GfxDev))+4]) & 0x8) == 0.
  The `beq` at 0x2ea0 is taken when a7(=[ret(gthread_find)+24]:8) == 0 and falls through when a7(=[ret(gthread_find)+24]:8) != 0.
  The `beq` at 0x2eb4 is taken when v0(=ret(threadgroup_refcnt)) == t0(=0x1) and falls through when v0(=ret(threadgroup_refcnt)) != t0(=0x1).
  The `beq` at 0x2eec is taken when v0(=ret(copyin_xlate)) == 0 and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` at 0x2f0c is taken when v0(=ret(copyin)) == 0 and falls through when v0(=ret(copyin)) != 0.
  The `beq` at 0x2f64 is taken when v0(=ret(copyin_xlate)) == 0 and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` at 0x2f9c is taken when v0(=ret(copyin_xlate)) == 0 and falls through when v0(=ret(copyin_xlate)) != 0.
  The `bne` at 0x2fb4 is taken when v0(=ret(drv_priv)) != 0 and falls through when v0(=ret(drv_priv)) == 0.
  The `beq` at 0x2ff4 is taken when v0(=ret(copyin_xlate)) == 0 and falls through when v0(=ret(copyin_xlate)) != 0.
  The `bne` at 0x300c is taken when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) and falls through when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` at 0x3038 is taken when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) == 0 and falls through when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) != 0.
  The `beq` at 0x306c is taken when (a2(=[entry(sym(GfxDev))+4]) & 0x1) == 0 and falls through when (a2(=[entry(sym(GfxDev))+4]) & 0x1) != 0.
  The `bne` at 0x308c is taken when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) and falls through when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `bne` at 0x30b8 is taken when v0(?) < a5(=[sym(GfxNumberOfBoards)]) (unsigned) and falls through when v0(?) >= a5(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `bne` at 0x30d0 is taken when a0(?) < a6(=[sym(GfxNumberOfBoards)]) (unsigned) and falls through when a0(?) >= a6(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `bne` at 0x3108 is taken when v0(?) < a2(=[sym(GfxNumberOfBoards)]) (unsigned) and falls through when v0(?) >= a2(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `bne` at 0x3120 is taken when v0(?) < a3(=[sym(GfxNumberOfBoards)]) (unsigned) and falls through when v0(?) >= a3(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `bne` at 0x3140 is taken when a4(=entry(sym(GfxBoards))) != 0 and falls through when a4(=entry(sym(GfxBoards))) == 0.
  The `beq` at 0x3160 is taken when v0(=entry(sym(GfxBoards))) == 0 and falls through when v0(=entry(sym(GfxBoards))) != 0.
  The `beq` at 0x318c is taken when a2(=entry(sym(GfxBoards))) == 0 and falls through when a2(=entry(sym(GfxBoards))) != 0.
  The `beq` at 0x3198 is taken when a4(=[entry(sym(GfxDev))+32]:8) == 0 and falls through when a4(=[entry(sym(GfxDev))+32]:8) != 0.
  The `bne` at 0x31b8 is taken when a2(=entry(sym(GfxBoards))) != 0 and falls through when a2(=entry(sym(GfxBoards))) == 0.
  The `beq` at 0x31e0 is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0 and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` at 0x31f8 is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0 and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` at 0x3220 is taken when a6(=[[entry(sym(GfxDev))+40]:8+104]) == 0 and falls through when a6(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` at 0x3238 is taken when t0(=[[entry(sym(GfxDev))+40]:8+104]) != 0 and falls through when t0(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` at 0x32a4 is taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  The `beq` at 0x3320 is taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  The `bne` at 0x3340 is taken when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0 and falls through when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `bne` at 0x3358 is taken when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0 and falls through when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  Returns with v0 = ? at `jr` at 0x2d44.

- `sndrv_ioctl_common` (`usr/cpu/sysgen/IP35boot/kernel.o`, 0x1d00, 1016 bytes) Inferred.
  Loads 8 bytes from sym(.srdata) +0x38 into `v0` (`ld` at 0x1d14).
  Loads 8 bytes from (sym(.rodata)+304 + (a1 << 0x3)) +0x0 into `a0` (`ld` at 0x1d34).
  Calls `(unknown callee)` via register with a0=[(sym(.rodata)+304 + (a1 << 0x3))]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x1d38).
  The `beq` at 0x1d2c is taken when a1 >= 0x1b (unsigned) and falls through when a1 < 0x1b (unsigned).
  The `beq` at 0x1d84 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1d8c is taken when condition not analyzed and falls through when condition not analyzed.
  The `bne` at 0x1dd0 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1dd8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bne` at 0x1dec is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1df8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1e00 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bne` at 0x1e38 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1e40 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bne` at 0x1e58 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1e60 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1e88 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1e90 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1ea8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1eb0 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1eb8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1ee0 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1ee8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1f04 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1f0c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1f88 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1fcc is taken when condition not analyzed and falls through when condition not analyzed.
  The `bne` at 0x1fe0 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1fe8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1ffc is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x200c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2014 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2038 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2040 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2064 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2074 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2080 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2088 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bltz` at 0x2090 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x2098 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x20a8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x20b0 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x20b8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x20d0 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x20d8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x20e0 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x20f0 is taken when condition not analyzed and falls through when condition not analyzed -> end of routine.
  Returns with v0 = 0x16 at `jr` at 0x1d6c.

- `glXChooseVisual` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd80e650, 2716 bytes) Inferred.
  Loads 4 bytes from a2 (arg2 at entry) +0x0 into `v1` (`lw` at 0xd80e730).
  Performs 23 4-byte loads from ? (base unknown), including `lw` at 0xd80e75c, `lw` at 0xd80e778, `lw` at 0xd80e7b0.
  Performs 2 4-byte loads from abs 0xd8458f4, including `lw` at 0xd80e794, `lw` at 0xd80ec70.
  Loads 4 bytes from table(0xd840e84) +0x0 into `t9` (`lw` at 0xd80e7a0).
  Loads 4 bytes from abs 0xd845d00 into `t9` (`lw` at 0xd80e954).
  Loads 4 bytes from a0 (arg0 at entry) +0x88 into `t8` (`lw` at 0xd80e9bc).
  Loads 4 bytes from ret(__glXInitialize) +0x20 into `t9` (`lw` at 0xd80e9cc).
  Performs 4 4-byte loads from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x4, including `lw` at 0xd80e9e4, `lw` at 0xd80ea48, `lw` at 0xd80f058.
  Performs 27 4-byte loads from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x8, including `lw` at 0xd80e9ec, `lw` at 0xd80eb2c, `lw` at 0xd80eb68.
  Performs 30 4-byte loads from ? (base unknown), including `lw` at 0xd80ea08, `lw` at 0xd80ea60, `lw` at 0xd80ea70.
  Performs 3 1-byte loads from ? (base unknown), including `lbu` at 0xd80ea9c, `lbu` at 0xd80eab4, `lbu` at 0xd80eac8.
  Performs 13 4-byte loads from abs 0xd8458e8, including `lw` at 0xd80eaf0, `lw` at 0xd80eb30, `lw` at 0xd80eb6c.
  Loads 4 bytes from table(0xd840f24) +0x0 into `t9` (`lw` at 0xd80ec7c).
  Loads 4 bytes from abs 0xd8458ec into `t9` (`lw` at 0xd80eef8).
  Loads 4 bytes from ? (base unknown) into `t9` (`lw` at 0xd80f094).
  Loads 4 bytes from abs 0xd845ce0 into `t9` (`lw` at 0xd80f0a4).
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd80e994).
  Calls `AuxScore [0xd811c34]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd80eaf8).
  Calls `sampleBuffersScore [0xd8125e4]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd80eb40).
  Calls `SampleScore [0xd810484]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd80eb7c).
  Calls `ColorScore [0xd80ff2c]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd80ed44).
  Calls `ColorScore [0xd80ff2c]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd80ed7c).
  Calls `ColorScore [0xd80ff2c]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd80edb4).
  Calls `ColorScore [0xd80ff2c]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd80edec).
  Calls `AccumScore [0xd80ff48]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd80ee24).
  Calls `AccumScore [0xd80ff48]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd80ee5c).
  Calls `AccumScore [0xd80ff48]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd80ee94).
  Calls `AccumScore [0xd80ff48]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd80eecc).
  Calls `IndexScore [0xd826c7c]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd80ef04).
  Calls `DepthScore [0xd81163c]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd80ef3c).
  Calls `StencilScore [0xd8125dc]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd80ef74).
  Calls `__glXOverrideVisualGetVisualInfo` via got with a0=a0 at entry (arg0), a1=0x3, a2=sp-212, a3=sp-4 (`jalr` at 0xd80f0b0).
  The `beq` at 0xd80e728 is taken when a2 == 0 and falls through when a2 != 0.
  The `beq` at 0xd80e73c is taken when v1(=[a2]) == 0 and falls through when v1(=[a2]) != 0.
  The `bne` at 0xd80e750 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `beql` at 0xd80e758 is taken when v1(?) == a0(=0x186a1) and falls through when v1(?) != a0(=0x186a1).
  Its delay slot runs only when the branch at 0xd80e758 is taken and is annulled on fall-through.
  The `bnel` at 0xd80e76c is taken when v0(?) < 0x29 (signed) and falls through when v0(?) >= 0x29 (signed).
  Its delay slot runs only when the branch at 0xd80e76c is taken and is annulled on fall-through.
  The `beql` at 0xd80e774 is taken when v0(?) == a1(=0x186a0) and falls through when v0(?) != a1(=0x186a0).
  Its delay slot runs only when the branch at 0xd80e774 is taken and is annulled on fall-through.
  The `beq` at 0xd80e78c is taken when t9(?) >= 0x28 (unsigned) and falls through when t9(?) < 0x28 (unsigned).
  The `blez` at 0xd80e89c is taken when t6(?) <= 0 (signed) and falls through when t6(?) > 0 (signed).
  The `bne` at 0xd80e8a4 is taken when s7(?) != 0 and falls through when s7(?) == 0.
  The `beq` at 0xd80e940 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `bnel` at 0xd80e94c is taken when v1(?) != 0 and falls through when v1(?) == 0.
  Its delay slot runs only when the branch at 0xd80e94c is taken and is annulled on fall-through.
  The `bne` at 0xd80e99c is taken when v0(=ret(__glXInitialize)) != 0 and falls through when v0(=ret(__glXInitialize)) == 0.
  The `bltz` at 0xd80e9b4 is taken when t6(=a1) < 0 (signed) and falls through when t6(=a1) >= 0 (signed).
  The `bnel` at 0xd80e9c8 is taken when t6(=a1) < t8(=[a0+136]) (signed) and falls through when t6(=a1) >= t8(=[a0+136]) (signed).
  Its delay slot runs only when the branch at 0xd80e9c8 is taken and is annulled on fall-through.
  The `bnel` at 0xd80e9e8 is taken when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+4]) != 0 and falls through when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+4]) == 0.
  Its delay slot runs only when the branch at 0xd80e9e8 is taken and is annulled on fall-through.
  The `blezl` at 0xd80ea00 is taken when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+8]) <= 0 (signed) and falls through when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+8]) > 0 (signed).
  Its delay slot runs only when the branch at 0xd80ea00 is taken and is annulled on fall-through.
  The `beql` at 0xd80ea18 is taken when t8(?) >= v0(?) (signed) and falls through when t8(?) < v0(?) (signed).
  Its delay slot runs only when the branch at 0xd80ea18 is taken and is annulled on fall-through.
  The `bne` at 0xd80ea28 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `blez` at 0xd80ea40 is taken when t9(?) <= 0 (signed) and falls through when t9(?) > 0 (signed).
  The `blez` at 0xd80ea54 is taken when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+8]) <= 0 (signed) and falls through when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+8]) > 0 (signed).
  The `bnel` at 0xd80ea68 is taken when t6(?) != t8(?) and falls through when t6(?) == t8(?).
  Its delay slot runs only when the branch at 0xd80ea68 is taken and is annulled on fall-through.
  The `beq` at 0xd80ea7c is taken when v0(?) == at(=0x4) and falls through when v0(?) != at(=0x4).
  The `bnel` at 0xd80ea84 is taken when v0(?) != at(=0x3) and falls through when v0(?) == at(=0x3).
  Its delay slot runs only when the branch at 0xd80ea84 is taken and is annulled on fall-through.
  The `bnel` at 0xd80ea94 is taken when t7(?) != t9(?) and falls through when t7(?) == t9(?).
  Its delay slot runs only when the branch at 0xd80ea94 is taken and is annulled on fall-through.
  The `bne` at 0xd80eaac is taken when t9(?) != 0 and falls through when t9(?) == 0.
  The `bne` at 0xd80eac0 is taken when t6(?) != t9(?) and falls through when t6(?) == t9(?).
  The `bnel` at 0xd80ead4 is taken when t6(?) != t8(?) and falls through when t6(?) == t8(?).
  Its delay slot runs only when the branch at 0xd80ead4 is taken and is annulled on fall-through.
  The `bne` at 0xd80eae8 is taken when a1(?) < t9(?) (signed) and falls through when a1(?) >= t9(?) (signed).
  The `bne` at 0xd80eb10 is taken when v0(?) < s7(?) (unsigned) and falls through when v0(?) >= s7(?) (unsigned).
  The `bne` at 0xd80eb18 is taken when s7(?) != 0 and falls through when s7(?) == 0.
  The `beq` at 0xd80eb20 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0xd80eb5c is taken when v0(?) >= t6(?) (unsigned) and falls through when v0(?) < t6(?) (unsigned).
  The `beq` at 0xd80eb90 is taken when t8(?) == 0 and falls through when t8(?) != 0.
  The `beq` at 0xd80eba4 is taken when t7(?) == t9(?) and falls through when t7(?) != t9(?).
  The `bne` at 0xd80ebb4 is taken when t6(?) != at(=0x8008) and falls through when t6(?) == at(=0x8008).
  The `beq` at 0xd80ebc8 is taken when t8(?) == 0 and falls through when t8(?) != 0.
  The `beq` at 0xd80ebd4 is taken when t7(?) == t9(?) and falls through when t7(?) != t9(?).
  The `beq` at 0xd80ebe4 is taken when t6(?) == 0 and falls through when t6(?) != 0.
  The `beql` at 0xd80ebf0 is taken when t8(?) == t7(?) and falls through when t8(?) != t7(?).
  Its delay slot runs only when the branch at 0xd80ebf0 is taken and is annulled on fall-through.
  The `beql` at 0xd80ec08 is taken when t9(?) == 0 and falls through when t9(?) != 0.
  Its delay slot runs only when the branch at 0xd80ec08 is taken and is annulled on fall-through.
  The `beql` at 0xd80ec14 is taken when t6(?) == t8(?) and falls through when t6(?) != t8(?).
  Its delay slot runs only when the branch at 0xd80ec14 is taken and is annulled on fall-through.
  The `bnel` at 0xd80ec28 is taken when t7(?) != at(=0x8009) and falls through when t7(?) == at(=0x8009).
  Its delay slot runs only when the branch at 0xd80ec28 is taken and is annulled on fall-through.
  The `beql` at 0xd80ec38 is taken when t9(?) == 0 and falls through when t9(?) != 0.
  Its delay slot runs only when the branch at 0xd80ec38 is taken and is annulled on fall-through.
  The `beql` at 0xd80ec44 is taken when t6(?) == t8(?) and falls through when t6(?) != t8(?).
  Its delay slot runs only when the branch at 0xd80ec44 is taken and is annulled on fall-through.
  The `beq` at 0xd80ec58 is taken when t7(?) == 0 and falls through when t7(?) != 0.
  The `beql` at 0xd80ec68 is taken when t9(?) >= 0x6 (unsigned) and falls through when t9(?) < 0x6 (unsigned).
  Its delay slot runs only when the branch at 0xd80ec68 is taken and is annulled on fall-through.
  The `beq` at 0xd80ecbc is taken when t6(?) == s3(?) and falls through when t6(?) != s3(?).
  The `beql` at 0xd80eccc is taken when s8(=one of 0x0, 0x1) == 0 and falls through when s8(=one of 0x0, 0x1) != 0.
  Its delay slot runs only when the branch at 0xd80eccc is taken and is annulled on fall-through.
  The `beq` at 0xd80ecdc is taken when v0(?) == at(=0x4) and falls through when v0(?) != at(=0x4).
  The `beq` at 0xd80ece4 is taken when v0(?) == at(=0x5) and falls through when v0(?) != at(=0x5).
  The `beq` at 0xd80ecfc is taken when v0(?) == at(=0x3) and falls through when v0(?) != at(=0x3).
  The `beq` at 0xd80ed04 is taken when v0(?) == at(=0x2) and falls through when v0(?) != at(=0x2).
  The `beq` at 0xd80ed14 is taken when s8(=one of 0x0, 0x1) == 0 and falls through when s8(=one of 0x0, 0x1) != 0.
  The `beq` at 0xd80ed28 is taken when a1(?) >= t8(?) (signed) and falls through when a1(?) < t8(?) (signed).
  The `beq` at 0xd80ed60 is taken when a1(?) >= t7(?) (signed) and falls through when a1(?) < t7(?) (signed).
  The `beq` at 0xd80ed98 is taken when a1(?) >= t9(?) (signed) and falls through when a1(?) < t9(?) (signed).
  The `beq` at 0xd80edd0 is taken when a1(?) >= t6(?) (signed) and falls through when a1(?) < t6(?) (signed).
  The `beq` at 0xd80ee08 is taken when a1(?) >= t8(?) (signed) and falls through when a1(?) < t8(?) (signed).
  The `beq` at 0xd80ee40 is taken when a1(?) >= t7(?) (signed) and falls through when a1(?) < t7(?) (signed).
  The `beq` at 0xd80ee78 is taken when a1(?) >= t9(?) (signed) and falls through when a1(?) < t9(?) (signed).
  The `beq` at 0xd80eeb0 is taken when a1(?) >= t6(?) (signed) and falls through when a1(?) < t6(?) (signed).
  The `beq` at 0xd80eee8 is taken when a1(?) >= t8(?) (signed) and falls through when a1(?) < t8(?) (signed).
  The `beq` at 0xd80ef20 is taken when a1(?) >= t7(?) (signed) and falls through when a1(?) < t7(?) (signed).
  The `beq` at 0xd80ef58 is taken when a1(?) >= t9(?) (signed) and falls through when a1(?) < t9(?) (signed).
  The `beq` at 0xd80ef88 is taken when t6(?) == 0 and falls through when t6(?) != 0.
  The `beq` at 0xd80ef94 is taken when t8(?) == t7(?) and falls through when t8(?) != t7(?).
  The `beq` at 0xd80efac is taken when t9(?) == 0 and falls through when t9(?) != 0.
  The `bne` at 0xd80efbc is taken when t6(?) != at(=0x8000) and falls through when t6(?) == at(=0x8000).
  The `bne` at 0xd80efd8 is taken when t8(?) != 0 and falls through when t8(?) == 0.
  The `beq` at 0xd80efe8 is taken when t7(?) == at(=0x8000) and falls through when t7(?) != at(=0x8000).
  The `bltz` at 0xd80eff8 is taken when s6(?) < 0 (signed) and falls through when s6(?) >= 0 (signed).
  The `beql` at 0xd80f000 is taken when at(?) == 0 and falls through when at(?) != 0.
  Its delay slot runs only when the branch at 0xd80f000 is taken and is annulled on fall-through.
  The `bne` at 0xd80f01c is taken when s4(?) < v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+8]) (signed) and falls through when s4(?) >= v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+8]) (signed).
  The `bltzl` at 0xd80f024 is taken when s6(?) < 0 (signed) and falls through when s6(?) >= 0 (signed).
  Its delay slot runs only when the branch at 0xd80f024 is taken and is annulled on fall-through.
  The `bne` at 0xd80f044 is taken when t7(?) != 0 and falls through when t7(?) == 0.
  The `bnel` at 0xd80f054 is taken when t8(?) < t9(?) (signed) and falls through when t8(?) >= t9(?) (signed).
  Its delay slot runs only when the branch at 0xd80f054 is taken and is annulled on fall-through.
  The `bgez` at 0xd80f06c is taken when s6(?) >= 0 (signed) and falls through when s6(?) < 0 (signed).
  Returns with v0 = ? at `jr` at 0xd80f0e4.

- `AccumScore` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd80ff48, 1340 bytes) Inferred.
  The `beq` at 0xd80ff48 is taken when a0 == 0 and falls through when a0 != 0.
  Returns with v0 = ? at `jr` at 0xd80ff50, `jr` at 0xd80ff58.

- `SampleScore` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd810484, 1616 bytes) Inferred.
  The `beq` at 0xd810488 is taken when a0 >= a1 (signed) and falls through when a0 < a1 (signed).
  The `bne` at 0xd810498 is taken when a1 != a0 and falls through when a1 == a0.
  Returns with v0 = ? at `jr` at 0xd810490.
  Returns with v0 = (a1 << 0x6) at `jr` at 0xd8104a0.
  Returns with v0 = 0x0 at `jr` at 0xd8104a8.

- `AllocAndFetchScreenConfigs` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd810cc4, 1808 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x88 into `s6` (`lw` at 0xd810cf8).
  Loads 4 bytes from abs 0xd845a7c into `t9` (`lw` at 0xd810cfc).
  Loads 4 bytes from abs 0xd845ad4 into `t9` (`lw` at 0xd810d28).
  Stores 4 bytes from `s5` to a1 (arg1 at entry) +0x20 (`sw` at 0xd810d40).
  Performs 2 4-byte loads from a1 (arg1 at entry) +0x10, including `lw` at 0xd810d4c, `lw` at 0xd810e5c.
  Performs 2 4-byte loads from a1 (arg1 at entry) +0x14, including `lw` at 0xd810d5c, `lw` at 0xd810e68.
  Loads 4 bytes from abs 0xd845cf8 into `t9` (`lw` at 0xd810d6c).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `a1` (`lw` at 0xd810d70).
  Performs 5 4-byte loads from abs 0xd8458f4, including `lw` at 0xd810d8c, `lw` at 0xd810d90, `lw` at 0xd810db8.
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0xd810d94).
  Stores 1 byte from `t8` to ? (base unknown) (`sb` at 0xd810db4).
  Performs 4 4-byte loads from abs 0xd8458e8, including `lw` at 0xd810ddc, `lw` at 0xd810e1c, `lw` at 0xd810e78.
  Performs 4 4-byte loads from abs 0xd8458ec, including `lw` at 0xd810dfc, `lw` at 0xd810e3c, `lw` at 0xd810e98.
  Calls `malloc` via got with a0=([a0+136] << 0x5), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd810d0c).
  Calls `memset` via got with a0=ret(malloc), a1=0x0, a2=([a0+136] << 0x5), a3=? (`jalr` at 0xd810d34).
  Calls `__glXQueryServerString` via got with a0=a0 at entry (arg0), a1=[a1+4], a2=?, a3=0x3 (`jalr` at 0xd810d78).
  Calls `checkExtension [0xd838914]` via register-constant with a0=0xd841894, a1=ret(__glXQueryServerString), a2=?, a3=? (`jalr` at 0xd810da0).
  Calls `checkExtension [0xd838914]` via register-constant with a0=0xd8418b0, a1=ret(__glXQueryServerString), a2=?, a3=? (`jalr` at 0xd810dc8).
  Calls `GetBoardNumber [0xd811418]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jalr` at 0xd810dec).
  Calls `FreeScreenConfigs [0xd81f210]` via register-constant with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xd810e08).
  Calls `GetVisualConfigs [0xd80e030]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jalr` at 0xd810e2c).
  Calls `FreeScreenConfigs [0xd81f210]` via register-constant with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xd810e48).
  Calls `GetFBConfigs [0xd80d940]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jalr` at 0xd810e88).
  Calls `FreeScreenConfigs [0xd81f210]` via register-constant with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xd810ea4).
  Calls `GetFBConfigsSGIX [0xd838214]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jalr` at 0xd810ed0).
  Calls `FreeScreenConfigs [0xd81f210]` via register-constant with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xd810eec).
  Calls `OverrideVisuals [0xd811c3c]` via register-constant with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xd810f18).
  The `bne` at 0xd810d18 is taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  The `blez` at 0xd810d44 is taken when s6(=[a0+136]) <= 0 (signed) and falls through when s6(=[a0+136]) > 0 (signed).
  The `blez` at 0xd810d54 is taken when t6(=[a1+16]) <= 0 (signed) and falls through when t6(=[a1+16]) > 0 (signed).
  The `blez` at 0xd810d64 is taken when t7(=[a1+20]) <= 0 (signed) and falls through when t7(=[a1+20]) > 0 (signed).
  The `beq` at 0xd810d84 is taken when v0(=ret(__glXQueryServerString)) == 0 and falls through when v0(=ret(__glXQueryServerString)) != 0.
  The `beq` at 0xd810da8 is taken when v0(=ret(checkExtension)) == 0 and falls through when v0(=ret(checkExtension)) != 0.
  The `beq` at 0xd810dd0 is taken when v0(=ret(checkExtension)) == 0 and falls through when v0(=ret(checkExtension)) != 0.
  The `bne` at 0xd810df4 is taken when v0(=ret(GetBoardNumber)) != 0 and falls through when v0(=ret(GetBoardNumber)) == 0.
  The `bne` at 0xd810e34 is taken when v0(=ret(GetVisualConfigs)) != 0 and falls through when v0(=ret(GetVisualConfigs)) == 0.
  The `blez` at 0xd810e60 is taken when t9(=[a1+16]) <= 0 (signed) and falls through when t9(=[a1+16]) > 0 (signed).
  The `bne` at 0xd810e70 is taken when t0(=[a1+20]) < 0x3 (signed) and falls through when t0(=[a1+20]) >= 0x3 (signed).
  The `bne` at 0xd810e90 is taken when v0(=ret(GetFBConfigs)) != 0 and falls through when v0(=ret(GetFBConfigs)) == 0.
  The `beql` at 0xd810eb8 is taken when s4(=one of 0x0, 0x1) == 0 and falls through when s4(=one of 0x0, 0x1) != 0.
  Its delay slot runs only when the branch at 0xd810eb8 is taken and is annulled on fall-through.
  The `bne` at 0xd810ed8 is taken when v0(=ret(GetFBConfigsSGIX)) != 0 and falls through when v0(=ret(GetFBConfigsSGIX)) == 0.
  The `bne` at 0xd810f04 is taken when s1(?) != s6(=[a0+136]) and falls through when s1(?) == s6(=[a0+136]).
  Returns with v0 = one of 0x0, 0x1 at `jr` at 0xd810f48.

- `OverrideVisuals` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd811c3c, 2464 bytes) Inferred.
  Loads 4 bytes from abs 0xd845a74 into `t9` (`lw` at 0xd811c50).
  Performs 7 4-byte loads from abs 0xd8458f4, including `lw` at 0xd811c58, `lw` at 0xd811ca8, `lw` at 0xd811d3c.
  Loads 4 bytes from abs 0xd845b84 into `t9` (`lw` at 0xd811ca0).
  Loads 4 bytes from abs 0xd845924 into `at` (`lw` at 0xd811ca4).
  Stores 4 bytes from `v0` to abs 0xd846770 (`sw` at 0xd811cb0).
  Loads 4 bytes from abs 0xd845a54 into `t9` (`lw` at 0xd811cc8).
  Performs 4 4-byte loads from abs 0xd845a58, including `lw` at 0xd811ce0, `lw` at 0xd811d80, `lw` at 0xd812188.
  Loads 4 bytes from abs 0xd845bb4 into `t9` (`lw` at 0xd811cf0).
  Loads 4 bytes from a0 (arg0 at entry) +0x20 into `t0` (`lw` at 0xd811cf4).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `a0` (`lw` at 0xd811cf8).
  Performs 5 4-byte stores to ? (base unknown), including `sw` at 0xd811d14, `sw` at 0xd811e74, `sw` at 0xd811ea0.
  Performs 2 4-byte loads from abs 0xd845b88, including `lw` at 0xd811d18, `lw` at 0xd812010.
  Performs 2 4-byte loads from abs 0xd845b8c, including `lw` at 0xd811d38, `lw` at 0xd812068.
  Performs 3 4-byte loads from abs 0xd845a4c, including `lw` at 0xd811d5c, `lw` at 0xd812160, `lw` at 0xd812560.
  Performs 3 4-byte loads from abs 0xd8459b4, including `lw` at 0xd811d60, `lw` at 0xd812164, `lw` at 0xd812564.
  Performs 12 4-byte loads from ? (base unknown), including `lw` at 0xd811d94, `lw` at 0xd811d98, `lw` at 0xd811df8.
  Performs 8 4-byte loads from ? (base unknown), including `lw` at 0xd811dbc, `lw` at 0xd811dcc, `lw` at 0xd811de4.
  Performs 5 4-byte stores to ? (base unknown), including `sw` at 0xd811df0, `sw` at 0xd812444, `sw` at 0xd81244c.
  Stores 4 bytes from `t1` to ? (base unknown) (`sw` at 0xd811e18).
  Performs 2 4-byte loads from abs 0xd845a70, including `lw` at 0xd811e38, `lw` at 0xd811f6c.
  Performs 2 4-byte loads from abs 0xd845a7c, including `lw` at 0xd811e58, `lw` at 0xd811f94.
  Performs 2 4-byte loads from abs 0xd845b90, including `lw` at 0xd811e7c, `lw` at 0xd811fbc.
  Performs 6 4-byte loads from ? (base unknown), including `lw` at 0xd811ed8, `lw` at 0xd811ee8, `lw` at 0xd811ef8.
  Stores 4 bytes from `t4` to ? (base unknown) (`sw` at 0xd811f20).
  Stores 4 bytes from `t8` to ? (base unknown) (`sw` at 0xd811f4c).
  Performs 26 4-byte stores to ? (base unknown), including `sw` at 0xd812198, `sw` at 0xd81219c, `sw` at 0xd8121a8.
  Performs 10 1-byte stores to ? (base unknown), including `sb` at 0xd8121bc, `sb` at 0xd8121c0, `sb` at 0xd812210.
  Performs 8 8-byte stores to ? (base unknown), including `sdc1` at 0xd812298, `sdc1` at 0xd8122a4, `sdc1` at 0xd8122b0.
  Performs 2 1-byte loads from ? (base unknown), including `lbu` at 0xd812338, `lbu` at 0xd812340.
  Performs 5 4-byte loads from ? (base unknown), including `lw` at 0xd81237c, `lw` at 0xd812438, `lw` at 0xd812448.
  Loads 4 bytes from ? (base unknown) into `t7` (`lw` at 0xd8123b8).
  Performs 22 4-byte stores to ? (base unknown), including `sw` at 0xd81246c, `sw` at 0xd812470, `sw` at 0xd812480.
  Loads 1 byte from ? (base unknown) into `t1` (`lbu` at 0xd812478).
  Loads 4 bytes from ? (base unknown) into `t1` (`lw` at 0xd8124e8).
  Loads 4 bytes from ? (base unknown) into `t8` (`lw` at 0xd812528).
  Calls `getenv` via got with a0=0xd8418f4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd811c8c).
  Calls `fopen` via got with a0=ret(getenv), a1=0xd841904, a2=?, a3=? (`jalr` at 0xd811cb4).
  Calls `perror` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd811cd0).
  Calls `exit` via got with a0=0x1, a1=?, a2=?, a3=? (`jalr` at 0xd811ce4).
  Calls `glXGetClientString` via got with a0=[a0], a1=0x3, a2=?, a3=? (`jalr` at 0xd811d00).
  Calls `fgets` via got with a0=sp-1040, a1=0x400, a2=?, a3=? (`jalr` at 0xd811d24).
  Calls `sscanf` via got with a0=sp-1040, a1=0xd841908, a2=sp-1052, a3=? (`jalr` at 0xd811d40).
  Calls `fprintf` via got with a0=sym(__iob)+32, a1=0xd84190c, a2=?, a3=? (`jalr` at 0xd811d70).
  Calls `exit` via got with a0=0x1, a1=?, a2=?, a3=? (`jalr` at 0xd811d84).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd811e40).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd811e60).
  Calls `bzero` via got with a0=ret(malloc), a1=?, a2=?, a3=? (`jalr` at 0xd811e88).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd811f74).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd811fa0).
  Calls `bzero` via got with a0=ret(malloc), a1=?, a2=?, a3=? (`jalr` at 0xd811fc8).
  Calls `fgets` via got with a0=sp-1040, a1=0x400, a2=?, a3=? (`jalr` at 0xd81201c).
  Calls `sscanf` via got with a0=sp-1040, a1=0xd841940, a2=sp-5248, a3=sp-5244 (`jalr` at 0xd8120f8).
  Calls `fprintf` via got with a0=sym(__iob)+32, a1=0xd841984, a2=?, a3=? (`jalr` at 0xd812178).
  Calls `exit` via got with a0=0x1, a1=?, a2=?, a3=? (`jalr` at 0xd81218c).
  Calls `fprintf` via got with a0=sym(__iob)+32, a1=0xd8419bc, a2=?, a3=? (`jalr` at 0xd812574).
  Calls `exit` via got with a0=0x1, a1=?, a2=?, a3=? (`jalr` at 0xd812588).
  The `beq` at 0xd811c98 is taken when v0(=ret(getenv)) == 0 and falls through when v0(=ret(getenv)) != 0.
  The `bne` at 0xd811cc0 is taken when v0(=ret(fopen)) != 0 and falls through when v0(=ret(fopen)) == 0.
  The `bgtz` at 0xd811d54 is taken when a3(?) > 0 (signed) and falls through when a3(?) <= 0 (signed).
  The `blez` at 0xd811da8 is taken when v1(?) <= 0 (signed) and falls through when v1(?) > 0 (signed).
  The `bnel` at 0xd811dc4 is taken when t6(?) != 0 and falls through when t6(?) == 0.
  Its delay slot runs only when the branch at 0xd811dc4 is taken and is annulled on fall-through.
  The `bne` at 0xd811dd4 is taken when a0(=0x3) != v0(?) and falls through when a0(=0x3) == v0(?).
  The `beq` at 0xd811ddc is taken when at(?) == 0 and falls through when at(?) != 0.
  The `bne` at 0xd811dfc is taken when a1(=0x4) != v0(?) and falls through when a1(=0x4) == v0(?).
  The `beq` at 0xd811e04 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `bne` at 0xd811e28 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `beq` at 0xd811ebc is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `blez` at 0xd811ecc is taken when v1(?) <= 0 (signed) and falls through when v1(?) > 0 (signed).
  The `bnel` at 0xd811ee0 is taken when t2(?) != 0 and falls through when t2(?) == 0.
  Its delay slot runs only when the branch at 0xd811ee0 is taken and is annulled on fall-through.
  The `beql` at 0xd811ef0 is taken when (t3(?) & 0x1) == 0 and falls through when (t3(?) & 0x1) != 0.
  Its delay slot runs only when the branch at 0xd811ef0 is taken and is annulled on fall-through.
  The `bne` at 0xd811f00 is taken when a0(=0x8004) != v0(?) and falls through when a0(=0x8004) == v0(?).
  The `beq` at 0xd811f0c is taken when s5(?) >= 0x100 (signed) and falls through when s5(?) < 0x100 (signed).
  The `bne` at 0xd811f30 is taken when v0(?) != at(=0x8002) and falls through when v0(?) == at(=0x8002).
  The `beq` at 0xd811f38 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `bne` at 0xd811f5c is taken when at(?) != 0 and falls through when at(?) == 0.
  The `blez` at 0xd812004 is taken when a3(?) <= 0 (signed) and falls through when a3(?) > 0 (signed).
  The `bne` at 0xd812024 is taken when v0(=ret(fgets)) != 0 and falls through when v0(=ret(fgets)) == 0.
  The `beq` at 0xd812040 is taken when t2(?) == at(=0x23) and falls through when t2(?) != at(=0x23).
  The `beq` at 0xd812104 is taken when v0(=ret(sscanf)) == at(=0x13) and falls through when v0(=ret(sscanf)) != at(=0x13).
  The `beq` at 0xd812110 is taken when v0(=ret(sscanf)) == at(=0x14) and falls through when v0(=ret(sscanf)) != at(=0x14).
  The `beq` at 0xd812118 is taken when v0(=ret(sscanf)) == at(=0x16) and falls through when v0(=ret(sscanf)) != at(=0x16).
  The `bnel` at 0xd81220c is taken when 0 < v1(?) (signed) and falls through when 0 >= v1(?) (signed).
  Its delay slot runs only when the branch at 0xd81220c is taken and is annulled on fall-through.
  The `bnel` at 0xd81221c is taken when 0 < v1(?) (signed) and falls through when 0 >= v1(?) (signed).
  Its delay slot runs only when the branch at 0xd81221c is taken and is annulled on fall-through.
  The `bc1t` at 0xd812308 is taken when f8 == f16 (c.eq.d at 0xd812300) and falls through when not (f8 == f16 (c.eq.d at 0xd812300)).
  The `bne` at 0xd812314 is taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  The `bc1tl` at 0xd812334 is taken when f18 == f6 (c.eq.d at 0xd81232c) and falls through when not (f18 == f6 (c.eq.d at 0xd81232c)).
  Its delay slot runs only when the branch at 0xd812334 is taken and is annulled on fall-through.
  The `beq` at 0xd812348 is taken when t8(?) == 0 and falls through when t8(?) != 0.
  The `bne` at 0xd812350 is taken when s7(?) != 0 and falls through when s7(?) == 0.
  The `bne` at 0xd81238c is taken when s6(?) != 0 and falls through when s6(?) == 0.
  The `beq` at 0xd812424 is taken when s1(?) == 0 and falls through when s1(?) != 0.
  The `bne` at 0xd812454 is taken when t4(?) != t2(?) and falls through when t4(?) == t2(?).
  The `beq` at 0xd8124ac is taken when t1(?) == 0 and falls through when t1(?) != 0.
  The `bne` at 0xd8124b8 is taken when s5(?) != 0 and falls through when s5(?) == 0.
  The `bne` at 0xd8124f8 is taken when s4(?) != 0 and falls through when s4(?) == 0.
  The `bne` at 0xd812550 is taken when s3(?) < a3(?) (signed) and falls through when s3(?) >= a3(?) (signed).
  The `beq` at 0xd812558 is taken when s3(?) == a3(?) and falls through when s3(?) != a3(?).
  Returns with v0 = ? at `jr` at 0xd8125bc.

- `sampleBuffersScore` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8125e4, 132 bytes) Inferred.
  Returns with v0 = ? at `jr` at 0xd8125e4.

- `isLocal` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd812668, 51392 bytes) Inferred.
  Loads 4 bytes from abs 0xd845924 into `t8` (`lw` at 0xd812678).
  Loads 4 bytes from a0 (arg0 at entry) +0x108 into `v0` (`lw` at 0xd812688).
  Loads 4 bytes from [a0+264] +0x8 into `a0` (`lw` at 0xd812698).
  Performs 5 4-byte loads from ? (base unknown), including `lw` at 0xd81269c, `lw` at 0xd8126ac, `lw` at 0xd8126b4.
  Performs 5 4-byte stores to ? (base unknown), including `sw` at 0xd8126a8, `sw` at 0xd8126b0, `sw` at 0xd8126bc.
  Loads 4 bytes from abs 0xd845a68 into `t9` (`lw` at 0xd8126d4).
  Performs 2 4-byte loads from abs 0xd8458f0, including `lw` at 0xd812714, `lw` at 0xd8127b0.
  Loads 4 bytes from abs 0xd845a4c into `t9` (`lw` at 0xd812738).
  Loads 4 bytes from abs 0xd8459b4 into `a0` (`lw` at 0xd81273c).
  Loads 4 bytes from abs 0xd8458f4 into `a1` (`lw` at 0xd812740).
  Loads 4 bytes from abs 0xd845a60 into `t9` (`lw` at 0xd81275c).
  Loads 4 bytes from ? (base unknown) into `v0` (`lw` at 0xd81279c).
  Calls `getpeername` via got with a0=[[a0+264]+8], a1=sp-24, a2=sp-556, a3=a3 at entry (arg3) (`jalr` at 0xd8126e4).
  Calls `isNotProxy [0xd8342dc]` via register-constant with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd812720).
  Calls `fprintf` via got with a0=sym(__iob)+32, a1=0xd840d14, a2=?, a3=? (`jalr` at 0xd812748).
  Calls `ioctl` via got with a0=?, a1=0xffffffffc0086914, a2=sp-32, a3=? (`jalr` at 0xd812778).
  Calls `isNotProxy [0xd8342dc]` via register-constant with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8127bc).
  The `bne` at 0xd8126b8 is taken when t8(?) != t1(=0xd8441f8) and falls through when t8(?) == t1(=0xd8441f8).
  The `beq` at 0xd8126f8 is taken when a2(?) == at(=0x1) and falls through when a2(?) != at(=0x1).
  The `beq` at 0xd812704 is taken when a2(?) == at(=0x2) and falls through when a2(?) != at(=0x2).
  The `beq` at 0xd812790 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `bne` at 0xd8127a8 is taken when v0(?) != a3(?) and falls through when v0(?) == a3(?).
  The `bne` at 0xd8127cc is taken when at(?) != 0 and falls through when at(?) == 0.
  Returns with v0 = ? at `jr` at 0xd8127e0.

- `__glx_TexParameterfv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81318c, 216 bytes) Inferred.
  Loads 4 bytes from abs 0xd845bf0 into `t9` (`lw` at 0xd81319c).
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8131c4).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd8131d8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd8131e4).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8131e8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8131ec).
  Stores 4 bytes from `t8` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8131f8).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd813200).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd813204).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd813220).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd813234).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd813238).
  Calls `__glXTexParameterfv_size` via got with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8131b8).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexParameterfv_size) << 0x2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd813210).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd813244).
  The `beq` at 0xd813230 is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd81325c.

- `__glx_TexParameteriv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8132ec, 216 bytes) Inferred.
  Loads 4 bytes from abs 0xd845bf4 into `t9` (`lw` at 0xd8132fc).
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd813324).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd813338).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd813344).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd813348).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81334c).
  Stores 4 bytes from `t8` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd813358).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd813360).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd813364).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd813380).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd813394).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd813398).
  Calls `__glXTexParameteriv_size` via got with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd813318).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexParameteriv_size) << 0x2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd813370).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd8133a4).
  The `beq` at 0xd813390 is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd8133bc.

- `__glx_PopName` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd813748, 108 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd813754).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd813764).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd813770).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd813774).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd813778).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81377c).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd813784).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd813794).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd813798).
  The `beql` at 0xd81378c is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+4) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+4) (unsigned).
  Its delay slot runs only when the branch at 0xd81378c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8137ac.

- `__glx_LightModeli` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd814010, 124 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81401c).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd81402c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd814038).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81403c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd814040).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd814044).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd814048).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81404c).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd814054).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd814064).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276] (`jalr` at 0xd814070).
  The `beql` at 0xd81405c is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81405c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd814084.

- `__glx_LightModelfv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81408c, 200 bytes) Inferred.
  Loads 4 bytes from abs 0xd845c08 into `t9` (`lw` at 0xd81409c).
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8140bc).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd8140d0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd8140dc).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8140e0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8140e4).
  Stores 4 bytes from `t8` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8140f0).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd8140f4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t1` (`lw` at 0xd814110).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd814124).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd814128).
  Calls `__glXLightModelfv_size` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8140b0).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+8, a1=a1 at entry (arg1), a2=(ret(__glXLightModelfv_size) << 0x2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd814100).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd814134).
  The `beq` at 0xd814120 is taken when t1(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t1(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd81414c.

- `__glx_TexEnvf` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd814154, 132 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd814160).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd814170).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd81417c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd814184).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd814188).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81418c).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd814190).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd814194).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd814198).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd8141a0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8141b0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[[0x1014]+276]+4]+16, a3=[[0x1014]+276] (`jalr` at 0xd8141bc).
  The `beql` at 0xd8141a8 is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd8141a8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8141d0.

- `__glx_TexEnvi` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8141d8, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8141e8).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd8141f8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd814204).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd814208).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81420c).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd814210).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd814214).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd814218).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81421c).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd814224).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd814234).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16 (`jalr` at 0xd814240).
  The `beql` at 0xd81422c is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81422c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd814258.

- `__glx_Lightf` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd814260, 132 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81426c).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd81427c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd814288).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd814290).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd814294).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd814298).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd81429c).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd8142a0).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8142a4).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd8142ac).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8142bc).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[[0x1014]+276]+4]+16, a3=[[0x1014]+276] (`jalr` at 0xd8142c8).
  The `beql` at 0xd8142b4 is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd8142b4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8142dc.

- `__glx_Hint` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8142e4, 124 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8142f0).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd814300).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd81430c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd814310).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd814314).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd814318).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd81431c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd814320).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd814328).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd814338).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276] (`jalr` at 0xd814344).
  The `beql` at 0xd814330 is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd814330 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd814358.

- `__glx_TexGeniv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd814360, 216 bytes) Inferred.
  Loads 4 bytes from abs 0xd845bec into `t9` (`lw` at 0xd814370).
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd814398).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd8143ac).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd8143b8).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8143bc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8143c0).
  Stores 4 bytes from `t8` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8143cc).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd8143d4).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd8143d8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd8143f4).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd814408).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81440c).
  Calls `__glXTexGeniv_size` via got with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81438c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexGeniv_size) << 0x2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd8143e4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd814418).
  The `beq` at 0xd814404 is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd814430.

- `__glx_FrontFace` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd814438, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd814444).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd814454).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd814460).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd814464).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd814468).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81446c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd814470).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd814478).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd814488).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd814490).
  The `beql` at 0xd814480 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd814480 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8144a4.

- `__glx_Fogiv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8144ac, 200 bytes) Inferred.
  Loads 4 bytes from abs 0xd845bd8 into `t9` (`lw` at 0xd8144bc).
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8144dc).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd8144f0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd8144fc).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd814500).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd814504).
  Stores 4 bytes from `t8` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd814510).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd814514).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t1` (`lw` at 0xd814530).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd814544).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd814548).
  Calls `__glXFogiv_size` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8144d0).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+8, a1=a1 at entry (arg1), a2=(ret(__glXFogiv_size) << 0x2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd814520).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd814554).
  The `beq` at 0xd814540 is taken when t1(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t1(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd81456c.

- `__glx_Fogi` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd814574, 124 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd814580).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd814590).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd81459c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8145a0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8145a4).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8145a8).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd8145ac).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8145b0).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd8145b8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8145c8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276] (`jalr` at 0xd8145d4).
  The `beql` at 0xd8145c0 is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd8145c0 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8145e8.

- `__glx_Materialiv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8145f0, 216 bytes) Inferred.
  Loads 4 bytes from abs 0xd845c14 into `t9` (`lw` at 0xd814600).
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd814628).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd81463c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd814648).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81464c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd814650).
  Stores 4 bytes from `t8` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81465c).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd814664).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd814668).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd814684).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd814698).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81469c).
  Calls `__glXMaterialiv_size` via got with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81461c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXMaterialiv_size) << 0x2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd814674).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd8146a8).
  The `beq` at 0xd814694 is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd8146c0.

- `__glx_TexEnviv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8146c8, 216 bytes) Inferred.
  Loads 4 bytes from abs 0xd845bfc into `t9` (`lw` at 0xd8146d8).
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd814700).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd814714).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd814720).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd814724).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd814728).
  Stores 4 bytes from `t8` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd814734).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd81473c).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd814740).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd81475c).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd814770).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd814774).
  Calls `__glXTexEnviv_size` via got with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8146f4).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexEnviv_size) << 0x2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd81474c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd814780).
  The `beq` at 0xd81476c is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd814798.

- `__glx_TexGend` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8147a0, 192 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8147b0).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd8147d0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd8147dc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8147e8).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8147ec).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd8147f0).
  Performs 2 4-byte stores to ? (base unknown), including `sw` at 0xd814814, `sw` at 0xd81481c.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t1` (`lw` at 0xd814820).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd814824).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd814834).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp+8, a2=0x8, a3=[[[0x1014]+276]+4] (`jalr` at 0xd8147fc).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd814840).
  The `beql` at 0xd81482c is taken when t1(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t1(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Its delay slot runs only when the branch at 0xd81482c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd814858.

- `__glx_TexGendv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd814860, 216 bytes) Inferred.
  Loads 4 bytes from abs 0xd845be4 into `t9` (`lw` at 0xd814870).
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd814898).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd8148ac).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd8148b8).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8148bc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8148c0).
  Stores 4 bytes from `t8` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8148cc).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd8148d4).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd8148d8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd8148f4).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd814908).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81490c).
  Calls `__glXTexGendv_size` via got with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81488c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexGendv_size) << 0x3), a3=[[[0x1014]+276]+4] (`jalr` at 0xd8148e4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd814918).
  The `beq` at 0xd814904 is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd814930.

- `__glx_TexGenf` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd814938, 132 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd814944).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd814954).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd814960).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd814968).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81496c).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd814970).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd814974).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd814978).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81497c).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd814984).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd814994).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[[0x1014]+276]+4]+16, a3=[[0x1014]+276] (`jalr` at 0xd8149a0).
  The `beql` at 0xd81498c is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81498c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8149b4.

- `__glx_TexGenfv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8149bc, 216 bytes) Inferred.
  Loads 4 bytes from abs 0xd845be8 into `t9` (`lw` at 0xd8149cc).
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8149f4).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd814a08).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd814a14).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd814a18).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd814a1c).
  Stores 4 bytes from `t8` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd814a28).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd814a30).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd814a34).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd814a50).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd814a64).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd814a68).
  Calls `__glXTexGenfv_size` via got with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8149e8).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexGenfv_size) << 0x2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd814a40).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd814a74).
  The `beq` at 0xd814a60 is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd814a8c.

- `__glx_Materiali` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd814a94, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd814aa4).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd814ab4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd814ac0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd814ac4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd814ac8).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd814acc).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd814ad0).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd814ad4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd814ad8).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd814ae0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd814af0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16 (`jalr` at 0xd814afc).
  The `beql` at 0xd814ae8 is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd814ae8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd814b14.

- `__glx_Vertex3d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd814b1c, 224 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd814b2c).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd814b44).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd814b50).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd814b5c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd814b60).
  Performs 3 4-byte loads from abs 0xd845ab4, including `lw` at 0xd814b64, `lw` at 0xd814b84, `lw` at 0xd814ba0.
  Loads 4 bytes from ? (base unknown) into `t9` (`lw` at 0xd814bbc).
  Stores 4 bytes from `s0` to ? (base unknown) (`sw` at 0xd814bc0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd814bd0).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[0x1014]+276] (`jalr` at 0xd814b70).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=? (`jalr` at 0xd814b8c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=? (`jalr` at 0xd814ba8).
  Calls `__glXFlushRenderBuffer` via got with a0=?, a1=[[[0x1014]+276]+4]+28, a2=?, a3=? (`jalr` at 0xd814bdc).
  The `beql` at 0xd814bc8 is taken when t9(?) >= s0(=[[[0x1014]+276]+4]+28) (unsigned) and falls through when t9(?) < s0(=[[[0x1014]+276]+4]+28) (unsigned).
  Its delay slot runs only when the branch at 0xd814bc8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd814bf4.

- `__glx_TexCoord1d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd814bfc, 160 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd814c0c).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd814c20).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd814c2c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd814c38).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd814c3c).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd814c40).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd814c58).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd814c6c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd814c70).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4] (`jalr` at 0xd814c4c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd814c7c).
  The `beq` at 0xd814c68 is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd814c94.

- `__glx_Rectsv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd814c9c, 148 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd814ca8).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd814cb8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd814cc4).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd814cc8).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd814ccc).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lh` at 0xd814cd0).
  Stores 2 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd814cd8).
  Loads 2 bytes from a0 (arg0 at entry) +0x2 into `t0` (`lh` at 0xd814cdc).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd814ce0).
  Loads 2 bytes from a1 (arg1 at entry) +0x0 into `t1` (`lh` at 0xd814ce4).
  Stores 2 bytes from `t1` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd814ce8).
  Loads 2 bytes from a1 (arg1 at entry) +0x2 into `t2` (`lh` at 0xd814cec).
  Stores 2 bytes from `t2` to [[[0x1014]+276]+4] +0xa (`sh` at 0xd814cf0).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t3` (`lw` at 0xd814cf4).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd814cf8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd814d08).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276] (`jalr` at 0xd814d14).
  The `beql` at 0xd814d00 is taken when t3(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t3(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd814d00 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd814d28.

- `__glx_Rects` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd814d30, 192 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd814d40).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd814d64).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd814d70).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd814d94).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd814d98).
  Stores 2 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd814d9c).
  Stores 2 bytes from `a1` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd814da0).
  Stores 2 bytes from `a2` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd814da4).
  Stores 2 bytes from `a3` to [[[0x1014]+276]+4] +0xa (`sh` at 0xd814da8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd814dac).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd814db4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd814dc4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=? (`jalr` at 0xd814dd0).
  The `beql` at 0xd814dbc is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd814dbc is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd814de8.

- `__glx_Rectiv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd814df0, 148 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd814dfc).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd814e0c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd814e18).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd814e1c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd814e20).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lw` at 0xd814e24).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd814e2c).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `t0` (`lw` at 0xd814e30).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd814e34).
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `t1` (`lw` at 0xd814e38).
  Stores 4 bytes from `t1` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd814e3c).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `t2` (`lw` at 0xd814e40).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd814e44).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t3` (`lw` at 0xd814e48).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd814e4c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd814e5c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[[0x1014]+276]+4]+20, a3=[[0x1014]+276] (`jalr` at 0xd814e68).
  The `beql` at 0xd814e54 is taken when t3(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t3(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd814e54 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd814e7c.

- `__glx_Rectdv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd814e84, 252 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd814e94).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd814eb0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd814ebc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd814ec4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd814ec8).
  Performs 4 4-byte loads from abs 0xd845ab4, including `lw` at 0xd814ecc, `lw` at 0xd814eec, `lw` at 0xd814f0c.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd814f3c).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd814f50).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd814f54).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=a3 at entry (arg3) (`jalr` at 0xd814ed8).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=? (`jalr` at 0xd814ef8).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=a1 at entry (arg1), a2=0x8, a3=? (`jalr` at 0xd814f14).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+28, a1=a1+8, a2=0x8, a3=? (`jalr` at 0xd814f34).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=? (`jalr` at 0xd814f60).
  The `beq` at 0xd814f4c is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  Returns with v0 = ? at `jr` at 0xd814f78.

- `__glx_Rectf` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd814f80, 140 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd814f90).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd814fa4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd814fb0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd814fb4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd814fb8).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd814fbc).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd814fc0).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd814fcc).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x10 (`swc1` at 0xd814fd4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd814fd8).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd814fdc).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd814fec).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd814ff0).
  The `beql` at 0xd814fe4 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd814fe4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd815004.

- `__glx_Rectfv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81500c, 148 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd815018).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd815028).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd815034).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd815038).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81503c).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `$f4` (`lwc1` at 0xd815040).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd815048).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `$f6` (`lwc1` at 0xd81504c).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd815050).
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `$f8` (`lwc1` at 0xd815054).
  Stores 4 bytes from `$f8` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd815058).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `$f10` (`lwc1` at 0xd81505c).
  Stores 4 bytes from `$f10` to [[[0x1014]+276]+4] +0x10 (`swc1` at 0xd815060).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd815064).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd815068).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd815078).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[[0x1014]+276]+4]+20, a3=[[0x1014]+276] (`jalr` at 0xd815084).
  The `beql` at 0xd815070 is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd815070 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd815098.

- `__glx_Recti` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8150a0, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8150b0).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd8150c4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd8150d0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8150d4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8150d8).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8150dc).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd8150e0).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd8150e4).
  Stores 4 bytes from `a3` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd8150e8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8150ec).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd8150f4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd815104).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd815110).
  The `beql` at 0xd8150fc is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd8150fc is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd815128.

- `__glx_TexCoord1dv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd815130, 156 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd815140).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd815150).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81515c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd815168).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81516c).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd815170).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd815188).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81519c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8151a0).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[[0x1014]+276]+4] (`jalr` at 0xd81517c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd8151ac).
  The `beq` at 0xd815198 is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd8151c4.

- `__glx_TexCoord2dv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8151cc, 188 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8151dc).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd8151f0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd8151fc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd815204).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd815208).
  Performs 2 4-byte loads from abs 0xd845ab4, including `lw` at 0xd81520c, `lw` at 0xd81522c.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd815244).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd815258).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81525c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[[0x1014]+276]+4] (`jalr` at 0xd815218).
  Calls `memcpy` via got with a0=?, a1=a0+8, a2=0x8, a3=? (`jalr` at 0xd815238).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd815268).
  The `beq` at 0xd815254 is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd815280.

- `__glx_TexCoord2d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd815288, 196 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd815298).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd8152b0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd8152bc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8152c8).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8152cc).
  Performs 2 4-byte loads from abs 0xd845ab4, including `lw` at 0xd8152d0, `lw` at 0xd8152f0.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd815308).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81531c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd815320).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4] (`jalr` at 0xd8152dc).
  Calls `memcpy` via got with a0=?, a1=sp+8, a2=0x8, a3=? (`jalr` at 0xd8152fc).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd81532c).
  The `beq` at 0xd815318 is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd815344.

- `__glx_TexCoord1sv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81534c, 120 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd815358).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd815368).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd815374).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd815378).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81537c).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lh` at 0xd815380).
  Stores 2 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd815388).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t0` (`lw` at 0xd81538c).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd815390).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8153a0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd8153a8).
  The `beql` at 0xd815398 is taken when t0(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t0(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd815398 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8153bc.

- `__glx_TexCoord1s` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8153c4, 128 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8153d4).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd8153e4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd8153f0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8153fc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd815400).
  Stores 2 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd815404).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd815408).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd815410).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd815420).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd815428).
  The `beql` at 0xd815418 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd815418 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81543c.

- `__glx_TexCoord1f` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd815444, 112 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd815450).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd815460).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81546c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd815470).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd815474).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd815478).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81547c).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd815484).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd815494).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd815498).
  The `beql` at 0xd81548c is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81548c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8154ac.

- `__glx_TexCoord1fv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8154b4, 120 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8154c0).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd8154d0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd8154dc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8154e0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8154e4).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `$f4` (`lwc1` at 0xd8154e8).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd8154f0).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8154f4).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd8154f8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd815508).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd815510).
  The `beql` at 0xd815500 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd815500 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd815524.

- `__glx_TexCoord1i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81552c, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd815538).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd815548).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd815554).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd815558).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81555c).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd815560).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd815564).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81556c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81557c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd815584).
  The `beql` at 0xd815574 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd815574 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd815598.

- `__glx_TexCoord1iv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8155a0, 120 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8155ac).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd8155bc).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd8155c8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8155cc).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8155d0).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lw` at 0xd8155d4).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8155dc).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t0` (`lw` at 0xd8155e0).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd8155e4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8155f4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd8155fc).
  The `beql` at 0xd8155ec is taken when t0(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t0(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd8155ec is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd815610.

- `__glx_Rectd` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd815618, 244 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd815628).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd815644).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd815650).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81565c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd815660).
  Performs 4 4-byte loads from abs 0xd845ab4, including `lw` at 0xd815664, `lw` at 0xd815680, `lw` at 0xd81569c.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8156c8).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd8156dc).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8156e0).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=a3 at entry (arg3) (`jalr` at 0xd81566c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=? (`jalr` at 0xd815688).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=? (`jalr` at 0xd8156a4).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+28, a1=sp+24, a2=0x8, a3=? (`jalr` at 0xd8156c0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=? (`jalr` at 0xd8156ec).
  The `beq` at 0xd8156d8 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  Returns with v0 = ? at `jr` at 0xd815704.

- `__glx_RasterPos3s` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81570c, 172 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81571c).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd815738).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd815744).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd815760).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd815764).
  Stores 2 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd815768).
  Stores 2 bytes from `a1` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd81576c).
  Stores 2 bytes from `a2` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd815770).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd815774).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81577c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81578c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12 (`jalr` at 0xd815798).
  The `beql` at 0xd815784 is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd815784 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8157b0.

- `__glx_RasterPos3iv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8157b8, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8157c4).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd8157d4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd8157e0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8157e4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8157e8).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lw` at 0xd8157ec).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8157f4).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `t0` (`lw` at 0xd8157f8).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd8157fc).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `t1` (`lw` at 0xd815800).
  Stores 4 bytes from `t1` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd815804).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd815808).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81580c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81581c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd815824).
  The `beql` at 0xd815814 is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd815814 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd815838.

- `__glx_RasterPos3i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd815840, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd815850).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd815860).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81586c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd815870).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd815874).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd815878).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd81587c).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd815880).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd815884).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81588c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81589c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16 (`jalr` at 0xd8158a8).
  The `beql` at 0xd815894 is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd815894 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8158c0.

- `__glx_RasterPos3fv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8158c8, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8158d4).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd8158e4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd8158f0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8158f4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8158f8).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `$f4` (`lwc1` at 0xd8158fc).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd815904).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `$f6` (`lwc1` at 0xd815908).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81590c).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `$f8` (`lwc1` at 0xd815910).
  Stores 4 bytes from `$f8` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd815914).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd815918).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81591c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81592c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd815934).
  The `beql` at 0xd815924 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd815924 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd815948.

- `__glx_RasterPos2sv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd815950, 128 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81595c).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81596c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd815978).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81597c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd815980).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lh` at 0xd815984).
  Stores 2 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd81598c).
  Loads 2 bytes from a0 (arg0 at entry) +0x2 into `t0` (`lh` at 0xd815990).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd815994).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t1` (`lw` at 0xd815998).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81599c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8159ac).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd8159b4).
  The `beql` at 0xd8159a4 is taken when t1(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t1(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd8159a4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8159c8.

- `__glx_RasterPos3d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8159d0, 224 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8159e0).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd8159f8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd815a04).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd815a10).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd815a14).
  Performs 3 4-byte loads from abs 0xd845ab4, including `lw` at 0xd815a18, `lw` at 0xd815a38, `lw` at 0xd815a54.
  Loads 4 bytes from ? (base unknown) into `t9` (`lw` at 0xd815a70).
  Stores 4 bytes from `s0` to ? (base unknown) (`sw` at 0xd815a74).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd815a84).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[0x1014]+276] (`jalr` at 0xd815a24).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=? (`jalr` at 0xd815a40).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=? (`jalr` at 0xd815a5c).
  Calls `__glXFlushRenderBuffer` via got with a0=?, a1=[[[0x1014]+276]+4]+28, a2=?, a3=? (`jalr` at 0xd815a90).
  The `beql` at 0xd815a7c is taken when t9(?) >= s0(=[[[0x1014]+276]+4]+28) (unsigned) and falls through when t9(?) < s0(=[[[0x1014]+276]+4]+28) (unsigned).
  Its delay slot runs only when the branch at 0xd815a7c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd815aa8.

- `__glx_RasterPos3dv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd815ab0, 224 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd815ac0).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd815ad4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd815ae0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd815ae8).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd815aec).
  Performs 3 4-byte loads from abs 0xd845ab4, including `lw` at 0xd815af0, `lw` at 0xd815b10, `lw` at 0xd815b30.
  Loads 4 bytes from ? (base unknown) into `t9` (`lw` at 0xd815b50).
  Stores 4 bytes from `s0` to ? (base unknown) (`sw` at 0xd815b54).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd815b64).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[0x1014]+276] (`jalr` at 0xd815afc).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=? (`jalr` at 0xd815b1c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=? (`jalr` at 0xd815b3c).
  Calls `__glXFlushRenderBuffer` via got with a0=?, a1=[[[0x1014]+276]+4]+28, a2=?, a3=? (`jalr` at 0xd815b70).
  The `beql` at 0xd815b5c is taken when t9(?) >= s0(=[[[0x1014]+276]+4]+28) (unsigned) and falls through when t9(?) < s0(=[[[0x1014]+276]+4]+28) (unsigned).
  Its delay slot runs only when the branch at 0xd815b5c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd815b88.

- `__glx_RasterPos3f` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd815b90, 128 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd815ba0).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd815bb0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd815bbc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd815bc0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd815bc4).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd815bc8).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd815bcc).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd815bd8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd815bdc).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd815be0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd815bf0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd815bf4).
  The `beql` at 0xd815be8 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd815be8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd815c08.

- `__glx_RasterPos3sv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd815c10, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd815c1c).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd815c2c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd815c38).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd815c3c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd815c40).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lh` at 0xd815c44).
  Stores 2 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd815c4c).
  Loads 2 bytes from a0 (arg0 at entry) +0x2 into `t0` (`lh` at 0xd815c50).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd815c54).
  Loads 2 bytes from a0 (arg0 at entry) +0x4 into `t1` (`lh` at 0xd815c58).
  Stores 2 bytes from `t1` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd815c5c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd815c60).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd815c64).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd815c74).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd815c7c).
  The `beql` at 0xd815c6c is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd815c6c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd815c90.

- `__glx_RasterPos4sv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd815c98, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd815ca4).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd815cb4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd815cc0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd815cc4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd815cc8).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lh` at 0xd815ccc).
  Stores 2 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd815cd4).
  Loads 2 bytes from a0 (arg0 at entry) +0x2 into `t0` (`lh` at 0xd815cd8).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd815cdc).
  Loads 2 bytes from a0 (arg0 at entry) +0x4 into `t1` (`lh` at 0xd815ce0).
  Stores 2 bytes from `t1` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd815ce4).
  Loads 2 bytes from a0 (arg0 at entry) +0x6 into `t2` (`lh` at 0xd815ce8).
  Stores 2 bytes from `t2` to [[[0x1014]+276]+4] +0xa (`sh` at 0xd815cec).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t3` (`lw` at 0xd815cf0).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd815cf4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd815d04).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd815d0c).
  The `beql` at 0xd815cfc is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd815cfc is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd815d20.

- `__glx_RasterPos4s` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd815d28, 192 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd815d38).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd815d5c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd815d68).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd815d8c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd815d90).
  Stores 2 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd815d94).
  Stores 2 bytes from `a1` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd815d98).
  Stores 2 bytes from `a2` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd815d9c).
  Stores 2 bytes from `a3` to [[[0x1014]+276]+4] +0xa (`sh` at 0xd815da0).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd815da4).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd815dac).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd815dbc).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=? (`jalr` at 0xd815dc8).
  The `beql` at 0xd815db4 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd815db4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd815de0.

- `__glx_RasterPos4iv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd815de8, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd815df4).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd815e04).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd815e10).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd815e14).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd815e18).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lw` at 0xd815e1c).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd815e24).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `t0` (`lw` at 0xd815e28).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd815e2c).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `t1` (`lw` at 0xd815e30).
  Stores 4 bytes from `t1` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd815e34).
  Loads 4 bytes from a0 (arg0 at entry) +0xc into `t2` (`lw` at 0xd815e38).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd815e3c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t3` (`lw` at 0xd815e40).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd815e44).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd815e54).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd815e5c).
  The `beql` at 0xd815e4c is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd815e4c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd815e70.

- `__glx_RasterPos4i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd815e78, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd815e88).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd815e9c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd815ea8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd815eac).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd815eb0).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd815eb4).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd815eb8).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd815ebc).
  Stores 4 bytes from `a3` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd815ec0).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd815ec4).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd815ecc).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd815edc).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd815ee8).
  The `beql` at 0xd815ed4 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd815ed4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd815f00.

- `__glx_RasterPos4d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd815f08, 244 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd815f18).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd815f34).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd815f40).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd815f4c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd815f50).
  Performs 4 4-byte loads from abs 0xd845ab4, including `lw` at 0xd815f54, `lw` at 0xd815f70, `lw` at 0xd815f8c.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd815fb8).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd815fcc).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd815fd0).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=a3 at entry (arg3) (`jalr` at 0xd815f5c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=? (`jalr` at 0xd815f78).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=? (`jalr` at 0xd815f94).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+28, a1=sp+24, a2=0x8, a3=? (`jalr` at 0xd815fb0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=? (`jalr` at 0xd815fdc).
  The `beq` at 0xd815fc8 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  Returns with v0 = ? at `jr` at 0xd815ff4.

- `__glx_RasterPos4dv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd815ffc, 252 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81600c).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd816024).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd816030).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd816038).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81603c).
  Performs 4 4-byte loads from abs 0xd845ab4, including `lw` at 0xd816040, `lw` at 0xd816060, `lw` at 0xd816080.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8160b4).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd8160c8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8160cc).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=a3 at entry (arg3) (`jalr` at 0xd81604c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=? (`jalr` at 0xd81606c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=? (`jalr` at 0xd81608c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+28, a1=a0+24, a2=0x8, a3=? (`jalr` at 0xd8160ac).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=? (`jalr` at 0xd8160d8).
  The `beq` at 0xd8160c4 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  Returns with v0 = ? at `jr` at 0xd8160f0.

- `__glx_RasterPos4f` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8160f8, 140 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816108).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd81611c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd816128).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81612c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd816130).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd816134).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd816138).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd816144).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x10 (`swc1` at 0xd81614c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd816150).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd816154).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd816164).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd816168).
  The `beql` at 0xd81615c is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd81615c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81617c.

- `__glx_RasterPos4fv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816184, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816190).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd8161a0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd8161ac).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8161b0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8161b4).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `$f4` (`lwc1` at 0xd8161b8).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd8161c0).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `$f6` (`lwc1` at 0xd8161c4).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd8161c8).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `$f8` (`lwc1` at 0xd8161cc).
  Stores 4 bytes from `$f8` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd8161d0).
  Loads 4 bytes from a0 (arg0 at entry) +0xc into `$f10` (`lwc1` at 0xd8161d4).
  Stores 4 bytes from `$f10` to [[[0x1014]+276]+4] +0x10 (`swc1` at 0xd8161d8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8161dc).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd8161e0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8161f0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd8161f8).
  The `beql` at 0xd8161e8 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd8161e8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81620c.

- `__glx_TexCoord2f` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816214, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816220).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd816230).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81623c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd816240).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd816244).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd816248).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81624c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd816250).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd816258).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd816268).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81626c).
  The `beql` at 0xd816260 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd816260 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd816280.

- `__glx_Vertex2iv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816288, 128 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816294).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd8162a4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd8162b0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8162b4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8162b8).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lw` at 0xd8162bc).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8162c4).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `t0` (`lw` at 0xd8162c8).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd8162cc).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t1` (`lw` at 0xd8162d0).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd8162d4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8162e4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd8162ec).
  The `beql` at 0xd8162dc is taken when t1(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t1(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd8162dc is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd816300.

- `__glx_Vertex2i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816308, 124 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816314).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd816324).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd816330).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd816334).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd816338).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81633c).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd816340).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd816344).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd81634c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81635c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276] (`jalr` at 0xd816368).
  The `beql` at 0xd816354 is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd816354 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81637c.

- `__glx_Vertex2fv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816384, 128 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816390).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd8163a0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd8163ac).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8163b0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8163b4).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `$f4` (`lwc1` at 0xd8163b8).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd8163c0).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `$f6` (`lwc1` at 0xd8163c4).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd8163c8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8163cc).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd8163d0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8163e0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd8163e8).
  The `beql` at 0xd8163d8 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd8163d8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8163fc.

- `__glx_Vertex2f` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816404, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816410).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd816420).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81642c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd816430).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd816434).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd816438).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81643c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd816440).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd816448).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd816458).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81645c).
  The `beql` at 0xd816450 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd816450 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd816470.

- `__glx_TexCoord4s` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816478, 192 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816488).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd8164ac).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd8164b8).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8164dc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8164e0).
  Stores 2 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd8164e4).
  Stores 2 bytes from `a1` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd8164e8).
  Stores 2 bytes from `a2` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd8164ec).
  Stores 2 bytes from `a3` to [[[0x1014]+276]+4] +0xa (`sh` at 0xd8164f0).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8164f4).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd8164fc).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81650c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=? (`jalr` at 0xd816518).
  The `beql` at 0xd816504 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd816504 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd816530.

- `__glx_TexCoord4sv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816538, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816544).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd816554).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd816560).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd816564).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd816568).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lh` at 0xd81656c).
  Stores 2 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd816574).
  Loads 2 bytes from a0 (arg0 at entry) +0x2 into `t0` (`lh` at 0xd816578).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd81657c).
  Loads 2 bytes from a0 (arg0 at entry) +0x4 into `t1` (`lh` at 0xd816580).
  Stores 2 bytes from `t1` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd816584).
  Loads 2 bytes from a0 (arg0 at entry) +0x6 into `t2` (`lh` at 0xd816588).
  Stores 2 bytes from `t2` to [[[0x1014]+276]+4] +0xa (`sh` at 0xd81658c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t3` (`lw` at 0xd816590).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd816594).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8165a4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd8165ac).
  The `beql` at 0xd81659c is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81659c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8165c0.

- `__glx_Vertex2d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8165c8, 196 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8165d8).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd8165f0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd8165fc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd816608).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81660c).
  Performs 2 4-byte loads from abs 0xd845ab4, including `lw` at 0xd816610, `lw` at 0xd816630.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd816648).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81665c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd816660).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4] (`jalr` at 0xd81661c).
  Calls `memcpy` via got with a0=?, a1=sp+8, a2=0x8, a3=? (`jalr` at 0xd81663c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd81666c).
  The `beq` at 0xd816658 is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd816684.

- `__glx_Vertex2dv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81668c, 188 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81669c).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd8166b0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd8166bc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8166c4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8166c8).
  Performs 2 4-byte loads from abs 0xd845ab4, including `lw` at 0xd8166cc, `lw` at 0xd8166ec.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd816704).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd816718).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81671c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[[0x1014]+276]+4] (`jalr` at 0xd8166d8).
  Calls `memcpy` via got with a0=?, a1=a0+8, a2=0x8, a3=? (`jalr` at 0xd8166f8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd816728).
  The `beq` at 0xd816714 is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd816740.

- `__glx_Vertex2s` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816748, 148 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816758).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd81676c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd816778).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81678c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd816790).
  Stores 2 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd816794).
  Stores 2 bytes from `a1` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd816798).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81679c).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd8167a4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8167b4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[[0x1014]+276]+4]+8, a3=[[0x1014]+276] (`jalr` at 0xd8167c0).
  The `beql` at 0xd8167ac is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd8167ac is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8167d4.

- `__glx_Vertex3sv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8167dc, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8167e8).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd8167f8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd816804).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd816808).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81680c).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lh` at 0xd816810).
  Stores 2 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd816818).
  Loads 2 bytes from a0 (arg0 at entry) +0x2 into `t0` (`lh` at 0xd81681c).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd816820).
  Loads 2 bytes from a0 (arg0 at entry) +0x4 into `t1` (`lh` at 0xd816824).
  Stores 2 bytes from `t1` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd816828).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd81682c).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd816830).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd816840).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd816848).
  The `beql` at 0xd816838 is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd816838 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81685c.

- `__glx_Vertex3s` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816864, 172 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816874).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd816890).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81689c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8168b8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8168bc).
  Stores 2 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd8168c0).
  Stores 2 bytes from `a1` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd8168c4).
  Stores 2 bytes from `a2` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd8168c8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8168cc).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd8168d4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8168e4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12 (`jalr` at 0xd8168f0).
  The `beql` at 0xd8168dc is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd8168dc is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd816908.

- `__glx_Vertex3iv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816910, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81691c).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81692c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd816938).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81693c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd816940).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lw` at 0xd816944).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81694c).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `t0` (`lw` at 0xd816950).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd816954).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `t1` (`lw` at 0xd816958).
  Stores 4 bytes from `t1` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd81695c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd816960).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd816964).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd816974).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81697c).
  The `beql` at 0xd81696c is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81696c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd816990.

- `__glx_Vertex3i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816998, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8169a8).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd8169b8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd8169c4).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8169c8).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8169cc).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8169d0).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd8169d4).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd8169d8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8169dc).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd8169e4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8169f4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16 (`jalr` at 0xd816a00).
  The `beql` at 0xd8169ec is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd8169ec is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd816a18.

- `__glx_Vertex2sv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816a20, 128 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816a2c).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd816a3c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd816a48).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd816a4c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd816a50).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lh` at 0xd816a54).
  Stores 2 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd816a5c).
  Loads 2 bytes from a0 (arg0 at entry) +0x2 into `t0` (`lh` at 0xd816a60).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd816a64).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t1` (`lw` at 0xd816a68).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd816a6c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd816a7c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd816a84).
  The `beql` at 0xd816a74 is taken when t1(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t1(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd816a74 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd816a98.

- `__glx_Vertex3dv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816aa0, 224 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816ab0).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd816ac4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd816ad0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd816ad8).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd816adc).
  Performs 3 4-byte loads from abs 0xd845ab4, including `lw` at 0xd816ae0, `lw` at 0xd816b00, `lw` at 0xd816b20.
  Loads 4 bytes from ? (base unknown) into `t9` (`lw` at 0xd816b40).
  Stores 4 bytes from `s0` to ? (base unknown) (`sw` at 0xd816b44).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd816b54).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[0x1014]+276] (`jalr` at 0xd816aec).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=? (`jalr` at 0xd816b0c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=? (`jalr` at 0xd816b2c).
  Calls `__glXFlushRenderBuffer` via got with a0=?, a1=[[[0x1014]+276]+4]+28, a2=?, a3=? (`jalr` at 0xd816b60).
  The `beql` at 0xd816b4c is taken when t9(?) >= s0(=[[[0x1014]+276]+4]+28) (unsigned) and falls through when t9(?) < s0(=[[[0x1014]+276]+4]+28) (unsigned).
  Its delay slot runs only when the branch at 0xd816b4c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd816b78.

- `__glx_Vertex3f` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816b80, 128 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816b90).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd816ba0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd816bac).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd816bb0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd816bb4).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd816bb8).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd816bbc).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd816bc8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd816bcc).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd816bd0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd816be0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd816be4).
  The `beql` at 0xd816bd8 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd816bd8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd816bf8.

- `__glx_Vertex3fv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816c00, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816c0c).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd816c1c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd816c28).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd816c2c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd816c30).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `$f4` (`lwc1` at 0xd816c34).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd816c3c).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `$f6` (`lwc1` at 0xd816c40).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd816c44).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `$f8` (`lwc1` at 0xd816c48).
  Stores 4 bytes from `$f8` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd816c4c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd816c50).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd816c54).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd816c64).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd816c6c).
  The `beql` at 0xd816c5c is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd816c5c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd816c80.

- `__glx_TexCoord4iv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816c88, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816c94).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd816ca4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd816cb0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd816cb4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd816cb8).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lw` at 0xd816cbc).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd816cc4).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `t0` (`lw` at 0xd816cc8).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd816ccc).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `t1` (`lw` at 0xd816cd0).
  Stores 4 bytes from `t1` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd816cd4).
  Loads 4 bytes from a0 (arg0 at entry) +0xc into `t2` (`lw` at 0xd816cd8).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd816cdc).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t3` (`lw` at 0xd816ce0).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd816ce4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd816cf4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd816cfc).
  The `beql` at 0xd816cec is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd816cec is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd816d10.

- `__glx_TexCoord3f` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816d18, 128 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816d28).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd816d38).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd816d44).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd816d48).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd816d4c).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd816d50).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd816d54).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd816d60).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd816d64).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd816d68).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd816d78).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd816d7c).
  The `beql` at 0xd816d70 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd816d70 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd816d90.

- `__glx_TexCoord3dv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816d98, 224 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816da8).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd816dbc).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd816dc8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd816dd0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd816dd4).
  Performs 3 4-byte loads from abs 0xd845ab4, including `lw` at 0xd816dd8, `lw` at 0xd816df8, `lw` at 0xd816e18.
  Loads 4 bytes from ? (base unknown) into `t9` (`lw` at 0xd816e38).
  Stores 4 bytes from `s0` to ? (base unknown) (`sw` at 0xd816e3c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd816e4c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[0x1014]+276] (`jalr` at 0xd816de4).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=? (`jalr` at 0xd816e04).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=? (`jalr` at 0xd816e24).
  Calls `__glXFlushRenderBuffer` via got with a0=?, a1=[[[0x1014]+276]+4]+28, a2=?, a3=? (`jalr` at 0xd816e58).
  The `beql` at 0xd816e44 is taken when t9(?) >= s0(=[[[0x1014]+276]+4]+28) (unsigned) and falls through when t9(?) < s0(=[[[0x1014]+276]+4]+28) (unsigned).
  Its delay slot runs only when the branch at 0xd816e44 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd816e70.

- `__glx_TexCoord3d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816e78, 224 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816e88).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd816ea0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd816eac).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd816eb8).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd816ebc).
  Performs 3 4-byte loads from abs 0xd845ab4, including `lw` at 0xd816ec0, `lw` at 0xd816ee0, `lw` at 0xd816efc.
  Loads 4 bytes from ? (base unknown) into `t9` (`lw` at 0xd816f18).
  Stores 4 bytes from `s0` to ? (base unknown) (`sw` at 0xd816f1c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd816f2c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[0x1014]+276] (`jalr` at 0xd816ecc).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=? (`jalr` at 0xd816ee8).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=? (`jalr` at 0xd816f04).
  Calls `__glXFlushRenderBuffer` via got with a0=?, a1=[[[0x1014]+276]+4]+28, a2=?, a3=? (`jalr` at 0xd816f38).
  The `beql` at 0xd816f24 is taken when t9(?) >= s0(=[[[0x1014]+276]+4]+28) (unsigned) and falls through when t9(?) < s0(=[[[0x1014]+276]+4]+28) (unsigned).
  Its delay slot runs only when the branch at 0xd816f24 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd816f50.

- `__glx_TexCoord2sv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816f58, 128 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816f64).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd816f74).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd816f80).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd816f84).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd816f88).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lh` at 0xd816f8c).
  Stores 2 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd816f94).
  Loads 2 bytes from a0 (arg0 at entry) +0x2 into `t0` (`lh` at 0xd816f98).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd816f9c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t1` (`lw` at 0xd816fa0).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd816fa4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd816fb4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd816fbc).
  The `beql` at 0xd816fac is taken when t1(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t1(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd816fac is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd816fd0.

- `__glx_TexCoord2fv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd816fd8, 128 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd816fe4).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd816ff4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd817000).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd817004).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd817008).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `$f4` (`lwc1` at 0xd81700c).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd817014).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `$f6` (`lwc1` at 0xd817018).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81701c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd817020).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd817024).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd817034).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81703c).
  The `beql` at 0xd81702c is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81702c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd817050.

- `__glx_TexCoord2i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd817058, 124 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd817064).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd817074).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd817080).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd817084).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd817088).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81708c).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd817090).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd817094).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd81709c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8170ac).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276] (`jalr` at 0xd8170b8).
  The `beql` at 0xd8170a4 is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd8170a4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8170cc.

- `__glx_TexCoord2iv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8170d4, 128 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8170e0).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd8170f0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd8170fc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd817100).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd817104).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lw` at 0xd817108).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd817110).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `t0` (`lw` at 0xd817114).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd817118).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t1` (`lw` at 0xd81711c).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd817120).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd817130).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd817138).
  The `beql` at 0xd817128 is taken when t1(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t1(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd817128 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81714c.

- `__glx_TexCoord2s` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd817154, 148 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd817164).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd817178).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd817184).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd817198).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81719c).
  Stores 2 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd8171a0).
  Stores 2 bytes from `a1` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd8171a4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8171a8).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd8171b0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8171c0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[[0x1014]+276]+4]+8, a3=[[0x1014]+276] (`jalr` at 0xd8171cc).
  The `beql` at 0xd8171b8 is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd8171b8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8171e0.

- `__glx_TexCoord3fv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8171e8, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8171f4).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd817204).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd817210).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd817214).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd817218).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `$f4` (`lwc1` at 0xd81721c).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd817224).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `$f6` (`lwc1` at 0xd817228).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81722c).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `$f8` (`lwc1` at 0xd817230).
  Stores 4 bytes from `$f8` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd817234).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd817238).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81723c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81724c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd817254).
  The `beql` at 0xd817244 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd817244 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd817268.

- `__glx_TexCoord4dv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd817270, 252 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd817280).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd817298).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd8172a4).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8172ac).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8172b0).
  Performs 4 4-byte loads from abs 0xd845ab4, including `lw` at 0xd8172b4, `lw` at 0xd8172d4, `lw` at 0xd8172f4.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd817328).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd81733c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd817340).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=a3 at entry (arg3) (`jalr` at 0xd8172c0).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=? (`jalr` at 0xd8172e0).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=? (`jalr` at 0xd817300).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+28, a1=a0+24, a2=0x8, a3=? (`jalr` at 0xd817320).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=? (`jalr` at 0xd81734c).
  The `beq` at 0xd817338 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  Returns with v0 = ? at `jr` at 0xd817364.

- `__glx_TexCoord4f` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81736c, 140 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81737c).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd817390).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81739c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8173a0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8173a4).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd8173a8).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd8173ac).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd8173b8).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x10 (`swc1` at 0xd8173c0).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8173c4).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd8173c8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8173d8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8173dc).
  The `beql` at 0xd8173d0 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd8173d0 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8173f0.

- `__glx_TexCoord4fv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8173f8, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd817404).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd817414).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd817420).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd817424).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd817428).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `$f4` (`lwc1` at 0xd81742c).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd817434).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `$f6` (`lwc1` at 0xd817438).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81743c).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `$f8` (`lwc1` at 0xd817440).
  Stores 4 bytes from `$f8` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd817444).
  Loads 4 bytes from a0 (arg0 at entry) +0xc into `$f10` (`lwc1` at 0xd817448).
  Stores 4 bytes from `$f10` to [[[0x1014]+276]+4] +0x10 (`swc1` at 0xd81744c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd817450).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd817454).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd817464).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81746c).
  The `beql` at 0xd81745c is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd81745c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd817480.

- `__glx_TexCoord4i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd817488, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd817498).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd8174ac).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd8174b8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8174bc).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8174c0).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8174c4).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd8174c8).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd8174cc).
  Stores 4 bytes from `a3` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd8174d0).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8174d4).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd8174dc).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8174ec).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8174f8).
  The `beql` at 0xd8174e4 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd8174e4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd817510.

- `__glx_TexCoord4d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd817518, 244 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd817528).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd817544).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd817550).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81755c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd817560).
  Performs 4 4-byte loads from abs 0xd845ab4, including `lw` at 0xd817564, `lw` at 0xd817580, `lw` at 0xd81759c.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8175c8).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd8175dc).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8175e0).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=a3 at entry (arg3) (`jalr` at 0xd81756c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=? (`jalr` at 0xd817588).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=? (`jalr` at 0xd8175a4).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+28, a1=sp+24, a2=0x8, a3=? (`jalr` at 0xd8175c0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=? (`jalr` at 0xd8175ec).
  The `beq` at 0xd8175d8 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  Returns with v0 = ? at `jr` at 0xd817604.

- `__glx_TexCoord3i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81760c, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81761c).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd81762c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd817638).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81763c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd817640).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd817644).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd817648).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd81764c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd817650).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd817658).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd817668).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16 (`jalr` at 0xd817674).
  The `beql` at 0xd817660 is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd817660 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81768c.

- `__glx_TexCoord3iv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd817694, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8176a0).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd8176b0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd8176bc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8176c0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8176c4).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lw` at 0xd8176c8).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8176d0).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `t0` (`lw` at 0xd8176d4).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd8176d8).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `t1` (`lw` at 0xd8176dc).
  Stores 4 bytes from `t1` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd8176e0).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd8176e4).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd8176e8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8176f8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd817700).
  The `beql` at 0xd8176f0 is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd8176f0 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd817714.

- `__glx_TexCoord3s` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81771c, 172 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81772c).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd817748).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd817754).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd817770).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd817774).
  Stores 2 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd817778).
  Stores 2 bytes from `a1` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd81777c).
  Stores 2 bytes from `a2` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd817780).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd817784).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81778c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81779c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12 (`jalr` at 0xd8177a8).
  The `beql` at 0xd817794 is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd817794 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8177c0.

- `__glx_TexCoord3sv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8177c8, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8177d4).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd8177e4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd8177f0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8177f4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8177f8).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lh` at 0xd8177fc).
  Stores 2 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd817804).
  Loads 2 bytes from a0 (arg0 at entry) +0x2 into `t0` (`lh` at 0xd817808).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd81780c).
  Loads 2 bytes from a0 (arg0 at entry) +0x4 into `t1` (`lh` at 0xd817810).
  Stores 2 bytes from `t1` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd817814).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd817818).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81781c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81782c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd817834).
  The `beql` at 0xd817824 is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd817824 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd817848.

- `__glx_EvalCoord1fv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd817850, 120 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81785c).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81786c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd817878).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81787c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd817880).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `$f4` (`lwc1` at 0xd817884).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd81788c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd817890).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd817894).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8178a4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd8178ac).
  The `beql` at 0xd81789c is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81789c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8178c0.

- `__glx_CopyTexSubImage2DEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8178c8, 176 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8178d8).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd8178ec).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd8178f8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8178fc).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd817900).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd817904).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd817908).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd81790c).
  Stores 4 bytes from `a3` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd817910).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x14 (`sw` at 0xd81791c).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x18 (`sw` at 0xd817924).
  Stores 4 bytes from `t1` to [[[0x1014]+276]+4] +0x1c (`sw` at 0xd81792c).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+4] +0x20 (`sw` at 0xd817934).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t3` (`lw` at 0xd817938).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd81793c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81794c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd817958).
  The `beql` at 0xd817944 is taken when t3(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned) and falls through when t3(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  Its delay slot runs only when the branch at 0xd817944 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd817970.

- `__glx_CopyTexSubImage1DEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd817978, 160 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd817988).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd81799c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd8179a8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8179ac).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8179b0).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8179b4).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd8179b8).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd8179bc).
  Stores 4 bytes from `a3` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd8179c0).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x14 (`sw` at 0xd8179cc).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x18 (`sw` at 0xd8179d4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t1` (`lw` at 0xd8179d8).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd8179dc).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8179ec).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8179f8).
  The `beql` at 0xd8179e4 is taken when t1(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+28) (unsigned) and falls through when t1(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+28) (unsigned).
  Its delay slot runs only when the branch at 0xd8179e4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd817a10.

- `__glx_CopyTexImage2DEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd817a18, 176 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd817a28).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd817a3c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd817a48).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd817a4c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd817a50).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd817a54).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd817a58).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd817a5c).
  Stores 4 bytes from `a3` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd817a60).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x14 (`sw` at 0xd817a6c).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x18 (`sw` at 0xd817a74).
  Stores 4 bytes from `t1` to [[[0x1014]+276]+4] +0x1c (`sw` at 0xd817a7c).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+4] +0x20 (`sw` at 0xd817a84).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t3` (`lw` at 0xd817a88).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd817a8c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd817a9c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd817aa8).
  The `beql` at 0xd817a94 is taken when t3(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned) and falls through when t3(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  Its delay slot runs only when the branch at 0xd817a94 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd817ac0.

- `__glx_CopyTexImage1DEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd817ac8, 168 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd817ad8).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd817aec).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd817af8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd817afc).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd817b00).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd817b04).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd817b08).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd817b0c).
  Stores 4 bytes from `a3` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd817b10).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x14 (`sw` at 0xd817b1c).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x18 (`sw` at 0xd817b24).
  Stores 4 bytes from `t1` to [[[0x1014]+276]+4] +0x1c (`sw` at 0xd817b2c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd817b30).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd817b34).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd817b44).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+32, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd817b50).
  The `beql` at 0xd817b3c is taken when t2(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+32) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+32) (unsigned).
  Its delay slot runs only when the branch at 0xd817b3c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd817b68.

- `__glx_CopyColorTableSGI` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd817b70, 152 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd817b80).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd817b94).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd817ba0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd817ba4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd817ba8).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd817bac).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd817bb0).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd817bb4).
  Stores 4 bytes from `a3` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd817bb8).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x14 (`sw` at 0xd817bc4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t0` (`lw` at 0xd817bc8).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd817bcc).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd817bdc).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+24, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd817be8).
  The `beql` at 0xd817bd4 is taken when t0(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+24) (unsigned) and falls through when t0(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+24) (unsigned).
  Its delay slot runs only when the branch at 0xd817bd4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd817c00.

- `__glx_ColorTableParameterivSGI` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd817c08, 216 bytes) Inferred.
  Loads 4 bytes from abs 0xd845c24 into `t9` (`lw` at 0xd817c18).
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd817c40).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd817c54).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd817c60).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd817c64).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd817c68).
  Stores 4 bytes from `t8` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd817c74).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd817c7c).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd817c80).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd817c9c).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd817cb0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd817cb4).
  Calls `__glXColorTableParameterivSGI_size` via got with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd817c34).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXColorTableParameterivSGI_size) << 0x2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd817c8c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd817cc0).
  The `beq` at 0xd817cac is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd817cd8.

- `__glx_CopyTexSubImage3DEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd817ce0, 184 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd817cf0).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd817d04).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd817d10).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd817d14).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd817d18).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd817d1c).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd817d20).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd817d24).
  Stores 4 bytes from `a3` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd817d28).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x14 (`sw` at 0xd817d34).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x18 (`sw` at 0xd817d3c).
  Stores 4 bytes from `t1` to [[[0x1014]+276]+4] +0x1c (`sw` at 0xd817d44).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+4] +0x20 (`sw` at 0xd817d4c).
  Stores 4 bytes from `t3` to [[[0x1014]+276]+4] +0x24 (`sw` at 0xd817d54).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t4` (`lw` at 0xd817d58).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd817d5c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd817d6c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+40, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd817d78).
  The `beql` at 0xd817d64 is taken when t4(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+40) (unsigned) and falls through when t4(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+40) (unsigned).
  Its delay slot runs only when the branch at 0xd817d64 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd817d90.

- `__glx_GetMapdv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd817d98, 432 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd817da8).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd817dc8).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd817dcc).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd817dd0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd817ddc).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd817df0, `lw` at 0xd817ef8.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd817dfc, `lw` at 0xd817e14, `lw` at 0xd817e40.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd817e00).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd817e18).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd817e28, `sw` at 0xd817e44.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd817e2c).
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd817e4c).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd817e50, `sb` at 0xd817e7c.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t3` (`lw` at 0xd817e54).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd817e68).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd817e6c).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t5` (`lw` at 0xd817e70).
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd817e74).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t9` (`lw` at 0xd817e80).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd817e8c).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd817e98).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd817ea0).
  Loads 4 bytes from abs 0xd845a94 into `t9` (`lw` at 0xd817ea4).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd817ec4).
  Loads 4 bytes from abs 0xd845abc into `t9` (`lw` at 0xd817ee0).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd817f00, `lw` at 0xd817f18.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd817f04).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd817de8).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd817e08).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd817e34).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd817ea8).
  Calls `memcpy` via got with a0=a2 at entry (arg2), a1=sp-36, a2=0x8, a3=? (`jalr` at 0xd817ed0).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd817eec).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd817f0c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd817f28).
  The `beql` at 0xd817dd4 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd817dd4 is taken and is annulled on fall-through.
  The `beql` at 0xd817df8 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd817df8 is taken and is annulled on fall-through.
  The `beql` at 0xd817e24 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd817e24 is taken and is annulled on fall-through.
  The `bne` at 0xd817ebc is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd817efc is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd817efc is taken and is annulled on fall-through.
  The `beql` at 0xd817f20 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd817f20 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd817f40.

- `__glx_GetLightiv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd817f48, 416 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd817f58).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd817f78).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd817f7c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd817f80).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd817f8c).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd817fa0, `lw` at 0xd818098.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd817fac, `lw` at 0xd817fc4, `lw` at 0xd817ff0.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd817fb0).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd817fc8).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd817fd8, `sw` at 0xd817ff4.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd817fdc).
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd817ffc).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd818000, `sb` at 0xd81802c.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t3` (`lw` at 0xd818004).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd818018).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81801c).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t5` (`lw` at 0xd818020).
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd818024).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t9` (`lw` at 0xd818030).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81803c).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd818048).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd818050).
  Loads 4 bytes from abs 0xd845a94 into `t9` (`lw` at 0xd818054).
  Stores 4 bytes from `t0` to a2 (arg2 at entry) +0x0 (`sw` at 0xd81807c).
  Loads 4 bytes from abs 0xd845abc into `t9` (`lw` at 0xd818080).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8180a0, `lw` at 0xd8180b8.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd8180a4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd817f98).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd817fb8).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd817fe4).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd818058).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd81808c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8180ac).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8180c8).
  The `beql` at 0xd817f84 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd817f84 is taken and is annulled on fall-through.
  The `beql` at 0xd817fa8 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd817fa8 is taken and is annulled on fall-through.
  The `beql` at 0xd817fd4 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd817fd4 is taken and is annulled on fall-through.
  The `bne` at 0xd81806c is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81809c is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81809c is taken and is annulled on fall-through.
  The `beql` at 0xd8180c0 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd8180c0 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8180e0.

- `__glx_GetLightfv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8180e8, 416 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8180f8).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd818118).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd81811c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd818120).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81812c).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd818140, `lw` at 0xd818238.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81814c, `lw` at 0xd818164, `lw` at 0xd818190.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd818150).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd818168).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd818178, `sw` at 0xd818194.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd81817c).
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81819c).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8181a0, `sb` at 0xd8181cc.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t3` (`lw` at 0xd8181a4).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd8181b8).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd8181bc).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t5` (`lw` at 0xd8181c0).
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd8181c4).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t9` (`lw` at 0xd8181d0).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd8181dc).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd8181e8).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd8181f0).
  Loads 4 bytes from abs 0xd845a94 into `t9` (`lw` at 0xd8181f4).
  Stores 4 bytes from `$f4` to a2 (arg2 at entry) +0x0 (`swc1` at 0xd81821c).
  Loads 4 bytes from abs 0xd845abc into `t9` (`lw` at 0xd818220).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd818240, `lw` at 0xd818258.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd818244).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd818138).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd818158).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd818184).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd8181f8).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd81822c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81824c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd818268).
  The `beql` at 0xd818124 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd818124 is taken and is annulled on fall-through.
  The `beql` at 0xd818148 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd818148 is taken and is annulled on fall-through.
  The `beql` at 0xd818174 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd818174 is taken and is annulled on fall-through.
  The `bne` at 0xd81820c is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81823c is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81823c is taken and is annulled on fall-through.
  The `beql` at 0xd818260 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd818260 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd818280.

- `__glx_GenLists` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd818288, 372 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd818298).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd8182b0).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd8182b8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd8182bc).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8182c8).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8182d8, `lw` at 0xd818390.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8182e4, `lw` at 0xd8182fc, `lw` at 0xd818328.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd8182e8).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd818300).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd818310, `sw` at 0xd81832c.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd818314).
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd818334).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd818338, `sb` at 0xd818364.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t3` (`lw` at 0xd81833c).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd818350).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd818354).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t5` (`lw` at 0xd818358).
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81835c).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t9` (`lw` at 0xd818368).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd818374).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd818380).
  Loads 4 bytes from abs 0xd845a94 into `t9` (`lw` at 0xd818384).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8183a0, `lw` at 0xd8183c0.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd8183a8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8182d0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8182f0).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81831c).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd818388).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8183b0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8183d4).
  The `beql` at 0xd8182c0 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd8182c0 is taken and is annulled on fall-through.
  The `beql` at 0xd8182e0 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd8182e0 is taken and is annulled on fall-through.
  The `beql` at 0xd81830c is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81830c is taken and is annulled on fall-through.
  The `beql` at 0xd81839c is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81839c is taken and is annulled on fall-through.
  The `beql` at 0xd8183c8 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd8183c8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8183f4.

- `__glx_DeleteLists` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8183fc, 344 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81840c).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd818424).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd818428).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81842c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd818438).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81844c, `lw` at 0xd818504.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81845c, `lw` at 0xd81847c, `lw` at 0xd8184b0.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd818464).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd818480).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd818490, `sw` at 0xd8184b4.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd818494).
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd8184bc).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8184c0, `sb` at 0xd8184e8.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t3` (`lw` at 0xd8184c4).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd8184d8).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd8184dc).
  Performs 2 4-byte loads from ? (base unknown), including `lw` at 0xd8184e0, `lw` at 0xd8184ec.
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd8184e4).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd8184f0).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd8184f8).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd818500).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81850c, `lw` at 0xd818524.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd818510).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=[[[0x1014]+276]+4] (`jalr` at 0xd818444).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81846c).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8184a0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd818518).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd818534).
  The `beql` at 0xd818430 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd818430 is taken and is annulled on fall-through.
  The `beql` at 0xd818458 is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd818458 is taken and is annulled on fall-through.
  The `beql` at 0xd81848c is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81848c is taken and is annulled on fall-through.
  The `beql` at 0xd818508 is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd818508 is taken and is annulled on fall-through.
  The `beql` at 0xd81852c is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81852c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81854c.

- `__glx_EndList` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd818554, 320 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd818564).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd818574).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd818578).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81857c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd818588).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81859c, `lw` at 0xd818644.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8185ac, `lw` at 0xd8185cc, `lw` at 0xd818600.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd8185b4).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd8185d0).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8185e0, `sw` at 0xd818604.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd8185e4).
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81860c).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd818610, `sb` at 0xd818638.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t3` (`lw` at 0xd818614).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd818628).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81862c).
  Performs 2 4-byte loads from ? (base unknown), including `lw` at 0xd818630, `lw` at 0xd81863c.
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd818634).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd818640).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81864c, `lw` at 0xd818664.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd818650).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd818594).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8185bc).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8185f0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd818658).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd818674).
  The `beql` at 0xd818580 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd818580 is taken and is annulled on fall-through.
  The `beql` at 0xd8185a8 is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd8185a8 is taken and is annulled on fall-through.
  The `beql` at 0xd8185dc is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd8185dc is taken and is annulled on fall-through.
  The `beql` at 0xd818648 is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd818648 is taken and is annulled on fall-through.
  The `beql` at 0xd81866c is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81866c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81868c.

- `__glx_NewList` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd818694, 344 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8186a4).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd8186bc).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd8186c0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd8186c4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8186d0).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8186e4, `lw` at 0xd81879c.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8186f4, `lw` at 0xd818714, `lw` at 0xd818748.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd8186fc).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd818718).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd818728, `sw` at 0xd81874c.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd81872c).
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd818754).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd818758, `sb` at 0xd818780.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t3` (`lw` at 0xd81875c).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd818770).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd818774).
  Performs 2 4-byte loads from ? (base unknown), including `lw` at 0xd818778, `lw` at 0xd818784.
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81877c).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd818788).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd818790).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd818798).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8187a4, `lw` at 0xd8187bc.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd8187a8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=[[[0x1014]+276]+4] (`jalr` at 0xd8186dc).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd818704).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd818738).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8187b0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8187cc).
  The `beql` at 0xd8186c8 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd8186c8 is taken and is annulled on fall-through.
  The `beql` at 0xd8186f0 is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd8186f0 is taken and is annulled on fall-through.
  The `beql` at 0xd818724 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd818724 is taken and is annulled on fall-through.
  The `beql` at 0xd8187a0 is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd8187a0 is taken and is annulled on fall-through.
  The `beql` at 0xd8187c4 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd8187c4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8187e4.

- `__glx_ColorTableParameterfvSGI` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8187ec, 216 bytes) Inferred.
  Loads 4 bytes from abs 0xd845c20 into `t9` (`lw` at 0xd8187fc).
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd818824).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd818838).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd818844).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd818848).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81884c).
  Stores 4 bytes from `t8` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd818858).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd818860).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd818864).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd818880).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd818894).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd818898).
  Calls `__glXColorTableParameterfvSGI_size` via got with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd818818).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXColorTableParameterfvSGI_size) << 0x2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd818870).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd8188a4).
  The `beq` at 0xd818890 is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd8188bc.

- `__glx_CopyConvolutionFilter2DEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8188c4, 160 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8188d4).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd8188e8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd8188f4).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8188f8).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8188fc).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd818900).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd818904).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd818908).
  Stores 4 bytes from `a3` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd81890c).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x14 (`sw` at 0xd818918).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x18 (`sw` at 0xd818920).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t1` (`lw` at 0xd818924).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd818928).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd818938).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd818944).
  The `beql` at 0xd818930 is taken when t1(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+28) (unsigned) and falls through when t1(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+28) (unsigned).
  Its delay slot runs only when the branch at 0xd818930 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81895c.

- `__glx_CopyConvolutionFilter1DEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd818964, 152 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd818974).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd818988).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd818994).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd818998).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81899c).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8189a0).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd8189a4).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd8189a8).
  Stores 4 bytes from `a3` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd8189ac).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x14 (`sw` at 0xd8189b8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t0` (`lw` at 0xd8189bc).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd8189c0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8189d0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+24, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8189dc).
  The `beql` at 0xd8189c8 is taken when t0(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+24) (unsigned) and falls through when t0(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+24) (unsigned).
  Its delay slot runs only when the branch at 0xd8189c8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8189f4.

- `__glx_ConvolutionParameterivEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8189fc, 216 bytes) Inferred.
  Loads 4 bytes from abs 0xd845c1c into `t9` (`lw` at 0xd818a0c).
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd818a34).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd818a48).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd818a54).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd818a58).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd818a5c).
  Stores 4 bytes from `t8` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd818a68).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd818a70).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd818a74).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd818a90).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd818aa4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd818aa8).
  Calls `__glXConvolutionParameterivEXT_size` via got with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd818a28).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXConvolutionParameterivEXT_size) << 0x2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd818a80).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd818ab4).
  The `beq` at 0xd818aa0 is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd818acc.

- `__glx_ConvolutionParameteriEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd818ad4, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd818ae4).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd818af4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd818b00).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd818b04).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd818b08).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd818b0c).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd818b10).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd818b14).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd818b18).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd818b20).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd818b30).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16 (`jalr` at 0xd818b3c).
  The `beql` at 0xd818b28 is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd818b28 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd818b54.

- `__glx_ConvolutionParameterfvEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd818b5c, 216 bytes) Inferred.
  Loads 4 bytes from abs 0xd845c18 into `t9` (`lw` at 0xd818b6c).
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd818b94).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd818ba8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd818bb4).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd818bb8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd818bbc).
  Stores 4 bytes from `t8` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd818bc8).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd818bd0).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd818bd4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd818bf0).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd818c04).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd818c08).
  Calls `__glXConvolutionParameterfvEXT_size` via got with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd818b88).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXConvolutionParameterfvEXT_size) << 0x2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd818be0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd818c14).
  The `beq` at 0xd818c00 is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd818c2c.

- `__glx_ConvolutionParameterfEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd818c34, 132 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd818c40).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd818c50).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd818c5c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd818c64).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd818c68).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd818c6c).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd818c70).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd818c74).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd818c78).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd818c80).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd818c90).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[[0x1014]+276]+4]+16, a3=[[0x1014]+276] (`jalr` at 0xd818c9c).
  The `beql` at 0xd818c88 is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd818c88 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd818cb0.

- `__glx_TagSampleBufferSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd818cb8, 108 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd818cc4).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd818cd4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd818ce0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd818ce4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd818ce8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd818cec).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd818cf4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd818d04).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd818d08).
  The `beql` at 0xd818cfc is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+4) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+4) (unsigned).
  Its delay slot runs only when the branch at 0xd818cfc is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd818d1c.

- `__glx_HistogramEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd818d24, 148 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd818d34).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd818d4c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd818d58).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd818d5c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd818d60).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd818d64).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd818d68).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd818d6c).
  Stores 1 byte from `a3` to [[[0x1014]+276]+4] +0x10 (`sb` at 0xd818d70).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd818d74).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd818d7c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd818d8c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd818d98).
  The `beql` at 0xd818d84 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd818d84 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd818db0.

- `__glx_PrioritizeTexturesEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd818db8, 236 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd818dc8).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd818de0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd818de8).
  Stores 2 bytes from `t9` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd818e08).
  Stores 2 bytes from `v1` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd818e0c).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd818e18).
  Performs 2 4-byte loads from abs 0xd845ab4, including `lw` at 0xd818e1c, `lw` at 0xd818e40.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd818e60).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd818e74).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd818e78).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+8, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd818e2c).
  Calls `memcpy` via got with a0=?, a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd818e50).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd818e84).
  The `bltz` at 0xd818de4 is taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  The `bltz` at 0xd818dec is taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  The `beq` at 0xd818e70 is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd818e9c.

- `__glx_BindTextureEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd818ea4, 124 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd818eb0).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd818ec0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd818ecc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd818ed0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd818ed4).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd818ed8).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd818edc).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd818ee0).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd818ee8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd818ef8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276] (`jalr` at 0xd818f04).
  The `beql` at 0xd818ef0 is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd818ef0 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd818f18.

- `__glx_SharpenTexFuncSGIS` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd818f20, 212 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd818f30).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd818f4c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd818f58).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd818f70).
  Stores 2 bytes from `v1` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd818f74).
  Stores 4 bytes from `t8` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd818f80).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd818f88).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd818f8c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t0` (`lw` at 0xd818fb0).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd818fc4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd818fc8).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(a1 << 0x3), a3=[[[0x1014]+276]+4] (`jalr` at 0xd818fa0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd818fd4).
  The `bltz` at 0xd818f54 is taken when v0(=(a1 << 0x1)) < 0 (signed) and falls through when v0(=(a1 << 0x1)) >= 0 (signed).
  The `beq` at 0xd818fc0 is taken when t0(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t0(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd818fec.

- `__glx_DetailTexFuncSGIS` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd818ff4, 212 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd819004).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd819020).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81902c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd819044).
  Stores 2 bytes from `v1` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd819048).
  Stores 4 bytes from `t8` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd819054).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd81905c).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd819060).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t0` (`lw` at 0xd819084).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd819098).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81909c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(a1 << 0x3), a3=[[[0x1014]+276]+4] (`jalr` at 0xd819074).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd8190a8).
  The `bltz` at 0xd819028 is taken when v0(=(a1 << 0x1)) < 0 (signed) and falls through when v0(=(a1 << 0x1)) >= 0 (signed).
  The `beq` at 0xd819094 is taken when t0(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t0(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd8190c0.

- `__glx_ResetMinmaxEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8190c8, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8190d4).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd8190e4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd8190f0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8190f4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8190f8).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8190fc).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd819100).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd819108).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd819118).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd819120).
  The `beql` at 0xd819110 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd819110 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd819134.

- `__glx_ResetHistogramEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81913c, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd819148).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd819158).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd819164).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd819168).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81916c).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd819170).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd819174).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81917c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81918c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd819194).
  The `beql` at 0xd819184 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd819184 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8191a8.

- `__glx_MinmaxEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8191b0, 140 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8191c0).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd8191d4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd8191e0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8191e4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8191e8).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8191ec).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd8191f0).
  Stores 1 byte from `a2` to [[[0x1014]+276]+4] +0xc (`sb` at 0xd8191f4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8191f8).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd819200).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd819210).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16 (`jalr` at 0xd81921c).
  The `beql` at 0xd819208 is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd819208 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd819234.

- `__glx_GetMapfv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81923c, 416 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81924c).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd81926c).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd819270).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd819274).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd819280).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819294, `lw` at 0xd81938c.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8192a0, `lw` at 0xd8192b8, `lw` at 0xd8192e4.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd8192a4).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd8192bc).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8192cc, `sw` at 0xd8192e8.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd8192d0).
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd8192f0).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8192f4, `sb` at 0xd819320.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t3` (`lw` at 0xd8192f8).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81930c).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd819310).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t5` (`lw` at 0xd819314).
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd819318).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t9` (`lw` at 0xd819324).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd819330).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd81933c).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd819344).
  Loads 4 bytes from abs 0xd845a94 into `t9` (`lw` at 0xd819348).
  Stores 4 bytes from `$f4` to a2 (arg2 at entry) +0x0 (`swc1` at 0xd819370).
  Loads 4 bytes from abs 0xd845abc into `t9` (`lw` at 0xd819374).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd819394, `lw` at 0xd8193ac.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd819398).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd81928c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8192ac).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8192d8).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81934c).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd819380).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8193a0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8193bc).
  The `beql` at 0xd819278 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd819278 is taken and is annulled on fall-through.
  The `beql` at 0xd81929c is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81929c is taken and is annulled on fall-through.
  The `beql` at 0xd8192c8 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd8192c8 is taken and is annulled on fall-through.
  The `bne` at 0xd819360 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd819390 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd819390 is taken and is annulled on fall-through.
  The `beql` at 0xd8193b4 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd8193b4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8193d4.

- `__glx_GetDetailTexFuncSGIS` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8193dc, 416 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8193ec).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd819408).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd81940c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd819410).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81941c).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819430, `lw` at 0xd81952c.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81943c, `lw` at 0xd819454, `lw` at 0xd819480.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd819440).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd819458).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd819468, `sw` at 0xd819484.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd81946c).
  Stores 2 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd819490).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd819494, `sb` at 0xd8194c4.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t4` (`lw` at 0xd819498).
  Stores 4 bytes from `t3` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd8194ac).
  Stores 4 bytes from `t5` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd8194b0).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t6` (`lw` at 0xd8194b4).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd8194bc).
  Stores 1 byte from `t9` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd8194c0).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t8` (`lw` at 0xd8194c8).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd8194d4).
  Stores 4 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd8194e4).
  Loads 4 bytes from abs 0xd845a94 into `t9` (`lw` at 0xd8194e8).
  Stores 4 bytes from `$f4` to a1 (arg1 at entry) +0x0 (`swc1` at 0xd819510).
  Loads 4 bytes from abs 0xd845abc into `t9` (`lw` at 0xd819514).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd819534, `lw` at 0xd81954c.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd819538).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3) (`jalr` at 0xd819428).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819448).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819474).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd8194ec).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=? (`jalr` at 0xd819520).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819540).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81955c).
  The `beql` at 0xd819414 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd819414 is taken and is annulled on fall-through.
  The `beql` at 0xd819438 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd819438 is taken and is annulled on fall-through.
  The `beql` at 0xd819464 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd819464 is taken and is annulled on fall-through.
  The `bne` at 0xd819500 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd819530 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd819530 is taken and is annulled on fall-through.
  The `beql` at 0xd819554 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd819554 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd819574.

- `__glx_GetMinmaxParameterivEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81957c, 428 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81958c).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd8195ac).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd8195b0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd8195b4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8195c0).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8195d4, `lw` at 0xd8196d8.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8195e0, `lw` at 0xd8195f8, `lw` at 0xd819624.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd8195e4).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd8195fc).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81960c, `sw` at 0xd819628.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd819610).
  Stores 2 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd819634).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd819638, `sb` at 0xd819668.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t4` (`lw` at 0xd81963c).
  Stores 4 bytes from `t3` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd819650).
  Stores 4 bytes from `t5` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd819654).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t6` (`lw` at 0xd819658).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd819660).
  Stores 1 byte from `t9` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd819664).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t8` (`lw` at 0xd81966c).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd819678).
  Stores 4 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd819688).
  Stores 4 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x10 (`sw` at 0xd819690).
  Loads 4 bytes from abs 0xd845a94 into `t9` (`lw` at 0xd819694).
  Stores 4 bytes from `t2` to a2 (arg2 at entry) +0x0 (`sw` at 0xd8196bc).
  Loads 4 bytes from abs 0xd845abc into `t9` (`lw` at 0xd8196c0).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8196e0, `lw` at 0xd8196f8.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd8196e4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd8195cc).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8195ec).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819618).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd819698).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd8196cc).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8196ec).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819708).
  The `beql` at 0xd8195b8 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd8195b8 is taken and is annulled on fall-through.
  The `beql` at 0xd8195dc is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd8195dc is taken and is annulled on fall-through.
  The `beql` at 0xd819608 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd819608 is taken and is annulled on fall-through.
  The `bne` at 0xd8196ac is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd8196dc is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd8196dc is taken and is annulled on fall-through.
  The `beql` at 0xd819700 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd819700 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd819720.

- `__glx_GetMinmaxParameterfvEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd819728, 428 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd819738).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd819758).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd81975c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd819760).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81976c).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819780, `lw` at 0xd819884.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81978c, `lw` at 0xd8197a4, `lw` at 0xd8197d0.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd819790).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd8197a8).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8197b8, `sw` at 0xd8197d4.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd8197bc).
  Stores 2 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd8197e0).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8197e4, `sb` at 0xd819814.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t4` (`lw` at 0xd8197e8).
  Stores 4 bytes from `t3` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd8197fc).
  Stores 4 bytes from `t5` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd819800).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t6` (`lw` at 0xd819804).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81980c).
  Stores 1 byte from `t9` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd819810).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t8` (`lw` at 0xd819818).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd819824).
  Stores 4 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd819834).
  Stores 4 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x10 (`sw` at 0xd81983c).
  Loads 4 bytes from abs 0xd845a94 into `t9` (`lw` at 0xd819840).
  Stores 4 bytes from `$f4` to a2 (arg2 at entry) +0x0 (`swc1` at 0xd819868).
  Loads 4 bytes from abs 0xd845abc into `t9` (`lw` at 0xd81986c).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81988c, `lw` at 0xd8198a4.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd819890).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd819778).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819798).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8197c4).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd819844).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd819878).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819898).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8198b4).
  The `beql` at 0xd819764 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd819764 is taken and is annulled on fall-through.
  The `beql` at 0xd819788 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd819788 is taken and is annulled on fall-through.
  The `beql` at 0xd8197b4 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd8197b4 is taken and is annulled on fall-through.
  The `bne` at 0xd819858 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd819888 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd819888 is taken and is annulled on fall-through.
  The `beql` at 0xd8198ac is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd8198ac is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8198cc.

- `__glx_GetHistogramParameterivEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8198d4, 428 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8198e4).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd819904).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd819908).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81990c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd819918).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81992c, `lw` at 0xd819a30.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd819938, `lw` at 0xd819950, `lw` at 0xd81997c.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd81993c).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd819954).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd819964, `sw` at 0xd819980.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd819968).
  Stores 2 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81998c).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd819990, `sb` at 0xd8199c0.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t4` (`lw` at 0xd819994).
  Stores 4 bytes from `t3` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd8199a8).
  Stores 4 bytes from `t5` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd8199ac).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t6` (`lw` at 0xd8199b0).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd8199b8).
  Stores 1 byte from `t9` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd8199bc).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t8` (`lw` at 0xd8199c4).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd8199d0).
  Stores 4 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd8199e0).
  Stores 4 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x10 (`sw` at 0xd8199e8).
  Loads 4 bytes from abs 0xd845a94 into `t9` (`lw` at 0xd8199ec).
  Stores 4 bytes from `t2` to a2 (arg2 at entry) +0x0 (`sw` at 0xd819a14).
  Loads 4 bytes from abs 0xd845abc into `t9` (`lw` at 0xd819a18).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd819a38, `lw` at 0xd819a50.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd819a3c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd819924).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819944).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819970).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd8199f0).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd819a24).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819a44).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819a60).
  The `beql` at 0xd819910 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd819910 is taken and is annulled on fall-through.
  The `beql` at 0xd819934 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd819934 is taken and is annulled on fall-through.
  The `beql` at 0xd819960 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd819960 is taken and is annulled on fall-through.
  The `bne` at 0xd819a04 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd819a34 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd819a34 is taken and is annulled on fall-through.
  The `beql` at 0xd819a58 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd819a58 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd819a78.

- `__glx_GetHistogramParameterfvEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd819a80, 428 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd819a90).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd819ab0).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd819ab4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd819ab8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd819ac4).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819ad8, `lw` at 0xd819bdc.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd819ae4, `lw` at 0xd819afc, `lw` at 0xd819b28.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd819ae8).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd819b00).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd819b10, `sw` at 0xd819b2c.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd819b14).
  Stores 2 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd819b38).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd819b3c, `sb` at 0xd819b6c.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t4` (`lw` at 0xd819b40).
  Stores 4 bytes from `t3` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd819b54).
  Stores 4 bytes from `t5` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd819b58).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t6` (`lw` at 0xd819b5c).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd819b64).
  Stores 1 byte from `t9` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd819b68).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t8` (`lw` at 0xd819b70).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd819b7c).
  Stores 4 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd819b8c).
  Stores 4 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x10 (`sw` at 0xd819b94).
  Loads 4 bytes from abs 0xd845a94 into `t9` (`lw` at 0xd819b98).
  Stores 4 bytes from `$f4` to a2 (arg2 at entry) +0x0 (`swc1` at 0xd819bc0).
  Loads 4 bytes from abs 0xd845abc into `t9` (`lw` at 0xd819bc4).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd819be4, `lw` at 0xd819bfc.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd819be8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd819ad0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819af0).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819b1c).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd819b9c).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd819bd0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819bf0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819c0c).
  The `beql` at 0xd819abc is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd819abc is taken and is annulled on fall-through.
  The `beql` at 0xd819ae0 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd819ae0 is taken and is annulled on fall-through.
  The `beql` at 0xd819b0c is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd819b0c is taken and is annulled on fall-through.
  The `bne` at 0xd819bb0 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd819be0 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd819be0 is taken and is annulled on fall-through.
  The `beql` at 0xd819c04 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd819c04 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd819c24.

- `__glx_GetConvolutionParameterivEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd819c2c, 428 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd819c3c).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd819c5c).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd819c60).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd819c64).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd819c70).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819c84, `lw` at 0xd819d88.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd819c90, `lw` at 0xd819ca8, `lw` at 0xd819cd4.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd819c94).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd819cac).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd819cbc, `sw` at 0xd819cd8.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd819cc0).
  Stores 2 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd819ce4).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd819ce8, `sb` at 0xd819d18.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t4` (`lw` at 0xd819cec).
  Stores 4 bytes from `t3` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd819d00).
  Stores 4 bytes from `t5` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd819d04).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t6` (`lw` at 0xd819d08).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd819d10).
  Stores 1 byte from `t9` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd819d14).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t8` (`lw` at 0xd819d1c).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd819d28).
  Stores 4 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd819d38).
  Stores 4 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x10 (`sw` at 0xd819d40).
  Loads 4 bytes from abs 0xd845a94 into `t9` (`lw` at 0xd819d44).
  Stores 4 bytes from `t2` to a2 (arg2 at entry) +0x0 (`sw` at 0xd819d6c).
  Loads 4 bytes from abs 0xd845abc into `t9` (`lw` at 0xd819d70).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd819d90, `lw` at 0xd819da8.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd819d94).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd819c7c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819c9c).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819cc8).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd819d48).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd819d7c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819d9c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819db8).
  The `beql` at 0xd819c68 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd819c68 is taken and is annulled on fall-through.
  The `beql` at 0xd819c8c is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd819c8c is taken and is annulled on fall-through.
  The `beql` at 0xd819cb8 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd819cb8 is taken and is annulled on fall-through.
  The `bne` at 0xd819d5c is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd819d8c is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd819d8c is taken and is annulled on fall-through.
  The `beql` at 0xd819db0 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd819db0 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd819dd0.

- `__glx_GetConvolutionParameterfvEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd819dd8, 428 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd819de8).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd819e08).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd819e0c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd819e10).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd819e1c).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819e30, `lw` at 0xd819f34.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd819e3c, `lw` at 0xd819e54, `lw` at 0xd819e80.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd819e40).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd819e58).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd819e68, `sw` at 0xd819e84.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd819e6c).
  Stores 2 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd819e90).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd819e94, `sb` at 0xd819ec4.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t4` (`lw` at 0xd819e98).
  Stores 4 bytes from `t3` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd819eac).
  Stores 4 bytes from `t5` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd819eb0).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t6` (`lw` at 0xd819eb4).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd819ebc).
  Stores 1 byte from `t9` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd819ec0).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t8` (`lw` at 0xd819ec8).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd819ed4).
  Stores 4 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd819ee4).
  Stores 4 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x10 (`sw` at 0xd819eec).
  Loads 4 bytes from abs 0xd845a94 into `t9` (`lw` at 0xd819ef0).
  Stores 4 bytes from `$f4` to a2 (arg2 at entry) +0x0 (`swc1` at 0xd819f18).
  Loads 4 bytes from abs 0xd845abc into `t9` (`lw` at 0xd819f1c).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd819f3c, `lw` at 0xd819f54.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd819f40).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd819e28).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819e48).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819e74).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd819ef4).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd819f28).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819f48).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819f64).
  The `beql` at 0xd819e14 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd819e14 is taken and is annulled on fall-through.
  The `beql` at 0xd819e38 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd819e38 is taken and is annulled on fall-through.
  The `beql` at 0xd819e64 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd819e64 is taken and is annulled on fall-through.
  The `bne` at 0xd819f08 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd819f38 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd819f38 is taken and is annulled on fall-through.
  The `beql` at 0xd819f5c is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd819f5c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd819f7c.

- `__glx_GetSharpenTexFuncSGIS` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd819f84, 416 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd819f94).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd819fb0).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd819fb4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd819fb8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd819fc4).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819fd8, `lw` at 0xd81a0d4.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd819fe4, `lw` at 0xd819ffc, `lw` at 0xd81a028.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd819fe8).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd81a000).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a010, `sw` at 0xd81a02c.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd81a014).
  Stores 2 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81a038).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81a03c, `sb` at 0xd81a06c.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t4` (`lw` at 0xd81a040).
  Stores 4 bytes from `t3` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81a054).
  Stores 4 bytes from `t5` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81a058).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t6` (`lw` at 0xd81a05c).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81a064).
  Stores 1 byte from `t9` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81a068).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t8` (`lw` at 0xd81a070).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd81a07c).
  Stores 4 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd81a08c).
  Loads 4 bytes from abs 0xd845a94 into `t9` (`lw` at 0xd81a090).
  Stores 4 bytes from `$f4` to a1 (arg1 at entry) +0x0 (`swc1` at 0xd81a0b8).
  Loads 4 bytes from abs 0xd845abc into `t9` (`lw` at 0xd81a0bc).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81a0dc, `lw` at 0xd81a0f4.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd81a0e0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3) (`jalr` at 0xd819fd0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd819ff0).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a01c).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81a094).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=? (`jalr` at 0xd81a0c8).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a0e8).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a104).
  The `beql` at 0xd819fbc is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd819fbc is taken and is annulled on fall-through.
  The `beql` at 0xd819fe0 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd819fe0 is taken and is annulled on fall-through.
  The `beql` at 0xd81a00c is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81a00c is taken and is annulled on fall-through.
  The `bne` at 0xd81a0a8 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81a0d8 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81a0d8 is taken and is annulled on fall-through.
  The `beql` at 0xd81a0fc is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81a0fc is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81a11c.

- `__glx_GetColorTableParameterivSGI` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81a124, 428 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81a134).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd81a154).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd81a158).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81a15c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81a168).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81a17c, `lw` at 0xd81a280.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81a188, `lw` at 0xd81a1a0, `lw` at 0xd81a1cc.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd81a18c).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd81a1a4).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a1b4, `sw` at 0xd81a1d0.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd81a1b8).
  Stores 2 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81a1dc).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81a1e0, `sb` at 0xd81a210.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t4` (`lw` at 0xd81a1e4).
  Stores 4 bytes from `t3` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81a1f8).
  Stores 4 bytes from `t5` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81a1fc).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t6` (`lw` at 0xd81a200).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81a208).
  Stores 1 byte from `t9` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81a20c).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t8` (`lw` at 0xd81a214).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd81a220).
  Stores 4 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd81a230).
  Stores 4 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x10 (`sw` at 0xd81a238).
  Loads 4 bytes from abs 0xd845a94 into `t9` (`lw` at 0xd81a23c).
  Stores 4 bytes from `t2` to a2 (arg2 at entry) +0x0 (`sw` at 0xd81a264).
  Loads 4 bytes from abs 0xd845abc into `t9` (`lw` at 0xd81a268).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81a288, `lw` at 0xd81a2a0.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd81a28c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd81a174).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a194).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a1c0).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81a240).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd81a274).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a294).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a2b0).
  The `beql` at 0xd81a160 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81a160 is taken and is annulled on fall-through.
  The `beql` at 0xd81a184 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81a184 is taken and is annulled on fall-through.
  The `beql` at 0xd81a1b0 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd81a1b0 is taken and is annulled on fall-through.
  The `bne` at 0xd81a254 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81a284 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81a284 is taken and is annulled on fall-through.
  The `beql` at 0xd81a2a8 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81a2a8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81a2c8.

- `__glx_GetColorTableParameterfvSGI` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81a2d0, 428 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81a2e0).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd81a300).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd81a304).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81a308).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81a314).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81a328, `lw` at 0xd81a42c.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81a334, `lw` at 0xd81a34c, `lw` at 0xd81a378.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd81a338).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd81a350).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a360, `sw` at 0xd81a37c.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd81a364).
  Stores 2 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81a388).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81a38c, `sb` at 0xd81a3bc.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t4` (`lw` at 0xd81a390).
  Stores 4 bytes from `t3` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81a3a4).
  Stores 4 bytes from `t5` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81a3a8).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t6` (`lw` at 0xd81a3ac).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81a3b4).
  Stores 1 byte from `t9` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81a3b8).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t8` (`lw` at 0xd81a3c0).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd81a3cc).
  Stores 4 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd81a3dc).
  Stores 4 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x10 (`sw` at 0xd81a3e4).
  Loads 4 bytes from abs 0xd845a94 into `t9` (`lw` at 0xd81a3e8).
  Stores 4 bytes from `$f4` to a2 (arg2 at entry) +0x0 (`swc1` at 0xd81a410).
  Loads 4 bytes from abs 0xd845abc into `t9` (`lw` at 0xd81a414).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81a434, `lw` at 0xd81a44c.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd81a438).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd81a320).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a340).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a36c).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81a3ec).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd81a420).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a440).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a45c).
  The `beql` at 0xd81a30c is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81a30c is taken and is annulled on fall-through.
  The `beql` at 0xd81a330 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81a330 is taken and is annulled on fall-through.
  The `beql` at 0xd81a35c is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd81a35c is taken and is annulled on fall-through.
  The `bne` at 0xd81a400 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81a430 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81a430 is taken and is annulled on fall-through.
  The `beql` at 0xd81a454 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81a454 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81a474.

- `__glx_IsTextureEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81a47c, 384 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81a48c).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd81a4a4).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd81a4ac).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81a4b0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81a4bc).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81a4cc, `lw` at 0xd81a590.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81a4d8, `lw` at 0xd81a4f0, `lw` at 0xd81a51c.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd81a4dc).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd81a4f4).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a504, `sw` at 0xd81a520.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd81a508).
  Stores 2 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81a52c).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81a530, `sb` at 0xd81a560.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t4` (`lw` at 0xd81a534).
  Stores 4 bytes from `t3` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81a548).
  Stores 4 bytes from `t5` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81a54c).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t6` (`lw` at 0xd81a550).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81a558).
  Stores 1 byte from `t9` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81a55c).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t8` (`lw` at 0xd81a564).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd81a570).
  Stores 4 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd81a580).
  Loads 4 bytes from abs 0xd845a94 into `t9` (`lw` at 0xd81a584).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81a5a0, `lw` at 0xd81a5c0.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd81a5a8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81a4c4).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a4e4).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a510).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81a588).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a5b0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a5d4).
  The `beql` at 0xd81a4b4 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81a4b4 is taken and is annulled on fall-through.
  The `beql` at 0xd81a4d4 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81a4d4 is taken and is annulled on fall-through.
  The `beql` at 0xd81a500 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81a500 is taken and is annulled on fall-through.
  The `beql` at 0xd81a59c is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81a59c is taken and is annulled on fall-through.
  The `beql` at 0xd81a5c8 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81a5c8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81a5f4.

- `__glx_GenTexturesEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81a5fc, 396 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81a60c).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd81a628).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd81a62c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd81a630).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81a63c).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81a650, `lw` at 0xd81a734.
  Performs 4 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81a65c, `lw` at 0xd81a674, `lw` at 0xd81a6a0.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd81a660).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t7` (`lw` at 0xd81a678).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a688, `sw` at 0xd81a6a4.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd81a68c).
  Stores 2 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81a6b0).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81a6b4, `sb` at 0xd81a6e4.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t4` (`lw` at 0xd81a6b8).
  Stores 4 bytes from `t3` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81a6cc).
  Stores 4 bytes from `t5` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81a6d0).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t6` (`lw` at 0xd81a6d4).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81a6dc).
  Stores 1 byte from `t9` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81a6e0).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t8` (`lw` at 0xd81a6e8).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd81a6f4).
  Stores 4 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd81a704).
  Loads 4 bytes from abs 0xd845a94 into `t9` (`lw` at 0xd81a708).
  Loads 4 bytes from abs 0xd845abc into `t9` (`lw` at 0xd81a720).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81a740, `lw` at 0xd81a758.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd81a744).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3) (`jalr` at 0xd81a648).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a668).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a694).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-48, a2=0x0, a3=0x0 (`jalr` at 0xd81a70c).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=? (`jalr` at 0xd81a72c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a74c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a768).
  The `beql` at 0xd81a634 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81a634 is taken and is annulled on fall-through.
  The `beql` at 0xd81a658 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81a658 is taken and is annulled on fall-through.
  The `beql` at 0xd81a684 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81a684 is taken and is annulled on fall-through.
  The `beql` at 0xd81a73c is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81a73c is taken and is annulled on fall-through.
  The `beql` at 0xd81a760 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81a760 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81a780.

- `__glx_DeleteTexturesEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81a788, 404 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81a798).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd81a7b4).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd81a7b8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd81a7c0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81a7cc).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81a7e0, `lw` at 0xd81a8c8.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd81a7f0).
  Performs 3 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81a808, `lw` at 0xd81a854, `lw` at 0xd81a870.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t8` (`lw` at 0xd81a818).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a830, `sw` at 0xd81a858.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd81a834).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81a868, `sb` at 0xd81a89c.
  Stores 2 bytes from `t5` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81a86c).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t2` (`lw` at 0xd81a874).
  Stores 4 bytes from `t8` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81a888).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81a88c).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t3` (`lw` at 0xd81a890).
  Stores 4 bytes from `t4` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81a894).
  Stores 1 byte from `t1` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81a898).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t5` (`lw` at 0xd81a8a0).
  Stores 4 bytes from `t5` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd81a8ac).
  Stores 4 bytes from `t6` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd81a8b4).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd81a8b8).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81a8d4, `lw` at 0xd81a8ec.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd81a8d8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3) (`jalr` at 0xd81a7d8).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a7f8).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+108] (`jalr` at 0xd81a840).
  Calls `memcpy` via got with a0=[[[[0x1014]+276]+216]+108]+16, a1=a1 at entry (arg1), a2=?, a3=[[[[0x1014]+276]+216]+108] (`jalr` at 0xd81a8c0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a8e0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a8fc).
  The `bltz` at 0xd81a7bc is taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  The `beql` at 0xd81a7c4 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81a7c4 is taken and is annulled on fall-through.
  The `beql` at 0xd81a7e8 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81a7e8 is taken and is annulled on fall-through.
  The `beql` at 0xd81a82c is taken when t8(=[[[[0x1014]+276]+216]+112]) >= t3(?) (unsigned) and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t3(?) (unsigned).
  Its delay slot runs only when the branch at 0xd81a82c is taken and is annulled on fall-through.
  The `beql` at 0xd81a8d0 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81a8d0 is taken and is annulled on fall-through.
  The `beql` at 0xd81a8f4 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81a8f4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81a914.

- `__glx_AreTexturesResidentEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81a91c, 532 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81a92c).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd81a94c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81a954).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `s0` (`lw` at 0xd81a95c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81a970).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81a984, `lw` at 0xd81aadc.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0 into `t9` (`lw` at 0xd81a994).
  Performs 3 4-byte loads from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81a9ac, `lw` at 0xd81a9f8, `lw` at 0xd81aa14.
  Loads 4 bytes from [[[0x1014]+276]+216] +0x70 into `t8` (`lw` at 0xd81a9bc).
  Performs 2 4-byte stores to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a9d4, `sw` at 0xd81a9fc.
  Loads 4 bytes from abs 0xd845a80 into `t9` (`lw` at 0xd81a9d8).
  Performs 2 1-byte stores to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81aa0c, `sb` at 0xd81aa44.
  Stores 2 bytes from `t5` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81aa10).
  Loads 4 bytes from [[[0x1014]+276]+216] +0x60 into `t1` (`lw` at 0xd81aa18).
  Stores 4 bytes from `t8` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81aa2c).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81aa30).
  Loads 4 bytes from [[0x1014]+276] +0x110 into `t2` (`lw` at 0xd81aa34).
  Stores 4 bytes from `t4` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81aa3c).
  Stores 1 byte from `t3` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81aa40).
  Loads 4 bytes from [[0x1014]+276] +0x3c into `t5` (`lw` at 0xd81aa48).
  Stores 4 bytes from `t5` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd81aa54).
  Stores 4 bytes from `t6` to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd81aa5c).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd81aa60).
  Loads 4 bytes from abs 0xd845a94 into `t9` (`lw` at 0xd81aa7c).
  Loads 4 bytes from abs 0xd845abc into `t9` (`lw` at 0xd81aa9c).
  Loads 4 bytes from abs 0xd845b4c into `t9` (`lw` at 0xd81aac8).
  Performs 2 4-byte loads from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81aae4, `lw` at 0xd81aafc.
  Loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4 into `t9` (`lw` at 0xd81aae8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd81a97c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81a99c).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+108] (`jalr` at 0xd81a9e4).
  Calls `memcpy` via got with a0=[[[[0x1014]+276]+216]+108]+16, a1=a1 at entry (arg1), a2=?, a3=[[[[0x1014]+276]+216]+108] (`jalr` at 0xd81aa68).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-56, a2=0x0, a3=0x0 (`jalr` at 0xd81aa88).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=a0 at entry (arg0), a3=? (`jalr` at 0xd81aaac).
  Calls `_XEatData` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81aad0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81aaf0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81ab0c).
  The `bgez` at 0xd81a958 is taken when a0 >= 0 (signed) and falls through when a0 < 0 (signed).
  The `beql` at 0xd81a968 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81a968 is taken and is annulled on fall-through.
  The `beql` at 0xd81a98c is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81a98c is taken and is annulled on fall-through.
  The `beql` at 0xd81a9d0 is taken when t8(=[[[[0x1014]+276]+216]+112]) >= t2(?) (unsigned) and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t2(?) (unsigned).
  Its delay slot runs only when the branch at 0xd81a9d0 is taken and is annulled on fall-through.
  The `beq` at 0xd81aab8 is taken when (s1(=a0) & 0x3) == 0 and falls through when (s1(=a0) & 0x3) != 0.
  The `beql` at 0xd81aae0 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81aae0 is taken and is annulled on fall-through.
  The `beql` at 0xd81ab04 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81ab04 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81ab28.

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
